SECTION "ROM Bank $06f", ROMX[$4000], BANK[$6f]

    rrca
    rrca
    rrca
    rrca
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    nop
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rrca
    rrca
    rrca
    rrca
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    db $28, $d3
    ld b, c
    jr c, jr_06f_4056

    ld [$007d], sp
    ld l, [hl]
    add b
    rla
    add sp, -$17
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    cp a
    ld a, a
    add hl, sp
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld h, $fb
    xor b
    db $76
    jp c, Jump_000_0075

    db $fd
    ld [hl], a
    ld [$6887], sp
    ld l, l
    ld a, [c]
    db $ed
    ld a, [de]
    rst $08
    ld c, $86
    ld l, a
    or e
    ld h, a
    dec h
    jp $c107


    sbc e
    ld h, c

jr_06f_4056:
    ld hl, $4a78
    ldh [$94], a
    ret nz

    or d
    ret z

    db $dd
    ld hl, sp+$3e
    db $fd
    ld a, a
    ccf
    rra
    ccf
    ld e, a
    ccf
    sub a
    ccf
    dec d
    dec bc
    xor b
    rra
    ld c, a
    sub b
    bit 0, b
    pop de
    ld b, b
    ld [bc], a
    jp hl


    ld e, l
    xor c
    ld a, [hl+]
    ret z

    rst $00
    ret nc

    ret


    reti


    ld sp, hl
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $30
    rst $38
    ret c

    rst $38
    and $df
    nop
    rst $38
    nop
    rst $38
    nop
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
    db $10
    rst $38
    ld a, b
    rst $38
    ld a, [de]
    db $ed
    ld bc, $00ff
    rst $38
    and b
    ld a, a
    ld b, b
    cp a
    ld e, b
    and a
    add b
    rst $38
    ld [$00f7], sp
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    inc bc
    db $fc
    ld e, c
    and [hl]
    ld c, a
    or b
    cp $81
    sub e
    ldh [$f4], a
    ld hl, sp-$01
    cp $c7
    rst $38
    db $fc
    db $e3
    ld [c], a
    db $fd
    or $f9
    ldh a, [$bf]
    ei
    db $fc
    ld sp, hl
    cp $f9
    db $fc
    cp $fc
    rst $38
    db $fc
    rst $38
    rst $38
    rst $30
    rst $38
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

jr_06f_40f5:
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    rst $38
    cp $fa
    db $fc
    ldh a, [$f8]
    ld sp, hl
    ldh [$c3], a
    ldh [$83], a
    push bc
    add a
    dec bc
    rla
    rrca
    ld l, a
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
    ei
    rst $38
    rst $38
    rst $38
    cp $ff
    add [hl]
    nop
    or a
    nop
    ldh [rSB], a
    ld b, c
    nop
    inc h
    nop
    ld d, h
    add b
    sbc d
    ldh [$a5], a
    ret c

    sbc c
    ret nz

    jr c, jr_06f_40f5

    add d
    ld a, b
    ld [hl-], a
    call z, $c628
    ld sp, hl
    add [hl]
    inc [hl]
    res 5, l
    ld e, a
    ld b, b
    cp e
    adc h
    pop af
    dec bc
    ldh a, [rNR44]
    call c, Call_06f_6cc2
    inc bc
    ld a, h
    ld c, c
    cp $25
    rst $38
    ld c, a
    db $f4
    ld d, c
    and $33
    db $e4
    adc $f1
    xor [hl]
    ld [hl], b
    daa
    ld a, h
    ld sp, hl
    ld a, [hl]
    add hl, sp
    ld a, a
    ld e, $bd
    rst $38
    sbc [hl]
    rst $28
    sbc a
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
    ld h, a
    rst $38
    rst $38

jr_06f_4173:
    rst $38
    rst $38
    rst $38
    db $ec
    rst $38
    ret nz

    rst $38
    call nz, $83ff
    db $fc
    add c
    rst $38
    add b

jr_06f_4181:
    rst $38
    add b
    rst $38
    rst $20
    rst $38
    rst $18
    rst $38
    ccf
    rst $38
    dec b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    add [hl]
    ld a, c
    ld a, [bc]
    push af
    dec b
    ld a, [$fb04]
    ld hl, $8cde
    ld [hl], e
    db $e3
    inc e
    jr nz, jr_06f_4181

    jr nc, jr_06f_4173

    ld b, b
    cp a
    ld [de], a
    db $ed
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    ld bc, $0efe
    pop af
    ld c, $f1
    ccf
    ret nz

    ld c, b
    or a
    add b
    ld a, a
    xor e
    ld d, h
    inc bc
    db $fc
    or h
    ld b, e
    ld a, e
    nop
    adc a
    nop
    db $d3
    ldh [$f4], a
    ld hl, sp+$7f
    cp $67
    rst $38
    ld l, [hl]
    pop af
    xor a
    ld [hl], b
    cp $31
    rst $18
    jr nc, jr_06f_424c

    jr jr_06f_41de

    jr @-$01

    ld [$f0e9], sp
    cp $f8

jr_06f_41de:
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
    cp $ff
    ld a, h
    cp $78
    db $fc
    ld hl, sp-$10
    pop af
    ldh [$a2], a
    pop bc
    rst $00
    add e

Jump_06f_41fa:
    sbc a
    rlca
    ld a, $0f
    ld a, e
    rra
    ei
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    call $ffff
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $fe
    cp $fc
    sub h
    ld hl, sp-$38
    ldh a, [$d1]
    ldh [$e1], a
    jp $83c7


    or h
    dec sp
    cp h
    ld a, e
    or $79
    or d
    ld a, l
    ld [hl-], a
    dec e
    dec de
    inc e
    xor l
    ld c, $38
    rra
    or h
    dec de
    jr jr_06f_423b

    nop
    rlca
    ld b, h
    inc bc
    jp Jump_06f_5703


jr_06f_423b:
    add e
    db $ed
    rlca
    db $76
    rlca
    pop de
    ld b, $d6
    inc bc
    adc [hl]
    jp $c3d7


    ei
    pop af
    ld a, d
    pop af

jr_06f_424c:
    cp d
    ld a, l
    ld a, a
    ld a, $1e
    cp a
    rra
    rst $18
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    ccf
    ccf
    rst $38
    rst $08
    rst $38
    cp a
    ld b, a
    ld [hl], a
    add c
    sub e
    xor a
    sub e
    rst $20
    db $eb
    di
    di
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $20
    ld hl, sp-$01
    ldh [rIE], a
    add b
    ld a, a
    ld hl, sp+$7f
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
    ld a, a
    add a
    ld a, a
    ld hl, sp+$7f
    rst $38
    rrca
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ld [hl], b
    adc a
    rst $18
    jr nz, jr_06f_4318

    adc b
    rra
    ldh [rNR22], a
    add sp, $00
    rst $38
    ld l, b
    sub a
    ld b, b
    cp a
    nop
    rst $38
    rla
    add sp, $61
    sbc [hl]
    rst $00
    jr c, jr_06f_430c

    xor b
    ld d, a
    xor b
    rst $38
    nop
    rst $38
    nop
    cp $01
    dec a
    jp nz, $b847

    adc a
    ld [hl], b
    rst $38
    nop
    ccf
    nop
    add e
    nop
    ret nc

jr_06f_42cb:
    ldh [$f4], a
    ld hl, sp-$24
    jr c, jr_06f_42cb

    inc b
    and $07
    db $db
    jr nz, @-$14

    inc e
    rst $38
    rrca
    ld a, a
    rlca
    rlca
    inc bc
    add e
    ld bc, $f4cb
    di
    db $fc
    rst $30
    ld hl, sp-$12
    pop af
    db $db
    rst $20
    or a
    rst $08
    rst $28
    rra
    rst $18
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
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
    cp h
    rst $38
    ld a, [hl]
    rst $38
    rst $20
    rst $38
    push bc
    db $e3

jr_06f_430c:
    add a
    res 3, a
    add a
    rra
    rrca
    ld e, $3f
    ccf
    ccf
    ccf
    ld a, a

jr_06f_4318:
    rst $38
    ld a, a
    cp $ff
    db $dd
    cp $bf
    db $fc
    or $39
    sub e
    ld a, h
    ld a, [de]
    db $fc
    sbc a
    ld a, b
    and c
    ld a, [hl]
    ret nz

    ccf
    xor d
    ld [hl], l
    cp h
    ld [hl], e
    ld [c], a
    dec a
    ld c, c
    or a
    ld d, l
    xor e
    dec b
    ei
    sub b
    ld l, a
    dec de
    rst $38
    ld bc, $00ff
    rst $38
    ld de, $18ff
    rst $38
    jp nc, $f2ff

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
    xor $ff
    rst $28
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    adc $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    ld e, a
    rst $38
    reti


    rst $38
    rst $18
    rst $38
    ld a, a
    cp $ff
    ld hl, sp-$01
    ret nz

    cp $00
    ld hl, sp+$00
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
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
    rrca
    rst $38
    ldh [rIE], a
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
    ret nz

    ccf
    cp $01
    db $fd
    ld [bc], a
    ld sp, hl
    ld b, $eb
    inc d
    and b
    ld e, a
    db $10
    rst $28
    sbc $21
    ld [hl], l
    adc d
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    sbc [hl]
    ld h, c
    ld a, l
    add b
    ld c, a
    or b
    ld h, c
    sbc [hl]
    rlca
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [rNR34]
    ldh [$7e], a
    add b
    db $fc
    nop
    ld hl, sp+$00
    rst $38
    nop
    nop
    nop
    add b
    nop
    ldh [$c0], a
    ld d, h
    jr c, jr_06f_4422

    add [hl]
    ldh [$f0], a
    ld a, [$fffc]
    rst $38
    rst $38
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $87ff


    rst $38
    rrca
    rst $38
    ld e, $ff
    jr c, @+$01

    ld [hl], c
    rst $38
    jp hl


    rst $38
    push de
    rst $38
    rst $30
    rst $38
    pop af
    rst $38
    cp d
    rst $38
    pop af
    rst $38
    rst $30
    rst $38
    rst $28
    cp a
    adc $3f
    ei
    rlca
    rst $38
    nop
    ld a, a
    nop
    sub $29

jr_06f_4422:
    sbc d
    ld h, l
    inc e
    db $e3
    sbc l
    ld h, d
    sbc a
    ld h, b
    ret


    ld [hl], $4c
    or e
    ld l, h
    db $d3
    ret nz

    rst $38
    ld [de], a
    db $ed
    ld e, d
    db $e4
    adc a
    ldh a, [$09]
    ld a, [c]
    add h
    db $db
    nop
    rst $38
    jp nz, Jump_000_303d

    rst $18
    ld d, c
    rst $38
    daa
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
    rst $38
    xor [hl]
    rst $38
    or c
    rst $28
    jp $f3ff


    cp $ef
    ldh a, [$d7]
    ld hl, sp-$0d
    db $fc
    rst $28
    ldh a, [$c4]
    rst $38
    ld hl, sp-$01
    db $10
    rst $38
    ld e, $e0
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
    ret nz

    nop
    rst $38
    nop
    rst $38
    nop
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
    ccf
    rst $38
    add b
    rst $38
    cp $ff
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
    or b
    ld c, a
    ld c, e
    or h
    add a
    ld a, b
    rra
    ldh [$3f], a
    ret nz

    rst $38
    nop
    cp a
    ld b, b
    nop
    rst $38
    ld b, b
    cp a
    ld sp, $3fce
    ret nz

    ld c, $f1
    ret nz

    ccf
    pop hl
    ld e, $1f
    ldh [$c0], a
    ccf
    cp b
    rlca
    and e
    nop
    nop
    nop
    ld bc, $0200
    ld bc, $0204
    inc b
    dec b
    dec bc
    ld bc, $0217
    ld l, l
    rlca
    db $db
    rrca
    or [hl]
    rra
    ld l, a
    ccf
    rst $18
    ld a, a
    or a
    rst $38
    ld l, a
    rst $38
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
    rst $38
    ld a, [$f5ff]
    rst $38
    ld [$fdf6], a
    pop hl
    cp $fa
    db $fc
    di
    db $fc
    rst $30
    ld sp, hl
    cp $f3
    db $fc
    rst $30
    ld hl, sp-$01
    ccf
    rst $08
    rlca
    rst $38
    ld [hl], h
    rst $38
    ld a, c
    cp [hl]
    ld [hl], a
    db $fc
    di
    db $fc
    ld a, a
    ldh a, [$ee]
    ldh a, [$fc]
    ldh [$d8], a
    ldh [$b0], a
    ret nz

    ret nz

    add b
    ret nz

    nop
    ldh [rP1], a
    cp d
    push bc
    cp b
    rst $00
    ret c

    rst $20
    call nc, Call_000_0ce3
    di
    dec c
    di
    and b
    ld e, a
    ldh [$1f], a
    add d
    ld a, l
    pop de
    ld a, $fb
    inc e
    ld h, c
    sbc [hl]
    or b
    ld e, a
    ld d, b
    ccf
    adc a
    ld [hl], e
    ld b, e
    rst $38
    ld l, $ff
    xor [hl]
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    xor $ff
    ld l, a
    rst $38
    ld l, a
    rst $38
    ld a, a
    rst $38
    rst $28
    rst $38
    xor a
    rst $38
    jp $f93f


    rlca
    or $09
    rst $20
    inc e
    cp $01
    inc e
    db $fc
    ldh a, [$e0]
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
    ldh a, [rP1]
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

jr_06f_4584:
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    ld hl, sp-$01
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
    ldh [$1f], a
    rst $38
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
    cp a
    nop
    sbc a
    ld h, b
    call nz, $0f3b
    ldh a, [$3f]
    ret nz

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
    add b
    rra
    ld hl, $629f
    ccf
    ld h, b
    rst $38
    ld a, [c]
    db $fd
    rra
    ldh [$1f], a
    ldh [rNR13], a
    ldh [rNR13], a
    ldh [rNR23], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$f3]
    add sp, -$75
    db $f4
    ld b, $f8
    db $d3
    xor h
    xor $51
    db $dd
    and d
    ld [$d854], a
    and h
    sub c
    ld c, b
    jr c, jr_06f_4584

    ldh [$30], a
    ldh a, [$60]
    ld b, b
    ldh a, [$89]
    ldh a, [$39]
    ldh a, [rSB]
    ldh a, [rNR11]

jr_06f_4601:
    ldh [rNR44], a
    ret nz

    ld b, a
    add b
    rlca
    add b
    db $ec
    nop
    ld hl, sp+$00
    ld [hl], b
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
    ld [$1400], sp
    nop
    nop
    nop
    ld a, b
    rst $00
    cp d
    push bc
    jr nz, jr_06f_4601

    ld d, h
    adc e
    ld [hl], b
    adc a
    ret nc

    ccf
    inc [hl]
    rst $38
    ld a, [hl]
    rst $30
    ld a, [hl+]
    rst $30
    ld [hl+], a
    rst $38
    ld bc, $14fe
    db $e3
    ld b, b
    rst $38
    adc $ff
    ld [$e5ff], a
    cp $fa
    rst $38
    ei
    rst $38
    ei
    rst $38
    ld a, e
    rst $38
    ld a, c
    rst $38
    ld a, c
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    cp a
    db $fc
    inc e
    ldh [$f0], a
    add b
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
    rst $38
    ld bc, $f0ff
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, h
    add e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $ed
    ld [de], a
    rst $38
    nop
    cp $01
    inc b
    ei
    ret nz

    ccf
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    jp hl


    ld d, $c7
    jr c, @+$01

    nop
    rst $30
    nop
    ld a, [$ef00]
    nop
    ret z

    nop
    ld e, $00
    add c
    nop
    add b
    nop
    pop af
    nop
    rst $38
    nop
    cp $00
    call c, $d800
    nop
    ret nz

    nop
    jp nz, Boot

    nop
    nop
    nop
    jr nz, jr_06f_46d8

jr_06f_46d8:
    nop
    nop
    ld [$0c00], sp
    nop
    nop
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
    ldh a, [rP1]
    db $fc
    nop
    rra
    nop
    inc bc
    nop
    add b
    nop
    ldh [rP1], a
    inc a
    nop
    rrca
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
    ld bc, $4800
    rst $20
    sub l
    db $eb
    ld h, b
    adc a
    ld d, c
    add [hl]
    ld l, c
    add [hl]
    ld b, l
    cp [hl]
    jr nc, @+$01

    or c
    rst $38
    cp b
    rst $30
    inc [hl]
    ei
    nop
    rst $38
    ld e, h
    and a
    nop
    rst $38
    ld b, a
    rst $38
    ld b, h
    rst $38
    ld [bc], a
    rst $38
    ret c

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
    sbc a
    rst $38
    db $dd
    rst $38
    db $fd
    rst $38
    dec c
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
    db $fc
    nop
    ccf
    ret nz

    add b
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
    ret nz

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
    ldh a, [rIF]
    rst $30
    ld [$31ce], sp
    sbc b
    ld h, a
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
    ldh [$1f], a
    ldh [$1f], a
    ld hl, sp+$07
    call c, Call_000_2003
    rra
    ret nz

    ccf
    ld e, a
    jr nz, @-$1e

    nop
    ld hl, sp+$00
    rst $38
    nop
    or a
    nop
    add c
    nop
    ld bc, $0200
    nop
    ld bc, $0000
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
    ld bc, $0100
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
    nop
    add b
    nop
    ldh a, [rP1]
    jr c, jr_06f_47d8

