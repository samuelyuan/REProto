SECTION "ROM Bank $085", ROMX[$4000], BANK[$85]

    db $fc
    rst $38
    ld l, $df
    dec c
    ld a, [$9e61]
    ld hl, sp-$21
    db $fc
    ld c, a
    rst $38
    ld l, [hl]
    cp $2f
    cp $6f
    cp $6f
    cp $87
    cp $97
    cp $97
    rst $18
    and [hl]
    rst $38
    ld d, d
    rst $38
    sub e
    rst $38
    ld d, e
    ld a, e
    rst $10
    ld a, e
    sbc a
    ld a, e
    or l
    dec sp
    db $dd
    dec a
    ei
    add hl, sp
    rst $18
    adc l
    di
    sub l
    ld [$fb94], a
    sub b
    rst $28
    sbc b
    rst $20
    sbc b
    rst $20
    call c, $d8a3
    and a
    call nz, $c4ff
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [$df], a
    ldh [$5f], a
    ldh [$7f], a
    ld h, b
    rst $38
    ldh a, [$6f]
    ld l, b
    rst $30
    ld a, b
    rst $30
    ld a, b
    cp a
    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    inc e
    ei
    inc a
    rst $18
    inc a
    rst $18
    inc a
    rst $18
    inc a
    db $db
    inc e
    ei
    jr c, @-$1f

    inc a
    rrc l
    ld a, [$9a6d]
    sbc a
    ld a, b
    db $dd
    ld l, $8f
    ld [hl], h
    adc l
    ld a, [hl]
    ld e, [hl]
    add l
    rlca
    db $fc
    ld b, [hl]
    cp l
    ld b, a
    rst $38
    ld b, a
    rst $38
    ld c, a
    di
    inc bc
    cp $6f
    sub d
    inc hl
    cp $23
    rst $38
    daa
    db $eb
    inc hl
    db $dd
    inc bc
    db $fd
    rla
    pop hl
    ld sp, $11cf
    rst $38
    inc de
    db $fd
    add hl, de
    rst $30
    add hl, de
    rst $20
    ld a, [bc]
    db $fd
    dec bc
    db $fc
    inc c
    rst $30
    inc c
    di
    ld c, h
    or a
    adc l
    db $76
    add h
    rst $38
    add [hl]
    ld a, l
    add a
    add sp, -$3e
    cp a
    jp nz, $c2bd

    cp a
    jp nz, $c37d

    db $fc
    bit 6, l
    ld b, c
    rst $38
    ld h, c
    rst $18
    ld h, c
    rst $38
    ld h, c
    cp [hl]
    pop hl
    ld a, $e3
    dec a
    adc a
    ld [hl], h
    rst $38
    ld bc, $ff3f
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
    sbc a
    rst $38
    rrca
    nop
    rst $38
    nop
    cpl
    nop
    ld a, a
    nop
    ld a, a
    inc b
    rst $28
    inc b
    rst $38
    inc b
    ld a, a
    inc c
    cp a
    ccf
    adc $6f
    sub [hl]
    ld h, a
    sbc a
    ld h, a
    jp c, $db66

    inc bc
    cp $67
    sbc e
    inc hl

Jump_085_40ff:
    cp $a8
    ld e, a
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    add b
    ld a, a
    and h
    ld e, a
    inc c
    rst $30
    ld b, $fd
    ld b, $fb
    ld b, $ff
    ld b, $fb
    ld [bc], a
    rst $38
    ld [de], a
    rst $28
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc bc
    cp $03
    db $fd
    add c
    ld a, a
    add c
    rst $38
    jp $81bd


    rst $38
    sub e
    db $ed
    sub e
    db $ed
    db $db
    and l
    xor e
    rst $10
    ei
    adc h
    jp hl


    sub [hl]
    ld a, [$db4d]
    ld h, [hl]
    ld l, e
    call c, $d46b
    ld h, d
    db $dd
    ld a, b
    rst $20
    ld l, b
    rst $30
    ld l, b
    or a
    ld [hl-], a
    db $fd
    ld [hl-], a
    db $ed
    jr nc, @+$01

    ld sp, $31ee
    rst $38
    add hl, sp
    rst $30
    add hl, sp
    cp $bc
    ld l, e
    jr c, @+$01

    jr @+$01

    inc a
    db $db
    ld e, h
    cp e
    ld e, l
    cp [hl]
    ld e, h
    cp a
    sbc [hl]
    ld a, l
    cp h
    ld e, e
    call c, Call_085_6cbf
    rst $18
    ld a, $cd
    inc a
    rst $08
    cp $8d
    rst $38
    adc h
    db $fc
    xor a
    ld a, [hl]
    db $dd
    ld a, a
    sbc $7e
    xor a
    ld a, a
    xor [hl]
    cp $2f
    cp $2f
    rst $38
    ld [hl], $ff
    db $76
    ld a, a
    sub [hl]
    ld a, a
    or e
    rst $38
    rla
    rst $18
    or e
    rst $18
    xor e
    rst $08
    or e
    cp a
    ld b, a
    rst $38
    adc a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    sbc a
    rst $18
    rst $38
    cp l
    rst $38
    db $fd
    rst $38
    pop af
    rst $38
    db $f4
    rst $38
    push af
    rst $38
    push af
    rst $38
    db $ed
    rst $38
    rst $38
    ld l, l
    ld a, a
    db $fd
    ld a, a
    db $fd
    ld a, a
    rst $38
    ld a, a
    jp hl


    ld a, a
    xor a
    db $fc
    ld a, a
    ei
    xor l
    rst $20
    ld a, d
    rst $18
    add sp, $3f
    ret nc

    rst $38
    nop
    rst $38
    sub b
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
    ld [bc], a
    rst $38
    ld [$01ff], sp
    rst $38
    inc bc
    rst $38
    dec c
    rst $38
    dec c
    rst $38
    rst $18
    inc l
    xor a
    ld e, h
    cp a
    push hl
    xor a
    rst $30
    xor a
    rst $10
    rst $08

jr_085_41eb:
    or a
    rst $00
    ld a, a
    ld b, a
    cp d
    ld h, a
    sbc $67
    sbc d
    ld l, a
    db $d3
    ld h, e
    rst $18
    ld h, e
    rst $18
    ld h, a
    db $db
    db $eb
    scf
    inc hl
    db $fd
    ld b, b
    rst $38
    ld [hl], h
    cp e
    or b

jr_085_4205:
    ld a, a
    jr c, @+$01

    jr @+$01

    add b
    ld a, a
    jr nz, jr_085_41eb

    sub b
    ld l, a
    inc e

jr_085_4211:
    db $eb
    jr jr_085_4211

    jr jr_085_4205

    ld [$08ff], sp
    rst $38
    inc c
    ei
    inc c
    ld sp, hl
    nop
    cp $00
    cp $0c
    or $14
    rst $28
    inc e
    push hl
    inc c
    or $08
    push af
    adc b
    ld [hl], a
    sbc b
    ld h, [hl]
    jp c, $92a9

    db $ed
    and d
    db $dd
    jp nz, $e2bf

    sbc a
    jp nz, $c2ff

    rst $38
    jp $9afe


    rst $20
    sub e
    ld l, [hl]
    rla
    db $eb
    scf
    srl a
    push bc
    cp a
    ld c, c
    ccf
    push de
    ccf
    rst $18
    sbc a
    db $fd
    sbc a
    ld [hl], l
    rst $18
    dec [hl]
    ld e, l
    and e
    ld e, e
    xor h
    push de
    ld l, a
    ld e, l
    xor d
    adc $35
    cp $53
    cp $b7
    or [hl]
    ld a, a
    cp $13
    ld a, [hl]
    sub e
    or $7b
    cp $75
    rst $38
    ld [hl], d
    rst $38
    ld d, l
    rst $38
    ld e, b
    ld e, a
    db $fc
    ld a, a
    adc h
    ld a, a
    adc h
    ld a, $cb
    ld a, a
    sbc h
    cpl
    ld sp, hl
    cp a
    ld l, [hl]
    ccf
    db $e4
    dec e
    and $3d
    and $3c
    rst $18
    ld a, [hl]
    add l
    inc [hl]
    rst $08
    ccf
    db $e4
    cp a
    ld e, [hl]
    sbc a
    ld h, d
    rst $18
    ld [hl], $df
    or [hl]
    cp a
    db $d3
    rst $38
    and [hl]
    rst $38
    xor e
    rst $08
    cp a
    rst $18
    and e
    rst $18
    di
    rst $10
    db $eb
    di
    rst $18
    db $db
    rst $20
    db $db
    rst $30
    db $db
    push af
    ei
    push de
    ei
    push af
    ei
    db $ec
    rst $38
    set 7, a
    rst $00
    rst $38
    rst $18
    rst $38
    ld a, $ff
    ld a, h
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    inc b
    rst $38
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    cp $03
    cp $01
    rst $30
    ld a, [bc]
    rst $38
    ld [de], a
    rst $38
    ld a, d
    rst $38
    ld a, [$fcfb]
    db $fd
    ei
    db $fd
    ei
    db $fd
    ei
    db $fd
    ei
    db $fd
    cp d
    cp $f9
    db $fc
    rst $38
    cp $7d
    cp $bd
    cp $3d
    cp [hl]
    ld a, a
    cp $25
    rst $38
    ld d, h
    cp $7f
    ld a, a

jr_085_42f7:
    and a

jr_085_42f8:
    ld a, a
    xor a
    ccf
    sbc $bf
    ld e, a
    rst $38
    rra
    nop
    add $00
    ld l, l
    ld [bc], a
    ld c, a
    ld [bc], a
    ld a, l
    ld [bc], a
    ccf
    ld [bc], a
    ld a, a
    ld [bc], a
    ld a, l
    ld b, d
    dec a
    ld b, b
    ccf
    ld bc, $207e
    ld e, a
    ld hl, $215e
    ld a, [hl]
    ld hl, $217f
    ld l, a
    ld hl, $217f
    ld e, l
    ld hl, $20dc
    rst $38
    jr nc, jr_085_42f7

    jr nc, jr_085_42f8

    db $10
    ld a, l
    db $10
    xor d
    nop
    cp [hl]
    db $10
    adc b
    db $10
    jp z, Jump_085_4410

    db $10
    ld c, $00
    sbc $08
    ld d, [hl]
    nop
    xor $00
    and [hl]
    nop

jr_085_4341:
    db $e4
    nop
    db $ec
    ld [$08a4], sp
    or h
    ld [$08b6], sp
    db $f4
    ld [$08f5], sp
    push de
    ld [$00f3], sp
    db $fd
    nop
    ld sp, hl
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
    nop

jr_085_4361:
    rst $38
    ld [bc], a
    db $fd
    jp nz, $823d

    db $fd
    or d
    ld c, h
    or b
    rst $28
    jr nz, @-$1f

    ld [hl], b
    xor a
    jr nc, jr_085_4341

    ld [hl], b
    rst $08
    ld d, b
    rst $28
    ld h, b
    rst $18
    ld h, b
    ei
    ld h, c
    rst $38
    ld hl, $21ff
    rst $30
    ld h, b
    cp a
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld b, b
    cp a
    nop
    rst $38
    ld d, b
    xor [hl]
    ld d, b
    cp a
    sub b
    ld a, a
    sub b
    ld a, a
    sub b
    ld a, a
    sub b
    ld a, a
    jr c, jr_085_4361

    cp b
    ld c, a
    xor b
    ld e, a
    ld e, b
    and a
    call z, $9d7b
    ld l, d
    sbc l
    ld l, d
    sbc l
    ld l, e
    sbc a
    ld h, c
    cp a
    ld d, [hl]
    rst $38
    adc h
    rst $38
    cp b
    rst $38
    ld [hl], b
    rst $38
    ldh [rIE], a
    ret nc

    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    cp $1b
    cp $b3
    cp $73
    ld a, d
    rst $30
    ld a, [c]
    ld a, a
    rst $38
    ld h, b
    ld a, a
    push af
    rst $38
    dec l
    ld a, a
    and c
    rst $38
    add hl, sp
    ld a, a
    cp e
    ccf
    rst $38
    ld a, a
    cp a
    ccf
    rst $38
    ccf
    db $fd
    cp a
    ld a, a
    cp a
    ld e, a
    rra
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    cp a
    rst $08
    rst $18
    xor a
    rst $18
    xor a
    cp a
    rst $08
    rst $18
    xor a
    rst $18
    ccf
    ld e, a
    cp $5e
    xor $ed
    ld d, h
    nop
    cpl
    ld [bc], a
    dec l
    nop
    and a
    ld [bc], a
    xor l
    ld [bc], a
    add l
    nop
    or a
    nop
    sub a
    nop
    inc de

Jump_085_4410:
    ld [hl-], a
    rst $18
    db $e3
    sbc a
    and d
    rst $18
    xor h
    rst $18
    cp l
    rst $08
    pop hl
    rst $18
    cp h
    jp $92f1


    rst $18
    cp c
    ld a, d
    sbc l
    rst $38
    ld e, $51
    cp a
    ld [hl], c
    sbc a
    cp c
    ld e, a
    ld e, b
    rst $18
    ld c, b
    rst $18
    ld hl, sp-$31
    ret c

    rst $28
    xor b

jr_085_4435:
    rst $28
    xor b
    rst $28
    and h
    rst $28
    ld [hl], $ef
    ld [c], a
    ld [hl], a
    ld h, $f3
    db $e4
    di
    and $f1
    ld h, d

jr_085_4445:
    db $fd
    ld l, l
    or $f7
    db $f4
    db $fc
    rst $30
    db $fd
    rst $30
    ld a, [hl]
    rst $30
    add c
    db $76
    add c
    db $76
    or c
    ld b, [hl]
    adc l
    ld h, d
    sbc c
    ld h, [hl]
    sbc c
    ld h, [hl]
    jr z, jr_085_4435

    ld l, c
    sub [hl]
    ld [hl+], a
    sub a
    ld [hl+], a
    ld d, $02
    dec [hl]
    ld [bc], a
    dec [hl]
    ld [bc], a
    push hl
    ld [hl+], a
    xor l
    jr nz, jr_085_4445

    ld [hl+], a
    push de
    ld bc, $41fa
    cp [hl]
    dec b
    ld sp, hl
    dec b
    add sp, $44
    adc e
    inc b
    db $db
    ld [bc], a
    cp h
    ld [de], a

Call_085_447f:
    xor c
    add hl, de
    rst $28
    sbc c
    ld l, a
    adc a
    ld [hl], h
    dec bc
    db $fd
    dec hl
    db $ec
    dec l
    jp c, $fb0c

    dec c
    ld a, [c]
    ld c, $f5
    sbc [hl]
    jp hl


    sbc [hl]
    ld h, l
    adc [hl]
    ld [hl], c
    add h
    ld a, a
    adc a
    ld [hl], h
    ld e, a
    and [hl]
    adc $3c
    nop
    cp $40
    cp $80
    cp $c0
    rst $38
    nop
    cp $00
    db $fc
    nop
    db $fd
    nop
    ei
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    di
    ld c, $fb
    ld b, $fa
    daa
    ei
    inc h
    ld [hl], e
    xor [hl]
    cp e
    ld h, [hl]
    dec sp
    add $3b
    call $b759
    pop de
    ld l, [hl]
    ld e, c
    or a
    dec a
    db $d3
    ld e, c
    or a
    ld e, l
    or e
    ld e, l
    or e
    ld e, l
    or a
    ld e, l
    cp d
    dec e
    rst $38
    sbc l
    ld a, a
    dec a
    res 3, e
    ld l, l
    cp l
    adc $bc
    ld l, e
    cp l
    jp c, $88fe

    cp [hl]
    call z, $fd9c
    reti


    cp d
    db $d3
    or l
    and $cb
    push hl
    adc a
    rst $08
    db $db
    sbc a
    xor d
    ld e, a
    inc [hl]
    ld a, a
    inc a

jr_085_44fc:
    rst $38
    jr z, @+$01

    ld d, b
    inc de
    db $ec
    inc bc
    db $fc
    inc de
    db $ec

jr_085_4506:
    rla
    add sp, $03
    db $fc
    inc de
    db $ec
    inc de
    db $ec
    sub e
    ld l, h
    ld [hl], h
    rst $38
    ld h, l
    cp $64
    rst $38
    ld h, h
    rst $38
    ld b, h
    rst $38
    inc a
    jp $c53a


    add d
    dec a
    ld b, a
    cp b
    sub d
    ld a, l
    and b
    ld e, a
    rst $08
    inc d

jr_085_4528:
    dec b
    call z, $c40b
    scf
    ret nz

    jr nc, jr_085_44fc

    jr c, jr_085_4506

    sub $b5
    adc b
    di
    sub a
    ld hl, sp-$4f
    ld a, [$ffb0]
    or d
    db $fd
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    ldh a, [rIE]
    ldh a, [$fe]
    ld a, [$59ff]
    cp $68
    sbc a
    ret nc

    ld l, a
    ld h, h
    ei
    ld [bc], a
    xor c
    ld d, h
    and c
    dec b
    ld hl, sp-$7c
    ld a, c
    ld c, $f1
    ld [de], a
    push hl
    inc e
    db $e3
    add h
    ld a, e
    inc l
    db $d3
    jr c, jr_085_4528

    jr nc, @-$31

    inc h
    ret c

    inc b
    ld sp, hl
    ld b, $f8
    inc bc
    ld hl, sp+$01
    ld hl, sp+$00
    ld hl, sp+$00
    db $ec
    nop
    call z, $f400
    nop
    db $f4
    nop
    or b
    nop
    ldh [rP1], a
    ld a, b
    db $10
    jp nz, $c610

    sub b
    add [hl]
    sub b
    ld b, [hl]
    sub b
    ld b, h
    sub b
    rst $00
    sub b
    add a
    sub b
    rrca
    rst $28
    sub b
    or $89
    ld hl, sp-$7b
    ldh [$98], a
    ret nz

    cp h
    add b
    ldh [rP1], a
    add b
    nop
    inc b
    nop
    push de
    nop
    ret


    nop
    sbc e
    nop
    add a
    inc b
    ld c, a
    ld bc, $01be
    cp $42
    db $fd
    push de
    ld [$fbc4], a
    and $d9
    add $b9
    db $e4
    rra
    add [hl]
    ld a, c
    pop hl
    ld c, [hl]
    and $59
    ld h, e
    sbc [hl]
    ld h, e
    cp a
    and e
    ld e, a
    db $e3
    ccf
    ld h, e
    cp a
    ld [hl], e
    xor d
    ld [hl], e
    xor a
    ld [hl], e
    cp a
    ei
    ld h, $b2
    ld l, h
    ldh a, [$3d]
    ldh a, [$dd]
    pop af
    sbc d
    di
    push bc
    db $e3
    xor $cb
    and $cf
    sub h
    sbc a
    cp b
    ld l, $58
    ld e, [hl]
    or b
    ld a, h
    and b
    cp a
    ldh [rIE], a
    ld b, b
    rst $38
    add b
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    inc b
    rst $38
    or [hl]
    ld c, b
    ld [hl-], a
    call z, $ca34
    db $76
    adc b
    or l
    ld c, b
    or a
    ld c, b
    call nc, $ee28
    nop
    sub c
    xor $98
    rst $28
    sbc b
    rst $28
    or b
    rst $28
    add c
    xor $93
    db $ec
    sbc b
    rst $20
    sbc e
    db $e4
    dec de
    db $e4
    rra
    ld h, b
    ld c, c
    or h
    ld b, l
    or b
    add hl, de
    add h
    ld [$0834], sp
    ld [hl], b
    adc d
    ld [hl], b
    ld d, [hl]
    nop
    ld a, [hl]
    nop
    rst $38
    nop
    ld hl, $6ede
    sbc a
    ret


    ccf
    ld c, b
    cp a
    adc b
    ld a, a
    ld hl, sp+$0e
    ld hl, sp+$0c
    ld hl, sp+$0c
    ld hl, sp+$0c
    cp b
    ld c, h
    cp b
    ld c, h
    ret c

    inc l
    ret z

    inc a
    ei
    inc c
    jp c, $da2c

    inc l
    ld e, d
    xor h
    ld d, $ec
    ld d, $ec
    ld d, $ec
    sub [hl]
    ld l, h
    or l
    ld c, [hl]
    or a
    ld c, h
    sub a
    ld l, h
    sub a
    ld l, h
    push de
    ld l, $95
    ld l, [hl]
    dec b
    cp $15
    xor $55
    xor [hl]
    ld d, l
    xor [hl]
    push de
    ld l, $b5
    ld c, [hl]
    dec [hl]
    adc $35
    adc $f3
    ld c, $fb
    ld b, $06
    ld a, [hl-]
    ld b, $5a
    ld b, $5a
    ld b, $5a
    rlca
    ld a, [$7000]
    dec de
    ldh [rSB], a
    ld b, b
    ld h, e
    add b
    pop hl
    nop
    pop af
    nop
    db $d3
    nop
    rst $30
    nop
    rst $38
    ld [bc], a
    ld [hl], a
    ld a, [bc]
    daa
    ld a, [de]
    jp $8b1c


    ld [hl], a
    dec bc
    push af
    inc bc
    rst $38
    inc bc
    db $ed
    dec bc
    push hl
    inc bc
    rst $38
    inc bc
    db $fd
    inc bc
    db $ed
    inc bc
    rst $38

jr_085_46b4:
    inc bc
    db $fd
    and e
    ld e, l
    rlca
    ld sp, hl
    daa
    reti


    and a
    ld e, l
    and [hl]
    ld e, b
    and l
    ld e, h
    or c
    res 2, e
    ld l, d
    and e
    sub $87
    db $ec
    adc [hl]
    ld e, b
    adc a
    ld e, b
    ld e, $b0
    ld a, $60
    jr c, jr_085_46b4

    add sp, $40
    ldh a, [$80]
    ldh a, [$80]
    add sp, $00
    db $e3
    nop
    db $d3
    ld bc, $c73a
    di
    ld c, $d4
    cpl
    ret


    ld a, $08
    rst $38
    ld de, $3bfe
    db $f4
    ld h, e
    db $fc
    ld d, a
    add sp, -$35
    db $f4
    adc a
    ldh a, [rTAC]
    ld hl, sp+$04

