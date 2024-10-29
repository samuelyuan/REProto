SECTION "ROM Bank $062", ROMX[$4000], BANK[$62]

    db $db
    db $20, $c1
    ccf
    ldh a, [rIF]
    db $fc
    inc bc
    rst $38
    nop
    db $fd
    ld [bc], a
    jr nz, @+$01

    ld hl, sp-$01
    pop bc
    cp $c1
    cp $be
    ld b, c
    inc e
    inc bc
    ld c, a
    ccf
    ld b, c
    ld a, $b8
    ld a, [hl]
    db $10
    rst $38
    sbc b
    nop
    rla
    nop
    sbc a
    nop
    adc b
    rlca
    ld bc, $3b07
    rlca
    inc de
    cpl

jr_062_402e:
    jp c, $c627

    ccf
    ld b, $7f
    ld b, h
    ld a, a
    db $e3
    ld e, l
    pop bc
    ld a, a
    inc de
    ld a, a
    ret


    scf
    db $fd
    nop
    ld a, h
    nop
    ld a, [c]
    inc b
    db $f4
    ld c, $f5
    ld c, $dd
    ld c, $cd
    ld e, $eb
    inc e
    db $fc
    nop
    db $fc
    jp $c7f8


    sbc $e1
    and b
    pop bc
    inc bc
    pop bc
    add e
    pop bc
    ld sp, hl
    add e
    dec hl
    add c
    dec sp
    add c
    cp e
    ld bc, $01bf
    add l
    ei
    xor l
    dec de
    adc d
    add hl, de
    sbc b
    inc bc
    ld b, $83
    dec b
    nop
    inc bc
    add b
    or e
    ld [$1f02], sp
    rlca
    rrca
    rrca
    rlca
    adc a
    rlca
    add [hl]
    rrca
    ld c, $0f
    dec de
    inc c
    dec bc

jr_062_4085:
    jr z, @-$04

    dec c
    ld e, [hl]
    adc a
    sbc a
    rrca
    rra

jr_062_408d:
    rrca
    xor a
    rra
    rst $18
    ccf
    ld a, a
    ccf
    rst $38
    ccf
    cp a
    ld a, a
    inc bc
    rst $38
    rst $08
    jr nc, jr_062_408d

    rra
    ld hl, sp+$1f
    ldh a, [$1f]
    ld [$c917], a
    ld [hl], $d2
    dec a

jr_062_40a8:
    ld l, b
    cp a
    ld a, c
    add [hl]
    jr nz, jr_062_402e

    ld a, b
    rst $38
    db $e3
    rra
    pop bc
    nop
    ld h, $c1
    ld a, a
    rst $38
    ld a, e
    db $fc
    ld l, c
    or b
    add hl, bc
    db $10
    db $10
    add hl, bc
    ld c, h
    jr nc, jr_062_40a8

    ld hl, sp+$31
    ldh a, [$f0]
    jr nc, jr_062_4085

    ldh a, [$b2]
    ld a, h
    ld [hl-], a
    inc c
    inc c
    ld [bc], a
    sbc a
    ld [hl], a
    cp a
    ld [hl], a
    db $d3
    daa
    db $e3
    rlca
    add d
    ld a, a
    dec de
    rst $38
    ld sp, $79ce
    add [hl]
    rst $38
    nop
    dec a
    ld [bc], a
    inc a
    jp $fffe


    ld a, [hl-]
    rst $38
    adc l
    ld a, [$c33c]
    ld a, [de]
    rst $20
    rst $38
    rst $38
    cp a
    rst $38
    ld e, a
    rst $38
    ret nz

    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld [$90f7], sp

Jump_062_40ff:
    ld l, a
    ld h, a
    sbc b
    adc h
    rst $38
    add d
    db $fd
    adc $f1
    ld sp, hl
    nop
    db $e4
    nop
    ccf
    ret nz

    ld hl, $b1de
    ld b, b
    inc c
    ldh a, [$58]
    ccf
    nop
    rra
    cp b
    rlca
    ld [hl+], a
    db $fd
    sbc e
    ldh [$dc], a
    ld h, e
    db $fc
    inc bc
    ld l, e
    inc b
    ld a, [$c904]
    ld [hl], $c3
    ld a, $c2
    ld a, $d8
    ld h, $00
    rst $38
    ld b, h
    rst $38

jr_062_4132:
    ld b, h
    rst $38
    ret nz

    rst $38
    ret nc

    rst $28
    pop af
    rst $08
    di
    rst $08
    and e
    rst $08
    rlc a
    add hl, bc
    rlca

jr_062_4142:
    ld a, [bc]
    rlca
    ld [$0a07], sp
    rlca
    ld b, d
    rlca
    ld b, d
    rlca
    ld h, a
    nop
    push hl
    nop
    add sp, $00
    pop hl
    nop
    jp Jump_062_5500


    ld [hl-], a
    ld b, c
    ld [hl], $44
    ccf
    ld b, c
    ccf
    sbc e
    daa
    jr z, jr_062_4132

    inc bc
    call c, $df3f
    inc a
    rst $18
    cp $dd
    ld a, [hl+]
    db $dd
    rra
    ret nz

    ld d, l
    add d
    jr nz, jr_062_4142

    ld [hl], b
    add b
    ld e, a
    sub b
    ret c

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push bc
    cp $bb
    call nz, Call_000_00c0
    call nz, $c100
    nop
    add e
    ld b, b
    nop
    ret nz

    inc a
    ret nz

    adc h
    rst $38
    ld hl, sp-$19
    pop hl
    ldh [$e3], a
    ldh [$e3], a
    ldh [$c3], a
    ldh [$fc], a
    db $e3
    ld c, e
    rst $30
    ld a, a
    pop hl
    ld e, a
    pop hl
    ld a, a
    pop hl
    sbc e
    pop hl
    dec sp
    pop bc
    inc sp
    pop bc
    sbc l
    db $e3
    ld b, e
    rst $38
    cp h
    ld b, e
    ld de, $c0e0
    ldh [rNR41], a
    ld h, b
    jr nc, @-$1e

    db $e4
    ld hl, sp-$44
    ld a, [hl]
    dec c
    ld a, [hl-]
    jr z, jr_062_41d6

    call z, Call_000_0630
    ccf
    rst $20
    nop
    rst $18
    nop
    ccf
    nop
    ld a, a
    nop
    ccf
    nop
    inc l
    inc de
    cpl
    inc de
    add b
    nop
    nop
    rst $38
    ld a, b
    rst $38

jr_062_41d6:
    and b
    ld a, a
    xor [hl]
    ld a, a
    inc d
    rst $38
    ld c, l
    ld a, $0d
    ld [bc], a
    add b
    inc bc
    db $e3
    ld bc, $817b
    ld a, l
    add c
    cp $01
    rst $18
    nop
    cp a
    ld b, b
    cp $01
    ld c, $f0
    inc bc
    rst $38
    nop
    rst $38
    add b
    ld a, a
    sbc h
    inc bc
    rst $08
    nop
    db $ec
    nop
    nop
    nop
    jp $bf00


    ld b, b
    ld e, $e1
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    daa
    rst $38
    ld h, b
    rst $38
    jr nz, jr_062_426a

    db $eb
    db $10
    sub e
    ld a, b
    ld de, $1ee0
    ldh [rDIV], a
    cp $ee
    nop
    cp e
    ld b, b
    ld e, a
    cp a
    cp a
    rst $18
    sbc $bf
    inc a
    sbc a
    inc h
    rst $18
    ld [$31ff], sp
    adc $41
    add b
    db $fc
    ccf
    ld a, [$fa3d]
    dec a
    inc a
    rst $38
    push af
    rst $38
    db $e3
    db $fd
    push hl
    ei
    push hl
    ei
    rst $20
    ei
    ld l, d
    rst $30
    ld c, d
    rst $30
    sub [hl]
    rst $38
    ld h, $ff
    dec hl
    cp $19
    xor $88
    nop
    nop
    nop
    and b
    ld b, b
    ld b, b
    ldh [$50], a
    xor $44
    cp $c8
    cp $dc
    cp $fd
    ret c

    call nz, $0cd8
    ret nc

    add sp, $10
    db $fd
    nop
    ld [hl], l
    nop

jr_062_426a:
    sbc l
    nop
    rst $38
    nop
    rra
    ldh [rNR30], a
    rrca
    inc sp
    rrca
    adc e
    ld a, a
    ld a, d
    rst $38
    ld [$76ff], a
    rst $28
    ld l, $4f
    dec c
    ld c, [hl]
    ld c, b
    inc c
    ld e, d
    inc c
    ld a, c
    ld e, $dd
    ld a, [hl-]
    ld e, a
    jr c, jr_062_42c5

    inc e
    sbc $1c
    cp e
    ld e, [hl]
    cp d
    ld e, a
    ld [hl], $79
    sub a
    ld a, c
    rst $10
    add hl, sp
    di
    dec e
    ld a, [$f8fd]
    rst $38
    rst $18
    ei
    dec d
    ei
    ld d, a
    cp b
    ccf
    ldh a, [rPCM12]
    ld sp, hl
    db $f4
    ei
    db $f4
    ei
    cp [hl]
    pop de
    add [hl]
    add hl, bc
    push af
    rrca
    adc e
    ld a, a
    rst $38
    inc bc
    ld h, [hl]
    rra
    xor $13
    ld sp, hl
    inc bc
    ld [bc], a
    dec c
    ld c, $07
    rst $20
    rlca
    dec de
    rlca
    ld [hl], d

jr_062_42c5:
    add c
    ld c, [hl]
    sub c
    ld a, [hl]
    add c
    ld a, d
    add a
    ld c, $3f
    ld h, $9f
    ld b, c
    sbc a
    nop
    rst $38
    db $fc
    rst $38
    adc a
    rst $38
    dec a
    jp $c130


    ld de, $f9e0
    add b
    cp a

jr_062_42e1:
    ret nz

    rst $38
    ret nz

    set 4, h
    ld c, c
    and $fc
    jp Jump_062_43bc


    db $db
    daa
    and l
    ld e, a
    ld l, e
    inc b
    add e
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    add hl, bc
    rlca
    ld c, $01
    rst $38
    ld bc, $9f60
    ret nz

    ccf
    ld bc, $03ff
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    ld sp, $2000
    nop
    ld [hl], b
    nop
    db $fc
    ld bc, $013c
    ld sp, hl
    ld bc, $0140
    ld c, c
    nop
    ld c, d
    cp a
    ld e, b
    xor a
    ld a, b
    adc a
    ld sp, hl
    ld e, $f1
    ld e, $54
    and b
    call nc, $c420
    jr nc, @+$01

    dec bc
    sbc d
    ld l, a
    ld c, [hl]
    rst $38
    db $76
    rst $08
    ld h, e
    adc $65
    jp z, $c02e

    inc c

Jump_062_433f:
    ld [bc], a
    dec e
    ld [bc], a
    dec d
    ld a, [bc]
    ld [hl-], a
    ld c, a
    inc de
    ld c, [hl]
    add hl, sp
    ld b, [hl]
    ld [hl], l
    nop
    scf
    nop
    db $10
    ld b, $00
    ld b, $9a
    jr nz, jr_062_42e1

    inc hl
    add hl, bc
    inc hl
    dec e
    inc hl
    dec c
    inc sp
    dec l
    inc de
    dec e
    inc bc
    ld [hl], a
    inc bc
    scf
    inc bc
    ld sp, $f003
    inc bc
    ld b, h
    nop
    ld e, a
    nop
    ld [hl], e
    nop
    ld [hl], c
    nop
    db $f4
    dec bc
    or b
    rrca
    and d
    dec c
    ld h, c
    adc b
    cp c
    ret z

    db $fd
    ret z

    ld a, l
    ld a, [$7c7f]
    ld [hl], b
    ld [hl], e
    ld d, b
    jr nc, jr_062_4385

jr_062_4385:
    jr nc, @+$03

    jr nc, jr_062_438f

    ld sp, $3215
    and $10
    add b

jr_062_438f:
    ld [hl], b
    db $e4
    ld [hl], b
    ld [hl], h
    ldh [$c0], a
    db $e4
    db $f4
    ret z

    ret nc

    ret z

    ld hl, sp-$40
    db $e4
    ret c

    sbc a
    ret nz

    or h
    res 5, e
    push bc
    daa
    ret


    dec bc
    pop hl
    ld e, e
    and c
    ldh a, [rNR44]
    xor d
    ld [hl], e
    rra
    ld [hl], d
    ld a, e
    ld d, [hl]
    adc $76
    call nz, $747e
    xor $5f

jr_062_43b9:
    db $e4
    reti


    db $e4

Jump_062_43bc:
    db $d3
    db $ec
    scf
    ret z

    rst $20
    jr jr_062_43b9

    add hl, de
    ld c, d
    dec [hl]
    ld d, a
    add hl, sp
    ld b, c
    ccf
    ld sp, hl
    rlca
    ldh [rNR22], a
    add sp, $17
    ldh [rNR22], a
    db $76
    adc c
    inc c
    rst $38
    ld sp, hl
    cp $7e
    db $fd
    inc a
    rst $38
    ld a, [hl]
    rst $38
    ld e, a
    ccf
    cpl
    rra
    cpl
    rra
    adc a
    rra
    rst $20
    rrca
    dec b
    inc bc
    ld [bc], a
    ld bc, $8041
    ld b, c
    add b
    nop
    nop
    jr nz, @-$3d

    ld a, a
    add b
    ld a, [$d700]
    ld [$801f], sp
    cp e
    ret nz

    cp h
    ret nz

    cp l
    jp nz, $c0bf

    rst $18
    ldh [$c7], a
    ld hl, sp-$1d
    db $fc
    or $ff
    rst $38
    rst $38
    rst $38
    rst $38
    add d
    nop
    and c
    ld b, b
    inc hl
    ret nz

    and c
    ret nz

    pop hl
    ret nz

    add e
    ret nz

    rst $20
    add b
    rst $38
    nop
    ei
    inc b
    ld d, a
    jr z, @+$01

    nop
    ld e, a
    nop
    xor e
    ld b, b
    db $ed
    ld d, b
    call Call_000_0570
    ld hl, sp-$5e
    db $fd
    ld hl, $2efe
    rst $38
    ret nz

    ccf
    jp $2e3c


    ld d, b
    adc [hl]
    ld [hl], b
    call z, Call_000_3270
    add hl, bc
    call z, $fa33
    ld bc, $0fdb
    rrca
    rrca
    rrca
    rrca
    inc bc
    rrca
    ld bc, $4f0f
    add a
    dec e
    rst $20
    rst $38
    rst $30
    rst $30
    rst $38
    ld a, l
    rst $38
    db $e4
    ld a, h
    call nz, $b47e
    ld l, a
    and [hl]
    ld a, a
    di
    ld l, a
    ld h, $7f
    ld [hl], $fb
    jr c, @-$03

    ld a, d
    cp c
    pop af
    jr c, jr_062_44df

    cp c
    ld a, [$dbbd]
    rst $30
    ld b, [hl]
    or c
    ld hl, sp+$23
    jp c, Jump_062_5b23

    rlca
    dec de
    rlca
    rra
    ld [bc], a
    sbc a
    nop
    cp a
    inc b
    sub d
    dec l
    db $eb
    inc d
    rst $28
    inc d
    db $eb
    inc d
    add hl, hl
    sub $3c
    add $5e
    and h
    ld e, [hl]
    and h
    di
    inc c
    db $d3
    inc c
    jp nz, $ee1d

    ld de, $32ed
    ld a, l
    and d
    ld a, [c]
    nop
    xor l
    ret nz

    ld a, [c]
    call z, $ecd2
    ld h, e
    cp h
    sub a
    jr c, jr_062_44e8

    inc e
    rra
    ld a, $7a
    ccf
    dec de
    ld a, a
    ld [hl], b
    ld a, a
    ld [hl], b
    rst $38
    db $fc
    di
    ld a, c
    rst $30
    set 6, a
    ret


    rst $30
    add sp, -$09
    ld a, b
    rst $20
    ld [hl], b
    rst $38
    ret c

    cp a
    adc $bf
    ld c, [hl]
    cp a
    ld c, b
    cp a
    add d
    ld a, a
    adc a
    ld [hl], a
    rla
    rst $28
    rra
    rst $20
    sbc e
    rst $20
    cp [hl]
    rst $00
    or $8f
    ld a, [c]
    adc a
    or b

