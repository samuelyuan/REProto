SECTION "ROM Bank $0bb", ROMX[$4000], BANK[$bb]

    and c
    and c
    sub a
    sub a
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
    jr nz, jr_0bb_4012

jr_0bb_4012:
    ld [$1800], sp
    nop
    inc c
    nop
    jr nc, jr_0bb_401a

jr_0bb_401a:
    nop
    nop
    ld h, d
    nop
    ld h, e
    nop
    ld h, c
    nop
    ld [c], a
    nop
    and a
    nop
    rst $30
    nop
    ld a, [c]
    nop
    or $00
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
    cp $00
    rst $38
    nop
    rst $30
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
    rra
    rst $38
    inc a
    inc bc
    ld a, a
    add b
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ret nz

    ccf
    nop
    rst $38
    ld a, b
    rst $38
    rst $38
    rst $18
    rst $38
    rra
    rst $38
    nop
    rst $38
    add c
    rst $38
    db $f4
    ld a, a
    rst $38
    ld a, c
    rst $38
    ld hl, sp-$01
    rra
    rrca
    rra
    rrca
    ld e, $0e
    ld a, $1e
    ld a, $1e
    ld a, $1e
    dec a
    dec e
    ld a, l
    dec a
    ld a, l
    dec a
    ld a, h
    inc a
    ld a, e
    dec sp
    ld a, e
    dec sp
    ei
    ld a, e
    ei
    ld a, e
    pop af
    ld [hl], c
    di
    ld [hl], e
    di
    di
    db $e3
    db $e3
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    pop bc
    pop bc
    ret nz

    ret nz

    jp nz, $80c2

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
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ldh a, [$f0]
    pop af
    pop af
    ldh [$e0], a
    add b
    add b
    add c
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc c
    inc c
    inc c
    inc c
    nop
    nop
    add b
    add b
    nop
    nop
    ld [$0808], sp
    ld [$0e0e], sp
    rrca
    rrca
    inc bc
    inc bc
    ld c, $0e
    ld de, $1c11
    inc e
    cp [hl]
    cp [hl]
    ret nz

    ret nz

    jr nz, jr_0bb_4104

    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    jr nc, jr_0bb_40fe

jr_0bb_40fe:
    jr nc, jr_0bb_4100

jr_0bb_4100:
    inc b
    nop
    inc c
    nop

jr_0bb_4104:
    inc sp
    nop
    ld bc, $4100
    nop
    pop bc
    nop
    rlc b
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    dec a
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
    ld a, a
    rst $38
    pop af
    rrca
    rst $38
    nop
    inc bc
    db $fc
    nop
    rst $38
    ret nz

    rst $38
    inc bc
    rst $38
    add b
    ld a, a
    ld [$fff7], sp
    ret nz

    rst $38
    db $eb
    rst $38
    cp $ff
    inc bc
    rst $38
    inc b
    rst $38
    ld b, b
    rst $38
    cp $e3
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
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
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
    jr @+$1b

    ld a, [bc]
    ld a, [bc]
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0bb_41c5

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0bb_41d5

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0bb_41e5

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0bb_41f5

    ld a, [hl-]
    ld a, [bc]
    dec sp
    inc a
    nop
    nop
    nop
    nop
    nop

jr_0bb_41c5:
    nop
    nop
    nop
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld a, [bc]
    ld b, e
    nop
    nop
    nop
    nop
    ld b, h

jr_0bb_41d5:
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
    nop
    nop
    nop
    ld d, b
    ld d, c

jr_0bb_41e5:
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld c, h
    ld e, c
    nop
    ld e, d
    nop
    nop
    nop
    ld e, e
    ld e, h

jr_0bb_41f5:
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld e, c
    nop
    nop
    ld h, l
    ld h, l
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
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld [de], a
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
    ld a, [bc]
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
    ld a, [bc]
    ld a, [bc]
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
    ld a, [bc]
    ld a, [bc]
    or a
    cp b
    cp c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
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
    ld bc, $0401
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
    nop
    nop
    ld bc, $0304
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
    nop
    rlca
    ld b, $03
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
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
    inc bc
    inc bc
    inc bc
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
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
    inc bc
    inc bc
    inc bc
    inc bc
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
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    dec b
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    ld b, e
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    dec b
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    ld b, $06
    ld b, $03
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
    nop
    ld bc, $0601
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
    nop
    nop
    ld bc, $0601
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
    inc bc
    nop
    nop
    ld bc, $0601
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ld [hl], b
    ldh a, [rSVBK]
    ldh a, [$30]
    ldh a, [$b8]
    ld hl, sp-$28
    ret c

    ld e, b
    ld e, b
    jr jr_0bb_440e

    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc

jr_0bb_440e:
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $5000
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    jr nz, jr_0bb_442c

jr_0bb_442c:
    nop
    nop
    nop
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
    rlca
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
    ld de, $8000
    nop
    sub a
    nop
    rlc b
    add e
    nop
    pop bc
    nop
    ldh a, [rP1]
    db $fd
    nop
    db $ec
    nop
    cp $00
    jp $e000


    nop
    ei
    nop
    rst $38
    nop
    or [hl]
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
    rst $38
    nop
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
    inc sp
    rrca
    nop
    nop
    ld c, $f0
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    rst $38
    nop
    ccf
    ret nz

    nop
    rst $38
    rst $38
    rst $38
    rst $10
    rst $38
    inc bc
    rst $38
    cp $ff
    rst $38
    inc bc
    rst $38
    nop
    rst $08
    nop
    rst $08
    nop
    ld h, b
    ld h, b
    ld b, b
    ld b, b
    ld bc, $0701
    rlca
    inc bc
    inc bc
    dec b
    dec b
    rla
    rla
    dec de
    dec de
    rrca
    rrca
    rst $38
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    or a
    cp a
    rst $38
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
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
    ld bc, $0000
    nop
    ld bc, $0000
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
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh [$60], a
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    jr nc, jr_0bb_4548

    jr nc, jr_0bb_454a

    jr nc, jr_0bb_454c

    jr c, jr_0bb_4556

    sbc b
    jr jr_0bb_4539

    jr jr_0bb_453b

    jr jr_0bb_4541

    inc e
    ld c, h
    inc c
    call z, $8c0c
    inc c
    adc [hl]
    ld c, $0e
    ld b, $1e
    ld b, $06
    ld b, $03
    inc bc

jr_0bb_4536:
    inc sp
    inc bc
    inc de

jr_0bb_4539:
    inc bc
    rrca

jr_0bb_453b:
    inc bc
    rrca
    ld bc, $01cf
    rst $00

jr_0bb_4541:
    ld bc, $01ff
    rst $38
    nop
    ei
    nop

jr_0bb_4548:
    ld sp, hl
    nop

jr_0bb_454a:
    ld sp, hl
    nop

jr_0bb_454c:
    inc h
    nop
    inc a
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop

jr_0bb_4556:
    rst $38
    nop
    ld a, a
    nop
    cp a
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
    rst $38
    nop
    rst $08
    ccf
    inc bc
    nop
    jr c, jr_0bb_4536

    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    rst $38
    nop
    ld [hl], l
    add b
    cp $ff
    rst $38
    rst $38
    ld e, a
    rst $38
    nop
    rst $38
    ldh [rIE], a
    rst $38
    rrca
    rst $38
    nop
    cp a
    nop
    push af
    push af
    rst $18
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    ld a, [$f9fb]
    ld sp, hl
    ret c

    ld hl, sp-$43
    db $fd
    db $fd
    db $fd
    sub e
    ei
    inc de
    ei
    rst $28
    rst $38
    ld e, a
    rst $38
    rst $18
    rst $38
    ld e, a
    nop
    xor a
    nop
    ld d, a
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
    dec hl
    nop
    ld d, l
    nop
    ld a, [hl+]
    nop
    ld d, l
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
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ld b, b
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    ldh [rNR41], a
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [$30]
    ld hl, sp+$18
    ld hl, sp+$18
    ld hl, sp+$18
    ld hl, sp+$18
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    inc e
    cp $1e
    cp $3e
    cp $3e
    cp $7e
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
    rst $38
    ldh [$1f], a
    db $10
    rra
    jr jr_0bb_4686

    inc c
    rrca
    ld c, $0f
    rrca
    rrca
    rrca
    rlca
    rlca
    ccf
    rlca
    cp a
    rlca
    rst $38
    inc bc

jr_0bb_4686:
    ld e, a
    inc bc
    rrca
    inc bc
    cp a
    ld bc, $bf41
    nop
    rst $38
    jr nz, jr_0bb_46b3

    or b
    pop af
    ld e, e
    ei
    rst $18
    rst $38
    ld d, a
    rst $38
    add e
    rst $38
    dec b
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
    rst $28
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

