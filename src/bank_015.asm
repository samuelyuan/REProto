SECTION "ROM Bank $015", ROMX[$4000], BANK[$15]

    add hl, bc
    ld d, $15
    ld a, [hl+]
    ld b, d
    cp l
    inc hl
    sbc $03
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, [$ecff]
    rst $38
    ldh [rIE], a
    ld [c], a
    rst $38
    db $e4
    rst $38
    ldh a, [rIE]
    ld [c], a
    rst $38
    pop hl
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld a, [c]
    rst $38
    pop af
    rst $38
    ld hl, sp-$01
    ld [hl], d
    rst $38
    ld [hl], b
    rst $38
    ld [hl], c
    rst $38
    ld a, b
    rst $38
    ld a, [$7cff]
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    jr c, @+$01

    jr c, @+$01

    cp h
    rst $38
    dec a
    rst $38
    db $fd
    rst $38
    dec a
    rst $38
    dec a
    rst $38
    dec a
    rst $38
    inc e
    rst $38
    rra
    rst $38
    rra
    rst $38
    sbc [hl]
    rst $38
    ld e, [hl]
    rst $38
    cp [hl]
    rst $38
    sbc $ff
    ld e, a
    rst $38
    xor a
    rst $38
    ld c, a
    rst $38
    xor a
    rst $38
    adc a
    rst $38
    ld c, a
    rst $38
    ld e, a
    rst $38
    xor a
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    add a
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld b, $ff
    rlca
    rst $38
    rlca
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
    inc bc
    rst $38
    inc bc
    rst $38
    add e
    rst $38
    add e
    rst $38
    add e
    rst $38
    add e
    rst $38
    add c
    rst $38
    add c
    rst $38
    ld bc, $01ff
    rst $38
    ld hl, $01ff
    rst $38
    pop bc
    ld a, a
    pop hl
    ld a, a
    adc l
    ld a, a
    sbc l
    ld a, a
    sub a
    ld a, a
    cp a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    adc a
    ld a, a
    adc a
    ld a, a
    adc a
    ld a, a
    adc a
    ld a, a
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $00
    ccf
    rst $30
    rra
    rst $30
    rra
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
    ld e, a
    rst $38
    cp a
    ccf
    rst $08
    ld a, a
    sbc a
    rst $38
    ld a, a
    cp $ff
    ld hl, sp-$01
    ldh a, [rIE]
    ret nz

    rst $38
    ld [de], a
    rst $38
    inc b
    rst $38
    ld hl, $43ff
    rst $38
    adc a
    rst $38
    ld e, $ff
    ld a, b
    rst $38
    add hl, sp
    rst $38
    jr c, @+$01

    ld a, [hl-]
    rst $38
    sbc h
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    adc h
    rst $38
    inc l
    rst $38
    adc [hl]
    rst $38
    ld e, $ff
    ld c, [hl]
    rst $38
    ld c, $ff
    ld b, $ff
    ld b, $ff
    rlca
    rst $38
    rla
    rst $38
    ld c, a
    rst $38
    xor a
    rst $38
    dec hl
    rst $38
    ld e, e
    rst $38
    di
    rst $38
    db $d3
    rst $38
    dec hl
    rst $38
    xor c
    rst $38
    ld d, l
    rst $38
    ld d, c
    rst $38
    ld c, b
    rst $38
    xor b
    rst $38
    sub l
    rst $38
    ld c, b
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
    sub d
    rst $38
    add b
    rst $38
    add a
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0202
    inc bc
    nop
    nop
    inc b
    dec b
    ld b, $07
    nop
    nop
    nop
    nop
    nop
    ld [$0202], sp
    add hl, bc
    nop
    nop
    inc b
    dec b
    ld a, [bc]
    dec bc
    inc c
    nop
    nop
    nop
    nop
    dec c
    ld c, $02
    rrca
    nop
    nop
    db $10
    ld de, $1312
    inc d
    dec d
    nop
    nop
    ld d, $17
    ld [bc], a
    ld [bc], a
    jr jr_015_41c1

    nop
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_015_41d2

    ld [hl+], a
    inc hl
    ld [bc], a
    ld [bc], a
    inc h
    add hl, de
    nop
    dec h
    ld h, $27
    jr z, jr_015_41e6

    ld a, [hl+]
    dec hl
    jr nz, jr_015_41ed

jr_015_41c1:
    ld [bc], a
    dec l
    ld l, $2f
    nop
    nop
    jr nc, jr_015_41fa

    ld [hl-], a
    inc sp
    inc [hl]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    dec [hl]
    ld [hl], $37

jr_015_41d2:
    jr c, jr_015_41d4

jr_015_41d4:
    nop
    nop
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    nop
    nop
    nop
    ld b, e
    ld b, h
    ld b, l

jr_015_41e6:
    ld b, [hl]
    ld b, a
    ld c, b
    ld a, [hl+]
    ld c, c
    ld c, d
    ld c, e

jr_015_41ed:
    inc c
    inc c
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a

jr_015_41f3:
    inc c
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld a, [hl+]
    ld d, h

jr_015_41fa:
    ld d, l
    inc c
    inc c
    inc c
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    inc c
    inc c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld a, [hl+]
    ld e, [hl]

jr_015_420a:
    inc c
    inc c
    inc c
    ld e, a
    ld h, b
    ld h, c
    nop
    nop
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
    ld [hl], b
    ld [hl], c
    nop
    nop
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
    ld [bc], a
    ld a, [hl]
    ld a, a
    nop
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]

jr_015_423b:
    add a
    adc b
    inc c
    inc c
    inc c
    adc c
    adc d
    ld [bc], a
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    jr nz, @+$22

    jr nz, @-$6e

    inc c
    inc c
    inc c
    sub c
    nop
    sub d
    ld [bc], a
    ld [bc], a
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    jr nz, jr_015_41f3

    sbc c
    inc c
    inc c
    inc c
    sbc d
    nop
    sbc e
    ld [bc], a
    ld [bc], a
    ld [bc], a
    sbc h
    inc c
    sbc l
    sbc [hl]
    jr nz, jr_015_420a

    and b
    inc c
    inc c
    inc c
    and c
    and d
    ld c, $02
    ld [bc], a
    and e
    and h
    and l
    and [hl]
    jr nz, jr_015_429a

    and a
    inc c
    inc c
    inc c
    inc c
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    jr nz, jr_015_423b

    or d
    or e
    inc c
    inc c
    inc c
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    jr nz, jr_015_42ba

jr_015_429a:
    cp l
    cp [hl]
    inc c
    inc c
    inc c
    cp a
    ret nz

    inc c
    pop bc
    jp nz, $c4c3

    push bc
    add $20
    jr nz, jr_015_42cb

    rst $00
    inc c
    inc c
    inc c
    ret z

    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop

jr_015_42ba:
    jr nz, jr_015_42dc

Jump_015_42bc:
    nop
    nop
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    jr nz, jr_015_42eb

jr_015_42cb:
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    jr nz, jr_015_42fa

    nop
    nop

jr_015_42dc:
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    jr nz, jr_015_42ea

jr_015_42ea:
    nop

jr_015_42eb:
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
    jr nz, jr_015_42f9

jr_015_42f9:
    nop

jr_015_42fa:
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    jr nz, jr_015_4327

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
    jr nz, jr_015_4335

    jr nz, jr_015_4317

jr_015_4317:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $20
    jr nz, jr_015_4343

    nop
    nop
    nop
    nop

jr_015_4327:
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

jr_015_4335:
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

jr_015_4343:
    nop
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
    jr nz, jr_015_4372

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_015_4384

    nop
    nop
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

jr_015_4372:
    nop
    jr nz, jr_015_4375

jr_015_4375:
    nop
    nop
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

jr_015_4384:
    nop
    nop
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
    ld b, $01
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
    ld b, $01
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
    ld b, $00
    nop
    inc b
    dec b
    ld [bc], a
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $02
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
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld b, $06
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
    ld b, $55
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
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    cp a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec b
    nop
    ld a, [bc]
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
    ld d, l
    nop
    xor e
    ld bc, $0357
    xor a
    rlca
    ld e, a
    rrca
    cp a
    rra
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
    cp $fc
    rst $38
    db $fd
    ld a, [$f8ff]
    rst $30
    ld hl, sp-$01
    ldh [$df], a
    ldh [$bf], a
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
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor e
    nop
    ld d, a
    nop
    cp a
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
    ld bc, $0200
    nop
    dec b
    nop
    ld a, [hl+]
    nop
    ld d, l
    nop
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fd
    ld hl, sp-$06
    ldh a, [$f5]
    ldh a, [$eb]
    ldh [$d7], a
    ret nz

    xor a
    add b
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld d, l
    nop
    xor e
    nop
    ld d, a
    nop
    xor a
    nop
    ld e, a
    nop
    xor a
    nop
    ld e, a
    nop
    cp a
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    nop
    dec b
    nop
    ld a, [bc]
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
    xor d
    nop
    ld d, l
    ld bc, $01ab
    ld d, a
    inc bc
    xor a
    rrca
    ld e, a
    rrca
    cp a
    rra
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
    cp $fe
    db $fd
    db $fc
    ld a, [$f5f8]
    ldh a, [$fb]
    ldh [$f7], a
    ldh [$ef], a
    ret nz

    rst $10
    add b
    xor a
    nop
    ld e, a
    nop
    cp a
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
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
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
    xor e
    nop
    ld d, a
    nop
    xor a
    nop
    ld e, a
    nop
    xor a
    nop
    ld e, a
    nop
    cp a
    nop
    ld e, a
    nop
    cp a
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
    ld bc, $0200
    nop
    dec b
    nop
    ld a, [bc]
    nop
    dec d
    nop
    ld a, [hl+]
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
    ld d, l
    nop
    xor e
    nop
    ld d, a
    ld bc, $03ab
    ld e, a
    rlca
    cp a
    rrca
    ld a, a
    rra
    cp a
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
    cp $fe
    db $fc
    db $fd
    ld hl, sp-$06
    ldh a, [$f5]
    ldh [$ea], a
    ldh [$d5], a
    ret nz

    xor d
    add b
    ld e, a
    nop
    cp e
    nop
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
    ld b, $ff
    dec b
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    ld a, [hl-]
    rst $38
    dec [hl]
    rst $38
    ld a, d
    rst $38
    push af
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
    xor d
    nop
    ld d, l
    nop
    xor e
    nop
    ld d, a
    nop
    xor a
    nop
    ld d, a
    nop
    xor a
    nop
    ld d, a
    nop
    xor a
    nop
    ld e, a
    nop
    xor a
    nop
    ld e, a
    nop
    cp a
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
    nop
    nop
    ld bc, $0200
    nop
    dec b
    nop
    ld a, [bc]
    nop
    dec b
    nop
    ld a, [bc]
    nop
    dec d
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor e
    nop
    ld d, a
    ld bc, $03af
    ld e, a
    rlca
    cp a
    rrca
    ld a, a
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fd
    db $fc
    ei
    ld hl, sp-$0b
    ldh a, [$eb]
    ldh [$d7], a
    ret nz

    rst $28
    ret nz

    rst $10
    add b
    xor a
    nop
    ld e, a
    nop
    cp a
    nop
    ld a, a
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
    ld bc, $02ff
    rst $38
    inc bc
    rst $38
    ld b, $ff
    dec c
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    ld a, [hl+]
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
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    ld [$fdff], a
    ld a, a
    nop
    cp a
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
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0200
    nop
    dec b
    nop
    ld a, [bc]
    nop
    dec b
    nop
    ld a, [bc]
    nop
    dec b
    nop
    ld a, [bc]
    nop
    dec d
    nop
    ld a, [hl+]
    nop
    dec d
    nop
    ld a, [hl+]
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
    xor d
    nop
    ld d, l
    nop
    xor e
    ld bc, $0357
    xor a
    inc bc
    ld e, a
    rlca
    cp a
    rrca
    ld a, a
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [$ef]
    ldh a, [$ef]
    ret nc

    rst $18
    and b
    cp a
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
    ld bc, $01ff
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38
    dec c
    rst $38
    ld a, [de]
    rst $38
    dec [hl]
    rst $38
    ld l, d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    call nc, $faff
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [bc], a
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    dec b
    nop
    ld [bc], a
    nop
    dec b
    nop
    ld a, [bc]
    nop
    dec b
    nop
    ld a, [bc]
    nop
    dec d
    nop
    ld a, [bc]
    nop
    dec d
    nop
    ld a, [hl+]
    nop
    dec d
    nop
    ld a, [hl+]
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
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor e
    ld bc, $0357
    xor a
    rlca
    ld e, a
    rrca
    cp a
    rra
    ld a, a
    ccf
    rst $38
    ld a, a
    rst $38
    db $fd
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
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
    ld bc, $00ff
    rst $38
    ld bc, $02ff
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    ld a, [hl+]
    rst $38
    dec d
    rst $38
    ld a, [hl+]
    rst $38
    push de
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
    ld d, h
    rst $38
    xor d
    rst $38
    ld d, h
    rst $38
    xor b
    rst $38
    ld d, b
    rst $38
    xor b
    rst $38
    ld d, b
    rst $38
    and b
    rst $38
    ld b, b
    rst $38
    and b
    rst $38
    ld b, b
    rst $38
    and b
    rst $38
    ld b, b
    rst $38
    and b
    rst $38
    ld d, b
    rst $38
    xor b
    rst $38
    ld d, b
    rst $38
    xor b
    rst $38
    ld d, h
    rst $38
    xor d
    rst $38
    dec b
    rst $38
    nop
    rst $38
    nop
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

