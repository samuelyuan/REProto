SECTION "ROM Bank $058", ROMX[$4000], BANK[$58]

    rra
    sbc a
    sbc a
    sbc a
    sbc $de
    rst $18
    rst $08
    rst $08
    db $db
    rst $28
    reti


    ld a, a
    cp $7d
    cp $7c
    db $fd
    rst $38
    call c, $eeff
    rst $38
    xor a
    rst $28
    cp a
    rst $38
    sbc [hl]
    rst $38
    cp $7f
    cp $3f
    ld a, d
    ld a, $72
    ccf
    rst $38
    rst $18
    rst $38
    sbc a
    ld a, [hl]
    rst $38
    ld e, h
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    ccf
    rst $18
    ccf
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    rst $08
    rst $28
    rst $38
    rst $28
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
    ld a, a
    rst $38
    rra
    rst $08
    rra
    rst $08
    rrca
    rst $28
    ccf
    rst $38
    ccf
    rst $38
    ccf
    cp a
    ccf
    rst $38
    sbc a
    rst $18
    sbc a
    rst $08
    sbc a
    rst $08
    adc a
    rst $18
    rst $38
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
    db $fc
    db $fd
    rst $38
    ld a, [$fefd]
    ld sp, hl
    or $f9
    rst $30
    ld hl, sp-$0f
    cp $f0
    rst $38
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    ei
    db $fc
    ld a, [$fafd]
    db $fd
    cp $f9
    cp $f9
    cp $f9
    rst $38
    ld hl, sp-$06
    db $fd
    rst $38
    ld hl, sp-$05
    db $fc
    di
    db $fc
    ei
    db $fc
    di
    db $fc
    ei
    db $fc
    ei
    db $fc
    rst $38
    db $fc
    db $fd
    cp $f0
    rst $38
    ei
    rst $20
    rst $28
    di
    db $ed
    di
    dec c
    di
    sbc l
    db $e3
    db $fd
    add e
    ccf
    pop bc
    cpl
    pop bc
    ld a, $c1
    ld a, [hl]
    add c
    ld a, [hl]

Call_058_40bf:
    add c
    and c
    rst $18
    and c
    ret


    ld hl, $2059
    jp c, $6181

    add c
    dec a
    add e
    ld a, e
    add c
    ld a, l
    inc bc
    rst $38
    inc bc
    ei
    inc bc
    ld a, e
    rlca
    rst $38
    inc bc
    xor e
    inc de
    cp e
    rrca
    rst $28
    inc bc
    db $e3
    add hl, hl
    rra
    jr nc, jr_058_40f3

    xor b
    rrca
    ld [hl], $0f
    cp a
    rlca
    push hl
    rra
    add a
    ld a, a
    sub c
    ld l, a
    rst $38
    ld a, a
    rst $38

jr_058_40f3:
    rst $38
    cp a
    ld sp, $3fbd
    cp a
    cp a
    cp a
    rst $18
    rst $38
    cp a
    rst $38

Jump_058_40ff:
    cp a
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rlca
    rst $38
    ld bc, $e4ef
    rst $38
    xor $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    cp [hl]
    rst $38
    sbc $ff
    adc $ff
    cp $ff
    di
    rst $38
    ld a, e
    rst $38
    ei
    rst $38
    dec sp
    ld e, a
    rra
    rst $18
    adc a
    rst $18
    adc [hl]
    ld a, $df
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $96
    rst $38
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
    cp $ff
    cp $ff
    cp $ff
    db $fd
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    set 7, a
    sbc a
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    rra
    rst $38
    rst $38
    rst $18
    db $fd
    rst $18
    ld e, l
    rst $38
    rra
    rst $38
    rst $18
    rst $38
    call c, Call_058_4eff
    rst $38
    ld a, [hl]
    rst $38
    rst $20
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    ei
    db $fc
    rst $38
    ld hl, sp-$01
    db $fc
    ei
    db $fc
    inc a
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
    rst $38
    ld a, a
    rst $38
    add hl, de
    rst $38
    ei
    nop
    rst $38
    nop
    rst $28
    nop
    ld a, c
    add b
    rra
    ldh [$3d], a
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    and b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    pop hl
    cp $80
    rst $38
    ret z

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    add b
    rst $38
    sub a
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
    ld a, a
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    and c
    rst $38
    di
    rst $28
    di
    di
    add hl, sp
    ei
    adc l
    rst $00
    rst $28
    rst $38
    and a
    rst $30
    sub a
    rst $38
    rst $30
    rst $30
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    cp a
    ccf
    rst $28
    ccf
    push af
    ld a, a
    adc $7f
    ld d, l
    ld a, a
    xor [hl]
    ld a, a
    sub l
    ld a, a
    xor [hl]
    ld a, a
    ld d, l
    ccf
    ld l, $3f
    rst $30
    rst $38
    rst $30
    ld a, a
    ld [hl], a
    rst $38
    rst $38
    rst $38
    ld [c], a
    rst $38
    jp hl


    db $f4
    pop hl
    cp $fe
    db $fd
    cp $fd
    ld a, [$f9f9]
    ld a, [c]
    push af
    ld a, [c]
    rst $20
    ld [c], a
    rst $28
    ld [c], a
    rst $38
    ld [c], a
    rst $10
    xor $d6
    rst $28
    rst $10
    xor $64
    rst $38
    ld c, h
    rst $30
    ld l, a
    db $f4
    rst $30
    db $fc
    di
    db $fc
    rst $30
    ld hl, sp-$01
    ldh a, [$f7]
    ld hl, sp-$34
    di
    cp $e1
    xor $f1
    db $ed
    ld a, [c]
    jp hl


    or $ef
    rst $38
    db $e3
    db $fc
    ld l, a
    ldh a, [$ef]
    ldh a, [$fc]
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
    ld a, e
    add h
    ccf
    ret nz

    ldh [rIE], a
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$1f], a
    cp $00
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    ret nc

    ldh [$fa], a
    pop hl
    rst $38
    rst $38
    ei
    db $fc
    db $fd
    ld hl, sp-$04
    ld hl, sp-$10
    ld hl, sp-$78
    ldh a, [$f5]

jr_058_427d:
    ld c, $7d
    ld c, $ee
    rra
    sub [hl]
    ld a, [hl]
    sub d
    ld d, [hl]
    db $10
    ret nc

    nop
    pop bc
    rst $38
    cp $bd
    rst $38
    inc a
    ei
    push bc
    ld a, [hl-]
    rst $20
    jr @-$17

    jr jr_058_427d

    add hl, de
    rst $20
    jr jr_058_42de

    cp h
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$9b], a
    db $e4
    ld hl, sp-$19
    add sp, -$09
    add sp, -$09
    ldh a, [rIE]
    ld b, b
    rst $38
    nop
    rst $38
    ld a, [c]
    rst $38
    cp $ff
    cp $ff
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    sub h
    rst $18
    rlca
    rst $28
    sub a
    rst $38
    rra
    cp a
    ld e, a
    push de
    ld a, [$70ff]
    ld a, h
    di
    db $fc
    ld a, e
    rst $38
    ei
    ld sp, hl
    rst $38
    rst $38
    db $fd
    ld a, [$fffd]
    di
    cp a
    rst $30

jr_058_42de:
    ld a, a
    cp a
    and a
    rst $38
    dec [hl]
    rst $38
    ei
    rst $38
    ld [hl], l
    rst $38
    cp e
    rst $38
    ld [hl], l
    rst $38
    ld sp, hl
    rst $38
    db $e4
    rst $38
    ldh [rIE], a
    pop af
    rst $38
    db $fd
    rst $30
    rst $38
    cp a
    cpl
    ld sp, hl
    cpl
    ld sp, hl
    cp a
    ld [hl], e
    sbc a
    ld [hl], e

Call_058_4300:
    ld [hl], e
    rst $38
    rst $18
    ld a, a
    ldh a, [$7f]
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld b, c
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    ccf
    ret nz

    ld a, a
    ld hl, sp-$09
    ld a, h
    ld [hl], c
    cp $20
    rst $38
    inc bc
    db $fc
    scf
    ret z

    and a
    ret c

    ld e, a
    ldh [rIE], a
    nop
    rst $38
    nop
    ld a, b
    add b
    ld [hl], b
    add b
    cp $00
    cp $00
    cp $00
    ei
    call nz, $bf7b
    ld hl, sp+$07
    call nc, $ff2f
    nop
    sub [hl]
    ld sp, hl
    xor $d1
    cp $c1
    cp b
    rst $00
    or b
    rst $08
    ld a, h
    rst $38
    db $fc

jr_058_4347:
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    sbc a
    rst $38
    daa
    rst $38
    ld b, b
    ccf
    and d
    ld a, l
    rst $00
    jr c, jr_058_4361

    nop
    inc c
    nop
    ld l, h
    add b
    sub e

jr_058_4361:
    db $ec
    ld b, c
    cp [hl]
    ld a, h
    add e
    jr nz, jr_058_4347

    add b
    ld a, a
    nop
    rst $38
    ld b, b
    rst $38
    ld d, b
    ld a, a
    nop
    rrca
    add b
    rst $38
    nop
    ld a, a

jr_058_4376:
    nop
    ld h, a
    jr jr_058_4361

    db $eb
    rst $38
    db $dd
    ld a, a
    adc c
    rst $38
    xor e
    rst $38
    ld bc, $02f9
    rst $38
    db $10
    cp $09

jr_058_4389:
    rst $38
    add hl, bc
    ei
    ld c, b
    ei
    ld [$e7ff], sp
    jr jr_058_4376

    inc e
    pop hl
    ld e, $41
    cp [hl]
    db $10
    rst $38
    jr nc, @+$01

    jr @+$01

    ld [$80ff], sp
    rst $38
    or b
    rst $38
    ld sp, hl
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
    rst $28
    rst $30
    xor $f7
    rst $38
    cp $fd
    cp [hl]
    rst $38
    cp h
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    cp [hl]
    ld a, l
    cp $0d
    rst $18
    xor a
    rst $30
    rst $38
    rst $38
    rst $38
    rst $18
    cp $ef
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    ld e, l
    rst $38
    xor [hl]
    rst $38
    db $dd
    rst $38
    xor [hl]
    rst $38
    ld e, l
    rst $38
    inc c
    rst $38
    inc d
    db $eb
    add e
    ld a, h
    inc c
    rst $38
    inc e
    rst $38
    call c, $d9ff
    cp $fb
    db $fc
    ld sp, hl
    cp $ff
    ei
    rst $38
    rst $38
    push af
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    di
    db $fc
    di
    db $fc
    add c
    ld a, [hl]
    adc a
    ld [hl], b
    rst $08
    jr nc, jr_058_4389

    ld a, l
    add [hl]
    ld a, a
    add d
    ld a, a
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    sbc a
    nop
    ccf
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop

jr_058_4420:
    ldh a, [rP1]
    rst $30
    ld hl, sp+$01
    cp $01
    cp $fc
    inc bc
    ld a, l
    add e
    db $fd
    inc bc
    dec c
    di
    ld e, $e1
    inc bc
    db $fc
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld a, $f1
    rra
    ldh [$df], a
    jr nz, jr_058_4420

    ldh [$ef], a
    ldh a, [rTIMA]
    ld hl, sp+$64
    sbc b
    ld [bc], a
    db $fc
    add hl, sp
    ld [bc], a
    db $10
    ld [bc], a
    inc d
    ld [bc], a
    ei
    rlca
    ei
    rlca
    inc a
    jp $f30c


    ld b, $f8
    rlca
    ld hl, sp+$07
    ld hl, sp+$25
    jp c, $d827

    daa
    ret c

    ld de, $11ee
    xor $dc
    db $e3
    dec d
    rra
    ld b, e
    ld b, e
    ccf
    ccf
    inc c
    di
    inc c
    di
    sub b
    ld l, a
    ld c, h
    or e
    dec c
    di
    dec de
    rst $20
    ld h, a
    sbc e
    ei
    rlca
    ld [hl], b
    adc a
    ld h, c
    sbc [hl]
    ld hl, $34de
    rlc b
    rst $38
    nop
    rst $38
    jp nz, $c0fd

    rst $38
    nop
    rst $38
    ld bc, $cbff
    rst $38
    ei
    rst $38
    ei
    rst $38
    or $ff
    rst $38
    rst $38
    cp $ff
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
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $30
    rst $28
    rst $38
    rst $38
    rst $28
    ld a, h
    cp l
    ld b, [hl]
    cp h
    ld b, a
    jp $9787


    jp $c7ff


    ei
    sbc a
    db $fd
    rst $38
    rst $38
    ld a, l
    ld a, h
    ei
    db $fc
    rst $38
    rst $38
    rst $38
    ld [hl], l
    rst $38
    cp e
    rst $38
    ld [hl], l
    rst $38
    xor e
    rst $38
    ld [hl], l
    rst $38
    cpl
    rst $38
    ld a, a
    add a
    ld a, [hl-]
    push bc
    inc hl
    rst $38
    and e
    ld a, a
    or e
    ld a, l
    cp c
    ld a, a
    or a
    ld a, e
    ccf
    ei
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    ld [$0cff], sp
    rst $38
    nop
    rst $38
    ld a, a
    add b
    ld a, [hl]
    add c
    db $fc
    inc bc
    ld a, a
    add b
    ld a, l
    sbc [hl]
    ld [hl], $cf
    add b
    rst $38
    ld c, $f1
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
    db $e3
    nop
    ld b, b
    nop
    ld [de], a
    nop
    ld a, [de]
    nop
    rst $08
    nop
    rst $08
    nop
    sbc $01
    cp $01
    rst $38
    nop
    call z, Call_058_5f3f
    cp a
    db $eb
    rra
    rst $30
    rrca
    db $fd
    add e
    rrca
    pop af
    ld c, e
    cp l
    rra
    ldh [rSCX], a
    add b
    rst $20
    nop
    ld a, [c]
    rlca
    call $ec02
    nop
    add sp, $00
    ld bc, $7b00
    nop
    nop
    nop
    ld b, b
    nop
    ld h, h
    nop
    ld c, [hl]
    xor [hl]
    ret nz

    jr nz, @-$0e

    ld [$08f0], sp
    ld hl, sp+$06
    ld a, a
    add b
    rra
    ldh [rIF], a
    ldh a, [$f3]
    inc c
    di
    inc c
    rst $30
    ld [$e01f], sp
    rst $38
    add b
    ld a, a
    add b
    cp $fe
    rst $38
    rst $38
    dec e
    db $e3
    rst $38
    ld bc, $817e
    cp a
    ldh [rIE], a
    pop hl
    cp $e1
    rst $38
    pop hl
    rst $38
    pop hl
    pop hl
    pop hl
    ld bc, $0111
    pop af
    jr nz, @-$28

    dec de
    db $e4
    rst $38
    nop
    rra
    nop
    xor $f0
    xor $e0
    db $ec
    ldh a, [$e6]
    add sp, -$15
    ldh [$e9], a
    ldh [rIF], a
    jr nc, jr_058_45a4

    ld h, b
    inc bc
    db $fc
    nop
    nop
    nop
    nop

jr_058_45a4:
    inc b
    nop
    inc c
    nop
    sub b
    ld [$c0ff], sp
    rst $38
    rst $38
    rst $38
    rst $38
    cp $e7
    rst $38
    ld h, a
    xor a
    ld [hl], a
    rst $28
    ccf
    ld b, a
    cp a
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    rst $30
    ld a, a
    cp $fd
    ei
    rst $38
    rst $38
    db $fd
    cp a
    or e
    rst $38
    rst $38
    di
    rst $20
    ei
    ei
    rst $38
    rst $18
    rst $38
    rst $30
    rst $38
    ld [$d7ff], a
    rst $38
    ld [$d7ff], a
    rst $38
    jp nz, Jump_058_40ff

    rst $38
    ld [hl], a
    adc b
    push bc
    cp $c6
    rst $38
    rst $00
    rst $38
    rst $08
    rst $30
    rst $20
    rst $18
    ret c

    rst $20
    call c, $ffe3
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    daa
    rst $18
    ld h, $df
    ld d, $ff
    rst $20
    rra
    rst $30
    rrca
    rst $20
    rra
    daa
    rst $18
    ld b, a
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld bc, $fdff
    inc bc
    rst $38
    inc bc
    add e
    ld a, a
    adc l
    ld [hl], e
    db $ed
    inc de
    dec a
    inc bc
    cp l
    inc bc
    ret


    scf
    pop af
    rrca
    ld sp, hl
    rst $30
    ld c, $f1
    rst $38
    nop
    sbc e
    ld h, b
    ld c, h
    cp a
    ld b, b
    cp a
    add a
    ld hl, sp+$17
    add sp, -$0d
    db $fc
    db $fc
    rst $38
    ld a, h
    jp $0ef1


    or e
    ld a, h
    add hl, sp
    cp $00
    rrca
    ld [c], a
    dec e
    di
    ld a, h
    pop af
    cp $fb
    inc b
    ld bc, $0000
    nop
    nop
    nop
    jr nz, jr_058_468e

    ld b, h
    ld a, d
    ld e, [hl]
    ld h, c
    nop
    rrca
    ccf
    ld b, b
    ccf
    nop
    ld [$4009], sp
    ret nz

    nop
    ld b, b
    nop
    inc b
    ld c, e
    ld a, h
    ld a, [$fefc]
    ldh a, [rIE]
    ld h, b
    db $fd
    jp $c7bf


    sbc a
    rst $38
    cp a
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
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38

jr_058_468e:
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
    ccf
    rra
    ccf
    rra
    rra
    rra
    rrca
    dec sp
    rlca
    ei
    rst $38
    ei
    rst $38
    ld a, a
    pop af
    rst $38
    db $db
    ccf
    rst $18
    ld e, a
    rst $38
    rst $38
    ld a, a
    cp a
    ld a, a
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    dec sp
    db $dd
    ei
    rst $38
    rst $18
    sbc [hl]
    rst $38
    rst $38
    rst $38
    rst $30
    rst $28
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    db $76
    rst $38
    xor $ff
    rst $30
    rst $38
    db $ed
    rst $38
    rst $10
    db $fd
    cpl
    db $fd
    ld [hl-], a
    call $ff02
    call $ccfe
    ld a, [$cfba]
    adc a
    rst $38
    rst $28
    rst $38
    ld c, l
    cp a
    dec c
    ei
    dec e
    db $e3
    ld sp, $01ff
    cp $00
    rst $38
    ld [de], a
    db $fd
    db $10
    rst $28
    ld [$1cff], sp
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
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ld [hl], a
    rst $38
    cp e
    ld a, a
    ld [hl], e
    rst $38
    dec a
    di
    add hl, sp
    rst $38
    ld de, $9bff
    push af
    ld de, $90ff
    ld a, a
    nop
    rst $38
    dec bc
    db $fc
    add e
    ld a, h
    jp $873c


    ld a, h
    daa
    cp $c1
    cp $63
    db $fc
    pop bc
    ld a, $00
    rra
    ret z

    rla
    jr jr_058_4755

    ld bc, $b10f
    rrca
    ld bc, $d1ff

jr_058_4755:
    rrca
    ld de, $110f
    rrca
    ld c, l
    rlca
    rrca
    rlca
    rlca
    rrca
    rra
    ld a, a
    rrca
    ccf
    rst $30
    rrca
    inc a
    inc bc
    jr nc, jr_058_4779

    jr c, @+$21

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