jr_0bb_46b3:
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
    add b
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
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ld h, b
    nop
    ldh [rP1], a
    ld [hl], b
    nop
    ldh a, [rP1]
    ld [hl], b
    nop
    ldh a, [rP1]
    ld [hl], b
    nop
    or b
    nop
    ld [hl], b
    nop
    cp b
    nop
    ld a, b
    nop
    cp b
    nop
    ld a, b
    nop
    cp b
    nop
    ld e, b
    nop
    cp b
    nop
    ld e, b
    nop
    cp h
    nop
    ld e, h
    nop
    cp h
    nop
    ld e, h
    nop
    xor h
    nop
    ld e, h
    nop
    xor h
    nop
    ld e, [hl]
    nop
    xor [hl]
    nop
    ld e, [hl]
    nop
    xor [hl]
    nop
    ld d, [hl]
    nop
    xor [hl]
    nop
    ld d, [hl]
    nop
    xor [hl]
    nop
    ld d, a
    nop
    xor a
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
    rla
    nop
    dec hl
    nop
    dec d
    nop
    dec hl
    nop
    dec d
    nop
    dec bc
    nop
    dec d
    nop
    dec bc
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
    ld [bc], a
    nop
    dec b
    nop
    add d
    add b
    add l
    add b
    add d
    add b
    add c
    add b
    jp nz, $c1c0

    ret nz

    jp nz, $c1c0

    ret nz

    ldh [$e0], a
    pop hl
    ldh [$e0], a
    ldh [$e1], a
    ldh [$f0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rlca
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
    add b
    rlca
    add b
    rlca
    ret nz

    inc bc
    ret nz

    ld bc, $00e0
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
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
    ldh [rP1], a
    ldh [rP1], a
    ld h, b
    nop
    ldh [rP1], a
    ld h, b
    nop
    ldh [rP1], a
    ld h, b
    nop
    ldh [rP1], a
    ld [hl], b
    nop
    or b
    nop
    ld [hl], b
    nop
    or b
    nop
    ld [hl], b
    nop
    or b
    nop
    ld [hl], b
    nop
    or b
    nop
    ld d, b
    nop
    cp c
    ld bc, $0159
    cp e
    inc bc
    ld e, a
    rlca
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ldh [$1f], a
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
    ccf
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
    ld bc, $0100
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc bc
    nop
    dec b
    nop
    rlca
    nop
    rlca
    nop
    add hl, bc
    ld bc, $0109
    add hl, bc
    ld bc, $0313
    dec de
    dec bc
    ld d, $07
    ld a, [de]
    dec bc
    ld e, $0f
    dec de
    dec bc
    rra
    rlca
    inc e
    nop
    rra
    nop
    rra
    ld [$0f1f], sp
    rra
    rrca
    dec e
    dec c
    jr nc, jr_0bb_4850

jr_0bb_4850:
    jr c, jr_0bb_4852

jr_0bb_4852:
    inc a
    nop
    ccf
    nop
    scf
    nop
    jr nz, jr_0bb_485a

jr_0bb_485a:
    jr nc, @+$12

    inc a
    nop
    ccf
    nop
    cpl
    nop
    rra
    rrca
    rra
    inc bc
    rra
    nop
    rra
    nop
    rrca
    ld bc, $071f
    rrca
    nop
    rrca
    inc bc
    rrca
    rlca
    rlca
    inc bc
    rlca
    ld bc, $0007
    inc bc
    ld bc, $0003
    inc bc
    nop
    inc bc
    ld bc, $0607
    rrca
    ld c, $0f
    rrca
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
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
    nop
    nop
    nop
    nop
    nop
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
    dec c
    ld bc, $0716
    inc h
    rlca

jr_0bb_48e6:
    ld c, b
    rrca

jr_0bb_48e8:
    sub b
    rra
    sub b
    rra
    ld [de], a
    rrca
    inc [hl]
    rrca
    cpl
    rra
    db $76
    ld d, $eb
    ld l, $ef
    ld l, $8f
    inc c

jr_0bb_48fa:
    adc a
    dec c
    sbc e
    add hl, de
    ei
    ei
    cp l
    db $fd
    inc a
    db $fc

jr_0bb_4904:
    jr nz, jr_0bb_48e6

    jr nz, jr_0bb_48e8

    jr nc, jr_0bb_48fa

    jr c, jr_0bb_4904

    nop
    ld hl, sp+$08
    ld hl, sp+$7d
    db $fd
    inc a
    inc a
    db $e4
    inc b
    adc a
    rrca
    rra
    rra
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rrca
    dec c
    ccf
    ld bc, $01fd
    db $ec
    rrca
    ld a, [de]
    rra
    db $fc
    rst $38
    dec sp
    ccf
    call Call_000_1e0d
    rra
    ld a, a
    ld [hl], a
    cp $e7
    rst $38
    rrca
    rst $38
    rra
    rst $00
    rst $38
    rst $00
    rst $38
    jp Jump_000_00ff


    jp $f100


    nop
    ld hl, sp+$00
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp-$40
    jr c, jr_0bb_4951

jr_0bb_4951:
    db $fd
    ld bc, $87fe
    ld a, b
    ld b, a
    cp b
    ld b, a
    cp b
    ld h, $d9
    inc c
    di
    nop
    cp $ff
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
    nop
    nop
    nop

jr_0bb_4983:
    nop
    nop
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
    nop
    rst $38
    nop
    ld bc, $0000
    nop
    jr nc, jr_0bb_49a9

    jr nz, jr_0bb_49bb

    ld d, b
    ld b, c
    or d
    ld b, b
    and b
    ret nz

    ld a, a
    ret nz

    ld a, a
    sbc $7e
    dec a
    ld a, h
    ei

jr_0bb_49a9:
    ld sp, hl
    db $fc
    rst $38
    pop af
    rst $38
    add b
    rst $38
    nop
    rst $38
    add a
    rst $38
    rrca
    ld a, a
    ld c, a
    ld a, a
    ld b, a
    ld a, a
    inc bc

jr_0bb_49bb:
    ccf
    daa
    ccf
    daa
    ccf
    rla
    rra
    rra
    rra
    dec c
    dec c
    ld [$1808], sp
    jr jr_0bb_4983

    cp b
    or b
    or b
    ldh [$e0], a
    cp $fe
    rrca
    rst $38
    rra
    rst $38
    dec a
    rst $38
    ld a, $ff
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop

jr_0bb_49e1:
    cp $00
    jr nc, jr_0bb_49e5

jr_0bb_49e5:
    sub b
    nop
    add b
    nop
    add b
    nop
    ret nz

    nop
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
    ccf
    nop
    ccf
    nop
    rlca
    nop
    nop
    nop
    jr nc, jr_0bb_49e1

    db $10
    add b
    ld h, b
    add b
    nop
    add b
    nop
    inc bc
    add b
    inc bc
    inc b
    inc bc
    inc b
    ld c, $30
    inc e
    and d
    nop
    db $fd
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
    inc bc
    nop
    inc e
    inc bc
    add d
    rst $38
    inc bc
    rst $38
    ld b, d
    rst $38
    ld b, b
    cp a
    ret nz

    ccf
    adc h
    ld a, a
    ccf
    db $e3
    ld a, e
    jp $8fef


    xor $3e
    inc c
    ld a, h
    inc e
    db $fc
    add hl, de
    ld hl, sp-$1a
    ldh [$60], a
    ldh [$e3], a
    db $e3
    pop hl
    pop hl
    xor d
    xor d
    or a
    or a
    ld [hl], e
    ld [hl], e
    ld b, c
    ld b, c
    rst $38
    rst $38
    rst $10
    rst $10
    ld a, [$d2fa]
    jp nc, $a7a7

    ld h, d
    ld h, d
    ld b, b
    ld b, b
    dec a
    dec a
    inc [hl]
    inc [hl]
    ld bc, $0000
    nop
    add d
    add e
    ei
    ei
    rst $38
    rst $38
    dec e
    di
    ld c, $f9
    adc [hl]
    ei
    inc b
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
    nop
    nop
    jr jr_0bb_4ae7

    or b
    ret nz

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
    add b
    nop
    rst $00
    nop
    db $e3
    nop
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
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
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld de, $2100
    nop
    rst $38
    inc b
    rst $38
    nop
    db $fd
    nop

jr_0bb_4ae7:
    db $fd
    ld h, d
    rst $38
    ld e, b
    rst $38
    ld [hl], $bf
    ld e, a
    rst $18
    ld e, $ff
    sbc a
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    ccf
    ld a, a
    dec bc
    db $eb
    rra
    rst $38
    rst $08
    rst $38
    ld c, [hl]
    xor $b4
    or $f3
    ei
    rst $38
    rst $38
    rra
    rst $18
    add hl, bc
    rst $38
    jr nz, @+$01

    ld sp, $00ff
    dec c
    nop
    rst $20
    nop
    rrca
    nop
    nop
    nop
    ld b, c
    ld bc, $0302
    nop
    nop
    jp nz, $fff0

    ld e, $1f
    ld c, $0f
    ld a, $3b
    ld c, [hl]
    ld b, c
    inc bc
    ld bc, $0000
    xor h
    xor h
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    inc b
    rlca
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    ld a, a
    ld a, a
    add hl, sp
    add hl, sp
    ld h, c
    ld h, b
    add a
    add b
    rrca
    nop
    sbc [hl]
    add b
    ccf
    nop
    db $ed
    nop
    ld [$1a01], sp
    di
    adc h
    rst $38
    add [hl]
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    jr nc, @+$01

    ld a, $e2
    ld a, $01
    nop
    ld e, $00
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
    add e
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld a, a
    rst $38
    rrca
    rst $38
    nop
    rst $38
    ld [$28ff], sp
    rst $28
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
    ld bc, $afff
    rst $38
    db $fc
    db $fc
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
    ld bc, $0300
    nop
    inc bc
    nop
    rlca
    nop
    ld c, $00
    ld e, $00
    inc a
    nop
    ld a, b
    nop
    ld a, b
    ld bc, $03ff
    rst $38
    nop
    rst $38
    inc e
    rst $38
    inc b
    rst $30
    call c, Call_0bb_5cff
    ld a, a
    jr nc, @+$01

    nop
    rst $28
    ld b, b
    rst $38
    sub b
    rst $38
    ld d, $ff
    rlca
    rst $38
    cp h
    rst $38
    sub h
    rst $38
    jr nc, @+$01

    ld h, b
    rst $38
    ret nc

    rst $38
    ldh a, [rIE]
    pop af
    rst $38
    add d
    rst $38
    db $db
    rst $38
    ld e, a
    ld a, a
    rst $38
    rst $38
    cp [hl]
    cp a
    ld a, $3f
    rst $38
    rst $38
    db $fc
    db $fc
    ldh a, [$f0]
    db $fc
    db $fc
    db $fc
    db $fc
    ld h, h
    db $e4
    ld [hl], e
    ld a, e
    sub d
    rst $38
    rra
    rst $38
    ld e, $fe
    cp $fe
    sub a
    ld d, a
    ld a, $ff
    daa
    rst $38
    jr nz, @+$45

    ld b, b
    inc sp
    nop
    nop
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    add b
    rra
    nop
    di
    ldh a, [$08]
    ld hl, sp-$7c
    db $fc
    ld a, d
    cp $84
    db $fc
    ld [$f1f8], sp
    ldh a, [rIE]
    rst $38
    ld [$c48b], a
    rlca
    adc l
    rrca
    rrca
    rrca
    rla
    rla
    nop
    nop
    db $e3
    inc hl
    ld b, a
    add a
    dec a
    rst $18
    dec b
    db $fd
    dec a
    db $fd
    scf
    rst $30
    dec sp
    ei
    ld h, e
    db $e3
    ld [hl], a
    ld [hl], a
    rst $08
    rst $38
    inc bc
    rst $38
    ldh [$fe], a
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
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
    ld a, [hl]
    cp $7e
    cp $79
    ld hl, sp-$07
    ld hl, sp-$1d
    ldh [$c3], a
    ret nz

    add e
    add b
    inc bc
    nop
    inc bc
    nop
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    pop hl
    rlca
    ldh [rIF], a
    ldh [rIF], a
    ret nz

    rra
    ret nz

    rra
    rst $08
    rra
    call z, $881f
    rra
    sbc b
    rra
    sbc b
    rra
    jr jr_0bb_4ccc

    jr jr_0bb_4cce

    ld sp, $303f
    rra
    ld a, a
    inc e
    rst $38
    ld b, $ff
    inc bc
    rst $38
    rlca
    rst $38
    ld c, $ff
    ld c, $ff
    ld a, [$2bfa]
    ld a, a
    or b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_0bb_4ccc:
    nop
    rst $38

jr_0bb_4cce:
    nop
    rst $38
    nop
    rst $38
    add c
    rst $38
    add e
    rst $38
    db $e3
    rst $38
    and l
    cp l
    and l
    or a
    dec d
    scf
    sub e
    or e
    add [hl]
    add [hl]
    pop bc
    pop bc
    jp $88c3


    adc b
    call nc, $ecc4
    db $ec
    sbc a
    sbc a
    rst $10
    rst $10
    rst $38
    rst $38
    cp a
    rst $38
    cpl
    rst $28
    rst $38
    rst $38
    xor d
    cp d
    jp hl


    ld sp, hl
    db $db
    rst $38
    ld h, [hl]
    ld a, [hl]
    and $fe
    pop hl
    rst $38
    ld h, b
    rst $38
    pop af
    rst $38
    ld a, [$edfe]
    rst $38
    ld [hl], l
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    ccf
    cp a
    ccf
    rst $38
    rst $18
    rst $18
    ccf
    rst $38
    ld e, e
    ei
    dec de
    ei
    rra
    rst $38
    ld a, l
    db $fd
    rra
    rst $38
    add e
    rst $38
    ldh [rIE], a
    jp nz, $80ff

    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc a
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc $fe
    ld a, [hl]
    cp $f6
    cp $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fd
    db $fc
    ld a, h
    ld a, h
    ld a, b
    ld a, b
    ld hl, sp-$08

jr_0bb_4d52:
    ld hl, sp-$08
    ld a, [$d7f8]
    ret nc

    dec [hl]
    jr nc, jr_0bb_4d52

    ldh a, [$f7]
    ldh a, [$ef]
    ldh [$ef], a
    ldh [$ef], a
    ldh [$eb], a
    ldh [$df], a
    ret nz

    rst $18
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

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
    ld a, a
    nop
    ld a, a
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
    rst $08
    ccf
    rst $30
    rrca
    rra
    ldh [$0c], a
    ldh a, [$80]
    rst $38
    ld [hl], b
    rst $38
    ld c, $ff
    inc d
    rst $28
    ld b, h
    ei
    jp nc, $c0fd

    rst $38
    nop
    rst $38
    rst $38
    ld [bc], a
    rst $38
    ret nz

    ld a, a
    ldh a, [$3f]
    rst $38
    ld a, h
    rst $38
    inc a
    rst $38
    ld c, $ff
    rlca
    rst $38
    ld [hl], e
    di
    pop af
    pop af
    rla
    rst $30
    dec de
    rst $38
    ld a, e
    rst $38
    ld l, h
    rst $28
    jr c, @+$01

jr_0bb_4dbe:
    ld a, l
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    rlca
    rst $38
    dec e
    db $fd
    rst $38
    rst $38
    cp a
    cp a
    ld a, [hl]
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    inc bc
    inc bc
    rla
    rlca
    ld d, $06
    rlca
    rlca
    inc bc
    inc bc
    rst $08
    rst $08
    pop hl
    rst $20
    db $e3
    db $e3
    sbc c
    sbc c
    ld [$fe18], sp
    cp $ff
    rst $38
    rst $38
    rst $38
    ld hl, sp-$02
    db $fd
    rst $38
    cp a
    cp a
    ld [hl-], a
    ld a, $73
    ld a, a
    ei
    rst $38
    db $d3
    rst $18
    db $fc
    db $fc
    cp h
    db $fc
    sbc b
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$50
    ldh a, [$d0]
    ldh a, [$b3]
    or e
    ld [hl], c
    ld [hl], c
    cp [hl]
    cp [hl]
    and b
    and b
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
    jr nz, jr_0bb_4dbe

    ld b, b
    ret nz

    ld hl, $17a1
    sub a
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
    jr nz, jr_0bb_4e32

jr_0bb_4e32:
    ld [$1800], sp
    nop
    inc c
    nop
    jr nc, jr_0bb_4e3a

jr_0bb_4e3a:
    nop
    nop
    ld h, d
    nop
    ld h, e
    nop
    ld h, c
    nop
    ld [c], a
    nop
    and a
    nop
    rst $30
    nop
    ld a, [c]
    nop
    or $00
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
    cp $00
    rst $38
    nop
    rst $30
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
    rra
    rst $38
    inc a
    inc bc
    ld a, a
    add b
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ret nz

    ccf
    nop
    rst $38
    ld a, b
    rst $38
    rst $38
    rst $18
    rst $38
    rra
    rst $38
    nop
    rst $38
    add c
    rst $38
    db $f4
    ld a, a
    rst $38
    ld a, c
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add hl, bc
    nop
    ld bc, $4300
    nop
    inc bc
    nop
    inc de
    dec de
    rst $38
    ld e, $fe
    add a
    rst $38
    rst $00
    rst $38
    rst $38
    rst $38
    or e
    or e
    pop af
    pop af
    di
    di
    db $e3
    db $e3
    db $e3
    db $e3
    ret nz

    ret nz

    ret nz

    ret nz

    nop
    add b
    add b
    ret nz

    pop bc
    pop bc
    add b
    add b
    add d
    add d
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
    ret nz

    ret nz

    ret nz

    ret nz

    ldh a, [$f0]
    pop af
    pop af
    ldh [$e0], a
    add b
    add b
    add c
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc c
    inc c
    inc c
    inc c
    nop
    nop
    add b
    add b
    nop
    nop
    ld [$0808], sp
    ld [$0e0e], sp
    rrca
    rrca
    inc bc
    inc bc
    ld c, $0e
    ld de, $1c11
    inc e
    cp [hl]
    cp [hl]
    ret nz

    ret nz

    jr nz, jr_0bb_4f24

    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    jr nc, jr_0bb_4f1e

jr_0bb_4f1e:
    jr nc, jr_0bb_4f20

jr_0bb_4f20:
    inc b
    nop
    inc c
    nop

jr_0bb_4f24:
    inc sp
    nop
    ld bc, $4100
    nop
    pop bc
    nop
    rlc b
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    dec a
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
    ld a, a
    rst $38
    pop af
    rrca
    rst $38
    nop
    inc bc
    db $fc
    nop
    rst $38
    ret nz

    rst $38
    inc bc
    rst $38
    add b
    ld a, a
    ld [$fff7], sp
    ret nz

    rst $38
    db $eb
    rst $38
    cp $ff
    inc bc
    rst $38
    inc b
    rst $38
    ld b, b
    rst $38
    cp $e3
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
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $0a
    ld a, [bc]
    rla
    jr jr_0bb_4fd8

    ld a, [de]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0bb_4ff1

    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

jr_0bb_4fd8:
    ld a, [bc]
    ld a, [bc]
    ld [hl+], a
    inc hl
    inc h
    ld a, [bc]
    dec h
    ld h, $0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    daa
    jr z, jr_0bb_5016

    ld a, [hl+]
    ld a, [bc]
    dec hl
    inc l

jr_0bb_4ff1:
    dec l
    ld l, $2f
    jr nc, jr_0bb_5027

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    add hl, hl
    jr c, jr_0bb_5038

    ld a, [hl-]
    dec sp
    dec sp
    inc a
    dec a
    dec a
    dec a
    dec a
    ld a, $3e
    ld a, $3e
    ccf
    ld b, b
    ld b, c
    nop
    ld b, d
    ld b, e
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a

jr_0bb_5016:
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    nop
    nop
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]