jr_015_480a:
    rst $38
    nop
    rst $38
    and b
    rst $38
    ld d, b
    rst $38
    xor b
    rst $38
    nop
    ld a, a
    add b
    rst $08
    jr nc, jr_015_480a

    adc [hl]
    db $fc
    di
    rst $38
    db $fc
    rst $38
    rst $38
    xor d
    nop
    ld d, l
    nop
    xor e
    nop
    ld d, l
    nop
    xor e
    nop
    ld d, l
    nop
    xor e
    nop
    ld d, a
    nop
    xor e
    nop
    ld d, a
    nop
    xor a
    nop
    ld d, a
    nop
    xor a
    nop
    ld e, a
    nop
    xor a
    nop
    ld e, a
    nop
    xor a
    nop
    ld e, a
    nop
    cp a
    nop
    ld a, a
    nop
    cp a
    ld bc, $037f
    rst $38
    rlca
    ld a, a
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, [hl]
    rst $38
    or $ff
    db $f4
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
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
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    ld b, $ff
    dec c
    rst $38
    ld a, [de]
    rst $38
    dec [hl]
    rst $38
    ld a, [hl+]
    rst $38
    ld [hl], l
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
    dec d
    rst $38
    xor d
    rst $38
    dec d
    rst $38
    ld a, [hl+]
    rst $38
    inc d
    rst $38
    ld a, [hl+]
    rst $38
    ld d, h
    rst $38
    jr z, @+$01

    ld d, h
    rst $38
    jr z, @+$01

    ld d, b
    rst $38
    jr z, @+$01

    ld d, b
    rst $38
    jr z, @+$01

    db $10
    rst $38
    jr nz, @+$01

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
    ccf
    ret nz

    rlca
    ld hl, sp-$20
    sbc a
    xor a
    nop
    ld e, a
    nop
    cp a
    nop
    ld e, a
    nop
    cp a
    nop
    ld e, a
    nop
    xor a
    nop
    ld e, a
    nop
    cp a
    nop
    ld e, a
    nop
    cp a
    nop
    ld a, a
    nop
    cp a
    nop
    ld a, a
    nop
    cp a
    nop
    ld a, a
    nop
    cp a
    nop
    ld a, a
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
    ld a, a
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    di
    rst $38
    db $e3
    rst $38
    jp $87ff


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
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, $ff
    ld a, l
    rst $38
    ld l, d
    rst $38
    push af
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, h
    rst $38
    xor b
    rst $38
    ld d, c
    rst $38
    xor d
    rst $38
    ld d, h
    rst $38
    xor b
    rst $38
    ld d, b
    rst $38
    and b
    rst $38
    ld d, b
    rst $38
    and b
    rst $38
    ld b, b
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
    db $fd
    ld [bc], a
    cp $00
    rst $38
    nop
    rst $38
    nop
    push af
    nop
    ld a, [$fd00]
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38
    nop
    ld [$f500], a
    nop
    ld a, [$f500]
    nop
    ld a, [$f500]
    nop
    ld a, [$fd00]
    nop
    ld a, [$fd00]
    nop
    cp $00
    db $fd
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
    ld a, b
    rst $38
    rst $38
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
    rst $38
    rst $38
    cp $ff
    db $fd
    rst $38
    rst $38
    rst $38
    db $eb
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
    ld a, [bc]
    rst $38
    dec b
    rst $38
    adc d
    rst $38
    dec d
    rst $38
    ld [hl+], a
    rst $38
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
    xor a
    nop
    ld d, l
    nop
    xor e
    nop
    ld d, l
    nop
    cp d
    nop
    ld e, l
    nop
    xor [hl]
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
    xor d
    nop
    push de
    nop
    xor d
    nop
    push de
    nop
    ld [$f500], a
    nop
    ld a, [$f500]
    nop
    ld a, [$fd00]
    nop
    ld a, [$fd00]
    nop
    cp $00
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
    ldh [rIE], a
    rst $18
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    ret


    rst $38
    reti


    rst $38
    reti


    rst $38
    ld sp, hl
    rst $38
    db $db
    rst $38
    rst $38
    rst $38
    push de
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
    rst $38
    rst $38
    ld e, a
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
    xor b
    rst $38
    ld d, h
    rst $38
    xor b
    rst $38
    ld d, b
    rst $38
    and b
    rst $38
    ld b, b
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
    cp $00
    rst $38
    nop
    cp $00
    db $fd
    nop
    cp $00
    db $fd
    nop
    ld a, [$fd00]
    nop
    ld a, [$f500]
    nop
    ld [$f500], a
    nop
    xor d
    nop
    push de
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    push de
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
    push de
    nop
    xor d
    nop
    push de
    nop
    db $eb
    nop
    push de
    nop
    ld [$d700], a
    nop
    ld [$d500], a
    nop
    xor a
    nop
    ld d, l
    nop
    xor e
    nop
    ld e, a
    nop
    xor e
    nop
    ld d, a
    nop
    cp e
    nop
    ld d, a
    nop
    xor a
    nop
    ld [hl], a
    nop
    and b
    nop
    ld d, b
    nop
    and b
    nop
    ld d, b
    nop
    and b
    nop
    ld d, b
    nop
    xor b
    nop
    ld d, h

Call_015_4aff:
    nop
    xor d
    nop
    ld d, h
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
    ld d, l
    nop
    xor d
    nop
    push de
    nop
    ld a, [$f500]
    ret nz

    rst $38
    ccf
    rst $38
    rst $18
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    sbc a
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    ld sp, hl
    rst $38
    ld a, a
    rst $38
    xor e
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
    ld a, [$fdff]
    rst $38
    ld d, a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    cp $00
    rst $38
    nop
    cp $00
    db $fd
    nop
    ld a, [$d500]
    nop
    xor e
    nop
    ld d, l
    ld bc, $00ab
    ld d, l
    ld bc, $02ab
    ld d, a
    ld bc, $02ab
    ld d, a
    dec b
    xor a
    ld [bc], a
    ld d, a
    dec b
    xor e
    inc bc
    ld e, a
    nop
    xor e
    ld [bc], a
    ld d, a
    nop
    cp a
    nop
    ld d, a
    nop
    xor a
    nop
    ld a, a
    nop
    xor a
    nop
    ld a, a
    nop
    cp a
    nop
    ld e, a
    nop
    rst $38
    nop
    ld e, a
    nop
    cp a
    nop
    rst $38
    nop
    cp a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    stop
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
    add b
    nop
    ld b, b
    nop
    and b
    nop
    ld d, b
    nop
    xor b
    nop
    ld d, h
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
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
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
    rra
    rst $38
    add b
    rst $38
    cp $ff
    rst $38
    rst $38
    sbc e
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    reti


    rst $38
    push de
    rst $38
    ld l, e
    rst $38
    push de
    rst $38
    ld l, d
    rst $38
    push de
    rst $38
    xor d
    rst $38
    push de
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
    xor e
    rst $38
    ld d, l
    rst $38
    dec bc
    rst $38
    rlca
    rst $38
    dec bc
    rst $38
    rlca
    rst $38
    dec bc
    rst $38
    rla
    rst $38
    rrca
    rst $38
    rla
    rst $38
    cpl
    rst $38
    ld e, a
    rst $38
    cpl
    ld a, a
    ld e, a
    rst $38
    ccf
    ld a, a
    ld e, a
    rst $38
    ccf
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    cp a
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
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    db $f4
    rst $38
    add sp, -$01
    add b
    rst $38
    ld b, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    push de
    nop
    ld [$d500], a
    nop
    ld [$f500], a
    nop
    ld [$f500], a
    nop
    ld a, [$fd00]
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
    add b
    nop
    ld b, b
    nop
    add b
    nop
    ld b, b
    nop
    and b
    nop
    ld d, h
    nop
    xor b
    nop
    ld d, h
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
    ld d, l
    nop
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
    ld a, a
    rst $38
    ld bc, $00d5
    ld [$f580], a
    add b
    ld [$f580], a
    add b
    ld a, [$fd80]
    add b
    cp $80
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
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    call nc, Call_015_4aff
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
    ei
    inc b
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
    ld d, l
    nop
    xor d
    nop
    push af
    nop
    ld a, [$ff00]
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
    and b
    nop
    ld d, b
    nop
    xor b
    nop
    ld d, h
    nop
    xor d
    nop
    push af
    ldh a, [rIE]
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
    rlca
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
    ld d, l
    nop
    xor e
    nop
    ld d, l
    nop
    xor e
    nop
    rst $10
    nop
    db $eb
    nop
    rst $10
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
    rst $38
    nop
    rst $38
    call nz, $dfff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    pop de
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
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor a
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [$e0], a
    rst $38
    rst $38
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
    ld bc, $01ff
    rst $38
    ld bc, $f3ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $f4
    rst $38
    ld [bc], a
    rst $38
    ld b, b
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
    nop
    rst $38
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
    ld a, e
    add h
    inc l
    db $d3
    ld e, a
    nop
    cp a
    nop
    ld e, a
    nop
    cp a
    nop
    ld a, a
    nop
    cp a
    nop
    ld a, a
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    add a
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
    ld a, a
    rst $38
    ld e, $ff
    ld e, $ff
    ld e, $ff
    ld e, $ff
    inc a
    rst $38
    inc a
    rst $38
    dec a
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, e
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
    xor a
    rst $38
    jr nc, @+$01

    and b
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    db $ec
    inc de
    rst $28
    db $10
    add e
    ld a, h
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
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld c, $1f
    ld e, $1e
    rra
    ld e, $1f
    ld e, $1d
    ccf
    inc a
    ccf
    inc a
    ld a, $3d
    ld a, [hl]
    ld a, c
    ld a, [hl]
    ld a, c
    ld a, h
    ld a, e
    ld a, h
    ld [hl], e
    cp $f3
    ei
    rst $30
    rst $30
    rst $38
    rst $30
    rst $28
    rst $30
    rst $28
    rst $20
    rst $38
    rst $08
    rst $38
    rst $08
    ldh a, [$c7]
    rst $38
    ld a, [c]
    rst $18
    cp $8f
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
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
    ld bc, $84ff
    rst $38
    sub c
    rst $38
    sub h
    rst $38
    nop
    rst $38
    nop
    rst $38
    pop hl
    rst $38
    ld a, $ff
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

jr_015_4f05:
    rst $38
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
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rlca
    rst $38
    pop bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cpl
    rst $38
    ld h, l
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
    rst $30
    ld [$0af5], sp
    rst $38
    nop
    rst $38
    nop
    sbc a
    ld h, b
    cpl
    ret nc

    sub d
    ld l, l
    ld d, b
    xor a
    ld sp, hl
    ld sp, hl
    ld hl, sp-$08
    ldh a, [$f1]
    pop af
    ld a, [c]