jr_062_44df:
    rst $08
    db $fc
    rst $08
    xor b
    rst $38
    cp d
    rst $38
    sbc d

jr_062_44e7:
    rst $38

jr_062_44e8:
    sub c
    cp $c5
    cp $c1
    cp $43
    cp $dd
    ld h, e
    cp l
    ld b, e
    nop
    rst $38
    ldh [$1f], a
    ld a, h

jr_062_44f9:
    inc bc
    pop bc
    ccf
    and e

Jump_062_44fd:
    ld e, a
    ld sp, $1e0f
    ld bc, $00f1
    rst $08
    jr nc, jr_062_44e7

    rra
    cp $01
    cp $01
    ldh a, [$8f]
    rst $38
    add b
    db $ed
    ld [bc], a
    call $9c02
    inc bc
    ld a, $a1
    xor $f1
    ld c, [hl]
    ld [hl], c
    ld d, b
    ld l, a
    cp b
    rst $08
    inc [hl]
    adc a
    jr nc, jr_062_4533

    inc c
    inc de
    ld [$3857], sp
    ld b, a
    ld l, b
    rla
    ld a, h
    add e
    ld a, c
    add [hl]
    jr c, jr_062_44f9

    ld e, h

jr_062_4533:
    and e
    ld hl, sp+$07
    ld e, b
    rlca
    ld hl, sp+$07
    ldh [$1f], a
    ret z

    rra
    ld l, b
    sbc a
    add sp, $1f
    ld l, e
    sbc a
    ld [hl], c
    adc a
    ld [hl], b
    adc a
    ld b, e
    cp a
    sub b
    rst $28
    cp l
    jp nz, $c8f7

    rst $38
    ret nz

    adc $e1
    push de
    ld [$eed9], a
    ld [hl], c
    xor $50
    cpl
    ld c, $67
    rst $08
    ld h, a
    ld a, [hl]
    rst $00
    ld a, h
    rst $00
    ld h, h
    rst $00
    ld [hl], h
    rst $00
    push de
    ld h, a
    add hl, de
    rst $20
    ccf
    rst $20
    xor e
    ld [hl], a
    ld h, e
    ld a, a
    and e
    ld a, a
    and e
    ld a, a
    inc hl
    ld a, a
    or e
    ld a, a
    rst $38
    ccf
    sbc $3f
    ldh [$1f], a
    ld [hl], e
    rst $38
    inc de
    rst $38
    xor e
    ld e, a
    rst $08
    ccf
    sbc a
    cpl
    xor [hl]
    ccf
    ld l, [hl]
    ccf
    ld a, h
    ccf
    ld [hl], a
    inc e
    rla
    ld a, h
    ld e, a
    inc a
    sbc d
    ld a, l
    ld e, l
    ei
    ld a, d
    rst $38
    ei
    rra
    rrca
    rra
    ccf
    rra
    ld b, c
    ccf
    ld d, b
    ccf
    sub b
    ld a, a
    ldh [$7f], a
    and b
    ld a, a
    and b
    ld a, a
    jr nz, @+$01

    jr nz, @+$01

    ldh [rIE], a
    ld h, b
    rst $38
    call nz, $c4ff
    rst $38
    ret nc

    rst $28
    ret nz

    rst $38
    ld a, [$ffff]
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
    rst $08
    rst $38
    rst $08
    rst $38
    db $eb
    rst $38
    push hl
    rst $38
    ei
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    scf
    rst $38
    scf
    rst $38
    ld [hl], e
    rst $38
    pop af
    ld a, a
    and c
    ld a, a
    and c
    ld a, a
    and l
    ld a, a
    add a
    ld a, a
    dec bc
    rst $38
    sub e
    rst $28
    db $d3
    rst $28
    set 7, a
    sbc e
    rst $28
    dec bc

jr_062_45fb:
    rst $38
    adc a

jr_062_45fd:
    rst $38
    sbc a

Call_062_45ff:
jr_062_45ff:
    rst $38
    rra
    rst $38
    rst $18
    ccf
    rst $18
    ccf
    ccf
    rst $38
    cp $ff
    ld c, $ff
    rlca
    rst $38
    cp e
    ld b, a
    inc a
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    ld h, b
    sbc a
    cp e
    rst $18
    db $e3
    rst $18
    sub e
    rst $08
    rla
    rst $08
    db $76
    adc a
    jr nc, jr_062_45fb

    ld [hl+], a
    rst $18
    and c
    rst $18
    ld e, h
    add e
    ld e, h
    add e
    jr jr_062_45fd

    jr c, jr_062_45ff

    ret


    rst $30
    di
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, e
    rst $38
    ld a, e
    rst $38
    ld a, c
    rst $38
    ld [hl], c
    rst $38
    ldh a, [rIE]
    ld a, [hl]
    ld sp, hl
    rst $38
    ld sp, hl
    rst $30
    ld sp, hl
    rst $30
    ld sp, hl
    or [hl]

jr_062_4655:
    ld a, c
    or [hl]
    ld a, c
    or [hl]
    ld a, c
    inc l
    di
    jr z, jr_062_4655

    db $e4
    ei
    ld h, [hl]
    ld sp, hl
    ld [hl], b
    rst $38
    ldh a, [$7f]
    jr nc, @+$01

    ld [hl], h
    ei
    ld [hl], b
    rst $38
    ldh a, [rIE]
    or b
    rst $38
    or h
    rst $38
    call nc, $d5ff
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    pop hl
    rst $38
    ldh [rIE], a
    add sp, $37
    inc a
    rst $38
    ld a, l
    rst $38
    scf
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    adc e
    ld a, a
    jp $c03f


    ccf
    ld [hl], h
    adc a
    ld [hl+], a
    db $dd
    ld [bc], a
    db $fd
    ret z

    rst $38
    ret nc

    rst $38
    db $f4
    ei
    or $f9
    cp $f9
    ld a, h
    rst $38
    db $fc
    rst $38
    cp $ff
    ld a, a
    rst $38
    ccf
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
    rrca
    rst $38
    rlca
    rst $38
    add a
    rst $38
    add a
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    xor $ff
    rst $08
    rst $38
    ld h, a
    rst $38
    ld b, $ff
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
    ld c, $ff
    rra
    rst $38
    sbc a
    rst $38
    sbc a
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
    jr jr_062_4743

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_062_4753

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_062_4763

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_062_4773

    ld [hl-], a

jr_062_4743:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_062_4783

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_062_4753:
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

jr_062_4763:
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

jr_062_4773:
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

jr_062_4783:
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
    jr jr_062_4843

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_062_4853

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_062_4863

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    or e
    jr nc, @+$33

jr_062_4843:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    inc sp
    ld [hl], $37
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld bc, $0101

jr_062_4853:
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0101

jr_062_4863:
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    inc b
    inc b
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0401
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    inc b
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    inc b
    nop
    nop
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
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
    ld bc, $0100
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
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld bc, $0909
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rst $38
    ld [bc], a
    ld a, l
    add d
    inc a
    jp $f34e


    ld b, e
    rst $38
    dec bc
    rst $30
    sbc a
    ld h, a
    cp e
    ld b, a
    cp a
    ld b, a
    sbc c
    ld h, a
    sbc c
    ld h, a
    reti


    daa
    db $db
    daa
    db $eb
    rla
    db $eb
    rla
    ld [hl], d
    adc a
    ld [hl], $cf
    or $0f
    rst $30
    rrca
    adc a
    ld a, a
    rst $38
    rst $38
    ld a, [$fcff]
    ei
    ld hl, sp-$01
    db $fd
    rst $38
    ld hl, sp-$01
    ld l, d
    rst $38
    jr nz, @+$01

    jr c, @+$01

    inc a
    rst $38
    jr nz, @+$01

    dec h
    ld a, [$fb24]
    and h
    ld a, a
    xor e
    ld [hl], a
    ld [hl-], a
    rst $38
    ld e, $ff
    ld hl, sp-$01
    ldh [rIE], a
    ldh a, [$ef]
    ldh [rIE], a
    ldh [rIE], a
    pop af
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    ld a, [$f7f5]
    ld hl, sp-$05
    db $fc
    cp [hl]
    rst $38
    ccf
    rst $38
    adc h
    ld a, a
    inc b
    rst $38
    jr nz, @-$1f

    ld [$1eff], sp
    rst $38
    ld e, $ff
    ccf
    rst $38
    ld a, a
    rst $38
    ccf
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
    rst $28
    rst $38
    db $e3
    rst $38
    add e
    rst $38
    add e
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rla
    rst $38
    rra
    rst $38
    ld [$00ff], sp
    rst $38
    inc a
    rst $38
    ld [hl], l
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld sp, hl
    cp $f9
    cp $7f
    db $fc
    sbc l
    ld a, [hl]
    pop de
    ld a, $e4
    dec de
    ld [hl], b
    adc a
    ld [hl], h
    adc a
    db $fc
    rlca
    ld a, d
    add a
    ld a, d
    add a
    ld a, [$3b07]
    rst $00
    ld a, [hl]
    add a
    ld [hl], h
    adc a
    ld l, c
    sbc a
    ld e, e
    cp a
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    ld e, d
    cp a
    ld a, b
    cp a
    or b
    ld a, a
    ld d, b
    rst $38
    ret nc

    rst $38
    ret nz

    rst $38
    sub b
    rst $38
    add c
    rst $38
    nop
    rst $38
    ld bc, $61fe
    cp $63
    db $fc
    scf
    ld hl, sp-$0f
    cp $f0
    rst $38
    adc e
    db $fc
    inc bc
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    add b
    rst $38
    jp $dffe


    ld hl, sp-$65
    ld hl, sp+$1f
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    sub e
    rst $38
    sbc e
    rst $38
    rst $18
    rst $38
    sbc l
    rst $38
    dec e
    rst $38
    dec e
    rst $38
    dec a
    rst $38
    ld bc, $31ff
    rst $08
    ld e, a
    add e
    ld a, l
    add e
    push af
    dec bc
    ld a, a
    adc a
    db $ed
    inc de
    ld c, $f1
    sub b
    rst $38
    ld c, h
    cp a
    ld h, b
    sbc a
    db $f4
    dec bc
    ld [hl], h
    adc e
    nop
    rst $38
    nop
    rst $38
    add h
    ld a, a
    add h
    ld a, a
    ld [bc], a
    rst $38
    ld bc, $48ff
    cp a
    ld b, h
    cp a
    dec b
    cp $21
    sbc $00
    rst $38
    nop
    rst $38
    ld [hl+], a
    rst $38
    ld a, b
    rst $38
    ld a, l
    rst $38
    db $dd
    rst $38
    ld [bc], a
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    pop hl
    rst $38
    add hl, sp
    rst $38
    add hl, sp
    rst $38
    add hl, de
    rst $38
    ld c, c
    cp a
    dec c
    rst $38
    dec c
    rst $38
    dec sp
    rst $38
    ld hl, sp-$01
    ld sp, hl
    rst $38
    ld a, l
    rst $38
    ld [$08ff], sp
    rst $38
    db $10
    rst $38
    add c
    cp $e0
    rst $38
    ldh [rIE], a
    ld a, [c]
    rst $38
    or $ff
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    sbc h
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    sub [hl]
    rst $38
    db $d3
    rst $38
    db $d3
    rst $38
    set 7, a
    rst $20
    rst $38
    rst $20
    ei
    call $83f3
    rst $38
    ld d, h
    cp a
    add sp, $1f
    pop af
    ld e, $d0
    ccf
    call nc, $d93f
    ld a, $a0
    ld a, a
    ld b, [hl]
    ld sp, hl
    sbc h
    db $e3
    rst $38
    add [hl]
    dec l
    sbc $1e
    rst $38
    ld a, [hl-]
    db $fc
    ld a, $f8
    cp $78
    db $f4
    ld hl, sp-$08
    db $fc
    db $f4
    ld hl, sp-$38
    ldh a, [$d8]
    ldh [$90], a
    ldh [$90], a
    ldh [rNR10], a
    ldh [$ee], a
    ldh a, [$fc]
    ldh a, [$e8]
    ldh a, [$e8]
    ldh a, [$fc]
    ldh a, [$f7]
    ld hl, sp-$0f
    cp $ee
    ldh a, [$cc]
    ldh a, [rP1]
    ld hl, sp-$48
    ld e, h
    or $08
    sbc c
    ld b, $8c
    rlca
    dec c
    add [hl]
    ld c, $0f
    inc bc
    rrca
    ld e, a
    rrca
    rla
    rrca
    inc c
    rra
    cp d
    rra
    xor $1f
    ld e, a
    ldh [rIE], a
    ret nz

    pop af
    rst $38
    db $ec
    di
    xor [hl]
    pop af
    xor [hl]
    pop af
    ld l, $f1
    ld c, $f1
    rra
    ldh a, [rIF]

jr_062_4b9f:
    ldh a, [$8f]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$1f
    add sp, -$65
    db $ec
    call z, $dfff
    rst $28
    rst $10
    rst $28
    call $deff
    rst $38
    ld b, $ff
    jr jr_062_4b9f

    add sp, -$09
    db $f4
    ei
    ld [hl], a
    ld hl, sp-$0b
    ld a, d
    dec sp
    db $fc
    ld a, $ff
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld e, $ff
    sbc l
    rst $38
    sbc c
    rst $38
    ret


    rst $38
    ld c, b
    rst $38
    ld b, h
    rst $38
    ld b, b
    rst $38
    rlca
    rst $38
    daa
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    rrca
    rst $38
    xor a
    rst $38
    xor a
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
    ld a, e
    rst $38
    ld a, c
    rst $38
    add hl, sp
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    add hl, bc
    rst $38
    dec bc
    rst $38
    adc l
    ld a, a
    adc [hl]
    ld a, a
    ld l, [hl]
    rst $38
    ld [hl], a
    rst $38
    rst $20
    rst $38
    jp $8bff


    rst $38
    sbc c
    rst $38
    ld sp, hl
    rst $38
    ld a, d
    db $fd
    ld a, e
    db $fc
    dec sp
    db $fc
    inc a
    rst $38
    inc a
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    ld d, c
    rst $38
    db $d3
    rst $38
    or $ff
    add sp, -$01
    rst $18
    ldh [$bf], a
    ret nz

    and e
    call c, $ff90
    ld d, b
    rst $38
    push bc
    nop
    ret nz

    nop
    ld l, b
    add b
    ld l, c
    add b
    add b
    nop
    xor $01
    or c
    cp $3f
    ret nz

    ld a, [c]
    ld bc, $03fc
    ld l, [hl]
    sub c
    ld a, a
    nop
    ld a, c
    add [hl]
    ld l, c
    add [hl]
    ld a, a
    add b
    rst $38
    nop
    cp e
    nop
    ei
    nop
    rst $18
    nop
    sbc a
    nop
    ld c, $01
    rra
    dec b
    sbc c
    ldh [$bb], a
    ret nz

    ld c, a
    add b
    ld l, [hl]
    add b
    call z, $9400
    ld l, b
    rrca
    ld hl, sp+$1b
    db $fc
    inc e
    cp $00
    cp $59
    cp [hl]
    ld e, d
    cp l
    add d
    dec a
    ld b, d
    dec a
    call nz, Call_062_5c3b
    inc hl
    jp nz, $a4bc

    ret c

    ld e, b
    ldh [$30], a
    ret nz

    or b
    ld b, b
    and b
    ld b, b
    jp hl


    ld b, $e0
    ld e, $db
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    add hl, hl
    rst $38
    rra
    ldh a, [$57]
    cp b
    and a
    ld e, b
    or a
    ld c, b
    rst $30
    ld [$38c7], sp
    db $e3
    inc e
    add sp, $1f
    add sp, $1f
    jr c, @+$01

    rst $38
    db $fc
    ld hl, sp-$01
    cp d
    db $fd
    dec e