jr_06f_47d8:
    rrca
    nop
    rra
    nop
    ld hl, sp+$00
    ret nz

    nop
    adc l
    di
    ld a, [bc]
    rst $30
    ld hl, $a3de
    ld e, h
    or c
    ld e, [hl]
    xor c
    ld e, [hl]
    nop
    rst $38
    dec de
    rst $20
    ld h, c
    rst $28
    and b
    rst $38
    ld [$40f7], sp
    db $dd
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, e
    rst $38
    add e
    rst $38
    or h
    ei
    ld a, [$ffff]
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    or a
    rst $38
    rst $38
    cp a
    ei
    rst $38
    or a
    rst $38
    rst $10
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
    rst $38
    nop
    ld a, a
    add b
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_06f_483f:
    rst $38
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
    nop
    rst $38
    db $fc
    rst $38
    rst $38
    ld a, a
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
    add b
    ld a, a
    jr nz, jr_06f_483f

    inc b
    ei
    inc b
    ei
    dec bc
    db $f4
    rra
    ldh [$3c], a
    jp Jump_000_00ff


    rst $38
    nop
    rra
    ldh [$09], a
    or $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, $f9
    ld a, l
    add d
    ei
    inc b
    ld b, b
    rra
    inc e
    inc bc
    inc b
    inc bc
    ei
    inc b
    db $fd
    nop
    ld [hl], e
    nop
    pop bc
    nop
    dec h
    nop
    ld bc, $0000
    nop
    jr nz, jr_06f_4894

jr_06f_4894:
    nop
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
    ldh [rP1], a
    and b
    nop
    nop
    nop
    nop
    nop
    dec hl
    sub a
    jp c, $d127

    ld l, $77
    inc c
    jp Jump_06f_613c


    cp $40
    rst $38
    jp z, $e1f7

    rst $18
    add c
    rst $38
    adc c
    or a
    ld b, b
    cp a
    ld h, d
    sbc l
    nop
    rst $18
    nop
    rst $38
    or b
    rst $38
    cp h
    ld a, a
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    xor a
    rst $38
    xor a
    rst $38
    xor a
    rst $38
    ccf
    rst $38
    xor a
    rst $38
    ld l, a
    rst $38
    rst $38
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
    inc bc
    ei
    inc b
    ccf
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
    rra
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $3dff
    rst $00
    add hl, sp
    add $7d
    add d
    rst $38
    nop
    cp [hl]
    ld b, c
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    ld [hl], a
    adc b
    rra
    ldh [$35], a
    jp z, $c03f

    ld b, c
    cp [hl]
    ldh [$1f], a
    ret nz

    ccf
    ld c, $f0
    inc a
    ret nz

    ld e, $e0
    cp $00
    ld hl, sp+$00
    ldh a, [rP1]
    db $ec
    nop
    call nz, Call_000_2000
    nop
    nop
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
    ld a, [bc]
    nop
    ld b, $00
    ld [$1000], sp
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
    ld [$509d], a

jr_06f_4993:
    cpl
    ret nc

    cpl
    ld e, b
    daa
    adc b
    scf
    jr c, jr_06f_4993

    ld d, b
    rst $38
    ret nc

    rst $38
    ld hl, sp-$21
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ret nc

    cpl
    nop
    rst $18
    ld e, c
    rst $38
    ld [hl], b
    rst $38
    sub b
    ld a, a
    jr nc, @+$01

    rst $38
    rst $38
    rst $38
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
    cp $ff
    rst $38
    rst $38
    cp $ff
    rra
    jr jr_06f_49cb

jr_06f_49cb:
    nop
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
    ld c, $31
    add hl, sp
    rst $00
    rst $38
    rlca
    rst $08
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
    db $fc
    rst $38
    ei
    db $fc
    push af
    ei
    db $eb
    rst $30
    rst $10
    rst $28
    rst $28
    sbc a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, e
    rst $38
    sbc $ff
    ld l, e
    rst $38
    ccf
    cp $36
    db $fd
    call c, Call_06f_70fb
    rst $38
    and b
    rst $38
    ld b, b
    rst $38
    and h
    ld e, e
    and h
    ld e, e
    add sp, $17
    ld c, [hl]

jr_06f_4a19:
    or c
    ld a, a
    add b
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    ei
    inc b
    rst $38
    nop
    rst $28
    db $10
    add l
    ld a, d
    inc b
    ei
    add a
    ld a, b
    dec a
    nop
    inc h
    nop
    rla
    nop
    cpl
    nop
    add c
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0700
    nop
    rlc b
    sbc [hl]
    nop
    ld e, $00
    ld a, $00
    jr c, jr_06f_4a4e

jr_06f_4a4e:
    jr c, jr_06f_4a50

jr_06f_4a50:
    ld [hl], b
    nop
    ld d, b
    nop
    jr nz, jr_06f_4a56

jr_06f_4a56:
    ret nz

    nop
    ret z

    nop
    add b
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    ld [$8900], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_06f_4a6e

jr_06f_4a6e:
    ld b, l
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    jr jr_06f_4a7a

jr_06f_4a7a:
    jr nc, jr_06f_4a7c

jr_06f_4a7c:
    ld h, b
    nop
    ld b, b
    nop
    add hl, hl
    add $a4
    db $d3
    jr z, jr_06f_4a19

    db $e4
    inc de
    db $ec
    inc de
    sbc b
    ld a, a
    ret


    ld a, [hl]
    ld c, l
    rst $38
    call Call_06f_4cef
    rst $38
    ld b, h
    rst $38
    nop
    rst $38
    adc b
    ld [hl], a
    inc a
    rst $10
    rla
    rst $38
    di
    rst $38
    and b
    rst $38
    dec h
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
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
    reti


    rst $38
    ld a, a
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
    rlca
    nop
    rlca
    ld [$0c03], sp
    nop
    rra
    rra
    rra
    inc bc
    rra
    rra
    rra
    rra
    ccf
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
    rst $38
    rst $38
    rst $38
    cp $fe

jr_06f_4ae3:
    db $fd
    push af
    ei
    db $eb
    rst $30
    rst $10
    rst $28
    xor a
    rst $18
    ld e, a
    cp a
    cp a

jr_06f_4aef:
    ld a, a
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
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    ld [$19f7], sp
    and $80
    ld a, a
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_06f_4aef

    jr @-$17

    jr nc, jr_06f_4ae3

    ld [bc], a
    db $fd
    add b
    ld a, a
    di
    inc c
    pop hl
    ld e, $fa
    dec b
    db $ec
    inc de
    or $09
    or h
    ld c, e
    push af
    ld a, [bc]
    and d
    ld e, l
    ldh [$1f], a
    ld b, b
    cp a
    pop bc
    ld a, $a4
    ld e, e
    ld d, b
    rrca
    ldh [$1f], a
    ld [c], a
    dec e
    ld [hl+], a
    dec e
    ccf
    nop
    rst $38
    nop
    ldh a, [rP1]
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
    add b
    nop
    ld [hl], b
    nop
    inc l
    nop
    ld bc, $0000
    nop
    inc b
    nop
    ret nz

    nop
    ld b, b
    nop
    inc b
    nop
    call nz, $8000
    nop
    ld [hl], b
    nop
    jr nz, jr_06f_4b68

jr_06f_4b68:
    inc b
    nop
    add h
    nop
    add hl, de
    nop
    ld d, b
    nop
    stop
    ldh [rP1], a
    ld b, b
    nop
    ld b, b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    db $fd
    ld d, c
    xor l
    jr nz, @-$2f

    jr nz, @-$1f

    ld [$02f7], sp
    rst $38
    ld d, b
    rst $28
    ld e, h
    db $e3
    ld b, l
    ei
    ld b, c
    rst $38
    ld b, b
    rst $38
    add h
    ld a, e
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld b, $ff
    inc b
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
    rst $38
    rst $38
    rst $38
    xor $ff
    ld l, [hl]
    rst $38
    cp e
    rst $38
    ld a, a
    rst $38
    rst $38
    rrca
    rrca
    nop
    nop
    nop
    ld bc, $0700
    nop
    rst $38
    inc bc
    rst $38
    rrca
    rst $18
    ccf
    rra
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fd
    push af
    ei
    di
    rst $28
    rst $28
    rst $18
    rst $18
    cp a
    cp a
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
    db $f4
    rst $38
    ret z

    rst $38
    ret nz

    cp a
    nop

jr_06f_4bf3:
    rst $38
    nop
    rst $38
    nop
    rst $38
    add hl, bc
    rst $30
    ld b, $ff
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$00f7], sp
    rst $38
    jr nz, jr_06f_4bf3

    nop
    rst $38
    db $10
    rst $28
    sub b
    ld l, a
    ld [hl+], a
    db $dd
    ld l, [hl]
    sub c
    dec a
    jp nz, $ff00

    add hl, bc
    or $00
    rst $38
    ld bc, $08fe
    rst $30
    sub b
    ld l, a
    nop
    rst $38
    ld hl, $01de
    cp $09
    or $02
    db $fd
    add b
    ld a, a
    pop de
    ld l, $ef
    db $10
    dec d
    ld a, [bc]
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rrca
    nop
    ld b, $00
    ld b, $00
    ld c, $00
    ld b, $00
    inc b
    nop
    ld bc, $0800
    nop
    sbc b
    nop
    ld [hl], b
    nop
    inc b
    nop
    ld [$1000], sp
    nop
    stop
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
    ld l, $f0
    sub e
    db $e4
    ld l, e
    add l
    ld e, l
    add e
    ld l, l
    sub a
    ld [hl], h
    sbc a
    ld [hl], a
    cp a
    ld sp, $73ff
    db $fd
    ld l, c
    rst $30
    ld h, d
    rst $38
    ld [hl+], a
    rst $38
    add [hl]
    ld l, l
    ld [hl], l
    rst $08
    ld c, l
    rst $38
    ld e, l
    rst $38
    ld l, [hl]
    rst $38
    inc c
    rst $38
    add hl, de
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
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    ld h, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    ld a, a
    rra
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
    rst $28
    rst $28
    rst $18
    rst $18
    cp a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    db $ed
    rst $38
    pop bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ld a, [$00e7]
    rst $38
    rla
    rst $38
    rlca
    rst $38
    ld l, a
    rst $38
    ld h, a
    rst $38
    ldh [$df], a
    sub b
    rst $28
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    nop

Call_06f_4cef:
    rst $38
    rlca
    ld hl, sp+$08
    rst $30
    adc b
    ld a, a
    ld [$00ff], sp
    rst $38
    add b
    ld a, a
    and h
    ld e, e
    inc hl
    call c, $ff00
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    rlca
    ld hl, sp+$04
    ei
    ld [$50f7], sp
    xor a
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld [$68f7], sp
    sub a
    ld hl, sp+$07
    ld a, [c]
    dec c
    db $f4
    dec bc
    add b
    ld a, a
    and b
    ld e, a
    ld de, $3cee
    jp $dd22


    pop bc
    ld a, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rlca
    nop
    ld bc, $8000
    nop
    ld h, b
    nop
    ccf
    nop
    rrca
    nop
    ld b, e
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
    add b
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
    inc sp
    ld a, a
    or l
    ld a, [hl]
    or d
    db $fc
    inc hl
    db $fc
    add d
    db $fd
    add d
    db $fd
    add b
    rst $38
    or d
    rst $08
    ld c, [hl]
    rst $38
    ld b, c
    cp [hl]
    ld b, h
    cp a
    ld d, l
    xor a
    and c
    rst $18
    pop hl
    rst $38
    ld hl, $71ff
    cp a
    rla
    rst $38
    inc bc
    rst $38
    rlca
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
    rst $28
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    rst $38
    ld a, a
    or $ff
    ld [c], a
    rst $38
    jp z, $ffff

    rst $38
    ccf
    rst $38
    or l
    rst $38
    add hl, sp
    rst $38
    pop de
    rst $38
    sub c
    rst $38
    add b

jr_06f_4dbf:
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $08
    rst $38
    rst $30
    rst $38
    cp l
    rst $38
    add b
    rst $38
    ret nz

    cp a
    pop bc
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
    add b

jr_06f_4ddd:
    ld a, a
    jr nz, jr_06f_4dbf

    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$00f7], sp
    rst $38
    ld [bc], a
    rst $38
    inc c
    di
    nop
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
    cp a
    jr nz, jr_06f_4ddd

    ld h, b
    sbc a
    nop
    rst $38
    add b
    ld a, a
    ld [bc], a
    db $fd
    nop
    rst $38
    add b
    ld a, a
    ld b, b
    cp a
    nop
    rst $38
    call nz, $fc3b
    inc bc
    ldh [$1f], a
    add b
    ld a, a
    ld hl, sp+$07
    rst $30
    nop
    rst $38
    nop
    rra
    nop
    rlca
    nop
    rra
    nop
    db $fd
    nop
    push af
    nop
    ld [hl], l
    nop
    ld [de], a
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0800], sp
    nop
    nop
    nop
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
    db $eb
    rla
    sub [hl]
    ld c, a
    inc hl
    call z, $8c51
    jp Jump_000_20bc


    db $fd
    ld h, $f9
    ld h, c
    rst $38
    ld e, e
    rst $28
    xor e
    ld a, a
    ld [hl+], a
    rst $38
    ld b, $ff
    and b
    ld e, a
    adc e
    ld [hl], h
    inc bc
    db $fc
    ld d, c
    cp $f9
    rst $38
    ld a, [$fbff]
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
    cp a
    rst $38
    cp e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    reti


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc e
    rst $38
    ld l, $ff
    xor $ff
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rra
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    sub a
    rst $38
    rra
    rst $38
    cp $ff
    ld h, a
    rst $38
    ld e, $ff
    rlca
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
    add b
    ld a, a
    adc l
    ld a, a
    inc c
    rst $38
    xor e
    db $fc
    add b
    rst $38
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
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ret nz

    ccf
    ld l, c
    sub [hl]
    ld c, a
    or b
    ld c, [hl]
    or b
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    rst $10
    nop
    inc a
    nop
    db $fd
    nop
    rst $38
    nop
    ld a, a
    nop
    inc de
    nop
    ld b, b
    nop
    ld b, $00
    jr nz, jr_06f_4f24

jr_06f_4f24:
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
    ld [hl], e
    adc a
    ret


    ccf
    ld b, [hl]
    add hl, sp
    ld b, a
    add hl, sp
    jp Jump_000_0439


    ei
    db $e4
    ei
    nop
    rst $38
    inc e
    cp $5d
    cp [hl]
    db $10
    rst $38
    ld e, d
    cp l
    ld b, b
    cp a
    ld [$84f7], sp
    ld a, a
    xor h
    rst $38
    ld hl, sp-$01
    cp d
    rst $38
    and b
    rst $38
    ld l, b
    or a
    ldh a, [rIE]
    db $fc
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
    db $e3
    rst $38
    jp hl


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
    cp a
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    pop hl
    cp $ff
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    ld a, $ff
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ld a, e
    rst $38
    rrca
    rst $38
    rst $08
    rst $38
    ld c, e
    rst $38
    dec de
    rst $38
    dec c
    ld a, [$f817]
    ld b, $f9
    ld hl, sp-$01
    ccf
    rst $38
    cp a
    rst $38
    rra
    rst $38
    adc a
    rst $38
    rra
    rst $38
    rra

jr_06f_4fb5:
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $18
    rra
    rst $38
    ccf
    rst $18
    ld e, a
    cp a
    ld e, a
    cp a
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
    rst $38
    jr nz, jr_06f_4fb5

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    di
    inc c
    ld [hl], b
    rrca
    ld sp, hl
    ld b, $7e
    ld bc, $017e
    rrca
    nop
    sub $00
    ld d, h
    nop
    dec d
    nop
    ld b, $00
    add c
    nop
    add b
    nop
    add h
    nop
    stop
    nop
    nop
    ld hl, $8200
    nop
    inc bc
    nop
    add c
    nop
    ld bc, $0000
    nop
    dec bc
    ldh a, [$9d]
    ldh [$2a], a
    ret nz

    add hl, sp
    ret nz

    ld a, [de]
    pop af
    ld [hl], $e1
    cp d
    ld h, l
    ld [hl], h
    db $e3
    ld [hl], h
    db $eb
    jr nz, @+$01

    ld [hl], h
    ei
    sub l
    ld [$8e71], a
    ld d, h
    rrca
    xor $3f
    rst $38
    ld a, l
    ld l, e
    db $fd
    ret z

    rst $38
    adc l
    rst $38
    adc a
    rst $38
    ld b, a
    cp l
    dec h
    rst $38
    scf
    rst $18
    rst $38
    cp a
    rst $38
    rst $38
    db $fd
    rst $38
    cp l
    rst $38
    db $fd
    rst $38
    ld a, l
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $30
    rst $38
    or $ff
    rst $18
    rst $38
    rst $30
    rst $38
    dec sp
    rst $38
    dec de
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
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld a, l
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, l
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
    cp a
    rst $38
    cp a
    and l
    ld e, a
    ldh a, [rIF]
    db $fc
    inc bc
    ccf
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
    rst $00
    rst $38
    add [hl]
    ld sp, hl
    ld bc, $01ff
    rst $38
    nop
    rst $38
    inc e
    rst $38
    jr @+$01

    jr @+$01

    db $10
    rst $38
    jr nz, @+$01

    ld h, b
    rst $38
    ld l, b
    rst $30
    ld l, $f1
    ld b, c
    cp $01
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld b, $ff
    jp nz, $073f

    cp $55
    xor [hl]

