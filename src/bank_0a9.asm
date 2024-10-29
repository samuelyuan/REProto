SECTION "ROM Bank $0a9", ROMX[$4000], BANK[$a9]

    rst $38
    nop
    ld hl, sp+$07
    adc b
    ld a, a
    di
    db $fc

Call_0a9_4008:
    adc a
    ldh a, [$db]
    inc h
    ei
    inc b
    xor b
    ld d, a
    ld [c], a
    dec e
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
    ld bc, $01ff
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld e, $ff
    rrca
    rst $38
    rrca
    rst $38
    inc hl
    rst $38
    dec sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $dd
    db $e3
    ld a, a
    sbc a
    rst $38
    rst $38
    cp $ff
    pop hl
    rst $38
    xor d
    rst $18
    ld h, $ff
    ld [hl+], a
    db $fd
    ld a, [bc]
    rst $38
    jp nc, Jump_0a9_75ff

    cp [hl]
    call $54ff
    ei
    ld de, $98fe
    rst $20
    add [hl]
    ld a, c
    ld l, d
    sbc a
    ld a, [bc]
    rst $30
    ld [hl+], a
    db $fd
    adc h
    ld a, a
    rst $10
    db $eb
    db $10
    rst $38
    ld d, l
    cp [hl]
    ld d, c
    rst $28
    ld b, [hl]
    ld sp, hl
    ld sp, $eede
    sub a
    dec h
    ei
    xor e
    ld a, h
    xor a
    db $db
    xor [hl]
    di
    inc sp
    db $fc
    db $ec
    ccf
    pop de
    rst $28
    call z, $c9f3
    ld [hl], $70
    adc a
    sbc e
    ld h, l
    ld b, $f9
    cp c
    ld e, [hl]
    ld [c], a
    sbc a
    cp d
    rst $20
    db $e3
    ld a, h
    cp $e1
    push de
    xor $ae
    rst $18
    ld e, a
    cp a
    rst $18
    ccf
    cpl
    sbc $f5
    xor $f7
    ld sp, hl
    pop af
    cp $e6
    rst $38
    ld e, a
    rst $28
    ld e, a
    cp a
    rrca
    rst $38
    ld h, d
    rst $38
    inc d
    db $eb

jr_0a9_40ce:
    cp $01
    pop bc
    nop
    nop
    nop
    ld bc, $af00
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ld hl, sp+$3f
    ret c

    rst $38
    jr jr_0a9_40ce

    inc e
    db $eb
    inc e
    db $eb
    inc e
    ei
    inc c
    ei
    inc c
    rst $38
    inc c
    db $ed
    ld e, $7d
    adc [hl]
    ld d, l
    xor [hl]
    dec [hl]
    adc $34
    rst $08
    dec [hl]
    adc $b6
    ld c, a
    ld c, $f7
    ld b, [hl]
    rst $38
    ld b, d
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    add d
    rst $38
    add e
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
    ld bc, $09ff
    rst $38
    add hl, bc
    rst $38
    ld [$0dff], sp
    rst $38
    inc c
    rst $38
    rlca
    rst $38
    ld h, $ff
    add b
    rst $38
    ld e, e
    rst $20
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $ec
    di
    ld [hl], a
    adc a
    cp a
    ld a, a
    rst $38
    rst $38
    ld sp, hl
    cp $db
    rst $20
    ld e, [hl]
    cp l
    ld d, c
    rst $28
    ld d, h
    ei
    call nc, $e5bf
    rst $38
    cp b
    ld a, a
    add d
    rst $38
    xor h
    di
    ld d, e
    xor h
    ld a, $c3
    add c
    ld a, [hl]
    ld b, h
    cp a
    ld l, e
    push af
    adc h
    ld a, e
    and d
    rst $18
    xor b
    rst $30
    rst $28
    inc a
    ld a, h
    rst $08
    db $e4
    db $db
    ld c, c
    or [hl]
    db $76
    adc a
    sub e
    ld l, l
    adc $79
    ld [$aa9f], a
    rst $30
    ld h, e
    cp h
    call c, $f12f
    rst $08
    sub $f9
    ret


    ld [hl], $79
    add [hl]
    sbc a
    ld h, c
    adc e
    ld a, h
    ld a, [hl]
    sbc e
    sbc d
    rst $20
    cp l
    ld a, [c]
    and e
    ld a, h
    ld a, a
    adc l
    pop af
    rst $08
    rst $10
    ld sp, hl
    ld [$57f7], a
    rst $28
    xor a
    ld e, a
    ld l, a
    sbc a
    or [hl]
    ld l, a
    ld a, c
    or $fe
    ld sp, hl
    or $fb
    ld a, a
    rst $30
    and a
    ld a, a
    xor a
    rst $18
    add a
    rst $38
    ld [hl-], a
    rst $38
    ld a, d
    db $fd
    ld sp, hl
    rst $38
    ld [hl], e
    rst $38
    add a
    rst $38
    rst $00
    rst $38
    sub e
    rst $38
    cp h
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    ld [hl], a
    rst $38
    ld h, a
    rst $38
    ld e, e
    rst $38
    ld a, [hl]
    rst $38
    ld a, l
    rst $38
    ld a, a
    rst $38
    ld a, a
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
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
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
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    sbc a
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
    cp $ff
    cp $ff
    cp $e0
    rst $38
    ld a, [bc]
    rst $38
    ld d, b
    rst $38
    add h
    rst $38
    ld h, c
    rst $38
    ld a, [de]
    rst $38
    jp nz, $30ff

    rst $38
    db $10
    rst $28
    ld b, h
    ei
    ld h, c
    sbc [hl]
    ld e, l
    and a
    xor d
    ld a, l
    ld a, [de]
    rst $28
    ld e, [hl]
    di
    ld d, l
    cp [hl]
    dec b
    rst $38
    rst $20

Jump_0a9_424b:
    ld a, c
    dec a
    jp c, $d6a9

    dec bc
    db $f4
    sbc $2d
    ld d, c
    rst $28
    ld d, h
    ei
    ld [hl], a
    sbc [hl]
    adc $b7
    ld h, d
    db $fd
    call z, $f43f
    res 1, l
    ld a, [c]
    ret


    ld [hl], $78
    add a
    sub a
    ld l, c
    adc a
    ld a, b
    ld a, [hl+]
    rst $18
    xor [hl]
    di
    di
    cp h
    db $e4
    ccf
    scf
    call $f9c7
    dec a
    jp c, $9f72

    sbc c
    and $b7
    ld l, b

Jump_0a9_4280:
    and l
    ld a, h
    ld a, l
    adc h
    push af
    adc h
    ld h, c
    cp h
    db $fc
    ld a, l
    ld a, h
    db $fd
    ld a, [$f6fd]
    ld a, l
    ld b, [hl]
    cp l
    cp [hl]
    call $fc87
    ld a, $fd
    ld a, [hl]
    db $fd
    ld a, [$36fd]
    db $fd
    adc [hl]
    db $fd
    add $fd
    cp [hl]
    db $fd
    ld a, [hl]
    db $fd
    ld a, [hl]
    db $fd
    ld a, [hl]
    db $fd
    adc [hl]
    db $fd
    adc $fd
    cp [hl]
    db $fd
    cp $fd
    cp $fd
    db $fc
    rst $38
    call c, $fcff
    rst $38
    db $fc
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
    rst $38
    cp $f1
    ld l, e
    add b
    add hl, hl
    nop
    ld sp, $c000
    jr c, jr_0a9_4335

    ld hl, sp+$14
    ld hl, sp-$7c
    db $fc
    ld a, [hl+]
    db $fc
    ld c, b
    cp $54
    ld a, [$bed1]
    ld [bc], a
    db $fd
    ret z

    ccf
    ld [hl+], a
    rst $18
    ld d, c
    cp $c4
    cp a
    ld [hl], e
    db $ed
    adc b
    ld a, a
    ld [c], a
    rst $18
    add hl, de
    or $43
    cp h
    dec de
    push hl
    adc h
    ld a, e
    ld l, $db
    adc [hl]
    di
    ld [hl], a
    cp h
    dec d
    rst $28
    di
    ld l, l
    sbc h
    ld a, e
    and b
    rst $18
    adc l
    ld a, [c]
    jp $b33c


    ld c, l
    dec d
    db $eb
    cp h
    ld e, e
    ld h, d
    sbc a
    ld [$23b7], a
    db $fc
    call c, Call_0a9_752f
    rst $08
    rst $30
    reti


    cp e
    ld e, [hl]
    rst $28

jr_0a9_4335:
    sub [hl]
    dec de
    and $93
    ld l, h
    sub $2d
    ld sp, $2dcf
    db $d3
    rst $30
    rrca
    rst $38
    rlca
    swap a
    push af
    ld a, [hl-]
    db $eb
    inc a
    or a
    ld a, e
    cp e
    ld [hl], a
    rst $10
    cpl
    or a
    ld c, a
    jp z, $b437

    ld a, e
    cp b
    ld a, a
    or e
    ld a, a
    add a
    ld a, a
    adc a
    ld a, a
    add $3f
    or b
    ld a, a
    cp b
    ld a, a
    or d
    ld a, a
    rst $28
    ld a, a
    adc a
    ld a, a
    ld c, [hl]
    rst $38
    ld [hl], c
    rst $38
    ld a, b
    rst $38
    scf
    rst $38
    ld l, a
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ccf
    rst $38
    ld a, a

Jump_0a9_437f:
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
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    cp a
    ld a, a
    cp [hl]
    rst $18
    ld a, $df
    ld a, $de
    ccf
    cp $1f
    rst $38
    rra
    ld l, a
    rra
    ld l, a
    rra
    ccf
    rrca
    ccf
    rrca
    rra
    rrca
    rla
    rrca
    rla
    rrca
    adc a
    rlca
    adc a
    rlca
    add a
    add a
    ld b, e
    add a
    rlca
    jp $43c3


    inc hl
    pop bc
    and c
    pop bc
    ld [hl], b
    and c
    sub c
    ldh [rSVBK], a
    ldh [$b8], a
    ld d, b
    ldh [$d8], a
    or b
    ld hl, sp+$50
    cp h
    inc e
    db $e4
    sbc b
    ld l, h
    ld hl, sp+$0e
    ld l, $d2
    ld de, $5ffe
    or [hl]
    inc e
    rst $20
    ld a, [$886d]
    ld a, a
    rst $30
    set 2, l
    ei
    push de
    ld a, $3f
    add $3e
    pop hl
    sub e
    ld l, h
    ld [hl], b
    adc a
    dec a
    jp $d936


    sub $3f
    ld e, a
    and [hl]
    ld l, l
    ld a, [c]
    xor a
    rst $10
    ld e, d
    or a
    cp a
    ld a, b
    ld a, l
    ld a, [$ff72]
    xor a
    ld [hl], a
    rst $18
    xor a
    sbc $af
    add hl, hl
    or $76
    ld sp, hl
    pop af
    cp $65
    cp $0e
    rst $38
    call c, Call_000_1cbf
    rst $28
    ld [hl], b
    rst $38
    ldh a, [rIE]
    db $ec
    rst $38
    ld c, [hl]
    rst $38
    inc e
    rst $38
    ld l, l
    rst $38
    di
    rst $38
    pop af
    rst $38
    cp $ff
    ld e, h
    rst $38
    rrca
    ldh a, [$80]
    ld a, a
    nop
    rst $38
    rrca
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
    ld hl, sp-$01
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ret nc

    cpl
    ld l, h
    sub e
    rst $18
    jr nz, jr_0a9_44d2

    add h
    rst $28
    db $10
    ei
    inc b
    rst $30
    ld [$01fe], sp
    ld a, l
    add d
    ld a, a
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    cp a
    ret nz

    cp a
    ret nz

    rst $38
    ret nz

jr_0a9_4470:
    rst $38
    ret nz

    rst $38
    ret nz

    rst $18
    ldh [$df], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ld h, b
    ld l, a
    ld [hl], b
    cpl
    ld [hl], b
    ld a, a
    jr nc, @+$41

    jr nc, @+$41

    db $10
    rla
    jr jr_0a9_4494

    jr jr_0a9_44ae

    ld [$0807], sp
    adc a
    nop

jr_0a9_4494:
    rlca
    add b
    add a
    nop
    jp $8300


    ld b, b
    add c
    ld b, b
    ld h, c
    add b
    ld bc, $50e0
    and b
    ld b, b
    or b
    jr nc, @-$1e

    add sp, $70
    or b
    ld l, b
    cp b
    ret nz

jr_0a9_44ae:
    jr nc, jr_0a9_4470

    xor c
    db $76
    or [hl]
    ld a, c
    ld [hl], $f9
    cpl
    or $9e
    ld l, a
    ld l, [hl]
    sbc a
    ld c, l
    cp [hl]
    di
    ld l, l
    ld a, l
    di
    and e
    ld a, l
    call Call_000_1f7e
    cp $dc
    ccf
    ld c, b
    rst $38
    db $e3
    rst $38
    ld h, e
    rst $38
    ret c

    rst $38

jr_0a9_44d2:
    inc a
    rst $38
    dec sp
    rst $38
    sub a
    rst $38
    rst $00
    rst $38
    jp nc, $b8ff

    rst $38
    ld h, e
    db $fc
    ld a, h
    add e
    ld bc, $01fe
    rst $38
    ld a, c
    rst $38
    rst $30
    rst $38
    ld a, [hl]
    rst $38
    sbc a
    rst $38
    rst $28
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
    ldh a, [rIE]
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
    ldh [$1f], a
    or h
    ld c, e
    ldh [$1f], a
    ld c, h
    or e
    ld a, e
    add h
    cp $01
    rst $30
    ld [$01fe], sp
    rst $28
    db $10
    cp $01
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
    cp a
    ld b, b
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, l
    ld [bc], a
    ld a, l
    ld [bc], a
    ld a, a
    ld [bc], a
    dec sp
    ld b, $3d
    ld b, $6c
    di
    xor [hl]
    pop af
    inc de
    db $ec
    dec l
    sbc $c5
    ld a, $a1
    ld e, a
    scf
    set 3, e
    rst $20
    db $e4
    db $db
    sbc [hl]
    ld sp, hl
    add hl, sp
    cp $b2
    ld a, a
    ld c, a
    or a
    or [hl]
    rst $08
    add b
    rst $38
    ld de, $11ff
    rst $38
    ld h, [hl]
    rst $38
    ld c, $ff
    sbc l
    rst $38
    inc bc
    rst $38
    ldh [rIE], a
    rra
    ldh [$e0], a
    rra
    dec d
    db $eb
    rla
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    ld a, c
    rst $38
    ld a, [hl]
    rst $38
    cp a
    rst $38
    rst $08
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
    ccf
    rst $38
    rlca
    rst $38
    dec bc
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
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ldh [$1f], a
    ret nc

    cpl
    pop af
    ld c, $fe
    ld bc, $11ee
    ld a, l
    add d
    rst $38
    nop
    rst $28
    db $10
    cp a
    ld b, b

jr_0a9_45e8:
    rst $30
    ld [$00ff], sp
    rst $38
    nop

jr_0a9_45ee:
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    pop af
    nop
    db $e4
    inc bc
    rst $10
    jr nz, jr_0a9_45ee

    jr nc, jr_0a9_45e8

    jr nc, @-$46

    ld h, b
    ld e, h
    ldh [$e4], a
    ret nz

    cp $80
    sbc [hl]
    ldh [$bf], a
    ret nz

    ld a, a
    nop
    rst $38
    nop
    xor a
    db $10
    ld e, e
    rst $20
    dec [hl]
    jp c, $b87f

    push hl
    ld a, d
    cp a
    ld [hl], d
    ld d, a
    xor l
    xor a
    sbc $64
    cp a
    db $fd
    ld [hl], e
    ld sp, hl
    rst $30
    xor $fd
    db $dd
    ld a, [hl]
    ld e, l
    cp a
    dec hl
    rst $18
    rst $10
    rst $28
    jp nz, $9cff

    ei
    jr c, @+$01

    ld [hl], $ff
    adc h
    rst $38
    add a
    ld hl, sp-$01
    nop
    adc [hl]
    ld [hl], c
    and l
    ld e, a
    ld a, h
    rst $38
    cp a
    rst $38
    rst $00
    rst $38
    rst $30
    rst $38
    ld sp, hl
    rst $38
    db $fd
    rst $38
    cp $ff
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
    ld a, a
    rst $38
    ld e, a
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
    nop
    rst $38
    ld [bc], a
    db $fd
    inc de
    db $ec
    or a
    ld c, b
    ei
    inc b
    ld a, a
    add b
    rst $18
    jr nz, jr_0a9_46fc

    add d
    ld a, a
    add b
    cp a
    ld b, b
    cp a
    ld b, b
    sbc a
    ld h, b
    db $fd
    ld [bc], a
    rst $28
    db $10
    db $f4
    dec bc
    rst $30
    ld [$01fe], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [$f804]
    nop
    db $e3
    nop
    ld c, $01
    ld a, l
    ld [bc], a
    ld a, a
    add b
    rst $38
    nop
    db $fc
    nop
    pop hl
    nop
    add a
    nop
    ld e, $01
    rst $38
    nop
    ld a, [hl]
    add c
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    cp a
    nop
    sbc [hl]
    ld bc, $25fa
    ld l, l
    di
    db $ed
    di
    ld e, d
    db $ed
    cp e
    ld e, h
    ret c

    ccf
    or e
    ld e, a
    cp a
    rst $00
    rst $30
    adc $b9
    rst $30
    ld [hl], a
    ld sp, hl
    ld h, [hl]
    db $fd
    adc l
    ld a, [hl]
    call c, Call_000_2bbf
    rst $18
    ld h, a
    rst $38
    jp nz, $99ff

    rst $38
    ld sp, $7ffe
    add b
    ei
    inc b
    or l
    ld c, e
    or a
    ld a, a
    db $eb
    rst $38
    db $dd
    rst $38
    ld a, [hl-]
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    di
    rst $38

jr_0a9_46fc:
    db $fd
    rst $38