jr_015_4f48:
    di
    ldh a, [$f3]
    ldh a, [$e3]
    db $e4
    rst $20
    ldh [$e7], a
    ldh [$c7], a
    ret nz

    rst $00
    ret z

    rst $08
    ret nz

    rst $08
    ret nc

    sbc a
    add b
    sbc a
    add b
    sbc a
    and b
    ccf
    nop
    xor a
    sub b
    cpl
    db $10
    ld e, a
    jr nz, jr_015_4f48

    jr nz, jr_015_4f05

    ld h, l
    or l
    ld c, d
    rla
    add sp, $6b
    sub h
    inc hl
    db $dd
    adc c
    ld [hl], a
    ld [hl+], a
    rst $18
    ld b, $fb
    ld [bc], a
    rst $38
    ld b, $ff
    ld b, $ff
    inc b
    rst $38
    adc h
    rst $38
    cp h
    rst $38
    cp b
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [$7f], a
    db $fd
    add e
    rst $28
    rst $38
    dec d
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
    rrca
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld [bc], a
    rst $38
    ld b, $ff
    ld b, b
    rst $38
    or l
    rst $38
    rst $38
    rst $38
    add c
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
    ld a, a
    rst $38
    ccf
    rst $38
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    db $10
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
    nop
    rst $38
    nop
    db $d3
    inc l
    sbc h
    ld h, e
    rst $30
    ld [$f10e], sp
    rst $38
    rst $38
    rrca
    rrca
    nop
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
    cp a
    ld b, b
    rst $38
    jr c, @+$01

    ld a, h
    rst $38
    ld a, c
    rst $18
    rst $28
    rra
    rst $28
    cpl
    add $3f
    add $3f
    push bc
    ccf
    call z, $887f
    ld a, a
    adc [hl]
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    jr c, @+$01

    jr c, @+$01

    jr nc, @+$01

    ld [hl], b
    ccf
    ld hl, sp+$07
    ld sp, hl
    cp $03
    or a
    db $fd
    inc b
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
    rrca
    rst $38
    ld b, b
    rst $38
    ld l, e
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
    cpl
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rra
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    cpl
    rst $38
    db $10
    rst $38
    ld [bc], a
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
    nop
    cp a
    ld b, b
    ei
    inc b
    nop
    nop
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $00
    nop
    nop
    nop
    nop
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_015_50c1

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_015_50d1

    inc c
    inc c
    inc c
    inc c
    inc c
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_015_50e6

    ld a, [hl+]
    dec hl
    inc l
    dec l

jr_015_50c1:
    ld l, $2f
    jr nc, jr_015_50f6

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_015_5106

    ld a, [hl-]
    dec sp
    dec sp
    inc a

jr_015_50d1:
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    dec sp
    ld b, d
    ld b, e
    ld b, h
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    dec sp
    dec sp

jr_015_50e6:
    dec sp
    ld c, c
    ld c, d
    ld c, e
    dec sp
    dec sp
    dec sp
    dec sp
    ld c, h
    ld c, l
    dec c
    ld c, [hl]
    ld c, a
    ld d, b
    dec sp
    dec sp

jr_015_50f6:
    dec sp
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    dec sp
    dec sp
    ld d, l
    ld d, [hl]
    ld d, a
    inc c
    dec c
    ld c, [hl]
    ld e, b
    ld e, c
    ld e, d

jr_015_5106:
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    dec sp
    dec sp
    ld h, b
    ld h, c
    ld h, c
    inc c
    inc c
    dec c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    dec sp
    ld l, e
    ld h, c
    ld h, c
    ld l, h
    inc c
    inc c
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    dec sp
    dec sp
    dec sp
    dec sp
    ld [hl], e
    ld h, c
    ld h, c
    ld [hl], h
    ld [hl], l
    db $76
    inc c
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    dec sp
    ld a, l
    ld a, [hl]
    ld a, a
    ld h, c
    ld h, c
    ld [hl], h
    ld [hl], h
    add b
    inc c
    add c
    add d
    add e
    add h
    dec sp
    dec sp
    dec sp
    dec sp
    add l
    ld h, c
    ld h, c
    ld h, c
    ld [hl], h
    ld [hl], h
    ld [hl], h
    add [hl]
    add a
    adc b
    adc c
    adc d
    dec sp
    dec sp
    dec sp
    dec sp
    adc e
    ld a, a
    ld h, c
    ld h, c
    adc h
    adc l
    ld [hl], h
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    sub e
    sub h
    ld h, c
    inc c
    sub l
    adc l
    ld [hl], h
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
    ld h, c
    inc c
    inc c
    and c
    ld [hl], h
    and d
    and e
    and h
    and l
    and [hl]
    and [hl]
    and a
    ld h, c
    xor b
    xor c
    xor d
    ld h, c
    inc c
    inc c
    inc c
    xor e
    ld [hl], h
    xor h
    xor l
    xor [hl]
    xor a
    and [hl]
    or b
    sub c
    or c
    or d
    or e
    ld h, c
    inc c
    inc c
    inc c
    or h
    ld [hl], h
    or l
    or [hl]
    ld h, c
    or a
    and [hl]
    and [hl]
    cp b
    ld h, c
    cp c
    cp d
    sub c
    inc c
    inc c
    inc c
    cp e
    ld [hl], h
    cp h
    cp l
    ld h, c
    cp [hl]
    and [hl]
    and [hl]
    cp a
    ret nz

    pop bc
    jp nz, $01c3

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
    jr nz, jr_015_5212

    jr nz, jr_015_5214

    jr nz, jr_015_51f6

jr_015_51f6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_015_5212:
    nop
    nop

jr_015_5214:
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_015_5232

jr_015_5232:
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
    jr nz, @+$22

    nop
    nop
    nop
    nop
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_015_5272

    jr nz, jr_015_5254

jr_015_5254:
    nop
    ld b, $06
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_015_5283

    nop
    nop
    ld b, $06
    ld b, $02
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_015_5272:
    nop
    jr nz, jr_015_5275

jr_015_5275:
    nop
    ld [bc], a
    ld b, $02
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_015_5283:
    jr nz, jr_015_5285

