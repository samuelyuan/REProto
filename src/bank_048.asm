SECTION "ROM Bank $048", ROMX[$4000], BANK[$48]

    inc bc
    inc bc
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    nop
    rst $38
    add c
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    rst $38
    rst $38
    xor a
    rst $38
    db $dd
    rst $38
    adc a
    rst $38
    dec e
    rst $38
    ld h, $ff
    ld l, $ff
    ld b, $ff
    sub h
    rst $28
    inc d
    rst $28
    dec b
    rst $38
    and h
    ld e, a
    add l
    ld a, a
    inc hl
    rst $18
    add e
    ld a, a
    dec b
    rst $38
    ret nc

    cpl
    ld hl, $90df
    ld l, a
    ld [bc], a
    rst $38
    ld b, $ff
    ld [bc], a
    rst $38
    add [hl]
    ld a, a
    sub a
    ld a, a
    rlca
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    ld a, l
    db $fd
    db $fd
    db $fd
    ccf
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    ei
    ei
    ei
    ei
    ei
    rst $28
    rst $28
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
    nop
    nop
    nop
    nop
    db $f4
    db $f4
    ld [hl], a
    ld [hl], a
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
    nop
    nop
    nop
    nop
    nop
    sub [hl]
    sub [hl]
    nop
    nop
    ld b, b
    ld b, b
    sub c
    sub c
    ccf
    ccf
    rlca
    rlca
    ret nz

    ret nz

    dec [hl]
    dec [hl]
    add e
    add e
    rst $38
    rst $38
    cp $fe
    inc bc
    inc bc
    dec bc
    dec bc
    and [hl]
    and [hl]
    ld l, e
    ld l, e
    ld a, $3e
    cp l
    cp l
    rst $38
    rst $38
    db $fd
    db $fd
    ld hl, sp-$08
    pop af
    pop af
    ld de, $3011
    jr nc, @+$01

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
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    db $fc
    cp $ec
    cp $4e
    cp $4c
    cp $4e
    cp $4e
    cp $3e
    cp $4e
    cp $0c
    cp $06
    cp $0e
    cp $0e
    cp $8e
    ld a, [hl]
    ld b, $fe
    ld c, $fe
    ld c, $ff
    ld c, $ff
    ld b, $fe
    ld c, $ff
    ld c, $ff
    ld b, $ff
    ld b, $ff
    ld a, c
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    cp c
    ld sp, hl
    ld a, b
    ld hl, sp+$78
    ld hl, sp-$47
    ld sp, hl
    ld hl, sp-$08
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    jr c, jr_048_4162

    ret z

    ret z

    adc b
    adc b
    adc b
    adc b
    ldh [$e0], a
    add sp, -$18
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
    jp nc, Jump_000_00d2

    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld b, b
    ld b, b
    and $e6
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, l
    ld a, l
    rst $30
    rst $30
    adc a
    adc a
    ld [c], a
    ld [c], a
    db $ed
    db $ed
    xor a
    xor a
    rst $28
    rst $28

jr_048_4162:
    ccf
    ccf
    ld [hl], $36
    ld l, h
    ld l, h
    dec sp
    dec sp
    ld a, [c]
    ld a, [c]
    rst $38
    rst $38
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    nop
    nop
    db $fd
    db $fd
    ei
    ei
    ld a, b
    ld a, h
    ld a, h
    ld a, h
    ld a, b
    ld a, h
    ld l, h
    ld a, h
    ld e, h
    ld a, h
    ld l, h
    ld a, h
    ld a, h
    ld a, h
    ld c, h
    ld a, h
    ld b, h
    ld a, h
    ld c, h
    ld a, h
    ld b, h
    ld a, h
    ld b, h
    ld a, h
    ld b, h
    ld a, h
    ld b, h
    ld a, [hl]
    ld b, h
    ld a, [hl]
    ld b, h
    ld l, [hl]
    ld b, h
    ld l, [hl]
    ld b, h
    ld l, [hl]
    ld b, [hl]
    ld l, [hl]
    ld b, h
    ld l, [hl]
    ld b, [hl]
    ld c, [hl]
    add $ce
    add $ee
    add $e6
    rst $10
    ld l, [hl]
    sbc $67
    sbc $67
    sub $6f
    sbc [hl]
    ld h, a
    db $db
    rlca
    sub $0f
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    db $eb
    rlca
    rst $28
    rlca
    db $eb
    rlca
    rst $28
    rlca
    db $eb
    rlca
    rst $28
    rlca
    db $eb
    rlca
    ei
    rlca
    db $eb
    rlca
    ei
    rlca
    ei
    rlca
    ei
    rlca
    sla a
    swap a
    rst $00
    scf
    adc a
    ld [hl], a
    adc a
    ld [hl], a
    rlca
    rst $38
    ld h, a
    rst $38
    rst $20
    rst $38
    rrca
    rst $38
    rrca
    ccf
    rra
    ccf
    rra
    ccf
    rra
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rrca
    rra
    rrca
    rra
    rrca
    rra
    rrca
    rra
    rra
    rra
    rra
    cp a
    rra
    cp a
    rra
    rst $38
    cp a
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld a, a
    rst $38
    nop
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$c008], sp
    ret nz

    ld [$0808], sp
    ld [$0000], sp
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
    ld e, b
    ld e, b
    add sp, -$18
    ret c

    ret c

    add b
    add b
    call c, $d4dc
    call nc, $d8d8
    adc h
    adc h
    cp h
    cp h
    jr jr_048_4270

    cp [hl]
    cp [hl]
    sub $d6
    ld h, d
    ld h, d
    ld a, [$fcfa]
    db $fc
    push bc
    push bc
    rlca
    rlca
    or a
    or a
    rst $38
    rst $38
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    sbc a
    sbc a

jr_048_4270:
    rrca
    ccf
    rrca
    ccf
    rra
    ccf
    rrca
    ccf
    dec de
    ccf
    dec de
    ccf
    rra
    ccf
    rra
    ccf
    dec de
    ccf
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
    ccf
    ld a, a
    ccf
    ld a, a
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
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0008], sp
    nop
    ld [$0008], sp
    nop
    nop
    nop
    ld b, b
    ld b, b
    ld b, d
    ld b, d
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    jr z, jr_048_430a

    add b
    add b
    jr nz, jr_048_4306

    nop
    nop
    jr nz, jr_048_430a

    jr nz, jr_048_430c

    and b
    and b
    jr nz, @+$22

    jr nz, jr_048_4312

    jr nz, jr_048_4314

    nop
    nop
    db $10
    stop
    nop
    sub b
    sub b
    ret z

    ret z

    ret nz

    ret nz

    nop
    nop
    ld h, b
    ld h, b
    ld [hl], d
    ld [hl], d

jr_048_4306:
    nop
    nop
    jr nz, jr_048_432a

jr_048_430a:
    nop
    nop

jr_048_430c:
    inc a
    inc a
    ld [$0008], sp
    nop

jr_048_4312:
    nop
    nop

jr_048_4314:
    nop
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
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc

jr_048_432a:
    ld [bc], a
    ld [bc], a
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
    nop
    nop
    nop
    nop
    inc b
    inc b
    nop
    nop
    ld b, $06
    ld [bc], a
    ld [bc], a
    add d
    add d
    ld [bc], a
    ld [bc], a
    add d
    add d
    add b
    add b
    ret nz

    ret nz

    nop
    nop
    add b
    add b
    add b
    add b
    add h
    add h
    add [hl]
    add [hl]
    add d
    add d
    add d
    add d
    add d
    add d
    ld bc, $8001
    add b
    nop
    nop
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_048_43a8

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc c
    nop
    nop
    ld a, l
    ld a, a
    ld c, d
    ld a, a
    ld e, d
    ld a, a
    or [hl]
    rst $38

jr_048_43a8:
    ei
    rst $38
    ld a, [$fdff]
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, l
    ld a, l
    ld e, b
    ld e, b
    ld c, b
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
    nop
    db $10
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
    nop
    nop
    nop
    nop
    nop
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    jr nc, jr_048_4426

    db $10
    db $10
    ld [hl], b
    ld [hl], b
    ld d, b
    ld d, b
    ld [hl], b
    ld [hl], b
    ld h, b
    ld h, b
    ld [hl], b
    ld [hl], b
    ld l, b
    ld l, b
    jr nc, @+$32

    ld [hl], b
    ld [hl], b
    ld l, b
    ld l, b
    jr z, jr_048_4434

    jr z, @+$2a

    ld [hl], b
    ld [hl], b
    jr z, @+$2a

    jr jr_048_442c

    jr z, jr_048_443e

    db $10
    db $10
    db $10
    db $10
    jr nc, jr_048_444c

    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10

jr_048_4426:
    jr nz, @+$22

    db $10
    stop
    nop

jr_048_442c:
    db $10
    db $10
    db $10
    stop
    nop
    jr jr_048_444c

jr_048_4434:
    ld [$0008], sp
    nop
    ld [$0808], sp
    ld [$0808], sp

jr_048_443e:
    nop
    nop
    ld [$0008], sp
    nop
    nop
    nop
    ld [$0408], sp
    inc b
    nop
    nop

jr_048_444c:
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
    inc b
    ld [$0408], sp
    inc b
    nop
    nop
    inc b
    inc b
    inc b
    inc b
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
    ld [bc], a
    ld [bc], a
    nop
    nop
    cp a
    rst $38
    rst $18
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
    cp $fe
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ldh [$e0], a
    db $10
    db $10
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
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ret nz

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
    nop
    nop
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ret nc

    ret nc

    add [hl]
    add [hl]
    ld a, [de]
    ld a, [de]
    add hl, bc
    add hl, bc
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    add e
    add e
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
    ld [hl], b
    ld [hl], b
    ld d, b
    ld d, b
    jr c, jr_048_454a

    jr jr_048_452c

    nop
    nop
    nop
    nop
    nop
    nop
    ret c

    ret c

    and $e6
    ld [hl], c
    ld [hl], c
    ld [hl], $36
    rla
    rla
    rlca
    rlca
    rlca
    rlca
    dec b
    rlca
    inc bc
    inc bc

jr_048_452c:
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    inc bc
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
    add b
    add b

jr_048_454a:
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ld h, b
    ld h, b
    ld d, b
    ld d, b
    jr nz, jr_048_457a

    db $10
    db $10
    ld d, $16
    dec de
    dec de
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    ld hl, $3121
    ld sp, $3030
    jr z, jr_048_4596

    jr z, jr_048_4598

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    and b
    and b

jr_048_457a:
    add b
    add b
    nop
    nop
    and b
    and b
    ret nc

    ret nc

    ret c

    ret c

    ld hl, sp-$08
    db $ec
    db $ec
    add sp, -$18
    ld c, h
    ld c, h
    ld b, $06
    ld b, [hl]
    ld b, [hl]
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca

jr_048_4596:
    nop
    inc bc

jr_048_4598:
    nop
    inc bc
    inc bc
    inc bc
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
    add b
    add b
    ret nz

    ret nz

    ldh a, [$f0]
    cp b
    cp b
    cp d
    cp d
    ret c

    ret c

    push de
    push de
    ld l, [hl]
    ld l, [hl]
    ld l, a
    ld l, a
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $fffe
    cp $ff
    rst $38
    rst $38
    cp $fe
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ld b, b
    ret nz

    nop
    ret nz

    and b
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$c0], a
    ret nz

    ld h, b
    ld h, b
    add b
    add b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld b, b
    ld b, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    jr nc, jr_048_4636

    ld [hl], b
    ld [hl], b
    jr nc, @+$32

    jr nc, jr_048_463c

    jr nc, jr_048_463e

    jr nz, @+$22

    jr nc, jr_048_4642

    db $10
    db $10
    db $10
    db $10
    jr @+$1a

    jr jr_048_4632

    jr @+$1a

    db $10
    db $10
    jr @+$1a

    nop
    ld bc, $0302
    inc b
    ld [bc], a
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10

jr_048_4632:
    ld de, $1312
    inc d

jr_048_4636:
    dec d
    ld d, $17
    jr jr_048_4654

    ld a, [de]

jr_048_463c:
    dec de
    inc e

jr_048_463e:
    dec c
    dec e
    ld e, $02

jr_048_4642:
    ld [bc], a
    rra
    jr nz, jr_048_4667

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_048_4677

    ld a, [hl+]
    dec c
    ld b, $2b
    inc l
    dec l

jr_048_4654:
    ld l, $2f
    jr nc, jr_048_4689

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_048_466d

    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f

jr_048_4667:
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    dec c
    ld b, h

jr_048_466d:
    ld b, l
    ld b, [hl]
    dec c
    ld b, a
    ld c, b
    ld c, c
    ld [bc], a
    ld c, d
    ld c, e
    ld c, h

jr_048_4677:
    dec c
    dec c
    ld c, l
    dec e
    ld c, [hl]
    ld c, a
    dec e
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    dec c
    ld e, c

jr_048_4689:
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
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    dec c
    dec c
    dec c
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
    add $0d
    rst $00
    ret z

    ret


    jp z, $cccb

    ld [bc], a
    ld [bc], a
    call $cfce
    ret nc

    pop de
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
    dec c
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$eceb], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    or $f6
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    dec c
    ld c, $0f
    db $10
    ld de, $f612
    or $f6
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_048_4773

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    nop
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
    inc b
    inc b
    ld [bc], a
    ld bc, $0002
    nop
    nop

