SECTION "ROM Bank $0be", ROMX[$4000], BANK[$be]

    ld e, $e1
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    ld a, a
    ld hl, sp-$41
    add e
    ld a, h
    jp $80ff


    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    ld hl, sp-$01
    cp $ff
    ld e, [hl]
    rst $38
    sbc a
    rst $38
    or a
    rst $38
    ei
    ld a, a
    db $fc
    rst $38
    rst $38
    rlca
    rst $10
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
    add b
    rst $38
    ld hl, sp-$01
    rlca
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    cp $00
    rst $38
    rst $38
    ccf
    ld a, [hl]
    rst $38
    ld [bc], a
    db $fd
    ld hl, sp+$07
    rlca
    ld hl, sp+$04
    ei
    ld a, a
    add b
    rst $38
    nop
    pop af
    ld c, $03
    db $fc
    rst $38
    nop
    rlca
    ld hl, sp+$1f
    ldh [rIE], a
    nop
    rla
    add sp, $25
    jp c, Jump_000_00ff

    ccf
    ret nz

    ld e, a
    and b
    ld e, a
    and b
    cpl
    ret nc

    dec de
    db $e4
    ld e, e
    and h
    ld c, a
    or b
    sbc [hl]
    ld h, c
    dec e
    ld [c], a
    nop
    nop
    nop
    nop
    nop
    ld bc, $fffe
    rst $38
    nop
    nop
    rst $38
    rlca
    ld hl, sp-$08
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $ffff
    cp $3e
    ret nz

    nop
    db $fc
    ld hl, sp+$00
    rst $38
    rst $38
    nop
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec sp
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld bc, $0fff
    cp $07
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_0be_40c0:
    rlca
    ld hl, sp-$49
    ret z

    adc $f1
    cp a
    ret nz

    rst $08
    ldh a, [$f3]
    db $fc
    di
    db $fc
    rst $08
    jr nc, jr_0be_40c0

    db $10
    di
    db $fc
    pop bc
    cp $f9
    ld b, $e3
    inc e
    nop
    rst $38
    xor [hl]
    pop af
    add hl, sp
    or $30
    rst $38
    inc bc
    db $fc
    nop
    rst $38
    ld [bc], a
    db $fd
    rst $18
    ldh [rIF], a
    ldh a, [rNR34]
    pop hl
    db $10
    rst $28
    sub a
    rst $38
    rst $18
    rst $38
    ldh [rIE], a
    call z, $c0ff
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    rst $38
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
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
    jr @+$01

    ldh a, [rIE]
    rst $38
    ld a, h
    rst $38
    nop
    rst $38
    nop
    db $fc
    jp $c3fc


    inc a
    jp $fffe


    ccf

jr_0be_4139:
    rst $08
    db $fc
    di
    ld a, [hl]
    add c
    rst $38
    rst $38
    rst $38
    ld e, $ff
    ldh [rIE], a

jr_0be_4145:
    nop
    rst $38
    rst $38
    ld a, l

jr_0be_4149:
    add e
    ld [hl], a

jr_0be_414b:
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], e
    adc a
    ld a, h
    cp a
    ldh a, [rIE]
    ccf
    rst $08
    jr nz, jr_0be_4139

    ld [hl], e
    adc a
    inc a
    rst $18
    jr @+$01

    ld b, [hl]
    cp a
    cpl
    rst $18
    jr nz, jr_0be_4145

    nop
    rst $38
    jr nz, jr_0be_4149

    jr nz, jr_0be_414b

    and b
    rst $18
    ret nc

    xor a
    ld b, b
    cp a
    ld a, $c1
    ccf
    rst $00
    rst $38
    pop af
    ld a, a
    sub b
    rst $38
    ld l, a
    rst $38
    ld hl, sp-$01
    cp $df
    pop hl
    rst $38
    ld hl, sp+$0b
    db $f4
    rlca
    ld hl, sp+$00
    rst $38
    ld a, b
    rst $38
    rlca
    rst $38
    ld bc, $fffe
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38

jr_0be_41a7:
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $00
    rst $38
    ldh a, [rIE]
    rrca
    rst $38
    rst $20
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    ldh a, [rIF]
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    dec sp
    rst $38
    inc e
    rst $38
    cpl
    rst $38
    rla
    rst $38
    inc bc
    rst $38
    add e
    rst $38
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    jr nc, jr_0be_41a7

    nop
    rst $38
    ld a, $ff
    nop
    rst $38
    jp Jump_000_213d


    sbc $8b
    ld a, a
    rst $18
    ccf
    rra
    db $fc
    rst $20
    db $db
    rra
    rst $20
    rst $38
    ld hl, sp+$7f
    rst $38
    ld a, [hl]
    rst $38
    inc de
    rst $38
    ld c, h
    rst $38
    cp l
    ld a, a
    add [hl]
    ld a, a
    ld b, h
    cp a
    ld hl, sp+$07
    call z, Call_0be_7033
    rst $38
    ld a, h
    rst $38
    ld hl, sp-$79
    cp $f9
    rst $38
    inc a
    rst $38
    ret nz

    cp $01
    db $fc
    inc bc
    rst $38
    rst $38
    db $fc
    inc bc
    rst $38
    rrca
    db $fc
    dec bc
    rst $38
    rrca
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    add e
    rst $38
    rst $38
    ld sp, hl
    rst $30
    rst $38
    rst $38
    call nc, $ffeb
    rst $38
    ld a, a
    rst $38
    jr nz, @-$1f

    nop
    rst $38
    di
    inc c
    di
    inc c
    db $fc
    ld [hl], e
    cp $e1
    ld e, e
    db $fc
    and a
    sub $f1
    ret


    ld [hl], h
    ld [$1a3c], a
    inc a
    ld [bc], a
    ld h, $12
    rlca
    pop af
    dec h
    ld [de], a
    inc h
    sub d
    nop
    ld a, [hl]
    inc h
    inc de
    ld bc, $01ff
    rst $38
    add l
    ei
    ld bc, $e7ff
    ei
    adc a
    ei
    db $fd
    ei
    ld hl, sp-$01
    nop
    rst $38
    ld [bc], a
    rst $38
    ld bc, $17fe
    ld hl, sp+$0a
    rst $38
    ld d, h
    rst $38
    inc l
    rst $38
    ld a, [c]
    rst $38
    ld hl, sp+$07
    rst $00
    ld hl, sp-$62
    pop hl
    ldh [$1f], a
    db $fc
    rst $38
    xor $ff
    db $fd
    inc bc
    ldh a, [$1f]
    rst $38
    ldh [rIE], a
    db $fc
    ld a, a
    cp $7f
    cp $ff
    db $fc
    sbc a
    rst $38
    adc e
    rst $38
    inc b
    rst $38
    db $fc
    rst $38
    ccf
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
    rst $38
    rst $38
    ld bc, $ffff
    rst $38
    rra
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    ld sp, $00ff
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    ld [c], a
    dec e
    nop
    rst $38
    nop
    rst $38
    rst $00
    ccf
    add e
    ld a, a
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    rrca
    ldh a, [rIE]
    nop
    pop bc
    nop
    add b
    add b
    ld b, b
    ld b, b
    jr nc, @-$4e

    adc h
    ld c, h
    db $e3
    inc de
    pop af
    adc l

jr_0be_42d8:
    ldh a, [$4e]
    rst $30
    jr c, jr_0be_42d8

    inc e
    rst $38
    ld b, $67
    sub e
    ld h, e
    sub h
    ld hl, $20d6
    rst $10
    ld hl, $21d6
    ld d, $00
    ld b, b
    ld hl, $0016
    rst $38
    rst $20
    rst $18
    ld a, c
    cp $ef
    rst $18
    nop
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $3f
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    ldh [$3f], a
    ldh a, [$cf]
    db $fc
    ccf
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    rst $38
    rrca
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr nz, @+$01

    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rrca
    ldh a, [rIF]
    ldh a, [rP1]
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
    rst $38
    nop
    rst $38
    nop
    swap h
    db $fd
    ld [bc], a
    db $fc
    inc bc
    ldh [$1f], a
    add d
    ld a, l
    cp [hl]
    ld b, c
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    add e
    ld a, a
    adc a
    ld a, a
    rst $08
    ccf
    cpl
    rra
    rla
    rrca
    dec d
    rrca
    dec d
    rrca
    ld d, $0f
    add [hl]
    rst $38
    ld [hl], d
    ld a, a
    rra
    sbc a
    rlca
    rst $20
    ld b, e
    cp e
    inc bc
    ld [hl], b
    add b
    cp b
    ld [c], a
    ld a, b
    ld d, d
    sub b
    nop
    rst $38
    nop
    rst $38
    rlca
    ld a, c
    nop
    add b
    rlca
    rst $38
    db $fc
    rst $38
    inc b
    rst $38
    cp $fd
    rlca
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    add b
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    cp $fd
    cp $fd
    rst $38
    rst $38
    cp $fd
    cp $fd
    rst $38
    rst $38
    cp $fd
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
    nop
    rst $38
    ret nz

    rst $38
    rst $38
    nop
    ld a, b
    rst $38
    rla
    ld hl, sp-$03
    inc bc
    rra
    ldh [rP1], a
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rst $38
    nop
    rst $38
    ld bc, $fe01
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    nop
    rst $38
    rlca
    ld hl, sp+$1f
    ldh [rP1], a
    rst $38
    inc bc
    db $fc
    rra
    ldh [rSB], a
    cp $e0
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ld a, [$ffff]
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
    ret nc

    rst $38
    ld b, b
    rst $38
    rlca
    ld hl, sp+$0c
    ldh a, [$b8]
    ret nz

    and b
    ret nz

    ldh [$c0], a
    jr nc, jr_0be_4434

    inc e
    call c, $e707
    sub c
    ld a, c
    sbc b
    ld a, [hl]
    ld [$059f], a
    rst $38
    inc bc
    inc bc
    ld a, a
    sbc a
    ld b, $fe
    dec bc
    rst $00
    inc bc
    dec b
    nop
    nop
    nop
    jr nz, jr_0be_441f

jr_0be_441f:
    rrca
    ld a, [c]
    dec c
    rlca
    ld hl, sp-$08
    rlca
    ret z

    scf
    nop
    rst $38
    cp b
    ld b, a
    add b
    rst $38
    ld c, $f1
    rst $28
    rst $38
    rst $30
    rst $38

jr_0be_4434:
    ld hl, sp-$01
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rrca
    rst $38
    rst $38
    nop
    add l
    ld a, [hl]
    cp $01

jr_0be_4446:
    nop
    rst $38
    rst $38
    nop
    inc bc
    db $fc
    inc a
    jp $3ff1


    rst $38
    nop
    adc a
    rst $38
    rst $00
    ccf
    ld b, c
    rst $38
    rlca
    ld hl, sp+$78
    add a
    add b
    ld a, a
    rst $38
    nop
    ld a, [hl]
    pop bc
    ret nz

    ccf
    adc b
    ld [hl], a
    ld a, a
    add b
    add h
    ld a, e
    inc b
    ei
    nop
    rst $38
    ld b, b
    rst $38
    db $fc
    rst $38
    rst $20
    ld hl, sp-$50
    ret nz

    ld b, b
    add b
    add c
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
    add b
    ret nz

    ld h, b
    ld h, b
    jr c, jr_0be_4446

    ld c, $ce
    ld c, a
    inc bc
    ld b, e
    or c
    ld b, c
    cp b
    ld b, b
    cp [hl]
    ret nz

    cp a
    nop
    rrca
    ld [$6c0f], sp
    adc a
    ld d, [hl]
    xor [hl]
    nop
    rst $38
    ld [bc], a
    inc c
    ld bc, $003e
    ccf
    nop
    nop
    add b
    ld a, $80
    jr c, @-$3b

    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    pop bc
    ld a, a
    rst $38
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
    rst $38
    ld a, a
    rst $38
    ld a, a
    rlca
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $d3
    ccf
    ld a, a
    ret nz

    add a
    ld hl, sp-$04
    add a
    adc d
    ld a, a
    nop
    rst $38
    db $10
    rst $38
    ld a, [$f11f]
    ld c, $f0
    rrca
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    ld hl, sp+$07
    db $fc
    inc bc
    ei
    inc b
    rst $38
    xor a
    rst $38
    add e
    rst $38
    add e
    rst $38
    add c
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_0be_4563

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0be_4517:
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
    ldh [$c0], a
    ld [hl], a
    ld a, b
    rra
    sbc a
    rlca
    rst $20
    ld b, b
    or c
    ld [hl], b
    adc h
    jr jr_0be_4517

    nop
    ld a, [hl]
    add b
    rst $38
    ld b, b
    rst $18
    ld [hl], b
    rst $38
    ld e, b
    sbc e
    cpl
    ld e, a
    dec de
    ld h, a
    rlca
    ld hl, sp-$3d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ldh a, [rIE]
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
    rst $38
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld [c], a
    db $fd
    ret nz

jr_0be_4563:
    ccf
    cp $7d
    ldh [rIE], a
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
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
    ld b, b
    cp a
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $28
    db $fc
    db $e3
    db $fc
    dec bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    rst $38
    nop
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
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    rst $38
    nop
    rst $08
    ldh a, [$fe]
    rst $38
    rrca
    rst $38
    ld bc, $0000
    rst $38
    nop
    ld c, [hl]
    nop
    rlca
    nop
    add a
    nop
    rst $00
    nop
    rst $08
    nop
    ld bc, $fefe
    add b
    ld a, [hl]
    rst $38
    rst $38
    ld h, b
    rst $38
    ld h, a
    rst $38
    ld a, b
    rst $38
    ld a, a
    rst $38
    ld h, c
    rst $38
    ld sp, hl
    rst $38
    ldh [rIE], a
    rst $18
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    rst $00
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    jp Jump_000_1fff


    ldh [$08], a
    rst $30
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$9f], a
    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
    ldh a, [rIE]
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
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
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
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$10ef], sp
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    ld l, a
    sub b
    rst $28
    db $10
    rst $28
    inc de
    rst $38
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
    rst $38
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rlca
    rst $38
    cp $ff
    nop
    rst $38
    ld hl, sp-$01
    db $e3
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    ld h, b
    rst $38
    rst $38
    rst $38
    ld [hl], d
    rst $38
    rrca
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ldh [rIE], a
    rrca
    rst $38
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
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    cp $ff
    ld bc, $81ff
    rst $38
    db $e3
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    add e
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
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
    rst $38
    nop
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
    rst $38
    rst $38
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

