SECTION "ROM Bank $003", ROMX[$4000], BANK[$3]

    cp d
    ld [bc], a
    add hl, sp
    ld h, a
    ld [hl], b
    ld bc, $0842
    cp d
    ld [bc], a
    ld sp, $4a46
    add hl, hl
    ld b, d
    ld [$000f], sp
    ld sp, $3946
    ld h, a
    ld b, d
    ld [$6739], sp
    cp d
    ld [bc], a
    ld sp, $4246
    ld [$6739], sp
    cp d
    ld [bc], a
    rrca
    nop
    ld b, d
    ld [$02ba], sp
    ld [hl], b
    ld bc, $000f
    ld b, d
    ld [$6739], sp
    ld sp, $4a46
    add hl, hl
    ld b, d
    ld [$6739], sp
    ld sp, $7046
    ld bc, $000f
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_4057

jr_003_4057:
    nop
    nop
    nop
    nop
    nop
    ld c, d
    add hl, hl
    and l
    inc d
    nop
    nop
    ld c, d
    add hl, hl
    ld sp, $1846
    ld h, e
    nop
    nop
    ld e, $00
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    rst $38
    ld a, a
    sbc b
    ld a, $b1
    dec h
    nop
    nop
    call $8666
    dec [hl]
    rrca
    nop
    nop
    nop
    sbc b
    ld a, $b1
    dec h
    rrca
    nop
    nop
    nop
    or c
    dec h
    db $eb
    db $10
    rrca
    nop
    nop
    nop
    or c
    dec h
    db $eb
    db $10
    call $8666
    dec [hl]
    sbc b
    ld a, $b1
    dec h
    db $eb
    stop
    nop
    rrca
    nop
    sbc b
    ld a, $b1
    dec h
    add [hl]
    dec [hl]
    call $b166
    dec h
    db $eb
    stop
    nop
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_40d7

jr_003_40d7:
    nop
    nop
    nop
    rst $30
    ld [bc], a
    xor $00
    ld [hl+], a
    nop
    nop
    nop
    sub e
    ld bc, $00a9
    nop
    nop
    nop
    nop
    ld e, $00
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    ld a, [de]
    dec de
    ld c, h
    add hl, de
    ret z

    stop
    nop
    rst $38
    scf
    ld a, [de]
    dec de
    ld c, h
    add hl, de
    nop
    nop
    cp h
    ld [bc], a
    sub $01
    ld c, $01
    nop
    nop
    nop
    nop
    pop de
    dec h
    ld c, h
    add hl, de
    ret z

    db $10
    ld a, [de]
    dec de
    cp h
    ld [bc], a
    sub $01
    nop
    nop
    ld a, [de]
    dec de
    sub $01
    ld c, $01
    nop
    nop
    ld a, [de]
    dec de
    ld c, h
    add hl, de
    ld c, $01
    nop
    nop
    ld a, [de]
    dec de
    cp h
    ld [bc], a
    sub $01
    ld c, $01
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    ld d, h
    ld bc, $4a99
    ld b, h
    ld [$0000], sp
    rra
    nop
    rrca
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
    ld e, $00
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    rst $38
    ld a, a
    pop de
    ld a, [hl-]
    ld [$0021], a
    nop
    inc sp
    ld e, a
    ld [$2621], a
    ld de, $0000
    or [hl]
    add hl, de
    xor $18
    add a
    db $10
    ld h, $11
    or [hl]
    add hl, de
    xor $18
    add a
    db $10
    ld [$ea21], a
    ld hl, $1126
    add a
    stop
    nop
    rst $38
    ld a, a
    pop de
    ld a, [hl-]
    ld [$2621], a
    ld de, $19b6
    xor $18
    add a
    stop
    nop
    ld [$2621], a
    ld de, $18ee
    add a
    stop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_41d7

jr_003_41d7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    sbc h
    ld [hl-], a
    dec e
    nop
    ld c, $00
    nop
    nop
    db $fd
    ld a, a
    ld c, l
    ld [hl], d
    inc b
    ld b, c
    add b
    inc e
    nop
    nop
    ld c, d
    ld a, [hl-]
    nop
    ld de, $4f73
    add b
    inc e
    inc b
    ld b, c
    ld c, l
    ld [hl], d
    nop
    nop
    inc b
    ld b, c
    add b
    inc e
    ld c, $00
    nop
    nop
    add b
    inc e
    inc b
    ld b, c
    ld c, d
    ld a, [hl-]

jr_003_422e:
    nop
    nop
    ld c, $00
    nop
    ld de, $0000
    ld c, d
    ld a, [hl-]
    nop
    ld de, $001d
    ld c, $00
    nop
    nop
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_4257

jr_003_4257:
    nop
    nop
    nop
    rst $38
    inc bc
    sub a
    ld bc, $0002
    nop
    nop
    sub e
    ld bc, $00a9
    nop
    nop
    nop
    nop
    ld e, $00
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    nop
    nop
    or [hl]
    add hl, de
    xor $18
    add a
    db $10
    ld e, d
    ld d, a
    ld sp, $8c3a
    add hl, hl
    nop
    nop
    rst $38
    ld a, a
    ld e, d
    ld d, a
    ld sp, $003a
    nop
    rst $38
    ld a, a
    ld sp, $873a
    stop
    nop
    adc h
    add hl, hl
    ld sp, $ee3a
    jr jr_003_422e

    db $10
    xor $18
    add a
    db $10
    ld sp, $8c3a
    add hl, hl
    nop
    nop
    or [hl]
    add hl, de
    ld sp, $5a3a
    ld d, a
    adc h
    add hl, hl
    or [hl]
    add hl, de
    xor $18
    nop
    nop
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_42d7

jr_003_42d7:
    nop
    nop
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
    ld a, a
    sub h
    ld b, d
    rst $20
    inc d
    nop
    nop
    ld e, $00
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    xor d
    add hl, bc
    sbc h
    ld [hl+], a
    ld hl, sp+$15
    ld b, d
    ld [$73ff], sp
    add a
    ld a, a
    rst $28
    dec [hl]
    ld b, d
    ld [$0bff], sp
    xor d
    add hl, bc
    rst $28
    dec [hl]
    ld b, d
    ld [$0bff], sp
    add a
    ld a, a
    xor d
    add hl, bc
    ld b, d
    ld [$0bff], sp
    ld hl, sp+$15
    xor d
    add hl, bc
    ld b, d
    ld [$09aa], sp
    rst $28
    dec [hl]
    ld hl, sp+$15
    ld b, d
    ld [$73ff], sp
    ld hl, sp+$15
    rst $38
    dec bc
    ld b, d
    ld [$35ef], sp
    ld hl, sp+$15
    ccf
    ccf
    ld b, d
    ld [$0000], sp
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_4357

jr_003_4357:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    adc h
    ld e, $ce
    ld b, l
    ld hl, $f904
    ld [hl+], a
    db $fc
    ld a, a
    ld [hl], c
    ld d, [hl]
    adc $45
    ld hl, $9804
    inc b
    adc $45
    rst $38
    inc b
    db $fc
    ld a, a
    sbc b
    inc b
    rst $38
    inc b
    adc $45
    ld hl, $9804
    inc b
    adc $45
    db $fc
    ld a, a
    ld hl, $9804
    inc b
    xor l
    daa
    ld hl, $8c04
    ld e, $98
    inc b
    adc $45
    adc h
    ld e, $ad
    daa
    sbc b
    inc b
    rst $38
    inc b
    adc $45
    ld [hl], c
    ld d, [hl]
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    ld d, h
    ld bc, $4a99
    ld b, h
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
    ld e, $00
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    ld l, c
    inc c
    or e
    ld [$0000], sp
    sbc d
    dec e
    sbc a
    ld b, a
    or e
    ld [$0c69], sp
    nop
    nop
    nop
    nop
    db $d3
    add hl, bc
    ld d, a
    ld d, $9f
    ld b, a
    ld d, a
    ld d, $b3
    ld [$0c69], sp
    nop
    nop
    db $d3
    add hl, bc
    or e
    ld [$0c69], sp
    nop
    nop
    nop
    nop
    ld l, c
    inc c
    ld d, a
    ld d, $9f
    ld b, a
    or e
    ld [$479f], sp
    nop
    nop
    sbc d
    dec e
    or e
    ld [$1657], sp
    sbc a
    ld b, a
    sbc d
    dec e
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_4457

jr_003_4457:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and $14
    adc [hl]
    ld hl, $0000
    ld e, $00
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    sbc a
    dec sp
    cp $11
    push af
    ld [$006a], sp
    ld e, d
    ld l, e
    xor l
    dec [hl]
    ld l, d
    nop
    nop
    nop
    cp $11
    ld e, d
    ld l, e
    ld l, d
    nop
    xor l
    dec [hl]
    ld e, d
    ld l, e
    sbc a
    dec sp
    cp $11
    ld l, d
    nop
    sbc a
    dec sp
    ld e, d
    ld l, e
    xor l
    dec [hl]
    nop
    nop
    ld e, d
    ld l, e
    xor l
    dec [hl]
    push af
    ld [$006a], sp
    nop
    nop
    cp $11
    push af
    ld [$006a], sp
    cp $11
    push af
    ld [$006a], sp
    xor l
    dec [hl]
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_44d7

jr_003_44d7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    xor $18
    add a
    db $10
    ld [hl+], a
    inc b
    nop
    nop
    or [hl]
    add hl, de
    xor $18
    add a
    db $10
    ld [hl+], a
    inc b
    sub l
    ld [hl-], a
    pop de
    dec h
    adc $21
    nop
    nop
    sub l
    ld [hl-], a
    or [hl]
    add hl, de
    adc $21
    add e
    ld [$3295], sp
    adc $21
    xor $18
    ld [hl+], a
    inc b
    adc $21
    pop de
    dec h
    nop
    nop
    add e
    ld [$3295], sp
    adc $21
    add a
    db $10
    ld [hl+], a
    inc b
    ld [hl+], a
    inc b
    xor $18
    nop
    nop
    add e
    ld [$0000], sp
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_4557

jr_003_4557:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    inc a
    ld [hl+], a
    inc [hl]
    ld de, $046c
    ld hl, $ff04
    ld a, a
    dec sp
    ld c, a
    ret nc

    ld hl, $0421
    ld c, h
    ld de, $4271
    xor h
    add hl, hl
    ld hl, $3b04
    ld c, a
    ret nc

    ld hl, $114c
    ld hl, $d004
    ld hl, $114c
    add $04
    ld hl, $3404
    ld de, $046c
    ld c, h
    ld de, $0421
    inc [hl]
    ld de, $046c
    add $04
    ld hl, $3404
    ld de, $046c
    ret nc

    ld hl, $0421
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_45d7

jr_003_45d7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    rst $38
    ld b, a
    reti


    ld l, $d2
    ld de, $006b
    reti


    ld l, $d2
    ld de, $08ec
    ld b, $00
    rst $38
    ld b, a
    db $db
    ld bc, $006b
    ld b, $00

Jump_003_4618:
    reti


    ld l, $d2
    ld de, $01db
    ld l, e
    nop
    ld b, $00
    db $ec
    ld [$006b], sp
    ld d, l
    dec e
    db $db
    ld bc, $08ec
    ld l, e
    nop
    ld b, $00
    db $ec
    ld [$006b], sp
    reti


    ld l, $d2
    ld de, $11d2
    db $ec
    ld [$006b], sp
    ld b, $00
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_4657

jr_003_4657:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub e
    ld bc, $00a9
    nop
    nop
    nop
    nop
    ld e, $00
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    rst $38
    ld b, a
    ld e, [hl]
    ld h, $ab
    ld [$0000], sp
    rst $38
    add hl, bc
    jr jr_003_468d

    dec l

jr_003_468d:
    nop
    nop
    nop
    nop
    nop
    ld l, h
    ld [$0045], sp
    inc bc
    nop
    ld e, [hl]
    ld h, $ab
    ld [$0000], sp
    and l
    inc c
    jr jr_003_46a3

    dec l

jr_003_46a3:
    nop
    xor e
    ld [$0000], sp
    jr jr_003_46ab

    dec l

jr_003_46ab:
    nop
    ld e, [hl]
    ld h, $00
    nop
    ld l, h
    ld [$0045], sp
    inc bc
    nop
    xor e
    ld [$47ff], sp
    ld e, [hl]
    ld h, $a5
    inc c
    nop
    nop
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_46d7

jr_003_46d7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    inc de
    ld bc, $267f
    ld e, h
    ccf
    ld a, c
    ld a, [hl+]
    ld e, h
    ccf
    ld a, c
    ld a, [hl+]
    or e
    dec c
    ld b, d
    ld [$2a79], sp
    or e
    dec c
    inc de
    ld bc, $008b
    ld a, a
    ld h, $13
    ld bc, $008b
    ld b, d
    ld [$3f5c], sp
    ld a, c
    ld a, [hl+]
    or e
    dec c
    adc e
    nop
    ld a, c
    ld a, [hl+]
    ld a, a
    ld h, $13
    ld bc, $0842
    ld a, c
    ld a, [hl+]
    ld a, a
    ld h, $13
    ld bc, $008b
    or e
    dec c
    ld a, a
    ld h, $8b
    nop
    ld b, d
    ld [$0000], sp
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_4757

jr_003_4757:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    adc a
    ld a, [hl-]
    nop
    nop
    push de
    inc c
    db $e3
    inc d
    rst $38
    ld a, a
    sbc h
    ld l, e
    ld sp, $0042
    nop
    push de
    inc c
    rst $38
    ld a, a
    sbc h
    ld l, e
    ld sp, $9c42
    ld l, e
    ld sp, $c642
    jr jr_003_479f

