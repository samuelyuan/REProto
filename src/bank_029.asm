SECTION "ROM Bank $029", ROMX[$4000], BANK[$29]

    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    add b
    add b
    add b
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
    ret nz

    add b
    ldh a, [$f8]
    db $fc
    ld a, h
    rst $38
    ccf
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
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    cp [hl]
    rst $38
    rst $28
    rst $38

Call_029_4040:
    rst $38
    rst $38
    ld a, l
    rst $38
    dec a
    rst $38
    rst $00
    rst $38
    di
    rst $38
    ld sp, hl
    ccf
    cp $1f
    rst $38
    rlca
    db $fc
    nop
    rst $38
    nop
    ld hl, sp+$01
    ld hl, sp+$03
    ld hl, sp+$07
    db $fc
    inc bc
    ld [$c901], a
    inc b
    call z, $e612
    add hl, bc
    db $f4
    inc bc
    ld hl, sp+$03
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
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
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
    cp $00
    cp $00
    cp $00
    cp $00
    db $fc
    nop
    db $fc
    add b
    db $fc
    ldh [$fc], a
    ldh a, [$fc]
    ldh a, [$f8]
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
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
    add b
    ret nz

    and b
    ldh a, [$f9]
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, a
    rst $38
    ld [hl], e
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
    ld a, a
    rst $38
    db $fc

jr_029_40f7:
    rst $38
    reti


    rst $38
    db $fc
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    nop
    nop
    ld c, $0e
    ld c, [hl]
    adc [hl]
    ld de, $0881
    sub b
    ld b, $08
    inc bc
    inc l
    inc bc
    call nz, $0403
    inc bc
    add h
    ld [bc], a
    dec b
    inc b
    dec bc
    ld [$f0d7], sp
    rrca
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, $f8
    inc c
    ld a, [c]
    inc e
    db $e3
    jr c, jr_029_40f7

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
    ldh [rP1], a
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
    jr nz, jr_029_417c

    jr nz, jr_029_417e

    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ret nz

    and b
    ldh a, [$f8]
    db $fc
    db $f4
    rst $38
    rst $18
    rst $38
    rst $30
    rst $38

jr_029_417c:
    rst $38
    rst $38

jr_029_417e:
    rst $38
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
    nop
    ld bc, $0300
    ld [bc], a
    dec b
    inc bc
    inc b
    inc bc
    inc c
    ld bc, $011e
    ld a, $00
    rst $38
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    pop bc
    nop
    add e
    nop
    inc bc
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    ccf
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
    ld bc, $0302
    nop
    nop
    nop
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
    dec b
    ld b, $07
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0a09], sp
    ld bc, $000b
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
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr @+$1b

    add hl, de
    ld a, [de]
    dec de
    ld c, $1c
    dec e
    add hl, de
    add hl, de
    ld bc, $1f1e
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    jr nz, jr_029_423b

    ld bc, $2322
    inc h
    dec h
    inc h
    ld h, $27
    jr z, jr_029_423d

    add hl, de
    add hl, de
    add hl, de
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_029_4261

    ld [hl-], a
    inc sp
    inc [hl]
    add hl, de
    add hl, de
    inc h
    dec [hl]
    ld [hl], $37
    jr c, jr_029_425f

jr_029_423b:
    add hl, sp
    ld a, [hl-]

jr_029_423d:
    dec sp
    ld bc, $193c
    add hl, de
    add hl, de
    add hl, de
    dec a
    ld a, $0e
    ccf
    ld b, b
    add hl, de
    ld b, c
    ld b, d
    nop
    nop
    ld b, e
    ld b, h
    add hl, de
    add hl, de
    add hl, de
    ld b, l
    ld b, [hl]
    ld c, $47
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a

jr_029_425f:
    ld d, b
    ld d, c

jr_029_4261:
    add hl, de
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    inc h
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    nop
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    add hl, de
    ld l, b
    add hl, de
    ld l, c
    ld l, d
    ld l, e
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
    add hl, de
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    nop
    nop
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld c, $0e
    ld a, [hl]
    ld a, a
    add b
    add c
    add c
    add d
    add e
    add h
    nop
    nop
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    add c
    add c
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    nop
    nop
    add l
    add hl, de
    sub c
    sub d
    sub e
    add c
    add c
    add c
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    nop
    nop
    sbc d
    sbc e
    sbc h
    add c
    add c
    add c
    add c
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    and h
    and l
    add c
    add c
    add c
    add c
    add c
    add c
    and [hl]
    and a
    xor b
    xor c
    add hl, de
    xor d
    xor e
    xor h
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    xor l
    xor [hl]
    xor a
    or b
    or c
    or d
    or e
    or h
    or l
    add c
    add c
    add c
    add c
    add c
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

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld hl, $0001
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
    ld b, b
    ld bc, $0001
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
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    jr nz, jr_029_4380

jr_029_4380:
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
    ld [bc], a
    ld b, $06
    ld b, $00
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
    inc b
    ld b, $04
    ld b, $20
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
    inc b
    ld b, $06
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
    inc b
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
    dec b
    nop
    nop
    nop
    nop
    nop
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
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
    nop
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    nop
    dec b
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    nop
    dec b
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    inc b
    inc b
    inc b
    inc bc
    ld [bc], a
    ld [bc], a
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
    nop
    nop
    nop
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
    rlca
    ret nz

    rrca
    ldh a, [rIF]
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
    ld a, a
    nop
    ld e, a
    nop
    cpl
    nop
    rla
    nop
    dec b
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
    ld bc, $0100
    nop
    inc bc
    nop
    rlca
    nop
    rrca
    ld bc, $031f
    ccf
    rlca
    ld a, a
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
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
    add e
    ld a, a
    pop bc
    ccf
    ldh [$1f], a
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
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
    ld bc, $0300
    nop
    inc bc
    nop
    rlca
    ld bc, $010f
    rra
    inc bc
    ccf
    rlca
    ld a, a
    rrca
    rst $38
    rra
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
    nop
    ld [bc], a
    nop
    ld [bc], a
    add b
    add c
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    inc a
    cp $1e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    rlca
    ld bc, $030f
    rra
    rlca
    ccf
    rrca
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    ld [bc], a
    nop
    inc b
    nop
    ld [$1801], sp
    inc bc
    db $10
    inc bc
    jr nz, jr_029_4550

    ld b, b
    rrca
    add b
    rrca
    add b
    rra
    nop

jr_029_4550:
    ccf
    nop
    ccf
    nop
    ccf
    nop
    rra
    add b
    rrca
    ld b, b
    rlca
    db $10
    ld bc, $0018
    inc b
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rlca
    rrca
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    rra
    ld de, $151f
    rra
    rrca
    rra
    rlca
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
    rrca
    nop
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
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld a, [hl]
    ld bc, $037c
    ld a, b
    rlca
    ld [hl], c
    rrca
    ld h, e
    rra
    ld b, a
    ccf
    rrca
    ld a, a
    rra
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
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    nop
    nop
    nop
    inc b
    nop
    ld bc, $1001
    inc bc
    jr nz, @+$05

    inc b
    rlca
    ld [$8807], sp
    rrca
    db $10
    rra
    jr nz, jr_029_463c

    jr nz, jr_029_469e

    nop
    nop
    add b
    nop
    add b
    nop
    ret nz

    nop
    pop af
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    rrca
    rst $38
    adc a
    rlca
    rlca
    ld bc, $0001
    rrca
    nop
    rra
    nop
    ccf
    nop

jr_029_463c:
    ld a, a
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
    ld sp, hl
    rlca
    di
    rrca
    db $e3
    rra
    rst $00
    ccf
    adc a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld bc, $0200
    nop
    inc b
    nop
    add hl, bc
    ld bc, $0310
    db $10
    inc bc
    inc b
    rlca
    ld c, b
    rrca
    nop
    rra
    add b
    rra
    jr nz, jr_029_46b6

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
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh a, [rIF]

jr_029_469e:
    ld hl, sp+$07
    rra
    nop
    rra
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
    nop
    rra
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    ld h, b

jr_029_46b6:
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$e0]
    ret nz

    ret nz

    add b
    ldh a, [rP1]
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
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld sp, hl
    rlca
    di
    rrca
    rst $20
    rra
    rst $08
    ccf
    adc a
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
    ld b, $00
    dec c
    ld bc, $0308
    db $10
    inc bc
    inc h
    rlca
    ld b, b
    rrca
    ld b, b
    rra
    add b
    rra
    jr nz, @+$01

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
    ret nz

    ccf
    ret nz

    ccf
    add b
    ld a, [hl]
    nop
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ld hl, sp+$00
    db $fc
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
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    cp $01
    rst $38
    nop
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
    inc bc
    nop
    inc bc
    nop
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
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rst $08
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    ld sp, hl
    rlca
    pop af
    rrca
    di
    rrca
    rst $20
    rra
    rst $08
    ccf
    sbc a
    ld a, a
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
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    nop
    ld [bc], a
    nop
    inc b
    ld bc, $0308
    db $10
    inc bc
    inc h
    rlca
    jr nz, jr_029_47d4

    ld b, b
    rrca
    sub b
    rra
    add b
    ccf
    nop
    ld a, a
    nop
    ld a, a
    add b
    cp $01
    db $fc
    inc bc

jr_029_47d4:
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, [hl]
    add b
    ld a, [hl]
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
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
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ldh a, [rP1]
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
    rst $38
    nop
    rst $38
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
    inc bc
    ld sp, hl
    rlca
    di
    rrca
    rst $20
    rra
    rst $20
    rra
    rst $08
    ccf
    sbc a
    ld a, a
    ccf
    rst $38
    ld a, a
    rst $38
    nop
    ld bc, $0200
    nop
    inc b
    ld bc, $0100
    ld [$1003], sp
    rlca
    jr nz, jr_029_4846

    ld h, b
    rrca
    ld b, b
    rra
    add b
    ccf
    nop

jr_029_4846:
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
    di
    inc c
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
    ld sp, hl
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    add b
    nop
    nop
    nop
    ld bc, $0300
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
    rra
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    ld bc, $01fe
    cp $03
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp-$0d
    inc c
    ldh a, [rIF]
    db $fc
    dec bc
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$0ef7], sp
    xor $1f
    rst $08
    ccf
    sbc a
    ld a, a
    cp a
    ld a, a
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    nop
    ld b, $00
    add hl, bc
    nop
    nop
    nop
    ld [bc], a
    nop
    daa
    nop
    rrca
    nop
    rra
    inc bc
    inc e
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    add b
    rst $38
    ld bc, $02fe
    db $fc
    ld [bc], a
    db $fc
    inc b
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$01
    ld hl, sp+$01
    ld hl, sp+$01
    ld hl, sp+$01
    ld hl, sp+$00
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$02
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
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rra
    ldh [rTAC], a
    ld hl, sp+$03
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rra
    nop
    rrca
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
    ld bc, $0300
    nop
    inc bc
    nop
    rlca
    nop
    rrca
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    ld bc, $017e
    cp $03
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$08]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rSB], a
    ret nz

    rlca
    ret nz

    rlca
    add b
    adc a
    nop
    adc l
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    rst $38
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    ld hl, sp-$1b
    ld hl, sp-$37
    ld hl, sp-$57
    ldh a, [$f9]
    ldh a, [$f8]
    ldh a, [$f4]
    db $fc
    db $fc
    jr @+$01

    inc c
    ccf
    jp nz, $f10f

    pop bc
    ld a, $e0
    rra
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    sbc a
    ldh [$e7], a
    ld hl, sp-$07
    cp $fe
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
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    db $fc
    rst $38
    db $fc
    rst $38
    adc [hl]
    rst $38
    rst $00
    rst $38
    ld sp, hl
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    inc bc
    db $fc
    jr @-$1e

    daa
    jp $8c5f


    ld a, [$7510]
    jr nz, jr_029_4a3a

    ld b, b
    rst $38
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
    rlca
    rst $38
    rrca
    db $fc
    rrca
    ld sp, hl
    ld c, $f8
    rlca
    ld a, a
    nop
    ld a, $00
    add c
    nop
    rst $38
    add c
    ld a, a
    rst $38
    rra
    rst $38
    rlca
    rst $38
    nop
    rst $38
    rra
    ldh [rTAC], a
    ld hl, sp+$03
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    ld bc, $017e
    cp $03
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
    rst $38
    nop
    cp $00
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ret nz

    nop
    nop
    nop
    ld a, [bc]
    nop
    rrca
    nop
    ld e, a
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
    cp $00
    cp $00
    cp $00
    db $fc
    nop
    db $fc
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    db $fc
    nop

jr_029_4a3a:
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    inc bc
    rst $20
    rlca
    db $e4
    rlca
    and h
    ld b, a
    call z, Call_000_1c0f
    rra
    ld bc, $111f
    ld c, $22
    dec e
    ld h, b
    rra
    add b
    ld a, a
    ret nz

    ccf
    ld h, a
    sbc b
    rra
    ldh [rTAC], a
    ld hl, sp-$40
    ccf
    ldh a, [rIF]
    cp $01
    rst $38
    nop
    rst $38
    nop
    ld a, h
    add e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, $ff
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
    rra
    rst $38
    rrca
    rst $38
    nop
    rst $38
    add b
    rra
    nop
    ld hl, sp+$07
    ld a, a
    add c
    rst $08
    jr nc, jr_029_4ad6

    nop
    rrca
    nop
    rlca
    nop
    rlca
    nop
    add e
    nop
    jp $e300


    nop
    ld a, [c]
    nop
    ld a, [$f700]
    add b
    db $ed
    add c
    ld [$dc83], a
    rlca
    cp h
    rrca
    ld a, h
    rra
    ld hl, sp+$7f
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ret nz

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
    ld bc, $01ff

jr_029_4ad6:
    ld a, l
    inc bc
    ld a, e
    rlca
    jr c, @+$09

    inc e
    rlca
    rrca
    rrca
    rlca
    rlca
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    add b
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
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    stop
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
    ldh [rP1], a
    rst $38
    ld hl, sp-$01
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
    rra
    rst $38
    rlca
    rst $38
    ld [bc], a
    rst $38
    dec bc
    rst $38
    dec c
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38

