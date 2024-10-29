SECTION "ROM Bank $079", ROMX[$4000], BANK[$79]

    cp $cd
    db $fd
    adc $c1
    cp $d7
    db $ec
    ld l, a
    db $f4
    ld l, e
    db $f4
    ld l, c
    or $63
    db $fc
    ld h, e
    db $fc
    inc sp
    db $fc
    inc [hl]
    ei
    inc a
    ei
    inc [hl]
    ei
    inc sp
    db $fc
    db $76
    ld sp, hl
    cp e
    db $fc
    ld e, e

jr_079_4021:
    db $fc
    cp e

jr_079_4023:
    db $fc
    ld e, a
    ld hl, sp-$41
    ld hl, sp+$77
    ld hl, sp-$49
    ld hl, sp+$36
    ld sp, hl
    di
    cp h
    ld h, e
    db $fc
    and $79
    ld [c], a
    ld a, l
    ld [c], a

jr_079_4037:
    ld a, l
    ld h, e
    db $fc
    ld [c], a
    db $fd
    rst $00
    ld hl, sp-$31
    ldh a, [$df]
    ldh [$fe], a
    pop bc
    db $fd
    jp nz, $c9b6

    cp [hl]
    pop bc
    cp c
    rst $00
    adc b
    rst $30
    ldh a, [$8f]
    jr nc, jr_079_4021

    jr nc, jr_079_4023

    ld h, b
    sbc a
    jr nz, jr_079_4037

    ld hl, $03de
    cp $81
    ld a, [hl]
    ld h, l
    sbc d
    adc d
    rst $38

jr_079_4062:
    add [hl]
    rst $38
    inc b
    rst $38

jr_079_4066:
    inc b
    rst $38

jr_079_4068:
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $fffe
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp h
    rst $38
    inc a
    rst $38
    jr c, @+$01

    cp b
    rst $38
    ld e, b
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
    nop
    ld [hl], b
    add b
    ld [hl], b
    add b
    ld [hl], b
    add b
    ld [hl], b
    add d
    ld [hl], b
    adc b
    jr nc, jr_079_4062

    ld [hl], b
    adc b
    jr nc, jr_079_4066

    jr nc, jr_079_4066

    jr c, jr_079_4062

    ld a, b
    ret nz

    jr c, jr_079_4066

    jr c, jr_079_4068

    ld a, b
    jp nz, $c03c

    db $fc
    ld b, c
    inc e
    pop hl
    call c, Call_000_3c61
    ld [c], a
    sbc h
    ld h, c
    ret nz

    dec a
    ret nz

    inc a
    ret nc

    dec a
    ldh a, [$3d]
    or b
    ld a, l
    or b

Call_079_40bf:
Jump_079_40bf:
    ld a, [hl]
    and b
    ld a, a
    sbc d
    ld a, a
    sub d
    rst $38
    inc c
    rst $38
    ld c, [hl]
    cp a
    ld l, a
    sbc a
    rrca

jr_079_40cd:
    rst $38
    ld a, l
    sbc a
    dec e
    ei
    ld d, b
    cp a
    jr jr_079_40cd

    adc a
    ld [hl], b
    adc a
    ld [hl], b
    rst $08
    ld [hl], b
    cp $41
    rst $38
    ld b, b
    ld c, [hl]
    pop af
    db $dd
    ld [c], a
    db $dd
    ld [c], a

jr_079_40e6:
    sbc l
    ld [c], a
    sbc a
    ldh [$bf], a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    ret nz

    rst $38
    call z, $80ff
    rst $38
    add c

jr_079_40f7:
    cp $80
    rst $38
    add d
    db $fd
    add b
    rst $38
    nop

Jump_079_40ff:
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

jr_079_4109:
    rst $38
    cpl
    rst $38
    ld c, a
    rst $38
    rst $38
    rst $38
    push af
    ld a, [bc]
    ld [c], a
    dec e
    ret nz

    ccf
    jr nz, jr_079_40f7

    inc hl
    call c, $fd02
    ld b, d
    cp l
    add e
    ld a, h
    rst $28
    jr nc, jr_079_4109

    add hl, sp
    rst $38
    jr nz, jr_079_40e6

    ld h, b
    cp a
    ld h, b
    sbc a
    ld h, b
    sub a
    ld l, b
    rst $28
    ld d, b
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    cp a
    ret nz

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
    ld a, a
    add b
    ld a, [hl]
    add c
    rst $38
    nop
    sbc $21
    cp $01
    jp c, $b825

    ld b, a
    sbc $21
    sbc $21
    cp $01
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
    ld d, b
    xor a
    ld b, a
    cp [hl]
    rst $20
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    nop

Jump_079_417d:
    rst $38
    ld [bc], a
    rst $38
    ei
    inc b
    rst $18
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
    adc c
    nop
    nop
    nop
    add b
    nop
    ld [de], a
    nop
    add d
    nop
    nop
    nop
    sub d
    nop
    ld [bc], a
    nop
    sub c
    nop
    ld a, [bc]
    nop
    jr nz, jr_079_41a9

jr_079_41a9:
    ld c, d
    nop
    ld b, d
    nop
    ld c, b
    nop
    jr nz, jr_079_41b1

jr_079_41b1:
    ld [$6200], sp
    nop
    ld c, b
    nop
    nop
    nop
    ld h, l
    nop
    add c
    nop
    ld c, c

Jump_079_41be:
    nop
    xor a
    nop
    rst $38
    ld bc, $01ff
    rst $38
    jr nz, @+$01

    ld hl, $00ff
    rst $38
    ld [$faff], sp
    rst $38

Jump_079_41d0:
    ld h, [hl]
    rst $38
    db $10
    rst $38
    ld [$6df7], sp
    sub d
    ld l, [hl]
    sub c
    cp $01
    rst $38
    nop
    rst $28
    db $10
    rra
    rst $38

jr_079_41e2:
    ld de, $13ff
    rst $38
    ld de, $10ff
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
    add h
    ld a, e
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

Jump_079_41ff:
    rst $38
    rst $18
    jr nz, jr_079_41e2

    jr nz, @-$1f

    jr nz, jr_079_4222

    db $e4
    db $10
    rst $28
    db $10
    rst $28
    jr nz, @+$01

    nop
    rst $38
    ccf
    ret nz

    ccf
    ret nz

    cp a
    ld b, b
    ld a, $c1
    ld a, $c1
    ld e, $e1
    cp [hl]
    ld b, c
    or $49
    nop
    rst $38

jr_079_4222:
    ld b, $f9
    ld b, $f9
    xor [hl]
    ld d, c
    sbc $61
    sbc a
    ld h, b
    ld a, $c1
    rra
    ldh [rNR24], a
    and $3f
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    dec a
    jp nz, $c23d

Jump_079_423c:
    dec e
    ld [c], a
    ld e, l
    and d
    dec e
    ld [c], a
    ld e, a
    and b
    ld l, l
    sub d
    db $fd
    add d
    ld a, a
    add b
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
    rst $38
    nop
    rst $38
    nop
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
    ei
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    di
    rst $38
    ld a, [c]
    rst $38
    pop hl
    rst $38
    ldh [rIE], a
    add sp, -$01
    ldh [rIE], a
    ld d, b

Jump_079_4275:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    or a
    ld c, b
    rst $30
    ld [$40bf], sp
    or a
    ld c, b
    ei
    inc b
    or $09
    nop
    nop
    nop
    ld h, h
    nop
    ld h, c
    nop
    ld e, [hl]
    nop
    and d
    nop
    inc l
    nop
    ld [hl+], a
    nop
    sub h
    nop
    ld c, [hl]
    nop
    inc b
    nop
    ld h, [hl]
    nop
    dec h
    nop
    ld h, h
    nop
    ld c, c
    nop
    dec a
    nop
    add hl, bc
    nop
    add hl, bc
    ld d, b
    inc b
    ld d, b
    ld bc, $0350
    nop
    add hl, hl
    nop
    inc sp
    ld bc, $007b
    ld a, a
    nop
    cp a
    ld bc, $10ff
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld de, $20ff
    rst $38
    nop
    rst $38
    inc d
    rst $38
    sbc h
    rst $28
    cp [hl]
    rst $28
    ld h, b
    sbc a
    add b
    ld a, a
    and b
    ld e, a
    and $19
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
    ld c, $ff

Jump_079_42e6:
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jp c, $ad2f

    ld e, a
    rst $20
    rra
    ld [bc], a
    ld a, a
    add b
    ld a, a
    inc b
    rst $38
    inc bc
    rst $38
    inc bc

Jump_079_42fd:
    rst $38
    inc bc
    rst $38
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    ld b, b
    cp a
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    db $fc
    inc bc
    ld e, l
    and d
    ld a, l
    add d
    ld a, l
    add d
    dec a
    jp nz, $e21d

    dec a
    jp nz, $827d

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
    ld a, a
    add b
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
    rst $18
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    pop de
    rst $38
    jp nz, Jump_079_40ff

    rst $38
    ld b, c
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
    nop
    rst $38
    ld b, b
    rst $38
    ld h, e
    sbc a
    ld h, e
    sbc a
    ld [c], a
    rra
    ld h, d
    sbc a
    ldh [$9f], a
    ld h, b
    sbc a
    nop
    nop
    nop
    adc l
    nop
    rst $08
    ld bc, $019d
    cp l
    ld bc, $017b
    add hl, bc
    ld bc, $015f
    xor l
    add hl, bc
    ld c, l
    ld bc, $017f
    cp l
    ld bc, $019f
    ld e, a
    ld bc, $01bf
    cp a
    ld bc, $00ff
    rst $38
    ld [bc], a
    rst $38
    ld bc, $03ff
    rst $38
    add hl, bc

jr_079_43b7:
    rst $38
    add hl, bc
    rst $38
    inc bc
    rst $38
    ld bc, $03ff
    rst $38
    ld de, $02ff
    rst $38
    ld bc, $11ff
    rst $38
    and e
    rst $38
    inc bc
    rst $38
    rst $38

jr_079_43cd:
    rst $38
    add h

jr_079_43cf:
    rst $38
    push hl
    ei
    add hl, bc
    or $00
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld h, b
    sbc a
    ld [hl], b
    adc a
    add h
    rst $38
    add h
    rst $38
    nop
    rst $38
    jr nc, jr_079_43b7

    and b
    ld e, a
    cp b
    ld b, a
    jr nz, jr_079_43cd

    jr nz, jr_079_43cf

    rst $38
    rst $38
    rst $20
    rst $38
    rst $28
    rst $38
    ld h, a
    rst $38
    rst $20
    rst $38
    ld [hl], a
    rst $38

Jump_079_43fc:
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
    cp $01

jr_079_440a:
    di
    inc c
    pop af
    ld c, $f8
    rlca
    ld hl, sp+$07
    cp b
    ld b, a
    ld a, b
    add a
    db $fc
    rlca
    ld hl, sp+$07
    ld sp, hl
    ld b, $fd
    ld [bc], a
    db $fd
    ld [bc], a
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fc
    inc bc
    cp $01
    rst $38
    ld bc, $01ff
    cp $01
    cp $01
    rst $18
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
    ld a, [hl]
    add c
    xor a
    ld d, b
    rst $18
    jr nz, jr_079_440a

    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    sbc [hl]
    ld h, c
    adc [hl]
    ld [hl], c
    adc l
    ld [hl], d
    adc e
    ld [hl], h
    swap h
    ret


    ld [hl], $c9
    ld [hl], $d3
    inc l
    jr nz, @+$01

    jr nz, @+$01

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
    ret nz

    ccf
    ld e, a
    rst $38
    ccf
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    rra
    rst $38
    rrca
    rst $38
    ld a, [hl-]
    ldh a, [$2f]
    ldh a, [$2f]
    ldh a, [$3e]
    ldh [$3e], a
    ldh [$3e], a
    ldh [$3e], a
    ldh [$3e], a
    ldh [$3e], a
    ldh [$7e], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3d], a
    ldh [$3f], a
    ldh [$3e], a
    ldh [$7e], a
    ldh [$3e], a
    ldh [$7e], a
    ldh [$2e], a
    ldh a, [$bf]
    ldh a, [$6f]
    ldh a, [$af]
    ldh a, [$ad]
    ldh a, [$3e]
    ldh [$0e], a
    ldh a, [$de]
    ldh [$b6], a
    add sp, -$4d
    db $e4
    daa
    ldh a, [$ab]
    ldh a, [$85]
    ld hl, sp+$29
    db $f4
    ld c, $f0
    adc e
    db $f4
    adc a
    db $f4
    ld c, e
    db $f4
    sub e
    db $fc
    add l
    ld a, [$fc33]
    ld sp, $4bfe
    cp h
    ld [hl], e
    sbc h
    ld a, [hl+]
    db $dd
    dec sp
    call z, $af54
    dec b
    rst $38
    adc l
    rst $30
    add d
    rst $38
    rlca
    ei
    or l
    ld c, e
    cp d
    ld b, l

jr_079_44e6:
    db $db
    inc h
    jp c, $ff25

    ld bc, $01fe
    rst $38
    nop
    rst $28
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

jr_079_44fb:
    nop
    ld a, a
    add b
    ld a, l
    add d
    dec a
    jp nz, Jump_079_41be

    ld a, $c1
    cp h
    ld b, e
    sbc a
    ld h, b
    rst $18
    jr nz, jr_079_452c

    ldh [$1f], a
    ldh [$8f], a
    ld [hl], b
    swap h
    ld l, a
    sub b
    push bc
    ld a, [hl-]
    rst $28
    jr jr_079_44fb

    rra
    ld hl, sp+$0f
    or b
    ld c, a
    ld hl, sp+$07
    ld hl, sp+$07
    ld sp, hl
    ld b, $f8
    rlca
    db $fc
    inc bc
    db $fc
    inc bc

jr_079_452c:
    db $fd
    ld [bc], a
    ld a, a
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b

jr_079_453c:
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    nop
    cp a
    ld b, b
    rra
    ldh [$9f], a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    rra
    ldh [$9f], a
    ld h, b
    rra
    ldh [$0d], a
    ld a, [c]
    dec l
    jp nc, $d02f

    adc a
    ld [hl], b
    rst $08
    jr nc, jr_079_453c

    jr nz, jr_079_44e6

    ld a, b
    rst $30
    ld [$28d7], sp
    rst $30
    ld [$0df2], sp
    ei
    inc b
    ei
    inc b
    ei
    inc b
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
    rst $28
    rst $38
    cp a
    rst $38
    and a
    ld e, h
    inc [hl]
    ld c, a
    ld l, l
    ld d, $75
    ld c, $74
    rrca
    inc a
    ld b, a
    dec [hl]
    ld c, [hl]
    scf
    ld c, h
    ld h, $5d
    inc bc
    ld a, h
    add e
    ld a, h
    jp $837c


    ld a, h
    adc e
    ld a, h
    add d
    ld a, l
    add a
    ld a, b
    jp $8b7c


    ld a, h
    adc a
    ld a, b
    adc e
    ld a, h
    adc e
    ld a, h
    ld e, e
    xor h
    ld c, e
    cp h
    cp a
    ld c, b
    ld e, a
    xor b
    sbc a
    ld l, b
    rst $38
    ld [$08ff], sp
    ld d, a
    xor b
    scf
    ret z

    ld h, a
    sbc b
    scf
    ret z

    rst $38
    nop
    rst $38
    nop
    ld b, $fb
    ld c, [hl]
    or c
    ld a, [bc]
    push af
    db $db
    or l
    rst $00
    cp c
    adc c
    rst $30
    xor d
    push de
    ld a, [bc]
    push af
    dec sp
    push de
    ld a, [hl-]
    push de

jr_079_45d8:
    ld a, [de]

jr_079_45d9:
    push af
    inc e
    di
    adc h
    di
    call c, $88f7
    rst $30
    ld e, $f7
    dec b
    ld a, [$00ff]
    ld b, b
    cp a
    nop
    rst $38

jr_079_45ec:
    ld [hl], $c9
    ld b, [hl]
    cp c
    inc a
    jp Jump_079_40bf


    cp a
    ld b, b
    rst $18
    jr nz, jr_079_45d8

    jr nz, @-$16

    rla
    ldh [$1f], a
    rst $30
    ld [$0ff0], sp
    ei
    inc b
    db $db
    inc h
    ldh a, [rIF]
    push af
    ld a, [bc]
    jp hl


    ld d, $78
    add a
    ld a, h
    add e
    jr c, jr_079_45d9

    ld [$84f7], sp
    ld a, e
    ld b, h
    cp e
    nop
    rst $38

jr_079_461a:
    add b
    ld a, a
    nop
    rst $38
    ld [de], a
    db $fd
    add c
    ld a, [hl]
    jp nz, Jump_079_673d

    sbc b

jr_079_4626:
    db $d3
    inc l

jr_079_4628:
    db $e3
    inc e

jr_079_462a:
    ld b, c
    cp [hl]
    ld a, c
    add [hl]
    ld sp, hl
    ld b, $f8
    rlca
    ret nc

    cpl
    ld [de], a
    db $ed
    sbc b
    rst $20

jr_079_4638:
    jr c, @-$37

    inc d
    db $eb
    ld sp, $afce
    ld d, b
    cp h
    ld b, e
    sub [hl]
    ld l, c
    rst $18
    jr nz, jr_079_4626

    jr nz, jr_079_4628

    jr nz, jr_079_462a

    jr nz, jr_079_45ec

    ld h, b
    ld e, a
    and b
    rst $08
    jr nc, jr_079_461a

    jr c, jr_079_4638

    inc e
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    rst $30
    ld [$0af5], sp
    rst $38
    nop
    rst $38
    nop
    db $e3
    inc e
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sub $6b
    adc $73
    and [hl]
    ld e, e
    cp [hl]
    ld b, e
    sbc a
    ld h, d
    ld l, $d3
    ld [$59f7], sp
    and $59
    and $f8
    ld b, a
    ld a, [$f845]
    ld b, a
    xor a
    ld d, h
    rst $28
    ld d, h
    dec h
    sbc $af
    call nc, $dc27
    dec a
    add $34
    rst $08
    ld d, b
    xor a
    and b
    ld e, a
    ld l, b
    sbc a
    ld a, b
    adc a
    db $dd
    xor a
    ld d, d
    xor l
    ret c

jr_079_46a3:
    xor a
    ret c

    xor a
    ld e, c
    xor [hl]
    ret z

    cp a
    ld c, b
    cp a
    ld c, c
    cp [hl]
    ld a, [$fb07]
    ld b, $c7
    ld a, [hl-]
    ld d, d
    cp a
    ld d, [hl]
    cp e
    ld d, d

Jump_079_46b9:
    cp a
    or h
    ld e, e
    ld [hl], $db
    sub b
    ld a, a
    add e
    ld a, [hl]
    ld d, d
    cp a
    ld b, b
    cp a
    ld b, h
    cp a
    ld b, h
    cp a
    ld l, h
    or a
    ld h, l
    cp a
    inc a
    rst $30
    xor h
    ld d, a
    jr c, jr_079_46a3

    cp b
    ld b, a
    ld a, [$5e07]
    db $e3
    rrca
    pop af
    and a
    ld e, c
    rrca
    ld hl, sp+$5b
    xor h
    jp hl


    ld e, $79
    adc [hl]
    add sp, $1f
    add sp, $1f
    dec l
    sbc $29
    sbc $6a
    sbc l
    ld [hl+], a
    db $dd
    ld h, d
    sbc l
    jp nz, Jump_079_663d

    sbc l
    ld b, d
    cp l
    sub $3d
    ret c

    scf
    ret nc

    ccf
    db $10
    rst $38
    ret nz

    ld a, a
    ld [bc], a
    rst $38
    ld l, b
    cp a
    ld e, [hl]
    cp e
    dec sp
    sbc $2b
    sbc $1d
    ld [$ae5b], a
    or h
    ld c, a
    adc l
    db $76
    db $eb
    ld d, $e6
    dec de
    db $e4
    dec de
    ei
    dec b
    ei
    dec b
    push af
    ld a, [bc]
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ld a, [hl]
    add c
    ld a, d
    add l

