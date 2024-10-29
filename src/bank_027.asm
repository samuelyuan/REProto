SECTION "ROM Bank $027", ROMX[$4000], BANK[$27]

    pop af
    rst $38
    ldh [rIE], a
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
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld bc, $01fe
    cp $80
    rst $38
    add b
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
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    ld a, [$fbff]
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    and b
    rst $38
    jr nz, @+$01

    ld h, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    inc hl
    db $fc
    daa
    ld hl, sp+$2b
    db $f4
    ld l, a
    ldh a, [$2e]
    ldh a, [$2d]
    ld a, [c]
    db $fc
    rst $38
    ld a, a
    add b
    rlca
    ld hl, sp+$03
    db $fc
    add sp, -$01
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
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    pop af
    ld c, $f1
    ld c, $f9
    ld b, $fb
    inc b
    ei
    inc b
    ei
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
    ld a, a
    add b
    ccf
    ret nz

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
    add b
    rst $38
    add b
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, d
    rst $38
    ld h, a
    rst $38
    ld h, d
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nc, @+$01

    jr nz, @+$01

    jr nc, @+$01

    db $10
    rst $38
    sub c
    ld a, [hl]
    sub c
    ld a, [hl]
    ld d, e
    cp h
    ld d, l
    cp b
    ld [hl+], a
    call c, $dc23
    ld h, c
    sbc [hl]
    add hl, hl
    sbc [hl]
    inc bc
    db $fc
    rst $38
    nop
    ld hl, sp+$00
    rst $38
    nop
    rra
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    pop af
    ld c, $f1
    ld c, $f1
    ld c, $f9
    ld b, $f9
    ld b, $f9
    ld b, $fb
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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

    rrca
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
    add b
    rst $38
    rst $38
    ldh [$fe], a
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh a, [rIE]
    ld [bc], a
    db $fd
    ld a, [hl+]
    rst $38
    db $ec
    rst $38
    cp $ff
    db $f4
    rst $38
    db $fd
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ccf

jr_027_41b5:
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    ld [$29ff], sp
    rst $18
    ld [$78df], sp
    adc a
    add sp, $0f
    ret nc

    rrca
    ldh [rIF], a
    inc a
    ld b, a
    db $ec
    rlca
    ld l, b
    rlca
    ld hl, sp+$00
    rrca
    ldh a, [rP1]
    nop
    ld hl, sp+$00
    rst $38
    nop
    inc b
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    jr nc, jr_027_41b5

    ld a, b
    add a
    ld a, b
    add a
    ld a, h
    add e
    db $fc
    inc bc
    db $fd
    ld [bc], a
    nop
    rst $38
    dec b
    ld a, [$f20d]
    rrca
    ldh a, [$1f]
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

    rra
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
    rst $38
    nop
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
    rst $38
    nop
    nop
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    db $fc
    inc de
    db $ec
    add [hl]
    ld sp, hl
    ld b, d
    db $fd
    inc bc
    db $fc
    add e
    db $fc
    add d
    db $fd
    dec b
    ld a, [$ff12]
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
    ei
    rst $38
    rst $28
    rst $38
    or l
    rst $38
    sbc c
    rst $38
    sub c
    rst $38
    sub b
    rst $38
    add h
    rst $38
    ret z

    rst $38
    ret z

    rst $38
    sub b
    rst $28
    inc b
    rst $38
    dec d
    xor $08
    or $0a
    rst $30
    ld a, [bc]
    rst $30
    dec e
    db $e3
    inc a
    inc bc
    cp [hl]
    ld b, c
    ccf
    nop
    nop
    nop
    rst $38
    nop
    ld a, a
    add b
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
    inc a
    jp $8079


    ret nz

    nop
    add b
    nop
    nop
    nop
    rst $38
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
    add b
    nop
    add c
    nop
    add c
    nop
    add b
    nop
    add b
    nop
    ret nz

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
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cpl
    ldh a, [$c0]
    nop
    ld [hl], d
    nop
    rst $28
    nop
    ld a, [hl-]
    ret nz

    ret c

    nop
    ld a, a
    add b
    rst $38
    nop
    ld l, l
    sub d
    ld [bc], a
    db $fd
    nop
    rst $38
    rst $38
    rst $38
    pop af
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
    cp $ff
    or $ff
    or $ff
    rst $38
    rst $38
    ld a, [$b8ff]
    rst $38
    sbc b
    rst $38
    sub c
    rst $38
    adc b
    rst $38
    ret z

    rst $38
    ld b, h
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    add l
    ld a, e
    ld sp, $05c7
    rst $38
    cp a
    ret nz

    ld a, [hl]
    add b
    ccf
    ret nz

    and c
    ld e, [hl]
    nop
    nop
    add sp, $00
    rst $38
    nop
    jp $c7fc


    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $30
    nop
    db $e3
    nop
    pop hl
    nop
    ld h, c
    nop
    cp [hl]
    ld b, c
    cp a
    ld b, b
    rra
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    ret nz

    nop
    jr nz, jr_027_43a2

jr_027_43a2:
    jr nz, jr_027_43a4

jr_027_43a4:
    nop
    ret nz

    add b
    ld b, b
    pop bc
    nop
    ld bc, $0300
    nop
    rlca
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
    di
    rrca
    jp Jump_000_033f


    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    db $fd
    inc bc
    inc b
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
    jr nc, @+$01

    jr @+$09

    add h
    rra
    inc e
    rra
    db $fc
    rra
    call z, $b41f
    rrca
    ld hl, sp+$07
    ld hl, sp+$07
    ld [$50f7], sp
    xor a
    nop
    rst $38
    ldh a, [rIE]
    ld d, b
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    pop af
    rst $38
    ld sp, hl

jr_027_4439:
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld de, $11ff
    rst $38
    jr z, jr_027_4439

    ld [$54ff], sp
    xor a
    inc b
    rst $38
    ld a, [bc]
    rst $30
    ld b, [hl]
    cp e
    dec b
    ei
    rlca
    ld sp, hl
    add d
    ld a, l
    ld b, a
    cp b
    ld b, c
    cp [hl]
    jp hl


    sub [hl]
    rlca
    ld a, a
    add [hl]
    ld a, a
    add h
    ld a, a
    add h
    ld a, a
    inc b
    ld a, a
    add l

Call_027_447b:
    ld a, a
    add l
    ld a, a
    adc c
    ld a, a
    dec b
    rst $38
    inc b
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    inc c
    rst $38
    add hl, bc
    rst $38
    dec b
    rst $38
    add hl, bc
    rst $38
    dec bc
    rst $38
    add hl, bc
    rst $38
    dec c
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    ld [$08ff], sp
    rst $38
    dec bc
    rst $38
    ld a, [bc]
    rst $38
    ld bc, $03ff
    rst $38
    rla
    rst $38
    rlca
    rst $38
    ld [de], a
    rst $38
    rla
    rst $38
    rla
    rst $38
    rla
    rst $38
    inc de
    rst $38
    rla
    rst $38
    rla
    rst $38
    inc d
    rst $38
    ld d, $ff
    rla
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    dec a
    rst $38
    dec a
    rst $38
    ccf
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    or $ff
    db $76
    rst $38
    or $ff
    rst $28
    rst $38
    ld b, [hl]
    rst $38
    ld h, d
    rst $38
    ld e, h
    rst $38
    ld c, [hl]
    rst $38
    ld l, [hl]
    rst $38
    ld e, [hl]
    rst $38
    adc $ff
    adc $ff
    ld e, [hl]
    rst $38
    ld e, [hl]
    rst $38
    ld e, h
    rst $38
    call c, $e4ff
    rst $38
    ld c, b
    rst $38
    add b
    rst $38
    sbc b
    rst $38
    sbc b
    rst $38
    call c, $9cff
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    adc h
    rst $38
    cp h
    rst $38
    or b
    rst $38
    sub c
    rst $38
    db $dd
    rst $38
    db $fc
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    and b
    rst $38
    jp hl


    rst $38
    cp c

jr_027_453b:
    rst $38
    xor c
    rst $38
    ret z

    rst $38
    db $f4
    rst $38
    ldh [rIE], a
    cp e
    cp $f9
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $dd
    rst $38
    ld a, [hl]
    rst $38
    ld a, h
    rst $38
    ld e, $ff
    ccf
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    inc b
    rst $38
    ret nz

    cp a
    jr nc, jr_027_453b

    ld a, b
    rst $00
    sbc b
    ld h, a
    rra
    rst $38
    ld a, a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    db $db
    rst $38
    ei
    rst $38
    di
    rst $38
    rst $30
    ei
    rst $30
    ei
    or l
    ei
    or e
    rst $38
    inc sp
    rst $38
    ld hl, $a1ff
    rst $38
    and c
    rst $38
    ld h, e
    rst $38
    rst $30
    rst $38
    db $e3
    rst $38
    db $eb
    rst $30
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $00
    rst $38
    add $ff
    ld [hl+], a
    rst $38
    dec hl
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    adc $ff
    sbc $ff
    adc $ff
    adc [hl]
    rst $38
    ld d, h
    rst $38
    ld d, d
    rst $38
    sbc $ff
    sbc $ff
    sbc $ff
    sbc [hl]
    rst $38
    sbc [hl]
    rst $38
    ld c, h
    rst $38
    ret z

    rst $38
    call nc, $dcff
    rst $38
    cp h
    rst $38
    cp h
    rst $38
    db $fc
    rst $38
    cp l
    rst $38
    xor l
    rst $38
    pop hl
    rst $38
    and c
    rst $38
    and c
    rst $38
    ldh a, [rIE]
    or c
    rst $38
    cp b
    rst $38
    cp c
    rst $38
    cp c
    rst $38

jr_027_45e6:
    add hl, sp
    rst $38
    jr @+$01

    jr c, @+$01

    ld sp, $11ff
    rst $38
    ld de, $11ff
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    jr nz, @+$01

    jr z, @-$07

    nop
    rst $38
    ld bc, $01ff
    rst $38
    dec c
    di
    jr nz, @+$01

    ld b, b
    rst $38
    ld h, c
    rst $38
    ld hl, $23ff
    rst $38
    inc hl
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld b, e
    cp a
    ld b, e
    cp a
    ld b, e
    cp a
    jp $83bf


    rst $38
    call nz, $c6fb
    ei
    rst $00
    ld a, [$fecb]
    adc $ff
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $28
    rst $18
    rrca
    rst $38
    rrca
    rst $38
    and a
    rst $18
    add a
    rst $38
    add e
    ld a, a
    adc e
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $08
    jr nc, jr_027_45e6

    ld h, b
    sub a
    add sp, -$61
    ldh [rNR13], a
    db $ec
    nop
    rst $38
    rrca
    ldh a, [$03]
    ldh a, [$09]
    ld hl, sp+$27
    db $fc
    inc h
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    inc c
    rst $38
    dec b
    cp $04
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    ld l, a
    rst $38
    rst $18
    rst $28
    rst $18
    rst $28
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
    rst $30
    rst $08
    adc a
    rst $38
    adc a
    rst $38
    xor a
    rst $18
    ld b, a
    cp a
    rrca
    rst $38
    rrca
    rst $38
    ccf
    rst $18
    sbc a
    rst $38
    rst $38
    sbc a
    ld e, a
    cp a
    ld e, a
    cp a
    sbc a
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, $ff
    ld e, $ff
    inc c
    rst $38
    ld bc, $63ff
    rst $38
    daa
    rst $38
    cpl
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, h
    rst $38
    jr @+$01

    ld b, d
    rst $38
    ld h, d
    rst $38
    ld h, [hl]
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    cp l
    rst $38
    sbc b
    rst $38
    add b
    rst $38
    call nz, $ccff
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    ld a, c
    rst $38
    ld sp, $29ff
    rst $38
    jr z, @+$01

    ld l, b
    rst $38
    ld h, b
    rst $38
    pop af
    rst $38
    ld h, b
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    ld a, [c]
    rst $38
    ld [c], a
    rst $38
    pop af
    rst $38
    ld sp, hl
    rst $30
    pop af
    rst $38
    jp $c3ff


    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    call nc, $90eb
    rst $28
    db $10

