SECTION "ROM Bank $033", ROMX[$4000], BANK[$33]

    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld [hl], a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    xor $ff
    adc $ff
    ld a, [hl]
    rst $38
    ld e, h
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    or $ff
    or $ff
    cp $ff
    cp $ff
    cp $ff
    sbc $ff
    ret z

    rst $38
    adc b
    rst $38
    adc b
    rst $38
    ld de, $70ff
    rst $38
    ld h, b
    rst $38
    ld [hl], b
    rst $38
    and b
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    add c
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    ld d, d
    rst $38
    inc d
    rst $38
    cp c
    cp $ff
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
    db $fd
    nop
    cp $ff
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    ld a, [$faff]
    rst $38
    ld hl, sp-$01
    ld sp, hl
    rst $38
    ld a, [$feff]
    rst $38
    db $f4
    rst $38
    ldh a, [rIE]
    pop af
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
    rst $38
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
    ei
    rst $38
    rst $38
    nop
    rst $28
    nop
    rst $38
    nop
    rst $18
    jr nz, @+$01

    nop
    rst $30
    nop
    ld [hl], a
    add b
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
    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [$0e]
    pop af
    dec bc
    db $f4
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [rIF], a
    pop af
    rrca
    pop af
    ld [$18f7], sp
    rst $20
    sbc c
    ld h, [hl]
    ld bc, $01fe
    cp $43
    db $fc
    ld b, d
    db $fd
    inc d
    db $eb
    inc c
    di
    ld [$18f7], sp
    rst $20
    adc b
    rst $30
    inc c
    di
    ld [$c6f7], sp
    ld sp, hl
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld [bc], a
    rst $38
    ld [de], a
    rst $38
    ld a, [c]
    rst $38
    ld h, a
    rst $38
    and $ff
    ld a, [c]
    rst $38
    ld a, [$fdff]
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
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
    ld bc, $07ff
    rst $38
    rlca
    rst $38
    ld b, $ff
    ld b, $ff
    ld a, [bc]
    rst $38
    inc b
    rst $38
    nop
    rst $38
    add hl, bc
    rst $38
    ld bc, $07ff
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    add e
    rst $38
    and e
    rst $18
    ld [hl], e
    adc a
    ld [hl], e
    adc a
    push af
    rrca
    di
    rrca
    pop af
    rrca
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld h, b
    rst $38
    ld b, d
    rst $38
    inc b
    rst $38
    call nz, $e0ff
    rst $38
    ldh [rIE], a
    and b
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ret nc

    rst $38
    ret nz

    rst $38
    pop af
    rst $38
    di
    rst $38
    rst $30
    nop
    ld h, [hl]
    add b
    ld a, a
    add b
    rst $38
    nop
    ld [hl], a
    add b
    cp [hl]
    ret nz

    ld a, d
    add b
    ld hl, sp+$00
    ld sp, hl
    nop
    add hl, de
    ldh [$3f], a

jr_033_41c5:
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    ld a, a
    add b
    rrca
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0b
    db $f4
    ld bc, $01fe
    cp $01
    cp $03
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    jr nc, jr_033_41c5

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ld [$81ff], sp
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
    push hl
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
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
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    ld [bc], a
    db $fd
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
    ret nz

    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add c
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    or $ff
    rst $30
    rst $38
    db $e3
    rst $38
    rst $30
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_033_4281:
    nop
    rst $38
    nop
    cp $00
    ld a, [$f504]
    ld [$08f5], sp
    rst $28
    db $10
    xor a
    ld d, b
    rst $18
    ld h, b
    sbc a
    ld h, b
    or a
    ld l, b
    add a
    ld a, b
    rlca
    ld hl, sp+$27
    ld hl, sp+$37
    ld hl, sp+$77
    ld hl, sp+$77
    ld hl, sp+$77
    ld hl, sp+$67
    ld hl, sp-$1d
    db $fc
    di
    db $fc
    pop af
    cp $e8
    rst $38
    di
    rst $38
    ei
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
    ld a, a
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    xor $ff
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc d
    db $eb
    ld [hl], b
    adc a
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

jr_033_42ed:
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld d, b
    xor a
    db $10
    rst $28
    ld d, b
    xor a
    ldh [$1f], a
    pop hl
    ld e, $c0
    ccf
    jr nz, jr_033_42ed

    nop
    rst $38
    nop
    rst $38
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
    jr nc, @+$01

    jr nz, @+$01

    jr c, @+$01

    ld hl, sp-$01
    db $fd
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    ei
    cp $fd
    cp $fe
    db $fd
    jp c, $fcfd

    ei
    ldh a, [rIE]
    add sp, -$09
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    adc b
    rst $38
    ld [$18ff], sp
    rst $38
    jr @+$01

    ldh a, [rIE]
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    cp $ff
    cp $ff
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
    add b
    ld a, a
    add b
    sbc a
    ldh [rIF], a
    ldh a, [$83]
    db $fc
    pop bc
    cp $c0
    rst $38
    ldh a, [rIE]
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
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    inc a
    rst $38
    and [hl]
    rst $38
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    ld [$1cf7], sp
    db $e3
    inc a
    jp Jump_000_3fff


    cp $3f
    sbc $3f
    cp $1f
    cp $1f
    cp $1f
    cp $1f
    ld a, [hl]
    rra
    inc a
    rra
    inc a
    rra
    jr jr_033_43e5

    ld de, $181e
    rra
    jr jr_033_43eb

    ld [de], a
    dec e
    ld bc, $031e
    inc e
    inc bc
    inc e
    dec de
    inc c
    dec de
    inc c
    dec de
    inc c
    dec de
    inc c
    rra
    ld [$0817], sp
    dec de
    inc c
    dec de
    inc c
    dec de

jr_033_43e5:
    inc c
    dec bc
    inc c
    dec bc
    inc c
    dec de

jr_033_43eb:
    inc c
    rlca
    ld [$0807], sp
    inc bc
    inc c
    inc bc
    inc c
    dec bc
    inc b
    dec de
    inc b
    add hl, bc
    ld b, $19
    ld b, $1d
    ld b, $1f
    inc b
    rra
    inc b
    dec de
    inc b
    dec sp
    inc b
    dec a
    ld b, $1e
    rlca
    inc a
    rlca
    ld a, h
    rlca
    ld a, [hl]
    rlca
    ld a, [hl]
    rlca
    cp $07
    ld a, [hl]
    rlca
    ld a, a
    rlca
    ld a, [hl]
    rlca
    ld a, d
    rlca
    ld a, [$fa07]
    rlca
    ld sp, hl
    rlca
    ldh a, [$08]
    ld sp, hl
    nop
    pop af
    nop
    pop af
    nop
    db $e3
    nop
    ret nz

    nop
    ret nz

    nop
    and b
    rst $18
    ret nz

    cp a
    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
    inc bc

Call_033_443b:
    db $fc
    ld bc, $03fe
    db $fc
    ld bc, $03fe
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld bc, $01fe
    cp $03
    db $fc
    inc bc
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
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ld hl, sp-$01
    db $fc
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

    ccf
    ret nz

    rra
    ldh [rTAC], a
    ld hl, sp+$07
    ld hl, sp-$20
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    rst $30
    rst $38
    adc b
    rst $38
    inc e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add [hl]
    ld sp, hl
    rra
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ld a, $c0
    ld a, [hl]
    add b
    ld a, a
    add b
    ld a, h
    add b
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    sub b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nc

    rst $38
    ret nc

    rst $38
    ret nc

    rst $38
    ldh a, [rIE]
    ret nc

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    ld a, h
    add b
    db $fc
    nop
    ld a, h
    add b
    ld a, h
    add b
    ld a, h
    add b
    db $fc
    nop
    ld a, h
    add b
    ld a, [hl]
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, l
    add b
    cp a
    ret nz

    rst $18
    ldh [rTAC], a
    nop
    add b
    nop
    ld d, b
    nop
    or b
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    ldh a, [rTAC]
    ld hl, sp+$0f
    ldh a, [$7f]
    add b
    rra
    ldh [$f7], a
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
    nop
    rst $38
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
    ldh [$1f], a
    ldh [$1f], a
    ldh [rTAC], a
    ld hl, sp+$00
    rst $38
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
    nop
    rst $38
    nop
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
    ret nz

    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
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
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ei
    inc b
    ld a, c
    add [hl]
    add c
    cp $f0
    rst $38
    rrca
    rst $38
    ld [$48ff], sp
    rst $38
    adc b
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, $f9
    db $e3
    rst $38
    db $e3
    rst $38
    and e
    rst $38
    and e
    rst $38
    inc hl
    rst $38
    ld bc, $00ff
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
    nop
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    and b
    rst $38
    ld a, [c]
    rst $38
    add d
    rst $38
    pop af
    nop
    ld sp, hl
    nop
    ld [bc], a
    ld bc, $0000
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    ld sp, hl
    ld b, $fe
    ld bc, $03fc
    rst $38
    nop
    scf
    ret z

    inc bc
    db $fc
    db $f4
    dec bc
    cpl
    ret nc

    cpl
    ret nc

    ld bc, $00fe
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    inc b
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_033_4639

    pop af
    ret z

    rst $30
    ld [hl], b
    rst $38
    rlca
    rst $38
    add e
    rst $38
    ld bc, $00ff
    rst $38
    nop

jr_033_4639:
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld e, b
    and a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$36f7], sp
    ret


    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    ld [hl], c
    add b
    ld [hl], c
    add b
    di
    nop
    rst $38
    nop
    ld [hl], e
    add b
    xor $11
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
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld [hl-], a
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $07ff
    rst $38
    ld c, a
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    sbc h
    db $e3
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    jr nc, @+$01

    ld [bc], a
    db $fd
    rlca
    ld hl, sp+$07
    ld hl, sp-$79
    ld a, b
    add a
    ld a, b
    rrca
    ldh a, [rIF]
    ldh a, [$f8]
    rlca
    ld a, [$0005]
    rst $38
    ret nz

    ccf
    add sp, $17
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
    ld bc, $01ff
    rst $38
    ld de, $d3ff
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
    ld a, a
    add b
    ld a, [hl]
    add c
    db $10
    rst $28
    inc b
    rst $38
    nop
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld b, $ff
    ld bc, $38ff
    rst $38
    ld bc, $00ff
    rst $38
    nop

jr_033_46e5:
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
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    ld b, b

jr_033_4703:
    cp a
    jr nz, jr_033_46e5

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$3cff], sp
    rst $38
    dec e
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
    rst $30
    rst $38
    rst $30
    rst $38
    rlca
    rst $38
    jr c, jr_033_4703

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld hl, sp+$07
    db $fc
    inc bc
    db $fd
    ld [bc], a
    rst $38
    nop
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
    db $fc
    inc bc
    db $fc
    inc bc
    ret nz

    ccf
    add b
    ld a, a
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
    nop
    rst $38
    nop
    rst $38
    ld bc, $1cff
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rst $08
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
    nop
    rst $38
    nop
    cp $01
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld b, $ff
    cp a
    rst $38
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
    dec sp
    rst $38
    dec sp
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
    rst $38
    ccf
    rst $38
    scf
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc b
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld b, $ff
    ld b, $ff
    ld b, $ff
    nop
    rst $38
    inc b
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
    inc bc
    rst $38
    inc bc
    rst $38
    ld a, [bc]
    rst $38
    ld [$08ff], sp
    rst $38
    nop
    rst $38
    ld bc, $1fff
    rst $38
    rrca
    rst $38
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
    db $fc
    inc bc
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    pop af
    rrca
    pop hl
    rra
    ret nz

    ccf
    ret nz

    ccf
    add c
    ld a, a
    rst $20
    rra
    inc bc
    nop
    nop
    nop
    rlca
    rst $38
    adc a
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
    ldh [$1f], a
    ret nz

    ccf
    nop
    rst $38
    add b
    ld a, a
    ldh a, [rIF]
    ret nz

    ccf
    add b
    ld a, a
    ldh [$1f], a
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
    ld bc, $0fff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $11ff
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $38
    ld bc, $01fe
    cp $01
    pop bc
    ccf
    ld bc, $21ff
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    ld a, a
    rst $38
    ccf
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
    ccf
    rst $38
    ret nz

    ccf
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
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
    ld hl, sp+$07
    db $fc
    inc bc
    db $fd
    ld [bc], a
    rst $38
    nop
    cp $01
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    db $fd
    inc bc
    ld a, l
    inc bc

