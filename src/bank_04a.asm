SECTION "ROM Bank $04a", ROMX[$4000], BANK[$4a]

    rst $38
    rst $38
    rra
    rra
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
    nop
    nop
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

    ld b, c
    ldh [$a7], a
    ldh a, [$5f]
    ld hl, sp-$51
    ld hl, sp+$5f
    ld hl, sp-$41
    db $fc
    ld a, a
    cp $ff
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
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, h
    rst $38
    rst $38
    rst $38
    ld a, [c]
    rst $38
    db $ec
    rst $38
    ld a, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    ld b, b
    ldh [$e8], a
    ld l, d
    ld l, d
    cp a
    rst $38

jr_04a_4058:
    ld sp, hl
    ei
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ld [hl], e
    rst $38
    ld a, e
    rst $38
    cp e
    rst $38
    or e
    rst $30
    jp $fbff


    rst $38
    dec bc
    ccf
    inc bc
    cp a
    nop
    ccf
    nop
    ld [hl-], a
    nop
    add c
    nop
    add a
    ld [bc], a
    rlc d
    ld [hl], a
    nop
    ld l, c
    inc b
    ld [hl], h
    nop
    dec hl
    nop
    ccf
    nop
    ld [hl], $00
    dec de
    nop
    inc b
    rlca
    nop
    rst $30
    nop
    ld e, l
    ld l, $cd
    jr nz, jr_04a_4102

    add h
    ld a, [de]
    adc h
    ld b, a
    sbc b
    adc $bb
    xor a
    di
    ld b, $f9
    inc c
    ei
    ld a, [de]
    push af
    ccf
    db $ec
    add h
    rst $38
    nop
    rst $38
    ld b, c
    db $fc
    ld b, a
    db $fc
    cpl
    db $fd
    xor e
    jr z, jr_04a_4058

    and c
    ld d, $00
    ld d, $10
    add a
    add b
    push bc
    pop bc
    rst $20
    rst $20
    nop
    ldh [$57], a
    ld hl, sp-$35
    db $fc
    ld l, a
    db $fc
    rlca
    cp $13
    ld a, $09
    ld a, $0b
    sbc [hl]
    inc bc
    sbc $0b
    ld e, h
    ld b, e
    ld e, h
    rst $38
    add sp, -$01
    xor h
    rst $38
    db $ec
    rst $38
    xor b
    rst $38
    ldh a, [$bf]
    add b
    ccf
    nop
    rra
    jr nz, @+$21

    jr nz, @+$21

    jr nz, jr_04a_4108

    inc hl
    rra
    ld h, e
    rra
    ld h, a
    rrca
    scf
    rrca
    inc de
    rrca
    inc de

jr_04a_40f4:
    rrca
    cp e
    rrca
    rst $38
    sbc a
    rst $30
    rst $38
    db $eb
    rst $38
    push af
    rst $38
    xor d
    rst $20
    ld b, l

jr_04a_4102:
    jp $c383


    jp $e7e7


jr_04a_4108:
    rst $28
    rst $28
    rst $38
    rst $38
    ccf
    ccf
    rra
    ld e, $0f
    rrca
    rlca
    rlca
    ld bc, $0001
    nop
    nop
    ld bc, $0300
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
    ldh a, [rIE]
    ret z

    rst $38
    ldh a, [rIE]
    jr nz, @+$01

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
    ld b, b
    jr nz, jr_04a_40f4

    db $10
    sub b
    rlca
    add a
    add a
    add a
    ld b, c
    ld [hl], e
    rst $20
    rst $38
    xor a
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    ldh a, [$f0]
    add b
    ret nz

    sbc $fe
    sub d
    or a
    nop
    inc a
    ld bc, $057d
    ld [hl], l
    rrca
    rst $38
    rra
    rst $38
    ld e, $ff
    ld c, $7e
    jr jr_04a_41f7

    ld [$00ad], sp
    db $dd
    inc bc
    ld a, a
    ld bc, $00ff
    rst $38
    nop
    add b
    inc bc

jr_04a_418b:
    inc bc
    add sp, $00
    db $db
    nop
    jr nc, jr_04a_41b6

    add $04
    ret


    ld b, $01
    ld c, $7b
    adc [hl]
    ld h, e
    rst $38
    ld a, a
    db $db
    ld d, e
    cp a
    ret nz

    ccf
    ld [hl-], a
    rst $38
    add h
    rst $38
    nop
    rst $38
    add b
    rst $38
    jr nz, jr_04a_418b

    db $10
    rst $38
    inc b
    ei
    ld h, l
    cp $44
    rst $38
    ld c, $ff

jr_04a_41b6:
    inc e
    rst $38
    adc b
    rst $38
    ld h, b
    rst $38
    add b
    rst $38
    add l
    cp $a4
    rst $38
    db $f4
    ld a, a
    sbc $27
    or b
    ld a, a
    add sp, $1f
    push af
    rrca
    ei
    ld c, [hl]
    rst $30
    ld a, a
    ld sp, hl
    ccf
    db $ed
    ld a, [hl]
    add c
    cp $6b
    db $fc
    rst $38
    push af
    sbc $fb
    cp h
    ld c, a
    ld a, h
    inc bc
    ld a, h
    ld b, e
    ld a, e
    rrca
    ld a, [$fe1f]
    rst $38
    db $fc
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

jr_04a_41f7:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    ret nz

    ldh [$a0], a
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    rst $38
    push af
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor [hl]
    rst $38
    rst $10
    rst $38
    rst $28
    ld a, a
    rst $30
    rra
    rst $38
    rrca
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$0cff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld hl, sp+$0b
    db $fc
    ld hl, $e1fe
    cp $e1
    cp $e1
    cp $c3
    db $fc
    rst $10
    db $fc
    and a
    ld hl, sp-$4d
    db $fc
    rst $20
    ld hl, sp-$3d
    db $fc
    inc de
    db $fc
    ld a, [de]
    db $fd
    jr c, @+$01

    sbc $ff
    add [hl]
    and $88
    sbc e
    inc e
    ld a, a
    inc de
    sub a
    rrca
    ld l, a
    rra
    rst $38
    cpl
    rst $28
    ld h, a
    ld a, a
    ld bc, $20d7
    db $fd
    add b
    and d
    adc b
    cp c
    ld b, b
    ld b, b
    ld [hl], a
    ld b, c
    rst $38
    add hl, bc
    call c, $f218
    ld bc, $63b6
    ld sp, hl
    inc b
    or c
    ld e, h
    ld a, [hl+]
    db $dd
    inc e
    rst $20
    ld [hl], h
    jp $c324


    ld l, c
    rst $00
    call c, Call_000_3e27
    db $e3
    xor b
    rst $38
    nop
    rst $38
    inc e
    db $e3
    ld [$0af7], sp
    rst $30
    cp e
    ld h, a
    rrca
    di
    db $dd
    di
    ld de, $69e7
    rst $00
    ld h, d
    rst $28
    ei
    ld c, e
    rst $20
    sbc e
    or h
    rst $08
    ld h, b
    rst $00
    ld h, l
    jp $cf3f


    ld l, $c3
    jr nc, @-$3b

    inc sp
    jp $c323


    ld hl, $e3c3
    ret nz

    db $ed
    add d
    ld a, h
    jp $887f


    dec sp
    push bc
    ld a, l
    add d
    inc a
    jp $d33c


    ld a, a
    db $eb
    ccf
    rst $30
    ld a, a
    di
    rst $28
    rst $38
    rst $28
    rst $38
    rst $18
    cp $ff
    rst $38
    rst $38
    cp $ff
    cp $ff
    xor $ff
    cp $ff
    rst $38
    rst $38
    sbc $ff
    cp $3f
    ccf
    nop
    rra
    nop
    rra
    nop
    rrca
    nop
    rlca
    nop
    rlca
    ret nz

    rst $00
    ldh [$7f], a
    ldh a, [$bf]
    ld hl, sp+$5f
    db $fc
    xor a
    cp $57
    rst $38
    db $eb
    rst $38
    push af
    rst $38
    ld a, [$fdff]
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rrca
    db $fd
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
    ld bc, $03ff
    rst $38
    ld b, $ff
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
    nop
    rst $38
    nop
    db $fc
    inc bc
    di
    rrca
    ld [$4eff], sp
    rst $38
    ret z

    rst $38
    pop af
    rst $38
    inc bc
    or a
    dec e
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    sub c
    push af
    ei
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $00
    rst $38
    inc bc
    ld a, a
    ld bc, $80f7
    sub b
    ld bc, $ff00
    nop
    rst $38
    ld [bc], a
    ld a, c
    nop
    ld b, a
    adc [hl]
    call nc, $908c
    nop
    adc a
    nop
    ld a, c
    cp a
    sub b
    rst $38
    ld [$83ff], sp
    rst $38
    ld a, [hl]
    rst $38
    ld b, e
    rst $38
    ld b, c
    rst $38
    ld h, c
    rst $38
    ld h, e
    rst $38
    ld h, $ff
    ld c, $ff
    ld l, [hl]
    rst $38
    adc a
    rst $38
    sbc $ff
    dec a
    rst $38
    adc c
    rst $38
    ld b, b
    rst $38
    ret c

    rst $38
    ld hl, sp-$01
    jr nz, @+$01

    inc sp
    rst $38
    dec c
    rst $38
    inc h
    rst $38
    ld b, $f9
    ld a, [hl+]
    db $fd
    ld [de], a
    rst $38
    and l
    rst $38
    call nz, $b9fb
    rst $38
    ld a, b
    rst $38
    ld e, b
    rst $38
    sub b
    ld a, a
    jr z, @+$01

    jr @+$01

    ld h, l
    cp a
    ld b, b
    rst $38
    inc b
    rst $38
    inc c
    rst $38
    db $fd
    db $eb
    rst $38
    push hl
    rst $38
    add h
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld d, b
    rst $38
    cp e
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld a, e
    rst $38
    ld e, e
    rst $38
    cp a
    rst $38
    xor l
    rst $38
    push af
    rra
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
    ret nz

    rst $38
    ldh [$bf], a
    ldh a, [$5f]
    ld hl, sp-$51
    ld sp, hl
    ld e, a
    rst $38
    xor a
    rst $38
    ld e, a
    rst $38
    cp a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push af
    rst $38
    db $fd
    rst $38
    cp $ff
    ld a, [$faff]
    rst $38
    db $fc
    rst $38
    cp $ff
    ld hl, sp-$01
    rst $38
    nop
    rst $38
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
    db $e3
    rra
    adc b
    ld a, a
    dec c
    rst $38
    rlca
    rst $38
    add a
    rst $38
    cpl
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
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
    db $fc
    db $fd
    db $fc
    rst $38
    ld sp, hl
    rst $38
    push af
    rst $38
    ld b, c
    rst $38
    ret nc

    jr nz, jr_04a_44eb

    db $10
    ld h, b
    nop
    ld bc, $cf00
    ld [hl-], a
    ret nz

    ld [hl], b
    pop hl
    nop
    call c, Call_000_1e83

jr_04a_4489:
    rst $30
    ld e, $e1
    cp [hl]
    pop hl
    jp nc, $27e1

    ei
    and d
    rst $18
    sbc b
    rst $30
    xor c
    rst $30
    ld [$12f7], sp
    rst $20
    cp d
    ld h, a
    ld d, h
    db $e3
    jr nc, jr_04a_4489

    rra
    di
    rlca
    db $e3
    ld [hl+], a
    jp $c326


    db $e4
    rst $00
    or $c7
    xor a
    jp $cf38


    dec e
    di
    ld a, $e7
    inc a
    rst $00
    ld a, [hl]
    push de
    ld a, a

jr_04a_44bb:
    ldh [$7f], a
    ret nc

    ld a, a
    sub $ff
    set 7, h
    rst $10
    cp $cf
    ld a, [hl]
    rst $38
    inc a
    rst $28
    jr c, jr_04a_44bb

    ccf
    rst $28
    ld [hl], $ff
    ld sp, $78ef
    rst $20
    rst $38
    add e
    rst $38
    rst $10
    rst $38
    ld d, a
    rst $38
    xor d
    rst $38
    ld d, [hl]
    rst $38
    nop
    rst $38
    ret nc

    rst $38
    rst $08
    rst $38
    db $d3
    rst $38
    or l
    rst $38
    db $db
    rst $38

jr_04a_44eb:
    db $fd
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    ld e, a
    rst $38
    rst $38
    rlca
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rlca