jr_027_4709:
    rst $28
    sub e
    rst $28
    add c
    rst $38
    sub c
    rst $28
    add b
    rst $38
    sub b
    rst $28
    reti


    and $e2
    rst $18
    or [hl]
    rst $08
    add [hl]
    rst $38
    ld h, $df
    daa
    rst $18
    daa
    rst $18
    daa
    rst $18
    ld b, $ff
    ld h, h
    sbc a
    jr nz, jr_027_4709

    ld h, e
    sbc l
    ld l, b
    sub a
    call nz, $eebb
    sub c
    ld c, [hl]
    or c
    ld d, l
    cp d
    ld e, a
    cp d
    ld e, c
    cp [hl]
    ld e, l
    cp [hl]
    cp l
    ld a, [hl]
    ld a, l
    cp [hl]
    cp $01
    cp $01
    ld a, h
    add e
    inc a
    di
    cp h
    ei
    ld e, [hl]
    cp a
    ld l, h
    cp a
    ld [hl], b
    adc a
    ld a, b
    rst $28
    inc a
    cp a
    inc e
    sbc a
    inc b
    add a
    inc b
    add a
    add b
    inc bc
    db $fc
    inc bc
    add b
    rlca
    ret nz

    rlca
    ld b, b
    add a
    pop hl
    ld [bc], a
    pop af
    ld b, $f1
    ld b, $e1
    ld e, $f9
    ld b, $fd
    ld [bc], a
    rst $38
    rst $20
    rst $38
    rst $20
    di
    rst $28
    jp $a7ff


    rst $18
    rst $30
    rst $08
    or a
    rst $08
    db $e3
    sbc a
    rst $00
    cp a
    add a
    rst $38
    xor a
    rst $18
    adc a
    rst $38
    xor a
    rst $18
    rst $28
    sbc a
    rst $28
    sbc a
    rst $28
    sbc a
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld e, [hl]
    cp a
    dec l
    sbc $10
    rst $28
    daa
    rst $38
    ld l, $ff
    ld a, $ff
    ld a, $ff
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, $ff
    jr @+$01

    jr @+$01

    ld c, d
    rst $38
    ld a, h
    rst $38
    db $fc
    rst $38
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
    jr nc, @+$01

    sub b
    rst $38
    sbc b
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    jr nc, @+$01

    add b
    rst $38
    add b
    rst $38
    adc d

jr_027_47e1:
    push af
    jr c, @-$07

    ld [$58f7], sp
    rst $30
    ret nz

    rst $38
    jr z, @-$07

    xor b
    rst $30
    and l
    ei
    add l
    ei
    push bc
    ei
    push bc
    ei
    push de
    db $eb
    call nc, $d0eb
    rst $28
    ret c

    rst $20
    adc c
    rst $30
    add hl, de
    rst $20
    jr z, @-$27

    xor b
    ld d, a
    ld l, b
    rst $10
    ld a, b
    rst $00
    ld a, [hl-]
    push bc
    ld [hl-], a
    call $cf30
    jr nc, jr_027_47e1

    ld e, b
    and a
    ld d, a
    xor c
    ld [hl], l
    adc e
    ld d, e
    xor l
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], c
    adc [hl]
    db $f4
    dec bc
    pop hl
    rra
    ld [hl], a
    adc a
    rst $20
    rra
    rst $20
    rra
    rst $20
    rra
    rst $20
    rra
    rst $30
    rra
    di
    rra
    db $d3
    ccf
    db $d3
    ccf
    rst $10
    dec hl
    rst $20
    dec de
    rst $00
    dec sp
    rst $10
    dec sp
    rst $00
    dec sp
    db $e3
    ccf
    db $e3
    ccf
    cp [hl]
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    db $10
    ld a, a
    or b
    sbc a
    ld a, b
    rst $18
    ld l, h
    rst $28
    db $10
    rst $30
    ld a, [hl]
    ei
    ld a, a
    cp l
    ccf
    sbc c
    rra
    ld b, $07
    ld b, e
    ld b, e
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $e1fe
    rst $38
    pop hl
    db $dd
    db $e3
    db $dd
    db $e3
    push de
    db $eb
    db $dd
    db $e3
    db $dd
    db $e3
    rst $30
    set 5, e
    rst $10
    ei
    rst $00
    cp e
    rst $00
    cp e
    rst $00
    or e
    rst $08
    sub e
    rst $28
    adc e
    rst $30
    or e
    rst $08
    and a
    rst $18
    rst $08
    or a
    rst $10
    xor a
    rlca
    rst $38
    inc b
    rst $38
    daa
    call c, $fe05
    ld c, $ff
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
    rrca
    rst $38
    rra
    rst $38
    inc de
    rst $38
    dec d
    ei
    jr @+$01

    inc e
    rst $38
    inc e
    rst $38
    inc e
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
    daa
    rst $38
    inc hl
    rst $38
    ld [hl], e
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld a, c
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
    rst $08
    rst $38
    xor $ff
    xor $ff
    ld a, a
    rst $38
    cpl
    rst $38
    rra
    rst $38
    ld e, h
    rst $38
    db $dd
    rst $38
    sbc l
    rst $38
    cp l
    rst $38
    cp l
    rst $38
    ld a, l
    rst $38
    ld a, l
    rst $38
    ld a, l
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
    ld a, [hl]
    rst $38
    ld hl, sp-$01
    ld a, b
    rst $38
    ld [hl], c
    cp $29
    or $31
    xor $61
    cp $e1
    cp $f9
    or $f1
    cp $f3
    db $fc
    ld l, e
    db $f4
    ld h, e
    call c, $fcc3
    jp nz, $c6fd

    ld sp, hl
    xor $f1
    sub $e9
    sub $e9
    and $f9
    rst $30
    ld hl, sp-$01
    ldh a, [$ef]

jr_027_4933:
    ldh a, [$df]
    ldh [$ed], a
    jp nc, $d3bc

    db $fd
    or d
    ld l, a
    or d
    xor [hl]
    ld [hl], e
    adc [hl]
    ld [hl], e
    sbc d
    ld h, a
    dec sp
    rst $00
    dec sp
    rst $00
    ld a, c
    rst $00
    jr jr_027_4933

    sbc l
    ld [c], a
    push af
    jp z, $cbf7

    push af
    set 6, l
    rst $08
    cp h
    rst $08
    cp [hl]
    rst $08
    rst $38
    adc a
    rst $28
    sbc a
    rst $28
    sbc a
    sbc a
    ld h, b
    sbc a
    ldh [$df], a
    jr nz, @+$01

    nop
    ld a, a
    add b
    cp a
    ret nz

    sbc a
    ldh [rIF], a
    ldh a, [rIE]
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    pop af
    rst $38
    ld l, c
    rst $30
    and a
    ld a, a
    adc [hl]
    ld a, a
    ld e, $ff
    ld a, $ff
    cp $ff
    cp $ff
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh [rIE], a
    call nz, $8cff
    rst $38
    inc e
    rst $38
    ld a, h
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld sp, hl
    rst $38
    pop af
    rst $38
    db $e3
    rst $38
    ret nz

    rst $38
    ld bc, $30fe
    rst $38
    ld [hl], c
    rst $38
    pop af
    rst $38
    di
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    rst $00
    rst $38
    ld b, a
    rst $38
    rst $00
    rst $38
    add h
    rst $38
    pop bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    add l
    rst $38
    inc b
    rst $38
    add l
    rst $38
    adc c
    rst $38
    adc [hl]
    rst $38
    adc [hl]
    rst $38
    inc e
    rst $38
    dec e

jr_027_49dd:
    rst $38
    dec de
    rst $38
    inc de
    rst $38
    rla
    rst $38
    add a
    ld a, a
    adc a
    ld a, a
    adc a
    ld a, a
    rra
    rst $38
    sbc a
    ld a, a
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld b, a
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    jr nz, jr_027_49dd

    ld bc, $2cfe
    rst $18
    sbc l
    cp $5d
    cp [hl]
    ld e, $ff
    ld l, $df
    adc a
    cp $20
    rst $18
    ld [bc], a
    db $fd
    jr c, @+$01

    or b
    ld a, a
    jr nc, @+$01

    ld a, [$f8fd]
    rst $38
    ld hl, sp-$01
    ld a, [$7efd]
    db $fd
    ld a, [hl]
    rst $38
    ld a, a
    cp $7f
    db $fc
    ld a, e
    db $fc
    ld [hl], a
    ld hl, sp+$7f
    ld a, [c]
    ld a, a
    and $5d
    xor $6d
    sbc $5f
    db $fc
    rla
    db $fc
    rlca
    db $fc
    db $d3
    db $ec
    sbc a
    ldh [$97], a
    ld hl, sp-$29
    ld hl, sp-$39
    ld hl, sp-$19
    ld hl, sp-$09
    ld hl, sp-$0a
    ld sp, hl
    cp $f1
    cp $f1
    rst $38
    pop af
    rst $28
    pop af
    rst $20
    rst $18
    rst $18
    rst $20
    rst $00
    rst $38
    rst $20
    rst $38
    rst $10
    rst $28
    rst $30
    rst $08
    rst $30
    rst $08
    xor a
    rst $18
    and a
    rst $18
    rst $00
    rst $38
    add a
    rst $38
    adc a
    rst $38
    xor a
    rst $18
    xor a
    rst $18
    xor a
    rst $18
    xor a
    rst $18
    rrca
    rst $38
    rra
    rst $38
    rla
    rst $28
    dec sp
    rst $00
    rrca
    pop af
    ld b, $f9
    ld a, [de]
    db $fd
    inc a
    rst $38
    inc a
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
    rst $38
    rst $38
    ld a, a
    rst $38
    ld e, a
    cp a
    ld l, a
    sbc a
    rla
    rst $28
    ld c, c
    rst $30
    pop af
    rst $38
    pop af
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
    ld a, a
    rst $38
    cp a
    ld a, a
    ld e, [hl]
    cp a
    adc h
    rst $38
    call nz, $dfff
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
    ld a, a
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    db $fd
    rst $38
    db $fc

jr_027_4acf:
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    db $ec
    rst $38
    ret nc

    rst $38
    ret nc

    rst $38
    call c, $dcff
    rst $38
    call c, $d8ff

jr_027_4ae3:
    rst $38
    ret c

    rst $38
    ret c

    rst $38
    ret c

    rst $38
    db $ec
    ei
    db $ec
    ei
    db $e4
    ei
    db $e4
    ei
    db $ec
    di
    xor b
    rst $30
    ld [$08f7], sp
    rst $30
    jr jr_027_4ae3

    add hl, sp
    rst $00
    ld de, $78ef
    rst $20
    ld e, d
    rst $20
    ld e, d
    rst $20
    jr c, jr_027_4acf

    add hl, sp
    rst $00
    ld a, c
    rst $00
    inc a
    rst $00
    inc [hl]
    rst $08
    dec [hl]
    adc $f3
    adc h
    ld [hl], c
    adc [hl]
    ld [hl], c
    adc [hl]
    ld a, l
    adc [hl]
    ld [hl], h
    adc a
    ld [c], a
    dec e
    ld [$e41d], a
    dec de
    db $eb
    inc e
    xor $11
    xor $11
    rst $08
    add hl, sp
    rst $18
    cpl
    rst $18
    cpl
    rst $38
    cpl
    rst $30
    cpl
    or a
    ld l, a
    cp a
    ld h, a
    rst $38
    ld h, a
    rst $28
    ld [hl], a
    rst $38
    ld [hl], a
    ld a, e
    rst $30
    dec sp
    rst $30
    rra
    di
    or e
    ld a, a
    db $d3
    ccf
    inc sp
    rst $18
    ld [hl], e
    rst $38
    ld [hl], a
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    rlca
    ld [$0a09], sp
    dec bc
    dec bc
    dec bc
    inc c
    dec c
    ld c, $06
    ld b, $06
    ld b, $06
    rrca
    db $10
    dec bc
    dec bc
    ld de, $0b12
    dec bc
    dec bc
    dec bc
    inc de
    inc d
    ld b, $06
    ld b, $06
    dec d
    ld d, $0b
    rla
    jr jr_027_4b9c

    ld a, [de]
    dec bc
    dec bc
    dec bc
    dec bc
    dec de
    ld b, $06
    ld b, $1c
    dec e
    dec bc
    dec bc
    ld e, $1f
    jr nz, jr_027_4bb5

    dec bc
    dec bc
    dec bc
    dec bc
    ld [hl+], a
    ld b, $06
    inc hl

jr_027_4b9c:
    inc h
    dec bc
    dec h
    ld h, $27
    jr z, jr_027_4bcc

    ld a, [hl+]
    dec bc
    dec bc
    dec bc
    dec bc
    dec hl
    ld b, $2c
    dec l
    dec bc
    ld l, $2f
    jr nc, jr_027_4be2

    ld [hl-], a
    dec bc
    dec bc
    dec bc

jr_027_4bb5:
    dec bc
    dec bc
    inc de
    inc d
    rrca
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_027_4bfa

    ld a, [hl-]
    dec sp
    inc a
    inc a
    inc a
    dec a
    ld a, $3f
    ld b, b
    dec bc
    ld b, c

jr_027_4bcc:
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
    dec bc
    dec bc
    dec bc
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h

