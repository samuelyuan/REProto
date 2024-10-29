SECTION "ROM Bank $01b", ROMX[$4000], BANK[$1b]

    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$08

    ld hl, $2322
    inc h
    dec h
    ld h, $27
    jr z, jr_01b_4039

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_01b_4049

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_01b_4059

    nop
    nop
    nop
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

jr_01b_4039:
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

jr_01b_4049:
    nop
    nop
    ld [bc], a
    ld [bc], a
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

jr_01b_4059:
    nop
    nop
    ld [bc], a
    ld [bc], a
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
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0003
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    nop
    nop

Jump_01b_4083:
    nop
    nop
    nop
    nop
    nop
    inc b
    ld [bc], a
    ld bc, $0202
    nop
    nop
    inc bc
    nop
    nop
    nop
    nop
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    inc bc
    ld bc, $0003
    nop
    nop
    nop
    dec b
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    inc bc
    ld bc, $0003
    nop
    nop
    nop
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0201
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
    ld bc, $0101
    ld [bc], a
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    dec b
    ld [bc], a
    dec b
    dec b
    dec b
    ld bc, $0101
    ld [bc], a
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    ld a, [bc]
    dec c
    ld a, [bc]
    nop
    ld [$0a0a], sp
    add hl, bc
    dec c
    dec c
    ld [$080d], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    dec c
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    dec c
    inc b
    inc b
    ld bc, $8001
    add b
    ld b, d
    ld b, d
    nop
    nop
    ld c, b
    ld b, b
    ld bc, $8000
    nop
    ld hl, sp+$00
    jp nz, $0f00

    nop
    cpl
    jr nz, jr_01b_4189

    db $10
    db $10
    db $10
    add [hl]
    nop
    adc a
    nop
    add $00
    and $00
    inc c
    nop
    ld [$0108], sp

jr_01b_4189:
    ld bc, $0020
    ldh a, [rP1]
    rst $10
    nop
    add a
    nop
    rst $18
    nop
    db $e3
    nop
    add sp, $08
    add sp, $08
    push hl
    inc b
    jp $e202


    ld [bc], a
    ld a, [c]
    ld [bc], a
    ld [c], a
    ld [bc], a
    add sp, $00
    db $fc
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
    cp $00
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
    ld a, [$7000]
    nop
    jp Jump_01b_4083


jr_01b_41f1:
    ld b, b
    ld b, b
    ld b, b
    ld [$0808], sp
    ld [$0000], sp
    inc d
    inc d
    and a
    and a
    ld e, e
    ld e, e
    rst $38
    rst $20
    rst $38
    sbc a
    rst $38
    ld l, [hl]
    rst $38
    ret nc

    rst $38
    ret nz

    cp $01
    db $fc
    inc bc
    ldh a, [rIF]
    ret nz

    ccf
    ldh a, [rIE]
    rrca
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp+$1f
    ldh [$7f], a
    add c

jr_01b_4220:
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ld b, b
    jr z, jr_01b_4252

    ret nz

    ret nz

    inc a
    inc a
    ld l, e
    ld l, e
    ei
    ei
    dec sp
    dec sp
    inc sp
    inc sp
    inc sp
    inc sp
    add a
    add a
    rst $30
    rst $30
    db $dd
    db $dd
    rst $38
    rst $38
    ld bc, $0401
    inc b
    ld b, b
    ld b, b
    db $10
    db $10
    add h
    add h
    add c
    add c
    nop
    nop
    jr nz, @+$22

    jr nz, jr_01b_4272

jr_01b_4252:
    nop
    nop
    and d
    nop
    ld b, d
    nop
    inc e
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    dec e
    nop
    ld e, l
    ld b, b
    inc c
    nop
    sub [hl]
    ld [de], a
    jr z, jr_01b_4272

    xor b
    adc b
    ld [$1808], sp
    jr jr_01b_41f1

    nop

jr_01b_4272:
    ld a, [hl]
    ld b, b
    ld hl, $1420
    db $10
    ld d, $10
    ld d, $10
    rla
    ld de, $c1cf
    ld c, l
    ld b, c
    ld l, a
    ld b, c
    ld c, a
    ld b, c
    ld l, $00
    sbc d
    nop
    ld b, c
    ld b, b
    inc sp
    jr nc, jr_01b_4220

    db $10
    rst $00
    nop
    rrca
    ld [$080f], sp
    adc c
    ld [$04c7], sp
    db $e3
    ld [bc], a
    db $e3
    inc bc
    ret nz

    nop
    pop bc
    ld bc, $01c1
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    db $fd
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
    db $fd
    nop
    rst $30
    nop
    rst $28
    inc bc
    ld sp, hl
    ld bc, $01f1
    ldh a, [rP1]
    pop hl
    ld bc, $00f0
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    add sp, $00
    ret nz

    nop
    add b
    nop
    add b
    nop
    nop
    nop
    ld h, b
    ld h, b
    sub b
    sub b
    nop
    nop
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld de, $0811
    ld [$0000], sp
    ld [$0408], sp
    inc b
    add c
    add c
    jr nz, @+$22

    add hl, bc
    add hl, bc
    ld h, $26
    adc l
    adc l
    db $db
    db $db
    cp h
    cp h
    ld h, b
    ld h, b
    rst $38
    ldh a, [$fc]
    add e
    ld hl, sp+$07
    ldh [$1f], a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp+$1f
    ldh [rIE], a
    add b
    rst $38
    inc bc
    rst $38
    dec c
    rst $38
    dec e
    rst $38
    ld [hl], l
    rst $38
    push af
    dec e
    dec e
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ld bc, $0f01
    rrca
    rra
    rra
    ld b, e
    ld b, e
    ld l, h
    ld l, h
    ld b, a
    ld b, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, l
    ld d, l
    ld d, h
    ld d, h
    dec d
    dec d
    db $db
    db $db
    nop
    nop
    jr nz, @+$22

    rra
    rra
    nop
    nop
    inc bc
    inc bc
    add b
    add b
    ld h, b
    ld h, b
    sbc b
    sbc b
    ld b, $06
    ld b, c
    ld b, c
    nop
    nop
    ld [hl+], a
    ld [hl+], a
    jr nz, @+$22

    ld bc, $6001
    nop
    jr nc, jr_01b_4370

    ld bc, $0800
    ld [$0444], sp
    ld h, l
    inc b
    nop
    nop
    add h
    add h
    add b
    add b
    inc b
    nop

jr_01b_4370:
    jr nz, jr_01b_4392

    add c
    ld bc, $0080
    db $10
    db $10
    dec bc
    ld [$0003], sp
    ld h, [hl]
    inc b
    inc b
    inc b
    ld b, b
    nop
    inc b
    inc b
    dec bc
    ld [bc], a
    adc b
    add b
    nop
    nop
    add d
    ld [bc], a
    pop de
    db $10
    db $e3
    ld [bc], a
    di
    ld [de], a

jr_01b_4392:
    push af
    nop
    di
    nop
    pop af
    nop
    ld sp, hl
    nop
    rst $30
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
    di
    nop
    ld sp, hl
    nop
    pop af
    nop
    ei
    ld [bc], a
    ld a, c
    ld bc, $00f8
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp-$80
    ld a, b
    ld b, b
    jr c, jr_01b_43ec

    nop
    nop
    nop
    nop
    ld [$0408], sp
    inc b
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    ld bc, $1001
    stop
    nop
    ld [$0408], sp
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [de], a
    ld [de], a

jr_01b_43ec:
    ld bc, $2b01
    dec hl
    rst $38
    sbc [hl]
    rst $38
    db $ec
    rst $38
    ldh a, [rIE]
    and b
    cp $41
    ld hl, sp-$79
    ldh a, [rIF]
    ret nz

    ccf
    ldh a, [rIE]
    rrca
    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp+$1f
    ldh [$7f], a
    add b
    rst $38
    inc bc
    rst $38
    dec bc
    rra
    rst $38
    ld l, e
    rst $38
    rst $28
    rst $38
    xor e
    rst $38
    rst $28
    rst $38
    xor a
    rst $38
    rst $38
    rst $38
    cp a
    cp $ff
    ld hl, sp-$01
    ldh a, [$1f]
    db $e3
    pop hl
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    jp Jump_01b_7cc3


    ld a, h
    ld [$aaea], a
    xor d
    xor d
    xor d
    ld a, [hl+]
    ld a, [hl+]
    add hl, sp
    add hl, sp
    inc de
    inc de
    nop
    nop
    ldh [$e0], a
    db $10
    db $10
    add c
    add c
    db $10
    stop
    nop
    rlca
    rlca
    jr jr_01b_446a

    add b
    add b
    jr nc, jr_01b_4486

    adc h
    adc h
    inc bc
    inc bc
    jr nz, @+$22

    db $10
    db $10
    ld de, $1010
    stop
    nop
    and $04
    pop af
    nop
    ld [bc], a
    ld [bc], a

jr_01b_446a:
    ld bc, $9001
    nop
    stop
    ld d, b
    nop
    add hl, bc
    nop
    add d
    add d
    ld b, c
    ld b, c
    nop
    nop
    inc a
    jr nz, jr_01b_44bb

    jr nz, jr_01b_44be

    jr nz, jr_01b_449f

    nop
    ld a, $20
    ld a, [hl]
    ld h, b

jr_01b_4486:
    ccf
    nop
    rst $38
    ret nz

    ld a, a
    nop
    rst $38
    nop
    cp $00
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

jr_01b_449f:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld b, b
    ld sp, $0820
    ld [$4444], sp
    ld h, d
    ld h, d
    ld [hl+], a
    ld [hl+], a
    db $10

jr_01b_44bb:
    stop
    nop

jr_01b_44be:
    ld [$0408], sp
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, d
    ld b, d
    nop
    nop
    jr jr_01b_44e6

    add d
    add d
    ld [$0708], sp
    rlca
    inc de
    inc de
    ld c, a
    ld c, a
    xor e
    xor e
    ld b, b
    ld b, b
    ldh a, [$f0]
    add b
    add b
    db $fc
    inc bc
    cp $07
    pop hl
    rra

jr_01b_44e6:
    add b
    ld a, a
    nop
    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp+$1f
    ldh [$3f], a
    ret nz

    rst $38
    inc bc
    rst $38
    dec bc
    rst $38
    dec de
    rst $38
    ld e, e
    rst $38
    ld e, a
    rst $38
    db $db
    rst $38

Jump_01b_44ff:
    ld e, a
    rst $38
    rst $38
    ld a, a
    cp $ff
    ld hl, sp-$01
    ldh a, [rIE]
    ret nz

    rst $38
    add b
    rst $38
    rrca
    rst $38
    ld a, $ff
    nop
    rst $38
    ld a, a
    rst $38
    inc bc
    rst $38
    sub b
    rrca
    ldh a, [$f0]
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
    ld b, e
    ld b, e
    ld c, h
    ld c, h
    add l
    add l
    ret


    ret


    set 1, e
    add b
    add b
    rlca
    rlca
    jr nc, jr_01b_4566

    ld bc, $f901
    ld sp, hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr c, jr_01b_4586

    ld c, $0e
    ld bc, $0001
    nop
    jr nz, jr_01b_4556

jr_01b_4556:
    jr nz, jr_01b_4558

jr_01b_4558:
    or b
    nop
    ld a, b
    nop
    cp h
    add b
    call c, $44c0
    ld b, b
    nop
    nop
    nop
    nop

jr_01b_4566:
    ld bc, $6000
    nop
    ret nz

    ret nz

    ld [de], a
    db $10
    ld c, e
    ld b, b
    dec bc
    ld [$20a3], sp
    ld d, l
    nop
    ld d, c
    nop
    dec sp
    jr z, @+$41

    jr z, jr_01b_45c8

    ld c, b
    ld d, e
    ld d, b
    ld b, e
    ld b, b
    pop bc
    add b
    dec de
    nop

jr_01b_4586:
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
    cp $01
    rst $38
    nop
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    rst $38
    nop
    cp a
    ld [hl], b
    rra
    ldh a, [$0e]
    ld sp, hl
    ld b, b
    cp $00
    ld hl, sp+$00
    ldh [rP1], a
    ret nz

    ld hl, sp+$38
    rst $38
    rst $18
    rst $38
    ld c, a
    rst $38
    daa

jr_01b_45c8:
    rst $38
    inc de
    rst $38
    ld c, h
    rst $38
    sub a
    rst $38
    dec a
    rst $38
    rst $18
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ld b, c
    ld hl, sp+$07
    ldh a, [rIF]
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld a, $c1
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc d
    rst $38
    ld a, [hl]
    sbc $ff
    ld a, [hl]
    rst $38
    ld e, d
    rst $38
    db $fd
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ret nz

    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    ld c, $ff
    ld [hl], c
    rst $38
    ld bc, $e2ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $ff
    pop bc
    rst $38
    inc bc
    rst $38
    rst $30
    rst $38
    ld b, $07
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
    ccf
    ccf
    add e
    add e
    or h
    or h
    cp d
    cp d
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    add b
    add b
    ld b, e
    ld b, e
    inc b
    inc b
    nop
    nop
    ld e, a
    ld e, a
    nop
    nop
    ldh [$e0], a
    inc bc
    inc bc
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    inc b
    inc b
    nop
    nop
    sbc h
    sbc h
    ld h, b
    ld h, b
    sbc b
    sbc b
    rlca
    rlca
    ld bc, $2001
    jr nz, @+$22

    jr nz, @+$2a

    jr z, jr_01b_4661

jr_01b_4661:
    nop
    ld bc, $4101
    ld bc, $0060
    nop
    nop
    ld b, h
    ld b, h
    nop
    nop
    db $10
    db $10
    add b
    nop
    sub c
    ld de, $0888
    nop
    ld bc, $0180
    adc b
    ld [$0080], sp
    ld [$800c], sp
    inc b
    add h
    ld b, $84
    rlca
    call nz, $c207
    inc sp
    add b
    ld [hl], b
    add c
    ld [hl], c
    ld bc, $00f1
    ldh a, [rP1]
    ld hl, sp+$01
    rst $38
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
    rst $30
    nop
    di
    nop
    push af
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    db $ec
    nop
    add sp, $00
    ldh a, [$f4]
    dec bc
    ldh [$1f], a
    add b
    ld a, h
    nop
    ret nz

    nop
    rlca
    inc bc
    rra
    rrca
    ld a, a
    nop
    rra
    nop
    nop
    add b
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
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $28
    rra
    add a
    ld a, a
    rst $38
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld bc, $06ff
    rst $38
    ld [$f8ff], sp
    rst $38
    ld c, a
    rst $38
    ld hl, sp+$05
    ldh a, [rSB]
    jp $c724


    ld c, b
    call z, $c9cf
    rst $18
    db $e3
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    cp $ff
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    sbc a
    rst $38
    rst $18
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
    ld a, a
    rst $38
    rst $20
    rst $38
    add a
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld a, a
    add a
    add a
    ld hl, sp-$08
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
    ld b, c
    ld b, c
    ld bc, $0001
    nop
    inc bc
    inc bc
    ld a, h
    ld a, h
    add b
    add b
    nop
    nop
    inc bc
    inc bc
    add c
    add c
    nop
    nop
    nop
    nop
    add d
    add d
    ld bc, $e001
    ldh [rP1], a
    nop
    nop
    nop
    rlca
    rlca
    nop
    nop
    ldh [$e0], a
    nop
    nop
    rra
    rra
    ret nz

    ret nz

    ld [hl], b
    ld [hl], b
    inc e
    inc e
    rlca
    rlca
    ld b, $06
    inc bc
    inc bc
    inc bc
    inc bc
    ld [$0308], sp
    inc bc
    ld b, d
    ld b, d
    inc hl
    ld [hl+], a
    ld de, $1011
    db $10
    add c
    add c
    add hl, bc
    add hl, bc
    ld bc, $0501
    dec b
    ld b, a
    rst $00
    nop
    add b
    ld hl, $05a1
    dec b
    nop
    nop
    inc b
    ld b, l
    inc b
    rst $00
    nop
    jp $cf0c


    ld [$00ef], sp
    rst $28
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
    db $fc
    nop
    db $fc
    nop
    ld a, h
    nop
    db $fc
    nop
    db $fd
    nop
    call c, Call_01b_7800
    nop
    jr c, jr_01b_47af

