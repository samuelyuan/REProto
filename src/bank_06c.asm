SECTION "ROM Bank $06c", ROMX[$4000], BANK[$6c]

    rst $38
    nop
    rst $38
    nop
    cp a
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
    pop af
    ld c, $61
    sbc [hl]
    ld l, b
    sub a
    ld l, l
    sub d
    and c
    ld e, [hl]
    ld hl, $03de
    db $fc
    ld b, e
    cp h
    nop
    rst $38
    inc bc
    db $fc
    inc bc
    db $fc
    nop
    rst $38
    inc bc
    db $fc
    inc bc
    db $fc
    ld bc, $09fe
    cp $ff
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
    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [$03]
    ldh a, [rP1]
    ldh a, [rSB]
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    add b
    db $fc
    add c
    cp $40
    rst $38
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop

jr_06c_405d:
    rst $38
    add b

jr_06c_405f:
    rst $38
    add e
    ld a, h
    ret nz

    ccf
    pop bc
    ld a, $c5
    ld a, $e2
    rra
    ldh a, [rIF]
    ld hl, sp+$07
    sbc b
    rlca
    ld a, [$f905]
    ld b, $71
    adc a
    jr jr_06c_405f

    add hl, bc
    rst $30
    nop
    rst $38
    jr nz, jr_06c_405d

    nop
    rst $38
    adc b
    ld [hl], a
    ld c, d
    or l
    jr nc, @+$01

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc bc
    rst $38
    inc bc
    ld a, $00
    ld d, $00
    inc d
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    ld l, d
    nop
    ld e, d
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    rst $30
    nop
    rst $30
    nop
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    sbc a
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $30
    ld [$847b], sp
    jp c, Jump_06c_4625

    cp c
    ld bc, $04fe
    ei

Jump_06c_4100:
    inc e
    db $e3
    adc h
    ld [hl], e
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop

jr_06c_4111:
    rst $38
    ld b, b
    cp a
    ld c, b
    or a
    ldh a, [rIF]
    db $fc
    inc bc
    ld sp, hl
    ld b, $f3
    inc c
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    cp a
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rNR22]
    ld hl, sp+$23
    db $fc
    jr nc, @+$01

    jr @+$01

    nop
    rst $38
    adc a
    ld a, a
    rra
    rst $28
    and a
    ld e, a
    ld d, a
    xor a
    db $e3
    rra
    rst $38
    inc bc
    db $dd
    inc bc
    rst $18
    ld bc, $857a
    ld a, d
    add l
    jr c, jr_06c_4111

    ld e, b
    rst $20
    ld d, b
    rst $28
    ld [$04f7], sp
    ei
    nop
    rst $38
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
    cp $3d
    nop
    ld l, $00
    dec h
    nop
    jr c, jr_06c_4178

jr_06c_4178:
    jr nz, jr_06c_417a

jr_06c_417a:
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
    ld [bc], a
    nop
    ld b, $00
    ld b, $00
    inc bc
    nop
    ld bc, $0000
    nop
    add b
    nop
    add b
    nop
    ret nz

    nop
    pop hl
    nop
    db $ed
    nop
    rst $18
    nop
    rst $38
    nop
    ld a, a
    add b
    ei
    nop
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    cp $00
    cp b
    nop
    ld [hl], c
    nop
    jr nc, jr_06c_41b6

jr_06c_41b6:
    pop bc
    nop
    push bc
    nop
    push hl
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    cp $01
    rst $38
    nop
    db $fc
    inc bc
    cp $01
    cp $01
    db $fc
    inc bc
    ld sp, hl
    rlca
    ld hl, sp+$07
    ld a, [$f905]
    rlca
    db $fc
    inc bc
    pop af
    ld c, $fc
    inc bc
    pop af
    rrca
    db $fd
    inc bc
    db $ed
    inc de
    db $fc
    inc bc
    ld hl, sp+$07
    db $e4
    dec de
    ld [c], a
    dec e
    db $e4
    dec de
    or $0b
    ld [c], a
    rra
    ret c

    cpl
    ret nz

    ccf
    add [hl]
    ld a, c
    adc c
    ld a, a
    adc b
    ld a, a
    rrca
    rst $38
    rlca
    rst $38
    dec c
    rst $38
    rrca

jr_06c_4203:
    rst $38
    ld bc, $03ff
    rst $38
    ld e, e
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rra
    rst $38
    ld bc, $10ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr jr_06c_4203

    dec c
    ld a, [c]
    rst $30
    ld [$9669], sp
    ld l, c
    sub [hl]
    db $fd
    ld [bc], a
    adc $31
    ldh a, [rIF]
    ld hl, sp+$07
    ei
    inc b
    db $fd
    ld [bc], a
    rra
    ldh [$6f], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$e7]
    ld hl, sp-$0d
    db $fc
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
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
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
    nop
    add hl, de
    rst $38
    add c
    ld a, a
    or e
    rrca
    ldh [rIF], a
    inc [hl]
    rrca
    ld d, c
    cpl
    ld a, $01
    ld [bc], a
    ld bc, $0102
    ld bc, $0300
    nop
    ld [bc], a
    ld bc, $0106
    ld c, $00
    ld [$2b00], sp
    nop
    cpl
    nop
    jp Jump_06c_4100


    nop
    ld b, c
    nop
    ld l, e
    nop
    jp $a400


    nop
    rst $18
    nop
    rst $08
    nop
    add e
    nop
    sbc a
    nop
    xor a
    nop
    xor a
    nop
    cp a
    nop
    dec [hl]
    ld a, [bc]
    inc h
    ld [bc], a
    rra
    nop
    ld hl, sp+$06
    rst $30
    ld [$10ee], sp
    ld b, c
    inc a
    ld h, e
    inc e
    and a
    ld e, h
    inc sp
    db $fc
    ld d, e
    cp h
    ld h, e
    sbc h
    inc bc
    db $fc
    jp $d3fc


    db $ec
    ld d, a
    add sp, -$7d
    db $fc
    inc bc
    db $fc
    reti


    cp $79
    cp $bb
    db $fc
    reti


    cp $79
    cp $b0
    ld a, a
    ld h, c
    cp $01
    cp $c0
    ccf
    ld h, e
    sbc h
    add c
    cp $22
    db $fd
    add hl, sp
    cp $59
    cp $0d
    cp $49
    cp $ed
    cp $4b
    db $fc
    ld a, e
    db $fc
    ccf
    ld hl, sp+$39
    cp $fe
    db $fd
    db $fd
    cp $fc
    rst $38
    db $f4
    rst $38
    ldh [rIE], a
    add sp, -$09
    db $fc
    db $e3
    xor $f1
    xor $f1
    ldh a, [rIE]
    ld hl, sp-$01
    ld a, a
    rst $38
    ld e, a
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ldh [$1f], a
    ld [c], a
    dec e
    cp $01
    db $f4
    dec bc
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $18
    jr nz, jr_06c_436e

    ret nz

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
    ld [bc], a
    nop
    nop
    add b
    ld b, a
    ld hl, sp-$0d
    db $fc
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_06c_434f:
    rst $08
    rst $38
    pop bc
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rra
    ldh [$8f], a
    ldh a, [$e7]
    ld hl, sp-$0d
    db $fc
    pop af
    ld a, [hl]
    db $fd
    ld a, [hl]
    db $fc
    ccf
    cp $3f
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    inc bc

jr_06c_436e:
    rst $38
    inc bc
    db $dd
    ld [c], a
    or a
    ret z

    and l
    jp c, $d02f

    rra
    ldh [$1f], a
    ldh [$5f], a
    and b
    cp a
    ld b, b
    ld a, a
    add b
    cp $01
    ld a, h
    add e
    ld a, l
    add d
    rst $18
    nop
    db $dd
    ld [bc], a
    sbc c
    ld b, $9b
    inc b
    ccf
    nop
    or a
    ld [$0c93], sp
    sub h
    ld [$08b4], sp
    or l
    ld [$18a4], sp
    and a
    jr jr_06c_434f

    db $10
    ld l, d
    db $10
    adc $10
    db $ed
    db $10
    db $ec
    db $10
    xor h
    db $10
    db $e4
    db $10
    db $fc
    nop
    cp b
    nop
    inc l
    nop
    inc a
    nop
    ld a, [c]
    nop
    di
    nop
    ld c, a
    nop
    daa
    nop
    cp [hl]
    nop
    sbc [hl]
    nop
    xor h
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    ldh [rP1], a
    db $ec
    nop
    and $00
    jp nz, $d400

    nop
    db $dd
    nop
    db $fd
    nop
    cp $00
    and h
    nop
    cp h
    nop
    or b
    nop
    ret z

    nop
    add b
    nop
    add $00
    cp [hl]
    nop
    cp [hl]
    nop
    jp z, $db00

    nop
    jp c, $da00

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
    rst $38
    nop
    ld l, a
    add b
    rst $28
    nop
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
    ld a, a
    add b
    ld d, a
    and b
    ccf
    ret nz

    sbc a
    ldh [$9d], a
    ld [c], a
    set 6, h
    db $db
    db $e4
    pop hl
    cp $f8
    rst $38
    inc e
    rst $38
    ld e, $ff
    rlca
    rst $38
    ld hl, $80df

jr_06c_4427:
    ld a, a
    jp z, $f735

    ld [$0cf3], sp
    ld a, [hl]
    add c
    di
    inc c
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp a
    ld b, b
    cp $01
    rst $38
    nop
    nop
    nop
    ld [$0000], sp
    nop
    nop
    add b
    nop
    ret nz

    add b
    ldh a, [$c1]
    ld hl, sp-$20
    db $fc
    ld sp, hl
    cp $fc
    rst $38
    cp $3f
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    ld a, a
    add e
    ccf
    jp $f78b


    jp $e7ff


    rst $38
    sbc $00
    cp h
    nop
    sbc a
    nop
    sbc l
    nop
    sbc l
    nop
    sbc l
    nop
    sbc l
    nop
    cp a
    nop
    pop de
    ld [$10c9], sp
    adc b
    db $10
    jr z, @+$12

    ld l, b
    db $10
    rst $28
    db $10
    ld l, [hl]
    db $10
    inc c
    jr nc, jr_06c_44ea

jr_06c_4491:
    jr nz, jr_06c_4491

    nop
    inc a
    nop
    sbc b
    jr nz, jr_06c_4427

    jr nc, jr_06c_44f3

    jr nz, @+$6a

    nop
    ld a, b
    nop
    stop
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
    ld h, b
    nop
    jr nz, jr_06c_44b0

jr_06c_44b0:
    jr jr_06c_44b2

jr_06c_44b2:
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b

Call_06c_44bb:
    nop
    ld [bc], a
    nop
    ld [bc], a
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
    ld bc, $0100
    nop
    ld bc, $e200
    nop
    and h
    nop
    inc [hl]
    nop
    jr jr_06c_44dc

jr_06c_44dc:
    ld [$0800], sp
    nop
    ld [$1c00], sp
    nop
    jr c, jr_06c_44e6

jr_06c_44e6:
    ld a, b
    nop
    ld e, b
    nop

jr_06c_44ea:
    ld hl, sp+$00
    add sp, $00
    ld hl, sp+$00
    db $fc
    nop
    ei

jr_06c_44f3:
    inc b
    rst $08
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
    db $fc
    nop
    db $fc
    nop
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    ld a, a
    nop
    ccf
    nop
    sbc a
    nop
    push af
    nop
    call $b900
    ret nz

    rst $38
    ret nz

    cp a
    ld [hl], b
    rst $08
    jr c, @-$07

    inc c
    rst $38
    ld [bc], a
    rst $00
    add hl, sp
    rst $38
    nop
    ld e, l
    and d
    adc a
    ld [hl], b
    pop bc
    ld a, $fb
    inc b
    di
    inc c
    db $fd
    ld [bc], a
    db $fc
    inc bc
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, @+$01

    nop
    nop
    nop
    ld [bc], a
    add b
    adc h
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [$8b], a
    nop
    add c
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    dec b
    nop
    inc bc
    nop
    add h
    ld [bc], a
    ld a, [bc]
    nop
    inc c
    nop
    inc h
    nop
    inc h
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
    inc bc
    nop
    ld b, $00
    db $ec
    nop
    jr jr_06c_45a4

jr_06c_45a4:
    stop
    stop
    stop
    jr nc, jr_06c_45ac

jr_06c_45ac:
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0f00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    db $fd

jr_06c_45c1:
    ld [bc], a
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
    rst $38
    nop
    cp $01
    rst $30
    ld [$00ff], sp
    cp a
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    ret nc

    nop
    sbc b
    ld b, b
    sbc b
    ret nz

    ld a, [$fc40]
    jr nz, jr_06c_45c1

    jr nc, @-$01

    inc c
    rst $38
    ld [bc], a
    cp a
    ld b, c
    rst $28
    db $10
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    ld e, a
    and b
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
    rst $18
    jr nz, @+$01

    nop
    rst $38
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