jr_058_4779:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $ec
    db $fc
    call c, Call_000_1cfd
    db $fc
    add hl, de
    cp $bc
    cp $f8
    db $fc
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$0f
    ld sp, hl
    ld sp, hl
    ldh a, [$72]
    ld hl, sp-$0d
    di
    ldh a, [$e2]
    db $e4
    ldh [$e4], a
    ret nz

    or h
    add b
    xor h
    inc d
    and $1c
    push af
    call nz, $c4fc
    xor $8c
    ld l, l
    inc e
    ld a, l
    sbc b
    ld a, a
    add hl, sp
    ld a, e
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    ld a, a
    rst $38
    rst $38
    di
    di
    rst $38
    rst $38
    or e
    cp a
    rst $10
    sbc a
    rst $38
    sbc a
    rst $38
    cp a
    ld a, a
    ld a, a
    rst $38
    rra
    rst $38
    rra
    rst $38
    dec e
    rst $38
    ld e, e
    cp a
    db $fd
    rrca
    dec l
    jp nc, $ff00

    and $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    ld a, a
    cp a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    cp $e7
    cp a
    rst $38
    ccf
    rst $38
    rrca
    pop af
    adc a
    pop af
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    ld hl, sp-$01
    ld a, l
    cp $7f
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $7f
    cp $3f
    cp $fd
    cp $fd
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ld sp, hl
    cp $f1
    cp $f1
    cp $f7
    cp $f7
    cp $ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, b
    nop
    add e
    add b
    sub l
    add b
    inc b
    add b
    nop
    ret nz

    ldh [$80], a
    ld hl, $2000
    ld b, c
    ld h, c
    add b
    add b
    ld b, b
    nop
    db $10
    rrca
    ld bc, $0947
    cpl
    ld b, e
    cpl
    rrca
    rra
    rrca
    ld e, e
    add hl, de
    dec hl
    ld d, c
    ld a, a
    sbc h
    ccf
    ld d, $37
    dec bc
    ld a, [hl]
    ld h, c
    ld a, a
    db $ed
    rst $28
    db $ed
    rst $18
    rst $08
    rst $18
    rst $18
    cp a
    pop bc
    db $fd
    pop hl
    di
    ld l, c
    rst $30
    ld h, a
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    ld e, a
    rrca
    rst $18
    ccf
    ld a, a
    ccf
    rst $38
    ld a, a
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
    dec a
    ld e, $f9
    and a
    ld sp, hl
    db $dd
    ld a, [$fef8]
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
    rst $18
    rst $38
    rst $28
    rst $18
    rst $38
    rst $08
    cp a
    rst $00
    ccf
    rst $00
    ld a, a
    add e
    ld e, e
    add e
    add hl, de
    add c
    ret c

    add c
    sbc b
    add b
    ld [$2080], sp
    add b
    ld h, b
    add b
    ld [hl], b
    add b
    ldh a, [rP1]
    ret nz

    nop
    jr nc, jr_058_48dc

jr_058_48dc:
    ldh [rP1], a
    or b
    nop
    ld h, d
    nop
    ld [hl], d
    nop
    ld [hl], e
    nop
    dec l
    nop
    cp l
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    ld b, b
    cp a
    ld b, b
    cp a
    nop
    ei
    ld b, b
    cp e
    ld [bc], a
    db $ed
    nop
    rst $38
    nop
    db $eb
    ld [bc], a
    di
    ld b, $77
    dec b
    rst $30
    inc b
    rst $38
    inc b
    rst $38
    inc c
    rst $28
    inc e
    rst $18
    ld c, $0f
    inc e
    dec e
    db $e3
    inc e
    jp c, $f83d

    rra
    call c, Call_058_4c3f
    cp a
    adc h
    rst $38
    adc $ff
    call z, $c0ff
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [$ef]
    ld hl, sp-$19
    add sp, -$09
    add sp, -$09
    ld a, [$fcf5]
    di
    ldh a, [rIE]
    ld hl, sp-$01
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
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
    ld a, [$7f38]
    jr nc, jr_058_49d4

    ld h, a
    rst $38
    ld c, a
    adc a
    rrca
    ld b, a
    rrca
    rst $38
    adc a
    rst $30
    cpl
    ld [hl], e
    inc hl
    ld [hl], e
    inc bc
    ld c, a
    ld de, $78ff
    rst $38
    ld hl, sp-$02
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
    ld a, h
    cp l
    ld [hl], e
    rst $38
    sub e
    cp $8f
    ld [hl], a
    jr c, jr_058_49f1

    ld sp, $f1f7
    or $e6
    ld [c], a
    and $ce
    call nz, $8fc6
    add e
    add e
    adc a
    add e
    adc a
    adc a
    rst $38
    ld e, $7c
    ld a, [hl]
    ld a, h
    ld a, [hl]
    db $fc
    db $fc
    db $fc
    db $f4
    db $fd
    xor $f0
    pop hl
    ldh a, [$e1]
    ld [hl], c
    pop hl
    rst $30
    ld [hl], b
    and c
    ldh [$f2], a
    rst $30
    ld [hl], a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    cp a
    ld a, a
    rra
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    ld a, a
    ccf
    ld a, a
    ccf
    ccf
    rra
    ccf
    rra
    rra
    rrca
    rra
    rrca
    rrca
    rrca
    rlca
    rlca
    rlca
    rlca
    inc bc

jr_058_49d4:
    inc bc
    inc bc
    ld sp, $9001
    ld bc, $00d1
    add sp, $00
    db $ec
    nop
    add b
    ld a, a
    ld b, c
    cp [hl]
    ret nz

    ccf
    ret nz

    ccf
    ld h, c
    sbc a
    nop
    rst $38
    nop
    db $ed
    nop
    rst $38
    add e

jr_058_49f1:
    ld a, h
    pop bc
    ld a, $01
    cp $a0
    ld e, a
    ld b, b
    cp a
    add b
    ld a, a
    adc [hl]
    ld a, a
    adc [hl]
    ld a, a
    ret nz

    ccf
    push de
    ld a, $94
    ld a, a
    inc h
    rst $18
    ld a, $cf
    jr nc, @-$2f

    jr nc, @-$2f

    inc [hl]
    rst $08
    inc b
    rst $38
    ld bc, $0dff
    rst $38
    ld c, b
    rst $38
    add hl, bc
    rst $38
    rrca
    rst $38
    ld c, $ff
    ld b, $ff
    rlca
    rst $38
    add l
    rst $38
    add a
    rst $38
    inc hl
    rst $18
    ld b, e
    rst $38
    add hl, de
    rst $28
    ld c, c
    or a
    adc c
    ld [hl], a
    inc bc
    rst $38
    add c
    rst $38
    ld bc, $89ff
    rst $30
    add e
    rst $38
    rlca
    rst $38
    cpl
    rst $38
    rrca
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
    cp $fe
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
    adc a
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    ld a, a
    cp l
    ld c, a
    cp l
    rrca
    rst $30
    ccf
    rst $38
    rst $38
    rst $08
    sbc a
    ccf
    rrca
    ccf
    rra
    ccf
    ccf
    ld [hl], a
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    db $e3
    ld h, $27
    ccf
    ld [$1889], sp
    sbc a
    dec de
    ld e, a
    ld b, d
    rst $38
    ret nz

    db $fc
    pop bc
    ld l, l
    pop bc
    db $e3
    push hl
    ei
    push af
    rst $38
    push af
    cp $f1
    db $fc
    db $e4
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
    cp $fc
    cp $ff
    cp $ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp a
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    ld [hl], a
    adc a
    ccf
    rst $00
    ccf
    rst $00
    cp a
    ld b, e
    cp c
    ld b, a
    db $dd
    inc hl
    call c, $4923
    or a
    ld bc, $07ff
    rst $38
    rlca
    rst $38
    adc e
    ld [hl], a
    inc de
    rst $28
    ld bc, $03ff
    rst $38
    ld bc, $33ff
    rst $18
    rst $08
    ccf
    rst $08
    ccf

Call_058_4b00:
    rrca
    rst $38
    sub a
    rst $38
    rst $10
    rst $38
    set 7, a
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    adc a
    rst $38
    rst $08
    rst $38
    rst $00
    rst $38
    rst $30
    rst $38
    di
    rst $38
    ld a, [c]
    rst $38
    ld a, [c]
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    di
    rst $38
    rst $30
    rst $30
    rst $30
    and $f6
    adc $90
    jp nz, $855c

    ld a, a
    sbc a
    ccf
    ccf
    ccf

Call_058_4b3f:
    scf
    ld [hl], a
    ld l, e
    ld a, a
    rst $30
    ei
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
    db $fd
    rst $38
    ei
    db $fd
    ei
    ld sp, hl
    di
    ld sp, hl
    di
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
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    rst $38
    ld hl, sp-$01
    ei
    di
    rst $30
    di
    di
    ld a, a
    ld a, [$feff]
    rst $38
    rst $20
    rst $28
    rst $38
    cp $ff
    rst $38
    cp $fb
    rst $38
    ei
    ei
    rst $38
    ld [hl], a
    ld a, a
    rlca
    scf
    rrca
    inc sp
    rra
    di
    ld l, a
    db $e3
    rst $28
    or a
    cp a
    rst $38
    cp a
    rst $38
    cp a
    cp a
    ld a, $7f
    ld a, [hl]
    ld a, a
    cp $fe
    cp $fe
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
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    cp $ff
    db $fc
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
    ccf
    rst $38
    ld a, a
    cp a
    rst $18
    ccf
    rst $38
    rra
    cpl
    rst $18
    cpl
    rst $18
    daa
    rst $18
    add a
    rst $38
    add a
    rst $38
    jp $e7ff


    rst $38
    ld b, e
    rst $38
    ld d, $03
    ld b, $00
    or $d3
    rst $38
    ei
    cp $ff
    cp $fc
    ld a, [$fffc]
    ld hl, sp-$10
    ldh a, [$f4]
    ld hl, sp-$03
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    rst $30
    rst $30
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cpl
    ld a, a
    rlca
    rlca
    ld h, a
    ld h, a
    jp $dbff


    rst $18
    cp a
    ld a, a
    sub a
    rst $18
    rst $20
    db $fd
    rst $38
    db $fd
    db $fc
    ld a, h
    inc l
    inc l
    rst $38
    cp $fe
    cp $ba
    or a
    ld hl, sp-$41
    pop af
    or c
    ei
    ld hl, sp-$59
    sbc $86
    sbc [hl]
    adc [hl]
    rst $18
    xor h
    rst $38
    adc h
    inc a
    ld a, [$fefc]
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff

Call_058_4c3f:
    cp $ff
    rst $38
    rst $08
    rst $38
    rst $00
    rst $38
    sbc a
    rst $28
    sbc a
    rst $28
    cp a
    rst $08
    xor a
    ld e, a
    cp a
    ld e, a
    sbc a
    ld a, a
    ld a, a
    sbc a
    ld e, a
    cp a
    ccf
    ld a, a
    ccf
    rst $38
    cp a
    ld a, $ff
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    rst $38
    ei
    db $fc
    ei
    db $fd
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
    jr jr_058_4ca3

    ld a, [de]
    ld c, $1b
    ld c, $0e
    ld c, $1c
    dec e
    ld e, $1f
    jr nz, jr_058_4cb7

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, @+$10

    ld c, $0e
    add hl, hl
    ld a, [hl+]
    dec hl

jr_058_4ca3:
    inc l
    dec l
    ld l, $2f
    jr nc, jr_058_4cda

    ld [hl-], a
    inc sp
    ld c, $34
    ld c, $0e
    ld c, $35
    ld [hl], $37
    jr c, jr_058_4cee

    ld a, [hl-]
    dec sp

jr_058_4cb7:
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld c, $0e
    ld c, $41
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

jr_058_4cda:
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld c, $64
    ld h, l
    ld c, $64
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h

jr_058_4cee:
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld c, $73
    ld [hl], h
    ld c, $75
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
    and e
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
    jr jr_058_4db7

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_058_4dc7

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_058_4dd7

    ld a, [hl+]
    dec hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_058_4db7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_058_4dc7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_058_4dd7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop

Jump_058_4e04:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0101
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
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    nop
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
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld bc, $0102
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0001
    ld bc, $0000
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld hl, $0101
    ld bc, $0101
    ld bc, $0101
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
    ld [$0808], sp
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    di
    db $fd
    ld hl, sp-$01
    ld sp, hl
    cp $ee
    rst $38
    jp c, Jump_058_40ff

    rst $38
    ld [$70f7], sp

Call_058_4eff:
    rst $38
    daa
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $e3
    nop
    ld c, $f1
    add [hl]
    ld a, c
    dec bc
    db $f4
    add c
    cp $00
    rst $38
    inc b
    ei
    daa
    ret c

    inc bc
    db $fc
    ld b, e
    rst $38
    inc bc
    db $fc
    rra
    ldh [rDIV], a
    ld a, [$f609]
    add hl, bc
    or $f7
    ld [$ff00], sp
    nop
    rst $38
    nop
    rst $38
    dec b
    rst $38
    rra
    rst $38
    ld a, l
    rst $38
    ld h, b
    rst $38
    ld l, e
    rst $38
    ld a, l
    rst $38
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    and b
    ld a, a
    add [hl]
    ld a, c
    inc e
    ld [c], a
    jr nz, @+$01

    nop
    rst $38
    add h
    rst $38
    ld [bc], a
    rst $38
    db $10
    rst $28
    nop
    rst $38
    ret z

    scf
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

jr_058_4f63:
    rst $38
    db $f4
    nop
    db $dd
    nop
    ld e, e
    and b
    adc a
    ld [hl], b
    ld [$fa37], sp
    dec b
    or [hl]
    ld bc, $0083
    ld d, b
    xor a
    ld e, a
    and b
    db $fd
    nop
    ld a, $01
    ld hl, sp+$07
    ret nz

    ccf
    nop
    rst $38
    rla
    rst $38
    ld bc, $00ff
    rst $38
    ld [de], a
    rst $20
    jr nz, jr_058_4f63

    ld h, l
    ld [bc], a
    ld h, b
    ld bc, $0050
    nop
    nop
    add b
    nop
    ld [hl+], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    nop
    nop
    nop
    dec b
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
    ret nz

    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    ld b, d
    db $fc
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $01
    cp $01
    cp $16
    adc c
    cp l
    rst $38
    cp $ff
    ld a, [$fcff]
    rst $38
    db $fc
    rst $38
    cp $ff
    cpl

Jump_058_500d:
    rst $38
    adc [hl]
    ld [hl], c
    ld [hl], b
    rst $38
    ld b, h
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], b
    rst $38
    xor [hl]
    ld d, c
    ccf
    rst $38
    ld [$40f7], sp
    rst $38
    nop
    rst $38
    add hl, bc
    rst $38
    sbc [hl]
    ld h, c
    ld a, h
    nop
    rra
    ldh [rP1], a
    rst $38
    ld b, b
    cp a
    add b
    rst $38
    ldh [rIE], a
    ld a, b
    rst $38
    ld a, l
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    cpl
    rst $38
    rra
    rst $38
    rra
    rst $38
    db $e3
    rra
    pop de
    nop
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    jr @+$01

    add c
    ld a, [hl]
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld a, [hl+]
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $66fe
    nop
    inc bc
    nop
    sbc $00
    rst $20
    nop
    cp [hl]
    ld b, b
    rst $38
    nop
    db $fd
    ld [bc], a
    nop
    nop
    dec bc
    db $f4
    rst $38
    nop
    rst $28
    nop
    ei
    inc b
    and e
    ld e, h
    ld [bc], a
    db $fd
    nop
    rst $38
    xor a
    rst $38
    ld [bc], a
    rst $38
    inc c
    di
    ld d, h
    cp e
    inc h
    sbc c
    db $10
    adc c
    and l
    nop
    stop
    ld de, $2100
    nop
    inc b
    nop
    ld a, [bc]
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
    xor a
    nop
    inc b
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
    xor $01
    rrca
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $00
    rst $38
    ld b, b
    rst $38
    rst $28
    nop
    add hl, bc
    or $c8
    scf
    add hl, bc
    or $00
    rst $38
    inc b
    ei
    adc d
    ld [hl], l
    rra
    ldh [$a7], a
    ld hl, sp+$46
    rst $38
    ld bc, $08fe
    rst $30
    nop
    rst $38
    daa
    ret c

    cp $00
    rst $28
    db $10
    inc e
    rst $38
    inc e
    rst $38
    ld d, b
    cp a
    ld b, c
    cp [hl]
    ld h, d
    sbc l
    inc sp
    call z, $f906
    db $fc
    rst $38
    cp d
    rst $38
    ld [$40ff], sp
    rst $38
    and b
    rst $38
    jr z, @+$01

    db $fc
    nop
    ld hl, $10de
    rst $28
    ld [hl-], a
    call $8f70
    pop af
    ld c, $77
    adc b
    or l
    nop
    nop
    rst $38
    inc e
    db $e3
    dec de
    db $e4
    ld b, [hl]
    cp c
    ld bc, $40fe
    cp a
    nop
    nop
    rlc h
    rst $20
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    ld b, b
    nop
    rst $18
    jr nz, jr_058_5190

    and h
    rst $38
    nop
    db $fd
    ld [bc], a
    db $fc
    inc bc
    ld h, b
    sbc a
    nop
    rst $38
    inc bc
    rst $38
    db $d3
    rst $38
    nop
    rst $38
    nop
    rst $18
    dec hl
    call nc, $c004
    ld [$0080], sp
    nop
    jr z, jr_058_5152

jr_058_5152:
    ld [bc], a
    nop
    jr nc, jr_058_5156

jr_058_5156:
    cp b
    nop
    jr jr_058_515a

jr_058_515a:
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
    inc b
    nop
    ld [bc], a
    nop
    ld h, $00
    inc h
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
    rst $38
    nop
    inc [hl]
    ret nz

    ld [hl+], a
    db $fd
    ld b, $f9
    inc b
    ei
    ld [bc], a
    db $fd
    add hl, bc
    or $ad
    ld b, d

jr_058_5190:
    add l
    nop
    ccf
    ret nz

    dec d
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ld l, $c0
    dec l
    ret nz

    push bc
    nop
    xor [hl]
    db $10
    db $fc
    nop
    ld a, d
    add b
    ld a, a
    add b
    db $fd
    nop
    ei
    nop
    db $fc
    nop
    ldh [rP1], a
    ld bc, $48fe
    or a
    ld [hl], b
    adc a
    ret nc

    rrca
    adc b
    rlca
    ld c, e
    inc b
    ret c

    daa
    ldh a, [rIE]
    ld bc, $c2fe
    db $fd
    dec b
    ld a, [$7d82]
    ld bc, $d7fe
    jr z, jr_058_51fd

    rst $38
    db $10
    rst $38
    ld b, d
    cp l
    ld [$20f7], sp
    rst $18
    xor e
    ld d, h
    jr jr_058_51da

jr_058_51da:
    ld c, a
    or b
    add hl, de
    and $02
    db $fd
    nop
    rst $38
    dec c
    ld a, [c]
    ld hl, sp+$00
    ld d, b
    nop
    inc bc
    ld hl, sp-$6c
    ld l, b
    ld a, c
    add b
    db $fc
    nop
    add sp, $10
    or b
    ld b, b
    nop
    nop
    ret nc

jr_058_51f7:
    nop
    db $fc
    nop
    db $fc
    nop
    db $dd