jr_027_4be2:
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    dec bc
    dec bc
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
    dec bc
    dec bc

jr_027_4bfa:
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    dec bc
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    dec bc
    dec bc
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    dec bc
    dec bc
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
    dec bc
    dec bc
    dec bc
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
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    sub c
    sub d
    sub e
    sub h
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    dec bc
    dec bc
    dec bc
    and c
    and d
    and e
    and h
    and l
    dec bc
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
    dec bc
    dec bc
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
    sub $01
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
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0004
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0400
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $2121
    ld bc, $0401
    dec b
    dec b
    dec b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    inc b
    dec b
    dec b
    dec b
    dec b
    inc b
    ld bc, $0501
    dec b
    dec b
    inc b
    nop
    nop
    nop
    inc b
    inc b
    dec b
    dec b
    dec b
    inc b
    inc b
    ld bc, $0502
    dec b
    dec b
    dec b
    dec b
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    dec b
    inc b
    inc b
    ld bc, $0502
    dec b
    dec b
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    inc b
    inc b
    inc b
    nop
    inc b
    ld bc, $0507
    dec b
    dec b
    dec b
    inc b
    nop
    nop
    dec b
    dec b
    inc b
    inc b
    nop
    nop
    inc b
    inc bc
    ld [bc], a
    ld [bc], a
    rlca
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    dec b
    inc b
    nop
    nop
    nop
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0306
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
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
    inc b
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
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    inc b
    inc b
    dec b
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
    dec b
    nop
    nop
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
    dec b
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
    dec b
    dec b
    inc b
    inc b
    dec b
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, h
    add e
    ld a, h
    add e
    ld a, h
    add e
    ld a, h
    add e
    ld a, h
    add e
    ld a, h
    add e
    ld a, h
    add e
    ld a, h
    add e
    ld a, h
    add e
    ld a, h
    add e
    ld a, l
    add d
    ld a, l
    add d
    dec a
    jp nz, $c23d

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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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

    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$07
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
    nop
    rst $38
    nop
    rst $38

Jump_027_4ec0:
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
    cp $00
    cp $00
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
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [rIF], a
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
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

Call_027_4f4f:
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
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [rP1]
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld a, a
    rst $38
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
    rst $38
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ld h, b
    rlca
    ld h, b
    inc bc
    ld h, b
    ld bc, $0040
    ld b, b
    nop
    ld b, b
    nop
    nop
    nop
    nop
    rlca
    nop
    ld [$1000], sp
    nop
    stop
    stop
    ld [$0010], sp
    rla
    nop
    ld [de], a
    nop
    rra
    nop
    jr jr_027_4fdd

jr_027_4fdd:
    stop
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
    ld a, h
    add e
    nop
    rst $38
    nop
    rst $38
    nop
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
    db $fd
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    cp $d1
    cp $c7
    db $fd
    add b
    rst $38
    ret z

    rst $38
    add c
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    pop bc
    ld a, $c1
    ld a, $c3
    inc a
    jp $c73c


    jr c, @-$17

    jr jr_027_50ba

    jr jr_027_50bc

    jr jr_027_5086

    db $10
    cpl
    db $10
    adc a
    db $10
    ld c, a
    db $10
    ld e, a
    nop
    ld e, a
    nop
    sbc a
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
    rst $38
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

jr_027_5086:
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
    ld hl, sp-$01
    rst $38
    ld hl, sp-$05
    db $fc

jr_027_50ba:
    ei
    db $fc

jr_027_50bc:
    cp $f8
    push af
    ld hl, sp-$0b
    ret z

    di
    ret z

    ld [$8ed1], a
    pop af
    db $dd
    and d
    ld a, c
    add [hl]
    ld a, [hl+]
    push de
    ld d, d
    adc l
    ld l, l
    sbc d
    ld [c], a
    dec e

jr_027_50d4:
    add b
    ld a, a
    jr nz, @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rst $18
    ccf
    rst $28
    rra
    di
    rrca
    pop af
    rrca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc bc
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fc
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    sbc h
    db $e3
    add hl, bc
    or $6b
    sub h
    cp c
    ld b, h
    di
    ld [$10ee], sp
    db $eb
    db $10
    ld e, e
    jr nz, jr_027_50d4

    ld h, b
    cp a
    ld b, b
    ld [hl], $c1
    ld l, h
    add e
    ld l, l
    sub e
    call $dc03
    inc bc
    ld a, [$9c07]
    ld h, a
    add h
    ld a, a
    ld [$08ff], sp
    rst $38
    jr @+$01

    db $10
    rst $38
    jr nz, @+$01

    ld hl, $20ff
    rst $38
    ld b, d
    rst $38
    db $fc
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
    ccf
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    pop hl
    ld e, $f1
    ld c, $f1
    ld c, $f3
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
    rst $30
    rrca
    rst $20
    rra
    rst $00
    ccf
    add a
    ld a, a
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
    cp $ff
    rst $28

jr_027_51e7:
    rst $38
    adc $ff
    sbc b
    rst $38
    jr nc, @+$01

    jr nz, @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    add c
    rst $38
    add c
    rst $38
    ld [hl+], a
    rst $18
    ld [hl+], a
    rst $18
    ld h, h
    sbc a
    call nc, $f92f
    ld c, $e9
    ld e, $63
    inc e
    di
    inc e
    and $39
    and [hl]
    ld a, c
    call nz, Call_027_447b
    ei
    adc l
    ld a, [c]
    add c
    or $0a
    push af
    ld a, [bc]
    push hl
    jr nc, jr_027_51e7

    inc h
    db $db
    dec hl
    jp nc, $bf40

    ld [hl], $ed
    ld bc, $62fe
    db $dd
    ret z

jr_027_5227:
    cp a
    ld [$94ff], sp
    ld a, e
    ret c

    ld [hl], a
    jr jr_027_5227

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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$88f7], sp
    ld [hl], a
    adc b
    ld [hl], a
    sbc b
    ld h, a
    sbc h
    ld h, e
    call c, $dd23
    ld [hl+], a
    db $dd
    ld [hl+], a
    db $fd
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    rst $28
    rst $18
    rst $38
    rst $08
    ld e, a
    rst $28
    ld e, a
    rst $28
    ld e, a
    rst $28
    ld e, a
    rst $28
    ld d, a
    rst $28
    rst $18
    rst $28
    rst $10
    rst $28
    rst $18
    rst $28
    rst $18
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $20
    rst $38
    rst $30
    rst $28
    rst $28
    rst $38
    rst $20
    rst $38
    rst $28
    rst $38
    rst $28
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
    db $fd
    rst $38
    db $fd
    rst $38
    jp hl


    rst $38
    ret z

    rst $38
    db $10
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    ld b, c
    rst $38
    ld b, b
    rst $38
    add h
    ei
    add d
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    dec b
    rst $38
    add hl, bc
    rst $38
    add hl, hl
    rst $18
    ld [hl-], a
    rst $18
    db $10
    rst $38
    db $10
    rst $38
    and b
    ccf
    add [hl]
    ld a, a
    sbc b
    ld h, a
    ld [de], a
    ld l, l
    or c
    ld c, [hl]
    ld hl, $28de
    rst $10
    and c
    ld e, a
    or l
    ld c, e
    and c
    ld e, a
    nop
    rst $38
    rlca
    ei
    ld b, [hl]
    cp e
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    dec d
    rst $38
    inc d
    rst $38
    adc [hl]
    rst $38
    ld [$08ff], sp
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
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr c, @-$37

    inc a
    jp $817e


    ld a, [hl]
    add c
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
    nop
    nop
    nop
    inc bc
    db $fc
    ret nz

    rst $38
    inc bc
    db $fc
    inc bc
    db $fc
    ld b, c
    cp $fb
    inc a
    srl h
    ret


    ld a, $c9
    ld a, $c9
    ld a, $c8
    ccf
    ret z

    ccf
    ret z

    ccf
    ld c, b
    cp a
    ld l, b
    cp a
    ld c, b
    cp a
    ld c, b
    cp a
    ld c, h
    cp a
    ld a, b
    cp a
    ld e, h
    cp a
    ld a, h
    cp a
    ld a, h
    cp a
    ld a, [hl]
    cp a
    ld a, a
    cp a
    ccf
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    xor a
    rst $38
    db $fd
    cp $ff
    db $fc
    rst $38
    db $fc
    db $fd
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sub $ff
    db $fc
    rst $38
    push af
    rst $38
    ld a, c
    rst $38
    ld a, [hl]
    rst $38
    ld a, [$7aff]
    rst $38
    ld a, [$f0ff]
    rst $38
    db $f4
    rst $38
    or $ff
    ld [c], a
    rst $38
    ret


    rst $38
    ret z

    rst $38
    ret z

    rst $38
    sbc d
    rst $38
    sbc a
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    jr nc, @+$01

    ld hl, $20ff
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    pop bc
    rst $38
    ld b, b
    rst $38
    ld b, d
    rst $38
    nop
    rst $38
    add d
    rst $38
    and c
    rst $18
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    inc sp
    rst $38
    daa
    rst $38
    inc de
    rst $38
    ld c, e
    rst $38
    ld e, e
    rst $38
    rla
    rst $38
    sbc e

jr_027_53d9:
    rst $38
    cp a

jr_027_53db:
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rra
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
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_027_53d9

    jr nz, jr_027_53db

    ld [hl], b
    adc a
    ld [hl], c
    adc [hl]
    adc [hl]
    rst $38
    adc [hl]
    rst $38
    add h
    rst $38
    add h
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    nop
    rra
    ldh [$fe], a
    nop
    cp $00
    rst $38
    nop
    ld hl, sp+$07
    rst $30
    nop
    rst $30
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

    ld e, $e1
    ld c, $f1
    ld c, $f1
    ld c, $f1
    ld [$08f7], sp
    rst $30
    nop
    rst $38
    ld bc, $81ff
    rst $38
    pop bc
    rst $38
    pop hl
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    or $f9
    or $99
    rst $28
    sbc a
    rst $28
    sbc a
    xor a
    rst $18
    cp a
    rst $18
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    call nc, $a0ff
    rst $38
    add c
    cp $01
    cp $03
    db $fc

jr_027_5470:
    dec c
    ld a, [$fe08]

jr_027_5474:
    add hl, bc
    cp $00
    rst $38
    ld bc, $11fe
    cp $90
    rst $38
    sub b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nc, @+$01

    jr nz, @+$01

    ldh [rIE], a
    ld l, b
    rst $38
    ld b, [hl]
    rst $38
    xor $ff
    ld d, b
    rst $38
    ld c, b
    rst $38
    db $e4
    rst $38
    ldh a, [rIE]
    add sp, -$01
    pop af
    rst $38
    db $db
    rst $38
    adc c
    rst $38
    call $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld [hl], b
    adc a
    ldh a, [rIF]
    ld sp, hl
    ld b, $f9
    ld b, $02
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
    sbc a
    rst $38
    ld bc, $f0ff
    nop
    push af
    nop
    nop
    nop
    nop
    nop
    cp [hl]
    nop
    dec a
    add d
    jr nc, jr_027_5470

    jr nc, @-$7c

    jr nc, jr_027_5474

    jr nc, @-$7c

    ld [hl], h
    add d
    ld [hl], l
    add d
    ld a, l
    add d
    ld a, l
    add d
    ld a, l
    add d
    ld a, l
    add d
    db $dd
    and d
    ld e, l
    and d
    ld a, c
    add [hl]
    ld e, c
    and [hl]
    ld e, c
    and [hl]
    ld a, [bc]
    rst $30
    ld [$00f7], sp
    rst $38
    add b
    rst $38
    nop
    rst $38
    add h
    rst $38
    add [hl]
    rst $38
    add h
    rst $38
    sbc e
    rst $20
    ld a, l
    jp $fff5


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
    ld a, a
    rst $38
    ld a, [hl+]
    rst $38
    jr nz, @+$01

    add h
    ld a, e
    ld d, h
    dec hl
    jr jr_027_55a3

    ld e, b
    inc hl
    ld d, b
    inc bc
    inc a
    ld b, e
    ld a, [de]
    ld h, l
    nop
    ld a, a
    ld d, h
    ld l, e
    ld b, c
    ld a, a
    pop bc
    ld a, a
    ld b, c
    rst $38
    ld b, c
    rst $38
    rla
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    add a
    rst $38
    add e
    rst $38
    sub e
    rst $38
    adc l
    rst $38
    add e
    rst $38
    sub a
    rst $38
    sbc l
    rst $38
    cp a
    rst $38
    cp l
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ld b, h
    rst $38
    inc b
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
    cp $ff
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    ld a, h
    inc bc
    halt
    ld h, [hl]
    nop
    ld h, d
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    jr nz, @+$01

    ld b, $19
    rlca
    add hl, de
    rlca
    rra
    rrca