jr_003_479f:
    nop
    adc a
    ld a, [hl-]
    db $e3
    inc d
    ld l, [hl]
    nop
    nop
    nop
    sbc a
    ld h, $d5
    inc c
    ld l, [hl]
    nop
    nop
    nop
    ld sp, $d542
    inc c
    ld l, [hl]
    nop
    nop
    nop
    sbc h
    ld l, e
    ld sp, $9f42
    ld h, $d5
    inc c
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_47d7

jr_003_47d7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_003_47e4:
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $00
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    ld c, a
    nop
    or e
    ld l, d
    db $ec
    ld d, c
    xor d
    ld c, l
    ld a, [$b37f]
    ld l, d
    db $ec
    ld d, c
    nop
    nop
    nop
    nop
    ld a, [$f125]
    db $10
    ld c, a
    nop
    push hl
    inc a
    ld b, b
    jr z, jr_003_481d

jr_003_481d:
    nop
    xor d
    ld c, l
    db $ec
    ld d, c
    push hl
    inc a
    ld b, b
    jr z, jr_003_4827

jr_003_4827:
    nop
    or e
    ld l, d
    db $ec
    ld d, c
    push hl
    inc a
    ld b, b
    jr z, jr_003_47e4

    ld l, d
    db $ec
    ld d, c
    ld c, a
    nop
    nop
    nop
    or e
    ld l, d
    db $ec
    ld d, c
    ld a, [$f125]
    stop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_4857

jr_003_4857:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    ld e, h
    ld d, $ee
    ld [$006c], sp
    nop
    nop
    rst $38
    ld a, a
    ld e, h
    ld d, $ee
    ld [$0000], sp
    nop
    nop
    xor $08
    rst $00
    inc c
    ld l, h
    nop
    nop
    nop
    ld e, h
    ld d, $c7
    inc c
    ld l, h
    nop
    rst $18
    inc sp
    ld d, e
    ld d, $c7
    inc c
    nop
    nop
    sbc a
    inc hl
    ld e, h
    ld d, $c7
    inc c
    xor $08
    rst $18
    inc sp
    ld d, e
    ld d, $ee
    ld [$0cc7], sp
    ld e, h
    ld d, $ee
    ld [$33df], sp
    ld d, e
    ld d, $00
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_48d7

jr_003_48d7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    push af
    ld d, d
    xor $39
    ld b, [hl]
    dec b
    ld hl, $3f04
    scf
    ld c, [hl]
    dec e
    add [hl]
    inc b
    ld hl, $0a04
    dec b
    ld b, [hl]
    dec b
    call nz, Call_000_2144
    inc b
    ccf
    scf
    ld c, [hl]
    dec e
    add [hl]
    inc b
    ld a, [bc]
    dec b
    ld a, [bc]
    dec b
    ld c, [hl]
    dec e
    ld b, [hl]
    dec b
    add [hl]
    inc b
    xor $39
    ld c, [hl]
    dec e
    add [hl]
    inc b
    ld hl, $0a04
    dec b
    ld b, [hl]
    dec b
    add [hl]
    inc b
    ld hl, $ee04
    add hl, sp
    ld b, [hl]
    dec b
    add [hl]
    inc b
    ld hl, $0004
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_4957

jr_003_4957:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    sub $1a
    xor d
    dec d
    call nz, Call_000_2104
    inc b
    sbc [hl]
    ld [hl], e
    ld [hl-], a
    ld b, d
    ld a, [bc]
    ld hl, $0421
    ld e, d
    dec b
    ldh a, [$0c]
    jr z, jr_003_499a

    ld hl, $3204
    ld b, d

jr_003_499a:
    ldh a, [$0c]
    jr z, jr_003_49a2

    ld hl, $3204
    ld b, d

jr_003_49a2:
    xor d
    dec d
    call nz, Call_000_2104
    inc b
    sbc [hl]
    ld [hl], e
    xor d
    dec d
    call nz, Call_000_2104
    inc b
    xor d
    dec d
    ld [hl-], a
    ld b, d
    ld a, [bc]
    ld hl, $0421
    ld [hl-], a
    ld b, d
    sub $1a
    xor d
    dec d
    call nz, Call_000_0004
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_49d7

jr_003_49d7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    jp c, Jump_000_212a

    inc b
    sub b
    ld de, $5c05
    rst $38
    ld a, a
    ld [hl], h
    ld [hl-], a
    ld c, d
    add hl, de
    ld hl, $da04
    ld a, [hl+]
    rst $38
    ld a, a
    inc d
    dec b
    inc l
    inc b
    ld a, [bc]
    dec b
    ld hl, $da04
    ld a, [hl+]
    sub b
    ld de, $1190
    ld a, [bc]
    dec b
    ld [hl], h
    ld [hl-], a
    ld c, d
    add hl, de
    ld a, [bc]
    dec b
    jp c, $2c2a

    inc b
    ld hl, $7404
    ld [hl-], a
    ld c, d
    add hl, de
    ld a, [bc]
    dec b
    ld hl, $4a04
    add hl, de
    sub b
    ld de, $050a
    ld hl, $0004
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_4a57

jr_003_4a57:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    cp a
    ccf
    sub l
    ld [hl-], a
    ld c, d
    dec e
    ld h, e
    inc c
    sbc a
    ld c, $b7
    dec c
    ld [$630c], a
    inc c
    sub l
    ld [hl-], a
    ld c, d
    dec e
    ld e, a
    ld e, a
    ld h, e
    inc c
    ld h, e
    inc c
    cp a
    ccf
    ld e, a
    ld e, a
    ld d, b
    add hl, hl
    cp a
    ccf
    or a
    dec c
    ld [$630c], a
    inc c
    sub l
    ld [hl-], a
    or a
    dec c
    ld [$630c], a
    inc c
    sub l
    ld [hl-], a
    ld c, d
    dec e
    ld [$630c], a
    inc c
    ld e, a
    ld e, a
    sub l
    ld [hl-], a
    ld c, d
    dec e
    ld [$000c], a
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_4ad7

jr_003_4ad7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_003_4ae7:
    nop
    nop
    nop
    ld e, $00
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    rst $30
    ld h, d
    adc $39
    add $18
    ld hl, $dc04
    ld b, d
    inc d
    ld a, [hl+]
    call z, Call_000_2604
    inc b
    inc d
    ld a, [hl+]
    call z, Call_000_2604
    inc b
    ld hl, $c604
    jr jr_003_4ae7

    inc b
    ld h, $04
    ld hl, $dc04
    ld b, d
    inc d
    ld a, [hl+]
    call z, Call_000_2104
    inc b
    rst $30
    ld h, d
    call c, $cc42
    inc b
    ld hl, $f704
    ld h, d
    adc $39
    call z, Call_000_2104
    inc b
    adc $39
    add $18
    call z, Call_000_2104
    inc b
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_4b57

jr_003_4b57:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub e
    ld bc, $00a9
    nop
    nop
    nop
    nop
    ld e, $00
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    inc e
    ld d, $a8
    dec [hl]
    ld h, l
    dec l
    ld b, d
    ld [$161c], sp
    inc sp
    dec b
    xor d
    nop
    ld b, d
    ld [$35a8], sp
    ld h, l
    dec l
    ld d, l
    ld [$0842], sp
    inc e
    ld d, $33
    dec b
    xor b
    ld [$0842], sp
    inc sp
    dec b
    xor d
    nop
    ld d, l
    ld [$0842], sp
    inc e
    ld d, $42
    ld [$179f], sp
    xor d
    nop
    sbc a
    rla
    xor d
    nop
    ld d, l
    ld [$0842], sp
    inc e
    ld d, $33
    dec b
    xor d
    nop
    ld h, l
    dec l
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_4bd7

jr_003_4bd7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    dec sp
    ld b, a
    or a
    ld a, $13
    ld l, $af
    add hl, de
    push de
    inc b
    xor [hl]
    inc b
    adc c
    inc b
    dec h
    inc b
    dec sp
    ld b, a
    or a
    ld a, $d5
    inc b
    adc c
    inc b
    or a
    ld a, $13
    ld l, $ae
    inc b
    dec h
    inc b
    xor a
    add hl, de
    ld [$b70d], sp
    ld a, $25
    inc b
    or a
    ld a, $13
    ld l, $af
    add hl, de
    push de
    inc b
    rst $38
    ld a, a
    or a
    ld a, $13
    ld l, $25
    inc b
    xor a
    add hl, de
    adc c
    inc b
    ld [$250d], sp
    inc b
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_4c57

jr_003_4c57:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    or [hl]
    ld a, [hl-]
    ld [hl], e
    ld b, d
    xor b
    ld [$0000], sp
    ld c, d
    nop
    ld [hl], e
    ld b, d
    adc [hl]
    dec h
    nop
    nop
    adc [hl]
    dec h
    or [hl]
    ld a, [hl-]
    xor b
    ld [$0000], sp
    or [hl]
    ld a, [hl-]
    ld [hl], e
    ld b, d
    ld c, d
    nop
    nop
    nop
    or [hl]
    ld a, [hl-]
    adc [hl]
    dec h
    ld c, d
    nop
    nop
    nop
    or [hl]
    ld a, [hl-]
    ld [hl], e
    ld b, d
    adc [hl]
    dec h
    ld c, d
    nop
    xor b
    ld [$004a], sp
    or [hl]
    ld a, [hl-]
    nop
    nop
    ld [hl], e
    ld b, d
    adc [hl]
    dec h
    xor b
    ld [$0000], sp
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004

jr_003_4cc9:
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_4cd7

jr_003_4cd7:
    nop
    nop

jr_003_4cd9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    ld a, [bc]
    ld de, $0cc7
    db $f4
    dec h
    xor h
    dec a
    or $66
    add h
    jr jr_003_4d70

    stop
    nop
    ld a, [bc]
    ld de, $298b
    xor h
    dec a
    add h
    jr jr_003_4d19

jr_003_4d19:
    nop
    add h
    jr jr_003_4cc9

    dec a
    rst $38
    ld a, a
    xor h
    dec a
    add h
    jr jr_003_4d88

    stop
    nop
    adc e
    add hl, hl
    add h
    jr jr_003_4cd9

    dec a
    nop
    nop
    or $66
    xor h
    dec a
    add h
    jr jr_003_4d37

jr_003_4d37:
    nop
    nop
    nop
    add h
    jr @+$0c

    ld de, $298b
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_4d57

jr_003_4d57:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop

jr_003_4d70:
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    ldh [$7f], a
    ldh [$6e], a
    nop
    ld e, [hl]
    ld b, b
    ld c, l

jr_003_4d88:
    nop
    ld e, [hl]
    ld b, b
    ld c, l
    and b
    inc a
    nop
    inc d
    ldh [$7f], a
    ldh [$6e], a
    ld b, b
    ld c, l
    nop
    inc d
    rst $38
    ld a, a
    ldh [$6e], a
    nop
    ld e, [hl]
    ld b, b
    ld c, l
    nop
    inc d
    add hl, bc
    dec c
    nop
    ld e, [hl]
    ld a, [c]
    ld hl, $1400
    add hl, bc
    dec c
    ld b, b
    ld c, l
    ld a, [c]
    ld hl, $1400
    add hl, bc
    dec c
    and b
    inc a
    ld a, [c]
    ld hl, $7c1f
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_4dd7

jr_003_4dd7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    jp nc, $8c66

    dec [hl]
    add hl, bc
    nop
    nop
    nop
    rst $38
    ld a, a
    sbc b
    ld a, $b1
    dec h
    nop
    nop
    sbc b
    ld a, $b1
    dec h
    add hl, bc
    nop
    nop
    nop
    or c
    dec h
    add hl, bc
    nop
    nop
    nop
    db $eb
    db $10
    or c
    dec h
    db $eb
    db $10
    jp nc, $8c66

    dec [hl]

Jump_003_4e28:
    sbc b
    ld a, $b1
    dec h
    db $eb
    stop
    nop
    jp nc, $b166

    dec h
    db $eb
    stop
    nop
    add hl, bc
    nop
    sbc b
    ld a, $b1
    dec h
    adc h
    dec [hl]
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_4e57

jr_003_4e57:
    nop
    nop
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
    ld l, c
    nop
    add hl, sp
    jr nz, jr_003_4e78

    nop
    nop
    ld e, $00
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl

jr_003_4e78:
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    cp d
    ld [bc], a
    rst $30
    ld e, [hl]
    ld [hl], b
    ld bc, $0000
    rst $30
    ld e, [hl]
    ld sp, $4a46
    add hl, hl
    nop
    nop
    rrca
    nop
    ld sp, $f746
    ld e, [hl]
    nop
    nop
    rst $30
    ld e, [hl]
    cp d
    ld [bc], a
    ld sp, $0046
    nop
    rst $30
    ld e, [hl]
    cp d
    ld [bc], a
    rrca
    nop
    nop
    nop
    cp d
    ld [bc], a
    ld [hl], b
    ld bc, $000f
    nop
    nop
    cp d
    ld [bc], a
    ld sp, $4a46
    add hl, hl
    nop
    nop
    rst $30
    ld e, [hl]
    ld sp, $7046
    ld bc, $000f
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_4ed7