Jump_062_4cb3:
    rst $38
    inc e
    rst $38
    ld a, [de]
    db $fd
    nop
    rst $38
    ld de, $95ee
    ld l, [hl]
    db $fd
    ld b, $fc
    rlca
    inc b
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld [$b0ff], sp
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $ed
    rst $38
    cp $ff
    db $fc
    rst $38
    ld a, [$faff]
    rst $38
    cp d
    rst $38
    sbc e
    rst $38
    sbc e
    rst $38
    sbc e
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    ld a, b
    rst $38
    pop hl
    rst $38
    db $e3
    rst $38
    jp $c7ff


    rst $38
    ret c

    rst $38
    ld [hl], b
    rst $38
    inc de
    db $ec
    rst $38
    ret nz

    rst $38
    ret nz

    cp a
    ret nz

    ld a, [hl]
    add c
    cp b
    ld b, a
    ld [hl], l
    adc a
    ldh a, [rIF]
    cp $01
    db $fd
    ld bc, $01df
    ld a, $c3
    sbc e
    ld h, a
    scf
    rrca
    rrca
    rlca
    scf
    rrca
    ld e, e
    inc a
    jr @-$0e

    jp nc, $eb3c

    inc d
    sbc a
    db $e4
    ld a, [hl]
    add c
    ld [hl], b
    adc a
    sbc a
    ld c, $bc
    ld e, $7e
    inc a
    ld c, h
    jr nc, jr_062_4d6b

    ld h, b
    ld de, $2e6f
    ld e, a
    ld a, [hl]
    sbc a
    sbc e
    ccf
    di
    ccf
    cp l
    ld a, [hl]
    rst $30
    xor $e6
    rst $38
    ld sp, hl
    rst $38
    ld a, d
    rst $38
    xor h
    ld a, a
    ld c, c

jr_062_4d6b:
    ccf
    xor d
    ld a, l
    jr nz, jr_062_4dcf

    ld d, d
    nop
    inc de
    inc c
    rst $08
    jr c, @+$09

    ld hl, sp+$03
    ld hl, sp+$0b
    ldh a, [rSC]
    ldh a, [$0d]
    ld a, [c]
    dec bc
    db $f4
    ld a, [de]
    db $e4
    add b
    db $fc
    ld c, $f8
    ld a, [hl-]
    ld hl, sp+$76
    ld hl, sp-$04
    ldh a, [rIE]
    ldh a, [$8f]
    ldh a, [$86]
    ld sp, hl
    add a
    ld hl, sp-$75
    db $f4
    ld a, [bc]
    push af
    and a
    ld a, b
    or a
    ld l, b
    adc a
    ld [hl], b
    add sp, $77
    xor d
    ld [hl], l
    xor e
    ld [hl], h
    xor c
    db $76
    xor b
    ld [hl], a
    inc c
    di
    adc c
    db $76
    adc b
    ld [hl], a
    ld [$c0f7], sp
    rst $38
    ld e, a
    ldh [$7f], a
    ret nz

    rlca
    ld hl, sp-$35
    inc a
    di
    inc c
    pop af
    ld c, $82
    ld a, a
    db $e3
    rra
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
    ccf

jr_062_4dcf:
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    ld bc, $8fff
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rra
    rst $38
    inc b
    rst $38
    ld b, $ff
    rlca
    rst $38
    db $fc
    rst $38
    add b
    rst $38
    db $e3
    db $fc
    rst $20
    ld hl, sp-$0a
    ld sp, hl
    ld hl, sp-$01
    cp h
    rst $38
    inc b
    rst $38
    inc de
    rst $28

jr_062_4e12:
    add e
    rst $38
    add e
    rst $38
    ei
    rst $38
    ld [hl-], a
    rst $38
    cp a
    ld a, b
    and a
    ld a, b
    dec hl
    db $f4
    and e
    ld a, h
    inc c
    ldh a, [$3c]
    jp $ff07


    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    jp Jump_062_7eff


    add c
    db $e3
    db $fc
    cp $ff
    rst $38
    rst $38
    db $fc
    rst $38
    sbc c
    ldh [$b0], a
    nop
    ld l, h
    nop
    di
    inc c
    adc e
    ld a, h
    cp $01
    cp $01
    cp a
    ld b, e
    ld h, a
    ld bc, $030d
    jr nc, jr_062_4e12

    ld e, a
    nop
    sbc a
    nop
    sbc h
    inc bc
    ld e, $03
    ei
    rlca
    ld a, [c]
    rlca
    ld a, b
    rlca
    ld sp, hl
    ld [hl], b
    ld a, [c]
    pop af
    rst $20
    di
    pop af
    rst $20
    rst $38
    rst $20
    push hl
    xor $8a
    ld a, h
    rst $08
    ldh a, [rSCX]
    ret nz

    add b
    ld b, b
    ret nz

    nop
    ld b, b
    add b
    ld b, $81
    ld h, [hl]
    sbc a
    ld hl, sp+$7f
    ei
    daa
    call $f5e3
    ret z

    ld [c], a
    call z, $c0ef
    rst $28
    add c
    ld [hl], a
    add e
    ei
    add a
    ld a, a
    add a
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    db $fc
    ld a, a
    cp b
    ld a, a
    inc sp
    db $fc
    scf
    ld hl, sp+$33
    db $fc
    ld a, [c]
    ld a, l
    or d
    ld a, l
    ld d, e
    cp h
    ld e, e
    cp h
    ld e, e
    cp h
    ld a, a
    sbc b
    ld a, e
    sbc h
    ld l, a
    sbc h
    dec de
    db $fc
    dec e
    cp $fe
    rra
    rst $20
    ld e, $71
    adc [hl]
    add sp, $1f
    adc b
    ld a, a
    rst $00
    jr c, jr_062_4f00

    cp [hl]
    ld b, $fb
    set 7, a
    db $fd
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, c
    rst $38
    cpl
    rst $38
    rra
    rst $38
    add a
    rst $38
    rst $00
    rst $38
    ldh [rIE], a
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fc
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

jr_062_4ef2:
    cp $ff
    or $ff
    ld a, [c]
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38

jr_062_4f00:
    ld a, a
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rrca
    rst $38
    ld c, [hl]
    cp a
    ld b, e
    cp l
    adc c
    rst $30
    and a
    ld hl, sp-$11
    ld hl, sp-$04
    rst $38
    nop
    rst $38
    ld [hl], d
    adc l
    cp c
    ld b, [hl]
    rst $38
    rlca
    rst $38
    rlca
    cp $07
    rst $20
    rst $38
    sub d
    rst $38
    cp $ff
    db $f4
    rst $38
    reti


    and $37
    ret z

    jr c, jr_062_4ef2

    cp d
    ld b, b
    rlca
    nop
    sbc [hl]
    ld bc, $ff82
    jp nc, $103d

    jr nz, @+$14

    inc h
    sbc $2f
    adc a
    ld a, a
    ld a, l
    cp $e4
    ld hl, sp-$50
    ret nz

    xor $90
    ld a, h
    add b
    ld [hl-], a
    call z, $fcf7
    cp $ff
    add e
    rst $38
    ldh [rTAC], a
    ld b, c
    nop
    add hl, bc
    nop
    ld a, [hl]
    nop
    db $fc
    nop
    ld c, h
    or b
    push bc
    ld hl, sp-$01
    ld sp, hl
    and $ff
    ld a, a
    add a
    dec b
    inc bc
    nop
    nop
    ld bc, $8300
    nop
    nop
    nop
    add hl, de
    nop
    ld a, a
    jr c, @+$01

    db $fc
    or a
    ld a, d
    ld sp, hl
    cp $ff
    rst $38
    pop af
    rst $38
    db $ed
    or $ef
    ld [hl], h
    db $76
    db $fd
    ld [$09ff], sp
    cp $54
    and e
    jp Jump_062_433f


    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, h
    rst $38
    dec a
    cp $3f
    cp $07
    cp $47
    cp [hl]
    ld c, a
    cp [hl]
    daa
    cp $a7
    ld a, [hl]
    daa
    cp $a7
    ld a, [hl]
    xor [hl]
    ld a, a
    xor a
    ld a, a
    cp $3f
    cp h
    ld a, a
    dec hl
    db $fc
    and $39
    ret nc

    ccf
    ld d, e
    cp l
    ld d, $f9
    and $19
    ld [$c81d], a
    ccf
    ld hl, sp-$01
    inc c
    rst $38
    inc c
    rst $38
    cpl
    rst $38
    rst $38
    rst $38
    call c, $fcff
    rst $38
    rst $28
    rst $38
    xor $ff
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
    xor a
    rst $38
    rra
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
    add sp, -$09
    ld hl, sp-$19
    rst $20
    rst $38
    rst $18
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    rst $00
    rst $38
    ld l, e
    rst $38
    ld h, e
    rst $38
    rst $00
    rst $38
    cp a
    ret nz

    or l
    jp z, $f807

    rst $38
    nop
    rra
    ldh [$c0], a
    rst $38
    sub l
    db $eb
    ld [hl], h
    adc e
    db $fc
    inc bc
    rst $38
    nop
    dec c
    di
    ld b, e
    cp a
    add e
    ld a, a
    ret z

    scf
    add $39
    jr nc, @+$01

    db $fc
    rst $38
    ret nz

    rst $38
    adc [hl]
    pop af
    ld e, b
    add a
    xor a
    ld e, a
    ld a, a
    nop
    db $e3
    nop
    ld b, $f8
    or e
    db $fc
    ld h, e
    db $fc
    ld bc, $00fc
    db $fc
    rlca
    ld hl, sp+$0e
    inc b
    db $f4
    inc c
    db $e4
    inc e
    inc l
    call nz, $0484
    ldh [rTMA], a
    ld a, e
    ld [hl], $7e
    ccf
    sub [hl]
    ld l, a
    di
    xor $76
    rst $28
    cp a
    ld a, a
    ld b, d
    rst $38
    ld l, e
    add h
    ld [hl], c
    ld b, $bb
    ld b, $77
    add b
    ld [hl], b
    add c
    db $f4
    ld bc, $00fd
    inc a
    inc bc
    jr c, jr_062_507f

    ld c, $03
    ld c, b

jr_062_507f:
    rlca
    ld a, [$7007]
    rlca
    cp [hl]
    rlca
    and [hl]
    rrca
    inc [hl]
    rrca
    ldh a, [rIF]
    cp a
    nop
    jr c, jr_062_5090

jr_062_5090:
    rrca
    rst $38
    cp a
    rst $38
    inc e
    rst $38
    ld c, $ff
    ld b, $ff
    ld b, $ff
    add [hl]
    ld a, a
    add $3f
    jp nz, $f83f

    rlca
    db $fc
    inc bc
    db $fc
    inc bc
    db $fd
    inc bc
    ei
    rlca
    inc e
    rst $38
    inc b
    rst $38
    db $e4
    rra
    ld [c], a
    rra
    ld [c], a
    rra
    ld [bc], a
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
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    di
    rst $38
    ld sp, hl
    rst $38
    cp $ff
    rst $20
    rst $38
    di
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ld a, a
    rst $38
    rst $28
    rst $38
    and a
    rst $38
    and e
    rst $38
    and l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    ld h, e
    rst $38
    inc hl
    rst $38
    ld hl, $20ff
    rst $38
    ld [$27f7], sp
    rst $18
    adc b
    rst $38
    adc b
    rst $38
    inc e
    rst $38
    inc a
    rst $38
    db $fd
    cp $05
    cp $5c
    rst $38
    ld hl, sp-$01
    ld a, [$fcfd]
    ei
    ld hl, sp-$01
    add [hl]
    ld a, a
    call c, $d03f
    ccf
    ld sp, hl
    ld a, $fd
    ccf
    ld e, a
    rst $38
    ld a, c
    add [hl]
    rst $38
    inc b
    ld [hl], e
    inc c
    sbc a
    ld h, b
    ccf
    ret nz

    ld hl, sp+$07
    call z, Call_000_1531
    ei
    dec de
    rst $30
    scf
    rst $38
    rst $38
    ccf
    add hl, sp
    rst $38
    rst $38
    ld sp, hl
    ei
    db $fd
    db $ec
    pop af
    xor $01
    cp h
    ld b, e
    dec c
    add d
    push bc
    ld [bc], a
    jp nz, $ff04

    nop
    dec a
    jp nz, $e619

    or d
    ld a, h
    adc e
    ld a, h
    adc c
    ld [hl], a
    ld l, l
    inc bc
    ld [hl], b
    rlca
    ld c, b
    rlca
    ret


    ld b, $db
    inc b
    ld a, h
    nop
    nop
    nop
    ld bc, $0302
    inc bc
    nop

jr_062_5169:
    inc bc
    rlca
    nop
    ld e, $00
    cpl
    db $10
    dec e
    nop
    dec l
    db $10
    cp c
    ld a, h
    ld a, [hl-]
    db $fd
    ld a, [$ff3d]
    inc c
    jp hl


    inc c
    ret


    nop
    jr jr_062_5169

    inc [hl]
    rst $08
    inc c
    rst $38
    ld a, a
    rst $08
    ld e, c
    adc a
    ei
    rrca
    cp d
    rrca
    add hl, sp
    ld c, $ff
    rst $38
    cp a
    rst $38
    adc a
    ld a, a
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    inc a
    rst $38
    inc c
    rst $38
    ld c, h
    rst $38
    ld b, [hl]
    rst $38
    add [hl]
    ld a, a
    sbc a
    ld a, a
    ld e, a
    cp a
    adc a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    inc bc
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    dec sp
    rst $38
    ld [hl], a
    cp a
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rst $18
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
    rst $38
    db $db
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
    rst $20
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    db $eb
    rst $38
    ld a, a
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    cpl
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    dec c
    rst $38
    adc h
    rst $38
    adc b
    rst $38
    ld [$68ff], sp
    sbc a
    ld a, c
    adc a
    cpl
    rst $18
    ld b, e
    cp a
    ld a, [hl]
    adc a
    ld e, $ff
    cp $ff
    and $ff
    ld b, $ff
    db $fd
    ld a, a
    db $ec
    inc de
    rst $38
    nop
    ld hl, sp+$07
    ld h, [hl]
    sbc a
    inc bc
    rst $38
    db $76
    ret nz

    ld a, a
    add b
    db $fc
    inc bc
    add [hl]
    ld a, b
    rra
    ldh [$fa], a
    dec b
    ret c

    ld hl, $0102
    db $e3
    rra
    add a
    rst $38
    sbc a
    ld a, a
    adc $3f
    ld c, a
    ccf
    ld c, a
    ccf
    ld l, a
    ccf
    ld c, a
    ccf
    dec c
    rrca
    rrca
    ccf
    ld l, $ff
    rst $38
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
    rra
    rrca
    rrca
    rst $28
    rra
    adc e
    ld a, h
    inc b
    jr c, jr_062_5285

    jr nc, jr_062_52d7

    db $10
    cp a
    ld d, b
    cp e
    ld d, b
    sbc $30
    ld a, a
    or b
    ld l, a
    or b
    ccf
    jr nz, jr_062_52fc

    jr nz, jr_062_52be

    ldh [rIE], a
    ld h, b
    cp a
    ld h, b
    sbc a