jr_029_4b30:
    cp $00
    ccf
    ret nz

    rrca
    ldh a, [$83]
    ld a, h
    ldh [$1f], a
    ld hl, sp+$07
    ld a, $c1
    rst $18
    jr nz, jr_029_4b30

    db $10
    rst $30
    ld [$06f9], sp
    ld a, [$ff07]
    inc bc
    rst $38
    add e
    rst $38
    add e
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    cp a
    ld a, a
    rra
    ld a, a
    rlca
    ld a, a
    ld a, a
    nop
    ld a, a
    nop
    db $fc
    nop
    ld hl, sp+$00
    di
    inc bc
    di
    ld [bc], a
    ldh a, [rP1]
    ld hl, sp+$08
    rst $38
    rrca
    rst $38
    rrca
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
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$0f
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$3f], a
    ldh [$7f], a
    ldh [$7f], a
    ldh a, [rIE]
    inc a
    ccf
    rrca
    rrca
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
    ld a, a
    rst $38
    rra
    rst $38
    adc a
    rst $38
    db $e3
    rst $38
    ld [hl], b
    ld a, a
    inc a
    ccf
    ld c, $0f
    inc bc
    ld [bc], a
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0400
    nop
    ld [bc], a
    nop
    dec b
    nop
    ld a, [bc]
    nop
    inc c
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ret c

    rst $38
    ld b, h
    ei
    add h
    ei
    ldh [$7f], a
    nop
    rra
    jr nz, jr_029_4c23

    ld [c], a
    dec e
    db $dd
    ld [hl+], a
    rst $38
    nop
    rra
    ldh [rTAC], a
    ld hl, sp-$7f
    ld a, [hl]
    ldh a, [rIF]
    db $fc
    inc bc
    rst $38
    nop
    ld a, a
    add b
    sbc a
    ldh [$e7], a
    ld hl, sp-$07
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38

jr_029_4c23:
    ld a, a
    ld a, a
    rrca
    ccf
    inc bc
    ccf
    nop
    ccf
    nop
    ld a, [hl]
    ld b, b
    cp $c0
    ccf
    db $fc
    ld a, [hl]
    db $fd
    cp $f9
    db $fc
    ei
    db $fc
    ei
    ld hl, sp-$09
    ld hl, sp-$09
    ldh a, [rIE]
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add c
    rst $38
    pop hl
    rst $38
    ld a, e
    ld a, a
    rra
    ld e, $07
    ld b, $03
    nop
    rrca
    nop
    rra
    nop
    rst $38
    ret nz

    cp a
    ret nz

    rst $38
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
    db $fc
    nop
    ld a, e
    nop
    sub d
    nop
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    pop bc
    rst $20
    add b
    ld [hl], a
    add b
    ld a, a
    ret nz

    ld a, [hl]
    add c
    ld a, [hl]
    jp $c33c


    db $10
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    jp nz, $a8ff

    rst $10
    db $f4
    ei
    db $fd
    cp $ff
    ccf
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld h, b
    rra
    jr jr_029_4cdc

    ld b, $01
    ld bc, $0000
    nop
    nop

jr_029_4cdc:
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    rlca
    nop
    rrca
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    rst $38
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
    ld bc, $01fe
    cp $03
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$3f], a
    ldh [$7f], a
    ret nz

    rst $38
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
    rst $28
    nop
    db $eb
    nop
    rst $10
    nop
    rst $18
    nop
    rst $20
    nop
    xor a
    nop
    or e
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
    ccf
    ret nz

    rrca
    ldh a, [rSB]
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
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    ret nz

    ccf
    ret nz

jr_029_4d71:
    ccf
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
    nop
    cp $03
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    pop hl
    ld e, $c0
    inc hl
    ret nz

    ld [$1080], sp
    add b
    ld d, $80
    rla
    nop
    rla
    nop
    add hl, bc
    nop
    ld b, [hl]
    nop
    ld h, c
    add b
    jr nc, jr_029_4d71

    inc e
    ldh a, [rIF]
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld e, d
    nop
    xor b
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
    rst $38
    nop
    rst $38
    nop
    cp $07
    cp $3f
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ei
    nop
    ei
    nop
    rst $30
    nop
    rst $28
    nop
    rst $18
    nop
    rst $18
    ret nz

    rst $18
    ldh [$e7], a
    ld hl, sp-$07
    ld a, $3e
    rst $08
    rrca
    di
    inc bc
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    pop af
    nop
    ld h, e
    add b
    rlca
    ld b, b
    rrca
    nop
    rlca
    db $10
    rlca
    ld [$8403], sp
    inc bc
    call nz, $8403
    rlca
    ld [$f807], sp
    rrca
    sub b
    rra
    ld h, b
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
    rst $20
    nop
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    add b
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
    cp $01
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
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
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    rst $30
    nop
    rst $18
    ld h, [hl]
    pop hl
    ld sp, hl
    ld hl, sp+$7e
    ld a, [hl]
    rra
    sbc a
    rlca
    rst $20
    ld bc, $00f9
    cp $00
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fc
    nop
    ld sp, hl
    nop
    ld a, [c]
    ld bc, $03e5
    ld b, e
    add e
    adc e
    rlca
    rlca
    ccf
    ccf
    ccf
    ccf
    rst $08
    rrca
    di
    inc bc
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
    rst $38
    nop
    cp $00
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld h, b
    rst $08
    ld [hl], b
    jp $803c


    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    ld [$1ef7], sp
    pop hl
    rra

jr_029_4f07:
    ldh [$1f], a
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [rNR32]
    db $e3
    inc a
    jp $c738


    db $10
    rst $28
    nop
    rst $38
    db $10
    rst $38
    dec b
    rst $38
    jr nz, jr_029_4f07

    nop
    rst $38
    nop
    rst $38
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
    inc h
    ld e, b
    sbc b
    add c
    ldh [$e3], a
    pop hl
    ldh [$c6], a
    add $0f
    adc a
    rrca
    cpl
    rra
    ld e, a
    ccf
    cp a
    ld a, [hl]
    ld a, [hl]
    db $fc
    db $fd
    ld hl, sp-$05
    ldh a, [$f7]
    ldh [$ef], a
    ret nz

    rst $18
    ret nz

    rst $18
    add b
    cp a
    nop
    ccf
    ret nz

    rst $08
    ldh a, [$f3]
    ld a, h
    ld a, h
    ldh [$7f], a
    ld hl, sp+$1f
    cp $07
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
    inc [hl]
    nop
    ld [hl], a
    nop
    ld b, $00
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
    ld a, a
    add b
    rra
    ldh [rIF], a
    ldh a, [$03]
    db $fc
    add b
    ld a, a
    ret nz

    ccf
    ldh a, [rIF]
    db $fc
    inc bc
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
    ld bc, $03fe
    db $fc
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    jp $f03f


    rrca
    sbc h
    ld h, e
    add a
    ld a, b
    inc bc

jr_029_4fc7:
    db $fc
    nop

jr_029_4fc9:
    rst $38
    ld bc, $03fe
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld b, $f9
    ld d, $f9
    ld d, [hl]
    ld sp, hl
    inc l
    di
    inc c
    di
    inc c
    di
    jr jr_029_4fc7

    jr jr_029_4fc9

    jr @-$17

    ld c, $f1
    inc bc
    db $fc
    db $f4
    inc bc
    ld a, c
    add b
    sbc a
    ld h, b
    db $e3
    sbc h
    sbc c
    add [hl]
    and $e1
    ld sp, hl
    ld hl, sp-$02
    cp $7f
    ld a, a
    rra
    sbc a
    rlca
    rst $20
    ld bc, $00f9
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
    ccf
    ret nz

    rst $08
    ldh a, [$f3]
    ld a, h
    ld a, h
    sbc a
    rra
    rst $20
    rlca
    ld sp, hl
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
    ld e, a
    nop
    rst $08
    nop
    sbc a
    nop
    rrca
    nop
    rrca
    nop
    rra
    nop
    rrca
    nop
    rra
    nop
    rrca
    nop
    rrca
    nop
    rst $38
    dec bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    ld a, a
    add b
    rra
    ldh [rTAC], a
    ld hl, sp+$03
    db $fc
    nop
    nop
    ld bc, $0302
    nop
    nop
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    nop
    nop
    nop
    ld c, $0f
    nop
    nop
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    nop
    dec de
    inc e
    dec e
    ld e, $00
    rra
    jr nz, jr_029_509d

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_029_50ad

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_029_50bd

    ld hl, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_029_50ce

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c

jr_029_509d:
    ld b, d
    ld b, $43
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

jr_029_50ad:
    ld d, c
    ld d, d
    ld b, $53
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

jr_029_50bd:
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld bc, $6968
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a

jr_029_50ce:
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
    ld bc, $7f7e
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
    ld hl, $abb3
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    nop
    cp l
    ld hl, $21be
    cp a
    ret nz

    pop bc
    ld hl, $c3c2
    call nz, $c6c5
    or b
    rst $00
    ret z

    ret


    jp z, Jump_000_21cb

    ld hl, $21cc
    ld hl, $cecd
    rst $08
    ret nc

    nop
    pop de
    jp nc, Jump_000_00d3

    call nc, $d5d5
    sub $21
    rst $10
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $00
    nop
    nop
    rst $18
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $06
    rst $20
    add sp, -$17
    nop
    nop
    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$f1]
    ld b, $06
    ld b, $f2
    di
    nop
    nop
    db $f4
    xor e
    xor e
    push af
    or $f7
    ld hl, sp-$07
    ld b, $06
    ld b, $06
    ld a, [$00fb]
    db $fc
    db $fd
    xor e
    xor e
    cp $ff
    nop
    xor e
    ld bc, $0606
    ld b, $06
    ld b, $02
    inc bc
    nop
    inc b
    xor e
    xor e
    dec b
    dec b
    dec b
    dec b
    dec b
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
    dec b
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
    dec b
    dec b
    nop
    dec b
    dec b
    dec b
    dec b
    dec b
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
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
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
    rlca
    rlca
    rlca
    dec b
    nop
    dec b
    dec b
    rlca
    ld b, $00
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    rlca
    rlca
    rlca
    rlca
    rlca
    dec b
    rlca
    ld b, $07
    dec b
    dec b
    dec b
    dec b
    dec b
    nop
    dec b
    dec b
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc b
    rlca
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    rlca
    rlca
    inc b
    inc b
    inc h
    inc b
    inc b
    rlca
    inc b
    inc b
    inc b
    inc b
    inc b
    rlca
    rlca
    rlca
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    inc b
    inc b
    rlca
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    ld [bc], a
    inc b
    inc b
    rlca
    rlca
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    inc b
    rlca
    rlca
    nop
    inc bc
    inc bc
    inc bc
    nop
    ld [bc], a
    ld [bc], a
    ld b, d
    ld [bc], a
    nop
    ld [bc], a
    inc b
    inc b
    ld b, $00
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld b, $06
    nop
    dec b
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    dec b
    nop
    nop
    nop
    dec b
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc b
    inc b
    inc b
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [bc], a
    dec b
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    ld a, [bc]
    ld [bc], a
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    dec c
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [rP1], a
    ldh a, [rP1]
    ld [hl], b
    nop
    jr c, jr_029_52f8

jr_029_52f8:
    stop
    ld [$0400], sp
    nop
    ld b, $00
    rlca
    ld [bc], a
    rlca
    ld bc, $0103
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
    add b
    nop
    ldh [rP1], a
    ldh [rP1], a
    ld hl, sp+$00
    db $fc
    add b
    cp $e0
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ccf
    nop
    rrca
    nop
    rlca
    nop
    ld [bc], a
    ld bc, $0300
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    ccf
    ld bc, $027f
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rla
    rst $38
    ld [hl], $ff
    ld a, h
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    adc a
    rst $38
    cp l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp b
    rst $38
    di
    db $fc
    db $f4
    ld hl, sp-$04
    ldh a, [$cf]
    ldh a, [$d8]
    rst $20
    cp b
    rst $00
    rra
    ldh [$ef], a
    db $10
    jr c, jr_029_5399

    rrca
    nop
    ld bc, $0000
    nop
    nop

jr_029_5399:
    nop
    nop
    nop
    pop hl
    nop
    rst $38
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    inc bc
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
    add b
    nop
    jp nz, $e180

    ld b, b
    ld h, b
    jr nz, jr_029_53ed

    jr nz, jr_029_53d7

    db $10
    jr @+$0a

    inc c
    inc b
    ld e, $04
    rlca
    ld [bc], a
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

jr_029_53d7:
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
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01

jr_029_53ed:
    db $fc
    rst $38
    rst $38
    rst $38
    nop
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ret nz

    ccf
    add c
    ld a, a
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    scf
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    sbc a
    rst $38
    ld a, a
    rst $38
    ld a, c
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
    rst $08
    rst $38
    rst $08
    rst $38
    ld e, d
    rst $38
    xor b
    ld a, a
    ei
    ccf
    ccf
    ld a, a
    rst $38
    ld a, a
    ld a, a
    rst $38
    cp $ff
    inc a
    rst $38
    db $e3
    rra
    db $fc
    inc bc
    ccf
    ret nz

    jp Jump_029_783c


    rlca
    ld c, $01
    ld sp, $fe00
    nop
    rst $38
    nop
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    ld a, a
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
    rlca
    nop
    inc bc
    nop
    inc bc
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
    nop
    nop
    add b
    nop
    add b
    nop
    ld b, b
    nop
    ld h, b
    nop
    jr nc, jr_029_5494

jr_029_5494:
    stop

jr_029_5496:
    inc c
    nop
    ld c, $00
    add a
    add b
    rst $00
    add b
    ld b, a
    ld b, b
    ld h, a
    jr nz, @+$39

    db $10
    dec de
    db $10
    dec de
    ld [$040d], sp
    ld b, $02
    ld [bc], a
    ld [bc], a
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
    nop
    nop
    add b
    nop
    ldh [rP1], a
    ret nz

    nop
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    add b
    nop
    ld b, b
    add b
    jr nz, jr_029_5496

    ld [hl], b
    ret nz

    db $fc
    ldh a, [$fe]
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
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
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
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    pop hl

jr_029_5511:
    rst $38
    jp $c7ff


    rst $38
    adc a
    cp $1f
    cp $3f
    db $fc
    ccf
    ld hl, sp-$09
    ld hl, sp+$67
    sbc b
    ldh a, [rIF]
    cp $01
    rst $38
    nop
    jr jr_029_5511

    pop bc
    ld a, $73
    inc c
    sbc a
    nop
    sbc a
    ldh [$df], a
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$cf]
    ld hl, sp-$19
    ld hl, sp-$19
    db $fc
    di
    db $fc
    db $e3
    ld a, h
    ld sp, hl
    ld a, [hl]
    ld sp, hl
    ld a, $fd
    ccf
    db $fc
    ccf
    db $fc
    rra
    cp $1f
    cp $0f
    rrca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    rst $38
    nop
    ld a, a
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
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    inc bc
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
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ret c

    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    db $f4
    nop
    db $fc
    nop
    ld a, $00
    cp a
    add b
    rst $18
    ld b, b
    ld l, a
    ld b, b
    ld a, a
    jr nz, jr_029_55e0

    db $10
    rra
    db $10
    rrca
    ld [$0407], sp
    rlca
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0007
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
    stop
    stop
    jr jr_029_55c8