jr_015_5285:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
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
    ld bc, $0101
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
    ld bc, $0101
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
    ld d, l
    nop
    ld a, [hl+]
    nop
    ld d, l
    nop
    ld a, [hl+]
    nop
    ld d, l
    nop
    ld a, [hl+]
    nop
    ld d, l
    nop
    ld a, [hl+]
    nop
    ld d, l
    nop
    ld a, [hl+]
    nop
    ld d, l
    nop
    ld a, [hl+]
    nop
    ld d, l
    nop
    ld l, d
    nop
    ld d, l
    nop
    ld l, d
    nop
    ld d, l
    nop
    ld a, [hl+]
    nop
    ld d, l
    nop
    ld l, d
    nop
    ld d, l
    nop
    ld a, [hl+]
    nop
    dec d
    nop
    ld a, [bc]
    nop
    dec d
    nop
    ld a, [bc]
    nop
    dec d
    nop
    ld a, [bc]
    nop
    dec b
    nop
    ld a, [bc]
    nop
    dec b
    nop
    ld a, [bc]
    nop
    dec b
    nop
    ld a, [bc]
    nop
    dec b
    nop
    ld a, [bc]
    nop
    dec b
    nop
    ld a, [bc]
    nop
    dec b
    nop
    ld a, [bc]
    nop
    dec b
    nop
    ld a, [bc]
    nop
    dec b
    nop
    ld a, [bc]
    nop
    dec d
    nop
    ld a, [bc]
    nop
    dec d
    nop
    ld a, [bc]
    nop
    dec d
    nop
    ld a, [bc]
    nop
    dec d
    nop
    ld a, [hl+]
    nop
    dec d
    nop
    ld a, [hl+]
    nop
    dec d
    nop
    ld a, [hl+]
    nop
    ld d, l
    ld bc, $012b
    ld d, l
    ld bc, $032b
    ld d, a
    inc bc
    cpl
    rlca
    ld d, a
    rlca
    cpl
    rrca
    ld d, a
    nop
    xor a
    nop
    ld e, a
    nop
    xor a
    nop
    ld e, a
    nop
    xor a
    nop
    ld e, a
    nop
    xor a
    nop
    ld d, a
    nop
    xor e
    nop
    ld d, a
    nop
    xor e
    nop
    ld d, l
    nop
    xor e
    nop
    ld d, l
    nop
    xor e
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor e
    nop
    ld d, a
    nop
    xor e
    nop
    ld d, a
    nop
    xor e
    nop
    ld d, l
    nop
    xor e
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
    ld d, l
    nop
    xor e
    nop
    ld d, l
    nop
    xor e
    nop
    ld d, l
    nop
    xor e
    nop
    ld d, a
    nop
    xor e
    nop
    ld d, a
    nop
    xor [hl]
    ld bc, $0057
    xor [hl]
    ld bc, $035c
    xor d
    dec b
    ld e, h
    inc bc
    cp b
    rlca
    ld e, l
    inc bc
    cp c
    rlca
    ld e, e
    rlca
    cp e
    rlca
    ld [hl], a
    rrca
    rst $30
    rrca
    ld [hl], a
    rrca
    rst $38
    rrca
    ld a, a
    rrca
    rst $38
    rra
    ld e, a
    rra
    cp a
    ccf
    ld a, a
    ccf
    cp a
    ccf
    ld a, a
    ld a, a
    rst $38
    ld a, a
    cp $ff
    cp $ff
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rSC]
    nop
    dec b
    nop
    ld [bc], a
    nop
    dec b
    nop
    ld [bc], a
    nop
    dec b
    nop
    ld [bc], a
    nop
    dec b
    nop
    ld [bc], a
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    ld bc, $fd00
    ld [bc], a
    cp $01
    db $fd
    ld [bc], a
    cp $01
    db $fd
    ld [bc], a
    cp $01
    ld a, l
    ld [bc], a
    cp $01
    ld a, a
    nop
    cp $01
    ld a, a
    nop
    cp $01
    ld a, a
    nop
    cp [hl]
    ld bc, $007f
    cp a
    nop
    ld a, a
    nop
    cp a
    nop
    ld a, a
    nop
    cp a
    nop
    ld a, a
    nop
    cp a
    nop
    ld a, a
    nop
    cp a
    nop
    ld a, a
    nop
    cp a
    nop
    ld e, a
    nop
    cp a
    nop
    ld e, a
    nop
    cp a
    nop
    ld e, a
    nop
    cp a
    nop
    ld e, a
    nop
    cp a
    nop
    ld e, a
    nop
    cp a
    nop
    ld e, a
    nop
    xor a
    nop
    ld e, a
    nop
    xor a
    nop
    ld e, a
    nop
    cp a
    nop
    ld e, a
    nop
    cp a
    nop
    ld a, a
    nop
    cp a
    nop
    ld a, a
    nop
    cp [hl]
    ld bc, $007f
    cp $01
    ld a, l
    ld [bc], a
    cp $01
    ld a, l
    ld [bc], a
    ld a, [$7d05]
    ld [bc], a
    ld a, [$0b05]
    nop
    rla
    nop
    dec bc
    nop
    rla
    ld bc, $010f
    rla
    inc bc
    cpl
    inc bc
    rra
    inc bc
    cpl
    rlca
    rra
    rlca
    ccf
    rrca
    ld e, a
    rrca
    cp a
    rra
    ld a, a
    rra
    rst $38
    rra
    ld a, a
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
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    pop bc
    rst $38
    add b
    rst $38
    add c
    rst $38
    add d
    rst $38
    ld bc, $02ff
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    ld a, [hl+]
    rst $38
    dec d
    rst $38
    ld a, [hl+]
    xor e
    nop
    ld d, l
    nop
    xor e
    nop
    ld d, l
    nop
    dec hl
    nop
    ld d, l
    nop
    dec hl
    nop
    ld d, l
    nop
    dec hl
    nop
    ld d, l
    nop
    dec hl
    nop
    ld d, a
    nop
    dec hl
    nop
    ld d, a
    nop
    dec hl
    nop
    ld d, a
    nop
    dec hl
    nop
    ld d, a
    nop
    dec hl
    nop
    ld d, a
    nop
    cpl
    nop
    ld d, a
    nop
    xor a
    nop
    ld d, a
    nop
    xor a
    ld bc, $0157
    xor a
    ld bc, $035f
    xor a
    inc bc
    ld e, a
    rlca
    cp a
    rlca
    ld e, a
    ld c, $bf
    ld c, $7f
    rrca
    cp a
    dec e
    ld a, a
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    pop hl
    rst $38
    ret nz

    rst $38
    pop bc
    rst $38
    jp nz, $85ff

    rst $38
    add d
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    ld a, [hl+]
    rst $38
    dec d
    rst $38
    ld a, [hl+]
    rst $38
    ld d, l
    rst $38
    xor e
    rst $38
    ld d, l
    rst $38
    xor e
    rst $38
    ld d, a
    rst $38
    xor e
    rst $38
    ld d, a
    rst $38
    xor a
    rst $38
    ld d, [hl]
    rst $38
    xor a
    rst $38
    ld e, a
    rst $38
    xor l
    rst $38
    ld e, a
    rst $38
    cp e
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    ld [hl], a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    rst $28
    xor a
    nop
    ld d, a
    nop
    xor a
    nop
    ld d, a
    nop
    xor a
    nop
    ld d, a
    nop
    xor a
    nop
    ld d, a
    nop
    xor a
    nop
    ld d, a
    nop
    xor a
    nop
    ld d, a
    nop
    xor a
    nop
    ld e, a
    nop
    xor a
    nop
    ld e, a
    nop
    cp a
    nop
    ld e, a
    nop
    cp a
    nop
    ld a, a
    nop
    cp a
    nop
    ld a, a
    nop
    cp a
    nop
    ld a, a
    ld bc, $00ff
    ld a, a
    ld bc, $00ff
    rst $38
    ld bc, $02ff
    rst $38
    ld bc, $02ff
    rst $38
    ld bc, $02ff
    rst $38
    dec b
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38
    dec b
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38
    dec b
    rst $38
    inc bc
    rst $38
    dec b
    rst $38
    dec bc
    rst $38
    rlca
    rst $38
    rrca
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
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    ld a, [$f9ff]
    rst $38
    ld a, [$b1ff]
    rst $38
    ld [hl], d
    rst $38
    pop hl
    rst $38
    ld [c], a
    rst $38
    push bc
    rst $38
    jp z, $c5ff

    rst $38
    adc d
    rst $38
    sub l
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    dec hl
    rst $38
    dec d
    rst $38
    dec hl
    rst $38
    ld d, l
    rst $38
    dec hl
    rst $38
    ld d, a
    rst $38
    xor e
    rst $38
    ld d, a
    rst $38
    xor e
    rst $38
    ld d, a
    rst $38
    xor a
    rst $38
    ld d, a
    rst $38
    xor a
    rst $38
    ld e, a
    rst $38
    xor a
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
    cp a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    inc e
    rst $38
    ld a, [hl-]
    rst $38
    dec d
    rst $38
    ld a, [hl-]
    rst $38
    dec e
    rst $38
    ld a, [hl+]
    rst $38
    ld e, l
    rst $38
    xor d
    rst $38
    ld e, l
    rst $38
    xor d
    rst $38
    ld e, l
    rst $38
    xor [hl]
    rst $38
    ld d, l
    rst $38
    xor [hl]
    rst $38
    ld d, l
    rst $38
    xor [hl]
    rst $38
    ld d, l
    rst $38
    xor [hl]
    rst $38
    ld d, l
    rst $38
    xor [hl]
    rst $38
    ld d, a
    rst $38
    xor e
    rst $38
    ld d, a
    rst $38
    xor a
    rst $38
    ld d, a
    rst $38
    xor a
    rst $38
    ld d, a
    rst $38
    xor a
    rst $38
    ld e, a
    rst $38
    xor a
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    ld a, a
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
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
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
    ld a, a
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
    ld a, a
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
    add b
    rst $38
    ld b, b
    rst $38
    and b
    rst $38
    ld d, h
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
    xor d
    rst $38
    ld d, l
    rst $38
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    db $eb
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
    rst $18
    dec hl
    sub c
    ld a, a
    add b
    rst $38
    add b
    rst $38
    ldh [rIE], a
    db $f4
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
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $f4
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    add b
    ld [$f500], a
    nop
    ld a, [$fd00]
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
    add b
    rst $38
    ld d, b
    rst $38
    xor b
    rst $38
    ld d, h
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
    push de
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
    ld a, [$ffff]
    rst $38
    ld h, e
    rst $38
    ret nc

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc bc
    cp $02
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld hl, sp-$01
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $eb
    rst $38
    rst $10
    rst $38
    or [hl]
    rst $38
    inc c
    rst $38
    inc d
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    ld [$08ff], sp
    rst $38
    db $10
    rst $38
    db $10
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
    nop
    rst $38
    add b
    rst $38
    ld d, b
    rst $38
    xor b
    rst $38
    ld d, h
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    ld [$ffff], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fd
    cp $f8
    cp $f9
    cp $f4
    rst $38
    rst $30
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    pop de
    rst $38
    ret nc

    rst $38
    ldh [rIE], a
    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $08
    ld e, a
    pop af
    dec bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    and d
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
    ld [$f500], a
    nop
    cp $00
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
    inc a
    cp $1c
    cp $fc
    cp $fc
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
    cp $a7
    and $95
    ld a, [c]
    rst $20
    di
    ld a, b
    db $fd
    ld e, h
    db $e4
    ret nz

    sbc b
    and e
    call z, $933a
    ret z

    ld h, [hl]
    xor e
    dec sp
    adc b
    adc $02
    di
    inc h
    ld hl, sp-$35
    cp $e5
    rst $38
    ld sp, hl
    rst $38
    cp $ff
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    ld [$40ff], sp
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    di
    rst $38
    rst $30
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $00
    ccf
    rst $20
    rra
    ccf
    rst $28
    ccf
    rst $28
    rrca
    rst $38
    rrca
    rst $38
    ld e, a
    rst $38
    rra
    rst $38
    rra
    rst $38
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
    cp [hl]
    rst $38
    db $fc
    rst $38
    sub h
    rst $38
    db $10
    xor b
    nop
    ld d, b
    nop
    xor b
    nop
    ld d, b
    nop
    xor b
    nop
    ld d, h
    nop
    xor d
    nop
    ld d, h
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
    push af
    nop
    ld a, d
    nop
    rra
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_015_59e8:
    nop
    nop
    ret nz

    nop
    ldh a, [$80]
    ld hl, sp-$20
    cp $f8
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    rla
    rst $28
    add a

Call_015_59ff:
    rst $38
    ld l, a
    cp l
    cp e
    push bc
    dec de
    ld b, b
    rlca
    jr nz, jr_015_59e8

    rra
    daa
    ld d, e
    sbc e
    ld b, c
    scf
    ld e, e
    sbc e
    jp nz, Jump_000_1777

    sbc a
    cpl
    rst $28
    rst $00
    cp $ef
    cp $f7
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ld [hl], b
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld hl, sp-$01
    jp hl


    rst $38
    or b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

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
    add b
    nop
    ld b, b
    nop
    and b
    nop
    ld d, b
    nop
    xor b
    nop
    ld d, h
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
    ld d, l
    nop
    xor d
    nop
    push af
    nop
    ld a, $00
    rrca
    nop
    inc bc
    nop
    inc bc
    nop
    rlca
    inc bc
    rlca
    rlca
    rlca
    inc bc
    adc a
    inc bc
    rst $08
    adc a
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
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $20
    rst $38
    rst $00
    rst $38
    jp $83fe


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
    adc a
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
    rst $38
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
    rst $30
    rst $38
    rst $28
    rst $38
    xor $ff
    rst $28
    rst $38
    rst $08
    rst $38
    ret nz

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
    add b
    nop
    ld b, b
    nop
    and b
    nop
    ld d, h
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    push de
    nop
    ld [$fd00], a
    nop
    rst $38
    add b
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
    pop bc
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    and b
    rst $38
    ret nc

    rst $38
    xor b
    rst $38
    push de
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
    push de
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld [hl], b
    rst $38
    ld b, c
    rst $38
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
    ld b, b
    nop
    xor b
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
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    ld [$fd00], a
    nop
    ld a, [$fff0]
    rst $38
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
    nop
    rst $38
    nop
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
    ld d, b
    rst $38
    xor b
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
    pop de
    rst $38
    add h
    push de
    nop
    ld [$d500], a
    nop
    ld [$d500], a
    nop
    ld [$f500], a
    nop
    ld [$f500], a
    nop
    ld a, [$fd00]
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
    nop
    nop
    nop
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
    ld d, b
    nop
    xor b
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
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    push de
    add b
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
    and b
    rst $38
    ld d, h
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, [hl]
    rst $38
    ld h, l
    rst $38
    ld a, d
    rst $38
    ld a, l
    rst $38
    jr c, @+$01

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
    xor d
    nop
    push de
    nop
    ld [$0000], a
    nop
    nop
    nop
    add b
    nop
    ld d, b
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
    ld d, l
    nop
    xor d
    nop
    push af
    ldh [$fe], a
    cp $ff
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld h, b
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld a, [$f5ff]
    rst $38
    ld a, [$f5ff]
    rst $38
    ld a, [$f5ff]
    rst $38
    ld a, [$f5ff]
    rst $38
    ld a, [$f5ff]
    rst $38
    ld a, [$f5ff]
    rst $38
    ld [$f5ff], a
    rst $38
    ld [$f5ff], a
    rst $38
    ld [$f5ff], a
    rst $38
    ld [$f5ff], a
    rst $38
    ld [$f5ff], a
    rst $38
    ld [$d5ff], a
    rst $38
    ld [$d5ff], a
    rst $38
    ld [$d4ff], a
    rst $38
    ld [$d4ff], a
    rst $18
    ret z

    rst $18
    call nc, $c8df
    rst $18
    call nc, $8adf
    rst $18
    push de
    rst $18
    adc d
    rst $18
    push de
    rst $18
    add d
    sbc a
    add b
    sbc a
    add b
    sbc [hl]
    nop
    or l
    add b
    xor d
    nop
    push hl
    add b
    ld hl, sp+$50
    rst $38
    xor d
    rra
    dec d
    ldh a, [$80]
    rst $38
    ld d, b
    rst $38
    ld a, [hl+]
    rst $38
    dec b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld [$f500], a
    nop
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld d, l
    nop
    xor d
    nop
    push af
    ldh [rIE], a
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
    cp $ff
    xor e
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
    ld d, b
    rst $38
    and b
    rst $38
    ld d, b
    rst $38
    and b
    rst $38
    ld b, b
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
    ld d, b
    rst $38
    and b
    rst $38
    ld d, l
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
    cpl
    nop
    jp $fc80


    ld d, h
    rst $38
    xor d
    rrca
    dec b
    ldh a, [$80]
    rst $38
    ld d, h
    rst $38
    ld a, [hl+]
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    ld d, l
    nop
    ld [$ff00], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld d, l
    nop
    ld [$ffc0], a
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
    rst $38
    nop
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
    ld e, a
    rst $38
    xor e
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
    ld de, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld a, $00
    pop bc
    add b
    db $fc
    ld d, h
    ld a, a
    ld a, [hl+]
    rlca
    dec b
    ld hl, sp-$80
    rst $38
    ld d, h
    rst $38
    ld a, [hl+]
    rst $38
    ld bc, $00ff
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    rst $38
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
    xor d
    nop
    ld d, l
    nop
    ld a, [$fff8]
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
    ld bc, $00ff
    rst $38
    nop
    rst $38
    db $f4
    rst $38
    ld e, a
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
    ld d, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld d, l
    nop
    dec h
    nop
    ret nz

    add b
    db $fc
    ld d, h
    ld a, a
    ld a, [hl+]
    add a
    dec b
    ld hl, sp-$60
    rst $38
    ld d, h
    rst $38
    ld a, [bc]
    ld d, l
    nop
    xor d
    nop
    ld d, l
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
    nop
    nop
    ld b, b
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
    ld d, l
    nop
    xor d
    nop
    push af
    ldh [rIE], a
    push af
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
    nop
    rst $38
    ret nz

    rst $38
    cp $ff
    ld d, a
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
    ld d, l
    rst $38
    ld a, [hl+]
    rst $38
    dec d
    rst $38
    ld a, [hl+]
    rst $38
    dec d
    rst $38
    ld a, [bc]
    rst $38
    dec b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