jr_01b_47af:
    db $10
    adc b
    ld [hl], a
    nop
    rst $38
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
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    ld hl, sp-$01
    db $eb
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$02
    ldh a, [rIE]
    ret nz

    rst $38
    ld b, l
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    xor $ee
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jp $fcfc


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
    add b
    nop
    nop
    jr c, jr_01b_486e

    rrca
    rrca
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    jr c, jr_01b_4882

    inc b
    inc b
    nop
    nop
    ret nz

    ret nz

    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ld b, $06
    nop
    nop
    nop
    nop
    cp l
    cp l
    nop
    nop
    jr nz, @+$22

    nop
    nop
    jr nz, jr_01b_4868

jr_01b_4868:
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop

jr_01b_486e:
    nop
    nop
    nop
    nop
    ld b, b
    ld d, b
    ld b, b
    ld b, b
    db $10
    db $10
    ld b, b
    ld b, b
    inc b
    inc b
    inc bc
    inc bc
    rra
    nop
    rra
    rst $28

jr_01b_4882:
    rra
    add sp, $1f
    add sp, $1f
    add sp, $1f
    add sp, $1f
    add sp, $1f
    add sp, $1f
    add sp, $1f
    add sp, $1f
    add sp, $1f
    add sp, $1f
    add sp, $1f
    add sp, $1f
    add sp, $1f
    add sp, $1f
    add sp, $1f
    ld l, b
    rra
    add sp, $1f
    add sp, $0f
    db $f4
    rrca
    db $f4
    rrca
    ld [hl], h
    rrca
    dec [hl]
    rrca
    inc [hl]
    db $f4
    rrca
    db $f4
    rrca
    inc d
    rrca
    nop
    nop
    ld hl, sp+$00
    cp $f0
    ld hl, sp-$40
    ret nz

    nop
    rlca
    ld bc, $0f3f
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
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
    ld bc, $c2ff
    ccf
    add h
    ld a, a
    rst $38
    ld a, a
    sub b
    ld a, a
    and b
    ld a, a
    ldh a, [rIF]
    rrca
    nop
    rlca
    nop
    rlca
    nop
    ccf
    ld bc, $017d
    ld sp, hl
    add hl, bc
    di
    ld [hl], c
    rst $20
    jp $cf87


    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$04
    ld hl, sp-$02
    ld hl, sp-$02
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    add b
    rst $30
    ld [$00ff], sp
    rra
    ldh [$e1], a
    cp $80
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    db $10
    db $10
    cp a
    cp a
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    db $10
    db $10
    ld c, $0e
    nop
    nop
    ld e, $1e
    pop bc
    pop bc
    nop
    nop
    ldh a, [$f0]
    rst $38
    rst $38
    rra
    rra
    nop
    nop
    rra
    rra
    ret nz

    ret nz

    nop
    nop
    add h
    add h
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    add h
    add h
    jr nc, jr_01b_4970

jr_01b_4970:
    ld b, d
    ld [hl], d
    ld [hl+], a
    ld a, [hl-]
    jr nz, jr_01b_49b4

    ld de, $101f
    rra
    ret nc

    rst $18
    add b
    add a

jr_01b_497e:
    rst $38
    nop

jr_01b_4980:
    rst $38
    rst $38

jr_01b_4982:
    nop
    ld bc, $ff00
    nop
    rst $38
    ret nz

    rst $38
    nop
    ld sp, hl
    jr nz, jr_01b_497e

jr_01b_498e:
    jr nz, jr_01b_4980

jr_01b_4990:
    jr nz, jr_01b_4982

    jr nz, @-$0e

jr_01b_4994:
    jr nz, jr_01b_498e

    jr nz, jr_01b_4990

jr_01b_4998:
    jr nz, @-$05

jr_01b_499a:
    jr nz, jr_01b_4998

    jr nz, @-$05

    jr nz, jr_01b_4994

jr_01b_49a0:
    jr nz, jr_01b_49a0

    jr nz, jr_01b_499a

    jr nz, @-$07

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $20
    rst $38
    jr nz, @+$01

    jr z, @+$01

    jr z, @+$01

jr_01b_49b4:
    jr z, @+$01

    inc c
    rst $38
    inc c
    rra
    dec c
    rrca
    dec e
    rra
    ld a, l
    rra
    db $ed
    rst $38
    call Call_000_0dff
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38

jr_01b_49d6:
    ld [$10ff], sp
    rst $38
    rst $38
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38

jr_01b_49e4:
    nop
    rst $38
    nop
    rst $38
    add b
    cp $7e
    cp $01
    db $fd
    ld [bc], a
    ei
    call nz, $ef3f
    jr jr_01b_49e4

    jr jr_01b_49d6

    or b
    rst $18
    cp $df
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $38
    rra
    rst $38
    db $10
    rst $38
    nop
    ret nc

    ccf
    ldh [$1f], a
    rst $38
    db $10
    rst $38
    db $10
    ret nz

    ccf
    rst $38
    db $10
    ld a, a
    nop
    ld e, a
    nop
    rra
    db $10
    ld c, a
    nop
    add e
    nop
    ld [$8100], sp
    nop
    rst $38
    nop
    cp $01
    add hl, sp
    add $fe
    ld bc, $00ff
    rrca
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    nop
    inc bc
    inc bc
    db $f4
    db $f4
    nop
    nop
    nop
    nop
    cp a
    cp a
    inc b
    inc b
    ld a, [hl]
    ld a, [hl]
    rrca
    rrca
    ld [bc], a
    ld [bc], a
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld b, b
    ld b, b
    jr nc, jr_01b_4a86

    add b
    add b
    cp $fe
    nop
    nop
    cp a
    cp a
    nop
    nop
    dec b
    inc b
    nop
    nop
    ld a, [de]
    jr jr_01b_4a67

jr_01b_4a67:
    nop
    ld bc, $2100
    jr nz, jr_01b_4a6d

jr_01b_4a6d:
    nop
    jr nz, jr_01b_4a90

    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $7001
    ldh a, [rLCDC]
    ret nz

    jr c, @-$02

    ldh a, [rNR34]
    ldh a, [$df]
    ldh a, [$1f]
    ldh a, [$1f]

jr_01b_4a86:
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$9f]
    ldh a, [$9f]

jr_01b_4a90:
    ldh a, [$9f]
    ldh a, [$9f]
    ldh a, [$9f]
    ldh a, [$9f]
    ldh a, [$9f]
    ldh a, [$9f]
    ldh a, [$9f]
    ldh a, [$9f]
    ldh a, [$9f]
    ldh a, [$9f]
    ldh a, [$9f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$9f]
    ldh a, [$9f]
    ldh a, [$9f]
    ldh a, [$9f]
    ldh a, [$9f]
    ldh a, [$9f]
    ldh a, [$9f]
    ld a, [c]
    rst $18
    di
    rst $18
    di
    rst $18
    rst $30
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $10
    rst $38
    rst $38
    rst $38
    ld b, b
    rst $38
    add b
    nop
    rst $38
    rst $38
    rst $38
    nop
    cp $00
    cp $01
    db $fd

jr_01b_4ada:
    ld [c], a
    ei
    rla
    rst $30
    ld [$08ef], sp
    rst $28
    db $10
    rst $18
    jr nz, @-$3f

    ld b, b
    ld a, a
    add b
    rst $38
    ldh a, [rIE]
    rrca
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    cp $03
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
    rlca
    ld a, a
    add b
    rra
    ldh [$03], a
    db $fc
    sbc a
    ld h, b
    ld b, b
    cp a
    cp $01
    rra
    ldh [rTAC], a
    ld hl, sp-$31
    jr nc, jr_01b_4ada

    ld a, $f9
    ld b, $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    ret nz

    ccf
    inc bc
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [$fe], a
    cp $00
    nop
    ccf
    ccf
    nop
    nop
    ld [bc], a
    ld [bc], a
    rst $20
    rst $20
    ld bc, $0001
    nop
    inc a
    inc a
    ret nz

    ret nz

    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    ld bc, $0001
    nop
    ld hl, sp-$08
    nop
    nop
    rlca
    rlca
    ld b, a
    ld b, a
    ret z

    ret z

    ld [hl], a
    ld [hl], a
    ld a, a
    ld a, a
    ld [hl], a
    ld [hl], a
    db $d3
    ld d, e
    rst $38
    ld a, a
    push de
    ld d, l
    rst $18
    ld e, a
    rst $38
    ld a, a
    ld c, l
    ld c, l
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld d, a
    ld d, a
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld h, e
    ld h, e
    ld h, c
    ld l, c
    ld h, c
    ld h, c
    pop bc
    call Call_01b_5d41
    ld b, c
    ld a, a
    pop bc
    ld a, a
    pop bc
    ld a, a
    add c
    ccf
    add c
    ld a, a
    add c
    ld a, a
    ld bc, $817f
    ccf
    add c
    ld a, a
    add c
    ld a, a
    add c
    ld a, a
    add c
    ld a, a
    add c
    ld a, a
    add c
    ld a, a
    add c
    ld a, a
    add c
    ld a, a
    add c
    ld a, a
    add c
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    add a
    ld a, a
    add a
    ld a, a
    add a
    ld a, a
    adc [hl]
    ld a, a
    adc [hl]
    ld a, a
    sbc [hl]
    ld a, a
    rst $38
    rst $38
    db $fd
    rst $38
    ld a, [$f3fe]
    ei
    inc b
    rst $30
    rst $30
    rst $30
    ld [$10ef], sp
    rst $18
    jr nz, @-$3f

    ld a, a
    ld a, a
    add b
    rst $38
    add c
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    rst $38
    rst $38
    inc b
    rst $38
    ld [$10ff], sp
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    db $fc
    rst $38
    add e
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
    rst $08
    ld sp, $00ff
    ld hl, sp+$07
    cp $01
    rlca
    ld hl, sp-$40
    ccf
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

    rst $30
    ld [$7986], sp
    ccf
    pop bc
    rst $00
    add hl, sp
    ld sp, hl
    rlca
    inc d
    db $eb
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    rrca
    rrca
    nop
    nop
    add b
    add b
    nop
    nop
    pop hl
    pop hl
    inc bc
    inc bc
    jr jr_01b_4c5c

    ld b, b
    ld b, b
    ldh a, [$f0]
    jr nz, jr_01b_4c6a

    nop
    nop
    nop
    nop
    jp $8ec3


    adc [hl]
    jr jr_01b_4c6c

    jr nz, @+$22

    nop
    nop
    ld sp, $0031
    nop

jr_01b_4c5c:
    rrca
    rrca
    db $fc
    db $fc
    add b
    add b
    rst $30
    rst $30
    nop
    nop
    nop
    nop
    jr nz, jr_01b_4c8a

jr_01b_4c6a:
    ld [bc], a
    ld [bc], a

jr_01b_4c6c:
    nop
    nop
    dec b
    nop
    nop
    ld bc, $0100
    db $10
    stop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    inc e
    inc e
    rra
    rla
    ldh a, [$1f]
    rst $30
    sbc a
    rst $30
    inc e
    rst $30
    dec e
    rst $30
    inc e

jr_01b_4c8a:
    rst $30
    dec a
    rst $30
    inc e
    rst $30
    sbc h
    inc e
    inc d
    inc e
    sub h
    inc e
    or h
    rra
    or b
    rra
    or a
    inc e
    db $f4
    inc e
    db $f4
    inc e
    db $f4
    inc e
    db $f4
    inc e
    db $f4
    inc e
    db $f4
    ld e, $f6
    rra
    rst $30
    rra
    rst $30
    rra
    rst $30
    rra
    rst $30
    rra
    ldh a, [$1f]
    ldh a, [rIE]
    db $fc
    rst $38
    rst $00
    db $fd
    xor $49
    cp $c1
    cp $c1
    rst $38
    rst $38
    rst $38
    inc c
    rrca
    rra
    rra
    ld hl, sp-$01
    db $10
    rst $38
    rst $38
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    rst $38
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
    ld bc, $01ff
    rst $38
    rst $38
    rst $38
    ld bc, $02ff
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [c], a
    ld e, a
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    add b
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [$1f], a
    ld h, b
    sbc a
    ld h, b

jr_01b_4d0f:
    sbc a
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
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    ld bc, $c1c1
    ld a, [hl]
    ld a, [hl]
    rst $08
    rst $08
    ccf
    ccf
    inc bc
    inc bc
    dec b
    dec b
    rlca
    rlca
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    ld hl, sp-$08
    ld b, $06
    db $10
    stop
    nop
    ld bc, $8c01
    adc h
    ld b, b
    ld b, b
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld bc, $3001
    jr nc, jr_01b_4d0f

    ret nz

    nop
    nop
    add a
    add a
    nop
    nop
    ld bc, $ff01
    rst $38
    nop
    nop
    rst $28
    rst $28
    or b
    or b
    ld b, c
    ld b, c
    rst $38
    rst $38
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    adc b
    nop
    jr nz, jr_01b_4d6e

jr_01b_4d6e:
    ret nz

    nop
    ldh [rP1], a
    nop
    nop
    ld c, b
    nop
    jr nz, jr_01b_4d98

    inc h
    jr nz, @+$13

    db $10
    ld b, $00
    rst $38
    rst $38
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
    rst $38
    ld de, $80ff
    rst $38
    and b
    rst $38
    ld c, b
    rst $38
    sub b
    rst $38
    nop
    nop
    rst $38

jr_01b_4d98:
    rst $38
    rst $38
    ld a, a
    nop
    ld a, l
    nop
    ld c, a
    nop
    ld l, [hl]
    nop
    ld a, a
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
    ei
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$ffff], sp
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ret nc

    rst $38
    ccf
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ldh [rIE], a
    ccf
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
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
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    rst $38
    rrca
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$3f]
    ldh a, [$3f]
    ldh a, [$3f]
    ldh a, [$7f]
    rst $38
    ld a, a
    ldh a, [$7f]
    ldh a, [$7f]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    cp $bf
    pop hl
    ccf
    ldh [$3f], a
    ldh [$7f], a
    ldh [$bf], a
    ldh [rIE], a
    nop
    nop
    ld hl, sp-$08
    rlca
    rlca
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    jr c, jr_01b_4e78

    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ret nz

    ret nz

    nop
    nop
    inc bc
    inc bc
    ld c, $0e
    add b
    add b
    jr jr_01b_4e6a

    rst $38
    rst $38
    nop
    nop
    ld bc, $fe01
    cp $00
    nop
    dec e
    dec e
    inc h
    inc h
    ld bc, $fe01
    cp $00
    nop
    ld bc, $0001
    nop

