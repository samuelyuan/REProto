SECTION "ROM Bank $056", ROMX[$4000], BANK[$56]

    adc h
    adc h
    add b
    add a
    adc b
    adc b
    ret nz

    rst $18
    cp a
    ret nz

    ccf
    ret nz

    db $18, $e7
    ld bc, $d0f5
    rrca
    ret nz

    ld b, $84
    nop
    ret c

    nop
    sbc c
    nop
    pop hl
    nop
    ld [bc], a
    ld bc, $0300
    ld sp, hl
    ld bc, $f502
    rst $00
    jr c, @-$03

    inc b
    rst $38
    nop
    rst $38
    nop
    sbc a
    ld h, b
    sbc a
    ld h, b
    ret z

    rst $38
    rst $00
    rst $38
    xor a
    rst $38
    push de
    rst $38
    cp $ff
    rst $30
    rst $38
    cp $ff
    rst $30
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    ld d, c
    rst $38
    add b
    rst $38
    ld d, l
    rst $38
    cp d
    rst $38
    ld e, l
    rst $38
    cp $ff
    rst $30
    rst $38
    xor e
    rst $38
    ld b, l
    rst $38
    jr nz, @+$01

    ld c, b
    rst $38
    and [hl]
    rst $38
    add $ff
    add d
    rst $38
    ld h, a
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
    add a
    rst $38
    add e
    rst $38
    ld b, e
    cp a
    inc bc
    rst $38
    dec b

jr_056_407f:
    rst $38
    adc d
    rst $38
    add e
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop

jr_056_408b:
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra

jr_056_4091:
    rra
    rrca
    rrca
    rra
    rra
    rst $38
    rst $38
    rst $30
    rst $38
    ld sp, hl
    rst $38
    ld a, [$faff]
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    sbc a
    ldh [$1f], a
    ret nc

    cpl
    jr nz, jr_056_408b

    nop
    rst $38
    jr nc, jr_056_407f

    ld c, d
    ld a, e
    add sp, -$02
    ld b, d
    ei
    call $f0de
    pop af
    ld a, a
    ld a, a
    ld [hl], d
    ld a, [$fc70]
    ldh [$e0], a
    rst $38
    rst $38
    jr nc, jr_056_4091

    rst $38
    nop
    or $09
    ld b, b
    xor b
    rst $38
    rst $38
    daa
    and a
    ld [bc], a
    dec sp
    cp $01
    ld hl, sp+$00
    dec de
    db $db
    xor $21
    ld e, $e0
    ld [hl], $c6
    ld l, a
    sbc a
    rst $28
    rrca
    rlca
    add a
    ld [$1fb7], sp
    ldh [$3e], a
    pop bc
    or b
    or a
    ld sp, hl
    ld sp, hl
    db $fd
    db $fd
    ldh a, [$f6]
    and $ee
    rst $38
    rst $38
    ldh [$e7], a
    add $c0
    ld a, b
    ld a, b
    ld a, h
    ld a, l
    db $fc
    db $fd
    cp $fe
    ld a, [hl]
    ld a, [hl]
    ldh [$ec], a
    nop
    sbc $00
    db $fc
    inc b
    push af
    ld a, h
    ld a, l
    ld a, h
    ld a, l
    cp b
    cp b
    rrca
    rst $38
    rlca
    rst $30
    dec c
    rst $28
    ld a, c
    ld a, e
    ldh a, [$f7]
    ld sp, hl
    rst $38
    reti


    ei
    ld b, $f8
    add h
    ld a, b
    stop
    ld bc, $0700
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    di
    rst $38
    db $f4
    rst $38
    db $eb
    rst $38
    db $dd
    rst $38
    ld a, [$7bff]
    rst $38
    ei
    rst $38
    ld a, a
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ld [hl], l
    rst $38
    jr nz, @+$01

    ld e, l
    rst $38
    xor [hl]
    rst $38
    ld e, a
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    ld [$41ff], a
    rst $38
    jr nz, @+$01

    inc b
    rst $38
    nop
    rst $38
    ld c, $f1
    inc h

jr_056_4161:
    db $db
    inc d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_056_4177:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, l
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld bc, $0cff
    di
    nop
    rst $38
    nop
    rst $38
    ld sp, $22cf
    db $dd
    ld b, b
    rst $38
    inc de
    rst $28
    jr c, @-$37

    jr c, jr_056_4161

    ld [hl], a
    adc b
    ld b, b
    cp a
    pop bc
    ld a, $e0
    rra
    ld e, h
    and e
    inc b
    ei
    jr nc, jr_056_4177

    ld hl, sp+$07
    ldh [$1f], a
    and $19

jr_056_41ae:
    db $fd
    ld [bc], a
    nop
    db $fd

jr_056_41b2:
    jr nc, jr_056_41b2

    and [hl]
    ld l, [hl]
    ld a, [bc]
    or $01

Jump_056_41b9:
    db $fd
    inc hl
    rst $38
    inc h
    db $e4
    rra
    rst $18
    inc e
    call c, $ffff
    dec sp
    ld a, e
    ld h, b
    ld bc, $8a75
    ld a, c
    ld b, $81
    add d
    call z, Call_000_00cc
    add d
    nop
    adc $00
    ld a, $db
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    rra
    ld a, a
    rra
    rra
    or c
    call $8678
    jr jr_056_41ae

    inc e
    db $e3
    ld sp, $87cd
    add a
    cp a
    cp a
    inc e
    inc e
    inc de
    ld [hl], e
    rra
    rst $38
    dec de
    db $db
    ld bc, $008f
    rrca
    nop
    rst $30
    nop
    cp $07
    daa
    ld e, a
    ld e, a
    ld h, b
    ld l, l
    nop
    inc a
    inc bc
    or e
    inc bc
    ei
    rlca
    rst $30
    rrca
    rst $38
    ldh [$1f], a
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    jp $feff


    rst $38
    inc c
    ld a, [hl]
    ldh a, [$08]
    pop hl
    dec e
    ld hl, sp+$04
    ldh [rNR33], a
    db $e3
    inc e
    ldh a, [rIF]
    ld sp, hl
    ld b, $f8
    rst $38
    di
    rst $38
    cp a
    rst $38
    ld b, a
    rst $38
    ld [hl+], a
    rst $38
    ld d, a
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    cp e
    rst $38
    rst $38
    rst $38
    cp e
    rst $38
    ld [hl], c
    rst $38
    jr nz, @+$01

    ld d, l
    rst $38
    xor [hl]
    rst $38
    dec e
    rst $38
    cp $ff
    rst $30
    rst $38
    ei
    rst $38
    inc d
    rst $38
    ld [bc], a
    rst $38
    rla
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld a, $ff
    ld b, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    jp $83ff


    rst $38
    add c
    rst $38
    add a
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    db $e3
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
    rst $38
    sbc a
    db $e3
    rst $38
    add e
    ld a, a
    add e
    jp $933f


    ld l, a
    inc de
    rst $28
    ld a, c
    add a
    inc bc
    rst $38
    inc bc
    rst $38
    inc hl
    rst $18
    inc hl
    rst $18
    inc bc
    rst $38
    ld sp, $d1cf
    cpl
    reti


    daa
    add e
    ld a, a
    inc de
    rst $28
    inc bc
    rst $38
    add e
    ld a, a
    inc hl
    and a
    cp a
    cp a
    ld h, e
    ld l, e
    add e
    sbc e
    sbc e
    ld b, a
    ld a, e
    add a
    rst $20
    inc bc
    ld c, l
    inc bc
    ld c, e
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    adc e
    ccf
    and a
    dec de
    or a
    inc bc
    rst $00
    ccf
    rlca
    rst $38
    scf
    rst $38
    rrca
    rst $38
    ld a, a
    adc a
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    inc bc
    dec de
    rst $20
    ccf
    rst $08
    ld a, a
    rst $38
    di
    ldh a, [rPCM34]
    ld hl, sp+$3d
    cp $7e
    db $fc
    ld l, c
    ldh a, [$f0]
    ldh [$e0], a
    ldh a, [$fc]
    db $f4
    add b
    ret nz

    ret nz

Jump_056_4303:
    ldh [$c2], a
    pop bc
    adc [hl]
    pop bc
    inc de
    adc h
    scf
    sbc b
    cp c
    or $e3
    or $3f
    rst $38
    ccf
    rst $38
    ld de, $7fef
    rst $28
    cp a
    ld a, a
    rlca
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ld sp, hl
    ld a, $b2
    ld a, h
    ld [$fff4], sp
    ld b, $dd
    inc hl
    rlca
    ld bc, $0700
    inc b
    inc bc
    rst $18
    ccf
    cp a
    rst $18
    rst $38
    rst $18
    rst $28
    sbc $de
    cp $d4
    ei
    ldh a, [$fe]
    ldh a, [$fe]
    ldh [$f6], a
    ldh [$ee], a
    cp $ec
    db $fc
    rst $38
    db $fd
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    rst $30
    rst $38
    ld a, e
    rst $38
    db $e3
    rst $38
    ld l, a
    rst $38
    ld e, a
    rst $38
    ld l, a
    rst $38

jr_056_4360:
    add e
    call c, $ff81
    pop hl
    ld sp, hl
    pop hl
    pop hl
    db $e3
    pop af
    push bc
    ei
    nop
    ld sp, hl
    dec b
    ld hl, sp-$01
    ld bc, $8b47
    rlca
    inc bc
    add hl, bc
    rst $10
    ld bc, $0081
    rrca
    dec a
    ld e, [hl]
    ld a, $5f
    ld a, $5f
    rst $20
    ld e, $5b
    and h
    add b
    ld a, a
    ld e, h
    cp a
    cp e
    ld a, a
    jr @+$01

    ld [de], a
    ld sp, hl
    cp e
    db $d3
    ccf
    rst $30
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $20
    cp $c4
    rst $38
    call nz, Call_000_07ff
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    ld [hl], $ff
    db $76
    cp $3e
    rst $38
    ld b, b
    sbc [hl]
    adc h
    db $10
    ld a, c
    db $f4
    db $e4
    ret c

    ld hl, sp-$80
    cp l
    ret nz

    ld e, [hl]
    add c
    rlca
    ei
    inc de
    db $ec
    nop
    db $fc
    inc b
    ld a, [$1fa4]
    rla
    ld c, $80
    ld a, $00
    ld a, [$f2c9]
    sbc b
    rst $20
    inc sp
    call nz, Call_056_50a1
    ret nc

    jr nz, jr_056_4360

    ld b, d
    cpl
    ret nz

    rst $00
    ldh [rIF], a
    ldh [$84], a
    ld a, c
    sub a
    ld l, b
    ld e, d
    cp h
    ld e, [hl]
    ccf
    ld h, e
    rra
    dec bc
    add a
    ld l, e
    rst $00
    inc d
    jp $c41b


    sub l
    rrca
    ld c, a
    rlca
    ld c, a
    add a
    adc a
    ld b, e
    ld h, l
    add e
    call $0f03
    rrca
    rlca
    rrca
    add a
    inc bc
    db $fc
    pop af
    db $fd
    cp $7f
    sbc a
    ld e, a
    and c
    cp $81
    di
    ld hl, sp-$16
    pop af
    reti


    ld [c], a
    rst $30
    rst $08
    rst $38
    rst $38
    ld hl, sp-$01
    ld hl, sp-$03
    ld hl, sp-$03
    add a
    dec b
    rlca
    inc bc
    ld de, $1303
    inc bc
    inc de
    add c
    ld de, $5181
    add c
    add c
    ld bc, $b078
    add d
    ld sp, hl
    rrca
    db $d3
    rlca
    inc bc
    cpl
    inc bc
    and a
    inc bc
    dec hl
    ld [hl], a
    rst $28
    ld [hl], a
    and [hl]
    ld a, a
    xor a
    ld a, a
    rst $38
    ld a, a
    cpl
    rst $38
    ccf
    rst $38
    xor a
    call c, $f78c
    adc [hl]
    rst $20
    rst $08
    rst $38
    sbc $ff
    db $fd
    rst $38
    db $fd
    rst $38
    ld sp, hl
    ei
    ld [hl], c
    di
    ld [hl], e
    cp $fb
    cp $f3
    or $c1
    cp $c1
    call nz, $85c0
    add c
    adc c
    add e
    sbc c
    dec sp
    rst $00
    ld a, a
    rr c
    rst $08
    adc c
    sbc a
    cp c
    rst $38
    cp a
    rst $38
    inc a
    rst $38
    add hl, bc
    cp $c3
    inc e
    ret nc

    rra
    cp d
    ld a, c
    ld sp, hl
    ld a, d
    db $fc
    ei
    ldh a, [$f8]
    call c, $fee2
    push hl
    jp hl


    db $fc
    add $f9
    push bc
    jp z, $d3c1

    pop hl
    ret nc

    rst $00
    pop af
    pop af
    rst $20
    ld hl, $60eb
    rst $38
    ld h, b
    rst $38
    pop bc
    rst $38
    adc a
    rst $38
    adc l
    rst $38
    sbc h
    db $fc
    add b
    ldh a, [$c0]
    ldh [$c1], a
    ld b, b
    ld c, $40
    inc [hl]
    nop
    ccf
    nop
    ccf
    inc bc
    inc de
    rra
    ld a, [de]
    rlca
    add b
    rlca
    ret nz

    rlca
    or b
    nop
    add sp, $00
    and d
    nop
    jr nz, jr_056_44d7

    jr nz, jr_056_44da

    dec d
    nop
    ld b, [hl]
    nop
    nop

Call_056_44cd:
    inc a
    jr nz, jr_056_44ec

    db $f4
    ld [$68d6], sp
    cp c
    jr nc, jr_056_4512

jr_056_44d7:
    ld de, $0503

jr_056_44da:
    and $61
    rst $28
    pop af
    dec b
    ei
    adc a
    rlca
    ld b, a
    add e
    add hl, hl
    rlca
    ld e, a
    dec hl
    cp l
    ld a, [hl]
    cp $fd

jr_056_44ec:
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
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
    rst $38
    db $fc
    cp $fd
    cp $ff
    ccf
    rst $38
    adc a
    ld a, a
    rst $38
    sbc a
    ld a, a
    rrca
    rst $38

jr_056_4512:
    sbc a
    cpl
    adc a
    ccf
    rst $38
    rst $38
    ld d, a
    adc e
    daa
    adc h
    inc c
    ld [hl], e
    inc e
    ld [hl], e
    ld a, [hl-]
    db $fd
    rst $38
    db $fc
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
    rst $28
    rst $38
    ldh [$fc], a
    add b
    db $fc
    db $fc
    ld hl, sp-$18
    db $fc
    ret nz

    db $ed

jr_056_453a:
    db $ec
    rst $18
    cp h
    rst $18
    sbc h
    rst $18
    db $fd
    db $fc
    ld hl, sp-$04
    ldh a, [$f8]
    ldh a, [$fa]
    ld [c], a
    pop af
    cp $e3
    db $e3
    rst $38
    db $e3
    rst $38
    reti


    rst $38
    push af
    rst $38
    ldh [rIE], a
    ret nz

    pop af
    add b
    ldh [$a8], a
    jp nz, Jump_000_07d4

    adc a
    ld b, [hl]
    call c, $110f
    dec c
    add hl, de
    ld bc, $8931
    inc [hl]
    add b
    inc b
    inc hl
    rra
    ldh [$3f], a
    jp nz, $e312

    ld l, c
    add [hl]
    inc b
    rst $28
    rra
    xor $de
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, l
    rst $38
    ld a, l
    rst $38
    dec a
    rst $38
    ld a, a
    ccf
    cp a
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    ei
    rst $38
    di
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rra
    ld e, a
    rrca
    or e
    rlca
    nop
    rrca
    ld c, c
    ld c, $00
    dec c
    pop bc
    nop
    and b
    nop
    db $10
    add b
    jr nz, jr_056_453a

    ld hl, $1000
    inc bc
    ld d, $01
    add h
    ld [bc], a
    pop bc
    inc b
    ld a, b
    add b
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
    ld bc, $1500
    nop
    jr jr_056_45d6

jr_056_45d6:
    cp [hl]
    ld sp, $f4fb
    ld hl, sp-$04
    db $f4
    ld hl, sp-$20
    ldh a, [$c0]
    ret nz

    add hl, sp
    add e
    cp $fd
    rst $28

jr_056_45e7:
    jr nc, jr_056_45e7

    rst $00
    rst $08
    rst $08
    rst $18
    rra
    rst $38
    rra
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    db $fd
    cp $f5
    ei
    rst $38
    rst $38
    ld hl, sp-$04
    ldh a, [$f8]
    ldh a, [$f0]
    sub b
    ld a, b
    ld [$f776], sp
    rst $38
    rst $28
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    di
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_056_461a:
    ld [hl], c
    cp $f3
    ld a, a
    di
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld [$8b97], sp
    or $ec
    rst $38
    adc l
    cp $f8
    rst $38
    ldh a, [rIE]
    adc b
    db $10
    jr z, jr_056_4634

jr_056_4634:
    stop
    add b
    jr nz, jr_056_461a

    nop
    ld bc, $0040
    ld bc, $0001
    ld bc, $06c1
    pop bc
    add e
    ld b, b
    and c
    ld bc, $8b47
    ld c, l
    adc e
    ld h, b
    rrca
    call z, $f83f
    rst $38
    ld hl, sp-$04
    pop af
    cp $70
    rst $38
    ld h, c
    cp $e8
    ld h, a
    rst $20
    db $e4
    call nz, $deef
    rst $20
    cp $b7
    add sp, -$49
    ld [$f2f1], a
    reti


    ret nc

    inc a
    jp nc, $b439

    ld sp, hl
    ei
    cp c
    cp h
    ld a, a
    ld a, [hl]
    ld a, a
    ld h, [hl]
    rst $38
    db $76
    and $e4
    db $fc
    ldh [$ed], a
    ld [$ffed], a
    ret c

    ret nz

    db $fc
    jp z, $9ca4

    jp $cfc1


    and c
    sbc b
    ret nz

    add b
    ld b, b
    sub b
    nop
    or b
    inc bc
    db $fc
    ld c, $fe
    ld a, l
    rst $28
    pop hl
    rst $38
    ret


    rst $38
    db $dd
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
    cp $ff
    db $fc
    cp $f8
    cp $fc
    cp $9a
    db $fc
    pop bc
    ldh [$50], a
    ret nz

    nop
    nop
    inc c
    ld [$4c18], sp
    ld [de], a
    add b
    inc bc
    add b
    nop
    nop
    nop
    nop
    ld a, [de]
    nop
    db $10

