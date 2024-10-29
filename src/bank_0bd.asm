SECTION "ROM Bank $0bd", ROMX[$4000], BANK[$bd]

    dec b
    ei
    adc a
    ld [hl], b
    rst $28
    inc de
    add $3b
    inc e
    rst $20
    db $fd
    rlca
    add b
    ld a, a
    cp a
    ld c, a
    rra
    ldh [rIF], a
    ldh a, [$f1]
    ld e, $f0
    ccf
    inc bc
    db $fc
    db $fc
    inc bc
    ld b, b
    cp a
    inc hl
    call c, $e916
    rst $38
    nop
    ld [hl], e
    adc h
    adc a
    ldh a, [rP1]
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
    and b
    ld a, a
    ldh [$1f], a
    ldh [$1f], a
    rst $38
    nop
    inc bc
    db $fc
    db $e3
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
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld b, b
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

jr_0bd_4067:
    ret nz

    cp a
    ld h, c
    cp [hl]
    ld h, e
    cp [hl]
    ld h, e
    cp h
    ld h, a
    cp b
    ld l, a
    or a
    ld a, a
    and b
    ld a, a
    xor e
    ld a, a
    inc h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    jr nz, jr_0bd_4067

    call nz, $e83f
    rra
    ret z

    ccf
    add sp, $1f
    ldh a, [$1f]
    ldh a, [$1f]
    ldh [$3f], a
    ldh a, [$3f]
    ret c

    ld a, a
    ld c, b
    rst $38
    rrca
    ldh a, [$9f]
    ldh [rIE], a
    nop
    add b
    rst $38
    ldh [$1f], a
    ld [hl], b
    rst $08
    rst $38
    add b
    pop hl
    cp $21
    cp $83
    db $fc
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
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
    nop

jr_0bd_40c2:
    nop
    rst $38

jr_0bd_40c4:
    ld hl, sp+$07

jr_0bd_40c6:
    and $19

jr_0bd_40c8:
    dec a
    jp $c03f


jr_0bd_40cc:
    rrca
    ldh a, [rSB]
    rst $38
    ld bc, $08ff
    rst $38
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    pop bc
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
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
    rst $00
    jr c, jr_0bd_40c2

    jr nc, jr_0bd_40c4

    jr nc, jr_0bd_40c6

    jr nc, jr_0bd_40c8

    jr nc, @-$2f

    jr nc, jr_0bd_40cc

    jr nc, @+$01

    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    ldh [rIE], a
    rlca
    rst $38
    nop
    rst $38
    ccf
    rst $38
    ld e, a
    rst $38
    ret nz

    ccf
    nop
    rst $38
    ldh [$3f], a
    ret nz

    ld a, a
    ret nz

    ld a, a
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
    db $db
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    and b
    rst $38
    add b
    rst $38
    ld [de], a
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    add [hl]
    rst $38
    xor [hl]
    rst $38
    di
    rst $38
    rra
    rst $38
    nop
    rst $38
    ccf
    rst $38
    db $e3
    rst $38
    xor $ff
    cp d
    rst $38
    rst $10
    rst $38
    add hl, bc
    rst $38
    db $e3
    rst $38
    rra
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
    ld b, b
    rst $38
    db $10
    rst $38
    ldh [$1f], a
    ldh [$3f], a
    ld a, a
    add b
    ld a, a
    add b
    jr @+$01

    rrca
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    db $e4
    rst $38
    nop
    rst $38
    ld [de], a
    rst $38
    ld l, b
    rst $38
    rst $38
    nop
    inc bc
    db $fc
    nop
    rst $38
    jr nz, @+$01

    ret nc

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
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    rlca
    ld hl, sp-$10
    rrca
    ld h, h
    sbc e
    ld [hl], $c9
    rst $28
    db $10
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    ld a, b
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    ld hl, $2fff
    rst $38
    ld c, h
    rst $38
    rla
    rst $38
    db $dd
    rst $38
    sbc $ff
    ei
    rst $38
    rla
    rst $38
    call c, $beff
    rst $38
    ccf
    rst $38
    ld a, l
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    push af
    rst $38
    cp a
    rst $38
    db $fd
    rst $38
    cp $ff
    cp $ff
    ld a, [$f7ff]
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    inc b
    rst $38
    db $10
    rst $38
    ld h, b
    rst $38
    jr @+$01

    ld c, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    and b
    ld a, a
    ld hl, sp+$07
    add sp, $1f
    ld a, a
    add b
    ld [hl], b
    rst $38
    ld b, d
    rst $38
    adc d
    rst $38
    ld b, c
    rst $38
    jr nc, @+$01

    ld [hl+], a
    rst $38
    ld d, d
    rst $38
    rst $38
    nop
    cp $01
    ld a, l
    cp $00
    rst $38
    ld a, a
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    cp $ff
    ld [hl], b
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $00ff
    rst $38
    inc c
    rst $38
    rra
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
    ccf
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ret nz

    rst $38
    ld hl, sp-$01
    ld [hl], b
    rst $38
    ld [$01ff], sp
    rst $38
    ldh [rIE], a
    rra
    rst $38
    ld bc, $feff
    rst $38
    add d
    db $fd
    ld a, [hl]
    rst $38
    rlca
    ld sp, hl
    ccf
    cp $0f
    rst $38
    ld [bc], a
    db $fd
    ld a, [de]
    db $fd
    add c
    rst $38
    add c
    rst $38
    ccf
    cp $c0
    rst $38
    rst $38
    rst $38
    inc c
    rst $38
    ret nz

    rst $38
    db $e4
    rst $38
    ret nz

    rst $38
    db $db
    rst $38
    xor a
    rst $38
    jp hl


    rst $38
    ld [c], a
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    add b
    rst $38
    rst $38
    nop
    sbc $21
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld b, h
    rst $38
    ld d, $ff
    ld bc, $44ff
    rst $38
    rst $38
    nop
    nop
    rst $38
    ld h, c
    rst $38
    call $ffff
    nop
    rst $38
    nop
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
    cp $ff
    rst $38
    rst $38
    pop hl
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    ld [$80f7], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, a

jr_0bd_42ed:
    rst $30
    ld [$88f7], sp
    rst $30
    db $fc
    rst $38
    db $fd
    jp nz, $eff0

    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, c
    sbc a
    ld hl, $40df
    cp a
    jr nz, @-$1f

    ld b, b
    cp a
    add sp, -$01
    ld b, b
    cp a
    jr nz, jr_0bd_42ed

    ld b, b
    cp a
    sub b
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    ld bc, $fcfe
    rst $38
    dec bc
    rst $30
    ld c, b
    or a
    ld [c], a
    db $fd
    rst $38
    rst $38
    inc h
    db $db
    ld d, h

jr_0bd_432b:
    xor a
    rst $38
    rst $38
    ld a, b
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ld [bc], a
    rst $38
    dec c
    rst $38
    rst $18
    rst $38
    ld l, a
    rst $38
    rra
    rst $38
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ldh [$1f], a
    jr nz, jr_0bd_432b

    ld bc, $08ff
    rst $38
    nop
    rst $38
    adc b
    rst $38
    db $10
    rst $38
    inc bc
    db $fc
    pop bc
    ccf
    ld [bc], a
    rst $38
    ei
    inc b
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
    rst $38
    nop
    rst $38
    ld [$7cff], sp
    rst $38
    cp $ff
    ld a, a
    rst $38
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    add c
    rst $38
    ld [$00ff], sp
    rst $38
    di
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    db $10
    rst $38
    rlca
    rst $38
    ld [hl+], a
    db $dd
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    add b
    rst $38
    cp $ff
    ldh [rIE], a
    rst $38
    rst $38
    ld b, $ff
    ld e, e
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
    ccf
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    cpl
    rst $38
    rra
    rst $38
    rrca
    rst $38
    dec hl
    rst $38
    rst $38
    rst $38
    db $10
    rst $38
    inc bc
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    ld a, c
    rst $38
    ld hl, sp-$01
    jr nc, @+$01

    rst $38
    rst $38
    inc a
    rst $38
    jr nc, @+$01

    ld a, h
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $0ffe
    ldh a, [$03]
    db $fc
    rra
    ldh [rOBP1], a
    or $1e
    pop hl
    dec bc
    db $f4
    ccf
    ret nz

    rrca
    ldh a, [$7b]
    add h
    dec c
    ld a, [c]
    rst $30
    ld [$a0df], sp
    rst $38
    nop
    or $09
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
    rst $38
    ccf
    rst $38
    nop
    rst $38
    add b
    rst $38
    rrca
    rst $38
    add c
    rst $38
    ldh a, [rIE]
    ccf
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    db $10
    rst $38
    ld bc, $20ff
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $00
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld [bc], a
    rst $38
    ld b, b