Call_04a_44ff:
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
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
    db $fc
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    cp $ff
    call nz, $f8ff
    rst $38
    sub b
    rst $38
    ldh [rIE], a
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    cp $01
    db $fc
    inc bc
    ld sp, hl
    rlca
    ld a, [c]
    rrca
    ldh [$1f], a
    sbc c
    ld a, a
    ld a, e
    rst $38
    ld a, e
    rst $38
    cp l
    rst $38
    ld hl, sp-$01
    db $fd
    rst $38
    push af
    rst $38
    ld [c], a
    rst $38
    sub [hl]
    rst $38
    ld c, l
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $eb
    db $eb
    rst $00
    rst $00
    ld c, $8e
    inc b
    ld d, h
    ld h, $a6
    add b
    rst $38
    rst $10
    rst $38
    ld [hl], c
    rst $38
    ld bc, $06fe
    inc c
    ld e, b
    ld a, b
    jp hl


    nop
    adc c
    nop
    sub d
    ld [$1e20], sp
    ld a, l
    ld [$dff5], sp
    xor a
    rst $38
    add b
    rst $38
    ld [de], a
    rst $38
    jr @+$01

    add c
    rst $38
    ret


    rst $38
    dec e
    rst $38
    sub b
    rst $38
    add b
    rst $38
    ld [$85f7], sp
    rst $38
    rla
    rst $38
    add hl, sp
    rst $38
    ld c, h
    rst $38
    ld b, a
    rst $38
    dec hl
    rst $38
    dec sp
    rst $38
    rst $38
    rst $38
    ld a, e
    rst $38
    or a
    ei
    ld h, a
    rst $38
    ld a, a
    rst $38
    ld [hl], c
    rst $38
    rrca
    cp $bf
    ret nz

    ei
    ld l, $e7
    ccf
    rst $38
    ld a, [hl-]
    rst $38
    ld e, a
    db $fc
    rst $38
    ld [hl], c
    rst $38
    db $e3
    rst $38
    dec hl
    rst $38
    rst $20
    rst $38
    ld sp, hl
    rst $38
    db $ed
    rst $38
    cp $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
    ei
    rst $38
    rst $38
    rst $10
    rst $38
    push de
    rst $38
    ld c, [hl]
    rst $38
    nop
    rst $38
    and b
    rst $38
    ret c

    rst $38
    sbc $ff
    cp l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    cp l
    rst $38
    jp c, $faff

    rst $38
    rst $38
    ld a, a
    rst $38
    rst $18
    rst $38
    db $fd
    rst $38
    db $dd
    rst $38
    adc l
    rst $38
    adc l
    rst $38
    dec bc
    rst $38
    rra
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $81ff
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
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    nop
    add hl, hl
    add hl, hl
    ld a, e
    ld a, e
    rst $30
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    cp $fe
    cp $ff
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ld sp, hl
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
    db $db
    rst $38
    ld b, e
    rst $38
    ld a, a
    rst $38
    ld b, c
    rst $38
    ld b, e
    rst $38
    sub e
    rst $38
    ld [bc], a
    rst $38
    add b
    nop
    rlca
    nop
    jp z, $d804

    nop
    ld sp, $290f
    inc e
    jr z, jr_04a_4680

    ld [hl], e
    jr @+$01

    rst $38
    cp [hl]
    db $fd
    sub [hl]
    db $fd
    pop bc
    cp $0b
    cp $41
    cp $63
    cp $b9
    rst $38
    ld [hl], c
    cp $03
    cp $07
    db $fc
    ld l, a
    cp $e3
    db $fc

jr_04a_4680:
    ld c, a
    db $fc
    ccf
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $30
    db $fc
    rst $38
    ld hl, sp-$01
    db $fc
    ld a, a
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    inc d
    rst $38
    db $10
    sbc a
    ld a, b
    sbc a
    ld [hl], h
    rst $38
    ld e, b
    rst $38
    ld [hl], a
    rst $18
    ld a, l
    sbc $f7
    ld a, h
    rst $30
    ld a, a
    ld a, [$f59f]
    rra
    push af
    ccf
    di
    ld l, $fb
    cpl
    rst $38
    rst $38
    ei
    cp $fb
    cp $f3
    rst $38
    pop de
    db $fd
    ld h, b
    ld hl, sp-$20
    ldh a, [$e0]
    db $fd
    ld h, b
    ld sp, hl
    nop
    rst $38
    pop bc
    rst $38
    push af
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    db $eb
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $30
    rst $38
    rst $38
    ld a, a
    rst $38
    ld l, a
    rst $38
    add a
    rst $38
    rst $08
    rst $38
    rst $00
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
    ld e, a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, $ff
    ld a, $ff
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
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
    rst $38
    rst $38
    ld [hl], a
    ld a, a
    ld a, l
    ld a, l
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
    cp $fe
    cp $ff
    db $fc
    db $fc
    ld sp, hl
    db $fd
    db $e3
    rst $38
    pop hl
    db $eb
    ld [hl], e
    ld a, e
    jp nz, $d8d3

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
    ld a, a
    rst $38
    ld a, h
    rst $38
    ld h, d
    db $fc
    db $fc
    nop
    ld b, [hl]
    nop
    ld b, c
    nop
    or c
    pop bc
    rla
    ld a, [$24db]
    db $fd
    nop
    rst $38
    db $10
    dec hl
    rst $38
    ld bc, $d9fe
    daa
    call nc, $f4ab
    dec bc
    ei
    ld b, a
    pop hl
    sbc a
    cp l
    ld b, e
    jr c, @-$37

    and b
    rst $38
    jp nz, $adff

    rst $38
    add hl, bc
    rst $38
    ld [$0fff], sp
    rst $38
    adc a
    ld a, a
    adc h
    rst $38
    ld b, $ff
    rrca
    rst $38
    rst $18
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld [c], a
    rst $38
    adc b
    ld a, a
    add e
    rst $38
    ld b, e
    rst $38
    inc bc
    rst $38
    ld a, [hl+]
    rst $38
    jp $a2ff


    rst $38
    dec bc
    rst $38
    ld bc, $06ff
    rst $38
    cpl
    or $05
    rst $38
    call nz, Call_04a_4fff
    rst $38
    ld e, $ff
    ld a, a
    rst $38
    ld a, $ff
    ld a, a
    rst $38
    ld a, a
    rst $18
    rst $38
    pop af
    rst $38
    ld hl, sp-$01
    db $fd
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $28
    ret nz

    rst $28
    ret nz

    db $e3
    ret nz

    rst $30
    ret nz

    cp $c0
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

    ei
    ret nz

    db $eb
    ret nz

    rst $20
    add b
    db $e3
    add b
    rst $30
    ret nz

    rst $38
    ret nc

    rst $38
    ret z

    rst $38
    call z, $eeff
    rst $38
    adc $ff
    call $c8ff
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    sbc b
    rst $38
    adc d
    rst $38
    adc l
    cp e
    cp e
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    rst $38
    rst $38
    db $fc
    db $fc
    ldh [$fa], a
    ret nz

    add $00
    ld c, b
    ld bc, $df0f
    rst $18
    rrca
    adc a
    rlca
    sub a
    rra
    ld e, a
    ld a, a
    rst $38

jr_04a_4840:
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    db $fd
    db $fd
    db $fc
    db $fc
    db $fd
    db $fd
    ld sp, hl
    ld sp, hl
    rst $38
    rst $38
    ld a, [hl-]
    rst $38
    ld [bc], a
    ld bc, $0113
    dec h
    rlca
    ld a, [hl-]
    rst $00
    db $dd
    ld b, [hl]
    ld a, [$ff0f]
    jr nz, jr_04a_4840

    ld h, e
    db $db
    rst $38
    inc c
    rst $38
    call nc, Call_000_34fb
    rst $38
    sub e
    ld l, h
    or e
    db $ed
    add hl, de
    xor $15
    cp $aa
    ld a, a
    ld [bc], a
    rst $38
    ld a, a
    rst $38
    ld a, e
    rst $38
    ld a, l
    rst $38
    ld a, l
    rst $38
    ld [hl], e
    rst $38
    ei
    rst $38
    dec a
    rst $38
    ld a, a
    rst $38
    ld l, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    ld a, a
    cp $ef
    cp $ff
    cp $fd
    cp $fd
    cp $ff
    cp $ff
    cp $72
    rst $38
    db $e3
    db $fd
    ld a, [hl-]
    db $fc
    rst $20
    db $fc
    dec hl
    db $fc
    add a
    db $fc
    and a
    db $fc
    rst $00
    db $fc
    rst $38
    db $fc
    ld a, a
    db $fc
    ld a, a
    db $fc
    rst $28
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, [$f8ff]
    db $fc
    jr c, @-$02

    jr nc, @+$01

    sub b
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    ld a, l
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    dec b
    rst $38
    ld [$00ff], sp
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
    db $fd
    nop
    rst $38
    nop
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
    rst $30
    nop
    di
    nop
    ld hl, sp+$00
    db $fc
    add b
    cp $f0
    rst $38
    ld a, h
    rst $38
    ld a, $ff
    rra
    rst $38
    rra
    rst $38
    cpl
    rst $38
    rra
    rst $38
    rlca
    ld a, [c]
    ldh a, [$f0]
    db $f4
    db $f4
    ldh a, [$fa]
    ld a, [$f6f6]
    jp Jump_000_0ec0


    ld [$292d], sp
    ld a, [de]
    cp $72
    ld hl, sp-$08
    ei
    rst $20
    ld a, [$f4ae]
    ei
    ldh a, [$5f]
    pop af
    add hl, de
    rst $30
    dec a
    rst $38
    sub e
    rst $38
    sub a
    rst $28
    ld sp, hl
    rst $38
    call z, Call_04a_44ff
    rst $38
    ld l, c
    rst $38
    adc c
    rst $38
    ld l, e
    rst $38
    jp hl


    rst $38
    cp c
    rst $38
    cp e
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    cp c
    rst $30
    ld a, h
    rst $08
    sub h
    ld a, a
    jp nz, $0eff

    rst $38
    cp a
    db $fd
    sub $f9
    db $d3
    db $fc
    jp nc, $d3fd

    rst $38
    or a
    xor $f6
    xor $f6
    db $fc
    and [hl]
    ret c

    sbc e
    pop af
    pop af
    di
    rst $10
    and h
    pop de
    ld h, h
    ld [hl], h
    pop bc
    ld a, [c]
    push bc
    db $fc
    add e
    ld a, [c]
    inc bc
    di
    add c
    push af
    jr nz, @-$6a

    ld h, c
    cp a
    ld h, b
    cp a
    ld b, c
    or e
    ld h, c
    rst $20
    ld b, c
    xor [hl]
    pop bc
    ld a, a
    add d
    ld a, [hl]
    jp $83ff


    or $87
    rst $10
    add a
    rst $00
    rlca
    rst $08
    add a
    rst $18
    inc b
    rst $18
    inc b
    call c, Call_000_0d86
    add [hl]
    rst $08
    add h
    rst $08
    inc c
    ld a, a
    adc b
    ld e, a
    add d
    rrca
    ld a, [bc]
    rrca
    inc b
    adc a
    inc b
    adc [hl]
    nop
    adc a
    inc b
    cp $05
    cp $85
    cp $57
    rst $38
    rlca
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    inc b
    db $fc
    nop
    db $fc
    nop
    ld hl, sp-$80
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    pop af
    nop
    pop af
    nop
    ldh [rP1], a
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    ld [$0cff], sp
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
    cp $00
    cp $00
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    ld bc, $007f
    rst $38
    ld bc, $03ff
    rst $38
    add c
    rst $30
    pop bc
    di
    pop bc
    ld sp, hl
    ldh a, [rNR22]
    ld h, a
    rlca
    jp $8747


    sbc a
    rlca
    ld e, a
    cpl
    scf
    ld e, a
    scf
    rst $18
    daa
    sbc a
    ld sp, hl
    ccf
    rst $38
    ld a, c
    push bc
    rst $38
    sub e
    rst $38
    adc e
    rst $30
    dec hl
    rst $30
    and a
    rst $38
    or a
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    jp $a7ff


    rst $38
    rla
    rst $38
    ld d, a
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ei
    db $fc
    ld a, [$defd]
    ld sp, hl
    call c, $f9fb
    rst $38
    sub [hl]
    rst $38
    ld [$9aff], sp
    db $fd
    sub b
    rst $38
    sub c
    rst $38
    jp hl


    rst $38
    add sp, -$01
    ld l, b
    rst $38
    ld [hl-], a
    rst $38
    ld h, a
    db $fd
    ld l, a
    pop af
    ld l, [hl]
    db $fd
    ld h, e
    cp a
    ld [c], a
    sbc l
    and [hl]
    dec e
    and a
    add hl, de
    ld b, $39
    ld h, h
    add hl, sp
    ld h, a
    sbc c
    cp b
    sub c
    or c
    add c
    and c
    ld bc, $01e0
    ldh [$81], a
    ld h, b
    add c
    ld h, c
    add b
    ldh [$81], a
    ldh [$c1], a
    ret nz

    pop bc
    ret nz

    pop bc
    pop bc
    add $81
    ld b, [hl]
    ret z

    rlca
    adc b
    ld b, a
    ld [$00c7], sp
    rst $08
    ld h, c
    add [hl]
    dec b
    add d
    daa
    add d
    inc sp
    jp $c132


    ldh [rHDMA1], a
    ld bc, $5951
    ld bc, $0911
    adc b
    ld bc, $0186
    add e
    ld b, l
    dec b
    ld b, e
    daa
    inc hl
    and a
    inc hl
    rlca
    add e
    rlca
    add e
    rst $00
    add a
    db $eb
    rla
    xor e
    ld e, a
    sub e
    ld e, a
    or a
    ld e, a
    ld h, e
    rra
    rst $28
    ccf
    rst $08
    ccf
    rst $08
    ccf
    ld e, a
    ccf
    ld e, a
    cpl
    ld e, [hl]
    daa
    ld e, $27
    ld a, $07
    ld l, $1f
    inc b
    rra
    dec d
    ld c, $85
    ld c, $8c
    rrca
    sbc h
    rlca
    sbc b
    rrca
    ld a, [$fa0f]
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    db $fd
    rlca
    ld a, [$fe07]
    rlca
    or $2f
    sbc $7b
    jp z, $eebd

    ld [hl], l
    xor [hl]
    ld d, c
    xor $11
    ld [c], a
    dec e
    rst $00
    ld e, h
    ld [hl], c
    inc e
    call nc, $840c
    call z, $cce0
    ldh a, [$fc]
    call nc, $d4f8
    db $fc
    cp $f8
    adc $fa
    rst $08
    ld a, [$f0f0]
    ldh a, [$f1]
    ld a, [c]
    di
    db $e3
    db $e3
    ld a, [c]
    ld a, [c]
    db $fc
    db $fc
    db $e4
    db $e4
    db $fc
    db $fc
    ld hl, sp-$01
    db $e4
    ei
    db $e3
    rst $38
    jp hl


    rst $30
    db $eb
    rst $30
    rst $20
    rst $38
    add $ff
    add $ff
    add a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, [$78fd]
    rst $38
    ld a, b
    rst $38
    cp d
    rst $08
    cp [hl]
    rst $18
    ld a, a
    rst $18
    ld a, a
    rst $38
    ld l, b
    rst $38
    and b
    rst $38
    add b
    rst $38
    add b
    rst $38
    jr nz, @+$01

    ld [hl], b
    rst $38
    or b
    rst $38
    db $fc
    rst $38
    sbc l
    rst $38
    adc h
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    ld b, c
    cp a
    push de
    ld l, a
    ld [c], a
    dec e
    ld h, b
    sbc a
    and b
    rst $38
    add hl, hl
    rst $18
    add [hl]
    ld sp, hl
    sub a
    ld [$ffc7], a
    rlca
    rst $38
    ld b, a
    cp $66
    cp a
    ld b, l
    cp d
    inc bc
    cp $16
    db $fc
    ld c, $fc
    ld l, a
    db $fc
    rra
    db $fd
    sbc a
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    ccf
    rst $38
    dec sp
    db $fc
    or [hl]
    db $fc
    ld d, $fc
    sbc d
    cp $af
    ei
    cp a
    db $eb
    cp e
    jp hl


    or l
    ret z

    ret nz

    db $fc
    adc d
    db $f4
    call c, $cee2
    pop af
    adc a
    ldh a, [$af]
    ldh a, [$bf]
    pop bc
    cp l
    jp nz, $d3ac

    ld l, l
    jp nc, $dc22

    db $f4
    ret c

    ld a, b
    ret nc

    ld [hl], b
    ret nz

    ld h, c
    ret nz

    ld h, d
    add b
    push bc
    add b
    ld c, c
    add b
    ld a, [c]
    add b
    ld h, h
    add b
    ld c, b
    ret nz

    ldh a, [$80]
    ldh a, [$c0]
    ld h, b
    ret nz

    add b
    ld b, b
    ret nz

    nop
    ldh [rLCDC], a
    ldh [rLCDC], a
    ldh [$60], a
    ldh [$60], a
    ret nc

    nop
    sub b
    ld d, b
    ld [hl], b
    add b
    ldh a, [$80]
    ld [hl], b
    add b
    ld [hl], c
    add b
    ld [hl], e
    add b
    ccf
    ret nz

    ccf
    ret nz

    ccf
    pop bc
    cpl
    ret nz

    rrca
    ret nz

    inc hl
    ret nz

    and c
    add b
    ld bc, $8180
    nop
    ld b, c
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0b12
    dec bc
    nop
    ld bc, $1413
    dec d
    ld [bc], a
    ld [bc], a
    ld d, $17
    jr jr_04a_4c64

    ld a, [de]
    dec de
    dec bc
    dec bc
    dec bc
    nop
    ld bc, $1d1c
    ld e, $1f
    jr nz, jr_04a_4c79

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_04a_4c6b

    add hl, hl
    ld a, [hl+]
    dec hl
    inc l