jr_056_46c7:
    ld [bc], a
    nop
    ld c, $9e
    rrca
    ld a, a
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    adc a
    rra
    rra
    rra
    ccf
    rra
    db $fd
    add hl, de
    push af
    set 5, a
    rst $20
    ld [hl], a
    rst $20
    rla
    ld h, a
    ld l, $43
    add b
    ret nz

    add c
    add b
    ei
    pop af
    dec sp
    add hl, sp
    ld e, [hl]
    ccf
    dec e
    ld a, [hl]
    call c, Call_000_30b8
    add hl, de
    inc b
    inc bc
    nop
    ld b, $07
    ld [$1802], sp
    ld b, b
    jr nc, jr_056_46c7

    ld hl, sp-$1c
    ldh [$c4], a
    jp nz, $f4e3

    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$f8]
    cp $fa
    cp $fe
    cp $ef
    ld l, a
    rra
    cp [hl]
    ld e, a
    ld a, $df
    ccf
    rst $18
    ccf
    rst $18
    jr c, @+$01

    sub $ff
    adc a
    rst $38
    rst $08
    rst $38
    cp $ff
    ld a, $ff
    ld e, $3d
    ld a, $3f
    ld a, [hl]
    ld a, e
    ld a, [hl]
    ld a, a
    ld a, a
    rst $38
    cp $ff
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
    ld a, a
    db $fd
    rst $38
    db $fd
    db $fc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or e
    cp e
    ld a, d
    ld sp, $f071
    ld a, [c]
    db $fd
    rst $38
    ld hl, sp-$01
    ld hl, sp-$06
    db $fd
    ei
    db $fd
    inc hl
    rst $38
    rrca
    ld a, a
    cp [hl]
    rra
    rrca
    sbc [hl]
    inc e
    adc [hl]
    dec bc
    ld e, $5e
    ld e, $1f
    sbc [hl]
    db $db
    ld l, a
    add hl, bc
    jp Jump_000_13e3


    pop hl

Call_056_478b:
    db $e3
    dec l
    db $e3
    dec c
    pop hl
    and b
    pop hl
    ret z

    db $e3
    ld b, b
    rst $10
    inc bc
    sbc a
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $fd
    cp $f4
    ld hl, sp-$04
    ld hl, sp-$02
    db $fc
    db $fc
    db $fc
    ld a, b
    ld a, b
    ld [hl], a
    ld a, b
    rst $38
    ld sp, hl
    or d
    ld a, a
    scf
    ld a, [de]
    rla
    ld [bc], a
    rlca
    rlca
    ld a, h
    inc bc
    db $fc
    ld e, h
    rst $38
    inc e
    rst $38
    inc a
    ld a, a
    ld a, h
    ld a, a
    rst $38
    cp h
    ld a, l
    ld l, a

jr_056_47c7:
    jr nc, jr_056_47c7

    rst $38
    db $fc
    db $fc
    xor $fc
    call z, $ecfc
    call c, $fefc
    cp $ff
    rst $38
    cp $ff
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
    ld e, a
    cp a
    rra
    ccf
    ccf
    cp a
    db $fc
    rst $38
    rst $38
    rst $28
    db $ed
    cp $3c
    ld l, [hl]
    ld hl, $237c
    db $f4
    inc bc
    ld [c], a
    jp Jump_056_6723


    inc sp
    ld [hl], e
    inc [hl]
    scf
    ld hl, sp+$0f
    db $fc
    ld l, h
    ld l, a
    inc c
    rra
    rra
    dec a
    ld e, $3d
    add hl, sp
    ld a, $1f
    add hl, sp
    ld e, a
    dec de
    inc a
    ccf
    ld a, h
    ld a, e
    ld [hl], a
    ld a, h
    or $7f
    ld [hl], a
    rst $38
    rst $30
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld c, h
    rrca
    adc h
    rrca
    dec bc
    dec e
    rra

jr_056_4837:
    ld e, a
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
    cp $fe
    or $ec
    db $e4
    xor $e1
    cp $ec
    di
    jp hl


    rst $20
    rst $20
    db $e3
    rst $28
    rst $38
    rst $08
    rst $38
    sbc h
    rst $38
    jp c, $d595

    ld [bc], a
    ld b, e
    or [hl]
    ld l, a
    ld [hl], $ae
    ld a, a
    cp $3f
    rst $38
    ld a, $ff
    cp $ff
    cp $1e
    ld a, $9d
    ld a, [hl]
    ld a, a
    ld a, a
    ccf
    rst $38
    ld a, [hl]
    ld a, a
    rst $38
    ld a, a
    ld a, l
    cp $7c
    db $fc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc e
    rst $38

jr_056_489e:
    res 7, a
    nop
    adc a
    ld [hl], $03
    ld [c], a
    rlca
    ld bc, $0703
    nop
    ld bc, $cb03
    rlca
    res 0, a
    adc c
    add e
    jr nz, jr_056_4837

    pop bc
    nop
    ret z

    inc b
    jr c, jr_056_48ba

jr_056_48ba:
    nop
    inc c
    add h
    ld bc, $1403
    add hl, bc
    ld a, [de]
    reti


    ld bc, $60d1
    ld d, b
    ldh [$94], a
    ld a, [hl-]
    rrca
    ld a, $2f
    ld c, $0d
    ld c, $1d
    ld c, $16
    inc c
    inc e
    inc a
    inc [hl]
    ld a, b
    ldh a, [$f4]
    jp c, $f4f0

    ldh a, [$e0]
    ldh a, [$f0]
    ldh a, [$fc]
    ld hl, sp-$07
    ld hl, sp-$08
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$60]
    ldh a, [rSTAT]
    ldh [rNR11], a
    jr nz, jr_056_491a

    nop
    jr nz, jr_056_493c

    jr jr_056_489e

    jr c, @-$1e

    jr nz, jr_056_4972

    ld [hl], b
    ld h, b
    ld bc, $f360
    ld h, b
    ld [hl], b
    ld a, [c]
    ld [hl], d
    pop af
    ld [hl], c
    rst $20
    ld [hl], a
    pop hl
    call c, $e5e0
    add $ee
    add $61
    add d
    inc bc
    or b

jr_056_491a:
    sub b
    inc de
    ld [de], a
    sub b
    sub e
    db $10
    db $10
    sub c
    cp c
    ld bc, $11e9
    ld e, c
    and c
    jr jr_056_492b

    ld d, b

jr_056_492b:
    and c
    db $d3
    ld hl, $00e1
    db $fc
    db $fc
    rst $38
    db $fc
    db $fc
    cp $fc
    cp $fe
    rst $38
    cp $ff

jr_056_493c:
    cp $fe
    sbc $fe
    cp $fe
    cp $fc
    ld [hl], b
    db $fc
    pop af
    cp $f9
    cp $79
    rst $38
    inc hl
    ld e, a
    inc bc
    rra
    ld c, l
    rrca
    rra
    cpl
    rlca
    rrca
    xor a
    ld d, a
    rst $00
    rra
    daa
    adc a
    rrca
    add a
    rrca
    add a
    rst $08
    add a
    or a
    rst $00
    rst $38
    di
    rst $38
    di
    rst $38
    ld a, a
    cp a
    ld a, a
    db $fd
    ld c, a
    rst $38
    ld c, a
    rst $38
    ld l, a

jr_056_4972:
    rst $28
    ld l, h
    xor $68
    ld l, [hl]
    ld e, b
    dec d
    jp z, $70ba

    ld h, e
    db $e4
    db $ec
    pop hl
    jp nz, $c8ed

    ret c

    sub b
    db $fc
    ld [hl], e
    cp h
    inc sp
    db $fc
    push hl
    ei
    ld sp, hl
    di
    pop hl
    ei
    rst $28
    di
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    cp a
    cp a
    ld a, a
    dec e
    rst $38
    add hl, sp
    rst $38
    rst $38
    ccf
    cp $3f
    ccf
    rst $38
    cp $fe
    db $fc
    cp $f0
    db $fc
    db $e4
    call z, $ce00
    and e
    rlca
    ld b, $27
    add l
    inc c
    ret nz

    dec b
    add hl, bc
    rla
    sbc e
    rra
    ld e, [hl]
    sbc a
    rst $38
    rra
    rst $18
    ccf
    rst $38
    ccf
    ld [hl], a
    rst $38
    rst $28
    ld h, a
    rst $28
    rra
    ld e, [hl]
    cpl
    inc c
    inc e
    ld e, h
    ld e, $5c
    ld e, $1e
    ccf
    ld c, a
    sbc a
    adc a
    rra
    ld a, [$9097]
    ld a, l
    add b
    ld b, $11
    ld b, $11
    ld b, $01
    nop
    add hl, bc
    nop
    add b
    nop
    pop bc
    nop
    call nc, Call_000_1802
    add d
    ld b, $08
    inc b
    ld c, $07
    inc b
    dec b
    ld c, $8d
    sbc [hl]
    xor c
    ld [de], a
    adc e
    ld b, $02
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_056_4a04

jr_056_4a04:
    sbc h
    nop
    jr nc, jr_056_4a08

jr_056_4a08:
    db $e4
    nop
    add l
    ld [$091d], sp
    rlca
    add hl, bc
    rst $08
    ld bc, $001f
    dec a
    ld b, $0f

jr_056_4a17:
    ld a, h
    ld l, l
    ld a, [hl]
    ld a, c
    cp $a1
    ld a, [hl]
    xor c
    db $76
    ld [hl], l
    ld [hl], a
    dec a
    ld a, a
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ed
    cp $e1
    sbc $00
    ld bc, $0000
    ld c, b
    ld bc, $0000
    ld de, $0101
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc h
    inc bc
    db $10
    ld b, $04
    ld e, $4c
    rlca
    sbc c
    ld bc, $c389
    db $d3
    add a
    adc a
    sub a
    adc [hl]
    or a
    cp a
    cp $ff
    db $fc
    ld hl, sp-$04
    ld a, [$f2fc]
    pop af
    rst $20
    ld a, [c]
    rst $20
    or $e3
    cp $f1
    ld a, [c]

jr_056_4a64:
    db $d3
    db $fc
    pop de
    xor $d3
    pop hl
    sbc e
    pop bc
    inc de
    add e
    add a

jr_056_4a6f:
    inc bc
    rlca
    ld [de], a
    ld b, $3e
    db $f4
    ccf
    ld l, $7b
    sbc $1b
    sbc a
    inc e
    sbc [hl]
    jr jr_056_4a17

    rra
    rra
    ld b, $50
    ld l, $1d
    db $fc
    ld c, l
    cp $0e
    cp $5f
    cp [hl]
    db $76
    cp h
    inc h
    cp $7f
    and $e7
    cp $c7
    ei
    rst $18
    ld hl, sp-$1f
    db $fc
    add a
    db $ec
    adc a
    rra

jr_056_4a9e:
    rrca
    sbc a
    ccf
    cp a
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    ld d, a
    cp a
    ld h, a
    sbc a
    scf
    rst $38
    scf
    rst $38
    db $dd
    ccf
    sbc $ff
    sbc $ff
    adc a
    rst $38
    rla
    rst $28
    ld h, e
    add a
    db $dd
    ld h, $4c
    cp h
    jr c, @-$42

    cp $9f
    cp $fe
    cp $ff
    or $ff
    add e
    ld b, a
    ld [hl], l
    inc bc
    ld d, h
    nop
    ld h, b
    ret nc

    add b
    add b
    add c
    add b
    nop
    add e
    add hl, bc
    add h
    inc e
    ld b, b
    nop
    jr z, jr_056_4a6f

    jr c, @+$72

    jr jr_056_4a64

    jr jr_056_4a9e

    inc e
    jr c, jr_056_4b04

    inc a
    jr jr_056_4b25

    inc e
    dec e
    ld e, $9e
    rra
    rra
    ld e, $1c
    ld e, $3f
    ccf
    ld a, a
    ccf
    rra
    rra
    rra
    rra
    rra
    rra
    sbc a
    ccf
    add hl, sp
    ld a, $3e
    dec a

jr_056_4b04:
    rra
    dec a
    ld a, a
    ccf
    dec e
    cp [hl]
    sbc l
    rst $38
    adc $fc
    adc $cc
    adc $c6
    rst $30
    rst $08
    rst $18
    rst $28
    rst $00
    rst $08
    ld b, a
    rst $28
    ld l, a
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc a
    and a

jr_056_4b25:
    rst $00
    ld h, a
    sub e
    dec sp
    cp a
    ccf
    rst $38
    ccf
    ld a, a
    inc a
    inc sp
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
    jr jr_056_4b63

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_056_4b73

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_056_4b83

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_056_4b93

    ld [hl-], a

jr_056_4b63:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_056_4ba3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_056_4b73:
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

jr_056_4b83:
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

jr_056_4b93:
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

jr_056_4ba3:
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
    jr jr_056_4c63

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_056_4c73

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_056_4c83

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_056_4c93

    ld [hl-], a

jr_056_4c63:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_056_4ca3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_056_4c73:
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
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_056_4c83:
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

jr_056_4c93:
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

jr_056_4ca3:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
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
    ld bc, $0601
    ld bc, $0301
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
    ld bc, $0101
    ld b, $06
    inc bc
    inc bc
    ld bc, $0003
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0506
    rlca
    rlca
    ld bc, $0106
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0706
    rlca
    rlca
    ld bc, $0606
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0703
    rlca
    ld bc, $0606
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0601
    ld b, $06
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0501
    ld b, $06
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
    dec b
    ld b, $06
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
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    dec b
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    dec b
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld e, [hl]
    ld e, e
    ld a, h
    ld a, a
    ld [hl], h
    cp $68
    ldh a, [$08]
    ld h, c
    inc de
    nop
    ld b, [hl]
    ld [hl+], a
    ld [hl+], a
    add $e0
    jp nz, $e064

    jr nz, jr_056_4e06

    dec c
    ld bc, $0101
    nop
    add e
    nop
    ld b, c
    ld b, b
    nop
    ret z

    ret nz

    ld c, e
    call z, Call_000_1d0e
    add a
    dec e
    inc d
    ld [$1c4c], sp
    call c, Call_056_5e5f
    ld e, a
    rra
    ccf
    dec a
    ld a, [hl]
    cp h
    ld a, a
    ccf
    ld a, a
    ld a, a
    rra
    rla
    rrca
    ld d, a
    rrca
    ccf
    rlca
    ld e, a
    daa
    rrca
    or c
    daa
    dec de
    ld [de], a
    dec hl
    rla
    daa
    daa
    rlca
    adc a
    ld c, a
    rra
    rrca
    rra
    rra
    dec de

jr_056_4e03:
    ccf
    or $3a

jr_056_4e06:
    ld [hl], d
    ld e, $12
    cp $3e
    bit 7, l
    ld [c], a
    pop hl
    cp $dc
    rst $38
    ld [hl], d
    db $fc
    ld a, h
    ld hl, sp+$78
    ei
    ld [hl], d
    ei
    di
    di
    ld h, c
    ld [hl], e
    ld b, c
    ld a, c
    dec l
    dec e
    call c, Call_056_44cd
    db $ed
    ld [hl], e
    db $fc
    jr nz, jr_056_4e03

    ld b, h
    add b
    nop
    pop hl
    nop
    db $e3
    add hl, sp
    rst $30
    db $fc
    cp e
    rst $18
    rst $38
    ld [hl], a
    ei
    ld [hl], e
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    rst $20
    rst $38
    rst $28
    rst $38
    db $e3
    cp $e1
    rst $38
    pop af
    rst $38
    rst $20
    cp $e0
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$7f]
    ld hl, sp+$3f
    ld hl, sp+$7f
    ld hl, sp+$5f
    ldh a, [rIE]
    db $fc
    rst $38
    dec e
    ld a, [hl]
    db $ec
    ccf
    cp $9f
    cp $ff
    cp $ff
    cp $ff
    cp $4f
    cp $67
    ld a, h
    ld a, a
    ld a, l
    ld e, $fd
    ld [hl], d
    rst $38
    rst $20
    rst $38
    ld [hl], a
    rst $38
    ld b, a
    rst $38
    rst $38
    rst $38
    db $fd
    ld sp, hl
    rst $38
    rst $38
    ld hl, sp-$01
    jr nz, @+$01

    nop
    rst $38
    rlca
    ei
    rrca
    rst $28
    ccf
    rst $28
    ld a, a
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
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $28
    ei
    rst $38
    cp a
    ld a, a
    scf
    cp $fa
    ld a, a
    or $f9
    ld d, d
    cp $0c
    rst $30
    inc c
    rlca
    nop
    nop
    dec b
    nop
    nop
    dec b
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    nop
    jr nc, jr_056_4f0c

    ld l, h
    cp $fe
    cp $ff
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    ld e, h
    ld a, $a4
    rst $18
    ld h, c
    rst $38
    ld a, a
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, a
    xor a
    rst $18
    db $ed
    rst $08
    ret c

    rst $38
    ld hl, sp-$0a
    ld [hl], c
    cp $f8
    ld a, [c]
    ldh [$f0], a
    pop af
    ldh a, [$f3]
    ldh a, [$f0]
    ld a, [c]
    ldh a, [$e2]
    ldh [$c3], a
    ld [c], a
    pop bc
    pop hl
    ld [bc], a
    add b
    ld [bc], a
    nop
    ld bc, $0000
    nop
    inc b
    dec b
    ld b, $07
    rrca

jr_056_4f0c:
    rlca
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    rra
    cpl
    ld e, a
    rst $18
    ld a, a
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    adc a
    rst $38
    rst $38
    sbc a
    rst $38
    cp a
    rla
    ei
    jr nz, jr_056_4f9b

    and [hl]
    ld h, e
    jp nz, Jump_000_22e3

    rst $30
    inc sp
    rst $38
    ld a, e
    ccf
    add hl, bc
    rst $38
    cp d
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    cp a
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
    rst $38
    cp [hl]
    rst $38
    cp a
    cp $7f
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $18
    ld a, a
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rrca
    rst $38
    ccf
    xor $3f
    or $7f
    db $e3
    ccf
    add $1f
    rst $28
    rra
    rst $28
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_056_4f75:
    rst $38
    rst $38
    rst $38
    db $fd
    cp $fd
    or $ff
    and b
    rst $38
    or b
    rst $38
    pop bc
    db $fc
    rst $00
    rst $28
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    db $fc
    ld a, a
    ldh a, [$af]
    ldh a, [$ef]
    di
    ei
    rst $18
    db $dd
    cp $eb
    db $f4
    rst $38
    ldh [$fe], a