jr_048_4773:
    nop
    nop
    nop
    nop
    dec b
    nop
    nop
    inc b
    inc b
    inc b
    ld [bc], a
    ld bc, $0002
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    dec b
    dec b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    dec b
    nop
    nop
    nop
    dec b
    dec b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    dec b
    dec b
    ld bc, $0101
    ld bc, $0102
    inc b
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
    ld bc, $0202
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
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0005
    nop
    dec b
    dec b
    dec b
    dec b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0501
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
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
    nop
    dec b
    dec b
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
    ld bc, $0505
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    dec b
    inc b
    inc b
    inc b
    ld bc, $0204
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, $03
    inc bc
    inc bc
    inc bc
    nop
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, $03
    inc bc
    inc bc
    ld b, $04
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, $03
    inc bc
    inc bc
    nop
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc bc
    inc bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    inc c
    nop
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc bc
    inc bc
    inc bc
    dec bc
    dec bc
    dec bc
    ld c, $0c
    inc c
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rst $10
    cpl
    add a
    ld a, a
    db $eb
    rla
    ei
    rlca
    db $eb
    rla
    rst $38
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    ld a, l
    add e
    rst $38
    ld bc, $01ff
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
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
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
    ld [hl], b
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld de, $00ff
    rst $38
    adc e
    rst $38
    or l
    rst $38
    ei
    rst $38
    cp a
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
    rst $38
    rst $38
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
    dec b
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
    nop
    nop
    nop
    rst $38
    ld hl, sp+$07
    ccf
    ret nz

    ldh [$e0], a
    ld e, c
    ld e, c
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $8001
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or h
    or h
    ld b, b
    ld b, b
    rst $38
    add b
    cp a
    ret nz

    cp a
    ret nz

    rst $38
    ret nz

    rst $18
    ldh [$df], a
    ldh [$df], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$ef], a
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$f7]
    ld hl, sp-$09
    ld hl, sp+$77
    ld hl, sp+$77
    ld hl, sp+$07
    ld hl, sp-$01
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
    ei
    rlca
    cp $0f
    db $fd
    ld c, $7d
    adc [hl]
    ld a, l
    adc [hl]
    ld a, l
    add [hl]
    ld a, l
    add [hl]
    ld a, h
    add a
    ld a, [hl]
    add a
    cp [hl]
    ld b, a
    cp [hl]
    ld b, a
    cp [hl]
    ld b, a
    cp [hl]
    ld b, a
    cp [hl]
    ld b, a
    cp [hl]
    ld b, a
    rst $18
    inc hl
    db $d3
    cpl
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
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $9bff
    rst $38
    dec bc
    rst $38
    sub d
    rst $38
    ld e, c
    rst $38
    rst $10
    rst $38
    ld d, a
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
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    inc bc
    db $fc
    ld e, a
    rst $38
    ld bc, $31ff
    rst $38
    ld [hl], a
    rst $38
    rst $18
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
    ret nz

    nop
    rst $38
    rst $38
    nop
    inc bc
    inc bc
    add b
    add b
    sbc b
    sbc b
    nop
    nop
    nop
    nop
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
    ld bc, $fe01
    ld bc, $01fe
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
    nop
    rst $38
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ret nz

    ccf
    add b
    ld a, a
    cp $ff
    ld bc, $fcff
    inc bc
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    ld sp, hl
    ld b, $f1
    ld c, $c1
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
    nop
    rst $38
    nop
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
    ret nz

    nop
    ret nz

    add b
    ret nz

    nop
    ldh [$80], a
    push de
    nop
    jp c, $f580

    nop
    db $fd
    add b
    ei
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
    nop
    rst $30
    nop
    ldh [rP1], a
    rst $38
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
    rlca
    rst $38
    nop
    rst $38
    rst $38
    rst $10
    rst $38
    dec e
    rst $38
    rst $38
    rst $38
    rst $28
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$60
    sbc a
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
    add hl, bc
    add hl, bc
    inc c
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
    nop
    rst $38
    nop
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
    nop
    sbc a
    rlca
    ld d, c
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    stop
    stop
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    sbc b
    ld a, a
    sbc d
    ld a, a
    sbc a
    ld a, a
    adc [hl]
    ld a, a
    adc e
    ld a, a
    adc a
    ld a, a
    adc a
    ld a, a
    adc a
    ld a, a
    adc a
    ld a, a
    adc a
    ld a, a
    adc a
    ld a, a
    adc a
    ld a, a
    adc a
    ld a, a
    adc a
    ld a, a
    ld c, a
    cp a
    ld c, a
    cp a
    ld c, a
    cp a
    ld c, a
    cp a
    ld c, a
    cp a
    ld c, a
    cp a
    ld e, a
    cp a
    rra
    nop
    sbc a
    nop
    rst $38
    nop
    sbc a
    ld [bc], a
    ld a, a
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $03ff
    rst $28
    ld bc, $011f
    rst $38
    ld bc, $0101
    ld bc, $0101
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    nop
    ld h, b
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
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
    nop
    rlca
    rst $38
    pop af
    rst $38
    dec hl
    dec hl
    nop
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
    ldh [rIE], a
    pop hl
    cp $e1
    cp $e1
    cp $63
    db $fc
    ld h, e
    db $fc
    ld h, e
    db $fc
    ld h, e
    db $fc
    ld h, a
    ld hl, sp+$67
    ld hl, sp+$67
    ld hl, sp+$67
    ld hl, sp+$67
    ld hl, sp+$27
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    ld bc, $01fe
    cp $00
    rst $38
    nop
    nop
    ret nz

    add b
    ldh [$c0], a
    ldh [rLCDC], a
    ld h, b
    ld b, b
    ld [hl], b
    ld b, b
    ld [hl], b
    ld b, b
    ld [hl], b
    ld b, b
    ld [hl], b
    ld h, b
    ld [hl], b

jr_048_4c83:
    ld h, b
    ld [hl], h
    jr nz, jr_048_4cff

    jr nz, jr_048_4c83

    jr nz, jr_048_4d05

jr_048_4c8b:
    jr nz, jr_048_4c8b

    jr nz, @+$01

    jr nz, jr_048_4cb1

    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    inc c

jr_048_4cb1:
    rst $38
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
    inc c
    rst $38
    inc c
    rst $38
    ld c, $ff
    jp c, $f2ff

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
    nop
    nop
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
    cp $ff
    cp $ff
    db $fc
    rst $38
    pop af
    rst $38
    pop hl
    rst $38
    ld h, e
    ld a, a
    ld h, a
    ld a, a
    adc a
    rst $38
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    dec b
    dec b
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop

jr_048_4cff:
    nop
    nop
    nop
    inc c
    inc c
    inc b

jr_048_4d05:
    inc b
    nop

jr_048_4d07:
    nop
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
    jr jr_048_4d07

    inc [hl]
    bit 3, a
    and b
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    di
    inc e
    db $eb
    inc e
    db $fd
    ld c, $f6
    rrca
    ei
    rlca
    db $fd
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    ld a, a
    add b
    cpl
    ret nc

    rrca
    ldh a, [rSC]
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
    add b
    rst $38
    add b
    rst $38
    add sp, -$01
    ld d, h
    rst $38
    ld [$edff], a
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
    ld bc, $07ff
    rst $38
    rrca
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
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    ld c, $0e
    inc e
    inc e
    jr c, jr_048_4dc4

    ld a, b
    ld a, b
    ldh [$e0], a
    ldh [$e0], a
    jp nz, $80c2

    add b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0303
    inc de
    inc de
    ld h, $26
    inc l
    inc l
    ld c, h
    ld c, h
    sbc b
    sbc b
    cp b
    cp b
    ld sp, $2031
    ld hl, $6263
    ld b, c
    ld b, d
    rra
    rst $28
    rra
    rst $28

jr_048_4dc4:
    rlca
    rst $38
    rrca
    rst $30
    dec bc
    rst $30
    inc bc
    rst $38
    rlca
    ei
    rlca
    ei
    dec b
    ei
    inc bc
    db $fd
    add e
    ld a, l
    add e
    ld a, l
    jp nz, $c03d

    ccf
    pop bc
    ld a, $e1
    ld e, $c1
    cp [hl]
    pop af
    adc [hl]
    adc c
    ld b, $83
    inc b
    add c
    nop
    nop
    add b
    add b
    nop
    add b
    nop
    ld hl, sp-$80
    rst $38

Call_048_4df3:
    add b
    ld hl, sp-$79
    ldh a, [rIF]
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $02ff
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    dec bc
    rst $38
    scf
    rst $38
    xor a
    rst $38
    xor a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rra
    rst $38
    ccf
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
    ld b, b
    ld b, b
    add b
    add b
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    ld c, $0e
    inc e
    inc e
    inc a
    inc a
    ld a, b
    ld a, b
    pop af
    pop af
    ldh [$e0], a
    ret nz

    ret nz

    add b
    add b
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    nop
    nop
    inc bc
    inc bc
    ld b, $06
    ld b, $06
    inc l
    inc l
    ld c, h
    ld c, h
    sbc c
    sbc c
    add b
    add c
    ld [bc], a
    inc bc
    jr nz, jr_048_4eb5

    ld b, [hl]
    ld b, l
    ret nz

    rst $00
    add e
    adc h
    add b
    adc a
    inc d
    dec de
    cpl
    jr nc, jr_048_4ebe

    jr nz, jr_048_4f10

    ld d, b
    ccf
    ld b, b
    cp a
    ret nz

    ld a, a
    add b
    ld e, a
    and b
    cp a
    ld b, b
    rst $38
    ld bc, $00ff
    rra
    rst $38
    rra
    rst $38
    rra

jr_048_4eb5:
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38

jr_048_4ebe:
    rrca
    rst $38
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    ei
    inc bc
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    rst $28
    ld a, a
    rst $28
    ld a, a
    rst $28
    ld a, a
    ld a, a
    cpl
    ld a, a
    cpl
    rst $28
    ld a, a
    rst $28
    ld a, a
    rst $28
    ld a, a
    rst $38
    ld l, a
    rst $28
    ld a, a
    rst $28
    ld a, a
    cpl
    rst $38
    ld l, a
    ld bc, $012f
    cpl
    ld bc, $012f
    cpl
    ld bc, $01af
    xor a
    ld bc, $012f
    xor a
    ld bc, $01af
    or a
    ld bc, $01b7
    or a
    ld bc, $01b7
    or a
    inc bc
    or a
    inc bc

jr_048_4f10:
    or a
    inc bc
    or a
    inc bc
    or a
    inc bc
    or a
    inc bc
    rst $10
    inc bc
    rst $10
    inc bc
    rst $30
    inc bc
    rst $10
    inc bc
    rst $30
    rlca
    rst $30
    rlca
    rst $10
    rlca
    rst $30
    rlca
    rst $10
    rlca
    rst $38
    rrca
    rst $18
    rra
    rst $38
    rra
    ccf
    ccf
    ld a, a
    ld a, a
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
    rst $38
    rst $38
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [$1808], sp
    jr jr_048_4f79

    jr nc, jr_048_4fab

    ld h, b
    ldh [$e0], a
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    ld [$0008], sp
    nop
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
    inc b
    inc b
    jr z, jr_048_4f96

    add hl, bc
    add hl, bc
    db $10
    ld de, $2323
    inc h
    daa
    ld h, h
    ld h, a
    ld a, [bc]

jr_048_4f79:
    rrca
    add l
    adc a
    ld [de], a
    rra
    dec d
    rra
    jr nz, @+$41

    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    add b
    rst $38
    nop
    rst $38
    inc b
    ei
    ld [de], a
    db $ed
    ld c, d
    or l
    ld d, h
    ei
    ld e, e
    and h

jr_048_4f96:
    ld d, a
    ld hl, sp-$11
    db $10
    add l
    cp $fe
    ld b, c
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38

jr_048_4fab:
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
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    rst $38
    ldh [$fd], a
    ldh [$fe], a
    ldh [$fe], a
    ldh [$fa], a
    ldh [$fc], a
    ldh [$fc], a
    ldh [$fc], a
    ldh [$fc], a
    ldh [$f8], a
    ldh [$f8], a
    ldh [$f8], a
    ldh [$f8], a
    ret nz

    ld hl, sp-$20
    ld hl, sp-$20
    ld hl, sp-$20
    ld hl, sp-$20
    ld hl, sp-$20
    ld hl, sp-$20
    ld hl, sp-$20
    ld hl, sp-$20
    ld hl, sp-$20
    ld hl, sp-$20
    ld hl, sp-$20

