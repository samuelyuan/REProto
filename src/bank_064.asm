SECTION "ROM Bank $064", ROMX[$4000], BANK[$64]

    cp $01
    db $fd
    inc bc
    rst $38
    inc bc
    rst $20
    rra
    ccf
    rst $38
    rst $28
    rra
    ld hl, sp+$07
    rst $38
    inc b
    ld bc, $e3fd
    rra
    ldh a, [$0c]
    cp $01
    rst $38
    nop
    rst $38
    nop
    ld a, e
    add h
    nop
    ld a, a
    db $fc
    rst $38
    dec sp

Call_064_4023:
    cp e
    rlca
    rst $30
    ret nz

    ld a, $f8
    rlca
    cp $01
    rst $38
    nop
    rst $38

jr_064_402f:
    nop
    rst $38
    nop
    rst $38
    nop
    rlca
    ld hl, sp+$05
    ld a, [$916e]
    cp a
    ret nz

    db $dd
    ld [c], a
    inc e
    add e
    add b
    ld a, a
    db $fc
    inc bc
    cp $01
    ld a, [$c305]
    ld a, $05
    cp $e5
    ld e, $c6
    rst $38
    inc b
    adc e
    jr jr_064_402f

    ld b, $c6
    ld c, $fe
    add d
    ei
    ld a, h
    add e
    dec sp
    call nz, $f7e8
    rrca
    rst $38
    ld h, a
    rra
    rrca
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    and c
    ld e, [hl]
    add b
    ld a, a
    and e
    ld e, h
    or c
    ld c, [hl]
    inc e
    rst $28
    ld d, h
    rst $28
    inc [hl]
    rst $08
    sub h
    ld l, a
    sub d
    ld l, l
    add hl, sp
    add [hl]
    inc [hl]
    ld a, [bc]
    inc [hl]
    dec bc
    or c
    ld c, [hl]
    add b
    ld a, $a0
    ld e, $18
    ld b, $1c
    ld [bc], a
    add hl, bc
    ld b, $18
    rlca
    nop
    rst $38
    ldh [rIE], a
    db $10
    rst $38
    call nc, $c43b
    dec sp
    and h
    ld e, e
    ld h, h
    sbc e
    ld c, l
    or e
    ld c, h
    or e
    ld h, c
    sbc a
    ld c, a
    cp a
    ret nz

    ccf
    ret nc

    cpl
    call c, $9023
    ld l, a
    ldh [rIE], a
    jp $c2fc


    db $fd
    ret nc

    rst $28
    pop de
    rst $28
    ret nc

    rst $28
    ld b, b
    rst $38
    ld h, h
    rst $38
    ld b, a
    rst $38
    ld b, e
    rst $38

Call_064_40c4:
    ret nz

    rst $38
    ret nz

    rst $38
    ret nc

    rst $28
    ld d, b
    rst $28
    ld h, b
    rst $38
    ld b, b
    rst $38
    ret z

    scf
    db $d3
    inc l
    rst $20
    jr jr_064_4142

    sub h
    ld d, b
    cp a
    ccf
    nop
    ld [bc], a
    db $fd
    ld [hl], b
    adc a
    cp $01
    rst $38
    nop
    inc c
    ld a, [c]
    ccf
    ld a, a
    ld [hl], b
    ld sp, hl
    nop
    rst $30
    inc c
    rst $38
    ld a, [hl]

jr_064_40ef:
    rst $38
    add d
    or $4d
    cp l
    nop
    ldh a, [$08]
    ret z

    jp Jump_000_1f3f


    ldh [$6f], a
    ld [hl], b
    ld e, a
    ret nc

    cpl
    ldh a, [$61]
    cp $8c
    inc c
    sub b
    ld d, b
    jp nz, $f03a

    rrca
    rst $38
    nop
    adc a
    or b
    set 1, h
    ld [de], a
    inc de
    di
    di
    rst $28
    rst $28
    cp b
    ld a, a
    ld a, [c]
    dec c
    cp $01
    ld a, a
    add b
    inc bc
    db $fc
    ret nz

    ret nz

    jp $ebd7


    rst $38
    rlca
    rst $00
    ld bc, $00ff
    db $fd
    ldh [$1f], a
    add h
    rst $38
    pop de
    rst $38
    add b
    rst $38
    cp [hl]
    pop bc
    cp a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    ret


Jump_064_413f:
    or $7f
    add b

jr_064_4142:
    ccf
    ret nz

    ld b, h
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ld l, b
    rst $38
    inc de
    rst $28
    adc l
    ld [hl], e
    rlca
    ld hl, sp+$00
    cp a
    dec h
    or [hl]
    nop
    rst $30
    ld sp, hl
    dec b
    inc h
    db $dd
    call nz, $f034
    ld [$bb7c], sp
    ld a, [hl-]
    db $ed
    ld h, a
    cp [hl]
    ld l, $f3
    inc l
    di
    rst $20
    jr jr_064_40ef

    ld a, l
    pop bc
    ld a, $02
    dec bc
    inc h
    dec sp
    ld c, $21
    rrca
    ld h, b
    rlca
    jr z, jr_064_41c2

    ld c, b
    inc hl
    inc h
    ld c, a
    ld c, b
    rst $10
    cpl
    rlca
    rst $38
    ld a, a
    rst $38
    cp a
    ld a, a
    ld [$097f], sp
    ld a, [hl]
    ld bc, $203e
    rst $18
    inc h
    rst $18
    inc e
    rst $38
    inc e
    rst $38
    dec e
    rst $38
    ld e, h
    cp a
    ld b, c
    cp [hl]
    dec bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    daa
    ei
    ld d, l
    db $eb
    ld [hl], c
    rst $08
    pop de
    rst $28
    add e
    rst $38
    ld b, h
    rst $38
    rlca
    rst $38
    ld [hl], e
    adc a
    or a
    ld c, a
    rlca
    rst $38
    adc e
    rst $30
    pop hl
    rst $38
    ld hl, $03ff
    rst $38
    ld [bc], a
    rst $38
    inc bc
    add b

jr_064_41c2:
    rla
    sub h
    ld c, a
    call z, Call_000_2c2b
    inc b
    ld l, e
    jr c, jr_064_420a

    ld bc, $4103
    jp $f500


    ret nz

    ld a, $c0
    inc sp
    jp Jump_000_3f3b


    rst $38
    add b

jr_064_41db:
    ld a, l
    dec bc
    rst $30
    ei
    rst $38
    rra
    ld a, a
    rla
    xor a
    nop
    db $fc
    add b
    add l
    sbc [hl]
    cp $00
    pop af
    nop
    db $fd
    nop
    cp [hl]
    dec c
    dec c
    sbc l
    sbc l
    db $f4
    db $f4
    pop hl
    pop hl
    nop
    rlca
    cp l
    ld a, [hl]
    ld a, c
    add [hl]
    or $09
    db $fd
    ld [bc], a
    rst $28
    db $10
    ld bc, $80fe
    adc a
    inc c
    inc c

jr_064_420a:
    ld d, c
    ld d, c
    ld [hl+], a
    and d
    rst $18
    ccf
    pop hl
    add hl, de
    jr c, jr_064_41db

    db $fd
    ld [c], a
    pop hl
    cp $00
    rst $28
    inc hl
    rst $18
    inc de
    rst $28
    ei
    rlca
    db $fc
    inc bc
    ld e, $e1
    rst $28
    ldh a, [$c2]
    db $fd
    ld hl, sp-$02
    ld h, [hl]
    rst $30
    ld l, a
    rst $28
    nop
    rst $38
    inc b
    rst $38
    adc e
    rst $30
    set 7, a
    ld [hl], e
    rst $38
    call c, $ff23
    nop

Jump_064_423c:
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    adc a
    ldh a, [$37]
    ld hl, sp+$69
    cp $9c
    rst $38
    adc a
    rst $38
    ld [bc], a
    cp $40
    or h
    add c
    ld a, a
    inc a
    cp [hl]
    and h
    or h
    cp c
    ld a, a
    ret z

    cp e
    sub b
    call Call_064_7f00

jr_064_4262:
    nop
    ld l, a
    ld [de], a
    ld [hl], l
    jr jr_064_4262

    ld de, $09f3
    ld l, e
    push af
    sub l
    inc b
    ld [hl], h
    jp nz, $f6d3

    cp $60
    db $ec
    sbc a
    ld h, b
    rst $30
    ld [$2ccb], sp
    sub e
    ld [hl], b
    sub l
    db $76
    add c
    ld h, d
    sub e
    ld d, d
    add h
    dec b
    adc [hl]
    ld c, a
    ld d, $d6
    ld e, $7f
    ld d, [hl]
    rla
    ld c, h
    inc l
    ld c, b
    add sp, $40
    ld a, h
    ld b, b
    ld a, a
    ld c, a
    rst $18
    inc e
    rst $18
    add d
    ld h, d
    ld [bc], a
    inc sp
    pop bc
    rlc d
    add [hl]
    db $e4
    db $e4
    adc h
    adc h
    ld a, [hl+]
    ld l, $39
    cp a
    dec l
    xor e
    call $c4cb
    dec sp
    and c
    ld d, l
    cp $02
    ld h, $da
    db $76
    adc d
    nop
    db $fd
    nop
    rst $28
    add b
    add b
    ld [$4708], sp
    ld b, a

Jump_064_42c2:
    cpl
    rst $28
    add a
    ld h, a
    db $fc
    inc bc
    db $fd
    ld [bc], a
    xor l
    or d
    ldh [$ed], a
    and $fe
    ld [hl], l
    ld [hl], l
    ldh [$ee], a
    ld [hl-], a
    ld [hl-], a
    sub e
    ld d, e
    db $f4
    inc b
    nop
    rrca
    ld b, b
    ld b, b
    ld [c], a
    ld a, [de]
    ldh a, [rIF]
    inc bc
    rst $38

Jump_064_42e4:
    ld [de], a
    ld l, $4e
    ld d, b
    ld b, c
    ld c, l
    ldh [$e0], a
    ld hl, sp-$08
    ld [c], a
    xor $0b
    dec sp
    ld [bc], a
    ld a, $85
    add l
    add b
    add b
    ld e, b
    ret c

    adc b
    ld [hl], b
    and h
    ld l, h
    rrca
    rst $38
    pop af
    ld c, $c3
    inc hl
    add b
    nop
    inc a
    cp h
    nop
    ccf
    ld b, d
    ld e, e
    ldh [$e0], a
    ei
    ei
    cp a
    cp a
    inc b
    rst $38
    ld h, $df
    ld bc, $08fe
    ret z

    ld [bc], a
    ld [bc], a
    ld a, [hl+]
    ld a, [hl+]
    rlca
    rst $30
    add b
    rst $38
    nop
    ld a, [hl]
    nop
    xor l
    add hl, de
    rra
    jr jr_064_4345

    ld c, h
    ld l, a
    db $10
    rst $28
    ld h, b
    sbc a
    rst $08
    ccf
    pop de
    cpl
    rst $38
    nop
    rst $30
    ld [$08f7], sp
    ld a, $c1
    ccf
    ret nz

    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    add b

jr_064_4345:
    ld a, a
    sbc a
    ld h, b
    add h
    ld a, e
    add b
    ld a, a
    ld b, d
    cp a
    rst $08
    rst $38
    rst $20
    rst $38
    ld d, c
    ld a, l
    ld d, $56
    ld de, $b431
    db $f4
    sbc [hl]
    cp $20
    ld h, d
    and c
    pop hl
    adc e
    rl b
    ld [hl], h
    db $10
    ld [hl], a
    jr nc, jr_064_43de

    ld l, $61
    add b
    rst $38
    add h
    rst $38
    sub b
    pop af
    adc [hl]
    xor a
    sbc [hl]
    rst $38
    inc d
    ld [hl], l
    ld [$c61b], a
    ld a, $c8
    dec l
    add $07
    cp $3f
    adc $3e
    rst $18
    ccf
    sbc $1e
    ret nz

    dec sp
    ret nz

    dec sp
    ret c

    add hl, sp
    ld [c], a
    dec de
    pop hl
    ld e, $41
    cp [hl]
    ld b, c
    ld a, [hl-]
    pop de
    or [hl]
    ld d, c
    or [hl]
    ld [hl-], a
    call Call_064_7770
    adc h
    adc h
    di
    rst $30
    rst $28
    di
    inc bc
    rrca
    ld bc, $140d
    ld a, [de]
    inc a
    inc sp
    adc $c3
    ld c, h
    ld d, e
    sbc h
    and c
    ld [bc], a
    dec sp
    ld [hl-], a
    inc sp
    ld d, b
    ld e, l
    inc h
    dec hl
    nop
    rst $38
    nop
    db $fd
    pop hl
    db $fd
    ld bc, $88df
    or $40
    ld e, a
    jr nz, jr_064_43f9

    ldh [$e1], a
    and [hl]
    ld a, a
    ld a, [$1a02]
    ld [c], a
    ld [c], a
    db $eb
    pop hl
    db $ec
    ld hl, $032a
    db $f4
    ld d, b
    ld l, a
    add e
    rst $20
    ld c, $ff
    jr nz, jr_064_440c

jr_064_43de:
    ld e, $1e
    ld bc, $0fa1
    ccf
    ldh [rNR11], a
    nop
    ldh a, [rP1]
    inc h
    nop
    or $24
    sub $27
    ld d, a
    jr nz, @+$29

    ld b, $06

jr_064_43f4:
    rlca
    ld a, a
    add b
    ldh a, [rWX]

jr_064_43f9:
    ld c, e
    ld b, $0e
    scf
    jr c, jr_064_43f4

    ld a, [$7d7d]
    ld b, d
    ld b, d
    ld l, d
    ld l, d
    ld h, d
    ld l, l
    rlca
    ld a, b
    adc a
    ld [hl], b

jr_064_440c:
    rst $38
    nop
    ld c, c
    or [hl]
    xor [hl]
    pop de
    dec hl
    rst $10
    dec sp
    rst $00
    add [hl]
    ld a, [hl]
    ld a, $ff
    sbc a
    cp a
    rst $08
    rst $38
    ret nc

    rst $08
    nop
    ei
    ld a, a
    rst $38
    nop
    rst $38
    cp $ff
    ccf
    rst $38
    db $10
    rst $30
    nop
    rst $28
    nop
    cp a
    ldh [rIE], a
    ld hl, sp-$03
    rra
    rst $38
    db $fc
    inc bc
    rst $38
    nop
    ld e, a
    and b
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ld b, l
    cp a
    sub c
    ld l, a
    add hl, de
    rst $20
    inc e
    db $e3
    ld c, $f1
    jp $c2fc


    rst $38
    push af
    rst $38
    inc bc
    db $fc
    inc sp
    ld c, h
    ld e, a
    ld h, b
    ld c, a
    ld [hl], b
    add a
    add sp, -$1e
    push hl
    ldh a, [$f1]
    ld b, h
    ld c, a
    dec bc
    db $f4
    ld h, c
    ld h, e
    ld bc, $00dd
    cp $0c
    di
    nop
    rst $38
    ld bc, $c77f
    scf
    daa
    rst $10
    ld bc, $0f3e
    jr nc, jr_064_447f

    ld a, e
    add b
    cp a
    ld e, c

jr_064_447f:
    db $dd
    ld a, a
    rst $38
    ccf
    ccf
    jr nc, jr_064_44bd

    inc e
    and e
    db $fc
    ld [bc], a
    dec b
    ld sp, hl
    rrca
    di
    ei
    rlca
    ld a, [$ff06]
    inc bc
    ld hl, sp+$07
    inc a
    jp $f7f0


    ld h, d
    xor $0c
    di
    ld a, c
    add [hl]
    ld a, c
    add [hl]
    ld sp, hl
    ld b, $f9
    ld b, $fd
    ld [bc], a
    rst $38
    nop
    inc e
    rst $38
    db $10
    pop de
    ld [bc], a
    jp $c300


    sbc c
    ld a, [hl]
    and $19
    adc $31
    add [hl]
    ld e, c
    inc b
    xor e
    ld b, b

jr_064_44bd:
    rst $38
    ld h, b
    db $ed
    ld bc, $1dd6
    ld [c], a
    ld c, a
    ret nc

    ld h, e
    ld a, h

jr_064_44c8:
    ld [c], a
    db $fd
    and b
    cp a
    ldh a, [rIE]
    ei
    db $fc
    inc bc
    db $fc
    ldh [$1f], a
    ldh a, [rIF]
    ld c, $f1
    or l
    cp e
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    ld a, a
    ld a, a
    nop
    rst $38
    ld l, a
    sub b
    ld e, $e1
    or e
    or e
    nop
    nop
    rst $38
    rst $38
    rst $18
    jr nz, jr_064_44c8

    ret c

    jr @+$01

    add b
    rst $38
    add b
    or a
    add sp, -$1c
    ld l, b
    ld [hl], h
    db $fc
    inc bc
    ld a, h
    add d
    add a
    ld hl, sp-$72
    adc a
    ld b, $06
    nop
    di
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    ld bc, $e0fe
    ld a, [$bd82]
    ld bc, $10fe
    rst $38
    nop
    rst $38
    xor a
    ret nc

    ccf
    ret nz

    db $10
    rst $28
    jp $10eb


    rst $38
    rrca
    ldh a, [$e0]
    rst $38
    nop
    and a
    jr nz, jr_064_45ad

    nop
    rst $38
    ld b, $f9
    rrca
    ldh a, [rLCDC]
    rst $38
    ld b, $f9
    rst $38
    inc bc
    ld a, e
    add a

jr_064_453c:
    ld hl, sp+$07
    rst $20
    jr jr_064_453c

    inc b
    ret nc

    ccf
    jr nc, @+$01

    ld a, b
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    ld a, [c]
    rst $38
    ld [hl+], a
    rst $38
    ld a, h
    add e
    ccf
    ret nz

    ldh [$1f], a
    srl h
    rst $30
    ld [$3fc8], sp
    ld a, d
    db $fd
    ld a, b
    rst $38
    ld d, h
    ei
    inc c
    di
    sbc h
    ld h, e
    rrca
    jr nc, jr_064_4578

    ld [hl], b
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ld d, b
    sbc [hl]
    and c
    xor l
    sub e
    ld c, h
    or e
    ld c, $d1

jr_064_4578:
    rlca
    ld hl, sp+$07
    cp b
    add a

jr_064_457d:
    ld hl, sp-$71
    or b
    ld c, a
    ld [hl], b
    cp a
    add b
    ld a, a
    add b
    ccf
    ret nz

    ld hl, $9c1f
    add e
    jr z, @+$39

    ld [hl+], a
    ccf
    ld d, d
    ld c, a
    ld sp, $3d0f
    jp $c33c


    ld sp, $02cf
    dec bc
    jr nz, jr_064_457d

    ld d, b
    rst $28
    ld b, b
    rst $38
    nop
    sbc a
    ld hl, $06fe
    reti


    ld b, $b9
    add [hl]
    ld e, c
    add d

jr_064_45ad:
    dec a
    ld a, [hl+]
    cp l
    add b
    ld a, a
    db $e4
    rra
    ldh a, [rIF]
    ld sp, hl
    ld b, $ff
    nop
    cp $01
    cp $01
    cp $01
    db $fd
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ld [$08f7], sp
    rst $30
    ld [$0af7], sp
    push af
    db $10
    rst $28
    db $10
    rst $28
    ld [bc], a
    db $fd
    di
    inc c
    ld b, b
    cp a
    db $fc
    rst $38
    ldh a, [rIE]
    db $e4
    rst $38
    adc a
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld a, e
    rst $38
    inc bc
    ld a, a
    ld a, h
    ld [hl], e
    rst $18
    ldh [$3f], a
    ret nz

    rst $20
    rra
    ld a, a
    rst $38
    ld a, e
    add a
    rlca
    rst $38
    inc d
    db $eb
    jr z, @+$79

    jr nz, @+$01

    jp $11ff


    rst $28
    ld b, b
    cp a
    ld [hl], e
    adc a
    ld sp, $f0cf
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ld h, b
    nop
    rst $38
    rst $38
    nop
    sub d
    ld a, a
    ret nz

    ccf
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    db $fc
    rst $38
    rlca
    rst $38
    cp $01
    sub $29
    inc a
    jp $df22


    dec [hl]
    rst $38
    ld a, [de]
    rst $38
    inc c
    rst $38
    nop
    rst $38
    sub b
    rst $28
    ldh a, [rIE]
    db $fc
    rst $38
    sbc b
    rst $38
    ld b, b
    cp a
    pop hl
    ld e, $00
    rst $38
    nop
    rst $38
    pop bc
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rla
    add sp, $33
    call z, $df20
    or [hl]
    ld c, c
    ld e, [hl]