jr_085_46f9:
    ei
    ld a, [bc]
    push af
    dec c
    ld a, [c]
    nop
    rst $38
    ld a, [hl-]
    add l
    ld a, [hl-]
    add l
    cp a
    nop
    ld e, c
    ld b, $39
    ld b, $0e
    sub c
    ld [hl], h
    adc e
    cp [hl]
    ld bc, $0239
    ld l, d
    ld bc, $004f
    ld c, a
    nop
    sub a
    nop
    or a
    nop
    sbc l
    nop
    cp a
    nop
    jr z, jr_085_46f9

    or b
    ld c, a
    db $e4
    dec de
    ld a, $41
    ld a, [bc]
    ld d, c
    add h
    add hl, bc
    inc hl
    ld [$0863], sp
    ld b, c
    nop
    or c
    nop
    or b
    nop
    dec b
    nop
    nop
    ldh a, [$f0]
    rst $38
    rrca
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ldh a, [rIF]
    ld a, $01
    or c
    nop
    dec a
    add b
    or c
    inc c
    or l
    ld [$08b5], sp
    or l
    ld [$00bd], sp
    cp l
    nop
    cp l
    nop
    cp l
    nop
    cp l
    nop
    cp l
    nop
    cp [hl]
    nop
    sbc $00
    sbc $00
    sbc $00
    sbc $00
    sbc $00
    sbc $00
    sbc $00
    sbc $00
    sbc $00
    sbc $00
    call c, $d300
    nop
    inc e
    inc bc
    ldh a, [rIF]
    add b
    ld a, a
    ld bc, $03be
    add h
    add a
    add b
    db $f4
    ret z

    and $88
    ld h, [hl]
    adc b
    ld h, [hl]
    adc b
    ld h, [hl]
    adc b
    ld h, [hl]
    adc b
    ld [hl], e
    add h
    ld [hl], e
    add h
    ld [hl], e
    add h
    ld [hl], e
    add h
    or e
    call nz, $c4b7
    or a
    call nz, $c4b3
    or e
    call nz, $c4f2
    or c
    push bc
    ld sp, $b3c5
    rst $00
    or a
    rst $00
    xor $ce
    db $ec
    call $dbdb
    ei
    ei
    rst $30
    or $ef
    db $ec
    rst $18
    call c, $d9df
    cp a
    or b
    rst $38
    pop hl
    sbc h
    ldh [$3d], a
    jp nz, $e11e

    dec de
    db $e4
    sub e
    ld l, h
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$1ae5], sp
    rst $08
    jr nc, jr_085_482c

    xor b
    rla
    add sp, $0f
    ldh a, [$9f]
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    cp $01
    cp $01
    db $fc
    inc bc
    cp $03
    ld de, $f4ee
    rrca
    ldh a, [rIF]
    ld hl, sp+$0f
    ldh [$1f], a
    ret nz

    ccf
    or b
    ld e, a
    nop
    rst $38
    ld h, e
    cp h
    ld bc, $07fe
    ld hl, sp+$03

Call_085_47ff:
    db $fc
    nop
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    pop af
    ldh a, [$f8]
    ld hl, sp-$04
    db $fd
    cp $fe
    rst $38
    ld a, a
    add c
    ld a, a
    add b
    ld e, $a1
    inc bc
    inc a
    rrca
    or b
    rlca
    xor b
    rlca
    jr c, @+$03

    ld l, $d0
    cpl
    ldh a, [rIF]
    ret nc

    cpl
    ret nc

    cpl
    ret nc

    cpl
    sub b
    cpl

jr_085_482c:
    sub b
    cpl
    db $10
    cpl
    jr jr_085_4859

    jr @+$29

    sbc b
    daa
    jr c, jr_085_483f

    ld a, b
    rlca
    or b
    ld c, a
    ldh a, [rIF]
    ld [hl], b

jr_085_483f:
    adc a
    add c
    ld c, $80
    rrca
    add b
    rrca
    add b
    rrca
    add b
    rrca
    add b
    rrca
    add b
    rrca
    add b
    rrca
    nop
    sbc a
    add c
    ld e, $01
    sbc [hl]
    ld bc, $019e

jr_085_4859:
    sbc [hl]
    ld bc, $019e
    sbc $00
    rst $18
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
    ret nz

    ld a, a
    ret nc

    ld a, a
    ld b, c
    ld a, [hl]
    ld b, h

Call_085_4873:
    ld a, e
    ld a, e
    ld b, h
    ld h, a
    ld e, b
    rst $08
    ld [hl], b
    add $79
    push bc
    ld a, e
    ld b, [hl]
    ld a, a
    ret c

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    call nz, $c47f
    ld a, a
    ret nc

    ld a, a
    call nc, $c57f
    ld a, a
    ret z

    ld a, a
    call nc, $c47f
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    pop bc
    ld a, a
    jp nz, $c47f

    ld a, a
    ld e, a
    ld e, a
    rst $18
    call c, $d0df
    cp a
    or b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    cp $c0
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
    rst $18
    jr nz, jr_085_48ff

    pop bc
    sbc a
    pop hl
    add b
    rst $38
    nop
    rst $38
    inc bc
    cp $00
    rst $38
    dec b
    cp $01
    cp $09
    cp $12
    rst $38
    jr nc, @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
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
    add b
    rst $38
    pop de
    rst $38
    rst $00
    rst $38
    jp $38ff


    rst $00
    ld [hl], e
    adc [hl]
    pop af
    ld c, $f5
    ld c, $f3
    inc c
    db $e3
    inc e
    ld l, a
    sbc b
    rst $20

jr_085_48ff:
    jr jr_085_4901

jr_085_4901:
    db $10
    ld [$0010], sp
    ld [$008c], sp
    ld c, a
    add b
    inc a
    ld b, e
    inc d
    db $eb
    ld [$67f7], sp
    sbc b
    sub a
    add sp, -$3b
    ld a, [$fb64]
    ldh a, [rIE]
    ret c

    rst $38
    xor $ff
    ld e, a
    rst $38
    rst $38
    dec hl
    ei
    dec [hl]
    ld sp, hl
    cpl
    ei
    inc a
    db $fd
    dec sp
    ld a, [$baad]
    db $dd
    ld [$a095], a
    ld e, a
    sbc [hl]
    ld h, c
    ret


    ld [hl], $c5
    ld a, a
    ld b, l
    cp a
    ld e, l
    rst $28
    ld c, l
    rst $38
    ld e, l
    rst $28
    ld a, a
    sub l
    rst $38
    dec c
    rst $08
    ld [hl], $ff
    sub [hl]
    rst $38
    or [hl]
    rst $38
    ld l, $af
    cp $ef
    sub [hl]
    rst $38
    rla
    rst $30
    adc [hl]
    rst $30
    sbc a
    db $fd
    or [hl]
    push af
    sbc e
    db $fd
    sub a
    db $fd
    ld [hl], a
    ld a, l
    cp [hl]
    ld a, a
    sub l
    ld e, a
    cp e
    ccf
    sub $3f
    rst $10
    ccf
    rst $18
    ccf
    rst $38
    rst $38
    ccf
    cp a
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    dec d
    rst $30
    dec e
    rst $18
    inc hl
    ld a, a
    adc a
    rst $38
    dec c
    rst $38
    ld e, a
    ld a, a
    rst $18
    rst $38
    ld a, [hl]
    ld a, a
    db $dd
    rst $38
    dec sp
    rst $38
    ld a, e
    rst $30
    dec b
    ld l, a
    adc l
    sbc a
    ld d, e
    ccf
    and d
    ld a, a
    jr nz, jr_085_49db

    ret nz

    push hl
    add b

jr_085_499a:
    ld [$0000], sp
    nop
    nop
    nop
    inc c
    di
    ld a, [de]
    push hl
    cp h
    ld b, e
    ld a, a
    add b
    adc a
    nop
    add hl, sp
    nop
    ld hl, sp+$00
    ld a, b
    nop
    ldh a, [rP1]
    ld h, b
    db $10
    ldh [rP1], a
    ret nz

    jr nz, jr_085_499a

    nop
    sub a
    ld b, b
    ld a, a
    add b
    rst $38
    add b
    ld a, [hl]
    add c
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    db $ec
    inc de
    xor b
    ld d, a
    and b
    ld e, a
    ld [$00ff], sp
    rst $38
    ld c, b
    rst $38
    ld [$08ff], sp
    rst $38
    ld c, c

jr_085_49db:
    cp $08
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld b, b
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [bc], a
    ret


    ld [bc], a
    inc hl
    nop
    sbc [hl]
    ld hl, $13cc
    db $ec
    inc de
    or $09
    adc b
    ld [hl], a
    rst $38
    nop
    db $fd
    ld [bc], a
    add b
    ld a, a
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    adc b
    rst $38
    sub $ff
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $10
    jp nz, $c2bd

    db $fd
    jp nz, $c0bd

    rst $38
    pop hl
    ld e, [hl]
    ldh a, [$8f]
    ret nc

    rst $28
    ret nc

    xor a
    call nc, $d8bb
    and a
    ld hl, sp-$61
    ld hl, sp-$29
    db $fc

Jump_085_4a3f:
    sbc a
    call c, $d8bf
    or a
    call c, $ccef
    or a
    call c, $e7a7
    sbc d
    adc $b7
    push bc
    ld a, [$a9d6]
    ret z

    rst $30
    adc $b1
    call nz, $d4bf
    rst $38
    db $f4
    cp a
    rst $30
    ret c

    db $ed
    rst $10
    or $ed
    xor $9d
    cp $cf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $db
    db $db
    db $e4
    push de
    ld [$9ff4], a
    rst $38
    push hl
    cp l
    sub $fb
    or l
    db $dd
    or [hl]
    call $ffb6
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
    adc a
    rst $38
    add hl, de
    rst $38
    ld de, $00ff
    rst $38
    pop hl
    ld a, $a9
    ld d, [hl]
    ld d, a
    xor b
    ld a, e
    add h
    db $fd
    nop
    db $10
    rst $28
    daa
    ret c

    ld a, [c]
    ld [$0098], sp
    sub b
    nop
    nop
    nop
    nop
    nop
    nop

jr_085_4aaf:
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
    add b
    nop
    add b
    nop
    and b
    nop
    rlc b
    dec bc
    db $f4
    add hl, de
    and $01
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_085_4aaf

    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld [hl], h
    rst $38
    inc e
    rst $38
    inc c
    rst $38
    ld c, b
    rst $38
    inc l
    rst $38
    ld c, h
    rst $38
    dec e
    rst $38
    jr @+$01

    inc e
    rst $38
    ld [de], a
    rst $38
    inc d
    rst $38
    db $10
    rst $38
    inc h
    rst $38
    jr c, @+$01

    inc l
    rst $38
    inc e
    rst $38
    ld c, a
    rst $38
    ld e, l
    rst $38
    ld b, l
    rst $38
    ld hl, $81ff
    rst $38
    ld [hl], h
    ld [$0806], sp
    scf
    ld [$00ff], sp
    ld a, d
    add l
    adc $b1
    nop
    rst $38
    ld b, l
    rst $38
    ei
    inc b
    ld d, l
    xor d
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    and b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    rst $38

jr_085_4b21:
    db $10
    rst $38

jr_085_4b23:
    rst $38
    sbc [hl]
    db $ed
    add h
    rst $38
    adc h
    ld [hl], e
    jr z, jr_085_4b23

    cp h
    db $e3
    or h
    rst $08
    sub h
    rst $28
    sub $af
    sub [hl]
    ld a, e
    inc d
    rst $28
    inc b
    rst $38
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_085_4b21

    add b
    ld a, a
    add b
    rst $38
    add b
    ld a, a
    add h
    ld a, e
    ld bc, $81fe
    cp $0b
    db $fc
    dec l
    jp nc, $f30c

    ld [bc], a
    db $fd
    ret nz

    cp a
    sbc h
    ld l, e
    adc [hl]
    ld [hl], c
    rlca
    db $fd
    rrca
    ld sp, hl
    dec b
    rst $38
    add l
    ld a, d
    ld c, c
    or [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp l
    sbc a
    jp hl


    sbc a
    ld l, e
    db $fd
    dec bc
    ld a, c
    cp a
    dec sp
    db $fd
    cp e
    ld a, a
    cp e
    ld a, l
    ld a, e
    cp l
    rst $38
    db $dd
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
    db $ec
    rst $38
    inc c
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    ldh [$1f], a
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    sbc a
    jr nz, jr_085_4b21

    ld a, a
    ret z

    ccf
    ret nc

    ccf
    call c, $fe23
    ld bc, $007f
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, e
    nop
    ld [hl], e
    nop
    di
    nop
    rst $30
    nop
    pop af
    nop
    add sp, $00
    ret nz

    nop
    add b
    nop
    ret nz

    nop
    add c
    nop
    pop bc
    nop
    ccf
    ret nz

    db $76
    add c
    xor a
    ld b, b
    dec l
    jp nz, $c13e

    inc [hl]
    srl h
    jp $eb14


    ld [bc], a
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    ld bc, $04ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec b
    rst $38
    dec c
    rst $38
    inc c
    rst $38
    inc b
    rst $38
    db $db
    inc h
    ld l, d
    sub l
    adc c
    db $76
    sub b
    ld l, a
    nop
    rst $38
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld hl, sp+$0f
    cp $01
    cp $01
    db $eb
    inc d
    cp $01
    call $0132
    rst $38
    jr nz, @+$01

    sub c
    rst $38
    ld a, [hl-]
    rst $38
    ei

jr_085_4c13:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]

jr_085_4c1b:
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $30
    nop
    rst $38

jr_085_4c23:
    rst $38
    ld e, a
    ld a, [c]
    ld e, d
    and a
    jp c, $9035

jr_085_4c2b:
    rst $28
    sub [hl]
    db $eb
    add h
    ei
    add b
    ld a, a
    jr nz, jr_085_4c13

    ld b, c

jr_085_4c35:
    cp [hl]
    nop
    rst $38
    add b
    ld a, a
    jr nz, jr_085_4c1b

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_085_4c23

    nop
    cp $a0
    ld a, a
    ld b, h
    cp a
    jr nz, jr_085_4c2b

    inc h
    ei
    and h
    ei
    and b
    rst $18
    and b
    ld d, a
    jr nz, jr_085_4c35

    and b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld d, b
    xor [hl]
    ldh a, [$af]
    sub b
    rst $28
    pop af
    xor $e9
    or $ff
    db $f4
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    add $f9
    and $f9
    sbc $e9
    sbc a
    ld sp, hl
    xor a
    ld sp, hl
    sbc $ed
    ld a, e
    ei
    call $fdef
    rst $38
    rst $38
    rst $38
    rst $38
    inc c
    rst $38
    and l
    rst $38
    db $fc
    rst $38
    db $f4
    rst $38
    xor $ff
    ld h, a
    rst $38
    ld b, a
    rst $38
    ld b, [hl]
    rst $38
    ld b, d
    rst $38
    ld [de], a
    rst $28
    ld a, [hl-]
    rst $00
    ld a, h
    add e
    ld a, l
    add d
    rst $38
    nop
    sub b
    rst $38
    dec sp
    rst $38
    ld [bc], a
    rst $38
    or b
    rst $08
    ld [hl], h
    adc e
    ld a, b
    add a
    ld a, $81
    cp a
    nop
    cp [hl]
    nop
    cp [hl]
    nop
    cp [hl]
    nop
    adc [hl]

jr_085_4cb7:
    nop
    inc b
    ld [bc], a
    adc [hl]
    nop
    add [hl]
    nop
    jp z, $ce00

    nop
    sbc $00
    rst $00
    nop
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    cp $01
    ld a, [hl]
    add c
    cp $01
    cp h
    ld b, e
    ld a, $c1
    inc [hl]
    rr b
    rst $20
    inc e
    db $e3
    jr z, jr_085_4cb7

    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    add c
    rst $38
    add l
    rst $38
    dec bc
    rst $38
    rlca
    rst $38
    dec c
    rst $38
    pop de
    rst $38
    inc bc
    rst $38
    push de
    rst $38
    sbc h
    rst $38
    xor $ff
    ld a, [$fcff]
    rst $38
    ld l, e
    add h
    reti


    ld h, $f4
    rrca
    ldh a, [rIF]
    ld b, b
    cp a
    ld c, b
    cp a
    nop
    rst $38
    add h
    rst $38
    rst $18
    rst $38
    dec sp
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    sbc $ff
    db $f4
    rst $38
    adc h
    rst $38
    rst $38

jr_085_4d21:
    nop
    rst $38
    pop af
    nop
    rst $38
    ld bc, $00fe
    rst $38
    ld b, b
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    nop
    rst $38
    ld b, b
    xor l
    nop
    db $fc
    add b
    cp $80
    ld d, a
    add c
    ld l, [hl]
    nop
    rst $28
    nop
    jp c, $b500

jr_085_4d42:
    nop
    ld a, [$ef00]
    nop
    xor a
    ld b, b
    adc l
    nop
    ld a, l
    ld b, b
    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    nop
    rst $20
    ld b, $e9
    inc b
    cp a
    dec b
    cp $25
    jp c, $ff25

    dec h
    db $db
    db $fc
    xor a
    rst $38
    db $f4
    rst $38
    ldh a, [rIE]
    db $f4
    rst $28
    ld d, [hl]
    ld e, a
    jp hl


    rst $08
    jr nc, jr_085_4d42

    ld [hl], d
    call $c9fa
    cp $cf
    ld hl, sp-$35
    db $fc
    rst $08
    cp b
    call c, $ff2b
    push af
    rst $38
    ret nz

    db $fd
    nop
    ldh a, [$a0]
    ldh a, [$c0]
    ld a, [$fc00]
    ld b, b
    inc hl
    db $fd
    inc hl
    db $fd
    ld h, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    dec c
    ld a, [c]
    adc a
    ld [hl], b
    rst $18
    jr nz, jr_085_4d21

    rst $38
    ld l, b
    rst $38
    db $10
    rst $38
    ld b, b
    cp a
    add h
    ld a, e
    ld [hl], d
    adc c
    ld [hl], c
    adc b
    call z, RST_00
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
    inc b
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [de], a
    nop
    ld e, $00
    rrca
    nop
    ld c, $00
    rrca
    nop
    rst $08
    nop
    ld l, a
    nop
    rst $08
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_085_4dd9:
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    ld a, $c1
    add h
    ei
    nop
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add d
    rst $38
    sub b
    rst $38
    xor b
    rst $38

jr_085_4dfc:
    adc b
    rst $38
    sbc b
    rst $38

jr_085_4e00:
    jr z, jr_085_4dd9

    sbc $21
    ld hl, $23ff
    rst $38
    ld b, d
    rst $38
    ld d, $ff
    call c, $d8ff
    rst $38
    ldh a, [$0d]
    ldh [rIF], a
    ldh [$0e], a
    ldh [rIF], a
    ldh [$0e], a
    ldh [$0e], a
    ldh [$0e], a
    ldh [rIF], a
    ldh [rIF], a
    ldh [$2a], a
    nop
    xor h
    nop
    db $ed
    nop
    db $ed
    ld b, b
    xor l
    nop
    adc $00
    adc a
    ld d, c
    xor [hl]
    ld e, c
    and [hl]
    ld sp, $b1ce
    ld c, [hl]
    and e
    ld e, h
    dec [hl]
    jp z, $da05

    inc hl
    call c, $5c80
    nop
    sub h
    nop
    sbc h
    nop
    call c, $dc00
    ld [$90d2], sp
    call Call_000_1c80
    add b
    jr jr_085_4e53

jr_085_4e53:
    sbc l
    add b
    inc a
    nop
    sbc h
    nop
    cp l
    nop
    cp h
    nop
    cp h
    nop
    cp l
    jr nz, jr_085_4dfc

    nop
    cp b
    nop
    xor c
    jr nz, jr_085_4e00

    and b
    inc e
    nop
    ld sp, hl
    add b
    ld a, l
    nop
    cp $00
    rst $38
    add b
    ld a, [hl]
    ldh [$1f], a
    ld h, b
    rra
    ld [hl], b
    add a
    ld a, b
    add a
    jr c, @+$49

jr_085_4e7e:
    ld e, h
    inc bc
    and c
    ld d, b
    ld sp, $70c8
    ret z

    ld a, b
    add h

jr_085_4e88:
    jr z, jr_085_4e7e

    inc a
    jp nz, $c23c

    cp $81
    pop bc
    nop
    add b
    ld [$91c0], sp
    ldh [$91], a
    ret nz

    or c
    sub b
    and l
    ldh [rHDMA5], a
    ld b, b
    ld d, l
    ld b, b
    ld e, a
    jr nz, jr_085_4ed3

    ld h, b
    ld a, $20
    cpl
    jr nz, jr_085_4ed9

    jr nc, jr_085_4ecb

    db $10
    rla
    inc d
    inc de
    dec e
    rra
    dec bc
    rra
    dec bc
    rra
    rlca
    rrca
    dec b
    rrca
    dec b
    rrca
    dec b
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld b, $03
    ld bc, $0303
    inc bc
    dec c
    inc bc

jr_085_4eca:
    dec l

jr_085_4ecb:
    inc bc

jr_085_4ecc:
    ld l, b

jr_085_4ecd:
    inc bc
    inc l
    inc bc

jr_085_4ed0:
    sbc h
    inc bc

jr_085_4ed2:
    xor h

jr_085_4ed3:
    ld b, e
    ld [$2a15], a
    push de
    inc d