jr_01b_4e6a:
    ld b, b
    nop
    inc b
    nop
    jr jr_01b_4e70

jr_01b_4e70:
    nop
    inc c
    db $10
    ld de, $9110
    nop
    add b

jr_01b_4e78:
    ld [$0008], sp
    add b
    ld [hl], b
    ld [hl], b
    db $f4
    call nc, $10f0
    ldh a, [$d0]
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ldh a, [$d2]
    ld [hl], b
    ld d, d
    ld [hl], b
    ld d, d
    ld [hl], b
    ld d, e
    ld [hl], b
    ld d, a
    ld [hl], b
    ld e, a
    ld [hl], b
    ld e, a
    ldh a, [$1f]
    ldh a, [$df]
    ld [hl], b
    ld e, a
    ld [hl], c
    ld e, a
    ld [hl], c
    ld e, a
    ld [hl], c
    ld e, a
    ld [hl], c
    ld e, a
    ld [hl], c
    ld e, a
    ld [hl], c
    ld e, a
    ld [hl], c
    ld e, a
    ld [hl], c
    ld e, a
    ld [hl], c
    ld e, a
    pop af
    rst $18
    pop af
    rra
    pop af
    rra
    pop hl
    ccf
    pop hl
    ccf
    pop hl
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
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $ffff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $ffff
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [c], a
    rst $38
    rra
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
    inc b
    rst $38
    add h
    rst $38
    ld a, a
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
    ld [$08ff], sp
    rst $38
    cp $ff
    add hl, bc
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    db $fc
    rst $38
    dec bc
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$00ff], sp
    nop
    inc bc
    inc bc
    nop
    nop
    ld b, $06
    pop af
    pop af
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld bc, $7f01
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld bc, $0001
    nop
    add b
    add b
    inc b
    inc b
    ei
    ei
    nop
    nop
    rlca
    rlca
    jr c, @+$3a

    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    inc b
    inc b
    jr nz, jr_01b_4f6a

jr_01b_4f6a:
    ld d, b
    ld b, b
    ld [$0000], sp
    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    ld [$e0ff], sp
    cp a
    rst $38
    add b
    rst $38
    cp a
    rst $38
    cp l
    ldh [$b7], a
    ldh [$bf], a
    ldh [$bb], a
    ldh [$be], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$80], a
    rst $38
    cp a
    rst $38
    ld a, a
    push bc
    ld a, a
    jp z, $c57f

    ld a, a
    rst $10
    ld a, a
    rst $08
    ld a, a
    jp $e07f


    ld a, a
    ldh a, [$7f]
    ld hl, sp+$7f
    ld hl, sp+$7f
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
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
    add b
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    add b
    rst $38
    rst $38
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
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

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
    ld hl, sp-$01
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
    db $fc
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    rst $00
    rst $00
    nop
    nop
    nop
    nop
    ld [$f308], sp
    di
    ld [$0e08], sp
    ld c, $00
    nop
    nop
    nop
    ld a, [c]
    ld a, [c]
    nop
    nop
    ldh a, [$f0]
    ld bc, $f601
    or $00
    nop
    add c
    add c
    ld [$6008], sp
    ld h, b
    ld b, $06
    nop
    nop
    rst $38
    rst $38
    ld b, b
    ld b, b
    nop
    nop
    ld [bc], a
    nop
    inc h
    nop
    ld b, b
    nop
    inc b
    inc b
    add l
    inc b
    inc b
    inc b
    add hl, bc
    ld bc, $001e
    ccf
    nop
    ld h, h
    nop
    jr nc, jr_01b_507c

jr_01b_507c:
    ld bc, $ff01
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    cp a
    ld sp, $31ff
    ld a, c
    ld sp, $31fd
    rst $38
    inc sp
    rst $38
    ld a, l
    rst $38
    dec a
    rst $38
    ld a, l
    rst $38
    ccf
    rst $38
    ld a, l
    ld bc, $ffff
    rst $38
    rst $38
    ld a, c
    rst $38
    rst $38
    cp $fe
    cp l
    cp l
    cp a
    cp a
    rst $38
    rst $38
    dec d
    dec d
    rra
    rra
    daa
    daa
    ccf
    ccf
    rst $38
    rst $38
    ld h, b
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
    db $10
    rst $38
    rst $38
    rst $38
    ld [$08ff], sp
    rst $38
    rst $38
    rst $38
    ld [$04ff], sp
    rst $38
    inc b
    rst $38
    db $f4
    rst $38
    rrca
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $ffff
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
    ret nz

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
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    rlca
    rst $38
    nop
    rst $38
    ccf
    ccf
    nop
    nop
    ld bc, $0001
    nop
    ret nz

    ret nz

    ld bc, $0e01
    ld c, $7f
    ld a, a
    jp Jump_000_38c3


    jr c, jr_01b_5137

    ld [bc], a
    nop

jr_01b_5137:
    nop
    nop
    nop
    jr nz, @+$22

    ld bc, $0101
    ld bc, $e0e0
    nop
    nop
    ld b, $06
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    inc c
    inc c
    nop
    nop
    rst $38
    rst $38
    add c
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    ld hl, $0121
    ld bc, $0393
    rst $38
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
    inc bc
    rst $38
    rst $00
    ld a, a
    db $d3
    bit 1, e
    adc $4f
    sbc $5f
    rst $18
    ld e, a
    rst $28
    ld l, a
    rst $18
    ld e, a
    rst $28
    ld l, a
    rst $10
    ld d, a
    ld a, a
    rst $08
    ld a, a
    rst $28
    ld a, a
    rst $18
    ld a, a
    rst $18
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    db $fc
    db $fc
    db $fc
    db $fc
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld a, [$fbfa]
    ei
    rst $38
    rst $38
    rst $38
    or $ff
    rst $30
    rrca
    ld a, [c]
    rst $30
    ld sp, hl
    rlca
    ld sp, hl
    inc bc
    db $fc
    rst $38
    db $fc
    ld bc, $01fe
    cp $00
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
    ldh a, [rIE]
    rrca
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38

jr_01b_51d7:
    rst $38
    rst $38
    jr nz, jr_01b_51d7

    inc hl
    db $fc
    inc hl
    cp $11
    cp $11
    cp $11
    rst $38
    db $10
    rst $38
    add sp, $3f
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld de, $11ff
    rst $38
    ld de, $11ff
    rst $38
    adc c
    ld a, a
    adc c
    ld a, a
    adc b
    ld a, a
    adc b
    rst $38
    adc b
    ld a, a
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    add d
    add d
    and $e6
    ldh [$e0], a
    cp $fe
    nop
    nop
    jr jr_01b_523e

    rlca
    rlca
    nop
    nop
    rlca
    rlca
    add b
    add b
    ld [hl], c
    ld [hl], c
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld [$5108], sp
    ld d, c
    db $10
    db $10
    add hl, hl
    add hl, hl
    ld c, b
    ld c, b

jr_01b_523e:
    add b
    add b
    db $10
    db $10
    xor b
    xor b
    and h
    and h
    and b
    and b
    xor h
    xor h
    xor l
    xor l
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld d, c
    ld d, c
    push hl
    push hl
    add h
    add h
    adc b
    adc b
    ld a, [hl+]
    ld a, [hl+]
    ld c, d
    jp z, $d050

    sub b
    sub b
    ld [hl+], a
    and b
    add [hl]
    add h
    adc d
    adc b
    xor d
    xor b
    jp z, $82c8

    adc b
    jp nz, Jump_000_03dc

    call z, $fce3
    add e
    call c, $fc83
    ld h, e
    db $fc
    inc hl
    db $fc
    jp $83fc


    db $fc
    jp $c3fc


    db $fc
    pop bc
    cp $61
    cp $c1
    cp $81
    cp $01
    cp $81
    cp $01
    cp $01
    cp $41
    call c, $fd20
    add b
    reti


    ld bc, $21c8
    add sp, $05
    ld c, h
    ld hl, $4528
    ld b, h
    ld bc, $a800
    xor b
    adc b
    adc b
    ld b, b
    ld b, b
    ld l, b
    ld l, b
    jp nc, Jump_000_28d2

    jr z, @+$01

    sbc [hl]
    rst $38
    ld l, $ff
    ld e, $ff
    add a
    ld a, a
    adc e
    ccf
    adc $3f
    add $1f
    pop hl
    ld [c], a
    ld [bc], a
    di
    inc bc
    ldh a, [$f0]
    ld sp, hl
    ld bc, $07f8
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ccf
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld de, $11ff
    rst $38
    ld de, $90ff
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld b, d
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld hl, $21ff
    rst $38
    ld de, $11ff
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    ld b, b
    ld b, b
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld [hl], b
    ld [hl], b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld [$1008], sp
    db $10
    and h
    and h
    nop
    nop
    ld b, h
    ld b, h
    add h
    add h
    nop
    nop
    jr nz, jr_01b_5352

    nop
    nop
    and h
    and h
    inc h
    inc h
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    jr nz, @+$22

    nop
    nop
    inc b
    inc b
    ld c, b
    ld c, b
    sub c
    sub c
    nop
    nop
    jr nc, jr_01b_536a

    ld sp, $3921
    ld hl, $101c
    inc e
    nop

jr_01b_5352:
    dec h
    ld hl, $c4e4
    push hl
    add l
    push hl
    add c
    db $ed
    adc c
    ld a, l
    ld de, $81ff
    rst $38
    add b
    rst $38
    add b
    db $eb
    sub h
    jp nz, $f03d

    adc a

jr_01b_536a:
    db $f4
    dec bc
    cp $81
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    ld l, a
    nop
    ld l, a
    jr nz, @+$81

    ld de, $014f
    rst $08
    pop bc
    ld e, a
    ld b, c
    rst $18
    add e
    sbc a
    add c
    sbc a
    add e
    rra
    rlca
    adc c
    adc c
    cp [hl]
    cp [hl]
    jp nz, $c2c2

    jp nz, $c2c2

    ld c, b
    ld c, b
    add c
    add c
    pop af
    pop af
    and b
    and b
    ld d, b
    ld d, b
    sub b
    db $fc
    ld c, b
    cp $48
    rst $38
    inc h
    rst $38
    ld [hl+], a
    rst $38
    ld de, $11ff
    rst $38
    ld [$08ff], sp
    rst $38
    add h
    rst $38
    add h
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld hl, $21ff
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    sub b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld de, $11ff
    rst $38
    db $10
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$84ff], sp
    rst $38
    add h
    rst $38
    add h
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld [$1008], sp
    db $10
    jr nz, jr_01b_5426

    ret nz

    ret nz

    ld b, b
    ld b, b
    add l
    add l
    add hl, bc
    add hl, bc
    ld bc, $0001
    nop
    ld [$0a08], sp
    ld a, [bc]
    dec bc
    dec bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add b
    add b
    ld b, h
    ld b, h
    ld b, b
    ld b, b
    ld b, c
    ld b, c
    ld b, c
    ld b, c

jr_01b_5426:
    ld b, c
    ld b, c
    nop
    nop
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    add c
    add c
    add c
    add c
    ld bc, $1101
    ld de, $1010
    ld [de], a
    ld [de], a
    ld [bc], a
    ld [bc], a
    jr nz, jr_01b_5462

    ld a, [bc]
    nop
    rra
    nop
    ccf
    nop
    rst $30
    nop
    rst $30
    inc b
    rst $20
    inc b

jr_01b_544e:
    and $05
    and $05
    and $05
    db $ec
    dec bc
    db $ec
    dec bc
    db $ec
    dec bc
    ld a, h
    sub e
    ld e, [hl]
    or c
    rra
    ldh [$97], a
    ld l, b

jr_01b_5462:
    add a
    ld a, b
    add a
    ld a, b
    jp nz, $c03c

    ld a, $80
    ld a, [hl]
    nop
    cp $30
    adc $78
    add a
    ld a, b
    add l
    ld hl, sp+$05
    ld hl, sp+$05
    ld hl, sp+$05
    ret c

    rlca
    ret c

    rlca
    ret c

    rlca
    ret c

    rlca
    call c, $dc03
    ld b, e
    call c, $9c43
    inc bc
    sbc h
    add e
    sbc h
    add e
    sbc h
    add e
    cp [hl]
    add e
    cp h
    add c
    ld a, $03
    ld a, $03
    inc a
    dec b
    add hl, sp
    nop
    inc a
    inc c
    add hl, sp
    ld [$0839], sp
    dec sp
    ld a, [de]
    dec sp
    ld a, [de]
    inc hl
    ld [hl+], a
    rlca
    ld b, $47
    ld b, h
    ccf
    jr c, jr_01b_544e

    sub b
    add a
    add b
    rla
    db $10
    dec h
    inc h
    ld bc, $4900
    ld c, b
    add h
    add h
    ld [bc], a
    ld [bc], a
    ld [de], a
    sub d
    ld [bc], a
    jp nz, $e000

    ld bc, $80f1
    ld hl, sp+$40
    ld hl, sp+$40
    db $fc

jr_01b_54cc:
    jr nz, jr_01b_54cc

    db $10
    rst $38
    db $10
    rst $38
    ld [$04ff], sp
    rst $38
    add d
    rst $38
    add d
    rst $38
    ld b, c
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    db $10
    rst $38
    db $10
    rst $38
    ld [$08ff], sp
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    add d
    rst $38
    add d
    rst $38
    add c
    rst $38
    ld b, c
    rst $38
    ld b, b
    rst $38
    inc hl
    rst $38
    inc a
    db $fc
    rra
    pop af
    rra
    pop af
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
    jr jr_01b_5533

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_01b_5543

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_01b_5553

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_01b_5563

    ld [hl-], a

jr_01b_5533:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_01b_5573

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_01b_5543:
    ld b, e
    ld b, h
    ld c, $0e
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, $4c
    ld c, l
    ld c, [hl]
    ld c, a

jr_01b_5553:
    ld d, b
    ld c, $0e
    ld c, $51
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

jr_01b_5563:
    ld e, l
    ld e, [hl]
    ld c, $0e
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld c, $67
    ld l, b
    ld l, c

jr_01b_5573:
    ld l, d
    ld l, e
    ld l, h
    ld c, $6d
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
    ccf
    ld c, $84
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
    ld c, $93
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
    ld c, $a0
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
    ld c, $b0
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
    xor $0e
    rst $28
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$3efb]
    db $fc
    db $fd
    cp $ff
    nop
    ld bc, $0302
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
    jr jr_01b_5646

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_01b_5656

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_01b_5666

    ld a, [hl+]
    dec hl
    inc l
    nop
    nop
    nop
    nop
    nop
    nop

jr_01b_5646:
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    dec b
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop

jr_01b_5656:
    nop
    nop
    nop
    nop
    nop
    dec b
    dec b
    dec b
    dec b
    ld bc, $0000
    nop
    nop
    nop
    nop