jr_029_55c8:
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ldh [rP1], a
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    rst $38
    add b

jr_029_55e0:
    ldh [$80], a
    ldh a, [$c0]
    ld hl, sp-$20
    cp $f8
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
    ld a, a
    cp $3f
    db $fc
    ld a, a
    ld hl, sp+$7f
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
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld a, b
    sbc a
    ld a, h
    rst $08
    ld a, $8f
    ld a, a
    and e
    ld e, a
    cp [hl]
    ld b, c
    add d
    ld a, l
    ldh a, [rIF]
    ld a, h
    add e
    nop
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
    and b
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [$80]
    ld a, b
    add b
    ld a, h
    ret nz

    inc a
    ret nz

    ld a, $c0
    cp [hl]
    ldh [$9e], a
    ldh [$9e], a
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$ef]
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$09
    ld a, h
    di
    ld a, h
    ei
    ld a, $f9
    ld a, $f9
    ccf
    db $fd
    rra
    db $fc
    rra
    db $fc
    rrca
    db $fc
    rrca
    cp $07
    cp $07
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $003f
    ccf
    nop
    rra
    nop
    rra
    nop
    rra
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
    inc bc
    nop
    ld bc, $0100
    nop
    pop bc
    nop
    add sp, $00
    ldh a, [rP1]
    db $fc
    nop
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
    add b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    jr nz, jr_029_572e

    db $10
    ld a, a
    ld [$087f], sp
    ld a, l
    inc b
    ld a, a
    ld [bc], a
    ccf
    inc bc
    ccf
    ld bc, $003f
    rst $38
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    sbc a
    nop
    rra
    nop
    rrca
    nop
    rrca
    nop
    ld [hl], e
    nop
    ldh a, [rP1]
    db $fc
    nop
    cp $00
    cp $00
    rst $38
    nop
    cp $80
    rst $38
    ldh [rIE], a
    ld hl, sp-$04
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $28
    ldh [$f3], a
    ldh [$f0], a
    ret nz

    ld hl, sp-$40
    db $fc
    add b
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
    add b
    rst $38
    ret nz

    ld a, a
    ldh [$7f], a
    ldh a, [$7f]
    ld hl, sp+$78
    db $10
    inc a
    db $10
    inc a
    db $10
    inc a
    ld [$083c], sp
    ld e, $08
    ld e, $08

jr_029_571e:
    ld e, $04
    rra
    inc b
    rra
    inc b
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld bc, $0107

jr_029_572e:
    rlca
    ld bc, $0103
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    inc bc
    nop

jr_029_5740:
    ld bc, $8100
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [$80]
    ld a, b
    add b
    ld a, b
    ret nz

    ld a, b
    ret nz

    jr c, jr_029_571e

    jr c, jr_029_5740

    sbc h
    ldh [$9c], a
    ldh a, [$9e]
    ldh a, [$ce]
    ldh a, [$cf]
    ld hl, sp-$39
    ld hl, sp-$59
    ld a, h
    rst $30
    ld a, h
    ld a, h
    nop
    ld a, $00
    ld a, $00
    rra
    nop
    cpl
    jr c, jr_029_57c2

    ld a, h
    add e
    db $fc
    add a
    cp $8d
    rst $38
    sbc h
    rst $38
    ld a, b
    ld a, a
    ld h, b
    ccf
    jr nc, jr_029_57a9

    jr jr_029_579b

    inc c
    rlca
    ld b, $03
    rlca
    ld bc, $0003
    ld bc, $0000
    nop
    nop
    nop
    nop

jr_029_579b:
    nop
    nop
    nop
    nop
    nop
    rst $30
    nop
    di
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    db $fd

jr_029_57a9:
    nop
    rst $38
    nop
    rst $38
    adc h
    rst $38
    ld h, e
    ld sp, $3800
    nop
    inc e
    nop
    rrca
    nop
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    nop
    nop
    rst $38
    nop

jr_029_57c2:
    ccf
    nop
    rla
    nop
    rra
    nop
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    and c
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [$c0]
    db $fc
    ret nz

    db $fc
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp+$78
    ret nz

    inc a
    ldh [rIF], a
    ld hl, sp+$03
    db $fc
    nop
    rst $38
    add d
    rst $38
    ret nz

    ld a, a
    push hl
    ccf
    db $10
    ldh [$0a], a
    ldh a, [rTIMA]
    ld hl, sp+$02
    db $fc
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0100
    nop
    ld [$0900], sp
    nop
    inc c
    nop
    inc b
    nop
    dec b
    nop
    rlca
    nop
    dec b
    nop
    ld b, $00
    rlca
    nop
    add a
    nop
    add e
    nop
    add e
    nop
    jp $c300


    nop
    pop bc
    nop
    pop bc
    add b
    pop hl
    add b
    pop hl
    add b
    pop hl
    add b
    ldh [rLCDC], a
    ldh a, [rLCDC]
    ld hl, sp+$40
    ld hl, sp+$40
    db $fc
    ld h, b
    ld hl, sp+$20
    ld hl, sp+$20
    db $fc

jr_029_5839:
    jr nz, jr_029_5839

    db $10
    cp $10
    cp $10
    ld a, h
    db $10
    ld a, a
    ld [$087e], sp
    ld a, a
    ld [$0c3f], sp
    ccf
    inc b
    ccf
    inc b
    ccf
    inc b
    rra
    ld b, $1f
    ld [bc], a
    ld e, a
    ld [bc], a
    ld a, a
    inc bc
    ld a, a
    ld bc, $012f
    cp a
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rlc b
    rst $38
    nop
    ei
    add b
    ld a, [$fa80]
    ret nz

    ldh [rP1], a
    ldh a, [$80]
    ld [hl], b
    ret nz

    ld a, b
    ldh [$78], a
    ldh [rNR32], a
    ldh a, [$0e]
    ld hl, sp+$0f
    ld hl, sp+$07
    db $fc
    add a
    db $fc
    rst $08
    ld a, [hl]
    jp hl


    ld a, $61
    ccf
    ld sp, $181f
    rrca
    dec c
    rlca
    rlca
    inc bc
    ld b, $01
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
    ret nz

    nop
    ldh a, [rP1]
    ld a, b
    nop
    ld e, $00
    adc a
    nop
    rst $00
    nop
    add sp, $00
    ld hl, sp+$07
    jr c, jr_029_58b9

    jr jr_029_58bb

    ld b, $01
    inc bc
    nop
    nop

jr_029_58b9:
    nop
    nop

jr_029_58bb:
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    ccf
    nop
    dec de
    nop
    rrca
    nop
    rrca
    nop
    dec b
    nop
    add a
    nop
    db $d3
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    pop af
    nop
    inc a
    ret nz

    rlca
    ld hl, sp+$28
    rst $38
    add b
    nop
    xor c
    nop
    ld d, d
    nop
    dec h
    nop
    ld c, e
    nop
    ld sp, $3a80
    ret nz

    inc de
    ldh [$f8], a
    rlca
    add b
    ld bc, $0000
    nop
    nop
    add b
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ret nz

    nop
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
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
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
    cp $00
    db $fc
    nop
    cp $00
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
    ld h, b
    db $fd
    jr nz, jr_029_59d5

    db $10
    cp $10
    cp [hl]
    ld [$04fe], sp
    rst $38
    nop
    rst $38
    ld [bc], a
    ld a, a
    ld bc, $007f
    ccf
    nop
    ccf
    nop
    rra
    inc b
    adc a
    ld [bc], a
    jp $8000


    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [$80]
    db $fc
    ret nz

    cp $f0
    ccf
    ld hl, sp+$1b
    db $fc
    ld bc, $01fe
    rst $38
    add [hl]
    ld a, a
    ld c, b
    ccf
    jr c, jr_029_59ad

    ld bc, $111f
    rrca
    dec d
    rrca
    ld d, $0f
    dec bc
    rrca
    xor l
    rrca
    and $0f
    dec l
    rst $38
    ld d, h
    rst $38
    xor d
    rst $38
    or l
    rst $38
    jp c, $adff

    ld a, a
    ld a, [$751f]
    rrca
    ld a, [hl-]

jr_029_59ad:
    rlca
    jr c, jr_029_59b7

    ld a, [de]
    rlca
    jr @+$09

    jr c, @+$09

    inc d

jr_029_59b7:
    rrca
    db $10
    rrca
    jr nc, jr_029_59cb

    jr nz, jr_029_59dd

    jr nz, jr_029_59df

    ld h, b
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    db $eb
    rra
    push af

jr_029_59cb:
    ccf
    sub a
    ld a, a
    rst $28
    rst $38
    rrca
    nop
    rlca
    nop
    add a

jr_029_59d5:
    nop
    ld hl, $5000
    nop
    ld d, b
    nop
    xor l

jr_029_59dd:
    nop
    ld l, b

jr_029_59df:
    nop
    or l
    rst $38
    jp c, Jump_000_02ff

    ccf
    ld [de], a
    rra
    inc b
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, h
    jr c, jr_029_5a57

    jr c, jr_029_5a59

    jr c, @+$72

    inc a
    ld h, h
    jr c, jr_029_5a6b

    inc a
    jr nc, @+$40

    db $76
    jr c, @+$38

    jr jr_029_5a35

    inc e
    ld [hl-], a
    inc e
    ld [hl-], a
    dec e
    ld [hl-], a
    dec e
    ld [hl-], a
    dec e
    ld a, [hl-]
    dec e
    ld a, [hl-]
    dec e
    ld a, [hl-]
    dec e
    jr jr_029_5a23

    jr jr_029_5a35

    add hl, de
    ld c, $19
    ld c, $19
    ld c, $19
    ld c, $19
    ld c, $19
    ld c, $1d

jr_029_5a23:
    ld c, $9d
    ld c, $9d
    ld c, $99
    ld b, $9d
    ld c, $dc
    rlca
    call c, $cc07
    rlca
    call z, $8c07

jr_029_5a35:
    inc bc
    xor $03
    and $01
    rst $20
    ld bc, $00e3
    db $e3
    nop
    pop bc
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    jr nc, jr_029_5a4a

jr_029_5a4a:
    ld e, $00
    sbc a
    nop
    adc a
    nop
    rst $00
    nop
    rst $20
    nop
    rst $20
    nop
    rst $30

jr_029_5a57:
    nop
    scf

jr_029_5a59:
    nop
    rra
    nop
    rrca
    nop
    rrca
    ld bc, $0307
    add a
    inc bc
    add a
    nop
    add $80
    ld [c], a
    ld b, b
    rst $20

jr_029_5a6b:
    ld b, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    ldh a, [rSB]
    ld a, [hl]
    ld bc, $334c
    ld b, b
    ccf
    jr nz, jr_029_5a99

    ld hl, $121f
    rrca
    dec d
    rrca
    ld [hl], $0f
    db $eb
    rra
    push de
    ccf
    ld e, $ff
    dec hl
    rst $38
    ld [hl], l
    rst $38
    xor [hl]
    rst $38
    ld e, c
    rst $38
    ld d, l
    nop
    push af
    nop
    xor d
    nop
    ld d, h
    nop
    ld c, c

jr_029_5a99:
    nop
    and d
    nop
    ld d, h
    nop
    sub b
    nop
    add b
    nop
    jr nz, jr_029_5aa4

jr_029_5aa4:
    add b
    nop
    nop
    nop
    jr nz, jr_029_5aaa

jr_029_5aaa:
    nop
    nop
    nop
    nop
    nop
    nop

jr_029_5ab0:
    ld [bc], a
    ld bc, $0300
    inc b
    inc bc
    ld [$2007], sp
    rrca
    and b
    rrca
    db $f4
    rrca
    ld a, [hl]
    add a
    rst $38
    rlca
    rst $38
    inc bc
    cp $01
    ld a, a
    nop
    dec sp
    nop
    inc bc
    nop
    ld b, c
    nop
    cp l
    nop
    dec b
    rst $38
    jr z, @+$01

    ld b, c
    rst $38
    and b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    nop
    inc d
    nop
    or c
    nop
    ld d, l
    nop
    sub d
    nop
    ret nc

    nop
    ld e, l
    nop
    sub h
    nop
    ld a, d
    nop
    sbc c
    nop
    cp d
    nop
    ld e, c
    nop
    sbc b
    nop
    sbc b
    nop
    jr jr_029_5afc

jr_029_5afc:
    sbc b
    nop
    ld e, b
    nop
    sbc b
    nop
    sbc b
    nop
    jr jr_029_5b06

jr_029_5b06:
    sbc b
    nop
    jr jr_029_5b0a

jr_029_5b0a:
    jr jr_029_5b0c

jr_029_5b0c:
    ld e, b
    nop
    jr jr_029_5b10

jr_029_5b10:
    jr jr_029_5b12

jr_029_5b12:
    jr jr_029_5b14

jr_029_5b14:
    jr jr_029_5b16

jr_029_5b16:
    ld [$1c00], sp
    nop
    add hl, bc
    nop
    adc b
    nop
    adc b
    nop
    adc b
    nop
    add b
    nop
    and b
    nop
    ldh [rP1], a
    pop af
    nop
    ld [hl], d
    add b
    ld [hl], c
    add b
    jr jr_029_5ab0

    nop
    ld a, a
    inc b
    ccf
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
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
    add b
    ld bc, $01cc
    db $fc
    inc bc
    or c
    rlca
    ld bc, $03ff
    rst $38
    dec b
    rst $38
    rlca
    rst $38
    dec e
    rst $38
    rrca
    nop
    dec sp
    nop
    ccf
    nop
    cp a
    nop
    ld a, [hl]
    nop
    rst $18
    nop
    xor l
    nop
    ld l, l
    nop
    or l
    nop
    ld d, h
    nop
    ld a, [hl+]
    nop
    xor d
    nop
    ld d, h
    nop
    ld d, h
    nop
    adc c
    nop
    ld b, b
    nop
    ld c, b
    nop
    nop
    nop
    jr nz, jr_029_5b86

jr_029_5b86:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_029_5b92