jr_056_4f9b:
    pop bc
    ei
    rst $20
    db $fd
    adc $7f
    cp h
    dec sp
    db $fc
    db $ed
    rst $38
    rst $38
    rst $08
    rst $00
    rst $38
    ld [hl], a
    rst $28
    call nz, $ebbf
    inc e
    ld sp, $018d
    sbc a
    inc bc
    rst $18
    ld b, e
    jp Jump_056_4303


    add c
    dec sp
    inc de
    dec l
    inc bc
    ccf
    inc de
    ccf
    inc de
    rra
    inc bc
    rrca
    dec bc
    rlca
    add c
    rlca
    nop
    ld bc, $0381
    inc hl
    rlca
    inc bc
    inc sp
    ld d, b
    add hl, sp
    ld e, d
    ld [hl], h
    ld c, a
    jr nc, jr_056_4f75

    adc h
    call z, $fedf
    rst $18
    rst $38
    rst $38
    rst $38
    rst $08
    xor a
    db $d3
    scf
    ccf
    ld a, a
    cp a
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, [hl]
    ccf
    ccf
    ld a, $1e
    ccf
    ccf
    rra
    sbc a
    rra
    rrca

jr_056_4ff7:
    rst $10
    ld b, c
    rst $08
    add d
    jp nz, $e010

    ld d, b
    jr nz, jr_056_5011

    add b
    ld [bc], a
    ret nz

    adc b
    ret nz

    ld e, b
    db $ec
    ld a, h
    cp $fc
    cp $9c
    rst $38
    rst $08
    cp a
    xor a

jr_056_5011:
    ld e, a
    cpl
    ld e, a
    rrca
    rst $18
    rst $00
    adc a
    ld [hl], a
    sub e
    dec hl
    db $db
    ld e, c
    ret


    ld c, l
    call Call_056_6f61
    pop af
    ld l, $a8
    db $10
    db $10
    ld [$1e00], sp
    ld [$0336], sp
    ccf
    inc hl
    ccf
    jr c, jr_056_50b1

    ld hl, sp-$01
    ld hl, sp-$01
    jr c, jr_056_4ff7

    inc e
    rst $38
    ld e, b
    xor a
    inc c
    cp a
    ld e, h
    xor a
    adc h
    rst $38
    inc c
    rst $38
    xor $9f
    call nc, $d6af
    rst $20
    cp $ff
    ld a, [hl]
    rst $38
    cp $ff
    cp $f7
    ld a, $f3
    dec sp
    rst $30
    rst $38
    cp a
    rst $38
    rst $38
    rst $18
    db $e3
    rst $38
    di
    rst $38
    di
    rst $38
    rst $28
    rst $38
    jp $cfff


    cp a
    ld a, a
    db $fc
    ld a, a
    rst $38
    ld sp, hl
    rst $38
    di
    rst $38
    rla
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fd
    ld l, $7f
    add h
    rst $38
    ld c, $ff
    ccf
    rst $38
    ld a, a
    ccf
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    cp a
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $28
    rst $38
    rst $10
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $18
    rst $38
    adc a
    cp $7f
    db $ed

Call_056_50a1:
    ld e, $7f
    cp a
    adc a
    rst $38
    cp $fc
    rst $28
    ld hl, sp+$7d
    add c
    rst $08
    dec b
    add a
    inc b
    rst $38

jr_056_50b1:
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
    rst $38
    rst $38
    cp $ff
    rst $38
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
    cpl
    ld a, a
    ld h, a
    ld a, [hl]
    ld h, d
    ld a, a
    ld sp, $3cff
    cp a
    ld c, [hl]
    sbc a
    ld c, $9f
    sbc a
    rst $18
    adc a
    rst $18
    adc [hl]
    rrca
    ld c, $07
    jp nz, Jump_056_6207

    adc a
    inc bc
    xor a
    jp $a337


    sub a
    pop bc
    add e
    pop hl
    rst $00
    pop af
    di
    pop af
    ld sp, hl
    ld a, c
    ld a, a
    ld a, a
    ld a, l
    ld h, e
    dec a
    jr nz, jr_056_5143

    cpl
    dec e
    daa
    dec e
    ld a, h
    rrca
    ld a, l
    ld c, $2f
    ld [bc], a
    and d
    inc bc
    ld h, c
    cp c
    db $fc
    cp h
    cp $fc
    db $fc
    db $fd
    db $fd
    db $ed
    sbc [hl]
    db $e4
    ret c

    rst $30
    ldh [rIE], a
    sbc h
    ei
    ld c, $cf
    ld b, b
    rst $00
    ld b, l
    ld h, [hl]
    rra
    ld l, [hl]
    ccf
    ld c, [hl]
    sbc [hl]
    rrca
    adc h
    ld e, $8d
    adc [hl]
    rlca
    nop
    add [hl]
    nop
    res 6, h
    sbc h
    db $e3
    rst $00
    ld hl, sp-$20
    db $fc
    add sp, -$01
    rst $38
    rst $38
    ld a, a

jr_056_5143:
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
    ccf
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    rra
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    add a
    rst $38
    rst $00
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc $f1
    cp a
    pop bc
    db $fd
    inc bc
    rst $38
    rra
    jp $df7f


    cp $ff
    cp $ff
    cp $fc
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
    cp $ff
    xor $ff
    sbc $ef
    db $fd
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ei
    db $fd
    rst $38
    rst $38
    rst $38
    db $fd
    rst $30
    ld sp, hl
    rst $18
    ld a, a
    adc a
    rst $38
    rst $20
    sbc a
    ld a, e
    ccf
    rst $38
    rst $38
    ld [hl], e
    rst $38
    rst $28
    rst $30
    xor e
    rst $30
    rst $38
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    xor $f7
    jp nc, $c2ef

    rst $20
    ld b, $e7
    ld b, $c7
    ld c, $c7
    ld b, $c7
    adc [hl]
    ld a, [c]
    add d
    ld a, e
    dec bc
    ld [hl], e
    dec c
    ld a, [c]
    sub d
    ld c, l
    db $10
    rst $08
    inc bc
    sbc $32
    rst $38
    rra
    cp $1e
    rst $38
    sbc $3f
    ld e, $ff
    ld e, $fe
    ld a, $de
    inc e
    cp $1c
    cp $8e
    db $fc
    ld h, d
    cp $c2
    cp $56
    ld [$ee51], a
    add b
    ld a, [$f783]
    xor c
    call nc, $f9bc
    pop af
    ld hl, sp-$1c
    ei
    jp $ffff


    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    cp e
    rst $00
    rst $20
    ld hl, sp-$0a
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
    rst $08
    rst $38
    ld [hl], h
    adc a
    cp $01
    ldh a, [rIF]
    db $fc
    inc bc
    db $fc
    inc bc
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    nop
    rst $38
    ld e, $21
    rst $38
    nop
    ld e, e
    db $e4
    dec de
    jr nz, jr_056_525a

    ret nz

    inc c
    di
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [$fe], a
    di
    db $fc
    ldh a, [rIE]
    xor $ff
    cp $ff
    ldh a, [rIE]
    db $f4
    rst $38

jr_056_525a:
    rst $30
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    db $fc
    db $fd
    ld hl, sp-$65
    ldh [$7b], a
    add a
    di
    rra
    di
    ccf
    ld a, e
    rst $38
    db $e3
    rst $38
    rst $30
    rst $38
    db $fd
    rst $38
    ld a, [$afdd]
    ld e, a
    rst $28

jr_056_527d:
    rra
    xor a
    ld e, a
    rst $38
    rst $30
    rst $10
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    ld hl, sp-$09
    or [hl]
    ld a, a
    ld [hl], e
    cp [hl]
    ld a, a
    sbc $df
    rst $38
    rst $18
    ccf
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
    rst $38
    db $fc
    rst $38
    cp $f9
    rst $20
    ld hl, sp-$62
    ld a, a
    adc a
    rst $38
    inc c
    rst $38
    inc c
    sbc $a9
    inc e
    ld [$829c], sp
    nop
    nop
    nop
    inc b
    inc b
    ld [$1444], sp
    call z, $0e44
    add d
    inc e
    add b
    inc e
    ld [bc], a
    ld [$0000], sp
    nop
    sub h
    ld d, b
    cp [hl]
    dec a
    sbc $b9
    inc e
    cp b
    inc e
    sbc d
    inc a
    sbc d
    jr c, @-$64

    jr c, jr_056_527d

    ld c, h
    inc e
    ld e, h
    sbc b
    inc e
    rlca
    ld [$3800], sp
    inc b
    jr c, jr_056_52ed

jr_056_52ed:
    ret c

    nop
    ret c

    and e
    ret nc

    pop hl
    ldh [rNR41], a
    ld hl, sp+$19
    cp $38
    cp $ec
    sbc c
    adc h
    rst $28
    adc a
    xor $1f
    rst $28
    adc a
    rst $38
    rst $18
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
    ld a, a
    rst $38
    jp $903f


    rst $28
    ldh [rIE], a
    ldh a, [rIE]
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
    rst $00
    ccf
    ldh [$1f], a
    db $f4
    dec bc
    rst $38
    nop
    ldh a, [rIF]
    ld b, b
    cp a
    cp b
    ld b, a
    ret nc

    rrca
    ld hl, sp+$07
    ld l, h
    inc de
    ld [hl], b
    rst $38
    pop af
    rst $38
    cp $ff
    db $fd
    cp $fd
    ld a, [c]
    ld a, [$ae87]
    ld e, a
    xor l
    ld c, h
    ld bc, $f8d0
    ld hl, sp-$1a
    add sp, $2c
    ld [hl+], a
    adc h
    or b
    ld a, [c]
    adc d
    ld [$a048], sp
    and b
    cp $c1
    ld a, [$fa07]
    ld e, a
    ld a, [$f17f]
    cp $ed
    rst $30
    call z, $a6bf
    rst $38
    db $fd
    ei
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ccf
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
    cp $ff
    ld hl, sp-$01
    or $f8
    ld a, [c]
    ldh a, [$e4]
    ldh a, [$de]
    jr nz, @-$3b

    inc a
    ldh [$fe], a
    ldh a, [rIE]
    jp nc, $faff

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $20
    ld l, h
    sub e
    ld b, h
    cp e
    nop
    rst $38
    ld [bc], a
    rst $18
    db $10
    rst $28
    ld [de], a
    inc bc
    add hl, de
    nop
    ld b, b
    ld [$0800], sp
    sbc b
    jr jr_056_53ef

    jr jr_056_53fb

    inc e
    rra
    rra
    rra
    rra
    rra
    rra
    ld c, a
    rrca
    ld c, a
    rlca
    rla
    rrca
    rla
    rrca
    inc bc
    inc bc
    inc de
    inc bc
    db $e3
    rra
    pop af
    rst $38
    db $f4
    ld sp, hl
    ldh [$78], a
    ld [hl], b
    ldh a, [$f0]
    ld a, [c]
    di
    ldh a, [$73]
    ldh a, [$71]
    ld h, a
    ld [hl], h
    ld l, a
    db $e4
    rst $38
    ld a, a
    ld a, a
    ld a, a
    rra
    rst $38

jr_056_53ef:
    adc a
    xor a
    ld e, a
    sbc [hl]
    ccf
    inc c
    ld e, $8e
    inc e
    daa
    inc e
    ret z

jr_056_53fb:
    daa
    ld h, b
    rst $00
    ret nz

    add $d4
    ret


    jp z, $fdfd

    ld a, [hl]
    ld a, h
    cp $7e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_056_5410:
    rst $30
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
    ld a, a
    rra
    rst $38
    rla
    rst $28
    nop
    rst $38
    rst $38

jr_056_5423:
    rst $38
    ld a, a
    rst $38
    ld a, a
    cp a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    sbc a
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    rlca
    rst $38
    dec b
    ei
    ld c, $f1
    rrca
    ldh a, [rIF]
    ldh a, [rP1]
    cp a
    nop
    ld a, d
    dec c
    db $fd
    jr nc, jr_056_5410

    ldh [$1f], a
    ld hl, sp+$07
    call z, $ac12
    ld [hl], e
    pop bc
    nop
    sub a
    ld [$0c33], sp
    rst $30
    ld [$6798], sp
    jr c, jr_056_5423

    add c
    ld a, [hl]
    add c
    ld a, [hl]
    inc bc
    rst $38
    adc a
    ld a, a
    ei
    ei
    db $db
    cp e
    ld e, d
    cp d
    db $fd
    cp l
    db $dd
    dec a
    db $dd
    dec a
    db $fc
    db $fd
    cp $fe
    sbc $fe
    xor $fe
    db $fc
    ld a, [$febe]
    cp a
    rst $38
    rst $38
    rst $38
    sbc a
    adc a
    rra
    rlca
    rrca
    inc bc
    ld [$0101], sp
    nop
    rla
    nop
    rra
    nop
    rra
    nop
    ld a, [$e70a]
    rla
    ld [bc], a
    ld [bc], a
    ld b, $06
    add e
    add e
    jr jr_056_54b4

    sbc h
    sbc h
    adc l
    xor l
    ldh [rIE], a
    di
    db $fc
    ei
    db $fc
    db $fd
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_056_54b0:
    jr nz, @+$21

    jr jr_056_54d4

jr_056_54b4:
    jr z, jr_056_54b0

    ld [$02ff], a
    ld a, a
    nop
    dec a
    ld bc, $439c
    sbc h
    nop
    inc e
    ld d, b
    ld [$8000], sp
    add h
    nop
    adc [hl]
    adc a
    add c
    ld h, a
    ld [hl], b
    add e
    or b
    jp $b3da


    ld hl, sp-$07

jr_056_54d4:
    cp c
    db $dd
    ld a, h
    ld sp, hl
    ld sp, hl
    ld hl, sp+$78
    ld hl, sp+$7c
    ld [hl], b
    ld a, h
    ld [hl], b
    jr c, @+$7a

    inc a
    ld a, b
    ld a, $9c
    ld b, $8e
    add hl, bc
    add [hl]
    dec b
    ld b, $05
    ld [bc], a
    inc h
    jp $e7e1


    ld h, [hl]
    pop af
    ld a, d
    push af
    cp $7f
    ld a, a
    ld a, $72
    ccf
    ld d, [hl]
    ld e, e
    ld a, b
    rst $38
    ld [hl], b
    rst $00
    sub [hl]
    inc bc
    add b
    inc de

jr_056_5506:
    inc a
    jp $ef3f


    db $76
    rst $38
    jr c, jr_056_5506

    jr c, @-$06

    ld a, $fd
    ccf
    cp $3e
    rst $38
    ld a, $ff
    ld a, $ff
    ld a, $ff
    cp h
    ld a, a
    inc a
    rst $38
    nop
    rst $38
    nop
    rst $38
    add a
    rst $38
    add a
    rst $38
    add a
    rst $38
    rst $28
    rst $30
    db $fc
    rst $38
    cp h
    rst $30
    add a
    rst $38
    adc a
    rst $38
    adc [hl]
    rst $38
    add h
    rst $38
    adc a
    rst $38
    xor h
    db $d3
    cp a
    nop
    ld a, $01
    ld e, b
    ld h, b
    ld h, b
    ld h, b
    ld b, b
    ld b, b
    inc de
    inc de
    inc h
    db $e4
    nop
    ld [$a606], sp
    nop
    ret nz

    rst $28
    db $10
    db $f4
    dec bc
    push af
    ld c, $c6
    dec a
    ccf
    jp $8f7f


    rst $18
    ccf
    sbc [hl]
    ld a, [hl]
    ld hl, sp-$07
    di
    rst $30
    rst $08
    rst $08
    cp a
    ccf
    ld c, h
    ld a, h
    jp $c6fb


    rst $20
    call z, $34df
    ld a, $f8
    pop af
    di
    rst $30
    ld c, $ee
    sbc b
    add hl, de
    db $76
    ld [hl], l
    ld l, l
    ld h, e
    dec de
    rlca
    push af
    adc $e7
    sbc b
    sbc l
    ldh [$bf], a
    ret nz

    ld b, a
    add b
    sbc $00
    ld d, a
    add sp, -$0b
    ld l, d
    ld [hl], d
    ld [hl], c
    ld d, a
    ld d, b
    add hl, sp
    ld a, $11
    db $10
    ld bc, $0001
    nop
    add b
    add b
    ld [$4808], sp
    xor b
    ld h, c
    sub e
    inc l
    rst $08
    ld h, b
    sbc e
    nop
    dec sp
    add c
    or d
    jp $dbd8


    call nz, $ff13
    jr nz, jr_056_5633

    ld h, d
    db $fd
    ld l, d
    rst $30
    ld h, b
    di
    ld [$00e2], sp
    ld [c], a
    nop
    ld [c], a
    cp d
    ld l, b
    xor h
    ld a, [hl]
    ld c, $3e
    inc l
    ld a, [hl]
    ld b, h
    dec a
    nop
    sbc l
    add hl, bc
    add [hl]
    ld e, l
    adc [hl]
    ld c, [hl]
    cp [hl]
    adc h
    rst $38
    ld [c], a
    call $c0d7
    inc hl
    call nz, $f703
    dec bc
    di
    ld c, e
    sub e
    ld bc, $0612
    nop
    stop
    adc b
    rlca
    ld hl, $4013
    add hl, sp
    cp l
    call c, $fc0c
    xor $fc
    ldh a, [$fc]
    ld [hl], b
    db $fc
    inc a
    db $fc
    ld b, $3f
    rlca
    ld bc, $0780
    nop
    ld b, a
    ld h, a
    ld hl, sp+$7f
    cp $7f
    cp $30
    rst $38
    scf
    db $fc
    ld de, $12b2
    cp a
    ld d, e
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    ld a, [de]
    rst $38
    jr nz, @+$01

    inc b
    ei
    rrca
    rst $38
    ld c, $ff
    rst $38
    cp $ff
    cp $fe
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ld a, a
    cp a
    rst $38
    sbc a
    add b
    rst $38
    rlca

jr_056_5633:
    ld hl, sp+$3f
    ldh [$3c], a
    jp $ff00


    or c
    ld a, a
    sbc [hl]
    ld a, a
    ld e, a
    cp $b8
    ldh a, [$c3]
    ld bc, $07c9
    ld a, $d1
    ld a, a
    db $e3
    ccf
    rst $08
    rst $08
    ccf
    rst $28
    ccf
    scf
    rst $30
    ld d, a
    or a
    or b
    ld [hl], a