Call_048_5000:
    ld hl, sp-$20
    db $fc
    ldh [$fc], a
    ldh a, [$fc]
    ldh a, [$fc]
    ldh a, [$fe]
    ldh a, [$fe]
    ldh a, [$fe]
    ldh a, [$f0]
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    ld bc, $0101
    ld bc, $0303
    ld bc, $0101
    ld bc, $0404
    nop
    nop
    add hl, bc
    add hl, bc
    rra
    rra
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    xor a
    rst $38
    xor l
    rst $38
    ld b, c
    rst $38
    sub h
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld c, c
    rst $38
    sub h
    rst $38
    and c
    rst $38
    ld d, [hl]
    rst $38
    sub b
    rst $38
    and d
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    ld b, l
    cp d
    xor l
    ld d, [hl]
    call nc, Call_048_6e2b
    push de
    rst $30
    ld [$10ef], sp
    cp [hl]
    pop bc
    sub d
    rst $38
    rst $38
    ld bc, $01fe
    cp $41
    push af
    ld a, [bc]
    db $fd
    ld [bc], a
    rst $38
    ld [bc], a
    db $fd
    ld b, $fb
    inc b
    rst $38
    inc b
    rst $38
    ldh [rIE], a
    ldh [$f0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f8]
    ld hl, sp-$08
    ld hl, sp-$04
    db $fc
    db $fc
    db $fc
    cp $7e
    cp $7e
    cp $7e
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    dec a
    rst $38
    dec a
    ld a, a
    jr c, jr_048_5126

    jr jr_048_5128

    jr jr_048_512a

    jr jr_048_512c

    jr jr_048_512e

    jr jr_048_50f0

    jr jr_048_50f2

    jr jr_048_50f4

    ld [$083f], sp
    ld a, $0c
    ld a, $10
    ld a, $04
    ld a, $04
    ld a, $14
    ld a, $04
    ld a, $14
    ld a, $14
    ld e, $14
    ld e, $1c
    ld e, $0c
    ld a, $1c
    ld a, $1c
    ld a, $1c
    ccf
    inc d
    ccf
    inc b
    ccf
    inc b
    ld a, a
    inc b
    ld a, a
    inc b
    rst $38
    inc b
    inc b
    inc b
    inc b
    inc b
    inc c
    rrca
    ld c, $0f
    rrca
    rrca
    add hl, de
    rra
    ld a, [hl-]
    ccf
    ld sp, hl
    rst $38

jr_048_50f0:
    inc d
    inc d

jr_048_50f2:
    inc d
    inc d

jr_048_50f4:
    inc d
    inc d
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld b, $06
    ld b, $06
    inc b
    inc b
    dec b
    dec b
    ld b, $07
    rla
    rla
    ld [de], a
    ld [de], a
    nop
    nop
    ld bc, $0f01
    rrca
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    ccf
    ld a, [hl]
    ld a, a
    ld a, a
    ld a, a
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

jr_048_5126:
    rst $38
    rst $38

jr_048_5128:
    rst $38
    rst $38

jr_048_512a:
    rst $38
    rst $38

jr_048_512c:
    cp a
    cp a

jr_048_512e:
    ld c, [hl]
    ld c, [hl]
    cp $fe
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
    db $fd
    db $fd
    ld l, [hl]
    rst $38
    ld e, [hl]
    rst $38
    and l
    rst $38
    sub l
    rst $38
    inc l
    rst $38
    xor b
    rst $38
    jr z, @+$01

    adc b
    rst $38
    ld a, [de]
    rst $38
    sub $ff
    sub b
    rst $38
    and b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    ld [$51ff], sp
    xor $64
    db $db
    ld h, l
    jp c, $ef92

    jp hl


    sub [hl]
    jp z, Jump_048_6cb7

    db $d3
    ld d, l
    ld [$9769], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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

    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_048_51a1:
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
    ld d, l
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
    ld a, b
    add a
    db $fc
    inc bc
    cp $01
    cp $01
    ld a, $01
    ld a, [hl]
    ld bc, $01fe
    cp $01
    db $fc
    inc bc
    jr nc, jr_048_51a1

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $5bff
    nop
    rst $38
    nop
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
    rst $38
    ld e, d
    ld e, d
    ld b, h
    ld b, h
    ld b, d
    ld b, d
    nop
    nop
    ld b, b
    ld b, b
    inc b
    inc b
    inc b
    inc b
    push af
    push af
    daa
    rst $38
    cpl
    rst $38
    xor a
    rst $38
    rst $38
    rst $38
    jp c, Jump_000_02da

    ld [bc], a
    sub a
    sub a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    push af
    rst $38
    reti


    rst $38
    or b
    rst $38
    rst $20
    rst $38
    ld l, c
    rst $38
    and d
    rst $38
    ld h, b
    rst $38
    jp nc, $eaff

    rst $38
    pop de
    rst $38
    db $e4
    rst $38
    ld a, [c]
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
    db $ed
    rst $38
    ld a, e
    rst $38
    sbc $ff
    ccf
    rst $38
    ld c, a
    rst $38
    dec h
    rst $38
    ld [bc], a
    rst $38
    ld d, h
    rst $38
    ld bc, $82ff
    rst $38
    ld b, h
    rst $38
    jr z, @+$01

    and b
    rst $38
    ld a, $ff
    ld [bc], a
    rst $38
    dec d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc d
    ei
    xor c
    ld d, a
    ld b, d
    cp l
    xor c
    ld d, [hl]
    ld l, $d1
    push de
    ld l, d
    cp a
    ld h, h
    rst $38
    nop
    dec d
    ld a, [$ab76]
    db $db
    inc h
    ld l, a
    cp b
    rst $38
    ld b, h
    rst $38
    nop
    rst $38
    ld hl, $00ff
    rst $38
    nop
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    ld e, a
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    ld b, $ff
    ld [bc], a
    rst $38
    ld [bc], a
    db $fd
    dec b
    ld hl, sp+$01
    ld hl, sp+$01
    ld hl, sp+$01
    cp $00
    rst $38
    nop
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
    ld b, $ff
    ld b, $ff
    ld c, $ff
    ld e, $ff
    ld a, $ff
    ld a, [hl]
    rst $38
    cp $00
    cp $00
    nop
    cp $03
    cp $fb
    ld b, $fd
    ld [bc], a
    cp $07
    db $fc
    rst $38
    ld bc, $1101
    ld de, $0202
    ld bc, $0101
    ld bc, $2222
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld a, b
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$40
    ret nz

    nop
    nop
    nop
    nop
    ld hl, sp-$08
    cp h
    cp h
    db $fc
    db $fc
    db $fc
    db $fc
    db $ec
    db $fc
    ld d, h
    db $fc
    sub [hl]
    cp $24
    db $fc
    ld c, h
    db $fc
    and [hl]
    cp $56
    cp $06
    cp $24
    db $fc
    ld d, d
    cp $86
    cp $4a
    cp $ae
    cp $7c
    db $fc
    db $fc
    db $fc
    cp $fe
    cp $fe
    cp $fe
    db $fc

jr_048_5339:
    db $fc
    db $fc
    db $fc
    call nc, $fefc
    cp $54
    db $fc
    ld e, d
    cp $22
    cp $92
    cp $4b
    rst $38
    ld d, a
    rst $38
    sub d
    cp $23
    rst $38
    inc bc
    rst $38
    set 7, a
    add e
    rst $38
    ld bc, $21ff
    rst $38
    ld [bc], a
    rst $38
    add hl, hl
    rst $10
    sub l
    ld a, e
    jr z, jr_048_5339

    ld d, l
    xor e
    ld d, a
    jp hl


    xor [hl]
    ld [hl], l
    rst $38
    add c
    sbc $21
    rst $38
    ld bc, $41bf
    ret z

    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld hl, $01ff
    rst $38
    ld bc, $fdf2
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    or $f9
    ld a, [c]
    db $fd
    or $f9
    and $f9
    rst $20
    ld sp, hl
    rst $20
    ld sp, hl
    rst $20
    ld sp, hl
    rst $20
    ld sp, hl
    rst $20
    ld sp, hl
    rst $20
    ld sp, hl
    rst $20
    ld sp, hl
    rst $20
    ld sp, hl
    rst $00
    ld sp, hl
    ld b, a
    ld sp, hl
    ld b, a
    ld sp, hl
    ld b, a
    ld sp, hl
    ld b, a
    ld sp, hl
    ld b, a
    ld sp, hl
    ld c, a
    pop af
    ld c, a
    pop af
    ld c, l
    di
    ld c, a
    pop af
    ld c, a
    pop af
    rst $08
    pop af
    call $cdf3
    di
    call Call_048_4df3
    di
    call Call_048_4df3
    di
    ld c, l
    di
    push bc
    ei
    push bc
    ei
    rst $08
    di
    rst $00
    ei
    rst $00
    ei
    jp $c3ff


    rst $38
    jp $c3ff


    rst $38
    jp $c3ff


    rst $38
    jp $c3ff


    rst $38
    jp $c3ff


    rst $38
    jp $c3ff


    rst $38
    db $e3
    rst $38
    jp $e380


    add b
    db $e3
    add b
    rst $20
    add b
    rst $20
    add b
    rst $20
    add b
    rst $20
    add b
    rst $20
    add b
    rst $20
    add b
    and a
    ret nz

    rst $20
    ret nz

    rst $30
    ret nz

    sub a
    ldh [$97], a
    ldh [$9f], a
    ldh [$97], a
    ldh [$80], a
    ldh [$90], a
    ldh a, [$90]
    ldh a, [$d0]
    ldh a, [$f0]
    ldh a, [$c0]
    ldh a, [$d0]
    ldh a, [$d0]
    ldh a, [$a0]
    ld hl, sp-$28
    ld hl, sp-$18
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    ld hl, sp-$04
    db $fc
    db $fd
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    ld hl, sp-$01
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
    cp $fe
    cp $fe
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    pop af
    rst $38
    db $f4
    rst $38
    db $fd
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
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
    add b
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
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b

jr_048_549c:
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
    ld hl, sp+$07
    ldh a, [rIF]
    rst $20
    rra
    rst $08
    jr nc, jr_048_549c

    jr nz, jr_048_551e

    and b
    ld d, a
    and b
    ld d, a
    and b
    ld d, a
    and b
    ld d, a
    and b
    ld d, a
    and b
    ld d, a
    and b
    ld d, a
    and b
    ld d, a
    and b
    ld d, a
    and b
    ld d, a
    and b
    ld d, a
    and b
    ld d, a
    and b
    ld d, a
    and b
    ld e, a
    and b
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$03
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
    nop
    rst $38
    nop
    nop
    db $10
    ld bc, $030d
    nop
    rrca
    dec b
    ccf
    ld b, $ff
    inc e
    rst $38

jr_048_551e:
    jr c, @+$01

    ld a, b
    rst $38
    ld a, [de]
    rst $38
    ld [bc], a
    cp $00
    db $fc
    ld h, b
    ldh a, [$c0]
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
    inc bc
    inc bc
    ld c, $0f
    ld a, [hl-]
    dec a
    pop hl
    rst $38
    adc a
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rlca
    rst $38
    ld [$1808], sp
    jr jr_048_556f

    ld a, [de]
    nop
    nop
    db $10
    db $10
    and b
    and b
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
    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    nop

jr_048_556f:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld bc, $00fe
    rst $38
    cp $ff
    rst $38
    inc bc
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
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
    cp $03
    db $76
    adc a
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $07
    ld b, $0f

jr_048_55de:
    inc c
    rra
    ld [de], a
    ld a, a
    ret nz

    rst $38
    nop
    rst $38
    db $10
    rst $38
    ret c

    rst $38
    push de
    rst $38
    db $f4
    cp $40
    ld hl, sp-$60
    ldh [$80], a
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
    ld [bc], a
    inc bc
    inc c
    rrca
    jr nc, @+$41

    pop hl
    rst $38
    adc a
    rst $38
    xor a
    ld a, a
    ld bc, $0001
    nop

jr_048_5614:
    nop
    nop

jr_048_5616:
    nop
    nop

jr_048_5618:
    inc b

jr_048_5619:
    inc b
    db $10
    db $10

jr_048_561c:
    ld de, $5f11
    ld e, a
    jr nc, @+$32

    ld l, b
    ld l, b
    rra
    rra
    ccf
    ccf
    db $fc
    db $fc
    xor d
    xor d
    cpl
    cpl
    ld d, $16
    inc b
    inc b
    inc d
    inc d
    ld [de], a
    ld [de], a
    db $10
    db $10
    ld b, b
    ld b, b
    ld [bc], a
    ld [bc], a
    adc d
    adc d
    ld a, [bc]
    ld a, [bc]
    db $e3
    inc e
    db $e3
    inc e
    db $e3
    inc e
    db $e3
    inc e
    jp $c73c


    jr c, jr_048_5614

    jr c, jr_048_5616

    jr c, jr_048_5618

    jr c, jr_048_5619

    jr c, jr_048_561c

    jr c, jr_048_55de

    ld a, b
    add [hl]
    ld a, b
    add a
    ld a, b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
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
    nop
    rst $38
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    ld a, l
    add b
    dec a
    ret nz

    cp l
    ret nz

    sbc l
    ldh [$9d], a
    ldh [$9d], a
    ldh [$9d], a
    ldh [$9d], a
    ldh [rNR33], a
    ldh [rNR33], a
    ldh [$3d], a
    ret nz

    dec a
    ret nz

    dec sp
    ret nz

    dec sp
    ret nz

    dec sp
    ret nz

    dec sp
    ret nz

    dec sp
    ret nz

    dec sp
    ret nz

    dec sp
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
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$01
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
    ld bc, $0700
    inc c
    rrca
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
    and b
    rst $38
    ld h, h
    rst $38
    inc b
    db $fc
    nop
    ldh a, [rLCDC]
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
    ld [bc], a
    inc bc
    ld bc, $240e
    dec sp
    ld h, b
    rst $38
    inc b
    rst $38
    add b
    ld a, a
    ld l, $ff
    ei
    rst $38
    ei
    rst $38
    cp $ff
    dec bc
    dec bc
    ld e, d
    ld e, d
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld e, d
    ld e, d
    dec d
    dec d
    ld d, $16
    and $e6
    ld [hl-], a
    ld [hl-], a
    inc d
    inc d
    inc c
    inc c
    add [hl]
    add [hl]
    ld b, d
    ld b, d
    ld h, b
    ld h, b
    ld d, b
    ld d, b
    inc b
    inc b
    inc h
    inc h
    ld h, b
    ld h, b
    nop
    nop
    jr nz, @+$22

    jr nz, jr_048_574a

    nop
    nop
    jr nz, jr_048_574e

    jr nz, @+$22

    ld [$e900], a
    nop
    ld [$d400], a
    nop
    add sp, $00
    ldh [rP1], a
    ret nc

    nop
    jp c, $a400

    nop
    call nc, Call_048_5000
    nop
    ld [$a500], a
    nop