jr_06f_50cc:
    ld e, h
    xor a
    or b
    ld c, a
    call nc, $fd2b
    nop
    dec a
    nop
    dec a
    nop
    cp b
    nop
    dec hl
    db $10
    ld de, $9600
    nop
    ld [hl-], a
    nop
    ld c, a
    nop
    sub c
    nop
    rrca
    nop
    adc a
    nop
    inc bc
    nop
    ld b, e
    nop
    add hl, hl
    nop
    add hl, sp
    nop
    add hl, bc
    nop
    jr c, jr_06f_50f7

    dec h

jr_06f_50f7:
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    cp d
    ld b, a
    dec de
    ld b, h
    xor c
    ld b, [hl]
    ret c

    inc b
    inc h
    sbc b
    jp hl


    inc e
    jp hl


    db $10
    ld b, c
    jr nc, jr_06f_50cc

    ld d, b
    ld d, h
    or c
    sbc e
    ld [hl], b
    rst $08
    ld [hl-], a
    ld a, h
    and [hl]
    adc h
    ld a, l
    ld a, e
    ld hl, sp-$03
    and $c8
    or $15
    cp $b0
    rst $18
    call z, $ebb3
    rst $30
    add a
    rst $38
    or a
    rst $38
    cp a
    rst $38
    db $f4
    rst $38
    cp l
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    or a
    rst $38
    rst $30
    rst $38
    ccf
    rst $38
    ld l, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, h
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
    cp a
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    cp $ff
    ld a, a
    rst $38
    rst $38
    ld a, a
    cp a
    ld a, a
    cp a
    rst $38
    cp b
    rst $38
    ld hl, sp-$01
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
    ld a, a
    rst $38
    ld h, a
    cp a
    ld b, h
    ei
    ld d, b
    rst $38
    db $10
    rst $38
    ld [hl], b
    cp a
    nop
    rst $38
    dec c
    rst $38
    add e
    ld a, a
    ld bc, $01ff
    rst $38
    ld b, b
    cp a
    ld b, b
    cp a
    ldh a, [rIF]
    ld d, $ed
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $28fe
    rst $10
    ld a, h
    add e
    ld [hl], a
    add b
    dec sp
    ret nz

    rla
    add sp, -$80
    ld a, a
    di
    inc c
    ld sp, $1f00
    nop
    ld h, e
    nop
    cp $00
    ld l, [hl]
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $08
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
    nop
    ret nz

    nop
    db $ec
    nop
    rst $20
    nop
    and b
    nop
    and e
    nop
    ld hl, sp+$00
    ld b, b
    nop
    add b
    nop
    adc d
    ld bc, $011e
    ld a, [hl+]
    inc b
    rlca
    nop
    db $fd
    ld [bc], a
    ld c, a
    ld a, $cc
    ccf
    ld d, a
    cp a
    jp nz, Jump_000_393f

    add $9e
    ld h, c
    db $dd
    ld [hl+], a
    ld d, a
    xor b
    sub l
    ld a, [$b05b]
    nop
    db $76
    adc c
    ld h, e
    ld b, c
    rst $20
    db $fd
    add $fe
    sbc h
    rst $18
    db $fc
    pop af
    db $fc
    rst $28
    pop af
    ld [hl], $e1
    db $ec
    ld [hl], e
    rst $30
    db $e3
    db $eb
    push hl
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
    cp $ff
    cp $ff
    cp $ff
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
    rst $38
    rst $38
    ei
    rst $38
    rst $18
    rst $38
    sub a
    rst $38
    or e
    rst $38
    ccf
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    db $db
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    and a
    rst $38
    cp a
    rst $38
    rst $08
    rst $38
    ld l, a
    rst $38
    db $db
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
    ld [hl], e
    rst $38
    rst $38
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
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $e3
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
    rst $38
    cp a
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
    cp [hl]
    rst $38
    cp a
    rst $38
    rra
    rst $38
    add c
    rst $38
    add b
    rst $38
    add e
    rst $38
    ld b, b
    cp a
    nop

jr_06f_52af:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec e
    ld [c], a
    ccf
    ret nz

    rst $38
    nop
    cp e
    ld b, h
    ld a, a
    nop
    ei
    inc b
    ei
    nop
    or $08
    ld a, a
    nop
    rst $30
    nop
    rst $38
    nop
    db $ec
    ld bc, $00f3
    ei
    nop
    rst $38
    nop
    ld [c], a
    db $10
    rst $18
    jr nz, jr_06f_52af

    jr nz, @-$0a

    nop
    cp h
    nop
    ld a, [$3a00]
    nop
    ld c, a
    nop
    ld c, l
    nop
    rla
    nop
    dec b
    nop
    jp hl


    nop
    adc a
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $06
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    ld b, $06
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    ld b, $06
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_06f_5349

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    ld b, $30
    ld sp, $3332
    ld [hl-], a
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_06f_536b

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
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b

jr_06f_5349:
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
    ld [hl], d

jr_06f_536b:
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
    jr nz, jr_06f_543b

    rst $30
    rst $30
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_06f_544d

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, @+$33

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    rlca
    rlca
    rlca
    rlca
    ld bc, $0000
    nop
    nop
    nop
    nop

jr_06f_543b:
    nop
    nop
    ld bc, $0101
    rlca
    rlca
    rlca
    rlca
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0000

jr_06f_544d:
    ld bc, $0101
    rlca
    rlca
    rlca
    rlca
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0707
    rlca
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0701
    rlca
    rlca
    ld bc, $0001
    nop
    nop
    ld bc, $0000
    ld bc, $0101
    ld bc, $0701
    rlca
    rlca
    rlca
    ld bc, $0000
    ld bc, $0000
    ld bc, $0101
    ld bc, $0101
    rlca
    rlca
    rlca
    rlca
    ld bc, $0100
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0707
    rlca
    rlca
    ld bc, $0202
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0701
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0701
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0701
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0607
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0909
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
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
    nop
    nop
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
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
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    db $ed
    ld [bc], a
    reti


    ld b, $6b
    add [hl]
    ld a, $c7
    ld h, a
    sbc e
    db $ed
    inc de
    ld hl, $63df
    sbc h
    ld d, c
    cp [hl]
    ret nz

    ccf
    add sp, $1f
    ld l, l
    sbc [hl]
    db $ec
    ld e, $fd
    inc c
    xor [hl]
    dec e
    di
    rrca
    pop af
    rrca
    ld a, c
    add a
    ld c, a
    pop af
    sbc h
    ld h, e
    cpl
    call nc, $fd12
    add d
    dec a
    ld e, c
    rst $20
    and $59
    ld e, l
    ld a, [$fff3]
    ld a, e
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
    rst $08
    jr nc, @-$2f

    ld [hl], a
    rst $28
    ld a, a
    rst $20
    rst $20
    rst $38
    ld h, a
    rst $38
    ld [hl], a
    rst $38
    rst $38
    ccf
    rst $38
    nop
    ld a, a
    add b
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    ld a, a
    nop
    rst $28
    nop
    db $dd
    nop
    ld [$1000], sp
    nop
    add d
    nop
    add d
    nop
    inc b
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    nop
    ld b, d
    nop
    nop
    nop
    ld b, b
    nop
    ld [bc], a
    nop
    inc b
    nop
    nop
    nop
    jr nc, jr_06f_564a

jr_06f_564a:
    ld h, a
    nop
    rst $18
    nop
    inc sp
    nop
    ld sp, hl
    rlca
    db $fd
    add e
    sbc $a1
    xor $91
    ld h, d
    sbc c
    db $76
    adc c
    sbc d
    pop hl
    dec d
    ld [c], a
    ld a, [hl+]
    sub c
    dec h
    ret nc

    xor d
    ld d, c
    push af
    inc bc
    ld [$df15], a
    nop
    ld a, [hl]
    add l
    jp z, Jump_000_219d

    sbc $0e
    pop af
    add l
    ei
    and l
    db $db
    ld c, $fd
    ld [$425d], a
    cp l
    sbc c
    rst $38
    ret nc

    rst $38
    jr nc, @+$01

    jr c, @+$01

    ld a, h
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, b
    rst $28
    db $10
    rst $28
    ld bc, $e3fe
    rst $38
    pop hl
    cp $e2
    rst $38
    db $ed
    di
    sub $ff
    rst $38
    rst $38
    rst $38
    nop
    ld [hl], e
    adc h
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
    inc bc
    inc e
    rrca
    ldh a, [$7f]
    add b
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld sp, hl
    rlca
    db $d3
    cpl
    ld bc, $0307
    rra
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
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    inc bc
    rst $38
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
    db $fd
    nop
    cp b

Jump_06f_5703:
    nop
    dec h
    nop
    ld h, d
    nop
    ld l, h
    nop
    ld e, b
    nop
    jr nz, jr_06f_570e

jr_06f_570e:
    ld a, b
    nop
    add b
    nop
    rlca
    nop
    jr nz, jr_06f_5716

jr_06f_5716:
    ld bc, $0b00
    nop
    rra
    nop
    ld l, $00
    rra
    nop
    sbc a
    nop
    ld e, $00
    inc c
    nop
    dec c
    nop
    ld [$0000], sp
    nop
    add b
    nop
    rst $38
    nop
    ld c, b
    or [hl]
    and d
    rst $38
    cp c
    or $ab
    db $f4
    xor $e1
    pop af
    ld a, [c]
    ld [c], a
    ldh a, [$61]
    ldh a, [$f0]
    xor $f5
    xor $b6
    ld a, [hl]
    rrca
    cp $00
    cp $bf
    ld e, [hl]
    ld l, a
    sbc [hl]
    ld e, [hl]
    adc a
    inc b
    cp a
    ld e, $e3
    call c, $b5e3
    rl d
    db $ed
    inc c
    rst $38
    ld l, [hl]
    cp a
    add h
    rst $38
    and c
    rst $08
    ld c, a
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
    inc a
    rst $28
    inc e
    rst $20
    ei
    rlca
    rlca
    rst $38
    rst $38
    rra
    add hl, de
    cp $ff
    rst $38
    sbc $ff
    rst $38
    rst $38
    ret nz

    ccf
    rst $38
    nop
    ld a, a
    add b
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
    ld bc, $0700
    nop
    rra
    ld [$0137], sp
    cp $d0
    cpl
    cp $01
    db $fc
    inc bc
    di
    rrca
    rst $20
    rra
    rst $08
    ccf
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
    db $fc
    rst $38
    ld hl, sp-$01
    pop af
    rst $38
    jp $87ff


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
    cp $ff
    db $fc
    cp [hl]
    nop
    cp a
    nop
    and c
    nop
    ld bc, $0100
    nop
    rrca
    nop
    rra
    nop
    ld e, a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $18
    nop
    rst $38
    nop
    sbc a
    nop
    cp [hl]
    nop
    adc [hl]
    nop
    db $fd
    nop
    ld e, l
    nop
    or b
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    ld bc, $c040
    nop
    add hl, hl
    or $b4
    ld a, a
    ld d, l
    cp [hl]
    sub h
    ld a, a
    ld e, h
    cp a
    ld e, a
    ld a, $cc
    ld a, $ed
    ld e, $de
    dec a
    ld a, h
    rra
    ld a, [c]
    rrca
    ld bc, $917f
    ld a, a
    jp $cd3f


    or e
    ld c, l
    or e
    ld [$08f7], sp
    db $fd
    cp a
    ld hl, sp+$7f
    ld hl, sp-$7d
    add hl, sp
    dec de
    rst $20
    dec bc
    rst $30
    ld h, b
    ccf
    xor h
    rst $38
    ld a, h
    rst $38
    dec a
    rst $38
    ld e, $ff
    inc e
    rst $38
    ld a, $ff
    ld a, $df
    ld a, a
    rst $18
    ld a, $df
    ld bc, $c9ff
    rst $38
    rst $08
    rst $38
    rst $28
    rst $18
    ld a, c
    rst $08
    rst $28
    rst $38
    ret c

    rst $28
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld h, $d9
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
    ld bc, $0700
    nop
    rrca
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add hl, de
    rst $20
    rst $20
    rra
    rst $28
    rra
    sbc a
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
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    pop hl
    rst $38
    jp $8fff


    rst $38
    rra
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    db $fc
    ld a, [$fbfc]
    db $f4
    rst $28
    ret nc

    rst $30
    add b
    cp $00
    ld a, e
    add h
    cp $01
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    di
    nop
    rst $28
    nop
    ld c, a
    nop
    cp $00
    cp $00
    dec sp
    nop
    ld a, h
    nop
    ld l, b
    nop
    ld h, h
    nop
    ld hl, sp+$00
    ld de, $2300
    nop
    rlca
    nop
    rrca
    nop
    sbc a
    nop
    ld a, $00
    ld a, [hl]
    nop
    add hl, bc
    rst $30
    ld c, l
    di
    ld c, l
    or e
    ld c, l
    or e
    ld sp, hl
    inc de
    ld d, a
    ld de, $114e
    ld e, [hl]
    ld bc, $e31d
    rst $30
    add c
    sbc l
    ld [c], a
    db $fc
    db $e3
    ld a, b
    rst $20
    rst $28
    ldh a, [$a0]
    rst $38
    sbc b
    rst $38
    add d
    db $fd
    ld [$37f7], sp
    rst $38
    rst $00
    ld a, a
    or b
    ld e, a
    sub d
    db $ed
    jp c, $f0fd

    rst $08
    rst $38
    rst $38
    cp $ff
    sbc $ff
    db $fd
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    cp [hl]
    rst $30
    or e
    rst $38
    ei
    rst $30
    rst $38
    di
    xor e
    rst $10
    cp c
    rst $00
    rst $10
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    pop hl
    sbc [hl]
    ld a, [hl]
    ld a, l
    nop
    rlca
    inc b
    inc bc
    ld [$080f], sp
    rrca
    rrca
    rrca
    db $10
    rra
    ccf
    ccf
    ld e, a
    ld a, a
    add b
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    ld bc, $03ff
    rst $38
    rrca
    rst $38
    inc bc
    rra
    rrca
    ccf
    rra
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
    cp $ff
    db $fc
    rst $38
    ldh a, [rIE]
    pop hl
    rst $38
    rst $00
    rst $38
    adc a
    rst $38
    rra
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
    cp $ff
    db $fd
    db $fc
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    ld d, a
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rlc b
    sbc a
    nop
    cp $01
    ld a, b
    add a
    adc h

jr_06f_59c1:
    ld [hl], e
    pop hl
    ld e, $fb
    inc b
    ld a, h
    nop
    ei
    nop
    rst $30
    nop
    adc a
    nop
    rst $38
    nop
    xor d
    nop
    ld h, $00
    call z, Call_000_2800
    nop
    ld [$b800], sp
    nop
    ld h, b
    db $10
    ret nz

    jr nz, jr_06f_59c1

    nop
    pop bc
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
    add b
    nop
    ld [hl], h
    xor a
    and a
    rst $38
    dec a
    xor $c0
    rst $38
    add $f9
    push af
    db $eb
    jp z, $d3e5

    push hl
    db $eb
    db $dd
    ret z

    rst $38
    ld a, e
    db $fc
    rla

jr_06f_5a07:
    ld sp, hl
    inc d
    rst $38
    inc [hl]
    rst $38
    ret c

    ccf
    db $dd
    ld a, [hl-]
    adc $79
    sub e
    call z, $c8b2
    rst $18
    and b
    ld e, d
    or b
    ccf
    ldh a, [$3d]
    ld a, [c]
    jr c, jr_06f_5a07

    db $fc
    rst $20
    ld b, c
    rst $38
    add hl, hl
    rst $18
    inc bc
    rst $38
    add a
    ei
    add e
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    xor $ff
    ld l, [hl]
    rst $38
    ld a, a
    cp $3e
    rst $38
    cp [hl]
    rst $38
    cp [hl]
    rst $38
    rst $30
    ld hl, sp-$02
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
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
    db $10
    rst $28
    nop
    rst $38