jr_033_48ee:
    db $fd
    inc bc
    ld a, h
    inc bc
    ld a, h
    inc bc
    ld sp, hl
    ld b, $f8
    ld b, $f8
    ld b, $f2
    inc c
    ld [$f614], a
    inc c
    xor $1c
    add b
    ld a, h
    add b
    ld a, h
    adc b
    ld a, h
    adc h
    ld a, b
    inc c
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$08
    ldh a, [$38]
    ldh a, [rNR23]
    ldh a, [$38]
    ldh a, [$28]
    ldh a, [rBCPS]
    ldh a, [$f0]
    ldh [rSVBK], a
    ldh [$f0], a
    ldh [$f0], a
    ldh [$50], a
    ldh [rSVBK], a
    ret nz

    ldh [$c0], a
    and b
    ret nz

    jr nz, jr_033_48ee

    ld h, b
    nop
    ld h, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nc, @+$01

    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    add b
    ld a, a
    and b
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    and e
    ld a, a
    ld [hl], e
    cp a
    inc hl
    rst $38
    daa
    rst $38
    daa
    nop
    daa
    nop
    cpl
    nop
    cpl
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    dec a
    ld [bc], a
    ccf
    nop
    ld a, $01
    ld a, $01
    cp [hl]
    ld bc, $01be
    cp h
    inc bc
    cp l
    inc bc
    cp c
    rlca
    cp c
    rlca
    xor c
    rla
    cp c
    rlca
    cp c
    rlca
    or c
    rrca
    rst $30
    rrca
    rst $20
    rra
    db $e3
    rra
    rst $00
    ccf
    rst $00
    ccf
    rst $00
    ccf
    rst $00
    ccf
    rst $08
    ccf
    rst $08
    ccf
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    rst $38
    cp a
    cp a
    rst $38
    cp a
    rst $38

jr_033_4998:
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
    ld a, a
    cp $ff
    cp $fd
    cp $7f
    db $fc
    ld a, [hl]
    db $fc
    ld hl, sp-$04
    ld a, h
    ld hl, sp+$7c
    ld hl, sp+$7c
    ld hl, sp-$08
    ld hl, sp+$70
    ld hl, sp+$58
    ldh a, [rNR23]
    ldh a, [rNR10]
    ldh a, [rNR41]
    ldh a, [rNR10]
    ldh [$30], a
    ldh [$a0], a
    ld h, b
    and b
    ld h, b
    jr nz, jr_033_4998

    ld h, b
    ret nz

    nop
    ret nz

    ld b, b
    ret nz

    add b
    ret nz

    ret nz

    add b
    ret nz

    add b
    add b
    add b
    add b
    add b
    nop
    add b
    add b
    nop
    add b
    nop
    nop
    nop
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, $21ff
    rst $38
    ld bc, $27ff
    rst $38
    ld b, a
    rst $38
    ld c, a
    nop
    ld a, a
    nop
    cpl
    nop
    ld a, $01
    ld c, $01
    ld e, $01
    cp h
    inc bc
    cp h
    inc bc
    jr c, jr_033_4a19

    ld a, b
    rlca
    ld a, b
    rlca
    ld a, h
    inc bc
    db $fc

jr_033_4a19:
    inc bc
    ld sp, hl
    rlca
    pop hl
    rra
    db $eb
    rla
    push de
    cpl
    rst $20
    rra
    rst $00
    ccf
    ld b, a
    cp a
    add a
    ld a, a
    adc a
    ld a, a
    ccf
    rst $38
    cpl
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    sbc a
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
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    ld bc, $03ff
    rst $38
    ld bc, $01ff
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
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc de
    rst $38
    dec bc
    nop
    rlca
    nop
    rrca
    nop
    rrca
    nop
    rra
    nop
    ccf
    nop
    ld e, $01
    ld e, $01
    ld l, $01
    ld e, $01
    ld e, $01
    ld a, $01
    ld a, $01
    inc a
    inc bc
    jr c, @+$09

    inc a
    inc bc
    add hl, sp
    rlca
    ld a, c
    rlca
    jr c, @+$09

    jr c, jr_033_4aaf

    ld sp, $310f
    rrca
    ld sp, $630f

jr_033_4aaf:
    rra
    ld [hl], e
    rrca
    ld h, e
    rra
    ld h, e
    rra
    rst $20
    rra
    rst $00
    ccf
    rst $20
    rra
    rst $08
    ccf
    rst $28
    rra
    rst $20
    rra
    rst $28
    rra
    adc a
    ld a, a
    adc a
    ld a, a
    sbc a
    ld a, a
    cp a
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
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
    rst $38
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
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    pop af
    rst $38
    db $e3
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $00
    rst $38
    adc a
    rst $38
    adc [hl]
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc [hl]
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
    dec b
    cp $04
    rst $38
    ld [$18ff], sp
    rst $38
    db $10
    rst $38
    nop
    rst $38
    jr nz, @+$01

    inc bc
    db $fc
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    cp h
    inc bc
    inc a
    inc bc
    ld a, h
    inc bc
    inc a
    inc bc
    dec a
    inc bc
    add hl, sp
    rlca
    ld a, c
    rlca
    ld a, c
    rlca
    ld sp, hl
    rlca
    push af
    dec bc
    db $fd
    inc bc
    ei
    rlca
    ei
    rlca
    ei
    rlca
    rst $30
    rrca
    rst $30
    rrca
    db $e3
    rra
    rst $20
    rra
    rst $20
    rra
    rst $28
    rra
    adc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    cp a
    ld a, a
    ccf
    rst $38
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp [hl]
    rst $38
    ld a, [hl]
    rst $38
    db $fd
    rst $38
    ld a, b
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    pop af
    rst $38
    pop hl
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    jp $c7ff


    rst $38
    add a
    rst $38
    sbc [hl]
    rst $38
    rra
    rst $38
    dec [hl]
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    ccf
    rst $38
    scf
    rst $38
    ld d, $ff
    ld e, $ff
    db $10
    rst $38
    db $10
    rst $38
    ld bc, $10ff
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
    ld a, a
    nop
    rst $38
    ld a, a
    rst $38
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
    cp $ff
    cp $ff
    sbc $ff
    cp [hl]
    rst $38
    inc a
    rst $38
    ld a, h
    rst $38
    ld a, b
    rst $38
    ld a, [$feff]
    rst $38
    cp $ff
    cp $ff
    cp $ff
    sub $ff
    or d
    rst $38
    ldh a, [rIE]
    ld h, d
    rst $38
    jp Jump_033_51ff


    rst $38
    ld h, $ff
    and $ff
    db $ec
    rst $38
    ld h, h
    rst $38
    ld [bc], a
    db $fd
    jr @+$01

    add hl, de
    rst $38
    add hl, hl
    rst $38
    inc hl
    rst $38
    cp b
    rst $38
    jr c, @+$01

    ld a, b
    rst $38
    ret c

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    db $10
    rst $28
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
    rst $30
    rst $38
    rst $30
    rst $38
    ld sp, hl
    rst $38
    rst $28
    rst $38
    set 7, a
    rst $08
    rst $38
    adc e
    rst $38
    sbc h
    rst $38
    ld d, [hl]

jr_033_4c3b:
    rst $38
    rst $30
    rst $38
    and h
    rst $38
    dec [hl]
    rst $38
    jr jr_033_4c3b

    adc d
    ld [hl], a
    ld b, d
    cp a
    ld d, d
    xor a
    ld de, $10ef
    rst $28
    or b
    rst $28
    nop
    rst $38
    db $10
    rst $28
    ld [hl+], a
    rst $38
    xor d
    rst $38
    add c
    rst $38
    nop
    rst $38
    nop
    rst $38
    sub b
    ld l, a
    ld hl, $01ff
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
    ld bc, $0302
    inc b
    dec b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    nop
    dec c
    ld c, $0f
    db $10
    inc bc
    ld de, $0505
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $00
    nop
    rla
    jr jr_033_4caa

    ld a, [de]
    dec de
    inc bc
    inc e
    dec b
    dec b
    dec e
    ld e, $1f
    jr nz, jr_033_4cbd

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_033_4ca7

    add hl, hl
    dec b
    dec b

jr_033_4ca7:
    ld a, [hl+]
    dec hl
    inc l

jr_033_4caa:
    dec l
    nop
    ld l, $2f
    jr nc, jr_033_4ce1

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $05
    scf
    jr c, jr_033_4cf2

    ld a, [hl-]
    dec sp
    inc a
    dec a

jr_033_4cbd:
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    dec b
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
    add hl, de
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

jr_033_4ce1:
    ld h, b
    ld h, c
    dec b
    dec b
    dec b
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

jr_033_4cf2:
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    dec b
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, e
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
    dec b
    dec b
    dec b
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
    dec b
    dec b
    dec b
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
    ld [hl], b
    ld [hl], b
    ld [hl], b
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
    dec b
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
    dec b
    dec b
    dec b
    cp e
    cp h
    dec b
    dec b
    dec b
    dec b
    dec b
    cp l
    cp [hl]
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    cp a
    ret nz

    pop bc
    dec b
    dec b
    dec b
    dec b
    jp nz, $05c3

    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    call nz, $c6c5
    dec b
    dec b
    rst $00
    ret z

    ret


    jp z, $cccb

    call $cfce
    dec b
    dec b
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $05
    dec b
    rst $10
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    db $e4
    push hl
    and $e7
    add sp, $1c
    jp hl


    sub h
    ld [$0545], a
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0305
    inc bc
    inc bc
    ld bc, $0101
    ld [bc], a
    nop
    nop
    nop
    rlca
    ld bc, $0201
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    ld bc, $0201
    nop
    nop
    nop
    rlca
    ld bc, $0201
    nop
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    ld bc, $0201
    nop
    nop
    rlca
    rlca
    ld bc, $0202
    nop
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    ld bc, $0201
    nop
    nop
    rlca
    ld bc, $0202
    nop
    nop
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    ld bc, $0002
    nop
    rlca
    ld bc, $0201
    nop
    nop
    nop
    inc bc
    dec b
    inc bc
    inc bc
    inc bc
    ld bc, $0002
    nop
    rlca
    ld bc, $0001
    nop
    nop
    nop
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    dec b
    dec b
    ld bc, $0606
    nop
    nop
    dec b
    dec b
    dec b
    ld bc, $0101
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    ld b, $06
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
    nop
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
    inc bc
    inc bc
    inc bc
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0101
    ld [bc], a
    nop
    inc bc
    inc bc
    nop
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0101
    ld [bc], a
    nop
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
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
    dec b
    dec b
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
    inc bc
    dec b
    inc bc
    ld bc, $0101
    ld bc, $0002
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    dec b
    dec b
    ld bc, $0301
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
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    inc bc
    inc bc
    ld b, e
    inc bc
    inc bc
    inc bc
    inc hl
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ldh [rP1], a
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    rst $38
    nop
    rlca
    ld hl, sp-$08
    rlca
    rst $38
    nop
    db $fc
    db $fc
    inc bc
    inc bc
    nop
    nop
    cp $fe
    ld bc, $0001
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
    nop
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rlca
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ldh a, [rIE]
    db $db
    rst $38
    inc e
    rst $38
    inc a
    rst $38
    call z, $0cff
    rst $38
    inc c
    rst $38
    ld b, $ff
    ld b, $ff
    ld b, $ff
    inc bc
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ld bc, $07fe
    ld hl, sp+$1f
    ldh [$7f], a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp-$01
    di
    db $fc
    rst $28
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
    add b
    rst $38
    ld b, b
    rst $38
    ldh [$1f], a
    nop
    rra
    nop
    ccf
    nop
    rst $38
    nop
    ld bc, $0201
    inc bc
    inc b
    rlca
    add hl, bc
    rrca
    ld [hl-], a
    ccf
    ld c, h
    ld a, a
    sub b
    rst $38
    jr nz, @+$01

    nop
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
    nop
    nop
    nop
    add b
    nop
    cp $00
    rst $38
    ret nz

    ccf
    rst $38
    nop
    rlca
    ld hl, sp-$08
    rlca
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
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
    ld bc, $0ffe
    ldh a, [$7f]
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    sbc a
    rst $38
    inc e
    rst $38
    ld l, h
    rst $38
    adc h
    rst $38
    ld b, $ff
    ld b, $ff
    ld b, $ff
    inc bc
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07fe
    ld hl, sp+$1f
    ldh [$7f], a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    ldh a, [rIE]
    rst $00
    ld hl, sp+$3f
    ret nz

    ld bc, $0300
    nop
    rlca
    ld bc, $030e
    dec e
    rrca
    ld [hl-], a
    rra
    ld h, h
    ccf
    ret z

    ld a, a
    or b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02ff
    cp $04
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    nop
    nop
    ldh [rP1], a
    rst $38
    nop
    rst $38
    cp $01
    rlca
    ld hl, sp+$07
    rlca
    add b
    add b
    ld a, a
    ld a, a
    nop
    nop
    ldh a, [$f0]
    rrca
    rrca
    nop
    nop
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
    inc bc
    db $fc
    ccf
    ret nz

    rst $38
    ld c, $ff
    rra
    rst $38
    ld a, a
    rst $38
    ld hl, $2fff
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
    rra
    rst $38
    ccf
    rst $38
    rst $18
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    nop
    inc bc
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
    db $fc
    rst $38
    ldh a, [rIE]
    pop bc
    cp $81
    cp $03
    db $fc
    inc bc
    db $fc
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
    cp $01
    cp $01
    db $fc
    inc bc
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    rrca
    nop
    rra
    inc bc
    inc a
    rlca
    ld a, e
    rrca
    db $f4
    rra
    add sp, $7f
    sub b
    rst $38
    jr nz, @+$01

    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld c, a
    rst $08
    add d
    add d
    inc bc
    inc bc
    rlca
    rlca
    rrca
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
    nop
    ret nz

    nop
    rst $38
    nop
    rst $38
    ld hl, sp+$07
    ld hl, sp-$08
    rlca
    rlca
    ldh a, [$f0]
    rrca
    rrca
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
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
    rst $38
    rrca
    ldh a, [$7f]
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    rst $08
    rst $38
    sbc h
    rst $38
    db $ec
    rst $38
    adc h
    rst $38
    add [hl]
    rst $38
    add [hl]
    rst $38
    add [hl]
    rst $38
    add $ff
    ret nz

    rst $38
    ret nz

    rst $38
    add e
    db $fc
    rrca
    ldh a, [$3f]
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ei
    db $fc
    rst $20
    ld hl, sp-$61
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    nop
    nop
    nop
    nop
    add b
    nop
    rst $00
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fd
    rlca
    ld a, [$fc0f]
    ccf
    ret nc

    ld a, a
    and b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    ld bc, $03ff
    rst $38
    ld b, $fe
    ld [$10f8], sp
    ldh a, [rNR41]
    ldh [rLCDC], a
    ret nz

    db $e3
    db $e3
    rst $38
    rst $38
    pop af