Jump_06c_4625:
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    inc b
    ld e, $1f
    jr nz, jr_06c_4654

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_06c_4664

    ld a, [hl+]
    dec hl
    inc l
    inc b
    dec l
    ld l, $2f
    jr nc, jr_06c_4675

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

    ld a, [hl-]
    inc bc
    inc b
    dec sp
    inc a
    dec a
    ld d, $3e

jr_06c_4654:
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l

jr_06c_4664:
    ld c, [hl]
    ld c, a
    ld d, $50
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
    ld e, l

jr_06c_4675:
    ld e, [hl]
    ld e, a
    ld d, $16
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    inc b
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld d, $6a
    ld l, e
    ld d, $6c
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld c, $27
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
    ld h, a
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
    ld d, $16
    ld d, $94
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc c
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
    xor b
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
    or [hl]
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
    jp nz, $b6c3

    or [hl]
    or [hl]
    call nz, $c6c5
    rst $00
    ret z

    ret


    jp z, $cccb

    call $c2b6
    adc $cf
    rst $08
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
    db $dd
    db $dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    inc b
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$ebb6], a
    db $ec
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
    jr jr_06c_4765

    ld a, [de]
    dec de
    inc e
    dec e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $01
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_06c_4765:
    nop
    nop
    nop
    nop
    ld b, $01
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $01
    nop
    nop
    nop
    nop
    nop
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
    dec b
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
    nop
    jr nz, jr_06c_47f0

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_06c_47e9

jr_06c_47e9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_06c_47f0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$0808], sp
    ld [$0808], sp
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld d, $ff
    nop
    rst $38
    ret nz

    rst $38
    ret nc

    rst $38
    db $f4
    rst $38
    jr nc, @+$01

    nop
    rst $38
    ld b, $f9
    db $e3
    jr jr_06c_490e

    sbc b
    rst $20
    jr jr_06c_48dc

    ret nc

    xor a
    ld d, b
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

jr_06c_48d1:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_06c_48dc:
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    ei
    inc b
    rst $30
    ld [$00fd], sp
    db $fc
    nop
    cp $00
    ld a, [c]
    nop
    pop af
    nop
    ld a, [$d200]
    jr nz, jr_06c_48d1

    jr nz, jr_06c_4975

    add b
    rst $38
    nop
    rst $00
    nop
    db $e4
    nop
    ld a, [c]
    nop
    sbc $00
    rst $30
    nop
    ld a, [$9a00]
    nop
    db $ec
    nop
    cp h
    ld b, b
    rst $38
    nop

jr_06c_490e:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [hl], a
    adc b
    or a
    ld c, b
    ld h, d
    sbc l
    rst $30
    ld [$08f7], sp
    inc e
    nop
    add hl, sp
    nop
    ld e, h
    nop
    call c, Call_06c_5d00
    nop
    cp $00
    nop
    rst $38
    nop
    rst $38
    call Call_06c_7f32
    nop
    ret nz

    ccf
    rst $38
    nop
    ld a, a
    add b
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
    rst $38
    rst $38
    rst $38
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
    ldh [rIE], a
    ld b, b
    cp a
    ld bc, $08fe
    rst $30
    nop
    rst $38
    inc bc
    db $fc
    ld a, a
    add b
    db $fd
    inc bc
    rst $20
    rra
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    cp $ef
    ldh a, [$9f]
    ldh [$7f], a
    add b
    rst $38
    nop
    rst $38

jr_06c_4975:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_06c_4986:
    rst $38
    nop

jr_06c_4988:
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
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
    ld b, $f8
    jr jr_06c_4986

    jr jr_06c_4988

    sub b
    ld h, b
    or b
    ld b, b
    or b
    ld b, b

jr_06c_49ae:
    ld d, b
    add b
    ldh [rP1], a
    ret nz

    nop
    jp $c700


    nop
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $08
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $08
    nop
    ld [c], a
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    db $e3
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ld [hl], b
    nop
    jr jr_06c_49ec

jr_06c_49ec:
    ld [$0800], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    pop bc
    nop
    pop af
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
    cp a
    ld b, b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    ld b, b
    nop
    jr nz, jr_06c_4a24

jr_06c_4a24:
    nop
    nop
    ld bc, $0000
    nop
    add b
    nop
    jr z, jr_06c_49ae

    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    dec b
    ld a, [$004d]
    cp $01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$c0ff]
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl+], a
    db $dd
    cp [hl]
    ld b, c
    ld b, c
    cp [hl]
    inc a
    jp $0ff7


    cp a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    cp $ef
    ldh a, [$7f]
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
    inc bc
    rst $38
    nop
    jr @+$01

    nop
    rst $38
    jr @+$01

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
    nop
    ld b, a
    nop
    ld b, [hl]
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
    nop
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    db $e4
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    rst $38
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
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
    ld bc, $0600
    nop
    ld a, [hl-]
    nop
    ld b, d
    nop
    ld b, d
    nop
    add d
    nop
    add e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc c
    nop
    ld [$0800], sp
    nop
    stop
    stop
    jr nz, jr_06c_4af4

jr_06c_4af4:
    jr nz, jr_06c_4af6

jr_06c_4af6:
    ld b, b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    xor $10
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld [$0000], sp
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_06c_4b1c

jr_06c_4b1c:
    nop
    nop
    nop
    rst $38
    rrca
    ldh a, [$1f]
    ldh [$eb], a
    inc d
    jp nc, $3f2f

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $e3
    rst $38
    ld a, a
    rst $38
    nop
    rst $38

jr_06c_4b40:
    ld [$0ff7], sp
    ldh a, [$8f]
    ld [hl], b
    inc bc
    rst $38
    sbc a
    ld a, a
    rst $38
    rst $38
    rst $38

jr_06c_4b4d:
    rst $38
    ld sp, hl
    cp $cf
    ldh a, [$3f]
    ret nz

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
    rst $10
    jr z, jr_06c_4b40

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
    jr nz, jr_06c_4b4d

    ret c

    daa
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
    inc bc
    db $fc
    add hl, hl
    ret nc

    sbc b
    ld b, b
    ret nc

    nop
    ld b, b
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    cp $00
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
    ld bc, $0200
    nop
    inc b
    nop
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
    add b
    nop
    ld b, b
    nop
    ld h, b
    nop
    jr nz, jr_06c_4bc8

jr_06c_4bc8:
    jr nz, jr_06c_4bca

jr_06c_4bca:
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
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
    nop
    nop
    nop
    ld bc, $0200
    nop
    inc b
    nop
    ld [$1000], sp
    nop
    jr nz, jr_06c_4bf2

jr_06c_4bf2:
    nop
    nop
    add b
    nop
    ldh [rP1], a
    or b
    ld b, b
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

jr_06c_4c0d:
    nop
    nop
    rst $38
    cp a
    ld b, b
    rst $38
    nop
    sub e
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
    rst $38
    rst $38
    rst $38
    di
    db $fc
    db $ed
    ld a, [c]
    add l
    ld a, [$fc83]
    db $e3
    db $fc
    rra
    rst $38
    dec hl
    rst $10
    rst $08
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    adc $f1
    jr nc, jr_06c_4c0d

    rst $38
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
    jr nz, @-$1f

    jr nz, jr_06c_4c5b

    pop af
    ld a, h
    add e
    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld e, e

jr_06c_4c5b:
    and h
    rst $38
    nop
    rst $30
    nop
    ld b, e
    jr nz, jr_06c_4cc4

    nop
    ld h, e
    nop
    ld hl, $2100
    nop
    jr nz, jr_06c_4c6c

jr_06c_4c6c:
    jr nz, jr_06c_4c6e

jr_06c_4c6e:
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
    ret nz

    nop
    and [hl]
    nop
    cp a
    nop
    ld c, a
    nop
    ld c, a
    nop
    dec a
    nop
    rlca
    nop
    inc bc
    nop
    rlca
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
    inc bc
    nop
    inc c
    nop
    ldh a, [rP1]
    add b
    nop
    add b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld h, b
    nop
    stop
    ld [$0800], sp
    nop
    ld [hl], h
    nop
    add d
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

jr_06c_4cc4:
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
    ldh [rP1], a
    ld hl, sp+$00
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
    rst $38
    nop
    nop
    rst $38
    adc a
    nop
    rst $28
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
    rst $38
    rst $38
    rst $38
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
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    ld a, e
    db $fc
    rst $30
    ld [$06f9], sp
    rst $38
    nop
    rst $18
    jr nz, @+$0a

    rst $30
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    ld [$07ff], sp
    ld hl, sp+$3f
    ret nz

    rst $38
    nop
    cp $00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ld hl, sp+$00
    ldh [rP1], a
    ld h, b
    nop
    ld h, b
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
    ld b, e
    nop
    ld l, a
    nop
    ei
    nop
    ld a, a
    nop
    db $db
    nop
    rst $38
    nop
    rst $38
    nop
    cp e
    nop
    ret nc

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
    nop
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
    nop
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
    ld b, $00
    ld b, $00
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
    nop
    rra
    ldh [$34], a
    ldh a, [$fc]
    ldh a, [$fe]
    ldh a, [$fe]
    ldh a, [rIE]
    ldh a, [rIE]
    ret nz

    adc a
    nop
    sbc $00
    ld h, b
    sbc a
    ld [hl], c
    adc [hl]
    rst $28
    db $10
    or e
    inc c
    ld hl, sp+$07
    ret nc

    cpl
    inc h
    db $db
    nop
    rst $38
    cp $ff
    dec l
    db $d3
    ld sp, hl
    ld b, $5c
    and e
    ld a, b
    add a
    inc e
    db $e3
    ld b, b
    cp a
    add h
    ld a, e
    ld a, [$e205]
    dec e
    ld a, b
    add a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $00
    jr c, @+$01

    nop
    rst $38
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
    db $fc
    inc bc
    rst $38
    nop
    rst $28
    db $10
    rst $20
    jr @+$01

    nop
    cp a
    ld b, b
    cp a
    ld b, b
    ld a, a
    add b
    ccf
    ret nz

    ld bc, $00ff
    rst $38
    add hl, de
    and $ff
    nop
    ld a, [hl]
    nop
    ld e, $00
    rra
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    ld [$0800], sp
    nop
    ld [$0700], sp
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
    nop
    nop
    nop
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
    pop af
    nop
    cp [hl]
    nop
    call nc, $2c00
    nop
    jr z, jr_06c_4e64

jr_06c_4e64:
    ldh a, [rP1]
    jr nc, jr_06c_4e68