jr_079_472a:
    ld a, [hl]
    add c
    ld a, a
    add b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    ld e, a
    and b
    sbc a
    ld h, b
    rst $18
    jr nz, jr_079_472a

    db $10
    rst $18
    jr nz, @+$01

    nop
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$04fb], sp
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    cp $01
    cp $01
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
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    nop
    sub e
    ld a, l
    and l
    ld a, e
    ret


    ld [hl], a
    pop af
    ld a, a
    jp c, $da77

    ld [hl], a
    ld e, [hl]
    di
    ld a, d
    rst $30
    sub $fb
    ld e, [hl]
    di
    xor [hl]
    di
    xor d
    rst $30
    and b
    rst $38
    ld hl, $a8fe
    rst $30
    and b
    rst $38
    and h
    rst $38
    ld [hl], h
    rst $28
    inc h
    rst $38
    db $10
    rst $28
    db $10
    rst $28
    sub c
    ld l, [hl]
    ld d, $e9
    inc l
    db $db
    ld l, $d9
    ei
    ld c, l
    rst $30
    ld c, c
    ld l, e
    db $dd
    jp $c97d


    ld a, a
    ld b, h
    ei
    inc b
    ei
    add [hl]
    ei
    add $bb
    adc $b3
    xor $93
    xor [hl]
    db $d3
    inc a
    jp $a7da


    inc e
    rst $20
    inc e
    rst $20
    db $10
    rst $28
    sub h
    ld l, a
    ld d, b
    xor a
    sub $2d
    pop de
    ld l, $d9
    ld h, $d1
    ld l, $75
    adc d
    dec [hl]
    jp z, $ca35

    cp l
    ld c, d
    or l
    ld c, d
    rst $30
    ld [$c03f], sp
    or $89
    db $eb
    ld d, h
    adc [hl]
    ld [hl], c
    ld [$fa35], a
    dec d
    and $19
    ld a, b
    adc a
    add hl, sp
    rst $00
    add hl, sp
    rst $00
    inc hl
    rst $38
    rst $30
    rst $38
    or a
    db $fd
    dec sp
    db $fc
    cp a
    db $fc
    or a
    db $fc
    scf
    cp $7f
    cp $03
    rst $38
    inc bc
    rst $38
    or e
    ld e, [hl]
    add a
    ld a, a
    adc $7f
    ld c, $ff
    ld c, $ff
    ld l, [hl]
    rst $38
    ld c, $ff
    inc b
    rst $38
    inc e
    rst $38
    call c, $deff
    rst $38
    db $dd
    rst $38
    ld e, a
    rst $38
    ld e, c
    rst $38
    db $db
    rst $38
    ld e, e
    rst $38
    ld a, e
    rst $38
    ld a, [$bb7f]
    ld a, a
    ld a, [hl-]
    rst $38
    inc [hl]
    rst $38
    ld [hl], $ff
    cp c
    ld c, a
    cp c
    ld e, a
    call c, $de2f
    cpl
    adc $3f
    xor $13
    xor $17
    rst $30
    dec bc
    rst $30
    dec bc
    ei
    dec b
    ei
    dec b
    db $fd
    ld [bc], a
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
    rst $18
    jr nz, @+$01

    nop
    rst $28
    db $10
    rst $28
    db $10
    rst $38
    nop
    rst $30
    ld [$ff22], sp
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    inc hl

jr_079_4877:
    cp $20

jr_079_4879:
    rst $38
    dec h

jr_079_487b:
    cp $23

jr_079_487d:
    db $fc
    daa

jr_079_487f:
    db $fc
    ld c, a

jr_079_4881:
    db $f4
    ld c, a
    db $f4
    ld c, e
    db $f4
    ld c, a
    ldh a, [rOBP1]
    or $de
    pop hl
    rra
    ldh [$bf], a
    jp $c3be


    cp [hl]
    jp $c3be


    cp h
    rst $00
    sbc h
    rst $20
    sbc h
    rst $20
    cp h
    rst $00
    inc a
    rst $00
    inc e
    rst $20
    inc a
    rst $00
    jr @-$0f

    jr c, jr_079_4877

    jr c, jr_079_4879

    jr c, jr_079_487b

    jr c, jr_079_487d

    jr c, jr_079_487f

    jr c, jr_079_4881

    ld [hl], b
    sbc a
    pop af
    sbc [hl]
    ld [hl], c
    sbc [hl]
    pop af
    sbc [hl]
    ld [hl], b
    sbc a
    ld [hl], b
    sbc a
    ld [hl], b
    sbc a
    ldh a, [$1f]
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$7f], a
    ldh [$7f], a
    ldh [$7f], a
    ldh [$7f], a
    ret nz

    ld a, a
    ld b, b
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    add b
    rst $38
    add b
    rst $38
    and b
    rst $38
    db $10
    rst $38
    jr nz, jr_079_4937

    and b
    cp a
    jr nz, jr_079_493b

    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ccf
    jr nz, jr_079_4943

    add b
    ccf
    ret nz

    ld a, a
    ret nc

    rst $38
    jp nz, $80ff

    rst $38
    and b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ld de, $59ff
    rst $38
    ld b, b
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc de
    rst $38
    dec bc
    rst $38
    adc c
    rst $38
    dec b
    rst $38
    inc b
    rst $38
    ld c, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]

jr_079_4937:
    rst $38
    inc d
    rst $38
    ld l, [hl]

jr_079_493b:
    rst $38
    ld l, $ff
    inc l
    rst $38
    inc e
    rst $38
    ld a, [de]

jr_079_4943:
    rst $38
    ld e, b
    rst $38
    jp c, $f2ff

    rst $38
    ld h, b
    rst $38
    rst $20
    ccf
    db $e4
    ccf
    ld [hl-], a
    rst $38
    ret c

    ccf
    ld hl, sp+$0f
    db $ec
    rla
    db $ec
    rra
    call c, $de2f
    cpl
    xor $17
    db $fc
    rlca
    rst $38
    rrca
    rst $38
    dec bc
    ei
    dec b
    ei
    inc b
    ei
    dec b
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ld l, e
    sub h
    add sp, $17
    ret z

    scf
    rst $10
    dec l
    db $e3
    dec a
    rst $30
    add hl, hl
    rst $30
    add hl, hl
    or [hl]
    ld l, c
    ld [hl], d
    rst $38
    ld h, d
    rst $38
    ld l, d
    rst $38
    ld a, [$faff]
    rst $38
    db $fc
    rst $38
    inc e
    rst $38
    ld [hl], b
    adc a
    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
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
    add c
    ld a, [hl]
    inc b
    ei
    dec b
    ld a, [$ff00]
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    inc b
    ei
    add hl, bc
    or $05
    ld a, [$fc03]
    add e
    db $fc
    dec bc
    db $f4
    inc bc
    db $fc
    ld b, e
    cp h
    inc bc
    db $fc
    ld d, c
    xor [hl]
    add hl, bc
    or $1e
    pop hl
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [$0b]
    db $f4
    rrca
    ldh a, [rNR34]
    pop hl
    ld a, [bc]
    push af
    ld b, $f9
    ld a, [de]
    push hl
    dec c
    ld a, [c]
    ld bc, $11fe
    xor $15
    ld [$ef10], a
    ld [bc], a
    db $fd
    ld bc, $02fe
    db $fd
    ld [bc], a
    db $fd
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
    ld bc, $01fe
    cp $00
    rst $38
    inc bc
    db $fc
    inc bc
    db $fc
    ld b, d
    db $fd
    add b
    rst $38
    add b
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
    jr nz, @+$01

    add b
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    sub b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld bc, $09ff
    rst $38
    ld hl, $33ff
    rst $38
    and e
    rst $38
    di
    rst $38
    jp $e3ff


    cp $57
    cp $17
    db $fc
    rra
    db $fc
    ccf
    db $fc
    cpl
    db $fc
    ccf
    ld hl, sp+$3f
    ld hl, sp-$44
    ei
    rst $38
    db $fd
    db $fd
    ei
    db $ed
    rst $30
    db $eb
    rst $30
    ld [c], a
    rst $38
    or $ef
    cp [hl]
    add e
    ld a, $83
    rst $38
    ld [bc], a
    ei
    ld b, $7b
    ld b, $7d
    ld b, $fd
    ld b, $fd
    ld b, $fd
    ld b, $f7
    inc c
    di
    inc c
    ei
    inc c
    rst $38
    ld [$08fe], sp
    rst $30
    ld [$08f7], sp
    db $10
    rst $38
    ret nz

    ccf
    db $fc
    inc bc
    rst $38
    ldh [$bf], a
    ld hl, sp-$75
    rst $38
    adc b
    rst $38
    ret nc

    rst $38
    sbc e
    ld h, h
    ld a, b
    add a
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ld d, a
    xor b
    ld [hl], a
    adc b
    ld a, a
    add b
    ccf
    ret nz

    ld [hl], a
    adc b
    ld a, a
    add b
    ld a, [hl]
    add c
    ld a, h
    add e
    ld hl, sp+$07
    ldh a, [rIF]
    pop af
    ld c, $71
    adc [hl]
    ld [hl], e
    adc h
    di
    inc c
    db $db
    inc h
    db $db
    inc h
    ei
    inc b
    ei
    inc b
    cp e
    ld b, h
    cp a
    ld b, b
    ccf
    ret nz

    rrca
    ldh a, [$8f]
    ld [hl], b
    db $e3
    inc e
    pop af
    ld c, $f8
    rlca
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
    ld a, a
    add b
    ccf
    ret nz

    and b
    rst $38
    and b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add c
    cp $81
    cp $81
    cp $01
    cp $83
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld b, $f9
    ld b, $f9
    ld b, $f9
    ld b, [hl]
    ld sp, hl
    db $ec
    di
    call z, $8cf3
    di
    adc b
    rst $30
    ret c

    rst $20
    ld hl, sp-$19
    ld hl, sp-$19

jr_079_4b1e:
    ldh a, [$ef]
    ldh a, [$cf]
    ldh a, [$cf]
    ldh [$df], a
    ldh [$df], a
    ldh [$9f], a
    pop bc
    cp a
    pop de
    cp a
    sbc c
    rst $38
    rrca
    adc l
    ld c, l
    rlca
    ld h, $83
    nop
    jp Jump_079_41d0


    ld l, c
    ret nz

    jr c, jr_079_4b1e

    or h
    ldh [$f8], a
    ret nz

    ld [hl], b
    ret z

    db $fc
    adc b
    ld [$fc9c], a
    sbc d
    push af
    ld a, [de]
    call nc, $e03b
    ccf
    ld [c], a
    dec a
    add d
    ld a, l
    pop bc
    ld a, [hl]
    db $eb
    ld a, h
    ld b, e
    db $fc
    ld b, c
    cp $10
    rst $38
    and b
    rst $18
    and h
    db $db
    sub c
    xor $17
    add sp, $06
    ld sp, hl
    sub a
    ld l, c
    rla
    jp hl


    add hl, de
    rst $20
    sub a
    ld l, e
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    ei
    inc b
    ei
    inc b
    rst $38
    nop
    rst $30
    ld [$08f7], sp
    di
    inc c
    di
    inc c
    push hl
    inc e
    db $e3
    inc e
    ei
    inc d
    rst $38
    db $10
    xor $10
    db $10
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    and b
    ld a, a
    ldh [$1f], a
    db $fc
    inc bc
    rst $38
    ret nz

    rra
    ld hl, sp-$04
    inc bc
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
    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b

jr_079_4bb5:
    rst $38
    add b

jr_079_4bb7:
    rst $38
    add b
    rst $38
    ld bc, $01fe

Call_079_4bbd:
    cp $01
    cp $fe
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
    ld sp, hl
    rst $38
    ld c, $f1
    ld c, $f1
    ld c, $f1
    inc c
    di
    inc e
    db $e3
    inc e
    db $e3

jr_079_4bdc:
    inc e
    db $e3
    sbc b
    rst $20
    ld a, b
    rst $00
    ld a, b
    rst $00
    jr nc, jr_079_4bb5

    jr nc, jr_079_4bb7

    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    pop bc
    ccf
    pop bc
    ccf
    jp $833f


    ld a, a
    add d
    ld a, a
    add [hl]
    ld a, a
    ld b, $ff
    ld b, $ff
    inc b
    rst $38

jr_079_4c08:
    inc c
    rst $38

jr_079_4c0a:
    inc c
    rst $38
    inc c
    rst $38
    ld [$ebff], sp
    jr jr_079_4c0a

    jr jr_079_4c94

    db $10
    rst $18
    jr nc, jr_079_4c08

    jr nc, @+$01

    jr nz, jr_079_4bdc

    ld h, b
    cp a
    ld h, b
    rst $18
    ld h, b
    rst $38
    ld b, b
    ld a, a
    ret nz

    rst $38
    ret nz

    cp a
    ret nz

    rst $38
    add b
    rst $38
    add b
    ld a, e
    add b
    ld a, a
    add b
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
    ccf
    pop bc
    rra
    ld h, c
    and e
    ld a, a
    ld a, [c]
    ccf
    ld a, [$ce1f]
    rra
    db $f4

jr_079_4c49:
    rrca
    cp $07
    ld a, [$7f07]
    add e
    pop bc
    ld bc, $00c0
    ldh [rP1], a
    ret nc

    jr nz, jr_079_4c49

    jr nz, @-$06

    jr nz, @+$5a

    and b
    call c, Call_079_5e60
    ldh [$be], a
    ret nz

    cp a
    ret nz

    rst $30
    adc b
    scf
    ret z

    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    ld bc, $01ff
    cp $01
    ld sp, hl
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    pop af
    ld b, $ff
    inc b
    cp $04
    db $fd
    inc b
    or a

jr_079_4c89:
    ld [$087f], sp
    rst $30
    ld [$08b1], sp
    db $10
    rst $38
    db $10
    rst $38

jr_079_4c94:
    db $10
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ret nz

    ccf
    db $fc
    rlca
    cp $03
    ld a, h
    rst $00
    inc a
    rst $00
    inc a
    rst $00
    inc a
    rst $00
    ld a, h
    adc a
    ld a, b
    adc a
    ld a, b
    adc a
    ldh a, [$8f]
    ld hl, sp+$1f
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$3f]
    ldh [$3f], a
    ldh [$3f], a
    ret nz

    ld a, a
    pop bc
    ld a, a
    add c
    ld a, a
    add c
    rst $38

jr_079_4cc8:
    inc bc
    rst $38
    ld [bc], a
    rst $38
    add d
    rst $38
    ld b, $ff
    ld a, [c]
    inc b
    db $fc
    inc b
    db $fc
    nop
    db $fc
    nop
    ld a, h
    ld [$08b0], sp
    ret nc

    ld [$10e8], sp
    jr nz, jr_079_4cf2

    and b
    db $10
    ld d, b
    jr nz, jr_079_4cc8

    jr nz, jr_079_4c89

    ld b, b

jr_079_4cea:
    ld h, b
    ld b, b
    ret nz

    ld b, b
    ld b, b
    add b
    ret nz

    add b

jr_079_4cf2:
    ld b, b
    add b
    nop
    add b
    nop
    add b
    add b
    nop
    and b
    nop
    nop
    nop
    ld bc, $4100
    nop
    ret z

    ld bc, $01e2
    jp $c101


    ld [bc], a
    rst $38
    nop
    rst $28
    nop
    jp nz, $f601

    ld bc, $01f6
    db $ed
    ld [bc], a
    db $fd
    ld [bc], a
    cp $00
    di
    inc b
    rst $30
    inc b
    rst $18
    nop
    and a
    ld [$08f4], sp
    db $fc
    nop
    db $ec
    db $10
    db $e4
    db $10
    call nc, $f420
    jr nz, @-$25

    jr nz, jr_079_4cea

    ld b, b
    reti


    ld b, b
    ld d, c
    add b
    db $e3
    add b
    ldh a, [$82]
    ld [hl], a
    add b
    or $00
    db $e4
    nop
    xor $00
    db $fc
    nop

jr_079_4d44:
    db $fc
    nop
    cp $00
    or $00
    cp $00
    push hl
    nop
    rst $28
    nop
    sub b
    rst $28
    or b
    rst $08
    ld e, h
    db $e3
    db $eb
    ld [hl], l

jr_079_4d58:
    pop af
    ccf
    ld d, l
    dec sp
    cp d
    rra
    sbc $0f
    or $0f

jr_079_4d62:
    xor $07
    rst $38
    inc bc
    db $fd
    inc bc
    ld a, [hl]
    add c
    dec sp
    ret nz

    dec a
    ret nz

    ld a, $e0
    ld hl, sp+$00
    ld a, b
    add b
    ldh a, [rP1]
    ldh a, [rP1]
    or b
    nop
    and b
    nop
    add sp, $00
    ld h, b
    nop
    db $e4
    nop
    ld l, d
    nop
    add sp, $00
    ldh a, [rP1]
    jr nz, jr_079_4d8a

jr_079_4d8a:
    pop hl
    nop
    ret nz

    ld bc, $0103
    sub c
    inc bc
    ld hl, $ec03
    inc bc
    call nz, $a703
    ld [bc], a
    dec sp
    ld b, $89
    ld b, $39
    ld b, $73
    inc c
    ld [hl], e
    inc c
    ld [hl], a
    ld [$08ff], sp
    xor a
    jr jr_079_4d62

    ld [$3887], sp
    dec a
    db $10
    ld l, [hl]
    db $10
    ld e, a
    jr nz, jr_079_4e30

    jr nz, jr_079_4e0d

    jr nz, jr_079_4d58

    ld h, b
    rst $38
    ld b, b
    dec l
    ret nz

    db $dd
    add b
    db $dd
    add b
    jr c, jr_079_4d44

    cp c
    nop
    cp a
    nop
    dec sp
    nop
    ld a, a
    nop
    ld a, c
    nop
    ld a, a
    nop
    ld a, h
    nop
    ld a, b
    nop
    ld a, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld de, $1100
    nop
    ld h, b
    ld bc, $0162
    ld h, d
    ld bc, $02a5
    add l
    ld [bc], a

jr_079_4de8:
    rlca
    nop
    ld c, $00
    ld a, [bc]
    inc b
    ld b, $08
    inc c
    ld [$0814], sp
    inc d
    ld [$1008], sp
    ld a, [hl+]

jr_079_4df9:
    db $10
    sbc d
    jr nc, jr_079_4de8

    jr nc, jr_079_4df9

    jr nz, jr_079_4e7c

    jr nz, @+$33

    ld b, b
    and l
    ld b, b
    ld b, b
    add b
    ld b, e
    add b
    ld b, c
    add b
    pop bc

jr_079_4e0d:
    nop
    add e
    nop
    add e
    nop
    add d
    nop

jr_079_4e14:
    add $00
    adc h
    nop
    adc h
    nop
    ld [$8800], sp
    nop
    ld b, b
    nop
    ldh a, [rP1]
    ld h, b
    nop
    ldh [rP1], a
    pop hl
    nop
    ld h, e
    nop
    ld b, d
    nop

jr_079_4e2c:
    ret nz

    nop
    ret nz

    nop

jr_079_4e30:
    add c
    nop
    add b
    ld bc, $0100
    inc bc
    nop
    dec b
    ld [bc], a
    rlca
    nop
    dec bc
    inc b
    ld e, $00
    ld a, $00
    ld [hl], $08
    ld l, h
    db $10
    ld l, h
    db $10
    db $ec
    db $10
    ret z

    jr nc, jr_079_4ea5

    jr nc, jr_079_4e4f

jr_079_4e4f:
    ld [hl], b
    ldh a, [rLCDC]
    jr z, jr_079_4e14

    ret nz

    add b
    ld b, c
    add b
    add c
    nop
    nop
    nop
    nop
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
    ld c, h
    add b
    jr jr_079_4e2c

    ldh a, [rP1]
    ld d, d
    jr nz, jr_079_4e71

jr_079_4e71:
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc

jr_079_4e7c:
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_079_4ea3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_079_4eb3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_079_4ec3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_079_4ed3

    ld [hl-], a

jr_079_4ea3:
    inc sp
    inc [hl]

jr_079_4ea5:
    dec [hl]
    ld [hl], $37
    jr c, jr_079_4ee3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_079_4eb3:
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

jr_079_4ec3:
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

jr_079_4ed3:
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

jr_079_4ee3:
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
    ld a, [$1716]
    jr jr_079_4fa4

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    ld a, [$2120]
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_079_4fc5

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld a, [$2efa]
    cpl

jr_079_4fa4:
    jr nc, jr_079_4fd7

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_079_4fe7

    ld a, [hl-]
    dec sp
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
    dec b
    dec b
    dec b
    nop

jr_079_4fc5:
    nop
    nop
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
    ld [bc], a
    nop
    nop
    nop

jr_079_4fd7:
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
    nop
    nop
    nop

jr_079_4fe7:
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
    inc bc
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

Call_079_5000:
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
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
    inc bc
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
    inc bc
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
    inc bc
    inc bc
    nop
    dec b
    inc b
    dec b
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    dec b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    inc bc
    dec b
    dec b
    dec b
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
    dec b
    dec b
    dec b
    dec b
    dec b
    nop
    nop
    nop
    dec b
    inc b
    inc b
    inc b
    inc b
    dec b
    dec b
    nop
    dec b
    dec b
    dec b
    dec b
    dec b
    nop
    nop
    nop
    dec b