Jump_033_51ff:
    pop af
    ldh [$e0], a
    ret nz

    ret nz

    add b
    add b
    ld bc, $0301
    inc bc
    rlca
    rlca
    rst $08
    rst $08
    rst $38
    rst $38
    ccf
    ret nz

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
    nop
    cp $00
    rst $38
    rra
    rra
    ld hl, sp-$08
    rlca
    rlca
    db $fc
    db $fc
    inc bc
    inc bc
    ret nz

    ret nz

    ccf
    ccf
    nop
    nop
    cp $fe
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
    rst $38
    nop
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
    rra
    ldh [rIE], a
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
    rst $38
    rst $38
    di
    rst $38
    rst $20
    rst $38
    ld a, c
    rst $38
    pop hl
    rst $38
    ld sp, $31ff
    rst $38
    ld sp, $30ff
    rst $38
    jr nc, @+$01

    ld bc, $0701
    rlca
    rra
    rra
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    ldh a, [$3f]
    jp nz, $857f

    rst $38
    dec b
    cp $0c
    cp $0c
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
    nop
    rst $38
    nop
    db $fd
    inc bc
    rlca
    inc bc
    ld e, $0f
    ld [hl], h
    rra
    add sp, $3f
    ldh a, [$7f]
    ret nz

    rst $38
    add b
    rst $38
    ld bc, $03ff
    rst $38
    ld b, $fe
    inc c
    db $fc
    ld e, $fe
    ccf
    rst $38
    ld a, [hl]
    cp $fc
    db $fc
    ld a, b
    ld a, b
    ld [hl], b
    ld [hl], b
    inc a
    inc a
    ld a, $3e
    ld a, a
    ld a, a
    db $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$e0], a
    ld b, b
    ld b, b
    ld h, c
    ld h, c
    ei
    ei
    rst $38
    rst $38
    ld sp, hl
    ld sp, hl
    ldh a, [$f0]
    ldh [$e0], a
    pop bc
    pop bc
    nop
    nop
    nop
    nop
    add b
    add b
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    ld hl, sp-$01
    rst $38
    ccf
    ccf
    ld hl, sp-$08
    rlca
    rlca
    rst $38
    rst $38
    nop
    nop
    cp $fe
    ld bc, $0001
    nop
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
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    ld sp, hl
    ld a, a
    add e
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    di
    rst $38
    ccf
    rst $38
    ld [hl], e
    rst $38
    sbc e
    rst $38
    dec de
    rst $38
    sbc e
    rst $38
    sbc e
    rst $38
    sbc e
    rst $38
    add c
    cp $87
    ld hl, sp+$1f
    ldh [$7f], a
    add b
    rst $38
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    db $fc
    jp $83fc


    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $81
    ld a, [hl]
    ld bc, $017e
    cp $01
    cp $01
    cp $01
    db $fc
    inc bc
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
    cp $fe
    ld a, h
    db $fc
    ld a, [hl]
    cp $73
    di
    rst $20
    rst $20
    adc $ce
    db $fc
    db $fc
    inc e
    inc e
    rra
    rra
    ccf
    ccf
    ld a, $3e
    db $fc
    db $fc
    ld hl, sp-$08
    ld e, $1e
    rra
    rra
    ccf
    ccf
    ld a, [hl]
    ld a, [hl]
    db $fc
    db $fc
    ld hl, sp-$08
    ld a, b
    ld a, b
    db $10
    db $10
    dec a
    dec a
    ld a, a
    ld a, a
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$e0], a
    ld [hl], c
    ld [hl], c
    ei
    ei
    rst $38
    rst $38
    add b
    ld a, b
    ldh [$1f], a
    ld hl, sp+$07
    rst $38
    nop
    ld a, a
    add b
    rlca
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    rst $38
    nop
    rst $38
    inc b
    ei
    ld a, b
    add a
    add b
    ld a, a
    db $fd
    ld [bc], a
    ld bc, $04fe
    inc b
    ld hl, sp-$08
    ldh a, [$f0]
    jr nz, jr_033_5438

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    jr nz, jr_033_544a

    jr nz, jr_033_544c

    jr nz, @+$22

    jr nz, jr_033_5450

    jr nz, jr_033_5452

    jr nz, jr_033_5454

    jr nz, jr_033_5456

    jr nz, @+$22

jr_033_5438:
    jr nz, jr_033_545a

    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    stop
    rst $38
    rst $28
    db $10
    rst $28
    db $10

jr_033_544a:
    ld l, a
    sub b

jr_033_544c:
    rrca
    ldh a, [$6c]
    sub e

jr_033_5450:
    inc bc
    rst $38

jr_033_5452:
    ccf
    rst $38

jr_033_5454:
    inc a
    rst $38

jr_033_5456:
    ld bc, $3efe
    pop bc

jr_033_545a:
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ret nz

    rst $38

jr_033_5462:
    ret nz

    rst $38

jr_033_5464:
    ret nz

    rst $38

jr_033_5466:
    add b
    rst $38

jr_033_5468:
    nop
    nop

jr_033_546a:
    nop
    nop

jr_033_546c:
    nop
    nop
    nop
    nop
    cp d
    ld b, c
    cp d
    ld b, c
    cp d
    ld b, c
    cp d
    ld b, c
    cp e
    ld b, b
    cp d
    ld b, c
    cp l
    ld b, b
    cp l
    ld b, b
    cp l
    ld b, b
    db $dd
    jr nz, jr_033_5462

    jr nz, jr_033_5464

    jr nz, jr_033_5466

    jr nz, jr_033_5468

    jr nz, jr_033_546a

    jr nz, jr_033_546c

    ld h, b
    jp nz, $c2fd

    db $fd
    jp nz, $e2fd

    db $fd
    ld [c], a
    db $fd
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $1f
    ld e, $0f
    ld c, $3f
    ld a, $7f
    ld a, [hl]
    db $fd
    db $fc
    add hl, sp
    jr c, jr_033_54cc

    ld e, $3f
    ld a, $7c
    ld a, l
    ld hl, sp-$08
    ld a, h
    ld a, h
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ld a, [hl]
    ld a, [hl]
    db $fc
    db $fc
    ldh a, [$f0]
    inc e
    inc e
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    cp $fe

jr_033_54cc:
    db $fc
    db $fc
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    jr jr_033_54ec

    inc a
    inc a
    ld a, a
    ld a, a
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    ld bc, $0001
    nop
    nop
    ldh [rP1], a
    db $fc
    ldh [$1f], a
    db $fc
    inc bc

jr_033_54ec:
    ld a, a
    add b
    rlca
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    ld a, [hl]
    rlca
    ld [$0807], sp
    rlca
    ld [$0807], sp
    rlca
    adc b
    rrca
    ldh a, [$3f]
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    rst $38

jr_033_550d:
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
    ld a, a
    di
    inc c
    pop hl
    ld e, $ec
    rra
    ld e, $ff
    rra
    rst $38
    rla
    rst $38
    ld h, c
    sbc a
    pop hl
    ld e, $01
    cp $e0
    rra
    pop hl
    ld e, $e1
    ld e, $1e
    rst $38
    ld e, $ff
    nop
    ld hl, sp+$00
    ret nz

    nop
    nop
    nop
    nop
    rrca
    nop
    ccf
    nop
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $00
    rst $00
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    ld h, a
    ld h, a
    rst $20
    rst $20
    ld h, a
    ld h, a
    rst $38
    pop bc
    ld a, a
    ld b, b
    rst $38
    ret nz

    ld a, a
    ld b, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld h, e
    ld a, h
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    jr nz, jr_033_55af

    sbc l
    ld a, l
    ret c

    jr c, jr_033_550d

    ld a, b
    sbc $3e
    rst $18
    ccf
    rst $18
    ccf
    sbc $3e
    call c, Call_000_183c
    ld hl, sp+$1f
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld a, $3e
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
    cp $fe
    inc a
    inc a
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
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    inc a
    inc a
    ld [$1e08], sp

jr_033_55af:
    ld e, $00
    rst $38
    rra
    rst $38
    ldh [$e0], a
    add e
    add e
    db $fc
    db $fc
    add b
    add b
    add c
    add c
    rst $38
    rst $38
    db $fc
    db $fc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    db $e4
    ldh [$1f], a
    rst $38
    nop
    rst $38
    nop
    rrca
    ldh a, [$f0]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $30
    jr jr_033_5632

    ld hl, sp-$10
    rra
    rst $30
    jr jr_033_5639

    rst $38
    jr @+$01

    jr c, @+$41

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

jr_033_5632:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_033_5639:
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
    nop
    rst $38
    nop
    rst $38
    jr nc, jr_033_568d

    ld a, b
    ld a, c
    ldh a, [$f0]
    jr nz, jr_033_5674

    ld a, c
    ld a, c
    rst $38
    rst $38
    cp $fe
    inc b
    inc b
    ld c, $0e
    rra
    rra
    ccf
    ccf
    rst $38
    rst $38
    sbc $de
    add a
    add a
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    rst $38
    rst $38
    rst $18
    rst $18
    add e
    add e

jr_033_5674:
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    cp a
    cp a
    rst $38
    rst $38
    add $c6
    add e
    add e
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ccf

jr_033_568d:
    ccf
    ccf
    ccf
    rrca
    rst $38
    ldh a, [$f0]
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    add b
    rst $38
    cp a
    ret nz

    and c
    sbc $af
    ret nc

    xor a
    ret nc

    xor a
    ret nc

    xor a
    ret nc

    xor a
    ret nc

    xor a
    ret nc

    xor a
    ret nc

    xor a
    ret nc

    xor a
    ret nc

    xor a
    ret nc

    xor a
    ret nc

    and c
    sbc $bf
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    and c
    sbc $2f
    ret nc

    xor a
    ld d, c
    xor a
    ld d, c
    xor a
    ld d, e
    rlca
    ei
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $00
    cp a
    jp $ff83


    rst $38
    add e
    add e
    rst $38
    add e
    rst $38
    add e
    rst $38
    ld b, e
    ld a, a
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
    rst $38
    ldh a, [$8f]
    rst $38
    add b
    rst $38
    adc h
    rst $38
    adc e
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    add sp, $3f
    add sp, $3f
    add sp, $3f
    add sp, $3f
    db $ec
    ccf
    db $e3
    ccf
    db $ec
    ccf
    db $eb
    ccf
    jr z, @+$01

    jr z, @+$01

    jr z, @+$01

    jr z, @+$01

    jr z, @+$01

    jr z, @+$01

    inc l
    rst $38
    inc hl
    rst $38
    jr c, jr_033_5771

    ld a, a
    ld a, a
    db $fc
    db $fc
    ld a, b
    ld a, b
    jr jr_033_5752

    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    cp [hl]
    cp [hl]
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    jp $87c3


    add a
    rrca
    rrca

