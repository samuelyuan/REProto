SECTION "ROM Bank $017", ROMX[$4000], BANK[$17]

    ld a, [hl-]
    nop
    rrca
    ldh a, [$fe]
    ld bc, $10ef
    pop bc
    nop
    inc bc
    db $fc
    nop
    rst $38
    add b
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld [hl], b
    rrca
    ldh a, [rP1]
    rrca
    ldh a, [$fa]
    dec b
    rst $38
    nop
    rlca
    nop
    rlca
    ld hl, sp+$00
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    ret nz

    ccf
    di
    nop
    rrca
    ldh a, [$f4]
    dec bc
    cp a
    ld b, b
    dec e
    ld [bc], a
    rlca
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
    ccf
    ret nz

    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    add b
    ld a, a
    db $fc
    inc bc
    rra
    ldh [$e0], a
    rra
    ccf
    ret nz

    ldh [$1f], a
    rst $38
    nop
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    nop
    rst $38
    ld hl, sp+$07
    rrca
    ldh a, [rLCDC]
    cp a
    dec d
    ld [$0100], a
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
    jr jr_017_40d3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_017_40e3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_017_40f3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_017_4103

    ld [hl-], a

jr_017_40d3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_017_4113

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_017_40e3:
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
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

jr_017_40f3:
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

jr_017_4103:
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

jr_017_4113:
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
    ld b, [hl]
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    ld b, [hl]
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c

Jump_017_413d:
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    ld b, [hl]
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
    ld b, [hl]
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    ld b, [hl]
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

    ld b, [hl]
    pop de
    jp nc, $d4d3

    push de
    sub $46
    rst $10
    ret c

    reti


    jp c, $dcdb

    db $dd
    ld b, [hl]
    ld b, [hl]
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$46eb], a
    ld b, [hl]
    ld b, [hl]
    db $ec
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $46
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    rst $30
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
    jr jr_017_41e5

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_017_41f5

    ld hl, $2322
    inc h
    dec h
    ld h, $27
    jr z, jr_017_4206

    ld a, [hl+]
    dec hl
    inc l
    inc bc
    inc bc
    ld bc, $0101

jr_017_41e5:
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0301
    ld bc, $0101

jr_017_41f5:
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0301
    inc bc
    ld bc, $0101
    inc bc

jr_017_4206:
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0303
    ld bc, $0301
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
    dec b
    ld [bc], a
    ld [bc], a
    nop
    nop
    inc bc
    inc bc
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
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
    ld [bc], a
    ld [bc], a
    ld bc, $0503
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
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0301
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    inc bc
    dec b
    dec b
    dec b
    nop
    inc bc
    inc bc
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0301

Call_017_4283:
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
    ld bc, $0301
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
    ld bc, $0103
    ld bc, $0303
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
    ld bc, $0101
    ld bc, $0301
    inc bc
    nop
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
    ld bc, $0301
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

jr_017_42e0:
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
    ld bc, $0303
    inc bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    add hl, bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    rst $38
    rst $38
    scf
    db $10
    daa
    ret nz

    ld d, a
    and b
    ld a, e
    adc b
    ld l, a
    xor [hl]
    dec l
    sub h
    ld c, b
    sub c
    push bc
    jr jr_017_42e0

    dec l
    db $fd
    db $fd
    db $fd
    db $fd
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $7f
    cp a
    rst $18
    ld a, $52
    db $ec
    ldh [$c0], a
    ret nz

    ldh [$c0], a
    ldh [$f0], a
    ldh [rSVBK], a
    ldh [$e0], a
    ld [hl], b
    ldh a, [rSVBK]
    cp b
    ld [hl], b
    or b
    ld a, b
    cp b
    jr c, @+$3e

    jr c, jr_017_43b5

    inc a
    jr c, @+$1e

    ld e, $1c
    xor h
    ld e, $1c
    ld c, $2f
    ld c, $96
    rrca
    ld d, [hl]
    rrca
    sub a
    rlca
    ld [hl], a
    rlca
    cp e
    rlca
    ld l, a
    inc bc
    ld e, a
    inc bc
    ld a, l
    inc bc
    ld a, l
    inc bc
    ld [hl], a
    ld bc, HeaderManufacturerCode
    ld a, $01
    ccf
    nop
    dec de
    inc b
    ld d, $09
    dec d
    ld a, [bc]
    ld [de], a
    dec c
    sbc b
    rlca
    ld e, h
    inc bc
    ld e, d
    dec b
    xor l
    ld [bc], a
    ld a, d
    dec b
    push af
    ld a, [bc]
    ld [$d515], a
    ld a, [hl+]
    xor b
    ld d, a
    ld d, h
    xor e
    add c
    ld a, [hl]
    ld d, b
    xor a
    and b
    ld e, a
    ld [$81f7], sp
    ld a, [hl]
    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    ld bc, $fdff
    ld bc, $2bdb
    rst $28

jr_017_43b5:
    rrca
    rst $18
    rra
    cp a
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
    cp $fe
    ld sp, hl
    ld sp, hl
    rst $30

jr_017_43cd:
    rst $30
    push hl
    db $e4
    ldh [$e0], a
    jr nz, jr_017_43f4

    ld b, d
    ld b, d
    add hl, bc
    ld [$0000], sp
    nop
    nop
    inc bc
    nop

jr_017_43de:
    adc e
    adc b
    add hl, hl
    jr nz, jr_017_43de

    sbc d
    ldh [rP1], a
    sub b
    db $10
    ld e, a
    ld b, b
    ccf
    ld [hl+], a
    rst $38
    nop
    rlca
    inc b
    db $e4
    inc b
    rst $38
    nop

jr_017_43f4:
    rst $38
    nop
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

    nop
    rst $38
    ld b, b
    rst $38
    ld [$00ff], sp
    rst $38
    db $10
    rst $38
    nop
    ccf
    ret nz

    cp a
    ld b, b
    add c
    ld a, [hl]
    ld b, d
    cp l
    ld c, $f1
    sbc l
    ld h, e
    ld a, [hl]
    add e
    inc a
    rst $00
    ld a, [c]
    dec c
    rst $20
    jr @+$01

    rst $38
    jr @+$01

    ld [$08ff], sp
    rst $38
    inc sp
    ret nz

    ld sp, $c6ce
    jr nz, jr_017_43cd

    ld bc, $0fff
    rst $28
    rst $28
    rst $38
    rst $28
    ld a, a
    ld l, a
    rst $38
    rst $38
    xor a
    adc a
    cp l
    ld c, h
    inc [hl]
    call nz, Call_000_176b
    ccf
    nop
    scf
    ld [$003f], sp
    ld a, $01
    rra
    nop
    rrca
    nop
    dec c
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    inc b
    inc bc
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0001
    ld bc, $0100
    nop
    nop
    nop

jr_017_4464:
    nop
    nop
    add hl, bc
    nop
    ld e, a
    nop
    rst $08
    jr nc, jr_017_4464

    ld [$1ff0], sp
    add b
    ld c, b
    nop
    ld h, b
    xor b
    call nc, $d18d
    adc e
    xor e
    ret


    jp hl


    pop bc
    pop bc
    pop bc
    pop bc
    db $e3
    db $e3
    ld h, l
    ld h, l
    rst $30
    ld [hl], a
    rst $38
    ld a, a
    cp a
    ccf
    cp a
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $18
    rra
    rst $38
    rra
    cp $1e
    ld a, e
    adc b
    rst $38
    nop
    db $db
    inc h
    rst $38
    nop
    rst $30
    ld [$20de], sp
    ld [hl], h
    adc b
    db $fd
    ld bc, $03fb
    rst $00
    rlca
    rst $18
    rra
    cp a
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
    db $fc
    db $fc
    rst $30
    rst $30
    db $ec
    db $ec
    ret nc

    ret nc

    ldh [$e0], a
    ld b, b
    ld b, b
    ld bc, $0201
    ld [bc], a
    ld b, c
    ld b, b
    ld bc, $1b00
    db $10
    rra
    inc b
    ld l, a
    nop
    daa
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    rst $28
    nop
    rst $28
    ld b, b
    rst $38
    nop
    rra
    nop
    rst $18
    nop
    cp $01
    db $fd
    ld [bc], a
    ld a, d
    dec b
    ld l, d
    dec d
    ld e, $11
    ld sp, hl
    ld bc, $00ff
    cp e
    ld b, h
    ld a, a
    add b
    cp a
    ld b, b
    rst $38
    nop
    inc b
    ei
    dec e
    db $e3
    ld a, [hl+]
    rst $10
    inc l
    rst $10
    ld [hl], b
    adc a
    xor b
    ld e, a
    sub b
    ld a, a
    ld [hl+], a
    db $fd
    ld d, a
    add sp, -$70
    rst $28
    xor h
    db $d3
    cp [hl]
    ld b, c
    cp $01

jr_017_451a:
    db $fc
    inc bc
    db $fd
    ld [bc], a
    ld hl, sp+$07
    db $fd
    db $fd
    ldh a, [rP1]
    ldh a, [rP1]
    call nc, $e800
    nop
    ld a, [$7000]
    add b
    rrca
    adc a
    rst $38
    ld a, a
    ld a, $3e
    ld a, d
    ld [bc], a
    db $fc
    add b
    cp $c0
    rst $28
    ret nc

    add $78
    adc e
    or h
    ld a, h
    add e
    cp $01
    rst $38
    nop
    sbc $21
    add c
    ld a, b
    add hl, hl
    ret nc

    add hl, de
    ldh [$29], a
    ret nc

    db $10
    ldh [$50], a
    and b
    ret nc

    jr nz, jr_017_4587

    ret nz

    ld [hl], c
    add b
    ret nc

    ld hl, $c031
    ld a, c
    add b
    add hl, sp
    ret nz

    di
    ld [$00fb], sp
    rst $18
    jr nz, jr_017_451a

    ld c, [hl]
    ld hl, $4cde
    cp a
    ld l, a
    sbc [hl]
    ld de, $83e2
    ld b, b
    inc e
    dec e
    ld a, [hl]
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

jr_017_4587:
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
    ret nz

    nop
    pop hl
    ld bc, $13d3
    ld c, a
    rrca
    ld e, a
    rra
    ccf
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
    cp $fe
    db $fc
    db $fc
    ld sp, hl
    ld sp, hl
    rst $38
    rst $38
    sbc $de
    sub c
    sub c
    inc b
    inc b
    jr z, jr_017_45e4

    ld h, [hl]
    ld h, [hl]
    sub l
    sub l
    daa
    jr nz, jr_017_4612

    ld b, b
    ld bc, $0d01
    nop
    rra
    nop
    cp a
    nop
    db $fc
    nop
    rst $38
    rrca
    rst $28
    rrca
    rst $18
    rra
    ccf
    ccf
    cp a
    ccf
    add a
    rlca
    add e
    inc bc
    add e
    inc bc
    add e
    inc bc
    add c
    ld bc, $01c1

jr_017_45e4:
    pop hl
    ld bc, $40b0
    ld d, b
    and b
    xor b
    ld d, b
    ld d, h
    xor h
    adc l
    ld [hl], c
    inc d
    add sp, $03
    ld sp, hl
    db $ed
    ld [de], a
    rst $00
    nop
    xor $00
    pop de
    ld c, $a0
    rra
    ret nz

    ccf
    add b
    rst $38

jr_017_4602:
    nop
    rst $38
    nop
    rst $38
    ld a, [bc]
    push af
    sbc b
    ld h, a
    push de
    ld a, [hl+]
    rst $10
    jr z, jr_017_4687

    add a
    sub [hl]
    ld l, c

jr_017_4612:
    ld d, $e9
    cpl
    ret nc

    sub c
    ld l, [hl]
    add c
    ld a, [hl]
    ld b, e
    cp h
    ld b, d
    cp l
    ld b, b
    cp a
    rst $38
    rst $38
    rrca
    rrca
    rrca
    rrca
    dec bc
    dec bc
    adc l
    adc l
    inc bc
    inc bc
    rlca
    rlca
    jp $03c3


    inc bc
    rlca
    rlca
    ld bc, $e301
    inc hl
    jp nz, $c202

    ld [bc], a
    ld h, b
    add b
    db $e4
    nop
    ld a, e
    sbc a
    ld c, c
    cp a
    ld c, c
    cp a
    ret z

    ccf
    ld [hl], b
    adc a
    or b
    ld c, a
    cp d
    ld c, l
    and h
    ld e, a
    add l
    ld a, [hl]
    add h
    ld a, a
    ld b, l
    ld a, $77
    ld c, $57
    xor [hl]
    sub $6f
    or $ff
    or $6f
    jr nz, jr_017_4602

    ld [hl-], a
    ld [hl-], a
    and $66
    ld b, $86
    ld c, a
    adc a
    rlca
    add a
    cpl
    rst $28
    ccf
    rst $08
    rrca
    sbc a
    inc de
    sub e
    ld [hl], a
    ld [hl], a
    ld d, a
    ld d, a
    db $db
    db $db
    rst $38
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

jr_017_4685:
    ei
    rst $00

jr_017_4687:
    rst $00
    rlca
    rlca
    rrca
    rrca
    rla
    rla
    rra
    rra
    ccf
    ccf
    ccf
    ccf
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
    rst $38
    rst $38
    rst $28
    rst $28
    rst $18
    rst $18
    ld a, $3e
    ld h, b
    ld h, b
    ldh [$e0], a
    db $f4
    db $f4
    ld b, h
    ld b, h
    nop
    nop
    ld b, b
    ld b, b
    nop
    nop
    ld d, e
    ld d, e
    nop
    nop
    db $fc
    inc b

jr_017_46c2:
    rlc b
    add hl, de
    ld [$46e6], sp
    sbc a
    rra
    ld a, a
    ld a, a
    ld a, [$fffa]
    rst $38
    cp a
    cp a
    sub b
    sub b
    or b
    or b
    add b
    add b
    ret nz

    ret nz

    ld sp, hl
    ld sp, hl
    ld a, [$f5fa]
    db $f4
    xor d
    xor b
    rrca
    add hl, bc
    sbc [hl]
    sbc b
    xor a
    xor c
    ret nz

    ret nz

    db $d3
    jp nc, $9090

    ld de, $0a11
    inc b
    ld c, $00
    ld [$8c04], sp
    inc b
    ld h, b
    ld h, b
    cp $3e
    ld b, c
    add c
    ld h, b
    add b
    jr nz, jr_017_46c2

    ret c

    jr z, jr_017_4685

    ld [hl], b
    dec h
    push de
    or a
    ld b, a
    rst $38
    inc bc
    cp $00
    ld [$5b15], a
    and h
    ei
    dec b
    ld [hl], a
    adc e
    xor h
    ld d, b
    xor b
    ld d, b
    ld e, b
    and b
    or b
    ld b, b
    sub b
    ld [hl], b
    ld a, [$fcfa]
    db $fc
    ld hl, sp-$08
    db $fd
    db $fd
    ld hl, sp-$08
    db $fd
    db $fd
    db $fd
    db $fd
    ld a, [$fffa]
    rst $38
    ld hl, sp-$07
    add sp, -$19
    jr jr_017_473f

    jr nc, jr_017_4758

    ld sp, $1f0d
    rla
    dec bc

jr_017_473f:
    inc bc
    cpl
    cpl
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    ccf
    sbc a
    rra
    sbc a
    rra
    rst $18
    rra
    rst $28
    cpl
    rst $08
    rrca
    adc $0e
    rst $08
    rrca

jr_017_4758:
    call z, $c80d
    dec bc
    ret z

    dec bc
    call nz, $0207
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    ld bc, $0100
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    ld hl, sp-$08
    ret nc

    ret nc

    adc d
    adc d
    ld bc, $1a00
    ld a, [de]
    ld bc, $0d01
    dec b
    dec e
    add hl, bc
    ld a, l
    ld [hl], c
    inc e
    nop
    ld a, $00
    ld a, [hl]
    nop
    ld e, $02
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    inc b
    rlca
    ld [$100f], sp
    rra
    jr nz, jr_017_47ff

    ccf
    inc e
    ld a, a
    jr c, jr_017_4844

    ld h, b
    rst $28
    scf
    ld a, a
    adc $7f
    dec b
    ld a, a
    add h
    ld a, a
    ld c, l
    ld a, a
    push hl
    ld a, a
    inc [hl]
    ld a, a
    ld a, [bc]
    ld a, a
    dec d
    ld a, a
    dec b
    ccf
    ld h, l
    ccf
    ld b, h
    ccf
    ld b, c
    dec bc
    inc [hl]
    rrca
    jr nc, @+$09

    jr c, @+$09

    jr c, jr_017_4824

    inc b
    rra
    jr nz, jr_017_480c

    jr nz, jr_017_480e

    jr nz, jr_017_480e

    ld [hl+], a
    rra
    jr nz, jr_017_4814

    nop
    rra
    nop
    rlca
    jr @+$03

    ld e, $00
    rra
    nop

jr_017_47ff:
    rrca
    ldh a, [$f0]
    call c, Call_000_1fdc
    rra
    rra
    rra
    rra
    rra
    rrca
    rrca

jr_017_480c:
    rlca
    rlca

jr_017_480e:
    nop
    nop
    db $10
    db $10
    jr jr_017_482c