jr_085_4ed9:
    db $eb
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, d
    db $fd
    ret z

    ld [hl], a
    add d
    ld a, l
    ld bc, $01fe
    cp $01
    cp $00
    rst $38
    jr nz, @+$01

    rst $18
    jr nz, jr_085_4ed2

    jr nz, jr_085_4ed0

    inc h
    rst $08
    jr nc, jr_085_4e88

    ld [hl], b
    rst $08
    jr nc, jr_085_4ecc

    jr nc, @-$27

    jr c, jr_085_4ecd

    rst $30
    push hl
    rst $38
    push bc
    rst $38
    or l
    rst $28
    ld h, b
    rst $38
    inc d
    rst $28
    ld l, b
    rst $28
    ret nz

    rst $38
    ld e, $e1
    ld a, a
    add b
    ld [hl], a
    add b
    ld [hl], a
    add b
    rst $30
    nop
    ld h, [hl]
    add b
    sub $00
    ld a, [$ff00]
    nop
    rst $30
    ld [$c837], sp
    and a
    ld e, b
    and a
    jr jr_085_4eca

    nop
    rra
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
    rst $38
    nop
    ld e, a
    add b
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
    or $09
    or $09
    cp $01
    rst $30
    ld [$09f6], sp
    cp $01
    ld a, [c]
    dec c
    ld l, c
    sub [hl]
    pop hl
    ld e, $fb
    inc b
    ld a, b
    add a
    pop hl
    ld e, $79
    add [hl]
    ld a, c
    add [hl]
    ld h, e
    sbc h
    add sp, $17
    jp hl


    ld d, $62
    sbc l
    nop
    dec c
    add b
    dec c
    adc b
    dec d
    ld [$8805], sp
    rlca
    ld [$42d7], sp
    xor h
    ld c, d
    or h
    ld c, c
    rst $38
    ld e, c
    rst $38
    db $db
    rst $38
    sub $7f
    or $3f
    rst $20
    ccf
    rst $28
    ld e, a
    rst $38
    rrca
    di
    cpl
    ld sp, hl
    sub a
    db $fd
    adc e
    cp $c3
    cp $c1
    cp a
    db $ec
    cp a
    db $ec
    rra
    cp $1f
    ldh [rIF], a
    ldh [rIF], a
    ldh a, [rTAC]
    ldh a, [$03]
    add sp, $03
    db $fc
    ld bc, $01fc
    xor $00
    rst $18
    ld bc, $21ee
    sbc $40
    cp a
    nop
    rst $38
    ld b, d
    cp l
    inc b
    ei
    ld h, $d1
    ld b, d
    cp a
    inc d
    db $eb
    ld b, d
    cp l
    ld e, b
    daa
    inc e
    ld h, e
    inc e
    rst $20
    sbc h
    and a
    cp l
    add [hl]
    adc h
    rst $38
    ld h, h
    rst $18
    ld l, l
    rst $18
    ret


    ld a, a
    push de
    ld l, a
    or c
    ld l, a
    and c
    ld a, a
    jp hl


    scf
    ld [hl], e
    inc d
    inc de
    jr jr_085_5018

    jr @+$1b

    inc c
    add hl, de
    dec c
    add hl, sp
    inc c
    add hl, bc
    inc c
    inc c
    ld c, $0c
    ld b, $0e
    inc b
    ld c, $07
    ld b, $07
    rrca
    ld [bc], a
    ccf
    ld [bc], a
    inc de
    inc bc
    rla

jr_085_4fff:
    ld bc, $af50
    ld d, b
    xor a
    ret nc

    cpl
    ret nc

    cpl
    call nc, $d12b
    ld l, $d5
    ld a, [hl+]
    push de
    ld a, [hl+]
    or l
    ld c, d
    rst $30
    ld [$443b], sp
    ei
    inc b

jr_085_5018:
    ei
    inc b
    ei
    inc b
    db $fd
    nop
    db $dd
    nop
    jr nz, jr_085_4fff

    ld a, [bc]
    push de
    ld [bc], a
    db $dd
    ld [hl+], a
    db $dd
    push af
    ld a, [bc]
    db $e4
    dec de
    ld d, l

jr_085_502d:
    xor d
    push af
    ld a, [bc]
    ld d, h
    xor e
    ld b, c
    cp [hl]
    db $10
    xor a
    ld d, b
    xor a
    ld b, l
    cp a
    ld bc, $05ff
    rst $38
    dec b
    rst $38
    add sp, $17
    ldh [$1f], a
    add sp, $17
    and b
    ld e, a
    and b
    ld e, a
    and b
    ld e, a
    jr nz, jr_085_502d

    and b
    ld e, a
    ld [$0037], sp
    cp a
    ld [bc], a
    dec a
    ld [bc], a
    cp l
    ld [bc], a
    cp l
    ld a, [bc]
    dec [hl]
    ld [bc], a
    cp l
    nop
    ld a, a
    nop
    ld a, a
    ld [bc], a
    ld a, l
    inc b
    ld a, e
    inc d
    ld l, a
    inc b
    ld a, e
    inc b
    ld a, a
    ld b, $f9
    inc b
    ld a, e
    dec b
    ld a, [$fb04]
    inc b
    ld a, e
    inc b
    ei
    ld [bc], a
    db $fd
    ld a, [bc]
    push af
    ld [$02f7], sp
    db $fd
    ld c, d
    cp l
    ld a, [bc]
    push de
    add d
    ld a, c
    nop
    rst $38
    adc b
    ld [hl], a
    sub b
    ld l, a
    call nc, $902f
    ld l, a
    call nc, $d62b
    add hl, hl
    sub $29
    ld [c], a
    dec e
    and $19
    ld h, [hl]
    sbc c
    cp $01
    cp a
    ld b, b
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    ld c, a
    rst $38
    and a
    rst $38
    or e
    rst $38
    dec sp
    rst $38
    sbc l
    nop

jr_085_50b1:
    sbc $00
    adc $00
    rst $28
    ld bc, $00ff
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b

jr_085_50bf:
    rst $38
    ld a, a
    sub b
    rst $38
    nop
    xor a
    ld d, b
    rst $28
    jr nc, @-$0f

    inc [hl]
    rst $28
    sub b
    rst $28
    sub b
    db $ed
    ld [de], a
    cp h
    ld h, e
    db $fd
    ld c, e
    reti


    ld h, [hl]
    ld e, l
    and d
    db $dd
    ld a, [hl+]
    ld e, c
    and [hl]
    push af
    ld e, d
    jp nc, $fb7d

    sub [hl]
    di
    rst $08
    ei
    sub [hl]
    ei
    or [hl]
    or a
    add sp, -$09
    cp [hl]
    or a
    rst $08
    rst $30
    xor a
    rst $30
    ccf
    ccf
    rst $30
    ld [hl], a
    ccf
    ld a, a
    scf
    ld l, a
    ld d, a
    ld a, a
    cpl
    cpl
    cp a
    cp a
    cpl
    inc d
    ei
    inc d
    rl h
    ei
    inc d
    xor e
    inc d
    xor e
    inc d
    xor e
    inc b
    cp d
    jr nc, jr_085_50bf

    jr nz, jr_085_50b1

    jr nz, jr_085_5153

    jr z, @+$79

    jr nz, @+$7d

    jr nz, jr_085_5179

    ld [$0073], sp
    ld a, a
    nop
    ld a, e
    ld bc, $007e
    ld a, a
    nop
    ld a, a
    nop
    ld [hl], e
    nop
    halt
    ld [hl], d
    nop
    ld [hl], d
    nop
    ld a, [c]
    dec c
    ld a, [c]
    dec c
    ld a, [c]
    add hl, de
    and $19
    and $18
    rst $20
    ld a, [de]
    push hl
    ld [de], a
    db $ed
    sbc c
    ld h, [hl]
    nop
    ld l, a
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
    ld b, b
    cp a
    ld [$48f7], sp
    or a
    ld b, c

jr_085_5153:
    cp [hl]
    ld bc, $81ff
    ld a, a
    add c
    ld a, a
    add c
    ld a, a
    add c
    cp $91
    xor $82
    ld a, l
    sub d
    ld l, a
    add d
    rst $38
    add e
    ld a, [hl]
    add d
    ld a, a
    add a
    ld a, d
    add a
    ld a, b
    inc b
    rst $38
    rlca
    ld a, h
    inc b
    rst $38
    dec b
    cp $a4
    ld e, e
    inc b

jr_085_5179:
    rst $38
    inc b
    ld a, a
    inc b
    ei
    ld [$44f7], sp
    ei
    ld c, b
    cp a
    ld c, c
    cp [hl]
    ld c, e
    cp h
    add hl, bc
    rst $30
    dec bc
    push af
    ld bc, $01fb
    rst $38
    add c
    ld a, [hl]
    ld de, $11ef
    xor $01
    cp $11
    xor $03
    db $fc
    ld h, $d9
    ld [hl+], a
    rst $18
    ld a, [hl+]
    rst $10
    dec bc
    db $f4
    scf
    jp z, $e01f

    cp l
    ld b, [hl]
    or h
    ld c, a
    db $fd
    ld b, $fe
    dec b
    inc b
    rst $38
    inc b
    rst $38
    nop
    ld a, a
    ld [$00bf], sp

jr_085_51b9:
    cp a
    adc b
    rst $18
    ld c, b
    rst $28
    ld b, b
    rst $30
    jr nz, jr_085_51b9

    db $10
    ei
    jr @+$01

    add hl, bc
    rst $38
    dec b
    rst $38
    ld [bc], a
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
    ld b, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ret nz

    rst $38
    rst $28
    ld [hl], b
    rst $28
    ld e, b
    rst $18
    ld l, b
    rst $18
    ld [hl], h
    rst $38
    call nz, $f6df
    rst $18
    and [hl]
    rst $38
    adc a
    rst $18
    xor a
    cp a
    rst $00
    xor a
    rst $38
    xor a
    rst $38
    xor a
    rst $18
    sbc a
    ld l, a
    rra
    rst $28
    ld a, a
    adc a
    ld b, h
    ei
    ld c, h
    or e
    ld c, b
    cp a
    ld [$08ff], sp
    cp $08
    cp $88
    db $76
    ld [$80f4], sp
    ld hl, sp+$00
    ld sp, hl
    db $10
    jp hl


    db $10
    ld sp, hl
    db $10
    jp hl


    ld de, $01e8
    ld a, [$fe01]
    nop
    cp a
    nop
    cp e
    nop
    cp a
    ld [bc], a
    db $fd
    ld [hl+], a
    sbc l
    ld [bc], a
    dec sp
    ld [bc], a
    dec a
    ld [bc], a
    cp l
    nop
    rst $38
    inc b
    ld a, e
    inc b
    rst $38
    inc b
    ld a, e
    ld b, h
    ccf
    ld b, h
    cp a
    ld b, b
    cp a
    ld b, b
    cp h
    nop
    ld sp, hl
    nop
    rst $38
    nop
    rst $08
    nop

jr_085_5247:
    sbc [hl]
    ld [$1c7e], sp
    db $eb
    cp b
    ld d, a
    jr jr_085_5247

    ret nc

    ccf
    ld e, b
    rst $30
    ld d, b
    cp a
    ld de, $11fe
    cp $71
    adc a
    ld sp, $61ef
    cp a
    and c
    ld a, a
    and e
    ld a, e
    and e
    ld a, a
    and e
    ld a, a
    ld h, e
    sbc [hl]
    ld b, e
    cp [hl]
    ld h, [hl]
    db $db
    ld h, d
    sbc a
    ld d, [hl]
    xor e
    ld h, [hl]
    db $db
    ld h, [hl]
    sbc a
    ld d, a
    db $ec
    and $1f
    and [hl]
    db $dd
    xor l
    ld d, [hl]
    add h
    rst $38
    add l
    cp $8d
    or $8f
    db $fd
    ld c, a
    db $fc
    call z, $df3f
    ld a, [hl+]
    ld c, l
    cp d
    ld e, e
    xor h
    rra
    add sp, $1e
    di
    sbc a
    ldh a, [$9e]
    ld [hl], c
    ld [hl], $dd
    cp l
    ld d, [hl]
    or [hl]
    ld e, c
    dec a
    jp nc, Jump_085_7eb1

    ccf
    ld hl, sp+$3f
    pop af
    dec a
    rst $30
    db $fd
    ccf
    ld a, l
    rst $38
    ld a, a
    or e
    ld a, a
    db $e3
    ld a, a
    call Call_085_47ff
    rst $38
    ld b, a
    sbc $67
    ld e, [hl]
    rst $20
    cp $d7
    sbc $f7
    cp $cd
    cp $d7
    rst $38
    call c, $dcff
    rst $38
    db $fc
    db $fd
    sbc $fd
    rst $08
    rst $38
    ld a, l
    rst $38
    ld a, h
    rst $38
    cp d
    cp $df
    cp $5f
    cp $3f
    rst $38
    ld a, $fe
    rra
    cp $1f
    rst $38
    rrca
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    rst $18
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    inc bc
    cp $43
    ld a, $42
    cpl
    ld a, [bc]
    rst $30
    ld [bc], a
    rst $38
    add d
    ld e, a
    add [hl]
    ei
    add h
    rst $38
    add h
    ld a, a
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [$0857], sp
    ld h, a
    ld [$08fe], sp
    sbc $00
    cp $00
    cp $10
    xor [hl]
    db $10
    db $ec
    db $10
    ld a, h
    db $10
    db $fd
    db $10
    jp hl


    rlca
    ld hl, sp+$03
    db $fc
    rrca
    ldh a, [rP1]
    ei
    inc e
    db $e3
    inc l
    jp $d32c


    call z, Call_000_0003
    ld c, [hl]
    nop
    pop bc
    ld bc, $01eb
    db $e3
    ld bc, $c18f
    ccf
    add e
    ld a, l
    add e
    ld a, [hl]
    add e
    cp $82
    rst $38
    add [hl]
    ei
    add [hl]

jr_085_5357:
    ei
    add [hl]
    ei
    adc [hl]

jr_085_535b:
    ld [hl], l
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
    jr jr_085_5357

    inc e
    db $eb
    jr jr_085_535b

    sbc l
    ld l, d
    add hl, de
    xor $5c
    xor e
    sbc c
    db $76
    sbc b
    ld [hl], a
    or b
    ld e, a
    ld d, b
    cp a
    inc [hl]
    db $db
    sbc d
    ld [hl], l
    ld a, [$b215]
    ld c, l
    inc [hl]
    db $db
    inc h
    ei
    inc h
    ld sp, hl
    ld h, h
    cp a
    inc h
    ei
    ld [hl], h
    rst $08
    db $ec
    ld d, e
    ret z

    ld [hl], a
    ret z

    ld [hl], a
    add sp, $57
    ld c, c
    or $c9
    scf
    and c
    rst $18
    sbc c
    rst $20
    sub c
    rst $38
    sub e
    rst $38
    sub e
    db $ed
    db $d3
    xor l
    sub e
    ld l, a
    sub a
    ld l, e
    and e
    ld a, [hl]
    daa
    jp c, $fb26

    ld h, [hl]
    db $db
    and $5f
    ld b, [hl]
    db $fd
    call nz, Call_085_447f
    cp a
    sub h
    ld l, a
    call z, $983b

jr_085_53bf:
    rst $28
    adc b

jr_085_53c1:
    rst $38
    adc b
    rst $38
    adc b

jr_085_53c5:
    ld a, a
    jr jr_085_53bf

    jr jr_085_53c1

    db $10
    rst $38
    db $10
    rst $38
    ld de, $11fe
    cp $b1
    ld h, [hl]
    jr nc, jr_085_53c5

    ld [hl+], a
    db $fd
    ld [hl-], a
    db $ed
    ld [hl], h
    xor e
    ld [hl], d
    xor l
    ld [hl], b
    rst $08
    db $e4
    db $db
    pop af
    adc $fd
    jp nc, $f7fd

    db $fd
    ld a, [c]
    db $fd
    ld a, [$7ff9]
    db $fd
    ld a, $3c
    rst $38
    ld e, $ff
    rrca
    rst $38
    rrca
    rst $18
    rlca
    rst $28
    inc bc
    rst $20
    inc bc
    rst $30
    ld bc, $00ff
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
    jr jr_085_5433

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_085_5443

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_085_5453

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_085_5463

    ld [hl-], a

jr_085_5433:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_085_5473

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_085_5443:
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

jr_085_5453:
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

jr_085_5463:
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

jr_085_5473:
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
    sbc l
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
    jr jr_085_5534

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_085_5544

    ld [hl+], a
    inc hl
    inc h
    dec h
    sbc l
    ld h, $27
    jr z, jr_085_5555

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_085_5565

jr_085_5534:
    ld [hl-], a
    inc sp
    sbc l
    sbc l
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_085_5577

    ld a, [hl-]
    dec sp
    dec b
    dec b
    dec b
    dec b

jr_085_5544:
    dec b
    dec b
    dec b
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    nop
    dec b
    dec b
    dec b
    dec b
    dec b

jr_085_5555:
    dec b
    dec b
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b

jr_085_5565:
    dec b
    dec b
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    nop
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b

jr_085_5577:
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    dec b
    dec b
    dec b
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0106
    ld bc, $0101
    rlca
    nop
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    rlca
    ld bc, $0101
    ld bc, $0101
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    ld bc, $0507
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    rlca
    ld b, $05
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0101
    rlca
    dec b
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    rlca
    ld bc, $0701
    dec b
    ld [bc], a
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
    rlca
    ld bc, $0701
    dec b
    ld [bc], a
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
    rlca
    rlca
    inc bc
    dec b
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    dec b
    rlca
    ld bc, $0507
    dec b
    rlca
    dec b
    dec b
    rlca
    inc b
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    dec c
    dec c
    ld a, [bc]
    dec c
    dec c
    dec c
    rrca
    rrca
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rrca
    add hl, bc
    rrca
    rrca
    rrca
    dec c
    dec c
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    rrca
    rrca
    ld a, [bc]
    ld a, [bc]
    rrca
    rrca
    rrca
    rrca
    dec c
    dec c
    dec c
    nop
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    rrca
    rrca
    rrca
    rrca
    rrca
    dec c
    dec c
    dec c
    nop
    nop
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    rrca
    dec c
    cp $0e
    db $fd
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $30
    ld c, h
    cp a
    inc c
    rst $30
    inc c
    rst $30
    inc c
    rst $30
    dec c
    or $0e
    push af
    inc c
    rst $30
    ld c, $f1
    inc c
    rst $30
    inc c
    rst $38
    inc c
    rst $30
    inc c
    ei
    ld c, h
    or a
    ld c, h
    cp e
    ld c, [hl]
    cp c
    ld c, h
    cp e
    ld c, h
    or e
    inc c
    rst $30
    inc c
    di
    inc c
    rst $30
    inc c
    or a
    inc b
    rst $38
    inc c
    rst $30
    inc b
    rst $38
    inc b
    rst $38
    ld b, $ff
    inc c
    rst $30
    inc c
    rst $30
    inc c
    rst $30
    inc c
    rst $30
    inc c
    rst $30
    inc c
    rst $30
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $30
    inc c
    rst $30
    ld c, $f5
    inc c
    rst $30
    ld c, $f5
    inc c
    rst $30
    ld c, $fd
    ld c, $fd
    inc c
    rst $30
    inc c
    rst $30
    inc e
    rst $38
    rst $38
    inc a
    rst $38
    ld bc, $04fb
    rst $08
    jr nc, jr_085_56f1

jr_085_56f1:
    rst $38
    nop
    rst $38
    nop
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
    nop
    dec b
    ld a, [$fd1e]
    inc e
    rst $38
    ld e, h
    cp a
    call c, $dc7f
    ld a, a
    inc a
    rst $28
    inc l
    rst $18
    ld e, h
    xor a
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $30
    inc c
    rst $30
    adc h
    ld [hl], a
    adc h
    ld [hl], a
    inc c
    di
    ld e, h
    and a
    cp $6d
    sbc $7d
    db $fc
    ld c, a
    xor h
    ld d, a
    ld a, h
    rst $00
    inc e
    rst $20
    cp h
    rst $10
    inc e
    rst $28
    inc l
    rst $10
    call c, $ec2f
    ld [hl], e
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    di
    db $fc
    rst $30
    db $fc
    ei
    db $fc
    ei
    db $fc
    ld a, [$f3fc]
    db $fc
    rst $38
    db $fc
    ei
    db $fc
    rst $38
    db $fc
    ld a, a
    ld a, h
    cp a
    ld a, h
    ei
    ld hl, sp+$7f
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07fe
    ld hl, sp+$0f
    ldh a, [$3f]
    ret nz

    rst $38
    nop
    rst $38
    nop
    ld a, [$f000]
    rst $38
    pop bc
    rst $38
    nop
    rst $38
    ld [$50ff], sp
    rst $38
    adc d
    rst $38
    ld a, h
    rst $38
    rst $30
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld b, $fd
    ld c, $f5
    ld c, $f5
    ld c, $fd
    adc [hl]
    ld [hl], a
    adc [hl]
    ld a, l
    ld c, $ff
    ld c, $ff
    adc a
    ld a, [hl]
    sbc [hl]
    ld l, a
    sub [hl]
    rst $28
    add [hl]
    rst $38
    adc [hl]
    rst $30
    adc $b7
    adc [hl]
    rst $30
    add [hl]
    rst $38
    adc a
    db $76
    add [hl]
    rst $38
    add [hl]
    rst $38
    add [hl]
    rst $38
    add a
    cp $87
    rst $38
    add a
    ld a, [hl]
    add [hl]
    rst $38
    add a
    cp $87
    cp $86
    rst $38
    add [hl]
    rst $38
    add [hl]
    ld a, a
    ld b, [hl]
    cp a
    rlca
    cp $46
    cp a
    rlca
    cp $47
    cp a
    add a
    ld a, a
    add a
    rst $38
    xor a
    rst $10
    add a
    ld a, [hl]
    adc a
    or $07
    cp $0e
    rst $38
    ld b, $ff
    ld c, $f7
    rlca
    cp $07
    cp $27
    sbc $27
    sbc $27
    sbc $37
    adc $27
    sbc $27
    ei
    rst $38
    ccf
    rst $38
    inc bc
    rst $38
    nop
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
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    cp [hl]
    ld b, l
    ccf
    rst $00
    daa
    rst $18
    daa
    reti


    rlca
    rst $38
    daa
    db $db
    daa
    rst $38
    daa
    rst $18
    daa
    cp $27
    rst $18
    ld b, a
    cp d
    ld b, a
    cp e
    daa
    db $db