Jump_0be_473d:
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld bc, $0302
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
    dec b
    ld b, $07
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
    add hl, bc
    ld a, [bc]
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
    nop
    nop
    nop
    nop
    dec c
    ld c, $0f
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
    ld de, $1312
    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld d, $17
    jr jr_0be_479a

jr_0be_479a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld a, [de]
    dec de
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
    dec e
    ld e, $1f
    jr nz, jr_0be_47ba

jr_0be_47ba:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, $2322
    inc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec h
    ld h, $27
    jr z, jr_0be_47da

jr_0be_47da:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec l
    ld l, $2f
    jr nc, jr_0be_47fa

jr_0be_47fa:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, $3332
    inc [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec [hl]
    ld [hl], $37
    jr c, jr_0be_481a

jr_0be_481a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, sp
    ld a, [hl-]
    dec sp
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
    dec a
    ld a, $3f
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
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
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
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0001
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
    rlca
    ld bc, $0101
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
    rlca
    ld bc, $0100
    ld bc, $0707
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
    ld bc, $0000
    ld bc, $0707
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
    nop
    nop
    ld b, $06
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
    dec b
    rlca
    rlca
    ld b, $07
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
    ld b, $07
    rlca
    ld b, $07
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
    ld b, $06
    ld b, $06
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
    ld b, $02
    ld b, $06
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
    ld b, $07
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
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0001
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
    rlca
    ld bc, $0001
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
    rlca
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
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop

jr_0be_49b7:
    nop
    nop
    rlca
    rlca
    rlca
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
    ld a, e
    add b
    xor b
    ld d, h
    db $fc
    nop
    ld c, c
    nop
    ld [hl], l
    nop
    db $d3
    nop
    ld a, a

jr_0be_49dd:
    add b
    db $f4
    nop
    ld b, b
    add b
    ldh a, [rP1]
    ret nc

    jr nz, jr_0be_49b7

    jr nz, jr_0be_49dd

    nop
    ldh [rP1], a
    add sp, $00
    ld a, h
    nop
    cp c
    nop
    db $db
    nop
    cp $00
    rst $38
    nop
    sbc e
    nop
    ld sp, hl
    nop
    jp nz, $cd01

    nop
    ei
    nop
    ld l, d
    nop
    ld b, e
    db $10
    di
    nop
    xor a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_0be_4a65

    nop
    nop
    nop
    nop
    nop
    jr nz, jr_0be_4a18

jr_0be_4a18:
    jr nz, jr_0be_4a1a

jr_0be_4a1a:
    ld h, b
    nop
    nop
    nop
    ld d, [hl]
    nop
    nop
    nop
    jr c, jr_0be_4a24

jr_0be_4a24:
    ld h, b
    nop
    ret nz

    nop
    jr nc, jr_0be_4a2a

jr_0be_4a2a:
    nop
    nop
    nop
    nop
    nop
    nop
    add h
    nop
    ret nc

    nop
    jr nz, jr_0be_4a36

jr_0be_4a36:
    jr z, jr_0be_4a38

jr_0be_4a38:
    and b
    nop
    and b
    nop
    ret nc

    nop
    or b
    nop
    adc $00
    ret nc

    nop
    ret c

    jr nz, @+$52

    jr nz, @-$61

    nop
    sbc $00
    ld c, a
    nop
    ei
    nop
    dec a
    ld a, a
    ld a, e
    ccf
    dec hl
    ccf
    cpl
    dec e
    dec de
    dec c
    inc c
    rra
    ld [$191f], sp
    rrca
    ld [$040f], sp
    rrca
    inc c

jr_0be_4a65:
    rlca
    nop
    rlca
    rlca
    inc bc
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    nop
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
    nop
    nop
    nop
    stop
    nop
    nop
    and b
    nop
    rst $38
    nop
    ld e, a
    nop
    rla
    ld [$09f6], sp
    rst $38
    nop
    or e
    inc b
    rst $20
    nop
    db $fd
    ld [bc], a
    ld sp, hl
    ld [bc], a
    ld a, e
    nop
    ei
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    ld [bc], a
    cp $02
    ld e, a
    rst $38
    ccf
    rst $38
    cp $7f
    cp $7f
    cp $7f
    cp $7f

jr_0be_4abc:
    db $f4
    ld a, a

jr_0be_4abe:
    rst $38
    ld a, h
    ld a, e
    ld a, a
    dec de
    ld a, a
    ld a, [hl]
    ccf
    ld [hl], e
    ccf
    scf
    rra
    ccf
    rra
    rrca
    rra
    rrca
    rra
    rra
    ldh [$9f], a
    ld h, b
    rla
    add sp, -$0b
    ld a, [bc]
    rst $38
    nop
    rst $18
    jr nz, jr_0be_4abc

    jr nz, jr_0be_4abe

    jr nz, @+$01

    nop
    rst $38
    nop
    ld a, a
    add b
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    cp a
    ld b, b
    rst $30
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ccf
    nop
    rra
    ld b, b
    rst $18
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $28
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    db $ed
    inc [hl]
    rst $28
    inc [hl]
    db $eb
    inc [hl]
    rst $28
    inc [hl]
    db $db
    inc h
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    db $fd
    rst $38
    cp l
    rst $38
    cp a
    rst $38
    rst $28
    rst $38
    cp $ff
    ei
    rst $38
    cp $ff
    rst $28
    rst $38
    db $fd
    nop
    ei
    nop
    rst $38
    nop
    ld sp, hl
    nop
    call c, $fc20
    nop
    cp $00
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    ld a, a
    add b
    ccf
    ret nz

    ld a, e
    add h
    di
    inc c
    db $eb
    inc d
    ld a, [hl]
    add b
    ld h, [hl]
    nop
    ld [$ff00], a
    nop
    rst $28
    nop
    db $eb
    nop
    rst $38
    nop
    daa
    nop
    scf
    rst $38
    ld [hl], c
    cp a
    ld bc, $99ff
    ld h, a
    ld [c], a
    dec e
    di
    rrca
    jp c, $d227

    cpl
    add b
    ld a, a
    ld b, b
    rst $38
    ld b, b
    rst $38
    ldh [rIE], a
    and b
    ld a, a
    ld h, b
    rst $38
    db $e4
    rst $38
    db $fc
    rst $38
    ei
    nop
    cp $00
    ld a, a
    nop
    rst $38
    nop
    cp h
    ld [bc], a
    ld sp, hl
    ld b, $fd
    ld [bc], a
    rst $10
    ld a, [hl+]
    ret z

    or b
    sbc b
    ld h, b
    sub b
    ld h, b
    ld b, b
    ldh [$28], a
    ret nz

    xor h
    ld b, b
    ld a, h
    add b
    rst $10
    nop
    cpl
    ret nc

    and [hl]
    ld e, c
    ld b, h
    cp e
    ld a, a
    rst $38
    db $f4
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

    cp $c0
    cp $c0
    db $fc
    rst $38
    rst $38
    ret nz

    rst $38
    ret nz

    ld hl, sp-$40
    ldh a, [$c2]
    ldh a, [$c0]
    ldh [$c1], a
    ldh [$d0], a
    ret nz

    ret nz

    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $03
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [$f0]
    ldh a, [$e0]
    ldh [$e0], a
    ldh [rP1], a
    rst $38
    rst $38
    rst $38
    sbc b
    add b
    cp [hl]
    add b
    inc bc
    nop
    xor [hl]
    nop
    db $fc
    nop
    inc c
    nop
    ld a, [c]
    nop
    rra
    ldh [$e0], a
    rst $38
    rst $38
    rra
    rst $38
    nop
    ld a, h
    nop
    nop
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    xor a
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    nop
    rrca
    nop
    rrca
    nop
    ccf
    nop
    nop
    nop
    ld a, a
    nop
    ccf
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    xor a
    nop
    dec c
    ldh a, [$f7]
    ld hl, sp-$68
    inc e
    db $fd
    ld c, $fd
    ld b, $ed
    ld b, $fd
    ld b, $ff
    ld b, $c4
    ld b, $ff
    ld b, $05
    cp $fd
    cp $fd
    ld b, $06
    ld b, $86
    ld b, $26
    ld b, $56
    ld b, $06
    ld b, $ff
    rst $38
    ld b, $ff
    add h
    rst $38
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    rst $38
    nop
    ld bc, $f900
    nop
    db $fd
    nop
    db $fd
    nop
    ld h, e
    ld bc, $01ff
    ld [bc], a
    inc bc
    ld [de], a
    inc bc
    inc b
    rlca
    db $e4
    rlca
    add a
    rlca
    sub $07
    dec b
    dec b
    nop
    nop
    rra
    rra
    dec d
    rra
    dec hl
    ccf
    dec h
    ccf
    ld [hl+], a
    ccf
    ld b, e
    ld a, a
    ld b, d
    ld a, a
    ld a, a
    ld a, a
    ld b, d
    ld a, a
    ld l, e
    ld a, a
    rst $38
    ld e, l
    rst $38
    rst $38
    ld bc, $00ff
    rst $38
    ld hl, sp+$07
    rst $38
    nop
    cp $00
    ldh a, [rP1]
    db $fc
    nop
    ret nz

    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    halt
    xor e
    nop
    ld h, [hl]
    nop
    ld c, d
    nop
    ld b, d
    nop
    ld c, d
    nop
    rst $38
    nop
    and $b9
    cp c
    nop
    nop
    rst $38
    rst $38
    ld e, l
    rst $38
    xor d
    rst $38
    dec c
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$ffff], sp
    rst $38
    ld [$5aff], sp
    rst $38
    rst $38
    rst $28
    rrca
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld sp, hl
    ld bc, $0183
    rrca
    ld bc, $01c3
    rrca
    ld bc, $01c7
    add hl, de
    pop hl
    ld c, a
    pop hl
    sub a
    db $e3
    rst $00
    db $e3
    sbc a
    db $e3
    rst $08
    db $e3
    sbc e
    db $e3
    dec de
    db $e3
    ld b, e
    db $e3
    inc de
    db $e3
    add e
    inc bc
    inc sp
    jp $c3a3


    dec sp
    jp $c7bf


    xor a
    rst $00
    cp a

Call_0be_4cff:
    rst $00
    ld c, b
    rst $00
    ret c

    rst $00
    ld a, b
    rst $00
    ret c

    rst $00
    add sp, -$39
    ret c

    rlca
    ld hl, sp-$09
    ldh a, [rIE]
    rla
    rrca
    rra
    rrca
    rra
    rrca
    rrca
    rra
    ccf
    rra
    ld a, a
    rra
    ld a, a
    rra
    ld e, a
    ccf
    ld e, a
    ccf
    ld e, a
    ccf
    ld e, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    rra
    ccf
    ld a, l
    ccf
    ld e, a
    cp a
    ld e, a
    cp a
    ld e, a
    cp a
    ld c, $ff
    rra
    rst $38
    rla
    rst $38
    rra
    rst $38
    ld e, $ff
    cp a
    ld a, a

jr_0be_4d42:
    cp a
    ld a, a
    cp a
    ld a, a
    db $fc
    ld a, a
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, h

jr_0be_4d4d:
    rst $38
    ld a, a
    rst $38
    rst $38
    nop
    xor e
    ld b, b
    cp $00
    ld a, [hl]
    add b
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    db $ed
    ld [de], a
    jp hl


    ld [de], a
    cp a
    ld b, b
    db $fd
    ld b, b
    cp a
    ld b, b
    rst $38
    nop
    cp a
    nop
    cp [hl]
    nop
    scf
    rst $38
    scf
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ld l, a
    rst $38
    ld c, e
    rst $38
    rst $18
    rst $38
    xor d
    rst $38
    ld l, b
    rst $38
    ld d, b

jr_0be_4d83:
    rst $28
    ld h, l
    ei
    ld h, l
    ei
    ld [hl], d
    db $fd
    push bc
    ld a, [$f3cc]
    adc h
    di

jr_0be_4d90:
    ld a, d
    inc b
    rst $30
    inc c
    ld sp, hl
    inc e
    rst $38
    jr jr_0be_4d90

    jr jr_0be_4d42

    jr jr_0be_4d83

    jr jr_0be_4d4d

    db $10
    cp h
    ld [bc], a
    cp d
    ld b, $7b
    ld b, $ff
    ld b, $dc
    ld b, $7e
    inc b
    ld [$ff04], a
    nop
    ei
    rst $38
    xor l
    ei
    ld a, [hl]
    ld sp, hl
    cp [hl]
    ld sp, hl
    rst $10
    ld hl, sp-$0c
    ei
    jr nc, @+$01

    ld a, b
    or a
    call nc, $133b
    db $fc
    ld b, a
    cp b
    srl h
    sbc c
    ld l, [hl]
    pop bc
    ld a, [hl]
    pop bc
    ld a, [hl]
    pop de
    ld l, $f9
    add [hl]
    ld h, c
    sbc [hl]
    daa
    sbc d
    add hl, sp
    adc [hl]
    ld l, l
    cp d
    dec [hl]
    ld [$e09e], a
    sbc d
    ldh [$f6], a
    add b
    ld a, [c]
    nop
    ldh a, [rP1]

jr_0be_4de6:
    ld [c], a
    nop
    push hl
    nop
    and $00