jr_027_55a3:
    rra
    rlca
    dec e
    rlca
    inc e
    rlca
    inc e
    rlca
    inc e
    ld b, $1d
    inc b
    rra
    db $e4
    ldh [$a4], a
    ldh [$a4], a
    ldh [$ec], a
    ldh [$ec], a
    ldh [$ec], a
    ldh [$ec], a
    ldh [$ec], a
    ldh [$0c], a
    rra
    inc c
    rra
    inc c
    rra
    inc c
    rra
    dec c
    rra
    rrca
    rra
    rrca
    rra
    rra
    rra
    ei
    db $e4
    ei
    db $e4
    ei
    db $e4
    ei
    db $e4
    di
    db $ec
    pop af
    xor $f1
    xor $f1
    xor $d1
    xor $d9
    xor $dd
    xor $d8
    rst $28
    ret c

    rst $28
    call c, $dcef
    rst $28
    sbc $ef
    call c, $deef
    rst $28
    sbc $ef
    rst $08
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    ei
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
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rst $18
    ccf
    ld c, a
    ccf
    ld a, a
    rra
    ld l, a
    sbc a
    xor a
    ld e, a
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
    ccf
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    push bc
    ld a, [$fac5]
    rst $08
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [$2f]
    ret nc

    ld l, a
    sub b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    ldh a, [rIF]
    ld [hl], b
    rrca
    ld [hl], b
    rrca
    ld [hl], b
    rrca
    jr c, @+$09

    jr c, @+$09

    jr c, @+$09

    jr c, jr_027_5677

    jr c, jr_027_5679

    jr c, @+$09

    jr c, @+$09

    ld a, b

jr_027_5677:
    rlca
    ld a, b

jr_027_5679:
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    pop bc
    ccf
    pop bc
    ccf
    add c
    ld a, a
    add c
    ld a, a
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    ld bc, $0101
    ld bc, $0101
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0303
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
    ei
    rlca
    ld a, e
    add a
    ld a, e
    add a
    dec sp
    rst $00
    dec sp
    rst $00
    inc de
    rst $28
    rlca
    rst $38
    rlca
    rst $38
    add a
    rst $38
    rlca
    rst $38
    add a
    rst $38
    add a
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $28
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
    ld a, a
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
    cp $ff
    rst $38
    rst $38
    cp $ff
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
    db $fd
    rst $38
    cp $ff
    db $fc
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
    ld sp, hl
    rst $38
    db $fd
    rst $38
    ld sp, hl
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
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
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
    cp $ff
    cp $ff
    cp $ff
    push af
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
    rst $18
    rst $38
    rst $18
    rst $38
    rst $10
    rst $38
    or a
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    xor a
    rst $38
    xor $ff
    cp $ff
    cp [hl]
    rst $38
    cp $ff
    xor $ff
    xor $ff
    xor $ff
    xor $ff
    xor $ff
    cp $ff
    cp $ff
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
    rst $38
    rst $38
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
    cp $fd
    cp $fd
    cp $fd
    cp $ff
    db $fd
    db $fc
    rst $38
    rst $38
    cp $ff
    db $fc
    db $fc
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    ei
    db $fd
    rst $38
    rst $38
    db $fd
    ld sp, hl
    rst $38
    cp $ff
    ld a, [$feff]
    rst $38
    rst $38
    rst $38
    ld a, [$fbff]
    rst $38
    rst $30
    rst $38
    rst $38
    cp $ff
    cp $f5
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
    dec h
    rst $38
    db $10
    rst $38
    ld h, $d9
    rst $08
    rst $38
    rst $08
    rst $38
    adc a
    rst $38
    adc l
    rst $38
    adc a
    rst $38
    rra
    rst $38
    dec de
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
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
    rra
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rla
    rst $38
    add hl, de
    rst $38
    ld e, l
    rst $38
    ccf
    rst $38
    ld e, [hl]
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
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
    rst $38
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
    rst $28
    ld a, a
    rst $38
    rst $38
    rst $38
    or a
    ld l, a
    or a
    rst $18
    rst $30
    ld l, a
    rst $38
    dec [hl]
    rst $28
    db $fc
    daa
    db $dd
    ld h, [hl]
    rst $18
    ld h, [hl]
    cp a
    add $fe
    add e
    ld a, a
    add e
    db $fd
    inc bc
    db $fd
    inc bc
    ei
    dec b
    db $fd
    rlca
    rst $30
    rrca
    rst $38
    rrca
    rst $30
    sbc a
    rst $18
    rst $38
    ld l, [hl]
    rst $38
    xor [hl]
    rst $18
    cp $0f
    cp $0f
    or $1f
    ld a, $ff
    cp $ff
    db $fc
    rst $38
    ld a, h
    cp a
    db $ec
    ccf
    ld [hl], h
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $f4
    rst $38
    ld sp, hl
    cp $e9
    cp $d8
    cp $d8
    cp $b8
    cp $ba
    db $fc
    pop af
    cp $f1
    cp $f9
    cp $f1
    cp $f1
    rst $38
    or $fd
    di
    db $fd
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    jp hl


    rst $38
    db $eb
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ld sp, hl
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
    di
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
    rst $28
    rst $38
    rst $00
    rst $38
    ei
    rst $00
    add c
    jp $ffff


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
    db $fc
    rst $38
    ldh a, [rIE]
    and $ff
    inc c
    rst $38
    inc a
    rst $38
    ld a, h
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    pop hl
    rst $38
    ret z

    rst $38
    ld sp, hl
    rst $38
    ld a, b
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, [$ffff]
    cp $ff
    cp $fe
    rst $38
    xor $ff
    db $fc
    rst $38
    db $fc
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    ei
    db $fd
    ld sp, hl
    rst $38
    db $fd
    ei
    rst $38
    ei
    ei
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    ld a, [$f7ff]
    rst $38
    cp $f7
    rst $38
    or $ef
    or $ec
    or $ff
    db $e4
    rst $30
    db $ec
    rst $28
    db $fc
    ei
    db $fc
    cp c
    db $ec
    reti


    db $ec
    ld c, l
    ld hl, sp+$5d
    add sp, $7c
    reti


    ld e, d
    db $fd
    rst $28
    reti


    ld [hl], a
    reti


    ld e, e
    pop af
    dec de
    pop af
    ld e, c
    di
    cp c
    di
    ld c, a
    or e
    ld a, a
    or e
    rrca
    di
    scf
    db $e3
    add a
    ld h, e
    jp $c727


    daa
    rst $20
    rlca
    rst $28
    ld b, a
    ld c, a
    ld b, a
    rrca
    ld b, a
    ld c, $47
    ld b, [hl]
    ld c, a
    call Call_027_4f4f
    adc a
    cp a
    rst $08
    xor [hl]
    rst $18
    rst $28
    rst $18
    rst $38
    rst $18
    sbc a
    rst $38
    rst $18
    cp a
    cp a
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
    cp $ff
    cp $ff
    cp $ff
    and $ff
    ld a, [hl]
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    call c, $fcff
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    cp b
    rst $38
    dec bc
    rst $38
    dec d
    ld c, $f7
    rst $38
    rst $38
    rst $38
    db $eb
    rst $38
    jp $cfff


    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    sbc $ff
    sbc $ff
    ld e, $ff
    dec e
    rst $38
    dec e
    rst $38
    inc e
    rst $38
    dec a
    rst $38
    dec e
    rst $38
    add hl, de
    rst $38
    ld e, c
    rst $38
    add hl, bc
    rst $38
    ld h, c

jr_027_5a71:
    rst $38
    jr nc, @+$01

    jr c, @+$01

    jr nc, @+$01

    jr c, jr_027_5a71

    scf
    ei
    cp e
    rst $30
    and e
    rst $38
    ld l, d
    rst $30
    ld a, [hl+]
    rst $30
    ld c, $f7
    ld b, d
    rst $38
    ld h, d
    rst $38
    ld [hl], l
    rst $28
    ld d, a
    rst $28
    ld d, a
    rst $28
    rst $10
    rst $28
    rst $30
    rst $08
    rst $38
    rst $08
    ld a, [hl]
    rst $08
    inc a
    rst $08
    rst $18
    rst $38
    cp a
    rst $38
    rst $18
    cp a
    rst $28
    sbc a
    rst $38
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    rst $38
    rra
    rst $18
    ccf
    rst $18
    ccf
    ld e, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    rst $38
    ccf
    rst $38
    ccf
    cp l
    ld a, a
    cp a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    cp $7f
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $ec
    rst $38
    call c, $ccff
    rst $38
    ld hl, sp-$01
    ret c

    rst $38
    add sp, -$01
    ret c

    rst $38
    reti


    rst $38
    cp c
    rst $38
    pop af
    rst $38
    pop de
    rst $38
    or c
    rst $38
    or c
    rst $38
    db $10
    rst $38
    and d
    rst $38
    jp $c1ff


    rst $38
    add c
    rst $38
    ld hl, $4cff
    rst $30
    call c, $c6e7
    rst $38
    sub $ef
    add $ff
    rst $20
    rst $18
    inc sp
    rst $08
    inc de
    rst $28
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    sbc a
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
    rrca
    rst $38
    ld h, a
    rst $38
    ld a, a
    rst $38
    ld a, h
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    sbc a
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    cp b
    ld a, a
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0909], sp
    ld a, [bc]
    dec bc
    inc c
    dec c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $09
    rla
    jr @+$1b

    ld a, [de]
    dec c
    dec de
    inc e
    dec e
    rrca
    ld e, $1f
    jr nz, jr_027_5b88

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_027_5b7c

    add hl, hl
    ld a, [hl+]
    dec hl
    rrca
    inc l
    dec l
    ld l, $2f
    jr nc, jr_027_5baa

    ld [hl-], a
    inc sp
    inc [hl]

jr_027_5b7c:
    dec [hl]
    ld [hl], $0d
    scf
    jr c, jr_027_5bbb

    rrca
    rrca
    rrca
    rrca
    ld a, [hl-]
    ld a, [hl-]

jr_027_5b88:
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    rrca
    rrca
    rrca
    rrca
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, d
    rrca
    ld c, [hl]
    ld c, a
    rrca
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l

jr_027_5baa:
    ld d, [hl]
    ld c, d
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    rrca
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

jr_027_5bbb:
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    rrca
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
    rrca
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
    ld c, d
    add e
    add h
    add l
    ld c, d
    rrca
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc d
    adc l
    add d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    rrca
    adc [hl]
    adc a
    sub b
    adc h
    adc d
    sub c
    adc h
    adc d
    sub d
    sub e
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    rrca
    sub h
    sub l
    sub [hl]
    sub a
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    rrca
    sbc l
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    sbc [hl]
    sbc a
    ld c, d
    and b
    and c
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    and d
    and e
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    sbc [hl]
    sbc a
    ld c, d
    and h
    and l
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    and [hl]
    and a
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    xor b
    xor c
    ld c, d
    xor d
    xor e
    ld c, d