jr_062_5285:
    ld h, b
    ld c, [hl]
    ld h, c
    ld l, h
    ld h, e
    ld a, $61
    dec sp
    ld h, a
    rst $38
    ld a, a
    rst $38
    rst $38
    cp $ff
    ld a, [hl]
    rst $38
    ld a, $ff
    cp [hl]
    rst $38
    xor $ff
    adc $ff
    xor $ff
    rrca
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    db $ec
    rst $38
    dec a
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    db $ed
    rst $38
    db $ec
    rst $38

jr_062_52be:
    cp $ff
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
    dec a
    rst $38
    db $ed
    rst $38
    adc l
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    rst $38
    rst $38
    rst $28

jr_062_52d7:
    rst $38
    rst $38
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
    sbc a
    rst $38
    sbc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    sbc a
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
    cp $ff
    ld a, [hl]
    rst $38

jr_062_52fc:
    ld [hl], a
    rst $38
    rst $30
    rst $38
    ret nz

    rst $38
    adc b
    rst $30
    adc l
    di
    db $ec
    di
    ldh a, [rIE]
    inc b
    rst $38
    db $10
    rst $28
    ldh [rIE], a
    ldh [rIE], a
    jp hl


    rst $38
    rst $08
    rst $38
    and e
    rst $38
    ld de, $01ff

jr_062_531b:
    rst $38
    ld c, c
    or a
    ld a, [de]
    push hl
    ld sp, hl
    rlca
    adc d
    ld [hl], a
    sub e
    rst $28
    ld hl, sp+$07
    ei
    inc b
    rst $18

jr_062_532b:
    jr nz, jr_062_533c

    ldh a, [$03]
    db $fc
    ld e, d
    rlca
    rst $10
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    jr nz, jr_062_531b

jr_062_533c:
    ld [hl-], a
    call z, Call_000_00f3
    db $fd
    inc bc
    ret nz

    rst $38
    ld [hl], b
    adc a
    ldh [$1f], a
    ld h, $d9
    jr nz, jr_062_532b

    pop de
    xor $c2
    db $fd
    ld c, c
    add b
    ret z

    add b
    add b
    ret nz

    add b
    ret nz

    and b
    ret nz

    db $10
    ldh [$c0], a
    db $fc
    ld hl, sp-$04
    ld a, [$fcfc]
    cp $fe
    rst $38

jr_062_5366:
    cp $ff
    pop af
    ld c, $83
    nop
    nop
    nop
    ret nz

    nop
    inc a
    ret nz

    ret nc

    jr z, jr_062_533c

    jr c, jr_062_53ee

    jr c, jr_062_5366

    ld [hl-], a
    or c
    ld a, [hl]
    rst $38
    inc a
    ld a, b
    cp a
    call z, $a130
    ld e, h
    ld b, l
    or b
    ld [hl], b
    add b
    rst $08
    nop
    add a
    nop
    ld e, b
    add b
    ret z

    ldh [$7f], a
    rst $38
    rst $38
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
    cp $ff
    cp $ff
    cp $ff
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
    ld l, [hl]
    rst $38
    ld l, $ff
    rrca
    rst $38
    xor $ff
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
    ld a, a
    rst $38
    call c, $dcff
    rst $38
    ld hl, sp-$01
    ld a, b
    rst $38
    cp $ff
    sbc a
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    cp $ff

jr_062_53ee:
    cp $ff
    rst $38
    rst $38
    dec a
    rst $38
    ccf
    rst $38
    ld c, l
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ei
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld e, a
    cp a
    inc l
    rst $18
    ld bc, $c0fe
    rst $38
    ldh [rIE], a
    db $e3
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ld [c], a
    rst $38
    jp nz, $d4ff

    rst $38
    di
    db $fc
    add c
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    ld a, e
    rst $38
    cp a
    ld a, a
    cp a
    ld a, a
    or b
    ld a, a
    rst $20
    ld a, b
    ld a, h
    rst $38
    ccf
    rst $38
    rst $38
    ccf
    cp a
    ld a, a
    ld l, a
    ldh a, [$2b]
    db $f4
    and $18
    adc e
    ld [hl], h
    ccf
    ret nz

    cp [hl]
    ld b, c
    add sp, $07
    ld h, d
    add a
    rrca
    rst $20
    pop af
    rlca
    or e
    rlca
    ld c, b
    inc bc
    or a
    ld c, e
    add e
    ld a, a
    ldh [$1f], a
    ld l, c
    rra
    dec sp
    rrca
    ld h, a
    rra
    rlca
    ccf
    ld d, e
    ccf
    ld l, a
    rra
    jp c, Jump_062_603d

    rst $38
    and a
    ret c

    rlca
    ld hl, sp-$21
    ldh [$6e], a
    pop af
    or [hl]
    ld a, c
    ld c, h
    ccf
    scf
    rrca
    rst $20
    inc bc
    cp a
    inc bc
    cp a
    inc bc
    cp a
    inc bc
    rst $38
    inc bc
    ld a, a
    add e
    add h
    inc bc
    and d
    dec c
    sub b
    adc [hl]
    ld a, [bc]
    sbc h
    add b
    ld a, a
    ccf
    ld a, a
    rst $38
    ld a, a
    cp a
    ld a, a
    cp $ff
    cp $ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    jp hl


    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    cp b
    rst $38
    ld e, l
    rst $38
    db $fd
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
    cp $ff
    ld a, $ff
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, l
    rst $38
    db $fd
    rst $38
    push af
    rst $38
    rst $30
    rst $38
    ld a, [c]
    rst $38
    ld a, [$ffff]
    rst $38
    ld a, [hl]
    rst $38
    ld sp, hl
    cp $fe
    rst $38

Jump_062_5500:
    ret z

    or a
    ldh [$9f], a
    sbc [hl]
    rst $38
    ei
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    jp Jump_000_1aff


    rst $38
    reti


    ccf
    jr @+$01

    ret c

    rst $38
    inc e
    rst $38
    nop
    rst $38
    ld a, [hl-]
    rst $38
    rra
    rst $38
    dec c
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    db $f4
    rst $38
    ldh [rIE], a
    ret nc

    ccf
    ld a, a
    add b
    call nz, $fffb
    rst $38
    sbc [hl]
    pop hl
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    pop af
    ld c, $46
    cp c
    ld a, [hl]
    add c
    ld l, [hl]
    sub c
    rst $38
    add b
    rst $20
    add b
    ld b, c
    add b
    call $de03
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld sp, hl
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ei
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld d, a
    xor a
    pop bc
    ccf
    inc sp
    rrca
    dec sp
    rlca
    db $10
    rrca
    nop
    rrca
    ld c, $00
    inc b
    nop
    add h
    nop
    ld c, b
    add b
    ld a, b
    add b
    dec a
    ret nz

    cp e
    call nz, $c8b4
    add hl, bc
    ldh a, [$28]
    ret nc

    inc a
    ret nz

    sbc b
    ld b, b
    db $f4
    ld [bc], a
    jp c, Jump_000_0d01

    ei
    rst $38
    rst $38
    db $fc
    rst $38
    add e
    db $fc
    ccf
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
    cp $ff
    cp $ff
    cp $ff
    ld e, [hl]
    rst $38
    sbc $ff
    sbc $ff
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    sbc [hl]
    rst $38
    cp [hl]
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld [hl], b
    rst $38
    db $ec
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
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
    ld e, a
    rst $38
    ld a, a
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
    ld a, e
    rst $38
    rst $20
    rst $38
    ld b, $ff
    ld [hl], b
    rst $38
    db $f4
    rst $38
    rst $38

jr_062_55eb:
    rst $38
    rst $38
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
    db $fd
    rst $38
    ccf
    rst $38
    ld b, l
    rst $38
    ld bc, $70ff
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    inc c
    rst $38
    db $fc
    rst $38
    db $fd
    cp $fd
    cp $fe
    rst $38
    ld [hl], b
    rst $38
    inc hl
    rst $18
    dec e
    db $e3
    ld a, a
    add c
    db $fd
    inc bc
    ld bc, $83ff
    rst $38

jr_062_5620:
    jr nz, @-$1f

    jr c, jr_062_55eb

    dec a
    jp nz, $e39c

    inc bc
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
    and [hl]
    ld e, a
    rra
    rst $38
    cp $ff
    ld h, l
    rst $38
    reti


    ld h, [hl]
    adc b
    ld a, a
    adc l
    ld a, a
    cp a
    ld a, a
    ld a, l
    cp $6f
    ldh a, [$57]
    add sp, $1f
    ldh [$c7], a
    jr c, jr_062_5620

    ccf
    ld e, a
    rst $38
    ld a, $f3
    scf
    ld hl, sp+$31
    ld hl, sp-$0f
    ld hl, sp+$71
    ld hl, sp+$23
    ld hl, sp+$6f
    cp b
    rst $28
    ld hl, sp-$02
    ld sp, hl
    ld a, [$fefd]
    db $fd
    add d
    db $fd
    ret nc

    rst $38
    add c
    cp $fd
    ld [bc], a
    ld e, l
    ld [bc], a
    rrca
    nop
    rst $30
    rrca
    rst $30
    rrca
    call nz, $483f
    or a
    call $fd32
    ld [bc], a
    rst $38
    nop
    rst $30
    nop
    ld bc, $0700
    jr @+$81

    jr c, jr_062_56ef

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    pop af
    rst $38
    ld [hl], c
    rst $38
    pop af
    rst $38
    pop de
    rst $38
    ldh a, [rIE]
    or b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld a, e
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
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
    or $ff
    ld a, l
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $30
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
    cp $ff
    db $dd
    rst $38
    call $d5ff
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    sbc a

jr_062_56ef:
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    ld e, $ff
    rrca
    rst $38
    ld e, [hl]
    cp a
    rst $38
    rst $38
    ldh a, [rIE]
    ld [c], a
    db $fd
    pop af
    cp $7e
    rst $38
    ccf
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld sp, $73ff
    cp a
    sub e
    ld a, a
    rla
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    di
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    ld [$0cff], sp
    rst $38
    jr c, @+$01

    add sp, -$01
    add a
    rst $38
    adc $ff
    ld b, $ff
    ld b, $ff
    add a
    rst $38
    and e
    rst $38
    add a
    rst $38
    ld c, $f7
    db $e3
    rra
    ld e, a
    rst $38
    rst $38
    rst $38
    ld e, [hl]
    and c
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
    cpl
    ldh a, [$f7]
    ld hl, sp+$3a
    db $fd
    pop hl
    ld e, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    or e
    ld c, h
    ld bc, $75fe
    cp $be
    rst $38
    ld [hl], c
    rst $38
    sbc a
    ldh [$fe], a
    add b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    dec [hl]
    nop
    rst $38
    ld bc, $3fce
    add sp, -$01
    rst $38
    ldh a, [$7e]
    ld sp, hl
    cp h
    ld a, a
    ccf
    ld a, $5e
    ccf
    call c, $dc3f
    ccf
    call c, $dc3f
    ccf
    db $fc
    rst $38
    adc h
    rst $38
    ld a, h
    adc a
    ld d, h
    xor a
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
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, b
    rst $38
    ld hl, sp-$01
    ld a, [hl]
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
    rst $30
    rst $38
    rst $30
    rst $38
    push hl
    rst $38
    di
    rst $38
    rst $38
    rst $38
    di
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    push hl
    rst $38
    push af
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
    cp $ff
    cp $ff
    cp $ff
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
    ccf
    rst $38
    ccf
    rst $38
    dec a
    rst $38
    or a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld h, e
    rst $38
    ld b, l
    ei
    ld h, b
    rst $38
    nop
    rst $38
    ld b, $ff
    add a
    rst $38
    and a
    rst $38
    and e
    rst $38
    ld sp, $10ff
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld hl, sp-$01
    ld [hl], b
    rst $38
    nop
    rst $38
    sub b
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld b, b
    cp a
    jr nz, @+$01

    db $fc
    rst $38
    db $fc
    rst $38
    ldh [rIE], a
    ld [c], a
    rst $38
    ldh [rIE], a
    ret nc

    rst $28
    ldh [$df], a
    or b
    rst $08
    ld hl, sp+$47
    sbc a
    ld h, b
    rst $08
    jr nc, @-$2c

jr_062_5847:
    dec a
    call nz, $eb3f
    scf
    cp c
    ld h, a
    jr z, jr_062_5847

    sbc $31
    rst $20
    jr @-$0d

    ld c, $d2
    ccf
    rst $00
    ccf
    rst $20
    ccf
    pop af
    ld a, a
    sub e
    rst $38
    sbc a
    rst $38
    ldh [rIE], a
    cp e
    ld b, h
    ld a, a
    nop
    db $fc
    inc bc
    ccf
    nop
    ld a, a
    nop
    cp a
    ld a, a
    rst $38
    rst $38
    add hl, de
    rst $38
    dec a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    sbc a
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld a, a
    cp a
    ccf
    rst $38
    add hl, bc
    rst $38
    rst $38
    nop
    rst $38

