SECTION "ROM Bank $042", ROMX[$4000], BANK[$42]

    and e
    nop
    push af
    nop
    db $fd
    ld a, b
    db $fd
    ld a, h
    db $fd
    ld a, h
    db $fd
    ld a, h
    db $fd
    ld a, b
    ld [hl], c
    nop
    db $fd
    nop
    push af
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    ld b, b
    db $fd
    ret nz

    db $fd
    add sp, -$01
    db $fc
    rst $38
    call z, $ccff
    rst $38
    db $ec
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
    cp h
    ccf
    inc a
    ccf
    inc e
    ccf
    inc e
    rra
    inc e
    rra
    inc c
    rrca
    ld [$0407], sp
    rlca
    inc b
    rlca
    ld bc, $0003
    inc bc
    ld bc, $0101
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    ccf
    ret nz

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
    ld a, a
    add b
    ccf
    nop
    rra
    ret nz

    rra
    ret nz

    rrca
    ldh [$60], a
    rst $38
    rst $28
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld c, a
    rst $38
    adc a
    rst $38
    rrca
    rst $38
    dec c
    rst $38
    inc c
    rst $38
    ld c, $ff
    rrca
    rst $38
    ld c, $ff
    ld c, $ff
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
    nop
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    rst $38
    ld c, $ff
    ld c, $ff
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
    ld h, a
    rst $38
    ld a, a
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    pop af
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    nop
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
    ld bc, $01ff
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
    rst $38
    ld bc, $ff01
    ld bc, $01ff
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
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $7f81
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
    ld a, [hl]
    rst $38
    rra
    rst $38
    rra
    rst $38
    rst $08
    rst $38
    call $c7ff
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    ld sp, $39ff
    rst $38
    scf
    rst $38
    jr z, @+$01

    jr c, @+$01

    inc e
    rst $38
    ld l, [hl]
    rst $38
    cp $ff
    rst $28
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld a, h
    rst $38
    dec a
    rst $38
    dec de
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld l, $ff
    ld a, a
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
    di
    nop
    nop
    nop
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
    nop
    rst $38
    ret nz

    ccf
    ldh a, [rIF]
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
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    cp a
    ld a, a
    rst $00
    add hl, sp
    sbc $23
    sbc a
    ld a, a
    sub [hl]
    ld a, c
    sub a
    ld a, c
    sbc l
    ld [hl], e
    inc [hl]
    db $db
    inc de
    rst $38
    inc de
    rst $38
    dec de
    rst $38
    inc sp
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    inc de
    rst $38
    sub e
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
    pop af
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
    rst $38
    rst $38
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
    ld h, a
    rst $38
    inc sp
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    add $ff
    ld [c], a
    rst $38
    ld [hl], b
    rst $38
    ld de, $39ff
    rst $38
    sbc h
    rst $38
    adc [hl]
    rst $38
    xor $ff
    rst $30
    rst $38
    rla
    rst $38
    dec de
    rst $38
    ld c, $ff
    ld [de], a
    rst $38
    add b
    rst $38
    ld bc, $c3ff
    rst $38
    jp $e3ff


    rst $38
    pop hl
    rst $38
    ld [hl], h
    rst $38
    ld a, b
    rst $38
    ld a, [de]
    rst $38
    cp l
    rst $38
    db $fd
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
    rst $38
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    scf
    rst $08
    ld a, e
    rst $38
    rst $08
    rst $30
    ld c, l
    rst $30
    rst $18
    rst $30
    rst $18
    rst $30
    ld [hl], e
    rst $38
    ld d, a
    rst $38
    rst $38
    rst $38
    ld [hl], a
    rst $38
    ld [hl], a
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_042_42ec:
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    reti


    rst $38
    call c, $eeff
    rst $38
    ccf
    rst $38
    rla
    rst $38
    add e
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    jr nz, @+$01

    db $10
    rst $38
    jr @+$01

    inc b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld [hl+], a
    rst $38
    ld h, b
    rst $38
    jr nc, @+$01

    ret c

    rst $38
    call z, $c4ff
    rst $38
    and $ff
    or $ff
    rst $28
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    sbc a
    rst $38
    ld c, a
    rst $38
    adc a
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    rst $30
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ldh a, [$03]
    db $e3
    ld c, $cf
    jr jr_042_42ec

    db $10
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    rlca
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
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    rst $38
    ldh [rIE], a
    ldh [$fe], a
    pop hl
    db $fc
    ld [c], a
    cp $e0
    db $fc
    ldh [$f8], a
    ldh [$f0], a
    ldh [$e0], a
    ldh a, [$e0]
    ldh a, [$e0]
    ldh a, [$e1]
    ldh a, [$e1]
    ldh a, [$e7]
    ldh a, [$e1]
    ldh a, [$e3]
    ldh a, [$e1]
    ldh a, [$e3]
    ldh a, [$f3]
    ldh a, [$f7]
    ldh a, [$f7]
    ldh a, [$f7]
    ldh a, [$f7]
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$0a
    ld sp, hl
    rst $30
    ld hl, sp-$03
    ld a, [$fcff]
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
    ldh [$e0], a
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
    ld a, a
    rst $38
    ccf
    rst $38
    adc a
    rst $38
    rst $20
    rst $38
    di
    rst $38
    db $fc
    rst $38
    ld l, [hl]
    rst $38
    or a
    rst $38
    sbc a
    rst $38
    cp $ff
    add $ff
    ld l, e
    rst $38
    jr c, @+$01

    ld e, h
    rst $38
    ld l, [hl]
    rst $38
    db $76
    rst $38
    ld c, $ff
    ld e, $ff
    inc c
    rst $38
    inc b
    rst $38
    pop hl
    rst $38
    ld h, c
    rst $38
    ld [hl], c
    rst $38
    ccf
    rst $38
    inc e
    rst $38
    ld c, $ff
    sub [hl]
    rst $38
    rst $00
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
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
    nop
    rst $38
    nop
    add b
    inc bc
    ld h, [hl]
    rrca
    and [hl]
    ld l, a
    and $0f
    and $0f
    ld h, [hl]
    rrca
    dec [hl]
    sbc a
    add b
    rst $18
    ld [$ea6f], a
    ld a, $ea
    ccf
    adc a
    ld e, a
    add a
    ld e, a
    add c
    ld c, a
    pop bc
    cpl
    pop bc
    daa
    pop hl
    inc de
    pop af
    ld c, $ff
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
    rra
    rst $38
    rrca
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
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    rst $38
    ld bc, $01ff
    inc bc
    db $fd
    nop
    cp a
    ret nz

    ccf
    inc a
    rra
    ld e, a
    rrca
    ccf
    rrca
    rra
    ld c, a
    sbc a
    rrca
    rst $18
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
    rst $18
    rrca
    rst $18
    rrca
    rst $18
    rrca
    rst $18
    rrca
    xor a
    rra
    rst $08
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    rst $08
    ccf
    adc a
    ld a, a
    rra
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
    ret nz

    ret nz

    ccf
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
    rst $08
    rst $38
    and [hl]
    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    and $ff
    ld [hl], c
    rst $38
    cp b
    rst $38

Call_042_44ff:
    db $fc
    rst $38
    ld a, [hl]
    rst $38
    dec e
    rst $38
    nop
    rst $38
    add e
    rst $38
    ld b, a
    rst $38
    ld sp, $b0ff
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld [hl], b
    rst $38
    ld e, b
    rst $38
    ld a, e
    rst $38
    jr c, @+$01

    cp $ff
    cp a
    rst $38
    jp $e3ff


    rst $38
    ldh a, [rIE]
    ld a, d
    rst $38
    ld a, b
    rst $38
    db $fd
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
    rrca
    ldh a, [$3f]
    ld c, b
    ccf
    ld [hl], b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld [hl], b
    ld c, a
    ld c, b
    rlca
    or h
    ld [hl], e
    ld l, d
    ld sp, hl
    push bc
    db $fc
    jp nz, $c0fe

    cp $c0
    db $fc
    ret nz

    db $fc
    add b
    db $fc
    add b
    cp $00
    rst $38
    nop
    rst $38
    inc bc
    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
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
    ldh a, [$7f]
    ldh a, [$7f]
    ldh a, [$3f]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    jr nc, jr_042_45d7

    ret nc

    rra
    ldh [$87], a
    ld hl, sp-$3f
    cp $e0
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
    rra
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, a
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    rst $00
    rst $38
    inc hl
    rst $38
    ld [$00ff], sp
    rst $38
    ret nz

    rst $38
    db $e3
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    ld h, d
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_042_45d7:
    jp $e3ff


    rst $38
    ld [hl], b
    rst $38
    ld a, b
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
    ld a, a
    rst $38
    rst $38
    rst $38
    add sp, -$01
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
    add b
    add b

Jump_042_4600:
    sbc a
    add b
    rrca
    nop
    rlca
    nop
    rlca
    nop
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
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
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
    db $fd
    db $fc
    nop
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
    rst $30
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
    rst $38
    rst $38
    rst $18
    rst $38
    rst $20
    rst $38
    ldh a, [rIE]
    ld d, h
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    set 7, a
    pop bc
    rst $38
    inc bc
    rst $38
    rra
    rst $38
    rrca
    rst $38
    ld b, e
    rst $38
    ld h, c
    rst $38
    jr c, @+$01

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
    db $fd
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
    ld a, a
    rst $38
    rst $38
    ld bc, $0701
    rlca
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
    ld sp, hl
    cp $e3
    db $fc
    add e
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$3f], a
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
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
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
    rrca
    add b
    inc bc
    ldh [$80], a
    db $fc
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
    ld sp, hl
    rst $38
    ld a, [hl]
    rst $38
    ccf
    rst $38
    sbc a
    rst $38
    rst $00
    rst $38
    pop af
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
    rst $00
    rst $38
    rst $28
    rst $38
    ld a, e
    rst $38
    ld e, $ff
    adc a
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $eb
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
    ld bc, $0701
    rlca
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
    ldh a, [rIE]
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
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
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
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rrca
    nop
    inc bc
    ldh [$80], a
    ld hl, sp-$20
    rst $38
    ld hl, sp-$01
    ccf
    rst $38
    jp nz, $01ff

    rst $38
    db $fc
    rst $38
    ld b, a
    rst $38
    ccf
    rst $38
    sbc a
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
    cp a
    rst $38
    rst $38
    rst $38
    rst $30
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
    ld bc, $0701
    rlca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rst $30
    ld b, b
    cp $40
    push af
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    ld b, c
    ret z

    rst $30
    adc d
    pop hl
    inc e
    db $e3
    adc b
    rst $30
    ret z

    rst $30
    ld l, b
    rst $30
    ld [$88f7], a
    rst $30
    jr nz, @+$01

    db $f4
    rst $38
    call nz, $f8ff
    add a
    rlca
    ld hl, sp+$00
    rlca
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
    ld a, a
    nop
    rrca
    nop
    inc bc
    ret nz

    nop
    ld hl, sp-$40
    cp $f8
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
    ld a, a
    rst $38
    rst $08
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    rst $08

jr_042_48cc:
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
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
    ld hl, sp-$10
    ld [$c830], sp
    ld [hl], b
    adc b
    ld [hl], b
    adc b
    ld [hl], b
    adc b
    ld h, b
    sbc b
    ld [hl], b
    adc b
    nop
    ld hl, sp+$30
    ret z

    jr nc, jr_042_48cc

    db $10
    add sp, $10
    add sp, $10
    add sp, $10
    add sp, $10
    add sp, $10
    add sp, $10
    add sp, $10
    add sp, $10
    add sp, $10
    add sp, -$10
    ld [$f800], sp
    nop
    nop
    nop
    nop
    rst $38
    nop
    rrca
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
    ld a, a
    nop
    rrca
    nop
    inc bc
    ret nz

    nop
    ldh a, [$80]
    db $fc
    ldh a, [rIE]
    db $fc
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
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rra
    nop
    inc bc
    add b
    nop
    ldh a, [$80]
    db $fc
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
    rst $38
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
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0202], sp
    ld [bc], a
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    ld [bc], a
    ld [bc], a
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    ld [bc], a
    ld [bc], a
    dec d
    ld d, $17
    jr jr_042_49bc

    ld [bc], a
    add hl, de

jr_042_49bc:
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$04

    ld [bc], a
    ld hl, $2222
    ld hl, $0202
    inc hl
    inc h
    dec h
    ld h, $27
    ld e, $28
    add hl, hl
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    ld e, $1e
    jr nc, jr_042_4a15

    ld [hl-], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_042_4a29

    ld a, [hl-]
    dec sp
    inc a
    inc b
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a

jr_042_4a15:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, $5f
    ld h, b
    ld h, c
    ld [bc], a
    ld h, d
    ld h, e
    ld h, h
    ld [bc], a