jr_0bb_5027:
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    nop
    nop
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l

jr_0bb_5038:
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
    ld a, [bc]
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
    ld a, [bc]
    ld a, [bc]
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
    ld a, [bc]
    ld a, [bc]
    and [hl]
    and a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
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
    ld bc, $0401
    inc bc
    inc bc
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
    ld bc, $0304
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
    rlca
    ld b, $03
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
    inc bc
    inc bc
    inc bc
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    inc bc
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
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, $06
    ld b, $03
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
    nop
    ld bc, $0601
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
    nop
    nop
    ld bc, $0601
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
    inc bc
    nop
    nop
    ld bc, $0601
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc a
    add b
    sbc a
    add b
    sbc a
    add b
    rst $08
    ret nz

    ld c, a
    ret nz

    ld c, a
    ret nz

    rrca
    ret nz

    adc a
    ret nz

    rst $08
    ret nz

    ld b, a
    ld b, b
    rlca
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
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
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
    nop
    nop
    nop
    nop
    ld d, b
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    jr nz, jr_0bb_524c

jr_0bb_524c:
    nop
    nop
    nop
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
    rlca
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
    ld de, $8000
    nop
    sub a
    nop
    rlc b
    add e
    nop
    pop bc
    nop
    ldh a, [rP1]
    db $fd
    nop
    db $ec
    nop
    cp $00
    jp $e000


    nop
    ei
    nop
    rst $38
    nop
    or [hl]
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
    rst $38
    nop
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
    inc sp
    rrca
    nop
    nop
    ld c, $f0
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    rst $38
    nop
    ccf
    ret nz

    nop
    rst $38
    rst $38
    rst $38
    rst $10
    rst $38
    inc bc
    rst $38
    cp $ff
    rst $38
    inc bc
    rst $38
    nop
    rst $08
    nop
    rst $08
    nop
    ld h, b
    ld h, b
    ld b, b
    ld b, b
    ld bc, $0701
    rlca
    inc bc
    inc bc
    dec b
    dec b
    rla
    rla
    dec de
    dec de
    rrca
    rrca
    rst $38
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    or a
    cp a
    rst $38
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    rst $38
    nop
    rst $38
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
    rra
    nop
    rra
    nop
    rra
    nop
    sbc a
    nop
    sbc a
    nop
    adc a
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop

jr_0bb_5326:
    rrca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rst $00
    nop
    rst $00
    nop
    di
    nop
    di
    nop
    di
    nop
    di
    nop
    di
    nop
    ld hl, $3900
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld a, h
    nop
    cp h
    nop
    db $fc
    nop
    db $fc
    nop
    db $f4
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
    rst $08
    ccf
    inc bc
    nop
    jr c, jr_0bb_5326

    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    rst $38
    nop
    ld [hl], l
    add b
    cp $ff
    rst $38
    rst $38
    ld e, a
    rst $38
    nop
    rst $38
    ldh [rIE], a
    rst $38
    rrca
    rst $38
    nop
    cp a
    nop
    push af
    push af
    rst $18
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    ld a, [$f9fb]
    ld sp, hl
    ret c

    ld hl, sp-$43
    db $fd
    db $fd
    db $fd
    sub e
    ei
    inc de
    ei
    rst $28
    rst $38
    ld e, a
    rst $38
    rst $18
    rst $38
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
    sbc a
    add b
    sbc a
    add b
    sbc a
    adc a
    rst $38
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
    ldh [rNR34], a
    cp $e0
    rra
    ld de, $181f
    rrca
    inc c
    rrca
    ld c, $0f
    rrca
    rrca
    rrca
    rlca
    rlca
    ccf
    rlca
    cp a
    rlca
    rst $38
    inc bc
    ld e, a
    inc bc
    rrca
    inc bc
    cp a
    ld bc, $bf41
    nop
    rst $38
    jr nz, jr_0bb_5413

    or b
    pop af
    ld e, e
    ei
    rst $18
    rst $38
    ld d, a
    rst $38
    add e
    rst $38
    dec b
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
    nop
    rst $38