jr_062_588b:
    nop
    ld l, a
    sub b
    rst $20
    jr jr_062_588b

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
    sbc $ff
    sbc $ff
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
    rst $38
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
    rst $18
    rst $38
    rst $18
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
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    ld a, e
    rst $38
    ld a, c
    rst $38
    ld a, a
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
    or $ff
    or $ff
    rst $20
    cp $ee
    rst $38
    cp $ff
    ld [c], a
    rst $38
    db $eb
    rst $30
    di
    rst $38
    ei
    rst $38
    db $fc
    rst $38
    call nz, Call_000_16ff
    rst $28
    nop
    rst $38
    add c
    cp $8f
    rst $38
    db $fd
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    jp hl


    rst $38
    db $fc
    rst $38
    inc a
    rst $38
    pop hl
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    inc bc
    rst $38
    ld bc, $81ff
    rst $38
    pop af
    rst $38
    rra
    rst $38
    pop bc
    ccf
    nop
    rst $38
    nop
    rst $38
    ld bc, $ffff
    rst $38
    ld h, d
    rst $38
    ld h, b
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    ld c, $ff
    rst $18
    ccf
    ld [hl], a
    sbc a
    inc hl
    rst $18
    inc hl
    rst $18
    add a
    rst $38
    rrca
    rst $38
    ld l, a
    sbc a
    and b
    ld e, a
    db $e3
    inc e
    pop hl
    ld e, $e8
    rla
    cp $01
    rst $38
    nop
    cp a
    ret nz

    rst $38
    ret nz

    sbc a
    ldh [rNR34], a
    pop hl
    xor [hl]
    ld [hl], c
    ld l, a
    ldh a, [$8f]
    ld [hl], b
    xor d
    ld e, l
    db $fc
    rst $38
    ld a, [$fbfd]
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    cp l
    cp $fd
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    ld hl, sp-$01
    db $fc
    inc bc
    cp $01
    rst $38
    ld bc, $3fcf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or $ff
    or $ff
    or $ff
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    di
    rst $38
    ld a, [c]
    rst $38
    ld a, [c]
    rst $38
    ei
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
    db $e3
    rst $38
    db $eb
    rst $38
    db $ec
    rst $38
    add sp, -$01
    db $ed
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
    cp a
    rst $38
    rst $18
    rst $38
    cp [hl]
    rst $38
    ld a, $ff
    inc a
    rst $38
    sbc h
    rst $38
    sbc $ff
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
    sbc a
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
    rst $28
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    jr @+$01

    ld a, [bc]
    rst $38
    jp c, Jump_062_79ff

    rst $38
    add hl, sp
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ld [hl], a
    rst $38
    cp a
    ld a, a
    inc sp
    rst $38
    sub e
    rst $38
    add hl, sp
    rst $38
    nop
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc hl
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld hl, sp-$01
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, [$baff]
    rst $38
    ld b, $ff
    rst $30
    rrca
    adc e
    ld a, a
    ld [$c1ff], sp
    ccf
    ld bc, $80ff
    rst $38
    add b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    ld a, a
    rst $38
    cp a
    ld a, a
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    adc a
    ld a, a
    cp a
    ld a, a
    adc $3f
    ld l, [hl]
    sbc a
    ld b, [hl]
    cp a
    ld l, [hl]
    sbc a
    and c
    ld e, a
    db $e3
    rst $38
    pop hl
    rst $38
    ld l, [hl]
    rst $38
    dec bc
    db $fc
    db $10
    rst $28
    inc a
    jp Jump_062_4cb3


    di
    inc c
    ei
    inc b
    ei
    inc b
    pop af
    ld c, $81
    cp $05
    cp $fd
    ld c, $ee
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    ld l, [hl]
    rst $38
    or $ff
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
    cp $ff
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
    ld a, e
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
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
    cp a
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    adc a
    rst $38
    rst $20
    rst $38
    xor $ff
    di
    rst $38
    rst $20
    rst $38
    cp $ff
    db $fc
    rst $38
    cp $ff
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
    rst $20
    rst $38
    rst $28
    rst $38
    rst $08

jr_062_5b15:
    rst $38
    sbc a
    rst $38
    sbc l
    rst $38
    ei
    rst $38
    ld a, [$caff]
    rst $38
    db $e3
    rst $38
    di

Jump_062_5b23:
    rst $38
    rst $38
    rst $38
    ld h, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    jr jr_062_5b15

    add b
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    ld bc, $87ff
    rst $38
    ld c, $ff
    adc [hl]
    rst $38
    rrca
    rst $38
    rst $00
    rst $38
    ld h, e
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld [hl-], a
    rst $08
    or c
    ld c, a
    inc e
    db $e3
    inc c
    di
    or $f9
    ld a, [c]
    db $fd
    ld hl, sp-$01
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $04ff
    ei
    nop
    rst $38
    jr @+$01

    ld bc, $01ff
    rst $38
    ret z

    rst $38
    ld [hl], b
    rst $38
    and b
    ld a, a
    jr nc, @+$01

    jr nc, @+$01

    or b
    ld a, a
    pop de
    ccf
    pop bc
    ccf
    ret nc

    ccf
    ret c

    ccf
    db $ec
    rra
    rst $20
    rra
    ccf
    rst $38
    inc de
    rst $28
    or b
    rst $08
    ret nz

    rst $38
    set 6, h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    pop hl
    rst $38
    db $e3
    rst $38
    ld [c], a
    rst $38
    ld [c], a
    rst $38
    and $ff
    or $ff
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp [hl]
    rst $38
    di
    rst $38
    di
    rst $38
    ld a, [c]
    rst $38
    or $ff
    cp $ff
    ld l, [hl]
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $18
    rst $38
    db $fd
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, [hl]
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
    db $fd
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    di
    rst $38
    rst $30
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    rst $18
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
    cp l
    rst $38
    cp c
    rst $38
    cp c
    rst $38
    add hl, sp
    rst $38
    ld sp, $b1ff
    rst $38
    ld [hl], e
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    inc [hl]
    rst $38
    sub [hl]
    ld a, a
    rlca
    rst $38
    rst $38

Call_062_5c3b:
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    xor h
    db $d3
    rst $18
    ldh [$80], a
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, a
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
    ld a, b
    rst $38
    ld hl, sp-$01
    add b
    rst $38
    ldh a, [rIE]
    jr c, @+$01

    inc e
    rst $38
    ld h, a
    sbc a
    ld a, b
    add a
    add c
    cp $c1
    cp $d8
    rst $38
    pop af
    cp $f2
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ei
    rst $38
    pop af
    rst $38
    ld d, c
    rst $38
    ld h, a
    rst $38
    db $76
    rst $38
    cp $ff
    ld a, [$f0ff]
    rst $38
    ldh a, [rIE]
    jr nc, @+$01

    sub $3f
    rst $38
    rst $38
    ld a, l
    rst $38
    ld a, h
    rst $38
    db $fc
    rst $38
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
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    ld a, a
    rst $38
    ld a, l
    rst $38
    db $e3
    rst $38
    ld hl, sp-$01
    ld a, [$fdff]
    rst $38
    ld a, l
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
    rst $28
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    ld a, $ff
    ld a, d
    rst $38
    ld a, [$f6ff]
    rst $38
    db $ed
    rst $38
    rst $28
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
    rst $30
    rst $38
    rst $30
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ld a, [$feff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    ld [hl], b
    rst $38
    ld hl, $81ff
    rst $38
    add e
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    ld h, $df
    ld [$08ff], sp
    rst $38
    sbc b
    rst $38
    ldh a, [rIE]
    pop af
    rst $38
    ld a, [c]
    rst $38
    ld a, $ff
    rra
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
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld d, a
    cp a
    rrca
    rst $38
    daa
    rst $18
    daa
    rst $18
    jr nc, @-$2f

    add hl, bc
    or $f0
    rst $38
    add hl, sp
    rst $38
    jr @+$01

    ld e, $ff
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    dec e
    rst $38
    jr c, @+$01

    jr c, @+$01

    rst $38
    rst $38
    rra
    rst $38
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    cp $ff
    ld a, [hl]
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
    jr jr_062_5da3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_062_5db3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_062_5dc3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_062_5dd3

    ld [hl-], a

jr_062_5da3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_062_5de3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_062_5db3:
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

jr_062_5dc3:
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

jr_062_5dd3:
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

jr_062_5de3:
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
    daa
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
    daa
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $27
    rra
    jr nz, jr_062_5eb6

    ld [hl+], a
    inc hl
    daa
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
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    ld bc, $0101
    ld bc, $0101

jr_062_5eb6:
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0000
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec b
    ld bc, $0101
    ld bc, $0000
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec b
    dec b
    dec b
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0505
    dec b
    ld bc, $0000
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0501
    dec b
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0404
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
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0400
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc b
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
    ld bc, $0901
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld bc, $0909
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0909], sp
    ld bc, $0909
    add hl, bc
    add hl, bc
    add hl, bc
    ld bc, $0909
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    db $fc
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    jp nc, $c6fd

    ld sp, hl
    add $fd
    cp e
    rst $00
    ret c

jr_062_6003:
    rst $20
    sbc $e1
    ld e, a
    ldh [$e9], a
    or $c3
    rst $38
    reti


    rst $20
    ld a, h
    jp $c17f


    ld a, l
    jp $c37d


    ld a, l
    jp Jump_062_40ff


    rst $38
    ld b, b
    ccf
    ret nz

    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $18
    ld h, b
    ld e, a
    ldh [$62], a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, [$f7ff]
    rst $38
    ld a, b
    rst $38
    add h
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    jr c, jr_062_6003

    dec a

Jump_062_603d:
    jp nz, $e01f

    ld de, $ebee
    rst $38
    db $e4
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    push bc
    rst $38
    ld b, c
    rst $38
    call z, Call_062_7fff
    rst $38
    ld a, e
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
    db $fc
    rst $38
    xor $ff
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
    ld a, a
    rst $38
    ld l, a
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    db $fc
    rst $38
    inc a
    rst $38
    sub h
    rst $38
    call nz, $94ff
    rst $38
    call nc, $dfff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    ld a, b
    rst $38
    ldh a, [$7f]
    sub b
    ld a, a
    or b
    ld a, a
    jr nc, @+$01

    rlca
    rst $38
    rra
    cp $1d
    cp $7d
    cp $7d
    cp $7f
    db $fc
    ld a, d
    db $fd
    ld a, b
    rst $38
    set 7, h
    ld c, a
    or b
    or $09
    ld bc, $f0ff
    rst $38
    rst $28
    ldh a, [$e6]
    nop
    adc $00
    db $fd
    nop
    and a
    nop
    db $dd
    nop
    ld a, h
    add e
    rst $18
    ldh [$3c], a
    ret nz

    and b
    ret nz

    rra
    ldh [$3c], a
    ret nz

    db $e3
    inc c
    adc a
    db $10
    inc e
    ld [$0804], sp
    add [hl]
    ld [$0804], sp
    ld h, a
    nop
    rst $20
    nop
    xor a
    ld a, a
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    ld c, a
    rst $38
    ld b, a
    rst $38
    rra
    rst $28
    scf
    rst $08
    or a
    rst $08
    ld [hl], a
    adc a
    or a
    ld c, a
    or a
    ld c, a
    rlca
    rst $38
    push hl
    rst $38
    rst $38
    rst $38
    ld [hl], a
    rst $38
    rla
    rst $38
    dec de
    db $fc
    dec bc
    db $fc
    dec de
    db $ec
    ld d, e
    xor h
    db $d3
    inc l
    add a
    ld a, h
    pop bc
    ld a, $ef
    ld e, $aa
    ld e, a
    ld l, l
    cp $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld a, b
    rst $38
    dec a
    rst $38
    ld a, $fd
    ld a, b
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    ld l, e
    sbc h
    jp hl


    ld e, $c9
    ld a, $68
    sbc a
    sbc c
    cp $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    ldh [rIE], a
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret c

    rst $38
    db $fc
    rst $38
    cp $ff
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
    cpl
    rst $38
    rrca
    rst $38
    rrca
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

Jump_062_6180:
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    adc $ff
    ldh a, [rIE]
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr c, @+$01

    inc a
    rst $38
    cp [hl]
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ret nz

    rst $38
    ld hl, sp-$01
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$e1ff], sp
    rst $38
    ld bc, $10ff
    rst $28
    rst $38
    nop
    rrca
    ldh a, [$c2]
    rst $38
    ld hl, sp+$07
    sub $00
    ld bc, $8a00
    nop
    and h
    inc bc
    rst $10
    ccf
    ld [hl], l
    cp $f3
    db $fc
    inc c
    di
    cp $01
    inc bc
    db $fc
    jp $d73c


    jr z, @+$3e

    jp $8066


    ccf
    ret nz

    cp a
    ld b, b
    inc de
    ldh [rIE], a
    nop
    call Call_062_7800
    nop
    pop bc
    rst $38
    pop bc
    rst $38
    ldh [rIE], a
    pop af
    rst $38
    ld sp, hl
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
    cp $ff
    ld a, [$f2ff]
    rst $38
    ldh a, [rIE]
    db $f4
    rst $38
    ld hl, sp-$01
    add hl, sp
    cp $f1
    ld e, $ec
    rra
    xor $1d
    xor $1d
    db $ec
    rra
    db $ec
    rra
    inc l
    rst $18
    cpl
    call c, $dc2f
    inc bc
    db $fc
    add c
    ld a, [hl]
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    ld h, b
    rst $38
    db $ed
    ld [hl], d
    ld bc, $45fe
    cp [hl]
    swap [hl]
    ld a, [$d807]
    daa
    add c
    ld a, a
    pop bc
    ccf
    pop hl
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
    ld a, a
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    cp a
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
    rst $18
    rst $38
    adc a
    rst $38
    rst $00
    rst $38
    db $e3
    rst $38
    rst $38
    rst $38
    add a
    rst $38
    jp Jump_000_00ff


    rst $38
    ld b, [hl]
    cp a
    ld [hl], b
    adc a
    add b
    rst $38
    ld [hl], c
    rst $38
    inc bc
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rst $08
    ccf
    call $0c3f
    rst $38
    sbc [hl]
    ld a, a
    or $0f
    sub c
    ld a, [hl]
    and b
    ld a, a
    rlca
    ld sp, hl
    dec a
    jp $01ff


    db $fd
    inc bc
    ei
    rlca
    ei
    rlca
    inc sp
    rst $08
    ccf
    jp Jump_000_0347


    ld a, a
    rlca
    srl a
    add b
    rst $38
    ld l, a
    sub c
    or $0f
    or e
    ld a, h
    scf
    ld hl, sp+$03
    db $fc
    adc $30
    sub [hl]
    ld l, b
    inc bc
    db $fc
    inc de
    db $fc
    ld l, a
    db $10
    cp $01
    rst $30
    nop
    rst $18
    jr nz, @+$01

    nop
    rst $10
    jr z, jr_062_632a

    inc b
    add hl, bc
    rst $38
    adc c
    rst $38
    add c
    rst $38
    ld b, c
    rst $38
    pop hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    sbc a
    ld a, a
    rst $18
    ccf
    rst $18
    ccf
    rst $38
    rra
    rst $28
    rra
    rst $20
    rra
    rst $30
    rrca
    rst $30
    rrca
    ld h, a
    sbc a
    ld b, e
    cp a
    inc de
    rst $28
    inc hl
    rst $18
    inc bc
    rst $38
    inc de
    rst $28
    rla
    rst $28
    ld b, e
    cp a
    push bc
    cp e
    dec h
    db $db
    dec d
    db $eb
    dec b
    ei