jr_04a_4c64:
    dec l
    ld l, $2f
    jr nc, jr_04a_4c9a

    ld [hl-], a
    inc sp

jr_04a_4c6b:
    inc [hl]
    dec bc
    dec [hl]
    dec bc
    ld [hl], $37
    jr c, jr_04a_4cac

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f

jr_04a_4c79:
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    dec bc
    dec bc
    ld b, l
    ld b, [hl]
    ld [bc], a
    ld [bc], a
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    dec bc
    ld c, [hl]
    dec bc
    dec bc
    dec bc
    ld c, a
    ld d, b
    ld d, c
    dec bc
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a

jr_04a_4c9a:
    ld e, b
    ld e, c
    ld e, d
    dec bc
    dec bc
    dec bc
    ld e, e
    ld e, h
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c

jr_04a_4cac:
    ld h, d
    ld h, e
    ld h, h
    dec bc
    ld h, l
    ld h, [hl]
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld h, l
    ld l, a
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    scf
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
    scf
    scf
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
    scf
    scf
    dec bc
    dec bc
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
    dec bc
    dec bc
    dec bc
    dec bc
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
    dec bc
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
    dec bc
    dec bc
    dec bc
    jp nz, $c4c3

    push bc
    ld [bc], a
    ld [bc], a
    add $c7
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ret z

    ret


    jp z, Jump_000_02cb

    ld [bc], a
    ld [bc], a
    ld [bc], a
    call z, Call_000_0bcd
    dec bc
    dec bc
    adc $cf
    ret nc

    pop de
    jp nc, $0202

    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    db $d3
    call nc, $d5d5
    sub $d7
    ld [bc], a
    ret c

    reti


    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    jp c, $01db

    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0102
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0002
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0001
    ld bc, $0003
    nop
    ld bc, $0000
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
    ld bc, $0001
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
    nop
    nop
    nop
    nop
    ld bc, $0000
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0003
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    sbc a
    nop
    rrca
    nop
    rrca
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    rst $38
    rst $30
    rst $38
    sbc b
    rst $38
    or b
    rst $38
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    rra
    inc b
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld l, $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc de
    rst $38
    add a
    ldh a, [rIF]
    ld hl, sp+$07
    cp $41
    cp $43
    db $fc
    rlca
    ld hl, sp-$79
    ld hl, sp-$39
    db $fc
    jp $83fc


    rst $38
    add b
    rst $38
    and b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $06ff
    rst $38
    jr c, @+$01

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
    cp h
    nop
    adc h
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    rst $38
    ccf
    ldh a, [rIE]
    jp z, $80ff

    rst $38
    nop
    rst $38
    rst $28
    rst $38
    inc bc
    rrca
    nop
    rlca
    rrca
    nop
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    nop
    ld [c], a
    ld bc, $07cd
    daa
    rst $10
    ld d, [hl]
    rst $30
    dec b
    rst $38
    and d
    rst $38
    or $fb
    rst $08
    ld sp, hl
    ld a, a
    ldh [rIE], a
    ld l, c
    ccf
    db $fc
    rrca
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    rrca
    ldh a, [$1f]
    ldh [rIE], a
    ld bc, $00ff
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
    jr nc, @+$01

    ret nz

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
    ld hl, sp+$00
    ldh a, [rP1]
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
    cp $01
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
    ldh a, [rSB]
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

Call_04a_4fff:
    nop
    rst $38
    nop
    rst $38
    rlca
    ld a, [$fb3f]
    rst $38
    ld [hl], e

jr_04a_5009:
    rst $38
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
    cp l
    ld [c], a
    ld a, a
    add b
    ld l, e
    add b
    rra
    adc b
    dec hl
    inc b
    and $1d
    ld b, [hl]
    rst $38
    ld b, a
    cp $40
    rst $38
    and b
    rst $38
    add b
    rst $38
    nop
    rst $38
    adc a
    cp $de
    rst $38
    ld b, $ff
    ld l, e
    rst $38
    db $e3
    rst $38
    cp e
    rst $38
    rst $38
    db $fd
    rst $10
    add sp, -$0b
    ld a, [bc]
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    dec bc
    rst $38
    inc e
    rst $38
    ld [hl], h
    rst $38
    add b
    ei
    nop
    rst $30
    nop
    ei
    nop
    add b
    nop
    add b
    nop
    nop

jr_04a_505b:
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
    ccf
    nop
    dec sp
    nop
    ld e, a
    nop
    sbc a

jr_04a_506d:
    ld b, b
    cp a
    ld b, b
    ccf
    nop
    rrca
    nop
    ld l, a
    nop
    ccf
    ret nz

    db $dd
    jr nz, jr_04a_505b

    jr jr_04a_506d

    nop
    db $fc
    ld bc, $00f7
    ld h, a
    nop
    jr nz, jr_04a_5009

    add e
    ld [hl], b
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    db $f4
    nop
    add h
    ld bc, $0180
    db $fc
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
    rlca
    rst $38
    rst $38
    daa
    rst $38
    jp $41ff


    rst $38
    add b
    rst $38
    nop
    rst $38
    dec b
    rst $38
    ld [$62f8], sp
    db $fc
    db $fc
    db $10
    ret nz

    nop
    inc de
    nop
    add hl, hl
    rlca
    ld h, b
    ccf
    and [hl]
    rst $38
    ld bc, $68ff
    rst $38
    nop
    rst $38
    and c
    rst $38
    pop af
    ld a, a
    or h
    ld a, a
    ld h, l
    rst $38
    ei
    ccf
    pop de
    ccf
    ld a, [$f33d]
    dec a
    cp e
    cp h
    sbc a
    sbc h
    sbc a
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
    inc c
    db $fc
    ld [hl], b
    cp $c0
    ld hl, sp+$00
    and b
    nop
    add b
    nop
    adc c
    nop
    dec h
    nop
    ld b, b
    nop
    ld b, d
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $00
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
    nop
    nop
    nop
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    nop
    sbc a
    nop
    rrca
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    pop af
    nop
    ld sp, hl
    inc b
    rst $30
    nop
    ld [$f001], a
    nop
    jp hl


    inc b
    db $e4
    add hl, de
    sbc c
    ld h, b
    ld [hl], a
    add b
    ld h, c
    add b
    ld h, e
    adc h
    ld h, d
    add h
    add d
    ld b, l
    reti


    ld h, $d3
    inc l
    db $ec
    db $10
    jp c, $2820

    rla
    ld d, b
    adc b
    ld l, [hl]
    sub b
    cpl
    ret nc

    adc a
    ld [hl], b
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$0cf3], sp
    ei
    inc b
    ei
    inc b
    ei
    rlca
    ld hl, sp+$1d
    ldh [$7a], a
    ldh a, [rIE]
    ldh a, [$f9]
    ldh a, [$fc]
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    db $fc
    ld a, a
    db $e4
    cp a
    ld b, b
    rst $38
    add b
    dec d
    nop
    ld [bc], a
    inc bc
    ld b, $1f
    ld c, d
    ld a, a
    dec b
    ld a, a
    jp $3dff


    rst $38
    rst $10
    ccf
    cp a
    rrca
    cp a
    cpl
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    sub a
    rst $18
    sub e
    rst $38
    adc h
    rst $18
    nop
    rst $08
    add b
    sbc $80
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    cp $0c
    ld hl, sp+$70
    ret nz

    add b
    nop
    nop
    nop
    nop
    ld bc, $0200
    nop
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
    ld bc, $2700
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
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_04a_520e

jr_04a_520e:
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
    ld a, a
    rst $38
    ld a, a
    ld e, [hl]
    ld a, a
    ld e, [hl]
    ld a, a
    ld a, h
    rst $38
    call nc, $84ef
    rst $00
    add h
    rst $38
    call nz, $c4ef
    rst $00
    jp nz, $c2ef

    di
    jp nz, $c2e3

    db $e3
    jp nz, $c2e3

    db $e3
    ld b, d
    db $e3
    ld h, d
    db $e3
    ld b, d
    db $e3
    ld h, d
    pop af
    ld h, c
    rst $08
    ld [hl], c
    ld a, e
    db $e3
    rst $30
    ld hl, $21fb
    rst $30
    add hl, sp
    rst $28
    ld sp, $b171
    dec [hl]
    ld hl, sp+$79
    or h
    ld a, e
    sub b
    ei
    inc d
    ld e, e
    or b
    ld e, d
    or b
    sbc a
    ld [hl], b
    ld e, h
    or b
    ld a, [de]
    ldh a, [$fa]
    ld [$08fa], sp
    ld a, [$fa08]
    ld [$0aff], sp
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    ei
    cp [hl]
    ld h, e
    ld a, [c]
    ld b, e
    xor $43
    xor $43
    xor $47
    or $9f
    ld hl, sp-$01
    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    ld a, $cd
    cp a
    ld b, a
    cp a
    xor a
    cp a
    and a
    ccf
    cp a
    rra
    db $fd
    sbc a
    cp a
    sbc a
    sbc a
    sbc a
    adc a
    sbc l
    rst $38
    sbc [hl]
    rst $38
    ret c

    rst $18
    add b
    rst $08
    add b
    rst $18
    nop
    rst $38
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc c
    db $fc
    ld [hl], b
    ret nz

    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub b
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
    ld [bc], a
    nop
    ld c, $00
    jr jr_04a_52e2