jr_079_5099:
    inc b
    inc b
    inc b
    dec b
    nop
    nop
    nop
    inc bc
    dec b
    dec b
    inc bc
    dec b
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
    dec c
    dec c
    dec c
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0800], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0000], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$c408], sp
    rst $00
    add c
    push hl
    add c
    sbc c
    sub b
    sbc l
    db $10
    sbc e
    jr jr_079_5117

    jr jr_079_5099

    sbc b
    reti


    ret c

    ld sp, hl
    ret z

    db $fd
    ld hl, sp-$07
    ld hl, sp-$05
    ld sp, hl
    db $fd
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ld [bc], a
    db $fd
    inc bc
    db $fc
    add e
    db $fc
    ld a, [bc]

jr_079_5117:
    push af
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
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld b, h
    cp e
    ret nz

    cp a
    xor b
    rst $10
    ld l, h
    db $d3
    ld a, [c]
    ld c, l
    ld e, h
    ld h, e
    ld e, $61
    ld a, $21
    ld l, $31
    rrca
    db $10
    rra
    db $10
    rla
    ld [$080f], sp
    rrca
    ld [$0c07], sp
    rlca
    inc b
    dec b
    ld b, $03
    ld [bc], a
    add e
    ld [bc], a
    add b
    inc bc
    ld b, c
    ld bc, $0141
    ld [hl], b
    ld bc, $0039
    inc l
    nop
    inc e
    nop
    inc e
    nop
    ld e, $00
    ld a, [bc]
    nop
    adc a
    nop
    add l
    nop
    add $00
    rst $00
    nop
    ld b, d
    nop
    ld h, e
    nop
    ld hl, $a100
    nop
    add c
    nop
    ret nc

    nop
    pop de
    nop
    jp hl


    nop
    jp hl


    nop
    call nc, $f600
    nop
    ld [c], a
    nop
    ld [$ff00], a
    nop
    db $fd
    nop
    ld a, l
    add b
    ld [hl], a
    adc b
    ld a, a
    add b
    rra
    ldh [rHDMA3], a
    inc a
    dec d
    ld c, $c4
    inc bc
    pop hl
    nop
    ld l, b
    sub b
    cp $88
    ld sp, $79ce
    add $98
    ld h, a
    inc e
    db $e3
    add hl, bc
    rst $30
    rlca
    ld sp, hl
    add h
    ld a, e
    dec h
    ld a, [$fc1f]
    adc h
    rst $38
    rst $08
    cp $6e
    rst $38
    ld a, [hl-]
    rst $38
    cpl
    rst $18
    dec de
    rst $20
    rlca
    ld sp, hl
    ld bc, $40fe
    cp a
    ldh [$1f], a
    add b
    ld a, a
    nop
    rst $38
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    jr @+$01

    inc b
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec b
    ld a, [$e01f]
    rra
    ldh [rVBK], a
    or b
    ccf
    ret nz

    rra
    ldh [$9d], a
    ld h, d
    add hl, bc
    cp $2f
    call c, Call_079_7e8d
    add l
    ld a, [hl]
    rst $20
    ld e, $26
    rst $18
    ld [hl-], a
    rst $08
    db $e3
    rra
    scf
    rst $38
    ld e, $ff
    ld c, $7e
    inc h
    ld a, a
    ld bc, $617d
    rst $38
    ld l, c
    rst $38
    ld h, b
    cp $b0
    db $fd
    or c
    ei
    or b
    ei
    ret nc

    db $fd
    call c, $f8fd
    db $fd
    db $fc
    rst $38
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    rst $38
    db $f4
    cp $fc
    db $fd
    ldh a, [$f8]
    ld [c], a
    and $c8
    sbc $9a
    cp a
    cp $39
    ld a, [$3a7d]
    db $fd
    xor b
    ld a, a

Jump_079_5238:
    ld c, d
    cp a
    adc h
    ld a, a
    db $ec
    rra
    and [hl]
    ld e, a
    ld l, [hl]
    sub a
    ld h, [hl]
    sbc a
    ld a, d
    add a
    or a
    ld c, e
    rst $30
    dec bc
    push af
    dec bc
    ei
    dec b
    ld hl, sp+$07
    ld hl, sp+$07
    jp hl


    ld d, $c5
    ld a, [hl-]
    ldh a, [rIF]
    ld h, b
    sbc a
    ldh [$9f], a
    add b
    rst $38
    ldh [$df], a
    ld b, b
    rst $38
    ldh [$7f], a
    ldh [$7f], a
    jr c, @+$79

    ld [hl], b
    ccf
    sub b
    ccf
    cp b
    rra
    ld hl, sp+$1f
    call z, $fc1f
    rrca
    db $fc
    rrca
    db $fc
    rlca
    sbc [hl]
    rlca
    jp c, $fe07

    inc bc
    rst $18
    inc bc
    rst $38
    ld bc, $01ff
    ld a, h
    ld bc, $007d
    ld e, [hl]
    nop
    rra
    nop
    dec de
    nop
    adc a
    nop
    rrca
    add b
    push bc
    nop
    add $00
    jp nz, $e300

    nop
    db $eb
    nop
    dec d
    ldh [$6d], a
    db $10
    dec bc
    inc b
    add d
    ld bc, $00e0
    cp b
    ld b, b
    ld a, $c0
    rra
    ldh [rNR33], a
    ld [c], a
    dec l
    jp nc, $d12e

    ld b, $f9
    add a
    ld a, b
    adc e
    ld [hl], h
    add a
    ld a, h
    and c
    ld a, [hl]
    dec d
    ld a, [$bfd8]
    ret


    rst $38
    ld h, c

jr_079_52c3:
    rst $38
    sbc b
    ld a, a
    ccf
    rst $08
    dec bc
    rst $30
    ld [bc], a
    db $fd
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
    ld bc, $01fe
    cp $85
    ld a, [$fc43]
    db $10
    rst $38
    jr z, jr_079_52c3

    add sp, $17
    or $09
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld d, $ff
    ld [bc], a
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld hl, $217f
    ld a, e
    db $10
    cp l
    db $10
    ld a, l
    nop
    ld a, a
    ld b, $ff
    ld [bc], a
    rst $38
    call nz, $c0ec
    ei
    jp nc, Jump_000_20df

    ccf
    or b
    rst $38
    ld a, [c]
    rst $38
    ld a, [c]
    rst $38
    ld [hl], d
    rst $30
    inc bc
    rst $30
    ret nz

    rst $28
    ld bc, $a117
    rst $38
    ld h, b
    rst $28
    db $10
    rst $28
    add sp, $1f
    xor b
    ld e, a
    jr c, @-$1f

    ld e, b
    cp a
    sbc h
    ld a, a
    inc e
    rst $38
    inc c
    rst $38
    adc l
    ld a, [hl]
    ld d, l
    xor [hl]
    ld d, a
    xor [hl]
    ld l, a
    sub [hl]
    ld b, d
    cp a
    add e
    ld a, a
    ld d, c
    xor a
    ld l, c
    sub a
    inc hl
    db $dd
    nop
    rst $38
    db $10
    rst $28
    nop
    rst $38
    db $10
    rst $28
    sub b
    rst $28
    adc b
    rst $30
    adc c
    or $b7
    ret z

    rst $38
    ret nz

    ld e, l
    ld [c], a
    ld e, a
    ldh [$7f], a
    ldh [$2f], a
    ldh a, [$2f]
    ldh a, [$3e]
    pop af
    ld a, $f1
    scf
    ld hl, sp+$1d
    ld a, [$fc1b]
    dec bc
    db $fc
    rrca
    db $fc
    rrca
    db $fc
    dec b
    cp $47
    cp $07
    cp $02
    rst $38
    inc hl
    rst $18
    inc bc
    rst $38
    ld bc, $0bff
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    and b
    rst $18
    ret nz

    cp a
    add c
    cp $e0
    ld e, a
    jp nz, $c17d

    ld a, [hl]
    pop hl
    ld a, $e1
    ld a, $d6
    add hl, sp
    cp l
    ld [de], a
    ld [hl], l
    ld a, [de]
    call c, $fc0b
    dec bc
    cp d
    dec c
    db $fc
    rlca
    ld a, h
    add a
    sbc d
    ld h, a
    inc h
    dec de
    ld [$8307], sp
    nop
    pop hl
    nop
    ld sp, hl
    nop
    push af
    ld [$00ff], sp
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    cp a
    ld b, b
    cp a
    ld b, b
    db $dd
    ld [hl+], a
    cp l
    ld b, d
    ld c, [hl]
    or c
    adc $b1
    add [hl]
    ld sp, hl
    rst $10
    add sp, -$3f
    cp $75
    cp $5c
    cp a
    ld d, $ef

jr_079_53d2:
    dec c
    di
    ld [bc], a
    db $fd
    nop
    rst $38
    ld bc, $04fe
    ei
    ld a, b
    add a
    ld a, [hl]
    add c

jr_079_53e0:
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    rst $08
    jr nc, jr_079_53d2

    jr jr_079_53e0

    inc c
    ld hl, sp+$07
    add b
    cp $10
    db $fd
    sub b
    ld hl, sp+$20
    db $fc
    nop
    db $fc
    ld bc, $01ed
    add hl, bc
    ld bc, $0199
    ld d, a
    ld bc, $8085
    call nz, $e000
    jr nz, jr_079_5477

    ld h, b
    or $60

jr_079_540d:
    ld [hl], a
    ld h, b
    ld [hl], e
    jr nz, jr_079_540d

    jr nz, jr_079_540d

    nop
    cp d
    ld [$01ab], sp
    rst $38
    ld de, $1eff
    rst $38
    dec de
    rst $18
    adc b
    rst $18
    inc c
    rst $38
    adc h
    rst $28
    xor h
    rst $28
    xor $ff
    add $ff
    ld b, a
    rst $38
    daa
    rst $38
    ld e, [hl]
    and a
    ld a, d
    add a
    sbc $23
    cp $03
    rst $18
    inc hl
    db $dd
    inc hl
    xor a
    ld d, c
    rst $20
    add hl, de
    rlca
    ld sp, hl
    add $b9
    sub a
    add sp, -$61
    ldh [$df], a
    ldh [$df], a
    ldh [$5b], a
    db $e4
    rst $18
    ld h, b
    rst $10
    ld l, b

jr_079_5452:
    and l
    ld a, d
    push hl
    ld a, [hl-]
    db $e4
    dec sp
    ld d, [hl]
    cp c
    ld [hl], d
    sbc l
    or d
    ld e, l
    or d
    ld e, l
    sbc d
    ld a, l
    ld c, e
    cp h
    dec c
    ld a, [$3ec9]
    pop af
    ld c, $fd
    ld b, $fc
    rlca
    db $fd
    ld [bc], a
    cp $03
    db $fc
    inc bc
    cp l
    ld b, d
    rra

jr_079_5477:
    pop hl
    ld e, a
    and c
    rra
    pop hl
    sbc h
    db $e3
    xor [hl]
    pop af
    adc [hl]
    pop af
    and [hl]
    reti


    rst $30
    ret z

    ld e, a
    ldh [$5f], a
    ldh [$3d], a
    ld [c], a
    cp a
    ld h, b
    xor a
    ld [hl], b
    rst $18
    jr nc, jr_079_5452

    ld d, b
    rst $30
    jr jr_079_54c6

    ret c

    call z, Call_079_683b
    sbc a
    push de
    ld l, $47
    cp b
    adc a
    ld [hl], b
    rra
    ldh [$3e], a
    pop bc
    ld a, d
    add a
    di
    ld c, $f0
    rrca
    push bc
    ccf
    and c
    ld e, a
    ld hl, $80df
    rst $38
    add b
    ld a, a
    ld h, b
    rst $38
    ld h, b
    rst $38
    ldh a, [$7f]
    ld hl, sp+$7f
    or b
    ld a, a
    ret nc

    ccf
    ret nc

    ccf
    ldh a, [$1f]

jr_079_54c6:
    ld b, b
    cp a
    ld [$10ff], sp
    rst $28
    add l
    ld a, a
    add l
    ld a, a
    dec de
    rst $38
    adc d
    rst $38
    ld h, [hl]
    rst $38
    sbc l
    ld a, a
    daa
    rst $18
    dec e
    rst $20
    add hl, bc
    rst $30
    jp Jump_000_203c


    rst $18
    pop bc
    ld a, $e2
    dec e
    reti


    ld h, $fd
    ld [bc], a
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    sub a
    rst $28
    ld h, a
    sbc a
    rst $30
    rrca
    rst $28
    sub e
    di
    rst $08
    set 6, a
    rst $00
    ei
    ei
    rst $00
    db $db
    rst $20
    db $eb
    db $dd
    rst $18
    pop hl
    ld e, a
    and l
    xor $d4
    ld a, l
    add $d6
    add hl, hl
    db $e4
    ld e, d
    rst $10
    ld l, d
    rst $20
    sbc e
    db $d3
    xor a
    ei
    rlca
    db $eb
    ld d, l
    ei
    push bc
    ei
    call nc, $d4fb
    sub b
    sub b
    sub b

jr_079_5523:
    ld a, [$fd50]
    jr jr_079_5523

jr_079_5528:
    jr jr_079_5528

    cp b
    rst $38
    sbc h
    rst $38
    adc b
    cp $8c
    rst $38
    adc h
    rst $38
    adc h
    db $fd
    add h
    db $fd
    and h
    cp $c6
    cp $46
    cp $e2
    cp $0f
    ld a, [c]
    db $dd
    and d
    and $99
    or [hl]
    ret


    ld a, a

jr_079_5549:
    pop bc
    cp $41
    rst $38
    ld b, b
    rst $30
    ld c, b
    sub a
    ld l, b
    cp a
    ld h, b
    cp a
    ld h, b
    cp a
    ld h, b
    xor a
    ld [hl], b
    ccf
    ldh a, [rNR22]
    ld hl, sp+$13
    db $fc
    rra
    ld hl, sp+$6b
    sbc h
    ld l, l
    sbc [hl]
    ld l, b
    sbc a
    jr z, jr_079_5549

    add sp, $5f
    and h
    ld e, a
    add h
    ld a, a
    call nz, $c43f
    ccf
    ld d, d
    xor a
    jp z, $ee37

    inc de
    ld [$6d17], a
    sub e
    ld h, l
    sbc e
    or c
    rst $08
    or c
    rst $08
    pop de
    rst $28
    ld l, h
    rst $10
    ld e, b
    rst $20
    adc b
    ld [hl], a
    ld a, [$f927]
    ld h, $cb
    inc a
    db $dd
    ld [hl-], a
    rst $18
    jr nz, jr_079_55d6

    pop bc
    ld a, b
    add a
    ld a, [c]
    dec c
    ld [$ca1d], a
    dec a
    sub l
    ld l, [hl]
    inc d
    rst $28
    sub h
    ld l, a
    db $f4
    cpl
    ld b, b
    cp a
    ld h, d
    sbc a
    ld h, d
    sbc a
    ldh [$1f], a
    inc l
    db $d3
    db $fd
    adc e
    ld [hl], l
    adc e
    inc [hl]
    bit 6, d

jr_079_55b9:
    call $65da
    cp [hl]
    ld h, c
    inc h
    ei
    jr z, jr_079_55b9

    inc d
    ei
    ld d, $f9
    ld [de], a
    db $fd
    add d
    db $fd
    xor c
    rst $38
    ld [$c4ff], a
    rst $38
    set 7, h
    jp nc, $acfd

    di

jr_079_55d6:
    ld hl, sp-$19
    ld a, [$b4c5]
    bit 5, b
    sub a
    call nc, $992b
    ld h, [hl]
    dec b
    ld a, [$7e81]
    ldh [$1f], a
    ldh a, [rIF]
    ld sp, hl
    rlca
    cp $01
    db $fd
    ld [bc], a
    ldh [$73], a
    ld [c], a
    inc hl
    ld [c], a
    inc de
    or c
    ld [$f7b8], a
    cp d
    ld hl, sp-$66
    ld sp, hl
    sbc c
    cp $d9
    sbc l
    sbc l
    call z, $9cbc
    inc a
    and $7e
    and h
    ld a, h
    or $7c
    jr c, @+$7e

    or l
    ld a, l
    ld c, b
    db $fd
    ld [hl-], a
    db $dd
    ld [hl], d
    reti


    ld h, a
    add hl, sp
    rst $00
    ld sp, hl
    ld b, $7b
    call nz, $e57b
    ld l, e
    inc sp
    dec hl
    ld [hl], l
    ld l, e
    or l
    and e
    ld a, l
    and c
    ld a, a
    and c
    ld a, a
    pop af
    ld l, $f4
    cp e
    push af
    sbc d
    pop af
    ld e, $ff
    ld d, b
    rst $38
    db $10
    rst $38
    sbc d
    rst $38
    adc e
    rst $38
    ld c, e
    rst $38
    adc a
    nop
    sbc a
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
    add h
    rst $38
    add d
    rst $38
    ld a, l
    add d
    db $fd
    add d
    ccf
    jp nz, Jump_079_42fd

    db $fd
    ld b, d
    sbc $61
    sbc $61
    sbc $61
    cp $61
    cp [hl]
    ld h, c
    ccf
    ldh [$6f], a
    or b
    dec l
    ld a, [c]
    ld l, l
    or d
    rra
    ldh a, [rNR33]
    ld a, [c]
    rra
    ldh a, [rNR22]
    ld hl, sp+$1f
    ld hl, sp+$0e
    ld sp, hl
    ld c, $f9
    add hl, bc
    cp $0a
    db $fd
    ld c, l
    rst $38
    dec c
    cp $03
    db $fc
    sub a
    ld hl, sp-$51
    ldh a, [$fc]

jr_079_5689:
    jp $877a


    or $0f
    ld [c], a

jr_079_568f:
    rra
    jp nc, $863f

    ld a, a
    ld b, l
    rst $38
    ld b, a
    rst $38
    cpl
    rst $38
    scf
    rst $38
    dec h
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    sub b

jr_079_56a3:
    ld a, a
    db $10
    rst $38
    ld d, b
    cp a
    jr c, jr_079_5689

    inc l
    db $db
    jr z, @-$1f

    jr z, jr_079_568f

    jr z, @-$1f

    inc l
    rst $18

jr_079_56b4:
    inc d
    rst $28
    dec d
    rst $28

jr_079_56b8:
    dec b
    rst $38
    adc [hl]
    rst $30
    sub a
    db $ec
    ld c, [hl]
    ld sp, hl
    db $76
    reti


    ld h, h
    ei
    jr @-$17

    or b
    rst $08
    ld h, b
    sbc a
    ret nz

    ccf
    add b
    ld a, a
    add c
    ld a, [hl]
    ld [bc], a
    db $fd
    ld b, a
    cp b
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$37], a
    ret z

    ld l, l
    sub d
    jp hl


    ld d, $58
    and a
    ld d, c
    xor [hl]
    ld h, b
    sbc a
    pop de
    ld l, $61
    sbc [hl]
    inc bc
    db $fc
    inc de
    db $fc
    jp Jump_079_423c


    or d
    jp nz, Jump_079_4275

    ld b, c
    ld b, d
    ld [hl], c
    ld b, c
    ld a, [c]
    ld [hl], b
    and e
    jr nz, jr_079_5771

    jr nc, jr_079_56b4

    ld sp, $113c
    ld d, l
    ld bc, $21ce
    adc h
    jr nz, jr_079_56b8

    or b
    ld b, [hl]
    or b
    ld d, l
    jr nc, jr_079_56a3

    db $10
    ld [hl], e
    jr nc, jr_079_5728

    db $10
    jr jr_079_5717

jr_079_5717:
    ld e, [hl]
    nop
    jp c, Jump_079_6a00

    nop
    db $eb
    ld b, b
    xor e
    add b
    ld b, c
    ret nz

    sbc c
    add b
    ld a, c
    add b
    db $fd

jr_079_5728:
    add h
    ld sp, hl
    db $f4
    add a
    call nc, $d4af
    and a
    sub $ad
    db $f4
    rst $08
    call nc, $c4af
    ei
    add $79
    jp nz, $ca7f

    rst $30
    jp nz, $e6ff

    db $db
    xor $f3
    rst $30
    ld [$bae7], a
    db $e3
    db $fc
    db $e3
    db $fc
    pop af
    xor $f1
    cp $f1
    cp $fd
    ld a, [c]
    ld sp, hl
    rst $30
    db $fd
    ei
    db $fd
    ld a, [$fefd]
    db $fd
    cp $fd
    cp $f8
    nop
    ldh a, [$08]
    ldh a, [$08]
    ldh a, [$08]
    ld [hl], b
    adc b
    ld a, h
    add b
    ld a, h
    add b
    ld a, c
    add h
    ei

