SECTION "ROM Bank $05c", ROMX[$4000], BANK[$5c]

Call_05c_4000:
    and b
    nop
    jr jr_05c_4004

jr_05c_4004:
    daa
    nop
    rst $20
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    ld e, $ff
    ld e, $ef
    sbc [hl]
    ld l, a
    ld c, $ff
    ld b, $ff
    ld b, $ff
    ld e, $e3
    sbc e
    ld [hl], a
    db $db
    scf
    ld [c], a
    dec e
    ld h, [hl]
    rst $18
    rst $38
    adc [hl]
    rst $38
    pop af
    rra
    ld hl, sp-$01
    ld a, [c]
    ld e, a
    ld c, b
    ld hl, sp+$47
    rst $38
    inc b
    rst $28
    ld h, d
    ld h, e
    cp [hl]
    db $fc
    ld a, h
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
    ld [bc], a
    nop
    ld b, $00
    ld b, $00
    ld b, $00
    ld b, $00
    ld b, $00
    ld c, $fe
    ld b, $ff
    ld c, $fe
    ld c, $ff
    ld c, $ff
    ld c, $ff
    ld c, $ff
    ld c, $ff
    ld c, $00
    inc c
    nop
    inc c
    nop
    inc c
    nop
    inc c
    nop
    inc c
    nop
    inc e
    nop
    inc e
    nop
    inc e
    nop
    inc e
    nop
    inc e
    nop
    inc e
    nop
    inc a
    nop
    inc a
    nop
    db $fc
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    dec h
    nop
    ld bc, $0000
    nop
    ld bc, $c000
    nop
    pop af
    nop
    xor e
    nop
    rst $18
    nop
    ccf
    nop
    rlca
    nop
    ld a, a
    nop
    cp a
    nop
    ld l, a
    nop
    ld e, h
    nop
    ldh [rP1], a
    ld b, b
    nop
    ld [hl], b
    nop
    stop
    nop
    nop
    nop
    nop
    ld [$0b00], sp
    nop
    inc sp
    nop
    dec e
    nop
    sub h
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
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
    ccf
    nop
    rrca
    nop
    add [hl]
    nop
    rst $38
    nop
    jr nc, jr_05c_40d0

jr_05c_40d0:
    ei
    nop
    rra
    nop
    cp e
    nop
    rst $38
    nop
    rst $18
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
    ld bc, $00fe
    rst $38
    ld b, $f9
    ld c, $f7
    ld bc, $70f8
    ld sp, hl
    cp d
    pop bc
    dec sp
    ld a, [$f2b2]
    pop af
    and c
    pop af
    ld b, b
    inc de
    db $e3
    pop af
    nop
    ldh a, [rSB]
    ld [de], a
    pop hl
    db $f4
    inc de
    ret c

    scf
    ldh a, [$ef]
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
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
    jr nz, jr_05c_413f

    jr nz, jr_05c_4141

    jr nz, jr_05c_4143

    jr nz, jr_05c_4145

    jr nz, jr_05c_4147

    jr nz, jr_05c_4149

    jr nz, jr_05c_414b

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
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b

jr_05c_413f:
    ccf
    ld b, b

jr_05c_4141:
    ccf
    ld b, b

jr_05c_4143:
    ccf
    ld b, b

jr_05c_4145:
    ccf
    ld b, b

jr_05c_4147:
    ccf
    nop

jr_05c_4149:
    ld a, a
    nop

jr_05c_414b:
    ld a, a
    ld bc, $807e
    ld a, a
    add c
    ld a, [hl]
    pop hl
    ld e, $f1
    ld c, $c1
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
    rra
    nop
    ld a, a
    nop
    ld [hl], e
    nop
    dec b
    nop
    ld a, $00
    ld a, $00
    ccf
    nop
    cp e
    nop
    inc e
    nop
    ld a, [bc]
    nop
    db $e3
    nop

jr_05c_4186:
    ld hl, sp+$00

jr_05c_4188:
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
    nop
    jr jr_05c_419c

jr_05c_419c:
    rst $38
    nop
    rst $38
    nop
    inc bc
    db $fc
    add a
    ld a, b
    rst $08
    jr nc, jr_05c_4186

    jr nz, jr_05c_4188

    jr nz, @+$01

    nop
    cp $00
    ld a, [hl]
    add b
    sbc $20
    cp $00
    cp $00
    cp $00
    sbc [hl]
    ld h, b
    ld e, $e0
    ld e, $e0
    ld a, $c0
    ld e, $e0
    inc a
    ret nz

    inc e
    ldh [$3c], a
    ret nz

    inc a
    ret nz

    inc a
    ret nz

    inc a
    ret nz

    inc a
    ret nz

    ret nz

    db $fc
    ret nz

    db $fc
    ret nz

    db $fc
    add b
    db $fc
    ret nz

    ld hl, sp-$3f
    ld hl, sp-$7f
    ld hl, sp-$7f
    ld hl, sp-$7f
    ld hl, sp-$7d
    ld hl, sp-$7d
    ld hl, sp-$7d
    ld hl, sp-$7d
    ld hl, sp-$7d
    ld hl, sp-$7d
    ld hl, sp-$7d
    ld hl, sp+$70
    add b
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
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
    di
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    sbc a
    nop
    ld a, [$1400]
    nop
    add b
    nop
    di
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp b
    nop
    rst $38
    nop
    db $fd
    nop
    cp $01
    cp $01
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    pop hl
    rra
    pop hl
    rra
    pop hl
    rra
    pop bc
    ccf
    pop bc
    ccf
    pop bc
    ccf
    pop bc
    ccf
    add c
    ld a, a
    add c
    ld a, a
    ld a, [hl]
    ld bc, $03fe
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fd
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
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
    inc bc
    inc b
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    ld b, $01
    rlca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    dec bc
    inc b
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
    rla
    ld [$001f], sp
    rla
    ld [$001f], sp
    rla
    ld [$0817], sp
    rrca
    db $10
    rra
    nop
    ccf
    nop
    rra
    jr nz, jr_05c_4313

    ld de, $201f
    rra
    jr nz, @-$0f

    db $10
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    cp a
    nop
    sbc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    db $fd
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a

jr_05c_4313:
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
    rst $18
    jr nz, @+$01

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
    rst $38
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
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    inc c
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0c0c
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_05c_43c7

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f

jr_05c_43b4:
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_05c_43e7

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_05c_43f7

    ld [hl-], a

jr_05c_43c7:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_05c_4406

    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    cpl
    cpl
    cpl
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    jr c, jr_05c_4416

    jr c, jr_05c_4418

    ld b, h
    ld b, l
    ld b, [hl]
    cpl
    cpl
    cpl
    ld b, a

jr_05c_43e7:
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    jr c, jr_05c_4426

    jr c, jr_05c_443d

    ld c, [hl]
    ld c, a

jr_05c_43f2:
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h

jr_05c_43f7:
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
    ld h, e

jr_05c_4406:
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d

jr_05c_440d:
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    jr c, @+$3a

    ld [hl], c

jr_05c_4416:
    ld [hl], d
    ld [hl], e

jr_05c_4418:
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
    jr c, jr_05c_4497

jr_05c_4426:
    add b
    add c
    add d
    add e
    add h
    add l
    jr c, jr_05c_43b4

    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    jr c, @-$71

    adc [hl]
    adc a
    sub b
    sub c
    sub d
    jr c, jr_05c_4475

jr_05c_443d:
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    ld [hl], c
    sbc e
    sbc h

jr_05c_4448:
    sbc l
    sbc [hl]
    sbc a
    and b
    jr c, @-$5d

    jr c, jr_05c_43f2

jr_05c_4450:
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
    jr c, jr_05c_440d

    or b
    or c

jr_05c_4460:
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
    jr c, jr_05c_44a5

    cp l
    xor [hl]
    cp [hl]
    cp a
    ret nz

    pop bc
    jr c, jr_05c_44ad

jr_05c_4475:
    jp nz, $c4c3

    jr c, jr_05c_44b2

    push bc
    jr c, jr_05c_44b5

    add $38
    jr c, jr_05c_4448

    ret z

    ret


    jr c, @+$3a

    jp z, $cccb

    call $ce38
    jr c, jr_05c_44c5

    rst $08
    jr c, jr_05c_4460

    pop de
    jp nc, $d4d3

    push de
    sub $d7

jr_05c_4497:
    ret c

    reti


    jp c, $38db

    jr c, jr_05c_44d6

    jr c, jr_05c_4450

    call c, $dedd
    rst $18
    cpl

jr_05c_44a5:
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    jr c, jr_05c_44e5

jr_05c_44ad:
    jr c, jr_05c_44e7

    or b
    and $e7

jr_05c_44b2:
    add sp, $2f
    cpl

jr_05c_44b5:
    jp hl


    ld [$eceb], a
    db $ed
    xor $ef
    jr c, jr_05c_44f6

    jr c, @+$3a

    ld a, h
    ldh a, [$f1]
    ld a, [c]
    di

jr_05c_44c5:
    db $f4
    push af
    or $38
    rst $30
    ld hl, sp-$52
    ld sp, hl
    jr c, jr_05c_4507

    jr c, jr_05c_44d1

jr_05c_44d1:
    nop
    nop
    nop
    nop
    nop

jr_05c_44d6:
    nop
    ld bc, $0707
    rlca
    nop
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    nop
    nop

jr_05c_44e5:
    nop
    nop

jr_05c_44e7:
    ld bc, $0107
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

jr_05c_44f6:
    nop
    ld bc, $0107
    rlca
    rlca
    ld bc, $0007
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_05c_4507:
    ld bc, $0707
    nop
    nop
    nop
    nop
    rlca
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
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
    ld bc, $0707
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    nop
    nop
    nop
    nop
    ld bc, $0607
    nop
    rlca
    ld bc, $0606
    nop
    nop
    ld b, $06
    nop
    nop
    ld bc, $0300
    inc bc
    ld bc, $0606
    ld b, $06
    ld b, $06
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld bc, $0003
    nop
    ld bc, $0000
    ld b, $06
    ld bc, $0000
    nop
    nop
    inc bc
    inc bc
    nop
    inc bc
    nop
    ld bc, $0301
    nop
    ld b, $06
    ld bc, $0100
    nop
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    ld bc, $0300
    nop
    ld b, $06
    ld bc, $0001
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    ld bc, $0300
    nop
    ld b, $06
    ld bc, $0001
    nop
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    ld bc, $0300
    nop
    ld b, $07
    ld bc, $0000
    nop
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    ld bc, $0040
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    inc bc
    nop
    nop
    inc bc
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    inc bc
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
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
    ld bc, $0001
    inc bc
    nop
    nop
    nop
    nop
    jr nz, jr_05c_45f1

jr_05c_45f1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop

jr_05c_45fd:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $4000
    nop
    nop
    nop
    nop
    adc d
    ld [hl], l
    adc a
    ld [hl], b
    db $dd
    ld [hl+], a
    or h
    set 0, b
    ccf
    ret nz

    ccf
    jr nz, jr_05c_45fd

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $81ff
    rst $38
    add e
    db $fc
    rst $38
    nop
    rst $38
    nop
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld a, b
    add a
    ld a, h
    add e
    ld a, h
    add e
    ld a, h
    add e
    ld a, h
    add e
    inc a
    jp $c13e


    ld a, $c1
    ld a, $c1
    ld e, $e1
    ld e, $e1
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$0e], a
    pop af
    rra
    ldh [$7f], a
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
    cp $fb
    db $fc
    ld a, [c]
    db $fc
    adc $30
    jp $a03c


    ld a, a
    ld a, [hl+]
    pop af
    nop
    pop hl
    ld b, c
    di
    inc b
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
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
    db $fd
    inc bc
    ld de, $810e
    ld a, [hl]
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
    nop
    rst $38
    nop
    rst $38
    nop

jr_05c_46d5:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_05c_46dd:
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    ei
    ei
    pop af
    di
    pop af
    push af
    db $e3
    inc b
    db $e3
    nop
    rst $00
    rst $38
    nop
    ld a, [hl]
    add c
    jr nz, jr_05c_46d5

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_05c_46dd

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld b, d
    cp l
    ld [c], a
    db $dd
    ld hl, $f9de
    ld b, $e5
    ld a, [de]
    inc bc
    db $fc
    dec b
    ld a, [$fe01]
    ld bc, $01fe
    cp $02
    db $fd
    ld bc, $02fe
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
    rst $38
    call nc, $ff2b
    nop
    rst $38
    nop
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
    db $fd
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $08
    ccf
    rlca
    rrca
    rlca
    rlca
    ld [bc], a
    nop
    ret nz

    inc bc
    inc a
    jp $f708


    ldh [rIE], a
    or b
    rst $38
    ld b, b
    cp a
    ret c