jr_0bb_5413:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [$1f], a
    nop
    rst $38
    nop
    rst $38
    ld sp, hl
    db $fd
    db $fc
    cp $fc
    cp $c0
    ldh [$80], a
    ret nz

    ld bc, $0080
    add b
    ld bc, $fd01
    ld bc, $0103
    rst $38
    inc bc
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
    add b
    rlca
    add b
    rlca
    ret nz

    inc bc
    ret nz

    ld bc, $00e0
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [$1f], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    add c
    inc a
    nop
    ld c, [hl]
    nop
    ld [de], a
    nop
    sbc $00
    add b
    add b
    cp l
    xor l
    jp Jump_000_00c3


    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ccf
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
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
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
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
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
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $3e
    cp $fe
    cp $fe
    cp $fe
    ld a, [c]
    ld a, [$f101]
    ld bc, $7f01
    ld bc, $0f0f
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
    rra
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
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
    ld [bc], a
    nop
    dec b
    nop
    ld [bc], a
    nop
    dec b
    nop
    add d
    add b
    add l
    add b
    add d
    add b
    add l
    add b
    add d
    add b
    add l
    add b
    add d
    add b
    add l
    add b
    cp $fc
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
    cp [hl]
    nop
    ld a, a
    nop
    cp [hl]
    nop
    ld a, a
    nop
    cp [hl]
    nop
    ld a, a
    nop
    cp [hl]
    nop
    ld a, a
    nop
    cp [hl]
    nop
    ld a, a
    nop
    cp [hl]
    nop
    ld a, a
    nop
    cp $00
    ld a, l
    nop
    cp $00
    ld a, l
    nop
    cp $00
    ld a, l
    nop
    cp $00
    ld a, l
    nop
    cp $00
    ld a, l
    nop
    cp $00
    ld a, l
    nop
    cp $00
    ld a, l
    nop
    ld a, [$7d00]
    nop
    ld a, [$7d00]
    nop
    ld a, [$7d00]
    nop
    ld a, [$7d00]
    nop
    ld a, [$7d00]
    nop
    ld a, [$7d00]
    nop
    ld a, [$7d00]
    nop
    ld a, [$7500]
    nop
    ld a, [$7500]
    nop
    ld a, [$7500]
    nop
    ld a, [$7500]
    nop
    ld a, [$7400]
    nop
    ld a, [$7400]
    nop
    ld a, [$7400]
    nop
    ld [$f400], a
    nop
    ld [$f400], a
    nop
    ld [$f400], a
    nop
    add sp, $00
    db $f4
    nop
    add sp, $00
    db $f4
    nop
    add sp, $00
    db $f4
    nop
    add sp, $00
    db $f4
    nop
    rst $28
    rlca
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
    ld [$d500], a
    nop
    ld [$d500], a
    nop
    ld [$d400], a
    nop
    ld [$d400], a
    nop
    xor d
    nop
    call nc, $aa00
    nop
    call nc, $aa00
    nop
    call nc, $aa00
    nop
    call nc, $a800
    nop
    call nc, $a800
    nop
    call nc, $a800
    nop
    ld d, h
    nop
    xor b
    nop
    ld d, h
    nop
    xor b
    nop
    ld d, h
    nop
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
    ld d, b
    nop
    xor b
    nop
    ld d, b
    nop
    xor b
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
    and b
    nop
    ld d, c
    ld bc, $01a1
    ld d, c
    nop
    and c
    nop
    ld b, c
    ld bc, $00a0
    ld b, c
    ld bc, $02a2
    ld b, b
    nop
    and e
    inc bc
    ld b, e
    inc bc
    and e
    inc bc
    ld b, c
    ld bc, $03a3
    ld b, e
    inc bc
    add a
    rlca
    ld b, e
    inc bc
    add a
    rlca
    ld b, a
    ld b, $81
    rlca
    ld b, b
    rlca
    add h
    nop
    ld b, a
    nop
    add c
    ld bc, $0f08
    add e
    rrca
    ld bc, $800f
    rrca
    nop
    rrca
    add b
    ld c, $00
    rrca
    add b
    ld e, $00
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
    jr jr_0bb_57c9

    ccf
    jr nz, jr_0bb_57d1

    jr c, jr_0bb_57c9

    jr c, @+$05

    jr c, @+$05

    jr nc, jr_0bb_57a3

    jr nc, jr_0bb_57a5

    jr nz, jr_0bb_57af

    dec l
    ld c, $3f

jr_0bb_57a3:
    inc a
    ccf

jr_0bb_57a5:
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

jr_0bb_57af:
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
    db $fc
    db $fc
    ldh [$e0], a
    nop
    nop
    nop

jr_0bb_57c9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0bb_57d1:
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
    ld de, $2100
    nop
    rst $38
    inc b
    rst $38
    nop
    db $fd
    nop
    db $fd
    ld h, d
    rst $38
    ld e, b
    rst $38
    ld [hl], $bf
    ld e, a
    rst $18
    ld e, $ff
    sbc a
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    ccf
    ld a, a
    dec bc
    db $eb
    rra
    rst $38
    rst $08
    rst $38
    ld c, [hl]
    xor $b4
    or $f3
    ei
    rst $38
    rst $38
    rra
    rst $18
    add hl, bc
    rst $38
    jr nz, @+$01

    dec e
    db $e3
    ld a, [de]
    db $fd
    ld a, c
    rst $38
    rrca
    rrca
    db $fd
    ld bc, $03fa
    db $ec
    rrca
    sbc $1f
    ccf
    ccf
    nop
    nop
    nop
    nop
    ld a, [$c0f8]
    ret nz

    ld bc, $0201
    inc bc
    ld bc, $0001
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld a, h
    db $fc
    cp $fe
    cp h
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ld l, a
    ldh [$df], a
    call nz, Call_000_1c25
    rst $00
    inc a
    ret nz

    cp $80
    cp $20
    ld a, $b9
    ccf
    db $eb
    db $eb
    rla
    sub a
    adc l
    db $fd
    rst $00
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    cp a
    rst $38
    rra
    rra
    rrca

jr_0bb_5861:
    rrca
    rrca
    rrca
    ld c, $0e
    ld c, $0e
    dec b
    dec b
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    ld [$1020], sp
    ld b, b
    jr nc, jr_0bb_58bb

    jr nc, @-$3e

    jr nz, @-$3e

    jr nz, jr_0bb_5861

    ccf
    add b
    rlca
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fc
    ldh [$e0], a
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

jr_0bb_58bb:
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
    ld c, $00
    ld e, $00
    inc a
    nop
    ld a, b
    nop
    ld a, b
    ld bc, $03ff
    rst $38
    nop
    rst $38
    inc e
    rst $38
    inc b
    rst $30
    call c, Call_0bb_5cff
    ld a, a
    jr nc, @+$01

    nop
    rst $28
    ld b, b
    rst $38
    sub b
    rst $38
    ld d, $ff
    rlca
    rst $38
    cp h
    rst $38
    sub h
    rst $38
    jr nc, @+$01

    ld h, b
    rst $38
    ret nc

    rst $38
    ldh a, [rIE]
    pop af
    rst $38
    add d
    rst $38
    db $db
    rst $38
    ld e, a
    ld a, a
    rst $38
    rst $38
    cp [hl]
    cp a
    ld a, $3f
    rst $38
    rst $38
    db $fc
    db $fc
    ldh a, [$f0]
    db $fc
    db $fc
    db $fc
    db $fc
    db $e4
    db $e4
    di
    ei
    ld d, d
    rst $38
    sbc a
    rst $38
    ld a, $fe
    ld a, $ce
    rrca
    rst $30
    add [hl]
    ei
    add e
    db $fd
    rst $38
    ld bc, $019f
    ld a, l
    ld a, l
    sub e
    rst $38
    add hl, bc
    rst $38
    ld b, $ff
    add hl, bc
    rst $38
    sub e
    cp $fc
    add e
    ld hl, sp-$01
    ld hl, sp-$01
    ret nc

    rst $18
    rra
    rra
    ccf
    ccf
    ccf
    dec a
    cp $07
    cp [hl]
    cpl
    ld a, [hl]
    rrca
    ei
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
    rst $38
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    rst $30
    rst $30
    db $db
    db $db
    db $e3
    db $e3
    rst $30
    rst $30
    rst $38
    rst $38
    rst $30
    rst $30
    ldh a, [$f0]
    jp nc, $92d2

    sub d
    dec c
    dec c
    rrca
    rrca
    add b
    add b
    ld bc, $01c1
    pop af
    ld [hl], b
    ld hl, sp-$1f
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
    db $e4
    rra
    sbc a
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
    ld sp, hl
    ld hl, sp-$07
    ld hl, sp-$1d
    ldh [$c3], a
    ret nz

    add e
    add b
    inc bc
    nop
    inc bc
    nop
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    pop hl
    rlca
    ldh [rIF], a
    ldh [rIF], a
    ret nz

    rra
    ret nz

    rra
    rst $08
    rra
    call z, $881f
    rra
    sbc b
    rra
    sbc b
    rra
    jr jr_0bb_59dc

    jr jr_0bb_59de

    ld sp, $303f
    rra
    ld a, a
    inc e
    rst $38
    ld b, $ff
    inc bc
    rst $38
    rlca
    rst $38
    ld c, $ff
    ld c, $ff
    ld a, [$2bfa]
    ld a, a
    or b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_0bb_59dc:
    nop
    rst $38

jr_0bb_59de:
    nop
    rst $38
    nop
    rst $38
    add c
    rst $38
    add e
    rst $38
    db $e3
    rst $38
    and l
    cp l
    and l
    or a
    dec d
    scf
    sub e
    or e
    add [hl]
    add [hl]
    pop bc
    pop bc
    jp $88c3


    adc b
    call nc, $ecc4
    db $ec
    sbc a
    sbc a
    rst $10
    rst $10
    rst $38
    rst $38
    cp a
    rst $38
    cpl
    rst $28
    rst $38
    rst $38
    xor d
    cp d
    jp hl


    ld sp, hl
    db $db
    rst $38
    ld h, [hl]
    ld a, [hl]
    and $fe
    pop hl
    rst $38
    ld h, b
    rst $38
    pop af
    rst $38
    ld a, [$edfe]
    rst $38
    ld [hl], l
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, e
    ei
    dec sp
    ei
    rra
    rst $38
    dec e
    db $ed
    inc de
    rst $28
    ld a, b
    rst $08
    adc $bf
    adc $7f
    and $ff
    ldh [rIE], a
    db $d3
    rst $18
    di
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $10
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
    db $fd
    db $fc
    ld a, [hl]
    ld a, h
    ld a, b
    ld a, b
    ld hl, sp-$08
    db $fc
    ld hl, sp-$02
    ld hl, sp-$29
    ret nc

    dec [hl]
    jr nc, @+$01

    ldh a, [$9f]
    sub b
    xor a
    and b
    rst $08
    ret nz

    rst $18
    ret nz

    db $db
    ret nz

    db $eb
    ldh [$df], a
    ret nz

    rst $18
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ccf
    nop
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    ld a, a
    nop
    ld a, a
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
    rst $08
    ccf
    rst $30
    rrca
    rra
    ldh [$0c], a
    ldh a, [$80]
    rst $38
    ld [hl], b
    rst $38
    ld c, $ff
    inc d
    rst $28
    ld b, h
    ei
    jp nc, $c0fd

    rst $38
    nop
    rst $38
    rst $38
    ld [bc], a
    rst $38
    ret nz

    ld a, a
    ldh a, [$3f]
    rst $38
    ld a, h
    rst $38
    inc a
    rst $38
    ld c, $ff
    rlca
    rst $38
    ld [hl], e
    di
    pop af
    pop af
    rla
    rst $30
    dec de
    rst $38
    ld a, e
    rst $38
    ld l, h
    rst $28
    jr c, @+$01

jr_0bb_5ace:
    ld a, l
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    rlca
    rst $38
    dec e
    db $fd
    rst $38
    rst $38
    cp a
    cp a
    ld a, [hl]
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    inc bc
    inc bc
    rla
    rlca
    ld d, $06
    rlca
    rlca
    inc bc
    inc bc
    rst $08
    rst $08
    pop hl
    rst $20
    db $e3
    db $e3
    sbc c
    sbc c
    ld [$fe18], sp
    cp $ff
    rst $38
    rst $38
    rst $38
    ld hl, sp-$02
    db $fd
    rst $38
    cp a
    cp a
    ld [hl-], a
    ld a, $73
    ld a, a
    ei
    rst $38
    db $d3
    rst $18
    db $fc
    db $fc
    cp h
    db $fc
    sbc b
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$50
    ldh a, [$d0]
    ldh a, [$b3]
    or e
    ld [hl], c
    ld [hl], c
    cp [hl]
    cp [hl]
    and b
    and b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    nop
    add b
    jr nz, jr_0bb_5ace

    ld b, b
    ret nz

    ld hl, $97a1
    sub a
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
    jr nz, jr_0bb_5b42

