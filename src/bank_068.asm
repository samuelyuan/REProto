SECTION "ROM Bank $068", ROMX[$4000], BANK[$68]

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld bc, $07fe
    ld hl, sp-$02
    ld bc, $ff7f
    rra
    rst $38
    adc h
    ld a, a
    ld sp, $b0ce
    ld c, a
    inc bc
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    ld h, b

jr_068_4049:
    sbc a
    db $dd
    jr nz, jr_068_4049

    inc bc
    ld hl, sp+$07
    rst $30
    ret


    rst $00
    and e
    and a
    inc de
    ld [hl], a
    ld [$ce31], sp
    db $fd
    ld [bc], a
    rst $38
    add [hl]
    rst $38
    ld [bc], a
    nop
    rst $38
    cp $ff
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    db $f4
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    ld [hl], d
    adc h
    ld l, [hl]
    sub b
    add hl, sp
    rst $00
    nop
    rst $38
    ret nz

    rst $38
    rlca
    rst $38
    dec b
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    db $eb
    rst $38
    db $ed
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rlca
    rst $38
    rra
    rst $38
    add hl, de
    rst $38
    jr @+$01

    add hl, sp
    rst $38
    ld [hl], c
    rst $38
    inc de
    rst $38
    add hl, de
    rst $38
    add hl, sp
    rst $38
    add hl, de
    rst $38
    add hl, bc
    rst $38
    adc l
    rst $38
    sbc h
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
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38

Call_068_40be:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    cp $ff
    db $fd
    rst $38
    ld hl, sp-$01
    cp $ff
    push af
    rst $38
    ld hl, sp-$01
    cp [hl]
    rst $38
    adc $ff
    call nz, $e0ff
    rst $38
    ldh [rIE], a
    ld a, c
    rst $38
    cp h
    ld a, a
    db $fc

Call_068_40f3:
    rra
    inc c
    rst $38
    db $ed
    cp $f4
    rst $38
    add hl, sp

jr_068_40fb:
    cp $84
    ld a, a
    ld [hl], e
    db $fc
    db $fc
    rst $38
    ret nz

    rst $38
    jr z, @-$27

    inc e
    db $e3
    ld b, a
    add b
    sbc a
    ld b, b
    nop
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    ld [$00ff], sp
    rst $38
    db $ed
    ld [bc], a

jr_068_4118:
    xor [hl]
    nop
    db $fc
    ld bc, $11ea
    cp b
    ld b, a
    ld c, c
    add [hl]
    inc c
    nop
    ld b, e
    jr jr_068_4118

    nop
    ld h, h
    add e
    jr nc, jr_068_40fb

    call nz, $b2fb
    pop bc
    db $10
    rrca
    sub b
    rrca
    add b
    rra
    ret nz

    rra
    inc hl
    call c, $c0f8
    adc b
    ret nz

    ld [$4cc0], sp
    add b
    ld c, d
    add h
    res 0, h
    jp $e484


    add b
    call nz, $8680
    ret nz

    add l
    jp nz, $c283

    ldh [$c3], a
    jp $e3c1


    pop bc
    pop bc
    pop bc
    jp nz, $d8c1

    pop bc
    xor h
    pop de
    and l
    ret nc

    ret nc

    ldh [$d0], a
    ldh [$f0], a
    ret nz

    ret nc

    ldh [$d0], a
    ldh [$d2], a
    ldh [$ea], a
    ldh a, [$f8]
    ldh [$d8], a
    ldh [$df], a
    ldh [$df], a
    ldh [$c1], a
    cp $de
    pop af
    rst $08
    ldh a, [$dc]
    ldh [$dc], a
    ldh [$fc], a
    ret nz

    sbc $e0
    adc $e0
    cp $e0
    cp $e0
    xor $f0
    db $ec
    ldh a, [$ec]
    ldh a, [$fe]
    ldh a, [$f6]
    ld hl, sp-$2a
    ld hl, sp-$0a
    ld hl, sp-$09
    ld hl, sp-$0d
    db $fc
    pop af
    cp $f6
    ld hl, sp-$03
    ldh a, [$e7]
    ld hl, sp-$1a
    ld hl, sp-$0a
    ld hl, sp-$12
    ldh a, [$ef]
    ldh a, [$e7]
    ld hl, sp-$0c
    ld sp, hl
    ld a, [c]
    db $fd
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    call z, $e1ff
    cp $c3
    db $fc
    db $e3
    db $fc
    db $ed
    ldh a, [$e4]
    ld hl, sp-$3c
    ld hl, sp-$3c
    ld hl, sp-$3c
    ld hl, sp-$3c
    ld hl, sp-$50
    ret z

    jr nc, @-$36

    scf
    ret z

    ld h, b
    sbc a
    nop
    rst $38
    adc a
    ldh a, [$8f]
    ldh a, [$9e]
    pop hl
    sbc l
    db $e3
    rra
    pop hl
    rra
    pop hl
    rra
    pop hl
    dec sp
    pop bc
    dec hl
    pop bc
    ccf
    pop bc
    ccf
    pop bc
    add a
    ld sp, hl
    dec b
    ei
    dec b
    rst $38
    ld [hl], a
    adc a
    ei
    rlca
    ei
    rlca
    cpl
    jp $cf23


    and c

Jump_068_41ff:
    ld c, a
    ld hl, $71cf
    adc a
    ld [hl], c
    adc a
    ld a, c
    add a
    db $fd
    inc bc
    rst $30
    dec bc
    db $76

jr_068_420d:
    adc a
    add l
    cp $4d
    cp $7f
    db $fc
    ld l, h
    sbc [hl]
    add [hl]
    rrca
    ld sp, hl
    rlca
    dec a
    jp nz, $ff00

    ld bc, $0dfe
    nop
    ld a, [c]
    ld bc, $4798
    ld e, a
    rst $38
    ld b, b
    ccf
    ld b, b
    ccf
    jr nz, jr_068_420d

    nop
    add b
    cp $ff
    ei
    db $fc
    rst $38
    ldh a, [$d7]
    ldh [$c7], a
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
    ld bc, $0000
    ld bc, $01c0
    ret nz

    ld bc, $03e1
    dec sp
    rst $20
    jp nc, $a2ff

    rst $18
    inc e
    db $e3
    sbc h
    ld h, e
    ld l, a
    add b

jr_068_425c:
    and e
    ret nz

jr_068_425e:
    and c
    ret nz

    cp h
    db $e3
    db $fc
    sub e
    ld a, [hl+]
    rst $18

jr_068_4266:
    or b
    ld c, a

jr_068_4268:
    cp h
    ld b, e

jr_068_426a:
    cp a
    ld b, b

jr_068_426c:
    cp a
    ld b, b
    rst $38
    ld b, b
    dec sp
    ld b, h
    ld a, h
    inc hl
    ld h, h
    inc bc
    inc bc
    ld b, b
    add e
    ld b, b
    add b
    ld b, c
    add b
    ld b, c
    add c
    ld b, b
    cp a
    ld b, c
    sbc [hl]
    ld h, c
    rst $18
    jr nz, jr_068_4266

    jr nz, jr_068_4268

    jr nz, jr_068_426a

    jr nz, jr_068_425c

    jr nc, jr_068_425e

    jr nc, jr_068_4291

jr_068_4291:
    db $10
    jr nz, @+$12

    ld d, $39
    sbc a
    ccf
    rra
    ccf
    ld a, c
    ccf
    cp b
    ld a, a
    ld a, c
    cp $bb
    ld b, h
    call z, Call_068_4800
    add h
    ld c, l
    add b
    dec b
    adc b
    add h
    ld [$881c], sp
    sub e
    ld [$1887], sp
    and a
    jr jr_068_426c

    ld [$08d7], sp
    add a
    ld [$88df], sp
    daa
    ret c

    call nz, Call_000_2838
    ld sp, hl
    ld bc, $10fa
    inc sp
    ld de, $2036
    ld [hl], a
    nop
    rst $28
    inc b
    ld l, a
    ld c, b
    rst $28
    ld c, a
    ldh [$5e], a
    ldh [$7c], a
    ldh [$6d], a
    ldh a, [$7b]
    db $fc
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld sp, hl
    cp $fb
    db $fc
    di
    db $fc
    ld a, [c]
    db $fc
    ldh a, [$fc]
    db $e4
    ld hl, sp-$18
    ldh a, [$d8]
    ldh [$dc], a
    ldh [$fc], a
    ret nz

    cp b
    ret nz

    cp h
    ret nz

    cp [hl]
    ret nz

    dec a
    ret nz

    rra
    ldh [$8e], a
    pop af
    db $dd
    ld [c], a
    rst $38
    ret nz

    ccf
    ret nz

    ld c, [hl]
    or c
    rlca
    ld hl, sp-$73
    ld [hl], d
    ld h, e
    rst $38
    ld b, a
    rst $38
    ccf
    ld a, a
    cp $3f
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    sbc a
    nop
    ld c, $e0
    rra
    nop
    rst $38
    db $fd
    cp $04
    rst $38
    ldh a, [rIE]
    ld [bc], a
    cp a
    db $d3
    rrca
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
    jr jr_068_4363

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_068_4373

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_068_4383

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_068_4393

    ld [hl-], a

jr_068_4363:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_068_43a3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_068_4373:
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

jr_068_4383:
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

jr_068_4393:
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

jr_068_43a3:
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
    jr jr_068_4463

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_068_4473

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
    jr nc, jr_068_4493

    ld [hl-], a

jr_068_4463:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_068_44a3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    dec b
    dec b
    dec b

jr_068_4473:
    dec b
    ld b, $05
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
    dec b
    dec b
    ld b, $05
    dec b
    dec b
    dec b
    dec b
    ld bc, $0101
    dec b
    dec b
    dec b
    ld bc, $0505
    dec b
    dec b

jr_068_4493:
    dec b
    dec b
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    dec b
    dec b
    dec b
    dec b
    dec b

jr_068_44a3:
    ld bc, $0505
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0501
    dec b
    ld b, $06
    nop
    ld b, $06
    dec b
    ld bc, $0505
    dec b
    ld bc, $0101
    ld bc, $0105
    ld bc, $0000
    nop
    ld bc, $0601
    dec b
    ld bc, $0501
    dec b
    ld bc, $0101
    ld bc, $0000
    nop
    ld bc, $0101
    ld bc, $0105
    ld bc, $0101
    ld bc, $0101
    nop
    nop
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
    nop
    nop
    ld bc, $0501
    dec b
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    dec b
    ld bc, $0501
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0505
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    dec b
    dec b
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    dec b
    dec b
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    dec b
    ld bc, $0501
    ld bc, $0101
    ld bc, $0000
    ld bc, $0101
    ld bc, $0501
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld b, $01
    ld bc, $0101
    ld bc, $0501
    ld bc, $0105
    ld bc, $0101
    dec c
    dec c
    ld c, $0e
    ld c, $0e
    add hl, bc
    dec c
    dec c
    dec c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    dec c
    add hl, bc
    dec c
    dec c
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
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    add hl, bc
    add hl, bc
    dec c
    add hl, bc
    dec c
    dec c
    add hl, bc
    add hl, bc
    ld a, [de]
    pop hl
    ld b, $61
    ld c, $c1
    ld e, l
    add e
    dec [hl]
    add e
    ld e, a
    add e
    ld l, d
    rlca
    inc l
    add a
    db $10
    adc a
    ld e, c
    adc [hl]
    ld b, b
    sbc a
    ld h, b
    sbc a
    ld b, b
    sbc a
    ld d, e
    inc e
    ld a, e
    sbc h
    ld e, h
    jr c, jr_068_45ec

    db $fc
    dec a
    cp $f7
    db $fc
    ld a, [$e8fc]

jr_068_45d9:
    rst $38
    pop bc
    rst $38
    add c
    rst $38
    pop bc
    cp a
    add c
    rst $38
    ld a, $c1
    cpl
    ret nz

    daa
    ld b, b
    rst $28

jr_068_45e9:
    nop
    add a
    ld b, b

jr_068_45ec:
    cp a
    ld b, b
    adc a
    ld b, b
    ld d, a
    xor c
    ld sp, hl
    ld b, $ff
    nop
    sbc a
    ld h, c
    cp a
    pop bc
    rst $08
    add b
    rst $38
    add b
    rst $38

Call_068_45ff:
    ret nz

    jr jr_068_45e9

    ld [$e4f7], sp
    rst $38
    sub [hl]
    rst $28
    inc b
    rst $38
    ld b, b
    cp a
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    inc b
    ld a, e
    adc a
    ld [hl], b
    rst $08
    jr nc, jr_068_45d9

    ccf
    ret nz

    ccf
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ret nz

    ccf
    ret nz

    ccf
    add c
    ld a, [hl]
    sub c
    ld a, [hl]
    sbc b
    ld a, a
    dec bc
    rst $30
    cp l
    ld b, a
    sbc b
    rst $20
    ld a, [bc]
    push af
    ld c, $f1
    sbc l
    ld h, e
    db $ed
    inc de
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    ld a, l
    add e
    ld a, l
    add e
    ld e, l
    and e
    ld e, l
    and e
    push de
    xor e
    jp $c3bd


    cp l
    jp $99bd


    rst $38
    ld sp, hl
    rst $38
    xor $df
    call nc, $92ef
    ld l, l
    or c
    ld l, [hl]
    inc hl
    db $fc
    jr nz, @+$01

    jr nc, @+$01

    db $10
    rst $38
    ld de, $01fe
    cp $04
    ei
    add h
    ld a, e
    ld [$09ff], sp
    cp $08
    rst $38
    jr @+$01

    ld a, h
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    and h
    rst $38
    and h
    rst $38
    ld l, h
    rst $38
    inc l
    rst $38
    ld e, h
    cp a
    sub h
    ld a, a
    ld a, [bc]
    push af
    sbc d
    ld h, l
    sbc d
    ld h, l
    ld a, [de]
    push hl
    ld a, [hl-]
    push bc
    cp d
    push bc
    or d
    call $cf30
    ld [hl], b
    adc a
    ld [hl], h
    adc a
    db $ed
    rra
    dec b
    rst $38
    ld b, e
    rst $38
    jp nz, $caff

    rst $30
    adc d
    rst $30
    sbc [hl]
    db $e3
    adc a
    di
    call Call_068_40f3
    cp a
    ccf
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ld bc, $01ff
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld b, h
    cp a
    db $ec
    rra
    add sp, $1f
    ldh [$1f], a
    jp hl


    ld e, $a3
    inc e
    ld hl, $261e
    add hl, de
    ld a, a
    sbc b

jr_068_46d2:
    ccf
    ret c

    ld a, a
    sub b
    ccf
    sub b
    scf
    cp c
    cp e
    and l
    rst $28
    sub a
    rst $28
    add a
    call nc, $cc8f
    sbc a
    jr nz, @-$1f

    rst $00
    jr jr_068_46f0

    ld hl, sp-$15
    inc d
    ld h, a
    sbc b
    ld b, a
    cp b

jr_068_46f0:
    rst $18
    jr nz, jr_068_46d2

    jr nz, @+$01

    nop
    rst $30
    ld [$718e], sp
    rst $38
    ld bc, $03fd
    ld a, l
    add e
    inc bc
    rst $38
    inc bc
    rst $38
    rst $08
    rst $38
    rst $00
    rst $38
    add a
    rst $38
    rlca
    rst $38
    rla
    rst $28
    rla
    rst $28
    ld d, $ef
    rrca
    rst $38
    ld c, $ff
    ld e, $ff
    jr @+$01

    jr @+$01

    inc a
    rst $38
    jr c, @+$01

    jr c, @+$01

    jr @+$01

    ld hl, sp+$7f
    ld e, b
    rst $38
    ld a, a
    rst $38
    dec a
    rst $38
    ld a, b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ret nz

    rst $38
    ld [c], a
    rst $38
    ld [hl], a
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    push af
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$f0ff]
    rst $38
    ret nz

    rst $38
    add b
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
    ldh [rIE], a
    ld b, b
    rst $38
    nop
    rst $38
    db $10
    rst $38
    dec c
    rst $38
    cp a
    ld a, a
    rst $38
    ld a, a
    ld a, a
    rst $38
    ld a, l
    rst $38
    ld e, l
    rst $38
    ld l, b
    rst $38
    ld [hl], b
    rst $38
    ld a, b
    rst $38
    inc a
    rst $38
    inc sp
    rst $38
    dec d
    ei
    inc b
    ei
    inc h
    db $db
    ld b, $f9
    inc de
    db $ec
    nop
    rst $38
    inc b
    rst $38
    ld b, $ff
    ld b, $ff
    ld [bc], a
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld [hl], h
    rst $38
    db $fc
    rst $38
    db $ec
    rst $38
    db $ec
    rst $38
    add c
    cp $01
    cp $05
    cp $01
    cp $01
    cp $02
    rst $38
    ld [bc], a
    rst $38
    db $10
    rst $28
    nop
    rst $38
    add b
    rst $38
    and b
    rst $18
    ldh [$df], a
    pop bc
    rst $38
    ld b, b

jr_068_47bd:
    rst $38
    ld [hl+], a

jr_068_47bf:
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr z, jr_068_47bd

    jr z, jr_068_47bf

    ld [$88f7], sp
    ld [hl], a
    jr @-$07

    ld [$00f7], sp
    rst $38
    add b
    ld a, a
    and b
    ld a, a
    jr nz, @+$01

    ld h, d
    db $fd
    ldh [rIE], a
    ldh a, [rIE]
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    sbc a
    ld a, a
    cp a
    ld a, a
    sbc a
    ld a, a
    sbc l
    ld a, a
    dec a
    rst $38
    add hl, sp
    rst $38
    or c
    ld a, a
    ld [hl], c
    rst $38
    ld [hl], c
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38

Call_068_4800:
    pop bc
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld b, $ff
    ld l, $ff
    inc c
    rst $38
    inc l
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    ld c, h
    rst $38
    ld c, b
    rst $38
    inc e
    rst $38
    ld c, h
    rst $38
    db $dd
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    ld l, l
    rst $38
    inc de
    rst $38
    ld de, $3111
    ld sp, $2d2d
    cpl
    cpl
    ld a, [bc]
    ld a, [bc]
    ld [de], a
    ld a, [hl-]
    inc b
    ccf
    ld d, d
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ret nz

    rst $38
    add d
    cp a
    sub b
    cp a
    ret nc

    rst $38
    add sp, -$01
    ret nz

    cp $60
    ld a, h
    jr nz, jr_068_488e

    jr nz, jr_068_4878

    jr nz, jr_068_487a

    inc b
    inc b
    ld a, $3e
    ld a, $3e
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

jr_068_4878:
    ld e, a
    rst $38

jr_068_487a:
    ld e, a
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    adc a
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld a, $ff
    ld a, h
    rst $38
    ld hl, sp-$01