jr_062_632a:
    rrca
    pop af
    rlca
    ld sp, hl
    ld c, l
    rst $38
    ld h, e
    rst $38
    db $dd
    inc hl
    rst $38
    ld bc, $11ee
    ldh a, [rIF]
    pop af
    rrca
    pop af
    rrca
    ld sp, hl
    rlca
    inc bc
    rst $38
    add d
    rst $38
    pop af
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    ld hl, sp-$01
    cp a
    rst $38
    sbc a
    rst $38
    adc a
    rst $38
    jp $e1ff


    rst $38
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
    rst $38
    rst $38
    rst $18
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    cp $ff
    xor $ff
    adc $ff
    adc a
    rst $38
    adc a
    rst $38
    rrca
    rst $38
    rst $38
    ei
    cp $db
    db $fc
    rst $38
    db $fc
    rst $28
    db $fc
    rst $08
    rst $38
    db $fc
    cp $fc
    cp $fc
    db $fc
    cp $fe
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ld c, a
    cp a
    ld c, $ff
    and b
    rst $18
    jp z, Jump_062_44fd

    ei
    cp [hl]
    pop bc
    ld sp, hl
    add [hl]
    ld c, e
    or h
    dec c
    ldh a, [rNR32]
    db $e3
    db $76
    adc a
    jp c, $fc3f

    rst $38
    ld sp, hl
    rst $38
    ld a, [c]
    rst $38
    add $f8
    or h
    ret nz

    sub d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    cp $98
    ldh [$78], a
    add b
    ld [hl], b
    add b
    ld a, [hl]
    add b
    ld l, h
    sbc a
    and $19
    ld sp, hl
    ld b, $a2
    ld e, a
    rst $28
    rra
    ccf
    rra
    ld a, a
    ccf
    ld c, a
    ccf
    ld e, $3f
    add $3f
    ld a, h
    adc a
    ld a, h
    adc a
    ld a, [hl]
    sbc l
    pop de
    ld a, $fa
    rlca
    ldh [$1f], a
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    sub e
    rst $28
    add e
    rst $38
    db $db
    rst $20
    set 6, a
    scf
    ei
    ccf
    ei
    ld a, [bc]
    rst $38
    sub b
    rst $28
    db $10
    rst $28
    ld de, $51ef
    xor a
    ld d, c
    xor a
    di
    adc a
    db $db
    and a
    add b
    rst $38
    add b
    rst $38
    ei
    rst $38
    jp $a9ff


    rst $10
    cp b
    rst $00
    sub b
    rst $28
    or d
    call $ef90
    ret c

    rst $20
    sbc c
    rst $20
    cp c
    rst $00
    sbc l
    db $e3
    sbc l
    db $e3
    push af
    db $eb
    rst $18
    pop hl
    pop hl
    rst $38
    pop af
    rst $38
    ld l, $f1
    add a
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    ld e, a
    and b
    sbc [hl]
    ld h, c
    xor h
    ld [hl], e
    jr nc, @+$01

    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [de], a
    rst $38
    ccf
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
    ccf
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
    ld a, [$d4ff]

jr_062_6471:
    rst $38
    inc h
    rst $38
    jr c, @+$01

    nop
    rst $38
    ld e, $ff
    cp a
    rst $38
    and c
    rst $28
    pop bc
    pop hl
    pop bc
    pop bc
    ld l, $e3
    ld [de], a
    di
    inc c
    rst $38
    nop
    rst $38
    nop
    rst $38
    jp nz, Jump_062_6b7f

    ld a, a
    ld a, a
    ld a, a
    ld a, h
    ld a, a
    ld [hl], b
    ld a, a
    adc [hl]
    cp a
    jp $81df


    cp a
    ldh [rIE], a
    ldh a, [$9f]
    ld hl, sp+$07
    db $e4
    inc bc
    cp $f9
    ld a, a
    nop
    add a
    nop
    jp Jump_000_0101


    nop
    ld a, e
    jr nz, jr_062_6471

    rst $38
    ld bc, $13ff
    rst $38
    ld b, $ff
    call c, Call_062_68ff
    rst $38
    ldh a, [rIF]
    rlca
    nop
    ld a, l
    rst $38
    ld a, [$d0fc]
    ldh [$c0], a
    nop
    nop
    nop
    dec b
    nop
    dec c
    inc bc
    ld sp, $070e
    ld hl, sp+$7f
    ret nz

    ld a, a
    ret nz

    db $fc
    ret nz

    ldh a, [$c0]
    jp hl


    ret nz

    and l
    jp Jump_062_6f97


    ld b, b
    ccf
    add a
    ld a, a
    rst $08
    ld a, a
    adc [hl]
    ld a, a
    cp h
    ld a, a
    cp a
    ld a, [hl]
    cp $7f
    cp a
    ld a, a
    adc a
    rst $38
    rst $00
    rst $38
    rst $18
    rst $38
    db $ec
    rst $38
    sub $ff
    jp nc, $faff

    rst $38
    xor [hl]
    rst $38
    nop
    rst $38
    inc h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add h
    ei
    add d
    db $fd
    jp Jump_000_00fc


    rst $38
    nop
    rst $38
    inc c
    rst $38
    cp $ff
    db $fc
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ld a, h
    ei
    dec [hl]
    ld a, [$f837]
    ld [hl], a
    ld hl, sp-$49
    ld hl, sp+$77
    ld hl, sp+$77
    ld hl, sp-$01
    ld hl, sp-$08
    rst $38
    db $fc
    rst $38
    and a
    ld hl, sp-$45
    db $e4
    sub e
    db $ec
    add c
    cp $87
    rst $38
    sub a
    rst $28
    and a
    rst $18
    and a
    rst $18
    rst $00
    rst $38
    rst $00
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
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
    rst $38
    rst $38
    rst $28
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
    rst $38
    rst $38
    rst $38
    rst $38
    db $76
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    di
    rst $38
    rst $38
    rst $38
    cp $ff
    ld a, [c]
    rst $30
    rst $30
    ld a, [c]
    rlca
    ld [c], a
    rrca
    ldh [$1f], a
    db $e4
    rra
    db $fc
    ld a, a
    add h
    rst $38
    add [hl]
    cp $80
    ei
    add b
    rra
    pop hl
    cp a
    ld sp, hl
    pop de
    rst $38
    and b
    rst $38
    pop af
    rst $38
    ccf
    rst $38
    ld e, $ff
    ld l, [hl]
    rst $38
    rst $00
    db $fd
    inc bc
    cp $19
    rst $38
    and b
    rst $38
    jp $e7ff


    rst $38
    di
    cp a
    ld a, a
    rst $38
    rst $30
    rst $38
    cpl
    rst $18
    dec c
    ldh a, [$fb]
    nop
    rst $30
    ld [$00f3], sp
    or c
    rrca
    ld bc, $72ff
    dec c
    rst $08
    nop
    rst $38
    nop
    ld hl, $f3ff
    db $fd
    db $db
    rst $20
    ld a, h
    add e
    cp $07
    rst $38
    nop
    call nc, Call_000_1703
    inc c
    ld e, a
    ccf
    ld a, l
    rst $38
    ei
    db $fd
    rst $38
    rst $38
    xor [hl]
    rst $18
    call z, Call_000_16bf
    ld sp, hl
    dec a
    ld a, [$fe3e]
    sbc [hl]
    ld a, a
    jr @+$01

    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cpl
    rst $38
    ld b, a
    rst $38
    add c
    rst $38
    ld h, c
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
    ld a, a
    rst $38
    rst $38
    rst $38
    jr nc, @+$01

    jr @+$01

    jr @+$01

    add hl, sp
    rst $38
    add hl, sp
    rst $38
    dec l
    rst $38
    push hl
    rra
    ldh [$1f], a
    ld a, [c]
    dec c
    push af
    ld c, $04
    rst $38
    add hl, sp
    rst $38
    sbc b
    ld a, a
    sbc b
    ld a, a
    adc e
    ld a, a
    ld [$acff], sp
    rst $38
    db $fc
    rst $38
    db $ed
    cp $fc
    rst $38
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
    sbc a
    rst $38
    adc a
    rst $38
    sbc a

jr_062_6655:
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    adc a
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
    cp a
    rst $38
    rst $38
    rst $38
    di
    rst $38
    dec sp
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    pop af
    rst $38
    ldh [rIE], a
    ld h, b
    rst $38
    ld h, b
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    ld e, $ff
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38

jr_062_6693:
    and b
    rst $38
    ldh a, [rIE]
    ld hl, sp+$7f
    cp $9f
    db $fc
    rrca
    cp $37
    rst $38
    rst $20
    ld sp, hl
    add e
    db $fd
    rrca
    db $fc
    sbc a
    ld a, a
    rst $38
    adc a
    cp a
    rlca
    add a
    add b
    call nz, $cdc0
    jp nz, $80fe

    rst $38
    nop
    db $dd
    inc bc
    db $db
    rlca
    db $e3
    rra
    or a
    ld a, [hl]
    add e
    ldh [$5a], a
    add h
    jr c, jr_062_6693

    jr jr_062_6655

    adc [hl]
    ld a, a
    ld a, d
    db $fc
    ldh [$f0], a
    jp Jump_000_21e0


    ret nz

    scf
    rst $38
    ccf
    rst $38
    rst $38
    ld hl, sp-$02
    ld hl, sp-$04
    ld a, b
    ld hl, sp+$7c
    ld hl, sp-$04
    db $fc
    db $fc
    db $fc
    db $fc
    xor $fc
    ld [hl], h
    cp $f6
    ld a, [hl]
    ld [hl], a
    cp $fe
    rst $38
    ei
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
    ld a, [$f9ff]
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
    ei
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    cp $ff
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
    or $ff
    dec sp
    rst $38
    inc sp
    rst $38
    sbc c
    rst $38
    ld e, l
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    db $fd
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ld c, a
    rst $38
    ld l, a
    rst $38
    rst $38
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp $ff
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    ld l, $ff
    xor a
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_062_6764:
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
    cp $ff
    cp $ff
    rst $20
    rst $38
    ld [c], a
    rst $38
    jp $c3ff


    rst $38
    ld b, b
    rst $38
    rst $00
    rst $38
    ld [c], a
    rst $38
    ld [c], a
    rst $38
    or h
    rst $38
    db $f4
    rst $38
    pop af
    rst $38
    db $e3
    rst $38
    jp $f8ff


    rst $38
    jr c, @+$01

    ld hl, $03ff
    rst $38
    call Call_062_45ff
    ei
    scf
    ld sp, hl
    ld hl, sp-$01
    ld [c], a
    db $fd
    ld sp, hl
    rst $38
    rst $38
    rst $38
    ld hl, sp-$19
    cp $c1
    ld hl, sp+$07
    ld b, d
    dec a
    sbc [hl]
    ld h, c
    ld b, $f9
    ld c, a
    jr nc, jr_062_6764

    ld [hl], b
    sub e
    db $ec
    rst $28
    sub b
    db $d3
    jr nz, jr_062_67d4

    pop bc
    add a
    rra
    ld e, $00
    di
    dec c
    xor a
    rra
    dec b
    ld a, a
    ldh [$1f], a
    db $f4
    ld [$0061], sp
    ld a, l
    nop
    ei
    nop
    ldh [rP1], a

jr_062_67d4:
    jr c, jr_062_67dd

    jr c, @-$37

    jr nc, @-$2f

    jp $ddfc


jr_062_67dd:
    ldh [$87], a
    ld hl, sp+$12
    dec c
    rla
    rrca
    scf
    rrca
    cpl
    rra
    dec hl
    rra
    cpl
    rra
    cp [hl]
    rra
    dec l
    sbc [hl]
    rst $38
    rst $38
    rst $38
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
    cp $ff
    ld a, e
    rst $38
    rst $38
    rst $38
    ld a, l
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
    push de
    rst $38
    rst $10
    rst $38
    ld d, e
    rst $38
    ld d, e
    rst $38
    ld hl, sp-$01
    cp $ff
    ei
    rst $38
    di
    rst $38
    di
    rst $38
    or c
    rst $38
    or e
    rst $38
    scf
    rst $38
    ccf
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
    ld hl, sp-$01
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld sp, hl
    rst $38
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
    db $fd
    rst $38
    rst $30
    rst $38
    push af
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld [hl], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp [hl]
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38

jr_062_686c:
    db $fc
    rst $38
    ld a, [$ffff]
    rst $38
    ld a, [hl]
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
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    rst $38
    rst $38
    sbc $ff
    db $db
    rst $38
    rlca
    rst $38
    ld l, c
    rst $30
    di
    rst $38
    jr nc, @+$01

    inc e
    rst $38
    ld e, $ff
    ld a, $ff
    db $fc
    rst $38
    ld a, h
    cp a
    cp [hl]
    rst $38
    ei
    rst $38
    inc sp
    rst $08
    inc [hl]
    rst $08
    di
    inc c
    db $dd
    jr nz, jr_062_68c1

    pop hl
    add a
    ld h, e
    adc a
    ld h, a
    rrca
    rst $38
    cp d
    ld a, a
    rst $18
    ccf
    rst $18
    ld a, $fe
    rst $38
    db $fd
    add b
    ld h, b

jr_062_68c1:
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ld bc, $81fe
    ld a, [hl]
    db $d3
    inc l
    dec sp
    inc b
    sbc $00
    ld hl, sp-$19
    ei
    db $fc
    cp a
    ld b, b
    rra
    nop
    ccf
    nop
    rst $08
    jr c, jr_062_686c

    ld a, h
    dec c
    cp $ff
    rst $38
    rst $38
    rst $38
    ei
    db $fd
    di
    db $fc
    jp c, $80e0

    ret nz

    add b
    nop
    nop
    nop
    rst $18
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
    rst $08

Call_062_68ff:
    rst $38
    rst $28
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
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    di
    rst $38
    push af
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ld [hl], $ff
    ccf
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
    ld [hl], a
    rst $38
    or e
    rst $38
    ldh [rIE], a
    ei
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38

jr_062_6963:
    rst $38
    rst $38
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
    scf
    rst $38
    inc de
    rst $38
    add hl, sp
    rst $38
    ld a, a
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    rlca
    rst $38
    ld [bc], a
    rst $38
    ld e, $ff
    rra
    rst $38
    ld h, e
    rst $38
    ld hl, $00ff
    rst $38
    inc b
    ei
    ld de, $c1ee
    cp $a7
    ld hl, sp-$21
    jr nz, jr_062_6963

    ccf
    ld e, $ff
    ccf
    ret nz

    ldh [rIE], a
    add a
    rst $38
    cp h
    rst $08
    sbc c
    rst $20
    cp h
    jp Jump_000_04bb


    db $eb
    rlca
    inc hl
    call nz, Call_062_7229
    ld h, e
    inc a
    jr z, jr_062_69ed

    ld h, h
    inc sp
    ld a, [c]
    ld sp, $71b2
    pop af
    ld hl, sp+$1c
    ld hl, sp+$33
    inc c
    ld a, $0f
    rla
    rrca
    ld [de], a
    dec c
    sbc d
    dec c
    inc a
    rra
    sbc $3f
    cp $3f
    ld l, a
    rst $30
    rst $28
    di
    rst $30
    cp $fa
    db $fc
    ld [hl], c
    jr c, jr_062_6a0b

    nop
    ld bc, $0400
    ld bc, $fffe
    ei
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38

jr_062_69ed:
    rst $38
    rst $38
    rst $38
    ld [hl], a
    rst $38
    ld a, $ff
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
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18

jr_062_6a0b:
    rst $38
    sbc $ff
    rst $08
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
    rst $08
    rst $38
    rst $08
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
    rst $38
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
    rst $30
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
    rst $28
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ld a, [c]
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
    ei
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
    pop af
    rst $38
    ldh a, [rIE]
    ld c, b
    rst $38
    ld c, [hl]
    cp a
    sbc a
    rst $38
    ldh a, [rIE]
    db $10
    rst $38
    ld [bc], a
    db $fd
    or b
    rst $38
    ldh [rIE], a
    db $e3
    rst $38
    xor $ff
    inc a
    rst $38
    ld hl, $18ff
    rst $38
    add a
    ld a, b
    rst $18
    jr nz, jr_062_6aa3

    push af
    jp Jump_000_3fff


    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38