jr_042_4a29:
    ld [bc], a
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld e, $1e
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, a
    ld [bc], a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ld e, $1e
    db $76
    ld [hl], a
    ld a, b
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld a, c
    ld [bc], a
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ld e, $1e
    add b
    ld [bc], a
    add c
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    add d
    ld [bc], a
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    ld e, $1e
    adc c
    ld [bc], a
    ld [bc], a
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
    ld e, $95
    sub [hl]
    inc d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    ld e, $a0
    inc b
    and c
    and d
    ld [bc], a
    ld [bc], a
    and e
    and h
    and l
    inc b
    inc b
    inc b
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    inc b
    inc b
    inc b
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
    inc b
    ret nz

    pop bc
    inc b
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    jp z, Jump_000_02cb

    ld [bc], a
    call z, $cd04
    adc $cf
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    ld [bc], a
    jp c, $0404

    inc b
    db $db
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    ld b, b
    nop
    inc b
    inc b
    ld bc, $0005
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
    inc b
    inc b
    inc b
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
    inc b
    ld bc, $0101
    ld bc, $0701
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0007
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    add b
    ld bc, $0f00
    ld bc, $07ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    ld e, $e1
    ld de, $10e0
    ldh [rNR10], a
    ldh [rNR11], a
    ldh [rNR13], a
    ldh [rNR13], a
    ldh [rNR21], a
    ldh [$15], a
    ldh [$15], a
    ldh [rNR22], a
    ldh [rNR13], a
    ldh [$15], a
    ldh [rNR13], a
    ldh [rNR13], a
    ldh [rNR13], a
    ldh [rNR22], a
    ldh [rNR22], a
    ldh [rNR22], a
    ldh [rNR13], a
    ldh [rNR13], a
    ldh [rNR22], a
    ldh [rNR10], a
    ldh [$1f], a
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ldh [rP1], a
    nop
    inc bc
    nop
    ccf
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
    rst $20
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
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    ld a, a
    rst $38
    db $fc
    rst $38
    ei
    rst $38
    rst $30
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
    ret nz

    ret nz

    ldh [$e0], a
    ld hl, sp-$08
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
    rra
    rst $38
    rlca

jr_042_4d4f:
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
    ld hl, sp+$07
    rra
    nop
    rst $00
    nop
    ld hl, $3800
    rst $00
    ldh a, [rIF]
    ld [hl], c
    adc [hl]
    sub c
    ld l, [hl]
    ld e, b
    and a
    ret nc

    cpl
    ld d, b
    adc e
    jr nc, jr_042_4d4f

    xor a
    nop
    rst $08
    nop
    rst $28
    inc b
    rst $28
    inc b
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    ld [bc], a
    rst $28
    nop
    nop
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
    nop
    rst $38
    nop
    ld hl, sp+$00
    ret nz

    ld bc, $0f00
    ld bc, $1f7f
    rst $38
    rst $38
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
    rst $08
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
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
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

Call_042_4e3f:
    ld a, a
    nop
    rst $38
    nop
    ldh a, [rP1]
    add b
    rlca
    nop
    ccf
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
    rst $30
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    jp $8fff


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
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    db $e3
    rst $38
    rlca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rst $28

Call_042_4e82:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ld sp, hl
    rst $38
    rst $20
    rst $38
    db $d3
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ldh [$03], a
    nop
    rra
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
    xor $ff
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
    cp $ff
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    add $ff
    db $fc
    rst $38
    ld hl, sp-$01
    db $e3
    rst $38
    adc a
    rst $38
    sbc a
    rst $38
    ld a, [hl]
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    db $e3
    rst $38
    sbc a
    rst $38
    ld c, a
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
    nop
    cp $00
    db $fc
    ret nz

    db $fc
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
    ccf
    rst $38
    rrca
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
    inc bc
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
    ld bc, $01ff
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38

jr_042_4f52:
    rrca
    rst $38
    rrca
    rst $38
    ld e, $fe
    jr c, jr_042_4f52

    ld b, c
    ret nz

    rrca
    inc bc
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
    db $fc
    rst $38
    pop hl
    rst $38
    rst $18
    rst $38
    ld a, a
    rst $38
    ret z

    rst $38
    di
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ret c

    rst $38
    add e
    rst $38
    add [hl]
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ld a, h
    rst $38
    ei
    rst $38
    xor $ff
    ld hl, sp-$01
    ld hl, sp-$01
    pop hl
    rst $38
    and e
    rst $38
    ld c, a
    rst $38
    ccf
    rst $38
    ld sp, hl
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
    pop hl
    rst $38
    db $e3
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    ld [bc], a
    ld bc, $ff01
    nop
    rst $38
    nop
    rst $38
    ld bc, $02fe
    db $fc
    dec b
    ld sp, hl
    ld a, [bc]
    di
    inc d
    rst $20
    jr z, jr_042_5000

    jr nz, jr_042_4fe2

    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rst $08
    nop
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    rst $38

jr_042_4fe2:
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
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, h
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38

jr_042_5000:
    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

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
    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
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
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    and e
    rst $38
    adc a
    rst $38
    ld a, $ff
    db $fc
    rst $38
    and b
    rst $38
    ret nz

    rst $38
    adc h
    rst $38
    ld sp, $c7ff
    rst $38
    adc [hl]
    rst $38
    ld a, l
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    ld [hl], c
    rst $38
    db $e3
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, l
    rst $38
    jp $efff


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
    sbc $ff
    inc a
    rst $38
    ld a, h
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    db $e3
    rst $38
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
    ld hl, sp-$74
    ld e, [hl]
    adc h
    sbc $8c
    ld e, [hl]
    adc h
    ld e, [hl]
    adc h
    sbc $55
    ld e, a
    nop
    cp a
    jp z, $eade

    ld l, a
    ld [$fe7f], a
    ld a, a
    db $fc

Jump_042_50c3:
    ld a, a
    ldh a, [$7e]
    ldh a, [$3e]
    ldh a, [$3c]
    pop af
    jr @+$01

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
    cp $ff
    ldh a, [rIE]
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
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    db $fc
    rst $38
    nop
    nop
    ret nz

    nop
    rst $38
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
    di
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    ld h, e
    rst $38
    rrca
    rst $38
    inc b
    rst $38
    ld e, b
    rst $38
    db $f4
    rst $38
    or b
    rst $38
    pop af
    rst $38
    db $d3
    rst $38
    ld c, $ff
    ld c, b
    rst $38
    ld hl, sp-$01
    db $f4
    rst $38
    ret nz

    rst $38
    db $e4
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    jp nz, $84ff

    rst $38
    ld c, h
    rst $38
    ld hl, sp-$01
    ld [hl], b
    rst $38
    ldh [rIE], a
    pop hl
    rst $38
    jp Jump_000_07ff


    rst $38
    rrca
    rst $38
    ld e, $ff
    dec a
    rst $38
    ld a, c
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
    nop
    rst $18
    nop
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $00
    nop
    add c
    jr c, jr_042_51b1

    ld l, [hl]
    cp $c3
    cp $81
    db $fc
    add b
    ld a, b
    nop
    ld a, b
    nop
    ld a, b
    nop
    db $fc
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
    rst $38
    nop
    nop
    ldh [rP1], a
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38

jr_042_51b1:
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
    rst $08
    rst $38
    ccf
    rst $38
    ld h, h
    rst $38
    add b
    rst $38
    ld h, b
    rst $38
    ret nz

    rst $38
    ld [$14ff], sp
    rst $38
    ccf
    rst $38
    db $fc
    rst $38
    ret c

    rst $38
    jr nz, @+$01

    ld b, c
    rst $38
    inc bc
    rst $38
    ld b, $ff
    inc c
    rst $38
    inc a
    rst $38
    ld a, d
    rst $38
    cp a
    rst $38
    rlca
    rst $38
    inc b
    rst $38
    rrca
    rst $38
    ld e, $ff
    ld a, [hl]
    rst $38
    ld a, l
    rst $38
    ld sp, hl
    rst $38
    reti


    rst $38
    db $e3
    rst $38
    rst $20
    rst $38
    ld c, h
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    ld a, [c]
    rst $38
    pop hl
    rst $38
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
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rra
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
    nop
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
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$3f], a
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
    nop
    rst $38
    nop
    ld a, a
    nop
    nop
    ld hl, sp+$00
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
    ccf
    rst $38
    ld [hl], a
    rst $38
    rra
    rst $38
    jr c, @+$01

    ld [hl], e
    rst $38
    ld b, [hl]
    rst $38
    adc h
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld bc, $c3ff
    rst $38
    add a
    rst $38
    rrca
    rst $38
    ld e, $ff
    add hl, sp
    rst $38
    pop af
    rst $38
    di
    rst $38
    rst $30
    rst $38
    adc h
    rst $38
    inc e
    rst $38
    jr @+$01

    ld [hl], b
    rst $38
    ldh [rIE], a
    pop bc
    rst $38
    add c
    rst $38
    add e
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ld e, $ff
    inc e
    rst $38
    ld a, c
    rst $38
    ld a, c
    rst $38
    ei
    rst $38
    rst $38
    nop
    nop
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
    cp $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld a, a
    add b
    rra
    ldh [rIF], a
    ldh a, [$03]
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
    inc bc
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
    ei
    rst $38
    rst $30
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    inc sp
    rst $38
    ld b, a
    rst $38
    rst $08
    rst $38
    adc [hl]
    rst $38
    dec bc
    rst $38
    daa
    rst $38
    ld l, [hl]
    rst $38
    add h
    rst $38

Jump_042_533f:
    jr nz, @+$01

    add sp, -$01
    ld h, b
    rst $38
    ld h, c
    rst $38
    pop hl
    rst $38
    jp $c7ff


    rst $38
    rst $20
    rst $38
    db $ec
    rst $38
    cp $ff
    inc e
    rst $38
    jr nz, @+$01

    ldh [rIE], a
    ldh a, [rIE]
    or $ff
    call nz, Call_000_20ff
    rst $38
    inc c
    rst $38
    adc a
    rst $38
    db $dd
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $00
    nop
    nop
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    add sp, -$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $20
    rst $38
    rst $28
    rst $38
    adc l
    rst $38
    jr @+$01

    rra
    rst $38
    scf
    rst $38
    inc hl
    rst $38
    ld a, a
    rst $38
    cp $ff
    xor $ff
    call c, $90ff
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    add d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    rst $38
    ld a, h
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, h
    rst $38
    inc e
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
    ret nz

    ccf
    ldh a, [rIF]
    ld hl, sp+$07
    cp $01
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ldh [$1f], a
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
    ld a, a
    nop
    nop
    cp $00
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $28
    rst $38
    adc [hl]
    rst $38
    inc c
    rst $38
    db $10
    rst $38
    jr @+$01

    ld [$18ff], sp
    rst $38
    ld [hl], b
    rst $38
    ld [hl], c
    rst $38
    ld hl, $ebff
    rst $38
    db $e3
    rst $38
    ei
    rst $38
    db $eb
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    ld a, a
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
    ldh a, [rIE]
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
    ldh a, [rIF]
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
    nop
    rst $38
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $01
    cp $01
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    nop
    nop
    nop
    rst $38
    jr nz, @+$01

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
    rst $08
    rst $38
    adc $ff
    adc $ff
    rst $08
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    adc a
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    cp h
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr c, @+$01

    cp h
    rst $38
    ld a, h
    nop
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
    nop
    ld c, a
    inc bc
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    ld c, a
    ld [bc], a
    ld c, [hl]
    rlca
    ld [$000c], sp
    ld de, $1f00
    rlca
    rra
    rrca
    rra
    ld c, a
    rra
    rrca
    rra
    rlca
    rra
    rlca
    rrca
    rlca
    rst $08
    rrca
    rst $38
    ld e, a
    rst $18
    rrca
    rst $18
    rrca
    rst $18
    ld c, a
    rst $08
    rrca
    sbc a
    rlca
    sbc a
    rlca
    rst $18
    rrca
    rst $18
    rra
    rst $18
    rrca
    rst $18
    adc a
    rst $18
    rst $18
    rst $18
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
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rrca
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    rst $18
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
    ld a, a
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
    ccf
    ccf
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
    rra
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, $c7
    ld b, $c1
    ld b, a
    add b
    rlca
    add b
    rlca
    add b
    add e
    nop
    add e
    nop
    ld bc, $0100
    nop
    nop
    nop
    rst $38
    nop
    dec c
    rst $38
    dec c
    rst $38
    dec c
    rst $38
    dec c
    rst $38
    ccf
    rst $38
    and e
    nop
    nop
    nop
    dec [hl]
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
    db $fd
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp a
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    ld a, [hl]
    rst $38
    ld a, [hl]
    cp $fe
    ccf
    db $fc
    ccf
    db $fc
    ld a, $fc
    ld e, $fc
    ld e, $fc
    ld e, $fc
    ld e, $fc
    ld c, $fc
    ld c, $fc
    ld c, $fc
    ld c, $fc
    ld c, $fc
    ld c, $fc
    ld b, $fc
    rlca
    rst $38
    ld b, $06
    rst $38
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
    add [hl]
    ld a, a
    add [hl]
    ld a, a
    add $3f
    ccf
    nop
    ccf
    nop
    rst $38
    rst $28
    rst $18
    inc l
    rst $18
    inc l
    rst $18
    inc l
    rst $18
    inc l
    sbc a
    ld l, h
    db $ec
    inc c
    xor h
    inc c
    ld a, h
    inc c
    ld hl, $ff01
    rst $38
    rst $38
    rst $38