jr_04a_52e2:
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc $ff
    add [hl]
    rst $38
    add [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nc, @+$01

    jr c, @+$01

    ld a, $bf
    rla
    rrca
    ld bc, $030f
    inc c
    inc bc
    rst $00
    ld bc, $20c1
    rst $20
    ld [$147f], sp
    rst $38
    ld a, [de]
    ld h, e
    sbc d
    ld [$f23b], a
    sbc e
    ld a, [c]
    add hl, bc
    cp d
    ld c, c
    ld a, [$ea09]
    add hl, bc
    sbc a
    add hl, bc
    rst $38
    dec d
    rst $38
    ld bc, $00f9
    ld sp, hl
    nop
    rst $38
    db $10
    rst $38
    jr @+$01

    ld hl, sp-$01
    adc [hl]
    ld c, a
    ld c, $07
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
    ld bc, $8400
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
    ld a, c
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    ret nz

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
    nop
    nop
    nop
    nop
    nop
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
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    add b
    db $fc
    ldh [$fe], a
    ldh a, [rIE]
    ld hl, sp+$3f
    db $fc
    ccf
    ccf
    add e
    ld a, a
    ld [hl], b
    rrca
    sbc h
    inc bc
    and d
    ld bc, $80e3
    ld [hl], e
    ret nc

    db $fc
    or d
    ld a, a
    sbc d
    ld a, a
    sbc h
    ld e, a
    sbc h
    ld l, a
    sbc h
    db $e3
    sbc h
    ei
    sbc h
    ei
    ld c, h
    rst $38
    ld a, [bc]
    rst $38
    nop
    rst $18
    ld [$02dd], sp
    or a
    ld bc, $00f7
    rst $38
    nop
    rst $38
    sub b
    rst $38
    add sp, $7f
    ld a, h
    rra
    ccf
    rra
    rra
    rrca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0100
    rlca
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
    ret nz

    nop
    add b
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
    rst $20
    rst $38
    jp $c3ff


    rst $38
    jp Jump_000_00ff


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
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ld hl, sp+$78
    cp $3e
    add hl, de
    rrca
    inc c
    inc bc
    add e
    ld bc, $00ef
    dec b
    ld [bc], a
    rst $28
    inc b
    cp h
    ret nz

    sbc a
    ldh [$cf], a
    ld hl, sp-$72
    rst $30
    db $ec
    rst $30
    sbc h
    rst $30
    sbc l
    ld [hl], a
    cp a
    ld [hl], e
    xor $33
    cp $1b
    cp $03
    sbc $23
    cp a
    dec b
    sub a
    nop
    or [hl]
    add c
    rst $38
    nop
    rst $38
    add e
    rst $38
    jp nz, $d0ff

    cp $f8
    rst $18
    ld a, h
    ccf
    ld a, $9f
    dec e
    rrca
    rlca
    ld b, $03
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
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
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
    add a
    rst $38
    add a
    rst $38
    add a
    rst $38
    add a
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
    add b
    ret nz

    ld a, b
    ld hl, sp-$28
    ld a, a
    db $fc
    ccf
    ld a, a
    rra
    inc a
    ld bc, $00af
    rst $38
    ld b, b
    ei
    nop
    ld hl, sp+$00
    ld a, h
    nop
    dec a
    ld [c], a
    cp a
    ldh [$bf], a
    rst $28
    db $fd
    xor $f8
    rst $28
    ld a, [$70e7]
    rst $08
    db $fc
    rst $08
    db $fd
    ccf
    ld a, l
    rst $20
    ei
    rst $30
    ei
    rst $38
    rst $38
    ld l, a
    db $ed
    rlca
    rst $38
    ld b, $ff
    inc c
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    db $fc
    rst $38
    ld a, [hl]
    ld [hl], a
    dec a
    db $db
    rra
    db $fd
    rrca
    rst $38
    inc bc
    pop af
    ld bc, $0060
    nop
    inc bc
    nop
    rlca
    ld [de], a
    xor l
    nop
    xor a
    nop
    rst $38
    ld bc, $00fe
    ccf
    nop
    dec sp
    nop
    rra
    nop
    dec de
    jr nz, @+$11

    nop
    rrca
    ld bc, $0106
    ld c, $00
    ld bc, $0000
    nop
    inc bc
    nop
    rlca
    ld bc, $031e
    ld a, h
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
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ret nc

    ldh a, [rLY]
    cp $94
    rst $38
    xor $3f
    di
    rrca
    cp h
    rlca
    rst $08
    ld bc, $50af
    ld a, [c]
    inc c
    rst $38
    inc b
    rst $38
    nop
    rst $38
    and b
    ccf
    ret nc

    rst $08
    ld hl, sp+$1f
    ld [$dee3], a
    rst $28
    sbc $f1
    xor $da
    rst $28
    ei
    rst $18
    rst $38
    rst $18
    db $fd
    adc a
    ld sp, hl
    rrca
    ei
    ld l, l
    ei
    sub a
    rst $18
    nop
    rst $18
    ld b, $bb
    inc b
    rst $38
    inc b
    db $fd
    ld b, $fd
    ld b, d
    rst $38
    and h
    rst $38
    ld hl, sp-$01
    db $fc
    rst $18
    cp $ff
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rra
    rst $28
    ld c, e
    cp a
    dec hl
    db $dd
    inc hl
    db $dd
    or e
    ld c, l
    daa
    jp c, $d927

    ld [hl], $dd
    rra
    rst $20
    rst $28
    inc d
    rrca
    db $fc
    rra
    ldh [$7f], a
    add b
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    cp a
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
    ccf
    ccf
    ccf
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
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
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    dec b
    rlca
    dec b
    rlca
    rlca
    ld bc, $0707
    ld b, $05
    rlca
    dec b
    rlca
    rlca
    inc b
    rlca
    ld bc, $0307
    ld b, $03
    rlca
    inc bc
    ld b, $02
    dec b
    rlca
    dec b
    rlca
    dec b
    ld [bc], a
    dec b
    ld bc, $0207
    rlca
    nop
    rlca
    ld [bc], a
    rlca
    ld b, $07
    rlca
    rlca
    ld [bc], a
    rlca
    add hl, bc
    rrca
    dec c
    ld c, $0c
    dec bc
    ld c, $0f
    rrca
    rrca
    rrca
    dec c
    rrca
    rrca
    rrca
    dec bc
    rrca
    add hl, bc
    rrca
    db $eb
    rrca
    ei
    rra
    ei
    rst $38
    rst $38
    ld a, l
    rst $30
    rst $30
    ld a, a
    rst $38
    rrca
    rst $10
    adc a
    rst $38
    rrca
    ld a, a
    ld b, $df
    ld b, $ed
    rrca
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    sub b
    rst $10
    ld hl, sp-$29
    cp $df
    rst $38
    db $ec
    rst $38
    push de
    rst $38
    db $db
    and $df
    ld l, l
    rst $38
    ld l, a
    ld hl, sp+$2f
    and $1f
    cp $1f
    push af
    ld c, a
    db $eb
    rra
    db $fd
    rlca
    push hl
    rra
    cp $45
    db $fc
    inc hl
    rst $38
    adc a
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    ld sp, hl
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $28
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ld a, [c]
    rst $38
    ldh [$fd], a
    ret nz

    cp $18
    ld a, $f8
    cp $78
    cp [hl]
    ldh a, [$bc]
    ldh a, [$fc]
    ldh a, [$fc]
    ld hl, sp-$3c
    ld hl, sp-$0c
    ld hl, sp-$2c
    ld hl, sp-$2c
    ld hl, sp-$24
    ldh a, [$fc]
    ldh a, [$98]
    ld [hl], b
    xor b
    ld [hl], b
    sbc b
    ld hl, sp-$68
    ld hl, sp-$78
    ld hl, sp+$1c
    db $fc
    xor [hl]
    ld a, [$f9bf]
    rst $38
    ld hl, sp-$01
    or h
    ld a, a
    or [hl]
    ld c, a
    rst $38
    adc a
    rst $30
    adc a
    rst $38
    rst $38
    or a
    cp a
    rst $20
    cp a
    rst $00
    cp a
    rst $28
    cp a
    rst $20
    ld a, a
    rst $28
    ld a, a
    rst $20
    scf
    rst $38
    rst $30
    rst $28
    ld a, a
    rst $20
    rst $18
    rst $20
    rst $18
    rst $20
    cp a
    rst $00
    rst $18
    and a
    ld a, a
    pop de
    ld a, a
    ret nc

    ld a, a
    adc $71
    pop bc
    ld [hl], b
    ldh [$c0], a
    ldh a, [rNR10]
    ldh [$d0], a
    ldh [$d0], a
    ldh [$a0], a
    ret nz

    jr nz, @-$3e

    ld h, b
    ret nz

    ld h, b
    ret nz

    ldh [$c0], a
    ldh [$c0], a
    ldh [$80], a
    add b
    ldh [$e0], a
    ldh [$60], a
    ret nz

    ld b, b
    ldh [$a0], a
    ret nz

    and b
    ret nz

    and c
    pop bc
    dec l
    adc $a3
    db $fc
    sbc l
    di
    db $fc
    res 6, c
    ld c, [hl]
    di
    inc c
    rst $38
    add c
    rst $38
    ld b, c
    db $fd
    inc bc
    cp $07
    rst $38
    rlca
    rst $38
    ccf
    ld a, [$fb77]
    rst $30
    rst $38
    rst $10
    ld a, a
    and a
    ld a, a
    sub a
    rst $38
    sub a
    rst $38
    dec e
    rst $38
    inc d
    rst $30
    dec e
    ei
    add l
    rst $38
    push bc
    rst $38
    add a
    rst $38
    rst $10
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    ldh a, [$f8]
    ldh [$e0], a
    ret nz

    ldh [$80], a
    sub b
    nop
    sbc h
    nop
    cp h
    nop
    cp b
    nop
    nop
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

    ld b, b
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh [$a0], a
    ldh [$a0], a
    ldh a, [$90]
    ldh a, [$90]
    ldh a, [$90]
    ldh a, [$90]
    ldh a, [$90]
    ldh a, [$90]
    ldh a, [$90]
    ldh a, [$90]
    ldh a, [$90]
    ldh a, [$90]
    ldh a, [$90]
    ldh a, [$91]
    ldh a, [$91]
    ldh [$a1], a
    ldh [$a3], a
    ldh [$27], a
    ldh [$27], a
    ldh [$e7], a
    nop
    rlca
    nop
    rlca
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    inc bc
    ld [bc], a
    rlca
    inc b
    rra
    db $10
    ld a, a
    ld h, b
    rst $38
    jr nz, @+$01

    db $10
    rst $00
    inc a
    ld l, [hl]
    sub c
    ld a, a
    add c
    db $fd
    ld b, $ff
    ld [bc], a
    rst $30
    ld a, [hl-]
    ld b, b
    cp a
    ld b, c
    cp [hl]
    ld h, c
    cp a
    cp $bb
    db $ec
    ei
    rst $38
    ld a, c
    rst $08
    rst $38
    cp $3f
    rst $38
    ei
    rst $38
    cp e
    rst $28
    rst $38
    rst $30
    sbc a
    cp $1f
    rst $30
    dec de
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld a, a
    ei
    rst $38
    rst $38
    cp $ff
    cp $ff
    ld a, [$f5ff]
    rst $38
    ret


    cp $c0
    ldh a, [rNR41]
    ldh [rLCDC], a
    ldh [rP1], a
    ret nz

    nop
    pop bc
    nop
    ret nz

    nop
    add b
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
    inc b
    nop
    nop
    nop
    ld bc, $0b00
    nop
    rrca
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
    rst $18
    rst $38
    adc $ff
    adc $ff
    adc $ff
    adc $ff
    ret nz

    rst $38
    ret nz

    rst $38
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
    nop
    nop
    nop
    ld b, b
    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    cp $00
    db $fc
    nop
    db $fc
    nop
    cp $00
    cp $00
    rst $38
    nop
    cp $00
    db $fc
    nop
    db $fc
    nop
    ldh [rP1], a
    ldh [rSB], a
    ret nz

    rlca
    rst $00
    rra
    jp nc, $e167

    ldh a, [$c0]
    and c
    add b
    rst $28
    jr nz, @+$01

    ld [hl+], a
    rst $38
    nop
    rst $30
    ld bc, $10fe
    rst $38
    add c
    ld l, c
    sub [hl]
    rst $38
    add b
    ld a, a
    sub b
    sbc a
    ld h, c
    cp e
    ld h, c
    ei
    ld de, $11ff
    ld a, a
    add b
    rst $38
    ret nz

    rst $38
    add b
    ld a, a
    add b
    rst $38
    ld [$1fff], sp
    rst $38
    adc b
    rst $38
    db $e3
    rst $38
    xor a
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fd
    rst $38
    ld a, [$f4ff]
    rst $38
    and $ff
    sub d
    ldh a, [rLCDC]
    ldh [$80], a
    ret nz

    ld b, b
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
    stop
    nop
    nop
    nop
    nop
    ld [$0d00], sp
    nop
    ld c, d
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    dec de
    nop
    ld a, a
    nop
    ld a, $00
    ld a, l
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    dec a
    rst $38
    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    nop
    rst $38
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
    nop
    nop
    nop
    inc bc
    nop
    inc bc
    ld bc, $0103
    inc bc
    nop
    inc bc
    ld bc, $0103
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0700
    ld [bc], a
    rlca
    ld bc, $0107
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    rlca
    ld bc, $0107
    rlca
    ld bc, $0307
    rlca
    inc bc
    rra
    inc bc
    rra
    rlca
    rra
    rrca
    rra
    rlca
    rra
    rrca
    ccf
    ld c, $3f
    ld b, $3e
    ld b, $3e
    ld b, $3e
    ld c, $3e
    inc c
    ld a, $0c
    ld a, $0c
    ld a, h
    inc a
    ld a, h
    inc a
    db $fc
    inc e
    db $fc
    inc e
    db $fc
    ld e, b
    db $fc
    db $10
    ld a, h
    ret nz

    ld hl, sp-$80
    ld hl, sp+$68
    ld hl, sp+$70
    sbc b
    ldh a, [$38]
    ldh a, [$f8]
    ldh a, [$f0]
    ld [hl], b
    ldh a, [$f0]
    ldh a, [$60]
    ldh a, [$e0]
    ldh a, [$60]
    ldh a, [$e0]
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    db $e3
    ret nz

    rst $38
    ldh [rIE], a
    ld sp, hl
    rst $38
    ld a, b
    rst $38
    ei
    rst $38
    ld hl, sp-$41
    ld a, [c]
    cp $f4
    cp $cc
    db $fc
    adc b
    ldh a, [rLCDC]
    ret nz

    nop
    add c
    nop
    add b
    nop
    nop
    nop
    ld bc, $0200
    nop
    ld [hl+], a
    nop
    rla
    nop
    ld c, $00
    rrca
    nop
    ld e, $00
    sbc [hl]
    nop
    ld c, $00
    dec a
    nop
    dec e
    nop
    ccf
    nop
    cp a
    nop
    rst $18
    nop
    cp a
    nop
    rst $30
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
    rst $28
    rst $38
    add $ff
    add $ff
    add $ff
    add $ff
    nop
    rst $38
    nop
    ld a, a
    ld b, $7e
    ld c, $7e
    ld a, $7e
    ld a, $fe
    ld a, h
    cp $1c
    cp $3c
    db $fc
    ld a, h
    db $fc
    inc a
    ld a, h
    jr jr_04a_5afb

    jr jr_04a_5afd

    jr jr_04a_5afb

jr_04a_5a83:
    jr jr_04a_5afd

    jr c, jr_04a_5aff

    jr c, jr_04a_5b01

    jr nc, jr_04a_5a83

    ldh a, [$f8]
    ldh a, [$f0]
    ld [hl], b
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$e0]
    ldh a, [$60]
    ldh a, [$60]
    ldh [$60], a
    ldh [$60], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    add b
    ret nz

    add b
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
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    inc bc
    ld bc, $0307
    rrca
    rlca
    rra
    rrca
    ccf
    rra