jr_085_581c:
    rrca
    ld a, [c]
    rlca
    ld a, [$df27]
    daa
    db $db
    ld h, a
    sbc d
    ld b, $fb
    ld b, a
    cp d
    ld b, $f9
    daa
    sbc $67
    cp [hl]
    ld b, a
    cp d
    ld h, a
    sbc [hl]
    rlca
    rst $38
    rlca
    ld a, [$d72f]
    ld l, a
    sub a
    rla
    rst $28
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $30
    ld b, a
    cp a
    ld b, a
    cp $27
    ld a, [$9f67]
    ld b, [hl]
    rst $38
    ld b, [hl]
    cp e
    ld b, a
    db $fd
    ld b, h
    ei
    ld b, b
    ei
    nop
    rst $38
    nop
    rst $38
    ld bc, $07fe
    ei
    rrca
    ld hl, sp+$7f
    and b
    rst $38
    ld b, b
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    db $fc
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
    db $fc
    inc bc
    di
    inc c
    rst $20
    jr jr_085_581c

    ld h, b
    rst $38
    add b
    ld c, $fd
    inc c
    ei
    dec c
    cp $0f
    cp $0e
    rst $38
    rra
    db $ed
    rra
    rst $28
    rra
    db $fd
    rra
    db $fc
    dec e
    cp $1c
    ei
    sbc h
    ld a, a
    inc e
    ei
    inc e
    rst $38
    cp h
    ld c, a
    sbc $6d
    adc $3d
    xor [hl]
    ld d, l
    ld a, [hl]
    adc l
    cp [hl]
    ld c, l
    rst $38
    ld b, l
    rst $30
    ld l, l
    call $d576
    ld l, [hl]
    ld e, h
    db $eb
    db $ec
    ld d, a
    db $fd
    ld c, [hl]
    db $fc
    sbc e
    ld a, [hl]
    and l
    db $ec
    dec de
    db $ec
    db $db
    sbc $ed
    call z, $9c7b
    ld l, a
    xor [hl]
    ld e, c
    db $ec
    rra
    db $fd
    ld l, [hl]
    db $ec
    rst $38
    db $fd
    xor $fd
    sbc $ff
    ld l, l
    ld a, l
    sbc $fd
    dec de
    db $dd
    ld a, $7d
    bit 7, l
    sbc $7f
    db $ed
    ld a, l
    xor [hl]
    ld a, [hl]
    ld sp, hl
    ld a, l
    sbc [hl]
    db $fd
    ld d, [hl]
    rst $38
    dec e
    cp a
    ld e, l
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    ccf
    cp $ff
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
    sub h
    rst $38
    rrca
    rst $38
    rst $38
    nop
    call nc, $fe2b
    db $fd
    db $fc
    rst $38
    db $fd
    or $ff
    call c, $d6fd
    db $ec
    rst $38
    db $ec
    rst $30
    cp $ed
    db $fc
    ld l, a
    cp h
    ld e, a
    ld a, h
    rst $38
    db $fc
    ld e, a
    call c, $dc6f
    xor a
    call c, $cc2f
    rst $30
    db $ec

Jump_085_5925:
    rst $18
    xor h
    ld [hl], a
    db $ec
    ccf
    db $ec
    or a
    ld c, h
    rst $30
    ld c, l
    or [hl]
    ld c, h
    or a
    xor [hl]
    ld e, l
    xor $1d
    sbc $e5
    xor $dd
    cp $d5
    ld e, a
    or [hl]
    ccf
    sbc $7e
    cp l
    cp [hl]
    ld l, a
    ld a, [hl]
    adc l
    sbc $2f
    cp $b5
    cp $75
    db $fc
    rst $30
    ldh [$7f], a
    ld bc, $17fe
    rst $28
    rrca
    ei
    ld a, $cf
    ld a, e
    cp a
    rst $38
    rst $10
    rst $38
    adc e
    rst $38
    ld l, a
    jr c, @+$01

    and b
    rst $38
    nop
    rst $38
    ld bc, $40ff
    cp a
    add b
    ld a, a
    jp nz, $813f

    ld a, [hl]
    add hl, sp
    rst $38
    ld h, b
    rst $38
    ret nz

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
    or b
    ld e, a
    or b
    ld e, a
    ld [hl], b
    sbc a
    or b
    ld e, a
    ldh a, [$1f]
    cp b
    ld [hl], a
    ld a, [hl-]
    push de
    cp h
    ld [hl], e
    cp l
    jp c, $f7b8

    cp b
    ld e, a
    cp b
    rst $10
    sub h
    ei
    or b
    rst $18
    or b
    ld e, a
    or b
    rst $18
    or b
    ld c, a
    or b
    rst $08
    sub b
    ld l, a
    or d
    ld e, l
    inc sp
    db $ec
    sub c
    ld a, [hl]
    sub e
    db $ed
    sub e
    ld a, [hl]
    inc de
    db $fd
    sub c
    rst $38
    sub e
    ld a, l
    sub e
    ld a, l
    inc de
    cp $92
    ld a, a
    cp c
    ld d, [hl]
    or d
    ld e, l
    or b
    ld e, a
    jr nc, @+$01

    db $10
    rst $38
    or b
    rst $18
    sub b
    ld a, a
    sub b
    ld a, a
    sub b
    rst $38
    or b
    ld e, a
    sub b
    ld a, a
    db $10
    rst $38
    or b
    ld c, a
    db $10
    rst $28
    db $10
    rst $38
    sub b
    ld a, a
    ld [hl-], a
    call $ef10
    db $10
    rst $38
    ld de, $30fe
    rst $18
    ld sp, $11de
    cp $1c
    di
    call c, $ffbb
    rst $38
    ld c, l
    rst $38
    ldh [rIE], a
    ld c, b
    rst $38
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    add sp, -$01
    rst $38
    ld [$977f], sp
    ld a, b
    sub a
    ld sp, hl
    ld d, $7c
    sub a
    db $fc
    rla
    cp $15
    or h
    ld e, e
    or b
    ld e, a
    inc [hl]
    ei
    or [hl]
    db $dd
    call nc, Call_085_74bb
    xor e
    ldh a, [$5f]
    jp nc, $fc7d

    inc hl
    ld [hl], b
    cp a
    ldh a, [$5f]
    db $fd
    ld [hl-], a
    ld a, [c]
    ld e, l
    ld hl, sp+$17
    ld [hl], b
    rst $18
    ld [hl], b
    sbc a
    ld a, c
    or $fc
    rla
    ld [hl], h
    ei
    ld a, h
    rst $30
    ld a, l
    or $fc
    rla
    inc a
    rst $18
    db $fd
    ld [hl-], a
    db $fd
    ld [hl], d
    ld a, h
    sub a
    cp l
    ld a, [hl]
    ld a, [hl]
    sbc l
    ei
    ld e, a
    sbc $3d
    ld a, a
    cp a
    rst $18
    ld l, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $28
    rst $18
    cp a
    rst $38
    ei
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ldh a, [rIE]
    ld b, b
    inc b
    rst $38
    dec sp
    rst $38
    and $ff
    cp h
    rst $38
    ld h, b
    rst $38
    add b
    rst $38
    ld b, d
    cp l
    db $f4
    dec bc
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
    inc bc
    ld hl, sp+$07
    jp $fd3c


    add [hl]
    db $fd
    or $fc
    rst $30
    db $fd
    or [hl]
    db $fd
    or $fc
    rst $38
    cp $fd
    cp $ff
    rst $38
    cp $ff
    db $fd
    adc a
    db $f4
    add b
    rst $38
    ldh a, [$ef]
    cp $fd
    cp $ff
    rst $38
    cp $fe
    cp a
    rst $38
    cp $fe
    db $dd
    cp $ff
    db $fc
    rst $38
    cp $fd
    db $fd
    cp $fe
    rst $38
    rst $38
    db $f4
    cp $d5
    rst $38
    sub [hl]
    cp $d7
    rst $38
    or [hl]
    rst $38
    sub $df
    and [hl]
    cp $85
    cp $db
    cp [hl]
    push de
    sbc $b7
    sbc $b5
    sbc a
    add sp, -$5b
    sbc $a6
    rst $18
    rst $08
    or h
    adc [hl]
    push af
    push af
    adc [hl]
    sub [hl]
    db $fd
    sbc a
    db $e4
    sbc a
    db $e4
    rst $08
    cp h
    sbc [hl]
    push hl
    xor l
    ld e, [hl]
    sub [hl]
    db $ed
    call c, $9c27
    rst $20
    call $8c36
    rst $30
    call $acb6
    ld d, a
    db $fc
    rst $28
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
    jp hl


    ld d, $dc
    xor a
    db $fd
    ld e, $bd
    ld e, [hl]
    cp l
    ld e, a
    cp l
    db $db
    sbc l
    ld l, d
    sbc l
    ld h, [hl]
    cp l
    add $bd
    ld [c], a
    cp l
    adc $fd
    sbc [hl]
    db $dd
    cp [hl]
    db $fc
    sbc a
    db $fd
    sbc [hl]
    db $fd
    cp $fd
    xor $fd
    or $fc
    ei
    db $fd
    cp e
    db $fd
    cp d
    db $fc
    ei
    db $fc
    ei
    db $fd
    cp [hl]
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    cp $fd
    cp $fd
    ld a, [$fdfe]
    ld hl, sp-$09
    db $d3
    xor l
    scf
    bit 3, a
    cp [hl]
    ld a, a
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    ld hl, sp-$01
    and b
    rst $38
    add h
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    db $fc
    rst $38
    cp $ff
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
    ld bc, $33ff
    rst $08
    adc $3f
    sbc b
    ld a, a
    ld [hl], b
    cp a
    dec h
    ld a, [$f887]
    ccf
    ret nz

    rst $38
    nop
    cp $01
    ld a, h
    ld [$fd7c], a
    ld hl, sp+$75
    ld h, b
    ld a, [$ff60]
    ld a, b
    rst $28
    ld a, b
    db $db
    ld hl, sp-$2d
    ldh a, [$5f]
    ret nc

    ld [hl], a
    ret nc

    xor $c4
    ld [hl], e
    ld b, b
    cp a
    nop
    ei
    add b
    ld a, l
    ld b, b
    rst $38
    ret nz

    ld a, a
    ret nz

    ld a, b
    ld b, b
    rst $38
    ld b, h
    rst $38
    call nz, $cc7f
    ld [hl], a
    call z, $ecf7
    ld e, e
    call z, $fcfb
    ld c, e
    db $ec
    ld [hl], e
    db $fc
    ld c, e
    db $fc
    ld c, e
    ld a, h
    rst $10
    ld a, h
    db $d3
    db $fc
    ld b, a
    ld a, h
    rst $10
    ld a, h
    rst $30
    db $f4
    ld a, a
    db $f4
    ld a, e
    ld a, h
    ei
    ld a, h
    ei
    ld a, h
    rst $10
    ld a, h
    db $d3
    db $fc
    ld b, a
    ld a, h
    db $d3
    ld a, h
    rst $20
    ld a, [hl]
    push hl
    ld a, [hl]
    push af
    db $fc
    ld a, e
    cp $7d
    ld a, [hl]
    ld sp, hl
    cp $49
    ld a, [hl]
    reti


    ld a, h
    rst $10
    ld a, [hl]
    db $eb
    ld a, [hl]
    call $cb7c
    cp $65
    ld a, [hl]
    db $ed
    cp $ff
    ld [bc], a
    rst $38
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $30
    nop
    rst $38
    rst $38
    nop
    cp $69
    cp $7d
    cp $35
    rst $38
    ld [hl], h
    cp $71
    db $fd
    db $76
    db $fd
    ld d, [hl]
    ld a, l
    jp nz, $c67d

    ld a, l
    add $74
    xor e
    ld [hl], h
    xor a
    ld a, h
    or a
    ld l, l
    sub $75
    sbc d
    ld [hl], h
    adc a
    ld d, l
    xor [hl]
    ld [hl], l
    xor $e5
    ld a, [hl]
    db $f4
    ld a, a
    cp $65
    db $ec
    ld [hl], a
    ld a, h
    rst $28
    ld a, h
    rst $28
    ld a, h
    rst $00
    ld a, l
    xor $7c
    rst $18
    ld a, h
    db $db
    ld h, b
    rst $38
    ld b, c
    cp [hl]
    rlca
    db $fd
    jr c, @+$01

    di
    rst $28
    rst $18
    ld a, [c]
    rst $38
    or b
    rst $38
    ret nc

    rst $38
    and b
    rst $38
    inc bc
    rst $38
    rlca
    rrca
    rst $38
    ld e, a
    rst $38
    db $f4
    rst $38
    ldh a, [rIE]
    ret nc

    rst $38
    adc e
    rst $38
    rra
    rst $38
    ld a, [hl]
    rst $38
    ld a, l
    rst $38
    rst $38
    rst $38
    ld c, a
    rst $38
    inc e
    rst $38
    ld [hl], b
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    inc bc
    db $fc
    ld c, $f1
    db $10
    rst $28
    ld a, b
    add a
    ldh a, [rIF]
    and b
    ld e, a
    ret nz

    ccf
    nop
    rst $38
    ld bc, $00ff
    db $76
    add b
    ld [hl], d
    add b
    ld [hl], d
    nop
    or $00
    db $f4
    nop
    jp nz, $5a80

    db $10
    add sp, $00
    ld a, b
    nop
    ld a, [$aa10]
    nop
    ld d, c
    nop
    add d
    nop
    rst $28
    add b
    ld c, [hl]
    nop
    ld e, $00
    ld a, $00
    ld a, [hl]
    nop
    cp $80
    ld a, a
    nop
    cp $80
    ld a, a
    add b
    ld a, a
    db $10
    rst $28
    add d
    ld a, l
    nop
    rst $38
    add b
    ld a, a
    add d
    ld a, l
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    db $10
    xor $10
    rst $28
    db $10
    rst $28
    db $10
    rst $38
    db $10
    rst $28
    db $10
    rst $28
    nop
    rst $38
    sub b
    ld l, a
    db $10
    rst $28
    sub b
    rst $28
    add b
    rst $38
    add b
    rst $38
    add b
    ld a, a
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    add d
    ld a, l
    add b
    rst $38
    sub h
    ld l, a
    adc [hl]
    ld a, l
    cp h
    ld c, a
    and [hl]
    ld e, l
    adc [hl]
    ld a, a
    nop
    rst $38
    ret nz

    rst $38
    nop
    cp a
    nop
    ret nz

    nop
    ldh [rP1], a
    ret nz

    nop
    and b
    nop
    ld a, l
    rst $38
    nop
    ld b, $f9
    sub d
    ld l, l
    add [hl]
    ld a, l
    add d
    ld a, l
    add b
    ld a, a
    add d
    db $fd
    add d
    ld a, l
    ld [bc], a
    db $fd
    sub [hl]
    ld l, b
    sub h
    ld l, a
    sub h
    db $eb
    sbc d
    push hl
    sbc b
    ld [hl], a
    adc d
    push af
    sbc h
    ld h, a
    adc [hl]
    ld [hl], l
    sbc h
    ld [hl], a
    sbc [hl]
    db $ed
    adc h
    rst $38
    sbc [hl]
    db $fd
    sbc $2f
    sbc [hl]
    push af
    sbc [hl]
    push hl
    sbc [hl]
    ld [hl], l
    ret nc

    xor a
    ret nz

    ccf
    nop
    rst $38
    ld [$53f7], sp
    xor h
    ld c, a
    or h
    ccf
    ldh a, [rLCDC]
    rst $38
    ld b, b
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    rra
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    push af
    rst $38
    jp $8fff


    rst $38
    rrca
    rst $38
    ccf
    rst $38
    ld a, h
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    or b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, c
    cp a
    inc bc
    rst $38
    rlca
    rst $38
    ld c, $ff
    inc e
    rst $38
    jr nc, @+$01

    ld h, c
    cp $6b
    db $f4
    db $db
    db $e4
    add l
    ld a, [$6d92]
    sub c
    ld l, h
    sub e
    ld l, h
    sbc e
    ld h, h
    ld d, e
    inc l
    jp c, Jump_085_5925

    add [hl]
    ld [$50c7], sp
    rst $28
    call nz, Call_000_227b

jr_085_5d95:
    rst $38
    inc sp
    rst $08
    ld h, c
    rst $38
    ld [hl], b
    rst $38
    dec a
    db $e3
    jr z, jr_085_5d95

    ld b, d
    or h
    scf
    ret nz

    rla
    ldh [$2c], a
    jp nc, $d225

    scf
    ret nz

    rla
    ldh [rSC], a
    push af
    ld l, a
    sub b
    ld c, h
    or b
    ld l, e
    sub h
    ld l, e
    sub h
    ld c, d
    or l
    ld l, d
    sub l
    ld l, d
    sub l
    ld a, [bc]
    push af
    ld c, d
    or l
    ld a, [bc]
    push af
    dec bc
    db $f4
    rrca
    ldh a, [rTMA]

jr_085_5dc9:
    ld sp, hl
    ld c, $f1
    ld b, $f9
    ld b, $f9
    ld c, $f1
    ld c, $f1
    ld c, $f1
    ld c, $f1
    ld a, [bc]
    push af
    ld [bc], a
    db $fd
    ld a, [bc]
    push af
    ld [bc], a
    db $fd
    nop
    db $fd
    ld b, b
    cp l
    nop
    db $fc
    nop
    db $fd
    nop
    db $fd
    jr nz, jr_085_5dc9

    ld h, b
    sbc a
    db $e4
    add hl, de
    push af
    rst $38
    ld b, h
    rst $38
    db $fc
    rst $30
    rst $38
    or b
    rst $38
    ccf
    rst $38
    rlca
    rst $38
    ld l, e
    rst $38
    or a
    rst $38
    nop
    ld h, b
    rst $18
    ld d, b

Jump_085_5e05:
    rst $28
    ldh [$5f], a
    ld [hl], b
    rst $08
    ld h, b
    sbc a
    nop
    rst $38
    ld b, c
    cp [hl]
    db $10
    rst $28
    ld b, c
    cp [hl]
    ld b, b
    or a
    ld b, c
    cp [hl]
    inc b
    ei
    ld d, b
    xor a
    sub h
    ld l, e
    ld d, c
    xor [hl]
    ld b, c
    rst $38
    push de
    ld a, [hl-]
    ld [hl], l
    xor d
    ld d, l
    ld [$ab54], a
    ld [hl], h
    xor e
    jr nz, @-$03

    add b
    ld a, a
    ld bc, $03fe
    db $fc
    rrca
    ldh a, [$3f]
    ret nz

    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    rrca
    ld a, a
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $00
    rst $38
    scf
    rst $38
    ld a, [hl]
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
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
    nop
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld c, $ff
    inc e
    rst $38
    jr c, @+$01

    ld [hl], b
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    add d
    db $fd
    db $fc
    rst $38
    push af
    rst $38
    di
    rst $38
    rst $08
    rst $38
    xor a
    rst $38
    cpl
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    rra
    ldh a, [rIF]
    ld hl, sp+$0f
    xor h
    rlca
    inc b
    inc bc
    add [hl]
    inc bc
    db $fd
    ld bc, $00a7
    dec hl
    ld d, a
    xor b
    add [hl]
    ld a, c
    and l
    ld e, d
    db $ec
    inc de
    ld l, [hl]
    sub c

jr_085_5e9a:
    ld l, d
    sub l

jr_085_5e9c:
    ld a, [hl+]
    push de
    xor $11
    and a
    nop
    and h
    inc bc
    dec c
    ld [hl-], a
    adc a
    jr nc, jr_085_5ef6

    ld [hl-], a
    and $19
    db $e3
    jr jr_085_5e9a

    db $10
    rst $28
    db $10
    rst $20
    jr jr_085_5e9c

    jr jr_085_5efe

    or b
    ld d, a
    and b
    pop af
    ld b, $c6
    nop
    push de
    jr nz, jr_085_5f40

    nop
    cp a
    ld b, b
    ld a, a
    add b
    ld a, a
    add b
    ld d, a
    xor b
    sub $29
    rst $18
    jr nz, jr_085_5f12

    xor h
    rst $10
    ld [$08f7], sp
    and [hl]
    ld e, c
    and d
    ld e, c
    push hl
    ld a, [de]
    rst $30
    ld [$f807], sp
    cpl
    ret nc

    xor e
    ld d, h
    ld a, [bc]
    push af
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc

jr_085_5eeb:
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

jr_085_5ef6:
    add b
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_085_5efe:
    rst $38
    nop
    rst $38
    nop
    db $10
    rst $28
    nop
    rst $38
    db $10
    rst $28
    add b
    ld a, a
    jr nz, jr_085_5eeb

    inc b
    ei
    inc b
    ei
    and b
    ld e, a

jr_085_5f12:
    inc b
    ei
    add h
    ld a, e
    adc l
    db $76
    add l
    ld a, e
    xor l
    ld [hl], a
    and l
    db $db
    xor c
    sub $ab
    push de
    sbc b
    rst $20
    xor b
    rst $10
    add b
    rst $30
    ld bc, $07de
    ld hl, sp+$1e
    ldh [$7c], a
    add b
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
    add b
    rst $38
    ld [bc], a
    rst $38
    inc h
    rst $38

jr_085_5f40:
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
    ld bc, $03ff

jr_085_5f51:
    rst $38
    ld b, $ff
    inc c
    rst $38
    jr c, @+$01

    ld [hl], b
    rst $38
    ldh [rIE], a
    ret nz

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
    rst $28
    rst $38
    adc a
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    jr nz, jr_085_5f51

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $80ff
    ld a, a
    ld bc, $00ff
    rst $38
    ret nz

    ld a, a
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld [bc], a
    db $fd
    ld [$00ff], sp
    rst $38
    add h
    rst $38
    rst $38
    ld d, h
    ld a, a
    ret nc

    ccf
    ld h, b
    rra
    ld [hl], b
    rra
    ld sp, hl
    rrca
    db $fc
    rrca
    db $f4
    rlca
    ld e, [hl]
    rlca
    sbc d
    rlca
    add hl, sp
    ld [bc], a
    ld a, l
    ld bc, $018e
    sbc [hl]
    nop
    ld e, a
    nop
    sbc a
    nop
    rra
    nop
    ld a, a
    nop
    ld l, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    ld [bc], a
    ld a, l
    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    cp a
    ld [bc], a
    dec a
    nop
    ld a, a
    nop
    cp a
    add b
    ld a, a
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
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    ld l, l
    ld [bc], a
    ld l, l
    nop
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    rst $38
    ld [bc], a
    db $fd
    ld b, d
    cp a
    ld [bc], a
    rst $38
    ld b, $f9
    ld b, $f9
    ld a, [bc]
    push af
    ld [bc], a
    db $fd
    rst $38
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld l, [hl]
    db $d3
    ld h, [hl]
    db $db
    sub $6b
    jp nz, Jump_085_663d

    sbc c
    sub e
    ld l, h
    ld b, d
    db $fd
    ld c, e