jr_042_572c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sub e
    rst $38
    push de
    rst $38
    push af
    rst $38
    rst $30
    rst $38
    di
    rst $38
    di
    rst $38
    ei
    rst $38
    db $fd
    rst $38
    rst $30
    rst $38
    rst $30
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
    cp a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
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
    cp $01
    db $fc
    inc bc
    db $fc
    ld [bc], a
    ld hl, sp+$04
    ld sp, hl
    inc b
    di
    ld [$08f3], sp
    rst $20
    db $10
    rst $20
    db $10
    rst $20
    db $10
    rst $20
    db $10
    rst $20
    db $10
    rst $20
    db $10
    rst $20
    db $10
    rst $20
    db $10

jr_042_57a2:
    rst $00
    jr nc, jr_042_572c

    ld [hl], b
    add a
    ld d, b
    add a
    ld d, b
    add a
    ld d, b
    rlca
    ret nc

    rlca
    ret nc

    rlca
    ret nc

    rlca
    ret nc

    rlca
    ret nc

    rlca
    ret nc

    rlca
    ldh a, [$67]
    sub b
    ld h, a
    sub b
    ld h, a
    sub b
    ld b, a
    or b
    rlca
    ldh a, [rTAC]
    ret nc

    rlca
    ret nc

    rlca
    ret nc

    rlca
    ret nc

    rlca
    ret nc

    add a
    ld d, b
    add a
    ld d, b
    add a
    ld d, b
    add a
    ld d, b
    add a
    ld d, b
    rst $00
    jr nc, jr_042_57a2

    jr nc, @-$17

    db $10
    rst $20
    db $10
    ld h, a
    sub b
    daa
    ret nc

    ldh [$f0], a
    nop
    rst $38
    rra
    rst $38
    rra
    pop hl

jr_042_57ec:
    rra
    ldh [$1f], a
    ldh [rP1], a
    rra
    nop
    rra
    nop
    rra
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $20
    rst $20
    rst $20
    di
    db $e3
    di
    di
    ld sp, hl
    pop af

jr_042_5822:
    db $fc
    ld hl, sp-$04
    ld hl, sp-$02
    db $fc
    cp $fc
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

jr_042_583a:
    rst $38
    rst $38
    rst $38
    sbc a
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
    db $fc
    inc bc
    db $fc
    ld [bc], a
    ld hl, sp+$06
    ld hl, sp+$04
    pop af
    inc c
    pop hl
    jr jr_042_583a

    db $10
    rst $00
    jr nc, jr_042_5822

    jr nz, jr_042_57ec

    ld h, b
    sbc a
    ld b, b
    rra
    add b
    ccf
    add b
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    nop
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
    ldh [rP1], a
    ldh [rP1], a
    db $e4
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    pop hl
    nop
    pop hl
    nop
    pop hl
    nop
    add sp, $00
    rst $28
    add hl, bc
    rst $28
    ld b, $ef
    nop
    rst $20
    nop
    ldh [rP1], a
    ldh [rP1], a
    pop hl
    nop
    ldh [rP1], a
    pop hl
    pop hl
    nop
    pop hl
    nop
    ld h, b
    nop
    nop
    add b
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    nop
    add b
    rst $38
    ret nz

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
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    ccf
    rra
    rra
    sbc a
    rra
    adc a
    rrca
    rst $00
    add a
    rst $00
    add a
    db $e3
    jp $c3e3


    pop af
    pop hl
    ld hl, sp-$20
    ld hl, sp-$10
    db $fc
    ldh a, [$fc]
    ld hl, sp-$02
    db $fc
    cp $fc
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    add a
    ld h, b
    rrca
    ret nz

    rrca
    ret nz

    rra
    add b
    ccf
    add b
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld [$08ff], sp
    rst $38
    ld [$0cff], sp
    ld a, [$fc0c]
    inc e
    db $ec
    inc e
    db $fc
    inc e
    db $fc
    ld e, $ff
    rrca
    rst $18
    rra
    sbc a
    ld e, $9f
    ld e, $1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ccf
    scf
    ld a, a
    dec a
    ld a, a
    ld a, a
    ld a, l
    dec a
    ld a, a
    ld a, a
    ld a, [hl]
    ld a, $fe
    ld a, [hl]
    cp $7c
    cp $7e
    cp $7c
    cp $fc
    ld a, h
    ld a, h
    ld a, b
    ld l, b
    nop
    nop
    nop
    inc bc
    ld bc, $060f
    ld d, $0c
    jr nz, jr_042_5984

    inc c
    jr c, jr_042_59e7

    jr z, jr_042_59e3

    dec l
    ccf
    ld e, $3e
    inc e
    ld a, $7c
    ld a, [hl]
    rra
    cp l
    ld a, [hl]
    cp [hl]
    ld a, h
    ld e, $fe
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_042_5984:
    rst $38
    rst $38
    ld a, a
    cp $3e
    db $fc
    nop
    call c, $c814
    add hl, sp
    ret nz

    ld sp, hl
    nop
    ldh a, [rP1]
    pop af
    nop
    rra
    nop
    nop
    ldh [$80], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    rrca
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
    ccf
    rra
    rra
    rrca
    rrca
    adc a
    rrca
    rst $00
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

jr_042_59e3:
    nop
    nop
    nop
    nop

jr_042_59e7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc b
    inc b
    dec b
    ld b, $07
    ld [$0808], sp
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    nop
    nop
    nop
    nop
    nop
    nop
    inc d
    dec d
    ld d, $17
    jr jr_042_5a3f

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
    ld e, $1f
    jr nz, jr_042_5a55

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

jr_042_5a3f:
    nop
    nop
    jr z, jr_042_5a6c

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_042_5a4b

jr_042_5a4b:
    nop
    nop
    nop
    nop
    ld sp, $0232
    inc sp
    inc [hl]
    dec [hl]

jr_042_5a55:
    ld [hl], $37
    jr c, jr_042_5a92

    ld a, [hl-]
    nop
    nop
    nop
    ld [bc], a
    dec sp
    inc a
    ld [$3e3d], sp
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a

jr_042_5a6c:
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld [$4d4c], sp
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld [$0808], sp
    ld [$0854], sp
    ld d, l
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld [$005b], sp

jr_042_5a92:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, h
    ld [$005d], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, [hl]
    ld e, a
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, d
    ld h, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, h
    ld h, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0002
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld bc, $0101
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
    inc b
    inc b
    ld bc, $0101
    ld bc, $0401
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
    ld bc, $0101
    inc b
    ld bc, $0000
    nop
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    inc b
    ld bc, $0101
    inc b
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
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_042_5bc3

jr_042_5bc3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_042_5bf2

jr_042_5bf2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $01ff
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
    nop
    rst $38
    ldh a, [$e0]
    ldh a, [$c0]
    ldh a, [$c0]
    ldh a, [$c0]
    ldh a, [$80]
    ldh a, [$80]
    ldh a, [$80]
    ldh a, [rP1]
    ldh a, [$80]
    ldh a, [$80]
    ldh a, [$c0]
    ldh a, [$c0]
    ldh a, [$c0]
    ldh a, [$c0]
    ldh [$c0], a
    ldh [$c0], a

Call_042_5d10:
    rst $18
    ldh [$df], a
    ldh [rIE], a
    ldh [$fe], a
    ldh [$fe], a
    ldh [$de], a
    ldh [$de], a
    ldh [$de], a
    ldh [$de], a
    ldh [$de], a
    ldh [$9e], a
    ldh [$de], a
    ldh [$de], a
    ldh [$de], a
    ldh [$de], a
    ldh [$de], a
    ldh [$de], a
    ldh [$de], a
    ldh [$de], a
    ldh [$de], a
    ldh [$de], a
    ldh [$de], a
    ldh [$de], a
    ldh [$de], a
    ldh [$de], a
    ldh [$de], a
    ldh [$de], a
    ldh [$de], a
    ldh [$de], a
    ldh [$de], a
    ldh [$de], a
    ldh [$fe], a
    ret nz

    sbc $e0
    xor $d0
    adc $f0
    add $f8
    add $f8
    add $f8
    call z, $dcf0
    ldh [$dc], a
    ldh [$dc], a
    ldh [$9c], a
    ldh [$dc], a
    ldh [$9c], a
    ldh [$9c], a
    ldh [$8c], a
    ldh a, [$84]
    ld hl, sp-$3c
    ld hl, sp-$3c
    ld hl, sp-$3c
    ld hl, sp-$1c
    ld hl, sp-$3c
    ld hl, sp-$1c
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$01
    ret nz

    rst $38
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
    rra
    ldh [rTAC], a
    ld hl, sp+$03
    db $fc
    ld bc, $807e
    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$01
    nop
    cp $00
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
    ld bc, $4000
    nop
    nop
    nop
    jr nz, jr_042_5db7

jr_042_5db7:
    inc c
    nop
    ld [bc], a
    nop
    inc de
    nop
    dec c
    nop
    inc bc
    nop
    ld bc, $0e00
    nop
    ld bc, $0200
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
    ld b, b
    nop
    jr nc, jr_042_5df9

    ld a, b
    jr c, jr_042_5e2a

    jr c, jr_042_5e2a

    jr jr_042_5e6c

    nop
    inc d
    nop
    inc b
    nop
    nop
    nop
    ld b, b
    nop

jr_042_5df9:
    ld [hl], b
    jr nc, jr_042_5e38

    jr nc, jr_042_5e7a

    jr c, jr_042_5e3c

    db $10
    ld a, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    nop
    inc hl
    nop
    rst $38
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_042_5e2a:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_042_5e38:
    nop
    rst $38
    nop
    ld a, a

jr_042_5e3c:
    nop
    rra
    nop
    rrca
    rlca
    ld hl, sp+$03
    ld a, h
    add c
    ld e, $e0
    rrca
    ldh a, [rTAC]
    ld hl, sp+$01
    cp $00
    rst $38
    nop
    nop
    ld a, a
    nop
    ccf
    nop
    rrca
    nop
    rlca
    nop
    ld bc, $e000
    ld h, b
    ldh a, [rSVBK]
    ldh a, [$f0]
    ld hl, sp-$10
    db $fc
    ldh a, [$f3]
    ld [hl], b
    ldh a, [$60]
    ld [hl], b
    ld [hl], b
    ld [hl], b

jr_042_5e6c:
    jr nc, @+$72

    jr nc, jr_042_5ee0

    jr nc, jr_042_5ea2

    jr nc, jr_042_5ea4

    jr nc, jr_042_5ea6

    jr nc, jr_042_5ea8

    jr nc, jr_042_5eaa

jr_042_5e7a:
    jr nc, jr_042_5eac

    jr nz, @+$32

    jr nz, jr_042_5eb0

    jr nz, jr_042_5eb2

    jr nz, jr_042_5ee4

    nop
    ld h, b
    nop
    ld b, b
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
    jr nz, jr_042_5e99

jr_042_5e99:
    stop
    db $10
    inc b
    ld e, $06
    ld a, [hl]
    ld c, $1f

jr_042_5ea2:
    rrca
    rrca

jr_042_5ea4:
    rrca
    ld a, a

jr_042_5ea6:
    rrca
    rrca

jr_042_5ea8:
    rlca
    rra

jr_042_5eaa:
    ld b, $2f

jr_042_5eac:
    nop
    ld b, $00
    nop

jr_042_5eb0:
    nop
    nop

jr_042_5eb2:
    nop
    nop
    nop
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
    add b
    nop
    rst $38
    add b
    nop
    rst $38
    nop
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
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rTAC]

Call_042_5edf:
    ld a, b

jr_042_5ee0:
    add c
    ld e, $e0
    rrca