jr_06f_5a56:
    cp e
    rst $38
    nop
    rst $38
    db $eb
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    db $fd
    rst $38
    rlca
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
    cp $ff
    db $fc
    rst $38
    ldh a, [rIE]
    db $e3
    rst $38
    rst $00
    rst $38
    rrca
    rst $38
    rra

jr_06f_5a84:
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
    cp $ff
    ld hl, sp-$01
    ld hl, sp-$09
    ldh [rIE], a
    reti


    and $9f
    ldh [$e4], a
    nop
    nop
    db $fc
    db $fd
    ld [bc], a
    rst $38
    nop
    cp a
    nop
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    ei
    inc b
    ld a, e
    inc b
    rst $20
    jr jr_06f_5a84

    jr nc, jr_06f_5a56

    ld h, b
    rla
    ldh [$7f], a
    add b
    rst $28
    nop
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $00
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    ld bc, $c000
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
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
    ld [$3100], sp
    sbc [hl]
    ld [hl], h
    adc e
    cpl
    ret nz

    ld a, [hl]
    add c
    ld l, d
    add c
    ld [hl], l
    add e
    ld a, [hl+]
    add a
    ld [hl], e
    add a
    push af
    adc e
    ld b, a
    sbc c
    xor b
    ld d, a
    ld bc, $21de
    sbc $d0
    ccf
    sub b
    ld a, a
    db $dd
    ld a, $9c
    ld a, [hl]
    ld e, $7c
    cp b
    ld a, a
    ld a, c
    ccf
    add a
    ld a, a
    ld [bc], a
    rst $38
    cp e
    ld b, a
    ld d, a
    and a
    ld sp, $7ecf
    pop af
    ld e, d
    push af
    sub h
    rst $30
    cp a
    rst $38
    db $eb
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
    ld a, h
    rst $38
    ld a, l
    cp $dc
    ccf
    ld a, [hl]
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
    nop
    dec a
    cp $3f
    cp $7d
    rst $38
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    ccf
    ld a, a
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
    cp $ff
    ld hl, sp-$01
    pop af
    rst $38
    db $e3
    rst $38
    add a
    rst $38
    rrca
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
    cp $ff
    sbc b
    rst $20
    add hl, bc
    or $16
    jp hl


    ld c, [hl]
    or c
    ld c, a
    or b
    cp $01
    xor $11
    ld sp, hl
    ld b, $b1
    ld c, $e7
    jr @-$33

    inc [hl]
    add a
    ld a, b
    adc $31
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38

jr_06f_5bc1:
    nop
    ei
    inc b
    add b
    ld a, a
    ld a, a
    add b
    rst $38
    nop
    ld e, $00
    rra
    nop
    add d
    nop
    ld c, d
    nop
    add d
    nop
    nop
    nop
    ld de, $0200
    nop
    nop
    nop
    jr nz, jr_06f_5bde

jr_06f_5bde:
    add b
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
    inc b
    nop
    nop
    nop
    add hl, bc
    nop
    ld e, [hl]
    db $fd
    add c
    ld a, [hl]
    sbc a
    ld h, b
    add b
    ld a, a
    xor c
    ld d, [hl]
    inc c
    ld d, e
    jr z, jr_06f_5bc1

    dec h
    ldh a, [$3a]
    ldh a, [$35]
    ld a, [c]
    ret nz

    cp a
    db $10
    rst $38
    di
    ccf
    dec h
    rst $38
    rrca
    rst $38
    ld a, $4f
    and a
    ld c, a
    ld a, c
    rlca
    ld h, h
    add d
    dec d
    ret nz

    xor [hl]
    ret nz

    ld sp, hl
    call z, $dfe8
    ld c, $ff
    ld c, [hl]
    cp a
    ld b, $ff
    cp h
    rst $30
    db $eb
    ld [hl], $6e
    di
    ld l, d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or a
    rst $38
    sbc e
    rst $38
    rst $18
    cp a
    rst $38
    sbc a
    sbc a
    rst $38
    rst $38
    rst $18
    ld a, [hl]
    add c
    rst $38
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $01
    cp $03
    cp $03
    cp $0f
    rst $38
    ccf
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    cp $ff
    rst $38
    ei
    rst $38
    pop af
    rst $38
    pop hl
    ei
    add a
    rst $30
    rra
    rst $18
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    ei
    rst $38
    ei
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
    cp $ff
    ld hl, sp-$01
    pop hl
    cp $ec
    di
    ret nc

    rst $28
    jr nc, @-$2f

    nop
    rst $38
    dec bc
    db $f4
    ccf
    ret nz

    ld a, a
    add b
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
    rst $38
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
    rst $38
    nop
    ld a, [hl]
    ld bc, $10ef
    ei
    inc b
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    db $fc
    inc bc
    pop de
    ld c, $64
    dec de
    db $eb
    inc d
    nop
    rst $38
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld e, e
    nop
    ccf
    nop
    ld [hl], e
    nop
    and [hl]
    nop
    sbc l
    nop
    nop
    nop
    ld b, b
    nop
    ld bc, $0900
    nop
    nop
    nop
    call nz, $9000
    nop
    ld l, d
    db $10
    inc l
    nop
    sub b
    ld [$0020], sp
    ld d, b
    nop
    ret


    nop
    or d
    rst $18
    cp [hl]
    reti


    inc de
    db $fc
    ld sp, $3ade
    ret c

    ld sp, hl
    jr jr_06f_5d27

    sbc b
    ld [hl], a
    sbc b
    or a
    inc e
    rst $20
    sbc h
    add [hl]
    dec a
    add $3d
    inc de
    xor l
    push af
    adc a
    dec d
    rst $28
    ld d, l
    xor $1e
    rst $28
    add d
    rst $30
    cp c
    rst $30
    ld [hl-], a
    rst $20
    add hl, de
    rst $20
    ld de, $07ef
    rst $28
    adc c
    rst $30
    ld e, e
    rst $30
    inc bc
    rst $38
    rrca
    rst $38
    add a

jr_06f_5d27:
    ld a, a
    inc de
    rst $38
    or e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $ed
    rst $38
    rst $28
    rst $38
    jp $fefc


    rst $38
    add sp, -$01
    xor $ff
    db $ec
    rst $38
    cp $fd
    db $dd
    ld a, [$ff00]
    nop

jr_06f_5d4d:
    rst $38
    ld b, c
    rst $38
    ld [c], a
    rst $38
    rst $38
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    ld bc, $60fe
    rst $38
    jp nz, $ebfd

    rst $38
    ld [hl], b
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    cp $ff
    cp $ff
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ld [c], a
    rst $38
    ld d, b
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
    jr c, jr_06f_5d4d

    nop
    rst $38
    nop
    rst $38
    ld [$29f7], sp
    sub $80
    ld a, a
    sbc b
    ld h, a
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $ed
    ld [de], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, @+$7f

    add d
    sbc $21
    ld hl, sp+$07
    di
    inc c
    ret nz

    ccf
    nop
    rst $38
    scf
    ret z

    cpl
    ret nc

    ld a, $c1
    rst $38
    nop
    rst $38
    nop
    ld e, $e1
    db $ed
    ld [bc], a
    ret c

    rlca
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    db $dd
    nop
    ld e, h
    nop
    ld d, $00
    dec a
    nop
    sbc d
    nop
    or b
    nop
    jr z, jr_06f_5de2

jr_06f_5de2:
    jp z, $9800

    nop
    stop
    ld [de], a
    nop
    inc hl
    nop
    ld b, h
    nop
    adc b
    nop
    add hl, de
    cp $bb
    ld a, h
    xor d
    ld a, l
    ld a, c
    cp h
    ld a, [hl-]
    ld a, l
    ld a, e
    inc a
    jr c, jr_06f_5e3c

    sbc e
    ld a, h
    db $fd
    sbc $9b
    db $fc
    ldh [$fe], a
    push bc
    cp $a1
    cp $eb
    db $f4
    rst $38
    ldh [$6d], a
    ld a, [c]
    ld h, l
    jp c, $cd32

    cp [hl]
    push bc
    add e
    push af
    adc $35
    ld a, [hl-]
    db $fd
    ld [hl], e
    ld sp, hl
    and $79
    ld b, b
    ei
    ld h, l
    ld a, [hl-]
    ld l, c
    cp [hl]
    xor b
    rst $18
    pop bc
    rst $38
    jp nz, $e9f7

    rst $38
    db $ec
    rst $38
    sbc a
    rst $38
    sbc h
    rst $38
    db $dd
    rst $38
    call c, $d6ff
    rst $38
    rst $38
    rst $38

jr_06f_5e3c:
    ld a, [hl]
    add a
    rst $38
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    rst $30
    rst $28
    rst $28
    rst $38
    ld bc, $72fe
    db $fd
    ld e, $f7
    inc e
    rst $38
    dec sp
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ldh a, [$3f]
    ld h, b
    rst $38
    add c
    rst $38
    inc c
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
    inc bc
    rst $38
    nop
    rst $38
    rlca
    rst $38
    sbc l
    rst $38
    nop
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
    nop
    rst $38
    nop

jr_06f_5e81:
    rst $38
    ld bc, $00fe
    rst $38
    db $10
    rst $28
    add h
    ld a, e
    nop
    rst $38
    ret nz

    ccf
    add hl, bc
    rst $30
    cp e
    ld b, [hl]
    ret nc

    cpl
    ld a, e
    add h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld l, a
    sub b
    ld a, a
    add b

jr_06f_5ea0:
    rst $38
    nop
    rst $18
    jr nz, jr_06f_5ea0

    inc b
    rst $38
    nop
    rst $38
    nop
    db $e3
    inc e
    jp Jump_000_383c


    rst $00
    jr nc, jr_06f_5e81

    rst $38
    nop
    rst $38
    nop
    ld h, a
    sbc b
    ld hl, $60de
    sbc a
    ld l, c
    sub [hl]
    push af
    ld a, [bc]
    or [hl]
    ld c, c
    or l
    ld c, d
    ld bc, $2cfe
    db $d3
    xor h
    ld d, e
    add hl, de
    and $d7
    jr z, @+$01

    nop
    ld a, a
    nop
    push af
    nop
    cp e
    nop
    rst $38
    nop
    rst $10
    nop
    ld [hl], a
    nop
    ld d, a
    nop
    ld l, a
    db $10
    cp $00
    rlc b
    and d
    nop
    ld c, [hl]
    nop
    adc a
    nop
    ld a, $00
    ld a, a
    nop
    ld [hl], e
    nop
    ret c

    rst $38
    db $76
    ret


    ccf
    ret nz

    ld d, [hl]
    xor c
    or [hl]
    ret


    dec [hl]
    jp Jump_06f_41fa


    or [hl]
    ld b, c
    cp d
    ld b, b
    add l
    ld [hl], b
    cp $00
    ld [hl], d
    inc b
    cp b
    ld b, [hl]
    ld c, $f1
    ld l, [hl]
    cp c
    ld e, b
    cp a
    ld l, b
    or a
    ld d, d
    cp a
    db $e3
    sbc a
    ei
    add a
    xor e
    sub e
    push de
    add e
    ei
    adc l
    adc $bf
    ld [hl], b
    sbc a
    ld e, $ff
    ld [hl], $ee
    ld b, e
    db $fc
    xor e
    ld a, h
    dec d
    ld a, [$ffb7]
    cpl
    rst $30
    rst $30
    rst $38
    ei
    rst $38
    ei
    rst $38
    db $db
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    sub b
    rst $38
    rst $00
    ld hl, sp-$61
    cp $fe
    sbc a
    cp [hl]
    rst $18
    cp [hl]
    rst $18
    xor a
    rst $18
    adc b
    ld [hl], a
    dec b
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    cp [hl]
    rst $38
    cp e
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, c
    rst $38
    db $fc
    rst $38
    ei
    rst $38
    adc a
    rst $38
    nop
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
    adc a
    rst $38
    jr nz, @+$01

    ld [hl], h
    cp a
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
    ld [$00f7], sp
    rst $38
    add [hl]

jr_06f_5f83:
    ld a, c
    nop
    rst $38
    dec a
    jp nz, $ff00

    nop
    rst $38
    ld [$70f7], sp
    adc a
    pop bc
    ld a, $80
    ld a, a
    sbc d
    ld h, l
    db $d3
    inc l
    ld [hl], c
    adc [hl]
    call $f532
    ld a, [bc]
    db $fd
    ld [bc], a
    sbc d
    ld h, l
    ret nc

    cpl
    db $fc
    inc bc
    db $dd
    ld [hl+], a
    ld a, d
    add l
    cp $01
    db $fd
    ld [bc], a
    jr nc, @-$2f

    inc bc
    db $fc
    ld a, [$fd05]
    ld [bc], a
    rst $28
    db $10
    dec c
    ld a, [c]
    jr nz, @-$1f

    add c
    ld a, [hl]
    ld [$90f7], sp
    ld l, a
    ret


    ld [hl], $39
    add $00
    rst $38
    ld a, [$f905]
    ld b, $9b
    inc h
    db $ec
    ld bc, $00fd
    ld a, c
    add b
    cpl
    add b
    sbc [hl]
    nop
    push bc
    nop
    ret nz

    ld bc, $00c3
    xor $00
    ld e, b
    ld [bc], a
    inc a
    ld [bc], a
    inc l
    ld b, b
    call Call_06f_6520
    nop
    pop hl
    inc b
    and e
    ld [$201b], sp
    jp nc, $f4ff

    di
    inc c
    db $e3
    push de
    ld [$e3d8], a
    sub h
    db $e3
    sbc e
    jr nz, jr_06f_5f83

    ld e, e
    and $1b
    ld [hl], l
    ld a, [bc]
    and $18
    ld a, l
    ld [de], a
    cp d
    ld d, a
    ldh [$1f], a
    or a
    ld c, b
    rst $00
    jr @+$5c

    cp l
    sub a
    add sp, -$49
    ret z

    or h
    ret


    or e
    ret z

    cp a
    ret nz

    db $eb
    call nz, $e710
    inc e
    db $e3
    adc h
    ld [hl], e
    ret


    ccf
    ld c, a
    cp a
    ld l, a
    rst $38
    ld a, a
    ld a, a
    ccf
    rst $38
    rst $38
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
    ei
    rst $38
    cp e
    rst $38
    ld a, [hl]

Jump_06f_603f:
    rst $38
    ei
    rst $38
    rst $30
    ei
    ei
    rst $30
    rst $30
    rst $38
    db $eb
    rst $38
    ld b, c
    cp a
    rlca
    rst $38
    rlca
    rst $38
    set 7, a
    ld sp, hl
    rst $38
    ld a, a
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc de
    rst $38
    jr @+$01

    ld hl, sp-$01
    rst $38
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    dec b
    rst $38
    inc d
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    or b
    rst $38
    ldh [rIE], a
    inc h
    rst $38
    inc c
    rst $30
    inc e
    rst $20
    ld [$18ff], sp
    rst $28
    ld [hl-], a

jr_06f_607d:
    call $cf30
    ld b, b
    cp a
    ret nz

    ld a, a
    ld b, b
    rst $38
    ld b, b
    rst $38
    ret nz

    ld a, a
    jr nz, @+$01

    jr nz, @-$1f

    ld a, h
    add e
    inc l
    db $d3
    dec d
    ld [$0ff4], a
    add sp, $1f
    add sp, $1f
    or b
    ld e, a
    jr nz, jr_06f_607d

    ret nz

    ccf
    ld [hl], b
    adc a
    ret c

    daa
    cp c
    ld b, [hl]
    ld [hl], e
    adc h
    daa
    ret c

    db $fc
    inc bc
    rst $38
    nop
    sbc [hl]
    ld h, c
    ld a, [hl-]
    push bc
    db $fd
    ld [bc], a
    cp a
    ld b, b
    inc a
    jp $c23d


    ld a, a
    add b
    cp a
    ld b, b
    dec a
    jp nz, $e41b

    ld c, l
    or d
    ld a, e
    add h
    inc bc
    db $fc
    ld [$11f7], sp
    xor [hl]
    db $eb
    inc d
    inc e
    ld h, e
    db $fc
    inc bc
    ld [$84bb], sp
    dec sp
    jp nc, $042d

    ld a, e
    ld [bc], a
    ld a, l

jr_06f_60dc:
    sub h
    ld l, e
    adc d
    ld [hl], l
    cp e
    ld b, h
    ld sp, hl
    ld b, $9b
    ld h, h
    ld [hl-], a
    call $c03f
    ld a, [hl]
    add c
    ld a, l
    add d
    ld d, a
    xor b
    ld [hl], b
    sbc $20
    db $dd
    db $76
    ret


    ld [hl], b
    rst $08
    ld [hl+], a
    call $c59a
    ld a, [hl-]
    pop bc
    ld c, [hl]
    pop de
    add hl, hl
    db $d3
    ld de, $2ec7
    jp $c739


    ld h, c
    sbc a
    ld hl, $9edf
    ld a, a
    ld b, l
    cp a
    ld a, a
    and a
    add c
    ld l, a
    pop bc
    ld l, [hl]
    db $d3
    ld a, h
    ld a, c
    rst $38
    add hl, hl
    rst $38
    add hl, hl
    cp $f5
    jr c, jr_06f_60dc

    ld [hl], b
    ld d, l
    or b
    ld l, c
    add b
    sub c
    ld h, b
    ld [hl], e
    ldh [$c6], a
    pop hl
    call $f2e2
    push hl
    and $ed
    adc $f9
    db $fd
    cp $fd
    cp $fe
    ld sp, hl
    push af
    ei