jr_05c_475f:
    rst $20
    ei
    rst $30
    ei
    ld sp, hl
    ld [hl], c
    ld hl, sp-$30
    jr nc, @-$0e

    nop
    ldh [rP1], a
    ldh [rP1], a
    ld [hl], b
    add b
    ld a, b
    add b
    dec a
    ret nz

    inc e
    pop hl
    jr jr_05c_475f

    nop
    rst $38
    jr @+$01

    ld a, b
    rst $38
    ld hl, sp-$01
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    cp $00
    db $fc
    nop
    cp $00
    ld a, [hl]
    add b
    cp $00
    ld a, [hl]
    add b
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$3f], a
    ret nz

    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$0f
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$06
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
    rst $38
    nop
    rst $38
    ld bc, $06fe
    ld hl, sp+$18
    ldh [rSVBK], a
    add b
    ldh [rP1], a
    nop
    nop
    di
    inc c
    ld a, [hl]
    add c
    ld e, $e1
    inc e
    db $e3
    nop
    rst $38
    rra
    rst $30
    rra
    rst $38
    rra
    xor $0f
    ld sp, hl
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    ld [$1ef7], sp
    rst $38
    rra
    rst $28
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [hl], a
    adc b
    ld a, a
    add b
    ld e, a
    and b
    ld a, a
    add b
    ccf
    ret nz

    scf
    ret z

    ld c, a
    or b
    rra
    ldh [$3f], a
    ret nz

    dec de
    db $e4
    ld e, $e1
    rla
    add sp, $17
    add sp, $0f
    ldh a, [$03]
    db $fc
    ld h, $d9
    inc bc
    db $fc
    inc bc
    db $fc
    dec b
    ld a, [$fc03]
    add hl, bc
    or $02
    db $fd
    ld bc, $02fe
    db $fd
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    db $eb
    rst $38
    rra
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp hl


    rst $18
    ret nc

    cpl
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    ccf
    rst $08
    ld d, d
    adc l
    ld h, b
    sbc h
    ld a, a
    cp $01
    rst $38
    add hl, de
    rst $20
    rst $30
    rrca
    ld a, e
    rlca
    rlca
    ccf
    rlca
    ccf
    ld a, a
    nop
    ld a, $01
    cp a
    rra
    rst $18
    rra
    rst $18
    rra
    rst $08
    rra
    rst $18
    rrca
    rst $18
    rrca

jr_05c_487e:
    rst $28
    rrca

jr_05c_4880:
    rst $28
    rrca
    rst $20
    rrca
    rst $28
    rlca
    add sp, $07
    di
    inc b
    di
    nop
    di
    nop
    di
    nop
    inc c
    di
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    ld b, $f9
    add d
    db $fd
    add d
    db $fd
    ld a, l
    add b
    ld a, l
    add b
    dec a
    ret nz

    dec a
    ret nz

    dec a
    ret nz

    dec a
    ret nz

    dec e
    ldh [rNR32], a
    db $e4
    ld a, [$f404]
    inc bc
    jp nz, $a321

    ld b, b
    ld sp, $30c0
    ret nz

    jr nz, jr_05c_487e

    jr nz, jr_05c_4880

    ld b, b
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
    nop
    nop
    db $f4
    dec bc
    ret nz

    ccf
    ld [hl], e
    adc h
    ld a, l
    ei
    ld a, e
    cp $ff
    db $fc
    dec c
    or $22
    db $dd
    ld c, $fd
    ccf
    ret nz

    ld a, a
    sbc h
    or [hl]
    ld a, l
    cp a
    ld b, b
    inc c
    ei
    ret c

    rst $20
    rst $18
    jr nz, jr_05c_4939

    or a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    cp a
    ld b, b
    rst $38
    nop
    ld [hl], b
    adc a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_05c_4939:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    set 6, a
    or c
    ret nz

    db $10
    ldh [rP1], a
    ldh [$34], a
    ret nz

    rlca
    ld hl, sp-$1f
    sbc [hl]
    adc [hl]
    rrca
    adc e
    rra
    xor $df
    reti


    cp $4e

jr_05c_495f:
    ld hl, sp-$61
    ld [hl], b
    ld [hl], l
    ld hl, sp-$06
    db $fc
    ld hl, sp-$04
    db $fc
    ld hl, sp-$0c
    ld hl, sp+$70
    add b
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38

jr_05c_4987:
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
    ld a, a
    nop
    sbc a
    nop
    xor a
    ret nz

    rst $30
    ldh [rNR44], a

jr_05c_49a9:
    ldh a, [rNR13]
    ldh a, [$83]
    ld [hl], b
    db $e3
    stop
    rst $30
    ld [$08e7], sp
    rst $20
    jr nz, jr_05c_4987

    db $10
    rst $08
    db $10
    rst $08
    ld h, b
    sbc a
    jr nz, jr_05c_495f

    jr jr_05c_49a9

    ld e, d
    and l
    ld e, [hl]
    and c
    ld d, $e9
    ret nc

    ld a, a
    ldh [$3f], a
    ld de, $03ee
    db $fd
    nop
    rst $38
    rst $38
    nop
    ld [hl], a
    adc [hl]
    ld [hl], l
    adc e
    rst $38
    ld bc, $9b67
    ld h, a
    sbc a
    rst $38
    ld b, $6f
    sub a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    cp $00
    cp [hl]
    nop
    db $fd
    cp $fb
    db $fd
    rst $38
    ei
    rst $30
    ei
    rst $28
    rst $30
    rst $30
    rst $28
    ld d, a
    rst $28
    db $fc
    ld e, a
    sbc d
    ld a, a
    cp b
    ld a, a
    ld [hl], b
    rst $38
    ldh a, [rIE]
    cp b
    rst $38
    jr nc, @+$01

    ld [hl], b
    rst $38
    ld a, b
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
    rst $38
    nop
    ldh [$1f], a
    cp $01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    adc b
    ld [hl], a
    add c
    ld a, [hl]
    ret


    ld [hl], $ff
    push bc
    xor $f5
    add a
    ld a, [$fdc2]
    ld b, c
    cp $40
    rst $38
    dec a
    db $fc
    rra
    rst $38
    rra
    rst $38
    add sp, -$18
    pop af
    rst $38
    rst $30
    rst $38
    db $dd
    rst $38
    db $ed
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
    nop
    rst $38
    nop
    jr z, @-$27

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
    inc e
    nop
    ccf
    nop
    rst $30
    rst $38
    cp e
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    di
    db $fc
    di
    db $fc
    ldh a, [$fe]
    sbc b
    cp $d1
    ld a, $d8
    ccf
    call c, $9438
    ld a, b
    db $ec
    ld a, [hl]
    xor [hl]
    ld a, a
    rst $00
    cpl
    call nc, $e323
    rra
    add $3f
    adc h
    ld a, a
    rst $08
    ccf
    rst $08
    ccf
    pop bc
    ld a, $38
    nop
    rst $38
    nop
    cp b
    ld b, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cpl
    ret nc

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
    ld bc, $0100
    nop
    ld d, [hl]
    xor c
    rst $18
    jr nz, jr_05c_4b33

    pop bc
    ld [c], a
    sbc l
    pop bc
    ccf
    add c
    rst $38
    add b
    ld a, a
    sub b
    ld a, a
    nop
    rst $38
    rst $38
    nop
    jp nz, $fafb

    ld sp, hl
    ei
    nop
    ld a, [$f3f9]
    ld sp, hl
    ld h, l
    ld b, b
    rst $38
    ld sp, hl
    ld [bc], a
    ld sp, hl
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
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
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

jr_05c_4b33:
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
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    sbc a
    ld h, b
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add a
    nop
    rst $38
    nop
    ei
    inc b
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38

jr_05c_4b67:
    rst $38
    rst $18
    ccf
    ld c, $1f
    inc e
    rrca
    ld c, b
    rrca
    rst $08
    nop
    rst $18
    nop
    cpl
    ret nc

    dec c
    ld a, [c]
    call z, $e7f3
    ld hl, sp+$5e
    pop hl
    jr jr_05c_4b67

    nop
    rst $38
    add hl, sp
    ret nz

    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    add b
    nop
    nop
    nop
    rst $38
    ld b, $01
    cp $01
    cp $01
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $fe

jr_05c_4ba1:
    rst $38
    rst $38
    cp $01
    cp $1c
    ld [c], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    cp $00
    cp $00
    ld b, $fc
    dec b
    db $fc
    inc b
    db $fc
    rlca
    db $fc
    ld [$0afc], sp
    db $fc
    ld c, $f9
    dec bc
    ld hl, sp-$10
    ld [$01f9], sp
    ld [$ef13], a
    inc de
    and $16
    rst $28
    rla
    db $eb
    dec de
    ret nc

    jr nz, jr_05c_4ba1

    jr nz, @-$3b

    ld hl, $23c3
    rst $00
    inc hl
    sbc c
    ld h, c
    sbc a
    ld a, a
    adc a
    ld a, e
    cp [hl]
    ld a, a
    daa
    ld e, a
    ld a, a
    ccf
    rst $38
    dec sp
    rst $28
    ld h, e
    rst $38
    ld a, h
    ei
    ld [hl], a
    cp d
    ld [hl], $bf
    ccf
    ld a, a
    add b
    rst $18
    jr nz, jr_05c_4c73

    add c
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    cp a
    sbc a
    push af
    rra
    rst $28
    ld c, $ff
    ldh a, [rP1]
    ld b, b
    rst $38
    nop
    rst $38
    rst $38
    nop
    ld bc, $03ff
    rst $38
    ld a, [$0700]
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
    cp a
    nop
    rst $38
    nop
    nop
    nop
    stop
    stop
    stop
    stop
    nop
    nop
    stop
    nop
    nop
    stop
    nop
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
    ld [$0800], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld a, [bc]
    db $fd
    inc c
    rst $38
    ld [$0eff], sp
    rst $38
    rrca
    rst $38
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
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    rst $38
    scf
    ld a, a
    pop hl
    ld a, a
    call nz, Call_05c_57f8
    ldh a, [$3f]
    rst $38
    ld h, b
    rst $38

jr_05c_4c73:
    ld b, b
    cp a
    ld b, b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec de
    db $e4
    ccf
    ret nz

    add b
    rst $38
    nop
    ld a, a
    jr z, jr_05c_4cc6

    inc bc
    rlca
    ld d, l
    inc bc
    ld a, h
    add c
    ld [hl], d
    add c
    ld hl, $93c0
    nop
    cp l
    inc e
    sbc [hl]
    inc a
    ld e, h
    ccf
    scf
    scf
    ld de, $ca10
    ld [$0024], sp
    call nz, Call_000_2200
    nop
    add b
    nop
    adc d
    nop
    ld d, $0f
    sub c
    rrca
    ld e, l
    rrca
    inc bc
    inc bc
    or e
    inc bc
    inc b
    nop
    ld c, [hl]
    ld c, $16
    ld c, $12
    ld c, $2a
    ld e, $fc
    inc e
    cp $6e
    add b
    nop
    and h
    nop
    ld h, b
    ld h, b

jr_05c_4cc6:
    ret nc

    nop
    add sp, -$30
    ret z

    ld a, b
    db $ec
    cp h
    ret z

    ld hl, sp-$07
    ld sp, hl
    ld sp, hl
    cp b
    push af
    or b
    ld [hl], c
    ld [hl], b
    pop hl
    and b
    jp hl


    ldh [$6d], a
    ldh a, [rPCM34]
    ld hl, sp+$58
    ld a, c
    db $d3
    ldh a, [$fb]
    ldh a, [$db]
    ldh a, [$36]
    pop hl
    ld h, d
    pop hl
    jp z, $82c1

    add c
    rst $38
    nop
    cp $21
    db $fc
    inc bc
    db $fc
    ei
    ld hl, sp-$01
    call c, $8eff
    ld a, a
    ret nz

    ccf
    nop
    rst $38
    nop
    nop
    inc c
    rst $38
    inc c
    rst $38
    jr nz, jr_05c_4d0a

jr_05c_4d0a:
    add $ff
    rst $38
    rst $38

jr_05c_4d0e:
    jp hl


    nop
    rst $38
    sbc $ff
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld e, a
    and b
    rst $38
    nop
    db $fc
    nop
    rst $38
    nop
    jp $e100


    nop
    cp $00
    cp $00
    inc bc
    db $fc
    nop
    rst $38
    dec c
    ld a, [c]
    rst $38
    cp $f8
    daa

jr_05c_4d4a:
    rst $00
    cp b