jr_0bd_4437:
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    inc [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    or e
    rst $38
    ldh [rIE], a
    rra
    rst $38
    rst $38
    rst $38
    db $10
    rst $28
    ld a, h
    add e
    ld a, h
    add e
    ld a, $df
    jr c, jr_0bd_4437

    ld hl, sp-$01
    rst $38
    rst $38
    inc de
    rst $28
    inc de
    rst $28
    ld hl, sp-$01
    ld bc, $0eff
    rst $38
    jr c, @+$01

    inc bc
    rst $38
    ld a, l
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    rst $38
    nop
    rst $38
    ld a, b
    rst $38
    ldh [rIE], a
    ld bc, $f0ff
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
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp+$07
    ld hl, sp-$19
    cp $e1
    rst $38
    ld a, a
    rst $38
    or b
    rst $38
    rrca
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    jp c, Jump_000_0025

    rst $38
    ret nz

    ld a, a
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    add [hl]
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    dec b
    rst $38
    ld b, $ff
    rrca
    rst $38
    rrca
    rst $38
    add a
    rst $38
    rla
    rst $38
    dec e
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
    pop af
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld [hl], b
    rst $38
    ret c

    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    add b
    rst $38
    ld a, [bc]
    rst $38
    ld c, $ff
    adc [hl]
    rst $38
    rst $38
    rst $38
    rst $38
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
    ret nz

    ccf
    ld h, b
    sbc a
    ret nz

    ccf
    ldh [$1f], a
    db $fc
    inc bc
    ld [hl], c
    adc a
    ld a, [c]
    rrca
    or b
    ld e, a
    ccf
    ret nz

    jp nz, $fd3f

    inc bc
    add b
    ld a, a
    ld a, h
    add e
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
    add b
    rst $38
    ldh [$1f], a
    ld hl, sp-$79
    cp $41
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    add b
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    rst $38
    rst $38
    nop
    rst $38
    ld a, a
    ret nz

    ld a, $f1
    nop
    rst $38
    rlca
    db $fc
    inc bc
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
    rst $18
    rst $38
    ld a, e
    rst $38
    cp a
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
    ld a, e
    rst $38
    add e
    rst $38
    call nc, Call_000_05ff
    rst $38
    ld c, c
    rst $38
    inc a
    rst $38
    dec b
    rst $38
    ld [$0cff], sp
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    inc e
    rst $38
    jp $e0ff


    rst $38
    pop af
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $01fe
    cp $78
    add a
    rrca
    ldh a, [rNR41]
    rst $38
    ld b, b
    rst $38
    ld [$04ff], sp
    rst $38
    inc b
    rst $38
    rst $38
    nop
    add d
    rst $38
    rrca
    ldh a, [rNR10]
    rst $38
    nop
    rst $38
    db $e4
    rra
    db $fc
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
    add b
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
    rst $38
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$01
    cp $00
    rst $38
    ldh [$1f], a
    cp $01
    rst $38
    add b
    inc bc
    db $fc
    inc bc
    db $fc
    nop
    rst $38
    rlca
    ld hl, sp+$7f
    add b
    nop
    rst $38
    inc bc
    db $fc
    inc bc
    db $fc
    ld b, d
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0bd_4615:
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    nop
    rst $38
    ldh [rIE], a
    and b
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    ld bc, $f3ff
    rst $38
    rst $08
    rst $38
    ccf
    rst $38
    nop
    rst $38
    ldh [$1f], a
    jr nz, jr_0bd_4615

    ldh [$1f], a
    ld e, $e1
    ld bc, $03fe
    db $fc
    inc b
    rst $38
    jr nz, @+$01

    rst $38
    nop
    ccf
    ret nz

    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ld b, l
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
    ret nz

    ccf
    ldh a, [rIF]
    db $fc
    inc bc
    rst $38
    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ld [hl], b
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
    add b
    ld a, a
    ret nz

    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [$e1], a
    rra
    rst $38
    nop
    ld a, h
    add e
    add b
    ld a, a
    rst $38
    nop
    ld a, h
    add e
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
    ld a, a
    rst $38
    nop
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    inc bc
    rst $38
    ret nz

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
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ret nz

    ld a, a
    ld [hl], b
    adc a
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    add b
    rst $38
    ldh a, [rIE]
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
    pop bc
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    add b
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ret nz

    ccf
    ldh a, [rIF]
    db $fd
    add d
    cp $41
    ccf
    ldh a, [rIF]
    ld hl, sp-$39
    inc a
    inc bc
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    ret nz

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
    nop
    rst $38
    ld bc, $fffe
    ld bc, $ff00
    rst $38
    nop
    ccf
    ret nz

    ret nz

    ccf
    rst $38
    nop
    ld hl, sp-$01
    add a
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
    ld a, a
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    nop
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
    ld a, a
    ldh [$1f], a
    ld hl, sp+$07
    cp $01
    rst $38
    nop
    rst $38
    cp $ff
    add b
    rst $38
    ld b, b
    rst $38
    ld [hl], b
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    cp $ff
    cp $ff
    rst $08
    rst $38
    ldh [rIE], a
    nop
    rst $38
    ei
    rst $38
    rra
    rst $38
    ld bc, $02ff
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld hl, sp+$67
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    rra
    ldh [rIE], a
    nop
    add b
    ld a, a
    ld l, a
    sub b
    di
    inc c
    ld bc, $4fff
    ld hl, sp-$05
    rlca
    sub b
    ld a, a
    add b
    rst $38
    rst $38
    nop
    add b
    ld a, a
    ld [bc], a
    rst $38
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
    db $fc
    inc bc
    di
    inc c
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    inc bc
    rst $38
    db $10
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
    ldh [$1f], a
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld h, b
    rst $38
    rra
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
    ldh [rIE], a
    rra
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    rlca
    rst $38
    inc bc
    rst $38
    call z, $c0ff
    ccf
    add b
    ld a, a
    ld h, b
    sbc a
    add c
    ld a, a
    ld a, h
    add e
    inc bc
    db $fc
    nop
    rst $38
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ld bc, $02ff
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    or b
    rst $38
    ccf
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
    ret nz

    ccf
    ldh a, [rIF]
    db $fc
    jp $60ff


    rst $38
    ld b, b
    rst $38
    inc a
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
    jr @+$01

    ldh [rIE], a
    rlca
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    ld c, $ff
    rst $08
    rst $38
    cp $ff
    db $e3
    rst $38
    ld e, l
    and d
    inc e
    db $e3
    cp $01
    ld sp, hl
    ld b, $07
    ld hl, sp-$01
    jr nz, jr_0bd_48a9

    db $d3
    ld e, $e1
    rlca
    ld hl, sp+$07
    ld hl, sp-$08
    rlca
    nop
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ld hl, sp+$07
    ld a, a
    add b
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
    ret nz

    ccf
    ldh a, [rIF]
    db $fc
    inc bc
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    nop

jr_0bd_48a9:
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    ld [$f0ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    ld [hl], b
    rst $38
    add b
    rst $38
    rlca
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [$30]
    rst $28
    ld [bc], a
    db $fd
    rrca
    ld hl, sp+$07
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    cp $01
    ld bc, $80fe
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0701
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
    nop
    ld bc, $0d01
    ld c, $0f
    db $10
    ld de, $0012
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $1413
    dec d
    ld d, $17
    jr jr_0bd_4949

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
    ld e, $1f
    jr nz, jr_0bd_4961

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a

jr_0bd_4949:
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0bd_4979

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0bd_4991

    nop

jr_0bd_4961:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0bd_49a9

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl-]

jr_0bd_4979:
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    nop

jr_0bd_4991:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, d

jr_0bd_49a9:
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $7b7a
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $8101
    add d
    add e
    add h
    add l
    add [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $8887
    adc c
    adc d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $8b01
    adc h
    adc l
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    dec b
    dec b
    dec b
    ld bc, $0505
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0501
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc bc
    db $fc
    rrca
    ldh a, [$3f]
    ret nz

    rst $38
    nop
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    daa
    rst $38
    ld bc, $10ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld a, b
    rst $38
    ldh [rIE], a
    ld a, a
    rst $38
    rlca
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    rlca
    rst $38
    cp $01
    ld hl, sp+$07
    ldh a, [rIF]
    nop
    rst $38
    nop
    rst $38
    cp $07
    ldh a, [rIF]
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
    ret nz

    ccf
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
    inc bc
    db $fc
    rrca
    rst $38
    ccf
    call c, $67ff
    rst $38
    jr c, @+$01

    ld [hl], b
    rst $38
    inc c
    rst $38
    ld a, $ff
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ld de, $e0ff
    rra
    rst $38
    nop
    ld hl, sp+$07
    nop
    rst $38
    ld hl, sp+$07
    add b
    ld a, a
    rst $38
    ld bc, $ff00
    db $10
    rst $28
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
    cp a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld bc, $07fe
    ei
    ccf
    call c, $f1ff
    rst $38
    pop hl
    rst $38
    sbc a
    rst $38
    ldh [rIE], a
    nop
    rst $38
    rla
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    ld b, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    jp nz, Jump_000_3c3f

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
    rst $38
    rst $38
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
    nop
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
    ei
    rra
    cp $7f
    sbc h
    rst $38
    jr @+$01

    ldh [rIE], a
    nop
    rst $38
    ld [$10ff], sp
    rst $38
    add c
    rst $38
    jr nz, @+$01

    nop
    rst $38
    rst $38
    rst $38
    inc e
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld a, $c3
    db $fc
    rlca
    nop
    rst $38
    ld h, b
    cp a
    ret nz

    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ldh a, [rIE]
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    ld bc, $80fe
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    ld [hl+], a
    db $fd
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    nop
    rst $38
    rst $38
    rlca
    ld hl, sp+$07
    ei
    rlca
    ld hl, sp+$07
    ei
    inc b
    ld hl, sp+$07
    ld sp, hl
    rlca
    ld sp, hl
    ld b, $f9
    ld b, $f8
    rlca
    ld hl, sp+$07
    ld hl, sp+$1f
    rst $38
    ld a, a
    cp a
    rst $38
    ld [hl], a
    rst $38
    rst $00
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    sub b
    rst $38
    nop
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop

jr_0bd_4d43:
    rst $38
    rst $38
    rst $38
    inc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp+$27
    rlca
    ld hl, sp+$03
    db $fc
    db $fc
    inc bc
    cp $01
    jr jr_0bd_4d43

    rst $38
    nop
    db $fc
    inc bc
    sbc h
    rst $38
    ld a, $ff
    ld bc, $7fff
    rst $38
    rst $38
    rst $38
    ld bc, $06ff
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    add b
    rst $38
    add b
    rst $38
    rst $08
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ld a, [c]
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    cp $ff
    rst $28
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    inc de
    rst $28
    add a
    ld a, b
    cpl
    rst $18
    rst $38
    rst $38
    nop
    rst $38
    cpl
    rst $18
    rlca
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
    ld h, $ff
    rst $38
    rst $38
    ld hl, sp-$01
    rlca
    rst $38
    rst $38
    rst $38
    ld e, h
    rst $38
    rst $28
    rst $38
    cp $ff
    rst $38
    rst $38
    ccf
    rst $38
    jp Jump_0bd_7cff


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rra
    rst $38
    add d
    rst $38
    ld bc, $02ff
    rst $38
    pop af
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    dec a
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    ldh a, [rIE]
    pop bc
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
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
    adc b
    rst $38
    nop
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    ld c, a
    rst $38
    rra
    rst $38
    rrca
    rst $38
    scf
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    cp $81
    or b
    ld c, a
    ret z

    rst $30
    or $f9
    rrca
    rst $38
    cp $ff
    db $fc
    rst $38
    ld a, $ff
    ret nz

    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    cp $ff
    pop hl
    rst $38
    nop
    rst $38
    pop af
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    add c
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    xor $ff
    rst $38
    rst $38
    and l
    rst $38
    add b
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    ld d, a
    rst $38
    inc bc
    rst $38
    ld de, $3fff
    rst $38
    rla
    rst $38
    ld c, $ff
    rst $38
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    scf
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    call nc, $faff
    rst $38
    ld sp, hl
    rst $38
    db $fc
    rst $38
    db $f4
    rst $38
    ei
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
    rrca
    rst $38
    db $10
    rst $38
    ld bc, $00ff
    rst $38
    ldh a, [rIF]
    rst $38
    nop
    db $fd
    ld [bc], a
    cp $01
    rra
    di
    ld [hl], b
    adc a
    add b
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    rra
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    pop af
    rst $38
    scf
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
    rst $38
    rst $18
    rst $38
    adc a
    rst $38
    rra
    rst $38
    rrca
    rst $38
    sbc a
    rst $38
    rlca
    rst $38
    add a
    rst $38
    rst $30
    rst $38
    ld a, c
    rst $38
    cp $ff
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
    jp nz, Jump_000_07ff

    rst $38
    ld sp, hl
    rst $38
    db $10
    rst $38
    ld a, [c]
    db $fd
    add b
    rst $38
    ld h, b
    rst $38
    db $e4
    ei
    ld bc, $00fe
    rst $38
    add c
    rst $38
    cp $ff
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
    ld a, a
    rst $38
    rrca
    rst $38
    ld a, b
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    ret nz

    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc e
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
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    add e

jr_0bd_4f4f:
    rst $38
    ld sp, hl
    rst $38
    rst $00
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    rst $38

jr_0bd_4f59:
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    or $ff
    nop
    rst $38
    db $f4
    rst $38
    ld e, [hl]
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    dec b
    rst $38
    dec a
    jp $817e


    ld a, a
    add b
    rst $38
    rst $38
    ld a, b
    add a
    rst $38
    rst $38
    ccf
    rst $08
    ld a, a
    rst $38
    jr c, jr_0bd_4f4f

    jr nc, jr_0bd_4f59

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
    nop
    rst $38
    sbc [hl]
    ld h, c
    rst $38
    rst $38
    rlca
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    ret nz

    rst $38
    nop
    ld hl, sp+$07
    nop
    rst $38
    add c
    cp $00
    rst $38
    nop
    rst $38
    db $fd
    rst $38
    add b
    rst $38
    ld a, h
    rst $38
    db $e4
    rst $38
    rst $38
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
    cp $ff
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    adc $ff
    db $fc
    rst $38
    or h
    rst $38
    rst $38
    rst $38
    ld h, b
    rst $38
    ld d, b
    rst $38
    db $d3
    rst $38
    inc e
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    add d
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    ld b, e
    cp a
    db $fc
    rst $38
    rst $38
    rst $38
    nop

Jump_0bd_4fff:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    ld a, a
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
    rst $38
    rst $38
    db $fc
    rst $38
    add b
    rst $38
    ld [$70ff], sp
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    inc bc
    rst $38
    rst $38
    rst $38
    nop
    ccf
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    add hl, sp
    rst $00
    cp $01
    rst $38

jr_0bd_5039:
    rst $38
    ccf
    rst $18
    ld hl, sp-$19
    ld hl, sp-$19
    jr c, jr_0bd_5039

    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], b
    rst $28
    jr @+$01

    ld hl, sp-$01
    sub b
    rst $28
    rst $38
    rst $38
    db $10
    rst $28
    adc b
    ld [hl], a
    jr @-$17

    rst $38
    rst $38
    ld e, $ff
    ldh a, [rIE]
    rra
    rst $38
    inc bc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    rra
    rst $38
    db $10
    rst $28
    ccf
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    di
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    inc c
    di
    inc bc
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    nop
    rst $38
    dec e
    ld [c], a
    jr nz, @-$1f

    rst $38
    rst $38
    db $d3
    rst $28
    nop
    rst $38
    nop
    rst $38
    ld c, $f1
    rst $38
    nop
    ld h, b
    sbc a
    add b
    ld a, a
    nop
    rst $38
    rrca
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    dec hl
    rst $38
    rlca
    rst $38
    jr @+$01

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
    sub b
    rst $38
    db $fc
    rst $38
    db $fc
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
    dec a
    rst $38
    ld [hl], a
    rst $38
    ld a, $ff
    adc $ff
    rlca
    rst $38
    inc bc
    rst $38
    ei
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    cp $ff
    inc a
    rst $38
    rst $38
    rst $38
    inc e
    rst $38
    ld h, b
    rst $38
    add b
    rst $38
    db $fc
    rst $38
    di
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    db $eb
    rst $38
    adc l
    rst $38
    dec h
    rst $38
    inc de
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    rra
    rst $38
    nop
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    rrca
    rst $38
    dec b
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
    inc bc
    db $fc
    nop
    rst $38
    ld bc, $80fe
    ld a, a
    pop hl
    rra
    add b
    ld a, a
    ld a, a
    add b
    ld a, a
    add b
    ld a, b
    add a
    ccf
    ret nz

    ld a, e
    add h
    db $fd
    ld [bc], a
    or $09
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    ei
    inc b
    rst $38
    nop
    db $10
    rst $38
    and b
    ld e, a
    ld de, $00ef
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    cp b
    ld b, a
    rrca
    ldh a, [rPCM12]
    adc a
    ld c, $f1
    rrca
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    add b
    ld a, a
    inc bc
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
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    nop

jr_0bd_51a7:
    rst $38
    nop
    rst $38
    ccf
    ret nz

    di
    rst $38
    rra
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
    ldh a, [rIF]
    rra
    ldh [$e0], a
    rra
    rst $38
    add b
    nop
    rst $38
    ld b, d
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    db $fc
    rra
    inc hl
    rst $18
    ld a, a
    ret nz

    ld c, $f9
    cp d
    rst $20
    ld a, l
    jp $817e


    ld b, h
    cp a
    jr c, jr_0bd_51a7

    sub h
    ei
    inc de
    rst $38
    rst $38
    nop
    rra
    ldh a, [$7f]
    ret nz

    ld h, $ff
    ld [bc], a
    rst $38
    ld l, e
    rst $38
    nop
    rst $38
    jr @+$01

    pop bc
    ccf
    ccf
    ret nz

    ld [$0fff], sp
    ldh a, [rIE]
    nop
    ld bc, $1ffe
    ldh [rP1], a
    rst $38
    rlca
    ld hl, sp+$00
    rst $38
    inc de
    cp $fe
    ld bc, $f00f
    ld [$ffff], sp
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ld a, c
    rst $38
    nop
    rst $38
    inc c
    di
    nop
    rst $38
    dec e
    ld [c], a
    ld sp, $fcce
    inc bc
    jr nz, @+$01

    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $1fff
    rst $38
    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    nop
    rst $38
    db $fc
    inc bc
    inc bc
    db $fc
    ld sp, $7efe
    add c
    ld a, a
    add b
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
    ld d, b
    rst $38
    rlca
    ld hl, sp-$03
    add d
    jp Jump_000_20fc


    rst $38
    ret nz

    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    ld bc, $80ff

jr_0bd_5277:
    rst $38
    ldh a, [rIF]
    ldh a, [$1f]
    rst $38
    nop
    ldh a, [rIF]
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    pop af
    rst $38

jr_0bd_5288:
    rrca
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    and b
    jr nz, jr_0bd_52b3

    and b
    and b
    jr nz, jr_0bd_5277

    ld h, b
    ldh [$60], a
    nop
    ldh [$e0], a
    ld [hl], b
    ldh a, [rOBP0]
    ld hl, sp+$44
    jr jr_0bd_5288

    inc e
    ld [c], a
    ld e, $e1
    adc a
    ld [hl], b
    rlca
    ld hl, sp+$03
    db $fc
    rst $38
    ld h, b
    rst $38
    ldh [$fc], a

jr_0bd_52b3:
    db $e3
    ld hl, sp-$19
    ld a, a
    ldh [$3c], a
    db $e3
    nop
    rst $38
    ccf
    ldh a, [rP1]
    rst $38
    ld l, a
    ld hl, sp+$0f
    ld hl, sp-$7a
    ld a, l
    rst $00
    inc a
    inc bc
    cp $e2
    rra
    ld hl, $3fdf
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    inc bc
    rst $38
    rst $00
    rst $38
    inc hl
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, e
    rst $38
    ld a, h
    rst $38
    nop
    rst $38
    ld hl, sp-$01
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
    ld hl, sp-$01
    add a
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
    ldh [rIE], a
    ldh a, [$7f]
    ld hl, sp-$01
    db $fc
    ld a, a
    db $fc
    rst $38
    cp $ff
    rst $38
    inc de
    rst $38
    rst $38
    rst $38
    ld c, $ff
    inc bc
    rst $38
    nop
    rst $38
    adc h
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    jr @+$01

    inc e
    db $e3
    add e
    db $fc
    cp $01
    ldh [$1f], a
    ld a, $c1
    rra
    ldh [rP1], a
    rst $38
    nop
    rst $38
    inc c
    ei
    nop
    rst $38
    add [hl]
    ld a, l
    rst $38
    nop
    ld [c], a
    rra
    add b
    ld a, a
    add c
    ld a, a
    ld hl, sp+$07
    rlca
    rst $38
    nop
    rst $38
    add a
    rst $38
    rst $08
    rst $38
    add b
    rst $38
    cp $ff
    inc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
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
    nop
    rst $38
    nop
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

    cp a
    ldh [$9f], a
    ldh a, [$1f]
    ldh a, [$3f]
    ld hl, sp-$69
    db $fc
    inc de
    cp $01
    rst $38
    add c
    rst $38
    nop
    rst $38
    add b
    rst $38
    db $f4
    rst $38
    add b
    rst $38
    inc hl
    rst $38
    add b
    rst $38
    ld hl, sp-$01
    pop bc
    rst $38
    cp $ff
    ldh a, [rIE]
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    ld b, b
    rst $38
    rra
    ldh [rNR41], a
    rst $38
    ld a, $e1
    ldh a, [$1f]
    rra
    ldh [$6f], a
    sbc b
    adc a
    ld a, b
    rst $38
    nop
    ld bc, $06fe
    ld sp, hl
    rra
    ld [c], a
    inc bc
    db $fc
    ld bc, $ffff
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [$1f]
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    cp $03
    cp $21
    rst $38
    rlca
    rst $38
    ld hl, sp-$01
    inc a
    rst $38
    inc b
    rst $38
    ld b, $ff
    pop af
    rst $38
    pop af
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $ff
    ldh a, [rIE]
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
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
    ldh [$3f], a
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp-$39
    db $fc
    rlca
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    rst $38
    ldh [rIE], a
    inc e
    rst $38
    ld [hl], b
    rst $38
    add b
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
    nop
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    nop
    nop
    nop
    nop
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_0bd_5471

jr_0bd_5471:
    nop
    nop
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    nop
    nop
    nop
    nop
    dec h
    ld a, [de]
    ld h, $27
    jr z, jr_0bd_54b3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    nop
    nop
    nop
    nop
    jr nc, jr_0bd_54b0

    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0bd_54d8

    ld a, [hl-]
    nop
    nop
    nop
    nop
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

jr_0bd_54b0:
    nop
    nop
    nop

jr_0bd_54b3:
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    ld e, a
    ld h, b
    ld h, c
    ld h, d

jr_0bd_54d8:
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    nop
    nop
    nop
    nop
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
    halt
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    sbc e
    ld a, c
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
    nop
    nop
    nop
    nop
    and [hl]
    ld a, c
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    xor l
    xor l
    xor l
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
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    nop
    nop
    nop
    nop
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    nop
    nop
    nop
    nop
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    nop
    nop
    nop
    nop
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    nop
    nop
    nop
    nop
    xor a
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld bc, $0101
    ld bc, $0101
    ld bc, $0603
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    nop
    ld [bc], a
    ld b, $06
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    ld b, $07
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0105
    ld bc, $0101
    ld bc, $0000
    ld b, $06
    rlca
    ld [bc], a
    ld [bc], a
    ld bc, $0505
    dec b
    ld bc, $0101
    ld bc, $0001
    nop
    ld b, $07
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0505
    dec b
    ld bc, $0101
    ld bc, $0301
    ld b, $06
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0201
    ld b, $07
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0401
    dec b
    ld [bc], a
    dec b
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld bc, $0101
    ld bc, $0504
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld bc, $0202
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld bc, $0101
    ld bc, $0504
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld bc, $0105
    ld bc, $0101
    inc b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    dec b
    ld bc, $0501
    ld bc, $0101
    ld bc, $0505
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    dec b
    ld bc, $0105
    ld bc, $0101
    ld [bc], a
    ld bc, $0305
    ld [bc], a
    ld [bc], a
    nop
    dec b
    dec b
    ld bc, $0505
    ld bc, $0101
    ld bc, $0102
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
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
    ld bc, $0101
    ld bc, $0026

jr_0bd_56c6:
    nop
    nop
    nop
    nop
    nop
    nop

jr_0bd_56cc:
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
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    inc b
    ei
    dec bc
    db $f4
    rla
    add sp, $0e
    ldh a, [$3c]
    ret nz

    inc e
    ldh [rNR23], a
    ldh [$28], a
    ret nc

    jr z, jr_0bd_56c6

    ld [$18f0], sp
    ld h, b
    jr z, jr_0bd_56cc

    inc c
    ldh a, [rLCDC]
    cp h
    xor b
    ld d, [hl]
    db $10
    xor $00
    cp $00
    cp $11
    xor $90

jr_0bd_570b:
    ld c, a
    ld d, h
    dec hl
    jp nc, Jump_0bd_7f2d

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
    ld a, a
    rlca
    ld a, a
    inc bc
    ccf
    di
    rrca
    ld [hl], e
    rrca
    ld h, a
    rra
    ld l, [hl]
    ld e, $58
    jr c, jr_0bd_570b

    ld h, c
    add b
    add a
    nop
    rra
    add e
    inc b
    rrca
    nop
    nop
    rrca
    nop
    rst $00
    nop
    rst $20
    inc bc
    rst $20
    ld c, $ef
    rra
    db $fc
    ld a, [hl]
    pop af
    db $fc
    pop hl
    ldh a, [$89]
    ldh [rNR23], a
    add b
    ld a, c
    nop
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    rst $38
    inc b
    ei
    inc c
    di
    ld e, $e1
    ld a, [hl]
    add c
    rst $38
    rst $38
    cp $01
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
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
    cp d
    ld b, l
    dec [hl]
    jp z, $ff00

    or b
    ld c, a
    rst $38
    nop
    cp e
    ld b, h
    ld a, d
    add l
    ld a, a
    add b
    ld e, c
    and [hl]
    ld e, l
    and d
    ld a, a
    add b
    ld a, $c1
    db $fc
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    add c
    cp $07
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$3e], a
    ret nz

    inc a
    ret nz

    inc a
    ret nz

    ld a, h
    add b
    inc a
    ret nz

    inc a
    ret nz

    inc a
    ret nz

    ld a, $c0
    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp-$79
    ld hl, sp-$7f
    cp $80
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
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
    ccf
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    ldh a, [$f0]
    ldh [$e3], a
    add b
    adc a
    inc bc
    inc l
    rra
    ldh [rIF], a
    ldh a, [$6f]
    sub b
    rst $28
    ld de, $638f
    rlca
    ld [c], a
    rra
    ld hl, sp+$7e
    pop af
    jp c, $f2e1

    adc c
    jp nz, $8239

    ld a, c
    inc bc
    cp $07
    rst $38
    ld a, e
    cp $ff
    rst $38
    ld c, $f1
    ld e, $e1
    ld a, [hl]
    add c
    cp $01
    rst $38
    nop
    ld hl, sp+$07
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    rst $38
    rst $38
    cp $3f
    pop bc
    rst $38
    rst $38
    ccf
    rst $00
    rst $38
    rst $38
    sbc a
    ld a, a
    cp a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    ld [bc], a
    ei
    inc b
    db $f4
    dec bc
    ld h, [hl]
    sbc c
    adc b
    ld [hl], a
    sbc b
    ld h, a
    ld hl, sp+$07
    ld h, d
    sbc l
    db $ec
    inc de
    pop af
    ld c, $ea
    dec d
    ld h, h
    sbc e
    nop
    rst $38
    ld e, b
    and a
    pop bc
    ld a, $83
    ld a, h
    sub b
    ld l, a
    jp z, $8235

    ld a, l
    nop
    rst $38
    ret nz

    ccf
    add sp, $17
    add b
    ld a, a
    db $e4
    dec de
    nop
    rst $38
    rrca
    ldh a, [rIE]
    nop
    db $fc
    nop
    ldh [rP1], a
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
    ldh [rP1], a
    ld hl, sp+$00
    rst $38
    nop
    ld a, a
    add b
    inc c
    di
    nop
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    ldh a, [$f1]
    ret nz

    rst $00
    nop
    rra
    nop
    ld a, a
    nop
    add hl, de
    nop
    jr nc, jr_0bd_58a6

    inc hl