jr_048_574a:
    jp nc, $b400

    nop

jr_048_574e:
    jp nc, $f900

    nop
    xor l
    nop
    push de
    nop
    call nc, $e500
    nop
    or l
    nop
    push af
    nop
    or d
    nop
    push af
    nop
    ei
    nop
    rst $30
    nop
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
    ld de, $033e
    ld a, h
    rrca
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$0e], a
    pop af
    ld b, $f9
    inc b
    ld a, [$f800]
    nop
    ldh [rP1], a
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
    ld bc, $0001
    rlca
    ld bc, $001e
    dec sp
    ret nc

    rst $28
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp b
    cp b
    dec b
    dec b
    ld b, a
    ld b, a
    dec [hl]
    dec [hl]
    rla
    rla
    dec hl
    dec hl
    inc bc
    inc bc
    inc de
    inc de
    ld c, e
    ld c, e
    sbc e
    sbc e
    dec hl
    dec hl
    ld [hl], $36
    ld a, [de]
    ld a, [de]
    rst $00
    rst $00
    xor e
    xor e
    inc de
    inc de
    ld d, $16
    ld [de], a
    ld [de], a
    ld e, $1e
    ld d, $16
    sub [hl]
    sub [hl]
    adc [hl]
    adc [hl]
    ld b, $06
    inc b
    inc b
    ld d, $16
    inc e
    inc e
    nop
    nop
    dec l
    dec l
    rrca
    rrca
    rra
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
    add b
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    ld b, b
    nop
    add d
    nop
    ld d, b
    nop
    or b
    nop
    jr z, jr_048_582e

jr_048_582e:
    sub h
    nop
    ld c, c
    nop
    and l
    nop
    ld l, d
    nop
    jp c, $7d00

    nop
    cp $00
    rst $38
    nop
    db $fd
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_048_5856:
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    dec b
    rst $38
    dec b
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
    rst $00
    ccf
    rrca
    rst $38
    inc c
    rst $38
    jr @+$01

    db $10
    rst $38
    nop
    rst $38
    nop
    rlca
    ld bc, $231e
    inc a
    rst $08
    ldh a, [$3f]
    ret nz

    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, h
    add b
    jr nc, jr_048_5856

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
    ld bc, $0700
    ld bc, $041c
    ld [hl], e
    add b
    rst $38
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
    rst $38
    rst $38
    ld a, $3e
    ei
    ei
    cp $fe
    cp h
    cp h
    cp a
    cp a
    cp e
    cp e
    add hl, sp
    add hl, sp
    inc sp
    inc sp
    ld sp, $3331
    inc sp
    ld [hl], e
    ld [hl], e
    ld sp, $2331
    inc hl
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    inc h
    inc h
    daa
    daa
    daa
    daa
    ld h, b
    ld h, b
    ld [hl], d
    ld [hl], d
    ld b, c
    ld a, a
    ccf
    ccf
    dec b
    dec b
    ld l, b
    ld l, b
    ld c, l
    ld c, l
    ld d, a
    ld d, a
    ld c, a
    ld c, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    db $e4
    db $e4
    nop
    nop
    nop
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
    ld [bc], a
    nop
    inc h
    nop
    add hl, hl
    nop
    and l
    nop
    sub d
    nop
    push de
    nop
    xor l
    nop
    ei
    nop
    ld a, l
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [de], a
    rst $38
    ld d, $ff
    ld [hl], $ff
    ld h, $ff
    ld [hl], $ff
    ld d, h
    rst $38
    inc b
    rst $38
    ld b, $ff
    ld e, [hl]
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

jr_048_5943:
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fc
    ld hl, sp-$01
    ldh a, [rIE]
    ret nz

    nop
    ld b, b
    nop
    add b
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    jr jr_048_597c

    ld h, b
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
    cp $00
    db $fc
    nop
    ldh a, [rP1]
    ret nz

    nop
    nop
    nop
    nop
    ld bc, $0601
    rlca
    jr jr_048_5995

    ld h, e
    jr c, jr_048_5943

jr_048_597c:
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
    rst $38
    rst $38
    rst $38
    rst $38
    or a
    cp a
    ld a, l
    ld a, l
    db $fc
    db $fc
    rst $38

jr_048_5995:
    rst $38
    db $e3
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
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    rst $38
    rst $38
    cp a
    cp a
    rst $38
    rst $38
    cp $fe
    dec [hl]
    dec [hl]
    sbc c
    sbc c
    nop
    nop
    rst $38
    rst $38
    rst $30
    rst $38
    ld a, a
    ld a, a
    ld e, $1f
    ld sp, hl
    rst $38
    rst $28
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    nop
    nop
    ld b, d
    nop
    ld [hl+], a
    nop
    ld d, h
    nop
    sub d
    nop
    ld d, l
    nop
    db $db
    nop
    cp [hl]
    nop
    db $ed
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
    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld c, b
    rst $38
    inc e
    rst $38
    jr nc, @+$01

    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

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
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    jr jr_048_5a22

    ld [hl], b
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
    cp $00

jr_048_5a22:
    ld hl, sp+$00
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
    ld bc, $0605
    rlca
    jr jr_048_5a5d

    ld h, e
    ld a, b
    add a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_048_5a5d:
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    cp a
    cp a
    sbc a
    sbc a
    rst $08
    rst $08
    db $e3
    db $e3
    ld sp, hl
    ld sp, hl
    db $fc
    db $fc
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ei
    ei
    reti


    reti


    reti


    reti


    ld sp, hl
    ld sp, hl
    jp c, $f1da

    pop af
    db $db
    db $db
    ld a, $3f
    ld hl, sp-$01
    db $e3
    rst $38
    sbc a
    rst $38
    ld h, b
    ldh [rP1], a
    nop
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
    dec b
    dec b
    nop
    ld bc, $0000
    nop
    nop
    ld [bc], a
    inc bc
    inc b
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    nop
    dec bc
    nop
    nop
    nop
    inc c
    inc b
    dec c
    ld c, $0f
    db $10
    ld de, $0412
    inc b
    inc b
    inc de
    nop
    nop
    nop
    nop
    inc d
    dec d
    ld d, $17
    jr jr_048_5ae4

    ld a, [de]
    ld a, [de]
    dec de
    inc b
    inc b
    inc e
    nop
    nop
    nop
    dec e
    inc b
    ld e, $04
    rra
    jr nz, jr_048_5af5

    ld a, [de]
    ld a, [de]
    ld hl, $0404
    nop
    ld [hl+], a
    nop
    nop

jr_048_5ae4:
    inc hl
    inc h
    dec h
    inc b
    ld h, $1a
    ld a, [de]
    ld a, [de]
    daa
    jr z, jr_048_5af3

    inc b
    nop
    add hl, hl
    nop

jr_048_5af3:
    nop
    ld a, [hl+]

jr_048_5af5:
    dec hl
    inc l
    inc b
    dec l
    ld l, $2f
    ld l, $30
    inc b
    ld sp, $0032
    nop
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_048_5b42

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    nop
    nop
    nop
    nop
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    nop
    nop
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    nop
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    nop
    nop
    nop
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
    nop
    ld h, e
    ld h, h
    ld h, l
    cpl
    ld h, [hl]

jr_048_5b42:
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
    ld [hl], h
    ld a, [de]
    ld a, [de]
    ld [hl], l
    inc b
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld c, d
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    inc b
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    nop
    nop
    adc e
    adc h
    adc l
    inc b
    inc b
    inc b
    adc [hl]
    nop
    adc a
    sub b
    sub c
    sub d
    sub e
    nop
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
    nop
    nop
    cp c
    cp d
    nop
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    inc b
    inc b
    ret nz

    pop bc
    pop bc
    jp nz, $c4c3

    nop
    nop
    nop
    push bc
    add $c7
    ret z

    ret


    jp z, $cccb

    call $cfce
    ret nc

    nop
    nop
    nop
    nop
    nop
    nop
    pop de
    jp nc, $d4d3

    push de
    sub $d7
    rst $10
    rst $10
    ret c

    reti


    nop
    nop
    nop
    nop
    nop
    nop
    jp c, $dcdb

    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0001
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
    ld bc, $0001
    nop
    nop
    nop
    nop
    dec b
    dec b
    dec b
    dec b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
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
    ld bc, $0000
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
    ld bc, $0001
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
    ld bc, $0001
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
    ld bc, $0101
    ld bc, $0004
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0201
    ld bc, $0204
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
    dec b
    dec b
    dec b
    dec b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    jr nz, jr_048_5c82

jr_048_5c82:
    nop
    nop
    dec b
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
    ld [hl+], a
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
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    inc b
    ld [bc], a
    ld bc, $0202
    ld bc, $0105
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    dec b
    ld bc, $0505
    dec b
    nop
    nop
    ld bc, $0100
    nop
    nop
    dec b
    dec b
    ld bc, $0505
    dec b
    dec b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    ld bc, $0101
    ld bc, $0000
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
    ld bc, $0001
    nop
    nop
    nop
    nop
    dec b
    ld bc, $0501
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $0505
    dec b
    dec b
    dec b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, [$c0ff]
    rst $38
    add b
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    ld b, $06
    ld c, $0e
    ld c, $0e
    ld c, $0e
    inc c
    inc c
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    jr jr_048_5dae

    jr c, jr_048_5dd0

    jr c, jr_048_5dd2

    jr c, jr_048_5dd4

    jr c, jr_048_5dd6

    jr nc, jr_048_5dd0

    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ldh [$e0], a

jr_048_5dae:
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

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

jr_048_5dd0:
    db $fc
    rst $38

jr_048_5dd2:
    add sp, -$01

jr_048_5dd4:
    and b
    rst $38

jr_048_5dd6:
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    ret nz

    rst $38
    add b
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
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    ld b, $06
    ld c, $0e
    ld c, $0e
    inc c
    inc c
    inc e
    inc e
    jr jr_048_5e2c

    jr c, @+$3a

    jr c, jr_048_5e50

    jr nc, jr_048_5e4a

    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld h, b
    ld h, b
    ldh [$e0], a
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

jr_048_5e2c:
    add b
    add b
    nop
    nop
    nop
    rst $38
    ld bc, $01fe
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc

jr_048_5e4a:
    ld bc, $01fe
    cp $00
    rst $38

jr_048_5e50:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push af
    rst $38
    db $fc
    rst $38
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
    nop
    nop
    nop
    nop
    ld bc, $0f00
    rrca
    rra
    rra
    inc e
    inc e
    jr jr_048_5e96

    jr c, jr_048_5eb8

    jr nc, @+$32

    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ldh [$e0], a
    ldh [$e0], a
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
    nop
    nop

jr_048_5e96:
    nop
    nop
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
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ld a, a
    add b

jr_048_5eb8:
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
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
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
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    rst $38
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
    ret nz

    rst $38
    inc bc
    nop
    ccf
    rrca
    cp $f0
    ldh a, [$80]
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
    ld bc, $03fe
    db $fc
    rrca
    ldh a, [$1f]
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
    rst $38
    nop
    rst $38
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
    inc a
    jp $ff1f


    rrca
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $00ff
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
    rlca
    nop
    ccf
    rlca
    cp $f0
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc a
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
    nop
    cp $01
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh [rIE], a
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
    rst $38
    nop
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
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ret nz

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
    rlca

Call_048_603b:
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0100
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
    rst $38
    ld a, a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    nop
    ccf
    nop
    ccf
    nop
    ccf
    ld bc, $017f
    ld a, a
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
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

jr_048_6123:
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
    rst $38
    rst $38
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    rst $28
    rst $28
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    db $10
    rst $28
    jr nz, jr_048_6123

    rla
    ld l, b
    cpl
    ld d, b
    cpl
    ld d, b
    daa
    ld e, b
    cpl
    ld d, b
    rrca
    ld [hl], b
    rrca
    ld [hl], b
    inc bc
    inc a
    ld de, $002e
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
    rra
    nop
    rra
    nop
    rra
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $000f
    rlca
    ld bc, $0107
    rlca
    ld [bc], a
    rlca
    inc bc
    rlca
    ld bc, $0107
    rlca
    ld bc, $0107
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0303
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
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
    ld bc, $fe01
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$f0]
    ldh [$e0], a
    pop hl
    pop hl
    ld [c], a
    db $e3
    and $e7
    rst $28
    rst $28
    cp $ff
    rst $38
    cp $03
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    ld b, $06
    ld [bc], a
    ld [bc], a
    nop
    nop
    inc b
    inc b
    inc c
    inc c
    ld c, $0e
    ld [de], a
    ld [de], a
    dec hl
    dec hl
    ld l, $2e
    ld a, [hl]
    ld a, [hl]
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    rst $10
    rst $38
    xor a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    cp $fe
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f0]
    ld [hl], b
    ld [hl], b
    ld a, b
    ld a, b
    ldh [$e0], a
    xor b
    xor b
    jr nz, jr_048_6266

    nop
    nop
    add b
    add b
    nop
    nop
    nop
    nop
    ld b, $06
    ld b, $02
    ld [$1c0c], sp
    inc d
    ld [$1018], sp
    jr nz, jr_048_627b

    db $10
    ret z

    ld hl, sp+$40
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop

jr_048_6266:
    nop
    nop
    inc b
    inc b
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    dec a

jr_048_627b:
    dec a
    ccf
    ccf
    ccf
    ccf
    ld e, a
    ld e, a
    ld c, a
    ld c, a
    ld b, a
    ld b, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    adc $cf
    cp $02
    cp $02
    cp $02
    cp $02
    and $02
    add $02
    add h
    inc b
    add h
    inc b
    add h
    ld b, h
    inc h
    db $e4
    ld b, h
    db $e4
    add h
    db $e4
    add h
    db $e4
    inc b
    db $e4
    inc b
    db $e4
    inc b
    db $e4
    inc d
    ldh [rNR14], a
    ldh [rNR14], a
    ldh [rNR32], a
    ldh [rNR32], a
    ldh [rNR32], a
    ldh [rNR32], a
    ldh a, [rNR32]
    ldh a, [rNR32]
    ldh a, [rNR32]
    ldh a, [rNR32]
    ldh a, [rNR32]
    ldh a, [rNR34]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    db $f4
    inc d
    db $f4
    inc d
    db $f4
    inc b
    db $f4
    inc b
    db $f4
    inc b
    db $f4
    inc d
    db $f4
    inc d
    db $f4
    inc d
    db $f4
    inc d
    db $f4
    inc d
    db $f4
    inc d
    push af
    inc d
    push af
    inc d
    rst $30
    db $10
    rst $30
    db $10
    rst $30
    inc d
    rst $30
    inc [hl]
    rst $10
    inc [hl]
    db $d3
    cp h
    db $d3
    sbc c
    rst $30
    adc c
    rst $38
    ld c, c
    rst $38
    jp z, $caff

    rst $38
    ld sp, $3331
    inc sp
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    jr nc, jr_048_633c

    inc [hl]
    inc [hl]
    jr nc, jr_048_6340

    jr nc, jr_048_6342

    db $10
    db $10
    db $10
    db $10
    ld sp, $1131
    ld de, $1313
    ld [de], a
    ld [de], a
    inc de
    inc de
    rla
    rla
    inc d
    dec d
    dec d
    inc d
    rla
    ld d, $13
    inc de
    ld de, $1512
    ld d, $1f
    rra
    db $10
    rra
    db $10
    rra
    dec [hl]
    ccf
    add hl, de
    rra
    ld e, $1f
    ccf
    ccf

jr_048_633c:
    ccf
    ccf
    ccf
    ccf

jr_048_6340:
    scf
    scf

jr_048_6342:
    jr nc, jr_048_6374

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rla
    rla
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $8501
    add l
    add d
    add d
    sbc d
    sbc d
    ld hl, sp-$08
    cp d
    cp d
    ld c, a
    ld c, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_048_6374:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $ed
    rst $38
    jr @+$01

    rra
    ldh [$5f], a
    ldh [$79], a
    ld hl, sp+$70
    ldh a, [$e0]
    ld h, b
    pop bc
    ld b, b
    db $e3
    ld b, b
    db $e3
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    rra
    ldh [rTAC], a
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
    add b
    rst $38
    ldh [rIE], a
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
    ret nz

    ccf
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
    and b
    rst $38
    nop
    rst $38
    ld d, b
    rst $38
    ldh [$e0], a
    ld h, b
    ld h, b
    ld b, b
    ld b, b
    call nz, $c0c4
    ret nz

    add b
    add b
    add b
    add b
    nop
    nop
    dec c
    dec c
    nop
    nop
    ld [$0008], sp
    nop
    jr jr_048_6402

    ld d, a
    ld e, a
    inc hl
    ccf
    jr nc, jr_048_642f

    ld de, $5b3f
    ld h, l
    ccf
    ld [hl], l
    ld a, l
    ld d, a
    ld a, a
    ld l, c
    cp $9d
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38
    add hl, bc

jr_048_6402:
    rst $38
    add d
    rst $38
    inc d
    rst $38
    ld bc, $82ff
    rst $38
    xor d
    ld e, e
    or l
    ld e, e
    xor $3c
    rst $38
    ld l, h
    rst $38
    ld [hl], d
    rst $38
    ld a, a
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
    cp $fe
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

jr_048_642f:
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0001
    nop
    ld [bc], a
    ld [bc], a
    scf
    scf
    ld [hl], a
    ld [hl], a
    inc bc
    inc bc
    ld bc, $e001
    ldh [$af], a
    xor a
    cpl
    cpl
    cpl
    cpl
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push hl
    rst $38
    ret nc

    rst $38
    db $ed
    rst $38
    call c, $cfff
    rst $38
    rst $18
    rst $38
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
    nop
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    db $fd
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    cp a
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    db $10
    db $10
    add b
    add b
    inc b
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
    db $10
    stop
    nop
    ldh [$e0], a
    rst $38
    rst $38
    ld a, a
    rst $38
    db $76
    rst $38
    cpl
    rst $38
    ld c, l
    rst $38
    db $eb
    rst $38
    jp hl


    ld e, a
    reti


    cp a
    db $dd
    rst $38
    pop af
    ld e, a
    ret nc

    ld a, a
    ld hl, sp-$49
    ld hl, sp-$41
    db $e4
    ld a, a
    db $d3
    cp a
    ld h, b
    rst $38
    ld hl, $a7ff
    ld a, a
    cpl
    rst $38
    ei
    rst $38
    rst $28
    rst $38
    rst $10
    rst $38
    rst $10
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, a
    ld l, a
    ld [hl], d
    ld [hl], d
    ld a, h
    ld a, h
    ld c, a
    ld c, a
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
    ldh [$e0], a
    cp $fe
    ld a, h
    ld a, h
    jr jr_048_6520

    nop
    nop
    add b
    add b
    add b
    add b
    cpl
    cpl
    inc bc
    inc bc
    ret nz

    ret nz

    call nc, $c0d4
    ret nz

    pop hl
    pop hl
    ei
    ei
    rst $38
    rst $38
    cp a
    rst $38

jr_048_6520:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rrca
    rst $38
    xor a
    rst $38
    rra
    rst $38
    ld c, l
    rst $38
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
    ld a, a
    add b
    rst $38
    rst $38
    rst $28
    rst $28
    jr nz, jr_048_6596

    nop
    nop
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    add e
    add e
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
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_048_6596:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    rst $38
    rst $38
    db $fc
    db $fc
    cp $fe
    ld a, $fe
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$fffa]
    rst $38
    ld a, a
    rst $38
    db $fc
    db $fc
    db $fd
    db $fd
    rst $38
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    cp $fe
    rst $38
    rst $38
    pop bc
    pop bc
    add h
    add h
    db $10
    stop
    nop
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
    ret c

    ret c

    ld hl, sp-$08
    jr z, jr_048_660c

    db $10
    db $10
    ld hl, sp-$08
    add sp, -$18
    ld hl, sp-$08
    add sp, -$18
    add sp, -$18
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    db $fc
    db $fc
    or h
    db $f4
    call c, $ecfc
    db $fc
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

jr_048_660c:
    rra
    rst $38
    ccf
    rst $38
    nop
    ldh [rP1], a
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld a, h
    ld a, h
    nop
    nop
    nop
    nop
    nop
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
    cp $ff
    cp $ff
    cp $ff
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
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $fe
    cp $ff
    db $fc
    cp $fc
    ld hl, sp-$04
    ldh a, [$f8]
    ld hl, sp-$10
    ld hl, sp-$10
    ld hl, sp-$10
    ld hl, sp-$10
    ldh a, [$f8]
    db $fc
    ld hl, sp-$06
    db $fc
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
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
    db $fd
    cp $fc
    cp $fa
    db $fc
    add sp, -$10
    ldh [$f0], a
    ldh a, [$e0]
    ldh [$f0], a
    ldh [$f0], a
    ld hl, sp-$10
    db $fc
    ld hl, sp-$06
    db $fc
    ld sp, hl
    cp $f8
    rst $38
    ld hl, sp-$01
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld b, $ff
    ld b, $ff
    ld b, $ff
    rlca
    cp $0f
    cp $0d
    cp $0d
    cp $0d
    cp $0f
    db $fc
    dec de
    db $fc
    dec de
    db $fc
    dec de
    db $fc
    dec de
    db $fc
    ccf
    ld hl, sp+$3f
    ld hl, sp+$36
    ld sp, hl
    scf
    ld sp, hl
    ld [hl], a
    ld sp, hl
    ld a, a
    pop af
    db $fd
    di
    rst $38
    di
    rst $28
    di
    rst $28
    di
    rst $38
    db $e3
    ei
    rst $20
    rst $38
    rst $20
    rst $18
    rst $20
    rst $18
    rst $20
    rst $18
    rst $20
    rst $30
    rst $08
    rst $30
    rst $08
    rst $30
    rst $08
    or a
    rst $08
    xor a
    rst $18
    xor a
    rst $18
    sbc a
    inc b
    sbc a
    ld bc, $099f
    sbc a
    add hl, bc
    cp a
    add hl, bc
    cp a
    inc bc
    cp a
    inc de
    rst $38
    inc de
    rla
    rst $38
    daa
    rst $38
    daa
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    ld e, a
    rst $38
    ld e, [hl]
    rst $38
    rst $38
    ld e, [hl]
    rst $38
    ld e, [hl]
    rst $38
    sbc $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    cp $fc
    cp $f8
    cp $f8
    cp $f8
    db $fc
    ld hl, sp-$04
    ldh a, [$fc]
    ldh a, [$f8]
    ldh a, [$f8]
    ldh [$f8], a
    ldh a, [$f1]
    ldh [$f1], a
    ret nz

    pop af
    ret nz

    pop af
    ret nz

    ld a, [c]
    add b
    ld a, [c]
    add b
    and $80
    db $ec
    add b
    ei
    db $ec
    rst $18
    db $ec
    db $e3
    call c, $d8ff
    or $d9
    or $99
    db $fc
    or e
    add sp, -$49
    add sp, $37
    ld hl, sp+$67
    ldh a, [$6f]
    ret nc

    rst $28
    ldh a, [$cf]
    ldh [$df], a
    and b
    rst $18
    ld hl, sp+$1f
    jr jr_048_67b1

    ld l, h
    ccf
    ld e, [hl]
    daa
    inc a
    daa
    inc a
    rra
    ld e, $01
    inc b
    inc bc
    nop
    rlca
    nop
    rrca
    pop hl
    rra
    add c
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
    jr nc, @+$01

    ld l, h
    ccf
    inc a
    ld h, a
    ld h, $1f
    ld d, $0f
    rlca
    nop
    ld bc, $0000
    inc bc
    inc bc
    nop
    dec b
    ld [bc], a
    ld bc, $0406
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    ld a, b
    add a
    nop
    rst $38
    sub e