Call_027_5c3c:
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    xor h
    xor l
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    xor [hl]
    xor a
    ld c, d
    or b
    or c
    or d
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    or e
    or h
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    xor [hl]
    xor a
    or l
    or [hl]
    or a
    cp b
    ld c, d
    ld c, d
    ld c, d
    ld c, d
    cp c
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    dec c
    jp nz, $c4c3

    push bc
    add $4a
    rst $00
    ret z

    ret


    jp z, $cccb

    call $cfce
    dec c
    ret nc

    pop de
    jp nc, $d4d3

    push de
    inc b
    nop
    ld b, $01
    inc b
    inc bc
    ld b, $04
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    inc b
    nop
    nop
    nop
    ld b, $06
    inc b
    inc b
    inc b
    inc bc
    inc bc
    inc bc
    inc b
    inc bc
    nop
    nop
    inc b
    inc b
    nop
    dec b
    dec b
    inc b
    inc b
    inc b
    inc b
    inc bc
    inc bc
    inc bc
    inc b
    nop
    nop
    nop
    inc b
    inc b
    nop
    dec b
    dec b
    dec b
    inc b
    inc b
    inc b
    inc bc
    inc bc
    inc bc
    ld bc, $0000
    nop
    inc b
    inc b
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0000
    nop
    nop
    inc b
    inc b
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    dec b
    nop
    nop
    ld bc, $0005
    nop
    inc b
    inc b
    nop
    inc b
    inc b
    inc b
    inc bc
    inc b
    inc b
    nop
    nop
    dec b
    inc b
    inc bc
    dec b
    nop
    inc b
    dec b
    nop
    dec b
    dec b
    inc b
    inc bc
    inc bc
    inc b
    ld bc, $0401
    inc b
    inc bc
    dec b
    nop
    inc b
    dec b
    nop
    ld bc, $0101
    inc b
    inc bc
    inc b
    dec b
    dec b
    inc b
    inc b
    inc b
    dec b
    nop
    inc b
    dec b
    ld bc, $0101
    ld bc, $0401
    inc b
    nop
    nop
    dec b
    inc b
    dec b
    nop
    nop
    inc b
    dec b
    nop
    ld [bc], a
    ld [bc], a
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
    inc b
    dec b
    nop
    ld [bc], a
    ld [bc], a
    ld b, $02
    ld [bc], a
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    dec b
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
    inc b
    dec b
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
    inc b
    dec b
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
    inc b
    inc b
    ld b, $06
    ld b, $01
    ld bc, $0101
    ld bc, $0602
    ld b, $06
    ld b, $00
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $1f
    ldh [$03], a
    db $fc
    nop
    ccf
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ld bc, $00fe
    rst $38
    ldh [rIE], a
    ld a, [hl]
    rra
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    rst $38
    inc bc
    db $fd
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    ei
    dec b
    adc c
    ld [hl], a
    ld l, e
    dec d
    ccf
    ld b, c
    ld d, a
    add hl, hl
    db $fc
    inc de
    db $db
    inc [hl]
    cp $11
    ld [hl], l
    adc d
    ei
    inc d
    ld de, $1024
    nop
    cp e
    nop
    rst $30
    nop
    push af
    nop
    db $fd
    add b
    cp $80
    ccf
    add b
    rst $38
    ret c

    rst $38
    daa
    ld hl, sp-$01
    ld bc, $0fff
    rst $38
    rst $38
    cp $ff
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
    rrca
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [$f0]
    cp $fe
    rst $38
    cp a
    rst $38
    rlca
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
    nop
    cp $00
    db $fd
    nop
    ld [$d500], a
    nop
    xor b
    nop
    ld d, b
    nop
    add b
    nop
    nop
    nop
    ld bc, $0400
    inc bc
    db $10
    rrca
    ld b, b
    ccf
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    add b
    rrca
    ldh a, [rSB]
    ld a, [hl]
    nop
    rrca
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
    nop
    rra
    nop
    rra
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$8f], a
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [$9f]
    ldh a, [$9f]
    ldh a, [$df]
    ld [hl], b
    rst $18
    ld [hl], b
    rst $18
    ld a, b
    ld hl, sp+$78
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
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
    nop
    inc bc
    nop
    ld a, h
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rra
    rra
    rst $38
    rst $38
    rst $38
    db $fc
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
    ld bc, $0f00
    nop
    rst $38
    nop
    cp $00
    db $fd
    nop
    ld [$d500], a
    nop
    xor b
    nop
    ld d, b
    nop
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    rlca
    rst $28
    rra
    cp a
    ld a, a
    rst $38
    rst $38
    db $fc
    db $fc
    ldh a, [$f0]
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $f8
    rlca
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [rSB], a
    cp $00
    rra
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
    ld bc, $03fd
    cp $02
    cp $02
    ld sp, hl
    ld b, $ff
    ld b, $ff
    inc b
    db $fd
    inc b
    ld sp, hl
    inc b
    ld sp, hl
    inc b
    ld a, [$fc06]
    ld [bc], a
    ld bc, $0102
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
    rra
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    rra
    ld a, a
    ld a, a
    rst $38
    db $fd
    rst $38
    ldh [rIE], a
    nop
    cp $01
    cp $01
    nop
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    nop
    inc bc
    inc bc
    nop
    inc e
    nop
    ld a, $00
    ld a, a
    nop
    ld c, a
    jr nc, jr_027_6056

    ld a, $20
    rra
    db $10
    rrca
    ccf
    nop
    push af
    nop
    ld [$d500], a
    nop
    xor b
    nop
    ld d, b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rrca
    rst $38
    ccf
    rst $38
    rst $38
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

jr_027_6056:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ldh [rIE], a
    nop
    nop
    ldh a, [rP1]
    db $fc
    ret nz

    ccf
    ldh a, [rIF]
    cp $01
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rrca
    ldh a, [rSB]
    ld a, $00
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
    rst $38
    nop
    rst $38
    nop

jr_027_6084:
    rst $38
    nop
    rra
    ldh [$ef], a
    db $10
    ld [hl], a
    jr jr_027_6084

    ld a, b
    di
    ld a, h
    bit 7, h
    bit 2, h
    call $cd56
    db $76
    call $cd16
    sub [hl]

jr_027_609c:
    call $cd86
    add [hl]
    rst $08
    inc b
    rrc h
    ld a, e
    add h
    rst $30
    sbc b
    adc a
    ld [hl], b
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
    inc bc
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
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    adc [hl]
    ld [hl], b
    jp $81fc


    cp $c2
    db $fd
    ld a, [hl]
    add b
    rst $28
    db $10
    ld a, a
    add b
    ld a, a
    add b
    cp a
    ld b, b
    rst $18
    jr nz, jr_027_609c

    nop
    rla
    nop
    call z, $e800
    nop
    ldh a, [rP1]
    ld [hl], b
    add b
    add hl, de
    ldh [rNR34], a
    ldh [$7d], a
    nop
    xor b
    nop
    ld d, b
    nop
    ld bc, $0401
    rlca
    db $10
    rra
    ld b, b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld [$c7ff], sp
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
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ld hl, sp-$40
    ld a, $f8
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    rlca
    ld hl, sp+$00
    rrca
    nop
    ld bc, $0000
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
    rst $38
    nop
    ld a, a
    add e
    rst $38
    rlca
    ld a, a
    add a
    cp a
    ld b, a
    ld a, a
    adc [hl]
    cp [hl]
    ld c, [hl]
    ld a, [hl]
    adc [hl]
    ld a, [hl]
    adc [hl]
    ld a, [hl]
    adc [hl]
    ld a, $cf
    ld a, a
    adc [hl]
    ccf
    adc $5e
    xor a
    ld a, $ce
    ld e, h
    xor h
    inc a
    call c, Call_000_1cfc
    ret c

    jr c, jr_027_621a

    cp $f7
    ld hl, sp-$11
    ldh a, [rIE]
    ret nz

    rst $38
    add b
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    rrca
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
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    pop hl
    cp $e7
    ld hl, sp-$21
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
    rst $38

jr_027_61eb:
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
    ret nz

    nop
    ldh a, [$c0]
    inc a
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [rSB], a
    ld a, $00
    inc bc
    rra
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop

jr_027_621a:
    nop
    nop
    nop
    nop
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

    add b
    ret nz

    add b
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    jr jr_027_61eb

    ld h, c
    ld a, b
    add [hl]
    rra
    ld hl, sp+$7f
    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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

    rlca
    ld hl, sp+$01
    cp $00
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
    rst $38
    inc bc
    rst $38
    ld bc, $01df
    adc a
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
    add b
    nop
    ldh [$e0], a
    inc e
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    rlca
    ld a, b
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
    nop
    nop
    nop
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
    dec bc
    inc b
    ld bc, $000e
    rra
    jr nz, jr_027_62f5

    nop
    ccf
    nop
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    add b
    ld a, a
    nop
    ld a, a
    ld b, b
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    jr nz, jr_027_630d

    ldh [$1f], a
    adc a
    nop
    add a
    nop
    add [hl]

jr_027_62f5:
    ld bc, $0083
    nop
    ld bc, $0000
    nop
    nop
    add b
    add b
    ld a, a
    nop
    ld h, a
    jr jr_027_6384

    nop
    rla
    jr z, @+$41

    nop
    dec a
    ld [bc], a
    rra

jr_027_630d:
    nop
    ld c, $01
    inc c
    inc bc
    ld [bc], a
    dec c
    rrca
    jr nc, jr_027_6353

    jp $0cf0


    ret nz

    jr nc, jr_027_631d

jr_027_631d:
    ret nz

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
    inc bc
    db $fc
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
    inc bc
    nop
    rrca
    inc bc
    rra
    rlca
    rra
    rra
    ccf
    dec de
    ccf
    ld a, a
    inc d
    rst $38
    nop
    cp e
    ld h, b
    db $dd
    ldh a, [$ce]
    ldh a, [$a7]
    db $fc
    rst $20
    cp $70
    sbc a
    rlca
    adc b
    inc bc

jr_027_6353:
    ld h, h
    ld sp, $78c2
    add d
    cp h
    ret nz

    call nc, $e8e8
    ldh a, [$f7]
    ld hl, sp+$18
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
    nop
    nop
    nop
    ret nz

    ldh [$1f], a
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38

jr_027_6384:
    ldh [rIE], a
    rst $38
    rra
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    cp $00
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [hl]
    add b
    ld a, a
    add b
    rra
    ldh [$2f], a
    ret nc

    rla
    add sp, $07
    ld hl, sp+$03
    db $fc
    pop bc
    cp $e7
    ld hl, sp-$09
    ld hl, sp-$0a
    ld hl, sp-$09
    ld hl, sp+$0c
    ldh a, [rDIV]
    ld hl, sp+$0e
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0e]
    ldh a, [$0e]
    ld hl, sp-$80
    ld b, b
    nop
    ret z

    add b
    ld a, a
    ldh a, [rIF]
    ld [hl], b
    adc a
    jr nz, jr_027_643b

    ld l, $11
    ccf
    ld b, b
    ccf
    nop
    jr jr_027_640b

    jr jr_027_644d

    rra
    ld h, b
    dec de
    ld h, h
    rra
    ld h, b
    rra
    nop
    ld e, $01
    ld [c], a
    rra
    ld a, [c]
    rra
    ldh a, [$1f]
    ldh a, [rIF]
    ld a, b
    rrca
    ld a, b
    rrca
    inc a
    rlca
    inc e
    rrca
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rst $38
    rra
    rst $38

jr_027_640b:
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
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    inc a
    ccf
    sbc h
    rst $38
    rst $38
    ld a, a
    rst $28
    cp $ef
    db $fc
    rst $38
    ld hl, sp-$01
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
    sbc a
    nop
    rst $38

jr_027_643b:
    nop
    rst $38
    ld b, b
    rra
    ldh [$fc], a
    inc bc
    rst $38
    nop
    rst $38
    nop
    nop
    jr nz, jr_027_6449

jr_027_6449:
    nop
    nop
    stop

jr_027_644d:
    nop
    rst $38
    nop
    db $10
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
    ccf
    ccf
    ret nz

    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    ldh [$e0], a
    nop
    nop

jr_027_647a:
    nop
    nop

jr_027_647c:
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
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    di
    inc c
    ld sp, hl
    ld b, $e4
    inc bc
    ldh [rSB], a
    ret nz

    nop
    ret nz

    nop
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b

jr_027_64aa:
    ret nz

    nop
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld h, b

jr_027_64b3:
    add b
    ld h, b
    add b
    ld h, b
    add b
    jr nz, jr_027_647a

    jr nc, jr_027_647c

    ld a, b
    add b
    ccf
    ret nz

    ld c, $0f
    sub h
    rra
    db $e4
    ccf
    call z, $ccff
    rst $30
    ld hl, sp-$01
    ret nz

    rst $38
    rlca
    rst $38
    jr @-$17

    ld [$1df7], sp
    ld [c], a
    dec de
    db $e4
    rst $10
    jr z, jr_027_64aa

    jr nc, jr_027_64b3

    add hl, hl
    rst $28
    stop
    rst $38
    nop
    rst $38
    db $10
    cp $14
    db $fc
    ld [$10f8], sp
    ldh a, [rP1]
    ldh [$60], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$e0]
    ldh a, [$e0]
    ldh a, [$e0]
    ldh a, [$e0]
    ldh a, [$e0]
    ldh a, [$e0]
    ldh a, [$e0]
    ld hl, sp+$1a
    db $e4
    rra
    ld a, [c]
    sbc a
    ldh a, [$8f]
    ld [hl], b
    adc a
    ld a, b
    rst $00
    ld a, b
    jp $f13c


    ld c, $fd
    inc bc
    rst $38
    nop
    cp $00
    db $fc
    nop
    ld sp, hl
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add hl, bc
    db $fc
    rst $38
    rla
    db $fc
    inc c
    ldh a, [$78]
    ret nz

    ldh a, [rP1]
    db $e3
    nop
    db $fd
    inc bc
    inc sp
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
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    inc bc
    rst $38
    db $fc
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
    nop
    rst $38
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
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    ld [hl], a
    adc a
    or a
    ld c, a
    scf
    ld c, a
    ld d, a
    cpl
    rlca
    ccf
    rlca
    ccf
    rlca
    ccf
    rlca
    ccf
    rlca
    ccf
    rlca
    ccf
    rlca
    ccf
    rlca
    ccf
    inc bc
    ccf
    ld b, e
    ccf
    inc bc
    ld a, a
    add e
    rra
    inc bc
    rrca
    add e
    rrca
    add e
    rrca
    add e
    adc a
    ld b, e
    adc a
    db $e3
    adc a
    inc bc
    rst $38
    jp $c3ff


    ld b, e
    db $e3
    ld h, e
    db $e3
    ld h, e
    db $e3
    db $e3
    jp $e3c3


    and e
    jp $fbfb


    add e
    ei
    add e
    inc bc
    ld a, e
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
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    and $00
    add $00
    rra
    nop
    ld a, a
    nop
    sbc a
    ld a, b
    rst $38
    ld e, b
    ld e, a
    ldh a, [$7f]
    jp nz, $ff07

