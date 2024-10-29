SECTION "ROM Bank $03d", ROMX[$4000], BANK[$3d]

    ld a, b
    db $fd
    ld sp, hl
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    add b
    add c
    ret nz

    pop bc
    nop
    ld bc, $e1e0
    ldh [$e3], a
    ldh a, [$f3]
    ldh a, [$f3]
    ldh a, [$f2]
    ld [$bcfa], sp
    cp $dc
    cp $6f
    ld a, a
    add hl, de
    dec de
    rlca
    ccf
    ld l, d
    ld a, a
    ld [hl+], a
    ccf
    jr z, @+$39

    ld d, a
    ld e, a
    dec c
    rrca
    rrca
    rrca
    dec c
    rrca
    ld b, $07
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$e0]
    nop
    ldh [rP1], a
    ldh [rP1], a
    db $e4
    inc e
    inc e
    db $e4
    db $e4
    inc e
    inc b
    db $fc
    db $ec
    call c, $dcec
    db $ec
    call c, $dcac
    ld l, h
    call c, $dc2c
    jr z, @-$26

    jr z, @-$26

    ld hl, sp-$28
    jr c, @-$26

    jr c, @-$26

    jr c, @-$26

    jr c, @-$26

    ld a, b
    sbc b
    ld a, b
    sbc b
    ld a, b
    sbc b
    ld e, b
    cp b
    ld e, b
    cp b
    ld e, b
    cp b
    ld e, b
    cp b
    ld e, b
    cp b
    ld e, b
    cp b
    ld e, b
    cp b
    ld e, b
    cp b
    ld hl, sp-$48
    ld e, b
    cp b
    ld [hl], b
    or b
    ld [hl], b
    or b

jr_03d_40a6:
    ld [hl], b
    or b
    ld [hl], b
    or b

jr_03d_40aa:
    ld [hl], b
    or b

jr_03d_40ac:
    ld [hl], b
    or b
    ld [hl], b
    or b
    ld [hl], b
    or b
    ld [hl], b
    or b
    jr nc, jr_03d_40a6

    ld [hl], b
    or b
    jr nc, jr_03d_40aa

    jr nc, jr_03d_40ac

    or b
    ld [hl], b
    or b
    ld [hl], b
    or b
    ld [hl], b
    or b
    ld [hl], b
    or b
    ld [hl], b
    or b
    ld [hl], b
    or b
    ld [hl], b
    and b
    ld h, b
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a

Call_03d_40d4:
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    ld h, b
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ldh [rIE], a
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

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ld h, b
    ldh [rNR41], a
    ldh [$30], a
    ldh a, [rNR23]
    ld hl, sp+$08
    ld hl, sp+$4c
    cp h
    inc h
    call c, $fe06
    inc bc
    rst $38
    ld c, c
    or a
    ld l, c
    sub a
    ld h, d
    sbc l
    ld a, [c]
    call $d966
    ld l, $f1
    and e
    db $fc
    inc bc
    db $fc
    sub d
    db $ed
    adc b
    rst $30
    add sp, -$09
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$1f], a
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

jr_03d_4149:
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    ret nz

    ret nz

    ld h, b

jr_03d_4153:
    ldh [rNR41], a
    ldh [$b0], a
    ld [hl], b
    ret c

    jr c, jr_03d_4153

    jr jr_03d_4149

    inc e
    ld h, h
    sbc h
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
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
    nop
    inc b
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
    nop
    dec b
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
    ld b, $07
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    nop
    nop
    nop
    nop
    nop
    ld c, $02
    ld [bc], a
    ld [bc], a
    rrca
    db $10
    ld de, $0812
    inc de
    inc d
    dec d
    ld d, $17
    nop
    nop
    jr jr_03d_41cf

    ld [bc], a
    ld [bc], a

jr_03d_41cf:
    ld [bc], a
    add hl, de
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
    ld [bc], a
    ld [bc], a
    ld h, $27
    jr z, jr_03d_420c

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_03d_421a

    ld sp, $0232
    inc sp
    inc [hl]
    nop
    nop
    dec [hl]
    nop
    ld [hl], $00
    scf
    ld l, $2f
    jr c, jr_03d_422a

    ld sp, $3a39
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

jr_03d_420c:
    ld c, c
    ld c, d
    ld [bc], a
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    nop
    ld c, a
    nop
    nop
    nop
    nop
    nop

jr_03d_421a:
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03d_422a:
    nop
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, [hl]
    ld e, a
    ld [bc], a
    ld h, b
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
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld [bc], a
    ld [bc], a
    ld l, h
    ld l, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, e
    ld [bc], a
    ld [bc], a
    ld l, [hl]
    ld l, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, e
    ld [bc], a
    ld [bc], a
    ld [hl], b
    ld [hl], c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, e
    ld [bc], a
    ld [bc], a
    ld [hl], d
    ld [hl], e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, e
    ld [bc], a
    ld [bc], a
    ld [hl], h
    ld [hl], l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, e
    ld [bc], a
    ld [bc], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_03d_4305

jr_03d_4305:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0101
    nop
    nop
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    nop
    ld bc, $0301
    inc hl
    inc hl
    inc bc
    inc hl
    inc hl
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
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
    nop
    ld [bc], a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
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
    ldh a, [rP1]
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
    db $fc
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
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
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
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    db $fc
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
    db $fc
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
    jr nz, jr_03d_44fa

    nop
    nop
    nop
    nop
    nop
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
    rlca
    nop
    rrca
    nop

jr_03d_44fa:
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
    rra
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
    rrca
    nop
    rlca
    nop
    rrca
    ld [$080f], sp
    rlca
    nop
    inc bc
    nop
    rlca
    inc b
    rlca
    inc b
    ld bc, $0300
    ld [bc], a
    add e
    ld [bc], a
    add b
    nop
    pop bc
    ld bc, $01c1
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    db $fc
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
    cp $00
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $fc

jr_03d_4581:
    nop
    db $fc
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $fd
    ld bc, $01fd
    db $fd
    ld bc, $01fd
    db $fd
    ld bc, $01fd
    ld a, [$fa02]
    ld [bc], a
    ld a, [$fa02]
    ld [bc], a
    ld a, [$fa02]
    ld [bc], a
    ld a, [$fa02]
    ld [bc], a
    ld a, [$f602]
    ld b, $f6
    ld b, $f5
    inc b
    push af
    inc b
    push af
    inc b
    push af
    inc b
    push af
    inc b
    push af
    inc b
    db $ed
    inc c
    db $ed
    inc c
    db $ed
    inc c
    db $ed
    inc c
    db $ed
    inc c
    db $ed
    inc c
    ld l, l
    inc c
    ld l, h
    inc c
    sbc d
    sbc b
    sbc d
    sbc b
    sbc d
    sbc b
    ld e, d
    ld e, b
    ld e, d
    ld e, b
    ld e, d
    ld e, b
    ld a, [hl-]
    jr c, jr_03d_4627

    jr c, jr_03d_4629

    jr c, jr_03d_460b

    jr jr_03d_460d

    jr jr_03d_460f

    jr jr_03d_4581

    ld [$088a], sp
    jp nz, $c600

    nop
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc

jr_03d_460b:
    ld [bc], a
    db $fc

jr_03d_460d:
    ld [bc], a
    db $fc

jr_03d_460f:
    ld [bc], a
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$06
    ldh a, [$0e]
    ldh a, [$0e]
    ldh a, [$0e]
    ldh [rNR32], a
    ret nz

    inc a
    add b
    ld h, b
    nop

jr_03d_4627:
    nop
    nop

jr_03d_4629:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_03d_465a

    ld h, b
    ld h, b
    ld h, b
    ld h, b
    add b
    add b
    nop
    nop
    nop
    nop
    dec b
    dec b
    rlca
    rlca
    nop
    nop
    add hl, bc
    add hl, bc
    rrca
    rrca
    rrca
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
    add b

jr_03d_465a:
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

    rst $18
    ldh [$cf], a
    ldh a, [$81]
    cp $80
    rst $38
    add b
    rst $38
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
    inc bc
    nop
    nop
    nop
    nop
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
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$3f], a
    ret nz

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
    nop
    rst $38
    rst $38
    rst $38
    pop bc
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    pop bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop bc
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    pop bc
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld c, c
    ld c, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec l
    dec l
    ld e, l
    ld e, l
    inc e
    inc e
    nop
    nop
    nop
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
    rrca
    rrca
    nop
    nop
    rst $38
    rst $38
    sbc a
    sbc a
    rrca
    rrca
    ld a, $3e
    adc a
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
    db $fc
    inc bc
    ldh a, [rIF]
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
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
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
    rst $38
    rst $38
    cp e
    rst $38
    cp e
    rst $38
    cp e
    rst $38
    cp e
    rst $38
    cp e
    ei
    cp e
    rst $38
    cp e
    rst $38
    cp e
    rst $38
    inc h
    inc h
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, l
    ld b, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, b
    cp b
    cp b
    ld d, h
    ld d, h
    rst $00
    rst $38
    db $fc
    db $fc
    rst $38
    rst $38
    ccf
    ccf
    dec a
    dec a
    cp b
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
    ld hl, sp+$07
    ld sp, hl
    rlca
    pop af
    rrca
    pop hl
    rra
    db $e3
    rra
    jp $833f


    ld a, a
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    cp $0f
    cp $0f
    cp $1f
    cp $1d
    cp $1d
    cp $1d
    cp $3b
    db $fc