Jump_06f_613c:
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
    ei
    rst $30
    cp a
    di
    ld b, a
    cp e
    ld [hl], e
    adc a
    inc hl
    rst $38
    ld [hl], l
    cp e
    rst $30
    ld sp, hl
    ei
    push af
    di
    db $fd
    inc c
    rst $30
    ld d, [hl]
    cp l
    dec de
    db $f4
    inc sp
    db $ec
    ccf
    ldh [rNR22], a
    ldh [$1f], a
    ldh [$1f], a
    rst $38
    sbc a
    ld a, a
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
    cp a
    rst $38
    ccf
    rst $18
    ccf
    rst $18
    sbc a
    rst $38
    ccf
    rst $08
    ld a, a
    sbc a
    ld e, l
    sbc a
    ld a, a
    add b
    ld d, e
    adc [hl]
    ld a, [hl]
    add c
    ld c, a
    cp [hl]
    dec b
    cp $0d
    cp $1c
    rst $28
    cp [hl]
    rst $18
    ld a, h
    cp a
    ld a, [bc]
    push af
    ld bc, $40fe

jr_06f_6199:
    cp a
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    inc b
    ei
    ld bc, $dbfe
    inc h
    ei
    inc b
    add hl, de
    db $e4
    ld hl, $d5de
    ld a, [hl+]
    jp c, $dd25

    ld [hl+], a
    ld e, l
    and d
    ld b, b
    cp a
    dec bc
    db $f4
    ld a, [$ba05]
    ld b, l
    add sp, $17
    sbc [hl]
    ld h, c
    ld l, h
    sub e
    db $fc
    inc bc
    ld sp, hl
    rlca
    or h
    ld c, e
    cp $01
    add $39
    rra
    ldh [$2e], a
    pop de
    jr c, jr_06f_6199

    ld [de], a
    db $ed
    ld e, [hl]
    and c
    ld l, h
    sub e
    ld c, c
    or [hl]
    sbc e
    ld h, h
    cp e
    ld b, h
    ld [hl+], a
    db $dd
    pop de
    ld c, $73
    adc h
    adc b
    ld [hl], a
    or c
    ld b, [hl]
    ld a, e
    add h
    dec a
    jp nz, $c23d

    adc d
    ld h, l
    push de
    dec hl
    ld e, l
    or e
    ld l, a
    or e
    cp a
    ld h, e
    add c
    ld l, a
    sub l
    ld l, e
    dec c
    ei
    sbc c
    rst $38
    jr nc, @+$01

    ld [hl], $fb
    ld l, e
    rst $30
    rst $10
    rst $28
    ld d, e
    rst $38
    or $ff
    ld hl, sp-$19
    or h
    rst $08
    dec hl
    sbc a
    ld a, [hl]
    rra
    rst $38
    inc a
    or [hl]
    ld sp, hl
    sbc e
    ldh a, [rPCM34]
    ldh [$88], a
    ld h, e
    ld a, [c]
    dec c
    xor $19
    cp l
    ld a, b
    ei
    inc a
    ld h, a
    jr c, @-$7b

    ld a, b
    sub [hl]
    ld sp, hl
    ld d, d
    cp c
    rst $38
    sub e
    add hl, de
    or $0c
    di
    adc e
    ld h, c
    ld h, l
    db $e3
    rst $00
    rst $28
    ld sp, hl
    rst $38
    ldh a, [rIE]
    rst $30
    ld hl, sp-$24
    cp e
    cp [hl]
    db $fd
    cp h
    rst $30
    ldh a, [rIE]
    pop af
    rst $38
    di
    rst $38
    di
    xor $ec
    di
    pop hl
    cp $f8
    rst $38
    ld hl, sp-$01
    db $f4
    ei
    ld sp, hl
    cp $fd
    cp $fc

jr_06f_625d:
    rst $38
    ld hl, $c3de
    inc a
    di
    inc c
    db $dd
    ld [hl+], a
    ld hl, sp-$01
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rst $38
    ccf
    ld a, a
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $18
    cp a

jr_06f_6278:
    rst $38
    sbc a
    rst $18
    cp a
    sbc a
    rst $38
    rst $38
    rst $18
    rst $08
    rst $38
    rst $38
    rst $08
    ld l, a
    rst $18
    ld a, a
    rst $08
    rst $00
    ld a, a
    rst $38
    ld h, a
    and a
    ld a, a
    cp a
    ld h, a
    xor a
    ld [hl], a
    dec sp
    rst $30
    ccf
    di
    rst $20
    dec sp
    rst $38
    inc sp
    rst $38
    inc de
    push hl
    dec de
    db $fd
    dec de
    ld a, a
    sbc c

jr_06f_62a2:
    rst $28
    add hl, de
    ld a, [hl+]
    db $dd
    inc hl
    call c, $956e
    ld a, a
    sbc h
    ccf
    call z, $c6b9
    cp e
    call nz, $c6bb
    sbc e
    and $bb
    add $fb
    add [hl]
    ld a, [$5a87]
    and a
    ld a, c
    add a
    ld e, c
    and a
    add hl, de
    rst $20
    rrca
    rst $30
    inc e
    db $e3
    sub [hl]
    ld h, c
    inc bc
    ldh a, [rNR11]
    ldh [$09], a
    ldh a, [$09]
    ldh a, [$39]
    ret nz

    ld [hl], c
    adc b
    jr jr_06f_6278

    ret z

    jr nc, @-$1e

    jr jr_06f_625d

    ld a, b
    or b
    ld c, b
    call c, $c420
    jr c, jr_06f_62a2

    ld b, b
    db $ec
    ld de, $807d
    db $fc
    nop
    cp b
    inc b
    ld [hl], $40
    pop af
    rst $38
    ld hl, sp-$01
    add e
    db $fd
    call $dab3
    cp a
    rst $08
    or a
    cp a
    rst $20
    sub a
    rst $28
    add d
    rst $38
    ld [hl-], a
    rst $38
    ld [hl-], a
    rst $28
    jr nc, @-$0f

    ld [hl], d
    db $fd
    ret nz

    rst $38
    dec b
    ld a, [$78a7]
    rlca
    ld hl, sp-$21
    nop
    db $db
    ld sp, $79f7
    ld h, c
    rst $38
    rst $30
    rst $28
    ld l, a
    rst $38
    ld e, a
    rst $38
    adc a
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    ld [hl], e
    cp $e1
    cp $f2
    db $ed
    or $ef
    rst $38
    rst $20
    ld b, l
    cp [hl]
    ld h, a
    sbc l
    ld l, l
    sbc a
    xor l
    ld e, a
    ld a, [hl]
    db $fc
    inc [hl]
    db $fc
    add hl, bc
    db $fc
    sbc l
    add sp, $7a
    ld hl, sp-$09
    db $fc
    ld h, h
    cp $f6
    ld l, a
    ld c, a
    rst $38
    call c, $deff
    rst $38
    rst $18
    rst $38
    ld l, [hl]
    db $fd
    ld a, l
    rst $38
    ld a, a
    rst $38
    ld a, h
    rst $38
    ld a, b
    rst $38
    ld a, l
    ei
    ld d, l
    db $eb
    or $f9
    or $f9
    ldh a, [rIE]
    db $f4
    ei
    ld sp, hl
    rst $30
    db $f4
    ei
    ld a, [c]
    rst $38
    push af
    ld a, [$fbe4]
    ld sp, hl
    or $e1
    cp $f4
    rst $38
    ldh a, [rIE]
    db $e4
    rst $38
    ret nz

    rst $38
    pop af
    cp $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    ld sp, hl
    cp $f8
    rst $38
    ei
    db $fc
    ld hl, sp-$01
    push af
    rst $38
    pop bc
    rst $38
    jp $ffff


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ld a, a
    cp a
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    cp a
    ccf
    sbc a
    ccf
    sbc a
    ccf
    rst $18
    ccf
    ld a, a
    sbc a
    rst $38
    sbc a
    rst $08
    sbc a
    ld a, a
    adc a
    ld a, a
    adc a
    rst $38
    adc a
    rst $38
    rst $08
    rst $30
    rst $08
    rst $18
    rst $20
    rst $18
    rst $20
    rst $38
    rst $00
    rst $18
    rst $20
    di
    rst $20
    rst $30
    and e
    rst $38
    and e
    cp a
    db $e3
    set 6, e
    ld e, c
    di
    ld a, l
    inc de
    ccf
    ld de, $113f
    ei
    ld hl, sp-$0e
    push af
    ld sp, hl
    ldh [rDIV], a
    ret nz

    jp z, $8c84

    add b
    cp b
    add b
    sbc c
    nop
    rra
    ld [$de23], a
    sbc $b7
    and l
    rst $38
    push af
    ld [$f46b], a
    daa
    ld hl, sp+$2e
    pop af
    ld [hl], a
    add c
    inc bc
    rst $30
    ld a, a
    db $e3
    rst $30
    db $e3
    ld l, e
    or a
    or a
    rst $28
    rst $08
    rst $38
    adc a
    rst $38
    cp $bf
    ld a, a
    cp [hl]
    rst $38
    ld a, e
    ld d, a
    cp $c4
    ld a, [hl]
    sub $ec
    call z, $9ffe
    cp $9c
    cp $dd
    cp $e7
    db $fc
    or a
    call z, $05bb
    ld a, [c]
    rrca
    ld c, h
    ccf
    xor $1f
    dec a
    sbc a
    call Call_000_1cbd
    rst $28
    ld e, l
    cp [hl]
    ccf
    sbc $87
    cp $4f
    cp a
    dec a
    rst $38
    cp a
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
    cp a
    ld a, a
    ld a, l
    cp a
    cp l
    ld a, a
    dec a
    rst $38
    dec a
    rst $38
    ld a, $ff
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, [hl]
    rst $38
    ld a, l
    cp $7d
    cp $7c
    rst $38
    cp a
    db $fc
    rst $38
    db $fc
    ld a, [$f4fd]
    ei
    ld [hl], c
    cp $f2
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
    cp $ff
    or $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    db $fc
    rst $38
    ei
    cp $eb
    db $fc
    di
    db $fc
    ld hl, sp-$01
    rst $38
    cp $7c
    rst $38
    ld a, d
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $28
    rst $38

jr_06f_64c0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $dd
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
    ei
    rst $38
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
    rst $38
    rst $38
    xor c
    db $76
    rst $20
    ld [de], a
    ld [$d594], sp
    nop
    ld l, b
    ld [$1875], sp
    jr jr_06f_6571

    ld a, c
    ld [hl], $f8
    inc [hl]
    ld a, h
    jr c, jr_06f_64c0

    ld e, b
    ld d, h
    sbc c
    xor d
    ld d, c
    ld e, [hl]
    ld [hl], c
    adc $71
    rst $38
    ret nz

    sbc $80
    rst $18
    add d
    cp e
    add e
    inc de
    adc a
    rst $00
    adc a
    sbc $0f
    add $1f
    ld b, [hl]
    sbc a

Call_06f_6520:
    ld [hl-], a
    rrca
    inc bc
    rra
    jr nz, jr_06f_6545

    ld c, h
    rra
    inc a
    rra
    ld e, h
    ccf
    db $d3
    ccf
    ld a, b
    scf
    cp h
    ld a, a
    dec sp
    ld a, h
    cp $f0
    cp a
    pop bc
    dec hl
    add e
    ld d, e
    rrca
    ld e, l
    and a
    ld e, [hl]
    rst $20
    pop de
    rst $20
    cp e
    rst $20
    ei

jr_06f_6545:
    rlca
    db $db
    ld b, a
    scf
    rst $08
    rst $28
    sbc a
    nop
    cp a
    db $db
    inc c
    inc sp
    inc c
    ld e, b
    ccf
    set 7, a
    and d
    rst $18
    ei
    add $db
    rst $20
    rst $20
    rst $28
    rst $20
    ei
    db $e3
    rst $38
    rst $38
    rst $38
    cp $ff
    db $76
    rst $38
    ld a, $ff
    scf
    rst $38
    ld [hl], l
    rst $38
    ld [hl], a
    rst $38
    ld [hl], c

jr_06f_6571:
    rst $38
    pop hl
    ld a, a
    or a
    ld a, l
    dec sp

jr_06f_6577:
    cp $61
    cp $62
    rst $38
    ldh a, [$ef]
    ld h, b
    rst $38
    ld c, [hl]
    pop af
    ld bc, $c1ff
    rst $38
    jp $81ff


    rst $38
    and c
    rst $38
    sub a
    db $eb
    adc e
    rst $30
    sbc e
    rst $20
    dec c
    rst $30
    add a
    rst $38
    and a
    rst $38
    rla
    rst $28
    rlca
    rst $38
    cpl
    rst $18
    rlca
    rst $38
    cpl
    rst $18
    cpl
    rst $18
    ccf
    rst $18
    sbc a
    ld a, a
    ld a, a
    cp a
    sbc a
    ld a, a
    ld d, a
    cp a
    adc a
    ld a, a
    rst $28
    ccf
    rrca
    rst $38
    cp a
    ld a, a
    ld c, a
    cp a
    ld a, a
    sbc a
    cpl
    rst $18
    rst $00
    rst $38
    push hl
    rst $38
    ld [hl], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, [$e7ff]
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    db $fd
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
    rst $38
    rst $38
    db $ed
    rst $38
    db $ed
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sub a
    inc c
    dec c
    jr jr_06f_6577

    jr jr_06f_6666

    db $10
    adc l
    ld [hl], d
    and e
    ld d, [hl]
    dec a
    add $6f
    inc e
    db $dd
    ld a, $3f
    cp $43
    db $fc
    ld b, c
    db $fc
    inc sp
    sbc h
    ld c, l
    sub b
    dec hl
    ret c

    sbc [hl]
    add hl, sp
    or l
    ld a, e
    ld a, l
    ld a, [c]
    ld sp, hl
    or $e6
    pop af
    ei
    pop hl
    scf
    pop hl
    add b
    ld h, e
    ld l, e
    ld b, a
    ld c, [hl]
    rst $38
    ld a, d
    rst $38
    ld d, b
    rst $38
    xor b
    rst $30
    call z, $beb3
    pop af
    ld d, $f9
    dec a
    db $db
    dec d
    ei
    push bc
    ld a, [hl-]
    cp e
    ld b, h
    call c, $9fe3
    rst $28
    adc $bf
    cp a
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $28
    db $fd
    add c
    db $fd
    res 6, l
    pop de
    cp a
    ccf
    rst $18
    sub h
    ld a, e
    cp e
    ld [hl], a
    rst $30
    ld a, a
    ldh a, [rIE]
    db $d3
    ldh a, [rNR44]
    ldh a, [$35]
    ldh [$ea], a
    pop hl
    sbc [hl]
    di
    add d
    ld a, e
    ld e, d
    rst $38
    ld [hl], b
    rst $38

jr_06f_6666:
    ld a, [c]
    rst $38
    ld hl, sp-$01
    ld a, e
    rst $30
    and $ff
    rst $38
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
    rst $30
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ld a, a
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
    rst $30
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
    db $fc
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
    reti


    rst $38
    cp $ff
    rst $38
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    ld [$aeff], a
    rst $38
    sbc l
    rst $38
    sbc l
    rst $38
    sbc a
    rst $38
    rst $10
    rst $38
    rst $18
    rst $38
    rst $38
    dec e
    xor [hl]
    ld a, a
    dec l
    cp $97
    ld a, [hl]
    cp e
    ld [hl], h
    sub l
    ld a, b
    sbc b
    ld [hl], d
    rla
    ld [hl], b
    cp [hl]
    ld [hl], c
    xor e
    ld [hl], l
    ld l, $f9
    and [hl]
    ld a, c
    jp hl


    ld [hl], e
    ld [hl], l
    db $e3
    ld l, l
    db $e3
    ei
    rst $20
    ld sp, hl
    rst $38
    ld [hl], e
    rst $38
    ld a, a
    rst $30
    ld a, a
    rst $30
    ld sp, $39ff
    rst $38
    cp e
    ld a, a
    cp $7f
    db $fd
    rst $38
    cp a
    ld sp, hl
    ld e, l
    ei
    jp $b7bf


    rst $28
    db $ed
    db $fd
    db $fc
    rst $38
    cp $ff
    push af
    ld a, [$f2ff]
    cp $df
    cp [hl]
    rst $18
    sbc a
    rst $38
    sbc l
    rst $38
    cp e
    rst $38
    ld a, [$ffff]
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    db $ed
    cp $de
    ld hl, sp-$23
    ldh a, [$da]
    ldh [$57], a
    ldh [$0e], a
    rst $20
    db $ed
    cp $bd
    ld a, [hl]
    ld l, [hl]
    ccf
    rst $20
    ld e, $1f
    db $fc
    rst $38
    inc a
    ld e, c
    ld a, h
    db $dd
    jr c, jr_06f_6778

    ld a, b
    cp [hl]
    ld [hl], c
    inc h
    di
    db $fd
    ld h, d
    ld [hl], l
    ret nz

    ld [c], a
    ret nz

    add $c1
    rst $38
    rst $38
    db $fd
    rst $38
    ld a, [$e6f5]
    ld sp, hl