jr_04a_5ace:
    rst $38
    ld e, [hl]
    rst $38
    jr c, jr_04a_5ace

    ldh a, [$fb]
    ld [hl], b
    pop af
    ldh [$e3], a
    ld b, b
    ld b, e
    nop
    inc bc
    nop
    rlca
    nop
    ld c, $00
    add hl, bc
    nop
    scf
    nop
    dec de
    nop
    dec e
    nop
    rlca
    nop
    rlca
    nop
    rst $00
    nop
    xor a
    nop
    xor a

jr_04a_5af3:
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38

jr_04a_5afb:
    nop
    rst $38

jr_04a_5afd:
    nop
    rst $38

jr_04a_5aff:
    nop
    rst $38

jr_04a_5b01:
    ei
    rst $38
    ld a, [$f3ff]
    rst $38
    pop af
    rst $38
    ld a, [$f1ff]
    rst $38
    ld [hl], h
    rst $38
    ld [hl-], a
    rst $38
    jr nz, jr_04a_5af3

    nop
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
    rlca
    nop
    rrca
    nop
    rrca
    nop
    rra
    nop
    rra
    ld bc, $073f
    ld a, a
    rrca
    ld a, a
    rra
    rst $38
    ccf
    rst $38
    ld a, [hl]
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ret nz

    rst $28
    add b
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
    rst $18
    nop
    cp a
    nop
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
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    or a
    rst $38
    ld [hl+], a
    rst $38
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
    nop
    nop
    nop
    nop
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
    ld bc, $0300
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
    ccf
    nop
    ccf
    nop
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
    rst $38
    ld bc, $03ff
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, [hl]
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    add b
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
    rst $18
    rst $38
    ld e, a
    ld a, a
    nop
    ld a, a
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
    nop
    rra
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
    ld a, a
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld a, [hl]
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
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
    ld bc, $07ff
    rst $38
    rra
    rst $38
    dec de
    rst $38
    rla
    rst $38
    ld e, $ff
    ld a, $ff
    ld a, $ff
    ld a, c
    rst $38
    ld a, c
    rst $38
    ld sp, hl
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
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
    ld [$0202], sp
    ld [bc], a
    add hl, bc
    ld a, [bc]
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
    ld c, $02
    ld [bc], a
    ld [bc], a
    rrca
    db $10
    ld de, $0212
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc de
    ld [bc], a
    ld [bc], a
    inc d
    dec d
    dec bc
    ld d, $17
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_04a_5caa

    ld [bc], a
    ld [bc], a

jr_04a_5caa:
    add hl, de
    ld a, [de]
    dec de
    inc e
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    dec e
    ld e, $02
    ld [bc], a
    rra
    jr nz, jr_04a_5cdd

    ld [hl+], a
    inc hl
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    inc h
    dec h
    ld h, $02
    ld [bc], a
    daa
    jr z, jr_04a_5cf5

    ld a, [hl+]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec hl
    inc l
    dec l
    ld l, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    cpl
    jr nc, jr_04a_5d0d

    ld [hl-], a

jr_04a_5cdd:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_04a_5d20

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h

jr_04a_5cf5:
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld [bc], a
    ld [bc], a
    ld [bc], a
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

jr_04a_5d0d:
    ld e, d
    ld [bc], a
    ld [bc], a
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld c, c
    ld c, c
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld [bc], a
    ld [bc], a

jr_04a_5d20:
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
    ld c, c
    ld [hl], c
    dec bc
    ld [hl], d
    ld [bc], a
    ld [bc], a
    ld [hl], e
    ld [hl], h
    ld [bc], a
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld c, c
    ld c, c
    ld c, c
    ld a, d
    dec bc
    ld a, e
    ld a, h
    ld [bc], a
    ld [bc], a
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    ld c, c
    ld c, c
    ld c, c
    add h
    add l
    dec bc
    add [hl]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add a
    adc b
    adc c
    ld c, c
    ld c, c
    ld c, c
    adc d
    dec bc
    adc e
    adc h
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    adc l
    adc [hl]
    ld c, c
    ld c, c
    adc a
    sub b
    dec bc
    sub c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    sub d
    sub e
    ld c, c
    sub h
    sub l
    dec bc
    sub [hl]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    dec bc
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
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    dec bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld b, $03
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $03
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld b, $03
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $03
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    ld [bc], a
    ld [bc], a
    ld b, $03
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld b, $03
    inc bc
    inc bc
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
    ld [bc], a
    ld [bc], a
    rlca
    inc bc
    inc bc
    inc bc
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
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
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
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
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
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
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [rP1]
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
    cp $01
    ld sp, hl
    ld b, $c6
    add hl, sp
    rst $00
    nop
    ccf
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
    nop
    rst $38
    nop
    rst $38
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
    ldh [rIE], a
    add c
    rst $38
    rlca
    rst $38
    rra
    cp $7f
    ld hl, sp-$01
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld hl, sp+$07
    rst $00
    jr c, @+$3a

    rst $00
    ret nz

    ccf
    nop
    rst $38
    rst $38
    ld bc, $07ff
    rst $38
    ccf
    rst $38
    rst $38
    db $fc
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
    rst $38
    nop
    rst $38
    nop
    cp $00
    ldh a, [rP1]
    ret nz

    inc bc
    inc bc
    rra
    rra
    ld a, a
    ld a, a
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
    nop
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
    ld hl, sp+$07
    rst $00
    jr c, jr_04a_600d

    rst $00
    ret nz

    ccf
    nop
    rst $38
    ld bc, $07ff
    rst $38
    ccf
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
    add b
    rst $38
    ld b, b
    rst $38
    ld b, b
    ld hl, sp-$01
    ldh [rIE], a
    ld bc, $0fff
    rst $38
    ccf
    db $fc
    rst $38
    ldh [rIE], a
    ret nz

jr_04a_600d:
    rst $38
    nop
    rst $38
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
    ld hl, sp+$07
    rst $20
    jr @+$1a

    rst $20
    rra
    nop
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    ccf
    rst $38
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38

jr_04a_6044:
    nop
    rst $38
    jr nz, jr_04a_6044

    nop
    ldh a, [rP1]
    add b
    rlca
    rlca
    rra
    rra
    cp $7f
    db $f4
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    rrca
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    db $e3
    inc e
    inc e
    db $e3
    ldh [$1f], a
    nop
    rst $38
    inc bc
    rst $38
    rst $38
    rrca
    rst $38
    ccf
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    inc b
    rst $38
    db $10
    cp $ff
    ld hl, sp-$01
    ldh [rIE], a
    add e
    rst $38
    rrca
    cp $3f
    ld hl, sp-$01
    ldh [rIE], a
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
    ld bc, $0300
    nop
    rlca
    nop
    rrca
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
    nop
    rst $38
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
    inc e
    nop
    db $e3
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    ld bc, $0fff
    rst $38
    ld a, a
    db $fc
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
    rst $38
    nop
    ld hl, sp+$00
    ldh [rSB], a
    pop bc
    rlca
    rlca
    rst $38
    rra
    db $fc
    rst $38
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
    nop
    nop
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    ccf
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
    pop bc
    ld a, $dd
    ld [hl+], a
    push de
    ld [hl+], a
    db $dd
    ld [hl+], a
    pop bc
    ld a, $ff
    nop
    rst $38
    nop
    rst $38
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
    inc e
    sbc h
    ld h, e
    ld h, b
    sbc a
    ld a, a
    nop
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    ld a, a
    db $fc
    rst $38
    ldh [rIE], a
    add b
    rst $38
    nop
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
    nop
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    ldh [rIE], a
    inc bc
    rst $38
    rra
    cp $7f
    ld hl, sp-$01
    ldh [rIE], a
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
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
    ld bc, $011f
    rra
    ld bc, $011f
    rra
    ld bc, $011f
    rra
    ld bc, $011f
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
    ld a, a
    nop
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
    db $fc
    inc bc
    di
    inc c
    adc h
    ld [hl], e
    ld [hl], b
    adc a
    add b
    ld a, a
    rlca
    rst $38
    rra
    rst $38
    rst $38
    ld a, a
    ld hl, sp-$01
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
    inc b
    rst $38
    dec b
    rst $38
    ld b, l
    rst $38

jr_04a_61f8:
    ld h, h
    rst $38
    jr nz, jr_04a_61f8

    add b
    ldh a, [$03]
    add e
    rst $38
    rrca
    rst $38
    ccf
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
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    and $19
    or $19
    db $e4
    dec de
    db $f4
    dec de
    ldh a, [$1f]
    ld a, [c]
    sbc a
    di
    sbc a
    ld a, [c]
    sbc a
    di
    sbc a
    ld [$fa9f], a
    sbc a
    ldh [$9f], a
    add sp, -$61
    ld a, [c]
    adc a
    ld sp, hl
    adc a
    ei
    adc a
    ld sp, hl
    adc a
    ld sp, hl
    adc a
    ld sp, hl
    adc a
    ld hl, sp-$71
    ld hl, sp-$71
    ld a, c
    ld c, a
    ld a, c
    ld c, a
    ld a, c
    ld c, a
    ld a, c
    ld c, a
    ld a, l
    ld c, a
    ld a, c
    ld c, a
    ld a, l
    ld c, a
    ld a, c
    ld c, a
    ld a, c
    ld c, a
    ld [hl], l
    ld c, a
    ld a, l
    ld b, a
    ld a, l
    ld b, a
    ld a, l
    ld b, a
    ld a, l
    ld b, a
    ld a, l
    ld b, a

jr_04a_626c:
    ld a, l
    ld b, a
    inc a
    daa
    dec a
    daa
    dec a
    daa
    inc a
    daa
    inc a
    daa
    inc a
    daa
    inc a
    daa
    jr c, jr_04a_62a5

    jr c, jr_04a_62a0

    and $38
    db $e4
    jr c, jr_04a_626c

    ccf
    rst $20
    ccf
    rst $20
    ccf
    rst $20
    ccf
    rst $20
    ccf
    di
    rra
    ld e, $13
    ld a, [de]
    rla
    ld a, [de]
    rla
    rra
    inc de
    rra
    inc de
    rra
    inc de
    rra
    inc de
    rra
    inc de