jr_05c_4d4c:
    rrca
    ldh a, [$1f]
    ldh [$cf], a
    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    ld bc, $837f
    ld a, a
    add e
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rra
    db $e3
    rst $18
    jr nz, @-$1f

    jr nz, jr_05c_4d4a

    jr nz, jr_05c_4d4c

    jr nz, jr_05c_4d0e

    ld h, b
    push af
    ld a, a
    or a
    ld a, a
    cp a
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $28
    ld a, a
    sbc a
    ld l, a
    cp a
    ld e, a
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    cp a
    ld b, b
    ret nz

    ret nz

    ret nc

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    nop
    ret nz

    nop
    ret nz

    add b
    ret nz

    add b
    ret nz

    nop
    ret nz

    nop
    ret nz

    ld b, b
    add b
    nop
    ret nz

    nop
    add b
    nop
    pop bc
    nop
    add b
    nop
    rst $38
    add b
    add a
    rst $38
    rst $00
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $08
    rst $38
    and [hl]
    rst $38
    rst $20
    rst $38
    adc [hl]
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
    add b
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
    nop
    add b
    ccf
    nop
    ccf
    nop
    nop
    add l
    ccf
    dec sp
    jr nc, jr_05c_4e2e

    nop

jr_05c_4df0:
    add l
    ccf
    and l
    jr jr_05c_4df0

    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    cp $00
    cp $00
    nop
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    rrca
    nop
    rra
    nop
    db $fc
    nop
    ld [$7800], sp
    nop
    ld b, b
    nop
    nop
    nop
    add b
    nop
    ld b, b
    nop
    inc b
    nop
    cp $00
    ld c, $00
    inc b
    nop

jr_05c_4e2e:
    nop
    nop
    rst $38
    inc bc
    rst $38
    rra
    rst $38
    ld h, b
    rst $30
    ret z

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
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    jr c, @+$01

    rra
    rst $38
    inc bc
    add e
    ld a, h
    ld hl, sp+$00
    cp $00
    rst $38
    nop
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    rst $38

jr_05c_4e7b:
    rst $38
    rst $38
    rst $38
    rra
    ldh [$f7], a
    rra
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
    jp c, $deff

    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    call c, $112b
    cp $13
    xor $77
    sbc [hl]
    db $10
    rst $38
    jr nc, jr_05c_4e7b

    ld b, b
    cp a
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
    ld [$c300], sp
    rst $38
    ld a, l
    nop
    dec l
    nop
    rst $30
    rst $38
    rst $38
    nop
    sbc d
    nop
    ld h, l
    nop
    ld a, d
    nop
    rst $18
    nop
    xor e
    nop
    db $fd
    nop
    sub c
    ld l, [hl]
    ld b, d
    cp l
    dec h
    jp c, $ef10

    ld bc, $80fe
    ld a, a
    nop
    rst $38
    inc b
    ei
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
    rst $38
    rst $38
    rst $38
    nop
    ei
    nop
    cp b
    nop
    ld a, [de]
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
    db $fd
    ld [bc], a
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    ccf
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
    ldh [rIE], a
    rst $38
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld hl, sp-$01
    ccf
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
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    add hl, bc
    rst $38
    or c
    rst $38
    add l
    rst $38
    ldh [rIE], a
    nop
    rst $38
    rst $38
    nop
    cp $00
    db $fc
    nop
    db $fc
    nop
    ld a, [$f800]
    nop
    add b
    nop
    nop

jr_05c_4f5d:
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
    ccf
    rst $38
    nop
    ld a, a
    rst $38
    ld a, [hl]
    cp l
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_05c_4f5d

    ld b, b
    rst $38
    nop
    rst $38
    nop
    nop
    db $10
    rst $20
    db $10
    rst $20
    inc bc
    nop
    sub b
    rst $20
    rst $20
    nop
    ld h, [hl]
    nop
    sub b
    rst $20
    rst $18
    jr nz, jr_05c_4f9f

    nop
    dec l
    nop
    sub [hl]
    nop
    ld e, d
    nop
    xor e
    nop
    ld d, l

jr_05c_4f9f:
    nop
    inc de
    db $ec
    ld c, b
    or a
    dec h
    jp c, $f708

    ld c, b
    or a
    ld [de], a
    db $ed
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
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    ccf
    nop
    ccf
    nop
    rrca
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld h, b
    sbc a
    rst $38
    nop
    inc a
    jp $ef10


    db $fc
    rst $38
    add e
    ld a, a
    rst $38
    ld bc, $01ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_05c_5009

jr_05c_5009:
    rst $38
    rst $38
    nop
    rst $38
    nop
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
    dec b
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    jr nc, @+$01

    ld bc, $fefe
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
    ccf
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    push af
    ei
    ld a, l
    add hl, sp
    rst $38
    inc hl
    rst $18
    ld a, a
    rst $38
    ld a, h
    rst $38
    ld a, e
    db $fc
    jr z, @+$01

    ld [bc], a
    nop
    ld bc, $43ff
    rst $38
    rra
    nop
    and b
    rst $38
    add sp, $00
    pop hl
    dec b
    ld a, b
    rst $38
    rst $38
    nop
    ld c, c
    nop
    or l
    nop
    jp c, Jump_05c_5700

    nop
    dec l
    nop
    or l
    nop
    jr nz, @-$1f

    add b
    ld a, a
    ld d, d
    xor l
    nop
    rst $38
    ld d, h
    xor e
    nop
    rst $38
    db $10
    rst $28
    nop
    rst $38
    ld hl, $00de
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    nop
    nop
    jp z, $fb35

    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    and a
    nop
    dec de
    nop
    ld b, $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rrca
    pop af
    rra
    ldh [rTAC], a
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    db $f4
    ei
    rst $38
    adc [hl]
    rst $38
    pop bc
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    jr nc, @+$01

    jr c, @+$01

    jr c, @+$01

    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    rrca
    rst $38
    ld a, a
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    cp $00
    nop
    nop
    nop
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

jr_05c_50f8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    rst $38
    rst $38
    nop
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
    ld bc, $0000
    nop
    rst $38
    nop
    rst $38
    nop
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
    ldh [$f0], a
    rrca
    ret nc

    rst $28
    sub d
    ld a, a
    reti


    cp $fd
    jp z, $fbf6

    ld hl, sp+$47
    ld h, b
    cp a
    ld b, b
    rst $38
    ld a, a
    nop
    db $e3
    cp $4b
    db $fc
    rst $38
    nop
    inc bc
    db $fc
    di
    db $fc
    add c
    db $fc
    xor [hl]
    db $fc
    jp $df3c


    jr nz, jr_05c_51b6

    jr nz, jr_05c_50f8

    jr nz, @+$61

    jr nz, jr_05c_51bc

    jr nz, @+$61

    jr nz, jr_05c_5181

    rst $38
    and b
    ld a, a
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
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
    ld b, b
    nop
    ld b, b
    nop
    ld b, b

jr_05c_5181:
    nop
    ld b, b
    nop
    ld b, b
    nop
    ret nz

    nop
    add b
    nop
    add b
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
    rst $30
    nop
    jr nz, jr_05c_519a

jr_05c_519a:
    ld d, e
    nop
    ld b, b
    nop
    nop
    nop
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rra
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
    ret nz

jr_05c_51b6:
    rst $38
    ld [hl], b
    rst $38
    jr c, @+$01

    inc c

jr_05c_51bc:
    rst $38
    ld c, $ff
    ld c, $ff
    ld c, $ff
    ld c, $ff
    inc e
    rst $38
    jr @+$01

    ld [hl], b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    nop
    nop
    nop
    nop
    nop
    jr c, jr_05c_51d6

jr_05c_51d6:
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp-$01
    nop
    nop
    rst $38
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
    call nz, $d43b
    ld l, e
    call nc, Call_05c_567b
    cp l
    ld c, $ff
    ld a, [bc]
    db $fd
    inc e
    db $eb
    add hl, sp
    sbc $08
    rst $38
    xor e
    cpl
    ld b, e
    rst $38
    rlca
    rst $38
    and [hl]
    add a
    cp $ff
    ld c, $0f
    rst $38
    rst $38
    rst $38
    db $db
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    push de
    ld a, [hl+]
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
    ld a, a
    nop
    rst $38
    nop
    ccf
    nop
    ld h, b
    sbc a
    ld [c], a
    dec e
    ld sp, hl
    ld b, $f8
    rst $20
    cp $11
    rst $38
    ld hl, sp-$01
    db $ec
    rst $38
    ld a, [bc]
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
    nop
    rst $38
    inc bc
    rst $38
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
    nop
    ldh [$1f], a
    nop
    rst $38
    ld b, e
    cp h
    rrca
    db $fc
    dec e
    db $eb
    rst $38
    ld e, l
    db $76
    ld sp, hl
    ld a, [$2825]
    rst $18
    dec de
    db $f4
    ld [hl-], a
    rst $08
    rst $38
    ld d, b
    ld sp, hl
    cp $ff
    ei
    rst $38
    rst $18
    ld a, a
    rst $38
    rst $38
    db $fc
    rst $38
    ld a, a
    ld a, a
    cp a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0500
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
    rst $30
    rst $38
    ld bc, $fcfe
    rst $38
    ld a, [$ffff]
    rst $38
    rst $38
    nop
    ret c

    nop
    rst $38
    nop
    db $fd
    nop
    add b
    nop
    ret nz

    nop
    ld h, b
    nop
    jr nz, jr_05c_52e0

jr_05c_52e0:
    jr jr_05c_52e2

jr_05c_52e2:
    ld [$0400], sp
    nop
    ld [bc], a
    nop
    ld bc, $5000
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld b, $0f
    db $f4
    rst $38
    jr c, @+$01

    di
    rst $38
    rst $20
    rst $38
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
    cp $01
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or d
    ld c, l
    rst $38
    db $dd
    db $db
    rst $30
    rla
    rst $28
    ld c, [hl]
    cp a
    rrca
    rst $38
    dec c
    ld a, [c]
    nop
    rst $38
    ld bc, $f5fe
    ld a, [bc]
    db $e4
    ccf
    xor $15
    db $f4
    dec bc
    ret nz

    ccf
    ldh a, [rIF]
    ret nz

    ccf
    ret nz

    ccf
    nop
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
    ld bc, $0700
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
    rra
    db $10
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rst $18
    nop
    ccf
    nop
    ld e, a
    nop
    ld a, a
    nop
    ld a, a
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
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp d
    ld a, a
    rst $38
    sbc a
    ld e, [hl]
    rst $28
    dec hl
    rst $30
    ld b, l
    ei
    cp $fd
    dec c
    cp $00
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

jr_05c_53a8:
    nop
    nop
    add b
    nop
    ld b, b
    nop
    jr nz, jr_05c_53b0

jr_05c_53b0:
    rst $28
    db $10
    rst $20
    jr jr_05c_53a8

    inc c
    ld hl, sp+$07
    db $fc
    ld b, e
    cp $61
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    adc h
    rst $38
    sbc h
    cp $33
    rst $38
    inc bc
    rst $38
    rst $00
    rst $38
    add b
    rst $38
    rra
    rst $38
    ld a, h
    rst $38
    nop
    ld a, a
    db $fd
    rst $38
    ld a, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fc
    ei
    db $fd
    cp $fe
    ld sp, hl
    ld h, b
    sbc a
    ld hl, sp+$67
    ld [bc], a
    db $fd
    ld [de], a
    db $fd
    ld a, [de]
    rst $38
    inc c
    ei
    ld a, a
    rst $38
    rst $38
    ei
    rla
    nop
    ld bc, $0f00
    inc b
    rla
    nop
    dec bc
    nop
    ld b, $00
    rrca
    nop
    scf
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
    rst $38

jr_05c_541b:
    nop
    adc e
    ld [hl], h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    ei
    nop
    cp [hl]
    nop
    ld d, a
    nop
    dec sp
    nop
    xor l
    nop
    db $fd
    rst $38
    db $dd
    rst $38
    rst $38
    rst $38
    and b
    ld a, a
    ld b, b
    cp a
    jr nz, jr_05c_541b

    db $10
    rst $28
    inc c
    di
    add d
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
    ld h, b
    nop
    db $fc
    nop
    rst $38
    nop
    ld a, a
    nop
    ret nz

    rra
    ret nz

    cpl
    nop
    rst $38
    ei
    inc b
    db $fd
    add d
    cp $c1
    rst $38

jr_05c_546d:
    ldh [rIE], a
    ld b, b
    ld a, a
    add b
    db $fc
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    ld hl, sp-$49
    cp h
    ld a, e
    ld a, [hl-]
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ldh [$5f], a
    ld b, b
    cp a
    ld l, h
    rst $10
    jr nz, jr_05c_546d

    res 6, h
    rst $18
    xor c
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
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    cp a

jr_05c_54b3:
    nop
    rst $38
    nop
    ld d, a
    nop
    ld [$7200], a
    nop
    ld d, b
    nop
    inc h
    nop
    sub c
    nop
    cpl
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
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld h, b
    sbc a
    ld d, b
    xor a
    jr z, jr_05c_54b3

    inc e
    db $e3
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
    ld hl, sp-$01
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    ld b, b
    nop
    ld b, b
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ld h, b
    nop
    jr nc, jr_05c_5504

jr_05c_5504:
    jr jr_05c_5506