jr_079_5771:
    inc b
    cp c

jr_079_5773:
    ld b, [hl]
    cp d
    ld b, h
    db $e4
    ld e, b
    pop bc
    ld [hl], b
    add a
    ld h, b
    db $fd
    add d
    push af
    ld a, [bc]
    jp hl


    ld d, $c1
    ld a, $b1
    ld l, [hl]
    ld b, c
    cp [hl]
    ld e, c
    or [hl]
    ld [hl], d
    sbc l
    ld [hl], d
    sbc l
    ld [hl], d
    sbc l
    ld h, b
    sbc a
    jr nz, jr_079_5773

    and b

jr_079_5795:
    ld e, a
    db $10
    rst $28
    and b
    ld e, a
    ld d, b
    xor a
    ld d, d
    xor a
    ld e, [hl]
    and a
    ld e, [hl]
    and a
    jp nc, Jump_000_1baf

    rst $20
    adc d
    rst $30
    rst $28

jr_079_57a9:
    sub $c7
    db $fc
    cp $c9
    ld e, l
    ld a, [c]
    jr z, jr_079_57a9

    ld e, [hl]
    pop hl
    or b
    rst $08
    ld h, c
    sbc a
    jp nz, $843f

    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    inc b
    ei
    ld c, b
    or a
    inc l
    db $d3
    jr c, jr_079_5795

    pop af
    ld c, $70
    adc a
    sub d
    ld l, l
    add l
    ld a, d
    db $e4
    dec de
    jp z, Jump_079_5935

    and [hl]
    cp c

jr_079_57dd:
    ld b, [hl]
    ei
    inc b
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
    cp $01
    rst $38
    nop
    ld [bc], a
    ld b, e
    ld [bc], a
    ld d, h
    db $10
    ld b, a
    nop
    or $00
    and $21
    call nz, $ac51
    ld d, b
    and h
    ld b, c
    cp l
    ld bc, $00f9
    ld hl, sp+$20
    jp c, $db30

    db $10
    ld [$a850], a
    ld h, b
    add hl, de
    pop af
    add b
    jr nz, jr_079_57dd

    jr z, jr_079_5871

    adc b
    ld a, a
    sbc b
    rst $28
    cp b
    ld c, a
    ld l, b
    sbc a
    ret z

    ccf
    ld l, b
    rst $18
    ld l, b
    sbc $58
    rst $20
    ld a, b
    add $6c
    db $d3
    ld h, h
    reti


    ld d, h
    rst $28
    ld d, h
    rst $28
    ld d, h
    cp e
    inc h
    db $db
    inc h
    db $db
    jr nz, @+$01

    ld [hl+], a
    db $fd
    ld [hl+], a
    db $fd
    ld [hl+], a
    ei
    ld [hl+], a
    rst $38
    ld [c], a
    ccf
    ld a, [c]
    cpl
    ld [hl], d
    sbc a
    ld [hl-], a
    rst $18
    ld [de], a
    rst $38
    ld d, [hl]
    cp e
    ld e, e
    or [hl]
    ld a, $d3
    ccf
    jp nc, $927f

    rra
    di
    ld e, a
    xor l
    rra
    push af
    sbc a
    ld l, c
    cp a
    res 7, a
    rst $18
    xor a
    nop

jr_079_5862:
    inc l
    add c
    xor [hl]
    nop
    call c, Call_079_5000
    ld [$0070], sp
    ld hl, $c340
    nop
    adc a

jr_079_5871:
    nop
    rra
    nop
    ld a, $01
    ld a, [$fe05]
    ld bc, $24db
    db $db
    inc h
    ld e, c
    and [hl]
    call c, $df23
    jr nz, jr_079_5862

    ld [hl+], a
    db $ed
    ld [de], a
    call $ed32
    ld [de], a
    and $1b
    and $1b
    and $1b
    ld l, l
    sub e
    ld l, a
    sub d
    ld b, c
    cp [hl]
    ld b, e
    cp h
    ld b, a
    cp b
    ld e, l
    or d
    ld a, $e1
    ld [hl], b
    rst $08
    or c
    rst $08
    ld h, e
    sbc [hl]
    push bc
    ld a, $81
    ld a, [hl]
    rlca
    ld hl, sp+$1f
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    rra
    ldh [$0e], a
    pop af
    ld a, [hl-]
    push bc
    ld a, b
    add a
    inc l
    db $d3
    ld d, e
    xor h
    ld h, e
    sbc h
    rlca
    ld hl, sp+$0d
    ld a, [c]
    inc de
    db $ec
    rra
    ldh [$37], a
    ret z

    cpl
    ret nc

    cp a
    ld b, b
    rst $38
    nop
    db $fc
    inc bc
    cp $01
    ld a, l
    add d
    db $fd
    ld [bc], a
    ei
    inc b
    rst $30
    ld [$08f7], sp
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, @+$01

    nop
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
    dec [hl]
    adc $35
    xor [hl]
    rlca
    adc h
    rlca
    adc h
    ld b, $cd
    ld [bc], a
    ld h, l
    inc b
    inc sp
    and d
    ld c, l
    nop
    rst $28
    ld b, [hl]
    ld sp, $3740
    ld h, h
    dec de
    inc h
    db $db
    ld h, $d9
    ld h, $d9
    ld [hl], $cb
    ld [hl], $e9
    ld [hl-], a
    call $ff10
    ld [de], a
    db $fd
    ld [de], a
    db $fd
    ld [de], a
    db $fd
    ld [de], a
    db $ed
    ld [de], a
    rst $38
    sub d
    cpl
    sub d
    ccf
    sub d
    ld l, l
    sub b
    ld l, a
    sub b
    ld l, a
    sub d
    ld l, l
    ret nc

    cpl
    ld d, b
    xor a
    ld d, d
    xor l
    ld b, d
    cp l
    ld e, d

Jump_079_5935:
    push hl
    ld h, b
    rst $18
    ld a, b
    rst $00
    ld l, b
    rst $10
    ld c, b
    push af
    ld c, b
    rst $38
    ld c, b
    rst $38
    ld e, b
    db $ed
    ld c, b
    or l
    ld l, b
    sub a
    ld l, c
    sub [hl]
    ld l, c
    sbc a
    add hl, sp
    add $69
    or [hl]

jr_079_5950:
    ld l, c
    sub [hl]
    ld h, b
    sbc a
    ld h, c
    sbc [hl]
    ld h, l
    sbc e
    ld h, h
    cp a
    ld a, b
    xor a
    ldh a, [$3f]
    ld h, c
    cp a
    jp $8f00


    nop
    rra
    nop
    dec a
    nop
    ld a, l
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    ld [hl], a
    adc b
    ld [hl], e
    adc h
    ldh a, [rIF]
    ld [hl], c
    adc [hl]
    dec sp
    call z, $c837
    ccf
    ret nz

    cpl
    ret nc

    rra
    ldh [$7e], a
    pop bc
    db $fd
    add d
    ret c

    daa
    ldh a, [rIF]
    pop hl
    ld e, $c3
    inc a
    adc a
    ld [hl], b
    sbc a
    ld h, b
    cp [hl]
    pop bc
    ld a, [hl]
    add c
    db $fc
    inc bc

jr_079_59a4:
    ld a, b
    add a
    pop af
    ld c, $f1
    ld c, $e3
    inc e
    db $eb
    inc d
    rst $08
    jr nc, jr_079_5950

    ld h, b
    ccf
    ret nz

    ld e, $e1

jr_079_59b6:
    dec de
    db $e4
    ld a, [de]
    push hl
    inc d
    db $eb
    ld [hl], c
    adc [hl]
    di
    inc c
    rst $10
    jr z, @-$17

    jr jr_079_59a4

    jr nz, jr_079_59b6

    db $10
    rst $18
    jr nz, @+$01

    nop
    cp a
    ld b, b
    ld a, a
    add b
    ld a, a
    add b
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
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    pop bc
    ld a, $c3
    inc a
    add [hl]
    ld a, c
    rst $30
    dec bc
    rst $30
    sbc a
    or a
    ld e, a
    or a
    ld a, a
    or a
    ld e, a
    rst $30
    rra
    rst $30
    rrca
    ld [hl], a
    adc [hl]
    ld [hl], a
    adc l
    ld [hl], a
    adc [hl]
    daa
    call c, $af75
    ld [hl], c
    sbc a
    ld [hl], l
    sbc d
    ld [hl], h
    sbc e
    ld [hl], l
    db $db
    pop af
    ld a, $75
    ld a, [$da75]
    ld [hl], h
    db $db
    ld [hl], l
    sbc d
    ld [hl], a
    reti


    ld [hl], a
    reti


    ld [hl], a
    adc c
    ld [hl], a
    xor l
    ld [hl], a
    bit 2, a
    xor e
    ld d, a
    xor e
    ld d, a
    cpl
    ld b, a
    cp e
    ld b, a
    cp e
    ld b, a
    rst $38
    ld d, a
    db $eb
    ld d, a
    db $eb
    ld e, a
    push hl
    ld e, a
    rst $30
    ld e, a
    rst $20
    ld e, a
    or e
    ld [hl], a
    sbc l
    rst $38
    ld d, [hl]
    ld [hl], a
    sbc l
    ld a, a
    push af
    ld a, a
    or [hl]
    ld a, a
    sbc [hl]
    ld a, a
    sbc a
    ld a, [hl]
    cp a
    db $fc
    dec sp
    ld [hl], b
    cp a
    ld h, c
    cp a
    ld b, a
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
    nop
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    call c, $fc23
    inc bc
    push af
    ld a, [bc]
    ld a, [hl+]
    rst $38
    inc a
    rst $38
    and b
    rst $38
    and b
    rst $38
    and b
    rst $38
    add h
    ei
    call $9bf2
    db $e4
    ret nz

    rst $38
    sub b
    rst $38
    sbc b
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    add c
    cp $89
    cp $01
    cp $20
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    rra
    ldh [rNR33], a
    ld [c], a
    ld a, e
    add h
    di
    inc c
    rst $30
    ld [$10ef], sp
    rst $08
    jr nc, jr_079_5b0e

    and b
    sbc a
    ld h, b
    cp [hl]
    ld b, c
    dec a
    jp $837f


    ei
    rlca
    rst $38
    rlca
    ld sp, hl
    rlca
    cp $01
    rst $38
    nop
    rst $38

jr_079_5ac3:
    nop
    di
    inc c
    rst $20
    jr @-$10

    ld de, $1ce3
    ret z

    scf
    sbc e
    ld h, h
    or a
    ld c, b
    rla
    add sp, $07
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
    jr nz, jr_079_5ac3

    nop
    rst $38
    nop
    rst $38
    add c
    ld a, [hl]
    ld b, c
    cp [hl]
    ld h, e
    sbc h
    jp $ff3c


    cp h
    cp $fd
    cp $ff
    rst $38
    cp [hl]
    rst $38
    rst $38
    rst $38
    xor a
    rst $38
    ld l, h
    rst $38
    adc $e7
    rst $18
    call $ddf3
    ld [hl+], a
    ld a, a
    sub d
    sub a
    ld l, [hl]
    rst $08
    ld [hl], a
    ld e, a
    and [hl]

jr_079_5b0e:
    rrca
    ld a, [hl]
    cpl
    call $2cdf
    cp a
    ld l, l
    ld a, a
    dec l
    rst $38
    ld e, l
    rst $18
    ld a, c
    ld e, a
    or e
    rla
    db $eb
    ld [hl], a
    sbc a
    rst $30
    ld l, $ff

Jump_079_5b25:
    ld h, [hl]
    rst $38
    ld d, a
    rst $18
    ld [hl], a
    ld a, a
    add e
    ld a, a
    adc a
    rst $38
    ld c, $00
    adc e
    ld [bc], a
    add a
    ld [bc], a
    rra
    ld [bc], a
    ld d, a
    ld [bc], a
    ld e, a
    dec bc
    ld e, a
    ld a, [bc]
    ld a, a
    inc e
    ld a, a
    ld l, [hl]
    ld de, $03fd
    rst $28
    inc bc
    ret nc

    rrca
    ld h, $1b
    daa
    ld a, [de]
    ld l, b
    rra
    ldh [$1f], a
    ld [c], a
    rra
    ldh [$1f], a
    ldh [$1f], a
    and [hl]
    ld e, e
    add [hl]
    ld a, e
    adc $3b
    xor b
    ld e, a
    add b
    ld a, a
    and e
    ld e, h

jr_079_5b62:
    sub l
    ld a, d
    adc [hl]
    ld [hl], c
    or h
    ld c, e
    cp l
    ld b, d
    ei
    inc b
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
    rst $00
    rst $38
    add h
    rst $38
    ld [$00ff], sp
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    ld b, b
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
    ld b, b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38

Jump_079_5b9c:
    ret nz

    rst $38
    ld [c], a
    rst $38
    jp nz, $f4ff

    rst $38
    db $fc
    rst $38

jr_079_5ba6:
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    db $fc
    rst $38
    rra
    ldh [$f3], a
    db $fc
    db $fc
    rst $38
    rrca
    rst $38
    ld b, $ff
    rst $00
    cp $fd
    cp $3b
    db $fc
    rst $00
    jr c, @+$01

    nop
    rst $38
    nop

jr_079_5bc6:
    ccf
    ret nz

    ld a, a
    add b
    rst $38
    nop
    rst $30
    ld [$38c7], sp
    rst $08
    jr nc, jr_079_5b62

    ld [hl], b
    rrca
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$3f], a
    ret nz

jr_079_5bdc:
    ccf

jr_079_5bdd:
    ret nz

    ld l, a
    sub b
    ld l, a
    sub b

jr_079_5be2:
    ld [hl], a

jr_079_5be3:
    adc b
    rst $38
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
    ld [bc], a
    sbc $20
    sbc h
    ld h, d
    cp e

jr_079_5bf7:
    ld b, h
    rst $30
    ld [$0af5], sp

jr_079_5bfc:
    jp nc, $522c

    xor h

jr_079_5c00:
    ld e, [hl]
    and b
    ld c, d
    cp h
    ld e, [hl]
    cp b
    ld c, d
    cp h
    ld c, d
    cp h
    ret nc

    inc a
    ld d, e
    cp h
    call z, $e438
    jr jr_079_5bf7

    jr @-$18

    jr jr_079_5bdd

    jr c, jr_079_5bdc

    inc a
    rst $00
    jr c, jr_079_5be3

    jr c, jr_079_5ba6

    ld a, b
    xor a
    ld a, b
    rst $00
    jr c, jr_079_5bfc

    jr c, @-$27

    jr c, jr_079_5c00

    jr c, jr_079_5be2

    ld a, b
    rst $20
    jr c, jr_079_5bc6

    ld a, b
    or $39
    add [hl]
    ld a, c
    and b
    ld a, b
    adc d
    ld [hl], b
    and a
    ld e, b
    ld e, h

jr_079_5c3b:
    or e
    xor [hl]
    ld [hl], c
    ld l, $f1
    ld h, $f9
    ld a, h
    di
    ld l, $f1
    ld c, $f1
    ld e, $e1
    ld c, h
    di
    ld a, h
    db $e3
    inc l
    di
    adc h
    di
    ld c, h
    di
    ld c, a
    ldh a, [rTAC]
    ld hl, sp-$70
    rst $28
    jr nz, jr_079_5c3b

    nop
    rst $38
    nop
    rst $38
    ret nz

    ld a, a
    db $10
    rst $28
    ld [hl], b
    adc a
    ldh a, [rIF]
    ld [c], a

jr_079_5c69:
    dec e
    xor $11
    sbc $21
    db $fd
    ld [bc], a
    ld [bc], a
    rst $38
    nop
    rst $38
    inc hl
    call c, Call_000_28d7
    rst $28
    db $10
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
    jr nz, jr_079_5c69

    jr nz, @-$1f

    jr nz, @-$1f

    db $10
    rst $28
    ld bc, $07fe
    ld hl, sp+$0f
    ldh a, [rTAC]
    ld hl, sp+$01
    cp $04
    ei
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
    inc b
    rst $38
    inc b
    rst $38
    ld [$08ff], sp
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    or c
    cp $a0
    rst $38
    ld h, b
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
    nop
    rst $38
    add c
    rst $38
    ld bc, $83ff
    rst $38
    db $db
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    inc b
    rst $38
    nop
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$10ef], sp
    rst $28
    db $10
    rst $18
    jr nz, @+$61

    and b
    cp a
    ld b, b
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    add b

jr_079_5cec:
    rst $38
    nop
    rst $38
    nop
    ld l, a
    or c
    ld a, l
    sub d
    rst $18
    jr c, jr_079_5d74

    sbc [hl]
    ld a, l
    adc [hl]
    ld l, l
    sub [hl]
    ld a, l
    jp nz, $d83f

    nop
    xor b
    nop
    xor c
    nop
    jr nc, jr_079_5d07

jr_079_5d07:
    ld e, h
    nop
    reti


    inc bc
    db $d3
    inc bc
    ld e, d
    inc bc
    ld a, [hl-]
    inc bc
    ld e, d
    dec bc
    ld [$eb02], a
    ld [bc], a
    ld b, a
    ld b, $55
    ld b, $ed
    inc b
    rst $10
    inc b
    rra
    inc b
    rst $18
    inc b
    rst $18
    inc d
    rst $18
    sub h
    rst $38
    add h
    rst $38
    inc d
    rst $38
    inc b
    rst $38
    sub l
    cp $47
    cp h
    ld e, a
    xor b
    rst $38

jr_079_5d35:
    ld [$0b3c], sp
    rst $38
    ld [$f80f], sp
    rrca
    ld hl, sp+$1f
    add sp, $0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$4f
    cp b
    rrca
    ld hl, sp-$21
    jr nc, jr_079_5cec

    ld [hl], b
    rra
    ldh a, [$5f]
    ldh a, [$1f]
    ldh a, [$df]
    jr nc, @+$01

    inc e
    inc sp
    rst $08
    inc bc
    db $fc
    dec b
    ld a, [$bf40]
    inc c
    di
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], b
    adc a
    ld a, [c]
    dec c
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38

jr_079_5d74:
    ei
    rst $38
    jr nc, @+$01

    ld e, d
    rst $38
    ld [hl], e
    rst $38
    ld d, a
    rst $38
    and $ff
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    rlca
    ld hl, sp+$47
    cp b
    xor [hl]
    ld d, c
    xor a
    ld d, b
    ld l, a
    sub b
    rst $38
    nop
    adc $31
    rst $18
    jr nz, jr_079_5d35

    ld h, e
    inc d
    db $eb
    ld a, [bc]
    push af
    nop
    rst $38
    ld bc, $01fe
    cp $01
    cp $02
    db $fd
    nop
    rst $38
    ld [$80ff], sp
    ld a, a
    db $10
    rst $38
    db $10
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
    ret nz

    rst $38
    add h
    rst $38
    add e
    rst $38
    ld hl, $83ff
    rst $38
    rst $00
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $30
    ld [$00ff], sp
    rst $28
    db $10
    rst $28
    db $10
    rst $38
    nop
    rst $28
    db $10
    rst $18
    jr nz, jr_079_5df1

jr_079_5df1:
    rst $18
    nop
    ld l, a
    ld [bc], a
    ld c, a
    nop
    sbc a
    nop
    rst $28
    ld b, b
    ld a, a
    nop
    ld a, a
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld [$00ff], sp
    cp $00
    cp $ff
    rst $38
    ld d, c
    xor [hl]
    dec d
    ld [$be7f], a
    ld b, e
    cp [hl]
    ld b, e
    cp [hl]
    ld b, e
    cp [hl]
    ld b, e
    cp [hl]
    ld b, b
    cp a
    ld b, h
    cp a
    ld b, [hl]
    cp l
    add h
    ld a, a
    inc b
    rst $38
    inc b
    rst $38

jr_079_5e26:
    nop
    rst $38

jr_079_5e28:
    ld [$08ff], sp
    rst $38

jr_079_5e2c:
    ld [$88ff], sp
    ld a, a

jr_079_5e30:
    ld a, c
    adc [hl]

jr_079_5e32:
    nop