jr_017_4814:
    jr jr_017_482e

    inc e
    inc e
    sbc h
    sbc h
    ld a, [hl]
    ld a, [hl]

jr_017_481c:
    cp $fe
    db $fc
    db $fc
    sbc b
    ret c

    jr c, jr_017_481c

jr_017_4824:
    ld a, b
    ld hl, sp+$60
    ld h, b
    add b
    add b
    add b
    add b

jr_017_482c:
    ld b, b
    ld b, b

jr_017_482e:
    and b
    and b
    jr nz, jr_017_4852

    ret nc

    ret nc

    or b
    or b
    ret z

    ret z

    ret z

    ret z

    call nc, $e3d4
    db $e3
    ret nz

    rst $18
    ccf
    rlca
    ld a, a
    rla

jr_017_4844:
    rst $38
    ld bc, $0cf1
    pop af
    ld a, [bc]
    db $e3
    inc e
    rst $00
    dec sp
    adc a
    ld [hl], a
    rra
    rst $20

jr_017_4852:
    ccf
    rst $10
    ccf
    add a
    ccf
    jp $c3ff


    rst $38
    pop bc
    rst $38
    jp nz, $e0ff

    rst $38
    ldh [rIE], a
    ld [c], a
    rst $38
    ld h, b
    rst $38
    ld h, d
    ld a, a
    ldh a, [$7f]
    and b
    ld a, a
    ld [$503f], sp
    ccf
    ld b, d
    ccf
    ld b, a
    ld a, a
    inc bc
    ld a, a
    ld [bc], a
    ld [hl], a
    add hl, bc
    ld [hl], a
    adc c
    inc sp
    ld c, l
    inc sp
    ld c, l
    add hl, de
    ld h, $19
    ld h, $0c
    inc de
    inc b
    dec de
    inc b
    dec bc
    ld [bc], a
    dec c
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $0201
    ld bc, $030e
    inc a
    rla
    ld c, b
    ccf
    ld b, b
    ld a, a
    nop
    ld a, a
    nop
    ccf
    ldh a, [$3f]
    ld e, a
    rrca
    inc de
    rrca
    nop
    rrca
    nop
    rrca
    ld de, $021f
    rra
    ld [bc], a
    ccf
    ld b, l
    ld a, a
    adc a
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    dec d
    rst $38
    xor a
    rst $38
    ld [hl], l
    rst $38
    ld a, [hl-]
    rst $38
    rrca
    rst $38
    add e
    db $fd
    and d
    rst $38
    inc a
    rst $38
    cp l
    rst $38
    adc b
    rst $38
    ld b, d
    rst $38
    and b
    rst $38
    ld b, b
    rst $38
    inc b
    rst $38
    nop
    ld a, a

jr_017_48d9:
    add b
    rst $18
    jr nz, jr_017_48d9

    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    cp $21
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ld a, [bc]
    rst $38
    ld [bc], a
    rst $38
    ld [$946f], sp
    rst $38
    nop
    rst $38
    ld b, c
    rst $28
    db $10
    rst $38
    add b
    rst $38
    ld bc, $3ec1
    nop
    rst $08

Jump_017_4900:
    nop
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
    nop
    nop
    db $fd
    rst $38
    or h
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    or $ff
    db $fd
    rst $38
    db $fc
    rst $38

jr_017_4920:
    add c
    add b
    dec b
    nop
    sub l
    add b
    ld bc, $1100
    db $10
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
    add b
    jr nc, jr_017_4920

    ldh a, [$c8]
    ld hl, sp+$20
    sbc h
    add sp, -$01
    ld h, b
    rst $38

jr_017_4949:
    jr jr_017_4949

    add c
    rst $38
    add e
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld e, a
    rst $38
    ld l, a
    rst $38
    ccf
    rst $38
    ld e, a
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    dec d
    ld a, a
    add b
    ld a, a
    add b
    cp a
    ld b, b
    adc d
    ld [hl], l
    ret nz

    cp a
    ldh [$df], a
    ld hl, sp-$7c
    ldh [$1f], a
    ldh a, [$6f]
    ld hl, sp-$19
    cp $f1
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    inc bc
    rst $38
    nop
    rst $30
    ld [$07f8], sp
    ld hl, sp+$06
    db $fc
    ld [hl+], a
    ld hl, sp+$04
    ld hl, sp+$44
    ldh a, [$0c]
    ldh a, [$09]
    pop hl
    ld [de], a
    rst $00
    jr c, @+$01

    nop
    rst $38
    nop
    cp $f0
    ld hl, sp-$3a
    ldh a, [rIF]
    db $fc
    inc bc
    db $fc
    ld b, e
    cp $91
    rst $38
    ret nz

    rst $38
    ld [hl], b
    rst $38
    ld hl, sp-$01
    ld a, [$f9fe]
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    cp $ff
    ld [hl], l
    rst $38
    cp [hl]
    rst $38
    db $fc
    rst $38
    ldh a, [$73]
    adc h
    rst $08
    jr nc, @+$01

    ld hl, sp-$01
    ccf
    rra
    add sp, -$22
    ld hl, $c0bf
    cp $01
    or $0b
    rst $38
    db $10
    rst $38
    inc b
    rst $38
    inc bc
    ccf
    jp nz, $c13f

    adc a
    ld [hl], b
    ld a, a
    add c
    rst $38
    inc d
    rst $38
    ld [hl-], a
    ld a, a
    add c
    rst $18
    inc h
    rst $38
    ld [bc], a
    rst $38
    ld d, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld [hl-], a
    rst $38
    inc b
    rst $38
    ld b, c
    ld a, a
    add b
    dec de
    db $e4
    ld bc, $00fe
    dec de
    nop
    ld de, $0000
    nop
    ld [bc], a
    nop
    nop
    nop

jr_017_4a0f:
    nop
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [$20ff], sp
    rst $38
    nop
    rst $38
    inc h
    rst $38
    db $10
    rst $38
    nop
    rst $38
    add c
    rst $38
    inc b
    rst $38
    nop
    rst $38
    jr nz, @+$01

    inc b
    rst $38
    ld hl, $80ff
    rst $38
    or b
    rst $38
    sub h
    rst $38
    ret nc

    rst $38
    jp z, $f4ff

    rst $38
    db $fc
    rst $38
    cp $ff
    ld [bc], a
    nop

jr_017_4a42:
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr jr_017_4a42

    ld b, $fc
    rra
    ldh [rTIMA], a
    ld hl, sp-$10
    adc $f8
    and [hl]
    db $f4
    set 7, b
    rst $00
    db $fc
    jp $c7f8


    db $f4
    set 7, b
    add $f0
    adc a
    ld hl, sp-$7a
    ldh a, [$0e]
    add sp, $16
    ldh a, [$0c]
    ldh [rNR32], a
    ret nc

    jr z, jr_017_4a0f

    ld d, b
    nop
    pop hl
    ld bc, $0180
    nop
    ld bc, $0100
    jp nz, $c301

    ld bc, $03c3
    add b
    jp $e323


    ld de, $0df3
    rst $38
    add c
    rst $38
    pop bc
    rst $38
    ld hl, $00ff
    ld a, a
    add b
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
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    rst $38
    cp $fe
    ldh [$e0], a
    ldh a, [$f0]
    add b
    add b
    add sp, -$18
    pop bc
    pop bc
    rst $38
    rst $38
    add c
    ld a, [hl]
    add b
    ld a, a
    inc b
    ei
    inc e
    db $e3
    ld sp, hl
    ld b, $f9
    ld b, $fb
    add h
    rst $30
    ld [$deff], sp
    rst $38
    cp $fe
    db $fd
    cp $f9
    db $fc
    ei
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$1b
    ld hl, sp+$07
    ld hl, sp-$0b
    ld hl, sp+$37
    ld hl, sp+$07
    cp b
    ld b, a
    ld hl, sp+$07
    ld hl, sp-$79
    ldh a, [$cf]
    ldh [rNR23], a
    ld hl, sp+$00
    or b
    ld c, h
    ld hl, sp-$7c
    db $fc
    nop
    db $fc
    ld h, d
    db $fc
    add d
    db $fc
    sub d
    ld a, h
    add d
    ld hl, sp+$16
    ld hl, sp+$06
    ld hl, sp+$06
    cp $81
    cp $41
    cp $01
    cp $0d
    rst $38
    inc b
    rra
    ldh [$0c], a
    di
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    nop
    ld a, a
    nop
    rrca
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
    rst $38
    nop
    rst $38
    ld b, b
    rst $38

jr_017_4b30:
    rst $38
    nop
    cp e
    nop
    rst $38
    rra
    rst $38
    rra
    ld hl, sp+$18
    ld a, b
    jr jr_017_4b30

    inc de
    ld [hl], e
    inc de
    push af
    dec d
    or a
    rla
    ld d, l
    dec d
    rla
    rla
    rla
    rla
    rla
    rla
    scf
    scf
    ld h, a

jr_017_4b4f:
    ld h, a
    nop
    db $10
    db $10
    jr z, jr_017_4b6d

    ld b, b
    db $10
    jr z, @+$1a

    jr nz, jr_017_4b6b

    jr z, jr_017_4b6d

    jr z, @+$12

    jr z, @+$12

    jr z, @+$12

    nop
    jr nc, jr_017_4b76

    jr nc, @+$62

    jr nz, jr_017_4b8a

    ld h, b

jr_017_4b6b:
    nop
    ld h, b

jr_017_4b6d:
    ret nc

    ldh [$50], a
    ldh [$d0], a
    ldh [$d0], a
    ldh [$d0], a

jr_017_4b76:
    ldh [$d0], a
    ldh [$d0], a
    ldh [$d0], a
    ldh [$d0], a
    ldh [$d0], a
    ldh [$d0], a
    ldh [$d0], a
    ldh [$d0], a
    ldh [$90], a
    ldh [$90], a

jr_017_4b8a:
    ret nz

    or b
    ret nz

    jr nz, jr_017_4b4f

    jr nz, @+$22

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
    xor d
    xor b
    nop
    nop
    nop
    nop
    add hl, bc
    nop
    add b
    add b
    jp $f8c0


    ld hl, sp-$01
    rst $38
    ld [$18f8], sp
    ld hl, sp+$18
    ld hl, sp+$50
    ld hl, sp+$3c
    db $fc
    ld a, h
    db $fc
    ld [hl], h
    db $fc
    db $fc
    db $fc
    cp $fe
    ld a, [$fefe]
    cp $fe
    cp $fe
    cp $fe
    cp $fa
    cp $fe
    cp $fe
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
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ld a, b
    ld a, b
    ldh a, [$f0]
    ld [hl], b
    ld [hl], b
    ld [hl], d
    ld [hl], d
    ldh a, [$f0]
    scf
    ret z

    rla
    add sp, $17
    add sp, $0b
    db $f4
    cpl
    ret nc

    dec b
    ld a, [$f807]
    inc bc
    db $fc
    inc bc
    db $fc
    ld [bc], a
    db $fd
    inc bc
    db $fc
    ld bc, $01fe
    cp $00
    rst $38
    db $10
    rst $28
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    pop bc
    pop bc
    ldh [$e0], a
    ld a, [de]
    ld a, [de]
    dec de
    add hl, de
    db $e4
    db $e4
    add hl, de
    add hl, de
    add hl, de
    jr jr_017_4c46

    inc de
    inc de
    ld [de], a
    ld de, $f110
    pop af
    and b
    and b
    dec b
    inc b
    add b
    add c
    ldh a, [$f0]
    sub c
    sub b
    pop de
    ret nc

jr_017_4c46:
    pop de
    ret nc

    pop af
    ldh a, [$f1]
    ldh a, [$f2]
    ld a, [c]
    di
    ld a, [c]
    ld a, [c]
    ld a, [c]
    ld a, [$fefa]
    cp $fe
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

jr_017_4c68:
    ret nz

    ret nz

    jr nz, jr_017_4c8c

    sbc h
    sbc h
    ld bc, $5401
    ld d, h
    jp c, Jump_017_5bda

    ld e, e
    add d
    add d
    nop
    nop
    jr nc, jr_017_4cac

    add hl, de
    add hl, bc
    ld a, e
    nop
    ld c, $ff
    ld c, $ff
    adc b
    rst $38
    ret nc

    rst $38
    sub b
    rst $38
    jr nz, @+$01

jr_017_4c8c:
    ld hl, $40ff
    rst $38
    cp a
    nop
    ccf
    ld bc, $828f
    xor a
    and b
    ccf
    jr nc, @+$41

    jr nc, jr_017_4c68

    call nz, Call_017_7076
    rlca
    nop
    inc b
    inc bc
    inc c
    dec bc
    dec h
    ld [hl+], a
    rst $20
    db $e4
    sbc e
    sbc b

jr_017_4cac:
    db $eb
    add sp, -$09
    ldh a, [$fd]
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $30
    rst $28
    rst $28
    rst $08
    rst $08
    rst $18
    rst $18
    ld hl, sp-$08
    ldh a, [$f0]
    ldh a, [$f0]
    pop af
    pop af
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    sbc a
    rra
    rra
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$f3fa]
    di
    pop bc
    pop bc
    ld a, a
    ld a, a
    rlca
    rlca
    nop
    nop
    ld h, b
    ld h, b
    xor d
    xor d
    nop
    nop
    ld b, c
    ld b, c
    ret


    ret


    ld b, b
    ld b, b
    jp hl


    nop
    ld l, d
    nop
    xor [hl]
    nop
    jp c, $dd00

    nop
    and l
    nop
    ei
    nop
    jp c, Jump_017_5500

    nop
    rst $10
    nop
    cp $00
    rst $30
    nop
    cp $01
    dec sp
    call nz, $ea15
    inc b
    ei
    rst $30
    ld [$817e], sp
    ld bc, $4001
    ld b, b
    or $08
    ld a, [$2f05]
    db $10
    sub [hl]
    adc d
    reti


    ld b, h
    rst $18
    ld b, d
    bit 2, h
    rst $10
    ld a, [bc]
    sbc c
    inc b
    dec a
    ld hl, $40fe
    sub h
    ld l, e
    ld hl, sp-$39
    jp nc, $c2cc

    sbc l
    jp nz, $e09f

    sbc l
    ldh a, [$8d]
    add sp, $55
    jr jr_017_4d45

    inc h
    dec h
    dec e
    inc c
    inc e

jr_017_4d45:
    dec c
    ld b, l
    ld b, b
    ld b, d
    ld b, d
    ld [c], a
    ld [c], a
    db $e3
    db $e3
    cp $fe
    rst $38
    rst $38
    or $f6
    di
    di
    ld a, a
    ld a, a
    cp a
    cp a
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    or b
    or b
    ldh [$e0], a
    db $10
    db $10
    inc b
    inc b
    ret c

    ld d, b
    cp [hl]
    and [hl]
    adc b
    adc b
    sbc $00
    rst $18
    nop
    ei
    ld b, c
    cp $14
    cp [hl]
    jr nz, @+$01

    ld [$00ef], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $02
    rst $38
    ld [$00ff], sp
    xor a
    jr nz, jr_017_4da2

    ldh a, [rTIMA]
    ld a, [$906f]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add hl, bc
    add hl, bc
    ret nc

    ret nc

jr_017_4da2:
    ldh a, [$f0]
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ld hl, sp-$08
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    ccf
    ccf
    inc bc
    inc bc
    nop
    nop
    dec bc
    dec bc
    rst $00
    rst $00
    add e
    add e
    ld c, $0e
    ld c, d
    nop
    ld d, d
    nop
    and d
    nop
    ld d, h
    nop
    ld c, d
    nop
    add hl, hl
    nop
    and l
    nop
    sub l
    nop
    ld d, l
    nop
    jp nc, $ae00

    nop
    db $eb
    nop
    ld d, [hl]
    nop
    sbc $01
    jp c, $ef05

    db $10
    sub l
    ld l, d
    rst $18
    jr nz, jr_017_4e5c

    nop
    ld [$a508], sp
    dec b
    xor e
    ld d, h
    db $dd
    ld [hl+], a
    ld e, c
    ld d, l
    xor l
    ld b, b
    rst $28

jr_017_4e13:
    ld [bc], a
    ld l, l
    add b
    ld l, l
    adc b
    ccf
    jp nc, Jump_017_5c97

    inc d
    ld [$e817], sp
    rla
    add sp, -$0b
    xor d
    jr nc, jr_017_4e13

    add hl, sp
    jp nz, $e932

    dec de
    ret nz

    db $10
    jp z, $805a

    sub h
    ld c, h
    ld b, b
    sub b
    ret nz

    ret nz

    and h
    inc h
    dec h
    dec h
    daa
    daa
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
    rst $38
    ld a, a
    ld a, a
    reti


    reti


    ld d, b
    ld d, b
    inc b
    inc b
    nop
    nop
    jr nz, jr_017_4e74

    and c
    and c
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld h, b
    ld h, b

jr_017_4e5c:
    add d
    add d
    db $ec
    inc b
    di
    di
    sub $04
    cp $02
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop

jr_017_4e74:
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $18
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    ld c, a
    ld b, b
    ld a, d
    add d
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $38
    nop
    ld d, l
    ld d, l
    ccf
    ccf
    rrca
    rrca
    rlca
    rlca
    ld bc, $0001
    nop
    nop
    nop
    ret nc

    ret nc

    ld hl, sp-$08
    rst $38
    rst $38
    ccf
    ccf
    rra
    rra
    rrca
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
    ldh a, [$f0]
    rst $38
    rst $38
    rrca
    rrca
    dec bc
    dec bc
    rrca
    rrca
    rlca
    rlca
    sub a
    nop
    ld c, a
    nop
    xor e
    nop
    xor d
    nop
    ld d, l
    nop
    ld d, d
    nop
    ld c, a
    nop
    ld a, d
    nop
    rst $28
    nop
    rst $30
    nop
    or a
    ld [$02fd], sp
    sbc e
    inc h
    push af
    ld a, [bc]
    sub b
    ld l, a
    add b
    ld a, a
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    dec bc
    ld a, [bc]
    add e
    add d
    rst $38
    ld [bc], a
    rst $38
    ld b, $1f
    ld c, $bf
    or d
    rrc d
    rst $38
    ld l, $ff
    ld l, $fe
    ld l, $1f
    sbc $07
    ld b, $f3
    ld [hl], d
    ld l, e
    xor d
    ld b, [hl]
    inc b
    ld c, $0c
    add h
    inc b
    add [hl]
    add h
    ld b, h
    ld b, h
    ld b, l
    ld b, l
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld [hl], h
    ld [hl], h
    ld a, b
    ld a, b
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld sp, hl
    ld sp, hl
    ld a, [$fffa]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rra
    rlca
    rlca
    ccf
    ccf
    rra
    rra
    inc bc
    inc bc
    ld b, b
    ld b, b
    xor h
    xor h
    db $f4
    db $f4
    ld b, $06
    nop
    nop
    ld [$b208], sp
    add d
    ld c, $00
    adc a
    add b
    rst $08
    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    db $10
    sbc a
    add b
    ei
    db $10
    db $fd
    ld bc, $02ff
    rst $38
    nop
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
    ld a, a
    nop
    ld [$fe0a], a
    inc b
    cp $00
    cp $00
    sbc $20
    ld l, [hl]
    db $10
    sbc [hl]
    sub b
    add c
    add c
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    cpl
    cpl
    ld e, a
    ld e, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    ld a, [hl]
    ld a, a
    ld a, a
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
    ld e, a
    ld e, a
    ccf
    ccf
    ccf
    ccf
    cpl
    cpl
    xor a
    xor a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $f4
    dec bc
    ld a, h
    inc bc
    ld a, b
    rlca
    ld hl, sp+$07
    ld a, b
    rlca
    ldh a, [rIF]
    ldh a, [rIF]
    ret nz

    ccf
    ldh a, [rIF]
    ret nz

    ccf
    and b
    ld e, a
    and b
    ld e, a
    nop
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
    nop
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
    ld b, c
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    ld bc, $0dff
    rst $38
    ld d, e
    rst $38
    cpl
    rst $38
    scf
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
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld b, [hl]
    ld b, [hl]
    ld e, e
    ld e, e
    ccf
    ccf
    rra
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
    rst $08
    rst $08
    ld c, a
    ld c, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ret


    ret


    ld h, b
    ld h, b
    ret nz

    ret nz

    db $10
    db $10
    jr jr_017_504e

    inc b
    inc b
    ld [$0408], sp
    inc b
    db $10
    db $10

jr_017_504e:
    ld a, a
    ld b, a
    ld a, h
    ld b, b
    ld a, h
    nop
    ld hl, sp-$80
    ei
    add d
    ld a, [c]
    add b
    cp $92
    ld l, b
    jr nz, jr_017_50a2

    nop
    ld l, e
    ld bc, $047f
    ld a, a
    nop
    ld a, a
    nop
    ld [hl], e

jr_017_5069:
    jr nc, jr_017_5069

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
    cp a
    add b
    sbc $c0
    push hl
    push hl
    ld sp, hl
    ld sp, hl
    rst $38
    rst $38
    rst $10
    rst $00
    rst $28
    rst $28
    rst $00
    rst $00
    rst $30
    rst $30
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
    rst $20
    rst $20
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $38
    nop

jr_017_50a2:
    rst $38
    nop
    cp $00
    cp $02
    cp $02
    rst $38
    inc bc
    ei
    inc bc
    ei
    inc bc
    rst $38
    inc bc
    db $fd
    ld bc, $01fd
    cp $00
    cp [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    dec b
    rst $38
    ld de, $01ff
    rst $38
    inc hl
    rst $38
    add c
    rst $38
    dec b
    rst $38
    dec c
    rst $38
    ld e, a
    rst $38
    rra
    rst $38
    ld a, a
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
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    daa
    daa
    rra
    rra
    cp a
    cp a
    ld a, a
    ld a, a
    cp a
    cp a
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
    cp a
    cp a
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    and c
    and c
    add b
    add b
    dec b
    dec b
    nop
    nop
    ld b, b
    ld b, b
    ld [de], a
    ld [de], a
    add hl, bc
    add hl, bc
    ld [hl+], a
    ld [hl+], a
    ld a, [de]
    ld a, [bc]
    db $f4
    inc [hl]
    ret nz

    add b
    dec e
    ld de, $404e
    adc d
    nop
    ld [c], a
    ld [bc], a
    ld [hl], b
    jr nz, @-$06

    ld [$20e0], sp
    adc c
    ld [$0003], sp
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    inc b
    rst $38
    nop
    cp $02
    and $00
    cp a
    adc c
    rst $38
    ldh [$fd], a
    ldh [$df], a
    ret nz

    rst $18
    ret nc

    rst $18
    ret nc

    pop hl
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
    rst $38
    rst $38
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
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rra
    inc de
    inc bc
    db $db
    jp $0787


    push bc
    ld b, l
    ld d, l
    ld b, l
    rst $08
    rst $08
    cp $fe
    rst $08
    rst $28
    rrca
    ld a, a
    rrca
    rst $28
    rrca
    rst $38
    xor a
    rra
    rst $28
    rrca
    rst $18
    rra
    cp a
    ccf
    rra
    rra
    ld c, a
    rrca
    adc a
    rrca
    ld c, a
    rrca
    add [hl]
    ld b, $05
    inc b
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
    ld bc, $0201
    ld [bc], a
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    dec d
    dec d
    ld d, a
    ld d, a
    ld e, a
    ld e, a
    rst $38
    rst $38
    cp a
    cp a
    ld a, a
    ld a, a
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
    rst $38
    rst $38
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
    ld e, a
    xor $ee
    ccf
    ccf
    rlca
    rlca
    ld d, e
    ld d, e
    xor b
    xor b
    ld b, l
    ld b, l
    ld h, d
    ld h, d
    ld b, b
    ld b, b
    ld [$4208], sp
    ld b, d
    dec e
    dec d
    inc bc
    ld bc, $0a0e
    add hl, bc
    add hl, bc
    ld [bc], a
    ld [bc], a
    ld b, $06
    inc d
    inc d
    add b
    nop
    nop
    nop
    db $d3
    inc de
    rst $38
    nop
    jp hl


    ld [$0003], sp
    cp e
    nop
    rst $38
    ld bc, $00fd
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    db $fc
    inc bc
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$39
    db $fd
    jp nz, Jump_000_00ff

    ld a, a
    nop
    cp h
    add e
    ret c

    rst $00
    ret c

    rst $00
    ld hl, sp-$19
    ret c

    rst $10
    add h
    add e
    ld a, h
    ld a, e
    ld c, $0d
    add c
    add b
    rst $38
    ldh a, [$e6]
    db $e4
    rst $38
    rst $38
    cp $fc
    push af
    push af
    ld a, [c]
    ldh a, [$fa]

jr_017_524f:
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor a
    xor a
    inc bc
    inc bc
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    jr nz, jr_017_5280

    ret nc

    ret nc

    ret nc

    ret nc

    ret nc

    ret nc

    ldh a, [$f0]
    ldh a, [$f0]
    or b
    or b
    pop af
    pop af
    db $fd
    db $fd
    db $fc
    db $fc
    cp $fe
    rst $38
    rst $38
    cp [hl]
    cp [hl]
    db $fc
    inc a
    cp a
    inc a
    pop af
    or $f0
    rst $38

jr_017_5280:
    ldh a, [$cf]
    ld de, $0b0f
    inc b
    ld b, $00
    ret nz

    ret nz

    ld a, b
    ld a, b
    db $fd
    db $fd
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
    ccf
    ccf
    rst $18
    rst $18
    db $d3
    db $d3
    ld h, e
    ld h, e
    rra
    rra
    jp Jump_017_61c3


    ld h, c
    nop
    nop
    ld a, h
    ld a, h
    adc a
    adc a
    inc sp
    inc sp
    sub b
    sub b
    ld b, h
    ld b, h
    inc b
    inc b
    sub b
    add b
    xor [hl]
    and [hl]
    ld [hl], $02
    add hl, hl
    ld bc, $011f
    inc e
    inc e
    xor h
    and h
    sbc a
    inc bc
    adc [hl]
    add b
    xor a
    jr nz, jr_017_524f

    inc b
    add c
    nop
    ldh [rP1], a
    ld a, h
    add h
    cp a
    ld b, c
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$7f], a
    add b
    rst $38
    nop
    dec sp
    ret nz

    db $e3
    rra
    db $e3
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    rrca
    ldh a, [$8f]
    ld [hl], b
    adc a
    ldh a, [rIE]
    nop
    rst $28
    sub b
    rst $28
    ret nc

    rst $28
    db $10
    ld e, a
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
    ccf
    ccf
    ld d, a
    ld d, a
    dec bc
    dec bc
    cpl
    cpl
    ld d, a
    ld d, a
    rra
    rra
    sbc $de
    cpl
    cpl
    ccf
    ccf
    rst $18
    rst $18
    cp $fe
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld a, l
    ld a, l
    sbc a
    sbc a
    dec de
    dec de
    cp a
    ccf
    rst $18
    ld e, a
    add a
    rlca
    daa
    daa
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    rst $38
    rst $38
    cp $fe
    cp $fe
    rst $38
    cp $fe
    rst $38
    cp $ff
    db $fc
    db $fd
    cp $fd
    cp $fd
    db $fc
    rst $38
    ld hl, sp-$05
    db $fc
    ei
    cp $f9
    db $fc
    ei
    db $f4
    di
    or $f1
    db $fc
    di
    ld hl, sp-$09
    ldh a, [$ef]
    ld a, [c]
    db $ed
    or $e9
    ld [c], a
    pop hl
    db $f4
    di
    or $f1
    ld hl, sp-$05
    cp $fd
    cp $fc
    cp [hl]
    cp [hl]
    rst $18
    rst $18
    sbc a
    sbc a
    adc $ce
    rst $08
    rst $08
    add a
    add a
    rst $00
    rst $00
    add e
    add e
    rst $00
    jp $8181


    add l
    add c
    add b
    add b
    add c
    add b
    pop bc
    ret nz

    jp $c1c0


    ret nz

    pop bc
    ret nz

    pop hl
    ldh [$e1], a
    ldh [$e2], a
    ldh [$f1], a
    ldh a, [$f2]
    ldh a, [$f1]
    ldh a, [$f9]
    ld hl, sp-$07
    ld hl, sp-$08
    ld hl, sp-$03
    db $fc
    db $fd
    db $fc
    cp $fe
    cp $fe
    cp $fe
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    rra
    rra
    rra
    rra
    rra
    rra
    cpl
    cpl
    rst $38
    rst $38
    rrca
    rrca
    rrca
    rrca
    adc a
    adc a
    ld [hl], a
    ld [hl], a
    xor a
    rrca
    ld c, e
    ld b, e
    cp e
    dec hl
    ld h, e
    ld b, e
    push hl
    ld h, l
    pop bc
    ld bc, $19f9
    ld a, [c]
    ld [bc], a
    db $f4
    nop
    cp $4a
    jr nc, jr_017_5402

    rrca
    dec c
    add c
    add c
    ret nz

    nop
    ld hl, sp+$08
    ld hl, sp+$00
    ld a, [$ff02]
    ld [bc], a
    rst $38
    ld bc, $00fc
    rst $38
    ld bc, $00fe
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    rst $38

jr_017_5402:
    ret nz

    ret nz

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
    ld b, e
    ld b, e
    rlca
    nop
    adc [hl]
    add c
    ldh a, [$f3]
    cp $fd
    rst $38
    rst $38
    rst $38
    rst $38
    db $eb
    rst $30
    ldh a, [$e1]
    ldh [$e0], a
    ret nz

    ldh [$e0], a
    ret nz

    ldh [$c0], a
    ret nz

    ret nz

    add b
    ret nz

    ret nz

    add b
    add b
    ret nz

    add b
    add b
    nop
    add b
    nop
    add b
    add b
    nop
    add b
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
    add b
    nop
    ret nc

    nop
    ret z

    nop
    adc b
    nop
    sbc b
    nop
    or h
    nop
    adc $30
    or [hl]
    ret z

    db $fc
    ret nz

    ld sp, hl
    ret nz

    cp l
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    and a
    ret c

    and d
    rst $18
    sub a
    rst $38
    cp a
    sub a
    rst $28
    rst $00
    jp nc, $f6c2

    and $ef
    rst $20
    ld a, c
    ld [hl], c
    rst $38
    ld a, e
    cp e
    dec sp
    rst $38
    ccf
    rst $18
    rra
    rst $38
    rra
    rst $28
    rrca
    rst $38
    rrca
    rst $30
    rlca
    db $fd
    ld bc, $00ff
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    nop
    rst $38
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    add b
    cp a
    add b
    cp a
    add b
    rst $38
    ret nz

    rst $18
    ret nz

    rst $38
    ldh [rIE], a
    ldh [$ef], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [$f7]
    ldh a, [rIE]
    ld hl, sp-$05
    ld hl, sp-$05
    ld hl, sp-$01
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    rst $38
    cp $fe
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ccf
    ccf
    ccf
    ccf
    sbc a
    sbc a
    rra
    rra
    rst $18
    sbc a
    rst $18
    ld e, a
    adc a
    rrca
    ld l, a
    ld c, a
    ld l, a
    cpl
    ld h, a
    daa
    or a
    sub a

Jump_017_5500:
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    nop
    adc a
    add b
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
    ccf
    ccf
    rla
    rst $20
    nop
    db $fc
    ld bc, $00fe
    ld a, a
    ret nz

    rst $18
    ei
    db $fc
    rst $38
    rst $38
    ccf
    ld a, a
    cpl
    rra
    dec bc
    rlca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rrca
    rrca
    rrca
    ld c, $fe
    rra
    xor $0e
    rst $28
    inc e
    db $fd
    ld a, $dd
    ld a, h
    cp a
    ld a, b
    ld a, e
    inc a
    dec sp
    ld a, b
    ld a, a
    ld [hl], b
    ld [hl], a
    ld a, b
    ld [hl], a
    ldh a, [rIE]
    db $e4
    db $eb
    ldh a, [$ef]
    db $f4
    db $eb
    call nz, $eadb
    push de
    add $f9
    add [hl]
    cp c
    push de
    xor d
    xor h
    db $d3
    ld l, [hl]
    ld de, $03fc
    db $fc
    inc bc
    nop
    rst $38
    inc bc
    db $fc
    ld bc, $02fe
    db $fd
    ld bc, $10fe
    rst $28
    dec d
    ld [$e619], a
    ld de, $15ee
    ld [$ed12], a
    nop
    rst $38
    ld [bc], a
    db $fd

Call_017_55aa:
    ld bc, $00fe
    rst $38
    ld bc, $00fe
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
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
    add b
    cp a
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $18
    ret nz

    rst $38
    ldh [rIE], a
    ldh [$ef], a
    ldh [rIE], a
    ldh a, [$f7]
    ldh a, [$f7]
    ldh a, [rIE]
    ld hl, sp-$05
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    db $fd
    db $fc
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
    nop
    nop
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_017_5625

    ld a, [de]
    dec de
    inc e
    dec e
    nop
    nop
    nop
    nop
    ld e, $1f
    jr nz, jr_017_5639

    ld [hl+], a
    inc hl
    nop
    inc h
    dec h
    ld h, $27
    jr z, jr_017_5621

jr_017_5621:
    nop
    nop
    add hl, hl
    ld a, [hl+]

jr_017_5625:
    dec hl
    inc l
    dec l
    ld l, $2f
    nop
    jr nc, jr_017_565e

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $00
    nop
    scf
    jr c, jr_017_5670

    ld a, [hl-]
    dec sp

jr_017_5639:
    inc a
    nop
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    nop
    ld b, d
    ld b, e
    nop
    ld b, h
    ld b, l
    ld b, [hl]
    nop
    nop
    nop
    nop
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    nop
    ld c, h
    ld c, l
    nop
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    nop
    ld d, h
    ld d, l
    ld d, [hl]

jr_017_565e:
    ld d, a
    ld e, b
    ld e, c
    nop
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