jr_064_4655:
    pop hl
    cp h
    ld b, e
    rst $38
    nop
    ld a, h
    add e
    ld l, $df
    ld b, b
    rst $38
    nop
    rst $38
    ld h, $f9
    rrca
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [$1f], a
    sub b
    ld a, a
    jr nz, @+$01

    ld hl, sp-$01
    nop
    rst $38
    ldh [$1f], a
    ld [c], a
    dec e
    rst $28
    db $10
    db $fd
    ld [bc], a
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    ld e, h
    db $e3
    cp b
    rst $00
    jr c, jr_064_4655

    cp b
    rst $00
    jr nz, @-$1f

    add a
    rst $38
    add e
    rst $38
    jr nz, @-$1f

    db $10
    rst $28
    inc de
    rst $28
    jr nc, @-$2f

    pop bc
    ld a, $c5
    rst $38
    ret


    rst $38
    ld e, c
    rst $38
    dec e
    rst $38
    dec de
    rst $38
    inc sp
    rst $38
    inc de
    rst $38
    inc bc
    rst $38
    ld b, d
    db $fd
    add d
    ld a, l
    jp nz, $e73d

    jr @+$01

    nop
    ld a, l

jr_064_46bb:
    add d
    ld a, [hl]

jr_064_46bd:
    add c
    dec a
    jp nz, $c33c

    cp h
    jp $e31c


    inc e
    db $e3
    rra
    ldh [$3c], a
    jp $c33c


    inc a
    jp $e31c


    jr jr_064_46bb

    jr jr_064_46bd

    db $fc
    inc bc
    inc b
    ei
    nop
    rst $38
    ld [hl], b
    rst $38
    ld e, a
    ldh [rSB], a
    cp $20
    rst $38
    ld l, [hl]
    pop af
    pop hl
    cp $78
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld b, $f9
    nop
    rst $38
    ld hl, sp-$01
    db $e3
    db $fc
    ldh [rIE], a
    ld a, b
    rst $38
    ld [bc], a

jr_064_46fb:
    db $fd
    adc c
    rst $30
    nop
    rst $38
    ldh a, [rIE]
    ld [bc], a
    db $fd
    rrca
    ldh a, [rP1]
    rst $38
    ld a, a
    rst $38
    ld bc, $92ff
    ld a, l
    add $39
    ldh [$1f], a
    ld a, b
    add a
    ld [hl], h
    adc e
    rlca
    ld hl, sp-$09
    ld hl, sp+$41
    cp $00
    rst $38
    nop
    rst $38
    dec b
    cp $64
    rst $38
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, h
    rst $38
    ld l, b
    rst $38
    xor [hl]
    rst $38
    jr c, jr_064_46fb

    ld e, a
    ldh [$1f], a
    ldh [rNR41], a
    rst $18
    nop
    rst $38
    add b
    rst $38
    db $10
    rst $38
    add a
    rst $38
    ld l, [hl]
    rst $38
    inc e
    rst $38
    ld c, $ff
    inc bc
    rst $38
    cp a
    rst $38
    ld h, b
    rst $38
    and b
    rst $38
    jr nc, @+$01

    ld d, b
    rst $38
    ld h, [hl]
    rst $38
    ld h, [hl]
    rst $38
    db $76
    rst $38
    ld [hl], $ff
    ld h, $ff
    inc hl
    rst $38
    dec hl
    rst $38
    ld h, c
    rst $38
    pop hl
    rst $38
    push af

jr_064_4767:
    rst $38
    db $fd
    rst $38
    ret


    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    db $10
    rst $38
    ld a, b
    rst $38
    ld [$0fff], sp
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    add hl, bc
    rst $38
    ld de, $01ee
    cp $01
    cp $fb
    ld b, $7c
    add e
    inc a
    jp $c53a


    ld a, [hl-]
    push bc
    ld hl, sp-$39
    ld a, h
    jp $c37c


    jr nc, jr_064_4767

    ld sp, $71ce
    adc [hl]
    ld a, a
    add b
    di
    inc c
    ld a, [c]
    rst $38
    ld a, [c]
    rst $38
    ldh a, [rIE]
    and h
    rst $38
    cp a
    rst $38
    ld a, h
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, d
    rst $38
    ld a, e
    rst $38
    ei
    rst $38
    ld sp, $39ff
    rst $38
    cp b
    rst $38
    jr c, @+$01

    ld a, $ff
    ld e, [hl]
    rst $38
    ld d, $ff
    ld d, $ff
    ld b, $ff
    and $ff
    ld h, b
    rst $38
    ld c, c
    rst $38
    jr @+$01

    db $10
    rst $38
    ld d, c
    rst $38
    dec de
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    pop bc
    rst $38
    ld hl, $e0ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    and c
    ld e, [hl]
    ld h, e
    sbc h
    add e
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp-$19

jr_064_47ef:
    jr jr_064_4858

    sbc b
    jp $c13c


    ld a, $00
    rst $38
    jr nc, @-$2f

    ld [$28f7], sp
    rst $30
    ld [$00f7], sp
    rst $38
    dec bc
    rst $38
    add e
    rst $38
    ld h, c
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    ld b, $ff
    ld b, $ff
    inc b
    ei
    inc b
    ei
    add h
    ei
    inc b
    ei
    add h
    ld a, e
    db $ec
    dec de
    ldh a, [rIF]
    jr nc, jr_064_47ef

    add b
    ld a, a
    ld a, h
    rst $38
    add $3f
    ld a, a
    add b
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$08]

jr_064_482f:
    rst $30
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    cp b
    ld b, a
    db $10
    rst $28
    ld bc, $c1ff
    ld a, $00
    rst $38
    nop
    rst $38
    ld bc, $30fe
    rst $18
    ldh [$1f], a
    ld h, b
    sbc a
    jr nz, jr_064_482f

    inc hl
    rst $38
    inc sp
    rst $38
    dec sp
    rst $38
    dec sp
    rst $38

jr_064_4858:
    cp a
    rst $38
    rst $38
    rst $38
    di
    rst $38
    rst $30
    rst $38
    ldh a, [rIF]
    add c
    ld a, [hl]
    add hl, bc
    or $02
    rst $38
    inc bc
    rst $38
    ld bc, $03ff
    rst $38
    nop
    rst $38
    ld b, h
    rst $38
    ld b, a
    rst $38
    rst $20
    rst $38
    ld h, a
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    or c
    rst $38
    or c
    rst $38
    ld hl, $20ff
    rst $38
    ld h, b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ld a, b
    rst $38
    jr c, @+$01

    jr c, @+$01

    add hl, sp
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    jp nz, $b83f

    ld b, a
    ld e, h
    and e
    inc e
    db $e3
    cp h
    rst $38
    cp [hl]
    rst $38
    cp [hl]
    rst $38
    cp a
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    ld l, l
    rst $38
    inc l
    rst $38
    inc a
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc d
    rst $38
    inc b
    rst $38
    ld [$48ff], sp
    rst $38
    jp z, $d8ff

    rst $38
    jp nc, $deff

    rst $38
    sbc $ff
    cp $ff
    pop hl
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ld h, b
    rst $38
    ld h, d
    rst $38
    ldh [rIE], a
    db $e4
    rst $38
    db $ec
    rst $38
    xor h
    rst $38
    cp l
    rst $38
    rst $18
    rst $38
    cp $ff
    ld a, [hl]

Call_064_48ff:
    rst $38
    cp $ff
    cp [hl]
    rst $38
    ld a, $ff
    ld a, $ff
    inc sp
    rst $38
    inc sp
    rst $38
    or e
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, a
    rst $38
    ld b, a
    rst $38
    ld c, a
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    sbc [hl]

jr_064_4927:
    rst $38
    cp $ff
    ld a, $ff
    inc e
    rst $38
    ld e, h
    rst $38
    ld a, h
    rst $38
    db $fc
    rst $38
    xor h
    rst $38
    xor $ff
    add $ff
    add $ff
    ld c, [hl]
    rst $38
    ld b, [hl]

Jump_064_493f:
    rst $38
    ld e, c
    rst $38
    add hl, sp
    rst $18
    add hl, hl
    rst $18
    jr z, jr_064_4927

    inc c
    rst $38
    inc e
    rst $38
    jr @+$01

    ccf
    ld hl, sp+$3a
    db $fd
    inc a
    ei
    inc d
    ei
    inc e
    ld a, [c]
    inc c
    di
    and b
    ld e, l
    ret nz

    inc a
    nop
    db $f4
    ld bc, $81f1
    ld [hl], c
    or e
    ld [hl], e
    or e
    ld [hl], e

jr_064_4968:
    add hl, sp
    ld sp, hl

jr_064_496a:
    ld a, $fe
    or [hl]
    or $86
    or $17
    rst $30
    ld b, a
    rst $38
    rlca
    rst $38
    ld b, a
    rst $30
    ld b, d
    ld a, [$ff03]
    add e
    ld a, a
    or l
    ld c, c
    db $fd
    inc bc
    rst $38
    ld bc, $01fe
    and $19
    rst $00
    jr c, jr_064_496a

    jr c, jr_064_4968

    inc a
    ld e, e
    cp h
    dec e
    cp $1d
    cp $1d
    cp $1f
    db $fc
    ld e, a
    cp h
    ld e, l
    cp [hl]
    cp l
    ld e, [hl]
    db $fd
    ld e, $6d
    sbc [hl]
    ld l, l
    sbc [hl]
    ld a, l
    adc [hl]
    dec [hl]
    adc $35
    adc $7d
    add [hl]
    add hl, de
    and $09
    or $08
    rst $38
    ld [$08ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ldh a, [rIE]
    pop af
    rst $38
    ldh a, [rIE]
    ld sp, hl
    rst $38
    inc sp
    rst $38
    ld de, $13ff
    rst $38
    inc de
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    or d
    rst $38
    or a
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    pop hl
    rst $38
    ldh [$1f], a
    ret nz

    ccf
    ld h, c
    sbc [hl]
    ld h, c
    sbc [hl]
    ld [hl], e
    adc [hl]
    ld a, d
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld [hl], c
    rst $38
    ld [hl], c
    rst $38
    db $e3
    rst $38
    jp Jump_000_07ff


    rst $38
    rla
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    dec hl
    db $f4

jr_064_4a02:
    ld hl, $01fe
    cp $c3
    inc a
    rst $08
    jr nc, jr_064_4a02

    ld [$0cf3], sp
    rst $30
    ld c, $f2
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ret nc

    cpl
    add sp, $1f
    and c
    ld e, [hl]
    ld h, c
    sbc [hl]
    ld h, e
    sbc h
    ld [hl], b
    adc a
    ld [hl], b
    adc [hl]
    inc d
    ld [$e31d], a
    inc e
    ldh [rNR30], a
    and $1a
    and $31
    swap h
    call z, $8474
    inc h
    push de
    inc h
    push de
    and b
    pop de
    add b
    pop af
    cp $f7
    di
    rst $38
    ld a, [c]
    cp $fd
    ei
    rst $38
    ei
    db $fd
    ei
    cp c
    ld a, a
    reti


    ccf
    add l
    ld a, e
    and a
    ld e, c
    ld bc, $01ff
    dec c
    ld bc, $01ed
    dec b
    jr nz, @+$26

    add e
    add e
    push hl
    push hl
    db $f4
    db $f4
    call z, $bccc
    cp h
    db $fc
    cp $0c
    ld c, $ad
    xor a
    add hl, bc
    dec bc
    call nz, $dcc6
    sbc $b8
    cp d
    ld a, d
    ld a, [hl]
    dec de
    rra
    cp d
    cp [hl]
    cp b
    cp $31
    ld [hl], a
    ld b, d
    ld hl, $6102
    sbc e
    db $fc
    rst $18
    cp b
    rla
    ld hl, sp+$17
    ld hl, sp+$17
    ld hl, sp-$79
    ld [hl], b
    adc a
    rst $30
    add a
    rst $38
    add a
    rst $38
    rst $00
    rst $38
    rst $18

jr_064_4a99:
    rst $28
    rst $08
    rst $38
    rst $08
    rst $38
    rst $38
    rst $08
    rst $08
    nop
    sbc a
    ld d, b
    sub a

jr_064_4aa5:
    ld a, b
    rst $10
    ld e, b
    sub a
    ld d, b
    sub a
    ld d, b
    sbc e
    ld e, h
    adc a
    ld c, h
    sbc l
    ld e, h
    sbc d
    ld a, e
    sbc a
    ld a, a
    sbc $3e
    db $eb
    dec de

Jump_064_4aba:
    pop bc
    ld sp, $3dc1
    pop bc
    rrca
    sub b
    ld d, [hl]
    sub h
    ld a, d
    sbc c
    ld a, [hl]
    adc c
    ld l, [hl]
    jr z, jr_064_4a99

    jr c, jr_064_4aa5

    ld e, $fe
    ld e, d
    cp [hl]
    dec de
    ei
    add hl, de
    rst $18
    add hl, de
    rst $18
    add hl, de
    rst $38
    ld e, e
    db $dd
    xor d
    ld l, c
    cp a
    ld a, h
    cp d
    ld a, c
    sbc c
    ld a, d
    sub c
    ld [hl], d
    jp hl


    ld e, $e0
    rla
    add sp, $1f
    ldh [rNR13], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
    ldh a, [$03]
    or h
    ld c, h
    or [hl]
    ld c, [hl]
    inc a
    push bc
    inc [hl]
    call $0df4
    or $0e
    or $06
    rst $30
    rlca
    cp $0e
    ld a, [$fe0b]
    rrca
    xor $1f
    rst $28
    ld e, $ef
    ld e, $ef
    ld c, $65
    sub h
    dec h
    adc $25
    sbc $43
    or b
    dec hl
    call c, $c82f
    rlca
    add sp, -$41
    ld l, a
    xor a
    ld a, a
    sbc a
    ld a, a
    ld e, a
    cp a
    rst $18
    ccf
    ld e, a
    cp a
    adc a
    ld a, a
    adc a
    ld a, a
    rlca
    ld l, b
    rlca
    ld a, b
    inc bc
    db $f4
    inc bc
    ld hl, sp+$05
    or $07
    or $06
    rst $28
    inc bc
    db $eb
    add c
    adc [hl]
    inc de
    inc e
    rlca
    nop
    rrca
    ld [$0a09], sp
    nop
    rlca
    nop
    rlca
    add hl, bc
    ld c, $1b
    inc e
    cp e
    cp b
    sub c
    sub d
    add hl, bc
    ld c, $09
    ld a, [bc]
    dec bc
    ld [$0f08], sp
    add hl, bc
    rrca
    ld [$110f], sp
    dec d
    ld bc, $010d
    dec b
    ld de, $9315
    sbc a
    rst $10
    db $db
    rst $30
    ei
    add $ca
    ld a, [$02f6]
    ld c, $ab
    or a
    xor e
    or a
    add e
    sbc e
    ld h, a
    ld a, a
    and a
    cp a
    call nz, Call_064_62dc
    ld a, [$b920]
    add sp, $17
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    pop af
    ld c, $f1
    ld a, [bc]
    ldh [$1f], a
    pop hl
    inc de
    rst $20

jr_064_4b9b:
    rra
    and $16
    ret


    add hl, hl
    add $36
    rst $08
    ccf
    call nc, $cc14
    inc l
    call z, $cc2c
    inc l
    ret z

    jr c, jr_064_4b9b

    inc e
    db $ec
    inc e
    and h
    ld e, h
    db $e4
    inc d
    ld h, b
    sub b
    ld hl, sp-$78
    ld a, [$7a8a]
    ld a, [bc]
    dec sp
    ld c, e
    cp h
    call z, $c6b6
    ld a, [hl-]
    jp z, Jump_064_4aba

    ld a, [c]
    ld [bc], a
    ld [hl], d
    add d
    or a
    ld b, a
    inc sp
    res 6, l
    call $84bc
    sbc d
    and d
    sbc d
    ld [c], a
    adc d
    sub $09
    ld [hl], l
    adc l
    or e
    push bc
    ei
    jp nc, Jump_064_42e4

    ld e, c
    ld l, b
    rst $30
    ld h, b
    rst $28
    ld h, b
    rst $28
    ld [hl], b
    ld a, [hl]
    inc [hl]
    or a
    jr z, jr_064_4b9b

    inc a
    db $fd
    inc e
    rst $18
    rra
    ld e, $34
    scf
    jr nz, @-$57

jr_064_4bfa:
    ld a, [de]
    db $dd
    ret nz

    ld h, $21
    rst $18
    add c
    sbc l
    push hl
    jp hl


    dec e
    add hl, de
    add c
    ld b, a
    db $e3
    dec b
    ld a, [c]
    dec c
    rst $38
    nop
    rst $28
    db $10
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    cp $01

jr_064_4c18:
    rst $38
    nop
    cp $01
    rst $38
    ld bc, $02fc
    db $fd
    ld bc, $01fd
    ldh a, [$0c]
    ldh [$1f], a
    pop hl
    ld e, $e1
    ld e, $e3
    inc e
    rst $20
    jr jr_064_4c18

    jr jr_064_4bfa

    jr c, @-$70

    ld [hl], c
    adc [hl]
    ld [hl], b
    adc a
    ld [hl], c
    adc a
    ld [hl], c
    adc l
    ld [hl], e
    call Call_000_0033
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
    jr jr_064_4c73

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_064_4c83

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_064_4c93

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_064_4ca3

    ld [hl-], a

jr_064_4c73:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_064_4cb3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_064_4c83:
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

jr_064_4c93:
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

jr_064_4ca3:
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

jr_064_4cb3:
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
    jr jr_064_4d73

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_064_4d83

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_064_4d93

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_064_4da3

    ld [hl-], a

jr_064_4d73:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_064_4db3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_064_4d83:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld bc, $0202
    ld bc, $0201
    ld [bc], a
    ld [bc], a

jr_064_4d93:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld bc, $0202
    ld [bc], a

jr_064_4da3:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_064_4db3:
    ld [bc], a
    ld [bc], a
    ld bc, $0202
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0102
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
    ld bc, $0201
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
    ld [bc], a
    ld [bc], a
    ld bc, $0101
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    rlca
    rlca
    rlca
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
    ld [bc], a
    ld bc, $0607
    rlca
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
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rrca
    ld c, $0f
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rrca
    rrca
    rrca
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec c
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

jr_064_4ead:
    dec c
    ld a, [bc]
    add hl, bc
    ld a, [bc]

Jump_064_4eb1:
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rst $38
    rst $38
    ei
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, [$fdff]
    cp $78
    rst $38
    adc d

jr_064_4ecf:
    ld a, l
    rst $20
    jr jr_064_4ecf

    inc bc
    cp $01
    db $fd
    inc bc
    db $fd
    inc bc
    ld a, b
    add a
    ld a, d
    add a
    ld a, [$fb07]
    rlca
    ld a, b
    add a
    jr c, jr_064_4ead

    inc a
    jp $cd32


    inc de
    db $ec
    inc d
    rst $28
    ld b, $ff
    inc d
    rst $28
    db $10
    rst $28
    ld [$00f7], sp
    rst $38
    ret nz

    ccf
    ld l, b
    sub a
    jp nz, $c23d

    dec a
    ret nz

    ccf
    jp nz, $8a3f

    ld a, a
    adc h
    ld a, a
    add h
    ld a, a
    add a
    ld a, a
    ld b, a
    cp a
    inc bc
    rst $38
    inc bc
    rst $38
    ld l, $df
    rrca
    rst $38
    ld c, $ff
    add a
    cp $84
    rst $38
    add h
    rst $38
    and h
    rst $18
    add d
    db $fd
    ld [bc], a
    db $fd
    ld a, [bc]
    db $fd
    ld [$00ff], sp
    rst $38
    add h
    ld a, e
    cp $01
    rst $38
    nop
    rst $38
    rst $38
    ld a, a

jr_064_4f33:
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, $ff
    ld a, $ff
    rra
    rst $38
    sbc [hl]
    pop hl
    ld e, $e1
    jr @-$17

    inc e
    db $e3
    sbc h
    db $e3
    dec a
    jp $c7b9


    ld hl, sp-$79
    ld a, c
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld a, b
    add a
    ld hl, sp-$79
    jr c, jr_064_4f33

    ld a, h
    add e
    ld a, h
    add e
    ld a, h
    rst $38
    ld a, c
    rst $38
    ld a, b
    rst $38
    ld h, b
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp+$07
    ld a, [$7807]
    add a
    ld a, b
    add a
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    rrca
    ldh a, [rIF]
    ldh a, [rSC]
    rst $38
    jr nc, @-$2f

    ld a, a
    add b
    rrca
    ldh a, [rP1]
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $7eff
    rst $38
    ld a, a
    ldh a, [$7e]
    ld sp, hl
    ld a, h
    rst $38
    db $fc
    rst $38
    ld a, h
    rst $38
    ld a, l
    rst $38
    ld a, [$fafd]
    db $fd
    db $fc
    di
    db $fd
    di
    xor l
    di
    xor l
    di
    inc a
    db $e3
    ld [hl-], a
    rst $28
    ld e, $e7
    inc d
    rst $28
    ld e, h
    rst $28
    inc c
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    inc b
    ei
    inc b
    ei
    ld c, l
    ld a, [c]
    ld c, b
    rst $30
    inc bc
    rst $38
    ld bc, $1aff
    db $fd
    ld a, [de]
    db $fd
    ld a, b
    rst $38
    ld a, b
    rst $38
    add hl, sp
    cp $71
    cp $71
    cp $71
    cp $f7
    ld hl, sp+$73
    db $fc
    ld a, e
    db $fc
    ld sp, $18fe
    rst $38
    dec de
    db $fc
    dec sp
    db $fc
    dec hl
    db $fc
    dec sp
    rst $38
    dec sp
    rst $38
    add hl, de
    rst $38
    ld a, c
    rst $38
    ld h, c
    rst $38
    jp $a0ff


    rst $38
    ld e, h
    db $e3
    ld e, h
    db $e3
    ld a, [de]
    push hl
    ld a, [de]
    push hl
    dec sp
    call nz, $fffd
    db $fd
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
    ld a, a
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ld [hl], a

jr_064_504f:
    rst $38
    dec bc
    db $f4
    dec bc
    db $f4
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$0e]
    pop af
    add hl, bc
    rst $30
    ld [bc], a
    rst $38
    ld de, $11ef
    rst $28
    add hl, de
    rst $20
    jr jr_064_504f

    dec e
    db $e3
    inc e
    db $e3
    ld e, h
    and e
    sbc h
    ld h, e
    inc c
    rst $38
    inc c
    rst $38
    ld c, h
    rst $38
    ld b, l
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld c, $ff
    inc b
    rst $38
    jr nz, @+$01

    ld h, b
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    inc sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $01
    ld a, [c]
    rrca
    add c
    ld a, a
    nop
    rst $38
    rra
    ldh [rTAC], a
    ld hl, sp-$20
    rra
    db $e3
    rra
    ld [c], a
    rra
    ld bc, $3ffe
    ret nz

    rst $20
    jr @+$03

    cp $90
    ld l, a
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
    ld b, b
    rst $38
    ldh [rIE], a
    ld a, [de]
    db $fd
    sbc l
    ei
    dec a
    ei
    inc sp
    db $fd
    cp a
    ld sp, hl
    or a
    ld sp, hl
    scf
    ld sp, hl
    scf
    ld sp, hl
    ld [hl], a
    ld sp, hl
    push af
    ei
    db $ed
    di
    db $ed
    di
    call $44f3
    ei
    ld d, b
    rst $28
    ld a, [de]
    rst $20
    ld e, b
    rst $20
    ld l, d
    rst $30
    ld a, h
    di
    sbc h
    db $e3
    dec a
    jp $e798


    cp b
    rst $00
    ldh a, [$8f]
    ld [hl], h
    adc a
    db $e4
    rra
    ret z

    ccf
    ld hl, sp+$1f
    ld hl, sp+$1f
    db $e4
    dec de