jr_033_5752:
    adc a
    adc a
    rst $38
    rst $38
    rst $28
    rst $28
    pop hl
    pop hl
    pop bc
    pop bc
    add e
    add e
    rlca
    rlca
    rlca
    rlca
    rst $08
    rst $08
    rst $38
    rst $38
    rst $30
    rst $30
    pop hl
    pop hl
    ret nz

    ret nz

    ret nz

    ret nz

    add c
    add c
    rst $38

jr_033_5771:
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    rst $38
    rst $38
    add b
    add b
    rst $38
    nop
    rst $38
    rst $38
    inc bc
    rst $38
    ld a, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld a, e
    rst $38
    db $fc
    inc bc
    db $fc
    dec bc
    db $fc
    inc bc
    add h
    ld a, e
    cp h
    ld b, e
    inc a
    jp $c33c


    sbc h
    db $e3
    sbc h
    db $e3
    add h
    ei
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $20
    sbc [hl]
    db $e3
    add d
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    inc bc
    rst $38
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    rst $38
    add b
    rst $38
    db $fc
    rlca
    rst $38
    ld h, b
    rst $38
    ld e, c
    rst $38
    ld b, c
    rst $38
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    sbc [hl]
    ld h, c
    and $19
    sbc a
    ld l, c
    ld e, c
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld h, c
    rst $38
    add hl, de
    rst $38
    add c
    rst $38
    ldh a, [rIE]
    ld a, $3f
    db $fd
    db $fd
    ld hl, sp-$08
    cp b
    cp b
    rra
    rra
    ccf
    ccf
    ld a, [hl]
    ld a, [hl]
    sbc $de
    add a
    add a
    rrca
    rrca
    rrca
    rrca
    rst $18
    rst $18
    rst $38
    rst $38
    rst $20
    rst $20
    pop hl
    pop hl
    pop bc
    pop bc
    add e
    add e
    jp $ffc3


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ccf
    ccf
    ret nz

    ret nz

    nop
    nop
    rrca
    rrca
    rst $38
    rst $38
    ldh [$e0], a
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    ld a, c
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld a, c
    rst $38
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    nop
    add [hl]
    ld a, c
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    ld [bc], a
    db $fd
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    dec e
    and $1f
    rst $38
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
    nop
    inc bc
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
    ldh a, [$1f]
    rst $38
    add b
    rst $38
    ld l, h
    rst $38
    dec bc
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$88ff], sp
    rst $38
    ld l, h
    rst $38
    add e
    rst $38
    ld l, h
    rst $38
    dec bc
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    adc e
    rst $38
    ld l, a
    rst $38
    rlca
    rst $38
    rst $20
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    cp a
    cp a
    rra
    rra
    ccf
    ccf
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
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
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
    xor $ff
    xor $ff
    cp $ff
    rrca
    rrca
    ldh a, [$f0]
    nop
    nop
    inc bc
    inc bc
    rst $38
    rst $38
    db $fc
    db $fc
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    db $fc
    ldh a, [$08]
    db $10
    add sp, -$10
    ld [$08f0], sp
    ldh a, [$08]
    ldh a, [$08]
    rrca
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp-$11
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp-$11
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    rst $38
    rst $30
    ld [$0cf3], sp
    db $fd
    ld c, $1e
    rst $38
    ld hl, sp-$01
    db $fd
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rra
    rst $38
    rst $38
    rra
    rst $38
    dec e
    rst $38
    dec e
    rst $38
    dec e
    rst $38
    dec e
    rst $38
    dec e
    rst $38
    dec a
    ccf
    dec a
    ccf
    dec e
    rra
    inc de
    rra
    rlca
    rrca
    rst $20
    rlca
    rst $28
    adc a
    rst $38
    rst $08
    ld a, a
    rst $08
    ld a, a
    rst $08
    ld a, a
    rst $08
    ld a, a
    rst $08
    ld a, a
    rst $08
    ld a, a
    rst $08
    ld a, a
    rst $18
    ld a, a
    rst $18
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

jr_033_59a4:
    rst $38
    rst $38

jr_033_59a6:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    cp b
    rst $38
    cp b
    rst $38
    cp b
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
    nop
    rst $38
    nop
    cp $80
    ld a, a
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    rst $00
    jr c, jr_033_59a4

    jr c, jr_033_59a6

    jr c, jr_033_5a19

    jr c, jr_033_5a1b

    jr c, jr_033_5a1d

    jr c, jr_033_5a1f

    jr c, jr_033_5a19

    jr nc, jr_033_5a1b

    jr nc, jr_033_5a1d

    jr nc, jr_033_5a1f

    jr nc, jr_033_5a21

    jr nc, jr_033_5a23

    jr nc, jr_033_5a65

    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld b, b

jr_033_5a19:
    ld b, b
    ld b, b

jr_033_5a1b:
    ld b, b
    ld b, b

jr_033_5a1d:
    ld b, b
    ld b, b

jr_033_5a1f:
    ld b, b
    ld b, b

jr_033_5a21:
    ld b, b
    ld b, b

jr_033_5a23:
    ld b, b
    ret nz

    ret nz

    ret nz

    ret nz

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
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, $ff
    adc a
    rst $38
    adc a
    rst $38
    sbc a
    rst $38
    add b
    rst $38
    ldh a, [rIE]
    ld [hl], b
    rst $38
    nop
    rst $38
    ld h, b
    sbc a
    ld b, b
    cp a
    ld b, b
    cp a
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_033_5a65:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b

jr_033_5a93:
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
    ld bc, $0106
    ld b, $00
    inc bc
    nop
    add e
    nop
    add c
    nop
    add c
    add b
    ld b, b
    ret nz

    jr nz, @-$3e

    jr nz, jr_033_5a93

    db $10
    ldh [rNR10], a
    ldh [rNR10], a
    ldh a, [$0c]
    db $fc
    ld [bc], a
    cp $01
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
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    add [hl]
    add [hl]
    add [hl]
    add [hl]
    add [hl]
    add [hl]
    call nz, Call_000_3bc4
    call nz, Call_033_443b
    ld a, [de]
    ld h, l
    ld a, [de]
    dec h
    ld a, [bc]
    dec [hl]
    ld a, [bc]
    dec [hl]
    nop
    rst $38
    db $fc
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
    rst $38
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_033_5b18:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_033_5b26:
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
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld l, h
    ld l, h
    ld c, h
    ld c, h
    call z, $d8cc
    ret c

    ret c

    ret c

    or b
    or b
    ld c, [hl]
    or c
    ld c, h
    or e
    inc e
    db $e3
    sbc b
    ld h, [hl]
    sbc b
    ld h, [hl]
    jr nc, jr_033_5b18

    jr nz, jr_033_5b26

    ld h, b
    sbc b
    ld b, b
    or c
    nop
    di
    ldh [rNR22], a
    di
    inc c
    rst $30
    ld [$09f6], sp
    db $f4
    dec bc
    ld hl, sp+$07
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
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    rlca

jr_033_5b7b:
    rlca
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rlca
    rst $30
    rst $20
    rla
    db $e3
    inc de
    db $e3
    dec de
    ld [c], a
    ld a, [de]
    ld [c], a
    ld a, [de]
    ldh [rNR23], a
    rla
    db $fc
    daa
    db $fc
    daa
    db $fc
    daa
    db $fc
    db $e3
    cp $23
    cp $23
    cp $23
    cp $23
    rst $38
    ld de, $11ff
    rst $38
    ld de, $11ff
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
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
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [$0e]
    ldh [rNR32], a
    ldh [rNR32], a
    ret nz

    jr c, @-$3e

    jr nc, jr_033_5b7b

    ld [hl], b
    nop
    ldh [rP1], a
    ret nz

    nop
    add c
    nop
    add e
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    ccf
    inc bc
    ld a, h
    rlca
    ld hl, sp-$20
    ldh [$c1], a
    pop bc
    rlca
    rlca
    inc e
    inc e
    ld [hl], b
    ld [hl], b
    ret nz

    ret nz

    add b
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, b
    ld b, b
    jr nc, jr_033_5c56

    ld [$0808], sp
    ld [$0f0f], sp
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
    rra
    rra
    daa
    daa
    ld a, e
    ld a, e
    ld a, h
    ld a, h
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

jr_033_5c56:
    ret nz

    ret nz

    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
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
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ccf
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [rIF]
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$07
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    inc bc
    cp $03
    cp $03
    cp $03
    cp $01
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $80ff
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
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    nop
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
    ld a, a
    nop
    rst $38
    rst $38
    rst $38
    cp $fe
    ld hl, sp-$08
    ldh [$e0], a
    pop bc
    pop bc
    inc bc
    inc bc
    rrca
    rrca
    inc a
    inc a
    ldh a, [$f0]
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
    rlca
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    sbc a
    sbc a
    rrca
    rrca
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
    rst $38
    add b
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ccf
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$1f], a
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [rIF]
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp-$01
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
    ret nz

    ret nz

    ld bc, $0701
    rlca
    rra
    rra
    ld a, h
    ld a, h
    ldh a, [$f0]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    rst $38
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
    rrca
    rrca
    rlca
    rlca
    nop
    ld bc, $0302
    inc b
    ld bc, $0101
    ld bc, $0605
    rlca
    ld bc, $0908
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    ld bc, $0101
    db $10
    ld de, $1201
    inc de
    inc d
    ld bc, $1501
    ld d, $17
    jr @+$1b

    ld bc, $1a01
    dec de
    add hl, bc
    ld a, [bc]
    inc e
    ld bc, $0101
    ld bc, $1e1d
    rra
    jr nz, jr_033_5df6

    ld [hl+], a
    inc hl
    inc de
    inc d
    ld bc, $0101
    ld bc, $0101
    ld bc, $2524
    ld h, $01
    ld bc, $2701
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    jr z, jr_033_5e1b

    ld a, [hl+]
    dec hl
    inc l
    dec l

jr_033_5df6:
    ld l, $2f
    jr nc, jr_033_5e2b

    ld [hl-], a
    inc sp
    ld bc, $0101
    ld bc, $3534
    ld [hl], $37
    jr c, jr_033_5e3f

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

jr_033_5e1b:
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

jr_033_5e2b:
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld bc, $6968
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c

jr_033_5e3f:
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
    dec b
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
    sub a
    ld bc, $a7a6
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
    sub a
    ld bc, $b5b4
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
    jp nz, $c301

    call nz, $c6c5
    rst $00
    ret z

    ret


    jp z, $cccb

    call $cfce
    ret nc

    ld bc, $d101
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $01
    ld bc, $df01
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$010e], a
    ld bc, $eb01
    db $ec
    db $ed
    xor $ef
    ldh a, [$f0]
    pop af
    ld a, [c]
    di
    db $f4
    push af
    or $01
    ld bc, $f701
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    cp $f2
    inc bc
    ld bc, $0303
    inc bc
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    nop
    nop
    nop
    nop
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    dec b
    dec b
    inc bc
    inc bc
    ld bc, $0201
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    dec b
    dec b
    dec b
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
    dec b
    dec b
    dec b
    ld bc, $0101
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
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0300
    ld [bc], a
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
    ld bc, $0101
    ld b, $03
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    dec b
    dec b
    ld bc, $0101
    ld b, $03
    dec b
    ld b, $00
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
    ld bc, $0306
    inc bc
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    dec b
    dec b
    inc bc
    inc bc
    ld bc, $0601
    dec b
    dec b
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    inc bc
    inc bc
    dec b
    inc bc
    ld [bc], a
    nop
    ld b, $02
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    dec b
    dec b
    dec b
    inc bc
    ld hl, $0002
    rlca
    ld bc, $0002
    nop
    nop
    nop
    nop
    dec b
    ld bc, $0505
    inc bc
    ld bc, $0002
    nop
    ld bc, $0202
    nop
    nop
    nop
    nop
    dec b
    dec b
    dec b
    inc bc
    inc bc
    ld bc, $0002
    nop
    rlca
    ld bc, $0002
    nop
    nop
    nop
    ld bc, $0505
    inc bc
    inc bc
    ld bc, $0002
    nop
    inc b
    ld [bc], a
    inc bc
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0503
    inc bc
    ld bc, $0101
    nop
    nop
    nop
    rlca
    ld [bc], a
    ld bc, $0002
    nop
    dec b
    inc bc
    dec b
    inc bc
    ld bc, $0101
    ld [bc], a
    nop
    nop
    rlca
    ld bc, $0201
    ld [bc], a
    nop
    dec b
    dec b
    dec b
    ld b, e
    ld bc, $0101
    ld [bc], a
    nop
    nop
    nop
    rlca
    ld bc, $0201
    nop
    inc bc
    dec b
    dec b
    inc bc
    ld bc, $0101
    ld [bc], a
    nop
    nop
    nop
    rlca
    rlca
    ld bc, $0001
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
    ret nz

    ret nz

    ldh a, [$f0]
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
    rst $38
    rst $38
    rst $38
    ld bc, $0001
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
    ld bc, $ffff
    ld bc, $03fe
    db $fc
    rlca
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ld a, a
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
    rst $38
    nop
    rst $38
    ld bc, $01ff
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
    ld [$08ff], sp
    rst $38
    ld [$10ff], sp
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    add b