jr_0a9_46fe:
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
    cp $ff
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
    ld a, a
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    rst $08
    rst $38
    rst $00
    rst $38
    pop hl
    rst $38
    push af
    ei
    ld a, [c]
    db $fd
    ei
    db $fc
    dec h
    cp $03
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
    rra
    ldh [$f7], a
    ld [$20df], sp
    db $fd
    ld [bc], a
    cp a
    ld b, b
    rst $28
    db $10
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
    cp a
    ld b, b
    ldh a, [rIF]
    ret nz

    ccf
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
    db $fc
    nop
    pop af
    nop
    add [hl]
    ld bc, $031c
    rst $20
    jr jr_0a9_46fe

    ld [hl], b
    ld a, [hl]
    add b
    pop af
    nop
    jp Jump_000_1f00


    nop
    ld b, c
    ld a, $a2
    ld e, l
    ld [$f815], a
    rlca
    reti


    ld h, $f4
    dec bc
    call c, $ba23
    ld b, l
    ld a, e
    add a
    db $ec
    rra
    cp d
    ld a, l
    ldh a, [rIE]
    or [hl]
    rst $08
    cp l
    add $6b
    or l
    cp l
    ld [hl], e
    ld h, [hl]
    ld sp, hl
    rst $08
    ld a, h
    db $db
    inc a
    sub $3b
    ld l, a
    rst $10
    sub $ef
    adc e
    push af
    dec [hl]
    ei
    ld h, c
    rst $38
    call z, Call_0a9_597f
    cp [hl]
    inc de
    cp $c6
    rst $38
    adc a
    ldh a, [$f9]
    ld b, $fe
    ld bc, $7f89
    sbc a
    ei
    ld d, a
    ei
    rst $28
    rst $30
    rst $30
    rst $38
    rst $20
    rst $38
    ld l, a
    rst $38
    adc a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    cp a
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
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ld a, d
    rst $38
    ld e, [hl]
    rst $38
    ld d, [hl]
    rst $38
    ld [hl], a
    rst $38
    or l
    ld a, a
    db $dd
    ccf
    push af
    rra
    db $f4
    rrca
    ld sp, hl
    add a
    dec sp
    rst $00
    inc e
    db $e3
    ld e, $e1
    dec l
    ret nc

    push hl
    jr jr_0a9_4879

    add h
    ret c

    ld h, $79
    add [hl]
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
    ld a, a
    add b
    rrca
    ldh a, [$63]
    sbc h
    add hl, sp
    add $98
    ld h, b
    push hl
    nop
    sbc h
    inc bc
    ld h, e
    inc e
    rst $00
    jr c, jr_0a9_485b

    call z, Call_000_00f8
    db $e3
    nop
    cp [hl]
    ld bc, $01fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    dec c
    ld a, [c]
    ld b, b
    cp a
    ld [bc], a
    db $fd
    inc bc
    rst $38
    inc c
    rst $38
    or b
    ld a, a
    ret


    or $26
    ret c

    nop
    ld hl, sp-$6f
    ld h, b
    ld hl, $d7c3
    dec sp
    and e
    rst $10
    rst $30
    rst $00
    ld e, a
    and a
    scf
    rst $28
    ld l, a

jr_0a9_485b:
    rst $28
    ld a, a
    rst $08
    sbc a
    ld e, a
    rst $38
    rra
    ld e, a
    cp a
    rst $38
    cp a
    ld [hl], l
    cp a
    rst $38
    ccf
    rst $38
    ld a, a
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

jr_0a9_4879:
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
    rst $30
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    cp a
    rst $38
    cp l
    rst $38
    xor a
    rst $38
    xor b
    rst $38
    ld l, e
    rst $38
    ld a, [bc]
    rst $38
    ld a, d
    rst $38
    sbc $7b
    jp c, Jump_0a9_527f

    rst $38
    push af
    sbc $58
    rst $30
    adc b
    ld [hl], a
    ld a, d
    dec [hl]
    inc b
    ccf
    inc hl
    dec e
    sub [hl]
    dec c
    dec bc
    add l
    ret nz

jr_0a9_48b9:
    rlca
    and e
    ld b, c
    ret nc

    ld hl, $10e1
    ldh a, [$08]
    db $fc
    nop
    ld a, [$fc04]
    nop
    ldh a, [rP1]
    push bc
    nop
    ccf
    nop
    sbc a
    ld h, b
    rlca
    ld hl, sp+$24
    ret c

    pop af
    nop
    add a
    nop
    dec bc
    inc b
    ld a, l
    ld [bc], a
    cp $01
    rst $38
    nop
    ld a, e
    add b
    ld l, l
    add b
    cp a
    ld b, b
    sbc l
    ld h, b
    rst $18
    jr nz, jr_0a9_48b9

    jr nc, @+$12

    db $fc
    add sp, -$10
    ld bc, $03e0
    pop bc
    add e
    rlca
    rra
    rrca
    ld a, $1f
    ld a, b
    ld a, a
    ldh a, [rIE]
    ret nc

    rst $28
    rst $38
    rst $38
    ld a, [c]
    rst $38
    ld e, e
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
    cp $fd
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
    cp $ff
    ei
    rst $38
    ei
    rst $38
    ld a, [hl]
    rst $38
    ld a, d
    rst $38
    ld a, d
    rst $38
    ld e, [hl]
    rst $38
    ld d, a
    rst $38
    or $df
    ld a, h
    rst $10
    rst $10
    rst $38
    sub h
    rst $38
    xor b
    rst $30
    adc h
    rst $30
    add hl, bc
    rst $30
    ld b, l
    cp a
    ld h, e
    cp l
    sub l
    rst $28
    ld l, d
    cp l
    sub a
    db $ed
    ld l, e
    cp l
    db $10
    rst $28
    and d
    ld a, l
    ld [de], a
    db $ed
    sub [hl]
    ld l, c
    push de
    ld l, d
    adc b
    ld [hl], b
    ld h, c
    nop
    inc b
    inc bc
    dec d
    ld a, [bc]
    ld e, $01
    add a
    nop
    ret nz

    nop
    add b
    ld b, b
    nop
    nop
    jr nz, jr_0a9_4984

    ld [hl], b
    add b
    ret nz

    jr nc, @-$0e

    nop
    ldh a, [rP1]
    ret nc

    nop
    ld [hl], b
    add b
    ld h, b
    add b
    or b
    ld b, b

jr_0a9_4984:
    ldh [rP1], a
    add d
    nop
    rlca
    ld [bc], a
    rra
    rrca
    ccf
    ld e, $7e
    ld a, h
    cp $f0
    ei
    ldh [$da], a
    ldh [$34], a
    ret nz

    ld [hl], $c0
    ld a, d
    add b
    ld l, c
    add b
    push af
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fd
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ld hl, sp-$01
    ccf
    rst $38
    xor a
    rst $38
    rst $30
    ld hl, sp-$62
    pop hl
    rst $18
    ldh [$fc], a
    di
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
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    push af
    rst $38
    cp l
    rst $38
    cp a
    rst $38
    db $fd
    rst $38
    cp l
    rst $38
    cp l
    rst $38
    xor l
    rst $38
    cp l
    rst $38
    and c
    rst $38
    add h
    rst $38
    ld bc, $0dff
    rst $38
    add hl, hl
    rst $38
    sbc c
    rst $28
    ld l, b
    cp a
    ld de, $18ef
    rst $28
    ld sp, $98ef
    ld l, a
    or [hl]
    ld l, c
    sub c
    ld l, [hl]
    sub h
    ld l, b
    sub b
    ld h, b
    jp Jump_000_0101


    ld c, $5c
    inc hl
    db $f4
    dec bc
    cp h
    ld b, b
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
    nop
    nop
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
    add b
    nop
    nop
    nop
    ld h, b
    nop
    ld b, b
    nop
    ld d, b
    nop
    ret nz

    nop
    sbc h
    nop
    cp [hl]
    inc e
    cp $7c
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
    jr jr_0a9_4a83

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0a9_4a93

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0a9_4aa3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0a9_4ab3

    ld [hl-], a

jr_0a9_4a83:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0a9_4ac3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    dec hl
    ld a, $3f
    ld b, b
    ld b, c

jr_0a9_4a93:
    ld b, d
    dec hl
    dec hl
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    dec hl
    ld b, a
    ld c, b
    dec hl
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l

jr_0a9_4aa3:
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
    dec hl
    ld e, d
    ld e, e
    ld e, h

jr_0a9_4ab3:
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    dec hl
    ld h, l
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl

jr_0a9_4ac3:
    dec hl
    ld h, [hl]
    ld h, a
    ld l, b
    dec hl
    ld l, c
    ld l, d
    ld l, e
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    dec hl
    ld [hl], h
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    dec hl
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    dec hl
    dec hl
    dec hl
    dec hl
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
    dec hl
    dec hl
    dec hl
    dec hl
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
    dec hl
    dec hl
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
    dec hl
    dec hl
    dec hl
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    dec hl
    dec hl
    dec hl
    dec hl
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$1c08], sp
    inc c
    ld e, $0c
    ld e, $0c
    ld e, $0e
    rrca
    rrca
    rrca
    rrca
    rrca
    ld c, $0f
    ld c, $0f
    ld b, $0f
    ld b, $0f
    ld b, $0f
    rlca
    rrca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $07
    ld [bc], a
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0100
    nop
    ld bc, $0100
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
    ldh [$80], a
    ldh [$c0], a
    ldh [rP1], a
    add b
    nop
    add b
    add b
    add b
    nop
    nop
    nop
    ret nz

    add b
    ret nz

    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_0a9_4d52

jr_0a9_4d52:
    jr nz, jr_0a9_4d54

jr_0a9_4d54:
    nop
    nop
    nop
    nop
    jr nz, jr_0a9_4d5a

jr_0a9_4d5a:
    jr nz, jr_0a9_4d5c

jr_0a9_4d5c:
    jr nz, jr_0a9_4d5e

jr_0a9_4d5e:
    ld h, b
    nop
    ld b, b
    nop
    ld [hl], b
    nop
    ldh [rP1], a
    or b
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [$08]
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
    db $fc
    nop
    xor $10
    ld a, [$ea04]
    inc d
    ld [$ea14], a
    inc d
    ldh [rNR34], a
    pop hl
    ld e, $b1
    ld c, [hl]
    ld b, c
    cp [hl]
    ld bc, $00be
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    jr nz, jr_0a9_4dc9

    jr nz, jr_0a9_4dcb

    ld bc, $001f
    nop
    ret nz

    nop
    ld a, [hl]
    rra
    pop hl
    rra
    ld h, d
    rra
    pop hl
    rra
    ld [$f41f], a
    rrca
    rst $38
    rrca
    db $fd
    rrca
    rst $38
    rrca
    push af
    rrca
    rst $30
    rrca
    rst $30

jr_0a9_4dc9:
    rrca
    rst $30

jr_0a9_4dcb:
    rrca
    rst $30
    rrca
    rst $30
    rrca
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
    ld sp, hl
    ld [hl], b
    ld a, a
    ld a, $7f
    ccf
    ld h, e
    ld sp, $3120
    jr nc, jr_0a9_4e19

    jr nc, @+$33

    jr nc, jr_0a9_4e1d

    or c
    jr nc, jr_0a9_4e1f

    pop af
    ld [hl], b
    pop af
    dec hl
    ld de, $c371
    dec hl
    inc e
    add l
    inc bc
    ret c

    ldh [$7d], a
    cp $67
    rst $38
    ld h, h
    sbc a
    adc h
    ld [hl], e
    add c
    cp $f8
    cp a
    and $ff
    adc c
    rst $38
    di
    cp a
    call z, $f1ff
    cp a
    add $ff
    add c
    rst $38
    add d
    rst $38
    ret z

jr_0a9_4e19:
    rst $38
    jp nc, $e4ff

jr_0a9_4e1d:
    rst $38
    ei

jr_0a9_4e1f:
    rst $18
    db $e4
    rst $38
    ret


    ld a, a
    ld h, [hl]
    ld a, a
    ld c, c
    ld a, a
    ld d, d
    ld a, a
    ld h, h
    ld a, a
    ld l, c
    ld a, a
    db $76
    ld a, a
    xor l
    ld a, a
    di
    ccf
    db $eb
    inc [hl]
    ld a, h
    ld h, e
    ld a, h
    ccf
    ld a, a
    jr nz, jr_0a9_4ebb

    inc hl
    ld c, a
    inc sp
    ld a, a
    inc hl
    ld a, a
    ld hl, $3b7f
    ld a, a
    ld a, $3f
    rra
    ccf
    db $10
    ccf
    dec de
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
    rra
    rra
    rrca
    rra
    rrca
    rra
    rrca
    rrca

Call_0a9_4e61:
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
    rlca
    rrca
    rlca
    rrca
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    add b
    ld bc, $0081
    add c
    nop
    add b
    nop
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    add $80
    pop hl
    nop
    pop hl
    add b
    pop hl

jr_0a9_4ebb:
    add b
    pop hl
    add b
    pop hl
    add b
    ldh a, [$c0]
    ldh a, [$c0]
    ret nc

    ldh [$d0], a
    ldh [$d8], a
    ldh [$f8], a
    ldh [$f8], a
    ldh [$fc], a
    ldh [$83], a
    ld bc, $81c3
    add e
    add c
    inc bc
    nop
    nop
    nop
    nop
    nop

jr_0a9_4edc:
    nop
    nop
    cp $f8
    rst $38
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
    adc a
    rst $08
    adc a
    rst $08
    adc a
    call nz, $c48c
    adc h
    sbc h
    call z, Call_000_1cee
    ld [hl], a
    adc h
    cp [hl]
    ld [hl], c
    or [hl]
    rrca
    sbc $e1
    db $fd
    cp $3f
    rst $38
    ld c, l
    rst $38
    db $10
    rst $38
    ld c, h
    rst $38
    sbc c
    rst $38
    ld h, $ff
    db $db
    rst $38
    ld h, $ff
    ld e, c
    rst $38
    or d
    rst $38
    ld c, l
    rst $38
    or [hl]
    rst $38
    ld c, l
    rst $38
    sub [hl]
    rst $38
    ld l, l
    rst $38
    sbc d
    rst $38
    ld l, a
    rst $38
    sbc $ff
    xor l
    rst $38
    db $db
    rst $38
    cp a
    rst $38
    ld c, d
    rst $38
    db $ed
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38

jr_0a9_4f34:
    ldh a, [rIF]
    add a
    rrca
    dec [hl]
    ld a, [bc]
    cp a
    ld a, a
    rrca
    rst $38
    sbc a
    ccf
    ccf
    cp a
    sub a
    cp a
    cp a
    rrca
    sbc [hl]
    rrca
    cp h
    ld e, $f9
    inc a
    cp c
    ld a, d
    cp b
    ld [hl], d
    jr nc, jr_0a9_4f34

    ld e, b
    and d
    jr c, jr_0a9_4edc

    call nz, $df8e
    adc h
    rst $38
    sbc h
    ei
    cp l
    push af
    cp b
    sbc a
    pop af
    sbc a
    db $e3
    cp e
    rst $00
    rst $38
    rst $00
    rst $38
    adc $dd
    cp $db
    db $fc
    rst $18
    ld hl, sp-$29
    ld sp, hl
    db $ed
    di
    db $eb
    rst $30
    rst $20
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    cp $1e
    db $fc
    call z, $f8f9
    di
    pop hl
    rst $20
    jp $8f8f


    sbc a
    rra
    ccf
    rra
    ccf
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    rst $38

Call_0a9_4fbb:
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    cp a
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
    rst $18
    ccf
    ld bc, $8000
    nop
    ret nz

    add b
    or b
    nop
    inc e
    nop
    ld b, $00
    ld bc, $c800
    nop
    rst $08
    sub b
    xor $91
    adc $f1
    db $eb
    db $f4
    rst $38
    ldh [$f7], a
    ld hl, sp-$04
    rst $38
    rst $28
    rst $38
    ld l, a
    rst $38
    ld l, [hl]
    db $fd
    ld a, a
    call $cd7e
    cp $cd
    call z, Call_000_1dff
    rst $38
    pop hl
    rst $38
    sbc $3f
    jp $feff


    rst $38
    ld a, a
    rst $38
    sbc a
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    or a
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ld a, a
    rst $38
    or a
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
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    ld a, a
    rst $38
    add b
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $38
    cp [hl]
    rst $08
    ld l, l
    sbc [hl]
    inc a
    rra
    ld e, e
    inc a
    dec sp
    ret nz

    ld b, $01
    dec [hl]
    dec bc
    or c
    ld l, a
    rst $30
    ld l, h
    ld a, a
    ld h, b
    ld l, [hl]
    ld bc, $0738
    ld c, l
    inc sp
    dec sp
    rst $00
    rst $28
    ld a, a
    db $fd
    rst $38
    xor l
    rst $30
    ld h, l
    cp a
    rst $28
    scf
    rst $38
    cpl
    ei
    ld a, a
    ld h, e
    rst $38
    rst $10
    rst $28
    rst $28
    rst $18
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    rst $38
    ccf
    cp a
    ccf
    cp a
    ccf
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    ccf
    cp a
    ccf
    rst $38
    ccf
    cp $7e
    ld hl, sp-$04
    pop af
    ld sp, hl
    db $e3
    di
    rst $20
    rst $00
    rst $18
    adc a
    cp a
    rra
    ld a, a
    ccf
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
    db $fc
    cp $fc
    db $fc
    db $fc
    ld sp, hl
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf

jr_0a9_50c6:
    cpl
    rrca
    rlca
    inc bc
    inc bc
    ld bc, $0087
    xor $00
    ld c, [hl]
    jr nc, jr_0a9_50c6

    inc c
    reti


    ld h, $9c
    ld [hl], b
    inc l
    pop af
    dec de
    pop hl
    ld h, a
    jp $c7ab


    rst $30
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
    ld a, a
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
    db $fc
    db $fd
    rst $38
    db $fd
    rst $38
    ret


    rst $30
    db $ed
    rst $30
    xor $ff
    xor h
    rst $18
    ld e, c
    cp a
    cp c
    ld a, a
    cp b
    ld a, a
    ccf
    pop bc
    ei
    dec b
    ret


    ccf
    ld l, h
    rst $38
    and $f9
    dec a
    jp $0ff7


    add [hl]
    ld a, a
    ld c, $ff
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    ld a, $ff
    rst $28
    rst $38
    rst $08
    rst $38
    sbc a
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
    db $fc
    cp $f9
    db $fc
    pop af
    ei
    di
    rst $20
    rst $20
    rst $08
    rst $18
    sbc a
    rra
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    ld sp, hl
    db $fd
    ld sp, hl
    ei
    rst $38
    di
    rst $30
    rst $20
    rst $00
    rst $28
    rst $08
    rst $18
    rst $38
    sbc a
    sbc a
    ccf
    ccf
    ld a, a
    rst $38
    ld a, a
    cp $ff
    db $f4
    rst $38
    rst $38
    db $fc
    cp $fc
    rst $38
    cp $ff
    cp $ff
    xor $ff
    adc $ff
    ld l, [hl]
    rst $38
    ld l, [hl]
    ld c, a
    ld a, $9c
    ld a, [hl]
    cp $7c
    db $fc
    cp $fc
    cp $fd
    cp $fe
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $fe
    rst $38
    ld sp, hl
    cp $fa
    db $fd
    cp $ff
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    db $fd
    rst $38
    db $fd
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    ld sp, hl
    rst $38
    cp $ff
    ld hl, sp-$02
    ld hl, sp-$04
    ld a, e
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    ld a, a
    rst $38
    db $fc
    rst $38
    db $fc
    cp $fc
    cp $3d
    cp $79
    cp $79
    cp $f9
    cp $fb
    db $fc
    cp a
    ld hl, sp+$3f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp-$02
    ld hl, sp-$02
    ld hl, sp-$44
    ld hl, sp-$44
    ld hl, sp+$7e
    ld hl, sp+$7b
    db $fc
    ei
    db $fc
    ei
    db $fc
    rst $18
    db $fd
    db $db
    db $fd
    db $fd
    rst $38
    db $fd
    rst $38
    cp l
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fd
    cp $fb
    db $fd
    rst $30
    ei
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    sbc a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $ff
    db $fd
    db $fd
    ei
    di
    rst $38
    rst $28
    rst $30
    rst $30
    rst $28
    rst $28
    rst $18
    cp a
    rst $18
    ld a, a
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
    ccf
    rst $38
    sbc a
    ld a, a
    cp a
    ccf
    sbc a
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18

Jump_0a9_527f:
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
    adc a
    rrca
    adc a
    rlca
    adc a
    rlca
    adc a
    rlca
    adc a
    rlca
    adc a
    rlca
    adc a
    rlca
    adc a
    rlca
    adc a
    rlca
    adc a
    rlca
    adc a
    rlca
    adc a
    add a
    rrca
    rlca
    add a
    rlca
    add a
    rlca
    rst $00
    add a
    rst $00
    add a
    rst $00
    add a
    rst $00
    add a
    rst $00
    add a
    rst $00
    rst $00
    ld b, a
    rst $00
    ld b, a
    rst $00
    ld b, a
    rst $00
    ld d, a
    rst $28
    ld [hl], a
    rst $28
    ld h, a
    rst $38
    ld h, a
    rst $38
    rst $10
    ld l, a
    ld h, a
    rst $00
    rst $20
    ld b, a
    db $eb
    ld b, a
    bit 4, a
    rst $08
    ld h, a
    rst $18
    ld h, a
    cp $67
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $30
    ld l, a
    rst $20
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    cp $ff
    ld sp, hl
    rst $38
    di
    rst $38
    rst $20
    rst $38
    rst $28
    rst $18
    rst $18
    cp a
    cp [hl]
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
    rst $30
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $30
    rst $38
    di
    rst $38
    reti


    rst $38
    ld [c], a
    rst $38
    di
    rst $38
    pop de
    rst $38
    ld [c], a
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    ld a, [c]
    rst $38
    ret


    rst $38
    pop hl
    rst $38
    ret nc

    rst $38
    db $fd
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    db $fd
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
    dec sp
    rst $00
    rst $08
    di
    rst $30
    rst $38
    rst $28
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $ffff
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld a, [$f0ff]
    rst $38
    cp $ff
    di
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    db $e3
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    add sp, -$09
    ldh [rIE], a
    add sp, -$09
    ret nz

    rst $30
    ret nz

    rst $30
    ret nz

    rst $30
    ret nz

    rst $30
    ret nz

    rst $30
    ld [c], a
    rst $30
    ldh a, [$e7]
    pop de
    rst $20
    ret nc

    rst $20
    db $d3
    rst $20
    db $d3
    rst $20
    db $d3
    rst $20
    jp nz, $d3f7

    rst $20
    pop bc
    rst $30
    rst $10
    rst $20
    rst $10
    rst $20
    ld d, a
    rst $20
    db $d3
    rst $20
    ld d, e
    rst $20
    rla
    rst $20
    rst $28
    rst $10
    rst $00
    rst $38
    rst $00
    rst $30
    jp $c3f7


    rst $30
    rst $00
    rst $30
    rst $18
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $30
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    ei
    rst $30
    rst $38
    rst $30
    di
    rst $38
    rst $30
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
    cp $ff
    cp $ff
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
    cp $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    add e
    db $fc
    inc c
    di
    add l
    ei
    push hl
    ei
    rst $00
    ld sp, hl
    jp nz, $f3fd

    db $fc
    ld d, e
    db $fc
    and c
    cp $01
    cp $40
    rst $38
    ld b, c
    cp $61
    sbc $28
    rst $18
    inc d
    rst $28
    ld [hl-], a
    call $aa55
    ld a, [de]
    push hl
    dec d
    ld [$619e], a
    sub e
    ld l, h
    sub d
    ld l, l
    inc b
    ei
    ld de, $16ee
    jp hl


    rrca
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    ld b, d
    db $fd
    ld [hl+], a
    db $fd
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ld [c], a
    db $fd
    db $f4
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    ld a, [$feff]
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
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
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
    nop
    rst $38
    nop
    rst $38
    jr c, @+$01

    db $ec
    rst $38
    sbc $ff
    rst $38
    rst $38
    rst $38
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

jr_0a9_54d3:
    rst $38
    rst $38
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
    ld b, b
    nop

jr_0a9_54e4:
    jp hl


    nop
    sub [hl]
    jp hl


    adc [hl]
    pop af
    add $f1
    rlca
    ldh a, [$da]
    pop hl
    ld h, c
    ld a, [c]
    pop af
    nop
    add b
    nop
    jp $df30


    jr nz, jr_0a9_54d3

    ccf
    adc l
    ld a, [hl]
    ld [$b1f7], sp
    ld b, b
    ld [hl], c
    add b
    pop hl

jr_0a9_5505:
    nop
    ld [hl], c
    add b
    ld hl, sp+$00
    ld hl, sp+$00
    db $fd
    nop
    rst $38
    nop
    ld a, a
    add b
    cp a
    ld b, b
    ld e, a
    and b
    cp a
    ld b, b
    ld a, a
    add b
    ld l, e
    sub h
    add hl, bc
    or $15
    ld [$f10e], a
    jr nz, jr_0a9_54e4

    jr nz, jr_0a9_5505

    rra
    ldh [$5f], a
    ldh [$50], a
    rst $28
    ld c, b
    rst $30
    ld c, a
    ldh a, [$d7]
    add sp, -$39
    ld hl, sp-$3b
    ld a, [$ff80]
    ret nz

    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ret nc

jr_0a9_5541:
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    pop af
    rst $38
    pop af
    rst $38
    di
    rst $38
    ld a, [$e3ff]
    rst $38
    db $f4
    rst $38
    db $fd
    rst $38
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    inc h
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @-$1f

    nop
    rst $38
    ld a, [hl+]
    push de
    jr z, jr_0a9_5541

    ld [$45f7], sp
    cp d
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
    nop
    rst $38
    ld [$e6ff], sp
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
    ld [hl], c
    rst $38
    rst $08
    rst $38
    rst $38
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
    rst $08
    rst $38
    jr jr_0a9_55ab

    rra
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rra

jr_0a9_55ab:
    rst $38
    rra
    rst $38
    ldh a, [rIE]
    ld a, [hl]
    rst $38
    pop hl
    rra
    ld h, a
    rra
    nop
    rst $38
    ret


    ccf
    nop
    rst $38
    ld l, h
    inc de
    and b

jr_0a9_55bf:
    ld e, a
    ld d, c
    xor a
    ldh a, [rIF]
    db $fc
    inc bc
    ld hl, sp+$07
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ld a, [c]
    dec c
    and b
    ld e, a
    ld a, [$ea05]
    dec d
    ldh a, [rIF]
    call nc, Call_0a9_702b
    adc a
    ld b, b
    cp a
    jr nz, jr_0a9_55bf

    ld d, b
    xor a
    inc e
    inc bc
    nop
    rst $38
    ei
    rlca
    ld a, [$1b07]
    rst $20
    inc de
    rst $28
    jp hl


    rla
    db $e3
    rra
    jp $833f


    ld a, a
    ld b, e
    cp a
    inc bc
    rst $38
    inc bc
    rst $38
    ld c, e
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    adc e
    rst $38
    dec bc
    rst $38
    cpl
    rst $38
    rst $08
    rst $38
    ld e, a
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
    ld de, $d6ff
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $fe
    cp $fc
    db $fc
    ld hl, sp-$04
    ei
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
    rst $18
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    db $fd
    rst $38
    cp l
    rst $38
    add hl, sp
    rst $38
    db $fd
    rst $38
    ld a, l
    rst $38
    inc sp
    rst $38
    dec d
    rst $38
    ld bc, $23ff
    rst $38
    rrca
    rst $38
    inc hl
    db $dd
    ld hl, $23df
    rst $18
    dec [hl]
    sla c
    rst $18
    daa
    rst $18
    daa
    rst $18
    dec h
    rst $18
    cpl
    rst $18
    inc sp
    rst $18
    ld bc, $22ff
    rst $18
    dec hl
    rst $10
    inc sp
    rst $08
    ld h, e
    rst $18
    cpl
    rst $10
    rlca
    rst $38
    inc hl
    rst $18
    inc bc
    rst $38
    rlca
    rst $38
    adc e
    rst $30
    inc bc
    rst $38
    ei
    rst $38
    ld a, a
    rst $38
    adc a
    rst $38
    ld b, a
    rst $38
    rst $08
    rst $38
    add a
    rst $38
    rst $00
    rst $38
    db $e3
    rst $38
    rst $30
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    rrca
    rst $38
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
    ld c, $ff
    rrca
    rst $38
    rrca
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
    ld a, a
    ld a, a
    pop bc
    ld a, a
    ld c, c
    rst $38
    ld l, a
    rst $38
    sub a
    rst $38
    rst $18
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    rst $00
    rst $38
    call nc, $cfff
    rst $38
    rst $28
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    db $fd
    rst $38
    pop af
    rst $38
    ret nz

    rst $38
    add h
    rst $38
    ld [de], a
    rst $38
    inc hl
    rst $38
    ld [bc], a
    rst $38
    xor b
    rst $38
    ld h, b
    rst $38
    add l
    rst $38
    adc a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld h, h
    rst $38
    rst $38
    rst $38
    cp $ff
    nop
    rst $38
    ld [bc], a
    db $fd
    add d
    db $fd
    pop af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, $ff
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
    ld h, a
    rst $38
    rst $38
    rst $38
    rst $28
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
    adc a
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    cp $ff
    rst $38
    rst $38
    and e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
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
    push de
    rst $38
    jp c, $eaff

    rst $38
    db $eb
    cp $eb
    cp $f6
    rst $38
    or l
    rst $38
    push de
    rst $38
    push de
    rst $38
    db $fd
    rst $38
    jp hl


    rst $38
    ld [$eaff], a
    rst $38
    ld a, [$f7ff]
    cp $d4
    rst $38
    rst $10
    db $fd
    rst $10
    db $fd
    pop hl
    rst $38
    xor e
    rst $38
    xor e
    rst $38
    ld c, $fb
    ld e, e
    cp $5d

jr_0a9_5811:
    or $5c
    rst $30
    ld b, [hl]
    db $fd
    ld [hl-], a
    db $ed
    add sp, -$41
    add [hl]
    ei
    adc d
    rst $38
    ld d, $fb
    ld d, c
    rst $38
    ld b, $ff
    ld d, [hl]
    rst $38
    or $ff
    db $ed
    rst $38
    db $ed
    rst $38
    add sp, -$01
    ld b, b
    rst $38
    jr nz, jr_0a9_5811

    sub a
    cp $f7
    cp $b7
    cp $17
    cp $81
    ld a, [hl]
    push bc
    ld a, d
    ld h, c
    sbc $9b
    cp $db
    cp $fb
    cp $f2
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    rst $38
    db $fc
    rst $38
    db $fd
    cp $5f
    rst $38
    and a
    rst $38
    rst $00
    db $fc
    ld a, [c]
    db $fc
    ld a, [$fefc]
    db $fc
    cp $fc
    sbc $fc
    cp $fc
    cp $fc
    or [hl]
    db $fc
    cp $fc
    ld a, [c]
    db $fc
    ld [c], a
    db $fc
    ld [$dbdc], a
    call c, $fcda
    cp e
    db $fc
    ld a, [$7bfc]
    db $fc
    cp e
    db $fc
    db $eb
    cp h
    db $db
    cp h
    rst $38
    sbc b
    cp e
    call c, $fdfa
    db $eb
    db $fc
    ld a, [$fafd]
    db $fd
    ld a, [$f2fd]
    db $fd
    ei
    db $fd
    ei
    db $fd
    ei
    db $fd
    ld a, [c]
    db $fd
    ldh a, [rIE]
    ld hl, sp-$01
    pop af
    rst $38
    ldh a, [rIE]
    pop af
    rst $38
    ld sp, hl
    rst $38
    pop af
    rst $38
    or c
    rst $38
    di
    rst $38
    ld sp, hl
    rst $38
    pop af
    rst $38
    ld a, [c]
    rst $38
    ld a, [c]
    rst $38
    ld a, [$f2ff]
    rst $38
    di
    rst $38
    cp $ff
    cp $ff
    ld sp, hl
    rst $38
    or h
    rst $38
    ld sp, hl
    rst $38
    ld a, b
    rst $38
    cp h
    rst $38
    push af
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
    ld a, e
    rst $38
    dec sp
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ret nz

    ld b, c
    ld b, a
    ret nz

    ld b, c
    jp nz, $c243

    ld b, d
    jp $c186


    call nz, $c687
    add a
    push bc
    add [hl]
    ld b, h
    add [hl]
    push bc
    ld b, $c7
    inc b
    ld b, a
    add l
    add a
    add l
    add a
    add l
    add h
    add e
    ld [$8083], sp
    add a
    ld b, $85
    ld c, $85
    ld [$8d87], sp
    ld a, [bc]
    dec b
    adc d
    ld bc, $0e8e
    adc l
    adc e
    dec c
    adc e
    dec c
    add l
    dec bc
    add [hl]
    dec bc
    nop
    rrca
    dec de
    rlca
    rla
    rlca
    inc de
    rrca
    dec de
    rrca
    ld a, [bc]
    rra
    dec de
    ld e, $1d
    ld e, $1f
    inc e
    inc de
    inc e
    dec c
    ld a, [de]
    rrca
    ld a, [de]
    ld [de], a
    rra
    rla
    rra
    scf
    rra
    ccf
    rrca
    daa
    rrca
    inc h
    rra
    ld [hl], $1f
    ld de, $303e
    ccf
    add hl, sp
    ccf
    add hl, sp
    ccf
    dec a
    dec sp
    dec [hl]
    dec sp
    ld [hl], l
    ccf
    push af
    rst $38
    db $fd
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
    ld a, a
    ld a, a
    ld a, a
    ccf
    ld a, a
    rla
    ld a, a
    rra
    ld [hl], a
    rst $30
    ld a, a
    db $fc
    ld h, a
    pop hl
    ld a, a
    reti


    ld a, [hl]
    cp d
    ld a, a
    cp e
    ld a, a
    ei
    ccf
    ld e, l
    rst $38
    ld b, h
    rst $38
    dec e
    rst $30
    ld d, b
    rst $28
    jp hl


    cp $e7
    cp $ef

Call_0a9_597f:
    cp $6e
    rst $38
    ld hl, sp-$11
    rst $20
    rst $38
    rst $30
    rst $38
    ld [hl], a
    rst $38
    or a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp e
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $18
    ei
    db $fc
    rst $38
    rst $18
    db $fd
    ld a, b
    rst $18
    ld a, b
    rst $38
    db $ec
    rst $38
    ld l, a
    cp $7e
    rst $38
    ld l, [hl]

Jump_0a9_59a7:
    rst $38
    or $ff
    rst $30
    rst $38
    ei
    rst $30
    rst $38
    di
    or e
    rst $38
    ld a, a
    rst $30
    ld a, $ff
    db $fc
    ei
    adc $f9
    jp c, $d8fd

jr_0a9_59bd:
    rst $38
    db $fc
    rst $38
    call z, $f5ff
    rst $28
    push af
    rst $28
    push af
    rst $28
    jp hl


    rst $30
    rst $20
    rst $38
    db $ed
    rst $38
    rst $38
    rst $38
    and e
    cp $ac
    db $d3
    and h
    db $db
    xor c
    rst $18
    pop de
    rst $28
    db $ed
    rst $18
    db $db
    rst $28
    rst $08
    ei
    adc b
    sub $cc
    sub d
    xor $90
    push bc
    jr c, jr_0a9_59bd

    add hl, hl
    or h
    add hl, hl
    sub $39
    jr nc, jr_0a9_5a4b

    or h
    ld e, e
    sbc b
    rst $20
    sub b
    rst $20
    sub l
    and $0f
    ld [c], a
    ld [hl-], a
    sla a
    reti


    add hl, de
    push de
    ld h, d
    sbc l
    sub h
    ld l, $c3
    inc a
    ldh [$3d], a
    xor b
    ld a, c
    ld [hl], b
    ld a, e
    ld sp, hl
    ld [hl], d
    db $f4
    ld [hl], e
    ld c, $f1
    cp $a1
    db $f4
    xor c
    sub d
    db $ed
    call z, $98cf
    rst $08
    ret c

    xor a
    ld a, [hl]
    xor a
    cp h
    ld [hl], a
    db $fd
    db $76
    ei
    db $76
    ld a, h
    ei
    db $fc
    ld sp, hl
    ld [hl], l
    ld sp, hl
    xor $f1
    jp hl


    or $e3
    cp $d7
    xor $4b
    rst $38
    rst $28
    ld e, a
    rrca
    rst $38
    adc b
    cp a
    db $10
    cp e
    ld [$e4f3], sp
    db $d3
    db $f4
    jp $e758


    ld a, b
    rst $20
    cp b
    rst $28
    sbc b

jr_0a9_5a4b:
    rst $28
    add sp, -$09
    call nz, $c4f3
    ei
    rst $00
    ei
    rst $20
    ei
    di
    rst $38
    ld a, [$feff]
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $28
    rst $38
    ei
    rst $38
    db $fc
    rst $38
    ld l, a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $18
    ld l, a
    rst $18
    ret c

    rst $28
    ld [hl], b
    rst $08
    push hl
    ld [$ebfd], a
    rst $10
    rst $38
    cp e
    rst $30
    cp l
    rst $30
    scf
    rst $38
    ld [hl], e
    ccf
    cp e