jr_06f_6778:
    rst $38
    ld hl, sp-$03
    ld a, [$fcfe]
    rst $38
    db $fc
    db $fd
    cp $fe
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
    cp $ff
    db $76
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    db $e3
    db $fc
    db $e3
    call c, $ee11
    or $e9
    dec e
    ld [c], a
    or a
    ret z

    rst $00
    ld hl, sp-$21
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, a
    rst $38
    ld [hl], a
    rst $38
    ld h, [hl]
    rst $38
    ld e, [hl]
    rst $38
    or $ff
    db $e4
    rst $38
    add h
    rst $38
    add b
    rst $38
    ld b, l
    xor e
    adc a
    ei
    di
    rst $38
    ei
    rst $30
    adc a
    rst $30
    ld d, a
    xor a
    rst $08
    cpl
    cpl
    ld e, a
    rst $38
    ld a, $3f
    ld a, [hl]
    cp [hl]
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
    cp $ff
    sub $ff
    rst $08
    cp a
    ld c, e
    cp a
    ld l, e
    sbc a
    rst $08
    ccf
    add a
    ld a, a
    add b
    ld a, a
    jp nc, $793d

    cp $7c
    rst $38
    cp $fd
    db $ed
    rst $38
    call $fdff
    rst $08
    call z, Call_06f_7cfb
    ei
    db $fc
    ei
    rst $10
    ldh [rNR30], a
    call nz, Call_000_136c
    rst $18
    inc hl
    ld [hl], a
    rlca
    xor a
    ld e, a
    sbc e
    ld a, a
    db $d3
    ccf
    adc $3f
    or h
    ld e, $a7
    rra
    add a
    ccf
    and a
    ld e, a
    rst $08
    ccf
    rst $28
    rra
    ld e, l
    cp a
    cp a
    ld a, a
    rst $38
    rst $38
    adc a
    ld a, a
    inc sp
    rst $18
    adc [hl]
    pop af
    ld c, e
    ldh a, [rNR34]
    pop af
    call nc, $cdea
    ld a, [$ffb6]
    dec d
    rst $38
    inc de
    rst $38
    or $3b
    sbc d
    ld a, [hl]
    ld a, a
    cp $6f
    rst $38
    ld e, a
    cp a
    sbc [hl]
    ccf
    cp a
    db $fc
    rst $38
    db $fc
    ld sp, hl
    rst $38
    rst $38
    ei
    ei
    rst $38
    rst $30
    rst $38
    rst $30
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
    call $c5f3
    ei
    call $c2f3
    rst $38
    pop de
    rst $28
    add d
    rst $38
    adc h
    rst $30
    inc l
    rst $10
    ld a, h
    add a
    ld h, h
    sbc a
    nop
    rst $38
    ld c, b
    cp a
    ldh [$1f], a
    ret nc

    ccf
    ld [hl-], a
    db $fd
    or d
    ld e, l
    sub b
    ld a, a
    and b
    ld a, a
    dec b
    ld a, [$ff20]
    inc b
    ei
    ld b, e
    db $fd
    ld bc, $72ff
    db $fd
    ld bc, $0dff
    rst $30
    add e
    db $fd
    adc b
    rst $30
    ld [hl+], a
    db $fd
    sbc c
    ld h, a
    ld e, $e1
    sbc $f7
    ld b, e
    cp a
    ld c, $ff
    rlca
    rst $38
    rlca
    rst $38
    rla
    rst $28
    sub c
    ld l, a
    db $10
    rst $38
    ld e, a
    cp a
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
    jr nz, jr_06f_6913

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_06f_6923

    ld a, [hl+]
    dec hl
    dec hl
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_06f_6935

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $2b
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    scf
    jr c, jr_06f_694c

jr_06f_6913:
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    ld b, c
    nop
    ld b, d

jr_06f_6923:
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    dec hl
    dec hl
    dec hl
    ld b, a
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h

jr_06f_6935:
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
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

jr_06f_694c:
    dec hl
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
    adc c
    adc d
    adc e
    adc h
    adc l
    nop
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
    dec hl
    dec hl
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
    dec hl
    inc l
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
    add $2b
    dec hl
    dec hl
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
    nop
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
    ld bc, $0000
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
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
    inc bc
    inc bc
    inc bc
    ld bc, $0000
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0601
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
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
    rlca
    rlca
    rlca
    rlca
    inc bc
    ld bc, $0102
    ld bc, $0001
    nop
    ld bc, $0506
    dec b
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0506
    ld [bc], a
    ld [bc], a
    ld bc, $0303
    inc bc
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $4100
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    rlca
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fd
    ld hl, sp-$01
    jp c, $e2ed

    sbc l
    ld [c], a
    db $dd
    set 6, a
    rst $30
    rst $38
    cp e
    rst $38
    rst $38
    rst $38
    rst $38
    cp $7d
    cp $4e
    rst $38
    ld d, a
    xor $0f
    or $07
    cp $be
    ld e, a
    cp [hl]
    ld a, a
    db $fc
    rst $38
    call z, $fafb
    rst $38
    rst $10
    cp a
    ei
    cpl
    xor h
    ld a, e
    or h
    ld a, a
    db $ec
    ld a, a
    ld a, a
    rst $38
    cp [hl]
    rst $38
    ccf
    rst $18
    sbc e
    rst $38
    ld a, e
    rst $38
    jp nc, Jump_06f_7bfe

    rst $38
    ld l, e
    rst $38
    ld h, b
    cp l
    add hl, hl
    rst $38
    ld hl, sp-$01
    ld l, e
    rst $38
    db $eb
    ld a, a
    db $eb
    ld a, e
    db $eb
    ei
    db $ed
    db $fd
    inc a
    db $fc
    ccf
    rst $38
    xor [hl]
    cp $ab
    rst $38
    cp d
    rst $38
    ld l, [hl]
    rst $38
    db $fc
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
    ld [hl], l
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    ld l, e
    ld l, e
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    or a
    or a
    ei
    ei
    cp a
    cp a
    ld e, a
    ld e, a
    rst $28
    rst $28
    rst $38
    rst $38
    rst $08
    rst $18
    rst $38
    rst $38
    ld a, e
    ld a, e
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    ei
    ei
    ld sp, hl
    ld sp, hl
    jp c, $e2da

    ld [c], a
    ret c

    ret c

    db $fc
    db $fc
    cp $fe
    db $76
    db $76
    ld a, [$f4fa]
    db $f4
    inc d
    inc d
    or $f6
    and $e6
    ld [c], a
    ld [c], a
    ld a, [$bafa]
    cp d
    ld a, [c]
    ld a, [c]
    ld a, b
    ld hl, sp-$48
    ld hl, sp+$1c
    inc a
    ld [$0018], sp
    nop
    ld bc, $0001
    nop
    ld de, $1a11
    ld a, [de]
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld h, d
    ld h, d
    ld b, b
    ld b, b
    ld bc, $0601
    ld b, $00
    nop
    add b
    add b
    nop
    nop
    ld [$0e08], sp
    ld c, $0d
    dec c
    ld bc, $f701
    rst $38
    rst $38
    rst $38
    push af
    rst $38
    rst $10
    rst $38
    db $fd
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    ld a, a
    rst $38
    ld hl, sp-$01
    ld sp, hl
    rst $30
    ret nz

    rst $38
    add c
    ld a, a
    ld de, $87ef
    ld a, a
    ld l, a
    sbc a
    rra
    rst $38
    ld a, [hl]
    rst $38
    cp $f3
    call Call_000_2bf7
    rst $18
    inc b
    rst $38
    pop hl
    ld a, a
    db $10
    rst $38
    add d
    db $fd
    and b
    rst $18
    add c
    cp $82
    rst $38
    inc l
    ei
    ld [$2cff], sp
    rst $38
    and b
    ld a, a
    adc h
    ld a, e
    add hl, hl
    sbc $d0
    xor a
    jp nc, $94bf

    ei
    ld h, l
    jp c, $f75a

    ld a, a
    push hl
    ldh a, [$ef]
    ld a, [c]
    db $fc
    ld sp, hl
    rst $30
    db $db
    rst $18
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sub $f7
    ld a, [$a7ff]
    cp a
    ld [$9cff], a
    rst $38
    and a
    rst $38
    reti


    rst $38
    sbc a
    rst $38
    ld d, e
    ld a, a
    dec hl
    ccf
    ccf
    ccf

Call_06f_6cc2:
    cp l
    cp l
    rst $18
    rst $18
    rst $18
    rst $18
    push bc
    rst $08
    xor a
    rst $28
    rst $20
    rst $20
    di
    di
    ld [hl], c
    ldh a, [$f0]
    pop af
    ld [hl], c
    pop af
    ret z

    add sp, -$44
    cp h
    cp $fe
    cp a
    cp a
    rst $38
    rst $38
    ld sp, hl
    ld sp, hl
    db $fc
    db $fc
    rst $38
    rst $38
    db $fc
    db $fc
    cp $fe
    db $fd
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    ld a, b
    ld a, b
    ldh a, [$f0]
    ldh a, [$f0]
    sub b
    sub b
    add b
    add b
    ret nz

    ret nz

    or b
    or b
    jr nz, jr_06f_6d22

    ret nz

    ret nz

    ld b, b
    ld b, b
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
    nop
    nop
    nop
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
    ld [$0008], sp
    nop

jr_06f_6d22:
    nop
    nop
    nop
    nop
    db $10
    stop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    db $10
    db $10
    ld c, b
    ld c, b
    adc b
    adc b
    adc b
    adc b
    ld [$0008], sp
    nop
    nop
    nop
    inc d
    inc d
    inc b
    inc b
    inc c
    inc c
    inc c
    inc c
    ld [$4808], sp
    ld c, b
    inc c
    inc c
    inc b
    inc b
    db $fd
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    push af
    rst $38
    ei
    rst $38
    rst $28
    rst $38
    ld [hl], l
    rst $38
    ld a, a
    rst $38
    rst $28
    rst $38
    db $fd
    rst $38
    rst $08
    rst $38
    rst $20
    rst $18
    jp z, $f2ff

    rst $38
    sub h
    rst $38
    add e
    cp $45
    ei
    ld b, d
    rst $38
    ld sp, $80ee
    rst $38
    ld b, c
    cp $13
    db $fc
    ld [de], a
    db $ed
    db $10
    rst $28
    ld de, $60ee
    sbc a
    ret nz

    ccf
    dec c
    di
    ld [$28f7], sp
    rst $30
    ld b, $f9
    xor c
    rst $10
    ld a, [bc]
    db $fd
    ld b, c
    rst $38
    adc e
    rst $38
    ld h, a
    rst $38
    cpl
    rst $38
    ld e, a
    rst $38
    ld c, [hl]
    rst $38
    rra
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    di
    di
    ld [hl], h
    rst $30
    ld b, d
    rst $08
    add hl, bc
    rst $08
    di
    di
    ei
    ei
    ei
    ei
    db $ed
    db $fd
    db $fc
    db $fc
    call c, $e9fc
    ld sp, hl
    reti


    ei
    xor [hl]
    xor $d8
    ret c

    ld c, a
    rst $18
    scf
    or a
    ld sp, hl
    cp c
    ld bc, $70e1
    ldh a, [$d8]
    ret c

    add $c6
    ld d, b
    ret nc

    inc l
    db $ec
    sub $d6
    jp nc, Jump_06f_74d2

    ld [hl], h
    add sp, -$18
    ld a, b
    ld hl, sp-$40
    ret nz

    ld b, b
    ld b, b
    jr nc, jr_06f_6e18

    ret nz

    ret nz

    add d
    add d
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

jr_06f_6df6:
    add b
    add b
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
    nop
    nop
    nop
    add b
    add b
    nop
    nop
    nop
    nop

jr_06f_6e18:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    db $fc
    rst $38
    db $d3
    db $fc
    and l
    cp $b5
    ld a, [$ffb0]
    ld a, [$faff]
    rst $38
    ei
    rst $38
    set 7, a
    db $f4
    rst $38
    sub d

jr_06f_6e45:
    rst $38
    sub c
    rst $38
    set 7, [hl]
    ld c, b
    rst $38
    ld bc, $45ff
    ld a, [$fa07]
    ld [de], a

jr_06f_6e53:
    db $ed
    rst $08
    jr nc, jr_06f_6df6

    ldh [$3f], a
    ret nz

    dec c
    ld a, [c]
    ld [c], a
    db $fd
    xor c
    ld d, [hl]
    ld [de], a
    db $ed
    ld h, b
    sbc a
    jr nz, jr_06f_6e45

    xor b
    ld d, a
    ld bc, $02ff
    rst $38
    ld a, [de]
    rst $38
    and l
    rst $38
    scf
    rst $38
    xor $f7
    ld sp, hl
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$fefe]
    cp $f5
    rst $30
    ld [$eaee], a
    cp $dd
    db $fd
    dec hl
    ei
    rla
    rst $30
    rst $08
    rst $08
    rst $18
    rst $18
    ld d, a
    ld [hl], a
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
    ld a, a
    rst $38
    ld e, l
    db $dd
    ld a, a
    rst $38
    rst $38
    rst $38
    or l
    push af
    ld a, h
    inc a
    ld sp, $5d71
    ld a, l
    db $10
    jr nc, jr_06f_6ec7

    jr c, @+$32

    jr nc, jr_06f_6e53

    and b
    nop
    nop
    nop
    nop
    db $10
    db $10
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra

jr_06f_6ec7:
    ld a, a
    rra
    ld a, a
    rrca
    ccf
    rrca
    ccf
    rrca
    ccf
    rlca
    ccf
    rlca
    rra
    rlca
    rra
    inc bc
    rra
    inc bc
    rrca
    inc bc
    rrca
    ld bc, $010f
    rlca
    ld bc, $0007
    rlca
    nop
    inc bc
    nop
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
    jr nc, @-$0f

    rlca
    rst $38
    sbc a
    ld a, a
    ld a, [hl]
    rst $38
    ld e, a
    rst $38
    cp d
    rst $38
    rst $30
    rst $38
    pop af
    rst $38
    ld a, l
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
    rst $30
    rst $30
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or a
    or a
    rst $38
    rst $38
    rst $38
    rst $38
    or $f6
    or [hl]
    or [hl]
    ld [hl], c
    pop af
    ldh a, [$f0]
    sub $d6
    ldh [$e0], a
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
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_06f_6f72

    ld h, b
    ld h, b
    nop
    nop
    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    cp $ff
    cp $fe
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

jr_06f_6f72:
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld a, e
    db $fc
    ld a, a
    ldh a, [$5f]
    ldh [$38], a
    rst $00
    inc bc
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    cp a
    ld a, a
    cp a
    ld a, a
    rra
    ld a, a
    sbc a
    ld a, a
    rra
    ccf
    adc a
    ccf
    cpl
    rra
    add a
    rra
    ld b, a
    rra
    rst $20
    rra
    rst $20
    rra
    rst $30
    rrca
    rl a
    rst $20
    rrca
    di
    rrca
    di
    rlca
    di
    rrca
    di
    rrca
    ei
    dec b
    ei
    dec h
    rst $38
    ld bc, $2c2c
    ldh a, [$f0]
    ld b, b
    ld b, b
    add c
    add c
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
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, $119f
    xor a
    pop de
    ld l, a
    pop af
    ld l, a
    or c
    ld l, a
    add c
    ld e, a
    and c
    ld a, [hl]
    ld l, b
    or a
    ld hl, sp-$49
    ret c

    or a
    jr nz, jr_06f_7035

    ret nc

    rst $38
    call nc, $ccfb
    ei
    call z, $c0fb
    rst $30
    add sp, -$01
    ld [$c6fd], a
    db $fd
    ld a, $c5
    cp $01
    cp $01
    ret nz

    ccf
    ld [de], a
    rst $38
    add sp, -$13
    ld a, [$f3ff]
    rst $30
    rst $10
    rst $10
    rst $30
    rst $30
    db $fc
    cp $fd
    rst $38
    db $fd
    rst $38
    ei
    ei
    ei
    ei
    cp $ff
    rst $30
    rst $30
    push af
    push af
    db $fd
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$f3fa]
    di
    rst $38
    rst $38
    rst $30
    ld hl, sp-$11
    ldh a, [$df]
    ldh [$bc], a
    jp $ff1f


    ldh [$e0], a
    add b
    add b
    ret nz