jr_06c_4e68:
    stop
    stop
    stop
    stop
    stop
    stop
    inc e
    nop
    ld [bc], a
    nop
    ld bc, $0000
    nop
    ldh a, [rP1]
    inc c
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
    pop af
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    db $fd
    ld [bc], a
    adc e
    inc b
    add a
    nop
    and [hl]
    nop
    or [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    add hl, sp
    add $39
    add $01
    cp $00
    rst $38
    rst $38
    rst $38
    or h
    ld c, e
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    db $10
    rst $28
    ld [bc], a
    db $fd
    nop
    rst $38
    ld [bc], a
    db $fd
    ld bc, $80fe
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
    ldh a, [rIE]
    ld a, [hl]
    add c
    cp a
    nop
    rra
    nop
    inc bc
    nop
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
    nop
    nop
    nop
    nop
    add b
    nop
    ld [hl], b
    nop
    ld [$0b00], sp
    nop
    dec c
    nop
    ld de, $3100
    nop
    ld b, c
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
    ret nz

    nop
    jr nz, jr_06c_4f3e

jr_06c_4f3e:
    stop
    stop
    sub b
    nop
    ld d, b
    nop
    jr nc, jr_06c_4f48

jr_06c_4f48:
    inc c
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
    nop
    nop
    inc c
    nop
    ld a, [de]
    nop
    ld [hl], b
    nop
    ld hl, sp+$00
    db $ec
    db $10
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $30
    ld [$00ff], sp
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sbc a
    ld h, b
    cp a
    ld b, b
    rst $38
    nop
    or a
    ld [$02bd], sp
    sbc a
    nop
    cp a
    nop
    cp $00
    cp $00
    ld a, e
    add h
    sub b
    rst $28
    ld a, a
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $78
    add a
    jp nc, Jump_000_002d

    rst $38
    add b
    ld a, a
    ld [de], a
    db $ed
    db $10
    rst $28
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    rlca
    ld hl, sp+$09
    ldh a, [rNR24]
    ldh [rNR23], a
    ldh [rNR42], a
    ret nz

    and c
    ld b, b
    and b
    ld b, b
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ret nz

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
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    inc b
    nop
    ld a, b
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
    add b
    nop
    add b
    nop
    ld b, b
    nop
    ld h, b
    nop
    jr jr_06c_4ff6

jr_06c_4ff6:
    ld b, $00
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
    ld b, b
    nop
    ld b, b
    nop
    jr c, jr_06c_500a

jr_06c_500a:
    inc b
    nop
    inc b
    nop
    ld [bc], a
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
    add b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld [hl], b
    nop
    stop
    inc e
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
    nop
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
    pop bc
    nop
    reti


    nop
    cp e
    ld b, h
    cp a
    ld b, b
    cp a
    ld b, b
    cp $01
    cp $01
    cp $01
    cp $01
    adc $31
    or $09
    db $e4
    dec de
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $f4
    dec bc
    db $f4
    dec bc
    nop
    rst $38
    add b
    rst $38
    pop hl
    rst $38
    rra
    rst $38
    ret nz

    ccf
    adc h
    ld [hl], e
    add h
    ld a, e
    ld [bc], a
    db $fd
    rrca
    ldh a, [$3c]
    jp $f30c


    nop
    rst $38
    ld c, $f1
    db $fc
    inc bc
    nop
    rst $38
    rlca
    ld hl, sp+$4b
    or h
    xor d
    ld d, l
    xor $11
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    sbc l
    nop
    adc c
    nop
    sub d
    nop
    adc h
    nop
    ld [bc], a
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0600
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
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
    rst $38
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
    inc b
    nop
    inc b
    nop
    ld [$1800], sp
    nop
    jr nz, jr_06c_50f0

jr_06c_50f0:
    jr nz, jr_06c_50f2

jr_06c_50f2:
    ld b, b
    nop
    add b
    nop
    nop
    nop
    ret nz

    nop
    jr nz, jr_06c_50fc

jr_06c_50fc:
    jr nz, jr_06c_50fe

jr_06c_50fe:
    stop
    stop
    stop
    stop
    stop
    ld c, $00
    inc bc
    nop
    ld bc, $0100
    nop
    ld bc, $0600
    nop
    sbc b
    nop
    ld [hl], b
    nop
    ld c, $00
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld [bc], a
    nop
    inc bc
    nop
    rst $00
    nop
    ld c, [hl]
    ld bc, $0f70
    ld [hl], b
    rrca
    jr @+$09

    jr c, @+$09

    ld a, b
    rlca
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    ld sp, hl
    ld b, $f9
    ld b, $f0
    rrca
    ld d, b
    xor a
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    nop
    rst $38
    nop

jr_06c_514d:
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ei
    rst $38
    rlca
    rst $38
    add b
    ld a, a
    jr nz, jr_06c_514d

    inc h
    db $db
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc h
    db $db
    db $10
    rst $28
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    adc h
    ld [hl], e
    sbc $21
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    ccf
    ret nz

    rra
    ldh [$fd], a
    ld [bc], a
    ld a, [c]
    dec c
    push hl
    ld a, [de]
    cp [hl]
    ld b, c
    push hl
    ld a, [de]
    ret z

    scf
    sbc h
    inc hl
    ld h, h
    inc bc
    ld h, [hl]
    ld bc, $0037
    or a
    nop
    dec h
    ld [bc], a
    scf
    nop
    rst $00
    nop
    inc bc
    nop
    add e
    nop
    ld b, d
    nop
    ld b, [hl]
    nop
    add $00
    ld [bc], a
    nop
    ld [$0000], sp
    nop
    nop
    nop
    ld bc, $6000
    nop
    add b
    nop
    ld [$0700], sp
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    nop
    dec b
    nop
    inc bc
    nop
    stop

jr_06c_51dc:
    add b
    nop
    add c
    nop
    adc a
    nop
    adc h
    nop
    or [hl]
    nop
    ldh [rP1], a
    and b
    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rSB]
    db $fc
    ld bc, $49b6
    and [hl]
    ld e, c
    call nz, $c43b
    dec sp
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld hl, sp+$1c
    rst $20
    inc a
    rst $00
    inc a
    rst $08
    inc a
    rst $08
    inc a
    rst $08
    inc a
    rst $08
    inc a
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    inc a
    rst $08
    inc a
    rst $08
    inc a
    rst $08
    inc a
    rst $08
    inc a
    rst $08
    inc a
    rst $08
    inc a
    rst $08
    inc a
    rst $08
    inc a
    rst $08
    inc a
    rst $08
    inc a
    rst $08
    inc a
    rst $08
    inc a
    rst $08
    inc a
    rst $08
    inc a
    rst $08
    inc a
    rst $08
    inc a

jr_06c_5237:
    rst $08
    db $fc
    rst $08
    inc a
    rst $08
    inc a
    rst $08
    inc a
    rst $08
    inc a
    rst $08
    inc a
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    nop
    rst $38
    inc [hl]
    set 0, e
    inc a
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    rst $38
    nop
    rst $08
    jr nc, jr_06c_51dc

    ld a, h
    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    add [hl]
    ld a, c
    rst $08
    jr nc, @+$55

    xor h
    jr nc, jr_06c_5237

    db $ec
    inc de
    ret nc

    cpl
    ld b, b
    ccf
    pop hl
    ld e, $f7
    ld [$0c13], sp
    ld h, c
    ld e, $fb
    inc b
    scf
    ld [$1c82], sp
    ld a, [hl-]
    inc b
    ld [de], a
    inc c
    rra
    nop
    rra
    nop
    rra
    nop
    or e
    inc c
    ld d, d
    inc c
    ld e, $00
    ld e, [hl]
    nop
    ld a, [c]
    inc c
    ldh a, [$0c]
    and $18
    sbc a
    nop
    rst $18
    nop
    ret c

    nop
    ld bc, $0300
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0c00], sp
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
    ld bc, $0000
    nop
    nop
    nop
    ld [$0800], sp
    nop
    ld a, [hl]
    nop
    rra
    nop
    stop
    ret z

    nop
    add b
    nop
    rlca
    nop
    ld a, [hl-]
    nop
    db $e3
    nop
    pop bc
    nop
    ld a, e
    nop
    inc a
    nop
    ld bc, $0100
    ld h, b
    ld [bc], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$03
    ld hl, sp+$01
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    ld a, a
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
    nop
    rst $38
    add $bd
    add $ff
    nop
    rst $38
    nop
    rst $38
    ret nz

    cp a
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    cp a
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    cp a
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    db $fc
    jr nz, @+$01

    add b
    ld a, a
    db $fc
    inc bc
    ld hl, sp+$07
    ld a, a
    add b
    ld a, c
    add [hl]
    ld sp, hl
    ld b, $db
    inc h
    cp $01
    rst $38
    nop
    rst $38
    nop
    ldh [$1f], a
    ld b, b
    sbc a
    ld d, b
    adc a
    ld l, b
    add a
    ld [$fcc7], sp
    inc bc
    xor h
    inc bc
    xor h
    inc bc
    ld c, b
    rlca
    ldh [rTAC], a
    ld e, b
    rlca
    ld l, b
    rlca
    inc [hl]
    inc bc
    ld b, $01
    inc de
    nop
    ld e, d
    ld bc, $012a
    sbc a
    nop
    add l
    nop
    dec e
    nop
    rst $18
    nop
    nop
    nop
    nop
    nop
    ld l, b
    nop
    ld e, $00
    ld b, h
    nop
    sub a
    nop
    ld b, $00
    add h
    nop
    cpl
    nop
    add l
    nop
    dec h
    nop
    ld b, a
    nop
    ld c, $00
    rst $00
    nop
    rst $00
    nop
    ld [hl], l
    nop
    ld c, $00
    add [hl]
    nop
    ld b, h
    nop
    ld b, b
    nop
    ret nc

    nop
    cp l
    nop
    xor h
    nop
    jr z, jr_06c_539a