jr_0a9_5a81:
    rra
    ld l, [hl]
    sbc e
    or a
    ld e, e
    or c
    ld a, a
    ld l, l
    sbc l
    rrca
    sbc h
    adc $9c
    cp b
    cp $b1
    cp d
    add e
    ld hl, sp-$5f
    rst $18
    ld l, l
    rst $18
    ld c, [hl]
    rst $38
    ld c, a
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    rst $38
    rst $28
    xor $ff
    push hl
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $38
    rst $30
    di
    rst $38
    ld a, h
    ei
    db $e4
    ld a, e
    add h
    ld a, e
    inc bc
    db $fd
    or [hl]
    db $fd
    cp [hl]

jr_0a9_5ab9:
    db $fd
    cp [hl]
    db $fd
    cp h
    rst $38
    cp [hl]
    rst $18
    xor $df
    rst $38
    adc $b6
    rst $08
    xor $c7
    rst $18
    rst $20
    rst $28
    rst $38
    rst $38
    rst $28
    rst $28
    rst $38
    jr jr_0a9_5ab9

    ld c, [hl]
    or c
    ld e, d
    or c
    cp $51
    sub a
    ld a, c
    cp e
    ld a, l
    reti


    ccf
    ld a, c
    sbc a
    db $e4
    ld b, $72
    add h
    ld a, c
    add b
    ld e, c
    and b
    ld [hl-], a
    ret nz

    ld d, $e0
    scf
    ldh [$1f], a
    ldh [$2d], a
    jp nz, $c807

    ld d, e
    adc h
    ld e, e
    add h
    jr c, jr_0a9_5a81

    sub b
    cpl
    ld b, d
    ccf
    ret nc

    cpl
    jr nc, jr_0a9_5b51

    ld h, c
    ld e, [hl]
    ld b, b
    ld a, [hl]
    and e
    ld a, h
    ld hl, $16bc
    cp c
    ld a, [hl]
    sbc c
    sub h
    db $db
    inc [hl]
    jp $e386


    or d
    rst $00
    adc e
    db $d3
    ld h, e
    sbc e
    ld b, l
    cp c
    reti


    dec a
    srl h
    ret nz

    ld c, $19
    and $76
    rst $38
    ld a, h
    rst $38
    ld a, l
    cp $79
    cp $f0
    rst $38
    di
    db $fc
    or b
    rst $38
    ld h, d
    db $fd
    ret nz

    ld a, a
    ret nc

    ld l, a
    pop af
    rrca
    dec hl
    sub a
    ld [de], a
    adc a
    adc d
    ld e, a
    ld a, [hl-]
    rst $08
    add hl, de
    rst $28
    dec sp
    db $ed
    inc l
    rst $30
    inc [hl]
    rst $30
    ld a, l
    or $75
    ld a, [$fb7a]
    ld a, h

jr_0a9_5b51:
    ei
    ld hl, sp-$04
    ldh a, [$fc]
    ld hl, sp-$02
    ld sp, hl
    cp $30
    rst $38
    add c
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    cp $ff
    ccf
    rst $38
    adc a
    rst $38
    jp $e0ff


    rst $38
    ld hl, sp-$01
    db $f4
    rst $38
    di
    rst $38
    ld c, a
    rst $38
    dec e
    rst $28
    cp e
    ld l, a
    scf
    rst $28
    ld l, a
    rst $30
    or $f3
    di
    ld hl, sp-$0d
    ld hl, sp-$1e
    ei
    jp $8ffd


    db $fd
    rrca
    db $fd

jr_0a9_5b8c:
    ld e, [hl]
    dec a
    rra
    ld a, $3f
    ld e, $a7
    ld e, $26
    sbc e
    add c
    ld a, e
    add c
    ld a, a
    and c
    rra
    add l
    sbc b
    add c

jr_0a9_5b9f:
    adc h
    and $8f

jr_0a9_5ba2:
    rst $38
    xor a
    rst $38
    rst $18
    db $dd
    sbc $da
    db $ec
    adc a
    ldh [rNR30], a
    push hl
    jr nc, jr_0a9_5b9f

    jr nz, @+$01

    ld a, b
    rst $30
    db $fc
    rst $30
    db $fc
    rst $30
    ldh a, [rIE]
    db $fd
    ei
    cp $fb
    cp $fb
    ld sp, hl
    rst $38
    cp $fd
    rst $38
    db $fd

jr_0a9_5bc6:
    rst $38
    db $fd
    ld a, h
    rst $38
    cp $7e
    rst $38
    ld a, [hl]
    cp b
    rst $38
    ld c, $b1
    and $99
    inc hl

jr_0a9_5bd5:
    db $fc
    ld e, h
    rst $38
    cp $5f
    cp a

jr_0a9_5bdb:
    ld e, a
    xor a
    ld e, a
    ld e, a
    xor a
    sbc e
    ld h, h
    rrca
    ldh a, [$a6]
    ret c

    and [hl]
    ret c

    ret c

    db $e4
    ld l, l
    ld [hl], b
    ld h, c
    jr c, jr_0a9_5ba2

jr_0a9_5bef:
    jr c, jr_0a9_5b8c

    db $10
    pop bc
    inc de
    ld b, e
    add a
    ld b, e
    add e
    ld e, e
    add c
    dec a
    add c
    inc a
    add b
    add $38
    ld b, [hl]
    jr c, jr_0a9_5bc6

    inc a
    and c
    ld e, [hl]
    ld sp, $30ce
    rst $08
    jr nc, jr_0a9_5bdb

    jr c, jr_0a9_5bd5

    jr nz, jr_0a9_5bef

    add e
    cp $83
    db $fc
    rlca
    db $fc
    ld h, a
    ld hl, sp-$39
    ld hl, sp-$62
    pop af
    xor [hl]
    pop af
    call c, $d8e3

jr_0a9_5c21:
    rst $20
    ld sp, hl
    ld b, a
    db $10
    rrca
    ld [$d81f], sp
    rra
    ret c

    rra
    xor h
    ld c, a
    ld c, $ef
    ld d, [hl]
    rst $20
    ld h, a
    rst $30
    rst $28
    di
    di
    ei
    db $e3
    ld sp, hl
    add c
    db $fd
    ld [hl], c
    adc h
    ld [c], a
    inc e
    rst $00
    jr c, @+$61

    ldh [$33], a
    call z, $d8a7
    inc c
    ldh a, [rOBP1]
    ldh a, [rNR34]
    pop hl
    inc e
    db $e3
    jr nc, jr_0a9_5c21

    ld b, c
    cp [hl]
    jp $9b3c


    ld a, h
    db $dd
    ld a, [hl]
    ld a, h
    ld a, a
    ld a, [hl]
    ld a, a
    ld l, a
    cp a
    ccf
    rst $38
    rlca
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    cp $ff
    ccf
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    db $fc
    rst $38
    ld l, a
    rst $38
    rst $08
    ccf
    cp a
    ld c, a
    cp a
    ld c, a
    di
    ccf
    ld h, a
    ei
    ld c, b
    rst $30

jr_0a9_5c8a:
    dec h
    ei
    push de
    ei
    cp h
    rst $38
    cp [hl]
    rst $38
    ccf
    rst $38
    ei
    ld a, a
    ld b, a
    ld a, a
    rst $28
    ld a, a
    cp a
    ld a, a
    rst $38
    cp a
    sbc [hl]
    cp a
    adc c
    sbc $b7
    ret z

    ld h, e
    add b
    ld [c], a
    ld bc, $2043
    ld a, [c]
    ld hl, $71b4
    db $db
    inc [hl]
    ld c, b
    sub a
    dec c
    jp z, $ea03

    ld b, $f9

jr_0a9_5cb8:
    add hl, bc
    db $fc
    inc c
    db $fc
    adc h
    db $fc
    adc h
    cp $86
    cp $06
    cp $3f
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ldh a, [$7f]
    ld e, a
    jr nz, @+$01

    nop
    ld c, d
    or l
    ldh [$bf], a
    ret nz

    cp a
    rst $08
    cp a
    xor a
    rst $18
    rst $38
    rst $18
    daa
    jr jr_0a9_5d0a

    jr @+$65

    inc e
    ei
    inc b
    ei
    inc b
    db $e3
    inc e
    add c
    ld a, [hl]
    ld hl, $30de
    rst $08
    call z, $8503
    inc bc
    adc h
    inc bc
    ret z

    ld b, $46
    adc h
    or b
    call z, $f81c
    ld a, b
    ld a, b
    ld [hl], e
    jr nc, jr_0a9_5cb8

    jr nz, jr_0a9_5c8a

    nop
    add a
    rlca

jr_0a9_5d0a:
    and a
    inc bc
    or e
    inc bc
    ld sp, hl
    ld bc, $10ed
    call nz, $8238
    ld a, h
    inc sp
    db $fc
    add hl, de
    cp $61
    cp $0c
    rst $38
    ld c, h
    rst $38
    add h
    rst $38
    inc b
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    ld b, $ff
    rrca
    cp $9f
    db $fc
    dec de
    db $fc
    scf
    ld hl, sp+$7f
    ldh a, [$ee]
    pop af
    call c, $fbe3
    add h
    rst $38
    nop
    dec bc
    nop
    ld de, $2620
    ld sp, $3b94
    reti


    ld e, $1a
    call c, $cc2c
    inc c

jr_0a9_5d4d:
    xor $0e
    and $c6
    scf
    rst $20
    inc de
    db $e3
    dec de
    db $e3
    add hl, de
    push hl
    add hl, de
    ld hl, $12dc
    db $ec
    inc b
    cp $be
    rst $38
    ld sp, hl
    cp $fb
    db $fc
    scf
    ld hl, sp+$07
    ld hl, sp+$00
    rst $38
    jr nz, jr_0a9_5d4d

    sub l
    ld [$fde2], a
    ld hl, sp-$01
    cp $ff
    ccf
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    inc b
    ei
    add c
    cp $c0
    rst $38
    ret nz

    rst $38
    db $e4
    rst $38
    xor $ff
    cp l
    cp a
    sbc b
    cp a
    sub b
    rst $18
    ret c

    rst $18
    ld sp, hl
    rst $08
    rst $28
    rst $28
    rst $20
    rst $28
    di
    db $e3
    ld hl, sp-$0d
    pop bc
    ld hl, sp-$48
    ret nz

    ld [hl], l
    adc c
    pop af
    inc c
    db $e4

jr_0a9_5da3:
    ld e, $4e
    cp [hl]
    adc a
    ld a, [hl]
    rlca
    rst $38
    rlca
    rst $38
    ld b, e
    cp a
    ld b, e
    sbc a
    ld b, e
    adc a
    add hl, sp
    rst $00
    add c
    ld a, a
    jr nc, @-$2f

    ld b, $e1
    sub b
    ld h, b
    db $10
    ld h, b
    ld b, b
    jr nc, @-$7e

    jr c, jr_0a9_5da3

    sbc h
    ld d, [hl]
    cp $73
    ld a, a
    ccf
    ld a, a
    cp a
    ccf
    cp a
    sbc a
    ld d, b
    sbc a
    adc a
    ld b, b
    sub a
    ld b, b
    ld d, a
    add sp, $6b
    db $ec
    ld l, e
    db $ec
    db $fc
    rst $20
    db $f4
    rst $30
    db $f4
    rst $30
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    rlca
    ld [$0707], sp
    rlca
    rlca
    rlca
    rlca
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $07
    rlca
    rrca
    db $10
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld de, $1312
    inc d
    dec d
    ld d, $17
    rlca
    jr jr_0a9_5e11

    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    add hl, de

jr_0a9_5e11:
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $07
    rra
    jr nz, jr_0a9_5e3b

    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0a9_5e51

    ld a, [hl+]
    dec hl
    inc l
    dec l
    rlca
    rlca
    rlca
    ld l, $2f
    jr nc, jr_0a9_5e64

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0a9_5e74

jr_0a9_5e3b:
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

jr_0a9_5e51:
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
    rlca
    rlca
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b

jr_0a9_5e64:
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
    rlca
    rlca
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]

jr_0a9_5e74:
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
    rlca
    rlca
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
    rlca
    rlca
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
    rlca
    rlca
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
    rlca
    rlca
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
    rlca
    xor l
    xor [hl]
    xor a
    rlca
    rlca
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
    rlca
    rlca
    rlca
    rlca
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    rlca
    push bc
    add $07
    rlca
    rlca
    rlca
    rlca
    rst $00
    ret z

    ret


    jp z, $cccb

    call $cfce
    ret nc

    pop de
    rlca
    rlca
    rlca
    rlca
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, $dcdb

    rlca
    db $dd
    sbc $07
    rlca
    rst $18
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    rlca
    ld [$07eb], a
    rlca
    db $ec
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    cp e
    rlca
    rlca
    push af
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
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
    ld b, $06
    ld [bc], a
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
    ld b, $00
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    rst $20
    db $e3
    di
    rst $30
    di
    rst $38
    rst $30
    rst $38
    cp $ff
    rst $38
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    cp $fd
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    and $ff
    rst $38
    rst $38
    and $c1
    ret c

    ldh [$ef], a
    ldh a, [$e0]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $08
    rra
    rst $08
    rrca
    adc a
    rlca
    ld [hl], a
    adc a
    rst $00
    rst $38
    ld a, a
    rst $38
    rst $18
    ccf
    ld c, a
    cp a
    rra
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld sp, hl
    rst $38
    jp hl


    rst $38
    ld sp, hl
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    ld [hl], d
    rst $38
    ei
    ld a, a
    cp e
    ld a, a
    ld l, c
    rst $38
    rst $28
    rst $08
    ld c, [hl]
    adc a
    sbc e
    rrca
    rra
    dec bc
    dec de
    rrca
    db $ed
    rra
    ld hl, sp+$1d
    ld d, l
    cp b
    or [hl]
    ld sp, hl
    ldh a, [rIE]
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
    ld a, a
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
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
    cp $ff
    ld [hl], a
    ei
    ld sp, hl
    ld hl, sp-$03
    ld hl, sp-$03
    ld hl, sp-$02
    db $fc
    ld a, [$faff]
    db $fd
    db $fc
    db $fc
    cp $fc
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
    ld [hl], a
    cp $5c
    rst $38
    sbc h
    rst $38
    cp l
    rst $38
    sbc h
    rst $38
    jr @+$01

    ld a, [$869f]

jr_0a9_617f:
    rst $18
    ld d, d
    rst $38
    or b
    ld a, a
    ld l, c
    or [hl]
    jr c, jr_0a9_617f

    or $f9
    ld hl, sp-$01
    ld a, [c]
    db $fd
    ld a, [$f9f9]
    ld a, [c]
    ld sp, hl
    ld a, [c]
    rst $30
    ld a, [$fffb]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor a
    ld a, a
    cp a
    rst $20
    ld l, e
    rst $30
    and a
    di
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
    ld a, l
    cp $bd
    cp $7c
    db $fd
    ld e, h
    ld a, a
    ld e, l
    rst $38
    rst $38
    ld a, a
    cp a
    ld a, a

jr_0a9_61c4:
    or a
    rst $38
    rst $30
    ld [hl], e
    add hl, sp
    ld [hl], e
    xor a
    ld [hl], e
    db $e3
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38

jr_0a9_61d3:
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
    dec bc
    or $6b
    or $c5
    ld a, [hl]
    nop
    rst $38
    inc sp
    db $fc
    or d
    db $fd
    sbc d
    db $fd
    sbc l
    ei
    ld c, $f9
    inc l
    ei
    dec b
    ld a, d
    ld a, h
    scf
    rlca
    ccf
    inc c
    scf
    sub d
    dec h
    ld [de], a
    and h
    ld a, [c]
    jr nz, jr_0a9_61d3

    ld [hl], d
    ld b, c
    ld a, [c]
    sub $f1
    rst $10
    ld sp, hl
    sbc l
    ei
    ld a, [$feff]
    rst $38
    cp $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    ld d, [hl]
    xor a
    ret nz

    cp a
    xor l
    rst $18
    db $dd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec sp
    db $fc
    ld sp, $2818
    add hl, de
    dec e
    jr jr_0a9_61c4

    inc e
    ld d, b
    sbc [hl]
    and a
    dec sp
    rra
    cp e
    db $fd
    cp e
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
    ld sp, hl
    rst $38
    rst $38
    pop af
    di
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    rst $20
    rst $38
    ei
    rst $38
    di
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    dec a
    rst $10
    cp d
    ld d, a
    ld c, e
    or $9b
    ld h, [hl]
    rra
    ld [c], a
    reti


    ld h, $7b
    and h
    or [hl]
    db $ed
    ld a, [hl-]
    push bc
    inc hl
    call c, $d02f
    db $e3
    call c, $fd4a
    inc sp
    call z, $8877
    ld d, [hl]