jr_05c_5506:
    inc c
    nop
    inc b
    nop
    ld [bc], a
    nop
    ld bc, $0000
    nop
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
    ld b, c
    cp a
    add c
    ld a, a
    ccf
    rst $38
    rst $38
    cp a
    rst $30
    ld [$00ff], sp
    ei
    inc b
    rst $38
    nop
    rst $30
    ld [$00ff], sp
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
    rst $38
    nop
    rst $18
    jr nz, @+$01

    nop
    rst $18
    jr nz, @+$01

    nop
    cp a
    ld b, b
    cp a
    ld b, b
    rst $38
    nop
    cp a
    ld b, b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a

jr_05c_5555:
    add b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$24db], sp
    db $fc
    inc bc
    rst $38
    nop
    sbc a
    nop
    pop bc
    nop
    ld h, b
    nop
    rst $18
    nop
    cp a
    nop
    ld a, l

jr_05c_556f:
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rlca
    nop
    rlca
    nop
    dec bc
    nop
    ld bc, $0000
    nop
    add b
    ld a, a
    ld b, b
    cp a
    jr nc, jr_05c_5555

    jr jr_05c_556f

    inc c
    di
    ld a, [bc]
    db $fd
    ld bc, $00fe
    rst $38
    ldh a, [rP1]
    rra
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
    ld b, b
    nop
    ld h, b
    nop
    jr nc, jr_05c_55a6

jr_05c_55a6:
    jr jr_05c_55a8

jr_05c_55a8:
    inc c
    nop
    ld b, $00
    inc bc
    nop
    ld bc, $0000
    ld bc, $0002
    nop
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    nop
    dec c
    ld c, $00
    nop
    rrca
    stop
    nop
    ld de, $0012
    inc de
    inc d
    dec d
    nop
    ld d, $17
    jr jr_05c_55ec

    ld a, [de]
    dec de
    inc e
    nop
    nop
    dec e
    ld e, $1f
    nop
    jr nz, @+$23

    ld [hl+], a
    inc hl
    nop
    inc h
    dec h
    ld h, $27
    jr z, jr_05c_55f8

    nop
    nop
    nop
    nop
    nop

jr_05c_55ec:
    add hl, hl
    ld a, [hl+]
    dec hl
    nop
    inc l
    dec l
    ld l, $00
    nop
    nop
    jr z, jr_05c_5627

jr_05c_55f8:
    jr nc, jr_05c_55fa

jr_05c_55fa:
    ld sp, $3332
    inc [hl]
    ld de, $3500
    ld [hl], $37
    nop
    ld [hl+], a
    jr c, jr_05c_5640

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    nop
    ld b, c
    nop
    ld b, d
    nop
    ld [hl+], a
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
    nop
    nop
    ld c, [hl]
    nop
    ld c, a
    ld d, b
    nop
    ld d, c

jr_05c_5627:
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld [bc], a
    ld d, a
    nop
    nop
    nop
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
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]

jr_05c_5640:
    nop
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    nop
    nop
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    nop
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
    nop
    ld a, a
    add b
    nop
    ld h, $81
    add d
    add e
    nop
    add h
    db $76
    add l
    add [hl]
    ld a, h
    add a
    nop
    nop
    nop
    adc b
    nop
    adc c
    nop
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d

Call_05c_567b:
    nop
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    nop
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
    xor d
    xor e
    xor h
    nop
    nop
    xor l
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
    cp c
    nop
    nop
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
    call nz, Call_000_00c5
    add $c7
    ret z

    ret


    jp z, $cccb

    call Call_000_00ce
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
    ld c, c
    db $f4
    push af
    or $00
    ld bc, $0000
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

Jump_05c_5700:
    ld bc, $0000
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
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
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
    jr nz, jr_05c_5740

jr_05c_5740:
    nop
    inc bc
    inc bc
    nop
    ld b, e
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
    inc bc
    nop
    ld b, e
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
    inc bc
    nop
    inc bc
    inc bc
    nop
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
    inc bc
    nop
    inc bc
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
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_05c_57a2

jr_05c_57a2:
    inc bc
    inc bc
    nop
    inc bc
    inc hl
    nop
    nop
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
    inc bc
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
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    nop
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
    inc bc
    inc bc
    nop
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
    inc bc
    nop
    inc bc
    inc bc
    nop
    nop
    nop
    inc bc
    inc bc

Call_05c_57f8:
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
    inc bc
    inc bc
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_05c_5829:
    nop
    nop
    nop
    nop
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
    pop bc
    cp $7b
    db $fd
    dec c
    di
    db $10
    rst $28
    jr nz, jr_05c_5829

    ld b, b
    cp a
    add b
    ld a, a
    jr nz, @+$01

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
    ld bc, $0100
    nop
    inc bc
    nop
    add $00
    inc c
    nop
    jr jr_05c_5872

jr_05c_5872:
    jr c, jr_05c_5874

jr_05c_5874:
    jr nc, jr_05c_5876

jr_05c_5876:
    ld h, b
    nop
    ret nz

    nop
    ret nz

    nop
    add b
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
    ld [$18ff], sp
    rst $38
    jr @+$01

    jr c, @+$01

    ld a, b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ld [hl], b
    rst $38
    ld h, b
    rst $38
    ld d, b
    rst $38
    db $10
    rst $38
    jr c, @+$01

    ld hl, sp-$01
    ld hl, sp-$01
    jr c, @+$01

    jr nc, @+$01

    jr c, jr_05c_592c

    sbc d
    rst $38
    jr c, @+$01

    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld e, $ff
    ld c, $7f
    adc [hl]
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    add a
    rst $38
    ld b, $ff
    nop
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    dec a
    ccf
    ret nz

    nop
    rst $38
    ret nz

    ld a, a
    ret nz

    ccf
    db $fc
    inc bc
    rst $30
    ld [$03ff], sp
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ld e, a
    rst $38
    rra
    rst $38

jr_05c_58eb:
    ld bc, $10ef
    ccf
    ret nz

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
    rst $38
    ld bc, $02fe
    db $fd
    inc c
    di
    db $10
    rst $28
    jr nz, jr_05c_58eb

    ld b, b
    cp a
    add b
    ld a, a
    nop
    nop
    db $e4
    nop
    scf
    ld [$000c], sp
    rlca
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
    ld bc, $0300
    nop
    ld b, $00
    inc c
    nop

jr_05c_592c:
    inc e
    nop
    jr c, jr_05c_5930

jr_05c_5930:
    jr nc, jr_05c_5932

jr_05c_5932:
    ld h, d
    nop
    jp nz, $8000

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
    ld [$0000], sp
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
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    jr c, jr_05c_59b4

    ld hl, sp+$06
    db $fd
    ldh [$1f], a
    rst $38
    ld a, [$ffff]
    rst $38
    rst $08
    rst $38
    rlca
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
    rrca
    rst $38
    ld bc, $0002
    ld [bc], a
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
    nop
    nop
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
    nop
    nop
    nop

jr_05c_59b4:
    rst $38
    nop
    ccf
    nop
    rrca
    nop
    rst $38
    nop
    ld a, a
    nop
    rra
    nop
    dec c
    nop
    rrca
    nop
    rrca
    nop
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld b, $00
    inc c
    nop
    inc e
    nop
    jr c, jr_05c_59dc

jr_05c_59dc:
    jr nc, jr_05c_59de

jr_05c_59de:
    ld h, b
    nop
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
    nop
    nop
    rlca
    nop
    inc c
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_05c_5a06

jr_05c_5a06:
    nop
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
    nop
    nop
    inc b
    nop
    inc c
    nop
    ld [$0000], sp
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc bc
    db $fc
    nop
    rst $38
    add b
    ld a, a
    ldh a, [rIF]
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    jr nz, jr_05c_5a64

jr_05c_5a64:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    sbc a
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    jr nc, jr_05c_5a8a

jr_05c_5a8a:
    ld h, b
    nop
    ret nz

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
    nop
    nop
    nop
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
    and b
    ld b, b
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
    nop
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
    and $00
    ld a, a
    add b
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
    add b
    rst $38
    add b
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
    nop
    nop
    nop
    nop

jr_05c_5af4:
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld [bc], a
    nop
    inc b
    nop
    di
    inc c
    rst $20
    jr jr_05c_5af4

    db $10
    rra
    ldh [rP1], a
    ld a, a
    dec a
    ld b, d
    ld a, a
    add c
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    ld c, $ff
    rrca
    rst $38
    rra
    rst $38
    inc a
    rst $38
    ld [hl], b
    rst $38
    ld b, b
    rst $38
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $1000
    nop
    nop
    nop
    ld e, $00
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
    ld [$0800], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $0300
    nop
    inc bc
    nop
    rlca
    nop
    rrca
    nop
    inc bc
    nop
    dec de
    nop
    dec sp
    nop
    ld h, a
    nop
    rlca
    nop
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
    nop
    ld b, b
    nop
    inc b
    nop
    nop
    nop
    ret nz

    nop
    ld hl, sp+$00
    rst $18
    jr nz, @+$01

    nop
    cpl
    nop
    nop
    nop
    nop
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
    jr nz, jr_05c_5b84

jr_05c_5b84:
    ld h, b
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
    rst $38
    rra
    rst $38
    jr nc, @+$01

    jr z, @+$01

    ld a, b
    rst $38
    ld b, b
    db $fc
    add e
    rst $38
    ld hl, sp-$01
    rst $00
    rst $38
    ld e, $ff
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
    rrca
    rst $38
    rrca
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
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    ccf
    jp $0df3


    jp $c43d


    dec sp
    ld [$88f7], sp
    ld [hl], a
    ld [c], a
    dec e
    db $e4
    dec de
    ret nz

    ccf
    cp a
    nop
    cp a
    nop
    dec a
    nop
    ccf
    nop
    ld a, [de]
    nop
    ld a, c
    nop
    ld a, l
    nop
    rst $28
    nop
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
    nop
    rst $38
    nop
    di
    inc c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    nop
    jr nc, jr_05c_5c1e

jr_05c_5c1e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $4000
    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ret nz

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
    ldh a, [rIE]
    add b
    rst $38
    rrca
    rst $38
    inc e
    rst $38
    jp $c23f


    ld hl, sp+$77
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld a, $ff
    ld a, [hl]
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

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
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rra
    cp $1f
    rst $38
    rra
    rst $38
    ccf
    rst $18
    rra
    rst $38
    ld b, $ff
    ld b, $ff
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ldh a, [rP1]
    ldh [rP1], a
    ret z

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
    jr jr_05c_5ce8

jr_05c_5ce8:
    jr nc, jr_05c_5cea

jr_05c_5cea:
    add b
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    cp $00
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    ld b, h
    nop
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
    nop
    rst $38
    nop
    rst $38
    sub a
    rst $38
    adc a
    rst $38
    ccf
    rst $38
    ldh a, [rIE]
    nop
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
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rrca
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
    rst $38
    nop
    rst $38
    ld bc, $01ff
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
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rst $38
    ccf
    cp $3f
    cp $3f
    cp $7f
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rlca
    rst $38
    ld bc, $00ff
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fd
    nop
    add e
    nop
    add c
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
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    ld [c], a
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    ld bc, $0000
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    nop
    rst $38
    nop
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_05c_5dce

jr_05c_5dce:
    nop
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rra
    rst $38
    cp $ff
    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
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
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, $ff
    ld a, $ff
    ld a, h
    rst $38
    inc a
    rst $38
    ld a, h
    rst $38
    ld a, b
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    db $fd
    ld [bc], a
    or l
    ld c, d
    add b
    ld a, a
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ld hl, sp-$39
    rst $38
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    jr @+$01

    ld h, e
    sbc a
    ld [de], a
    db $ed
    inc a
    jp Jump_000_02fd


    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    nop
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
    cpl
    nop
    ld a, a
    nop
    ld l, a
    nop
    rrca
    nop
    add hl, de
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    inc e
    inc bc
    ccf
    nop
    cpl
    nop
    ld c, $00
    ld c, $00
    ld c, $00
    rra
    nop
    rra
    nop
    jr jr_05c_5e99

    rrca
    nop
    inc bc
    nop
    nop
    nop
    nop

jr_05c_5e99:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    ld b, b
    cp a
    rrca
    ldh a, [$1f]
    ldh [rIE], a
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
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld a, b
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

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
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ld bc, $0100
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
    call c, Call_000_2f00
    ret nc

    ccf
    ret nz

    ld a, a
    add b
    cp a
    ld b, b
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
    add c
    nop
    and b
    nop
    db $fc
    nop
    ld [c], a
    nop
    and $00
    ld a, [$ff00]
    nop
    cp $00
    rst $38
    nop
    db $fc
    nop
    ld sp, hl
    nop
    ret z

    nop
    sub b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    adc a
    ld [hl], b
    rst $38
    nop
    ld hl, sp+$00
    ld a, b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    db $f4
    nop
    ldh [rP1], a
    ld h, d
    add b
    and b
    ld b, b
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $e0fe
    rra
    rst $38
    nop
    rst $38
    nop
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
    nop
    nop
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nc, jr_05c_5fe0