jr_058_51fd:
    jr nz, jr_058_51f7

    nop
    nop
    nop
    db $fc
    inc bc
    ld a, b
    add a
    db $f4
    dec bc
    sub h
    ld l, e
    jp nz, $107f

    rst $28
    nop
    rst $38
    db $fd
    rst $38
    nop
    rst $38
    ld e, d
    rst $30
    jp nz, $0d7f

    ld [hl], d
    ld h, d
    ld de, $0018
    add h
    nop
    inc e
    nop
    ld [$1400], sp
    nop
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
    ld a, a
    nop
    rrca
    nop
    ld a, b
    add b
    ld [$90d7], sp
    ld c, a
    sub h
    ld c, e
    ld b, h
    sbc e
    inc d
    bit 7, b
    rlca
    db $e3
    nop
    xor $10
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    rst $38
    nop
    ld bc, $e400
    nop
    rlca
    nop
    adc [hl]
    ld bc, $01d6
    dec [hl]
    ld [bc], a
    ld a, a
    nop
    dec d
    ld [$fe11], sp
    ld b, b
    rst $38
    jr nz, @+$01

    add hl, bc
    cp $40
    cp a
    daa
    ret c

    ld bc, $1ffe
    ldh [$08], a
    rst $30
    dec sp
    call nz, $a053
    rlca
    ldh a, [rNR33]
    ld [c], a
    ei
    nop
    nop
    rst $38
    ld a, $c1
    ld a, $c1
    ld a, $c1
    db $76
    adc c
    db $fd
    ld [bc], a
    nop
    nop
    ld d, l
    and d
    rst $38
    nop
    inc de
    db $e4
    and a

jr_058_52a1:
    ld d, b
    ld a, e
    add b
    dec sp
    nop
    jr c, jr_058_52a8

jr_058_52a8:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, $00
    cp a
    nop
    ld bc, $0200
    nop
    rlca
    nop
    ld b, d
    ld bc, HeaderLogo
    add [hl]
    ld bc, $0007
    add hl, bc
    ld b, $0c
    rst $38
    ld c, h
    rst $38
    ld de, $20ef
    rst $18
    ld a, [bc]
    rst $38
    dec c
    rst $38
    inc e
    rst $38
    cp a
    rst $38
    adc h
    rst $38
    ld c, l
    rst $38
    sub b
    rst $28
    jr z, jr_058_52a1

    add e
    ld b, b
    jr nz, jr_058_52de

jr_058_52de:
    inc b
    nop
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
    db $10
    rst $38
    ld [hl], h

Jump_058_52ed:
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    ld e, d
    rst $38
    ret z

    rst $38
    ldh [rIE], a
    jr nz, @+$01

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
    ld bc, $0100
    nop
    ld bc, $11e6
    rst $10
    jr nz, jr_058_532b

    nop
    rrca
    ldh a, [rP1]
    rst $38
    sbc b
    ld h, a
    nop
    rst $38
    add c
    ld a, [hl]
    db $10
    rst $28
    di
    ld [$0004], sp
    ld sp, hl
    ld b, $f9
    ld b, $f4

jr_058_532b:
    inc bc
    call nc, $d423
    inc hl
    ld h, $03
    add a
    nop
    ld a, b
    add a
    inc [hl]
    swap b
    rst $08
    ld d, b
    xor a
    ldh a, [rIF]
    ldh a, [rIF]
    adc a
    nop
    ld bc, $71ff
    adc a
    ld [hl], c
    adc a
    ld a, [hl-]
    rst $00
    ld a, [$f207]
    rlca
    rlca
    nop
    jr c, jr_058_5359

    inc l
    inc bc
    ld [hl], $09
    ld h, b
    rra
    ld a, [hl+]

jr_058_5359:
    dec d
    dec de
    nop
    db $e4
    jr jr_058_53a2

    sbc h
    ld b, e
    sbc h
    ld b, e
    sbc h
    ld h, h
    sbc e
    ld [hl], a
    adc b
    ld d, a
    nop
    add d
    ld a, a
    and b
    ld e, a
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld bc, $bafe
    ld b, c
    inc b
    ei
    cp h
    ld b, e
    add d
    ld a, l
    xor b
    ld d, l
    ld a, [de]
    push hl
    dec d
    nop
    sbc a
    nop
    and c
    ld e, [hl]
    inc d
    db $eb
    sbc b
    ld h, a
    db $10
    rst $28
    or a
    ld c, b
    rst $38
    nop
    add b
    rst $38
    ld b, $f9
    add d
    db $fd
    inc hl
    db $fd
    add [hl]
    ld sp, hl
    ld b, b
    ldh [$08], a
    ldh [$a3], a
    ret nz

jr_058_53a2:
    ret nz

    ldh [rLCDC], a
    ldh [$08], a
    ldh [$0a], a
    ldh [rNR42], a
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld [bc], a
    nop
    stop
    dec bc
    nop
    rla
    ld [$0007], sp
    nop
    ld bc, $0000
    nop
    nop
    inc hl
    stop
    jr nz, @+$0f

    jr nz, jr_058_53c7

jr_058_53c7:
    rrca
    dec c
    nop
    inc b
    dec bc
    ld b, $29
    nop
    add hl, bc
    inc c
    jr nz, jr_058_53f3

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    ld h, b
    ld de, $00ce
    ld bc, $0020
    inc b
    ld a, b
    add hl, bc
    ld h, [hl]
    ld b, d
    inc a
    ld d, b
    cpl
    ld sp, $0040
    ld a, h
    nop
    ld a, a
    jr nz, jr_058_5451

    inc e

jr_058_53f3:
    ld b, e
    jr nz, jr_058_5405

    inc c
    ld d, e
    ld b, e
    inc h
    db $10
    ld h, b
    nop
    ld [hl], b
    nop
    ld b, b
    nop
    nop
    nop
    ret nz

    nop

jr_058_5405:
    ret nz

    ld b, h
    add b
    ld d, c
    add b
    ld h, b
    add c
    inc d
    add b
    ld [bc], a
    pop hl
    ldh [rP1], a
    ld h, b
    add b
    ldh [rP1], a

jr_058_5416:
    add b
    nop
    ld e, $e0
    dec bc
    db $f4
    sbc a
    ld h, b
    ld d, e
    and b
    sub b
    ld h, b
    cp a
    nop
    rlca
    nop
    ld b, b
    or b
    db $10
    ldh a, [$3b]
    ldh a, [$38]
    ldh a, [$d2]
    ldh a, [rSVBK]
    ldh a, [$e0]
    db $10
    jr jr_058_5416

    ld [$00f0], sp
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [$f0]
    nop
    ld c, b
    ldh a, [$82]
    ld hl, sp+$0f
    ldh a, [$0e]
    ldh a, [$38]
    ret nz

    rrca
    ldh a, [rIF]
    nop
    rlca

jr_058_5451:
    ldh a, [rSVBK]
    add b
    and $00
    rst $30
    nop
    ld a, [c]
    nop
    ldh a, [rP1]
    ld a, l
    nop
    db $10
    add sp, $0d
    ldh a, [rP1]
    ld hl, sp+$08
    ldh a, [$b0]
    ld c, b
    ld hl, sp+$00
    nop
    ld hl, sp-$80
    ld a, b
    and b
    ld e, b
    jr nc, @-$36

    nop
    ld hl, sp-$08
    nop
    ld b, h
    cp b
    call c, $b4f8
    ld hl, sp+$28
    db $fc
    rlca
    ld hl, sp-$45
    db $fc
    ld a, h
    nop
    inc b
    ld hl, sp+$47
    cp b
    ld b, $f8
    nop
    db $fc
    rlca
    ld hl, sp+$7d
    add b
    inc bc
    db $fc
    nop
    db $fc
    ld [bc], a
    db $fc
    ld b, c

jr_058_5497:
    cp h
    nop
    db $fc
    jp c, $0324

    nop
    add d
    nop
    db $f4
    nop
    ld [$0100], sp
    nop
    jr z, jr_058_54a8

jr_058_54a8:
    call nc, $ff00
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    jr nz, jr_058_54b4

jr_058_54b4:
    ld d, l
    nop
    ld a, a
    add b
    ld [$1815], a
    db $e3
    nop
    nop
    nop
    nop
    jr nz, jr_058_54c2

jr_058_54c2:
    ld e, b
    nop
    ld b, $00
    xor a
    ld b, b
    ld b, a
    cp b
    dec b
    ld a, [$3fc0]
    nop
    rst $38
    nop
    ccf
    ld [hl+], a
    ld e, l
    nop
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
    ldh a, [rNR10]
    ld c, $03
    nop
    rlca
    ret nz

    adc h
    inc sp
    daa
    ret c

    db $10
    rst $28
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
    ccf
    nop
    ld a, a
    nop
    rst $38
    nop
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    stop
    ld b, h
    jr nz, jr_058_5497

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
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp b
    nop
    db $ec
    nop
    and h
    nop
    nop
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
    add b
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    ld d, b
    nop
    db $ec
    nop
    jp nc, RST_00

    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    nop
    nop
    ld d, h
    nop
    cp $00
    ret nc

    nop
    nop
    nop
    ldh [rP1], a
    ret nz

    nop
    nop
    rst $38
    ld b, b
    cp a
    dec hl
    call nc, $807f
    nop
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld [hl], d

jr_058_556f:
    rst $38
    ld l, e
    rst $38
    ccf
    rst $38
    ldh a, [rIE]
    ldh [$7f], a
    cp $7f
    sbc [hl]
    ld a, a
    ld [bc], a
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    ld h, b
    sbc a
    ld [hl], e
    sbc a
    and b
    ld e, a
    ldh a, [rIF]
    ldh [$1f], a
    nop
    rst $38
    ld b, b
    cp a
    stop
    nop
    nop
    and b
    ld bc, $01fc
    or $01
    rla
    add sp, $00
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    inc b
    ld hl, sp-$10
    ld [$0000], sp
    db $10
    ld [$050a], sp
    inc d
    nop
    jp hl


    nop
    ld l, $00
    pop hl
    nop
    cp $00
    ld a, a

jr_058_55b7:
    add b
    rst $00
    jr c, jr_058_55b7

    inc bc
    rlca
    ld hl, sp+$20
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
    ld [$45f7], sp
    sbc d
    jr nz, jr_058_556f

    ld a, b
    rlca
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
    and b
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
    inc b
    nop
    dec b
    nop
    ld [bc], a
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
    ld [bc], a
    nop
    ld bc, $0000
    nop
    ld bc, $0100
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
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    dec b
    nop
    nop
    nop
    nop
    rst $38
    ld bc, $fffe
    nop
    and e
    ld e, h
    cp $01
    ret nz

    ccf
    adc a
    rst $38
    db $d3
    rst $38
    sbc $ff
    ld l, b
    rst $38
    sbc a
    rst $38
    or e
    rst $38
    rlca
    rst $38
    dec b
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    inc bc
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
    db $10
    rst $38
    call z, $943f
    ld l, a
    ld [$18f7], sp
    rst $20
    nop
    ret z

    ld b, b
    nop
    nop
    nop
    ld b, b
    ld [$6e00], sp
    add b
    ld l, [hl]
    ret nz

    ld [hl], $d0
    jr nz, @+$22

    db $10
    ldh [rNR10], a
    nop
    db $10
    ld h, b
    sbc b
    ret nc

    jr z, jr_058_56cb

    call $3ec0
    ldh a, [$0e]
    rrca
    ldh a, [$03]
    db $fc
    ld bc, $00fe
    rst $38
    nop
    rst $38
    inc b
    ld hl, sp+$00
    ldh [$80], a
    ld a, b
    ld [$00f0], sp
    ld hl, sp+$40
    or b
    jr nc, jr_058_56c0

    nop
    inc bc
    nop
    jr c, @+$04

    dec a
    jr nc, jr_058_56cf

jr_058_56c0:
    nop
    db $fc
    nop
    db $f4
    nop
    db $fc
    nop
    db $fd
    nop
    ld sp, hl
    nop

jr_058_56cb:
    db $fc
    nop
    db $fc
    nop

jr_058_56cf:
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld sp, hl
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
    nop
    db $fd
    nop
    db $fd
    nop
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    db $fd
    nop
    db $fd
    nop
    ei
    nop
    ld hl, sp+$00
    ld sp, hl
    nop
    ei
    nop
    rst $38
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    ld sp, hl
    nop
    db $fd
    nop
    db $fd
    inc bc
    cp $07
    ld a, [$f807]
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld a, [$fa07]
    rst $30
    nop
    rlca
    nop
    rst $10
    nop
    rst $00
    nop
    rst $00
    nop
    rlca
    nop
    rst $30
    nop
    ld e, a
    nop
    rst $38
    nop
    rlca
    ld hl, sp+$47
    cp d
    rlca
    ld hl, sp+$05
    ld a, [$de21]
    dec b
    ld a, [$fe03]
    rlca
    db $fc
    inc bc
    cp $c5
    ld a, $0d
    ld a, [$fe29]
    ld b, $ff
    or c
    rst $38
    ld [hl], h
    rst $38
    nop
    rst $38
    rlca
    rst $38
    ldh a, [rIE]
    ld [c], a
    rst $38
    nop
    rst $38
    add c
    rst $38
    ld a, [hl-]
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    ld [$03ff], sp
    rst $38
    add hl, bc
    rst $30
    ld [$80f7], sp
    rst $38
    ld h, b
    rst $38
    jr @+$01

    ld [bc], a
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld [bc], a
    db $fd
    dec d
    ld [$ff00], a
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    add b
    rst $38
    ld a, a
    rst $38
    dec sp
    db $fc
    or b
    rst $38
    cp b
    rst $38
    sbc e
    db $fc
    jp nz, Jump_000_0ffd

    ldh a, [rVBK]
    or b
    ccf

jr_058_579b:
    ret nz

    rla
    add sp, -$28
    rst $38

jr_058_57a0:
    dec a
    rst $38
    inc e
    rst $38
    ld d, $ef
    ld [bc], a
    rst $38

jr_058_57a8:
    ld [bc], a
    rst $38
    daa
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    nop
    nop

jr_058_57b2:
    nop
    ld [bc], a

jr_058_57b4:
    nop
    inc hl
    nop
    inc hl
    nop
    or c

jr_058_57ba:
    nop
    ld [hl], b
    nop
    sbc b
    nop
    cp $f8
    cpl
    jr z, jr_058_579b

    jr c, jr_058_57b4

jr_058_57c6:
    jr c, @-$28

    ld e, b
    and [hl]
    jr c, jr_058_57ba

    ld e, b
    and [hl]
    jr c, jr_058_57c6

    jr nc, jr_058_57a0

    jr c, jr_058_57a8

    cp b
    ld l, h
    xor b
    ld [hl], h
    jr c, jr_058_57b2

    ld hl, sp+$0e
    ld hl, sp+$00
    ld hl, sp+$06
    ld sp, hl
    ld b, $f9
    ld d, $f9
    ld l, $f9
    ld d, $38
    rst $10
    ld sp, hl
    ld l, $58
    and l
    jr z, @-$29

    jr nc, jr_058_585b

    ld l, b
    dec [hl]
    or b
    ld l, c
    or b
    ld e, b
    cp b
    ld l, b
    jr z, jr_058_584c

    jr c, jr_058_585e

    xor b

jr_058_57ff:
    ld d, c
    and b
    scf
    ret nz

    scf
    ldh a, [$37]

jr_058_5806:
    ldh [$2f], a
    sub b
    ld [hl], a

jr_058_580a:
    or b
    ld a, a
    ldh a, [$3f]
    cp b
    ld a, a
    or [hl]
    ld a, c

jr_058_5812:
    or $38
    and $29

jr_058_5816:
    and $39
    or $38
    and $29
    rst $30
    jr nc, jr_058_5806

    jr nz, @-$08

    jr nc, jr_058_580a

    jr z, @-$08

    jr nc, @-$18

    jr nz, jr_058_57ff

    jr nc, jr_058_5812

    jr z, @-$07

    jr nc, jr_058_5816

    jr nz, @-$28

    ld de, $20e7
    or $31
    or $31
    or $39
    or $31
    or $39
    sub [hl]
    ld d, b
    and [hl]
    ld hl, $30e6
    or $30
    or $31
    ld d, $f1
    reti


    rst $38

jr_058_584c:
    pop hl
    rst $38
    ld l, a
    rst $38
    ld a, b
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    db $10
    rst $38
    db $10
    rst $38
    rst $08

jr_058_585b:
    rst $38
    ld [bc], a
    rst $38

jr_058_585e:
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, h
    rst $38
    jr nc, @+$01

    jr @+$01

    nop
    rst $38
    ld a, [bc]
    rst $30
    inc b
    ei
    nop
    rst $38
    db $10
    rst $28
    inc e
    db $e3
    ldh [rIE], a
    ld b, b
    rst $38
    nop
    rst $38
    ld [$54ff], sp
    xor a
    ld h, $df
    ld [bc], a
    rst $38
    ld bc, $0aff
    db $fd
    ld sp, hl
    cp $3e
    rst $38
    db $fd
    inc bc
    ld c, $f1
    add hl, sp
    cp $ca
    ccf
    call z, $ff33
    nop
    db $fc
    inc bc
    cp $01
    ld a, [hl]
    add c
    inc de
    db $ec
    nop
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
    inc b
    rst $38
    cp $ff
    ldh a, [rIE]
    or h
    rst $38
    ccf
    rst $18
    ld [hl], a
    adc a
    ld a, a
    add e
    ld a, $c1
    daa
    ret c

    ld a, a
    add b
    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    ld a, b
    rst $38
    jr c, @+$01

    ld a, b
    rst $38
    jr c, @+$01

    ld a, b
    rst $38
    ld a, [hl-]
    rst $38
    ld a, a
    rst $38
    ld sp, $70ff
    rst $38
    jr nc, @+$01

    ld [hl], b
    rst $38
    jr nc, jr_058_5961

    jr nc, jr_058_5963

    jr nc, jr_058_5965

    ld [hl-], a
    ld a, a
    jr nc, jr_058_5969

    ld [hl], b
    ld a, a
    ld [hl], b
    ld a, a
    ld [hl], b
    ld a, a
    ld [hl], b
    ld a, a
    ld h, b
    rst $38
    jr nz, @+$01

    ld h, b
    ld a, a
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
    ld h, b
    rst $38
    ld a, l
    rst $38
    ld [hl], a
    rst $38
    ld [hl], b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    ld a, a
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
    ld h, c
    rst $38
    ld h, c
    rst $38
    ld h, b
    rst $38
    ld a, [hl]
    rst $38
    ccf
    rst $38
    ld h, c
    rst $38
    ld h, b
    rst $38
    ld h, h
    rst $38
    ld [hl], l
    rst $38
    ld l, a
    rst $38
    ld a, d
    rst $38
    ld h, c
    rst $38
    ld a, [c]
    rst $38
    pop hl
    rst $38
    sbc h
    rst $38
    ld b, b
    rst $38
    ret z

    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    ret nc

    rst $38
    nop
    rst $38
    nop

jr_058_5961:
    rst $38
    nop

jr_058_5963:
    rst $38
    ld [bc], a

jr_058_5965:
    rst $38
    ret nz

    rst $38
    nop

jr_058_5969:
    rst $38
    ld e, e
    and h
    ld c, $f1
    add h
    ei
    jr z, @+$01

    ld b, d
    db $fd
    ldh [rIE], a
    jr c, @+$01

    inc e
    rst $38
    inc b
    ei
    ld b, a
    cp b
    nop
    rst $38
    rst $28
    rra
    rst $08
    ccf
    rlca
    rst $38
    ld a, [hl-]
    rst $00
    ld a, a
    add b
    rra
    ldh [$e5], a
    ld a, [$ff7c]
    rst $18
    ccf
    ldh a, [rIF]
    ld a, h
    add e
    cp [hl]
    ld b, c
    rst $38
    nop
    cp $01
    inc de
    rst $38
    xor l
    ld e, [hl]
    inc bc
    db $fc
    call c, $b8e3
    rst $00
    ld a, h
    add e
    ld e, a
    nop
    rst $18
    nop
    xor d
    nop
    di
    nop
    cp $00
    rst $28
    nop
    ld a, a
    add b
    rst $38
    add b
    sub a
    add sp, -$65
    db $e4
    rst $28
    ldh a, [$67]
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0000
    rst $38
    nop
    rst $38
    ld b, b
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
    ld [$20ff], sp
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
    nop
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
    jp c, $ffff

    rst $38
    ld d, [hl]
    rst $38
    nop
    rst $38
    jr nz, jr_058_5a12