jr_017_5670:
    ld l, b
    nop
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
    nop
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
    nop
    add a
    adc b
    adc c
    adc d
    adc e
    nop
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
    nop
    nop
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
    and [hl]
    and a
    nop
    nop
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    nop
    nop
    xor [hl]
    xor a
    or b
    or c
    or d
    or e
    or h
    dec bc
    or l
    or [hl]
    or a
    cp b
    cp c
    nop
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
    jp nz, $c4c3

    push bc
    add $00
    nop
    nop
    rst $00
    ret z

    ret


    jp z, $cccb

    call $cfce
    ret nc

    pop de
    jp nc, $d4d3

    ld b, e
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
    nop
    xor $ef
    ldh a, [$f1]
    nop
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld b, l
    ld a, [$fcfb]
    db $fd
    cp $ff
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0945], sp
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $00
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0000
    nop
    nop
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
    ld bc, $0303
    nop
    nop
    inc bc
    ld bc, $0404
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    nop
    inc bc
    ld bc, $0004
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0300
    inc bc
    nop
    inc bc
    inc bc
    inc b
    inc b
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    ld [bc], a
    dec b
    dec b
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    dec b
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    inc bc
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    inc bc
    inc bc
    inc bc
    nop
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    nop
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
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
    nop
    nop
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
    ld bc, $0301
    inc bc
    inc bc
    ld b, e
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    inc bc
    ld bc, $0101
    ld bc, $0103
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
    ld bc, $0101
    inc bc
    inc bc
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, e
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    ld bc, $0303
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    ld bc, $0b09
    dec bc
    dec bc
    dec bc
    dec bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ccf
    ld e, a
    rra
    cpl
    rrca
    sub a
    rlca
    adc e
    inc bc
    push hl
    ld bc, $01f3
    ld sp, hl
    nop
    ld hl, sp+$00
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    ld bc, $10ff
    rst $28
    inc [hl]
    jp $c023


    ld b, c
    add b
    nop
    add b
    add sp, $30
    ld hl, sp+$3c
    db $fd
    ld a, $fb
    ccf
    push af
    ccf
    ld [hl], c
    inc sp
    jr nc, jr_017_5935

    jr nc, jr_017_5936

    jr nc, jr_017_5938

    jr nc, jr_017_593a

    jr nc, @+$72

    jr nc, @+$72

    inc [hl]
    ld [hl], b
    ld a, d
    jr nc, jr_017_5948

    ld [hl], b
    di
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld a, [$7c70]
    ld [hl], b
    ld a, [$f560]
    ld h, b
    ldh [rSVBK], a
    pop af
    ld h, b
    ldh a, [$7f]
    ld [hl], b
    rst $38
    ldh a, [$7f]
    ld [hl], b
    rst $38
    ld a, b
    rst $38
    ld [bc], a
    rst $38
    jr z, @-$27

    ld b, h
    cp e
    ld [c], a
    nop
    ret nz

    nop
    ldh [rP1], a
    ret nc

    nop
    add sp, $00
    db $f4
    nop
    ld a, [$7d00]
    add b
    cp d
    ld b, b
    ld e, a
    and b
    xor a
    ld d, b
    ld d, a
    xor b
    ld a, [hl+]
    push de
    dec d
    ld [$20df], a
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fc
    nop
    di
    inc bc
    sbc a
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
    db $fc
    db $fc
    ldh a, [$f0]
    ldh [$e0], a
    add e

jr_017_5935:
    add e

jr_017_5936:
    ldh [$e0], a

jr_017_5938:
    add b
    add b

jr_017_593a:
    ld bc, $0801
    ld [$009f], sp
    cp $80
    ret z

    ret z

    dec b
    dec b
    nop
    nop

jr_017_5948:
    ld a, b
    ld a, b
    pop bc
    pop bc
    db $e4
    db $e4
    nop
    nop
    ld b, b
    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    inc c
    nop
    pop af
    ld bc, $10f0
    or $14
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
    ld a, a
    ccf
    ccf
    rra
    rra
    ld c, a
    ld c, a
    and a
    daa
    db $d3
    inc de
    jp hl


    add hl, bc
    ld [hl], l
    dec b
    ld a, [$0702]
    rst $38
    add a
    ld a, a
    rst $08
    ccf
    cpl
    rra
    rlca
    rra
    rla
    rrca
    add a
    rrca
    inc bc
    rst $00
    add e
    rst $20
    db $e3
    rst $38
    scf
    ld a, a
    dec c
    rra
    ld [bc], a
    dec c
    inc b
    ld bc, $0102
    ld b, $01
    inc b
    inc bc
    inc b
    inc bc
    add h
    inc bc
    ld e, l
    inc bc
    xor b
    rlca
    ld e, b
    rlca
    xor b
    rla
    nop
    rra
    and b
    rra
    inc b
    dec de
    and b
    rrca
    ld [bc], a
    sbc a
    ld [hl+], a
    rst $18
    ld b, $ff
    ld c, $f7
    cp $ff
    sbc h
    ld l, a
    ld b, l
    cp a
    and b
    rra
    inc d
    dec bc
    ld [$1007], sp
    rrca
    jr c, jr_017_59e5

    ld [hl], c
    rrca
    and c
    rra
    ld h, c
    rra
    db $e3

jr_017_59e5:
    rra
    jp $833f


    ld a, a
    ld b, e
    cp a
    add a
    ld a, a
    rlca
    rst $38
    ldh a, [rP1]
    ret nz

    nop
    add e
    inc bc
    rrca
    rrca
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
    ld hl, sp-$08
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
    ld b, b
    ld b, b
    nop
    nop
    ld [$8100], sp
    nop
    xor d
    nop
    ldh [rP1], a
    add d
    add d
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    ld c, c
    ld c, c
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    ld bc, $0401
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    pop bc
    rst $38
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
    nop
    rst $38
    cp $ff
    db $fc
    db $fd
    ld a, l
    ld a, [hl]
    jr nz, @+$29

    inc sp
    inc [hl]
    nop
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
    jr nc, jr_017_5a9a

    db $10
    db $10
    db $10
    db $10
    jr nz, jr_017_5a90

    db $10
    db $10
    jr nc, jr_017_5aa4

    jr nc, jr_017_5aa6

    jr nz, jr_017_5a98

    jr nz, jr_017_5a9a

    jr nc, jr_017_5aac

    jr nz, jr_017_5a9e

    jr nz, jr_017_5aa0

    jr nc, jr_017_5ab2

    jr nc, jr_017_5ab4

    jr nc, jr_017_5ab6

    jr nc, jr_017_5ab8

    jr nc, @+$32

    jr nc, jr_017_5abc

    jr nc, jr_017_5abe

    jr nc, jr_017_5ac0

jr_017_5a90:
    add hl, sp
    add hl, sp
    ccf
    ccf
    inc a
    inc a
    dec a
    dec a

jr_017_5a98:
    ccf
    ccf

jr_017_5a9a:
    ccf
    ccf
    ccf
    ccf

jr_017_5a9e:
    ccf
    ccf

jr_017_5aa0:
    ccf
    ccf
    ccf
    ccf

jr_017_5aa4:
    ld a, a
    ld a, a

jr_017_5aa6:
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a

jr_017_5aac:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_017_5ab2:
    rst $38
    rst $38

jr_017_5ab4:
    rst $38
    rst $38

jr_017_5ab6:
    rst $00
    rst $00

jr_017_5ab8:
    ld bc, $0001
    nop

jr_017_5abc:
    nop
    nop

jr_017_5abe:
    and b
    and b

jr_017_5ac0:
    inc d
    inc d
    jr z, jr_017_5aec

    nop
    nop
    ld [bc], a
    ld [bc], a
    dec hl
    nop
    ld [hl+], a
    ld [bc], a
    rrca
    rrca
    xor c
    xor c
    db $fc
    db $fc
    nop
    nop
    inc b
    inc b
    db $f4
    db $f4
    ld [bc], a
    ld [bc], a
    dec bc
    dec bc
    cp e
    cp e
    ldh [$e0], a
    ret c

    ret c

    ret nz

    ret nz

    add b
    add b
    nop
    nop
    ld bc, $0301
    inc bc

jr_017_5aec:
    inc bc
    inc bc
    ld b, $06
    ld a, $3e
    ld c, a
    ld c, h
    db $eb
    ld [$18ff], sp
    push de
    db $10
    pop hl
    jr nz, jr_017_5a9e

    jr nz, jr_017_5b55

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
    rst $38
    rst $38
    ccf
    rst $38
    ld a, a
    cp a
    cp a
    ccf
    ccf
    cp a
    ld a, a
    rst $38
    nop
    nop
    ld a, a
    ld a, a
    ld [$0008], sp
    nop
    inc b
    dec bc
    ld [de], a
    dec c
    jr c, jr_017_5b2a

    ld [bc], a
    ld [bc], a
    or $f6

jr_017_5b2a:
    db $fc
    db $fc
    ld a, b
    ld a, b
    jr nc, jr_017_5b60

    nop
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
    add b

jr_017_5b55:
    add b
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    and b
    and b

jr_017_5b60:
    sub b
    sub b
    di
    di
    di
    di
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
    rst $38
    rst $38
    rst $28
    rst $28
    ld c, c
    ld c, c
    add l
    add l
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_017_5b98

    ld [$8c00], sp
    add b
    nop
    nop
    dec b
    nop
    db $10
    stop
    nop
    ld b, b
    ld b, b
    add a
    add a
    ld bc, $0301
    inc bc
    rst $00
    rst $00
    inc b
    inc b

jr_017_5b98:
    inc c
    inc c
    adc b
    adc b
    sbc b
    sbc b
    jr nc, jr_017_5bd0

    jr nc, jr_017_5bd2

    ld h, l
    ld h, l
    ld h, b
    ld h, b
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
    ei
    ei
    ei
    ei
    ld sp, hl
    ld sp, hl
    db $fd
    db $fd
    db $fd
    db $fd
    rst $38
    rst $38
    db $fc
    db $fc
    cp $fe

jr_017_5bd0:
    cp $fe

jr_017_5bd2:
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38

Jump_017_5bda:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor b
    xor b
    cp b
    cp b
    inc a
    db $fc
    ld a, [de]
    ret c

    cp b
    rra
    db $f4
    sbc a
    ld hl, sp-$01
    db $ec
    rst $38
    db $f4
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    db $f4
    rst $38
    ld hl, sp+$00
    ld hl, sp+$00
    db $f4
    nop
    rst $38
    ld hl, sp-$09
    rst $38
    pop de
    rst $38
    db $d3
    rst $38
    db $d3
    rst $38
    rst $30
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
    ccf
    rst $38
    ld a, a
    rst $38
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
    ld hl, sp-$08
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    dec b
    inc b
    jr nc, jr_017_5c50

jr_017_5c50:
    db $eb
    ld [$1077], sp
    ld h, b
    jr nz, jr_017_5cce

    ld [hl], a
    ld l, b
    ld l, b
    ret nz

    ret nz

    ret nc

    ret nc

    add b
    add b
    nop
    nop
    xor c
    xor c
    call nc, Call_000_00d4
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jp c, $fcda

    db $fc
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
    ld a, a
    ld a, a
    ld a, $3e
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
    ret nz

    nop
    rra
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    ld b, c

Jump_017_5c97:
    ld b, c
    nop
    nop
    ld [hl], e
    ld [hl], c
    inc h
    inc h
    push hl
    push hl
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
    rst $38
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    cp [hl]
    cp [hl]
    dec b
    nop
    jr c, jr_017_5cf6

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

jr_017_5cce:
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    nop
    rst $18
    rst $38
    adc d
    rst $38
    jp z, $efff

    rst $38
    ld a, [$80fa]
    add b
    nop
    nop
    ld b, b
    ld b, b
    nop
    nop
    dec b
    nop
    ld b, b
    nop
    db $fd
    ld b, b
    ld a, a
    nop
    rst $38
    ld bc, $0000

jr_017_5cf6:
    ldh [$e0], a
    nop
    nop
    nop
    nop
    call c, Call_017_66dc
    ld h, [hl]
    ld [$7508], sp
    ld [hl], l
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
    ld [$0a08], sp
    ld a, [bc]
    inc b
    inc b
    nop
    nop
    ret nc

    ret nc

    ldh a, [rIE]
    jr nz, @+$01

    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    rlca
    rst $38
    db $fc
    rst $38
    inc e
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
    ld a, a
    ld a, a
    ld c, a
    ld c, a
    ccf
    rra
    sub a
    sub a
    xor a
    xor a
    rst $28
    rst $28
    rst $30
    rst $30
    rst $38
    rst $38
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
    ld h, c
    ld h, c
    db $fc
    db $fc
    cp $fe
    ld b, h
    inc b
    add hl, bc
    ld [$18d8], sp
    db $fd
    inc e
    adc $0e
    rst $10
    rlca
    add [hl]
    ld b, $81
    nop
    pop bc
    nop
    db $e3
    nop
    di
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
    db $fc
    cp h
    db $fc
    cp h
    db $fc
    cp h
    db $fc
    cp h
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$02
    ld sp, hl
    rst $38
    ld hl, sp-$01
    ld hl, sp-$02
    ld sp, hl
    cp $f9
    rst $38
    ld hl, sp-$07
    ld hl, sp-$03
    db $fc
    ld sp, hl
    ld hl, sp-$05
    ld hl, sp-$01
    ld hl, sp-$06
    ld hl, sp-$06
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ld b, b
    cp $00
    ld e, a
    nop
    rst $38
    db $10
    daa
    nop
    nop
    nop
    nop
    nop
    jr jr_017_5de0

    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    nop
    nop
    ret c

    ret c

    ld b, h
    ld b, h
    ldh a, [$f0]
    jr c, jr_017_5e12

    nop
    nop
    nop
    nop
    nop
    nop

jr_017_5de0:
    jr nc, jr_017_5e12

    add b
    add b
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $1f10
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
    dec b
    inc b
    ld h, a
    nop
    rst $28
    nop
    ret nz

    ret nz

    ldh [$e0], a
    ld hl, sp-$08
    ld e, [hl]
    ld e, [hl]
    db $eb
    db $eb
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_017_5e12:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    sbc a
    rst $38
    rst $38
    ld sp, hl
    ld sp, hl
    rst $38
    rst $38
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    inc bc
    inc bc
    nop
    ld bc, $0302
    nop
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    rst $38
    add b
    add c
    xor b

jr_017_5e39:
    xor e
    nop
    ld bc, $03f0
    nop
    inc bc
    ldh a, [$03]
    ldh a, [$03]
    ldh a, [rTAC]
    ldh a, [rTAC]
    ld hl, sp+$07
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    inc b
    ei
    ld e, d
    and l
    inc [hl]
    sra b
    rst $10
    jr nz, jr_017_5e39

    db $10
    rst $28
    inc b
    ei
    inc e
    db $e3
    rla
    db $e3
    ccf
    rst $00
    ld d, $ef
    ld [hl], $ce
    rla
    ld [$ea17], a
    rrca
    cp $0f
    rst $30
    ldh a, [rTMA]
    ld hl, sp+$04
    ld hl, sp+$00
    db $fd
    ld bc, $01fd
    rst $38
    ld bc, $817f
    rst $38
    ld bc, $41bf
    rst $38
    ld bc, $01fb
    rst $38
    ld bc, $01fd
    db $fd
    ld bc, $01f5
    add e
    inc bc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rlca
    inc bc
    inc bc
    rlca
    rlca
    rla
    rla
    inc bc
    inc bc
    ld e, a
    rlca
    rst $38
    rlca
    cp $06
    cp $06
    ld d, $16
    rlca
    rlca
    ld b, $07
    ld b, $07
    ld b, $06
    ld b, $07
    ld [bc], a
    inc bc
    ld b, $06
    ld b, $06
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, d
    ld b, d
    nop
    nop
    nop
    nop
    jr nz, jr_017_5ef2

    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
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
    ld d, c
    ld d, b
    rst $38
    nop
    ei
    nop
    ei
    nop
    nop
    nop

jr_017_5ef2:
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    push af
    push af
    ld d, a
    ld d, a
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
    rst $38
    rst $38
    sbc a
    sbc a
    rst $38
    rst $38
    pop bc
    rst $38
    inc a
    jp nz, Jump_017_4900

    nop
    sbc a
    ld de, $17ae
    add sp, -$42
    ld b, c
    rst $38
    nop
    rst $38

jr_017_5f1f:
    jr jr_017_5f1f

    add hl, de
    ld a, a
    sbc h
    ld a, [hl]
    adc c
    ld a, h
    add d
    nop
    cp h
    nop
    adc b
    nop
    ld hl, sp+$00
    add b
    ld h, c
    ld h, c
    nop
    ld d, $00
    rst $38
    ld [$1eb2], sp
    ldh [$7c], a
    add b
    db $fc
    nop
    db $fc
    ld bc, $00fe
    cp $00
    rst $38
    ld bc, $00fe
    db $fc
    nop
    cp $01
    cp $00
    rst $38
    ld bc, $fdc3
    db $e3
    db $fd
    db $e3
    ld a, a
    ld [hl], a
    bit 0, e
    ei
    ld d, e
    db $eb
    ld d, d
    ret


    ldh [$f7], a
    nop
    rst $38
    dec sp
    rst $38
    ld a, a
    xor a
    ld a, a
    and l
    ld a, b
    xor a
    ld a, b
    rst $18
    ld a, b
    rst $08
    ld a, b
    cp $78
    sbc a
    ld a, b
    cp $78
    rst $18
    ld a, b
    rst $28
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld a, a
    pop af
    ld a, a
    rst $38
    ld l, e
    inc d
    ld a, l
    ld [bc], a
    ld e, a
    inc h
    ld a, e
    rla
    ccf
    call nz, $867b
    db $ed
    ld d, [hl]
    cp a
    ld h, b
    ld a, a
    db $f4
    rst $38
    ld d, e
    xor $3f
    cp a
    ld a, [hl]
    rst $38
    ld a, a
    ld e, a
    rst $38
    rst $38
    rst $28
    rst $38
    cp $ff
    ld a, a
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $f4
    rst $38
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    sbc [hl]
    sbc [hl]
    rst $38
    rst $38
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
    ld b, b
    ld b, b
    ldh a, [rSVBK]
    add sp, $28
    ret nz

    nop
    ld hl, sp+$08
    db $fc
    inc b
    cp $02
    rst $38
    nop
    rst $38
    nop
    ld e, a
    ld e, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
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
    ld d, l
    ld d, l
    xor d
    xor d
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    add e
    rst $38
    inc a
    jp nz, $a51e

    ld e, $e3
    rra