jr_0be_4dec:
    db $ed
    ret nz

    db $e3
    call z, $c0ed
    rst $38
    ld b, b
    cp d
    ld h, h
    rst $38
    ld h, b
    and [hl]
    ldh [rNR12], a
    ldh [$b9], a
    ld b, b
    or d
    ld d, b
    scf
    ld hl, sp+$65
    cp b
    dec h
    ld hl, sp-$61
    ld h, b
    rra
    ldh [$d9], a
    jr nz, jr_0be_4de6

    jr nz, jr_0be_4dec

    jr nz, @+$76

    rlca
    ldh a, [rTAC]
    ld a, h
    inc bc
    ld l, l
    db $10
    ld l, l
    db $10
    ld l, a
    db $10
    ld a, [hl]
    nop
    db $76
    ld [$0cd1], sp
    di
    inc c
    ld a, $00
    ccf
    nop
    ld a, [hl+]
    nop
    ld [bc], a
    nop
    jr z, jr_0be_4e2e

jr_0be_4e2e:
    jr jr_0be_4e30

jr_0be_4e30:
    dec e
    nop
    rra
    nop
    rra
    nop
    ld h, a
    nop
    ld a, a
    nop
    ld a, [hl]
    nop
    rst $30
    nop
    cp $00
    db $dd
    nop
    rst $00

jr_0be_4e43:
    nop
    and $01
    call nz, $cf03
    nop
    add $00
    and h
    nop
    push af
    nop
    ld [hl], a
    nop
    rst $18
    nop
    db $fd
    nop
    ei
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    cp l
    nop
    di
    nop
    cp d
    nop
    ld a, $00
    ld l, [hl]
    nop
    halt
    cpl
    nop
    ld h, a
    nop
    cpl
    nop
    ld a, [de]
    nop
    rla
    nop
    rra
    nop
    rrca
    nop
    ld l, h
    nop
    ld l, c
    nop
    ld l, l
    nop
    xor $00
    xor [hl]
    nop

jr_0be_4e82:
    or b
    nop
    call z, $8900
    nop
    pop af
    nop
    halt
    rst $30
    nop
    ld a, [hl]
    nop
    ld sp, hl
    ld b, $eb
    inc b
    ld a, e
    inc b
    ld a, [c]
    inc c
    rst $10
    jr z, jr_0be_4e82

    jr jr_0be_4e43

    ld e, c
    rst $20
    jr @+$49

    cp b
    xor $30
    xor a
    ld [hl], b
    xor e
    ld [hl], b
    ld [$df71], a
    ld h, b
    ei
    nop
    ld h, e
    nop
    di
    nop
    db $e3
    nop
    xor a
    nop
    adc l
    ld [bc], a
    cp b
    rlca
    inc a
    inc bc
    rra
    nop
    cp a
    nop
    ld a, a
    nop
    push af
    ld [$00fc], sp
    cp [hl]
    nop
    cp [hl]
    nop
    ld a, $00
    inc sp
    nop
    inc hl
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
    ld [$0a09], sp
    dec bc
    nop
    nop
    nop
    nop
    nop
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $00
    nop
    nop
    nop
    nop
    rla
    jr jr_0be_4f11

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0be_4f21

    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0be_4f36

    ld a, [hl+]
    dec hl
    inc l
    nop

jr_0be_4f11:
    nop
    nop
    nop
    nop
    dec l
    ld l, $2f
    jr nc, jr_0be_4f4b

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    nop

jr_0be_4f21:
    nop
    nop
    nop
    nop
    jr c, jr_0be_4f60

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
    nop
    ld b, e

jr_0be_4f36:
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
    nop
    nop
    nop
    nop
    nop
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e

jr_0be_4f4b:
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    nop
    nop
    nop
    nop
    nop
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

jr_0be_4f60:
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
    ld l, l
    ld l, [hl]
    nop
    nop
    nop
    nop
    nop
    ld h, h
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
    nop
    nop
    nop
    nop
    nop
    ld h, h
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
    nop
    nop
    nop
    nop
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
    sbc b
    nop
    nop
    nop
    nop
    nop
    sbc c
    sbc d
    sbc e
    sbc h
    add hl, bc
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    nop
    nop
    nop
    nop
    nop
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
    or h
    or l
    or [hl]
    or a
    cp b
    nop
    nop
    nop
    nop
    nop
    cp c
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, Jump_000_00c3

    nop
    nop
    nop
    nop
    cp c
    call nz, $c6c5
    rst $00
    ret z

    ret


    jp z, $cccb

    call RST_00
    nop
    nop
    nop
    cp c
    cp c
    adc $cf
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $01
    ld bc, $0101
    ld bc, $0202
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
    ld bc, $0101
    ld bc, $0000
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
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
    nop
    ld bc, $0101
    ld bc, $0201
    ld bc, $0106
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0201
    ld bc, $0506
    dec b
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    ld bc, $0501
    dec b
    ld bc, $0201
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    nop
    nop

jr_0be_5130:
    ld bc, $0101
    ld bc, $0001
    nop
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0001
    nop
    inc bc
    ld bc, $0101
    ld bc, $0101
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

    jr nz, jr_0be_5130

    jr nc, @-$3e

    jr c, @-$3e

    dec a
    ret nz

    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [$1f], a
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    cp d
    rst $38
    rst $18
    ldh a, [$d0]
    rst $38
    call z, Call_0be_4cff
    rst $38
    ld c, a
    rst $38
    ld c, a
    rst $38
    ld b, a
    rst $38
    ld b, a
    rst $38
    ld b, a
    rst $38
    and e
    rst $38
    cpl
    ldh a, [$af]
    ld [hl], b
    ld e, a
    ldh [$bf], a
    jp Jump_000_06ff


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
    ld hl, sp-$01
    nop
    rst $38
    di
    rst $38
    ret nz

    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fd
    db $fd
    ei
    ei
    rst $38
    ld hl, sp-$01
    ei
    rst $38
    di
    rst $38
    rst $20
    rst $38
    sbc a
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
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    db $e3
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    jr nc, @+$01

    cpl
    rst $38
    ld h, a
    rst $38
    ret nz

    rst $38
    add e
    ld e, $e3
    dec e
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    db $fc
    nop
    ld sp, hl
    ld bc, $07ff
    rst $38
    rlca
    rst $38
    rlca
    db $fd
    ld b, $57
    xor d
    rlca
    ld a, [$fb06]
    add a
    ei
    rst $38
    rst $38
    db $ed
    rst $38
    ld bc, $ffff
    nop
    inc bc
    rst $38
    rra
    ldh [$1f], a
    ldh [rTAC], a
    rst $38
    nop
    rst $38
    xor b
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    ccf
    ld d, b
    cp a
    rra
    rst $38
    ld e, a
    cp a
    ld e, a
    rst $38
    rst $18
    rst $38
    ret nz

    rst $38
    cp $ff
    rst $38
    rst $28
    rst $38
    add sp, -$01
    rst $20
    rst $30
    rst $08
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    rlca
    add b
    add b
    ldh [rP1], a
    ldh a, [$f0]
    db $fc
    inc a
    jp Jump_000_3f81


    inc a
    ld a, a
    ld a, h
    rst $38
    add e
    rst $38
    sbc a
    rst $38
    ld a, [hl]
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
    db $fc
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $30
    ld hl, sp-$01
    rst $38
    rst $00
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ld a, a
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
    ld a, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    ccf
    call c, Call_0be_7e85
    add hl, de
    or $ab
    ld d, a
    ld a, l
    sbc [hl]
    pop af
    ld a, a
    add a
    rst $38
    ld c, a
    ld hl, sp-$10
    ld [bc], a
    pop bc
    ld [hl-], a
    rlca
    db $10
    rrca
    db $10
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $ff
    ld hl, sp-$01
    rst $38
    ld bc, $87ff
    add a
    ld a, a
    rst $38
    rra
    ld l, h
    rst $18
    rst $38
    rst $08
    ccf
    di
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    cp $ff
    pop hl
    rst $38
    ret nz

    rst $38
    rlca
    rst $18
    cp a
    rst $38
    rst $38
    ld a, [c]
    rst $38
    db $e4
    rst $38
    add sp, -$01
    rst $38
    nop
    rst $30
    db $fc
    rst $38
    inc bc
    db $fc
    db $fc
    ret nc

    di
    jp $c043


    inc a
    db $fc
    db $fc
    nop
    inc bc
    ld a, h
    inc bc
    ld a, a
    rrca
    ldh a, [$7f]
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
    rst $38
    nop
    ld a, e
    rst $38
    rst $38

jr_0be_5333:
    rst $38
    rst $38

jr_0be_5335:
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    dec a
    rst $38
    rst $38
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
    ld bc, $fbff
    db $fc
    di
    rst $38
    ld hl, sp-$04
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    rst $38
    rst $38
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
    ldh a, [$f0]
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rra
    rst $38
    pop hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    jr nz, jr_0be_5333

    jr nz, jr_0be_5335

    ldh [$e0], a
    sub b
    ldh [rNR10], a
    ldh [$90], a
    ldh [$90], a
    ldh [$9f], a
    ldh a, [rIE]
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret c

    rst $38
    ld a, a
    rst $38
    rst $28
    rst $38
    ldh a, [$f0]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc a
    rst $38
    rst $38
    rst $38
    inc e
    rst $38
    rra
    rst $38
    rst $38
    db $fc
    rst $38
    add e
    rst $38
    ldh [rIE], a
    rlca
    sub b
    cp $fe
    nop
    cp $ff
    add b
    rst $38
    add b
    add b
    ld bc, $003f
    add b
    inc a
    db $fc
    ld hl, sp+$01
    cp $0e
    add b
    db $fc
    nop
    inc bc
    rra
    rst $38
    rst $38
    rst $38
    ld bc, $7fff
    ld a, a
    rrca
    rst $38
    rst $38
    rst $38
    ld l, b
    rst $38
    ccf
    rst $38
    rst $18
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    add b
    ldh a, [rP1]
    rst $38
    ldh [$f0], a
    rra
    rst $38
    pop bc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
    ldh a, [$fe]
    nop
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    rst $28
    rra
    ccf
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    db $fc
    rst $38
    pop af
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ld a, b
    ld a, a
    rst $38
    rst $38
    ldh a, [rIE]
    cp $ff
    ldh [rIE], a
    ldh [rIE], a
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
    inc bc
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
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    db $fc
    db $fc
    db $e3
    db $e3
    inc bc
    inc bc
    add e
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    inc e
    rst $38
    rst $38
    db $fc
    ld hl, sp-$01
    rst $38
    db $fc
    rst $38
    inc bc
    rst $38
    rst $38
    add b
    ld a, [hl]
    db $fc
    db $fc
    nop
    inc bc
    rrca
    ld a, a
    nop
    rlca
    add [hl]
    add [hl]
    inc b
    ld a, a
    jp Jump_000_00ff


    rst $38
    rst $38
    rst $38
    cp $ff
    ld [hl], b
    ld a, a
    rst $38
    rst $38
    nop
    rst $38
    db $fc
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
    ret nz

    rst $38
    nop
    rst $38
    add b
    rst $38
    db $fc
    rst $38
    jr jr_0be_54ad

    ld c, $0e
    di
    ld [hl], e
    ld a, $fe
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    cp $ff
    rst $38
    ld hl, sp-$01
    ld h, e
    rst $38
    db $fc
    rst $38
    ccf
    rst $38
    nop
    nop
    inc e
    rst $38
    ld h, b
    rst $38
    add b
    rst $38
    nop

jr_0be_54ad:
    rst $38
    rst $38
    ccf
    rst $38
    jp $fefd


    rst $00
    ld sp, hl
    rst $38
    rst $38
    inc e
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    pop bc
    ldh a, [rIE]
    cp $ff
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rIE], a
    rra
    cp $ff
    pop hl
    rst $38
    ldh a, [$fe]
    ld bc, $fff0
    nop
    rst $38
    nop
    db $fc
    nop
    ret nz

    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    or b
    rst $38
    rst $38
    rst $28
    jr @+$01

    rst $38
    nop
    rlca
    ld sp, hl
    rst $38
    rlca
    ld b, $06
    add c
    add c
    ccf
    ccf
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    add b
    inc bc
    nop
    inc bc
    db $fc
    cp $ff
    ld a, $ff
    jp nz, Jump_000_07ff

    rst $38
    nop
    rst $38
    ld sp, hl
    rst $38
    cpl
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    cp $ff
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    ld a, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $00ff
    rst $38
    rra
    rra
    sbc a
    sbc a
    rlca
    rlca
    rst $38
    rst $38
    ldh a, [$f0]
    rst $38
    ccf
    rst $38
    rst $38
    inc a
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    ld hl, sp-$01
    ld b, b
    ld a, a
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
    rst $38
    rst $38
    or b
    ld a, a
    ret nz

    rst $38
    rst $38
    ld bc, $fe1f
    ld e, $e1
    ldh [$1f], a
    ccf
    ret nz

    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    nop
    rst $38
    nop
    cp $00
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
    rst $38
    rst $38
    nop