jr_03d_47ee:
    dec sp
    db $fc

jr_03d_47f0:
    ei
    db $fc

jr_03d_47f2:
    ei
    db $fc

jr_03d_47f4:
    di
    db $fc

jr_03d_47f6:
    di
    db $fc

jr_03d_47f8:
    db $e3
    db $fc

jr_03d_47fa:
    inc bc
    db $fc

jr_03d_47fc:
    inc bc
    db $fc

jr_03d_47fe:
    add a
    ld a, b

jr_03d_4800:
    rst $20
    jr @-$17

    jr @-$17

    jr jr_03d_47ee

    jr jr_03d_47f0

    jr jr_03d_47f2

    jr jr_03d_47f4

    jr jr_03d_47f6

    jr jr_03d_47f8

    jr jr_03d_47fa

    jr jr_03d_47fc

    jr jr_03d_47fe

    jr jr_03d_4800

    jr @-$17

    jr @-$17

    sbc b
    rst $20
    sbc b
    rst $20
    sbc b
    rst $20
    sbc b
    rst $20
    sbc b
    rst $20
    sbc b
    rst $20
    sbc b
    rst $20
    sbc b
    rst $20
    sbc b
    rst $20
    sbc b
    rst $20
    sbc b
    rst $20
    sbc b
    rst $20
    sbc b
    rst $20
    sbc b
    and a
    ret c

    and a
    ret c

    add a
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$7d
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
    add c
    cp $81
    cp $81
    cp $81
    cp $81
    cp $80
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld a, a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, l
    ld c, l
    nop
    nop
    nop
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
    cp a
    rst $38
    rst $00
    rst $00
    cp $fe
    rst $38
    rst $38
    add c
    add c
    nop
    nop
    inc e
    rst $38
    dec e
    cp $3b
    db $fc
    dec sp
    db $fc
    ccf
    ld hl, sp+$3f
    ld hl, sp+$7f
    ldh a, [$7f]
    ldh a, [$7f]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
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
    inc b
    rst $38
    inc [hl]
    rst $38
    inc l
    rst $08
    inc c
    rst $08
    inc b
    rst $08
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    inc b
    inc b
    rst $20
    rst $20
    ld sp, hl
    ld sp, hl
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_03d_494e

    rst $38
    rst $38
    or h
    or h
    rst $38
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    nop
    nop
    add c
    add c
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld hl, sp+$07
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_03d_494e:
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
    nop
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
    jr c, jr_03d_49a6

    ret z

    ret z

    ret nc

    ret nc

    ld [c], a
    ld [c], a
    sbc c
    sbc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [hl+], a
    ld [hl+], a
    jp $f1c3


    pop af
    db $fc
    db $fc
    ld hl, sp-$08
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_03d_49a6:
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
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
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    add b
    ld a, a
    ld hl, sp-$01
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
    jr nz, jr_03d_4a04

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc b
    inc b
    ld bc, $8301
    add e

jr_03d_4a04:
    ldh [$e0], a
    jr nz, jr_03d_4a28

    nop
    nop
    cp h
    cp h
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
    ret nz

    ccf
    ret nz

    ccf

jr_03d_4a28:
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
    ldh [$1f], a
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
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
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
    ld b, b
    ld b, b
    pop bc
    pop bc
    rst $38
    rst $38
    ld a, [$13ff]
    inc de
    ld [hl], c
    ld [hl], c
    nop
    nop
    ld d, b
    ld d, b
    cp d
    cp d
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
    ld [$1c08], sp
    inc e
    inc bc
    inc bc
    cp a
    rst $38
    ld [hl], e
    di
    add c
    add c
    inc bc
    inc bc
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
    ld b, b
    ld b, b
    ei
    ei
    rst $30
    rst $38
    sub a
    sub a
    rst $38
    rst $38
    rst $00
    rst $00
    pop bc
    pop bc
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
    ld a, l
    ld a, l
    rlca
    rlca
    rst $38
    rst $38
    add sp, -$18
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, $1f
    nop
    nop
    nop
    nop
    jr nz, jr_03d_4b40

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    rlca
    rlca
    cp b
    rst $38
    di
    di
    rra
    rra
    cp $ff
    cpl
    rst $38
    inc a
    db $fc
    ld a, $3e
    rlca
    rlca
    nop
    nop

jr_03d_4b40:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc $ce
    ld a, a
    ld a, a
    rst $38
    rst $38
    ret nz

    ret nz

    ld a, [c]
    ld a, [c]
    add a
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    inc bc
    inc bc
    nop
    nop
    add d
    add d
    nop
    nop
    ld bc, $0002
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
    inc b
    nop
    nop
    nop
    dec b
    ld b, $07
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr jr_03d_4ba7

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    nop
    inc h
    dec h
    ld h, $27
    jr z, jr_03d_4bc8

    ld a, [hl+]
    nop
    nop
    dec hl
    nop
    nop
    nop
    nop

jr_03d_4ba7:
    nop
    nop
    inc l
    dec l
    ld l, $2f
    jr nc, jr_03d_4be0

    ld [hl-], a
    nop
    nop
    inc sp
    nop
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_03d_4bf3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $00
    nop
    nop
    ccf
    nop
    ld b, b
    ld b, c
    ld b, d
    ld b, e

jr_03d_4bc8:
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    nop
    nop
    nop
    nop
    ld c, c
    ld c, d
    nop
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    nop
    nop
    nop

jr_03d_4be0:
    nop
    ld d, h
    ld d, l
    nop
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld c, a
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    nop
    nop
    ld e, [hl]
    nop
    ld e, a
    ld h, b