jr_085_6011:
    or h
    ld d, a
    xor b
    ld d, a
    db $ec
    ld a, a
    add [hl]
    ld l, a
    sub $67
    cp [hl]
    or $0d
    and b
    ld e, a
    add a
    ld a, c
    rrca
    rst $38
    rra
    db $fc
    ld a, a
    add b
    rst $38
    nop
    ld hl, sp+$00
    inc h
    nop
    rst $00
    nop
    jr nz, jr_085_6011

    ld b, c
    cp [hl]
    inc bc
    db $fc
    ld [bc], a
    db $fd
    nop
    rst $38
    ld bc, $02fe
    db $fd
    ld hl, $00df
    rst $38
    inc b
    rst $38
    ld [$00ff], sp
    rst $38
    jr nz, @+$01

    ld h, b
    rst $38
    ret nz

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
    inc b
    rst $38
    inc b
    rst $38
    ld [$00ff], sp
    rst $38
    ld [$1aff], sp
    rst $38
    ld l, b
    rst $38
    ld h, b
    rst $38
    and b
    rst $38
    ld d, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld bc, $40fe
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
    jr nz, @+$01

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
    ld bc, $04fe
    ei
    ld [bc], a
    db $fd
    ld [de], a
    db $ed
    add [hl]
    ld sp, hl
    rst $30
    adc b
    db $db
    ld h, h
    ld a, l
    and b
    ld a, [$b610]
    ld d, b
    ld [$84f8], sp
    ld a, h
    ld b, h
    cp h
    ld c, d
    or [hl]
    ld b, c
    cp a
    dec b
    ei
    add d
    ld a, l
    add b
    ld a, a
    add c
    ld a, [hl]
    ld bc, $00fe

jr_085_60c5:
    rst $28
    nop
    sbc a
    nop
    rst $28
    nop
    push hl
    nop
    ld hl, $2100
    and e
    ld a, l
    dec b
    ld sp, hl
    ld c, $f1
    ld b, b
    rst $38
    pop bc
    rst $38
    pop hl
    rst $38
    db $ed
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_085_60e4:
    jr nz, jr_085_60c5

    ld bc, $20fe
    rst $18
    ld bc, $20fe
    rst $18
    inc h
    db $db
    inc h
    ei
    ld hl, $00de
    rst $38
    ld hl, $21de
    cp $df
    jr nz, jr_085_60e4

    jr jr_085_6179

    add l
    rst $38
    nop
    ld h, c
    cp [hl]
    ld h, b
    cp a
    ld bc, $01fe
    cp $41
    cp a
    add hl, bc
    rst $30
    ld l, c
    sub a
    rst $10
    ld l, c
    adc e
    ld a, l
    add a
    ld a, b
    ld c, $f1
    sbc b
    ld h, a
    or h
    ld c, b
    add $39
    jp nz, $9cff

    rst $38
    ldh [rIE], a
    add d
    rst $38
    nop
    rst $38
    ld h, c
    sbc [hl]
    rst $00
    jr c, jr_085_6144

    add sp, -$02
    ld bc, $02fd
    ld sp, hl
    ld b, $f1
    ld c, $c3
    inc a
    ld b, e
    cp h
    inc bc
    db $fc
    adc a
    ldh a, [rNR32]
    db $e3
    rst $38
    rst $38
    add b
    rst $38

jr_085_6144:
    dec h
    rst $38
    cp [hl]
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld b, $ff
    ld [bc], a

jr_085_6179:
    rst $38
    rlca
    rst $38
    dec c
    rst $38
    inc e
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    ld a, h
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
    rst $30
    rst $38
    pop de
    rst $38
    ld b, b
    rst $38
    ld [bc], a
    db $fd
    rlca
    ld hl, sp+$01
    ld a, [$dd22]
    add b
    ld b, l
    ld b, e
    inc b
    adc l
    ld h, d
    ld [hl-], a
    nop
    sub b
    ld [bc], a
    sbc c
    nop
    adc c
    ld b, b
    ld [hl], b
    ld [$00fc], sp
    pop hl
    sbc d
    ld b, b
    rst $18
    jr nz, @+$01

    jr nz, @+$01

    rra
    rst $38
    rlca
    ld hl, sp+$37
    add sp, $17
    add sp, $17
    add sp, $1f
    ldh [$1f], a
    ldh [$1f], a
    ld h, b
    rra
    ld h, b
    sbc a
    ld h, b
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rNR31], a
    ldh [rNR30], a
    ldh [rNR34], a
    ldh [rNR34], a
    ldh [rNR30], a
    ldh [rNR31], a
    ldh [rNR34], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ld [$e01f], a
    rra
    ldh [rIE], a
    ld h, b
    ld h, b
    sbc a
    ldh [$3f], a
    ld h, b
    sbc a
    ret nz

    ccf
    ld l, d
    push de
    ld a, d
    call $fd7a
    ld a, b
    rst $38
    jr nz, @+$01

    ld d, b
    rst $38
    nop
    jp $0200


    nop
    inc e
    ld sp, hl
    ld b, $0f
    pop af
    ld b, d

jr_085_6221:
    rst $38
    adc h
    rst $38
    sbc b
    rst $38
    nop
    rst $38
    sbc a
    ld h, b
    rst $38
    nop
    rst $30
    ld [$00ff], sp
    ld bc, $03fe
    db $fc
    inc bc
    db $fc
    add [hl]
    db $fc
    or a
    ld hl, sp+$73
    db $fc
    rla
    ld hl, sp-$5d
    db $fc
    jp nz, Jump_085_40ff

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
    rst $38
    nop
    ld a, [hl]
    add c
    xor d
    ld d, l
    ld b, b
    cp a
    jr c, jr_085_6221

    ld h, c
    sbc a
    ld d, c
    xor a
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
    rrca
    rst $38
    ld c, $ff
    ld e, $ff
    dec de
    rst $38
    ld e, $ff
    inc a
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ldh [rIE], a
    rst $18
    jr nz, jr_085_6302

    add b
    db $fd
    ld [bc], a
    ld l, l
    sub d
    cpl
    jp nc, $c23d

    cp c
    ld b, [hl]
    dec d
    ld [$ffdb], a
    ld a, a
    rst $38
    ld d, [hl]
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    dec [hl]
    rst $38
    sub l
    rst $38
    dec d
    rst $38
    dec b
    rst $38
    jr @+$01

    sbc b
    ld a, a
    inc [hl]
    rst $18
    add b
    ld a, a
    ld a, $41
    jr c, @+$06

    inc b
    jr nz, jr_085_62b5

jr_085_62b5:
    jr nz, jr_085_62b7

jr_085_62b7:
    ld [de], a
    inc d
    add d
    inc l
    sub d
    and c
    ld e, [hl]
    nop
    rst $38
    rlca
    ld hl, sp+$67
    sbc b
    rst $38
    rst $38
    nop
    ld c, a
    nop
    dec c
    nop
    add hl, bc
    nop
    add hl, bc
    nop
    ld bc, $00a7
    rrca
    nop
    ld c, d
    dec b
    and e
    inc b
    di
    inc b
    rst $30
    nop
    pop de
    inc b
    db $dd
    nop
    db $fd
    nop
    cp c
    inc b
    cp e
    inc b
    cp l
    nop
    db $fd
    nop
    ei
    inc b
    rst $38
    nop
    ei
    inc b
    nop
    nop
    nop
    push bc
    nop
    call nz, $d100
    nop
    pop af
    nop
    pop af
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_085_6302:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $49fe
    or [hl]
    ret


    ld l, $cd
    cp e
    ld [$00ff], sp
    rst $38
    jr nz, @+$01

    rra
    ldh [$2e], a
    db $10
    ld c, d
    dec h
    ld [hl], a
    adc b
    ld b, a
    cp b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc d
    rst $38
    ld a, a
    add c

jr_085_632c:
    rst $38
    nop
    rlc b
    and b
    nop
    add d
    nop
    sub e
    nop
    inc h
    nop
    rla
    nop
    rst $38
    nop
    rst $38
    inc c
    db $eb
    ld e, $14
    dec bc
    sbc a
    jr nz, jr_085_632c

    jr @-$3c

    dec a
    pop bc
    ld a, $e2
    dec a
    add b
    ld a, a
    nop
    rst $38
    ld bc, $83fe
    db $fc
    add c
    cp $a1
    cp $90
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
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
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc de
    rst $38
    ld hl, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld [de], a
    db $fd
    inc b
    ei
    db $10
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld b, b
    rst $38
    ld a, [c]
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    db $f4
    rst $38
    ld h, b
    rst $38
    db $fc
    rst $38
    ld [hl], h
    rst $38
    or $ff
    ld a, b
    rst $38
    ld a, [$d8ff]
    rst $38
    sbc b
    rst $38
    sbc b
    rst $38
    ret z

    cp a
    ld bc, $31a8
    ld c, b
    jr nc, jr_085_63fc

    jr nc, jr_085_63ff

    jr nc, jr_085_6401

    inc h
    ld e, e
    nop
    ld a, a
    add c
    ld a, a
    dec h
    rst $38
    ld a, [hl-]
    push bc
    dec sp
    push bc
    rst $38
    rst $38
    inc bc
    ld h, a
    nop
    ld b, e
    nop
    inc bc
    nop
    nop
    nop
    nop
    ld a, e
    nop
    ld a, h
    inc bc
    db $f4
    inc bc
    sbc b
    ld h, e
    jr jr_085_643d

    cp b
    ld b, e
    ld hl, sp+$03
    jr c, jr_085_6423

    jr c, jr_085_6425

    cp b
    ld b, e
    cp b
    ld b, e
    cp b
    ld b, e
    xor b
    ld d, e
    xor b
    ld d, e
    xor b
    ld d, e
    ret z

    inc sp
    nop
    ld [hl], e
    nop
    ld [hl], e
    nop
    ei
    nop
    ld a, e
    ld [bc], a
    ld a, e
    inc bc

Jump_085_63fb:
    ld sp, hl

jr_085_63fc:
    rst $38
    nop
    rst $38

jr_085_63ff:
    nop
    rst $38

jr_085_6401:
    nop
    ld [hl], e
    xor a
    ld b, e
    cp e
    ld b, e
    cp a
    ld b, e
    cp a
    ld [hl], e
    adc a
    ld [hl], a
    cp e
    ld [hl], a
    db $eb
    ld b, h
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    db $fc
    inc bc
    ld b, $39
    jr nz, jr_085_6436

    sbc $21
    add c
    ld a, [hl]
    rst $38
    rst $38
    rst $38

jr_085_6423:
    rst $38
    rst $38

jr_085_6425:
    rst $38
    add e
    rst $38
    inc bc
    rst $38
    rst $30
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc b
    nop
    inc e
    nop

jr_085_6436:
    ld a, [bc]
    nop
    ld e, $00
    ld e, a
    ld [bc], a
    rst $38

jr_085_643d:
    ld [bc], a
    db $fd
    inc bc
    ld [bc], a
    cp h
    xor $11
    ei
    inc b
    xor c
    ld d, [hl]
    dec b
    cp $05
    cp $05
    cp $85
    ld a, [hl]
    dec b
    cp $05
    cp $04
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc e
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
    inc c
    rst $38
    inc c
    rst $38
    adc h
    rst $38
    adc h
    rst $38
    ld c, h
    rst $38
    adc $ff
    adc $ff
    db $ec
    rst $38
    rst $28
    rst $38
    daa
    rst $38
    ld c, $ff
    rrca
    rst $38
    rra
    rst $38
    ld a, h
    add e
    ld d, b
    xor a
    sbc b
    ld h, a
    db $10
    rst $28
    db $10
    rst $28
    ld [$0cf7], sp
    rst $30
    add b
    rst $38
    add b
    rst $38
    add l
    rst $38
    dec b
    rst $38
    add e
    rst $38
    and c
    rst $38
    ld a, [bc]
    rst $38
    adc c
    rst $38
    add c
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    sbc a
    rst $38
    dec de
    rst $38
    adc a
    rst $38
    inc de
    rst $38
    ld bc, $01ff
    sub c
    ld bc, $5193
    or a
    ld l, a
    sub e
    ld h, a
    sbc e
    inc bc
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    cp $ff
    cp $00
    rst $38
    nop
    inc hl
    nop
    ld b, e
    nop
    inc bc
    nop
    ld bc, $0100
    ld b, $ff
    jr z, @-$27

    ld a, [bc]
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    cp a
    ld [bc], a
    db $ed
    ld [bc], a
    call $c33c
    db $f4
    inc bc
    ld a, h
    add e
    inc [hl]
    rlc h
    ei
    ld [bc], a
    rst $38
    jr @+$01

    adc b
    rst $38
    ld a, [hl-]
    db $ed
    jp c, $ea2f

    sub a
    ld [hl], d
    adc a
    dec sp
    adc $fa
    rst $10
    rst $38
    nop
    rst $38
    nop
    nop

Call_085_6501:
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
    dec b
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    sub c
    ld l, a
    ld a, $81
    db $10
    inc hl
    nop
    ld de, $3bc4
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
    ld hl, sp-$61
    nop
    rrca
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld b, $00
    ld b, a
    ld [bc], a
    adc e
    ld bc, $019e
    db $fc
    ld bc, $91ff
    cp $cb
    cp a
    rst $28
    ld hl, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld b, b
    rst $38
    daa
    rst $38
    ld d, e
    rst $38
    rst $10
    rst $38
    rst $30
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
    add sp, -$01
    dec b
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    ld [bc], a
    ld e, $03
    inc e
    rlca
    inc a
    rlca
    inc e
    rlca
    jr c, @+$11

    inc a
    dec bc
    ld a, b
    rrca
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [rNR33]
    ldh a, [rNR32]
    ldh [$3c], a
    ldh [$3c], a
    ldh [$3c], a
    ret nz

    ld a, h
    ld c, e
    db $e4
    ld b, e
    db $e4
    and e
    call nz, $e483
    jp $83fc


    db $fc
    add d
    db $fd
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nc

    and a
    ret nz

    cp a
    add b
    rst $38
    add b
    rst $38
    ret nz

    cp a
    add b
    rst $38
    ret nz

    cp a
    add b
    rst $38
    ret nz

    cp a
    ret nz

    cp a
    or b
    rst $08
    or h
    set 0, b
    cp a
    sub b
    rst $28
    sub b
    rst $28
    ret nc

    xor a
    sub b
    rst $28
    sub d
    db $ed
    ret nc

    xor a
    jp nc, $90ad

    rst $28
    sub b
    rst $38
    sub h
    ei
    sub [hl]
    push af
    sub $a9
    sub $b9
    call nc, $d4bb
    xor e
    call nz, $84bb
    ei
    ret nc

    xor a
    pop de
    xor [hl]
    rst $30
    ret z

    cp a
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    pop af
    ld c, $ff
    sub b
    db $f4
    db $db
    db $e4
    sbc a
    or h
    res 4, b
    rst $18
    and h
    db $db
    db $e4
    cp e
    ldh [$bf], a
    db $e4
    sbc e
    call nz, $f0fb
    adc a
    or b
    rst $28
    db $ec
    or e
    inc l
    ld d, e
    xor d
    dec d
    nop
    cp a
    add h
    rst $18
    add b
    rst $28
    ld b, b
    rst $30
    ld b, b
    rst $30
    and b
    ld a, e
    ldh [$3d], a
    ld d, b
    ld e, $18
    ld c, $18
    rrca
    inc c
    rlca
    add h
    rlca
    cp $03
    ld a, [hl-]
    rst $20
    ld bc, $01ff
    rst $38
    ld a, a
    add b
    ld a, d
    add l
    inc a
    jp $e11e


    sbc b
    ld h, a
    sub b
    ld l, a
    inc h

Jump_085_663d:
    ei
    ld hl, $20fe
    rst $38
    jr nc, @+$01

    db $10
    rst $38
    jr @+$01

    jr @+$01

    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc c
    rst $38
    ld c, $ff
    ld c, $ff
    ld c, $ff
    ld c, $ff
    rlca
    rst $38
    rlca
    rst $38
    rlca

jr_085_665f:
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
    ld sp, hl
    rst $38
    rla
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld c, b
    or a
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
    ld [bc], a
    db $fd
    ld [hl+], a
    db $dd
    ld a, [hl+]
    push de
    jr z, jr_085_665f

    add hl, sp
    add $ff
    nop
    rst $38
    nop
    ei
    inc b
    cp a
    nop
    cp [hl]
    ld bc, $0176
    xor $11
    xor $11
    db $fc
    inc bc
    ld a, d
    add l
    ld e, [hl]
    and c
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
    ld b, b
    cp a
    ld b, c
    cp [hl]
    nop
    rst $38
    ld b, c
    cp [hl]
    ld b, l
    cp d
    nop
    rst $38
    ld bc, $41ff
    cp [hl]
    ld bc, $41fe
    cp [hl]
    ld bc, $41ff
    cp [hl]
    ld b, c
    cp a
    ld bc, $41fe
    cp [hl]
    ld b, c
    cp [hl]
    ld b, b
    cp a
    pop bc
    ld a, $c2
    dec l
    ld b, c
    cp [hl]
    pop bc
    ld a, $e3
    dec e
    ld bc, $00fb
    db $eb
    nop
    ld h, d
    nop
    ldh a, [rP1]
    ld a, [c]
    nop
    ld sp, hl
    nop
    ld a, l
    nop
    push af
    rst $30
    ld [$00ff], sp
    ld b, c
    cp a
    ld d, c
    xor [hl]
    ld b, c
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    cp [hl]
    inc bc
    db $fc
    ld bc, $41fe
    cp [hl]
    nop
    rst $38
    ld b, l
    cp d
    add b
    ld a, a
    ld b, c
    cp [hl]
    ld b, h
    cp e
    ld de, $85ee
    ld a, d
    sub b
    ld l, a
    sub c
    ld l, [hl]
    sub l
    ld l, d
    push de
    ld a, [hl+]
    db $dd
    ld h, [hl]
    rst $10
    ld l, h
    ld e, l
    and [hl]
    ld e, [hl]
    and c
    ld d, l
    cpl
    sub a
    dec l
    sbc l
    ld h, $df
    dec d
    rst $28
    dec b
    push af
    ld [bc], a
    rst $30
    add c
    ei
    add c
    db $fd
    ld b, c
    cp $40
    cp $20
    rst $38
    jr nz, @+$01

    inc d
    rst $38
    ld [$0aff], sp
    dec b
    rst $38
    ld b, $ff
    ld [bc], a
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    rlca

jr_085_674b:
    rst $38
    dec bc
    rst $38
    rrca
    rst $38
    rlca

jr_085_6751:
    rst $38
    nop
    rst $38
    nop

jr_085_6755:
    rst $38
    ld bc, $00ff
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
    ldh [rIE], a
    ldh [rIE], a
    jr nz, jr_085_6751

    jr nz, jr_085_674b

    db $10
    rst $28
    jr nz, jr_085_6755

    nop
    db $fd
    nop

jr_085_677b:
    db $fd
    nop
    rst $38
    nop
    or $09
    or $09
    or $8e
    ld [hl], c
    ld c, h
    or e
    add $39
    add h
    ld a, e
    ld d, d
    xor l
    ld d, d
    xor l
    ld bc, $00ac
    db $ed
    nop
    db $fd
    nop
    db $ed
    nop
    ld sp, hl
    nop

jr_085_679b:
    ei
    nop
    ei
    nop
    ld sp, hl
    nop
    ld a, [$fe00]
    nop

jr_085_67a5:
    rst $38
    nop
    push af
    add b
    ld [hl], a
    jr nz, jr_085_677b

    add b
    rst $28
    add b
    ld a, a
    nop
    rst $38
    add b
    ld a, a