jr_06c_539a:
    rst $38
    nop
    ld h, a
    nop
    dec sp
    nop
    inc hl
    nop
    ld a, a
    nop
    db $fd
    nop
    daa
    nop
    ld c, c
    nop
    ld a, e
    nop
    and e
    nop
    ld h, c
    nop
    sub a
    nop
    ld e, a
    nop
    rst $38
    nop
    db $ed
    ld [bc], a
    cp $01
    ld c, e
    nop
    xor $01
    xor $11
    cp a
    nop
    db $76
    ld bc, $00c1
    and e
    inc b
    add c
    ld a, [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop

jr_06c_53d9:
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
    jr nc, jr_06c_53d9

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
    rst $38
    nop
    rst $38
    nop
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
    cp a
    ld a, a
    nop
    rst $38
    ld c, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add sp, $17
    db $fc
    inc bc
    ei
    inc b
    rst $30
    ld [$04fb], sp
    di
    inc c
    ld [bc], a
    db $fd
    ld bc, $43fe
    cp h
    ld [hl+], a
    db $dd
    ld [$54f7], sp
    xor e
    ld e, [hl]
    and c
    ld e, [hl]
    and c
    inc l
    db $d3
    ld b, $f9
    ld [bc], a
    db $fd
    nop
    rst $38
    ld [de], a
    db $ed
    inc b
    ei
    sbc [hl]
    ld h, c
    rra
    ldh [$ce], a
    ld sp, $3fc0
    pop bc
    ld a, $81
    ld a, [hl]
    and c
    ld e, [hl]
    ld bc, $91fe
    ld l, [hl]
    ld bc, $837e
    ld a, h
    add e
    ld a, h
    ld b, e
    inc a
    ld b, e
    inc a
    ld [bc], a
    inc a
    and d
    inc e
    inc hl
    inc e
    inc hl
    inc e
    db $e3
    inc e
    and e
    inc e
    and e
    inc e
    ld b, e
    inc e
    dec de
    inc b
    sub [hl]
    nop
    or $00
    ccf
    nop
    ld a, a
    nop
    rst $38
    nop
    dec bc
    nop
    ld b, $00
    db $fc
    nop
    ld d, a
    nop
    xor c
    nop
    xor a
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop

jr_06c_5486:
    rst $18
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
    ld l, a
    db $10
    rst $18
    jr nz, jr_06c_5486

    db $10
    rst $30
    ld [$1ae5], sp
    or [hl]
    add hl, bc
    jp hl


    ld b, $fa
    dec b
    call c, $cc23
    inc sp
    adc h
    ld [hl], e
    add b
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
    nop
    rst $38
    add $bd
    add $ff
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
    ld a, [bc]
    push af
    ld bc, $28fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    dec l
    jp nc, $0ef1

    pop bc
    ld a, $c0
    ccf
    di
    inc c
    ld sp, hl
    ld b, $7b
    add h
    ld a, e
    add h
    dec sp
    call nz, $04fb
    rst $38
    nop
    dec sp
    call nz, $04fb
    ld a, h
    add e
    ld [hl], a
    add b
    rst $38
    nop
    rst $38
    nop
    ld h, a
    add b
    cp a
    ld b, b
    rst $38
    nop
    ld a, a
    add b
    rst $08
    nop
    cp a
    nop
    ld [hl], a
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
    nop
    rst $28
    db $10
    ld d, a
    jr z, @+$01

    nop
    db $fd
    ld [bc], a
    ld a, [hl]
    ld bc, $00ff
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    or a
    nop
    rst $38
    nop
    ccf
    nop
    ld a, a
    nop
    cp a
    nop
    rst $18
    nop
    rst $08
    nop
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
    rst $28
    db $10
    cp $01
    cp a
    ld b, b
    db $fd
    ld [bc], a
    db $ed
    ld [de], a
    db $fd
    ld [bc], a
    rst $30
    ld [$04fb], sp
    ld [hl], e
    adc h
    db $e3
    inc e
    pop bc
    ld a, $c0
    ccf
    ret nz

    ccf
    ret nz

    ccf
    add b
    ld a, a
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
    ld sp, $31ef
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    cp $ff
    rst $38
    rst $38
    dec bc
    rst $30
    adc b
    ld a, a
    db $10
    rst $28
    inc b
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

Call_06c_55ab:
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, e
    add b
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
    db $fd
    nop
    rst $38
    nop
    cp a
    nop
    or a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    or $00
    rst $38
    nop
    rst $30
    nop
    rst $28
    nop
    ld l, [hl]
    add c
    xor $01
    cp $01
    xor a
    nop
    cp h
    inc bc
    ld l, a
    add b
    db $fd
    ld [bc], a
    rst $28
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    cp $01
    db $fd
    ld [bc], a
    cp $01
    db $ed
    ld [bc], a
    db $fc
    inc bc
    cp $01
    db $fc
    inc bc
    cp $01
    cp $01
    ld a, h
    inc bc
    db $fc
    inc bc
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    rst $38
    nop
    ccf
    ret nz

    cp a
    ld b, b
    cp l
    ld b, d
    rst $38
    nop
    ccf
    ret nz

    cp a
    ld b, b
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    rst $38
    nop
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    nop
    ccf
    ret nz

    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    jr c, @+$03

    ld c, $19
    and $1d
    ld a, [c]
    dec e
    ld a, [c]
    dec e
    ld a, [$fa1d]
    ld e, $f9
    rra
    ld hl, sp-$01
    ld hl, sp-$02
    ld sp, hl
    ld e, $f9
    sbc [hl]
    ld a, c
    sbc [hl]
    ld sp, hl
    ld e, $f9
    ld e, $f9
    sbc [hl]
    ld a, c
    sbc [hl]
    ld sp, hl
    ld e, $f9
    ld e, $f9
    sbc [hl]
    ld a, c
    sbc [hl]
    ld sp, hl
    ld e, $f9
    ld e, $f9
    sbc [hl]
    ld a, c
    sbc [hl]
    ld sp, hl
    ld e, $f9
    rst $38
    rst $38
    rst $38
    rst $38
    sub c
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
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    ld a, b
    add a
    rst $28
    nop
    rst $38
    nop
    ld a, [$e800]
    nop
    ld hl, sp+$00
    pop af
    nop
    ld sp, hl
    nop
    pop af
    nop
    db $eb
    nop
    db $e3
    nop
    pop hl
    nop
    jp hl


    nop
    db $fd
    nop
    ld sp, hl
    nop
    db $eb
    nop
    db $eb
    nop
    rst $28
    nop
    xor $00
    cp $00
    cp $00
    cp $00
    rst $38
    nop
    rst $28
    nop
    rst $38
    nop
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
    ld e, a
    and b
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    nop
    cp $01
    rst $38
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
    nop
    xor $11
    rst $28
    db $10
    di
    inc c
    ld [hl], a
    adc b
    rst $30
    ld [$00ff], sp
    swap h
    ld l, a
    sub b
    ei
    inc b
    ei
    inc b
    ld [hl], e
    adc h
    ld [hl], e
    adc h
    ld l, a
    sub b
    ld h, e
    sbc h
    xor e
    ld d, h
    ei
    inc b
    db $d3
    inc l
    db $d3
    inc l
    add $39
    jp nz, $c63d

    add hl, sp
    or [hl]
    ld c, c
    ld b, c
    cp [hl]
    inc bc
    db $fc
    nop
    rst $38
    ld bc, $00fe
    rst $38
    ld bc, $07fe
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec b
    ld a, [$f609]
    db $10
    rst $28
    db $10
    rst $28
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
    ld b, d
    cp a
    ld b, d
    cp a
    nop
    rst $38
    db $10
    rst $28
    ld d, b
    xor a
    and b
    ld e, a
    ld b, b
    cp a
    ret nz

    ccf
    ret nz

    cp a
    ret nz

    rst $38
    ret nz

    rst $38
    ldh a, [$6f]
    jr nc, @+$01

    ld a, b
    sbc a
    ld e, h
    cp a
    ld c, $ff
    ld b, $ff
    inc bc
    rst $38
    ld bc, $efff
    nop
    ld a, a
    nop
    rst $30
    nop
    di
    nop
    rst $20
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $30
    nop
    ld e, e
    nop
    ld e, a
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
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
    nop
    rst $18
    nop
    rst $38
    nop
    cp a
    nop
    ld sp, hl
    nop
    rst $38
    nop
    db $fc
    nop
    ld hl, sp+$00
    db $fc
    nop
    ei
    nop
    ei
    nop
    db $eb
    nop
    rst $38
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
    rst $28
    nop
    db $fd
    nop
    rst $38
    nop
    ei
    nop
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    ld a, c
    ld b, $c8
    scf
    pop bc
    ld a, $ec
    inc de
    or $09
    ldh a, [rIF]
    cp b
    ld b, a
    ld b, h
    cp e
    ld h, c
    sbc [hl]
    and e
    ld e, h
    and h
    ld e, d
    pop bc
    ld a, $e9
    ld d, $ff
    nop
    rst $38
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
    rst $30
    ld [$00ff], sp
    db $eb
    db $10
    rst $38
    nop
    ccf
    ret nz

    rst $18
    jr nz, jr_06c_5824

    ldh a, [$ad]
    ld d, d
    xor l
    ld d, d
    ld sp, hl
    ld b, $bc
    ld b, e
    ld a, [hl]
    add c
    ld a, a

jr_06c_5821:
    add b
    rst $28
    db $10

jr_06c_5824:
    ccf
    ret nz

    rst $38
    nop
    ld l, a
    sub b
    rra
    ldh [$37], a
    ret z

    inc de
    db $ec
    inc hl
    call c, $d827
    ld de, $0eee
    pop af
    rlca
    ld hl, sp+$0d
    ld a, [c]
    daa
    ret c

    ld [bc], a

jr_06c_583f:
    db $fd
    ld b, h
    cp e
    ld [$00f7], sp
    rst $38
    ld hl, $01de
    cp $04
    ei
    ld bc, $10fe
    rst $28
    jr nc, jr_06c_5821

    db $10
    rst $28
    dec d
    ld [$fe01], a
    ld bc, $01fe
    cp $05
    ld a, [$fe81]
    add c
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    add b
    rst $38
    rlc b
    rst $08
    nop
    rst $20
    nop
    rst $00
    nop
    rst $20
    nop
    rst $00
    nop

jr_06c_587c:
    push hl
    nop
    rst $20
    nop
    jp $c100


    nop
    jp $e500


    nop
    rst $38
    nop
    db $db
    nop
    rst $18
    nop
    db $fd
    ld [bc], a
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $d3
    nop
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp $00
    rst $38
    nop
    rst $28
    nop
    sbc a
    nop
    db $dd
    nop
    rst $18
    nop
    ld d, [hl]
    adc b
    ld l, a
    add b
    cp [hl]
    ld b, b
    rst $30
    nop
    rst $28
    db $10
    push hl
    jr jr_06c_583f

    jr jr_06c_587c

    nop
    sbc l
    ld [bc], a

jr_06c_58c0:
    call $9902
    ld b, $af
    nop
    db $ec
    inc bc
    ld a, [hl]
    add c
    ld e, l
    add b
    ld a, c
    add b
    cp l
    nop
    ld sp, hl
    nop
    ld l, a
    sub b
    ld a, e
    add b
    rst $38
    nop
    db $fd
    nop
    rst $30
    ld [$00ff], sp
    rst $18
    jr nz, jr_06c_58c0

    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    db $dd
    nop
    rst $38
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    or $00
    rst $30
    nop
    ld a, a
    add b
    cp $01
    rst $38
    nop
    di
    nop
    rst $28
    db $10
    rst $38
    nop
    rst $30
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
    rst $28
    db $10
    sbc e
    ld h, h
    ret c

    daa
    add hl, sp
    add $3b
    call nz, $9867
    cp $01
    ei
    nop
    rst $38

jr_06c_591f:
    nop
    ld a, [c]
    dec c
    and $19
    cp $01
    cp [hl]
    ld b, c
    rst $18
    jr nz, jr_06c_591f

    dec bc
    db $fc
    inc bc
    cp $01
    cp $01
    adc $31
    cp $01
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    cp $01
    cp [hl]
    ld b, c
    ld e, h
    and e
    ld d, [hl]
    xor c
    ld d, [hl]
    xor c
    sbc b
    ld h, a
    ld hl, sp+$07
    ret c

    daa
    sbc d
    ld h, l
    xor $11
    cp $01
    ld e, d
    and l
    ld a, b
    add a
    inc a
    jp $e11e


    ld e, a
    and b
    cp $01
    call c, $9c23
    ld h, e
    ld e, $e1
    ld a, $c1
    rlca
    ld hl, sp+$04
    ei
    ld [$00f7], sp
    rst $38
    inc d
    db $eb
    jr @-$17

    ld [hl], b
    nop
    ld a, [c]
    nop
    ld [c], a
    nop
    ldh [rP1], a
    ldh [rP1], a
    rst $08
    nop
    ld e, e
    add b
    rst $18
    nop
    rst $08
    nop
    cp a
    nop
    sbc a
    nop
    sbc a
    nop
    ld a, a
    nop
    ld l, a
    nop
    ld a, a
    nop
    ei
    nop
    ei
    nop
    ld hl, sp+$00
    add sp, $00
    db $fd
    nop
    ei
    nop
    rst $38
    nop
    or $00
    rst $38
    nop
    di
    nop
    rst $18
    nop
    cp c
    nop
    db $fd
    nop
    rst $18
    nop
    rla
    ld [$00cf], sp
    jp z, $fe04

    nop
    cp d
    nop
    or $00
    ld h, a
    nop
    rst $28
    nop
    rst $38
    nop
    rst $08
    nop
    rst $00
    nop
    jp $8500


    nop
    sub a
    nop
    sbc h
    inc bc
    ret c

    inc bc
    ld a, [hl]
    add c
    ld h, $c1
    ld a, $c1
    inc sp
    call z, Call_06c_7887
    add a
    ld a, b
    adc [hl]
    ld [hl], c
    sbc $21
    sbc $21
    sbc [hl]
    ld h, c
    ret c

    daa
    call c, $f623
    dec bc
    call c, $dc23
    inc hl
    ldh a, [rIF]
    ld hl, sp+$07
    xor l
    ld d, d
    sbc c
    ld h, [hl]
    add hl, sp
    add $3b
    call nz, Call_06c_44bb
    cp e
    ld b, h
    ld a, $c1
    ccf

jr_06c_59fb:
    ret nz

    cp a
    ld b, b
    ccf
    ret nz

    inc a
    jp $d12e


    add e
    ld a, h
    ld [$1ef7], sp
    pop hl
    rrca
    ldh a, [rNR30]
    push hl
    ld e, h
    and e
    jr @-$17

    jr jr_06c_59fb

    inc d
    db $eb
    nop
    rst $38
    add b
    ld a, a
    inc d
    db $eb
    ld [$40f7], sp
    rst $38
    and d
    db $fd
    rlca
    ld hl, sp-$71

jr_06c_5a25:
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$47
    cp b
    ld b, a
    cp b
    dec b
    ld a, [$d827]
    ld h, a
    sbc b
    dec h
    jp c, $fb04

    inc b
    ei
    ld b, d
    cp l
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    add b
    rst $38
    ld [hl+], a
    db $dd
    jr nz, jr_06c_5a25

    ld hl, $33de

jr_06c_5a49:
    call c, $9f60
    ld h, d
    sbc l
    ld [hl+], a
    db $dd
    ld hl, $20de
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
    ld [bc], a
    db $fd
    ret nz

    ccf
    jp nz, $803d

    ld a, a
    jr nz, jr_06c_5a49

    ld b, b
    cp a
    nop
    rst $38
    ld b, b
    cp a
    nop
    nop
    nop
    ld bc, $0302
    inc b
    inc b
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    inc b
    dec bc
    nop
    nop
    nop
    nop
    inc c
    inc b
    inc b
    inc b
    inc b
    dec c
    ld c, $04
    rrca
    db $10
    inc b
    ld de, $1312
    nop
    nop
    inc d
    dec d
    ld d, $17
    jr jr_06c_5ab4

    inc b
    inc b
    inc b
    inc b
    inc b
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_06c_5ac9

    ld [hl+], a
    inc hl
    inc h
    inc b
    inc b
    inc b
    dec h
    inc b
    ld h, $27
    jr z, jr_06c_5add

jr_06c_5ab4:
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_06c_5aed

    inc b
    ld [hl-], a
    inc sp
    inc b
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_06c_5aff

    ld a, [hl-]
    dec sp
    inc a

jr_06c_5ac9:
    dec a
    ld a, $00
    ccf
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

jr_06c_5add:
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
    ld e, l
    ld e, [hl]
    ld e, a

jr_06c_5aed:
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    inc b
    ld l, [hl]
    ld h, l

jr_06c_5aff:
    ld l, a
    ld [hl], b
    ld [hl], c
    ld h, l
    ld h, l
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
    ld h, l
    ld a, h
    ld a, l
    ld a, [hl]
    ld h, l
    ld h, l
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
    ld h, l
    adc c
    adc d
    adc e
    ld h, l
    ld h, l
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
    ld h, l
    sub [hl]
    sub a
    sbc b
    ld h, l
    ld h, l
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
    ld h, l
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
    db $f4
    push af
    or $f7
    ld hl, sp-$17
    ld sp, hl
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
    ld de, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
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
    ld bc, $0001
    ld b, $05
    dec b
    nop
    nop
    nop
    ld bc, $0006
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $01
    ld bc, $0505
    ld b, $01
    ld bc, $0106
    nop
    nop
    nop
    nop
    ld bc, $0600
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0701
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0504
    ld bc, $0001
    nop
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    inc bc
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld b, $01
    ld bc, $0000
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    ld bc, $0501
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    ld bc, $0501
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0304
    inc bc
    inc bc
    inc bc
    nop
    ld bc, $0501
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0307
    inc bc
    inc bc
    inc bc
    nop
    ld bc, $0501
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $07
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    ld bc, $0601
    ld b, $02
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    ld bc, $0601
    ld b, $07
    ld [bc], a
    ld bc, $0707
    inc bc
    rlca
    ld bc, $0501
    inc b
    ld bc, $0101
    ld b, $06
    ld b, $01
    ld bc, $0707
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0601
    nop
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0600
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0901
    add hl, bc
    ld [$090e], sp
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

Call_06c_5d00:
    rst $38
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
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
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
    ld a, a
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
    rst $30
    ld a, a
    rst $18
    ccf
    db $fc
    ccf
    ld hl, sp+$3f
    ld hl, sp+$3f
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp+$1f
    db $fc
    rra
    db $fc
    rrca
    db $fc
    rrca
    ld a, [$ff0f]
    rra
    rst $38
    rrca
    rst $38
    add a
    ld a, a
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    ld sp, hl
    rlca
    rst $38
    ld bc, $01ee
    ld a, $01
    rst $30
    nop
    rra
    nop
    ei
    nop
    pop bc
    nop
    rst $28
    nop
    rst $38
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $00
    jr c, @+$03

    cp $f8
    rst $38
    dec sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    ld hl, sp+$07
    ld sp, hl
    ld b, $ff
    nop
    cp $01
    cp $01
    cp $01
    rst $38
    nop
    ret c

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp a
    rst $38
    ld l, $ff
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rrca
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
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $18
    ccf
    ld e, a
    cp a
    rra
    rst $38
    rst $18
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
    nop
    xor [hl]
    nop
    adc h
    nop
    or b
    nop
    and l
    nop
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ldh a, [$1f]
    rst $38
    rra
    or $0f
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    cp $01
    rst $38
    nop
    ld e, a
    and b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
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
    rst $30
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add c
    rst $38
    inc bc
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    db $fd
    nop
    jr z, jr_06c_5e94

jr_06c_5e94:
    sbc e
    nop
    ld a, [de]
    nop
    jr z, jr_06c_5e9a

jr_06c_5e9a:
    add b
    nop
    and b
    nop
    nop
    rst $38
    ld h, b
    sbc a
    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    ld [$ffff], sp
    rst $38
    xor l
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02fe
    db $fd
    ld bc, $00fe
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    cp $01
    cp $01
    rst $38
    nop
    nop
    nop
    rst $38
    add b
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    cp $f0
    db $ec
    ldh a, [$d0]
    ldh [$e0], a
    ret nz

    and b
    ret nz

    ret nz

    add b
    ldh [rP1], a
    jr c, jr_06c_5f00

jr_06c_5f00:
    rst $38
    nop
    rst $28
    db $10
    db $10
    rst $28
    ld a, [bc]
    push af
    and h
    db $db
    or a
    ret z

    cp a
    ret nz

    rst $38
    ret nz

    ret nz

    rst $38
    ldh [rIE], a
    ldh [$7f], a
    ldh a, [$7f]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    cp $fd
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
    cp $ff
    rst $38
    db $fc
    rst $30
    ld hl, sp-$11
    ldh a, [$9f]
    ldh [$c0], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    call nz, RST_00
    nop
    nop
    nop
    nop
    nop
    stop
    jr nc, jr_06c_5f5c

jr_06c_5f5c:
    ld de, $0000
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    ld de, $00ee
    rst $38
    nop
    rst $38
    db $ec
    rst $38
    or a
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec d
    ld [$00ff], a
    rst $38
    nop
    rst $38
    nop
    inc bc
    db $fc
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    sbc d
    ld h, l
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    sbc a
    rst $38
    add b
    ld a, a
    ldh a, [rIF]
    ld hl, sp+$07
    ld a, [hl]
    ld bc, $007f
    di
    nop
    and d
    nop
    and l
    nop
    add c
    nop
    sbc l
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    sbc a
    nop
    ld a, [hl]
    nop
    ld a, [bc]
    nop
    dec b
    nop
    ld b, $00
    ld bc, $0100
    nop
    inc bc
    nop
    ei
    nop
    rst $38
    nop
    nop
    rst $38
    ld b, b
    cp a
    sub b
    ld l, a
    nop
    rst $38
    ret nz

    ccf
    rst $38
    nop
    rst $38
    nop
    db $76
    adc c
    ld c, d
    or l
    ld l, d
    sub l
    ld d, l
    xor d
    xor e
    ld d, h
    ld d, l
    xor d
    xor l
    ld d, d
    or d
    ld c, l
    xor d
    ld d, l
    ei
    inc b
    inc b
    ei
    db $f4
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    add l
    ld a, [$fac5]
    set 6, h
    sub $e9
    ei
    db $e4
    and $f9
    push hl
    ld a, [$f4fb]
    di
    db $fc
    rst $38
    ld hl, sp-$05
    db $fc
    cp $fd
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    cp $f7
    ld hl, sp-$11
    ldh a, [rIE]
    ret nz

    rst $38
    add b
    cp $00
    db $fd
    nop
    db $fc
    nop
    ei
    nop
    rst $38
    nop
    rrca
    ldh a, [$fc]
    rst $38
    rst $38
    rst $38
    inc h
    db $db
    ld hl, sp+$07
    ld sp, hl
    ld b, $9f
    ld h, b
    rra
    ldh [$4c], a
    or e
    ld a, a
    add b
    ld a, a
    add b
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
    ldh [rIE], a
    rst $38
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
    cp $01
    ld b, b
    cp a
    ld a, a
    rst $38
    ld d, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    jp z, $0a35

    push af
    nop
    rst $38
    nop
    rst $38
    ld l, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld d, h
    xor e
    ldh a, [rIF]
    cp $01
    sbc a
    nop
    db $db
    nop
    ld a, h
    nop
    ld l, d
    nop

jr_06c_608c:
    db $fd
    nop
    rst $18
    jr nz, @+$01

    nop
    rst $20
    jr jr_06c_608c

    ld [$005f], sp
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    cp $01
    db $fd
    ld [bc], a
    ld [c], a
    dec e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, h
    ei
    ld bc, $fdfe
    nop
    db $fc
    nop
    rst $38
    nop
    ld a, a
    add b
    xor a
    ld d, b
    ld e, e
    and h
    ld d, b
    xor a
    ld e, c
    and [hl]
    sub $29
    cp l
    ld b, d
    db $db
    inc h
    rst $38
    nop
    sbc a
    ld h, b
    add b
    rst $38

jr_06c_60ca:
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ld d, a
    xor b
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    rst $18
    jr nz, jr_06c_60ca

    ld [de], a
    ld a, e
    add h
    nop
    rst $38
    nop
    rst $38
    ld d, b
    xor a
    db $fc
    add e
    add l
    ld a, [$ffff]
    push hl
    rst $38
    ret nz

    rst $38
    rst $18
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
    cp $00
    ret nz

    nop
    adc b
    nop
    jr nz, jr_06c_6104

jr_06c_6104:
    nop
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    dec c
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $f4
    ei
    ei
    ldh a, [$e9]
    ldh a, [$ed]
    ldh a, [rIE]
    ldh [$ee], a
    ldh [rP1], a
    rst $38
    dec d
    ld [$20df], a
    cp a
    ld b, b
    ld sp, hl
    ld b, $fd
    ld [bc], a
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
    ld [bc], a
    db $fd
    ld bc, $03fe
    db $fc
    ld h, b
    rst $38
    and b
    ld e, a
    rst $30
    ld [$ed12], sp
    nop
    rst $38
    ld b, b
    cp a
    inc d
    db $eb
    dec b
    ld a, [$f906]
    ld d, [hl]
    rst $38
    ld c, c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    di
    ld [$1fe1], sp
    ret nz

    rra
    ret nz

    ld [$00e0], sp
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
    ld [bc], a
    cp $05
    db $fc
    rlca
    ldh a, [rIF]
    ldh [$0d], a
    ret nz

    dec e
    ret nz

    rra
    ret nz

    rra
    ret nz

    rra
    ret nz

    rrca
    ret nz

    cpl
    ldh [$27], a
    ldh [$33], a
    ldh a, [rNR23]
    ld hl, sp+$0c
    db $fc
    nop
    rst $38
    xor b
    ld d, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, l
    add b
    ret nz

    ld bc, $0280
    nop
    ld [bc], a
    add h
    dec b
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    ld [hl], a
    adc a
    ld b, a
    cp a
    xor e
    ld d, a
    db $dd
    inc hl
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rrca
    ldh a, [$dd]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    ld [bc], a
    rst $38
    nop
    cp $00
    db $fd
    nop
    rst $38
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ldh a, [rP1]
    sbc b
    ld bc, $01fe
    cp $01
    cp $01
    cp $01
    rst $28
    ld bc, $fe00
    nop
    cp $00
    rst $38
    nop
    rst $38
    ld bc, $f9ff
    rst $38
    rst $38
    rst $38
    ld bc, $feff
    ld bc, $00f2
    ret z

    nop
    db $ec
    nop
    ld a, [c]
    nop
    xor b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_06c_6209:
    nop
    nop
    nop
    stop
    sub b
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    ld a, a
    db $dd
    nop
    sbc h
    nop
    jp hl


    nop
    reti


    nop
    ld hl, sp+$00
    jr jr_06c_6209

    rst $38
    nop
    ccf
    ret nz

    ld a, a
    add b
    rst $38
    nop
    pop af
    ld c, $7f
    add b
    rst $38
    nop
    rst $30
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    ld a, h
    db $fc
    inc e
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    db $ec
    db $fc
    db $fc
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ld d, h
    db $fc
    ld e, e
    db $fc
    ld [hl], e
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ccf
    db $fc
    cpl
    db $ec
    pop bc
    nop
    db $dd
    inc e
    add hl, sp
    jr c, @+$01

    cp $3f
    cp $1a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld h, l
    rst $20
    db $fc
    nop
    rst $38

jr_06c_6275:
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
    nop
    rst $38
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
    ld b, b
    nop
    nop
    nop
    and c
    ld bc, $bafe
    call c, $988e
    add h
    sbc b
    sbc [hl]
    sub b
    rst $08
    sub b
    xor a
    ret nc

    and a
    ret c

    and a
    ret c

    and e
    call c, $dc83
    sbc b
    rst $08
    sub $89
    ret c

    add b
    ret c

    add b
    ret c

    or b
    sbc h
    or b
    sbc a
    or b
    sbc a
    sub b
    sbc a
    sub b
    sbc a
    sbc b
    sbc a
    sub h
    sbc a
    pop de
    or c
    ld e, [hl]
    or c
    ld e, [hl]
    ld sp, $3f7c
    jr nc, jr_06c_6305

    dec sp
    jr c, @+$29

    jr nc, jr_06c_6275

    ld hl, $27a0
    and a
    ld h, a
    and e
    ld h, b
    ret nz

    ld h, b
    ret nz

    ld a, h
    ldh [$7f], a
    ld [c], a
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ld a, a
    rst $38
    ld a, a
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
    db $fc
    jp Jump_000_0080


    nop
    nop
    nop
    nop
    and b
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
    nop

jr_06c_6305:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nc

    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp l
    ld [bc], a

jr_06c_6318:
    or b
    nop
    ldh a, [rP1]
    call nz, $f100
    nop
    rlca
    ld hl, sp-$02
    ld bc, $01fe
    rst $20
    jr jr_06c_6318

    db $10
    rst $28
    db $10
    rst $08
    jr nc, @+$01

    nop
    rst $38
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    sbc a
    ei
    nop
    scf
    ret z

    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    ret nz

    rra
    ret nz

    rra
    ldh [rSC], a
    ldh [rSB], a
    ldh [$0e], a
    db $ec
    rrca
    call z, $c80f
    rrca
    adc b
    rrca
    ld [$180f], sp
    rra
    db $10
    rra
    ld b, b
    ld a, a
    add a
    add a
    ld sp, $3801
    nop
    inc a
    nop
    inc a
    nop
    ld e, $00
    ld e, $00
    rrca
    nop
    and b
    rlca
    ret nz

    nop
    ld sp, hl
    nop
    rst $38
    nop
    rst $38
    ret nz

    db $e4
    add hl, de
    nop
    add hl, de
    rra
    inc b
    ccf
    ld e, $1b
    ld a, [de]
    add hl, bc
    ld h, [hl]
    nop
    ld h, [hl]
    or c
    nop
    rst $38
    cp e
    cp a
    cp d
    nop
    nop
    nop
    ld h, [hl]
    ld de, $ff66
    cp e
    rst $38
    rst $38
    rst $28
    ld c, [hl]
    nop
    ld [hl], $00
    ld [hl], $80
    nop
    cp a
    dec c
    ccf
    inc sp
    inc de
    nop
    nop
    ld a, a
    add b
    ld a, a
    ld a, [$ff80]
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
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
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $0000
    nop
    nop
    add b
    nop
    ld de, $3f00
    ret nz

    rra
    ldh [$6f], a
    sub b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld e, $ff
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    inc bc
    db $fc
    or e
    nop
    rst $38
    nop
    nop
    rst $38
    cp a
    nop
    or d
    nop
    jr c, @-$37

    rst $38
    rst $38
    push af
    rst $38
    ld d, h
    xor e
    ld bc, $fffe
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
    db $ec
    db $fd
    ldh [$de], a
    and b
    nop
    nop
    add b
    add b
    ld h, b
    ldh [$38], a
    ld hl, sp+$06
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    rst $38
    nop
    inc bc
    ld hl, sp+$07
    db $fc
    nop
    ld b, [hl]
    or b
    nop
    or [hl]
    adc b
    ld b, $ff
    adc b
    cp a
    adc c
    inc de
    ld l, h
    nop
    ld l, h
    ld [bc], a
    nop
    rst $38
    push af
    rst $38
    or a
    sub c
    ld bc, $db00
    nop
    db $db
    rst $38
    jr z, @+$01

    rst $38
    rst $38
    rst $28
    ld c, h
    nop
    nop
    db $db
    nop
    db $db
    rst $18
    nop
    ld [hl], a
    ld [hl], l
    daa
    ld [hl+], a
    nop
    add b
    nop
    rst $38
    nop
    ld a, a
    rst $38
    db $fc
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp $01
    nop
    nop
    nop
    nop
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
    ld a, a
    nop
    ld a, h
    nop
    ld a, b
    nop
    ld [hl], b
    nop
    rst $38
    nop
    rst $38
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
    ld [$10ef], sp
    rst $38
    db $10
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
    ld sp, $e606
    nop
    ret nz

    ccf
    db $dd
    inc hl
    inc b
    inc bc
    ret c

    daa
    cp $ff
    rst $38
    ld sp, hl
    rst $38
    ldh a, [rIE]
    nop
    nop
    add b
    nop
    ldh [rP1], a

jr_06c_6505:
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rLCDC]
    ld hl, sp+$40
    ld a, $00
    rra
    rrca
    nop
    ld bc, $0000
    nop
    ld bc, $0f00
    nop
    rst $38
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    pop hl
    nop
    db $fc
    nop
    nop
    add c
    nop
    rst $28
    nop
    nop
    db $db
    nop
    db $db
    rst $18
    ld d, h
    rst $18
    ld d, l
    ld [hl], $c6
    jr nz, jr_06c_6505

    nop
    dec c
    cp $40
    cp $7e
    cp d
    ld [bc], a
    nop
    ld h, b
    nop
    ld l, h
    ld a, [c]
    inc c
    rst $38
    db $fd
    rst $38
    rst $38
    db $dd
    adc c
    ld [$0066], sp
    ld h, [hl]
    or h
    nop
    ld a, a
    ld d, h
    ld h, [hl]
    ld h, [hl]
    ld [bc], a
    nop
    nop
    rst $38
    nop
    rst $38
    cp $21
    rst $38
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
    rst $38
    ld e, $ff
    nop
    nop
    nop
    nop
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
    and b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [bc], a
    ld b, [hl]
    nop
    nop
    nop
    ld hl, $ff00
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
    ld bc, $ffff
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub b
    ld l, a
    ld b, h
    nop
    jp z, $e0f5

    rst $38
    ld d, b
    ldh [$0e], a
    ldh a, [$0e]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [c], a
    ld a, a
    nop
    ccf
    rrca
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, c
    rst $38
    ld a, b
    ldh a, [$60]
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $1eff
    cp $81
    add b
    ld e, a
    nop
    ld bc, $0300
    ld hl, sp+$03
    ld [hl], b
    inc bc
    add c
    inc bc
    inc bc
    sbc a
    inc bc
    inc de
    ld a, l
    nop
    ld l, l
    xor d
    add e
    xor a
    xor d
    xor a
    ld [hl+], a
    ld b, h
    or e
    nop
    or e
    ret nz

    nop
    rst $38
    db $ed
    rst $38
    xor l
    inc hl
    nop
    nop
    db $db
    jr nz, @-$23

    rst $38
    ld [hl], d
    rst $38
    rst $38
    rst $18
    rst $18
    sbc c
    nop
    nop
    db $db
    nop
    db $db
    cp $40
    ld a, a
    ld h, h
    ld h, [hl]
    ld h, $00
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
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
    rst $38
    nop
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    nop
    rla
    nop
    rst $20
    nop
    ldh a, [rIF]
    pop af
    ld c, $fd
    ld [bc], a
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
    and e
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    rst $38
    adc b
    ld bc, $01fe
    ld a, [bc]
    rst $38
    ld c, d
    dec b
    ld b, h
    nop
    ld [$ffff], sp
    rst $38
    rst $38
    rst $38
    xor a
    rst $38
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
    ccf
    rst $38
    ccf
    rst $38
    cpl
    rst $38
    rlca
    rst $38
    ld c, $fe
    ld [hl], b
    ldh a, [$cc]
    ret nz

    inc a
    nop
    ldh a, [rP1]
    add b
    nop
    rst $38
    nop
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
    ld [de], a
    nop
    or [hl]
    nop
    or [hl]
    rst $30
    dec d
    rst $30
    ld d, l
    db $dd
    dec b
    nop
    ld l, l
    nop
    ld l, l
    call c, $fd44
    db $dd
    ld a, a
    dec b
    ld [hl+], a
    nop
    ld [bc], a
    ld l, l
    ld [bc], a
    ld l, a
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    sbc c
    ld bc, $0060
    ld l, h
    add b
    inc c
    cp $a8
    ld l, [hl]
    ld l, [hl]
    inc c
    nop
    nop
    ld hl, sp+$01
    ld hl, sp-$01
    cp $fc
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
    rlca
    rst $38
    rlca
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
    inc b
    nop
    inc sp
    nop
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cpl
    nop
    nop
    nop
    nop
    adc b
    nop
    inc b
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
    ld [$3f07], sp
    rst $38
    rst $38
    rst $38
    rra
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $ff01
    ld bc, $00fc
    db $fd
    ld bc, $03ff
    ei
    inc bc
    ei
    rlca
    ld [de], a
    rst $28
    call Call_06c_6d32
    sub d
    nop
    rst $38
    nop
    rst $38
    ld [hl], b
    adc b
    rlca
    ldh a, [rIF]
    ldh [$de], a
    ret nz

    db $fd
    ret nz

    ret nz

    cp e
    ret nz

    cp e
    ret nz

    cp a
    add b
    sbc a
    add b
    sbc l
    add b
    adc a
    sub b
    sub a
    adc b
    adc e
    ret nz

    call nz, $f1e0
    jr nz, jr_06c_67be

    db $10
    ld c, $12
    rrca
    ld a, [hl-]
    rlca
    ld a, e
    inc b
    pop hl
    ld e, $ff
    db $ec
    rst $38
    xor $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a