jr_058_5a12:
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    nop
    nop
    ld [bc], a
    nop
    ld b, $00
    inc b
    nop
    nop
    nop
    dec b
    nop
    inc bc
    nop
    inc bc
    nop
    nop
    nop
    ld b, d
    nop
    inc b
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
    db $fd
    rst $38
    nop

Jump_058_5a3d:
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    and b
    rst $38
    nop
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    and b
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

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
    db $10
    rst $28
    add b
    ld a, a
    ld h, b
    sbc a
    inc bc
    rst $38
    add c
    rst $38
    dec b
    ld a, [$ff00]
    nop
    rst $38
    ld [bc], a
    db $fd
    ld a, d
    rst $38
    nop
    rst $38
    reti


    ld h, $7f
    add b
    ccf
    ret nz

jr_058_5a84:
    rst $38
    add b
    or d
    call $e11e
    ld c, a
    ldh a, [$df]
    ldh [$6f], a
    ldh a, [$b3]
    db $fc
    db $eb
    db $fc
    dec c
    cp $96
    rst $28
    ccf
    jp $837d


    cp $01
    rst $38
    nop
    nop
    rst $38
    ld e, a
    cp a
    scf
    rst $08
    dec bc
    rst $30
    rlca
    ei
    db $fd
    inc bc
    cp $01
    ccf
    nop
    xor $01
    cp a
    nop
    rst $38
    nop
    ldh a, [rIF]
    or $09
    rst $20
    jr jr_058_5a84

    nop
    ld hl, sp+$00
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, [hl]
    rst $38
    cp $ff
    sbc $ff
    ld b, $ff
    ld b, $ff
    inc b
    rst $38
    inc b
    rst $38
    inc b
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
    ld e, h
    rst $38
    db $ec
    rst $38
    sbc h
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$18ff], sp
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

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    ld hl, sp-$01
    ld hl, sp-$01
    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    nop
    rst $38
    and e
    rst $38
    ld b, b
    rst $38
    ld b, d
    rst $38
    rra
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $10ff
    rst $38
    db $10
    rst $38
    dec hl
    rst $38
    ld c, b
    or a
    nop
    rst $38
    jr nz, @+$01

    inc b
    rst $38
    add d
    ld a, l
    dec b
    ei
    ld bc, $c1ff
    rst $38
    ld a, [$04ff]
    rst $38
    nop
    rst $38
    ld h, b
    sbc a
    nop
    rst $38
    ld b, l
    rst $38
    ld a, a
    rst $38
    rst $38
    nop
    cp $01
    or b
    ld c, a
    ld sp, hl
    ld b, $fb
    inc b
    rst $38
    nop
    ld a, a
    add b
    cp $01
    db $fc
    inc bc
    rst $38
    ld bc, $1fe1
    ld [bc], a
    rst $38
    db $fd
    cp $7f
    rst $38
    rst $38
    rst $38
    xor $ff
    rrca
    ldh a, [rNR34]
    pop hl
    rrca
    ldh a, [rNR34]
    pop hl
    sbc c
    and $89
    or $20
    rst $18
    add $ff
    rst $18
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    cp a
    ld a, a
    cp $3f
    sbc [hl]
    ld a, a
    adc $3f
    or $0f
    ld hl, sp+$07
    cp l
    ld [bc], a
    ld e, e
    and b
    push bc
    ld a, [hl-]
    ret nz

    dec hl
    ld d, c
    xor d
    db $fd
    ld [bc], a
    push af
    ld a, [bc]
    ld l, l
    add b
    ld d, c
    xor [hl]
    ld b, [hl]
    cp c
    ld [hl], h
    adc e
    ld d, h
    xor e
    db $fd
    ld [bc], a
    ld e, a
    and b
    adc b
    ld [hl], a
    adc d
    ld [hl], l
    ld l, b
    sub a
    adc b
    ld [hl], a
    db $fd
    ld [bc], a
    call c, $9522
    ld l, d
    db $db
    inc h
    ld d, h
    xor e
    or $09
    db $ec
    nop
    nop
    rst $38
    ld h, e
    sbc h
    jp c, $ff25

    nop
    or a
    ld c, b
    cp h
    ld b, c
    xor $11
    xor [hl]
    ld d, c
    ld [$7f15], a
    add b
    xor a

jr_058_5bf7:
    ld d, b
    ld [hl+], a
    db $dd
    ld a, [hl-]
    push bc
    ld a, [hl+]
    push de
    add h
    ld a, e
    ld a, l
    nop
    or d
    ld c, l
    db $10
    rst $28
    and l
    ld e, d
    inc sp
    call z, $8a75
    ld d, h
    xor e
    nop
    rst $38
    add d
    ld a, l
    ld a, [bc]
    push af
    ld [hl], h
    adc e
    or l
    nop
    xor [hl]
    ld d, c
    rst $28
    db $10
    adc $11
    ld a, a
    add b
    sbc [hl]
    ld bc, $fb04
    ld d, h
    xor e
    db $fc
    inc bc
    ld d, h
    xor e
    xor e
    nop
    db $ec
    inc de
    ld l, [hl]
    sub c
    rst $38
    nop
    rst $18
    jr nz, jr_058_5bf7

    dec a
    ccf
    rst $38
    xor a
    rst $38
    rlca
    rst $38

Jump_058_5c3c:
    ld a, [bc]
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    jr c, @+$01

    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add sp, -$01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    xor l
    ld d, d
    call nc, $e52b
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld a, b
    add a
    ld a, [de]
    push hl
    rrca
    ldh a, [$62]

jr_058_5c69:
    db $fd
    rst $08
    rst $38
    pop hl
    rst $38
    add h
    ld a, a
    sbc b
    ld h, a
    db $fd
    inc bc
    db $fd

jr_058_5c75:
    inc bc
    jp nz, Jump_000_003d

    rst $38
    nop
    rst $38
    and b
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    db $eb
    nop
    and c
    nop
    dec a
    ret nz

    db $e3
    db $fc
    jp nz, $fffd

    nop
    jr z, jr_058_5c69

    nop
    rst $38
    swap h
    inc hl
    call c, Call_058_641b
    adc $31
    rra
    ldh [$7f], a
    add b
    rst $38
    add b
    cp a
    ret nz

    cp a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ld a, d
    add l
    jr c, jr_058_5c75

    ccf
    pop bc
    ld c, c
    or [hl]
    scf
    ld [$807f], sp
    ei
    nop
    ei
    nop
    ld [c], a
    nop
    ld h, d
    add b
    ld a, e
    nop
    ld c, e
    or b
    ld a, e
    add b
    ld [de], a
    and b
    ld [hl], e
    add b
    or $01
    db $db
    jr nz, @-$6f

    ld [hl], b
    ld l, a
    ldh a, [$cd]
    ld [hl], d
    add a
    ld [hl], b
    ld sp, $80ce
    ld a, a
    add d
    ld a, l
    add d
    ld a, l
    xor c
    ld d, b
    jp nz, $ab01

    inc d
    dec bc
    ldh a, [$9e]
    ld h, c
    rra
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    ccf
    nop
    rst $38

jr_058_5cef:
    nop
    or $01
    rst $38
    nop
    call Call_058_7102
    ld c, $fe
    ld bc, $01fe
    ld a, l
    add d
    rst $38
    nop
    cp a
    nop
    call c, Call_000_1423
    db $eb
    jr jr_058_5cef

    add hl, sp
    add $fa
    ld bc, $824d
    inc a
    jp $c22d


jr_058_5d12:
    ccf
    ret nz

    dec a
    jp nz, $8046

    ld c, $f0
    ld l, $d0
    ld [$0ff6], sp
    ldh a, [$dc]
    jr nz, jr_058_5d31

    ldh a, [$2d]
    jp nc, $c03e

    or $00
    rst $38
    nop
    call nz, $7900
    add [hl]
    rst $18

jr_058_5d31:
    jr nz, jr_058_5d12

    jr nz, @+$01

    nop
    scf
    ret z

    db $e3
    db $fc
    cp d
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    pop hl
    rst $38
    nop
    rst $38
    jr z, @+$01

    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    inc [hl]
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld b, b
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    sbc b
    rst $38
    ld [$80ff], sp
    ld a, a
    nop
    rst $38
    pop af
    rrca
    ld [c], a
    rra
    ld e, $ff
    inc a
    rst $38
    or b
    rst $38
    db $ed
    ld [de], a
    cpl
    ldh a, [$d3]
    db $ec
    adc a
    ldh a, [rSTAT]
    cp $20
    rst $38
    reti


    ccf
    inc c
    rst $38
    ld a, [hl-]
    db $fc
    dec a
    cp $1e
    rst $38
    ld d, $ff
    ld d, h
    dec hl
    ld l, a
    nop
    add $38
    rst $38
    nop
    cp $01
    rra
    ldh [$bb], a
    ld b, h
    sub d
    ld l, l
    ld h, c
    sbc [hl]
    or $09
    cp $01
    ei
    inc b
    cp $01
    ld hl, sp+$07
    db $ec
    inc de
    db $fc
    inc bc
    xor h
    ld d, e
    ret nz

    ccf
    nop
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    ret nz

    ccf
    ld a, [c]
    dec e
    pop de
    rrca
    ldh a, [rIF]
    ld d, c
    cpl
    ldh [$1f], a
    db $f4
    dec bc
    add a
    ld a, b
    call $d433
    cpl
    add b
    ld a, a
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    cp c
    ld b, [hl]
    ld hl, $4e1e
    or c
    ld h, a
    sbc b
    ld l, a
    sub b
    ld h, b
    sub b
    ld l, d
    add c
    rst $10
    jr z, jr_058_5e06

    ret c

    rst $20
    jr jr_058_5e61

    add b
    ld a, c
    add b
    ld [hl], $81
    xor l
    rla
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    sub h
    ld h, e
    dec sp
    ret nz

    ld b, l
    cp e
    ld [bc], a
    db $fd
    ld b, $f9
    ld bc, $00fe
    rst $38
    rlca
    ld hl, sp+$50
    xor a
    add b
    ld a, a
    db $10
    rst $28

jr_058_5e06:
    nop
    rst $38
    ld [$1ef6], sp
    ldh [$5c], a
    and b
    inc bc
    db $fc
    ld a, [hl+]
    call nc, $7886
    ld l, [hl]
    db $10
    ld hl, sp+$04
    ld d, b
    nop
    db $fc
    nop
    db $fc
    nop
    cp $00
    db $fd
    nop
    adc b
    nop
    or b
    ld b, b
    db $f4
    dec bc
    ld hl, sp+$03
    ld a, [$3601]
    ld bc, $0083
    db $db
    inc h
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
    pop bc
    cp $03
    rst $38
    ld hl, $00ff
    rst $38
    nop
    rst $38
    cp h
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    dec bc
    rst $38
    ld [$28ff], a
    rst $10
    ld l, a

jr_058_5e55:
    sub b
    dec d
    ld [$ff00], a
    ld b, b
    cp a
    rst $20
    jr jr_058_5ede

    add b
    ld [hl-], a

jr_058_5e61:
    call $ff63
    ld [bc], a
    db $fd
    ccf
    ret nz

    rrca
    ldh a, [$82]
    ld a, l
    inc b
    rst $38
    ld de, $feef
    ld bc, $07f8
    jr nz, jr_058_5e55

    sub b
    ld l, a
    ld a, [bc]
    push af
    ld bc, $43fe
    cp a
    rst $18
    nop
    ld sp, hl
    ld b, $ef
    nop
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    rst $38

jr_058_5e8b:
    nop
    cp a
    ld b, b
    rrca
    ldh a, [$1f]
    ldh a, [$a7]
    ld e, b
    pop de
    ld l, $68
    sub a
    ld h, b
    sbc a
    sub b
    ld l, a
    db $10
    rst $28
    ld [bc], a
    db $fd
    ld b, c
    cp $40
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    nop
    rst $38
    jr nz, jr_058_5e8b

    ret nz

    rst $38
    cp a
    ret nz

    add c
    ld a, a
    add e
    rst $38
    add c
    rst $38
    nop
    rst $38
    dec d
    ld [$c639], a
    inc hl
    call c, $f20d
    add a
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0c
    ldh a, [$7f]
    add b
    rra
    ldh [$36], a
    pop bc
    db $76
    add c
    db $ec
    inc bc
    xor a
    nop
    rst $08
    nop
    add b
    rrca
    ld b, b
    ccf
    nop
    rst $38
    add b
    ld a, a

jr_058_5ede:
    jp nz, $823d

    ld a, l
    sub [hl]
    ld l, b
    or [hl]
    ld b, c
    inc c

jr_058_5ee7:
    di
    rra
    ldh [$3c], a
    jp $e30c


    ld e, h
    and b
    db $eb
    nop
    ret nz

    ccf
    ei
    dec b
    ret nc

    rrca
    ldh a, [rIF]
    ld [hl], b
    adc a
    ld d, e
    adc h
    adc b
    rlca
    daa
    rst $18
    ld [hl], $cf
    ld [hl+], a
    rst $18
    jr nz, jr_058_5ee7

    ld [hl], b
    adc a
    ld b, b
    rra
    ld b, d
    dec a
    ret nz

    ccf
    ret z

    scf
    ld b, b
    ccf
    ld hl, $631f
    dec e
    rrca
    nop
    add hl, bc
    inc b
    dec bc
    inc b
    dec de
    inc b
    rra
    nop
    rra
    nop
    rrca
    nop
    sub b
    ld b, b
    ld b, [hl]
    cp c
    ld a, [de]
    push hl
    cp [hl]
    ld b, c
    db $fd
    ld [bc], a
    ld a, h
    add e
    and b

jr_058_5f33:
    inc bc
    add c

jr_058_5f35:
    nop
    cp a
    nop
    xor a
    nop
    cp a
    nop
    ld e, a
    nop
    ld b, a

Call_058_5f3f:
jr_058_5f3f:
    nop
    ret nz

    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, c
    rst $38
    or a
    rst $38
    ld [de], a
    rst $38
    jr nz, jr_058_5f33

    ld h, $d9
    ldh [$1f], a
    ld e, b
    and a
    ld [$00f7], sp
    rst $38
    ld [$8217], a
    ld a, a
    and c

jr_058_5f63:
    rst $38
    or b
    ld c, a
    add sp, $17
    pop bc
    ld a, $ed
    ld [de], a
    jr c, jr_058_5f35

    ldh [rIE], a
    rst $08
    ldh a, [rSVBK]
    adc a
    ld [hl], b
    adc a
    jr c, jr_058_5f3f

    ld d, b
    xor a
    jr jr_058_5f63

    ld d, [hl]
    rst $38
    add b
    ld a, a
    db $dd
    ld [hl+], a
    di
    inc c
    db $fd
    ld [bc], a
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
    ld a, a
    add b
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [rTAC], a
    ld hl, sp+$0b
    db $fc
    call Call_058_4b3f
    or a
    db $fd
    inc bc
    ld a, $c1
    rrca
    ldh a, [rSVBK]
    rst $38
    sbc h
    ld a, a
    ldh [rIE], a
    ldh [rIE], a
    rst $00
    rst $38
    rra
    rst $38
    rlca
    rst $38
    jp $c33f


    ccf
    adc d
    ld a, a
    pop bc
    ld a, $d8
    ld hl, $0fd0
    ret z

    scf
    ld h, h
    sbc e
    ld bc, $00ff
    rst $38
    rlca
    ld hl, sp-$48
    ld b, a
    rst $30
    rrca
    adc c
    ld a, a
    ld bc, $01ff
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ret nz

    ld a, a
    sbc a
    ld h, b
    xor b
    ld d, a
    ld [$1af7], sp
    rst $20
    daa
    rst $18
    inc bc
    rst $38
    add h
    ld a, a
    ret nz

    ccf
    ld b, h
    ccf
    ld h, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    nop
    rst $38
    ld b, $f9
    ld d, c

jr_058_5ffd:
    and b
    ld c, a
    ldh a, [$f0]

jr_058_6001:
    rst $38
    ld b, $ff
    add b
    rst $38
    nop
    rst $38
    ld bc, $c0fe
    ccf
    nop

jr_058_600d:
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
    sub b
    ld a, [hl]
    sub [hl]
    nop
    ld h, b
    sbc a
    ldh [$1f], a
    jr nz, jr_058_6001

    jr nz, @-$1f

    jr z, jr_058_5ffd

    ld c, d
    dec b
    cp c
    ld b, b
    ld bc, $08fe
    rst $30
    ld h, c
    sbc [hl]
    and b
    ld e, [hl]
    ld a, [de]
    db $e4
    rst $38
    nop
    add [hl]
    nop
    jp z, $ff20

    nop
    cp $00
    rst $38
    nop
    ld a, a
    add b
    ld d, b
    xor a
    jr nz, @+$01

    db $10
    rst $38
    ld hl, sp-$01
    ld e, $ff
    ld de, $00ff
    rst $38
    sub b
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
    nop
    rst $38
    nop
    rst $38
    sub b
    rst $38
    db $fc
    rst $38
    add hl, sp
    rst $38
    scf
    rst $38
    inc l
    di
    rrca
    ldh a, [$03]
    ld hl, sp+$1c
    rst $38
    ld hl, sp+$07
    ld d, $e8
    cp l
    ld b, b
    rst $38
    nop
    ccf
    ret nz

    sbc a
    ld h, b
    jr nc, jr_058_600d

    ld a, [hl]
    add c
    rst $38
    nop
    xor $11
    rst $38
    nop
    push hl
    ld a, [de]
    db $e3
    inc e
    or h
    dec bc
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    ld l, a
    sub b
    cp a
    ld b, b
    rst $38
    nop
    call nc, $f82b
    rlca
    or b
    rrca
    db $e4
    rra
    xor h
    ld a, a
    sbc $ff
    ld a, a
    rst $38
    di
    db $fc
    pop hl
    cp $74
    rst $38
    add sp, $7f
    db $10
    rst $38
    sub b
    ld a, a
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    ld hl, sp-$01
    add sp, -$01
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
    db $fc
    rst $38
    call $8fff
    rst $38
    ei
    rst $38
    db $f4
    rst $38
    add sp, -$01
    db $f4
    rst $38
    ldh [rIE], a
    inc d
    db $eb
    ld [hl], b

jr_058_60dd:
    rst $08

jr_058_60de:
    call c, Call_000_393f
    rst $38
    dec l
    rst $38
    dec b
    cp $11
    xor $24
    db $db
    adc b
    rst $38
    ld [bc], a
    rst $38
    rst $38
    rst $38
    sub h
    rst $38
    nop
    rst $38
    adc d
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    push af
    nop
    ld a, $c1
    ld a, [c]
    dec c
    ret nz

    sbc a
    ld [hl], b
    adc a
    ldh [$1f], a
    call nz, $d63b
    add hl, hl
    ld h, e
    inc e
    inc b
    rst $38
    db $fc
    inc bc
    ld [hl], b
    adc a
    jr c, jr_058_60dd

    jr @-$17

    add hl, bc
    or $3b
    nop
    jr nc, jr_058_60de

    add hl, bc
    or $03
    db $fc
    ld [$08f7], sp
    rst $30
    adc e
    ld [hl], h
    ld a, l
    ld [bc], a
    di
    nop
    and b
    ld e, a
    cp h
    inc bc
    ld a, [hl]
    ld bc, $01de
    ld a, b
    rlca
    ld hl, sp+$07
    rra
    nop
    add c
    nop
    ld h, a
    nop
    ld l, a
    nop
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    rrca
    ldh a, [$0c]
    di
    nop
    rst $38
    ld [hl], h
    rst $38
    ld a, [de]
    rst $38
    nop
    rst $38
    dec bc
    rst $38
    nop
    rst $38
    ld l, d
    sub l
    nop
    rst $38
    rrca
    rst $38
    and b
    ld e, a
    ld bc, $00fe
    rst $38
    db $76
    rst $38
    ldh [rIE], a
    add c
    cp $fc
    inc bc
    cp $01
    rst $38
    nop
    ld a, a