jr_085_67b4:
    and b
    ld e, a
    and b
    rst $18
    and b
    ld e, l
    jr nz, jr_085_679b

    add b
    ld a, a
    and b
    rst $38
    and b
    rst $18
    and b
    rst $38
    ldh [$bf], a
    and b
    rst $18
    and b
    ld a, a
    and b
    ld e, a
    jr z, jr_085_67a5

    and b
    rst $18
    add l
    ld a, [$56a9]
    and c
    rst $18
    and c
    ld e, a
    and e
    ld e, h
    cp a
    ret c

    rst $38
    ldh [rIE], a
    add b
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
    xor a
    nop
    rst $38
    nop
    add a
    rst $28
    db $10
    rst $20
    jr jr_085_67b4

    ret nz

    cp c
    rst $00
    cp c
    sub $b9
    rst $30
    cp c
    rst $10
    or c
    rst $08
    cp c
    rst $00
    xor c
    sub $89
    or $ab
    ld d, l
    sub c
    rst $28
    or c
    adc $99
    and $b3
    call c, $d5bb
    sbc c
    or $b9
    ld d, [hl]
    dec a
    jp z, $af59

    cp c
    ld c, [hl]
    db $fd
    adc e
    db $db
    cp l
    sbc l
    ld a, [$9dfb]
    cp l
    db $d3
    cp c
    sbc $bd
    ei
    cp l
    db $db
    cp l
    db $db
    db $db
    cp l
    cp e
    call c, $b9ff
    ei
    sbc h
    cp a
    ld a, [$593f]
    cp a
    dec sp
    cp a
    add hl, sp
    rst $18
    add hl, de
    db $eb
    dec c
    rst $28
    adc c
    di
    add a
    ei
    jp Jump_085_63fb


    db $fd
    pop hl
    cp $f0
    cp $d0
    add sp, -$01
    ld hl, sp-$01
    ld [hl], h
    rst $38
    ld a, d
    rst $38
    ld a, d
    rst $38
    add hl, sp
    rst $38
    inc a
    rst $38
    ld l, [hl]
    rst $38
    ld e, $ff
    cpl
    rst $38
    ccf
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc bc
    cp $02
    rst $18
    ld b, d
    rra
    ld [bc], a
    ld e, a
    ld [bc], a
    ld e, a
    ld [bc], a
    ld e, a
    ld [bc], a
    ld a, a
    ld a, [bc]
    rst $10
    ld a, [bc]
    rst $10
    ld [bc], a
    ld c, a
    ld a, [bc]
    rst $00
    ld a, [bc]
    rst $00
    ld [bc], a
    ld a, a
    ld [bc], a
    rst $38
    ld [bc], a
    ld a, a
    ld [bc], a
    ld [hl], l
    ld b, $33
    inc bc
    ld a, $12
    and a
    ld [de], a
    daa
    ld [de], a
    ld a, e
    ld [de], a
    ld a, a
    ld [bc], a
    rst $18
    ld de, $006e
    rst $38
    inc c
    rst $38
    dec a
    sbc $7c
    adc a
    inc a
    rst $08
    ld a, h
    dec hl
    ld a, h
    adc a
    ld a, $f1
    ld a, [hl]
    sub e
    ld a, [hl-]
    rst $30
    db $76
    sbc e
    ld a, a
    or d
    ld a, $db
    ld a, a
    cp d
    ld a, $fb
    dec sp
    sbc $7e
    or e
    ccf
    cp $3e
    ei
    ccf
    sbc $3f
    ld a, [$e77e]
    ccf
    sub $3f
    rst $30
    ld a, a
    add sp, -$01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp [hl]
    ld a, a
    cp [hl]
    ld a, a
    ld a, $ef
    cp [hl]
    ld c, a
    cp [hl]
    ld h, a
    cp [hl]
    ld l, a
    cp [hl]
    ld c, a
    xor a
    ld a, [hl]
    ld l, $df
    cp [hl]
    ld l, a
    ld a, $cb
    cp [hl]
    ld [hl], e
    cp [hl]
    ld d, e
    ld a, $fb
    cp [hl]
    ld l, a
    cp a
    ld h, [hl]
    cp [hl]
    ld h, l
    cp [hl]
    ld h, l
    or [hl]
    ld l, a
    xor [hl]
    rst $30
    cp [hl]
    ld l, a
    cp [hl]
    ld h, a
    xor [hl]
    ld [hl], e
    ld l, $fb
    xor [hl]
    db $db
    ld a, $e9
    xor d
    ld [hl], a
    or [hl]
    db $eb
    xor [hl]
    di
    and [hl]
    ei
    cp [hl]
    db $e3
    cp [hl]
    rst $20
    cp [hl]
    ld h, a
    cp [hl]
    ld l, a
    ld a, [hl]
    xor a
    cp a
    ld l, a
    rst $38
    ld l, $bf
    ld a, [c]
    rst $38
    ld [hl], $3e
    ei
    ccf
    ld a, [$f63f]
    cp [hl]
    ld [hl], e
    cp a
    ld a, [c]
    cp [hl]
    rst $30
    ld a, $7f
    cp [hl]
    dec sp
    cp [hl]
    dec sp
    sbc $1b
    xor $0b
    and $0b
    ld a, [c]
    rlca
    ei
    add d
    ld hl, sp+$43
    db $fc
    ld bc, $20fe
    cp $90
    rst $38
    sub b
    rst $38
    ret z

    rst $38
    ldh [rIE], a
    ld h, h
    inc b
    cp c
    db $10
    db $fd
    db $10
    rst $38
    db $10
    cp [hl]
    db $10
    cp [hl]
    inc d
    ld a, [$ee10]
    db $10
    rst $28
    db $10
    rst $08
    nop
    rst $18
    nop
    ld e, a
    nop
    cpl
    nop
    rst $28
    nop
    rst $28
    nop
    rst $30
    ld b, b
    db $ed
    ld b, b
    cp a
    ld b, b
    xor a
    nop
    rst $28
    nop
    ei
    nop

jr_085_6989:
    rst $38
    ld l, b
    sub a
    nop

jr_085_698d:
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, b
    or a
    ld c, b
    or a
    ld b, b
    cp a
    ld c, b
    push af
    sub b
    ld a, a
    sbc b
    ld [hl], a
    ld e, b
    or a
    db $10
    rst $38
    db $10
    rst $38
    sbc b
    ld [hl], a
    inc [hl]
    db $db
    jr nc, jr_085_6989

    db $10
    rst $38
    jr nc, jr_085_698d

    db $10
    rst $38
    or b
    ld e, a
    sub b
    ld a, a
    or b
    ld e, a
    sbc c
    db $76
    sbc b
    ld [hl], a
    sbc b
    ld [hl], a
    sub e
    ld a, h
    sbc a
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sbc l
    ld a, d
    sbc c
    ld a, [hl]
    sbc e
    ld a, h
    rra
    ld hl, sp-$61
    ld a, l
    sbc [hl]
    ld a, l
    sbc h
    ld a, a
    sbc [hl]
    ld a, l
    sbc h
    ld a, e
    sbc [hl]
    ld sp, hl
    sbc [hl]
    ld [hl], l
    sbc d
    ld [hl], l
    sbc b
    ld h, a
    ld e, $f1
    sbc d
    ld [hl], l
    ld a, [de]
    push af
    ld [de], a
    db $fd
    ld d, $fb
    rra
    ld a, [c]
    ld a, [de]
    rst $38
    dec de
    db $f4
    rra
    db $fc
    ld e, $fd
    ld e, $fd
    ld e, $fd
    ld e, $fd
    dec e
    ld a, [$f51e]
    sbc h
    ld a, e
    sbc [hl]
    ld a, l
    sbc a
    ld a, b
    sbc a
    ld a, d
    rra
    ld a, [$729f]
    sbc [hl]
    ld e, c
    rra
    ld a, [c]
    sbc a
    rst $38
    sbc a
    xor $9f
    cp $9e
    rst $38
    rra
    xor $3f
    sbc $3f
    adc $1f
    cp $bf
    ld c, [hl]
    sbc a
    ld l, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    cp a
    ld e, a
    rra
    rst $38
    ccf
    rst $08
    ccf
    rst $08
    rra
    rst $38
    rst $18
    ccf
    ld a, a
    sbc a
    sbc a
    ld a, a
    rra
    xor $3f
    ld e, l
    sbc a
    dec a
    sbc a
    ld a, $cf
    dec e
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
    jr jr_085_6a73

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_085_6a83

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_085_6a93

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_085_6aa3

    ld [hl-], a

jr_085_6a73:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_085_6ab3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_085_6a83:
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

jr_085_6a93:
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

jr_085_6aa3:
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

jr_085_6ab3:
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
    jr jr_085_6b73

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
    ld l, $2f
    jr nc, @+$33

    ld [hl-], a

jr_085_6b73:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $01
    inc b
    nop
    rlca
    rlca
    dec b
    dec b
    dec b
    ld [bc], a
    ld b, $06
    ld b, $06
    ld b, $06
    ld bc, $0007
    ld [bc], a
    rlca
    dec b
    dec b
    dec b
    dec b
    nop
    ld b, $01
    ld bc, $0101
    ld bc, $0707
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    nop
    ld b, $06
    ld bc, $0101
    ld bc, $0701
    nop
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    nop
    ld b, $01
    ld bc, $0101
    ld bc, $0107
    dec b
    nop
    dec b
    dec b
    dec b
    dec b
    nop
    nop
    rlca
    ld bc, $0101
    ld bc, $0707
    rlca
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0507
    dec b
    dec b
    dec b
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    rlca
    dec b
    rlca
    rlca
    rlca
    rlca
    dec b
    dec b
    dec b
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
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
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    dec b
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    dec b
    dec b
    dec b
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [bc], a
    rlca
    ld bc, $0707
    rlca
    ld bc, $0505
    dec b
    dec b
    nop
    nop
    nop
    nop
    nop
    dec b
    ld bc, $0501
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    nop
    nop
    nop
    nop
    rlca
    ld bc, $0206
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
    rlca
    ld b, $06
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    dec b
    rlca
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    nop
    nop
    nop
    add hl, bc
    ld c, $09
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rrca
    dec c
    dec c
    dec c
    dec c
    dec c
    ld a, [bc]
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rrca
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [$0f0f], sp
    rrca
    rrca
    add hl, bc
    rrca
    rrca
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [$0f0f], sp
    rrca
    rrca
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c

Call_085_6cbf:
    ld [$1857], sp
    db $ed
    ld [hl], d
    ld h, h
    ld a, e
    push hl
    ld a, d
    push af
    ld l, d
    call z, Call_085_4873
    di
    call z, Call_085_7873
    jp $c37c


    ld c, h
    jp $c05f


    ld b, l
    ret nz

    ld c, l
    ret nz

    call z, $cec0
    ret nz

    adc $c0
    xor $c0
    xor $c0
    cp h
    jp nz, $c29c

    sbc l
    jp nz, $c186

    call z, $e683
    add c
    call z, $cb83
    add b
    adc d
    add c
    adc d
    add c
    or b
    add c
    or d
    pop bc
    db $d3
    and b
    ld a, [de]
    pop hl
    ld [de], a
    pop hl
    sub b
    pop hl
    ld de, $11e1
    pop hl
    inc de
    pop hl
    add e
    ld h, c
    sub e
    ld h, c
    sub l
    ld h, e
    sbc l
    ld h, e
    push de
    inc hl
    sub l
    inc hl
    dec d
    inc hl
    rra
    inc bc
    rst $30
    inc bc
    ld l, d
    rla
    ld e, d
    daa
    ld e, d
    daa
    ld a, d
    rlca
    db $76
    inc bc
    ld e, [hl]
    inc hl
    ld a, [hl]
    inc bc
    sbc $23
    ld e, $e3
    ld a, l
    add d
    dec a
    jp nz, $e21d

    dec c
    ld a, [c]
    inc bc
    cp $03
    cp $03
    cp $02
    rst $38
    inc b
    rst $38
    inc b
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
    ld e, a
    and b
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    ret nz

    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    jp c, Jump_085_5e05

    and c
    ld e, $a1
    ld c, $99
    inc c
    or e
    adc l
    ld a, d
    add hl, bc
    or $00
    cp a
    db $10
    xor a
    nop
    rst $38
    ld [$12b7], sp
    db $ed
    ld a, [de]
    push af
    ld [de], a
    rst $28
    ld [de], a
    db $fd
    ld [de], a
    db $fc
    ld [hl-], a
    sbc h
    ld [hl-], a
    rst $18
    ld d, $fb
    ld a, $d5
    ld d, $f9
    inc [hl]
    db $db
    or d
    ld e, l
    cp b
    ld h, a
    ld a, h
    or e
    or h
    ld a, e
    jr nc, @+$01

    ld [hl], h
    cp e
    push af
    ld a, [hl-]
    db $f4
    cp d
    add b
    rst $30
    nop
    and a
    nop
    dec e
    nop
    db $fd
    nop
    xor [hl]
    nop
    ld a, e
    rlca
    rst $38
    ld a, a
    cp b
    rst $38
    ldh a, [$91]
    cp $03
    db $fc
    ld [hl-], a
    call $bf40
    and b
    rst $18
    ldh [rIE], a
    cp $f9
    ld [hl], h
    rst $38
    ld h, [hl]
    jp hl


    ld l, [hl]
    pop hl

jr_085_6dc4:
    jp hl


    ld h, h
    cp a
    ld h, b
    rst $28
    ld h, b
    ld c, a
    ldh [$5f], a
    ldh [rVBK], a
    ldh a, [$c3]
    ld a, h
    bit 6, h
    rst $08
    ld [hl], b
    sbc a
    ld h, b
    rst $18
    ld h, b
    db $fd
    ld b, b
    rst $18
    ld b, b
    ld c, c
    ret nc

    ld a, c
    ret nz

    jr jr_085_6dc4

    adc c
    ldh [$89], a
    ldh [$8c], a
    pop hl
    adc h
    pop hl
    sub [hl]
    jp hl


    db $f4
    adc e
    or l
    res 6, c
    rst $08
    or c
    rst $08
    and c
    rst $18
    add c
    rst $18
    dec l
    db $d3
    rrca
    pop de
    rlca
    reti


    rrca
    pop de
    push bc
    dec de
    db $ed
    inc de
    add hl, hl
    rst $10
    adc c
    ld d, a
    pop hl
    rra
    db $e3
    rra
    ld h, d
    rra
    ld [c], a

jr_085_6e11:
    rra
    jp z, $ca37

    scf
    cp d
    rla
    jp z, $cb37

    scf
    jp nz, Jump_085_4a3f

    or a
    dec [hl]
    ld [bc], a
    cp l
    ld [bc], a
    db $fd
    ld [bc], a
    db $dd
    ld [hl+], a
    reti


    ld h, $f9
    ld b, $d9
    ld h, $d9
    ld h, $00
    daa
    nop
    daa
    nop
    daa
    inc b
    dec hl
    inc b
    dec hl
    inc b
    dec hl
    inc b
    dec hl
    inc b
    dec sp
    inc b
    rst $38
    inc b
    rst $38
    call nz, $ffff
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
    nop
    nop
    nop
    rst $38
    nop
    db $ec
    dec de
    ld l, [hl]
    sbc c
    ld a, [hl-]
    call $ff08
    ld [$19df], sp
    xor $19

jr_085_6e67:
    and [hl]
    jr jr_085_6e11

    ld [$18b7], sp
    rst $28
    jr jr_085_6e67

    db $10
    db $eb
    ld de, $19fe
    db $f4
    ld [de], a
    db $fd
    ld [de], a
    rst $38
    ld [de], a
    db $fd
    db $10
    reti


    db $10
    rst $38
    ld sp, $31de
    sbc $31
    ld a, a
    scf
    ld hl, sp+$3a
    push af
    inc a
    db $eb
    ld a, [hl]
    db $fd
    ld a, a
    or h
    ld a, a
    ldh a, [$7f]
    db $ec
    ld a, a
    xor $ff
    ld l, [hl]
    db $fc
    ld l, e
    ld b, b
    or a
    nop
    rst $38
    nop
    rst $38
    nop
    jp c, $9300

    ld bc, $0faf
    ld a, [hl]
    rst $38
    ld [hl], b
    cp $90
    add sp, $00
    add b
    nop
    db $10
    rst $38
    nop
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or $ff
    inc bc
    rst $38
    ld hl, $c1ff
    ld e, h
    ldh a, [rKEY1]
    ld b, c
    db $ed
    ld d, l
    jp hl


    ld d, c
    db $fd
    pop de
    db $fd
    ld b, c
    db $fd
    push hl
    rst $38
    inc a
    jp $c33c


    ld a, h
    add e
    ld a, h
    add e
    ld a, l
    add d
    ld a, l
    add d
    db $fd
    ld [bc], a
    dec a
    add d
    ld a, l
    add d
    inc a
    add d
    dec l
    sub d
    add hl, sp
    add d
    add hl, sp
    add d
    add hl, sp
    add d
    add hl, sp
    add d
    add hl, sp
    add d
    ld sp, $1182
    add d
    pop bc
    ld [bc], a
    sub c
    ld [bc], a
    pop de
    ld [bc], a
    pop de
    ld [bc], a
    push af
    ld [bc], a
    ld d, c
    add [hl]
    ld sp, $7986
    add [hl]
    ld a, c
    add [hl]
    ld sp, hl
    ld b, $f9
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
    di
    inc c
    di
    inc c
    di
    inc c
    di
    inc c
    di
    inc c
    nop
    inc l
    ld [$0824], sp
    inc h
    ld [$082c], sp
    inc c
    ld [$08dc], sp
    db $fc
    ld [$08fc], sp
    db $fc
    ld [$08fe], sp
    jr c, jr_085_6f37

jr_085_6f37:
    ld e, h
    nop
    call c, $da00
    db $10
    ld hl, sp+$18
    ld a, [c]
    call nc, $903b
    ld a, a
    ld [de], a
    db $fd
    ldh [$1f], a
    ccf
    nop
    nop

jr_085_6f4b:
    nop
    ld [bc], a

jr_085_6f4d:
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
    rst $38
    nop
    jp nc, $10fd

    rst $38
    nop
    rst $38
    cp $21
    cp $01
    or h
    ld c, e
    jr nc, jr_085_6f37

    nop
    rst $38
    jr nz, jr_085_6f4b

    jr nz, jr_085_6f4d

    and b
    ld a, a
    ld h, b
    cp a
    ldh [$3f], a
    jr nz, @+$01

    inc h
    ei
    inc h
    ei
    ld h, h
    cp e
    ld h, b
    cp a
    ldh [$7f], a
    ld [hl], h
    xor e
    ld sp, hl
    ld h, [hl]
    pop hl
    ld a, [hl]
    ldh [$7f], a
    db $e4
    ld a, e
    push af
    xor $ed
    sub $e4
    db $dd
    push hl
    sbc $e5
    ld e, e
    ld h, h
    db $db
    ret nz

    xor a
    nop
    ld a, a
    nop

jr_085_6f9b:
    push af
    nop
    ldh a, [rP1]
    and d
    inc bc
    rst $28
    ccf
    ld a, l
    rst $38
    pop bc
    rst $38
    add h
    rst $38
    ld [hl], b
    sbc a
    nop
    rlca
    ld bc, $000f
    ccf
    rst $38
    db $fd
    rst $38
    add sp, -$01
    scf
    rst $38
    rst $10
    rst $38
    adc h
    rst $38
    and b
    rst $18
    ldh [rIE], a
    rst $20
    ld b, $54
    dec hl
    ld b, l

jr_085_6fc5:
    dec hl
    ld [hl], c

jr_085_6fc7:
    dec c
    ld l, a

jr_085_6fc9:
    dec d
    inc c
    or a
    inc e
    and e
    jr nc, jr_085_6f9b

    inc l
    reti


    inc c
    db $fd
    jr jr_085_6fc5

    jr jr_085_6fc7

    inc c
    ei
    inc c
    ei
    adc [hl]
    ld a, c
    adc [hl]
    ld a, c
    and e
    ld [$0823], sp
    ld h, [hl]
    ld [$0867], sp
    rst $20
    ld [$08d7], sp
    rst $30
    ld [$09f6], sp

jr_085_6ff0:
    rst $30
    ld [$08f7], sp

jr_085_6ff4:
    rst $30
    ld [$08f7], sp
    or a
    ld [$18e7], sp

jr_085_6ffc:
    rst $20
    jr @-$0b

    inc c
    pop hl
    ld e, $e0
    rra
    db $e4
    dec de
    rst $20
    jr jr_085_6ff0

    jr @-$17

    jr jr_085_6ff4

    jr jr_085_6ffc

    ld [de], a
    db $ed
    ld [de], a
    adc h
    ld [hl], e
    xor l
    ld d, d
    xor a
    ld d, b
    db $eb
    inc d
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    db $ed
    ld [de], a
    swap h
    ld l, e
    sub h
    ld c, a
    or b
    ld c, a
    or b
    ld c, a
    or b
    ld e, [hl]
    and c
    ld d, a
    xor b
    nop
    and h
    nop
    xor b
    nop
    cp c
    jr nz, jr_085_6fc9

    jr nz, jr_085_708b

    jr nz, jr_085_7073

    jr nz, @+$7d

    jr nz, jr_085_7089

    or e
    rst $38
    adc l
    rst $38
    cp a
    rst $38
    cp $ff
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    jr nz, jr_085_7052

jr_085_7052:
    ld b, b
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    ld h, $f9
    xor b
    ld [hl], a
    jr nz, @+$01

    ld h, b
    sbc l
    ld b, b
    rst $38
    ld b, b
    xor a
    ld b, b
    rst $38
    ld c, b
    rst $30
    ld b, d
    sbc l
    ld d, d
    xor e
    ld [hl], d
    rst $00
    ld h, d
    sub a
    ld d, d

jr_085_7073:
    xor [hl]
    ld l, [hl]
    sub e
    jp z, $da76

    ld l, a
    ld a, d
    rst $10
    ld a, [hl]
    di
    ld a, [$fe77]
    ld a, e
    cp $7f
    cp $7f
    cp $ff
    rst $38

jr_085_7089:
    cp $ff

jr_085_708b:
    cp $fe
    rst $28
    cp $ff
    ld hl, sp-$01
    ret nz

    xor a
    nop
    rst $18
    nop
    db $fc
    nop
    ld h, c
    nop
    rrca
    rrca
    ld a, a
    rst $38
    ld [hl], b
    add e
    db $fc
    ld bc, $2dfe
    jp nc, $03fc

    ld h, c
    sbc [hl]
    ld c, h
    di
    dec c
    ld a, [c]
    db $dd
    ld [hl+], a
    rra
    rst $38
    ei
    rst $38
    ldh [$df], a
    pop hl
    rst $38
    cp $ff
    pop af
    rst $38
    rra
    rst $38
    jp $399f


    rst $38
    dec hl
    ld a, a
    ld l, e
    cp a
    ld hl, $6bff
    rst $38
    dec sp
    rst $38
    ld [hl], e
    rst $38
    ld h, e
    rst $38
    sbc h
    ld h, e
    sbc h
    ld h, e
    sbc h
    ld h, e
    sbc l
    ld h, d
    sbc h
    ld h, e
    sbc l
    ld h, d
    sbc l
    ld h, d
    sbc l
    ld h, d
    sbc l
    ld h, d
    sbc l
    ld h, d
    cp l
    ld b, d
    cp h
    ld b, d
    cp l
    ld b, d
    cp l
    ld b, d
    cp l
    ld b, d
    cp l
    ld b, d
    cp l
    ld b, d
    sbc l
    ld b, d
    sbc l
    ld b, d
    sbc l
    ld b, d
    sbc l
    ld b, d
    sbc l
    ld b, d
    cp l
    ld b, d
    dec a
    jp nz, $c23d

    add hl, de
    add $39
    add $3b
    call nz, $c43b
    dec de
    call nz, $c413
    ld [hl], e
    add h
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    inc de
    db $e4
    inc de
    db $e4
    dec sp
    call nz, $847b
    ld e, e
    and h
    add b
    inc h
    nop
    add h
    nop
    add h
    nop
    add l
    add h
    ld bc, $8904
    nop
    adc l
    nop
    adc l
    ld a, d
    add l
    ld a, b
    add a
    ld a, d
    add l
    ld a, d
    add l
    ld a, d
    add l
    ld [hl], d
    adc l
    ld [hl], d
    adc l
    ld d, d
    xor l
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
    nop
    nop
    nop
    nop
    inc d
    db $eb
    add sp, $17
    ret nc

    cpl
    ld l, b
    sub a
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ld [$00a7], sp
    db $fd
    nop
    cp $10
    rst $28
    ld [$54f7], sp
    xor e
    inc d
    ld [$f30c], a
    inc d
    jp hl


    ld e, h
    or e
    ld d, h
    sbc e
    inc d
    cp e
    dec d
    ld a, [$f21d]
    dec e
    ld a, [c]
    ld e, l
    or e
    ld e, l
    inc sp
    ld a, e
    push de
    ld a, l
    db $d3
    ld a, a
    pop de
    ld a, e
    sub l
    ei
    dec d
    ld hl, sp+$77
    ret nz

    ccf
    nop
    rst $38
    nop
    ret z

    nop
    add a
    inc bc
    cp a
    rra
    ld a, h
    rst $38
    ldh [$f0], a
    nop
    add b
    nop
    nop
    rst $38
    nop
    rst $38
    ld l, d
    rst $38
    jp Jump_000_2fff


    rst $38
    adc d
    rst $38
    add l
    rst $38
    ld a, [de]
    rst $38
    db $e3
    db $fc
    rst $00
    ld hl, sp+$49
    rst $30
    ld a, a
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    rst $00
    ld hl, sp-$20
    rst $38
    rlca
    ldh a, [rP1]
    or a
    nop
    sbc c
    nop
    sub c
    nop
    ld de, $1300
    nop
    rla
    nop
    rra
    adc $11
    call nz, $ca1b
    dec d
    jp z, $c215

    dec e
    ld [c], a
    dec e
    add sp, $17
    add sp, $17