jr_04a_62a0:
    ld a, a
    inc de
    sbc a
    inc de
    ld a, a

jr_04a_62a5:
    inc de
    rst $38
    inc de
    rst $30
    dec sp
    push af

jr_04a_62ab:
    ei
    rst $30
    ei
    set 7, a
    ld c, a
    ei
    dec d
    ei
    add hl, bc
    rst $38
    ld de, $0bff
    rst $38
    dec bc
    rst $38
    add hl, hl
    rst $38
    ld c, c
    rst $38
    ld e, e
    rst $38
    rst $38
    rst $38
    and $ff
    ld b, $e7
    rlca
    add [hl]
    rra
    rra
    cp $ff
    ld hl, sp-$01
    ldh [rIE], a
    jr z, jr_04a_62ab

    ld [$ff15], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
    ldh a, [rIF]
    inc b
    ei
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $01
    cp $41
    cp [hl]
    ld b, c
    cp [hl]
    ld de, $01ee
    cp $01
    cp $49
    or [hl]
    ld bc, $01fe
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
    cp $81
    cp $01
    cp $81
    cp $01
    cp $01
    cp $81
    cp $01
    cp $01
    cp $01
    cp $00
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rrca
    add c
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
    call c, $d4ff
    rst $38
    sbc $ff
    db $fd
    rst $38
    ei
    rst $38
    db $dd
    rst $38
    cp $ff
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
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    ret nz

    rst $38
    nop
    rst $38
    dec b
    ei
    jr nc, @-$2f

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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    add a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    add b
    ld a, a
    add $3f
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
    add h
    ld a, a
    add h
    ld a, a
    add h
    ld a, a
    add h
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add h
    ld a, a
    add h
    ld a, a
    add h
    ld a, a
    add h
    ld a, a
    add l
    ld a, a
    add h
    ld a, a
    add h
    ld a, a
    add h
    ld a, a
    add [hl]
    ld a, a
    add h
    ld a, a
    add [hl]
    ld a, a
    add a
    ld a, a
    add a
    ld a, a
    add a
    ld a, a
    add a
    ld a, a
    add a
    ld a, a
    add a
    ld a, a
    add a
    ld a, a
    adc a
    ld a, a
    add a
    ld a, a
    add c
    ld a, a
    rlca
    rst $38
    ld b, $ff
    dec b
    rst $38
    rlca
    rst $38
    add a
    rst $38
    rlca
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    ld c, a
    rst $38
    rra
    rst $38
    ld c, a
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld c, a
    rst $38
    ld c, a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld e, a
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
    db $db
    rst $38
    ld c, b
    rst $38
    inc bc
    rst $38
    dec de
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
    push bc
    rst $38
    ld bc, $01ff
    rst $38
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
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
    cp $01
    add d
    ld a, a
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    inc b
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $08ff
    rst $38
    db $10
    rst $38
    jr nc, @+$01

    db $10
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    ld h, b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld h, c
    rst $38
    db $10
    rst $38
    jr nc, @+$01

    ld [hl], c
    rst $38
    or c
    rst $38
    ld [hl], d
    rst $38
    ld h, c
    rst $38
    pop de
    rst $38
    pop hl
    rst $38
    ld [hl], e
    rst $38
    pop af
    rst $38
    pop hl
    rst $38
    db $e3
    rst $38
    ld [c], a
    rst $38
    rst $20
    rst $38
    jp $c3ff


    rst $38
    adc e
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    ld a, l
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $30
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rlca
    rst $38
    rlca
    rst $38
    inc c
    rst $38
    jr nc, @+$01

    ld b, b
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
    ccf
    ccf
    ret nc

    rst $28
    add c
    ld a, [hl]
    add l
    ld a, [$f00f]
    cpl
    ldh a, [$8f]
    ldh a, [rIF]
    pop af
    adc a
    pop af
    rrca
    pop af
    rrca
    pop af
    rra
    pop hl
    rra
    pop hl
    rra
    pop hl
    rra
    pop hl
    rra
    pop hl
    rra
    pop hl
    rra
    pop hl
    rra
    pop hl
    ld e, $e3
    ld e, $e3
    ld e, $e3
    ld e, $e2
    ld a, $c2
    ld a, $c2
    ld a, $c2
    ld a, $c2
    ld a, $c2
    ld a, $c2
    ld a, $c2
    ld a, $c2
    cp h
    add $3c
    call nz, $c43c

jr_04a_659c:
    cp h
    call nz, $c4bc
    db $fc

jr_04a_65a1:
    add h
    ld a, h

jr_04a_65a3:
    add h
    db $fc

jr_04a_65a5:
    add h
    db $fc
    add h
    ld a, h
    add h
    db $fc
    add h
    inc [hl]
    call z, $c838
    ld a, b
    adc b
    jr jr_04a_659c

    jr @-$16

    ld e, b
    xor c
    jr jr_04a_65a3

    jr c, @-$33

    jr c, @-$2f

    jr z, @-$1f

    jr z, jr_04a_65a1

    jr z, jr_04a_65a3

    jr z, jr_04a_65a5

    inc sp
    rst $18
    dec e
    rst $38
    scf
    rst $18
    rra
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
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
    rla
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
    cp a
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    rra
    rst $38
    add hl, bc
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
    add b
    add b
    add b
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
    nop
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
    ccf
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
    ld bc, $02ff
    rst $38
    inc bc
    rst $38
    rlca
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
    ccf
    rst $38
    dec de
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
    ld e, a
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    inc b
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
    jr nz, jr_04a_66bf

jr_04a_66bf:
    jr nz, jr_04a_66c1

jr_04a_66c1:
    jr nz, jr_04a_66c3

jr_04a_66c3:
    jr nz, jr_04a_66c5

jr_04a_66c5:
    jr nz, jr_04a_66c7

jr_04a_66c7:
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
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
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
    cp $00
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
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
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
    ccf
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld b, [hl]
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
    ldh [$80], a
    ldh a, [rNR41]
    ldh a, [$a0]
    ld hl, sp-$40
    cp $c2
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rlca
    rst $38
    inc bc
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
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rlca
    rst $38
    rlca
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
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    nop
    ldh a, [rP1]
    ld hl, sp+$04
    cp $00
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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

jr_04a_67de:
    ld e, a
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
    dec a
    rst $38
    jr c, jr_04a_6801

jr_04a_6801:
    ret nz

    and b
    ld [hl], b
    jr nz, jr_04a_67de

    db $10
    xor $04
    ei
    add e
    db $fc
    ret nz

    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
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
    rst $18
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    ei
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
    ccf
    rst $38
    rra
    rst $38
    ld c, $ff
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

jr_04a_6848:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ret nz

    ldh [$30], a
    ld l, b
    sbc b
    jr jr_04a_6848

    ld e, $e1
    rrca
    ldh a, [$87]
    ld hl, sp+$07
    ld hl, sp-$7f
    cp $a0
    rst $38
    ldh [rIE], a
    add b
    rst $38
    call nc, $dcff
    rst $38
    ld hl, sp-$01
    db $fd
    rst $38
    db $f4
    rst $38
    ei
    rst $38
    cp $ff
    cp $ff
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
    ld a, a
    rst $38
    sbc a
    rst $38
    rst $08
    rst $38
    rst $20
    rst $38
    pop af
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    dec c
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop

jr_04a_68a9:
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

    ret nz

    jr nc, jr_04a_68a9

    ld [$06f8], sp
    cp $01
    ccf
    ret nz

    rra
    ldh [rTAC], a
    ld hl, sp+$01
    cp $80
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld d, b
    rst $38
    and b
    rst $38
    call nc, $c9ff
    rst $38
    jp hl


    rst $38
    push af
    rst $38
    cp $ff
    cp $ff
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
    ccf
    rst $38
    adc a
    rst $38
    rst $00
    rst $38
    db $e3
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    cp [hl]
    rst $38
    ld a, $ff
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec c
    inc b
    inc b
    ld c, $0f
    db $10
    ld de, $0412
    inc de
    inc d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec d
    inc b
    ld d, $17
    jr jr_04a_6946

    ld a, [de]
    inc b
    dec de
    inc e
    dec e
    ld e, $1f
    rra
    jr nz, @+$23

    ld [hl+], a
    inc b
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_04a_6969

    ld a, [hl+]
    dec hl
    inc b
    inc b
    inc l
    dec l

jr_04a_6946:
    ld l, $2f
    jr nc, jr_04a_697b

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_04a_698b

    inc b
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
    ld [bc], a
    ld b, [hl]
    ld b, a
    inc b
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l

jr_04a_6969:
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld [bc], a
    ld d, h
    ld d, l
    inc b
    inc b
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld b, b
    ld e, d
    ld e, e

jr_04a_697b:
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld d, h
    ld h, c
    inc b
    inc b
    inc b
    inc b
    inc b
    ld h, d
    ld h, e
    ld h, h
    ld h, l

jr_04a_698b:
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld [bc], a
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    inc b
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    inc b
    add c
    add d
    inc b
    ld a, c
    ld a, d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add e
    add h
    add l
    add [hl]
    add a
    inc b
    inc b
    adc b
    adc c
    ld a, c
    ld a, d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    inc b
    adc a
    sub b
    sub c
    sub d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    sub e
    adc e
    sub h
    sub l
    sub [hl]
    inc b
    inc b
    inc b
    sub a
    ld a, d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    inc b
    sbc l
    sbc [hl]
    sub a
    ld a, d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    sbc a
    and b
    and c
    and d
    and e
    and h
    and l
    adc e
    and [hl]
    and a
    xor b
    sub a
    ld a, d
    ld [bc], a
    ld [bc], a
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    adc e
    or c
    or d
    or e
    or h
    or l
    sbc a
    ld [bc], a
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
    jp nz, $042b

    inc b
    jp $c5c4


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

    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    rlca
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0200
    ld [bc], a
    ld [bc], a
    rlca
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    ld bc, $0000
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    inc b
    inc b
    inc b
    inc bc
    ld bc, $0100
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $07
    dec b
    inc b
    inc b
    inc bc
    ld bc, $0100
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0501
    inc b
    inc b
    inc bc
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld b, $07
    dec b
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0141
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc b
    inc b
    ld bc, $0141
    ld bc, $0101
    inc bc
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    nop
    ld bc, $0141
    ld bc, $0601
    rlca
    ld b, $00
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    nop
    ld bc, $4101
    ld bc, $0201
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    ld b, $00
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0301
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    rst $38
    nop
    rst $38
    db $fc
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
    nop
    nop
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
    db $fc
    inc bc
    di
    inc c
    call z, $cf33
    nop
    ccf
    ld bc, $07ff
    rst $38
    rra
    rst $38
    ld a, a
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
    nop
    rst $38
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
    ld hl, sp+$01
    pop hl
    inc bc
    add e
    ld c, $0f
    inc e
    rra
    ld [hl], b
    ld a, a
    ldh [rIE], a
    add b
    rst $38
    add b
    ld a, a
    ld b, b
    cp a
    add h
    ld a, e
    sub b
    ld l, a
    ld h, b
    sbc a
    sbc c
    ld h, [hl]
    rst $38
    ld [hl], l
    rst $38
    sbc $ff
    ld hl, sp-$01
    jr nz, @+$01

    ld h, b
    rst $38
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
    db $fc
    db $fc
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
    nop
    nop
    ret nz

    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    di
    inc c
    call z, Call_000_3033
    rst $08
    pop bc
    ccf
    rlca
    rst $38
    ccf
    rst $38
    cp $ff
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ld hl, sp+$03
    db $e3
    rlca
    rst $00
    inc c
    rrca
    jr c, @+$41

    ld h, b
    ld a, a
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
    rst $38
    ld [hl], d
    rst $38
    rst $20
    rst $38
    or $ff
    cp h
    rst $38
    ldh a, [rIE]
    ld h, $ff
    add $ff
    sbc h
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
    inc bc
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    nop
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
    ld bc, $0100
    nop
    inc bc
    nop
    rlca
    nop
    rra
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
    ld sp, hl
    ld b, $c6
    add hl, sp
    rst $00
    nop
    ccf
    inc bc
    rst $38
    rrca
    rst $38
    ccf
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
    ld bc, $03f9
    db $e3
    ld c, $cf
    inc e
    rra
    ld [hl], b
    ld a, a
    ldh [rIE], a
    add b
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
    jp hl


    rst $38
    jp nc, $94ff

    rst $38
    call nz, $80ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    ccf
    nop
    rra
    nop
    rra
    nop
    rra
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
    nop
    rrca
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
    ccf
    nop
    ld [hl], e
    inc c
    ld l, e
    inc d
    db $e3
    inc d
    db $eb
    inc d
    rst $20
    jr @+$01

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
    ld bc, $0600
    nop
    add hl, de
    nop
    ld h, a
    ld bc, $039f
    ld a, a
    rrca
    cp $3f
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
    rst $38
    nop

jr_04a_6dd3:
    rst $38
    ld [$01fe], sp
    ld sp, hl
    inc bc
    db $e3
    ld c, $cf
    jr c, jr_04a_6e1d

    ld [hl], b
    ld a, a
    ret nz

    rst $38
    add b
    rst $38
    ld bc, $06fe
    ld sp, hl
    nop
    rst $38
    jr jr_04a_6dd3

    inc h
    db $db
    ld [de], a
    db $ed
    rst $38
    ret z

    rst $38
    or b
    rst $38
    nop
    rst $38
    ld b, b
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
    cp $01
    db $fc
    inc bc
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
    ld bc, $03fe
    db $fc
    rlca