jr_0bd_58a6:
    inc bc
    db $d3
    rst $38
    ld b, $ff
    nop
    ld a, [hl]
    pop af
    ret c

    rst $20
    ldh a, [$8f]
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    ld bc, $07fe
    ld hl, sp+$0f
    ldh a, [rNR23]
    ldh [$7f], a
    rst $38
    rst $38
    db $e3
    db $fc
    rra

jr_0bd_58c6:
    rst $38
    rst $38
    db $fc
    inc bc
    jp $cf3c


    jr nc, jr_0bd_58c6

    ld [$ff0f], sp
    ld a, a
    add e
    ld a, a
    add a
    ld a, a
    adc a
    cp a
    ld e, a
    xor a
    ld e, a
    rst $28
    ld e, a
    rst $28
    rst $18
    rst $18
    rst $28
    rst $18
    rst $28
    rst $18
    rst $28
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $853c


    ld a, d
    ld [hl+], a
    db $dd
    ld c, h
    or e
    ld c, d
    or l
    ld [$10f7], sp
    rst $28
    ld [$bff7], sp
    rst $38
    rst $38
    cp $fb
    rst $38
    ld [hl], e
    cp $be
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    scf
    rst $38
    add e
    ld a, h
    ld d, $e9
    ld e, $e1
    inc e
    db $e3
    dec [hl]
    jp z, $dc23

    ld h, e
    sbc h
    ld b, $f9
    nop
    rst $38
    cp $01
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
    nop
    nop
    nop