jr_042_5ee4:
    ldh a, [rTAC]
    ld hl, sp+$01
    cp $00
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $00e0
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0001
    nop
    nop
    nop
    ld a, [bc]
    inc b
    ld bc, $0202
    ld bc, $0100
    db $10
    ld bc, $1964
    rlca
    inc bc
    ld bc, $09c9
    rst $38
    add c
    ret


    add c
    ret


    ld bc, $01cd
    adc a
    rlca
    adc a
    inc bc
    ld e, a
    add a
    inc bc
    rlca
    ld bc, $0007
    rlca
    nop
    rlca
    nop
    rlca
    inc bc
    inc bc
    nop
    dec b
    ldh a, [rP1]
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
    nop
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
    ccf
    rst $38
    rra
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
    ld bc, $ffff
    nop
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [rIF], a
    ld a, b
    add a
    inc e
    db $e3
    ld c, $f1
    rlca
    ld hl, sp+$01
    cp $00
    ld a, a
    nop
    ccf
    nop
    rrca
    nop
    rlca
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    add a
    inc bc
    rst $00
    inc bc
    rst $20
    inc bc
    ld h, a
    inc bc
    db $e3
    ld bc, $00a3
    and c
    ld bc, $0121
    and c
    ld bc, $01c3
    pop bc
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
    stop
    ret nz

    ret z

    ret nz

    ld hl, sp-$3f
    ldh a, [$c0]
    ldh a, [$c9]
    ld a, [$fa95]
    db $f4
    ld sp, hl
    or $fa
    or $fe
    and $ee
    and $e4
    nop
    nop
    nop
    or b
    nop
    ldh a, [$80]
    ldh a, [$c0]
    ld h, b
    ld b, b
    nop
    nop
    cp $f0
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
    ld bc, $03ff
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
    ccf
    rst $38
    ccf
    cp $7c
    db $fc
    ld hl, sp-$08
    pop af
    ldh [$c3], a
    ret nz

    adc a
    inc bc
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
    rst $38
    add a
    rst $38
    rst $00
    ld a, a
    rst $20
    rra
    ld [hl], e
    adc a
    dec de
    rst $20
    rrca
    pop af
    rlca
    ld hl, sp+$01
    nop
    cp $80
    ld a, a
    ld [$883f], sp
    rra
    adc h
    rra
    sbc h
    rra
    sbc h
    sbc a
    db $fc
    sbc a
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
    ldh a, [$3f]
    ld [hl], b
    rra
    ld a, b
    rra
    ld c, b
    rra
    ret z

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
    rra
    rra
    nop
    rra
    ret nz

    rra
    ldh [rIF], a
    ldh a, [$1f]
    ldh a, [rIF]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$7f]
    ld h, b
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    ret nz

    nop
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
    rst $38
    rst $38
    cp $fc
    db $fc
    ld hl, sp-$0f
    ldh a, [$e7]
    pop bc
    adc a
    add e
    rra
    rlca
    ld a, a
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
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp+$7f
    ld a, a
    ld hl, sp+$3f
    ld a, b
    ccf
    ld a, b
    ccf
    ld a, b
    ccf
    ld a, b
    ccf
    ld a, b
    ccf
    ld a, b
    ccf
    ld a, b
    ccf
    ld a, b
    ccf
    ld a, b
    ccf
    ld a, b
    ccf
    ld a, b
    ccf
    ld a, b
    ccf
    ld a, b
    ccf
    ld a, b
    ccf
    ld a, b
    ccf
    ld a, b
    ccf
    ld a, h
    ccf
    ld a, h
    ccf
    ld a, h
    ccf
    ld a, h
    ccf
    ld a, h
    ccf
    ld a, h
    ccf
    ld a, h
    ccf
    ld a, h
    ccf
    ld a, h
    ccf
    ld a, [hl]
    ccf
    ld a, [hl]
    ccf
    ld a, [hl]
    ccf
    ld a, [hl]
    ccf
    ld a, [hl]
    ccf
    ld a, [hl]
    ccf
    ld a, [hl]
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
    ld hl, sp-$10
    rst $30
    ldh [$cf], a
    add h
    cp a
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
    rst $38
    cp $ff
    ldh [rIE], a
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
    rrca
    ld bc, $f801
    nop
    rst $38
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
    add b
    rst $38
    ldh [rIE], a
    nop
    nop
    ldh [rP1], a
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
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
    ld a, a
    nop
    nop
    nop
    nop
    db $fc
    nop
    rst $38
    add b
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc bc
    nop
    nop
    ldh [rP1], a
    cp $00
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
    rlca
    nop
    nop
    nop
    nop
    db $fc
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    nop
    nop
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rra
    nop
    nop
    nop
    nop
    ldh [rP1], a
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    nop
    nop
    nop
    add b
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    cp $00
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rrca
    nop
    nop
    nop
    nop
    db $fc
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
    jr @+$1b

    ld a, [de]
    dec de
    dec c
    dec c
    inc e
    dec e
    ld e, $1f
    jr nz, jr_042_6325

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_042_6335

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_042_6345

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_042_6355

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_042_6325:
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    dec c
    dec c
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b

jr_042_6335:
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
    ld d, b
    ld e, a

jr_042_6345:
    ld h, b
    ld d, b
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
    ld d, b

jr_042_6355:
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    dec c
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
    ld d, b
    sbc [hl]
    sbc a
    and b
    and c
    and d
    add h
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    ld d, b
    xor h
    xor l
    xor [hl]
    xor a
    or b
    add h
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
    jp nz, Jump_042_50c3

    call nz, $c6c5
    rst $00
    ld d, b
    ret z

    ret


    jp z, $cccb

    add h
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
    dec c
    ld a, [$fcfb]
    db $fd
    cp $ff
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec c
    dec c
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_042_6425

    dec c
    dec c
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_042_6437

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_042_6447

    ld a, [hl+]
    dec hl
    ld bc, $0202
    ld [bc], a
    inc bc

jr_042_6425:
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    rlca
    nop
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_042_6437:
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0701
    nop
    ld bc, $0201
    inc bc
    inc bc
    ld [bc], a
    inc bc

jr_042_6447:
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0007
    ld bc, $0202
    ld bc, $0202
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    rlca
    nop
    ld bc, $0202
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0407
    dec b
    ld bc, $0101
    nop
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0007
    dec b
    ld bc, $0001
    ld bc, $0001
    ld bc, $0303
    inc bc
    ld bc, $0101
    rlca
    nop
    inc bc
    nop
    ld b, $06
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rlca
    nop
    inc bc
    ld b, $06
    ld b, $01
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    nop
    ld bc, $0007
    inc bc
    ld bc, $0101
    ld bc, $0301
    inc bc
    inc bc
    ld b, $01
    ld bc, $0101
    rlca
    nop
    ld b, $05
    ld bc, $0101
    ld bc, $0100
    ld bc, $0606
    ld bc, $0100
    inc b
    nop
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0301
    ld b, $01
    nop
    ld bc, $0007
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0106
    ld bc, $0701
    nop
    nop
    ld bc, $0101
    ld bc, $0100
    inc bc
    ld b, $06
    ld b, $00
    ld bc, $0001
    nop
    ld b, $06
    rlca
    nop
    inc bc
    ld b, $01
    inc bc
    ld b, $06
    ld b, $01
    ld bc, $0701
    inc b
    ld bc, $0202
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0606
    ld b, $06
    ld bc, $0101
    rlca
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0701
    nop
    ld c, $09

jr_042_6532:
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld bc, $0901
    rrca
    inc c
    rrca
    rrca
    rrca
    rrca
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    add hl, bc
    add hl, bc

jr_042_654c:
    ld bc, $0e01
    inc c
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld c, $09
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    nop
    nop
    nop
    nop

jr_042_6564:
    nop
    nop
    ld [hl], b
    nop
    ldh a, [rP1]
    ei
    nop
    ld sp, hl
    nop
    ret c

    nop
    jr z, jr_042_6532

    ldh [$f0], a
    ld [hl], b
    ld hl, sp+$3c
    ld hl, sp+$1c
    ld hl, sp+$0c
    ld hl, sp+$0e
    db $fc
    ld b, $ff
    inc bc
    rst $38
    add c
    ld a, a
    ld [$09f7], sp
    or $41
    cp [hl]
    add b
    ld a, a
    sub b
    ld a, a
    ld bc, $01fe
    cp $20
    rst $18
    ret nz

    rst $38
    ldh [rIE], a
    ld h, b
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    db $10
    rst $28
    rst $08
    nop
    rst $28
    nop
    ccf
    add b
    sbc e
    call nz, $c6b9
    ld e, a
    ldh [$8f], a
    ld [hl], b
    rst $38
    nop
    pop bc
    rst $38
    ldh a, [rIE]
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
    ld b, b
    rst $38
    ld a, a
    add b
    rst $08
    jr nc, jr_042_654c

    ld a, b
    ld a, e
    add h
    adc a
    ld [hl], b
    or b
    ld a, a
    rst $00
    jr c, @+$01

    nop
    nop
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld [$0cff], sp
    rst $38
    ldh a, [$bf]
    ret nc

    ld a, d
    ret nz

jr_042_65df:
    nop
    ld c, h
    ld [bc], a
    jr nz, jr_042_6564

    and [hl]
    nop
    ld l, d
    add h
    ld h, c
    ld c, $2c
    inc bc
    cp l
    ld b, b
    reti


    ld b, $7c
    inc bc
    sub h
    inc bc
    dec h
    jp nc, $f106

    add d
    ld a, l
    ld b, l
    cp b
    ld d, $e8
    ld a, [bc]
    db $f4
    ld e, a
    add b
    db $dd
    ld [hl+], a
    add l
    ld a, d
    inc bc
    db $fc
    and c
    ld c, [hl]
    db $fd
    ld [bc], a
    inc sp
    call z, Call_042_758e
    ld b, [hl]
    ld a, a
    ld a, $1f
    inc a
    cp a
    sbc h
    sbc a
    sbc l
    sbc [hl]
    cp h
    cp a
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    and b
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

jr_042_663b:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    adc h
    nop
    or b
    jr nz, jr_042_65df

    nop
    ld [bc], a
    ld c, l
    and e
    ld e, h
    jr jr_042_663b

    nop
    rst $38
    ld l, $51
    ld [bc], a
    db $fd
    rra
    ldh [rP1], a
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0400], sp
    nop
    nop
    nop
    add b
    nop
    ld bc, $0100
    nop
    nop
    nop
    stop
    inc b
    nop
    add e
    nop
    add hl, de
    nop
    inc e
    nop
    inc c
    nop
    ld sp, hl
    ldh [$f5], a
    ld hl, sp+$3c
    cp $03
    cp $03
    cp $39
    rst $00
    rlca
    ld sp, hl
    db $10
    rst $28
    ld [de], a
    db $ed
    nop
    rst $38
    add b
    ld a, a
    inc bc
    db $fc
    add e
    ld a, h
    inc bc
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    inc bc
    cp $03
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    add [hl]
    rst $38
    set 7, a
    db $fc
    rst $38
    ld a, d
    rst $38
    ld d, $ff
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$46ff], sp
    rst $38
    ld de, $00ff
    ld a, a
    db $10
    ccf
    cp d
    rra
    ld b, c
    rla
    ret nz

    rlca
    inc de
    inc bc
    adc l
    ld bc, $01e7
    push af
    ld bc, $11ec
    ld h, b
    sub b
    xor $10
    ld h, $98
    ld h, e
    adc h
    rlc h
    ld d, [hl]
    add c
    push af
    nop
    ld h, d
    dec b
    adc $01
    push de
    nop
    ld [hl], h
    add e
    cp c
    ld b, $5f
    and b
    rla
    ldh [rNR13], a
    db $ec
    ld a, h
    add e
    inc a
    jp $f906


    ld bc, $9dfe
    ld [hl+], a
    ld h, [hl]
    sub c
    add hl, bc
    cp $52
    xor a
    nop
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
    nop
    inc bc
    nop
    nop
    nop
    add $39
    and b
    ld e, a
    ld sp, $c7ce
    jr c, jr_042_6756

    ld [c], a
    rst $38
    nop
    ld bc, $0036
    rlca
    nop
    nop
    ld [$0c00], sp
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    add b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld [hl-], a
    nop
    dec de
    nop

jr_042_6756:
    add hl, bc
    nop
    ld bc, $0100
    nop
    stop
    jr nz, jr_042_6760

jr_042_6760:
    jr z, jr_042_6762

jr_042_6762:
    add [hl]
    nop
    jp nc, $fe00

    nop
    ld a, l
    nop
    cp a
    nop
    rst $38
    add b
    rst $38
    nop
    sbc b
    ld [hl], b
    db $fc
    inc b
    inc [hl]
    inc b

jr_042_6776:
    jr nc, jr_042_6778

jr_042_6778:
    stop
    nop
    nop
    inc b
    inc b
    nop
    nop
    nop
    nop
    add hl, bc

jr_042_6783:
    add hl, bc
    nop
    nop
    nop
    nop
    add b
    nop
    ldh a, [$88]
    ld a, [de]
    db $e4
    add $39
    ld a, [hl]
    rst $38
    ld e, $ff
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd

jr_042_679c:
    nop
    rst $38
    db $10
    rst $38
    rst $18
    jr nz, @+$01

    nop
    rst $18
    jr nz, jr_042_6776

    jr nc, jr_042_679c

    inc c
    sub d
    ld l, l
    add hl, bc
    or $e3
    db $dd
    ld b, h
    cp a
    jr nc, jr_042_6783

    sbc d
    ld h, l
    ret z

    scf
    call z, $e433
    dec de
    rst $30
    ld [$04fb], sp
    ld [bc], a
    rst $38
    add h
    rst $38
    add a
    rst $38
    ld sp, $a5ff
    rst $38
    ret z

    rst $38
    ld d, b
    rst $38
    ld l, b
    cp $80
    cp [hl]
    nop
    db $fc
    ld [$00f8], sp
    ld l, b
    sub b
    ldh a, [rVBK]
    ld l, a
    add hl, bc
    add hl, bc
    jr jr_042_67f8

    ld h, d
    sbc l
    db $eb
    inc b
    ld [$18f7], sp
    rst $00
    xor d
    ld d, l
    ld bc, $80fe
    ld a, a
    ret nc

    cpl
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a

jr_042_67f8:
    add b
    ld a, a
    add b
    ld a, a
    ld h, b
    sbc a
    inc h
    rst $18
    ld h, b
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
    ld [$08ff], sp
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
    ld d, b
    nop
    pop de
    nop
    nop
    nop
    ldh a, [rIF]
    dec [hl]
    jp z, $cd32

    ld h, c
    sbc [hl]
    nop
    ld l, a
    ret z

    ld h, $40
    cp a
    nop
    and b
    ld b, b
    nop
    ld [hl], b
    nop
    sbc d
    nop
    ld b, d
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    jr nc, jr_042_6854

jr_042_6854:
    inc de
    ld c, $1f
    rrca
    nop
    rrca
    ld [$0407], sp
    inc bc
    inc b
    inc bc
    ld [bc], a
    ld bc, $0102
    nop
    inc bc
    jp nz, $c401

    inc bc
    db $fc
    inc bc
    db $ec
    inc bc
    xor $01
    rst $38
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
    jr nz, @+$01

    nop
    ld a, e
    add h
    rst $38
    nop
    db $fd
    inc bc
    ld hl, sp+$07
    ld a, [c]
    rrca
    ei
    rlca
    db $fd
    rlca
    ld hl, sp+$07
    ret z

    rst $38
    ldh a, [rIE]
    ld h, b
    rst $38
    ret nz

    rst $38
    ld h, b
    rst $38
    db $fc
    rst $38
    jr c, @+$01

    ld [bc], a
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    jr @+$01

    adc c
    rst $38
    ld e, b
    and a
    jp nz, $30bd

    rst $08
    ld b, $f9
    db $e3
    inc e
    daa
    ret c

    ccf
    ret nz

    cp $01
    pop af
    ld c, $f1
    ld c, $10
    rst $28
    ld [$4ef7], sp
    or c
    dec hl
    call nc, $3fc0
    daa
    rra
    inc de
    cpl
    ld h, e
    ld a, a
    and d
    rst $38
    sbc h
    rst $18
    call c, Call_042_5edf
    ld e, a
    cp h
    cp a
    adc h
    adc a
    call z, $e7cf
    rst $20
    rst $30
    rst $30
    db $fd
    db $fd
    rst $38
    rst $38
    db $fd
    db $fd
    db $fd
    db $fd
    cp $fe
    ld b, b
    cp a
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
    ld [hl+], a
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ld [bc], a
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
    dec b
    rst $38
    ccf
    nop
    adc h
    nop
    add b
    add b
    ld [bc], a
    db $fd
    inc h
    db $db
    ld [hl], b
    adc l
    jr nc, jr_042_6987

    db $10
    rst $28
    nop
    cp $00
    ld b, e
    rlca
    jr c, jr_042_6941

jr_042_6941:
    nop
    jr nz, jr_042_6944

jr_042_6944:
    jr nz, jr_042_6946

jr_042_6946:
    stop
    nop
    nop
    inc [hl]
    nop
    inc b
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [$0c00], sp
    nop
    adc b
    nop
    and h
    ret c

    ld e, [hl]
    db $fc
    ld h, $fc
    nop
    cp $28
    sbc $02
    cp $00
    cp $91
    ld a, [hl]
    ld b, c
    cp [hl]
    dec hl
    call c, $fc0a
    dec bc
    db $fc
    dec h
    call c, Call_000_0cf2
    db $d3
    inc c
    di
    inc c
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
    adc b
    ld [$0484], sp
    nop

jr_042_6987:
    nop
    nop
    nop
    add d
    ld [bc], a
    add d
    ld [bc], a
    add d
    nop
    add a
    nop
    add e
    ld b, b
    db $e3
    nop
    jp $fb30


    nop

jr_042_699a:
    inc sp
    ret nz

    rst $08
    jr nc, jr_042_699a

    inc c
    add $ff
    ld a, a
    rst $38
    ld [hl], $ff
    ret z

    rst $38
    nop
    rst $38
    db $10

jr_042_69ab:
    rst $38
    ld a, [hl-]
    rst $38
    inc e
    rst $38
    xor b
    rst $38
    rst $28
    rst $38
    cp $ff
    ld a, l

jr_042_69b7:
    rst $38
    ld d, [hl]
    rst $38
    add c
    rst $38
    xor $ff
    ld a, e
    rst $38
    ld bc, $61fe
    sbc [hl]
    add b
    ld a, a
    add b
    ld a, a
    ldh [$1f], a
    jr nz, jr_042_69ab

    ldh [rIE], a
    and b
    rst $38
    nop

jr_042_69d1:
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_042_69b7

    ld h, b
    sbc a
    ld bc, $22ff
    cp $76
    cp $28
    rst $10
    rst $00
    jr nc, jr_042_6a0a

    jp c, $ef10

    jr jr_042_69d1

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
    ld l, e
    rst $38
    ld a, $ff

jr_042_6a0a:
    rst $08
    nop
    add h
    nop
    jr nz, jr_042_6a30

    daa
    rst $38
    inc c
    rst $30
    ldh [rIE], a
    ld l, l
    sbc a
    ld h, c
    sbc a
    call c, $3423
    rst $38
    adc l
    ld [hl], b
    add h
    ld a, a
    ld e, $07
    ld [bc], a
    rrca
    nop
    rrca
    ld [bc], a
    inc b
    add b
    nop
    ret nz

    nop
    add b
    nop

jr_042_6a30:
    nop
    nop
    ld bc, $0800
    nop
    stop
    nop
    nop
    nop
    nop
    jr nz, jr_042_6a3e

jr_042_6a3e:
    ld h, b
    nop
    ld a, b
    nop
    ld a, b
    nop
    ld c, h
    nop
    ld h, h
    nop
    cp d
    nop
    rst $18
    nop
    or $00
    xor $00
    db $dd
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    add b
    rst $38
    add b
    cp a
    ret nz

    ld a, a
    ret nz

    cp a
    ldh [$80], a
    ld h, b
    ldh a, [rNR41]
    nop
    ldh a, [$84]
    ld a, b
    add h
    ld a, b
    add b
    ld a, h
    and b
    ld e, h
    ld [hl+], a
    call c, Call_000_3cc3
    ld b, c
    cp [hl]
    ld [bc], a
    rst $38
    add l
    ld a, a
    inc h
    rst $18
    nop
    rst $38
    inc b
    ei
    ld b, b
    cp a
    rst $18
    cp $af
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
    nop
    rst $38
    ld b, b
    cp a
    ld h, c
    rst $38
    ld l, b
    rst $38
    call nz, $8ecf
    adc a
    ld h, [hl]
    ld h, a
    ld c, $0f
    jr nc, @-$2f

    nop
    rst $38
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
    jr @+$01

    inc c
    rst $38
    ld b, h
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    jr nz, @+$01

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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr z, @+$01

    ld b, b
    rst $38
    jr z, @+$01

    dec bc

jr_042_6afb:
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    ccf

Jump_042_6b01:
    rst $38
    ld a, a
    rst $38
    rst $28
    rst $38
    pop hl
    rst $38
    daa
    ld sp, hl
    cp a
    nop
    rst $10
    inc de
    ld a, b
    ld [hl], b
    ld b, l
    cp d
    ld a, h
    add e
    ld d, b
    xor e
    ld a, b
    add a
    ldh [$1f], a
    jr nz, jr_042_6afb

    nop
    cp a
    nop
    ccf
    ld b, b
    rst $38
    ld c, b
    rst $38
    ld l, b
    rst $38
    ld c, [hl]
    rst $38
    adc d
    ld a, a
    scf
    dec bc
    dec h
    inc bc
    dec d
    inc bc
    sbc a
    ld bc, $019f
    dec e
    nop
    inc c
    nop
    rrca
    nop
    ccf
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $08
    jr nc, @+$01

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
    add b
    ld a, a
    add b
    sbc [hl]
    ld h, c
    xor $11
    ld [hl], b
    adc a
    adc [hl]
    adc [hl]
    add [hl]
    add [hl]
    rla
    rla
    add hl, bc
    adc c
    ld b, e
    jp $e3e3


    rla
    rst $30
    rra
    rst $38
    rlca
    rst $30
    daa
    rst $30
    rlca
    rst $30
    ld h, a
    rst $30
    ld a, a
    rst $38
    cpl
    rst $38
    ld b, a
    rst $38
    rlca
    rst $38
    or a
    rst $38
    rst $30
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
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc c
    rst $38
    ld [$00ff], sp
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    ld b, $ff
    ld [bc], a
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld b, [hl]
    rst $38
    ld e, $ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, $fe
    ld [hl], h
    add b
    db $f4
    nop
    and d
    add b
    ld h, b
    ld h, b
    nop
    rst $38
    add b
    ld l, a
    nop
    db $fc
    inc e
    db $e3
    ld [bc], a
    db $fd
    ld bc, $3bfe
    call nz, $c43b
    ld a, b
    add h
    ld a, d
    add h
    db $fd
    ld [bc], a
    cp l
    ld b, e
    cp $01
    rst $38
    nop
    cp $81
    or e
    call z, $3fc2
    jp $813f


    ld a, a
    ld b, c
    cp a
    ldh [$9f], a
    and b
    rst $18
    ret nc

    rst $28
    ret nc

    rst $28
    ld a, [$f008]
    nop
    pop af
    nop
    ld sp, hl
    nop
    ld hl, sp+$00
    or $0e
    cp $07
    ld hl, sp+$07
    ld hl, sp+$07
    cp h
    ld b, b
    db $fc
    ld bc, $01fe
    rst $38
    ld bc, $01fe
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
    cp $01
    rst $28
    db $10
    xor $11
    ld sp, hl
    ld b, $f3
    inc c
    inc hl
    call c, Call_042_6c93
    ld h, e
    sbc h
    jp nc, $e62d

    add hl, de
    ld [$f215], a
    dec c
    ret nz

    ccf
    db $e4
    dec de
    ldh [$1f], a
    ld h, b
    sbc a
    ret nc

    cpl
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
    db $10
    rst $38
    ld bc, $01ff

Call_042_6c93:
    rst $38
    ld a, [bc]
    rst $38
    inc c
    rst $38
    add hl, de
    rst $38
    ld a, [bc]
    rst $38
    rla
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rra
    rst $38
    adc a
    rst $38
    ld c, a
    cp a
    rrca
    sbc a
    ld b, a
    adc a
    rlca
    rst $00
    ld b, e
    add a
    ld bc, $a1c3
    ret nz

    sub b
    ldh [$80], a
    ldh a, [$91]
    db $ec
    ret nz

    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    rst $38
    rst $38
    ld a, c
    nop
    ld a, l
    ld bc, $4a4a
    ld d, h
    inc d
    ld b, $79
    add b
    ld [hl], e
    ld bc, $00fe
    rst $38
    nop
    rst $38
    di
    inc c
    ldh a, [$0e]
    db $fc
    inc bc
    rrca
    rrca
    ld e, $1e
    ld e, $1e
    ld e, $1e
    inc c
    adc h
    adc [hl]
    adc [hl]
    ld c, a
    rst $08
    rlca
    rst $00
    ld a, e
    ld b, a
    ld a, [de]
    daa
    dec de
    rlca
    dec de
    rlca
    rrca
    inc de
    inc d
    inc de
    dec b
    inc bc
    dec bc
    rrca
    rla
    rla
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc bc

jr_042_6d08:
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    inc bc
    add e
    inc hl
    inc hl
    db $10
    db $10
    ld de, $0111
    add c
    add e
    jp nz, $c043

