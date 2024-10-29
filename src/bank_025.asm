SECTION "ROM Bank $025", ROMX[$4000], BANK[$25]

    add c
    ld a, c
    sbc c
    ld sp, hl
    inc [hl]
    db $f4
    or h
    db $f4
    ld h, h
    db $e4
    db $ec
    db $ec
    jp nz, $d8c2

    ret c

    db $fc
    db $fc
    ret z

    ret z

    call z, $e4cc
    push hl
    ldh a, [$f1]
    jr c, jr_025_4057

    db $10
    ld [de], a
    inc b
    ld b, $fd
    rst $38
    ld a, [$faff]
    rst $38
    ld a, [c]
    rst $38
    db $f4
    rst $38
    db $f4
    rst $38
    db $e4
    rst $38
    add sp, -$01
    ret z

    rst $38
    ret nc

    rst $38
    ret nc

    rst $38
    or b
    rst $38
    and b
    rst $38
    and b
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
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
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rlca

jr_025_4057:
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
    cp $ff
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    db $f4
    ld [c], a
    rst $38
    pop hl
    rst $38
    ldh [rIE], a
    and b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld bc, $c0ff
    cp a
    sub b
    ld a, a
    jr z, @+$01

    xor h
    ld a, a
    ld b, e
    rst $38
    dec [hl]
    rst $38
    ld de, $48ff
    cp a
    add h
    ld a, a
    reti


    cp $7d
    rst $38
    rra
    rst $38
    ld e, $ff
    ld b, $f7
    ld l, [hl]
    sbc [hl]
    ld h, a
    sbc a
    cp a
    ld b, a
    ei
    rlca
    rst $38
    inc bc
    cp e
    rst $00
    and a
    ld sp, hl
    ld [$7dfd], a
    ld a, a
    rra
    rra
    scf
    scf
    nop
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
    ld a, [de]
    inc h
    inc h
    nop
    nop
    db $fd
    rst $38
    db $fd
    rst $38
    ei
    cp $fb
    cp $f3
    cp $f7
    db $fc
    rst $30
    db $fc
    rst $30
    db $fc
    rst $28
    ld hl, sp-$31
    ld hl, sp-$21
    ld hl, sp-$21
    ldh a, [$bf]
    ldh a, [$bf]
    ldh [$bf], a
    ldh [$7f], a
    ldh [$7f], a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    rst $38
    add b
    rst $38
    add b
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
    add b
    ccf
    ret nz

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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rlca
    rst $38
    rrca
    rst $38
    rra
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
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    db $10
    rst $38
    inc d
    rst $38
    ld a, [bc]
    rst $38
    dec b
    cp $05
    cp $2f
    db $fc
    dec de
    db $fc
    dec bc
    db $fc
    rlca
    ld hl, sp+$06
    ld sp, hl
    jp z, $39f5

    or $04
    ei
    cp e
    ld b, h
    scf
    ret z

    sbc a
    ldh [$db], a
    db $f4
    pop de
    cp $f6
    rst $38
    xor e
    cp a
    db $ed
    rst $28
    ei
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
    cp [hl]
    cp [hl]
    or b
    or b
    rst $38
    rst $38
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
    ccf
    ret nz

    rrca
    ldh a, [rSB]
    cp $00
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
    cp $ff
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    cp $ff
    rst $30

jr_025_41e9:
    rst $38
    pop af
    rst $38
    ret nz

    rst $38
    add h
    rst $38
    add [hl]
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld b, $ff
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld b, b
    cp a
    db $10
    rst $28
    jr nz, jr_025_41e9

    xor h
    ld d, e
    ld d, b
    xor a
    ret c

    daa
    cp h
    ld b, e
    ld sp, hl
    ld b, $3b
    call nz, $41be
    ld c, [hl]
    or c
    cp [hl]
    ld b, c
    ld a, $c1
    sub a
    ld l, b
    rst $18
    ccf
    rst $38
    rra
    rst $28
    rra
    rst $28
    rra
    rst $18
    cpl
    inc sp
    bit 3, c
    pop hl
    sbc $fe
    cp l
    db $fd
    db $fd
    db $fd
    push af
    db $fd
    db $f4
    db $f4
    ret c

    ret c

    ret nz

    ret nz

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
    nop
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
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
    cp $ff
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
    ld a, a
    rst $38
    rra
    rst $38
    adc a
    rst $38
    rst $20
    rst $38
    ld a, l
    rst $38
    inc c
    rst $38
    rst $10
    rst $38
    rst $00
    rst $38
    rst $10
    rst $38
    ld e, a
    rst $38
    sub a
    rst $38
    set 7, a
    push af
    rst $38
    cp e
    rst $38
    rst $18
    rst $38
    ld h, a
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $00ff

jr_025_42b9:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld b, b
    rst $38
    jr nc, @+$01

    ld [$10ff], sp
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    nop
    rst $38
    jr nz, jr_025_42b9

    sub b
    ld l, a
    ld h, b
    sbc a
    xor b
    ld d, a
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
    ld sp, hl
    ld sp, hl
    ret nz

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
    cp $ff
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
    rst $38
    nop
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
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
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
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ret nc

    rst $38
    ldh a, [rIE]
    db $f4
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    db $fc
    rst $38
    cp h
    rst $38
    jr @+$01

    jr @+$01

    ld h, c
    rst $38
    ld h, e
    rst $38
    ld b, e
    rst $38
    daa
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
    ld c, $ff
    ld c, $ff
    inc d
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld l, e
    ld a, a
    adc [hl]
    adc a
    db $e3
    db $e3
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    call c, $fffc
    rst $38
    rst $38
    rst $38
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
    ret nz

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
    rlca
    rst $38
    rrca
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
    cp $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
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
    ld [bc], a
    rst $38
    dec b
    cp $20
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    add d
    rst $38
    add b
    rst $38
    add h
    rst $38
    ld [$04ff], sp
    rst $38
    nop
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
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add hl, bc
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
    inc b
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    cp $ff
    rst $08
    rst $38
    add $ff
    sbc a
    rst $38
    adc a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
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
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $08
    rst $08
    rst $28
    rst $28
    rst $08
    rst $08
    rst $10
    rst $18
    sbc e
    sbc a
    ldh [$e0], a
    ret nz

    ret nz

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
    db $fc
    rst $38
    ld hl, sp-$39
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
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
    cp $01
    cp $01
    cp $01
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
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
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
    cp $fe
    db $fc
    rst $38
    ld hl, sp-$02
    ld hl, sp-$10
    rst $38
    db $e4
    rst $38
    pop bc
    cp $c2
    db $fd
    add [hl]
    ld sp, hl
    inc bc
    db $fc
    dec bc
    db $f4
    rlca
    ld hl, sp+$0b
    db $f4
    ld c, a
    ldh a, [$c5]
    ld a, [$fc63]
    ld bc, $13fe
    db $ec
    dec a
    jp nz, $f00f

    cpl
    ret nc

    ld c, a
    or b
    rrca
    ldh a, [rTIMA]
    ld a, [$fc03]
    rlca
    ld hl, sp+$0f

jr_025_44fd:
    ldh a, [rTAC]

Call_025_44ff:
    ld hl, sp+$16
    jp hl


    ld bc, $09fe
    or $14
    db $eb
    ld d, $e9
    dec l
    jp nc, $f40b

    add hl, bc
    or $13
    db $ec
    rlca
    ld hl, sp+$0e
    pop af
    inc c
    di
    sbc h
    ld h, e
    jr @-$17

    jr nz, jr_025_44fd

    ld d, b
    xor a
    nop
    rst $38
    jr nc, @-$1f

    nop
    rst $38
    ld bc, $01fe
    cp $03
    db $fc
    dec h
    ld a, [$bb44]
    ld a, [bc]
    push af
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$01ff], sp
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
    rst $38
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
    call nc, $ceff
    cp $f0
    ldh a, [rP1]
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
    add b
    rst $38
    ldh [rIE], a
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
    rst $38
    rst $38
    sbc a
    rst $38
    rlca
    rst $38
    ld b, c
    cp a
    ld c, c
    or [hl]
    rra
    ldh [$3b], a
    call nz, $d02f
    ld l, a
    sub b
    rst $38
    nop
    sbc a
    ld h, b
    ccf
    ret nz

    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp [hl]
    ld b, c
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    push af
    ld a, [bc]
    or $09
    db $ed
    ld [de], a
    ld a, d
    add l
    ld a, [$fa05]
    dec b
    di
    inc c
    db $fc
    ld [bc], a
    ld [$f414], a
    ld a, [bc]
    db $fd

jr_025_45cb:
    ld [bc], a
    or $09
    cp a
    ld b, b
    rst $30
    ld [$14eb], sp
    db $fd
    ld [bc], a
    ld a, [$fe05]
    ld bc, $40bf
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld e, l
    and d
    ld a, [hl]
    add c
    rst $38
    nop
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$3f], a
    ret nz

    ld a, e
    add h
    rst $08
    jr nc, @-$1b

    inc e
    add c
    ld a, [hl]
    add b
    ld a, a
    jr nc, jr_025_45cb

    inc e
    rst $20
    ld [hl], d
    adc l
    ld [hl], a
    adc b
    jp $c83c


    scf
    inc c
    di
    adc c
    db $76
    ld [$10f7], sp
    rst $28
    ld [de], a
    rst $28
    nop
    rst $38
    nop
    rst $38
    ld bc, $18ff
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
    ldh [rIE], a
    ld hl, sp-$01
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    ld l, h
    db $fc
    jp nz, Jump_000_00c2

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$01
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
    add b
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    and $ff
    ld sp, hl
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    cp a
    rra
    rrca
    rlca
    inc bc
    ld bc, $10ef
    push af
    ld a, [bc]
    jp c, $eb24

    db $10
    sbc l
    ld h, b
    and d
    ld d, h
    ld b, c
    xor b
    and b
    ld d, b
    ld a, b
    add h
    ld e, d
    and c
    dec c
    or b
    inc bc
    stop
    ld h, b
    nop
    jr nz, jr_025_469d

jr_025_469d:
    ld b, h
    add b
    ld [$1040], sp
    jr c, jr_025_46a8

    ld d, $28
    ld l, h
    db $10