jr_0bd_5939:
    nop
    dec b
    inc bc
    or $0e
    jr jr_0bd_5939

    ldh [$e3], a
    add c
    adc [hl]
    inc bc
    inc a
    ld a, [bc]
    push af
    dec h
    jp c, $ff01

    rrca
    rst $30
    db $fd
    ld c, $3f
    ld hl, sp+$6c
    pop af
    ld hl, sp-$3a
    ld h, b
    sbc [hl]
    ret nz

    ld a, $00
    cp $00
    db $fc
    inc bc
    add b
    ld c, a
    rst $38
    sbc [hl]
    rst $28
    db $fd
    add e
    ld hl, sp+$47
    rst $38
    ld a, b
    rst $38
    rlca
    db $fc
    rrca
    ei
    rst $38
    ldh [rIE], a
    cp $ff
    ld bc, $bfff
    rst $38
    ld a, a
    adc a
    rst $38
    ld a, a
    rst $38
    ccf
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
    nop
    rst $38
    nop
    rst $38
    nop
    pop af
    ld c, $09
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    rst $38
    nop
    adc h
    rst $38
    rra
    ldh a, [rSB]
    cp $a8
    rst $38
    sub c
    cp $36
    rst $38
    adc $ff
    ld l, a
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    ld a, h
    rst $38
    ld sp, hl
    rst $38
    db $db
    db $fc
    rst $38
    nop
    ld a, e
    add a
    rst $30
    ld [$f0cf], sp
    rst $08
    ld hl, sp+$2d
    cp $7f
    rst $38
    add d
    ld a, l
    ld b, b
    cp a
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
    ccf
    rst $38
    rlca
    rst $38
    jp Jump_0bd_783f


    rlca
    ld c, $01
    rlca
    nop
    ld bc, $0000
    nop
    ld bc, $0700
    inc bc
    inc e
    inc c
    ld d, b
    dec sp
    ld h, b
    rst $20
    add c
    sbc [hl]
    rlca
    ld a, b
    rra
    and b
    ld h, c
    ld bc, $03c7
    add e
    ld [bc], a
    ld c, $0d
    ldh a, [rHDMA3]
    db $10
    inc c
    ld h, b
    add c
    and b
    ld e, a
    ld de, $13ee
    db $ec
    rra
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    rst $18
    jr nz, @+$01

    rst $38
    ld l, [hl]
    sub c
    rst $38
    cp $00
    rst $38
    rst $38
    rst $38
    ld bc, $7eff
    adc a
    ldh a, [rIE]
    inc b
    ei
    and h
    ld e, e
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $01
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
    rst $38
    nop
    rst $28
    db $10
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    ld [$e1ff], sp
    rra
    rst $38
    nop
    jp $fffc


    inc bc
    rra
    ldh [$8d], a
    rst $38
    add h
    rst $38
    inc l
    rst $38
    ld a, e
    db $fc
    di
    rst $38
    or $ff
    rst $30
    rst $38
    rst $38
    rlca
    rst $18
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    rst $38
    ld bc, $00fe
    rst $38
    add hl, bc
    or $00

jr_0bd_5a77:
    rst $38
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    and b
    ld e, a
    ld a, [hl]
    cp $7e
    cp $3e

jr_0bd_5a85:
    cp $1e
    cp $1f
    rst $38
    rrca
    rst $38
    rrca
    ld a, a
    rrca
    ccf
    ld [hl], b
    rrca
    jr nc, jr_0bd_5aa3

    jr nc, jr_0bd_5aa5

    db $10
    rrca
    inc de
    rrca
    rlca
    rra
    inc c
    inc a
    jr nc, jr_0bd_5b12

    pop bc
    adc $01

jr_0bd_5aa3:
    ld a, $0b

jr_0bd_5aa5:
    db $f4
    jr nc, jr_0bd_5a77

    nop
    rst $38
    inc b
    rst $38
    ld hl, sp+$1f
    ldh a, [$7f]
    ldh a, [$cd]
    ret nz

    cp l
    add c
    ld a, h
    nop
    sbc d
    ld bc, $1080
    nop
    jr nc, jr_0bd_5a85

    ld hl, sp+$07
    cp $fd
    rlca
    rst $38
    cp $01
    ld hl, sp+$07
    rst $20
    add hl, de
    sbc a
    ld h, e
    rst $38
    rst $38
    ld a, a
    rst $28
    ld b, b
    cp a
    nop
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld bc, $0eff
    rst $38
    adc b
    rst $38
    inc c
    rst $38
    and e
    rst $38
    add d
    rst $38
    and c
    rst $38
    ret nz

    rst $38
    add sp, -$01
    cp $ff
    nop
    rst $38
    ld bc, $01fe
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    rst $38
    nop
    ld hl, sp+$07
    rlca
    ld hl, sp-$01
    nop
    jr nc, @+$01

    ld hl, $80ff
    rst $38
    db $fc
    inc bc
    ld a, [bc]
    rst $38

jr_0bd_5b12:
    ei
    rrca
    ccf
    ldh a, [rHDMA4]
    rst $38
    ld h, d
    rst $38
    rst $38
    nop
    ld b, [hl]
    rst $38
    reti


    rst $38
    ld [c], a
    rst $38
    db $fc
    rst $38
    cp $3f
    rst $38
    nop
    ei
    rrca
    rst $38
    nop
    rst $38
    nop
    xor $ff
    sub $29
    ld [$adf7], sp
    ld d, d
    ld c, $f1
    dec h
    jp c, $ff00

    dec h
    jp c, Jump_000_2bd4

    rst $38
    nop
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    ld hl, sp+$1f
    rst $38
    rra
    rst $38
    rra
    rst $38
    jr c, @+$01

    ld a, $f9
    add hl, sp
    pop hl
    rst $20
    sub c
    adc a
    ld de, $1f6f
    rst $38
    rra
    rst $38
    rst $38
    dec c
    db $f4
    ld a, [de]
    ld hl, sp+$66
    and h
    ret c

    cp h
    nop
    ld d, h
    add b
    nop
    inc b
    add b
    nop
    ld [c], a
    ld e, a
    ld a, $ff
    ld b, c
    cp a
    ld h, e
    sbc a
    ld l, l
    sbc a
    add e
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rst $08
    rst $38
    rst $08
    ld a, a
    rra
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38

jr_0bd_5b8f:
    rst $38
    nop
    rst $38
    db $e4
    dec de
    add b
    ld a, a
    ld h, b
    sbc a
    or c
    ld c, a
    ld b, b
    cp a
    ld d, b
    xor a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    dec b
    ld a, [$ff00]
    dec b
    ei
    nop
    rst $38
    jr nz, jr_0bd_5b8f

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
    ld sp, hl
    rst $38
    rst $00
    rst $38
    db $fc
    inc bc
    nop
    rst $38
    nop
    rst $38
    ret nc

    ccf
    ld bc, $00fe
    rst $38
    add b
    rst $38
    add b
    rst $38
    sub b
    rst $38
    adc b
    rst $38
    jr nz, @+$01

    ldh [$1f], a
    or b
    rst $08
    call z, $e93f
    rst $38
    ld b, b
    rst $38
    ld [$15ff], sp
    rst $38
    xor a
    rst $38
    rst $38
    nop
    db $ec
    rst $38
    push af
    rra
    rst $38
    nop
    xor b
    rst $38
    daa
    ret c

    ld e, [hl]
    and c
    rst $20
    jr @+$01

    nop
    rst $18
    jr nz, @+$01

    nop
    ld [hl], e
    adc h
    ld c, a
    or b
    db $fc
    inc b
    db $fc
    inc b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    add b
    rst $38
    cp $ff
    dec b
    cp $04
    rst $38
    inc b
    rst $38
    rlca
    ld hl, sp-$08
    rlca
    ldh a, [rIF]
    ld hl, sp+$07
    rst $38
    nop
    inc de
    rst $38
    ld bc, $00ff
    rst $38
    ld de, $63ff
    rst $38
    sbc a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
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
    jr nz, @+$01

    db $10
    rst $38
    nop
    rst $38
    cp $01
    rst $38
    nop
    cp $01
    ld a, a
    add b
    ld e, e
    and h
    rst $18
    jr nz, @+$01

    nop
    db $fd
    ld [bc], a
    ei
    inc b
    ldh [$1f], a
    ld de, $73ee
    adc h
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$04fb], sp
    db $f4
    dec bc
    db $eb
    inc d
    cp e
    ld b, h
    rst $28
    db $10
    ei
    inc b
    rst $38
    nop
    cp $ff
    db $fd
    rst $38
    push hl
    rst $38
    cp h
    rst $38
    cp [hl]
    rst $38
    db $ec
    rst $38
    cp b
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    ld [hl], c
    rst $38
    cp $ff
    ld [hl], c
    rst $38
    sbc $ff
    db $fd
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ei
    rst $38
    ei
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
    ld b, b
    rst $38
    jr nz, @+$01

    ld [de], a
    rst $38
    add $ff
    rst $38
    rrca
    adc [hl]
    di
    rst $38
    nop
    nop
    rst $38
    ld bc, $12fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    and b
    rst $38
    ld [$00ff], sp
    rst $38
    add d
    rst $38
    inc bc
    ld [bc], a
    inc bc

jr_0bd_5cc3:
    ld [bc], a
    jp $ffc2


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    rra
    rst $38
    rst $38
    nop
    ld bc, $01ff
    rst $38
    rra
    ldh [rSC], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    inc a
    rst $38
    sub b
    ld l, a
    nop
    rst $38
    nop
    rst $38
    ld de, $03ee
    db $fc
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    inc c
    di
    jr nc, jr_0bd_5cc3

    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    cp [hl]
    pop bc
    dec l
    jp nc, $f30c

    ld c, $f1
    ld [bc], a
    db $fd
    nop
    rst $38
    ld [bc], a
    db $fd
    ld bc, $00fe
    rst $38
    ld [$00ff], sp
    rst $38
    inc h
    rst $38
    ldh a, [rIE]
    db $10
    rst $38
    ld [$08ff], sp
    rst $38
    and h
    rst $38
    add hl, bc
    rst $38
    pop bc
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$0f
    rst $38
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
    inc bc
    db $fc
    rrca
    rst $38
    ld a, a
    rst $38
    add a
    rst $38
    ld a, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    sbc b
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ld hl, sp-$01
    ldh a, [rIE]
    db $fc
    rst $38
    cp $ff
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    nop
    rst $38
    ccf
    rst $38
    rst $38
    nop
    ld a, [hl]
    add c
    add c
    cp $40
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
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
    db $e3
    rst $38
    di
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    ld sp, hl
    rst $38
    rst $28
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
    add hl, de
    and $05
    ld a, [$fa05]
    rlca
    ld hl, sp+$07
    ld hl, sp-$40
    rst $38
    ccf
    rst $38
    nop
    rst $38
    ld [hl], b
    adc a
    ld hl, sp+$07
    rst $38
    rrca
    rst $38
    ld sp, $63fe
    rst $38
    rst $30
    rst $38
    ld a, a

jr_0bd_5e04:
    ldh a, [$8f]
    ldh a, [rIF]
    ldh a, [rIF]
    ld h, b
    sbc a
    ld b, b
    cp a
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
    ld bc, $00ff
    rst $38
    nop
    rst $38
    rlca
    rst $38
    ld bc, $01ff
    rst $38
    ld b, a
    rst $38
    cpl
    rst $38
    rla
    rst $38
    rrca
    rst $38
    dec b
    rst $38
    rst $38
    nop
    ld b, b
    cp a