jr_064_50fc:
    db $fc
    inc bc
    xor $13
    call nc, $f73b
    jr jr_064_50fc

    jr @-$03

    inc e
    db $fc
    rra
    db $fd
    ld e, $fd
    ld e, $ef
    inc e
    db $e3
    inc e
    rst $20
    inc e
    db $e3
    inc e
    pop hl
    ld e, $d9
    and $e5
    ld a, [$f8e7]
    pop bc
    cp $c0
    rst $38
    nop
    rst $38
    ld b, d
    rst $38
    ld hl, $e1fe
    cp $e2
    rst $38
    ldh [rIE], a
    ld a, [de]
    rst $20
    cp $03
    db $fc
    inc bc
    db $ed
    ld [de], a
    ret


    ld [hl], $c5
    ld a, [hl-]
    ld c, l
    or d
    add hl, bc
    or $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$48ff], sp
    rst $38
    jr @+$01

    sub b
    ld a, a
    add b
    ld a, a
    or b
    ld c, a
    di
    inc c
    db $e3
    inc e
    db $e3
    inc e
    ldh a, [rIF]
    sub b
    ld l, a
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld b, $ff
    inc c
    rst $38
    ld c, c
    cp [hl]
    ld d, l
    cp [hl]
    ld b, e
    cp h
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
    ld [hl], d
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld h, b
    rst $38
    nop
    rst $38
    add b
    ld a, a
    rst $38
    nop
    rst $38
    nop
    ldh [$1f], a
    inc c
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
    db $fc
    inc bc
    jr c, @-$37

    nop
    rst $38
    ld [bc], a
    rst $38
    push af
    ld a, [bc]
    rst $38
    nop
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
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$3f
    ret nz

    rst $18

jr_064_51c1:
    rst $28
    rst $38
    rst $28
    xor $ff
    jp hl


    cp $ed
    ld a, [$fff0]
    or $ff
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a

jr_064_51d3:
    rst $38
    cp $ff
    cp $ff
    cp $ff
    dec e
    cp $92
    ld a, l
    add $39
    ld h, [hl]
    sbc c
    inc c
    di
    inc c
    di
    dec bc
    or $08
    rst $30
    jr jr_064_51d3

    db $10
    rst $28
    db $10
    rst $28
    jr nc, jr_064_51c1

    add hl, sp
    adc $e0
    sbc a
    jp $c23d


    dec a
    jp $c53d


    dec sp
    ret nz

    ccf
    add h
    ld a, e
    push bc
    ld a, [hl-]
    ldh [$1f], a
    nop
    rst $38
    ld b, c
    cp $6b
    db $f4
    ld b, a
    cp b
    ld b, a
    cp b
    rlca
    rst $38
    dec b
    rst $38
    add h
    rst $38
    push bc
    rst $38
    add a
    rst $38
    add a
    rst $38
    rst $00
    rst $38
    db $e3
    rst $38
    pop hl
    ld e, $21
    sbc $c5
    ld a, [$fb44]
    jr nz, @+$01

    ld [bc], a
    db $fd
    ld h, b
    rst $38
    nop
    rst $38
    ld e, b
    rst $20
    sbc b
    ld h, a
    ret c

    daa
    db $fc
    inc bc
    rst $38
    nop
    ccf
    ret nz

    cp a
    ld b, b
    sbc a
    ld h, b
    ld e, $e1
    ld e, $e1
    ld a, $c1
    ld c, [hl]
    pop af
    ld c, $f1
    ld l, $f1
    ld b, $f9
    ld a, $c1
    ld e, $e1
    ld e, $e1
    ld e, e
    and h
    dec de
    db $e4
    ld [bc], a
    db $fd
    inc bc
    db $fc
    inc bc
    db $fc
    inc hl
    db $fc
    ld b, $f9
    sub [hl]
    ld sp, hl
    rla
    ld hl, sp+$1f
    ld hl, sp+$23
    call c, $d827
    ld a, $c1
    rra
    ldh [rNR10], a
    rst $28
    db $10
    rst $28
    rst $38
    nop
    ldh a, [rIF]
    add sp, $17
    or $09
    ld [bc], a
    db $fd
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ldh a, [rIF]
    ldh a, [rIF]
    nop
    rst $38
    ld [de], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $01fe
    cp $12
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $16ff
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$7f
    add b
    rst $38
    nop
    rst $38
    nop
    rrca
    rst $38
    ld e, $ff
    sbc $7f
    ld d, $ff
    daa
    cp $45
    cp $4d
    cp $9f
    ld a, h
    sub $3f
    jp $c33f


    ccf
    rst $30
    rrca
    ld a, [c]
    rrca
    ld a, [c]
    rrca
    or $0f
    ld a, [$f807]
    rlca
    cp $01
    ld [$e015], a
    rra
    ld h, b
    sbc a
    ld h, c
    sbc [hl]
    ld b, h
    cp a
    ret z

    ccf
    ret z

    ccf
    db $e4
    rra
    ld [hl], b
    adc a
    db $e4
    sbc a
    inc bc
    cp $01
    cp $03
    db $fc
    inc bc
    db $fc
    ld h, $f9
    ld b, d
    db $fd
    ld d, b
    rst $38
    or d
    rst $38
    nop
    rst $38
    sub c
    ld a, a
    jp nz, $e03d

    rra
    or b
    ld c, a
    pop af
    ld c, $31
    adc $18
    rst $20
    ld [de], a
    db $ed
    ld [bc], a
    db $fd
    ld [de], a
    db $ed
    ld d, $ed
    sub e
    ld l, l
    or e
    ld c, l
    inc hl
    db $dd
    and d
    ld e, l
    ld d, e
    xor h
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    jr @+$01

    ld d, b
    rst $38
    ld d, b
    rst $38
    sbc l
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    xor $ff
    and $ff
    or $ff
    add $ff
    jp nz, $83ff

    rst $38
    add e
    rst $38
    ld c, e
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, b
    rst $38
    cp $ff
    jp z, $72ff

    rst $38
    ld l, b
    rst $38
    xor $ff
    adc [hl]
    rst $38
    ld c, a
    rst $38
    rst $08
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    rst $20
    rst $38
    call nz, $c0ff
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ret nz

    ccf
    db $fc
    inc bc
    ld [$19f7], sp
    and $0c
    di
    ld b, $f9
    add hl, bc
    cp $00
    rst $38
    ld bc, $03fe
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    ld c, $ff
    ld [$cbff], sp
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    cpl
    rst $38
    cp $ff
    rlca
    ld hl, sp-$04
    inc bc
    call nz, $2d3b
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    ld [$0bf7], sp
    db $f4
    rrca
    ldh a, [rTAC]
    ld hl, sp-$19
    ld hl, sp+$03
    db $fc
    ld bc, $fffe
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    and b
    rst $38
    jr nc, @+$01

    inc c
    rst $38
    add e
    rst $38
    jp $dfff


    rst $38
    sbc h
    rst $38
    sbc a
    rst $38
    add hl, sp
    add $b8
    rst $00
    ld sp, $37ce
    ret z

    ld h, $d9
    daa
    ret c

    daa
    ret c

    inc de
    db $fc
    ld [hl], e
    db $fc
    ld b, d
    db $fd
    ldh [rIE], a
    and $ff
    and [hl]
    rst $38
    ld e, $ff
    cp b
    ld a, a
    ld d, c
    cp a
    pop bc
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $38
    rra
    ei
    rra
    sbc a
    ld a, a
    add [hl]
    ld a, [hl]
    rst $20
    ld a, a
    inc de
    rst $38
    inc e
    ld hl, sp+$54
    cp d
    inc e
    ld a, [c]
    ld [$48f5], sp
    or c
    rst $00
    ld a, $85
    ld a, h
    inc c
    rst $30
    add b
    ld l, d
    nop
    and $00
    ld h, h
    nop
    ldh [$80], a
    ld h, e
    add b
    ld h, d
    nop
    ld a, [c]
    or b
    rlc b
    rst $38
    nop
    adc a
    add h
    inc bc
    add c
    ld h, h
    add b
    dec sp
    add b
    scf
    nop
    rst $00
    add sp, $17
    ld a, h
    add e
    ld a, [hl]
    add c
    ccf
    ret nz

    inc de
    db $ec
    ld h, [hl]

jr_064_543b:
    rst $38
    ld [hl], c
    rst $38
    ld sp, $a3ff
    ld a, l
    jr z, jr_064_543b

    ld l, b
    or a
    jr nz, @+$01

    ld a, b
    rst $38
    inc hl
    db $fc
    inc bc
    db $fc
    ld l, d
    sbc l
    and b
    ld e, a
    inc [hl]
    rst $08
    scf
    rst $08
    inc bc
    rst $38
    and c
    cp $a2
    db $fd
    ld hl, sp-$01
    add b
    rst $38
    db $fc
    rst $38
    add b
    rst $38
    ret c

    rst $38
    ld c, $ff
    nop
    rst $38
    dec bc
    rst $38
    rlca
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    rst $38
    nop
    rra
    ldh [rSVBK], a
    rst $38
    rlca
    rst $38
    ldh [$1f], a
    cp $01
    cp $01
    rst $38
    nop
    rra
    ldh [rP1], a
    rst $38
    ld c, [hl]
    cp a
    nop
    rst $38
    rrca
    ldh a, [$7f]
    ldh [rNR22], a
    add sp, $04
    ei
    ld l, [hl]
    pop af
    sbc a
    ldh [$7f], a
    add b
    db $ed
    ld [de], a
    nop
    rst $38
    ld e, $ff
    ldh a, [rIE]
    jr @+$01

    di
    rrca
    ccf
    ret nz

    ccf

jr_064_54a9:
    ret nz

    rst $38
    nop
    rst $38

jr_064_54ad:
    nop
    rst $18
    jr nz, jr_064_54ad

    inc bc
    jp $813f


    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ld hl, sp+$07
    ei
    inc b
    cp $01
    cpl
    ret nc

    ld de, $00ee
    rst $38
    nop
    rst $38
    jr nz, jr_064_54a9

    ld [c], a
    rra
    ld b, a
    cp a
    db $e3
    rra
    add b
    rst $38
    inc bc
    rst $38
    inc sp
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
    jp Jump_000_3fff


    rst $38
    dec b
    rst $38
    jp Jump_064_7fff


    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld [hl], a
    adc b
    rrca
    ldh a, [$3d]
    jp nz, $fb04

    cpl
    ldh a, [$0a]
    sub l
    nop
    ccf
    inc c
    inc de
    ldh [$1f], a
    xor $1f
    rst $20
    rra
    rst $20
    rra
    rst $30
    rra
    push hl
    rra
    rst $20
    rra
    ldh [$1f], a
    and c
    ld e, a
    and e
    ld e, a
    add c

jr_064_5515:
    ld a, a
    xor [hl]
    ld [hl], c
    inc l
    di
    ld l, $f1
    ld b, $f9
    rlca
    ld sp, hl
    add l
    ld a, e
    adc h

jr_064_5523:
    ld [hl], e
    adc b
    ld [hl], a
    ld c, b
    rst $30
    and b
    rst $18
    xor b
    rst $10
    jr jr_064_5515

    nop
    rst $38
    jr nc, @-$2f

    inc bc
    rst $38
    rlca
    ei
    inc sp
    rst $08
    inc de
    rst $28
    ld d, e
    rst $28
    ld [hl], b
    rst $38
    daa
    ei
    ld h, c
    rst $38
    ld bc, $63ff
    rst $38
    inc bc
    rst $38
    ld a, [bc]
    rst $30
    add hl, de
    cp $78
    rst $38
    ld [hl], b
    rst $38
    add b
    rst $38
    jr nc, jr_064_5523

    db $10
    rst $28
    ld a, [hl]
    add c
    cp $01
    ld bc, $82ff
    rst $38
    jr nz, @+$01

    jr c, @+$01

    rrca
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    ld a, c
    add [hl]
    ld b, b
    cp a
    jp $833f


    ld a, a
    rra
    ldh [rIE], a
    rst $38
    nop
    rst $38
    inc de
    rst $38
    ccf
    rst $38
    xor a
    ld a, a
    call c, $3e3f
    rst $38
    ld bc, $fffe
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
    ldh a, [$c0]
    ccf
    ld h, c
    sbc a
    nop
    rst $38
    db $10
    rst $38
    ld a, e

jr_064_559f:
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    pop af
    rrca
    adc h
    ld [hl], e
    or $09
    or $09
    ld bc, $e0fe
    rst $38
    ld [bc], a
    rst $38
    inc c
    rst $38
    dec a
    cp $08
    rst $38
    inc bc
    db $fc
    jr nz, jr_064_559f

    ldh a, [rIE]
    add b
    rst $38
    ret nz

    rst $38
    ld a, $ff
    ld [hl], a
    rst $38
    inc sp
    rst $38
    dec [hl]
    rst $38
    inc sp
    rst $38
    dec c
    ld a, [c]
    ret nz

    ccf
    ret nz

    ccf
    add b
    ld a, a

jr_064_55d8:
    ret nz

    ccf
    ld [c], a
    dec e
    add h
    ld a, a
    ld bc, $85fe
    rst $38
    and b
    rst $38
    add b
    rst $38
    jp nz, $dfff

    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    db $fc
    rst $38
    sbc a
    ld h, b
    jr jr_064_55d8

    db $10
    rst $28
    inc bc
    ld a, e
    and b
    ld e, d
    ldh [$0c], a
    ld bc, $11fe
    ld l, $01
    rst $38
    rst $00

jr_064_5603:
    rst $38
    ret nz

    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    sbc b
    rst $38
    ld hl, sp-$01
    rra
    rst $38
    add d
    rst $38
    db $e3
    db $fc
    rst $08
    cp $00
    rst $38
    ld [bc], a
    rst $38
    ret nc

    rst $38
    add b
    rst $38
    and b
    rst $18
    jr nz, jr_064_5603

    ld d, b
    rst $28
    db $fd
    rst $38
    ld [hl], d
    rst $38
    db $76
    ei
    ldh [rIE], a
    inc bc
    rst $38
    db $10
    rst $38
    pop de
    rst $38
    nop
    rst $38
    jr nz, @+$01

    rst $38
    rst $38
    ld a, b
    rst $38
    ld h, b
    rst $38
    ld a, [$7cff]
    rst $38
    db $fc
    rst $38
    ld l, a
    rst $38
    ld a, h
    rst $38
    ld h, b
    rst $38
    add b
    ld a, a
    call nz, Call_000_323b
    db $fd
    ld a, b
    rst $38
    ld a, l
    rst $38
    ld hl, $1edf
    pop hl
    ldh a, [rIE]
    inc bc
    db $fc
    ld c, h
    cp a
    nop
    rst $38
    nop
    rst $38
    ld l, [hl]
    rst $38
    cp $ff
    cp $ff
    ld a, b
    rst $38
    nop
    rst $38
    sub b
    rst $38
    db $fc
    rst $38
    rst $38
    nop
    cp $01
    add [hl]
    ld sp, hl
    inc bc
    db $fc
    add h
    ld a, a
    rst $38
    rst $38
    scf
    rst $38
    add hl, de
    rst $38
    cp h
    rst $38
    and b
    rst $38
    rra
    ldh [$7f], a
    add b
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    db $fc
    inc bc
    db $fc
    inc bc
    pop af
    ld c, $fd
    ld [bc], a
    ei
    inc b
    ld sp, hl
    cp $2f
    rst $38
    nop
    rst $38
    or [hl]
    rst $08
    dec h
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    ld b, b
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    ld a, [hl-]
    rst $38
    cp a
    ld a, a
    rra
    rst $38
    ld l, a
    sbc a
    db $e3
    rra
    jp $813f


    ld a, a
    add c
    ld a, a
    add c
    cp $00

jr_064_56c3:
    rst $38
    nop
    rst $38
    add $39
    db $fc
    inc bc
    cp $03
    rst $38
    inc bc
    di
    rrca
    pop bc
    ccf
    db $ed
    rra
    db $f4
    rrca
    add sp, $17
    jp nz, $c03d

    ccf
    jr nz, @+$01

    add b
    ld a, a
    add b
    ld a, a
    jr nz, jr_064_56c3

    ret nz

    ccf
    ld h, b
    sbc a
    ldh [$1f], a
    db $dd
    ccf
    ret c

    ccf
    cp a
    ld a, a
    cp a
    ld a, a
    ld c, d
    jp z, $c040

    ld b, b
    ld b, b
    nop
    ld b, b
    ld [bc], a
    db $e3
    add b
    ld b, c
    ld bc, $410a
    cp a
    inc hl
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    ld [$04ff], sp
    rst $38
    ld b, $ff
    ld [de], a
    rst $28
    inc h
    rst $18
    ld sp, hl
    ld b, $fc
    inc bc
    ld bc, $83ff
    ld a, a
    jr nc, @+$01

    ret nc

    cpl
    add b
    ld a, a
    rlca
    rst $38
    ldh [$1f], a
    add b
    ld a, a
    rlca
    rst $38
    rst $08
    ccf
    add hl, bc
    rst $38
    ld bc, $c0ff
    ld a, a
    ld c, h
    rst $38
    ld bc, $21ff
    rst $38
    or [hl]
    rst $38
    ld [bc], a
    rst $38
    add b
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld e, $ff
    cp $ff
    or $ff
    sub h
    rst $38
    ld hl, sp-$01
    ld bc, $24fe
    rst $18
    ld bc, $43ff

jr_064_5753:
    rst $38
    db $fc
    rst $38
    inc c
    di
    inc hl
    db $fc
    inc b
    ei
    ld [$0ff7], sp
    ldh a, [rDIV]
    ei
    inc b
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    rst $38
    db $fc
    rst $38
    ld e, $ff
    nop
    rst $38
    jr nc, @+$01

    ldh a, [rIF]
    db $fc
    inc bc
    ld b, $f9
    jr c, @+$01

    dec bc
    rst $38
    sbc b
    rst $38
    call nz, $e0ff
    rst $38
    nop
    rst $38
    jr nc, jr_064_5753

    ldh a, [rIF]
    rst $38
    nop
    nop
    rst $38
    ld a, a
    rst $38
    ld a, $ff
    ld c, $ff
    nop
    rst $38
    sbc a
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rrca
    ldh a, [rIE]
    rst $38
    ld a, e
    rst $38
    cp $ff
    di
    db $fc
    rst $08
    ldh a, [$e0]
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    add $ff
    nop
    rst $38
    ret c

    rst $20
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
    adc c
    rst $38
    ld b, d
    rst $38
    ld b, b
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    adc $ff
    inc l
    rst $18
    cp b
    rst $00
    ld b, $f9
    inc bc
    db $fc
    sub a
    ld hl, sp+$13
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f

jr_064_57db:
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rNR31]
    db $e4
    db $10
    rst $28
    ld c, e
    db $fc
    jp c, Jump_000_11fd

    cp $83
    db $fc
    and c
    cp $a3
    db $fc
    and d