jr_033_60cf:
    rst $38
    nop
    ld bc, $8000
    nop
    ret nz

    nop
    ldh [$80], a
    ld [hl], b
    ret nz

    jr nc, @-$1e

    jr jr_033_60cf

    inc c
    ld hl, sp+$06
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
    nop
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
    nop
    nop
    db $fc
    db $fc
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    cp $03
    db $fc
    rlca
    ld hl, sp+$0f
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$3f], a
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
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
    ld [$08ff], sp
    rst $38
    ld [$10ff], sp
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

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

jr_033_616f:
    rst $38
    ld a, [hl]
    add c
    ld a, $c1
    ccf
    ret nz

    rra
    ld h, b
    rrca
    jr nc, jr_033_618a

    jr nc, @+$09

    jr jr_033_6182

    inc c
    inc bc

jr_033_6181:
    inc b

jr_033_6182:
    ld bc, $0006
    add e
    nop
    pop bc
    nop
    pop hl

jr_033_618a:
    add b
    ld h, b
    ret nz

    jr nc, jr_033_616f

    jr jr_033_6181

    inc c
    ld hl, sp+$06
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
    add b
    add b
    ldh [$e0], a
    ld hl, sp-$08
    cp $fe
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
    ld bc, $03fe
    cp $03
    db $fc
    rlca
    ld hl, sp+$0f
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$3f], a
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld [bc], a
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_033_61e6:
    nop
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

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    jr c, jr_033_6236

    jr c, jr_033_6238

    rst $20
    jr jr_033_61e6

    inc e
    di
    inc c
    pop af
    ld c, $79
    add [hl]
    ld a, c
    add [hl]
    inc a
    ld b, e
    inc e
    ld h, e
    ld e, $21
    ld c, $11
    rlca
    ld [$8807], sp
    inc bc
    call nz, Call_033_4281
    pop bc
    ld [hl+], a
    ldh [rNR11], a
    ldh a, [$09]
    ld hl, sp+$05
    db $fc
    inc bc
    ld sp, hl
    ld b, $77
    adc b
    rla
    add sp, $07
    ld hl, sp+$0f
    ldh a, [$08]
    ld [$f8f8], sp
    ld hl, sp-$08

jr_033_6236:
    inc b
    inc b

jr_033_6238:
    inc b
    inc b
    inc b
    inc b
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
    ld bc, $0101

jr_033_624c:
    ld bc, $0103
    rlca
    ld bc, $0507
    dec bc
    dec c
    inc de
    dec c
    inc de
    dec e
    ld [hl+], a
    dec a
    ld b, d
    dec sp
    ld b, h
    ld a, e
    add h
    sbc h
    ld h, d
    sbc h
    ld h, d
    sbc h
    ld h, d
    call c, $cc22
    ld [hl-], a
    call z, $cc32
    ld [hl-], a
    db $ec
    ld [de], a
    db $ec
    ld [de], a
    db $ec
    ld [de], a
    db $ec
    ld [de], a
    db $ec
    ld [de], a
    db $f4
    ld a, [bc]
    db $f4
    ld a, [bc]
    db $f4
    ld a, [bc]
    db $f4
    ld a, [bc]
    ld a, b
    add [hl]
    ld a, b
    add [hl]
    jr c, jr_033_624c

    daa
    ret c

    sbc a
    ld h, b
    cp a
    ld b, b
    cp a
    ld b, b
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    dec bc
    inc b
    dec bc
    inc b
    dec bc
    inc b
    dec bc
    inc b
    dec de
    ld [$0817], sp
    rla
    ld [$0817], sp
    rla
    ld [$0817], sp
    scf
    ld [$0837], sp
    scf
    db $10
    cpl
    db $10
    cpl
    db $10
    cpl
    rra
    ld h, b
    ld h, b
    db $10
    ld c, $70
    rst $30
    ld [$04f8], sp
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$07
    ld hl, sp+$04
    ld hl, sp+$04
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $61ff
    rst $38
    ld h, c
    rst $38
    ld l, a
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, l
    rst $38
    ld a, l
    rst $38
    ld a, l
    rst $38
    ld a, a
    ld a, a
    rst $38
    ld a, a
    ld hl, sp+$7f
    ldh a, [$3f]
    ld sp, hl
    ret nz

    ccf
    jp $c13f


    ccf
    pop bc
    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    rra
    rst $38
    rra
    rst $38
    rra
    cp $0f
    rst $38
    rrca
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
    inc bc
    rst $38

jr_033_633e:
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
    ld bc, $01ff
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
    nop
    rst $38
    nop
    rst $38
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
    ld bc, $02fd
    ei
    ld [bc], a
    ei
    dec b
    rst $30
    inc b
    rst $30
    rrca

jr_033_637b:
    rst $28
    nop
    ldh [rP1], a
    rst $38
    rst $38
    nop
    rrca
    nop
    nop
    rrca
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
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    pop bc
    ccf
    rst $00
    ld a, $cb
    inc a
    adc $38
    call nc, $dd38
    jr nz, jr_033_637b

    ld hl, $e112
    jp nc, $d320

    jr nz, jr_033_633e

    ld h, b
    sub e
    ld h, b
    ld de, $18e0
    ldh [$1f], a
    ldh [$1f], a
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
    sub d
    rst $38
    sub d
    rst $38
    sub d
    rst $38
    rst $38
    add b
    add b
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rrca
    rst $38
    xor $fe
    rst $30
    rst $38
    rst $30
    rst $38
    ldh a, [$f8]
    nop
    ld [$0800], sp
    nop
    ld [$0400], sp
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    add l
    ld bc, $03c7
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    ld [$18ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    pop af
    pop af
    pop af
    pop af
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
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld b, b
    and b
    rra
    rst $18
    jr nz, @+$01

    daa
    cp a
    ld c, b
    ld a, a
    ld d, b
    ld a, a
    sub c
    rst $38
    rst $38
    rst $38
    ld b, a
    rst $38
    adc a
    rst $38
    add a
    rst $38
    ld a, [$07ff]
    rst $38
    add sp, -$01
    rra
    rra
    nop
    ldh [$e0], a
    rra
    rst $38
    nop
    nop
    cp $fd
    ld [bc], a
    cp $01
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
    ldh [rIE], a
    ld hl, sp+$1f
    db $f4
    rrca

jr_033_649c:
    inc e
    rlca
    ld a, [bc]
    rlca
    xor $01
    ld b, $e1
    ld [de], a
    pop hl
    ld [de], a
    ld bc, $01f2
    ld a, [c]
    ld bc, $01f2
    ld [c], a
    ld bc, $0106
    cp $21
    cp $ff

jr_033_64b6:
    ld [hl], b
    rst $38
    ld hl, sp-$01
    ld [hl], b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], c
    rst $38
    ld [hl], c
    rst $38
    ld a, a
    ldh [$e0], a
    nop
    nop
    nop
    nop
    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    add l
    db $fd
    inc sp
    ld c, e
    or a
    rst $08
    jr nc, jr_033_6522

    jr nc, @+$4a

    nop
    or h
    nop
    nop
    add a
    nop
    or a
    jr nc, jr_033_649c

    jr nc, jr_033_64b6

    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr @+$01

    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    ld a, a
    ld a, a
    ld hl, sp-$08
    ld hl, sp-$08
    rst $38
    rst $38
    rlca
    rlca
    rlca
    rlca
    ld a, a
    ld a, a
    db $fc
    db $fc
    db $fc
    db $fc
    rst $38
    rst $38
    db $e3
    db $e3
    inc bc
    inc bc
    rrca
    rrca
    cp $fe
    cp $fe
    cp $fe
    rst $38
    rst $38
    ld sp, hl
    ld sp, hl

jr_033_6522:
    ld bc, $0101
    ld bc, $8181
    rst $38
    rst $38
    rst $38
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

    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
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
    ccf
    ret nz

    ret nz

    ccf
    rst $38
    pop bc
    rst $38
    ccf
    rst $38
    inc b
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    and $ff
    jr @+$01

    db $e3
    rst $38
    inc c
    db $fc
    ldh a, [$f3]
    ld bc, $030e
    db $fc
    rst $38
    nop
    nop
    ld bc, $00c1
    di
    nop
    rlca
    add b
    rlca
    add b
    rlca
    add b
    rlca
    add b
    rlca
    add b
    rlca
    add b
    rlca
    add b
    rlca
    add b
    rlca
    add b
    rlca
    add b
    rlca
    add b
    rlca
    add b
    rlca
    add b
    rlca
    ld hl, sp+$07
    add b
    rlca
    add b
    adc a
    ld b, b
    adc a
    ld b, b
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    rst $38
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
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, h
    rst $38
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add b
    ld bc, $0381
    add e
    rra
    sbc a
    ld a, a
    rst $38
    add b
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld a, a
    rst $38
    rst $00
    rst $00
    rst $38
    rst $38
    cp [hl]
    cp [hl]
    ccf
    ccf
    rst $38
    rst $38
    pop hl
    pop hl
    pop af
    pop af
    rst $38
    rst $38
    sbc a
    sbc a
    rra
    rra
    rra
    rra
    ld hl, sp-$08
    ld hl, sp-$08
    rst $38
    rst $38
    rst $30
    rst $30
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    rst $38
    rst $38
    ld bc, $0101
    ld bc, $0000
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
    ld a, a
    ld a, a
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    rst $08
    rst $08
    rst $38
    rst $38
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    db $fc
    db $fc
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    nop
    rst $38
    nop
    ld bc, $fefe
    ld bc, $c0ff
    rst $38
    ld a, $ff
    inc c
    rst $38
    inc sp
    rst $38
    db $fc
    db $fc
    db $10
    di
    ld h, b
    rst $28
    add e
    sbc h
    rrca
    ld [hl], b
    rra
    ldh [$7f], a
    add b
    rst $38
    nop
    inc bc
    inc bc
    rrca
    rrca
    cp a
    cp a
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    ccf
    rra
    rra
    rlca
    rlca
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, $ff
    add $ff
    rst $38

jr_033_66ad:
    rst $38
    rst $38

jr_033_66af:
    rst $38
    rst $38

jr_033_66b1:
    sbc a
    rst $38
    sub a
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $0001
    nop
    nop
    nop
    cp $ce
    sbc $cf
    reti


    adc $d9
    adc $d9
    adc $d9
    adc $d9
    adc $d9
    adc $d9
    adc $99
    ld c, [hl]
    add hl, de
    adc $19
    adc $19
    adc $15
    adc $dc
    rst $08
    jr nc, jr_033_66ad

    jr nc, jr_033_66af

    jr nc, jr_033_66b1

    inc sp
    rst $08
    inc sp
    rst $08
    rst $38
    rst $08
    rst $30
    rst $00
    rst $38
    rst $08
    cp [hl]
    adc [hl]
    ccf
    rrca
    db $fd
    db $fd
    ld hl, sp-$08
    ld hl, sp-$08
    rst $38
    rst $38
    add a
    add a
    add e
    add e
    rst $18
    rst $18
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    ld hl, sp-$08
    ldh [$e0], a
    ldh a, [$f0]
    pop af
    pop af
    rst $38
    rst $38
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    add c
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    rst $00
    rst $00
    rst $38
    rst $38
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    rra
    rra
    rra
    rra
    rst $38
    rst $38
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    rst $38
    rst $38
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    ldh [rP1], a
    rst $38
    nop