jr_06c_67be:
    ccf
    db $fd
    rlca
    call nz, $0447
    ld b, a
    ld b, h
    call nz, Call_000_0c04
    add h
    inc c
    or h
    adc $34
    cp $d4
    sbc $d4
    ld a, [hl]
    inc b
    ld a, $ac
    ld a, $a4
    ld a, [hl]
    ld b, h
    cp $c4
    sbc [hl]
    add h
    ld c, $64
    ld b, $76
    add [hl]
    ld [hl], h
    or $82
    or $f2
    ld h, [hl]
    ld b, d
    ld [bc], a
    ld [bc], a
    ld b, $02
    cp $02
    ld [$01f6], sp
    cp $fd
    cp $fd
    cp $fc
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
    rlca
    dec c
    ld [bc], a
    ld a, [bc]
    nop
    ld [bc], a
    nop
    dec b
    nop
    ld bc, $1200
    nop
    ld b, c
    nop
    inc b
    nop
    sub e
    nop
    cp a
    nop
    xor $01
    ret c

    daa
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
    nop
    nop
    nop
    ld de, $0000
    nop
    inc bc
    nop
    ccf
    nop
    ld [$0c00], a
    inc bc
    add b
    ld a, a
    nop
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
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
    dec [hl]
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    sub $ff
    add b
    rst $38
    add b
    rst $38
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    inc b
    ei
    rst $20
    jr @+$01

    nop
    rst $38
    nop
    ld h, e
    db $fc
    ld hl, sp-$01
    nop
    nop
    rst $30
    ldh a, [$f8]
    ld hl, sp-$01
    rst $38
    ldh a, [rIE]
    ld [$28ff], sp
    rst $18
    add sp, $1f
    ld [$10ff], sp
    rst $38
    ret nz

    rrca
    db $fc
    inc bc
    cp $00
    ld h, a
    nop
    ei
    nop
    nop
    db $fd
    nop
    db $fd
    nop
    rst $38
    nop
    db $fd
    nop
    db $fd
    nop
    ei
    nop
    ld h, a
    nop
    rst $38
    cp $00
    ld bc, $8601
    add a
    ld e, h
    ld e, a
    ld hl, sp-$01
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ret nz

    rst $38
    dec sp
    ret nz

    ld e, e
    ldh [rSTAT], a
    ld hl, sp+$44
    ld hl, sp+$7e
    ld hl, sp-$08
    db $fc
    rst $38
    db $fc
    ld hl, sp-$04
    ld sp, hl
    db $fc
    db $fc
    ld hl, sp-$10
    ld hl, sp+$6c
    ldh a, [$3d]
    ret nz

    db $f4
    nop
    ldh [rP1], a
    db $fd
    nop
    add b
    ld a, a
    push af
    ld a, a
    rst $38
    ld a, a
    add l
    ld a, a
    add b
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
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
    ld l, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    add b
    db $db
    add b
    rst $28
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
    cp h
    jp $ffff


    cp a
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld e, a
    nop
    cpl
    nop
    ccf
    nop
    rst $18
    nop
    rst $28
    nop
    dec a
    ld [bc], a
    xor $01
    ld sp, hl
    ld b, $fa
    dec b
    push bc
    ld a, [hl-]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    call nc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    stop
    cp a
    nop
    ld a, $08
    sbc [hl]
    nop
    ret nz

    nop
    ret nz

    nop
    nop
    ldh [$0c], a
    ldh a, [$f8]
    ldh a, [$fc]
    ld hl, sp-$02
    db $fc
    rst $38
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
    sub l
    ld l, d
    add hl, bc
    or $5c
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, $e0de
    rra
    ld a, [$f705]
    ld [$00ff], sp
    cp a
    ld b, b
    ld [de], a
    db $ed
    db $10
    rst $28
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    sbc a
    ld h, b
    rrca
    ldh a, [rTAC]
    jr nz, jr_06c_6987

    nop
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
    nop
    rst $38
    nop