jr_085_71e0:
    jp hl


    ld d, $ec
    inc de
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    db $e4
    dec de
    call nz, $c93b
    ld [hl], $c5
    ld a, [hl-]
    push de
    ld a, [hl+]
    sub c
    ld l, $91
    ld l, $91
    ld l, $9d
    ld [hl+], a
    sbc l
    ld [hl+], a
    sbc a
    jr nz, jr_085_71e0

    ld [hl+], a
    db $dd
    ld [hl+], a
    reti


    ld [hl+], a
    ld e, c
    and d
    reti


    ld [hl+], a
    reti


    ld [hl+], a
    db $dd
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld h, d
    nop
    ld a, [hl+]
    ld [bc], a
    add sp, $02
    ld [hl], b
    ld [bc], a
    ld [hl], h
    nop
    ld l, [hl]
    nop
    ld l, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    cp $00
    ld l, [hl]
    ld b, h
    ld a, [hl-]
    ld b, h
    cp d
    ld b, h
    cp d
    ld b, h
    cp a
    ld b, h
    cp a
    ld b, h
    cp [hl]
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld b, h
    ld a, $44
    ld a, a
    inc b
    ei
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
    ld e, a
    db $fc
    cp [hl]
    cp h
    ld e, e
    call c, $dcbf
    inc sp
    db $fc
    add a
    xor h
    db $d3
    db $ec
    sbc e
    ret c

    and a
    ret c

    dec a
    sbc h
    ei
    add sp, -$69
    cp [hl]
    pop hl
    cp h
    res 7, d
    call $cdba
    cp [hl]
    reti


    cp $99
    cp $a9
    sbc $f9
    ld a, [$facd]
    db $ed
    ei
    sbc h
    ld a, [$f8ed]
    rst $38
    ret nz

    rst $38
    nop
    db $fc
    nop
    db $eb
    nop
    ld e, [hl]
    rlca
    rst $28
    ld a, a
    ld hl, sp-$01
    add b
    rst $38
    nop
    ld a, d
    nop
    ld bc, $0000
    nop
    nop
    rst $38
    nop
    rst $38
    ld [hl], b
    rst $38
    or d
    rst $38
    jp c, $c7ff

    rst $38
    db $fd
    rst $38
    add hl, bc
    cp $fc
    inc bc
    adc [hl]
    ld a, a
    call nz, Call_085_7efb
    rst $38
    cp $ff
    ld e, a
    rst $28
    ld a, [bc]
    rst $30
    sub a
    rst $38
    inc a
    inc bc
    rra
    jr nz, jr_085_72da

    ld a, [bc]
    ld e, $01
    ld de, $1606
    ld bc, $0314
    rla
    nop
    rlca
    inc sp
    rlca
    ld [hl-], a
    rlca
    ld de, $1207
    rlca
    inc sp

jr_085_72da:
    rlca
    rla
    rlca
    ld [hl-], a
    rlca
    ld sp, $3007
    rlca
    ld [hl-], a
    rlca
    jr nc, jr_085_72ee

    jr nc, jr_085_72ec

    inc [hl]
    inc b
    inc hl

jr_085_72ec:
    dec b
    ld [hl+], a

jr_085_72ee:
    rlca
    jr nz, jr_085_72f8

    jr nz, jr_085_72fa

    jr nz, jr_085_72fc

    ld hl, $2007

jr_085_72f8:
    inc b
    inc hl

jr_085_72fa:
    nop
    daa

jr_085_72fc:
    nop
    daa
    nop
    daa
    ret c

    daa
    ret c

    daa
    ret c

    daa
    ret c

    daa
    reti


    ld h, $d9
    ld h, $d9
    ld h, $db
    inc h
    sbc d
    ld h, l
    sbc d
    ld h, l
    jp c, $9e25

    ld h, c
    sbc [hl]
    ld h, c
    sbc d
    ld h, l
    sbc d
    ld h, l
    sbc b
    ld h, a
    sbc b
    ld h, a
    sbc h
    ld h, e
    sbc b
    ld h, a
    sbc h
    ld h, e
    ld e, $e1
    inc e
    db $e3
    ld e, $e1
    ld d, $e9
    ld d, $e9
    ld [de], a
    db $ed
    ld d, $e9
    ld d, $e9
    ld d, $e9
    ld e, $e1
    ld e, $e1
    db $10
    rst $28
    nop
    rst $20
    nop
    rst $28
    ld b, c
    xor [hl]
    ld b, c
    xor [hl]
    ld c, c
    and [hl]
    nop
    rst $28
    nop
    rst $28
    add hl, bc
    and $00
    ld a, [hl-]
    nop
    dec [hl]
    nop
    ld de, $1e01
    rrca
    cp a
    ld c, a
    db $d3
    ld c, a
    xor c
    ld c, a
    sbc a
    rst $08
    rra
    ld c, a
    sbc a
    rst $08
    ccf
    ld e, a
    xor a
    rst $18
    ld c, a
    rst $18
    ld l, a
    rst $18
    ld l, a
    rst $18
    ld c, $5f
    rst $08
    rst $18
    ld e, a
    ld e, a
    rst $18
    rst $18
    ld a, a
    rst $18
    ld a, a
    rst $18
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    db $eb
    ld a, a
    add sp, $7f
    db $fc
    ld a, a
    ld h, b
    ld a, a
    ldh [$e0], a
    rst $38
    ccf
    ret nz

    ld [hl], a
    adc b
    ld e, a
    and b
    rst $38
    nop
    call c, $c023
    ccf
    add e
    ld a, h
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    sub h
    rst $38
    ld a, a
    rst $38
    cp b
    rst $38
    nop
    rst $38
    rst $08
    ccf
    ld [hl], l
    ld a, [$c1be]
    rst $38
    ret nz

    pop hl
    ld e, $a9
    ld a, [hl]
    ld h, [hl]
    rst $38
    ccf
    rst $38
    db $e4
    rst $38
    rst $18
    cp h
    ld a, a
    ldh a, [rIE]
    db $ec
    rst $38
    ld sp, hl
    ld a, l
    rst $30
    or $ff
    rst $30
    rst $38
    db $fd
    rst $38
    ld [de], a
    db $ed
    nop
    rst $38
    add hl, hl
    cp $e2
    db $fd
    add b
    rst $38
    and b
    rst $38
    push de
    rst $38
    ld a, d
    rst $38
    db $fd
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rla
    rst $38
    ld bc, $04ff
    rst $38
    add b
    ld a, a
    ld bc, $ffff
    rlca
    rst $38
    ccf
    rst $20
    call c, $cd12
    inc c
    di
    inc bc
    cp $02
    cp l
    ld a, [bc]
    or a
    ld [bc], a
    rst $38
    ld a, [bc]
    rst $30
    add d
    ld a, a
    ld [de], a
    db $fd
    inc bc
    cp $02
    rst $38
    ld c, $f9
    ld [bc], a
    rst $38
    ld [bc], a
    db $fd
    ld bc, $02be
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    ld bc, $02be
    ld a, l
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    ld e, a
    nop
    rra
    inc c
    ld [hl], e
    nop
    ld a, a
    inc b
    ld a, e
    ld b, $39
    dec b
    ld a, [hl-]
    rla
    jr z, jr_085_7440

    ld a, [hl-]
    ld b, $79
    dec bc
    db $76

jr_085_7440:
    daa
    ld e, d
    daa
    ld e, h
    rlca
    cp $07
    rst $38
    rlca
    rst $38
    cpl
    call nc, $ec3f
    ld a, a
    cp a
    rra
    ld l, a
    ld a, a
    sbc a
    ld a, a
    sbc a
    rst $38
    ccf
    cp $7f
    ld a, l
    cp $7d
    and $fc
    ld [hl], a
    db $fd
    cp $ff
    db $f4
    rst $38
    cp l
    rst $38
    cp l
    db $fd
    cp a
    rst $38
    db $fd
    db $fd
    cp a
    db $fd
    ccf
    db $fd
    ld a, $bf
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
    cp $f7
    rst $38
    db $ec
    rst $38
    nop
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    dec hl
    call nc, $ffe0
    ld a, [de]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    pop bc
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
    jr nz, @+$01

    nop
    rst $38
    ld h, b
    sbc a
    cp a
    ldh a, [$3f]
    ret nz

    rst $38
    nop
    ccf
    ret nz

    add a
    ld a, b
    ld [hl], a
    adc a
    sub b
    ld a, a
    or [hl]

Call_085_74bb:
    add sp, -$64
    rst $38
    sbc l
    ld h, [hl]
    nop
    rst $38
    inc b
    rst $38
    jr c, @+$01

    cp b
    rst $28
    rst $38
    rst $18
    rst $38
    rst $38
    ldh a, [rIE]
    ret z

    rst $38
    rst $38
    rst $20
    rst $28
    db $fc
    call z, $fdff
    rst $38
    db $fd
    rst $38
    di
    rst $38
    ei
    rst $38
    db $fc
    rst $38
    ld b, e
    db $fc
    add b
    rst $38
    add d
    rst $38
    ld [$e9ff], a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    rst $38
    ld [hl], l
    ld a, a
    push af
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $18
    rst $38
    ld d, a
    ld c, a
    or a
    ld a, a
    rst $00
    rst $30
    dec l
    ld h, l
    cp [hl]
    ld a, l
    adc $5d
    and $df
    db $f4
    ld e, a
    db $e4
    ccf
    rst $00
    ld e, a
    rst $20
    ld d, a
    xor $5f
    rst $20
    ld e, a
    xor a
    ld e, a
    and [hl]
    ld e, a
    rst $28
    ld e, a
    rst $28
    ld e, a
    rst $30
    ld a, a
    rst $08
    ld a, a
    rst $10
    ld a, a
    rst $00
    ld l, a
    sbc $6f
    ld sp, hl
    ld l, a
    cp $7f
    xor $fe
    ld c, a
    cp $e1
    db $fd
    ld a, d
    rst $38
    ld a, b
    db $fd
    jp c, Jump_085_75fe

    ld a, a
    db $e4
    rst $30
    ld c, h
    or $cf
    rst $10
    rst $28
    rst $38
    rst $00
    rst $08
    rst $38
    rst $38
    add a
    rst $38
    rst $08
    rst $08
    rst $38
    ld l, a
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
    ld e, a
    rst $28
    ld e, a
    rst $38
    ld c, a
    ld a, a
    rst $18
    rst $38
    ld e, a
    rst $18
    ld a, a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    ld e, a
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    rst $38
    rst $38
    db $eb
    rst $38
    db $eb
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
    ld [hl], l
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
    add b
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    jr nz, @+$01

    dec hl
    rst $38
    nop
    rst $38
    add b
    rst $38
    inc d
    rst $38
    nop
    rst $38
    ld bc, $04fe
    ei
    inc d
    db $eb
    nop
    rst $38
    dec b
    ld a, [$7689]
    xor $11
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $38
    add c
    dec [hl]
    bit 0, a
    ccf
    ld e, [hl]
    xor a
    adc $1f
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $60fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    xor b
    rst $38
    ld a, b
    rst $38
    ld a, h
    rst $38
    db $fd
    rst $28
    or $ff
    rst $18
    ld sp, hl
    db $fd
    rst $30
    or $ff
    rst $38
    nop
    db $eb
    nop
    rst $08
    rlca
    cp $7f
    ld a, [$e3ff]
    db $dd
    add d
    ld a, a
    ld h, d
    rst $18
    call z, $c833
    ccf
    ret c

    cpl
    adc d
    push af
    adc b
    rst $30
    ret z

    cp a
    adc b
    rst $30

Jump_085_75fe:
    adc b
    rst $30
    xor l
    jp nc, Jump_000_35cb

    ld c, d
    cp l
    ld b, l
    cp d
    ret nc

    ld l, a
    ldh [$df], a
    ret z

    or a
    ret z

    cp a
    ret z

    or a
    ret c

    and a
    sbc b
    rst $28
    call z, $acb3
    db $db
    jp hl


    sub [hl]
    call z, $acb7
    db $db
    xor b
    rst $10
    xor d
    push de
    adc d
    push af
    add [hl]
    rst $38
    add a
    xor $a7
    sbc $8f
    db $fc
    xor h
    rst $10
    adc l
    or $8c
    di
    adc [hl]
    push af
    adc d
    push af
    adc d
    push af
    adc h
    di
    sbc h
    ei
    sbc b
    rst $28
    adc b
    rst $38
    adc b
    rst $38
    ret z

    cp a
    adc b
    rst $38
    adc b
    rst $38
    adc e
    db $fc
    rst $28
    sbc b
    rst $38
    cp $ff
    add sp, -$01
    ret nc

    db $fd
    ld a, [c]
    cp $f1
    rst $38
    adc h
    sbc $b9
    sbc $b1
    db $ec
    sbc e
    cp $d9
    db $fc
    adc a
    db $fd
    xor d
    db $ed
    sbc $ef
    ld sp, hl
    rst $28
    db $dd
    rst $28
    sbc a
    rst $38
    xor [hl]
    rst $28
    sbc b
    xor a
    sbc $af
    rst $38
    rst $38
    rst $08
    rst $28
    cp a
    db $fd
    daa
    rst $38
    cp $ff
    rst $28
    ret nc

    rst $38
    nop
    rst $38
    ld b, h

jr_085_7685:
    cp e
    ld e, a
    and b
    ld a, a
    add b
    ret nc

    cpl
    db $fd
    ld [bc], a
    rst $38
    nop
    nop
    rst $38
    jr nz, @+$01

    ld bc, $00ff
    rst $38
    ld b, b

jr_085_7699:
    rst $38
    dec c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    jr nz, jr_085_7685

    ld de, $04ee
    ei
    ld b, $f9
    ld [hl], h
    adc e
    xor l
    ld d, d
    xor a
    ld [hl], b
    pop de
    ld l, [hl]
    ld [c], a
    db $dd
    sub [hl]
    ld sp, hl
    rst $00
    ld sp, hl
    ccf
    rst $18
    ld l, l
    cp [hl]
    rst $18
    inc a
    dec bc
    ldh a, [rNR11]
    ldh [rSB], a
    ldh [$c2], a
    add hl, sp
    jr nc, jr_085_7699

    nop
    rst $38
    add a
    ld hl, sp+$14
    db $eb
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    ld a, [c]
    rst $38
    ld h, c
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, $f8
    ld a, a
    db $ec
    or e
    and h
    ld e, e
    ld [$84f7], sp
    ld a, e
    add h
    ei
    nop
    rst $38
    adc b
    rst $30
    adc b
    di
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    ld a, $80
    rst $30
    add b
    rst $38
    add b
    ld a, l
    nop
    db $fd
    nop
    db $ed
    nop
    db $ed
    add b
    db $ed
    add b
    ld l, l
    add b
    ld l, l
    add b
    rst $28
    add b
    ld l, a
    add b
    ld a, l
    nop
    rst $28
    nop
    rst $38
    nop
    db $fd
    add h
    ld a, e
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    nop
    cp $80
    ld a, [hl]
    add b
    ld a, a
    add b
    ld a, a
    add h
    ld a, e
    add b
    ld a, a
    add h
    ei
    add b
    ld a, a
    add b
    rst $38
    add h
    ei
    add h
    ei
    add h
    rst $38
    add h
    ld a, a
    inc b
    cp $24
    sbc $8c
    di
    adc h
    di
    add h
    ld sp, hl
    call nz, $c4bb
    cp a
    add h
    rst $38
    add h
    ei
    add h
    ei
    ret z

    scf
    ld b, [hl]
    cp c
    ret z

    scf
    ld [$68f5], sp
    sub l
    db $ec
    sub c
    add l
    ld a, [$ff84]
    add h
    ld a, e
    add h
    ld a, e
    call nz, $84be
    ei
    sub h
    rst $28
    sub h
    rst $28
    add h
    rst $38
    add h
    rst $38
    sub h
    ld l, e
    add l
    cp $95
    xor $c6
    cp l
    adc $b5
    adc $b5

jr_085_777a:
    sub $2d
    ld b, b
    cp a
    rst $38
    db $fc
    inc bc
    rst $38
    jr nz, @-$1f

    rst $18
    jr nz, @+$01

    nop
    ld a, [$5705]
    xor b
    ld e, a
    and b
    rst $38
    nop
    jr nz, @+$01

    add b
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    rra
    ldh [$1f], a
    ldh [rTAC], a
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    nop
    rst $38
    ld b, b
    cp a
    ld e, [hl]
    and c
    add l
    ld a, d
    ld e, l
    and d
    or a
    ld l, h
    rst $30
    ld hl, sp+$71
    cp $80
    rst $38
    and d
    db $fd
    dec d
    db $eb
    db $dd
    inc hl
    rst $38
    inc bc
    rst $38
    inc bc
    xor [hl]
    ld bc, $18e2
    jp $c330


    jr nc, jr_085_777a

    ld b, b
    and $00
    db $e4
    jr jr_085_77eb

    ldh [$f3], a
    nop
    pop de
    nop
    db $fc
    nop
    db $fd
    nop
    db $fd
    ld [bc], a
    ldh [$1f], a
    nop
    rst $38
    ld b, b
    rst $38
    ld d, d
    xor b
    ld d, d
    xor h
    ld [de], a
    db $ed
    nop
    rst $38
    nop
    ld a, [hl]
    db $10

jr_085_77eb:
    ld l, [hl]
    nop
    ld a, l
    nop
    ld [hl], a
    add c
    ld a, [hl]
    add l
    ld a, d
    dec b
    ld a, [$7a85]
    adc l
    ld [hl], d
    cp l
    ld b, d
    dec e
    ld [c], a
    inc e
    db $e3
    nop
    ld l, [hl]
    nop
    cp $00
    cp $00
    ld a, [hl]
    nop
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, l
    ld [bc], a
    ld a, a
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld b, d
    cp a
    ld b, d
    cp a
    ld b, d
    ccf
    nop
    rst $38
    ld b, d
    dec l
    ld [bc], a
    ld d, c
    ld [bc], a
    ld l, a
    ld b, d
    cp a
    ld b, d
    rst $30
    ld b, d
    cp a
    ld [bc], a
    ld [hl], a
    ld [bc], a
    rst $20
    ld [bc], a
    rst $10
    dec de
    and $1e
    db $e3
    ld e, $e3
    ld [de], a
    rst $28
    add [hl]
    ld a, e
    add [hl]
    ld a, e
    add d
    ld a, a
    add d
    ld a, a
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $28
    nop
    inc de
    nop
    db $dd
    nop
    or a
    nop
    sbc a
    nop
    rra
    ld b, b
    cp e
    inc hl
    db $dd
    dec hl
    sub $63
    cp h
    dec hl
    rst $30
    inc hl
    rst $18
    inc hl
    cp $63
    cp [hl]
    xor a
    ld d, d
    ld a, a

jr_085_786b:
    add e
    ld [hl], a
    xor [hl]
    ld a, a
    sbc $6f
    sub [hl]
    ld [hl], e

Call_085_7873:
    xor [hl]
    ld l, a
    ret nc

    ld h, a
    cp b
    ld h, e
    cp [hl]
    ld [hl], a
    xor e
    ld b, e
    cp a
    add b
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    ld b, l
    rst $38
    nop
    rst $38
    inc d
    rst $38
    jr nz, jr_085_786b

    ld hl, $3ede
    ret nz

    dec c
    ldh a, [rNR33]
    ld [c], a
    rst $38
    nop
    ld e, a
    and b
    db $eb
    inc d
    ldh a, [rIF]
    rst $20
    jr jr_085_78a6

    ld hl, sp+$0a
    push af
    inc h
    db $db
    db $d3
    inc l

jr_085_78a6:
    dec sp
    call nz, Call_085_7e81
    ldh [$1f], a
    sbc $21
    cp a
    ld h, b
    rst $00
    ld h, b
    ld a, e
    ret nz

    rst $38
    ret nz

    db $db
    db $fc
    cp b
    rst $38
    ld [hl-], a
    rst $18
    dec sp
    rst $38
    ld hl, sp+$7f
    and b
    nop
    jr nc, jr_085_78c4

jr_085_78c4:
    jr c, jr_085_78c6

jr_085_78c6:
    pop af
    nop
    inc sp
    nop
    ld c, $01
    ld d, $09
    ld c, [hl]
    jr nc, jr_085_78d1