jr_027_6612:
    inc bc
    rst $38
    adc [hl]
    ld a, a
    cp b
    ld a, [hl]
    jr nz, jr_027_6612

    add b
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
    rra
    rra
    ldh [rIE], a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $fefe
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ld bc, $7f01
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
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld bc, $3f01
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ld bc, $7f01
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
    cp $ff
    ld hl, sp-$01
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    rra
    rra
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    nop
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    cp $ff
    nop
    rst $38
    ld b, $f9
    inc b
    ld sp, hl
    nop
    rst $38
    add b
    rst $38
    cp $ff
    nop
    rst $38
    ldh [rIE], a
    rst $38
    rra
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
    ldh a, [rIF]
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
    rrca
    rrca
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rIF]
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    add b
    rst $38
    add b
    rst $38
    add b
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
    add b
    add b
    nop
    add b
    nop
    db $fc
    ld a, h
    add e
    ld a, a
    add b
    ld a, a
    db $fc
    ld a, a
    rst $38
    inc bc
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
    cp $01
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
    nop
    rst $38
    nop
    rst $38
    ld bc, $feff
    cp $ff
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
    nop
    nop
    nop
    nop
    nop
    cp $fe
    ld bc, $00ff
    rst $38
    cp $ff
    rst $38
    ld bc, $ff00
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    nop
    rst $38
    db $fc
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
    nop
    nop
    nop
    nop
    nop
    rrca
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
    ccf
    rst $38
    ret nz

    ret nz

    nop
    nop
    rst $38
    nop
    rst $38
    ret nz

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
    add b
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
    rst $38
    rst $38
    nop
    rst $38
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
    nop
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
    rlca
    rlca
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
    rlca
    rst $38
    ld hl, sp-$08
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
    nop
    rst $38
    nop
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
    nop
    rst $38
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
    inc bc
    nop
    rrca
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    rst $38
    nop
    rst $38
    ld a, a
    add b
    nop
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
    rst $38
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
    db $fc
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
    rst $38
    rst $38
    nop
    rra
    nop
    nop
    nop
    rst $38
    nop
    cp $01
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ret nz

    ccf
    add b
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
    ld bc, $c1c1
    ccf
    rst $38
    ld bc, $c13f
    ld bc, HeaderManufacturerCode
    ld bc, $0101
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
    ldh a, [rIF]
    cp $01
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
    db $fc
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
    inc bc
    rst $38
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    ccf
    rrca
    ld e, $0f
    ld c, $07
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    dec bc
    rrca
    dec bc
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
    rla
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
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
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
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
    db $10
    db $10
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
    add b
    add b
    ld a, a
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    cp a
    ld a, a
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    rra
    ccf
    inc e
    rra
    inc e
    rra
    inc e
    rra
    inc c
    rra
    ld c, $0f
    ld c, $0f
    ld c, $0f
    rlca
    rrca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0103
    ld bc, $0101
    ld bc, $0001
    ld bc, $0000
    nop
    nop
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rra
    rst $38
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    nop
    nop
    inc b
    inc b
    ld b, $06
    add hl, de
    add hl, de
    dec sp
    dec sp
    inc sp
    inc sp
    ld h, a
    ld h, a
    ld l, a
    ld l, a
    rst $00
    rst $00
    cpl
    cpl
    ld d, a
    ld d, a
    rlca
    rlca
    rlca
    rlca
    ld c, a
    ld c, a
    dec c
    dec c
    rlca
    rlca
    dec bc
    dec bc
    ld bc, $0501
    dec b
    inc bc
    inc bc
    dec bc
    dec bc
    adc e
    adc e
    adc a
    adc a
    adc a
    adc a
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
    rra
    rra
    rrca
    rrca
    rra
    rra
    rla
    rla
    rra
    rra
    rra
    rra
    rra
    rra
    ld b, $06
    ld bc, $0301
    inc bc
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld b, $06
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    db $10
    db $e3
    db $10
    db $e3
    jr @-$17

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
    ld [hl], b
    ldh a, [$c0]
    jr nc, jr_027_6b2d

    add b
    ld [hl], b
    add b
    ld a, [c]
    adc d
    or b
    ret z

    ld a, b
    ld b, h
    ld e, b
    ld h, h
    ld a, c
    ld h, c
    inc l
    jr nc, jr_027_6b1b

    jr nc, jr_027_6af5

    add hl, de
    rst $10
    ret c

    adc a
    ld [$5e99], sp
    rst $08
    inc l
    call nz, $e527
    ld b, $e4
    dec b
    ld h, d
    add e
    db $e3
    add e
    pop hl
    add c
    and c

jr_027_6af5:
    pop bc
    ld b, d
    ld [hl], d
    cp c
    add c
    ld e, h
    ld h, b
    ld e, c
    ld h, l
    ld l, $31
    dec l
    inc sp
    inc l
    ld [hl-], a
    ld e, $11
    ld d, $18
    inc de
    inc e
    rra
    jr jr_027_6b12

    ld b, $0f
    ld c, $f0
    rst $38

jr_027_6b12:
    ld a, b
    rst $38
    ld a, d
    ld a, a
    ld a, b
    ld a, a
    ld a, b
    ld a, a
    inc a

jr_027_6b1b:
    ld a, a
    inc a
    ccf
    inc a
    ccf
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c

jr_027_6b2d:
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_027_6b53

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

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2e
    cpl
    jr nc, @+$30

jr_027_6b53:
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld [hl], $38
    ld l, $39
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld [hl], $3e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld [hl], $3f
    ld l, $40
    ld l, $41
    ld b, d
    ld [hl], $36
    ld b, e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld [hl], $44
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld b, d
    ld [hl], $36
    ld c, c
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld [hl], $4a
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld l, $2e
    ld l, $2e
    ld l, $36
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
    ld l, $2e
    ld l, $2e
    ld l, $36
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
    ld l, $2e
    ld l, $2e
    ld l, $36
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld l, $71
    ld [hl], d
    ld [hl], e
    ld l, $2e
    ld [hl], $74
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
    ld l, $2e
    ld [hl], $81
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
    ld l, $2e
    ld [hl], $8e
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
    ld l, $2e
    ld [hl], $9b
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    and h
    ld [hl], $a5
    ld l, $2e
    ld l, $a6
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
    ld [hl], $2e
    ld l, $2e
    ld l, $b1
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    ld a, b
    cp c
    cp d
    cp e
    cp h
    ld l, $2e
    ld l, $bd
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c3b7

    call nz, $c6c5
    rst $00
    ret z

    ld l, $2e
    ld l, $c9
    ld [hl], $ca
    set 1, h
    call $cfce
    ret nc

    add hl, de
    add hl, de
    pop de
    jp nc, $2e2e

    ld l, $d3
    call nc, $d6d5
    rst $10
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    ld l, $2e
    db $76
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $02
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld b, $06
    inc b
    dec b
    rlca
    rlca
    ld [bc], a
    rlca
    nop
    ld b, $01
    inc b
    ld b, $01
    ld bc, $0001
    nop
    inc b
    dec b
    nop
    rlca
    ld [bc], a
    rlca
    nop
    nop
    nop
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    nop
    rlca
    rlca
    rlca
    nop
    nop
    nop
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    rlca
    nop
    rlca
    nop
    nop
    nop
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    dec b
    rlca
    rlca
    rlca
    nop
    nop
    nop
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    dec b
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    dec b
    rlca
    rlca
    nop
    nop
    rlca
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
    dec b
    rlca
    rlca
    rlca
    rlca
    rlca
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
    dec b
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    ld b, $00
    dec b
    dec b
    dec b
    nop
    nop
    nop
    inc b
    dec b
    nop
    ld bc, $0101
    inc bc
    inc b
    ld bc, $0505
    dec b
    dec b
    nop
    nop
    nop
    inc b
    dec b
    nop
    ld bc, $0501
    inc bc
    inc b
    inc b
    inc b
    inc b
    dec b
    dec b
    nop
    nop
    nop
    inc b
    dec b
    nop
    inc b
    inc b
    inc bc
    inc bc
    inc b
    inc b
    ld bc, $0504
    dec b
    nop
    nop
    nop
    inc b
    dec b
    rlca
    rlca
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    nop
    nop
    nop
    nop
    nop
    inc b
    dec b
    rlca
    rlca
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    nop
    nop
    nop
    nop
    nop
    inc b
    dec b
    ld b, $06
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    inc b
    inc b
    ld b, $05
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    inc b
    nop
    ld b, $05
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    ld bc, $0401
    nop
    nop
    nop
    nop
    inc b
    nop
    ld b, $04
    inc b
    inc b
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
    rst $30
    rst $30
    rst $30
    rst $30
    push af
    push af
    or l
    or l
    push af
    push af
    ei
    ei
    push af
    push af
    ei
    ei
    di
    di
    db $db
    db $db
    ei
    ei
    ld a, e
    ld a, e
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
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
    cp a
    cp a
    rst $38
    rst $38
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
    ccf
    ccf
    inc bc
    inc bc
    nop
    nop
    rst $38
    rst $38
    ret nz

    rst $38
    ld [bc], a
    sbc $00
    jp z, $e301

    ld b, e
    db $e3
    add c
    db $e3
    db $db
    rst $38
    adc c
    add hl, bc
    ld hl, sp+$78
    ld a, [c]
    ld [hl], d
    db $db
    ld d, e
    ld sp, hl
    ld [hl], c
    ld h, a
    ld h, c
    ldh a, [$f4]
    ld a, [c]
    or $fa
    ld a, [$eaea]
    ld d, b
    xor h
    ld d, b
    xor [hl]
    ld [hl-], a
    ld a, [bc]
    jr nc, jr_027_6e4c

    nop
    nop
    nop
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
    add $c6
    ret nz

    ret nz

    ld [$1008], sp
    db $10
    jr nz, jr_027_6e54

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a

jr_027_6e4c:
    ld bc, $0300
    nop
    rrca
    ld [$0007], sp

jr_027_6e54:
    rrca
    nop
    ccf
    jr nz, jr_027_6e78

    nop
    inc de
    ld [de], a
    cp $81
    sbc h
    inc bc
    db $fc
    inc bc
    jr c, jr_027_6e6b

    pop af
    rrca
    di
    rrca
    rst $20
    rra
    rst $20

jr_027_6e6b:
    rra
    ld e, [hl]
    ld a, $ce
    ld a, $ec
    ld a, h
    inc e
    db $fc
    jr @-$06

    add sp, -$18

jr_027_6e78:
    ld a, b
    ld a, b
    or b
    or b
    scf
    or a
    rst $38
    ldh a, [$f7]
    ld hl, sp-$06
    push hl
    sbc [hl]
    add c
    call nz, $bcc3
    add e
    inc a
    inc bc
    dec bc
    rlca
    ld sp, hl
    add a
    ld sp, $1e0f
    ld c, $73
    rrca
    ld hl, $5e1d
    ld a, [hl]
    ld b, $3e
    ld [bc], a
    ld a, [hl-]
    inc a
    inc a
    ld sp, $19fe
    cp $0c
    rst $38
    sbc l
    rst $38
    ld b, l
    rst $38
    ld c, $ff
    rlca
    rst $38
    daa
    rst $38
    db $ec
    db $ec
    db $f4
    db $f4
    ld a, [$f2fa]
    ld a, [c]
    ld sp, hl
    ld sp, hl
    db $f4
    db $f4
    db $fc
    db $fc
    ldh a, [$f0]
    ld a, [$f8fa]
    ld hl, sp-$04
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    cp $fe
    ei
    ei
    ei
    ei
    db $fc
    db $fc
    cp $fe
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
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    inc a
    inc a
    rst $38
    rst $38
    inc bc
    rst $38
    nop
    rlca
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    add b
    add c