Call_015_5f12:
    rst $38
    nop
    rst $38
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
    xor d
    nop
    ld d, l
    nop
    ld a, [bc]
    nop
    ret nz

    add b
    db $fc
    ld b, b
    ld a, a
    nop
    add a
    nop
    ld hl, sp-$80
    rst $38
    ld b, b
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
    ld [bc], a
    inc bc
    inc b
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
    ld [bc], a
    ld b, $07
    ld [$0a09], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    inc c
    dec c
    ld c, $0f
    rrca
    rrca
    db $10
    ld de, $1312
    inc d
    dec d
    nop
    nop
    nop
    nop
    ld d, $17
    jr jr_015_5f90

    add hl, de
    ld a, [de]
    rrca
    rrca
    dec de
    inc e
    nop
    nop
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl

jr_015_5f90:
    inc h
    dec h
    ld h, $0f
    rrca
    rrca
    daa
    jr z, jr_015_5f99

jr_015_5f99:
    nop
    nop
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    rrca
    ld l, $2f
    rrca
    rrca
    rrca
    rrca
    jr nc, jr_015_5fa9

jr_015_5fa9:
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_015_5feb

    ld a, [hl-]
    ld a, [hl-]
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
    nop
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
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]

jr_015_5feb:
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld h, l
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    db $76
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
    nop
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
    nop
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
    nop
    and b
    and c
    and d
    and e
    and h
    nop
    nop
    and l
    and [hl]
    nop
    nop
    nop
    and a
    xor b
    xor c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor h
    xor l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor [hl]
    xor a
    or b
    or c
    nop
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
    or e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0102
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0404
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc b
    inc b
    inc b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    inc b
    inc b
    nop
    nop
    nop
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0404
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
    ld bc, $0101
    ld bc, $0406
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
    inc bc
    inc bc
    ld [bc], a
    ld b, $06
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
    ld [bc], a
    ld b, $06
    ld b, $02
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
    ld b, $06
    ld b, $02
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld b, $06
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    inc bc
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    ld b, $00
    nop
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    inc bc
    inc bc
    ld b, $06
    ld b, $06
    ld b, $02
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    inc b
    ld b, $06
    ld b, $06
    ld b, $04
    inc b
    inc b
    inc b
    inc b
    ld b, $06
    ld b, $00
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    ld bc, $0101
    ld bc, $0201
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
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
    xor a
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    ld e, d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, $ff
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    ld e, a
    rst $38
    cp $ff
    rst $38
    rst $38
    push af
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
    db $db
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    and a
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
    cp [hl]
    rst $38
    ld a, [$ffff]
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
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
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
    ret nz

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
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $18
    rst $38
    db $ed
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    pop de
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $18
    ldh [$df], a
    ldh [$cf], a
    ldh a, [$cf]
    ldh a, [$ef]
    ldh a, [$e7]
    ld hl, sp-$19
    ld hl, sp-$1d
    db $fc
    db $e3
    db $fc
    pop hl
    cp $f0
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
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
    ld bc, $01fe
    cp $01
    cp $01
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
    ld e, e
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $ed
    rst $38
    nop
    rst $38
    sub e
    rst $38
    sbc e
    rst $38
    add a
    rst $38
    add $ff
    pop bc
    rst $38
    nop
    rst $38
    db $db
    rst $38
    rst $38
    rst $38
    db $eb
    rst $38
    rst $38
    rst $38
    push de
    rst $38
    cp $ff
    rst $10
    rst $38
    cp $00
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
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
    nop
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    ld bc, $00fe
    rst $38
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

    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$07
    ld sp, hl
    rlca
    ei
    rlca
    ei
    cp $fe
    db $fd
    db $fc
    rrca
    db $fc
    ld c, $fc
    ld b, $fe
    add a
    cp $fa
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld b, d
    rst $38
    ld [bc], a
    rst $38
    ld [$e7ff], a
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    db $fd
    rst $38
    ld bc, $d3ff
    rst $38
    ld sp, hl
    rst $38
    ld [hl], a
    rst $38
    ld a, [$f5ff]
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
    add a
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
    ld bc, $0100
    nop
    inc bc
    nop
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

    rra
    ldh [rIF], a
    ldh a, [$03]
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
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fc
    cp $f8
    db $fc
    pop af
    db $fc
    di
    ld hl, sp-$1e
    ld hl, sp-$3a
    ldh a, [$cd]
    ldh [$89], a
    ldh [rNR31], a
    ret nz

    scf
    add b
    dec h
    add b
    ld l, [hl]
    ld bc, $0bd4
    sbc h
    inc bc
    jr c, jr_015_647b

    ld a, c
    ld b, $71
    ld c, $a3
    ld e, h
    add e

jr_015_647b:
    ld a, h
    ld [bc], a
    db $fd
    inc b
    ei
    inc b
    ei
    ld [$09f7], sp
    rst $30
    ld bc, $03ff
    cp $03
    cp $07
    db $fc
    rlca
    db $fc
    ld c, $f9
    rrca
    ld hl, sp+$1f
    ldh a, [rNR34]
    pop af
    or a
    add sp, -$41
    ldh [$fb], a
    call nz, $d4eb
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld a, b
    db $10
    rst $38
    rla
    rst $38
    ld [de], a
    rst $38
    ld a, [de]
    rst $38
    ld d, $ff
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
    rst $38
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
    cp $f8
    cp $f9
    db $fc
    di
    ld hl, sp-$1d
    ldh a, [$e7]
    ldh a, [$cc]
    pop hl
    adc e
    ret nz

    sbc b
    pop bc
    ld [hl], $81
    inc hl
    nop
    ld h, a
    nop
    rst $10
    nop
    adc a
    nop
    xor a
    nop
    ld e, a
    nop
    rst $38
    nop
    cp a
    nop
    rst $38
    ld bc, $037d
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    ld a, a
    add h
    ld [hl], a
    adc h
    or $0d
    ld l, l
    sbc d
    call $dd3a
    ld [hl-], a
    ld e, c
    or [hl]
    dec sp
    db $e4
    dec sp
    db $e4
    ld [hl], a
    ret z

    db $76
    ret z

    cp $80
    db $ec
    sub c
    db $ec
    ld de, $11ec
    sbc c
    ld h, d
    reti


    ld [hl+], a
    ei
    inc b
    di
    inc b
    or b
    ld b, [hl]
    rst $20
    ld [$08e7], sp
    rst $20
    ld [$11ce], sp
    ld c, a
    sub b
    sbc l
    ld [hl+], a
    sbc a
    jr nz, jr_015_6541

jr_015_6541:
    rst $38
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    cp $01
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
    ld [$0fff], sp
    ld a, a
    rrca
    ld a, [hl]
    rrca
    cp $0f
    cp $0f
    cp $0f
    cp $0f
    cp $0f
    cp $0f
    cp $0f
    cp $0f
    cp $0f
    cp $0f
    cp $0f
    cp $0f
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld c, $ff
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
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
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ld a, [$f7fd]
    ld hl, sp-$19
    ld hl, sp-$11
    ldh a, [$df]
    ldh [$9f], a
    ldh [$bf], a
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [$0afd], sp
    ld a, a
    sub b
    ei
    inc d
    cp $20
    cp $21
    db $fc
    ld b, c
    ld a, h
    pop bc
    db $fd
    add d
    jp hl


    sub d
    ld sp, hl
    ld [bc], a
    di
    inc b
    di
    inc b
    or a
    ld c, b
    ld h, [hl]
    adc c
    rst $20
    ld [$10cf], sp
    call Call_015_5f12
    and b
    sbc c
    ld h, $9d
    ld [hl+], a
    dec sp
    ld b, h
    ccf
    ld b, b
    scf
    ld c, b
    ld e, a
    and b
    db $76
    adc b
    or $08
    or $08
    xor $11
    ld e, h
    and c
    ld e, h
    and c
    call c, $f921
    ld [bc], a
    ld bc, $d902
    ld [hl+], a
    di
    inc b
    db $d3
    inc h
    di
    inc b
    di
    inc b
    and a
    ld c, b
    rst $20
    ld [$ff00], sp
    rrca
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$df], a
    ldh [rIE], a
    ldh a, [$3f]
    ldh a, [$3f]
    ldh a, [$3f]
    ldh a, [$3e]
    ldh a, [$3c]
    ldh a, [$3c]
    ldh a, [$38]
    ldh a, [$38]
    ldh a, [$38]
    ldh a, [$3c]
    ldh a, [$3c]
    ldh a, [$3e]
    ldh a, [$3f]
    ldh a, [$3f]
    ldh a, [$3f]
    ldh a, [$3f]
    ldh a, [$3f]
    ldh a, [$3f]
    ldh a, [$3f]
    ldh a, [$3f]
    ldh a, [$3f]
    ldh a, [$3f]
    ldh a, [$3f]
    ldh a, [$3f]
    ldh a, [$3f]
    ldh a, [$3f]
    ldh a, [$7f]
    ldh [$df], a
    ldh [$df], a
    ldh [$8f], a
    ldh a, [$8f]
    ld [hl], b
    add a
    ld a, b
    add a
    ld a, b
    inc bc
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

jr_015_667c:
    cp $ff
    db $fd
    cp $fc
    rst $38
    ld a, [$f4fd]

jr_015_6685:
    ei
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    cp $02
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    add hl, bc
    cp $08
    rst $38
    db $10
    rst $38
    sub d
    ld a, l
    and c
    ld a, [hl]
    ld hl, $c5fe
    ld a, d
    jp $937c


    db $e4
    or [hl]
    ret


    and a
    ret z

    push hl
    ld a, [bc]
    xor $11
    rl h
    ld e, e
    and h
    sbc e
    inc h
    sbc [hl]
    ld hl, $4db2
    ld a, $41

jr_015_66c2:
    inc h
    ld e, c
    ld l, l
    sub d
    dec l
    jp nc, $02f9

    swap h
    sbc e
    ld h, h
    sbc e
    ld h, h
    or d
    ld b, l
    rst $30
    ld [$a956], sp
    and [hl]
    ld c, c
    push hl
    ld a, [bc]
    db $ed
    ld [de], a
    ld c, l
    sub d
    rst $08
    db $10
    rst $18
    jr nz, jr_015_66c2

    jr nz, jr_015_667c

    jr z, jr_015_6685

    ld hl, $48b7
    ccf
    ld b, b
    cpl
    ld d, b
    ld h, [hl]
    sbc b
    ld e, [hl]
    and b
    ld d, [hl]
    xor b
    ld e, [hl]
    and c
    or $09
    db $fc
    ld bc, $01fc
    db $ec
    ld de, $21dc
    db $fc
    inc bc
    ld sp, hl
    ld [bc], a
    jp hl


    ld [de], a
    jp hl


    ld [de], a
    ld e, c
    and d
    di
    inc b
    ld [hl], e
    add h
    di
    inc b
    ldh [$e0], a
    ldh a, [rSVBK]
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
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
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld [hl], b
    nop
    ld [hl], b
    rlca
    ld hl, $2706
    inc b
    ccf
    inc a
    cpl
    inc a
    ld [hl], a
    inc [hl]
    db $76
    dec h
    or $05
    db $f4
    rlca
    or $07
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $20
    rra
    rst $20
    rra
    rst $20
    rra
    rst $00
    ccf
    rst $00
    ccf
    ldh [rIE], a
    ret c

    rst $20
    ret c

    rst $20
    cp b
    rst $00
    ld a, b
    add a

jr_015_677a:
    ld a, b
    add a
    ldh a, [rIF]
    push de
    ld a, [hl+]
    ei
    inc d
    ld e, d
    or l
    ld h, $f9
    inc [hl]
    db $eb
    ld d, h
    db $eb
    ld l, b
    rst $10
    xor b
    rst $10
    add sp, -$69
    ret z

    scf
    ret nz

    ccf
    add c
    ld a, [hl]
    add e
    ld a, h
    add [hl]
    ld a, c
    ld b, $f9
    nop
    rst $38
    db $10
    rst $28