jr_056_5656:
    db $e3
    rst $30
    push hl
    rst $30
    rst $08
    rst $08
    rrca
    xor a
    rrca
    ld l, a
    rst $20
    rst $28
    ld c, a
    rst $28
    add a
    adc a
    ld c, $6f
    rst $20
    add sp, $5f
    ret nc

    rst $18
    ret nc

    dec e
    ld [de], a
    or b
    rst $38
    cp b
    rst $30
    jr nc, @+$01

    cp e
    rst $38
    cp $f9
    rst $18
    ldh [$7f], a
    add b
    pop af
    ld c, $8f
    adc a
    ld c, a
    ld c, a
    ld b, l
    ld h, l
    db $10
    db $10
    ldh [$e0], a
    ld b, b
    ret nz

    add a
    cp b
    add a
    ld hl, sp+$27
    ret c

    inc bc
    db $f4
    add sp, $19
    pop bc
    dec h
    ld hl, $4067
    ld b, c
    and c
    and d
    inc sp
    inc [hl]
    ld bc, $031e
    ld a, h
    inc bc
    db $fc
    dec de
    add h
    sbc [hl]
    ld h, c
    add a
    ld h, b
    sub [hl]
    ld e, b
    adc $21
    ld a, [hl-]
    sbc a
    add hl, bc
    cp $06
    ld sp, hl
    inc b
    cp e
    jr jr_056_5656

    ld a, [bc]
    ld a, b
    ld [$18f8], sp
    ld hl, sp+$1b
    ld a, h
    rra
    rra
    rrca
    rra
    rra
    ccf
    rst $38
    adc a
    nop
    rst $08
    dec h
    rst $08
    ld e, a
    rst $20
    db $e3
    rst $30
    ld [hl], e
    rst $30
    db $ed
    di
    db $e4
    di
    set 6, b
    jp nz, $f8fc

    ldh [rBCPS], a
    ldh a, [$b8]
    ld a, e
    jr z, jr_056_5722

    pop hl
    ld e, $84
    dec de
    inc hl
    rst $18
    ld bc, $94ff
    db $e3
    and b
    ei
    ld [hl], b
    cp c
    sbc [hl]
    ld [hl], c
    add hl, bc
    ld a, d
    dec h
    ld a, d
    ld bc, $a038
    ld e, $20
    db $db
    add b
    rst $38
    ld hl, sp-$01
    ld a, b
    ld a, a
    ld l, a
    ld a, l
    ld d, a
    db $fd
    ld l, h
    rst $38
    call $ccff
    rst $38
    db $e4
    rst $38
    and b
    rst $38
    ei
    cp h
    ld a, [c]
    dec a
    inc hl
    rst $38
    rlca
    rst $38
    ccf
    rst $28
    dec a
    rst $38
    sbc h
    ld a, a
    rst $38
    rst $38

jr_056_5722:
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    add a
    ld hl, sp+$14
    db $eb
    inc b
    ei
    ld a, a
    add b
    rst $38
    nop
    ld [bc], a

jr_056_5735:
    db $ec
    dec d
    add sp, $34
    bit 6, e
    adc a
    db $ec
    rra
    db $ec
    rra
    rst $00
    rst $38
    adc a
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $10
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    db $f4
    rst $38
    cp $ff
    cp $ff
    ld hl, sp-$01
    set 7, a
    xor a
    rst $18
    ret z

    rlca
    add hl, de
    inc bc
    dec e
    inc bc
    dec e
    inc bc
    rra
    ld bc, $bf4f
    adc a
    adc a
    add e

jr_056_5775:
    add e
    add b
    add a
    add b
    and e
    db $10
    rst $30
    db $10
    rst $30
    db $10
    rst $10
    ld a, c
    ld a, a
    sbc b
    sbc d
    sub c
    sub a
    nop
    rrca
    add c
    cp c
    nop
    add hl, de
    nop
    ld c, a
    nop
    ld a, [hl]
    jr jr_056_5735

    call nz, $8037
    ld l, [hl]
    nop
    ld l, h
    sbc b
    and h
    ld c, $30
    sub a
    ld l, b
    sbc a
    ld h, b
    rst $18
    jr nz, @-$78

    ld e, c
    sub a
    db $10
    rrca
    nop
    ld c, $11
    jr jr_056_5824

    ld h, h
    db $ec
    ld b, h
    ld e, a
    ld a, a
    rst $38
    add hl, de
    cp e
    jr jr_056_5775

    cp $f9
    ld [hl-], a
    db $fd
    jr nc, jr_056_580b

    inc l
    rra
    inc c
    ccf
    ret z

    rra
    ld [$088c], sp
    add l
    inc c
    rra
    add [hl]
    ld l, a
    nop
    rst $20
    jr nz, @+$01

    inc hl
    rst $38
    inc sp
    rst $38
    ei
    rst $30
    and $f1
    pop hl
    ld a, [$ffe0]
    add sp, -$09
    ld [hl], b
    db $fd
    ld sp, $18fc
    ld a, h
    ld b, b
    ld e, $50
    rrca
    inc bc
    sbc a
    add a
    sbc a
    add a
    rst $38
    rst $18
    di
    ei
    rst $38
    ei
    db $fd
    ret


    db $fc
    ld h, d
    db $fc
    adc d
    ld [hl], h
    ld b, h
    dec de
    rla
    ld c, a
    rra
    rst $38
    rst $18
    rst $38
    or l
    rst $38
    ld l, h
    ld a, [c]
    ld a, [hl]
    di
    rst $38
    rst $38
    db $fd
    rst $38
    ld a, h

jr_056_580b:
    rst $38
    ld e, [hl]
    rst $38
    ld a, [hl]
    rst $18
    ccf
    rst $18
    adc a
    ld a, a
    pop af
    rst $38
    ld a, c
    rst $30
    rst $38
    rst $38
    cp $ff
    db $e3
    sbc $c2
    rst $38
    rst $38
    rst $38
    cp $ff

jr_056_5824:
    ei
    rst $38
    inc sp
    db $fd
    rst $38
    ld bc, $cf37
    ld e, $ff
    ld a, [de]
    rst $38
    ldh [$1f], a
    ret nz

    ccf
    or b
    ld c, a
    add c
    ld a, a
    ld a, a
    rst $38
    rra
    rst $38
    ccf
    rst $38
    cp $ff
    cp $ff
    pop hl
    rst $38
    add e
    rst $38
    inc a
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    pop hl
    rst $38
    db $e3
    db $fc
    rst $28
    pop af
    db $ed
    jp $836d


    cpl
    rlca
    rst $38
    rlca
    ld c, a
    or a
    rlca
    rst $38
    cp $ef
    ld sp, hl
    rst $38
    rst $20
    rst $38
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
    ld a, a
    rst $38
    cp a
    ld a, a
    rst $18
    ccf
    sbc a
    ld h, a
    rra
    db $e3
    ldh a, [$fa]
    ldh [$e0], a
    ld h, b
    ld l, h
    ld h, c
    ld h, a
    inc bc
    ccf
    nop
    adc [hl]
    add hl, sp
    push bc
    ld [hl], c
    add hl, bc
    ret nz

    ld [$0700], sp
    inc bc
    inc b
    ld [bc], a
    inc [hl]
    ld bc, $003f
    ld b, $c9
    dec c
    ret


    cpl
    ld [$e00d], a
    ld b, $c6
    ld [hl], $a2
    ld d, d
    inc [hl]
    call z, $0a19
    nop
    rrca
    rlca
    ld [$fffd], sp
    sbc c
    rst $38
    ld e, l
    or e
    ld e, e
    rst $38
    rrca
    rst $18
    rlca
    add e
    rst $00
    inc de
    add e
    rlca
    ld h, e
    rst $30
    di
    db $fd
    db $fd
    di
    ld sp, hl
    rst $38
    ld a, l
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    cp $ff
    xor $ff
    cp [hl]
    db $fd
    sbc l
    ld a, $bc
    ld e, a
    inc a
    ld e, a
    ld h, $ff
    ld d, e
    rst $20
    ld e, e
    rst $20
    ld b, d
    ld a, a
    ld a, l
    di
    add hl, sp
    ld h, a
    sbc e
    db $fd
    adc a
    sbc $6f
    sbc [hl]
    dec c
    sbc $0f
    db $fc
    add [hl]
    db $fd
    db $f4
    rst $28
    adc a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp $ff
    or $fd
    rst $38
    db $fc
    sbc a
    db $fd
    dec [hl]
    rst $38
    db $e4
    rst $38
    pop hl
    rst $38
    db $eb
    rst $38
    adc a
    rst $38
    ld a, $ff
    ld l, $ff
    and [hl]
    rst $38
    ld h, [hl]
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    call z, Call_056_6fff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    db $ec
    ei
    inc e
    ld hl, sp-$41
    ld a, [bc]
    db $fd
    cp $f9
    call z, $30f3
    rst $08
    jr nz, @-$1f

    dec hl
    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    rst $28
    rst $38
    ei
    rst $38
    ld [hl], e
    rst $38
    rst $20
    rst $38
    jp hl


    rst $38
    cp c
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    dec e
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    db $db
    ccf
    dec sp
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
    rst $38
    rst $38
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
    inc b
    ei
    inc a
    jp $c738


    ld [hl], b
    adc a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rrca
    and e
    ld b, a
    rst $38
    nop
    ld a, a
    add b
    ei
    nop
    add $21
    ld b, h
    or d
    ld a, h
    add d
    db $fc
    nop
    inc e
    add b
    ld h, b
    ldh [$f0], a
    ldh a, [$e1]
    pop hl
    nop
    nop
    inc b
    inc b
    ld bc, $0100
    nop
    ld bc, $b800
    ld b, e
    ld a, c
    add d
    db $fd
    ld [bc], a
    rst $28
    rst $38
    db $ec
    db $fd
    adc b
    push af
    add e
    ld hl, sp-$67
    and d
    inc d
    xor e
    inc l
    pop hl
    ldh [$7f], a
    ldh a, [$7d]
    ld a, c
    cp $7b
    cp h
    or c
    cp $fb
    ldh a, [$9d]
    cp $9f
    rst $38
    rst $30
    rst $38
    xor $f7
    rst $20
    rst $38
    or $ff
    ld [hl], $ff
    sbc [hl]
    ld a, a
    adc a
    ccf
    rrca
    sbc a
    rrca
    rst $38
    sub a
    rst $28
    ei
    rst $18
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    ld sp, hl
    ld a, a
    sbc a
    ccf
    rst $08
    ccf
    adc a
    rra
    rst $28
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $5f
    ld a, [hl]
    rst $38
    db $fc
    rst $38
    ei
    cp $75
    cp $ea
    rst $38
    add hl, de
    rst $38
    cp [hl]
    rst $38
    ld [hl], a
    rst $38
    ld h, a
    rst $38
    ld d, a
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $eb
    rst $38
    push af
    rst $38
    pop hl
    rst $38
    ld bc, $07ff
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld [hl], b
    adc a
    ld b, b
    cp a
    jr nz, @+$01

    ccf
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
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
    cp $ff
    push bc
    rst $38
    adc [hl]
    rst $38
    sbc l
    rst $38
    cp e
    rst $38
    ld a, a
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    or b
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
    db $10
    rst $28
    nop
    rst $38
    ld h, b
    sbc a
    ld l, b
    sub a
    rst $38
    nop
    cp $01
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    ld a, b
    rlca
    dec a
    ld [bc], a
    dec a
    nop
    add a
    jr c, jr_056_5a96

    xor h
    ld l, e
    sub h

jr_056_5a96:
    ld a, e
    add h
    ld a, e
    add h
    inc bc
    inc b
    adc e
    sbc b
    add h
    or a
    ld [hl-], a
    ld b, d
    ld h, b
    sub l
    add b
    ld h, c
    ret z

    dec e
    ret nz

    daa
    nop
    sbc [hl]
    reti


    ld h, $f9
    ld b, $ed
    cp a
    ld a, b
    cp a
    ld [hl-], a
    db $fd
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    ld a, [de]
    push af
    and l
    db $db
    rst $08
    di
    di
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp $3f
    rra
    cp a
    ccf
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $30
    rst $38
    ld a, [c]
    rst $38
    cp $ff
    rst $38
    cp $fc
    rst $38
    cp $fd
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp [hl]
    rst $38
    ld d, a
    rst $38
    xor a
    rst $38
    ld d, a
    rst $38
    and a
    rst $38
    dec d
    rst $38
    nop
    rst $38
    ld d, $ef
    inc l
    rst $38
    or h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $30
    rst $38
    add l
    rst $38
    rlca
    rst $38
    ld [bc], a
    rst $38
    ld bc, $0efe
    pop af
    add b
    rst $38
    ret nz

    rst $38
    db $e4
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $08
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    rst $20
    rst $38
    di
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
    inc hl
    rst $38
    rlca
    rst $38
    cp e
    rst $38
    pop bc
    rst $38
    ld [bc], a
    rst $38
    daa
    rst $38
    ld b, $ff
    inc b
    rst $38
    inc c
    rst $38
    inc b
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
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
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    ld a, a
    ccf
    rra
    rra
    rra
    rlca
    inc bc
    inc bc
    rlca
    inc bc
    rrca
    ld bc, $001c
    ld e, $00
    rst $28
    nop
    ld b, a
    jr @+$03

    cp $38
    db $fd
    jr jr_056_5bae

    ldh a, [$08]
    ldh [rNR10], a

jr_056_5bae:
    ldh a, [rP1]
    rst $28
    call c, $fc98
    ld d, $f8
    ld [hl], $f8
    or b
    ld a, a
    ld sp, $61fc
    ld hl, sp+$73
    db $fc
    db $fd
    ldh a, [$f0]
    cp $f7
    ld hl, sp-$20
    rst $38
    db $e3
    db $fc
    db $e3
    ldh a, [$f6]
    pop hl
    ld [$cff5], a
    rst $38
    add a
    rst $38
    adc a
    rst $38
    rst $28
    rst $18
    ld e, a
    xor a
    sbc a
    rst $28
    adc l
    ccf
    ld c, l
    sbc a
    ld d, a
    cpl
    ld b, $7f
    rst $30
    ld c, $c3
    ld a, $2c
    rst $00
    sbc b
    rst $28
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$f9]
    cp $f0
    rst $10
    pop af
    push hl
    db $d3
    set 7, a
    xor $ff
    ld b, a
    cp a
    cpl
    rst $10
    sbc a
    rst $38
    rst $18
    rst $38
    xor a
    rst $38
    db $dd
    cp a
    xor a
    cp $15
    cp $03
    db $fc
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
    rst $30
    rst $38
    rst $38
    rst $38
    adc a
    rst $38

Call_056_5c1e:
    pop de
    rst $38
    add d
    rst $38
    ld a, e
    add a
    daa
    rst $18
    nop
    rst $38
    db $10
    rst $28
    inc bc
    db $fc
    ld bc, $a0fe
    rst $38
    add sp, -$01
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
    rst $38
    rst $38
    cp $ff
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
    cp a
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    ld a, c
    rst $38
    ld hl, sp-$01
    ccf
    rst $38
    ld e, a
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
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $30
    rst $38
    ld [c], a
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
    add h
    ld a, e
    call z, $0c33
    di
    db $10
    rst $28
    ldh [$1f], a
    ret nz

    ccf
    cp a
    rra
    ld a, a
    rrca
    ld b, a
    rlca
    ld b, a
    nop
    pop hl
    nop
    ld a, [$fe00]
    nop
    ld a, [$8f00]
    rst $20
    or b
    adc a
    ld bc, $2436
    ld e, a
    inc sp
    rlca
    ld [$a137], sp
    ld h, [hl]
    ld l, c
    ld h, d
    ld [hl], d
    ld hl, sp+$79
    ld a, [$fa78]
    ld a, a
    dec sp
    cp d
    ld a, l
    cp a
    ld a, l
    cp a
    ld e, a
    db $fc
    cp a
    db $fc
    rst $38
    adc c
    sbc $85
    ld a, [$56a9]
    add hl, bc
    sub $04
    add d
    dec bc
    add a
    adc a
    ld b, a
    rra
    ld h, a
    cp e
    rlca
    inc sp
    rrca
    rst $10
    add hl, hl
    db $76
    rst $38
    ldh a, [$fd]
    ldh a, [$f8]
    db $f4
    ld hl, sp-$18
    rst $30
    rst $38
    db $ec
    or $fe
    cp $ff
    dec a

jr_056_5cf9:
    rst $38
    ld d, a
    cp c
    ccf
    reti


    cpl
    db $dd
    ld a, e
    db $ed
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    reti


    rst $38
    rst $30
    ld a, e
    ld [hl], c
    rst $38
    jp $f13f


    rrca
    sbc b
    ld h, a
    ld a, [c]
    db $fd
    db $fd
    ei
    db $fd
    ei
    db $fd
    ei
    rst $38
    ei
    ei
    rst $38
    ei
    rst $38
    ld b, a
    rst $38
    jp Jump_056_72ff


    adc l
    ld [hl], d
    adc a
    jr nc, jr_056_5cf9

    rst $38
    nop
    ld a, [c]
    nop
    ldh a, [rP1]
    dec sp
    ret nz

    add a
    ld hl, sp-$3f
    cp $d8
    rst $38
    rst $38
    rst $38
    di
    rst $38
    ld hl, sp-$01
    db $fc
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
    db $fd
    rst $38
    call c, $fcff
    rst $38
    and c
    rst $38
    ld h, a
    rst $38
    ld c, [hl]
    rst $38
    ld e, $ff
    rst $08
    rst $38
    rst $38
    rst $38
    ld a, h
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
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
    rra
    rst $38
    inc de
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rla
    rst $38
    dec [hl]
    rst $38
    dec [hl]
    rst $38
    ld [hl], a
    rst $38
    ld b, c
    rst $38
    ld b, a
    rst $38
    ld b, a
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    rra
    rst $38
    rrca
    rst $38
    dec b
    rst $38
    ld bc, $05ff
    rst $38
    nop
    rst $38
    ld bc, $00ff
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
    ccf
    rrca
    rra
    inc bc
    daa
    ld bc, $0004
    ei
    rst $30
    xor e
    ld a, [c]
    nop
    ld a, b
    nop
    db $fc
    pop de
    xor $3b
    ret nc

    sbc [hl]
    ld [hl], c
    db $db
    ld [hl], c
    dec hl
    ld [hl], c
    add e
    ld [hl], l
    and l
    ld a, c
    dec a
    ld hl, sp-$2e
    cp l
    ldh a, [$bf]
    ld sp, hl
    cp $ff
    rst $38
    rst $38
    ld a, a
    ld [hl], e
    ld sp, hl
    ld d, c
    and c
    cpl
    ret nz

    ld l, b
    and c
    ld [hl-], a
    ld b, b
    or [hl]
    nop
    and h
    sbc b
    adc d
    sub h
    jp nz, $f2bc

    db $fd
    db $ec
    di
    db $e3
    db $fc
    pop de
    cp $dd
    rst $18
    rst $38
    call c, $dffc
    ld e, l
    ld a, e
    sbc c
    ld a, a
    ld [$287e], sp
    sbc $8f
    db $ec
    add a
    db $ed
    and l
    res 1, a
    di
    dec sp
    rst $38
    ld a, l
    ld a, [$f8fe]
    cp $fe
    cp $ff
    rst $38
    cp $f5
    cp $ff
    rst $38
    inc bc
    inc bc
    ld hl, sp-$08