jr_033_6755:
    nop
    db $fc
    db $fc
    jr jr_033_6755

    ld h, b
    rst $28
    add e
    sbc h
    rrca
    ld [hl], b
    ldh [$e0], a
    add b
    add b
    nop
    nop
    nop
    nop
    ld bc, $0701
    rlca
    rra
    rra
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    pop hl
    pop hl
    ld e, $1e
    ldh [$e0], a
    nop
    nop
    add b
    add b
    ld b, d
    ld b, d
    ld b, b
    ld b, b
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    jr nz, jr_033_67bb

    inc hl
    inc h
    inc hl
    inc h
    inc hl
    inc h
    inc hl
    inc h
    inc hl
    inc h
    inc hl
    inc h
    inc hl
    inc h
    inc hl
    inc h
    inc hl
    inc h
    inc hl
    inc h
    inc bc
    ld h, h
    inc bc
    ld a, h
    dec de
    db $e4
    ld bc, $fffe
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

jr_033_67bb:
    ld a, a
    rra
    rra
    inc bc
    inc bc
    nop
    add b
    nop
    ldh [rP1], a
    ld hl, sp+$00
    cp $06
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld [bc], a
    dec b
    ld a, [bc]
    dec c
    ld a, [bc]
    dec c
    ld a, [de]
    dec e
    ld a, d
    ld a, l
    add sp, -$01
    ld [c], a
    db $fd
    jp nz, $fdfd

    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    sbc l
    sbc a
    db $fd
    rst $38
    cp h
    cp h
    ccf
    ccf
    db $fd
    db $fd
    ld hl, sp-$08
    db $fc
    db $fc
    rst $38
    rst $38
    jp $e1c3


    pop hl
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rra
    rrca
    rrca
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    ld a, [hl]
    ld a, [hl]
    rst $38
    rst $38
    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    rst $38
    rst $38
    rrca
    rrca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
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
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    rst $38
    rra
    rra
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    cp $fe
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld bc, $fe01
    rlca
    ld a, b
    rrca
    ldh a, [$3f]
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    ld a, [hl]
    ld a, [hl]
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
    ld bc, $ff01
    rst $38
    ldh [$e0], a
    rra
    rra
    ld hl, sp-$08
    rst $38
    nop
    cp $00
    ldh a, [rP1]
    ld sp, hl
    ld b, $ff
    nop
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    ret nz

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
    ld hl, sp+$47
    rst $38
    ret nz

    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $18
    rst $38
    push de
    rst $38
    ld [hl], l
    rst $38
    rst $18
    rst $38
    push af
    rst $38
    ld a, a
    ld a, a
    rra
    rra
    inc bc
    inc bc
    nop
    nop
    add b
    nop
    ret nz

    ret nz

    ldh a, [$c0]
    db $fc
    ret nz

    ld h, b
    ldh [rSVBK], a
    ldh a, [$08]
    adc b
    ld c, b
    ret z

    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld h, b
    ldh [rSVBK], a
    ldh a, [$7d]
    ld hl, sp+$7f
    db $fc
    rst $38
    rst $38
    cp $ff
    pop af
    rst $38
    ld a, b
    ld a, a
    ret nz

    jp $e1e0


    rst $38
    rst $38
    rst $28
    rst $28
    add a
    add a
    jp $ffc3


    rst $38
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    ld a, a
    ld a, a
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $8001
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    ccf
    rra
    rra
    rra
    rra
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    cp $fe
    rst $38
    rst $38
    ld bc, $0001
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
    nop
    nop
    nop
    nop
    ld bc, $0701
    rlca
    ld e, $1e
    rlca
    ld hl, sp+$1f
    ldh [$78], a
    add b
    db $e3
    nop
    adc c
    nop
    push de
    nop
    ld d, [hl]
    nop
    cp d
    nop
    db $ed
    nop
    rst $38
    nop
    ldh [$1f], a
    rrca
    ldh a, [$f0]
    rrca
    ld bc, $3ffe
    ret nz

    rst $38
    nop
    ld hl, sp+$00
    ld bc, $f300
    inc c
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
    ld a, a
    ld hl, sp-$19
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    db $fc
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    jp hl


    rst $38
    ld sp, hl
    rst $38
    rst $28
    rst $38
    db $eb
    rst $38
    ld a, [$ff7f]
    rra
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $807e
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    sbc a
    ldh [$f0], a
    ret nz

    ld a, b
    ldh [$3c], a
    ld hl, sp+$14
    db $fc
    ld a, [bc]
    cp $87
    rst $38
    pop bc
    rst $38
    ldh [rIE], a
    nop
    rrca
    add b
    add a
    ret nz

    jp $fffe


    rst $18
    rst $18
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
    add e
    add e
    rst $38
    rst $38
    ccf
    ccf
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rst $38
    rst $38
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    rst $38
    rst $38
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    nop
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
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    pop af
    ld c, $87
    ld a, b
    rra
    ldh [$7f], a
    add b
    ld hl, sp+$00
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
    inc [hl]
    rlc b
    rst $38
    or h
    inc bc
    jp Jump_033_7c3c


    add e
    add b
    ld a, a
    rrca
    ldh a, [rIE]
    nop
    rst $38
    nop
    ret nz

    nop
    rlca
    nop
    db $e3
    inc e
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
    ret nz

    ccf
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    ccf
    rst $38
    daa
    rst $38
    and $ff
    db $76
    rst $38
    ld c, [hl]
    rst $38
    call $fcff
    rst $38
    cp $1f
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
    ccf
    nop
    rra
    nop
    rlca
    nop
    cp $81
    rst $38
    ret nz

    rst $38
    and b
    ld a, a
    jr nz, @+$01

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
    add b
    add b
    ld b, b
    ret nz

    and b
    ldh [$5f], a
    ldh a, [$3f]
    db $fc
    dec bc
    cp $05
    rst $38
    ld [bc], a
    rst $38
    add c
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    nop
    inc bc
    add b
    add c
    ret nz

    ret nz

    ldh [$e0], a
    rst $38
    rst $38
    rst $28
    rst $28
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $8001
    add b
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
    rrca
    rrca
    ld a, a
    ld a, a
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
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    jp Jump_000_0f3c


    ldh a, [$3f]
    ret nz

    rst $38
    nop
    db $fc
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
    rlca
    nop
    dec bc
    nop
    rst $28
    nop
    ld hl, sp+$07
    add c
    ld a, [hl]
    ld a, $c1
    ret nz

    ccf
    inc bc
    db $fc
    ld a, a
    add b
    rst $38
    nop
    db $fc
    nop
    nop
    nop
    rrca
    nop
    inc a
    inc a
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    cp $31
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, e
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    rst $30
    rst $38
    pop af
    rst $38
    pop af
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
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    rlca
    ld sp, hl
    rlca
    ld hl, sp+$07
    db $fc
    inc bc
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
    ldh [$1f], a
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
    ret nz

    cp a
    ldh [$5f], a
    ldh a, [$2f]
    ld hl, sp+$17
    cp $0d
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    ld a, a
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    rst $38
    rst $38
    ei
    ei
    ld bc, $0001
    nop
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    rst $38
    rst $38
    rra
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
    rst $38
    rlca
    ld hl, sp+$1f
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
    ld bc, $0f00
    nop
    ld a, a
    nop
    cp $01
    ldh a, [rIF]
    add b
    ld a, a
    rrca
    ldh a, [$f0]
    rrca
    ld bc, $3ffe
    ret nz

    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    nop
    nop
    rra
    nop
    add a
    ld a, b
    nop
    nop
    nop
    nop
    ld bc, $ff01
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
    nop
    nop
    nop
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
    ldh [$1f], a
    cp $01
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
    adc a
    rst $38
    add a
    rst $38
    call z, Call_000_3cff
    rst $38
    rrca
    rst $38
    adc h
    rst $38
    db $ec
    rst $38
    db $fc
    ld a, a
    rst $38
    rrca
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
    ld a, a
    ld a, a
    rra
    rra
    rrca
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
    db $10
    rst $38
    inc e
    di
    rra
    ld c, $11
    ld c, $39
    ld c, $35
    rrca
    inc [hl]
    rlca
    ld a, $03
    ccf
    ld bc, $043e
    ccf
    ei
    rra
    rst $38
    rrca
    rst $38
    add e
    ld a, l
    pop hl
    sbc [hl]
    ldh a, [$6e]
    ld hl, sp+$17
    db $fc
    dec bc
    rst $38
    inc b
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
    ccf
    nop
    rra
    nop
    rrca
    ld hl, sp-$01
    cp $ff
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
    rra
    rra
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
    cp $01
    ld hl, sp+$07
    ret nz

    ccf
    nop
    nop
    rlca
    rlca
    ccf
    ccf
    rst $38
    rst $38
    ld hl, sp-$08
    rlca
    rlca
    rst $38
    rst $38
    ldh a, [$f0]
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    add b
    nop
    nop
    nop
    ld a, [hl]
    ld bc, $f807
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld sp, $f0ff
    rst $38
    jr c, @+$01

    ld h, a
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    db $fd
    ld a, a
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
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    rrca
    ldh a, [$3f]
    ret nz

    ld a, a
    add b
    ldh [$e0], a
    and b
    ld h, b
    and b
    ld h, b
    and b
    ld h, b
    ld h, b
    ldh [rLCDC], a
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
    ld b, b
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ret nz

    add b
    ld b, b
    ret nz

    and b
    ldh [$58], a
    ld hl, sp+$24
    db $fc
    ld [de], a
    cp $0d
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    add c
    add c
    rst $00
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $1f00
    nop
    ld a, a
    nop
    rst $38
    nop
    db $fc
    inc bc
    ldh [$1f], a
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    jp Jump_000_3fc3


    ccf
    db $fc
    db $fc
    add b
    add b
    nop
    nop
    rst $38
    nop
    ldh a, [rP1]
    nop
    nop
    ld bc, $fc00
    inc bc
    rrca
    ldh a, [rIE]
    nop
    rst $38
    nop
    nop
    nop
    rrca
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
    nop
    rst $38
    ldh a, [rIF]
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $81ff
    rst $38
    pop af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $00
    rst $38
    jp $e3ff


    rst $38
    sbc a
    rst $38
    add a
    rst $38
    add a
    rst $38
    rst $20
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
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    jr nc, @+$01

    ld l, b
    sbc a
    inc c

jr_033_6e62:
    sbc a
    inc c
    rst $38
    nop
    rst $38
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
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_033_6e62

    sub b
    ldh a, [$6c]
    db $fc
    inc de
    cp $09
    rst $38
    inc b
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $1fff
    rst $38
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
    ld a, a
    nop
    rst $38
    nop
    cp $01
    ld hl, sp+$07
    ldh [$1f], a
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
    rra
    ldh [rIE], a
    nop
    rst $38
    nop
    cp $00
    ret nz

    nop
    nop
    nop
    rlca
    nop
    ld hl, sp+$07
    rrca
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
    ld hl, sp+$67
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
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
    rst $30
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    db $fc
    rst $38
    di
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    db $fc
    rst $38
    rst $38
    ccf
    rst $38
    rrca
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
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
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
    ret nz

    nop
    rst $38
    ret nz

    ccf
    ldh [$9f], a
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
    ldh a, [$f0]
    ldh a, [rIF]
    nop
    rst $38
    rlca
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    rrca
    nop
    ldh a, [rIF]
    rrca
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ret nz

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
    ccf
    rst $38
    ld [hl], e
    rst $38
    ldh a, [rIE]
    ld [hl], b
    rst $38
    ld a, h
    rst $38
    db $e3
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    db $fc
    rst $38
    rst $38
    ld a, a
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
    rst $38
    rst $38
    rst $38
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
    db $fd
    inc bc
    db $fc
    inc bc
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
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
    ldh [$1f], a
    ret nz

    ccf
    ld bc, $0fff
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
    jr jr_033_7043

    ld a, [de]
    dec de
    rrca
    rrca
    rrca
    rrca
    inc e
    dec e
    ld e, $1f
    jr nz, jr_033_7045

    ld hl, $2322
    inc h
    dec h
    ld h, $27
    jr z, jr_033_7068

    add hl, hl
    ld a, [hl+]
    dec hl
    inc l

jr_033_7043:
    dec l
    rrca