jr_015_67a0:
    nop
    rst $38
    ld h, b
    sbc a
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    ld b, b
    cp a
    pop bc
    ld a, $81
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    ld bc, $027e
    db $fd

jr_015_67b8:
    ld a, [hl-]
    push bc

jr_015_67ba:
    ld a, [hl-]
    push bc
    ld a, [$d805]
    daa
    db $f4
    dec bc
    or h
    ld c, e
    or h
    ld c, e
    db $f4
    dec bc
    db $f4
    dec bc
    db $e4
    dec bc
    db $ed
    ld [de], a
    db $ed
    ld [de], a
    rst $28
    db $10
    rst $08
    db $10
    rl h
    rst $18
    jr nz, jr_015_67b8

    jr nz, jr_015_67ba

    jr nz, jr_015_677a

    ld [hl+], a
    sub a
    jr z, jr_015_67a0

    ld b, b
    or a
    ld c, b
    cp e
    ld b, h
    ccf
    ld b, b
    scf
    ld c, b
    ld a, a
    add b
    ld l, [hl]
    sub b
    db $76
    adc b
    ld e, [hl]
    and b
    ld h, [hl]
    sbc b
    sbc $20
    cp $00
    sub $28
    db $ec
    db $10
    db $fc
    nop
    cp h
    ld b, b
    nop
    adc a
    db $fc
    ld bc, $11ec
    ld a, h
    add c
    cp b
    ld b, c
    ld hl, sp+$01
    ld [hl], b
    add c
    ldh [rSB], a
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
    nop
    rst $38
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
    rra
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0000
    rst $38
    rst $38
    rra
    ld hl, sp+$07
    pop af
    rrca
    rst $08
    rst $38
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, h
    add e
    ld a, d
    add l
    ld l, b
    sub a
    adc c
    rst $30
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
    rst $38
    rst $38
    rra
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    ld b, c
    rst $38
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, c
    sbc [hl]
    sbc b
    ld h, a
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ld d, d
    xor l
    ld a, [hl-]
    push bc
    ld a, [hl-]
    push bc
    dec sp
    call nz, $d42b
    dec bc

jr_015_6885:
    db $f4
    adc e
    ld [hl], h
    ld b, d
    cp l
    ld b, d
    cp l
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
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    jr nz, @-$1f

    jr nz, jr_015_6885

    inc b
    ei
    inc c
    di
    ld l, $d1
    ld l, $d1
    cpl
    ret nc

    ld c, [hl]
    sub c
    ld c, a
    sub b
    ld c, [hl]
    sub c
    ld c, e
    sub h
    sbc $21
    ret c

    daa
    ret nz

    ccf
    add b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    ld [$0977], sp
    db $76
    add hl, de
    ld h, [hl]
    ld a, c
    add [hl]
    ld a, a
    add b
    ld [hl], a
    adc b
    ld a, e
    add h
    ld a, c
    add [hl]
    ld a, c
    add [hl]
    ld a, l
    add d
    ld a, l
    add d
    ld [hl], c
    adc [hl]
    ld a, c
    add [hl]
    ei
    inc b
    di
    inc c
    ei
    inc b
    ei
    inc b
    rst $30
    ld [$00fe], sp
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
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
    ld bc, $fffe
    cp $7f
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
    cp $ff
    cp $ff
    cp $ff

jr_015_693b:
    xor $ff
    xor $ff

jr_015_693f:
    xor $fe

jr_015_6941:
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    ld [bc], a
    rst $38
    or [hl]
    ld c, e
    and [hl]
    ld e, e
    dec b
    ei
    daa
    reti


    ld sp, $21cf
    rst $18
    jr nz, jr_015_693b

    and b
    ld e, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    and d
    ld e, l
    and d
    ld e, l
    and e
    ld e, h
    xor e
    ld d, h
    cp e
    ld b, h
    dec sp
    call nz, $cd32
    jr nc, @-$2f

    nop
    rst $38
    jr c, jr_015_693f

    jr c, jr_015_6941

    inc a
    jp $c33c


    dec a
    jp nz, $c23d

    dec a
    jp nz, $e21d

    cp l
    ld b, d
    cp l
    ld b, d
    sbc [hl]
    ld h, c
    cp [hl]
    ld b, c
    cp d
    ld b, l
    xor [hl]
    ld d, c
    cp [hl]
    ld b, c
    xor [hl]
    ld d, c
    xor d
    ld d, l
    cp [hl]
    ld b, c
    add b
    ld a, a
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    ld a, $41
    cpl
    ld d, b
    ccf
    ld b, b
    cpl
    ld d, b
    cpl
    ld d, b
    cpl
    ld d, b
    ccf
    ld b, b
    ccf
    ld b, b
    cpl
    ld d, b
    ccf
    ld b, b
    cpl
    ld d, b
    ccf
    ld b, b
    ccf
    ld b, b
    dec sp
    ld b, h
    ccf
    ld b, b
    ccf
    ld b, b
    add hl, sp
    ld b, [hl]
    dec sp
    ld b, h
    ld hl, $235e
    ld e, h
    ld hl, $235e
    ld e, h
    inc sp
    ld c, h
    inc sp
    ld c, h
    ld sp, $194e
    ld h, [hl]
    rrca
    ld [hl], b
    ccf
    ld b, b
    ccf
    ld b, b
    dec a
    ld b, d
    ccf
    ld b, b
    ccf
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
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
    nop
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
    add b
    ld a, a
    add b
    ld a, a
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
    nop
    rst $38
    nop
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
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $feff
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, h
    rst $38
    ld a, h
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
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc c
    rst $38
    ld [$8cfe], sp
    rst $30
    adc h
    rst $30
    call nz, $c4ff
    ld a, a
    call nz, $c47f
    ld a, a
    and h
    ld a, a
    db $e4
    ccf
    ld h, [hl]
    cp a
    ld h, [hl]
    cp a
    ld h, $ff
    ld h, $ff
    ld d, $ff
    ld d, $ff
    ld d, $ff
    rla
    rst $38
    adc a
    ld a, a
    adc a
    ld a, a
    rst $08
    ccf
    rst $38
    rrca
    rst $30
    rrca
    rst $38
    rlca
    rst $18
    daa
    rst $38
    rlca
    rst $38
    rlca
    rst $10
    dec hl
    or a
    ld c, e
    rst $18
    inc hl
    db $db
    daa
    db $e3
    rra
    pop bc
    ccf
    pop bc
    ccf
    pop bc
    ccf
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

jr_015_6aa3:
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    add e
    ld a, h
    adc e
    ld [hl], h
    sbc d
    ld h, l
    cp e
    ld b, h
    cp [hl]
    ld b, c
    cp a
    ld b, b
    xor l
    ld d, d
    cp h
    ld b, e
    xor d
    ld d, l
    cp [hl]
    ld b, c
    or a
    ld c, b
    cp l
    ld b, d
    rst $18
    jr nz, jr_015_6aa3

    ld hl, $20df
    ld e, a
    and b
    rst $18
    jr nz, jr_015_6b2c

    and b
    rst $18
    jr nz, @+$01

    rst $38
    rst $38
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
    ldh a, [rIE]
    jr nc, @+$41

    ld b, b
    ld a, a
    ld b, c
    ld a, a
    ld l, [hl]
    ld a, a
    ld d, b
    ld a, a
    ld d, c
    ld a, a
    ld c, [hl]
    ld a, a
    ld c, b
    ld a, a
    ret


    cp $89
    cp $8b
    db $fc
    sub e
    db $fc
    sub e
    db $fc
    sub e
    db $fc
    sub a
    ld hl, sp-$69
    ld hl, sp-$69
    ld hl, sp-$69
    ld hl, sp-$69
    ld hl, sp-$69
    ld hl, sp-$61
    ldh a, [$9f]
    ldh a, [$9f]
    ldh a, [$9f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$3e]
    pop hl
    ld a, $e1
    ld a, $e1
    ld a, $e1
    ld a, $e1
    ld a, $e1
    inc a
    db $e3
    inc a
    db $e3
    inc a
    db $e3

jr_015_6b2c:
    inc a
    db $e3
    inc a
    db $e3
    inc a
    ld h, e
    jr c, jr_015_6b5b

    jr c, @+$69

    jr c, @+$69

    jr c, jr_015_6ba1

    jr nc, jr_015_6bab

    ld [hl], b
    ld c, a
    jr nz, jr_015_6b5f

    ld b, b
    cp $40
    cp $40
    cp $40
    cp $40
    cp $40
    cp $40
    cp $40
    cp $40
    cp $41
    cp $43
    db $fc
    ld b, e
    db $fc
    ld b, e
    db $fc
    ld b, e

jr_015_6b5b:
    db $fc
    ld b, e
    db $fc
    ld b, e

jr_015_6b5f:
    db $fc
    add e
    db $fc
    add e
    db $fc
    add e
    db $fc
    add e
    db $fc
    add e
    db $fc
    add e
    db $fc
    add a
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$29
    ld hl, sp-$09
    ld hl, sp-$1d
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    pop hl
    cp $e1
    cp $e1
    cp $61
    cp $60
    ei
    ld h, b
    ei
    ld h, b
    db $fd
    ld h, b
    cp l
    ld [hl], b
    xor l
    ldh a, [$2d]
    ldh [$3e], a
    add sp, $36
    ld e, b

jr_015_6ba1:
    or [hl]
    db $10
    cp $10
    rst $38
    sub h
    ld a, e
    or h
    ld e, e
    xor b

jr_015_6bab:
    ld e, a
    xor d
    ld e, l
    xor d
    ld e, l
    xor d
    ld e, l
    push hl
    ld e, $e5
    ld e, $e5
    ld e, $c5
    ld a, $c2
    ccf
    jp nz, $c23f

    ccf
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
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
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
    nop
    rst $38
    nop
    rst $38
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
    ccf
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    rrca
    cp a
    rrca
    cp a
    rrca
    cp a
    rrca
    cp a
    rlca
    rst $18
    rlca
    rst $18
    rlca
    rst $18
    add a
    ld e, a
    add e
    ld l, a
    add e
    ld l, a
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    ldh a, [rIF]
    ldh [$1f], a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, $07
    ld [$0909], sp
    add hl, bc
    ld a, [bc]
    dec bc
    nop
    nop
    nop
    nop
    nop
    inc c
    dec c
    ld c, $0f
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0010], sp
    ld de, $1312
    inc d
    dec d
    ld d, $17
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    jr jr_015_6d81

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_015_6d91

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_015_6da1

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_015_6db1

    ld [hl-], a

jr_015_6d81:
    inc sp
    add hl, bc
    add hl, bc
    ld [$3534], sp
    ld [hl], $37
    jr c, jr_015_6dc4

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $32

jr_015_6d91:
    ccf
    add hl, bc
    add hl, bc
    add hl, bc
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

jr_015_6da1:
    ld c, h
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
    ld e, d
    ld e, e

jr_015_6db1:
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    nop
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
    ld l, e
    ld l, h
    ld l, l

jr_015_6dc4:
    ld l, [hl]
    inc bc
    inc bc
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    ld [bc], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc l
    nop
    adc [hl]
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
    sub b
    sub c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub d
    sub e
    sub h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub l
    sub [hl]
    sub a
    nop
    nop
    nop
    nop
    nop
    nop
    adc h
    adc h
    adc h
    sbc b
    sbc c
    sbc d
    sbc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld b, $00
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
    ld b, $06
    ld b, $06
    ld b, $01
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld b, $06
    ld b, $02
    ld b, $06
    ld b, $06
    ld bc, $0000
    nop
    ld b, b
    nop
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $02
    ld bc, $0000
    nop
    nop
    nop
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld [bc], a
    ld b, $01
    nop
    nop
    nop
    nop
    nop
    inc b
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld b, $06
    ld b, $02
    ld b, $06
    ld b, $01
    dec b
    dec b
    dec b
    dec b
    ld hl, $0121
    ld bc, $0404
    inc b
    inc b
    ld b, $06
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    inc b
    inc b
    inc b
    inc b
    ld b, $04
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc b
    inc b
    inc b
    inc bc
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld hl, $2121
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
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
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $01
    cp $01
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
    ld bc, $01fe
    cp $01
    cp $01
    cp $01
    cp $00
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
    cp $ff
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
    ld bc, $03fe
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

    ccf
    ret nz

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
    nop
    rst $38
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
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    ld bc, $01fe
    cp $00
    rst $38
    nop
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
    ld hl, sp-$01
    ld sp, hl
    cp $f1
    cp $f1
    cp $f3
    db $fc
    ld [c], a
    db $fd
    ld [c], a
    db $fd
    push hl
    ld a, [$fac5]
    jp nz, $8afd

    push af
    add h
    ei
    sub b
    rst $28
    add hl, bc
    or $08
    rst $30
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$1f
    ldh [$3f], a
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
    ld a, $c1
    nop
    rst $38
    nop
    rst $38
    nop
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
    cp $ff
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld sp, hl
    cp $f9
    cp $f3
    db $fc
    di
    db $fc
    db $e3
    db $fc
    rst $20
    ld hl, sp-$19
    ld hl, sp-$39
    ld hl, sp-$31
    ldh a, [$cf]