jr_06f_7035:
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ldh a, [$f0]
    ldh [$e0], a
    ld h, b
    ld h, b
    ldh a, [$f0]
    ld [hl], b
    ld [hl], b
    jr nz, jr_06f_7066

    ldh [$e0], a
    and b
    and b
    jr nz, jr_06f_706d

    ld de, $1412
    rla
    jr nz, jr_06f_7072

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    db $e3
    inc e
    db $e3
    inc e
    db $e3

jr_06f_7066:
    inc e
    db $e3
    sbc [hl]
    pop hl
    adc h
    di
    adc [hl]

jr_06f_706d:
    pop af
    adc h
    di
    adc [hl]
    pop af

jr_06f_7072:
    adc $f1
    adc $f1
    add $f9
    rst $00
    ld hl, sp+$46
    ld sp, hl
    ld b, a
    ld hl, sp+$46
    ld sp, hl
    ld h, a
    ld hl, sp+$67
    ld hl, sp+$67
    ld hl, sp+$63
    db $fc
    inc hl
    db $fc
    inc bc
    call c, $fc23
    inc sp
    db $fc
    inc sp
    db $fc
    ld hl, $01ee
    xor $09
    xor $19
    cp $1a
    rst $38
    ld [de], a
    rst $30
    ld d, $f7
    sub [hl]
    rst $30
    add a
    rst $30
    rrca
    ld a, a
    set 7, e
    set 7, e
    db $db
    ei
    set 7, e
    daa
    cp a
    ld h, l
    db $fd
    ld a, l
    db $fd
    xor l
    db $fd
    db $dd
    dec a
    db $ed
    dec e
    call $fd3d
    db $fd
    ld a, [hl]
    ld a, [hl]
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld d, $16
    rlca
    rlca
    ld b, $06
    rlca
    rlca
    ld b, $06
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    ld [hl+], a
    ld a, [hl]
    ld a, [hl]
    add d
    ldh a, [$0e]
    adc b
    ld a, b
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
    inc c
    rrca
    rrca
    db $10
    jr jr_06f_711b

    ld b, [hl]
    ld a, [hl]
    ld h, b
    ld h, b
    nop
    nop
    nop

Call_06f_70fb:
    nop
    nop
    nop
    nop
    nop
    ld bc, $0701
    inc b
    dec bc
    inc c
    ld bc, $080f
    ld [$0000], sp
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop

jr_06f_711b:
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $2401
    inc h
    inc h
    inc h
    add hl, bc
    add hl, bc
    dec de
    dec de
    dec bc
    dec bc
    rlca
    rlca
    rlca
    rlca
    rla
    rla
    ldh a, [rIE]
    or b
    rst $38
    set 7, h
    and c
    cp $82
    db $fd
    jp $e3fc


    db $fc
    and l
    ld a, [$fc0b]
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rrca
    db $f4
    dec c
    or $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $87
    ld a, d
    inc bc
    cp $83
    ld a, [hl]
    inc de
    cp $83
    ld a, [hl]
    ld [bc], a
    rst $38
    add d
    ld a, a
    sub d
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    ld [$08ff], sp
    rst $38
    nop
    rst $38
    ld bc, $11ff
    rst $38
    dec c
    rst $38
    add hl, de
    rst $38
    dec d
    rst $38
    dec d
    rst $38
    dec e
    rst $38
    sub l
    rst $38
    sbc l
    rst $38
    sbc l
    rst $38
    adc [hl]
    rst $38
    adc a
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    cp a
    cp a
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
    ccf
    ccf
    dec de
    dec de
    rra
    rra
    dec e
    dec e
    inc e
    inc e
    inc e
    inc e
    jr jr_06f_71e4

    jr jr_06f_71e6

    jr jr_06f_71e8

    nop
    nop
    nop
    nop
    nop
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
    add b
    nop
    add b

jr_06f_71e4:
    nop
    nop

jr_06f_71e6:
    nop
    nop

jr_06f_71e8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    ret nc

    ret nz

    jr nz, jr_06f_7215

    ldh [$80], a
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    ld h, b
    sub b
    ret nz

    jr nc, jr_06f_7245

    ret nz

    nop
    nop
    nop
    nop
    jr nz, jr_06f_7244

    inc a
    ld b, h
    ld l, b
    sbc b
    nop
    add b
    nop
    nop
    nop

jr_06f_7215:
    inc e
    jr jr_06f_723c

    nop
    ld [hl], b
    nop
    nop
    nop
    ld c, $0c
    ld [de], a
    rst $00
    rst $38
    ld hl, sp-$01
    pop af
    ld hl, sp-$34
    di
    xor h
    rst $38
    rst $28
    ld hl, sp+$44
    ei
    add l
    cp $fc
    nop
    cp $00
    db $fc
    ld [$06fe], sp
    db $fc
    ld b, $fb
    dec d

jr_06f_723c:
    di
    rra
    db $eb
    scf
    rst $00
    rst $38
    rst $08
    ccf

jr_06f_7244:
    sbc a

jr_06f_7245:
    ld a, a
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
    ld d, e
    ld a, a
    db $d3
    rst $38
    db $d3
    rst $28
    db $d3
    rst $28
    db $d3
    rst $38
    pop de
    rst $38
    pop bc
    ld a, a
    ld b, c
    rst $38
    ld bc, $09bf
    cp a
    add hl, bc
    cp a
    add hl, bc
    or a
    add hl, bc
    cp a
    ld c, c
    cp $4b
    db $fc
    bit 7, h
    xor e
    inc a
    add sp, $7f
    jp hl


    ld a, a
    jp hl


    ld a, a
    jp hl


    ld a, a
    jp hl


    ld a, a
    db $eb
    ld a, a
    jp hl


    ld a, a
    db $eb
    ld a, a
    db $eb
    ccf
    db $eb
    ccf
    xor e
    ld a, a
    xor e
    ld a, a
    xor e
    ld a, a
    xor c
    ld a, a
    xor e
    ld a, a
    xor e
    ld a, a
    sbc e
    ld e, a
    xor c
    ld a, a
    dec e
    rst $18
    add hl, hl
    rst $38
    dec e
    sbc $1b
    call c, $fc3f
    ld a, $fd
    cp a
    rst $38
    cp [hl]
    cp $be
    cp $bf
    rst $38
    cp [hl]
    cp $be
    cp $3e
    ld a, [hl]
    cp $fe
    xor $ee
    xor $ee
    xor $ee
    ld [$efea], a
    rst $28
    ld [$e1eb], a
    ld [c], a
    pop hl
    ld [c], a
    db $e3
    db $e3
    ldh [$e0], a
    and b
    and b
    and b
    and b
    jr nz, jr_06f_72ec

    jr nz, jr_06f_72ee

    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld [bc], a
    ld bc, $0202
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
    ld bc, $0201
    inc bc
    inc bc
    ld [bc], a

jr_06f_72ec:
    ld [bc], a
    inc bc

jr_06f_72ee:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    inc bc
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0001
    ld bc, $0000
    nop
    nop
    ld bc, $0001
    ld bc, $0100
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $fe00
    rst $38
    db $fc
    rst $38
    rst $38
    cp $24
    rst $38
    ld hl, $01fe
    cp $01
    cp $81
    ld a, [hl]
    cp $01
    ld a, [hl]
    nop
    ld a, [hl]
    inc bc
    dec de
    ld h, l
    ld [hl], e
    cpl
    rst $28
    rst $30
    rst $38
    rst $28
    rst $38
    rst $38
    ld bc, $01fe
    cp $01
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
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    jp $03fc


    db $fc
    db $fc
    inc bc
    rst $38
    nop
    cp $01
    nop
    rst $38
    nop

jr_06f_7363:
    rst $38
    cp b
    rst $38
    ld bc, $03fe
    db $fc
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
    inc bc
    db $fc
    ld a, e
    db $fc
    ld a, e
    db $fc
    ei
    db $fc
    ei
    db $fc
    di
    db $fc
    di
    db $fc
    push af
    ld a, [$f8e7]
    ld a, [c]
    db $fd
    add hl, bc
    cp $fc
    inc bc
    rst $38
    nop
    di
    rrca
    ld a, [hl]
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
    ld a, a
    ld a, a
    rrca
    rrca
    rrca
    rrca
    ld e, $1e
    rra
    rra
    inc c
    inc c
    sub h
    db $f4
    ld [c], a
    ld e, $f2
    ld c, $10
    ldh a, [rP1]
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
    nop
    nop
    nop

jr_06f_73c2:
    add b
    add b
    ld [$f4f8], sp
    inc c
    jr jr_06f_73c2

    add b
    add b

jr_06f_73cc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or b
    ldh a, [$e0]
    jr jr_06f_7363

    ld a, b
    ld b, b
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld h, b
    sub b
    add sp, $18
    jr nz, jr_06f_73cc

    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    ldh a, [$e0]
    db $10
    ld b, b

jr_06f_73f7:
    ret nz

    db $10
    db $10
    ld [$1008], sp
    ldh a, [$c0]
    jr nz, jr_06f_73f7

    rst $38
    pop af
    rst $38
    rla
    rst $38
    rra
    ccf
    add hl, sp
    rst $38
    ld bc, $ecff
    rra
    ld d, b
    ccf
    rst $38
    nop
    ccf
    jr nz, @+$41

    nop
    rst $38
    add b
    ccf
    jr nz, jr_06f_745a

    inc e
    ccf
    ld [hl-], a
    ld [hl+], a
    dec a
    add hl, bc
    ld [hl], $01
    ld a, $d4
    db $eb
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
    ccf
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$bf], a
    ldh [$7f], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$7f], a
    ret nz

    ld a, a
    ldh [$7f], a
    ret nz

jr_06f_745a:
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    rst $38
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    nop
    ret nz

    nop
    ret nz

    inc bc
    add c
    inc bc
    add c
    inc bc
    add b
    ld b, l
    add b
    ld [hl], l
    add b
    ld sp, hl
    ret nz

    ccf
    rlca
    ccf
    inc bc
    ld a, a
    ld b, e
    ld a, a
    ld h, c
    rst $38
    dec b
    rst $38
    ld bc, $00ff
    rst $38
    nop
    add b
    ld a, a
    adc a
    ld a, a
    rst $18
    ccf
    rst $08
    ccf
    rst $00
    ccf
    di
    rrca
    di
    rrca
    ld sp, hl
    rlca
    ld a, a
    ld a, b
    ccf
    jr c, jr_06f_74c4

    inc e
    cpl
    inc l
    adc a
    adc [hl]
    rrca
    rrca
    ld b, a
    ld b, a
    rla
    rla
    rlca
    rlca
    inc de
    inc de
    inc bc
    inc bc
    ld bc, $2101
    ld hl, $0909
    nop
    nop
    ld b, d
    ld b, d
    inc d
    inc d
    dec b
    dec b

jr_06f_74c4:
    ld de, $0111
    ld bc, $0808
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop

Jump_06f_74d2:
    nop
    nop
    nop

jr_06f_74d5:
    nop
    add b
    add b
    nop
    nop
    add b
    add b
    add b
    add b
    ldh a, [$f0]
    ld h, e
    rst $38
    jr c, @+$01

    inc c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr jr_06f_74d5

    nop
    rst $38
    rst $38
    sbc h
    ld a, a
    db $e4
    cpl
    call nc, $f807
    add a
    rst $38
    pop hl
    sbc $f4
    ei
    ld sp, hl
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
    rrca
    rst $38
    nop
    rst $38
    add sp, -$01
    ld [hl], a
    rst $38
    sub a
    rst $38
    inc hl
    rst $38
    ld de, $0bff
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
    stop
    db $10
    jr nc, jr_06f_7559

    jr c, @+$22

    jr c, jr_06f_7559

    ld a, h
    ld [hl+], a
    ld a, [hl]
    jr nz, jr_06f_7588

    ld b, c
    ld l, a
    ld b, b
    ld l, e
    ld b, d
    ld c, l
    nop
    ld b, h
    ld b, b
    ld b, h
    nop
    call nz, $c200
    nop
    jp nz, $8288

    ldh [$82], a
    add b
    add c
    add d
    add c
    call c, $e081
    add b
    ret nz

    add b
    add b

jr_06f_7559:
    ret nz

    ret nz

    ldh a, [$60]
    ld hl, sp+$38
    ld e, h
    inc l
    ld c, a
    swap e
    ld c, a
    dec [hl]
    rst $28
    ld d, b
    rst $20
    ld a, c
    rst $10
    ld c, d
    ld bc, $0002
    inc b
    reti


    ld h, $8f
    ld [hl], d
    db $ec

jr_06f_7575:
    inc de
    ld h, a
    add hl, de
    and $19
    db $e3
    inc e
    ld sp, $d10e
    ld l, $3c
    ei
    ld a, [hl]
    ld sp, hl
    ld a, [$7efd]
    db $fd

jr_06f_7588:
    db $fc
    rst $38
    ld a, [$52fb]
    db $d3
    pop bc
    ld b, c
    ldh [$60], a
    add b
    ld b, b
    and b
    ld h, b
    add b
    ld h, b
    ret nz

    jr nz, jr_06f_7575

    ld a, [hl-]
    ld [c], a
    ld [de], a
    jp hl


    add hl, de
    rst $30
    rrca
    di
    rrca
    ei
    rlca
    ei
    rlca
    ld sp, hl
    rlca
    db $fd
    inc bc
    cp $01
    cp $01
    scf
    ld [hl], $bb
    cp e
    dec de
    dec de
    dec bc
    dec bc
    ld b, d
    ld b, d
    ld bc, $5101
    ld d, c
    ld d, b
    ld d, b
    inc b
    inc b
    jr nz, jr_06f_75e4

    ld [hl+], a
    ld [hl+], a
    ld [bc], a
    ld [bc], a
    jr nz, jr_06f_75ea

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
    add b
    add b
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop

jr_06f_75e4:
    nop
    nop
    sub b
    sub b
    ld a, [c]
    ld a, [c]

jr_06f_75ea:
    nop
    nop
    ret nz

    ret nz

    cp $fe
    adc l
    rst $38
    inc h
    rst $38
    add d
    ld a, a
    inc bc
    rst $38
    ld b, e
    cp a
    and c
    ld e, a
    add b
    ld a, a
    ret nz

    ccf
    ld a, a
    and b
    ccf
    ret nz

    ccf
    ret nc

    sbc a
    ld [c], a
    sbc a
    db $e4
    rst $08
    ld a, [c]
    rst $00
    ld sp, hl
    rst $20
    ld a, [$ffbf]
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
    ld a, a
    rst $38
    inc bc
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
    rst $38
    nop
    rst $38
    nop
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
    ld b, b
    ld h, b
    ret nz

    nop
    ret nz

    jr nz, @+$62

    db $10
    ld a, b
    inc c
    jr c, jr_06f_7659

    jr jr_06f_7654

    jr jr_06f_76c4

    inc c
    add d
    ld d, $00
    rlca

jr_06f_7654:
    ld bc, $0083
    add c
    nop

jr_06f_7659:
    add c
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ldh [$90], a
    ldh [$c4], a
    ldh a, [$67]
    cp b
    sbc e
    inc e
    db $ec
    ld d, a
    cpl
    dec de
    xor b
    rra
    xor h
    dec de
    db $fc
    dec bc
    cp [hl]
    dec b
    xor [hl]
    dec b
    cp [hl]
    push bc
    ld [hl], $c5
    rst $18
    ld h, d
    cp a
    ld h, d
    ei
    ld [hl+], a
    ld l, a
    sub c
    ld c, e
    sub c
    ld d, c
    adc c
    rst $00
    ld [$04e9], sp
    ld [hl], e
    add h
    ld [hl], a
    add d
    pop de
    ld [hl+], a
    ld l, d
    ld de, $1128
    dec h
    jr jr_06f_770d

    inc c
    ld e, $00
    sbc a
    nop
    dec l
    cpl
    ld b, a
    ld b, a
    rrca
    ld c, $4b
    ld c, d
    ld a, e
    ld a, d
    ei
    ld a, [$e6e7]
    rst $28
    db $ed
    db $ec
    db $ec
    inc e
    sbc h
    ld e, a
    db $db
    cp a
    ld [hl], a
    adc a
    ld [hl], a
    db $db
    daa
    ld hl, sp+$07
    cp $01
    ld e, d
    ld e, d
    ld e, d
    ld e, d

jr_06f_76c4:
    rrca
    rrca
    dec c
    dec c
    ld c, l
    ld c, l
    ld c, h
    ld c, h
    inc c
    inc c
    ld c, b
    ld c, b
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
    ret nz

    ret nz

    ld b, b
    ld b, b
    jr nz, jr_06f_7700

    and b
    and b
    sub b
    sub b
    ret nz

    ret nz

    ldh [$e0], a
    ret nz

    ret nz

    and b
    and b
    ldh [$e0], a
    ldh [$e0], a
    cp $ff
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