jr_068_488e:
    ld hl, sp-$01
    ld a, b
    rst $38
    ld l, b
    rst $38
    ld l, b
    rst $38
    ld b, h
    rst $38
    ld b, b
    rst $38
    ld b, [hl]
    rst $38
    ld b, $ff
    add a
    ld a, a
    add a
    ld a, a
    ld b, [hl]
    cp a
    rst $00
    ccf
    rst $00
    ccf
    adc a
    ld a, a
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add d
    db $fd
    inc sp
    call z, $dc23
    inc sp
    call z, $c837
    inc bc
    db $fc
    ld hl, $63de
    sbc h
    rst $20
    jr @+$49

    cp b
    ld b, a
    cp b
    ld [bc], a
    db $fd
    ld a, [bc]
    push af
    ld [$80f7], sp
    rst $38
    ld de, $06ee
    rst $38
    ld a, [hl+]
    rst $18
    jr @+$01

    sbc b
    rst $38
    ld sp, hl
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    ei
    db $fc
    ei
    ei
    db $fc
    rst $30
    ld hl, sp-$0f
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fd
    cp $f5
    cp $01
    cp $01
    cp $03
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rTAC]
    ld hl, sp+$4e
    pop af
    ld c, [hl]
    pop af
    ld c, h
    di
    ld b, d
    rst $38
    ld a, [hl]
    rst $38
    ld a, h
    rst $38
    cp $ff
    or $ff
    call z, $c0ff
    rst $38
    jp nz, Jump_000_00fd

    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    ret nc

    rst $38
    or h
    rst $38
    ldh [rIE], a
    ld h, c
    rst $38
    jr nz, @+$01

    inc h
    rst $38
    ld b, $ff
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld [$80ff], sp
    rst $38
    ret nz

    rst $38
    jp nz, $e2ff

    rst $38
    scf
    rst $38
    scf
    rst $38
    ld e, $ff
    rra
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    adc $ff
    adc $ff
    adc $ff
    add $ff
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    di
    rst $38
    jp $e3ff


    rst $38
    di
    rst $38
    pop hl
    rst $38
    ld c, [hl]
    rst $38
    xor $ff
    db $eb
    rst $38
    ld sp, hl
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    push hl
    rst $38
    push bc
    rst $38
    rst $20
    rst $38
    cp $ff
    add sp, -$01
    ldh [rIE], a
    ld [hl], b
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    push af
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ccf
    rst $38
    inc a
    rst $38
    cpl
    rst $38
    sbc b
    ld a, a
    ret z

    ccf
    add h
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    adc c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    pop hl
    ld a, [hl]
    ld a, a
    db $fc
    ld [$3cf7], sp
    jp $c7f9


    db $fc
    rlca
    cp h
    ld b, a
    db $fc
    rlca
    db $fc
    ld b, $fc
    ld b, $f8
    adc [hl]
    ld hl, sp+$0e
    ld hl, sp+$1e
    ld hl, sp-$44
    ld hl, sp-$04
    ld hl, sp-$03
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp+$3d
    ld b, d
    db $fd
    and d
    db $dd
    add b
    rst $38
    adc c
    or $10
    cp $5f
    cp $57
    cp $c2
    db $fd
    pop de
    db $fd
    pop af
    rst $38
    ldh a, [$fe]
    ld hl, sp-$02
    db $fc
    rst $38
    db $fc
    sbc a
    db $fc
    sbc a
    db $fc
    cp a
    xor h
    ld [hl], c
    cp h
    ld e, b
    ld hl, sp+$30
    pop af
    ld l, c
    pop af
    db $fd
    ld hl, sp-$09
    ei
    rst $18
    cp $df
    add h
    cp $84
    cp $00
    db $fc
    add b
    db $fd
    sub b
    rst $28
    inc b
    db $db
    inc c
    ldh a, [$90]
    ldh [$9f], a
    ldh [rNR31], a
    ldh [$1f], a
    ldh [rNR34], a
    pop hl
    cp b
    rst $00
    and b
    rst $08
    xor h
    jp $ceb7


    rra
    cp $7d
    cp $7b
    cp $72
    cp $40
    cp $42
    cp $64
    cp $37
    cp $3f
    cp $9e
    ld a, a
    rst $38
    ld a, $7e
    cp a
    sbc [hl]
    rst $38
    sbc $ff
    ld a, $ff
    ccf
    rst $38
    ld a, $ff
    inc e
    rst $38
    ld d, $f9
    inc c
    di
    ld [bc], a
    rst $38
    nop
    rst $38
    ld [$10f7], sp
    rst $38
    ldh a, [rIE]
    ret nc

    rst $38
    ldh a, [rIE]
    sub c
    rst $38
    add b
    rst $38
    add h
    rst $38
    adc b
    rst $38
    ret nc

    rst $38
    pop bc
    rst $38
    db $d3
    rst $38
    jp nz, $c6ff

    rst $38
    ld e, b
    rst $38
    ret nz

    rst $38
    ld e, h
    rst $38
    ld e, a
    rst $38
    ld l, a
    rst $38
    ld b, a
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    nop
    rst $38
    jr c, @+$01

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
    cp $ff
    sbc c
    rst $38
    inc bc
    rst $38
    ld bc, $04ff
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    ld [hl], a
    adc a
    daa
    rst $18
    dec a
    rst $38
    ldh a, [$7f]
    ret nc

    ld h, c
    and b
    ld a, a
    sub b
    ld l, a
    cp a
    ld c, a
    rrca
    rrca
    rst $00
    rrca
    sub c
    rrca
    and d
    dec c
    pop bc
    rrca
    ld h, d
    sbc a
    ld [$9014], a
    ld c, $88
    ld b, $28
    ld b, $10
    ld c, $1c
    ld [bc], a
    ld [bc], a
    nop
    adc a
    nop
    inc c
    inc bc
    ei
    rlca
    ld b, e
    cp h
    di
    inc c
    ld a, e
    inc b
    push af
    ld c, $f8
    rlca
    pop hl
    ld e, $6f
    sbc h
    di
    inc c
    db $db
    inc h
    ld sp, hl
    ld b, $99
    ld b, $17
    db $ec
    ld c, $ff
    rst $38

jr_068_4b01:
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    and h
    ld a, e
    ccf
    ret nz

    cp a
    ld b, b
    rst $18
    jr nz, jr_068_4b62

    xor h
    cp a
    ld b, b
    rra
    nop
    ld a, l
    ld [bc], a
    db $10
    rst $38
    jr jr_068_4b01

    dec bc
    rlca
    add e
    rlca
    add d
    rlca
    add b
    rlca
    ld e, h
    add e
    inc de
    rst $28
    ld [hl], b
    adc a
    ld a, [$fd07]
    inc bc
    ld hl, sp+$07
    ld de, $010f
    rrca
    nop
    rlca
    nop
    inc bc
    ld bc, $ff8f
    rst $38
    rst $38
    rlca
    rst $18
    daa
    rst $38
    add a
    db $10
    rst $28
    ld [bc], a
    rst $38
    ld [de], a
    rst $28
    nop
    rst $38
    add d
    ld a, a
    ret nz

    ccf
    inc bc
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    ld h, b
    rst $38
    jr nc, @+$01

    ld d, b
    rst $38
    ld h, [hl]
    rst $38
    ld a, c
    rst $38

jr_068_4b62:
    rlca
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld [hl], a
    rst $38
    inc bc

jr_068_4b6b:
    rst $38
    ld h, c
    rst $38
    ld bc, $e1ff
    ld a, a
    rst $38
    ld a, a
    ld [hl], a
    rst $38
    ld d, e
    rst $38
    ld d, e
    rst $38
    inc bc
    rst $38
    add a
    rst $38
    and b
    rst $18
    nop
    rst $38
    jr jr_068_4b6b

    ld h, e
    rst $38
    rst $00
    rst $38
    ld bc, $41ff
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, @+$01

    or c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    add c
    rst $38
    ret


    rst $38
    rst $30
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
    add hl, bc
    cp $1a
    db $fc
    ld a, [de]
    db $fc
    ld a, [$fdfc]
    cp $fc
    rst $38
    cp [hl]
    rst $38
    rst $18
    rst $38
    ld e, h
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    pop af
    rrca
    xor $1f
    sbc a
    ld a, [hl]
    adc l
    ld a, [hl]
    sub l
    ld l, [hl]
    or c
    ld c, [hl]
    db $db
    ld h, $e6
    rra
    xor [hl]
    rra
    ld a, [bc]
    rst $38
    rst $18
    ccf
    ldh a, [rIF]
    ld [hl], a
    adc b
    rst $30
    ld [$c03f], sp
    rst $38
    nop
    db $eb
    db $10
    db $fd
    ld [$0cf7], sp
    ei
    inc b
    pop af
    ld c, $e3
    rra
    rrca
    rst $38
    ld bc, $01fe
    cp $01
    cp $00
    cp $cc
    ld a, $36
    rrca
    ld a, [bc]
    rlca
    rlca
    ld [bc], a
    ld l, e
    ld b, $e0
    ld e, $04
    cp $04
    cp $7e
    rst $38
    cp $ff
    rst $18
    rst $38
    rst $38
    rst $38
    ld l, $ff
    ccf
    rst $38
    add d
    rst $38
    sbc [hl]
    ld bc, $0fb0
    and $1f
    jp nz, $f83f

    rlca
    ld e, b
    and a
    xor l
    inc de
    sub c
    rrca
    ld [hl], c
    adc a
    add a
    ld a, a
    di
    rrca
    sbc a
    ld h, b
    inc hl
    call c, $fe00
    nop
    ld sp, hl
    nop
    ld hl, sp+$04
    db $fc
    add d
    ld a, [hl]
    ld [bc], a
    rst $30
    inc bc
    rst $38
    ld b, c
    cp a
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
    inc bc
    rst $38
    sub a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    rst $38
    add a
    rst $38
    adc a
    rst $38
    sbc a
    rst $38
    db $d3
    rst $38
    ld e, c
    rst $38
    dec b
    rst $38
    ld b, a
    rst $38
    rst $20
    rst $38
    rlca
    rst $38
    add c
    rst $38
    ret nz

    rst $38
    and b
    rst $38
    add b
    rst $38
    db $fd
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    ld bc, $01ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $18
    daa
    rst $18
    inc hl
    rst $18
    ld e, b
    rst $20
    ld [de], a
    pop hl
    ld b, b
    ccf
    ld b, l
    ld a, $ce
    ccf
    db $e4
    rra
    ld b, b
    cp a
    ld [hl], a
    adc b
    ld a, a
    add b
    rst $38
    add b
    or a
    ret z

    sbc c
    cp $8e

jr_068_4cd1:
    rst $38
    ld [hl], a
    adc a
    db $f4
    rrca
    ld [hl], h
    adc a
    db $fd
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $30
    rrca
    ldh [$1f], a
    ld h, b
    sbc a
    sub h
    ld a, e
    jr c, @+$01

    jr jr_068_4cd1

    or $1b
    jp c, $da3f

    ccf
    rst $38
    ld d, $e4
    rra
    push hl
    rra
    push hl
    rra
    ld a, [c]
    dec c
    ld a, [$0f0d]
    ld sp, hl
    and a
    ld sp, hl
    db $ed
    inc de
    pop af
    rrca
    ld de, $00ef
    rst $38
    sub b
    ld l, a
    ldh a, [rIF]
    cp $83
    ld a, a
    jp $03f4


    inc a
    inc bc
    inc l
    inc de
    rra
    nop
    sbc l
    ld [bc], a
    ld e, h
    add e
    ld d, h
    adc e
    call nc, Call_000_1e8b
    ret


    ld l, $d1
    inc a
    jp $817e


    ld e, d
    add l
    ret c

    rlca
    di
    rrca
    rst $30
    rrca
    ld [hl], d
    rrca
    ld a, d
    add a
    ld a, [hl-]
    rst $00
    ld c, $f3
    inc b
    ei
    sbc b
    rst $38
    add sp, $1f
    db $e4
    dec de
    add h
    ld a, e
    xor h
    ld d, e
    db $e4
    dec de
    db $e4
    dec de
    ldh [$1f], a
    db $ec
    inc de
    nop
    rst $38
    add b
    rst $38
    jp nz, Jump_000_00ff

    rst $38
    nop
    rst $38
    daa
    rst $38
    rrca
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    or b
    rst $38
    rra
    rst $38
    rra
    rst $38
    rlca
    rst $38
    add a
    rst $38
    jp nz, $c0ff

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $38
    add e
    rst $38
    add e
    rst $38
    inc bc
    rst $38
    add e
    rst $38
    add e
    rst $38
    jp $ffff


    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    di
    rst $38
    ldh [rIE], a
    pop af
    rst $38
    rst $38
    rst $38
    rst $38

jr_068_4da1:
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
    db $fd
    rst $38
    add e
    db $fc
    pop af
    cp $e2
    db $fd
    jr jr_068_4da1

    ld a, b
    add a
    rst $38
    nop
    rst $38
    nop
    ld b, $f9
    inc b
    ei
    inc d
    ei
    ld a, [c]
    rra
    jp nz, $dc3f

    inc hl
    adc $01
    cp [hl]
    ld bc, $ff03
    rst $38
    rst $38
    rst $38
    rst $38
    inc hl
    rst $18
    db $10
    rst $38
    cp b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    rlca
    rst $38
    rrca
    rst $38
    rst $18
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld e, a
    cp a
    cpl
    rst $18
    rla
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rst $28
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
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
    ld e, $ff
    ld a, [hl]
    rst $38
    ld a, h
    rst $38
    ld l, b
    rst $38
    jr z, @+$01

    inc l
    rst $38
    jr c, @+$01

    jr nz, @+$01

    ld bc, $02fe
    rst $38
    adc b
    rst $30
    ldh [rIE], a
    sub b
    rst $38
    ld hl, sp-$01
    ld h, b
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld [hl], d
    rst $38
    ldh [rIE], a
    ld bc, $00ff
    add a
    nop
    rst $38
    ld [bc], a
    ld sp, hl
    ret c

    rst $38
    ld bc, $05ff
    ei
    jp nz, $82fd

    db $fd
    nop
    rst $38
    jr nz, @+$01

    dec sp
    rst $38
    ld l, a
    rst $38
    rst $00
    rst $38
    add b
    rst $38
    or b
    rst $38
    ldh [rIE], a
    ld c, l
    rst $38
    rra
    rst $38
    dec de
    rst $38
    ld bc, $00ff
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
    db $fd
    rst $38
    rst $38
    rst $38
    add a
    rst $38
    ld bc, $87ff
    rst $38
    cpl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    add b
    rst $38
    add e
    rst $38
    pop bc
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    rlca

jr_068_4ea3:
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

jr_068_4eaf:
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    jr z, jr_068_4eaf

    add a
    ld hl, sp+$25
    jp c, $c13e

    xor d
    ld e, a
    ccf
    rst $38
    dec a
    cp $3f
    ret nz

    di
    nop
    add sp, $10
    db $fc
    nop
    ld a, a
    add b
    inc de
    db $fc
    pop af
    rst $38
    adc $f1
    rst $38
    ret nz

    rst $38
    ret nz

    db $eb
    ret nz

    ld [c], a
    pop bc
    jp $ffc0


    ret nz

    rst $38
    rst $38
    dec bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $98ff


    rst $38
    adc [hl]
    rst $38
    sbc [hl]
    rst $38
    ld e, $ff
    cp $83
    inc e
    db $e3
    dec de
    rst $20
    rra
    rst $38
    ld [hl], c
    adc a
    push af
    dec bc
    ld a, l
    add e
    ld [hl], e
    adc a
    ld a, [c]
    rrca
    db $fd
    ld [bc], a
    ld c, l
    ld [bc], a
    ld l, [hl]
    inc bc
    sbc $3f
    ld h, [hl]
    sbc a
    rst $20
    jr jr_068_4f8a

    adc b
    ld b, c
    cp a
    rra
    pop hl
    pop bc
    cp a
    ld a, a
    add c
    db $fd
    add e
    add d
    db $fd
    jr nc, jr_068_4ea3

    add b
    inc bc
    add c
    inc bc
    cp h
    inc bc
    ld [hl+], a
    pop de
    ld b, b
    or c
    ld b, b
    pop af
    add [hl]
    ld [hl], c
    add e
    ld bc, $00ff
    ld a, [de]
    pop hl
    dec de
    ldh [$fc], a
    inc bc
    ldh [$1f], a
    nop
    rst $38
    nop
    rst $38
    jr c, @+$01

    rra
    rst $38
    ld a, a
    rst $38
    dec e
    rst $38
    ld a, [c]
    rst $38
    ld c, $ff
    rrca
    rst $38
    ld l, b
    add a
    inc a
    jp $ff80


    cp h
    rst $38
    call nz, $d8bf
    and a
    ld [bc], a
    db $fd
    add e
    db $fc
    adc b
    rst $30
    sub b
    rst $38
    ld [$00ff], sp
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    add b
    rst $38
    sub b
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    ei
    rst $38
    jp hl


    rst $38
    ldh [rIE], a
    pop hl
    rst $38
    pop bc
    rst $38
    ret nc

    rst $28
    ret nc

    rst $28
    jp z, $f0f5

    rst $38
    di
    rst $38

jr_068_4f8a:
    add b
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    add a
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$fcff]
    rst $38
    cp $ff
    ei
    rst $38
    ld hl, sp-$01

jr_068_4fb0:
    rra
    rst $38
    jr c, @+$01

    ld e, d
    and c
    pop af
    nop
    ccf
    ret nz

    add b
    ld a, a
    nop
    rst $38
    dec b
    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld b, h
    rst $38
    ld b, a
    rst $38
    ld a, a
    rst $38
    cpl
    ldh a, [rSTAT]
    ldh [$f2], a
    ld h, c
    sbc h
    ld h, e
    adc e
    ld h, h
    ld d, $e0
    sub $20
    ret


    ld [hl], $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld a, [c]
    rst $38
    rst $30
    rst $38
    scf
    rst $38
    ld a, a
    rst $38
    ld [hl], a
    rst $38
    ld h, a
    rst $38
    dec h
    rst $38
    inc de
    rst $38
    adc c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    rst $28
    rst $30
    set 6, a
    jp $83ff


    ld a, a
    db $e3
    ld a, a
    jp $017f


    rst $38
    dec de
    rst $38
    cp a
    nop
    add d
    ld [$08d7], sp
    rst $38
    rst $38
    ret


    or $6f
    add b
    adc a
    nop
    ccf
    ret nz

    ret nz

jr_068_5021:
    rst $38
    rst $38
    ld hl, sp-$7f
    ld hl, sp+$06
    ld sp, hl
    ld b, a
    sbc b
    ld h, a
    sbc b
    db $fc
    nop
    jr jr_068_4fb0

    ld [hl], a
    adc b
    rst $20

jr_068_5033:
    jr jr_068_5033

    ld bc, $f906
    inc b
    ei
    ld a, h
    add e
    pop bc
    cp $0d
    cp $00
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    jr @+$01

    sub b
    rst $38
    nop
    rst $38
    jr nc, jr_068_5021

    add b
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    di
    rrca
    ld a, b
    add a
    ld a, [hl]
    add c
    rra
    ldh [rP1], a
    rst $38
    inc bc
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38