jr_003_4ed7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    rst $38
    ld a, a
    rst $38
    ld e, a
    cp b
    ld a, [hl-]
    ld c, h
    dec e
    rst $38
    ld e, a
    cp b
    ld a, [hl-]
    ld c, h
    dec e
    nop
    nop
    call $6714
    nop
    add a
    db $10
    ld h, e
    inc c
    cp b
    ld a, [hl-]
    push de
    dec e
    ld c, h
    dec e
    ld h, a
    nop
    cp b
    ld a, [hl-]
    push de
    dec e
    ld h, a
    nop
    nop
    nop
    cp b
    ld a, [hl-]
    ld c, h
    dec e
    call $6714
    nop
    rst $38
    ld e, a
    cp b
    ld a, [hl-]
    ld h, a
    nop
    nop
    nop
    ld h, e
    inc c
    push de
    dec e
    ld h, a

Call_003_4f3d:
    nop
    nop
    nop
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_4f57

jr_003_4f57:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    rst $38
    ld c, e
    adc d
    ld c, d
    add h
    jr jr_003_4fa8

    inc b
    rst $38
    ld c, e
    ei
    ld a, [hl+]
    ld c, $11
    ld hl, $fb04
    ld a, [hl+]
    ld c, $11
    adc b
    inc b
    ld hl, $ff04
    ld c, e
    ld c, $11
    adc b
    inc b
    ld hl, $fb04
    ld a, [hl+]
    inc d
    dec c
    ld c, $11
    adc b
    inc b

jr_003_4fa8:
    rst $38
    ld c, e
    inc d
    dec c
    ld c, $11
    adc b
    inc b
    rst $38
    ld c, e
    ei
    ld a, [hl+]
    inc d
    dec c
    jr z, jr_003_4fbc

    ei
    ld a, [hl+]
    ld c, $11

jr_003_4fbc:
    adc b
    inc b
    ld hl, $0004
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_4fd7

jr_003_4fd7:
    nop
    nop
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
    inc bc
    sbc b
    ld bc, $0014
    nop
    nop
    ld e, $00
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    ld c, [hl]
    nop
    nop
    nop
    add hl, de
    add hl, bc
    ld b, [hl]
    inc b
    rst $38
    ld a, a
    dec d
    ld l, a
    add a
    ld c, c
    nop
    nop
    dec d
    ld l, a
    add a
    ld c, c
    nop
    nop
    jp $c328


    jr z, jr_003_5069

    nop
    ld b, [hl]
    inc b
    nop
    nop
    add a
    ld c, c
    ld c, [hl]
    nop
    ld b, [hl]
    inc b
    nop
    nop
    jp Jump_000_1928


    add hl, bc
    ld c, [hl]
    nop
    ld b, [hl]
    inc b
    rst $38
    ld a, a
    dec d
    ld l, a
    ld c, [hl]
    nop
    nop
    nop
    dec d
    ld l, a
    jp Jump_003_4e28


    nop
    nop
    nop
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_5057

jr_003_5057:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_003_5069:
    nop
    ld e, $00
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    sub [hl]
    ld a, $9d
    ld h, $ad
    inc c
    ld h, h
    nop
    rst $38
    ld a, a
    sub [hl]
    ld a, $e7
    stop
    nop
    add d
    inc e
    xor l
    inc c
    add [hl]
    dec a
    ld a, [hl+]
    ld b, d
    rst $38
    ld a, a
    rst $38
    ld a, a
    sub [hl]
    ld a, $e7
    db $10
    add [hl]
    dec a
    add d
    inc e
    xor l
    inc c
    nop
    nop
    sub [hl]
    ld a, $e7
    db $10
    xor l
    inc c
    ld h, h
    nop
    sub [hl]
    ld a, $e7
    db $10
    ld h, h
    nop
    nop
    nop
    ld h, h
    nop
    nop
    nop
    add [hl]
    dec a
    add d
    inc e
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_50d7

jr_003_50d7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    ld c, b
    add hl, hl
    adc c
    nop
    inc b
    nop
    ld c, a
    dec c
    rst $18
    ld c, e
    ld a, h
    ld a, [hl+]
    ld d, e
    dec c
    inc b
    nop
    ld c, a
    dec c
    call $483d
    add hl, hl
    add $14
    adc c
    nop
    inc b
    nop
    ld c, b
    add hl, hl
    call $483d
    add hl, hl
    call Call_003_4f3d
    dec c
    adc c
    nop
    call $483d
    add hl, hl
    add $14
    inc b
    nop
    call Call_003_7c3d
    ld a, [hl+]
    ld d, e
    dec c
    adc c
    nop
    ld c, a
    dec c
    ld d, e
    dec c
    adc c
    nop
    inc b
    nop
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_5157

jr_003_5157:
    nop
    nop
    nop
    jr jr_003_515f

    adc $01
    ld b, d

jr_003_515f:
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    jr jr_003_51d9

    adc [hl]
    dec l
    db $10
    ld l, $2a
    add hl, de
    jr jr_003_51e1

    adc [hl]
    dec l
    and l
    inc d
    nop
    nop
    db $10
    ld l, $00
    nop
    ld h, d
    ld [$2966], sp
    and l
    inc d
    adc [hl]
    dec l
    nop
    nop
    ld h, a
    inc c
    adc [hl]
    dec l
    nop
    nop
    db $10
    ld l, $2a
    add hl, de
    jr jr_003_5201

    nop
    nop
    ld h, d
    ld [$2966], sp
    nop
    nop
    and l
    inc d
    db $10
    ld l, $2a
    add hl, de
    ld a, [hl+]
    add hl, de
    adc [hl]
    dec l
    and l
    inc d
    nop
    nop
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_51d7

jr_003_51d7:
    nop
    nop

jr_003_51d9:
    nop
    add hl, sp
    ld h, a
    xor l
    dec [hl]
    nop
    nop
    nop

jr_003_51e1:
    nop
    add b
    ld l, c
    nop
    add hl, sp
    jr nz, jr_003_51f8

    nop
    nop
    ld e, $00
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl

jr_003_51f8:
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    db $fc

jr_003_5201:
    cpl
    ld de, $f21b
    dec de
    ld c, h
    ld c, $fc
    cpl
    ld de, $461b
    add hl, bc
    nop
    nop
    ld a, [c]
    dec de
    nop
    nop
    jp nz, $c704

    ld d, $46
    add hl, bc
    ld de, $001b
    nop
    ret z

    inc b
    ld de, $001b
    nop
    ld a, [c]
    dec de
    ld c, h
    ld c, $fc
    cpl
    nop
    nop
    jp nz, $c704

    ld d, $00
    nop
    ld b, [hl]
    add hl, bc
    ld a, [c]
    dec de
    ld c, h
    ld c, $4c
    ld c, $11
    dec de
    ld b, [hl]
    add hl, bc
    nop
    nop
    nop
    nop
    jr jr_003_5276

    xor l
    dec h
    add c
    inc b
    nop
    nop
    jr jr_003_527e

    ret nz

    dec [hl]
    call nz, Call_000_000c
    nop
    sbc $52
    and l
    jr c, jr_003_5257

jr_003_5257:
    nop
    nop
    nop
    inc [hl]
    ld d, e
    xor d
    add hl, hl
    add b
    nop
    nop
    nop
    nop
    ld d, d
    ld b, b
    dec l
    ld h, b
    stop
    nop
    ld e, $00
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d

jr_003_5276:
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a

jr_003_527e:
    add b
    nop
    ld hl, $5004
    add hl, de
    jp z, $b210

    inc c
    rst $38
    ld e, e
    rst $38
    ld a, [hl-]
    ld d, b
    add hl, de
    ld hl, $2104
    inc b
    ld d, b
    add hl, de
    jp z, $8810

    db $10
    rst $38
    ld a, [hl-]
    ld d, b
    add hl, de
    ld hl, $4a04
    ld hl, $3aff
    ld d, b
    add hl, de
    adc b
    db $10
    ld hl, $8804
    db $10
    ld c, d
    ld hl, $1950
    ld hl, $5004
    add hl, de
    jp z, $8810

    db $10
    ld d, b
    add hl, de
    rst $38
    ld e, e
    rst $38
    ld a, [hl-]
    ld c, d
    ld hl, $0421
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_52d7

jr_003_52d7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    ld a, c
    ld l, a
    ld l, $52
    ld l, c
    ld b, c
    and l
    jr nc, @+$7b

    ld l, a
    ld l, $52
    and l
    jr nc, jr_003_530f

jr_003_530f:
    nop
    ld l, $52
    ld l, c
    ld b, c
    and l
    jr nc, jr_003_5317

jr_003_5317:
    nop
    ld l, c
    ld b, c
    ld h, [hl]
    nop
    ld b, [hl]
    nop
    nop
    nop
    ld a, c
    ld l, a
    ld l, $52
    ld h, [hl]
    nop
    ld [bc], a
    nop
    ld a, c
    ld l, a
    ld l, $52
    ld l, c
    ld b, c
    nop
    nop
    nop
    nop
    ld h, [hl]
    nop
    ld b, [hl]
    nop
    ld [bc], a
    nop
    ld a, c
    ld l, a
    ld l, $52
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_5357

jr_003_5357:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    ld hl, $bf04
    cpl
    ld d, $0e
    call $ff00
    ld a, a
    db $db
    ld [hl], $f7
    dec e
    ld hl, $2104
    inc b
    ld d, $0e
    ld d, e
    ld bc, $00ca
    ld hl, $9204
    add hl, bc
    ld d, e
    ld bc, $00ca
    ld d, $0e
    rst $30
    dec e
    ld d, e
    ld bc, $0421
    rst $38
    ld a, a
    cp a
    cpl
    ld d, $0e
    ld hl, $bf04
    cpl
    ld d, $0e
    ld d, e
    ld bc, $00ca
    db $db
    ld [hl], $bf
    cpl
    ld d, $0e
    ld hl, $0004
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_53d7

jr_003_53d7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    rst $38
    ld a, a
    ld e, a
    ld b, e
    ld e, c
    add hl, de
    jp z, $ff10

    ld a, a
    ld e, a
    ld b, e
    jp z, Jump_000_2110

    inc b
    ld e, c
    add hl, de
    ld hl, $ca04
    db $10
    ld a, [bc]
    ld hl, $435f
    ld e, c
    add hl, de
    jp z, Jump_000_2110

    inc b
    ld a, [hl+]
    inc b
    ld e, c
    add hl, de
    jp z, Jump_000_2110

    inc b
    ld hl, $0a04
    ld hl, $042a
    ld [hl], $04
    ld a, [hl+]
    inc b
    rst $38
    ld a, a
    ld e, a
    ld b, e
    ld e, c
    add hl, de
    ld a, [bc]
    ld hl, $435f
    jp z, Jump_000_2110

    inc b
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_5457

jr_003_5457:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    ld c, l
    inc d
    rst $38
    ld h, a
    cp c
    ld hl, $14af
    rst $38
    ld h, a
    cp c
    ld hl, $0848
    ld b, d
    ld [$14af], sp
    cp c
    ld hl, $144d
    ld c, b
    ld [$2154], sp
    rst $38
    ld h, a
    cp c
    ld hl, $14af
    xor a
    inc d
    ld c, l
    inc d
    rst $38
    ld h, a
    ld b, d
    ld [$7fff], sp
    rst $38
    ld h, a
    ld c, b
    ld [$14af], sp
    xor a
    inc d
    cp c
    ld hl, $67ff
    ld c, b
    ld [$0842], sp
    ld c, b
    ld [$14af], sp
    ld c, l
    inc d
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_54d7

jr_003_54d7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    pop de
    ld [$0007], sp
    xor c
    dec a
    nop
    nop
    rst $38
    ld a, a
    ld c, d
    ld e, d
    xor c
    dec a
    nop
    nop
    rst $38
    ld a, a
    pop de
    ld [$0007], sp
    nop
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    xor c
    dec a
    nop
    nop
    rst $38
    ld a, a
    xor c
    dec a
    pop de
    ld [$0000], sp
    ld c, d
    ld e, d
    pop de
    ld [$0007], sp
    nop
    nop
    rst $38
    ld a, a
    pop de
    ld [$0007], sp
    nop
    nop
    rst $38
    ld a, a
    xor c
    dec a
    pop de
    ld [$0007], sp
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_5557

jr_003_5557:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub e
    ld bc, $00a9
    nop
    nop
    nop
    nop
    ld e, $00
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    xor l
    dec c
    ld h, e
    inc c
    db $ed
    inc c
    inc d
    ld b, d
    ld e, l
    ld e, a
    inc d
    ld b, d
    rst $20
    inc e
    ld h, e
    inc c
    ld e, l
    ld e, a
    inc d
    ld b, d
    ld d, b
    dec e
    db $ed
    inc c
    inc d
    ld b, d
    ld d, b
    dec e
    db $ed
    inc c
    rst $20
    inc e
    sub h
    ld c, $ad
    dec c
    db $ed
    inc c
    ld h, e
    inc c
    ld e, l
    ld e, a
    inc d
    ld b, d
    db $ed
    inc c
    ld h, e
    inc c
    db $ed
    inc c
    inc d
    ld b, d
    rst $20
    inc e
    ld h, e
    inc c
    db $ed
    inc c
    xor l
    dec c
    rst $20
    inc e
    ld h, e
    inc c
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_55d7