jr_029_5b92:
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld [bc], a
    ld bc, $0304
    nop
    rlca
    ld [$1007], sp
    rrca
    jr nz, jr_029_5bc5

    nop
    ccf
    ld b, b
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
    nop
    rst $38
    nop
    cp $00
    ld d, h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_029_5bc5:
    rst $38
    ld a, a
    rst $38
    rst $18
    ccf
    db $fd
    ld b, $04
    nop
    ld d, h
    nop
    ld b, b
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
    nop
    nop
    nop
    and c
    nop
    ld b, c
    nop
    ld b, b
    ld bc, $0001
    add c
    nop
    ld [hl+], a
    ld bc, $0100
    add c
    nop
    ld [bc], a
    ld bc, $0102
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
    ld bc, $0003
    ld bc, $0106
    ld b, $00
    rlca
    inc b
    inc bc
    inc b
    inc bc
    inc c
    inc bc
    inc b
    inc bc
    jr nz, @+$05

    inc de
    nop
    jr nc, jr_029_5c10

jr_029_5c10:
    ld b, b
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
    ld [bc], a
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
    ld [bc], a
    nop
    ld bc, $0200
    nop
    inc bc
    nop
    dec b
    nop
    dec bc
    nop
    rrca
    nop
    rla
    nop
    rra
    nop
    cpl
    nop
    ccf
    nop
    rst $18
    nop
    rst $38
    nop
    ld a, a
    nop
    cp $00
    rst $38
    nop
    cp $00
    ld a, a
    nop
    rst $30
    nop
    cp l
    nop
    db $fd
    nop
    ld [hl], l
    nop
    db $dd
    nop
    xor d
    nop
    ld d, l
    nop
    ld d, h
    nop
    xor b
    nop
    ld d, b
    nop
    and b
    nop
    stop
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
    ld bc, $0200
    ld bc, $0304
    nop
    rlca
    ld [$1007], sp
    rrca
    jr nz, jr_029_5caf

    nop
    ccf
    ld b, b
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
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00

jr_029_5caf:
    ld hl, sp+$03
    rst $38
    rla
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    cp $7f
    cp $fa
    db $fc
    rst $38
    ld hl, sp-$08
    ld hl, sp-$17
    ldh a, [$e2]
    ret nz

    ld b, b
    add b
    ld d, b
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
    cp $00
    cp $00
    db $fc
    nop
    ld hl, sp-$80
    ld bc, $0182
    add d
    ld bc, $0384
    adc b
    rlca
    nop
    rrca
    jr nz, jr_029_5d0d

    jr nz, jr_029_5d0f

    ld bc, $403f
    ccf
    ld b, b
    ccf
    nop
    ld a, a
    add c
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    rlca
    rst $38
    rrca
    rst $38
    dec bc
    rst $38
    ld bc, $01ff
    ld a, a
    rst $30
    rrca
    dec bc
    add a
    rrca

jr_029_5d0d:
    add e
    rrca

jr_029_5d0f:
    inc bc
    rla
    inc bc
    rlca
    inc bc
    ld a, [bc]
    rlca
    nop
    rrca
    nop
    rrca
    ld b, b
    rrca
    ret nz

    rra
    add b
    ld a, a
    add b
    ld a, a
    db $10
    rst $20
    cp b
    ld b, a
    ldh [rTAC], a
    ld l, b
    rlca
    ld [$0807], sp
    rlca
    ld b, b
    rlca
    ld d, b
    rlca
    adc d
    rlca
    or d
    rlca
    ld d, e
    rlca
    cp e
    rlca
    ei
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    db $fd
    inc bc
    rst $38
    ld bc, $01fe
    rst $38
    nop
    rst $38
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
    ei
    nop
    rst $38
    nop
    cp $00
    jp c, $fb00

    nop
    db $ec
    nop
    xor d
    nop
    ld d, l
    nop
    xor b
    nop
    ld d, h
    nop
    and c
    nop
    ld b, h
    nop
    db $10
    ld bc, $0182
    inc b
    inc bc
    ld [$0807], sp
    rlca
    db $10
    rrca
    jr nz, jr_029_5d99

    nop
    ccf
    ld b, b
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
    nop
    rst $38
    nop
    db $fd
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00

jr_029_5d99:
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [$3f], a
    rst $38
    ld a, a
    cp $fe
    db $fc
    db $fd
    db $fc
    db $fc
    ld hl, sp-$06
    ldh a, [$f1]
    ldh a, [$f8]
    ldh [$e2], a
    ret nz

    ret z

    ret nz

    ret nz

    add b
    nop
    add b
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    cp $20
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ret nz

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

Call_029_5de0:
    nop
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    add b
    nop
    ret nz

    nop
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and h
    nop
    xor [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [hl], a
    nop
    daa
    nop
    ld bc, $0000
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
    ld a, a
    cp a
    ld a, a
    pop de
    ccf
    sub $0f
    sbc a
    rrca
    ld c, a
    rra
    rst $18
    rrca
    and [hl]
    rrca
    ret c

    rlca
    ld d, b
    rrca
    and b
    rrca
    or c
    rrca
    ld hl, $a01f
    rra
    ld b, b
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
    db $fd
    nop
    db $fd
    nop
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rIF]
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, a
    cp $7e
    cp $ff
    db $fc
    ld a, b
    db $fc
    ld hl, sp-$08
    db $fc
    ldh a, [$e0]
    ldh a, [$f8]
    ldh [$f0], a
    ret nz

    sub b
    ret nz

    ret nz

    add b
    ret nz

    nop
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    jr nz, @+$01

    nop
    cp $00
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    add b
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
    nop
    cp $01
    cp $01
    db $fc
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
    add b
    nop
    ret nc

    nop
    call nc, $fe00
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp $00
    ld a, [$f200]
    nop
    jp hl


    nop
    ld [c], a
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    and b
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
    add b
    nop
    ret nz

    nop
    call nz, $cd00
    nop
    adc $00
    sbc a
    nop
    ld a, $00
    ld a, d
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ret c

    nop
    ret nc

    nop
    add b
    nop
    ret nz

    nop
    add b
    ld a, a
    cp $bc
    cp $fe
    db $fc
    cp $f8
    ld a, [c]
    ld hl, sp-$04
    ldh a, [$f1]
    ldh [$c8], a
    ldh [$e0], a
    ret nz

    and b
    ret nz

    and b
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
    nop
    cp $00
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
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
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    inc bc
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rP1]
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_029_5f83

jr_029_5f83:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_029_5f93

jr_029_5f93:
    sub b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    ld a, [c]
    rst $38
    ld a, [c]
    rst $30
    ld hl, sp-$1d
    set 4, b
    call nz, $c0c0
    add b
    ld b, b
    add b
    nop
    nop
    add b
    rst $38
    ld b, b
    rst $38
    add b
    cp $00
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [$08]
    ldh [rP1], a
    ldh [rTIMA], a
    ret nz

    nop
    add b
    inc b
    add b
    nop
    nop
    nop
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
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    pop bc
    ld a, $c1
    ld a, $83
    ld a, h
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    nop
    nop
    nop
    add b
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
    ld bc, $0800
    nop
    nop
    nop
    nop
    nop
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
    cp $ff
    rst $30
    cp $e5
    cp $ea
    db $fc
    db $db
    db $fc

Jump_029_6060:
    call nc, $bdf8
    ldh a, [$a8]
    ldh a, [$f0]
    ldh [$d1], a
    ldh [$a1], a
    ret nz

    xor b
    pop bc
    ld b, d
    add c
    call nz, $8803
    rlca
    ret z

    rlca
    add b
    rrca
    db $10
    rrca
    nop
    rra
    nop
    ccf
    ld b, b
    ccf
    ld a, a
    nop
    cp $00
    ld a, [hl]
    nop
    cp h
    nop
    inc a
    nop
    ld c, b
    nop
    jr nc, jr_029_608e

jr_029_608e:
    stop
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
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    pop hl
    ld e, $c1
    ld a, $c3
    inc a
    add e
    ld a, h
    add a
    ld a, b
    rrca
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
    nop
    ld hl, $2d00
    nop
    inc a
    nop
    ld a, d
    nop
    jr c, jr_029_60cb

jr_029_60cb:
    dec sp
    nop
    jr c, jr_029_60cf

jr_029_60cf:
    add hl, sp
    nop
    ld de, $6300
    nop
    ld d, c
    nop
    adc e
    nop
    ld b, e
    nop
    adc a
    nop
    add e
    nop
    ld de, $8800
    nop
    ld [$1c00], sp
    nop
    add hl, hl
    nop
    ld c, l
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    nop
    inc b
    nop
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    cp l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    cp $fd
    cp $fc
    cp $fa
    db $fc
    db $fc
    ld hl, sp-$0c
    ld hl, sp-$18
    ldh a, [$e8]
    pop af
    pop de
    ldh [$f1], a
    ret nz

    and d
    pop bc
    ld b, h
    add c
    add $01
    ret z

    inc bc
    call nz, Call_000_1003
    rlca
    add b
    rrca
    jr nc, jr_029_613d

    jr nc, jr_029_613f

    jr nz, jr_029_6151

    nop
    ccf
    ld b, b
    ccf
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    nop

jr_029_613d:
    rst $38
    nop

jr_029_613f:
    rst $38
    db $fc
    rst $38
    ld hl, sp+$1f
    ld hl, sp+$0f
    ldh a, [rIF]
    pop af
    ld c, $e1
    ld e, $e3
    inc e
    jp $873c


jr_029_6151:
    ld a, b
    add a
    ld a, b
    rrca
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$3f], a
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
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
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
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp $00
    cp $00
    ld a, [$f800]
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ld b, b
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
    ld [$0100], sp
    nop
    ld de, $fffc
    ei
    db $fc
    ld a, [$f5fd]
    ld a, [$fcf3]
    ld h, e
    db $fc
    ld h, d
    db $fd
    add $f9
    call $8af3
    rst $30
    sbc d
    rst $20
    inc [hl]
    rst $08
    ldh a, [rIF]
    ld c, b
    rra
    or b
    rra
    db $10
    ccf
    ld bc, $033f
    ld a, a
    rlca
    ld a, a
    rrca
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
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    pop bc
    ccf
    ldh [$1f], a
    ldh a, [rIF]
    db $fc
    inc bc
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
    nop
    nop
    rra
    nop
    rra
    nop
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    add b
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop

jr_029_622f:
    ld bc, $fffe
    cp $ff
    db $fd
    cp $bf
    db $fc
    cp c
    cp $73
    db $fc
    di
    db $fc
    db $e3
    db $fc
    rst $00
    ld hl, sp-$3a
    ld sp, hl
    adc l
    di
    sbc l
    db $e3
    sbc e
    rst $20
    jr @-$17

    inc [hl]
    rst $08
    jr z, jr_029_622f

    ld l, b
    sbc a
    ret nc

    ccf
    ret nc

    ccf
    and b
    ld a, a
    ld h, b
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
    ld bc, $07fe
    ld hl, sp+$0f
    ldh a, [$3f]
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
    ccf
    ret nz

    rra
    rst $38
    rlca
    rst $38
    add e
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ld hl, sp+$07
    db $fc
    inc bc
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
    inc b
    nop
    rrca
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
    xor $f1
    sbc $e1
    rst $18
    ldh [$df], a
    ldh [$de], a
    pop hl
    cp [hl]
    pop bc
    ccf
    ret nz

    ld a, h
    add e
    ld a, h
    add e
    ld hl, sp+$07
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
    add b
    ld a, a
    nop
    rra
    nop
    rra
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
    inc bc
    db $fc
    rra
    ldh [$7f], a
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
    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp-$7f
    ld a, a
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    add b
    nop
    ret nz

    nop
    ldh a, [rP1]
    ld hl, sp+$00
    cp $00
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
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_029_6354

    inc c
    inc c
    ld a, [de]
    ld c, $1b
    inc e
    dec e
    ld e, $1f
    jr nz, jr_029_6367

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $0c
    daa
    ld c, $1b
    dec de
    jr z, jr_029_637b

    ld a, [hl+]
    dec hl

jr_029_6354:
    inc l
    dec l
    ld l, $2f
    jr nc, jr_029_638b

    ld [hl-], a
    inc sp
    inc [hl]
    dec de
    dec de
    dec de
    dec [hl]
    ld [hl], $37
    jr c, jr_029_639e

    ld a, [hl-]
    dec sp

jr_029_6367:
    inc a
    dec a
    ld a, $3f
    ld b, b
    dec de
    dec de
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

jr_029_637b:
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h

jr_029_638b:
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld d, h
    ld d, h
    ld d, h
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

jr_029_639e:
    ld l, l
    ld l, [hl]
    ld l, a
    ld d, h
    ld d, h
    ld d, h
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
    dec de
    ld a, d
    ld d, h
    ld d, h
    ld d, h
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
    ld b, $1b
    rlca
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
    jr jr_029_646c

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_029_647c

    ld [hl+], a
    di
    inc hl
    inc h
    dec h
    inc b
    inc b
    inc b
    ld b, $06
    ld b, $04
    inc b
    inc b
    inc b
    rlca
    nop

jr_029_646c:
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    ld b, $06
    ld b, $06
    inc b
    inc b
    inc b
    nop
    nop

jr_029_647c:
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    ld b, $06
    ld b, $06
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    inc b
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    rlca
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
    ld [bc], a
    ld b, $06
    ld b, $06
    dec b
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
    ld [bc], a
    inc b
    ld b, $06
    ld b, $00
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
    ld [bc], a
    inc b
    inc b
    ld b, $06
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
    ld [bc], a
    inc b
    inc b
    ld b, $06
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
    ld [bc], a
    inc b
    inc b
    ld b, $06
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
    ld [bc], a
    ld b, $06
    ld [bc], a
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    inc bc
    inc b
    ld b, $06
    ld b, $06
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
    inc bc
    inc bc
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
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc b
    inc b
    inc b
    inc b
    inc bc
    inc bc
    inc bc
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc bc
    inc bc
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
    inc bc
    inc b
    inc b
    inc bc
    inc bc
    inc bc
    inc c
    ld [$0808], sp
    ld [$0808], sp
    nop
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0c0c], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    rrca
    ld [$0008], sp
    ld [$0808], sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    adc l
    adc a
    ld c, l
    rst $08
    ld b, e
    rst $08
    inc bc
    rst $00
    rlca
    ld b, a
    dec b
    ld b, a
    ld b, a
    ld b, a
    ld [hl], e
    ld [hl], e
    ld b, b
    ld b, b
    ld a, [hl-]
    ld a, [hl-]
    ld c, $3e
    ld a, $7e
    ld c, [hl]
    ld a, [hl]
    nop
    ld a, [hl]
    ld d, b
    ld a, [hl]
    ld [hl], d
    ld a, a
    ld a, h
    ld a, a
    ld [hl], b
    ld a, a
    jr nz, jr_029_664d

    add hl, sp
    ccf
    xor a
    nop
    inc l
    ld [bc], a
    add hl, hl
    ld b, $0d
    and b
    sub $e8
    pop af
    ld hl, sp-$05
    ld hl, sp-$01
    db $fc
    ld a, a
    rst $38
    ccf
    rst $38
    rst $38
    rra
    scf
    rst $08
    dec sp
    rst $00
    ld l, c
    rst $10
    or h
    ld c, e
    ld [hl], c
    add a
    ldh [rTAC], a
    db $f4
    rrca
    and h
    ld a, a
    ld b, c
    ld a, $c0
    rra
    ld l, b
    sub l
    add l
    ld l, d
    nop
    cp $72
    di
    ei
    ei
    ld [$e8fb], a
    db $fc
    call c, $dedc
    sbc $ff
    rst $38
    ld sp, hl
    rst $38
    jp $8fff


    rst $38
    rrca
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    adc b
    rst $38
    ldh a, [rIE]
    pop hl
    rst $38
    add c
    rst $38
    ret nz

    cp $c1
    rst $38
    sbc b
    rst $18
    add h
    adc a
    nop
    add a
    ld b, h
    db $76
    pop hl
    push af
    ld bc, $03fb
    rst $38
    add c
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $00
    jr c, jr_029_664b