jr_0be_5592:
    rst $38
    rst $38
    ld a, h
    rst $38
    rra
    db $e3
    jr c, jr_0be_5592

    rlca
    rlca
    rst $38
    rst $38
    ld a, a
    ld a, b
    rst $38
    db $fc
    db $fc
    inc bc
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    rra
    ld hl, sp-$10
    ld a, a
    rst $38
    rst $38
    rst $00
    rst $00
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
    pop hl
    rst $38
    nop
    rra
    add b
    nop
    rst $38
    nop
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    rra
    rst $20
    rst $38
    ld hl, sp-$02
    pop bc
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    inc bc
    rrca
    rst $38
    add b
    rst $38
    nop
    ld hl, sp+$00
    rst $00
    ld bc, $ffff
    rst $38
    ldh [rIE], a
    rst $38
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
    ld [hl], b
    rst $38
    ret nz

    ret nz

    cp a
    ldh a, [rLCDC]
    rst $38
    ld h, c
    rst $38
    rra
    rst $38
    inc e
    rst $38
    ldh [rIE], a
    rra
    rst $38
    nop
    add e
    rrca
    rst $38
    ldh a, [rIE]
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
    db $fc
    rst $38
    jr @+$01

    ld a, a
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    nop
    add hl, sp
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
    ld bc, $ff00
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    cp $ff
    rst $38
    ld bc, $feff
    rst $38
    pop hl
    rst $30
    rrca
    ret nz

    ccf
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rlca
    cp $00
    nop
    rst $28
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    cp $ff
    nop
    rst $38
    rst $38
    rst $38
    rrca
    nop
    ldh a, [rP1]
    ldh a, [rIE]
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    ccf
    rst $38
    db $e3
    ld sp, hl
    rlca
    nop
    rst $38
    ldh [$7f], a
    db $fc
    cp $f9
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld h, b
    rst $38
    ldh [$f3], a
    rst $38
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    ld bc, $feff
    rst $38
    inc bc
    rst $38
    inc bc
    inc bc
    rst $38
    nop
    scf
    ld hl, sp-$40
    rst $38
    rst $08
    ldh a, [$3f]
    rst $30
    inc b
    ei
    add a
    ld hl, sp+$78
    rst $30
    cp a
    ret nz

    inc bc
    db $fc
    ld bc, $01fe
    ld a, $00
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
    nop
    ld b, $f9
    ld bc, $00fe
    rst $38
    add b
    rst $38
    pop af
    rst $38
    ld c, $ff
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
    db $fd
    add b
    ld a, a
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $28
    rst $28
    ldh a, [$7f]
    nop
    rst $38
    add b
    rst $38
    ld a, a
    rst $38
    ld bc, $feff
    rst $38
    nop
    ld hl, sp+$00
    rlca
    nop
    db $fc
    nop
    inc bc
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, b
    cp a
    ld a, a
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    ccf
    rst $38
    db $fd
    rst $38
    rst $38
    nop
    rlca
    ld bc, $fa02
    rst $38
    rst $38
    rst $38
    ld bc, $ffff
    add b
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
    ld a, [hl]
    ld hl, sp-$01
    ldh [rIE], a
    rst $38
    rst $38
    add b
    rst $38
    adc a
    rst $38
    ld a, b
    ld hl, sp-$01
    rst $38
    rlca
    rst $38
    rra
    rst $38
    nop
    rrca
    pop af
    pop af
    nop
    cp $fe
    cp $38
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    rst $38
    ld a, a
    rst $20
    rra
    cp $1f
    rst $38
    rst $38
    ldh a, [rIE]
    rrca
    rst $38
    rst $38
    nop
    add a
    ld a, b
    rst $38
    nop
    rra
    rst $38
    nop
    rst $38
    rst $38
    nop
    inc e
    db $e3
    rrca
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    ldh a, [rIF]
    rra
    ldh [rP1], a
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    ld a, h
    add b
    cp $bb
    ld [c], a
    rst $38
    add $c7
    pop af
    pop af
    ld e, e
    cp a
    ld b, e
    cp a
    ld a, a
    rst $38
    rst $38
    rst $38
    ldh a, [$fe]
    nop
    rst $38
    ld bc, $7f01
    db $fc
    nop
    rrca
    rrca
    rst $28
    nop
    pop hl
    cp $fe
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld hl, sp-$79
    add sp, -$09
    rra
    ldh a, [$fd]
    cp $ef
    ldh a, [rIE]
    ld c, a
    rst $38
    add b
    nop
    ld bc, $e0ff
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    sbc a
    ld a, a
    ld a, a
    nop
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    sub b
    ldh a, [$e0]
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    nop
    ld a, a
    nop
    nop
    rra
    rst $38
    nop
    db $fc
    nop
    rst $38
    pop af
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $08
    rst $38
    ld [hl], e
    rst $38
    rst $38
    rra
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld bc, $efff
    rra
    ldh [$1f], a
    rra
    ldh [rP1], a
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    ld hl, sp-$01
    ccf
    rst $38
    cp $01
    rrca
    ldh a, [rIE]
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    ld a, a
    nop
    rst $38
    nop
    pop bc
    ld bc, $f0ff
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ret nz

    rst $00
    inc b
    ccf
    jr c, @+$01

    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ldh a, [$03]
    db $fc
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld bc, $fe81
    cp $0f
    rst $38
    rst $38
    rst $38
    add e
    rst $38
    rra
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    ccf
    ccf
    cp $ff
    db $fc
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rra
    rst $38
    db $fc
    rst $38
    ld b, b
    ld a, a
    nop
    rst $38
    ldh a, [$f0]
    nop
    rst $38
    rst $38
    rst $38
    ld a, b
    rst $38
    add b
    rst $38
    rra
    rra
    nop
    rlca
    rst $08
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    dec de
    rst $38
    rst $38
    rst $38
    inc a
    rst $38
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38

jr_0be_58b9:
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    db $e3
    rst $38
    rst $38
    rst $38
    ld [$ffff], sp
    nop
    rlca
    rst $38
    nop
    rst $38
    rlca
    rst $38
    ld a, b
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    nop
    rst $38
    nop
    rst $38
    cp $ff
    ld bc, $1eff
    rst $38
    ldh [rIE], a
    ld a, a
    ld a, a
    rlca
    ld hl, sp-$41
    rst $00
    pop bc
    ccf
    jr c, jr_0be_58b9

    rlca
    ld hl, sp+$1c
    rst $38
    ld de, $fffe
    nop
    rst $38
    ld hl, sp-$08
    rlca
    rst $38
    rra
    rst $38
    ld e, a
    rst $38
    ldh [rIE], a
    rst $38
    ccf
    ccf
    add b
    pop bc
    nop
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ldh [rIE], a
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    add b
    ld a, a
    rst $38
    add b
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
    db $fc
    rst $38
    ld a, b
    rst $38
    add b
    rst $38
    rlca
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    inc bc
    ccf
    rra
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    add b
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    rlca
    ld hl, sp-$01
    ldh a, [$03]
    db $fc
    cp $23
    rst $38
    nop
    ld a, a
    rst $38
    pop hl
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    cp $01
    db $fc
    inc bc
    rst $28
    stop
    rst $38
    nop
    rst $38
    inc e
    rlca
    inc e
    rlca
    inc e
    rlca
    inc e
    rlca
    inc e
    rlca
    inc e
    rlca
    inc e
    rst $20
    inc e
    rst $20
    inc c
    rst $30
    adc h
    rst $30
    inc b
    rst $38
    inc b
    rst $38
    db $e4
    rra
    db $e4
    rst $38
    inc b
    rst $38
    rst $38
    rst $38
    ld b, $ff
    db $fc
    rlca
    ld h, h
    sbc a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    ret nz

    db $eb
    db $fc
    ret


    rst $38
    rst $38
    nop
    rst $38
    ret nz

    db $fd
    add a
    rst $38
    rst $38
    ld a, a
    rrca
    rst $38
    di
    rst $38
    rst $08
    push bc
    ccf
    db $fd
    rlca
    rst $38
    add c
    ei
    rst $00
    rst $38
    inc bc
    ld sp, hl
    rst $00
    rst $00
    jr c, jr_0be_59d6

    ld hl, sp-$08
    rlca
    nop
    rst $38
    rlca
    rst $38

jr_0be_59d6:
    ld [$08ff], sp
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    ld hl, sp-$01
    cp $ff
    rra
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0be_59ef:
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
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ret nz

    db $fc
    nop
    di
    rst $08
    adc $03
    inc a
    db $fc
    inc bc
    nop
    rst $38
    rst $38
    rrca
    ld hl, sp+$7f
    nop
    rst $38
    rst $38
    ccf
    rst $38
    ret nz

    rst $38
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    ld a, a
    add b
    jr c, jr_0be_59ef

    rlca
    ld hl, sp-$08
    rlca
    nop
    rst $38
    nop
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
    cp a
    ret nz

    sbc a
    pop hl
    adc a
    pop af
    add a
    ld sp, hl
    add e
    db $fd
    ld sp, hl
    rlca
    jp hl


    rla
    di
    rrca
    db $e3
    rra
    jp nz, $c33f

    ccf
    ld sp, hl
    rrca
    jp Jump_000_033f


    rst $38
    rst $38
    rst $38
    jp $03ff


    rst $38
    jp $03ff


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
    add e
    ld a, a
    jp Jump_0be_473d


    ld hl, sp-$01
    cp $22
    db $fd
    ld [hl], $f9
    inc de
    db $fc
    rst $38
    rst $38
    dec bc
    rst $38
    ld a, $fd
    add $ff
    ld b, $ff
    inc bc
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    rst $38
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
    cp $ff
    adc a
    rst $38
    ld [hl], b
    rst $38
    ld [$07ff], sp
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $1f7e
    ldh [$f0], a
    rrca
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
    rst $38
    rst $38
    rst $38
    rlca
    ld a, a
    ld sp, hl
    rst $38
    rst $00
    rst $38
    rlca
    rlca
    ld sp, hl
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
    ld a, a
    sbc a
    ld a, a
    add a
    ld a, a
    pop af
    ld a, a
    ret c

    ld a, a
    db $fc
    ld a, a
    db $fc
    ld l, h
    rst $38
    ld h, b
    rst $38
    ld [hl], b
    rst $38
    inc e
    rst $38
    ld c, [hl]
    rst $38
    inc hl
    rst $38
    ld d, e
    cp l
    ld l, a
    sbc a
    push af
    rrca
    ld [hl], b
    adc h
    ld [hl-], a
    ret z

    add b
    ld hl, sp-$2d
    rst $38
    cp a
    rst $38
    inc hl
    rst $38
    rlca
    rst $38
    add a
    rst $38
    ld c, a
    rst $38
    ld [hl], a
    rst $38
    ld a, a
    cp a
    cp a
    ld e, a
    rra
    rst $28
    add e
    rst $30
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
    rst $08
    rst $38
    add a
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    add b
    rst $38
    cp $ff
    ret nz

    rst $38

jr_0be_5b3e:
    rst $38
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    rst $38
    rst $38
    ld hl, sp-$01
    jr @+$01

    rst $38
    rst $38
    ld e, $ff
    db $e4
    db $fc
    ei
    ei
    inc bc
    and $07
    ld sp, hl
    add hl, sp
    rst $00
    ret nz

    ccf
    ld bc, $00ff
    rst $38
    ld bc, $03ff
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    ret nz

    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    add b
    rst $38
    rst $38
    nop
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
    ret nz

    rst $38
    ldh a, [rIE]
    cp $ff
    rst $38
    ccf
    rst $18
    rra
    rst $30
    rlca

jr_0be_5b90:
    rla
    ld sp, hl
    ld de, $10fe
    rst $38
    db $10
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    cp $ff
    rst $38
    rst $38
    cp a
    cp a
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
    nop
    rst $38
    nop
    rst $30
    nop
    rst $28
    nop
    adc l
    jr nc, jr_0be_5b3e

    jr c, jr_0be_5b90

    inc a
    ret c

    ld a, $9c
    ccf
    sbc [hl]
    ccf
    db $ec
    rra
    call nz, $f90f
    ld b, $f1
    ld [bc], a
    rst $38
    nop
    rst $38
    inc bc
    xor $ff
    rst $30
    rst $28
    ei
    rst $30
    rst $28
    ei
    di
    db $fd
    db $fd
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
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $07ff
    ld hl, sp+$0f
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    db $ec
    rra
    or b
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    ld [hl], b
    rst $38
    rst $30
    rst $38
    cp $ff
    rst $38
    rst $38
    jr @+$01

    rra
    ldh [$6e], a
    sbc a
    ccf
    ret nz

    rrca
    pop af
    ld a, a
    add e
    di
    db $fc
    ld bc, $ffff
    rst $38
    rra
    rst $38
    rst $38
    nop
    rst $38
    ret nz

    rst $00
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
    add b
    rst $38
    ldh [rIE], a
    db $fc
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    sbc a
    dec sp
    rst $00
    dec bc
    pop af
    ld a, [bc]
    db $f4
    dec bc
    db $f4
    inc bc
    db $fc
    add l
    ld a, [$ff80]
    add c
    cp $80
    rst $38
    add b
    rst $38
    add e
    rst $38
    jp $c3ff


    rst $38
    rst $38
    dec a
    rst $38
    dec a
    rst $38
    dec a
    rst $38
    add hl, sp
    rst $38
    add hl, sp
    rst $38
    add hl, sp
    ld a, a
    dec sp
    ld a, a
    inc sp
    ei
    ld [hl], $f3
    inc a
    db $76
    dec e
    ld a, [hl]
    add hl, de
    db $fc
    inc sp
    db $fc
    inc sp
    cp $27
    rst $38
    ld h, a
    or b
    rst $38
    or c
    rst $38
    pop af
    rst $38
    di
    rst $38
    di
    rst $38
    ei
    rst $38
    rst $38
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    sbc a
    rst $38
    adc a
    rst $38
    add a
    rst $38
    jp $e1ff


    inc bc
    db $fd
    rst $38
    ld a, [c]
    rst $38
    cp $ff
    rst $38
    ccf
    cp $1f
    cp $ef
    rst $38
    cp a
    rst $38
    rlca
    cp $3f
    ret nz

    db $fd
    inc bc
    ccf
    ret nz

    call nz, Call_000_02fb
    db $fd
    rst $38
    nop
    ld h, b
    sbc a
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $e1df
    rst $18
    ldh [$e0], a
    rst $38
    rst $38
    ccf
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
    ret nz

    rst $38
    ldh a, [rIE]
    cp $ff
    rst $38
    ld a, a
    rst $38
    rra
    sbc a
    rlca
    rst $20
    ld sp, hl
    ld bc, $00fc
    rst $38
    nop
    adc a
    ld [hl], b
    ld a, a
    add b
    cpl
    ret nc

    sbc l
    ld [c], a
    db $e3
    db $fc
    ld [hl], h
    ei
    dec a
    cp $0e
    rst $38
    rlca
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    ccf
    db $10
    rrca
    jr jr_0be_5d37

    cp h
    dec de
    ld sp, hl
    ld sp, $63f3
    ld h, [hl]
    rst $20
    xor $c7
    cp $cf
    cp [hl]
    rst $18
    sbc [hl]