jr_03d_4bf3:
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
    nop
    ld l, d
    ld l, e
    nop
    ld l, h
    ld l, l
    nop
    ld l, [hl]
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    nop
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, b
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
    nop
    nop
    nop
    nop
    nop
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    nop
    adc l
    nop
    nop
    nop
    nop
    nop
    nop
    adc [hl]
    add [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    nop
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
    nop
    nop
    nop
    and h
    and l
    nop
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
    nop
    and h
    or b
    or c
    or d
    or e
    or h
    ld b, $b5
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
    nop
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    nop
    nop
    jp z, $cccb

    call $cfce
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0101
    ld bc, $0101
    inc b
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0001
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
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld bc, $0000
    nop
    nop
    nop
    dec b
    dec b
    dec b
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    dec b
    dec b
    dec b
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    dec b
    dec b
    dec b
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0101
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
    ld [bc], a
    ld [bc], a
    inc b
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
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    ld bc, $0404
    inc b
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
    nop
    ld [bc], a
    ld [bc], a
    inc b
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
    nop
    nop
    ld [bc], a
    inc b
    inc bc
    ld bc, $0001
    nop
    ld bc, $0001
    ld bc, $0204
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
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
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc b
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0441
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
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
    inc b
    ld bc, $0101
    ld bc, $0101
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ret nz

    ccf
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
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
    rst $38
    nop
    nop
    rlca
    dec d
    rra
    jr nz, jr_03d_4e95

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
    ldh [$e0], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $18
    rst $38
    rst $38
    cpl
    cpl
    rrca
    rrca
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
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
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
    nop
    nop
    ld bc, $0103
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0003
    rlca
    nop
    rra
    rst $00
    rst $00
    ld a, a
    ld a, a
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ei
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    ld a, a
    ld a, a
    ld c, $0f
    rra
    rra
    rra
    rra
    ld a, [hl-]
    ccf
    ld a, l
    ld a, a
    db $fc
    rst $38
    db $ec

jr_03d_4e95:
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ld [c], a
    rst $38
    rst $20
    rst $38
    ret nz

    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    pop af
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
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
    cp $00
    cp $00
    cp $00
    cp $00
    nop
    rst $38
    nop
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
    cp $81
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    pop bc
    ld a, $c1
    ld a, $c1
    ld a, $c1
    ld a, $c1
    ld a, $e1
    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld e, $f0
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
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
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    rlca
    ld bc, $0307
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
    ld [de], a
    rra
    xor a
    xor a
    rst $18
    rst $18
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    inc bc
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
    ld a, $3f
    ld a, $3f
    ld a, c
    ld a, a
    add sp, -$01
    ld sp, hl
    rst $38
    db $d3
    rst $38
    ld [c], a
    rst $38
    db $d3
    rst $38
    ld b, [hl]
    ei
    adc $fb
    sub a
    di
    inc l
    add sp, $04
    ret nz

    ld b, h
    ret nz

    add h
    add b
    db $e4
    ldh [$d7], a
    di
    rra
    ei
    dec d
    di
    inc b
    di
    inc [hl]
    di
    rst $38
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
    rrca
    nop
    rrca
    nop
    rra
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
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rlca
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
    ld b, d
    ld b, d
    nop
    nop
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $bfbf
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ld a, $3f
    cp $ff
    db $fc
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    jp nc, $e7fe

    rst $38
    rst $20
    rst $38
    ld c, a
    rst $30
    xor a
    rst $30
    rra
    rst $30
    cpl
    rst $20
    cpl
    rst $20
    ld l, a
    rst $20
    sbc b
    sub b
    ld [$4800], sp
    ld b, b
    ld hl, sp-$10
    cp $f6
    rrca
    rst $20
    adc c
    rst $20
    inc c
    rst $20
    adc b
    rst $20
    db $ec
    rst $20
    rrca
    rlca
    ld [$0800], sp
    nop
    ld [$1c00], sp
    inc d
    rst $38
    rst $30
    call c, $dcd7
    rst $10
    xor b
    rst $20
    rst $38
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
    ldh a, [rIE]
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    ld c, $0f
    cp [hl]
    cp a
    cp h
    cp a
    ld sp, hl
    cp $f9
    cp $f3
    cp $ed
    db $fc
    pop hl
    ld hl, sp-$31
    cp $bf
    cp $83
    ld [c], a
    inc hl
    jp nz, $c021

    ld l, l
    call z, $9ebf
    ld a, a
    sbc $bf
    sbc [hl]
    ld h, c
    ld b, b
    or c
    sub b
    pop af
    ret nc

    pop af
    ret nc

    cp e
    sbc d
    push af
    call c, $9eb7
    ld [hl], c
    sbc $b1
    sbc [hl]
    ld l, a
    ld c, [hl]
    ld sp, $2510
    dec b
    ld l, c
    ld c, c
    ld a, b
    ld e, b
    ld [hl], l
    ld e, a
    or b
    sbc a
    ldh a, [$df]
    inc hl
    rst $18
    cpl
    rst $18
    ei
    db $db
    adc d
    rst $38
    db $e4
    rst $38
    db $ec
    cp $f0
    cp $e0
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp-$01
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    rst $18
    rra
    ret nc

    db $10
    ret nc

    db $10
    ret nc

    db $10
    ret nc

    db $10
    ret nc

    db $10
    ret nc

    db $10
    ret nc

    db $10
    ret nc

    db $10
    ret nc

    db $10
    ret nc

    ld de, $10d0
    ret nc

    db $10
    ret nc

    db $10
    ret nc

    db $10
    ret nc

    db $10
    add sp, $08
    add sp, $08
    add sp, $08
    add sp, $08
    add sp, $08
    add sp, $08
    add sp, $08
    add sp, $09
    add sp, $09
    add sp, $08
    add sp, $08
    add sp, $08
    add sp, $08
    jp hl


    ld [$08e9], sp
    jp hl


    ld a, [bc]
    pop hl
    ld [bc], a
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    rst $28
    rra
    db $dd
    ccf
    cp h
    ld a, a
    ld a, l
    cp $7b
    cp $f7
    cp $eb
    ld a, [c]
    reti


    ld a, [c]
    ret


    ld a, [c]
    cp c
    ld a, [c]
    dec c
    sub $59
    jp nc, $d259

    dec bc
    ld [bc], a
    ld c, e
    ld d, d
    ld sp, hl
    ld a, [c]
    add hl, hl
    ld [hl+], a
    dec de
    ld [de], a
    dec bc
    ld [bc], a
    sbc e
    sub d
    cp l
    or $de
    rst $10
    sbc b
    sub a
    rst $08
    rst $10
    rst $08
    rst $10
    xor $f7
    ei
    rst $30
    adc e
    rst $30
    db $eb
    rst $30
    cp h
    or h
    ld hl, sp-$08
    ld hl, sp-$08
    inc bc
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    cp $04
    cp $0c
    db $fc
    inc e
    db $fc
    ld a, b
    ld hl, sp-$08
    ld hl, sp-$10
    ldh a, [$f0]
    ldh a, [$60]
    ldh [rLCDC], a
    ldh [$c0], a
    ret nz

    add b
    ret nz

    nop
    add b
    nop
    add b
    ldh a, [rP1]
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    rrca
    rrca
    ldh a, [rIE]
    nop
    rrca
    nop
    ld a, $00
    ld e, $00
    ld e, e
    add b
    add c
    add b
    add e
    pop bc
    add $43
    ld e, h
    ld c, $30
    inc b
    nop
    or b
    or b
    ldh [$e0], a
    ret nz

    ldh [$80], a

jr_03d_5203:
    xor b
    add b
    ld [$e2ca], a
    ldh [$e0], a
    rlca
    ld a, b
    inc bc
    inc e
    push bc

jr_03d_520f:
    ld a, [bc]
    ld d, d
    db $10
    sub b
    sub b
    jp $cac3


    ret z

    ret nc

    ret nc

    ret nc

    ret nc

    ldh [$e0], a
    rst $38
    rst $38
    nop
    add b
    nop
    add b
    sbc a
    ld e, a
    add b
    ld b, b
    ccf
    ret nz

    nop
    rst $38
    nop
    rst $38
    nop
    add b
    ld a, $80
    ld a, $80
    cp [hl]
    nop
    cp [hl]
    nop
    cp [hl]
    nop
    add d
    nop
    add d
    nop
    add d
    nop
    add d
    nop
    add d
    nop
    add d
    nop
    add d
    nop
    add d
    nop
    cp d
    jr c, jr_03d_5203

    inc [hl]
    or d
    jr nc, jr_03d_520f

    inc a
    add d
    nop
    add [hl]
    inc b
    add d
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
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
    ldh [$80], a
    add b
    add b
    add b
    add b
    add b
    nop
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
    ld hl, sp+$00
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
    rst $38
    nop
    rst $38

jr_03d_528d:
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    ld bc, $1ffe
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [$7f]
    add b
    ccf
    ret nz

    ld a, a
    add b
    rst $38
    nop
    rst $18
    nop
    ret


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fd
    ret nz

    ld a, [bc]
    nop
    ld b, b
    nop
    nop
    nop
    dec c
    nop
    add hl, bc
    sub b
    inc b
    jr nz, jr_03d_528d

    call nz, Call_03d_6460
    ld b, b
    ld b, b
    ld [bc], a
    ld [bc], a
    ld bc, $ff01
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    dec b
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
    db $f4
    ldh a, [$fd]
    ld sp, hl
    db $fd
    ld sp, hl
    db $fd
    ld sp, hl
    ld a, l
    ld a, c
    inc c
    ld [$080c], sp
    db $ec
    db $ec
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
    rra
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
    cp $00
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
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
    nop
    add $39
    rst $38
    nop
    pop af
    ld c, $fe
    ld bc, $00e3
    jp Boot


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, $80
    inc b
    ret z

    add h
    ld [$0026], sp
    ldh a, [$0b]
    ld a, [c]
    nop
    inc b
    ldh a, [rP1]
    xor [hl]
    nop
    nop
    nop
    nop
    jp nc, $ebd2

    db $eb
    rst $38
    rst $38
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    ei
    di
    ret c

    ret nc

    ld hl, sp-$10
    ld sp, hl
    pop af
    ld a, c
    ld [hl], c
    jr jr_03d_53b8

    jr jr_03d_53ba

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

jr_03d_53b8:
    nop
    nop

jr_03d_53ba:
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03d_53e4:
    rlca
    nop
    rst $38
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
    rst $38
    rst $38
    ld bc, $fd81
    ld bc, $01fd
    db $fd
    ld bc, $01fd
    db $fd
    ld bc, $01fd
    db $fd
    ld bc, $01fd
    db $fd
    ld bc, $01fd
    pop bc
    dec a
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $f0ff
    ld c, $18
    and $70
    adc [hl]
    jr c, jr_03d_53e4

    ld a, b
    add [hl]
    ld b, e
    dec a
    and c
    rra
    ld sp, $0503
    inc bc
    ld h, c
    rra
    dec d
    dec hl
    ld b, c
    rst $28
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
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [rP1], a
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    ld d, a
    ld b, a
    rst $30
    rst $20
    db $f4
    db $e4
    ld a, [c]
    ld [c], a
    di
    db $e3
    ld sp, $1021
    nop
    ld hl, sp-$08
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
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld b, $ff
    inc c
    ei
    inc c
    ei
    inc c
    ei
    inc c
    rst $30
    jr jr_03d_54a2

    jr jr_03d_54a3

    jr jr_03d_54a5

    jr jr_03d_5497

jr_03d_5497:
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $ff00
    nop

jr_03d_54a2:
    rst $38

jr_03d_54a3:
    nop
    rst $38

jr_03d_54a5:
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
    ld a, a
    nop
    ld a, a
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
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    ccf
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
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rla
    nop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    or a
    and a
    ld [hl], a
    ld h, a
    rst $30
    rst $20
    rst $10
    rst $20
    ld d, e
    ld h, e
    jr nc, jr_03d_554a

    jr nc, jr_03d_554c

    cp $fe
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
    ld bc, $0000
    nop
    nop
    rst $38
    ldh a, [$8f]
    db $fc
    di
    ld c, $fd
    inc bc
    cp $01

jr_03d_554a:
    rst $38
    nop

jr_03d_554c:
    rst $38
    nop
    rst $38
    ld bc, $03ff
    cp $07
    ld a, l
    ld b, $7f
    inc c
    ei
    inc c
    ei
    inc c
    rst $30
    jr @-$07

    jr @+$08

    ei
    ld b, $fb
    ld b, $fb
    ld b, $fb
    ld b, $fb
    ld b, $fb
    ld b, $fb
    ld b, $fb
    ld b, $fb
    ld b, $fb
    ld b, $fb
    ld b, $fb
    ld a, a
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    ld b, $fb
    ld b, $fb
    ld b, $fb
    ld b, $fb
    ld b, $fb
    ld b, $fb
    ld b, $fb
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
    ld [bc], a
    ei
    ld [bc], a
    ei
    ld [bc], a
    ei
    rst $38
    ei
    ld c, $fb
    ld c, $fb
    ld c, $fb
    ld c, $fb
    ld c, $fb
    ld c, $fb
    rst $28
    ei
    ei
    db $eb
    ei
    db $eb
    ei
    db $eb
    ei
    db $eb
    ei
    db $eb
    ei
    db $eb
    ei
    db $eb
    ld a, [de]
    db $eb
    ld e, d
    db $eb
    ld a, [de]
    db $eb
    ld a, [de]
    db $eb
    ld a, [de]
    db $eb
    db $db
    db $eb
    db $db
    db $eb
    set 7, e
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
    ld [bc], a
    ei
    ld [bc], a
    ei
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    add d
    ld a, a
    ld [c], a
    cp a
    ld [hl], d
    rst $10
    ld a, [hl-]
    ld a, [$2fff]
    rst $38
    rst $00
    ccf
    ret nc

    ccf
    ret c

    ccf
    db $fc
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
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    ld d, b

jr_03d_565f:
    ld b, b
    rst $30
    rst $20
    or $e7
    sub a
    add a
    push af
    rst $20
    ld d, [hl]
    ld h, [hl]
    db $10
    jr nz, jr_03d_569d

    jr nz, jr_03d_565f

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
    nop
    rst $38
    nop
    rlca
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_03d_5686:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr jr_03d_5686

    inc e
    rst $20
    inc a
    rst $28
    inc [hl]
    db $db
    ld h, [hl]
    db $db
    ld h, [hl]
    db $db
    ld h, [hl]
    cp a
    rst $18
    and b

jr_03d_569d:
    rst $38
    pop bc
    di
    add c
    db $e3
    nop
    ldh [rNR41], a
    ldh a, [$60]
    ldh a, [$e0]
    ldh a, [$f0]
    ldh [$f8], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    rst $38
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    di
    db $e3
    di
    db $e3
    di
    db $e3
    rst $30
    rst $20
    scf
    daa
    ld [hl], b
    ld h, b
    stop
    stop
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
    inc bc
    ld bc, $0103
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
    ld a, a
    db $e3
    rra
    ld a, e
    rlca
    rra
    dec bc
    rlca
    dec e
    inc bc
    ld e, $03
    ld e, $03
    rra
    inc bc
    ccf
    inc bc
    rst $38
    inc bc
    rst $38
    nop
    rst $18
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
    nop
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [$cf]
    ld hl, sp-$39
    db $fc
    jp $c3fc


    cp $c1
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    cp $81
    cp $81
    db $fc
    add e
    ldh a, [$8f]
    ret nz

    cp a
    add b
    rst $38
    ld a, a
    nop
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    ld a, h
    inc bc
    cp $01
    ld bc, $ff00
    nop
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    call nc, Call_03d_40d4
    ld b, b
    ld e, b
    ld e, b
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
    ld b, [hl]
    ld b, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    jr c, jr_03d_57f0

    jr z, @+$22

    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    ld [$8800], sp
    add b
    ld hl, sp-$10
    jr jr_03d_57e6

    ld hl, sp-$10
    ei
    di
    add hl, de
    ld de, $1018
    jr jr_03d_57f0

    ld [$ff00], sp
    rst $38
    rst $38
    rst $38

jr_03d_57e6:
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

jr_03d_57f0:
    adc a
    rst $38
    db $76
    rst $38
    ld [hl], l
    rst $38
    ld [hl], l
    rst $38
    dec [hl]
    rst $38
    dec [hl]
    rst $38
    dec d
    rst $38
    dec d
    rst $38
    dec b
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
    ld bc, $0001
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
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    nop
    nop
    ld bc, $0100
    nop
    rst $38
    nop
    rst $38
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
    nop
    rlca
    nop
    rlca
    nop
    rla
    db $10
    rla
    db $10
    rlca
    nop
    rla
    db $10
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
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    ld [bc], a
    add a
    add d
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    inc bc
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
    inc b
    nop
    inc b
    nop
    ld c, h
    ld c, b
    ld a, h
    ld a, b
    db $fc
    ld hl, sp-$04
    ld hl, sp-$64
    sbc b
    inc b
    nop
    inc b
    nop
    inc b
    nop
    db $f4
    db $f4
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_03d_58ac:
    rst $38
    rst $38
    ccf
    ccf
    ldh a, [$f8]
    jr nc, jr_03d_58ac

    ret nc

    ld hl, sp-$30
    ld hl, sp-$30
    ld hl, sp-$30
    ld hl, sp-$30
    ld hl, sp-$30
    ld hl, sp-$30
    ld hl, sp-$30
    ld hl, sp+$30
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$28
    ld hl, sp-$18
    ld hl, sp-$18
    ld hl, sp-$18
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$10
    nop
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    pop bc
    nop
    pop bc
    nop
    add e
    nop
    add a
    nop
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$ef]
    ldh a, [$ef]
    ld hl, sp-$39
    ld hl, sp-$79
    ld hl, sp-$79
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
    rra
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
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    ld a, a
    nop
    ccf
    jr nz, jr_03d_5958

    ld [$0203], sp
    ld bc, $0300
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0300
    ld [bc], a