jr_01b_5666:
    nop
    nop
    nop
    nop
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0000
    dec b
    ld bc, $0101
    dec b
    dec b
    dec b
    nop
    dec b
    dec b
    dec b
    dec b
    ld bc, $0001
    nop
    nop
    ld bc, $0101
    ld bc, $0201
    nop
    dec b
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0201
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0202
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0101
    nop
    ld [bc], a
    ld bc, $0000
    nop
    ld [bc], a
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
    nop
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld bc, $0121
    ld bc, $0000
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$090a], sp
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$090a], sp
    dec c
    db $10
    db $10
    add h
    add h
    add b
    add b
    sub d
    sub d
    sub d
    sub d
    jr nc, jr_01b_57bc

    inc d
    inc d
    inc d
    inc d
    add d
    add d
    and d
    and d
    inc hl
    inc hl
    dec b
    dec b
    inc hl
    inc hl
    inc bc
    inc bc
    dec c
    dec c
    ld b, l
    ld b, l
    ld de, $0411
    nop
    inc b
    nop
    inc c
    ld [$080c], sp
    rra
    ld de, $111f
    cpl
    ld hl, $212f
    daa
    ld hl, $407e
    ld a, h
    nop
    cp $80
    ld l, [hl]
    nop

jr_01b_57bc:
    ld l, [hl]
    ld [$88ee], sp
    ld l, [hl]
    ld [$80f7], sp
    rst $30
    add h
    rst $30
    add b
    rst $30
    add b
    rst $38
    ld [$08ff], sp
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
    rst $28
    db $10
    ld c, [hl]
    or c
    ld c, b
    or a
    ld c, b
    or a
    ld c, b
    or a
    ld c, h
    or e
    ld l, $d1
    ld l, $d1
    ccf
    ret nz

    rrca
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rTMA], a
    ld sp, hl

jr_01b_57fa:
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00f7
    or $01
    rst $30
    nop
    db $fc
    db $10
    db $f4
    ld [$08c8], sp
    ret z

    inc b
    call nz, $c303
    jr nz, jr_01b_57fa

    jr nc, jr_01b_588c

    db $10
    ld [hl], b
    adc b
    ld hl, sp-$80
    ldh a, [$09]
    ld a, c
    ld c, b
    ld a, b
    ld c, b
    ld a, b
    ld c, h
    ld a, h
    jr c, jr_01b_5864

    jr nc, jr_01b_585f

    ld de, $0213
    rlca
    inc b
    rrca
    add hl, bc
    rra
    ld [de], a
    ccf
    inc h
    ld a, a
    ld c, c
    rst $38
    sub e
    rst $38
    daa
    rst $38
    ld c, l
    db $fd
    sbc e
    ei
    ld [hl], $f6
    ld l, d
    ld [$dcdd], a
    ld a, [$76f9]
    ld [hl], c
    ld l, h
    ld h, e
    sbc b
    sub a
    ld d, c
    ld e, a
    ld a, [hl+]
    rra
    ld a, a
    rra
    rst $38
    rrca
    rst $38
    ld bc, $01ff
    rst $38

jr_01b_585f:
    cp $00
    rst $38
    nop
    rst $38

jr_01b_5864:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    inc bc
    rst $38
    add d
    add d
    ld b, c
    ld b, c
    jr nz, jr_01b_58a6

    jr nz, jr_01b_58a8

    sub b
    sub b
    adc c
    adc c

jr_01b_588c:
    ld b, h

jr_01b_588d:
    ld b, h
    ld [bc], a

jr_01b_588f:
    ld [bc], a
    ld de, $8111
    add c

jr_01b_5894:
    db $10
    db $10
    ld de, $2011

jr_01b_5899:
    jr nz, jr_01b_58bc

    ld hl, $6868
    ld h, b
    ld h, b
    add b
    add b
    nop
    nop
    inc c
    inc c

jr_01b_58a6:
    ld b, b
    ld b, b

jr_01b_58a8:
    ld d, b
    ld d, b
    ld [bc], a
    ld [bc], a
    ld [de], a
    ld [de], a
    ld b, d
    ld b, d
    ld b, b
    ld b, b
    ld [bc], a
    ld [bc], a
    ld [de], a
    ld [de], a
    nop
    nop
    ld [de], a
    ld [de], a
    jr nz, jr_01b_58dc

jr_01b_58bc:
    ld [hl+], a
    ld [hl+], a
    ld b, h
    ld b, h
    inc c
    inc c
    add b
    nop
    sub c
    ld de, $1890
    jp nc, $d01a

    jr jr_01b_588d

    jr z, jr_01b_588f

    jr z, jr_01b_5899

    jr z, jr_01b_5894

    dec l
    add b
    ld l, h
    and c
    ld c, l
    pop bc
    dec c
    ldh [rNR32], a

jr_01b_58dc:
    ldh [rNR23], a
    ldh [rNR23], a
    ld b, b
    or b
    nop
    ldh [rP1], a
    ret nc

    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [$08]
    ld hl, sp+$00
    ldh a, [$08]
    ld hl, sp+$00
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp-$68
    cp b
    ld b, b
    ret nz

    ld a, [hl+]
    xor d
    ld bc, $4481
    call nz, $8404
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld hl, $2021
    jr nz, jr_01b_591d

    db $10
    jr jr_01b_5928

    inc b
    inc b
    ld b, h
    ld b, h
    ld b, $06
    inc bc
    inc bc
    pop de
    pop de
    add b
    add b
    add h

jr_01b_591d:
    add h
    ld [bc], a
    inc bc
    ld b, c
    ld b, e
    ld [bc], a
    rlca
    dec h
    cpl
    ld a, [bc]
    rra

jr_01b_5928:
    dec [hl]
    ld a, a
    ld c, e
    rst $38
    sub a
    rst $38
    dec l
    db $fd
    ld c, b
    ld hl, sp-$6c
    db $f4
    dec h
    db $e4
    ld e, e
    ret c

    and [hl]
    and c
    ld d, h
    ld d, e
    ld l, c
    ld h, a
    sub d
    adc a
    ld [hl-], a
    rrca
    ld h, h
    rra
    ret z

    rst $38
    sub c
    ld a, a
    ld [de], a
    rst $38
    inc h
    rst $38
    ld b, l
    rst $38
    adc c
    rst $38
    sub e
    rst $38
    rla
    cp $27
    db $fc
    rst $38
    db $fc
    cp $f9
    cp $01
    db $fc
    rst $38
    db $fc
    add e
    ld hl, sp+$47
    ld sp, hl
    daa
    pop af
    rra
    ld a, [$ff0f]
    rrca
    rst $38
    rlca
    rst $38
    ld [bc], a
    rst $38
    ld bc, $ff00
    ld bc, $0eff
    rst $38
    ld [hl], b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ccf
    rst $38
    ret nz

    rst $38
    inc bc
    inc bc
    add c
    add c
    ld a, b
    ld a, b
    ld bc, $0001
    nop
    ldh a, [$f0]
    inc c
    inc c
    nop
    nop
    rra
    rra
    nop
    nop
    sbc b
    sbc b
    ld b, b
    ld b, b
    ccf
    ccf
    jr nz, jr_01b_59db

    jr nz, jr_01b_59dd

    jr nz, jr_01b_59df

    sub b
    sbc a
    jr nc, jr_01b_59e3

    ld a, a
    ld a, a
    ld hl, HeaderManufacturerCode
    rra
    ld hl, $413f
    ld e, a
    ld b, c
    ld e, a
    ld b, c
    ld e, a
    ld b, c
    ld e, a
    ld hl, $213f
    ccf
    ld hl, HeaderManufacturerCode
    rra
    nop
    rra
    ld b, b
    ld e, a
    ld b, b
    ld e, a
    jr nz, jr_01b_5a03

    jr nz, jr_01b_5a05

    nop
    rra
    add b
    sbc a
    nop
    rra
    add b
    sbc a
    ld b, b
    ld e, a
    ld b, b
    ld e, a
    ld b, b
    ld e, a
    ld b, b
    ld c, a
    ld b, b
    ld c, a
    nop
    rrca
    sub b

jr_01b_59db:
    sbc a
    db $10

jr_01b_59dd:
    rra
    nop

jr_01b_59df:
    rrca
    nop
    rrca
    ld b, b

jr_01b_59e3:
    ld c, a
    db $10
    rra
    nop
    rrca
    jr nz, jr_01b_5a19

    jr nz, jr_01b_5a1b

    jr nz, jr_01b_5a1d

    nop
    rrca
    ld [$880f], sp
    adc a
    xor b
    xor a
    ld l, b
    ld l, a
    ld l, b
    ld l, e
    ld c, h
    ld c, a
    jr jr_01b_5a17

    inc e
    dec e
    ld a, [de]
    dec de
    ld a, [bc]

jr_01b_5a03:
    dec bc
    adc [hl]

jr_01b_5a05:
    adc a
    ld e, d
    ld e, d
    ld c, d
    ld c, d
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    ld e, $1e
    ld c, [hl]
    ld c, [hl]
    ld e, $1e
    dec b
    rrca
    ld a, [bc]

jr_01b_5a17:
    rra
    dec d

jr_01b_5a19:
    ccf
    xor e

jr_01b_5a1b:
    rst $38
    ld d, a

jr_01b_5a1d:
    rst $38
    xor e
    ei
    ld d, a
    rst $30
    cp e
    ei
    ld l, d
    db $eb
    call nc, $add3
    and e
    ld e, d
    ld d, a
    cp h
    adc a
    dec h
    rra
    ld c, d
    ccf
    sub e
    ld a, a
    and l
    ld a, a
    dec hl
    rst $38
    ld c, e
    cp $97
    db $fc
    daa
    db $fc
    ld l, $f9
    ld c, h
    ei
    sbc h
    rst $38
    cp c
    rst $20
    ld a, c
    rst $20
    ld [hl], d
    rst $08
    db $f4
    adc a
    db $e4
    sbc a
    ret


    ccf
    ret


    ccf
    sub c
    ld a, a
    sub d
    ld a, a
    ld [hl+], a
    rst $38
    inc h
    rst $38
    ld b, h
    rst $38
    ld c, b
    rst $38
    adc b
    rst $38
    sub c
    rst $38
    ld de, $23ff
    rst $38
    inc hl
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $10
    rst $38
    and b
    and b
    rst $38
    and b
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    ld b, e
    rst $38
    db $fc
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    nop
    ldh [$e0], a
    ld e, $1e
    nop
    nop
    ldh [$e0], a
    ld bc, $c001
    ret nz

    ld bc, $ff01
    rst $38
    nop
    nop
    ld hl, sp-$08
    ld [$f008], sp
    ldh a, [$5f]
    xor a
    add hl, hl
    sub $06
    ld sp, hl
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, h
    rst $38
    cp a
    rst $38
    rst $08
    rst $38
    db $e3
    rst $38
    pop af
    ei
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, [$f8fd]
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    rst $38
    ld hl, sp-$01
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$7f
    call c, $ce7f
    ld a, a
    rst $00
    ld a, a
    jp $c17f


    ld a, a
    ldh [$7f], a
    ldh a, [$7f]
    ld hl, sp+$7f
    db $fc
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    cp $78
    ld hl, sp-$42
    cp [hl]
    cp a
    cp a
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    xor e
    rst $38
    ld d, a
    rst $38
    sbc a
    rst $38
    xor l
    rst $38
    ld a, d
    rst $30
    ld a, d
    rst $30
    or l
    rst $38
    ld [hl], l
    rst $28
    ld [$eaff], a
    sbc a
    push de
    cp a
    push de
    ld a, a
    xor c
    ld a, a
    dec sp
    rst $38
    ld e, e
    cp $5f
    cp $97
    cp $a7
    rst $38
    daa
    db $fc
    ld c, a
    ld hl, sp+$4f
    ld hl, sp-$61
    ld hl, sp-$61
    ld hl, sp+$1f
    ldh a, [$3f]
    ldh a, [$3f]
    ldh [$7f], a
    ldh [$7f], a
    ret nz

    ld a, a
    jp $fcff


    rst $38
    add b
    rst $38
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
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    ld b, d
    ld b, d
    ld bc, $7f01
    ld a, a
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    rlca
    rlca
    ret nz

    ret nz

    nop
    nop
    ei
    ei
    nop
    nop
    inc de
    inc de
    nop
    nop
    rst $38
    rst $38
    ccf

jr_01b_5b9d:
    ret nz

    rst $08
    jr nc, jr_01b_5be0

    ret nz

    rst $08
    jr nc, jr_01b_5bd4

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
    xor a
    rst $38
    db $fd
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld d, b
    xor a
    ld e, b
    and a
    ld d, h
    xor e
    jr z, jr_01b_5b9d

    ld d, h
    xor e
    ld d, h
    xor e
    xor b
    ld d, a
    ld b, b
    cp a
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38

jr_01b_5bd4:
    add b
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

jr_01b_5be0:
    rra
    rst $38
    rrca
    rst $38
    add a
    rst $38
    rst $00
    rst $38
    rst $30
    rst $38
    rst $38
    cp a
    rst $38
    adc e
    rst $38
    ld a, e
    cp a
    cp a
    rst $18
    rst $18
    rst $28
    rst $28
    db $fc
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
    ld e, a
    rst $38
    cp a
    rst $38
    cp a
    ldh [$7f], a
    rst $38
    ld a, a
    ret nz

    ret nz

    rst $38
    add b
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
    inc bc
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
    nop
    add b
    add b
    add b
    add b
    ld a, a
    ld a, a
    ld [hl], b
    ld [hl], b
    ld [bc], a
    ld [bc], a
    ret nz

    ret nz

    jr c, jr_01b_5c98

    nop
    nop
    nop
    nop
    rlca
    rlca
    ldh [$e0], a
    ld e, $1e
    ldh [$e0], a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, c
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
    add b
    rst $38

jr_01b_5c98:
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
    db $fd
    db $fd
    ld hl, sp-$08
    and b
    and b
    jp nc, $ffd2

    rst $38
    xor $ee
    ld h, a
    ld h, a
    xor a
    xor a
    cp a
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
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ccf
    rst $38
    ret z

    rst $38
    ld [$0fff], sp
    rst $38
    ld a, a
    rst $38
    sbc a
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
    ccf
    rst $38
    ccf
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    inc hl
    rst $38
    db $fc
    rst $38
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
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, c
    rst $38
    ld a, [hl]
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
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    rrca
    rrca
    nop
    nop
    nop
    nop
    ccf
    ccf
    nop
    nop
    jr nz, jr_01b_5d56

    ld a, $3e
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38