jr_0bd_5e34:
    rst $38
    nop
    dec e
    ld [c], a
    rst $38
    nop
    jr nz, @-$1f

    ld bc, $02ff
    rst $38
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    rst $38

jr_0bd_5e4a:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr nz, jr_0bd_5e4a

    jr nz, jr_0bd_5e34

    jr nz, @-$01

    jr nz, jr_0bd_5e04

    rst $38
    nop
    ld b, b
    db $fc
    ld c, a
    ldh a, [rTAC]
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
    nop
    or e
    rst $38
    rst $30
    rst $38
    cp $ff
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
    cp $ff
    ldh [rIE], a
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    xor [hl]
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ei
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    cp $ff
    ld [hl], c
    rst $38
    rst $10
    rst $38
    db $e4
    rst $38
    or h
    rst $38
    ld [$e0ff], a
    rst $38
    and b
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    cp $ff
    ccf
    rst $38
    rlca
    rst $38
    ccf
    rst $38
    ei
    rst $38
    ld c, $ff
    nop
    rst $38
    db $fc
    rst $38
    add [hl]
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    add hl, bc
    rst $38
    ld b, b
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
    rst $38
    nop
    rst $38
    nop
    cp [hl]
    ld b, c
    xor c
    ld d, [hl]
    db $e3
    inc e
    cp b
    ld b, a
    ret nc

    cpl
    ld sp, hl
    ld b, $fe
    ld bc, $877b
    add a
    ld a, a
    rst $38
    nop
    rst $38
    nop
    ld c, $ff
    dec e
    rst $38
    rra
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rra
    nop
    ld l, a
    nop
    dec [hl]
    nop
    rlca
    rst $38
    nop
    inc sp
    pop bc
    ret nz

    ccf
    cp [hl]
    nop
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
    rst $38
    rst $38
    db $fd
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
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    sub b
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    or b
    rst $38
    nop
    rst $38
    nop

jr_0bd_5f53:
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
    ld bc, $01fe
    cp $02
    db $fd
    add hl, bc
    or $01
    cp $10
    rst $28
    inc b
    ei
    ld bc, $10fe
    rst $28
    dec b
    ld a, [$fb04]
    jr nz, jr_0bd_5f53

    ldh a, [$ef]
    sub h
    db $eb
    ld bc, $04fe
    ei
    ld [bc], a
    db $fd
    nop
    rst $38
    db $e4
    dec de
    add b
    ld a, a
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

jr_0bd_5f8e:
    nop
    rst $38
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    nop
    rst $18
    jr nz, @+$01

    nop
    rst $28
    db $10
    db $fd
    ld [bc], a
    rst $18
    jr nz, jr_0bd_5f8e

    ld [de], a
    ld a, c
    add [hl]
    add hl, sp
    add $70
    adc a
    and c
    ld e, [hl]
    rlca
    ld hl, sp+$22
    db $dd
    ld a, [hl-]
    push bc
    nop
    rst $38
    jp Jump_0bd_4fff


    rst $38
    rst $38
    nop
    rst $38
    nop
    dec d
    rst $38
    sub a
    rst $38
    dec a
    rst $38
    nop
    cp h
    nop
    and h
    nop
    and h
    nop
    and h
    nop
    cp h
    add b
    db $fc
    add b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    ccf
    nop
    rst $38
    add b
    rst $38
    ldh [$1f], a
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
    rst $38
    rst $38
    ld e, $e1
    ccf
    ret nz

    ld e, l
    and d
    cp a
    ld b, b
    rst $18
    jr nz, jr_0bd_606a

    sub b
    ld l, [hl]
    sub c
    ld a, $c1
    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    ld a, $c1
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld e, h
    and e
    ld e, a
    and b
    and h
    ld e, e
    ld e, l
    and d
    ld l, e
    sub h
    cp a
    ld b, b
    push af
    ld a, [bc]
    ld d, d
    xor l
    ld l, $d1
    sub a
    ld l, b
    ld b, h
    cp e
    inc d
    db $eb
    ld b, c
    cp [hl]
    nop
    rst $38
    and l
    ld e, d
    db $10
    rst $28
    ld d, d
    xor l
    jr z, @-$27

    add d
    ld a, l
    inc h
    db $db
    ret nz

    ccf
    nop
    rst $38
    ld a, [c]
    rst $38
    sub a
    rst $38
    ld h, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    dec c
    di
    ld hl, $00ff
    rst $38
    jr nz, @+$01

    nop
    rst $38
    add b
    rst $38
    rst $38
    nop
    swap h
    ld e, a
    and b
    db $db
    inc h
    ld e, e
    and h

jr_0bd_606a:
    ld b, a
    cp b
    dec b
    ld a, [$db24]
    inc e
    rst $38
    ld a, $ff
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    cp d
    rst $38
    db $fd
    rst $38
    db $e4
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
    rst $38
    rst $38
    rst $38
    cp a
    nop
    nop
    rst $38
    inc bc
    db $fc
    rst $38
    di
    ld a, a
    adc a
    rra
    pop hl
    ld bc, $00fe
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    inc bc
    ccf
    rrca
    ld a, a
    rlca
    ld a, a
    rlca
    rst $38
    dec bc
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    cpl
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $09ff
    rst $38
    ld bc, $05ff
    rst $38
    ld bc, $60ff
    sbc a
    add b
    ld a, a
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
    adc $31
    sbc [hl]
    ld h, c
    db $fd
    ld [bc], a
    ld hl, sp+$07
    db $ec
    inc de
    ld hl, sp+$07
    ld a, [$e907]
    ld d, $c1
    ld a, $40
    cp a
    ld b, c
    cp [hl]
    ld b, a
    cp b
    ld b, $f9
    nop
    rst $38
    ld [bc], a
    db $fd
    ld bc, $efff
    db $10
    rst $28
    db $10
    rst $00
    jr c, jr_0bd_614e

    cp b
    adc $31
    cp $01
    ld e, l
    and d
    cp a
    ld b, b
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    sbc b
    rst $38
    xor h
    rst $38
    ld c, h
    rst $38
    ld hl, $10fe
    rst $38
    ld [$44ff], sp
    rst $38
    ld [bc], a
    rst $38
    cp $01
    xor $1f
    ret z

    rst $38
    ld l, d
    rst $38
    ld a, [hl+]
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
    ret nz

    rst $38
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    cp $ff
    cp $ff
    adc $7f

jr_0bd_614e:
    ld a, [hl]
    add a
    ld e, $f7
    ld a, [hl]
    rst $38
    xor [hl]
    rst $38
    ld l, [hl]
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    ld bc, $01fe
    cp $81
    ld a, [hl]
    ld bc, $81fe
    ld a, [hl]
    pop bc
    ld a, $a1
    ld e, [hl]
    ld de, $81ee
    ld a, [hl]
    ld bc, $81fe
    ld a, [hl]
    add l
    ld a, d
    pop bc
    ld a, $c1
    ld a, $01
    cp $09
    or $01
    cp $01
    cp $61
    sbc [hl]
    push bc
    ld a, [hl-]
    call $fd32
    ld [bc], a
    pop af
    ld c, $f9
    ld b, $cd
    ld [hl-], a
    db $ed
    ld [de], a
    di
    inc c
    di
    inc c
    di
    inc c
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
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
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
    ldh [rIE], a
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
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
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
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc b
    nop
    nop
    nop
    nop
    nop
    dec b
    ld bc, $0101
    ld bc, $0101
    ld b, $07
    ld [$0009], sp
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0000
    nop
    nop
    nop
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    nop
    nop
    nop
    nop
    nop
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    nop
    nop
    nop
    nop
    nop
    jr z, jr_0bd_6320

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0bd_6330

    ld [hl-], a
    nop
    nop
    nop
    nop
    nop
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0bd_6345

    ld a, [hl-]
    dec sp
    inc a
    dec a
    nop
    nop
    nop
    nop
    nop
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

jr_0bd_6320:
    nop
    nop
    nop
    nop
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

jr_0bd_6330:
    nop
    nop
    nop
    nop
    nop
    ld c, c
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
    nop
    nop
    nop
    nop
    nop

jr_0bd_6345:
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
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
    ld a, h
    ld a, l
    ld a, [hl]
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    ld a, a
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    ld bc, $0101
    ld bc, $0001
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
    ld bc, $0101
    ld bc, $0001
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
    ld bc, $0101
    ld bc, $0201
    dec b
    dec b
    ld bc, $0105
    ld bc, $0505
    dec b
    dec b
    ld bc, $0101
    ld bc, $0201
    dec b
    dec b
    ld bc, $0505
    dec b
    inc bc
    inc bc
    dec b
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
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
    ld bc, $0101
    ld bc, $0201
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0201
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0201
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    dec b
    dec b
    ld bc, $0101
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0501
    ld b, $07
    ld [bc], a
    ld [bc], a
    ld bc, $0505
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld b, $06
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    dec b
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0606
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0600
    ld b, $07
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld b, $06
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $8700
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld bc, $01ff
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    db $fc
    rlca
    rst $38
    rlca
    db $fd
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
    rra
    ei
    rra
    db $fd
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
    ld a, a
    cp $ff
    ld hl, sp-$01
    ret nz

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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    ldh [rIE], a
    db $fc
    rst $38
    cp h
    rst $38
    nop
    rst $38
    ld bc, $0ffe
    ldh a, [$7f]
    add b
    rlca
    ld hl, sp+$00
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $61ff
    sbc a
    rlca
    ld hl, sp+$01
    rst $38
    ld bc, $3fff
    ret nz

    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    rst $38
    nop
    ld a, [c]
    rrca
    rst $38
    nop
    inc b
    rst $38
    inc b
    rst $38
    inc b
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
    rlca
    rst $38
    rrca
    rst $38
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
    ccf
    inc bc
    ccf
    inc bc
    ccf
    inc bc
    ccf
    inc bc
    ld a, a
    inc bc
    ld a, a

jr_0bd_6638:
    inc bc
    ld a, a
    inc bc
    ld a, a
    inc bc
    rst $38
    inc bc
    rst $38
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld a, [$f805]
    rlca
    ld a, [$0705]
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    cp $0b
    rst $38
    rrca
    rst $38

jr_0bd_665c:
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    or $09
    push af
    ld a, [bc]
    ld [$ea15], a
    dec d
    rst $28
    db $10
    rst $20
    jr jr_0bd_665c

    db $10
    xor $11
    and $19
    rst $10
    jr z, jr_0bd_6638

    inc a
    pop de
    ld l, $d3
    inc l
    sbc $21
    ret z

    scf
    jp nc, Jump_0bd_692d

    rst $38
    ld h, a
    rst $38
    ld [hl], a
    cp [hl]
    ld [hl], e
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sbc b
    rst $38
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    pop af
    rrca
    adc a
    ldh a, [$7f]
    add b
    cp l
    jp Jump_000_38f7


    rst $38
    nop
    rst $38
    nop
    scf
    db $fc
    jr @+$01

    db $fc
    rra
    inc c
    rst $38
    inc b
    rst $38
    cp $01
    nop
    rst $38
    inc bc
    rst $38
    ld [hl], a
    adc a
    adc l

jr_0bd_66b9:
    ld a, a

jr_0bd_66ba:
    dec de
    rst $38

jr_0bd_66bc:
    ld [hl-], a
    rst $38

jr_0bd_66be:
    inc e
    rst $38
    rst $30
    jr z, jr_0bd_66ba

    jr z, jr_0bd_66bc

    jr z, jr_0bd_66be

    jr z, jr_0bd_66b9

    cpl
    rst $38
    rst $38
    ldh [rIE], a
    rst $28
    rst $38
    rla
    add sp, $17
    add sp, $17
    add sp, $17
    add sp, $17
    add sp, $10
    rst $28
    rra
    ldh [rIE], a
    add b
    rst $38
    rst $38
    or a
    jp hl


    pop hl
    cp $ff
    ldh a, [$f4]
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    rrca
    ldh a, [$36]
    ret


    dec bc
    db $f4
    cp b
    ld b, a
    add b
    ld a, a
    nop
    rst $38
    ld b, b
    cp a
    ld b, b
    cp a
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    add a
    rst $38
    nop
    ei
    rst $38
    ret c

    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, a
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
    ld a, a
    db $fc
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
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