jr_025_46a8:
    call c, $a020
    ld e, b
    or b
    ld b, b
    and b
    ld d, b
    ld h, e
    add b
    sub b
    ld b, b
    ld h, h
    add b
    sbc b
    inc b
    ldh [$08], a
    or h
    add hl, bc
    ret c

    jr nz, @-$1c

    nop
    ret nz

    jr nc, @-$29

    ld a, [hl+]
    add sp, $14
    or l
    ld c, b
    push de
    ld a, [hl+]
    db $eb
    inc d
    rst $30
    ld [$24db], sp
    rst $30
    ld [$00ff], sp
    rst $38
    nop

jr_025_46d6:
    ld a, a
    add b
    ld a, a
    add b
    rra
    ldh [rVBK], a
    or b
    rrca
    ldh a, [$1f]
    ldh [$c7], a
    jr c, jr_025_46d6

    ld c, $58
    and a
    ld a, h
    add e
    ld c, a
    or b
    rla
    add sp, $4d
    or d
    dec hl
    call nc, $fa05
    dec h
    jp c, $a659

    inc b
    ei
    add hl, bc
    or $16
    ld sp, hl
    ld bc, $02fe
    rst $38
    ld bc, $00ff
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
    jr @+$01

    ld e, [hl]
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
    rst $38
    rst $38
    ld hl, sp-$01
    add b
    rst $38
    add b
    rst $38
    ld h, b
    rst $38
    sbc b
    rst $38
    and $ff
    ld sp, hl
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld e, a
    cp a
    cp a
    ld b, a
    ld [hl], a
    adc c
    dec de
    nop
    ld d, l
    ld [bc], a
    ld de, $0000
    nop
    ld bc, $1000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_025_476a:
    nop

jr_025_476b:
    nop
    nop

jr_025_476d:
    nop
    ldh [rP1], a
    ld d, b
    add b
    jr c, jr_025_47b4

    ld [$0200], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    inc d
    jr nz, jr_025_47b3

    ld c, b
    ld l, b
    inc d
    ret c

    dec h
    ldh a, [$08]
    ret nc

    jr z, jr_025_476d

    ld d, $e3
    inc e
    db $d3
    jr z, jr_025_476a

    jr z, jr_025_476b

    add hl, hl
    or c
    ld c, [hl]
    db $dd
    ld [hl+], a
    push af
    ld a, [bc]
    db $fd
    ld [bc], a
    rst $28
    db $10
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    nop
    ld a, e
    add h
    rst $30
    ld [$9867], sp
    adc $31
    sbc $21
    ld a, h
    add e
    adc h

jr_025_47b3:
    ld [hl], e

jr_025_47b4:
    xor b
    ld d, a
    ld h, b
    sbc a
    jr nc, @-$2f

    ld b, b
    cp a
    add b
    ld a, a
    ld h, b
    sbc a
    nop
    rst $38
    add hl, de
    and $41
    cp $20
    rst $38
    jr @+$01

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
    nop
    rst $38
    nop
    rst $38
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
    add b
    rst $38
    ld h, b
    rst $38
    sbc b
    rst $38
    and $ff
    di
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rra
    rra
    rlca
    rlca
    inc bc
    inc bc
    rra
    nop
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    nop
    nop
    nop

jr_025_4841:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    nop
    nop

jr_025_484b:
    nop
    ld [bc], a
    nop

jr_025_484e:
    ld [bc], a
    add c
    nop
    pop bc
    ldh [rNR23], a
    add sp, $14
    db $fc
    inc bc
    ld a, a
    add b
    cp a
    ld b, b
    rst $10
    jr z, jr_025_484e

    db $10
    cp e
    ld b, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_025_4876

    db $f4
    ld b, [hl]
    cp c
    dec bc
    db $f4
    rrca
    ldh a, [$0b]
    db $f4
    dec e
    ld [c], a

jr_025_4876:
    inc e
    db $e3
    jr c, jr_025_4841

    jr nc, jr_025_484b

    ld l, b
    sub a
    pop af
    ld c, $e6
    add hl, de
    and [hl]
    ld e, c
    ld c, $f1
    ld [$00f7], sp
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    nop
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
    rrca
    cp $0f
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
    add b
    rst $38
    ldh [rIE], a
    jr c, @+$01

    adc $ff
    di
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
    ccf
    ld a, a
    rrca
    scf
    inc bc
    dec de
    nop
    adc a
    nop
    inc bc
    nop
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
    inc b
    db $10
    ld [de], a
    nop
    ld a, [hl+]
    inc b
    inc d
    ld [$4428], sp
    ld b, b
    sbc b
    ld e, c
    and b
    ldh a, [rP1]
    sbc d
    ld h, c
    ld l, e
    db $10
    ld c, $21
    dec hl
    ld b, h
    db $dd
    ld [hl+], a
    cp $01
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    ld a, l
    add d
    cp $01
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    rst $38
    nop
    ld a, [$7c05]
    add e
    inc hl
    nop
    inc de
    ld bc, $012f
    xor a
    inc bc
    rst $28
    inc bc
    cp $07
    cp $07
    cp $8f
    db $fc
    rrca
    cp h
    rra
    ld hl, sp+$1f
    ld hl, sp+$3f
    ldh a, [$3f]
    ldh a, [$3f]
    ldh [$7f], a
    ldh [$7f], a
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh [rIE], a
    jr c, @+$01

    adc $ff
    di
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    rrca
    rrca
    ld bc, $3f01
    nop
    rlca
    nop
    ld de, $0000
    nop
    nop
    nop
    nop
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
    inc b
    ld [bc], a
    inc b
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
    ld b, d
    nop
    ld [de], a
    ld hl, $0b70
    ld hl, sp+$07
    ld a, l
    add e
    ld b, e
    ld bc, $0327
    cpl
    inc bc
    add a
    rlca
    ld c, a
    rlca
    ld c, $0f
    adc [hl]
    rrca
    inc e
    rrca
    inc a
    rrca
    ld a, b
    rra
    ld a, b
    ccf
    ldh a, [$3f]
    ldh a, [$7f]
    ldh [$7f], a
    ldh [rIE], a
    ret nz

    rst $38
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
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ccf
    ld l, a
    rra
    inc sp
    rrca
    jr c, @+$09

    jr @+$09

    ld de, $310f
    rrca
    ld e, $03
    ld d, $07
    inc l
    rlca
    inc e
    rlca
    ld e, b
    rrca
    ld e, b
    rrca
    ldh a, [$1f]
    or b
    rra
    ld [hl], b
    dec a
    and b
    dec a
    pop hl
    dec sp
    pop bc
    ld a, e
    jp $a677


    rst $38
    xor h
    rst $38
    jr c, @+$01

    ld [hl], c
    cp $63
    db $fc
    rst $00
    ld hl, sp-$71
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    add e
    db $fd
    and $fb
    ld a, $ff
    call z, $f8ff
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
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
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    ld c, $ff
    inc e
    rst $38
    jr c, @+$01

    ld [hl], c
    cp $e3
    db $fc
    rst $00
    ld hl, sp-$71
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ld a, a

jr_025_4a4d:
    add b
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
    nop
    rst $38
    ld bc, $01fe
    cp $03
    db $fd
    rlca
    ld sp, hl
    ld c, $f3
    ld c, $f7
    inc e
    rst $28
    jr c, @-$2f

    jr c, jr_025_4a4d

    ld [hl], b
    cp a
    ldh [$3f], a
    ret nz

    ld a, a
    ret nz

    rst $38
    add c
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    ld b, $ff
    ld c, $ff
    ld c, $ff
    inc e
    rst $38
    inc e
    rst $38
    jr c, @+$01

    jr c, @+$01

    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $03
    db $fc
    rlca
    ld sp, hl
    ld b, $fb
    ld c, $f7
    dec e
    rst $20
    dec e
    rst $28
    dec sp
    rst $18
    ld a, e
    sbc a
    ld [hl], e
    cp a
    and $7f
    add $7f
    adc $ff
    adc l
    cp $1d
    cp $19
    cp $1b
    db $fc
    dec sp
    db $fc
    inc sp
    db $fc
    ld [hl], a
    ld hl, sp+$67
    ld hl, sp-$11
    ldh a, [$ef]
    ldh a, [$cf]
    ldh a, [$df]
    ldh [$9f], a
    ldh [$9f], a
    ldh [$bf], a
    ret nz

    ccf
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
    nop
    rst $38
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ld a, a
    sbc b
    ld a, a
    cp b
    rst $30
    jr c, @-$07

    ld a, b
    rst $28
    ldh a, [$ef]
    ldh a, [rIE]
    ldh [$df], a
    ldh [$df], a
    ldh [$bf], a
    ret nz

    cp a
    ret nz

    rst $38
    add b
    ld a, a
    add b
    ld a, a
    add b
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
    ld bc, $03fe
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$3f], a
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
    ld b, $07
    ld [$0009], sp
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    ld [bc], a
    ld [bc], a
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0012
    nop
    nop
    nop
    inc de
    inc d
    ld [bc], a
    dec d
    ld d, $17
    jr jr_025_4b76

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    rra
    jr nz, @+$23

    ld [bc], a
    ld [bc], a
    ld [hl+], a
    inc hl
    inc h
    ld [bc], a
    dec h
    nop
    nop
    ld h, $27
    ld [bc], a
    ld [bc], a
    jr z, jr_025_4b9e

    ld a, [hl+]

jr_025_4b76:
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_025_4bae

    nop
    nop
    nop
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_025_4bc1

    ld a, [hl-]
    dec sp
    inc a
    ld [bc], a
    dec a
    nop
    nop
    nop
    ld a, $3f
    nop
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld [bc], a
    ld b, [hl]
    ld [bc], a
    ld b, a
    ld c, b

jr_025_4b9e:
    nop
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
    ld [bc], a
    ld d, [hl]

jr_025_4bae:
    nop
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    nop
    ld h, b
    ld [bc], a
    ld h, c
    ld [bc], a
    ld h, d
    ld h, e
    ld h, h
    ld h, l