jr_079_5e33:
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld [hl], e
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    rst $28
    db $10
    rst $28
    db $10
    rst $18
    jr nz, jr_079_5e26

    jr nz, jr_079_5e28

    jr nz, @-$1f

    jr nz, jr_079_5e2c

    jr nz, @-$1f

    jr nz, jr_079_5e30

    jr nz, jr_079_5e32

    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    ldh a, [$cf]
    ccf
    ld [$00f7], sp
    rst $38

Call_079_5e60:
    nop
    rst $38
    jr nc, jr_079_5e33

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add h
    ld a, e
    sbc $21
    jr nz, @+$01

    ld b, b
    rst $38
    ld [$78f7], sp
    add a
    ld a, h
    add e
    ld a, b
    add a
    ei
    inc b
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld bc, $c3fe
    inc a
    and e
    ld e, h
    ld e, l
    and b
    ld d, $e0
    jr nz, @-$3e

    nop
    ret nz

    sub b
    ld b, b
    ld d, $80
    ld l, $81
    rst $38
    nop
    rst $38
    nop
    db $f4
    ld a, [bc]
    cp $00
    push af
    ld [$00fd], sp
    db $fc
    nop
    jp Jump_079_5238


    xor b
    jp Jump_000_003c


    rst $38
    ld bc, $01fe
    cp $01
    cp $20
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, c
    rst $38
    ld a, $c1
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, h
    add e
    ld a, h
    add e
    ld a, l
    add e
    ld sp, hl
    rlca
    ei
    rlca
    ei
    rlca
    ld a, [$f207]
    rrca
    di
    rrca
    rst $18
    cpl
    dec c
    rst $38
    dec c
    rst $38
    inc e
    rst $38
    db $eb
    inc e
    pop hl

Call_079_5ee3:
    ld e, $c9
    ld [hl], $c9
    ld [hl], $cd
    ld [hl-], a
    jp $af3c


    ld [hl], b
    and d
    ld a, l
    ld b, d
    rst $30
    ld b, d
    rst $20
    ld b, d
    rst $20
    ld b, b
    rst $30
    ld b, h
    rst $20
    ld b, h
    rst $20
    ld b, h
    rst $20
    inc b
    rst $20
    inc b
    rst $30
    add b
    rst $18
    ld [$088f], sp
    cp a
    nop
    add hl, hl
    nop
    db $fc
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    pop hl
    ld e, $fd
    ld [bc], a
    ld a, l
    add d
    ld a, l
    add d
    ld a, a
    add d
    ld a, a
    add d
    ld e, e
    and [hl]
    ld l, a
    sub h
    rrca
    db $f4
    rlca
    db $fc
    rrca
    push af
    rlca
    db $fd
    rlca
    db $fd
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    adc d
    ld a, a
    ld a, d
    adc a
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    add [hl]
    rst $38
    ld [hl], h
    rst $38
    inc d
    rst $38
    inc d
    rst $38
    cp $05
    cp $05
    reti


    ld l, $dd
    ld a, [hl+]
    db $dd
    ld a, [hl+]
    db $dd
    ld a, [hl+]
    db $fd
    ld a, [bc]
    or l
    ld e, d
    or e
    ld e, h
    cp e
    ld d, h
    or e
    ld e, h
    cp c
    ld d, [hl]
    jp hl


    ld [hl], $f1
    xor $3e
    ld sp, hl
    rst $38
    nop
    rlca
    ld hl, sp+$20
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld bc, $80fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $18
    rst $38
    dec c
    rst $38
    ld [$41ff], sp
    cp [hl]
    rlca
    ld hl, sp-$79
    ld a, b
    rst $08
    jr nc, @+$01

    nop

jr_079_5f80:
    ld bc, $01ff
    rst $38
    ld de, $1def
    db $e3
    xor c
    ld b, e
    dec d
    ld b, e
    sbc a
    ld b, e
    and e
    rlca
    add e
    rlca
    and e
    rlca
    ld b, a
    rrca
    add a
    rrca
    and a
    rrca
    daa
    rrca
    ld e, a
    rrca
    rrca
    rra
    rst $08
    rra
    ld a, a
    rra
    sbc a
    ccf
    ld e, a
    ccf
    rra
    ccf
    rst $18
    ccf
    rra
    ld a, a
    ccf
    ld a, a
    jp nc, $f93f

    ccf
    xor e
    ld a, a
    cp a
    ld a, a
    ld e, e
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    adc e
    ld [hl], h
    and a
    ld a, b
    rrca
    ldh a, [$37]
    ret z

    ld h, e
    sbc h
    inc sp
    call z, $807f
    cp a
    ld b, b
    daa
    ret c

    rst $20
    jr jr_079_6044

    sub b
    ld c, a
    or b
    rrca
    ldh a, [$6f]
    or b
    adc a
    ld [hl], b
    rst $08
    jr nc, jr_079_5f80

    ld h, b
    sbc a
    ld h, b
    rst $18
    ld h, b
    ld a, a
    ret nz

    ld a, a
    ret nz

    ccf
    ret nz

    cp a
    ret nz

    rst $38
    add b
    rst $30

jr_079_5ff1:
    xor b
    rst $28
    jr nc, @+$01

    and b
    rst $28
    or b
    rst $28
    jp nc, $e2df

    sub $eb
    add $ff
    nop
    cp [hl]
    nop
    sbc [hl]
    nop
    push hl
    nop
    or c
    nop
    rst $10
    nop
    ld hl, sp-$20
    ld hl, sp-$20
    jr z, jr_079_5ff1

    ld a, [hl-]
    ret nz

    ld [hl], b
    ret nz

    ld [hl], d
    ret nz

    ld e, e
    ret nz

    ld e, e
    pop bc
    ld [hl], a
    add b
    or e
    add b
    or [hl]
    ld a, [$e8a6]
    or h
    db $e4
    cp b
    db $ec
    ld d, h
    rst $28
    ld e, a
    rst $28
    ld e, a
    rst $38
    ld c, a
    rst $38
    rst $10
    nop
    rst $08
    nop
    rst $08
    ld [$08cf], sp
    xor a
    ld [$09ff], sp
    rst $38
    ld bc, $01ff
    rst $38
    cp a
    ld b, c
    and $19

jr_079_6044:
    push bc
    dec sp
    push bc
    dec sp
    db $ec
    inc de
    push de
    dec hl
    rst $10
    dec hl
    xor l
    ld d, e
    cp a
    ld b, e
    adc e
    ld [hl], a
    sbc a
    ld h, a
    ld [$0cf7], sp
    rst $30
    inc e
    rst $20
    inc e
    rst $28
    cp $0d
    ld a, [$b80d]
    ld c, a
    xor d
    ld e, l
    ld a, a
    sbc b
    ld [hl], a
    sbc b
    ld [hl], a
    sbc b
    rst $38
    jr nc, @+$01

    jr nc, jr_079_60a1

    rst $38
    or b
    ld a, a
    or b
    ld a, a
    ldh a, [$7f]
    ldh [$7f], a
    ld h, b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

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

jr_079_60a1:
    nop
    rst $38
    nop
    rst $38
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

Jump_079_60af:
    inc b
    di
    inc c
    and $19
    db $e4
    dec de
    call nz, $cc3b
    inc sp
    ret


    ld [hl], $cf

jr_079_60bd:
    jr nc, jr_079_60bd

    ld bc, $01fe
    db $fd
    ld [bc], a
    cp $01
    ld sp, hl
    ld b, $fc
    inc bc
    rst $38
    ld bc, $03fd
    ei
    rlca
    di
    rrca
    ei
    rrca
    rst $28
    rra
    rst $08
    ccf
    rst $08
    ccf
    adc a
    ld a, a
    adc $3f
    xor $1f
    sbc [hl]
    ld a, a
    ld e, l
    cp [hl]
    sbc l
    ld a, [hl]
    sbc $3d
    ld a, [$ba3d]
    ld a, l
    ld a, b
    rst $38
    ld a, b
    rst $38
    nop
    daa

jr_079_60f2:
    nop
    sbc [hl]
    nop
    rra
    nop
    rst $18
    ld bc, $0197
    adc l
    ld bc, $012b
    xor e
    inc bc
    and e
    inc bc
    ld h, e
    inc bc
    db $e3
    inc bc
    ld a, e
    inc bc
    rst $08
    inc bc
    rst $20
    rlca
    rst $38
    rlca
    and a
    add a
    and a
    ld b, $9f
    ld c, $cf
    ld c, $af
    ld e, $bf
    inc e
    rst $38
    inc c
    rst $18
    inc c
    ld e, a
    jr @+$81

    jr jr_079_61a3

    jr @+$81

    jr nc, jr_079_61a7

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    ld h, b
    rst $38
    rst $28
    ld [hl], b
    ld l, a
    ldh a, [rVBK]
    ldh a, [rIE]
    ldh [$df], a
    ldh [$de], a
    pop hl
    db $fc
    jp $c7f8


    cp b
    rst $00
    ldh a, [$8f]
    ldh a, [$8f]
    ldh [$9f], a
    ld b, b
    cp a
    ld c, b
    cp a
    dec c
    cp $03
    db $fc
    dec de
    db $fc
    db $10
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $61
    sbc [hl]
    ld b, e
    cp h
    ld h, a
    sbc b
    rst $08
    jr nc, jr_079_60f2

    ld [hl], b
    ld b, a
    cp b
    sub a
    ld l, b
    sub a
    ld l, b
    sbc a
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
    nop
    rst $28
    db $10
    rst $38
    nop
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    or $09
    cp $01
    call c, $bc23
    ld b, e
    cp h
    ld b, e
    cp h
    ld b, e
    ld sp, hl
    ld b, $f9
    ld b, $f3
    inc c
    ei
    inc b
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    cp $01
    rst $38
    ld bc, $01ff
    rst $38

jr_079_61a3:
    ld bc, $03fd
    db $fd

jr_079_61a7:
    inc bc
    rst $38
    inc bc
    ei
    rlca
    ld a, e
    add a
    rst $30
    rrca
    and $1f
    xor $1f
    ld l, l
    sbc [hl]
    ld l, l
    sbc [hl]
    ld l, a
    sbc h
    ld e, e
    cp h
    db $db
    inc a

jr_079_61be:
    ld e, a
    cp b
    rst $30
    ld a, b
    or a
    ld a, b
    ld a, a
    ldh a, [$6f]
    ldh a, [rIE]
    ldh [$df], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    rst $38
    add b
    ld a, a
    add b
    ld l, a
    sub b
    ld a, a
    add b
    db $ed
    ld [de], a
    adc d
    ld [hl], l
    add a
    ld a, b
    add a
    ld a, b
    inc bc
    db $fc
    rlca
    ld hl, sp+$20
    rst $18
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38

jr_079_61f0:
    rst $00
    ld hl, sp+$4f
    ldh a, [$87]
    ld hl, sp-$51
    ret nc

jr_079_61f8:
    xor a
    ret nc

jr_079_61fa:
    sbc a
    ldh [$ef], a
    ldh a, [$cf]
    ldh a, [$bf]
    ret nz

    cp a
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
    rst $38
    nop
    rst $38
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
    jr nc, jr_079_61f0

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
    rst $20
    jr jr_079_61f8

    jr c, jr_079_61fa

    jr c, @-$37

    jr c, jr_079_61be

    ld a, b
    rrca
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    rra
    ldh [$3f], a
    ret nz

    rra
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
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$04fb], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    rst $38
    inc bc
    ei
    rlca
    ei
    rlca
    rst $38
    rlca
    rst $30
    rrca
    rla
    rst $28
    cpl
    rst $18
    adc a
    ld a, a
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    cp a
    ld a, a
    cp [hl]
    ld a, a
    cp $7f
    db $fc
    ld a, a
    inc a
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]

jr_079_6290:
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nc

    rst $28
    sub b
    rst $28
    ldh [$9f], a
    ld h, b
    sbc a
    ldh [$1f], a
    ret nz

    ccf
    pop hl
    rra
    pop hl
    rra
    ldh [$1f], a
    ldh [$1f], a
    rst $20
    jr jr_079_6290

    ld e, $c0
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    pop hl
    ld e, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [hl]
    add c
    cp [hl]
    ld b, c
    cp $01
    cp $01
    call c, $d823
    daa
    or h
    ld c, a
    db $f4
    rrca
    ld [hl], a
    adc a
    rst $28
    rra
    add hl, sp
    rst $18
    inc bc
    rst $38
    jp $a73f


    ld e, a
    add [hl]
    ld a, a
    ld b, $ff
    ld e, h
    db $e3
    cp l
    jp nz, $8679

    ld sp, hl
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sbc a
    ld h, b
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
    rra
    ldh [rVBK], a
    ldh a, [$5f]
    ldh [$5e], a
    pop hl
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
    cp $01
    cp $01
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld sp, hl
    ld b, $f9
    ld b, $fb
    inc b
    ld [c], a
    dec e
    ld a, [c]
    dec c
    db $fd
    inc bc
    db $fd
    inc bc
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
    rst $38
    rrca
    rst $38
    rrca
    rst $28
    rra
    cp $1f
    cp $1f
    sbc $3f
    cp h
    ld a, a
    cp h
    ld a, a
    ld a, [$f87d]
    ld a, a
    ld a, b
    rst $38
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
    ret z

    rst $38
    adc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, $00df
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
    ld bc, $03fe
    db $fc
    ld d, $e9
    ld e, $e1
    ld a, $c1
    dec a
    jp $837d


    ld a, e
    add a
    rst $38
    rlca
    rst $30
    rrca
    rst $38
    rrca
    rst $28
    rra
    xor $1f
    ld e, [hl]
    cp a
    db $dd
    ld a, $fc
    ccf
    cp h
    ld a, a
    cp $7d
    ld a, b
    rst $38
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    rst $00
    ld hl, sp-$21
    ldh [$bf], a
    ret nz

    cp c
    add $3f
    ret nz

    rrca
    ldh a, [rIF]
    ldh a, [rNR32]
    db $e3
    cp $01
    db $fc
    inc bc
    db $fd
    inc bc
    ld hl, sp+$07
    ld sp, hl
    rlca
    ld d, a
    xor a
    or a
    ld c, a
    ccf
    rst $08
    rst $28
    rra
    rst $08
    ccf
    rst $38
    rra
    rst $18

jr_079_63e7:
    ccf
    rst $18
    ccf
    cp a

jr_079_63eb:
    ld a, a
    rrca

jr_079_63ed:
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld e, a
    rst $38
    ld e, $ff
    ld e, $ff
    ld e, [hl]
    cp a
    cp h
    ld a, a
    inc a
    rst $38
    inc a
    rst $38
    cp c
    ld a, [hl]
    jr c, @+$01

    ld a, b
    rst $38
    ldh a, [rIE]
    ld a, [c]
    db $fd
    ldh a, [rIE]
    ldh [rIE], a
    add sp, -$09
    ret c

    rst $20
    ld hl, sp-$39
    ldh a, [$cf]
    sbc b
    rst $20
    cp b
    rst $00
    ld a, b
    add a
    jr nc, jr_079_63ed

    jr c, jr_079_63e7

    or b
    ld c, a
    jr c, jr_079_63eb

    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    jr nz, @-$1f

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    jr nc, @+$01

    jr nz, @+$01

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
    jr @+$01

    inc e
    rst $38
    inc e
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld [$08ff], sp
    rst $38
    ld de, $01ff
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
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    sbc a
    ld a, a
    sbc [hl]
    ld a, a
    dec a
    cp $7f
    db $fc
    rst $30
    ld hl, sp-$01
    ldh a, [$ef]
    ldh a, [rIE]
    ldh [$df], a
    ldh [rIE], a
    ret nz

    cp a
    ret nz

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

    ld a, $c1
    inc a
    jp $d728


    nop
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
    add b
    ld a, a
    pop bc
    ld a, $c3
    inc a
    rst $10
    jr c, @-$47

    ld a, b
    ld l, a
    ldh a, [$5f]
    ldh [rP1], a
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
    jr jr_079_64e3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_079_64f3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_079_6503

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_079_6513

    ld [hl-], a

jr_079_64e3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_079_6523

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_079_64f3:
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

jr_079_6503:
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

jr_079_6513:
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

jr_079_6523:
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
    ld [hl], a
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
    jr jr_079_65e4

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_079_65f4

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_079_6604

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_079_6614

    ld [hl-], a

jr_079_65e4:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_079_6624

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $02
    dec b
    inc bc
    dec b

jr_079_65f4:
    dec b
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a

jr_079_6604:
    dec b
    inc bc
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    dec b
    dec b
    dec b
    dec b

jr_079_6614:
    dec b
    dec b
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    nop
    dec b
    dec b
    nop

jr_079_6624:
    nop
    nop
    nop
    dec b
    dec b
    inc bc
    dec b
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
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    inc bc

Jump_079_663d:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    dec b
    inc b
    inc b
    inc b
    inc b
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
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    inc b
    inc b
    dec b
    nop
    nop
    nop
    nop
    nop
    dec b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    dec b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    dec b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    dec b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    nop
    nop
    nop
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
    nop
    inc b
    dec b
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
    dec b
    dec b
    dec b
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
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    nop
    nop
    dec b
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
    dec bc
    dec bc
    dec bc
    jr @+$01

    jr c, @+$01

    or b
    rst $38
    pop bc
    rst $38
    pop hl
    rst $38
    ret nz

    cp $c1

Jump_079_673d:
    db $fc
    add h
    ld sp, hl
    and c
    di
    and e
    rst $30
    and a
    rst $30
    and c
    rst $20
    ld b, a
    rst $08
    add a

jr_079_674b:
    rst $18
    adc e
    rst $18
    rlca
    rst $38
    rst $38
    rst $20
    xor $ef
    ld l, [hl]
    ld a, [bc]
    ld a, [c]
    ld [bc], a
    rst $38
    cp $ff
    ld a, e
    ei
    inc sp
    rst $20
    ld b, e
    nop
    ld a, [hl+]
    nop
    db $fc
    ld c, [hl]
    rst $38
    ld b, a
    ld a, a
    daa
    ld l, a
    daa
    ld l, a
    ld [de], a
    scf
    inc de
    scf
    ld bc, $0177
    daa
    nop
    adc e
    nop
    stop
    ld [bc], a
    nop
    xor [hl]
    add h
    xor h
    ld [bc], a
    adc a
    ldh a, [rIF]
    jr c, jr_079_674b

    dec e
    ret nz

    sbc e
    call nz, $c1de
    rst $18
    ret nz

    sbc a
    ret nz

    dec sp
    add h
    cp a
    dec b
    ld a, a
    ld b, $5f
    ld b, [hl]
    ld e, a
    ld b, [hl]
    ld e, a
    ld b, [hl]
    ld a, a
    rlca
    cp a
    ld b, a
    cp a
    pop bc
    rst $18
    and e
    cp a
    add c
    cp a
    add c
    cp a
    inc bc
    ld l, a
    ld [de], a
    ld a, a
    dec c
    rst $38
    dec c
    rst $38
    ld c, $ff
    ld c, $bf
    ld e, [hl]
    rst $30
    rrca
    rst $18
    inc hl
    rst $38
    nop
    db $fd
    ld [hl+], a
    cp $39
    ld a, a
    cp a
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    rra
    cp a
    rrca
    rst $38
    rrca
    rst $18
    rst $08
    rst $18
    rst $00
    rst $18
    rst $00
    rst $10
    set 5, e
    push bc
    and l
    ld a, [bc]
    push af
    ld [bc], a
    db $fc
    inc bc
    ld d, l
    xor d
    db $10
    db $eb
    ret nc

    ld a, [hl+]
    ld sp, hl
    ld b, $e7
    ret nz

    adc a
    ld de, $46bf
    cp $3e
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    cp h

Call_079_67ee:
    ld a, $dc
    ld e, [hl]
    ld [$005d], sp
    ld d, c
    ld a, [hl+]
    ld [hl], a
    nop
    and h
    inc de
    ret nz

    add a
    ret nc

    ld c, a
    jp z, $a805

    rlca
    ld [hl], h
    inc hl
    db $f4
    ld [hl], a
    cp $fd
    cp $7f
    rst $38
    ccf
    cp a
    ld d, a
    rrca
    inc de
    ld b, e
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0fff
    ld hl, sp+$3f
    ld hl, sp-$44
    ldh a, [$38]
    ldh a, [$38]
    ldh a, [$38]
    ldh a, [rNR32]
    ld hl, sp+$0f
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    ei
    db $10
    rst $38
    sbc b
    rst $38

jr_079_6836:
    ld l, b
    cp a
    inc e
    cp a
    ld a, h