jr_064_57f1:
    db $fd
    ld [hl+], a
    db $fd
    dec hl
    xor h
    ld b, b
    xor a
    ld l, h
    adc [hl]
    jr nz, jr_064_57db

    inc bc
    inc l
    nop
    adc d
    xor a
    ret nc

    and b
    rst $18
    add $ff
    add h
    rst $38
    adc h
    rst $38
    sbc a
    rst $38
    cp $ff
    ld [hl], $ff
    ld a, b
    rst $38
    ldh [rIE], a
    add $f9
    adc [hl]
    pop af
    rst $28
    ldh a, [rNR34]
    pop hl
    ld a, a
    pop bc
    ld a, c
    rst $00
    jr nc, jr_064_57f1

    or [hl]
    ret


    ld c, $f1
    inc e
    db $e3
    ld c, $f1
    ld b, $f9
    ld d, $e9
    nop
    rst $38
    nop
    rst $38
    ld [hl-], a
    db $fd
    inc bc
    db $fc
    add [hl]
    ld sp, hl
    add $f9
    jp nz, Jump_064_65fd

    rst $38
    ret nz

    rst $38
    call nz, $d9fb

jr_064_5843:
    rst $38
    ret z

    rst $30
    ld sp, hl
    or $00
    rst $38
    ld h, h
    sbc a
    ld bc, $83ff
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    and h
    ld a, e
    add c
    ld a, a
    nop
    rst $38
    jr jr_064_5843

    inc a
    jp $f30c


    add [hl]
    ld a, e
    nop
    rst $38
    add a
    rst $38
    rrca
    rst $38
    ld a, [de]
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    inc bc
    rst $38
    ld [bc], a
    db $fd
    ld [$70ff], sp
    rst $38
    ld sp, $c1fe
    rst $38
    inc b
    rst $38
    rrca
    cp $00
    rst $38
    rra
    rst $38
    dec a
    jp Jump_000_00ff


    rst $38
    nop
    rra
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    dec sp
    rst $38
    ld bc, $c8ff
    scf
    ld hl, sp+$07
    rst $28
    rra
    ld de, $f7ef
    ld hl, sp-$79
    ld hl, sp+$7f
    add b
    ld a, [c]
    dec c
    ld d, b
    xor a
    nop
    rst $38
    rlca
    rst $38
    inc b
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    ld a, [hl]
    add c
    inc bc

jr_064_58b3:
    rst $38
    rst $18
    rst $38
    rst $38

Call_064_58b7:
    rst $38
    ccf
    rst $38
    add a
    rst $38
    add l
    ei
    add a
    ld hl, sp-$40
    ccf
    or c
    ld a, a
    ldh [$7f], a
    and c
    ld a, a
    ldh [$7f], a
    ld c, b
    rst $30
    rlca
    cp $05
    cp $c0
    ccf
    ret nc

    ccf
    add b
    ld a, a
    jp $803c


    ld a, a
    add b
    ld a, a
    and b
    ld a, a
    and e
    ld a, h
    rst $10
    jr c, jr_064_5946

    sbc h
    ld bc, $80fe
    ld a, a
    adc h
    ld [hl], e
    jr c, jr_064_58b3

    ld a, $c1
    sbc a
    ld h, b
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    ld a, [hl]
    add c
    rst $08
    ld sp, $27e1
    pop hl
    rra
    rla
    rst $28
    ld bc, $0819
    ldh a, [rNR10]
    db $ec
    add h
    ld e, h
    add d
    ld d, d
    add c
    ld b, c
    ld [bc], a
    add e
    ld bc, $ba42
    ld b, l
    inc hl
    call c, Call_064_58b7
    rlca
    ld hl, sp+$46
    ld sp, hl
    ld b, c
    cp $1f
    db $e4
    add e
    ld a, h
    ld b, $f9
    ld [bc], a
    db $fd
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld e, h
    rst $38
    ld d, h
    rst $38
    nop
    rst $38
    inc bc

jr_064_5931:
    db $fc
    ld [bc], a
    db $fd
    inc bc
    db $fc
    ld bc, $01fe

jr_064_5939:
    cp $07
    cp $f2
    rst $38
    ld h, b
    rst $38
    jr c, jr_064_5939

    and c
    cp $74
    rst $38

jr_064_5946:
    ld h, c
    rst $38
    add sp, -$09
    add b
    rst $38
    ret nz

    rst $38
    jr nz, @+$01

    ld b, l
    cp a
    ld h, d
    sbc l
    cp $01
    sbc a
    ldh [$78], a
    add a
    sbc [hl]
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    inc de
    db $ec
    ld l, a
    sub b
    db $fc
    inc bc
    ld b, $f9
    jr c, jr_064_5931

    ret nz

    ccf
    db $10
    rst $38
    ret nz

    ccf
    ccf
    rst $38
    nop
    rst $38
    ld e, [hl]
    and c
    dec a
    jp $fff0


    jr c, @+$01

    cp a
    ld a, a
    jp nz, Jump_064_493f

    rst $30
    sub b
    rst $38
    dec bc
    rst $30
    rst $08
    ccf
    rst $38
    rra
    rst $08
    rst $38
    db $fc
    rst $38
    sub h
    rst $38
    pop af
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    db $fc
    rst $38
    scf
    ld hl, sp-$41
    ld a, a
    ld [hl], c
    rst $38
    add b
    ld a, a
    dec de
    rst $38
    ld a, l
    rst $38
    ld a, l
    rst $38
    ld c, $ff
    sbc [hl]
    rst $38
    ld bc, $89fe
    or $3e
    pop bc
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
    ldh a, [rIE]
    add [hl]
    ld a, c
    inc de
    db $ec
    ld e, $e1
    dec bc
    db $f4
    add hl, de
    and $5c
    db $e3
    sub b
    rst $28
    nop
    rst $38
    ld bc, $43ff
    rst $38
    add hl, sp
    rst $38
    ld [bc], a
    db $fd
    rlca
    ld hl, sp+$08
    rst $30
    nop
    rst $38
    ldh [$1f], a
    and b
    ld e, a
    rst $18

jr_064_59e1:
    jr nz, jr_064_59e1

    ld bc, $03fd
    db $10
    rst $28
    ld [de], a
    db $ed
    db $10
    rst $28
    inc d
    rst $28
    ld d, h
    rst $28
    pop hl
    rra
    and e
    ld a, a
    ld h, a
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
    jr nz, @+$41

    ld l, b
    ld [hl], a
    ld l, e
    db $76
    ld e, d
    ld h, a
    db $fd
    rst $00
    rra
    scf
    ld d, d
    rst $38
    ld d, c
    rst $18
    ld e, e
    ld e, l
    cp l
    cp e
    ld c, a
    ld e, a
    ld c, a
    rst $38
    rst $08
    ld e, a
    jr jr_064_5a53

    ld de, $141e
    ccf
    db $10
    ccf
    jr jr_064_5aa3

    add hl, bc
    ld [hl], a
    ld b, $7b
    ld [bc], a

jr_064_5a29:
    rst $38
    dec de
    ld b, a
    dec bc
    ld d, a
    dec bc
    ld d, a
    dec bc
    rra
    ld a, $ff
    ld a, $3f
    ld a, b
    ld a, a
    ld b, $59
    rlca
    ld hl, sp-$3a
    add hl, sp
    nop
    rst $28
    jr jr_064_5a29

    ld a, b
    rst $00
    ld b, h
    rst $38
    ld h, h
    rst $38
    nop
    rst $38
    jr nc, @-$2f

    add hl, sp
    rst $00
    ld sp, $21cf
    rst $18
    adc b

jr_064_5a53:
    ld a, a
    nop
    rst $38
    db $e3
    rra
    rst $08
    ccf
    nop
    rst $38
    call nz, Call_000_083f
    rst $38
    ldh a, [rIE]
    cp $ff
    push hl
    ld a, [$efd7]
    ld a, $ff
    nop
    rst $38
    ccf
    rst $38
    nop
    rst $38
    rst $00
    ld hl, sp+$3f
    ret nz

    rra
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    db $fc
    rst $38
    ld h, e
    sbc h
    ld a, $f9
    ei
    rst $30
    ld sp, $f9cf
    rst $38
    ld sp, hl
    rst $38
    and $f9
    ccf
    ret nz

    sbc [hl]
    ld h, c
    and a
    ld a, b
    db $fd
    cp $fe
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    ldh [$1f], a
    ld a, b
    rst $38
    ld h, e
    rst $38
    rst $38
    rst $38
    adc [hl]
    rst $38
    and b

jr_064_5aa3:
    rst $38
    rrca
    ldh a, [$d7]
    jr z, @+$01

    nop
    ldh a, [rIF]
    rrca
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    ld a, [$f0ff]
    rst $38
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    sbc a
    ld l, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rrca
    ldh a, [rNR13]
    db $fc
    or c
    rst $38
    ld a, [c]
    db $fd
    rst $20
    ld hl, sp-$03
    ld a, [$fb74]
    inc a
    di
    ld sp, $60ce
    sbc a
    ld b, c
    cp [hl]
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    ld bc, $20ff
    rst $38
    add sp, -$01
    add d
    db $fd
    add [hl]
    ld sp, hl
    cp e
    call nz, $c4bb
    dec sp
    call nz, $e619
    sbc c
    and $18
    rst $20
    ld [$e8f7], sp
    rst $30
    inc c
    di
    inc e
    db $e3
    db $10
    rst $28
    and b
    ld a, a
    jr nz, @+$01

    db $10
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    adc h
    di
    inc c
    di
    adc [hl]
    ld [hl], c
    call c, Call_064_4023
    cp a
    db $10
    rst $38
    inc [hl]
    ei
    ld [hl], b
    rst $38
    ld [hl+], a
    db $fd
    ld [hl+], a
    db $fd
    ld b, d
    db $fd
    and b
    rst $18
    add b
    rst $38
    ret z

    rst $38
    ld b, c
    cp $61
    cp $e3
    ld a, h
    sbc a
    ld h, b
    sbc a
    ld h, b
    inc de
    db $ec
    inc de
    db $ec
    ld d, a
    add sp, $57
    add sp, $17
    add sp, -$49
    ld c, b
    scf
    ret z

    daa
    ret c

    dec b
    ld a, [$db24]
    inc h
    db $db
    ld h, h
    sbc e
    ld [hl+], a
    db $dd
    ld h, [hl]
    sbc c
    inc bc
    db $fc
    inc bc
    db $fc
    inc hl
    db $fc
    adc h
    ld [hl], e
    nop
    rst $18
    inc de
    db $fc
    add b
    ld a, a
    ld a, [$00ff]
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    ld sp, hl
    ld b, $e3
    db $fc
    ldh a, [$f8]
    ld hl, sp-$06
    ld h, b
    sbc [hl]
    adc $30
    ret nz

    rst $38
    rst $30
    rst $38
    ld a, [$f8ff]
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    add a
    ld a, b
    ld a, a
    add b
    rst $38
    nop
    rst $38

jr_064_5b91:
    nop
    nop

jr_064_5b93:
    rst $38
    nop
    rst $38
    ld b, b
    ld hl, sp-$1d
    ei
    set 7, e
    reti


    ld sp, hl
    ld hl, sp-$01
    rra
    ldh [$7f], a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    jr jr_064_5b93

    adc b
    rst $30
    ret z

    db $f4
    ret nc

    rst $38
    ldh a, [rIE]
    ld b, [hl]
    rst $38
    db $76
    rst $38
    cp [hl]
    rst $38
    db $fd
    cp $fc
    rst $38
    add l
    cp $ba
    ld b, l
    add d
    ld a, l
    ret nc

    ccf
    add b
    ld a, a
    jr c, jr_064_5b91

    ld [$c8f7], sp
    rst $38
    cp $ff
    cp h
    ld a, l
    db $fc
    ccf
    and b
    ld e, h
    ld hl, sp+$04
    di
    rrca
    di
    rrca
    pop bc
    dec a
    ld bc, $c7fd
    rst $38
    add $fe
    adc h
    push af
    ld b, $fe
    ld c, $fe
    ld d, $ee
    ld a, l
    add l
    dec e
    push hl
    call nz, Call_000_3f3e
    rst $38
    ccf
    rst $38
    dec a
    db $fd
    ld a, $fe
    rlca
    rst $38
    dec b
    rst $38
    adc a
    ld a, h
    add e
    ld a, h
    rst $00
    inc a
    call nz, $ca3f
    dec a
    ld c, d
    cp l
    ld c, d
    cp l
    ld c, d
    cp l
    ld d, e
    cp h
    ld [de], a
    db $fd
    inc hl
    call c, $fe01
    ld sp, $40ce
    cp a
    jp Jump_064_7b3c


    sbc h
    ld a, e
    sbc h
    ld a, e
    sbc h
    ld a, e
    sbc h
    ld h, e
    sbc h
    ld h, a
    sbc b
    ld a, h
    add e
    db $e3
    rra
    add hl, bc
    rst $38
    ld hl, $21df
    db $dd
    nop

jr_064_5c33:
    db $fc
    ld [$2bff], sp
    call c, Call_000_1fe8
    add sp, $1b
    ld [$ec19], a
    ld e, $07
    rst $38
    rrca
    rst $38
    ld [bc], a
    ld a, [$fd00]
    ldh [$1f], a
    ret


    scf
    and c
    ld e, a
    ld de, $01e7
    di
    dec b
    rst $30
    dec c
    rst $38
    dec b
    rst $30
    ld de, $02ef
    db $fd
    db $e3
    inc e
    ret nz

    ld [hl-], a
    ld b, b
    cp a
    jr nc, jr_064_5c33

    jr nz, @+$01

    nop
    rst $38
    db $fc
    db $fd
    db $76
    cp $ff
    rst $38
    rra
    rst $38
    ld hl, $86dd
    db $76
    pop bc
    add hl, sp
    inc c
    db $ec
    ld b, e
    ld e, e
    and $ee
    adc [hl]
    adc [hl]
    ld a, l
    db $fd
    ld h, b
    sbc a
    inc de
    rst $28
    db $fd
    cp $f7
    ld hl, sp-$21
    ldh [$fd], a
    ld [bc], a
    sbc $21
    db $db
    inc h
    ret nz

    ccf
    nop
    db $fc
    dec c
    dec c
    ldh [$e0], a
    rst $38
    rst $38
    ld hl, sp-$07
    ld [$3f0b], sp
    ret nz

    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    ldh a, [$0c]
    sub c
    ld l, l
    rlca
    rst $38
    rra
    sbc a
    dec a
    dec a
    rlca
    rst $30
    rlca
    rst $30
    rra
    rst $18
    and b
    ld h, a
    rst $08
    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_064_5cc8:
    jr c, jr_064_5cc8

    sbc e
    rst $38
    ret nz

    rst $38
    dec de
    rst $20
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$f7], a
    adc b
    call nc, $d0a8
    or b
    ret


    nop
    ld sp, hl
    nop
    and b
    inc h
    and l
    inc b
    ld a, h
    nop
    ld hl, sp-$60
    ret z

    ld d, b
    ld d, b
    and b
    and b
    ld [bc], a
    add c
    ld bc, $4382
    ld b, e
    ld a, c
    ld a, c
    ld [hl], b

jr_064_5cf5:
    ld [hl], b
    ld c, b
    ld b, a
    ld c, b
    ld b, a
    ld [$4807], sp
    ld b, a
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    add sp, -$19
    adc b
    add a
    adc b
    add a
    ret z

    rst $00
    jr c, jr_064_5d45

    ret z

    rst $00
    adc b

jr_064_5d11:
    add a
    adc a
    add b
    rst $38
    rst $38
    sub b
    sub b
    sbc b
    sbc b
    ld a, [$b4fa]
    or h
    pop af
    pop af
    add b
    ld [hl], b
    add b
    ld [hl], b
    nop
    pop af
    or b
    ld b, c
    jr nc, jr_064_5cf5

    or b
    cp c
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$f8]
    ld c, h
    ld d, d
    xor $f1
    ld l, $d1
    ld l, a
    sub b
    cpl
    ld d, b
    add a
    cp b
    ld b, a
    ld l, b
    rla
    ld a, b
    sbc a
    sub b
    rst $18

jr_064_5d45:
    ret nc

    rrca
    ldh a, [$7f]
    add b
    rra
    ld h, b
    add b
    rst $38
    adc d
    ld a, [c]
    add d
    ld a, [$eac2]
    jp $e8fb


    or $c8
    rst $10
    ld a, b
    add a
    add sp, $17
    ld bc, $05fe
    ld e, d
    nop
    rst $08
    nop
    sbc a
    jr nz, jr_064_5d11

    jr nz, jr_064_5dd9

    ld bc, $5e03
    ld e, a
    and a
    sbc b
    cp a
    ret nz

    ld [de], a
    ld a, [c]
    add e
    ei
    call nc, Call_000_10d4
    rla
    ld b, c
    ld e, l
    rra
    rst $18
    and a
    and a
    nop
    xor $b0
    rst $08
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
    nop
    rst $38
    rst $38
    rst $38
    jr nc, jr_064_5dc9

    pop bc
    sbc $0b
    ld [hl], h
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    dec b
    rra
    rst $38
    call z, $bbcc
    cp e
    rra
    rra
    db $fc
    db $fc
    push bc
    push bc
    ld a, [hl-]
    ld a, [hl-]
    rst $38
    rst $38
    db $fc
    db $fc
    ld hl, sp-$05
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
    rst $18
    sbc $2d
    ld l, $4b
    ld h, h
    rlca
    ld a, b
    add e

jr_064_5dc9:
    db $fc
    inc hl
    inc l
    inc bc
    sbc h
    rst $28
    db $ec
    add h
    add a
    ld b, b
    ld b, e
    add h

jr_064_5dd5:
    add a
    and $e4
    ld [hl-], a

jr_064_5dd9:
    jr nc, jr_064_5e3d

    ld [hl], l
    inc bc
    inc h
    jr nz, jr_064_5e16

    rrca
    ldh a, [$8f]
    ld [hl], b
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    db $db
    inc h
    ld sp, hl
    ld b, $7b
    add a
    add a
    add a
    add [hl]
    add [hl]
    rra
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
    nop
    rst $38
    rst $38
    nop
    ccf

jr_064_5e15:
    ccf

jr_064_5e16:
    sbc a

jr_064_5e17:
    sbc a
    sbc a
    sbc a
    daa
    daa
    inc h
    inc h
    ld a, [hl-]
    ld a, [hl-]
    nop
    ld a, d
    nop
    cp $80
    dec de
    and b
    jr c, jr_064_5dd5

    ld [hl], l
    jr nz, jr_064_5e15

    jr nz, jr_064_5e17

    jr nc, jr_064_5ea1

    db $10
    ld d, c
    nop
    dec h
    add hl, bc
    ld a, [hl+]
    inc bc
    db $fc
    cp $01
    sbc $21
    xor [hl]

jr_064_5e3d:
    ld [hl], c
    xor [hl]
    ld h, c
    or [hl]
    ld a, b
    sub [hl]
    ld e, c
    or [hl]
    ld a, c
    ld d, $d1
    add e
    ld l, h
    add e
    ld l, h
    add e
    ld [hl], h
    add d
    ld a, l
    add e
    ld a, h
    add e
    ld a, h
    add e
    ld a, h
    add e
    ld a, h
    add c
    ld a, [hl-]
    add l
    ld a, [hl]
    inc bc
    db $fc
    rrca
    ldh a, [$87]
    ld a, b
    ld h, b
    sub d
    ld e, h
    ld a, l
    add hl, sp
    ld a, $52
    ld e, d
    ldh [rIE], a
    ld a, c
    add [hl]
    db $fc
    inc bc
    ld sp, hl
    ld b, $24
    xor e
    dec c
    ld a, [c]
    ld c, a
    ld d, b
    ld a, $ff
    ccf
    ccf
    pop af
    push af
    ld [c], a
    db $ed
    add c
    rst $38
    ld b, l
    or l
    pop af
    dec c
    db $e3
    rra
    add e
    ld a, a
    di
    dec bc
    cp $01
    cp a
    ld b, b
    nop
    rst $38
    add b
    adc [hl]
    ld bc, $ffff
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    jr c, jr_064_5e9f

jr_064_5e9f:
    ret nz

    add e

jr_064_5ea1:
    add e
    ld l, d
    ld l, e
    ld a, a
    ld a, a
    cp $fe
    ld a, a
    ld a, a
    ret nz

    ret nz

    nop
    nop
    ld a, a
    ld a, a
    ldh a, [$f7]
    sbc a
    and b
    rst $38
    nop
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    db $fd
    ld [bc], a
    ld hl, sp+$07
    pop af
    ld a, [bc]
    ld a, a
    add b
    db $fc
    inc bc
    add sp, $16
    add c
    ld a, l
    ld hl, $70f3
    rst $38
    inc bc
    db $fc
    nop
    add sp, $01
    pop af
    ld [hl], e
    adc e
    ld [hl], e
    add e
    ld [hl], a
    add a
    db $f4
    inc b
    di
    inc c
    jp nz, $01dd

    inc bc
    add hl, bc
    dec de
    nop
    ld d, $00
    inc d
    nop
    inc b
    nop
    inc d
    ld h, b
    sub l
    ldh [$15], a
    push hl
    push hl
    ld h, c
    ld h, c
    pop hl
    pop hl
    nop
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

jr_064_5f01:
    ld bc, $01ff
    rst $38
    nop