jr_017_6007:
    ld l, d
    rrca
    ld [hl], d
    rla
    db $eb
    ccf
    pop de
    rra
    ld a, [c]
    ld a, a
    add b
    ld [hl], $c9
    jr nz, jr_017_6068

    nop
    nop
    nop
    ld bc, $0100
    ld bc, $0002
    rlca
    inc d
    dec hl
    ld a, l
    add d
    ld a, [hl]
    and c
    ld a, l
    add d
    ld a, h
    and e
    cp d
    ld b, l
    ld sp, $43ce
    cp l
    pop hl
    ld [de], a
    jr nz, jr_017_6007

    nop
    ld sp, hl
    nop
    ld hl, sp-$01
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    cp $00
    ld a, [hl]
    nop
    ld a, $00
    ld a, $00
    nop
    nop
    ld e, h
    nop
    ld [bc], a
    nop
    ret nz

    add b
    ld b, b
    ld a, [hl]
    add c
    rst $38
    jp c, $efff

    rst $38
    ld l, e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    push af
    nop
    ld a, [$f500]
    nop
    rst $38
    nop
    rst $38

jr_017_6068:
    nop
    rst $38
    nop
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    cp a
    ld a, d
    rst $10
    ld a, c
    cp a
    ld a, h
    rst $38
    rst $38
    rst $30
    rst $38

jr_017_607a:
    rst $18
    ld a, a
    rst $38
    rra
    rst $28
    cp a
    ld a, a
    db $d3
    rst $38
    add e
    push af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    ld e, l
    rst $38
    inc e
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    db $10
    rst $38
    nop
    rst $38
    inc h
    rst $38
    ld [hl], b
    cp $21
    ld bc, $07fd
    rst $20
    ccf
    ccf
    rst $38
    rst $38
    inc b
    inc b
    ld b, $06
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld d, c
    ld d, c
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    sbc h
    inc e
    ldh a, [rNR10]
    db $fc
    inc c
    db $fc
    nop
    rst $38
    db $10
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    ld a, [bc]
    ld d, l
    ld d, l
    ld l, e
    ld l, e
    xor a
    xor a
    rst $38
    rst $38
    ld hl, sp-$08
    jp $34c3


    db $10
    ld [hl], b
    jr nc, jr_017_607a

    sub c
    ld e, a
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    add b
    add b
    ld h, b
    ret nc

    jr nz, @+$22

    ret c

    ld h, b
    jr jr_017_613b

    jr c, jr_017_60fd

jr_017_60fd:
    jr c, jr_017_60ff

jr_017_60ff:
    ld a, b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ldh a, [rP1]
    ldh a, [rLCDC]
    and b
    ldh [rP1], a
    ret nz

    and b
    ret nz

    jr nz, jr_017_6111

jr_017_6111:
    nop
    nop
    nop
    ld [de], a
    ld b, b
    ld [$1460], sp
    jr nz, @+$04

    and b
    ld [$14c0], sp
    add b
    ld a, [hl+]
    nop
    ld d, h
    nop
    ld l, b
    add b
    inc h
    nop
    jr nc, jr_017_612a

jr_017_612a:
    nop
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    ld b, b
    cp a
    cp $01
    rst $38
    rst $38
    rst $38
    db $fd
    ld bc, $01ff

jr_017_613b:
    cp $01
    cp $01
    cp a
    ld bc, $01ff
    cp [hl]
    ld bc, $01ff
    cp $01
    cp $01
    rst $38
    rst $38
    rst $28
    rst $38
    cp $af
    ld a, [hl]
    rst $38
    ld a, a
    rst $28
    dec [hl]
    rst $38
    ld hl, sp-$01
    ld [$bbff], a
    db $ed
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    db $fd
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    sub l
    rst $38
    add sp, -$01
    ld l, h
    cp $5d
    sbc $20
    db $f4
    ld a, [bc]
    ld hl, sp+$04
    ldh a, [$08]
    ldh [rNR10], a
    ret nz

    nop
    add b
    ld b, b
    nop
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    ret nz

    nop
    nop
    cp a
    cp a
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

    ld b, b
    ld b, b
    jr nz, jr_017_61ba

    jr nc, jr_017_61cc

    sub b
    sub b
    sbc b
    sbc b
    ld c, h
    ld c, h
    rrca
    rrca
    ld b, $06
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    inc de
    inc de
    nop
    nop
    ret nz

    ld b, b
    ld d, l
    ld d, l
    xor e
    xor e
    xor a
    xor a
    rst $38
    rst $38
    ld a, a
    ld a, a

jr_017_61ba:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_017_61c3:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc

jr_017_61cc:
    db $fc
    db $fc
    ei
    ei
    nop
    nop
    ld bc, $f701
    rst $30
    xor a
    xor a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [de]
    ld a, [de]
    ld a, a
    ld a, a
    ld e, $1e
    add hl, de
    dec de
    ld [$080f], sp
    dec c

jr_017_61ec:
    ld c, $0e
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0001

jr_017_61f5:
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
    add b
    add b
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    add b
    add b
    ret nz

    ret nz

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

jr_017_621b:
    nop
    add b
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

jr_017_622a:
    add b
    nop
    add b
    nop
    ld b, b
    nop
    ret nz

    jr nz, @-$3e

    jr nz, jr_017_61f5

    jr nz, jr_017_6277

    add b
    ret nz

    jr nz, jr_017_621b

    nop
    ldh [rP1], a
    ret nz

    jr nz, jr_017_6251

    ldh a, [rP1]
    ldh [rP1], a
    and b
    nop
    ret nz

    jr nz, jr_017_622a

    jr nz, jr_017_61ec

    ld h, b
    ldh [$f0], a
    ldh a, [$f0]

jr_017_6251:
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f8]
    ld hl, sp-$04
    db $fc
    ld hl, sp-$08
    ei
    ei
    ld hl, sp-$08
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    db $10
    rrca
    rrca
    ld [bc], a

jr_017_6277:
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    and b
    and b
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

    ld b, b
    ld b, b
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    cp $fe
    ld hl, sp-$08
    di
    pop af
    ld a, [c]
    ld a, [c]
    ei
    ld sp, hl
    db $d3
    jp $afaf


    add a
    add a
    rra
    rra
    ld e, a
    rra
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    cp $fe
    inc a
    inc a
    inc b
    inc b
    add b
    nop
    inc h
    call nz, Call_000_00a0
    add b
    add b
    ret nz

    ret nz

    add [hl]
    add [hl]
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
    ld c, $0e
    inc c
    inc c
    rlca
    rlca
    ld e, $1e
    ld e, [hl]
    ld e, [hl]
    ld a, $3e
    cp a
    cp a
    cp [hl]
    cp [hl]
    ld a, a
    ld a, a
    ld a, [hl]
    ld a, [hl]
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    rst $38
    rst $38
    db $e3
    db $e3
    inc b
    inc b
    nop
    nop
    nop
    nop
    ld [$0208], sp
    nop
    rra
    db $10
    cp e
    ld [$00fc], sp
    cp $00
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    nop
    nop
    cp [hl]
    cp [hl]
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ldh [$e0], a
    nop
    nop
    nop
    nop
    jr jr_017_6332

    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    ld l, b
    ld l, b
    ld [$0608], sp
    ld b, $00
    nop
    rra
    rra
    db $f4
    db $f4

jr_017_6332:
    nop
    nop
    nop
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
    nop
    ld b, a
    rlca
    ld c, a
    rrca
    cp a
    cp a
    ld a, a
    ld a, a
    ccf
    ccf
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
    rst $30
    rst $30
    db $e3
    db $e3
    db $db
    db $db
    db $db
    db $db
    ei
    ei
    rst $18
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    ret


    adc $b1
    or [hl]
    ret


    add $f0
    db $fd
    ld hl, sp-$02
    ld hl, sp-$03
    ld hl, sp-$01
    db $fc
    rst $38
    ei
    db $fc
    add sp, -$10
    ret c

    ldh [$d0], a
    ldh [$d0], a
    ldh [$d0], a
    ldh [$d0], a
    ldh [$d1], a
    ldh [$d1], a
    ldh [$d1], a
    ldh [$d7], a
    ldh [$b0], a
    adc a
    cp b
    add a
    ld a, [hl]
    ld b, c
    ld e, [hl]
    ld b, c
    rra
    nop
    rlca
    nop
    ld c, a
    ld b, b
    rst $08
    ret nz

    rst $18
    ret nz

    rst $00
    ret nz

    push bc
    ret nz

    jp $d0c0


    ret nc

    db $fc
    db $fc
    ld a, h
    ld a, h
    ld [hl], b
    ld [hl], b
    add b
    add b
    add b
    add b
    rlca
    nop
    add e
    add b
    add c
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    rst $18
    rst $18
    ld a, [bc]
    ld a, [bc]
    ld [bc], a
    ld [bc], a
    add b
    add b
    nop
    nop
    ld [$f408], sp
    nop
    ld a, a
    ld [$00d7], sp
    ccf
    nop
    rst $08
    ld b, b
    rst $30
    nop
    db $fc
    nop
    dec b
    ld bc, $0000
    ld bc, $4401
    ld b, h
    jr z, jr_017_640c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_017_63f8:
    db $10
    stop
    nop
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld bc, $0001
    nop
    rla
    dec d
    dec bc
    ld [bc], a
    rrca
    add hl, bc

jr_017_640c:
    rlca
    inc b
    rrca
    ld [$ffff], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fa
    ld hl, sp-$10
    rst $30
    cp $fc
    ld hl, sp-$02
    ldh [rIE], a
    ret nz

    rst $38
    add b
    cp $01
    ld hl, sp+$0e
    pop af
    dec de
    rst $20
    rrca
    sbc a
    dec [hl]
    ld a, [hl]
    ld b, $f8
    jr nc, jr_017_63f8

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    ld a, $00
    db $fc
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
    cp $01
    cp $01
    ld [hl], d
    add c
    ld [hl], e
    add b
    ld e, d
    and l
    add b
    ld a, a
    add d
    ld a, l
    sub a
    ld l, b
    rst $38
    nop
    cp $00
    db $fd
    nop
    inc h
    nop
    ld bc, $0001
    nop
    ld b, b
    nop
    nop
    rst $38
    add b
    rst $38
    ld b, b
    cp a
    ld a, e
    add h
    inc hl
    call c, $ff00
    add d
    db $fd
    ret nz

    rst $38
    ccf
    nop
    adc a
    add b
    pop af
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_017_648e:
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rrca
    rrca
    nop
    nop
    add b
    add b
    inc b
    inc b
    add b
    add b
    jp nz, $f502

    jr nz, @+$01

    nop
    ret nz

    nop
    rst $38
    nop
    push af
    nop
    ld a, a
    nop
    inc bc
    nop
    sub b
    sub b
    ld b, $06
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
    add b
    add b
    nop
    nop
    ld b, h
    ld b, h
    nop
    nop
    nop
    nop
    nop
    nop

jr_017_64d4:
    jr nz, jr_017_64f6

    nop

jr_017_64d7:
    nop
    nop
    nop
    nop
    nop
    and b
    jr nz, jr_017_648e

    and b
    cp $fe
    ei
    ld hl, sp-$14
    ldh [$d1], a
    ret nz

    ld h, d
    ld bc, $008f
    inc a
    ld [bc], a
    jp nc, $512c

    inc bc
    ld [hl], l
    inc bc
    dec [hl]
    add c

jr_017_64f6:
    ld de, $01c3
    jp Jump_017_7b31


    ld sp, hl
    ei
    db $fc
    ei
    sbc b
    rst $38
    cp b
    rra
    jr c, jr_017_6525

jr_017_6506:
    dec a
    ld a, [de]
    ld a, $19
    dec [hl]
    ld a, [de]
    inc [hl]
    dec de

jr_017_650e:
    inc [hl]
    dec de

jr_017_6510:
    ccf
    jr jr_017_6552

    jr jr_017_6554

    jr jr_017_6555

    add hl, de
    ld a, a
    jr jr_017_64d7

    dec de
    ld hl, sp+$1f
    ld a, [$3b1d]
    call c, $f81f
    rst $38

jr_017_6525:
    jr jr_017_6506

    jr @+$01

    jr @+$01

    jr @+$01

    jr jr_017_650e

    jr jr_017_6510

    jr jr_017_6592

    jr jr_017_64d4

    jr jr_017_6596

    jr jr_017_6558

    jr @+$01

    ld hl, sp+$17
    db $10
    rlca
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    reti


    ld h, $7e
    add c
    dec e
    ld [c], a
    dec bc
    db $f4
    ld [$fbf7], sp
    inc b

jr_017_6552:
    rst $28
    db $10

jr_017_6554:
    rst $38

jr_017_6555:
    nop
    rra
    nop

jr_017_6558:
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
    rra
    rra
    ld bc, $0001
    nop
    pop hl
    pop hl
    db $10
    db $10
    add h
    inc b
    ld c, $0e
    ld b, b
    nop
    ld b, d
    ld [bc], a
    cp $00
    rst $38
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld h, b
    ld h, b
    jr nc, jr_017_65b8

    inc c
    inc c
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ccf
    nop

jr_017_6592:
    ccf
    nop
    rra
    nop

jr_017_6596:
    rra
    nop
    ccf
    nop
    ld b, b
    ld b, b
    add hl, sp
    nop
    add hl, hl
    nop
    ld b, l
    nop
    ld e, e
    jr jr_017_65a6

    nop

jr_017_65a6:
    ld b, l
    inc b
    rst $30
    nop
    rst $30
    nop
    ld b, b
    nop
    ld a, [c]
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe

jr_017_65b8:
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    db $eb
    add sp, -$42
    or b
    ld e, b
    ld b, b
    db $e3
    add b
    ld a, b
    db $fd
    ldh [$fd], a
    add b
    pop af
    add b
    or h
    add b
    db $db
    add b
    add sp, -$40
    push af
    ld b, b
    db $ec
    ld b, b
    ld hl, sp+$40
    ld sp, hl
    rst $30
    ld hl, sp-$09
    ld hl, sp-$03
    ld a, [$faf5]
    ldh a, [rIE]
    pop af
    cp $66
    rst $38
    ld [de], a
    rst $28
    ld [hl], $c9
    rra
    ldh [$4c], a
    or c
    dec c
    ldh a, [rNR32]
    ldh [$0d], a
    ldh a, [$2c]
    ret nc

    db $ed
    db $10
    adc h
    db $10
    db $dd
    nop
    sbc h
    nop
    sbc l
    nop
    sbc [hl]
    nop
    adc a
    nop
    adc [hl]
    nop
    rrca
    nop
    adc d
    nop
    dec d
    nop
    adc d
    inc b
    add l
    ld [$8f00], sp
    dec e
    add e
    call z, Call_000_1b03
    add h
    db $dd
    nop
    ld l, b
    add b
    ld l, b
    add b
    ld [hl], d
    add b
    ld e, a
    add b
    ld a, a
    add b
    dec a
    jp nz, $c700

    nop
    rst $18
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
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    db $e3
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
    ccf
    ccf
    ld b, a
    ld b, a
    adc c
    adc c
    inc bc
    inc bc
    dec b
    dec b
    nop
    nop
    ld b, b
    ld b, b
    add b
    add b
    add b
    nop
    ld c, b
    ld b, b
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_017_66b0

    pop af
    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    rst $38
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
    rst $08
    rst $08
    cp a
    cp a
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

jr_017_66b0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    or d
    rst $38
    inc a
    ld [c], a
    ld a, [c]
    pop hl
    ret nz

    pop hl
    ld [hl], $c1
    ld a, $00
    ld e, l
    nop
    ld d, a
    nop
    ld l, d
    nop
    ld d, h
    nop
    ret nz

    nop
    nop
    nop

Call_017_66dc:
    nop
    ld bc, $0807
    inc c
    nop
    jr jr_017_6704

    ldh a, [rP1]
    ret nz

    nop
    ld b, b
    add b
    add l
    nop
    xor e
    db $10
    ld c, h
    add e
    db $e3
    nop
    add hl, de
    ret nz

    ld hl, sp+$00
    ldh a, [rP1]
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ld h, b
    nop