jr_068_506b:
    rst $38
    rst $38
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
    pop hl
    rst $38
    db $e3
    rst $38
    rst $20
    rst $38
    db $e4
    rst $38
    inc h
    rst $38
    ld [bc], a
    rst $38
    ld hl, $71ff
    rst $38
    jp $c1ff


    rst $38
    ret nc

    rst $38
    ldh [rIE], a
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
    rlca
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    rst $20
    rst $38
    ld e, a
    rst $38
    ccf
    rst $38
    add sp, -$01
    nop
    rst $38
    rst $38
    rst $38
    or $ff
    ld h, e
    db $fc

jr_068_50b6:
    or a
    ld l, h
    jp hl


    db $76
    ld a, l
    db $e3
    sbc $e1
    sub $e1
    reti


    ldh [$ef], a
    ldh a, [$e7]
    ld hl, sp-$0c
    ld hl, sp-$01
    ld hl, sp-$02
    ld hl, sp-$15
    db $fc
    ld [c], a
    db $fd
    rst $30
    ld [$7880], sp
    jr c, jr_068_50b6

    inc d
    ldh [rSC], a
    ldh [$a0], a
    ld b, b
    ld d, c
    jr nz, jr_068_506b

    ld [hl], e
    rst $28
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
    rra
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    ld b, $f9
    ld l, h
    sub e
    ld a, b
    add a
    ld h, b
    sbc a
    add d
    ld a, l
    pop hl
    rra
    cp e
    rlca
    db $e3
    rra
    db $10

jr_068_5105:
    rst $38
    inc c
    di
    sbc $31
    reti


    scf
    pop de
    ccf
    ld b, b
    cp a
    ldh [$1f], a
    ld b, d
    dec a
    or c
    ld a, [hl]
    ld d, l
    cp $b1
    ld c, [hl]
    cp c
    ld b, [hl]
    jr jr_068_5105

    add e
    ld a, a
    dec bc
    rst $38
    inc bc

jr_068_5123:
    rst $38
    adc e
    ld [hl], a
    inc hl
    rst $18
    ld l, a
    rst $38
    nop
    rst $38
    add hl, de
    and $b0
    ld c, a
    call z, Call_000_00bf
    rst $38
    db $e4
    dec de
    inc [hl]
    swap b
    rst $08
    ld h, l
    sbc d
    add sp, $1f
    ret nz

    ccf
    rlca
    rst $38
    dec l
    rst $38
    rst $08
    rst $38
    cp h
    rst $38
    db $fc
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec de
    db $fc
    push bc
    jr c, jr_068_5123

    ldh a, [$c0]
    rst $38
    ret nz

    rst $38
    ret nc

    rst $28
    cp $e1
    sub $f9
    ld c, e
    db $fc
    ret nz

    rst $38
    jp $d3ff


    rst $28
    ret z

    rst $30
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    rst $28
    rst $38
    or $ff
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, a
    rst $38
    rst $38
    rst $38
    rst $38
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
    ret nc

    rst $38
    ccf
    rst $38
    ld a, a
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rst $18
    ccf
    rst $30
    rrca
    add b
    rst $38
    ldh a, [rIE]
    ld h, b
    rst $38
    ldh [$3f], a
    add b
    ld a, a
    rst $38
    nop
    ld a, [hl]
    ld bc, $0162
    ld b, [hl]
    nop
    inc a
    ret nz

    ccf
    ret nz

    cp a
    ld a, a
    cp a
    ld a, a
    ld h, $79
    jr z, jr_068_524f

    ld c, b
    ccf
    ld l, a
    ccf
    ccf
    ld a, a
    ld a, a
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

jr_068_51eb:
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
    ld hl, sp-$01
    ld hl, sp-$01
    adc c
    rst $38
    dec l
    rst $18
    adc b
    rst $38
    nop
    rst $38
    jr nz, jr_068_51eb

    add b
    rst $38
    ld [$00ff], sp
    rst $38
    inc d
    rst $38
    dec b
    rst $38
    ld b, l
    rst $38
    ld b, l
    rst $38
    ld bc, $01ff
    rst $38
    inc de
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    add $ff
    add $ff
    rst $00
    rst $38
    ld b, [hl]
    rst $38
    ld b, $ff
    ld b, b
    rst $38
    nop
    rst $38
    add c
    rst $38
    sub b
    ld l, a
    ld h, b
    rst $38
    nop
    rst $38
    inc c
    rst $38
    ld a, a
    rst $38
    ld a, b
    rst $38
    adc e
    rst $38
    cp $ff
    rst $38
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    ld h, a
    ld hl, sp+$1e
    rst $38
    inc bc

jr_068_524f:
    rst $38
    ld hl, sp+$07
    or b
    ld c, a
    adc l
    ld [hl], d
    add b
    ld a, a
    ldh a, [rIE]
    jr nc, @+$01

    nop
    rst $38
    db $10
    rst $38
    ld b, a
    cp a
    sbc b
    ld a, a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ld b, b
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    add b
    rst $38
    pop hl
    rst $38
    jp $ffff


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
    ld hl, $00ff
    rst $38
    cp a

jr_068_52a3:
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
    ld h, e
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    dec bc
    db $fc
    or $08
    ld a, [$ce00]
    ld bc, $8f71
    jr nz, jr_068_52a3

    rlca
    ld hl, sp+$1e
    ld sp, hl
    ld l, a
    sbc b
    ld [hl], a
    ld [$0f30], sp
    ld a, [c]
    rrca
    rst $38
    rst $38
    cp $ff
    ld e, $ff
    ld b, $ff
    add a
    cp $87
    cp $87
    cp $8e
    rst $38
    add $ff
    cp $ff
    ld a, [$f8ff]
    rst $38
    db $fc
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    ei
    rst $38
    rlca
    ld hl, sp+$06
    ld sp, hl
    nop
    rst $38
    nop
    rst $38
    inc e
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    inc d
    rst $38
    inc e
    rst $38
    sbc b
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld b, d
    rst $38
    sbc $ff
    ld e, h
    rst $38
    ld c, h
    rst $38
    inc c

jr_068_5313:
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    sbc b
    rst $38
    jr @+$01

    ld d, h
    rst $38
    ld d, a
    rst $38
    ld a, [hl-]
    rst $38
    ld a, [hl-]
    rst $38
    ld a, [hl-]
    rst $38
    ld l, $ff
    ld l, a
    rst $38
    scf
    rst $38
    ld e, $ff
    ld c, $ff
    ld c, $ff
    sbc $ff
    ld e, $ff
    ld a, h
    rst $38
    cp h
    rst $38
    ld a, h
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    add h
    rst $38
    ld b, [hl]
    rst $38
    jr nc, @+$01

    nop
    rst $38
    and b
    ld e, a
    jr c, jr_068_5313

    inc bc
    rst $38
    add b
    rst $38
    sbc a
    nop
    ld e, $ff
    cp a
    ld a, a
    or e
    ld a, a
    ld e, b
    or a
    ld e, b
    or a
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ld [hl], d
    rst $38
    ldh [rIE], a
    nop
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    ld a, h
    rst $38
    ldh a, [rIE]
    ld [c], a
    rst $38
    jr nz, @+$01

    ld a, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld sp, hl
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    db $fc
    ei
    cp $f9
    ld a, e
    db $fc
    ld hl, sp-$01
    cp $ff
    ld h, b
    rst $38
    ld b, b
    rst $38
    ret c

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    ld l, e
    rst $38
    nop
    rst $38
    and e
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
    inc bc
    rst $38
    rlca
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
    add a
    ld a, a
    add hl, bc
    rlca
    ld a, [hl]
    ld bc, $ff28
    inc h
    ei
    rst $38
    inc bc
    inc bc
    inc bc
    add c
    inc bc
    ld [bc], a
    inc bc
    nop
    inc bc
    add d
    inc bc
    ld [hl], h
    adc e
    and l
    rst $18
    cp e
    ld b, a
    cp a
    ld b, e
    ld sp, hl
    rlca
    ei
    rlca
    ld d, c
    rrca
    ld a, [hl]
    ld bc, $e007
    rrca
    ldh [$2e], a
    pop bc
    ld c, $ff
    cp c
    add $38
    rst $00
    dec sp
    add $5a
    rst $20
    inc d
    db $eb
    ld [$aa04], a
    ld b, h
    ld h, $c0
    ld h, $c0
    rst $00
    nop
    push bc
    ld [bc], a
    ld e, d
    and h
    call nz, $2b3f
    rst $38
    dec b
    rst $38
    ld bc, $7bff
    add b
    nop
    ret nz

    ld b, b
    add b
    add b
    ld b, b
    sbc b
    ld b, b
    cp [hl]
    ld b, b
    rra
    ret nz

    ld a, a
    add b
    ld d, b
    cp a
    ld a, [bc]
    push af
    scf
    rst $08
    ld c, a
    add a
    ld c, a
    add a
    dec c
    rst $00
    ld a, [bc]
    push bc
    ld a, l
    add a
    ld [de], a
    rst $38
    ld hl, $35de
    adc $35
    adc $30
    adc $63
    sbc [hl]
    db $dd

Call_068_5433:
    ld [bc], a
    ld b, [hl]
    add b
    dec b
    add d
    sbc [hl]
    add e
    dec bc
    db $fc
    ld [hl], c
    adc [hl]
    ld [hl], d
    adc l
    nop
    adc a
    nop
    adc a
    nop
    cp l
    ld [$00bf], sp
    db $fd
    add b
    db $dd
    nop
    sbc h
    ld h, c
    sbc [hl]
    adc e
    ld a, h
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    dec de
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    ld a, h
    rst $38
    inc a
    rst $38
    ld e, h
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc c
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld c, $ff
    ldh a, [rIE]
    jr c, @+$01

    inc de
    rst $38
    inc a
    rst $38
    rst $38
    rst $38
    cp $ff
    ldh a, [rIE]
    ret nz

    rst $38
    ld hl, sp-$01
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
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
    ccf
    rst $38
    dec bc
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $28
    rst $38
    ld [hl], a
    rst $38
    sub e
    ld a, a
    ld a, a
    rst $38
    nop
    rst $38
    ld bc, $0382
    add a
    add a
    sbc a
    inc bc
    cp a
    inc bc
    sbc a
    add c
    sub e
    ld de, $019b
    adc a
    adc b
    rlca
    ld b, b
    add a
    ld h, c
    rra
    ld [$c507], sp
    nop
    sub $00
    sbc [hl]
    nop
    ld sp, hl
    nop
    adc b
    nop
    ld a, h
    nop
    ld a, [de]
    inc b
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    inc a
    inc bc
    ld c, $01
    pop af
    rrca
    cp a
    rst $38
    cp $ff
    cp $ff
    ld e, $ff

Call_068_5508:
    adc $3f
    db $76
    rrca
    ld a, [de]
    rlca
    ld b, $03
    ld a, [hl+]
    rlca
    jp Jump_000_073e


    cp $17
    cp $7e
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cpl
    rst $38
    cp $ff
    nop
    rst $38
    jr c, jr_068_5531

    ld [c], a
    rra
    rst $00
    ld a, $85
    ld a, [hl]
    or l

jr_068_5531:
    ld c, [hl]
    or e
    ld c, [hl]
    jp c, Jump_000_2627

    rra
    ld [c], a
    rra
    sbc d
    ld a, a
    rst $20
    rra
    ld a, h
    add e
    nop
    ld e, b
    nop
    ld a, [$6700]
    nop
    ld [hl], c
    nop
    ld a, c
    add hl, bc
    cp h
    add hl, bc
    inc e
    inc b
    rst $38
    ld b, $ff
    rra
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, h
    rst $38
    ld e, $ff
    sbc a
    ld a, a
    rrca
    rst $38
    cp h
    rst $38
    ld hl, sp-$01
    db $fc
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
    rra
    rst $38
    ld a, $ff
    ld a, h
    rst $38
    ld hl, sp-$01
    cp b
    rst $38
    sbc b
    rst $38
    ld e, h
    rst $38
    ld a, [hl]
    rst $38
    ccf
    rst $38
    db $fd
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    ld b, $ff
    rrca
    rst $38
    rrca
    rst $38
    ld a, a
    rst $38
    rst $20
    rst $38
    pop af
    rst $38
    cp $ff
    nop
    rst $38
    nop
    rst $38
    ld a, [$ffff]
    rst $38
    rst $18
    rst $38
    and d
    rst $38
    jr nz, @+$01

    rst $30
    rst $38
    ld [c], a
    rst $38
    ldh [rIE], a
    ld [c], a
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    and b
    rst $18
    ld h, d
    sbc l
    daa
    ret c

    inc hl
    call c, $ccb3
    sbc c
    and $99
    and $d1
    xor $83
    db $fc
    inc bc
    db $fc
    rst $38
    db $fc
    db $ed
    cp $85
    rst $38
    add e
    cp a
    add e
    sbc a
    add e
    sbc a
    add c
    rst $18
    pop bc
    rst $38
    pop bc
    rst $38
    ret


    rst $38
    ret


    rst $38
    db $fd
    rst $38
    ld bc, $03ff
    dec bc
    dec bc
    ccf
    inc bc
    cp [hl]
    inc bc
    ld a, a
    inc bc
    rra
    inc bc
    rra
    rlca
    rra
    inc bc
    ld l, $07
    cp $ef
    cp $ff
    rst $38
    add c
    cp $01
    cp $21
    rst $38
    rra
    rst $38
    rrca
    ld a, a
    rlca
    rst $28
    pop bc
    xor $e1
    xor $8f
    ld [hl], b
    ldh [$1f], a
    db $e3
    rra
    ld h, e
    rra
    sbc b
    rlca
    ld a, b
    add a
    ccf
    ret nz

    cp a
    ret nz

    add b
    ret nz

    add c
    ret nz

    nop
    rst $38
    nop
    rst $38
    inc bc
    add a
    ld b, $0f
    ld b, $07
    ld [bc], a
    rlca
    inc bc
    rlca
    rlca
    rlca
    rlca
    scf
    rlca
    rst $10
    rlca
    rst $38
    rlca
    rst $38
    ccf
    rst $38
    ld bc, $04fe
    xor a
    ld c, $ff
    ld b, $ff
    inc b
    rst $38
    adc h
    ld a, a
    adc l
    ld a, a
    ld [$10ff], sp
    rst $38
    ld de, $ffff
    rst $38
    nop
    rst $38
    nop
    rst $38
    jp $ffff


    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    inc bc
    rst $38
    add e
    rst $38
    pop hl
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld e, $ff
    ld a, $ff
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $fbff
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    inc e
    rst $38
    ld e, $ff
    ld e, $ff
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    ld a, h
    rst $38
    db $dd
    rst $38
    ld sp, hl
    rst $38
    ld bc, $89ff
    rst $38
    cp a
    rst $38
    inc bc
    rst $38
    db $e3
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
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    pop hl
    rst $38
    and c
    rst $38
    ld [de], a
    rst $28
    inc d
    rst $28
    ld e, e
    and a
    dec de
    rst $20
    dec sp
    rst $00
    dec d
    db $eb
    inc a
    jp $e31c


    ld [bc], a
    rst $38
    ld e, $e3
    db $fd
    inc bc
    db $fc
    inc bc
    sbc h
    ld h, e
    adc [hl]
    ld [hl], c
    adc [hl]
    ld [hl], c
    add h
    ld a, e
    db $10
    rst $28
    add hl, de
    rst $20
    inc de
    rst $28
    dec de
    rst $20
    inc de
    rst $28
    inc de
    rst $28
    rlca
    rst $38
    rlca
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    ld l, a
    rst $38
    ld h, a

jr_068_56eb:
    rst $38
    ld l, a

jr_068_56ed:
    rst $30
    ld l, e
    rst $30
    ld l, c
    rst $30
    xor e
    ld [hl], a
    xor l
    ld [hl], e
    xor l
    ld [hl], e
    add sp, $33
    db $ed
    inc sp
    db $f4
    dec sp
    or h
    ld a, e
    ld d, $f9
    ld d, $f9
    jr nc, @+$01

    sub b
    rst $38
    jr @+$01

    jr c, jr_068_56eb

    jr z, jr_068_56ed

    adc b
    ld a, a
    inc c
    rst $38
    inc d
    rst $28
    add h
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc c
    rst $30
    adc h
    ld [hl], a
    ret nz

    ccf
    ret nz

    ccf
    ld hl, sp+$07
    inc de
    rst $08
    rlca
    rst $38
    or $ff
    daa
    rst $38
    rlca
    rst $38
    cp a
    rst $28
    rst $08
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
    adc a
    rst $38
    sbc $3f
    ld e, $ff
    rra
    rst $38
    inc bc
    rst $38
    ld de, $11ff
    rst $38
    ld de, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld hl, $b3ff
    rst $38
    inc sp
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    rra
    rst $38
    rla
    rst $38
    scf
    rst $38
    scf
    rst $38
    rlca
    rst $38
    add e
    rst $38
    add a
    rst $38
    and a
    rst $38
    rlca
    rst $38
    scf
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
    rla
    rst $38
    inc de
    rst $38
    sub c
    rst $38
    add c
    rst $38
    sub c
    rst $38
    or c
    rst $38
    sub c
    rst $38
    di
    rst $38
    ei
    rst $38
    ei
    rst $38
    di
    rst $38
    rst $38
    rst $38
    cp $ff
    ld h, $ff
    ld b, $ff
    ld a, $ff
    cp $ff
    rst $38
    rst $38
    ld c, a
    rst $38
    ld a, e
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ld a, [$e3fd]
    db $fc
    sbc a
    db $e4
    ld h, a
    sbc h
    jp $c33c


    inc a
    inc c
    rst $38
    rrca
    db $fc
    rlca
    db $fc
    ld bc, $01fe
    cp $41
    cp [hl]
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    add c
    rst $38
    rst $00
    rst $38
    ld b, a
    rst $38
    and a
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $dd
    rst $38
    call c, $ccff
    rst $38
    call z, $c0ff
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    jp hl


    rst $30
    ld hl, sp-$19
    db $ec
    di
    db $fc
    db $e3
    db $ec
    di
    pop af
    cp $f0
    rst $38
    ld [hl], c
    rst $38
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
    ld b, d
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld [de], a
    rst $38
    inc de
    rst $38
    ld d, e
    rst $38
    inc de
    rst $38
    dec hl
    rst $38
    ld l, c
    rst $38
    pop hl
    rst $38
    ld [hl], l
    rst $38
    ld hl, sp-$01
    or $ff
    di
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    ret nz

    rst $38
    add [hl]
    rst $38
    adc e
    rst $38
    adc a
    rst $38
    add a
    rst $38
    adc l
    rst $38
    add e
    rst $38
    add a
    rst $38
    rlca
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    adc h
    rst $38
    adc h
    rst $38
    add b
    rst $38
    adc b
    rst $38
    ld [$1cff], sp
    rst $38
    inc c
    rst $38
    sbc h
    rst $38
    call z, $c6ff
    rst $38
    add $ff
    ld [$e2ff], a
    rst $38
    db $e3
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
    rst $30
    rst $38
    rst $30
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20