Call_079_683b:
    ccf
    ld a, h
    rst $38
    cp $ff
    cp [hl]
    rst $38
    jp c, $7aff

    rst $38
    add hl, hl
    rst $38
    ld [hl-], a
    rst $38
    or c
    rst $38
    or c
    ld a, a
    ld e, l
    ld a, a
    xor l
    ld e, a
    rst $08
    ccf
    ld h, [hl]
    cp a
    ld d, [hl]
    cp a
    ld [bc], a
    rst $38
    dec hl
    rst $18
    or c
    rst $08
    or l
    rst $08
    ld b, h
    rst $38
    and d
    ld a, a
    ld h, b
    sbc a
    sbc c
    ld h, a
    rrca
    ldh a, [rNR52]
    ld hl, sp+$61
    cp [hl]
    inc e
    pop af
    ldh a, [$fa]

jr_079_6872:
    jp hl


    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    jr c, jr_079_6872

    jr z, jr_079_6836

    nop
    ld e, d
    ld [bc], a
    ld c, d
    ei
    db $76
    db $fd
    ret z

    rst $28
    jp $86fe


    cp l
    nop
    ei
    nop
    rst $38
    add b
    rst $38
    nop
    nop
    sub d
    sub b
    cp d
    ld [$00b8], sp
    ld [$0800], sp
    jr nc, jr_079_68d0

    inc l
    inc a
    inc d
    dec a
    rst $38
    sbc $ff
    ld c, [hl]
    rst $38
    sub [hl]
    rst $38
    adc a
    rst $38
    adc $ff
    rst $08
    rst $38
    rst $20
    rst $28
    db $fd
    rst $28

jr_079_68b1:
    rst $28
    rst $28
    ld l, e
    ld l, a
    ld l, a
    rst $38
    ld h, a
    rst $28
    ld [hl], e
    ld a, a
    xor c
    jp hl


    ld [bc], a
    rst $38
    nop
    rst $38
    add b
    rst $10
    rst $28
    rst $28
    rst $20
    rst $20
    db $eb
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    rst $30
    rst $30
    rst $30

jr_079_68d0:
    rst $30
    di
    rst $30
    db $f4
    rst $30
    cp $f4
    cp $fd
    ld [hl], b
    ld [hl], l
    add d
    dec hl
    ld d, l
    ld b, e
    xor e
    rrca
    and c
    add e
    ld b, h
    push bc
    adc d
    jp c, $db81

    ret nz

    adc $c3
    rst $28
    call z, Call_079_67ee
    ld l, a
    rst $20
    rst $20
    daa
    db $e3
    jp $d1e3


    ld [hl], l
    add d
    ld [hl], h
    add b
    ld d, $e0
    jr nc, jr_079_68d0

    ld [de], a
    ldh a, [rNR21]
    ldh a, [$32]
    pop de
    ld [hl], d
    or d
    ld [hl], d
    ld [c], a
    ld a, [c]
    ret z

    jp nz, $c2fa

    cp $92
    rst $38
    sub b
    rst $38
    ld [hl], $ff
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    adc [hl]
    ld a, a
    ld e, a
    inc a
    ld a, h
    ld a, b
    ld a, b
    ld [hl], b
    ld d, b
    jr nz, jr_079_6977

    jr nz, jr_079_68b1

    ld [hl], b
    rlca
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    ld a, [c]
    rst $38
    ld a, [$78ff]
    cp $78
    cp $78
    rst $38
    ld hl, sp-$02
    cp h
    cp $5c
    rst $38
    ld e, h
    rst $38
    ld e, h
    cp $0e
    ld a, a
    ld c, $7e
    ld c, $ff
    ld [bc], a
    rst $00
    ld b, e
    ld [hl], a
    ld [bc], a
    ld e, e
    nop
    ld a, a
    jr nz, jr_079_69d0

    ld e, b
    ld a, h
    ld a, b
    ld a, l
    ld e, h
    ld a, l
    ld a, h
    ld a, l
    ld l, h
    rst $38
    sbc h
    sbc a
    xor [hl]
    cp [hl]
    sbc [hl]
    cp $be
    cp [hl]
    inc c
    ld e, $16
    ld e, [hl]
    ret c

    cp $68
    ld a, a
    ld l, b
    db $fd
    ld l, b
    ei
    ldh [$eb], a
    add b
    or [hl]
    nop

jr_079_6977:
    add [hl]
    nop
    ld b, [hl]
    ret nz

    and $c1
    pop hl
    ld b, b
    jp hl


    nop
    adc a
    rlca
    sub a
    rlca
    ld h, a
    inc de
    ld e, a
    add hl, de
    cp a
    inc e
    ld a, a
    ld e, $ff
    inc c
    rst $38
    and [hl]
    rst $38
    scf
    rst $38
    inc sp
    ld a, a
    dec e
    ld a, a
    dec d
    ld a, a
    add hl, bc
    cp a
    inc b
    rst $18
    ld b, $4f
    add hl, bc
    ld e, a
    ld [bc], a
    rla
    nop
    ld de, $4600
    nop
    add hl, bc
    nop
    ld c, b
    nop
    ld c, d
    add b
    ret nc

    add b
    or b
    ldh [$f1], a
    ldh [$e0], a
    ldh [$f0], a
    ldh [$f2], a
    ld [hl], b
    ldh a, [$30]
    db $76
    jr nc, @+$3a

    rst $38
    ld [hl-], a
    rst $38
    jp nc, $e2ff

    rst $38
    and $ff
    or $ef
    db $e4
    db $fd
    ld [c], a
    rst $38
    ld d, c

jr_079_69d0:
    cp l
    dec bc
    ld a, a
    jr jr_079_6a50

    xor h
    rst $38
    ld [hl], b
    rst $38
    ret nz

    rst $38
    ld h, b
    rst $38
    ld [hl], d
    rst $38
    ld a, [hl-]
    rst $38
    sbc $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    cp [hl]
    cp a
    ld e, l
    ccf
    dec c
    rst $08
    inc de
    ld l, a
    db $d3
    rst $28
    ld h, e
    push af
    adc e
    db $fd
    jp c, $d9be

    db $fd
    dec sp
    ld a, l
    cp [hl]
    ld a, [hl]
    dec l

Jump_079_6a00:
    ld a, a
    ld [$011c], sp
    ld a, $04
    rra
    ld b, d
    ld c, a
    ld [bc], a
    ld c, a
    ld [hl+], a
    ld c, l
    ld [hl+], a
    ld [hl], a
    ld [bc], a
    xor d
    dec d
    xor c
    inc d
    call z, Call_000_1f31
    and b
    cp a
    rlca
    jp Jump_000_1b8e


    dec d
    rra
    rra
    cpl
    rra
    daa
    rra
    inc hl
    rra
    ld c, l
    ccf
    adc c
    ld a, a
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld d, $fc
    ld e, [hl]
    db $fc
    jp c, $ec7e

    ld a, [hl]
    db $ed
    ld a, [hl]
    ld h, $ff
    ld h, [hl]
    cp a
    sub $2f
    rrca
    ld l, a
    rrca
    rst $18
    rlca
    rst $38
    rrca
    adc a
    rrca
    ld l, a
    rrca
    ld l, a
    inc hl
    rst $38
    ld h, e
    ld a, a

jr_079_6a50:
    ld d, e
    di
    ld h, c
    rst $20
    ld h, c
    rst $28
    add hl, bc
    ld e, a
    add hl, de
    ld e, a
    rlca
    ccf
    rlca
    ld l, a
    db $76
    ld [hl], a
    xor c
    ld a, [hl]
    ei
    inc e
    rst $38
    inc e
    db $fc
    rra
    rst $18
    ccf
    db $eb
    rra
    rst $28
    sbc a
    xor a
    rst $18
    push bc
    ld a, a
    db $e3
    ld e, a
    add d

jr_079_6a75:
    ld a, a
    and $3b
    dec h
    db $db
    ld a, e
    sub l
    and e
    ld e, l
    ld a, [hl]
    adc c
    cp h
    ld b, e
    ld a, [$fe05]
    add l
    ld sp, hl
    add $5a
    rst $20
    ld [hl-], a
    rst $28
    xor c
    ld [hl], a
    sub c
    ld a, a
    sub c
    ld a, a
    ld a, [bc]
    rst $38
    jr z, jr_079_6a75

    ld c, h
    or a
    inc a
    rst $00
    adc h
    di
    sbc [hl]
    db $e3
    sbc $63
    ld h, c
    rst $38
    pop hl
    rst $28
    pop hl
    rst $20
    ld b, b
    rst $00
    add d
    add $08
    ld c, $00
    ld b, e
    nop
    ld [hl], c
    inc b
    rst $28
    add a
    adc a
    ld bc, $097f
    cp c

jr_079_6ab8:
    dec h
    ccf
    inc h
    ld a, a
    nop
    ld a, $00
    db $10
    rst $38
    ld e, c
    ei
    db $e4
    rst $38
    and a
    rst $38
    rst $10
    rst $38
    rst $18
    rst $38
    rst $10
    rst $38
    db $fd
    rst $38
    sub $40
    ld [hl], a
    ld h, b
    ld h, a
    jr nz, jr_079_6b0d

    db $10
    ld [hl], $10
    sub a
    ld [$0c9f], sp
    rst $18
    ld h, $2e
    rst $38
    rst $28
    rst $38
    rlca
    rst $38
    rla
    rst $38
    scf
    rst $38
    ld a, d
    rst $38
    ei
    rst $38
    ld a, c
    ei
    rst $38
    rst $38
    ld a, d
    rst $38
    cp h
    rst $38
    ld a, l
    rst $38
    jr c, jr_079_6ab8

    ld e, e
    rst $18
    inc hl
    rst $28
    sub c
    rst $10
    jp hl


    ei
    add h
    rst $38
    xor b
    rst $38
    ld l, e
    ld a, a
    jp hl


    rst $38
    ld [hl], c
    ld a, a
    push af
    ld l, a

jr_079_6b0d:
    sub l
    dec a
    adc a
    xor a
    ld d, h
    rst $10
    add hl, hl
    rst $38
    dec b
    rst $18
    ld l, d
    rst $18
    ld [hl+], a
    xor a
    jp c, $abdf

    rst $18
    pop hl
    rst $20
    ret c

    db $eb
    sub h
    ld a, [c]
    xor l
    rst $38
    jr nc, @+$01

    inc [hl]
    rst $38
    and [hl]
    ld [hl], a
    xor a
    ld h, a
    dec e
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    adc [hl]
    nop
    call z, $8000
    nop
    ld b, c
    add b
    ld b, b
    add b
    ld h, d
    add b
    rla
    ret nz

    cp e
    ret nz

    or a
    ret nz

    sbc c
    ldh [$5f], a
    ldh [$5f], a
    ldh [$50], a
    ldh a, [$7a]
    ldh a, [$37]
    ld hl, sp-$41
    ld hl, sp-$61
    ld hl, sp-$65
    db $fc
    rst $08
    db $fc
    ld c, a
    db $fc
    ld c, l
    cp $0f

jr_079_6b67:
    cp $47
    cp [hl]
    ld b, $ff
    ld b, [hl]
    cp a
    db $d3
    cp a
    add e
    rst $38
    dec hl
    rst $18
    ret


    rst $38
    adc c
    rst $38
    add c
    rst $38
    daa
    db $fd
    ld [de], a
    db $fd
    jr @+$01

    pop de
    cp [hl]
    ld [$08ff], sp
    rst $38
    jr z, jr_079_6b67

    inc c
    rst $38
    inc [hl]
    rst $28
    or [hl]
    ld l, a
    ld [de], a
    rst $38
    ld a, [de]
    rst $30
    add c
    rst $38
    adc c
    rst $38
    ld c, a
    rst $38
    ld b, l
    rst $38
    ld h, h
    rst $38
    inc hl
    rst $38
    inc hl
    rst $38
    inc sp
    rst $38
    ld de, $abff
    db $fd
    jp z, Jump_079_417d

    cp $c4
    ld a, a
    and b
    ld a, a
    ld [$d23f], a
    ccf
    ldh a, [$1f]
    ld h, c
    sbc a
    ld l, b
    sbc a
    add sp, -$61
    ld h, [hl]
    sbc l
    ld sp, $bece
    ld b, e
    cp c
    ld b, [hl]
    ld e, d
    and l
    xor $11
    and a
    ld e, b
    or a
    ld c, b
    or a
    ld c, b
    rst $38
    inc b
    reti


    ld h, $8f
    ld [hl], d
    push af
    ld a, [bc]
    sbc a
    ld h, c
    xor d
    ld [hl], l
    rst $28
    db $10
    push hl
    ld a, [de]
    sub l
    ld l, d
    ld [de], a
    db $ed
    dec c
    rst $38
    ld l, $ff
    sbc [hl]
    rst $38
    ld e, d
    rst $38
    cp $ff
    xor $ef
    ld e, [hl]
    sbc $1e
    sbc a
    rst $38
    cpl
    rst $38
    and a
    rst $38
    call c, Call_079_7eff
    rst $38
    ld a, [hl]
    rst $38
    ld a, [$ffff]
    rst $38
    db $fd
    cp $7b
    rst $38
    ld hl, sp-$02
    pop af
    cp $f3
    cp $e5
    cp $cd
    db $fc
    rst $18
    db $fc
    cp a
    db $fc
    ccf
    db $fd
    ld h, a
    db $fc
    rst $18
    db $fc
    rst $38
    db $fd
    ld l, e
    db $fc
    ld h, e
    db $fc
    dec de
    sbc b
    rst $38
    db $fc
    jp Jump_079_43fc


    xor $79
    ld hl, sp+$07
    cp b
    ld c, a
    ret c

    cpl
    ld hl, sp+$47
    add sp, -$09
    ld l, a
    sbc h
    ccf
    call z, $cc3f
    dec h
    sbc $95
    ld l, [hl]
    sub a
    ld l, [hl]
    rla
    ld l, [hl]
    rla
    ld l, [hl]
    ld h, [hl]
    ccf
    ld b, d
    ccf
    ld a, [bc]
    scf
    nop
    ccf
    xor a
    db $10
    adc a
    db $10
    adc [hl]
    ld de, $1fe9
    pop af
    rrca
    db $fd
    rrca
    inc a
    rrca
    rst $30
    rrca
    or $0f
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    ld a, [$fe07]
    inc bc
    cp $03
    rst $38
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    rst $38
    ld bc, $01ff
    rra
    rst $38
    cp $ff
    inc bc
    db $fc
    add hl, bc
    or $80
    rst $38
    ld b, h
    ei
    sbc [hl]
    pop hl
    call nz, $c0fb
    rst $38
    ld [$48f7], sp
    rst $30
    nop
    rst $38
    ld a, d
    cp l
    ld c, e
    cp h
    ld c, b
    cp a
    ld a, [hl+]
    db $dd
    ld a, e
    call c, $dc2b
    dec bc
    db $fc
    nop
    rst $38
    add c
    cp $85
    cp $93
    cp $d2
    rst $38
    ld d, e
    rst $38
    pop hl
    rst $38
    ld l, c
    rst $30
    pop hl
    rst $38
    rst $20
    rst $38
    ld b, l
    rst $38
    ld b, b
    rst $38
    ld d, d
    rst $28
    ld [bc], a
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    add l
    rst $38
    dec b
    rst $38
    ld e, $ef
    ld e, [hl]
    rst $28
    rra
    rst $28
    dec b
    rst $38
    and [hl]
    ld e, a
    ld h, $df
    jp nc, Jump_079_60af

    sbc a
    ret


    ccf
    ret


    ccf
    db $e4
    rra
    and $1d
    ldh [$1f], a
    di
    ld e, $e2
    rra
    ld [hl], e
    adc a
    pop hl
    rra
    jp hl


    rla
    db $eb
    rla
    ld a, [c]
    rrca
    push af
    dec de
    pop af
    rra
    db $e4
    dec de
    call z, $c33b
    inc a
    ldh [$1f], a
    jp nz, $c23f

    ccf
    reti


    scf
    call nc, $cc3b
    dec sp
    jp z, $e73d

    inc a
    pop hl
    ld a, $f6
    dec sp
    or l
    ld a, e
    di
    dec a
    ret nc

    ccf
    or h
    ld e, e
    and b
    ld e, a
    call c, $ea27
    rla
    xor [hl]
    ld d, e
    or l
    ld c, e
    cp d
    ld b, l
    db $dd
    ld h, d
    rst $28
    ld [hl], b
    cp a
    ld [hl], b
    rst $00
    jr c, @-$2b

    inc l
    add c
    ld a, [hl]
    ld hl, $a5de
    ld e, [hl]
    inc sp
    adc $b3
    ld c, [hl]
    ld e, c
    and [hl]
    pop af
    ld e, $e9
    ld e, $7d
    add [hl]
    db $db
    ld h, $ff
    ld [bc], a
    rst $28
    ld [de], a
    add sp, $17
    db $ec
    inc de
    db $ec
    inc de
    db $ec
    inc de
    ld [$ef15], a
    ld de, $09f7
    ld [hl], h
    adc e
    rst $38
    nop
    rst $38
    nop
    db $eb
    nop
    xor [hl]
    ld d, c
    rrca
    ldh a, [$cf]
    or b
    xor a
    ret nc

    sub a
    add sp, $37
    ret z

    or a
    ret z

    ld [hl], e
    call z, $d46b
    ld l, e
    call nc, $e45b
    ld c, e
    db $f4
    ld l, c
    or $61
    cp $65
    ld a, [$f32c]
    db $10
    rst $38
    ccf
    ret nz

    ld a, a
    add b
    nop
    rst $38
    ret z

    scf
    nop
    rst $38
    nop
    rst $38
    ld [c], a
    dec e
    and b
    ld e, a
    nop
    rst $38
    ccf
    ret nz

    ccf
    ret nz

    jr z, @-$27

    dec b
    ld a, [$609f]
    cp $01
    ld bc, $bffe
    ld b, b
    cp $01
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    sub $29
    rst $38
    nop
    rst $38
    nop
    ld [bc], a
    db $fd
    ccf
    ret nz

    rst $38
    nop
    ld a, a
    add b
    ld a, [hl]
    add c
    add l
    ld a, [$d0af]
    cp a
    ret nz

    db $dd
    ld [c], a
    ld c, c
    or $5b
    db $e4
    ld e, a
    ldh [$5f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$5f], a
    ldh [$5f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$bf], a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    cp a
    ret nz

    ret nz

    rst $38
    ret nz

    rst $38
    call nz, $dafb
    push hl
    jp c, $dae5

    push hl
    call c, Call_079_5ee3
    pop hl
    sbc h
    db $e3
    call c, $9ee3
    pop hl
    sbc [hl]
    pop hl
    ld a, $c1
    ld a, $c1
    ld a, [hl]
    pop bc
    ld a, [hl]
    pop bc
    ld a, [hl-]
    push bc
    ld a, [hl]
    pop bc
    ld a, $c1
    ld a, $c1
    ld a, $c1
    inc a
    jp $c53a


    cp [hl]
    pop bc
    ret nc

    rst $28
    ret nc

    rst $28
    ldh a, [$cf]
    or b
    rst $08
    and b
    rst $18
    adc b
    rst $30
    sbc h
    pop bc
    ld d, $c1
    dec l
    ret nz

    sub l
    ret nz

    sbc d
    pop bc
    add c
    ret nz

    sub l
    ret nz

    adc c
    ret nz

    xor h
    pop bc
    sub h
    pop bc
    cp $03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    cp $01
    rst $38
    nop
    db $f4
    nop
    inc hl
    nop
    cp $01
    or b
    rst $08
    ldh [$9f], a
    sub h
    db $eb
    ld d, b
    rst $28
    ld d, l
    ld [$f847], a
    ld d, a
    add sp, -$2f
    ld l, [hl]
    add d
    ld a, l
    ret nz

    ld a, a
    add b
    ld a, a
    xor b
    ld a, a
    db $fd
    ccf
    db $fd
    ccf
    cp h
    ld a, a
    cp h
    ld a, a
    dec bc
    db $f4
    rst $38
    nop
    inc bc
    db $fc
    ccf
    ret nz

    ld a, a
    add b
    dec bc
    db $f4
    rrca
    ldh a, [$1f]
    ldh [rTIMA], a
    ld a, [$00ff]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $db
    inc h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp e
    ld b, h
    dec hl
    call nc, Call_079_40bf
    cp a
    ld b, b
    ret nc

    cpl
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sbc b
    ld h, a
    db $fd
    ld [bc], a
    rst $38
    nop
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
    cp $01
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
    cp $01
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    cp $01
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    db $10
    rst $20
    inc [hl]
    swap h
    set 4, a
    rst $38
    rst $00
    rst $38
    add a
    rst $38
    add l
    rst $38
    add c
    rst $38
    add e
    rst $38
    add l
    rst $38
    add l
    rst $38
    rst $08
    rst $38
    add [hl]
    rst $38
    sub l
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
    db $10
    rst $28
    nop
    rst $38
    ld sp, $11ce
    xor $1b
    db $e4
    cp l
    ld b, d
    ld e, a
    and b
    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    rst $38
    nop
    rst $30
    nop
    or $00
    ld a, [$b600]
    ld b, c
    cp $01
    cp $01
    rst $38
    ld bc, $01ff
    rst $30
    ld bc, $01be
    cp [hl]
    ld bc, $01fe
    rst $38
    nop
    cp $00
    add b
    nop
    ld e, a
    nop
    ld [hl], d
    adc l
    ld [hl], $c9
    ld [hl], a
    adc b
    ld [hl], $c9
    or $89
    db $76
    adc c
    rst $30
    adc b
    ld [hl], a
    adc b
    dec sp
    call nz, $c47b
    ld a, e
    call nz, $c13e
    ld a, d
    push bc
    ld a, c
    add $d8
    rst $20
    ld d, b
    rst $28
    ld [de], a
    db $ed
    rst $38
    nop
    and a
    ld e, b
    ld hl, sp-$01
    ldh [rIE], a
    xor b
    rst $38
    ldh a, [rIE]
    ret nc

    rst $38
    db $fd
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    add sp, -$01
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    ld e, a
    and b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    cp $01
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    rst $38
    nop
    ei
    inc b
    rst $38
    nop
    ld sp, hl
    ld b, $fb
    inc b
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
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
    db $fd
    ld [bc], a
    db $fc
    inc bc
    db $fc
    inc bc
    db $fd
    ld [bc], a
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
    rst $28
    rst $38
    ld e, a
    rst $38
    ld c, a
    rst $38
    ld b, a
    rst $38
    add e
    rst $38
    inc bc
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
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
    add h
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
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
    ld [$08f7], sp
    rst $30
    ld [$9cf7], sp
    db $e3
    ld a, [hl-]
    push bc
    ccf
    ret nz

    rra
    ldh [$5f], a
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$09f6], sp
    rst $30
    ld [$09f6], sp
    ld a, a
    add b
    nop
    nop
    nop
    nop
    rst $38
    nop
    ldh a, [$8f]
    pop af
    adc a
    or a
    ret


    ld a, [c]
    adc l
    rst $08
    or c
    rst $28
    sub c
    cpl
    pop de
    rst $08
    or c
    ld l, a
    sub c
    ld l, $d1
    xor a
    pop de
    xor a
    pop de
    adc l
    di
    adc l
    di
    adc l
    di
    db $e4
    db $db
    cp a
    ld b, b
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
    ld [bc], a
    db $fd
    nop
    rst $38
    ld bc, $02fe
    db $fd
    nop
    rst $38
    nop
    rst $38
    and [hl]
    rst $38
    ret nc

    rst $38
    nop
    rst $38
    nop
    rst $38
    daa
    ret c

    rrca
    ldh a, [rSC]
    db $fd
    ld bc, $80fe
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
    cp $01
    ld b, a
    cp b
    rst $38
    nop
    rst $30
    ld [$00ff], sp
    rst $30
    ld [$08f7], sp
    rst $38
    nop
    rst $30
    ld [$10ef], sp
    db $eb
    inc d
    db $eb
    inc d
    add e