jr_048_67b1:
    rst $38
    or a
    rst $38
    inc sp
    rst $38
    or e
    ld a, a
    and a
    ld a, a
    and a
    ld a, a
    and a
    ld a, a
    and a
    ld a, a
    daa
    ld bc, $016f
    ld l, a
    inc bc
    ld c, a
    inc bc
    ld c, a
    ld b, e
    ld c, a
    ld b, a
    ld e, a
    ld c, a
    ld e, a
    rrca
    rst $18
    rrca
    cp a
    rra
    cp a
    sbc a
    cp a
    or a
    rst $38
    daa
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    ld c, a
    rst $18
    rst $38
    adc a
    rst $38
    sbc l
    rst $38
    sbc l
    rst $38
    sbc h
    rst $38
    inc a
    rst $38
    jr c, @+$01

    jr c, @+$01

    rst $38
    jr c, @+$01

    jr c, @+$01

    ld a, b
    ei
    ld [hl], b
    ei
    ld [hl], b
    ei
    ld [hl], b
    ei
    ldh a, [$fb]
    ldh a, [$f3]
    ldh a, [$f3]
    ldh [$f3], a
    ldh [$f3], a
    ldh [$e3], a
    ldh [$e7], a
    ret nz

    rst $20
    ret nz

    rst $20
    ret nz

    rst $20
    ret nz

    rst $00
    add b
    rst $00
    add b
    rst $00
    nop
    rst $08
    nop
    rst $08
    nop
    adc a
    nop
    adc a
    nop
    sbc a
    nop
    sbc a
    nop
    rra
    ld bc, $031f
    rra
    rlca
    ccf
    inc b
    inc a
    ld [$003c], sp
    ld a, h
    rst $38
    ld a, b
    rst $38
    ld [hl], a
    ld hl, sp-$12
    pop af
    call c, $d8e3
    rst $20
    cp b
    rst $00
    or b
    rst $08
    ld [hl], b
    adc a
    ld h, b
    sbc a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    inc b
    ei
    inc b
    ei
    ld b, $f9
    rlca
    ld hl, sp+$07
    ld hl, sp+$27
    ret c

    daa
    ret c

    scf
    ret z

    ld [hl], a
    adc b
    rst $30
    adc b
    cp a
    ret nz

    ld a, a
    ret nz

    rlca
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$29
    ld hl, sp-$29
    ld hl, sp-$29
    ld hl, sp-$19
    ld hl, sp-$1d
    db $fc
    ld l, e
    db $f4
    ld l, e
    db $f4
    dec de
    db $e4
    ld a, e
    add h
    di
    inc c
    di
    inc c
    pop af
    ld c, $f1
    ld c, $ff
    ld c, $ff
    ld b, $ff
    ld b, $fa
    rlca
    ld a, [c]
    rrca
    ldh a, [rIF]
    add b
    ld a, a
    nop
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
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
    cp $ff
    rst $38
    rst $38
    cp $00
    cp $00
    ei
    nop
    db $fd
    nop
    push af
    nop
    cp $00
    cp $00
    rst $38
    ld a, $ff
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
    ccf
    ld a, a
    rra
    ccf
    rra
    ccf
    rrca
    rra
    rlca
    rrca
    inc bc
    rlca
    ld bc, $0003
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $01ff
    rst $38
    ld bc, $01ff
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
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ld hl, sp+$07
    ld a, [$fe05]
    ld bc, $01fe
    cp $01
    cp $01
    cp $01
    cp $01
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
    ld [hl], b
    adc a
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
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
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
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    ld [hl], a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ld a, d
    rst $38
    xor l
    rst $38
    db $eb
    add b
    or $c0
    rst $38
    ldh a, [rIE]
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
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
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
    ld a, a
    ccf
    ld a, a
    inc a
    ld a, a
    inc a
    ld a, a
    inc a
    ld a, a
    inc a
    ld a, a
    inc a
    ld a, a
    inc a
    ld a, a
    inc a
    ld a, a
    inc a
    ld a, a
    inc a
    ld a, a
    inc a
    ld a, a
    inc a
    ld a, a
    inc a
    ld a, a
    inc a
    ld a, a
    inc a
    ld a, a
    inc a
    ld a, a
    inc a
    ld a, a
    inc a
    ld a, a
    jr c, jr_048_6a70

    jr c, jr_048_6a72

    jr c, jr_048_6a74

    jr c, jr_048_6a76

    jr c, jr_048_6a78

    jr c, jr_048_6a7a

    jr c, jr_048_6a7c

    jr c, jr_048_6a7e

    jr c, jr_048_6a80

    jr c, jr_048_6a82

    jr c, jr_048_6a84

    ld a, b
    ld a, a
    ld a, b
    ld a, a
    ld a, b
    ld a, a
    ld a, b
    ld a, a
    ld a, b
    ld a, a
    ld a, b
    ld a, a
    ld a, b
    ld a, a
    ld a, b
    ld a, a
    ld a, b
    ld a, a
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld [hl], b
    rst $38
    ld a, b
    rst $38
    ldh a, [rIE]
    rst $38
    ld sp, hl
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ret nz

    rst $38
    ret nz

    rst $28
    ret nz

    rst $30
    ret nz

    rst $38
    ret nz

    cp $c0
    rst $38
    ret nz

    or $c0
    xor $c0
    db $e4
    ret nz

    push hl
    ret nz

    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    pop hl
    ret nz

    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a

jr_048_6a70:
    ldh [rLCDC], a

jr_048_6a72:
    ldh [rLCDC], a

jr_048_6a74:
    ldh [rLCDC], a

jr_048_6a76:
    ldh [rLCDC], a

jr_048_6a78:
    ldh [rLCDC], a

jr_048_6a7a:
    ldh [rLCDC], a

jr_048_6a7c:
    ldh [rP1], a

jr_048_6a7e:
    ldh [rP1], a

jr_048_6a80:
    ldh [rLCDC], a

jr_048_6a82:
    ldh [rLCDC], a

jr_048_6a84:
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
    rra
    rst $38
    rrca
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
    rst $18
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    ld c, e
    rst $38
    inc hl
    rst $38
    inc hl
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    add c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld bc, $0108
    ld bc, $0a09
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $01
    inc d
    rla
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_048_6b38

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
    jr nc, jr_048_6b57

    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_048_6b69

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $30
    jr nc, jr_048_6b68

jr_048_6b38:
    ld sp, $403f
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
    ld sp, $4e4d
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    add hl, sp
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d

jr_048_6b57:
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

jr_048_6b64:
    ld l, b
    ld l, c
    ld l, d
    ld l, e

jr_048_6b68:
    ld l, h

jr_048_6b69:
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
    ld bc, $0101
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    ld a, e
    ld sp, $8b8a
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    add hl, sp
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    ld bc, $9e07
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
    jr nc, jr_048_6be4

    jr nc, jr_048_6b64

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


    jp c, Jump_000_15db

jr_048_6be4:
    call c, $dedd
    rst $18
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    ld bc, $e9e8
    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $01
    ld bc, $f701
    ld hl, sp-$07
    ld a, [$0101]
    ei
    db $fc
    db $fd
    cp $ff
    nop
    ld bc, $0101
    ld [bc], a
    inc bc
    inc b
    dec b
    ld bc, $0601
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    ld bc, $1401
    dec d
    ld d, $17
    jr jr_048_6c2f

    add hl, de

jr_048_6c2f:
    ld bc, $0002
    nop
    nop
    inc bc
    inc bc
    nop
    dec b
    nop
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    nop
    inc b
    inc b
    inc bc
    ld b, e
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0301
    inc bc
    inc bc
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    ld bc, $0001
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
    inc bc
    ld [bc], a
    nop
    ld bc, $0101
    nop
    nop
    nop
    inc hl
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc hl
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    ld [bc], a
    inc b
    inc b
    inc bc
    inc bc
    inc bc

Jump_048_6cb7:
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec h
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    nop
    ld b, l
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    rlca
    inc bc
    rlca
    ld [bc], a
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc b
    inc bc
    inc bc
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    inc bc
    inc bc
    rlca
    inc b
    inc b
    inc bc
    inc bc
    inc bc
    dec b
    nop
    rlca
    dec b
    rlca
    ld [bc], a
    dec b
    dec b
    nop
    nop
    nop
    inc h
    inc b
    inc b
    inc bc
    rlca
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    dec b
    dec b
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    ld [bc], a
    rlca
    rlca
    rlca
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    dec b
    nop
    nop
    nop
    inc b
    inc b
    inc b
    ld [bc], a
    nop
    nop
    dec b
    dec b
    inc bc
    inc bc
    dec b
    ld a, [bc]
    rrca
    nop
    nop
    inc c
    inc c
    inc c
    ld a, [bc]
    nop
    nop
    dec c
    dec c
    dec bc
    dec c
    dec c
    rrca
    ld a, [bc]
    ld [$0c0c], sp
    inc c
    inc c
    inc c
    ld a, [bc]
    nop
    nop
    dec c
    dec bc
    rrca
    rrca
    rrca
    nop
    ld a, [bc]
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
    cp $00
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0701
    rlca
    rrca
    rrca
    rra
    rra
    ld a, [hl]
    ld a, [hl]
    ld hl, sp-$08
    pop af
    pop af
    db $e3
    db $e3
    rst $00
    rst $00
    rra
    rra
    inc e
    rst $38
    inc [hl]
    rst $38
    ld [hl], b
    rst $38
    ld a, h
    rst $38
    ld sp, $1dff
    rst $38
    ld e, $ff
    rrca
    rst $38
    add a
    rst $38
    di
    rst $38
    ld sp, hl
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
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
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
    rst $38
    nop
    ld a, a
    add b
    rrca
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0301
    inc bc
    rlca
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ccf
    ld a, a
    ld a, a
    ld a, a
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
    add sp, -$09
    ret c

    rst $20
    cp e
    call nz, $fc03
    rlca
    ld hl, sp+$09
    or $19
    and $1c

Call_048_6e2b:
    db $e3
    ld a, h
    add e
    ld a, h
    add e
    add hl, de
    and $00
    rst $38
    nop
    rst $38
    db $10
    rst $28
    db $10
    rst $28
    ld [hl], h
    adc e
    or h
    ld c, e
    dec b
    ld a, [$ff00]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $08
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
    add b
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rNR10]
    ldh a, [$30]
    ldh a, [$f8]
    ld hl, sp-$08
    ld hl, sp-$20
    db $fc
    call nz, $9cfc
    db $fc
    ld a, $fe
    ld a, [hl]
    cp $ff
    rst $38

jr_048_6e7a:
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
    ld l, a
    rst $38
    rst $18
    rst $38
    ld a, a
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    ei
    rst $38
    ld hl, sp-$01
    cp $ff
    rst $28
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld sp, hl
    rst $38
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $30
    ld hl, sp-$02
    pop af
    pop af
    cp $fe
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $ff01
    nop
    rst $38
    nop
    rst $38
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
    ld hl, sp+$07
    ldh a, [rIF]
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
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    ld a, [$f4fd]
    ei
    ldh [rIE], a
    pop bc
    cp $83
    db $fc
    ld b, a
    cp b
    rst $08
    jr nc, jr_048_6e7a

    ld a, h
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    nop
    rst $38
    add c
    ld a, [hl]
    di
    inc c
    pop hl
    ld e, $c2
    dec a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    sbc a
    ld c, b
    or a
    ld d, h
    xor e
    ld b, b
    cp a
    inc b
    ei
    add c
    ld a, [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$07
    ld hl, sp+$00
    ld a, a
    ld bc, $033f
    rra
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
    ld b, $03
    dec b
    inc bc
    rrca
    inc bc
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
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
    ret nz

    ret nz

    rst $20
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
    di
    rst $38
    rst $30
    rst $38
    rst $08
    rst $38
    sbc a
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
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    adc a
    rst $38
    rst $00
    rst $38
    db $e3
    rst $38
    di
    rst $38
    ld sp, hl
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $18
    ccf
    add a
    ld a, a
    add e
    ld a, a
    ld bc, $00ff
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_048_6fb7:
    nop
    nop

jr_048_6fb9:
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $fd
    ld sp, hl
    cp $f0
    rst $38
    ldh [rIE], a
    pop bc

jr_048_6fdd:
    cp $90

jr_048_6fdf:
    rst $28
    daa
    ret c

    nop
    rst $38
    nop
    rst $38
    jr nc, jr_048_6fb7

    jr nc, jr_048_6fb9

    ld d, c
    xor [hl]
    xor b
    ld d, a
    ld d, b
    xor a
    nop
    rst $38
    ret nz

    ccf
    jr jr_048_6fdd

    jr jr_048_6fdf

    ld [de], a
    db $ed
    inc d
    db $eb
    ld h, b
    sbc a
    ld b, b
    cp a
    ld b, b
    cp a
    ld [bc], a
    db $fd
    inc b
    ei
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$08f7], sp
    rst $30
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    rrca
    nop
    rrca
    nop
    rlca
    inc b
    inc bc
    inc b
    inc bc
    ld [$7007], sp
    rrca
    nop
    ldh [$c0], a
    ldh [$e0], a
    ldh a, [$e0]
    add sp, -$10
    or $9c
    sbc l
    ld a, $3f
    cp $ff
    cp $ff
    cp $ff
    db $fc
    rst $38
    ldh a, [rIE]
    rst $00
    rst $38
    ld a, $ff
    cp $fe
    ld a, [hl]
    ld a, [hl]
    ld a, $3f
    ld e, $3f
    ld c, $1f
    inc c
    rra
    add hl, bc
    rra
    inc de
    ccf
    daa
    ld a, a
    ld c, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    rrca
    rra
    rrca
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    pop de
    xor $80
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    inc a
    jp $8778


    ret nc

    cpl
    db $10
    rst $28
    ld b, b
    cp a
    call nz, $803b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    and b
    ld e, a
    jp nc, $9c2d

    ld h, e
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    ld h, b
    sbc a
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rNR10]
    ld hl, sp+$08
    ld a, l
    adc [hl]
    ld a, h
    adc a
    ld a, [hl]
    add a
    ld a, $c7
    ld a, $c3
    ld e, $e3
    dec bc
    rlca
    dec b
    dec bc
    dec b
    dec de
    inc bc
    dec a
    ld [bc], a
    db $fd
    ld bc, $03fe
    rst $38
    inc c
    di
    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    add a
    nop
    inc bc
    nop
    ld bc, $0101
    ld bc, $0000
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
    add b
    add b
    add b
    add b
    add b
    ret nz

    add b
    ret nz

    ret nz

jr_048_7155:
    ldh [$e0], a
    rst $38
    ld sp, hl
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
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ret nc

    rst $28
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    jr nz, jr_048_7155

    ld c, h
    or e
    ld b, b
    cp a
    add b
    ld a, a
    add b
    ld a, a
    call nz, $043b
    ei
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    jp nz, Jump_000_203d

    rst $18
    ld h, b
    sbc a
    ld e, c
    and [hl]
    ld a, [bc]
    push af
    ld a, [hl+]
    push de
    ld [hl], $c9
    ld [hl], b
    adc a
    ldh [$1f], a
    db $10
    rst $28
    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    ld [bc], a
    db $fd
    inc e
    db $e3
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $00
    rst $38
    nop
    rst $38
    inc h
    db $db
    ld [bc], a
    db $fd
    sub b
    ld l, a
    ld b, b
    cp a
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
    nop