jr_06c_6987:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    ret nz

    ld a, a
    ret nz

    ccf
    ldh [$3f], a
    ret nz

    rra
    ret nz

    rra
    ldh [$3f], a
    ret nz

    rra
    and b
    ccf
    ld h, b
    ld a, a
    add sp, -$29
    call nc, Call_06c_55ab
    xor d
    ld a, [$ff05]
    nop
    rst $38
    nop
    add b
    ld a, a
    and b
    ld e, a
    cp $01
    cp $01
    ld a, h
    inc bc
    sbc a
    nop
    ld h, $01
    rra
    nop
    ld l, e
    nop
    cp a
    nop
    ld e, a
    nop
    ld d, h
    nop
    inc de
    nop
    ld a, e
    nop
    db $e4
    nop
    halt
    ld de, $5b00
    nop
    ld l, l
    nop
    ld a, $c0
    add sp, -$01
    or b
    rst $38
    nop
    rst $38
    ld c, c
    and [hl]
    inc hl
    call c, $e01f
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    cp $01
    ldh a, [rIF]
    nop
    rst $38
    ld c, b
    or a
    rra
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    dec b
    rst $38
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
    cp $01
    db $ed
    ld [de], a
    rst $30
    ld [$926d], sp
    sub $29
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
    cpl
    ld bc, $ff00
    nop
    rst $38
    add b
    ld a, a
    add sp, $17
    ld [hl], b
    adc a
    db $fc
    inc bc
    db $db
    inc h
    sbc a
    ld h, b
    add b
    nop
    nop
    nop
    add b
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
    ld d, l
    xor d
    xor d
    ld d, l
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    ret nz

    ccf
    nop
    rst $38
    ret z

    scf
    ret


    ld [hl], $00
    rst $38
    nop
    rst $38
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    dec sp
    call nz, Call_06c_7f80
    cp $01
    rst $38
    nop
    sbc $21
    adc d
    ld [hl], l
    nop
    rst $38
    ld a, e
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [de], a
    db $ed
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ret nc

    cpl
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
    pop de
    ld l, $f1
    ld c, $ff
    nop
    ld [bc], a
    db $fd
    nop
    rst $38
    ret nz

    ccf
    ld e, d
    and l
    nop
    rst $38
    nop
    rst $38
    ret nc

    cpl
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $08
    nop
    db $db
    nop
    dec bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    xor h
    nop
    rst $38
    nop
    inc e
    db $e3
    nop
    rst $38
    rst $38
    nop
    add b
    nop
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
    ld e, e
    and h
    cp a
    ld b, b
    rst $38
    nop
    db $fd
    ld [bc], a
    ei
    inc b
    ld a, [$ed05]
    ld [de], a
    rst $38
    nop
    rst $38
    nop
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    or b
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    nop
    rst $38
    cp $01
    ei
    inc b
    ld a, [$f505]
    ld a, [bc]
    ld a, [$f705]
    ld [$25da], sp
    cp h
    ld b, e
    ld l, d
    sub l
    db $d3
    inc l
    ld a, d
    add l
    or c
    ld c, [hl]
    add b
    ld a, a
    ld bc, $00fe
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
    inc c
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
    ld hl, sp-$09
    ld [$0002], sp
    nop
    nop
    nop
    nop
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, d
    sbc l
    nop
    rst $38
    nop
    rst $38
    and d
    rst $38
    nop
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
    ld hl, sp+$03
    db $fc
    rst $38
    nop
    db $10
    rst $28
    ld a, [$ff05]
    nop
    rst $38
    nop
    inc bc
    db $fc
    nop
    rst $38
    sub h
    ld l, e
    rst $28
    db $10
    add hl, bc
    or $00
    rst $38
    add b
    rst $38
    ei
    rst $38
    db $ec
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld d, h
    xor e
    xor e
    ld d, h
    sub $29
    dec bc
    db $f4
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    rlca
    rst $38
    ld bc, $7eff
    add c
    rst $38
    nop
    call c, $ff23
    nop
    rst $38
    nop
    rst $38
    nop
    ld [hl], a
    nop
    ld b, $00
    inc bc
    nop
    inc bc
    nop
    dec c
    nop
    ld a, [hl-]
    nop
    sbc [hl]
    nop
    rst $38
    nop
    ld a, b
    add a
    db $f4
    dec bc
    ei
    nop
    ld a, [de]
    nop
    add sp, $00
    rst $38
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