jr_025_4bc1:
    ld h, [hl]
    ld h, a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld [bc], a
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    ld [bc], a
    ld [bc], a
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    ld [bc], a
    adc d
    adc e
    adc h
    ld [hl], e
    adc l
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [hl], e
    adc l
    ld [bc], a
    ld [bc], a
    ld [bc], a
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sub h
    sbc a
    and b
    and c
    and d
    and e
    and h
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    xor h
    xor h
    ld e, c
    xor l
    xor [hl]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    xor a
    or b
    or c
    nop
    or d
    ld [bc], a
    or e
    or h
    or l
    ld [bc], a
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    nop
    ld e, b
    cp h
    cp l
    cp [hl]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    jp z, $cccb

    call $cfce
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    ld [bc], a
    reti


    ld [bc], a
    ld [bc], a
    jp c, $dcdb

    db $dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $00
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
    inc bc
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld b, $06
    inc b
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc b
    nop
    nop
    nop
    ld bc, $0000
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0004
    nop
    nop
    ld bc, $0101
    ld b, $06
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0004
    nop
    nop
    ld bc, $0101
    rlca
    inc b
    rlca
    ld bc, $0303
    ld bc, $0103
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0101
    rlca
    ld bc, $0101
    rlca
    rlca
    rlca
    inc bc
    inc bc
    ld [bc], a
    inc b
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    ld [bc], a
    inc b
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    ld bc, $0707
    rlca
    inc bc
    inc bc
    ld [bc], a
    inc b
    ld bc, $0101
    ld bc, $0100
    ld [bc], a
    dec b
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc b
    ld bc, $0101
    ld bc, $0000
    ld bc, $0505
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc b
    ld bc, $4101
    ld bc, $0000
    nop
    nop
    nop
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld bc, $4101
    ld bc, $0000
    nop
    dec b
    nop
    dec b
    inc bc
    ld [bc], a
    inc bc
    inc hl
    inc bc
    ld [bc], a
    inc b
    inc b
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    rlca
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, c
    ld bc, $0001
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $4101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0703
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rlca
    rlca
    jr c, jr_025_4e29

    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0eff
    rst $38
    jr nc, @+$01

    ret nz

    rst $38
    ld bc, $06ff
    rst $38
    inc e
    rst $38
    ld a, b
    rst $38
    rrca
    ldh a, [$1f]
    ldh [$7f], a
    add b
    cp $01
    ld hl, sp+$04
    jp $8f30


    ld b, b
    dec a
    add e
    ld [hl], d
    rrca
    jp $8e3c


    ld [hl], c
    inc a
    jp Jump_000_1fe0


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

jr_025_4e29:
    rst $38
    cp $fe
    db $fc
    db $fc
    ldh a, [$f0]
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    push af
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
    rst $00
    rst $38
    xor d
    rst $38
    add b
    rst $38
    ld d, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    inc bc
    inc bc
    inc e
    rra
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld c, $ff
    ld [hl], e
    rst $38
    ret nz

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
    inc bc
    rst $38
    ldh a, [$0e]
    ldh [rNR11], a
    rrca
    ret nz

    dec a
    ld [bc], a
    db $fc
    inc bc
    ldh [$1f], a
    jr @+$01

    sbc b
    rst $20
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
    db $fc
    rst $38
    ldh a, [$fd]
    ret nz

    ld hl, sp-$80
    push hl
    nop
    db $db
    nop
    rst $38
    nop
    cp $ff
    ldh a, [rIE]
    ret nc

    rst $38
    ld hl, sp-$01
    call c, $8eff
    rst $38
    add c
    rst $38
    ld b, b
    rst $38
    ldh [rIE], a
    ret nc

    rst $38
    or b
    rst $38
    ret nz

    rst $38
    add h
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
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
    nop
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
    rlca
    rst $38
    rrca
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
    inc bc
    inc bc
    inc e
    rra
    ld h, b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rra
    rst $38
    ld a, h
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
    dec bc
    rst $38
    rrca
    rst $38
    ld c, $fe
    ld a, b
    ld hl, sp-$20
    ldh [$be], a
    add $fe
    ld a, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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

    db $fc
    add b
    ld a, [$80ff]
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld bc, $f4ff
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
    inc bc
    rst $38
    ld c, $ff
    inc a
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    ld bc, $00ff
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
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
    nop
    nop
    nop
    nop
    ld bc, $0e01
    rrca
    ld [hl], b
    ld a, a
    add b
    rst $38
    ld bc, $03ff
    rst $38
    ld c, $ff
    ld [hl], b
    rst $38
    jp Jump_000_06ff


    rst $38
    dec a
    rst $38
    ld [hl], e
    rst $38
    pop bc
    rst $38
    rla
    rst $38
    ld e, [hl]
    cp $78
    ld hl, sp-$20
    ldh [$80], a
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
    rst $38
    nop
    cp a
    ret nz

    pop bc
    ld a, $fe
    ld bc, $00c3
    ld [$0000], sp
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    nop
    nop
    nop
    ld [$287f], sp
    ld a, a
    ld [$087f], sp
    ld a, a
    inc l
    ld a, a
    jr z, jr_025_50bd

    inc c
    ccf
    inc l
    ccf
    inc l
    ccf
    inc l
    ccf
    inc l
    ccf
    inc l
    ccf
    ld c, $3f
    inc c
    ccf
    ld d, $3f
    ld e, $3f
    ld d, $1f
    ld d, $1f
    ld e, $1f
    rra
    rra
    ld e, $1f
    rra
    rra
    rra
    rra
    rla
    rra
    rra
    rra
    rra
    rra
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
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ccf
    ccf
    rst $08
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    di
    rst $38
    rst $08
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ei
    ei
    db $e3
    db $e3
    add e
    add e
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
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38

jr_025_50bd:
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rra
    rst $38
    ccf
    ld a, a
    rst $38
    adc a
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    db $e3
    rra
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    nop
    nop
    inc a
    call z, $ef1c
    rra
    rst $28
    rra
    rst $28
    rra
    rst $20
    rra
    rst $20
    rrca
    rst $30
    rla
    rst $28
    inc c
    db $f4
    dec c
    or $1d
    db $e4
    inc c
    rst $30
    rra
    and $1f
    and $0d
    db $f4
    ld sp, hl
    ld b, $f8
    ld b, $f2
    rlca
    di
    rlca
    ld a, [$fb07]
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    add a
    rst $38
    ld b, a
    rst $38
    inc bc
    cp $a3
    cp $23
    cp $b7
    cp $b3
    rst $38
    or e
    rst $38
    ld c, a
    or e
    rrca
    di
    rrca
    di
    rlca
    ei
    rlca
    ei
    rlca
    ei
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $83ff
    rst $38
    add c
    rst $38
    add c
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ei
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
    rst $38
    rst $38
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
    rra
    rlca
    ld [bc], a
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
    ret nz

    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
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
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    rst $38
    rrca
    rst $38
    pop de
    rst $38
    rst $38
    rst $38
    jp nz, $fce2

    add e
    db $f4
    add e
    db $f4
    db $e3
    call nc, $d4e3
    db $e3
    call nc, $d4e3
    db $e3
    db $f4
    ld h, e
    nop
    ret nz

    nop
    rlca
    rra
    ld a, a
    dec b
    rst $38
    ccf
    rst $38
    cp $ff
    ld hl, sp-$04
    ldh a, [$f0]
    rst $38
    ldh a, [rIE]
    ldh a, [rWX]
    ldh a, [$59]
    ldh [$61], a
    ret nz

    ld h, a
    ret nz

    ld h, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld h, a
    rst $38
    rra
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
    rst $38
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
    cp a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld e, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    ccf
    rst $38
    rra
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
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    ccf
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
    ldh [$0c], a
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    adc h
    call z, Call_025_7f8c
    adc h
    ld a, a
    adc h
    ld a, a
    adc h
    ld a, a
    adc h
    ld a, a
    sbc h
    ld a, a
    sbc h
    ld a, a
    adc h
    ld a, a
    inc b
    rst $38
    inc [hl]
    rst $38
    db $f4
    rst $38
    db $f4
    rst $38
    db $e4
    rst $38
    inc d
    rst $38
    call nz, Call_025_44ff
    rst $38
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
    or $ff
    rst $30
    rst $38
    rst $30
    rst $30
    db $e3
    rst $30
    jp $83e7


    rst $00
    add e
    rst $00
    inc bc
    rst $00
    inc bc
    rst $20
    inc bc
    rst $30
    ld [bc], a
    or $a2
    cp $fa
    cp $fa
    cp $f2
    cp $f2
    cp $e2
    cp $e2
    cp $c2
    cp $c2
    cp $c2
    cp $c2
    cp $fa
    cp $fe
    cp $ff
    rst $38
    rst $38
    rst $38
    ei
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    rra
    rra
    rlca
    rlca
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
    inc bc
    nop
    inc c
    nop
    ld sp, $c700
    nop
    db $fc
    inc bc
    ldh a, [rIF]
    ldh [$1f], a
    rst $38
    rst $38
    rst $38
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
    rst $38
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
    add b
    rst $38
    add b
    rst $38
    add c
    cp $81
    cp $83
    db $fc
    add e
    db $fc
    add a
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$71
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [$87]
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$7d
    db $fc
    add e
    db $fc
    add c
    cp $80
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $ed
    rst $38

jr_025_53c6:
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
    ei
    db $fc
    rst $18
    nop
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    add $01
    add hl, sp
    ld b, $67
    jr jr_025_53c6

    jr nc, jr_025_5437

    ret nz

    ld a, h
    add b
    pop af
    nop
    ldh [rP1], a
    rst $38
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
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    ldh [$1f], a
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
    ld a, a
    add b
    ccf
    ret nz

    rra

jr_025_5435:
    ldh [rIF], a

jr_025_5437:
    ldh a, [$03]
    db $fc
    ld bc, $00fe
    rst $38
    db $fc
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
    nop
    nop
    inc bc
    inc bc
    nop
    inc bc
    ld bc, $0001
    ld bc, $0100
    nop
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rlca
    rst $38
    rlca
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
    rst $20
    add b
    rst $38
    ldh [$1f], a
    db $fd
    ld [bc], a
    db $fc
    inc bc
    cp $01
    cp $01
    ld d, l
    nop
    stop
    nop
    jr nz, jr_025_5435

    ld [$0087], sp
    cp a
    nop
    rst $38
    nop
    push af
    ld a, [bc]
    jp $9f3c


    ld h, b
    ld a, a
    add b
    ei
    nop
    xor $01
    sbc a
    nop
    rra
    jr nz, @+$81

    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
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
    ld [bc], a
    dec b
    nop
    dec b
    nop
    dec b
    nop
    dec b
    nop
    ld [$0800], sp
    nop
    rrca
    rrca
    add hl, de
    rra
    dec d
    dec de
    inc [hl]
    dec sp
    jr nc, jr_025_5555

    ld [hl+], a
    dec a
    cpl
    jr nc, jr_025_5548

    ld [hl-], a
    inc h
    dec sp
    jr nc, jr_025_555f

    jr nc, jr_025_5561

    db $10
    rra
    jr @+$21

    rrca
    rrca
    rlca
    rlca
    nop
    nop
    add b
    nop
    ldh a, [rP1]
    rst $38
    rst $38
    rst $38
    ret nc

    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    add b
    rst $38
    add h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    jp nz, $10fd

    rst $38