jr_017_6704:
    ldh [rP1], a
    ld h, b
    nop
    or b
    nop
    ld [hl], b
    add b
    ldh a, [rP1]
    ld [hl], b
    add b
    or b
    nop
    ld a, b
    add b
    ld a, $c0
    ld e, a
    add b
    xor a
    nop
    ld d, b
    adc a
    ld a, a
    rst $38
    rst $38
    rst $38
    inc b
    ei
    ldh [$1f], a
    db $f4
    dec bc
    dec d
    nop
    ld b, d
    ld bc, $039c
    ld a, b
    rlca
    ret nz

    ccf
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    adc a
    add b
    cp $fe
    rst $38
    rst $38
    rra
    rra
    rlca
    rlca
    nop
    nop
    jr z, jr_017_6782

    db $10
    db $10
    ld c, b
    ld c, b
    nop
    nop
    sub [hl]
    sub [hl]
    ld [hl], d
    ld [hl], d
    ld [$0008], sp
    nop
    nop
    nop
    ld [hl+], a
    ld [hl+], a
    rra
    rra
    nop
    nop
    nop
    nop
    ld a, a
    nop
    ld e, $00
    add b
    nop
    inc sp
    db $10
    db $fc
    inc b
    cp $00
    rst $38
    nop
    db $fc
    nop

jr_017_6782:
    push de
    ld bc, $04fe
    ld a, b
    nop
    ld sp, hl
    ld bc, $02f2
    reti


    ld bc, $00c5
    sbc a
    sbc a
    ld a, a
    ld a, a
    cp l
    cp l
    sub $d0
    call c, $b0c0
    add b
    jp $8680


    add c
    ldh [$f9], a
    add b
    db $e4
    ld bc, $08ea
    sub l
    ld bc, $0052
    xor c
    ld [$0095], sp
    ld l, d
    ld [bc], a
    dec [hl]
    nop
    db $f4
    ld bc, $004a
    ld h, b
    rrca
    and b
    dec a
    ld b, b
    ldh [rP1], a
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    inc c
    inc bc
    ld bc, $a81c
    ld b, e
    ld d, c
    inc c
    sub e
    ld h, b
    dec [hl]
    ret nz

    scf
    ret nz

    ccf
    ret nz

    cp a
    ld b, b
    rst $18
    jr nz, jr_017_6838

    jr nz, @+$11

    jr nc, jr_017_67fd

    rra
    nop
    rra
    jr jr_017_67e9

    ld [$1007], sp
    rrca
    ld sp, $190e

jr_017_67e9:
    ld b, $06
    ld bc, $0106
    inc bc
    nop
    ld b, $01
    ld c, $01
    ld e, $01
    cp $01
    rst $38
    nop
    inc bc
    rst $38
    rst $38

jr_017_67fd:
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    push bc
    rst $38
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
    rst $38
    rst $38
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

jr_017_6838:
    rrca
    rrca
    ld bc, $0101
    ld bc, $0000
    inc d
    inc d
    ld [hl+], a
    ld [hl+], a
    inc b
    inc b
    ld hl, $1801
    ld [$8181], sp
    and $e6
    ld [hl], b
    ld [hl], b
    ld c, h
    inc c
    ld hl, sp+$00
    nop
    nop
    ld b, [hl]
    ld b, b
    rst $38
    nop
    rst $38
    nop
    ld a, [hl]
    ld b, b
    sbc a
    db $10
    ld l, e
    ld [$0010], sp
    ld c, h
    ld b, b
    rst $38
    nop
    rst $30
    nop
    ld h, a
    inc b
    ld h, l
    inc b
    ldh a, [rP1]
    rst $30
    rst $30
    rst $20
    rst $20
    db $fc
    db $fc
    cp $fe
    rst $38
    rst $38
    db $ed
    db $ec
    or $e1
    pop bc
    adc $df
    ret nc

    ldh a, [$f1]
    rst $20
    ldh [$cd], a
    jp nz, $142b

    push hl
    ld a, [de]
    cp e
    ld b, h
    jp z, Jump_000_0035

    jr nz, jr_017_68d8

    adc d
    dec b
    ld b, d
    add h
    jr z, @+$0c

    add h
    dec h
    ld d, d
    inc d
    ld c, c
    ld d, c
    and d
    add hl, hl
    ld [de], a
    ld b, $21
    ld d, l
    xor d
    ld a, [bc]
    dec d
    ldh [rP1], a
    ld a, d
    inc b
    add hl, de
    nop
    ld c, $0f
    rrca
    ccf
    ld [hl], a
    rst $38
    cpl
    rst $18
    cpl
    ld a, a
    rlca
    cp a
    rst $20
    rra
    rst $20
    rra
    rst $20
    rra
    ld e, $e6
    ld a, $c6
    ld a, $c6
    ld a, [hl]
    add [hl]
    xor $16
    xor $16
    sbc $26
    cp $06
    cp [hl]
    ld b, [hl]
    ld a, [hl]
    add [hl]
    cp $06
    cp $06

jr_017_68d8:
    cp $06
    cp [hl]
    ld b, [hl]
    sbc [hl]
    ld h, [hl]
    sbc [hl]
    ld h, [hl]
    cp d
    ld c, d
    ld a, [de]
    ld [c], a
    and $1e
    jp z, Jump_017_7a32

    add d
    nop
    nop
    rlca
    nop
    db $fd
    ld [bc], a
    dec d
    ld [$ff00], a
    cp [hl]
    ld b, c
    rst $38
    nop
    dec h
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    nop
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
    dec b
    rst $38
    sub l
    rst $38
    ld h, l
    nop
    add d
    add b
    ld a, [$fffa]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rra
    ld h, a
    ld h, a
    inc [hl]
    inc [hl]
    inc b
    inc b
    nop
    nop
    sub h
    sub h
    db $10
    stop
    nop
    ld b, b
    ld b, b
    ld b, $06
    ld d, b
    ld d, b
    nop
    nop
    nop
    nop
    ld [c], a
    ld [bc], a
    or $02
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
    ld bc, $20e2
    ldh a, [rP1]
    db $fd
    ld bc, $00ff
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
    jr jr_017_6993

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_017_69a3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_017_69b3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_017_69c3

    ld [hl-], a

jr_017_6993:
    inc sp
    inc [hl]
    dec [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_017_69d4

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c

jr_017_69a3:
    ld b, d
    ld b, e
    ld b, h
    dec [hl]
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

jr_017_69b3:
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

jr_017_69c3:
    dec [hl]
    dec [hl]
    dec [hl]
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

jr_017_69d4:
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
    dec [hl]
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
    dec [hl]
    dec [hl]
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    jp z, $3535

    dec [hl]
    set 1, h
    call $cfce
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    dec [hl]
    dec [hl]
    reti


    jp c, $dcdb

    db $dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    dec [hl]
    db $e3
    db $e4
    dec [hl]
    dec [hl]
    dec [hl]
    push hl
    and $e7
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$35]
    pop af
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
    jr jr_017_6aa5

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_017_6ab5

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_017_6ac5

    ld a, [hl+]
    dec hl
    inc l
    dec l
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc

jr_017_6aa5:
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc

jr_017_6ab5:
    ld bc, $0101
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0301
    inc bc
    inc bc

jr_017_6ac5:
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
    inc b
    inc b
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0103
    inc bc
    inc bc
    nop
    nop
    inc b
    inc b
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0303
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
    inc bc
    ld bc, $0303
    inc bc
    ld bc, $0101
    ld bc, $0304
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0303
    inc bc
    inc bc
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0301
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    ld bc, $0303
    ld bc, $0303
    inc bc
    ld bc, $0401
    inc b
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    ld b, $02
    ld [bc], a
    inc bc
    inc b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    ld b, $06
    ld b, $02
    ld [bc], a
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
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    inc b
    inc bc
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0303
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    inc bc
    inc bc
    inc bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec c
    ld c, $0a
    ld c, $0b
    add hl, bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    add hl, bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    dec c
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc

jr_017_6bdc:
    dec bc
    dec bc
    add hl, bc
    dec bc
    ld [hl], c
    ld [hl], c
    or e
    or e
    dec de
    dec de
    ccf
    ccf
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push af
    push af
    di
    di
    db $e3
    db $e3
    jp nz, $81c2

    add c
    add b
    add b
    add b

jr_017_6c05:
    add b
    nop
    nop
    ld b, b
    ld b, b
    call nz, $ffc4
    rst $38
    ld a, a
    ld a, a
    jp hl


    jp hl


    inc d
    db $10
    halt
    jr jr_017_6c78

    ld e, h
    jr nz, jr_017_6c6b

    jr nz, jr_017_6bdc

    cp a
    rst $38
    rst $38
    cp $fe
    db $fd
    db $fd
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $28
    rst $28
    rst $08
    rst $08
    rst $18
    ret nz

    ld [hl], a
    ld hl, sp-$44
    ld a, a
    rra
    rst $28
    ld a, d
    rlca
    db $e4
    dec de
    ld e, b
    rlca
    and l
    dec bc
    ld d, e
    dec b
    jr z, jr_017_6c49

    ld [bc], a
    dec b
    dec b
    ld a, [bc]
    ld e, $01
    dec d

jr_017_6c49:
    ld a, [bc]
    ld h, a
    db $10
    rst $18
    jr nz, jr_017_6c05

    ld b, c
    ld l, $c1
    rla
    ret nz

    ld c, c
    add d
    inc d
    add d
    and [hl]
    nop
    nop
    inc b
    inc c
    nop
    ld b, h
    ld [$0880], sp
    jr jr_017_6c64

jr_017_6c64:
    nop
    db $10
    jr nc, jr_017_6c68

jr_017_6c68:
    db $10
    jr nz, jr_017_6cab

jr_017_6c6b:
    jr nz, jr_017_6c8d

    ld b, b
    nop
    ld b, b
    ld b, b
    add b
    nop
    add b
    nop
    add b
    add c
    nop

jr_017_6c78:
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
    xor a
    nop
    ld e, a
    nop
    cp $01
    rst $38
    nop
    rst $38

jr_017_6c8d:
    nop
    push af
    ld a, [bc]
    ei
    inc b
    db $fd
    ld [bc], a
    ei
    inc b
    db $fd
    ld [bc], a
    ld [$d515], a
    ld a, [hl+]
    xor d
    ld d, l
    call nc, $ea2b
    dec d
    ld d, b
    xor a
    xor b
    ld d, a
    ld d, b
    xor a
    and b
    ld e, a
    ld b, b

jr_017_6cab:
    cp a
    add b
    ld a, a
    ld b, b
    cp a
    ld e, a
    and b
    rst $28
    db $10
    cp a
    ld b, b
    ld a, a
    add b
    rst $38
    nop
    cp $00
    cp $00
    rst $38
    ld bc, $01ff
    db $fd
    ld bc, $03ff
    rst $38
    inc bc
    ei
    inc bc
    ei
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $30
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $28
    rrca
    rst $28
    rrca
    rst $38
    rra
    rst $18
    rra
    rst $10
    rla
    rst $38
    rst $38
    pop af
    pop af
    ld a, [c]
    ld a, [c]
    ldh [$e0], a
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
    ld bc, $8300
    add b
    add d
    add c
    rst $00
    pop bc
    rst $00
    ret nz

    add a
    add d
    ld bc, $8101
    add b
    nop
    nop
    nop
    nop
    jr c, jr_017_6d42

    jr c, jr_017_6d44

    inc a
    inc a
    call c, $fedc

jr_017_6d11:
    cp $ff
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    db $fd
    db $fd
    db $dd
    db $dd
    ld [hl], l
    ld [hl], l
    ld e, b
    ld e, b
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    ret z

    ret z

    db $e4
    nop
    pop bc
    ccf
    ld bc, $81ff
    rst $38
    pop bc
    rst $38
    ret nc

    rst $28
    ldh [rIE], a
    ld a, b
    rst $30
    jr nc, @+$01

    xor b
    rst $30

jr_017_6d42:
    inc d
    db $eb

jr_017_6d44:
    ld c, c
    rst $30
    or b
    ld c, a
    jr c, jr_017_6d11

    call nc, Call_000_380b
    add a
    sub h
    dec bc
    ld a, [hl+]
    dec b
    inc e
    inc bc
    ld a, [hl+]
    dec b
    inc e
    inc bc
    ld a, [hl-]
    dec b
    inc e
    inc bc
    ld a, [hl+]
    dec b
    inc e
    inc bc
    ld c, $01
    inc e
    inc bc
    inc l
    inc bc
    inc e
    inc bc
    inc l
    inc bc
    inc e
    inc bc
    jr c, @+$09

    inc e
    inc bc
    jr c, jr_017_6d79

    ld e, h
    inc bc
    jr c, @+$09

    ld [hl], h
    dec bc
    cp b

jr_017_6d79:
    rlca
    ld [hl], b
    rrca
    add sp, $17
    pop af
    rrca
    ld d, $e8
    cpl
    pop de
    ld e, a
    and c
    xor l
    ld d, c
    ld e, l
    and c
    ccf
    jp $a35f


    cp e
    ld b, e
    ld e, e
    and e
    cp a
    ld b, a
    ld a, a
    add a
    or a
    ld b, a
    ld [hl], a
    add a
    cp a
    ld c, a
    ld a, a
    adc a
    rst $28
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $18
    rra
    rst $18
    rra
    rst $38
    ccf
    rst $38
    ccf
    cp a
    ccf
    cp a
    ccf
    rst $38
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
    cp $fe
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    rst $38
    rst $38
    cp $fe
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f0]
    ldh a, [$f0]
    pop af
    pop af
    or $f4
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fc
    cp $fe
    db $fd
    db $fd
    ld sp, hl
    ld sp, hl
    pop af
    db $d3
    jp hl


    cp c
    jp $837d


    rst $38
    inc bc
    rst $38
    rlca
    ei
    rlca
    ld [hl], a
    adc a
    or a
    ld c, a
    daa
    rst $38
    ld hl, sp+$08
    ldh a, [$80]
    jr nz, jr_017_6e06

jr_017_6e06:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add h
    add h
    adc d
    adc d
    push de
    push de
    or $f6
    ld hl, sp-$08
    ld a, [$fefa]
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    ccf
    rra
    rra
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    adc a
    rrca
    add a
    rlca
    add a
    rlca
    jp $c303


    inc bc
    db $e3
    inc bc
    db $e3
    inc bc
    jp $e303


    inc bc
    db $e3
    inc bc
    db $e3
    inc bc
    jp $e303


    inc bc
    rst $20
    rlca
    rst $20
    rlca
    rst $20
    rlca
    rst $20
    rlca
    rst $28
    rrca
    rst $28
    rrca
    rst $28
    rrca
    rst $28
    rrca
    rst $18
    rra
    rst $18
    rra
    rst $18
    rra
    rst $18
    rra
    cp a
    ccf
    ccf
    ccf
    cp a
    ccf
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    db $fd
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    pop af
    pop af
    push hl
    push hl
    add sp, -$18
    add sp, -$18
    add sp, -$18
    jp nz, $e0c2

    ldh [$c2], a
    jp nz, $c0c1

    ret nz

    ret nz

    ld hl, sp-$08
    sub e
    sub b
    jp $a3c0


    and b
    rlca
    nop
    ld b, e
    ld b, b
    ld b, a
    ld b, b
    rlca
    nop
    rlca
    nop
    adc a
    adc b
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
    rlca
    nop
    dec b
    inc b
    ld bc, $0200
    nop
    cp a
    add b
    ld e, a

jr_017_6edb:
    nop
    cp a
    nop
    ld a, a
    nop
    ld hl, sp-$08
    or c
    or b
    or b
    or b
    ld hl, sp+$78
    or b
    jr nc, jr_017_6edb

    ldh a, [$60]
    ld h, b
    nop
    nop
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    ldh a, [$2f]
    ldh a, [$3f]
    ldh a, [$1f]
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp+$0f
    db $fc
    rrca
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
    ret nc

    ret nc

    ret z

    ret z

    add sp, -$18
    db $f4
    db $f4
    add sp, -$18
    rst $20
    rst $20
    db $f4
    db $f4
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fc
    db $fc
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add sp, -$18
    ldh a, [$f0]
    ld hl, sp-$08
    ld sp, hl
    ld sp, hl
    db $fc
    db $fc
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
    ld [$a008], sp
    and b
    ret nz

    ret nz

    nop
    nop
    ld hl, $0f21
    inc b
    ld e, a
    ld c, b
    cp a
    sub b
    rra
    nop
    rrca
    nop
    rlca
    nop
    dec c
    ld [$809f], sp
    dec sp
    nop
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
    rla
    rst $38
    di
    rst $38
    nop
    rst $38
    push af
    ld [$00fe], sp
    rst $38
    nop
    db $fc
    nop
    cp $02
    rst $38
    nop
    db $fd
    nop
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
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    cp $00
    cp $00
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    nop
    ld a, a
    nop
    ld e, a
    nop
    ccf
    nop
    ld e, $00
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    add hl, de
    and $99
    ld h, [hl]
    db $dd
    ld [hl+], a
    sbc l
    ld h, d
    ld c, h
    or e
    ld e, h
    or e
    sub b
    rst $38
    jp nc, $dafd

    push af
    jp hl


    or $e9
    cp $ed
    ld a, [$faf5]
    db $f4
    ld a, a
    db $f4
    ld a, a
    db $fc
    ccf
    ld a, [$fa3f]
    ccf
    ld a, [$fc1f]
    rrca
    db $fd
    rlca
    db $fd
    inc bc
    cp $03
    cp $03
    cp $03
    rst $38
    inc bc
    rst $38
    add hl, bc
    rst $38
    sbc l
    rst $38
    adc $ee
    xor $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    ldh [$e0], a
    ld hl, sp-$08
    pop af
    pop af
    db $e4
    db $e4
    ret nz

    ret nz

    nop
    nop
    cp $fe
    inc [hl]
    inc [hl]
    nop
    nop
    dec bc
    dec bc
    jr jr_017_7070

    nop
    nop
    nop
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
    add b
    add b
    nop
    nop
    nop
    nop
    jr nc, jr_017_706e