jr_015_70b9:
    ldh a, [$8f]
    ldh a, [$9e]
    pop hl
    ld e, $e1
    ld a, $c1
    dec a
    jp nz, $ca35

    ld [hl], l
    adc d
    ld h, l
    sbc d
    ld b, e
    cp h
    jp $823c


    ld a, l
    add d
    ld a, l
    ld d, d
    xor l
    ld b, [hl]
    cp c
    inc h
    db $db
    add h
    ld a, e
    inc d
    db $eb
    ld d, b
    xor a
    ld c, b
    or a
    jr z, jr_015_70b9

    xor c
    ld d, a
    and c
    ld e, a
    ld de, $11ef
    rst $28
    ld d, d
    xor a
    ld b, d
    cp a
    ld [bc], a
    rst $38
    ldh [$1f], a
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    cp $01
    cp $01
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
    db $fc
    inc bc
    db $fc
    inc bc
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
    nop
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
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    or $f9
    db $e4
    ei
    and $f9
    db $ec
    di
    call z, $cef3
    pop af
    sbc [hl]
    pop hl
    sbc h
    db $e3
    cp h
    jp $c33c


    inc a
    jp $837c


    ld a, h
    add e
    ld a, h
    add e
    db $fd
    inc bc
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld a, [c]
    rrca
    ld a, [c]
    rrca
    ld a, [c]
    rrca
    di
    ld c, $e4
    rra
    db $e4
    rra
    db $e4
    rra
    db $e4
    rra
    ret z

    ccf
    ret z

    ccf
    ret z

    ccf
    adc b
    ld a, a
    adc b
    ld a, a
    sub b
    ld a, a
    sub b
    ld a, a
    db $10
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    ld [hl+], a
    db $fd
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add c
    rst $38
    add c
    rst $38
    inc b
    ei
    inc b
    ei
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    cp $02
    cp $02
    cp $f8
    ld a, b
    ld hl, sp+$78
    db $fc
    inc a
    db $fc
    inc a
    cp $1e
    cp $1e
    rst $38
    rrca
    rst $38
    rrca
    add a
    ld a, a
    add a
    ld a, a
    jp $c33f


    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    pop hl
    ld e, $f1
    ld c, $e7
    ld c, $c7
    ld b, $c7
    ld b, $87
    ld b, $89
    nop
    adc c
    nop
    sub a
    ld d, $97
    ld d, $9f
    ld e, $97
    ld d, $c7
    ld b, $c7
    ld b, $e7
    ld b, $ef
    ld b, $ff
    ld b, $f7
    ld c, $f7
    ld c, $f7
    ld c, $e7
    ld e, $e6
    rra
    and $1f
    and $1f
    add $3f
    add $3f
    add $3f
    add $3f
    add [hl]
    ld a, a
    add a
    ld a, a
    add a
    ld a, a
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
    rra
    rst $38
    rra
    rst $38
    rra
    rra
    rra
    ccf
    ld e, $3f
    ld e, $3f
    ld e, $7f
    ld e, $7f
    ld e, $ff
    inc e
    rst $38
    ccf
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    ld a, $f9
    jr c, @+$01

    jr c, @+$01

    ld a, [de]
    db $fd
    ld [de], a
    db $fd
    ld d, $f9
    ld e, $f1
    rla
    ld hl, sp+$2d
    ld a, [c]
    dec l
    ld a, [c]
    dec a
    ld [c], a
    ld hl, $21fe
    cp $41
    cp $43
    db $fc
    ld b, e
    db $fc
    ld b, a
    db $fc
    add d
    db $fd
    add b
    rst $38
    add b
    rst $38
    ret nz

    cp a
    ld [bc], a
    db $fd
    inc d
    db $eb
    dec b
    ld a, [$7f80]
    inc b
    ei
    ld [bc], a
    db $fd
    ld h, b

jr_015_725d:
    sbc a
    ld c, d
    or l
    ld a, [bc]
    push af
    inc b
    ei
    ld [$2ef7], sp
    pop af
    add hl, bc
    or $38
    rst $20
    jr nc, jr_015_725d

    inc sp
    db $ec
    rlca
    add sp, $01
    xor $4b
    db $e4
    ld [hl], a
    ret z

    ld d, a
    ret z

    ld c, a

jr_015_727b:
    ret nc

    nop
    ret z

    add b
    rst $38
    add b
    rst $38
    add b
    cp a
    add b
    cp a
    nop
    cp a
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
    ld a, a
    nop
    ld a, a
    db $10
    ld l, a
    db $10
    ld l, a
    jr nz, jr_015_727b

    ld bc, $02ff
    db $fd
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_015_72a9:
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
    nop
    rst $38
    rrca
    ldh a, [$7f]
    add b
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    rrca
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    add b
    rst $38
    sub b
    ld l, a
    jr c, jr_015_72a9

    ld h, b
    sbc a
    cp a
    ld b, b
    rst $38
    nop
    cp [hl]
    ld b, c
    ld a, b
    add a
    xor $01
    rst $30
    ld [$01fe], sp
    ld a, a
    add b

jr_015_72f4:
    xor a
    nop
    cp a
    nop
    xor $01
    sbc [hl]
    ld bc, $019e
    xor $11
    rst $28
    db $10
    rst $20
    jr jr_015_72f4

    db $10
    rst $38
    nop
    rst $28
    db $10
    cp $01
    rst $38
    nop
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ld b, b
    cp a
    db $10
    rst $28
    nop
    rst $38
    dec b
    ld a, [$fa05]
    inc b
    ei
    ld [bc], a
    db $fd
    dec b
    ld a, [$b44b]
    sub a
    ld l, b
    adc c
    db $76
    sub d
    ld l, l
    sbc e
    ld b, h
    add c
    ld e, [hl]
    add e
    ld e, h
    add e
    ld e, h
    add b
    ld a, a
    add b
    ld e, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld e, a
    nop
    rst $18
    nop
    rst $38
    add b
    ld a, a
    add b

jr_015_7349:
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    nop
    cp a
    add b
    cp a
    nop
    cp a
    nop
    cp a
    ld bc, $087e
    ld [hl], a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    dec b
    ld a, d
    ld a, [bc]
    ld [hl], l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc bc
    db $fc
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
    sbc d
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, [hl]
    cp c
    ret nc

    cpl
    pop bc
    ld a, $01
    cp $93
    ld l, h
    di
    inc c
    db $fc
    inc bc
    ld a, h
    inc bc
    dec l
    jp nc, Jump_015_7e81

    and c
    ld e, [hl]
    jp z, $fa35

    dec b
    ld [$fe15], a
    ld bc, $007f
    cp a
    nop
    rst $00
    jr c, jr_015_7349

    ld a, e
    sub h
    ld l, e
    add h
    ld a, e
    inc b
    ei
    ld d, h
    xor e
    ld c, $f1
    ld e, [hl]
    and c
    dec de
    db $e4
    ld a, d
    add l
    ld a, e
    add h
    ld a, e
    add h
    ld a, e
    add h
    ld a, e
    add h
    ld a, a
    add b
    ld e, l
    and d
    ld c, c
    or [hl]
    add hl, bc
    or $05
    ld a, [$ba45]
    dec b
    cp d
    ld bc, $41be
    cp [hl]
    inc b
    cp e
    ld b, $b9
    nop
    cp a
    nop
    cp a
    add b
    cp a
    ld [bc], a
    cp l
    nop
    cp a
    add d
    db $fd
    add h
    cp e
    ld [bc], a
    cp l
    ld b, $b9
    inc c
    or e
    ccf
    add b
    dec [hl]
    adc d
    ccf
    add b
    xor a
    sub b
    ld e, $c1
    db $10
    rst $08
    ld [bc], a
    db $dd
    ld [$89d7], sp
    ld d, [hl]
    ld [de], a
    call $cf10
    nop
    call nz, $ff40
    ld b, b
    rst $18
    nop
    rst $18
    nop
    rst $38
    ld b, b
    rst $18
    ret nz

    ld a, a
    ret nz

    ld e, a
    ret nz

    ld e, a
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
    rst $38
    ld hl, sp-$08
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$06
    ld hl, sp+$06
    ld sp, hl
    ld b, $f9
    ld b, $f9
    ld b, $f9
    ld b, $f9
    ld b, $f9
    ld b, $f8
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp-$08
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    cp $30
    rl b
    db $ed
    db $10
    db $ed
    db $10
    xor $10
    rst $28
    db $10
    rst $28
    jr nc, @-$2f

    jr z, @-$1f

jr_015_74b0:
    ld a, b
    adc a
    ld d, h
    xor a
    call nz, $f23f
    rrca
    ld [c], a
    rra
    ld l, d
    rla
    xor l
    ld d, e
    dec d
    db $eb
    db $76
    adc c
    ld a, [hl]
    add c
    ld e, e
    and h
    dec sp
    call nz, $c53a
    inc a
    jp Jump_015_42bc


    cp l
    ld b, d
    cp [hl]
    ld b, c
    adc $21
    sbc $21
    rst $18
    jr nz, jr_015_74b0

    jr z, @+$01

    nop
    db $eb
    inc d
    rst $28
    db $10
    rst $28
    db $10
    db $ec
    inc de
    sub l
    ld l, d
    rlca
    ld hl, sp+$04
    ei
    dec b
    ld a, [$fd02]
    dec bc
    db $f4
    ld [bc], a
    db $fd
    inc bc
    db $fc
    add hl, bc
    db $76
    ld bc, $017e
    ld a, [hl]
    add hl, bc
    halt
    ld a, a
    nop
    rst $38
    nop
    cp a
    ld bc, $00bf
    cp a
    nop
    cp a
    sbc b
    and a
    nop
    cp a
    nop
    rst $38
    nop
    rst $18
    db $10
    rst $08
    inc d
    bit 2, b
    rst $08
    ld bc, $08de
    rst $10
    ld c, d
    push de
    sbc b
    ld h, a
    ld bc, $807e
    rst $28
    nop
    rst $28
    inc h

jr_015_7525:
    db $eb
    jr nz, @-$0f

    jr nz, @+$01

    jr nz, @+$01

    jr z, jr_015_7525

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
    ld b, $f9
    rrca
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ld a, e
    add b
    ld [hl], c
    add b
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    stop
    ld [$0800], sp
    nop
    jr jr_015_7564

    add sp, -$18
    ret z

    ld c, b
    ret c

    ld e, b
    add sp, $68

jr_015_7564:
    add sp, $08
    pop af
    nop
    pop af
    nop
    ei
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
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$0e], a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    ld a, a
    ccf
    ld a, a
    rra
    cp a
    rra
    cp a
    rrca
    rst $18
    rlca
    rst $28
    rlca
    rst $28
    inc bc
    rst $30
    inc bc
    rst $30
    ld bc, $01fb
    ei
    nop
    db $fd
    add b
    cp $90
    cp $80