jr_056_5e16:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc h
    db $db
    inc a
    jp $014a


    ld h, [hl]
    ld bc, $03ec
    rst $20
    jr jr_056_5e16

    nop
    ei
    nop
    ld e, h
    and b
    jp $fffc


    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rrca
    rst $38
    inc e
    rst $38
    cp $ff
    rlca
    rst $38
    add d
    rst $38
    ldh a, [rIE]
    ld a, a
    rst $38
    rrca
    rst $38
    ret nz

    rst $38
    or b
    rst $38
    set 7, a
    ld e, a
    rst $38
    ldh a, [rIE]
    cp $ff
    ld a, a
    rst $38
    ld [hl], e

Call_056_5e5f:
    rst $38
    ld [hl+], a
    rst $38
    cp [hl]
    rst $38
    scf
    rst $38
    scf
    rst $38
    or $ff
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
    cp a
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18

jr_056_5e8d:
    rst $38
    sbc a
    rst $38
    call z, $fcff
    rst $38
    dec b
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld [hl-], a
    db $fd
    ld [bc], a
    db $fd
    pop bc
    cp $01
    cp $00
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    scf
    ret z

    ld [hl], a
    ld [$98ef], sp
    ld d, h
    jr nc, @+$7b

    inc b
    add hl, sp
    ldh [$e6], a
    ld h, b
    push bc
    ld h, b
    jp nc, $c4e0

Call_056_5ebf:
    ldh [$a0], a
    ldh a, [$e2]
    ld sp, hl
    db $e3
    ldh [$86], a
    ret nz

    add b
    sub h
    inc bc
    call nc, $f6c9
    db $eb
    sub $d7
    cp e
    dec de
    cp a

jr_056_5ed4:
    cp a
    ld e, $1c
    ld a, d
    jr @+$81

    add hl, sp
    ld e, h
    add hl, de
    inc e
    sbc c
    inc e
    cp b
    inc a
    ld a, b
    jr c, jr_056_5ed4

    jr jr_056_5e8d

    ld e, c
    dec e
    ei
    sbc l
    rst $28
    sbc a
    rst $38
    cp a
    rst $38
    ld c, a
    sbc a
    rlca
    adc a
    rlca
    ld hl, $6108
    ld h, b
    pop af
    ldh a, [$f9]
    ccf
    ld hl, sp-$08
    ccf
    ld a, l
    cp a
    ld a, [de]
    db $fd
    ld [hl], h
    sbc e
    rl e
    ld d, e
    ld a, a
    ld a, a
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    ld h, e
    add b
    ld e, $e0
    ccf
    rst $38
    cp a
    ld a, a
    rst $38
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ld h, a
    sbc a
    ld c, $f1
    rra
    ldh [$7b], a
    add b
    db $e3
    nop
    ld hl, sp+$01
    db $fc
    nop
    ret nc

    nop
    jr nz, jr_056_5f3a

jr_056_5f3a:
    nop
    ldh a, [$c9]
    cp $ff
    rst $38
    ei
    rst $38
    rra
    rst $38
    dec de
    rst $38
    ld sp, hl
    rst $38
    ld a, h
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    db $fc
    rst $38
    sbc $ff
    dec sp
    rst $38
    ld c, $ff
    add a
    rst $38
    rst $00
    rst $38
    ld a, [hl]
    rst $38
    xor a
    rst $38
    rst $08
    rst $38
    cp $ff
    xor $ff
    rst $00
    rst $38
    pop hl
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    db $e4
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ld h, b
    sbc a
    ld h, b
    sbc a
    jr c, @-$37

    ld a, h
    add e
    ld a, l
    add d
    ld e, [hl]
    and c
    call c, $f623
    add hl, bc
    db $ec
    inc de
    or $09
    pop af
    add a
    ld b, d
    dec c
    rlca
    jr nz, jr_056_600e

    ld hl, $01f2
    ret nz

    jr nc, jr_056_6021

    ld h, e
    ld [hl], h
    db $e3
    db $f4
    ld sp, hl
    ld a, [$fbfd]
    db $fc
    ld a, b
    ld sp, hl
    ld [hl], a
    ld sp, hl
    di
    db $fc
    ld hl, sp+$3f
    ld a, h
    cp a
    ld a, h
    rst $38
    or [hl]
    rst $38
    dec e
    cp $5e
    cp l
    jr @+$01

    sbc h
    rst $38
    adc [hl]
    ld a, a
    ld a, [hl]
    sbc a
    ld a, h
    ccf
    ld e, $2d
    add $3c
    rlca
    cp a
    and e
    rst $18
    push hl
    sbc $ea
    sub a
    ld c, b
    or [hl]
    inc a
    ldh a, [$37]
    db $fd
    rst $00
    rst $38
    cp $ef
    ld a, [hl]
    adc [hl]
    ccf
    rst $18
    ld e, h
    cp a
    ld c, $fc
    pop hl
    cp $6e
    push hl
    ld [hl], l
    or d
    ld [hl], h
    ld a, [$fdf8]
    ld hl, sp-$01
    cp h
    ei

jr_056_600e:
    ld a, c
    rst $38
    rst $38
    rst $38
    cp $fb
    rst $38
    ld hl, sp-$04
    ei
    dec c
    ld [bc], a
    db $ec
    jp $f2fd


    ld sp, hl
    or $fc

jr_056_6021:
    di
    ld hl, sp-$09
    cp $f1
    cp $f1
    call z, Call_000_0cf3
    di
    ret nz

    ccf
    pop bc
    ccf
    ld bc, $01ff
    rst $38
    ld b, c
    ccf
    ld b, c
    ccf
    inc bc
    ccf
    ld [bc], a
    ccf
    nop
    ccf
    dec a
    jp nz, $c02f

    add $f8
    add sp, -$01
    pop af
    rst $38
    ld a, $ff
    rlca
    rst $38
    and a
    rst $18
    db $dd
    rst $38
    rst $38
    rst $38
    rst $20
    rst $18
    pop bc
    rst $38
    pop af
    rst $38
    ccf
    rst $38
    add e
    rst $38
    db $e3
    rst $38
    di
    rst $38
    rst $18
    rst $38
    scf
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $28

jr_056_6069:
    rst $38
    rst $28
    rst $38
    cp a
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
    rst $38
    rst $38
    rst $38
    db $eb
    rst $38
    jp $c2ff


    rst $38
    add b
    rst $38
    jr nz, jr_056_6069

    inc h
    rst $18
    ld a, b
    adc a
    ld a, b
    adc a
    ld h, b
    sbc a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
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
    ld a, [c]
    ldh a, [$29]
    ldh a, [$95]
    ld h, b
    sbc b
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    ret nz

    ld h, b
    ret nz

    jr nz, jr_056_6102

    jr nz, @-$3e

    call nz, $c6c0
    add b
    adc h
    add b
    dec l
    add b
    ld b, a
    adc b
    rrca
    add b
    ld e, a
    and d
    ld [hl], $fb
    cp $7f
    dec [hl]
    cp $fe
    db $fd
    ld a, h
    cp $78
    db $fc
    ld a, b
    db $fc
    ld [hl], b
    db $fc
    cp $e3
    rst $30
    ld a, [hl]
    ld e, [hl]
    cp a
    ld e, a
    cp a
    ei
    ccf
    ccf
    ccf
    cp [hl]
    ccf
    jr jr_056_6171

    add hl, bc
    cp h
    rst $08
    ld [$4f0b], sp
    dec de
    ld c, a
    rst $30
    jp $e3fc


    ld a, h
    di
    ld l, e
    rst $20

jr_056_6102:
    ei
    ld h, a
    ld h, a
    rst $38
    add a
    ld a, e
    and [hl]
    ld e, e
    rst $30
    db $e3
    rst $28
    di
    ld l, a
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    cp a
    ld a, a
    cp h
    ld a, h
    ld b, b
    ldh [$60], a
    ldh [$f8], a
    ld a, b
    ld hl, sp+$78
    ld a, b
    ld hl, sp-$10
    ldh a, [$f1]
    ldh a, [$f1]
    pop af
    pop af
    pop hl
    di
    pop hl
    sub e
    pop hl
    inc bc
    pop hl
    ld b, e
    add e
    add e
    inc bc
    pop af
    inc bc
    ccf
    jp $f70b


    ld h, e
    sbc a
    sub a
    ld l, a
    sbc a
    ld h, a
    add a
    ld a, a
    ld b, a
    rst $38
    rst $08
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    rra
    rst $38
    rra
    rst $38
    sbc [hl]
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
    cp $ff
    db $fd
    rst $38
    ld a, [$fdff]
    rst $38
    ld a, [$f7ff]
    rst $38
    rst $38

jr_056_6171:
    rst $38
    rst $10
    rst $38
    db $eb
    rst $38
    di
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    cp a
    rst $38
    ld d, a
    rst $38
    ld a, [bc]
    rst $38
    dec b
    rst $38
    ld [bc], a
    rst $38
    ld bc, $82ff
    rst $38
    ld b, c
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    jr jr_056_61e3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_056_61f3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_056_6203

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_056_6213

    ld [hl-], a

jr_056_61e3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_056_6223

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_056_61f3:
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

jr_056_6203:
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]

Jump_056_6207:
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
    ld h, b
    ld h, c

jr_056_6213:
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
    ld h, b
    ld [hl], b

jr_056_6223:
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
    ld h, b
    ld a, a
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    add hl, de
    adc b
    adc c
    adc d
    adc e
    adc h
    ld h, b
    adc l
    adc [hl]
    adc a
    sub b
    sub b
    add hl, de
    sub c
    sub d
    sub e
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
    add hl, de
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
    add hl, de
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
    add hl, de
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


    jp z, Jump_000_19cb

    call z, $cecd
    rst $08
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, $db19

    call c, $dedd
    rst $18
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    add hl, de
    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp+$19
    ld sp, hl
    ld a, [$fcfb]
    db $fd
    cp $ff
    nop
    add hl, de
    ld bc, $0302
    inc b
    dec b
    ld b, $19
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $19
    add hl, de
    rrca
    db $10
    ld de, $1312
    add hl, de
    inc d
    dec d
    ld d, $17
    jr jr_056_62f7

    ld a, [de]
    dec de
    add hl, de
    add hl, de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_056_6301

    ld hl, $2322
    inc h
    dec h
    ld h, $27
    jr z, jr_056_62f3

    ld [bc], a
    ld [bc], a

jr_056_62f3:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_056_62f7:
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_056_6301:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0300
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
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0002
    nop
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0601
    ld bc, $0002
    nop
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0606
    ld b, $01
    nop
    nop
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    nop
    ld bc, $0606
    ld bc, $0000
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    ld bc, $0101
    ld bc, $0601
    ld b, $01
    nop
    nop
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    ld bc, $0101
    ld bc, $0601
    ld b, $06
    nop
    nop
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    ld bc, $0101
    ld bc, $0000
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    dec b
    ld b, $06
    ld b, $00
    nop
    nop
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    dec b
    ld bc, $0606
    nop
    nop
    nop
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    dec b
    ld b, $06
    ld b, $00
    nop
    nop
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    dec b
    ld b, $06
    ld b, $00
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    dec b
    ld b, $06
    ld c, $00
    ld [$0a08], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    nop
    ld a, [bc]
    ld a, [bc]
    ld [$0d08], sp
    add hl, bc
    ld c, $0e
    nop
    nop
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    nop
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    dec c
    ld c, $0e
    nop
    nop
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    nop
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    dec c
    ld c, $0e
    jr jr_056_6491

    ld c, $1f
    ld b, $1e
    ld [bc], a
    ld [hl], $06
    ld b, a
    rlca
    rst $28
    ld a, a
    ld a, a
    ld [hl], l
    ld a, a
    ld h, h
    ld a, a
    ld c, e
    ld [hl], a
    ld d, [hl]
    inc bc
    ld [hl+], a
    rlca
    ld [hl], b
    dec bc
    ld de, $340a
    nop
    jr nz, jr_056_6450

jr_056_6450:
    nop
    inc b
    dec b
    inc b
    ld bc, $6100
    nop
    nop
    ld bc, $010b
    dec sp
    ret nz

    ld c, h
    ldh [$0e], a
    ld h, b
    ld c, b
    jr nz, jr_056_646d

    nop
    inc b
    nop
    ld b, h
    nop
    ld [bc], a
    nop
    nop

jr_056_646d:
    nop
    inc b
    nop
    jr nz, jr_056_6485

    db $10
    daa
    ld d, $3f
    rla
    ccf
    ld b, [hl]
    ld a, $1e
    ld a, $7a
    inc c
    ld b, b
    ld [$4c38], sp
    ld a, [bc]
    ld [hl], l
    ld b, d

jr_056_6485:
    jr nz, jr_056_64ce

    ret nz

    nop
    ld b, b
    nop
    nop
    nop
    jr nz, jr_056_64da

    inc sp
    inc sp

jr_056_6491:
    ld l, a
    dec bc
    ld [hl], a
    ld e, h
    ccf
    ld a, a
    ld a, a
    ld [hl], c
    ld l, a
    ld h, e
    ld hl, $2b05
    ld [de], a
    dec l
    inc bc
    scf
    rlca
    jr c, jr_056_64b5

    ld h, h
    inc bc
    ld [hl], c
    dec b
    ld a, c
    ld h, b
    ld a, a
    ld a, d
    rst $20
    ld a, l
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    nop

jr_056_64b5:
    nop
    nop
    db $fc
    rst $20
    rst $38
    rst $28
    rst $20
    rst $38
    rst $28
    rst $28
    rst $38
    rst $28
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    rst $28
    rst $28
    rst $28
    rst $28

jr_056_64ce:
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, b
    inc b
    inc d
    dec hl
    jr jr_056_64d8

jr_056_64d8:
    ld hl, sp+$00

jr_056_64da:
    jr jr_056_64dc

jr_056_64dc:
    db $fd
    ld [bc], a
    ei
    inc b
    rst $38
    nop
    nop
    nop
    ld b, e
    nop
    inc c
    rst $38
    and $1f
    rst $00
    ccf
    rst $08
    ccf
    rst $28
    rra
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
    ccf
    rst $38
    ld a, a
    rst $38
    cp $ff
    ld hl, sp-$01
    ld b, c
    cp $3d
    ld b, b
    ld a, h
    nop
    nop
    ld b, b
    ld c, $e0
    inc bc
    ld a, h
    nop
    db $fd
    ld b, b
    ld hl, sp+$4f
    db $fc
    ld [hl], h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, $df
    ld [bc], a
    inc sp
    ld a, b
    ld [hl], c
    jr c, @+$04

    ld b, e
    ld [$4043], sp
    ld l, b
    ld [$0949], sp
    rrca
    rlca
    sbc [hl]
    ld [bc], a
    rst $08
    add e
    adc $01
    jp $e3c1


    ld h, e
    rst $38
    ccf
    ccf
    ccf
    ld a, $36
    cp d
    sbc d
    ld [hl], h
    or b
    ld b, b
    ld b, c
    nop
    and b
    call nz, $c080
    nop
    ld [bc], a
    ld b, $03
    add a
    ld [bc], a
    ld [hl+], a
    rlca
    ld [hl], d
    inc bc
    ld hl, sp+$00
    ld l, l
    ld [c], a
    pop af
    ld [hl+], a
    ld bc, $0820
    nop
    jr nz, jr_056_656c

jr_056_656c:
    jr nz, jr_056_656e

jr_056_656e:
    stop
    nop
    nop
    add c
    nop
    nop
    add b
    nop
    nop
    jr nc, jr_056_657a

jr_056_657a:
    sbc b
    nop
    ld [$0010], sp
    jr nc, jr_056_6589

    jp nc, $fc59

    sbc b
    ld a, h
    db $fc
    ld a, d
    ld a, b

jr_056_6589:
    db $fc
    inc a
    ld a, b
    cp b
    ld a, $1e
    cp h
    db $fc
    inc e
    or c
    adc $fb
    add h
    ldh [$c9], a
    ld [c], a
    ret nz

    add b
    ld a, [$cb20]
    rlca
    ld c, a
    dec bc
    daa
    inc bc
    ld h, a
    ld l, e
    rst $30
    rst $38
    rst $20
    cp a
    rst $20
    rst $10
    rst $38
    and a
    rst $38
    ld b, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rlca
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    rrca
    daa
    db $db
    rlca
    inc bc
    ccf
    rlca
    scf
    ld c, a
    dec sp
    rst $00
    cp a
    ld b, a
    ei
    rlca
    inc hl
    rlca
    cpl
    rst $10
    rst $38
    rlca
    ld a, a
    add a
    daa
    rst $38
    rst $38
    rst $38
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
    dec a
    rst $38
    dec [hl]
    cp $ff
    add e
    rst $28
    nop
    cp $00
    rst $38
    ld [hl], a
    ccf
    ld c, $ff
    nop
    ld sp, hl
    ld [hl], b
    add sp, $10
    rst $38
    nop
    rst $38
    add e
    ld hl, sp-$20
    ld hl, sp-$08
    rst $38
    db $fc
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    ld a, e
    ld b, b

jr_056_6631:
    db $fd
    ld b, b
    push af
    ld h, b
    rst $38
    ld [hl], b
    rst $38
    sub b
    sbc c
    ld de, $1092
    scf
    jr nc, jr_056_6657

    nop
    rst $18
    ld b, b
    adc e
    add b
    add hl, bc
    ret c

    adc a
    ld b, b
    rrca
    add d
    rrca
    sub l
    rrca
    sub l
    dec c
    nop
    ld bc, $0031
    jr c, jr_056_6656

jr_056_6656:
    ld b, h

jr_056_6657:
    cp b
    ldh a, [$7c]
    ldh a, [$78]
    ld hl, sp+$30
    or l
    ld h, b
    pop hl
    ldh [$e1], a
    add sp, -$3e
    ldh [$cc], a
    add b
    ld c, c
    add h
    ld a, [hl]
    add l
    ld a, [bc]
    and l
    ld [hl-], a
    call Call_056_478b
    rlca
    adc a
    ld b, a
    add e
    add a
    ld b, e
    inc bc
    ld [hl], e
    add hl, sp
    ld [hl], c
    ld sp, $3cff
    rst $38
    add hl, bc
    ld a, [hl]
    ld h, c
    ld l, [hl]
    inc a
    ld a, $1e
    inc a
    ld a, d
    inc e
    ld e, $19
    db $10
    add hl, de
    db $10
    db $10
    stop
    ld b, $10
    nop
    ld b, $1f
    rlca
    rrca
    rst $38
    rra
    rst $18
    dec de
    sub c
    jr nz, jr_056_6631

    rst $38
    rst $38
    add b
    rst $38
    ldh a, [$f8]
    ldh a, [$f8]
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
    db $fc
    db $fc
    ld hl, sp-$04
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$f7]
    ld hl, sp-$09
    ld hl, sp-$01
    ldh a, [$f7]
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$0b
    ld a, [$fbf4]
    db $f4
    ei
    di
    db $fc
    pop af
    cp $f7
    ld hl, sp-$0a
    ld sp, hl
    di
    db $fc
    pop af
    cp $f0
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    pop af
    cp $f0
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    rst $38
    rst $38
    db $fd
    cp $f6
    ld sp, hl
    ldh a, [rIE]
    pop hl
    di
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, $31df
    sbc [hl]
    inc c
    rst $38
    nop
    db $e3
    nop
    rst $38
    rrca
    rst $38
    dec b
    db $fd
    nop
    db $fc
    ld h, a
    rst $38