jr_064_5f06:
    rst $38
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
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    dec hl
    dec hl
    rlca
    rlca
    nop
    inc bc
    nop
    rlca
    nop
    rrca
    nop
    cpl
    ld b, b
    and l
    jr nz, jr_064_5f01

    nop
    cp l
    add b
    adc l
    add sp, -$13
    ld [hl], b
    ld [hl], l
    ldh a, [$f7]
    ld [hl], h
    di

jr_064_5f38:
    ld [hl], $f9
    dec hl
    db $f4
    inc bc
    cp h
    ld b, e
    ld [hl], h
    dec bc
    inc l
    inc bc
    jr nz, jr_064_5f06

    ld [c], a
    rrca
    ld a, h
    rlca
    db $fc
    inc bc
    db $fc
    ld c, a
    ldh a, [$c3]
    db $fc
    ld c, a
    db $fc
    inc bc
    db $fc
    ld c, a
    db $fc
    ld c, a
    db $fc
    ld c, l
    cp $4d
    cp $41
    cp $03
    db $fc
    ldh a, [rIF]
    ld a, e
    rst $38
    cp $ff
    sbc h
    ld a, a
    ld l, a
    sub b
    ld a, $41
    cp $01
    ld a, a
    add b
    ccf
    ret nz

    rst $08
    ldh a, [$bf]
    ld b, b
    cp a
    ld b, b
    dec a
    jp nz, $f8e6

    ld a, [hl]
    ld a, [hl]
    jr c, jr_064_5fb8

    dec sp
    dec sp
    rst $10
    rst $10
    sbc a
    sbc a
    ldh [rIE], a
    ld [hl], c
    ld [hl], d
    db $fc
    db $fd
    ld l, $2e
    pop af
    dec c
    ld c, $f1
    rst $20
    add sp, -$74
    or e
    add b
    ld a, a
    db $fc
    ld [bc], a
    rst $20
    rla
    ld c, $8e
    jr jr_064_5f38

    sbc [hl]
    sbc [hl]
    rst $38
    rst $38
    db $dd
    db $dd
    ld c, c
    ld c, c
    ret nz

    ret nz

    jr nc, jr_064_5fdc

    db $ec
    db $ed
    rst $30
    ld hl, sp+$1f

jr_064_5fb1:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_064_5fb8:
    rst $38
    rst $38
    ei
    rst $38
    pop hl
    rst $38
    ld h, b
    rst $38
    add e
    ld [hl], h
    db $10
    push de
    ld a, c
    ld a, c
    jp hl


    jp hl


    add hl, sp
    ld a, [hl-]
    ld [de], a
    sub l
    inc c
    db $d3
    sub b
    ld l, a
    nop
    ei
    ret nz

    rst $38
    jr nc, @+$11

    ld a, c
    ld b, [hl]
    cp b
    add a
    jr c, jr_064_6023

jr_064_5fdc:
    ld [hl], b
    rrca

jr_064_5fde:
    ld a, a
    add b
    jr jr_064_6041

    nop
    ld bc, $8100
    nop
    add b
    nop
    ld bc, $0201
    ld bc, $c3c6
    inc a
    db $fd
    db $fd
    rst $18
    rst $18
    rst $00
    rst $00
    rrca
    rst $38
    dec c
    db $fd
    rrca
    rst $38
    dec c
    db $fd
    dec bc
    ei
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    dec bc
    ei
    dec c
    db $fd
    dec c
    db $fd
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    cp $0e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, h
    ld a, h
    nop
    db $fc
    nop

jr_064_6023:
    ld hl, sp+$20
    reti


    db $10
    jp hl


    db $10
    xor l
    jr jr_064_5fb1

    nop
    sbc l
    ld d, b
    ret


    ld b, b
    ld [hl], b
    ld [$0bbb], sp
    ld l, h
    inc bc
    ld a, h
    ld b, a
    cp b
    rst $38
    nop
    rst $18
    jr nz, jr_064_5fde

    ld h, b
    sbc a

jr_064_6041:
    ld h, b
    add a
    jr c, jr_064_6074

    or b
    daa
    cp b
    ld h, a
    ld hl, sp+$27
    ld hl, sp+$0f
    ldh a, [$08]
    rst $30
    ld a, [bc]
    rst $30
    add d
    ld a, a
    add e
    ld a, a
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret c

    daa
    add b
    ld a, a
    dec bc
    rst $38
    rlca
    rst $38
    inc c
    di
    jp hl


    ld e, $76
    adc a
    daa
    ld a, a
    cpl
    ccf
    ld bc, $bfc5
    ld e, a

jr_064_6074:
    ld a, [c]
    dec b
    add a
    ld a, b
    ld [bc], a
    db $fd
    nop
    ld a, h
    sbc c
    sbc c
    nop
    nop
    cp $fe
    ld b, b
    ld d, [hl]
    cp a
    cp a
    daa
    and a
    ld h, [hl]
    and $12
    jp nc, $f808

    inc bc
    dec sp
    ret c

    db $fc
    adc b
    call c, $8000
    ldh a, [$f0]
    ret nz

    rst $28
    dec e
    ld h, d
    nop
    add c
    rra
    sbc a
    jr nz, jr_064_60d1

    ld [hl], b
    ld [hl], e
    jr c, jr_064_60df

    nop
    ld b, $80
    xor a
    rra
    ldh [rIE], a
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
    rst $30
    rst $38
    rst $18
    rst $38
    inc e
    rst $38
    ldh [rIE], a
    adc $31
    rst $30
    ld [$18e7], sp
    ld c, c
    cp [hl]
    nop
    rst $38
    ld b, e
    ld a, a
    adc [hl]
    cp a
    xor e
    cp h
    add a

jr_064_60d1:
    ld a, b
    add hl, bc
    or $e1
    cp $e1
    cp $f3
    db $fc
    ld h, e
    ld a, h
    ret


    rst $30
    ld e, a

jr_064_60df:
    ld h, a
    rra
    daa
    and a
    cp a
    rst $28
    rst $38
    rst $28
    rst $38
    ld a, a
    ld a, a
    scf
    cp a
    or [hl]
    ld a, l
    or b
    ld a, a
    xor h
    ld [hl], e
    db $fd
    inc bc
    push hl
    dec de
    call nz, $c72b
    inc hl
    rst $00
    dec hl
    push bc
    inc hl
    add l
    ld b, e
    ld b, $c1
    rlca
    ret


    dec b
    db $eb
    dec b
    db $eb
    dec h
    ei
    dec h
    ei
    inc c
    di
    ld c, h
    di
    ld c, $f3
    ld a, [de]
    rst $30
    ld a, [hl-]
    rst $30
    ld a, [bc]
    rst $30
    sbc d
    ld h, a
    dec a
    ld [c], a
    sbc h
    ld h, e
    cp a
    ld b, e
    cp [hl]
    ld b, e
    sbc [hl]
    ld h, e
    cp l
    ld b, e
    cp h
    ld b, e
    db $fc
    inc bc
    cp $01
    ld [hl+], a
    db $fd
    ld [hl], c
    cp $20
    rst $38
    ld [$90ff], sp
    ld a, a
    pop de
    ccf
    db $fd
    inc bc
    cp l
    ld b, e
    and l
    ld e, e
    and a
    ld e, b
    add d
    ld a, l
    call nz, $847f
    ld a, a
    add b

jr_064_6147:
    ld a, a
    or h
    ld c, e
    pop af
    rrca
    db $e4
    rra
    ld b, b
    cp a
    nop
    rst $38
    dec b
    cp $08
    rst $38
    ld c, b
    cp a
    ld c, b
    cp a
    ld [hl], b
    adc a
    ld a, h
    add e
    jr jr_064_6147

    ld [hl], b
    adc a
    nop
    rst $38
    ldh [rIE], a
    ld l, a
    ldh a, [$80]
    ld a, a
    add hl, de
    and $f0
    rst $38
    cp $ff
    ccf
    ld a, a
    or e
    rst $38
    inc l
    rst $38
    adc a
    ld l, a
    inc bc
    ei
    inc bc
    cp e
    add d
    jp nz, Jump_000_3d31

    nop
    ret z

    ld b, $e6
    add $c6
    ld sp, hl
    ld sp, hl
    cp a
    cp a
    cp h
    cp l
    ld [hl], $36
    ret c

    ret c

    nop
    ld c, b
    nop
    ret nz

    nop
    db $fc
    nop
    ld a, $1c
    db $e3
    nop
    rst $38
    nop
    rst $38
    add b
    add d
    ld [bc], a
    db $fd
    dec bc
    db $f4
    rrca
    sub b
    ld c, a
    ld d, b
    ccf
    ret nz

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
    ld [hl+], a
    rst $38
    and b
    ld e, a
    ld [hl], $ff
    ld [hl], c
    cp $32
    call $3bc5
    dec de
    rst $20
    ld a, [hl-]
    rst $00
    ld sp, hl
    ld c, $98
    ld a, a
    ld a, c
    cp $79
    cp $d8
    ld a, a
    sbc a
    ld a, a
    adc a
    ld a, a
    rrca
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    sub $ff
    rst $18
    ldh [$df], a
    ldh [$9f], a
    ldh [$df], a
    and b
    ld c, a
    or b
    sbc a
    ld [hl], b
    rst $18
    jr nc, jr_064_6205

    ei
    rla
    ld hl, sp-$69
    ld hl, sp+$3d
    ld a, [$fa3d]
    rst $38
    ld hl, sp-$1c
    ei
    ld a, a
    add b
    sbc d
    push hl
    rst $00
    ei
    rst $00

jr_064_6205:
    ei
    set 7, a
    jp hl


    rst $38
    pop hl
    rst $38
    ld a, [c]
    db $fd
    ld a, [$fafd]
    db $fd
    ld l, [hl]
    pop af
    cp [hl]
    ld b, c
    cp $01
    rst $30
    ld [$3fc0], sp
    nop
    rst $38
    add c
    cp $a3
    db $fc
    adc c
    or $c8
    or a
    ld c, h
    or e
    ld c, l
    or e
    ld [$00f7], sp
    rst $38
    ld b, d
    cp a
    inc bc
    cp $04
    rst $38
    add h
    rst $38
    ld [bc], a
    db $fd
    ld c, b
    cp a
    ld c, b
    cp a
    cp $01
    rst $38
    nop
    ld a, l
    add d
    ld sp, hl
    ld b, $f5
    ld c, $f4
    rrca
    db $f4
    rrca
    ld [hl], h
    adc a
    ld h, [hl]
    sbc a
    ld h, h
    sbc a
    ld h, b
    sbc a
    db $e4
    rra

jr_064_6254:
    ldh [$1f], a
    ldh [$1f], a
    pop hl
    ld e, $70
    adc a
    add sp, $17
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [hl]
    add c
    rst $00
    jr c, jr_064_6254

    ld e, $3f
    ret nz

    ld c, $f1
    ld a, [c]
    db $fd
    ld h, e
    db $fc
    dec c
    cp $06
    rst $38
    ccf
    rst $38
    db $dd
    rst $38
    ld h, d
    ld a, a
    ld l, [hl]
    sbc a
    or a
    adc a
    rlca
    rst $38
    rra
    ccf
    pop bc
    db $dd
    adc c
    adc e
    dec c
    di
    jr jr_064_6294

    dec b
    dec de
    ldh a, [$f6]
    ldh a, [$f3]

jr_064_6294:
    ld l, b
    ld l, e
    inc b
    dec b
    ld c, $0e
    call nz, Call_064_40c4
    ld c, e
    add b
    xor a
    ld sp, hl
    dec b
    rst $28
    rra
    call c, $803c
    ld h, e
    nop
    add [hl]
    nop
    jr nz, @+$12

    db $10
    ld a, e
    ld a, e
    ld a, $be
    add b
    ld a, [hl]
    cp c
    ld b, [hl]
    ldh [$1f], a
    ld hl, sp+$06
    db $fc
    inc bc
    cp $01
    rlca
    ld hl, sp+$00
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
    jr jr_064_62f3

    ld a, [de]
    dec de

Call_064_62dc:
    inc e
    dec e
    ld e, $1f
    jr nz, jr_064_6303

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_064_6313

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_064_6323

    ld [hl-], a

jr_064_62f3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_064_6333

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_064_6303:
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

jr_064_6313:
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

jr_064_6323:
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

jr_064_6333:
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

Call_064_633e:
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
    jr jr_064_63f3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_064_6403

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_064_6413

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_064_6423

    ld [hl-], a

jr_064_63f3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_064_6433

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_064_6403:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_064_6413:
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_064_6423:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_064_6433:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld bc, $0202
    ld bc, $0201
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld bc, $0202
    ld [bc], a
    ld bc, $0201
    ld bc, $0202
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
    ld bc, $0102
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld bc, $0502
    ld bc, $0202
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld bc, $0202
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    ld bc, $0101
    ld bc, $0101
    ld bc, $0102
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0102
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld bc, $0201
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
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    rst $30
    adc a
    rst $30
    adc a
    ld [hl], a
    adc a
    ld h, b
    sbc a
    ld h, h
    sbc e
    and a
    ret c

    rst $38
    ld hl, sp-$07
    cp $ff
    ld hl, sp-$01
    ld hl, sp-$02
    ld sp, hl
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$09
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [$f5]
    ld a, [$f857]
    ld e, a
    ld hl, sp-$61
    ld a, b
    sbc a
    ld a, b
    db $db
    inc a
    ld e, a
    cp b
    ld l, a
    sbc b
    rst $30
    adc b
    rst $30
    adc b
    xor e
    call c, $fc9b
    ld a, [$f9fd]
    rst $38
    ld sp, hl
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, [hl]
    db $fd
    ld a, d
    db $fd
    ld a, d
    db $fd
    ld a, [hl]
    db $fd
    ld a, l
    cp $fc
    ld a, a
    cp [hl]
    ld a, a
    cp [hl]
    ld a, a
    cp [hl]
    ld a, a
    cp $3f
    sbc $1f
    call c, $dc1f
    ccf
    rst $08
    inc l
    ld e, a
    cp h
    rst $18
    inc a
    rrc h
    sra h
    jp z, $ca2d

    dec l
    ld c, a
    xor h
    ld c, a
    xor h
    ld e, l
    cp [hl]
    ld c, l
    cp [hl]
    ld a, [hl+]
    rst $28
    ld a, $ff
    jr nz, @-$3f

    dec l
    cp a
    adc l
    ld a, a
    jp hl


    ld a, a
    db $ed
    ld a, a
    xor $7f
    and $7f
    ld b, d
    rst $18
    ld b, e
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    ld b, b
    cp a
    ret nz

    cp a
    add d
    rst $38
    add h
    rst $38
    sbc [hl]
    rst $38
    ld e, $ff
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    add b
    ld a, a
    add h
    ld a, a
    ld [bc], a
    rst $38
    add a
    ld a, a
    rlca
    rst $38
    ld b, a
    xor a
    ld b, a
    cp a
    rst $08
    cp a
    adc a
    rst $38
    xor a
    sbc a
    rst $28
    rst $18
    rst $08
    rst $38
    rst $08
    rst $38
    rst $10
    rst $08
    rst $20

Jump_064_65fd:
    rst $38
    rst $20
    rst $38
    db $e3
    rst $38
    ld [c], a
    rst $38
    ret nc

    rst $28
    ld a, [$d6e7]
    rst $28
    call z, $d8d7
    rst $20
    db $db
    rst $20
    cp a
    rst $00
    ld a, d
    add a
    ld hl, sp+$07
    ld a, [$f807]
    rlca
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    cp a
    ld b, b
    call c, Call_000_0e23
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    sbc a
    ld h, b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
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
    sbc e
    ld h, a
    cp e
    ld b, a
    dec sp
    rst $00
    rst $38
    rlca
    rst $38
    rlca
    cp $07
    db $fc
    inc bc
    db $fc
    inc bc
    sub h
    ld l, e
    xor b
    ld e, a
    inc c
    rst $38
    rst $18
    ccf
    rst $38
    ccf
    rst $18
    ccf
    db $d3
    ccf
    and $19
    call nz, $d73b
    add hl, sp
    srl l
    db $eb
    dec a
    jp nz, $f23d

    dec e
    ld [c], a
    dec e
    ld a, [c]
    dec c
    ld a, b
    add a
    db $f4
    rrca
    ldh [$1f], a
    ldh [$1f], a
    ld [c], a
    dec e
    ld [c], a
    dec e
    cp $01
    rst $38
    nop
    cp a
    ret nz

    rst $38
    ldh a, [$7f]
    ld hl, sp-$04
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
    ld a, a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ld e, $ff
    xor [hl]
    ld e, a
    cp $0f
    or $0f
    db $db
    inc h
    ld c, a
    or b
    and $99
    ld h, [hl]
    sbc c
    daa
    ret c

    inc bc
    db $fc
    sbc e
    ld a, h
    ld sp, hl
    ld e, $bc
    ld e, a
    adc $7f
    xor [hl]
    ld a, a
    and [hl]
    rst $38
    or [hl]
    rst $38
    or h
    ei
    cp b
    rst $38
    cp [hl]
    rst $38
    cp [hl]
    rst $38
    rst $18
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $18
    rst $08
    rst $38
    ld e, b
    rst $28
    ld [hl], a
    add sp, $7b
    db $e4
    inc sp
    db $ec
    dec h
    cp $0c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc l
    rst $18
    dec l
    sbc $0e
    rst $38
    rrca
    cp $0e
    rst $38
    sbc a
    rst $38
    adc a
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $30
    rst $28
    rst $10
    rst $28
    rst $18
    rst $20
    set 6, a
    set 6, a
    call $3ef3
    pop af
    rrca
    ldh a, [$6f]
    ldh a, [rTAC]
    ld hl, sp+$16
    ld sp, hl
    dec d
    ei
    add hl, de
    rst $38
    ld d, b
    cp a
    rra
    ldh [$6f], a
    sub b
    rst $38
    nop
    ld a, a
    add b
    ldh [$1f], a
    nop
    rst $38
    ld b, h
    rst $38
    ld d, b
    rst $38
    jr nz, @+$01

    sbc [hl]
    ld h, c
    rlca
    ld hl, sp+$03
    db $fc
    inc hl
    db $fc
    add b
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
    or a
    db $fc
    ld h, e
    db $fc
    ld c, e
    db $fc
    dec bc
    db $fc
    dec bc
    db $fc
    jr @+$01

    sbc d
    db $fd
    dec de
    db $fd
    rla
    ld sp, hl
    ld b, h
    cp e
    ld b, b
    cp a
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ld bc, $00ff
    rst $38
    adc b
    ld [hl], a
    ld b, $f9
    jp nz, $83fd

    db $fc
    push hl
    jp c, $fe91

    pop de
    cp $e0
    rst $38
    db $e4
    rst $38
    push hl
    cp $c0
    rst $38
    ret nz

    rst $38
    ld [hl], e
    db $fc
    ld [c], a
    db $fd
    ld a, [c]
    db $fd
    ldh a, [rIE]
    db $f4
    ei
    ld [hl], b
    rst $38
    ld [hl], h
    ei
    dec [hl]
    ei
    dec [hl]
    ei
    ld sp, $33ff
    db $fd
    cp d
    db $fd
    cp b
    rst $38
    cp c
    cp $bd
    cp $be
    rst $38
    cp [hl]
    rst $38
    sbc [hl]
    rst $38
    ld d, a
    cp a
    rst $30
    rrca
    rst $30
    rrca
    ld a, e
    add a
    ld a, c
    add a
    ld a, c
    add a
    ld a, l
    add e
    ld a, [hl]
    add c
    ld a, a
    add b
    ccf
    ret nz

    ccf
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    or a
    ret z

    rst $30
    ret z

    ei
    call nz, $e0df
    sbc a
    ldh [$0b], a
    db $f4
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
    ld d, c
    xor [hl]
    add hl, hl
    sbc $25
    sbc $25
    sbc $05
    cp $05
    cp $01
    cp $81
    cp $01
    cp $89
    or $c9
    or $cb
    db $f4
    rst $00
    ld hl, sp-$31
    ldh a, [$eb]
    db $f4
    add sp, -$09
    db $eb
    db $f4
    ret c

    rst $20
    ldh a, [$cf]
    or d
    call $9de2
    ld b, b
    cp a
    ld h, c
    sbc [hl]
    ld a, [c]
    dec c
    db $fd
    ld [bc], a
    add e
    ld a, h
    ld b, b
    cp a
    adc [hl]
    rst $38
    cp $ff
    ld e, $e1
    ld hl, sp+$07
    ld hl, sp+$07
    ret nz

    ccf
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    ld e, b
    rst $38
    scf
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    add $3f
    inc c
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $e4
    rst $38
    push af
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, e
    db $fc
    db $76
    ld sp, hl
    ld [hl], b
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    db $e4
    rst $38
    pop hl
    cp $48
    rst $38
    ld b, l
    rst $38
    daa
    rst $18
    inc hl
    rst $18
    cpl
    rst $18
    ccf
    rst $18
    rra
    rst $38
    sbc a
    rst $38
    ld l, a
    sbc a
    ld l, a
    sbc a
    cp $07
    ld hl, sp+$07
    cp $01
    cp $01
    sbc $21
    adc $31
    sbc h
    db $e3
    adc h
    di
    adc a
    ldh a, [$97]
    ld hl, sp+$55
    cp $06
    rst $38
    inc c
    rst $38
    ld c, $ff
    ld b, $ff
    ld b, $ff
    inc l
    rst $18
    ld h, $df
    ld a, [hl+]
    rst $10
    xor b
    rst $10
    adc b
    rst $30
    adc [hl]
    rst $30
    adc [hl]
    rst $30
    adc e
    or $d7
    ld a, [$f857]
    ld l, d
    db $fd
    ld l, h
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    sub b
    rst $38
    ret nc

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    reti


    rst $38
    call nz, $05fb
    ei
    rst $18
    ld hl, $01ff
    cp $01
    rst $38
    nop
    sbc $21
    sbc $21
    sbc a
    ld h, b
    sbc a
    ld h, b
    cp a
    ld h, b
    xor [hl]
    ld [hl], c
    and [hl]
    ld a, c
    xor h
    ld [hl], e
    xor h
    ld [hl], e
    cp [hl]
    ld [hl], e
    or l
    ld a, e
    or [hl]
    ld a, e
    sub h
    ld a, e
    sbc [hl]
    ld [hl], c
    ld e, $f1
    rrca
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$06
    ld sp, hl
    ld [bc], a
    db $fd
    inc bc
    db $fc
    add e
    ld a, h
    add e
    rst $38
    add a
    rst $38
    add a
    rst $38
    add e
    rst $38
    adc b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ldh [$7f], a
    ret nz

    ld a, a
    ld b, b
    rst $38
    jp nz, $837d

    ld a, h
    adc c
    db $76
    add c
    ld a, [hl]
    ld [$00ff], sp
    rst $38
    ld hl, sp+$07
    ld bc, $18ff
    rst $38
    dec de
    rst $38
    inc bc
    rst $38
    cpl
    rst $18
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
    rra
    rst $38
    ld h, c
    cp $20
    rst $18
    inc a
    jp $e39c


    add $d9
    db $e3
    db $ec
    ld sp, hl
    ld a, [$d9d8]
    rst $08
    rst $08
    dec b
    push hl
    ld b, b
    cp e
    nop
    rst $38
    sub b
    rst $38
    or c
    rst $38
    cp $ff
    cp $ff
    adc d
    ld a, a
    ld [de], a
    rst $38
    ld d, [hl]
    rst $38
    add $ff
    ld b, [hl]
    rst $38
    set 7, a
    and e
    rst $18
    or c
    rst $08
    add d
    db $fd
    add d
    db $fd
    xor e
    db $fc
    sbc c
    cp $f9
    cp $fd
    ld a, [$fef1]
    ld [hl], c
    cp $70
    rst $38
    ldh a, [rIE]
    push af
    rst $38
    pop af
    rst $38
    ld sp, $bbff
    ld a, a
    or d
    ld a, a
    rst $00
    ld a, [hl-]
    ld sp, hl
    ld b, $f9
    ld b, $f8
    rlca
    jr nc, @-$2f

    ld [hl-], a
    call $cf30
    cp c
    add $bd
    jp nz, $cab5

    add b
    rst $38
    sub b