jr_015_75b5:
    rst $38
    ld c, d
    rst $38
    ld b, c
    rst $38
    db $e4
    ld a, a
    ld hl, $31ff
    rst $38
    ld d, e
    cp a
    sbc l
    ld a, a
    reti


    ccf
    ld c, c
    cp a
    ld c, a
    cp a
    ld h, l
    sbc a
    ld h, l
    sbc a
    and a
    ld e, a
    or e
    ld c, a
    or e
    ld c, a
    pop de
    cpl
    pop de
    cpl
    ret


    scf
    ld h, b
    sbc a
    jr z, jr_015_75b5

    ld l, b
    sub a
    ld b, b
    cp a
    or h
    ld c, e
    ld [hl], b
    adc a
    ret nc

    cpl
    add b
    ld a, l
    add b
    ld a, l
    or b
    ld c, a
    ret nc

    ld l, $da
    ld h, $f0
    rrca
    ldh [$1f], a
    ld h, c
    sbc a
    ld h, b
    sbc a
    ret nz

    cp a
    nop

jr_015_75fd:
    rst $38
    nop

jr_015_75ff:
    rst $38
    nop
    rst $18
    nop
    rst $18
    ret nz

    ld e, a
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    jr nz, jr_015_75fd

    jr nz, jr_015_75ff

    nop
    rst $38
    nop
    rst $30
    nop
    rst $30
    ld d, b
    or a
    db $10
    rst $30
    db $10
    rst $38
    nop
    ei
    ld [$f0fb], sp
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    adc a
    ld a, a
    rst $08
    ccf
    rst $08
    ccf
    rst $28
    rra
    rst $28
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
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
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    sbc a
    ld a, a
    cp a
    ld a, a
    ccf
    rst $38
    ccf
    rst $38
    ret nz

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
    add b
    ld a, a
    ld a, a
    add b
    ld a, a
    add b
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    sbc l
    rst $38
    add l
    rst $38
    ld a, c
    rst $38
    xor e
    rst $38
    ld a, l
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    ld hl, sp-$01
    ld [$f7ff], a
    rst $38
    ld e, l
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    nop
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
    ld hl, $20ff
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    db $10
    rst $38
    inc c
    rst $38
    ld [$08ff], sp
    rst $38
    inc b
    ld a, a
    inc b
    ld a, a
    ld [bc], a

jr_015_76d9:
    rst $38
    ld [bc], a

jr_015_76db:
    cp a
    ld [bc], a
    cp a
    add c
    rst $38
    ld bc, $40df

jr_015_76e3:
    rst $18
    ld b, b
    rst $38
    nop
    rst $28
    jr nz, jr_015_76d9

    jr nz, jr_015_76db

    nop
    rst $30
    ld b, b
    or e
    db $10
    di
    ld h, b
    sbc e
    nop
    ld sp, hl
    jr jr_015_76e3

    db $10
    db $ed
    inc b
    db $fd
    inc b
    db $fd
    inc c
    or $ff
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    dec [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $eb
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    cp e
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $10
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
    ld b, b
    rst $38
    inc bc
    rst $38
    inc bc
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
    add b
    jp $ff80


    add b
    ldh [rLCDC], a
    rst $28
    ld b, b
    db $e3
    ld b, b
    ldh a, [rNR41]
    ldh a, [rNR41]
    rst $38
    jr @+$01

    db $10
    rst $38
    ld de, $09ff
    rst $38
    add hl, bc
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $03
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$08
    nop
    ld hl, sp+$00
    nop
    ld hl, sp+$00
    ldh a, [$f0]
    ldh a, [$a0]
    ldh a, [$e0]
    ldh a, [$c0]
    ldh a, [$e0]
    ldh a, [rLCDC]
    ldh a, [$e0]
    ldh a, [$a0]
    ldh a, [rLCDC]
    ldh [$80], a
    ldh [$c0], a
    ldh [rLCDC], a
    ldh [$c0], a
    ldh [$e0], a
    ldh [rP1], a
    ldh [$e0], a
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

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
    add a
    add b
    ld a, a
    add b
    ccf
    ret nz

    cp a
    ret nz

    sbc a
    ldh [$cf], a
    ldh a, [$cf]
    ldh a, [rBGP]
    ld hl, sp+$63
    db $fc
    ld h, e
    db $fc
    ld [hl], c
    cp $58
    rst $38
    ret z

    rst $38
    call z, $d4ff
    rst $38
    add h
    rst $38
    sub b
    rst $38
    sbc h
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    inc d
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    add b
    rst $38
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$3f], a
    ret nz

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

    ccf
    ret nz

    ccf
    ret nz

    ccf
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
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    ldh a, [rIF]
    ret nz

    ccf
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
    ld a, a
    rst $38
    cp a
    ld a, a
    rst $18
    ccf
    ld e, a
    cp a
    ld l, a
    sbc a
    scf
    rst $08
    rla
    rst $28
    dec de
    rst $20
    dec c
    di
    dec c
    di
    ld b, $f9
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
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
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
    rst $38
    nop
    cp $01
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
    ldh a, [rIF]
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
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
    nop
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    nop
    nop
    nop
    nop
    nop
    ld b, $07
    ld [$0a09], sp
    dec bc
    nop
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    nop
    inc d
    dec d
    ld d, $17
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_015_7982

    nop
    nop
    nop
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
    ld e, $00
    nop
    nop
    rra
    jr nz, @+$23

    ld [hl+], a
    inc hl
    ld [de], a

jr_015_7982:
    inc h
    dec h
    ld h, $27
    nop
    nop
    jr z, jr_015_798a

jr_015_798a:
    nop
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2e
    ld l, $2e
    ld l, $2e
    cpl
    nop
    nop
    jr nc, jr_015_79cc

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $2e
    scf
    jr c, jr_015_79dc

    ld l, $2e
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld l, $43
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
    ld d, e
    ld d, h
    ld d, h
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e

jr_015_79cc:
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, c
    ld h, d
    nop
    nop
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b

jr_015_79dc:
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, $2e
    ld l, $2e
    ld l, l
    add hl, de
    ld l, [hl]
    nop
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
    ld l, $2e
    ld l, $79
    ld l, [hl]
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
    ld l, $2e
    ld l, $86
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
    scf
    xor c
    add hl, sp
    nop
    nop
    nop
    nop
    xor d
    xor e
    xor h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0001
    nop
    nop
    nop
    nop
    inc bc
    ld b, $06
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    inc bc
    ld b, $06
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0406
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0404
    inc b
    inc b
    nop
    jr nz, jr_015_7ac3

jr_015_7ac3:
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    inc b
    inc b
    ld b, $04
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
    ld bc, $0402
    ld b, $06
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    rlca
    ld b, $06
    ld b, $06
    ld b, $06
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $00
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $00
    nop
    ld b, b
    nop
    nop
    nop
    inc bc
    inc b
    ld b, $02
    ld b, $02
    ld b, $06
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld [bc], a
    ld b, $02
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
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $06
    nop
    nop
    nop
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld hl, $4101
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
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
    add b
    ld a, a
    ret nz

    ccf
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
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
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
    cp $01
    cp $01
    cp $01
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
    nop
    rst $38
    ldh [$1f], a
    rra
    ldh [$88], a
    rst $38
    ld [$45ff], sp
    rst $38
    ld d, $ff
    add b
    rst $38
    or $1f
    rra
    ldh [rP1], a
    rst $38
    ld e, b
    rst $38
    ld d, [hl]
    rst $38
    inc de
    rst $38
    ld a, [hl+]
    rst $38
    ldh [$1f], a
    ld e, $e1
    and c
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
    ld bc, $03fe
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

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
    rst $38
    nop
    rst $38
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
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    ld bc, $01fe
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
    add b
    ld a, a
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
    ret nz

    ccf
    ret nz

    ccf
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
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    cp $01
    cp $01
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
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    ld b, e
    db $fc
    ld a, [de]
    rst $38
    adc l
    rst $38
    inc h
    rst $38
    ld d, $ff
    ret nc

    rst $38
    rst $38
    rlca
    rlca
    ld hl, sp+$20
    rst $38
    rst $10
    rst $38
    cp $ff
    adc a
    rst $38
    rlca
    rst $38
    ldh [$1f], a
    rlca
    ld hl, sp+$1f
    ldh [$3f], a
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
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$03
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
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
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
    ldh a, [rIF]
    ldh a, [rIF]
    pop af
    rrca
    di
    rrca
    ld bc, $00ff
    rst $38
    ldh [$1f], a
    ld a, $e3
    add hl, hl
    rst $38
    ret c

    rst $38
    sub c
    rst $38
    ld a, [hl-]
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
    ld a, a
    add b
    ccf
    ret nz

    rrca
    ldh a, [$03]
    db $fc
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
    cp $01
    db $fd
    inc bc
    ld a, [$f907]
    rlca
    db $f4
    rrca
    jp hl


    rra
    push de
    ccf
    and h
    ld a, a
    ld c, c
    rst $38
    ld [hl+], a
    rst $38
    sub l
    rst $38
    dec d
    rst $38
    and e
    rst $38
    dec d
    rst $38
    xor l
    rst $38
    call z, Call_015_59ff
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    cp l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, h
    rst $38
    inc sp
    rst $38
    ld sp, hl
    rst $38
    ld l, e
    rst $38
    ld [hl], a
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$3f]
    ret nz

    ccf
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

    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    ld bc, $01fe
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
    ld a, a
    add b
    rrca
    ldh a, [rIE]
    nop
    rst $38
    nop
    cp $01
    db $fd
    inc bc
    db $fc
    inc bc
    ld a, [$f407]
    rrca
    add sp, $1f
    ret nc

    ccf
    jp nz, $a17f

    ld a, a
    ld [bc], a
    rst $38
    add l
    rst $38
    ld [de], a
    rst $38
    ld a, [de]
    rst $38
    or h
    rst $38
    dec hl
    db $fd
    ld e, a
    ei
    ld a, e
    rst $30
    xor a
    rst $30
    ld a, a
    rst $28
    db $fd
    sbc $bd
    cp $ba
    db $fd
    ld [hl], e

Jump_015_7e81:
    rst $38
    ei
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    xor a
    rst $38
    inc e
    rst $38
    ld e, b
    rst $38
    ld a, [c]
    rst $38
    db $f4
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh [rIE], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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

    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$01
    cp $00
    rst $38
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
    cp $ff
    cp $ff
    db $fd
    cp $fa
    db $fd
    db $f4
    ei
    db $e4
    ei
    add sp, -$09
    ret nc

    rst $28
    add d
    ld a, a
    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld b, d
    rst $38
    xor [hl]
    rst $30
    ld e, c
    xor $55
    xor $b2
    db $dd
    ld a, l
    cp e
    and l
    ld a, e
    reti


    rst $30
    push de
    rst $28
    cp a
    rst $28
    xor $df
    ld e, b
    cp a
    db $dd
    cp a
    cp c
    ld a, a
    ld a, h
    rst $38
    cp $ff
    db $fc

jr_015_7f0f:
    rst $38
    ldh [rIE], a
    ret nc

    rst $38
    and b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    add c

jr_015_7f1d:
    cp $00
    rst $38
    inc bc
    db $fd
    ld bc, $06ff
    ei
    ld a, [bc]
    rst $30
    inc c
    rst $30
    inc b
    rst $38
    jr jr_015_7f1d

    jr nz, jr_015_7f0f

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
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
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
    ld a, a
    add b
    rra
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld e, $03
    cp $07
    db $fd
    rrca
    ei
    rrca
    rst $30
    rra
    rst $28
    ccf
    rst $18
    ld a, a
    rst $18
    rst $38
    ret nz

    cp a
    add b
    ld a, a
    nop
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    dec b
    cp $05
    cp $46
    db $fd
    ld h, h
    ei
    ld h, h
    ei
    ld l, b
    rst $30
    ldh a, [$6f]
    ld [hl], e
    rst $28
    ld h, a
    rst $18
    ld c, a
    cp a
    ret z

    cp a
    add b
    ld a, a
    jr c, @+$01

    cp b
    rst $38
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    and b
    rst $38
    ldh [rIE], a
    pop bc
    cp $80
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    inc c
    rst $30
    inc b
    rst $38
    jr @-$0f

    ld [$30ff], sp
    rst $18
    db $10
    rst $38
    ld h, b
    cp a
    nop
    rst $38
    ret nz

    ld a, a
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
    inc bc
    db $fd
    ld bc, $02ff
    rst $38
    ld a, [bc]
    rst $30
    db $fc
    db $fc
    add e
    rst $38
    add b
    rst $38
    db $fc
    rst $38
    add e
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