jr_0be_5d37:
    rst $38
    ld a, $ff
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, b
    rst $38
    ld hl, sp-$01
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld a, [$f2ff]
    rst $38
    ld a, [c]
    rst $38
    ld [hl], d
    rst $38
    or [hl]
    ld a, a
    ld b, b
    cp a
    cp a
    rst $18
    adc $ff
    or $ef
    ld a, [$f4f7]
    ei
    ld a, d
    db $fd
    cp $bc
    rst $38
    sbc [hl]
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    db $fc
    ld a, a
    ei
    rst $38
    ld a, a
    rst $38
    rst $38
    nop
    ccf
    cp $ff
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
    ld a, l
    add e
    rst $38
    add b
    ldh a, [rIF]
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
    add b
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rra
    rra
    rlca
    rst $00
    ld bc, $00f1
    db $fc
    nop
    rst $38
    add b
    ld a, a
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    sub a
    add sp, -$61
    ldh [$85], a
    ld a, [$ec13]
    ld [hl+], a
    rst $18
    rrca
    rst $30
    rlca
    rst $38
    rlca
    rst $38
    ld b, $ff
    ld c, $ff
    ld c, $ff
    inc c
    rst $38
    inc c
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    ld sp, hl
    add hl, de
    ldh a, [$31]
    pop hl
    inc hl
    db $e3
    ld b, a
    rst $00
    xor a
    rst $00
    ld a, [hl]
    adc [hl]
    ld a, $dc
    inc a
    ld hl, sp+$3e
    ld hl, sp+$77
    ld hl, sp+$7f
    ldh a, [$71]
    cp $e0
    rst $38
    jr nz, @+$01

    ldh [rIE], a
    pop hl
    rst $38
    pop hl
    rst $38
    di
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
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
    nop
    rst $38
    rst $38
    rra
    rrca
    rst $38
    ldh a, [rIF]
    rst $38
    add a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ret nz

    rst $38
    nop
    rst $38
    db $fd
    ld a, d
    db $fd
    ld a, [hl]
    nop
    rst $38
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rra
    rra
    rlca
    rst $00
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
    rst $38
    add b
    rst $18
    ldh [$f7], a
    ld hl, sp+$7b
    db $fc
    ld a, $ff
    rrca
    rst $38
    rlca
    rst $38
    dec b
    ei
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
    add b
    rst $38
    sub b
    rst $18
    add b
    adc a
    nop
    rlca
    nop
    inc bc
    nop
    inc bc
    rlca
    inc bc
    rrca
    rlca
    ld e, $0f
    cp h
    ld e, $fc
    inc a
    ld hl, sp+$78
    ld a, b
    ldh a, [$fc]
    pop af
    db $fd
    db $e3
    rst $10
    db $eb
    rst $08
    rst $30
    rst $00
    rst $38
    rlca
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    sbc a
    rst $38
    sbc a
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
    rra
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
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    cp a
    cp a
    ld e, a
    rra
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    ld a, [bc]
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
    nop
    nop
    nop
    nop
    nop
    ld d, $17
    ld a, [bc]
    jr jr_0be_5f03

    ld a, [de]
    dec de
    inc e
    ld a, [bc]
    dec e
    ld e, $00
    nop
    nop
    nop
    nop
    rra
    jr nz, jr_0be_5f19

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $0a
    daa
    jr z, jr_0be_5f01

jr_0be_5f01:
    nop
    nop

jr_0be_5f03:
    nop
    nop
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0be_5f3f

    ld [hl-], a
    inc sp
    nop
    nop
    nop
    nop
    nop
    inc [hl]
    dec [hl]
    ld [hl], $37

jr_0be_5f19:
    jr c, jr_0be_5f54

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $00
    nop
    nop
    nop
    nop
    ccf
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
    dec c
    ld d, b
    ld d, c
    ld a, [bc]

jr_0be_5f3f:
    ld d, d
    nop
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
    ld a, [bc]
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    nop
    nop
    nop
    nop

jr_0be_5f54:
    nop
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld a, [bc]
    ld a, [bc]
    ld h, h
    ld h, l
    nop
    nop
    nop
    nop
    nop
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld a, [bc]
    ld l, l
    ld l, [hl]
    ld l, a
    nop
    nop
    nop
    nop
    nop
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
    add e
    add h
    add l
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    nop
    nop
    nop
    nop
    nop
    ret z

    ret


    jp z, $cccb

    call $cfce
    ret nc

    pop de
    jp nc, Jump_000_0101

    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
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
    ld bc, $0101
    ld bc, $0201
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0101
    ld bc, $0201
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec a
    ld a, [c]
    dec a
    ld a, [c]
    dec [hl]
    ld a, [$fb14]
    ld e, $f9
    rra
    ld sp, hl
    ld e, $f9
    ld a, [de]
    db $fd
    dec de
    db $fc
    ld c, $fd
    ld c, $fd
    inc c
    rst $38
    dec c
    cp $0d
    cp $0e
    rst $38
    ld c, $ff
    ld b, $ff
    ld b, $ff
    rrca
    rst $38
    ccf
    rst $38
    ld l, a
    rst $38
    ld a, a
    rst $38
    cpl
    rst $38
    ld e, a
    rst $38
    ccf
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

jr_0be_6191:
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    add b
    rst $38
    ld bc, $0fff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    rrca
    rst $38
    ld [hl], c
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec bc
    rst $38
    rst $38
    rst $38
    ld c, $ff
    inc a
    rst $38
    ld a, a
    rst $38
    ei
    rst $20
    rst $38
    pop hl
    sbc $ef
    rst $38
    adc a
    ld e, a
    xor a
    ccf
    rst $08
    jr c, jr_0be_6191

    pop af
    rrca
    ld b, $ff
    ccf
    rst $38
    rra
    db $fc
    rst $38
    db $fc
    inc bc
    db $fc
    dec a
    jp $3fcf


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rlca
    jp c, $4327

    cp a
    inc bc
    rst $38
    ld a, [bc]
    rst $38
    ld a, d
    rst $38
    add hl, sp
    rst $38
    ld a, c
    rst $38
    cp a
    ld a, a
    ccf
    rst $38
    ld a, c
    rst $38
    jp $81ff


    ld a, a
    ld b, e
    rst $38
    ld e, a
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
    db $fc
    rst $38
    rst $30
    rst $38
    rst $20
    rst $38
    add b
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    rra
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    db $fc
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], a
    rst $38
    sbc a
    rst $38
    db $fd
    cp $3b
    rst $38
    cp $ff
    rst $38
    rst $38
    db $f4
    db $eb
    db $fd
    cp $fb
    rlca
    ld a, a
    cp $b9
    add $ff
    db $fc
    cp d
    db $fd
    adc $f1
    nop
    rst $38
    rst $38
    nop
    di
    db $fc
    pop hl
    cp $f8
    rst $38
    rra
    ldh [rPCM34], a
    adc a
    sbc a
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38

jr_0be_6288:
    rst $38
    rst $38
    rst $38
    rst $38
    call nz, $f8ff
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
    cp $ff
    ld d, a
    rst $38
    ld c, a
    rst $38
    sub a
    rrca
    rst $38
    rlca
    rst $00
    ccf
    sub a
    ld l, a
    rst $00
    rrca
    cpl

jr_0be_62b1:
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
    ldh a, [rIE]
    pop hl
    rst $38
    add a
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    cp $f8
    rst $30
    daa
    rst $38
    rst $38
    rst $08
    ld sp, hl
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    di

jr_0be_62e7:
    db $fc
    jr c, jr_0be_62b1

    sbc a
    ld h, b
    rst $38
    rst $38
    cp a
    ld b, b
    adc $f1
    ld a, b
    add a
    ld b, a
    cp b
    ld [hl], b
    adc a
    adc a
    ld [hl], b
    rst $00
    jr c, jr_0be_6288

    ld [hl], a
    ld hl, $ffdf
    rst $38
    ld a, a
    rst $38
    add a
    ld a, a
    ret nz

    ccf
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    jr c, jr_0be_62e7

    ld bc, $c7ff
    jr c, @+$01

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$0cff], sp
    rst $38
    ld [$11ff], sp
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
    rst $20
    rst $38
    rst $20
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
    rst $28
    rst $38
    add e
    rst $38
    rlca
    rst $38
    inc a
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    cp $f1
    ld hl, sp-$01
    rst $00
    rst $38
    cp a
    rst $18
    ld a, a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    cp a
    ld a, a
    rra
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fd
    cp $c1
    cp $98
    ld h, a
    ld hl, $ffde
    ld bc, $c7ff
    ret nz

    ccf
    ld bc, $33ff
    rst $08
    nop
    rst $38
    jr nc, @-$2f

    inc e
    rst $38
    rst $38
    rst $38
    rst $38
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
    pop hl
    rra
    rst $18
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    add b
    rst $38
    db $fc
    rst $38
    add b
    rst $38
    inc bc
    db $fc
    db $fc
    rst $38
    ld [hl], b
    adc a
    add e
    rst $38
    ld e, a
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
    rra
    xor $0f
    cp $de
    rst $28
    jp c, $feef

    rst $28
    rst $38
    rst $28
    ld l, l
    rst $38
    dec a
    rst $38
    rst $38
    cp l
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    ld a, a
    rst $38
    cp [hl]
    pop bc
    add b
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    jp Jump_000_3eff


    rst $08
    ld e, h
    cp a
    ld hl, sp+$3f
    ld h, b
    rst $38
    ret nz

    rst $38
    and b
    rst $38
    ret nz

    rst $38
    ld sp, hl
    cp $fb
    cp h
    ld a, [$fcfd]
    ei
    db $fc
    jp Jump_000_00ff


    rlca
    ld hl, sp+$3c
    rst $00
    ccf
    ret nz

    ccf
    pop bc
    sbc $3f
    rst $38
    nop
    ld [hl], $f9
    db $fc
    rlca
    ld h, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    rrca
    rst $38
    nop
    rst $38
    inc c
    rst $38
    pop hl
    rst $38
    nop
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
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    add c
    rst $38
    cp $ff
    ld hl, sp-$01
    ldh a, [rIE]
    pop af
    rst $38
    adc a
    rst $38
    ld h, b
    rst $38
    jr @+$01

    ld h, a
    ld hl, sp+$0f
    ldh a, [$3f]
    ret nz

    add b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, b
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    rst $38
    rst $38
    ldh [rIE], a
    rst $38
    ldh [rIE], a
    pop hl
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    add e
    cp $87
    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    adc $ff
    ldh a, [rIE]
    rst $00
    ld hl, sp+$31
    adc $07
    ld hl, sp-$40
    cp a
    sbc a
    ld a, a
    ld a, a
    rst $38
    nop
    rst $38
    db $10
    rst $28
    rlca
    ld hl, sp+$03
    db $fc
    rrca
    db $fc
    rrca
    di
    ld [$71f7], sp
    adc a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    inc a
    rst $38
    cp b
    ld a, a
    ret nz

    rst $38
    inc bc
    db $fc
    rst $08
    ldh a, [$c0]
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld bc, $03fe
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc c
    rst $38
    rst $38
    rst $38
    ld bc, $07ff
    rst $38
    ld hl, sp-$01
    ld bc, $00ff
    rst $38
    ccf
    ret nz

    nop
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rlca
    ld hl, sp-$80
    rst $38
    cp $ff
    ret nz

    rst $38
    inc a
    jp $ffff


    nop
    rst $38
    ld [hl], c
    adc [hl]
    nop
    rst $38
    ld hl, sp-$01
    ld b, $ff
    add c
    rst $38
    ld a, a
    rst $38
    add b
    ld a, a
    db $fd
    inc bc
    ldh [$1f], a
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
    ldh a, [rIE]
    nop
    rst $38
    inc bc
    db $fc
    ret nz

    rst $38
    db $fc
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
    rst $38
    db $fc
    inc bc
    rst $38
    db $fc
    ld a, a
    rst $38
    rst $38
    ld hl, sp-$01
    rst $38
    db $fc
    rst $38
    db $e3
    rst $38
    rst $30
    ccf
    rst $30
    adc $e0
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    add b
    ld a, a
    ldh a, [rIF]
    rst $18
    inc a
    add a
    ld a, e
    dec bc
    db $f4
    rst $38
    jp $e0ff


    rra
    db $e3
    rst $38
    rra
    rrca
    rst $38
    ldh a, [$7f]
    rlca
    ld hl, sp-$01
    ei
    rra
    db $fc
    ldh [rIE], a
    rst $38
    ld hl, sp-$0d
    db $fc
    rst $38
    cp $ff
    ldh a, [rP1]
    rst $38
    ld bc, $0efe
    pop af
    ldh a, [rIF]
    rst $38
    nop
    ccf
    pop bc
    rst $38
    rrca
    rst $20
    rra
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    di
    ld hl, sp-$09
    ret z

    rst $30
    rrca
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
    rrca
    rst $38
    pop af
    rrca
    ld a, h
    add e
    adc $ff
    ld sp, $bccf
    jp Jump_000_3ec1


    inc bc
    db $fc
    ld a, h
    add e
    rst $38
    nop
    ld a, a
    rst $38
    add c
    rst $38
    ld a, $c1
    rst $38
    nop
    ld a, $ff
    jp Jump_000_003f


    rst $38
    rst $38
    add e
    rst $38
    rst $38
    ld a, a
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
    ldh [rIE], a
    rra
    ldh [$30], a
    rst $08
    ret nz

    ccf
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
    rst $38
    inc b
    ei
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ccf
    rst $38
    ret nz

    nop
    rst $38
    rst $30
    ld hl, sp-$39
    ld hl, sp-$1e
    dec e
    nop
    rst $38
    rlca
    ld hl, sp+$00
    rst $38
    rlca
    rst $38
    ld a, e
    db $fc
    sub e
    db $ec
    db $fc
    jp $3fcc


    cp $ff
    rst $38
    rst $38
    nop
    rst $38
    ldh [rIE], a
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    adc a
    rst $38
    rst $28
    rra
    ld a, a
    sbc a
    rst $38
    ld a, a
    add b
    ld a, a
    ld sp, hl
    ld a, a
    db $fd
    rlca
    ld a, c
    rst $08
    rst $08
    ccf
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    add b
    rst $38
    pop af
    cp $f3
    db $fc
    nop
    rst $38
    rst $38
    nop
    and b
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ccf
    ret nz

    db $fd
    ld [bc], a
    ldh [$1f], a
    rlca
    rst $38
    ld e, $e1
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rrca
    ldh a, [$f0]
    rst $28
    rrca
    rst $38
    ldh [rIE], a
    rra
    ldh [$f0], a
    rrca
    ld [$00f7], sp
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
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    pop af
    xor $00
    rst $38
    ldh a, [rIF]
    ld [$f9f7], sp
    rlca
    rlca
    rst $38
    cp $01
    rst $30
    rrca
    ld hl, sp+$0f
    ret c

    rst $20
    ldh [$1f], a
    nop
    rst $38
    add c
    ld a, [hl]
    ld [bc], a
    db $fd
    rra
    ldh [rP1], a
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    ld bc, $e0ff
    rra
    rst $38
    nop
    rst $38
    ld bc, $fcff
    db $fc
    inc bc
    rst $38
    nop
    rst $08
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
    db $fc
    rst $38
    ret nz

    rst $38
    add c
    rst $38
    ld a, a
    rst $38
    ccf
    ccf
    rst $18
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
    add c
    ld a, a
    db $fc
    rrca
    ld a, $ff
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    di
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$78]
    add a
    add b