jr_064_6985:
    rst $28
    sub c
    xor $0e
    di
    ld [hl+], a
    rst $18
    jr nc, @-$2f

    ld hl, $21de
    sbc $21
    sbc $01
    cp $00

jr_064_6997:
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ld c, b
    cp a
    ld b, b
    cp a
    inc b
    ei
    jr nz, jr_064_6985

    and b
    rst $18
    and b
    rst $18
    and c
    sbc $a9
    sub $bf
    ret nz

    sbc a
    ldh [$3f], a
    ret nz

    adc a
    ld [hl], b
    rra
    ldh a, [rNR22]
    ld hl, sp+$17
    ld hl, sp+$07
    ld hl, sp+$27
    ld hl, sp+$07
    ld hl, sp+$0b
    db $f4
    dec bc
    db $f4
    dec de
    db $f4
    add hl, bc
    or $8b
    db $f4
    dec bc
    db $f4
    jr c, jr_064_6997

    ld l, b
    rst $38
    jp hl


    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    dec c
    rst $38
    dec e
    rst $38
    dec bc
    rst $38
    ld [$0aff], sp
    rst $38
    adc h
    rst $38
    adc b
    rst $38
    adc l
    rst $38
    sbc l
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    rra
    ldh [rNR11], a

jr_064_69f3:
    xor $bf
    ld b, b
    ld a, a
    add b
    sbc a
    ld h, b
    add b
    ld a, a
    nop
    rst $38
    add b
    rst $38
    ld e, a
    rst $38
    ld c, $ff
    ld c, $ff
    cp d
    rst $38
    rst $38
    rst $38
    adc h
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    nop

jr_064_6a11:
    rst $38
    jr nz, jr_064_69f3

    dec bc
    rst $38
    ld a, $ff
    inc bc
    db $fc
    rrca
    ldh a, [$03]
    db $fc
    ldh a, [rIF]
    ldh [$1f], a
    ld a, [bc]
    cp $07
    rst $38
    inc bc
    db $db
    inc c
    rst $38
    nop
    rst $38
    add b

jr_064_6a2d:
    ld a, a
    ld a, a
    add b
    ccf
    ld b, b
    adc a
    or b
    rra
    ld h, b
    nop
    rst $38
    rra
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    add sp, -$69
    ret c

    and a
    jr jr_064_6a2d

    jr c, @-$37

    jr c, jr_064_6a11

    inc a
    jp $83fc


    cp $81
    ld a, a
    add b
    ld a, a
    add b
    db $f4
    dec bc
    db $f4
    dec bc
    ld d, b
    xor a
    and b
    ld e, a
    add d
    ld a, a
    adc [hl]
    ld [hl], a
    add b
    ld a, a
    ld a, [bc]
    rst $30
    adc b
    rst $30
    ld [$08f7], sp
    rst $30
    add b
    ld a, a
    sub b
    ld l, a
    sub h
    ld l, e
    rra
    rst $38
    rla
    rst $38
    dec d
    rst $38
    ld de, $30ff
    rst $38
    jr nc, @+$01

    jr nz, @+$01

    ld h, b
    rst $38
    ret nz

    rst $38
    call nz, Call_064_48ff
    rst $38
    ret z

    rst $38
    add sp, -$01
    add sp, -$01
    sbc h
    rst $38
    ret nc

    rst $38
    push bc
    ei
    ret


    rst $38
    pop hl
    rst $18
    ret nc

    rst $38
    ret c

    rst $38
    add sp, -$01
    ld hl, sp-$01
    jr @+$01

    jr @+$01

    inc c
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    ld b, c
    cp [hl]
    and b
    rst $38
    ld a, [c]
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    adc e
    rst $38
    and e
    rst $38
    add e
    rst $38
    add e
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    pop af
    rst $38
    db $eb
    rst $38
    db $eb
    rst $38
    rst $28
    rst $38
    or h
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    and b
    rst $38
    and b
    rst $38
    and d
    rst $38
    and d
    rst $38
    cp e
    rst $38
    ld sp, hl
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    ld [$e2f7], sp
    dec e
    pop af
    ld c, $f7
    ld [$ff04], sp
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], a
    ld hl, sp+$01
    cp $74
    adc a
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    db $10
    rst $38
    cp b
    rst $38
    rst $38

jr_064_6b15:
    rst $38
    inc c
    di
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld b, a
    cp b
    ld [bc], a
    db $fd
    jr nz, jr_064_6b4b

    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    and e
    rrca
    rrca
    nop
    add b
    add c
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld b, b
    rst $38
    jr nz, @-$1f

    jr nc, jr_064_6b15

    nop
    rst $38
    nop

jr_064_6b49:
    rst $38
    ld b, h

jr_064_6b4b:
    ei
    ld b, d
    rst $38
    jp $47ff


    rst $38
    add $ff
    add $ff
    ld c, [hl]
    rst $38
    ld c, [hl]
    rst $38
    add l
    cp $0e
    rst $38
    rrca
    rst $38
    ld c, a
    rst $38
    ld b, a
    rst $38
    ld [hl], a
    rst $08
    scf
    rst $08
    scf
    rst $08
    inc sp
    rst $08
    ld sp, $33cf
    rst $08
    and c
    ld e, a
    jr nz, jr_064_6b4b

    jr nz, jr_064_6b49

    add hl, hl
    jp z, $fe1d

    ld l, c
    sbc d
    dec l
    sbc $46
    push hl
    ld b, e
    cp [hl]
    ld b, l
    cp [hl]
    ld sp, $73ce
    adc h
    ld a, l
    add d
    ld a, l
    add d
    ld a, h
    add e
    cp h
    jp $caf5


    db $ed
    ld a, [c]
    xor b
    rst $30
    inc hl
    db $fc
    ret nz

    ccf
    ld b, b
    cp a
    ld [hl], b
    adc a
    ld d, b
    xor a
    sub [hl]
    jp hl


    add [hl]
    ld sp, hl
    ld d, l
    xor d
    ld d, c
    xor [hl]
    sub h
    ld l, a
    db $dd
    ld [hl+], a
    dec e
    ld [c], a
    rra
    ldh [$8f], a
    ld [hl], b
    rrca
    ldh a, [$03]
    db $fc
    call c, $cdff
    rst $38
    reti


    rst $28
    jp nc, $4aed

    db $fd
    ld c, d
    db $fd
    add d
    db $fd
    inc h
    rst $18
    inc b
    rst $38
    ld h, b
    rst $38
    ld h, a
    ld hl, sp+$03
    db $fc
    add e
    db $fc
    add e
    db $fc
    jr nz, @+$01

    ld [bc], a
    rst $38
    ld [$0eff], sp
    rst $38
    rra
    rst $38
    or a
    rst $38
    and h
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    rst $20
    rst $38
    ld [hl], c
    rst $38
    ld c, $ff
    nop
    rst $38
    ldh [rIE], a
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
    nop
    rst $38
    nop
    rst $38
    ld e, a
    rst $38
    add b
    rst $38
    rst $38
    nop
    cp a
    ld b, b
    ld h, b
    sbc a
    add b
    rst $38
    ld b, e
    db $fc
    nop
    rst $38
    nop
    rst $38
    rla
    ld hl, sp+$33
    db $fc
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    sub b
    ld l, a
    add d
    ld a, l
    ldh a, [rIF]
    inc b
    ld e, e
    rst $38
    rst $38
    ld sp, hl
    ld sp, hl
    rst $38
    rst $38
    ld bc, $0006
    rst $38
    ret nz

    ccf
    add e
    ld a, e
    ld bc, $8091
    ld a, [hl]
    ldh [rNR24], a
    or $0e
    ei
    rlca
    cp $01
    ld c, $ff
    rlca
    rst $38
    scf
    rst $38
    inc hl
    rst $38
    dec e
    rst $38
    dec a
    rst $38
    ldh [rIE], a
    ld h, b
    rst $38
    inc e
    db $e3
    ld c, $f1
    or a
    ld c, b
    ld a, $c1
    jr nz, @-$1f

    pop bc
    cp [hl]
    ld e, b
    and a
    ld e, a
    and b
    ccf
    ldh [$7f], a
    ldh [$2f], a
    ldh a, [$f0]
    rst $38
    ldh a, [rIE]
    call nc, $cafb
    call $a8ab
    ld a, [c]
    push af
    ld h, b
    ld h, a
    ld a, d
    ld a, l
    ld e, e
    ld e, h
    ld [$808f], sp
    dec b
    nop
    add a
    nop
    add a
    cp [hl]
    ld b, c
    rst $18
    ld hl, $23dd
    call $c333
    ccf
    add e
    ld a, a
    inc hl
    rst $18
    ld h, c
    sbc [hl]
    nop
    ld e, a
    nop
    ld [hl], a
    ld [bc], a
    dec [hl]
    ld [bc], a
    dec a
    nop
    rra
    ld [bc], a
    ccf
    db $10
    cpl
    nop
    rst $38
    adc b
    ld [hl], a
    nop
    rst $28
    ld [bc], a
    rst $08
    nop
    ld c, a
    dec bc
    ld d, h
    inc bc
    call z, $4c23
    ld hl, $c04e
    ccf
    rst $08
    ccf
    call nz, $c33f
    ccf
    ld h, e
    rst $38
    and b
    rst $38
    add e
    rst $38
    add a
    rst $38
    and l
    rst $38
    ld h, b
    cp a
    ld bc, $0fff
    rst $38
    rrca
    rst $38
    ld c, $ff
    rrca
    rst $38
    ld b, $ff
    or b
    rst $08
    add hl, de
    ld h, a
    ld bc, $18f9
    ret c

    nop
    or $80
    ld [hl], e
    add b
    ld h, b
    nop
    ld hl, sp+$04
    ei
    rlca
    rst $38
    ld bc, $bdff
    rst $38
    add a
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$03
    db $fc
    rlca
    ld hl, sp-$41
    ld b, b
    nop
    rst $38
    rlca
    ld hl, sp-$11
    ldh a, [$be]
    ld b, c
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    sbc a
    ldh [$fd], a
    ld [bc], a
    rst $38
    nop
    inc e
    db $e3
    ld b, $ff
    adc l
    ld a, a
    nop
    rst $38
    add c
    ld a, a
    ld de, $ffff
    rst $38
    ld a, a
    rst $38
    ld a, $fe
    ld [hl], b
    adc a
    rra
    ldh [$0d], a
    ld a, [c]
    ldh a, [$f1]
    ld bc, $0201
    ld [hl+], a
    ldh a, [rIF]
    ld bc, $70f3
    ld [hl], b
    ld hl, sp-$08
    or $f6
    ld a, [hl-]
    ld a, [hl-]
    rra
    sbc a
    dec de
    dec de
    rst $38
    rst $38
    db $f4
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    cp $ff
    ld a, [bc]
    rst $38
    rlca
    ld hl, sp+$13
    db $fc
    dec de
    db $fc
    inc e
    rst $38
    sub d
    ld l, l
    cp h
    ld b, e
    inc a
    jp $03fc


    ei
    rlca
    sbc e
    ld h, a
    sbc b
    and $f8
    rlca
    db $10
    rst $28
    sub c
    ld l, [hl]
    ldh a, [rIF]
    pop af
    inc c
    ei
    rst $38
    cp d
    ld a, l
    pop af
    rst $38
    add e
    rst $38
    ld h, d
    rst $38
    ld a, [hl]
    rst $38
    sbc [hl]
    rst $38
    pop bc
    rst $38
    nop
    rst $38
    and [hl]
    ld e, c
    rst $38
    nop
    ld b, b
    cp a
    ret c

    ccf
    add sp, $1f
    ld [c], a

jr_064_6d8d:
    dec e
    ld [$06ff], sp
    rst $38
    ld a, [de]
    rst $20
    ld a, h
    add e
    rst $38
    nop
    ld e, $e1
    ld e, [hl]
    pop hl
    ld e, $e1
    db $fc
    inc bc
    and [hl]
    ld e, c
    ld a, [bc]
    db $fd
    ld a, [bc]
    db $fd
    ld [hl+], a
    db $dd
    ld [c], a
    dec e
    db $e4
    dec de
    jr nz, jr_064_6d8d

    ld [$88f7], sp
    rst $38
    db $fc
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    inc a
    rst $38
    ld a, b
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    cp [hl]
    rst $38
    inc a
    rst $38
    ld e, $ff
    ld a, [de]
    rst $38
    inc a
    rst $38
    inc e
    db $e3
    nop
    ld e, $e0
    rst $28
    ld [$2677], sp
    sbc $00
    adc h
    db $10
    db $ec
    ccf
    ld b, b
    add hl, sp
    rst $38
    ldh a, [rIE]
    dec a
    rst $38
    jp $80ff


    rst $38
    inc e
    rst $38
    ldh a, [rIE]
    add b
    rst $38
    rst $00

jr_064_6df1:
    jr c, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    stop
    rst $38
    ret nz

    ccf
    ld a, [c]
    rrca
    ld [de], a
    db $fd
    add l
    ld a, [hl]
    add c
    ld a, [hl]
    nop
    rst $38
    cp $01
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
    ldh a, [$a7]
    ld hl, sp+$60
    rst $38
    rst $38
    rst $38
    rst $30
    rst $30
    ldh [rIE], a
    jr nc, jr_064_6df1

    ldh [$1f], a
    ld b, b
    cp h
    ld e, $de
    ld b, b
    ld b, b
    ld c, a
    ld c, a
    nop
    ret nz

    ld e, $1e
    nop
    nop
    ld bc, $2d81
    dec l
    inc bc
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    pop hl
    rra
    ldh [$1f], a
    ld [bc], a
    rst $38
    nop
    rst $38
    ld b, c
    cp [hl]
    ret nz

    ccf
    nop
    rst $38
    ld a, h
    add e
    rst $38
    nop

jr_064_6e52:
    rst $38

jr_064_6e53:
    nop
    ccf
    ret nz

    inc a
    jp $d12e


    ld c, $f1
    ld l, $f1
    nop
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    nop
    rrca
    nop
    jr nz, jr_064_6e69

jr_064_6e69:
    ldh [$f0], a
    nop
    jr jr_064_6e52

    adc b
    ld [hl], h
    add b
    ld a, h
    ld [$d8f4], sp
    dec h
    nop
    rst $38
    add b
    ld a, a
    ld [$06f7], sp
    ei
    or $0f
    db $10
    rst $28
    jr nc, jr_064_6e53

    nop
    rst $38
    add a
    ld a, a
    rrca
    rst $38
    inc bc
    rst $38
    add [hl]

jr_064_6e8d:
    rst $38
    ret nz

    rst $38
    ld b, e
    rst $38
    inc bc
    rst $38
    dec bc
    rst $30
    ld a, c
    add a
    cp b
    rst $00
    ei
    rst $00
    rst $18
    rst $20
    ld e, d
    rst $20
    rra
    ldh [rNR23], a
    rst $20
    jr jr_064_6e8d

    ld a, [bc]
    rst $30
    ld a, [bc]
    rst $30
    sbc b
    ld h, a
    ld b, b
    cp a
    nop
    rst $38
    ld [$ebff], sp
    inc d
    rst $38
    nop
    sub b
    ld l, a
    nop
    rst $38
    inc bc
    db $fc
    ld bc, $fcfe
    inc bc
    pop bc
    rst $38
    pop bc
    rst $38
    ret nz

    rst $38
    rst $28
    rst $38
    rst $08

jr_064_6ec9:
    rst $38
    db $e3
    rst $38
    add e
    rst $38
    add d
    rst $38
    and $19
    rlca
    ld hl, sp+$04
    ei
    ld [bc], a
    db $dd
    jr nz, jr_064_6ec9

    ld b, c
    ld e, a
    nop
    ld b, h
    add c
    ld a, [hl]
    db $10
    rst $28
    ld [hl], c
    adc a
    ld d, b
    rst $28
    or $ff
    scf
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, $f7ff
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    dec c
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld c, b
    rst $38
    sbc [hl]
    ld a, a
    ld [bc], a
    rst $38
    jr nz, @+$01

    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    or $09
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ld a, h
    add e
    rst $18
    ldh [$f3], a
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$00
    rst $20
    ccf
    ccf
    nop
    nop
    xor c
    xor c
    ldh a, [$f0]
    nop
    ld a, [bc]
    ld h, b
    ld h, [hl]
    ld e, b
    ld e, c
    add sp, -$18
    jr z, jr_064_6f61

    rst $38
    rst $38
    cp $fe
    and b
    xor a
    ld b, $f9
    rra
    ldh [rP1], a
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld h, b
    rst $38
    ld b, $ff
    ld b, b
    rst $38
    pop bc
    ccf
    pop bc
    ccf
    add e
    ld a, a
    ld bc, $01ff
    rst $38
    rlca
    rst $38
    ld b, e
    rst $38
    ret nz

    rst $38
    rst $00

jr_064_6f61:
    rst $00
    add e
    add e
    ld [bc], a
    adc e
    db $10
    dec hl
    ld d, b
    xor a
    ld b, b
    cp a
    add b
    ld a, a
    ld [$f7ff], sp
    ld [$b946], sp
    ld l, h
    sbc e
    jr z, @-$1f

    inc c
    rst $38
    inc e
    rst $38
    nop
    rst $38
    jr nc, @+$01

    jr c, @-$37

    ld a, c
    add [hl]
    ld e, c
    and [hl]
    ld bc, $98fe
    rst $38
    inc b
    ei
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$4c
    ei
    inc b
    ei
    ld b, a
    cp b
    rla
    ld hl, sp+$0f
    ldh a, [$2f]
    ldh a, [rIF]
    ldh a, [$80]
    ld a, a
    and [hl]
    ld a, c
    and h
    ld a, e
    add h
    ld a, e
    adc [hl]
    ld [hl], c
    ld a, [bc]
    push af
    nop
    rst $38
    ld h, b
    sbc a
    jr nz, @+$01

    and c
    rst $38
    pop hl
    rst $38
    ld de, $10ff
    rst $38
    inc e
    rst $38
    ld a, $ff
    rst $38
    rst $38
    ld e, a
    rst $38
    rst $18
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or c
    rst $38
    inc de
    rst $38
    dec sp
    rst $38
    ld [hl], a
    adc b
    and $19
    ld [bc], a
    db $fd
    nop
    rst $38
    inc bc
    ld a, a
    push bc
    db $fd
    or c
    or a
    add b
    ld a, c
    ld h, b
    sbc e
    nop
    rst $38
    add c
    ld a, [hl]
    jr @+$01

    ld b, $ff
    call z, Call_000_003f
    rst $38
    dec e
    ld [c], a
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    ld e, $ff
    ld a, a
    rst $38
    inc hl
    call c, $ff00
    nop
    rst $38
    add h
    rst $38
    jr @-$17

    cp $01
    ld hl, sp+$07
    cp $01
    ld a, a
    add b
    ccf
    ret nz

    rlca
    ld hl, sp+$4e
    rst $38
    rst $38