jr_06c_6bdb:
    ld d, b
    ld l, c
    sub [hl]
    ei
    inc b
    xor a
    ld d, b
    ld d, e
    xor h
    db $fd
    ld [bc], a
    cp a
    ld b, b
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
    db $fc

jr_06c_6bf5:
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    jr nz, jr_06c_6bdb

    cp $01
    ld a, a
    add b
    ld e, c
    and [hl]
    xor d
    ld d, l
    xor e
    ld d, h
    jp z, $8035

    ld a, a
    add b
    ld a, a
    ld b, b
    cp a
    jp z, $6535

    sbc d
    add c
    ld a, [hl]
    jr nz, jr_06c_6bf5

    adc b
    ld [hl], a
    ld b, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, a
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [de], a
    db $ed
    ld a, a
    add b
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp h
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add hl, hl
    sub $01
    cp $00
    rst $38
    rra
    rst $38
    add hl, bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, h
    add e
    ld hl, sp+$07
    rst $38
    nop
    db $fc
    inc bc
    inc bc
    db $fc
    ld h, b
    sbc a
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    ld [bc], a
    db $fd
    ld a, [$6905]
    sub [hl]
    ccf
    ret nz

    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    inc b
    ei
    dec bc
    db $f4
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    and h
    ld e, e
    ld e, d
    and l
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
    rst $38
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld c, b
    or a
    nop
    rst $38
    and b
    ld e, a
    or b
    ld c, a
    db $fc
    inc bc
    ld hl, sp+$07
    ld sp, hl
    ld b, $7f
    nop
    ld a, a
    nop
    ld a, a
    nop
    db $fd
    ld [bc], a
    ld e, a
    nop
    or b
    rrca
    inc bc
    rst $38
    rlca
    rst $38
    db $fc
    inc bc
    add a
    nop
    rra
    nop
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
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    rlca
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec b
    ld a, [$c03f]
    ld [bc], a
    db $fd
    ret nz

    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    add b
    ld a, a
    xor l
    ld d, d
    ld e, [hl]
    and c
    xor e
    ld d, h
    ld d, h
    xor e
    xor b
    ld d, a
    inc h
    db $db
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    ld d, h
    xor e
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $08
    rst $38
    ld [bc], a
    rst $38
    add b
    ld a, a
    sbc b
    ld h, a
    ret c

    daa
    ld bc, $0000
    nop
    nop
    nop
    ld c, b
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    daa
    ret c

Call_06c_6d32:
    daa
    ret c

    nop
    rst $38
    db $fc
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, $f1
    ccf
    ret nz

    rst $18
    jr nz, @+$01

    nop
    inc hl
    call c, $de21
    nop
    rst $38
    ldh a, [rIF]
    db $fc
    inc bc
    cp $01
    inc c
    di
    db $10
    rst $28
    or a
    ld c, b
    rst $38
    nop
    rra
    ldh [$80], a
    ld a, a
    inc de
    db $ec
    ld c, $f1
    nop
    rst $38
    dec h
    jp c, $f807

    ld bc, $50fe
    xor a
    add l
    ld a, d
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    and h
    ld e, e
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    xor a
    ld d, b
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    jp Jump_000_00ff


    rst $38
    nop
    rst $38
    nop
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
    ld b, h

jr_06c_6dab:
    cp e
    call nz, $e03b
    rra
    ld [c], a
    dec e
    and a
    ld e, b
    or e
    ld c, h
    add b
    rst $38
    rst $38
    rst $38
    ld c, d
    rst $38
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
    ei
    inc b
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    db $fc
    inc bc
    rst $38
    nop
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    cp $01
    jr nc, jr_06c_6dab

    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    ret z

    scf
    xor a
    ld d, b
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld d, d
    xor l
    xor b
    ld d, a
    ld d, b
    xor a
    xor b
    ld d, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld bc, $0201
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld bc, $1101
    ld [de], a
    ld b, $06
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_06c_6e48

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$08

    ld hl, $2322
    inc h
    dec h
    ld h, $27
    jr z, jr_06c_6e69

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_06c_6e79

jr_06c_6e48:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    inc d
    ld [hl], $37
    jr c, jr_06c_6e8a

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
    ld bc, $4a49
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b

jr_06c_6e69:
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld bc, $5958
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a

jr_06c_6e79:
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld bc, $6867
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a

jr_06c_6e8a:
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ld bc, $765c
    ld [hl], a
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld bc, $7f7e
    ld bc, $0180
    add c
    add d
    ld [hl], a
    ld [hl], a
    inc d
    add e
    add h
    add l
    add [hl]
    add a
    ld bc, $8988
    ld bc, $018a
    adc e
    adc h
    adc l
    adc [hl]
    inc d
    adc a
    sub b
    sub c
    sub d
    sub e
    ld bc, $9394
    ld bc, $9695
    sub a
    sbc b
    sbc c
    ld e, d
    inc d
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    ld bc, $a09f
    ld bc, $a2a1
    and e
    and h
    and l
    ld e, d
    inc d
    and [hl]
    and a
    xor b
    ld bc, $01a9
    xor d
    xor e
    ld bc, $adac
    xor [hl]
    ld [hl], a
    sbc c
    xor a
    inc d
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
    ld [hl], a
    sbc c
    ld e, h
    inc d
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


    jp z, $99cb

    call z, $cd77
    adc $cf
    ret nc

    pop de
    jp nc, $01d3

    call nc, $d599
    inc d
    ld e, h
    sub $d7
    ret c

    inc d
    reti


    jp c, $dcdb

    db $dd
    sbc $01
    rst $18
    sbc c
    ldh [rNR14], a
    ld e, h
    sbc c
    inc d
    ld l, l
    inc d
    pop hl
    ld [c], a
    db $e3
    db $e4
    push hl
    and $01
    rst $20
    sub $8e
    inc d
    add sp, -$17
    inc d
    ld [$eb14], a
    db $ec
    inc d
    inc d
    inc d
    inc d
    ld bc, $99ed
    xor $14
    rst $28
    ld [hl], a
    inc d
    ldh a, [rNR14]
    pop af
    ld a, [c]
    inc d
    inc d
    inc d
    inc d
    nop
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
    dec b
    ld bc, $0101
    nop
    inc b
    dec b
    dec b
    nop
    nop
    nop
    nop
    ld b, $00
    nop
    nop
    dec b
    ld bc, $0101
    dec b
    inc b
    ld bc, $0501
    dec b
    ld b, $06
    dec b
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0405
    ld bc, $0101
    ld bc, $0101
    ld bc, $0501
    ld bc, $0101
    ld bc, $0501
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    inc b
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    nop
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    nop
    ld b, h
    ld bc, $4101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    nop
    inc b
    ld bc, $4101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    nop
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    ld bc, $4101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld bc, $0101
    ld b, c
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld bc, $4101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld bc, $4101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0404
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    inc b
    ld bc, $0101
    ld b, c
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0400
    ld bc, $0101
    ld b, c
    ld b, c
    ld bc, $0141
    ld bc, $0101
    ld bc, $0101
    nop
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    inc b
    ld b, c
    ld bc, $0101
    ld b, c
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rst $38
    nop
    rst $38
    nop
    ld a, a
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
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    rst $38
    nop
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    add b
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

jr_06c_70ee:
    nop
    rst $38

jr_06c_70f0:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    ld [hl], a
    add b
    ld e, e
    add b
    ld a, h
    add b
    ld a, [hl-]
    ret nz

    inc a
    ret nz

    jr c, jr_06c_70ee

    jr c, jr_06c_70f0

    inc e
    ldh [rNR30], a
    ldh [rNR32], a
    ldh [rNR30], a
    ldh [$0d], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
    ei
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
    ld bc, $1ffe
    ldh [rNR11], a
    xor $06
    ld sp, hl
    rrca
    ldh a, [rP1]
    rst $38
    ld b, $f9
    rst $38
    nop
    ld e, b
    and a
    rst $38
    nop
    rst $38
    nop
    dec sp
    call nz, Call_000_00ff
    db $dd
    cp $00
    rst $38
    xor l
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    cp d
    nop
    ld c, d
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ld a, h
    nop
    inc e
    nop
    ld c, $00
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
    nop
    nop
    nop
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
    rrca
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
    nop
    rst $38
    ld bc, $01fe
    cp $03
    db $fc
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
    ld a, a
    nop
    cp [hl]
    nop
    xor [hl]
    nop
    ld d, d
    nop
    ld [$0000], sp
    nop
    add c
    nop
    rrca
    nop
    rra
    nop
    ld a, a
    inc bc
    rst $38
    rrca
    rst $38
    ccf
    db $fc
    rst $38
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
    nop
    rst $38

jr_06c_7210:
    rst $18
    jr nz, jr_06c_7210

    ld [bc], a
    rst $38
    nop
    ccf
    ret nz

    db $e4
    dec de
    ld a, a
    nop
    db $fc
    inc bc
    ld b, a
    cp b
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
    inc hl
    call c, $ff3e
    cp a
    nop
    ld e, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    xor d
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
    jp nz, RST_00

    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
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
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
    ld bc, $0100
    nop
    ld bc, $0100
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
    ccf
    ret nz

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
    cp $01
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    dec a
    ret nz

    ld [hl], a
    add b
    ld a, l
    add b
    db $fd
    nop
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
    rst $10
    nop
    add sp, $00
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ld b, b
    nop
    add b
    nop
    inc bc
    nop
    add a
    nop
    ccf
    ld bc, $077f
    rst $38
    rra
    db $fc
    ccf
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
    ld [bc], a
    db $fd
    dec b
    ld a, [$c03f]
    dec b
    ld a, [$fc03]
    ld a, a
    add b
    ld bc, $fffe
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
    rst $38
    nop
    or h
    nop
    call c, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [hl], l
    cp $00
    rst $38
    cp l
    nop
    sub $00
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    xor d
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
    nop
    ld bc, $24fe
    db $db
    pop af
    ld c, $af
    ld d, b
    or b
    ld c, a
    ld a, [$0105]
    cp $80
    ld a, a
    ccf
    ret nz

    ret nz

    ccf
    db $10
    rst $28
    ccf
    ret nz

    cpl
    ret nc

    sub c
    ld l, [hl]
    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    cp $01
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    add b
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
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ld h, b
    rra
    ld h, b
    rra
    ld [hl], b
    rrca
    or b
    rrca
    ldh a, [rIF]
    ld a, b
    rlca
    ld hl, sp+$07
    ld a, h
    inc bc
    db $fc
    inc bc
    ld a, h
    inc bc
    cp $01
    ld a, a
    nop
    cp a
    nop
    cp a
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rlca
    db $fc
    rra
    ld hl, sp+$7f
    ldh [rIE], a
    add b
    rst $38
    ld b, c
    cp [hl]
    ld b, a
    cp b
    nop
    rst $38
    ld hl, $3fde
    ret nz

    ld b, a
    cp b
    cp $01
    rra
    ldh [rIE], a
    nop
    push af
    nop
    ld a, h
    nop
    db $fc
    nop
    cp $00
    rst $30
    nop
    db $fd
    nop
    ld c, e
    nop
    and [hl]
    nop
    ld e, l
    nop
    ld [hl], $00
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp e
    ld b, h
    dec a
    rst $38
    ld a, a
    nop
    add h
    nop
    ld d, b
    nop
    adc b
    nop
    inc h
    nop
    sub b

jr_06c_741d:
    nop
    and h
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
    rrca
    ld l, [hl]
    sub c
    rst $38
    nop
    ld a, [de]
    push hl
    rst $38
    nop
    db $ed
    ld [de], a
    ld a, a
    add b
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    rst $30
    ld [$00ff], sp
    ld b, b
    cp a
    rst $38
    nop
    add c
    ld a, [hl]
    rst $38
    nop
    reti


    ld h, $0f
    ldh a, [$80]
    ld a, a
    jr c, jr_06c_741d

    ld bc, $23fe
    call c, $c03f
    ccf
    ret nz

    rra
    ldh [$03], a
    db $fc
    ld c, a
    or b
    ld a, a
    add b
    nop
    rst $38
    ret nz

    ccf
    add c
    ld a, [hl]
    ccf
    ret nz

    nop
    rst $38
    nop
    rst $38
    ld [$1ef7], sp
    pop hl
    inc hl
    call c, $e817
    rla
    add sp, $00
    rst $38
    inc bc
    db $fc
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
    ld b, e
    cp h
    rlca
    ld hl, sp-$71
    ld [hl], b
    inc b
    ei
    ccf
    ret nz

    ret nz

    ccf
    cp b
    ld b, a
    rra
    ldh [$e0], a
    rra
    nop
    rst $38
    sub h
    nop
    rst $38
    nop
    ld [$1ff7], sp
    ldh [rTAC], a
    ld hl, sp+$7d
    add d
    rra
    ldh [$a8], a
    ld d, [hl]
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
    cp $00
    ld a, [$f200]
    nop
    rst $38
    nop
    ei
    nop
    and b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    add b
    nop
    inc b
    nop
    add b
    nop
    and b
    nop
    ret nz

    nop
    ld b, b
    nop
    add b