jr_003_55d7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    add hl, de
    ld b, e
    dec [hl]
    ld [hl+], a
    ld c, a
    add hl, bc
    adc c
    nop
    rst $38
    ld a, a
    dec [hl]
    ld [hl+], a
    adc c
    nop
    nop
    nop
    dec [hl]
    ld [hl+], a
    jp nz, $4028

    inc e
    nop
    nop
    dec [hl]
    ld [hl+], a
    ld c, a
    add hl, bc
    sbc b
    inc c
    nop
    nop
    dec [hl]
    ld [hl+], a
    ld c, a
    add hl, bc
    adc c
    nop
    nop
    nop
    ld c, a
    ld [$0007], sp
    adc c
    nop
    nop
    nop
    ld e, a
    ld c, d
    rla
    ld hl, $084f
    rlca
    nop
    rst $38
    ld a, a
    inc d
    ld h, a
    inc l
    ld c, [hl]
    nop
    nop
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_5657

jr_003_5657:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    ld l, a
    dec c
    jp hl


    inc c
    xor c
    inc c
    ld h, e
    inc c
    ld a, [c]
    dec [hl]
    ld l, [hl]
    ld hl, $0ca9
    ld h, e
    inc c
    db $76
    ld c, $6f
    dec c
    jp hl


    inc c
    xor c
    inc c
    or [hl]
    dec c
    db $76
    ld c, $6f
    dec c
    xor c
    inc c
    ld a, e
    ld l, a
    ld a, [c]
    dec [hl]
    ld l, [hl]
    ld hl, $0ce9
    ld a, [c]
    dec [hl]
    ld l, [hl]
    ld hl, $0ce9
    ld h, e
    inc c
    or [hl]
    dec c
    ld l, a
    dec c
    xor c
    inc c
    ld h, e
    inc c
    ld a, e
    ld l, a
    cp a
    inc sp
    db $76
    ld c, $6f
    dec c
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_56d7

jr_003_56d7:
    nop
    nop
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
    inc bc
    nop
    ld bc, $0040
    nop
    nop
    ld e, $00
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    rst $38
    ld a, a
    rst $38
    ld h, e
    ld d, d
    ld l, $6b
    ld hl, $7fff
    rst $38
    ld h, e
    ld l, e
    ld hl, $0421
    ld hl, $3304
    ld de, $0d0e
    adc b
    inc b
    ld a, a
    scf
    sbc e
    ld h, $6b
    ld hl, $0470
    ld l, e
    ld hl, $0d0e
    adc b
    inc b
    ld hl, $5204
    ld l, $6b
    ld hl, $0488
    ld hl, $7f04
    scf
    sbc e
    ld h, $6b
    ld hl, $0421
    rst $38
    ld h, e
    ld a, a
    scf
    sbc e
    ld h, $6b
    ld hl, $0000
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_5757

jr_003_5757:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    jp z, $df39

    inc sp
    sbc e
    ld a, [de]
    nop
    nop
    rst $38
    ld a, e
    rst $18
    inc sp
    sbc e
    ld a, [de]
    nop
    nop
    rst $38
    ld a, e
    sbc e
    ld a, [de]
    jp z, Jump_000_0039

    nop
    and $24
    ld d, d
    add hl, bc
    adc b
    nop
    nop
    nop
    rst $38
    ld a, e
    jp z, $e639

    inc h
    nop
    nop
    sbc e
    ld a, [de]
    ld d, d
    add hl, bc
    jp z, $8839

    nop
    ld d, d
    add hl, bc
    jp z, $e639

    inc h
    adc b
    nop
    ld d, d
    add hl, bc
    jp z, $8839

    nop
    nop
    nop
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_57d7

jr_003_57d7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    ld c, [hl]
    ld e, d
    xor e
    dec a
    add h
    add hl, bc
    nop
    nop
    ld c, [hl]
    ld e, d
    xor e
    dec a
    add a
    inc c
    nop
    nop
    ld a, b
    ld [bc], a
    xor e
    dec a
    add a
    inc c
    nop
    nop
    add h
    add hl, bc
    xor e
    dec a
    add a
    inc c
    nop
    nop
    ld c, [hl]
    ld e, d
    xor e
    dec a
    xor c
    ld l, l
    nop
    nop
    ld c, [hl]
    ld e, d
    xor c
    ld l, l
    add h
    add hl, bc
    nop
    nop
    cp h
    nop
    xor e
    dec a
    add a
    inc c
    nop
    nop
    ld c, [hl]
    ld e, d
    xor e
    dec a
    cp h
    nop
    nop
    nop
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_5857

jr_003_5857:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    ld a, d
    dec c
    ld l, $19
    ld l, e
    ld [$0000], sp
    ld a, e
    ld [hl-], a
    ld l, $19
    ld l, e
    ld [$0000], sp
    ld l, $19
    ld l, e
    ld [$0006], sp
    nop
    nop
    ld a, e
    ld [hl-], a
    xor [hl]
    nop
    ld l, $19
    ld b, $00
    ld l, $19
    ld a, d
    dec c
    xor [hl]
    nop
    ld b, $00
    ld a, e
    ld [hl-], a
    ld a, d
    dec c
    xor [hl]
    nop
    ld b, $00
    ld a, e
    ld [hl-], a
    ld l, $19
    xor [hl]
    nop
    nop
    nop
    ld a, e
    ld [hl-], a
    xor [hl]
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_58d7

jr_003_58d7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    ld hl, $cf04
    ld hl, $7f15
    dec b
    dec a
    jr c, @+$45

    sub e
    ld [hl-], a
    rst $08
    ld hl, $0421
    ld c, [hl]
    add hl, de
    or l
    ld hl, $3d05
    adc d
    inc b
    sub e
    ld [hl-], a
    rst $08
    ld hl, $194e
    adc d
    inc b
    jr c, jr_003_5965

    sub e
    ld [hl-], a
    ld c, [hl]
    add hl, de
    adc d
    inc b
    ld hl, $9304
    ld [hl-], a
    dec d
    ld a, a
    dec b
    dec a
    or l
    ld hl, $194e
    adc d
    inc b
    ld hl, $0504
    dec a
    rst $08
    ld hl, $048a
    ld hl, $0004
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_5957

jr_003_5957:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_003_5965:
    nop
    nop
    nop
    nop
    nop
    ld e, $00
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    rst $38
    ld a, a
    sub e
    ld [hl-], a
    rst $08
    ld hl, $0421
    sub e
    ld [hl-], a
    rst $08
    ld hl, $042a
    ld hl, $7704
    ld de, $1efb
    ld a, [hl+]
    inc b
    ld hl, $fb04
    ld e, $cf
    ld hl, $042a
    ld hl, $cf04
    ld hl, $51a9
    ld a, [hl+]
    inc b
    ld hl, $ff04
    ld a, a
    sub e
    ld [hl-], a
    ld a, [hl+]
    inc b
    ld hl, $cf04
    ld hl, $1177
    ld a, [hl+]
    inc b
    ld hl, $7704
    ld de, $7fff
    ei
    ld e, $2a
    inc b
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_59d7

jr_003_59d7:
    nop
    nop
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
    ld l, c
    nop
    add hl, sp
    jr nz, jr_003_59f8

    nop
    nop
    ld e, $00
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl

jr_003_59f8:
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    sbc a
    add hl, bc
    ld hl, sp+$00
    adc $00
    ld c, e
    nop
    ld [hl], a
    ld bc, $00ce
    ld c, e
    nop
    nop
    nop
    ld e, a
    ld c, $9f
    add hl, bc
    ld hl, sp+$00
    adc $00
    dec de
    nop
    ld d, $00
    stop
    ld c, e
    nop
    ld d, $00
    stop
    ld c, e
    nop
    nop
    nop
    ld e, a
    ld c, $9f
    add hl, bc
    ld a, a
    inc h
    ld c, e
    nop
    sbc a
    add hl, bc
    ld hl, sp+$00
    ld a, a
    inc h
    ld c, e
    nop
    ld e, a
    ld e, d
    ld a, a
    inc h
    ld e, a
    ld c, $ce
    nop
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_5a57

jr_003_5a57:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    rst $38
    ld a, a
    rst $30
    ld h, [hl]
    rst $28
    ld b, c
    ld [$f721], sp
    ld h, [hl]
    rst $28
    ld b, c
    ld [$4221], sp
    ld [$2108], sp
    ld c, a
    add hl, bc
    db $db
    ld e, a
    adc $21
    db $db
    ld e, a
    ld c, a
    add hl, bc
    rst $38
    ld a, a
    sbc a
    ld c, [hl]

jr_003_5aa0:
    ld [$4221], sp
    ld a, h
    and l
    inc [hl]
    and l
    jr z, jr_003_5aa0

    ld h, [hl]
    rst $38
    ld a, a
    adc $21
    db $db
    ld e, a
    and l
    jr z, @+$0a

    ld hl, $094f
    adc $21
    ld b, d
    ld [$7fff], sp
    rst $30
    ld h, [hl]
    ld c, a
    add hl, bc
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_5ad7

jr_003_5ad7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    ld a, [bc]
    nop
    ld [de], a
    ld a, [bc]
    nop
    nop
    sub a
    nop
    ld a, h
    inc sp
    ld [de], a
    ld a, [bc]
    jr z, jr_003_5b0f

    nop

jr_003_5b0f:
    nop
    nop
    nop
    ld a, [bc]
    nop
    ld c, $01
    ld a, h
    inc sp
    ld a, [bc]
    nop
    nop
    nop
    adc e
    ld hl, $0128
    ld a, h
    inc sp
    ld [de], a
    ld a, [bc]
    sub a
    nop
    ld a, [bc]
    nop
    ld [de], a
    ld a, [bc]
    ld c, $01
    ld a, [bc]
    nop
    nop
    nop
    ld a, h
    inc sp
    ld [de], a
    ld a, [bc]
    jr z, jr_003_5b37

    sub a

jr_003_5b37:
    nop
    ld [de], a
    ld a, [bc]
    jr z, jr_003_5b3d

    sub a

jr_003_5b3d:
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_5b57

jr_003_5b57:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    inc bc
    ld c, $63
    inc c
    ld [$867e], sp
    ld b, c
    sub l
    ld [hl], a
    ld l, a
    ld h, [hl]
    add [hl]
    ld b, c
    ld h, e
    inc c
    ld h, e
    inc c
    add [hl]
    ld b, c
    jp hl


    rla
    inc bc
    ld c, $63
    inc c
    add [hl]
    ld b, c
    sbc [hl]
    ld d, $13
    ld bc, $666f
    add [hl]
    ld b, c
    inc bc
    ld c, $63
    inc c
    sub l
    ld [hl], a
    ld l, a
    ld h, [hl]
    add [hl]
    ld b, c
    inc bc
    ld c, $6f
    ld h, [hl]
    add [hl]
    ld b, c
    inc de
    ld bc, $0c63
    add [hl]
    ld b, c
    inc bc
    ld c, $13
    ld bc, $0c63
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_5bd7

jr_003_5bd7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    ld [hl], c
    ld d, d
    nop
    ld a, h
    nop
    ld b, b
    nop
    nop
    cp d
    ld a, a
    ld [hl], c
    ld d, d
    jr z, @+$2b

    nop
    nop
    ld d, $03
    add b
    ld [bc], a
    ld h, b
    ld bc, $0000
    ld [hl], c
    ld d, d
    rst $08

jr_003_5c1b:
    dec h
    call RST_10

jr_003_5c1f:
    nop
    ld d, $03
    nop
    nop
    nop
    ld a, h
    nop
    ld b, b
    cp d
    ld a, a
    rst $08
    dec h
    call RST_10
    ld b, b
    rst $08
    dec h
    cp d
    ld a, a
    ld [hl], c
    ld d, d
    jr z, jr_003_5c61

    or a
    nop
    rst $08

jr_003_5c3b:
    dec h

jr_003_5c3c:
    call RST_10
    nop
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_5c57

jr_003_5c57:
    nop
    nop
    nop
    nop
    nop

jr_003_5c5c:
    nop
    nop
    nop

jr_003_5c5f:
    nop
    nop

jr_003_5c61:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_003_5c68:
    nop
    nop
    ld e, $00
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    add $18
    ld [$8b19], sp
    add hl, hl
    ldh a, [$39]
    push af
    ld h, [hl]
    xor b
    dec a
    add $18
    add h
    jr jr_003_5c5c

    db $10
    ld [$c619], sp
    jr jr_003_5c1b

    jr jr_003_5c5f

    jr jr_003_5c1f

    jr jr_003_5c68

    db $10
    add h
    db $10
    ld [$8b19], sp
    add hl, hl
    push af
    ld h, [hl]
    ldh a, [$39]
    ldh a, [$39]
    adc e
    add hl, hl
    add $18
    add h
    jr jr_003_5c3c

    add hl, hl
    ld [$c619], sp
    jr jr_003_5c3b

    jr jr_003_5c61

    dec a
    adc e
    add hl, hl
    add $18
    add h
    jr jr_003_5cc1

jr_003_5cc1:
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_5cd7

jr_003_5cd7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    adc $41
    and h
    inc d
    nop
    nop
    jr z, @+$03

    sbc $7f
    add hl, sp
    ld [hl], e
    adc $41
    and h
    inc d
    add hl, sp
    ld [hl], e
    adc $41
    and h
    inc d
    ld a, a
    rrca
    nop
    nop
    adc $41
    and h
    inc d
    ld a, d
    ld a, $de
    ld a, a
    add hl, sp
    ld [hl], e
    adc $41
    sbc d
    add hl, hl
    add hl, sp
    ld [hl], e
    and h
    inc d
    nop
    nop
    jr z, jr_003_5d31

    add hl, sp

jr_003_5d31:
    ld [hl], e
    adc $41
    and h
    inc d
    jr z, jr_003_5d39

    add hl, sp