jr_062_6aa3:
    nop
    cp b
    ld b, a
    ld b, d
    add a
    ld a, [de]
    rlca
    ld a, [hl-]
    ld b, a
    rst $28
    rra
    ld h, d
    rra
    pop hl
    rra
    ld a, [de]
    rlca
    inc de
    ldh [rNR22], a
    ldh [$4e], a
    pop af
    add hl, bc
    ldh a, [$fd]
    nop
    add hl, bc
    nop
    cp c
    ld b, b
    ld a, l
    ldh [$ef], a
    ldh a, [$fb]
    ldh a, [$5b]
    ldh a, [$1f]
    rst $38
    cp a
    ld a, a
    ld [hl], e
    cp $a4
    rst $18
    cp $01
    ld a, a
    nop
    ld a, [hl]
    ld bc, $06f9
    ld l, [hl]
    ld bc, $071b
    sbc a
    rst $38
    ld e, a
    rst $38
    rst $18
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
    rst $30
    rst $38
    rst $30
    rst $38
    ld a, a
    rst $38
    ld a, l
    rst $38
    ccf
    rst $38
    ld [hl], a
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
    ld l, a
    rst $38
    ld [hl], a
    rst $38
    rst $10
    rst $38
    pop af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp e
    rst $38
    cp e
    rst $38
    cp e
    rst $38
    xor c
    rst $38
    cp b
    rst $38
    sbc b
    rst $38
    sbc b
    rst $38
    cp h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    add a
    rst $38
    add a
    rst $38
    rst $38
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
    rst $28
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
    ld a, e
    rst $38
    inc c
    rst $38
    push bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    ld hl, sp-$01
    pop af
    rst $38
    add sp, -$01
    ld sp, hl
    rst $38
    rst $38
    rst $38
    ld [hl], a
    rst $38
    ld [hl], b
    rst $38
    db $fc
    rst $38
    sbc a

Jump_062_6b7f:
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ld [hl], c
    rst $38
    ccf
    rst $38
    rlca
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, b
    rst $38
    cp b
    ld a, a
    rst $38
    ccf
    rrca
    rst $38
    ei
    rlca
    rst $30
    rrca
    jp $0d3c


    ldh a, [$7e]
    add c
    cp $01
    ld [hl], a
    add b
    ld b, d
    add c
    ld b, a
    add b
    adc b
    ldh a, [$f7]
    rst $38
    rst $38
    rst $38
    sbc a
    ld a, a
    ld e, a
    rst $38
    ld a, a
    rst $38
    rst $28
    rst $38
    add hl, de
    rst $20
    ld [hl], c
    add b
    inc [hl]
    dec bc
    ldh [$1f], a
    add b
    ld a, a
    inc sp
    db $fc
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, [hl]
    pop bc
    ld a, $e4
    ld b, b
    ld [hl], b
    ldh [rBCPS], a
    ldh a, [$4c]
    rst $38
    adc a
    ld a, a
    ccf
    rst $38
    rst $38
    rst $38
    cp $ff
    ld sp, hl
    rst $38
    rst $30
    rst $38
    rst $00
    rst $38
    rlca
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    ld a, a
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
    db $fd
    rst $38
    db $ed
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
    ld a, a
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
    rst $20
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    rst $30
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
    rst $30
    rst $38
    rst $30
    rst $38
    di
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
    ld [hl], a
    rst $38
    or a
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
    rst $28
    rst $38
    rst $30
    rst $38
    rst $20
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
    rlca
    rst $38
    inc de
    rst $38
    dec e
    rst $38
    sub h
    rst $38
    add d
    rst $38
    rlca
    rst $38
    rra
    db $e3
    ld a, h
    add e
    or b
    rst $38
    ldh [rIE], a
    pop af
    cp $ff
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld [hl+], a
    rst $38
    ld l, b
    sbc a
    rst $38
    rst $38
    ei
    db $fc
    and a
    ret c

    add a
    ld hl, sp-$32
    inc sp
    sbc a
    ld h, b
    adc a
    ld [hl], b
    rst $38
    nop
    push hl
    ld a, [de]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld c, [hl]
    add b
    ld hl, $70c0
    ldh [$f8], a
    ldh a, [$f5]
    ld hl, sp+$79
    cp $1f
    rst $38
    ld bc, $3fff
    ld a, a
    ld a, a
    ccf
    cpl
    rra
    ccf
    rrca
    cp e
    rra
    rst $38
    inc bc
    sub $01
    or a
    ld b, c
    ld a, $c0
    rra
    ldh [rNR33], a
    add b
    xor a
    nop
    db $fc
    nop
    ld e, [hl]
    ldh [$ed], a
    ld [hl], b
    xor a
    ld [hl], b
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
    rst $30
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    di
    rst $38
    di
    rst $38
    ei
    rst $38
    di
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
    db $fd
    rst $38
    rst $38
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
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    cp $ff
    rst $28
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
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38

jr_062_6d42:
    cp a
    rst $38
    rst $38
    rst $38
    sbc a
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
    db $fd
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    dec a
    rst $38
    ccf
    rst $38
    ld a, a
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
    ei
    rst $38
    ei
    rst $38
    di
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    rst $28
    rst $38
    add a
    rst $38
    ld b, d
    rst $38
    add e
    rst $38
    di
    rst $38
    ldh a, [rIE]
    xor $ff
    ccf
    rst $38
    jr nz, @+$01

    add e
    ld a, a
    or a
    ld c, a
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld a, [hl]
    add c
    rst $38
    nop
    ld hl, sp+$07
    push hl
    ld e, $c7
    jr c, jr_062_6d42

    ld h, b
    daa
    ld hl, sp+$3d
    ld a, [hl]
    cp a
    ld c, $fc
    inc bc
    adc $01
    xor $01
    rla
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    jr nz, jr_062_6dd2

    inc e
    ld hl, sp-$03
    cp $ff
    rst $38
    ld bc, $0fff
    rst $38
    ld c, a
    ldh a, [$78]
    add b
    ld b, b
    add b
    jp Jump_062_6180


    ret nz

    add b
    jr nz, jr_062_6e0f

    nop

jr_062_6dd2:
    sub [hl]
    nop
    ld a, [$fa01]
    rlca
    db $10
    ld c, $e6
    jr jr_062_6de9

    di
    ld hl, $ffff
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38

jr_062_6de9:
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $dd
    rst $38
    cp $ff
    cp a
    rst $38
    cp e
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30

jr_062_6e0f:
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $30
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
    ld a, a
    rst $38
    cp a
    rst $38
    adc a
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
    cp a
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
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
    sbc a
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
    ld sp, hl
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    dec de
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    ld sp, hl
    rst $38
    ld [hl], a
    rst $38
    db $e3
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp [hl]
    rst $38
    sbc [hl]
    rst $38
    ld c, $ff
    ld bc, $c4ff
    rst $38
    ret z

    rst $38
    call z, Call_000_3cff
    rst $38
    cp h
    rst $38
    ld a, a
    rst $38
    db $ec
    rst $38
    call nz, $11fb
    rst $38
    rra
    rst $38
    sbc a
    ld a, a
    ld a, l
    cp $39
    cp $8b
    ld a, h
    cp $01
    ld a, [c]
    rlca
    rst $38
    rrca
    rst $18
    ccf
    ccf
    rst $38
    ld l, a
    sbc a
    ld e, a
    xor a
    rst $00
    ccf
    ld c, $ff
    inc bc
    rst $38
    ld [c], a
    rra
    or e
    ld c, [hl]
    rst $30
    inc c
    scf
    ld [$10af], sp
    rst $20
    rst $38
    xor $f1
    ld a, a
    add b
    rst $38
    nop
    cp $00
    ld a, c
    add [hl]
    rst $38
    ld bc, $00ff
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ld h, b
    rst $38
    jr nc, jr_062_6f18

    ldh a, [$d7]
    jr c, jr_062_6efc

    jr c, jr_062_6eee

    jr @+$01

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38

jr_062_6eee:
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
    rst $38
    rst $38
    rst $38
    rst $38

jr_062_6efc:
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $ec
    rst $38
    jp hl


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp [hl]
    rst $38

jr_062_6f18:
    inc a
    rst $38
    cp h
    rst $38
    cp h
    rst $38
    cp h
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
    rst $28
    rst $38
    db $e3
    rst $38
    di
    rst $38
    or a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_062_6f3f:
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
    ld a, e
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
    rst $38
    rst $38
    rst $30
    rst $38
    push af
    rst $38
    ld a, [c]
    rst $38
    rst $38
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
    cp a
    rst $38
    rst $30
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
    ld h, a
    rst $38
    ld de, $71ff
    rst $38
    rst $20
    rst $38
    rst $28
    rst $38
    jr nc, @+$01

    db $10
    rst $38
    ld a, a
    cp a
    jr c, @+$01

    ld a, h
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $08

Jump_062_6f97:
    ldh a, [$7f]
    add b
    rst $38
    nop
    cp $01
    ei
    rlca
    ld a, e
    rst $38
    dec e
    cp $77
    cp $fe
    rst $38
    rst $18
    rst $38
    ld sp, hl
    rst $38
    db $ec
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ret c

    rst $20
    cp h
    jp $0291


    db $e3
    nop
    ret nc

    nop
    pop af
    nop
    and h
    nop
    cp c
    add $e2
    db $fd
    jr nz, @+$01

    ld l, a
    db $10
    rra
    nop
    cp $00
    ld b, a
    cp b
    xor [hl]
    reti


    ld d, l
    ldh [$03], a
    ld a, h
    scf
    ld a, b
    rst $18
    jr c, jr_062_703d

    dec de
    inc d
    ld l, a
    ld c, d
    inc [hl]
    ld c, e
    inc [hl]
    db $dd
    rst $38
    rst $08
    rst $38
    ld e, a
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
    cp $ff
    rst $38
    rst $38
    cp a
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
    ld l, a
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    ld l, a
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
    db $fc
    rst $38
    cp $ff
    call nz, $c4ff
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $30
    rst $38
    rst $38

jr_062_703d:
    rst $38
    rst $38
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
    rst $30
    rst $38
    db $e3
    rst $38
    rst $30
    rst $38
    di
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
    ld a, a
    rst $38
    sub a
    rst $38
    cp a
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
    rst $28
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $10
    rst $28
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld [hl], b
    rst $38
    rst $38
    rst $38
    ld b, e
    rst $38
    inc bc
    rst $38
    ld e, $ff
    ld c, $ff
    rst $08
    ccf
    db $fd
    inc bc
    rst $38
    ld bc, $01ff
    ld a, [hl]
    pop bc
    db $ed
    di
    ld de, $f3fe
    inc c
    rst $38
    nop
    dec a
    ld [bc], a
    jr c, @-$77

    cp c
    rst $00
    db $ed
    di
    ei
    db $fc
    cp $ff
    ld a, [hl]
    rst $38
    ld a, e
    rst $38
    ccf
    cp $0b
    db $fc
    adc [hl]
    ld a, b
    ld b, [hl]
    jr c, jr_062_713b

    nop
    push hl
    ld a, [de]
    dec hl
    db $f4
    ret nc

    ccf
    ld hl, sp+$1f
    db $fc
    rrca
    sbc $27
    ld e, a
    daa
    cp a
    inc bc
    sub b
    inc bc
    jp nz, $d401

    inc bc
    db $fc
    inc bc
    ld [hl], c
    inc hl
    sub b
    inc sp
    sbc [hl]
    ld bc, $08f6
    cp d
    rst $38
    ld hl, sp-$01
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor a
    rst $38
    rra
    rst $38
    adc a
    rst $38
    rst $08
    rst $38
    xor a
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
    sbc a
    rst $38
    adc a
    rst $38
    add c
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    ld h, e
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
    di
    rst $38
    di
    rst $38
    rst $30
    rst $38
    rst $38

jr_062_713b:
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
    ei
    rst $38
    di
    rst $38
    di
    rst $38
    rst $20
    rst $38
    rst $30
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
    rst $38
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
    ld e, e
    rst $38
    ld a, c
    rst $38
    dec a
    rst $38
    ld l, a
    rst $38
    jp $01ff


    rst $38
    ld a, d
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    rst $38
    rst $38
    rla
    rst $28
    ld [bc], a
    rst $38
    and b
    rst $38
    db $f4
    rst $38
    ccf
    rst $38
    ld b, c
    cp a
    and b
    rst $18
    ld a, a
    ldh [$fb], a
    rlca
    db $ec
    inc de
    inc b
    ei
    dec d
    ei
    ld a, [$fbff]
    rst $38
    ld [hl], h
    ei
    rst $28
    ldh a, [$ef]
    jr nc, jr_062_71d2

    ldh a, [$1f]
    ldh [rIE], a
    nop
    cp e
    inc b
    adc [hl]
    inc bc
    add e
    nop
    ld l, $00
    ret nc

    cpl
    db $e4
    dec de
    rst $00
    jr c, @+$07

    ld a, [$f48b]
    sub c
    xor $c7
    ld hl, sp-$3f
    cp $6e
    sub c
    adc a
    db $e3
    ld a, a
    add a
    ld [hl], a
    adc a
    ld c, a
    cp a
    sbc c
    cp $ff
    add b
    cp d
    ld bc, $ff0f

jr_062_71d2:
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
    adc a
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
    cp a
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    adc a
    rst $38
    rst $08
    rst $38
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $38
    rst $30
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
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ei
    rst $38
    di
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $30

Call_062_7229:
    rst $38
    cp a
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
    rst $38
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
    rst $08
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    adc a
    rst $38
    xor a
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rrca
    rst $38
    ld bc, $0fff
    rst $38
    inc a
    rst $38
    rst $08
    rst $38
    ld h, c
    rst $38
    ld [$00ff], sp
    rst $38
    ld hl, sp-$01
    cp $ff
    ccf
    rst $38
    rst $18
    ccf
    or b
    rst $08
    rst $20
    ret c

    ld d, c
    xor $bf
    rst $38
    ldh a, [rIE]
    ld l, a
    ldh a, [rIE]
    ret nz

    ld a, a
    add b
    ei
    nop
    db $db
    nop
    push af
    inc bc
    ei
    rlca
    cp $0f
    call nc, Call_062_6f3f
    sbc a
    rst $28
    nop
    ld [$0800], sp
    nop
    ld bc, $0200
    ld bc, $0321
    dec b
    inc bc
    dec bc
    rlca
    rst $00
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fd
    rst $38
    sbc l
    rst $38
    call $903f
    ld l, a
    dec a
    jp nz, $ffff

    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld c, a
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    push af
    rst $38
    pop af
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
    rst $28
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    push af
    rst $38
    cp l
    rst $38
    cp l
    rst $38
    cp l
    rst $38
    sbc c
    rst $38
    sbc a
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
    cp $ff
    sub l
    rst $38
    ccf
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
    pop af
    rst $38
    rst $20
    rst $38
    ei
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    rst $30
    rst $38
    di
    rst $38
    db $d3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld hl, sp-$01
    ld hl, sp-$01
    pop bc
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
    add e
    rst $38
    inc bc
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, b
    rst $38
    add hl, hl
    rst $10
    db $e3
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    inc bc
    rst $38
    add hl, bc
    rst $30
    add [hl]
    rst $38
    rst $00
    rst $38
    ld a, e
    add a
    db $ed
    inc de
    ld hl, sp+$07
    ld a, h
    add e
    rra
    ldh [$b2], a
    ld a, l
    add e
    ld a, a
    adc a
    ld a, a
    ld l, l
    rst $38
    rst $00
    rst $38
    add a
    rst $38
    ld [hl], e
    adc a
    db $e4
    rra
    ld a, h
    rst $38
    ld a, $ff
    daa
    rra
    ld a, e
    rlca
    ld a, a
    inc bc
    db $fd
    inc bc
    cp a
    pop bc
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    db $ec
    di
    ld [hl], b
    adc a
    jr nz, @+$01

    di
    rst $38
    di
    rst $38
    rst $18
    rst $38
    ld a, a
    rst $38
    db $fd
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
    jr jr_062_73e3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_062_73f3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_062_7403

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_062_7413

    ld [hl-], a