jr_03d_5958:
    inc bc
    ld [bc], a
    ld bc, $0100
    nop
    ld bc, $0300
    ld [bc], a

jr_03d_5962:
    add e
    add d

jr_03d_5964:
    rst $38
    cp $03
    ld [bc], a

jr_03d_5968:
    cpl
    ld l, $ff
    cp $43
    ld b, d
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a

jr_03d_5972:
    inc bc
    ld [bc], a

jr_03d_5974:
    cp $fe

jr_03d_5976:
    rst $38
    rst $38

jr_03d_5978:
    rst $38
    rst $38

jr_03d_597a:
    rst $38
    rst $38

jr_03d_597c:
    rst $38
    rst $38

jr_03d_597e:
    rst $38
    rst $38

jr_03d_5980:
    rst $18
    ccf

jr_03d_5982:
    rst $18
    jr nz, jr_03d_5964

    jr nz, @-$1f

    jr nz, jr_03d_5968

    jr nz, @-$1f

    jr nz, @-$1f

    jr nz, jr_03d_5962

    jr nz, jr_03d_5964

    jr nz, jr_03d_5972

    jr nz, jr_03d_5974

    jr nz, jr_03d_5976

    jr nz, jr_03d_5978

    jr nz, jr_03d_597a

    jr nz, jr_03d_597c

    jr nz, jr_03d_597e

    jr nz, jr_03d_5980