jr_0bd_6731:
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    dec sp
    rst $38
    db $e3
    rst $38
    rra
    rst $38
    cp $ff
    ld a, a
    rst $38
    rlca
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    dec b
    rst $38
    ld a, l
    rst $38
    ei
    db $fd
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    ldh a, [$ef]
    cp $ff
    ret nz

    ld a, c
    rst $38
    jr nc, jr_0bd_6731

    ld sp, $33ce
    call z, $ba45
    adc e
    ld [hl], h
    ld h, [hl]
    sbc c
    and [hl]
    ld e, c
    and $19
    ld a, a
    and b
    ld a, a
    and b
    ld a, a
    and b
    ld a, a
    and b
    ld a, a
    and b
    rst $38
    rst $38
    ld a, $ff
    cp a
    rst $38
    rst $38
    nop
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ret nz

    ccf
    rst $38
    rst $38
    cp $ff
    xor a
    rst $38
    sub a
    ld a, a
    ld a, [c]
    rrca
    inc c
    di
    nop
    rst $38
    nop
    rst $38
    add c
    cp $ff
    inc e
    ld hl, sp-$01
    ret nz

    rst $38
    cp $fc
    cp $fc
    rst $38
    ld hl, sp-$02
    pop hl
    rst $38
    ldh a, [$c2]
    inc a
    cp $e0
    add b
    rst $38
    rst $38
    nop
    db $fd
    ldh a, [$fe]
    ldh [rIE], a
    ldh a, [$f9]
    and $8e
    pop af
    add c
    cp $cf
    ldh a, [$da]
    push af
    sbc $f1
    rst $30
    db $ec
    pop af
    sbc [hl]
    db $fc
    ld a, a
    or $ff
    rst $30
    rst $38
    ei
    cp $00
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    rst $38
    cp $ff
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
    rst $38
    rst $38
    ccf
    db $fc
    rst $38
    cp $ff
    db $f4
    rst $38
    ldh a, [rIF]
    db $fc
    ld a, a
    db $ed
    rst $38
    add $ff
    jp c, $d0f7

    rst $38
    ldh a, [$7f]
    rst $38
    nop
    pop de
    cp $fe
    ld bc, $01fe
    ld [c], a
    ld a, l
    db $d3
    db $fc
    ld [$c0ff], sp
    ccf
    nop
    rst $38
    ld c, e
    push af
    adc [hl]
    di
    add b
    rst $38
    add b
    rst $38
    sub l
    ei
    rst $38
    nop
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
    ld hl, sp-$01
    rst $38
    nop
    rlca
    ld hl, sp+$7f
    add b
    ld bc, $00fe
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
    ld b, l
    rst $38
    ld a, a
    add b
    ldh a, [rIF]
    nop
    rst $38
    or $09
    ld hl, sp+$7f
    add b
    rst $38
    rst $38
    rst $38
    ret nz

    ccf
    or b
    ld a, a
    ld b, b
    cp a
    db $fc
    rst $38
    jp $c03f


    ccf
    rst $18
    ccf
    ldh [rIE], a
    nop
    rst $38
    db $e3
    inc e
    db $e4
    dec de
    pop bc
    ld a, $03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    rst $38
    ccf
    db $fc
    rst $38
    rst $38
    rrca
    rst $38
    ld [hl], c
    cp $81
    cp $ff
    rst $38
    nop
    rst $38
    rra
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
    rst $18
    ldh [$9f], a
    ldh [$df], a
    ldh [rIF], a
    ldh a, [$5f]
    ldh [$bf], a
    ret nz

    cpl
    ret nc

    inc l
    db $d3
    ld hl, sp-$01
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
    db $f4
    rst $38
    and b
    rst $38
    ret nz

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
    ldh [rIE], a
    jr nc, @+$01

    ret nc

    rst $38
    ldh [rIE], a
    cp b
    rst $38
    or d
    rst $38
    ld hl, sp-$01
    sbc h
    rst $38
    sub d
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
    ld a, a
    rst $38
    ld bc, $ffff
    nop
    add b
    ld a, a
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
    rra
    rst $38
    rst $08
    rst $38
    ld d, l
    rst $38
    ccf
    rst $38
    rst $38
    ld b, b
    ld e, l
    cp a
    cp $07
    rst $38
    ld bc, $9f7f
    or $0f
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    jr @+$01

    add c
    ld a, a
    nop
    rst $38
    adc b
    ld a, a
    add b
    ld a, a
    add c
    ld a, a
    add e
    ld a, a
    db $fc
    rst $38
    add b
    ld a, a
    ret nz

    rst $38
    add b
    ld a, a
    nop

Jump_0bd_692d:
    rst $38
    nop
    rst $38
    cp $ff
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    inc b
    rst $38
    ld c, $ff
    rlca
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, $ff
    jr @+$01

    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc a
    rst $38
    cp $ff
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, a
    rst $38
    ld a, a
    rst $38
    jr nc, @+$01

    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    ld a, a
    nop
    rst $38
    add b
    ld a, a
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    ldh a, [rIE]
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $dd
    rst $38
    sbc a
    rst $38
    nop
    rst $38
    ld [bc], a
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
    add b
    ld a, a
    ld b, b
    cp a
    nop
    rst $38
    ld [bc], a
    rst $38
    sbc a
    ld a, a
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
    rst $30
    rst $18
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    ccf
    rst $38
    cp a
    ld a, a
    rst $38
    ld a, $ff
    dec b
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    inc bc
    db $fc
    ld bc, $07ff
    ld hl, sp-$07
    rlca
    rst $38
    nop
    ld hl, sp+$07
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    rst $38
    rst $38
    ld [$01ff], sp
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    inc e
    rst $38
    ld l, a
    rst $38
    add b
    rst $38
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $0f
    cp $ef
    rst $38
    rst $08
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    ei
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
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    rst $38
    nop
    ret nz

    ccf
    db $fc
    inc bc
    or $09
    db $fd
    ld [bc], a
    rst $28
    db $10
    cp d
    ld b, l
    cp b
    ld b, a
    ld h, h
    sbc e
    ld b, a
    cp b
    ld [$20f7], sp
    rst $18
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
    and b
    ld e, a
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
    ld bc, $fffe
    rst $38
    rst $38
    rst $38
    ld d, c
    rst $38
    ld [$05ff], sp
    rst $38
    rst $38
    nop
    cp h
    jp Jump_000_00ff


    ld e, [hl]
    pop hl
    or c
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
    rst $38
    db $fc
    rst $38
    jr nz, @+$01

    rra
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
    rra
    rst $38
    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    adc a
    ld a, a
    add b
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
    rst $00
    rlca
    rst $38
    rlca
    rst $38
    ld hl, sp+$07
    ldh [rIE], a
    ldh [rIE], a
    cp b
    ld a, a
    ld a, a
    adc a
    inc hl
    db $d3
    add sp, -$0c
    nop
    rst $38
    nop
    nop
    db $10
    ld h, b
    ld c, $02
    dec bc
    inc [hl]
    inc c
    ld d, e
    ld b, $61
    nop
    ldh a, [rTMA]
    pop af
    rst $38
    rst $38
    sbc c
    rst $28
    sbc a
    rst $38
    cp a
    rst $38
    db $dd
    rst $38
    ei
    rst $28
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $20
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
    ccf
    ret nz

    rla
    add sp, $0e
    pop af
    dec b
    ld a, [$fa05]
    rlca
    ld hl, sp+$03
    db $fc
    ld bc, $fdfe
    rst $38
    cp $ff
    xor a
    cp $b3
    rst $38
    rst $28
    di
    db $76
    rst $38
    ld a, e
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    db $fc
    ld a, a
    add b
    ccf
    rst $38
    ccf
    rst $38
    xor a
    cp $fe
    pop bc
    rst $18
    jr nz, jr_0bd_6b66

    rst $38
    rst $38
    nop
    add h
    rst $38
    ld c, c
    rst $38
    nop
    rst $38
    db $10
    rst $28
    nop
    rst $38
    inc bc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0bd_6b66:
    rst $38
    rst $38
    rst $08
    rst $38
    ld b, $ff
    ld sp, hl
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    rst $30
    rrca
    ldh a, [rIF]
    rst $38
    rst $38
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
    db $10
    rst $28
    nop
    rst $38
    ld b, b
    cp a
    cp e
    ld b, h
    nop
    rst $38
    ccf
    ret nz

    rst $38
    nop
    ret nz

    nop
    nop
    nop
    ret nz

    ret nz

    ld hl, sp+$78
    ld e, $1e
    inc bc
    rst $00
    nop
    ld sp, hl
    nop
    cp $f8
    add a
    ldh a, [$2f]
    ld hl, sp+$0f
    ld h, b
    sbc a
    rst $00
    add hl, sp
    ld sp, hl
    or $fa
    ld a, l
    rst $38
    rst $38
    ei
    db $e4
    rra
    rst $38
    ei
    push af
    rst $38
    rst $38
    dec bc
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
    rst $28
    db $fc
    rst $20
    rst $38
    rst $20
    rst $38
    rst $38
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
    ccf
    ret nz

    or b
    rst $38
    rst $38
    nop
    rla
    ld hl, sp-$0f
    cp a
    sbc d
    rst $38
    add hl, sp
    rst $38
    ei
    db $fc
    rst $38
    ldh a, [$fc]
    rrca
    ld h, [hl]
    rst $38
    rst $38
    nop
    rst $38
    pop hl
    rst $38
    rra
    sbc [hl]
    rst $38
    ldh a, [$1f]
    rst $38
    rrca
    rst $38
    nop
    ld a, a
    add c
    ld a, a
    add b
    inc sp
    db $fc
    jp Jump_000_1fff


    ldh a, [$c0]
    ccf
    rst $08
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
    rra
    rst $38
    dec e
    rst $38
    rrca
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    rst $38
    rst $38
    rlca
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
    xor b
    ld d, a
    nop
    rst $38
    ldh a, [rIF]

jr_0bd_6c44:
    db $fc
    inc bc
    ld a, [hl]
    ld bc, $000f
    inc bc
    nop
    ld bc, $0100
    nop
    add c
    add b
    pop af
    ldh a, [$3f]
    inc a
    rlca
    adc a
    add c
    ld [hl], c
    ld [hl], b
    adc h
    ld a, h
    add e
    rst $38
    add b
    rst $28
    ld [hl], b
    ld a, b
    adc h
    nop
    nop
    ret nz

    jr nz, jr_0bd_6c44

    inc h
    call c, $d823
    jr nz, jr_0bd_6c76

    nop
    rst $38
    rst $38
    rst $38
    cp $c3
    db $fd

jr_0bd_6c76:
    rst $38
    rst $38
    ld sp, hl
    cp $ff
    rst $38
    pop af
    cp $fd
    cp $c1
    cp $e1
    cp $f3
    rst $38
    ld sp, hl
    cp $ff
    cp $ff
    rst $38
    rst $38
    db $fc
    add e
    db $fc
    db $fc
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    jp Jump_000_07ff


    rst $38
    rst $10
    ccf
    scf
    rst $38
    sub a
    cp $86
    ld a, c
    rst $30
    rst $38
    xor $bf
    ld d, b
    rst $38
    ld e, e
    db $fc
    ld [bc], a
    rst $38
    rst $38
    nop
    call z, $fff3
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    db $10
    rst $38
    adc h
    di
    nop
    rst $38
    inc hl
    call c, $fe01
    inc bc
    db $fc
    ccf
    ret nz

    nop
    rst $38
    inc b
    ei
    ei
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    rst $28
    rst $38
    scf
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    ld a, a
    rrca
    ld a, a
    inc bc
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh a, [rIE]
    inc a
    ld a, a
    rrca
    rrca
    ld b, e
    and e
    ret nz

    jr c, jr_0bd_6d1b

    or $60
    sbc a
    nop
    rst $38
    ldh a, [$6f]
    ret nz

jr_0bd_6d1b:
    ccf
    ccf
    add $ff
    ld bc, $ffff
    cp a
    ld e, a
    rst $38
    rst $38
    cp a
    ld b, b
    ld a, a
    add b
    rra
    ldh [rIF], a
    ldh a, [$3f]
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    db $e3
    rst $38
    inc e
    rst $38
    inc bc
    rst $38
    db $eb
    rst $38
    rlca
    rst $38
    sbc a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ld [hl], b
    adc a
    ldh [rIE], a
    sbc h
    rst $38
    inc h
    rst $38
    ld b, $ff
    ld bc, $00ff
    rst $38
    ld [bc], a
    rst $38
    jp nz, Jump_000_003f

    rst $38
    nop
    rst $38
    ldh a, [rIF]
    rst $38
    nop
    ld bc, $fffe
    nop
    nop
    rst $38
    ldh a, [rIE]
    adc $ff
    nop
    rst $38
    ldh a, [rIE]
    ld c, $ff
    nop
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38