jr_029_664b:
    rst $38
    nop

jr_029_664d:
    inc a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0307
    rrca
    rlca
    rra
    rra
    ld a, a
    ccf
    rst $38
    ld a, a
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
    ld b, b
    ld b, b
    nop
    nop
    ret nz

    ret nz

    add b
    add b
    add b
    add c
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add c
    add b
    add c
    add b
    add e
    add b
    add c
    ld bc, $0001
    ld bc, $0100
    nop
    ld bc, $0300
    inc b
    sub a
    add b
    or e
    add c
    sub a
    add b
    sbc a
    add e
    sub a
    inc bc

jr_029_66bd:
    rst $10
    ld [bc], a
    ld e, a
    ld d, a
    add hl, bc
    cp a
    nop
    dec de
    ld b, h
    ld [$77e7], sp
    add b
    xor [hl]
    ld b, c
    xor $01
    sbc $21
    sbc $21
    ld [de], a
    push hl
    db $e3
    db $fc
    ld hl, sp-$0d
    pop af
    ld a, [$fef8]
    cp $ff
    rra
    rst $38
    rra
    rrca
    rla
    rst $28
    inc de
    xor a
    nop
    rst $38
    nop
    rst $38
    ld b, b
    sbc a
    jr nc, jr_029_66bd

    or b
    rra
    ld [hl], b
    or a
    nop
    di
    inc b
    ld h, d
    add c
    ld [bc], a
    add h
    ld [bc], a
    ld b, $c0
    ld b, a
    xor b
    ld b, $f8
    dec a
    rst $38
    xor l
    rst $28
    dec e
    db $fd
    dec e
    db $fd
    dec e
    db $fd
    ld [$59fc], sp
    rst $38
    inc [hl]
    or $86
    cp $8e
    rst $38
    ld c, $ff
    ld [hl+], a
    rst $38
    jr z, @+$01

    add hl, sp
    rst $38
    or b
    rst $38
    ld a, [hl-]
    rst $38
    jr @+$01

    add hl, de
    rst $38
    add hl, de
    rst $38
    sbc c
    rst $38
    ld [$08ff], sp
    rst $38
    nop
    rst $38
    ld bc, $40ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    add b
    db $fc
    nop
    ret nz

    nop
    nop
    nop
    nop
    ld bc, $0701
    inc bc
    rrca
    rlca
    rra
    rrca
    ccf
    rra
    ld a, a
    ld a, [hl]
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, $2167
    ld h, a
    ld d, b
    ld [hl], a
    or d
    ld a, [c]
    ldh [$e0], a
    ldh [$e8], a
    pop hl
    ld sp, hl
    ldh [$f0], a
    ldh [$f0], a
    ld [hl], c
    pop af
    pop hl
    db $fd
    and b
    ld hl, sp-$20
    ld a, [c]
    nop
    or $10
    cp $51
    ei
    ld b, c
    db $fd
    db $10
    ld sp, hl
    nop
    push af
    ld [hl], b
    ld a, [c]
    ld [hl], b
    di
    ret nz

    pop af
    add b

jr_029_678d:
    pop af
    ld de, $60f9

jr_029_6791:
    rst $38
    jr nz, jr_029_678d

    ldh [$e3], a
    ldh a, [$f1]
    ld [hl], b
    ld a, [c]
    ld [hl], d
    di
    jr nc, jr_029_6791

    ld [hl], b
    rst $30
    ld h, b
    db $eb
    pop hl
    db $e3
    ldh [$e3], a
    ret nz

    rst $00
    ret c

    db $db
    sbc h
    sbc a
    cp [hl]
    cp a
    db $fc
    db $fd
    add h
    ld sp, hl
    rst $00
    ld hl, sp-$1d
    db $fc
    ei
    rst $38
    ld a, l
    rst $38
    ld a, a
    rst $38
    rst $30
    rst $38
    ld [hl], c
    rst $38
    ld [hl], b
    ei
    ldh a, [$7b]
    ld hl, sp+$77
    ld a, b
    di
    ld [hl], h
    ld a, e
    ld [hl], d
    ld sp, hl
    db $76
    pop af
    or $f9
    ld [hl], h
    di
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$fb]
    ld hl, sp-$0d
    add sp, -$0d
    ld [c], a
    pop af
    ld h, d
    ldh a, [$60]
    ld a, [c]
    ld h, b
    or $61
    cp $6a
    push af
    ldh [rIE], a
    ld h, b
    rst $38
    pop hl
    cp $67
    ld hl, sp-$19
    ld hl, sp-$1b
    ld a, [$f8e7]
    rst $30
    ld hl, sp-$1d
    db $fc
    rst $30
    ld hl, sp-$09
    ld hl, sp-$11
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [$f0], a
    ldh [$f1], a
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    rrca
    rlca
    rra
    rrca
    ccf
    ld e, $7f
    inc a
    ld [bc], a
    cp a
    add h
    rst $38
    nop
    rst $38
    or b
    rst $38
    ld l, b
    rst $38
    db $e4
    rst $38
    and [hl]
    or $9e
    cp $05
    ld a, [$fe01]
    inc c
    ld a, [c]
    add hl, bc
    or $01
    cp $01
    db $fc
    nop
    rst $38
    rlca
    rst $38
    daa
    rst $18
    rlca
    rst $18
    and a
    ld e, a
    ld h, a
    rra
    add a
    ld a, a
    and a
    rra
    daa
    sbc a
    rst $00
    rra
    rst $30
    rrca
    rst $38
    rlca
    sbc $0f
    xor $1f
    or [hl]
    rrca
    ld [hl], a
    adc a
    ld a, $87
    cp e
    rlca
    rst $30
    rrca
    ld b, [hl]
    ccf
    rst $08
    ccf
    sbc a
    ccf
    sbc [hl]
    ld a, a
    ld e, $ff
    ld b, $ff
    xor a
    ccf
    sbc [hl]
    ld [hl], a
    ld a, [hl]
    rst $30
    cp $ef
    cp $e7
    cp $f7
    cp $9e
    cp [hl]
    add $fe
    rst $30
    rst $30
    cp $7e
    rst $38
    ld e, a
    ld a, $6e
    sbc a
    daa
    rst $18
    daa
    adc a
    ld h, $9f
    ld l, [hl]
    add a
    ld c, $c7
    ld d, $8f
    ld b, $ef
    add [hl]
    ccf
    rlca
    ld c, $06
    ld b, $46
    rrca
    ld d, $2e
    ld b, $0f
    ld b, $07
    ld b, $07
    inc c
    add [hl]
    inc b
    ld b, $34
    ld b, $54
    ld h, $f6
    rrca
    db $fd
    ld c, $f4
    rrca
    db $f4
    rrca
    db $f4
    ld c, $fc
    ld c, $fc
    ld c, $f4
    ld c, $f4
    inc c
    rst $38
    inc c
    db $fd
    nop
    ld hl, sp+$00
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
    ld bc, $0300
    ld bc, $0707
    rra
    rrca
    ccf
    ld e, $7f
    inc a
    rst $38
    ld a, b
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc bc
    ld a, a
    rlca
    rst $20
    rlca
    rst $30
    inc bc
    rst $30
    inc bc
    ei
    inc bc
    or e
    inc bc
    rst $30
    ret nz

    rst $38
    rra
    ldh [rNR33], a
    ld [c], a
    rra
    ldh [$3f], a
    ret nz

    inc hl
    call c, Call_000_0df2
    rra
    ldh [$9f], a
    ldh [$ef], a
    sub b
    ld b, e
    cp h
    inc hl
    call c, $f44b
    ret


    or [hl]
    xor b
    ld d, a
    ld c, b
    rst $30
    rst $18
    ldh [$8f], a
    ldh a, [$df]
    ldh [$df], a
    ldh [rIE], a
    ldh [$ea], a
    ldh a, [$fd]

jr_029_692b:
    ldh a, [$f3]
    db $fc
    jp c, $9afc

    db $fc
    ld a, h
    adc h
    inc c
    rst $20
    ld d, $e7
    ld [hl], e
    add a
    ld [hl], e
    add e
    inc sp
    pop bc
    adc [hl]
    ld bc, $639c
    ld bc, $817f
    ld a, a
    nop
    ccf
    ld b, c
    cp [hl]
    jr nz, jr_029_692b

    adc b
    ld [hl], a
    ld [$2677], sp
    ld bc, $007d
    rst $30
    nop
    ld [hl+], a
    db $dd
    or e
    db $dd
    pop bc
    rst $38
    push af
    ei
    ld a, [hl-]
    db $fd
    dec e
    rst $38
    rra
    rst $38
    add hl, de
    ld a, a
    ld e, c
    cp a
    ld de, $101f
    rra
    ld de, $015d
    sbc a
    sub b
    ccf
    ld [hl], d
    sbc c
    ld [de], a
    dec a
    add d
    dec a
    ld d, d
    dec a
    and b
    ld e, a
    ld d, h
    cp e
    add b
    ld a, a
    db $10
    ld sp, hl
    add h
    ld e, c
    add b
    rra
    ld b, b
    add hl, de
    db $10
    add hl, de
    db $10
    jr jr_029_698d

jr_029_698d:
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    ld e, a
    nop
    rrca
    nop
    rla
    nop
    rlca
    ld bc, $034f
    sbc a
    ld c, $1f
    inc e
    ld a, a
    jr c, @+$01

    ld [hl], b
    rst $38
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
    sbc h
    rst $38
    add h
    rst $38
    add d
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
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf

jr_029_69e8:
    ldh [$1f], a
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ld b, b
    cp a
    ldh [$1f], a
    ldh [$1f], a
    ld [hl], b
    adc a
    ldh [$1f], a
    or b
    ld c, a
    ld hl, sp+$04
    ldh a, [rP1]
    ldh [$0a], a
    ld h, b
    sbc c
    jr nz, jr_029_69e8

    nop
    cp $80
    ld a, a
    add b
    ld l, c
    ret nz

    inc d
    sbc [hl]
    ld h, c
    cpl
    add b
    cpl
    ret nz

    rst $28
    add b
    rst $38
    add b
    rst $38
    add b
    cp e
    call nz, $c2e1
    rst $10
    ldh [$e3], a
    ld hl, sp-$59
    ld hl, sp-$47
    cp $9b
    db $fc
    cp b
    sbc $98
    cp $dc
    cp [hl]
    sbc $bf
    or d
    rst $18
    or $9b
    sub c
    rst $38
    pop de
    cp a
    or b
    rst $18
    ret nc

    cp a
    jp nc, $92bd

    db $fd
    jp nc, $b0fd

    rst $38
    ldh a, [$bf]
    and h
    rst $38
    cp b
    rst $28
    xor e
    db $ed
    and d
    xor l
    or b
    rst $28
    and d
    db $fd
    and b
    rst $38
    and b
    rst $38
    and l
    cp $a4
    rst $38
    and h
    cp a
    or b
    rst $38
    or b
    ld hl, sp-$80
    and b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    inc b
    rst $38
    jr @+$01

    jr nc, @+$01

    ld h, b
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
    ld a, [hl]
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    pop hl
    jr @+$01

    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    ld [$04ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld h, c
    nop
    jp $9500


    nop
    ld [hl], c
    nop
    ld l, a
    nop
    rst $28
    nop
    ld e, a
    nop
    ld e, h
    nop
    sub [hl]
    sub $29
    rst $38
    nop
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $18
    nop
    push bc
    nop
    push af
    nop
    db $fd
    nop
    db $fd
    nop
    db $fc
    inc a
    rst $38
    ret z

    scf
    ret nc

    cpl
    ld b, h
    dec sp
    ld l, l
    ld [de], a
    db $f4
    inc bc
    dec hl
    call nz, $ccb3
    adc a
    ldh a, [$8f]
    ldh a, [$83]
    db $fc
    or d
    db $ed
    and l
    ld a, [$ffa0]
    rst $20
    cp b
    and a
    ld hl, sp-$51
    ldh a, [$ae]
    pop af
    xor a
    ldh a, [$ef]
    rst $38
    xor a
    ldh a, [$bf]
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [rIE], a
    rst $38
    rst $38
    cp h
    rst $38
    inc a
    rst $38
    ld a, $ff
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
    inc a
    rst $38
    inc a
    rst $38
    ccf
    rst $38
    jr c, @+$01

    ld a, b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    adc $ff
    pop bc
    rst $38
    ldh [rIE], a
    ret c

    rst $38
    add h
    rst $38
    add e
    rst $38
    rst $38
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
    rst $38
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
    ld bc, $02ff
    rst $38
    inc c
    rst $38
    jr nc, @+$01

    ret nz

    rst $38
    cp $ff
    ld bc, $00ff
    rst $38
    ld bc, $06ff
    rst $38
    jr @+$01

    ld h, b
    rst $38
    add b
    ld bc, $00ff
    rst $38
    ld bc, $03ff
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    xor e
    nop
    ld hl, $8c00
    nop
    daa
    nop
    ld e, c
    inc b
    xor d
    sbc $21
    rst $38
    nop
    nop
    rst $30
    nop
    rst $18
    nop
    db $d3
    nop
    rlc b
    jp nz, $9d00

    db $10
    cp a
    jr nc, jr_029_6c6e

    db $76
    rst $38
    db $fc
    rst $38
    call nc, $c0ff
    cp $c0
    ld hl, sp+$00
    cp $02
    rst $10
    add a
    rst $18

jr_029_6c00:
    ld a, [hl]
    add c
    ld a, e
    add b
    cp a
    ld h, b
    xor $31
    rst $38
    rst $38
    push hl
    jr c, jr_029_6c00

    inc c
    ld [hl], c
    adc [hl]
    dec sp
    call nz, $e32c
    rst $38
    rst $38
    ld sp, hl
    ld h, $e2
    dec a
    ld [hl], c
    ld l, $a6
    ld a, c
    cp e
    ld h, b
    rst $38
    ret nz

    ret nz

    nop
    db $fc
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
    ld bc, $1eff
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    rlca
    rst $38
    nop
    rst $38
    rlca
    rst $38
    ld hl, sp-$01
    ret nz

    rst $38
    ccf
    rst $38
    ld [$08ff], sp
    rst $38
    rrca
    rst $38
    jr c, @+$01

    ret nz

    rst $38
    ld hl, sp-$01
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
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
    ldh a, [rIE]
    nop

jr_029_6c6e:
    rst $38
    nop
    rst $38
    rlca
    rst $38
    jr @+$01

    ld h, b
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
    cp $ff
    ld h, c
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
    add b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ld d, $ff
    add hl, de
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    dec hl
    inc bc
    ld e, h
    ld c, a
    or b
    nop
    or b
    nop
    ld h, b
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld a, e
    ld bc, $01fb
    rst $18
    ld bc, $000f
    dec a
    nop
    ld l, c
    nop
    ld a, a
    inc bc
    rst $10

jr_029_6cc8:
    inc bc
    cp a
    rlca
    rst $18
    rst $18
    rst $38
    ld h, c
    rst $38
    ld e, b
    and a
    sbc b
    ld h, a
    ld [hl], l
    xor d
    pop de
    ld c, $ff
    rst $38
    ld l, b
    and a
    ld [hl], h
    xor e
    inc h
    ei
    ld l, b
    or a
    db $ed
    ld [hl-], a
    rst $38
    rst $38
    db $fd
    jr nz, jr_029_6cc8

    jr nz, jr_029_6d19

    pop af
    dec h
    ld a, [$f12e]
    rst $38
    ld b, a
    ld b, a
    nop
    ccf
    nop
    rst $38
    nop
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
    pop bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jp Jump_029_7dff


    rst $38
    add [hl]
    rst $38
    jr @+$01

    ld h, b
    rst $38
    add b
    rst $38

jr_029_6d19:
    nop
    rst $38
    ld [hl], b
    rst $38
    adc a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $e1ff
    rst $38
    rra
    rst $38
    add hl, bc
    rst $38
    db $10
    rst $38
    ld h, b
    rst $38
    db $fc
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
    nop
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    ld bc, $feff
    rst $38
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
    cp $00
    db $fc
    nop
    sbc a
    nop
    ld b, c
    nop
    xor h
    nop
    inc de
    nop
    jr z, jr_029_6d61

jr_029_6d61:
    cp e
    ld [bc], a
    push bc
    rlca
    add sp, $0f
    ldh [$1f], a
    ldh [$2c], a
    ret nz

    rst $38
    nop
    rst $38
    nop
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    inc c
    ld a, a
    rrca
    rst $18
    dec b
    rst $18
    jp nz, $03ef

    rst $38
    nop
    rst $38
    nop
    rst $18
    add b
    rst $38
    add b
    rst $10
    add b
    rst $18
    ret nz

    rst $30
    add b
    cp $00
    sbc $55
    add b
    rst $38
    nop
    rst $28
    ld b, c
    ei
    ld b, c
    rst $38
    rst $38
    db $d3
    ld l, l
    push de
    ld l, e
    ld sp, hl
    ld b, a
    rst $18
    ld h, c
    ld e, a
    jr nz, @+$01

    rst $38
    rst $00
    ld a, b
    rst $00
    ld a, b
    ld c, e
    push af
    ld [hl], c
    rst $08
    jp hl


    ld d, a
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    rrca
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
    add b
    rst $38
    ld a, b
    rst $38
    ld a, a
    rst $38
    ld b, b
    rst $38
    ldh a, [rIE]
    adc a
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02ff
    rst $38
    inc c
    rst $38
    jr nc, @+$01

    ldh a, [rIE]
    rrca
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    jr nz, @+$01

    jr @+$01

    ld b, $ff
    inc bc
    rst $38
    add h
    rst $38
    ld a, b
    rst $38
    jr nz, @+$01

    ret nz

    rst $38
    ld h, b
    rst $38
    db $10
    rst $38
    ld [$06ff], sp
    rst $38
    ld bc, $00ff
    rst $38
    inc bc
    rst $38
    db $fc
    rst $38
    ld [$06ff], sp
    rst $38
    ld bc, $00ff
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
    ld bc, $01ff
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
    rlca
    rst $38
    rlca
    ei
    rlca
    ld sp, hl
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fc
    rlca
    db $fd
    rlca
    rst $38
    rlca
    cp $07
    rst $38
    rlca
    rst $38
    rlca
    rst $08
    rlca
    rra
    rlca
    daa
    rlca
    cp a
    rlca
    rrca
    rlca
    sbc a
    rra
    rst $20
    rra
    db $e4
    rst $38
    dec b
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $28
    rlca
    rst $20
    rlca
    rst $38
    rlca
    ld c, a
    rlca
    rst $38
    rlca
    cp a
    rlca
    rst $08
    rlca
    ld a, a
    add a
    cpl
    rst $00
    cp a
    ld b, a
    rst $18
    daa
    rst $08
    dec [hl]
    add a
    ld a, h
    rst $00
    ld a, $d7
    dec l
    rst $20
    rra
    rst $38
    inc b
    rst $30
    ld b, $7f
    ld b, $ff
    ld b, $ff
    dec b
    rst $38
    dec b
    rst $38
    db $fd
    cp a
    inc b
    rst $30
    inc b
    ld h, a
    dec b
    sbc a
    rlca
    rst $38
    rlca
    rst $38
    db $fd
    rst $38
    inc b
    rst $30
    ld [bc], a
    ld d, a
    and l
    sub a
    ld h, l
    ld c, a
    or c
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fc
    cp $fc
    cp $fc
    cp $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    cp $ff
    inc bc
    rst $38
    ld a, h
    rst $38
    add b
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld b, c
    rst $38
    cp [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rrca
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
    add c
    rst $38
    ld a, [hl]
    rst $38
    inc b
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
    cp $ff
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
    ldh a, [rIE]
    adc a
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
    jr @+$01

    ld b, $e4
    db $e4
    ret nc

    ret nc

    ret nc

    jp nc, $a3a0

    add d
    add e
    add [hl]
    add [hl]
    and [hl]
    or a
    adc h
    sbc l
    ret z

    call c, $c0d6
    ret z

    ret z

    cp b
    cp b
    db $10
    ret nc

    ld [hl], h
    ld [hl], b
    ld a, [c]
    ld a, [c]
    db $db
    ei
    db $d3
    db $d3
    db $d3
    db $db
    jp Jump_029_73c3


    ld h, e
    ld [$faea], a
    ld a, [$c5c5]
    rst $30
    rst $30
    ld b, c
    rst $38
    dec b
    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc c
    rst $38
    dec c
    rst $38
    dec bc
    rst $38
    ld c, $ff
    ld [hl], d
    ld [hl], d
    ld h, [hl]
    ld h, [hl]
    and $e6
    ret c

    ret c

    jp nc, $f1d2

    pop af
    ld sp, hl
    db $fd
    cp d
    cp d
    xor e
    ld d, h
    inc l
    db $d3
    ret z

    scf
    adc b
    ld [hl], a
    inc b
    ei
    inc bc
    db $fc
    inc de
    db $fc
    jr nc, @+$01

    db $f4
    ei
    ld [hl], h
    ei
    ld [hl], e
    db $fc
    ld [hl], d
    db $fd
    cp c
    ld a, [hl]
    cp l
    ld a, d
    jr nc, @+$01

    inc sp
    db $fc
    cp l
    ld [hl], d
    cp l
    ld [hl], d
    db $76
    ld sp, hl
    ld [hl], l
    ld a, [$fe71]
    or c
    ld a, [hl]
    ld [hl-], a
    db $fd
    or b
    ld a, a
    or h
    ld a, e
    ld [hl], c
    cp $f2
    ld a, l
    ld [hl], d
    db $fd
    ldh a, [$7f]
    ld hl, sp+$77
    ld [hl], b
    rst $38
    ld [hl], $f9
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    ld c, $ff
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $feff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    jr nc, @+$01

    ld [$07ff], sp
    rst $38
    ld bc, $00ff
    rst $38
    ret nz

    rst $38
    jr nc, @+$01

    ld [$07ff], sp
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    add hl, de
    rst $38
    ld b, $ff
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
    rst $38
    nop
    rst $38
    ldh a, [rIE]
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
    ld hl, $eae0
    inc a
    add [hl]
    inc h
    inc a
    ld b, b
    cp [hl]
    jp nz, Jump_000_315c

    ld c, h
    nop
    ld b, l
    jr nz, @+$5e

    sbc b
    adc d
    ld c, d
    sub c
    ld b, b
    db $10
    ld [hl], b
    dec h
    inc b
    and a
    ld b, h
    dec b
    ld b, h
    ld d, $16
    sub b
    sub c
    jp nc, $8f90

    sbc b
    jp nc, $fac0

    ret nz

    db $dd
    pop bc
    ret c

    call nz, Call_000_3a2a
    ld [hl], c
    ld l, [hl]
    ld [bc], a
    add hl, bc
    jp z, $c1dd

    sbc $d3
    ret c

    ld h, b
    ld h, h
    sbc l
    sub e
    push bc
    push bc
    ld b, h
    ld c, h
    add b
    add c
    ld d, h
    ld b, h
    ld h, b
    ld b, b
    ld b, e
    ld b, b
    ld [c], a
    ldh [$d2], a
    ret c

    pop hl
    pop hl
    nop
    rst $38
    rrca
    cp $5b
    db $fd
    ld a, d
    rst $38
    ld a, [bc]
    rst $38
    cp a
    rst $38
    jr c, @+$01

    ld d, $ef
    inc c
    rst $38
    rra
    rst $38
    dec b
    rst $38
    inc h
    rst $38
    rrca
    rst $38
    rrca
    ei
    ld c, $fb
    ld b, l
    rst $38
    ld a, [hl-]
    ld a, [hl-]
    adc e
    adc e
    adc c
    ret


    db $dd
    db $dd
    ld a, e
    ld a, c
    rst $10
    push de
    db $fc
    db $fc
    cp $fc
    inc l
    ld l, $fd
    db $fd
    rst $20
    rst $30
    db $ed
    db $ed
    or h
    inc [hl]
    cp $fe
    cp d
    cp d
    scf
    scf
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    nop
    rst $38
    nop
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
    rlca
    rst $38
    nop
    rst $38
    ld bc, $feff
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    ld a, b
    rst $38
    add h
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    rrca
    rst $38
    ret nz

    rst $38
    jr nc, @+$01

    ld [$06ff], sp
    rst $38
    rst $38
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

jr_029_70fe:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    inc b
    rst $38
    jr @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    add b
    rst $38
    ld [hl], b
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
    ld h, c
    ld h, c
    add h
    inc b
    adc b
    nop
    sub $52
    ld h, [hl]
    ret nz

    inc b
    inc b
    inc d
    add h
    add $84
    ld e, a
    dec de
    inc bc
    db $10
    ld d, d
    adc b
    and $00
    ld b, d
    add c
    call c, $0103
    ld [bc], a
    ld b, c
    add [hl]
    ret nc

    or a
    dec e
    ret c

    add b
    sub e
    dec c
    ret nz

    inc c
    pop hl
    ld c, b
    and b
    nop
    ld h, d
    inc b
    add c
    dec h
    di
    ldh [rNR42], a
    ret nz

    ld sp, $1a15
    add b
    db $10
    ld b, b
    and d
    ld [bc], a
    ld d, d
    dec h
    db $f4
    dec c
    ld b, b
    or e
    ld b, d
    add e
    ld a, [hl+]
    ld c, a
    ld l, $1e
    ld c, $23
    add e
    ld [$8d00], sp
    ld bc, $30b0
    or h
    jr nc, jr_029_70fe

    add hl, bc
    xor a
    and a
    ld l, a
    ld b, a
    db $10
    ld [$8b8b], sp
    add e
    sub e
    add c
    add c
    add sp, -$18
    ldh [$a0], a
    dec d
    dec d
    ld h, $06
    nop
    nop
    add d
    jp nz, Jump_000_20a0

    inc hl
    inc bc
    add hl, hl
    add hl, hl
    cp c
    cp c
    ld b, a
    ld b, a
    rst $30
    rst $30
    rst $30
    rst $30
    or d
    or d
    add e
    sub e
    rst $10
    rst $00
    sbc [hl]
    cp [hl]
    ld a, $1e
    sbc b
    sub b
    db $dd
    db $dd
    ld b, l
    ld b, l
    daa
    daa
    sub e
    sub e
    pop de
    rst $38
    inc bc
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
    inc bc
    rst $38
    ld a, h
    rst $38
    add e
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    ldh a, [rIE]
    rrca
    rst $38
    ld bc, $07ff
    rst $38
    ld a, h
    rst $38
    add d
    rst $38
    ld bc, $00ff
    rst $38
    ldh [rIE], a
    rra
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld a, h
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
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
    ld sp, hl
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sbc e
    or $fa
    rst $18
    call c, $ffa7
    cp a
    or $cf
    db $fd
    rst $38
    ld a, a
    pop de
    sbc a
    di
    ld sp, hl
    ld b, c
    ld d, b
    ld h, b
    and a
    ld [de], a

jr_029_7236:
    rst $00
    jr z, jr_029_7236

    nop
    adc e
    ld h, b
    call z, $8e30
    ld b, $99
    ld h, c
    dec bc
    cp d
    rla
    call nz, Call_000_20b3
    and l
    ld h, b
    add hl, bc
    ld b, c
    and b
    nop
    sbc c
    db $10
    add l
    ld b, b
    rlca
    ld b, $2d
    inc c
    db $e3
    ld [bc], a
    add a
    rlca
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld h, b
    ld h, b
    ld hl, $a020
    add b
    inc sp
    inc sp
    add a
    add a
    ld hl, $7703
    ld [hl], a
    ret c

    ret z

    add c
    add c
    ld a, a
    ld hl, sp-$41
    cp $f1
    rst $18
    ldh [$bf], a
    ld hl, sp-$21
    db $fd
    cp d
    ccf
    ld a, [c]
    rst $38
    ld [$fa5f], a
    sbc b
    rst $38
    ld d, [hl]
    rst $38
    add a
    rst $38
    pop af
    ld e, $f7
    ld a, [hl]
    db $e3
    cp a
    ld l, l
    cp $b3
    rst $38
    ld e, l

jr_029_7293:
    rst $38
    rst $30
    rst $38
    ld d, h
    rst $38
    ld bc, $07ff
    rst $38
    ld [bc], a
    rst $38
    ret nc

    rst $38
    adc d
    adc d
    sub l
    dec d
    add d
    add d
    jp nc, $aed2

    xor [hl]
    rst $28
    rst $38
    and l
    and l
    push hl
    db $e4
    ld h, c
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
    ld h, b
    sbc a
    jr nc, jr_029_7293

    and b
    rst $38
    pop hl
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
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    ret nz

    rst $38
    ld a, $ff
    ld bc, $0fff
    rst $38
    jr nc, @+$01

    ret nz

    rst $38
    nop
    rst $38
    ret nz

    rst $38
    jr nc, @+$01

    inc c
    rst $38
    inc bc
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    rst $38
    rst $38
    ldh a, [rIE]
    inc c
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $3fff
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
    rra
    rst $38
    ldh [rIE], a
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, b
    cp b
    and h
    inc c
    ld [bc], a
    adc b
    add h
    call nz, Call_029_4040
    nop
    dec c
    ld bc, $001c
    ld b, d
    ld [bc], a
    ccf
    ld b, $e4
    ld b, b
    add h
    nop
    sbc d
    ld [bc], a
    jr c, jr_029_733a

jr_029_733a:
    ld [hl], c
    ld de, $2242
    call $d78c
    cp a
    ld a, [$beff]
    rst $38
    db $d3
    cp l
    adc $fb
    db $db
    push af
    rst $38
    sbc a
    xor c
    ld a, a
    rst $38
    cp l
    ld a, a
    sub a
    cp a
    ld l, e
    rst $10
    rst $38
    rra
    rst $38
    ld e, a
    rst $28
    di
    rst $38
    db $db
    rst $38
    rst $38
    ld c, a
    rst $38
    adc a
    rst $30
    rst $38
    push hl
    cp a
    db $dd
    rst $38
    cp e
    rst $38
    rst $10
    ld a, [$fb5e]
    cp $ff
    db $fd
    rst $38
    ld a, a
    db $dd
    cp [hl]
    db $fd
    cp a
    rst $38
    cp $7f
    rst $38
    ccf
    rst $10
    cpl
    rst $18
    rst $28
    cp $d1
    rst $38
    rst $38
    rst $08
    rst $38
    ret z

    ccf
    sbc $ff
    cp [hl]
    rst $38
    cp h
    rst $38
    or $ff
    ld [$f2ff], sp
    rst $38
    or a
    rst $38
    ld sp, hl
    rst $38
    set 7, a
    rst $30
    rst $38
    rrca
    rst $38
    ld h, a
    ld h, c
    cp a
    cp a
    ld b, b
    nop
    dec b
    dec b
    rlca
    rlca
    ld a, [de]
    inc bc
    inc b
    dec b
    ld h, h
    ld h, a
    rrca
    ldh a, [$1f]
    ldh [rIE], a
    nop
    cp $00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    cp a
    ld b, b
    rst $38

Jump_029_73c3:
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    ret nz

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
    ccf
    rst $38
    rlca
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    inc a
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
    nop
    rst $38
    ret nz

    rst $38
    jr nc, @+$01

    inc c
    rst $38
    add d
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    sbc b
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
    ld bc, $7eff
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
    cp [hl]
    rst $38
    rst $38
    db $76
    cp l
    ld a, a
    rst $28
    cp a
    rst $38
    rst $38
    db $fd
    rst $28
    and a
    ld a, a
    ld a, a
    db $fd
    ei
    rst $38
    xor a
    rst $38
    xor $ff
    cp a
    rst $38
    add hl, hl
    rst $38
    cpl
    rst $38
    adc $7d
    rst $38
    db $fd
    ld d, c
    ld b, c
    ld a, [c]
    and d
    ld h, c
    ld bc, $43c3
    ld l, c
    ld l, b
    ld c, a
    call z, Call_000_24ef
    rlc c
    cp d
    rst $00
    ccf
    db $ed
    ei
    rst $38
    cp e
    rst $30
    scf
    rst $28
    ld a, d
    rst $38
    db $fc
    cp a
    db $fc
    rst $38
    inc sp
    inc hl
    inc d
    inc b
    ldh a, [$f8]
    ld hl, $0121
    ld bc, $5010
    ld hl, $0021
    db $10
    inc a
    rst $38
    cp $fb
    rst $38
    rst $38
    db $fc
    rst $38
    ret nc

    rst $38
    ld [c], a
    ld a, a
    cp $ef
    ei
    rst $38
    pop de
    rst $38
    xor [hl]
    rst $18
    cp l
    rst $30
    sub h
    rst $38
    daa
    rst $38
    ccf
    rst $38
    rst $38
    rst $28
    rst $20
    ei
    ld b, a
    rst $38
    dec de
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    add b
    rst $38
    add b
    rst $38
    pop bc
    ld a, a
    ldh [$9f], a
    sub d
    jp nc, Jump_029_6060

    db $76
    ld h, d
    ld e, b
    ld b, b
    ld d, d
    ld b, d
    ld c, $7e
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    ccf
    nop
    nop
    nop
    ld b, b
    nop
    ldh [rP1], a
    add sp, $00
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
    add b
    rst $38
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
    sbc a
    rst $38
    rlca
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld e, $ff
    ld de, $08ff
    rst $38
    ld [$04ff], sp
    rst $38
    cp $ff
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    jr c, @+$01

    ld b, $ff
    rlca
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
    rst $38
    nop
    ld a, [$b500]
    nop
    call nc, $6000
    ld [hl-], a
    ld b, c
    nop
    adc a
    add d
    xor a
    jp $d0d0


jr_029_7530:
    ld sp, hl
    ld hl, sp-$49
    sbc e
    ld d, b
    db $10
    ld de, $2a11
    ld a, [hl+]
    rrca
    ld c, $2f
    inc c
    ld a, [hl+]
    ld [$edb7], sp
    pop bc
    cp a
    ld b, a
    db $fd
    rst $20
    rst $38
    rst $28
    rst $38
    db $fc
    rst $38
    ld b, l
    rst $38
    db $ec
    rst $38
    ld [$4328], sp
    inc bc
    sub d
    jr nc, @-$30

    ld a, [bc]
    jr nc, jr_029_758a

    cp [hl]
    or b
    pop hl
    ldh [$c6], a
    ret nz

    ld [c], a
    ldh [$91], a
    sub c
    ld l, h
    ld l, h
    and [hl]
    and [hl]
    or b
    and b
    ld h, $30
    db $76
    ld h, $3c
    jr c, jr_029_7530

    cp $7f
    ld hl, sp-$21
    rst $30
    rra
    ld a, [$c2bd]
    ei
    rst $20
    rst $38
    sbc a
    rst $38
    ld a, h
    ccf
    cp $89
    rst $38
    add a
    rst $38
    add hl, de
    rst $38
    ld e, $ef

jr_029_758a:
    ld a, [c]
    rst $38
    di
    rst $18
    ld a, [hl]
    rst $38
    inc bc
    db $fd
    ld e, d
    rst $38
    ld h, d
    rst $38
    ld [hl], c
    rst $38
    ld a, [hl]
    rst $10
    ld bc, $bfff
    rst $28
    dec sp
    or $3d
    ld a, l
    rlca
    rlca
    call nz, $9cc4
    sbc l
    and h
    add h
    adc a
    adc a
    jr jr_029_75c6

    sbc l
    sbc l
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $01
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop

jr_029_75c6:
    db $f4
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
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
    ldh a, [rIE]

jr_029_75f7:
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $06ff
    rst $38
    jr @+$01

    ld h, b
    rst $38
    add b
    ld l, a
    jr nz, @+$01

    ld b, b
    ld hl, sp+$02
    di
    sub h
    and e
    add b
    rst $10
    ret nc

    ccf
    jr nz, jr_029_75f7

    ld c, h
    db $d3
    ret nz

    rlca
    nop
    rlca

jr_029_7625:
    nop
    rra
    jr nz, jr_029_7625

    nop
    di
    inc bc
    push bc
    inc h
    rra
    jr @-$07

    ldh a, [$bf]
    add b
    ccf
    nop
    db $76
    jr jr_029_769b

    ld [bc], a
    ld e, c
    jr jr_029_765c

    jr @-$39

    ldh a, [$7d]
    nop
    ld [hl], l
    ret nz

    ld [hl], b
    ld b, $86
    add [hl]
    sbc l
    db $fc
    inc sp
    jr nc, @-$0f

    pop hl
    ld [hl], b
    ld h, b
    rst $10
    rst $08
    dec a
    inc e
    daa
    inc b
    call Call_029_5de0
    ld b, b
    rst $08
    pop bc

jr_029_765c:
    ld h, a
    ld [hl], a
    rst $18
    ld e, h
    inc bc
    nop
    ld c, a
    ld b, b
    rst $18
    ld [$a8f0], sp
    add $56
    inc de
    ld [de], a
    dec e
    db $10
    rst $00
    nop
    ld a, a
    ld [hl], b
    ld h, l
    ld h, b
    jr nz, jr_029_7696

    rst $38
    ld a, a
    ld h, l
    ld h, h
    ld b, a
    ld d, b
    rst $28
    ldh [$a9], a
    ldh a, [rSCY]
    ld c, $cb
    ret z

    inc de
    dec d
    inc bc
    ld [$c0cf], sp
    sbc c
    nop
    add b
    inc bc
    rst $18
    rrca
    ld e, $0e
    ld bc, $2b08
    inc h

jr_029_7696:
    ccf
    ld [bc], a
    jr z, jr_029_76bc

    ld b, a

jr_029_769b:
    rlca
    rla
    rlca
    dec d
    inc c
    nop
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
    nop
    nop
    nop
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
    ld hl, sp+$00

jr_029_76bc:
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
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rla
    rst $38
    jr nc, @+$01

    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_029_76ed:
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
    ldh [rIE], a
    db $10
    rst $38
    ld [$05ff], sp
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
    nop
    adc l
    ld d, d
    db $dd
    nop
    add hl, bc
    ld h, b
    jp c, $fd26

    ld bc, $00f8
    rst $10
    ld [hl+], a
    rlca
    add h
    adc $00
    rst $38
    dec b
    ld b, [hl]
    jr c, jr_029_76ed

    nop
    nop
    ld d, b
    dec d
    dec [hl]
    rst $28
    nop
    rst $38
    nop
    or [hl]
    ld c, b

jr_029_7732:
    and h
    ld d, d
    push hl
    nop
    nop
    ld b, $88
    jr z, jr_029_7732

    nop
    rst $28
    db $10
    ld [de], a
    and h
    ld h, d
    inc d
    jp hl


    ld [de], a
    inc d
    inc d
    push bc
    inc bc
    rst $28
    ld de, $7107
    add l
    ld h, e
    ld [bc], a
    add b
    ld [hl-], a
    inc sp
    call nz, $a31b
    ld d, h
    add h
    ld l, c
    inc hl
    pop de
    nop
    ld c, l
    ld d, c
    sub e
    rst $38
    nop
    db $fd
    ld [$5a3d], sp
    ld c, a
    cp h
    ccf
    ld a, a
    rst $38
    dec c
    rst $38
    ld bc, $00df
    db $d3
    dec l
    ld l, h
    ld de, $58a1
    add hl, bc
    add hl, bc
    ld c, l
    dec c
    and $10
    db $e3
    db $10
    ld [hl-], a
    ld b, h
    adc c
    ld h, h
    ld h, e
    db $10
    rst $30
    ld [$00f7], sp
    ret nz

    inc [hl]
    add c
    ld [hl], $40
    or d
    nop
    ld c, b
    db $e3
    di
    ret nz

    jr z, @-$07

    nop
    or b
    ld b, $90
    ld h, c
    ld c, b
    or d
    or c
    add c
    db $fc
    nop
    ei
    nop
    rst $38
    nop
    db $ec
    inc de
    xor c
    ld d, [hl]
    jp hl


    ld d, $16
    jp hl


    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    nop
    ld a, b
    nop
    ld a, d
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rrca
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    jr nc, @+$01

    ld [$04ff], sp
    rst $38
    ld [bc], a
    rst $38
    ld bc, $0100
    ld [bc], a
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
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_029_7833

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_029_7843

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_029_7853

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_029_7863

    ld [hl-], a

jr_029_7833:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_029_7873

    ld a, [hl-]
    dec sp

Jump_029_783c:
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_029_7843:
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
    ld c, l
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b

jr_029_7853:
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

jr_029_7863:
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
    ld l, [hl]
    ld l, a
    ld [hl], b

jr_029_7873:
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
    jr jr_029_7935

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_029_7945

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_029_7955

    ld a, [hl+]
    or a
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_029_7966

jr_029_7935:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_029_7976

    ld a, [hl-]
    dec sp
    inc a
    nop
    ld [bc], a
    ld [bc], a
    nop
    inc b

jr_029_7945:
    ld b, $04
    nop
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld [bc], a
    ld b, $06
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a

jr_029_7955:
    ld [bc], a
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $04
    rlca
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    inc b

jr_029_7966:
    inc b
    ld b, $06
    ld b, $06
    ld b, $06
    rlca
    rlca
    rlca
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06

jr_029_7976:
    ld b, $06
    ld b, $06
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc b
    inc b
    inc b
    ld b, $06
    ld [bc], a
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    ld b, $06
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    ld b, $06
    ld b, $02
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    ld b, $06
    ld b, $02
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    inc b
    inc b
    ld b, $04
    ld [bc], a
    ld [bc], a
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld b, $06
    ld b, $02
    nop
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    rlca
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
    ld [bc], a
    nop
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    ld b, $00
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
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
    ld b, $06
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
    ld b, $06
    ld a, [bc]
    ld a, [bc]
    ld c, $0a
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$080e], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [$0800], sp
    ld [$0c0c], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [$0808], sp
    ld [$ffa5], sp
    inc hl
    rst $38
    inc sp
    rst $38
    di
    rst $38
    di
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    jp $ffff


    ld bc, $00ff
    rst $38
    ld [hl-], a
    or $8b
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    adc h
    rst $38
    call c, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $30
    rst $30
    rst $38
    rst $30
    rst $38
    rst $38
    rst $28
    rst $38
    ld a, h
    rst $38
    inc a
    rst $38
    ld e, $ff
    rra
    rst $38
    ld l, $ff
    inc [hl]
    rst $38
    nop
    adc a
    nop
    ld a, a
    nop
    rst $38
    add b
    rst $38
    ldh [rIE], a
    db $e4
    rst $38
    ld a, h
    rst $38
    ret z

    db $fc
    dec c
    ldh a, [$82]
    db $fc
    db $ed
    sub d
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $fffe
    rst $38
    db $ed
    rst $38
    cp $ff
    cp $ff
    ld a, a
    rst $38
    ld [hl], $ff
    nop
    ccf
    nop
    cp c
    ldh [rIE], a
    ld [hl], h
    rst $38
    jr c, @+$01

    jr @+$01

    adc h
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    add a
    rst $38
    rst $38

jr_029_7b01:
    ld [bc], a
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $20
    add b
    cp $c0
    ld hl, sp-$80
    ld a, b

jr_029_7b0f:
    jr nz, jr_029_7b01

    jr nz, jr_029_7b0f

    and b
    cp $80
    ld e, [hl]
    ld b, $0f
    ld c, $1e
    ld b, $4e
    inc b
    ld c, $00
    nop
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
    db $ec
    rst $38
    rst $38
    rst $38
    sbc [hl]
    rst $38
    db $f4
    rst $38
    db $f4
    rst $38
    sub [hl]
    rst $38
    sbc $ff
    ld a, [$faff]
    rst $38
    ld hl, sp-$01
    ld sp, hl
    ld bc, $01fb
    db $e3
    inc bc
    and $06
    dec b
    dec b

jr_029_7b4a:
    dec e
    dec c
    ld a, [hl-]
    ld a, [de]
    dec de
    dec de
    ld b, b
    dec [hl]
    ld bc, $032b
    dec hl
    inc bc
    ld l, [hl]
    add e
    ld d, [hl]
    rlca
    call z, $ac05
    inc c
    ld e, b
    ld [$1858], sp
    jr nc, jr_029_7b75

    ld [hl], b
    jr nc, jr_029_7b88

    jr nz, jr_029_7b4a

    ld h, b
    ld h, b
    ld h, b
    ret nz

jr_029_7b6e:
    ret nz

    ld b, b
    jp nz, $8e80

    add b
    adc e

jr_029_7b75:
    nop
    ccf
    nop
    dec hl
    nop
    ccf
    nop
    ld a, a
    nop
    ld e, b
    nop
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38

jr_029_7b88:
    rst $08
    rst $38
    call nz, $feff
    rst $38

jr_029_7b8e:
    ld a, [$70ff]
    rst $38

jr_029_7b92:
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ei
    rst $38
    ld a, e
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, l
    rst $38
    db $eb
    rst $38
    add a
    rst $38
    db $eb
    inc bc
    rst $38
    rst $20
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    rra
    db $fd
    db $dd
    rst $38
    ld e, a
    rst $38
    ccf
    rst $38
    jr nc, jr_029_7c42

    nop
    rst $38
    nop
    ccf
    db $10
    ld a, a
    ld [hl], b
    cp e
    inc bc
    ccf
    inc bc
    cp e
    dec sp
    cp e
    jr c, jr_029_7b8e

    jr c, @-$43

    jr c, @-$45

    jr c, jr_029_7b92

    jr c, jr_029_7b6e

    db $10
    di
    nop
    pop af
    nop
    pop af
    nop
    db $eb
    ld [$1cfd], sp
    sbc $0f
    db $fc
    ccf
    db $dd
    ld e, $dd
    ld e, $ed
    ld c, $f3
    nop
    pop af
    nop
    ld a, [c]
    inc bc
    ei
    inc bc
    ei
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $28
    rrca
    rst $08
    rrca
    rst $28
    rrca
    rst $00
    rlca
    rst $08
    rrca
    rst $18
    rra
    rst $18
    rra
    rst $18
    rra
    rst $18
    rra
    rst $18
    rra
    ret


    add hl, bc
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    add hl, bc
    rst $38
    add hl, de
    ccf
    add hl, bc
    rra
    add hl, bc
    ld a, $07
    inc a
    rlca

jr_029_7c28:
    cp b
    ld b, $b8
    dec b
    ldh a, [$0d]
    pop af
    dec bc
    pop hl
    dec de
    db $e3
    rra
    jp $c736


    ld l, $86
    ld l, h
    adc a
    ld e, h
    ld c, $bc
    ld c, $b8
    ld e, $b0

jr_029_7c42:
    inc e
    ld [hl], b
    jr nc, jr_029_7ca6

    jr nz, jr_029_7c28

    ld h, b
    ld b, b
    ld c, b
    ret nz

    ret nz

    add b
    add b
    add b
    inc b
    add h
    db $10
    jr c, jr_029_7c55

jr_029_7c55:
    ld l, [hl]
    ld a, [bc]
    ld c, d
    ld [hl+], a
    ld a, [hl]
    inc b
    ccf
    inc bc
    adc a
    inc de
    or e
    jp nc, $ab2d

    ld d, h
    sub $a9
    ld a, [c]
    dec l
    adc h
    ld [hl], e
    dec d
    ld [$c07f], a
    ld [de], a
    db $ec
    db $10
    cp $04
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
    ld sp, hl
    nop
    ld sp, hl
    cp $ff
    db $fd
    rst $38
    ld c, a
    rst $38
    db $d3
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rst $38
    rra
    rst $18
    rst $08
    rst $38
    rst $18
    rst $38
    db $ec
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
    db $fc
    rst $38
    db $fc
    rst $38

jr_029_7ca6:
    db $fd
    rst $38
    rst $38
    rst $38
    ld a, [c]
    rst $38
    ldh [rIE], a
    add $ff
    rst $38
    jp $e1ff


    rst $38
    pop hl
    rst $38
    and c
    rst $38
    db $10
    rst $38
    ld bc, $18ff
    cp $7e
    rst $38
    rst $30
    rst $38
    adc b
    rst $38
    ld b, e
    rst $38
    rrca
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $38
    rst $28
    dec b
    ld [$087c], sp
    ld e, a
    ld c, $ff
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld a, a
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rra
    rst $38
    cp a
    rst $38
    db $dd
    rst $38
    db $fd
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    rla
    rst $38
    db $fd
    inc bc
    db $e4
    dec de
    ld d, d
    xor a
    ret z

    ccf
    or l
    ld [hl], a
    add hl, sp
    rst $38
    adc l
    cp $af
    ret c

    rst $38
    and b
    rst $38
    ret nz

    cp $c1
    cp $c1
    db $fc
    ld [c], a
    db $fc
    pop hl
    ld sp, hl
    rst $20
    ld sp, hl
    ld a, [c]
    di
    cp $e3
    db $fc
    db $e4
    db $f4
    call nz, $c8f8
    add sp, -$38
    ld hl, sp-$30
    ldh a, [$f3]
    ldh a, [rIE]
    ldh a, [rIE]
    ld [c], a
    ld a, a
    ldh [$7f], a
    ld h, b
    rst $38
    ldh a, [$fe]
    ldh a, [$fe]
    ldh a, [$f8]
    ldh [$e0], a
    ld hl, sp-$10
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [rSVBK]
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ldh a, [rSVBK]
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    dec sp
    dec sp
    dec sp
    ld a, e
    ld hl, sp+$3f
    ld a, [hl]
    cp a
    cp $3f
    inc a
    rst $38
    ld a, h
    cp a
    inc e
    cp $9c
    ld a, a
    inc e
    cp $fc
    ccf
    ld a, h
    sbc l
    ld a, h
    sbc a
    ld a, l
    sbc a
    ld a, l
    sbc a
    sbc [hl]
    ld a, a
    sbc [hl]
    ld a, a
    sbc $3f
    sbc $3f
    ld a, [$923b]
    ld a, a
    ld [c], a
    ld a, e
    and d
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld a, a
    ld hl, sp-$01
    ld hl, sp-$01
    pop af
    rst $38
    ldh a, [rIE]
    pop af
    rst $38
    rst $20
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    rst $38
    ldh a, [rIE]
    ldh a, [$fe]
    ret nc

    rst $38
    ret nz

    db $fd
    ld [hl], c
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ld b, c
    db $fd
    ld [$ccff], sp
    rst $38
    ld a, [c]
    ei
    ret nz

    rst $18
    add b
    ei
    ld b, c
    rst $38
    ld [hl], e
    rst $38
    dec a
    rst $38
    ei
    rst $38
    push hl
    rst $38
    ld [bc], a
    rst $38
    ld l, $ff
    push hl
    rst $30
    daa
    rst $38
    rla
    rst $38
    db $76
    ld l, a
    nop
    rst $38
    add hl, de
    rst $38
    push af
    rst $38
    ld b, [hl]
    rst $38
    adc [hl]
    cp $1f
    cp $fd
    rst $38
    ld [$00ff], sp
    di
    inc c
    pop hl
    ld e, $c8
    scf
    jp $e33c


    dec e
    rst $08
    ld sp, $3fc7
    rst $08
    dec [hl]
    rst $08
    cp l
    rst $18
    ld l, a
    rst $38
    adc $ef
    db $e4
    or $f5
    ei
    and $fb
    push hl
    rst $30
    or $e7
    cp $ef
    db $76
    rst $28
    ld [hl], d
    rst $30
    ld [hl], e
    rst $30
    ld h, e
    or a

Jump_029_7dff:
    ld h, e
    inc sp
    and e
    ld [hl], e
    db $e3
    ld [hl], e
    ld h, e
    ld [hl], e
    di
    ld a, [c]
    or e
    di
    inc sp
    di
    inc sp
    cp e
    inc sp
    dec a
    scf
    dec a
    ccf
    dec a
    ccf
    ccf
    scf
    ccf
    rra
    dec sp
    rra
    ld a, e
    rra
    db $db
    rra
    db $db
    ccf
    sbc e
    ld a, a
    sbc a
    ld a, a
    cp a
    ld a, a
    ccf
    rst $18
    scf
    sbc $a7
    ld a, [hl]
    and [hl]

jr_029_7e2f:
    ld a, [hl]
    xor $fa
    rst $08
    ld a, [$f8ca]
    set 7, b
    set 7, c
    db $dd
    ld hl, sp-$24
    db $fc
    call c, $fcec
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    or h
    db $fc
    db $f4
    cp $f6
    cp $e6
    cp $e4
    rst $30
    ld h, [hl]
    rst $38
    ldh [rIE], a
    ldh a, [$fe]
    ldh [$fe], a
    ldh a, [$fe]
    ldh a, [$fc]
    ldh a, [$f0]
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$f8]
    or b
    ld hl, sp-$50
    ld hl, sp-$70
    ld hl, sp-$70
    cp b
    sub b
    cp b
    sbc b
    cp b
    sbc b
    cp b
    jr jr_029_7e2f

    db $10
    ldh a, [rNR41]
    ldh [$60], a
    ret nz

    add b
    add b
    add b
    and b
    rst $38
    ld e, [hl]
    rst $38
    sbc $ff
    jp nz, Jump_000_07ff

    rst $38
    ld c, a
    rst $38
    ld a, l
    rst $38
    ld e, b
    rst $38
    rst $18
    ld e, b
    rst $18
    ld e, d
    rst $38
    dec d
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    ld a, l
    rst $38
    ccf
    rst $38
    ccf
    ei
    rst $38
    rst $38
    rst $38
    ld [hl], a
    rst $38
    cpl
    rst $38
    jr nz, jr_029_7f29

    ld l, b
    rst $38
    inc l
    rst $38
    adc [hl]
    rst $38
    add [hl]
    rst $28
    adc a
    rst $38
    rst $38
    rst $38
    sub c
    rst $38
    add l
    rst $38
    ld e, a
    rst $38
    rst $30
    rst $38
    scf
    rst $38
    ld d, $7f
    ld bc, $387f
    ld a, a
    ld [hl], l
    rst $38
    cp $ff
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    add l
    ld a, e
    inc d
    db $eb
    sub b
    ld l, a
    add c
    ld a, [hl]
    rlca
    ld hl, sp+$0e
    pop af
    sbc h
    ld h, e
    inc a
    jp $c0bf


    ld a, a
    nop
    ld a, l
    nop
    push hl
    db $e4
    db $d3
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp-$7e
    ld a, h
    ld a, a
    nop
    ld a, l
    nop
    rst $38
    add b
    rst $38
    nop
    cp $04
    db $fc
    nop
    rst $38
    add b
    db $fc
    nop
    ld a, a
    sbc b
    ld hl, sp-$80
    pop hl
    add b
    rst $28
    add b
    db $fd
    add b
    call z, $cc80
    add b
    ret nz

    add b
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    ret nz

    ld hl, sp-$80
    rst $38
    add b
    rst $38
    add b
    cp $80
    rst $38
    add b
    cp $00
    rst $38
    nop
    cp $80
    rst $38