jr_027_6f00:
    ld b, b
    pop bc
    cp [hl]
    pop bc
    sbc [hl]
    pop hl
    sbc [hl]
    pop hl
    sbc [hl]
    pop hl
    adc [hl]
    pop af
    jp z, Jump_000_02f5

    db $fc
    ret nc

    db $fc
    and d
    db $fc
    inc de
    db $ec
    set 6, h
    cp c
    and $81
    cp $61
    rst $38
    cp a
    rst $38
    ret nz

    ret nz

    ld b, b
    ld h, b
    ld h, b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld h, b
    ld h, b

jr_027_6f4a:
    db $fc
    inc c

jr_027_6f4c:
    db $e4
    inc e
    db $e4
    inc e
    call z, $cc3c
    inc a
    sbc b
    ld a, b
    sbc b
    ld a, b
    jr nc, jr_027_6f4a

    jr nc, jr_027_6f4c

    ldh [$e0], a
    jr nz, jr_027_6f00

    ret nz

    ret nz

    ret nz

    ret nz

    ld [hl], b
    ld [hl], b
    cp d
    add [hl]
    ld a, d
    ld b, $f3
    adc a
    ld [hl], d
    ld c, $76
    ld c, $64
    inc e
    db $e4
    sbc h
    call z, $c8bc
    cp b
    jr jr_027_6ff2

    jr jr_027_6ff4

    ldh a, [$f0]
    jr nc, @-$0e

    rrca
    rst $38
    ld e, $fe
    ld e, $fe
    ld e, $fe
    ld a, h
    db $fc
    inc a
    db $fc
    ld a, h
    db $fc
    ld a, h
    db $fc
    ld a, b
    ld hl, sp+$78
    ld hl, sp-$08
    ld hl, sp-$10
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$e0]
    ldh [rP1], a
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
    db $fc
    ld a, h
    add e
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

    ret nz

    ret nz

    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld a, a
    ld [bc], a
    ld a, l
    inc bc
    ld a, h
    ld bc, $013e
    ld a, $01
    ld a, $00
    ccf
    nop
    ccf
    rst $38
    rst $38

jr_027_6ff2:
    ldh [rIE], a

jr_027_6ff4:
    rst $38
    rst $38
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
    nop
    ld a, a
    add b
    rst $38
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    rrca
    ldh a, [$3f]
    ldh a, [$3f]
    ldh a, [rIE]
    ldh a, [$f0]
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$01
    rst $38
    ld hl, sp-$08
    rst $38
    add sp, -$08
    ret z

    ld hl, sp-$18
    ld hl, sp-$08
    ld hl, sp-$04
    db $fc
    db $fc
    db $fc
    db $fc
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
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
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
    rst $38
    nop
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
    nop
    nop
    nop
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
    cp $ff
    ld d, d
    rst $38
    dec e
    ld [c], a
    dec c
    ld a, [c]
    push bc
    ld a, [hl-]
    dec d
    ld [$728d], a
    adc c
    db $76
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    cp $ff
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
    rra
    ldh [rIE], a
    rra
    rst $38
    ldh [$e0], a
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
    ldh a, [rIE]
    rrca
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
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $fffe
    ld bc, $feff
    cp $00
    nop
    nop
    add b
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
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    nop
    nop
    ldh [$e0], a
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
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    nop
    ret nz

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
    rst $38
    nop
    rst $38
    rra
    ldh [rIE], a
    rra
    rst $38
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp-$01
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
    ld b, $07
    dec bc
    rrca
    ld [$100f], sp
    rra
    inc de
    rra
    inc hl
    ccf
    ld [hl+], a
    ccf
    ld a, [hl-]
    ccf
    ld a, [hl+]
    ccf
    dec sp
    ccf
    dec hl
    ccf
    ld sp, $393f
    ccf
    add hl, sp
    ccf
    add hl, hl
    ccf
    add hl, sp
    ccf
    ld sp, $393f
    ccf
    add hl, sp
    ccf
    ld sp, hl
    rra
    pop af
    rra
    pop af
    rra
    pop af
    rra
    pop af
    rra
    pop af
    rra
    push af
    rra
    rst $30
    rra
    rst $30
    rra
    rst $30
    rra
    rst $30
    rra
    rst $30
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    db $fc
    rra
    ldh [$3f], a
    ldh a, [$3f]
    ld hl, sp+$3f
    rst $38
    ccf
    ld hl, sp+$3f
    ld hl, sp+$3f
    ld hl, sp+$3f
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    rst $38
    db $fc
    ccf
    db $fc
    rst $38
    inc a
    ccf
    inc a
    ccf
    inc e
    rra
    ldh a, [rP1]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    rra
    rst $30
    rst $38
    add a
    rst $38
    ld d, a
    rst $38
    ld c, a
    rst $38
    ld l, a
    rst $38
    ld b, d
    rst $38
    rst $28
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    daa
    ldh [$cf], a
    ret nz

    sbc a
    nop
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
    ld bc, $01fe
    cp $03
    db $fc
    ld b, $f9
    dec bc
    db $f4
    rra
    ldh [rNR30], a
    push hl
    rrca
    ldh a, [$03]
    db $fc
    dec b
    ld a, [$00fd]
    ldh a, [rP1]
    ld [c], a
    nop
    rst $20
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    add b
    rst $38
    db $fc
    rst $38
    ld a, [c]
    db $fd
    add b
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
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

    nop
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
    nop
    rst $38
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

jr_027_73a4:
    nop
    nop
    add b
    add b
    ldh [$e0], a
    jr jr_027_73a4

    inc c
    db $fc
    sub d
    cp $35
    rst $38
    jr nc, @+$01

    or h
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    sub c
    rra
    call $c70f
    rlca
    rst $20
    rlca
    rst $00
    rlca
    rst $00
    rlca
    and a
    rlca
    rla
    rlca
    ld d, a
    rlca
    ld e, $07
    cp [hl]
    rlca
    ld a, [hl]
    rlca
    ld a, [hl]
    rlca
    cp $07
    cp $07
    sbc [hl]
    rlca
    ld c, $07
    ld a, $07
    ld a, [hl]
    rlca
    ld a, [hl]
    rlca
    cp $07
    cp $07
    cp $07
    cp $07
    cp $ff
    inc bc
    rst $38
    db $10
    rst $38
    cp a
    ld b, b
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    ld [bc], a
    rst $38
    ld bc, $02ff
    rst $38
    ld [bc], a
    rst $38
    dec c
    rst $38
    dec bc
    rst $38
    inc b
    rst $38
    add hl, bc
    rst $38
    inc de
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
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
    nop
    nop
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
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    ld de, $1302
    adc d
    sbc e
    adc b
    sbc l
    ld c, h
    db $dd
    ld c, [hl]
    rst $18
    ld b, b
    rst $18
    ret nz

    ldh [$c0], a
    ldh [rLCDC], a
    ret nz

    ret nz

    ret nz

    jp nz, Jump_027_4ec0

    ret nz

    ld a, [hl]
    ret nz

    ld a, [hl]
    ret nz

    ld a, [hl]
    ret nz

    ld a, [hl]
    ret nz

    ld a, [hl]
    ret nz

    ld a, a
    pop bc
    ld a, h
    ret nz

    ld a, b
    ret nz

    ld a, b
    ret nz

    ld a, b
    ret nz

    ld a, h
    call nz, $c47c
    ld a, [hl]
    add $7f
    rst $00
    ld a, a
    jp $c37f


    ld a, a
    jp $c17f


    rst $38
    pop bc
    rst $08
    pop af
    cp $01
    add b
    ld a, a
    ccf
    rst $38
    rst $30
    rst $30
    ld [hl], a
    rst $30
    scf
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    inc c
    nop
    ld a, [de]
    nop
    rla
    nop
    dec de
    inc b
    dec d
    nop
    inc a
    nop
    ld a, $08
    ccf
    ld b, $3f
    inc bc
    ccf
    nop
    ccf
    jr nz, jr_027_750e

    nop
    rra
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
    nop
    nop
    nop
    nop
    nop
    nop
    add b
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_027_750e:
    cp $01
    cp $01
    rst $38
    nop
    ld sp, hl
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    db $e3
    nop
    ccf
    ret nz

    ld a, $e1
    jr nc, @+$01

    jr @+$01

    inc c
    rst $38
    ld [bc], a
    dec d
    nop
    daa
    ld bc, $0064
    ld h, l
    nop
    ld h, [hl]
    nop
    adc $04
    add hl, de
    nop
    rra
    rst $38
    sub e
    rst $38
    db $fd
    sbc a
    db $fd
    sbc $bf
    cp [hl]
    sbc e
    sbc [hl]
    adc l
    adc a
    rst $30
    rst $38
    add a
    di
    rst $38
    di
    adc a
    ld sp, hl
    add a
    ld sp, hl
    add a
    ei
    add a
    ld sp, hl
    add a
    ei
    add a
    ei
    rlca
    inc bc
    rlca
    rrca
    rrca
    rlca
    rrca
    inc bc
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rra
    rlca
    ld a, a
    rla
    rst $38
    rrca
    rst $38
    rra
    ccf
    ld a, [hl]
    rst $38
    ld [hl], b
    rst $38
    ld bc, $00ff
    dec hl
    nop
    rlca
    nop
    ld b, $00
    add b
    nop
    ldh a, [$80]
    rst $38
    ld a, d
    rst $38
    rra
    rst $38
    nop
    rst $38
    nop
    xor $00
    db $fc
    nop
    ld a, a
    rrca
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
    ldh [$e0], a
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld a, a
    ld a, a
    rlca
    nop
    rrca
    nop
    rra
    nop
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
    jp $e13f


    rra
    pop af
    rrca
    ld [hl], c
    rrca
    add hl, sp
    rlca
    add hl, sp
    rlca
    dec sp
    rlca
    jr c, jr_027_75f9

    jr c, jr_027_75fb

    add hl, sp
    rlca
    jr c, jr_027_75ff

    ld a, c

jr_027_75f9:
    rlca
    ld [hl], c

jr_027_75fb:
    rrca
    ld [hl], e
    rrca
    rst $30

jr_027_75ff:
    rrca
    dec de
    rlca
    rra
    rlca
    add hl, sp
    rlca
    ld [hl], b
    rrca
    ld [c], a
    rra
    rst $20
    ccf
    rst $20
    ld a, a
    rst $08
    rst $38
    adc b
    scf
    db $10
    xor a
    nop
    sub d
    nop
    ccf
    nop
    ld a, $06
    ld a, b
    ld e, $20
    ld e, $60
    ld a, e
    cp $d3
    db $fc
    jp z, $827c

    db $fc
    ld b, $fc
    inc c
    db $fc
    sbc h
    di
    sbc a
    ldh [rNR23], a
    rst $20
    ld [hl], b
    ldh [rSVBK], a
    ret nz

    ldh a, [$80]
    ldh a, [$80]
    ldh a, [$90]
    ldh [$30], a
    ld hl, sp-$80
    ld hl, sp-$80
    ld hl, sp-$80
    ld hl, sp-$60
    ld hl, sp-$60
    ld hl, sp-$58
    db $fc
    and b
    db $fc
    or b
    db $fc
    and b
    db $fc
    and b
    xor $14
    cp $cc
    rst $38
    inc b
    rst $38
    ld [hl-], a
    rst $38
    inc bc
    rst $38
    ld [$02ff], sp
    nop
    rst $38
    jr z, @+$01

    nop
    ld a, a
    ld bc, $0037
    ld a, a
    nop
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    inc bc
    nop
    dec c
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
    inc bc
    inc bc
    inc c
    rrca
    jr nc, @+$41

    ret nz

jr_027_7690:
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    jr c, jr_027_7690

    ret nz

    ret nz

    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    sbc a
    ldh [$8f], a
    ldh a, [$8f]
    ldh a, [$87]
    ld hl, sp-$79
    ld hl, sp-$7d
    db $fc
    add e
    db $fc
    add c
    cp $00
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ldh [$f0], a
    ret z

    ld hl, sp-$78
    ld hl, sp-$58
    ld hl, sp-$40
    ld hl, sp-$80
    ld hl, sp-$78
    ld hl, sp+$18
    ld hl, sp+$28
    ldh a, [$f0]
    nop
    cpl
    rst $18
    cpl
    rst $08
    ld e, a
    cp a
    ld e, a
    sbc a
    ccf
    cp a
    ccf
    ccf
    nop
    add b
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

    ccf
    db $10
    rra
    jr @+$21

    jr jr_027_7716

    jr jr_027_7718

    jr jr_027_771a

    jr jr_027_771c

    jr jr_027_771e

    ld hl, sp-$01
    jr jr_027_7722

    ld hl, sp+$1c
    dec de
    rra
    inc e
    rrca
    ld c, $0f
    rrca
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    rst $38
    ld bc, $01ff
    rst $38