Jump_056_6723:
    ld h, e
    rst $38
    ld bc, $0f7f
    rst $38
    rlca
    rst $38
    ld bc, $00e0
    ld b, b
    add b
    ld [$000f], sp
    adc h
    ld b, $8f
    rlca
    cp a
    rlca
    dec sp
    jp $e37f


    ei
    db $e3
    ei
    ld hl, $31ff
    rst $38
    add hl, sp
    rst $38
    add hl, sp
    rst $38
    inc a
    cp $3d
    cp $39
    ld a, a
    ld sp, $b0ff
    rst $38
    or c

jr_056_6753:
    rst $38
    rra
    ld a, l
    dec c
    inc a
    rra
    inc a
    rlca
    ld [$0814], sp
    ld l, h
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    inc d
    add [hl]
    nop
    and e
    call nz, $80d7
    rst $10
    add b
    jp nz, $8580

    ret nz

    adc b
    ret nz

    jp nc, $c280

    add b
    ret nz

    ld [c], a
    ldh [$c2], a
    nop
    add b

jr_056_6780:
    jr z, jr_056_6753

    and c
    ld b, c
    ld bc, HeaderCGBFlag
    ld bc, $0171
    ld hl, $3105
    add e
    or e
    pop bc
    ld a, c
    ld [hl], c
    ld [hl], c
    dec sp
    ld d, c
    ld a, c
    db $db
    pop hl
    ei
    add c
    pop hl
    jp $e1c1


    pop hl
    add c
    rst $38
    rst $38
    nop
    rst $38
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

jr_056_67b6:
    db $fd
    cp $fd
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ld [hl], b
    nop
    nop
    nop
    db $f4

jr_056_67c9:
    nop
    ld a, [c]
    nop
    db $fc
    nop
    db $fc
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
    nop
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$9867], sp
    rst $28
    db $10
    rst $08
    jr nc, jr_056_67b6

    jr c, jr_056_6780

    ld [hl], b
    adc a
    ld [hl], b
    rrca
    ldh a, [$0a]
    push af
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ccf
    rst $38
    add sp, -$10
    ld c, [hl]
    ld bc, $00ff
    rst $00
    jr c, jr_056_67c9

    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    ei
    rlca
    rst $08
    ld bc, $27ff
    rst $38
    ld a, a
    rst $38
    sub e
    rst $38
    xor [hl]
    rst $38
    ccf
    ccf
    nop
    rst $28
    nop
    jp $e780


    ret nz

    adc a
    nop
    add a
    nop
    inc bc
    nop
    ld bc, $0300
    rst $38
    dec b
    ld a, [hl]
    ld [bc], a
    rst $18
    add c
    rst $38
    inc bc
    pop bc
    ld bc, $03c7
    rst $08
    inc bc
    rst $08
    rrca
    adc a
    rlca
    sbc a
    adc a
    rst $28
    ld e, a
    rst $28
    cpl
    ld a, a
    ccf
    ccf
    cpl
    rst $38
    scf
    rst $28
    sbc l
    ld b, a
    ret nz

    ld [bc], a
    ret nz

    nop
    ret c

    nop
    db $ec
    nop
    rst $30
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [de], a
    nop
    add hl, sp
    ld [bc], a
    ld d, d
    ldh [$e0], a
    ldh [$e0], a
    ldh [rSVBK], a
    ld h, b
    ld [hl+], a
    ld b, b
    xor $00
    call $0102
    nop
    dec h
    nop
    sub c
    nop
    ei
    nop
    stop
    inc b
    cp b
    or h
    ld hl, sp-$0c
    ld hl, sp-$04
    rst $38
    cp $ff
    rst $38
    cp $fe
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $28
    rst $18
    rst $08
    db $dd
    db $ed
    db $dd
    xor $dc
    adc $dc
    call c, $dddc
    call c, $dccc
    call $cddc
    sbc h
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
    rst $38
    rst $38
    rst $38
    rst $38
    inc a
    rst $38
    cp c
    ld e, h
    ld sp, hl
    db $dd
    ld sp, hl
    db $dd
    ld sp, hl
    db $dd
    ld sp, hl
    db $dd
    dec sp
    ld e, l
    ld a, e
    dec e
    ld a, e
    ld e, l
    dec sp
    ld e, l
    ld a, e
    ld e, l
    add hl, sp
    ld e, h
    ld a, a
    inc e
    ld a, a
    inc c
    cp a
    ld c, h
    cp a
    ld c, h
    cp a
    ld a, [hl]
    sbc a
    ld a, h
    cp a
    ld c, h
    sbc l
    ld l, [hl]
    sbc l
    ld l, [hl]
    cp l
    ld c, [hl]
    db $ed
    ld e, $af
    ld e, h
    rst $28
    inc e
    xor [hl]
    ld e, l
    xor h
    ld e, a
    cp h
    ld c, a
    sbc l
    ld l, [hl]
    sbc h
    ld l, a
    adc h
    ld a, a
    db $ed
    ld e, $ed
    ld e, $0e
    rst $38
    ld l, [hl]
    sbc a
    add hl, bc
    cp $7f
    add b
    rst $38
    nop
    jr c, jr_056_6902

jr_056_6902:
    and b
    nop
    cp e
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [$37], a
    ret z

    sbc a
    ldh [$f0], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, c
    rst $38
    db $fc
    ld h, c
    rra
    ld [$089f], sp
    rst $00
    nop
    rst $18
    inc bc
    adc a
    ld c, $ef
    ld d, $ff
    ld b, e
    cp a
    dec sp
    sbc a
    rrca
    adc a
    ld b, $ff
    ret nz

    rst $38
    ldh [rIE], a
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
    add b
    rst $38
    add b
    rst $38
    ret nc

    rst $38
    ld a, [$f8e1]
    jr c, jr_056_6954

jr_056_6954:
    jr jr_056_6956

jr_056_6956:
    inc l
    db $10
    ld c, $00
    inc e
    nop
    cp c
    ld b, b
    or e
    ld b, b
    ld b, $80
    sub c
    nop
    ld e, $00
    ld c, $0c
    inc c
    ld c, $4e
    inc c
    cp $04
    cp $04
    ld e, [hl]
    adc h
    cp b
    inc e
    db $10
    inc c
    inc c
    inc c
    rrca
    nop
    ld de, $8102
    db $10
    add c
    db $10
    ld de, $2e00
    ld bc, $020c
    inc c
    ld [bc], a
    add l
    ld [bc], a
    ld b, l
    add d
    rlca
    add b
    ld h, $80
    jp c, $b980

    add b
    ld a, [c]
    add c
    add d
    pop bc
    ld [hl+], a
    pop bc
    inc bc
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    dec c
    jr nz, jr_056_69b0

    ld h, [hl]
    and h
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

jr_056_69b0:
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, l
    cp $ff
    ld a, b
    cp $f1

jr_056_69ba:
    ld a, b
    rst $30
    and e
    db $f4
    ld h, e
    db $f4
    and b
    rst $30
    db $76
    rst $30
    or a
    or $77
    or $77
    ld a, [c]
    ld [hl], a
    ldh a, [$f7]
    ld [hl], b
    rst $30
    ld [hl], b
    rst $30
    pop af
    pop af
    di
    db $fc
    di
    db $fc
    di
    db $fd
    di
    db $fd
    di
    db $fd
    di
    rst $30
    ei
    db $fc
    rst $30
    rst $38
    rst $30
    ld [hl], e
    rst $38
    rst $30
    rst $38
    ld a, e
    or $77
    cp $73
    cp $71
    rst $38
    or e
    ld a, a
    di
    ld a, a
    ld [hl], a
    ld sp, hl
    ld [hl], e
    db $fc
    di
    db $fc
    or a
    ld a, b
    or b
    ld a, b
    db $fc
    jr c, jr_056_6a71

    jr c, jr_056_6a3c

    jr nc, jr_056_6a3c

    ld a, b
    or a
    ld a, b
    rst $30
    jr c, jr_056_69ba

    ld [hl], b
    rst $30
    ld a, b
    db $fc
    ld a, b
    ld [hl], b
    ldh a, [rLCDC]
    add b
    ldh [$c0], a
    cp $f8
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, a
    rst $38
    inc bc
    rst $38
    rst $20
    ccf
    ld [bc], a
    jp nz, $e101

    ret nz

    cp a
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

jr_056_6a3c:
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    ld a, a
    ld h, b
    ld e, a

jr_056_6a46:
    db $e4
    ld b, e
    and e
    ld [hl+], a
    ld bc, $8300
    nop
    rrca
    nop
    nop
    ld bc, $0085
    ld b, l
    add b
    ldh [rP1], a
    ld b, c
    add b
    pop af
    nop
    sub c
    nop
    sub b
    nop
    stop
    ld sp, $2b00
    ld b, b
    inc [hl]
    ld c, b
    inc d
    ld l, b
    ld [hl], b
    jr c, jr_056_6ae9

    jr c, jr_056_6aeb

    jr c, jr_056_6ae9

jr_056_6a71:
    jr jr_056_6a8b

    jr jr_056_6ad1

    inc e
    jr nz, jr_056_6ad0

    ld e, a
    ld h, b
    ld c, $f0
    ldh a, [$e0]
    ldh [$e0], a
    ld [c], a
    ret nz

    or d
    ret nz

    ld e, d
    add b
    adc a
    add [hl]
    ld [hl+], a
    add a
    ld e, l

jr_056_6a8b:
    jr nz, jr_056_6a46

    ld [hl], b
    ld l, a
    ldh a, [$0b]
    db $e4
    rrca
    push hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_056_6a9e:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec sp
    push bc
    cp $01
    cp a
    ld a, a
    rst $10
    ld a, a
    and a
    ld a, a
    rst $30
    ld a, a
    ld h, a
    rst $38
    rst $30
    ld a, a
    rst $38
    ld a, a
    sub l

jr_056_6ab7:
    ld a, [hl]
    ret nz

    ccf
    sbc a
    ld h, b
    rst $18
    jr nz, jr_056_6a9e

    jr nz, @+$01

    nop
    rst $38
    nop
    ld a, a
    add [hl]
    sbc d
    rst $20
    adc h
    ld a, a
    rst $38
    rst $38
    ei
    rst $38
    set 7, a

jr_056_6ad0:
    ld l, a

jr_056_6ad1:
    sbc a
    rst $28
    rra
    rrca
    rst $38
    pop af
    ld c, $f1
    ld c, $fe
    rrca
    rst $30
    rrca
    inc bc
    rst $38
    db $fd
    add e
    db $fd
    inc bc
    ld l, h
    sub e
    rst $38
    nop
    db $fc

jr_056_6ae9:
    nop
    ld [c], a

jr_056_6aeb:
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    nop
    jr nc, jr_056_6af9

jr_056_6af9:
    nop
    inc b
    inc b
    nop
    ldh a, [rP1]
    ldh a, [rIF]
    nop
    ld bc, $0000
    nop
    inc bc
    nop
    ret nz

    nop
    ldh a, [$e0]
    ld hl, sp-$04
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $08
    daa
    jp Jump_056_7b01


    ld bc, $00fe
    sbc [hl]
    jr nz, jr_056_6ab7

    nop
    ld e, $e1
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld b, b
    rst $38
    jp z, $cc3d

    dec a
    ld sp, hl
    ld a, c
    ldh [$c0], a
    ret nz

    add b
    ret nz

    nop
    ret nz

    jr nz, @-$4b

    nop
    ret nc

    nop
    jr z, jr_056_6b5a

    ret


    ld [hl], b
    db $fc
    ld [hl], b
    sbc l
    ld [hl], b
    db $10
    ld h, b
    db $fc
    jr nz, jr_056_6bd1

    ldh [rOCPS], a
    ldh [$ba], a
    ld h, h

jr_056_6b5a:
    sub b
    ld l, h
    adc [hl]
    ld b, h
    ld l, [hl]
    add h
    rst $00
    inc c
    ld l, [hl]
    inc b
    and h
    ld b, $66
    inc d
    ld bc, $a61c
    jr jr_056_6bd1

    jr c, @+$7e

    jr c, jr_056_6bc9

    cp b
    call c, $db88
    nop
    di

jr_056_6b77:
    inc bc
    sub d
    ld bc, $009f
    rla
    ld l, $2e
    ccf
    ld [hl], a
    ld l, $ff
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
    rst $08
    ld a, [hl]
    add c
    xor a
    rst $18
    rst $00
    rst $38
    ei
    rst $38
    di
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    set 7, a

jr_056_6ba6:
    jr nc, jr_056_6b77

    ld h, l
    jp c, $07f8

    rst $20
    jr jr_056_6ba6

    ld [$1ce3], sp
    ld hl, sp+$07
    pop hl
    rra
    ld h, e
    sbc a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $28

jr_056_6bbd:
    ldh a, [$cf]
    ldh a, [$e1]
    cp $c2
    rst $38
    jr z, jr_056_6bbd

    add l
    ld a, e
    sub b

jr_056_6bc9:
    ld a, a
    nop
    rst $38
    inc bc
    db $fd
    res 7, l
    rst $38

jr_056_6bd1:
    rst $38
    ld hl, sp-$08
    add b
    add e
    add b
    add e
    rra
    rra
    ld [hl], b
    ld c, $fa
    dec b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    ld h, c
    ld bc, $0602
    ld hl, $8740
    nop
    ldh [rP1], a
    jr nz, jr_056_6bf4

    nop
    rst $38
    nop

jr_056_6bf4:
    rst $38
    nop
    ld a, a
    add b
    sbc a
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [$c0], a
    db $fc
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
    scf
    ret z

    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld b, b
    cpl
    jp nc, $aa2d

    ld c, a
    inc l
    ld b, d
    nop
    nop
    ld h, b
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld b, b
    ld [$4804], sp
    ld a, $7f
    rst $38
    ld a, a
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    cp a
    ld a, a
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    sbc a
    ld a, a
    rst $18
    ccf
    ccf
    rst $38
    or e
    rst $38
    and b
    ld b, b
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sub c
    ld l, [hl]
    sbc h
    ld [bc], a
    ld b, $89

jr_056_6ccc:
    and e
    ld b, b
    ld bc, $4002
    add hl, de
    rst $20
    jr jr_056_6ccc

    nop
    rst $38
    nop
    rst $20
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
    ldh [$e0], a
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
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
    ld hl, sp+$0d
    ldh a, [$30]
    ld sp, hl
    nop
    ld h, b
    jr z, @+$12

    cp b
    nop
    jr z, jr_056_6d2a

    ld [$0800], sp
    nop
    ld l, b
    nop
    add hl, de
    ldh [$c2], a
    ld hl, sp-$0e
    ld hl, sp-$07
    ldh a, [$fd]
    db $fc

jr_056_6d2a:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$10
    ldh a, [$f0]
    ldh a, [$f0]
    pop af
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$f9]
    or $f0
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    cp $48
    jr nc, jr_056_6ddf

    db $10
    cp a
    ld b, b
    ccf
    ret nz

    sub a
    ld l, b
    db $e4
    ld a, [de]
    ret nz

    inc b
    nop
    adc l
    rra
    nop
    rra
    add b
    ccf
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rNR11], a
    ldh [rNR10], a
    ldh [rNR10], a
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
    ldh a, [$e0]
    cp $00
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    inc bc
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    dec c
    ldh a, [$0e]

jr_056_6ddf:
    ldh [rNR32], a
    nop
    dec e
    nop
    dec de
    nop
    nop
    db $10
    rst $38
    nop
    adc d
    db $10
    ld l, b
    sub b
    ld c, b
    or b
    ret nz

    ld hl, sp+$73
    add b
    push bc
    ld [hl-], a
    ld [$ad47], a
    ld b, [hl]
    cp $ff
    cp $ff
    cp $ff
    rst $38
    inc bc
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101

jr_056_6e0f:
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    ld bc, $ffff
    rst $38
    rst $38
    rra
    ld bc, HeaderManufacturerCode
    rst $18
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    db $fd
    inc bc
    push hl
    dec de
    pop bc
    ccf
    add c
    ld a, a
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
    ld bc, $03ff
    rst $38
    ld c, $ff
    ld c, $ff
    cp a
    rst $38
    ei
    db $fc
    and b
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
    nop
    ld a, a
    nop
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
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    add b
    jr nz, jr_056_6e0f

    nop
    nop
    ret nz

    ret nz

    nop
    ldh [rNR10], a
    rst $38
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
    ld hl, sp+$07
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
    rst $38
    nop
    ld hl, sp+$07
    sub b
    ld l, a
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

jr_056_6ec8:
    di
    pop af
    rst $30
    db $f4
    rst $20
    and $e1
    pop hl
    jr nz, jr_056_6ed2

jr_056_6ed2:
    ld c, h
    add b
    ld [$0c00], sp
    nop
    sbc d
    inc b
    ld [hl], b
    ld l, $7e
    ld l, h
    ld e, h
    ld l, h
    inc h
    ld l, b
    sbc a
    jr z, @+$01

    ld h, b
    ld [hl], e
    ldh [$bd], a
    ld h, d
    ld a, a
    and b
    rlca
    ret nz

    ld h, a
    add c
    inc bc
    add c
    add e
    ld bc, HeaderLogo
    scf
    inc b
    ld b, h
    rlca
    ld e, $07
    xor l
    ld d, d
    add e
    ld a, [hl]
    cp a
    add $c3
    add $99
    add $fc
    add b
    sub b
    xor h
    sbc l
    jr nz, jr_056_6ec8

    ccf
    ld a, a
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
    ld a, a
    cp $3f
    cp $7d
    cp [hl]
    cp h
    rst $38
    dec a

Call_056_6f23:
    cp $bf
    cp $bc
    rst $38
    ccf
    db $fc
    ld a, a
    db $fc
    ccf
    cp $3f
    rst $38
    cp $7f
    cp $7f
    cp $7f
    rst $38
    ld a, [hl]
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
    ld a, [hl]
    rst $38
    ld a, [hl]
    ld a, a
    cp $fe
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    ld a, a
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]