jr_058_616f:
    add b
    nop
    rst $38
    ld a, a
    nop
    ccf
    nop
    ld a, a
    add b
    adc a
    ld [hl], b
    ld hl, sp+$07
    ccf
    ret nz

    and [hl]
    ld sp, hl
    ld e, $e0
    ld c, l
    ldh a, [$b3]
    ld c, h
    di
    inc c
    ld a, h
    add e
    ld e, $e1
    rst $18
    jr nz, jr_058_616f

    rra
    rst $38
    nop
    cp $01
    add sp, $17
    ld a, [c]
    rrca
    inc b
    rst $38
    ld [hl], a
    ld hl, sp+$2d
    ldh a, [rPCM34]
    adc b
    ld a, a
    add b
    rst $38
    nop
    ld l, $d0
    rra
    ldh [rTAC], a
    jr c, jr_058_621c

    adc [hl]
    ld e, $e1
    ld bc, $00fe
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
    jr jr_058_61e3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_058_61f3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_058_6203

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_058_6213

    ld [hl-], a

jr_058_61e3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_058_6223

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_058_61f3:
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

jr_058_6203:
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a

jr_058_6213:
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld e, c
    ld e, c

jr_058_621c:
    ld e, c
    ld h, a
    ld l, b
    ld l, c
    ld e, c
    ld l, d
    ld l, e

jr_058_6223:
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld e, c
    ld [hl], h
    ld [hl], l
    db $76

Jump_058_622f:
    ld [hl], a
    ld e, c
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
    ld e, c
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
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, @+$2b

    ld e, $1e
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, @+$33

    ld [hl-], a
    inc sp
    inc bc
    inc bc
    dec b
    ld b, $06
    nop
    nop
    inc bc
    dec b
    dec b
    inc bc
    inc bc
    ld bc, $0103
    dec b
    ld [bc], a
    ld [bc], a
    inc bc
    ld b, $00
    nop
    ld b, $03
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    nop
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0505
    nop
    ld b, $00
    ld b, $06
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0501
    nop
    nop
    nop
    ld b, $02
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0501
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    dec b
    nop
    nop
    nop
    nop
    ld b, $03
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0303
    nop
    nop
    nop
    nop
    nop
    ld b, $01
    ld bc, $0505
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    rlca
    nop
    nop
    nop
    nop
    ld b, $01
    ld bc, $0307
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    rlca
    nop
    nop
    nop
    nop
    ld b, $01
    ld bc, $0507
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    rlca
    nop
    nop
    nop
    nop
    ld b, $01
    ld bc, $0701
    rlca
    rlca
    dec b
    dec b
    dec b
    dec b
    rlca
    nop
    nop
    nop
    nop
    ld b, $03
    ld bc, $0101
    ld bc, $0101
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    nop
    nop
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
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
    nop
    ld [bc], a
    ld bc, $0101
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$080a], sp
    inc c
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0a08], sp
    add hl, bc
    inc c
    inc c
    inc c
    inc c
    add hl, bc
    add hl, bc
    add hl, bc

Call_058_641b:
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    inc c
    inc c
    inc c
    ld bc, $0c01
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, a
    ld [hl], e
    ld a, a
    ld [hl], d
    ld a, a
    ld [hl], d
    ccf
    ld a, [hl-]
    ccf
    ccf
    rra
    inc e
    rra
    dec e
    rra
    ld e, $0c
    inc c
    ld c, $0c
    rrca
    inc c
    rrca
    ld c, $0f
    ld b, $07
    rlca
    jp $8303


    inc bc
    pop de
    rst $28
    db $ed
    di
    db $e4
    ei
    sbc $e1
    adc $f1
    xor $f1
    rst $28
    ldh a, [$ef]
    ldh a, [$f8]
    ldh a, [$f0]
    ld hl, sp-$48
    ld a, b
    db $f4
    ld a, b
    jr c, jr_058_64e6

    ld a, h
    inc a
    inc l
    ld a, $1c
    ld a, $3e
    ld e, $1f
    ld e, $0f
    rra
    ld c, $0f
    rlca
    rrca
    add a
    rlca
    add e
    rlca
    ld b, l
    add e
    nop
    inc a
    and b
    inc e
    add b
    ld e, $c0
    ld e, $00
    ld e, $30
    rrca
    or b
    rrca
    ld e, b
    rlca
    ld b, b
    rrca
    ld e, $01
    or a
    nop
    inc sp
    ld [$122d], sp
    nop
    ld [hl], $10
    ld h, $14
    ld [bc], a
    jr nz, jr_058_64a2

jr_058_64a2:
    nop
    nop
    add b
    nop
    nop
    nop
    stop
    ld [hl], b
    nop
    ld [hl], b
    jr nz, @+$72

    nop
    ld a, e
    db $fc
    or a
    ld hl, sp-$69
    ld hl, sp+$1b
    db $f4
    dec hl
    db $f4
    rrca
    ldh a, [rIF]
    ldh a, [$8f]
    ldh a, [rNR21]
    jp hl


    inc e
    db $e3
    add hl, de
    rst $20
    dec sp
    rst $00
    inc de
    rst $28
    ld h, e
    sbc a
    ld b, a
    cp a
    rst $28
    rra
    rrca
    inc c
    rra
    rrca
    rra
    rrca
    ccf
    ld a, [de]
    ld a, a
    ld l, e
    ld a, a
    inc bc
    ld a, a
    ld bc, $20ff
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop

jr_058_64e6:
    rst $38
    nop
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
    db $db
    rst $38
    ld b, [hl]
    rst $38
    ld c, a
    rst $38
    adc a
    rst $38
    xor $ff
    and c
    rst $38
    jp $bb80


    nop
    sub l
    nop
    db $fc
    nop
    db $fd
    and b
    db $fc
    ret nz

    ldh a, [rP1]
    ret nz

    nop
    and b
    rst $38
    ld d, d
    rst $38
    add sp, -$01
    db $e4
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    jr nc, @+$01

    ld h, h
    ei
    jp nz, $ccff

    rst $38
    jp hl


    cp $d0
    rst $38
    or b
    rst $38
    rra
    ldh [$bf], a
    ld b, b

Call_058_6530:
    add b
    rst $38
    reti


    and $60
    rst $18
    ld b, b
    rst $38
    ldh [rIE], a
    pop hl
    cp $64
    ei
    pop hl
    cp $1a
    push af
    sub e
    db $fc
    rst $38
    ld hl, sp-$03
    ld a, [$fff8]
    ld sp, hl
    cp $ff
    cp h
    db $fc
    rst $38
    db $fc
    ret c

    add $c4
    add $86
    xor $c2
    ei
    ld a, [$c9fb]
    rst $38
    ld sp, hl
    ld a, l
    ld [hl], l
    dec sp
    ld a, a
    rra
    ld a, a
    ld e, $7f
    ld d, [hl]
    ccf
    ld [$043f], sp
    ccf
    ld [bc], a
    rra
    inc bc
    rra
    ldh [$e0], a
    ldh [$f0], a
    ldh a, [$f0]
    ld a, b
    ldh a, [$f0]
    ld a, b
    ld a, b
    ld a, b
    jr c, jr_058_65f6

    jr c, jr_058_65bc

    inc a
    inc a
    inc a
    inc e
    inc e
    ld e, $0e
    ld e, $1f
    ld c, $0e
    rrca
    inc b
    rrca
    nop
    rlca
    ld [hl], b
    ld a, b
    ld a, h
    ld a, b
    jr c, jr_058_6612

    cp l
    ld a, [hl]
    ld e, b
    cp a
    sbc c
    rst $38
    rst $00
    rst $38
    rst $08
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, c
    ld a, a
    ld a, e
    ccf
    ccf
    ccf
    rra
    rra
    inc d
    rra
    db $10
    ld a, $38
    ld a, [hl]
    ld b, b
    ei
    jr z, jr_058_6634

    jr z, jr_058_65d7

    jr nz, jr_058_662e

    ld hl, $053f

jr_058_65bc:
    ld a, a
    ccf
    ld a, a
    ccf
    rst $38
    ccf
    rst $38
    dec c
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
    jr nz, @+$01

    xor b
    rst $38

jr_058_65d7:
    jp z, $b4ff

    rst $38
    sbc b
    rst $38
    ld a, b
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    ld [bc], a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_058_65f6:
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    jp z, $99ff

    rst $38
    sub c
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    nop
    nop

jr_058_6612:
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_058_6627

jr_058_6627:
    nop
    nop
    nop
    nop
    sbc l
    nop
    db $fd

jr_058_662e:
    nop
    rst $18
    rlca
    ld hl, sp+$44
    cp b

jr_058_6634:
    nop
    db $fc
    jp nz, $f0fc

    rst $38
    ld hl, $26fe

Jump_058_663d:
    ld sp, hl
    ld h, c
    cp $23
    db $fc
    ld d, a
    jr c, jr_058_6688

    inc a
    ret nz

    ccf
    ld a, h
    add e
    cp a
    ld b, b
    ld hl, $01de
    cp $f1
    rrca
    ldh a, [rIF]
    ld [$04ff], sp
    rst $38
    ld [bc], a
    rst $38
    add h
    ld a, a
    nop
    rst $38
    and b
    rst $18
    ld h, b
    sbc a
    add b
    rst $38
    call c, $f0e3
    rst $08
    db $e4
    db $db
    ld b, b
    rst $38
    ret z

    rst $30
    or a
    add sp, -$0d
    db $ec
    di
    db $fc
    inc sp
    db $fc
    ld [hl-], a
    db $fd
    or $f9
    pop de
    cp $e9
    cp $fe
    db $fd
    ld sp, hl
    add sp, -$43
    sbc l
    or a
    or c
    rst $38
    or h

jr_058_6688:
    rst $38
    ld hl, sp-$01
    ei
    rst $38
    di
    ld a, a
    ld a, c
    ld a, a
    ld [hl], c
    ld a, a
    ld a, a
    ld a, a
    ccf
    ld a, a
    ld sp, $efff
    rst $38
    rst $28
    rst $38
    db $fc
    rst $38
    ld a, b
    rst $38
    rst $28
    rst $38
    db $fc
    rst $38
    cp a
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    ld b, l
    rst $08
    ld b, a
    rrca
    inc c
    ld a, a
    ld a, [hl+]
    di
    ld [de], a
    dec d
    nop
    ld [hl], a
    inc b
    rst $28
    ld b, l
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
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
    ld a, a
    rst $38
    rlca
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rrca
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    nop
    rst $38
    ld bc, $01ff
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
    nop
    rlc b
    cp a
    nop
    db $fc
    nop
    cp d
    rst $38
    or $ff
    db $e4
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    xor b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $04ff
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    ld c, $ff
    ld [$feff], sp
    ld bc, $01fe
    rst $30
    ld [$1ce3], sp
    and e
    ld b, h
    adc b
    ld [hl], e
    or h
    ld c, c
    ld d, [hl]
    xor c
    add sp, $17
    ret z

    scf
    add $39
    xor a
    nop
    add l
    nop
    rla
    nop
    add a
    nop
    ld a, l
    add d
    ld d, h
    xor e
    jr nz, @-$1f

    rlca
    rst $38
    pop bc
    ld a, $11
    nop
    add c
    nop
    inc bc
    nop
    nop
    rlca
    ld bc, $3102
    nop
    cpl
    db $10
    ld b, h
    jr @+$15

    db $e4
    ld l, $d0
    ccf
    ret nz

    inc e
    db $e3
    sub [hl]
    jp hl


    rst $00
    ld hl, sp+$48
    rst $38
    nop
    rst $38
    ret nz

    ccf
    call nz, $e03f
    rra
    inc d
    ld a, a
    ld bc, $26ff
    ld sp, hl
    rst $00
    jr c, @-$7a

    ld a, a
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    scf
    rst $38
    ld h, [hl]
    rst $38
    cp e
    rst $38
    di
    rst $38
    di
    rst $38
    ld a, [c]
    rst $38
    cp b
    rst $38
    dec a
    rst $38
    jp nc, $9cff

    rst $38
    ld hl, sp-$01
    ld a, h
    rst $38
    or e
    rst $38
    ld e, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    sub b
    rst $38
    ccf
    db $fc
    ld a, b
    pop af
    nop
    ldh [rP1], a
    jp $9483


    nop
    ldh a, [rP1]
    ld b, $00
    inc [hl]
    inc d
    rst $38
    ld d, a
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fd
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
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld h, b
    rst $38
    rst $28
    rst $38
    ld a, a
    rst $38
    inc bc
    ld a, a
    ld bc, $01ff
    rst $38
    nop
    ld a, a
    nop
    rst $38

Call_058_67ff:
    rlca
    rla
    rst $38
    inc bc
    rst $38
    rla
    rst $38
    adc a
    rst $38
    rlca
    rst $38
    ld e, a
    rst $38
    and a
    rst $38
    di
    rst $38
    ld l, e
    rst $38
    and e
    rst $38
    dec d
    rst $38
    add hl, de
    rst $38
    ld d, a
    rst $38
    add e
    rst $38
    ld b, $ff
    ld [bc], a
    rst $38
    dec b
    rst $38
    rlca
    rst $38
    ld bc, $affe
    ld d, b
    rst $30
    ld [$00ff], sp
    ld a, c
    add [hl]
    jp nc, Jump_058_622f

    sub c
    dec c
    ldh a, [$2b]
    ldh a, [rP1]
    ld hl, sp-$79
    ld hl, sp-$18
    rst $38
    ld b, c
    cp $07
    ld hl, sp-$41
    rra
    add a
    rra
    sub e
    rrca
    add hl, bc
    inc bc
    dec a
    inc bc
    ld [hl], c
    rrca
    nop
    ld bc, $df21
    ldh a, [rIF]
    sub l
    ld c, d
    sub c
    nop
    adc h
    ld bc, $038c
    ld [hl+], a
    ld bc, $0718
    add hl, de
    ld b, $ea
    jr nc, @+$32

    nop
    push hl
    db $10
    rlca
    ldh a, [rTMA]
    ldh a, [$a4]
    ld a, b
    jr nc, @+$01

    jr c, @+$01

    jr c, @+$01

    jr nc, @+$01

    inc c
    di
    jr z, @-$07

    adc c
    rst $30
    ld [hl], b
    adc a
    jr nz, @-$1f

    ld e, a
    rst $38
    rst $38
    or d
    rst $38
    ld a, d
    rst $38
    ldh a, [rIE]
    inc sp
    rst $38
    ld a, [c]
    rst $38
    ld h, a
    di
    ld h, c
    jp hl


    ld b, b
    cp $00
    cp $90
    db $fd
    ld d, b
    rst $38
    ld de, $0eff
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    jr nc, @-$01

    ldh a, [$fc]
    add h
    cp $94
    rst $38
    nop
    db $ec
    jr nz, @+$7a

    ld h, b
    ld hl, sp-$40
    ldh [rNR41], a
    ld a, d
    ld h, b
    nop
    nop
    jp nc, $ea00

    and b
    rst $38
    push af
    rst $38
    ei
    rst $38
    cp b
    rst $38
    ld bc, $08ff
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    and b
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ld a, [hl+]
    rst $38
    or b
    rst $38
    nop
    rst $38
    add l
    rst $38
    inc d
    rst $38
    add b
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    and b
    rst $38
    ld h, b
    rst $38
    add b
    rst $38
    ret z

    rst $38
    ld a, [$c9ff]
    rst $38
    inc e
    rst $38
    jr c, @+$01

    ldh a, [rIE]
    add sp, -$01
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$10ff], sp
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    cp [hl]
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    cp $ff
    ld hl, sp-$01
    jp hl


    rst $38
    and a
    rst $38
    ld e, $ff
    ld a, a
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    rst $38
    nop
    rst $30
    ld [$44bb], sp
    rrca
    ldh a, [$9c]
    ld h, e
    db $fc
    inc bc
    rra
    rst $38
    adc a
    ld a, a
    rrca
    ld a, a
    rst $00
    ccf
    rra
    ld a, a
    sbc l
    ld a, a
    rra
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    rla
    rst $38
    add e
    rst $38
    add e
    rst $38
    pop hl
    rst $38
    rst $00
    rst $38
    ld b, a
    rst $38
    sub l
    rst $38
    push bc
    rst $38
    ld sp, $cf8f
    ccf
    ld h, e
    sbc a
    daa
    rst $18
    add a
    ld a, a
    inc bc
    rst $38
    ret c

    daa
    inc hl
    nop
    inc c
    db $e3
    xor l
    ld b, d
    ld c, $e1
    di
    ldh [$eb], a
    ldh a, [$28]
    nop
    cp a
    nop
    sbc b
    ld h, a
    ld hl, $f0de
    rrca
    ld b, b
    cp a
    inc bc
    rst $38
    nop
    rst $38
    dec l
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, a
    rst $38
    ld [hl+], a
    di
    ld h, b
    db $e3
    ld b, c
    ld c, a
    inc bc
    rst $38
    nop
    cp h
    ld [$08f9], sp
    ld a, e
    jr nz, jr_058_69e2

    ld b, b
    db $fc
    inc b
    ld l, b
    ld [$00fc], sp
    db $fd
    adc b
    rst $38
    ld c, b
    db $fc
    and b
    ld c, a
    nop
    rst $38
    ld a, b
    rst $38
    nop
    inc d
    db $10
    ld c, $0c
    dec e
    jr jr_058_69d1

    inc h
    dec h
    inc b
    nop
    nop
    ld [$9b00], sp
    db $10
    rst $38
    sbc [hl]
    rst $38
    db $fc
    rst $38
    jr nz, @+$01

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
    rst $30

jr_058_69d1:
    rst $38
    rst $38
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

jr_058_69e2:
    ccf
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    pop hl
    cp $3f
    ret nz

    ld e, [hl]
    and c
    ld hl, sp+$07
    call z, $b733
    ld a, b
    add sp, $1f
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
    rst $18
    rst $38
    cp e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld a, a
    rst $38
    di
    rst $38
    ld [hl], c
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    ld a, $ff
    cp l
    rst $38
    ld hl, sp-$01
    cp e
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    cp a
    ld a, a
    ccf
    rst $38
    jr c, @+$01

    ld a, [hl-]
    rst $38
    jr c, @+$01

    add b
    ld a, a
    ld [bc], a
    ld a, l
    jp nz, Jump_058_5a3d

    add b
    sbc b
    nop
    ld l, l
    add b
    ld e, h
    and b
    ld d, b
    add b
    cp c
    ld b, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc b
    db $e3
    ld b, c
    rst $20
    add b
    sbc h
    nop
    rlca
    nop
    ld de, $b101
    nop
    sbc a
    add b
    dec d
    nop
    jr nc, jr_058_6a84

    cp e
    jr nz, jr_058_6a92

    nop
    ld l, [hl]
    nop
    ld e, h
    nop
    jr c, jr_058_6a6e

jr_058_6a6e:
    cp e
    nop
    di
    nop
    ld a, [c]
    nop
    jp nz, RST_00

    nop
    inc bc
    ld bc, $0206
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop

jr_058_6a84:
    ld c, e
    ld [bc], a
    rst $38
    ld l, [hl]
    rst $38
    jr nz, @+$01

    add b
    db $fc
    nop
    db $f4
    nop
    jr nc, @+$01