jr_064_7019:
    rst $38
    rra
    rst $38
    ret nz

    inc a
    db $fc
    inc bc
    rrca
    ldh a, [rNR23]
    sbc e
    inc bc
    ld h, e
    ldh [$e0], a
    ret nz

    jp c, $f5f0

    ld [hl], b
    ld [hl], b
    ld a, [hl]
    ld a, [hl]
    ldh a, [$f0]
    nop
    rst $00
    jr nz, jr_064_7019

    add c
    sbc [hl]
    rlca
    ld a, b
    nop
    rst $00
    db $fd
    rst $38
    rst $20
    rra
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
    inc de
    rst $38
    ld sp, $21ff
    rst $38
    and e
    call c, $dda2
    ld c, d
    or l
    ld [hl], b
    adc a
    ld a, b
    add a
    ld a, b
    add a
    ld h, d
    sbc a
    rst $30
    rrca
    ld a, e
    add a
    add l
    ei
    add b
    or c
    ld b, $3f
    db $10
    cpl
    nop
    ld h, c
    nop
    ccf
    inc bc
    inc a
    sub a
    ld l, a
    add a
    ld a, a
    ccf
    rst $38
    rrca
    rst $38
    ld [$3bff], sp
    db $fc
    ld a, [hl]
    rst $38
    rlca
    rst $38
    ld bc, $03fe
    db $fc
    ei
    inc b
    dec de
    db $e4
    ld [$c0f7], sp
    cp $f0
    ld c, $f8
    rlca
    add b
    ld a, a
    pop bc
    cp $03
    db $fc
    ld [bc], a
    db $fd
    cp $01
    ldh [$1f], a
    add sp, $1f
    ld [c], a
    dec e
    inc sp
    rst $38
    ld hl, $31ff
    rst $38
    ld bc, $01ff
    rst $38
    ld hl, $00ff
    rst $38
    ld d, b
    rst $38
    ld l, h
    rst $38
    cp [hl]
    rst $38
    sub h
    rst $38
    sub a
    rst $38
    sub h
    rst $38
    ld b, [hl]
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    cp [hl]
    rst $38
    sbc a
    rst $38
    sbc h
    rst $38
    adc [hl]
    rst $38
    adc a
    rst $38
    sbc h
    rst $38
    xor $ff
    ld b, b
    rst $38
    nop
    rst $38
    nop
    cp $30
    ret z

    nop
    ld sp, $433c
    nop
    ld a, h
    jr nz, jr_064_715d

    inc e
    and e
    ld b, b
    cp e
    nop
    rst $38
    call z, Call_000_033f
    rst $38
    nop
    rst $38
    ld a, $c1
    rlca
    ld hl, sp-$40
    ccf
    call nz, $feff
    rst $38
    ldh a, [rIE]
    db $e3
    rst $38
    ld b, $ff
    ldh [rIE], a
    add e
    rst $38
    sbc [hl]
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    ld c, $f1
    db $d3
    rst $38
    ld e, $ff
    inc de
    rst $28
    sub b
    rst $38
    ld [$c0ff], sp
    ccf
    rst $28
    rra
    rst $20
    rra
    ld [bc], a
    db $fd
    cp a
    ret nz

    ret nz

    ret nz

    nop
    reti


    nop
    nop
    nop
    db $e3
    ret nz

    ccf
    ld [$a077], sp

jr_064_7127:
    xor a
    sbc [hl]
    sbc [hl]
    inc c
    db $ed
    inc b
    rst $20
    jr nz, jr_064_7127

    inc bc

jr_064_7131:
    call c, $d512
    nop
    rst $38
    cp [hl]
    ld b, c
    rst $18
    jr nz, jr_064_713b

jr_064_713b:
    rst $38
    dec [hl]
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ret nz

    rst $38
    db $e3
    rst $38
    rst $30
    rst $38
    ld a, a
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    ld b, $ff
    rst $00
    rst $38
    rst $28
    rst $38
    ei
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rrca

jr_064_715d:
    rst $38
    inc c
    rst $38
    jr nc, jr_064_7131

    ld a, a
    add b
    add hl, sp
    add $20
    rst $38
    nop
    rst $10
    nop
    db $d3
    ldh [rNR12], a
    ld sp, hl
    dec b
    db $fd
    cp $f4
    ei
    sbc $e3
    rst $18
    ldh [rIE], a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    rst $38
    nop
    db $fd
    ld [bc], a
    db $fc
    inc bc
    ld a, h
    add e
    ld a, [hl]
    add a
    ld hl, sp+$07
    xor d
    ld d, l
    cp d
    ld [hl], l
    ld l, [hl]
    pop af
    cpl
    ldh a, [$57]
    xor b
    ld l, c
    sub [hl]
    ld h, c
    sbc [hl]
    db $10
    rst $38
    sbc d
    push hl
    or d
    call $ac53
    ld b, c
    cp [hl]
    add b
    rst $38
    ret nz

    rst $38
    ld a, c
    cp $80
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add c
    cp $85
    ld a, [$f887]
    inc b
    ei
    ret z

    rst $38
    call c, $d8ff
    rst $38
    adc e
    db $fc
    rra
    ld hl, sp-$68
    rst $38
    ld a, l
    rst $38
    ld l, b
    rst $38
    push bc
    ld a, [$f986]
    add b
    rst $38
    ret nz

    rst $38
    ld c, c
    cp a
    ld b, b
    cp a
    db $fc
    inc bc
    ld [$bcf7], sp
    jp Jump_064_4eb1


    ld a, l
    cp $f0
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld e, a
    and b
    sbc a
    ldh [$60], a
    sbc a
    inc bc
    db $fc
    rra
    ldh [$30], a
    rst $08
    ldh [rIE], a
    and b
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or $ff
    add h
    rst $38
    rrca
    rst $38
    ld a, a
    add b
    rst $38
    nop
    ld [hl], c
    adc [hl]
    add d
    db $fd
    inc bc
    db $fc
    rst $20
    ld hl, sp-$71
    ldh a, [$79]
    add a
    ld de, $fcff
    rst $38
    db $fc
    rst $38
    ld [hl], b
    rst $38
    xor b
    ld d, a
    rlca
    rrca
    ld e, $ff
    ld de, $07d6
    ld hl, sp+$28
    rst $10
    cp [hl]
    ld b, c
    rlca
    ld hl, sp+$00
    rst $38
    ld b, e
    cp a
    rra
    rst $38
    jr jr_064_726f

    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    cp $00
    rst $38
    rra
    rra
    cp $ff
    rst $20
    ld hl, sp+$1c
    rst $38
    jr c, @+$01

    ld a, b
    rst $38
    cp $ff
    rst $38
    rst $38

jr_064_724a:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    ld hl, sp+$07
    ld hl, sp+$02
    db $fd
    nop
    rst $38
    ret c

    ccf
    ret nz

    ccf
    ld e, $e7
    scf
    rst $08
    rlca
    rst $38
    adc $3f
    db $fd
    ld a, a
    ld e, l
    rst $18
    rra
    sbc a
    sub a
    ld d, a
    or e
    ld [hl], e
    ld b, a

jr_064_726f:
    add a
    jr jr_064_724a

    inc a
    dec a
    ld b, b
    ld e, c
    ld h, c
    ld a, d
    dec c
    ld [de], a
    dec c
    db $10
    ld c, $33
    dec b
    add hl, bc
    dec b
    ld b, e
    ld bc, $00c7
    ld b, $00
    ld b, $02
    dec c
    inc b
    inc bc
    nop
    inc [hl]
    nop
    sub b
    cp a
    ret nz

    ld a, a
    add b
    or $09
    cp $01
    db $eb
    rla
    adc [hl]
    ld [hl], e
    dec sp
    rst $30
    jr @+$01

    ld b, $f9
    inc l
    db $d3
    adc $b1
    ld e, h
    and e
    ld a, h
    add e
    ld a, h
    add e
    ld h, d
    sbc l
    ld a, d
    add l
    cp $01
    reti


    ld h, $78
    add a
    sbc b
    rst $20
    rst $28
    rst $30
    push hl
    rst $38
    add h
    rst $38
    dec de
    push hl
    ld e, a
    and l
    ld d, c
    xor a
    add c
    rst $38
    add hl, hl
    rst $38
    adc c
    ld a, a
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    ld bc, $09fe
    or $c0
    ccf
    nop
    rst $38
    nop
    add e
    add b
    rst $20
    nop
    rst $28
    jr jr_064_731f

    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc sp
    rst $38
    ldh [rIE], a
    di
    rst $38
    ccf
    rst $38
    ld [hl], e
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    add b
    rst $38
    ld bc, $07ff
    rst $38
    ld hl, sp-$01
    ldh a, [rIF]
    ldh [$1f], a
    sbc [hl]
    ld a, a
    nop
    rst $38
    rst $38
    nop
    ld sp, hl
    rlca
    rst $08
    ccf
    rst $38
    rst $38
    ld [$01ff], sp
    cp $01
    cp $1f
    ldh [$33], a
    call z, $80ff
    rst $38
    nop
    rst $38

jr_064_731f:
    nop
    ldh a, [rIF]
    rrca
    rst $38
    ccf
    rst $38
    cp a
    ld a, a
    ccf
    ret nz

    cp $e1
    xor $f1
    adc a
    ldh a, [rSB]
    cp $3f
    rst $38
    ei
    rst $38
    sbc [hl]
    ld a, a
    ld c, [hl]
    cp a
    add e
    rst $38
    ld a, l
    add e
    rst $38
    nop
    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [$9f]
    ld h, b
    rst $38
    nop
    jp $923c


    ld a, l
    sbc h
    ld a, e
    dec sp
    rst $38
    dec de
    rst $38
    dec de
    rst $38
    ld a, c
    rst $38
    db $fd
    rst $38
    ld l, h
    rst $38
    ld l, h
    rst $38
    ld h, b
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    jp c, $b3fd

    db $fc
    sbc a
    ldh [rIE], a
    ret nz

    rst $30
    ret z

    di
    call z, $ecd3
    inc de
    db $ec
    dec d
    ld c, $44
    rst $18
    ld b, l
    sbc $4c
    rst $00
    add sp, $67
    ld [$0ad7], sp
    rst $30
    ld b, h
    dec sp
    call nz, Call_000_04ab
    ld d, e
    nop
    ld [hl], a
    nop
    ld l, a
    nop
    rst $28
    inc b
    rst $20
    ld b, $f5
    ld b, $d5
    inc de
    db $ec
    dec bc
    db $f4
    inc bc
    db $fc
    inc de
    db $e4
    inc de
    db $ec
    db $db
    scf
    ld [hl], e
    cp a
    ld a, a
    or a
    call nc, $f13f
    ld a, $0a
    push af
    ld [$c815], a
    scf
    add hl, bc
    inc e
    inc c
    sbc e
    rla
    adc b
    ld b, e
    cp h
    db $e3
    inc e
    add c
    ld a, [hl]
    add b
    ld a, a
    nop
    rst $30
    add b
    rlca
    ld bc, $8bae
    ld [hl], h
    di
    inc c
    db $d3
    inc l
    ld [bc], a
    db $dd
    nop
    sbc a
    inc b
    cp a
    ld b, b
    cp a
    ld b, d
    cp a
    ld b, d
    cp a
    dec bc
    rst $38
    xor $ff
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    add a
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    add b
    rst $38
    nop
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rlca
    ld hl, sp+$3f
    ret nz

    ld sp, hl
    ld b, $c4
    ccf
    inc c
    rst $38
    ld d, h
    rst $38
    ldh a, [rIE]
    rra
    ldh [rIE], a
    nop
    add b
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    sbc b
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fd
    inc bc
    rst $38
    nop
    ld h, a
    ld hl, sp-$04
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    adc a
    ld a, a
    rst $38
    rst $38
    cp $fe
    add a
    ld a, b
    db $fc
    inc bc
    rst $30
    rst $38
    sub d
    rst $28
    ld bc, $01fe
    cp $e2
    db $fd
    db $e4
    ei
    ld [hl], b
    rst $38
    dec a
    db $e3
    sbc c
    rst $20
    inc sp
    rst $08
    inc hl
    rst $18
    ld [de], a
    rst $38
    sub e
    ld a, a
    sub e
    ld a, a
    dec bc
    rst $38
    add hl, de
    rst $38
    add hl, sp
    cp $1b
    db $fc
    ld a, $fd
    and h
    rst $38
    sbc l
    rst $30
    cp b
    rst $10
    cp b
    rst $10
    ld d, a
    cp e
    add l
    ld a, e
    and l
    ld a, e
    inc b
    ei
    inc b
    ei
    ld [bc], a
    db $fd
    ld a, [de]
    db $fd
    ld a, d
    db $fd
    ld d, c
    cp $80
    ld a, a
    adc d
    ld a, l
    add sp, $1f
    db $ec
    rra
    call z, $8c3f
    ld a, a
    ld c, c
    rst $38
    ld c, [hl]
    rst $38
    ld c, l
    rst $38
    ret z

    ld a, a
    ld e, $ed
    ld [de], a
    db $ed
    ld e, a
    and b
    rrca
    ldh a, [rIF]
    ldh a, [$8c]
    ld [hl], e
    add b
    ld a, a
    ld b, b
    cp a
    adc b
    ld [hl], a
    ret z

    ld [hl], a
    ld c, b
    rst $30
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, d
    db $fd
    dec bc
    db $fc
    ld b, b
    rst $38
    nop
    rst $38
    ld [$00bf], sp
    rst $38
    ld [bc], a
    db $fd
    add b
    ld a, a
    ret nz

    rst $38
    adc $ff
    cp $ff
    rst $38
    rst $38
    db $ec
    rst $38
    db $ec
    rst $38
    call z, $ccff
    rst $38
    call z, $ccff
    rst $38
    call z, $ccff
    rst $38
    rst $08
    rst $38
    dec c
    rst $38
    dec c
    rst $38
    dec c
    rst $38
    add hl, bc
    rst $38
    sbc c
    rst $38
    adc d
    rst $38
    adc e
    rst $38
    xor b
    rst $38
    ret z

    rst $38
    add sp, -$01
    ld a, d
    rst $38
    ld a, [$feff]
    rst $38
    adc a
    rst $38
    ld hl, sp-$01
    inc e
    rst $38
    ld e, b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [$1f], a
    rst $38
    nop
    ei
    inc b
    ldh [$1f], a
    adc a
    ld a, a
    call Call_064_633e
    sbc h
    nop
    rst $38
    inc bc
    db $fc
    ccf
    ret nz

    rst $38
    nop
    ldh [$1f], a
    ld a, a
    rst $38
    ldh a, [rIE]
    add c
    cp $47
    cp b
    rrca
    ldh a, [$1f]
    ldh [$5b], a
    and h
    pop bc
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ldh a, [rIF]
    db $d3
    cpl
    rst $28
    rra
    ld e, a
    cp a
    ld b, b
    rst $38
    rst $38
    db $fc
    ei
    db $fc
    rst $30

jr_064_752d:
    ld hl, sp-$01
    nop
    nop
    rst $38
    db $fc
    rst $38

jr_064_7534:
    ldh [$1f], a
    add c
    ld a, a
    add e
    ld a, a
    ld h, a
    rst $38
    rrca
    rst $38
    ld b, c
    cp [hl]
    inc sp
    rst $38
    rlca
    rst $38
    jr jr_064_752d

    cp b
    rst $00
    cp a
    ret nz

    ld e, a
    and b
    cp a
    ret nz

    rst $38
    add b
    ld e, a
    and b
    rst $18
    jr nz, jr_064_7534

    jr nz, @+$0d

    db $f4
    rrca
    ldh a, [$1f]
    ldh a, [rNR22]
    ld hl, sp+$17
    ld hl, sp+$17
    ld hl, sp-$79
    ld hl, sp-$19
    ld hl, sp+$5f
    ldh [$1f], a
    ldh [$9c], a
    ld h, e
    nop
    rst $38
    and b
    ld a, a
    and b
    ld a, a
    or b
    ld a, a
    db $10
    rst $38
    add hl, de
    cp $01
    cp $89
    ld a, [hl]
    adc l
    ld a, [hl]
    adc e
    ld a, h
    sub e
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    sbc l
    rst $38
    ld hl, sp-$01
    add b
    rst $38
    ld hl, $11fe
    cp $10
    rst $38
    ld hl, $04fe
    ei
    inc b
    ei
    ld b, $f9
    ld [bc], a
    db $fd
    ld b, b
    rst $38
    call nc, Call_000_10ff
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    add hl, bc
    rst $38
    ld [bc], a
    rst $38
    ld [de], a
    rst $38
    rla
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, h
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    add hl, sp
    rst $38
    add hl, sp
    rst $38
    add hl, sp
    rst $38
    add hl, sp
    rst $38
    ld sp, hl
    rst $38
    di
    rst $38
    di
    rst $38
    ld [hl-], a
    rst $38
    ld sp, $31ff
    rst $38
    ld [hl], l
    rst $38
    ld a, l
    rst $38
    db $dd
    rst $38
    db $ed
    rst $38
    db $ec
    rst $38
    db $ec
    rst $38
    and $ff
    rst $38
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    ld a, b
    add a
    ret nz

    ccf
    ret nz

    ccf
    ccf
    rst $38
    cp a
    rst $38
    inc a
    rst $38
    or $09
    ld [$f0f7], sp
    rrca
    ei
    rlca
    rst $30
    rrca
    db $10
    rst $28
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
    dec de
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    call c, $80ff
    rst $38
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    ldh a, [rIF]
    dec de
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    di
    db $fc
    ld e, [hl]
    ld h, c
    rst $38
    nop
    inc a
    jp $c1be


    ld a, [hl]
    add c
    cp $01
    sbc [hl]
    ld h, c
    sbc [hl]
    ld h, c
    sbc $61
    and a
    ld a, b
    ld h, a
    ld hl, sp+$37
    ld hl, sp+$3b
    db $fc
    dec sp
    db $fc
    cp c
    ld a, [hl]
    sbc c
    ld a, [hl]
    add hl, de
    cp $09
    cp $01
    cp $c1
    ld a, $c0
    ccf
    ret nz

    ccf
    nop
    rst $38
    add b
    rst $38
    and b
    rst $18
    and b
    rst $18
    or b
    rst $08
    ld [hl], b
    rst $08
    sub d
    db $ed
    db $10
    rst $28
    db $10
    rst $28
    sub d
    ld l, l
    add e
    ld a, h
    add e
    ld a, h
    add e
    ld a, h
    sub e
    ld l, h
    or e
    ld c, h
    sub c
    ld l, [hl]
    ret


    ld [hl], $89
    db $76
    inc bc
    cp $0b
    cp $05
    cp $81

jr_064_7693:
    ld a, [hl]
    add c
    ld a, [hl]
    ret


    ld a, $6b
    sbc h
    ld b, e
    cp h
    ld h, e
    sbc h
    ld b, l
    cp e
    ld b, b
    cp a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    jr jr_064_7693

    dec a
    jp $c33c


    ccf
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld sp, hl
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
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
    rst $08
    rst $38
    call z, $c8ff
    rst $38
    ret z

    rst $38
    ret nz

    rst $38
    ret c

    rst $38
    ret z

    rst $38
    ld hl, sp+$07
    ret c

    daa
    jp nc, Jump_000_182f

    rst $20
    ccf
    ret nz

    sbc a
    ld h, b
    rra
    ldh [rNR33], a
    ld [c], a
    ld [hl], b
    adc a
    add $39
    nop
    rst $38
    ldh a, [rIE]
    add c
    cp $02
    rst $38
    rrca
    rst $38
    db $fc
    inc bc
    nop
    rst $38
    ld [hl], h
    rst $38
    rst $18
    rst $38
    nop
    rst $38
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
    ld a, a
    rst $38
    cp $ff
    cp $ff
    sbc h
    rst $38
    ld a, a
    rst $38
    ei
    rst $38
    di
    rst $38
    xor $f1
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    rra
    ldh [$bf], a
    ret nz

    db $fc
    jp $c7b9


    or $8f
    ld h, a
    sbc a
    rst $28

jr_064_773b:
    rra
    ld h, a
    sbc a
    ldh a, [rIF]
    xor $ff
    rst $18
    rst $38
    cp $ff
    ld a, a
    rst $38
    rst $38
    rst $38
    db $ed
    rst $38
    add sp, -$01
    ld sp, hl
    cp $51
    cp $04
    ei
    add l
    ld a, e
    and c
    ld e, a
    pop bc
    ccf
    reti


    ccf
    ret nc