jr_06c_74fd:
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
    ret nz

    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    ld c, b
    rst $38
    inc c
    rra
    ld [$080f], sp
    rrca
    ld [$180f], sp
    rrca
    jr jr_06c_752d

    jr jr_06c_752f

    ld sp, hl
    inc b
    ld l, a
    sub b
    jr z, jr_06c_74fd

    rst $38
    nop
    rst $38
    nop
    xor d
    ld d, l
    rst $38

jr_06c_752d:
    nop
    nop

jr_06c_752f:
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld de, $ffee
    nop
    swap h
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
    ld l, $d1
    rst $38
    nop
    add sp, $17
    rst $38
    nop
    cp a
    ld b, b
    db $d3
    inc l
    rst $38
    nop
    ld a, a
    add b
    add b
    ld a, a
    rst $38
    nop
    ld e, c
    and [hl]
    rst $38
    nop
    rst $38
    nop
    ret


    ld [hl], $ff
    nop
    add hl, sp
    add $96
    ld l, c
    rst $38
    nop
    dec hl
    call nc, $ff00
    rst $38
    nop
    and c
    ld e, [hl]
    rst $38
    nop
    ld e, $e1
    rst $38
    nop
    inc a
    jp Jump_000_00ff


    ld bc, $fffe
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
    nop
    rst $38
    ccf
    nop
    nop
    nop
    db $f4
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    jp c, Jump_000_2700

    ret c

    ld l, l
    add b
    ld b, $f0
    nop
    ld hl, sp+$04
    ei
    inc bc
    db $fc
    rrca
    ldh a, [rNR41]
    rst $18
    ld hl, sp+$00
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    cp h
    nop
    rst $38
    nop
    ld e, l
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    ret nc

    nop
    nop
    nop
    nop
    nop
    ld h, d
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    rst $38
    nop
    xor b
    nop
    nop
    nop
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
    db $fd
    nop
    rst $38
    nop
    cp $00
    ld a, [$fe00]
    nop
    rst $38
    nop
    inc bc
    db $fc
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$7f], a
    ld b, b
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
    nop
    inc bc
    db $fc
    db $fc
    inc bc
    db $eb
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    rst $38
    nop
    cp l
    ld b, d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    push bc
    ld a, [hl-]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nc

    cpl
    rst $38
    nop
    rlca
    ld hl, sp+$60
    sbc a
    rst $38
    nop
    inc bc
    db $fc
    db $fc
    inc bc
    nop

jr_06c_7681:
    nop
    stop
    ld [c], a
    nop
    cp d
    nop
    xor l
    nop
    db $e4
    nop
    ld a, [c]
    nop
    and b
    nop
    inc h
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
    rst $38
    nop
    jr nz, jr_06c_7681

    cp [hl]
    ld b, b
    ld hl, sp+$00
    inc l
    ret nc

    ld hl, sp+$00
    ld a, h
    add b
    and b
    ld e, b
    ld e, $e0
    rst $38
    nop
    ret nz

    nop
    nop
    nop
    jp c, $ff00

    nop
    rst $38
    nop
    ld hl, sp+$00
    add sp, $00
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    db $ec
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    ret nz

    nop
    ret nz

    nop
    ld d, b
    nop
    and b
    nop
    ld b, b
    nop
    add b
    nop
    and b
    nop
    add b
    nop
    ld b, b
    nop
    add b
    nop
    ld b, b
    nop
    nop
    nop
    ret c

    nop
    db $fc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    nop
    push af
    nop
    rst $38
    nop
    rst $38
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
    ret nz

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

jr_06c_7735:
    nop
    rst $38
    nop
    ld bc, $fefe
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    ld d, l
    xor d
    rst $38
    nop
    db $fd
    ld [bc], a
    daa
    ret c

    rst $38
    nop
    cp $00
    ccf
    ret nz

    ret nz

    ccf
    rst $38
    nop
    rst $38
    nop
    add hl, bc
    or $ff
    nop
    rst $38
    nop
    jr z, jr_06c_7735

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
    rst $38
    rst $38
    nop
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
    ld [$0000], sp
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
    cp $00
    cp $00
    ccf
    ret nz

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    and l
    nop
    nop
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
    and b
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
    nop
    nop
    nop
    nop
    ld a, $c0
    nop
    rst $38
    nop
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, h
    add b
    nop
    rst $38
    nop
    rst $38
    jr c, @+$01

    nop
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld d, a
    nop
    xor b
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    or $00
    push de
    nop
    cp b
    nop
    db $ec
    nop
    adc b
    nop
    ld l, b
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    ld d, l
    nop
    nop
    nop
    nop
    nop
    nop
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
    ei
    nop
    and l
    nop
    add b
    nop
    cp $00
    rrca
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    ld a, h
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
    jr nz, jr_06c_7874

jr_06c_7874:
    call nc, RST_00
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
    rra
    nop
    nop
    nop
    nop

Call_06c_7887:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$60], a
    rst $38
    add hl, sp
    ld a, a
    add a
    nop
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
    nop
    rst $38
    nop
    rst $38
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
    db $fc
    db $fc
    inc bc
    inc bc
    nop
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rlca
    ld hl, sp-$08
    rlca
    rst $38
    nop
    ld e, a
    nop
    jr nz, jr_06c_78ca

jr_06c_78ca:
    db $fd
    nop
    ld b, d
    nop
    push de
    nop
    db $d3
    nop
    ld de, $0000
    nop
    call nc, $7f00
    add b
    add b
    ld a, a
    adc e
    nop
    ld a, a
    add b
    add b
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
    nop
    nop
    nop
    cp $00
    rst $38
    nop
    xor $00
    ld e, e
    nop
    nop
    nop
    nop
    nop
    add sp, $00
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
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    nop
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    nop
    xor d
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rrca
    ldh a, [$f0]
    rrca
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
    sbc l
    nop
    dec d
    nop
    and b
    nop
    push af
    nop
    ld e, e
    nop
    ld b, d
    nop
    stop
    ret nz

    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
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
    nop
    nop
    nop
    nop
    xor a
    nop
    db $dd
    nop
    rst $38
    nop
    ld e, [hl]
    nop
    dec b
    nop
    nop
    nop
    nop
    nop
    ccf
    ret nz

    nop
    rst $38
    nop
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ccf
    nop
    ret nz

    nop
    rst $38
    rlca
    rst $38
    ld hl, sp+$7f
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    ld bc, $01fc
    db $fc
    ld bc, $00fe
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $fd
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    ld bc, $fefe
    ld bc, $00ff
    rst $30
    nop
    ld c, d
    nop
    dec h
    nop
    ld l, b
    nop
    or l
    nop
    ld e, d
    nop
    ld de, $1200
    nop
    rst $38
    nop
    rrca
    ldh a, [$f0]
    rrca
    rst $38
    nop
    rrca
    ldh a, [$f0]
    rrca
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    or a
    nop
    ld l, a
    nop
    dec bc
    nop
    ld d, a
    nop
    rst $38
    nop
    nop
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    nop
    rst $38
    ld [hl], b
    adc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $ff00
    jr z, @+$01

    nop
    rst $38
    ld a, a
    nop
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    cp $01
    cp $00
    cp $00
    ld a, [hl]
    nop
    ld a, a
    nop
    cp a
    nop
    db $fd
    nop
    db $fd
    nop
    xor $00
    rst $38
    nop
    add hl, hl
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rlca
    ld hl, sp-$08
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
    nop
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
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    db $eb
    nop
    ld e, d
    nop
    ld a, e
    nop
    ld e, [hl]
    nop
    rst $18
    nop
    ld l, e
    nop
    sub c
    nop
    cp $00
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
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
    dec b
    ld a, [$ff00]
    nop
    rst $38
    inc a
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
    rra
    nop
    dec b
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
    rrca
    nop
    ret nz

    nop
    rst $38
    nop
    rst $38
    db $fd
    ld a, a
    nop
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
    ld b, $00
    adc $00
    sub $00
    xor a
    nop
    cp [hl]
    nop
    or $00
    rst $38
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
    ccf
    ret nz

    ret nz

    ccf
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
    ld a, a
    nop
    dec hl
    nop
    ld a, a
    nop
    cp $00
    cp a
    nop
    ld l, a
    nop
    cp e
    nop
    rst $30
    nop
    rst $38
    nop
    ld bc, $fefe
    ld bc, $00ff
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    dec b
    nop
    dec b
    nop
    ld [bc], a
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
    nop
    nop
    nop
    ld a, a
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec d
    nop
    ld bc, $0f00
    nop
    rlca
    nop
    ld bc, $0100
    nop
    ld b, $00
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
    inc h
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rrca
    nop
    ld b, a
    cp b
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
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
    ld bc, $0700
    nop
    ld [bc], a
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
    ld a, a
    nop
    ldh a, [rP1]
    rst $38
    rrca
    ldh [$0e], a
    nop
    rrca
    nop
    rrca
    nop
    rst $10
    nop
    rst $10
    nop
    rst $38
    nop
    cp a
    nop
    cp a
    nop
    rst $38
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
    ld a, a
    add b
    add b
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    ei
    nop
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    db $eb
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
    dec bc
    nop
    or a
    nop
    sub e
    nop
    ld h, l
    nop
    jp nz, $0900

    nop
    ld bc, $0000
    nop
    ld bc, $e900
    ld d, $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    ld a, a
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
    rra
    nop
    ld a, a
    nop
    cp a
    nop
    rst $38
    nop
    rra
    nop
    rrca
    nop
    cp a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp+$07
    ccf
    nop
    ld e, e
    nop
    rra
    nop
    dec bc
    nop
    ccf
    nop
    rst $18
    nop
    scf
    nop
    rst $38
    nop
    rst $08
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
    db $fc
    nop
    rst $38
    nop
    rrca
    ldh a, [$fb]
    ld a, a
    ld e, [hl]
    ld h, c
    ld [$9001], sp
    inc bc
    and b
    inc bc
    jr nz, jr_06c_7d07

    ret nz

    rra
    ret nz

    rra
    add b
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    adc d

jr_06c_7d07:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rrca
    ldh a, [$f0]
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    db $fc
    db $fc
    inc bc
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
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld l, a
    nop
    rst $38
    nop
    rst $10
    nop
    rst $38
    nop
    ld e, a
    nop
    ld a, a
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
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld bc, $0200
    nop
    inc d
    nop
    nop
    nop
    inc b
    nop
    ld bc, $0000
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
    rlca
    nop
    ld a, a
    nop
    rst $38
    nop
    ld [hl], a
    nop
    sub a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld [bc], a
    nop
    cpl
    nop
    rst $38
    nop
    rst $38
    nop
    push af
    ld a, [$89f7]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    db $e4
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rrca
    ldh a, [$f0]
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rra
    ldh [$e0], a
    rra
    rst $38
    nop
    rra
    ldh [$e0], a
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
    rst $38
    nop
    rst $38
    nop
    ld bc, $2000
    nop
    rst $38
    nop
    ld e, a
    nop
    rrca
    nop
    ld de, $5700
    nop
    ld e, [hl]
    nop
    ld c, e
    nop
    ld e, c
    nop
    ld [hl], l
    nop
    ld e, l
    nop
    db $ed
    nop
    ld a, [bc]
    nop
    xor b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rla
    nop
    dec de
    nop
    rrca
    nop
    ld a, [bc]
    nop
    inc b
    nop
    ld [bc], a
    nop
    ld c, e
    nop
    rst $08
    nop
    rla
    nop
    rrca
    nop
    rrca
    nop
    rla
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
    push af
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    nop
    nop
    rst $38
    and a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    dec b
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
    rst $38
    nop
    ld a, a
    nop
    db $ed
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    or a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $18
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    xor b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rlca
    ld hl, sp-$08
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
    nop
    rst $38
    nop
    rst $38
    nop
    inc bc
    db $fc
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    inc bc
    db $fc

Call_06c_7f32:
    db $fc
    inc bc
    rst $38
    nop
    inc bc
    db $fc
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
    rst $38
    nop
    rst $38
    nop
    ld de, $0900
    nop
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
    dec l
    jp nc, Jump_000_00ff

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

Call_06c_7f80:
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    cp c
    ld b, [hl]
    rst $38
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
    nop
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
    rst $38
    nop
    rst $38
    nop
    stop
    ld l, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld bc, $0302
    inc b
    dec b
    dec b
    dec b
    ld b, $07
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0a09], sp
    dec bc
    dec b
    dec b
    dec b
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr @+$1b

    dec b
    dec b
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$0c

    ld hl, $2322
    inc h
    dec b
    dec b
    dec b
    dec b