jr_0bb_5b42:
    ld [$1800], sp
    nop
    inc c
    nop
    jr nc, jr_0bb_5b4a

jr_0bb_5b4a:
    nop
    nop
    ld h, d
    nop
    ld h, e
    nop
    pop hl
    nop
    ld [c], a
    nop
    and a
    nop
    rst $30
    nop
    ld a, [c]
    nop
    or $00
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
    cp $00
    rst $38
    nop
    rst $30
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
    rra
    rst $38
    inc a
    inc bc
    ld a, a
    add b
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ret nz

    ccf
    nop
    rst $38
    ld a, b
    rst $38
    rst $38
    rst $18
    rst $38
    rra
    rst $38
    nop
    rst $38
    add c
    rst $38
    db $f4
    ld a, a
    rst $38
    ld a, c
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add hl, bc
    nop
    ld bc, $4300
    nop
    inc bc
    nop
    inc de
    dec de
    rst $38
    ld e, $fe
    add a
    rst $38
    rst $00
    rst $38
    rst $38
    rst $38
    or e
    or e
    pop af
    pop af
    di
    di
    db $e3
    db $e3
    db $e3
    db $e3
    ret nz

    ret nz

    ret nz

    ret nz

    nop
    add b
    add b
    ret nz

    pop bc
    pop bc
    add b
    add b
    add d
    add d
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
    ret nz

    ret nz

    ret nz

    ret nz

    ldh a, [$f0]
    pop af
    pop af
    ldh [$e0], a
    add b
    add b
    add c
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc c
    inc c
    inc c
    inc c
    nop
    nop
    add b
    add b
    nop
    nop
    ld [$0808], sp
    ld [$0e0e], sp
    rrca
    rrca
    inc bc
    inc bc
    ld c, $0e
    ld de, $1c11
    inc e
    cp [hl]
    cp [hl]
    ret nz

    ret nz

    jr nz, jr_0bb_5c34

    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    jr nc, jr_0bb_5c2e

jr_0bb_5c2e:
    jr nc, jr_0bb_5c30

jr_0bb_5c30:
    inc b
    nop
    inc c
    nop

jr_0bb_5c34:
    inc sp
    nop
    ld bc, $4100
    nop
    pop bc
    nop
    rlc b
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    dec a
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
    ld a, a
    rst $38
    pop af
    rrca
    rst $38
    nop
    inc bc
    db $fc
    nop
    rst $38
    ret nz

    rst $38
    inc bc
    rst $38
    add b
    ld a, a
    ld [$fff7], sp
    ret nz

    rst $38
    db $eb
    rst $38
    cp $ff
    inc bc
    rst $38
    inc b
    rst $38
    ld b, b
    rst $38
    cp $e3
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
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
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
    jr jr_0bb_5ce3

    ld a, [bc]
    ld a, [bc]
    ld a, [de]
    dec de
    inc e
    dec e
    nop
    nop
    nop
    ld e, $1f
    jr nz, jr_0bb_5cf8

    ld [hl+], a
    ld a, [bc]
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0bb_5d09

    nop
    nop
    nop

jr_0bb_5ce3:
    nop
    nop
    nop
    nop
    ld a, [hl+]
    ld e, $2b
    inc l
    dec l
    ld l, $0a
    cpl
    jr nc, jr_0bb_5cf1

jr_0bb_5cf1:
    nop
    nop
    nop
    ld sp, $3332
    inc [hl]

jr_0bb_5cf8:
    dec [hl]
    ld [hl], $37
    jr c, jr_0bb_5d36

    ld a, [hl-]
    ld a, [bc]

Call_0bb_5cff:
    dec sp
    nop
    nop
    nop
    nop
    inc a
    dec a
    ld a, $3f
    ld b, b

jr_0bb_5d09:
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    nop
    nop
    nop
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld b, h
    ld b, h
    ld b, h
    ld c, a
    nop
    ld d, b
    nop
    nop
    nop
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
    ld c, a
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, e
    ld e, h

jr_0bb_5d36:
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    inc bc
    jr c, jr_0bb_5dbd

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, [bc]
    ld a, c
    ld a, d
    ld a, e
    nop
    nop
    nop
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    ld a, [bc]
    ld a, [bc]
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
    ld a, [bc]
    ld a, [bc]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0bb_5dbd:
    nop
    nop
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
    inc bc
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
    ld bc, $0401
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
    nop
    nop
    ld bc, $0304
    inc bc
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
    rlca
    ld b, $03
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
    inc bc
    nop
    nop
    inc bc
    nop
    inc bc
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
    inc bc
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
    inc bc
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
    inc bc
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, $06
    ld b, $03
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
    nop
    ld bc, $0601
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
    nop
    nop
    ld bc, $0601
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
    nop
    nop
    ld bc, $0601
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    cp $ff
    rst $38
    ld a, d
    ld a, [$fefe]
    ld l, l
    db $fd
    ld e, e
    db $db
    jr c, @-$06

    cp h
    db $fc
    ret nz

    ret nz

    ld b, b
    ld b, b
    ld [bc], a
    ld [bc], a
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    rrca
    rrca
    inc bc
    inc bc
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
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $5000
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    jr nz, jr_0bb_5f5c

jr_0bb_5f5c:
    nop
    nop
    nop
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
    rlca
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
    ld de, $8000
    nop
    sub a
    nop
    rlc b
    add e
    nop
    pop bc
    nop
    ldh a, [rP1]
    db $fd
    nop
    db $ec
    nop
    cp $00
    jp $e000


    nop
    ei
    nop
    rst $38
    nop
    or [hl]
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
    rst $38
    nop
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
    inc sp
    rrca
    nop
    nop
    ld c, $f0
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    rst $38
    nop
    ccf
    ret nz

    nop
    rst $38
    rst $38
    rst $38
    rst $10
    rst $38
    inc bc
    rst $38
    cp $ff
    rst $38
    inc bc
    rst $38
    nop
    rst $08
    nop
    rst $08
    nop
    ld h, b
    ld h, b
    ld b, b
    ld b, b
    ld bc, $0701
    rlca
    inc bc
    inc bc
    dec b
    dec b
    rla
    rla
    dec de
    dec de
    rrca
    rrca
    rst $38
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    or a
    cp a
    rst $38
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld a, b
    nop
    ld a, b
    nop
    ld a, b
    nop
    ld a, b
    nop
    ld hl, sp-$80
    db $fc
    add b
    db $fc
    add b
    db $fc
    ret nz

    db $fc
    ret nz

    db $fc
    ret nz

    cp $c0
    cp $e0
    ld a, [hl]
    ld h, b
    ld a, $20
    ld a, $20
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rrca
    nop
    rlca
    nop
    rst $10
    nop
    rla
    nop
    ld b, a
    nop
    rst $00
    nop
    ld [hl], e
    nop
    inc bc
    nop
    inc hl
    nop
    dec de
    nop
    add e
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    db $10
    db $10
    db $10
    db $10
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    ret nz

    nop
    add b
    nop
    adc b
    nop
    ld a, [bc]
    nop
    dec de
    nop
    inc bc
    nop
    ld [bc], a
    nop

jr_0bb_6066:
    ld sp, $1200
    nop
    rrca
    nop
    ld c, $00
    rst $08
    nop
    rst $00
    nop
    cp $00
    rst $38
    nop
    ei
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    inc h
    nop
    inc a
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    cp a
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
    rst $38
    nop
    rst $08
    ccf
    inc bc
    nop
    jr c, jr_0bb_6066

    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    rst $38
    nop
    ld [hl], l
    add b
    cp $ff
    rst $38
    rst $38
    ld e, a
    rst $38
    nop
    rst $38
    ldh [rIE], a
    rst $38
    rrca
    rst $38
    nop
    cp a
    nop
    push af
    push af
    rst $18
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    ld a, [$f9fb]
    ld sp, hl
    ret c

    ld hl, sp-$43
    db $fd
    db $fd
    db $fd
    sub e
    ei
    inc de
    ei
    rst $28
    rst $38
    ld e, a
    rst $38
    rst $18
    rst $38
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
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld a, b
    nop
    ld a, b
    nop
    ld a, b
    nop
    ld a, b
    nop
    ld a, b
    nop
    ld a, h
    nop
    db $fc
    nop
    inc a
    nop
    inc a
    nop
    inc a
    nop
    cp $00
    cp $00
    ld a, [hl]
    nop
    ld a, [hl]
    nop
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
    rst $38
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
    rst $38
    ldh [$1f], a
    db $10
    rra
    jr jr_0bb_6176

    inc c
    rrca
    ld c, $0f
    rrca
    rrca
    rrca
    rlca
    rlca
    ccf
    rlca
    cp a
    rlca
    rst $38
    inc bc

jr_0bb_6176:
    ld e, a
    inc bc
    rrca
    inc bc
    cp a
    ld bc, $bf41
    nop
    rst $38
    jr nz, jr_0bb_61a3

    or b
    pop af
    ld e, e
    ei
    rst $18
    rst $38
    ld d, a
    rst $38
    add e
    rst $38
    dec b
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
    rst $28
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

jr_0bb_61a3:
    nop
    nop
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
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
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
    cp $ff
    cp $fe
    rst $38
    cp $fd
    cp $fd
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    nop
    ldh [rP1], a
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
    ldh [rP1], a
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
    ret nz

    ccf
    ld hl, sp+$07
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
    add b
    rlca
    add b
    rlca
    ret nz

    inc bc
    ret nz

    ld bc, $00e0
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$c0]
    add a
    rst $38
    inc bc
    ld a, a
    ld b, e
    ccf
    ld h, [hl]
    ccf
    jr nc, jr_0bb_6243

    db $10
    rra
    ld [$010f], sp
    ld c, $12
    dec e
    inc e
    dec de
    jr nc, @+$21

    jr nz, jr_0bb_6271

    jr nz, jr_0bb_6273

    nop
    ccf
    ld h, b
    ld a, a
    ld h, b
    ccf
    ld h, b
    ccf
    ld h, b
    ccf
    ld h, b
    cpl
    ld h, b
    ld l, a
    ld h, b

jr_0bb_6243:
    ld h, a
    ldh [$27], a
    ldh a, [$81]
    ldh a, [$c0]
    and $67
    ldh [$87], a
    ldh a, [$c7]
    ld hl, sp-$19
    ldh a, [$f7]
    db $f4
    rst $30
    ld [hl], h
    ld [hl], a
    ld [hl], b
    ld [hl], a
    ld a, b
    ld a, e
    add hl, sp
    dec sp
    dec bc
    dec sp
    dec a
    dec a
    ld [hl-], a
    ld e, $21
    ccf
    ldh [$cf], a
    ret nz

    rst $00
    sbc b
    add e
    sbc h
    jp $f304


    nop

jr_0bb_6271:
    cp a
    nop

jr_0bb_6273:
    ccf
    add b
    rra
    ret nz

    rra
    ldh [rTAC], a
    jr jr_0bb_6283

    nop
    add a
    nop
    db $e3
    nop
    nop
    nop