jr_003_5d39:
    ld [hl], e
    adc $41
    and h
    inc d
    nop
    nop
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_5d57

jr_003_5d57:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    jr nc, jr_003_5dc0

    nop
    nop
    push af
    ld l, d
    call Call_000_2f25
    ld a, $4a
    dec d
    add $04
    nop
    nop
    push af
    ld l, d
    cp a
    ld bc, $00b2
    call $cd25
    dec h
    nop
    nop
    or d
    nop
    rst $38
    inc sp
    jr nc, jr_003_5de0

    ld c, d
    dec d
    call $c625
    inc b
    ld c, d
    dec d
    push af
    ld d, [hl]
    call Call_000_0025
    nop
    ld c, d
    dec d
    call $c625
    inc b
    nop
    nop
    call $c625
    inc b
    or d
    nop
    nop
    nop

jr_003_5dc0:
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_5dd7

jr_003_5dd7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_003_5de0:
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    ld l, a
    ld a, [bc]
    nop
    nop
    sub d
    nop
    cp h
    nop
    ld a, d
    daa
    ld l, a
    ld a, [bc]
    ld b, [hl]
    ld bc, $0842
    ld b, [hl]
    ld bc, $0a6f
    nop
    nop
    ld b, d
    ld [$277a], sp
    ld l, a
    ld a, [bc]
    cp h
    nop
    sub d
    nop
    sub d
    nop
    ld a, d
    daa
    ld l, a
    ld a, [bc]
    ld b, [hl]
    ld bc, $0a6f
    ld b, [hl]
    ld bc, $0092
    cp h
    nop
    ld l, a
    ld a, [bc]
    ld b, [hl]
    ld bc, $0000
    sub d
    nop
    ld l, a
    ld a, [bc]
    ld b, [hl]
    ld bc, $0842
    sub d
    nop
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_5e57

jr_003_5e57:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, d
    ld b, b
    dec l
    ld h, b
    stop
    nop
    ld e, $00
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    ld e, [hl]
    inc bc
    rst $30
    ld [bc], a
    add hl, hl
    ld [bc], a
    call nz, $f700
    ld [bc], a
    add hl, hl
    ld c, $e2
    nop
    ld b, d
    ld [$022d], sp
    rst $38
    ld a, a
    rst $38
    scf
    ld e, [hl]
    inc bc
    ld b, d
    ld [$088f], sp
    ld e, a
    ld hl, $02f7
    ret


    dec c
    ld e, [hl]
    inc bc
    rst $38
    dec hl
    sbc [hl]
    inc bc
    add hl, sp
    inc bc
    dec b
    add hl, bc
    adc a
    ld [$0842], sp
    rst $30
    ld [bc], a
    ld sp, hl
    ld [bc], a
    ld e, a
    ld hl, $088f
    rst $30
    ld [bc], a
    rst $38
    inc sp
    ld [hl], $2b
    rst $38
    dec hl
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_5ed7

jr_003_5ed7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    rst $38
    ld a, a
    ld e, d
    inc bc
    dec l
    ld [bc], a
    inc bc
    ld bc, $035a
    dec l
    ld [bc], a
    inc bc
    ld bc, $0000
    dec l
    ld [bc], a
    nop
    nop
    inc bc
    ld bc, $01a6
    and [hl]
    ld bc, $0103
    ld l, [hl]
    nop
    nop
    nop
    dec l
    ld [bc], a
    ld l, [hl]
    nop
    cp c
    ld bc, $027f
    and [hl]
    ld bc, $035a
    dec l
    ld [bc], a
    inc bc
    ld bc, $022d
    cp c
    ld bc, $006e
    nop
    nop
    dec l
    ld [bc], a
    ld l, [hl]
    nop
    cp c
    ld bc, $0103
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_5f57

jr_003_5f57:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    rst $38
    ld h, a
    ld a, h
    inc bc
    adc h
    ld [bc], a
    inc bc
    ld bc, $037c
    adc h
    ld [bc], a
    inc bc
    ld bc, $0421
    inc bc
    ld bc, $00bf
    ld d, e
    nop
    ld hl, $8c04
    ld [bc], a
    cp a
    nop
    sub e
    inc b
    ld hl, $7c04
    inc bc
    cp a
    nop
    adc h
    ld [bc], a
    inc bc
    ld bc, $028c
    rst $00
    ld bc, $0103
    ld hl, $7c04
    inc bc
    rst $00
    ld bc, $028c
    inc bc
    ld bc, $7c21
    ld hl, $217c
    ld a, h
    ld hl, $007c
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_5fd7

jr_003_5fd7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    adc $02
    add sp, $01
    inc hl
    ld bc, $0842
    ld e, d
    inc bc
    add sp, $01
    inc hl
    ld bc, $0842
    inc hl
    ld bc, $017f
    ld sp, $4200
    ld [$1734], sp
    ld a, a
    ld bc, $0031
    ld b, d
    ld [$035a], sp
    adc $02
    add sp, $01
    inc hl
    ld bc, $1734
    ld a, a
    ld bc, $0031
    add [hl]
    ld bc, $035a
    adc $02
    inc [hl]
    rla
    add [hl]
    ld bc, $035a
    adc $02
    ld a, a
    ld bc, $0031
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_6057

jr_003_6057:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    rst $30
    ld e, [hl]
    xor l
    dec [hl]
    add h
    stop
    nop
    di
    ld [$046a], sp
    ld b, a
    nop
    nop
    nop
    rst $38
    ld l, a
    di
    ld [$046a], sp
    ld b, a
    nop
    rst $30
    ld e, [hl]
    xor l
    dec [hl]
    rst $38
    ld l, a
    add h
    db $10
    di
    ld [$046a], sp
    rst $30
    ld e, [hl]
    nop
    nop
    rst $30
    ld e, [hl]
    xor l
    dec [hl]
    ld b, a
    nop
    nop
    nop
    xor l
    dec [hl]
    add h
    db $10
    ld b, a
    nop
    nop
    nop
    rst $30
    ld e, [hl]
    rst $38
    ld l, a
    ld b, a
    nop
    nop
    nop
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_60d7

jr_003_60d7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    ld h, h
    ld b, l
    ld d, [hl]
    ld c, d
    ld a, [c]
    ld b, c
    ld b, d
    ld [$41f2], sp
    ld l, [hl]
    dec [hl]
    add l
    inc d
    ld b, d
    ld [$4564], sp
    ld d, [hl]
    ld c, d
    add l
    inc d
    ld b, d
    ld [$4a56], sp
    ld a, [c]
    ld b, c
    ld l, [hl]
    dec [hl]
    add l
    inc d
    inc sp
    ld bc, $04ee
    ld l, c
    nop
    ld b, d
    ld [$04ee], sp
    ld l, c
    nop
    ld l, [hl]
    dec [hl]
    ld b, d
    ld [$6842], sp
    ld [hl], d
    ld l, $89
    dec c
    and d
    inc c
    ld [hl], d
    ld l, $89
    dec c
    and d
    inc c
    ld b, d
    ld [$0000], sp
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_6157

jr_003_6157:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    nop
    nop
    rst $38
    ld [bc], a
    ld a, b
    dec b
    sub c
    inc b
    nop
    nop
    adc $2d
    ld l, [hl]
    dec l
    add $24
    rst $38
    ld a, a
    add $24
    adc $2d
    sub $4e
    adc $2d
    add $24
    ld a, b
    dec b
    ld b, $00
    rst $38
    ld a, a
    sub $4e
    adc $2d
    ld a, b
    dec b
    ld l, [hl]
    dec l
    add $24
    inc h
    add hl, sp
    inc h
    dec l
    rst $38
    ld [bc], a
    inc h
    dec l
    add $24
    nop
    nop
    nop
    nop
    adc $2d
    rst $38
    ld [bc], a
    ld a, b
    dec b
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_61d7

jr_003_61d7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    rst $38
    ld a, a
    rst $38
    inc bc
    xor d
    ld [bc], a
    ld b, $02
    xor d
    ld [bc], a
    ld b, $02
    inc bc
    ld bc, $0421
    ld b, $02
    inc bc
    ld bc, $011a
    inc l
    nop
    inc bc
    ld bc, $011a
    inc l
    nop
    ld hl, $aa04
    ld [bc], a
    ld a, [de]
    ld bc, $002c
    ld hl, $5304
    inc bc
    xor d
    ld [bc], a
    ld b, $02
    rst $38
    inc bc
    rra
    ld a, h
    rst $38
    inc bc
    xor d
    ld [bc], a
    ld b, $02
    rra
    ld a, h
    and h
    ld bc, $00e1
    rst $00
    ld [bc], a
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_6257

jr_003_6257:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    ld h, h
    ld [bc], a
    ld hl, $b004
    nop
    rra
    ld [bc], a
    sub h
    inc bc
    ld h, h
    ld [bc], a
    jr nz, @+$03

    ld hl, $6404
    ld [bc], a
    jr nz, jr_003_6295

    add b

jr_003_6295:
    nop
    ld hl, $8b04
    inc bc
    ld h, h
    ld [bc], a
    rra
    ld [bc], a
    or b
    nop
    add b
    inc bc
    ld h, h
    ld [bc], a
    rra
    ld [bc], a
    ld hl, $6404
    ld [bc], a
    jr nz, jr_003_62ad

    or b

jr_003_62ad:
    nop
    rra
    ld [bc], a
    ld hl, $1f04
    ld [bc], a
    xor a
    ld b, l
    or b
    nop
    ld h, h
    ld [bc], a
    jr nz, @+$03

    ld hl, $b004
    nop
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_62d7

jr_003_62d7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    cp d
    ld c, d
    dec d
    ld c, d
    sub c
    ld sp, $20cd
    push af
    dec a
    dec c
    ld hl, $2082
    nop
    db $10
    dec c
    ld hl, $017e
    ld c, $00
    nop
    nop
    push af
    dec a
    sub c
    ld sp, $210d
    add b
    jr nz, @-$6d

    ld sp, $210d
    add l
    jr nz, jr_003_6327

jr_003_6327:
    db $10
    dec c
    ld hl, $2080
    ld c, $00
    nop
    nop
    add l
    jr nz, jr_003_63b1

    ld bc, $000e
    nop
    nop
    sub c
    ld sp, $210d
    ld a, a
    nop
    ld l, c
    nop
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_6357

jr_003_6357:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    dec c
    inc bc
    inc h
    ld [bc], a
    ld hl, $2101
    inc b
    inc h
    ld [bc], a
    inc sp
    inc bc
    ld h, e
    ld bc, $0421
    rst $38
    ld a, a
    rst $38
    inc bc
    inc sp
    inc bc
    dec c
    inc bc
    ld h, e
    ld bc, $019f
    ld l, h
    nop
    ld hl, $2904
    ld a, [bc]
    sbc a
    ld bc, $006c
    ld hl, $2904
    ld a, [bc]
    ld h, e
    ld bc, $019f
    ld l, h
    nop
    add hl, hl

jr_003_63b1:
    ld a, [bc]
    dec c
    inc bc
    inc sp
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    dec c
    inc bc
    add hl, hl
    ld a, [bc]
    inc sp
    inc bc
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_63d7

jr_003_63d7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    ld [hl], h
    ld hl, $08ab
    daa
    inc b
    ld hl, $df04
    ld a, [hl-]
    ld [hl], h
    ld hl, $08ab
    daa
    inc b
    inc d
    ld a, [hl-]
    dec hl
    dec h
    daa
    inc b
    ld hl, $1404
    ld a, [hl-]
    dec hl
    dec h
    ld [hl], h
    ld hl, $08ab
    rst $18
    ld a, [hl-]
    rra
    ld c, $5c
    dec c
    xor e
    ld [$252b], sp
    ld e, h
    dec c
    xor e
    ld [$0427], sp
    dec sp
    ld [$08ab], sp
    daa
    inc b
    ld hl, $ff04
    ld a, a
    rst $18
    ld a, [hl-]
    ld [hl], h
    ld hl, $08ab
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_6457

jr_003_6457:
    nop
    nop
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
    ld l, d
    ld b, b
    add hl, sp
    ld b, b
    stop
    nop
    ld e, $00
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    or c
    nop
    dec h
    nop
    ld bc, $0000
    nop
    rst $38
    ld c, a
    ld sp, $ab1e
    inc b
    ld bc, $3f00
    rra
    add hl, sp
    ld d, $ab
    inc b
    cp a
    ld d, $ff
    ld a, a
    rst $38
    ld c, a
    ld sp, $ab1e
    inc b
    ccf
    rra
    add hl, sp
    ld d, $b1
    nop
    ld bc, $3f00
    rra
    cp a
    rra
    cp a
    ld d, $ab
    inc b
    rst $38
    ld c, a
    ld sp, $ab1e
    inc b
    nop
    nop
    add hl, sp
    ld d, $ff
    ld c, a
    ld sp, $011e
    nop
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_64d7

jr_003_64d7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    inc sp
    ld bc, $0ceb
    ld h, a
    nop
    nop
    nop
    rst $38
    ld h, a
    rst $30
    ld [hl], $71
    dec e
    ld h, a
    nop
    ld e, e
    ld [hl+], a
    sbc c
    add hl, bc
    ld [hl], c
    dec e
    ld a, a
    cpl
    rst $38
    ld a, a
    rst $38
    ld h, a
    rst $30
    ld [hl], $71
    dec e
    ld e, e
    ld [hl+], a
    sbc c
    add hl, bc
    inc sp
    ld bc, $0067
    ld h, a
    nop
    ld e, e
    ld [hl+], a
    ld a, a
    cpl
    ld [hl], c
    dec e
    rst $38
    ld h, a
    rst $30
    ld [hl], $71
    dec e
    nop
    nop
    sbc c
    add hl, bc
    rst $38
    ld h, a
    rst $30
    ld [hl], $67
    nop
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_6557