Call_01b_5d41:
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_01b_5d56:
    rst $18
    rst $38
    xor a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    nop
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
    cp a
    cp a
    nop
    nop
    db $10
    db $10
    ld a, [hl]
    ld a, [hl]
    rst $38
    rst $38
    cp a
    cp a
    sbc a
    sbc a
    rst $28
    rst $28
    rst $18
    rst $18
    ret nz

    ret nz

    jp $c3c3


    jp $c2c2


    rst $38
    jp nz, $c2ff

    rst $38
    jp $c0ff


    ccf
    ret nz

    rst $38
    rst $38
    ccf
    rst $38
    ccf
    ld [$ecec], a
    and $e6
    rst $38
    rst $38
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
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
    ld hl, sp-$08
    nop
    nop
    add b
    add b
    ld [hl], c
    ld [hl], c
    inc c
    inc c
    add b
    add b
    ld [hl], b
    ld [hl], b
    rrca
    rrca
    ld hl, sp-$08
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    db $10
    ret nz

    ret nz

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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $04ff
    ei
    add hl, bc
    rst $30
    db $10
    rst $28
    add c
    ld a, a
    db $10
    rst $28
    ld b, c
    cp a
    ld de, $01ef
    rst $38
    ld de, $09ef
    rst $30
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
    ld [bc], a
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
    ld d, l
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, $f7
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    ld c, c
    ld c, c
    push de
    push de
    ld l, e
    ld l, e
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
    inc e
    inc e
    ld d, c
    ld d, c
    ld b, l
    ld b, l
    ld a, a
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
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, e
    rst $38
    db $fc
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    db $10
    rst $38
    db $10
    rst $38
    inc de
    rst $38
    ld a, h
    rst $38
    sub b
    rst $38
    db $10
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$04ff], sp
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld b, b
    ld b, b
    nop
    nop
    ld a, a
    ld a, a
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ld [bc], a
    ld [bc], a
    nop
    nop
    ldh a, [$f0]
    ld c, $0e
    ld bc, $ff01
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
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
    db $fc
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
    rst $38
    push af
    rst $38
    rst $38
    rst $38
    jp hl


    sub [hl]
    or $89
    ld sp, hl
    add [hl]
    ldh a, [$8f]
    ldh [$99], a
    ldh a, [$80]
    ldh [$90], a
    ldh a, [$80]
    ldh [$99], a
    ldh a, [$8f]
    jp hl


    sub [hl]
    or $c9
    ld l, c
    sub $36
    jp hl


    add hl, de
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
    inc bc
    db $fc
    db $10
    ldh [rNR34], a
    ldh a, [rIF]
    cp $07
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $f8ff
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
    nop
    or a
    or a
    jp nz, $ffc2

    rst $38
    rst $38
    rst $38
    ld b, $06
    rst $38
    rst $38
    ld l, $2e
    sbc [hl]
    sbc [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    add b
    nop
    nop
    ld a, a
    ld a, a
    rst $38
    rst $38
    sub l
    sub l
    pop de
    pop de
    ld e, a
    ld e, a
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
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    rst $38
    db $e4
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    rlca
    rst $38
    ld sp, hl
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc a
    inc a
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    inc c
    inc c
    nop
    nop
    ldh a, [$f0]
    rrca
    rrca
    nop
    nop
    ldh [$e0], a
    rra
    rra
    jr jr_01b_5ff0

    nop

jr_01b_5fd9:
    nop
    rrca
    rrca
    ret nz

    ret nz

    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_01b_5ff0:
    inc bc
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_01b_5fd9

    ld b, b
    rst $38
    db $10
    rst $28
    dec d
    ld [$fb04], a
    ld b, $f9
    ld d, e
    db $fc
    rst $38
    ldh a, [$3d]
    ld a, [c]
    cp a
    ld [hl], c
    dec de
    push af
    cp e
    ld [hl], h
    dec sp
    db $f4
    dec e
    ld a, [c]
    dec sp
    db $f4
    dec sp
    db $f4
    ld a, $f1
    sbc a
    ld [hl], b
    inc e
    di
    cp [hl]
    ld h, c
    ld d, b
    rst $28
    pop bc
    ld a, a
    add e
    rst $38
    rrca
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    nop
    rst $38
    nop
    nop
    ld a, [hl]
    nop
    nop
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
    ld a, [hl]
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    and $c3
    jp $ef81


    jp Jump_01b_7ffe


    rst $20
    jp Jump_000_00c3


    rst $20
    nop
    rst $38
    nop
    ld b, d
    nop
    rst $38
    rst $38
    rst $38
    nop
    add c
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    or e
    or e
    dec [hl]
    dec [hl]
    and a
    and a
    db $fc
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
    rst $38
    nop
    rst $38
    rlca
    rst $38
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    ld hl, sp-$01
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

    db $10
    rst $38
    ld [$08ff], sp
    rst $38
    rlca
    rst $38
    ld a, [$02ff]
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rlca
    rlca
    ld h, b
    ld h, b
    rra
    rra
    nop
    nop
    ld [$0008], sp
    nop
    add b
    add b
    db $fc
    db $fc
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld bc, $f001
    ldh a, [rP1]
    nop
    nop
    nop
    cp $fe
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    jp c, $feff

    rst $38
    sbc c
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    adc a
    ld a, a
    adc a
    ld a, a
    rlca
    rst $38
    swap a
    push af
    dec bc
    ld [de], a
    db $ed
    ld [hl], d
    adc l
    sub d
    db $ed
    call nz, Call_01b_787b
    rst $30
    jr nc, @+$01

    ld a, b
    rst $38
    db $fc
    ld a, a
    cp [hl]
    ld a, a
    cp a
    ld a, a
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
    rst $38
    rst $38
    rst $38
    ccf
    rrca
    rlca
    ld a, e
    rrca
    di
    ld a, a
    rst $20
    rst $38
    adc $ff
    sbc $ff
    cp [hl]
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
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    sub d
    sub d
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    ldh [$e0], a
    nop
    nop
    rra
    rra
    db $ed
    db $ed
    xor h
    xor h
    xor c
    xor c
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
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    rlca
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    ccf
    rst $38
    ret nz

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
    ld b, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    db $10
    rst $38
    db $10
    rst $38
    ld [$04ff], sp
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_01b_61da

    ld c, $0e
    ld bc, $1001
    stop
    nop
    ld b, e
    ld b, e
    ret nz

    ret nz

    ld [bc], a
    ld [bc], a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld b, a
    ld b, a
    nop
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
    rst $38
    rst $38
    rst $38
    ld a, h
    rst $38
    inc a
    rst $38
    ld l, $ff
    adc a
    rst $38
    rst $08
    rst $38

jr_01b_61da:
    rst $20
    rst $38
    pop af
    rst $38
    ei
    rst $38
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
    inc bc
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    inc de
    rst $38
    ld sp, $b1e7
    rst $20
    db $ed
    di
    add sp, -$0b
    ldh a, [$fc]
    di
    ld hl, sp-$09
    ld sp, hl
    ld hl, sp-$0f
    cp $f1
    pop af
    db $fd
    di
    rst $38
    pop af
    rst $38
    pop hl
    rst $38
    call Call_000_20f3
    jp $df00


    nop
    rst $38
    and d
    rst $38
    ld d, c
    rst $38
    or d
    rst $38
    ld [bc], a
    rst $38
    sub a
    rst $38
    dec [hl]
    rst $38
    sub l
    rst $38
    rla
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
    cp $ff
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    db $ec
    rst $38
    cp $03
    cp $03
    cp $ff
    cp $17
    cp $53
    cp $ff
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $ff
    cp $ff
    ld [bc], a
    cp $01
    rst $38
    rlca
    rst $38
    ld hl, sp-$01
    ld b, b
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    ld [$04ff], sp
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rlca
    rst $38
    jr c, @+$01

    ret nz

    rst $38
    ld b, b
    ld b, b
    ld e, $1e
    ldh a, [$f0]
    ld bc, $0001
    nop
    rra
    rra
    add b
    add b
    ld h, b
    ld h, b
    ld bc, $8001
    add b
    jr nz, jr_01b_62c6

    nop
    nop
    nop
    nop
    ld [$ff08], sp
    rst $38
    ld [$1008], sp
    db $10
    db $fc
    db $fc
    ei
    rlca
    push hl
    ld a, [de]
    ld a, [$e405]
    dec de
    ldh a, [rIE]
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_01b_62c6:
    nop
    rst $38
    nop
    rst $38
    and b
    rst $38
    ret z

    rst $30
    ld a, [c]
    db $fd
    pop hl
    cp $f3
    db $fc
    ld a, c
    cp $7d
    cp $bf
    rst $38
    sbc d
    rst $38
    adc l
    rst $38
    add [hl]
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
    ret z

    rst $38
    call c, $dcff
    rst $38
    call c, $dcff
    rst $38
    db $fc
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
    inc bc
    rst $38
    inc bc
    rst $38
    sbc e
    rst $38
    ld a, a
    rst $38
    sub a
    rst $38
    ld e, a
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
    rst $38
    rst $38
    ccf
    ccf
    rrca
    rrca
    rst $00
    rst $00
    pop hl
    pop hl
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ld l, c
    ld l, c
    xor l
    xor l
    ccf
    ccf
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
    jp nz, $01ff

    rst $38
    adc a
    cp a
    ret nz

    rst $08
    jr nc, @-$07

    ld [$06fb], sp
    cp $01
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
    ldh [rIE], a
    db $10
    rst $38
    ld [$06ff], sp
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
    ld bc, $0eff
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ret nz

    ld c, $0e
    rlca
    rlca
    ret nc

    ret nc

    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld b, c
    ld b, c
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld hl, sp-$08
    add b
    add b
    db $10
    db $10
    ld bc, $fe01
    cp $44
    cp h
    add h
    ld a, h
    inc b
    db $fc
    dec b
    db $fd
    db $fc
    db $fc
    rra
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    ld a, a
    db $fc
    ld a, a
    db $fc
    ld a, a
    db $fc
    ld a, a
    db $fc
    ld a, a
    db $fc
    ld a, a
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$07
    ld sp, hl
    ld hl, sp-$08
    ld sp, hl
    ld sp, hl
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld a, [$fcfa]
    db $fc
    ld a, [$fdfa]
    db $fd
    rst $38
    rst $38
    ld hl, sp-$08
    sbc a
    ld [hl], c
    add a
    ld a, b
    pop bc
    cp $ff
    ld a, a
    ret nz

    ld a, a
    ret nz

    rst $38
    rst $38
    ld a, a
    ret nz

    ld a, a
    ldh [$7f], a
    ret c

    ld a, a
    add $7f
    rst $38
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    rst $38
    ret nz

    rst $38
    nop
    rst $38
    adc a
    rst $38
    ldh a, [rIE]
    db $10
    rst $38
    inc c
    rst $38
    inc bc

jr_01b_644d:
    rst $38
    nop
    rst $38
    add b
    cp a
    ld b, b
    rst $18
    jr nc, jr_01b_644d

    add hl, bc
    ld sp, hl
    or $fe
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
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    jr @+$01

    inc b
    rst $38
    rlca
    rst $38
    add hl, sp
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
    rra
    rra
    add b
    add b
    db $fc
    db $fc
    inc bc
    inc bc
    rrca
    rrca
    nop
    nop
    ldh [$e0], a
    ld b, b
    ld b, b
    jp Jump_000_00c3


    nop
    ret nz

    ret nz

    ccf
    ccf
    ret nz

    ret nz

    ld bc, $4601
    ld b, [hl]
    jr jr_01b_64b8

    ld h, b
    ld h, b
    add c
    add c
    ld bc, $0001
    nop
    sub b
    sub b
    add b
    add b
    ld sp, $1131
    ld de, $0000
    add b
    add b
    add b
    add b
    ld b, b
    ld b, b

jr_01b_64b8:
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld d, b
    ld d, b
    ld b, b
    ld b, b
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    add h
    add h
    ld [$8008], sp
    add b
    nop
    nop
    add c
    add c
    add c
    add c
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld [hl+], a
    ld [hl+], a
    ld a, [bc]
    ld a, [bc]
    inc b
    rlca
    inc c
    dec c
    inc b
    rlca
    nop
    ld bc, $8382
    add b
    add b
    ld b, e
    ld b, e
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    jr nz, @+$22

    jr nz, jr_01b_6512

    ld [$0108], sp
    ld bc, $4848
    ld bc, $8001
    add b
    adc b
    adc b
    ld [$8808], sp
    adc b
    nop
    nop
    nop
    nop
    inc c
    inc c
    jr nz, jr_01b_652a

    ld hl, $c121
    pop bc
    ld bc, $1901
    add hl, de

jr_01b_6512:
    db $10
    db $10
    ld [$8808], sp
    adc b
    ld c, b
    ld c, b
    jr z, jr_01b_6544

    ld [hl], h
    ld [hl], h
    sub $d6
    rst $38
    ld l, e
    rst $38
    ld c, $ff
    dec b
    ld a, a
    add d
    rra
    db $e3

jr_01b_652a:
    rlca
    ld sp, hl
    db $fd
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
    ld h, b
    rst $38
    jr @+$01

    inc b
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    rrca
    rst $38

jr_01b_6544:
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b

jr_01b_654f:
    rst $38
    ld h, b
    rst $38
    dec de
    rst $38
    ld a, h
    rst $38
    add e
    rst $38
    nop
    rst $38
    nop
    ld a, a
    ret nz

jr_01b_655d:
    rst $18
    jr nz, jr_01b_654f

    jr jr_01b_655d

    ld b, $fe
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld bc, $0eff
    rst $38
    ldh a, [rIE]
    nop
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
    add b
    add b
    ld a, h
    ld a, h
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ld c, $0e
    nop
    nop
    ld [bc], a
    ld [bc], a
    jp z, Jump_000_29ca

    add hl, hl
    ld b, $06
    jr jr_01b_65b0

    ld h, b
    ld h, b
    add b
    add b
    ld b, b
    ld b, b
    nop
    nop
    ld [$0408], sp
    inc b
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    db $10
    db $10

jr_01b_65b0:
    sub b
    sub b
    sub c
    sub c
    sub c
    sub c
    ld bc, $0101
    ld bc, $0a0a
    ld [$0809], sp
    add hl, bc
    ld a, [bc]
    dec bc
    ld b, d
    ld b, e
    ld c, d
    ld c, e
    ld b, d
    ld b, e
    ld c, [hl]
    ld c, a
    inc d
    rra
    db $10
    rra
    nop
    rra
    inc d
    rra
    db $10
    rra
    db $10
    rra
    jr nz, jr_01b_6607

    jr nz, @+$41

    ld h, b
    ld a, a
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
    ld a, a
    add b
    rst $38
    add b
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    add b
    rst $38
    nop
    rst $18
    nop
    rst $08
    sub b
    sbc a
    adc b
    adc a
    ret z

    rst $08
    ld l, b
    ld l, a
    jr nz, jr_01b_6631

    ld [$180f], sp
    rra
    nop

jr_01b_6607:
    rrca
    ld [$400f], sp
    ld b, a
    ld b, b
    ld b, e
    ld b, h
    ld b, a
    inc l
    inc l
    inc h
    inc h
    inc h
    inc h
    ld [bc], a
    ld [bc], a
    ld de, $1011
    db $10
    db $10
    stop
    nop
    rst $38
    ld [bc], a
    rst $38
    add b
    rst $38
    ld b, $ff
    adc c
    rst $38
    sbc h
    rst $38
    jp z, Jump_01b_44ff

    ld a, a
    add e
    rra

jr_01b_6631:
    pop hl
    rlca
    ld hl, sp-$01
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
    rst $08
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
    nop
    rst $38
    nop
    rst $38
    rra

jr_01b_6651:
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    jr nz, @+$01

    jr @+$01

    ld b, $ff
    ld bc, $00ff
    rst $38
    nop
    ld a, a
    rst $00
    rst $18
    jr nz, jr_01b_6651

    ret c

    ei
    inc b
    db $fd
    inc bc
    rst $38
    rrca
    rrca
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    add $c6
    ld bc, $0601
    ld b, $98
    sbc b
    ld h, b
    ld h, b
    add b
    add b
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc d
    inc d
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    ld d, d
    ld d, d
    add b
    add b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    adc b
    adc b
    nop
    nop
    nop
    nop

jr_01b_66a6:
    ld [$0448], sp
    ld h, b
    ld b, $e4
    inc bc
    ld [c], a
    ld bc, $01f1
    pop hl
    inc bc
    db $e3
    rlca
    and $03
    ld [c], a
    inc bc
    ret nz

    ld b, $c4
    rlca
    ret nz

    rrca
    adc b
    rra
    ret c

    rra
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    ld bc, $01fe
    cp $01
    cp $00
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $18
    nop
    cp a
    ld b, b
    rst $38
    ld b, b
    rst $18
    ret nz

    rst $18
    pop bc
    bit 0, b
    ret z

    jr nz, jr_01b_66a6

    ld bc, $6085
    ldh [$82], a
    add d
    add b
    add b
    adc b
    adc b
    nop
    add b

jr_01b_670a:
    and b
    and b
    inc b
    inc b
    ld h, h
    ld h, h
    inc b
    inc b
    dec b
    dec b
    add h
    add h
    ld b, $06
    adc b
    adc b
    jp c, $fcda

    db $fc
    ld a, b
    ld a, b
    rst $38
    cp b
    rst $38
    pop de
    rst $38
    ld h, e
    ld a, a
    sub e
    rra
    rst $20
    rlca
    ei
    inc bc
    db $fc
    rrca
    rst $38
    ldh a, [rIE]
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
    rra
    rst $38
    cp $ff
    ld bc, $ceff
    rst $38
    ldh a, [rIE]
    ld [$06ff], sp
    rst $38
    ld bc, $00ff
    rst $38
    nop
    ld a, a
    add b

jr_01b_6751:
    cp a
    ld h, b
    rst $28
    jr jr_01b_6751

    inc b
    db $fd
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    inc b
    adc c
    adc c
    ld b, [hl]
    ld b, [hl]
    jr @+$1a

    ld h, h
    ld h, h
    add h
    add h
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [de], a
    ld [de], a
    ret nz

    ret nz

    add d
    add d
    ld h, d
    ld h, d
    nop
    nop
    ld de, $1910
    jr jr_01b_670a

    adc b
    jr z, jr_01b_678c

    jr nz, jr_01b_6786

jr_01b_6786:
    add hl, hl
    ld bc, $0019
    sbc c
    add b

jr_01b_678c:
    ld e, e
    ld b, b
    ld c, [hl]
    ld b, b
    inc l
    jr nz, jr_01b_67b2

    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    ccf
    jr nz, jr_01b_67dc

    jr nz, jr_01b_67de

    jr nz, jr_01b_67e0

    jr nz, jr_01b_67e2

    nop
    rra
    nop
    ccf
    jr nz, jr_01b_67c8

    nop
    rra
    db $10
    rra
    db $10
    rst $38
    jr nz, @+$01

    nop

jr_01b_67b2:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_01b_67c8:
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    rlca
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    ld bc, $00fe
    ld a, a
    ld b, b
    ld a, a

jr_01b_67dc:
    ld b, b
    ld e, d

jr_01b_67de:
    nop
    ld c, e

jr_01b_67e0:
    nop
    nop

jr_01b_67e2:
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    jr nz, jr_01b_680c

    ret nz

jr_01b_67ed:
    ret nz

    ld b, c
    ld b, c
    add c
    add c
    dec b
    dec b
    inc b
    inc b
    inc b
    inc b
    db $10
    db $10
    jr nz, jr_01b_681c

    ld [hl], b
    ld [hl], b
    ret nc

    ret nc

    ld d, d
    ld d, d
    ld l, e
    ld l, e
    reti


    reti


    sbc h
    sbc h
    rst $08
    rst $08
    inc sp
    inc sp

jr_01b_680c:
    dec de
    dec de
    nop
    nop
    ccf
    ret nz

    rrca
    ldh a, [$03]
    db $fc
    nop
    rst $38
    ld bc, $3eff
    rst $38

jr_01b_681c:
    ret nz

    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    jr nc, @+$01

    inc c
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    rlca
    rst $38
    jr c, @+$01

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
    add b
    rst $38
    ld b, b
    rst $38
    jr nc, @+$01

    inc c
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $38
    nop
    ld a, a
    add b
    cp a
    ld h, b
    rst $28
    ld de, $40f7
    ld b, b
    adc b
    adc b
    ld [bc], a
    ld [bc], a
    nop
    nop
    add d
    add d
    ld bc, $0101
    ld bc, $0006
    ld [bc], a
    nop
    ld e, $00
    and b
    jr nz, jr_01b_67ed

    nop
    adc [hl]
    nop
    adc [hl]
    nop
    sub h
    db $10
    inc d
    db $10
    rrca
    ld [$4849], sp
    jr nz, jr_01b_6896

    jr jr_01b_6890

    nop
    nop
    inc h
    inc h
    reti


    ld de, $0018
    ld e, $00
    add e
    nop
    add c
    nop
    and b
    jr nz, @-$6e

    stop
    nop
    add h
    inc b
    sub b
    db $10

jr_01b_6890:
    sub b
    db $10
    db $e4
    inc b
    db $f4
    inc b

jr_01b_6896:
    ld a, [c]
    ld [bc], a
    ld a, [c]
    ld [bc], a
    ld hl, sp+$00
    ld sp, hl
    ld bc, $01f9
    ld sp, hl
    nop
    ei
    ld [bc], a
    pop af
    ld bc, $01f1
    ldh a, [rP1]
    ldh a, [$08]
    ldh a, [$08]
    ld hl, sp+$00
    ld hl, sp+$04
    ld hl, sp+$07
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
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
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ld sp, hl
    ld b, $f9
    ld b, $f8
    rlca
    ldh a, [rIF]
    ld [bc], a
    cp $02
    cp $04
    db $fc
    inc b
    sbc h
    db $10
    db $10
    db $10
    stop
    jr nz, jr_01b_6939

    ld d, b
    nop
    nop
    ld b, h
    ld b, h
    inc b
    inc b
    inc b
    inc b
    ld [$0808], sp
    ld [$0000], sp
    nop
    nop
    nop
    nop
    db $10
    db $10
    db $10
    stop
    nop
    add h
    add h
    and l
    and l
    and b
    and b
    sbc l
    sbc l
    ret nc

    ret nc

    or $f6
    ld e, l
    ld e, l
    rst $38
    ld a, $ff
    dec c
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ret nz

    rrca
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
    ld bc, $0eff
    rst $38
    ldh a, [rIE]
    jr nc, @+$01

    ld [$06ff], sp
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop

jr_01b_6939:
    rst $38
    nop
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
    ld h, [hl]
    rst $38
    jr @+$01

    inc l
    rst $38
    jp Jump_000_00ff


    rst $38
    nop
    nop
    add h
    add h
    nop
    nop
    ld bc, $0101
    ld bc, $1111
    ld bc, $8401
    add h
    add sp, -$18
    inc b
    nop
    db $fc
    nop
    ld a, b
    nop
    ld e, $00
    inc c
    nop
    ld e, [hl]
    ld d, b
    ld b, $00
    nop
    nop
    ld [$4808], sp
    ld c, b
    ld bc, $0500
    inc b
    rlca
    nop
    rlca
    nop
    rlca
    nop
    ld [hl], c
    ld [hl], b
    ld a, b
    ld [$0070], sp
    ld [hl], b
    nop
    inc [hl]
    inc b
    ld sp, $2300
    nop
    rlca
    nop
    cpl
    jr z, jr_01b_69b2

    nop
    ld a, a
    ld b, b
    ld a, a
    ld b, b
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
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    add b
    ccf
    ld b, b
    ccf
    ld b, b
    cp a
    ret nz

jr_01b_69b2:
    ccf
    ld b, b
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    cp $00
    cp $00
    db $fc
    nop
    db $fc
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    cp $00
    ccf
    add c
    ld a, $00
    ld a, [de]
    ld a, [hl+]
    ld d, b
    ld [hl], b
    nop
    jr nz, jr_01b_6a47

    ld h, d
    inc h
    inc h
    ld [$0808], sp
    ld [$1010], sp
    db $10
    db $10
    ld [de], a
    ld [de], a
    ld [hl-], a
    ld [hl-], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [bc], a
    ld [bc], a
    add b
    add b
    ld b, b
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
    inc b
    inc b
    add b
    add b
    add b
    add b
    inc c
    inc c
    dec c
    dec c
    ld [de], a
    ld [de], a
    ld e, $1e
    ld e, $1e
    dec de
    dec de
    rlca
    rlca
    rlca
    rlca
    ccf
    jp $f20f


    inc sp
    db $fc
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
    add b
    rst $38
    ld h, b
    rst $38
    jr @+$01

    ld b, $ff
    ld bc, $06ff
    rst $38
    jr @+$01

    rst $38
    jr nz, @+$01

    ret nz

    rst $38
    nop
    rst $38

jr_01b_6a47:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $81
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0808], sp
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_01b_6a85

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_01b_6a95

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