jr_025_5548:
    rlca
    ld hl, sp+$0f
    ldh a, [$03]
    db $fc
    jr nz, @+$01

    add b
    rst $38
    nop
    rst $38
    and b

jr_025_5555:
    rst $38
    db $f4
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    rst $20
    rst $38
    rrca

jr_025_555f:
    rst $38
    nop

jr_025_5561:
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
    rst $38
    rst $38
    inc a
    rst $38
    ld [hl], a
    rst $38
    sub b
    ld l, a
    ldh a, [rIF]
    db $fc
    inc bc
    ld a, h
    add e
    ld a, d
    add c
    jr nc, @-$3d

    pop hl
    inc b
    and c
    ld [$0011], sp
    ld d, [hl]
    ld bc, $03fc
    ld a, b
    add a
    ldh a, [rIF]
    ret nz

    ccf
    jp nz, $873d

    ld a, b
    adc a
    ld [hl], b
    ld e, c
    and b
    pop af
    nop
    db $e3
    ld [$00c3], sp
    ld c, $01
    ccf
    nop
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
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    db $fc

jr_025_55d0:
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
    add b
    rst $38
    add b
    ret nz

    ret nz

    ld b, b
    ret nz

    ld h, b
    ldh [$e0], a
    ldh [rNR41], a
    ldh [$a0], a
    ld h, b
    and b
    ld h, b
    jr nz, jr_025_55d0

    ret nz

    ld b, b
    ld b, b
    ret nz

    ret nz

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
    rst $38
    rst $38
    nop
    rst $38
    adc $ff
    nop
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
    ld a, a
    rst $38
    rst $38
    nop
    add b
    rst $38
    ld l, a
    sub b
    ccf
    ret nz

    cp a
    ret nz

    rra
    ldh [$9f], a
    ldh [$9f], a
    ldh [$87], a
    ld hl, sp-$80
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ldh a, [rIE]
    ld b, $ff
    ret nz

    rst $38
    rst $38

jr_025_5635:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    pop bc
    rst $38
    add b
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    rst $28
    rla
    ld a, e
    add a
    ld [hl], b
    adc a
    ld a, b
    add a
    ld a, b
    add a
    ld [$4083], sp
    sub e
    ld h, d
    add c
    ld [c], a
    ld bc, $8344
    ld c, [hl]
    add c
    ld a, b
    add a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    add c
    ld a, [hl]
    add e
    ld a, h
    jp $ce3c


    jr nc, jr_025_5635

    ld b, b
    pop af
    nop
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    ld sp, hl
    ld sp, hl
    db $f4
    ldh a, [$f7]
    ldh a, [$ee]
    ldh [$eb], a
    ldh [$c6], a
    ret nz

    di
    ldh a, [$fc]
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
    ld hl, sp-$04
    rrca
    rst $38
    dec hl
    rst $38
    rrca
    rst $38
    ld bc, $3fff
    rst $38
    rst $38
    inc bc
    rst $38
    inc sp
    inc sp
    inc sp
    inc bc
    inc bc
    cp b
    ld b, a
    ld a, a
    add b
    add b
    ld a, a
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    add e
    db $fd
    add c
    rst $38
    add c
    rst $38
    pop bc
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    inc a
    rst $38
    nop
    rst $38
    nop
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
    ld [hl], a
    rlca
    rlca
    ld bc, $00a7
    xor a
    nop
    ld a, b
    add a
    call z, $c603
    ld bc, $8162
    db $e3
    nop
    jp nz, $cf01

    nop
    ld a, d
    add l
    ld a, h
    add e
    ld hl, sp+$07
    ld hl, sp+$07
    ret c

    rlca
    ld [hl], c
    ld c, $35
    adc d
    ld a, a
    nop
    rst $38

jr_025_573f:
    nop
    nop
    nop
    ld b, b
    ld b, b
    nop
    and b
    nop
    stop
    stop
    add sp, -$40
    jr c, jr_025_573f

    ld [$0fef], sp
    rst $28
    rrca
    ld e, a
    rra
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
    nop
    nop
    rst $38
    rst $38
    rla
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, e
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
    nop
    add hl, de
    and $7e
    add c
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    ld [de], a
    rst $38
    ld [bc], a
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc bc
    dec d
    ld bc, $8977
    ld e, e
    and l
    ld a, a
    add c
    ld a, a
    add c
    push hl
    ld bc, $01c1
    add c
    ld bc, $0181
    xor c
    ld bc, $01ff
    db $fd
    inc bc
    or l
    ld c, e
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
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
    cp $01
    ld hl, sp+$07
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld hl, sp+$0f
    ldh a, [rIE]
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    nop
    ret nz

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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
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
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    nop
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
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
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
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    nop
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
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
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
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
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
    rst $38
    inc b
    rst $38
    inc b
    dec b
    rrca
    rrca
    inc c
    rrca
    ld [$080f], sp
    rrca
    ld [$080f], sp
    rrca
    ld [$080f], sp
    rrca
    add hl, de
    rra
    add hl, de
    rra
    add hl, de
    rra
    ld de, $111f
    rra
    ld de, $111f
    rra
    ld sp, $313f
    ccf
    ld [hl-], a
    ccf
    ld [hl-], a
    ccf
    ld [hl-], a
    ccf
    ld [hl+], a
    ccf
    ld [hl+], a
    ccf
    inc hl
    ccf
    ld h, d
    ld a, a
    ld h, c
    ld a, a
    pop hl
    rst $38
    pop hl
    rst $38
    push hl
    rst $38
    push hl
    rst $38
    rst $20
    rst $38
    rst $20
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
    adc a
    cp a
    dec bc
    ccf
    rrca
    ccf
    rra
    ccf
    rrca
    ccf
    ld e, $3f
    ld e, $7f
    ld e, [hl]
    ld a, a
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, [hl]
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld a, $ff
    ld a, h
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    pop hl
    cp $c1
    cp $81
    cp $03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$f0]
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ld sp, hl
    ld bc, $ff3f
    cp $ff
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    ld a, [hl]
    push af
    ldh [rIE], a
    ld h, c
    rst $38
    db $e4
    ei
    add sp, -$09
    ld h, h
    ei
    db $e4
    ei
    rst $30
    db $eb
    push de
    db $eb
    rst $10
    db $eb
    db $d3
    rst $28
    db $d3
    rst $28
    db $db
    rst $20
    sbc a
    rst $20
    xor a
    rst $10
    xor a
    rst $10
    xor a
    rst $10
    xor a
    rst $10
    xor a
    rst $10
    and a
    rst $18
    or a
    rst $08
    rlca
    rst $38
    adc a
    rst $38
    rrca
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    ld c, $fe
    ld c, $fe
    ld c, $ff
    xor a
    ld e, a
    rst $18
    ld a, a
    sbc a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    adc a
    ld a, a
    ld b, a
    rst $38
    inc sp
    rst $38
    ld sp, $58ff
    rst $38
    ld h, c
    cp $60
    rst $38
    and b
    rst $38
    or b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $30
    ei
    rst $30
    ld sp, hl
    rst $30
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$1d
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
    pop hl
    cp $e1
    cp $e1
    cp $f1
    cp $f1
    cp $f8
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
    di
    db $fc
    rst $20
    ld hl, sp-$31
    ldh a, [$9f]
    ldh [$3f], a
    ret nz

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
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

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

    cp a
    ret nz

    cp a
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

    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [$8f]
    ldh a, [$c7]
    ld hl, sp-$19
    ld hl, sp-$0d
    db $fc
    ei
    db $fc
    db $fd
    cp $fe
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    db $fd
    rst $38
    cp $ff
    rst $38
    ld a, a
    ccf
    rst $38
    ld e, a
    cp a
    cpl
    rst $18
    rla
    rst $28
    nop
    rst $38
    ld [bc], a
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
    ccf
    ccf
    ccf
    ccf
    rra
    rra
    rrca
    rrca
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
    nop
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

    cp a
    ret nz

    sbc a
    ldh [$df], a
    ldh [$cf], a
    ldh a, [$ef]
    ldh a, [$e7]
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
    ld bc, $0302
    nop
    nop
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
    dec b
    ld b, $07
    ld [$0a09], sp
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
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    rla
    jr jr_025_5c72

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_025_5c82

    ld [hl+], a
    inc hl
    inc h
    dec h
    inc h
    ld h, $27
    jr z, jr_025_5c93

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_025_5ca3

jr_025_5c72:
    ld [hl-], a
    inc sp
    inc sp
    inc sp
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    nop
    nop
    jr c, jr_025_5c7f

jr_025_5c7f:
    nop
    add hl, sp
    ld a, [hl-]

jr_025_5c82:
    ld [hl-], a
    dec sp
    inc a
    inc sp
    inc sp
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    nop
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a

jr_025_5c93:
    ld c, b
    nop
    ld c, c
    ld c, d
    ld [hl-], a
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    nop
    nop
    ld d, c
    ld d, d
    ld d, e