jr_033_7045:
    rrca
    ld l, $2f
    jr nc, jr_033_707b

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_033_708b

    ld a, [hl-]
    dec sp
    rrca
    rrca
    rrca
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    dec b
    ld b, l
    ld b, [hl]
    ld b, a
    ld b, a
    ld c, b
    ld c, c
    ld c, d

jr_033_7068:
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
    ld d, [hl]
    ld d, a
    ld e, b
    rrca
    ld e, c
    ld e, d
    ld e, e

jr_033_707b:
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    rrca
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld e, c
    ld e, d
    ld l, b

jr_033_708b:
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    dec b
    ld l, [hl]
    ld l, a
    rrca
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ld c, l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    dec b
    ld a, e
    ld a, h
    rrca
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
    dec b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    rrca
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sub b
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
    rrca
    rrca
    sbc h
    xor c
    sub b
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
    rrca
    or [hl]
    xor c
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

    ld a, h
    rrca
    rrca
    rrca
    rrca
    ret


    jp z, $cccb

    call $cfce
    ret nc

    pop de
    jp nc, $d3c8

    rrca
    rrca
    rrca
    call nc, $d5ca
    sub $d7
    ret c

    reti


    jp c, $dcdb

    db $dd
    ret z

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
    or $0f
    rst $30
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    cp $ff
    nop
    ld bc, $0302
    inc b
    inc c
    rrca
    rrca
    dec b
    ld b, $cf
    rlca
    db $fc
    ld [$090f], sp
    ld a, [bc]
    rrca
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    nop
    nop
    nop
    inc b
    inc bc
    ld bc, $0101
    dec b
    dec b
    dec b
    dec b
    inc bc
    ld bc, $0303
    inc bc
    nop
    inc b
    inc bc
    ld bc, $0101
    ld bc, $0505
    dec b
    dec b
    inc bc
    ld bc, $0101
    ld bc, $0406
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0601
    ld b, $05
    dec b
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0401
    ld b, $03
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0601
    ld b, $03
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0601
    ld b, $03
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0505
    ld bc, $0101
    ld bc, $0101
    ld b, $06
    dec b
    dec b
    ld bc, $0501
    nop
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld b, $06
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $0003
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld b, $06
    inc bc
    inc bc
    ld bc, $0303
    nop
    inc bc
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0601
    ld b, $05
    dec b
    dec b
    dec b
    ld b, l
    inc bc
    inc bc
    dec b
    ld bc, $0501
    ld bc, $0101
    ld b, $06
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
    ld bc, $2101
    ld bc, $0626
    dec b
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0505
    ld bc, $2101
    ld b, $06
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    dec b
    inc bc
    inc bc
    ld [bc], a
    nop
    inc b
    inc bc
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0201
    nop
    inc b
    inc bc
    ld bc, $0101
    ld [bc], a
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
    inc b
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
    ld bc, $0201
    nop
    nop
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld [bc], a
    nop
    nop
    inc b
    inc bc
    inc bc
    inc bc
    dec bc
    dec c
    dec bc
    dec bc
    dec bc
    inc bc
    ld bc, $0901
    ld a, [bc]
    jr nz, jr_033_7292

    inc b
    dec bc
    ld bc, $0909
    ld bc, $06f1

jr_033_7292:
    ld hl, sp+$03
    ld hl, sp+$03
    ld a, h
    ld bc, $813c
    ld a, $80
    rra
    ret nz

    rrca
    ldh [rTAC], a
    ldh a, [rTAC]
    ldh a, [$03]
    ld hl, sp+$01
    db $fc
    ld bc, $00fc
    cp $00
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    cp a
    cp a
    rst $18
    rst $18
    rst $18
    rst $18
    rst $28
    rst $28
    rst $30
    rst $30
    ei
    ei
    db $fd
    db $fd
    ld a, [hl]
    ld a, [hl]
    cp [hl]
    cp [hl]
    rst $18
    rst $18
    rst $28
    rst $28
    rst $30
    rst $30
    ei
    ei
    db $fd
    db $fd
    cp $fe
    db $fc
    rst $38
    ld hl, sp-$01
    db $fc
    ld a, e
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
    add b
    rst $38
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
    add b
    ld a, a
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

jr_033_7332:
    nop
    nop
    nop
    nop
    nop
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
    db $10
    rst $38
    db $10
    rst $38
    ret nc

    rst $38
    jr nc, @+$01

    db $10
    rst $38
    jr c, @+$01

jr_033_736c:
    nop
    rst $00
    nop
    add a
    nop
    add a
    nop
    adc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_033_738e:
    nop
    rst $38
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    cp $01
    ld a, [hl]
    add c
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ld b, b
    rra
    ld h, b
    sbc a
    jr nz, jr_033_7332

    jr nc, jr_033_736c

    jr jr_033_738e

    ld [$0ce3], sp
    di
    inc b
    ld [hl], c

jr_033_73ad:
    ld b, $39
    add d
    inc a
    add c
    inc e
    pop bc
    ld c, $e0
    ld c, $e0
    rlca
    ldh a, [$03]
    ld hl, sp+$01
    db $fc
    ld bc, $00fc
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld b, b
    cp a
    jr nz, jr_033_73ad

    db $10
    rst $28
    rst $30
    rst $30
    rst $30
    rst $30
    ld a, e
    ei
    dec a
    db $fd
    ld e, $fe
    ld e, $fe
    ld b, $fe
    ld [bc], a
    cp $fe
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
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
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$00ff], sp
    rst $38
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$f7f7], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $7ffe
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

jr_033_744e:
    nop
    nop
    ldh [rIF], a
    ldh [rIF], a
    ldh a, [rTAC]
    ldh a, [rTAC]
    ld a, b
    add e
    ld a, b
    add e
    cp h
    ld b, c
    cp h
    ld b, c
    sbc $20
    sbc $20
    rst $28
    db $10
    rst $28
    db $10
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$04fb], sp
    ei
    inc b
    db $fd
    ld [bc], a
    ld a, l
    add d
    ld a, [hl]
    add c
    ld a, $41
    sbc a
    jr nz, @-$5f

    jr nz, jr_033_744e

    db $10
    rst $08
    db $10
    ld h, a
    ld [$0077], sp
    inc sp
    add h
    dec de
    ret nz

    add hl, bc
    ld [c], a
    dec c
    ldh [$03], a
    db $f4
    ld hl, sp-$08
    ldh [$e0], a
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
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
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
    ld [hl], a
    rst $38
    ld [hl], a
    rst $38
    ld [hl], a
    rst $38
    db $76
    rst $38
    db $76
    rst $38
    db $76
    rst $38
    db $76
    rst $38
    db $76
    rst $38
    db $76
    rst $38
    db $76
    rst $38
    db $76
    rst $38
    rst $38
    db $76
    rst $38
    or $ff
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
    ld hl, sp-$01
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
    rlca
    rlca
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
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    cp $fe
    cp $fe
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
    add b
    ccf
    add b
    ccf
    ret nz

    rra
    ret nz

    rra
    ldh [rIF], a
    ldh [rIF], a
    ldh a, [rTAC]
    ldh a, [rTAC]
    ld a, b
    add e
    ld a, b
    add e
    cp h
    ld b, c
    cp h
    ld b, c
    call c, $d123
    ld l, $af
    ld d, b
    cp a
    ld b, b
    ld a, a
    add b
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
    nop
    rst $38
    nop
    rst $38
    ld [$1cff], sp
    rst $38
    cp $ff
    rst $38
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
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $07
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
    nop
    rra
    ld bc, $00ff
    rst $38
    cp $ff
    cp $ff
    rst $38
    cp $ff
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $9e
    cp $1e
    cp $1e
    cp $1e
    cp $1e
    cp $1e
    cp $1e
    cp $1c
    db $fc
    inc a
    db $fc
    inc a
    db $fc
    inc a
    db $fc
    inc a
    db $fc
    inc a
    db $fc
    ld a, $fc
    ld a, $fc
    ld a, $fc
    ld l, $f0
    ld h, $f8
    ld a, $fc
    ld a, $fc
    ld a, $fc
    ld a, $fc
    ld a, $fc
    ld a, $fc
    ld a, [hl]
    db $fc
    ld a, [hl]
    db $fc
    ld a, [hl]
    db $fc
    ld b, d
    db $fc
    ld h, d
    db $fc
    ld [hl], d
    db $fc
    ld a, [hl]
    db $fc
    ld a, [hl]
    db $fc
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
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
    adc a
    adc a
    adc a
    adc a
    adc a
    adc a
    rst $08
    rst $08
    rst $00
    rst $00
    rst $00
    rst $00
    rst $20
    rst $20
    db $e4
    db $e4
    db $e4
    db $e4
    db $f4
    db $f4
    db $f4
    db $f4
    db $fc
    db $fc
    ldh a, [$f0]
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
    rst $38
    nop
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
    nop
    nop
    nop
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
    ld b, $ff
    ld h, e
    sbc a
    inc c
    rrca
    inc c
    rrca
    inc c
    rrca
    inc c
    rrca
    inc b
    rlca
    dec b
    rlca
    rlca
    rlca
    rlca
    rlca
    inc c
    rrca
    inc c
    rrca
    inc c
    rrca
    inc c
    rrca
    inc c
    rrca
    inc c
    rrca
    ld [$080f], sp
    rrca
    ld [$080f], sp
    rrca
    ld [$080f], sp
    rrca
    ld [$080f], sp
    rrca
    ld [$080f], sp
    rrca
    ld [$0808], sp
    ld [$0f0f], sp
    rrca
    rrca
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, b
    ld e, a
    ld e, b
    ld e, a
    ld e, b
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld d, b
    ld e, a
    jr nc, jr_033_771d

    jr nc, @+$41

    nop
    rst $38
    ld bc, $03fe
    db $fc
    dec b
    ld a, [$fb04]
    ld [$08f7], sp
    db $f4
    ld [hl], b
    adc h
    ldh a, [$0e]
    ld hl, sp+$06
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    cp $01
    cp $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc

jr_033_771d:
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$1cff], sp
    rst $38
    ld a, $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
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
    inc bc
    rst $38
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$04
    db $fc
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
    inc bc
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
    ld hl, sp-$01
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
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    ld e, a
    rst $38
    ldh a, [$f7]
    ldh a, [$f7]
    ldh a, [$f7]
    ldh a, [$f7]
    ldh a, [$f7]
    ldh a, [$f7]
    ldh a, [$f7]
    ldh a, [$f0]
    ld a, a
    add b
    add b
    ld a, a
    ldh a, [rIF]
    rst $38
    nop
    rrca
    ldh a, [rP1]
    rst $38
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
    nop
    nop
    ld bc, $0180
    add b
    ld bc, $0180
    add b
    ld bc, $0180
    add b
    ld bc, $0180
    add b
    ld bc, $0180
    add b
    ld bc, $0180
    add b
    ld bc, $0180
    add b
    ld bc, $0180
    add b
    nop
    nop
    nop
    rst $38
    cp $01
    ld bc, $0100
    nop
    inc bc
    add b
    add a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
    rst $38
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
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
    rra
    rst $38
    rlca
    rst $38
    rlca
    ld hl, sp-$05
    db $fc
    inc b
    db $fc
    ld b, $fe
    ld [c], a
    cp $e2
    cp $e2
    cp $e2
    cp $f2
    cp $f2
    cp $fa
    cp $02
    ld b, $02
    ld b, $02
    ld b, $02
    ld b, $02
    ld b, $02
    ld b, $02
    ld b, $c2
    add $f2
    cp $f2
    cp $f2
    cp $f2
    cp $f2
    cp $f2
    cp $f2
    cp $f2
    cp $f2
    cp $f2
    cp $f2
    cp $f2
    cp $f2
    cp $02
    cp $02
    cp $12
    cp $fa
    cp $fe
    cp $fa
    cp $02
    cp $02
    cp $2a
    cp $fa
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
    ccf
    rst $38

jr_033_78b0:
    rst $38
    nop

jr_033_78b2:
    ld a, a
    add b

jr_033_78b4:
    nop
    rst $38

jr_033_78b6:
    ld hl, sp+$07

jr_033_78b8:
    rst $38
    nop

jr_033_78ba:
    rlca
    ld hl, sp+$00
    rst $38

jr_033_78be:
    nop
    ccf

jr_033_78c0:
    nop
    ccf

jr_033_78c2:
    nop
    ld a, a