jr_068_587f:
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $00
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp [hl]
    rst $38
    sbc a
    rst $38
    cp [hl]
    rst $38
    ld e, [hl]
    rst $38
    ld l, [hl]
    rst $38
    ld h, b
    rst $08
    ld [$08c7], sp
    rst $00
    jr z, jr_068_587f

    adc d
    ld b, a
    cp a
    ld b, e
    inc e
    ld h, e
    sbc d
    ld h, c
    sub $21
    cp d
    ld bc, $039c
    or $09
    cp a
    ld b, c
    cp a
    ld b, c
    rst $28
    ld de, $31cf
    rst $10
    add hl, sp
    ld d, [hl]
    cp c
    ld e, [hl]
    cp c
    ld e, d

jr_068_58d7:
    cp l
    sbc b
    rst $38
    sbc c
    rst $38
    sbc l
    rst $38
    db $dd
    rst $38
    ld a, l
    rst $38
    ld a, h
    rst $38
    ld a, $ff
    ld l, $ff
    ld c, $ff
    rra
    rst $28
    ld d, a
    rst $28
    or [hl]
    rst $08
    ld [hl], $cf
    ld [hl], d
    adc a
    ld a, [$ea0f]
    rra
    srl a
    sbc c
    ld a, a
    cp c
    rst $38
    add hl, de
    rst $38
    dec bc
    rst $38
    ld h, l
    sbc a
    ld [hl], a
    adc a
    or a
    rst $08
    or a
    rst $08
    cp b
    rst $00
    ld a, [hl-]
    rst $00
    jr c, jr_068_58d7

    ld a, d
    add a
    ld a, [hl]
    add e
    ld a, [hl]
    add e
    ld a, [hl]
    add e
    ld a, a
    add d
    ld a, h
    add e
    ld a, l
    add d
    inc a
    jp $c73a


    sbc d
    rst $20
    or $ef
    cp $ff
    cp $ff
    cp $ff
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    scf
    rst $38
    ccf
    rst $38
    sub d
    rst $38
    add d
    rst $38
    ld [$f2ff], a
    rst $38
    adc d
    rst $38
    ld l, b
    rst $38
    ret c

    rst $38
    call c, $38ff
    rst $38
    ld a, [hl-]
    rst $38
    ld [hl], $ff
    ld [hl], $ff
    ld l, b
    rst $38
    ld e, b
    rst $38
    inc e
    ei
    inc d
    ei
    jr @+$01

    add hl, de
    rst $38
    rrca
    rst $38
    add hl, bc
    rst $38
    inc c
    rst $38
    ld d, b
    rst $38
    ld d, b
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    jr nc, @+$01

    jr nz, @+$01

    jr nz, @+$01

    db $e4
    ei
    db $ed
    ld a, [c]
    db $e4
    ei
    ldh [rIE], a
    ld [$e8f5], a
    rst $30
    pop hl
    cp $b4
    ei
    db $f4
    ei
    push de
    ld a, [$f88f]
    adc a
    ld hl, sp-$7e
    db $fd
    nop
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    jr nz, @+$01

    db $10
    rst $38
    jr nc, @+$01

    jr c, @+$01

    inc a
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
    jr jr_068_59e3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_068_59f3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_068_5a03

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_068_5a13

    ld [hl-], a

jr_068_59e3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_068_5a23

    add hl, sp
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    add hl, sp
    dec a
    ld a, $3f

jr_068_59f3:
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    ld c, b
    ld c, c
    ld c, d

jr_068_5a03:
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    add hl, sp
    ld d, e
    add hl, sp
    add hl, sp
    add hl, sp
    ld d, h
    ld d, l
    ld d, [hl]

jr_068_5a13:
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    ld e, a
    ld h, b
    ld h, c

jr_068_5a23:
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
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
    add hl, sp
    add hl, sp
    add hl, sp
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
    add hl, sp
    add hl, sp
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    add hl, sp
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    add hl, sp
    add hl, sp
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    add hl, sp
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    add hl, sp
    sbc a
    add hl, sp
    and b
    and c
    and d
    and e
    and h
    add hl, sp
    add hl, sp
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    add hl, sp
    add hl, sp
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
    add hl, sp
    cp b
    add hl, sp
    add hl, sp
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
    add hl, sp
    add hl, sp
    add hl, sp
    add $c7
    ret z

    ret


    jp z, $cccb

    call $83ce
    rst $08
    ret nc

    add hl, sp
    add h
    add hl, sp
    add hl, sp
    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, $dcdb

    add l
    add hl, sp
    add hl, sp
    add hl, sp
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
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0501
    dec b
    dec b
    ld bc, $0101
    ld bc, $0505
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    dec b
    ld bc, $0505
    ld bc, $0101
    dec b
    ld bc, $0505
    ld bc, $0101
    ld bc, $0501
    dec b
    dec b
    ld bc, $0505
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0505
    dec b
    ld bc, $0505
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec b
    dec b
    dec b
    dec b
    ld bc, $0505
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $06
    dec b
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0105
    ld bc, $0101
    ld bc, $0101
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0106
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0505
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0105
    ld bc, $0101
    ld bc, $0101
    ld bc, $0501
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec b
    dec b
    ld bc, $0101
    ld bc, $0105
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0501
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0505
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec b
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld b, c
    ld bc, $0101
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0501
    ld bc, $0501
    dec b
    ld bc, $0101
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0501
    nop
    nop
    nop
    ld bc, $0101
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0001
    nop
    nop
    ld [$0909], sp
    add hl, bc
    add hl, bc
    ld c, $0d
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld a, a
    rst $38
    rst $18
    ccf
    ld e, a
    ccf
    rrca
    ccf
    cpl
    rra
    adc a
    ccf
    ld l, a
    sbc a
    ld h, e
    rra
    db $10
    rrca
    ret z

    rlca
    ld hl, sp+$07
    ld e, b
    add a
    ld a, [de]
    add a
    xor d
    add a
    and b
    rst $00
    xor e
    rst $00
    adc e
    rst $00
    rst $30
    set 2, e
    jp $c375


    reti


    pop hl
    ret nc

    pop hl
    rst $20
    ldh a, [$4e]
    ldh a, [$dd]
    ld h, b
    cp a
    ld h, b
    sbc a
    ld h, b
    db $fc
    inc hl
    cp $21
    add $31
    adc $31
    call z, $de31
    ld sp, $f13a
    inc d
    ei
    ret z

    ccf
    db $f4
    rrca
    ld a, [$7e07]
    add e
    ld hl, sp+$03
    ld a, h
    add e
    ld a, a
    add c
    ld a, [hl]
    add c
    db $76
    add c
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
    ccf
    ret nz

    add c
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $f4
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld hl, $81ff
    rst $38
    ld de, $10ff
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    jr c, @+$01

    ld a, b
    rst $38
    jr @+$01

    jr @+$01

    jr @+$01

    jr c, @+$01

    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    add b
    ld a, a
    inc b
    rst $38
    ld b, $ff
    nop
    rst $38
    ret nc

    rst $28
    ld h, b
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
    ld b, a
    cp a
    daa
    rst $18
    db $d3
    xor a
    inc hl
    rst $18
    ld sp, $20cf
    rst $18
    add b
    rst $38
    add b
    rst $38
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
    add a
    rst $38
    or c
    rst $38
    sbc b
    rst $38
    sbc h
    rst $38
    sbc [hl]
    rst $38
    add [hl]
    rst $38
    set 7, a
    xor l
    rst $38
    rst $08
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ld c, $ff
    ld e, $ff
    inc a
    rst $38
    inc a
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
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rra
    rst $38
    ld [hl], b
    adc a
    ld a, a
    add b
    ld bc, $80fe
    rst $38
    jp $a3ff


    rst $18
    ld sp, hl
    rst $00
    ld b, d
    db $fd
    ld l, h
    rst $38
    ld a, d
    rst $38
    jr c, @+$01

    ld hl, sp-$01
    jr nc, @+$01

    jr z, @+$01

    add hl, sp
    rst $38
    ld sp, $81ff
    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr nc, @+$01

    inc sp
    db $fc
    ld hl, $97fe
    ld a, b
    or e
    ld a, h
    adc b
    ld a, a
    jp Jump_068_5f3f


    ccf
    rst $38
    ccf
    ld [hl], h
    cp a
    ld b, $ff
    add [hl]
    ld a, a
    rst $20
    rra
    rst $08
    ccf
    rlca
    rst $38
    inc sp
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    dec d
    db $eb
    reti


    daa
    dec e
    db $e3
    ccf
    pop bc
    ld a, d
    add c
    ld l, c
    add e
    ld d, l
    add e
    ld a, $c1
    sbc $61
    call c, $be63
    ld h, c
    ld h, b
    rst $38
    rst $30
    ld hl, sp-$0d

jr_068_5d99:
    db $fc
    ld hl, sp-$01
    ccf
    rst $38
    ld a, a
    rst $38
    adc h
    rst $38
    nop
    rst $38
    ld [hl], d
    adc l
    ld [hl-], a
    call $c738
    cp c
    add $b8
    rst $00
    sbc h
    db $e3
    jr jr_068_5d99

    ld e, b
    rst $20
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld d, b
    rst $28
    ld b, e
    rst $38
    ld h, a
    rst $38
    ld [hl], b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, h
    ei
    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr c, @+$01

    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    db $f4
    rst $38
    ld hl, sp-$01
    ld a, [$f8ff]
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    ld a, [hl]
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
    ccf
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    rra
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    add a
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    add a
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    ld l, a
    rst $38
    rra
    rst $38
    rra
    rst $38
    jp c, $82ff

    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, c
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    and c
    ld a, a
    and b
    ld a, a
    ld [hl], b
    rst $38
    ldh a, [rIE]
    ld a, [c]
    db $fd
    ld hl, sp-$01
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, h
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ld b, a
    rst $38
    add e
    ld a, a
    add e
    ld a, a
    add hl, bc
    rst $38
    ld sp, $35ff
    ei
    pop af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ld [hl], $ff
    ld h, d
    rst $38
    cp l
    rst $38
    ld a, a
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
    ld a, a
    rst $38
    rst $38
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
    ccf
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    cp a
    ld a, a
    ld a, a
    cp a
    inc a
    rst $38
    ccf
    rst $38
    ld a, $ff
    jr nc, @+$01

    ld [hl], b
    rst $38
    ldh a, [rIE]
    db $fc
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
    ld c, a
    cp a
    and a
    ld e, a
    rst $20
    rra
    add a
    ld a, a
    ld h, e
    sbc a
    inc hl
    rst $18
    inc sp
    rst $08
    db $db
    rst $20
    rst $30
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
    ld bc, $01ff
    rst $38
    ld bc, $81ff
    rst $38
    pop hl
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    adc a
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    sbc [hl]
    rst $38
    sbc h
    rst $38
    adc a
    rst $38
    add l
    rst $38
    add d
    rst $38
    jp $81ff


    rst $38
    jp hl


    rst $38
    and $ff
    xor $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    db $fd
    rst $38
    ld a, c
    rst $38
    ld sp, hl
    rst $38
    pop af
    rst $38
    di
    rst $38
    di
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, $f9
    rla
    ldh [rSB], a
    cp $81

Jump_068_5f3f:
    cp $c8
    rst $30
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld bc, $13fe
    db $ec
    sub a
    add sp, $0e
    ldh a, [$03]
    ld hl, sp-$39
    ld hl, sp-$6e
    db $ed
    ret nc

    rst $28
    ret nz

    rst $38
    db $e4
    rst $38
    db $e4
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc h
    rst $38
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    rrca
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    cp $ff
    cp $ff
    ldh a, [rIE]
    ldh a, [rIE]
    db $e4
    ei
    call nz, Call_000_02fb
    db $fd
    ld bc, $41ff
    rst $38
    ld b, e
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
    db $fd
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    ld a, b
    rst $38
    db $fc
    rst $38
    ret c

    rst $38
    add b
    rst $38
    nop
    rst $38
    jr @+$01

    rst $00
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_068_5fd7:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$20f0], a
    rst $38
    nop
    rst $20
    inc d
    db $e3
    add [hl]
    ld l, e
    jr jr_068_6073

    db $10
    rst $28
    jr c, jr_068_5fd7

    ld [$01f7], sp
    cp $28
    sbc $78
    adc [hl]
    ld b, b
    sbc l
    ld e, e
    cp l
    ld e, b
    cp a
    ld hl, sp+$1f
    jr jr_068_6061

    jr @+$41

    ld a, c
    ccf
    jr c, jr_068_60a7

    jr nc, jr_068_60a9

    cp b
    ld a, a
    cp [hl]
    ld a, c
    jr c, @+$01

    jr c, @+$01

    db $fc
    rst $38
    db $fc
    rst $38
    db $f4
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    db $76
    rst $38
    db $76
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, h
    rst $38
    ld e, h
    rst $38
    add hl, de
    cp $19
    cp $58
    cp a
    ld a, d
    cp l
    ld a, [hl-]
    db $fd
    ld a, b
    rst $38
    db $f4
    rst $38
    pop af
    rst $38
    push af
    ei
    push af

jr_068_6061:
    ei
    ldh a, [rIE]
    sbc b
    rst $38
    adc b
    rst $38
    add a
    rst $38
    add a
    rst $38
    rst $00
    rst $38
    add a
    rst $38
    dec b
    rst $38
    rrca

jr_068_6073:
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ccf
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
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $00
    rst $38
    call Call_068_45ff
    rst $38
    ld e, c
    rst $38
    ld a, l
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    call c, $ffff
    rst $38
    rst $38

jr_068_60a7:
    rst $38
    rst $38

jr_068_60a9:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, [hl]
    ccf
    adc [hl]
    ld a, a
    ld b, [hl]
    rst $38
    ld c, d
    rst $30
    nop
    di
    and [hl]
    ld de, $27d0
    call z, $0833
    ld [hl], a
    xor b
    ld [hl], a
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld [hl], b
    rst $28
    db $f4
    xor $f0
    rst $28
    adc $ff
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, $ff
    inc a
    rst $38
    cp h
    rst $38
    inc e
    rst $38
    cp b
    ld a, a
    cp b
    ld a, a
    cp h
    ld a, a
    cp h

jr_068_60e5:
    ld a, a
    cp h
    ld a, a
    xor [hl]
    ld a, a
    dec l
    cp $ec
    rst $38
    add sp, -$01
    ld l, b
    rst $38
    jp z, $8bff

    rst $38
    add hl, bc
    rst $38
    jr z, @+$01

    ld l, $ff
    rra
    rst $38
    inc e
    rst $38
    ld d, $ff
    ld sp, $60fe
    cp $73
    db $fc
    ldh a, [rIE]
    ldh [rIE], a
    add sp, -$01
    db $e3
    rst $38
    dec de
    rst $20
    sbc l
    ld h, a
    jr nc, jr_068_60e5

    nop
    rst $38
    inc de
    rst $38
    ld e, d
    rst $38
    rra
    rst $38
    ld e, $ff
    ld a, [hl]
    rst $38
    ld a, d
    rst $38
    ld a, [hl]
    rst $38
    or $ff
    rst $10
    rst $38
    rst $10
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $dd
    rst $38
    ei
    rst $38
    rst $18
    rst $38
    ld e, a
    rst $38
    ld e, [hl]
    rst $38
    ld e, l
    rst $38
    call z, $8eff
    rst $38
    cp $ff
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
    rst $30
    rst $38
    rst $20
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
    rst $38
    rst $38
    rst $38
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
    rst $28
    ld b, [hl]
    ldh a, [$ea]
    di
    ld sp, hl
    pop af
    ei
    pop af
    rst $38
    rst $30
    db $fd
    di
    or e
    jp $e7b3


    sbc e
    add e
    db $fd
    pop de
    cpl
    ld b, c
    or [hl]
    ld h, b
    rst $30
    ld h, d
    push bc
    ld [c], a
    ld a, a
    rst $20
    ld a, [$e7c3]
    rst $00
    rst $28
    push bc
    rst $28
    push bc
    rst $10
    adc h
    rst $00
    adc [hl]
    push bc
    jp nz, $aa9d

    db $dd
    and l
    rst $18
    dec d
    rst $28
    ld b, d
    db $fd
    ld c, [hl]
    db $fd
    cpl
    call c, $dd8a
    dec sp
    call c, $ddba
    ret c

    cp a
    add a
    rst $38
    ld b, e
    cp a
    rrca
    rst $38
    rlca
    ld a, a
    cpl
    ld e, a
    rrca
    rst $38
    rlca
    rst $38
    inc c
    rst $38
    ld b, $ff
    ld b, $ff
    inc bc
    rst $38
    ld d, a
    rst $28
    ld b, a
    rst $38
    rst $00
    cp a
    and a
    rst $18
    add a
    rst $38
    inc bc
    rst $38
    dec de
    rst $38
    dec de
    rst $38
    dec sp
    rst $38
    add hl, sp
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    rst $28
    rst $38
    adc a
    rst $38
    rst $08
    rst $38
    sbc $ff
    sbc $ff
    push de
    rst $38
    ld [hl], d
    rst $38
    ld a, [c]
    rst $38
    ld a, [c]
    rst $38
    ld [hl], d
    rst $38
    ld c, b
    rst $38
    db $ec
    rst $38
    dec h
    rst $38
    inc h
    rst $38
    ld [$e7ff], a
    rst $38
    pop hl
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    rst $38
    rst $38
    ldh a, [rIE]
    pop af
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    jr nz, @+$01

    or b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $18
    ld a, a
    db $fc
    rst $38
    inc c
    rst $38
    db $ed
    cp $e0
    ld hl, sp+$00
    add sp, $00
    rst $20
    cp b
    rst $00
    ld a, [bc]
    rst $20
    ld de, $21e6
    add $88
    ld b, [hl]
    db $76
    adc b
    ld h, $d8
    db $eb
    inc d
    dec e
    rst $38
    rst $38
    rst $38
    rst $38
    di
    db $ed
    di
    push hl
    di
    ldh [$f3], a
    db $fc
    db $e3
    call c, $cce3
    di
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ld [c], a
    rst $38
    ld d, b
    rst $28
    rst $00
    rst $38
    db $e3
    rst $38
    ld [$dcf7], a
    di
    or $f9
    di
    db $fc
    ld a, [$fcfd]
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld b, $ff
    rlca
    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ei
    rst $38
    inc sp
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    cp a