jr_05c_5fe0:
    ldh a, [rP1]
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
    rst $38
    nop
    rst $38
    nop
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
    ret nz

    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc e
    nop
    inc e
    nop
    nop
    nop
    ld a, a
    add b
    nop
    rst $38
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
    rst $38
    ret nz

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
    nop
    rst $38
    nop
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
    ld bc, $0b00
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld hl, sp+$00
    rst $38
    nop
    ei
    inc b
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    rst $38
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
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ld a, [hl]
    rst $38
    rra
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    rlca
    cp a
    ld b, a
    ld a, a
    add a
    rst $38
    rlca
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
    cp $ff
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
    nop
    nop
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
    ld bc, $0100
    nop
    ld bc, $c300
    nop
    rst $38
    nop
    cp $01
    cp $01
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
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
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
    rrca
    nop
    rra
    nop
    rlca
    nop
    jp nz, $b600

    ld c, c
    xor c
    ld d, [hl]
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    jp $c1ff


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
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $30
    adc b
    rst $38
    add b
    rst $18
    and b
    cp a
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    cp a
    ret nz

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
    rst $28
    ld de, $07ff
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
    db $fc
    rst $38
    ldh [$60], a
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
    add b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld h, b
    nop
    ret nz

    nop
    ldh [rP1], a
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
    adc e
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    ld a, a
    nop
    ld h, b
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
    jr jr_05c_626c

jr_05c_626c:
    stop
    nop
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, $ff
    nop
    nop
    nop
    inc bc
    nop
    di
    nop
    rst $38
    nop
    rst $18
    nop
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    xor $11
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ld a, h
    rst $38
    ld a, $ff
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
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
    nop
    rst $38
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
    add c
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
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
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
    nop
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    ldh [rP1], a
    ld hl, sp+$00
    ccf
    ret nz

    ld hl, sp+$07
    ld a, a
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0000
    nop
    jr nc, jr_05c_632c

jr_05c_632c:
    nop
    nop
    nop
    nop
    ld c, b
    nop
    ld [bc], a
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
    ld c, b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    inc a
    rrca
    rst $30
    add b
    ld a, a
    nop
    rst $38
    nop
    ld sp, hl
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
    ei
    nop
    ei
    nop
    call z, Call_05c_4000
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, [hl]
    rst $38
    ld a, $ff
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
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    add b
    jr jr_05c_63c2

jr_05c_63c2:
    ld b, b
    nop
    add b
    nop
    nop
    nop
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
    inc bc
    nop
    or $00
    ld a, a
    add b
    pop hl
    ld e, $00
    cp $f8
    rlca
    rst $38
    nop
    cp l
    ld b, d
    rra
    ldh [$3f], a
    ret nz

    rst $38
    ld bc, $07ff
    add l
    nop
    ld a, $00
    rlca
    nop
    inc bc
    nop
    rlca
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
    ld a, [$fc05]
    inc bc
    ld hl, sp+$07
    ldh [$1f], a
    nop
    rst $38
    ldh [rIE], a
    rst $00
    ccf
    add a
    rst $38
    ccf
    pop bc
    dec a
    or $1f
    db $fc
    rlca
    db $fd
    inc bc
    rst $38
    ld bc, $faff
    nop
    ei
    nop
    ld h, a
    nop
    rst $38
    nop
    rst $38
    nop
    sbc a
    nop
    ccf
    nop
    sbc a
    nop
    rst $08
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    add b
    nop
    nop
    nop
    dec bc
    nop
    jr nz, jr_05c_6446

jr_05c_6446:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    ld bc, $0300
    nop
    inc bc
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
    dec b
    nop
    ld b, $00
    dec c
    nop
    rlca
    nop
    add hl, bc
    nop
    dec h
    nop
    dec hl
    nop
    add hl, sp
    nop
    ld hl, sp+$00
    rst $38
    nop
    nop
    add a
    nop
    rst $38
    pop hl
    ld e, $ff
    nop
    rst $38
    rlca
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    ld a, a
    nop
    rlca
    nop
    ccf
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $ff
    pop bc
    ld a, a
    or [hl]
    rst $38
    dec e
    db $fc
    ld [hl], e
    ldh [$5f], a
    push bc
    cp d
    rst $38
    ld d, l
    ccf
    jp z, $e11e

    rlca
    ld hl, sp+$03
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    xor $00
    rst $08
    nop
    dec d
    nop
    ld b, c
    nop
    jr jr_05c_650a

jr_05c_650a:
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
    stop
    nop
    nop
    nop
    nop
    inc c
    nop
    dec c
    nop
    sbc l
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $18
    nop
    rrca
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    inc bc
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
    nop
    nop
    nop
    nop
    ld h, b
    nop
    jr nz, jr_05c_6550

jr_05c_6550:
    ld h, b
    nop
    ldh a, [rP1]
    cp $00
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    ld b, b
    nop
    ld a, [bc]
    nop
    ld [$0800], sp
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
    ld c, $00
    rrca
    nop
    dec de
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
    inc bc
    nop
    inc bc
    nop
    rlca
    nop
    inc de
    nop
    daa
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    ld a, a
    nop
    rst $38
    inc d
    db $eb
    inc c
    di
    ld c, d
    or l
    rrca
    ldh a, [$0b]
    db $f4
    ld a, a
    add e
    rra
    rst $28
    ld bc, $00ff
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp+$20

jr_05c_65b1:
    nop
    ldh a, [rP1]
    add sp, $10
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    cp $00
    ld a, [$fe04]
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    ld a, a
    nop
    ld a, a
    nop
    di
    inc c
    ld hl, sp-$09
    ld hl, sp+$57
    ld hl, sp-$29
    ld [hl], b
    cp a
    ldh a, [$7f]
    ld [hl], b
    rst $18
    ld hl, sp+$3f
    jr c, jr_05c_65b1

    ld a, b
    sbc a
    db $fc
    ld a, a
    db $fc
    rst $08
    db $fc
    rrca
    ld a, [hl]
    rst $00
    ld a, $ff
    ld e, [hl]
    cp a
    rrca
    cp $07
    cp $03
    cp $41
    cp [hl]
    add b
    ld a, a
    ret c

    daa
    ld a, [c]
    dec c
    jp nc, Jump_000_152d

    nop
    inc bc
    nop
    add h
    nop
    ld c, b
    nop
    rlca
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld bc, $0000
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
    nop
    nop
    ld h, c
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rra
    nop
    inc b
    nop
    inc c
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld h, b
    nop
    jr nz, jr_05c_6652

jr_05c_6652:
    stop
    nop
    nop
    nop
    nop
    add b
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
    ld bc, $0000
    nop
    ld b, c
    nop
    ld e, a
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
    inc bc
    db $fd
    inc bc
    rst $38
    ccf
    rst $00
    ccf
    rst $08
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $20
    db $fc
    ld bc, $00fe
    di
    nop
    rst $38
    sub b
    rst $28
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
    ld [$0000], sp
    nop
    ld [bc], a
    nop
    ld bc, $0100
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
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    and b
    ld b, b
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$04fb], sp

Jump_05c_66e6:
    cp $00
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    db $d3
    nop
    db $fd
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
    rst $20
    nop
    ld d, a
    nop
    sub a
    nop
    dec hl
    nop
    ccf
    nop
    ccf
    nop
    ld h, a
    nop
    adc a
    nop
    rlca
    nop
    rrca
    nop
    ld e, a
    nop
    ccf
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
    ld l, a
    nop
    db $eb
    nop
    ld a, [$f000]
    nop
    ld hl, sp+$00
    cp $00
    ld sp, hl
    nop
    db $fd
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
    ld d, a
    nop
    ld [hl], $00
    ld [de], a
    nop
    ld [$0800], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_05c_6754

jr_05c_6754:
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
    ld bc, $0000
    nop
    nop
    nop
    ld b, $00
    rrca
    nop
    sub $00
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    inc bc
    db $fd
    rlca
    rst $38
    rlca
    rst $38
    rra
    cp $3e
    rst $28
    ld a, h
    rst $38
    db $fc
    cp a
    ld hl, sp-$01
    ld hl, sp-$09
    ldh a, [rIE]
    add b
    rst $38
    add b
    rst $38
    and b
    rst $18
    ldh a, [rIF]
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    ccf
    jp nz, $e71f

    rra
    db $fc
    jr nz, @+$01

    cp $75
    rst $38
    ld a, h
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
    dec b
    dec d
    rlca
    ld d, $17
    jr jr_05c_67d5

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_05c_67e5

    ld [hl+], a
    inc hl
    dec b
    inc h
    dec h
    ld h, $27
    jr z, jr_05c_67f6

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_05c_6806

jr_05c_67d5:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_05c_6816

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c

jr_05c_67e5:
    ld b, d
    ld b, e
    rlca
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld [hl], $4c
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b

jr_05c_67f6:
    ld d, c
    rlca
    rlca
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld [hl], $59
    ld e, d
    ld e, e
    ld e, h
    ld e, l

jr_05c_6806:
    ld e, [hl]
    ld e, a
    rlca
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld [hl], $67
    ld l, b
    ld l, c
    ld l, d
    ld l, e

jr_05c_6816:
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    rlca
    ld [hl], d
    ld [hl], e
    rlca
    ld [hl], $74
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
    rlca
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
    rlca
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
    rlca
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
    rlca
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
    rlca
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


    rlca
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
    ld [hl], $e4
    push hl
    and $e7
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$f1]
    ld [hl], $36
    ld [hl], $f2
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    cp $36
    ld [hl], $36
    rst $38
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    ld [hl], $36
    ld [hl], $0c
    dec c
    ld c, $0f
    db $10
    ld de, $1236
    inc de
    inc d
    dec d
    ld d, $36
    rla
    jr jr_05c_68f2

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    ld [hl], $06
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
    ld b, $00
    nop
    nop
    nop
    nop

jr_05c_68f2:
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $00
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
    ld b, $00
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
    ld bc, $0000
    nop
    ld b, $00
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0000
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $00
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
    ld b, $06
    ld b, $06
    nop
    nop
    nop
    nop
    ld bc, $0001
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
    ld bc, $0006
    nop
    nop
    ld b, $01
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld b, $06
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
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
    ld b, $01
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
    ld b, $01
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
    ld b, $01
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
    ld b, $01
    ld bc, $0101
    ld bc, $0909
    ld [$0808], sp
    ld [$0808], sp
    ld [$0e08], sp
    add hl, bc
    ld bc, $0101
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    nop
    ld [$0808], sp
    ld [$010e], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    nop
    nop
    rst $38
    inc b
    rst $38
    add b
    rst $38
    ld c, [hl]
    pop af

jr_05c_6a28:
    ld hl, $31e0
    ret nz

    jr c, @-$1e

    jr jr_05c_6a28

    inc b
    db $fc
    add d
    cp $a0
    rst $18
    and b
    rst $38
    db $ec
    ld a, a
    xor $ff
    sbc a
    cp $93
    rst $38
    ld a, a
    or l
    dec a
    rst $18
    adc a
    ld [hl], d
    pop bc
    ld a, $20
    rst $18
    cp $21
    xor $ff
    db $fd
    ld e, d
    inc d
    db $eb
    ld [c], a
    dec e
    cp a
    ld c, h
    adc a
    ld [hl], h
    rst $28
    sbc b
    rst $38
    ret nz

    rst $38
    inc h
    ld a, $ff
    rrca
    cp $0f
    or $01
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $e000
    ldh [rIE], a
    rst $38
    rst $38
    rst $30
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    sbc [hl]
    rst $20
    daa
    bit 1, a
    adc a
    adc e
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
    inc [hl]
    inc [hl]
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, $ff
    dec a
    sbc a
    sbc a
    rra
    dec de
    dec de
    ld c, $39
    ld b, $33
    dec l
    rla
    dec bc
    add sp, $3f
    pop af
    rra
    ld sp, hl
    rrca
    ei
    ld c, $f0
    nop
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    cp $00
    jr nz, jr_05c_6af6

jr_05c_6af6:
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    adc h
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [bc]
    nop
    cp b
    nop
    di
    nop
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    xor a
    ccf
    rst $08
    rrca
    rst $38
    and a
    ld e, a
    rst $00
    dec sp
    rlca
    ld a, c
    ld b, b
    ld a, a
    nop
    ccf
    nop
    ccf
    ld c, c
    ld [hl], $8f
    ld a, c
    add h
    ld a, e
    adc l
    ld a, [hl]
    sbc a
    push hl
    rst $38
    adc a
    ccf

jr_05c_6b3f:
    cpl
    ld e, $1d
    inc e
    rra
    add hl, sp
    jr nc, jr_05c_6b3f

    ret c

    db $fc
    ld a, h
    ld e, h
    cp h
    adc h
    ld [hl], h
    call nz, $e1b8
    rst $38
    xor $39
    cp a
    ld h, a
    rra
    rst $30