jr_025_5ca3:
    ld c, b
    nop
    nop
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
    ld c, b
    nop
    nop
    nop
    ld h, c
    ld h, d
    ld e, a
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld e, a
    ld l, d
    ld l, e
    nop
    nop
    ld l, h
    ld l, l
    ld l, [hl]
    ld e, a
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld l, c
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    inc sp
    ld a, d
    inc sp
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
    add hl, sp
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    nop
    nop
    nop
    sbc c
    sbc d
    inc sp
    sbc e
    inc sp
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    nop
    and c
    and d
    nop
    nop
    nop
    and e
    and h
    inc sp
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
    nop
    or [hl]
    or a
    nop
    nop
    nop
    nop
    nop
    nop
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    nop
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

    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    jp c, $dcdb

    db $dd
    sbc $df
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
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0202
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rlca
    inc bc
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    ld bc, $0101
    ld bc, $2101
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    inc bc
    inc bc
    ld bc, $0301
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0707
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0103
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0307
    inc bc
    dec b
    inc bc
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld bc, $0101
    rlca
    inc bc
    inc bc
    ld bc, $0101
    rlca
    ld bc, $0101
    ld bc, $0000
    nop
    ld bc, $0101
    rlca
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld bc, $0101
    ld bc, $0607
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    ld bc, $0101
    ld bc, $0101
    dec b
    rlca
    ld bc, $0101
    rlca
    ld bc, $0301
    ld [bc], a
    nop
    ld bc, $2101
    ld bc, $0301
    inc bc
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld bc, $0101
    ld bc, $0303
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld bc, $0107
    inc bc
    inc bc
    dec b
    dec b
    ld bc, $0101
    ld bc, $0703
    ld bc, $0000
    ld bc, $0101
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    rlca
    ld [bc], a
    inc b
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    inc bc
    inc b
    nop
    ld bc, $0103
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    inc b
    ld [bc], a
    rlca
    ld [bc], a
    ld [bc], a
    rlca
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld [bc], a
    ld [bc], a
    rlca
    rlca
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
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0303
    rlca
    rlca
    rlca
    rlca
    ld c, $0f
    rra
    rra
    rra
    rra
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
    rst $38
    rst $38
    jp $8dff


    rst $38
    adc e
    rst $38
    cpl
    rst $38
    ld [hl], a
    rst $38
    ld l, a
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
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    ld c, $0f
    ld c, $0f
    inc e
    rra
    add hl, de
    rra
    add hl, sp
    ccf
    ld [hl], e
    ld a, a
    ld h, e
    ld a, a
    rst $20
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    sbc a
    rst $38
    or a
    rst $38
    rra
    rst $38
    ld c, $ff
    ld e, $ff
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    pop af
    rst $38
    di
    rst $38
    db $e3
    rst $38
    rst $20
    rst $38
    set 7, a
    rst $00
    rst $38
    rst $10
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    db $fc
    rst $38
    cp $7f
    cp $3f
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $30
    rrca
    ei
    rlca
    ld sp, hl
    rlca
    db $fd
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
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
    cp $01
    cp $01
    cp $01
    cp $01
    db $fc
    inc bc
    inc bc
    nop
    inc bc
    nop
    rlca
    ld bc, $0107
    rrca
    inc bc
    rrca
    rlca
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    dec a
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    ei
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    cp a
    rst $38
    nop
    rst $38
    adc b
    ld a, a
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    db $10
    rst $28
    rst $28
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    xor a
    rst $38
    cp a
    cp $7f
    cp $7f
    cp $3f
    db $fc
    ld a, $fc
    ld a, h
    ld hl, sp+$7c
    ld hl, sp+$7c
    ld hl, sp-$08
    ldh a, [$f8]
    ldh a, [$f0]
    ldh [$f0], a
    ldh [$f0], a
    ldh [$e0], a
    ret nz

    ldh [$c0], a
    ldh [$c0], a
    ret nz

    add b
    ret nz

    add b
    add c
    nop
    add c
    nop
    inc c
    rst $38
    ld c, $ff
    rlca
    rst $38
    rlca
    rst $38
    add e
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    pop hl
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld a, h
    rst $38
    ld a, $ff
    ld e, $ff
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $80ff
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
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
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

    ccf
    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add c
    ld a, a
    add c
    ld a, a
    inc bc
    rst $38
    ld [bc], a
    rlca
    dec b
    rlca
    ld bc, $010f
    rrca
    ld de, $101f
    ccf
    ld [bc], a
    ccf
    nop
    ld a, a
    nop
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
    rst $38
    ld b, b
    cp $40
    cp $00
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [$fb]
    ldh a, [$fb]
    ldh a, [$f7]
    ldh [$f7], a
    ldh [$e7], a
    ret nz

    rst $20
    ret nz

    rst $20
    ret nz

    push bc
    add b
    pop bc
    add b
    add c
    add b
    add e
    ld bc, $0183
    rlca
    ld bc, $0307
    rlca
    inc bc
    rrca
    inc bc
    rrca
    rlca
    rrca
    rlca
    rra
    rlca
    rra
    rlca
    rra
    rrca
    ccf
    rrca
    ccf
    rrca
    ccf
    rra
    rlca
    rra
    rlca
    rra
    rlca
    rra
    ld b, $3f
    rlca
    ccf
    inc c
    ccf
    dec l
    ld a, a
    inc c
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
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
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
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
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
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
    rst $38
    db $10
    rst $38
    ld [$08ff], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    inc c
    inc b
    db $10
    inc c
    jr nz, jr_025_614c

    nop
    inc a
    inc d
    inc l
    inc c
    inc [hl]
    inc b
    inc a
    ld d, $2e
    ld c, $3e
    ld c, $3e
    ld e, $3e
    ld e, $3f
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    ei
    db $eb
    ei
    ei
    ei
    ld [c], a
    di
    ld d, d
    di
    ld [hl], e
    di
    ld h, e
    db $e3
    ld b, e
    db $e3
    ld b, e
    jp $c303


    inc bc
    add e
    inc bc
    add e
    inc bc
    add e
    rlca
    rlca

jr_025_614c:
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    ld a, a
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
    pop hl
    rst $38
    ld bc, $01ff
    rst $38
    dec a
    rst $38
    di
    rst $38
    inc bc
    rst $38
    ld c, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    ccf
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
    add b
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
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
    rst $38
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
    rst $38
    nop
    rst $38
    rst $38
    rra
    sbc a
    rrca
    rrca
    rlca
    rra
    rlca
    rrca
    rrca
    sbc a
    sbc a
    rst $38
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    add b
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    cp $ff
    ei
    rst $38
    ret nc

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add c
    rst $38
    pop bc
    rst $38
    ldh a, [rIE]
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
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38

jr_025_6250:
    rra
    rst $28
    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    inc bc
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
    inc e
    db $fc
    nop
    db $fc
    nop
    db $fc
    jr c, jr_025_6250

    db $fc
    nop

jr_025_628e:
    nop
    db $fc
    jr z, jr_025_628e

    ld [hl], b
    db $fc
    ld h, b
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rLCDC]
    ldh a, [$c0]
    jp $ffd8


    jr nc, @+$01

    ld a, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $ff
    cp $ff
    rst $38
    rst $38
    cp $ff
    ei
    rst $38
    rst $30
    rst $38
    ld l, c
    rst $38
    add b
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ldh a, [rIE]
    and b
    rst $38
    nop
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
    rst $38
    rst $38
    cp $ff
    rst $30
    rst $38
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [rTAC], a
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
    ld bc, $83fe
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
    nop
    rst $38
    nop
    rst $38
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
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$03
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
    inc b
    rst $38
    inc c
    rst $38
    inc e
    rst $38
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    rra
    rst $18
    rra
    rst $38
    ld a, a
    sbc a
    ccf
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    xor $ff
    cp $ff
    adc $ff
    rst $08
    cp $e5
    cp $e5
    rst $38
    and c
    cp $2c
    di
    ld l, h
    di
    ld a, [c]
    cp $f0
    cp $f0
    cp $f8
    cp $f8
    cp $f9
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    rra
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp+$1b
    db $fc
    dec de
    db $fc
    dec de
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
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
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ccf
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
    ldh a, [rSB]
    cp $00
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
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
    jp nz, $a9ff

    rst $38
    ld [bc], a
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    db $fc
    ld hl, sp+$06
    ld a, [c]
    ld c, $fd
    inc bc
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    sbc d
    ld h, l
    rst $30
    ld [$00ff], sp
    sbc $00
    ld c, [hl]
    nop
    cpl
    nop
    ld e, h
    nop
    xor a
    nop
    ei
    inc b
    ld sp, hl
    ld b, $f9
    ld b, $f1
    ld c, $fb
    add h
    sub a
    add b
    xor a
    add b
    add a
    add b
    jp z, $f281

    pop bc
    cp $c1
    sbc $e1
    rst $20
    ld hl, sp-$11
    ldh a, [$e7]
    ld hl, sp-$1f
    cp $c0
    ldh [$e0], a
    ldh [$f0], a
    ldh a, [$fb]
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rlca
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
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp+$07
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    inc bc
    rst $38
    ld bc, $02ff

jr_025_64d9:
    rst $38
    rst $38
    nop
    db $fc
    inc bc
    ldh a, [$0c]
    ld hl, sp+$08
    rst $38
    rrca
    rst $38
    nop
    rst $38

jr_025_64e7:
    nop

jr_025_64e8:
    rst $38
    pop bc

jr_025_64ea:
    rst $38
    rst $38
    rrca
    rst $38
    nop
    rst $38
    and a
    ld e, b
    adc $30
    cp $00
    cp [hl]

jr_025_64f7:
    nop
    ld a, [hl]
    nop
    dec a
    nop
    ld [hl], e
    inc c
    add a
    jr jr_025_64e8

    jr jr_025_64ea

    jr jr_025_64e7

    inc e
    call nz, $e538
    jr @+$58

    ld [$0e21], sp
    sbc b
    rlca
    jr nc, jr_025_64d9

    jr jr_025_64f7

    inc c
    di
    ld c, $f1
    ld b, $f9
    add c
    ld a, [hl]
    sub d
    ld a, l
    srl h
    dec c
    cp $1c
    rst $38
    jr @+$01

    inc a
    rst $38
    cp l
    rst $38
    cp c
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
    ret nz

jr_025_656b:
    ccf
    add b
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    db $f4
    rst $38
    ld [$20ff], sp
    rst $38
    ld e, a
    rst $38
    ccf
    ret nz

    rlca
    jr jr_025_659f

jr_025_659f:
    db $e3
    rst $20
    and $0f
    inc c
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    push hl
    jr jr_025_656b

    nop
    cp c
    nop
    ld a, [hl-]
    nop
    or c
    nop
    ld a, l
    nop
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp [hl]
    ld b, b
    jp c, Jump_000_1820

    jr nz, @+$66

    jr @+$14

    inc c
    add b
    rrca
    ld l, b
    add a
    inc e
    db $e3
    inc c
    di
    ld b, $f9
    inc bc
    db $fc
    add c
    ld a, [hl]
    add b
    ld a, a
    ld bc, $60fe
    sbc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    sub h
    rst $38
    cp a
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
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
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
    rst $38
    rst $38
    rst $38
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
    rst $38
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
    xor e
    rst $38
    ld bc, $e0ff
    rst $38
    jr nc, jr_025_66ab

    nop
    rlca
    nop
    inc bc
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
    xor a
    ld b, b
    ld b, [hl]
    nop
    ld b, h
    nop
    inc h
    nop
    add h
    nop
    add sp, $04
    ld hl, sp+$00
    ldh a, [rP1]
    ld hl, sp+$00
    inc l
    nop
    ld [bc], a
    nop
    ld b, d
    nop
    ld d, c
    nop
    ldh a, [rDIV]
    ld a, c
    ld b, $f0
    rrca
    ld [hl], b
    adc a
    jr @-$17

    rrca
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    pop bc