jr_058_6a92:
    rst $38
    rst $38
    db $fc
    rst $38
    or $ff
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
    rra
    rst $38
    rra
    rst $38
    cpl
    rst $38
    ld h, b
    db $ec
    nop
    nop
    ld [hl], c
    nop
    ld a, [$bc00]
    nop
    ld d, h
    nop
    ld h, [hl]
    nop
    ld [c], a
    nop
    ld [$3100], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fd
    rst $38
    ld sp, hl
    rst $38
    db $f4
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $ec
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    ld e, $ff
    cp $3f
    ld e, c
    cp [hl]
    call nz, $c03b
    ccf
    inc c
    di
    inc de
    nop
    nop
    ld bc, $03a8
    dec de
    pop hl
    ld [hl], h
    add hl, bc
    ld h, a
    add hl, de
    rst $18
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ld [hl], e
    rst $38
    inc hl
    rst $38
    call z, $c4ff
    rst $38
    ret nz

    rst $38
    inc d
    ei
    jr nc, @+$01

    jp nz, $84ff

jr_058_6b23:
    rst $38
    xor h
    rst $38
    dec c
    cp $24
    rst $18
    inc bc
    rst $38
    sbc b
    rst $38
    ld [hl], b
    rst $38
    reti


    rst $30
    ld [c], a
    rst $38
    nop
    rst $38
    ld b, $f9
    ld b, $f9
    jr jr_058_6b23

    add b
    rst $38
    inc [hl]
    sra b
    rst $18
    nop
    rst $38
    rst $28
    rst $38
    db $e4
    rst $38
    ret c

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    and b
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    jp nz, Jump_000_14ff

    rst $38
    inc h
    rst $38
    db $ec
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    push af
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
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec c
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add sp, -$18
    nop
    nop
    nop
    cp c
    ld b, [hl]
    ret nz

    ccf
    jp nz, $aa3d

    push de
    jp nc, Jump_058_52ed

    db $ed
    ld h, b
    sbc $60
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld a, l
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    sub h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    sbc a
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec b
    rst $38
    ld a, a
    sbc a
    rrca
    rst $38
    ld l, h
    sbc a
    db $dd
    ld [bc], a
    rrca
    ldh [$e0], a
    nop
    rst $38
    nop
    ld a, [bc]
    push af
    ld bc, $2efe
    ret nc

    rra
    ldh [rNR51], a
    rst $38
    db $fc
    rst $38
    and d
    rst $38
    add [hl]
    rst $38
    adc [hl]
    rst $38
    add c
    cp $14
    rst $38
    inc a
    rst $00
    ld hl, sp-$79
    ld [c], a
    dec e
    inc de
    db $fc
    rlca
    ld hl, sp-$37
    ccf
    dec c
    rst $38
    ld [$08ff], sp
    rst $38
    nop
    rst $38
    and b
    rst $38
    db $f4
    dec bc
    nop
    ld hl, sp-$80
    rst $38
    add c
    cp $40
    rst $38
    inc bc
    db $fc
    ld [hl], h
    sbc e
    ld b, h
    cp e
    nop
    rst $38
    ld b, l
    nop
    rra
    rlca
    ld c, e
    inc bc
    ld e, a
    nop
    dec e
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    add hl, de
    rst $38
    jr nz, @+$01

    dec c
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    add a
    rst $38
    ld c, a
    rst $38
    ld b, a
    rst $38
    rrca
    nop
    xor a
    nop
    cp a
    nop
    ld a, a
    nop
    rst $18
    nop
    rst $38
    ld bc, $01df
    rst $18
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld a, [bc]
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
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, a
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
    sub h
    rst $38
    nop
    ldh [rP1], a
    nop
    nop
    or l
    ld c, e
    xor d
    ld e, l
    cpl
    call c, $e718
    rra
    rst $20
    push bc
    ccf
    inc e
    ccf
    ld [bc], a
    dec de
    db $fd
    rst $38
    rst $18
    rst $38
    or [hl]
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    push hl
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    ld [hl], a
    rst $38
    ld a, e
    rst $38
    ld a, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $18
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    cp $ff
    cp $ff
    add hl, hl
    cp $f0
    rst $38
    call z, $60ff
    rst $38
    ld [hl], e
    rst $28
    daa
    rst $38
    db $fd
    nop
    ld e, $01
    dec de
    inc b
    dec c
    ld [bc], a
    jr jr_058_6cd2