jr_027_7716:
    inc bc
    rst $38

jr_027_7718:
    nop
    rst $38

jr_027_771a:
    nop
    rst $38

jr_027_771c:
    nop
    rst $38

jr_027_771e:
    nop
    rst $38
    nop
    nop

jr_027_7722:
    nop
    nop
    nop
    nop
    add b
    nop
    ldh [$80], a
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    and b
    add e
    db $fc
    ld [de], a
    db $fc
    adc [hl]
    cp $0e
    cp $3c
    cp $70
    rst $38
    ld [c], a
    rst $38
    add b
    rst $38
    inc bc
    rst $38

jr_027_7742:
    ld c, $fe
    jr c, jr_027_7742

    jr nc, @-$0e

    ret nz

    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0601
    rlca
    jr jr_027_7776

    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    inc e
    db $fc
    ldh [$e0], a
    nop
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
    nop
    jr nc, jr_027_77f1

    rrca
    ld a, a
    ccf
    ld a, a

jr_027_7776:
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
    jr nc, jr_027_7801

    nop
    ld [hl], b
    nop
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
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
    rrca
    rst $38
    rrca
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
    ld bc, $fe01
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    cp $01
    nop
    rra
    nop
    cpl
    nop
    dec d
    nop
    dec bc
    nop
    dec d
    nop
    dec bc
    nop
    dec b
    nop
    ld a, [bc]
    nop
    dec b
    nop
    ld [bc], a
    nop
    ld bc, $0f00
    nop
    rst $38
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh a, [rIE]
    db $fc
    cp a
    cp a
    adc a
    adc a
    add e
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

jr_027_77f1:
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

jr_027_7801:
    nop
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
    inc c
    rrca
    ld [hl], b

jr_027_7810:
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc e
    db $fc
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    jr nz, jr_027_7810

    and b
    ldh [$a0], a
    ldh [$a0], a
    ldh [$a0], a
    ldh [$a0], a
    ldh [$a1], a
    ldh [$e1], a
    ldh [$03], a
    ldh [$f8], a
    rlca
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a
    ld bc, $0fff
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
    ccf
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
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $00ff
    cp a
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
    add b
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ld a, b
    nop
    rra
    nop
    inc bc
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
    ldh [rIE], a
    ld hl, sp-$01
    cp $1f
    rra
    rlca
    rlca
    ld bc, $0001
    nop
    nop
    ld bc, $0601
    rlca
    jr jr_027_78d8

    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    ld bc, $0fff
    cp $7f
    ldh a, [$8f]
    add b
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
    rra
    nop

jr_027_78d8:
    ld a, $01
    jr nz, jr_027_78fb

    inc bc
    ld a, a
    rra
    ld a, h
    dec e
    ld [hl], b
    rla
    ld [hl], b
    sbc a
    ld [hl], b
    sbc a
    ld [hl], b
    sub [hl]
    ld [hl], b
    sub b
    ld [hl], b
    sub b
    ld [hl], b
    sub c
    ld [hl], b
    ld [hl], e
    ld [hl], b
    db $76
    ld a, c
    ld [hl], b
    ld a, a
    add sp, -$09
    ld [c], a
    db $fd
    push hl

jr_027_78fb:
    ld a, [$f9e6]
    db $e4
    ei
    rrca
    ldh [$1f], a
    push hl
    ld [$1fe0], sp
    ldh [$1f], a
    ldh [$1f], a
    ldh [rP1], a
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
    nop
    nop
    db $fc
    rst $38
    ld hl, sp-$01
    nop
    db $fc
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and c
    nop
    ld h, e
    nop
    rra
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    nop
    nop
    nop
    add b
    nop
    ld hl, sp+$00
    rst $38
    ld a, a
    rst $38
    rra
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
    rrca
    ld [hl], b
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
    ld hl, sp+$07
    ret nz

    jr c, jr_027_7983

jr_027_7983:
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
    rst $38
    nop
    rst $38
    nop
    cp $01
    ldh [$1f], a
    inc bc
    rst $38
    ld a, $fc
    db $fc
    ret nz

    rst $38
    nop
    rst $38
    nop
    ld a, b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    db $10
    ld h, b
    ld [bc], a
    db $fc
    ld b, h
    nop
    or e
    nop
    or l
    nop
    or a
    nop
    ld e, a
    inc b
    sub a
    nop
    xor [hl]
    inc b
    ld [hl], h
    nop
    cp $70
    di
    ldh a, [$fd]
    nop
    rst $38
    nop
    db $fd
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    ld hl, sp+$01
    rst $38
    jr nz, jr_027_79fb

    db $10
    rrca
    ld [$0407], sp
    inc bc
    ld [bc], a
    ld bc, $0000
    ld bc, $0001
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc d
    inc d
    ld [$1009], sp
    rla
    jr nz, jr_027_7a1d

    ld h, b
    ld l, a
    ld h, b
    ld l, a
    ret nz

jr_027_79fb:
    ld c, a
    ret nz

    ld c, a
    ret nz

    ld c, a
    ret nz

    ld e, a
    add b
    rra
    add b
    rra
    nop
    ccf
    nop
    ccf
    nop
    ccf
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
    pop bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_027_7a1d:
    rst $38
    add b
    rst $38
    add b
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
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    ret nz

    jr c, jr_027_7a3d

jr_027_7a3d:
    ret nz

    nop
    nop
    db $fc
    inc bc
    ret nz

    ccf
    ld bc, $1fff
    cp $fb
    ldh [$2f], a
    nop
    ld bc, $0f00
    nop
    dec d
    nop
    nop
    nop
    ld bc, $0000
    nop

jr_027_7a58:
    nop
    nop
    nop
    nop
    inc bc
    nop
    add h
    inc bc
    ld a, c
    jr c, @+$5a

    ld [$0046], sp
    sub d
    nop
    db $e3
    add b
    ldh a, [$60]
    db $e3
    ret nz

    ld a, [c]
    ret nz

    rst $38
    add b
    db $dd
    nop
    cp $e0
    rst $38
    jr nc, jr_027_7a58

    nop
    ei
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    rst $38
    ccf
    ccf
    ret nz

    ret nz

    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ldh a, [$f0]
    rst $38
    rst $38
    ccf
    rst $38
    xor d
    nop
    ld d, b
    nop
    ret nz

    nop
    rrca
    nop
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$0f
    or $e0
    pop hl
    ldh a, [$f0]
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    rst $38
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
    db $fc
    inc bc
    ldh [rNR32], a
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
    rst $38
    nop
    rst $38
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
    ret nz

    nop
    rst $38
    inc e
    rst $38
    db $fc
    rst $20
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    ld sp, hl
    ld c, $f9
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld a, $2e
    ld e, [hl]
    ld l, h
    sbc h
    call c, $fc3c
    inc e
    ld e, h
    cp h
    db $fc
    inc e
    cp h
    ld e, h
    ld e, h
    cp h
    call c, Call_027_5c3c
    cp h
    inc e
    db $fc
    inc e
    db $fc
    ld a, b
    cp b
    ld a, b
    cp b
    cp b
    ld a, b
    ld a, b
    cp b
    ld hl, sp-$08
    ld hl, sp-$08
    rlca
    rst $38
    rlca
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
    rra
    rra
    ldh [$e0], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    ld bc, $10fe
    rrca
    call nz, $e0c3
    db $e3
    nop
    rra
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
    ccf
    rst $38
    ccf
    rst $38
    rst $38
    ld a, a
    rst $38
    rrca
    rrca
    nop
    nop
    nop
    ret nz

    nop
    ldh a, [$c0]
    cp $f0
    rst $38
    cp $00
    rst $38
    add b
    ld a, a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec b
    ld b, $06
    ld b, $06
    rlca
    rlca
    rlca
    rlca
    ld [$0908], sp
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc de
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

    ld hl, $2121
    ld hl, $2121
    ld [hl+], a
    inc hl
    inc h
    inc h
    dec h
    ld h, $27
    jr z, jr_027_7c62

    ld a, [hl+]
    ld hl, $2121
    ld hl, $2121
    dec hl
    inc l
    inc l
    inc l
    inc l
    dec l
    ld l, $2c
    inc l
    cpl
    ld hl, $2121
    ld hl, $2121
    jr nc, jr_027_7c83

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_027_7c93

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld hl, $3e21
    ccf

jr_027_7c62:
    ld b, b
    nop
    nop
    nop
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    nop
    nop
    nop
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
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    nop
    nop
    nop
    nop
    ld c, l
    ld c, [hl]
    nop
    nop

jr_027_7c83:
    nop
    nop
    nop
    nop
    nop
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    nop
    nop
    nop
    ld d, h
    nop
    nop

jr_027_7c93:
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    nop
    ld e, e
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
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, [hl]
    ld l, a
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    ld [bc], a
    nop
    ld b, $05
    dec b
    dec b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec b
    ld b, $06
    nop
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
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    dec b
    inc b
    inc b
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
    dec b
    dec b
    dec b
    dec b
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    ld bc, $0707
    rlca
    nop
    nop
    nop
    ld bc, $0404
    ld bc, $0401
    nop
    nop
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0206
    ld bc, $0101
    inc b
    ld bc, $0501
    ld bc, $0101
    ld bc, $0101
    inc b
    ld b, $02
    ld [bc], a
    ld bc, $0101
    ld bc, $0501
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0103
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
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
    add a
    inc bc
    rst $00
    add e
    jp $e381


    pop bc
    di
    ldh [$f8], a
    ldh a, [$f8]
    ldh a, [$fc]
    ld hl, sp-$04
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
    cp $fc
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
    cp $fe
    cp $fe
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
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop hl
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    inc bc
    rst $38
    ld [hl], c
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $30
    and c
    or l
    or l
    or l
    or l
    or l
    or l
    or l
    or l
    or l
    or l
    or l
    add h
    add h
    rst $28
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld a, [hl+]
    rst $38
    nop
    rst $38
    rst $38
    add b
    rst $38
    add b
    rst $30
    add b
    xor e
    add b
    pop de
    add b
    add b
    add b
    and b
    add b
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

    ret nz

    ret nz

    jp nz, $e0c0

    ret nz

    ret nz

    ret nz

    ret nc

    ret nz

    pop bc
    ret nz

    jp z, $d5c0

    ret nz

    rst $38
    ret nz

    sbc $40
    ret nz

    ld b, b
    ldh [rLCDC], a
    db $fc
    ld b, b
    cp $40
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    jr nc, jr_027_7f77

jr_027_7f77:
    jr nc, jr_027_7f79

jr_027_7f79:
    jr nc, jr_027_7f7b

jr_027_7f7b:
    jr nc, jr_027_7f7d

jr_027_7f7d:
    jr nc, jr_027_7f7f

jr_027_7f7f:
    jr nc, jr_027_7f81

jr_027_7f81:
    jr nc, jr_027_7f83

jr_027_7f83:
    jr nc, jr_027_7f85

jr_027_7f85:
    jr nc, jr_027_7f87

jr_027_7f87:
    jr nc, jr_027_7f89

jr_027_7f89:
    jr nc, jr_027_7f8b

jr_027_7f8b:
    jr c, jr_027_7f8d

jr_027_7f8d:
    jr c, jr_027_7f8f

jr_027_7f8f:
    jr c, jr_027_7f91

jr_027_7f91:
    jr c, jr_027_7f93

jr_027_7f93:
    jr c, jr_027_7f95

jr_027_7f95:
    jr c, jr_027_7f97

jr_027_7f97:
    jr c, jr_027_7f99

jr_027_7f99:
    jr c, jr_027_7f9b

jr_027_7f9b:
    jr c, jr_027_7f9d

jr_027_7f9d:
    jr c, jr_027_7f9f

jr_027_7f9f:
    jr c, jr_027_7fa1

jr_027_7fa1:
    ld bc, $0201
    inc bc
    inc c
    rrca
    db $10
    rra
    ldh [rIE], a
    nop
    rst $38
    nop
    ld hl, sp+$07
    rst $38
    ld hl, sp+$0f
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    ldh a, [rIE]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$9f]
    ldh a, [$5f]
    ldh a, [$bf]
    ldh a, [rIE]
    ldh a, [rVBK]
    ldh a, [rVBK]
    ldh a, [rVBK]
    ldh a, [rVBK]
    ldh a, [rVBK]
    ldh a, [$cf]
    ldh a, [rIF]
    ldh a, [$ef]
    ldh a, [$03]
    rrca
    add hl, bc
    rrca
    ld b, $0f
    inc bc
    rrca
    dec b
    rrca
    dec c
    rrca
    ld c, $0f
    rrca
    rrca
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f8]
    nop
    ld [$0c00], sp
    nop
    inc b
    nop
    ld b, $00
    ld [bc], a