jr_025_66ab:
    ld a, $f3
    inc c
    pop af
    ld c, $f8
    rlca
    ld a, b
    add a
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nc

    rst $38
    db $fc
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
    ldh a, [rIF]
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
    rst $38
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
    inc bc
    inc b
    rlca
    inc c
    rrca
    inc c
    rrca
    inc c
    rrca
    db $fc
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    rra
    rra
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
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
    inc a
    rst $38
    ld a, [hl-]
    db $fd
    ld a, [hl-]
    db $fd
    inc sp
    db $fc
    ld [hl-], a
    db $fd
    inc sp
    db $fc
    ld [hl-], a
    db $fd
    ld sp, $32fe
    db $fd
    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    ld a, [hl-]
    push af
    ld [hl], $f9
    ld [hl], $f9
    inc a
    rst $38
    inc a
    inc a
    inc a
    inc a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rlca
    rst $38
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
    ld hl, sp-$08
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld h, b
    nop
    ld hl, sp+$00
    ld a, [hl]
    add b
    rra
    ldh [rTAC], a
    ld hl, sp+$07
    ld hl, sp-$3d
    inc a
    pop hl
    ld e, $f8
    rlca
    ldh a, [rIF]
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
    ldh [$1f], a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    call z, $27f3
    ret nz

    ld bc, $03c6
    call nz, $c403
    inc bc
    call nz, $c403
    ld [$2fc7], sp
    rst $18
    ld hl, sp-$01
    rst $28
    rst $38
    db $fc
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
    ret nz

    rst $38
    rra
    rra
    cp e
    ld a, a
    cp l
    ld a, e
    cp e
    ld a, l
    cp d
    ld a, l
    cp h
    ld a, e
    cp d
    ld a, l
    ld [hl], b
    cp a
    rst $10
    add hl, sp
    sub e
    ld a, l
    pop de
    ccf
    jp $c33d


    dec a
    jp $c03d


    ccf
    db $d3
    dec l
    db $d3
    cpl
    sub e
    ld l, a
    sub a
    ld l, a
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
    ld a, [c]
    rst $38
    nop
    rst $38
    nop
    dec d
    rst $38
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
    add b
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    add hl, sp
    add $00
    rst $38
    rst $38
    nop
    rst $38
    nop
    cp $01
    ldh a, [rIF]
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, h
    sub c
    ld [$c411], a
    ld sp, $619a
    sub $21
    ret z

    scf
    add d
    ld a, a
    ld [hl], b
    rst $38
    add b
    rst $38
    ld de, $00fe
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    db $ed
    rst $38
    ret nz

    rst $38
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    ld c, $00
    ld a, a
    nop
    rst $18
    ccf
    rst $38
    ccf
    ccf
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ldh [$1f], a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0fff
    rst $38
    ld a, a
    rst $38
    ld a, [$effd]
    ldh a, [$b3]
    ret nz

    ld b, a
    add b
    adc $01
    adc $01
    call $cf02
    nop
    call $cd02
    ld [bc], a
    call z, $d703
    ld [$ff00], sp
    rlca
    ld hl, sp+$32
    call $f807
    ldh [rIE], a
    ld e, $fe
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
    cp $fe
    nop
    cp $fe
    cp $fe
    cp $e3
    cp $d3
    xor $83
    cp $c3
    cp [hl]
    ld b, e
    cp [hl]
    ld b, e
    cp [hl]
    ld b, e
    cp [hl]
    jp $db3e


    ld h, $53
    xor [hl]
    call $d336
    inc l
    db $d3
    inc l
    rst $10
    inc l
    db $d3
    inc l
    db $d3
    inc l
    di
    inc c
    di
    inc c
    di
    inc c
    rst $30
    ld [$c8f7], sp
    rst $20
    ret c

    rst $20
    ret c

    rst $20
    ret c

    rst $20
    ret c

    rst $20
    ld hl, sp-$09
    ld hl, sp-$01
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$f1]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f1]
    ldh a, [$f1]
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    pop af
    rst $38
    pop af
    rst $38
    pop hl
    rst $38
    db $fd
    db $e3
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    rlca
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
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    rlca
    nop
    ld e, $01
    ei
    rlca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ret nz

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
    rst $38
    add b
    nop
    add b
    rlca
    add a
    rra
    sbc a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
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
    ret nz

    ret nz

    ld hl, sp-$08
    cp [hl]
    cp $c7
    rst $38
    pop af
    rst $38
    ld a, b
    rst $38
    sbc a
    rst $38
    db $e3
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    rst $28
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    rlca
    nop
    pop af
    nop
    rst $38
    ldh [rIE], a
    jr @+$01

    dec b
    rst $38
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
    ccf
    rrca
    rrca
    rlca
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    cp l
    nop
    and b
    nop
    dec h
    nop
    ld d, b
    ld [bc], a
    xor b
    rst $38
    add b
    rst $38
    db $10
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    nop
    rra
    nop
    ld a, [$0f07]
    rst $38
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
    rlca
    rst $38
    rra
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
    rst $38
    cp $ff
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
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

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
    rst $38
    nop
    rst $38
    nop
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
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    ret nz

    ld hl, sp-$08
    rst $38
    rst $38
    rrca
    rst $38
    db $e3
    rst $38
    ld a, e
    rst $38
    rra
    rst $38
    inc bc
    rst $38
    cp a
    ld b, b
    ld h, a
    sbc b
    nop
    rst $38
    inc a
    jp $f906


    nop
    rst $18
    nop
    rst $30
    ld b, b
    ld sp, hl

jr_025_6b40:
    jr nc, jr_025_6b40

    nop
    rst $38
    nop
    rst $38
    nop
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
    ld a, a
    rst $38
    rst $38
    ccf
    rst $38
    rra
    rst $30
    rrca
    rst $38
    inc bc
    ld a, [hl]
    ld bc, $00bf
    adc a
    rst $38
    dec h
    rst $38
    dec b
    rst $38
    add l
    rst $38
    inc bc
    rst $38
    ld b, a
    rst $38
    ld d, e
    rst $38
    rra
    rst $38
    rst $38
    nop
    ld hl, sp+$07
    ld c, a
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
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
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
    ld hl, sp-$08
    ldh a, [$c0]
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    rst $38
    nop

jr_025_6bb3:
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
    ld hl, sp+$00
    db $fc
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

jr_025_6bce:
    rst $38
    rst $38
    ld [hl], b
    rst $38
    inc e
    rst $38
    inc bc
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    add b
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ld h, b
    sub a
    jr nc, jr_025_6bb3

    jr jr_025_6bce

    inc c
    ld a, [c]
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
    ld a, a
    rra
    rra
    rrca
    rlca
    inc bc
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld bc, $0801
    ld a, l
    jr c, jr_025_6c93

    inc a
    rst $38
    db $fc
    rst $38
    db $fd
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
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
    db $fc
    db $fc
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ldh [rP1], a
    db $fc
    nop
    rst $38
    ldh [rIE], a
    db $fc
    ld a, a
    rst $38
    rrca
    rst $38
    add c
    rst $38
    ld [hl], b
    rst $38
    inc e
    rst $38
    inc bc
    rst $38

jr_025_6c5c:
    nop
    rst $38

jr_025_6c5e:
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    add a
    rst $38
    ldh [$60], a
    sbc b
    jr jr_025_6c5c

    jr jr_025_6c5e

    ld [$08f8], sp
    db $fc

jr_025_6c7a:
    ld [$18fc], sp
    db $fc

jr_025_6c7e:
    jr @-$06

    jr jr_025_6c7a

    jr @-$06

    jr jr_025_6c7e

    db $10
    ld hl, sp+$30
    ld a, b
    db $10
    jr c, jr_025_6c9d

    jr c, jr_025_6cbf

    ldh a, [rSVBK]
    ldh a, [$f0]

jr_025_6c93:
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$e0]
    ldh a, [$e0]
    ldh a, [$e0]

jr_025_6c9d:
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    cp $ff
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
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
    ld bc, $0302
    inc b
    dec b
    nop
    nop
    nop

jr_025_6cbf:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $07
    rlca
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    rlca
    rlca
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $00
    nop
    nop
    rla
    jr jr_025_6cf0

    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f

jr_025_6cf0:
    rlca
    rlca
    rlca
    jr nz, jr_025_6d16

    nop
    ld [hl+], a
    rlca
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_025_6d06

    rlca
    rlca
    rlca
    rlca
    rlca
    add hl, hl
    ld a, [hl+]

jr_025_6d06:
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_025_6d3e

    ld [hl-], a
    inc sp
    inc [hl]
    rlca
    rlca
    rlca
    rlca
    rlca
    dec [hl]

jr_025_6d16:
    ld [hl], $37
    nop
    jr c, jr_025_6d22

    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    rlca
    rlca

jr_025_6d22:
    rlca
    rlca
    rlca
    ld a, $07
    ccf
    ld b, b
    rlca
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, l
    inc l
    nop
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e

jr_025_6d3e:
    ld c, h
    rlca
    rlca
    rlca
    rlca
    rlca
    ld c, l
    ld c, [hl]
    ld c, a
    rla
    ld d, b
    ld d, c
    ld d, d
    jr nc, jr_025_6da0

    ld d, h
    ld d, l
    ld d, [hl]
    rlca
    rlca
    rlca
    rlca
    ld d, a
    rlca
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    jr nc, jr_025_6dbe

    ld h, b
    rlca
    rlca
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    nop
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld h, b
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    rlca
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
    rlca
    rlca
    rlca
    rlca
    add c
    add d
    add e
    add h
    ld h, b
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    rlca
    rlca
    rlca
    rlca
    rlca
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c

jr_025_6da0:
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    rlca
    rlca
    rlca
    rlca
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    and b
    and c
    and d
    and e

jr_025_6dbe:
    and h
    and l
    rlca
    and [hl]
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
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
    xor [hl]
    xor a
    or b
    or c
    or d
    or e
    or h
    rlca
    rlca
    rlca
    rlca
    or l
    or [hl]
    rlca
    rlca
    or a
    cp b
    cp c
    cp d
    cp e
    ld bc, $0101
    ld bc, $0101
    ld bc, $0707
    rlca
    rlca
    ld [bc], a
    ld bc, $0101
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
    ld bc, $0101
    inc bc
    inc bc
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    nop
    nop
    inc bc
    inc bc
    inc bc
    rlca
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0701
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0301
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0303
    inc bc
    rlca
    rlca
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
    ld [bc], a
    rlca
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0107
    ld bc, $0101
    inc bc
    inc bc
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    ld [bc], a
    ld [bc], a