jr_003_6557:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    jr jr_003_6598

    ld [hl], e
    add hl, bc
    ld h, a
    nop
    nop
    nop
    rst $38
    ld a, a
    ld sp, $0846
    ld hl, $0000
    cp d
    ld [hl+], a
    jr jr_003_65aa

    xor $00
    nop
    nop

jr_003_6598:
    ld sp, $0846
    ld hl, $00ee
    nop
    nop
    ld sp, $0846
    ld hl, $1618
    cp d
    ld [hl+], a
    ld h, a
    nop

jr_003_65aa:
    ld [hl], e
    add hl, bc
    xor $00
    nop
    nop
    xor $00
    jr jr_003_65ca

    ld [hl], e
    add hl, bc
    ld h, a
    nop
    ld sp, $ff46
    ld a, a
    rst $38
    ld a, a
    xor $00
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop

jr_003_65ca:
    sbc h
    ld sp, $4140
    add h

jr_003_65cf:
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_65d7

jr_003_65d7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    rst $38
    ld a, a
    ld d, d
    ld h, [hl]
    ld [$c64d], sp
    jr z, jr_003_65cf

    jr z, @+$23

    inc d
    nop
    ld [$0000], sp
    rra
    nop
    ld d, d
    ld h, [hl]
    ld [$214d], sp
    inc d
    ld d, d
    ld h, [hl]
    ld [$c64d], sp
    jr z, jr_003_661f

jr_003_661f:
    ld [$08ad], sp
    ld d, d
    ld h, [hl]
    ld [$214d], sp
    inc d
    ld d, d
    ld h, [hl]
    ld [$214d], sp
    inc d
    nop
    ld [$7fff], sp
    ld d, d
    ld h, [hl]
    ld hl, $0014
    nop
    ld hl, $5214
    ld h, [hl]
    ld [$004d], sp
    nop
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_6657

jr_003_6657:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    dec [hl]
    ld b, $b2
    ld bc, HeaderGlobalChecksum
    ld [$b200], a
    ld bc, $00ea
    adc b
    nop
    ld b, l
    nop
    ld c, [hl]
    ld bc, $00ea
    adc b
    nop
    ld b, l
    nop
    or l
    ld d, [hl]
    adc h
    dec [hl]
    ld [$8800], a
    nop
    or l
    ld d, [hl]
    adc h
    dec [hl]
    or d
    ld bc, $0088
    rst $38
    ld a, a
    or l
    ld d, [hl]
    dec [hl]
    ld b, $4d
    add hl, bc
    and a
    ld h, b
    inc b
    ld b, b
    ld c, [hl]
    ld bc, $0088
    xor $7d
    and a
    ld h, b
    inc b
    ld b, b
    adc a
    ld bc, $0000
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_66d7

jr_003_66d7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub e
    ld bc, $00a9
    nop
    nop
    nop
    nop
    ld e, $00
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    db $fc
    ld h, e
    di
    ld c, d
    adc d
    dec h
    nop
    nop
    rst $38
    ld a, a
    ld a, d
    ld e, e
    rrca
    ld [hl], $00
    nop
    ld a, d
    ld e, e
    rrca
    ld [hl], $f3
    ld c, d
    nop
    nop
    rst $38
    ld a, a
    di
    ld c, d
    ld a, d
    ld e, e
    nop
    nop
    rrca
    ld [hl], $fc
    ld h, e
    di
    ld c, d
    nop
    nop
    rst $10
    ld de, $0000
    ld a, d
    ld e, e
    rrca
    ld [hl], $12
    nop
    db $fc
    ld h, e
    rrca
    ld [hl], $00
    nop
    rst $10
    ld de, $5b7a
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_6757

jr_003_6757:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    rst $38
    ld a, a
    di
    ld a, [hl]
    sub l
    dec c
    ld l, e
    nop
    ld a, l
    ld e, $95
    dec c
    ld l, e
    nop
    nop
    nop
    ld l, e
    nop
    nop
    nop
    sub l
    dec c
    and h
    ld l, b
    sub l
    dec c
    ld l, e
    nop
    nop
    nop
    dec l
    inc e
    sub l
    dec c
    ld l, e
    nop
    xor e
    ld a, l
    and h
    ld l, b
    sub l
    dec c
    ld l, e
    nop
    ld [hl], a
    inc l
    dec l
    inc e
    ld l, e
    nop
    nop
    nop
    xor e
    ld a, l
    and h
    ld l, b
    rst $38
    ld a, a
    ld a, l
    ld e, $6b
    nop
    di
    ld a, [hl]
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_67d7

jr_003_67d7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    rra
    ld c, e
    rra
    ld [de], a
    ld d, [hl]
    ld bc, $004d
    rst $38
    ld a, a
    inc a
    ld a, [hl+]
    xor [hl]
    inc d
    nop
    nop
    rra
    ld [de], a
    ld d, [hl]
    ld bc, $004d
    nop
    nop
    rra
    ld c, e
    rst $38
    ld a, a
    xor [hl]
    inc d
    nop
    nop
    rra
    ld c, e
    rra
    ld [de], a
    xor [hl]
    inc d
    nop
    nop
    ld d, [hl]
    add hl, de
    ld c, l
    nop
    xor [hl]
    inc d
    nop
    nop
    rra
    ld c, e
    rst $38
    ld a, a
    inc a
    ld a, [hl+]
    xor [hl]
    inc d
    inc a
    ld a, [hl+]
    ld c, l
    nop
    xor [hl]
    inc d
    nop
    nop
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_6857

jr_003_6857:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    or c
    nop
    ld l, e
    nop
    dec h
    nop
    nop
    nop
    rst $38
    ld c, a
    ld sp, $ab1e
    inc b
    nop
    nop
    ccf
    rra
    add hl, sp
    ld d, $ab
    inc b
    cp a
    ld d, $ff
    ld a, a
    rst $38
    ld c, a
    ld sp, $ab1e
    inc b
    ccf
    rra
    add hl, sp
    ld d, $b1
    nop
    dec h
    nop
    ccf
    rra
    cp a
    rra
    cp a
    ld d, $ab
    inc b
    rst $38
    ld c, a
    ld sp, $ab1e
    inc b
    dec h
    nop
    add hl, sp
    ld d, $ff
    ld c, a
    ld sp, $251e
    nop
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_68d7

jr_003_68d7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub e
    ld bc, $00a9
    nop
    nop
    nop
    nop
    ld e, $00
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    or c
    nop
    dec h
    nop
    ld bc, $0000
    nop
    rst $38
    ld c, a
    ld sp, $ab1e
    inc b
    ld bc, $3f00
    rra
    add hl, sp
    ld d, $ab
    inc b
    cp a
    ld d, $ff
    ld a, a
    rst $38
    ld c, a
    ld sp, $ab1e
    inc b
    ccf
    rra
    add hl, sp
    ld d, $b1
    nop
    ld bc, $3f00
    rra
    cp a
    rra
    cp a
    ld d, $ab
    inc b
    rst $38
    ld c, a
    ld sp, $ab1e
    inc b
    nop
    nop
    add hl, sp
    ld d, $ff
    ld c, a
    ld sp, $011e
    nop
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_6957

jr_003_6957:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    ld [de], a
    ld bc, $01e9
    ldh [$08], a
    nop
    nop
    ld sp, hl
    ld [hl-], a
    or l
    ld [bc], a
    jp hl


    ld bc, $0000
    ld sp, hl
    ld [bc], a
    or l
    ld [bc], a
    ld c, h
    ld h, $12
    ld bc, $0112
    or l
    ld e, $e9
    ld bc, $08e3
    ld [de], a
    ld bc, $02b5
    jp hl


    ld bc, $08e0
    or l
    ld e, $4c
    ld h, $e9
    ld bc, $2af9
    ld a, c
    ld [bc], a
    ld [de], a
    nop
    ld [de], a
    ld bc, $1eb5
    or l
    ld [bc], a
    ld [de], a
    ld bc, $0012
    nop
    nop
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sub h
    ld [bc], a
    rst $28
    ld bc, $0000
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    ld e, $00
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    ld h, l
    ld [$14ea], sp
    ld [hl], b
    dec h
    nop
    nop
    rst $38
    ld a, a
    ld d, d
    ld a, [hl-]
    ld [$0015], sp
    nop
    rst $38
    ld a, a
    ld d, d
    ld a, [hl-]
    ld [$1f15], sp
    db $10
    ld d, d
    ld b, $d8
    nop
    rra
    db $10
    inc l
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld d, d
    ld a, [hl-]
    nop
    nop
    ld b, $16
    ret c

    nop
    inc l
    nop
    nop
    nop
    inc l
    nop
    ld [$6514], a
    ld [$0000], sp
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld d, d
    ld a, [hl-]
    ld h, l
    ld [$0000], sp
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_6a57

jr_003_6a57:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    ccf
    ld c, $58
    ld bc, $006a
    nop
    nop
    rst $38
    ld a, a
    ccf
    ld c, $6a
    nop
    nop
    nop
    ld e, b
    ld bc, $0e3f
    rra
    dec de
    nop
    nop
    ld l, d
    nop
    ld e, b
    ld bc, $63f8
    nop
    nop
    rst $38
    inc bc
    rst $38
    ld a, a
    ld e, b
    ld bc, $0000
    rst $38
    ld a, a
    ccf
    ld c, $58
    ld bc, $006a
    rst $38
    inc bc
    ld e, b
    ld bc, $1b1f
    nop
    nop
    rst $38
    inc bc
    ccf
    ld c, $58
    ld bc, $0000
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_6ad7

jr_003_6ad7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub e
    ld bc, $00a9
    nop
    nop
    nop
    nop
    ld e, $00
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    or c
    nop
    dec h
    nop
    ld bc, $0000
    nop
    rst $38
    ld c, a
    ld sp, $ab1e
    inc b
    ld bc, $3f00
    rra
    add hl, sp
    ld d, $ab
    inc b
    cp a
    ld d, $ff
    ld a, a
    rst $38
    ld c, a
    ld sp, $001e
    nop
    ccf
    rra
    add hl, sp
    ld d, $b1
    nop
    ld bc, $3f00
    rra
    cp a
    rra
    cp a
    ld d, $ab
    inc b
    rst $38
    ld c, a
    ld sp, $ab1e
    inc b
    nop
    nop
    add hl, sp
    ld d, $ff
    ld c, a
    ld sp, $011e
    nop
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_6b57

jr_003_6b57:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    ld hl, sp+$42
    ld [hl], h
    ld [hl], $4d
    ld hl, $1087
    sbc a
    ld e, e
    ld hl, sp+$42
    ld [hl], h
    ld [hl], $4d
    ld hl, $3674
    ld c, l
    ld hl, $10b1
    add a
    db $10
    db $db
    dec d
    ld [hl], h
    add hl, de
    or c
    db $10
    add a
    db $10
    rst $18
    ld h, $bf
    add hl, de
    ld [hl], h
    add hl, de
    or c
    db $10
    rst $18
    dec h
    ld a, [hl]
    add hl, de
    cp l
    ld a, [hl-]
    ld [hl], h
    add hl, de
    ld hl, sp+$42
    ld c, l
    ld hl, $1974
    or c
    db $10
    ld [hl], h
    add hl, de
    ld hl, sp+$42
    or c
    db $10
    add a
    stop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_6bd7

jr_003_6bd7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    ld l, a
    nop
    rst $28
    dec a
    inc hl
    dec c
    nop
    nop
    rst $38
    ld a, a
    ld [hl], l
    ccf
    ld l, a
    nop
    nop
    nop
    rst $38
    ld a, a
    ld [hl], l
    ccf
    inc hl
    dec c
    nop
    nop
    ld [hl], l
    ccf
    ei
    dec c
    ld l, a
    nop
    nop
    nop
    ld l, a
    nop
    rst $38
    ld a, a
    rst $28
    dec a
    nop
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    inc hl
    dec c
    nop
    nop
    ei
    dec c
    ld l, a
    nop
    inc hl
    dec c
    rst $28
    dec a
    rst $38
    ld a, a
    rra
    nop
    ld a, a
    inc bc
    nop
    nop
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_6c57

jr_003_6c57:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    dec hl
    dec bc
    adc d
    ld [bc], a
    push hl
    ld bc, $0102
    ld e, e
    ld e, $ed
    nop
    ld h, a
    nop
    nop
    nop
    and $01
    add h
    dec b
    ld [bc], a
    ld bc, $0081
    dec hl
    dec bc
    adc d
    ld [de], a
    add sp, $09
    add l
    ld bc, $0067
    adc c
    ld [de], a
    add c
    nop
    nop
    nop
    jr @+$05

    dec hl
    dec bc
    add sp, $09
    add c
    nop
    jr jr_003_6cb5

    dec hl
    dec bc
    adc d

jr_003_6cb5:
    ld [bc], a
    add c
    nop
    ld h, d
    ld bc, $0067
    add c
    nop
    nop
    nop
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_6cd7