jr_0bb_6283:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $8100
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
    ldh [$1f], a
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
    ccf
    nop
    ccf
    nop
    inc bc
    nop
    inc b
    inc bc
    ld e, $01
    daa
    jr jr_0bb_62c9

jr_0bb_62c9:
    ccf
    jp $c0ff


    rst $38
    ldh [rIE], a
    jr c, jr_0bb_6319

    rlca
    ld [$0201], sp
    ld [hl], b
    add c
    adc a
    nop
    ld bc, $0002
    inc bc
    nop
    jr c, jr_0bb_62e1

jr_0bb_62e1:
    jr jr_0bb_62e3

jr_0bb_62e3:
    inc e
    inc e
    ld [bc], a
    ld c, $11
    ld a, [de]
    dec h
    inc e
    inc bc
    nop
    rra
    nop
    rra
    ld a, a
    rst $08
    ccf
    ldh a, [rNR22]
    rst $38
    ld bc, $21ff
    ld a, a
    ld sp, $00ff
    rst $38
    ld [bc], a
    rst $38
    nop
    nop
    nop
    ld b, $00
    rrca
    nop
    rla
    nop
    jr nz, jr_0bb_630b

jr_0bb_630b:
    nop
    nop
    sub c
    nop
    rst $38
    rst $38
    ret nz

    ld a, a
    ld h, b
    rrca
    ld a, c
    add b
    rst $38
    ld h, b

jr_0bb_6319:
    rst $38
    db $10
    rst $38
    ld c, $fe
    ld bc, $00ff
    inc bc
    nop
    rlca
    nop
    rrca
    nop
    rrca
    nop
    ccf
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rra
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
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
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    nop
    ld sp, $0000
    nop
    add b
    nop
    nop
    jr nz, jr_0bb_639b

jr_0bb_639b:
    add b
    nop
    ldh [rP1], a
    inc c
    inc bc
    nop
    inc e
    ldh [$f0], a
    nop
    rst $08
    nop
    ld hl, sp+$06
    add b
    ld h, [hl]
    nop
    nop
    stop
    jr c, jr_0bb_63b2

jr_0bb_63b2:
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
    add b
    nop
    add b
    ldh a, [rP1]
    nop
    pop hl
    inc bc
    add h
    rlca
    dec bc
    rrca
    dec d
    rra
    ld l, [hl]
    rrca
    dec [hl]
    rlca
    inc de
    inc bc
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
    jr nz, jr_0bb_63dd

jr_0bb_63dd:
    ld [bc], a
    nop
    add d
    call nz, $f0ff
    rst $38
    and b
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fc
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
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    nop
    jr c, @-$3e

    call z, $0638
    ld hl, sp+$0f
    ldh a, [$39]
    rst $00
    rrca
    rst $38
    rra
    ldh [$7f], a
    ldh [$bf], a
    nop
    ld e, $21
    inc c
    ld [hl], d
    adc b
    ld [hl], h
    ld h, b
    dec e
    db $10
    inc l
    jr @+$09

jr_0bb_643e:
    inc c
    ld [de], a
    ld [$0004], sp
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    jr c, jr_0bb_644d

jr_0bb_644d:
    inc e
    nop
    nop
    nop
    nop
    nop
    ld a, a
    ldh [rNR34], a
    ldh a, [$ec]
    ld hl, sp-$2a
    db $fc
    ld a, [hl-]
    ld hl, sp-$2a
    ld hl, sp-$1c
    rst $38
    inc bc
    ccf
    ldh a, [$7f]
    ldh a, [$3f]
    rst $20
    cp e
    srl c
    reti


    jr nc, jr_0bb_643e

    ld h, b
    ldh [$e0], a
    ld [c], a
    ld b, b
    rst $08
    ret nz

    rst $08
    nop
    rrca
    nop
    rrca
    nop
    rrca
    ld hl, sp-$01
    ld hl, sp-$01
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp-$08
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $18
    ret nc

    rst $18
    ret nz

    rst $18
    db $e3
    rst $38
    db $e4
    db $fc
    ldh [$e0], a
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
    nop
    ldh a, [$80]
    ret z

    ld [hl], b
    ld hl, sp+$70
    ld hl, sp-$10
    ret c

    ldh a, [$cc]
    ld hl, sp-$72
    db $fc
    rst $38
    db $fc
    rst $08
    ld a, [hl]
    sbc c
    rst $38
    rrca
    rst $38
    nop
    rrca
    nop
    rra
    ld bc, $030e
    inc b
    inc bc
    nop
    ld [bc], a
    ld bc, $0700
    nop
    inc bc
    nop
    rlca
    rlca
    nop
    inc bc
    ld b, h
    nop
    ld c, a
    nop
    ld c, a
    inc e
    add e
    rlca
    cp b
    inc bc
    ld a, h
    db $fc
    db $fc
    ei
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $28
    rst $28
    ld [hl], a
    ld [hl], a
    rlca
    add a
    ld [bc], a
    ld [c], a
    nop
    ldh a, [rP1]
    pop bc
    nop
    ret nz

    nop
    ret nz

    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    ld c, $1e
    ld bc, $1e00

jr_0bb_6516:
    nop
    nop

jr_0bb_6518:
    nop
    nop
    nop
    nop
    inc bc
    nop
    rlca
    nop
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
    ld a, b
    nop
    jr nc, jr_0bb_6531

jr_0bb_6531:
    rst $38
    add b
    rst $38
    ld b, b
    ld a, a
    dec e
    rra
    db $e3
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
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
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    add b
    add b
    ret nz

    add b
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rP1], a
    ldh [$60], a
    ldh [$e0], a
    ldh a, [$e0]
    ld hl, sp-$10
    ldh a, [$c0]
    ldh a, [$80]
    ldh a, [$30]
    ldh a, [$e0]
    ldh a, [$e0]
    ld hl, sp-$40
    db $ec
    nop
    ret c

    db $10
    ld a, h
    ld h, b
    cp b
    add b
    db $ec
    nop
    add sp, $20
    call nc, $d8c0
    ret nz

    sub b
    add b
    sbc b
    add b
    jr nc, jr_0bb_6592

jr_0bb_6592:
    jr nz, jr_0bb_6594

jr_0bb_6594:
    jr nc, jr_0bb_6516

    jr nz, jr_0bb_6518

    ld [hl], b
    nop
    ld h, b
    add b
    ret nz

    add b
    ldh [$80], a
    add b
    add b
    cp $fe
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    ccf
    rst $38
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
    rra
    nop
    rra
    nop
    rrca
    nop
    rrca
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
    db $fc
    db $fc
    ldh [$e0], a
    nop
    inc bc
    nop
    inc bc
    nop
    rlca
    nop
    ld c, $00
    ld e, $00
    inc a
    nop
    ld a, b
    nop
    ld a, b
    nop
    nop
    nop
    nop
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
    ld sp, hl
    ld hl, sp-$07
    ld hl, sp-$1d
    ldh [$c3], a
    ret nz

    add e
    add b
    inc bc
    nop
    inc bc
    nop
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    pop hl
    rlca
    ldh [rIF], a
    ldh [rIF], a
    ret nz

    rra
    ret nz

    rra
    rst $08
    rra
    call z, $881f
    rra
    sbc b
    rra
    sbc b
    rra
    jr jr_0bb_664c

    jr jr_0bb_664e

    ld sp, $303f
    rra
    ld a, a
    inc e
    rst $38
    ld b, $ff
    inc bc
    rst $38
    rlca
    rst $38
    ld c, $ff
    ld c, $ff
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc

jr_0bb_664c:
    inc bc
    inc bc

jr_0bb_664e:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec c
    inc c
    inc c
    inc c
    ld [$0808], sp
    ld [$1818], sp
    ld a, [de]
    jr jr_0bb_667e

    db $10
    dec d
    db $10
    scf
    jr nc, jr_0bb_66a4

    jr nc, @+$31

    jr nz, @+$31

    jr nz, @+$71

    ld h, b
    ld l, e
    ld h, b
    rst $18
    ret nz

    rst $18
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

jr_0bb_667e:
    rst $38
    ret nz

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
    ld a, a
    nop
    ld a, a
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
    rst $08
    ccf
    rst $30
    rrca
    rra
    ldh [$0c], a
    ldh a, [$80]
    rst $38
    ld [hl], b
    rst $38

jr_0bb_66a4:
    ld c, $ff
    inc d
    rst $28
    ld b, h
    ei
    jp nc, $c0fd

    rst $38
    nop
    rst $38
    rst $38
    ld [bc], a
    rst $38
    ret nz

    ld a, a
    ldh a, [$3f]
    rst $38
    ld a, h
    rst $38
    inc a
    rst $38
    ld c, $ff
    rlca
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    inc c
    inc c
    ld [$0808], sp
    ld [$0808], sp
    jr jr_0bb_66fe

    db $10
    db $10
    db $10
    db $10
    inc sp
    inc sp
    ld sp, $2e31
    ld l, $20
    jr nz, jr_0bb_6733

    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    add b
    add b
    add b
    add b

jr_0bb_66fe:
    add b
    add b
    and c
    and c
    sub a
    sub a
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
    jr nz, jr_0bb_6712

jr_0bb_6712:
    ld [$1800], sp
    nop
    inc c
    nop
    jr nc, jr_0bb_671a

jr_0bb_671a:
    nop
    nop
    ld h, d
    nop
    ld h, e
    nop
    ld h, c
    nop
    ld [c], a
    nop
    and a
    nop
    rst $30
    nop
    ld a, [c]
    nop
    or $00
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_0bb_6733:
    nop
    rst $38
    nop
    cp $00
    rst $38
    nop
    rst $30
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
    rra
    rst $38
    inc a
    inc bc
    ld a, a
    add b
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ret nz

    ccf
    nop
    rst $38
    ld a, b
    rst $38
    rst $38
    rst $18
    rst $38
    rra
    rst $38
    nop
    rst $38
    add c
    rst $38
    db $f4
    ld a, a
    rst $38
    ld a, c
    rst $38
    ld hl, sp-$01
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec c
    dec c
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    dec de
    dec de
    rla
    rla
    rla
    rla
    inc de
    inc de
    ld sp, $2331
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    pop bc
    pop bc
    add b
    add b
    add d
    add d
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
    ret nz

    ret nz

    ret nz

    ret nz

    ldh a, [$f0]
    pop af
    pop af
    ldh [$e0], a
    add b
    add b
    add c
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc c
    inc c
    inc c
    inc c
    nop
    nop
    add b
    add b
    nop
    nop
    ld [$0808], sp
    ld [$0e0e], sp
    rrca
    rrca
    inc bc
    inc bc
    ld c, $0e
    ld de, $1c11
    inc e
    cp [hl]
    cp [hl]
    ret nz

    ret nz

    jr nz, jr_0bb_6804

    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    jr nc, jr_0bb_67fe

jr_0bb_67fe:
    jr nc, jr_0bb_6800

jr_0bb_6800:
    inc b
    nop
    inc c
    nop