jr_01b_6a85:
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
    ld b, b
    ld b, c
    inc [hl]

jr_01b_6a95:
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
    ld d, b
    ld [$5108], sp
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
    ld [$0808], sp
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
    ld l, d
    ld [$0808], sp
    ld [$6c6b], sp
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
    ld [$0808], sp
    ld [$7877], sp
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld b, a
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    ld [$0808], sp
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    ld a, a
    adc h
    adc l
    adc [hl]
    adc a
    inc [hl]
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
    ld b, a
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    ld b, a
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    cp $ff
    nop
    ld b, a
    ld b, a
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld b, a
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
    jr jr_01b_6b9e

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_01b_6bae

    ld [hl+], a
    inc hl
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
    nop

jr_01b_6b9e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01b_6bae:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec b
    ld bc, $0101
    ld hl, $0101
    ld bc, $0101
    nop
    dec b
    nop
    nop
    nop
    nop
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld [bc], a
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld [bc], a
    ld bc, $0102
    nop
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    nop
    ld bc, $0001
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0002
    ld bc, $0000
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0002
    ld bc, $0200
    ld bc, $0201
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld bc, $0200
    ld [bc], a
    ld bc, $0002
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld bc, $0200
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0002
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0009
    nop
    ld a, [bc]
    ld a, [bc]
    ld [$080a], sp
    ld [$000d], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0a08], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0a08], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add b
    add b
    nop
    nop
    ld [$0808], sp
    ld [$0808], sp
    inc b
    inc b
    inc d
    inc d
    ld [hl+], a
    ld [hl+], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld [$0008], sp
    nop
    inc h
    inc h
    inc h
    inc h
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, h
    ld b, h
    ld [hl+], a
    ld [hl+], a
    db $10
    db $10
    jr jr_01b_6d18

    inc b
    inc b
    nop
    nop
    inc c
    inc c
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    add h
    inc b
    ret nz

    nop
    pop bc
    ld bc, $01e1
    pop hl
    ld bc, $02e2

jr_01b_6d18:
    ld [c], a
    ld [hl+], a
    ld [c], a
    ld [hl+], a
    ldh [rP1], a
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rP1]
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    inc b
    db $fc
    inc b
    cp $02
    db $fd
    nop
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    xor $11
    xor $11
    cp $01
    add sp, $17
    ldh [$1f], a
    ret nz

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
    ld bc, $03ff
    ei
    nop
    ldh a, [rP1]
    ldh a, [$08]
    ld hl, sp+$04
    db $fc
    nop
    db $fc
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
    cp $00
    cp $00
    rst $38
    nop
    rrca
    nop
    rlca
    ld [$080f], sp
    rrca
    ld [$880f], sp
    adc e
    ld c, b
    ld c, e
    inc h
    inc h
    dec h
    dec h
    ld de, $1911
    add hl, de
    ld d, $16
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, hl
    add hl, hl
    ld a, [hl+]
    dec hl
    inc a
    ccf
    ld b, h
    ld b, a
    ld c, b
    ld c, a
    ld c, b
    ld c, a
    db $10
    rra
    nop
    nop
    and b
    and b
    jr nz, jr_01b_6dd6

    jr nz, jr_01b_6dd8

    jr z, @+$2a

    jr nz, jr_01b_6ddc

    jr nz, jr_01b_6dde

    nop
    nop
    ld bc, $1001
    db $10
    db $10
    db $10
    ret nc

    ret nc

    ld c, b
    ld c, b
    ld c, h
    ld c, h
    inc b
    inc b
    ld [de], a
    ld [de], a
    ld [bc], a
    ld [bc], a
    ld bc, $0301
    inc bc

jr_01b_6dd6:
    ld [bc], a
    ld [bc], a

jr_01b_6dd8:
    ld h, d
    ld h, d
    ld [hl+], a
    ld [hl+], a

jr_01b_6ddc:
    ld h, $26

jr_01b_6dde:
    ld bc, $0101
    ld bc, $4040
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, e
    ld b, e
    ld b, c
    ld b, c
    add l
    add l
    ld bc, $0001
    nop
    jr nz, jr_01b_6e16

    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld b, b
    ld b, b
    jr nc, jr_01b_6e6e

    ld de, $1c71
    ld a, h
    inc b
    ld [hl], h
    ld [$08f8], sp
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$00
    ld a, b

jr_01b_6e16:
    nop
    ld a, c
    nop
    ld a, c
    ld [$00f9], sp
    ld sp, hl
    nop
    ei
    nop
    ld a, [$fa00]
    inc b
    cp $04
    cp $04
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
    cp $00
    cp $00
    db $fc
    ld [bc], a
    ld a, [$f606]
    inc b
    db $f4
    inc b
    db $f4

jr_01b_6e42:
    inc b
    db $f4
    inc b
    call nz, $e020
    jr jr_01b_6e42

    nop
    ldh a, [rP1]
    ldh a, [$08]
    ld hl, sp+$20
    ldh [rNR10], a
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$50]
    ret nc

    sub b
    sub b
    db $10
    db $10
    add d
    add d
    ld bc, $0801
    ld [$0808], sp
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b

jr_01b_6e6e:
    jr nz, jr_01b_6e90

    ld de, $8811
    adc b
    adc b
    adc b
    ld b, h
    call nz, $c444
    ld h, e
    db $e3
    ld b, e
    jp Jump_000_1616


    ld [de], a
    ld [de], a
    sbc d
    sbc d
    adc e
    adc e
    di
    di
    ld h, $e7
    ld a, d
    ei
    ld c, h
    rst $08
    ld e, h
    rst $18