jr_068_628b:
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
    ccf
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ld a, b
    rst $38
    ld [$03ff], sp
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    jr nz, jr_068_628b

    ld [bc], a
    rst $38
    add sp, -$01
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    rst $38
    rst $38
    nop
    rst $38
    rst $20
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ldh [rIE], a
    db $fc
    rst $38
    ld a, [de]
    rst $38
    inc bc
    rst $38
    rst $38
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
    pop hl
    sub d
    rst $38
    cp a
    rst $38
    rst $08
    rrca
    call $8f0f
    dec c
    sbc a
    rrca
    sbc a
    sub a
    rrca
    ld b, b
    sbc [hl]
    db $10
    adc b
    sub h
    ld [$0835], sp
    adc e
    ld a, h
    ld sp, hl
    ld a, [hl]
    ld a, e
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    ld a, [$f9fd]
    db $fc
    ld sp, hl
    db $fc
    cp $fd
    ld [hl], l
    rst $38
    ld a, a
    rst $38
    ld [c], a
    rst $38
    cp b
    rst $00
    db $ed
    jp nz, $c7f8

    ld h, [hl]
    rst $18
    ld b, e
    rst $38
    ld h, e
    rst $38
    dec hl
    rst $38
    inc e
    ei
    ld [$09ff], sp
    rst $38
    inc de
    rst $38
    inc hl
    rst $38
    ld l, e
    rst $30
    ld l, c
    rst $30
    scf
    ld sp, hl
    jr @+$01

    inc b
    rst $38
    add $ff
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
    ld hl, sp-$01
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
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
    rst $30
    rst $38
    rst $38
    rst $38
    rst $10
    rst $38
    rlca
    rst $38
    ld b, $ff
    rlca
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    rlca
    rst $38
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld b, $ff
    rst $38
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    ld h, c
    rst $38
    rlca
    rst $38
    nop
    rst $38
    ld a, l
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
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    call c, Call_000_1fff
    rst $38
    sub c
    rst $38
    cp $f1
    or a
    ret nz

    ld a, [c]
    add c
    ldh a, [$e3]
    db $f4
    db $e3
    db $e4
    di
    ld e, $01
    db $76
    add hl, bc
    di
    inc c
    db $fd
    nop
    inc sp
    inc c
    ld a, c
    inc a
    sbc e
    db $fc
    ld l, d
    sbc l
    ld h, e
    sbc l
    ld b, a
    xor c
    dec l
    jp $01cf


    xor a
    ld d, c
    rst $38
    pop bc
    and [hl]
    pop bc
    inc sp
    call z, $9c63
    push bc
    nop
    pop bc
    inc b
    xor $05
    cp $fd
    db $fc
    rst $38
    ld [$11f7], sp
    rst $28
    inc bc
    rst $28
    inc de
    rst $28
    inc hl
    rst $38
    rla
    rst $28
    cpl
    rst $38
    inc sp
    rst $38
    ld hl, $ecfe
    or e
    xor h
    di
    or $f9
    db $fc
    rst $38
    di
    rst $38
    db $e3
    rst $38
    ld [c], a
    rst $38
    pop hl
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    di
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ld hl, sp-$01
    db $fd
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
    rst $28
    rst $38
    ccf
    rst $38
    pop hl
    rst $38
    inc bc
    rst $38
    adc [hl]
    rst $38
    dec c
    rst $38
    adc [hl]
    rst $38
    ld b, b
    rst $38
    jp $01ff


    rst $38
    ld h, l
    sbc [hl]
    add b
    ld a, a
    ret


    rst $30
    ldh a, [rIE]
    jr nc, @+$01

    cp $ff
    inc e
    rst $38
    nop
    rst $38
    db $e3
    rst $38
    rst $38
    rst $38
    jp Jump_068_71ff


    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $00
    ld hl, sp-$19
    ld hl, sp-$08
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    pop de
    rst $28
    rst $00
    rst $38
    ccf
    rst $38
    ld hl, $30df
    rst $08
    ld b, b
    cp a
    inc h
    rst $18
    ld [bc], a
    rst $38
    ld e, e
    rst $20
    rst $18
    ld h, e
    sbc d
    ld h, a
    cp d
    ld b, a
    xor l
    ld b, [hl]
    or c
    ld c, [hl]
    cpl
    ret c

    ldh a, [$1f]
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    db $eb
    rst $30
    ei
    rst $20
    db $d3
    rst $20
    reti


    rst $20
    reti


    rst $20
    pop bc
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    add c
    rst $38
    adc c
    rst $38
    rst $00
    cp a
    cp a
    rst $38
    xor h
    rst $18
    jp hl


    rst $18
    ld d, e
    rst $28
    jp $e3ff


    rst $38
    db $e3
    rst $38
    di
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    ld a, $ff
    ld a, a
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
    rst $38
    rst $38
    ld sp, hl
    rst $38
    rst $20
    rst $38
    add h
    rst $38
    ret nz

    rst $38
    rrca
    rst $38
    ret nz

    rst $38
    db $10
    rst $28
    ld a, $ff
    ret nz

    rst $38
    jp hl


    rst $30
    swap a
    ld a, a
    rst $38
    rst $08
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    ld [$1eff], sp
    rst $38
    ld a, a
    rst $38
    di
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, e
    rst $38
    ld b, e
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    rst $18
    rst $38
    ei
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
    pop af
    rst $38
    rst $30
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$10
    add b
    ldh a, [$bf]
    ret nz

    ret c

    rst $20
    ld b, e
    rst $38
    ld [hl], a
    adc a
    ld [hl], l
    adc a
    ld h, a
    sbc a
    ld l, a
    sbc a
    xor h
    rst $18
    daa
    ret c

    ld h, e
    sbc h
    ld b, d
    cp l
    jr c, @+$01

    ld a, l
    cp $ff
    rst $38
    ei
    rst $38
    ld a, [c]
    rst $38
    ld a, [$f4ff]
    ei
    db $f4
    ei
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    adc l
    rst $38
    ld [$48ff], sp
    cp a
    ld c, h
    cp a
    inc e
    rst $38
    sbc a
    rst $38
    sbc a
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
    sbc a
    rst $38
    sbc a
    rst $38
    adc l
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    ld a, a
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
    ccf
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld [hl], b
    rst $38
    ld hl, sp-$01
    ret nz

    rst $38
    rst $38
    rst $38
    ld c, $ff
    ld [$82ff], sp
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    push hl
    rst $38
    add $ff
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    inc a
    rst $38
    db $ed
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    rst $20
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [bc]
    inc b
    ld a, [de]
    inc b
    adc l
    ld a, [hl]
    sbc $ff
    rst $20
    rst $38
    ret nz

    rst $38
    reti


    xor $e9
    cp $f1
    rst $38
    pop bc
    ccf
    pop bc
    ccf
    sbc a
    ld a, a
    ld e, a
    cp a
    adc a
    ld a, a
    ld a, l
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    ld e, a
    cp a
    cp a
    rst $38
    rra
    rst $38
    ld e, a
    cp a
    ld e, a
    cp a
    ld e, a
    cp a
    ld e, a
    cp a
    ld e, a
    cp a
    ccf
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
    cp a
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
    di
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ld [$0fff], sp
    rst $38
    sbc a
    rst $38
    ret c

    rst $38
    ccf
    rst $38
    daa
    rst $38
    cp a
    ld a, a
    cp $ff
    add a
    rst $38
    xor a
    rst $38
    ld [hl], b
    rst $38
    ld sp, hl
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
    rst $38
    rst $38
    db $fc
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
    ldh a, [rIE]
    di
    rst $38
    rst $18
    rst $38
    ld c, a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rst $00
    rst $38
    rst $10
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $0007
    ld bc, $8051
    dec e
    add d
    ld b, c
    sub e
    jp nz, $fdff

    cp $3f
    cp $5f
    xor [hl]
    ei
    add [hl]
    sbc $83
    cp l
    jp $c1f3


    jp hl


    ldh a, [$6e]
    pop af
    db $fd
    db $e3
    reti


    rst $20
    db $fd
    rst $38
    pop af
    rst $38
    rst $38
    rst $20
    db $e3
    rst $30
    rst $28
    di
    rst $28
    di
    or c
    rst $38
    rst $38
    rst $38
    ld a, c
    cp $79
    cp $fe
    ld sp, hl
    ld a, [c]
    db $fd
    ld [hl], d
    db $fd
    rst $30
    db $fc
    db $fc
    cp $fc
    cp $fe
    rst $38
    pop af
    cp $f2
    db $fd
    ldh a, [rIE]
    db $f4
    ei
    db $f4
    ei
    db $f4
    ei
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ld hl, sp-$01
    pop hl
    rst $38
    pop hl
    rst $38
    ret nc

    rst $28
    ret nc

    rst $28
    pop bc
    xor $d8
    rst $28
    call $efff
    rst $38
    rst $28
    rst $38
    db $db
    rst $38
    db $db
    rst $38
    db $db
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    or $ff
    sub $ff
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld a, $ff
    cp $ff
    cp [hl]
    rst $38
    inc e
    rst $38
    db $fc
    rst $38
    or $ff
    rst $38
    rst $38
    call c, $fcff
    rst $38
    cp $ff
    jr c, @+$01

    cp $ff
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
    ccf
    rst $38
    ccf
    rst $38
    inc sp
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
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $28
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
    ld sp, hl
    rst $38
    jr c, @+$01

    reti


    ld a, $11
    rst $38
    rra
    rst $38
    adc a
    ld a, a
    db $eb
    rra
    sbc [hl]
    ld l, c
    inc b
    jp hl


    bit 4, h
    sbc b
    ld h, a
    ret nz

    ccf
    ld b, d
    cp l
    db $dd
    cp [hl]
    call $8abf
    db $fd
    adc e
    db $fc
    ld b, c
    cp a
    ld b, e
    cp a
    ld c, e
    or a
    add b
    rst $38
    or d
    call z, $ceb1
    cp h
    jp $f2e5


    dec c

Call_068_67f3:
    di
    rst $38
    ld e, a
    ld a, a
    rst $18
    scf
    rst $18
    cp a
    ld e, a
    cpl
    rst $18
    adc l
    ld a, a
    rrca
    ld a, a
    rrca
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    rrca
    rst $38
    ld sp, $03cb
    db $fd
    add hl, de
    rst $38
    inc e
    cp e
    ld e, a
    cp b
    ld e, $b8
    ld a, h
    cp b
    inc [hl]
    ld sp, hl
    inc sp
    db $fd
    ld [hl], c
    rst $38
    add hl, sp
    rst $18
    ld d, l
    cp a
    rla
    rst $38
    ld [hl], $ff
    ld [bc], a
    rst $38
    ld b, $ff
    adc $f7
    jp $c7ff


    rst $38
    ld c, a
    rst $38
    ld e, [hl]
    rst $38
    adc a
    rst $38
    rrca
    rst $38
    adc a
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    ld l, a
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    sbc $ff
    sbc $ff
    sbc $ff
    rst $38
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
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
    rst $20
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
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    push af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $18
    rst $38
    add a
    rra
    pop af
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
    rrca
    rst $38
    daa
    rst $18
    inc de
    rst $28
    db $fd
    inc bc
    or d
    ld b, c
    ld a, $c1
    ld [$17f7], sp
    rst $38
    adc a
    ld a, a
    and a
    rst $38
    rst $38
    rst $38
    xor a
    rst $38
    ld a, a
    rst $38
    rst $38
    ccf
    ld a, a
    ccf
    rst $18
    ccf
    sbc a
    ccf
    rst $10
    cp a
    sbc a
    rst $38
    cp a
    rst $38
    inc e
    ei
    sbc [hl]
    ld a, c
    jp z, Jump_000_183d

    cp a
    cp c
    rra
    add sp, -$61
    call nz, $8a8f
    push bc
    sbc d
    push bc
    db $db
    db $e4
    sbc l
    cp $c0
    rra
    add hl, de
    adc $08
    rst $38
    adc b
    rst $38
    ld [$08ff], sp
    rst $38
    jr c, @+$01

    ld e, d
    rst $38
    ld c, b
    rst $38
    ld l, c
    rst $38
    ld l, l
    rst $38
    ld c, [hl]
    rst $38
    ld c, [hl]
    rst $38
    call z, $8eff
    rst $38
    ld e, [hl]
    cp a
    inc a
    rst $38
    ld [hl], b
    rst $38
    ld h, b
    rst $38
    ldh [rIE], a
    push hl
    rst $38
    rst $28
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    pop af
    adc $c5
    cp $c4
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec de
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    add a
    rst $38
    add e
    rst $18
    jp $e8f7


    rst $30
    call nc, $d8fb
    rst $38
    add sp, -$01
    db $ec
    rst $38
    rst $00
    rst $38
    rst $08
    rst $38
    rst $20
    rst $18
    db $d3
    rst $28
    db $db
    rst $20
    rst $20
    rst $38
    pop hl
    rst $38
    ld hl, sp-$09
    ldh a, [rIE]
    db $f4
    ei
    or $f9
    ld hl, sp-$01
    ei
    rst $38
    rra
    rst $38
    pop af
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop bc