jr_03d_59a1:
    jr nz, jr_03d_5982

    jr nz, @-$1f

    jr nz, @-$1f

    jr nz, @-$1f

    jr nz, @-$1f

    jr nz, @-$1f

    jr nz, @-$1f

    jr nz, jr_03d_59a1

    nop
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    add c
    nop
    add c
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
    rra
    nop
    ccf
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    db $fc
    inc c
    ldh a, [rNR10]
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    add sp, $28
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    ld h, b
    jr nz, jr_03d_5a97

    jr nz, jr_03d_5a99

    jr nz, jr_03d_5a9b

    jr nz, jr_03d_5a9d

    jr nz, jr_03d_5a9f

    ld h, b
    nop
    nop
    nop
    nop
    jr nz, jr_03d_5a66

    jr nz, jr_03d_5a68

    ld b, b
    ld b, b
    jr nz, jr_03d_5a6c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_03d_5a8e

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03d_5a66:
    rst $38
    rst $38

jr_03d_5a68:
    rst $38
    rst $38
    rst $38
    rst $38

jr_03d_5a6c:
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
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
    ldh [rIE], a
    pop bc
    cp $c1
    cp $81
    cp $83
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc

jr_03d_5a8e:
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07

jr_03d_5a97:
    ld hl, sp+$07

jr_03d_5a99:
    ld hl, sp+$0f

jr_03d_5a9b:
    ldh a, [rIF]

jr_03d_5a9d:
    ldh a, [rIF]

jr_03d_5a9f:
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
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$e0], a
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    and b
    ld [hl], b
    ld b, b
    ldh a, [$c0]
    ldh a, [$80]
    ldh a, [$e0]
    ldh a, [$80]
    ldh a, [$e0]
    ldh a, [$80]
    ldh a, [$80]
    ldh a, [$a0]
    ldh a, [$a0]
    ldh a, [$60]
    ldh a, [$80]
    ldh a, [rNR41]
    ldh a, [rNR41]
    ldh a, [$80]
    ldh a, [$a0]
    ldh a, [rP1]
    ldh a, [rLCDC]
    ldh a, [$80]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [$a0], a
    ldh [$80], a
    ldh [$a0], a
    ldh [$80], a
    ldh [$a0], a
    ldh a, [$e0]
    ldh a, [rP1]
    cp $00
    cp $00
    cp $fe
    cp $e0
    and b
    ldh [$a0], a
    ldh [$a0], a
    ldh [$a0], a
    ldh [$a0], a
    ldh [$a0], a
    ldh [$a0], a
    ldh [$a0], a
    ldh [$a0], a
    ldh [$a0], a
    ldh [$a0], a
    ldh a, [$b0]
    add sp, -$48
    db $e4
    cp h
    ld [c], a
    cp [hl]
    ld [$eabe], a
    cp [hl]
    ld [c], a
    cp [hl]
    ld [$eabe], a
    cp [hl]
    ld [c], a
    cp [hl]
    ld [c], a
    cp [hl]
    ld [c], a
    cp [hl]
    ld a, [$febe]
    cp [hl]
    adc [hl]
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    ld e, $00
    ld c, $00
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr @+$1b

    nop
    nop
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1e
    ld e, $1e
    rra
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    nop
    ld h, $27
    jr z, jr_03d_5c16

    ld e, $1e
    ld e, $1e
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $00
    cpl
    jr nc, jr_03d_5c37

    ld [hl-], a
    inc sp
    inc sp
    inc [hl]
    ld e, $1e
    dec [hl]
    ld [hl], $37
    jr c, jr_03d_5c4a

    ld a, [hl-]
    dec sp
    inc a
    dec a
    dec a

jr_03d_5c16:
    dec a
    inc a
    ld a, $3f
    ld b, b
    ld b, c
    ld e, $42
    ld b, e
    ld b, h
    ld b, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, [hl]
    ld b, a
    ld c, b
    ld e, $1e
    ld e, $1e
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03d_5c37:
    nop
    nop
    nop
    nop
    ld c, c
    ld c, d
    ld c, e
    ld e, $1e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03d_5c4a:
    nop
    ld c, h
    ld c, l
    ld c, [hl]
    ld e, $1e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, a
    ld d, b
    ld e, $1e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    ld d, d
    ld e, $53
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
    ld d, l
    ld d, [hl]
    nop
    ld d, a
    ld e, $58
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, c
    ld e, d
    ld e, e
    nop
    nop
    ld d, d
    ld e, $1e
    dec sp
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, [hl]
    dec a
    ld e, a
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, a
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0202
    ld [bc], a
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
    ld bc, $0101
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
    nop
    nop
    nop
    nop
    ld bc, $0202
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0141
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0004
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    nop
    nop
    nop
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
    nop
    nop
    nop
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
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld hl, $0101
    ld bc, $2101
    ld bc, $0001
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
    nop
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
    rlca
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
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
    cp $00
    cp $00
    cp $00

jr_03d_5e26:
    cp $00
    cp $00
    cp $00
    cp $00
    db $fc
    ld bc, $01fc
    db $fc
    ld bc, $01fc
    db $fc
    ld bc, $01fc
    db $fc
    ld bc, $03f8
    ld hl, sp+$03
    ld hl, sp+$02
    ld hl, sp+$02
    ld hl, sp+$01
    ld hl, sp+$01
    ld hl, sp+$01
    ldh a, [rTIMA]
    ldh a, [rTIMA]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [$08], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a

jr_03d_5e60:
    jr c, @+$01

jr_03d_5e62:
    ccf
    rst $38

jr_03d_5e64:
    ccf
    rst $38
    ccf
    rst $38
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    cp a
    rst $28
    rst $38
    ret z

    rst $38
    ret nz

    or a
    ret nz

    and e
    ret nz

    and e
    ret nz

    scf
    ret nz

    ccf
    ret nz

    ccf
    rst $08
    jr nc, jr_03d_5e60

    jr nz, jr_03d_5e62

    jr nz, jr_03d_5e64

    jr nz, jr_03d_5e26

jr_03d_5e87:
    ld h, b
    rra

jr_03d_5e89:
    ldh [$1f], a

jr_03d_5e8b:
    ldh [$3f], a

jr_03d_5e8d:
    ret nz

    ccf

jr_03d_5e8f:
    ret nz

    ccf

jr_03d_5e91:
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

    rst $38
    nop
    rst $38
    nop
    ldh [$1f], a
    pop hl
    ld de, $17e7
    and $17
    db $e4
    rla
    and $17
    and $17
    and $17
    xor $1f
    xor $1f
    xor $1f
    xor $1f
    xor $1f
    xor $1f
    xor $1f
    xor $1f
    db $ec
    rra
    add sp, $1f
    add sp, $1f
    add sp, $1f
    add sp, $1f
    db $ec
    rra
    rst $28
    rra
    rst $28
    rra
    rst $20
    rla
    rst $20
    rla
    pop hl
    inc de
    pop hl
    inc de
    db $e3
    inc de
    pop hl
    inc de
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ret nc

    db $10
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    add b
    jr nz, jr_03d_5e87

    jr nz, jr_03d_5e89

    jr nz, jr_03d_5e8b

    jr nz, jr_03d_5e8d

    jr nz, jr_03d_5e8f

    jr nz, jr_03d_5e91

    jr nz, jr_03d_5f13

jr_03d_5f13:
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ldh [rP1], a
    ldh [rTMA], a
    add $05
    push bc
    rlca
    rst $00
    rrca
    rst $08
    rrca
    rst $08
    rrca
    rst $08
    rrca
    rst $08
    rrca
    rst $08
    rrca
    adc a
    dec e
    sbc l
    rra
    sbc a
    rra
    sbc a
    rra
    sbc a
    rra
    sbc a
    rra
    sbc a
    rra
    sbc a
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld e, $1e
    ld b, $06
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
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
    rst $38
    nop
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
    cp $01
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    db $fc
    db $fc
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
    db $fd
    rst $38
    db $fd
    rst $38
    cp l
    cp a
    db $fd
    rst $38
    cp l
    cp a
    cp l
    cp a
    db $fd
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    ld a, [hl]
    cp $fe
    inc sp
    inc sp
    ld [hl], d
    ld [hl], d
    ld a, [hl]
    ld a, [hl]
    jr nz, jr_03d_5fdc

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and b
    and b
    ret c

    ret c

    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38