jr_0be_6703:
    ld a, a
    ld h, b
    sbc a
    ld b, a
    cp b
    nop
    rst $38
    ld b, c
    cp [hl]
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
    rst $38
    nop
    rst $38
    jr jr_0be_6703

    rrca
    ld hl, sp+$3f
    rst $38
    ld b, e
    rst $38
    ld h, b
    rst $38
    ldh [$9f], a
    and b
    rst $18
    cp a
    ret nz

    db $10
    rst $28
    ld e, $e1
    ld b, $f9
    ld a, b
    add a
    ccf
    ret nz

    rst $08
    jr nc, jr_0be_67b6

    add b
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
    ld bc, $f9ff
    rst $38
    rlca
    ld a, a
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    db $fc
    rst $18
    ldh [$c1], a
    cp $ff
    pop hl
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    cp $e0
    rst $38
    and $f9
    pop hl
    cp $f0
    rst $38
    db $fc
    rst $38
    cp $ff
    db $fc
    rst $38
    ret nz

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
    call nz, $f8fb
    rlca
    ret nz

    ccf
    nop
    rst $38
    rrca
    ldh a, [rIE]
    nop
    nop
    rst $38
    ldh [$1f], a
    nop

jr_0be_679d:
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
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    db $fc
    rra
    rst $38
    pop hl
    ld bc, $06fe

jr_0be_67b5:
    ld sp, hl

jr_0be_67b6:
    rra
    ldh [$c0], a
    ccf
    ret nz

    ccf
    jr nz, jr_0be_679d

    rra
    rst $28
    ld a, a
    rst $08
    rst $38
    ccf
    cp $ff
    db $fc
    rst $38
    ld hl, sp+$7f
    rst $38
    ld hl, sp-$01
    add e
    db $fc
    rst $00
    rst $38
    ldh a, [rIE]
    cp $ff
    rst $38
    rst $38
    cp $80
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    db $e3
    rst $38
    di
    db $fc
    rst $08
    ret nz

    ccf
    nop
    rst $38
    ret nz

    ccf
    nop
    rst $38
    jr c, jr_0be_67b5

    add b
    rst $38
    adc a
    ldh a, [$1f]
    rst $38
    cp a
    ld a, a
    ccf
    rst $38
    ccf
    rst $28
    rst $00
    ccf
    ld bc, $fffe
    nop
    nop
    rst $38
    ccf
    rst $38
    inc bc
    rst $38
    ld a, [hl]
    add c
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
    cp $ff
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
    nop
    rst $38
    nop

jr_0be_682f:
    rst $38
    ld h, e
    sbc h
    nop
    rst $38
    ld hl, sp+$07
    ldh [$1f], a
    nop
    rst $38
    di
    inc c
    nop
    rst $38
    rst $38
    rst $38
    rlca
    nop
    rlca
    nop
    rrca
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
    ld hl, sp-$01
    rst $38
    ld a, a
    nop
    rst $38
    add b
    ld a, a
    ld [hl], c
    adc a
    ld c, $f7
    rrca
    di
    jr nc, jr_0be_682f

    ld h, b
    sbc a
    ld e, $e1
    ld bc, $01fe
    cp $00
    rst $38
    pop bc
    ld a, $81
    cp $00
    rst $38
    ldh [$7f], a
    db $fc
    rra
    rst $38
    ldh [$e3], a
    db $fc
    add d
    ld a, l
    add b
    rst $38
    ret nc

    rst $28
    add sp, -$09
    db $e3
    db $fc
    nop
    rst $38
    nop
    rst $38
    ld bc, $20fe
    rst $18
    inc c
    di
    nop
    rst $38
    ld [hl], b
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
    sbc a
    ld a, a
    ldh [$1f], a
    ld a, a
    sbc a
    ld hl, sp-$01
    rst $38
    rst $38
    inc bc
    rst $38
    ld h, e
    sbc a
    inc e
    db $e3
    di
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ldh [rIE], a
    add b
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
    ld b, d
    cp l
    adc b
    rst $30
    add e
    db $fc
    ld a, b
    add a
    nop
    rst $38
    ld a, a
    add b
    nop
    rst $38
    ld e, a
    and b
    nop
    rst $38
    rst $38
    nop
    rra
    ldh [rP1], a
    rst $38
    cp a
    ld b, b
    nop
    rst $38
    rst $38
    rst $38
    ld hl, sp+$0f
    call nz, $e22f
    daa
    ld sp, $30f1
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    cp $0f
    db $fd
    rra
    db $fd
    rst $38
    db $fc
    ccf
    db $fd
    pop bc
    rst $38
    ld a, $ff
    rst $38
    db $fd
    ld a, $fd
    ld bc, $0fff
    db $fd
    ei
    dec b
    rst $38
    nop
    ld a, a
    add b
    add b
    ld a, a
    rst $38
    ld a, l
    ld a, a
    add b
    ld [hl], b
    rst $38
    ld a, h
    rst $38
    rst $38
    nop
    rst $38
    nop
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    dec bc
    rst $38
    add l
    ld a, a
    inc b
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    inc bc
    db $fc
    rrca
    di
    rst $38
    rst $28
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    cp $ff
    add c
    rst $38
    add b
    rst $38
    rst $38
    rlca
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    db $fc
    rst $38
    cp $ff
    db $fc
    rst $38
    inc bc
    rst $38
    ld a, a
    rst $38
    adc e

jr_0be_695f:
    ld a, a
    ld a, a
    adc a
    jp $f13f


    ld c, $33
    rst $08
    ld e, $e1
    rrca
    ldh a, [rP1]
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
    nop
    rst $38
    jr nz, jr_0be_695f

    ld [bc], a
    db $fd
    ccf
    ret nz

    nop
    rst $38
    ret z

    scf
    nop
    rst $38
    ld a, a
    add b
    rst $38
    nop
    ld bc, $fffe
    nop
    nop
    rst $38
    ld a, a
    add b
    add b
    ld a, a
    ld [hl], $c9
    rrca
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ld b, $00
    ld b, $69
    ld c, $f1
    ld c, $f1
    adc h
    di
    call z, $ec73
    inc sp
    db $f4
    dec de
    sbc a
    ld [$84cf], sp
    rst $20
    jp nz, $e1c3

    pop hl
    ldh a, [rSVBK]
    ld hl, sp-$48
    db $fc
    ld a, h
    cp $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    db $fc
    rst $38
    rlca
    db $fc
    ld hl, sp-$01
    rst $30
    inc c
    inc c
    di
    ld a, $c1
    rst $38
    ccf
    rst $38
    nop
    rst $38
    cp l
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
    ld a, a
    nop
    rst $38
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
    rrca
    rst $38
    pop bc
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    jr nz, @+$01

    daa
    rst $38
    jr nz, @+$01

    rra
    rst $38
    nop
    rst $38
    rra
    rst $38
    rst $18
    rst $38
    adc a
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    ld a, a
    ret nz

    rst $38
    ld a, a
    cp $fe
    ld bc, $c03f
    nop
    rst $38
    add b
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop hl
    cp $00
    rst $38
    db $10
    rst $28
    rlca
    ld hl, sp-$08
    rlca
    ld a, a
    add b
    add c
    ld a, [hl]

jr_0be_6a38:
    ld a, [hl]
    add c
    add b
    ld a, a
    ei
    rlca
    db $e3
    rra
    rst $38
    nop
    rra
    ldh [$e0], a
    rra
    rrca
    rst $38
    rst $38
    rra
    rst $38
    rst $38

jr_0be_6a4c:
    rst $38
    rst $38

jr_0be_6a4e:
    rst $38
    rst $38

jr_0be_6a50:
    jr nz, @+$01

jr_0be_6a52:
    db $e4
    dec sp

jr_0be_6a54:
    db $ec
    inc sp

jr_0be_6a56:
    xor $31
    xor $31
    rst $28
    jr nc, jr_0be_6a4c

    jr nc, jr_0be_6a4e

    jr nc, jr_0be_6a50

    jr nc, jr_0be_6a52

    jr nc, jr_0be_6a54

    jr nc, jr_0be_6a56

    jr nc, jr_0be_6a38

    ldh a, [$80]
    ld a, a
    ld b, b
    ccf
    nop
    nop
    nop
    db $fd
    or $f6
    rst $38
    rst $38
    rst $38

jr_0be_6a77:
    rst $38
    ret c

    daa
    rrca
    ldh a, [$e7]
    jr jr_0be_6a77

    rlca
    ld bc, $00fe
    rst $38
    add b
    ld a, a
    rst $38
    nop
    pop bc
    ld a, [hl]
    ld bc, $7efe
    add c
    add b
    ld a, a
    nop
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    rst $38
    cp $ff
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
    nop
    rst $38
    rst $38
    rst $38
    db $fc
    rlca
    ld hl, sp-$04
    rst $38
    inc bc
    rst $38
    ret nz

    rst $38
    nop
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
    rst $38
    rst $38
    ld c, $ff
    rst $38
    ld a, a
    rrca
    rst $38
    db $fc
    inc bc
    rrca
    ldh a, [$1f]
    ldh [rP1], a
    rst $38
    rst $08
    ldh a, [$8c]
    di
    inc bc
    db $fc
    cp [hl]
    ld b, c
    rlca
    ld hl, sp-$04

jr_0be_6adf:
    inc bc
    nop
    rst $38
    rra
    ldh [$e7], a
    jr jr_0be_6adf

    rlca
    nop
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    rst $20
    rra
    nop
    rst $38
    daa
    ret c

    rst $38
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
    ld a, a
    ldh [$1f], a
    ld hl, sp+$07
    cp $01
    rst $38
    nop
    ld a, a
    nop
    rra
    nop
    inc b
    nop
    cp $01
    db $eb
    inc b
    rst $30
    nop
    rst $38
    nop
    rst $30
    nop
    nop
    rst $38
    ld bc, $00ff
    nop
    nop
    sbc $aa
    xor e
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rra
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    rlca
    ld hl, sp+$00
    rst $38
    rst $38
    nop
    rst $38
    db $10
    rst $00
    ld a, $1f
    push af
    rra
    ei
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    db $fd
    ccf
    rst $38

jr_0be_6b4b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld hl, sp-$08
    rlca
    rst $38
    nop
    nop
    rst $38
    rst $38
    ret nz

    inc sp
    rst $08
    rrca
    ldh a, [rIE]
    ld hl, sp-$05
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$1f], a
    cp $01
    jr c, jr_0be_6b4b

    ret nz

    ccf
    jr nc, @+$01

    rst $38
    ccf
    rra
    rst $38
    add a
    ld a, a
    nop
    rst $38
    ld e, h
    and e
    di
    inc c
    ret nz

    ccf
    nop
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $30
    ld [$ffff], sp
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
    rra
    ldh [rTAC], a
    ld hl, sp+$41
    cp [hl]
    ret nz

    ccf
    ldh a, [rIF]
    db $ec
    inc de
    cp $01
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
    ld d, l
    rst $38
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $28
    stop
    rst $38
    ret nz

    ccf
    ret z

    scf
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [c], a
    rst $38
    ld l, d
    rst $38
    ei
    nop
    rst $38
    ldh [rIE], a
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
    rst $38
    inc bc
    rst $38
    rra
    nop
    rst $38
    rst $38