jr_003_6cd7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    ld h, l
    add hl, sp
    jp nz, $2d28

    ld de, $0087
    ld l, l
    ld h, d
    ld h, l
    add hl, sp
    jp nz, RST_28

    nop
    ld a, b
    ld [hl], e
    ld l, l
    ld h, d
    ld h, l
    add hl, sp
    jp nz, Jump_000_1328

    ld [hl], $2d
    ld de, $0087
    nop
    nop
    rst $38
    rlca
    ld l, l
    ld h, d
    inc de
    ld [hl], $87
    nop
    ld h, l
    add hl, sp
    jp nz, $2d28

    ld de, $0000
    ld h, l
    add hl, sp
    jp nz, Jump_000_1328

    ld [hl], $00
    nop
    ld a, b
    ld [hl], e
    ld l, l
    ld h, d
    inc de
    ld [hl], $87
    nop
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_6d57

jr_003_6d57:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    rrca
    nop
    ld a, [hl]
    ld [bc], a
    rst $10
    ld c, [hl]
    nop
    nop
    rst $10
    ld c, [hl]
    add hl, hl
    dec e
    rlca
    nop
    nop
    nop
    ld a, [hl]
    ld [bc], a
    rst $10
    ld c, [hl]
    add hl, hl
    dec e
    nop
    nop
    ld a, [hl]
    ld [bc], a
    rst $10
    ld c, [hl]
    rlca
    nop
    nop
    nop
    rst $18
    nop
    rrca
    nop
    add hl, hl
    dec e
    nop
    nop
    rst $18
    nop
    rrca
    nop
    rst $10
    ld c, [hl]
    nop
    nop
    rrca
    nop
    rst $10
    ld c, [hl]
    add hl, hl
    dec e
    nop
    nop
    add hl, hl
    dec e
    rrca
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_6dd7

jr_003_6dd7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    ld e, d
    ld l, e
    ld sp, $0846
    ld hl, $0421
    db $dd
    ld c, [hl]
    ld d, h
    add hl, de
    xor h
    inc b
    ld hl, $dd04
    ld c, [hl]
    ld d, h
    add hl, de
    xor h
    inc b
    ld [$dd21], sp
    ld c, [hl]
    ld d, h
    add hl, de
    ld [$2121], sp
    inc b
    rst $38
    ld a, a
    ld e, d
    ld l, e
    db $dd
    ld c, [hl]
    ld d, h
    add hl, de
    rst $38
    ld a, a
    ccf
    inc b
    ld e, d
    ld l, e
    ld [$ff21], sp
    ld a, a
    ld e, d
    ld l, e
    ld sp, $0846
    ld hl, $7c21
    ld hl, $217c
    ld a, h
    ld hl, $007c
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_6e57

jr_003_6e57:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    add hl, hl
    add hl, de
    add $0c
    ld b, d
    ld [$0000], sp
    rst $38
    ld a, a
    xor l
    add hl, hl
    add hl, hl
    add hl, de
    nop
    nop
    xor l
    add hl, hl
    add hl, hl
    add hl, de
    add $0c
    nop
    nop
    add $0c
    add h
    db $10
    ld b, d
    ld [$0000], sp
    ld d, d
    ld c, d
    xor l
    add hl, hl
    add hl, hl
    add hl, de
    ld b, d
    ld [$7fff], sp
    sbc a
    ld bc, $4a52
    xor l
    add hl, hl
    sbc a
    ld bc, $00b2
    xor l
    add hl, hl
    add hl, hl
    add hl, de
    xor l
    add hl, hl
    add hl, hl
    add hl, de
    or d
    nop
    nop
    nop
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_6ed7

jr_003_6ed7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    cpl
    ld l, a
    ld l, c
    ld d, [hl]
    push bc
    ld b, c
    nop
    inc d
    rst $38
    ld a, a
    cpl
    ld l, a
    ld l, c
    ld d, [hl]
    nop
    inc d
    cpl
    ld l, a
    ld l, c
    ld d, [hl]
    ld l, $00
    nop
    inc d
    ld l, c
    ld d, [hl]
    push bc
    ld b, c
    add d
    ld c, b
    nop
    inc d
    cpl
    ld l, a
    push bc
    ld b, c
    add d
    ld c, b
    nop
    inc d
    push bc
    ld b, c
    add d
    ld c, b
    ld l, $00
    nop
    inc d
    cpl
    ld l, a
    ld l, c
    ld d, [hl]
    add d
    ld c, b
    nop
    inc d
    rst $38
    ld a, a
    cpl
    ld l, a
    ld l, c
    ld d, [hl]
    push bc
    ld b, c
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_6f57

jr_003_6f57:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    dec bc
    ld e, d
    xor d
    ld [$30c3], sp
    dec b
    nop
    dec bc
    ld e, d
    ld h, h
    ld c, c
    jp RST_30


    inc d
    dec bc
    ld e, d
    xor d
    ld [$0005], sp
    nop
    inc d
    ld h, h
    ld c, c
    jp $0530


    nop
    nop
    inc d
    ld h, h
    ld c, c
    jp $aa30


    ld [$0005], sp
    dec bc
    ld e, d
    jp $5f30


    inc bc
    nop
    inc d
    rra
    nop
    dec bc
    ld e, d
    jp RST_30


    inc d
    ld h, h
    ld c, c
    jp $5f30


    inc bc
    nop
    inc d
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_6fd7

jr_003_6fd7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    rst $38
    ld a, a
    ld [hl], e
    ld e, a
    ld [$2242], a
    ld de, $7fff
    ld [hl], e
    ld e, a
    ld [$0042], a
    nop
    or l
    ld [bc], a
    nop
    ld b, b
    ld [hl+], a
    ld de, $0000
    ld [hl], e
    ld e, a
    ld [$2242], a
    ld de, $0000
    rst $38
    ld a, a
    ld [hl], e
    ld e, a
    ld [hl+], a
    ld de, $0000
    ld [hl+], a
    ld de, $475a
    inc de
    ld d, $00
    nop
    ld [$5a42], a
    ld b, a
    inc de
    ld d, $00
    nop
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_7057

jr_003_7057:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    ld [hl-], a
    ld c, [hl]
    ld [$e52b], a
    dec d
    nop
    nop
    rst $38
    ld a, a
    ld [hl-], a
    ld c, [hl]
    ld [$0025], sp
    nop
    jp hl


    inc c
    ld [hl-], a
    ld c, [hl]
    ld [$0025], sp
    nop
    rst $38
    ld a, a
    ld [$e52b], a
    dec d
    nop
    nop
    ld [$ff25], sp
    ld l, e
    jp hl


    inc c
    nop
    nop
    ld [$322b], a
    ld c, [hl]
    ld [$0025], sp
    nop
    ld [hl-], a
    ld c, [hl]
    push hl
    dec d
    jp hl


    inc c
    nop
    nop
    ld [$e525], sp
    dec d
    jp hl


    inc c
    nop
    nop
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_70d7

jr_003_70d7:
    nop
    nop
    nop
    add hl, sp
    ld h, a
    xor l
    dec [hl]
    nop
    nop
    nop
    nop
    sub e
    ld bc, $00a9
    nop
    nop
    nop
    nop
    ld e, $00
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    rra
    nop
    rra
    nop
    adc b
    dec a
    call nz, Call_000_132c
    ld [hl], e
    adc b
    dec a
    call nz, Call_000_002c
    inc d
    inc de
    ld [hl], e
    rra
    nop
    rra
    nop
    nop
    inc d
    rra
    nop
    inc de
    ld [hl], e
    adc b
    dec a
    nop
    inc d
    rst $38
    inc bc
    rst $38
    ld a, a
    inc de
    ld [hl], e
    nop
    inc d
    rst $38
    inc bc
    inc de
    ld [hl], e
    adc b
    dec a
    nop
    inc d
    ld h, b
    ld d, $1f
    nop
    inc de
    ld [hl], e
    nop
    inc d
    inc de
    ld [hl], e
    adc b
    dec a
    rra
    nop
    nop
    inc d
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_7157

jr_003_7157:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    dec c
    nop
    ld a, [de]
    ccf
    adc l
    dec e
    nop
    nop
    rst $38
    ld l, e
    ld a, [de]
    ccf
    adc l
    dec e
    nop
    nop
    rst $38
    ld a, a
    xor [hl]
    dec l
    adc l
    dec e
    nop
    nop
    dec c
    nop
    ccf
    ld a, [bc]
    xor [hl]
    dec l
    adc l
    dec e
    rst $38
    ld a, a
    xor [hl]
    dec l
    rst $38
    ld l, e
    ld a, [de]
    ccf
    rst $38
    inc de
    ccf
    ld a, [bc]
    ld a, [de]
    ccf
    dec c
    nop
    ld a, [de]
    ccf
    ccf
    ld a, [bc]
    dec c
    nop
    nop
    nop
    rst $38
    inc de
    ccf
    ld a, [bc]
    rst $38
    ld a, a
    xor [hl]
    dec l
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_71d7

jr_003_71d7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    ld d, l
    ld [hl-], a
    ld sp, $8c3a
    add hl, hl
    ld h, [hl]
    inc b
    rst $18
    ld [hl], e
    ld sp, $8c3a
    add hl, hl
    nop
    nop
    rst $18
    ld [hl], e
    rra
    nop
    ld sp, $8c3a
    add hl, hl
    rst $18
    ld [hl], e
    dec b
    ld a, h
    ld sp, $8c3a
    add hl, hl
    rst $18
    ld [hl], e
    db $ec
    add hl, hl
    ld d, l
    ld [hl-], a
    ld h, [hl]
    inc b
    ld d, l
    ld [hl-], a
    db $d3
    ld a, $ec
    add hl, hl
    rst $18
    ld [hl], e
    ld sp, $8c3a
    add hl, hl
    ld h, [hl]
    inc b
    nop
    nop
    rst $18
    ld [hl], e
    db $d3
    ld a, $ec
    add hl, hl
    ld h, [hl]
    inc b
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_7257

jr_003_7257:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, d
    ld b, b
    dec l
    ld h, b
    stop
    nop
    ld e, $00
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    ld [hl], h
    ld [hl], e

jr_003_7282:
    add [hl]
    add hl, sp
    call nz, RST_18
    nop
    rst $38
    ld a, a
    ld [hl], h
    ld [hl], e
    add [hl]
    add hl, sp
    nop
    nop
    cp a
    add hl, bc
    add [hl]
    add hl, sp
    sub $00
    nop
    nop
    rst $38
    ld a, a
    ld [hl], h
    ld [hl], e
    add [hl]
    add hl, sp
    call nz, $c418
    jr jr_003_7282

    db $10
    cp a
    add hl, bc
    nop
    nop
    rst $38
    ld a, a
    add [hl]
    add hl, sp
    call nz, RST_18
    nop
    rst $38
    ld a, a
    rst $18
    db $10
    add [hl]
    add hl, sp
    call nz, $8618
    add hl, sp
    call nz, $d618
    nop
    nop
    nop
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_72d7

jr_003_72d7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    rra
    nop
    ld [hl], b
    ld e, d
    add hl, hl
    dec [hl]
    ld b, d
    inc e
    ld sp, hl
    ld a, a
    ld [hl], b
    ld e, d
    add hl, hl
    dec [hl]
    ld b, d
    inc e
    rst $38
    rla
    ld sp, hl
    ld a, a
    ld [hl], b
    ld e, d
    ld b, d
    inc e
    rst $38
    rla
    ld sp, hl
    ld a, a
    ld [hl], b
    ld e, d
    add hl, hl
    dec [hl]
    rst $38
    ld a, a
    ld sp, hl
    ld a, a
    add hl, hl
    dec [hl]
    ld b, d
    inc e
    rra
    nop
    rst $38
    rla
    ld [hl], b
    ld e, d
    ld b, d
    inc e
    rst $38
    ld a, a
    ld [hl], b
    ld e, d
    add hl, hl
    dec [hl]
    ld b, d
    inc e
    rst $38
    ld a, a
    ld sp, hl
    ld a, a
    ld [hl], b
    ld e, d
    add hl, hl
    dec [hl]
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_7357

jr_003_7357:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    ld e, d
    inc bc
    ld [de], a
    ld [hl-], a
    adc l
    dec h
    add hl, bc
    add hl, de
    adc l
    dec h
    add hl, bc
    add hl, de
    ld h, h
    ld [$0000], sp
    ld [de], a
    ld [hl-], a
    adc l
    dec h
    add hl, bc
    add hl, de
    nop
    nop
    ld e, d
    inc bc
    adc l
    dec h
    add hl, bc
    add hl, de
    nop
    nop
    ld e, d
    inc bc
    ld [de], a
    ld [hl-], a
    adc l
    dec h
    nop
    nop
    adc c
    ld a, h
    adc c
    ld a, h
    adc c
    ld a, h
    adc c
    ld a, h
    adc c
    ld a, h
    adc c
    ld a, h
    adc c
    ld a, h
    adc c
    ld a, h
    adc c
    ld a, h
    adc c
    ld a, h
    adc c
    ld a, h
    adc c
    ld a, h
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_73d7

jr_003_73d7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    or [hl]
    ld c, [hl]
    adc $31
    add $18
    nop
    nop
    sbc [hl]
    ld l, a
    or [hl]
    ld c, [hl]
    adc $31
    nop
    nop
    adc $31
    add $18
    ld d, c
    ld c, d
    nop
    nop
    jp z, Jump_003_4618

    ld [$4a51], sp
    add $18
    adc $31
    jp z, $eb18

    inc c
    ld b, [hl]
    ld [$18c6], sp
    jp z, $eb18

    inc c
    ld b, [hl]
    ld [$4a51], sp
    db $eb
    inc c
    ld b, [hl]
    ld [$0000], sp
    add $18
    jp z, Jump_003_4618

    ld [$0000], sp
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_7457