jr_01b_6e90:
    ld e, b
    rst $18
    ld d, c
    ld e, a
    ld sp, $223f
    ccf
    ld [c], a
    rst $38
    ld b, h
    ld a, a
    add h
    rst $38
    adc b
    rst $38
    ld [$10ff], sp
    rst $38
    ld de, $21ff
    rst $38
    ld [hl+], a
    rst $38
    ld b, d
    rst $38
    ld b, h
    rst $38
    add h
    rst $38
    add b
    cp a
    add b
    cp a
    ld b, b
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    ccf
    ld b, b
    ld a, a
    ld b, b

jr_01b_6ebf:
    ld e, a
    ld b, b
    ld e, a
    ld b, b
    ld e, a
    ld b, b
    ld e, a
    ld b, b
    ld e, a
    ld b, b
    ld e, a
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    jr nz, @+$31

    and b
    xor a
    jr nz, @+$31

    db $10
    rra
    db $10
    rra
    db $10
    rra
    nop
    rrca
    nop
    rrca
    sub b
    sbc a
    sub b
    sbc a
    ld c, b
    ld c, a
    ld b, b
    ld b, a
    ld b, b
    ld b, a
    ld [$000f], sp
    rlca
    nop
    rlca
    add b
    add a
    add b
    add a
    nop
    rlca
    jr nz, jr_01b_6f21

    jr nz, @+$25

    jr nz, jr_01b_6f21

    jr nz, jr_01b_6f23

    nop
    inc bc
    jr nz, @+$25

    jr nz, jr_01b_6f29

    jr nz, @+$25

    jr nz, jr_01b_6f2d

    jr nz, jr_01b_6f2f

    db $10
    inc de
    ld [$0409], sp
    dec b
    inc b
    dec b
    ld b, h
    ld b, l
    ld b, h
    ld b, l
    ld b, h
    ld b, l
    ld b, b
    ld b, c
    jr nz, jr_01b_6ebf

    jr nz, jr_01b_6f41

    inc h

jr_01b_6f21:
    dec h
    ld [hl+], a

jr_01b_6f23:
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld hl, $0121

jr_01b_6f29:
    ld bc, $0101
    ld [hl+], a

jr_01b_6f2d:
    ld [hl+], a
    ld [hl+], a

jr_01b_6f2f:
    ld [hl+], a
    ld de, $0911
    add hl, bc
    ld [$0808], sp
    ld [$0000], sp
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld hl, $2121

jr_01b_6f41:
    ld hl, $1111
    ld bc, $4101
    ld b, c
    ld b, l
    ld b, l
    dec h
    dec h
    dec h
    dec h
    dec d
    dec d
    dec bc
    dec bc
    dec bc
    dec bc
    adc c
    adc c
    add l
    add l
    add h
    add h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    inc h
    inc h
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc d
    inc d
    inc d
    inc d
    pop de
    pop de
    ld d, l
    ld d, l
    ld a, $3f
    inc [hl]
    scf
    and l
    and a
    ret


    rst $08
    jp z, $d2cf

    rst $18
    inc h
    ccf
    inc h
    ccf
    ld c, c
    ld a, a
    ld c, c
    ld a, a
    sub c
    rst $38
    ld [de], a
    rst $38
    ld [hl+], a
    rst $38
    inc h
    rst $38
    ld b, h
    rst $38
    ld c, b
    rst $38
    adc b
    rst $38
    sub b
    rst $38
    ld de, $11ff
    rst $38
    ld hl, $23ff
    rst $38
    ld b, e
    rst $38
    ld b, a
    rst $38
    add a
    rst $38
    add a
    rst $38
    adc a
    rst $38
    rrca
    rst $38
    ld c, $ff
    ld e, $ff
    ld e, $ff
    inc a
    rst $38
    inc a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    rst $38
    ccf
    ld [c], a
    ccf
    rst $28
    ccf
    rst $38
    ccf
    rst $38
    ccf
    cp $1f
    cp $1f
    cp $1f
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
    rrca
    rst $38
    rrca
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
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    ld a, a
    ld bc, $817f
    cp a
    pop hl
    rst $38
    and c
    cp a
    sub b
    sbc a
    add b
    adc a
    sub b
    sub a
    sbc b
    sbc a
    adc b
    adc e
    sub h
    sub a
    adc d
    adc e
    adc c
    adc c
    adc c
    adc c
    ld b, l
    ld b, l
    ld d, l
    ld d, l
    ld b, l
    ld b, l
    push bc
    push bc
    db $dd
    db $dd
    ret z

    ret z

    ret z

    ret z

    ld b, h
    ld b, h
    ld b, h
    ld b, h
    jp nz, $c2c2

    jp nz, $ffff

    ld d, h
    ld a, a
    and h
    rst $38
    xor c
    rst $38
    ld c, c
    rst $38
    ld d, e
    rst $38
    sub e
    rst $38
    and e
    rst $38
    daa
    rst $38
    daa
    rst $38
    ld b, a
    rst $38
    ld c, a
    rst $38
    adc [hl]
    rst $38
    sbc [hl]
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc a
    rst $38
    jr c, @+$01

    jr c, @+$01

    ld a, b
    rst $38
    ld [hl], c
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    ld [c], a
    rst $38
    ld [c], a
    rst $38
    ld [c], a
    rst $38
    jp nz, $c4ff

    rst $38
    call nz, $84ff
    rst $38
    adc b
    rst $38
    ld [$08ff], sp
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld de, $21ff
    rst $38
    ld hl, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    rst $38
    cp a
    rst $38
    ld e, a
    rst $38
    or $ff
    rst $38
    ld c, [hl]
    rst $38
    ld a, a
    rst $38
    ld de, $a0ff
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
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    adc b
    rst $30
    sub b
    rst $28
    add b
    rst $38
    add h
    ei
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
    ret nz

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
    pop hl
    rst $38
    di
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
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    ld bc, $00ff
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    jp z, $caff

    rst $38
    sub d
    rst $38
    sub h
    rst $38
    sub h
    rst $38
    inc d
    rst $38
    inc h
    rst $38
    dec h
    rst $38
    add hl, hl
    rst $38
    ld c, c
    rst $38
    ld c, c
    rst $38
    ld c, c
    rst $38
    adc e
    rst $38
    sub e
    rst $38
    sub e
    rst $38
    sub d
    rst $38
    ld [de], a
    rst $38
    ld h, $ff
    ld h, $ff
    ld h, $ff
    inc h
    rst $38
    inc h
    rst $38
    ld c, h
    rst $38
    ld c, h
    rst $38
    ld c, l
    rst $38
    ld c, l
    rst $38
    ld c, c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sbc d
    rst $38
    ld [hl-], a
    rst $38
    ld [hl-], a
    rst $38
    ld [hl-], a
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
    rst $30
    rst $38
    rra
    rst $38
    ld c, l
    sub c
    rst $38
    add b
    rst $38
    rst $28
    rst $38
    rla

jr_01b_71b7:
    rst $38
    nop
    rst $38
    ld [hl-], a
    rst $38
    rlca
    rst $38
    adc e
    ld a, a
    rlca
    rst $38
    db $10
    rst $28
    nop
    rst $38
    adc b
    ld [hl], a
    ld a, [hl+]
    push de
    ld a, [hl+]
    push de
    dec d
    ld [$55aa], a
    ld d, h
    xor e
    dec d
    ld [$55aa], a
    ld d, h
    xor e
    ld [hl+], a
    db $dd
    add hl, bc
    or $04
    ei
    jr z, jr_01b_71b7

    nop
    rst $38
    nop
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
    ld [hl+], a
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
    rst $38
    rst $38
    rst $38
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
    db $fc
    rrca
    cp $ff
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
    rst $28
    rst $38
    ld bc, $ffff
    ld [$3cff], sp
    rst $38
    cp c
    rst $38
    cp a
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
    and l
    rst $38
    and l
    rst $38
    and l
    rst $38
    and l
    rst $38
    ld b, l
    cp $49
    cp $49
    cp $49
    rst $38
    ld c, e
    db $fc
    ld c, e
    db $fc
    ld c, e
    db $fc
    adc e
    db $fc
    adc e
    db $fc
    adc e
    db $fc
    adc e
    db $fc
    sub e
    db $fc
    sub e
    db $fc
    sub e
    rst $38
    sub e
    db $fc
    inc de
    db $fc
    inc de
    db $fc
    inc de
    db $fc
    rla
    ld hl, sp+$17
    ld hl, sp+$17
    ld hl, sp+$27
    ld hl, sp+$27
    ld hl, sp+$27
    rst $38
    daa
    ld hl, sp+$27
    ld hl, sp+$57
    xor b
    cpl
    ret nc

    rrca
    ldh a, [$0d]
    ld a, [c]
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ret


    rst $38
    rst $38
    rst $38
    ld e, h
    rst $38
    ldh [rIE], a
    ld c, e
    rst $38
    sbc l
    rst $38
    rst $00
    rst $38
    cp l
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
    add b
    ld a, a
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
    ld h, b
    rst $38
    ldh a, [rIE]
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
    cp $fe
    ld a, [$f0fa]
    ldh a, [rBCPS]
    ld l, b
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_01b_7318

    rst $28
    rst $28
    add sp, -$18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld [c], a
    rst $38
    jr nz, @+$01

    ld b, b
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
    rst $38
    rst $38
    rst $38
    rst $38

jr_01b_7318:
    rst $38
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    rra
    rst $38
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
    nop
    rst $38
    rra
    rst $38
    ldh [rIE], a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    xor l
    rst $38
    ld hl, sp-$01
    push hl
    rst $38
    ld h, a
    rst $38
    xor l
    rst $38
    ld a, [hl]
    rst $38
    ld e, l
    rst $38
    cp $ff
    add hl, sp
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    or b
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
    daa
    daa
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rst $38
    rst $38
    di
    di
    nop
    nop
    ret nz

    ret nz

    ld hl, sp-$08
    rst $38
    ldh a, [rIE]
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc d
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
    cp $ff
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    ld hl, sp-$01
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
    cp $ff
    rst $38
    rst $38
    rst $38
    ld c, [hl]
    rst $38
    ld a, [de]
    rst $38
    db $76
    rst $38
    sub [hl]
    rst $38
    rst $18
    rst $38
    or e
    rst $38
    ld h, a
    rst $38
    cp $ff
    add d
    rst $38
    jp hl


    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    push af
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
    ld [$00ea], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ldh [$e0], a
    ldh [$e0], a
    jp hl


    jp hl


    dec a
    dec a
    jr jr_01b_7488

    rst $38
    add hl, bc
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
    ld a, [c]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $ff
    rst $38
    rst $38

jr_01b_7488:
    rst $38
    rst $38
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
    cp $f1
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $7fff
    rst $38
    add c
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
    rst $38
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
    nop
    rst $38
    nop
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
    rst $18
    rst $38
    adc l
    rst $38
    ccf
    rst $38
    di
    rst $38
    ld e, d
    rst $38
    adc $ff
    rst $28
    rst $38
    ld [bc], a
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
    nop
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
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
    call c, Call_000_08ff
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    jr nc, jr_01b_7558

    nop
    nop
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    cpl
    cpl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    add sp, -$01
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    dec bc
    dec bc

jr_01b_7558:
    add hl, bc
    add hl, bc
    add a
    add a
    add l
    add l
    ld hl, sp-$08
    rst $38
    add e
    db $fc
    jp $c1fe


    cp $c1
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$f0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f8]
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$04
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    db $76
    rst $38
    db $76
    rst $38
    dec d
    rst $38
    sbc $ff
    ld a, [$f2ff]
    rst $38
    db $fc
    rst $38
    add e
    rst $38
    dec hl
    rst $38
    call z, Call_000_08ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $09fe
    or $15
    ld [$e718], a
    ld c, e
    or a
    xor a
    ld d, e
    ld d, e
    xor a
    ld a, e
    add a
    ld [hl], e
    adc a
    inc de
    rst $28
    inc hl
    rst $18
    inc de
    rst $28
    inc bc
    rst $38
    inc bc
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    dec c
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld bc, $0401
    inc b
    cp a
    cp a
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
    and b
    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld l, $ff
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
    ldh a, [$f0]
    dec b
    dec b
    nop
    nop
    nop
    nop
    ld [hl], a
    ld [hl], a
    sub $d6
    ld d, c
    ld d, c
    rst $10
    rst $10
    ld a, a
    ld a, a
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    jp $ff7f


    ld a, a
    ldh [$3f], a
    rst $38
    ccf
    rst $28
    ccf
    rst $28
    rra
    rst $20
    rra
    pop af
    rrca
    ld hl, sp+$0f
    ld hl, sp+$07
    db $fc
    rlca
    cp $07
    db $fc
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
    rst $38
    nop
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
    rst $38
    rst $38
    ret nz

    rst $38
    ldh [$ef], a
    ldh a, [$6f]
    ldh a, [$a7]
    ld hl, sp-$75
    db $fc
    ld [hl], c
    cp $dc
    rst $38
    reti


    rst $38
    ld h, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    or h
    ld c, e
    nop
    rst $38
    xor d
    rst $38
    rst $38
    rst $38
    push af
    ld a, [bc]
    ld a, [$f505]
    ld a, [bc]
    ld a, [$f505]
    ld a, [bc]
    ld a, [$f505]
    ld a, [bc]
    ld a, [$f405]
    ld a, [bc]
    ld hl, sp+$04
    ldh a, [$08]
    ld hl, sp+$00
    ldh a, [$08]
    ld hl, sp+$04
    db $f4
    ld a, [bc]
    ld a, [$f505]
    ld a, [bc]
    ld a, [$fd85]
    add d
    ld a, [$7dc5]
    ld [c], a
    ld a, d
    push af
    dec a
    ld a, [$fd3e]
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
    inc bc
    rst $38
    rlca
    rst $38
    ld e, $ff
    ld e, $ff
    cp $ff
    db $eb
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
    ld c, b
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld bc, $3501
    dec [hl]
    rst $38
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
    inc c
    rst $38
    ld [$04ff], sp
    rst $38
    ld [bc], a
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
    ld hl, sp-$08
    rlca
    rlca
    rst $38
    ld e, a
    rst $38
    nop
    rst $38
    ld a, e
    rst $38
    jp nz, Jump_000_28ff

    rst $38
    daa
    rst $38
    rst $38
    db $fd
    rst $38
    ccf
    rst $38
    adc a
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ld sp, hl
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    di
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
    ccf
    ret nc

    rst $38
    db $10
    rst $38
    ld [$08ff], sp
    rst $38
    inc b
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
    rst $38
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$04fb], sp
    db $fd
    ld [bc], a
    ld sp, hl
    ld b, $fc
    inc bc
    cp $01
    cp $81
    cp e
    call nz, $e21d
    ld c, $f1
    rlca
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    ld bc, $00fe
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
    ld a, a
    ld b, c
    cp a
    and e
    ld e, a
    ld b, c
    cp a
    and e
    ld e, a
    ld b, c
    cp a
    and d
    ld e, a
    ld b, d
    cp a
    ld [hl+], a
    rra
    ld [de], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [de], a
    rrca
    ld [hl+], a
    rra
    ld b, d
    cp a
    and d
    ld e, a
    ld b, d
    cp a
    add h
    ld a, a
    ld b, h
    cp a
    adc b
    ld a, a
    ld d, b
    cp a
    xor a
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
    rst $18
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
    jp hl


    jp hl


    and b
    and b
    ld [$0808], sp
    ld [$0808], sp