jr_058_6cd2:
    cp [hl]
    nop
    jp $443e


    dec sp
    inc hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, $ff
    ccf
    rst $38
    ld e, b
    cp a
    ld a, [de]
    db $fd
    jr c, @+$01

    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    jp Jump_000_22fe


    rst $18
    ld b, $fd
    add hl, de
    xor $21
    sbc $14
    rst $38
    db $10
    rst $38
    adc h
    ld [hl], e
    rst $20
    rra
    db $e4
    sbc a
    nop
    rst $28
    cp [hl]
    ld b, e
    ld a, h
    add e
    xor h
    ld d, e
    add [hl]
    ld a, c
    nop
    rst $38
    nop
    rst $38
    adc h
    rst $38
    ld e, e
    db $e4
    add $f9
    add l
    ld a, [$fe81]
    add b
    rst $38
    ld b, b
    rst $38
    ld c, [hl]
    rst $38
    ld h, h
    ei
    ld l, a
    ldh a, [$cf]
    ldh a, [rOBP1]
    or $42
    db $fd
    ld h, b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    pop hl
    rst $38
    ld hl, sp+$20
    ldh a, [rP1]
    ldh a, [$60]
    ldh a, [$e0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    db $f4
    ldh a, [$fc]
    db $f4
    db $fc
    call c, $08fc
    ld hl, sp+$08
    ld hl, sp+$48
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    ld hl, sp-$04
    ld b, b
    db $fc
    nop
    db $fc
    inc b
    db $fc
    sbc h
    db $fd
    db $fd
    db $fd
    db $fd
    rst $38
    db $fc
    rst $38
    ld hl, sp-$02
    ld hl, sp-$01
    ld a, [c]
    cp $f2
    rst $38
    ld [c], a
    cp $c2
    cp $82
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    call z, $03ff
    db $fc
    ld [$5af7], sp
    and l
    ld a, [hl+]
    push de
    ld [hl], e
    adc h
    ld de, $0fef
    di
    inc bc
    rst $38
    ld [bc], a
    rst $00
    nop
    rst $18
    nop
    rst $38
    rla
    rst $38
    add hl, bc
    rst $38
    add a
    rst $38
    ld e, a
    rst $38
    or d
    rst $38
    ld [hl], e
    rst $38
    rlca
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    sbc $ff
    db $fd
    rst $38
    db $fc
    rst $38
    ret c

    rst $38
    ld sp, hl
    rst $38
    ret c

    rst $38
    sub b
    rst $38
    add b
    rst $38
    add e
    rst $38
    and d
    rst $38
    dec de
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    add a
    ld a, a
    ld c, a
    cp a
    ld [hl+], a
    rst $38
    xor b
    ld a, a
    ld d, $ff
    ld [bc], a
    rst $38
    ld de, $a5ee
    ld a, [$eb14]
    ld h, h
    sbc e
    ld l, e
    inc d
    ld [$9177], sp
    ld h, b
    or b
    ld b, b
    ld h, [hl]
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld h, a
    rst $38
    xor $ff
    ld a, $ff
    rrca
    rst $38
    inc c
    rst $38
    ld l, b
    rst $38
    ld h, e
    rst $38
    ld h, c
    rst $38
    ld a, e
    rst $38
    inc hl
    rst $38
    and d
    ld a, a
    inc c
    rst $38
    ld [$5cff], sp
    rst $38
    add h
    rst $38
    ld [$0fff], sp
    ldh a, [$a6]
    ld sp, hl
    ret nz

    rst $38
    db $fc
    jp $c7f8


    rst $38
    ret nz

    db $fd
    jp nz, $ff01

    sub b
    ld e, [hl]
    nop
    rst $18
    adc b

jr_058_6e15:
    ld a, c
    add b
    ld a, c
    add b
    ld e, b
    jr z, jr_058_6e15

    ld d, b
    or c
    ldh [$32], a
    ret nc

    ld h, $b0
    ld b, b
    ldh a, [$08]
    add sp, $18
    jr nc, @-$26

    db $10
    rst $38
    nop
    cp $10
    db $ec
    ld a, b
    add b
    ld sp, hl
    rlca
    ld h, [hl]
    sbc a
    ld [hl], b
    adc a
    ld hl, sp+$06
    cp h
    ld b, e
    adc [hl]
    ld [hl], c
    ld [hl+], a
    db $dd
    ld a, [bc]
    push af
    add [hl]
    ld sp, hl
    and a
    ld a, b
    cp $01
    ld a, [hl]
    add c
    rst $38
    nop
    ld a, [hl]
    add c
    ld a, a
    add b
    rst $38
    nop
    ld l, a
    sub b
    inc sp
    call z, Call_058_738c
    add e
    ld a, h
    and c
    ld a, [hl]
    ld d, b
    cp a
    db $e4
    rra
    rst $38
    add b
    cp $c1
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    ld a, a
    add b
    ccf
    ret nz

    ld e, a
    and b
    ld l, h
    sub e
    ld e, $e1
    ld [hl], c
    adc [hl]
    ld [hl], a
    adc b
    ei
    inc b
    rst $38
    nop
    jp nc, Jump_058_663d

    sbc c
    xor $f1
    di
    ld a, h
    di
    cp $02
    rst $38
    ld b, $af
    adc [hl]
    cp [hl]
    ld [$00be], sp
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    db $eb
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    cp [hl]
    rst $38
    db $eb
    rst $38
    xor $ff
    db $e3
    rst $38
    rst $30
    rst $38
    or $ff
    db $10
    rst $38
    cp [hl]
    rst $38
    sbc $ff
    call c, Call_058_67ff
    ei
    pop af
    rst $38
    ld [hl], d
    db $fd
    ld hl, sp-$01
    db $fc
    rst $38
    ret


    rst $38
    rst $30
    rst $38
    cp $ff
    inc d
    rst $38
    db $10
    rst $38
    dec d
    db $eb
    add d
    ld h, c
    db $eb
    inc b
    nop
    rst $00
    ld a, [bc]
    add l
    ld b, b
    cp a
    inc b
    ld b, b
    ld b, e
    adc h
    adc e
    inc b
    sbc [hl]
    ld bc, $ffff
    rst $38
    rst $38
    ld hl, sp-$01
    pop af
    rst $38
    cp a
    ld de, $00f9
    ld a, h
    nop
    ld b, h
    nop
    ret nz

    nop
    ret c

    nop
    adc b
    nop
    jr c, jr_058_6ef0

jr_058_6ef0:
    sbc [hl]
    rst $38
    ld c, $fd
    inc bc
    rst $38
    add $ff
    ld c, b
    rst $38
    ldh a, [rIE]
    jr c, @+$01

    adc h
    rst $38
    push hl
    sbc $90
    rst $28
    sbc $a5
    ld b, a
    cp h
    ld c, $fd
    rrca
    cp $5f
    cp [hl]
    ldh a, [$1f]
    rst $28
    jr jr_058_6f82

    sbc b
    sbc [hl]
    ld sp, hl
    add b
    rst $38
    xor l
    db $d3
    cp a
    pop bc
    sbc l
    db $e3
    ld [hl], a
    ei
    ld [hl], l
    db $eb
    scf
    ret


    sub c
    ld l, a
    ret


    ld [hl], a
    inc b
    rst $38
    rra
    cp $b7
    ld c, b
    or [hl]
    ld c, c
    dec bc
    cp $80
    rst $38
    nop
    rst $38
    and b
    ld e, a
    ld h, c
    sbc [hl]
    cp a
    ld b, b
    rrca
    ldh a, [rVBK]
    or b
    ld l, $f0
    rst $38
    ldh [$dd], a
    ld [c], a
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    sbc [hl]
    pop hl
    or e
    ldh [$c0], a
    ret nz

    ld b, b
    ret nz

    ld h, b
    ldh [rLCDC], a
    and b
    ld b, b
    add h
    call nz, $c404
    ld b, $c0
    inc b
    jp nz, $c303

    inc bc
    ld b, d
    add a
    ret nz

    ld b, $c0
    ld [bc], a
    ret nz

    nop
    ret nz

    ld [bc], a
    ret nz

    ld [bc], a
    ldh [$0b], a
    ld h, b
    sbc a
    add b
    ld h, [hl]
    ldh [rNR21], a
    and h
    ld c, h
    sub h
    ld l, h
    db $10
    ldh [$88], a
    ldh a, [$78]
    add b

jr_058_6f82:
    add sp, $18
    ld hl, sp+$18
    db $10
    db $10
    db $10
    stop
    ld de, $5e00
    ld bc, $ecdf
    rst $30
    di
    rst $38
    or $ff
    sbc $ff
    rst $18
    rst $38
    and $ff
    ld a, [$f0ff]
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ld a, h
    rst $38
    sbc h
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    ret z

    rst $30
    add b
    rst $38
    add b
    rst $38
    add hl, bc
    rst $30
    dec bc
    rst $30
    inc hl
    sbc a
    inc bc
    rst $38
    nop
    rst $18
    rst $08
    rst $38
    ld b, e
    rst $38
    ret


    ccf
    rst $30
    rst $38
    ei
    rst $38
    ld b, $f9
    add c
    ld a, [hl]
    ld c, h
    or e
    cp b
    ld b, a
    rrca
    ldh [$cf], a
    jr nc, jr_058_6fff

    ret nc

    ret z

    jr nc, jr_058_6fd7

jr_058_6fd7:
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    jp $03ff


    rst $38
    rst $08
    rst $38
    daa
    rst $38
    cpl
    rst $38
    inc bc
    rst $38
    jp nz, Jump_000_32ff

    rst $28
    ld [hl], $ff
    inc e
    rst $38
    inc d
    rst $38
    inc b
    rst $38
    or b
    rst $38
    inc b
    ei
    or b
    rst $08
    pop af
    cp $2f

jr_058_6fff:
    ldh a, [rTAC]
    ld hl, sp-$35
    inc a
    jp z, $433d

    db $fc

jr_058_7008:
    add hl, sp
    and $cd
    ld [hl-], a
    adc $31
    rst $18
    ld hl, $e05f
    xor $51
    ld c, c
    or $29
    sub $34
    set 7, e
    add [hl]
    jp $c0be


    rst $38
    ld hl, sp-$79
    db $fc
    add e
    ld a, a
    add b

jr_058_7026:
    rst $38
    nop
    cp a
    ld b, b
    or a
    ld a, c
    xor $11
    rrca
    di
    push hl
    ld e, $ee
    dec d
    call c, $a027
    ld e, a

jr_058_7038:
    rst $08
    jr nc, @+$01

    db $10
    rst $18
    jr nc, jr_058_709e

    jr nc, jr_058_7038

    jr @+$01

    db $10
    rst $08
    jr nc, jr_058_7026

    jr nz, jr_058_7008

    ld b, b
    xor a
    ld d, b
    ld a, a
    ret nz

    cp $01
    ld a, [hl]
    ld bc, $01ee

jr_058_7054:
    db $eb
    db $10
    rst $38
    jr nz, jr_058_70d8

    ret nz

    cp a
    ld b, b
    cp [hl]
    ld b, b
    ld a, a
    add b
    ld a, a
    sub b
    ld [$ec1d], a
    dec de
    db $fd
    dec bc
    rst $38
    inc c
    rst $30
    inc c
    rst $38
    inc b
    db $dd
    ld c, $f9
    ld e, $f1
    ld c, $fb
    ld b, $f9
    ld b, $fe
    ld bc, $03fe
    rst $38
    inc bc
    rst $38
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    cp $01
    ld a, [hl]
    add c
    call $df80
    add b
    rst $38
    nop
    rst $38
    rst $38
    cp [hl]
    rst $38
    ld d, [hl]
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    sub h
    rst $38
    db $fc
    rst $38

jr_058_709e:
    db $fd
    rst $38
    ld a, c
    rst $38
    ld [hl], b
    rst $38
    ld a, h
    rst $38
    ld a, b
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld [hl], a
    rst $38
    rra
    rst $38
    cp $ff
    sbc $ff
    rst $38
    rst $38
    cp $ff
    db $fd
    rst $38
    ld b, b
    rst $38
    db $fd
    rst $38
    sbc c
    rst $38
    add c
    rst $38
    pop bc
    rst $38
    ret z

    rst $30
    ld d, l
    and e
    ld e, b
    and a
    or b
    ld c, a
    ld l, $df
    adc $3f
    pop bc
    jr nz, jr_058_7054

    nop
    inc c
    inc bc
    rst $38
    rst $38

jr_058_70d8:
    rst $38
    rst $38
    rst $28
    rst $38
    adc l
    rst $38
    cp l
    rst $38
    sub a
    rst $38
    adc h
    rst $38
    jr c, @+$01

    scf
    rst $38
    inc sp
    rst $38
    inc de
    rst $38
    ld hl, $60ff
    cp a
    ld a, [hl+]
    db $fd
    add hl, sp
    rst $38
    jr nc, @+$01

    add b
    ld a, a
    ld h, [hl]
    sbc a
    ld [$ccf7], sp

jr_058_70fd:
    inc sp
    adc [hl]
    ld [hl], c
    sub a
    ld a, b

Call_058_7102:
    rra
    ldh a, [$7f]
    add b
    cp a
    ld b, b
    rrca
    ld hl, sp-$0d
    inc c
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    ei
    inc c
    ld d, a
    xor b
    db $db
    inc h
    rst $38
    nop
    db $fd
    ld [bc], a
    cp $01
    ld a, a
    add b
    cp b
    rst $00
    sbc $81
    ld l, a
    sub b
    xor e
    ld [hl], h
    cp a
    ld [hl], b
    sbc b
    rst $20
    cp l
    add $f7
    ld [$847a], sp
    ld a, c
    add [hl]
    ld a, b
    add a
    or h
    rst $08
    ld e, a
    ldh [rIE], a
    ld h, b
    cp a
    ld b, b
    rra
    ldh [rIE], a
    nop
    ld l, [hl]
    nop
    rst $38
    jr nz, jr_058_70fd

    ld h, c
    add [hl]
    ld h, c
    xor l
    ld h, d
    cp l
    ld h, d
    ld e, e
    ldh a, [rHDMA4]
    ld hl, sp+$54
    ld hl, sp+$06
    ld hl, sp+$22
    call c, Call_058_40bf
    cp a
    ld b, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    cp a
    ld h, b
    di
    ld h, b
    daa
    ret nc

    ld e, [hl]
    or c
    add a
    ld a, h
    ei
    ld b, $be
    ld b, e
    db $76
    add c
    cp $01
    sbc $01
    rst $38
    ld bc, $837c

jr_058_7178:
    inc a
    db $e3
    db $dd
    db $e3
    cp h
    jp $80ff


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

    ld a, a
    add b
    rst $38
    add b
    ccf
    ret nz

    ld h, h
    ld hl, sp-$70
    ldh a, [$e6]
    ld hl, sp-$01
    ldh a, [$35]
    ldh a, [rSTAT]
    ldh a, [$a4]
    ld hl, sp+$6f
    ld hl, sp+$01
    ld hl, sp+$61
    ld hl, sp-$18
    ldh a, [$fa]
    ldh [$e9], a
    ldh a, [$ce]
    ldh a, [$5e]
    ldh [$2a], a
    ret nz

    inc l
    ret nz

    jr z, jr_058_7178

    xor h
    ret nz

    or h
    ret z

    ld a, b
    add h
    xor h
    ret nz

    db $fc
    add b
    ld hl, sp-$80
    dec c
    ldh [$8a], a
    pop hl
    ld h, c
    adc b
    call Call_058_4b00
    add h
    rst $00
    nop
    inc b
    ret nz

    ld h, b
    add b
    db $e4
    dec de
    ret nz

    ccf
    ld b, $fb
    adc [hl]
    ld sp, hl
    jp $e0fc


    rst $38
    or b
    rst $38

jr_058_71de:
    ret c

    rst $38
    db $ec
    add b

jr_058_71e2:
    db $e4
    call nz, Call_000_004c
    rst $08
    nop
    ld e, l
    nop
    adc [hl]
    nop
    db $fc
    nop
    adc h
    nop
    ld e, h
    rst $38
    add hl, sp

jr_058_71f3:
    rst $38
    nop
    rst $38
    sub h
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$07
    ld hl, sp+$3b
    db $f4
    rst $38
    jr nc, jr_058_71e2

    jr nc, @-$1f

    jr c, jr_058_7216

    ld hl, sp+$0b
    db $f4
    xor $11
    xor a
    ld d, b
    ld [hl], a
    sbc b
    rst $18
    jr nc, jr_058_71e2

    jr nc, @+$01

    nop

jr_058_7216:
    rst $38
    nop

jr_058_7218:
    rst $38
    nop
    rst $28
    db $10
    ld e, a
    or b
    rst $18
    ldh [$5f], a
    and b
    ld e, a
    and b
    cp a
    ld b, b
    rst $18
    jr nz, jr_058_7218

    db $10
    di
    call z, Call_000_00ff
    ld a, e
    nop
    ld a, a
    nop
    rst $08
    jr nc, jr_058_71f3

    ret nz

    db $fc
    add b
    cp l
    ret nz

    ld h, h
    add b
    call c, $e820
    db $10
    ldh a, [$08]
    rst $38
    ld [$18e7], sp
    ld a, $c0
    cp $80
    ld a, a
    add b
    cp a
    ld b, b
    ld c, a
    jr nz, jr_058_72c0

    db $10
    ld l, e
    db $10
    ld [hl], b
    nop
    ld [hl], b
    nop
    push bc
    jr nz, jr_058_71de

    ld h, b
    and e
    ld b, b
    cp c
    ld b, b
    db $fc
    nop
    cp [hl]
    ld b, b
    rst $18
    ld h, b
    dec c
    ldh a, [rIE]
    nop
    xor a
    ld b, b
    ld l, a
    ret nz

    rst $30
    add b
    ei
    ret nz

    cp a
    ret nz

    scf
    ret z

    ld [hl], a
    xor h
    inc h
    ei
    ld e, a
    ldh [$5f], a
    ldh [rVBK], a
    ldh [rVBK], a
    ldh [rBGP], a
    ldh [rVBK], a
    ldh [$7f], a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, [hl]
    ret nz

    ld a, $c0
    jp $9d00


    ld [bc], a
    sub b
    ld b, $0e
    nop
    or [hl]
    nop
    cp b
    nop
    or [hl]
    ld [$00bd], sp
    inc h
    ld b, b
    inc a
    ld b, b
    inc a
    ld b, b
    ld c, b
    ld bc, $01da
    jp nc, $0c01

    nop
    add d
    inc b
    and a
    ld b, b
    ld sp, hl
    nop
    xor $00
    add d
    dec b
    ld [c], a
    dec b
    ld h, a
    nop

jr_058_72bc:
    db $e4

jr_058_72bd:
    nop
    or h
    ld b, b

jr_058_72c0:
    adc c
    ld h, b
    rlca
    ld b, b
    jp z, Jump_058_4e04

    add b
    rst $00
    nop
    ld b, e
    nop
    rst $18
    nop
    db $ec
    ld [bc], a
    or a
    nop
    ld a, [de]
    jr nz, jr_058_72bd

    inc b
    ret z

    inc b
    ret nz

    inc b
    add b
    nop
    ld b, b
    nop
    nop
    nop
    ld l, d
    sbc l
    add d
    ld a, l
    nop
    rst $38
    adc b

jr_058_72e7:
    rst $38
    pop hl
    sbc $c3
    db $fc
    ld h, c
    cp $32
    db $fd
    adc b

jr_058_72f1:
    ld a, a
    sbc h
    rst $38
    db $10
    rst $38
    jr c, jr_058_72e7

    ld a, [hl+]
    db $fd
    ld [hl], e
    adc $d0
    ld l, a
    cp a
    ld h, b
    cp l
    ld b, e
    push de
    ld l, e
    ld sp, hl
    rlca
    rst $38
    inc bc
    sbc $21
    ld e, a
    and b
    scf
    ret z

    ld [hl], b
    rst $08
    cp b
    ld b, a
    cp e
    ld b, [hl]
    inc e
    db $e3
    cp [hl]
    ld b, c
    cp $41
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $30
    ld [$58a7], sp
    rst $00
    jr c, jr_058_72bc

    ld l, b
    xor a
    ld d, b
    ei
    nop
    cp a
    nop
    cp e
    rlca
    reti


    ld b, $bf
    ld b, b
    ld a, c
    nop
    and c
    db $10
    ld hl, sp+$00
    db $f4
    ld [$04fb], sp
    di
    inc c
    cp $04
    ld [c], a

jr_058_7341:
    inc e
    db $10
    ldh [$e0], a
    nop
    jr c, jr_058_7348

jr_058_7348:
    ccf

jr_058_7349:
    nop
    ld h, c
    ld a, $e8
    inc bc
    add c
    nop
    add b
    nop
    ret nz

    nop
    add b
    ld b, b
    and b
    ld b, b
    ld b, b
    nop
    ret nz

    nop
    and b
    nop

jr_058_735e:
    ld b, b
    nop
    and c
    ld b, b
    xor a
    ld d, b
    ld e, c
    add b
    db $e3
    nop
    adc a
    ld h, b
    rst $38
    jr nz, jr_058_7349

    jr nz, jr_058_7341

    jr nz, jr_058_72f1

    ld h, b
    xor h
    ld b, b
    and b
    ld b, b
    adc b
    ld h, b
    ld a, [hl]
    add b
    db $ed
    ld e, $f1
    ld c, $f9
    ld b, $ea
    inc d
    ld l, [hl]
    db $10
    sbc $00
    xor a
    nop
    ld h, d
    ld bc, $0061

Call_058_738c:
    ldh [rP1], a
    nop
    nop
    inc c
    nop
    inc l
    nop
    inc c
    nop
    jr nz, jr_058_7398

jr_058_7398:
    inc d
    ld [$0812], sp
    inc e
    nop
    sub b
    ld [$1060], sp
    call z, Call_058_6530
    db $10
    dec sp
    nop
    ld l, e
    nop
    add hl, sp
    nop
    cp h
    ld [bc], a
    jr nc, @+$08

    jr jr_058_73b8

    ld a, [de]
    inc b
    inc d
    ld [$0814], sp

jr_058_73b8:
    adc [hl]
    nop
    inc h
    nop
    jr jr_058_73be

jr_058_73be:
    inc d
    ld [$021d], sp
    rla
    ld [$008c], sp
    inc d
    nop
    inc b
    nop
    inc bc
    nop
    daa
    nop
    dec l
    db $10
    add hl, sp
    inc b
    dec a
    ld [bc], a
    rst $28
    nop
    ld e, d

jr_058_73d7:
    inc h
    jp nc, Jump_000_2828

    sub b
    jr jr_058_735e

    inc a
    add b
    jr c, jr_058_73e2

jr_058_73e2:
    jr jr_058_73e4

jr_058_73e4:
    add hl, sp
    nop
    and d
    ld bc, $01aa
    ld [bc], a
    add c
    add l
    ld b, b
    xor $00
    or d
    ld c, l
    and b
    ld e, a
    call nz, $de3b
    ld sp, $b8c7
    dec h
    jp c, $f689

    ret nz

    rst $38
    ret nc

    ccf
    ret c

    ccf
    db $f4
    adc a
    ld hl, sp-$39
    ld a, [hl-]
    push bc
    ld a, a
    add h
    ei
    add h
    jr c, jr_058_73d7

    dec d
    ld a, [$0ef1]
    db $fd
    ld b, $5c
    and a
    ld a, e
    rst $00
    db $fd
    add e
    rst $38
    ld bc, $41bf
    ret c

    daa

jr_058_7422:
    ld [hl], l
    adc [hl]
    rst $38
    nop
    db $fd
    ld [bc], a
    db $ed
    ld [de], a
    sbc a
    ld h, b
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    ld a, $01
    inc h
    inc de
    ld e, h
    inc bc
    ld b, $01
    rlca
    nop
    inc b
    ld bc, $0007
    rlca
    nop
    rrca
    nop
    sbc a
    nop
    rst $38
    nop
    call Call_058_4300
    add b
    jp $9b00


    ld b, b
    ld l, a
    nop
    daa
    nop
    ccf
    nop
    rla
    nop
    jr nc, jr_058_745e

jr_058_745e:
    and b
    ld b, b
    jr nz, jr_058_7422

    ldh a, [rP1]
    or d
    ld b, b
    db $fc
    nop
    cp b
    nop
    cp b
    nop
    ld [$0a00], sp
    inc b
    ld d, $00
    rra
    nop
    ld de, $1000
    nop
    nop
    nop
    ccf
    nop
    ccf
    nop
    ld c, a
    nop
    dec h
    nop
    rrca
    nop
    cpl
    nop
    ld l, [hl]

jr_058_7487:
    nop
    ld d, h
    jr nz, jr_058_7422

    ld h, b
    add a
    ld [hl], b
    sbc c
    ld h, b
    rra
    nop
    ld l, b
    nop
    ld [hl], a
    ld [$0cd3], sp
    ld a, [c]
    inc c
    inc de
    ld [$2050], sp
    db $f4
    ld [$00dd], sp
    jr jr_058_74a4

jr_058_74a4:
    sub b
    ld [$00f0], sp
    add sp, $10
    ret nc

    jr nz, jr_058_74e6

    nop
    sbc c
    nop
    pop hl
    nop
    pop de
    jr nz, @+$68

    nop
    and c
    ld b, [hl]
    and b
    ld b, $c2
    inc b
    sbc $00
    ldh a, [$08]
    ld b, b
    jr jr_058_7487

    db $10
    or h
    nop
    and b
    db $10
    jr nc, jr_058_74d2

    ld a, $00
    or [hl]
    nop
    add b
    nop
    inc h
    db $db

jr_058_74d2:
    inc h
    db $db
    and [hl]
    ld e, c
    ld b, $f9
    ld b, [hl]
    cp c
    ld h, h
    sbc e
    push hl
    sbc d
    daa
    ret c

    add l
    ld b, d
    sbc e
    ld b, h
    ld l, h
    ld [de], a

jr_058_74e6:
    call nz, $de18
    nop
    rst $00
    ld [$0887], sp
    add hl, bc
    db $10
    inc a
    nop
    nop
    nop
    add hl, bc
    nop
    inc bc
    nop
    ld [bc], a
    ld bc, $0196
    ld c, [hl]
    ld bc, $030c
    nop
    inc bc

jr_058_7502:
    inc c
    inc bc
    nop
    rlca
    nop
    rlca
    adc c
    ld b, $03
    inc c
    add c
    ld c, $90
    rrca
    pop de
    jr nz, jr_058_7502

    db $10
    rst $28
    db $10
    rlca
    ld hl, sp-$06
    rlca
    ld hl, sp+$07
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $08
    jr c, @+$01

    nop
    cp $01
    ld a, a
    add c
    cp $01
    rst $38
    nop
    sbc a
    ld h, b
    add e
    nop
    add e
    ld bc, $01a2
    inc hl
    add b
    db $e4
    nop
    sbc [hl]
    nop
    add hl, bc
    add b
    nop
    add b
    ld b, c
    add b
    ld h, e

jr_058_7543:
    add b
    nop
    ldh [$80], a

jr_058_7547:
    ld h, b
    ret nz

    jr nc, jr_058_7543

    nop
    and c
    ld b, b
    ret nz

    ld bc, $00e1
    jp nz, $d020

    jr nz, jr_058_7547

    nop
    ldh [rNR10], a
    ld l, c
    db $10
    sbc d
    ld h, b
    ld d, b
    jr nz, jr_058_7571

    jr nz, @+$3a

    nop
    jr nz, jr_058_7566

jr_058_7566:
    stop
    rla
    nop
    ld c, $00
    add hl, bc
    nop
    sbc e
    nop
    inc d

jr_058_7571:
    ld [$003e], sp
    ld hl, sp+$06
    ld e, h
    add b
    cp b
    ld b, b
    adc e
    ld [hl], b
    ld sp, hl
    nop
    call z, $fc00
    nop
    db $fc
    nop
    ld a, d
    nop
    inc a
    nop
    adc h
    nop
    ld c, $00
    rlca
    nop
    inc bc
    nop
    ld e, $01
    sbc a

jr_058_7593:
    nop
    dec sp
    nop
    ld b, $00
    jr nc, jr_058_759a

jr_058_759a:
    ld de, $5302
    nop
    inc bc
    nop
    inc bc
    nop
    inc hl
    nop
    ld a, $00
    ld [hl], b
    rlca
    ld l, [hl]
    ld bc, $002f
    push af
    ld [bc], a
    cp h
    ld b, d
    db $fc
    ld l, e
    cp $89
    cp [hl]
    pop bc
    ld e, $e1
    ld h, [hl]
    sbc c
    jr c, jr_058_7593

    ld a, a
    sbc c
    ld a, h
    sub e
    ld c, h
    rst $38
    jr c, @+$01

    ld h, b
    rst $38
    ld a, h
    rst $38
    ld e, b
    rst $38

jr_058_75ca:
    jr c, jr_058_75ca

    db $10
    cp $60
    db $fc
    ld [bc], a
    ld bc, $034c
    inc c
    inc bc
    inc h
    inc bc
    ld [$0807], sp
    rlca
    adc b
    rlca
    nop
    rrca
    sub b
    rrca
    db $10
    rrca
    nop
    rra
    jr nz, jr_058_7607

    nop
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    add b
    ld a, a
    nop
    ld a, a
    add h
    ld a, e
    ld [$18f7], sp
    rst $20
    ld [de], a
    db $ed
    ld [de], a
    db $ed
    inc b
    ei
    inc b
    ei
    add hl, bc
    or $28
    rst $10
    ccf
    ret nz

    ld a, a

jr_058_7607:
    add b
    rst $38
    nop
    adc h
    ld [hl], e
    adc b
    ld [hl], a
    adc e
    ld [hl], h
    xor a
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    db $fd
    ld [bc], a
    ld a, l
    ld [bc], a
    cp a
    nop

jr_058_761e:
    ld a, a
    and b
    rst $28
    jr nc, jr_058_769b

    rst $00
    cp a
    ret nz

    ld a, a
    add b
    rst $18
    jr nz, jr_058_761e

    nop
    ld a, [de]
    pop hl
    and $19
    ld d, $0c
    sbc d
    inc b
    sbc a
    nop
    ld a, a
    add b
    ld h, c
    add b
    ld d, [hl]
    add c
    rst $08
    nop
    ld [hl], a
    add b
    ld a, a
    add b
    cp e
    nop
    rla
    nop
    rlca
    nop
    add hl, de
    nop
    ld [$7010], sp
    nop
    or b
    nop
    ld e, b
    add b
    cp $00
    sbc d
    ld h, c
    jp nc, $f121

    nop
    ldh a, [rP1]
    ld a, b
    nop
    jr c, jr_058_7660

jr_058_7660:
    db $fc
    nop
    ld a, $00
    db $fc
    nop
    jr c, jr_058_766c

    inc l
    inc b
    ld a, h
    inc b

jr_058_766c:
    ld c, b
    inc b
    add b
    inc b
    add d
    inc b
    add [hl]
    nop
    ld b, h
    ld [bc], a
    ld l, d
    nop
    inc bc
    nop
    db $e3
    nop
    rst $08
    nop
    adc e
    nop
    ld bc, $0100
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $8f00
    nop
    ld sp, hl
    nop
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    nop

jr_058_769b:
    ld bc, $0162
    ld h, b
    ld bc, $03e4
    call z, $cc03
    inc bc
    adc b
    rlca
    ldh a, [rTAC]
    jr nc, jr_058_76b3

    nop
    rrca
    nop
    rrca
    nop
    rrca
    db $10

jr_058_76b3:
    rrca
    nop

jr_058_76b5:
    rra
    ld h, b
    rra
    ld h, b
    rra
    nop
    ccf
    ld b, b
    ccf
    ret nz

    ccf
    add b

jr_058_76c1:
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
    inc c
    di
    ld [$18f7], sp
    rst $20
    jr jr_058_76c1

    ld a, h
    add e
    ld a, l
    add d
    ld a, [hl]
    add c
    rst $38
    nop
    add b
    ld a, a
    adc b
    ld [hl], a
    cp e
    ld b, h
    rst $38
    nop
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    rst $38
    nop
    ld a, a
    add d
    ld a, l
    add d
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    cp a
    ld b, b
    rst $18
    jr nz, jr_058_76b5

    call z, Call_000_00ff
    ld de, $1f00
    nop
    xor $10
    ld b, h
    or b
    db $ec
    db $10
    ld l, h
    db $10
    ld a, [hl]
    nop
    rra
    nop
    rrca
    nop
    inc bc
    nop
    db $e3
    nop
    add hl, de
    add [hl]
    ld c, $80
    ld c, [hl]
    add c
    scf
    ret nz

    ld b, b
    or b
    xor b
    ld d, b
    add b
    ld a, b
    ld a, $40
    ld [hl], a
    nop
    jr nc, jr_058_7730

jr_058_7730:
    ld [$1410], sp
    ld [$0cf0], sp
    db $76
    adc b
    rst $28
    sub b
    cp a
    ld b, b
    ld [hl-], a
    ld b, b
    ld d, d
    jr nz, @+$50

    jr nc, jr_058_779e

    jr nz, @+$36

    ld [$001f], sp
    rrca
    nop
    ld b, a
    nop
    inc d
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_058_775a

jr_058_775a:
    ld hl, sp+$00
    ldh a, [rP1]
    ld hl, sp+$00
    reti


    nop
    db $fd
    nop
    sbc $00
    ld hl, sp+$00
    ldh [rP1], a
    ld hl, sp+$00
    add b
    nop
    add b
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
    jr jr_058_77a3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_058_77b3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_058_77c3

    ld a, [hl+]
    dec hl
    inc l
    dec l

jr_058_779e:
    ld l, $2f
    jr nc, jr_058_77d3

    ld [hl-], a

jr_058_77a3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_058_77e3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_058_77b3:
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

jr_058_77c3:
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

jr_058_77d3:
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

jr_058_77e3:
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
    add h
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
    add h
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
    add h
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    jp z, $cccb

    call $84ce
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
    add h
    add h
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
    jr jr_058_78aa

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_058_78ba

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_058_78ca

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_058_78da

    ld [hl-], a

jr_058_78aa:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$04

    ld [bc], a
    ld b, $00
    nop
    nop
    ld b, $02
    inc bc
    rlca

jr_058_78ba:
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $02
    ld b, $03
    dec b
    rlca

jr_058_78ca:
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld b, $06
    ld [bc], a
    ld b, $02
    ld b, $03
    inc bc
    rlca

jr_058_78da:
    ld bc, $0101
    ld bc, $0101
    ld b, $02
    ld b, $02
    nop
    ld b, $06
    inc bc
    inc bc
    dec b
    rlca
    ld bc, $0101
    ld bc, $0601
    ld [bc], a
    ld b, $02
    ld b, $00
    nop
    ld [bc], a
    inc bc
    dec b
    rlca
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld b, $06
    ld b, $02
    ld b, $06
    inc bc
    dec b
    rlca
    ld bc, $0101
    ld bc, $0601
    ld b, $00
    nop
    nop
    ld b, $00
    ld b, $02
    inc bc
    rlca
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $05
    rlca
    rlca
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld b, $02
    inc bc
    ld b, $07
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld b, $06
    ld b, $05
    nop
    rlca
    ld bc, $0101
    ld bc, $0201
    nop
    nop
    nop
    nop
    ld b, $06
    ld b, $06
    nop
    rlca
    ld bc, $0101
    ld bc, $0001
    ld [bc], a
    nop
    nop
    nop
    ld b, $06
    inc bc
    ld b, $03
    dec b
    rlca
    ld bc, $0101
    ld bc, $0606
    nop
    nop
    nop
    ld b, $06
    inc bc
    inc bc
    inc bc
    dec b
    rlca
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    ld b, $06
    inc bc
    inc bc
    inc bc
    dec b
    rlca
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld b, $03
    inc bc
    inc bc
    inc bc
    rlca
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $03
    ld bc, $0100
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $0e
    dec bc
    add hl, bc
    dec c
    rrca
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$080e], sp
    dec bc
    dec bc
    dec c
    rrca
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0e0e], sp
    ld [$0e08], sp
    ld [$0e0a], sp
    dec bc
    dec bc
    dec c
    rrca
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0e
    ld c, $0e
    ld a, [bc]
    ld c, $0e
    ld a, [bc]
    ld c, $0b
    dec bc
    dec c
    rrca
    add hl, bc
    add hl, bc
    add hl, bc
    jr nz, @+$01

    add b
    ld a, a
    ld [$24f7], sp
    ei
    ld a, [hl+]
    rst $30
    sub b
    ld a, a
    adc $3b
    ld b, b
    cp a
    inc e
    ei
    ld c, b
    cp a
    jr @-$0f

    and b
    ld e, a
    inc h
    rst $18
    ldh a, [rIF]
    add hl, de
    and $b8
    ld b, a
    rst $28
    nop
    swap h
    ld a, [hl-]
    dec b
    db $10
    dec b
    ld a, [bc]
    dec [hl]
    jr z, @+$19

    ld [bc], a
    dec e
    ld [$4b1f], sp
    or b
    ld c, c
    jr nc, @+$0b

    ldh [$dd], a
    ldh [$7d], a
    ret nz

    rst $20
    ret z

    sbc [hl]
    call nz, $c42a
    ld a, d
    call nz, $ee11
    cp d
    call nz, $f689
    rlca
    ld hl, sp+$03
    ld hl, sp-$80
    ld sp, hl
    inc h
    ret c

    adc b
    ld [hl], h
    ld b, d
    db $fc
    ld [hl], b
    call z, $e814
    ld e, c
    and [hl]
    rla
    add sp, $2d
    ld [hl], d
    sbc b
    ld [hl], a
    adc l
    ld [bc], a
    inc c