jr_017_706e:
    db $fc
    nop

jr_017_7070:
    db $db
    ld b, c
    sbc h
    inc b
    cp [hl]
    ld a, [bc]

Call_017_7076:
    sbc h
    nop
    sub $10
    or b

jr_017_707b:
    nop
    ld [hl], c
    ld b, c
    inc [hl]
    db $10
    inc hl
    nop
    rra
    nop
    rst $30
    ld [$18e6], sp
    call z, Call_000_1b04
    inc b
    cp $80
    ld [hl], $08
    rst $38
    nop
    call c, $f314
    ld [$047e], sp
    ld a, e
    nop
    ld l, h
    db $10
    cp [hl]
    nop
    rst $38
    nop
    sub b
    rst $28
    nop
    rst $38
    ld [$20f7], sp
    rst $18
    jr nc, @-$2f

    jr nc, jr_017_707b

    ld c, $ff
    jr nz, @-$1f

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fc
    nop
    ld sp, hl
    ld bc, $00f0
    pop hl
    ld bc, $00ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    add hl, bc
    rst $38
    ld [hl+], a
    db $dd
    dec sp
    call nz, $dc23
    jr nz, @-$1f

    inc b
    ei
    add e
    ld a, a
    ld l, e
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
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    ld e, a
    cp a
    ld e, a
    cp a
    ld e, a
    cp a
    cpl
    rst $18
    cpl
    rst $18
    xor a
    ld e, a
    xor a
    rst $18
    sub a
    rst $28
    rst $10
    xor a
    ld d, a
    rst $38
    ld d, a
    rst $38
    db $eb
    rst $10
    db $eb
    rst $18
    xor e
    rst $38
    and a
    ei
    push af
    rst $28
    push de
    rst $38
    push de
    rst $38
    di
    db $fd
    ld a, [$faff]
    rst $38
    ei
    cp $fd
    rst $38
    db $fd
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
    rst $10
    rst $10
    rst $18
    rst $18
    ccf
    ccf
    ld b, l
    ld b, l
    jr z, @+$2a

    ld [bc], a
    ld [bc], a
    ld [$c008], sp
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    call c, Call_000_00dc
    nop
    ld bc, $0001
    nop
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_017_7182

    nop
    nop
    nop
    nop
    ld bc, $0801
    ld [$0404], sp
    ld [bc], a
    ld [bc], a
    inc h
    inc h
    ld bc, $0001
    nop
    jr nz, jr_017_7196

    nop
    nop
    nop
    nop
    ld h, h
    ld h, b
    ld d, c
    ld b, b
    ld e, e
    ld [bc], a
    ei
    nop

jr_017_7182:
    cp $00
    ld hl, sp+$08
    ld bc, $0700
    nop
    add $00
    adc a
    nop
    sub a
    nop
    jp nc, $7c00

    ld [$00f0], sp

jr_017_7196:
    db $fc
    nop
    db $db
    ld bc, $024a
    or l
    inc b
    add c
    nop
    ld [$8e28], a
    nop
    cp [hl]
    nop
    db $fc
    nop
    db $fd
    ld bc, $01f9
    ei
    inc bc
    rst $30
    rlca
    xor $0e
    sbc [hl]
    ld e, $3f
    ccf
    inc e
    inc e
    ld l, l
    ld l, l
    rst $30

jr_017_71bb:
    rst $30
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
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, h
    rst $38
    add hl, bc
    or $49
    or [hl]
    ld b, c
    cp [hl]
    jr nc, jr_017_71bb

    nop
    rst $38
    nop
    rst $38
    ld c, b
    rst $38
    ld a, [hl]
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
    cp $fe
    db $f4
    db $f4
    db $f4
    db $f4
    call nz, $e4c4
    db $e4
    call nz, $e4c4
    db $e4
    call nz, $84c4
    add h
    add h
    add h
    call nz, $94c4
    sub h
    ld h, h
    ld h, h
    ld b, h
    ld b, h
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld b, h
    ld b, h
    inc b
    inc b
    inc b
    inc b
    add h
    add h
    dec b
    dec b
    dec d
    dec d
    inc b
    inc b
    inc b
    inc b
    ld [$1800], sp
    db $10
    jr z, jr_017_7230

jr_017_7230:
    jr c, jr_017_7252

    add hl, de
    nop
    inc bc
    nop
    dec sp
    ld [$80f9], sp
    ld b, b
    nop
    adc d
    adc d
    dec e
    inc d
    ld hl, $2120
    jr nz, jr_017_7246

    nop

jr_017_7246:
    ld sp, hl
    add b
    ld sp, hl
    nop
    ld hl, sp+$00
    ld a, [$f902]
    nop
    ld hl, sp+$00

jr_017_7252:
    nop
    nop
    ld hl, $f920
    nop
    ld sp, hl
    nop
    cp c
    nop
    add hl, de
    nop
    cp e
    nop
    adc c
    nop
    add hl, bc
    nop
    adc c
    add b
    add hl, bc
    nop
    db $fd
    inc b
    ld hl, sp+$00
    cp e
    inc bc
    ld a, e
    inc bc
    ld [hl], a
    rlca
    rst $20
    rlca
    add a
    rlca
    rlca
    rlca
    add [hl]
    add [hl]
    add [hl]
    add [hl]
    ld b, $06
    ld e, $1e
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld c, $0e
    ld h, [hl]
    ld h, [hl]
    or $f6
    xor $ee
    sbc [hl]
    sbc [hl]
    rst $38
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
    rst $38
    cp $ff
    cp $ff
    rst $38
    ld bc, $81ff
    ld a, a
    sub e
    ld l, a
    add e
    ld a, a
    add e
    ld a, a
    jp $0b3f


    rst $30
    dec bc
    rst $30
    dec hl
    rst $10
    ld c, e
    or a
    ld c, e
    or a
    ld c, c
    or a
    ld b, l
    cp e
    dec h
    db $db
    and l
    db $db
    sub e
    db $ed
    sub e
    db $ed
    ret


    rst $30
    ret


    rst $30
    ret


    rst $30
    push hl
    ei
    db $e4
    ei
    ld a, [c]
    db $fd
    ld sp, hl
    cp $fc
    rst $38
    cp $ff
    ld a, [$fcff]
    rst $38
    db $fc
    rst $38
    db $fd
    cp $fe
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    pop af
    inc c
    inc c
    inc b
    inc b
    inc b
    inc b
    dec de
    dec de
    ld d, $16
    inc bc
    inc bc
    call nc, $afd4
    xor l
    ld l, e
    ld h, d
    ld e, a
    ld e, d
    ld b, d
    ld b, d
    and b
    and b
    ld d, h
    ld d, h
    ld b, h
    ld b, h
    inc d
    inc d
    ld [$0000], sp
    nop
    ld [$2a08], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $1f01
    inc d
    scf
    db $10
    rra
    ld [$0003], sp
    nop
    nop
    ld c, l
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
    ld e, e
    ld [$0afa], sp
    ldh a, [rP1]
    db $fc
    inc b
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    call c, $ff80
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
    rst $38
    nop
    db $fc
    nop
    ldh a, [rP1]
    ret nz

    nop
    nop
    nop
    add b
    add b
    ld b, b
    ld b, b
    ldh a, [$f0]
    cp $fe
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
    nop
    nop
    nop
    nop
    add e
    add e
    inc bc
    inc bc
    inc bc
    inc bc
    ld l, [hl]
    add c
    ld a, [hl]
    add c
    ld a, $c1
    inc e
    db $e3
    nop
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
    inc bc
    db $fc
    inc bc
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    inc bc
    db $fc
    inc bc

jr_017_73b5:
    db $fc
    ld bc, $01fe
    cp $01
    cp $11
    xor $10
    rst $28
    nop
    rst $38
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    nop
    rst $38
    db $10
    rst $28
    jr jr_017_73b5

    inc e
    db $e3
    nop
    nop
    nop
    nop
    sub b
    sub b
    or b
    nop
    ld [hl], b
    ret nz

    ld b, b
    add b
    nop
    add b
    add b
    add b
    rst $38
    add b
    ret nc

    add b
    adc a
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
    db $fc
    db $fc
    db $fd
    db $fd
    rst $38
    rst $38
    pop af
    pop af
    ld [hl], c
    ld [hl], c
    jr nz, jr_017_741e

    jr nz, jr_017_7420

    ld h, b
    ld h, b
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
    inc bc
    ld bc, $000f
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

jr_017_741e:
    nop
    nop

jr_017_7420:
    ld bc, $c100
    ld b, b
    and c
    nop
    di
    add b
    ld a, [$fa00]
    nop
    db $eb
    ld [$00e1], sp
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    call nz, Call_017_7fff
    ld c, b
    ld d, a
    ld b, b
    add hl, sp
    nop
    ld [hl], e
    nop
    ccf
    nop
    rst $38
    nop
    ld hl, sp+$00
    nop
    nop
    ld a, [c]
    db $10
    cp $00
    rst $38
    nop
    push af
    nop
    ldh a, [rP1]
    ld sp, hl
    nop
    db $fc
    nop
    di
    inc bc
    add c
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
    add c
    add c
    db $eb
    db $eb
    ldh a, [$f0]
    nop
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
    ld bc, $0201
    ld [bc], a

jr_017_748a:
    nop
    nop
    add b
    add b
    db $fc
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
    rlca
    rst $38
    jr jr_017_748a

    nop
    ldh [rNR13], a
    jp $cf2f


    ld a, l
    sbc l
    ld a, b
    sbc d
    ld e, b
    sbc a
    ldh [rTAC], a
    ld a, $ed
    ld a, [hl]
    call $d8ac
    db $dd
    ld hl, sp-$52
    rst $38
    ld d, a
    rst $38
    adc d
    rst $38
    ld [hl], c
    sbc $85
    db $10
    xor d
    ld [bc], a
    rst $10
    ld [bc], a
    ret z

    ld bc, $07c0
    ldh [$03], a
    ld hl, sp+$00
    rst $38
    nop
    nop
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    add b
    ld a, a
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    rrca
    rst $38
    ret nz

    nop
    rra
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
    cp $fe
    ld a, [$fefa]
    cp $eb
    db $eb
    pop de
    pop de
    ld de, $0111
    ld bc, $0000
    nop
    nop
    db $10
    stop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $1100
    ld de, $40e8
    nop
    nop
    rlca
    ld bc, $0008
    and a
    add c
    ld hl, sp-$78
    ld [hl], c
    ld bc, $0000
    adc [hl]
    rst $38
    ccf
    rst $38
    add hl, de
    rst $38
    ld bc, $01ff
    rst $38
    ld b, e
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    di
    nop
    pop af
    nop
    ei
    nop
    rst $38
    nop
    rst $28
    nop
    db $f4
    nop
    ei
    ld [$00d7], sp
    rra
    nop
    ld e, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$08
    ld c, $00
    ld hl, sp+$00
    db $fd
    ld [$00e7], sp
    rst $00
    nop
    daa
    jr nz, jr_017_7560

    nop
    rst $28
    nop
    dec bc
    nop
    ldh a, [$f0]

jr_017_7560:
    ldh [$e0], a
    ldh a, [$f0]
    pop hl
    pop hl
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    nop
    nop
    cpl
    cpl
    ld b, b
    ld b, b
    ret nz

    ret nz

    ldh [$e0], a
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
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    dec b
    dec b
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
    db $fc
    inc bc
    call nz, Call_017_4283
    pop bc
    and d
    pop bc
    jp nz, $f3e1

    ldh [$e2], a
    pop af
    ld a, [c]
    pop af
    ld a, [$41d1]
    ld l, $89
    and [hl]
    add hl, de
    ld b, $a9
    add [hl]
    ld b, e
    ld b, h
    xor e
    inc b
    ld b, e
    inc b
    xor e
    inc b
    cp b
    ld [hl], a
    ld c, b
    rst $30
    and b
    ld a, a
    ld h, b
    rst $38
    ret nc

    ld l, a
    and b

jr_017_75cb:
    rst $18
    dec b
    cp $02
    db $fd
    nop
    rst $38
    jr z, jr_017_75cb

    nop
    rst $38
    ld b, b
    cp a
    add b
    ld a, a
    nop
    rst $38
    jr nz, @+$01

    rst $20
    rst $38
    rrca
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
    rst $38
    rst $38
    rst $38
    add c
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    ld [$0008], sp
    nop
    ld b, b
    ld b, b
    nop
    nop
    add b
    add b
    sub b
    sub b
    nop
    nop
    add hl, sp
    ld de, $0012
    ld bc, $8100
    ld bc, $0000
    rra
    nop
    ld e, a
    nop
    ld a, a
    jr nz, jr_017_7658

    nop
    cpl
    nop
    cpl
    nop
    or a
    db $10
    adc b
    rst $38
    adc c
    rst $38
    dec bc
    rst $38
    inc c
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    db $fd
    nop
    dec a
    nop
    ld a, l
    nop
    ld l, l
    inc c
    xor d
    nop
    sbc $00
    cp $00
    cp $00
    rst $38
    nop
    cp $00
    rst $38
    nop
    ld hl, sp+$00
    ret nz

    ld b, b
    ld a, d
    nop
    ld a, a
    nop
    cp $00
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38

jr_017_7658:
    ld bc, $00ff
    rst $38
    add hl, bc
    rst $38
    db $eb
    rst $38
    push af
    pop af
    ldh a, [$f0]
    ld [c], a
    ld [c], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    dec c
    dec c
    rlca
    rlca
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    ccf
    ccf
    cpl
    cpl
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld e, $e1
    inc c
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

jr_017_76a1:
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
    dec [hl]
    rst $38
    daa
    nop
    dec hl
    nop
    rla
    nop
    dec c
    nop
    rrca
    nop
    ld a, [bc]
    ld bc, $0106
    ld b, $01
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    nop
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    di
    inc bc
    db $e3
    inc bc
    rst $00
    rlca
    rlca
    rlca
    rrca
    rrca
    rst $38
    rst $38
    ld sp, hl
    ld sp, hl
    add hl, sp
    add hl, sp
    inc de
    inc de
    db $10
    db $10
    ld [$0008], sp
    nop
    nop
    nop
    jr jr_017_770a

    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    dec bc
    dec bc
    nop
    nop
    ret z

    ld [$00d0], sp
    ldh a, [rNR10]
    reti


    add hl, bc

jr_017_770a:
    xor $24
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    daa
    jr nz, jr_017_76a1

    nop

jr_017_7718:
    rst $38
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
    ld hl, sp+$00
    db $fd
    ld bc, $00fc
    cp $00
    ld d, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc bc

jr_017_773b:
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
    rla
    rrca
    ld a, a
    rrca
    ld a, a
    rrca
    ld a, a
    adc $ff
    ld a, a
    ld a, a
    jr c, jr_017_7718

    jr jr_017_773b

    ld [bc], a
    db $fd
    ld d, a
    xor e
    ccf
    jp $d83f


    inc a
    rst $18
    inc a
    rst $18
    inc e
    ld [hl+], a
    ld c, $3b
    rrca
    ld d, $0f
    inc d
    rrca
    inc d
    ld c, $13
    ld b, $0d
    ld b, $0d
    ld b, $0b
    ld b, $09
    ld b, $0b
    ld [bc], a
    dec b
    inc bc
    inc b
    inc bc
    inc b
    ld bc, $0106
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    adc a
    rrca
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
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
    cp $ff
    rst $38
    rst $38
    cp $ff
    cp $ff
    ld a, [hl]
    rst $38
    cp [hl]
    rst $38
    ld a, [hl]
    rst $38
    cp h
    rst $38
    ld l, h
    rst $38
    inc [hl]
    rst $38
    inc l
    rst $38
    inc a
    rst $38
    dec l
    rst $38
    dec e
    rst $38
    ld e, a
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
    db $fd
    db $fd
    sbc c
    sbc c
    inc e
    inc e
    add hl, sp
    add hl, sp
    db $10
    db $10
    ld d, b
    ld d, b
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
    jr nz, jr_017_77fa

    nop
    nop
    ld c, $0e
    nop
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
    add [hl]
    add b
    ld l, [hl]
    jr nz, @-$10

    nop
    ld [$ce02], a
    nop
    rst $00
    nop
    rst $38
    nop
    rst $38

jr_017_77f9:
    nop