jr_062_73e3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_062_7423

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_062_73f3:
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

jr_062_7403:
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
    ld a, [bc]
    ld a, [bc]
    ld h, b

jr_062_7413:
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld a, [bc]
    ld a, [bc]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]

jr_062_7423:
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
    ld a, [bc]
    ld a, [bc]
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
    ld a, [bc]
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
    ld a, [bc]
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
    jr jr_062_74eb

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
    jr z, jr_062_750b

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, @+$33

    ld [hl-], a

jr_062_74eb:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101

jr_062_750b:
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
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$fff7], sp
    di
    rst $38
    di
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    pop af
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
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
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld c, $ff
    ld e, $ff
    ld e, $ff
    ld b, [hl]
    rst $38
    ld c, $ff
    rrca
    rst $38
    rrca
    rst $38
    sbc a
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
    rst $38
    rst $38
    and c
    rst $38
    jr nc, @+$01

    add b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld a, d
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
    db $fd
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
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
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
    rst $38
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
    cp $ff
    ld a, [hl]
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp $ff
    db $fc
    rst $38
    ld a, e
    rst $38
    db $76
    rst $38
    ld a, l
    cp $7f
    ld hl, sp+$4b
    db $f4
    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    ld a, [$b805]
    ld b, a
    ld [c], a
    rra
    ld [hl], d
    adc a
    ld d, h
    xor a
    ld bc, $c1ff
    rst $38
    db $fd
    rst $38
    pop hl
    rst $38
    pop af
    rst $38
    di
    rst $38
    rst $30
    rst $38
    cp $ff
    xor $ff
    inc [hl]
    rst $38
    and b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    adc $ff
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
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
    ld [hl], h
    rst $38
    ld a, b
    rst $38
    ld [$60ff], sp
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

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
    rst $38
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
    rla
    rst $38
    rla
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $58ff
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
    ld [hl], e
    rst $38
    inc bc
    rst $38
    add c
    rst $38
    ret nz

    rst $38
    pop hl
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ld a, $ff
    sbc a
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    add e
    rst $38
    cp a
    rst $38
    add sp, -$01
    ldh [rIE], a
    pop hl
    rst $38
    ldh [rIE], a
    ldh [rIE], a
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
    ldh [rIE], a
    jp $c2ff


    rst $38
    ld [c], a
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    db $10
    rst $38
    inc l
    rst $38
    inc b
    rst $38
    nop
    rst $38
    inc d
    rst $38
    ld c, $ff
    nop
    rst $38

Call_062_7800:
    add b
    rst $38
    jp $ffff


    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    sbc l
    rst $38
    or $0f
    ld hl, sp+$07
    or $0f
    xor [hl]
    ld a, a
    ld a, h
    rst $38
    ld a, $fd
    cp d
    ld a, l
    sbc b
    ld a, a
    jr nc, @+$01

    ld sp, $35ff
    ei
    ld h, h
    ei
    ld [$fbf7], a
    rst $20
    db $db
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld a, [de]
    rst $38
    ld de, $13ff
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    inc sp
    rst $38
    ld [hl], e
    rst $38
    di
    rst $38
    di
    rst $38
    or $ff
    scf
    rst $38
    ld e, a
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
    dec bc
    rst $38
    ld c, $ff
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    ld [$0cff], sp
    rst $38
    inc b
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc e
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
    rst $00
    rst $38
    and $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    adc b
    rst $38
    and b
    rst $38
    or b
    rst $38
    inc e
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    ld a, a
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
    ccf
    rst $38
    rrca
    rst $38
    cpl
    rst $38
    ld e, a
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
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    jp nz, $f2ff

    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    rst $38
    rst $38
    db $fc
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
    ld a, a
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
    ld a, $ff
    inc bc
    db $fc
    rla
    db $ec
    and h
    rst $38
    ld h, h
    rst $38
    nop
    rst $38
    dec a
    sbc $9d
    cp $6e
    rst $38
    ld l, [hl]
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    ld b, e
    cp a
    inc b
    rst $38
    ld bc, $8bfe
    db $f4
    rst $38
    rst $38
    rst $20
    rst $38
    rst $28
    rst $38
    rst $28
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
    rst $28
    rst $38
    rst $08
    rst $38
    db $eb
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
    inc sp
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
    rst $38
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    sbc a
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    ccf
    rst $38
    sub h
    rst $38
    call nz, $ecff
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc e
    rst $38
    inc c
    rst $38
    call z, $ccff
    rst $38
    ld c, h
    rst $38
    ld l, h
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
    rst $00
    rst $38
    db $f4
    rst $38
    ret nc

    rst $38
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
    ldh a, [rIE]
    db $e3
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    adc $ff
    cp $ff
    cp h
    rst $38
    jr c, @+$01

    ld a, [hl]
    rst $38
    ld a, b
    rst $38
    ld l, b
    rst $38
    nop
    rst $38
    ld a, [bc]
    rst $38
    inc c
    rst $38
    ld [$3aff], sp
    rst $38
    rst $38
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
    ld a, [$faff]

Jump_062_79ff:
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    db $fd
    cp $fc
    rst $38
    sbc a
    rst $38
    ld l, a
    sbc a
    rst $18
    ccf
    cp l
    ld a, a
    ld l, $f1
    nop
    rst $38
    ld h, [hl]
    sbc a
    and e
    ld e, a
    dec bc
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    cp b
    rst $38
    xor $f1
    ret c

    rst $20
    pop af
    adc [hl]
    ld c, c
    or [hl]
    rst $00
    jr c, jr_062_7a7e

    or b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    ld a, h
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    xor b
    rst $38
    xor b
    rst $38
    add sp, -$01
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
    cp $ff
    rst $38
    rst $38
    rst $30
    rst $38
    di
    rst $38
    ld a, [c]
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rIE], a

jr_062_7a7e:
    and b
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld hl, sp-$01
    db $fc
    rst $38
    ld [hl], a
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    ld h, a
    rst $38
    ld l, a
    rst $38
    ld h, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    or a
    rst $38
    scf
    rst $38
    dec a
    rst $38
    ld a, c
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    ld [hl], a
    rst $38
    ld [hl], e
    rst $38
    di
    rst $38
    di
    rst $38
    ld [hl], a
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rst $18
    rst $38
    ld a, a
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
    sbc a
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
    rra
    rst $38
    sbc a
    ld a, a
    adc $3f
    sbc [hl]
    ld a, a
    ld h, b
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ld a, a
    cp a
    rst $18
    ccf
    rst $18
    ccf
    ld e, a
    cp a
    ld e, a
    cp a
    ld e, a
    cp a
    sbc l
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    sbc $ff
    ld a, h
    rst $38
    ld a, b
    rst $38
    add c
    ld a, [hl]
    sub l
    ld a, [hl]
    push de
    ld a, $ff
    rst $38
    rst $38
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
    rrca
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
    ld a, a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $28
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
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    cp $ff
    ld a, [hl]
    rst $38
    ld e, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rra
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
    db $fd
    rst $38
    pop af
    rst $38
    rst $30
    rst $38
    pop af
    rst $38
    pop hl
    rst $38
    pop af
    rst $38
    ld sp, hl
    rst $38
    db $e3
    rst $38
    jp $c3ff


    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    xor $ff
    adc $ff
    sbc a
    rst $38
    cp [hl]
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld sp, hl
    rst $38
    di
    rst $38
    pop af
    rst $38
    di
    rst $38
    di
    rst $38
    db $e3
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    add c
    rst $38
    di
    rst $38
    sub e
    rst $38
    rst $18
    rst $38
    adc [hl]
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    ret


    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    cp c
    rst $38
    xor e
    rst $38
    daa
    rst $38
    and a
    rst $38
    ccf
    rst $38
    dec sp
    rst $38
    ld e, b
    cp a
    ld hl, sp+$3f
    jr c, @+$01

    ld hl, sp-$01
    db $f4
    rst $38
    db $f4
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
    db $fd
    rst $38
    ld a, [$f3fd]
    db $fc
    ei
    db $fc
    rst $30
    ld hl, sp+$77
    ld hl, sp+$1f
    ldh a, [rTAC]
    ld hl, sp-$09
    ld [$08f7], sp
    pop af
    ld c, $f0
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    adc a
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    sbc c
    rst $38
    or c
    rst $38
    cp e
    rst $38
    inc e
    rst $38
    inc c
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rst $00
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    jp nc, $faff

    rst $38
    sub e
    rst $38
    adc $ff
    cp $ff
    cp $ff
    cp $ff
    or $ff
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    db $f4
    rst $38
    ldh a, [rIE]
    db $fd
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ret c

    rst $38
    ret z

    rst $38
    ret z

    rst $38
    ret z

    rst $38
    ret


    rst $38
    rst $08
    rst $38
    rrca
    rst $38
    sbc a
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
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    jr c, @+$01

    cp b
    rst $38
    cp c
    rst $38
    cp e
    rst $38
    dec sp
    rst $38
    dec sp
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ld [hl], e
    rst $38
    ld bc, $01ff
    rst $38
    ld sp, $35cf
    set 7, l
    add e
    ld a, e
    add a
    dec sp
    rst $00
    or e
    rst $08
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc de
    rst $38
    jp $973f


    ld l, a
    ld c, $ff
    dec c
    cp $1d
    cp $f3
    db $fc
    rst $38
    ld hl, sp+$7b
    db $fc
    ld [hl], e
    db $fc
    or $f9
    ei
    rst $38
    ld sp, hl
    rst $38
    db $eb
    rst $38
    push hl
    rst $38
    db $e3
    rst $38
    pop hl
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    db $ec
    rst $38
    add sp, -$01
    db $e4
    rst $38
    and $ff
    rst $20
    rst $38
    pop hl
    rst $38
    ldh [rIE], a
    pop hl
    rst $38
    di
    rst $38
    ei
    rst $38
    ld hl, sp-$01
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
    nop
    rst $38
    nop
    rst $38
    ld a, [bc]
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
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld a, b
    rst $38
    ld a, h
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ldh a, [rIE]
    di
    rst $38
    cp $ff
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
    rst $30
    rst $38
    di
    rst $38
    di
    rst $38
    pop af
    rst $38
    ld a, [c]
    rst $38
    ld a, [c]
    rst $38
    ldh a, [rIE]
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
    dec e
    rst $38
    ccf
    rst $38
    dec sp
    rst $38
    dec sp
    rst $38
    jr nc, @+$01

    ld a, [de]
    rst $38
    ld a, $ff
    ld e, $ff
    inc a
    rst $38
    cp h
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    rst $38
    ldh a, [$f4]
    ei
    cp $f9
    cp $f9
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    pop bc
    rst $38
    ld [bc], a
    db $fd
    ld b, e
    cp h
    call $883e
    ld a, a
    nop
    rst $38
    ret z

    ccf
    db $fc
    rra
    cp $1f
    ret nz

    ccf
    sbc [hl]
    ld h, c
    sbc [hl]
    ld h, c
    ret nz

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
    ld e, $ff
    ccf
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    jr @+$01

    inc e
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    cp a
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
    ccf
    rst $38
    ccf
    rst $38
    cp a
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
    cp a
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    jr nz, @+$01

    jr nc, @+$01

    ld a, h
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
    db $fc
    rst $38
    cp $ff
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
    rst $38
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rra
    rst $38
    cp a
    rst $38
    rla
    rst $38
    rlca
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
    sbc a
    rst $38
    sbc d
    rst $38
    or d
    rst $38
    ldh [rIE], a
    db $e4
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc c
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $28
    rst $38
    jp $c3ff


    rst $38
    jp $c3ff


    rst $38
    jp $c3ff


    rst $38
    ld b, e
    rst $38
    add [hl]
    ei
    inc e
    db $e3
    ld a, h
    add e
    ld a, l
    add e
    ld a, l
    add e
    ld a, [hl]
    add e
    dec sp
    rst $00
    add a
    rst $38
    cp $ff
    cp $ff
    ld a, a
    cp $83
    ld a, h
    ret nz

    ccf
    add c
    ld a, [hl]
    pop hl
    rra
    db $e3
    rra
    ld h, b
    sbc a
    ld [$bfff], sp
    rst $38
    ld a, a
    rst $38
    call c, $dfe3
    ldh [$df], a
    ldh [$df], a
    ldh [$67], a
    ld hl, sp+$47
    ld hl, sp-$1c
    ld a, e
    and d
    ld a, a
    sub [hl]
    ld a, a
    sbc e
    ld a, h
    adc c
    ld a, [hl]
    ld e, [hl]
    rst $38
    ld a, h
    rst $38
    rst $28
    rst $38
    ld [hl], a
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    add a
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld h, $ff
    inc [hl]

Jump_062_7eff:
    rst $38
    inc d
    rst $38
    add h
    rst $38
    db $e4
    rst $38
    ld c, l
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    dec c
    rst $38
    ld bc, $01ff
    rst $38
    add hl, bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld e, $ff
    inc a
    rst $38
    inc a
    rst $38
    ld a, a
    rst $38
    ld a, l
    rst $38
    jp hl


    rst $38
    add hl, bc
    rst $38
    add hl, sp
    rst $38
    add hl, hl
    rst $38
    add hl, sp
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    ld sp, hl
    rst $38
    db $db
    rst $38
    ei
    rst $38
    ld hl, sp-$01
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
    ld l, a
    rst $38
    ret c

    rst $38
    ld bc, $01ff
    rst $38
    ld b, e
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld e, a
    rst $38
    ld sp, hl
    rst $38
    cp c
    rst $38
    sub c
    rst $38
    ei
    rst $38
    add b
    rst $38
    and c
    rst $38
    cp h
    rst $38
    ld hl, sp-$01
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
    db $fc
    rst $38
    cp b
    rst $38
    sbc h
    rst $38
    dec c
    cp $0d
    cp $0d

jr_062_7f8d:
    cp $11
    cp $91
    ld a, [hl]
    dec b
    cp $30
    rst $38
    dec sp

jr_062_7f97:
    db $fc
    ld a, h
    rst $38
    ld c, l
    rst $38
    ccf
    rst $08
    ld [hl], a
    adc a
    ld a, a
    add a
    ei
    rlca
    rst $38
    inc bc
    add c
    ld a, a
    cp $ff
    ldh a, [rIE]
    jr nz, jr_062_7f8d

    ld [$35ff], sp
    ld a, [$f32c]
    ld c, c
    rst $30
    jr nz, jr_062_7f97

    db $fd
    ld [bc], a
    cp h
    ld b, e
    sbc c
    ld h, a
    inc bc
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    add b
    ld a, a
    sbc d
    ld h, a
    push de
    ld a, [hl-]
    ld e, e
    cp h
    ld a, h
    rst $38
    ld d, e
    db $ec
    pop bc
    cp $e1
    cp $c0
    rst $38
    adc b
    rst $30
    ld c, $f1
    rrca
    ldh a, [$0c]
    di
    rrca
    rst $38
    adc c
    rst $38
    rrca
    rst $38
    rst $10
    rst $38
    sbc a
    ldh [$8f], a
    ldh a, [$83]
    db $fc
    and e
    call c, $fc83
    add e
    db $fc
    inc b
    ei
    inc b
    ei
    jr c, @+$01

    ld a, h
    rst $38
    rst $38
    rst $38
    rst $38

Call_062_7fff:
    rst $38