Call_056_6f61:
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, $7e
    ld a, [hl]
    ld a, [hl]
    ccf
    ld a, [hl]
    ld a, [hl]
    ld a, $3c
    ld a, $3c
    ld a, $3c
    ld a, $3d
    ld a, $3c
    ld a, $7e
    inc a
    ld a, a
    inc a
    rst $38
    inc a
    db $fd
    ld a, $ff
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    db $fd
    ld a, $1d
    inc a
    ld e, l
    jr c, jr_056_700c

    ld a, [hl]
    ld a, [hl]
    ld a, $00
    rst $38
    nop
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
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
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
    rst $38
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
    rla
    rlca
    rla
    rlca
    inc b
    inc bc
    add hl, hl
    ld [bc], a
    ld c, c
    ld [bc], a
    ld e, $00
    ld [bc], a
    nop
    ld d, $00
    ld [$1802], sp
    ld [bc], a
    adc h
    ld [bc], a
    add c
    nop
    adc c
    nop
    adc e
    nop
    and e
    ld b, b
    add hl, hl
    ret nz

    ld bc, $81c0
    ret nz

    pop bc
    ret nz

    sub c
    ret nz

    ret nz

    ret nz

    ld [c], a
    ret nz

    ld b, d
    ret nz

    ldh a, [rP1]
    db $f4
    nop
    sub h
    nop
    jr nc, jr_056_6ff2

jr_056_6ff2:
    sub $01
    rst $30
    nop

jr_056_6ff6:
    rrca
    ld [hl], b
    dec a
    ld [hl], $74
    rrca
    rst $38
    rst $38
    rst $38

Call_056_6fff:
    rst $38
    rst $38
    rst $38
    cp $ff
    ld e, [hl]
    inc a
    ld a, h
    sbc [hl]
    ld e, h
    cp [hl]
    ld e, [hl]
    inc e

jr_056_700c:
    ld e, l
    ld e, $1d
    sbc $3c
    sbc $dc
    rra
    adc h
    ld e, a
    inc d
    ld e, [hl]
    dec a
    ld b, b
    rst $38
    nop
    cp a
    ld a, a
    rst $38
    rst $38
    ld l, [hl]
    rst $38
    push af
    ld l, [hl]
    sbc c
    ld h, [hl]
    ld bc, $c2ff
    dec a
    ccf
    ret nz

    ld e, a
    and b
    ld a, l
    add d
    db $e3
    db $fc
    ld l, a
    or b
    ccf
    ret nz

    rst $30
    ld [$c03f], sp
    ld [hl], c
    ld c, $03
    rrca
    dec c
    rlca
    nop
    nop
    stop
    ld e, $e1
    nop
    rst $38
    add b
    ld a, a
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
    rst $18
    jr nz, jr_056_6ff6

    jr nz, @+$01

    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    adc a
    ld b, b
    ld sp, hl
    ld b, $ff
    nop
    ret


    ld [hl], $25
    ld a, [de]
    ld bc, $0030
    add b
    nop
    ld h, b
    add b
    ld h, b
    jr nz, jr_056_70b2

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
    db $10
    db $10
    pop de
    jr jr_056_7081

jr_056_7081:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld [bc], a
    rst $38
    ld bc, $02ff
    rst $38
    dec b
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
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38

jr_056_70b2:
    rst $38
    rst $38
    rst $38
    ei
    cp $e8
    db $ec
    call z, VBlankInterrupt
    nop
    nop
    nop
    nop
    jr nc, jr_056_70c2

jr_056_70c2:
    ret z

    db $10
    ldh [rNR23], a
    inc d
    ld a, b
    ld b, $70
    sbc [hl]
    ld h, b
    xor [hl]
    ld [hl], b
    and $10
    db $e4
    dec bc
    db $10
    ld l, a
    jr nc, jr_056_70e5

    ld l, h
    rlca
    ld b, d
    rlca
    ld h, l
    ld [bc], a
    ld c, [hl]
    inc sp
    inc a
    inc de
    dec hl
    inc e
    jp $8b3c


jr_056_70e5:
    inc a
    and d
    inc e
    or l
    ld a, [bc]
    ld a, l
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    cp l
    call c, $de9d
    db $fd
    sbc [hl]
    inc e
    rst $18
    sbc h
    rst $18
    inc e
    rst $18
    sbc l
    sbc $dc
    sbc a
    db $dd
    sbc h
    ld e, l
    sbc [hl]
    adc l
    ld [hl], d
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$e3ff], sp
    inc e
    add b
    ld a, a
    ret nz

    ccf
    add sp, $17
    ret nc

    ccf
    ld h, b
    sbc a
    ldh [$1f], a

Call_056_7120:
    ldh [$1f], a
    or b
    ld c, a
    ld a, d
    add a
    cp $01
    db $fc
    inc bc
    ldh a, [rIF]
    ldh a, [rIF]
    ld h, b
    sbc a
    rrca
    rrca
    ld b, a
    rrca
    jr nc, @-$3e

    nop
    ret nz

    db $10
    ldh [rSCY], a
    dec a
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
    jr nz, jr_056_714a

jr_056_714a:
    ret nz

    nop
    ret nz

    nop
    ld c, b
    nop
    cp $00
    call c, Call_056_7120
    adc [hl]
    db $ed
    ld [de], a
    or a
    nop
    inc bc
    ret nz

    rlca
    nop
    rrca
    nop
    ccf
    nop
    ld a, a
    nop
    ccf
    ld b, b
    ld a, a
    nop
    ld a, a

jr_056_7169:
    nop
    ccf
    nop
    sbc a
    nop
    sbc a
    nop
    ld a, [bc]

jr_056_7171:
    rst $38
    dec d
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    nop
    rst $38
    ld bc, $02ff
    rst $38
    ld bc, $00ff
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    ld a, [hl+]
    rst $38
    dec d
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    rst $38
    push af
    rst $38
    ld a, [$fdff]
    rst $38
    ld a, [hl-]
    ld a, a
    ld b, $26
    nop
    ld b, d
    nop
    ld b, b
    nop
    nop
    ld b, d
    add h
    ld [bc], a
    ret nz

    ld [bc], a
    add $00
    ld h, $03
    db $10
    inc hl
    inc de
    ld h, b
    sub e
    ld h, b
    call nc, Call_056_6f23
    db $10
    ld b, d
    add hl, sp
    ld b, $39
    db $10
    add hl, hl
    ld bc, $0118
    jr jr_056_71e0

    jr jr_056_7169

    nop
    sbc c
    inc b
    db $fd
    nop
    rst $10
    jr nz, jr_056_7171

    ld h, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_056_71e0:
    rst $38
    rst $38

jr_056_71e2:
    rst $38
    rst $38
    cp [hl]
    db $fc
    db $dd
    cp $9d
    cp $9d

jr_056_71eb:
    cp $fc
    cp a
    sbc l
    cp $bc
    cp $9c
    rst $38
    call c, Call_056_5ebf
    cp l
    add hl, bc
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [bc]
    rst $38
    dec [hl]
    rst $18
    ld [bc], a
    rst $38
    nop
    rst $38
    jr z, @+$01

    db $10
    rst $38
    add hl, bc
    cp $01
    cp $02
    rst $38
    ld de, $2aff
    rst $38
    ld de, $2aff
    rst $38
    ld d, h
    rst $38
    ld a, [bc]
    rst $38
    dec d
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
    add b
    nop
    add b
    ld a, a
    jr nc, jr_056_723f

    ld sp, hl
    ld b, $ff
    nop
    sbc a
    db $10
    rst $28
    nop
    cpl
    jr nz, @+$01

    nop
    ld [c], a

Jump_056_723d:
    dec e
    sub b

jr_056_723f:
    ld l, a
    jr nz, jr_056_72a1

    call $bf32
    ld b, b
    pop hl
    nop
    jp Jump_000_1f00


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
    cp $01
    cp $07
    db $eb
    jr @-$73

    jr jr_056_71e2

    jr c, jr_056_71eb

    rst $38
    dec b
    rst $38
    add d
    rst $38
    ld d, c
    rst $38
    xor b
    rst $38
    ld d, h
    rst $38
    xor b
    rst $38
    ld bc, $02ff
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld e, a
    rst $38
    xor a
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    rst $38
    ld d, l
    rst $38
    xor d
    cp $56
    db $fd
    and b
    ld c, a
    nop
    ld b, b
    nop
    ld bc, $0100
    nop
    ld h, l

jr_056_72a1:
    nop
    jr z, jr_056_72e5

    jr z, jr_056_72ed

    and l
    ld c, a
    ret z

    rlca
    ld b, b
    rlca
    ld c, b
    rlca
    add hl, hl
    ld b, [hl]
    pop hl
    ld e, $e1
    ld e, $08
    ld de, $18f0
    adc b
    db $10
    sbc b
    db $10
    add h
    add hl, de
    add h
    add hl, de
    or b
    rrca
    or h
    rrca
    ld a, [$f207]
    dec c
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
    db $fd
    ei
    db $fd
    ld sp, hl
    db $fd
    ld sp, hl
    rst $38
    db $fd
    ei
    ld sp, hl
    rst $38
    ei
    db $fd
    ld sp, hl
    db $fd
    rst $38
    db $fd
    ld sp, hl

jr_056_72e5:
    rst $38
    ld [hl], a
    db $fd
    sbc h
    ld h, e
    db $fc
    rst $28
    rst $38

jr_056_72ed:
    rst $38
    rst $38
    rst $38
    sbc a
    ldh [rNR11], a
    rst $38
    add hl, bc
    cp $03
    db $fc
    ld e, d
    and a

jr_056_72fa:
    ld c, c
    or a
    rst $38
    nop
    rst $38

Jump_056_72ff:
    nop
    rst $38
    nop
    ccf
    ret nz

    cp a
    ret nz

    ld e, b
    rst $20
    cp d
    rst $20
    ld e, d
    push hl
    ld c, $f1
    ld [bc], a
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    nop
    ld bc, $03fc
    ld h, b
    sbc a
    cp a
    ld a, [hl]
    ei
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_056_732c:
    jr nc, jr_056_72fa

    db $fc
    nop
    or d
    ld b, b
    rrca
    nop
    rst $08
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
    ld sp, hl
    ld b, $f7
    ld [$30cf], sp
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
    cp a
    rst $38
    ld e, a
    rst $38
    xor a
    rst $38
    ld d, a
    rst $38
    xor e
    rst $38
    ld d, l
    rst $38
    dec hl
    rst $38
    ld d, l
    rst $38
    xor e
    rst $38
    ld d, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld a, [$f5ff]
    rst $38
    cp d
    rst $38
    push de
    rst $38
    ld [$f5ff], a
    rst $38
    ld a, [$fdff]
    rst $38
    cp $ff
    ld a, a
    rst $38
    ei
    rst $38
    ld a, [c]
    cp $e9
    cp $45
    jp z, Jump_000_02c4

    ld l, l
    ld [de], a
    ld [hl], l
    nop
    ld [hl], b
    nop
    ld d, b
    ld hl, $8360
    ld b, [hl]
    add e
    ld hl, $50c3
    adc e
    db $ed
    inc de
    add d
    ccf
    add b
    ccf
    nop
    ccf
    inc sp
    inc e
    jp nz, Jump_000_203c

    inc e
    ld b, h
    jr c, jr_056_732c

    ld h, b
    and b
    ld b, b
    and b
    ld b, b
    ld hl, $60c0
    add l
    ld a, [c]
    dec c
    adc a
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
    rst $38
    ld a, [$fcfe]
    rst $38
    ei
    cp $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$02
    ld hl, sp-$02
    ld hl, sp-$01
    ld sp, hl
    cp $f8
    cp $bc
    ld b, d
    ld b, $f9
    rst $38
    ld hl, sp-$01
    rst $38
    db $fc
    inc bc
    ld a, [hl]
    add c
    add d
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$00
    rst $38
    ldh a, [rIF]
    db $fc
    rlca
    ld hl, sp+$07
    add c
    ld a, [hl]

jr_056_73f4:
    and e
    ld a, h
    ld hl, $8cde
    di
    db $10
    rst $28
    ld bc, $23fe
    call c, $ffff
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
    ld b, e
    add b
    add b
    nop
    rst $38
    nop
    ld a, a
    nop
    rla
    add sp, -$07
    ld b, $f3
    inc c
    xor a
    ld [hl], b
    rra
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    rst $38
    nop
    ld a, a
    nop
    rst $30
    ld [$04e2], sp
    rst $38
    nop
    cp $00
    db $fd
    inc bc
    ld hl, sp+$04
    pop af

Call_056_7433:
    ld c, $ff
    nop
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp $00
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
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld e, a
    rst $38
    xor a
    rst $38
    ld d, a
    rst $38
    ld a, [hl]
    rst $38
    add l
    ld e, a
    add b
    ld c, a
    inc b
    inc c
    inc c
    inc bc
    inc c
    ld [bc], a
    inc c
    nop
    adc h
    nop
    inc e
    add b
    jr jr_056_73f4

    ld b, b
    add b
    add h
    ld b, d
    ld c, c
    add [hl]
    inc [hl]
    rst $08
    sub c
    ld h, [hl]
    db $dd
    ld h, $98
    ld h, a
    sub b
    ld h, a
    nop
    ld h, a
    inc d
    ld h, e
    ld d, c
    ld [hl+], a
    ld d, b
    and b
    db $10
    ldh [$38], a
    ret nz

    dec sp
    ret nz

    dec sp
    ret nz

    cp c
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
    rst $38
    ld [hl], a
    rst $38
    ld a, e
    rst $38
    ld sp, hl
    ld a, a
    ld a, e
    ld a, a
    ld [hl], l
    ei
    ei
    rst $38
    push af
    ld a, e
    ld a, c
    ld a, a
    ld [hl], c
    ei
    ld a, a
    ei
    ld [hl], l
    ei
    ld de, $df60

jr_056_74bb:
    jr nz, jr_056_74bb

    ld a, a
    rst $38
    rst $38
    add d
    rst $38
    ccf
    ret nz

    rrca
    ldh a, [$08]
    rst $30
    inc c
    di
    inc b
    ei
    ld c, $f1
    inc c
    di
    add hl, de
    and $01
    cp $06
    ld sp, hl
    ld [de], a
    db $ed
    jp nz, Jump_056_723d

    adc l
    inc b
    ei
    add b
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
    rra
    rrca
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0300
    nop
    inc c
    nop
    ld bc, $0000
    nop
    rst $38
    nop
    ld a, [$f106]
    ld [bc], a
    add a

jr_056_7507:
    ld b, b
    rra
    nop
    ld a, a
    add b
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
    db $fc
    inc bc
    nop
    jr c, jr_056_7542

    ld e, h
    rst $38
    rst $38
    rst $38
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
    ld b, [hl]
    rst $38
    ld h, $d3
    jr nz, jr_056_7507

    jp $8000


    ld b, e
    and b
    ld b, e
    ld [bc], a
    nop
    ld [hl-], a
    nop
    ld [hl-], a
    nop
    ld b, $70

jr_056_7542:
    ld e, c
    ldh [$99], a
    ldh [rNR24], a
    ld h, d
    cp [hl]
    ld h, c
    ld a, l
    pop bc
    inc h
    reti


    push af
    ld c, b
    ld [hl], $c9
    sub [hl]
    add hl, bc
    call $8408
    ld [$0c70], sp
    ld a, h
    nop
    jr nz, jr_056_757a

    ld b, $38
    rlca
    ld hl, sp+$1e
    pop af
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_056_756a:
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
    rst $08
    rst $18
    rst $28
    rst $18
    rst $08
    rst $18

jr_056_757a:
    rst $18
    rst $28
    rst $08
    rst $38
    rst $08
    rst $38
    rst $38
    rst $08
    rst $38
    rst $08
    rst $18
    rst $28
    rst $18
    rst $08
    jr @-$30

    or e
    ld b, b
    or l
    rst $38
    rst $38
    rst $38
    ld a, a
    add b
    ld a, a
    add b
    rst $18
    jr nz, @+$21

    ldh [$09], a
    or $21
    sbc $01
    cp $10
    rst $38
    ld [hl], b
    adc a
    rst $38
    nop
    rst $30
    ld [$e71c], sp
    ld a, [bc]
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$1b
    db $ec
    ld [$04ff], sp
    ei
    rla
    add sp, -$7f
    ld a, [hl]
    rst $00
    jr c, jr_056_756a

    ld d, b
    dec c
    ld a, [c]
    ld [$fff7], sp
    rst $38
    dec d
    ld [bc], a
    nop
    nop
    ret nz

    nop
    add hl, de
    ld h, [hl]
    ld c, b
    scf
    pop af
    nop
    ldh [rP1], a
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
    cp $00
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$04
    ld hl, sp+$04
    db $fc
    nop
    ld hl, sp+$01
    ld bc, $009a
    ld hl, sp-$04
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
    rst $20
    rst $28
    ld b, l
    rst $28
    inc hl
    adc $4a
    add b
    add b
    nop
    ld e, b
    add b
    sub b
    nop
    jr jr_056_760c

jr_056_760c:
    nop
    inc e
    nop
    inc a
    nop
    db $fc
    inc de
    ld hl, sp-$78
    pop af
    sbc [hl]
    ld [hl], c
    sbc a
    ldh [rWY], a
    push hl
    ld a, [bc]
    push af
    ld h, c
    sub $40
    adc a
    add hl, bc
    rlca
    ld [de], a
    inc bc
    rlca

jr_056_7627:
    ld bc, $4d02
    ld d, b
    rrca
    ld b, b
    ccf
    ld b, b
    ccf
    ld [$17ff], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, h
    rst $18
    adc h
    rst $18
    ld e, l
    cp $ae
    sbc $4d
    sbc [hl]
    rrca
    cp $8c
    ld a, [hl]
    call z, Call_056_5c1e
    sbc [hl]
    rrca
    sbc $8d
    ld e, [hl]
    add hl, bc
    sbc [hl]
    ld h, $c0