jr_03d_5fdc:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp a
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    sbc $de
    ld e, c
    ld e, c
    ld c, h
    ld c, h
    ld [$0808], sp
    ld [$00ff], sp
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
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
    rst $38
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ld hl, sp-$08
    ld hl, sp-$08
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

    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    ld [$a808], sp
    xor b
    db $ec
    db $ec
    ei
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp a
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
    rst $28
    rst $28
    rst $38
    rst $38
    rst $20
    rst $20
    rst $30
    rst $30
    rst $30
    rst $30
    di
    di
    pop af
    pop af
    pop af
    pop af
    ld sp, hl
    ld sp, hl
    ld hl, sp-$08
    ld hl, sp-$08
    ld d, b
    ld d, b
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
    ld hl, sp+$00
    ldh a, [rP1]
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
    rst $38
    nop
    rst $38
    nop
    inc bc
    db $fc
    inc bc
    inc b
    inc de
    inc d
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    add e
    add h
    sub e
    sub h
    add e
    add h
    sub e
    sub h
    jp $83c4


    add h
    add e
    add h
    add e
    add h
    add e
    add h
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    ld bc, $0000
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
    ld h, b
    ld h, b
    or b
    or b
    ldh [$e0], a
    ldh [$e0], a
    pop hl
    pop hl
    jp hl


    jp hl


    xor $ee
    push af
    push af
    or $f6
    ld sp, hl
    ld sp, hl
    ei
    ei
    db $fd
    db $fd
    db $fc
    db $fc
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $30
    rst $30
    db $e3
    db $e3
    sub b
    sub b
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
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    pop bc
    cp $81
    cp $81
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
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
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
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
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
    ld bc, $01fe
    cp $01
    cp $01
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    nop
    rra
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
    nop
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ret nc

    ret nc

    ld d, b
    ld d, b
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
    add b
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
    ld a, a
    add b
    add b
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [$80]
    ld hl, sp-$20
    db $fc
    ld hl, sp+$7e
    cp $00
    ret nz

    nop
    ldh a, [rP1]
    ld a, h
    nop
    ccf
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    nop
    add b
    add b
    ldh [$e0], a
    ld hl, sp-$08
    cp $fe
    daa
    rst $38
    ld a, c
    rst $38
    ld h, [hl]
    rst $38
    ld h, c
    rst $38
    nop
    dec [hl]
    nop
    stop
    ld [$0a00], sp
    nop
    nop
    and b
    and b
    ld [hl], b
    ld [hl], b
    ld sp, $0131
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
    add b
    add b
    ldh [$e0], a
    ld a, b
    ld hl, sp-$61
    cp $00
    or b
    nop
    ld b, b
    nop
    nop
    nop
    add b
    nop
    jr nz, jr_03d_62bb

jr_03d_62bb:
    ld [$0000], sp
    nop
    nop
    nop
    nop
    add b
    add b
    ld [$2808], sp
    jr z, jr_03d_62e5

    inc e
    ld [$0808], sp
    ld [$0000], sp
    ld a, a
    nop
    rrca
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

jr_03d_62e5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_03d_630e

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
    ld hl, sp+$07
    ldh [$1f], a
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
    inc bc
    nop

jr_03d_630e:
    nop
    nop
    nop
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
    dec c
    dec c
    inc b
    inc b
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
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
    ldh a, [rIF]
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
    ccf
    nop
    rrca
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
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    jr nc, jr_03d_639c

    inc d
    inc d
    inc b
    inc b
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

jr_03d_639c:
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
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
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    inc bc
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
    ld bc, $0101
    ld [bc], a
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld b, $01
    ld bc, $0807
    add hl, bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0a01
    dec bc
    inc c
    dec c
    ld c, $0f
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    db $10
    ld de, $1312
    inc d
    ld bc, $1501
    ld d, $17

Call_03d_6460:
    jr @+$1b

    ld a, [de]
    dec de
    ld bc, $0101
    inc e
    dec e
    ld e, $1f
    ld bc, $0101
    ld bc, $2001
    ld hl, $2222
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_03d_64a5

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_03d_64b4

    jr nc, jr_03d_64b6

    jr nc, @+$33

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_03d_64c9

    ld l, $3a
    dec sp
    inc a
    dec a
    ld a, $3f
    ccf
    ld bc, $4140
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld l, $47
    ld c, b
    ld c, c
    ld c, c

jr_03d_64a5:
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
    ld c, c

jr_03d_64b4:
    ld c, c
    ld c, c

jr_03d_64b6:
    ld c, c
    ld e, b
    ld bc, $5a59
    ccf
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld [$6564], sp
    ld h, [hl]

jr_03d_64c9:
    ld bc, $6701
    ld l, b
    ccf
    ccf
    ld l, c
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $6b6a
    ccf
    ld bc, $0101
    ld bc, $0101
    ld l, h
    dec h
    dec h
    dec h
    ld bc, $0101
    ld bc, $6e6d
    ld bc, $706f
    ld [hl], c
    ld [hl], d
    ld bc, $0101
    ld bc, $0101
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $017a
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
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld bc, $0101
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
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
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
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
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
    nop
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0301
    inc bc
    inc bc
    inc hl
    inc bc
    inc bc
    ld bc, $0000
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
    ld bc, $2121
    ld hl, $0000
    nop
    nop
    ld [bc], a
    ld [bc], a
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    add b
    ld a, a
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
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ld hl, sp+$07
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    rst $38
    nop
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
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
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    nop
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
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld sp, hl
    rst $38
    ei
    rst $38
    cp $ff
    db $fc
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
    ld hl, sp-$01
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
    ldh [$1f], a
    cp $1f
    di
    ld a, a
    pop af
    rst $08
    db $fd
    sbc a
    ld a, [c]
    cpl
    cp $6f
    ld sp, hl
    ld h, a
    ei
    ld [hl], a
    cp $37
    db $fc
    rra
    ldh [$03], a
    ret nz

    ld bc, $0080
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
    add b
    nop
    add b
    nop
    ret nz

    nop
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
    nop
    rst $38
    nop
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
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    db $fc
    ld [bc], a
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
    nop
    rst $38
    nop
    rst $38
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
    ccf
    nop
    ccf
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
    nop
    nop
    rst $38
    nop
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
    inc bc
    db $fc
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
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

    ccf
    ret nz

    ccf
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ret nz

    nop
    ret nz

    nop
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
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
    add b
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
    add b
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld a, b
    add b
    ld a, b
    add b
    ld a, b
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
    ldh a, [rTAC]
    ld hl, sp+$07
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    rrca
    rrca
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    ld [$0e08], sp
    ld c, $08
    ld [$0000], sp
    nop
    nop
    inc c
    inc c
    dec b
    dec b
    dec b
    dec b
    dec a
    dec a
    dec c
    dec c
    inc b
    inc b
    inc b
    inc b
    rlca
    rlca
    dec b
    dec b
    ld b, $06
    rlca
    rlca
    dec a
    dec a
    ccf
    ccf
    ld b, $06
    inc b
    inc b
    ld b, $06
    ld a, $3e
    inc bc
    inc bc
    inc b
    inc b
    ld b, $06
    rlca
    rlca
    ld a, $3e
    ld [hl], $36
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    dec bc
    dec bc
    dec de
    dec de
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rrca
    rrca
    rla
    rla
    rst $38
    nop
    rst $38
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
    rst $38
    rrca
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
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add [hl]
    add [hl]
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    db $10
    db $10
    ld l, h
    ld l, h
    ret nz

    ret nz

    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    pop hl
    pop hl
    ret nz

    ret nz

    ret nz

    ret nz

    pop af
    pop af
    reti


    reti


    ld h, a
    ld h, a
    rst $30
    rst $30
    and $e6
    ld e, a
    ld e, a
    call nz, Call_000_04c4
    inc b
    ld [bc], a
    ld [bc], a
    rst $18
    rst $18
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld h, e
    ld h, e
    sbc a
    sbc a
    ld hl, sp-$08
    ld sp, hl
    ld sp, hl
    jr c, jr_03d_6b02

    ld e, d
    ld e, d
    ld e, e
    ld e, e
    cp $fe
    ld a, d
    ld a, d
    cp b
    cp b
    inc e
    inc e
    rra
    rra
    ld a, a
    ld a, a
    rst $38
    rst $38
    cp $fe
    ret c

    ret c

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $01
    cp $ff
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38

jr_03d_6b02:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rrca
    rst $38
    rlca
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    ld bc, $00fe
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

    ret nz

    ret nz

    ret nz

    ret nz

    add sp, -$18
    nop
    nop
    ld b, b
    ld b, b
    nop
    nop
    inc [hl]
    inc [hl]
    jr nc, jr_03d_6bac

    ret c

    ret c

    ld l, d
    ld l, d
    ret c

    ret c

    db $ec
    db $ec
    db $e4
    db $e4
    db $f4
    db $f4
    cp $fe
    ld b, [hl]
    ld b, [hl]
    di
    di
    ld a, a
    ld a, a
    ld c, e
    ld c, e
    rst $08
    rst $08
    ld sp, hl
    ld sp, hl
    dec de
    dec de
    inc c
    inc c
    dec e
    dec e
    inc a
    inc a
    ld a, l
    ld a, l
    db $e3
    db $e3
    xor e
    xor e
    sbc a
    sbc a
    sbc $de
    sbc $de
    cp $fe