Call_01b_7800:
    ld c, h
    ld c, h
    sbc [hl]
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
    inc bc
    rst $38
    nop
    rst $38
    ld bc, $00ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    ld a, a
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
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    sbc a
    rst $38
    rst $38
    cp $fe
    rst $38
    ld a, a
    rst $38
    ld bc, $00ff
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    rst $38
    rst $38
    ldh [rIE], a
    nop
    rst $38
    db $10
    rst $38
    ld bc, $fffe
    nop
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

Call_01b_787b:
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    rst $38
    ld c, a
    rst $38
    add hl, hl
    rst $38
    sub e
    ld a, a
    pop bc
    ccf
    rst $20
    rra
    rst $28
    rra
    rst $30
    rrca
    ld a, e
    add a

jr_01b_7892:
    dec sp
    rst $00
    sbc l
    ld h, e
    adc $31
    rst $08
    jr nc, jr_01b_7902

    sbc b
    or e
    ld c, h
    db $db
    inc h
    rst $18
    jr nz, jr_01b_7892

    db $10
    ld l, a
    sub b
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$07
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
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    nop
    ld hl, sp+$00
    rst $20
    nop
    rst $28
    nop
    cp $00

jr_01b_7902:
    rst $38
    nop
    rst $20
    add b
    ld hl, sp-$40
    rst $38
    ldh [rIE], a
    cp $ff
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld b, c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    ld a, a
    ld a, a
    rst $38
    rst $38
    ldh [$e0], a
    rst $38
    ret nz

    rst $38
    ret nz

    cp $a0
    rst $38
    jr nc, @+$01

    jr @+$01

    adc [hl]
    rst $30
    jp $e0f8


    cp $f8
    rst $38
    db $fc
    rst $38
    rst $00
    cp $e0
    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    call c, Call_000_00ff
    rst $38
    nop
    rst $38
    rlca
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
    rrca
    rrca
    ldh a, [$f0]
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, c
    rst $38
    cpl
    rst $38
    ld h, e
    rst $38
    db $eb
    rst $38
    inc e
    rst $38
    ld d, a
    rst $38
    ld e, $ff
    ld a, [de]
    rst $38
    dec b
    rst $38
    ld b, b
    rst $38
    rra
    rst $38
    adc a
    ld a, a
    rst $00
    ccf
    rst $20
    rra
    rst $20
    rra
    di
    rrca
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    db $fd
    inc bc
    cp $01
    rst $38
    nop
    ld a, a
    add b
    rrca
    ldh a, [$03]
    db $fc
    ld bc, $00fe
    rst $38
    jr nz, @+$01

    ld a, d
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    db $f4
    ei
    rst $38
    ldh a, [$f9]
    ldh a, [$f1]
    ld hl, sp-$01
    ldh a, [$f6]
    ld sp, hl
    ld sp, hl
    rst $38
    db $fc
    cp $fc
    ld hl, sp-$1b
    ld hl, sp-$3e
    db $fc
    and $f8
    rst $28
    ldh a, [$e2]
    db $fd
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, [c]
    rst $38
    ldh a, [rIE]
    inc h
    ei
    ld e, $e1
    adc e
    db $f4
    ldh [rIE], a
    add sp, -$01
    rst $38
    rst $38
    rst $38
    ld bc, $00ff
    ld bc, $8e00
    nop
    inc bc
    nop
    inc bc
    nop
    add e
    nop
    rst $38
    nop
    ccf
    nop
    nop
    nop
    db $fc
    nop
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc e
    adc e
    pop bc
    pop bc
    rst $38
    rst $38
    rst $10
    rst $10
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $20
    inc bc
    add e
    ld bc, $00c3
    rst $38
    nop
    rst $20
    ld bc, $fcff
    add a
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    add e
    nop
    rst $38
    nop
    rst $38
    ld d, e
    ccf
    nop
    nop
    nop
    pop bc
    nop
    rst $38
    pop bc
    rst $38
    nop
    ld bc, $c300
    nop
    rst $38
    nop
    rst $38
    pop bc
    rst $38
    rst $38
    add sp, -$01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    ld [c], a
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    rra
    ldh [$e0], a
    nop
    nop
    nop
    nop
    cp $0e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp-$01
    rst $38
    rst $38
    ld l, a
    rst $38
    ccf
    rst $38
    ld e, l
    rst $38
    ld e, l
    rst $38
    adc l
    rst $38
    add h
    rst $38
    pop hl
    rst $18
    or c
    rst $08
    ld hl, sp-$19
    db $fc
    di
    inc c
    di
    cp $f9
    ei
    db $fc
    ei
    db $fc
    ld sp, hl
    cp $f0
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld h, b
    rst $38
    ld h, b
    rst $38
    and b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ld [hl], b
    adc a
    db $10
    rst $28
    ld [$a0f7], sp
    rst $18
    sub d
    db $ed
    ret


    or $c4
    ei
    ld b, d
    db $fd
    ldh [$7f], a
    ld h, b
    rst $38
    ld h, b
    cp a
    jr c, @+$01

    dec de
    ccf
    adc a
    rra
    adc a
    ld a, a
    rst $38
    ld a, a
    ld e, a
    ccf
    cpl
    rra
    ld l, a
    rra
    rst $00
    ccf
    rst $18
    ccf
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
    ccf
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
    rlca
    rst $38
    nop
    rst $38
    ld [hl], b
    rst $38
    ld a, b
    rst $38
    inc a
    rst $38
    ld [hl], b
    rst $38
    nop
    db $fc
    nop
    nop
    nop
    rrca
    nop
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    add b
    add b
    add b
    add b
    jp nz, $c8c2

    ret z

    rst $38
    rst $38
    rst $38
    dec [hl]
    rst $38
    dec a
    rst $38
    dec e
    rst $38
    rra
    ld a, [$f73f]
    ld a, a
    rst $38
    rst $28
    ldh a, [rIF]
    jr nc, jr_01b_7b51

    ld hl, sp+$1f
    ld hl, sp-$31
    db $fc
    rrca
    rst $38
    rra
    ld [c], a
    ccf
    ret nz

    ld a, a
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
    rlca
    rst $38
    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    add b

jr_01b_7b51:
    add b
    ret nz

    ret nz

    ld h, b
    ld h, b
    ld a, a
    ld a, a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    jp hl


    jp hl


    cp $1e
    rst $38
    nop
    rst $38
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
    rst $38
    pop bc
    rst $38
    or d
    rst $08
    ld e, h
    db $e3
    sbc $e1
    ld c, a
    ldh a, [$8f]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    ld bc, $01fe
    cp $00
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ld a, c
    add [hl]
    ld a, h

jr_01b_7b99:
    add e
    ld a, $c1
    ld e, $e1
    rra
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
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld b, b
    cp a
    jr nz, jr_01b_7b99

    jr nz, @-$1f

    db $10
    rst $28
    ld [$84f7], sp
    ei
    ret nz

    rst $38
    ret nc

    rst $28
    ret z

    rst $30
    call nz, $c2fb
    db $fd
    pop bc
    cp $c0
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
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
    ccf
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    ccf
    rrca
    ld a, a
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
    rlca
    cp $01
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ret nc

    rst $38
    ld e, [hl]
    rst $38
    ld a, [$6bff]
    rst $38
    ld a, [$fbff]
    ccf
    rst $38
    ccf
    rst $38
    add e
    db $fd
    ld bc, $11ff
    rst $38
    rla
    rst $38
    rra
    rst $38
    daa
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, $01ff
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    ld bc, $3fff
    rst $38
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    nop
    nop
    nop
    ld bc, $fe01
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
    db $76
    db $76
    db $db
    db $db
    ld sp, hl
    rlca
    push hl
    ld a, [de]
    ld a, [$f505]
    ld a, [bc]
    cp $01
    ld sp, hl
    ld b, $00
    rst $38
    cp $ff
    and c
    rst $38
    db $fc
    rst $38
    dec bc
    rst $38
    ld [hl], l
    rst $38
    jr @+$01

    ld b, $ff
    ldh [$1f], a
    pop af
    ld c, $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    ld a, a
    add c
    ld a, a
    add c
    ccf
    pop bc
    cp a
    ld b, c
    rst $38
    ld bc, $01ff
    ld a, a
    add e
    ld a, a
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
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    ld a, a
    add e
    ld a, a
    add a
    ccf
    rst $00
    ccf
    rst $00
    rra
    rst $20
    rrca
    rst $30
    rrca
    rst $30
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
    adc a
    ld a, a
    ld c, a
    cp a
    rrca

Jump_01b_7cc3:
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
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    add b
    ld a, a
    rst $18
    ccf
    ldh a, [rIF]
    db $fc
    inc bc
    cp $fd
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    jr c, @+$01

    cp [hl]
    rst $38
    rst $38
    rst $38
    ld l, e
    db $eb
    db $eb
    db $fd
    db $fd
    db $fd
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
    cp $ff
    cp $ff
    rst $38
    ld hl, sp-$01
    add b
    rst $38
    ret nz

    rst $38
    ld h, b
    rst $38
    jr nc, @+$01

    jr jr_01b_7d24

    inc bc
    db $fc
    db $fc

jr_01b_7d24:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, l
    ld b, l
    adc e
    adc e
    rst $38
    rst $38
    ld b, b
    cp a
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
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    rst $38
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    cp $fe
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
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld sp, hl
    ld sp, hl
    ld hl, sp-$08
    ld hl, sp-$08
    ld sp, hl
    ld sp, hl
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    db $f4
    ldh a, [$f0]
    ld a, [c]
    ld a, [c]
    ldh a, [$f0]
    pop af
    pop af
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    add sp, -$18
    ret z

    ret z

    ret z

    ret z

    ret z

    ret z

    reti


    reti


    jp nc, $d0d2

    ret nc

    ret z

    ret z

    ret nz

    ret nz

    ret nz

    ret nz

    and h
    and h
    and b
    and b
    and b
    and b
    ret nz

    ret nz

    ret nc

    ret nc

    ret nz

    ret nz

    and h
    and h
    db $e4
    db $e4
    db $e3
    db $e3
    ld a, e
    ld a, e
    db $fc
    db $fc
    rst $38
    ld [hl], h
    rst $38
    rla
    rst $38
    dec d
    ld a, a
    or d
    rra
    ldh [$c7], a
    ei
    ld bc, $00fe
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    rst $38
    rrca
    ld hl, sp+$07
    cp $01
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld a, b
    rst $38
    call c, Call_01b_7fff
    rst $38
    rst $10
    rst $38
    db $fd
    sbc a
    or $07
    sbc a
    ld b, e
    rst $08
    pop bc
    rst $20
    ldh [$33], a
    ldh a, [rNR24]
    ld hl, sp+$0c

jr_01b_7e0a:
    db $fc
    ld b, $fe
    inc bc
    rst $38
    rrca

jr_01b_7e10:
    rst $38
    pop af
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03fe
    cp $03
    cp $03
    cp $03
    ld a, [hl]
    ld a, [hl]
    ld hl, sp-$08
    ldh [$e0], a
    jr nc, @-$0e

    jr nz, jr_01b_7e0a

    jr nz, @-$1e

    inc h
    db $e4
    jr nz, jr_01b_7e10

    add hl, hl
    jp hl


    ld l, c
    jp hl


    add sp, -$18
    add sp, -$18
    call nz, $e4c4
    db $e4
    and h
    and h
    inc h
    inc h
    ld h, b
    ld h, b
    nop
    nop
    and c
    and c
    add c
    add c
    nop
    nop
    inc b
    inc b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    nop
    nop
    add h
    add h
    ret nz

    ret nz

    add b
    add b
    jr nz, jr_01b_7e7a

    inc h
    inc h
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    jr nz, jr_01b_7e84

    jr nz, jr_01b_7e86

    ld [hl+], a
    ld [hl+], a
    jr nz, jr_01b_7e8a

    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_01b_7e90

    db $10
    stop
    nop
    nop
    nop
    ld [$0008], sp
    nop

jr_01b_7e7a:
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    nop
    nop

jr_01b_7e84:
    jr nz, jr_01b_7ea6

jr_01b_7e86:
    db $10
    db $10
    db $10
    db $10

jr_01b_7e8a:
    ld [$0808], sp
    ld [$0000], sp

jr_01b_7e90:
    db $10
    stop
    nop
    nop
    nop
    inc b
    inc b
    ld h, h
    ld h, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop

jr_01b_7ea6:
    nop
    nop
    sub b
    sub b
    sub b
    sub b
    nop
    nop
    add b
    add b
    add c
    add c
    ld bc, $0001
    nop
    add hl, bc
    add hl, bc
    ld bc, $4001
    ld b, b
    ld bc, $1001
    stop
    nop
    nop
    nop
    inc b
    inc b
    ld [$0a08], sp
    ld a, [bc]
    ld e, h
    ld e, h
    ld b, l
    ld b, l
    sub l
    sub l
    rst $38
    or d
    rst $38
    xor b
    rst $38
    jp z, $e6ff

    rst $38
    db $76
    rst $38
    ld b, [hl]
    rst $38
    ld a, [hl]
    ld a, a
    add d
    rra
    ldh [rTAC], a
    ld hl, sp+$3f
    cp $c0
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ldh a, [rIF]
    ld hl, sp+$07
    cp $01
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh [rIE], a
    rst $30
    rst $38
    ld hl, sp-$01
    cp $ff
    nop
    rst $38
    nop
    ld a, a
    add b
    ccf
    ld b, b
    rra
    ld hl, $1e1f
    rra
    nop
    rra
    add b
    rra
    and b
    rra
    and b
    rra
    and b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    nop
    nop
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $07
    nop
    nop
    nop
    ld [$0202], sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    dec b
    add hl, bc
    ld a, [bc]
    dec bc
    nop
    nop
    inc c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    dec c
    add hl, bc
    ld c, $0f
    db $10
    ld de, $0212
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc de
    inc b
    dec c
    inc d
    dec d
    ld d, $17
    ld [bc], a
    jr jr_01b_7f64

    ld [bc], a
    ld [bc], a

jr_01b_7f64:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add hl, de
    ld a, [de]
    dec b
    inc d
    dec de
    inc e
    dec e
    ld e, $1f
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add hl, de
    jr nz, jr_01b_7f9a

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_01b_7f83

    ld [bc], a
    ld [bc], a

jr_01b_7f83:
    ld [bc], a
    ld [bc], a
    add hl, de
    jr nz, jr_01b_7fb1

    rlca
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_01b_7f93

    ld [bc], a
    ld [bc], a

jr_01b_7f93:
    ld [bc], a
    ld sp, $2932
    inc sp
    inc [hl]
    dec [hl]

jr_01b_7f9a:
    ld [hl], $37
    jr c, jr_01b_7fd7

    ld a, [hl-]
    dec sp
    ld [bc], a
    ld [bc], a
    rlca
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
    ld [bc], a

jr_01b_7fb1:
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
    rra
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld c, h
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld [bc], a
    ld h, c
    ld h, d
    ld h, e
    ld [bc], a
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d

jr_01b_7fd7:
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add hl, de
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
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    adc b
    ld [bc], a

Jump_01b_7ffe:
    adc c

Call_01b_7fff:
    adc d