jr_085_78d1:
    nop
    ld bc, $0e00
    ld bc, $0f10
    ldh [$1f], a
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
    db $10
    rst $28
    add hl, bc
    db $76
    ld e, c
    ld h, $b8
    ld b, a
    xor c
    ld d, [hl]
    add hl, hl
    ld d, [hl]
    rst $18
    nop
    rst $28
    db $10
    rst $28
    db $10
    ld c, e
    or h
    ld b, d
    dec a
    xor d
    ld d, l
    ld [$ca15], a
    dec [hl]
    nop
    push af
    nop
    ldh a, [rP1]
    ret nc

    nop
    ret nc

    nop
    sub b
    ld a, a
    ld a, [hl]
    rst $38
    sbc h
    rst $38
    add b
    sbc a
    ldh [$b3], a
    call nz, $c0b3
    or a
    ret nz

    or a
    ret nz

    or a
    ret nz

    rst $30
    add b
    or a
    ret nz

    or a
    ret nz

    inc sp
    ret nz

    inc sp
    ret nz

    or e
    ret nz

    or e
    ret nz

    inc sp
    ret nz

    or e
    ret nz

    scf
    ret nz

    or a
    ret nz

    sbc a
    ldh [$9f], a
    ldh [$98], a
    rst $20
    sbc d
    push hl
    sub a
    ldh [$5b], a
    and b
    ld e, a
    and b
    ldh [$87], a
    ldh [rTAC], a
    ldh [rBGP], a
    ldh [rBGP], a
    ret nz

    ld h, a
    ldh [rBGP], a
    ldh a, [rIF]
    ldh [$5f], a
    ld h, b
    sbc e
    ld h, b
    sbc e
    ld [hl], b
    adc a
    ld h, b
    db $db
    ld d, b
    xor a
    ld a, b
    add a
    ld a, a
    add b
    ld a, e
    add b
    ld [hl], c
    adc d
    ld a, c
    jp nz, Jump_000_00fb

    ld a, e
    ret nz

    ei
    ld h, b
    db $e3
    ld a, b
    db $e3
    ld a, b
    rst $20
    ld hl, sp+$7d
    ld [c], a
    ld [hl], h
    db $eb
    ld a, l
    ld [c], a
    ld a, a
    ldh [$7f], a
    ret nz

    ei
    ld h, b
    ei
    ld h, b
    ld a, b
    ldh [$60], a
    rst $38
    ldh a, [rIE]
    ld a, [hl]
    rst $38
    reti


    daa
    adc b
    nop
    ld h, b
    nop
    rra
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    db $fc
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
    ccf
    ret nz

    inc h
    db $db
    pop bc
    ld a, $3b
    call nz, $e11e
    ld a, [bc]
    push af
    ld a, [c]
    rrca
    ei
    rlca
    sbc a
    ld h, $9c
    ld h, a
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    sbc [hl]
    rst $38
    sub c
    cp $26
    nop
    inc c
    nop
    stop
    sbc $00
    inc h
    jr jr_085_79cb

jr_085_79cb:
    ldh [rP1], a
    inc bc
    nop
    rra
    inc a
    jp Jump_000_1ee0


    nop
    or $00
    cp $00
    ld [c], a
    nop
    ld [c], a
    nop
    or $00
    and [hl]
    ld e, c
    and [hl]
    ld a, e
    add h
    ld a, [hl]
    add b
    scf
    ret z

    ld a, c
    add b
    ld hl, sp+$02
    ld a, b
    add d
    dec a
    add d
    add [hl]
    ei
    xor a
    ret nc

    and h
    rst $18
    ld h, h
    db $f4
    adc h
    add d
    ld c, h
    add b
    ld b, h
    add l
    db $fd
    cp [hl]
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ldh a, [rIE]
    ld h, c
    cp $1e
    ldh [$de], a
    ld bc, $fc63
    ccf
    ret nz

    sbc a
    ld h, b
    ld e, a
    and b
    rrca
    ldh a, [$9d]
    ld h, d
    rra
    ldh [$1f], a
    ldh [$cd], a
    ld [hl-], a
    ld c, a
    or b
    ccf
    ret nz

    ld d, e
    xor h
    rra
    ldh [$37], a
    ret z

    rlca
    ld hl, sp+$05
    ld a, [$ee11]
    rlca
    ld hl, sp+$00
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ld b, $f9
    add hl, bc
    or $00
    rst $38
    ld bc, $01fe
    cp $01
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
    ld b, h
    cp e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    push af
    rst $38
    rst $38
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    and b
    rst $38
    db $f4
    rst $38
    ld hl, sp-$01
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add l
    rst $38
    rla
    rst $38
    inc h
    rst $38
    add b
    rst $38
    add sp, -$01
    di
    rra

jr_085_7a80:
    nop
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld h, c
    rra
    ld h, c
    nop
    ld h, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    cp $01
    rst $38
    nop
    ccf
    ret nz

    dec b
    ld a, [$5ba4]
    cp e
    ld b, h
    rst $10
    jr z, jr_085_7abe

    ldh a, [$c0]
    ccf
    db $ec
    inc sp
    ld e, a
    ldh [rIE], a
    ret nz

    ld a, a
    add b
    rst $38
    nop
    ld l, a
    or b

jr_085_7abe:
    rst $00
    ld hl, sp+$01
    ld [bc], a
    inc [hl]
    ld [$40b0], sp
    add e
    ld bc, $0f0f
    ld [hl], h
    ld a, a
    call c, Call_000_18ff
    rst $38
    ret nc

    cpl
    db $10
    rst $28
    db $10
    ld l, e
    db $10
    ld l, c
    nop
    ld a, c
    db $10
    ld hl, $2008
    ld [$0800], sp
    rst $38
    xor b
    ld e, a
    jr z, @-$1f

    ld l, b
    sbc a
    ld l, a
    sbc b
    sbc $09
    reti


    ld [$18e9], sp
    ld c, b
    inc e
    jr jr_085_7a80

    rst $18
    adc b
    rst $18
    adc b
    sbc a
    call c, $dc9f
    cp a
    db $fc
    ccf
    ld a, $c1
    ld a, $81
    ld a, [hl]
    add a
    ld a, a
    add b
    rst $38
    ld e, $e0
    ret nz

    nop
    rra
    nop
    pop hl
    nop
    cp $01
    cp $01
    rst $38
    ld bc, $01fe
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    rst $18
    ld hl, $01ff
    cp $01
    cp $01
    cp $01
    cp $01
    rst $38
    nop
    ld a, a
    add b
    xor a
    rst $38
    pop af
    rst $38
    ld bc, $ffff
    ld bc, $01ff
    cp d
    ld b, l
    or a
    ld c, c
    cp [hl]
    ld b, c
    ld c, a
    or c
    cp [hl]
    ld b, c
    inc c
    di
    ld [de], a
    db $ed
    ld [$16f7], sp
    jp hl


    rst $38
    nop
    rst $28
    nop
    rst $38
    nop
    ld b, b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld h, b
    rst $38
    db $10
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
    ldh [rIE], a
    ldh [rIE], a
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor a
    rst $38
    adc $ff
    adc l
    rst $38
    nop
    dec bc
    ld b, b
    or b
    nop
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    ccf
    ld b, a
    ld bc, $7800

jr_085_7b8f:
    nop
    ld c, h
    inc bc
    ld e, h
    nop
    rlca
    ld [$0010], sp
    ret nc

    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    and a
    ld e, b
    db $fc
    inc bc
    ld a, a
    add b
    rst $38
    nop
    ccf
    ret nz

    and e
    ld e, h
    jr nz, @-$1f

    jp hl


    ld d, $88
    ld [hl], a
    nop
    rst $38
    db $e4
    rra
    ld a, b
    add a
    rst $38
    nop
    cp $01
    rst $28
    db $10
    cp $01
    jr jr_085_7bc6

    db $10
    inc b
    ld h, b
    dec b

jr_085_7bc6:
    ret nz

    jr nz, jr_085_7bca

    daa

jr_085_7bca:
    nop

jr_085_7bcb:
    call nz, Call_085_6501
    ld bc, $4065
    or h
    ld b, h
    or d
    ld b, b
    cp d
    ld b, b
    cp b
    ld h, b
    sbc h
    ld h, b
    sub h
    ld h, b
    inc d
    ld h, b
    nop
    ld h, h
    db $eb
    jr z, jr_085_7bcb

    ld [hl], b
    and a
    jr c, jr_085_7b8f

    cp d
    daa
    ld h, $23
    ld h, $23
    ld h, $23
    dec hl
    inc sp
    xor e
    inc sp
    and e
    inc sp
    or e
    inc sp
    di
    inc sp
    sub e
    inc sp
    cp e
    dec sp
    ei
    dec sp
    ld sp, $31ff
    rst $38
    pop af
    rst $38
    ld sp, $f1ff
    ccf
    pop hl
    ccf
    pop hl
    ccf
    pop hl
    ccf
    pop hl
    ccf
    pop hl
    ccf
    pop hl
    ccf
    pop hl
    ccf
    pop hl
    ccf
    pop hl
    ccf
    pop de
    ccf
    pop af
    ccf
    pop de
    ccf
    pop de
    ccf
    pop de
    ccf
    pop de
    ccf
    pop de
    ccf
    pop de
    ccf
    pop de
    ccf
    pop de
    ccf
    ret nc

    ccf
    pop af
    rra
    pop af
    rra
    pop af
    rra
    ld [hl], c
    sbc a
    or c
    ld e, a
    pop af
    rra
    ld a, b
    sbc a
    ldh a, [$9f]
    ld hl, sp-$61
    ld hl, sp-$61
    ld hl, sp-$61
    ret c

    cp a

jr_085_7c4a:
    sbc b
    rst $38
    ret c

    cp a
    ret c

    cp a
    ld l, a
    sbc b
    ld l, a
    sbc b
    ld l, a
    sbc b
    ld l, a
    sbc b

jr_085_7c58:
    rst $28
    jr jr_085_7c4a

    jr jr_085_7c58

    inc c
    ld l, e
    sbc h
    sbc h
    adc e
    adc b
    rrca
    adc h
    rrca
    adc h
    adc [hl]
    adc h
    adc [hl]
    sbc h
    ld c, $dc
    ld a, [bc]
    cp h
    adc l
    call c, $cc0e
    dec c
    cp h
    rrca
    cp h
    rrca
    db $fc
    rlca
    db $fc
    rrca
    db $dd
    ld c, $dc
    rlca
    inc d
    rst $28
    inc [hl]
    ld c, a
    add a
    ld a, l
    rrca
    db $fd
    rlca
    db $fd
    db $fd
    rst $38
    rst $38
    rlca
    ld b, $01
    add a
    ld a, c
    or l
    dec bc
    cp $01
    rla
    ld bc, $0100
    add sp, $01
    rst $30
    add hl, bc

jr_085_7c9e:
    ld hl, sp+$07
    rst $38
    nop
    ld c, h
    or e
    pop bc
    ccf
    cp $01
    rst $38
    nop
    rst $38
    nop
    rla
    add sp, $02
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_085_7cb4:
    nop
    rst $38
    ld a, b
    rst $38
    add hl, bc
    rst $38
    or e
    ld c, a
    ld [$2015], a
    rst $18
    ld b, l
    cp b
    db $ed
    db $10

jr_085_7cc4:
    swap h
    adc a
    ld [hl], b
    adc l
    ld [hl], b

jr_085_7cca:
    adc $30

jr_085_7ccc:
    rst $08
    jr nc, jr_085_7c9e

    jr nc, jr_085_7d0a

    cp $36
    ld sp, hl
    nop
    rst $38

jr_085_7cd6:
    ld d, b
    rrca
    sbc c
    ld a, a

jr_085_7cda:
    jr @+$01

jr_085_7cdc:
    db $10
    rst $38

jr_085_7cde:
    jr @+$01

jr_085_7ce0:
    rst $20
    jr jr_085_7cca

    jr jr_085_7ccc

    jr jr_085_7cd6

    db $10
    rst $28
    db $10
    rst $00
    jr c, jr_085_7cc4

    jr z, jr_085_7cd6

    jr jr_085_7cb4

    jr c, jr_085_7cda

    jr jr_085_7cdc

    jr jr_085_7cde

    jr jr_085_7ce0

    jr @-$17

    jr @-$07

    ld [$d827], sp
    sub a
    ld l, b
    and a
    ld e, b
    rst $30
    ld [$08f7], sp
    ld [hl], e
    adc h

jr_085_7d0a:
    di
    inc c
    or e
    ld c, h
    add d
    ld a, l
    sub d
    ld l, l
    or b
    ld c, a
    ldh a, [rIF]
    ld [c], a
    dec e
    ld [c], a
    dec e
    ld a, [c]
    dec c
    di
    inc c
    or e
    ld c, h
    cp e
    ld b, h
    cp d
    ld b, h
    cp e
    ld b, h
    ei

jr_085_7d27:
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    add hl, hl
    sub $39
    add $39
    add $39
    add $68
    sub a
    ld h, b
    sbc a
    nop
    rst $38
    nop
    rst $38
    jr jr_085_7d27

    nop
    rst $20
    nop
    rst $18
    add b
    ld e, e
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $30
    nop
    rlca
    nop
    adc a
    nop
    ld a, e
    nop
    rst $38
    nop
    ld a, [c]
    nop
    push de
    nop
    ld c, [hl]
    add $39
    jp nc, $626f

    call c, $dd62
    ld d, d
    xor l
    ld b, d
    or l
    pop de
    ld l, $d9
    daa
    ld c, c
    cp a
    ld d, e
    db $ed
    ld a, c
    rst $10
    ld [hl], c
    rst $18
    di
    ld e, l
    ld d, a
    jp hl


jr_085_7d76:
    ld l, a
    pop de
    ld e, e
    push hl
    db $fd
    ld c, e
    ld a, c
    rst $38
    ei
    ld a, l
    db $fd
    ld [hl], d
    rst $38
    ld a, l
    rst $38
    ld a, h
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    pop af
    ei
    db $f4
    cp $f1
    rst $38
    and $c0
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld [$f4d5], a
    db $eb
    ccf
    rst $18
    ld sp, hl
    ld b, $7f
    nop
    rst $38
    nop
    ld a, $01
    rra
    nop
    rrca
    nop

jr_085_7dae:
    sbc a
    nop

jr_085_7db0:
    ld e, b
    rst $38

jr_085_7db2:
    ld c, $ff

jr_085_7db4:
    inc de
    rst $38

jr_085_7db6:
    daa
    rst $38

jr_085_7db8:
    ld a, [$3eff]
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38

jr_085_7dc0:
    ei
    inc b
    dec e
    ld [c], a
    dec de
    db $e4
    dec de
    db $e4
    sbc a
    ld h, b
    cp a
    ld b, b
    rst $38
    nop
    ld c, [hl]
    jr nz, jr_085_7e10

    nop
    sbc l
    ld h, d
    rst $18
    jr nz, jr_085_7d76

    ld h, b
    push de

jr_085_7dd9:
    ld a, [hl+]
    ld d, a
    xor b
    rst $00
    jr c, jr_085_7dae

    jr nc, jr_085_7db0

    jr nc, jr_085_7e32

    or b
    rst $08
    jr nc, jr_085_7db6

    jr nc, jr_085_7db8

    jr nc, jr_085_7db2

    jr c, jr_085_7db4

    jr c, jr_085_7db6

    jr c, jr_085_7dc0

    jr nc, jr_085_7dd9

    add hl, de
    and [hl]
    ld e, c
    adc $31
    add $39
    adc $31
    adc $31
    and $19

jr_085_7e00:
    xor $11
    xor $11

jr_085_7e04:
    xor $11
    and $19
    xor [hl]
    ld de, $11ee
    db $e3

jr_085_7e0d:
    inc e
    di
    inc c

jr_085_7e10:
    and $19
    and $19
    rst $20
    jr jr_085_7e0d

    add hl, bc
    and $19
    rst $20
    jr jr_085_7e00

    inc e
    rst $20
    jr jr_085_7e04

    inc e
    db $e3
    inc e
    db $eb
    inc e
    xor d
    ld e, l
    ld [$fa1d], a
    dec c
    ldh a, [rIF]
    ldh a, [rIF]
    nop
    rrca

jr_085_7e32:
    nop
    rrca
    nop
    rrca
    inc b
    ld c, e
    inc b
    ld c, e
    inc b
    ld c, e
    inc b
    ld l, a
    inc b
    ld a, a
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $18
    ld b, $fd
    ld [bc], a
    db $ed
    nop
    ld l, b
    nop
    ret nc

    nop
    di
    nop
    pop bc
    nop
    add e
    nop
    adc c
    nop
    dec bc
    ld [bc], a
    ld l, l
    rlca
    db $ec
    ld b, $fb
    ld d, $eb
    ld d, $eb
    ld [bc], a
    rst $38
    inc bc
    db $fc
    daa
    jp nc, $d722

    ld [de], a
    rst $28
    ld [de], a
    rst $28
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc bc
    sbc $13
    xor $03
    push af
    inc de
    rst $28
    inc bc
    db $fd
    inc bc

jr_085_7e7d:
    db $fd
    add e
    ld a, [hl]
    rlca

Call_085_7e81:
    jp hl


    adc e
    ld [hl], l
    adc e
    dec a
    adc e
    ld [hl], l
    adc c
    ld a, a
    adc a
    ld a, c
    adc c
    rst $38
    adc c
    rst $30
    adc c
    ld [hl], a
    adc l
    ei
    rrca
    db $fd
    ld bc, $00ff
    rst $38
    ld [bc], a
    db $fd
    jr nz, jr_085_7e7d

    cp h

jr_085_7e9f:
    ld b, e
    ld b, e
    cp h
    db $fd
    ld a, [$07f7]
    ld a, $00
    ld [$1000], a
    nop
    ld bc, $0000
    nop
    nop

Jump_085_7eb1:
    rst $38
    ld b, d
    rst $38
    ld [hl], c
    rst $38
    ld l, e
    rst $38
    ld [$a6ff], a
    rst $38
    ld e, [hl]
    rst $38
    ld e, a
    rst $38
    ld b, b
    and b
    nop
    ld l, e
    nop
    jp hl


    nop

jr_085_7ec7:
    and c
    nop
    ld h, $40
    inc [hl]
    nop
    ld [hl], a
    nop
    rlca
    ld b, b
    ld a, a
    ld b, b
    ld [hl], c
    ld b, b
    ld a, a
    nop
    ld a, a
    ld b, b
    ccf
    nop
    ld a, a
    nop
    ld a, a
    jr nz, jr_085_7f2f

    ld [hl+], a
    ld a, l
    jr nz, jr_085_7f13

    jr nz, @+$39

    jr nz, jr_085_7f1f

    jr nz, @+$39

    jr nz, jr_085_7f03

    jr nz, @+$39

    jr nz, @+$34

    jr nz, jr_085_7f44

    jr nz, @+$5b

    jr nz, jr_085_7ec7

    jr nc, jr_085_7e9f

    jr nc, @-$53

    db $10

Call_085_7efb:
    cp c
    db $10
    xor e
    jr jr_085_7f27

    call c, $d03b

jr_085_7f03:
    ccf
    ret nc

    ccf
    ld d, b
    cp a
    ret nc

    ccf
    sub b
    ld a, a
    add b
    ld a, a
    db $10
    rst $38
    nop
    rst $38
    db $10

jr_085_7f13:
    rst $38
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    cp a
    ld [$00b7], sp

jr_085_7f1f:
    cp a
    ld [$08bf], sp
    sbc a
    ld [$08bf], sp

jr_085_7f27:
    rst $38
    inc c
    ei
    add hl, bc
    rst $38
    add hl, bc
    cp $48

jr_085_7f2f:
    cp a
    inc c
    ei
    dec bc
    db $fc
    ld c, [hl]
    cp l
    ld c, l
    cp [hl]
    ld c, l
    or [hl]
    dec c
    or $0d
    rst $38
    rrca
    pop af
    dec l
    jp c, $c53f

jr_085_7f44:
    cpl
    db $dd
    rst $38
    ld a, a
    xor c
    ld d, [hl]
    nop
    ld e, a
    ld [$00f7], sp
    ld d, a
    ld b, b
    cp b
    add sp, $15
    nop
    ei
    nop
    push de
    ld e, d
    and l
    cpl
    rst $10
    rst $00
    ld a, $46
    cp a
    ld d, a
    xor $47
    cp $06
    rst $38
    ld c, [hl]
    or e
    ld b, e
    cp [hl]
    ld b, e
    cp $47
    ld a, [$fa47]
    ld b, e
    cp [hl]
    rst $00
    ld a, [hl-]
    ld b, e
    rst $38
    jp $c37f


    ccf
    ld b, e
    cp $43
    cp a
    xor e
    ld d, [hl]
    and e
    ld e, a
    rst $20
    dec sp
    db $e3
    ld e, a
    ld b, e
    cp a
    and e
    ld e, a
    daa
    rst $18
    rst $20
    dec de
    and a
    ld e, e
    add e
    ld a, a
    and e
    ld e, a
    and e
    rst $18
    ld h, e
    sbc a
    inc bc
    db $fd
    ld [hl], b
    adc a
    ld [bc], a
    db $fd
    add b
    ld a, a
    or h
    ld c, e
    ld c, a
    or b
    ld a, [$1fe5]
    rra
    add e
    nop
    nop
    nop
    jr z, jr_085_7fae

jr_085_7fae:
    daa
    nop
    ld [$07ff], sp
    rst $38
    ld l, $ff
    adc e

jr_085_7fb7:
    rst $38
    ld a, [hl]
    rst $38
    adc b
    rst $38
    ld l, [hl]
    rst $38
    adc e
    rst $38
    nop
    call c, $f800
    add b
    ld b, h
    nop
    add h
    nop
    pop bc
    nop
    rla
    nop
    rst $18
    ret nz

    ld a, a
    nop
    rst $08
    ld b, b
    rst $38
    ld b, b
    rst $28
    ld b, b
    rst $20
    ld b, b
    rst $20
    ld b, b
    rst $28
    ld b, b
    ccf
    nop
    ld a, a
    jr nz, @+$61

    jr nz, @+$61

    jr nz, @+$61

    jr nz, @+$61

    jr nz, @+$61

    jr nz, @+$41

    jr nz, @+$41

    jr nz, @+$41

    jr nz, @+$41

    jr nz, @+$21

    jr nc, @+$11

    db $10
    ccf
    db $10
    ccf
    jr nc, @+$21

    jr @-$47

    jr jr_085_7fb7