jr_048_71c5:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$21

    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ld b, b
    cp a
    ld h, b
    sbc a
    ld h, b
    sbc a
    nop
    ld h, b
    nop
    db $fc
    jr nz, jr_048_71c5

    sub b
    rst $28
    and b
    rst $18
    ldh [$9f], a
    ret nz

    cp a
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    pop af
    rrca
    ei
    rlca
    rst $30
    rrca
    xor $1e
    db $fc
    db $fc
    ld hl, sp-$08
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    rra
    nop
    rrca
    db $10
    rrca
    db $10
    rrca
    jr nc, jr_048_7223

    ld h, b
    rra
    add b
    ld a, a
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    ldh [$e0], a

jr_048_7223:
    ldh [$f0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08

jr_048_722d:
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
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
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    add c
    cp $21
    sbc $00
    rst $38
    db $10
    rst $28
    db $10
    rst $28
    jr z, jr_048_722d

    ld b, b
    cp a
    db $10
    rst $28
    ld b, b
    cp a
    ld b, b
    cp a
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

jr_048_7269:
    rst $38
    ld [$40f7], sp
    cp a
    ld b, b
    cp a
    nop
    rst $38
    inc bc
    db $fc
    db $10
    rst $28
    ld hl, $41de
    cp [hl]

jr_048_727a:
    ld [$80f7], sp
    ld a, a
    nop
    rst $38
    jr jr_048_7269

    jr @-$17

    inc [hl]
    srl [hl]
    pop bc
    add hl, sp
    add $23
    call c, $df20
    and b
    ld e, a
    ld [hl], e
    adc h
    ld [hl+], a
    db $dd
    inc bc
    db $fc
    dec a
    jp nz, Jump_000_02fd

    add sp, $17
    or b
    ld c, a
    or b
    ld c, a
    ldh [$1f], a

jr_048_72a2:
    add b
    ld a, a

jr_048_72a4:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    jr nz, @-$3e

    jr nc, jr_048_727a

    rra
    ldh [rTAC], a
    ld hl, sp+$03
    db $fc
    ld [bc], a
    db $fd
    ld b, $f9
    inc e
    db $e3
    ldh a, [rIF]
    add b
    ld a, c
    add b
    ld h, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    jr nz, jr_048_72a2

    jr nz, jr_048_72a4

    db $10
    ldh [$0c], a
    ldh a, [$03]
    db $fc
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
    db $fc
    inc bc
    ldh [$1f], a
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
    ld bc, $0301
    rlca
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    ccf
    ld a, a
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    pop af
    cp $f0
    rst $38
    ldh [rIE], a
    add b
    rst $38
    add b
    rst $38
    ld bc, $00fe

jr_048_732f:
    rst $38
    nop
    rst $38
    nop

jr_048_7333:
    rst $38
    ld [$80f7], sp
    ld a, a
    add b
    ld a, a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_048_732f

    nop
    rst $38
    jr nz, jr_048_7333

    ld d, d

jr_048_7355:
    xor l
    nop
    rst $38
    inc b
    ei
    nop
    rst $38
    nop

jr_048_735d:
    rst $38
    nop
    rst $38
    and b
    ld e, a
    ret z

    scf
    ld b, d
    cp l
    ld bc, $08fe
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    jr nz, @-$1f

    ld d, b
    xor a
    adc b
    ld [hl], a
    sub b
    ld l, a
    ld b, b
    cp a
    db $10
    rst $28
    add b
    ld a, a
    add d
    ld a, l
    ld d, b
    xor a
    jr nc, jr_048_7355

    inc b
    ei
    inc h
    db $db
    ld [hl], b
    adc a

Call_048_738c:
    jr nc, jr_048_735d

    nop
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    inc c
    di
    inc c
    di
    ld [$34f7], sp
    srl h
    jp $ff00


    inc c
    di
    inc d
    db $eb
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
    inc bc
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    add b
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
    ld b, b
    add b
    ld sp, $1f40
    ld h, b
    inc b
    dec sp
    inc a
    inc bc
    nop
    rra
    nop
    rra
    nop
    rrca
    nop
    rrca
    ld [$0807], sp
    rlca
    ld [$1007], sp
    rrca
    db $10
    rrca
    ld h, b
    rra
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $01
    ld hl, sp+$07
    ldh a, [rIF]
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rlca
    rrca

jr_048_7403:
    rrca
    rrca
    rra
    rra
    ccf
    ld a, a
    ld a, a
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    add h

jr_048_7419:
    ei
    inc b
    ei
    add hl, bc
    or $84
    ld a, e
    inc h
    db $db
    jr nz, jr_048_7403

    ld d, b
    xor a
    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    db $10
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
    rst $38
    jr nz, jr_048_7419

    nop
    rst $38
    ld bc, $01fe
    cp $01

jr_048_7441:
    cp $80
    ld a, a
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    ld [$20f7], sp
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0afe
    push af
    ld [$88f7], sp
    ld [hl], a
    nop
    rst $38
    inc b
    ei
    jr nz, jr_048_7441

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
    ld b, b
    cp a
    ld c, b
    or a
    ld b, b
    cp a
    ld a, [bc]
    push af
    ld b, b
    cp a
    ld b, $f9
    ld [de], a
    db $ed
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add hl, bc
    or $02
    db $fd
    inc h
    db $db
    ld h, b
    sbc a
    adc b
    ld [hl], a
    sub b
    ld l, a
    ld h, $d9
    ld c, $f1
    ld a, [bc]
    push af
    dec c
    ld a, [c]
    ld c, e
    or h
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
    ld bc, $01fe
    cp $fe
    ld bc, $01fe
    cp $01
    cp $01
    cp $01
    cp $01
    ld a, [hl]
    ld bc, $017e
    nop
    ld a, a
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
    add b
    ld a, a
    nop
    rst $38
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
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    add c
    ld a, a
    inc bc
    rst $38
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    cp $ff
    cp $ff
    ld hl, sp-$01
    ldh a, [rIE]
    ld sp, hl
    cp $e0
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ld a, [bc]
    push af
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    db $10
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b

jr_048_7525:
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
    inc b
    ei
    rlca
    ld hl, sp+$02
    db $fd
    ld [bc], a
    db $fd
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
    jr nz, jr_048_7525

    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    ld b, $f9
    nop
    rst $38
    add b
    ld a, a
    ld bc, $01fe
    cp $00
    rst $38
    nop

jr_048_7559:
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
    nop

jr_048_7561:
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $82fe
    ld a, l
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10

jr_048_7577:
    rst $28
    jr nz, jr_048_7559

    ld d, b
    xor a
    nop
    rst $38
    inc b
    ei
    jr nz, jr_048_7561

    ld [de], a
    db $ed
    ld b, $f9
    inc b
    ei
    dec b
    ld a, [$f906]
    db $10
    rst $28
    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    ld [bc], a
    db $fd
    ld b, $f9
    inc b
    ei
    nop
    rst $38
    ld a, [bc]
    push af
    rlca
    ld hl, sp+$13
    db $ec
    or d
    ld c, l
    ld c, b
    or a
    jr nc, jr_048_7577

    ld d, h
    xor e
    call nc, $622b
    sbc l
    ld a, c
    add [hl]
    nop
    ld [$1c0c], sp
    ld e, $3f
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    cp $ff
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ld [$00ff], sp
    rst $38
    ld bc, $40ff
    cp a
    add c
    ld a, [hl]
    and b
    ld e, a
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
    nop
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
    inc b
    ei
    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    nop

jr_048_7609:
    rst $38
    sub c
    ld l, [hl]
    add b
    ld a, a
    nop
    rst $38
    ld bc, $00ff

jr_048_7613:
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
    nop

jr_048_7621:
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    jr nc, jr_048_7609

    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, $ff
    jr nz, jr_048_7613

    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ld b, b
    cp a
    ld [$80f7], sp
    ld a, a
    jr nz, jr_048_7621

    nop
    rst $38
    add b
    ld a, a
    ld a, [bc]
    push af
    ld sp, $02ce
    db $fd
    inc b
    ei
    ld [$88f7], sp
    ld [hl], a
    db $10
    rst $28
    db $10
    rst $28
    and b
    ld e, a
    ld [bc], a
    db $fd
    ld b, d
    cp l
    add d
    ld a, l
    rst $08
    jr nc, jr_048_76e0

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

    rra
    ldh [$1f], a
    ldh [$1f], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ldh [$f0], a
    ld hl, sp-$04
    db $fc
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [de], a
    db $fd
    ld [$40f7], sp
    cp a
    db $10
    rst $28
    inc d
    db $eb
    ld [bc], a
    db $fd
    ld bc, $02fe
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a

jr_048_76c5:
    db $fd
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
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_048_76e0:
    add b
    ld a, a
    nop
    rst $38
    jr nz, jr_048_76c5

    nop
    rst $38
    ld c, b
    or a
    ld de, $07ee
    ld hl, sp+$00
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    db $10
    rst $38
    sub b
    rst $38
    xor c
    ld a, a
    pop bc
    cp a
    ld h, e
    rst $18
    scf
    rst $28
    rra
    rst $30
    rrca
    ld sp, hl
    rrca
    db $fc
    rrca
    cp $1f
    rst $38
    cpl
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc de

jr_048_7719:
    rst $38
    ld a, b
    rst $28
    rrca
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    dec b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld de, $38ee
    rst $00
    ld b, c
    cp [hl]
    ld [bc], a
    db $fd
    add b
    ld a, a
    adc d
    ld [hl], l
    adc d
    ld [hl], l
    sub a
    ld l, b
    nop
    rst $38
    ld [bc], a
    db $fd
    ld b, d
    cp l
    ld b, b
    cp a
    ret nc

    cpl
    ret c

    daa
    ret z

    scf
    jr nc, jr_048_7719

    jr nz, @-$1f

    ldh [$1f], a
    jp z, $ff35

    ld bc, $01ff
    rst $38
    ld bc, $817f
    ccf
    pop bc
    rrca
    pop af
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $0303
    inc bc
    inc bc
    inc bc
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
    rst $00
    rst $00
    rst $20
    rst $30
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
    rlca
    rst $38
    ld bc, $10ff
    rst $28
    ld d, $e9
    inc b

jr_048_7787:
    ei
    ld hl, $80de
    ld a, a
    ld h, b
    sbc a
    ld d, b
    xor a
    ld c, h
    or e
    ld b, a
    cp b
    dec c
    ld a, [c]
    dec b
    ld a, [$fe01]
    adc b
    ld [hl], a
    add b
    ld a, a
    nop
    rst $38
    ld [$02f7], sp
    db $fd
    nop
    rst $38
    jr nz, jr_048_7787

    or b
    ld c, a
    nop
    rst $38
    ld bc, $00fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ei
    db $f4
    ld [$00f0], sp
    ldh a, [$08]
    ldh a, [$08]
    ldh a, [$0c]
    db $fc
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $05ff
    rst $38
    nop
    rst $38
    ld [$10ff], sp
    rst $38
    ld [$01ff], sp
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    adc c
    rst $38
    add b
    rst $38
    ldh a, [rIE]
    db $ec
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $30
    ccf
    adc a
    rst $38
    ldh [rIE], a
    ldh [$fc], a
    ldh [$f0], a
    ldh [$e3], a
    jp Jump_000_1fe7


    rst $38
    rst $38
    rst $38
    inc b
    rst $38
    ld l, $ff
    inc b
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    ret nc

    cpl
    ld [c], a
    rra
    and b
    ld e, a
    ret nz

    ccf
    add c
    ld a, a
    sub c
    ld l, a
    dec bc
    rst $30
    rla
    rst $28
    rla
    rst $28
    rrca
    rst $38
    cpl
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
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
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    ld b, e
    cp a
    ret


    scf
    ld a, h
    add e
    reti


    ld h, $c6
    add hl, sp
    ld bc, $88fe
    ld [hl], a
    pop de
    ld l, $91
    ld l, [hl]
    ld c, $f1
    dec sp
    call nz, $dc23
    inc bc
    db $fc
    inc bc
    db $fc
    and b
    ld e, a
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    ld h, b
    sbc a
    add b
    ld a, a
    ld de, $00ee
    rst $38
    add b
    ld a, a
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    pop hl
    ld e, $ff
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    db $fc
    nop
    cp $00
    cp $00
    db $fc
    ret nz

    ld hl, sp-$20
    rst $38
    ldh [rIE], a
    ldh [$7f], a
    ldh a, [$3f]
    ld hl, sp+$1f
    cp $0f
    rst $38
    rlca
    rst $38
    ld bc, $85ff
    rst $38
    ld c, c
    rst $38
    adc [hl]
    rst $38
    xor $ff
    cp $ff
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    nop
    nop
    nop
    nop
    db $ec
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ld e, a
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
    cp $ff
    cp $fe
    db $fc
    cp $fc
    db $fc
    ld hl, sp-$04
    ld hl, sp-$08
    ldh a, [$f8]
    ldh a, [rIE]
    pop af
    cp $e1
    cp $e1
    cp $c0
    cp $83
    db $fc
    add e
    db $fd
    inc bc
    db $fc
    rst $38
    rst $38
    ld a, [$fcff]
    rst $38
    db $fd
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fc
    db $fc
    cp $fe
    rst $38
    rst $38
    db $fd
    db $fd
    db $fc
    db $fc
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
    rst $38
    rst $38
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    rlca
    rst $38
    add e
    ld a, a
    ldh a, [rIF]
    ld [hl-], a
    call Call_048_738c
    inc bc
    db $fc
    ld bc, $c7fe
    jr c, jr_048_79e2

    adc [hl]
    inc e
    db $e3
    ld d, h
    xor e
    daa
    ret c

    inc b
    ei
    ld [bc], a
    db $fd
    ld b, b
    cp a
    nop
    rst $38
    inc b
    ei
    nop
    rst $38
    ld de, $03ee
    db $fc
    ld bc, $81fe
    ld a, [hl]
    ld c, $f1
    rlca
    ld hl, sp-$20
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    ld [bc], a
    db $fd
    ld b, $f9
    inc bc
    db $fc
    rlca
    ld hl, sp-$01
    nop
    cp $01
    ld hl, sp+$07
    ld hl, sp+$17
    db $fc
    inc sp
    cp $7e
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    db $fc
    cp $fc
    db $fc
    ld hl, sp-$04
    ldh a, [$f9]
    ldh [$f1], a
    pop bc
    jp $8701


    inc bc
    rlca
    inc bc
    rlca
    inc bc
    inc bc
    ld bc, $0103
    inc bc
    add b
    add b
    ret nz

    ldh [$e4], a
    push hl
    jp $c7e7


    rst $08
    sub a
    rst $18
    adc a
    adc a
    add a
    sbc a
    adc a
    sbc a
    adc a
    add [hl]

jr_048_79e2:
    ld c, a
    add [hl]
    ld c, a
    call nz, $c47f
    ld a, a
    xor h
    ccf
    cp h
    rst $38
    jr nz, @+$01

    ld h, b
    ld b, b
    ld a, a
    ld b, b
    rst $38
    pop bc
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    ld bc, $01ff
    rst $38
    rst $38
    rst $38
    ld b, l
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ret nz

    rst $38
    ld [hl], b
    rst $38
    jr z, @+$01

    add b
    rst $38
    ldh [rIE], a
    add sp, -$01
    ld sp, hl
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
    cp $ff
    cp $5f
    cp [hl]
    rst $38
    inc e
    rst $38
    inc a
    rst $38
    jr c, @+$01

    cp b
    rst $38
    ld hl, sp-$01
    ld [hl], b
    di
    inc a
    cp $9f
    rst $38
    rst $28
    rst $08
    ldh a, [$c3]
    db $fc
    pop bc
    cp $80
    rst $38
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$04
    cp $ff
    rst $38
    rst $38
    ccf
    rst $38
    rrca
    rst $38

jr_048_7a6a:
    rlca
    rst $38
    pop bc
    ccf
    ld h, h
    sbc e
    ld d, $e9
    inc b
    ei
    ld [bc], a
    db $fd
    nop
    rst $38
    call nz, Call_048_603b
    sbc a
    sub h
    ld l, e
    and b
    ld e, a
    rst $38
    rst $18
    rst $38
    cp [hl]
    rst $38
    ld a, a
    rst $38
    ld a, l
    rst $38
    rst $38
    cp $97
    db $fc
    rst $18
    ld hl, sp+$07
    jr nz, jr_048_7a6a

    ld [hl], c
    add c
    sub e
    ld h, e
    rlca
    rst $30
    rlca
    rst $20
    add a
    ld h, a
    adc a
    ld c, a
    rra
    sbc a
    db $fc
    rra
    ld hl, sp+$3f
    ld hl, sp+$3f
    ldh a, [$3f]
    ldh a, [$3f]
    ldh a, [$3f]
    ldh [$7f], a
    ldh [$7f], a
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $20
    ccf
    rst $20
    ld a, a
    rst $20
    ld a, a
    rst $28
    ld a, a
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    pop hl
    rst $38
    db $e3
    ccf
    inc bc
    rrca
    nop
    nop
    nop
    ret nz

    ldh [$f0], a
    ld hl, sp-$02
    cp $ff
    sbc a
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    ld hl, sp+$3f
    ldh a, [$3f]
    ldh [$7f], a
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
    nop
    di
    nop
    rst $30
    nop
    rst $20
    nop
    rst $28
    nop
    ld a, a
    nop
    add b
    add b
    ldh a, [$f0]
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
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add a
    ld hl, sp-$40
    rst $38
    ldh a, [$3f]
    db $fc
    rrca
    rrca
    add e
    inc hl
    pop bc
    ld de, $08e0
    ldh a, [rDIV]
    ld hl, sp+$02
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
    nop
    nop
    nop
    add b
    ret nz

    ldh [$e0], a
    ld hl, sp-$08
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    cp $07
    cp $0b
    rst $38
    inc c
    ei
    di
    rst $38
    rst $30
    ld a, a
    rst $20
    rst $38
    rst $08
    rst $38
    adc a
    cp $1f
    cp $3f
    cp $7f
    db $fc
    inc a
    ei
    ld [hl], b
    rst $38
    ld h, b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld a, a
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
    cpl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ld a, a
    rlca
    rrca
    nop
    ld bc, $0000
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    rst $38
    rst $38
    rra
    rst $38
    inc bc
    ld sp, hl
    nop
    ld hl, sp+$00
    pop af
    nop
    db $fc
    nop
    ldh [rP1], a
    ret nz

    nop
    nop
    nop
    ld [$8400], sp
    nop
    sbc h
    nop
    adc e
    nop
    push bc
    nop
    push af
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
    ei
    nop
    ei
    nop
    ei
    ld [bc], a
    ei
    ld [bc], a
    ei
    ld [bc], a
    ei
    ld [bc], a
    ei
    ld [bc], a
    ei
    nop
    db $fd
    ld bc, $01fd
    db $fd
    ld bc, $01fd
    db $fd
    ld bc, $01fd
    db $fd
    ld bc, $01fd
    db $fd
    ld bc, $01fd
    db $fd
    ld bc, $01fb
    ei
    rst $30
    inc bc
    ld d, $f3
    ld d, $e7
    inc d
    rst $20
    ld h, h
    rst $00
    call z, $cc07
    rrca
    jr jr_048_7c3f

    jr jr_048_7c41

    jr jr_048_7c43

    jr jr_048_7c45

    jr @+$11

    adc h
    rlca
    adc h
    rlca
    ld b, l
    add d
    ld b, b

jr_048_7c3f:
    add b
    ld b, b

jr_048_7c41:
    add b
    nop

jr_048_7c43:
    ret nz

    nop

jr_048_7c45:
    ret nz

    ld bc, $03c0
    pop bc
    inc bc
    pop bc
    add a
    jp $83c7


    add [hl]
    rst $08
    add [hl]
    adc a
    adc [hl]
    sbc a
    ld e, $1f
    ld e, $3f
    ld a, $7f
    ld a, [hl]
    rst $38
    db $fc
    rst $38
    ld l, a
    db $fc
    rst $08
    db $fc
    rst $08
    db $fc
    rra
    ld a, b
    rrca
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp+$3f
    ld hl, sp+$3f
    ldh a, [$7f]
    ldh a, [$7f]
    ldh a, [$7f]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ldh [$fe], a
    ldh a, [$fe]
    ld hl, sp-$04
    db $fc
    cp $fe
    rst $38
    rst $38
    db $fd
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    pop bc
    rst $38
    pop bc
    rst $38
    add c
    rst $38
    ld b, c
    rst $38
    dec b
    rst $38
    dec e
    rst $38
    dec e
    rst $38
    ld a, l
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
    rra
    ccf
    ld bc, $0003
    nop
    nop
    nop
    ret nz

    ldh [$e0], a
    ld hl, sp-$08
    ld a, a
    cp $1f
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rrca
    rrca
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $81
    db $fc
    add e
    ldh a, [rIF]
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
    ld bc, $00fe
    cp $02
    db $fc
    inc b
    ld hl, sp+$00
    ldh a, [rNR10]
    ldh [rLCDC], a
    add b
    add e
    ld bc, $060f
    ld [$101f], sp
    ccf
    ld h, b
    rst $38
    ret nz

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
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [rNR34]
    ldh [$3c], a
    ret nz

    db $fd
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    rst $30
    nop
    rst $28
    nop
    rlc b
    add a
    add c
    ld a, b
    rst $00
    and b
    rst $38
    and b
    rst $38
    ret c

    rst $30
    ei
    db $f4
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [$cf], a
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$9f]
    ldh [$1f], a
    ldh [rNR34], a
    pop hl
    rst $38
    jp $c3ff


    rst $38
    jp nz, $c6ff

    rst $38
    add $ff
    call z, $ecff
    rrca
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    rrca
    rrca
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $18
    rst $08
    rst $08
    rst $00
    rst $08
    ld b, a
    rst $08
    ld c, a
    rst $08
    ld c, a
    rst $18
    ld e, a
    sbc $1f
    cp [hl]
    rst $38
    nop
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    pop af
    ld c, $e1
    ld e, $c2
    inc a
    add h
    ld a, b
    dec b
    ld hl, sp+$09
    ldh a, [$03]
    pop af
    inc de
    db $e3
    rlca
    db $e3
    daa
    rst $00
    ld c, $c7
    ld c, [hl]
    adc a
    inc e
    adc a
    inc e
    adc a
    sbc l
    ld c, $9f
    inc c
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc b
    rra
    db $10
    ld a, a
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
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$1f
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    rlca
    ld e, a
    rlca
    rst $38
    rrca
    ldh a, [rIF]
    pop hl
    ld e, $e2
    dec e
    and $19
    call $9c33
    ld h, e
    sbc l
    ld h, d
    add hl, sp
    add $fe
    add h
    db $fc
    add h
    db $ed
    ld [$08fd], sp
    reti


    ld [$10fb], sp
    or e
    ld de, $01b3
    rst $30
    inc hl
    rst $38
    inc hl
    rst $28
    ld b, a
    rst $38
    ld b, a
    rst $38
    rst $00
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    rra
    ld c, $1f
    rrca
    ld e, $1d
    ld a, $1f
    inc a
    rra
    inc e
    inc bc
    ld a, h
    rrca
    ld hl, sp+$0f
    ld hl, sp+$18
    ld a, a
    nop
    rlca
    nop
    ldh [rIE], a
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    ret nz

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
    nop
    nop
    nop
    nop
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
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
    add c
    ld a, [hl]
    add d
    ld a, h
    add b
    ld a, h
    dec b
    ld hl, sp+$09
    pop af
    inc de
    db $e3
    ld h, $c7
    ld c, h
    add a
    ld c, h
    adc a
    sbc b
    rra
    jr nc, jr_048_7e9d

    jr nc, jr_048_7ebf

    ld h, b
    ld a, a
    ldh [$7f], a
    pop bc
    cp $c3
    db $fc
    add a
    ld hl, sp-$79
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    di
    nop
    add e