jr_003_7457:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    rst $38
    dec hl
    ld e, a
    ld a, [bc]
    cp a
    nop
    dec b
    nop
    rst $38
    dec hl
    rst $38
    dec hl
    ld e, a
    ld a, [bc]
    dec b
    nop
    cp a
    ld de, $0a5f
    cp a
    nop
    dec b
    nop
    rst $38
    dec hl
    cp a
    ld de, $2bff
    cp a
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    dec hl
    ld e, a
    ld a, [bc]
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld e, a
    ld a, [bc]
    dec b
    nop
    cp a
    ld de, $2bff
    cp a
    nop
    dec b
    nop
    rst $38
    dec hl
    rst $38
    dec hl
    ld e, a
    ld a, [bc]
    cp a
    nop
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_74d7

jr_003_74d7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    rst $38
    dec de
    rst $18
    ld bc, $005f
    ld [bc], a
    nop
    rst $38
    dec de
    rst $38
    dec de
    rst $18
    ld bc, $0002
    ld e, a
    ld bc, $01df
    ld e, a
    nop
    ld [bc], a
    nop
    rst $38
    dec de
    ld e, a
    ld bc, $1bff
    ld e, a
    nop
    rst $38
    ld a, a
    cp a
    ld a, l
    rst $38
    dec de
    rst $18
    ld bc, $7fff
    cp a
    ld a, l
    rst $18
    ld bc, $0002
    ld e, a
    ld bc, $1bff
    ld e, a
    nop
    ld [bc], a
    nop
    rst $38
    dec de
    rst $38
    dec de
    rst $18
    ld bc, $005f
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_7557

jr_003_7557:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    cp c
    add hl, hl
    ld [hl-], a
    ld hl, $14ac
    and l
    inc d
    ccf
    ld [hl], $b9
    add hl, hl
    ld [hl-], a
    ld hl, $14ac
    adc [hl]
    ld sp, $252a
    rst $20
    inc e
    and l
    inc d
    ccf
    ld [hl], $b9
    add hl, hl
    adc [hl]
    ld sp, $252a
    cp c
    add hl, hl
    ld [hl-], a
    ld hl, $252a
    rst $20
    inc e
    rst $38
    inc bc
    adc [hl]
    ld sp, $252a
    and l
    inc d
    ld b, b
    ld l, e
    ccf
    inc sp
    ccf
    ld [hl], $8e
    ld sp, $03ff
    adc [hl]
    ld sp, $14ac
    and l
    inc d
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_75d7

jr_003_75d7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    dec [hl]
    ld a, [bc]
    inc sp
    ld [hl], $08
    add hl, de
    nop
    nop
    inc sp
    ld [hl], $4d
    dec h
    ld [$0019], sp
    nop
    dec [hl]
    ld a, [bc]
    ld c, l
    dec h
    inc sp
    ld [hl], $08
    add hl, de
    dec [hl]
    ld a, [bc]
    ld c, l
    dec h
    ld [$0019], sp
    nop
    rst $10
    ld c, d
    inc sp
    ld [hl], $35
    ld a, [bc]
    nop
    nop
    rst $10
    ld c, d
    ld c, l
    dec h
    ld [$0019], sp
    nop
    rst $10
    ld c, d
    inc sp
    ld [hl], $4d
    dec h
    nop
    nop
    dec [hl]
    ld a, [bc]
    inc sp
    ld [hl], $4d
    dec h
    nop
    nop
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_7657

jr_003_7657:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    or l
    ld l, c
    xor [hl]
    ld d, h
    ld a, [bc]
    ld b, h
    nop
    nop
    rst $38
    ld a, a
    or l
    ld l, c
    ld a, [bc]
    ld b, h
    nop
    nop
    ld a, [bc]
    ld b, h
    dec d
    nop
    ld c, $00
    nop
    nop
    rra
    nop
    rst $38
    ld a, a
    or l
    ld l, c
    ld a, [bc]
    ld b, h
    rst $38
    ld a, a
    or l
    ld l, c
    xor [hl]
    ld d, h
    ld a, [bc]
    ld b, h
    rst $38
    ld a, a
    or l
    ld l, c
    xor [hl]
    ld d, h
    nop
    nop
    or l
    ld l, c
    xor [hl]
    ld d, h
    ld a, [bc]
    ld b, h
    nop
    nop
    rst $38
    ld a, a
    rra
    nop
    or l
    ld l, c
    nop
    nop
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_76d7

jr_003_76d7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    db $e4
    scf
    ld hl, $6027
    ld a, [de]
    nop
    nop
    rst $38
    ld a, a
    add hl, hl
    ld l, l
    ld b, d
    ld b, b
    nop
    nop
    rst $38
    ld a, a
    ld hl, $6027
    ld a, [de]
    nop
    nop
    ld h, b
    ld a, [de]
    add hl, hl
    ld l, l
    ld b, d
    ld b, b
    nop
    nop
    rst $38
    ld a, a
    ld e, [hl]
    inc b
    ld b, d
    ld b, b
    nop
    nop
    ld h, b
    ld a, [de]
    ld e, [hl]
    inc b
    ld b, d
    ld b, b
    nop
    nop
    rst $38
    ld a, a
    db $e4
    scf
    ld hl, $6027
    ld a, [de]
    ld b, d
    ld b, b
    ld hl, $6027
    ld a, [de]
    nop
    nop
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_7757

jr_003_7757:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    db $e4
    scf
    ld hl, $6027
    ld a, [de]
    nop
    nop
    rst $38
    ld a, a
    add hl, hl
    ld l, l
    ld b, d
    ld b, b
    nop
    nop
    rst $38
    ld a, a
    ld hl, $6027
    ld a, [de]
    nop
    nop
    ld h, b
    ld a, [de]
    add hl, hl
    ld l, l
    ld b, d
    ld b, b
    nop
    nop
    rst $38
    ld a, a
    ld e, [hl]
    inc b
    ld b, d
    ld b, b
    nop
    nop
    ld h, b
    ld a, [de]
    ld e, [hl]
    inc b
    ld b, d
    ld b, b
    nop
    nop
    rst $38
    ld a, a
    db $e4
    scf
    ld hl, $6027
    ld a, [de]
    ld b, d
    ld b, b
    ld hl, $6027
    ld a, [de]
    nop
    nop
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_77d7

jr_003_77d7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    adc l
    nop
    xor [hl]
    ld de, $04c8
    ld h, [hl]
    nop
    rst $18
    ld b, e
    xor [hl]
    ld de, $04c8
    nop
    nop
    rst $18
    inc de
    sub $11
    ld h, [hl]
    nop
    nop
    nop
    rst $18
    ld b, e
    xor [hl]
    ld de, $0066
    nop
    nop
    rst $18
    ld b, e
    rst $18
    inc de
    sub $11
    ld h, [hl]
    nop
    sub $11
    ld h, [hl]
    nop
    ret z

    inc b
    nop
    nop
    sub $11
    xor [hl]
    ld de, $04c8
    ld h, [hl]
    nop
    xor [hl]
    ld de, $11d6
    adc l
    nop
    ld h, [hl]
    nop
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_7857

jr_003_7857:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    ld sp, hl
    dec h
    ld [hl], d
    ld de, $0ccd
    adc c
    inc c
    rst $38
    ld b, e
    ld sp, hl
    dec h
    ld [hl], d
    ld de, $0c63
    ld [hl], d
    ld de, $0ccd
    adc c
    inc c
    ld h, e
    inc c
    rst $38
    ld b, e
    ld sp, hl
    dec h
    ld d, h
    ld a, $09
    dec d
    call $890c
    inc c
    ld d, h
    ld a, $09
    dec d
    ei
    dec c
    dec [hl]
    dec c
    call $890c
    inc c
    rst $38
    ld b, e
    ld sp, hl
    dec h
    ld [hl], d
    ld de, $0c89
    ld d, h
    ld a, $09
    dec d
    adc c
    inc c
    ld h, e
    inc c
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_78d7

jr_003_78d7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    inc b
    nop
    ld l, e
    add hl, sp
    add $20
    nop
    nop
    sub $6e
    ld l, e
    add hl, sp
    add $20
    ld b, h
    ld [$32de], sp
    ld e, a
    ld bc, $0094
    adc b
    ld [$7fff], sp
    sbc $32
    ld l, e
    add hl, sp
    add $20
    sbc $32
    ld b, h
    ld [$0888], sp
    inc b
    nop
    ld l, e
    add hl, sp
    add $20
    ld b, h
    ld [$0004], sp
    rst $38
    ld a, a
    sbc $32
    ld b, h
    ld [$2165], sp
    sub $6e
    ld l, e
    add hl, sp
    add $20
    ld h, l
    ld hl, $0000
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_7957

jr_003_7957:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    call nc, $3111
    ld [hl-], a
    adc h
    dec d
    add a
    inc b
    sbc [hl]
    ld e, e
    call nc, $8c11
    dec d
    add a
    inc b
    add a
    inc b
    sbc d
    ld de, $0430
    ld hl, $9404
    ld a, [hl-]
    call nc, $3111
    ld [hl-], a
    add a
    inc b
    call nc, $9a11
    ld de, $0430
    add a
    inc b
    sbc [hl]
    ld e, e
    call nc, $9a11
    ld de, $0487
    call nc, $8c11
    dec d
    jr nc, @+$06

    add a
    inc b
    call nc, $8c11
    dec d
    sbc d
    ld de, $0487
    nop
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_79d7

jr_003_79d7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    rst $38
    ld [hl], e
    jr jr_003_7a5b

    ld de, $003a
    nop
    rst $38
    ld e, a
    add hl, de
    ld b, e
    rst $20
    db $10
    ld h, d
    db $10
    ld c, d
    add hl, hl
    rst $20
    db $10
    ld h, d
    stop
    nop
    rst $38
    ld [hl], e
    rst $20
    db $10
    ld l, l
    nop
    nop
    nop
    ld c, d
    add hl, hl
    nop
    nop
    ld l, l
    nop
    ld h, d
    db $10
    jr jr_003_7a81

    ld de, $4a3a
    add hl, hl
    ld h, d
    db $10
    ld c, d
    add hl, hl
    ld de, $e73a
    db $10
    ld h, d
    db $10
    add hl, de
    ld b, e
    rst $20
    db $10
    ld l, l
    nop
    ld de, $003a
    nop
    sbc h
    ld sp, $2550
    ld hl, $0004
    nop
    sbc h
    ld sp, $4140
    add h
    stop
    nop
    sbc $52
    and l
    jr c, jr_003_7a57

jr_003_7a57:
    nop
    nop
    nop
    nop

jr_003_7a5b:
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    sbc $7b
    sub h
    ld d, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $20
    add hl, de
    ld [hl], a
    ld d, a
    add b
    nop
    push de

jr_003_7a81:
    ld c, $00
    ld b, $20

Jump_003_7a85:
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [$c17c]
    cp $22
    jp z, Jump_003_7aa7

    cp $30
    jp z, Jump_003_7ac1

    cp $71
    jp z, Jump_003_7adb

    cp $63
    jp z, Jump_003_7af5

Jump_003_7aa0:
    ld a, [$c105]
    and $1f
    jr jr_003_7b16

Jump_003_7aa7:
    ld a, [$c4bf]
    or a
    jp nz, Jump_003_7aa0

    ld a, [$c105]
    and $1f
    push hl
    ld l, a
    srl a
    srl a
    ld h, a
    ld a, l
    sub h
    add $08
    pop hl
    jr jr_003_7b16

Jump_003_7ac1:
    ld a, [$c4c0]
    or a
    jp z, Jump_003_7aa0

    ld a, [$c105]
    and $1f
    push hl
    ld l, a
    srl a
    srl a
    ld h, a
    ld a, l
    sub h
    add $08
    pop hl
    jr jr_003_7b16

Jump_003_7adb:
    ld a, [$c4c1]
    or a
    jp nz, Jump_003_7aa0

    ld a, [$c105]
    and $1f
    push hl
    ld l, a
    srl a
    srl a
    ld h, a
    ld a, l
    sub h
    add $08
    pop hl
    jr jr_003_7b16

Jump_003_7af5:
    ld a, [$c4d6]
    or a
    jp z, Jump_003_7b03

    ld a, [$c4d6]
    or a
    jp nz, Jump_003_7aa0

Jump_003_7b03:
    ld a, [$c105]
    and $1f
    push hl
    ld l, a
    srl a
    srl a
    ld h, a
    ld a, l
    sub h
    add $08
    pop hl
    jr jr_003_7b16

jr_003_7b16:
    call Call_000_32ef
    call Call_000_328a
    ld a, c
    ldh [rBCPS], a
    ld a, e
    ldh [rBCPD], a
    inc c
    call Call_000_328a
    ld a, c
    ldh [rBCPS], a
    ld a, d
    ldh [rBCPD], a
    inc c
    dec b
    jp nz, Jump_003_7a85

    pop hl
    ld c, $00
    ld b, $20

jr_003_7b36:
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [$c105]
    and $1f
    call Call_000_32ef
    call Call_000_328a
    ld a, c
    ldh [rOCPS], a
    ld a, e
    ldh [rOCPD], a
    inc c
    call Call_000_328a
    ld a, c
    ldh [rOCPS], a
    ld a, d
    ldh [rOCPD], a
    inc c
    dec b
    jr nz, jr_003_7b36

    ret


    ld b, d
    ld b, c
    ld c, [hl]
    ld c, e
    inc sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_003_7c3d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