jr_05c_6b58:
    sub l
    ld l, e
    and a
    ld e, h
    rst $28
    add hl, sp
    rst $18
    jr nz, jr_05c_6b58

    ld e, d
    cp a
    ld e, b
    db $ec
    ld [hl], a
    ld a, a
    or h
    rrca
    ldh a, [$83]
    ld a, h
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    rst $38
    add b
    cp a
    cp [hl]
    rst $38
    rst $38
    ei
    rst $38
    ld l, a
    cp $e5
    push hl
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh [$a0], a
    ldh [$a0], a
    ld b, b
    ld b, b
    ld [bc], a
    nop
    inc bc
    inc bc
    ld bc, $0100
    nop
    ld bc, $4100
    ld b, c
    add c
    add c
    pop bc
    pop bc
    di
    di
    di
    jp nc, $92b3

    rst $38
    ld a, [hl]
    rst $38
    reti


    rst $38
    rst $38
    sub a
    ld l, b
    add b
    rst $38
    sbc b
    ld a, a
    pop af
    rst $28
    ld hl, sp+$00
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    ccf
    ld hl, sp+$00
    add b
    nop
    nop
    nop
    jr nc, jr_05c_6bd8

jr_05c_6bd8:
    ret z

    nop
    ret nz

    nop
    add b
    nop
    ld [bc], a
    nop
    sub b
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
    ei
    nop
    rst $30
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    rst $38
    rst $30
    rst $38
    cp $ff
    cp $ff
    db $fd
    rst $38
    rst $38
    rst $28
    rst $10
    rlca
    ei
    rlca
    ei

jr_05c_6c10:
    rlca
    ei
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    sbc a
    cp l
    ld a, [hl]
    db $fd
    ld [c], a
    ret z

    or a
    adc $7d
    ld e, $fd
    ld a, $dd
    ld a, l
    ld [hl-], a
    dec a
    dec sp
    dec c
    ld a, [bc]
    nop
    inc bc
    dec de
    add hl, de
    rra
    rla
    ret c

    ld c, b
    cp b
    ld c, b
    adc h
    db $f4
    or d
    ld c, h
    cp h
    ld a, a
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    ei
    rst $38
    and a
    rst $38
    rst $20
    rst $38
    db $e4
    rst $30
    jp Jump_05c_66e6


    jr nz, jr_05c_6c10

    ld l, h
    sub h
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
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    rst $38
    nop
    add c
    add b
    ldh a, [$c0]
    rst $38
    ret nc

    ret nz

    add b
    ret nz

    ld b, b
    ld b, b
    ld b, b
    ld e, $1e
    ld e, $0a
    inc a
    jr z, jr_05c_6ca1

    inc d
    jr jr_05c_6c98

    db $10
    db $10
    jr nc, jr_05c_6cc4

    cp e
    xor e
    or e
    or b

jr_05c_6c98:
    or e
    inc sp
    ld hl, sp-$28
    ld a, h
    ld [$8ef2], sp
    rst $38

jr_05c_6ca1:
    rst $18
    ei
    push de
    rst $18
    ld sp, hl
    ei
    rra
    cp a
    ld e, a
    sbc e
    ld l, a
    rra
    ld [$7dfe], a
    ld [hl+], a
    rst $38
    inc bc
    rst $38
    ldh a, [rP1]
    ccf
    nop
    rst $38
    nop
    db $fc
    inc bc
    nop
    rst $38
    dec c
    ld a, [c]
    ld bc, $0000
    nop

jr_05c_6cc4:
    stop
    dec b
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_05c_6cce

jr_05c_6cce:
    add b
    nop
    ld [$ff00], sp
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    daa
    nop
    daa
    nop
    adc a
    nop
    ldh [$e0], a
    cp $de
    rst $38
    cpl
    rst $38
    sub a
    rst $38
    push bc
    rst $38
    pop bc
    rst $38
    pop hl
    rst $38
    ld [c], a
    rst $38
    pop hl
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $08
    jr nc, @-$71

    ld [hl], d
    inc c
    di
    pop hl
    rra
    rst $38
    rst $28
    sbc $31
    ccf
    jp nc, $d73f

    rrca
    rst $30
    add $fb
    cp h
    add e
    inc l
    cpl
    ld [bc], a
    ld bc, $0000
    add b
    nop
    ld h, b
    and b
    ret c

    add sp, -$0a
    ld [$fef9], a
    cp $e7
    rst $38
    db $e3
    rst $38
    ld c, c
    cp a
    ld a, [hl]
    rst $38
    rst $38
    ld a, $3c

jr_05c_6d40:
    ccf
    rra
    dec sp
    dec b
    ld a, l
    sbc e
    dec a
    push bc
    ld [bc], a
    db $fc
    nop
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
    nop
    rst $38
    nop
    rst $38
    ld bc, $02fe
    db $fd
    ld a, b
    add b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $08ff
    rlca
    jr nc, jr_05c_6d40

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add hl, de
    db $fd
    ld [hl], l
    ld a, a
    di
    rst $28
    xor e
    ld h, a
    ld h, b
    ld [hl], e
    ld [hl], b
    ld sp, $3f10
    ld c, $fe
    ld b, c
    ei
    and h
    rst $30
    cp b
    rst $38
    rst $00
    db $ed
    jp c, $edf2

    ld c, a
    or a
    dec c
    rst $38
    ld hl, sp+$00
    ld a, a
    nop
    rst $38
    nop
    ldh a, [rIF]
    nop
    rst $38
    ld h, b
    sbc a
    and h
    ld e, e
    ccf
    nop
    dec bc
    nop
    ld l, d
    nop
    add b
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld l, l
    nop
    sbc a
    nop
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
    cp $00
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    cp [hl]
    rst $38
    ld hl, sp-$01
    jp nz, $10fd

    rst $28
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    db $fc
    ld a, h
    ld hl, sp-$48
    cp $7e
    db $fd
    or l
    cp $de
    cp $2e
    rst $38
    ld b, a
    rst $38
    ld de, $39ff
    rst $38
    ld d, [hl]
    ld a, [hl]
    and a
    cp l
    ld h, [hl]
    ld [hl], b
    rst $38
    ret nc

    ccf
    add b
    ld a, a
    add e
    rst $38
    add d
    ld a, l
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    cp $87
    ld a, [hl]
    ld l, a
    ld e, d
    jr @+$11

    inc c
    dec bc
    ld [bc], a
    ld bc, $858d
    ld a, a
    cp a
    sbc a
    rst $20
    rst $30
    rrca
    rst $28
    ld [$21e2], sp
    add c
    add c
    inc bc
    ld [bc], a
    rlca
    inc b
    add e
    add e
    ldh [$e0], a
    ldh a, [$d0]
    cp $2e
    ld a, a
    add a
    rlca
    ld hl, sp+$01
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [bc]
    push af
    rst $38
    nop
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
    ccf
    rst $38
    ld sp, $100f
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
    nop
    nop
    nop
    ret nz

    ret nz

    ret nz

    add b
    ldh [$60], a
    di
    ld [hl], e
    di
    di
    di
    sub c
    cp l
    rst $38
    rst $38
    daa
    ld a, a
    rst $38
    ld a, e
    xor e
    ld a, h
    adc h
    ld [hl], b
    adc b
    ld hl, sp-$80
    ld hl, sp-$60
    rlca
    ld hl, sp-$80
    ld a, a
    ld bc, $3fff
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
    nop
    rst $38
    nop
    ld e, l
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    ld [$0000], sp
    nop
    ret nz

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    pop af
    nop
    rst $10
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    add b
    rst $38
    ld bc, $8fff
    ld a, a
    ccf
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop

jr_05c_6ee3:
    nop
    nop
    nop
    ld a, h
    ld a, h
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    ld sp, hl
    di
    inc l
    ld a, [hl+]
    push af
    ld b, c
    cp [hl]
    ld hl, $71df
    xor [hl]
    ld [hl], c
    xor $e1
    rst $38
    ldh a, [$7f]
    ld [hl-], a
    call $fd03
    jr nz, jr_05c_6ee3

    ret z

    ld [hl], a
    adc a
    ld [hl], b
    sbc c
    ld a, [hl]
    cp d
    ld c, l
    ld a, b
    sub a
    dec b
    ld a, [$07fa]
    ei
    push de
    ld [c], a
    db $fd
    di
    xor $fd
    db $db
    xor $f9
    rst $38
    dec [hl]
    sbc e
    ld a, e
    adc b
    ld [hl], b
    ld [c], a
    sbc h
    ldh a, [$bf]
    cp $f9
    ld a, [$fd7d]
    ld a, [hl-]
    cp $b5
    ld a, h
    rrca
    rst $38
    add e
    ld a, a
    sub e
    rrca
    push af
    add hl, bc
    or $00
    rst $38
    ret nc

    cpl
    db $fc
    inc bc
    rst $38
    nop
    inc a
    inc bc
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
    ld bc, $0001
    ccf
    ccf
    ld a, $1a
    inc a
    inc [hl]
    ld a, b
    ld a, b
    ld h, b
    ld h, b
    ldh [$a0], a
    ret nz

    ret nz

    rst $38
    add b
    ld a, a
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
    rrca
    db $fd
    nop
    nop
    nop
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
    cp e
    nop
    inc bc
    nop
    dec bc
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    nop
    ld a, [hl]
    nop
    ldh [rP1], a
    add b
    nop
    inc bc
    nop
    rlca
    nop
    ld a, a
    nop
    rst $38
    nop
    db $ed
    nop
    rst $28
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
    add b
    ldh a, [$f0]
    db $fc
    db $fc
    cp $86
    adc a
    ld a, a
    rst $10
    cpl
    pop bc
    ld a, $01
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rrca
    rst $38
    ld [hl], a
    xor e
    db $fc
    rlca
    ld l, $f5
    ld a, b
    rst $08
    ld hl, sp+$07
    ld bc, $01fe
    cp $03
    rst $38
    adc a
    ld [hl], a
    rra
    rst $28
    rrca
    ld hl, sp-$40
    cp a
    ldh [$7f], a
    ldh [$9f], a
    di
    dec c
    rst $28
    sbc e
    rst $38
    rst $38
    scf
    cpl
    sbc l
    dec e
    ld a, h
    cp h
    sbc a
    ld h, l
    sub e
    ld l, h
    add hl, hl
    sub $b0
    ld e, a
    ld d, l
    xor d
    db $eb
    ld d, h
    call nc, $dd2b
    and [hl]
    ld a, $df
    ld e, $e9
    dec bc
    db $f4
    add b
    ld a, a
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
    nop
    rst $38
    ld a, b
    rlca
    add a
    nop
    rst $38
    ld [bc], a
    rst $38
    ld c, $ff
    ld a, $e7
    ld a, h
    ld d, a
    db $ec
    ld h, b
    ldh [$c0], a
    ret nz

    ld b, b
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
    inc bc
    inc bc
    inc bc
    ld [bc], a
    rlca
    ld b, $1f
    ld e, $00
    nop
    nop
    nop
    adc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    ret nz

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
    jp nz, Jump_05c_7b00

    inc b
    ccf
    nop
    rst $38
    nop
    ei
    nop
    rst $30
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
    nop
    nop
    nop
    nop
    nop
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
    dec h
    inc [hl]
    dec bc
    ld a, [c]
    adc l
    ld bc, $03ff
    cp $00
    rst $38
    db $10
    rst $28
    pop af
    cp $f1
    cp $b0
    ld c, a
    nop
    rst $38
    ld c, $f9
    ccf
    or $70
    adc a
    nop

jr_05c_70bb:
    rst $38
    nop
    rst $38
    pop bc
    cp $e3
    rst $18
    jp $87ff


    ld a, d
    rlca
    db $fd
    rra
    rst $20
    ld a, a
    sbc a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01

jr_05c_70d5:
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    adc a
    rla
    db $ed
    rst $08
    add hl, sp
    jp $d3be


    xor h
    ld [hl], h
    adc e
    xor a
    ld d, b
    jr nc, jr_05c_70bb

    jr jr_05c_70d5

    ld a, [de]
    push hl
    ld e, $e5
    inc bc
    db $fc
    add b
    ld a, a
    pop af
    ld c, $ff
    rlca
    ld sp, hl
    ld bc, $01f9
    ld sp, hl
    ld bc, $03fb
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    ld sp, hl
    ld bc, $03fb
    rlca
    ei
    rlca
    ei
    rst $00
    dec sp
    cpl
    rrca
    rst $38
    rrca
    db $fc
    rrca
    ei
    rlca
    ei
    rlca
    dec b
    dec b
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    rra
    rra
    ccf
    dec sp
    ccf
    ld a, [hl+]
    ld [hl], e
    ld d, d
    ld b, d
    ld b, c
    add e
    add b
    add e
    inc bc
    add c
    add b
    nop
    nop
    inc bc
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    dec bc
    nop
    ld b, c
    nop
    nop
    nop
    jr nz, jr_05c_7150