Jump_0a9_629f:
    xor c
    push de
    dec sp
    ld l, h
    sbc e
    push af
    ld a, [bc]
    db $fc
    inc bc
    rst $38
    nop
    ld c, e
    sub b
    cpl
    ret nc

    ld h, c
    cp $e3
    cp $e6
    rst $38
    xor $ff
    ld l, $ff
    ld l, l
    ccf
    dec c
    ccf
    ld e, $bf
    db $dd
    cp a
    db $dd
    rst $38
    rst $38
    rst $38
    db $dd
    rst $38
    ld [hl], d
    call Call_0a9_4e61
    ld a, [bc]
    ld h, l
    ld a, h
    and e
    push de
    xor e
    push de
    xor e
    ei
    cp a
    cp a
    rst $38
    cp $ff
    rst $30
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    ld sp, hl
    ld a, [$fefd]
    rst $38
    rst $38
    rst $38
    cp a
    rst $08
    rst $18
    adc a
    rst $28
    sub a
    rst $08
    di
    or a
    ei
    cp a
    rst $38
    rst $30
    db $db
    ld d, e
    rst $38
    ei
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    xor a
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
    rst $38
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
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    or [hl]
    ld b, d
    ld [hl], $42
    rst $10
    ld b, d
    ld [hl], a
    jp nz, $d2a3

    rst $28
    sub d
    ld c, [hl]
    or e
    ld e, e
    and d
    rst $10
    ld a, [hl+]
    sub $2b
    ld d, [hl]
    xor e
    ld a, h
    adc e
    push af
    xor e
    rst $10
    add hl, hl
    db $d3
    dec l
    db $e3
    dec e
    and c
    ld e, a
    xor a
    ld d, c
    rst $38
    ld bc, $01ff
    ccf
    pop bc
    add hl, bc
    rst $30
    cp $41
    sbc $61
    rrca
    ldh a, [$b2]
    db $ed
    db $db
    and l
    cp b
    rst $20
    ret c

    and a
    ld d, b
    xor a
    ld e, $e1
    reti


    and $5c
    db $e3
    ret


    rst $30
    ld b, b
    rst $38
    ld e, [hl]
    pop af
    inc e
    pop af
    ld d, $f9
    ld d, b
    rst $38
    ld b, b
    rst $38
    ldh a, [rIE]
    db $e3
    rst $38
    cp [hl]
    rst $38
    db $fd
    rst $38
    ld a, [c]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or $ff
    rst $08
    rst $38
    cp a
    cp $f4
    cp $fd
    ld hl, sp-$07
    db $f4
    rst $30
    ldh a, [rIE]
    ret nz

    ret


    cp $d8
    rrca
    inc b
    rst $28
    ld c, e
    daa
    add c
    ld a, a
    sbc a
    ld [hl], a
    ld h, e
    sbc a
    adc a
    rst $38
    rst $38
    cp $ee
    ld a, a
    and [hl]
    db $fd
    cp l
    rst $38
    rst $38
    rst $38
    db $fc
    ei
    ld a, [$fbff]
    rst $38
    db $f4
    rst $38
    push af
    cp $f7
    rst $38
    di
    rst $38
    ld sp, hl
    rst $38
    db $db
    rst $38
    db $db
    rst $38
    rst $38
    rst $38
    or l
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    ld l, a
    rst $38
    ei
    rst $38
    db $db
    rst $38
    ld a, a
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    db $ec

jr_0a9_6431:
    rst $38
    db $ed

jr_0a9_6433:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0a9_6439:
    rst $38
    xor a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    rst $38
    or h
    rst $38
    or a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc $ff
    jr nz, jr_0a9_6431

    jr nz, jr_0a9_6433

    ld c, b
    rst $38
    jr z, @+$01

    jr nz, jr_0a9_6439

    ld h, c
    rst $38
    ld b, b
    rst $38
    ld l, b
    rst $38
    ld l, h
    nop
    dec h
    nop
    ld h, h
    nop
    inc h
    nop
    inc l
    nop
    ld h, b
    inc b
    db $e4
    nop
    db $e4
    nop
    db $f4
    inc b
    ldh a, [rDIV]
    or h
    ld b, b
    db $f4
    nop
    db $f4
    add b
    ld d, b
    and h
    inc b
    add b
    sub b
    add b
    or b
    add b
    ldh [$90], a
    and b
    ret nc

    jp nc, $9ae0

    ldh [$da], a
    and b
    adc b
    ldh a, [$ba]
    ret nz

    sbc b
    ld a, [c]
    sub b
    ld a, [$f2c8]
    ld [$cac0], a
    ret nz

    db $f4
    ret z

    ld l, d
    call c, $fc7a
    ld c, l
    ld a, [$fabd]
    ld h, a
    ld hl, sp-$29
    add sp, $7c
    db $e3
    push hl
    ld a, [$fcf9]
    ld a, c
    db $fc
    ld hl, sp+$7f
    and d
    ld a, l
    and d
    ld a, l
    cp e
    ld l, l
    xor l
    ld a, a
    db $fc
    ld a, a
    xor a
    ld a, h
    ld l, l
    rst $38
    ld a, l
    rst $38
    ld a, l
    rst $38
    ld a, h
    rst $38
    or h
    rst $38
    xor $bf
    ld a, $ff
    db $76
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, $ff
    cp [hl]
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, c
    rst $38
    sub e
    rst $38
    cp a
    rst $38
    cp e
    rst $38
    ld a, e
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    ld hl, sp-$01
    set 7, [hl]
    rst $38
    cp $fb
    cp $e9
    cp $fc
    cp $fc
    cp $9c
    cp $de
    db $fc
    cp $fc
    ld a, $fc
    inc a
    db $fc
    cp $fc
    adc $ff
    ld c, h
    rst $38
    db $fc
    rst $38
    cp a
    db $fc
    cp a
    db $fc
    db $fd
    cp $ce
    db $fd
    ld hl, sp-$01
    ld a, [$38fd]
    rst $38
    ld hl, sp-$01
    adc b
    rst $38
    add sp, -$01
    ld hl, sp-$01
    db $fc
    rst $38
    inc e
    rst $38
    rst $38
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
    ld b, $20
    adc b
    nop
    add c
    nop
    xor b
    nop
    ld b, d
    jr nz, jr_0a9_6583

    nop
    xor c
    nop
    reti


    nop
    ld c, d
    nop
    scf
    nop
    jr nz, @+$04

    ld [$0000], sp
    nop
    jr nz, jr_0a9_656e

jr_0a9_656e:
    ld [hl-], a
    nop
    inc c
    ld b, b
    call nz, Call_0a9_4008
    nop
    or e
    nop
    ld [de], a
    nop
    ld l, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0a9_6583:
    nop
    ld b, h
    nop
    sbc c
    nop
    add d
    add hl, de
    ld [hl], l
    nop
    jr nz, jr_0a9_658e

jr_0a9_658e:
    ld b, c
    nop
    reti


    nop
    rst $38
    nop
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    rst $38
    ld b, b
    ld a, [c]
    ld c, l
    or [hl]
    ld c, c
    push bc
    ld [hl-], a
    db $ed
    ld [de], a
    or b
    ld c, l
    rst $38
    nop
    sbc c
    nop
    db $10
    add b
    and h
    nop
    xor $00
    ld b, l
    cp e
    db $10
    rst $38
    inc a
    rst $28
    sbc e
    ld h, h
    or $09
    dec [hl]
    rst $38
    ld l, h
    rst $38
    inc hl
    db $fc
    or [hl]
    ld c, c
    ld c, h
    rst $38
    ld c, c
    ld a, [c]
    ld [$b340], a
    ld c, h
    or [hl]
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $28
    rst $38
    or $ff
    rst $38
    rst $38
    db $fd
    rst $38
    or $ff
    di
    rst $38
    db $76
    rst $38
    and $ff
    ld [c], a
    db $fd
    ld hl, sp+$07
    rst $38
    ccf
    cp $3f
    ret nz

    ccf
    ld l, d
    ccf
    ld b, b
    ccf
    ld d, l
    ccf
    jr nc, jr_0a9_6675

    ld b, b
    ccf
    nop
    ld a, a
    jr nz, jr_0a9_667b

    db $10
    ld a, a
    ld [hl], l
    ld a, a
    ld a, b
    nop
    rrca
    nop
    ld b, d
    db $fd
    cp a
    ld b, b
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
    db $db
    inc h
    dec l
    jp nc, $6996

    ld [de], a
    db $ed
    add hl, bc
    or $04
    ei
    nop
    rst $38
    ld c, b
    rst $38
    and b
    rst $38
    ld b, b
    rst $38
    or h
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    ld b, b
    nop
    inc b
    nop
    ld de, $9100
    nop
    ld b, h
    nop
    ld b, [hl]
    nop
    xor c
    nop
    ld d, e
    nop
    sub l
    nop
    ld h, [hl]
    nop
    ld h, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_0a9_6650

jr_0a9_6650:
    add hl, hl
    add b
    sbc c
    nop
    add b
    nop
    inc h
    nop
    jr nz, jr_0a9_665a

jr_0a9_665a:
    ret


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
    ld [hl+], a
    nop
    inc d
    ld [hl+], a
    ld l, d
    nop
    add b
    nop
    nop
    nop
    or d
    nop
    rst $38
    nop
    ld l, c

jr_0a9_6675:
    nop
    nop
    nop
    nop
    nop
    nop

jr_0a9_667b:
    nop
    rst $38
    nop
    cp a
    jr jr_0a9_668d

    or e
    ld l, c
    sub [hl]
    dec l
    ld b, b
    rst $38
    nop
    ld a, d
    add c

jr_0a9_668a:
    xor $11
    nop

jr_0a9_668d:
    nop
    ld [bc], a
    nop
    ld c, c
    nop
    db $fd
    nop
    reti


    ld h, $b1
    rst $38
    db $dd
    ei
    db $76
    adc c
    adc c
    db $76
    xor c
    rst $38
    reti


    rst $38
    scf
    ret z

    nop
    rst $38
    ld b, d
    db $fd
    ld d, a
    jr nz, jr_0a9_668a

    nop
    rlca
    ei
    reti


    rst $38
    rst $38
    rst $38
    or [hl]
    rst $38
    db $db
    rst $38
    db $fd
    rst $38
    cp $ff
    or $ff
    push bc
    rst $38
    ld l, d
    rst $38
    sub [hl]
    rst $38
    reti


    rst $38
    rst $38
    nop
    ld [bc], a
    rst $38
    ld sp, hl
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ld c, d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, $f0
    nop
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    or [hl]
    ld c, c
    dec hl
    call nc, $ad52
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jp nz, $ffff

    rst $38
    rst $38
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    nop
    ld c, b
    nop
    ld c, b
    nop
    or l
    nop
    ld [hl+], a
    nop
    adc l
    nop
    ld c, b
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [$4000], sp
    nop
    or b
    ld [bc], a
    ld [de], a
    nop
    ld c, b
    nop
    ld b, b
    nop
    ld [de], a
    nop
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    add d
    nop
    ld b, h
    nop
    jr z, jr_0a9_678e

    ld e, h
    nop
    stop
    nop
    nop
    ld l, b
    inc b
    rst $38
    nop
    add e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    add $ef
    dec bc
    ld h, h
    ld c, b
    or a
    ret nc

    dec bc
    db $db
    inc h
    ld e, a

jr_0a9_6769:
    jr nz, jr_0a9_6769

    ld bc, $0008
    ld h, h
    nop
    sub d
    nop
    ld l, e
    nop
    or h
    ld c, e
    inc h
    rst $38
    and l
    ld a, [hl]
    ld a, [c]
    add hl, bc
    ld c, c
    rst $38
    or h
    ld l, a
    or [hl]
    rst $38
    or $09
    ld c, l
    rst $38
    adc l
    ld [hl], d
    ld l, a
    nop
    ld a, [c]
    dec c
    db $f4
    ld l, a

jr_0a9_678e:
    or [hl]
    rst $38
    db $db
    rst $38
    db $ed
    rst $38
    ld a, [hl]
    rst $38
    cp a
    rst $38
    db $db
    rst $38
    ld l, l
    rst $38
    or d
    rst $38
    ld l, e
    rst $38
    db $fd
    rst $38
    rlca
    ld hl, sp-$03
    ld [bc], a
    dec [hl]
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld a, [bc]
    rst $38
    nop
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
    ld a, [$0000]
    ld a, b
    rlca
    ld e, a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld l, d
    sub l
    sub b

jr_0a9_67df:
    ld l, a
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
    sbc e
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    sbc c
    db $76
    ld bc, $64ff
    rst $18
    inc b
    rst $38
    ld de, $39ff
    rst $38
    ld b, h
    nop
    ld b, [hl]
    nop
    and c
    nop
    sbc e
    nop
    dec b
    nop
    ld b, h
    nop
    nop
    nop
    ld de, $9100
    nop
    ld h, b
    inc b
    inc b
    nop
    sub e
    nop
    sub e
    nop
    ld h, b
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
    sbc c
    nop
    ld c, b
    sub e
    or e
    inc b
    ld b, [hl]
    nop
    add a
    nop
    sbc d
    ld bc, $24db
    ld l, h
    nop
    add d
    nop
    nop
    nop
    dec bc
    nop
    cp $01
    dec a
    ei
    ld bc, $50db
    xor a
    ld e, a
    jr nz, @+$6e

    sub e
    ld l, [hl]
    sub c
    rst $18
    jr nz, jr_0a9_67df

    nop
    ld c, c
    nop
    ld h, $00
    or d
    ld c, l
    inc b
    rst $38
    sbc e
    rst $38
    add b
    rst $38
    db $dd
    ld [hl+], a
    ld [hl], $ff
    rst $18
    ei
    ret nz

    rst $38
    ret


    ld [hl], $a0
    rst $38
    and b
    ld c, l
    ei
    inc b
    ld e, b
    or a
    db $db
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    sbc c
    rst $38
    ld l, a
    rst $38
    dec [hl]
    rst $38
    cp a
    rst $38
    ldh a, [rIF]
    inc e
    db $e3
    or $e1
    ld c, e
    ldh a, [$09]
    ldh a, [$85]
    ld hl, sp+$00
    db $fc
    ld [hl+], a
    db $fc
    nop
    cp $01
    cp $00
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nc

    nop
    rrca
    nop
    ld b, a
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
    db $fd
    ld [bc], a
    cp $01
    cp $01
    cp $01
    ld a, [$ec05]
    inc de
    and b
    ld e, a
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
    dec bc
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    inc h
    db $db
    ld [hl+], a
    rst $38
    ret


    rst $38
    ld c, c
    rst $38
    ld [hl+], a
    rst $38
    db $76
    rst $38
    ret


    nop
    call c, $2801
    ld bc, $0036
    ld c, $20
    ret c

    ld bc, $0188
    ld h, $00
    ld [bc], a
    inc h
    ld d, c
    adc c
    sbc d
    ld bc, $0025
    ld h, $00
    ld e, [hl]
    add c
    adc d
    ld de, $0020
    nop
    nop
    add h
    nop
    ld [bc], a
    add b
    db $eb
    inc b
    ld e, [hl]
    inc h
    ld a, [$0b05]
    db $10
    ccf
    nop
    ld c, e
    inc h
    ld c, b
    or a
    ld e, h
    add e
    inc de
    jr nz, jr_0a9_692a

    nop
    rst $38
    nop
    ld a, [c]
    dec c
    call z, $b4ff
    ld l, a
    nop
    rst $38
    ld [hl], h
    adc e
    sub d
    ld l, l
    add sp, $17

jr_0a9_692a:
    ld l, h
    sub e
    ld h, a
    nop
    sbc e
    nop
    ld sp, hl
    ld b, $40
    cp a
    db $db
    rst $38
    ld l, l
    rst $38
    dec b
    cp $90
    ld l, a
    db $fd
    rst $38
    ld l, h
    ld hl, sp+$08
    ldh a, [$b8]
    ld b, b
    rlca
    nop
    ld e, l
    add d
    cp a
    rst $38
    db $fc
    rst $38
    db $fd
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
    or $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    ld hl, sp-$01
    ld a, e
    db $fd
    rlca
    db $fc
    and h
    ld e, [hl]
    call nc, $ee2f
    dec d
    ld a, a
    inc b
    ld a, [hl]
    dec b
    ccf
    inc b
    ccf
    inc b
    sbc e
    inc b
    rrca
    add h
    rrca
    inc b
    adc l
    db $76
    db $fd
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
    cp $01
    db $fd
    ld [bc], a
    ld a, [$f405]
    dec bc
    ld [$5015], a
    xor a
    ld a, [bc]
    push af
    ld bc, $40ff
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld hl, $27ff
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
    sub d
    rst $28
    rrca
    rst $38
    ld a, a
    nop
    dec b
    ld c, b
    add c
    ld [de], a
    sub h
    ld [hl+], a
    ld a, [de]
    ld b, b
    ret


    dec c
    ld e, e
    nop
    or a
    ld [hl+], a
    ld a, l
    ld [bc], a
    call $9f09
    ld c, c
    dec e
    ld [hl+], a
    db $10
    ld h, $e6
    add hl, bc
    rla
    ret


    ld hl, sp+$27
    ld d, [hl]
    inc h
    cp $01
    jp nz, $da19

    dec h
    ld e, e
    inc h
    adc l
    nop
    ld d, e
    nop
    rlca
    jr nz, jr_0a9_6a42

    ld [hl+], a
    call z, $9433
    db $db
    ld b, b
    cp a
    cp e
    ld b, h
    push af
    ld a, [bc]
    inc h
    db $db
    ld bc, $d2fe
    dec l
    ld d, a
    adc b
    sbc h
    nop
    db $eb
    inc d
    inc de
    cp $f3
    cp $93
    cp $4d
    cp $95
    ld l, d
    ld d, c
    cp [hl]
    ld bc, $01fe
    cp $80
    ld [hl], $ed
    ld [de], a
    dec l
    jp c, $fe45

    rst $38
    cp $b6
    rst $38
    sbc d
    rst $38
    inc l
    rst $38
    or $ff
    ld a, $3f
    ld de, $1f1f
    ld bc, $01f7
    ld sp, hl
    rlca
    rst $38
    rst $38
    ld bc, $0fff
    rst $38
    ld a, l
    rst $38
    ld a, l
    ccf
    rst $18
    sbc a
    rst $28
    rst $08
    db $e3
    rst $30
    di
    ld sp, hl
    db $fc
    db $fd
    ld a, [hl]
    cp $ff
    rst $38
    rst $38
    rst $38

jr_0a9_6a42:
    rst $38
    rst $38
    ei
    rlca
    ld a, a
    rst $38
    inc bc
    rst $38
    add a
    ld a, a
    inc bc
    ld a, a
    add e
    ccf
    ld b, e
    sbc a
    or a
    ld c, a
    ld c, a
    and a
    db $e3
    rla
    ld e, a
    and e
    rst $28
    ld de, $05fe
    sbc $2e
    ld l, a
    sbc a
    rst $08
    ld h, a
    db $fd
    inc sp
    rst $18
    ccf
    ld a, c
    sub a
    sub a
    ld l, b
    and e
    ld e, h
    rra
    db $e4
    and e
    ld e, [hl]
    nop
    rst $38
    add c
    ld a, a
    nop
    rst $38
    ld [bc], a
    rst $38
    ld a, [hl+]
    rst $38
    rlca
    rst $38
    rra
    rst $38
    ld e, a
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
    ld e, a
    sbc a
    ccf
    rst $18
    cp a
    rra
    ccf
    sbc a
    cp a
    rra
    cp a
    rra
    cp a
    rra
    ccf
    cp a
    cp a
    ccf
    rst $38
    ccf
    rst $38
    ccf
    ccf
    cp a
    ld a, $bf
    rst $38
    ccf
    ccf
    cp a
    cp a
    ccf
    rst $38
    ccf
    cp a
    ld a, $be
    inc a
    db $fc
    jr c, jr_0a9_6b35

    jr c, jr_0a9_6b3a

    ld a, $7e
    ld a, $7e
    ld a, $7e
    ld a, [hl]
    ld a, l
    ld a, [hl]
    ld a, h
    ld a, [hl]
    ld a, l
    ld a, [hl]
    ld a, l
    ld a, [hl]
    ld a, l
    ld a, [hl]
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, h
    db $fd
    ld a, [hl]
    ld a, [hl]
    db $fd
    ld a, l
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    pop af
    ld a, b
    ld [hl], c
    ld hl, sp+$7a
    db $fd
    rst $38
    rst $38
    db $fd
    cp $fe
    db $fc
    cp $fc
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
    db $fc
    db $fc
    db $fc
    cp $fc
    db $fd
    db $fc
    db $fc
    db $fc
    db $fd
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
    ei
    db $fc
    db $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fc
    rst $38
    db $fc
    ld a, a
    cp h
    ccf
    call c, $c59f
    rst $28
    push hl
    di
    ei
    ld sp, hl
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    xor a
    ld e, a
    ld h, a
    cp a
    scf