jr_0bd_6d8c:
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
    ld bc, $03fe
    db $fc
    rrca
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    ld bc, $07fe
    ld hl, sp+$1c
    ldh [$30], a
    ret nz

    ld b, b
    add b
    ldh [$e0], a
    ld a, b
    ld hl, sp+$1f
    rra
    inc bc
    add a
    nop
    ld hl, sp+$78
    add h
    ld a, h
    add e
    rst $38
    nop
    rst $38
    add b
    ld [$3817], sp
    rra
    nop
    nop
    sbc c
    ld h, c
    ret nz

    jr nz, jr_0bd_6d8c

    nop
    nop

jr_0bd_6dcd:
    nop
    db $10
    rrca
    ld hl, sp-$01
    or b
    rst $08
    ld hl, sp-$01
    ldh [rIE], a
    jr @-$17

    rst $38
    rst $38
    rra
    cp $ff
    ldh [$bf], a
    rst $38
    rst $18
    ldh [rIE], a
    rst $38
    rst $38
    rst $28
    rst $38
    rst $30
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fd
    rst $38
    rst $38
    rst $38
    db $fd
    cp $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    rst $38
    ld [bc], a
    rst $38
    ld b, b
    rst $38
    jr c, jr_0bd_6dcd

    ld h, $f9
    add $3f
    ld a, [$ff07]
    nop
    ldh a, [rIF]
    rlca
    ld hl, sp-$08
    rlca
    rst $38
    nop

jr_0bd_6e16:
    ldh a, [rIF]
    ldh [$1f], a
    db $fc
    inc bc
    ld h, [hl]
    ld sp, hl
    ld bc, $21fe
    cp $ff
    nop
    nop
    rst $38
    inc c
    di
    ld c, b
    or a
    inc bc
    db $fc
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

jr_0bd_6e39:
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $04fe
    ld a, [$c834]
    jr z, jr_0bd_6e16

    sbc d
    ld h, b
    ld l, b
    add b
    db $e4
    nop
    adc b
    nop
    nop
    nop
    rst $38
    ldh [rIE], a
    nop
    db $fc
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
    ret nz

    ret nz

    ldh a, [$f0]
    ld a, $3e
    rlca
    rlca
    pop bc
    ld hl, $18e0
    ldh [rNR34], a
    add sp, $17

jr_0bd_6e74:
    ld l, h
    sub e
    db $dd
    and d
    dec e
    ld [c], a
    db $fd
    ld a, [hl-]
    ccf
    sbc $ff
    rlca
    ld c, a
    sub c
    add e
    jr c, jr_0bd_6e74

    db $10
    add a
    jr c, jr_0bd_6e39

    rlca
    inc sp
    inc b
    add c
    ld [hl], $80
    rlca
    ldh a, [$8f]
    ld [hl], b
    adc a
    cp $f1
    rst $28
    sbc a
    rst $38
    db $fc
    rst $38
    cp h
    rst $38
    db $fc
    rst $38
    rst $38
    rst $18
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $00
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
    rst $38
    nop
    ccf
    ret nz

    ret nz

    ccf
    inc bc
    db $fc
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    sbc [hl]
    rst $38
    ld [$8aff], sp
    ld a, a
    ldh [$1f], a
    rst $38
    nop
    ldh a, [rIF]
    ld a, $c1
    inc bc
    db $fc
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    inc a
    pop bc
    ld e, c
    and b
    ld a, c
    add b
    ld a, [c]
    nop
    ld [c], a
    nop
    ret nz

    nop
    add b
    nop
    pop bc
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
    ld c, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [$f0]
    inc a
    ld a, h
    rrca
    rrca
    inc bc
    jp $f000


    nop
    db $fc
    add b
    ld a, a
    or b
    ld c, a
    db $fc
    inc bc
    dec bc
    db $f4
    ldh [rIE], a
    ld hl, sp+$7f
    cp $1f
    ld a, a
    add a
    rra
    and c
    rst $20
    ld [$c239], sp
    scf
    ret z

    ld a, $c1
    db $10
    rst $28
    ld l, a
    sbc a
    rst $38
    ldh [$c3], a
    inc a
    pop af
    ld c, $f8
    rlca
    cp $fd
    rst $38
    ldh [rIE], a
    db $fc
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ret nz

    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    nop
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    db $fc
    rst $38
    cp $1f
    rst $38
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    add hl, bc
    cp $c1
    ld a, a
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
    pop hl
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0605
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld [$0a09], sp
    dec bc
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0c01
    dec c
    ld c, $0f
    stop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $1211
    inc de
    inc d
    dec d
    ld d, $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    rla
    jr jr_0bd_7015

    ld a, [de]
    dec de
    inc e
    dec e
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $1e01
    rra
    jr nz, jr_0bd_702d

    ld [hl+], a
    inc hl
    inc h
    dec h
    nop
    nop
    nop
    nop
    nop

jr_0bd_7015:
    nop
    ld bc, $2726
    jr z, jr_0bd_7044

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $00
    nop
    nop
    nop
    nop
    nop
    cpl
    jr nc, jr_0bd_705a

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]

jr_0bd_702d:
    ld [hl], $37
    jr c, jr_0bd_7031

jr_0bd_7031:
    nop
    nop
    nop
    nop
    nop
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    nop
    nop
    nop
    nop

jr_0bd_7044:
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b

jr_0bd_705a:
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld c, h
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $5601
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, [hl]
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc e
    add l
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    ld bc, $0101
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
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
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
    ld bc, $0101
    ld bc, $0101
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
    ld bc, $0101
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
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    nop
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0101
    ld bc, $0101
    inc b
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0101
    ld bc, $0101
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    dec b
    inc bc
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $02
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld b, $06
    ld b, $06
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0601
    rlca
    ld [bc], a
    ld [bc], a
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $00
    ld b, $07
    ld [bc], a
    ld [bc], a
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $00
    ld b, $07
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $00
    ld b, $07
    ld [bc], a
    ld [bc], a
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
    cp $01
    db $fc
    inc bc
    ld sp, hl
    rlca
    di
    rrca
    rst $20
    rra
    rst $08
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    add d
    ld a, a
    nop
    rst $38
    ld bc, $fcff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
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
    cp $0f
    cp $1f
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    add e
    rst $38
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    ldh [rIE], a
    rra
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $03
    db $fd
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    nop
    rst $38
    ccf
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    add b
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    ld hl, sp-$01
    rst $00
    rst $38
    nop
    rst $38
    ld e, $ff
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ccf
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
    ld a, a
    adc a
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
    ldh [rIE], a
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $20
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    rrca
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
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    rrca
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
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    ld a, [$ff3f]
    ld a, a
    ldh a, [rIE]
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
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    add e
    rst $38
    ret nz

    ccf
    nop
    rst $38
    ret nz

    ccf
    nop
    rst $38
    ld hl, sp+$07
    ld [hl], b
    adc a
    add b
    ld a, a
    db $fd
    inc bc
    inc bc
    db $fc
    inc bc
    rst $38
    ccf
    ret nz

    rst $08
    inc a
    rrca
    cp $1f
    rst $38
    ccf
    cp $3f
    ldh a, [$7f]
    ldh [rIE], a
    ret nz

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
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
    cp $ff
    rst $38
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
    ldh a, [rIE]
    rrca
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
    inc a
    jp $fc03


    ld bc, $e7fe
    jr jr_0bd_73c4

    cp $00
    rst $38
    ld [$00ff], sp
    rst $38

jr_0bd_73c4:
    jr nz, @+$01

    ccf
    ldh [rP1], a
    rst $38
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add b
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
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    db $fc
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
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rrca
    db $fc
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rrca
    rst $38
    ld a, a
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    ld a, a
    rst $38
    ld bc, $c4ff
    dec sp
    rst $20

jr_0bd_7425:
    ld e, $06
    db $fd
    dec c
    cp $1b
    db $ec
    jr jr_0bd_7425

    ccf
    ld hl, sp+$70
    rst $08
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    cp $01
    inc e
    db $e3
    ldh a, [rIE]
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
    ld bc, $07ff
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    add h
    ei
    nop
    rst $38
    nop
    rst $38
    ld bc, $00fe
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
    ld bc, $07ff
    rst $38
    rrca
    rst $38
    rra
    rst $38

jr_0bd_7487:
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    nop
    rst $38
    ccf
    ret nz

    rst $38
    nop
    inc b
    ei
    sbc c
    ld h, a
    rra
    db $e3
    dec de
    rst $20
    rst $38
    inc bc
    ld e, $e7
    ld hl, sp+$1f
    dec de
    rst $38
    jr nc, @+$01

    db $fc
    rlca
    ld [hl], b
    adc a
    sub h
    ld a, a
    ld c, h
    rst $38
    db $e3
    db $fc
    db $fc
    add e
    ccf
    ret nz

    db $fc
    nop
    ld hl, sp+$00
    ldh [rP1], a
    rst $38
    nop
    jr jr_0bd_7487

    rst $38
    rst $38
    db $fc
    rst $38
    add e
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
    rrca
    rst $38
    rst $18
    cp $07
    cp $ff
    rst $38
    ld sp, hl
    cp $ff
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    rst $38
    ld bc, $03fe
    db $fc
    ld bc, $03fe
    db $fc
    dec b
    ld a, [$fc03]
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$14
    db $eb
    rrca
    ldh a, [$1f]
    ldh [$5f], a
    and b
    ld a, e
    add h
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
    db $fc
    nop
    db $fc
    ld bc, $03fc
    db $fc
    rlca
    db $fc
    rrca
    db $fc
    rra
    db $fc
    ccf
    db $fc
    ld a, a
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    rst $20
    rst $38
    rst $00
    rst $38
    pop hl
    rst $38
    sbc a
    rst $38
    inc bc
    rst $38
    rra
    rst $38
    ldh [$1f], a
    ld b, b
    rst $38
    rst $38
    nop
    add b
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    xor $ff
    ldh [rIE], a
    ret nz

    rst $38
    inc e
    rst $38
    ldh [rIE], a
    rst $38
    ldh [rIE], a
    add b
    db $fc
    add c
    ld hl, sp+$00
    rlca
    ld hl, sp-$05
    db $fc
    rlca
    rst $38
    ret nz

    ccf
    rst $38
    nop
    ret nz

    ccf
    rra
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
    rst $38
    rst $38
    cp $ff
    ldh a, [rIE]
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    add b
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    rra
    rst $38
    ld a, a
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
    cp a
    ld b, b
    rst $38
    nop
    ld a, b
    nop
    ld a, h
    nop
    ld a, b
    nop
    ld [hl], b
    nop
    ld h, b
    nop
    ld [hl], b
    nop
    ld a, [hl]
    pop bc
    ld a, a
    ldh a, [$7f]
    ldh [$7f], a
    ld hl, sp+$78
    rst $38
    ld hl, sp+$1f
    ld a, b
    rst $00
    ld a, e
    call c, $ff7f
    ld h, b
    rst $38
    adc a
    ld [hl], b
    add hl, bc
    cp $3f
    cp $3f
    cp $7d
    cp $fd
    cp $ff
    db $fc
    inc bc
    db $fc
    nop
    rst $38
    ld bc, $f2ff
    db $fd
    cp $c1
    ld hl, sp-$79
    ldh a, [$cf]
    ldh a, [$ef]
    ld a, [$fbe7]
    rst $30
    ld hl, sp-$09
    rst $38
    rst $38
    add b
    rst $38
    adc a
    ld [hl], a
    rra
    rst $38
    db $fc
    db $e3
    db $fc
    inc bc
    cp $01
    cp $01
    cp $fd
    inc bc
    rst $38
    add b
    ld a, a
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
    add b
    rst $38
    ld a, a
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    rst $38
    db $fc
    db $e3
    ld a, [$e705]
    dec de
    ldh a, [rIF]
    ld hl, sp-$01
    ldh [rIE], a
    rst $38
    rst $38
    ldh [rIE], a
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    rst $00
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    and a
    ld e, a
    and b
    ld e, a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
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
    rst $38
    rra
    rst $38
    rst $38
    nop
    rst $38
    nop
    rlca
    ld hl, sp+$17
    add sp, $00
    rst $38
    add b
    ld a, a
    rst $38
    ld sp, hl
    nop
    rst $38
    ld a, a
    nop
    ld a, a
    ccf
    ld a, a
    ld a, a
    ld a, a
    ccf
    ld a, a
    inc sp
    ld a, a
    rrca
    ld a, a
    ld e, $7f
    rra
    rst $20
    rra
    db $e3
    ld e, $f3
    rrca
    xor d
    ld d, a
    jp hl


    rla
    pop hl
    rra
    ld b, l
    cp a
    ld de, $05ef
    rst $38
    adc e
    ld a, a
    nop
    rst $38
    cp a
    ld b, b
    nop
    rst $38
    ldh a, [rIF]
    ldh a, [rIF]
    add b
    ld a, a
    nop
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    jp $c1ff


    rst $38
    add b
    ld a, a
    inc bc
    rst $38
    adc a
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    add b
    ld a, a
    ld b, e
    cp a
    adc a
    ld a, a
    rst $30
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $3fff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, h
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp+$1f
    ld hl, sp+$00
    ld hl, sp-$80
    ld a, b
    nop
    ld hl, sp-$40
    inc a
    ldh a, [$0c]
    nop
    cp $fc
    ld a, [$fef8]
    jr c, @+$01

    ld hl, sp-$11
    ld hl, sp-$41
    ld hl, sp-$09
    ld hl, sp-$01
    db $fc
    rst $38
    rst $38
    nop
    rst $38
    ldh a, [$fc]
    rst $38
    cp $ff
    rst $38
    call c, $fffe
    cp $ff
    db $fd
    ld [bc], a
    rst $28
    sub b
    rst $38
    ld hl, sp-$01
    ei
    rst $38
    db $fc
    ld b, a
    cp $9f
    ld h, b
    ld a, l
    jp nz, $e43b

    rrca
    ldh a, [rIF]
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    db $e3
    rst $38
    ld e, $ff
    ldh [rIE], a
    rst $38
    rst $38
    add hl, bc
    rst $38
    inc bc
    rst $38
    ld a, h
    rst $38
    add b
    rst $38
    ldh [rIE], a
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
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
    rst $38
    rst $38
    rra
    rst $38
    rlca
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
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
    ldh [$7f], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [$1f]
    ldh a, [rIE]
    ld hl, sp+$3f
    ld hl, sp+$00
    ld hl, sp-$40
    inc a
    ret nz

    inc a
    ret nz

    inc a
    add b
    cp $e0
    ld e, $80
    ld a, [hl]
    ldh [$1f], a
    ld e, b
    rst $20
    ld a, b
    add a
    ld a, [hl]
    pop bc
    ld b, [hl]