jr_042_6d1a:
    rst $00
    db $e4
    ld b, a
    call nz, Call_042_74c7
    and a
    ld a, b
    or a

jr_042_6d23:
    ld a, b
    rst $18
    jr c, jr_042_6d23

    jr c, jr_042_6d08

    jr c, jr_042_6d1a

    jr @+$01

    ld [$08ff], sp
    ld [$0808], sp
    ld [$2020], sp
    sub b
    sub b
    sub b
    sub b
    add c
    add b
    add b
    add b
    nop
    nop
    ld [$5008], sp
    ld d, b
    jr nc, @+$32

    or b
    or b
    ldh a, [$f1]
    ld a, [$f2f9]
    pop af
    di
    ldh a, [$f7]
    ldh a, [$f3]
    ldh a, [$f3]
    ldh a, [$f1]
    ld a, [c]
    ld a, [c]
    di
    ld a, [$f2fb]
    pop af
    di
    ldh a, [$f2]
    di
    db $f4
    rst $30
    ld a, [c]
    di
    di
    ldh a, [$f0]
    di
    ldh a, [$f3]
    push af
    or $f5
    rst $30
    inc bc
    db $fc
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
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld c, $ff
    rra
    rst $38
    ccf
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
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    dec e
    ld a, [hl]
    ld b, [hl]
    add hl, sp
    db $10
    cpl
    inc h
    rst $38
    rlca
    rst $38
    sbc a
    rst $38
    rst $18
    rst $18
    rra
    dec b
    ret nz

    ld b, b
    ld [bc], a
    nop
    ldh a, [rP1]
    nop
    rra
    dec bc
    ld [hl], h
    ld e, $e1
    nop

jr_042_6dd7:
    rst $38
    rra
    ldh [$bf], a
    ld b, b
    ret z

    scf
    nop
    rst $08
    rlca
    rlca
    dec de
    rra
    rrca
    rrca
    rra
    rra
    rst $38

jr_042_6de9:
    rst $38
    rst $38
    rst $38
    ld [hl], a
    ld a, a
    db $dd
    rst $38
    inc c
    rst $38
    nop
    rst $38
    adc c
    rst $38
    ld [$96ff], sp
    rst $38
    scf
    rst $38
    dec [hl]
    rst $38
    db $fd
    cp $9d
    cp $0f
    db $fc
    ld a, $e4
    dec c
    ldh a, [$9f]
    ld hl, sp-$41
    ldh a, [$d9]
    ldh [$e9], a
    ret nz

    or $c0
    ld a, [c]
    nop
    ldh a, [rP1]
    ld a, [c]
    nop
    adc $00
    add h
    nop

jr_042_6e1c:
    and h
    nop
    sbc [hl]
    nop
    ld [$fe00], a
    nop
    xor $00
    ld a, [$f000]
    nop
    cp $00
    cp $00
    rst $38
    nop
    xor $00
    rst $38
    nop
    rst $38
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
    ret nc

    adc b
    ret c

    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    db $10
    ldh [$80], a
    ld h, b
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    jr nz, @-$2e

    jr nz, jr_042_6dd7

    ld h, b
    ld c, b
    xor b
    jr nz, jr_042_6e1c

    ld l, b
    adc b
    add b
    ld h, b
    sbc b
    ld a, b
    ld [hl], b
    or b
    or b
    ld [hl], b
    ret nz

    jr nz, jr_042_6de9

    ld h, b
    add b
    ld h, b
    nop
    ld h, b
    ld d, a
    ld d, a
    rst $30
    ld [$d12e], sp
    inc h
    db $db
    ld b, b
    cp a
    nop
    rst $38
    nop
    cp $00
    cp $22
    rst $38
    ld a, [hl-]
    rst $38
    ld a, $ff
    ld a, [hl]
    rst $38
    ld e, $ff
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
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
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_042_6eb4:
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rlca
    rst $38
    or a
    ld c, a
    rst $28
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    ldh a, [rVBK]
    nop
    ld [bc], a
    nop
    ld e, [hl]
    stop
    nop
    add a
    jr nc, jr_042_6eb4

    ld e, $c6
    add hl, sp
    xor a
    ld d, b
    ld a, [$0005]
    rst $38
    ld de, $0fee
    nop
    ld a, [$25ff]
    ld a, l
    rst $00
    jp hl


    rst $30
    ldh a, [$ef]
    ldh a, [$3f]
    ld h, b
    rra
    ret nz

    ld e, a
    ld h, b
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    add b
    ld a, h
    add b
    ei
    nop
    xor a
    nop
    ld a, [$ea00]
    nop

Jump_042_6f00:
    pop bc
    nop
    ret nz

    nop
    or b
    nop
    add h
    nop
    stop
    jr nz, jr_042_6f0c

jr_042_6f0c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and h
    nop
    or h
    nop
    ld l, b
    nop
    jr c, jr_042_6f22

jr_042_6f22:
    inc d
    nop
    ld c, a
    nop
    ld l, d
    nop
    add $00
    dec d
    nop
    stop
    dec d
    nop
    ld a, l
    nop
    cp a
    nop

jr_042_6f34:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    add hl, sp
    nop
    call Call_042_5d10
    add b
    ld l, e
    add h
    ret c

    inc h
    ld [de], a
    db $ec
    add hl, de
    and $18
    rst $20
    nop
    call z, Call_042_4e82
    inc bc
    dec bc
    add l
    add l
    ret z

    call z, $d1d1
    ret nz

    ret nz

    nop
    nop
    inc bc
    add e
    xor d
    xor e
    adc [hl]
    sbc [hl]
    jr z, jr_042_6f34

    ld hl, sp-$02
    call Call_000_1eff
    rst $38
    dec de
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $30
    rst $38
    rst $38

jr_042_6f87:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rra
    jp nz, Jump_042_6b01

    sub h
    add hl, bc
    or $00
    rst $38
    ld bc, $62fe
    sbc l
    db $e4
    dec de
    and b
    ld e, a
    inc bc
    cp h
    cp a
    ld b, b
    rst $38
    nop
    jr c, jr_042_6f87

    call c, $edff
    sbc a
    ei
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    xor e
    nop
    jp nz, Jump_042_4600

    nop
    ld h, $00
    ld b, $00
    adc l
    nop
    ld b, $00
    jr jr_042_6fe2

jr_042_6fe2:
    add b
    nop
    jr nz, jr_042_6fe6

jr_042_6fe6:
    ret nc

    nop
    stop
    nop
    nop
    ld bc, $0600
    nop
    nop
    nop
    jr nz, jr_042_6ff4

jr_042_6ff4:
    inc bc
    nop
    jr nz, jr_042_6ff8

jr_042_6ff8:
    jr nz, jr_042_6ffa

jr_042_6ffa:
    or c
    nop
    add h
    ld bc, $0403
    ld b, $01
    dec b
    ld [bc], a
    ld bc, $2702
    nop
    and a
    nop
    rst $38
    nop
    rst $18
    nop
    rra
    nop
    sbc l
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [$ed00]
    nop
    xor h
    nop
    ld h, d
    nop
    sbc c
    nop
    ld [de], a
    ld bc, $00af
    or $01
    sub $21
    db $eb
    db $10
    add b
    add b
    pop bc
    pop bc
    and b
    ldh [$75], a
    push af
    ld a, h
    db $fc
    ei
    rst $38
    rst $38
    rst $38
    dec bc
    ei
    daa
    daa
    add a
    and a
    db $ec
    xor $0d
    dec c
    ld a, l
    ld a, a
    ld c, d
    adc $3c
    ld a, h
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $76
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_042_706d:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    pop hl
    cp $11
    xor $ff
    nop
    rst $38
    nop
    cp a
    ret nz

    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    xor a
    xor a
    ld e, b
    nop
    ld bc, $5d00
    inc e
    ld h, e
    ld h, e
    nop
    rst $38
    add c
    ld a, [hl]
    jr z, jr_042_706d

    sbc b
    ld h, a
    nop
    jp hl


    nop
    rst $38
    inc b
    ld sp, hl
    add b
    ld b, [hl]
    cpl
    ld hl, sp+$1f
    ld hl, sp-$01
    sub b
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
    jp $f300


    nop
    reti


    nop
    dec e
    nop
    adc a
    nop
    ld l, a
    nop
    inc l
    nop
    add c
    nop
    ld d, a
    nop
    ld d, l
    nop
    ld e, $00
    inc b
    nop
    ld h, $00
    sub [hl]
    nop
    nop
    nop
    jr c, jr_042_70d0

jr_042_70d0:
    inc bc
    nop
    inc bc
    nop
    rrca
    nop
    dec e
    ld [bc], a
    add sp, $17
    jp z, $9c35

    ld h, c
    inc d
    pop hl
    ld c, a
    ldh a, [$1f]
    ldh [rIE], a
    nop
    ei
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    sbc l
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $30
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    xor $00
    db $dd
    nop
    db $ed
    nop
    call $a400
    nop
    xor c
    nop
    ret nc

    nop
    or e
    nop
    add hl, sp
    nop
    sbc e
    nop
    ld e, [hl]
    add c
    ld a, [bc]
    pop hl
    dec e
    ld [c], a
    swap h
    ld [hl], l
    adc d
    and h
    ld e, e
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ret nz

    rst $38
    jp nz, Jump_000_02ff

    cp $02
    ld a, [hl]
    inc bc
    ld a, a
    add e
    rst $38
    rrca
    rst $38
    sbc l
    rst $38
    rst $00
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld sp, hl
    cp $e1
    cp $1e
    pop hl
    ld h, b
    sbc a
    nop
    rst $38
    add b
    ld a, a
    rst $20
    jr @-$0b

    inc c
    ldh [$1f], a
    ld a, a
    rst $38
    rst $38
    ld sp, hl
    ldh [$e0], a
    adc e
    add b
    ld [hl], e
    nop
    inc c
    nop
    jp hl


    nop
    ld [hl+], a
    ld [hl+], a
    ld bc, $a5fe
    ld e, d
    nop
    ld hl, sp-$50
    ld c, l
    inc l
    db $d3
    ld a, h
    add e
    dec a
    jp nz, Jump_042_6f00

    rst $38
    nop
    rst $28
    nop
    rst $18
    nop
    rst $18
    nop
    rst $28
    nop
    ld l, a
    nop
    ld h, a
    nop
    rst $20
    nop
    scf
    nop
    rrca
    nop
    rst $18
    nop
    rst $38
    inc bc
    ld a, a
    nop
    ld a, a
    ld c, $7f
    ccf
    ld a, a
    ld e, $be
    ld a, l
    ld a, [$1ffd]
    ldh a, [$fd]
    ld [bc], a

jr_042_71c8:
    rst $38
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
    nop
    sbc a
    nop
    rst $38
    nop
    rst $28
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
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    add hl, bc
    ccf
    ccf
    ld l, $7f
    inc d
    ccf
    ld d, d
    ld a, a

jr_042_7200:
    jp nc, $c232

    ld [hl-], a
    ret nc

    jr nc, jr_042_71c8

    ld hl, $30d0
    ret nz

    jr nz, jr_042_720e

    push hl

jr_042_720e:
    ld b, e
    cp l
    ld h, $f9
    ld l, $f1
    rst $18
    ld h, c
    ld h, a
    ld sp, hl
    ld h, l
    ei
    ld l, l
    di
    ld h, c
    ld a, a
    ld hl, $717f
    ld a, a
    ld [hl], e
    ld a, a
    ld a, [hl]
    ld a, a
    rst $38
    rst $38
    ld d, a
    rst $38
    rst $18
    rst $38

jr_042_722c:
    rst $38

jr_042_722d:
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
    cp a
    ld a, a
    rst $28
    rra
    ld h, e
    sbc a
    ld h, c
    sbc a
    ld l, b
    sub a

jr_042_7248:
    ldh [$1f], a
    add b
    ld a, a
    ld a, [$f805]
    rlca
    rst $38
    nop
    rst $38
    nop
    ld a, [bc]
    ld [hl], l
    nop
    dec hl
    nop
    and b
    inc b
    reti


    ret nz

    ld e, $00
    ld [hl], a
    inc b
    db $e3
    add sp, $17
    ld e, $e1
    ld [bc], a
    cp l
    cpl
    ret nc

    cpl
    ret nc

    rst $10
    jr z, jr_042_72ae

    ret nz

    ld c, $c0
    rrca
    ld h, b
    rlca
    ld b, b
    rst $08
    ld h, b
    add a
    ld h, b
    and a
    jr nz, jr_042_7200

    ld h, b
    add e
    jr nz, @-$7e

    jr nz, @-$1e

    ld [hl+], a
    pop bc
    jr nz, jr_042_7248

    nop
    pop bc
    jr nz, jr_042_722c

    jr nc, jr_042_722d

    ld d, b
    ldh [$50], a
    ld h, b
    db $10
    add b
    jr nc, jr_042_72e5

    adc b
    and b
    ret nc

    ret nc

    add sp, -$40
    ld l, h
    ldh a, [$7c]
    ld l, b
    call z, $a7d8
    ld a, b
    add a
    db $fc
    inc bc
    ret c

    and a
    adc $f9
    db $fc
    rst $38
    cp $fd