jr_058_7a53:
    nop
    adc [hl]
    nop
    ld d, e
    inc b
    ld sp, $2f02
    db $10
    call $8833
    ld [hl], e
    ld c, h
    or e
    rrca
    ldh a, [$62]
    sbc l
    jr nz, @-$1f

    db $10
    rst $28
    jr jr_058_7a53

    inc bc
    rst $38
    rst $38
    rst $38
    jr z, @+$22

    stop
    inc b
    nop
    inc bc
    nop
    inc c
    nop
    jp c, RST_00

    nop
    nop
    nop
    nop
    rst $38
    inc b
    ei
    add b
    ld a, a
    ld sp, $ebce
    db $fc
    jr nc, @+$81

    nop
    ld a, a
    nop
    ld a, $85
    cp $c9
    scf
    db $fc
    rlca
    ld a, l
    adc [hl]
    cp $07
    cp $07
    and $19
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ld a, a
    add b
    sbc [hl]
    nop
    ld [hl], l
    add b
    rst $38
    ld b, b
    ccf
    nop
    rra
    nop
    jr nc, jr_058_7ab6

jr_058_7ab6:
    ldh a, [rNR41]
    or c
    ld b, b
    ld a, a
    add b
    sub e
    inc c
    cpl
    db $10
    cp a
    ld b, b
    ld a, h
    add b
    db $fc
    nop
    xor [hl]
    ld b, b
    ld [hl], a
    add b
    ld hl, sp+$00
    ld [$27f0], sp
    jr @+$03

    ld b, $06
    nop
    inc b
    nop
    stop
    jr nz, jr_058_7ada

jr_058_7ada:
    and b
    ld b, b
    ld b, b
    add b
    rlca
    ldh [$bf], a
    ret nz

    add b
    nop
    add b
    nop
    ld bc, $0600
    ld bc, $0009
    add hl, de
    nop
    ld a, [hl]
    ld bc, $ff0f
    adc a
    rst $38
    adc b
    rst $38
    dec e
    rst $38
    ld [$3eff], sp
    jp hl


    ld h, $f9
    nop
    rst $38
    jr nc, @+$01

    inc b
    rst $38
    nop
    rst $38
    jr nz, @+$01

    inc h
    rst $38
    ld b, $ff
    ld [de], a
    rst $38
    add e
    ld a, a
    inc hl
    rst $38
    adc b
    ld [hl], a
    adc c

jr_058_7b15:
    ld [hl], a
    add b
    ld a, a
    sbc [hl]
    ld l, e
    db $10
    rst $28
    inc c
    cp $08

jr_058_7b1f:
    cp $08
    rst $38
    inc b
    ld a, a
    add b
    ld a, a
    and h
    ld a, a
    adc d
    ccf
    add b
    ccf
    ld c, b
    ccf
    sub b
    ld a, a
    ld [hl], b
    sbc a
    pop hl
    rra
    ld l, h
    sub e
    ret nz

    ccf
    jr z, jr_058_7b91

    jr z, jr_058_7b93

    and b
    ld e, a
    ld e, b
    daa
    add d
    ld a, a
    ld hl, sp+$07
    ld h, b
    sbc a
    nop
    rst $38
    db $10
    rst $28
    db $10
    rst $28
    jr c, jr_058_7b15

    jr nc, jr_058_7b1f

    inc h
    rst $18
    jp nc, Jump_058_500d

    xor a
    ld d, b
    xor a
    jp nz, $013d

    rst $38
    ld bc, $01ff
    rst $38
    ldh [rP1], a
    nop
    nop
    ld b, b
    nop
    ret nz

    nop
    ld hl, $1700
    dec b
    rst $38
    ld h, [hl]
    cp h
    nop
    ld hl, sp-$01
    ccf
    rst $38
    rra
    rst $38
    ld b, a
    rst $38
    nop
    rst $38
    dec b
    ld a, [$ff00]
    pop bc
    ld a, $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    sub $29
    ld d, [hl]
    xor c
    inc a
    rr [hl]
    pop af
    nop
    rst $30
    add e

jr_058_7b91:
    ld a, h
    db $e4

jr_058_7b93:
    sbc e
    sbc l
    ld h, e
    or a
    ld c, b
    rst $18

jr_058_7b99:
    ldh [$df], a
    ldh [$d1], a
    xor $6f
    sub b
    ld a, a
    ldh [$f7], a
    jr jr_058_7b99

    jr jr_058_7be3

    db $10
    rlca
    jr @-$40

    ld bc, $00cb
    ld a, a
    nop
    cp $01
    db $fd
    ld [bc], a
    ld a, [hl-]
    rlca
    di
    nop
    jp RST_00


    nop
    nop
    nop
    add b
    nop
    add b
    nop
    jr nc, jr_058_7bc4

jr_058_7bc4:
    nop
    nop
    add b
    nop
    ld bc, $0600
    nop
    ld c, c
    nop
    db $eb
    db $10
    and $18
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0207
    rst $00
    nop
    ld a, [hl-]
    dec b
    inc a

jr_058_7be3:
    inc bc
    ld hl, sp+$07
    ret z

    scf
    di
    inc c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    jp hl


    cp $e0
    rst $38
    ldh [rIE], a
    push hl
    ld a, [$f8c7]
    push bc
    ld a, [$ff40]
    ld b, b
    cp a
    adc e
    ld [hl], a
    ld b, b
    rst $38
    jr nz, @+$01

    ld bc, $54ff
    rst $38
    ret nc

    rst $38
    ldh [rIE], a
    ld l, l
    ret nc

    inc bc
    db $fc
    ld [bc], a
    db $fd
    inc bc

jr_058_7c15:
    db $fc
    rlca
    ld hl, sp+$22
    db $fd
    ld h, a
    ld hl, sp+$30
    ld a, a
    or [hl]
    ld a, a
    ld b, d
    cp a
    add sp, $1f
    jr jr_058_7c15

    ld b, h
    cp a
    ld a, [bc]
    rst $38
    jr c, @+$01

    dec de
    db $fc
    ld bc, $01fe
    cp $51
    cp $b4
    rst $38
    inc d
    rst $38
    sbc b
    rst $38
    ld de, $0afe
    cp l
    ret nz

    ccf
    ld bc, $1eff
    pop hl
    jr z, @+$01

    add b
    rst $38
    nop
    rst $38
    xor d
    rst $38
    ld c, b
    rst $38
    ld e, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld bc, $00fe
    rst $38
    inc a
    rst $08
    ld b, $cf
    inc d
    rst $28
    nop
    nop
    add b
    nop
    ld b, b
    nop
    ld bc, $0000
    nop
    rst $38
    ld l, b
    rst $38
    sub c
    rst $38
    rlca
    ld a, a
    inc b
    rst $38
    inc hl
    push af
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $1b00
    rst $38
    ld [hl], e
    rst $38
    ld b, c
    cp a
    nop
    rst $38
    rst $38
    nop
    cp [hl]
    ld b, c
    rrca
    ldh a, [rIF]
    db $10
    rst $38
    nop
    ccf
    ret nz

    rst $08
    cp h
    db $e4
    rra
    and d
    ld e, l
    rla
    ld hl, sp-$31
    jr c, @-$01

    inc bc
    ldh [$1f], a
    ld a, [$4f0f]
    nop
    ld e, $00
    xor $10
    rrca
    ldh a, [$cd]
    jr nc, @-$50

    ld b, b
    rst $38
    nop
    rst $38
    nop
    ld a, [hl]
    add c
    ld a, a
    add c
    rrca
    nop
    rra
    nop
    adc l
    nop
    ld a, [bc]
    ld bc, $041a
    sbc [hl]
    nop
    ld a, [bc]
    nop
    ld h, b
    nop
    pop hl
    nop
    add a
    nop
    inc d
    inc bc
    add l
    ld [bc], a
    ld [bc], a
    inc b
    inc c
    nop
    ld [$3000], sp
    nop
    or b
    ld b, b
    db $10
    add b
    add e
    nop
    add b
    nop
    add b
    nop
    adc e
    nop
    sub e
    nop
    ld a, a
    add b
    rst $38
    nop

jr_058_7cea:
    cp $00
    db $fc
    nop
    db $e3
    nop
    call nz, $c039
    ccf
    ld [bc], a
    rst $38
    add b
    ld a, a
    rst $20
    ccf
    inc e
    rst $38
    ld a, b

jr_058_7cfd:
    rst $38
    add hl, sp
    rst $38
    ret z

    rst $30
    ld b, b
    rst $38
    ld b, c
    rst $38
    db $10
    rst $28
    ldh [$1f], a
    ld h, e
    sbc a
    nop
    rst $38
    add e
    ld a, h
    call z, $fa3f

jr_058_7d13:
    inc b
    db $db
    inc b
    add c
    ld a, [hl]
    ld d, $f9
    jp Jump_058_5c3c


    cp a
    ld c, $ff
    inc b
    rst $38
    sbc b
    rst $38

jr_058_7d24:
    ld a, [bc]
    push af
    ld b, $f9
    jr nz, @+$01

    jr jr_058_7d13

    jr nc, jr_058_7cfd

    and b
    ld e, a
    ret c

    jr nz, jr_058_7d24

    nop
    reti


    nop
    rst $18
    jr nz, jr_058_7cea

    nop
    add h
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, $02df
    rst $38
    ld [$07ff], sp
    ld hl, sp+$03
    db $fc
    inc b
    ei
    inc d
    db $e3
    ld [$f8f7], sp
    rlca
    or b
    rrca
    db $ed
    inc de
    or $01
    cp $01
    ld [c], a
    rra
    ld a, b
    add a
    ld c, $f7
    add e
    nop
    ld de, $8900
    nop
    nop
    nop
    nop
    nop
    call nc, $ff80
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    add b
    nop
    nop
    inc b
    nop
    nop
    nop
    ld [bc], a
    nop
    scf
    rlca
    ei
    ld [bc], a
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld d, a
    xor a
    ret nz

    ccf
    adc c
    db $76
    ccf
    ret nz

    ccf
    ret nz

    ld b, a
    ld a, b
    nop
    ld c, $04
    rlca
    nop
    call nz, $0202
    nop
    inc b
    nop
    nop
    nop
    ldh a, [$9f]
    ldh [$df], a
    ldh [$ef], a
    jr nc, @+$17

    jr c, @+$01

    nop
    rst $38
    nop
    cp a
    nop
    dec d
    nop
    rst $38
    nop
    ld a, [$3a07]
    push bc
    adc $f1
    ld c, l
    ldh a, [$98]
    ldh [$c0], a
    add b
    add b
    nop
    ld e, d
    ld bc, $035f
    jr nc, jr_058_7dd5

    ld l, a

jr_058_7dc7:
    db $10
    cp a
    ld b, b
    ld h, c
    adc [hl]
    xor [hl]
    rra
    daa
    nop
    ld b, e
    nop
    rlca
    nop
    and e

jr_058_7dd5:
    nop
    rst $28
    nop
    ld a, h
    nop
    call c, $df00
    nop
    cp a
    nop
    rst $30
    ld [$009e], sp
    inc a
    nop
    inc bc
    inc b
    ld e, $00
    dec a
    nop
    ld b, b
    nop
    add e
    nop
    ld b, $ff
    ld [$ea07], a
    rlca
    ld a, [de]
    push hl
    add [hl]
    pop hl
    inc e
    db $e3
    nop
    rst $38
    jr nc, jr_058_7dc7

    reti


    daa
    add b
    ld a, a
    nop
    rst $38
    ld [de], a
    rst $28
    ld de, $80ee
    rst $38
    ret nz

    ccf
    dec de
    rst $38
    ld b, e
    cp a
    ld [$8217], a
    ld a, a
    dec l
    jp Jump_000_0385


    nop
    add a
    inc b
    ei
    rrca
    ldh a, [rP1]
    rst $38
    db $10
    rst $28
    ld l, c
    sub a
    ld hl, $01df
    rst $38
    add b
    ld a, a
    sub l
    rst $38
    inc c
    rst $38
    and e
    ld e, a
    add a
    ld a, a
    ld [hl], e
    rrca
    ld [hl], c
    rrca
    add c
    ccf
    ld a, [hl-]
    pop bc
    jr nc, @-$3d

    add h
    ei
    dec b
    ld [bc], a
    ld d, $01
    ld [bc], a
    nop
    db $fc
    ld [bc], a
    ld a, [hl-]
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    jr jr_058_7e52

jr_058_7e52:
    jr nc, jr_058_7e54

jr_058_7e54:
    nop
    nop
    cp b
    ld b, b
    ld [hl], $40
    adc d
    nop
    ldh [$1f], a
    ld b, c
    ld e, $80
    rst $38
    add e
    db $fc
    add c
    cp $ab
    ld d, h
    rst $38
    nop
    ldh a, [rIF]
    cp $ff
    db $fc
    rst $38
    add b
    nop
    stop
    add hl, bc
    nop
    rlca
    inc bc
    ld a, a
    ld a, a
    rst $38
    db $fc
    rst $38
    ld [hl], a
    rst $38
    ld a, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $feff
    ld bc, $2fd0
    and $19
    rst $30
    ld [$0007], sp
    nop
    jp RST_00


    nop
    nop
    nop
    nop
    db $10
    stop
    ld [$0dda], sp
    or $0b
    ld a, a
    nop
    cp $00
    ld a, a
    add b
    jr @-$17

    ldh [rIE], a
    cp $01
    sub $01
    rst $18
    nop
    reti


    nop
    scf
    ret z

    db $fc
    nop
    rst $30
    ld [$1cf3], sp
    sbc a
    ld h, b
    ccf
    ret nz

    cp a
    ret nz

    rst $00
    nop
    ld l, a
    nop
    rst $28
    nop
    ld sp, hl
    ld b, $cd
    ld [hl-], a
    rst $38
    nop
    ld [de], a
    ld h, c
    pop de
    inc hl
    ld e, b
    daa
    jr c, @+$49

    db $eb
    inc b
    ret


    ld b, $97
    ld [$091e], sp
    xor b
    rra
    ld c, a
    inc sp
    ld h, [hl]
    ld de, $0020
    ret nz

    nop
    ld hl, sp+$00
    ld sp, hl
    nop
    rst $38
    nop
    dec c
    ld a, [c]
    ld bc, $c1fe
    cp $01
    cp $04
    rst $38
    ld bc, $11fe
    xor $00
    rst $38
    adc l
    or $69
    sub [hl]
    add hl, sp
    add $5b
    and h
    ld l, a
    sub b
    ld a, a
    add b
    add hl, bc
    or $c3
    db $fc
    ld b, $f8
    inc bc
    db $fc
    ld b, d
    ld hl, sp+$0d
    ldh a, [rTAC]
    ld hl, sp+$71
    cp $05
    ld a, [$ff00]
    ld c, l

jr_058_7f21:
    ld a, [c]
    inc b
    ei
    ld a, [bc]
    push af
    pop hl
    cp $4e
    ldh a, [rNR51]
    jp c, $fb04

    rrca
    ldh a, [$83]
    ld hl, sp-$40
    rst $38
    ld b, a
    ld hl, sp+$0d
    ld a, [c]
    jr nz, @+$01

    rlca
    ld hl, sp-$79
    ld hl, sp+$50
    rst $38
    and d
    ld e, l
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld bc, $2aff
    push de
    ld c, $f1
    cp $01
    dec d
    add sp, $07
    ld hl, sp-$20
    rst $38
    add c
    cp $81
    cp $41
    cp $c7
    ld a, b
    dec [hl]
    cp $40
    cp a
    nop
    rst $38
    ld bc, $e3fe
    inc c
    db $ed
    nop
    dec h
    db $fc
    ret nz

    db $fc
    ld h, e
    jr nz, jr_058_7f21

    ld b, $ff
    cp h
    rst $38
    or $ff
    cp $ff
    ld a, [$60ff]
    cp a
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
    dec bc
    rst $38
    ld bc, $fffe
    nop
    ei
    inc b
    ld a, [$6905]
    sub [hl]
    nop
    ccf
    ld [bc], a
    rlca
    ld [bc], a
    ld [bc], a
    nop
    add b
    nop
    nop
    sbc $01
    ld a, a
    add b
    ld e, e
    and h
    cp a
    ld b, b
    dec a
    jp nz, $fc23

    cp a
    jr @+$79

    sbc b
    sbc a
    jr c, @+$53

    ld a, $3e
    ld e, b
    rst $28
    db $10
    rst $00
    jr c, @+$7d

    db $fc
    ret c

    inc a
    ldh a, [$0c]
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $f4
    ld [$20da], sp
    ld [hl+], a
    ret nz

    pop de
    add b
    rra
    ldh [$2b], a
    db $f4
    ld d, [hl]
    jr nz, @+$2b

    ld b, b
    ld b, e
    nop
    db $f4
    nop
    ret nz

    nop
    call nz, $c400
    nop
    ld b, b
    add b
    nop
    ret nz

    ld l, b
    nop
    ld l, h
    db $10
    db $e3
    inc c
    db $e3
    ld b, $1b
    db $fc
    sub l
    ld a, b
    inc hl
    db $fc
    ld l, b
    rst $38
    dec de
    ldh [$fc], a
    nop
    ld a, a
    add b
    ld [bc], a
    db $fc