jr_0bd_77a7:
    ld sp, hl
    ld b, h
    ei
    ld h, $f9
    jr nz, @+$01

    nop
    rst $38
    ret nz

    ld a, a
    jr nz, @+$01

    rst $28
    jr nc, jr_0bd_77a7

    ccf
    rst $38
    and b
    rst $30
    ret c

    rra
    ldh [rNR44], a
    db $fc
    jr @+$01

    ld e, b
    rst $38
    ld [$69ff], sp
    sbc [hl]
    ld [$04ff], sp
    rst $38
    rst $38
    nop
    inc b
    rst $38
    rlca
    db $fc
    rlca
    db $fc
    cp $bf
    cp $df
    cp a
    ldh [rIE], a
    inc c
    ld a, [hl]
    di
    rst $38
    add b
    add c
    ld a, a
    nop
    rst $38
    db $fc
    inc bc

jr_0bd_77e6:
    ld hl, sp+$07
    pop af
    ld c, $de
    ld hl, $00ff
    rst $38
    nop
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

jr_0bd_7800:
    rst $38
    db $10

jr_0bd_7802:
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, jr_0bd_7800

    jr nz, jr_0bd_7802

    jr nz, @-$1f

    jr nz, jr_0bd_77e6

    ld b, b
    cp a
    ld b, e
    cp a
    ld b, e
    cp l
    ld b, e
    cp [hl]
    ld b, c
    cp $41
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_0bd_783f:
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    ld a, a
    rst $38
    ccf
    rst $38
    nop
    rst $38
    rra
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld a, a
    ret nz

    ld e, a
    ldh [rVBK], a
    ldh a, [$83]
    ld a, h
    add a
    ld hl, sp-$7f
    cp $f0
    rrca
    jp $ff3c


    rst $38
    rlca
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    ld [hl], c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    inc e
    rst $38
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    rst $20
    rst $38
    rst $00
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
    ld bc, $01ff
    cp $01
    cp $01
    cp $01
    cp $01
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
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
    cp $03
    cp $03
    cp $03
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    ei
    rlca
    ei
    rlca
    ei
    rlca
    ei
    add a
    ei
    add a
    rst $38
    rst $20
    rst $38
    rst $38
    sbc a
    ld a, a
    ld [hl], e
    rrca
    sbc a
    nop
    ldh [rP1], a
    rst $30
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    rst $00
    ldh a, [$f7]
    ld a, a
    ld a, a
    add b
    nop
    ld a, b
    nop
    nop
    nop
    nop
    add b
    nop
    add e
    rst $38
    rst $38
    ccf
    rst $38
    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr c, @+$01

    add b
    rst $38
    ld bc, $f0ff
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    pop af
    rst $38
    ldh a, [rIE]
    ld [hl], d
    rst $38
    inc c
    di
    rrca
    ldh a, [rIF]
    ldh a, [rIE]
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    add b
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
    cp a
    rst $38
    and a
    rst $38
    sbc a
    rst $38
    ld d, a
    rst $28
    ld a, a
    rst $38
    rst $38
    rst $18
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    ld l, e
    rst $38
    inc b
    rst $38
    ld [hl+], a
    rst $38
    sub b
    rst $38
    xor b
    rst $38
    add b
    rst $38
    add b
    rst $38
    sub b
    rst $38
    add b
    cp $c0
    db $fc
    ldh [$fc], a
    ldh a, [$fc]
    ldh [$fc], a
    ldh [$fc], a
    ldh [$fc], a
    ldh a, [$fe]
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    ld l, $00
    cp $80
    call nc, RST_00
    ld h, b
    ld h, b
    inc e
    nop
    nop
    nop
    nop
    ret nz

    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    inc de
    rst $38
    ld b, e
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rla
    rst $38
    rlca
    rst $38
    ld c, $ff
    pop af
    ld c, $f1
    ld c, $f1
    ld c, $f1
    adc $3f
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
    rst $38
    ld [$ff00], sp
    nop
    rst $38
    inc bc
    db $fc
    rrca
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ld a, [hl]
    add b
    ld hl, sp+$00
    ldh a, [$80]
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
    ldh a, [$fe]
    rst $38
    rst $38
    ret nz

    ccf
    ccf
    nop
    ret nz

    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    inc [hl]
    nop
    ccf
    ld e, $1e
    rst $38
    rst $38
    nop
    ld a, h
    nop
    rlca
    nop
    nop
    cp a
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    add b
    rst $38
    ld h, e
    rst $38
    nop
    rst $38
    inc b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    jp $ff3c


    nop
    ldh [$1f], a
    rst $38
    nop
    rst $38
    db $fc
    inc bc
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
    rst $38
    ld bc, $ff00
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    nop
    nop

jr_0bd_7a6d:
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
    nop
    nop
    nop
    di
    nop
    ld bc, $0cf2
    di
    inc c

jr_0bd_7a81:
    di
    ld [$0050], sp
    jp Jump_000_0204


    rst $38
    di
    ccf
    ccf
    ld a, h
    add e
    nop
    nop
    rst $38
    rst $38
    rra
    rst $38
    ld hl, sp-$19
    rst $38
    rst $38
    dec de
    rst $20
    jr @-$17

    jr nc, jr_0bd_7a6d

    scf
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    add e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr nc, jr_0bd_7a81

    jr nc, @-$2f

    ld a, a
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    rrca
    nop
    inc bc
    nop
    nop
    nop
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    ret nz

    nop
    ld b, $00
    rrca
    nop
    rst $38
    ld hl, sp-$08
    rst $38
    rst $38
    nop
    cp $3f
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    db $fc
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
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
    ret nz

    ccf
    ldh [$1f], a
    ld a, a
    add b
    pop bc
    ld a, $ff
    nop
    db $fd
    jp nz, $ff3f

    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0101
    ld bc, $0401
    dec b
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    ld [$0101], sp
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    dec c
    ld c, $01
    rrca
    db $10
    ld bc, $1211
    inc de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $14
    dec d
    ld d, $17
    jr jr_0bd_7b87

    ld a, [de]
    dec de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0bd_7b9e

    ld [hl+], a
    inc hl
    inc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0bd_7b87:
    dec h
    ld h, $27
    jr z, jr_0bd_7bb5

    ld a, [hl+]
    dec hl
    inc l
    dec l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, $2f
    jr nc, jr_0bd_7bcc

    ld [hl-], a
    inc sp
    inc [hl]

jr_0bd_7b9e:
    dec [hl]
    ld [hl], $00
    nop
    nop
    nop
    nop
    nop
    nop
    scf
    jr c, jr_0bd_7be3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    nop
    nop
    nop
    nop
    nop

jr_0bd_7bb5:
    nop
    nop
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l

jr_0bd_7bcc:
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    nop
    nop
    nop

jr_0bd_7be3:
    nop
    nop
    nop
    nop
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    sub b
    ld bc, $9291
    sub e
    sub h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    sub l
    ld bc, $9796
    sbc b
    sbc c
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0502
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld [bc], a
    ld [bc], a
    ld bc, $0505
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0501
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec b
    dec b
    ld [bc], a
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0505
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a

Jump_0bd_7cff:
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0706
    ld [bc], a
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0606
    rlca
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0601
    ld b, $07
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0601
    ld b, $07
    dec b
    ld [bc], a
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0601
    ld b, $07
    rlca
    ld [bc], a
    ld [bc], a
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $00
    ld b, $07
    ld [bc], a
    ld [bc], a
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0601
    nop
    nop
    ld b, $07
    ld [bc], a
    ld [bc], a
    dec b
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    ld [bc], a
    ld bc, $0202
    ld [bc], a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld hl, sp+$00
    db $fc
    nop
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
    ld bc, $01ff
    rst $38
    inc bc
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
    rra
    cp $3f
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
    nop
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
    ldh [rP1], a
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
    rst $38
    nop
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
    ld a, a
    rst $38
    ld a, a
    ldh [rIE], a
    ret nz

    rst $38
    cp a
    rst $38
    sbc h
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    ld [c], a
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    rlca
    nop
    rrca
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
    add b
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld bc, $54ff
    rst $38
    ld a, d
    add a
    add e
    ld a, a
    ldh a, [rIF]
    add a
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rrca
    rst $38
    ld [$f0ff], sp
    rrca
    pop hl
    ld e, $e3
    inc e
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    call nz, $d03b
    cpl
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
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    db $fc
    rrca
    rst $38
    rra
    cp $3f
    rst $38
    ccf
    cp $7f
    cp $7f
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
    cp $01
    cp $01
    ld bc, $1ffe
    ldh [$03], a
    cp $0f
    pop af
    rla
    rst $28
    rrca
    di
    rrca
    db $fc
    rrca
    rst $38
    rrca
    rst $38
    rst $38
    nop
    dec e
    cp $1f
    rst $38
    ccf
    rst $38
    nop
    rst $38
    dec a

Jump_0bd_7f2d:
    rst $38
    ccf
    ret nz

    ld b, b
    cp a
    rst $18
    ldh a, [rIE]
    rrca
    adc a
    rst $38
    rst $18
    ccf
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    nop
    rst $38
    ld bc, $feff
    rst $38
    ldh a, [rIF]
    db $fc
    rlca
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec hl
    call nc, $fb04
    nop
    rst $38
    nop
    rst $38
    ld [hl+], a
    db $dd
    db $10
    rst $28
    ld [$0800], sp
    nop
    ld [$0f00], sp
    rrca
    ld [$081f], sp
    ccf
    ld [$083f], sp
    ld a, a
    ld [$0b7f], sp
    db $fc
    rrca
    ld hl, sp+$09
    cp $1f
    pop hl
    rrca
    ldh a, [$0e]
    rst $38
    rrca
    ldh a, [rIE]
    rrca
    ld e, $ff
    rra
    rst $38
    sbc l
    ld a, a
    rst $38
    ld bc, $00ff
    db $fc
    rrca
    ld l, a
    ldh a, [$6f]
    rst $38
    ld a, d
    rst $38
    rst $28
    rst $38
    cp $ff
    cp [hl]
    rst $38
    ld b, [hl]
    rst $38
    ld h, d
    rst $38
    rst $20
    ld hl, sp-$01
    rlca
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
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rlca
    rst $38
    ld hl, sp-$01
    rst $38
    nop
    rst $38
    ccf
    ld hl, sp-$01
    rlca
    ccf
    rst $38
    ret nz

    ccf
    rst $38
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    daa
    ret c

    ld hl, sp+$07
    ld b, b
    cp a
    rst $38
    nop
    db $fc
    inc bc
    ld hl, sp+$07
    rrca
    ldh a, [$f0]
    rrca
    ld b, b
    cp a
    and c
    ld e, [hl]
    nop
    rst $38
    nop
    rst $38
    ld bc, $04fe
    ei
    ld bc, $05fe
    ld a, [$0000]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    db $01
    db $fe