jr_033_78c4:
    ld a, [hl]
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
    db $fc
    rrca
    ld hl, sp+$0f
    ld hl, sp+$1e
    ldh a, [rNR34]
    ldh a, [$3c]
    ldh [$3c], a
    ldh [$38], a
    ldh [$38], a
    ret nz

    jr c, jr_033_78b0

    jr c, jr_033_78b2

    jr c, jr_033_78b4

    jr c, jr_033_78b6

    jr c, jr_033_78b8

    jr c, jr_033_78ba

    jr c, @-$3e

    jr c, jr_033_78be

    jr c, jr_033_78c0

    jr c, jr_033_78c2

    jr c, jr_033_78c4

    inc a
    ret nz

    ld a, $c0
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rIE]
    ret nz

    rst $38
    ret nz

    ccf
    rst $38
    ccf
    ccf
    ccf
    ccf
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    inc b
    ld a, e
    ld [bc], a
    ld a, l
    ld bc, $007e
    ld a, a
    nop
    ld a, a
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    ld [bc], a
    add c
    ld a, a
    add d
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
    ld a, a
    add b
    ld a, a
    add c
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, h
    ld a, a
    nop
    ld a, a
    inc bc
    ld a, a
    ld a, h
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
    ccf
    nop
    nop
    ret nz

    ret nz

    rst $38
    rst $38
    rlca
    rlca
    nop
    nop
    ld hl, sp-$08
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, $ff
    rst $38
    pop bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld a, $00
    ld b, c
    ld a, $ff
    nop
    add b
    ld a, a
    add b
    nop
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    ld b, c
    ld a, $3e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld [bc], a
    rst $38
    rlca
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
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
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
    nop
    rst $38
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    jp $c37e


    rst $38
    rst $20
    inc a
    rst $38
    sbc c
    rst $38
    nop
    rst $38
    nop
    add c
    nop
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    rst $38
    inc a
    rst $38
    inc a
    ld a, [hl]
    sbc c
    inc a
    jp $ff00


    rst $38
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
    pop hl
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
    rra
    nop
    nop
    ldh [$e0], a
    rst $38
    rst $38
    inc bc
    inc bc
    nop
    nop
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh [$7f], a
    ldh a, [$1f]
    ld hl, sp+$0f
    ld hl, sp+$0f
    inc a
    rlca
    inc a
    rlca
    ld e, $03
    ld e, $03
    adc [hl]
    inc bc
    adc [hl]
    ld bc, $018e
    adc [hl]
    ld bc, $018e
    adc [hl]
    ld bc, $018e
    adc [hl]
    ld bc, $018e
    adc [hl]
    ld bc, $010e
    ld c, $01
    ld c, $01
    ld e, $01
    ld a, $01
    cp $01
    cp $01
    cp $81
    cp $ff
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    add e
    rst $38
    add e
    rst $38
    add e
    rst $38
    add e
    rst $38
    rst $38
    add e
    rst $38
    add e
    rst $38
    add e
    rst $38
    add e
    rst $38
    add e
    rst $38
    add e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $00ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    sbc $df
    cp [hl]
    cp a
    ld a, [hl]
    ld a, a
    cp $ff
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $4100
    add c
    rst $38
    ld b, c
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    nop
    ld bc, $0100
    nop

jr_033_7b05:
    ld bc, $0100
    nop

jr_033_7b09:
    ld a, a
    nop

jr_033_7b0b:
    rst $38
    nop

jr_033_7b0d:
    rst $38
    rrca

jr_033_7b0f:
    rst $38
    rst $38

jr_033_7b11:
    rst $38
    ldh [rIE], a
    rra

jr_033_7b15:
    rst $38
    rst $38

jr_033_7b17:
    rst $38
    rst $38

jr_033_7b19:
    rst $38
    rst $38

jr_033_7b1b:
    rst $38
    ld a, a

jr_033_7b1d:
    rst $38
    ccf

jr_033_7b1f:
    rst $38
    nop

jr_033_7b21:
    rst $38
    nop

jr_033_7b23:
    rst $38
    nop

jr_033_7b25:
    rrca
    nop

jr_033_7b27:
    nop
    ldh a, [$f0]
    rst $38
    rst $38
    ld bc, $0001
    nop
    ld bc, $00fe

jr_033_7b33:
    rst $38
    ld b, b
    add c
    add b
    ld b, b
    add b
    ld b, b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [$80]
    ld [hl], b
    ret nz

    jr nc, jr_033_7b05

    jr nc, @-$3e

    jr nc, jr_033_7b09

    jr nc, jr_033_7b0b

    jr nc, jr_033_7b0d

    jr nc, jr_033_7b0f

    jr nc, jr_033_7b11

    jr nc, @-$3e

    jr nc, jr_033_7b15

jr_033_7b55:
    jr nc, jr_033_7b17

    jr nc, jr_033_7b19

    jr nc, jr_033_7b1b

    jr nc, jr_033_7b1d

    jr nc, jr_033_7b1f

    jr nc, jr_033_7b21

    jr nc, jr_033_7b23

    jr nc, jr_033_7b25

    jr nc, jr_033_7b27

    jr nc, @-$3e

    jr nc, jr_033_7bab

    add b
    nop
    rst $38
    ccf
    ret nz

    ret nz

    jr nz, jr_033_7b33

    jr nz, jr_033_7b55

    db $10
    ldh a, [$08]
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
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop

jr_033_7ba2:
    nop
    nop

jr_033_7ba4:
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ld a, h

jr_033_7bab:
    rst $38
    cp a
    jp $c3bf


    or e
    jp $e393


    sub b
    db $e3
    ret nc

    rst $20
    ret nc

    rst $20
    ret nc

    rst $20
    ret nc

    rst $20
    ret nc

    rst $20
    rst $10
    ldh [$d7], a
    ldh [$d7], a
    ldh [$d7], a
    ldh [$d7], a
    ldh [$d7], a
    ldh [$d7], a
    ldh [$d7], a
    ldh [$d7], a
    ldh [$d6], a
    pop hl
    call nc, $d0e3
    rst $20
    ret nc

    rst $20
    ret nc

    rst $20
    ret nc

    rst $20
    ret nc

    rst $20
    ret nc

    rst $20
    ret nc

    rst $20
    ret nc

    rst $20
    ret nc

    rst $20
    rst $10
    rst $20
    rst $10
    rst $20
    rst $10
    rst $20
    ld d, b
    rst $20
    ld [bc], a
    ld a, [$fa02]
    inc b
    db $f4
    inc b
    db $f4
    ld [$08e8], sp
    add sp, $10
    ret nc

    db $10
    ret nc

    jr nz, jr_033_7ba2

    jr nz, jr_033_7ba4

    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    and b
    and b
    ret nc

    ret nc

    ld [$fb08], sp
    inc b
    dec b
    ld a, [$fa05]
    ld [bc], a
    dec c
    ld [bc], a
    dec c
    rrca
    nop
    rra
    nop
    ccf
    nop
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
    rra
    nop

Jump_033_7c3c:
    rra
    ldh [$df], a
    jr nz, @-$3e

    ccf
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
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
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
    ldh a, [rIE]
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    ldh [rIE], a
    ldh [rIE], a
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
    ld b, b
    ld e, a
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

    ret nz

    ldh [$e0], a
    rst $38
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
    rlca
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
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

jr_033_7ccd:
    rst $38
    rst $28
    rst $38
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
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    inc c
    inc c
    jr c, jr_033_7d1e

    ld hl, $4321
    ld b, e
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec c

jr_033_7cef:
    dec c
    ld a, [bc]
    ld a, [bc]
    inc d
    inc d
    jr z, jr_033_7d1e

    ld l, c
    ld l, c
    ld d, e
    ld d, e
    daa
    daa
    rst $08
    rst $08
    adc a
    adc a
    ld h, b
    sbc a
    ld b, c
    cp [hl]
    rlca
    ld hl, sp+$0f
    ldh a, [$81]
    ld [hl], b
    ret nz

    jr nz, jr_033_7ccd

    jr nz, jr_033_7cef

    db $10
    ldh [rNR10], a
    ldh a, [$0c]
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

jr_033_7d1e:
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    rst $38
    inc bc
    rst $38
    rst $38
    db $fc
    rst $38
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
    inc a
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    db $fc
    rst $38
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    ld bc, $01fd
    dec b
    ld bc, $e10d
    db $fd
    di
    rst $38
    di
    rst $38
    di
    rst $38
    ei
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    di
    rst $38
    di
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    di
    rst $38
    di
    rst $38
    ld d, e
    rst $38
    and e
    rst $38
    inc bc

jr_033_7d8f:
    rst $38
    ld bc, $8301
    add e
    inc hl
    inc hl
    add a
    add a
    rst $08
    rst $08
    rst $18
    rst $18
    rst $18
    rst $18
    cp a
    cp a
    ccf
    ccf
    ld a, [hl]
    ld a, [hl]
    db $fd
    db $fd
    ld sp, hl
    ld sp, hl
    ei
    ei
    rst $30
    rst $30
    xor a

jr_033_7dad:
    xor a
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

jr_033_7dbc:
    ldh a, [$f0]
    ret nz

    ret nz

    nop
    rst $38
    nop
    rst $38
    jr jr_033_7dad

    jr c, jr_033_7d8f

    ld [hl], b
    adc a
    ldh a, [rIF]
    ld hl, sp+$07
    ld sp, hl
    ld b, $04
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_033_7dbc

    db $10
    di
    inc c
    db $fc
    ld [bc], a
    db $fc
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
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
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
    ldh [$fe], a
    jr nz, @+$01

    ldh [$1f], a
    ldh [$1f], a
    nop
    rra
    nop
    rra
    nop
    rra
    inc bc
    inc e
    add e
    inc e
    add e
    inc e
    add e
    inc e
    add e
    inc e
    add e
    inc e
    add e
    inc e
    add e
    inc e
    add e
    inc e
    add e
    inc e
    jp $c31c


    inc e
    jp $c31c


    inc e
    jp $c31c


    inc e

jr_033_7e46:
    jp $c31c


    inc e
    db $e3
    inc e
    db $e3
    inc e
    db $e3
    inc e
    inc e
    inc e
    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    sbc h
    call c, $dcdc
    call c, $dcdc
    call c, $dcdc
    call c, $dcdc
    call c, $dcdc
    call c, $dcdc
    call c, $fcdc
    db $fc
    ld sp, hl
    ld sp, hl
    di
    di
    or $f6
    and $e6
    call $9bcd
    sbc e
    or [hl]
    or [hl]
    ld a, l
    ld a, l
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ret nz

    ccf
    jp $c73c


    jr c, jr_033_7e46

    ld h, b
    cp l
    ld b, b
    ld [hl], e
    add b
    add [hl]
    ld bc, $020d
    dec bc
    inc b
    rra
    nop
    ccf
    nop
    ld a, b
    nop
    ldh a, [rP1]
    pop bc
    nop
    inc bc
    nop
    ld b, $01
    inc e
    inc bc
    jr nc, jr_033_7ed3

    ld b, b
    ccf
    nop
    rst $38
    add e
    ld a, h
    adc a
    ld [hl], b
    cp a
    ld b, b
    cp a
    ld b, b
    ld b, b
    ld b, b
    ld b, b

jr_033_7ed3:
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    rst $00
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    or $ff
    rst $00
    cp $ff
    add $ff
    add $ff
    add $ff
    add $ff
    add $ff
    add $ff
    add $ff
    add $ff
    add $ff
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret


    ret


    sub d
    sub d
    dec h
    dec h
    ld c, e
    ld c, e
    sub a
    sub a
    xor a
    xor a
    ld e, a
    ld e, a
    cp a
    cp a
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
    cp $fe
    db $fc
    db $fc
    ld sp, hl
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $08
    rrca
    rrca
    rra
    rra
    ld a, $3e
    inc a
    inc a
    ld a, b
    ld a, b
    ldh [$e0], a
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    ld c, a
    ld c, a
    cp a
    cp a
    ld a, a
    ld a, a
    cp $ff
    ld hl, sp-$05
    ldh a, [$f3]
    ret nz

    jp Jump_000_0300


    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
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
    inc bc
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
    sbc e
    rst $38
    rra
    ei
    rst $38
    dec de
    rst $38
    dec de
    rst $38
    dec de
    rst $38
    dec de
    rst $38
    dec de
    rst $38
    dec de
    rst $38
    dec de
    rst $38
    dec de
    rst $38
    dec de
    rst $38
    dec de
    rst $38
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
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    ldh [$9f], a
    ld hl, sp-$79
    db $fc
    add e
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
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    inc e
    inc e
    db $fc
    db $fc
    ld sp, hl
    ld sp, hl
    di
    di
    db $ec
    db $ec
    ret c

    ret c

    ldh a, [$f0]