Call_025_6efe:
    ld [bc], a
    ld [bc], a
    ld bc, $0103
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0303
    inc bc
    rlca
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    rlca
    rlca
    rlca
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
    nop
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rNR10], a
    ldh a, [rNR11]
    ld sp, hl
    rla
    rst $38
    rlca
    rst $38
    inc bc

jr_025_6f53:
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $20
    inc bc
    db $e3
    inc bc
    db $e3
    ld bc, $01f3
    ld sp, hl
    ld bc, $21f9
    rst $18
    ld sp, $30cf
    rst $08
    jr jr_025_6f53

    ld e, l
    ld h, e
    inc e
    ld h, e
    inc c
    inc sp
    ld b, $39
    ld b, $19
    ld [bc], a
    dec c
    nop
    rlca
    nop
    rlca
    nop
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
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ccf
    dec sp
    ccf
    scf
    ccf
    rra
    ccf
    rla
    ccf
    ld b, $3f
    inc bc
    ccf
    rra
    ccf
    ld a, [de]
    ccf
    rlca
    ccf
    rra
    rra
    rrca
    rra
    rra
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
    rrca
    rrca
    rrca
    rrca
    rrca
    dec b
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rlca
    rlca
    rlca
    ld b, $07
    nop
    rlca
    nop
    rst $38
    ld bc, $0fff
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
    ld hl, sp-$08
    ldh [$e0], a
    ret nz

    ldh [$c0], a
    ret nz

    add b
    ret nz

    add b
    add b
    nop
    sub b
    db $10
    ldh a, [$b0]
    pop af
    ldh [rIE], a
    pop af
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld a, [$effd]
    db $fc
    rst $20
    cp $e3
    rst $38
    and a
    ei
    inc hl
    rst $38
    and a
    rst $38
    rst $20
    rst $38
    scf
    rst $38
    scf
    rst $38
    inc sp
    rst $38
    or l
    ei
    inc de
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    db $ec
    db $fd
    db $fc
    db $fc
    db $fc
    db $fc
    call c, Call_025_6efe
    cp $4e
    cp $6e
    cp $d8
    cp $fc
    cp $bd
    rst $38
    or l
    rst $38
    dec a
    rst $38
    ld hl, $1fff
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    inc bc
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
    rst $38
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    rst $30
    ld hl, sp-$11
    ldh a, [$df]
    ldh [$bf], a
    ret nz

    dec h
    nop
    dec hl
    nop
    ld a, a
    nop
    rst $38
    ret nz

    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh [rNR32], a
    ldh [rNR41], a
    ldh [rLCDC], a
    ret nz

    jp $8fc0


    add b
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $8f00
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    sbc a
    ld h, b
    rst $28
    ldh a, [$f7]
    ld hl, sp-$01
    ld hl, sp-$09
    ld hl, sp-$04
    di
    ldh [rIE], a
    ldh [rIE], a
    db $eb
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ld a, a
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    rrca
    ccf
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
    rst $38
    nop
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
    ld a, a
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
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
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $dd
    ld [bc], a
    dec c
    ld [bc], a
    dec bc
    inc b
    dec bc
    inc b
    rla
    ld [$001f], sp
    ld a, $00
    inc a
    nop
    ld a, b
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    sbc a
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    cp a
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
    ldh [rSB], a
    pop af
    ld b, $e3
    inc e
    dec c
    di
    scf
    rst $08
    rst $18
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

    rrca
    ldh a, [rTAC]
    ld hl, sp+$01
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
    inc bc
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
    add b
    rst $38
    add b
    rst $38
    add b
    add b
    ret nz

    ret nz

    ld b, b
    ret nz

    ld bc, $07e1
    rst $20
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rst $30
    rrca
    rst $38
    rlca
    rst $20
    rlca
    add a
    inc bc
    inc bc
    inc bc
    ld bc, $0103
    ld bc, $0100
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    inc bc
    inc bc
    inc c
    ld c, $31
    dec sp
    rst $00
    rst $08
    ccf
    ld h, e
    rst $38
    di
    rst $38
    di
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
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    and b
    rst $38
    jp z, $fcff

    rst $38
    di
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    ld sp, hl
    rst $38
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

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
    rlca
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0fff
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    ld a, a
    ld a, a
    ld a, a
    jr c, jr_025_7309

    dec [hl]
    jr c, jr_025_72e6

    jr jr_025_72e7

    inc e
    ld c, $1c
    inc c
    ld a, $33
    adc $e0
    ld e, $80
    ld a, a
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    ld e, a
    rst $38
    jr @+$01

    jr @+$01

jr_025_72e6:
    sbc b

jr_025_72e7:
    rst $38
    ld hl, sp-$01
    ld a, [$f8ff]
    rst $38
    cp e
    rst $38
    call z, $f0ff
    rst $38
    ld [hl], b
    rst $38
    db $10
    rst $38
    ld b, a
    rst $38
    sbc [hl]
    rst $38
    jr c, @+$01

    ldh [rIE], a
    and b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop

jr_025_7309:
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
    nop
    rst $38
    inc bc
    rst $38
    rra
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
    rst $38
    nop
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
    ld a, a
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    di
    rst $38
    rst $30
    rst $38
    ld [c], a
    rst $30
    or [hl]
    rst $20
    add $e7
    add $e7
    and $e7
    push af
    rst $20
    ld hl, $b0e7
    rst $20
    ld [$a8e7], sp
    rra
    ld [hl], b
    rra
    ld b, b
    rrca
    ld a, [de]
    rrca
    ld [bc], a
    rrca
    inc b
    rra
    dec b
    rra
    db $10
    rrca
    sub h
    rlca
    rlca
    adc a
    ccf
    adc a
    rst $38
    rst $38
    inc e
    rst $38
    db $ec
    rst $38
    ld c, $ff
    inc a
    rst $38
    jr c, @+$01

    jr @+$01

    ld b, $ff
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    add a
    ld a, a
    ld a, a
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
    inc bc
    rst $38
    rrca
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
    db $fd
    rst $38
    xor $ff
    cp h
    rst $38
    db $e4
    rst $38
    add b
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    add h
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    db $fc
    ld b, b
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    cp $10
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld [bc], a
    db $fd
    and h
    db $db
    add c
    cp $55
    ld [$fd42], a
    inc sp
    db $ec
    dec sp
    db $e4
    ccf
    ldh a, [$bf]
    ldh a, [$1f]
    ld hl, sp+$0f
    ld hl, sp+$07
    db $fc
    rlca
    db $fc
    rlca
    cp $03
    cp $01
    rst $38
    ld bc, $00ff
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
    db $fc
    inc bc
    db $e3
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    or $ff
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
    db $fc
    nop
    ldh a, [rP1]
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

    nop
    ret nz

    ld b, b
    and b
    nop
    ldh [rP1], a
    ldh a, [$90]
    ld h, b
    cp b
    ld b, b
    inc a
    ret nz

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
    add b
    rst $38
    add b
    ld a, a
    ret nz

    ld a, a
    ret nz

    ccf
    ldh [$3f], a
    ldh [$1f], a
    ldh a, [$1f]
    ldh a, [rIF]
    ld hl, sp-$02
    ld bc, $03fc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    add a
    ld a, a
    ld a, a
    rst $38
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
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    db $fd
    rst $38
    ld a, [c]
    rst $38
    call nc, $60ff
    rst $38
    inc b
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    nop
    db $fc
    nop
    ldh a, [rP1]
    ret nz

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
    ld hl, sp+$07
    ldh a, [$0c]
    ldh a, [$08]
    ldh [rNR31], a
    ldh [rNR31], a
    ldh [rNR23], a
    ldh [rNR24], a
    ldh [rNR32], a
    ldh a, [$0e]
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
    ld a, [hl]
    nop
    ld a, b
    nop
    jr nz, jr_025_7526