jr_079_70c5:
    ld a, h
    ld b, e
    cp h
    db $d3
    inc l
    ld d, c
    xor [hl]
    ld de, $fdee
    ld [bc], a
    db $fd
    ld [bc], a
    jp hl


    ld d, $e9
    ld d, $af
    ld d, b
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    ret nz

    ccf
    sbc a
    ld a, a
    cp a
    ld a, a
    or b
    ld a, a
    or b
    ld a, a
    or b
    ld a, a
    or b
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    ccf
    rst $38
    nop
    rst $38
    jr nc, jr_079_70c5

    ld a, h
    add e
    ld a, [hl]
    add c
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
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
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$18f7], sp
    rst $20
    inc c
    di
    ld e, $e1
    ld a, [hl+]
    pop de
    cpl
    ret nc

    nop
    rst $38
    ccf
    ret nz

    ld e, e
    add b
    ld [hl], a
    add b
    ld e, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, [hl]
    add c
    cp $81
    ld a, [hl]
    add c
    ld a, a
    add c
    ccf
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld b, l
    cp a
    ld bc, $01ff
    rst $38
    add l
    rst $38
    xor l
    rst $38
    ld b, c
    cp a
    ld h, c
    sbc a
    ld [$20f7], sp
    rst $18
    ldh [$9f], a
    push bc
    cp e
    ld h, e
    sbc a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    jr nz, @+$01

    nop
    rst $38
    inc bc
    db $fc
    rst $38
    nop
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @-$1f

    nop
    rst $38
    nop
    rst $38
    ccf
    ret nz

    ld b, b
    cp a
    ld a, h
    add c
    push af
    nop
    ccf
    ret nz

    nop
    rst $38
    ld [bc], a
    rst $38
    inc h
    rst $38
    ld bc, $1fff
    rst $38
    ld [c], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, $ffff
    rst $38
    db $ed
    rst $38
    ld hl, sp-$01
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
    db $fc
    inc bc
    ld c, a
    or b
    rst $38
    nop
    rst $30
    ld [$00ff], sp
    rst $30
    ld [$04fb], sp
    rst $38
    nop
    ei
    inc b
    ei
    inc b
    ld sp, hl
    ld b, $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fd
    ld [bc], a
    dec a
    jp nz, $e1de

    sbc $e1
    sbc $e1
    sbc $e1
    ld a, [hl]
    pop hl
    ld a, [hl]
    pop hl
    rst $38
    ldh [$df], a
    ldh [$c0], a
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    dec hl
    rst $38
    dec sp
    rst $38
    add hl, hl
    rst $38
    ld hl, $20ff
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add sp, $17
    ldh a, [rIF]
    ldh [$1f], a
    ld [c], a
    dec e
    rst $20
    add b
    rst $38
    add b
    rst $38
    add b
    ei
    add h
    rst $38
    add b
    rst $38
    add b
    ei
    add h
    ld a, a
    add b
    ret nc

    nop
    nop
    nop
    nop
    nop
    ld a, $01
    rrca
    pop af
    dec e
    db $e3
    ld e, a
    and c
    dec c
    di
    rst $38
    ld bc, $837d
    rst $28
    ld de, $13ec
    db $fc
    inc bc
    call c, $de23
    inc hl
    ld e, a
    and e
    db $e3
    rst $38
    daa
    rst $38
    inc hl
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_079_725a:
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    ld a, [bc]
    push af
    ld e, l
    and d
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
    cp $01
    ld hl, sp+$07
    ldh [$1f], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    cp $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    set 7, a
    ld d, a
    rst $38
    xor a
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

jr_079_7297:
    nop
    ldh a, [rIF]
    nop
    rst $38
    cp a
    ld b, b
    cp [hl]
    ld b, c
    cp a
    ld b, b
    rst $38

jr_079_72a3:
    nop
    rst $38
    nop
    rst $38
    nop
    sbc a
    ld h, b
    rlca
    ld hl, sp-$31
    jr nc, jr_079_725a

    ld d, h
    rst $28
    db $10
    rst $00
    jr c, jr_079_7297

    dec e
    ldh [$1f], a
    or b
    ld c, a
    push de
    ld a, [hl+]
    pop bc
    ld a, $d3
    inc l
    rst $30
    ld [$2cd3], sp
    and e
    ld e, h
    inc de
    db $ec
    add e
    ld a, h
    ld b, c
    cp [hl]
    ld de, $69ee
    sub [hl]
    ld a, c
    add [hl]
    db $fd
    ld [bc], a
    rst $38
    ld [bc], a
    db $fc
    inc bc
    and b
    ld e, a
    jr c, jr_079_72a3

    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, l
    add d
    dec a
    jp nz, Jump_079_46b9

    cp b
    ld b, a
    cp h
    ld b, e
    cp l
    ld b, d
    cp a
    ld b, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp l
    rst $38
    scf
    rst $38
    inc d
    rst $38
    inc d
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld a, [hl]
    add c
    rst $38
    add b
    nop
    nop
    nop
    nop
    inc bc
    nop
    jr nc, @-$2f

    nop
    rst $38
    nop
    rst $38
    and e
    sbc $d1
    xor [hl]
    dec e
    ld [c], a
    sbc a
    ld h, d
    adc c
    db $76
    dec bc
    or $15
    xor $07
    db $fc
    ld b, l
    cp $57
    db $fc
    cp $ff
    db $fd
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    sbc a
    ld h, b
    rst $38
    nop
    ld a, [$ff05]
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
    db $fd
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

jr_079_7379:
    inc bc
    cp $03
    or $0b
    rst $38
    inc bc
    ei
    rlca
    rst $38
    rlca
    rst $28
    rla
    rlca
    rst $38
    add a
    ld a, a
    rlca
    rst $38
    dec c
    rst $38
    dec c
    rst $38
    ld hl, sp+$0f
    ld hl, sp+$0f
    jp c, $f83d

    rra
    jr nc, jr_079_7379

    db $ec
    dec de
    ld l, h
    sbc e
    ld hl, sp+$0f
    inc sp
    adc $55
    xor [hl]
    inc [hl]
    rst $08
    inc a
    rst $00
    add hl, bc
    rst $30
    add hl, bc
    rst $30
    adc e
    ld [hl], a
    add [hl]
    ld a, e
    ld b, l
    cp e
    inc b
    ei
    rlca
    ld sp, hl
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld hl, $61de
    sbc [hl]
    and l
    ld e, d
    di
    inc c

jr_079_73c4:
    pop de

jr_079_73c5:
    ld l, $f1
    ld c, $f1
    ld c, $f9
    ld b, $f8
    rlca
    ld hl, sp+$07
    ld a, [$fa07]
    rlca
    db $fc
    inc bc
    db $fc
    inc bc
    db $fd
    inc bc
    di
    dec c
    ld a, a
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, a
    add b
    ccf
    ret nz

    inc a
    jp $60df


    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    rst $18
    jr nz, jr_079_73c4

    jr nc, jr_079_73c5

    ld sp, $30cf
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
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
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ldh a, [rIF]
    db $f4
    rrca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    cp [hl]
    ld b, c
    rra
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $18
    add b
    rst $38
    add b
    ld a, a
    add b
    rst $38
    nop
    ld c, $01
    ld a, $01
    rst $30
    add hl, bc
    ld b, l
    cp e
    ld d, l
    xor e
    ld d, h
    xor e
    ld b, e
    cp [hl]
    jp $c13e


    ld a, $c0
    ccf
    add d
    ld a, l
    and a
    ld e, h
    and e
    ld e, h
    jp $c33c


    inc a
    add [hl]
    ld a, c
    ld c, [hl]
    ld sp, hl
    ld c, [hl]
    ld sp, hl
    add [hl]
    ld a, c
    adc h
    ld [hl], e
    adc [hl]
    ld [hl], e
    dec c
    ld [hl], d
    inc e
    ld [hl], e
    adc l
    ld [hl], d
    push af
    ld a, a
    ld [hl], l
    rst $38
    db $76
    rst $38
    and d
    rst $38
    ld [c], a
    rst $38
    ld c, e
    rst $38
    ret


    rst $38
    ld b, a
    rst $38
    cp b
    ld b, a
    ld l, h
    sub e
    ld l, c
    sub [hl]
    ld l, h
    sub e
    ldh a, [rIF]
    ld hl, sp+$07
    call c, $d027
    cpl
    add b
    ld a, a
    ret z

    ccf
    ret


    ccf
    ld c, c
    cp a
    pop af
    rra
    ld [hl-], a
    rst $18
    ld h, e
    sbc [hl]
    ld l, e
    sbc [hl]
    dec a

jr_079_7491:
    adc $15
    xor $1d
    and $0e
    push af
    jr z, jr_079_7491

    ccf
    ld a, [c]
    or $7b
    dec d
    ei
    scf
    ld sp, hl
    or a
    ld sp, hl
    ld [bc], a
    db $fd
    inc hl
    db $fc
    ld c, e
    db $f4
    add hl, bc
    or $2d
    sub $65
    sbc $68
    rst $18
    ret c

    rst $28
    add b

jr_079_74b5:
    rst $38
    nop
    rst $38
    jr nz, @-$1f

    ld bc, $85fe
    ld a, [$bc53]
    ld [hl], a
    db $fc
    ld [c], a
    ld a, l
    ld [$a57d], a
    ld a, d
    db $f4
    dec sp
    ld h, [hl]
    cp c
    ld l, h
    or e
    ld b, b
    cp a
    db $76
    sbc e
    ld h, b
    sbc a
    jr z, jr_079_74b5

    ld a, c
    adc [hl]
    ld sp, hl
    ld c, $f3
    inc c
    ld d, d
    xor l
    ld a, l
    add a
    ld a, l
    add a
    ld a, [$ba87]
    rst $00
    ld a, $c3
    ld a, $c3
    dec a
    jp Jump_079_41ff


    sbc a
    ld h, c
    sbc a
    ld h, c
    ld e, $e1
    rra
    ldh [$8f], a
    ld [hl], b
    sbc e
    ld h, h
    rst $08
    jr nc, jr_079_756c

    sub b
    xor a
    ld d, b
    rst $28
    db $10
    rst $10
    jr z, @-$07

    ld [$08f7], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    rst $38
    rst $38
    db $fd

Call_079_7513:
    rst $38
    rst $38
    rst $38
    sbc $ff
    cp $ff
    cp $ff
    cp $ff
    xor $ff
    rla
    add sp, -$09
    ld [$c07f], sp
    ccf
    ret nz

    or a
    ret z

    or a
    ret c

    scf
    ret c

    cp [hl]
    pop de
    ld e, [hl]
    or c
    ld l, [hl]
    sub c
    jp z, $9c35

    ld h, e
    sbc a
    ld h, d
    ld e, c
    and [hl]
    add hl, de
    and $b9
    ld b, [hl]
    dec a
    add $38
    rst $00
    db $10
    rst $28
    ld a, [hl-]
    call $cd3a
    ld h, d
    sbc l
    ld h, [hl]
    sbc c
    ld [hl], a
    sbc c
    push hl
    dec de
    db $e4
    dec de
    ret


    ld [hl], $d5
    ld a, [hl+]
    di
    inc l
    db $d3
    inc l
    cp e
    ld b, h
    ld a, e
    call nz, $c43b
    ld e, a
    and b
    rst $30
    adc b
    rst $30
    adc b
    rst $38
    add b
    ld l, a
    sub b

jr_079_756c:
    ld l, [hl]
    sub c
    ld l, a
    sub c
    rst $08
    ld sp, $23fc
    cp l

jr_079_7575:
    ld h, d
    sbc a
    ld h, d
    ld e, c
    and $fb
    ld b, h
    ccf
    call nz, $84fb
    rst $30
    adc b
    ld a, l
    adc d
    ld d, a
    xor b
    rst $28
    db $10
    xor $11
    sbc $21
    sbc $21
    ld e, l
    and d
    and d
    rst $38
    ld b, [hl]
    cp $44
    rst $38
    add h
    rst $38
    adc b

jr_079_7599:
    cp $88
    rst $38
    adc b
    db $fd
    db $10

jr_079_759f:
    db $fd
    db $10

jr_079_75a1:
    rst $30
    add b
    ei
    and b
    jp hl


    and b
    db $e3
    ret nz

    rst $38
    jp nz, Jump_079_42e6

    rst $30
    ld b, h
    rst $30
    ld h, h
    ld l, h
    jr nz, jr_079_75a1

    jr z, jr_079_7575

    db $10
    cp [hl]
    db $10
    cp [hl]
    db $10
    rst $38
    nop
    rst $18
    add hl, bc
    rst $28
    and [hl]
    ld c, c
    ld [$2145], a
    add $71
    add [hl]
    ld [hl], l
    add d
    or c
    ld b, d
    ldh a, [$03]
    ld l, d
    sub c
    ld l, c
    sub c
    ret nz

    add hl, sp
    db $ed
    jr nc, jr_079_759f

    ld [hl], h
    ld h, b
    call c, $dc22
    ret nz

    cp [hl]
    ld h, d
    sbc h
    sub e
    ld l, h
    sbc a
    ld l, b
    ld b, a
    cp b
    rrca
    ldh a, [$3f]
    ldh [$df], a
    ld h, b
    ld a, a
    ret nz

    ccf
    ret nz

    xor $91
    ld a, a
    add c
    rst $18
    and d
    cp e
    call nz, $c837
    cp l
    ld c, d
    rst $20
    ld e, b
    and e
    ld a, h
    db $e3
    inc a
    db $e3
    inc a
    db $e3
    inc a
    jp $f13d


    ld e, $f1
    ld e, $e3
    inc e
    rst $20
    jr jr_079_7599

    ld a, a
    adc b
    ld a, a
    adc d
    ld a, a
    ld b, $ff
    inc [hl]
    rst $08
    ld [hl], a
    adc a
    rst $20
    rra
    or e
    ld c, a
    ld b, d
    rst $38
    ld b, d
    or $52
    ld a, [$f840]
    nop
    db $f4
    nop
    ldh a, [rP1]
    db $fc
    add b
    ei
    ld b, b
    di
    ret nz

    db $e3
    add b
    jp nz, $e080

    add b
    db $f4
    add b
    and $02
    and [hl]
    add b
    xor [hl]
    rst $38
    rst $08
    rst $38
    db $ed
    ei
    rst $18
    rst $30
    ret c

    rst $38
    push bc
    rst $28
    rst $10
    rst $38
    rst $08
    rst $28
    sbc a
    rst $38
    set 7, a
    rst $18
    rst $38
    jp c, $d6fc

    db $fd
    di
    ei
    rst $28
    rst $20
    cp e
    rst $20
    rst $38
    ld b, c
    ld d, e
    ld b, d

jr_079_7663:
    ld c, a
    ld [bc], a
    rst $10
    add d
    xor a
    add h
    xor a
    add h
    sbc a
    inc b
    cp $08
    rst $38
    ld [$08fe], sp
    db $fd
    db $10
    db $fd
    db $10
    di
    nop
    rst $30
    jr nz, jr_079_7663

    jr nz, jr_079_7663

    ld b, b
    rst $00
    rst $38
    ret


    rst $30
    set 7, e
    rst $00
    rst $38
    jp z, $aff6

    push af
    ld a, $fe
    ccf
    cp $5d
    db $fd
    ld a, [hl-]
    db $fc
    cp e
    ld a, [$7c3d]
    or e
    db $76
    ld sp, hl
    ld a, h
    rst $30
    ld l, a
    db $fd
    rst $38
    ld c, a
    rst $18
    cp l
    rst $30
    db $db
    rst $30
    xor [hl]
    or a
    ld l, [hl]
    rst $28
    ld [hl], $7e
    rst $18
    cp $7d
    cp $bd
    db $10
    ld sp, hl
    nop
    dec [hl]
    nop
    pop af
    nop
    push af
    ld b, b
    rst $38
    nop
    db $dd
    add c
    ld sp, hl
    ld bc, $02ff
    ei
    ld b, $fe
    inc b
    cp $08
    db $fd
    ld [$10fd], sp
    ld a, [$f630]
    jr nz, @-$08

    ld sp, hl
    rst $20
    rst $30
    ld [$f7ee], a
    rst $28
    db $fd
    rst $38
    db $dd
    ld a, a
    pop de
    ld a, a
    rst $30
    ld a, a
    xor $3e
    db $fd
    inc a
    ei
    ccf
    ld hl, sp-$62

jr_079_76e7:
    db $fd
    sbc [hl]
    ld a, e
    sbc l
    ld a, [$fbcc]
    call $cefe
    db $fd
    rst $20
    db $fd
    rst $20
    rst $38
    rst $20
    rst $38
    db $e3
    cp $f3
    rst $38
    di
    rst $38
    pop af
    rst $38
    ld sp, hl
    nop
    ldh a, [rP1]
    ld h, b
    add b
    call c, $b800
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    cp $00
    db $fc
    ld [bc], a
    ld a, [c]
    inc c
    rst $28
    db $10
    adc $30
    ccf
    ret nz

    ld a, a
    add b
    rst $38
    nop
    rst $18
    jr nz, @+$0e