jr_0bb_6804:
    inc sp
    nop
    ld bc, $4100
    nop
    pop bc
    nop
    rlc b
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    dec a
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
    ld a, a
    rst $38
    pop af
    rrca
    rst $38
    nop
    inc bc
    db $fc
    nop
    rst $38
    ret nz

    rst $38
    inc bc
    rst $38
    add b
    ld a, a
    ld [$fff7], sp
    ret nz

    rst $38
    db $eb
    rst $38
    cp $ff
    inc bc
    rst $38
    inc b
    rst $38
    ld b, b
    rst $38
    cp $e3
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    ld [$0a09], sp
    dec bc
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
    dec c
    dec c
    dec c
    ld c, $0f
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
    dec c
    dec c
    dec c
    dec c
    ld de, $0012
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    dec c
    dec c
    inc de
    inc d
    dec d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, $17
    jr jr_0bb_692d

    ld a, [de]
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
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0bb_6947

    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0bb_692d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0bb_6947:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0303
    inc bc
    inc bc
    ld bc, HeaderLogo
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    inc bc
    nop
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
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
    ld b, c
    rst $18
    inc de
    rst $18
    rla
    rst $18
    add a
    rst $08
    sub d
    cp $e2
    xor $c3
    rst $18
    di
    rst $38
    ld [c], a
    cp $c9
    rst $38
    add hl, hl
    ccf
    sbc b
    sbc a
    add b

jr_0bb_6af9:
    add a
    add b
    add a
    ret nz

    rst $00
    call nz, $c0c7
    jp $c3c4


    add d
    add e
    add b
    add c
    ld bc, $0001
    nop
    inc b
    nop
    nop
    nop
    add b
    nop
    sbc a
    nop
    rst $28
    nop
    rst $10
    nop
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
    jr c, jr_0bb_6b35

    ld a, h
    add b
    rlca
    rst $38
    ret nc

    rst $38
    add b

jr_0bb_6b35:
    rst $38
    rst $38
    rst $38
    rst $38
    nop

jr_0bb_6b3a:
    rst $08
    nop

jr_0bb_6b3c:
    add c
    nop
    nop
    nop
    rra
    nop
    rrca
    nop
    adc a
    add b
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
    add a
    add b
    rlca
    nop
    rlca
    nop
    add e
    add b
    add e
    add b
    jp $c3c0


    ret nz

jr_0bb_6b5e:
    ld b, e
    ret nz

    db $e3
    ldh [$73], a
    ldh a, [$73]
    ldh a, [$31]
    ldh a, [$39]
    ld hl, sp-$48
    ld hl, sp+$78
    ld a, b
    sbc b
    jr jr_0bb_6af9

    ld [$00e0], sp
    ldh a, [rP1]
    cp l
    nop
    cp a
    jr nz, jr_0bb_6b3a

    jr nc, jr_0bb_6b3c

    jr c, jr_0bb_6b5e

    inc e
    rst $18
    rra
    rst $18
    rra
    rst $18
    rra
    adc $0f
    ret z

    rrca
    db $ec
    rlca
    xor $07
    rst $28
    inc bc
    rrca
    inc c
    rrca
    ld c, $0f
    rrca
    rrca
    rrca
    rrca
    adc a
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
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

    rrca
    ret nz

    ld bc, $1800
    nop
    ld c, $00
    nop
    rla
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
    ccf
    rst $38
    rrca
    db $fd
    ld bc, $00fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add hl, de
    add c
    sbc c
    add c
    sbc c
    add c
    sbc c
    add c
    sbc c
    add c
    sbc c
    add c
    inc sp
    inc bc
    inc sp
    inc bc
    inc sp
    inc bc
    inc sp
    inc bc
    ld [hl-], a
    ld [bc], a
    nop
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    db $fd
    nop
    cp $00
    rst $38
    nop
    cp $00
    rst $30
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
    rst $38
    cp $fe
    ld hl, sp-$08
    ldh a, [$f0]
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    cp $00
    cp $00
    cp $00
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ld sp, hl
    ld bc, $01f1
    di
    inc bc
    rst $30
    rlca
    rst $20
    rlca
    db $e3
    inc bc
    rst $08
    rrca
    rst $08
    rrca
    adc [hl]
    rrca
    adc h
    rrca
    inc c
    rrca
    jr jr_0bb_6c79

    ld a, [de]
    rra
    ld a, $3e
    ld a, h
    ld a, [hl]
    jr @+$1e

    ld [hl], c
    ld [hl], b
    inc bc
    nop
    ld d, $00
    cp h
    nop
    ld hl, sp+$00
    ld a, c
    ld [$18f8], sp
    ld a, [$fb38]
    ld hl, sp-$09
    ldh a, [$f7]
    ldh a, [$f7]

jr_0bb_6c79:
    ldh a, [$e7]
    ldh [$e7], a
    ldh [$cf], a
    ret nz

    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    inc bc
    ret nz

    nop
    ret nz

    ccf
    add b
    ccf
    and b
    ld a, a
    nop
    nop
    ccf
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, c
    ld a, a
    ld h, c
    ld a, a
    ld h, c
    ld a, a
    ld h, e
    ld a, a
    db $e3
    rst $38
    rst $00
    rst $38
    add a
    rst $38
    add a
    rst $38
    adc [hl]
    cp $0c
    db $fc
    inc e
    db $fc
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    add hl, sp
    ld sp, hl
    ld [hl], b
    ldh a, [$60]
    ldh [rSTAT], a
    pop bc
    inc bc
    inc bc
    rrca
    rrca
    adc c
    add hl, bc
    add c
    ld bc, $0000
    jr nz, jr_0bb_6ce8

    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    add a
    nop
    adc l
    nop
    cp $00
    cp $00
    db $fd
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
    ld a, a
    rst $38

jr_0bb_6ce8:
    db $fc
    inc bc
    rrca
    ldh a, [rP1]
    rst $38
    sub b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    ld [$0a09], sp
    dec bc
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
    dec c
    dec c
    dec c
    ld c, $0f
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
    dec c
    dec c
    dec c
    dec c
    ld de, $0012
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    dec c
    dec c
    inc de
    inc d
    dec d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, $17
    jr jr_0bb_6dcd

    ld a, [de]
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
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0bb_6de7

    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0bb_6dcd:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0bb_6de7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0303
    inc bc
    inc bc
    ld bc, HeaderLogo
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    inc bc
    nop
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
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
    ld b, c
    rst $18
    inc de
    rst $18
    rla
    rst $18
    add a
    rst $08
    sub d
    cp $e2
    xor $c3
    rst $18
    di
    rst $38
    ld [c], a
    cp $c9
    rst $38
    add hl, hl
    ccf
    sbc b
    sbc a
    add b

jr_0bb_6f99:
    add a
    add b
    add a
    ret nz

    rst $00
    call nz, $c0c7
    jp $c3c4


    add d
    add e
    add b
    add c
    ld bc, $0001
    nop
    inc b
    nop
    nop
    nop
    add b
    nop
    sbc a
    nop
    rst $28
    nop
    rst $10
    nop
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
    jr c, jr_0bb_6fd5

    ld a, h
    add b
    rlca
    rst $38
    ret nc

    rst $38
    add b

jr_0bb_6fd5:
    rst $38
    rst $38
    rst $38
    rst $38
    nop

jr_0bb_6fda:
    rst $08
    nop

jr_0bb_6fdc:
    add c
    nop
    nop
    nop
    rra
    nop
    rrca
    nop
    adc a
    add b
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
    add a
    add b
    rlca
    nop
    rlca
    nop
    add e
    add b
    add e
    add b
    jp $c3c0


    ret nz

jr_0bb_6ffe:
    ld b, e
    ret nz

    db $e3
    ldh [$73], a
    ldh a, [$73]
    ldh a, [$31]
    ldh a, [$39]
    ld hl, sp-$48
    ld hl, sp+$78
    ld a, b
    sbc b
    jr jr_0bb_6f99

    ld [$00e0], sp
    ldh a, [rP1]
    cp l
    nop
    cp a
    jr nz, jr_0bb_6fda

    jr nc, jr_0bb_6fdc

    jr c, jr_0bb_6ffe

    inc e
    rst $18
    ldh [$df], a
    ldh [$df], a
    ldh [$cf], a
    ldh a, [$cf]
    ldh a, [$e7]
    ld hl, sp-$19
    ld hl, sp+$0f
    inc e
    rrca
    inc c
    rrca
    ld c, $0f
    rrca
    rrca
    rrca
    rrca
    adc a
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
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
    db $fd
    ld bc, $00fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sbc b

jr_0bb_7089:
    add c
    sbc b
    add c
    sbc c
    add c
    sbc c
    add c
    sbc c
    add c
    sbc c
    add c
    inc sp
    inc bc
    inc sp
    inc bc
    inc sp
    inc bc
    inc sp
    inc bc
    ld [hl-], a
    ld [bc], a
    nop
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    db $fd
    nop
    cp $00
    rst $38
    nop
    cp $00
    rst $30
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $00
    ccf
    jr nc, jr_0bb_7089

    ldh [$1f], a
    nop
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    ld hl, sp-$08
    ldh a, [$f0]
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    cp $00
    cp $00
    cp $00
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ld sp, hl
    ld bc, $01f1
    di
    inc bc
    rst $30
    rlca
    rst $20
    rlca
    db $e3
    inc bc
    rst $08
    rrca
    rst $08
    rrca
    adc [hl]
    rrca
    adc h
    rrca
    inc c
    rrca
    jr jr_0bb_7119

    ld a, [de]
    rra
    ld a, $3e
    ld a, h
    ld a, [hl]
    jr @+$1e

    ld [hl], c
    ld [hl], b
    inc bc
    nop
    ld d, $00
    cp h
    nop
    ld hl, sp+$00
    ld a, c
    ld [$18f8], sp
    ld a, [$fb38]
    ld hl, sp-$09
    ldh a, [$f7]
    ldh a, [rPCM34]

jr_0bb_7119:
    ldh a, [$27]
    ldh [$27], a
    ldh [rVBK], a
    ret nz

    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    inc bc
    ret nz

    nop
    ret nz

    ccf
    add b
    ccf
    and b
    ld a, a
    nop
    nop
    ccf
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, c
    ld a, a
    ld h, c
    ld a, a
    ld h, c
    ld a, a
    ld h, e
    ld a, a
    db $e3
    rst $38
    rst $00
    rst $38
    add a
    rst $38
    add a
    rst $38
    adc [hl]
    cp $0c
    db $fc
    inc e
    db $fc
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    add hl, sp
    ld sp, hl
    ld [hl], b
    ldh a, [$60]
    ldh [rSTAT], a
    pop bc
    inc bc
    inc bc
    rrca
    rrca
    adc c
    add hl, bc
    add c
    ld bc, $0000
    jr nz, jr_0bb_7188

    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    add a
    nop
    adc l
    nop
    cp $00
    cp $00
    db $fd
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
    ld a, a
    rst $38

jr_0bb_7188:
    db $fc
    inc bc
    rrca
    ldh a, [rP1]
    rst $38
    sub b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
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
    ld bc, $0807
    add hl, bc
    ld a, [bc]
    dec bc
    ld b, $00
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
    ld de, $0012
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $1301
    inc d
    dec d
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
    ld d, $17
    jr jr_0bb_72b7

    inc bc
    inc bc
    inc bc