jr_025_7526:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
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
    inc bc
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
    db $fc
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    rlca
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    ld [hl], l
    rst $38
    add c
    rst $38
    add c
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ldh a, [rP1]
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
    ld a, [hl]
    rst $38
    rst $28
    rst $38
    rlca
    rst $38
    dec de
    rst $38
    pop af
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld sp, hl
    rst $38
    ld [hl], c
    nop
    daa
    nop
    rst $38
    inc bc
    db $fc
    rra
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
    cp $00
    ld hl, sp+$00
    ldh [rP1], a
    ret nz

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
    ld bc, $03ff
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
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
    rlca
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    add a
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
    rrca
    rst $38
    rrca
    rst $38
    rrca
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
    ccf
    rst $38
    rst $38
    rst $38
    cpl
    rst $38
    ld h, l
    rst $38
    rlca
    rst $38
    ld hl, $20ff
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
    rrca
    nop
    rlca
    nop
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
    ld bc, $0700
    nop
    ldh a, [rP1]
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07ff
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
    db $fd
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
    rra
    rst $38
    ld a, $ff
    dec a
    cp $3d
    cp $3d
    cp $3d
    cp $3f
    db $fc
    ccf
    db $fc
    ld a, a
    db $fc
    ld a, a
    db $fc
    ld a, [hl]
    db $fd
    ld a, d
    db $fd
    ld a, d
    db $fd
    ld a, d
    db $fd
    cp $f9
    cp $f9
    or $f9
    push af
    ld a, [$f2fd]
    push af
    ld a, [$fee1]
    pop af
    cp $ff
    db $fc
    db $fc
    db $fc
    ld hl, sp-$04
    ld hl, sp-$04
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    ld e, a
    rst $38
    cpl
    rst $38
    rlca
    rst $38
    inc de
    rst $28
    dec de
    rst $20
    ld c, h
    or e
    ld h, $d9
    sub e
    ld l, h
    ld e, e
    and h
    db $fd
    ld [bc], a
    ld a, a
    nop
    ccf
    nop
    ldh [rP1], a
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
    cp $00
    ld hl, sp+$00
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
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    rra
    rst $38
    ccf
    rst $38
    cp $ff
    db $fd
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    db $eb
    rst $38
    rst $18
    rst $38
    sbc [hl]
    rst $38
    rst $30
    rst $38
    ldh a, [rIE]
    cp $ff
    ld hl, sp-$08
    ld a, [c]
    ld a, [c]
    rst $20
    rst $20
    rst $08
    rst $08
    adc a
    adc a
    xor [hl]
    rst $18
    ld l, a
    sbc [hl]
    xor a
    ld e, h
    adc a
    ld a, b
    dec bc
    db $f4
    adc a
    ld [hl], b
    rrca
    ldh a, [$97]
    ld l, b
    scf
    ret z

    ccf
    ret nz

    ccf
    ret nz

    ld [hl], a
    adc b
    ld h, a
    sbc b
    ld [hl], a
    adc b
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $38
    nop
    rst $38
    nop
    ld a, [hl]
    add c
    cp $01
    db $fc
    inc bc
    ld sp, hl
    ld b, $7d
    add d
    or l
    ld c, d
    ld a, e
    add h
    inc sp
    call z, $c43b
    sbc d
    push hl
    db $d3
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, h
    rst $38
    jr nc, @+$01

    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
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
    ld a, a
    nop
    ccf
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
    db $ed
    rst $38
    db $eb
    rst $38
    and a
    rst $38
    rst $10
    rst $38
    dec bc
    rst $38
    rst $10
    rst $38
    xor a
    rst $38
    ei
    rst $38
    ld [$fdff], a
    rst $38
    push de
    rst $38
    ld h, $ff
    dec c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    add a
    rst $38
    db $10
    rra
    add h
    add a
    nop
    nop
    inc e
    inc e
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, [$7a7d]
    db $fd
    rst $38
    ld a, h
    ld a, a
    db $fc
    ld a, e
    db $fc
    ld a, a
    ld hl, sp-$02
    ld a, c
    rst $30
    ld a, b
    ld a, [hl]
    pop af
    rst $38
    ld [hl], c
    rst $28
    ld [hl], c
    db $fd
    ld h, e
    ld e, l
    db $e3
    ld e, a
    db $e3
    ld a, a
    jp $c73b


    ld a, e
    add a
    ld d, a
    xor a
    ccf
    rst $00
    rst $10
    cpl
    rst $18
    ccf
    rst $38
    ccf
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
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
    rst $28
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    ld a, a
    rst $38
    jr c, @+$01

    inc c
    rst $38
    ld b, $ff
    inc bc
    rst $38
    ld bc, $ffff
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
    rrca
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
    ld bc, $03ff
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    cp $ff
    rst $38
    rst $38
    ei
    rst $38
    db $fd
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    xor $ff
    cp d
    rst $38
    xor $ff
    ld e, [hl]
    rst $38
    rst $38
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
    add a
    rst $38
    ldh a, [rIE]
    ld a, [hl]
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
    cp a
    rst $38
    rra
    rst $38
    rrca
    rst $38
    add a
    rst $38
    jp $60ff


    rst $38
    jr nc, @+$01

    jr @+$01

    inc c
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld bc, $ffff
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
    db $fd
    rst $38
    ld [c], a
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    or b
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    ei
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    db $e3
    rst $38
    ld a, [c]
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    rst $38
    add a
    rst $38
    di
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
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    add c
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    jr nc, @+$01

    jr @+$01

    ld [$06ff], sp
    rst $38
    ld [bc], a
    rst $38
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    cpl
    rst $38
    rra
    rst $38
    ccf
    rst $38
    dec bc
    rst $38
    inc bc
    rst $38
    ld bc, $40ff
    rst $38
    ld [$b5ff], sp
    rst $38
    ld l, h
    rst $38
    ld hl, sp-$01
    ld [bc], a
    rst $38
    ld bc, $0aff
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
    rst $38
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
    sub e
    rst $28
    db $e4
    ei
    db $fd
    cp $ff
    rst $38
    ld a, a
    rst $38
    ld a, a
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
    add [hl]
    rst $38
    add a
    rst $38
    ld b, c
    rst $38
    ld sp, $10ff
    rst $38
    inc c
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    xor b
    ld d, a
    nop
    rst $38
    jp Jump_000_093f


    rst $38
    dec de
    rst $38
    inc de
    rst $38
    inc bc
    rst $38
    sbc a
    rst $38
    ld a, h
    cp $7c
    db $fc
    db $fc
    db $fc
    ld [hl], b
    adc a
    rst $08
    ldh a, [$f9]
    cp $ff
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    sbc [hl]
    ld a, a
    ld [hl], $cf
    xor $f1
    db $fd
    cp $de
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $30
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
    db $fc
    rst $38
    ld sp, hl
    cp $f8
    rst $38
    ld sp, hl
    cp $fc
    rst $38
    db $fd
    cp $fd
    cp $fb
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
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ld [c], a
    cp $e4
    db $fc
    ret nz

    ld hl, sp-$80
    ld hl, sp-$80
    ldh a, [$a0]
    ldh [rLCDC], a
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    add b
    ldh [$c0], a
    ldh a, [$e0]
    ld hl, sp+$70
    db $fc
    jr c, @+$01

    ccf
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    add b
    rst $38
    ld bc, $02fe
    db $fd
    ld e, d
    and l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0202
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
    ld [$0902], sp
    ld a, [bc]
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
    ld [bc], a
    ld de, $1200
    inc de
    inc d
    dec d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, $17
    jr jr_025_7b44

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    jr nz, jr_025_7b5b

    nop
    ld [hl+], a
    nop
    inc hl
    inc h
    dec h
    nop
    nop
    nop
    nop

jr_025_7b44:
    nop
    nop
    ld h, $02
    daa
    nop
    nop
    jr z, jr_025_7b76

    ld a, [hl+]
    dec hl
    inc l
    nop
    nop
    nop
    nop
    nop
    nop
    dec l
    add hl, bc
    ld l, $00
    cpl

jr_025_7b5b:
    jr nc, @+$0b

    ld sp, $3332
    ld [bc], a
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_025_7b70

    add hl, sp
    ld a, [hl-]
    ld a, [hl-]
    dec sp
    ld [bc], a
    inc a
    dec a
    ld a, $3e

jr_025_7b70:
    ld [bc], a
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, e

jr_025_7b76:
    ld b, h
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld [bc], a
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld [bc], a
    ld d, l
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld [bc], a
    ld [bc], a
    ld l, b
    ld l, c
    ld l, d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld l, e
    ld l, h
    ld a, $6d
    ld a, $6e
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [bc], a
    ld [hl], h
    ld [hl], l
    add hl, bc
    ld [bc], a
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, [hl]
    ld a, a
    ld [bc], a
    ld [bc], a
    add b
    add c
    ld a, e
    ld a, e
    ld a, e
    add d
    add e

jr_025_7be2:
    add h
    add l
    add [hl]
    add a
    adc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    adc c
    adc d
    adc e
    adc h
    adc l
    ld [bc], a
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    sub h
    ld [bc], a
    ld [bc], a
    sub l
    ld [bc], a
    ld [bc], a
    sub [hl]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    sub a
    sbc b
    sbc c
    add hl, bc
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    ld [bc], a
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    ld [bc], a
    ld [bc], a
    xor c
    xor d
    xor e
    xor h
    xor l
    nop
    nop
    nop
    nop
    nop
    nop
    xor [hl]
    xor a
    or b
    or c
    or d
    or e
    jr nc, jr_025_7be2

    or l
    or [hl]
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rlca
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rlca
    inc bc
    nop
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    nop
    nop
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    ld bc, $0101
    ld bc, $0000
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0307
    rlca
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc hl
    inc bc
    inc bc
    inc bc
    ld bc, $0103
    ld bc, $0101
    ld b, c
    ld bc, $0101
    ld bc, $0301
    inc bc
    nop
    nop
    ld bc, $0107
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    inc bc
    nop
    inc bc
    ld bc, $0103
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0103
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0301
    inc bc
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0303
    nop
    inc bc
    nop
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0303
    ld b, e
    ld bc, $0303
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0303
    ld bc, $0301
    inc bc
    nop
    nop
    nop
    inc bc
    dec b
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0105
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0103
    ld bc, $0101
    rlca
    inc bc
    inc bc
    rlca
    rlca
    rlca
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    inc b
    inc bc
    inc bc
    nop
    nop
    rlca
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    rlca
    ld b, e
    inc bc
    inc bc
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
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    add b
    add b
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
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
    ldh [rIE], a
    ret nz

    rst $38
    inc bc
    db $fc
    rrca
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    sbc a
    ldh [$df], a
    ldh [$ef], a
    ldh a, [$c7]
    ld hl, sp-$40
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
    ld bc, $0fff
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
    rst $38
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

jr_025_7e14:
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
    nop
    nop
    add b
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ret nz

    rst $38
    dec d
    ldh [$1f], a
    ldh [$2f], a
    ret nc

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
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0500
    nop
    dec bc
    nop
    daa
    nop
    cpl
    nop
    ldh [rP1], a
    jr c, jr_025_7e14

    rlca
    ld hl, sp+$00
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
    db $fc
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    cp $fc
    cp $fe
    ldh a, [$fe]
    and b
    db $fc
    add b
    db $fc
    rla
    inc bc
    dec bc
    ld bc, $0103
    inc bc
    ld bc, $0001
    inc bc
    nop
    rlca
    nop
    rrca
    nop
    cpl
    nop
    ld l, a
    nop
    cp a
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
    nop
    nop
    nop
    nop
    rst $38
    nop
    rra
    ldh [$7f], a
    add b
    ld [hl], a
    adc b
    rst $38
    nop
    cp a
    ld b, b
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
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38

jr_025_7ee0:
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
    rst $20
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
    db $fc
    rst $38

jr_025_7efe:
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
    ld [bc], a
    db $fc
    jr jr_025_7efe

    jr nz, jr_025_7ee0

    ld b, b
    add b
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
    ret nz

    ld a, a
    ldh a, [$3f]
    ld hl, sp+$1f
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38
    nop
    cp $00
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
    ld bc, $0300
    nop
    rlca
    nop
    nop
    ld bc, $0707
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
    cp $fe
    ld hl, sp-$08
    ldh [$e0], a
    add b
    ret nz

    nop
    nop

Call_025_7f8c:
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
    ld c, $f1
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38

jr_025_7fa2:
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
    inc c
    db $fc
    jr c, jr_025_7fa2

    ld hl, sp-$40
    ld [hl], c
    nop
    ldh a, [rP1]
    ld [hl], d
    nop
    and e
    nop
    rst $20
    nop
    ld c, a
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [$fd00]
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
    ld bc, $0fff
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
    cp $ff
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
    ld bc, $c3ff
    ccf
    daa
    rra
    rra
    rrca
    rrca
    rlca