jr_056_765c:
    ld l, d
    db $fd
    rst $38
    rst $38
    di
    inc c
    rst $30
    jr jr_056_765c

    jr @-$1d

    ld e, $e7
    jr @-$01

    ld b, d
    cp b
    ld b, a
    ld a, [$8245]
    ld a, l
    ei
    inc c
    db $fd
    ld [bc], a
    db $db
    inc h
    ld a, [hl]
    pop hl
    add c
    ld a, a
    ld [c], a
    rra
    pop hl
    ld e, $e1
    ld e, $7c
    rst $08
    ld c, d
    rst $30
    ld c, b
    rst $30
    xor b
    ld [hl], a
    db $d3
    inc a
    jp z, $2b35

    call nc, $ffff
    rst $38
    ccf
    inc c
    jr c, jr_056_7627

    ld h, b
    nop
    add b
    nop
    ld e, $1a
    ld bc, $0018
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    adc a
    jr nc, @+$21

    nop
    ld a, a
    add b
    rst $38
    nop
    db $fc
    ld [bc], a
    db $fc
    dec b
    ld h, l
    add [hl]
    inc bc
    ld hl, sp+$0b
    add h
    ld bc, $009e
    ld bc, $0308
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
    jr jr_056_76f3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_056_7703

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_056_7713

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_056_7723

    ld [hl-], a

jr_056_76f3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_056_7733

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_056_7703:
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

jr_056_7713:
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

jr_056_7723:
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

jr_056_7733:
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
    ld d, [hl]
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
    jr jr_056_77f4

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_056_7804

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_056_7814

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, @+$33

    ld [hl-], a

jr_056_77f4:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_056_7804:
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    dec b
    ld b, $06
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_056_7814:
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld b, $06
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0500
    ld b, $06
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0500
    ld b, $06
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    dec b
    ld b, $06
    ld b, $06
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    dec b
    ld b, $06
    ld b, $06
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    nop
    dec b
    ld b, $06
    ld b, $06
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0600
    ld b, $06
    ld b, $01
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0100
    nop
    dec b
    ld b, $06
    ld b, $01
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0605
    ld b, $06
    ld bc, $0000
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0605
    ld b, $01
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0606
    dec b
    inc bc
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0707
    ld bc, $0606
    ld bc, $0000
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0707
    rlca
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0701
    rlca
    rlca
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    dec bc
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0808], sp
    ld [$0a08], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0808], sp
    ld [$6f08], sp
    di
    add c
    ld a, l
    ld e, l
    jp hl


    ld l, b
    ld a, a
    ld a, h
    ld a, e
    ld hl, sp+$7e

jr_056_794c:
    ccf
    ld a, h
    dec a
    ld a, h
    cp b
    ld a, b
    jr nc, jr_056_794c

    sub l
    ld a, e
    pop af
    ccf
    and a
    ld a, a
    ld a, [c]
    ld l, a
    ld b, a
    cp a
    rrca
    or a
    rlca
    rst $30
    cp e
    rst $08
    db $db
    ld a, c
    call nz, Call_056_7433
    add b
    db $76
    ld b, d
    ld d, a
    ld l, a
    ld b, a
    ld a, a
    rst $38
    rst $38
    cp $4f
    ld d, a
    rst $28
    ld e, e
    ld h, a
    ld [hl], d
    rrca
    ld a, [de]
    push hl
    db $d3
    push hl
    ld e, l
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    ld h, b
    nop
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
    rst $30
    rst $38
    ei
    rst $38
    ld d, c
    rst $38
    xor $10
    cp $00
    ld c, l
    ld [hl-], a
    ld sp, hl
    nop
    sbc c
    ld a, a
    inc bc
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    sbc c
    ld a, a
    add h
    ld a, e
    inc b
    ei
    cp $ff
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld hl, sp-$01
    db $fd
    rst $38
    cp $ff
    ld [hl-], a
    rst $38
    cp a
    rst $38
    db $e3
    rst $38
    inc hl
    rst $38
    daa
    rst $38
    xor a
    rst $38
    ld a, e
    rst $38
    ld [hl], e
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    sbc h
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
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld a, h
    rst $38
    inc a
    rst $38
    ld a, $ff
    jr @+$01

    nop
    rst $38
    ld [bc], a
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
    ld hl, sp+$2b
    ret nz

    add a
    nop
    inc [hl]
    nop
    ld sp, $0ac8
    pop af
    ld bc, $0125
    add c
    nop
    add [hl]
    ld h, c
    push hl
    ld bc, $019f
    sbc a
    rlca
    ld sp, hl
    ld c, a
    pop af
    ldh a, [rIF]
    ret nz

    ccf
    inc e
    and d
    inc a
    jp nz, Jump_056_41b9

    ret z

    inc l
    ldh [$7e], a
    ld b, b
    ld e, a
    nop
    pop hl
    nop
    pop hl
    nop
    add b
    rla
    rla
    adc h
    call z, $9090
    ret nz

    ret nz

    ldh [$e0], a
    pop hl
    db $fc
    ld a, [c]
    db $ec
    and $ff
    rst $20
    rst $28
    ld l, e
    rst $30
    cpl
    ld [hl], a
    cp $37
    cp [hl]
    scf
    sub $3f
    ccf
    rra
    db $e3
    rrca
    jr jr_056_7a7d

    or d
    call z, $c8a4
    db $e4
    ldh a, [$f4]
    ld hl, sp-$69
    ld a, [$ff1a]
    dec sp
    rst $18
    ld a, e
    adc a
    cp c
    rst $08
    sub $29
    inc a
    ld h, e
    db $10
    rst $20
    ldh a, [$87]
    db $dd
    add a
    rst $38
    rst $00
    rra
    rst $20
    ld e, e
    and a
    cpl
    ld d, a
    ld c, e

jr_056_7a7d:
    rst $30
    rst $28
    di
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
    rst $38
    rst $38
    rst $38
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
    ld hl, sp-$01
    db $fd
    ldh a, [rTAC]
    nop
    rla
    nop
    jp hl


    nop
    nop
    rst $38
    and l
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    adc [hl]

jr_056_7aad:
    db $fd
    ccf
    rst $38
    ld a, $ff
    cp $ff
    ld [bc], a
    rst $38
    ld b, e
    cp a
    rst $08
    rst $38
    ld hl, sp-$01
    jr nc, jr_056_7aad

    db $10
    rst $28
    ld a, [hl-]
    rst $38
    ei
    rst $38
    cp $ff
    sbc [hl]
    rst $38
    adc a
    rst $38
    sbc e
    rst $38
    rst $38
    rst $38
    cp $ff
    sub [hl]
    rst $38
    sub e
    rst $38
    ld sp, hl
    rst $38
    adc c
    rst $38
    add hl, bc
    rst $38
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
    rst $38
    rst $38
    di
    rst $38
    ret nc

    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    sub b
    ld l, a
    ld [hl], c
    adc [hl]
    ld h, [hl]
    sbc c
    rrca
    ldh a, [$f8]

Jump_056_7b01:
    ld a, [$fac4]
    inc b
    db $e4
    ld b, $66
    nop
    add b
    inc h
    sub h
    ldh [$93], a
    ldh [$93], a
    rst $20
    rlca
    jp nz, $e122

    ld de, $01e1
    ld l, h
    inc c
    and [hl]
    rst $00
    add h
    db $eb
    adc h
    di
    adc e
    db $f4
    ccf
    add b
    dec de
    and h
    ld b, e
    ld e, h
    rst $38
    ret nz

    rst $38
    ret nz

    ld a, b
    ld b, a
    ld a, b
    ld b, a
    db $10
    dec c
    ld b, b
    rst $00
    add b
    or a
    jr nc, jr_056_7b87

    db $10
    cpl
    adc c
    or [hl]
    add hl, hl
    ld d, $3f
    ret nz

    rst $38
    rst $38
    rst $38
    ld a, a
    cp $5f
    db $f4
    ccf
    ld a, $ff
    ld e, h
    ccf
    sbc [hl]
    rra
    ld e, [hl]
    sbc a
    ld a, [hl]
    sbc a
    db $fc
    rra
    adc h
    rst $38
    rst $38
    rst $28
    ld e, $ef
    inc e
    rst $28
    jr @+$01

    ret nc

    ccf
    ld hl, sp+$1f
    sub b
    rst $28
    pop af
    xor $b0
    ld l, a
    sbc b
    rst $28

jr_056_7b6a:
    sbc b
    rst $20
    ld [$5d3f], sp
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
    pop bc
    set 0, c
    db $eb
    pop bc
    db $e3
    pop bc
    cp a
    pop bc
    cp a
    ret nz

    ccf
    ret nz

    ccf

jr_056_7b87:
    nop
    rst $18
    jr nz, jr_056_7b6a

    ldh [$cf], a
    or b
    ld c, a
    or b
    rst $28
    ldh a, [rIE]
    ldh a, [$bf]
    ldh a, [$57]
    ld hl, sp+$77
    ld hl, sp-$69
    ld a, b
    cpl
    ret nc

    rst $18
    nop
    nop
    rst $38
    jp $ffff


    rst $38
    rst $38
    rst $38
    ld [hl], h
    cp e
    ld e, b
    cp a
    ld a, a
    rst $38
    rst $38
    rst $38
    cpl
    rst $38
    xor a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    adc a
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add h
    rst $38
    nop
    rst $38
    or $ff
    rst $28
    rst $38
    ld [hl+], a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    ld a, a

jr_056_7bed:
    rst $38

jr_056_7bee:
    ld l, a
    rst $38
    rst $38
    rst $38
    rst $38

jr_056_7bf3:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    cp $d8
    ldh [rLCDC], a
    add b
    nop
    add b
    ld [bc], a
    dec a
    nop
    inc bc
    inc de
    inc l
    scf
    ld c, b
    ld b, [hl]
    add hl, sp
    pop de
    dec hl
    jr jr_056_7bf3

jr_056_7c0e:
    inc c
    sub c
    add b
    sbc h
    ld h, b
    sub b
    ld bc, $87e2
    adc b
    sbc a
    and b
    cp $01
    rst $38
    nop
    cp $01
    jr nc, jr_056_7bee

    or b
    ld b, b
    rlca
    rst $00
    push hl
    dec b
    db $f4
    inc c
    jr c, jr_056_7bed

    rst $18
    jr nz, jr_056_7c0e

    jr nz, jr_056_7c48

    add sp, -$09
    inc b
    rst $30
    rlca
    ld [hl], c
    add c
    ld [hl+], a
    db $dd
    rst $28
    db $10
    rst $18
    jr nz, @+$01

    nop
    db $eb
    rst $38
    ld b, c
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_056_7c48:
    nop
    rst $38
    jr nz, @-$1f

    ld h, b
    sbc a
    db $10
    rst $38
    ld [$04ff], sp
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld [hl+], a
    rst $38
    ld d, c
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    ld a, [bc]
    rst $38
    inc d
    rst $38
    ld a, [bc]
    rst $38
    db $10
    rst $38
    ld a, [hl+]
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
    rst $20
    di
    di
    db $e3
    di
    db $e3
    db $e3
    di
    db $e3
    pop af
    ld b, e
    pop af
    db $e3
    ld de, $11e2
    ldh [rNR11], a
    ldh a, [$71]
    ld sp, hl
    ld [hl], c
    ld d, c
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld [hl], b
    ld hl, sp+$00
    ld sp, hl
    add [hl]
    ld a, c
    sbc e
    ld a, b
    rlca
    ld hl, sp-$31
    jr nc, @-$7e

    ld a, a
    ld [c], a
    rst $38
    cp $ff
    cp $ff
    ld a, $ff
    xor [hl]
    ld e, a
    ld e, $ff
    db $fc
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    cp $ff
    add sp, -$01
    nop
    rst $38
    adc l
    rst $38
    db $10
    rst $38
    add hl, sp
    rst $38
    rst $30
    rst $38
    ld h, a
    rst $38
    db $76
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    ld h, a
    rst $38
    rst $38
    rst $38
    cp $ff
    add d
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
    cp $ff
    ei
    rst $38
    ret nc

    rst $38
    ei
    rst $38
    cp $ff
    cp $ff
    db $fc
    cp $f0
    ldh a, [$e1]
    ldh [$e8], a
    ldh a, [$7c]
    add b
    ld hl, sp+$04
    rst $20
    nop
    ld hl, sp+$03
    db $fd
    ld [bc], a
    jp $e023


    db $10
    ret nz

    jr nc, jr_056_7d7b

    ld [hl], h
    cp $fe
    ld sp, $49b5
    push de
    dec de
    and e
    pop af
    push af
    add b
    add e
    pop hl
    ld b, $e1
    ld e, $f0
    ld c, $74
    adc b
    ld a, b
    add h
    ld a, [$6706]
    sbc a
    jr jr_056_7d9e

    ld [$4829], sp
    jr c, jr_056_7d35

    dec e
    nop
    nop
    ret nz

    nop
    ret nz

    ld hl, $29c6
    ld a, a
    add b
    ld a, l

jr_056_7d35:
    add b
    db $fd
    ld [bc], a
    ld a, a
    nop
    cp a
    ld b, c
    cp e
    ld b, e
    ei
    inc bc
    rst $38
    rst $38
    rst $10
    rst $38
    adc d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$00f7], sp
    rst $38
    inc d
    rst $38
    ld [$00ff], sp
    rst $38
    adc d
    rst $38
    dec b
    rst $38
    add d
    rst $38
    ld de, $86ff
    ei
    ld b, $f9
    ld [bc], a
    db $fd
    nop
    rst $38
    ld a, [bc]
    rst $38
    ld b, c
    rst $38
    add d
    rst $38
    ld b, c
    rst $38
    and b
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    ld de, $08ff
    rst $38
    nop

jr_056_7d7b:
    rst $38
    adc b
    rst $38
    db $10
    rst $38
    cp b
    rst $38
    nop
    rst $38
    ldh [$1f], a
    db $ed
    rla
    ld [hl-], a
    rst $08
    ld h, c
    sbc a
    xor d
    rst $10
    ld l, c
    rst $10
    rst $38
    rst $38
    ld hl, sp-$01
    rrca
    rst $38
    ld e, a
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38

jr_056_7d9e:
    rst $38
    rst $38
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $38
    db $e3
    rst $38
    push de
    rst $38
    ld [$d5ff], a
    rst $38
    ld [$f5ff], a
    rst $38
    ld [$f5ff], a
    rst $38
    rst $38
    rst $38
    push af
    rst $38
    db $eb
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    add e
    rst $38

jr_056_7dd6:
    pop hl
    rst $38
    add b
    rst $38
    and b
    rst $38
    ldh a, [rIE]
    db $f4
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
    di

jr_056_7dec:
    pop bc
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    xor $10
    and $06
    add l
    dec b
    ld [bc], a
    ld a, [hl-]
    sbc b
    add [hl]
    jp nz, $c1dd

    adc $00
    inc bc
    inc b
    inc b
    ld bc, $8702
    add b
    inc bc
    inc b
    inc c
    inc de
    rrca
    db $10
    add a
    sbc b
    or l
    jr c, jr_056_7dec

    jr nc, jr_056_7e36

    db $10
    rlca
    nop
    jr c, jr_056_7e54

    jr c, jr_056_7dd6

    jr c, jr_056_7e58

    rlca
    rlca
    nop
    nop
    nop
    jr nz, jr_056_7e29

    ld [bc], a
    ld [bc], a

jr_056_7e29:
    ld a, [bc]
    jr jr_056_7e52

    inc e
    ld h, e
    ld a, $c1
    inc b
    nop
    rra
    nop
    dec e
    inc bc

jr_056_7e36:
    rla
    rrca
    sbc a
    ld a, a
    ccf
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$55ff]
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    add d
    db $fd

jr_056_7e52:
    ld b, b
    rst $38

jr_056_7e54:
    jr nz, @+$01

    nop
    rst $38

jr_056_7e58:
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ld de, $02ff
    rst $38
    nop
    rst $38
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    adc b
    rst $38
    ld d, b
    rst $38
    ld a, [bc]
    rst $38
    ld bc, $80ff
    rst $38
    ld d, c
    rst $38
    add d
    rst $38
    ld de, $2aff
    rst $38
    rst $00
    rst $38
    ld [$11ff], a
    rst $38
    ld [$f5ff], a
    rst $38
    add sp, -$01
    db $f4
    rst $38
    xor d
    rst $38
    dec d
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ldh [rIE], a
    db $f4
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld e, a
    rst $38
    cp a
    rst $38
    ld e, a
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
    cp $ff
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
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
    add sp, -$20
    ld h, b
    nop
    ld bc, $8100
    ld a, l
    adc c
    ld a, a
    ld b, $21
    ld b, $31
    inc bc
    sub h
    ld bc, $011e
    db $dd
    ld bc, $9edd
    ld hl, $817e
    ld e, $c1
    cp $00
    ld hl, sp+$01
    adc b
    ld e, e
    nop
    ldh [$88], a
    ld a, b
    ld a, b
    add a
    db $fc
    ld bc, $00ff
    adc a
    ld h, b
    rra
    ret nz

    rla
    jr jr_056_7f32

    inc d
    dec b
    inc b
    inc b
    dec b
    ld h, $26
    inc bc
    inc bc
    inc bc
    ld h, c
    ld sp, hl
    ld [bc], a
    ld l, [hl]
    sub c
    ld a, l
    inc bc
    ld a, a
    inc bc
    adc a
    rrca

jr_056_7f32:
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
    ld hl, sp-$01
    ld d, b
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    ld bc, $28ff
    rst $18
    ld bc, $20de
    rst $18
    ld bc, $0bff
    rst $38
    inc e
    rst $38
    ld [bc], a
    rst $38
    inc de
    cp $32
    rst $38
    db $10
    rst $38

jr_056_7f60:
    jr nz, jr_056_7f60

    or b
    ld a, [hl]
    and b
    ld a, a
    sub d
    ld a, a
    ld c, $ff
    rlca
    rst $38
    ld l, $ff
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_056_7f77:
    rst $38
    rst $38
    rst $18
    rst $18
    rst $08
    cp a
    rst $08
    cp a
    rst $08
    sbc a
    rst $08
    rst $18
    rst $08
    sbc a
    rst $08
    rst $18
    rst $08
    xor a
    rst $08
    rst $08
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
    xor a
    rst $08
    sbc a
    rst $20
    nop
    rst $38
    jr nz, jr_056_7f77

    add b
    rst $38
    add b
    rst $38
    sbc a
    rst $28
    cp a
    rst $08
    sbc l
    rst $28
    jp nz, $cffd

    rst $38
    rst $00
    rst $38
    call $ecff
    rst $38
    xor $ff
    cp $ff
    ld hl, sp-$01
    db $fc
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    cp $ff
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
    rst $38
    rst $38
    cp $ff
    ldh [rIE], a
    and b
    rst $38
    add b
    rst $38
    add h
    ei
    call nz, $c4fb
    ei
    rst $38
    rst $38
    cp $fd
    db $e4
    ei
    add b
    rst $38
    cp l
    ld b, d
    rra
    ldh [$fc], a
    nop
    db $e4
    nop
    sbc a
    and b
    inc d
    ld a, [hl+]
    ld sp, $034e
    inc c
    nop
    add [hl]
    ld [$1389], sp
    call nc, $d807