jr_05c_7150:
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
    inc b
    nop
    cp $00
    pop bc
    ld a, $00
    nop
    nop
    nop
    nop
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

    ld b, b
    ld b, b
    add b
    rst $38
    set 7, a
    cp e
    inc sp
    db $dd
    ld [hl-], a
    rst $08
    ld a, a
    sbc $ff
    ld a, a
    rst $38
    ld a, a
    ld a, a
    cp a
    ld a, a
    rst $38
    rst $38
    ld a, a
    rst $00
    ld a, a
    jp $c33f


    ld a, a
    rst $28
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    ld a, [c]
    db $fd
    rst $08
    rst $30
    ld hl, sp-$19
    rst $38
    db $e3
    rst $18
    db $e3
    rrca
    di
    cp a
    ld b, c
    rst $38
    ld [hl], e
    rst $38
    di
    rst $38
    pop af
    rst $38
    ld [hl], e
    rst $38
    di
    rst $38
    pop af
    db $fd
    inc bc
    rst $38
    pop af
    and b
    and b
    ret c

    ret c

    ld e, h
    adc h
    ld [hl], b
    add b
    db $ec
    inc d
    ld a, [hl]
    and b
    rst $38
    nop
    ld c, c
    add [hl]
    ld b, d
    add b
    ret nz

    nop
    db $fc
    or h
    jp $d8bc


    rst $10
    jp $c0c2


    nop
    cp d
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    ld a, a
    pop bc
    rst $38
    pop bc
    rst $38
    pop bc
    ccf
    ret nz

    cp e
    ret nz

    cp [hl]
    ret nz

    rst $38
    ret nz

    cp $c0
    cp $c0
    cp [hl]
    ret nz

    cp $c0
    cp $80
    cp $00
    cp $00
    cp $80
    cp $00
    cp $00
    cp $00
    rst $38
    ld bc, $01ff
    rst $38
    add c
    rst $38
    add b
    rst $38
    pop bc
    ld a, a
    pop bc
    ld a, a
    pop bc
    db $fd
    add b
    cp $00
    rrca
    ldh a, [rP1]
    rst $38
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
    and b
    nop
    nop
    nop
    nop
    nop
    ld h, b
    nop
    jr nz, jr_05c_7224

jr_05c_7224:
    nop
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
    inc b
    ei
    ld [$05f7], sp
    ld a, [$fa05]
    rlca
    ld hl, sp+$05
    ld a, [$fa05]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0001
    nop
    rst $08
    rst $08
    rst $38
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
    ld a, a
    rst $38
    cp [hl]
    cp $ff
    sbc $7f
    db $fc
    rst $18
    db $fc
    rst $38
    db $fd
    ld h, $bf
    ld [hl], a
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp $ce
    db $fc
    rst $38
    ret nz

    db $e3
    inc a
    db $e3
    dec e
    rst $38
    add c
    rst $38
    xor c
    ei
    rst $30
    db $fc
    ldh a, [rIE]
    inc bc
    add a
    ld a, e
    ldh [rNR41], a
    nop
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
    ldh [$60], a
    ret nz

    nop
    ret nz

    ret nz

    ret nz

    ret nz

    nop
    nop
    nop
    nop
    ret nz

    nop
    ret nz

    nop
    add b
    add b
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    add b
    nop
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    nop
    nop
    ld b, b
    ld b, b
    nop
    nop
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
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
    add b
    add b
    add b
    add b
    rst $38
    add b
    ld a, a
    ret nz

    ld a, a
    add b
    rst $38
    add b
    rst $18
    nop
    ld hl, sp+$07
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    db $fc
    nop
    db $e3
    nop
    add [hl]
    nop
    jr jr_05c_730a

jr_05c_730a:
    ld b, b
    nop
    ld bc, $0000
    nop
    ld b, $00
    ld c, $00
    nop
    nop
    nop
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
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    ld [$00f7], sp
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    ld c, h
    or e
    daa
    nop
    rla
    nop
    sbc a
    nop
    cp a
    ld c, $7f
    ccf
    rst $30
    ld a, a
    di
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    xor $fd
    ld a, [$d5fb]
    ei
    db $f4
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
    dec sp
    rra
    rst $28
    ld a, a
    sbc l
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp [hl]
    di
    call z, $a0ec
    rra
    nop
    ld [hl], a
    jp z, $fe45

    ld a, $c1
    nop
    rst $38
    ld bc, $87ff
    cp $96
    ld l, b
    inc e
    ld hl, sp+$7c
    ret nz

    inc bc
    db $fc
    ld b, $f8
    rlca
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$05
    ld hl, sp+$02
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld bc, $02fc
    db $fc
    inc bc
    db $fc
    ld [bc], a
    db $fc
    ld bc, $02fc
    db $fc
    ld bc, $02fc
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
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    inc bc
    db $fc
    ld bc, $02fe
    db $fd
    ld [bc], a
    db $fd
    nop
    rst $38
    ld bc, $02fe
    db $fd
    nop
    rst $38
    ld bc, $fcfe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld sp, hl
    nop
    add a
    nop
    rrca
    nop
    ccf
    nop
    ld a, a
    nop
    ld l, c
    nop
    ld bc, $0000
    nop
    add e
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    nop
    nop
    ret nz

    nop
    rst $38
    nop
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
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ld b, b
    cp a
    and b
    ld e, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or $ef
    rst $18
    rst $08
    or e
    xor $79
    cp $e1
    db $db
    db $ec
    rst $38
    cp a
    push hl
    cp $f0
    rst $38
    ld hl, sp-$09
    db $fc
    ei
    db $fc
    ei
    db $fc
    adc e
    adc $f5
    ret nz

    rst $38
    add h
    rst $38
    inc b
    rst $38
    ccf

jr_05c_7467:
    ld sp, hl
    dec sp
    ldh a, [$fa]
    add hl, bc
    jr jr_05c_7467

    add hl, de
    ld hl, sp-$08
    ld bc, $f900
    nop
    ld sp, hl
    sbc c
    ld hl, sp-$08
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    rst $18
    nop
    di
    nop
    ld l, c
    nop
    ld b, b
    nop
    add sp, $00
    pop bc
    nop
    ld bc, $a200
    nop
    or b
    nop
    jr c, jr_05c_7494

jr_05c_7494:
    ldh a, [rP1]
    and b
    nop
    ld d, d
    nop
    ld e, c
    nop
    ldh [rP1], a
    ld d, [hl]
    nop
    add sp, $00
    sub [hl]
    nop
    push af
    nop
    ld a, d
    nop
    db $fd
    nop
    or $00
    push af
    nop
    ld a, l
    nop
    xor $00
    rst $38
    nop
    ld a, [$ff00]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld l, a
    sub b
    ld a, a
    add b
    rst $38
    nop
    ld e, e
    and h
    adc $31
    ld a, a
    add b
    ld l, [hl]
    sub c
    ld a, [de]
    push hl
    ld d, l
    xor d
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    ret c

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    db $e3
    nop
    rlca
    nop
    add l
    nop
    ld a, $00
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
    ld l, b
    nop
    rst $38
    nop
    ldh [$1f], a
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
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0303
    add e
    add e
    rst $20
    and a
    rst $28
    cpl
    rst $38
    or a
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    scf
    rst $30
    ld a, d
    db $fc
    adc a
    cp h
    ld c, a
    sbc a
    ld l, [hl]
    rra
    db $fd
    cp a
    ld h, c
    db $fd
    xor e
    rst $18
    cp l
    rra
    db $fd
    sbc a
    ld a, a
    sbc [hl]
    ld a, a
    cp [hl]
    rst $18
    cp [hl]
    ld c, c
    adc b
    ld [hl], a
    add b
    ld a, a
    nop
    rst $38
    adc [hl]
    ldh a, [$81]
    add c
    ld a, b
    ld b, a
    nop
    rst $38
    inc a
    call z, $0407
    rst $38
    rst $38
    rst $38
    rst $38
    pop hl
    cp $0f
    rst $38
    rst $08
    rra
    rra
    ld [$081f], sp
    rra
    ld [$081b], sp
    dec c
    ld [$080f], sp
    rrca
    ld [$080f], sp
    adc l
    ld [$080f], sp
    rrca
    ld [$0c0b], sp
    dec bc
    inc c
    dec bc
    inc c
    dec bc
    inc c
    dec bc
    inc c
    adc e
    inc c
    dec bc
    inc c
    dec bc
    inc c
    dec bc
    inc c
    ld c, e
    inc c
    dec bc
    inc c
    inc bc
    inc c
    inc bc
    inc c
    ld h, e
    inc c
    ld b, a
    inc c
    and a
    inc c
    and a
    inc c
    ld b, a
    inc c
    or a
    inc c
    rst $10
    inc c
    rst $20
    inc c
    or l
    ld c, $57
    inc c
    rst $20
    inc c
    rst $30
    inc c
    sub $0d
    push af
    ld c, $f7
    inc c
    db $fd
    ld b, $fd
    ld b, $ff
    inc b
    db $fc
    rlca
    db $f4
    rrca
    db $fd
    ld b, $dc
    daa
    ld a, l
    add [hl]
    ld a, h
    add a
    cp h
    ld b, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld b, b
    nop
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld [hl-], a
    nop
    xor c
    nop
    ld b, c
    nop
    rst $08
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    inc b
    nop
    ld b, b
    nop
    ret nc

    nop
    rst $38
    nop
    add sp, $17
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
    ld bc, $0301
    inc bc
    rlca
    rlca
    rra
    dec e
    ld a, a
    ld l, c
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fd
    db $fd
    rst $38
    db $dd
    ld [c], a
    sbc b
    rst $20
    and h
    ld a, e
    ld [$00f7], sp
    rst $38
    adc b
    ld [hl], a
    inc b
    rst $38
    call nz, $e43b
    ld a, e
    inc a
    db $e3

jr_05c_762c:
    sbc h
    db $e3
    rst $18
    cp h
    rst $38
    sub [hl]
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld a, a
    ld a, a
    db $fd
    db $fd
    ld a, [hl]
    ld a, a
    cp a
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    ld hl, sp-$31
    inc bc
    ld e, a
    rst $38
    rrca
    rst $38
    jr jr_05c_762c

    ld a, a
    rlca
    dec bc
    rst $38
    rlca
    rst $38
    ld [hl], b
    ret nz

    rst $38
    rra
    rst $38
    db $fc
    ret nc

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $30
    nop
    cp e
    nop
    ld a, [$5000]
    nop
    ld c, b
    nop
    and b
    nop
    ld b, b
    nop
    or b
    nop
    ld l, h
    nop
    or b
    nop
    ret nc

    nop
    add sp, $00
    or b
    nop
    ld [$f400], a
    nop
    ld hl, sp+$00
    ld [$7500], a
    nop
    rst $38
    nop
    ei
    nop
    ei
    nop
    ld a, a
    nop
    db $fd
    nop
    cp $00
    db $fd
    nop
    cp $00
    rst $38
    nop
    ld a, [hl]
    add b
    cp a
    ld b, b
    sbc $20
    db $fd
    nop
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    db $db
    inc h
    ld l, a
    sub b
    ld e, a
    and b
    cp e
    ld b, h
    sbc a
    ld h, b
    ld e, a
    and b
    cpl
    ret nc

    sub a
    ld l, b
    ld c, d
    or l
    ld h, $d9
    inc de
    db $ec
    cp $ff
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    rrca
    nop
    rst $38
    nop
    ld [hl], a
    nop
    cpl
    nop
    cp a
    nop
    reti


    nop
    rst $38
    nop
    rst $38
    nop
    db $e3
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    rlca
    nop
    ld a, [bc]
    nop
    ld [bc], a
    nop
    nop
    nop
    call c, $7f00
    add b
    db $f4
    dec bc
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

    ldh [$e0], a
    ldh [$60], a
    cp $fe
    rst $38
    scf
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
    ld sp, hl
    pop af
    ld a, [hl]
    and b
    ld e, a
    add c
    ld a, a
    rlca
    rst $38
    rra
    rst $38
    cp a
    ld e, a
    ld b, a
    cp e
    ld a, e
    add $ff
    ld a, b
    db $fd
    ld a, d
    push af
    db $eb
    db $e3
    ld e, l
    db $e3
    rst $18
    di
    rst $28
    rst $38
    jp $b7ff


    ei
    xor l
    db $fd
    rst $28
    cp $ff
    rst $38
    ldh a, [$fc]
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$c0]
    jr c, jr_05c_774b

    cp c
    rst $38
    cp l
    rst $38
    sbc a
    ldh [$9f], a
    ld a, a
    cp $ff
    inc sp
    ret nz

    sbc $00
    cp a