jr_079_7721:
    rst $38
    jr jr_079_7780

    ld de, $109d
    cp l
    db $10
    ei
    jr nz, jr_079_76e7

    jr nz, jr_079_7721

    ld h, b
    rst $38
    rst $30
    rst $38
    rst $38
    rst $20
    rrca
    rst $38
    cp a
    rst $08
    ld a, [hl]
    rst $38
    cp $7f
    rst $38
    db $fc
    db $fd
    cp $fd
    rst $38
    db $fd
    ei
    ld hl, sp-$02
    ld hl, sp-$03
    ld a, [c]
    rst $38
    ld [c], a
    db $ed
    adc $f3
    or $9d
    cp a
    ld [hl], h
    ld h, l
    ei
    ld h, c
    rst $38
    db $e3
    rst $38
    rst $20
    ret


    and a
    rst $18
    or a
    ld e, a
    rst $30
    ld d, e
    and $f7
    or $c6
    xor $95
    call $acbc
    ld e, e
    ld a, b
    adc e
    db $d3
    ld d, h
    ld d, c
    xor d
    jp hl


    ld d, a
    jp $82de


    push de
    ld h, h
    sbc e
    ld b, h
    ld a, [$eec0]
    add c
    rst $38
    pop bc
    rst $38

jr_079_7780:
    db $e3
    sbc a
    or e
    rst $08
    and a
    ld e, e
    ld b, a
    cp a
    ld l, a
    sbc a
    rrca
    rst $38
    rra
    cp $1f
    cp $3f
    rst $10
    ccf
    cp $3f
    db $eb
    ld a, a
    ld [$5aef], a
    rst $18
    db $ec
    rst $18
    cp l
    cp a
    call Call_079_4bbd
    ld a, e
    xor a
    ld [hl], e
    adc a
    ld h, [hl]
    cp a
    ld b, [hl]
    cp a
    inc c
    rst $38
    adc h
    ld a, e
    ld a, [de]
    db $dd
    dec e
    ld a, [c]
    dec a
    ld a, [c]
    ld [hl], d
    xor a
    ld h, h
    ei
    call z, $d2f3
    db $ed
    jp $a1fc


    rst $18
    add e
    cp $07
    ei
    rra
    rst $20
    ld c, a
    or a
    ld l, a
    sub a
    rst $38
    ld c, [hl]
    cp a
    rst $18
    rst $18
    cp d
    rst $38
    ld [hl], d
    ei
    or h
    rst $28
    ld [hl], l
    adc $f5
    adc [hl]
    pop af
    cp $ad
    cp $1d
    db $fd
    ld [bc], a
    rst $20
    ld e, l
    rst $10
    xor a
    ccf
    jp $e61f


    ld a, $df
    cp h
    ld e, e
    dec sp
    or $77
    ld a, [$7be4]
    call nz, $80eb
    rst $28
    nop
    cp [hl]
    nop
    db $fd
    nop
    rst $38
    nop
    rst $30
    add c
    ld a, [hl]
    add a
    rst $38
    adc a
    rst $20
    adc [hl]
    rst $38
    sbc h
    ei
    ld a, b
    rst $30
    jr nz, @+$01

    ld h, b
    rst $38
    ld bc, $23fe
    db $fd
    ld [hl], $eb
    ld e, $ed
    inc c
    ei
    add hl, bc
    or $8d
    ei
    adc a
    db $fd
    rst $00
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $18
    rst $18
    cp l
    sbc [hl]
    ld a, l
    ld e, $fe
    add a
    ld e, c
    sbc a
    ld l, b
    dec a
    jp c, Jump_000_35da

    di
    ld e, $77
    sbc [hl]
    db $76
    sbc a
    sub $2f
    sub $bf
    sub $af
    sbc h
    db $fd
    sbc l
    adc $5d
    adc b
    dec e
    ld a, a
    ld e, $bd
    inc e
    cp $bd
    ld e, c
    ld a, [de]
    db $db
    sbc d
    ld [hl], e
    sub $bc
    sub $bb
    xor $90
    cp d
    adc l
    or h
    ld a, [bc]
    xor b
    ld d, l
    add hl, hl
    ld d, [hl]
    ld bc, $317d
    ld c, a
    inc bc
    ei
    ld b, e
    ld [hl-], a
    ld b, a
    inc [hl]
    ld b, e
    dec l
    ld c, e
    dec [hl]
    dec e
    ld h, d
    dec d
    ld d, d
    ld a, $99
    ccf
    sbc d
    ld e, a
    scf
    ld e, a
    rst $20
    rst $18
    xor $df
    and $fe
    rst $00
    cp $8d
    db $ed
    cp [hl]
    ld sp, hl
    ld c, a
    add sp, -$0b
    cp $6b
    rst $38
    ld a, [c]
    rst $38
    ld e, [hl]
    cp $bf
    db $fc
    cp a
    db $fc
    cp a
    db $fc
    dec sp
    db $fc
    dec sp
    db $fc
    ld [hl], a
    ld hl, sp+$77
    add sp, -$09
    ret nc

    rst $28
    ret nc

    xor a
    add h
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    db $fd
    inc bc
    rst $38
    ld b, $ff
    ld c, $fc
    inc c
    rst $38
    jr @+$01

    cp b
    ld a, a
    jr nc, @+$01

    ld [hl], b
    rst $28
    ldh [$7f], a
    ld [c], a
    db $dd
    ret nz

    rst $38
    sub h
    rst $28
    sbc l
    ld h, d
    ld e, d
    and l
    ld a, d
    add l
    or $09
    push de
    dec sp
    db $e3
    dec e
    rst $08
    rst $30
    sbc $af
    cp h
    rst $18

jr_079_78d8:
    jr c, jr_079_78d8

    ld hl, sp+$77
    ldh a, [$fe]
    ldh [rIE], a
    ret nz

    rst $30
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld bc, $02de
    db $dd
    ld bc, $03ff
    rst $18
    rlca
    ld a, a
    inc c
    rst $28
    add hl, de
    ld e, [hl]
    jr nc, @+$01

    ld h, b
    rst $38
    ret nc

    rst $28
    sub b
    xor a
    ld bc, $03fe
    ld a, l
    ld [bc], a
    rst $38
    ld [$30f7], sp
    rst $28
    ld l, b
    cp a
    pop bc
    cp $02
    cp l
    dec d
    db $eb
    daa
    rst $18
    sbc a
    ld l, [hl]
    dec a
    jp c, $f7f8

    db $fd
    ld [$c6f9], a
    add c
    rst $38
    ld h, b
    sbc a
    or b
    rra
    cp b
    sbc a
    cp b
    ld a, a
    jr c, @+$01

    or c
    ld e, b
    or c
    cp $b1
    ld h, a
    di
    dec d
    ld l, e
    sub d
    bit 4, d
    jp $a7df


    pop bc
    sub a
    xor c
    rrca
    push bc
    ld c, a
    ld b, e
    rla
    sub e
    ld c, [hl]
    or a
    ld b, $7d
    adc h
    rla
    inc c
    ld e, d
    ld e, c
    ld e, [hl]
    jr @+$01

    sbc d
    cp l
    or [hl]
    ld a, b
    inc [hl]
    xor b
    ld [hl-], a
    dec a
    ld [hl], d
    adc l
    ld h, h
    dec de
    ldh [$9f], a
    call nc, $946b
    rst $28
    db $fc
    xor e
    xor a
    ld a, b
    cp a
    ld d, c
    rst $38
    ld de, $5bb7
    ld e, a
    and d
    cp $05
    db $fd
    and b
    pop hl
    ld e, [hl]
    call nz, $8c76
    ld a, e
    jr c, @+$01

jr_079_797a:
    jr nc, jr_079_797a

    ldh [$7f], a
    ldh [$fa], a
    ret nz

jr_079_7981:
    db $fd
    ret nz

    cp e
    add b
    or $00
    ld a, h
    nop
    dec hl
    inc bc
    sub h
    ld b, e
    ld b, $00
    sub e
    add hl, bc
    sub l
    ld bc, $00cc
    ldh a, [rP1]
    cp $07
    rst $38
    rlca

jr_079_799b:
    cp $0e
    rst $38
    inc e
    rst $38
    jr c, jr_079_7981

    jr c, jr_079_799b

    ld [hl], b
    rst $38
    ldh [$7f], a
    ret nz

    rst $18
    add b
    rst $38
    add b
    xor a
    nop
    cp a
    nop
    ld a, a
    nop
    ld a, a
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    rlca
    rst $38
    cpl
    rst $10
    ld c, a

jr_079_79c3:
    cp a
    sbc l
    ld a, a
    cp d
    ld a, a
    ld a, [hl]
    ld sp, hl
    ldh a, [$6f]
    ld [c], a
    db $fd
    ret z

    rst $30
    add b
    ld a, a
    nop
    cp a
    ld bc, $027e
    db $fd
    inc b
    ei
    inc c
    di
    nop
    rst $38
    nop
    rst $28
    nop
    rst $28
    nop
    rst $38
    ld bc, $07f7
    db $eb
    adc a
    ld e, a
    inc e
    cp a

jr_079_79ec:
    jr c, jr_079_79ec

    ldh a, [$ee]
    db $e3
    call c, $f28c
    jr nc, jr_079_79c3

    ld b, b
    cp e
    nop

jr_079_79f9:
    rst $38
    nop
    cp $00
    rst $38
    db $10
    xor $60
    cp a
    sub b
    rst $28
    ld [$0cf7], sp
    di
    ld bc, $0ffe
    rst $30
    rra
    rst $28
    ccf
    rst $18
    db $fc
    ld a, a
    ldh a, [rIE]
    db $fc

jr_079_7a15:
    ei
    ld hl, sp-$41

jr_079_7a18:
    jr nz, jr_079_79f9

    nop
    rst $38
    nop
    rst $38
    add b

jr_079_7a1f:
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, l
    db $fc
    ccf
    cp $1f
    cp $0f
    cp $07
    rst $38
    add e
    rst $38
    pop bc
    rst $38
    ldh [$bf], a
    ldh [$7f], a
    ldh a, [$cf]
    ldh a, [$d7]
    add sp, -$2d
    ret nz

    db $eb
    ret nz

    or b
    and c
    ld d, b
    ret z

    add hl, hl
    add b
    ld l, c
    nop
    ret


    nop
    and h
    dec c
    daa
    add hl, bc
    sub a
    inc bc
    dec e
    ld h, e
    add a
    ld b, [hl]
    cp [hl]
    jr nz, jr_079_7a1f

    add b
    ld b, h
    add d
    ld b, b
    inc b
    jp z, $dc08

    jr c, jr_079_7a18

    jr nc, jr_079_7a15

    ldh [$66], a
    ldh [$c5], a
    add b
    pop bc
    add b
    ld b, a
    add d
    dec b
    ld b, [hl]
    add l
    add b
    ld c, a
    nop
    xor l
    nop
    ccf
    nop
    db $fd
    ld [$10f5], sp
    db $ec
    db $10
    add sp, $20
    jp nc, Jump_000_0d03

    inc hl
    add l
    ld de, $0c29
    dec l
    adc h
    ld e, h
    ld e, e
    sbc h
    rra
    ld e, l
    rrca
    ld a, [$ac83]
    ret nz

    adc a
    ret nz

    ld h, b
    dec c
    ld [bc], a
    ld c, c
    or [hl]
    sub e
    ld l, h
    rlca
    ld hl, sp-$4b
    ld c, d
    ld d, l
    xor d
    sub l
    ld l, d
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $0b
    db $f4
    rra
    rst $38
    ccf
    or $7e
    cp a
    db $fc
    ld a, a
    ld a, [$fabd]
    ld a, l
    ld hl, sp-$09
    pop hl
    cp $e0
    sbc a
    ldh [$9f], a
    ld l, b
    sub a
    ld c, b
    or a
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
    ld b, b
    cp a
    add b
    ld a, a
    inc bc
    db $fd
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $30
    ld e, $fd
    inc a
    rst $38
    ld a, b
    push af
    ldh [$fb], a
    ldh [$db], a
    ret nz

    cp a
    sbc b
    ld h, a
    nop
    rst $38
    nop
    rst $38
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
    cp l
    nop
    xor e
    nop
    ld e, e
    ld bc, $07d7
    dec hl
    rrca
    ld d, a
    rra
    cp $7e
    cp l
    db $fc
    ei
    ldh a, [$ef]
    ret nz

    rst $30
    nop
    rst $18
    ld bc, $007e
    rst $38
    ld [$04f7], sp
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
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
    jr jr_079_7b53

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_079_7b63

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_079_7b73

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_079_7b83

    ld [hl-], a

jr_079_7b53:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_079_7b93

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_079_7b63:
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

jr_079_7b73:
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

jr_079_7b83:
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    rra
    ld l, b
    ld l, c
    ld l, d
    inc sp
    inc sp
    inc sp
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]

jr_079_7b93:
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
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
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
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
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
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
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
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
    inc sp
    inc sp
    inc sp
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
    inc sp
    inc sp
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
    jr jr_079_7c71

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_079_7c81

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_079_7c71:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_079_7c81:
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
    nop
    nop
    nop
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
    inc b
    nop
    inc b
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
    inc b
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
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
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
    inc b
    inc b
    nop
    nop
    nop
    nop
    inc b
    nop
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
    nop
    nop
    nop
    nop
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
    inc b
    inc b
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
    inc b
    inc b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp

jr_079_7d96:
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$007f], sp
    ld [$bb05], a
    inc b
    ld e, l
    add d
    sbc e
    ld b, h
    ld e, l
    add d
    ld l, a
    add b
    ld c, l
    and d
    sub a
    ld h, b
    or d
    ld b, l
    and a
    ld d, b
    db $db
    jr nz, jr_079_7d96

    ld [hl+], a
    ld l, l
    sub b
    ld l, c
    sub h
    ld l, l
    sub b
    sub a
    ld l, b
    and [hl]
    ld e, b
    db $db
    inc h
    ld c, e
    inc [hl]
    ld l, [hl]
    ld de, $10af
    or l
    ld a, [bc]
    or [hl]
    add hl, bc
    ld a, [c]
    dec c
    db $db
    inc b
    ei
    inc b
    db $fd
    ld [bc], a
    reti


    ld [hl+], a
    db $ec
    inc de
    xor $11
    cp $01
    rst $30
    ld [$807f], sp
    ccf
    ret nz

    cp a
    ld b, b
    rra
    ld h, b

jr_079_7dea:
    ld e, a
    jr nz, jr_079_7e4c

    jr nz, jr_079_7e1e

    db $10
    ld d, $08
    rla
    ld [$0807], sp
    dec bc
    inc b
    jp $e504


    ld [bc], a
    pop hl
    ld [bc], a
    ld [de], a
    and c
    ld a, [c]
    add c
    cp c
    ld b, b
    ei
    ld b, b
    rst $28
    jr nz, @+$01

    jr nz, jr_079_7dea

    jr nc, jr_079_7e4c

    db $10
    ld l, a
    jr jr_079_7e82

    inc c
    sbc [hl]
    inc b
    ld hl, sp+$06
    cp $02
    ld hl, sp+$07
    db $fd
    inc bc
    ld a, h
    inc bc

jr_079_7e1e:
    cp $01
    add $29
    sbc d
    ld b, l
    ld e, e
    and h
    rlca
    xor b
    jp Jump_079_5b9c


    call nz, $6bd0
    or d
    ld h, c
    ld d, e
    or b
    ld [hl-], a

jr_079_7e33:
    ret c

    ld [$9df9], sp
    db $ec
    inc c
    or $0a
    or $03
    rst $38
    ld bc, $21ff
    rst $38
    nop
    rst $38
    ld c, b
    rst $30
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38

jr_079_7e4c:
    ld b, b
    rst $38
    ret nz

    ld a, a
    nop
    rst $38
    sbc b
    ld a, a
    ret z

    ccf
    ret nz

    ccf
    ldh [$1f], a
    jr z, jr_079_7e33

    sub b
    rst $28
    ldh [$df], a
    ldh [rIE], a
    ld a, [c]
    db $fd
    ld [hl], b
    rst $38
    add hl, sp
    cp $3c
    rst $38
    inc e
    rst $38
    ld c, $ff
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $02ff
    db $fd
    ld [bc], a
    db $fd
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_079_7e82:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld [hl], b

Call_079_7e8d:
    rst $38
    jr nc, @+$01

    sub b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_079_7e9a:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld e, [hl]
    and c
    di
    inc c
    ld [hl], l
    adc d
    ld e, [hl]
    and c
    rst $18
    jr nz, jr_079_7e9a

    db $10
    ld l, h
    inc de
    ld [hl], $09
    dec de
    dec h
    db $eb
    rla
    adc l
    inc de
    call Call_079_7513
    adc e
    pop hl
    rrca
    sbc c
    ld h, [hl]
    call nc, $a623
    ld d, c
    push bc
    ld [hl-], a
    cp a
    ld b, b
    ld [hl], e
    ld [$48b7], sp
    inc de
    xor h
    ld d, d
    xor h
    ld a, [c]
    inc c
    adc l
    ld d, d
    dec a
    jp nz, $857a

    or h
    ld c, e
    cp h
    ld b, e
    xor e
    ld d, h
    xor d
    ld d, l

jr_079_7ede:
    sbc b
    ld h, e
    ld d, l
    xor d
    dec c
    ld a, [c]
    sub [hl]
    ld l, c
    sub [hl]
    ld l, c
    push af
    ld a, [hl+]
    db $dd
    ld [hl+], a
    cp d
    ld b, l
    xor $11
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $30
    ld [$05fa], sp
    cp e
    inc b
    rst $38
    nop

jr_079_7efc:
    db $fd
    ld [bc], a
    db $fd

Call_079_7eff:
    ld [bc], a
    ld a, [hl]
    add c
    ld a, [$fd85]
    add d
    ccf
    ret nz

jr_079_7f08:
    rst $38
    ld b, b
    rst $18
    jr nz, jr_079_7efc

    jr nc, jr_079_7ede

    jr nc, @+$01

    db $10
    rst $20
    jr jr_079_7f08

    inc c
    jp c, Jump_079_5b25

    inc h
    xor c
    ld d, $6d
    sub d
    ld hl, sp-$79
    inc a
    jp $51ee


    rra
    ldh [$3d], a
    ldh [$9f], a
    ld [hl], b
    sbc b
    db $76
    ld l, [hl]
    add hl, de
    ld a, [$370d]
    adc h
    ld a, c
    add [hl]
    or a
    ld c, d
    ret c

    rlca
    add hl, sp
    add a
    ld c, h
    inc hl
    ld e, h
    inc hl
    inc c
    or e
    adc $91
    sub [hl]
    ret


    ld l, e
    call nz, $e46b
    dec [hl]
    ld [c], a
    ld a, $f1
    db $10
    ei
    rrca
    ld hl, sp+$0c
    db $fd
    ld b, $fd
    dec b
    cp $02
    rst $38
    inc bc
    rst $38
    ld bc, $04ff
    rst $38
    add c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$90ff], sp
    ld a, a
    ld b, d
    cp a
    ld b, b
    cp a
    pop hl
    rra
    or b
    rst $08
    pop bc
    cp $c1
    cp $e1
    cp $70
    rst $38
    ld a, b
    rst $38
    jr c, @+$01

    inc e
    rst $38
    xor [hl]
    ld e, a
    ld c, a
    cp a
    ld b, a
    cp a
    inc hl
    rst $18
    ld de, $21ef
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
    rst $38
    nop
    rst $38
    ld a, [hl+]
    jr nc, jr_079_7fdb

    or b
    inc d
    cp c
    sub h
    jr c, @+$1e

    jr c, jr_079_7fb3

    inc e
    adc a
    rra
    db $fc
    rst $38
    ldh [rIE], a
    nop

jr_079_7fb3:
    rst $38
    add b
    rst $38
    add b
    rst $38
    jp nz, $c3fd

    db $fc
    db $d3
    db $ec
    pop hl
    cp $e1
    cp $60
    rst $38
    ldh a, [rIE]
    ld [hl], b
    rst $38
    jr nc, @+$01

    jr c, @+$01

    cp b
    rst $38
    sbc b
    rst $38
    xor b
    ld e, h
    xor h
    ld e, h
    inc a
    adc $1c
    xor $d4

jr_079_7fd9:
    ld l, $4e

jr_079_7fdb:
    and [hl]
    ld a, [bc]
    rst $30
    ld c, e
    or a
    inc bc
    rst $38
    and e
    ld e, a
    add l
    ld a, e
    adc e
    ld [hl], l
    ld de, $68ef
    sub a
    add h
    ld a, e
    and h
    ld e, e
    and d
    ld e, l
    ld b, b
    cp a
    add c
    ld a, [hl]
    and b
    ld e, a
    jr nz, jr_079_7fd9

    ld [hl+], a
    rst $18
    and b
    ld e, a
    ldh a, [rVBK]