jr_0a9_6b35:
    rst $18
    rst $28
    rst $18
    rst $10
    rst $28

jr_0a9_6b3a:
    cp a
    rst $00
    db $fd
    ld b, e
    cp [hl]
    ld h, c
    ei
    inc [hl]
    pop af
    ld e, $e8
    rra
    call nc, $a6af
    rst $18
    ld b, e
    rst $38
    db $e3
    rst $38
    pop af
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
    jp $8382


    add b
    add e
    add b
    add a
    nop
    add a
    ld bc, $0187
    add a
    ld bc, $0187
    add a
    inc bc
    add a
    rlca
    add a
    rlca
    add a
    dec b
    add a
    dec b
    add a
    ld bc, $0387
    ld c, $04
    ld bc, $3c00
    nop
    dec sp
    nop
    ld a, a
    inc e
    rst $38
    inc e
    cp a
    inc c
    dec a
    inc c
    ccf
    inc c
    cpl
    inc e
    dec sp
    inc e
    dec de
    inc a
    dec de
    inc a
    rra
    jr c, jr_0a9_6bf5

    dec a
    ld e, a
    jr c, jr_0a9_6bfb

    dec sp
    ld e, b
    ccf
    cp l
    ld a, d
    ld a, $79
    cp h
    ld a, e
    cp h
    ld a, e
    cp b
    ld a, a
    ei
    ldh [$f8], a
    ldh [$e0], a
    pop hl
    cp $ff
    ld a, a
    db $fd
    dec a
    ccf
    dec sp
    ccf
    ccf
    inc sp
    dec sp
    scf
    ld a, $3f
    ld a, a
    inc a
    ld [hl], a
    jr c, @+$7c

    jr nc, jr_0a9_6bfd

    ld [hl], b
    ld [hl], $7c
    ld a, $7c
    cp $78
    rst $28
    ld [hl], b
    ld l, [hl]
    ld [hl], c
    rst $20
    ld a, a
    rst $38
    ld a, a
    ld a, [$767d]
    ld sp, hl
    ld a, a
    pop hl
    ld [hl], e
    rst $28
    ld a, a
    rst $38
    ld a, h
    rst $38
    db $fd
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

jr_0a9_6bf5:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0a9_6bfb:
    ld a, a
    cp a

jr_0a9_6bfd:
    ccf
    sbc a
    rst $18
    rst $20
    rst $28
    rst $38
    di
    rst $38
    ld sp, hl
    rst $38
    db $fc
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
    ld a, a
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    adc a
    ld a, a
    rra
    rst $38
    rra
    rst $38
    rst $08
    rst $38
    xor a
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
    cp $f8
    ldh [$c0], a
    jr nz, jr_0a9_6c40

jr_0a9_6c40:
    ld b, c
    nop
    ccf
    ld c, $ff
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_0a9_6c4d:
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    ld a, [$ed05]
    ld [de], a
    ld [$d515], a
    ld a, [hl+]
    ld [$5115], a
    xor [hl]
    sub d
    ld l, l
    ld d, l
    xor d
    ld a, [hl+]
    push de
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_0a9_6c4d

    nop
    nop
    db $d3
    inc l
    nop
    nop
    ei
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $20
    sbc a
    xor a
    rra
    rst $38
    ld a, $bb
    ld a, h
    jr nc, jr_0a9_6c95

    rst $10
    nop
    rst $28
    ret nc

    xor $d5
    db $dd
    scf
    dec [hl]
    rrca
    ld a, [hl]
    add c
    ld c, a
    or b
    ld [hl], l

jr_0a9_6c95:
    adc [hl]
    call z, Call_000_3eff
    rst $38
    ld a, $ff
    ccf
    rst $38
    cp a
    rst $38
    pop af
    rst $38
    cp h
    ld a, a
    rst $38
    rst $38
    rst $38
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
    rst $38
    ld a, a
    ld a, a
    cp a
    rst $28
    rst $18
    rst $30
    rst $28
    di
    rst $38
    ld sp, hl
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
    rst $38
    db $fc
    ldh a, [$e0]
    add a
    nop
    jr nz, jr_0a9_6cdc

jr_0a9_6cdc:
    inc bc
    ld bc, $0e3f
    call nc, $dbfb
    inc h
    db $ed
    ld [de], a
    di
    inc c
    ld l, l
    sub d
    or d
    ld c, l
    ld e, l
    and d
    or d
    ld c, l
    ld c, c
    or [hl]
    and h
    ld e, e
    ld c, e
    or h
    and l
    ld e, d
    ld b, e
    cp h
    ld bc, $03fe
    db $fc
    add l
    ld a, d
    ld b, c
    cp [hl]
    pop hl
    ld e, [hl]
    ld d, c
    xor [hl]
    ld de, $2bfe
    db $fc
    ld d, a
    db $fc
    nop
    rst $38
    ldh [$1f], a
    nop
    nop
    ld l, h
    rla
    nop
    nop
    db $fc
    ldh a, [$fb]
    db $fc
    ei
    db $fc
    ei
    db $fc
    nop
    rst $38
    rst $28
    rra
    cp a
    ld a, a
    ld a, [hl]
    rst $38
    ld a, c
    cp $e6
    rra
    db $fc
    inc bc
    ld a, a
    ret nz

    ld a, c
    sbc $5f
    cp $d7
    ld a, $f7
    ld c, $bd
    jp nz, $f827

    inc c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    ld hl, sp-$01
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
    ldh a, [rIE]
    ld hl, sp-$01
    ld sp, hl
    rst $38
    ei
    db $fd
    rst $38
    db $fd
    cp a
    db $fd
    cp a
    db $fc
    rst $18
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
    ld a, a
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
    db $fd
    ei
    pop hl
    db $e3
    pop bc
    db $e3
    pop bc
    jp $c3c1


    pop bc
    ret nz

    ret nz

    pop bc
    add b
    inc e
    nop
    ret nz

    nop
    inc bc
    ld bc, $023f
    rst $30
    add b
    adc $00
    or b
    rlca
    rla
    add b
    ei
    inc b
    db $ed
    ld [de], a
    db $eb
    inc b
    cp l
    ld [bc], a
    ld [de], a
    dec c
    add hl, sp
    ld b, $79
    add a
    xor c
    ld b, [hl]
    ld a, b
    add a
    or b
    ld c, a
    cp b
    rlca
    db $f4
    dec bc
    ld a, [$fc05]
    inc bc
    ld a, [c]
    dec c
    add sp, $17
    ldh a, [rIF]
    add sp, $17
    ldh a, [rIF]
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld a, [hl-]
    dec b
    ldh [rP1], a
    ld h, c
    db $10
    inc bc
    dec c
    rst $08
    ccf
    add e
    ld a, a
    add a
    ld a, a
    rlca
    rst $38
    rst $30
    rst $38
    add e
    rst $38
    rlca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rst $18
    rst $38
    rst $38
    ld a, a
    db $e3
    ld a, a
    jp Jump_0a9_437f


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
    ld b, a
    rst $38
    rlca
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
    cp $1f
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
    rst $18
    ccf
    ei
    add a
    rst $38
    db $e3
    ccf
    rst $38
    adc a
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
    di
    rst $38
    db $fd
    ei
    ld hl, sp-$03
    db $fc
    db $fc
    cp $fc
    db $fd
    cp $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    ldh a, [$f8]
    pop af
    ld sp, hl
    pop af
    ld sp, hl
    pop af
    or $f9
    db $fd
    cp $f8
    ldh a, [rLY]
    add e
    jr z, jr_0a9_6e72

    ret nz

    nop
    rlca
    inc bc
    ld e, l
    ccf
    jp hl


    cp $89
    db $76
    srl h
    dec a
    add $d5
    dec hl

jr_0a9_6e72:
    ld h, e
    sbc h
    sbc d
    ld h, l
    add $39
    dec de
    db $ec
    adc h
    ld [hl], e
    ld b, d
    cp l
    ld sp, $f1ce
    ccf
    add hl, hl
    rst $18
    xor [hl]
    ld [hl], a
    add hl, bc
    rst $38
    dec b
    cp $01
    cp $11
    cp $50
    xor $ee
    or d
    ld d, d
    db $ec
    jr z, @-$08

    ld [bc], a
    db $fc
    ld b, d
    db $fc
    ld h, $fc
    add b
    db $fc
    ld h, h
    db $fc
    sbc b
    db $fc
    inc c
    nop
    sbc h
    ldh [$84], a
    ld hl, sp-$80
    nop
    and b
    ret c

    adc b
    ld hl, sp-$70

jr_0a9_6eaf:
    ld hl, sp-$30
    cp b
    sub b
    ld hl, sp-$68
    ldh a, [$b8]
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [rNR41]
    ldh a, [$60]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$f7]
    ldh [rIE], a
    ldh [$d7], a
    ldh [$cf], a
    ldh [$df], a
    ldh [$ef], a
    ldh a, [$e0]
    db $fc
    ret nz

    db $fd
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    xor $f1
    and $f9
    ldh a, [rIE]
    sub [hl]
    jp hl


    sub e
    ldh [$d2], a
    pop hl
    call c, $ede3
    di
    db $e3
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

Call_0a9_6eff:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret


    cp $80
    nop
    daa
    rra
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
    ldh [$e0], a
    ldh a, [$e0]
    ldh [$f0], a
    ldh a, [$f0]
    ldh [$c0], a
    nop
    nop
    ld h, b
    jr nz, jr_0a9_6eaf

    nop
    nop
    nop
    nop
    ld h, b
    ldh [$c0], a
    and b
    ret nz

    add b
    ld b, b
    ld b, b
    add b
    add b
    ld b, b
    ret nz

    nop
    ld b, b
    add b
    ld b, b
    add b
    add b
    nop
    nop
    add b
    nop
    add b
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
    nop
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0300
    nop
    ld bc, $0303
    nop
    inc bc
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    ld b, $07
    rlca
    rlca
    rlca
    rlca
    ld c, $07
    ld b, $0f
    rrca
    rrca
    rst $38
    rrca
    rst $28
    rrca
    di
    rrca
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    rra
    ld h, b
    rra
    push bc
    ccf
    srl a
    rst $28
    ccf
    rra
    rst $38
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
    db $fc
    rst $38
    ld a, [hl]
    add c
    sbc a
    ld a, a
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
    jr jr_0a9_6ff3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0a9_7003

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0a9_7013

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0a9_7023

    ld [hl-], a

jr_0a9_6ff3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0a9_7033

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_0a9_7003:
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

jr_0a9_7013:
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

jr_0a9_7023:
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d

Call_0a9_702b:
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d

jr_0a9_7033:
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
    jr jr_0a9_70f3

    ldh a, [$f0]
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0a9_7105

    ld [hl+], a
    inc hl
    inc h
    dec h

jr_0a9_70e8:
    ld h, $f0
    ldh a, [$f0]
    daa
    jr z, jr_0a9_7118

    ldh a, [$2a]
    dec hl
    inc l

jr_0a9_70f3:
    dec l
    ld l, $2f
    jr nc, jr_0a9_70e8

    ld sp, $f032
    ldh a, [$33]
    inc [hl]
    dec [hl]
    ldh a, [rP1]
    nop
    nop
    nop
    nop

jr_0a9_7105:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0a9_7118:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$0008], sp
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$080e], sp
    ld [$0000], sp
    nop
    ld [$0808], sp
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld c, $00
    ld a, [bc]
    ld [$0000], sp
    ld [$0808], sp
    nop
    add h
    ld b, e
    xor h
    ld b, e
    db $ec
    ld b, e
    ld hl, sp+$47
    reti


    ld h, a
    ld d, d
    ld l, a
    ld [hl], e
    ld a, a
    cp [hl]
    rra
    adc a
    rst $00
    pop hl
    jp $f0c8


    add $f8
    db $fd
    jp nz, $c2c1

    add c
    jp nz, $80c3

    jp Jump_0a9_4280


    add b
    jp nz, Jump_000_2200

    nop
    inc bc
    add [hl]
    ld [c], a
    add c
    cp h
    ret nz

    ld e, [hl]
    add b
    add [hl]
    nop
    add [hl]
    nop
    add [hl]
    nop
    add [hl]
    nop
    add [hl]
    nop
    add [hl]
    nop
    ld b, $00
    ld c, $04
    inc b
    add e
    ld a, h
    add b
    and d
    call c, $bcc2
    ld [hl], b
    adc [hl]
    sub d
    inc c
    sub h
    ld c, $94
    ld c, $24
    sbc [hl]
    ld [$defe], sp
    ld a, $c2
    nop
    add [hl]
    ld hl, sp-$36
    db $f4
    xor d
    call nc, $fc82
    and d
    call c, $c0bc
    cp [hl]
    ret nz

    cp h
    ret nz

    ret nz

    cp $1e
    nop
    rrca

jr_0a9_72ad:
    ldh a, [rSB]
    db $fc
    ld a, l
    add b
    ld a, l
    add b
    ld b, c
    cp h
    ld a, l
    add b
    ld a, l
    add b
    ld a, l
    add b
    ld [hl+], a
    call c, Boot
    ld a, l
    db $fd
    add l
    ld sp, hl
    ld e, h
    and b
    ld [hl], h
    adc b
    or h
    ld c, b
    jr jr_0a9_72ad

    di
    ld bc, $03e4
    ld [bc], a
    add $85
    inc c
    adc h
    add hl, de
    add hl, sp
    ld [de], a
    ld b, a
    ld [hl-], a
    xor a
    ld h, d
    ld b, c
    set 0, d
    sub c
    add c
    jr nz, jr_0a9_72f6

    ld h, e
    cp a
    ld a, e
    ld h, [hl]
    ei
    xor [hl]
    db $d3
    ld c, [hl]
    or e
    cpl
    jp nc, Jump_0a9_629f

    ld sp, hl
    nop
    ei
    inc bc
    rst $38
    nop

jr_0a9_72f6:
    rst $30
    ld h, b
    rst $20
    add b
    rst $00
    nop
    add a
    ld [bc], a
    add a
    ld [bc], a
    add hl, de
    nop
    ld [hl], e
    inc bc
    rst $18
    ld b, $f7
    inc b

jr_0a9_7308:
    add a
    rlca
    rlca
    ld b, $0f
    ld b, $1f
    inc b
    ld d, c
    inc hl
    ld h, a
    add a
    and a
    rra
    add a
    ld a, a
    ld [hl], a
    adc a
    scf
    rrca
    ld e, a
    ld a, $f7
    ld a, c
    rst $10
    or $2d
    sbc $f9
    ld a, $68
    rst $38
    ldh a, [$ef]
    push bc
    xor $c5
    set 3, a
    add a
    ccf
    adc a
    rst $08
    ccf
    ld e, $cf
    adc a
    ld e, $38
    rra
    ld [hl], $3a
    ld h, h
    ld a, [hl]
    ld c, b
    cp $37
    rlca
    dec sp
    ld de, $103c
    ccf
    jr jr_0a9_7308

    db $10
    jr c, @+$12

    or b
    nop
    jr nc, jr_0a9_7350

jr_0a9_7350:
    or b
    nop
    or b
    add b
    or b
    nop
    inc a
    nop
    scf
    ld [hl+], a
    add hl, sp
    jr nz, jr_0a9_737f

    nop
    ld hl, $2000
    nop
    jr nz, jr_0a9_7364

jr_0a9_7364:
    ld hl, $2100
    nop
    ld hl, $2100
    nop
    ld sp, $6700
    ld bc, $7069
    ld d, c
    ld l, [hl]
    dec b
    ld b, d
    ld bc, $0542
    ld b, d
    dec l
    ld b, d
    ld l, c
    ld b, [hl]
    ld e, e

jr_0a9_737f:
    ld h, [hl]
    ld [hl], c
    ld a, $5e
    rrca
    ld e, e
    ld h, b
    ld a, [c]
    ld a, h
    ld a, [c]
    ld a, h
    db $e4
    ld a, [hl]
    add $78
    and $58
    adc $70
    and $58
    ld [hl], d
    ld a, h
    ld [hl], d
    ld c, $3e
    ret nz

    jp nz, $b4fc

    ret z

    ret nz

    db $fc
    cp h
    ret nz

    xor h
    ret nc

    xor l
    ret nc

    sbc l
    ldh [rSC], a
    db $fc
    cp $00
    jp hl


    db $fd
    add c
    db $fd
    db $ed
    sub b
    add h
    ld hl, sp-$54
    ret nc

    cp c
    ret nz

    di
    add c
    inc b
    db $e3
    jp nz, $c506

    adc h
    inc c
    sbc c
    jr c, jr_0a9_73d6

    ld b, d
    ld [hl], $af
    ld h, d
    ld e, c
    jp $91c2


    adc c
    jr nc, jr_0a9_7406

    ld a, e
    xor $7b
    ld a, [de]
    db $e3
    ld c, [hl]
    inc sp

jr_0a9_73d6:
    ld c, [hl]
    ld [hl-], a
    rra
    ld h, d
    cp c
    ld b, d
    ld l, d
    sub c
    ld a, [$f505]
    ld h, b
    push hl
    add b
    push bc
    nop
    rst $00
    nop
    add a
    inc b
    or a
    nop
    rst $00
    inc bc
    sbc a
    inc b
    and h
    ld b, a
    dec b
    add a
    add [hl]
    rlca
    adc a
    ld b, $8d
    ld [hl], $25
    jp $078f


    ld e, a
    ccf
    cp a
    rst $08
    cp a
    rrca
    adc $3f