jr_04a_6e1d:
    ld hl, sp+$0f
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
    db $fc
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rrca
    rrca
    ld [hl], b
    jr nc, jr_04a_6e95

    jr nc, jr_04a_6e97

    jr nc, jr_04a_6e99

    ld sp, $314e
    ld c, [hl]
    ld de, $112e
    ld l, $11
    ld l, $11
    ld l, $10
    cpl
    db $10
    cpl
    jr @+$29

    jr jr_04a_6e85

    jr jr_04a_6e87

    jr jr_04a_6e89

    ld [$0817], sp
    rla
    ld [$0817], sp
    rla
    inc c
    rla
    ld [$0817], sp
    rla
    rst $30
    rra
    rst $30
    rra
    di
    rra
    ei
    rrca
    ld a, [$fa0e]
    ld c, $fb
    rrca
    ei
    rrca
    ld b, $0b
    ld b, $0b
    rlca

jr_04a_6e85:
    dec bc
    dec b

jr_04a_6e87:
    dec bc
    dec b

jr_04a_6e89:
    dec bc
    ld bc, $0107
    rlca
    add hl, de
    rlca
    ld h, e
    dec b
    sbc c
    rlca
    ld a, e

jr_04a_6e95:
    dec e
    rst $38

jr_04a_6e97:
    ld a, l
    ld sp, hl

jr_04a_6e99:
    rst $38
    db $e3
    db $fd
    add e
    db $fd
    add hl, bc
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld bc, $08ff
    rst $38
    inc h
    rst $38
    inc e
    rst $38
    add hl, hl
    rst $38
    ld b, d
    rst $30
    inc c
    rst $08
    jr nc, jr_04a_6ef3

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
    rst $38
    ld a, [$f4ff]
    rst $38
    ld l, b
    rst $38
    sub b
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
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ld e, $fe
    inc a

jr_04a_6ef3:
    call nz, $8078
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    nop
    rst $38
    nop
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
    ld bc, $00fc
    ld hl, sp-$80
    ld hl, sp+$78
    ldh a, [rP1]
    ldh [rP1], a
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
    ccf
    ccf
    ret nz

    add $3f
    ld b, $ff
    ld b, $ff
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$0cff], sp
    rst $38
    ld a, [bc]
    rst $38
    inc l
    rst $38
    cp b
    ld a, a
    sbc l
    ld a, a
    inc l
    rst $38
    ld e, $ff
    adc l
    ld a, a
    inc e
    rst $38
    dec e
    rst $38
    sbc l
    ld a, a
    inc e
    rst $38
    dec e
    rst $38
    ld a, [de]
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
    rst $28
    rrca
    sbc a
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    rst $28
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    xor l
    rst $38
    ld d, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    pop af
    rst $38
    ret nz

    rst $38
    add e
    db $fc
    ld c, $f1
    dec sp
    rst $00
    ld [hl], h
    adc a
    add sp, $1f
    reti


    ccf
    ld [$6c1f], a
    sbc a
    jr @+$01

    jr @+$01

    cpl
    ldh a, [rVBK]
    ldh a, [$83]
    db $fc
    ldh [rIE], a
    jr c, jr_04a_7009

    ld e, $1f
    rrca
    rrca
    rrca
    rrca
    rrca
    ld hl, sp+$1f
    db $fd
    ccf
    rst $38
    ld a, h
    rst $38
    ldh a, [$f8]
    ret nz

    ldh [$80], a
    ret nz

    nop
    nop
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
    add d
    rst $38
    rst $38
    ld a, a
    rst $38
    ld [$6eff], a
    rst $38

jr_04a_6ff5:
    sub a
    ld a, a

jr_04a_6ff7:
    rrca
    ld a, a
    ld a, a
    ld a, a
    nop
    ld a, a
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

jr_04a_7009:
    nop
    nop
    nop
    ldh [$e0], a
    and b
    ldh [$e0], a
    jr nz, @-$1e

    jr nz, jr_04a_6ff5

    jr nz, jr_04a_6ff7

    ld hl, $21e0
    ldh [rNR42], a
    ldh [rNR42], a
    ldh [rNR42], a
    ldh [rNR42], a
    ldh [rNR42], a
    ldh [rNR42], a
    ldh [rNR42], a
    ldh [rNR42], a
    ldh [rNR42], a
    ldh [rNR42], a
    ld [hl], b
    sub c
    ld [hl], b
    sub e
    ld [hl], b
    sub e
    ld [hl], b
    sub e
    ld [hl], b
    sub e
    ldh a, [$93]
    ld [hl], b
    sub e
    ldh a, [$93]
    ldh a, [$93]
    ldh a, [$93]
    or b
    rst $10
    or b
    rst $10
    or b
    rst $10
    or b
    rst $10
    sub c
    rst $30
    sub c
    rst $38
    rst $10
    rst $38
    rst $10
    rst $38
    rst $10
    rst $38
    add a
    rst $38
    rst $00
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
    ldh [$fc], a
    jp $c0fc


    db $fc
    ret nz

    db $fc
    ret nz

    db $fc
    db $fc
    ldh [$fc], a
    ldh a, [$fc]
    ldh a, [$fc]
    ldh a, [rNR32]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$f0]
    db $fc
    ldh [$fc], a
    db $d3
    rst $28
    or e
    rst $08
    ld l, e
    sbc a
    reti


    ccf
    ld l, b
    rst $38
    ret z

    rst $38
    ld d, b
    rst $38
    ld h, b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $01
    cp $e0
    rra
    ld hl, sp+$07
    rst $38
    nop
    ld e, a
    and b
    dec b
    ld a, [$ffe1]
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    add b
    ld hl, sp+$00
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
    nop
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
    ld d, [hl]
    rst $38
    ld c, c
    di
    sub b
    pop af
    ldh [$f1], a
    pop af
    ldh a, [rP1]
    ldh a, [rP1]
    ld sp, hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    cp $00
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
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
    ld hl, sp+$00
    rlca
    nop
    nop
    nop
    add b
    nop
    ldh a, [rP1]
    rst $38
    nop
    ld a, a
    nop
    rrca
    nop
    add b
    nop
    ld [hl], b
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ldh a, [$f0]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $0f
    db $fc
    ld b, $f9
    dec c
    ld a, [c]
    add hl, sp
    add $71
    adc [hl]
    jp hl


    ld d, $c8
    scf
    ret z

    ld [hl], a
    add sp, $37
    pop hl
    ccf
    inc bc
    rst $38
    ld d, e
    cp a
    and l
    ld a, a
    ld c, d
    rst $38
    ret nc

    rst $38
    ldh a, [rIE]
    rst $38
    ldh [rIF], a
    ldh a, [rP1]
    ld bc, $0000
    nop
    nop
    nop
    jr nc, jr_04a_717d

jr_04a_717d:
    jr nc, jr_04a_717f

jr_04a_717f:
    jr nc, jr_04a_71f9

    nop
    ld e, b
    nop
    ld c, b
    nop
    ld c, b
    nop
    ld c, b
    nop
    ld a, b
    nop
    ld a, b
    nop
    ld a, b
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    add b
    rra
    nop
    rrca
    rrca
    add a
    nop
    add a
    nop
    rst $08
    nop
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
    ld hl, sp+$00
    rst $38
    ldh [rIE], a
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
    ld a, a
    rra
    rra
    daa
    ccf
    inc hl
    ccf
    ld b, c
    ld a, a
    ccf
    ld b, c
    dec a
    ld b, e
    inc a
    ld b, e
    inc a
    ld b, e
    jr c, jr_04a_7221

    jr c, jr_04a_7223

    jr c, jr_04a_7225

    jr c, jr_04a_7227

    ld b, a
    ld a, a
    ld b, a
    ld a, a
    ld d, a
    ld a, a
    ld d, l
    ld a, a
    or b
    rst $18
    ldh a, [$9f]
    ldh a, [$3f]
    ldh a, [$7f]
    rst $38
    ret nc

    rst $38
    ld [hl], b
    rst $38
    or b
    rst $38
    ret z

    rst $38

jr_04a_71f9:
    ld [$9cff], sp
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    ld [hl], d
    db $fc
    ld l, e
    db $fc
    ld a, e
    rst $38
    ld [hl], h
    rst $38
    ldh a, [$7f]
    add sp, $3f
    nop
    rrca
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0000

jr_04a_7221:
    rst $38
    nop

jr_04a_7223:
    rst $38
    nop

jr_04a_7225:
    rst $38
    nop

jr_04a_7227:
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    db $fc
    add b
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    rst $38
    rst $38
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
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
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
    ldh a, [$3f]
    rst $08
    rrca
    ldh a, [rSTAT]
    cp $c0
    rst $38
    ldh [rIE], a
    pop hl
    rst $38
    db $f4
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
    ld e, a
    rst $38
    nop
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
    cp $ff
    db $fc
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
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [$c3]
    inc a
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
    rst $38
    nop
    rst $38
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
    nop
    ld a, a
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
    ret nz

    ret nz

    rst $38
    ccf
    ld a, a
    add b
    dec bc
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
    add b
    rst $38
    ret nz

    rst $38
    add sp, -$01
    ld sp, hl
    rst $38
    db $fd
    rst $38
    ld l, a
    rst $38
    ret nz

    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $28
    rst $38
    nop
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
    ld a, b
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
    ld a, a
    add b
    rlca
    ld hl, sp+$00
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
    ldh a, [rP1]
    db $fc
    nop
    rst $38
    nop
    nop
    nop
    add b
    add b
    rst $38
    ld a, a
    rst $38
    nop
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
    nop
    rst $38
    jr nz, @+$01

    ret nz

    rst $38
    add sp, -$01
    ld bc, $40ff
    rst $38
    db $f4
    rst $38
    sub c
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
    cp $ff
    ld b, h
    rst $38
    nop
    rra
    ldh [$03], a
    db $fc
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    db $fc
    inc bc
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
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
    db $fc
    db $fc
    rst $38
    inc bc
    rst $38
    nop
    cpl
    ret nc

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld a, [bc]
    rst $38
    nop
    rst $38
    and b
    rst $38
    cp $ff
    ccf
    rst $38
    dec b
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
    ld a, $ff
    inc c
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
    rlca
    ld hl, sp+$00
    rst $38
    ld bc, $01fe
    cp $03
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
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
    ccf
    ccf
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    inc [hl]
    rst $38
    ld bc, $00ff
    rst $38
    ld a, [c]
    rst $38
    rra
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    dec a
    rst $38
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
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ldh a, [$3f]
    rst $38
    nop
    rst $38
    cpl
    ret nc

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rra
    rst $38
    nop
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    cpl
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
    dec bc
    nop
    rst $38
    nop
    rst $38
    nop
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
    cp $01
    cp $03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
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
    nop
    ld bc, $0100
    ld [bc], a
    ld [bc], a
    nop
    nop
    inc b
    nop
    ld [$0000], sp
    nop
    nop
    nop
    nop
    ld bc, $0100
    ld bc, $0301
    inc bc
    rlca
    ccf
    ccf
    rrca
    rra
    rra
    rra
    ccf
    ld a, $bf
    ld a, h
    ld a, a
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    nop
    ld a, a
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
    ld [bc], a
    rst $38
    sbc e
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    inc c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cpl
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $18
    rst $38
    sbc c
    rst $38
    nop
    rst $38
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
    ret nz

    ccf
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
    ld bc, $0100
    nop
    ld bc, $2300
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    ld bc, $0307
    rrca
    rlca
    rrca
    rlca
    rra
    rrca
    ccf
    rra
    cpl
    rra
    ld e, a
    ccf
    ccf
    ld a, a
    cp a
    ld a, a
    ld a, a
    rst $38
    ld c, $7f
    add hl, bc
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    inc b
    ld a, a
    rra
    ld a, a
    sbc [hl]
    ld a, a
    ld c, c
    rst $38
    db $fd
    cp $f2
    db $fd
    ld [c], a
    db $fd
    ld a, [c]
    call $84ff
    rst $38
    db $ec
    rst $38
    ld e, $ff
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
    add b
    rst $38
    ld a, a
    rst $38
    nop
    ld a, a
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
    ld b, e
    rst $38
    ld c, a
    rst $38
    rst $38
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
    cp a
    rst $38
    rra
    rst $38
    ld bc, $ffff
    rst $38
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
    ld c, a
    rst $38
    add a
    rst $38
    inc b
    rst $38
    inc c
    rst $38
    nop
    rst $38
    add b
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
    ld a, a
    add b
    rst $38
    nop
    xor a
    nop
    and a
    ld bc, $079f
    ccf
    rrca
    ld a, a
    ccf
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
    rst $38
    rlca
    rst $38
    rst $38
    ld hl, sp+$1f
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rlca
    nop
    rst $38
    rst $38
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $6300
    nop
    rst $38
    ld h, e
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    dec d
    rst $38
    cp $ff
    ld [hl], $ff
    ld a, b
    rst $38
    ld a, [$a7ff]
    rst $38
    ld b, a
    rst $38
    jp nz, $ffff

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$71
    ld hl, sp+$1f
    ldh a, [$5f]
    ldh a, [$3f]
    pop hl
    ld a, a
    pop bc
    ld a, a
    jp $e33f


    ld a, a
    rst $30
    ld a, a
    rst $18
    ld a, a
    cp $78
    db $fc
    nop
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
    db $fc
    db $fc
    rst $38
    inc bc
    cpl
    ret nc

    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    rla
    rst $38
    scf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or a
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
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld e, $ff
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
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
    jp $c33f


    ccf
    add e
    ld a, a
    add e
    ld a, a
    or e
    ld c, a
    cp a
    ld b, a
    rst $30
    rrca
    rst $30
    rrca
    rst $38
    nop
    dec sp
    call nz, $fcc3
    di
    db $fc
    di
    db $fc
    rst $28
    ldh a, [$c6]
    ld sp, hl
    add d
    db $fd
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
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ret nz

    ldh [rNR41], a
    ldh a, [$90]
    ld hl, sp+$38
    ld hl, sp+$18
    ld hl, sp-$20
    ld sp, hl
    ld l, c
    ld sp, hl
    pop hl
    ld sp, hl
    add c
    pop af
    add c
    di
    inc bc
    db $e3
    add e
    db $e3
    inc bc
    jp $8303


    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    inc bc
    rlca
    rlca
    rra
    ccf
    ccf
    rra
    rst $38
    ccf
    rst $38
    rst $20
    rst $28
    rst $00
    rst $08
    add a
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
    rra
    rrca
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
    ccf
    rra
    ccf
    rst $38
    rst $38
    rst $38
    ccf
    ld a, $ff
    ld a, [hl]
    cp $7e
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    db $fc
    cp $fc
    cp $fc
    cp $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$f0], a
    ldh [$f0], a
    ldh [$f0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    nop
    ret nz

    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    add b
    ld b, b
    add b
    ld b, b
    nop
    ret nz

    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    rlca
    cp $ff
    ld a, [$02ff]
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    dec b
    cp $06
    cp $fc
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    pop bc
    nop
    pop bc
    nop
    pop bc
    nop
    jp $f300


    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$fe]
    ldh a, [$f2]
    ldh [$f2], a
    ldh [$f2], a
    ldh [$f2], a
    ldh [$e6], a
    ldh [$e6], a
    ldh [$e6], a
    ldh [$e6], a
    ldh [$e6], a
    ret nz

    and $e0
    cp $f0
    cp $f8
    cp $f8
    cp $f8
    cp $f8
    cp $d0
    call c, $dcc0
    add b
    call nz, $c080
    add b
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
    nop
    nop
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
    inc d
    dec d
    ld d, $17
    jr jr_04a_7945

    ld a, [de]
    dec de
    dec de
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_04a_7957

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $06
    daa
    dec de
    dec de
    dec de
    jr z, jr_04a_7948

    ld b, $29
    ld a, [hl+]