jr_03d_6bac:
    rra
    rra
    rra
    rra
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    rra
    rra
    sbc a
    sbc a
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rlca
    ld hl, sp+$0f
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
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rra
    rst $38
    rrca
    rst $38
    inc bc
    db $fc
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
    ret nz

    ret nz

    add b
    add b
    add b
    add b
    and b
    and b
    or b
    or b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ld l, b
    ld l, b
    db $f4
    db $f4
    db $e4
    db $e4
    jr nc, jr_03d_6c78

    jr nc, jr_03d_6c7a

    ld [hl], b
    ld [hl], b
    db $db
    db $db
    db $db
    db $db
    cp b
    cp b
    adc h
    adc h
    adc h
    adc h
    db $fc
    db $fc
    cp $fe
    rst $38
    rst $38
    rst $20
    rst $20
    ld h, $26
    db $fc
    rst $38
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
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07

jr_03d_6c78:
    ld hl, sp+$07

jr_03d_6c7a:
    ld hl, sp+$07
    ld hl, sp-$01
    ret nz

    rst $38
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
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
    rst $38
    nop
    rst $38
    nop
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
    rst $38
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
    add b
    add b
    add b
    add b
    and b
    and b
    add b
    add b
    ld b, b
    ld b, b
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
    rra
    db $10
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
    ld bc, $0000
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $01
    cp $01
    cp $01
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
    add b
    ld a, a
    nop
    ld a, a
    ld b, b
    ccf
    nop
    ccf
    jr nz, @+$21

    nop
    rrca
    nop
    rrca
    nop
    rlca
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $01
    cp $03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$1f]
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
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld bc, $01fe
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
    nop
    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp+$0f
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
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $14
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $1d
    ld e, $1f
    jr nz, jr_03d_6e86

    ld [hl+], a
    inc e
    inc hl
    inc h
    dec h
    ld b, $06
    ld b, $06
    ld b, $06
    ld h, $27
    jr z, jr_03d_6e9d

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld b, $2e
    cpl
    jr nc, jr_03d_6e83

    ld b, $06
    ld b, $31
    ld [hl-], a
    ld [hl-], a

jr_03d_6e83:
    inc sp
    inc [hl]
    inc l

jr_03d_6e86:
    inc l
    dec [hl]
    ld b, $36
    scf
    jr c, jr_03d_6ec6

    inc e
    ld b, $06
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld b, $06
    ld a, $32
    ld [hl-], a
    ccf

jr_03d_6e9d:
    ld b, b
    ld b, c
    ld b, $32
    ld [hl-], a
    jr nz, jr_03d_6ee6

    ld b, $06
    ld b, $06
    ld b, e
    ld b, h
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld b, l
    ld b, [hl]
    ld b, a
    ld [hl-], a
    ld [hl-], a
    ld c, b
    ld [hl-], a
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld [hl-], a
    ld [hl-], a
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld [hl-], a
    ld [hl-], a

jr_03d_6ec6:
    ld [hl-], a
    ld [hl-], a
    jr nz, jr_03d_6f21

    ld e, b
    ld e, c
    ld e, d
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld e, a
    ld h, b
    inc l
    inc e
    ld h, c
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld e, e
    ld h, d
    ld h, e
    ld h, h

jr_03d_6ee6:
    ld [hl-], a
    ld [hl-], a
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld l, e
    ld l, h
    ld b, e
    ld [hl-], a
    ld [hl-], a
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl-], a
    ld [hl], a
    ld a, b
    ld a, c
    ld b, $7a
    ld a, e
    ld a, h
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    ld b, $06
    ld b, $5b
    add d
    ld [hl-], a

jr_03d_6f21:
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    add e
    add h
    add l
    ld b, $06
    ld b, $06
    ld b, $06
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    add [hl]
    add a
    ld b, $06
    ld a, l
    adc b
    ld b, $06
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    adc c
    ld b, $06
    adc d
    ld c, l
    ld [hl-], a
    adc e
    ld b, $32
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    adc h
    ld b, $8d
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    adc [hl]
    inc bc
    ld b, $04
    inc b
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
    inc bc
    ld b, $06
    inc b
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
    ld b, $06
    ld b, $06
    ld b, $02
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
    ld b, $06
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
    inc b
    ld b, $06
    ld b, $06
    inc b
    ld hl, $0202
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld bc, $0606
    inc b
    inc b
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
    ld bc, $0101
    ld bc, $0004
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
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0202
    nop
    ld bc, $0101
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
    ld bc, $0201
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
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld b, c
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $4101
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    ld bc, $0002
    nop
    nop
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $0101
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
    jr nz, jr_03d_707e

jr_03d_707e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $fc
    rst $38
    nop
    inc c
    nop
    jr jr_03d_70b5

jr_03d_70b5:
    ld h, b
    nop
    add b
    nop
    nop
    ld bc, $0001
    inc bc
    add hl, bc
    ld c, $f8
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    ld a, a
    cp $3f
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $28
    inc bc
    rst $00
    ld bc, $00c7
    rst $20
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    dec de
    ccf
    ccf
    ccf
    rra
    ccf
    rrca
    rra
    rlca
    rrca
    ld bc, $000f
    rlca
    nop
    inc bc
    nop
    ld a, h
    add e
    ld a, $c1
    ld c, $f1
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_03d_7105:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_03d_710f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld sp, hl
    rst $38
    rst $20
    rst $38
    adc a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    nop
    nop
    inc bc
    inc bc
    dec c
    rrca
    inc e
    rla
    ld a, d
    ld h, a
    dec a
    db $e3
    sbc h
    ld h, e
    sbc l
    ld h, e
    ret c

    daa
    ld e, d
    and l
    jr nc, jr_03d_7105

    jr z, jr_03d_710f

    ld d, b
    xor a
    nop
    rst $38
    rlca
    ld a, b
    inc hl
    inc a
    ldh a, [rIE]
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
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    jr nc, jr_03d_7173