jr_042_72ae:
    db $fc
    rst $38
    inc bc
    nop
    inc bc
    nop
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0003
    inc hl
    ld hl, $10ec
    call c, $da21
    ld [hl+], a
    db $f4
    inc b
    ldh a, [rP1]
    ldh [$08], a
    db $fc
    ld bc, $01fc
    cp $01
    cp $01
    call c, $fe01
    ld bc, $00fb
    pop af
    nop
    ld a, [c]
    ld bc, $02fd
    nop
    nop
    dec b
    dec b
    ccf

jr_042_72e5:
    ccf
    rst $28
    rst $38
    rst $00
    rst $38
    ld b, a
    rst $38
    inc bc
    ei
    ld bc, $07f9
    nop
    ld b, $01
    ld bc, $0307
    inc hl
    ld h, e
    ld h, e
    nop
    jr nz, @-$3e

    ret nz

    ldh [$e0], a
    jr nc, jr_042_7332

    or c
    cp c
    or h
    or h
    jr @-$66

    ret c

    ret c

    cp c
    cp e
    sub a
    sbc a
    rra
    rra
    ld a, $7e
    cp $fe
    ld h, b
    ldh a, [$ee]
    rst $28
    rst $28
    rst $38
    cp $ff
    cp $ff
    ret z

    rst $38
    or $ff
    db $fc
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    add b
    rst $38
    add b
    rst $38
    or h
    rst $38

jr_042_7332:
    ld hl, sp-$01
    db $fd
    rst $38
    or $ff
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
    ld a, a
    rst $38
    add hl, bc
    rst $30
    dec c
    ldh a, [$0c]
    ld hl, sp+$3c
    db $fc
    ld hl, sp-$01
    pop hl
    rst $38
    sub b
    add b
    ld c, b
    nop
    and b
    nop
    push bc
    inc b
    ld e, d
    nop
    call c, Call_042_7c00
    di
    ld e, c
    rst $30
    daa
    ld hl, sp+$17
    ld hl, sp-$41
    ret nz

    rst $18
    ldh [$66], a
    ld hl, sp-$05
    add h
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
    rst $38
    nop
    rst $38
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
    ccf
    ret nz

    cp a
    ret nz

    ccf
    ret nz

    ld a, a
    ret nz

    rst $38
    ret nz

    dec sp
    ret nz

    cp a
    ret nz

    ld a, a
    ret nz

    cp a
    ret nz

    ld a, a
    ret nz

    scf
    ldh [rNR41], a
    ldh [$80], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rNR10], a
    ldh a, [rP1]
    ldh a, [rNR10]
    ldh a, [$90]
    ldh a, [$80]
    ldh a, [rLCDC]
    ldh a, [$80]
    ldh a, [$88]
    ld hl, sp-$80
    add sp, -$40
    ret c

    ldh [$f8], a
    ret nz

    ret nc

    dec b
    ld hl, sp+$17
    add sp, $15
    add sp, $05
    ld hl, sp+$01
    db $fc
    inc bc
    db $fc
    ld b, e
    cp h
    ld b, e
    cp h
    ret nz

    dec sp
    ld bc, $84fa
    ld e, a
    jr nz, @-$03

    add b
    ld a, l
    ld b, d
    sbc c
    and b
    ld a, l
    and b
    ld l, a
    ld b, b
    call $5f50
    ld [hl], b
    rst $38
    ldh [$e7], a
    nop
    rrca
    nop
    rlca
    nop
    rrca
    nop
    dec bc
    inc b
    rlca
    add h
    xor a
    ld a, b
    ld a, a
    ld a, [hl]
    ld a, a
    cp $ff
    rst $38
    rst $38
    rst $28
    rst $38
    cp e
    rst $38
    rrca
    rra
    daa
    ld a, a
    ld c, a
    rst $38
    ld c, a
    rst $18
    ccf
    rst $38

jr_042_741a:
    dec c
    rst $38
    rrca
    rst $38
    ld c, a
    rst $38
    ld d, $ff
    daa
    rst $38
    ld hl, $00ff
    rst $38
    ret nz

    rst $38
    pop hl
    rst $38
    ldh [rIE], a
    jp hl


    rst $38
    ld a, b
    rst $38
    ld l, a
    rst $38
    ld a, l
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
    sbc a
    ld a, a
    rrca
    rlca
    inc de
    rrca
    inc bc
    rst $38
    rlca
    rst $38
    dec b
    nop
    db $e4
    ldh [$a0], a
    and b
    ld e, a
    ld e, b
    ld d, a
    db $10
    rst $20
    nop
    sbc c
    ld [hl], c
    ld h, h
    rst $38

jr_042_7464:
    and [hl]
    rst $38
    ld hl, sp+$07
    xor [hl]
    ld bc, $00f9
    ei
    nop
    ld [c], a
    rra
    rst $28
    db $10
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $28
    db $10
    rst $20
    jr jr_042_7464

    jr @+$69

    sbc b
    rst $20
    jr jr_042_74fa

    adc b
    ld [hl], a
    adc b
    rst $30
    ld [$20ce], sp
    and l
    ld d, b
    rst $08
    jr nz, jr_042_741a

    ld [hl], b
    ei
    nop
    rst $30
    ld [$00ff], sp
    cp e
    nop
    ei
    nop
    rst $18
    nop
    rst $28
    nop
    rst $10
    nop
    db $fd
    nop
    pop af
    nop
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    nop
    ei
    nop
    rst $38
    nop
    ei
    nop
    rst $38
    nop
    ei
    nop
    cp c
    nop
    di
    nop
    push af
    nop
    or l
    nop
    db $d3
    nop
    jp nc, $7500

    nop
    ld a, [$3600]
    nop
    xor e

Call_042_74c7:
    inc b
    rst $10
    nop
    inc a
    inc bc
    call z, $7b02
    nop
    ld b, a
    nop
    xor a
    nop
    sbc a
    nop
    ld sp, hl
    nop
    cp l
    nop
    db $dd
    nop
    ld a, h
    ld bc, $01f2
    di
    nop
    sub e
    ld b, b
    inc de
    ldh [$af], a
    ld d, b
    ld b, [hl]
    cp c
    ld d, d
    xor l
    ld c, l
    or d
    ld d, e
    xor h
    or [hl]
    ld c, b
    ld c, e
    or h
    ld h, e
    sbc h
    inc bc
    db $fc
    daa
    ret c

jr_042_74fa:
    ld bc, $01fe
    cp $01
    cp $00
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
    ldh [rIE], a
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a

jr_042_751e:
    ldh [rIE], a
    ldh a, [rIE]
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01

jr_042_7528:
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
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    db $fd
    db $fd
    jr nz, jr_042_7546

jr_042_7546:
    ld b, c
    ld bc, $0163
    add hl, sp
    nop
    db $fd
    nop
    rst $28
    nop
    nop
    ldh [$30], a
    ld c, b
    nop
    rst $38
    nop
    ret z

    nop
    ld a, h
    nop
    ld a, b
    nop
    inc l
    add b
    ld h, b
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    rst $20
    rra
    rst $30
    rrca
    rst $30
    rrca
    rst $28
    rra
    or $0e
    rst $28
    rra
    cp $0f
    rst $28
    rra
    ld a, [c]
    rrca
    or h
    dec bc
    sbc l
    ld h, d
    ld e, a
    jr nz, jr_042_751e

    nop
    xor a
    nop
    xor a
    nop
    or a
    nop
    ld [hl], e
    nop
    cp d
    ld b, b
    ld a, [hl]
    nop
    ld e, [hl]
    nop

Call_042_758e:
    db $dd
    nop
    db $dd
    jr nz, jr_042_7528

    jr nz, @-$4b

    nop
    or d
    nop
    add sp, $00
    ld [$f600], a
    nop
    or c
    nop
    call c, $d620
    nop
    cp h
    nop
    pop de
    inc c
    jp nc, $850c

    ld [$006d], sp
    adc [hl]
    nop
    cp c
    inc b
    ld h, l
    nop
    push de
    ld a, [bc]
    or l
    ld c, d
    push hl
    ld [bc], a
    ret z

    rlca
    cp b
    rlca
    ld e, b
    rlca
    adc c
    ld b, $f1
    ld b, $89
    ld d, $a7
    jr jr_042_7610

    jr jr_042_7619

    ld de, $0bc4
    or e
    ld [$00dd], sp
    ld l, e
    add h
    sbc e
    inc b
    ld l, d
    dec b
    ld a, [hl-]
    dec b
    dec a
    ld [bc], a
    dec de
    and h
    ld l, d
    sub h
    rl h
    ld h, e
    sbc h
    or l
    ld c, d
    push de
    ld a, [hl+]
    sub b
    ld l, a
    ld l, e
    sub h
    ld l, e
    sub h
    or c
    ld c, [hl]
    and h
    ld e, [hl]
    ld [de], a
    db $ed
    ld [de], a
    db $ed
    ld b, c
    cp [hl]
    ld bc, $01fe
    cp $00
    rst $38
    inc b
    ei
    ld bc, $02fe
    db $fd
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

jr_042_7610:
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop

jr_042_7619:
    rst $38
    ld [$00ff], sp
    rst $38
    ld [$80ff], sp
    rst $38
    db $10
    rst $38
    add b
    rst $38
    add b
    rst $38
    sub b
    rst $38
    ret


    cpl
    ld hl, sp+$01
    ld hl, sp+$00
    rst $38
    nop
    ld [c], a
    dec e
    ld d, a
    db $fc
    sbc a
    ld a, a
    pop af
    rrca
    cp $00
    xor $10
    pop af
    nop
    ei
    rst $30
    di
    rst $30
    ei
    rst $38
    ld a, e
    ld a, a
    dec sp
    ccf
    ld sp, hl
    dec sp
    db $dd
    dec sp
    rst $30
    add hl, de
    xor $11
    or $19
    db $d3
    inc a
    db $fd
    ld a, $bd
    ld a, [hl]
    ld a, l
    cp $7f
    cp $79
    cp $79
    cp $79
    cp $73
    cp $32
    rst $38
    ld a, [hl-]
    rst $30
    ld l, [hl]
    di
    ld [hl], d
    db $fd
    ld a, e
    db $fc
    ld l, a
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    ld a, $fd
    ld a, a
    db $fc
    ld a, [hl]
    db $fd
    ld a, [hl]
    db $fd
    db $fd
    ld a, a
    db $fd
    ld a, a
    dec a
    ld a, a
    ld a, l
    ld a, a
    dec a
    ld a, a
    cp l
    ld a, a
    cp [hl]
    ld a, a
    ld a, a
    ccf
    ld e, a
    ccf
    sbc a
    ccf
    rst $18
    ccf
    rra
    rst $38
    rla
    rst $38
    inc bc
    rst $38
    db $eb
    rla
    ld a, e
    rlca
    ld c, c
    rlca
    ld l, a
    inc bc
    dec h
    add e
    dec b
    add e
    adc e
    inc bc
    sbc a
    inc bc
    ld b, e
    adc a
    db $eb
    rlca
    ret z

    rlca
    ld l, b
    rlca
    ld l, b
    rlca
    jr z, jr_042_770f

    ld e, h
    and e
    ld e, h
    and e
    adc h
    ld [hl], e
    inc e
    and e
    dec l
    db $d3
    inc hl
    rst $18
    adc c
    ld [hl], a
    pop hl
    rra
    pop af
    rrca
    ret


    scf
    ld h, b
    sbc a
    adc b
    ld [hl], a
    rst $08
    rst $08
    ld a, [hl]
    cp $ff
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, l
    ld a, l
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld c, b
    or a
    ld b, b
    cp a
    ld bc, $00fe
    rst $38
    jp nz, Jump_000_063d

    ld sp, hl
    inc bc
    db $fc
    nop
    rst $38
    inc bc
    db $fc
    ld bc, $01fe
    cp $00
    rst $38
    ld bc, $20fe
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
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, b

jr_042_770f:
    rst $20
    adc c
    rst $30
    ld [hl], c
    xor [hl]
    rst $38
    db $10
    rst $20
    ld hl, sp+$3c
    ret nz

    adc a
    nop
    ld a, a
    nop
    ld hl, sp+$07
    sbc h
    and b
    rst $28
    ld a, [c]
    ld [$eae6], a