jr_064_775d:
    ccf
    ret c

    ccf
    ret nc

    ccf
    ldh [$1f], a
    ret nc

    ccf
    ret z

    ccf
    db $ec
    rra
    db $ec
    rra
    ld h, [hl]
    sbc a
    ld h, [hl]
    sbc a

Call_064_7770:
    ld [hl-], a
    rst $08
    jr c, jr_064_773b

    jr jr_064_775d

    ld a, b
    rst $20
    jr c, @-$37

    ld a, [hl]
    add c
    sbc h
    ld h, e
    adc l
    ld [hl], e
    cpl
    di
    rst $38
    inc bc
    ld a, a
    add e
    ld a, a

jr_064_7787:
    add e
    rst $38

jr_064_7789:
    inc bc
    ld a, a
    add e
    cp $03
    cp $03
    ld a, [$7a07]
    add a
    ccf
    jp nz, $837c

    rst $38
    inc bc
    db $e3
    rra
    ld bc, $c9ff
    rst $30
    reti


    rst $20
    dec de
    rst $20
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld c, a
    di
    ld c, a
    di
    dec sp
    rst $00
    ld a, e
    add a
    ei
    rlca
    or d
    ld c, a
    jr nc, jr_064_7787

    jr nc, jr_064_7789

    ld [hl], b
    adc a
    sub b
    ld l, a
    and b
    ld a, a
    ld c, b
    rst $38
    ld [hl+], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    or l
    ld c, d
    rra
    ldh [rTAC], a
    ld hl, sp+$11
    xor $71
    xor $91
    xor $81
    cp $85
    cp $85
    cp $05
    cp $81
    cp $09
    cp $21
    sbc $a1
    sbc $21
    sbc $f0
    rrca
    ldh a, [rIF]
    pop hl
    ld e, $00
    rst $38
    adc c
    cp $c0
    ccf
    ld b, b
    cp a
    ld c, $ff
    ccf
    rst $38
    db $dd
    rst $38
    nop
    rst $38
    ld bc, $ffff
    rst $38
    ld a, b
    rst $38
    inc bc
    db $fc
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    ldh [$1f], a
    sbc a
    ld h, b
    ccf
    ret nz

    ld a, a
    add b
    nop
    rst $38
    inc c
    rst $38
    rra
    rst $38
    sub b
    rst $38
    jp nz, $ffff

    rst $38
    ld a, a
    rst $38
    inc b
    rst $38
    inc bc
    db $fc
    nop
    rst $38
    rst $38
    nop
    cp a
    ld b, b
    or b
    ld c, a
    ldh a, [rIF]
    adc h
    di
    db $fd
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ldh a, [$e0]
    db $f4
    ldh [$f4], a
    ldh [$f9], a
    ldh [$f5], a
    ldh a, [$f0]
    ld [hl], b
    ld a, [$fe70]
    pop af
    cp $f9
    db $fc
    ld a, c
    rst $38
    jr c, jr_064_78d6

    inc a
    ld a, a
    inc a
    ld a, a
    inc e
    ld a, a
    jr @+$41

    inc e
    cp a
    inc c
    cp a
    inc e
    cp h
    dec c
    sbc h
    inc c
    sbc h
    inc c
    sbc a
    inc c
    cp a
    rrca
    ccf
    rrca
    xor a
    ldh a, [$ef]
    ldh a, [$1f]
    ldh [rNR31], a
    db $e4
    rra
    ldh [$7f], a
    ret nz

    rst $38
    ret nz

    ld a, a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    ccf
    ret nz

    rst $38
    ccf
    cp $f9
    ld hl, sp+$40
    ld a, h
    ld b, c
    ld a, h
    ld bc, $217e
    ld a, d
    ld hl, $207b
    adc b
    rst $38
    adc [hl]
    rst $38
    adc [hl]
    rst $38
    add a
    rst $38
    cp $87
    ld a, e
    add h
    ld a, a
    add b
    ld [hl], a
    adc b
    ld h, a
    sbc b
    add e
    ld a, h
    ret nz

    ccf
    ret z

    ccf
    db $10
    rst $38
    add b
    rst $38
    ld d, b
    rst $28
    ret nz

    rst $38
    ld h, b
    rst $38
    ld [hl], h
    rst $38
    sbc h
    ld a, a
    sub b
    ld a, a
    call c, $8723
    ld a, b
    add a
    ld a, b
    rlca
    ld hl, sp+$63
    db $fc
    ld c, l
    ld a, [c]
    ld a, b
    rst $30

jr_064_78d6:
    jr nc, @+$01

    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    jr c, @+$01

    ld l, b
    rst $38
    ld e, b
    rst $38
    ld d, b
    rst $38
    xor b
    ld a, a
    sub b
    ld a, a
    ret nc

    ccf
    ret nz

    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    or e
    rst $38
    dec b
    rst $38
    inc bc
    rst $38
    nop
    ld [hl], e
    nop
    ld c, l
    nop
    jr c, @+$03

    ld a, [$ce01]
    ld bc, $0180
    add b
    ld bc, $81f0
    rst $38
    rst $38
    rst $38
    cp $ff
    nop
    rst $38
    ld e, $fe
    rst $38
    rst $38
    cp $ff
    add l
    rst $38
    ccf
    ld a, a
    rra
    ccf
    scf
    cp $41
    ldh a, [rP1]
    ld b, c
    nop
    ld e, a
    rlca
    rst $38
    ld a, b
    adc [hl]
    ld bc, $010e
    or $01
    cp $c1
    rst $38
    cp $e7
    jr @+$01

    nop
    cp [hl]
    ld a, a
    ccf
    cp $8f
    cp $d7
    xor $eb
    rst $30
    or $fd
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
    jr jr_064_7973

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_064_7983

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_064_7993

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_064_79a3

    ld [hl-], a

jr_064_7973:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_064_79b3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_064_7983:
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

jr_064_7993:
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

jr_064_79a3:
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

jr_064_79b3:
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
    jr jr_064_7a73

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_064_7a83

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
    jr nc, jr_064_7aa3

    ld [hl-], a

jr_064_7a73:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_064_7ab3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld bc, $0202

jr_064_7a83:
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
    ld [bc], a
    dec b
    nop
    ld bc, $0201
    dec b
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
    dec b
    nop
    nop
    nop

jr_064_7aa3:
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    ld bc, $0002

jr_064_7ab3:
    ld bc, $0505
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld bc, $0200
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0002
    dec b
    ld bc, $0505
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    ld bc, $0105
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    nop
    nop
    dec b
    ld bc, $0202
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
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
    ld bc, $0102
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
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a

Jump_064_7b3c:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0102
    inc bc
    ld bc, $0303
    ld bc, $0101
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
    ld bc, $0101
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    dec c
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    ld a, [bc]
    dec c
    dec c
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    dec c
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    add hl, bc
    dec c
    dec c
    dec c
    dec c
    add hl, bc
    ld a, [bc]
    dec c
    ld [$090d], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0a09], sp
    add hl, bc
    ld [$0808], sp
    dec c
    dec c
    dec c
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld [$0908], sp
    add hl, bc
    dec c
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    dec c
    add hl, bc
    jp nz, $bafc

    db $fc
    sbc $fe
    jp nc, $f0fe

    rst $38
    ld a, c
    rst $38
    ld a, e
    db $fd
    db $fd
    ld a, a
    cp c
    rst $00
    inc e
    inc hl
    sbc [hl]
    pop hl
    adc a
    or b
    ld b, a
    ld a, b
    ld h, b
    ld l, h
    ld c, [hl]
    ld b, [hl]
    ld [hl], b
    ld a, h
    ld h, h
    ld h, d
    ld sp, hl
    rst $38
    ld h, b
    db $e3
    rrca
    sbc h
    ld bc, $440a
    ld c, l
    and b
    xor b
    ldh a, [$f0]
    ld b, $06
    dec b
    dec b
    nop
    ld a, [$3fc0]
    ret z

    dec hl
    sub h
    ld [hl], l
    inc b
    push hl
    and b
    ld b, l
    db $e4
    ld [de], a
    db $e4
    ld [bc], a
    db $e4
    ld [bc], a
    adc $28
    ld h, d
    add h
    ld a, [c]
    dec c
    rst $30
    inc c
    ld [hl], l
    adc [hl]
    pop af
    nop
    rst $38
    nop
    ld a, a
    add b
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rst $00
    cp a
    cp e
    rst $00
    push hl
    jp c, $ffc2

    sub $ef
    rst $38
    rst $20
    db $e3
    rst $38
    db $fd
    rst $38
    db $76
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
    dec de
    rst $38
    add hl, bc
    rst $38
    add c
    ld a, a
    rlca
    ei
    daa
    ei
    ld hl, $79ff
    rst $38
    dec a
    rst $38
    cp [hl]
    rst $38
    cp a
    rst $38
    rlca
    rst $38
    and $1f
    ld [c], a
    rra
    ld [hl], e
    adc [hl]
    ld a, b
    add a
    reti


    daa
    sub e
    ld l, a
    scf
    sla b
    rst $18
    sub b
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    rst $38
    ld sp, hl
    push af
    ei
    push hl
    rst $38
    adc l
    rst $38
    dec de
    rst $38
    cpl
    rst $38
    cp $7f
    db $fd

jr_064_7c77:
    ld a, a
    ld a, e
    rst $38
    jp c, $d5e7

    xor $de
    ld sp, hl
    adc l
    ld a, [c]
    ld hl, $b9de
    ld a, [hl]
    ld a, c
    cp $f1
    cp $f3
    db $fc
    di
    db $fc
    rst $30
    ld hl, sp-$11
    ldh a, [$9e]
    pop hl
    inc a
    jp Jump_000_00ff


    rst $38
    nop
    rst $38
    nop
    di
    inc c
    and $19
    rst $00
    add hl, sp
    call z, $8f33
    ld [hl], b
    adc e
    ld [hl], h
    daa
    call c, $8d72
    ld e, d
    and l
    ld d, e
    db $ec
    ccf
    rst $38
    ld a, [hl]
    ld a, a
    ld c, h
    rst $08
    adc h
    adc a
    sbc h
    sbc a
    jr jr_064_7c77

    inc d
    or e
    jr nc, jr_064_7cff

    ld [$c0f7], sp
    ld a, $10
    ld l, [hl]
    ld c, l
    ld [hl-], a
    cp l
    ld [bc], a
    inc l
    sub d
    dec hl
    call nc, $ff00
    inc hl
    call c, $fe4d
    add hl, sp
    cp $2c
    rst $38
    jp hl


    or $f3
    inc c
    ld [hl], e
    inc c
    ld [hl], e
    inc c
    sbc e
    inc b
    sbc a
    nop
    sbc a
    nop

jr_064_7ce6:
    sbc l
    ld [bc], a
    dec [hl]
    add d
    ld a, [hl]
    add c
    inc a
    jp $c37c


    ld a, [de]
    ld a, e
    ld b, $66
    ret


    jp hl


    ld c, a
    ld a, a
    nop
    add b
    ld b, c
    adc [hl]
    ld d, d
    or l
    adc c

jr_064_7cff:
    ld e, d
    jr nc, @-$41

    and b
    ld a, h
    add b
    ld a, [hl-]
    ret nz

    add hl, sp
    ldh a, [rTIMA]
    jr nz, jr_064_7ce6

    nop
    db $fc
    nop
    inc a
    ld b, d
    jp Jump_064_42c2


    and b
    ld hl, $f734
    rst $00
    rst $20
    jp $f1e3


    pop af
    ldh a, [$f0]
    pop af
    pop af
    rst $28
    rst $38
    ret nc

    xor $cc
    di
    add e
    db $fc
    rst $28
    db $10
    rst $18
    jr nc, jr_064_7d86

    cp b
    rla
    ld hl, sp-$61
    ld hl, sp-$62
    ld sp, hl
    ld a, [$bffd]
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    ld a, [hl-]
    db $fd
    ld a, [c]
    adc l
    sbc $e1
    rst $08
    ldh a, [$c1]
    cp $ca
    db $fd
    db $ec
    rst $38
    or $ff
    ld a, [$faff]
    rst $38
    cp $ff
    cp $ff
    ld h, e
    db $fc
    rst $08
    jr nc, jr_064_7d63

    rst $38
    rrca
    rst $38
    rrca
    rst $38
    adc a
    ld a, a
    ld c, a

jr_064_7d63:
    rst $38
    rlca
    rst $38
    ld c, [hl]
    cp a
    adc h
    rst $38
    ret nz

    rst $38
    jp $e3ff


    rst $38
    rst $08
    rst $38
    cp a
    rst $38
    ld a, [hl]
    rst $38
    db $fd
    cp $f9
    cp $e3
    db $fc
    rrca
    ldh a, [rIE]
    nop
    rst $38
    nop
    cp $01
    cp $01

jr_064_7d86:
    cp $00
    db $fc
    nop
    ld hl, sp+$04
    cp $07
    and h
    ld d, a
    inc h
    call nc, $b554
    xor $2e
    adc h
    ld c, l
    jp z, $064a

    add [hl]
    cp d
    cp d
    or [hl]
    or [hl]
    and b
    and b
    and b
    ld h, b
    ldh [rNR41], a
    add b
    ld b, c
    ld d, a

jr_064_7da9:
    rst $10
    inc c
    xor h
    ld bc, $02c1
    jp Jump_064_7f00


    nop
    ld a, [$7480]
    nop
    ldh a, [rP1]
    jp hl


    ld bc, $21d1
    ld sp, hl
    jr z, jr_064_7da9

    add [hl]
    ld h, c
    dec bc
    ld h, h
    ld c, d
    dec h
    ld de, $0726
    jr nc, @+$23

    ld [de], a
    jr z, @+$15

    ld b, b
    cp e
    inc d
    ei
    ld c, b
    cp a
    ld h, d
    sbc l
    ld a, b
    add a
    ld h, [hl]
    sbc c
    daa
    ret c

    dec [hl]
    ret z

    nop
    db $ec
    ld [$14e4], sp
    ldh [rNR23], a
    ldh [rP1], a
    ldh [rNR10], a
    ldh [rNR23], a
    ldh [rNR23], a
    ldh [$88], a
    ldh a, [$a0]
    ld h, b
    ld [hl], a
    adc a
    ld a, h
    add h
    jr c, jr_064_7df8

jr_064_7df8:
    ret c

    db $e4
    jr @-$19

    db $ed
    pop af
    ld d, c
    db $dd
    db $10
    ld h, c
    nop
    or l
    jr nz, jr_064_7e3f

    jr nz, jr_064_7e32

    jr nc, jr_064_7e47

    jr nz, @+$63

    jr nz, jr_064_7e79

    dec bc
    rst $28
    sbc h
    ld e, a
    inc h
    rst $20
    ld h, h
    and a
    and $27
    ld b, $c6
    add b
    pop bc
    add d
    ld [c], a
    db $10
    ld [hl], b
    ld h, $b8
    inc b
    sbc d
    ld [bc], a
    ld e, l
    ld a, [bc]
    ld l, h
    add h
    adc a
    jp nz, $c3c2

    jp $efef


    rst $38
    nop

jr_064_7e32:
    ld a, [$d307]
    cpl
    di
    rrca
    db $e3
    rra
    di
    rrca
    di
    rrca
    di

jr_064_7e3f:
    rrca
    pop hl
    rra
    ld [hl], c
    adc a
    pop af
    rrca
    ld a, b

jr_064_7e47:
    add a
    pop af
    rst $38
    ld sp, hl
    rst $38
    ld a, [$fbfd]
    db $fd
    cp $fd
    ld a, [hl]
    db $fd
    or h
    ld a, a
    or h
    ld a, a
    ret c

    ccf
    inc c
    rst $38
    jp nz, Jump_064_413f

    cp a
    ld h, e
    sbc a
    adc e
    rst $38
    rst $18
    rst $38
    dec sp
    rst $38
    ldh a, [$7f]
    db $ec
    rst $38
    sbc $ff
    ld hl, sp-$01
    di
    db $fd
    inc d
    db $eb
    ld h, c
    sbc [hl]
    ld sp, hl
    ld [bc], a
    pop af

jr_064_7e79:
    ld a, [bc]
    ld a, [c]
    ld bc, $5caa
    db $f4
    ld [de], a
    push de
    add hl, sp
    ld a, [bc]
    rst $10
    db $d3
    db $ec
    sub c
    xor [hl]
    ld b, c
    ld [hl-], a
    adc e
    ld l, b
    inc de
    call nc, $5d58
    rrca
    adc a
    rrca
    ld l, a
    ld c, $9e
    call nz, $80e5
    cp e
    dec bc
    db $ec
    inc bc
    db $f4
    ld [bc], a
    db $dd
    ld [hl+], a
    db $fc
    ld b, h
    jp c, $ff42

    add h
    db $dd
    sub h
    and a
    ld [$10ae], sp
    ld e, $00
    dec e
    nop
    add hl, sp
    jr nz, jr_064_7eef

    nop
    ld h, a
    ld h, d
    ld l, l
    add h
    cp e
    dec a
    ld b, e
    ei
    rlca
    cp $07
    sub e
    inc c

jr_064_7ec2:
    ld [bc], a
    rrca
    adc a
    rlca
    call z, $0207
    rlca
    ld hl, $2606
    inc bc
    dec b
    inc bc
    ldh a, [$f3]
    inc b
    rst $38
    adc d
    or l
    inc c
    ld d, e
    ld a, [bc]
    ld h, a
    jp hl


    rst $28
    inc b
    dec b
    inc bc
    ld [bc], a
    or b
    ld c, a
    jr c, @-$37

    ld a, b
    add a
    dec a
    jp nz, $c738

    inc h
    ld b, e
    inc b
    ld h, e
    dec d

jr_064_7eef:
    ld h, d
    ld d, e
    jr nz, jr_064_7ec2

    jr nc, @+$75

    rst $38
    ld [hl], a
    rst $38
    ld a, b
    rst $38
    ld c, l
    ld a, [$f946]
    rst $38
    nop

Call_064_7f00:
Jump_064_7f00:
    db $10
    rst $20
    ld e, $81
    ld [de], a
    adc l
    dec c
    ld a, [c]
    jr c, jr_064_7eef

    inc e
    ld h, e
    ld c, $d1
    inc c
    sub e
    ld b, h
    dec de
    inc b
    ld e, e
    ld h, d
    db $ec
    ld a, [c]
    db $fd
    sub h
    ld a, [$f783]
    dec bc
    xor a
    nop
    ld a, b
    nop
    ld a, [hl]
    nop
    daa
    ld [bc], a
    dec a
    inc bc
    ld a, b
    ld bc, $055e
    add [hl]
    ld [$e600], sp
    and $fd
    inc bc
    ei
    rlca
    ei
    rlca
    ei
    add a
    cp a
    jp $e39f


    sbc $e3
    rst $38
    db $e3
    rst $28
    di
    di

jr_064_7f43:
    rst $38
    ei
    rst $38
    ld hl, sp-$01
    db $fc
    ei
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld a, [$f8fd]
    rst $38
    and e
    db $fc
    cp e
    db $fc
    sbc l
    cp $dd
    cp $6d
    cp $8f
    cp $c7
    rst $38
    ret nz

    rst $38
    sbc $fe
    cp [hl]
    cp $b9
    ld a, [$fa7d]
    db $76
    ld sp, hl
    inc de
    rst $38
    ld c, a
    adc a
    ret nz

    ret nz

    add b
    add c
    ld [bc], a
    xor e
    ld [bc], a
    ld a, a
    nop
    ld [hl], a
    nop
    db $db
    nop
    sub l
    ld bc, $08a6
    ld a, [hl]
    dec d
    sbc e
    dec [hl]
    cp c
    db $e3
    rst $38
    db $eb
    di
    jp nc, $d5ef

    rst $28
    add h
    push af
    add b
    pop af
    ld [$006d], sp
    db $fd
    ld [$3881], sp
    rst $20
    jr jr_064_7f43

    db $10
    inc l
    inc h
    sub $60
    sbc d
    add sp, $15
    ld [c], a
    ld a, [de]
    ret nz

    dec a
    pop bc
    ld a, $0f
    db $10
    ld d, a
    ret z

    ld b, [hl]
    ld e, b
    ld b, a
    reti


    ld c, l
    ld d, c
    ld c, e
    db $d3
    rst $10
    rst $08
    rst $00
    rst $10
    rst $08
    rst $38
    rst $08
    rst $28
    rst $18
    rst $18
    pop af
    rrca
    or e
    ld c, a
    sbc b
    ld h, h
    ld e, c
    and a
    ld e, c
    and a
    ld a, l
    add e
    cp l
    jp Jump_064_423c


    cp l
    ld a, [hl]
    ld e, l
    cp [hl]
    ld c, a
    cp [hl]
    ld e, $ff
    sbc a
    cp $0e
    rst $38
    add l
    ld [bc], a
    inc bc
    add b
    cp [hl]
    pop bc
    ld e, $e1
    ld a, [hl-]
    pop bc
    daa
    ret c

    rra
    ldh [$2f], a
    ldh a, [rNR41]
    rst $38
    jr c, @+$01

    ld hl, $0419
    or h
    ldh a, [$08]
    db $f4
    inc c
    db $f4
    inc b
    ld sp, $9841
    and l
    ld l, b

Jump_064_7fff:
    db $f0