jr_03d_7173:
    ret nz

    nop
    add b
    nop
    nop
    inc bc
    inc bc
    rlca
    rlca
    inc de
    rra
    ld b, e
    ld a, a
    pop bc
    cp a
    and b
    rst $18
    and c
    rst $18
    ld d, b
    rst $28
    ld a, b
    add a
    ld [hl], d
    adc l
    inc h
    ei
    jp nc, $ccfd

    rst $38
    add l
    cp $17
    ld hl, sp-$53
    di
    or a
    rst $08
    ld a, a
    sbc a
    or e
    ld a, a
    ld sp, hl
    ld a, a
    ld e, [hl]
    ld sp, hl
    ld a, b
    rst $38
    inc a
    rst $38
    call c, $efff
    rst $38
    cp $ff
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rra
    rra
    rra
    rra
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ei
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
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    inc b
    rlca
    db $10
    rra
    ld c, b
    ld [hl], a
    adc h
    di
    ld a, [bc]
    push af
    ld [hl], h
    adc e
    cp l
    jp nz, $fa85

    call z, $e0f3
    rst $38
    ldh [rIE], a
    ld [hl], b
    rst $38
    ld a, c
    cp $77
    ld hl, sp+$0c
    di
    scf
    rst $08
    db $fd
    rra
    ld a, h
    rst $38
    cp $ff
    sbc [hl]
    rst $38
    ld c, $ff
    adc $ff
    rst $20
    rst $38
    di
    rst $38
    di
    rst $38
    cp a
    rst $38
    ld l, a
    rst $38
    db $d3
    rst $38
    di
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
    db $fd
    cp $7b
    ld a, l
    ccf
    ccf
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    add c
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    ldh a, [$f0]
    ldh [$e0], a
    ldh a, [$f0]
    db $fc
    ld a, b
    db $fc
    inc a
    cp $1c
    rst $38
    ld e, $ff
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
    nop
    rst $38
    nop
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
    ld hl, sp+$7e
    ld hl, sp+$7e
    ld hl, sp+$3f
    db $fc
    ccf
    db $fc
    rra
    cp $0f
    cp $8c
    ld a, h
    adc b
    ld a, b
    nop
    ld hl, sp-$24
    inc a
    ret c

    inc a
    cp [hl]
    ld a, [hl]
    inc c
    cp $27
    rst $38
    rst $10
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    rlca
    rst $38
    ld [hl], e
    rst $38
    and e
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
    rst $38
    rst $38
    cp $ff
    cp $fd
    rst $38
    ei
    rst $38
    rst $28
    rst $38
    rst $18
    cp a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ei
    rst $38
    or $ff
    ret z

    rst $38
    pop af
    cp $c7
    ld hl, sp-$71
    ldh a, [rIE]
    ret nz

    nop
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    ldh [$80], a
    ld hl, sp-$80
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ld a, b
    rst $38
    ld a, b
    rst $38
    inc a
    rst $38
    ld a, $ff
    ld e, $ff
    rrca
    rst $38
    rrca
    rst $38
    rlca
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
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    ccf
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
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
    rst $38
    nop
    nop
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    ldh [$e0], a
    add b
    ret nc

    or b
    sub b
    ldh a, [$f8]
    ld hl, sp-$08
    ld hl, sp-$04
    db $fc
    db $fc
    db $fc
    call z, $defc
    cp [hl]
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    db $e4
    rst $38
    ret c

    rst $38
    and e
    db $fc
    rst $00
    ld hl, sp+$1f
    ldh [$3f], a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, h
    cp $3f
    cp $3f
    rst $38
    rra
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $08
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
    rst $38
    cp $ff
    db $fc
    rst $38
    ldh a, [$1f]
    ldh [$7f], a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld hl, sp+$07
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
    ret nz

    ccf
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
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    ld a, a
    cp $7f
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
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    di
    ldh a, [$c3]
    ret nz

    add c
    add b
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
    ld hl, sp+$07
    ldh a, [rIF]
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
    ld bc, $07ff
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    add b
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
    cp $ff
    cp $7f
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
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [$cf]
    ld hl, sp-$79
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    rst $38
    nop
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
    rlca
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
    nop
    rst $38
    nop
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
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    cp $7f
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
    rlca
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    ret nz

    rst $38
    nop
    rst $38
    nop
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
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
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
    rst $38
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
    add b
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
    ld hl, sp-$01
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
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    ld bc, $00fe
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
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
    add b
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
    rlca
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
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    ldh [rIE], a
    nop
    inc bc
    inc bc
    rlca
    rlca
    jp $ff03


    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ldh a, [rIF]
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
    rst $38
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca
    ld c, $3f
    inc a
    ld a, a
    ld a, b
    cp $e1
    db $fc
    jp $87f8


    ldh a, [rIF]
    ret nz

    cp a
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [$7f]
    ld hl, sp+$7f
    inc a
    rst $38
    inc e
    rst $38
    ld c, $ff
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $80ff
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
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
    ld a, a
    rst $38
    ccf
    rst $38
    rra
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
    rrca
    rst $38
    ld hl, sp+$07
    db $fd
    inc bc
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    ld e, $ff
    inc a
    ld a, a
    ld a, b
    cp $e1
    jp $8fff


    rst $38
    rra
    rst $20
    daa
    jp $c263


    di
    ldh [rIE], a
    ld hl, sp-$01
    ldh a, [$fe]
    pop hl
    db $fc
    add e
    ld hl, sp+$07
    ldh a, [rIF]
    ret nz

    cp a
    ldh [$df], a
    ldh a, [$ef]
    ld hl, sp-$09
    rlca
    ld hl, sp+$03
    db $fc
    ld bc, $01fe
    cp $80
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    ld a, h
    rst $38
    inc a
    rst $38
    ld e, $ff
    rra
    rst $38
    rrca
    rst $38
    rlca
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
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
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
    ld bc, $00ff
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
    rrca
    rst $38
    ld e, $ff
    inc a
    rst $38
    ld a, b
    rst $38
    ldh a, [rIE]
    ld hl, sp-$39
    ldh a, [$8f]
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a
    nop
    cp $00
    db $fc
    rst $38
    ld hl, sp-$02
    pop hl
    db $fc
    jp $07f8


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
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    ld bc, $01fe
    cp $80
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, $ff
    ccf
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
    rlca
    rst $38
    rrca
    rst $38
    ld e, $ff
    inc a
    rst $38
    ld a, b
    rst $38
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
    ld bc, $fcfe
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    db $fc
    db $e3
    ld hl, sp-$39
    ldh a, [$8f]
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
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
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    ld hl, sp-$01
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    ret nz

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
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
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
    inc bc
    rst $38
    ld bc, $feff
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
    rlca
    rst $38
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
    ld [bc], a
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
    inc b
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
    rlca
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
    nop
    nop
    nop
    ld [$0606], sp
    ld b, $09
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
    dec bc
    inc c
    ld b, $0d
    ld c, $0f
    db $10
    ld de, $0000
    nop
    nop
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $06
    rla
    jr jr_03d_7a06

    add hl, de
    ld a, [de]
    ld b, $0d
    dec de
    dec de

jr_03d_7a06:
    inc e
    ld b, $06
    ld b, $1d
    ld b, $1e
    rra
    ld b, $06
    jr nz, jr_03d_7a33

    ld [hl+], a
    inc hl
    inc h
    dec h
    dec h
    inc h
    ld h, $27
    jr z, jr_03d_7a45

    ld a, [hl+]
    ld b, $06
    ld b, $06
    dec hl
    inc l
    dec l
    ld l, $2e
    ld l, $2f
    jr nc, jr_03d_7a5b

    ld [hl-], a
    inc sp
    ld b, $06
    ld b, $06
    ld b, $34
    dec [hl]

jr_03d_7a33:
    ld [hl], $37
    jr c, jr_03d_7a70

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $06
    ld b, $06
    ld b, $06
    ccf
    ld b, b
    dec c
    ld b, c

jr_03d_7a45:
    ld a, [hl+]
    ld b, d
    ld b, e
    ld b, $3c
    ld b, h
    ld b, l
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, [hl]
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, a
    inc a

jr_03d_7a5b:
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $48
    ld b, $06
    ld b, $06
    ld b, $06
    ld c, c
    ld b, $06
    ld b, $06
    ld b, $06

jr_03d_7a70:
    ld b, $06
    ld c, d
    ld b, $06
    ld b, $06
    ld c, e
    dec de
    ld c, h
    ld b, $4d
    ld a, [hl+]
    ld b, $06
    ld b, $4e
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    nop
    nop
    nop
    nop
    ld d, e
    ld d, h
    ld b, $4b
    ld d, l
    ld d, [hl]
    ld a, [hl+]
    ld d, a
    nop
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
    ld e, c
    ld b, $06
    ld e, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, e
    ld e, h
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
    ld e, l
    ld e, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
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
    ld [bc], a
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
    ld bc, $0101
    ld bc, $0001
    ld [bc], a
    ld bc, $2000
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld b, b
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0102
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0002
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    jr nz, jr_03d_7b85

jr_03d_7b85:
    jr nz, jr_03d_7b87

jr_03d_7b87:
    nop
    nop
    ld bc, $0002
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
    ld bc, $0041
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
    ld bc, $0001
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
    jr nz, @+$04

    ld bc, $2101
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
    ld [bc], a
    ld [bc], a
    ld bc, $0121
    ld bc, $0221
    nop
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
    nop
    nop
    nop
    nop
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
    rrca
    rst $38
    ccf
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
    inc bc
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
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $03ff
    rst $38
    rlca
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
    cp $01
    rst $38
    ld bc, $03fd
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld a, a
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
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    pop bc
    ccf
    add a
    ld a, a
    adc a
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    ccf
    rst $38
    rra
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
    ld bc, $00ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff
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
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld hl, sp-$01
    ldh a, [rIE]
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
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    ld a, a
    db $fc
    ccf
    cp $1f
    rst $38
    rlca
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld bc, $07ff
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
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
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
    rst $38
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
    inc bc
    rst $38
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    ld a, a
    ret nz

    rrca
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
    add a
    rlca
    add a
    rlca
    add a
    ld h, e
    add b
    ld [hl], e
    add b
    ld a, a
    add b
    inc bc
    db $fc
    inc bc
    db $fc
    ld a, h
    db $fc
    nop
    db $fc
    ld a, h
    add b
    ld a, h
    add b
    ld a, h
    add b
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
    add e
    db $fc
    add e
    db $fc
    add e
    db $fc
    add e
    ld hl, sp+$7c
    add b
    ld a, l
    add b
    ld a, a
    add b
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rrca
    rst $38
    ccf
    rst $00
    ccf
    rst $20
    ld a, a
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $30
    rst $20
    rst $20
    rst $20
    db $e3
    ldh [$f7], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$f0], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$f8], a
    rst $20
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
    ccf
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
    ldh [$1f], a
    inc bc
    nop
    ld bc, $0700
    nop
    rrca
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ret nz

    ccf
    ldh a, [rIF]
    ld bc, $00ff
    rst $38
    nop
    rst $38
    add b
    ld a, a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
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
    inc bc
    rst $38
    rlca
    rst $38
    ldh [$1f], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc bc
    nop
    nop
    nop
    db $fc
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld a, a
    rst $38
    rra
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    add b
    ld a, a
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
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
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
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
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
    ldh [$1f], a
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    nop
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
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