jr_068_6983:
    rst $38
    ld [hl], c
    rst $28
    ld [hl], e
    db $ed
    ld [hl-], a
    db $ed
    jr z, jr_068_6983

    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ldh a, [rIE]
    ld [hl], e
    rst $38
    ld a, d
    rst $38
    rrca
    rst $38
    inc sp
    rst $08
    add b
    rst $38
    ld h, b
    rst $18
    ld l, [hl]
    rst $18
    cpl
    rst $18
    cpl
    rst $18
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    rst $38
    adc e
    rst $30
    add c
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rst $08
    rst $38
    add a
    rst $38
    add e
    rst $38
    rst $20
    rst $38
    db $fd
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
    rst $28
    rst $38
    rst $08
    rst $38
    xor $ff
    xor $ff
    ld a, [$feff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, h
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
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
    ld a, a
    rst $38
    ld a, $ff
    ld e, $ff
    adc [hl]
    rst $38
    scf
    rst $38
    ld a, a
    cp $77
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    jp $90ff


    rst $38
    inc de
    db $fc
    add a
    ld hl, sp-$1a
    ld hl, sp+$1b
    db $fc
    jr nc, @+$01

    ld h, c
    rst $38
    ld b, c
    rst $38
    rst $00
    rst $38
    adc a
    rst $38
    and a
    rst $38
    cp a
    rst $38
    adc a
    rst $38
    jp $33ff


    rst $38
    rlca
    rst $38
    rla
    rst $28
    rst $30
    rrca
    ld h, l
    sbc a
    inc de
    rst $28
    dec e
    db $e3
    rra
    db $e3
    ret


    rst $30
    ld a, [$fcff]
    rst $38
    cp [hl]
    rst $38
    sbc $ff
    or $ff
    db $fc
    cp $fc
    cp $fc
    db $fc
    cp $fc
    rst $38
    db $fc
    rst $38
    db $fc
    ld hl, sp-$04
    db $fc
    ld hl, sp-$03
    ld hl, sp-$04
    ei
    ld bc, $c1fe
    cp $f0
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    rst $38
    rst $38
    rst $20
    rst $38
    db $f4
    rst $38
    cp $ff
    db $fd
    cp $fd
    db $fc
    ei
    db $fc
    jp c, $fcfc

    ld hl, sp-$02
    ld hl, sp-$21
    ld hl, sp-$29
    ld hl, sp-$4b
    ld a, [$ffb0]
    xor $ff
    xor b
    rst $38
    ld hl, sp-$07
    db $f4
    ei
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    db $eb
    db $f4
    rst $30
    ld hl, sp-$79
    ld hl, sp+$7f
    add b
    ld a, [hl]
    add b
    rst $38
    nop
    ei
    nop
    or $01
    dec e
    db $e3
    rst $38
    rst $38
    pop bc
    rst $38
    adc h
    di
    adc b
    rst $30
    ld [$07f7], sp
    rst $38
    adc a
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    di
    rst $38
    jp Jump_000_07ff


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
    db $fd
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    add d
    ld bc, $0102
    ld c, h
    add e
    ldh [rIE], a
    ldh [rIE], a
    db $f4
    ei
    di
    cp $f9
    or $f5
    cp $73
    db $fc
    sub e
    ld a, h
    ret nz

    dec a
    nop
    rst $38
    ld h, $ff
    push de
    xor $8c
    rst $28
    rst $28
    rst $38
    db $e3
    rst $38
    jp nc, $defd

    ld sp, hl
    rst $10
    ld sp, hl
    rst $30
    ld hl, sp-$09
    ld hl, sp-$02
    ldh a, [$b7]
    ld hl, sp-$49
    ei
    or a
    rst $38
    ld [hl], b
    rst $38
    rst $38
    rst $38
    rst $38
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
    rra
    db $fc
    ld [$07ff], sp
    rst $38
    dec d
    rst $28
    di
    inc c
    or h
    add hl, bc
    or b
    dec bc
    or $03
    db $fc
    rlca
    ld c, b
    cp a
    adc b
    ld a, a
    ld b, [hl]
    cp c
    ld d, [hl]
    add c
    ld a, [c]
    ld bc, $fbf4
    cp $ff
    db $fd
    rst $38
    db $fc
    rst $38
    ld a, a
    rst $38
    ld sp, hl
    rlca
    adc b
    rlca
    ld hl, $451f
    dec sp
    ld b, e
    ccf
    ldh [$1f], a
    jp nz, $803f

    ld a, a
    ld a, c
    cp $fa
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, $ff
    cp [hl]
    ld a, a
    cp a
    ld a, [hl]
    cp c
    ld a, [hl]
    cp b
    ld a, [hl]
    ld hl, sp+$7e
    db $fc
    ld a, [hl]
    db $fc
    ld a, [hl]
    ld hl, sp+$7e
    db $fd
    ld a, h
    ld [hl], e
    db $fc
    ld a, [c]
    db $fd
    ei
    db $fc
    ei
    db $fc
    ld sp, hl
    cp $6a
    db $fd
    ld a, d
    db $fd
    ld a, b
    rst $38
    ldh a, [rIE]
    db $f4
    ei
    db $ec
    di
    xor $f1
    cp $e1
    sub d
    pop hl
    sub [hl]
    pop hl
    ld c, [hl]
    pop af
    rst $08
    pop af
    push bc
    ei
    call z, $c6f3
    ld sp, hl
    db $d3
    db $fc
    jp hl


    cp $e0
    rst $38
    cp b
    rst $38
    inc e
    rst $38
    ld c, $ff
    add a
    rst $38
    jp $e1ff


    rst $38
    jr nc, @+$01

    cp c
    cp $3c
    rst $38
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    inc d
    rst $38
    inc b
    rst $38
    add h
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    and $ff
    jp $81ff


    rst $38
    ld e, b
    rst $38
    ld [hl], b
    rst $38
    jr z, @+$01

    jr c, @+$01

    ld de, $00ff
    rst $38
    jr @+$01

    rst $38
    rst $38
    ret


    rst $30
    sbc a
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    sbc $21
    call nc, $f823
    rlca
    ld sp, $27cf
    rst $18
    ld c, a
    cp a
    ld c, a
    cp a
    inc b
    rst $38
    ld e, b
    cp a
    and d
    ld a, a
    ld b, $ff
    ld b, b
    rst $38
    add b
    rst $38
    sbc $e1
    inc a
    jp Jump_000_05eb


    jp hl


    rlca
    dec a
    inc bc
    sbc a
    ld h, e
    adc a
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    nop
    cp $63
    sbc h
    add b
    dec e
    adc b
    ld de, $1122
    adc b
    inc sp
    db $dd
    ld [hl+], a
    add hl, sp
    and $21
    cp $23
    db $fc
    and e
    ld a, h
    dec sp
    db $fc
    ld a, d
    db $fc
    rst $38
    ld hl, sp+$77
    ld hl, sp+$37
    ld hl, sp+$20
    rst $38
    inc b
    ei
    ld c, $f1
    ld [hl+], a
    rst $18
    or d
    rst $00
    ld [hl-], a
    rst $00
    and [hl]
    rst $00
    adc [hl]
    rst $20
    add $ef
    rst $20
    rst $08
    xor a
    rst $08
    ld a, $cf
    ccf
    rst $08
    xor a
    ld e, a
    ld [hl], b
    rst $18
    ld l, h
    sub b
    sbc a
    or b
    sbc a
    ldh a, [$9f]
    ld hl, sp+$3f
    ld hl, sp+$3c
    db $eb
    and [hl]
    ld a, l
    ld a, [hl]
    push af
    ld a, a
    cp $fb
    ld a, a
    ld l, b
    ld a, a
    ld b, h
    ld a, e
    ld [c], a
    ld a, c
    add a
    ld a, b
    or d
    ld c, l
    cp b
    ld b, a
    jr c, jr_068_6ce7

    xor [hl]
    ld b, c
    ccf
    ld b, b
    sub b
    ld l, a
    add a
    ld a, a
    ld sp, $70cf
    adc a
    ld [hl], b
    adc a
    ldh [rIF], a
    pop hl

jr_068_6cb1:
    ld c, $fd
    ld [bc], a
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld [hl], c
    adc a
    rra
    rst $38
    ld hl, sp-$01
    jr @+$01

    ld [$a0ff], sp
    ld e, a
    sub b
    ld l, a
    jr jr_068_6cb1

    inc c
    di
    add h
    ld a, e
    xor d
    ld e, l
    ld [hl], l
    adc [hl]
    and [hl]
    rst $08
    rst $00
    rst $28
    db $fc
    rst $20
    ld l, c
    or $38
    rst $30
    inc a
    ei
    jr z, @-$1f

    inc e
    rst $28
    rla
    xor $16
    rst $28
    rla

jr_068_6ce7:
    rst $28
    rla
    rst $28
    rla
    rst $28
    dec de
    rst $20
    rrca
    di
    add d
    rst $38
    ld [bc], a
    rst $38
    ld b, e
    cp $e5
    cp $ec
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, h
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
    jr jr_068_6d33

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_068_6d43

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_068_6d53

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_068_6d63

    ld [hl-], a

jr_068_6d33:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_068_6d73

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_068_6d43:
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

jr_068_6d53:
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

jr_068_6d63:
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

jr_068_6d73:
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
    jr jr_068_6e33

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_068_6e43

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_068_6e53

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_068_6e63

    ld [hl-], a

jr_068_6e33:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_068_6e73

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    nop
    nop
    nop

jr_068_6e43:
    nop
    nop
    ld bc, $0505
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0505
    nop
    nop
    nop

jr_068_6e53:
    nop
    nop
    ld bc, $0505
    dec b
    dec b
    ld b, $05
    dec b
    dec b
    dec b
    dec b
    nop
    nop
    nop

jr_068_6e63:
    nop
    ld bc, $0501
    dec b
    dec b
    dec b
    dec b
    ld b, $05
    dec b
    ld b, $05
    nop
    nop
    nop

jr_068_6e73:
    nop
    nop
    ld bc, $0505
    ld b, $01
    dec b
    ld b, $05
    ld b, $01
    dec b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0506
    ld bc, $0601
    ld b, $06
    ld b, $06
    dec b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0606
    ld b, $06
    ld b, $06
    ld bc, $0501
    ld b, $00
    nop
    nop
    nop
    nop
    ld bc, $0606
    ld b, $06
    ld b, $06
    ld bc, $0601
    ld b, $00
    nop
    nop
    nop
    nop
    ld bc, $0606
    ld b, $06
    ld b, $06
    ld bc, $0601
    ld b, $00
    nop
    nop
    nop
    nop
    ld bc, $0605
    ld b, $06
    ld b, $06
    ld bc, $0605
    ld b, $00
    ld bc, $0101
    ld bc, $0501
    ld b, $06
    ld b, $06
    ld b, $01
    dec b
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    dec b
    dec b
    dec b
    ld bc, $0501
    ld bc, $0506
    dec b
    ld bc, $0101
    ld bc, $0101
    dec b
    dec b
    ld b, $05
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0105
    ld bc, $0101
    ld bc, $0105
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0505
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0105
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0105
    dec c
    dec c
    dec c
    ld c, $0d
    dec c
    add hl, bc
    dec c
    dec c
    ld c, $0d
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld c, $0d
    add hl, bc
    dec c
    dec c
    add hl, bc
    ld c, $0d
    dec c
    ld c, $0d
    dec c
    dec c
    dec c

jr_068_6f61:
    dec c
    add hl, bc
    dec c
    dec c
    add hl, bc
    add hl, bc

jr_068_6f67:
    dec c
    add hl, bc
    ld c, $09
    ld c, $0d
    dec c
    dec c
    dec c
    dec c
    add hl, bc
    add hl, bc
    ld c, $0e
    ld c, $09
    add hl, bc
    ld c, $0e
    ld c, $0d
    dec c
    dec c
    dec c
    dec c
    cp h
    ld b, b
    rst $38
    jr nz, jr_068_6f61

    inc sp
    jr c, jr_068_6f67

    cp a
    ld a, a
    ld hl, sp-$01
    dec b
    ld a, [$f807]
    rlca
    ld hl, sp-$21
    jr nz, jr_068_6ff4

    or b
    ld a, [$1f1c]
    cp $ff
    rst $38
    ccf
    rst $38
    rst $08
    ccf
    rst $30
    rrca
    db $fd
    inc bc
    ld a, $c1
    rst $38
    ret nz

    rst $30
    ld hl, sp-$0d
    db $fc
    call z, Call_068_773f
    adc [hl]
    ld a, a
    add e
    ld h, e
    db $fd
    ld a, b
    rst $38
    ld hl, sp-$01
    ld e, $ff
    ld b, b
    cp a
    add c
    rst $38
    bit 7, a
    and $3f
    ld [hl], c
    cp a
    call nc, $f6ef
    rst $38
    ret nz

    rst $38
    dec b
    ei
    rrca
    pop af
    ccf
    ret nz

    ld hl, $edc0
    ldh a, [$e3]
    db $fc
    ld h, d
    db $fd
    or a
    ld a, b
    db $fd
    ld e, $72
    adc a
    ld de, $01ef
    rst $38
    ret nz

    ccf
    ld [de], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    ld [de], a
    db $fd
    ld [de], a
    ld a, l
    jr z, jr_068_7067

    ld l, b
    rst $30
    ld [hl], h
    rst $28

jr_068_6ff4:
    ld d, b
    rst $28
    inc d
    db $eb
    dec d
    db $eb
    inc sp
    rst $08
    ld l, a
    sbc a
    rst $28
    rra
    rst $28
    rra
    rra
    rst $38
    cp $ff
    ld a, [hl]
    rst $38
    ccf
    cp $3c
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    ld [hl], a
    db $fc
    ld [hl], a
    db $fc
    ld a, a
    db $fc
    rst $38
    db $fc
    xor $fd
    db $ed
    rst $38
    ld l, a
    rst $38
    dec h
    rst $38
    daa
    rst $38
    ld l, b
    rst $30
    ld a, b
    rst $20
    ld a, [hl+]
    push bc
    ld b, $89
    ld d, [hl]
    adc c
    ld [de], a
    adc l
    ld de, $368e
    adc a
    db $76
    adc a
    or d
    rrca
    ld a, $0f
    dec l
    ld e, $eb
    inc e
    ld e, a
    jr c, jr_068_707e

    ld hl, sp+$37
    ld hl, sp+$7d
    ldh a, [$ef]
    ldh a, [$fb]
    ldh [$f6], a
    pop hl
    sbc $e1
    cp $c1
    cp b
    rst $00
    add c
    rst $38
    add e
    rst $38
    ccf
    rst $00
    dec de
    rst $00
    db $76
    adc a
    ld [hl], h
    adc a
    ld h, d
    sbc l
    ld h, d
    sbc l
    xor d
    dec e
    and h
    dec de
    add h
    dec sp
    ld b, b

jr_068_7067:
    ccf
    ret nz

    ccf
    ret nz

    ccf
    add c
    ld a, [hl]
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    add e
    db $fc
    add e
    db $fc
    adc b
    rst $38

jr_068_707e:
    and $1f
    sbc h
    ld h, e
    ld d, $79
    di
    inc c
    jp hl


    ld b, $be
    jp $ffa0


    nop
    rst $38
    ei
    inc b
    rst $38
    nop
    cp $00
    cp $00
    rst $20

jr_068_7097:
    jr jr_068_7097

    inc c
    ld a, a
    add [hl]
    adc a
    di
    rst $18
    pop hl
    cp $e1
    rst $38
    ldh a, [$f7]
    ld hl, sp-$41
    ld a, b
    db $dd
    ld a, $ef
    rra
    ld [hl], a
    adc a
    daa
    rst $18
    ld bc, $85ff
    ei
    call nz, $e1ff
    rst $38
    ld [hl], e
    rst $38
    adc [hl]
    ld a, a
    add b
    rst $38
    push de
    cp $20
    rst $38
    ld c, $ff
    rst $08
    rst $38
    ld b, a
    rst $38
    ld l, e
    rst $30
    dec sp
    rst $20
    ld l, $f3
    jp nz, $8cff

    ld [hl], e
    ccf
    rst $38
    rra
    rst $38
    rst $08
    ccf
    rst $20
    rra
    db $db
    daa
    db $fd
    inc bc
    ld bc, $a0ff
    rst $18
    pop de
    xor $68
    rst $30
    inc [hl]
    ei
    inc e
    rst $38
    nop
    rst $38
    ld b, $ff
    ld b, h
    cp a
    ld c, l
    cp a
    jr @+$01

    ld b, b
    rst $38
    ld d, b
    rst $28
    ld c, c
    or $59
    and $50
    rst $28
    ld d, c
    xor $50
    xor $54
    ld [$fe40], a
    ld d, c
    cp $4c
    cp $8f
    db $fc
    daa
    call c, $dc27
    ld [bc], a
    db $fd
    ld e, $e1
    ld l, [hl]
    add c
    and $09
    or $09
    and $19
    db $f4
    dec bc
    ld sp, $dfce
    rst $28
    rst $08
    cp a
    rst $18
    xor [hl]
    sbc [hl]
    db $fd
    sbc [hl]
    db $fd
    sbc [hl]
    db $fd
    sbc a
    ld e, [hl]
    rst $38
    rrca
    and $0f
    dec c
    cp $3f
    db $fc
    sbc a
    ld a, h
    dec bc
    db $fc
    dec de
    db $fc
    dec de
    db $fc
    add hl, sp
    cp $b0
    ld a, [hl]
    cp $38
    inc sp
    ld a, h
    db $fd
    ld a, b
    db $76
    ld sp, hl
    or $f9
    or $f9
    rst $30
    ld sp, hl
    push af
    ei
    db $f4
    ei
    db $f4
    ei
    db $f4
    ei
    db $ec
    di
    db $e4
    di
    jp hl


    rst $30
    ld [$f8e7], a
    rst $20
    ld [c], a
    db $fd
    or $f9
    ld c, [hl]
    pop af
    ld b, a
    ld hl, sp+$06
    ld sp, hl

jr_068_716c:
    inc [hl]
    ei
    inc d
    ei
    ld l, h
    or e
    adc c
    db $76
    dec hl
    db $f4
    adc a
    ld [hl], b
    dec c
    ldh a, [rVBK]
    ldh a, [$5f]
    ldh [$0d], a
    ldh a, [rSC]
    rst $38
    nop
    rst $38
    ld a, [hl]
    pop hl
    rst $00
    jr c, jr_068_716c

    inc e
    ld h, c
    sbc [hl]
    ld h, c
    sbc [hl]
    ld sp, $b9ce
    ld b, [hl]
    sbc b
    ld h, a
    call z, Call_068_5433
    dec sp
    ld l, l
    ld e, $4f
    ccf
    and e
    ld a, a
    add c
    rst $38
    db $dd
    db $e3
    ld l, h
    di
    or a
    ld a, b
    dec de
    db $fc
    sbc a
    db $fc
    sub a
    xor $3b
    rst $00
    sbc b
    rst $20
    call z, $cff3
    ldh a, [$87]
    ld a, b
    dec de
    db $fc
    xor $ff
    ld a, a
    rst $38
    rst $38
    ld a, a
    db $db
    ccf
    inc b
    dec de
    or b
    rrca
    ld d, b
    adc a
    di
    inc c
    db $e3
    inc c
    and l
    ld [bc], a
    cp b
    rlca
    and $1f
    ld h, a
    sbc a
    rst $18
    rst $38
    ld c, a
    cp a
    ld h, a
    sbc a
    ld d, e
    adc a
    cp c
    rst $00
    cp c
    rst $00
    ret nz

    rst $38
    ld b, b
    rst $38
    db $10
    rst $38
    ldh a, [$1f]
    ld e, b
    cp a
    ld e, b
    cp a
    ld a, b
    cp a
    ld l, c
    cp a
    ld sp, $45ef
    ei
    dec b
    ei
    sbc l
    ld h, e
    dec e
    db $e3
    sbc a
    ld h, b
    sbc [hl]
    ld h, c
    adc [hl]
    ld [hl], c
    ld l, [hl]

Jump_068_71ff:
    pop af
    ld c, [hl]
    pop af
    ld l, $f1
    ld b, b
    rst $38
    ld b, b
    rst $38
    dec b
    rst $38
    ld hl, $63df
    sbc l
    ld d, e
    xor l
    push hl
    dec de
    pop bc
    dec sp
    ret


    inc sp
    db $ec
    inc de
    ld l, a
    inc de
    or $03
    ld a, [de]
    rst $20
    dec e
    rst $20
    ld c, l
    or a
    call $9637
    ld a, a
    inc e
    ld a, [hl]
    inc b
    ld a, [hl]
    ld [hl+], a
    ld e, h
    ld [c], a
    inc e
    ret z

    ld [hl], $fe
    inc a
    db $fc
    ccf
    db $fc
    ld a, $fc
    ld a, $fc
    ccf
    rst $38
    ld a, l
    rst $38
    ld a, a
    rst $38
    ld a, a
    sbc b
    ld a, a
    inc a
    rst $38
    dec a
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    ld a, l
    cp $f8
    rst $38
    ei
    rst $38
    ei
    rst $38
    ld hl, sp-$01
    ld [hl], d
    db $fc
    rst $38
    ld hl, sp-$04
    ei
    db $fc
    pop af
    db $fc
    ld [hl], e
    db $fc
    inc sp
    db $fc
    inc sp
    ld hl, sp-$09
    ld a, [$9ae5]
    ld h, b
    ld c, $e0
    ld a, [hl+]
    ret nz

    inc sp
    ret nz

    dec bc
    ldh a, [$71]
    ld hl, sp+$53
    ld sp, hl
    ld c, c
    cp $07
    ld hl, sp+$03
    db $fc
    ld h, c
    cp $b9
    ld a, [hl]
    db $dd
    ld a, $b9
    ld e, $89
    ld e, $95
    ld c, $11
    ld c, $93
    inc c
    ld l, a
    sbc b
    rst $20
    jr @-$17

    jr @+$01

    rst $38
    rst $38
    rst $38
    db $fd
    cp $fc
    rst $38
    db $fc
    rst $38
    db $fc
    ld a, a
    sbc $3f
    xor $1f
    adc a
    ld a, a
    rlca
    rst $38
    cp e
    rst $00
    call z, Call_068_67f3
    ld hl, sp-$59
    ld a, b
    add e
    ld a, h
    add b
    ld a, a
    or c
    adc $de
    pop hl
    rst $28
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$02
    db $fd
    db $fd
    rst $38
    add d
    ld a, a
    ld h, d
    sbc a
    add hl, bc
    rst $30
    ret c

    rst $20
    adc b
    rst $30
    sub e
    rst $38
    and [hl]
    reti


    ld d, [hl]
    jp hl


    ld hl, sp-$19
    rst $28
    ldh a, [$d0]
    rst $38
    cp $ff
    add hl, sp
    add $05
    ld [c], a
    inc a
    db $e3
    ld de, $90ff
    rst $28
    xor b
    rst $00
    adc b
    rst $20
    and b
    rst $08
    dec [hl]
    adc $31
    adc $30
    adc $39
    add $77
    add b
    ld l, e
    sub b
    ld c, a
    or b
    rst $08
    jr nc, @-$43

    ld [hl], h
    ld a, a
    or e
    ld a, a
    cp e
    rst $38
    ld [hl-], a
    cp $f6
    or $fc
    or $fc
    db $fc
    db $f4
    ldh a, [$fc]
    db $fc
    ld hl, sp-$1c
    ld hl, sp-$1c
    ld hl, sp-$1f
    ld hl, sp-$17
    ldh a, [$cb]
    ldh a, [$cf]
    ldh a, [$d0]
    add sp, -$70
    add sp, $14
    jp hl


    adc a
    ld [hl], b
    add [hl]
    ld [hl], c
    sub [hl]
    ld h, c
    adc a
    ld h, b
    cp l
    ld b, b
    scf
    ret


    ld a, a
    and c
    ld a, a
    cp e
    ld a, a
    ldh a, [$fc]
    ldh a, [$fd]
    ld hl, sp-$07
    rst $38
    rst $38
    db $ed
    xor d
    push bc
    ld d, b
    adc l
    sub $29
    ldh a, [$0b]
    cp b
    ld b, a
    inc d
    db $eb
    add hl, de
    ld [c], a
    add l
    jp nz, Jump_000_138e

    ld b, $9b
    adc [hl]

jr_068_7355:
    inc sp
    ld b, $bf
    ld c, $ff
    cp [hl]
    db $fd
    cp $3d
    dec a
    cp [hl]
    and d
    dec e
    ld [c], a
    dec e
    ld [c], a
    dec e
    ld hl, sp+$1f
    push de
    ld a, [hl-]
    push af
    ld a, [hl-]
    add l
    ld a, d
    adc a
    ld [hl], b
    ld c, b
    jr nc, jr_068_73bd

    jr nc, jr_068_7355

    dec d
    and d
    ld [hl], l
    ld l, d
    push af
    pop hl
    cp $10
    db $eb
    ldh [rNR31], a
    scf
    rlca
    dec sp
    rlca
    sub a
    dec bc
    add a
    dec bc
    rst $28
    ld bc, $07f8
    add $03
    ld h, b
    inc bc
    dec sp
    nop
    ccf
    nop
    or c
    rrca
    or a
    rrca
    di
    rrca
    xor a
    rst $38
    rst $38
    rst $38
    rst $18
    ccf
    rst $20
    rra
    inc hl
    rra
    sub e
    rrca
    ld sp, hl
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$79
    sbc $e1
    ld a, [$73e5]
    db $ed
    ld l, d
    push af
    db $ec
    ld [hl], e
    ld a, [hl-]
    db $fd
    ld a, e
    db $fc
    rst $38

jr_068_73bd:
    db $fc
    db $fc
    rst $38
    ld a, h
    rst $38
    cp $7f
    cp [hl]
    ld a, a
    ccf
    rst $38
    cp h
    rst $38
    ld b, a
    cp b
    di
    inc e
    ld l, c
    sbc [hl]
    rlca
    adc b
    jp z, Jump_000_2e87

    jp $c33c


    ld a, [hl]
    ld bc, $20df
    ld e, h
    and d
    ld [hl], b
    adc a
    adc a
    ret


    call z, $e423
    add e
    rst $38
    ld [c], a
    rst $38
    rst $38
    ld [hl], a
    cp e
    scf
    rst $38
    ld a, a
    or a
    ret


    ld [hl], $84
    ld h, $88
    ld h, $8c
    ld [hl+], a
    sbc b
    ld b, [hl]
    ld e, d
    add h
    jr nz, @-$22

    ld a, b
    db $fc
    ld l, h
    ld hl, sp-$04
    ld hl, sp-$10
    db $fc
    or $f8
    db $76
    ld hl, sp-$49
    ld a, b
    or a
    ld a, b
    or a
    ld a, b
    di
    ld a, h
    di
    ld a, h
    ld a, e
    db $f4
    ld [hl], e
    db $e4
    cp $61
    xor $61
    or $69
    db $76
    jp hl


    ei
    di
    di
    ei
    di
    db $d3
    db $d3
    rst $20
    db $d3
    add a
    sub e
    rst $00
    sub [hl]
    db $e3
    jp nc, $f585

    jp nz, $d8f5

    db $fc
    pop bc
    db $e4
    ld a, e
    cp a
    ld d, h
    ccf
    call nz, $ae5d
    rra
    add sp, -$61
    ld l, b
    ccf
    ret


    ld a, a
    adc c
    ld e, a
    and d
    rst $08
    ld [hl+], a
    adc [hl]
    ld [hl], d
    rrca
    or $06
    pop af
    ld [bc], a
    db $f4
    ld b, b
    or a
    ld b, [hl]
    and c
    inc b
    ret c

    reti


    sbc d
    cp h
    sbc a
    cp l
    cp a
    cp a
    xor a
    rst $28
    ld a, $6f
    or $77
    db $ed
    ld h, b
    sbc b
    ldh a, [$09]
    ldh a, [rNR43]
    ld hl, sp-$50
    db $fc
    cp b
    ld e, c
    cp [hl]
    ld a, b
    cp a
    inc [hl]
    rst $38
    or h
    ld a, a
    or l
    ld a, [hl]
    or h
    ld a, [hl]
    or l
    ld a, [hl]
    pop af
    ld a, a
    adc a
    rlca
    daa
    add a
    ld [hl], e
    add a
    rst $20
    db $d3
    rst $08
    di
    rst $38
    rra
    ld l, [hl]
    sub e
    ld a, b
    add b
    ld a, a
    add b
    ccf
    ret nz

    rst $28
    ldh a, [$f5]
    add sp, -$0b
    cp $fb
    rst $30
    ei
    rst $30
    push af
    ei
    cp $f9
    ei
    db $fc
    cp $fc
    rst $30
    cp $fe
    rst $38
    ld a, e
    rst $38
    ld c, [hl]
    rst $38
    rst $38
    ld h, b

jr_068_74b0:
    cp a
    ld [hl], b
    ld [hl], a
    cp b
    ld l, l
    sbc d
    nop
    rst $38
    ld [hl], b
    rst $38
    ld a, c
    rst $38
    ld c, h
    cp a
    call c, $bc8b
    jp $c1fe


    ld l, [hl]
    pop af
    xor $f1
    ld l, [hl]
    ld sp, hl
    rst $28
    jr jr_068_74b0

    inc e
    db $f4
    rrca
    jr nc, jr_068_74e1

    ld h, e
    sbc a
    rla
    ei
    ld h, h
    sbc e
    push af
    add hl, bc
    cp h
    ld bc, $01fe
    or e
    ld c, a
    rst $00

jr_068_74e1:
    rst $28
    ld h, a
    call nz, $c027
    and c
    ld [bc], a
    di
    sub l
    rst $38
    pop hl
    xor $e1
    xor $ed
    db $ec
    rst $30
    db $e4
    ld a, a
    ld e, h
    rst $30
    dec b
    cp $07
    ld a, l
    dec b
    ld l, [hl]
    dec c
    ld c, [hl]
    inc c
    rra
    sbc l
    ld e, d
    cp [hl]
    ld a, l
    cp $bd
    db $fc
    ei
    ld [$e8fd], a
    db $d3
    ret c

    ld [$cdfb], a
    rst $18
    xor a
    rst $18
    cp a
    rst $38
    add a
    rst $20
    rst $18
    adc a
    rst $30
    adc a
    rst $00
    adc [hl]
    ld b, a
    adc [hl]
    ld c, a
    sbc a
    sbc $f7
    adc [hl]
    rst $28
    ld e, $cf
    ld b, $cf
    ld b, $c7
    rlca
    add $07
    call z, $8f07
    ret


    add a
    ld bc, $418f
    adc a
    ld sp, $919f
    sbc e
    rra
    sbc a
    dec bc
    rra
    xor a
    call $943f
    ld a, e
    ld c, d
    inc sp
    ld l, h
    inc de
    sub $03
    ld a, [c]
    rlca
    di
    rlca
    or a
    ld b, a
    rst $38
    rlca
    ld l, a
    add a
    and e
    rrca
    push hl
    rrca
    sra a
    ld e, $ef
    adc $ff
    adc $ff
    and $df
    ld h, l
    sbc $21
    sbc $94
    ld a, [hl]
    and [hl]
    ld e, b
    add d
    ld [hl], b
    dec d
    ld h, d
    ld [hl], b
    inc hl
    ld [hl], a
    ld l, e
    ld [hl], l
    ei
    pop hl
    sbc a
    jp $cbfd


    rst $20
    db $eb
    ld d, a
    set 6, l
    rst $18
    inc hl
    ld [hl], c
    cp $fa
    db $fd
    cp $ff
    cp $ff
    ld a, [$c3fd]
    db $fc
    ld h, e
    add h
    cp $00
    ld sp, hl
    ld b, $f9
    ld b, $ff
    nop
    inc h
    dec de
    pop hl
    rra
    ccf
    rst $38
    rrca
    rst $38
    add hl, de
    rst $20
    ld a, c
    add a
    ld [hl], a
    adc b
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld c, $f1
    rst $20
    ld hl, sp+$62
    db $dd
    dec sp
    call nz, Call_068_40be
    adc a
    ld [hl], b
    ld h, e
    db $fc
    dec a
    cp $1f
    cp $de
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    ld h, e
    rst $38
    ld a, c
    rst $20
    db $ed
    di
    inc l
    di
    sub $39
    ld h, a
    sbc b
    ld c, e
    add h
    xor a
    ret nz

    db $ed
    di
    ld [hl], b
    rst $38
    ld a, [c]
    db $fc
    ld hl, sp-$02
    ld [hl], c
    cp $b9
    cp $fe
    rst $28
    rst $00
    cp [hl]
    rst $28
    ld d, d
    rst $38
    ld [c], a
    add sp, -$01
    ret z

    cp [hl]
    ret c

    or a
    call c, $def3
    db $ec
    adc [hl]
    db $dd
    add hl, bc
    cp h
    add hl, bc
    sbc a
    dec de
    adc d
    ld a, [de]
    add c
    db $10
    sbc e
    ld sp, $238b
    pop hl
    ld b, e
    or e
    ld [hl], a
    set 7, a
    rst $18
    ld a, a
    cp a
    ld l, a
    ccf
    rst $18
    ld b, a
    rst $00
    sbc a
    add a
    rst $18
    adc a
    sub a
    adc a
    sbc a
    adc a
    rra
    rrca
    sbc a
    rrca
    sbc a
    rrca
    sbc a
    rrca
    sub a
    rrca
    or e

jr_068_7622:
    rrca
    cp a
    ld c, $ff
    xor h
    ld e, $ec
    ld e, $ac
    ld a, [hl]
    xor h
    ld e, h
    adc h
    ld b, h
    inc c
    add h
    inc c
    adc h
    inc c
    dec c
    adc h
    rrca
    ret z

    sbc a
    ld hl, sp-$12
    ld a, [$f8fc]
    cp $04
    ld hl, sp+$1c
    ldh [$4c], a
    ldh a, [$4c]
    ldh a, [$dc]
    ldh [$dd], a
    ldh [$d1], a
    add sp, $40
    ld sp, hl
    ret z

    pop af
    jp z, Jump_000_2df1

    di
    inc hl
    sbc a
    or c
    rrca
    sub $29
    push de
    jr nz, jr_068_7622

    jr nz, jr_068_7681

    ld h, e
    ld h, b
    inc hl
    ld hl, $6063
    rlca
    ld h, b
    rrca
    ld h, b
    adc a
    ret z

    scf
    adc $b1
    call z, $c4f3
    rst $38
    call nz, $80df
    rst $18
    add c
    cp $27
    ret c

    ld [hl-], a
    db $ed
    scf
    add sp, -$11

jr_068_7681:
    ldh a, [$6f]
    ldh a, [rIE]
    ld [hl], b
    dec [hl]
    ld a, [$fa3d]
    ld hl, sp-$01
    ld a, [$4a7f]
    scf
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    ld a, a
    inc bc
    or a
    rrca
    xor l
    rra
    db $fd
    rra
    ld l, [hl]
    sbc l
    ld [hl], e
    adc h
    ld [hl], e
    adc h
    or a
    ld [$803f], sp
    ldh [$9f], a
    xor a
    ld e, a
    pop hl
    rra
    cp $01
    cp [hl]
    ld bc, $013e
    rst $28
    db $10
    inc de
    rst $38
    ld a, a
    rst $38
    inc b
    ei
    cp $01
    ld e, $e1
    ld c, e
    and h
    ld e, [hl]
    and c
    dec e
    ld [c], a
    call c, $efe3
    di
    ld d, $ff
    ld [hl], c
    sbc [hl]

jr_068_76ce:
    ld hl, $d9de
    nop
    rst $20
    add hl, bc
    ld [c], a
    db $fd
    db $76
    ld sp, hl
    ld a, [c]
    ld a, c
    cp e
    ld a, b
    ld c, h
    jr nc, jr_068_76ce

jr_068_76df:
    db $10
    cp a
    ld e, a
    cp $1d
    cp $be
    rst $38
    adc $ff
    ld [hl], a
    ld a, a
    or a
    ccf
    ld [hl], e
    ld hl, $2150
    add $2b
    ld d, l
    dec hl
    rst $10
    ld c, a
    inc sp
    ld a, e
    or [hl]
    ld a, b
    ld de, $f178
    ld hl, sp-$07
    ld hl, sp-$14
    db $fc
    jp hl


    db $ec

jr_068_7705:
    db $fd
    db $ed
    cp $ff
    rst $08
    db $fd
    rst $08
    ret


    cp $e0
    db $dd
    pop bc
    db $fc
    rst $00
    add sp, -$3e
    db $ec
    ldh [$c0], a

jr_068_7718:
    ld hl, sp-$40
    ld hl, sp-$08
    ld hl, sp-$02
    cp $fc
    db $fc
    cp h
    cp h
    ld b, $3c
    ld b, $2c
    ld b, h
    inc h
    ld c, b
    inc l
    ld d, b
    jr nz, jr_068_77a6

    jr c, jr_068_7780

    inc a
    ld e, h
    inc a
    ld e, [hl]
    inc a
    ld e, [hl]
    ld a, a
    inc e
    inc a
    ld e, a
    jr c, jr_068_7718

    dec a

jr_068_773d:
    ld e, $3c

Call_068_773f:
    ld a, e
    ld d, e
    jr c, jr_068_7705

    jr c, jr_068_773d

    jr nc, jr_068_76df

    ld [hl], b
    ld [$00f0], sp
    ldh a, [rTMA]
    ldh a, [rTAC]
    ldh a, [rTIMA]
    ld a, [c]
    cpl
    ldh a, [rBCPS]
    ldh a, [$e8]
    ldh a, [$98]
    ldh [$d8], a
    ldh [$58], a
    ldh [$d8], a
    ld h, b
    ld a, b
    ldh a, [rSVBK]
    ld hl, sp-$10
    jr nz, jr_068_77c7

    or b
    ld h, b
    ld [de], a
    ld h, b
    rla
    ld b, b
    cp e
    ld d, b
    rst $28
    ld a, c
    adc [hl]
    ld l, a
    call nz, $9f66
    rst $20
    ld e, e
    add b
    cp $c8
    or a
    ret c

    rst $20
    reti


    add h

jr_068_7780:
    ldh [$1f], a
    ldh [$1f], a
    di
    rrca
    di
    rrca
    di
    rrca
    rst $30
    rrca
    rst $20
    rra
    ldh a, [rIF]
    rst $30
    add hl, bc
    rst $38
    nop
    rst $30
    ld [$fcbb], sp
    ld sp, hl
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
    ld a, a
    rst $38

jr_068_77a6:
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    db $db
    rst $20
    ld a, [hl]
    pop bc
    sbc [hl]
    ld h, c
    ld l, $f1
    jr nc, @+$01

    ldh a, [rIE]
    rst $20
    rst $38
    ld sp, $1cff
    di
    db $10
    rst $38
    db $10
    rst $38
    add h
    rst $38
    ld b, e
    rst $38
    ld e, e

jr_068_77c7:
    rst $20
    ld e, d
    rst $20
    ld a, [de]
    rst $20
    ld a, [de]
    rst $20
    dec d
    xor $f7
    ld [$fc03], sp

jr_068_77d4:
    ei
    rst $38
    db $f4
    ei
    ld [$caf1], a
    pop af
    jp nc, $ff21

    nop
    dec e
    ldh [$cd], a
    ld [hl-], a
    xor b
    ld d, a
    call nc, $982b
    ld h, a
    ld hl, $27cf
    rst $08
    rlca
    rst $08
    rst $08
    xor a
    rst $08
    xor a
    rst $08
    cpl
    rst $28
    ld e, c
    db $fc
    ld l, e
    ld a, h
    jp z, Jump_000_00dc

    ld e, b
    and h
    ld [$90d4], sp
    dec c
    jr jr_068_77d4

    ld e, [hl]
    cp h
    ld e, [hl]
    xor $df
    db $ec
    call $ccfb
    ei
    sbc h
    pop hl
    add hl, bc
    call nc, Call_068_5508
    ld bc, $8212
    ld de, $01d2
    nop
    db $d3
    ld b, b
    dec de
    ld d, $4a
    ld d, e
    inc b
    ld [hl], c
    rrca
    ld a, c
    ld d, e
    ld [hl], e
    ld bc, $3243
    ld [hl], e
    nop
    jr nc, @+$24

    add hl, sp
    inc a
    ld a, $3d
    ld a, [hl-]
    db $fd
    ld hl, sp-$01
    ld a, [$f8fd]
    rst $38
    ld hl, sp+$7e
    ld a, [$96fd]
    ld a, b
    sbc [hl]
    jr c, jr_068_785d

    inc a
    ld a, [de]
    inc a
    jp c, $f03c

    ld a, $d9
    ld a, $f9
    ld a, $3c
    cp $bc
    ld a, [hl]
    dec a
    ld a, [hl]
    dec c
    ld a, [hl]
    cp h
    ld c, [hl]
    inc a
    ld c, [hl]
    add h

jr_068_785d:
    ld c, [hl]
    rlca
    ld c, [hl]
    sbc a
    ld h, a
    rst $18
    ld h, a
    rst $10
    ld l, e
    di
    ld c, [hl]
    jp $ef3e


    db $d3
    ldh [$df], a
    db $e4
    sbc d
    ld [hl], b
    adc a
    ld a, h
    jp $cd78


    call z, $d0f1
    db $ed
    or $49
    xor $5f
    rst $38
    sbc a
    ld c, b
    rst $38
    ld b, c
    rst $38
    add h
    ei
    db $fd
    add e
    cp l
    jp $c7b8


    cp h
    jp $e1de


    and c
    ld b, b
    pop de
    jr nz, jr_068_78c0

    db $10
    inc d
    ld [$043a], sp
    ldh [$1f], a
    inc bc
    rst $38
    dec d
    db $e3
    rlca
    pop hl
    ld [bc], a
    pop hl
    ld d, b
    and c
    ld hl, $b0c0
    ld b, b
    ld [hl], e
    add b
    ld a, d
    add b
    dec a
    ret nz

    rra
    ret nz

    inc de
    ret z

    ld d, $c9
    scf
    ret z

    ld [hl], h
    adc e
    ld h, e
    sbc a
    sbc [hl]
    ld h, e
    and [hl]
    inc bc

jr_068_78c0:
    rst $00
    ld [bc], a
    adc a
    ld [bc], a
    ld a, [bc]
    add a
    jp z, $cb07

    inc b
    ld c, c
    inc b
    ld c, [hl]
    nop
    ld h, c
    ld e, $d9
    ld a, $39
    rst $38
    ld a, [$7afd]
    db $fd
    ld [hl], e
    db $fc
    ld a, l
    db $fc
    ld [hl], a
    db $fc
    dec [hl]
    rst $38
    nop

jr_068_78e1:
    rst $38
    dec l
    jp nz, $c760

    add sp, $57
    inc bc
    rst $38
    dec b
    di
    and d
    pop af
    jr z, jr_068_78e1

    ei
    or c
    pop af
    cp e
    ld sp, hl
    or e
    ld sp, hl
    ei
    ld sp, hl
    or a
    ld a, c
    or a
    ld a, e
    ld [hl], l
    ld a, e
    ld [hl], h
    ld e, $71
    rla
    ld a, d
    ld e, a
    ld [hl-], a
    rla
    ld a, $37
    sub [hl]
    scf
    jp $fff3


    rst $38
    rst $18
    rst $38
    rst $18
    rst $38

jr_068_7913:
    rra
    ccf
    rst $18
    ccf
    sbc a
    ccf
    sbc a
    ccf
    sbc a
    ccf
    cp a
    ccf
    ccf
    ccf
    ccf
    ccf
    cp a
    rst $38
    ccf
    cp $bf
    rst $30
    rst $38
    di
    rst $38
    di

jr_068_792d:
    ld [hl], l
    di
    ld h, l
    di
    inc sp
    db $db
    jr nc, jr_068_792d

    ld sp, $9178
    jr c, jr_068_7913

    add hl, sp
    rst $38
    dec sp
    rst $18
    ld a, a
    rst $38
    adc $3f
    ld c, $7f
    ld e, $7f
    ld e, $7f
    ld e, d
    ccf
    ld e, $7f
    sbc [hl]
    ld a, a
    ld e, $7f
    ld e, $7f
    adc [hl]
    ld a, a
    ld c, $7f
    ld c, a
    ccf
    ld c, a
    ccf
    jp Jump_000_003f


    ld a, a
    ld de, $ef6f
    rst $00
    rst $00
    xor b
    add sp, $07
    or $2d
    xor $f7
    ld a, a
    db $ec
    ld a, [hl]
    ld l, l
    ld a, h
    db $eb
    ld a, h
    db $e3
    db $ec
    ld [hl], d
    ld a, h
    and e
    ld a, d
    and l
    ld hl, sp+$7e
    ld a, b
    cp a
    db $fc
    dec sp
    ld hl, sp+$77
    ld sp, hl
    ld [bc], a
    add hl, sp
    jp nz, $837c

    db $fd
    add d
    ld a, [hl]
    add b
    ld e, d
    add h
    ld e, e
    add h
    ld c, b
    add a
    ld [c], a
    dec b
    db $e3
    inc b
    db $eb
    inc b
    ld l, e
    inc b
    ld h, a
    inc c
    adc c
    ld a, [hl]
    rst $38
    ld hl, sp-$02
    ld hl, sp+$72
    ld hl, sp+$70
    ld hl, sp+$70
    ld hl, sp+$70
    ld hl, sp-$0d
    ld a, b
    or h
    ld a, e
    cp d
    ld a, h
    or l
    ld a, b
    or l
    ld a, b
    or l
    ld a, b
    db $f4
    jr c, jr_068_79cb

    jr c, jr_068_79f0

    ld hl, sp+$0b
    db $fc
    ld [$bcfc], a
    ld a, [hl]
    ld [hl], l
    cp $3c
    cp $2c
    cp $ec
    rst $38
    or h
    ld a, e
    dec a

jr_068_79cb:
    ld [bc], a
    add hl, sp
    ld b, $d8
    ld b, $1c
    ld [bc], a
    ld b, b
    cp [hl]
    add a
    db $fc
    ld h, a
    sbc h
    ld a, d
    add l
    rst $28
    nop
    push af
    ld a, [bc]
    db $10
    rst $28
    ld [$8fc7], sp
    ld b, b
    rst $08
    nop
    cp [hl]
    ld bc, $ddaa
    db $10
    rst $38
    ret nz

    ccf
    inc d
    rst $28

jr_068_79f0:
    sub h
    rst $08
    pop bc
    adc $08
    rst $00
    ld [$21c7], sp
    adc $43
    and h
    ld c, d
    and l
    ld [hl], l
    add b
    db $e3
    db $10
    xor a
    db $10
    ld h, b
    rra
    ld l, [hl]
    rra
    adc a
    ld a, a
    cp a
    ld a, a
    sbc a
    ld a, a
    xor a
    ld e, a
    or [hl]
    ld c, a
    or [hl]
    ld c, a
    and a
    ld c, a
    daa
    rst $08
    rla
    rst $08
    ld e, a
    add a
    ld e, [hl]
    add a
    ld e, d
    add a
    jp c, $df07

    rlca
    rst $18
    rlca
    rst $38
    rlca
    ld a, [$be07]
    ld b, a
    cp $07
    ld a, [$9a07]
    rlca
    ld a, [$7e07]
    add a
    inc [hl]
    rst $08
    dec de
    db $e4
    ld sp, hl
    ldh [rNR41], a
    ld sp, hl
    and e
    ld sp, hl
    jp nc, $bbed

    call nz, $84fb
    db $eb
    sub h
    adc [hl]
    or c
    call nz, $c2bb
    cp l
    rst $08
    or b
    pop af
    and [hl]
    pop af
    xor d
    pop af
    rst $20
    di
    cp l
    ei
    rst $30
    ei
    and a
    di
    rst $28
    rst $38
    ret nz

    ld d, $c0
    or [hl]
    ld b, b
    cp [hl]
    ld b, c
    inc [hl]
    pop bc
    scf
    pop bc
    cp [hl]
    ld b, c
    cp l
    ld b, b
    cp a
    ld b, b
    or a
    ld b, b
    adc a
    ld [hl], b
    or c
    ld a, b
    xor a
    ld a, c
    ldh [$3f], a
    rst $20
    ccf
    ld h, e
    cp a
    and e
    ld a, a
    ld de, $1100
    nop
    cp c
    nop
    cp d
    ld bc, $03bc
    ld b, h
    ccf
    add c
    ld a, [hl]
    db $fd
    ld [bc], a
    db $ed
    ld [bc], a
    db $fd
    ld [bc], a
    ld bc, $0c06
    rlca
    inc c
    rlca
    rlca
    dec c
    push bc
    dec bc
    ld l, l
    inc bc
    ld l, h
    inc bc
    jr c, jr_068_7aab

    jr z, jr_068_7aad

    ld hl, $b30f
    rrca
    ld [hl], a

jr_068_7aab:
    adc a
    ld c, a

jr_068_7aad:
    ccf
    ld [$fc1f], a
    rra
    ldh [$1f], a
    call nz, $df3f
    ccf
    sbc a
    ld a, a
    inc de
    ld a, a
    add c
    ld a, a
    add e
    ld a, a
    adc a
    ld a, a
    adc a
    ld a, a
    adc h
    ld a, a
    ld b, $ff
    ld [bc], a
    rst $38
    add d
    ld a, a
    ld e, $ff
    adc [hl]
    ld a, a
    ld e, [hl]
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ccf
    rst $38
    cp a
    ld a, a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [de]
    db $fd
    ld [hl], $f9
    db $76
    ld sp, hl
    inc b
    ld sp, hl
    ld [bc], a
    db $fd
    ld h, d
    sbc l
    ld h, b
    sbc a
    ld h, h
    sbc a
    ret nz

    rst $38
    ldh [rIE], a
    or b
    rst $38
    db $10
    rst $38
    add a
    ld sp, hl
    dec [hl]
    swap l
    set 7, a
    db $eb
    rst $38
    rst $28
    rst $38
    rst $08
    rst $28
    sbc a
    rst $18
    xor a
    rst $18
    adc [hl]
    rst $08
    sbc $6f
    adc h
    ld h, c
    ld c, $b5
    ld a, [bc]
    ld a, l
    add d
    dec a
    jp nz, $c738

    cp b
    ld b, a
    cp e
    ld b, h
    ei
    inc b
    cp e
    ld b, h
    ld h, a
    sbc b
    ld h, e
    sbc h
    ld h, c
    sbc [hl]
    ld h, b
    sbc a
    ld h, b
    sbc a
    pop hl
    ld e, $e4
    dec de
    ld l, h
    inc de
    xor h
    ld d, e
    nop
    rst $38
    nop
    rst $38
    jr nz, @-$1f

    ld b, b
    ccf
    ld b, l
    ld a, [hl-]
    ld b, l
    ld a, [hl-]
    ld h, b
    sbc a
    add c
    rst $38
    ld bc, $81ff
    rst $38
    ld de, $01ff
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ld b, d
    db $fd
    ld h, d
    db $dd
    ld h, d
    db $dd
    ld b, h
    ei
    db $ed
    db $db
    dec l
    db $db
    db $fd
    set 7, l
    res 0, h
    db $eb
    inc d
    db $eb
    call nz, $dceb
    db $e3
    inc e
    db $e3
    ld e, $e1
    ld e, $e1
    ld d, h
    xor e
    sub h
    ld l, e
    ld h, b
    rst $38
    ld [c], a
    db $fd
    ld [c], a
    db $fd
    ld a, [c]
    db $ed
    db $e4
    rst $38
    db $e4
    rst $38
    db $ec
    rst $30
    add b
    ld a, a
    ret nz

    ccf
    call nz, $f13f
    rra
    ret nz

    ccf
    ld l, h
    inc de
    ld c, e
    scf
    ld b, a
    ccf
    ld d, a
    cpl
    ld d, a
    cpl
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    call c, Call_000_19ff
    rst $38
    db $10
    rst $38
    ld [bc], a
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
    rst $28
    rst $38
    add a
    rst $38
    ld b, $ff
    cp [hl]
    rst $38
    sbc [hl]
    rst $38
    cp $ff
    db $10
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld c, h
    rst $38
    ld a, b
    rst $38
    inc a
    rst $38
    ld a, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    ld b, d
    rst $38
    ld [bc], a
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld hl, $00ff
    rst $38
    ld bc, $09ff
    rst $30
    dec c
    di
    ld [$0cf7], sp
    di
    nop
    rst $38
    ld b, h
    cp e
    adc b

Jump_068_7bff:
    rst $30
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    adc l
    rst $38
    ld bc, $07ff
    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc e
    rst $38
    ld a, d
    db $fd
    ld a, d
    db $fd
    ld a, d
    db $fd
    ld [hl-], a
    db $fd
    ld hl, sp+$7f
    or d
    ld a, l
    or d
    ld a, l
    or d
    ld a, l
    ld a, [c]
    ld a, l
    ld [hl], d
    db $fd
    ld [hl-], a
    db $fd
    jr nc, @+$01

    ret nz

    ccf
    ret nz

    ccf
    ret nc

    ccf
    ret nc

    ccf
    ld b, [hl]
    ccf
    rst $00
    ccf
    add a
    ccf
    and a
    rra
    rst $28
    rra
    rst $18
    ccf
    cp a
    ld a, a
    ld a, e
    cp a
    push de
    dec sp
    push bc
    dec sp
    push de
    dec hl
    rst $20
    add hl, de
    ld b, l
    cp e
    ld b, a
    cp c
    add a
    ld a, c
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    rla
    jp hl


    ld b, a
    cp c
    jp Jump_000_053d


    rst $38
    adc h
    rst $38
    cp $ff
    ld a, [hl]
    rst $38
    ld l, [hl]
    rst $38
    ld l, $ff
    ld l, $ff
    ld [bc], a
    rst $38
    ld [de], a
    rst $28
    nop
    rst $38
    ld b, b
    rst $38
    ld l, b
    rst $30
    jr nc, @+$01

    ld a, $ff
    ld a, $ff
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, @+$01

    ld a, a
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
    ei
    rst $38
    cp $ff
    ld a, [c]
    rst $38
    di
    rst $38
    ld [c], a
    rst $38
    ld h, l
    rst $38
    rlca
    rst $38
    ld b, $ff
    ld c, $ff
    inc e
    rst $38
    ld c, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    rst $00
    rst $38
    jp $c3ff


    rst $38
    jp $a3ff


    rst $38
    inc bc
    rst $38
    rst $18
    rst $38
    set 7, a
    di
    rst $38
    rst $30
    rst $38
    db $e4
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
    ccf
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    rst $38
    ld bc, $3fff
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld b, a
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    inc c
    rst $38
    adc b
    rst $38
    add b
    rst $38
    ld bc, $09ff
    rst $38
    ld c, c
    rst $38
    ld c, [hl]
    rst $38
    ld b, a
    rst $38
    ld c, $ff
    ld c, $ff
    ccf

Call_068_7cff:
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, l
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, h
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    cp $ff
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, $ff
    ccf
    rst $38
    ccf
    rst $38
    ld a, l
    rst $38
    jr c, @+$01

    ld hl, $20ff
    rst $38
    jr nz, @+$01

    jr nc, @+$01

    db $10
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    db $f4
    rst $38
    db $f4
    rst $38
    db $fc
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    di
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    pop af
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    pop af
    rst $38
    ld sp, hl
    rst $38
    ld [hl], b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ret nz

    rst $38
    add b
    rst $38
    call nz, $c3ff
    rst $38
    jp Jump_068_41ff


    rst $38
    ld bc, $81ff
    rst $38
    pop bc
    rst $38
    ld b, c
    rst $38
    inc c
    rst $38
    ld [$18ff], sp
    rst $38
    jr @+$01

    ei
    rst $38
    rra
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ld a, h
    rst $38
    dec a
    rst $38
    ld a, c
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    or $ff
    and $ff
    rst $00
    rst $38
    rst $00
    rst $38
    add $ff
    db $ed
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld a, [$f6ff]
    rst $38
    db $f4
    rst $38
    db $ec
    rst $38
    ld hl, sp-$01
    db $fd
    rst $38
    cp $ff
    adc $ff
    adc [hl]
    rst $38
    sbc $ff
    add [hl]
    rst $38
    ld c, $ff
    ld l, $ff
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ei
    rst $38
    cp e
    rst $38
    or e
    rst $38
    daa
    rst $38
    rst $20
    rst $38
    xor $ff
    call z, Call_068_7cff
    rst $38
    or b
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop bc
    rst $38
    db $e3
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    db $fd
    ld a, [$fae5]
    ret nz

jr_068_7df3:
    rst $38
    add [hl]
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rla
    rst $38
    rra
    rst $38
    rla
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $10
    rst $38
    add a
    rst $38
    add e
    rst $38
    set 6, a
    adc a
    rst $30
    dec b
    rst $38
    daa
    rst $18
    rra
    rst $38
    ld e, h
    rst $38
    dec c
    cp $01
    cp $a0
    rst $18
    ldh [$df], a
    dec [hl]
    jp z, $cf30

    jr nc, jr_068_7df3

    ld a, [hl-]
    rst $00
    ld a, [hl-]
    rst $00
    scf
    rst $08
    rra
    rst $38
    cp $ff
    rst $38
    rst $38
    rlca
    rst $38
    ld h, e
    rst $18
    jp Jump_068_7bff


    rst $20
    ld h, c
    rst $38
    ld h, c
    rst $38
    ld h, b
    rst $38
    ld sp, $31ff
    rst $38
    ld [hl], e
    rst $38
    ld a, l
    rst $38
    ld a, b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], e
    db $fc
    ld a, d
    db $fd
    ld a, d
    db $fd
    ld a, b
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ret z

    rst $38
    ld [$0eff], sp
    rst $38
    ld c, $ff
    inc c
    rst $38
    inc c
    rst $38
    adc l
    rst $38
    sbc a
    rst $38
    adc [hl]
    rst $38
    sbc b
    rst $38
    adc l
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    sub a
    rst $38
    adc a
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $fbff
    rst $38
    ld a, [$f2ff]
    rst $38
    add d
    rst $38
    add h
    rst $38
    inc d
    rst $38
    sbc h
    rst $38
    cp b
    rst $38
    jr c, @+$01

    ld a, b
    rst $38
    ld sp, hl
    rst $38
    db $fd
    rst $38
    ld a, [$f0ff]
    rst $38
    add sp, -$09
    ld [hl], h
    rst $28
    ld b, b
    rst $38
    ld b, b
    rst $38
    add c
    rst $38
    ld bc, $83ff
    rst $38
    ld bc, $3aff
    rst $38
    ld [bc], a
    rst $38
    ld a, [bc]
    rst $38
    inc bc
    rst $38
    dec b
    rst $38
    ld [$03ff], sp
    db $fc
    ld bc, $06fc
    ld sp, hl
    dec b
    ld a, [$e41b]
    ld hl, $00fe
    rst $38
    adc d
    rst $38
    ld c, b
    cp a
    ld c, b
    cp a
    reti


    ccf
    sbc b
    ld a, a
    jr @+$01

    ld [$00ff], sp
    rst $38
    ld b, b
    cp a
    add d
    db $fd
    or d
    call $cdb2
    pop de
    rst $28
    add hl, bc
    rst $30
    dec hl
    rst $30
    rlca
    rst $38
    adc a
    ld a, a
    sbc a
    ld a, a
    ccf
    rst $38
    ld h, a
    rst $38
    rst $30
    rst $28
    db $db
    rst $20
    di
    rst $20
    jp hl


    rst $30
    db $ed
    di
    db $ec
    di
    and $f8
    rst $20
    ld hl, sp-$3a
    ld sp, hl
    add l
    ld a, [$ffc0]
    jp z, $c3f5

    db $fc
    and e
    db $fc
    and b
    ld a, a
    and b
    ld a, a
    and e
    ld a, h
    db $e3
    inc a
    jp hl


    ld [hl], $c8
    scf
    ld l, b
    or a
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    ld h, b
    rst $38
    ld c, b
    rst $30
    and e
    ld a, h
    dec b
    cp $05
    cp $07
    cp $86
    rst $38
    adc [hl]
    rst $38
    and c
    rst $18
    or b
    rst $08
    pop af
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, e
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
    sbc a
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38