jr_017_77fa:
    rst $38
    nop
    rst $38
    nop
    jp c, RST_00

    nop
    ld bc, $0307
    rrca
    rlca
    rra
    rla
    ccf
    ld a, [hl+]
    ld a, a
    ld d, l
    ld a, a
    dec hl
    ld a, a
    xor b
    rst $38
    ld d, b
    rst $38
    jr nz, @+$01

    db $10
    cp $20
    rst $38
    db $10
    rst $38
    nop
    rst $38
    inc b
    rst $38
    jr z, jr_017_77f9

    dec e
    ld [c], a
    ld c, $b1
    rra
    add sp, $0f
    ldh a, [rTAC]
    ld a, [$fd03]
    sbc e
    ld h, l
    jp Jump_017_413d


    or $40
    cp a
    db $dd
    ld a, [hl+]
    sbc [hl]
    ld l, l
    inc a
    rst $30
    db $fc
    inc bc
    pop hl
    sbc [hl]
    inc b
    ld [$3100], sp
    add b
    ld l, [hl]
    add sp, $14
    ldh [$1f], a
    ldh [rNR34], a
    ld h, b
    sbc [hl]
    ld h, b
    sbc h
    ld h, b
    sbc d
    jr nz, @-$2a

    db $10
    add sp, $00
    ld a, b
    nop
    ld hl, sp+$20
    call c, $3884
    adc b
    db $76
    cp $00
    ld sp, hl
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
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    rst $38
    rst $38
    add c
    add c
    ret nz

    ret nz

    ld b, b
    ld b, b
    ld h, b
    ld h, b
    ld h, c
    ld h, c
    ldh [$e0], a
    db $10
    stop
    nop
    ld [$0908], sp
    add hl, bc
    ld b, h
    ld b, h
    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    ld bc, $8101
    add b
    ld bc, $9900
    adc b
    db $e3
    nop
    ld h, h
    inc b
    jp z, $c308

    nop
    ld hl, $4820
    ld [$0226], sp
    sub l
    ld bc, $00ec
    rst $38
    ret nc

    push de
    xor d
    xor d
    ld d, l
    ld e, a
    and b
    xor a
    ld d, b
    nop
    rst $38
    nop
    rst $38
    nop
    cp [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    push af
    nop
    ldh [rP1], a
    rst $10
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
    ld [bc], a
    db $fd
    db $10
    rst $28
    adc [hl]
    ld [hl], c
    ld e, a
    and b
    rst $38
    rra
    rst $38
    ld a, a
    ccf
    rst $18
    rra
    xor a
    nop
    sbc a
    nop
    ld [bc], a
    nop
    ldh a, [rLCDC]
    and a
    ld [$00d4], sp
    jr nz, jr_017_7913

jr_017_7913:
    ret nc

    nop
    ld a, $28
    ld d, a
    ld h, h
    sbc e
    ld [hl+], a
    db $dd
    db $10
    rst $28
    ld [$1477], sp
    dec hl
    ld a, [bc]
    dec b
    ld bc, $0006
    ld bc, $0000
    nop
    rlca
    inc bc
    nop
    nop
    ld bc, $0080
    ret nz

    nop
    inc e
    inc e
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    rst $18
    ld hl, sp-$41
    db $fc
    cp a
    ld hl, sp+$3f
    ld hl, sp-$41
    ldh a, [$7f]
    ld hl, sp+$3f
    ldh a, [$7f]
    ldh a, [$7f]
    ldh a, [$7f]
    ldh [$7f], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    add c
    add c
    and c
    and c
    and e
    and e
    xor e
    xor e

jr_017_796c:
    db $db
    db $db
    cp a
    cp a
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    inc bc
    inc bc
    ld bc, $0201
    ld [bc], a
    inc de
    inc de
    push af
    push af
    db $fc
    db $fc
    ld bc, $0001
    nop
    add hl, bc
    add hl, bc
    jp Jump_000_00c3


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add d
    ld [bc], a
    adc a
    nop
    cpl
    jr nz, jr_017_796c

    nop
    and h
    nop
    and b
    add b
    ret nz

    nop
    nop
    nop
    nop
    nop
    rst $38
    ld d, a
    rst $38
    cp b
    rst $38
    ld de, $2add
    cp b
    ld b, a
    ld b, a
    cp b
    ld c, $f5
    nop
    ld a, a
    dec bc
    push af
    dec c
    ld a, [c]

jr_017_79c4:
    nop
    rst $38
    rlca
    cp b
    nop
    rst $38
    nop
    rst $38
    ld [hl+], a
    db $dd
    ld d, a
    xor b
    nop
    cp $00
    rst $38
    ld bc, $00fe
    rst $38
    inc bc
    db $fc
    adc a
    ld [hl], b
    rst $38
    nop
    cp $09
    db $fc
    ld a, [hl]
    ld hl, sp-$03
    ldh a, [$ca]
    add b
    ld d, h
    nop
    add b
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
    add b
    ld b, b
    ret nz

    nop
    jr nz, jr_017_79c4

    nop
    ldh a, [rSC]
    db $fd
    nop
    dec hl
    nop
    nop
    nop
    add sp, $00
    ldh a, [rP1]
    nop
    nop
    nop
    ld bc, $0001
    nop
    inc bc
    inc bc
    nop
    nop
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec b
    dec b
    rlca
    rlca
    rra
    rra
    rra
    rra
    ccf
    ccf
    cp a
    cp a
    rst $38
    rst $38

Jump_017_7a32:
    rst $38
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
    ei
    ei
    pop hl
    pop hl
    nop
    nop
    rlca
    rlca
    rst $30
    rst $30
    inc hl
    inc hl
    ld b, $06
    ld e, [hl]
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
    inc b
    inc b
    and h
    and h
    nop
    nop
    nop
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
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, h
    ccf
    ret nc

    rra
    ld h, b
    ld d, a
    xor b
    inc bc
    call c, $0a05
    nop
    ld [hl], a
    nop
    ld [c], a
    nop
    nop
    ld e, b
    and [hl]
    nop
    call nc, Boot
    rrca
    nop
    rlca
    ld [$4c03], sp
    nop
    adc a
    nop
    rst $08
    nop
    rst $28
    nop
    rst $18
    nop
    rst $28
    nop
    rst $18
    db $10
    adc a
    nop
    ld e, a
    nop
    cp a
    ld a, [bc]
    ld d, l
    ld bc, $00ce
    ld b, a
    nop
    jr nc, jr_017_7aab

jr_017_7aab:
    ld [$8000], sp
    nop
    pop bc
    ld b, b
    cp c
    nop
    rra
    nop
    jr jr_017_7ab7

jr_017_7ab7:
    nop
    nop
    inc bc
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    ei
    ld hl, sp-$0d
    ldh a, [$f0]
    db $f4
    nop
    nop
    db $10
    inc d
    sub b
    sbc [hl]
    db $10
    rra
    jr nz, jr_017_7aff

    nop
    nop
    ld bc, $0201
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0701
    rlca
    add hl, bc
    add hl, bc
    inc bc
    inc bc
    rrca
    rrca
    rla
    rla
    ld d, a
    ld d, a
    cp a
    cp a
    ld e, a
    ld e, a
    cp a
    cp a
    rst $38
    rst $38
    ld a, a
    ld a, a
    db $fc
    db $fc
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    db $fd
    db $fd
    db $fc

jr_017_7aff:
    db $fc
    db $fc
    db $fc
    db $fd
    db $fd
    db $f4
    db $f4
    ld a, [$fcfa]
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    cp $fe
    ld a, [$fcfa]
    db $fc
    db $fc
    db $fc
    cp $fe
    cp $fe
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
    rst $38
    xor a
    xor a
    rst $18

Jump_017_7b31:
    rst $18
    ld a, a
    ld a, a
    rst $38
    rst $38
    sbc a
    sbc a
    rrca
    rrca
    ccf
    ccf
    rra
    rra
    ld c, $0e
    ld b, $06
    dec c
    dec c
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    jr nz, jr_017_7b6e

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    ld b, b
    cp $01
    db $f4
    dec bc
    ld [c], a
    dec e
    db $10
    rst $28
    and b
    ld e, a
    nop
    rst $38

jr_017_7b6e:
    ld bc, $00fe
    xor b
    nop
    nop
    nop
    nop
    nop
    inc e
    sbc h
    ld h, e
    ld a, [$f9e5]
    add $fa
    dec b
    rst $38
    db $10
    ld a, [hl]
    sub c
    ld a, h
    add e
    cp b
    ld b, a
    dec d
    ld [$d52a], a
    ld e, h
    and e
    ld [bc], a
    db $fd
    nop
    rst $38
    xor b
    ld d, a
    nop
    cp $00
    rst $38
    nop
    xor [hl]
    nop
    inc b
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    ccf
    ccf
    rlca
    rla
    add e
    cp a
    jr nz, jr_017_7c26

    rst $38
    nop
    rst $38
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
    rrca
    nop
    ld [bc], a
    ld [bc], a
    ld a, $3e
    ld [hl], b
    ld [hl], b
    ld b, a
    inc a
    inc sp
    inc e
    cp [hl]
    xor b
    sbc $d4
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    and b
    and b
    pop de
    pop de
    pop hl
    pop hl
    pop bc
    pop bc
    add e
    add e
    add e
    add e
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
    ld e, $1e
    ld e, $1e
    cp h
    cp h
    inc a
    inc a
    ld a, c
    ld a, b
    ld a, e
    ld a, b
    ld sp, hl
    ld hl, sp-$10
    ldh a, [$f0]
    ldh a, [$f8]
    ld hl, sp-$04
    db $fc
    ld a, [hl]
    ld a, [hl]
    ld a, $3e
    ld e, $1e
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ld [$0000], sp
    nop
    ld [bc], a
    nop
    inc bc
    nop
    inc bc
    nop
    add c
    add b
    add c
    add b
    ret nz

    ret nz

jr_017_7c26:
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
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
    cp a
    cp a
    rra
    rra
    adc a
    adc a
    rrca
    rrca
    add a
    add a
    add a
    add a
    add e
    add e
    ld bc, $0001
    nop
    ld [$4008], sp
    ld b, b
    nop
    nop
    nop
    nop
    add b
    nop
    ld b, b
    nop
    cp d
    add d
    db $fc
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    jr nz, jr_017_7ca9

    ret nc

    ld h, b
    ldh [rSVBK], a
    ldh a, [$f8]
    ld hl, sp+$02
    db $fd
    nop
    rst $38
    add b
    ld l, a
    ld b, b
    or a
    and b
    ld e, a
    ldh a, [rIF]
    ld hl, sp+$47
    db $fc
    db $e3
    db $10
    xor $08
    rst $30
    ld d, b
    xor a
    xor b
    ld d, l
    inc d
    xor d
    ld [$00f6], sp
    cp [hl]
    nop
    call nc, Call_017_55aa
    inc d
    db $eb
    adc b
    ld [hl], a
    inc b
    ei
    nop
    rst $38
    nop
    rst $18
    nop
    ei
    nop
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a

jr_017_7ca9:
    ld a, a
    adc e
    ld a, [bc]
    cp a
    db $10
    sbc a
    nop
    jr nz, @+$01

    jr nz, @+$01

    db $10
    rst $38
    ld de, $0fff
    rst $38
    db $fc
    rst $38
    add h
    rst $38
    call nz, Call_000_07ff
    rlca
    ld b, $06
    ld c, $0e
    ld c, $0e
    inc c
    inc c
    dec e
    inc e
    jr jr_017_7ce7

    ld [hl-], a
    ld sp, $fcff
    cp $fc
    db $fd
    ld hl, sp-$02
    ld hl, sp-$0c
    ld hl, sp-$0a
    ld hl, sp-$08
    db $f4
    or $f8
    db $ec
    ldh a, [$f6]
    add sp, -$31
    ldh a, [$d7]

jr_017_7ce7:
    add sp, -$75
    db $f4
    sub a
    add sp, -$75
    db $f4
    rst $10
    add sp, -$55
    db $f4
    dec d
    ld [$f5aa], a
    dec d
    ld [$f42b], a
    ld d, l
    xor d
    ld l, d
    sub l
    scf
    ret z

    ld d, h
    dec hl
    add sp, $17
    ld d, c

jr_017_7d05:
    ld l, $f8
    rlca
    ld d, h
    dec bc
    ld [$f515], a
    ld a, [bc]
    xor d

jr_017_7d0f:
    sub l
    dec [hl]
    ld [bc], a
    adc d
    sub l
    dec b
    ld a, [bc]
    ld [bc], a
    dec b
    ld b, b
    inc bc
    ld [hl+], a
    ld bc, $0333
    cp c
    ld bc, $ff23
    ld b, c
    cp a
    jr nz, jr_017_7d05

    jr jr_017_7d0f

    db $10
    rst $28
    add b
    rst $38
    add b
    rst $38
    add c
    cp $7f
    nop
    ld a, a
    nop
    ccf
    nop
    cp a
    add b
    rst $18
    ret nz

    rst $18
    ret nz

    rst $28
    ldh [$f7], a
    ldh a, [rIE]
    ld hl, sp-$05
    ld hl, sp-$03
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
    ld a, a
    ld a, a
    rra
    rra
    ld c, a
    ld c, a
    add a
    add a
    ld b, a
    ld b, a
    inc bc
    inc bc
    ld b, c
    ld b, c
    ld a, b
    ld a, b
    db $10
    db $10
    add hl, bc
    add hl, bc
    add b

jr_017_7d69:
    add b
    add b
    nop
    ret nz

    nop
    ldh a, [rNR10]
    inc h
    inc b
    jr jr_017_7d7c

    jp nz, $e0c2

    ldh [$f8], a
    ld hl, sp-$04
    db $fc

jr_017_7d7c:
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    ldh [$c0], a
    jr nc, jr_017_7d69

    ld e, [hl]
    ld [hl], b
    call z, $a778
    inc a
    ld b, c
    sbc a
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    cp $ff
    push de
    db $fc
    add a
    add b
    sbc a
    add b
    rst $38
    add b
    ld a, a
    nop
    rst $38
    add b
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
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    push hl
    ld d, l
    xor d
    cpl
    ret nc

    call $9af0
    ldh [$b4], a
    ret nz

    ld l, b
    add b
    ret nc

    nop
    and b
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
    ld [hl], b
    nop
    db $eb
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
    rst $30
    ld [$807f], sp
    cp e
    ld b, h
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b

jr_017_7e08:
    rst $38
    nop
    rst $38
    nop
    db $eb
    inc d
    ld a, a
    add b
    cp a
    ld b, b
    ld a, l
    add d
    xor a
    ld d, b
    ld d, a
    xor b
    xor a
    ld d, b
    rst $10
    jr z, jr_017_7e08

    inc d
    sub l
    adc d
    sbc d
    push bc
    call $f4e2
    di
    ld a, e
    ld hl, sp+$3f
    db $fc
    rra
    cp $0f
    rst $38
    rrca
    rst $38
    ld a, [$fd02]
    ld bc, $00fe
    rst $18
    jr nz, @+$01

    nop
    rst $30
    ld [$0cf3], sp
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    ld b, b
    cp a
    and b
    xor a
    and b
    rst $20
    ldh [$fb], a
    ld hl, sp-$01
    db $fc
    db $fd
    db $fc
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
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $18
    sbc a
    ccf
    rra
    ld c, a
    ld c, a
    rrca
    rrca
    ld c, e
    ld b, e
    rlca
    inc bc
    dec c
    add hl, bc
    ld a, [bc]
    ld [$0001], sp
    add c
    add b
    jp nz, $e0c2

    ldh [$e4], a
    db $e4
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ld [hl], d
    ld [hl], d
    pop af
    pop af
    db $f4
    ldh a, [$ee]
    ldh [rIE], a
    ldh a, [$bf]
    and b
    cp $00
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
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
    db $fd
    dec b
    db $10
    db $10
    ld c, a
    ld b, b
    rst $20
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
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
    ld [$0009], sp
    nop
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
    dec c
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
    rrca
    nop
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
    nop
    nop
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_017_7f03

jr_017_7f03:
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
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    jr nz, jr_017_7f3f

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_017_7f4f

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_017_7f5f

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_017_7f6f

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_017_7f3f:
    nop
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    nop
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b

jr_017_7f4f:
    nop
    ld b, e
    ld b, e
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    nop
    nop
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    nop

jr_017_7f5f:
    nop
    ld b, e
    ld b, e
    ld b, e
    ld e, e
    ld e, h
    nop
    nop
    ld c, e
    ld e, l
    ld e, [hl]
    inc hl
    ld e, a
    ld h, b
    ld h, c
    ld h, d

jr_017_7f6f:
    nop
    ld b, e
    ld b, e
    ld h, e
    inc hl
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    inc hl
    inc hl
    ld e, a
    ld l, c
    nop
    nop
    nop
    ld b, e
    ld b, e
    ld l, d
    inc hl
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    inc hl
    inc hl
    inc hl
    ld e, a
    ld l, a
    ld [hl], b
    ld [hl], c
    nop
    ld b, e
    ld b, e
    ld [hl], d
    inc hl
    ld [hl], e
    ld [hl], h
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld e, a
    ld [hl], l
    halt
    nop
    ld b, e
    ld b, e
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    inc hl
    inc hl
    inc hl
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    nop
    ld b, e
    ld b, e
    add c
    add d
    add e
    nop
    add h
    add l
    add [hl]
    inc hl
    inc hl
    add a
    adc b
    nop
    nop
    nop
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    inc hl
    inc hl
    sub d
    sub e
    nop
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    nop
    add h
    sbc d
    sbc e
    inc hl
    inc hl
    inc hl
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
    ld h, a
    and [hl]
    and a
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    xor b
    xor c
    inc hl
    xor d
    xor e
    ld l, l
    xor h
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl

Call_017_7fff:
    inc hl