jr_0a9_7406:
    dec l
    cp $cf
    ld a, [c]
    inc d
    xor $dc
    ld a, [hl-]
    ld l, a
    ld hl, sp-$09
    db $eb
    ld hl, sp-$31
    db $db
    call $87df
    ld a, a
    adc a
    ld e, [hl]
    cp a
    ld e, $de
    dec e
    ld e, $1a
    dec a
    ld [hl], b
    ld a, $fc
    ld l, h
    pop de
    db $fc
    dec sp
    push af
    ret c

    rst $30
    ld hl, sp-$29
    or d
    sbc $14
    adc h
    cp b
    inc e
    ld a, l
    jr c, jr_0a9_74ab

    cp c
    or l
    dec sp
    ld l, b
    scf
    ld a, [hl-]
    ld l, l
    ld a, l
    db $db
    call c, $d890
    sub b
    sbc $58
    ld e, a
    ld [$069f], sp
    scf
    inc de
    dec [hl]
    nop
    ld [hl-], a
    nop
    jr nz, jr_0a9_7452

jr_0a9_7452:
    jr nz, jr_0a9_7454

jr_0a9_7454:
    jr nz, jr_0a9_7456

jr_0a9_7456:
    jr nz, jr_0a9_7458

jr_0a9_7458:
    and b
    nop
    and b
    sub b
    inc a
    jr @+$29

    ld l, $39
    inc hl
    rrca
    jr nz, jr_0a9_7487

    nop
    ld [bc], a
    jr nz, @+$08

    jr nz, jr_0a9_7477

    ld [hl+], a
    jr jr_0a9_7494

    jr nc, jr_0a9_749e

    cp b
    ld a, $7c
    ld c, $7e
    ld h, b
    ld [hl], d

jr_0a9_7477:
    ld a, h
    ld h, d
    ld a, h
    ld b, d
    ld a, h
    ld b, h
    ld a, b
    ld b, h
    ld a, b
    ld b, h
    ld a, b
    ld h, b
    ld a, h
    ld d, l
    jr c, @-$40

jr_0a9_7487:
    ld b, b
    push bc
    ld a, b
    ld h, c
    db $dd
    ld b, l
    ld sp, hl
    ld a, l
    pop bc
    dec e
    pop hl
    dec b
    ld sp, hl

jr_0a9_7494:
    ld h, c
    reti


    db $dd
    ld a, c
    ld hl, sp+$05
    rst $00
    ld sp, hl
    add b
    ei

jr_0a9_749e:
    sbc b
    ld [c], a
    add b
    ld hl, sp-$37
    or b
    add e
    pop af
    call nc, $02a3
    and $c7

jr_0a9_74ab:
    inc c
    sbc [hl]
    adc c
    jr nc, jr_0a9_74ca

    ld b, h
    inc [hl]
    inc h
    ld l, h
    ld e, [hl]
    push bc
    ld [c], a
    sub a
    inc h
    or e
    inc l
    ld [hl], e
    rst $28
    ld [hl], a
    inc b
    rst $30
    dec d
    ld h, $57
    inc h
    dec e
    ld h, h
    sub [hl]
    ld h, h
    ld d, a
    and b

jr_0a9_74ca:
    or [hl]
    ld b, e
    db $10
    ld [$c8c2], a
    ld bc, $048a
    adc e
    add d
    inc c
    and $08
    add h
    inc bc
    sub c
    ld c, $73
    adc h
    sub b
    rrca
    inc e
    rrca
    ld a, [hl+]
    dec e
    dec hl
    call c, $078b
    rrca
    rra
    sbc a
    ld a, [hl]
    ld a, [hl]
    sbc [hl]
    ld a, l
    ld e, $5c
    cp $d3
    db $fc
    inc sp
    call z, $58bd
    ld a, b
    pop hl
    adc $e3
    add a
    xor $80
    cp a
    xor e
    scf
    db $ed
    rra
    rst $38
    dec a
    ld a, c
    cp l
    ld a, h

jr_0a9_7509:
    add hl, sp
    ld a, a
    add hl, sp
    and c

jr_0a9_750d:
    ld a, a
    add e
    ld sp, hl
    ldh a, [$b3]
    ld b, a
    ld a, [c]
    db $ec
    rst $10
    ld e, b
    rst $08
    and e
    ld e, [hl]
    ld [bc], a
    ld a, e
    ld [hl], d
    inc sp
    ld [c], a
    ld [hl], e
    ld h, l
    di
    bit 6, a
    ld h, a
    rst $18
    and a
    rst $18
    cpl
    rst $30
    ld [hl], a
    rst $28
    xor d
    rst $38
    or h

Call_0a9_752f:
    rst $38
    xor a
    rst $38
    cp a
    rst $38
    ld a, l
    rst $38
    ld a, [c]
    rst $38
    db $ec
    rst $30
    db $ec
    rst $38
    db $fc
    rst $38
    cp l

jr_0a9_753f:
    rst $38
    dec sp
    jr nz, @+$39

    jr nz, jr_0a9_7577

    jr nz, jr_0a9_7567

    jr nz, jr_0a9_7579

    jr nz, @-$4e

    jr nz, jr_0a9_7509

    jr nc, jr_0a9_750d

    jr nz, jr_0a9_75bb

    inc e
    ld e, h
    ld h, $3c
    ld b, d
    dec l
    ld b, b
    inc l
    ld b, c
    ld a, l
    ld b, c
    ld a, c
    ld b, l
    ld b, c
    ld a, l
    ld h, c
    ld a, l
    add hl, sp
    ld a, l
    dec l
    ld e, c
    reti


jr_0a9_7567:
    ld h, l
    db $e4
    ld a, c
    jp $e979


    ld d, e
    adc b
    ld [hl], e
    ld b, d
    ei
    ld d, d
    ei
    adc e
    ld [hl], e
    ld e, d

jr_0a9_7577:
    or e
    or b

jr_0a9_7579:
    res 2, c
    ld a, [$f3ae]
    sub [hl]
    db $e3
    add h
    di
    sub h
    db $e3
    add c
    or $50
    rst $20
    ret nz

    scf
    sub e
    db $e4
    daa
    db $f4
    ld d, c
    db $e4
    inc de
    pop hl
    rlca
    db $e3
    inc bc
    and $26
    call $895f
    or a
    dec de
    ld a, e
    scf
    jr nz, jr_0a9_7609

    ld l, b
    pop de
    ld hl, sp-$6d
    ld b, b
    cp a
    add hl, de
    ld l, [hl]
    ld h, b
    rst $28
    di
    call z, $de6e
    db $10
    ld e, h
    sub h
    ld e, b
    ld e, $d0
    inc e
    ret nc

    add h
    ld d, b
    inc c
    ret nz

    ld a, [hl+]

jr_0a9_75bb:
    db $dd
    jr z, jr_0a9_753f

    jr z, jr_0a9_75c1

    inc hl

jr_0a9_75c1:
    dec c
    ld bc, $9939
    jr nz, jr_0a9_75e6

    ld bc, $3f19
    rst $00
    add hl, sp
    ld bc, $393f
    ccf
    pop af
    ccf
    ld [c], a
    dec a
    dec hl
    ld d, $f8
    ld a, $7f
    ld hl, sp+$78
    ld a, e
    or $7b
    ld a, [c]
    ld a, c
    rst $20
    ld [hl], e
    rst $20
    rra
    rst $10
    ld h, a

jr_0a9_75e6:
    rst $28
    add a
    ld b, $bf
    db $10
    cp a
    dec bc
    or $6a
    sbc h
    ld a, [c]
    ld a, c
    pop hl
    ei
    ldh a, [$ef]
    db $f4
    db $eb
    sbc $e6
    adc h
    cp $d9
    ld l, [hl]
    ld e, l

Jump_0a9_75ff:
    jp z, $5b24

    ld h, c
    ld a, a
    ld d, [hl]
    ld l, l
    dec e
    rst $30
    ld c, [hl]

jr_0a9_7609:
    rst $10
    sub l
    rst $18
    db $d3
    sbc a
    ld l, a
    sbc a
    sbc a
    ld a, a
    ld a, $ff
    sbc l
    rst $38
    db $db
    cp a
    xor [hl]
    rst $38
    jp c, $beff

    rst $38
    ld a, l
    rst $38
    db $e3
    rst $38
    xor $ff
    sub [hl]
    rst $38
    or l
    rst $38
    ld a, d
    rst $38
    ld a, a
    rst $38
    ld c, a
    rst $38
    ld d, l
    rst $38
    inc h
    rst $38
    call nz, $fcff
    rst $38
    db $fd
    rst $38
    ld a, a
    rst $38
    ld c, a
    rst $38

jr_0a9_763c:
    ret


    rst $38
    adc c
    rst $38
    ld d, e
    ld a, e
    ld h, e
    ld e, e
    dec de
    db $e3
    xor e
    db $d3
    or e
    res 5, a
    db $d3
    and l
    rst $10
    and [hl]
    rst $10
    add [hl]
    rst $30
    push hl
    or $f6
    rst $30
    ld h, l
    rst $30
    inc h
    rst $30
    and h
    rst $10
    sbc b
    rst $20
    ld h, l
    xor a
    ld a, [hl+]
    rst $28
    xor d
    db $ed
    ret


    ld l, [hl]
    dec c
    xor $0b
    xor $89
    ld l, [hl]
    jr nz, jr_0a9_763c

    db $fd
    ld c, d
    dec c
    sbc $08
    sbc $10
    sbc $50
    sbc $11
    sbc $52
    db $dd
    ld b, a
    sbc c
    cp a
    db $d3
    rst $28
    sub [hl]
    ld d, $8d

jr_0a9_7684:
    add sp, -$61
    ld [hl], a
    sbc d
    cp $37
    or l
    ld l, a
    ld l, e
    db $dd
    call c, Call_0a9_4fbb
    and e
    jp nz, Jump_0a9_424b

    db $db
    jp nc, $27fb

    ld hl, sp-$3f
    jr c, jr_0a9_7684

    ld a, b
    ld a, e
    ld [hl], l
    ld b, h
    ld [hl], c
    db $76
    ld b, l
    db $e4
    ld d, a
    and $00
    dec h
    ld [bc], a
    sbc d
    ld h, a
    ld a, $a3
    add e
    ld l, $17
    xor [hl]
    adc l
    xor $4d
    adc [hl]
    xor c
    ld b, [hl]
    ld e, [hl]
    rst $28
    sbc $6f
    call z, $cc7f
    rst $38
    adc h
    db $fd
    sub h
    jp hl


    ld c, l
    cp a
    rst $08
    pop af
    ld sp, hl
    rst $00
    push hl
    rst $18
    cp h
    rst $18
    or e
    call $9e2c
    cp e
    db $fc
    inc a
    cp e
    rst $38
    dec sp
    ld [hl], $f9
    xor e
    rst $30
    sub $bf
    ld h, [hl]
    push de
    add [hl]
    db $dd
    dec d
    sbc $9a
    ld [hl], a
    add d
    ld a, a
    xor [hl]
    ld [hl], e
    ld a, d
    rst $20
    call nc, $a36f
    ld e, a
    sbc a
    rst $28
    rrca
    rst $38
    dec a
    rst $28
    ld l, l
    cp a
    dec hl
    rst $38
    cp a
    rst $28
    sub d
    rst $38
    ld [hl], b
    rst $38
    ld sp, hl
    rst $38
    rst $30
    rst $38
    rst $28
    rst $18
    sub d
    rst $38
    ldh [rIE], a
    ld a, [c]
    rst $38
    ld a, [hl]
    rst $38
    rra
    rst $38
    and l
    ld a, a
    rst $20
    rst $38
    push hl
    rst $38
    db $fc
    rst $38
    ccf
    rst $38
    ld c, a
    rst $38
    push bc
    rst $38
    ret


    rst $38
    ld sp, hl
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $08
    cp $b2
    cp $f6
    db $fc
    call c, $fcfc
    ld hl, sp-$08
    ld hl, sp-$50
    ld hl, sp-$70
    ldh a, [$80]
    ldh a, [$a0]
    ldh [$c1], a
    ldh [$c1], a
    ret nz

    add c
    pop bc
    dec a
    db $dd
    ld l, l
    sbc l
    push af
    sbc l
    di
    sbc l
    sub [hl]
    cp c
    sbc h
    cp e
    and h
    cp e
    and e
    cp e
    inc sp
    cp e
    ld a, d
    cp e
    and $3b
    rst $20
    dec sp
    rst $38
    inc hl
    ld [hl+], a
    ld [hl], a
    jr z, jr_0a9_77d5

    ld b, [hl]
    ld [hl], a
    ld b, $77
    call z, $cc77
    ld [hl], a
    call z, $f977
    ld b, a
    ld e, e
    rst $20
    ld [hl], $ef
    dec h
    rst $18
    ld c, c
    rst $38
    sbc e
    rst $38
    ld [hl], $fd
    xor h
    ld a, a
    ld e, l
    di
    sbc e
    push af
    cp a
    db $fd
    rst $18
    ld a, l
    cp d
    call c, $dc62
    dec sp
    ld e, h
    cp h
    ld e, e
    dec [hl]
    jp c, $dba3

    ld b, d
    xor c
    ld l, d
    add c
    ld [$b3b1], a
    adc a
    add hl, sp
    add a
    ld l, [hl]
    or a
    ld h, a
    ld d, $47
    ld d, $ab
    ld d, $76
    rst $38
    ld b, $7f
    and $7f
    db $fd
    ld l, a
    ld a, [hl]
    ld l, l
    ld [bc], a
    ld a, l
    db $ed
    ld a, a
    db $eb
    push af
    jp hl


    rst $30
    db $ed
    rst $38
    rst $20
    rst $18
    or b
    rst $08
    ld e, $ff
    cp d
    ld e, l
    add hl, sp
    ld e, a
    reti


    ld a, a
    ld d, h
    ei
    ld h, e
    rst $18
    and $ff
    adc [hl]
    push hl
    add h
    rst $38
    or c
    cp $c3
    cp a
    ld [hl], l
    cp e
    db $e3
    rst $38
    adc l
    ld a, a
    ld l, l
    rst $18
    rst $10

jr_0a9_77d5:
    rst $28
    ld e, $ff
    ld l, $ff
    rst $28
    ccf
    cp e
    ld a, a
    ld c, [hl]
    rst $38
    jr c, @+$01

    cp $ff
    di
    rst $38
    rst $00
    rst $38
    db $dd
    rst $38
    cp [hl]
    rst $38
    rst $20
    rst $38
    cpl
    rst $30
    db $ec
    rst $38
    cp h
    rst $38
    ld a, a
    rst $38
    rst $08
    rst $38
    adc [hl]
    rst $38
    ld a, [$fdff]
    rst $38
    rst $18
    rst $38
    ld c, a
    rst $38
    sub l
    rst $38
    or $ff
    cp $fe
    cp h
    cp $9c
    db $fc
    ldh [$fc], a
    add sp, -$08
    ld hl, sp-$08
    ldh a, [$f0]
    ld h, b
    ldh a, [$e0]
    ldh [rSTAT], a
    ldh [$e1], a
    ret nz

    jp $c1c0


    add d
    nop
    add e
    add [hl]
    inc bc
    dec c
    ld [bc], a
    ld c, $09
    dec b
    dec bc
    ld e, $0d
    inc e
    dec c
    rla
    add hl, hl
    dec d
    cpl
    ld b, a
    inc a
    ld a, l
    ld [hl], d
    xor a
    db $76
    rst $28
    sub [hl]
    ld a, e
    or h
    sbc a
    di
    or e
    rst $08
    sbc $db
    ccf
    db $db
    ld a, a
    sbc e
    rst $28
    sbc e
    rst $00
    cp e

jr_0a9_784a:
    cpl
    di
    ld hl, sp-$49
    ld a, b
    or a
    ld [hl], a
    cp a
    rst $30
    ccf
    rst $38
    scf
    rst $18
    scf
    sub a
    ld a, a
    xor a
    ld a, a
    rst $08
    ld a, a
    ld e, a
    ld a, a
    cp a
    ld a, l
    ld a, l
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    reti


    rst $38
    ld l, d
    rst $18
    call $3bfa
    call c, $dff8
    rst $38
    db $db
    ld [c], a
    rst $18
    add sp, -$39
    dec l
    jp nz, $fea1

    ld d, d
    cp a
    rst $38
    or a
    dec d
    cp a
    db $ed
    rla
    ld h, l
    sbc a
    add l
    rst $38
    ld a, l
    rst $38
    rst $28
    ld a, a
    db $fc
    ld l, a
    ld l, a
    ld a, a
    jp hl


    ld a, a
    ld h, l
    ei
    ld a, c
    rst $38
    jp $daff


    rst $38
    rst $28
    rst $18
    xor [hl]
    rst $18
    and b
    rst $18
    rst $38
    ld a, a
    or c
    ld a, a
    or l
    rst $38
    inc [hl]
    rst $38
    and h
    rst $38
    rst $38
    rst $38
    xor b
    rst $18
    adc e
    rst $38
    ld h, d
    rst $38
    xor c
    ld [hl], a
    ld a, h
    rst $38
    ld b, c
    db $fc
    ld e, a
    ld hl, sp-$2b
    ld hl, sp+$0e
    ldh a, [$65]
    ldh a, [$7a]
    ldh [$78], a
    ret nz

    add sp, -$40
    ret nc

    add b
    jr nz, jr_0a9_784a

    and b
    ret nz

    db $e4
    ld hl, sp-$43
    cp $3f
    rst $38
    rst $10
    rst $38
    rst $30
    rst $38
    ld e, a
    rst $38
    rra
    rst $38
    ld h, e
    rst $38
    ei
    rst $38
    cp a
    rst $38
    rst $18
    cp a
    pop hl
    rst $38
    or $ff
    db $fd
    cp $3d
    cp $57
    db $fc
    rst $10
    ld hl, sp-$01
    ld hl, sp+$70
    ld hl, sp-$20
    ldh a, [$b0]
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    pop bc
    jp nz, $8683

    add c
    rlca
    add [hl]
    rrca
    ld b, $0c
    dec bc
    rlca
    dec bc
    ld [$0f1f], sp
    add hl, de
    ld sp, $1f2f
    inc l
    inc hl
    ld a, l
    ld l, $77
    ld l, a
    sub [hl]
    ld d, c
    cp [hl]
    jp z, $ebf7

    sbc $7e
    sbc c
    ld b, [hl]
    ei
    cp b
    ld c, a
    call $f63c
    ld l, c
    or $6d
    ld b, d
    cp h
    rst $38
    jr nc, @-$1d

    or [hl]
    jp hl


    sub [hl]
    ld l, a
    or b
    ret z

    di
    db $fd
    jp $9ac5


    and [hl]
    ld e, c
    cp h
    jp $cd22


    rst $30
    inc c
    rst $28
    ld a, a
    rst $28
    ld a, a
    rst $18
    ld l, a
    rst $08
    ld a, a
    rst $38
    ld a, a
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    or $ff
    rst $30
    rst $38
    or l
    rst $38
    or c
    rst $38
    or c
    rst $38
    pop af
    cp a
    xor l
    rst $38
    adc a
    rst $38
    cp e
    rst $08
    and e
    rst $18
    ld b, d
    rst $38
    ld a, [$de7f]
    ld a, a
    sbc a
    ld a, a
    sub a
    ld a, a
    ld d, l
    rst $38
    push de
    rst $38
    push af
    rst $38
    cp l
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $28
    rst $38
    xor $ff
    cp d
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld [hl], e
    rst $38
    or $ff