jr_042_7727:
    ld a, [c]
    rst $38
    di
    db $fd
    pop af
    or $f0
    ld a, [$fcf8]
    ld a, [$f074]
    ld [hl], h
    ld hl, sp-$12
    ld l, b
    xor [hl]
    ld a, b
    ld h, a
    ld hl, sp+$73
    ld a, b
    ld [hl], a
    ld hl, sp+$73
    ld hl, sp-$0a
    ld [hl], d
    ld sp, hl
    ld [hl], b
    ret nc

    rst $38
    cp h
    db $db
    jr c, jr_042_7727

    xor $49
    xor a
    ld c, b
    rst $28
    ld [$4cbb], sp
    ret c

    cpl
    call z, Call_042_4e3f
    cp a
    ld c, [hl]
    cp a
    cp $9f
    jp c, $be9f

    db $db
    cp d
    rst $18
    cp $df
    rst $08
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    rst $00
    rst $38
    xor e
    rst $10
    db $eb
    rst $10
    rst $00
    ei
    reti


    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    cp $ff
    sbc [hl]
    rst $38
    cp $bf
    db $fc
    sbc l
    ld hl, sp-$23
    jp z, $f8fd

    rst $38
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ld [c], a
    db $fd
    db $ed
    cp $fe
    rst $38
    rst $30
    cp $fe
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    ld a, a
    rst $38
    ccf
    ld a, a
    ld e, a
    rst $38
    ld a, a
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    ld b, a
    rst $38
    ld a, e
    rst $38
    ld a, l
    rst $38
    ld a, a
    rst $38
    ld a, l
    rst $38
    rst $38
    ld a, a
    ccf
    rst $38
    ld a, a
    cp a
    ld a, l
    cp a
    ld a, a
    cp a
    rra
    rst $38
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    inc bc
    rst $38
    jp Jump_042_533f


    xor a
    inc hl
    rst $18
    pop bc
    ccf
    add d
    ld a, l
    ld b, b
    cp a
    ld [$08f7], sp
    rst $30
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
    ld bc, $03ff
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
    db $d3
    cpl
    ld a, [c]
    rrca
    ld a, d
    dec b
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    sub $f9
    nop
    ld bc, $0302
    inc b
    dec b
    dec b
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
    jr jr_042_7855

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_042_7865

    ld [hl+], a
    inc hl
    dec b
    inc h
    dec h
    ld h, $27
    jr z, jr_042_7876

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_042_785a

jr_042_7855:
    dec b
    dec b
    dec b
    dec b
    dec b

jr_042_785a:
    dec b
    ld sp, $0505
    ld [hl-], a
    dec b
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37

jr_042_7865:
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    jr c, jr_042_7872

    dec b
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a

jr_042_7872:
    dec a
    ld a, $3f
    ld b, b

jr_042_7876:
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
    ld h, c
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
    ld [bc], a
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
    xor c
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
    xor c
    xor c
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $a9
    xor c
    xor c
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
    dec b
    nop
    ld bc, $6102
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec b
    dec c
    ld c, $0f
    ld h, c
    db $10
    ld h, c
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr @+$07

    dec b
    add hl, de
    ld a, [de]
    dec de
    ld bc, $0001
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
    ld bc, $0701
    rlca
    rlca
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rlca
    inc b
    nop
    inc b
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0106
    ld bc, $0101
    inc b
    nop
    inc b
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0107
    ld bc, $0101
    nop
    nop
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0701
    rlca
    ld bc, $0101
    nop
    nop
    inc b
    ld bc, $0101
    ld bc, $0101
    inc bc
    ld b, $06
    ld bc, $0100
    ld bc, $0000
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0603
    ld b, $01
    ld bc, $0001
    nop
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0601
    ld b, $06
    ld bc, $0006
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0603
    ld b, $00
    ld b, $06
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    inc bc
    inc bc
    nop
    ld b, $06
    ld b, $07
    inc b
    inc b
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0701
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0701
    nop
    inc b
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld b, $06
    ld bc, $0101
    rrca
    rrca
    add hl, bc
    nop
    add hl, bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    dec bc
    dec bc
    ld c, $09
    ld bc, $0f09
    rrca
    nop
    add hl, bc
    nop
    add hl, bc
    dec bc
    dec bc
    ld a, [bc]
    dec bc
    ld [$090e], sp
    ld bc, $0901
    rrca
    rrca
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    db $f4
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
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
    rst $30
    rst $38
    di
    rst $38
    di
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    pop hl
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$18ff], sp
    rst $38
    jr @+$01

    jr @+$01

    jr nc, @+$01

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
    inc c
    rst $38
    ld c, $ff
    ld c, $ff
    ld c, $ff
    ld c, $ff
    ld e, $ff
    inc e
    rst $38
    inc e
    rst $38
    ld [$08ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld b, b
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    jp $c3ff


    rst $38
    rst $00
    rst $38
    rlca
    rst $38
    ld c, $ff
    adc h
    rst $38
    inc e
    rst $38
    cp b
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    or b
    rst $38
    or b
    rst $38
    or c
    rst $38
    ld [hl], c
    rst $38
    pop af
    rst $38
    ld [hl], b
    rst $38
    db $e4
    rst $38
    ld h, h
    rst $38
    ld b, $ff
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
    dec b
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
    rrca
    rst $38
    ld e, $ff
    ld e, $ff
    inc l
    rst $38
    dec h
    rst $38
    dec h
    rst $38
    add l
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    rst $00
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    db $e4
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
    jr nz, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    ld sp, $30ff
    rst $38
    ld sp, $21ff
    rst $38
    ld bc, $02ff
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    jr nz, @+$01

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
    nop
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld d, b
    rst $38
    ld b, h
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

Call_042_7c00:
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
    ld bc, $01ff
    rst $38
    nop
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    ld [de], a
    rst $38
    ld [hl+], a
    rst $38
    nop
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
    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    inc e
    rst $38
    jr @+$01

    inc d
    rst $38
    db $10
    rst $38
    jr nc, @+$01

    jr nz, @+$01

    ld [hl+], a
    rst $38
    ld h, h
    rst $38
    ld l, h
    rst $38
    ld c, h
    rst $38
    ld l, h
    rst $38
    call c, $ccff
    rst $38
    db $dd
    rst $38
    push de
    rst $38
    push de
    rst $38
    rst $08
    rst $38
    adc $ff
    adc $ff
    and $ff
    adc $ff
    xor $ff
    xor $ff
    call z, $dcff
    rst $38
    call c, $bcff
    rst $38
    cp h
    rst $38
    cp b
    rst $38
    ld hl, sp-$01
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret z

    rst $38
    ld c, b
    rst $38
    ld c, b
    rst $38
    ret z

    rst $38
    ret c

    rst $38
    call nz, $d4ff
    rst $38
    call nc, $d6ff
    rst $38
    sub $ff
    call nc, Call_042_44ff
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld b, $ff
    ld h, $ff
    ld b, $ff
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld c, c
    rst $38
    ld [bc], a
    rst $38
    pop bc
    rst $38
    ld b, d
    rst $38
    add d
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
    ld de, $12ff
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld [bc], a
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
    ld b, b
    rst $38
    nop
    rst $38
    add h
    rst $38
    inc b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
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
    db $10
    rst $38
    jr nz, @+$01

    jr z, @+$01

    jr z, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr z, @+$01

    jr nc, @+$01

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
    jr z, @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld d, b
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
    add b
    rst $38
    dec e
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    ld [$10ff], sp
    rst $38
    add hl, bc
    rst $38
    inc c
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    ld bc, $21ff
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, d
    rst $38
    add b
    rst $38
    add d
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
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
    db $10
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
    ret nz

    rst $38
    ret c

    rst $38
    ret nc

    rst $38
    ret z

    rst $38
    pop bc
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    and b
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    inc l
    di
    inc [hl]
    db $eb
    inc [hl]
    db $eb
    inc b
    ei
    ld h, h
    cp e
    inc l
    di
    ld c, a
    or b
    ld d, a
    xor b
    inc de
    db $ec
    ld b, l
    cp d
    ld c, e
    or h
    ld bc, $05fe
    ld a, [$fc03]
    ld de, $07ee
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld bc, $03fe
    db $fc
    inc de
    db $ec
    inc de
    db $ec
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    ld b, $ff
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld bc, $fdff
    nop
    db $fd
    nop
    db $fc
    ld bc, $01fc
    db $fc
    ld bc, $01fc
    cp l
    ld b, b
    cp l
    ld b, b
    cp [hl]
    ld b, c
    ccf
    ret nz

    ld a, h
    add c
    inc a
    pop bc
    ld a, [hl]
    add c
    ld a, $c1
    ld a, $c1
    ld a, [hl]
    add c
    db $fc
    ld bc, $01fc
    cp $01
    ld a, [hl]
    add c
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    ld a, [hl]
    add b
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    inc a
    jp $c13e


    ld a, $c1
    ld a, $c1
    ccf
    ret nz

    ccf
    ret nz

    ld a, $c1
    ld a, $c1
    inc a
    jp $c33c


    inc a
    jp $c33c


    inc a
    jp $e31e


    inc a
    jp $e31c


    ld e, h
    and e
    ld a, h
    add e
    ld a, h
    add e
    inc a
    jp $c33c


    inc [hl]
    bit 7, h
    add e
    inc a
    jp $c23d


    ld a, c
    add [hl]
    inc l
    db $d3
    ld a, [de]
    push hl
    ld a, [de]
    push hl
    ld [de], a
    db $ed
    ld h, $d9
    dec d

jr_042_7ee3:
    ld [$fb04], a
    nop
    rst $38
    inc c
    di
    ld a, [bc]
    push af
    rlca
    ld hl, sp+$02
    db $fd
    ld b, $f9
    dec b
    ei
    ld b, $f9
    ld b, $fd
    add hl, bc
    rst $38

jr_042_7efa:
    rrca
    pop af
    dec c
    di
    rrca
    ld sp, hl
    rla
    db $eb
    ld b, $f9
    dec bc
    db $fd
    dec b
    rst $38
    dec c
    rst $38
    dec b
    ei
    ld c, a
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    dec b
    rst $38
    ld de, $11ff
    rst $38
    inc de
    rst $38
    inc e
    db $fc
    dec d
    db $f4
    inc de
    ldh a, [rNR22]
    ldh a, [rP1]
    ldh a, [rNR11]
    pop af
    rla
    di
    dec de
    di
    dec de
    di
    dec h
    db $e4
    rla
    ldh [rIF], a
    add sp, $2f
    ldh [$31], a
    ldh [$09], a
    ret nz

    ld de, $04e1
    call nz, $c041

jr_042_7f40:
    jp nz, $c039

    inc a
    add b
    ld [hl], h
    add b
    ld a, h
    or b
    ld c, h
    and b
    ld e, b
    nop
    ldh a, [rP1]
    ldh [$9f], a
    nop

jr_042_7f52:
    add a
    jr jr_042_7ee3

    ld de, $128d
    add a
    jr jr_042_7efa

    nop
    sbc a
    nop
    sbc a
    nop
    adc a
    db $10
    rra
    nop
    xor a
    db $10
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

jr_042_7f71:
    nop
    xor a
    db $10
    cp a
    nop
    cp a
    nop
    ccf
    nop

jr_042_7f7a:
    cp a
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ld a, $00
    ld l, $10
    inc l
    db $10
    ld d, $38

jr_042_7f8c:
    rla
    jr c, @+$05

    inc a
    sub a
    jr z, jr_042_7f71

    add hl, hl
    add c
    ccf
    pop de
    ccf
    ret z

    ccf
    jp c, $d93d

    ld a, $c0
    ccf
    adc $31
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_042_7f7a

    jr nc, jr_042_7f8c

    jr nz, @+$01

    nop
    rst $18
    jr nz, jr_042_7f52

    ld h, b
    db $db
    inc h
    rst $08
    jr nc, jr_042_7f40

    ld a, b
    add a
    ld a, b
    adc a
    ld [hl], b
    sub a
    ld l, b
    sbc a
    ld h, b
    adc a
    ld [hl], b
    sub a
    ld l, b
    rlca
    ld hl, sp+$07
    ld hl, sp+$02
    rst $38
    add d
    ld a, a
    inc b
    ei
    ld [$a8f7], sp
    ld [hl], a
    ld [hl], b
    rst $38
    ld a, c
    rst $38
    add hl, sp
    rst $08
    ld a, [hl]
    rst $00
    xor a
    di
    ld a, [hl]
    rst $20
    ei
    rst $38
    ld a, [hl]
    rst $38
    rst $28
    rst $38
    rst $10
    rst $38
    rst $30
    ei
    rst $28
    rst $38
    rst $00
    rst $38
    jp $b4ff


    rst $38
    sbc h
    rst $38
    cp [hl]
    rst $38
    jp c, $fbff

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