jr_029_7f29:
    nop
    cp $80
    rst $38
    nop
    cp $00
    rst $38
    nop
    cp $00
    rst $38
    nop
    cp $00
    ccf
    nop
    ld e, $00
    rrca
    nop
    ld c, $00
    rlca
    nop
    ld b, $00
    inc bc
    nop
    ld [bc], a
    nop
    inc bc
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
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    ld [c], a
    nop
    rst $20
    nop
    rst $38
    nop
    rrca
    nop
    sub e
    nop

jr_029_7f6c:
    cp e
    nop
    ld e, l
    nop
    nop
    rst $38
    nop
    rst $18
    inc b
    sbc a
    rlca
    rst $28
    rlca
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ld h, e
    rst $38
    ld l, a
    rst $38
    sbc e
    rst $38
    ei
    rst $38
    jp hl


    rst $38
    rst $28
    rst $38
    or a
    rst $38
    sbc a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, $ff
    rst $10
    rst $38
    add c
    rst $38
    pop af
    rst $38
    db $fd
    rst $38
    ld c, b
    db $fd
    add b
    rst $18
    sbc $ff
    or a
    rst $38
    sub h
    rst $38
    rst $00
    rst $38
    ld sp, $b8ce
    rst $00
    sbc h
    db $e3
    nop
    rst $38
    rrca
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ld a, $c0
    ld a, a
    add b
    db $fc
    nop
    ldh a, [rP1]
    rst $08
    ccf
    add h
    ld a, b
    rst $08
    jr nc, jr_029_7f6c

    ld h, b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $db
    nop
    ei
    nop
    ld a, c
    ld bc, $01fb
    rra
    add hl, de
    ld a, a
    ld bc, $0187
    rra
    ld bc, $01bf
    rlca
    ld bc, $01fb
    or c
    ld bc, $0019
    ld bc, $01ff
    rst $38
    ld bc, $00f8
    nop
    nop
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