Jump_0a9_798e:
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sub d
    rst $38
    cp $ff
    dec a
    cp $af
    db $fc
    ld e, e
    db $fc
    sbc a
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [$f8]
    ldh [$f0], a
    ldh [$e0], a
    ret nz

    ret nz

    add b
    add b
    add b
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

    ldh [$60], a
    ld a, b
    jr jr_0a9_79d9

    inc c
    ld c, $02
    inc bc
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
    add b
    nop
    sub b
    ldh [$fa], a
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0a9_79d9:
    rst $38
    rst $38
    rst $38
    rst $38
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
    ccf
    ei
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    push af
    nop
    ld a, [de]
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
    and b
    adc h
    ldh a, [$d3]
    cp h
    ld d, l
    ld a, [$cafd]
    sbc [hl]
    ld a, c
    push af
    ld l, e
    ld d, d
    db $ed
    ld d, d
    xor l
    ld l, [hl]
    or c
    ei
    add [hl]
    ld l, e
    sub h
    inc l
    db $d3
    cp l
    jp $9867


    or l
    ld c, e
    add e
    ld l, l
    rst $38
    inc c
    pop bc
    dec a
    ldh [$37], a
    ld a, a
    add [hl]
    xor d
    inc [hl]
    inc c
    di
    ld a, a
    jp $9a5d


    xor a
    ld e, c
    sbc l
    db $e3
    cp d
    ld c, l
    db $dd
    inc l
    ld a, [hl]
    ld h, c
    ccf

jr_0a9_7a39:
    and $fe
    add [hl]
    xor e
    inc [hl]
    ld l, a
    or b
    ld sp, hl
    pop af
    ld hl, sp-$0f
    ld hl, sp-$0f
    jr c, jr_0a9_7a39

    or b
    ld a, c
    cp c
    ld a, b
    cp b
    ld a, c
    cp c
    ld a, b
    cp c
    ld a, b
    cp c
    ld a, b
    cp l
    ld a, b
    dec a
    ld hl, sp+$3d
    ld hl, sp-$42
    ld hl, sp+$3a
    db $fc
    ld a, [de]
    db $fc
    cp d
    db $fc
    cp [hl]
    db $fc
    cp [hl]
    db $fc
    cp [hl]
    db $fc
    sbc a
    db $fc
    sbc a
    db $fc
    rst $18
    db $fc
    db $dd
    cp $dd
    cp $dd
    cp $df
    db $fc
    cp $fd
    db $fc
    rst $38
    cp h
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    db $e3
    db $fc
    jp nz, $c1fd

    cp $e1
    cp $e1
    cp $f5
    ld a, [$f9f6]
    ldh a, [rIE]
    pop af
    cp $f0
    rst $38
    jr @+$01

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
    add b
    ld a, a
    ld h, b
    ld a, [de]
    db $10
    dec b
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    dec c
    dec c
    ld a, [bc]
    ld a, [bc]
    ld [de], a
    ld [de], a
    inc b
    inc b
    ld [$1808], sp
    db $10
    or c
    and b
    and c
    ld b, c

jr_0a9_7ac4:
    inc bc
    ld bc, $0303
    rlca
    inc bc
    rlca
    rlca
    rrca
    rlca
    rlca
    rrca
    rra
    rrca
    rrca
    rra
    ld a, a
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    cp $ff
    cp $ff
    db $fc
    ei
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp+$7d
    ld hl, sp-$22
    jr c, jr_0a9_7b49

    nop
    ld c, d
    rst $38
    and d
    rst $38
    add hl, bc
    or $40
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_0a9_7aff:
    rst $38
    add b
    nop
    jr nz, jr_0a9_7ac4

    add b
    ld a, b
    ldh a, [$6f]
    ld e, a
    xor h
    ld [$7d35], a
    and [hl]
    db $ec
    sub [hl]
    rst $00
    jr c, jr_0a9_7aff

    db $d3
    dec l
    jp c, Jump_0a9_798e

    rst $38
    ld h, c
    sub d
    ld l, l
    dec hl
    or h
    push hl
    ld [hl-], a
    ld d, a
    and [hl]
    ld l, c
    sub [hl]
    and e
    ld e, c
    rst $38
    jp $cf38


    ld a, h
    dec c
    sub a
    ld l, c
    adc h
    ld h, a
    ld l, $96
    cp e
    inc [hl]
    ld a, [hl]
    or e
    ld a, e
    add a
    ld a, l
    sbc d
    cp a
    ld e, c
    db $dd
    db $e3
    ld a, a
    call $6d9b
    inc de
    db $ed
    ld b, d
    cp l
    ld c, c
    or [hl]
    ld e, e

jr_0a9_7b49:
    or [hl]
    dec bc
    or $01
    cp $e8
    rst $18
    ld c, c
    rst $38
    ld bc, $20ff
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    call nz, $92ff
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    ld e, c
    rst $38
    call z, Call_0a9_6eff
    rst $38
    db $ec
    rst $38
    ld a, d
    rst $38
    ld a, e
    rst $38
    ld [hl], e
    rst $38
    ld a, l
    rst $38
    ld l, a
    rst $38
    ld h, a
    rra
    dec de
    ldh [$79], a
    cp $01
    rst $38
    ld de, $60ee
    sbc a
    inc bc
    db $fc
    rst $10
    jr z, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld a, b
    add a
    ldh a, [rIF]
    and b
    ld e, a
    ld b, b
    cp a
    nop
    rst $38
    ret nz

    ccf
    ld hl, sp+$07
    rst $38
    ld bc, $01ff
    db $fd
    inc bc
    rst $38
    inc bc
    ei
    rlca
    ld a, a
    rlca
    cp a
    rlca
    ld c, a
    rrca
    sbc a
    rrca
    rra
    rrca
    sbc a
    sbc a
    cp a
    sbc a
    cp a
    ccf
    ccf
    ccf
    ld a, a
    ccf
    ld a, a
    ld a, a
    rst $38
    ld a, a

jr_0a9_7bbe:
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ret nc

    rst $28
    ld [c], a
    db $dd
    jp c, $efa5

    sub b
    ld a, l
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    cp e
    nop
    xor d
    nop
    sub l
    rst $38
    ld d, d
    cp a
    add hl, bc
    or $01
    rst $38
    ld bc, $00ff
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
    ldh [rNR41], a
    ld l, b
    sub h
    ei
    inc [hl]
    ld a, [hl]
    db $d3
    cp $cb
    db $eb
    inc e
    or $69
    ld h, [hl]
    db $ed
    rst $20
    sbc h
    rst $38
    jr nc, jr_0a9_7bbe

    or $c5
    jp c, Jump_000_18ff

    ld c, d
    pop af
    jp nz, $f36d

    inc c
    xor h
    ld [hl], c
    push hl
    or d
    ld sp, hl
    add [hl]
    ld l, [hl]
    sub b
    pop hl
    ld e, e
    db $fd
    jp $c916


    ld [hl], c
    inc c
    sbc a
    ld h, c
    sbc c
    ld h, [hl]
    ld a, [hl]
    add [hl]
    adc d
    inc [hl]
    ldh [rP1], a
    di
    inc l
    ld e, d
    and l
    ld a, [hl+]
    push de
    dec h
    jp c, $db24

    inc h
    db $db
    call nz, $723b
    xor l
    ld l, a
    or h
    ld c, l
    or [hl]
    ld bc, $40fe
    rst $38
    ld c, e
    db $fd
    dec bc
    db $fd
    nop
    rst $38
    ld [hl+], a
    rst $38
    ld [hl-], a
    rst $38
    sub d
    rst $38
    ld b, b
    rst $38
    push hl
    cp $65
    cp $a6
    rst $38
    ld a, [c]
    rst $38
    cp e
    rst $38
    ei
    rst $38
    cp $ff
    ld a, a
    rst $38
    or e
    rrca
    reti


    ldh [$fc], a
    rst $38
    ld a, [hl]
    rst $38
    cp [hl]
    ld a, a
    ld h, b
    cp a
    ld h, c
    cp [hl]
    add [hl]
    ld a, c
    adc [hl]
    ld [hl], c
    add l
    ld a, d
    dec hl
    call nc, $d4eb
    rst $18
    ldh [$cf], a
    ldh a, [$ce]
    pop af
    rst $00
    ld hl, sp-$3e
    db $fd
    jp nz, $e2fd

    db $fd
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld a, [$f0ff]
    rst $38
    ldh a, [rIE]
    pop af
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
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
    cp a
    rst $38
    ld b, a
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

jr_0a9_7cd0:
    nop
    rst $38
    add b
    ld a, a
    ld l, b
    sub a
    add sp, $17
    push af
    ld a, [bc]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    xor a
    rst $38
    xor e
    rst $38
    xor d
    rst $38
    dec h
    rst $18
    dec b
    ei
    db $10
    rst $28
    ld b, c
    cp [hl]
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
    add b
    nop
    jr nc, jr_0a9_7cd0

    ld l, [hl]
    ld a, b
    sbc e
    ld h, l
    rst $30
    inc c
    sbc e
    inc [hl]
    rst $18
    ld [hl-], a
    ld [hl-], a
    rst $08
    db $fd
    ld a, [de]
    ld c, [hl]
    ld a, c
    db $eb
    ld h, l
    cp a
    ld c, h
    db $db
    inc [hl]
    ld e, l
    or d
    cp d
    rst $00
    rst $18
    sbc d
    xor [hl]
    ld e, c
    dec e
    db $e3
    rst $08
    ld l, l
    push af
    ld c, $ef
    jr nc, jr_0a9_7da8

    or [hl]
    ld hl, sp-$79
    db $fd
    sbc d
    cp [hl]
    ld e, c
    adc $f1
    nop
    nop
    nop
    nop
    ld a, h
    and b
    ld e, e
    and l
    ld e, d
    and l
    and a
    ld e, b
    db $fd
    ld c, d
    db $dd
    ld l, e
    rla
    jp hl


    ld b, d
    cp l
    cp l
    jp nc, $de33

    ld h, $db
    nop
    rst $38
    ld l, b
    or a
    ld c, l
    or [hl]
    inc bc
    cp $40
    rst $38
    ld b, d
    db $fd
    inc [hl]
    rst $28
    ld b, h
    rst $38
    ret nz

    rst $38
    ret


    rst $38
    ld c, c
    rst $38
    nop
    rst $38
    sub c
    rst $38
    add c
    rst $38
    pop bc
    rst $38
    db $f4
    rst $38
    cp [hl]
    ld a, a
    sbc e
    rlca
    add sp, -$10
    ld b, $ff
    dec d
    db $eb
    ld a, [$c605]
    add hl, sp
    rst $00

jr_0a9_7d89:
    jr c, jr_0a9_7d89

    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    ei
    rlca
    db $e3
    rra
    add e
    ld a, a
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

jr_0a9_7da8:
    cp a
    rst $38
    ld a, $ff
    ld a, $fe
    ld a, $fe
    ld a, h
    cp $fd
    cp $fd
    cp $ff
    db $fc
    rst $38
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
    rlca
    rst $38
    dec bc
    rst $38
    nop
    rst $38
    nop
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
    and b
    ld e, a
    or h
    ld c, e
    ld [$fe15], a
    ld bc, $02fd
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld d, [hl]
    nop
    xor h
    nop
    inc d
    nop
    stop
    adc c
    ld a, a
    ld hl, $03df
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    add b
    nop
    ldh a, [rNR41]
    cp $c0
    and l
    jp c, Jump_0a9_59a7

    db $dd
    ld h, e
    ld h, $cd
    cpl
    sub h
    call $ba32
    rst $00
    ld d, $cb
    db $eb
    inc e
    sub [hl]
    ld l, c
    sbc [hl]
    ld h, l
    ld a, h
    add [hl]
    cp a
    inc [hl]
    dec d
    ld a, [$c37c]
    ld c, l
    sbc d
    ld e, c
    inc l
    rla
    ld l, b
    cp d
    ld h, h
    ld l, b
    sub [hl]
    ld bc, $0000
    nop
    nop
    nop
    ldh [rP1], a
    rst $38
    jr z, jr_0a9_7ea6

    and l
    xor [hl]
    ld d, c
    push af
    ld c, d
    sbc l
    ld l, d
    sbc [hl]
    ld l, c
    ld [de], a
    db $ed
    inc h
    db $db
    push hl
    ld e, d
    call c, Call_000_046b
    ei
    and b
    rst $18
    ld [hl], a
    jp c, $db6e

    nop
    rst $38
    sub b
    rst $38
    sub d
    rst $38
    ld [de], a
    rst $38
    nop
    rst $38
    or b
    rst $38
    sub d
    rst $38
    dec bc
    rst $38
    dec h
    rst $38
    ld [hl], $ff
    sub d
    rst $38
    cp e
    rst $38
    ld [hl], l
    rst $38
    or [hl]
    ld a, a
    call $e403
    ld hl, sp-$04

jr_0a9_7e85:
    rst $38
    ld a, h
    rst $38
    db $fc
    ld a, a
    cp [hl]
    ld a, a
    cp [hl]
    ld a, a
    cp $7f
    cp $7f
    ld a, [hl]
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $f4
    rst $08
    rst $20
    ld hl, sp-$12
    rst $38
    ret nc

    rst $38
    call nz, $80ff
    rst $38

jr_0a9_7ea6:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    ccf
    inc b
    inc bc
    nop
    nop
    ld d, c
    nop
    push af
    nop
    cp $01
    cp $01
    cp $01
    ld a, h
    add e
    ld [$80f7], sp
    rst $38
    cp $fc
    db $fc
    db $fc
    ld hl, sp-$04
    db $fc
    ld hl, sp-$4a
    ld hl, sp+$57
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$14
    ei
    ld c, $f3
    dec bc
    or $2d
    or $57
    xor h
    cp e
    ld c, l
    ld l, a
    sbc c
    ld h, h
    sbc e
    adc $33
    db $dd
    ld [hl+], a
    db $db
    inc h
    and e
    ld c, h
    sub a
    ld c, b
    ld d, [hl]
    adc c
    jr z, jr_0a9_7e85

    and l
    ld [de], a
    dec [hl]
    ld [bc], a
    ld b, b
    ld h, $6a
    inc b
    pop hl
    inc c
    push de
    ld [$01d8], sp
    xor d
    ld de, $0033
    jr nc, jr_0a9_7f08

    ld h, [hl]
    nop

jr_0a9_7f08:
    ld h, b
    inc b
    call z, $cc00
    nop
    add hl, de
    nop
    ld [$0201], sp
    ld bc, $0000
    nop
    nop
    ret nz

    nop
    ld b, b
    ret nz

    ldh [$80], a
    ldh [rP1], a
    add b
    ret nz

    nop
    ret nz

    pop bc
    nop
    ld b, b
    nop
    add b
    nop
    nop
    add b
    nop
    add b
    add d
    nop
    add h
    ei

jr_0a9_7f32:
    ld bc, $07ff
    rst $38
    inc bc
    rst $38
    ld bc, $09ff
    rst $38
    ld bc, $01ff
    rst $38
    xor l
    ld d, d
    dec b
    ld [bc], a
    nop
    nop
    nop
    nop

jr_0a9_7f48:
    nop
    nop
    xor $50
    ld a, [c]
    ld a, [bc]
    or $08
    xor b
    ld d, h
    db $e4
    ld e, b
    cp h
    ld c, b
    sbc b
    ld l, b
    jr nz, jr_0a9_7f32

    ldh [$58], a
    ret c

    ld l, b
    jr jr_0a9_7f48

    add hl, bc
    ldh a, [$60]
    pop de

jr_0a9_7f64:
    pop bc
    ld [hl], c
    ld de, $13e1
    pop hl
    ld d, c
    db $e3
    ld h, d
    db $e3
    inc bc
    db $e3
    ld h, a
    jp $c763


    rlca
    rst $00
    rst $08
    rst $00
    ld c, a
    rst $00
    rrca
    rst $08
    rst $08
    adc a
    rst $18
    adc a
    ld e, a
    adc a
    scf
    rra
    push bc
    inc bc
    or $18
    sbc $3f
    db $fc
    ccf
    db $fc
    ccf
    ld hl, sp+$1f
    reti


    ld e, $c8
    ld e, a
    ld h, b
    rst $18
    ld c, b
    rst $30
    pop bc
    ldh a, [$d0]
    ldh [$60], a
    ldh [$60], a
    add b
    ldh [$c0], a
    jr nz, jr_0a9_7f64

    ld b, b
    ret nz

    nop
    ret nz

    ld b, b
    add b
    ld b, b
    add b
    nop
    add b
    add b
    nop
    ret nz

    nop
    inc e
    ldh [rSB], a
    cp $00
    rst $38
    nop
    rst $38
    ld d, b
    xor a
    ld a, [bc]
    push af
    ld c, $f1
    dec b
    ld a, [$1ee1]
    rrca
    nop
    nop
    nop
    nop
    nop
    and c
    nop
    db $eb
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    cp [hl]
    ld b, a
    add a
    ld a, [hl]
    rst $18
    ld l, [hl]
    ld l, d
    sbc $fc
    sbc [hl]
    call nc, $f3be
    inc a
    di
    inc l
    sub b
    ld l, l
    pop af
    ld c, l
    ld sp, $e1cd
    sbc l
    ld h, a
    sbc c
    ld h, l
    sbc e
    sbc c
    dec hl
    ld c, e
    dec sp
    dec bc
    ld a, e
    or e
    ld e, c
    ld [hl+], a
    pop de
    ld [hl], b
    add c
    ld [hl-], a
    add c
    or l
    inc bc