jr_0be_6c11:
    nop
    ld a, a
    ret nz

    rst $38
    ccf
    rst $38
    rst $38
    di
    rrca
    rst $38
    ld a, a
    rst $38
    rrca
    rst $38
    ldh [rP1], a
    rst $38
    rlca
    ld hl, sp+$1e
    pop hl
    ld bc, $e0fe
    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, $f1
    jr nc, jr_0be_6c11

    ld hl, sp+$07
    rrca
    db $fc
    cp $fd
    rst $38
    cp $ff
    rst $38
    ldh a, [rIE]
    rrca
    rst $38
    ret nz

    rst $38
    rrca
    rst $38
    and b
    ld e, a
    rst $38
    rst $38
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
    rra
    ldh [rTAC], a
    ld hl, sp+$01
    cp $e0
    rra
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    xor a
    rst $38
    rst $38
    rra
    rst $38
    cp $ff
    cp $01
    rst $38
    inc bc
    ld bc, $13ff
    rst $38
    rlca
    rst $38
    adc b
    rst $38
    rst $38
    cpl
    rst $38
    rra
    rst $38
    dec sp
    rst $38
    push de
    rst $38
    ld a, e
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc bc
    pop af
    rrca
    ld bc, $00ff
    rst $38
    ld hl, sp+$07
    ld b, $f9
    ld bc, $01fe
    cp $00
    rst $38
    inc bc
    db $fc
    rlca
    ei
    rlca
    ld sp, hl
    ld sp, hl
    rst $20
    sub b
    rst $28
    rst $38
    ldh a, [rIE]
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    add $f9
    rlca
    ld hl, sp-$08
    rst $38
    rlca
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, $01
    ld c, $01
    inc e
    rlca
    inc e
    rlca
    inc e
    rlca
    inc e
    dec bc
    inc e
    dec bc
    inc e
    dec bc
    jr c, jr_0be_6d31

    jr jr_0be_6d43

    jr c, jr_0be_6d45

    jr c, jr_0be_6d47

    cp b
    rla
    ld a, b
    rla
    ld hl, sp-$09
    nop
    rlca
    rst $38

jr_0be_6d31:
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    ld [$3cff], sp
    rst $38
    rst $38
    rst $38
    rst $38
    cp $cf
    rst $38
    adc l

jr_0be_6d43:
    di
    inc e

jr_0be_6d45:
    db $e3
    rst $38

jr_0be_6d47:
    add b
    rst $30
    ld hl, sp-$10
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
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
    cp $ff
    ldh [rIE], a
    ret nz

    rst $38
    ld hl, sp-$01
    cp $ff
    ldh [rIE], a
    ret nz

    ld hl, sp+$07
    sbc a
    ldh [$81], a
    cp $3f
    ret nz

    rlca
    ld hl, sp+$00
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
    ld a, b
    rst $38
    inc a
    rst $38
    ld a, $ff
    rst $18
    ccf
    adc a

jr_0be_6d8f:
    ld a, a
    ccf
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
    ld bc, $fbe4
    db $fd
    inc bc
    ld a, a
    add b
    ld bc, $fefe
    ld bc, $ffff
    rst $38
    ld a, a
    inc bc
    rst $38
    rst $30
    rrca

jr_0be_6dae:
    jr nz, jr_0be_6d8f

    rst $38
    ccf
    rst $38
    add b
    ld bc, $fffe
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ld h, b
    add b
    jr nz, jr_0be_6dae

    add b
    ld [hl], b
    ldh a, [$fc]
    ld hl, sp-$01
    ld a, a
    rst $38
    cp [hl]
    ld e, a
    ret nz

    ccf
    cp $01
    rrca
    ldh a, [$3f]
    rst $38
    rst $38
    rst $38
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
    adc a
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    rst $38
    nop
    rst $38
    ret nz

    ccf
    add b
    ld a, a
    ldh [$1f], a
    ld hl, sp+$07
    cp $01
    ld a, c
    add [hl]
    rra
    ldh [rIF], a
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    ld b, d
    cp l
    nop
    rst $38
    nop
    rst $38
    ld bc, $1fff
    rst $38
    rst $38
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
    ld b, $ff
    rst $38
    rst $38
    rrca
    rst $38
    jp $3f3f


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    ld b, $07
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    dec bc
    inc c
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $0f
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
    ld de, $1312
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    jr jr_0be_6f07

    ld a, [de]
    dec de
    nop
    nop
    nop
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
    dec e
    ld e, $1f
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0be_6f07:
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_0be_6f2f

    ld [hl+], a
    inc hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc h
    dec h
    ld h, $27
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_0be_6f57

    ld a, [hl+]

jr_0be_6f2f:
    dec hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc l
    dec l
    ld l, $2f
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, @+$33

    ld [hl-], a
    inc sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0be_6f57:
    nop
    nop
    nop
    nop
    nop
    inc [hl]
    dec [hl]
    ld [hl], $37
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_0be_6fa7

    ld a, [hl-]
    dec sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    dec a
    ld a, $3f
    nop
    nop
    nop
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
    ld b, c
    ld b, d
    ld b, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0be_6fa7:
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld bc, $0101

Call_0be_7033:
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld bc, $0000
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0101
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
    nop
    nop
    nop
    nop
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
    ld h, b
    add b
    ld h, b
    add b
    ld h, b
    add b
    ld h, b
    add b
    ldh [$90], a
    ret nz

    or b
    ret nc

    cp b
    add b
    rst $38
    add h
    cp $94
    cp $ac
    cp $fc
    rst $38
    and b
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rst $38
    rra
    ldh [$c1], a
    cp $ff
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
    cp $ff
    rst $28
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    ldh a, [rIE]
    cp $ff
    pop bc
    rst $38
    ccf
    ldh [rIE], a
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
    cp $01
    rst $38
    nop
    rst $18

jr_0be_717f:
    ldh [rIE], a
    sbc a
    add b
    rst $38
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    jr nc, @+$01

jr_0be_718b:
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    ld a, b
    rst $38
    rst $20
    rst $38
    rra
    rst $38
    ccf
    rst $38
    jr c, jr_0be_718b

    rst $38
    ret nz

    rst $38
    jr nz, jr_0be_717f

    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    rst $38
    ld a, a
    add b
    nop
    rst $38
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp-$19
    ld c, $f1
    cp $01
    rst $38
    ei
    rst $38
    nop
    rst $38
    cp $ff
    ld bc, $c3ff
    rst $38
    inc a
    ld hl, sp-$01
    db $fc
    rst $38
    db $f4
    dec de
    nop
    rst $38
    nop
    rst $38
    rra
    ldh [$1f], a
    ldh [rP1], a
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    add b
    nop
    rst $38
    add b
    ld a, a
    ld a, b
    add a
    nop
    rst $38
    ld [$e3f7], sp
    db $fc
    ret nz

    ccf
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rst $20
    ldh a, [$7f]
    nop
    rst $38
    nop
    rst $38
    rrca
    ldh a, [$7f]
    add b
    rlca
    ld hl, sp-$08
    rlca
    nop
    rst $38
    nop
    nop
    nop
    ld a, a
    rra
    ldh [rP1], a
    rst $38
    inc bc
    db $fc
    db $fc
    inc bc
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    inc b
    ei
    rra
    rst $38
    ld sp, hl
    ld b, $00
    rst $38
    rst $38
    ret nz

    db $fd
    cp $cf
    ldh a, [rP1]
    rst $38
    rlca
    ld hl, sp+$3f
    ret nz

    ld hl, sp+$07
    rst $38
    inc bc
    ld hl, sp+$1f
    ccf
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
    ld bc, $0000
    inc bc
    nop
    rst $38
    rst $38
    nop
    rra
    ldh [rIE], a
    nop
    nop
    rst $38
    jp nz, Jump_000_003d

    rst $38
    db $fc
    inc bc
    nop
    rst $38
    rst $38
    db $fc
    and b
    ld e, a
    rra
    ldh [$f9], a
    ld b, $c6
    add hl, sp
    cp $01
    ld hl, sp+$07
    rst $38
    ld bc, $7f80
    rra
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rrca
    nop
    rra
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
    nop
    rst $38
    ld a, a
    add b
    ldh a, [rIF]
    cp $01
    rst $38
    rrca
    inc bc
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ld a, a
    rst $38
    pop af
    ld c, $00
    rst $38
    rst $30
    rrca
    rst $00
    ccf
    ccf
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rra
    rst $38
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
    nop
    rst $38
    nop
    ldh [$1f], a
    nop
    rst $38
    ld hl, sp+$07
    ld bc, $0fff
    rst $38
    rst $28
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
    nop
    ccf
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03fe
    ei
    rlca
    inc bc
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
    ld [bc], a
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    rst $00
    rst $38
    rst $38
    rst $38
    ret nz

    ccf
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    rst $00
    rst $38
    rst $38
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
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec bc
    db $f4
    rst $38
    ldh a, [rIE]
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
    ldh a, [rIE]
    rlca
    ld hl, sp+$00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [bc], a
    db $fd
    add b
    rst $38
    nop
    rst $38
    rst $38
    di
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
    ld bc, $9ff0
    rst $38
    rst $38
    dec c
    ld a, [c]
    rrca
    ldh a, [rIF]
    ldh a, [rIE]
    nop
    ldh [rP1], a
    rst $38
    ldh [rIE], a
    dec bc
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    rst $38
    nop
    ld c, $f1
    ld hl, sp-$01
    rst $38
    db $fc
    rst $38
    rst $38
    ld [hl], b
    adc a
    nop
    rst $38
    ld h, b
    sbc a
    rst $38
    rst $38
    rlca
    ld hl, sp-$01
    rst $00
    rst $38
    ld hl, sp-$20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    cp $e1
    nop
    rst $38
    rst $38
    ldh [$f5], a
    ld a, [bc]
    cp $01
    rst $38
    nop
    rst $38
    nop
    inc bc
    nop
    add b
    nop
    rst $38
    ldh a, [$03]
    inc bc
    ld hl, sp-$01
    rst $38
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $30
    ld c, $00
    rst $38
    ld a, a
    add b
    rra
    ldh [rIE], a
    nop
    db $fd
    rst $38
    nop
    rst $38
    rst $38
    nop
    ld bc, $fffe
    ret nz

    ret nz

    ccf
    ei
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    cp a
    ret nz

    ret nz

    rst $38
    ccf
    ret nz

    ld b, c
    cp [hl]
    cp $01
    add d
    ld a, l
    rst $08
    jr nc, @+$01

    nop
    db $fc
    inc bc
    rst $38
    nop
    nop
    nop
    add b
    nop
    rst $38
    ld hl, sp+$03
    inc bc
    ldh a, [$fe]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    ld bc, $f1fe
    rrca
    ret nz

    ccf
    rst $38
    nop
    ret nz

    rst $38
    ld a, a
    add b
    add b
    ld a, a
    cp $01
    rst $38
    ccf
    nop
    rst $38
    ldh a, [rIE]
    ld bc, $fffe
    nop
    ei
    db $fc
    rst $38
    inc bc
    ld a, h
    add e
    rst $38
    inc b
    db $fc
    inc bc
    nop
    rst $38
    add b
    ld a, a
    and b
    ld e, a
    ld h, b
    sbc a
    ld b, b
    cp a
    ldh [$1f], a
    rra
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$01
    inc bc
    inc bc
    ldh [$fe], a
    rst $38
    rst $38
    rst $38
    rst $38
    adc a
    ld a, a
    rst $38
    sbc a
    inc bc
    db $fc
    cp $01
    ld e, a
    ld hl, sp-$08
    rlca
    rra
    rst $38
    rst $38
    rst $38
    inc bc
    db $fc
    inc c
    di
    add a
    ld a, a
    jr @+$01

    db $fc
    inc bc
    rst $38
    ccf
    ld [hl], b
    rst $38
    rra
    rst $28
    db $10
    rst $28
    rrca
    ldh a, [rIE]
    rst $38
    nop
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
    ld bc, $0000
    nop
    nop
    add b
    db $fc
    rst $38
    inc bc
    inc bc
    ret nz

    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp+$07
    ld bc, $f8ff
    rlca
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    ccf
    rra
    rst $30
    rst $38
    rst $38
    rra
    rst $38
    nop
    rst $38
    rst $28
    rst $38
    ld e, $ff
    rst $38
    rst $38
    ccf
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
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    db $fc
    rst $38
    inc bc
    inc bc
    ret nz

    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    ld a, a
    rst $38
    rst $38
    cp h
    db $fd
    rst $38
    rst $38
    db $fc
    rst $38
    add e
    rst $38
    ldh [rIE], a
    rst $38
    ld hl, sp-$01
    rra
    ldh [$80], a
    ld a, a
    adc a
    rst $38
    ld a, a
    add b
    jp nc, $fdef

    or $ff
    rst $38
    rst $38
    rst $38
    ld b, $fd
    rlca
    cp $07
    cp $07
    ld a, [$fa07]
    rlca
    ld a, [$0bf7]
    rrca
    inc bc
    ld e, a
    inc bc
    rst $30
    inc bc
    add hl, sp
    jp $ffff


    ld b, $01
    add a
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ld a, a
    rst $38
    add b
    rst $38
    ld a, a
    rst $38
    ei
    rst $38
    nop
    ldh a, [rIE]
    rra
    ldh [rIE], a
    nop
    rrca
    ld hl, sp-$01
    rst $00
    add a
    ld a, b
    inc bc
    db $fc
    di
    inc c
    rlca
    rst $38
    rst $18
    rst $38
    nop
    ld d, l
    nop
    ld l, e
    nop
    db $fc
    nop
    cp $00
    cp $00
    cp a
    nop
    sbc a
    rst $38
    nop
    nop
    add b
    nop
    add b
    nop
    add a
    add b
    cp $00
    add b
    nop
    nop
    ld b, b
    rst $38
    add b
    rst $38
    rst $00
    db $fc
    rst $38
    cp $fe
    ld bc, $87f9
    ld hl, sp-$19
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    rra
    di
    rrca
    rst $38
    ld [hl], b
    db $fc
    rst $38
    ldh [$1f], a
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    rst $38
    jp $06fc


    ld a, c
    ld b, $59
    inc bc
    inc c
    inc bc
    inc c
    inc bc
    inc e
    inc bc
    ld e, h
    inc bc
    inc e
    add e
    inc e
    nop
    ld a, a
    ld bc, $000f
    db $fc
    nop
    nop
    nop
    inc bc
    nop
    rst $38
    ld b, $ff
    ld [de], a
    db $fd
    ldh a, [rIF]
    ei
    rlca
    ld b, $ff
    inc a
    rst $38
    ld [hl], b
    rst $38
    cp $01
    cp $ff
    ldh a, [rIF]
    ret nz

    rst $38
    nop
    rst $38
    ccf
    ret nz

    inc e
    rst $38
    ld a, h
    rst $08
    ld hl, sp+$3f
    di
    rst $38
    rst $38
    inc bc
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
    ld [$0a09], sp
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
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld d, $17
    jr jr_0be_75f4

    ld a, [de]
    dec de
    inc e
    inc d
    dec e
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $1f
    jr nz, jr_0be_760b

    ld d, $22
    inc hl
    inc h
    inc d
    dec h
    nop
    nop
    nop
    nop