jr_05c_774b:
    nop
    add sp, $00
    cp $00
    ldh a, [rP1]
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
    nop
    nop
    nop
    ret nz

    nop
    add h
    nop
    ret nz

    nop
    add b
    nop
    nop
    nop
    and b
    nop
    inc b
    nop
    sbc b
    nop
    ld l, c
    nop
    jp hl


    nop
    call nc, $f900
    nop
    db $ec
    nop
    ld sp, hl
    nop
    db $fd
    nop
    cp $00
    rst $38
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    ld a, a
    add b
    rst $38
    nop
    rst $28
    db $10
    cp a
    ld b, b
    cp l
    ld b, d
    rst $28
    stop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [$fd00]
    nop
    db $dd
    nop
    cp $00
    db $fd
    nop
    ei
    nop
    rst $38
    nop
    nop
    nop
    ld hl, sp+$00
    rst $38
    nop
    pop af
    nop
    ret nz

    nop
    jp Jump_000_0300


    nop
    and a
    nop
    ldh a, [rP1]
    ld bc, $0000
    nop
    nop
    nop
    inc c
    nop
    inc a
    nop
    jr nz, jr_05c_77e2

jr_05c_77e2:
    jr nz, jr_05c_77e4

jr_05c_77e4:
    nop
    nop
    nop
    nop
    ret nz

jr_05c_77e9:
    nop
    ld a, a
    add b
    ld hl, sp+$07
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
    ld [bc], a
    ld [bc], a
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    adc d
    rst $38
    ld [bc], a
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld [hl], b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38

jr_05c_7811:
    ret nz

    rst $38
    ldh [rIE], a
    add b
    cp e
    ld b, h
    jr nc, jr_05c_77e9

    add h
    ld a, e
    rst $08
    ldh a, [$df]
    ld a, [$5eab]
    rst $38
    ld a, [bc]
    pop hl
    add [hl]
    ld h, c
    and [hl]
    jr nz, jr_05c_7811

    push hl
    jp $e327


    add b
    add b
    ld h, l
    inc bc
    rst $20
    db $e3
    rst $20
    rst $20
    rst $20
    nop
    ld h, a
    inc bc
    rst $20
    db $e3
    rst $20
    db $e3
    add h
    nop
    dec [hl]
    db $e3
    ld [hl], b
    db $e3
    ld h, b
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
    add b
    nop
    ld b, b
    nop
    inc l
    nop
    xor b
    nop
    ld d, h
    nop
    add d
    nop
    ld d, c
    nop
    ld a, [de]
    nop
    push de
    nop
    cp h
    nop
    ld e, d
    nop
    xor d
    nop
    xor e
    nop
    ld [hl], a
    nop
    cp a
    nop
    ld a, [$f700]
    nop
    ei
    nop
    rst $38
    nop
    rst $30
    nop
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
    rst $18
    nop
    sbc a
    nop
    rst $38
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
    nop
    nop
    nop
    ld hl, sp+$00
    jr c, jr_05c_78bc

jr_05c_78bc:
    ret nz

    nop
    cp b
    nop
    ld h, b
    nop
    ld e, $00
    add b
    nop
    add b
    nop
    ld l, b
    nop
    ld de, $0000
    nop
    jr jr_05c_78d0

jr_05c_78d0:
    inc b
    nop
    ld [$0400], sp
    nop
    ld [de], a
    nop
    inc bc
    nop
    ret nz

    nop
    rst $38
    nop
    ldh a, [rIF]
    nop
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
    ld b, h
    cp $fe
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    xor e
    rst $38
    ld d, a
    rst $38
    ld a, [hl+]
    rst $38
    nop
    rst $38
    dec de
    rst $38
    inc c
    rst $38
    dec bc
    db $fd
    rra
    db $fc
    dec bc
    ld c, $fd
    inc a
    db $d3
    ldh a, [rVBK]
    ret nc

    xor a
    ld [hl], h
    adc e
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    call c, Call_000_00e0
    nop
    ld [hl], e
    ld c, h
    db $fc
    rst $38
    ld a, a
    db $fc
    rst $38
    add b
    ld hl, sp+$3f
    ld hl, sp-$01
    sbc a
    cp $81
    nop
    db $fc
    ccf
    ld a, [hl]
    rst $38
    ld a, a
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
    nop
    nop
    nop
    nop
    nop
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
    add b
    nop
    inc h
    nop
    and l
    nop
    ld sp, $d900
    nop
    cp d
    nop
    ld e, l
    nop
    rst $30
    nop
    db $ed
    nop
    push de
    nop
    cp $00
    ld a, [$f300]
    nop
    rra
    ldh [rIE], a
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
    ld a, [$a000]
    nop
    ret c

    nop
    ld hl, sp+$00
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld a, b
    nop
    stop
    ld [$1000], sp
    nop
    nop
    nop
    jr c, jr_05c_7996

jr_05c_7996:
    inc bc
    nop
    nop
    nop
    ldh [rP1], a
    jr nc, jr_05c_799e

jr_05c_799e:
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
    nop
    nop
    nop
    nop
    ccf
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
    nop
    nop
    nop
    nop
    nop
    rst $00
    rst $00
    rst $38
    di
    rst $38
    db $fd
    rst $38
    ld [$ddfe], a
    db $fc
    cp e
    db $fc
    ld c, e
    ret z

    or a
    adc b
    rst $30
    call z, Call_000_0cb7
    rst $38
    inc e
    rst $38
    ld a, $df
    ld a, [hl]
    push af
    ld b, b
    cp a
    ld [bc], a
    db $fd
    nop
    rst $38
    inc c
    ei
    ld de, $39ff
    rst $28
    ld h, l
    db $db
    ld a, b
    ret c

    inc bc
    ld [bc], a
    push bc
    cp e
    adc a
    pop af
    rrca
    ld hl, sp-$01
    ld bc, $ff80
    nop
    rst $38
    inc bc
    db $fc
    add e
    nop
    ret nz

    ld a, a
    rlca
    ld hl, sp+$3f
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_05c_7a20

jr_05c_7a20:
    stop
    nop
    nop
    jr nz, jr_05c_7a26

jr_05c_7a26:
    stop
    adc d
    nop
    inc bc
    nop
    ld bc, $7a00
    nop
    cp [hl]
    nop
    ld sp, hl
    nop
    xor l
    nop
    cp d
    nop
    push de
    nop
    jp c, $fe00

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
    ld a, a
    nop
    rst $18
    nop
    rra
    nop
    ld e, a
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld bc, $b000
    nop
    ld [$0000], sp
    nop
    add c
    nop
    ld bc, $0300
    nop
    nop

jr_05c_7a6d:
    nop
    inc c
    nop
    jr nz, jr_05c_7a72

jr_05c_7a72:
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_05c_7a7a

jr_05c_7a7a:
    jr jr_05c_7a7c

jr_05c_7a7c:
    ld [bc], a
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    ccf
    ld a, $fe
    db $fd
    pop af
    cp $f2
    db $fd
    ld a, [c]
    call $a758
    sbc b
    ld h, a
    jr nc, @-$2f

    jr nz, @-$1f

    jr nc, jr_05c_7a6d

    db $10
    rst $28
    db $10
    rst $38
    ld bc, $23ff
    call c, $e03f
    dec hl
    call nc, $fe03
    rlca
    ld hl, sp-$48
    ld b, a
    ret nc

    ld l, a
    and b
    rst $18
    add e
    ld a, h
    ldh [$e0], a
    ld c, $0d
    sub b
    rst $28
    adc e
    ld a, l
    inc [hl]
    call nz, Call_000_03fe
    nop
    rst $38
    ld [bc], a
    rst $38
    rrca
    db $fc
    add a
    nop
    add b
    rst $38
    ld d, a
    ld hl, sp-$80
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_05c_7aec

jr_05c_7aec:
    stop
    stop
    stop
    nop
    nop
    ld de, $4900
    nop
    dec [hl]
    nop
    and b
    nop
    ld e, c
    nop
    dec [hl]
    nop

Jump_05c_7b00:
    cp [hl]
    nop
    ld e, a
    nop
    ld d, a
    nop
    xor a
    nop
    ld a, a
    nop
    rst $18
    nop
    ld e, a
    nop
    jr c, @+$01

    rst $38
    nop
    rst $38
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
    rst $10
    nop
    push hl
    nop
    jr nc, jr_05c_7b24

jr_05c_7b24:
    nop
    nop
    stop
    nop
    nop
    nop
    nop
    ld l, a
    nop
    inc hl
    nop
    inc a
    nop
    jr nz, jr_05c_7b34

jr_05c_7b34:
    nop
    nop
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
    nop
    nop
    ld b, b
    ld b, b
    pop af
    or c
    pop af
    ldh a, [$fb]
    add sp, -$04
    db $e3
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    ld sp, hl
    rra
    rst $20
    ccf
    sbc $7e
    jp hl


    sub b
    rst $38
    ld a, b
    sub a
    or b
    rst $28
    ld hl, $e1fe
    ld e, $c1
    ld a, $07
    ld hl, sp+$07
    db $fc
    rrca
    db $fc
    ld e, $ec
    add b
    nop
    inc a
    ld [hl+], a
    ld bc, $01ff
    rst $38
    ldh [$e0], a
    ld c, $09
    ld [bc], a
    rst $38
    ld c, a
    rst $38
    ld e, $f8
    rlca
    rlca
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
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
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld de, $0a00
    nop
    ld de, $9c00
    nop
    ld b, d
    nop
    ld a, [bc]
    nop
    nop
    nop
    ld d, $00
    xor d
    nop
    dec [hl]
    nop
    cp d
    nop
    ld c, [hl]
    nop
    cp e
    nop
    dec [hl]
    nop
    ld a, a
    nop
    ccf
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
    nop
    rst $38
    rst $38
    nop
    rst $38
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
    ld e, a
    nop
    xor e
    nop
    stop
    ld b, h
    nop
    ld c, $00
    nop
    nop
    ld b, b
    nop
    nop
    nop
    rra
    nop
    ld [bc], a
    nop
    rst $28
    nop
    ld [bc], a
    nop
    stop
    jr jr_05c_7c1c

jr_05c_7c1c:
    nop
    nop
    ld bc, $0000
    ld bc, $0302
    ld bc, $0504
    ld b, $07
    ld [$0109], sp
    ld a, [bc]
    dec bc
    inc c
    inc c
    dec c
    ld bc, $0101
    ld bc, $0101
    ld c, $01
    ld bc, $100f
    ld de, $0c0c
    inc c
    ld bc, $1201
    ld bc, $0101
    ld bc, $0101
    ld bc, $1413
    dec d
    inc c
    inc c
    inc c
    ld d, $17
    jr @+$03

    ld bc, $0101
    ld bc, $1a19
    dec de
    inc e
    inc c
    inc c
    inc c
    dec e
    ld e, $1f
    jr nz, @+$03

    ld bc, $2221
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_05c_7c97

    inc c
    ld a, [hl+]
    dec hl
    inc l
    ld bc, $011e
    dec l
    ld l, $2f
    jr nc, jr_05c_7c86

    inc c
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_05c_7cbd

    ld a, [hl-]
    dec sp

jr_05c_7c86:
    inc a
    dec a
    inc c
    inc c
    inc c
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
    inc c

jr_05c_7c97:
    inc c
    inc c
    inc c
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
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, c
    ld h, c
    ld h, d
    ld h, e
    ld h, h

jr_05c_7cbd:
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
    ld [hl], e
    ld e, $74
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
    ld bc, $8584
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_05c_7db5

jr_05c_7db5:
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
    ld bc, $0101
    ld bc, $0000
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $2001
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld bc, $0202
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
    db $fc
    inc bc
    ret nz

    ccf
    ld bc, $01ff
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
    nop
    nop
    nop
    nop
    nop
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
    nop
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
    ld b, b
    nop
    ld b, b
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
    stop
    stop
    stop
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    inc b
    nop
    inc b
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
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0100
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
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    ld bc, $0300
    nop
    dec de
    nop
    inc d
    nop
    add hl, bc
    nop
    ld bc, $2f00
    nop
    cpl
    nop
    cp a
    nop
    rst $38
    nop
    pop af
    ld c, $e1
    ld e, $ef
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
    nop
    nop
    nop
    nop
    add b
    nop
    ldh a, [rP1]
    ld b, b
    nop

jr_05c_7f7a:
    ld b, b
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
    ld b, b
    nop
    ldh [rP1], a
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
    ret nz

    nop
    ret nz

    nop
    ld b, b
    nop
    ld b, c
    nop
    ld c, l
    nop
    ld b, [hl]
    nop
    ld l, a
    nop
    ld a, e
    nop
    ld a, e
    nop
    ld a, a
    nop
    ccf
    nop
    rra
    jr nz, jr_05c_7f7a

    nop
    ld a, a
    nop
    rst $38
    nop
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    stop
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
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld [$0400], sp
    nop
    ld [hl+], a
    nop
    ld b, a
    nop
    rst $08
    nop
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    ei
    inc b
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