jr_048_7e9d:
    nop
    rrca

jr_048_7e9f:
    inc bc
    ld [$203f], sp
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
    inc c
    rst $30
    ld a, $c7
    ld a, a
    adc a
    rst $38
    dec bc
    rst $38
    ld b, $ff
    sbc [hl]
    rst $38

jr_048_7ebf:
    cp l
    ld [bc], a

jr_048_7ec1:
    db $fd
    dec d
    ei
    dec e
    di
    add hl, hl
    rst $30
    jr z, jr_048_7ec1

    ld e, b
    rst $20
    ld d, b
    rst $28
    jr nc, jr_048_7e9f

    nop
    rst $08
    inc b
    adc a
    rrca
    sbc [hl]
    rrca
    ld e, $0d
    ld e, $1f
    inc a
    rra
    inc a
    dec de
    inc a
    rra
    jr c, jr_048_7f12

    ld a, b
    scf
    ld a, b
    ccf
    ldh a, [$5f]
    ldh a, [$7f]
    ldh [$7f], a
    ldh [$3f], a
    ldh [$3f], a
    ret nz

    ld a, a
    ret nz

    cp a
    ret nz

    rst $38
    add b
    rst $38
    add b
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
    nop

jr_048_7f12:
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    inc bc
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
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $00
    nop
    nop
    nop
    nop
    rrca
    db $10
    ld de, $0012
    nop
    nop
    nop
    nop
    nop
    inc de
    inc d
    dec d
    nop
    ld d, $17
    jr jr_048_7f79

    ld a, [de]
    dec de
    inc e
    nop
    nop
    nop
    dec e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld e, $1f
    jr nz, jr_048_7f8f

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $00
    nop
    nop
    daa
    nop
    nop

jr_048_7f79:
    nop
    nop
    jr z, jr_048_7fa6

    ld a, [hl+]
    dec hl
    inc l
    inc h
    inc h
    dec l
    nop
    nop
    nop
    ld l, $00
    nop
    nop
    nop
    cpl
    jr nc, jr_048_7fbf

    ld [hl-], a

jr_048_7f8f:
    inc sp
    inc h
    inc h
    inc [hl]
    nop
    dec [hl]
    ld [hl], $00
    nop
    nop
    nop
    scf
    jr c, jr_048_7fd6

    ld a, [hl-]
    dec sp
    inc a
    inc h
    inc h
    dec a
    ld a, $3f
    ld b, b

jr_048_7fa6:
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    add hl, sp
    ld b, a
    ld c, b
    ld c, c
    inc h
    inc h
    ld c, d
    nop
    nop
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    jr jr_048_7fd3

    ld b, [hl]
    ld c, a
    ld d, b
    ld d, c

jr_048_7fbf:
    ld d, d
    inc h
    inc h
    ld d, e
    nop
    nop
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld d, a
    ld b, l
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    inc h
    inc h
    ld e, l

jr_048_7fd3:
    ld e, [hl]
    nop
    nop

jr_048_7fd6:
    nop
    nop
    nop
    nop
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    inc h
    inc h
    daa
    ld h, l
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    inc h
    inc h
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, a
    nop
    nop
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