jr_0be_75f4:
    nop
    nop
    ld h, $27
    jr z, jr_0be_7623

    ld a, [hl+]
    dec hl
    inc l
    inc d
    dec l
    ld l, $00
    nop
    nop
    nop
    nop
    nop
    cpl
    jr nc, jr_0be_763a

    ld [hl-], a
    inc sp

jr_0be_760b:
    inc [hl]
    inc d
    dec [hl]
    ld [hl], $37
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_0be_7651

    ld a, [hl-]
    dec sp
    inc a
    inc d
    inc d
    dec a
    ld a, $3f
    nop
    nop
    nop

jr_0be_7623:
    nop
    nop
    nop
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    inc d
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
    inc d

jr_0be_763a:
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
    nop

jr_0be_7651:
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
    ld h, e
    ld h, h
    ld h, l
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, [hl]
    ld h, a
    ld l, b
    inc d
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    inc d
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
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
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0501
    dec b
    dec b
    ld bc, $0000
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld b, $06
    dec b
    dec b
    dec b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld b, $06
    dec b
    dec b
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
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
    nop
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
    nop
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
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [$c0]
    add b
    nop
    nop
    rst $38
    nop
    cp $01
    jp hl


    ld d, $36
    ld sp, hl
    cp $f9
    ld hl, sp-$01
    ld sp, hl
    cp $3e
    db $dd
    ld e, h
    cp a
    ld hl, sp-$01
    pop hl
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    inc bc
    rst $38
    rra
    rst $38
    ld a, [hl]
    rst $38
    pop af
    cp $80
    rst $38
    ld [bc], a
    db $fc
    ld e, $e1
    ld d, b
    adc a
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    add hl, bc
    or $70
    adc a
    ld [hl], d
    adc l
    ld sp, $21ce
    sbc $35
    jp z, $fc03

    inc d
    db $eb
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
    jp nz, $e6ff

    rst $38
    db $e3
    rst $38
    db $f4
    rst $38
    di
    rst $38
    ei
    rst $38
    ld a, b
    rst $38
    ld a, c
    rst $38
    ld a, h
    rst $38
    dec a
    rst $38
    ccf
    rst $38
    ld e, $fe

jr_0be_78ba:
    jr jr_0be_78ba

    ld e, $ff
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    cpl
    rst $38
    ld d, a
    rst $38
    ld a, e
    rst $38
    ld a, l
    rst $38
    cp a
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

jr_0be_78df:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $e3
    db $fc
    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $eb
    inc d
    add $39
    sub e
    ld l, h
    inc l
    db $d3
    cp h
    ld b, e
    or b
    ld c, a
    ret nc

    cpl
    jr nz, jr_0be_78df

    add b
    ld a, a
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ld bc, $0fff
    rst $38
    ld a, [hl]
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    inc bc
    db $fc
    inc e
    db $e3
    ldh a, [rIF]
    add b
    ld a, a
    nop
    rst $38
    ld b, $f9
    ld e, $e1
    rlca
    ld hl, sp+$41
    cp [hl]
    ld d, c
    xor [hl]
    ld [$94f7], sp
    ld l, e
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
    inc bc
    rst $38
    inc c
    rst $38
    ld sp, $c7ff
    rst $38
    inc e
    rst $38
    push hl
    rst $38
    add a
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    rla
    rst $38
    jp c, Jump_0be_79fd

    ldh a, [$c1]
    db $e3
    ld bc, $248e
    rra
    adc [hl]
    ld a, a
    ld e, [hl]
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
    rst $20
    ld hl, sp+$7e
    add c
    ldh a, [rIF]
    ret nz

    ccf
    nop
    rst $38
    ld b, b
    cp a
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
    ld bc, $0fff
    rst $38
    ld a, [hl]
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    inc bc
    db $fc
    inc e
    db $e3
    ld h, b
    sbc a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld [hl-], a
    call $9f60
    ld h, d
    sbc l
    ld [bc], a
    db $fd
    inc h
    db $db
    inc h
    db $db
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld h, b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld sp, hl
    rst $38
    di
    rst $38
    xor a
    cp $78
    db $fc
    ld [c], a
    pop af
    add d
    rst $00
    dec d
    adc [hl]
    ld d, h
    cp e
    ld d, b
    rst $28
    ld b, b
    cp a
    inc bc
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld a, a

Jump_0be_79fd:
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    rst $38
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], b
    adc a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_0be_7a2d:
    rst $38
    inc c
    rst $38
    ld a, [hl]
    rst $38
    ldh a, [rIE]
    pop bc
    rst $38
    ld bc, $1bff
    rst $20
    ld h, c
    sbc a
    ld bc, $01ff
    rst $38
    add hl, bc
    rst $30
    add hl, sp
    rst $00
    jr jr_0be_7a2d

    nop
    rst $38
    nop
    rst $38
    ld d, b

jr_0be_7a4b:
    xor a
    jr nz, jr_0be_7a2d

    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld bc, $01ff
    rst $38
    rla
    rst $38
    rla
    rst $38
    inc c
    cp $71
    ld hl, sp-$2b
    db $e3
    ld b, b
    adc a
    ld [hl+], a
    dec e
    adc b
    ld [hl], a
    jr nz, jr_0be_7a4b

    ld bc, $07ff
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
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, $ff
    ld sp, hl
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    cp $ff
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
    jr nz, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    db $10
    rst $38
    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    ld c, $ff
    ld b, $ff
    add [hl]
    rst $38
    add [hl]
    rst $38
    add [hl]
    rst $38
    add [hl]
    rst $38
    jp $c3ff


    rst $38
    jp $c3ff


    rst $38
    jp $63ff


    rst $38
    ld h, c
    rst $38
    ld h, c
    rst $38
    ld h, c
    rst $38
    ld [hl], c
    rst $38
    ld [hl], c
    rst $38
    scf
    rst $38
    ld [hl-], a
    rst $38
    ld [hl-], a
    rst $38
    ld a, d
    rst $38
    ld a, e
    rst $38
    dec sp
    rst $38
    ld e, a
    rst $38
    ld a, l
    rst $38
    rst $08
    rst $28
    rra
    adc a
    ld e, a
    ccf
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
    rst $38
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
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
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
    ld bc, $02ff
    rst $38
    ld bc, $07ff
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld e, $ff
    ld a, $ff
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    and $c0
    xor $c0
    rst $08
    rst $00
    sbc $c7
    pop af
    rst $00
    di
    rst $00
    db $e3
    rst $00

jr_0be_7b5c:
    db $e3
    ld h, a

jr_0be_7b5e:
    db $ed
    ld h, e
    db $ed
    ld h, e
    ld hl, sp+$63

jr_0be_7b64:
    ei
    ld h, e
    di
    jr nz, jr_0be_7b5c

    jr nc, jr_0be_7b5e

    jr nc, jr_0be_7b64

    inc sp
    rst $38
    rra
    pop hl
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
    rst $38
    rst $38
    sbc a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    add a
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38

jr_0be_7bb0:
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
    rst $28
    rst $38
    sbc c
    ld sp, hl
    jr nc, jr_0be_7bb0

    ld a, b
    ld hl, sp+$4e
    adc $c0
    jp $8180


    add c
    add b
    add c
    add b
    add b
    add b
    ret nz

    ldh a, [$fd]
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add hl, sp
    ld bc, $0737
    ld a, h
    ccf
    db $e3
    rst $38
    sbc a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    di
    rst $38
    adc $fe
    inc a
    ldh a, [$fd]
    ldh [$9f], a
    nop
    ccf
    ld c, $7f
    jr c, @+$01

    ldh a, [rIE]
    ldh [rIE], a
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld sp, hl
    rst $38
    ei
    rst $38
    ld hl, sp+$01
    cp $07
    ld sp, hl
    rst $38
    ld a, [$ffff]
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
    ldh [rIE], a
    ld a, [c]
    rst $38
    ld sp, hl
    rst $38
    ld a, d
    ld a, a
    dec e
    ccf
    dec e
    rra
    rla
    rra
    rla
    sbc a
    rlca
    rst $08
    adc a
    ld h, a
    rrca
    scf
    daa
    ccf
    rra
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld [hl], b
    set 6, b
    inc hl
    ldh a, [$e3]
    ldh a, [$e7]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$cb]
    ldh a, [$33]
    ldh a, [$f7]
    ret nz

    rst $20
    add b
    ld l, a
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
    cp a
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    rst $38
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
    cp $ff
    pop af
    rst $38
    ldh a, [rIE]
    cp $ff
    ld sp, hl
    rst $38
    rlca
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    db $fc
    ld a, h
    ei
    ld hl, sp-$01
    ld hl, sp+$3f
    rst $38
    di
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ld hl, sp-$3d
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld a, l
    rst $38
    ld a, e
    rst $38
    cp l
    rst $38
    or e
    rst $38
    rst $18
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld e, a
    rst $38
    add hl, de
    pop af
    ld a, c
    pop af
    db $fc
    ld hl, sp-$05
    db $fc
    ei
    db $fc
    db $fd
    cp $fd
    cp $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
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
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
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
    rlca
    rst $38
    rra
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

jr_0be_7d1f:
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    pop af
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
    rst $38
    rst $38
    rst $38
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
    rlca
    rst $38
    jr c, @+$01

    ret nz

    rst $38
    ret nz

    ccf
    rst $38
    cp a
    ld h, b
    sbc a
    jr nc, jr_0be_7d1f

    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fc
    rst $30
    or $87
    add [hl]
    add d
    inc bc
    rst $08
    add e
    cp a
    pop bc
    cp a
    pop bc
    db $dd
    db $e3
    pop de
    rst $28
    ret nz

    ld a, a
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    dec sp
    rst $38
    ld a, a
    cp $ef
    cp $bf
    rst $38
    rst $18
    cp a
    rst $18
    cp a
    rst $28
    rst $18
    rst $28
    rst $18
    db $f4
    rst $28
    pop af
    rst $28
    add $ff
    sbc b
    rst $38
    rst $38
    ldh [rIE], a
    jp Jump_000_07ff


    rst $38
    rra
    rst $38
    ccf
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    add c
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
    ccf
    db $fc
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    adc a
    rst $38
    add a
    ccf
    ei
    rst $38
    rst $20
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
    nop
    nop
    rst $38
    rst $38
    nop
    rlca
    ld hl, sp+$00
    rst $38
    ld bc, $07fe
    db $fc
    ei
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    rst $18
    cp [hl]
    rst $18
    cp [hl]
    sbc a
    cp $9f
    rst $38
    rra
    ld a, a
    ld e, $7f
    ld e, a
    ccf
    sbc $3f
    ld e, a
    cp a
    ld a, [hl]
    cp a
    ld e, a
    cp a
    rra
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc [hl]
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    cp a
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
    rst $38
    cp a
    ld a, a
    cp a
    ld a, a
    rst $18
    cp a
    rst $00
    cp a
    rra
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ret nz

    rst $38
    ld bc, $c0fe
    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38

jr_0be_7e45:
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp $ff
    pop af
    cp $ff
    jp Jump_000_3fff


    rst $38
    inc bc
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    rst $38
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
    ld bc, $fe01
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add a
    ld hl, sp+$0f
    ret nz

    ccf
    rst $38
    rst $38
    rst $38

Call_0be_7e85:
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld h, c
    ld b, b
    ld [hl], c
    ld h, c
    scf
    jr nz, jr_0be_7e45

    ld de, $9768
    ld [hl], b
    sbc a
    nop
    rst $38
    sub b
    rst $38
    sub c
    cp $83
    rst $38
    sbc c
    rst $20
    ld e, $f9
    sbc a
    cp $b6
    rst $38
    xor a
    rst $38
    cp $ff
    ld a, [hl]
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
    ld a, a
    rst $38
    rra
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
    rra
    rra
    rst $20
    rlca
    ld sp, hl
    rrca
    pop af
    add e
    db $fc
    ldh a, [rIE]
    pop bc
    cp $1f
    pop hl
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
    rrca
    rst $38
    ldh [$1f], a
    db $fc
    jp $f8ff


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    cp $f1
    ld hl, sp-$39
    rst $28
    sbc a
    ldh a, [$7f]
    rlca
    ld hl, sp-$01
    nop
    rst $38
    nop
    ld hl, sp+$7f
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
    rst $38
    ld b, c
    rst $38
    add b
    rst $38
    cp l
    ld a, $7d
    cp [hl]
    ld a, l
    cp [hl]
    dec a
    cp $3d
    cp $3d
    cp $bc
    rst $38
    inc sp
    db $fc
    sbc a
    ld a, h
    rst $20
    sbc a
    ld sp, hl
    rst $20
    ld h, a
    rst $38
    sbc b
    ld a, a
    ld a, c
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rlca
    ld hl, sp+$3f
    jp $fc03


    ld bc, $fffe
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
    add b
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    ldh [$9f], a
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst $38
    rrca
    rst $38
    pop af
    cp $1f
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    ld b, c
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
    nop
    rst $38
    ld h, [hl]
    rst $38
    ld e, c
    rst $38
    ld l, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    db $e3
    rst $38
    rst $00
    rst $38
    rst $18
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
    cp $fb
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
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ld bc, $07fe
    ld sp, hl