jr_0bb_72b7:
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
    inc bc
    ld a, [de]
    dec de
    inc e
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
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    nop
    nop
    inc b
    inc b
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    ld bc, $0101
    ld bc, $0207
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    inc bc
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0000
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
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
    ld a, a
    add b
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
    cp $ff
    cp $fe
    rst $38
    cp $fd
    cp $fd
    ld a, [hl]
    ld a, l
    dec a
    ld a, [hl-]
    dec e
    ld a, [de]
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
    rst $38
    ld bc, $03fe
    cp $03
    cp $06
    cp $06
    db $fc
    ld c, $fc
    inc a
    db $fc
    db $fd
    ld hl, sp-$03
    ld hl, sp-$03
    ld hl, sp-$05
    ldh a, [$fb]
    ldh a, [$f7]
    ldh a, [$f7]
    ldh [$f7], a
    ldh [$ef], a
    ldh [$ef], a
    ret nz

    rst $28
    jp $c7df


    rst $18
    sbc a
    sbc $9f
    sbc b
    sbc a
    and b
    ccf
    add b
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $09ff
    ld a, a
    ld [bc], a
    ccf
    nop
    rra
    nop
    rlca
    nop
    inc bc
    inc de
    ldh [rNR44], a
    ret nz

    daa
    ret nz

    daa
    ret nz

    ld c, a
    add b
    ld c, a
    add b
    ld e, a
    add b
    sbc a
    nop
    cp a
    nop
    cp a
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
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    rrca
    cp $3f
    db $fc
    ld a, a
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
    nop
    rst $38
    nop
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
    add hl, de
    rst $20
    ld c, l
    or e
    ei
    rlca
    ld h, e
    sbc a
    ld c, e
    or a
    ld [hl], a
    adc a
    ld [hl], a
    adc a
    cp a
    ld c, a
    ld l, a
    sbc a
    rra
    rst $38
    rra
    ld a, a
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rra
    rra
    rrca
    rrca
    inc bc
    inc bc
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    rra
    rst $38
    ld a, a
    db $fd
    rst $38
    pop hl
    rst $38
    pop bc
    rst $38
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
    rst $38
    nop
    rst $38
    nop
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
    cp a
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
    ld bc, $01fe
    cp $03
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$0f
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
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    ld bc, $00fe
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0201
    inc bc
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0000], sp
    nop
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec bc
    dec bc
    inc c
    dec c
    ld c, $0f
    stop
    nop
    nop
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec bc
    dec bc
    inc c
    ld de, $0f12
    stop
    nop
    nop
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec bc
    dec bc
    inc c
    inc de
    inc d
    rrca
    dec d
    nop
    nop
    nop
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec bc
    dec bc
    inc c
    ld d, $17
    rrca
    dec d
    nop
    nop
    nop
    jr jr_0bb_76ba

    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    dec de
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0bb_76ae

jr_0bb_76ae:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0bb_76ba:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0204
    inc bc
    rlca
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
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    rlca
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
    ld bc, $0203
    ld [bc], a
    rlca
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
    ld bc, $0204
    ld [bc], a
    rlca
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
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc b
    inc b
    inc b
    inc bc
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
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
    rst $38
    rst $38
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
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
    inc bc
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
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
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
    cp $00
    cp $00
    cp $00
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    cp $fe
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    rst $38
    add b
    add b
    add b
    add b
    pop bc
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
    rst $30
    rst $38
    rst $30
    ld [$7f00], sp
    nop
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
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    jp $ffbc


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    ld bc, $0001
    nop
    nop
    nop
    ret nz

    dec [hl]
    ccf
    cp a
    ccf
    ccf
    ccf
    cp a
    ccf
    cp a
    ccf
    cp a
    ccf
    cp a
    ccf
    cp a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld b, b
    ret nz

    ld b, b
    ldh [$60], a
    nop
    nop
    nop
    nop
    nop
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
    ld a, a
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    ld bc, $0000
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
    add b
    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    nop
    ret nz

    add b
    ret nz

    nop

jr_0bb_7a09:
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

jr_0bb_7a19:
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
    ldh [$c0], a
    ldh [$e0], a
    rst $18
    ldh [$df], a
    jr nz, @+$21

    jr nz, @+$21

    jr nc, jr_0bb_7a09

    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [rIF]
    jr nc, jr_0bb_7a19

    jr nc, jr_0bb_7a5b

    jr nc, jr_0bb_7a5d

    jr nc, jr_0bb_7a5f

    jr nc, jr_0bb_7a61

    jr nc, @+$11

    jr nc, @+$11

    jr nc, @+$11

    ccf
    jr nc, jr_0bb_7a9a

jr_0bb_7a5b:
    jr nc, jr_0bb_7a9c

jr_0bb_7a5d:
    jr nc, jr_0bb_7a9e

jr_0bb_7a5f:
    jr nc, jr_0bb_7a91

jr_0bb_7a61:
    ccf
    jr nc, jr_0bb_7aa3

    jr nc, jr_0bb_7aa5

    jr nc, jr_0bb_7aa7

    rra
    rra
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0bb_7a91:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0bb_7a9a:
    nop
    nop

jr_0bb_7a9c:
    nop
    nop

jr_0bb_7a9e:
    nop
    nop
    nop
    nop
    nop

jr_0bb_7aa3:
    nop
    nop

jr_0bb_7aa5:
    nop
    nop

jr_0bb_7aa7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    inc b
    dec b
    ld b, $07
    ld b, $08
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld b, $06
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0612
    inc de
    inc d
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld b, $06
    ld b, $15
    inc bc
    ld d, $17
    jr jr_0bb_7b12

    ld a, [de]
    dec de
    inc e
    dec e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld b, $06
    ld b, $06
    ld e, $03
    rra
    jr nz, jr_0bb_7b2a

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld b, $06

jr_0bb_7b12:
    ld b, $06
    ld h, $27
    jr z, @+$2b

    inc bc
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld b, $06
    ld b, $06
    ld l, $2f
    jr nc, @+$33

    ld [hl-], a
    inc sp

jr_0bb_7b2a:
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0bb_7b3a

    ld b, $06
    ld b, $06
    ld b, $39
    ld a, [hl-]
    dec sp
    inc a
    dec a

jr_0bb_7b3a:
    ld a, $3f
    ld b, b
    ld b, $41
    ld b, d
    ld b, $06
    ld b, $06
    ld b, $0b
    ld b, $06
    ld b, $06
    ld b, $43
    ld b, h
    ld b, $45
    ld b, [hl]
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, a
    ld b, $06
    ld c, b
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld c, c
    ld c, d
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
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
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0300
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0100
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0101
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
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
    nop
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
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
    rst $38
    rst $38
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
    rst $38
    nop
    rst $38
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
    ld hl, sp+$07
    ld hl, sp+$07
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
    nop
    rst $38
    nop
    rst $38
    nop
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

    ccf
    jr nc, @-$2f

    ld [$03f7], sp
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
    rst $38
    nop
    rst $38
    ret nz

    ccf
    rst $08
    rst $38
    scf
    ccf
    add hl, bc
    rrca
    ld b, $07
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
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    rlca
    rst $30
    nop
    di
    nop
    pop af
    nop
    pop af
    nop
    pop af
    ld b, b
    pop af
    ld b, b
    ld sp, hl
    ld b, b
    rst $38
    ld b, b
    db $fd
    ld b, b
    ld sp, hl
    ret nz

    ld sp, hl
    ret nz

    ld sp, hl
    ldh [rIE], a
    ldh [$f8], a
    ldh [$f9], a
    ldh [$fd], a
    ldh [rIE], a
    ldh [$fe], a
    ldh [$fc], a
    ldh [$fc], a
    ldh [$fe], a
    ldh a, [$fc]
    ldh a, [$fc]
    ldh a, [$fc]
    ldh a, [$fc]
    ldh a, [$fc]
    ldh a, [$fc]
    ld hl, sp-$04
    ld hl, sp-$02
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$02
    ld hl, sp-$01
    ld hl, sp-$02
    ld hl, sp-$02
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
    db $fc
    ccf
    cp $cf
    cp $f3
    cp $fd
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
    ld a, a
    rst $38
    cp a
    rst $38
    ld l, a
    ld a, a
    scf
    ccf
    dec c
    rrca
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
    rst $38
    rst $38
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
    ld bc, $00ff
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
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, l
    ld [bc], a
    ld a, c
    ld b, $37
    ld [$003f], sp
    ccf
    nop
    add hl, sp
    ld b, $3a
    dec b
    inc a
    inc bc
    jr c, jr_0bb_7e8d

    jr nc, jr_0bb_7e97

    add b
    rra
    sub c
    rra
    ld [bc], a

jr_0bb_7e8d:
    rra
    add h
    rra
    ret z

    rra
    sub b
    rra
    add b
    rra
    add b

jr_0bb_7e97:
    rra
    ret nz

    rra
    ldh [rIF], a
    ldh [rIF], a
    pop bc
    ld c, $e1
    ld c, $c1
    ld c, $e1
    ld c, $cc
    inc bc
    rst $08
    nop
    rst $08
    nop
    rst $08
    add b
    rst $00
    adc b
    pop bc
    adc [hl]
    ldh [$8f], a
    ldh [$8f], a
    ldh [$8f], a
    ldh [$8f], a
    ldh [$8f], a
    ldh [$8f], a
    ldh [$8f], a
    add b
    ldh a, [$80]
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
    rst $38
    ccf
    rst $38
    rrca
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
    cp a
    ld b, b
    ld a, d
    add l
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    pop bc
    ccf
    add d
    ld a, a
    inc b
    rst $38
    ld [$efff], sp
    db $10
    rst $18
    jr nz, @-$3f

    ld b, b
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

jr_0bb_7f10:
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $00
    rst $38
    inc c
    di
    dec c
    ld a, [c]
    daa
    ret c

    and $19
    db $fc
    inc bc
    db $fd
    ld [bc], a
    ei
    inc b
    scf
    ret z

    rst $08
    jr nc, jr_0bb_7f10

    inc e
    call c, $bf23
    ld b, b
    ld a, a
    add b
    rra
    ldh [rTAC], a
    ld hl, sp+$01
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

jr_0bb_7f44:
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
    nop

jr_0bb_7f62:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_0bb_7f68:
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    pop hl
    rra
    jp $863f


    ld a, a
    add h
    ld a, a
    ld [$10ff], sp
    rst $38
    rst $18
    jr nz, jr_0bb_7f62

    jr nz, jr_0bb_7f44

    ld b, b
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
    dec hl
    call nc, $f807
    add a
    ld a, b
    add hl, bc
    or $1e
    pop hl
    ccf
    ret nz

    ld c, a
    or b
    ld [hl], e
    adc h
    db $fc
    inc bc
    cp $01
    ld a, $c1
    call $f332
    inc c
    ld hl, sp+$07
    rst $30
    ld [$10ef], sp
    rra
    ldh [$cf], a
    jr nc, jr_0bb_7f68

    ld c, h
    ld a, h
    add e
    ld a, a
    add b
    cp $00
    dec a
    ret nz

    rrca
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
    ccf
    nop
    rra
    nop
    rlca
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
    rra
    rst $38
    rlca
    di
    rrca
    rst $20
    rra
    rst $08
    ccf
    ld e, $ff
    inc e
    rst $38
    jr c, @+$01

    ld [hl], b
    rst $38
    db $e4
    ei
    call nz, $80fb
    rst $38
    ld bc, $08fe
    rst $30
    inc bc
    db $fc
    dec b
    ld a, [$fc03]