jr_04a_7945:
    dec hl
    inc l
    dec l

jr_04a_7948:
    ld l, $2f
    jr nc, jr_04a_797d

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $06
    ld b, $37
    jr c, jr_04a_798f

    ld a, [hl-]

jr_04a_7957:
    dec sp
    inc a
    dec a
    rrca
    ld a, $3f
    ld b, b
    ld b, c
    rrca
    ld [hl], $06
    ld b, $42
    ld b, e
    ld b, $06
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    dec de
    ld c, c
    rrca
    rrca
    ld c, d
    ld c, e
    ld c, h

jr_04a_7973:
    ld c, l
    ld b, $06
    ld b, $4e
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e

jr_04a_797d:
    rrca
    ld d, h
    rrca
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld b, $5b
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    rrca
    ld h, c

jr_04a_798f:
    ld h, d
    ld d, l
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld b, $68
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
    ld b, $06
    ld b, $74
    rrca
    ld [hl], l
    db $76
    ld l, e
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld b, $7e
    ld a, a
    add b
    add c
    rrca
    add d
    add e
    add h
    add l
    ld b, $86
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    rrca
    rrca
    adc a
    sub b
    sub c
    sub d
    ld b, $93
    sub h
    sub l
    sub [hl]
    sub a
    rrca
    rrca
    rrca
    sbc b
    sbc c
    jr jr_04a_7973

    sbc e
    sbc h
    dec de
    sbc l
    sbc [hl]
    sbc a
    rrca
    and b
    and c
    rrca
    rrca
    rrca
    rrca
    rrca
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
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    xor l
    xor [hl]
    xor a
    dec de
    or b
    or c
    or d
    or e
    or h
    or l
    or [hl]
    adc e
    rrca
    rrca
    rrca
    rrca
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
    ld b, $06
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    jp z, $cccb

    call $cfce
    ret nc

    pop de
    ld c, h
    ld b, $06
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    ld b, $06
    ld b, $e0
    pop hl
    ld [c], a
    db $e3
    db $e4
    push hl
    rrca
    and $e7
    add sp, -$17
    ld [$06eb], a
    ld b, $06
    ld b, $ec
    db $ed
    xor $ef
    ldh a, [rIF]
    ld bc, $0501
    dec b
    rlca
    inc bc
    ld bc, $0101
    ld bc, $0607
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    inc bc
    inc b
    ld b, $01
    ld bc, $0106
    rlca
    inc bc
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld b, $02
    ld b, $04
    nop
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld b, $02
    ld b, $06
    ld b, $07
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    inc bc
    ld b, $01
    ld bc, $0100
    ld bc, $0000
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    rlca
    ld b, $01
    ld bc, $0101
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld bc, $0306
    ld bc, $0101
    ld bc, $0601
    nop
    nop
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0306
    inc bc
    inc bc
    inc bc
    ld bc, $0601
    ld bc, $0201
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0306
    inc bc
    inc bc
    inc bc
    ld bc, $0601
    ld bc, $0100
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0301
    ld bc, $0101
    ld bc, $0600
    ld bc, $0120
    ld bc, $0301
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0600
    nop
    nop
    ld bc, $0101
    inc bc
    inc bc
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld bc, $0000
    rlca
    ld bc, $0301
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    nop
    jr nz, jr_04a_7b1a

    nop

jr_04a_7b1a:
    ld [bc], a
    ld [bc], a
    inc bc
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
    ld bc, $0001
    ld [bc], a
    inc bc
    inc bc
    inc b
    inc b
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    inc b
    inc bc
    ld bc, $0100
    ld hl, $0000
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    inc b
    inc b
    inc bc
    nop
    ld b, $03
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    rlca
    ld bc, $0202
    nop
    ld bc, $0303
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0201
    rlca
    ld bc, $0000
    nop
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0502
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0200
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld b, b
    ccf
    jr nz, jr_04a_7bb8

    db $10
    rrca
    ld [$0707], sp
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    nop
    ld h, b
    ld h, [hl]
    rst $28
    rst $38
    rst $38
    rst $20
    rst $38

jr_04a_7bb8:
    cp b
    rst $20
    add [hl]
    ld sp, hl
    sub e
    db $fc
    inc de
    ld a, h
    dec bc
    ld a, h
    add hl, bc
    ld a, $04
    rra
    ld b, $0f
    inc bc
    rlca
    ld bc, $c003
    pop bc
    ldh [$e0], a
    ldh a, [$f0]
    ld a, b
    ld a, b
    jr c, jr_04a_7c0e

    inc e
    inc e
    inc e
    inc e
    inc c
    ld c, $07
    ld b, $01
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_04a_7c0e:
    add b
    add b
    add b
    add b
    add c
    add b
    add c
    add b
    add c
    add b
    ld bc, $8380
    add b
    add e
    add b
    add e
    add b
    add b
    add e
    ret nz

    rst $00
    ret nz

    rst $00
    ret nz

    rst $00
    ret nz

    rst $00
    ret nz

    rst $08
    ret nz

    rst $08
    ret nz

    rst $08
    rst $18
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$e0], a
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
    rst $38
    nop
    rst $38
    nop
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
    ret nz

    rst $38
    ldh [$3f], a
    ldh a, [$1f]
    ld hl, sp-$71
    db $fc
    rst $00
    cp $c3
    cp $73
    rst $38
    add hl, sp
    reti


    ccf
    add sp, $1f
    ld hl, sp+$07
    db $fc
    inc bc
    inc a
    jp $e39d


    adc l
    di
    dec c
    di
    ld bc, $03fe
    db $fc
    dec de
    ld h, h
    dec de
    ld h, h
    scf
    ld c, b
    dec hl
    call nc, $ff97
    db $fd
    cp $ff
    ld hl, sp-$01
    ldh a, [$7f]
    ld a, h
    ccf
    rra
    ccf
    rlca
    ccf
    ld bc, $001f
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
    rrca
    nop
    rrca
    ld [bc], a
    rrca
    inc bc
    rrca
    ld [bc], a
    rrca
    ld bc, $010f
    ld c, $01
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
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    inc bc
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
    nop
    rra
    add c
    ld a, [hl]
    rst $38
    ld a, b
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld bc, $01fe
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_04a_7d46:
    nop
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
    db $fc
    db $e3
    inc bc
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
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
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ld h, b
    add b
    jr nz, jr_04a_7d46

    ldh a, [rP1]
    ldh a, [rP1]
    ld [hl], b
    add b
    ldh a, [$80]
    ld hl, sp-$40
    ld hl, sp-$20
    cp b
    ld [hl], b
    call nc, $fc38
    nop
    cp $00
    rst $38
    rrca
    ld a, [hl]
    ld hl, sp-$01
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ret nz

    or b
    ldh a, [$2a]
    cp $17
    ld a, a
    rrca
    ccf
    dec bc
    rra
    dec de
    rra
    ld a, [de]
    rra
    ld a, [de]
    rra
    inc e
    rra
    rlca
    rrca
    rrca
    rrca
    ei
    rst $00
    ld a, a
    rst $38
    rst $38
    ccf
    cp $03
    db $fc
    add e
    db $fc
    add e
    rst $38
    pop hl
    rst $38
    di
    ld sp, $033b
    dec sp
    dec de
    ccf
    rra
    rra
    rra
    rra
    inc e
    ld a, $3c
    ld a, [hl]
    ld a, $7e
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
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
    inc b
    ei
    rrca
    ldh a, [$3f]
    ret nz

    cp a
    ld b, b
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
    ld hl, sp-$01
    rst $00
    rlca
    ret nz

    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
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
    ld bc, $0700
    nop
    rlca
    nop
    ld bc, $0700
    nop
    ld c, $00
    inc e
    nop
    jr nc, jr_04a_7e3a

jr_04a_7e3a:
    ld h, b
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
    ld hl, sp+$00
    db $fd
    add c
    jp $c7c3


    rst $00
    add a
    rst $00
    add [hl]
    add $8e
    adc $9e
    sbc $bc
    db $fc
    inc a
    db $fc
    rst $38
    rst $38
    di
    rst $38
    db $e3
    db $fc
    jp $e7fc


    ld hl, sp-$01
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

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
    cp $00
    pop bc
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    rst $38
    ccf
    ret nz

    ccf
    ret nz

    ccf
    rst $00
    ccf
    call nz, $c43f
    ccf
    call nz, $c43f
    ccf
    call nz, $c43f
    ccf
    call nz, $c43f
    ccf
    call nz, $c73f
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    jp $ff3f


    ccf
    rst $38
    rst $38
    ccf
    cp $3f
    ldh [$1f], a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc [hl]
    rst $38
    call z, $ccff
    rst $38
    call nz, $c4ff
    rst $38
    call nz, $c4ff
    rst $38
    call nz, $c4ff
    rst $38
    call nz, $c4ff
    rst $38
    call nz, $e4ff
    rst $38
    db $e4
    rst $38
    db $e4
    rst $38
    db $e4
    rst $38
    db $e4
    rst $38
    db $f4
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
    nop
    ld bc, $0302
    inc c
    inc bc
    ld e, $07
    ld a, [hl-]
    rlca
    ld a, [$fb07]
    rrca
    di
    db $f4
    rrca
    ld a, [de]
    dec c
    inc de
    inc de
    rrca
    inc bc
    rrca
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca
    rrca
    ld e, $1e
    inc a
    inc a
    ld a, b
    ld a, b
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    ret nz

    nop
    ldh [rP1], a
    ld hl, sp+$00
    db $fc
    nop
    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    sbc $ff
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
    nop
    rst $38
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
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    ldh [$1f], a
    rra
    ldh [$e0], a
    rra
    rra
    ldh [rIE], a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    pop hl
    rst $38
    and c
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ldh [rNR23], a
    inc b
    ld hl, sp+$14
    add sp, -$0c
    ld [$b048], sp
    ld sp, $c3c1
    inc bc
    ld b, [hl]
    add [hl]
    adc h
    ld c, h
    ld e, h
    db $fc
    db $fc
    db $fc
    ldh a, [rSVBK]
    ldh [$e0], a
    ret nz

    ret nz

    add b
    add b
    ret nz

    nop
    ldh a, [rP1]
    cp $80
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    jr nc, @+$01

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
    ret nz

    ccf
    ld e, a
    and b
    ld e, a
    and b