jr_06f_7700:
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rla
    rst $38
    nop

jr_06f_770d:
    rst $38
    nop
    rst $38
    cp l
    rst $38
    rst $18
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    scf
    rst $38
    jr nz, @+$01

    inc d
    rst $38

jr_06f_771e:
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$78
    add a
    add b
    ld a, a
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    nop
    add b
    ld b, b
    ret nz

    jr nz, jr_06f_771e

    nop
    ld h, b
    db $10
    ld [hl], b
    nop
    jr c, jr_06f_774d

    jr jr_06f_774b

    inc e
    ret nz

    inc c
    ld a, [c]

jr_06f_774b:
    ld b, $d9

jr_06f_774d:
    rlca

jr_06f_774e:
    ld b, b
    add e
    ld a, a
    ld h, c
    sbc a
    sub b
    rst $28
    jr z, jr_06f_774e

    ld b, $f9
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    add b
    ld a, a
    ldh [rNR33], a
    or c
    inc c
    or a
    ld [$029d], sp
    rst $00
    sub b
    and $91
    ld a, [c]
    add c
    db $db
    add e
    rst $10
    ld c, e
    rst $30
    ld c, [hl]

jr_06f_7776:
    ld c, a
    add $a7
    and $ff
    db $e4
    rst $38
    ld l, h

jr_06f_777e:
    rst $38
    ld l, h
    ld a, a
    jr c, jr_06f_7802

    jr nc, jr_06f_7776

    jr nc, jr_06f_777e

    jr nz, jr_06f_77a8

    ldh [rIF], a
    ldh a, [$f8]
    ld b, $34
    ld [$1010], sp
    jr nc, jr_06f_77b4

    db $fd
    call Call_000_1efd
    db $fc
    sbc a
    ld a, [$f6bf]
    rst $38
    push hl
    rst $38
    inc e
    rst $38
    add h
    ld a, a
    add $3f
    ld a, [c]
    rrca

jr_06f_77a8:
    pop af
    rrca
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    ld a, a
    ld a, [hl]
    rra
    rra

jr_06f_77b4:
    ld b, l
    ld b, l
    add hl, hl
    add hl, hl
    jr nz, jr_06f_77da

    nop
    nop
    ld hl, $0921
    add hl, bc
    di
    rst $38
    rst $38
    rst $38
    ei
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
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_06f_77da:
    rst $38
    rst $38
    rrca
    rst $38
    ld bc, $e0ff
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38

jr_06f_77e7:
    rst $38
    ccf
    rst $38
    cpl
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    jp nc, $f4ff

    rst $38
    ld [hl], c
    cp $3e
    pop bc
    ret nz

    ccf
    ld e, c
    rst $38
    cpl
    rst $38
    inc sp
    rst $38
    ld e, a
    rst $38

jr_06f_7802:
    ld e, $ff
    ld a, $ff
    ld h, $ff
    ld b, $ff
    inc b
    rst $38
    ld bc, $03fe
    db $fc
    inc bc
    db $fc
    ld [bc], a
    db $fd
    inc bc
    rst $38
    ld a, [bc]
    rst $30
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    adc b
    add b
    ld b, h
    add h
    ld c, [hl]
    ldh [$3e], a
    ld h, b
    rra
    ld sp, $f019
    adc b
    ldh a, [rNR42]
    jr c, jr_06f_78a1

    sbc a
    cp [hl]
    ld de, $20f3
    or a
    ld h, b
    or $61
    ld a, h
    jp $84cb


    or $88
    cp $e6
    cp [hl]
    adc [hl]
    ld a, c
    ld a, c
    db $fd
    cp l
    rst $28
    ld l, a
    call $d7cd
    rst $10
    dec hl
    jr z, jr_06f_77e7

    sub b
    ret c

    ret nc

    ldh a, [$e0]
    ldh [$e0], a
    add b
    add b
    inc bc
    inc bc
    rrca
    rrca
    inc a
    inc a
    ld b, b
    ld b, b
    add [hl]
    add $67
    and $f7
    rst $30
    rst $38
    ld a, a
    ld a, a
    cp a
    ccf
    rst $18
    ld a, a
    rst $18
    rst $38
    rst $28
    rst $08
    rst $30
    set 7, a
    adc b
    rst $38
    ld [hl-], a
    db $fd
    ld [hl], h
    ei
    ld bc, $04fe
    ei
    rst $38
    nop
    rst $38
    ld bc, $007f
    ld a, a
    ld bc, $003f
    ccf
    nop
    ccf
    nop
    ccf
    nop
    rra
    nop
    rra
    ld [bc], a
    dec e
    nop
    rra
    nop
    rra
    nop
    rrca
    nop
    rrca
    ld b, $07
    ld [bc], a
    rlca

jr_06f_78a1:
    nop
    rrca
    nop
    rrca
    nop
    rrca
    ld bc, $010f
    rrca
    nop
    rrca
    nop
    rra
    ld bc, $001d
    rra
    inc bc
    rra
    nop
    rra
    ld bc, $003f
    ccf
    nop
    ld a, a
    nop
    ld a, a
    jr z, @+$01

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
    cp $ff
    rra
    rst $38
    ld [bc], a
    rst $38
    add b
    rst $38
    db $f4
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ei
    rst $38
    db $d3
    db $fc
    db $fc
    inc bc
    nop
    rst $38
    jr c, @+$01

    jr nc, @+$01

    ld hl, sp-$01
    pop af
    rst $38
    ld [hl], c
    rst $38
    db $e3
    rst $38
    jp $2bff


    rst $18
    rlca
    rst $38
    nop
    rst $38
    sub b
    ld a, a
    sbc h
    ld a, a
    rst $30
    ccf
    cp $cf
    db $ec
    di
    di

jr_06f_7907:
    db $fc
    ld e, l
    cp $29
    cp $01
    cp $03
    db $fc
    dec c
    nop
    dec de
    nop
    ld b, $02
    inc c
    inc b
    ret c

    ld [$8090], sp
    ret nc

    nop
    ld [hl], b
    jr nz, jr_06f_7907

    add hl, de
    call nc, $ef37
    ld l, $f9
    add hl, sp
    or $f6
    rst $30
    rst $30
    rst $38
    rst $38
    cp l
    cp l
    call c, Call_06f_7fdc
    ld a, h
    ld a, a
    ld a, c
    ccf
    inc sp
    cp l
    and l
    ld a, [c]
    jp nc, Jump_000_0080

    inc l
    inc l
    nop
    nop
    inc hl
    inc hl
    rrca
    rrca
    ld a, $3e
    ld a, [$e6fa]
    and $05
    dec b
    rla
    rla
    ld a, a
    ld a, e
    pop hl
    pop hl
    dec e
    dec e
    adc [hl]
    adc a
    push bc
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$f4ff], a

jr_06f_7961:
    rst $38
    adc e
    rst $38
    db $10
    rst $38
    add h
    rst $38
    jr nz, @-$1f

    inc c

jr_06f_796b:
    rst $38
    ld a, l
    rst $38
    ld c, l
    rst $38
    cp $7f
    rra
    rst $38
    add hl, de
    cp $82
    ld a, l
    ld c, d
    cp a
    ld a, [bc]
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    jr nz, jr_06f_7961

    add b
    ld a, a
    ld b, $ff
    nop
    rst $38
    jr @+$01

    jr nz, jr_06f_796b

    jp nz, Jump_06f_603f

    sbc a
    inc l
    rst $18
    ld h, h
    sbc a
    nop
    rst $38
    inc b
    rst $38
    inc c
    rst $38
    adc b
    ld a, a
    ret nz

    ccf
    reti


    ccf
    add d
    ld a, a
    jr nz, @+$01

    add b
    ld a, a
    ld [de], a
    db $ed
    ld h, l
    sbc e
    add b
    rst $38
    and b
    rst $38
    ldh a, [$ef]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fd
    rst $38
    pop hl
    rst $38
    db $e3
    rst $38
    rst $00
    rst $38
    add a
    rst $38
    add a
    rst $38
    adc a
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld c, e
    cp a
    sub b
    rst $28
    ldh [rIE], a
    ld sp, hl
    cp $ff
    rst $38
    rst $18
    db $fc
    db $fc
    inc bc
    inc bc
    rst $38
    ld a, c

jr_06f_79e7:
    rst $38
    dec sp
    rst $38
    ld a, [bc]
    rst $38
    adc [hl]
    rst $38
    ld h, [hl]
    rst $38
    ldh a, [rIE]
    ei
    db $fc
    ld a, e
    db $fc
    di
    db $fd
    push hl
    ei
    db $e4
    ei
    ld [$08f7], sp
    rst $30
    db $10
    rst $28
    dec d
    rst $28
    ld [hl+], a
    db $dd
    jr nz, jr_06f_79e7

    ret nc

    ccf
    jp nz, $0c3f

    rst $38
    db $fc
    ld a, a
    ld [c], a
    ld a, a
    ret nz

    rst $38
    and b
    rst $38
    nop
    rst $38
    ld hl, $81ff
    rst $38
    add h
    rst $38
    nop
    rst $38
    add hl, bc
    rst $38
    ld bc, $00ff
    rst $38
    ret nz

    ccf
    add b
    rst $38
    db $e3
    rst $18
    rst $28
    rst $38
    ei
    sbc e
    rst $38
    ccf
    rst $18
    rst $18
    db $fd
    db $fd
    db $fd
    db $fd
    cp $fe
    pop de
    pop de
    rrca
    rrca
    ccf
    dec sp
    cp $de
    rst $20
    ld h, a
    ld a, [c]
    ld a, [c]
    add hl, hl
    add hl, hl
    ld d, $16
    ld e, a
    ld e, a
    rst $38
    ld sp, hl
    rst $38
    ccf
    add $c6
    rst $28
    rst $28
    cp $ff
    ld a, a
    rst $38
    rra
    rra
    inc c
    rrca
    ccf
    ccf
    ld hl, sp-$08
    ld e, l
    db $fd
    rra
    rst $38
    rlca
    rst $38
    daa
    rst $38
    dec de
    rst $38
    rst $00
    rst $38
    or c
    rst $38
    rst $38
    di
    nop
    rst $38
    ld a, [de]
    rst $38
    inc hl
    rst $38
    or e
    rst $38
    db $d3
    rst $38
    db $e3
    rst $38
    db $d3
    rst $28
    sub l
    db $eb
    inc sp
    rst $28
    and c
    rst $38
    and l
    ei
    ld bc, $0dff
    rst $38
    inc bc
    rst $38
    ld b, a
    cp a
    daa
    rst $18
    inc hl
    rst $18
    inc de
    rst $28
    rla
    rst $28
    scf
    rst $28
    ld [hl-], a
    rst $28
    ld c, $ff
    sbc c
    cp $3b
    rst $38
    ccf
    rst $38
    cpl
    rst $38
    dec a
    rst $38
    ld l, a
    rst $38
    nop
    rst $38
    ldh [rIE], a
    nop
    rst $38
    add h
    rst $38
    jp $c7ff


    rst $38
    sbc a
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
    ld a, a
    rst $38
    ccf
    rst $38
    add a
    rst $38
    pop hl
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    cp l
    rst $38
    cp l
    rst $38
    ld e, $ff
    ld b, $ff
    ld h, c
    sbc a
    ei
    rlca
    rrca
    rst $30
    sub a
    rst $28
    rst $28
    sbc a
    rst $38
    rra
    rst $38
    ccf
    ccf
    rst $38
    cp a
    ld a, a
    db $76
    rst $38
    ld h, a
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    ld b, e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld [hl], b
    rst $38
    jr c, @+$01

    cp h
    rst $38
    adc [hl]
    rst $38
    db $d3
    rst $28
    ld l, e
    rst $30
    inc b
    ei
    ld bc, $00fe
    rst $38
    add h
    rst $38
    add b
    rst $38
    add h
    rst $38
    ld [bc], a
    rst $38
    ld b, h
    rst $38
    ld c, b
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ld sp, hl
    rst $38
    rst $38
    rst $30
    rst $38
    sbc a
    rst $00
    rst $00
    ld b, e
    ld b, e
    sbc e
    sbc e
    set 1, e
    ld b, a
    ld b, a
    ccf
    ccf
    ccf
    dec e
    cp $ce
    rst $10
    rst $10
    rst $18
    rst $18
    di
    rst $38
    rst $30
    rst $38
    jp nz, $faff

    rst $38
    rst $28
    rst $28
    rra
    rst $38
    xor $ff
    or $ff
    rst $38
    rst $38
    db $fc
    ei
    ld l, a
    rst $20
    rst $30
    rst $38
    rst $30
    rst $38
    ld e, a
    rst $38
    sub a
    rst $38
    ld e, $ff
    ld a, $ff
    xor $ff
    cp $ff
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    cp [hl]
    rst $38
    db $f4
    rst $38
    ld hl, sp-$01
    cp $ff
    db $fc
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    and $ff
    ld [$80ff], a
    rst $38
    add c
    cp $07
    ld hl, sp-$0e
    dec c
    ld c, h
    ei
    ld [hl], b
    rst $38
    and b
    rst $38
    rst $08
    ldh a, [$97]
    ld hl, sp+$2f
    ld hl, sp+$4b
    db $fc
    ld c, l
    rst $38
    xor a
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
    ld a, [$feff]
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, b
    rst $38
    and e
    rst $38
    ld b, $ff
    rst $18
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
    db $fd
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ei
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
    ld e, a
    rst $38
    ld a, d
    rst $38
    ld e, d
    rst $38
    nop
    rst $38
    add b
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ld [hl-], a
    rst $38
    ld a, [bc]
    rst $38

Jump_06f_7bfe:
    db $10
    rst $38
    add b
    rst $38
    nop
    rst $38
    add d
    ld a, l
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
    ld [$04ff], sp
    rst $38
    xor b
    rst $38
    ld c, h
    rst $38
    add d
    rst $38
    xor h
    rst $38
    ld [hl], h
    rst $38
    add sp, -$11
    ld a, h
    ld a, a
    and $e7
    cp a
    cp a
    rst $10
    rst $10
    rst $18
    rst $18
    rrca
    rrca
    rst $38
    ld hl, sp-$01
    rst $00
    cp $7f
    db $fc
    db $fd
    ld l, [hl]
    ld l, a
    ld l, a
    ld l, a
    rst $38
    rst $38
    cp $ff
    nop
    rst $38
    add sp, -$01
    rst $28
    rst $38
    push hl
    rst $38
    or $ff
    ld [hl], $ff
    ld a, b
    rst $38
    ld a, a
    rst $38
    ld e, $ff
    cp $ff
    cp $ff
    rst $00
    rst $38
    push af
    rst $08
    rst $18
    rst $28
    rst $08
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    reti


    rst $38
    pop bc
    ld a, a
    ld b, e
    cp a
    and c
    rst $18
    ld d, e
    rst $28
    ld h, e
    rst $38
    inc sp
    rst $38
    sbc c
    rst $38
    db $fd
    ei
    and $fb
    adc c
    rst $30
    ld [bc], a
    rst $38
    dec b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $81ff
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    di
    ld [hl], e
    adc l
    db $e3
    inc e
    pop bc
    ccf
    rst $08
    ccf
    rst $38
    ld a, a
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
    inc c
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    inc c
    ld [hl+], a
    inc c
    inc c
    inc c
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_06f_7cf8

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_06f_7d08

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_06f_7d18

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
    inc c
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

jr_06f_7cf8:
    ld d, d
    ld d, e
    ld d, h

Call_06f_7cfb:
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

jr_06f_7d08:
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

jr_06f_7d18:
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
    inc c
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
    inc c
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
    jr jr_06f_7ddb

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
    jr z, jr_06f_7dfb

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, @+$33

    ld [hl-], a

jr_06f_7ddb:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101

jr_06f_7dfb:
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
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld bc, $0001
    nop
    ld bc, $0000
    nop
    ld bc, $0202
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld bc, $0202
    ld [bc], a
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0a08], sp
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ret c

    rst $38
    ld hl, sp-$01
    jp hl


    rst $38
    db $ed
    rst $38
    ld b, c
    rst $38
    ld bc, $80ff
    rst $38
    add b
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    pop hl
    rst $38
    db $e3
    rst $38
    db $eb
    rst $38
    db $e3
    rst $38
    rst $20
    rst $38
    rst $00
    rst $38
    rst $20
    rst $38
    rst $20
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
    rst $18
    rst $38
    rst $18
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38

jr_06f_7f71:
    rst $38
    rst $38
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
    db $e3
    rst $38
    jp $81ff


    rst $38
    ld b, l
    ei
    dec b
    ei
    ld c, $f1
    ld a, [bc]
    push af
    inc bc
    db $fc
    nop
    rst $38
    jr nz, jr_06f_7f71

    nop
    rst $38
    daa
    rst $38
    cp a
    rst $38
    ei
    rst $38
    ei
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    ei
    rst $38
    ldh a, [rIE]
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
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
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

Call_06f_7fdc:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