jr_068_7f5c:
    ld [de], a
    rst $38
    inc bc
    rst $38
    ld bc, $12ff
    db $ed
    ld e, $e1
    inc c
    di
    ld [$01f7], sp
    rst $38
    inc bc
    rst $38
    add a
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
    rst $38
    rst $38
    pop af
    rst $38
    cp a
    rst $18
    cp [hl]
    rst $18
    ld a, [hl]
    sbc a
    ld e, [hl]
    cp a
    ld e, [hl]
    cp a
    inc e
    rst $38
    dec bc
    db $fd
    ld a, [de]
    db $fd
    inc d
    ei
    inc [hl]
    ei
    ld a, h
    di
    ld l, l
    ld a, [c]
    ld l, c
    or $28
    rst $30
    ld l, h
    or e
    ld e, a
    or b
    ld sp, hl
    jr nc, jr_068_7f5c

    ld [hl], b
    adc h
    ld [hl], e
    nop
    rst $38
    ld a, [de]
    push hl
    ld [$40e7], sp
    adc a
    ld b, b
    adc a
    cp a
    ld c, a
    sbc a
    cpl
    cp a
    rra
    rst $38
    ld b, $ff
    ld l, $de
    db $ec
    rst $38
    sbc h
    cp $bd
    cp $38
    db $fc
    jr c, jr_068_7fe2

    ld hl, sp+$1b
    db $fc
    dec c
    db $fc
    daa
    call c, $fc07
    or l
    ld a, [hl]
    inc h
    rst $38
    add [hl]
    ld a, a
    rlca

jr_068_7fd5:
    rst $38
    ld d, $ef
    ld d, $ef
    ld h, b
    adc a
    ld d, d
    adc l
    ld e, c
    add [hl]
    ld a, l
    add d

jr_068_7fe2:
    db $76
    add e
    ld [hl], h
    add e
    adc d
    di
    sub h
    ei
    nop
    rst $38
    jr jr_068_7fd5

    cp c
    add $9f
    ldh [$de], a
    pop hl
    db $fc
    jp $c3fd


    db $e4
    jp $c1de


    cp $c1
    pop af
    rst $08
