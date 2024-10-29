SECTION "ROM Bank $02c", ROMX[$4000], BANK[$2c]

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $5f7e
    and b
    add b
    ld e, h
    rst $38
    rst $38
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
    rst $18
    rst $38
    rst $18
    rst $38
    db $fd
    rst $38
    ld sp, hl
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
    cp a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    cp a
    ccf
    rst $38
    rra
    rst $30
    rla
    rst $18
    rra
    ld [hl], a
    rra
    add e
    dec bc
    ld bc, HeaderComplementCheck
    ld l, a
    nop
    sub $00
    ld hl, sp+$01
    ld sp, hl
    inc bc
    rst $10
    ld de, $846f
    sbc e
    ld d, $78
    db $10
    scf
    nop
    rrca
    dec d
    dec hl
    ld bc, $3011
    ld c, $b6
    ret z

    ld l, b
    add hl, de
    add hl, de
    cp c
    inc b
    ld h, c
    dec b
    ld a, d
    jr jr_02c_40d0

    inc de
    ld h, e
    ld a, $c2
    dec a
    ld b, d
    ld a, l
    nop
    ccf
    nop
    ld a, [hl+]
    ret nz

    db $38, $81
    ld hl, sp+$03
    ldh a, [rTAC]
    cp c
    ld c, $fd
    ld c, $fb
    jr c, jr_02c_4102

    nop
    db $eb
    nop
    rst $30
    nop
    inc de
    inc b
    ei
    nop
    ccf
    nop
    db $ed
    nop
    rst $20
    db $10
    ld e, $80
    rra
    ldh [$3f], a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $00
    jr @+$09

    ret c

    inc b
    di
    add b
    dec l
    add hl, bc
    or $03
    cp b
    inc bc
    db $ec
    inc bc
    cp h
    rrca
    ldh a, [rIF]
    or b
    ccf
    ret nz

    rra
    ldh [rSB], a
    cp $1f
    and b
    inc l
    sub e
    ld a, a
    add b
    ccf
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cpl
    ld b, b
    ld a, [bc]
    ld b, b
    inc bc
    ldh [$03], a
    and b
    ld a, a
    nop
    rst $38
    nop

jr_02c_40d0:
    ld [$0000], sp
    nop
    ld de, $0800
    nop
    add b
    nop
    stop
    ld b, b
    nop
    sub b
    ret nz

    ld [$0098], sp
    nop
    ld a, [bc]
    ld bc, $0002
    inc b
    nop
    ld [bc], a
    nop
    ld [$3001], sp
    ld hl, $00dd
    or a
    nop
    halt
    rst $38
    nop
    ei
    inc b
    ld a, a
    nop
    ld bc, $fcfe
    inc bc
    cp $01

jr_02c_4102:
    rst $38
    nop
    rst $38
    nop
    pop af
    inc c
    ret nz

    ccf
    jr nc, jr_02c_413e

    ld [hl], a
    ld [hl], a
    cp $fe
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
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38

jr_02c_4125:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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

jr_02c_413e:
    rst $38
    rst $38
    db $fd
    db $fd
    cp $fe
    cp $fe
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    ld a, a
    ccf

Jump_02c_414d:
    ld a, a
    rra
    cp a
    rrca
    ld a, a
    rlca
    ld e, a
    inc bc
    ld l, e
    rrca
    rst $08
    add hl, bc
    ld l, c
    nop
    cp a
    jr nc, jr_02c_4125

    nop
    cp b
    inc b
    call nz, Call_000_2340
    inc b
    or e
    ld [hl], b
    add b
    ld a, b
    adc c
    ld [hl], b
    add l
    ld [hl], b
    add [hl]

jr_02c_416e:
    ld a, $c1
    adc h
    inc sp
    ld sp, $c8ca
    push bc
    nop
    ld a, [bc]
    ld bc, $007c
    db $db
    ld bc, $dbdc
    inc h
    adc $10
    ld hl, sp+$07
    db $fc
    ld bc, $01fe
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    ld a, a
    nop
    ld b, h
    nop
    stop
    ld b, h
    nop
    stop
    nop
    ld bc, $0103
    ld bc, $0007
    rrca
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    ldh [rNR31], a
    rlca
    add sp, -$01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    add b
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    jp c, $d700

    nop
    rra
    ld b, b
    ld a, [de]
    jr nz, jr_02c_4248

    nop
    rst $38
    nop
    rst $38
    nop
    or a
    nop
    jr nz, jr_02c_41d2

jr_02c_41d2:
    inc d
    nop
    ld a, [hl+]
    nop
    nop
    inc b
    jr nz, jr_02c_41e2

    jr nz, jr_02c_41e4

    ld b, b
    nop
    sub b
    ld b, b
    adc b
    nop

jr_02c_41e2:
    nop
    nop

jr_02c_41e4:
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    add b
    jr nz, jr_02c_416e

    jr nz, jr_02c_41f0

jr_02c_41f0:
    cp a
    nop
    db $ed
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    rst $38
    nop
    jp z, Jump_02c_7f35

    add b
    rst $38
    nop
    rst $38
    nop

Jump_02c_4204:
    rst $38
    nop
    ld a, a
    add b
    adc e
    inc [hl]
    rlca
    add sp, $00
    ld a, [hl+]
    add b
    xor e
    ld b, b
    ld c, e
    db $fc
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_02c_421c:
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

jr_02c_4233:
    cp $ff
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
    rst $38
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_02c_4248:
    rst $38

jr_02c_4249:
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    cp a
    ccf
    ld a, a
    rra
    rst $38
    rra
    ld e, a
    rlca
    rst $08
    rlca
    ld [hl], a
    inc bc
    ld [hl], e
    ld bc, $00f7
    rst $38
    add sp, $19
    ret z

    dec hl
    ldh [rNR31], a
    ldh a, [rIF]
    ldh [rNR21], a
    ldh [rNR23], a
    add b
    ld l, c
    jr jr_02c_4233

    jr nz, jr_02c_4249

    ld b, b
    add c
    add hl, bc
    ld hl, sp-$17
    inc e
    ld h, b
    adc [hl]
    add $39
    rst $00
    jr c, jr_02c_421c

    ld h, d
    ld e, $46
    sbc d
    ld h, $b5
    ld [bc], a
    daa
    ld d, b
    scf
    ld c, b
    sbc a
    and b
    rst $38
    add b
    ld a, a
    add b
    nop
    ld bc, $0302
    inc b
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
    ld b, $07
    ld [$0409], sp
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
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0505
    dec b
    dec b
    dec b
    nop
    nop
    nop
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_02c_42e4

    ld a, [de]
    db $10
    ld de, $0505
    nop
    nop
    nop
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_02c_42fb

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    nop
    nop
    jr z, jr_02c_430d

jr_02c_42e4:
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_02c_431d

    ld [hl-], a
    inc sp
    inc [hl]
    nop
    nop
    nop
    dec [hl]
    ld [hl], $37
    jr c, jr_02c_4330

    ld a, [hl-]
    dec sp
    inc a
    dec a

jr_02c_42fb:
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
    ld c, d
    ld c, e

jr_02c_430d:
    ld c, h
    nop
    nop
    nop
    nop
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    nop
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]

jr_02c_431d:
    nop
    nop
    ld d, a
    nop
    nop
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    nop
    ld e, a
    ld h, b
    ld h, c
    nop
    ld h, d
    ld h, e

jr_02c_4330:
    nop
    nop
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
    nop
    nop
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
    nop
    ld a, d
    ld a, e
    ld a, h
    nop
    jr z, jr_02c_43d0

    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    add h
    add l
    nop
    add [hl]
    add a
    adc b
    adc c
    nop
    dec [hl]
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    nop
    nop
    sub d
    sub e
    sub h
    sub l
    nop
    sub [hl]
    sub a
    sbc b
    sbc c

jr_02c_4375:
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    nop
    nop
    ld a, d
    sbc a
    and b
    and c
    nop
    and d
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    nop
    nop
    nop
    nop
    xor d
    xor e
    xor h
    nop
    xor l
    xor [hl]
    xor a
    or b
    nop
    nop
    nop
    nop
    nop
    or c
    or d
    or e
    or h
    or l
    or [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    or [hl]
    nop
    nop
    nop
    nop
    jr z, jr_02c_4375

    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    or [hl]
    nop
    nop
    ret


    jp z, $cccb

    call $cfce
    ret nc

    pop de
    jp nc, $d4d3

    push de
    or [hl]

jr_02c_43d0:
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
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
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
    inc bc
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0203
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0301
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0301
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0101
    nop
    ld bc, $0301
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0101
    nop
    nop
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0101
    nop
    nop
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0203
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $2101
    inc b
    nop
    nop
    ld bc, $0203
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld bc, $0303
    inc bc
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0101
    ld bc, $0301
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0301
    inc bc
    inc bc
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    inc bc
    nop
    inc bc
    nop
    inc bc
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
    nop
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
    ld bc, $0000
    nop
    nop
    nop
    nop
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
    ldh a, [rIE]
    ldh a, [$7f]
    ld [hl], b
    ld a, a
    ld [hl], b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ccf
    jr nc, jr_02c_460b

    ld sp, $303f
    ld e, $19
    rra
    jr jr_02c_45f4

    jr jr_02c_45e6

    ld [$080f], sp
    rrca
    ld [$0c0f], sp
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    inc bc
    ld [bc], a

jr_02c_45e6:
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    rst $38
    ld bc, $00ff

jr_02c_45f4:
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

jr_02c_460b:
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
    inc bc
    nop
    inc bc
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
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    add b
    rst $38
    nop
    cp d
    nop
    db $dd
    nop
    ld a, [$fd00]
    nop
    ei
    nop
    rst $30
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rra
    and b
    xor a
    db $10
    rra
    and b
    adc a
    ld d, b
    ld d, a
    adc b
    ld c, $51
    ld d, l
    ld a, [bc]
    ld a, [hl+]
    ld b, l
    add l
    ld a, [hl+]
    xor d
    dec b
    sub l
    ld [hl+], a
    jp nz, $d515

    ld [bc], a
    jp nz, $5115

    adc d
    ld a, [hl]
    add c
    push af
    adc d
    cp d
    push bc
    sbc l
    ld [c], a
    ld l, d
    ld d, l
    ld e, l
    ld h, d
    ld l, [hl]
    ld d, c
    dec [hl]
    ld a, [hl+]
    ld l, $31
    dec [hl]
    ld a, [hl+]
    ld a, [hl-]
    dec [hl]
    rla
    jr @+$1c

    dec d
    dec e
    ld a, [de]
    ld a, [bc]
    dec c
    dec c
    ld a, [bc]
    ld a, [bc]
    dec c
    dec b
    ld b, $06
    dec b
    dec b
    ld b, $02
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
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
    rrca
    nop
    nop
    nop
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    ld d, a
    nop
    db $eb
    nop
    push de
    nop
    ld a, [$d500]
    nop
    xor d
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$03
    ld hl, sp+$03
    db $fc
    ld bc, $00fc
    db $fc
    nop
    ld a, h
    add b
    cp $00
    ld a, [hl]
    add b
    cp [hl]
    ld b, b
    ld a, [hl]
    add b
    cp [hl]
    ld b, b
    ld e, [hl]
    and b
    cp [hl]
    ld b, b
    call c, $af23
    ld d, b
    ld d, a
    xor b
    xor e
    ld d, h
    ld d, a
    xor b
    cp a
    ld b, b
    ld a, a
    add b
    rst $38
    nop
    ld d, l
    xor d
    xor e
    ld d, h
    ld [hl], l
    adc d
    xor a
    ld d, b
    ld d, l
    xor d
    xor e
    ld d, h
    ld a, a
    add b
    cp a
    ld b, b
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    ld [hl], a
    adc b
    rst $38
    nop
    ld d, a
    xor b
    xor e
    ld d, h
    ld d, a
    xor b
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    push af
    adc d
    cp d
    push bc
    push de
    xor d
    ld a, d
    ld b, l
    ld d, l
    ld l, d
    ld l, e
    ld d, h
    ld a, l
    ld h, d
    ld a, [hl+]
    dec [hl]
    dec [hl]
    ld a, [hl+]
    ld l, $31
    dec d
    ld a, [de]
    ld e, $11
    rra
    jr jr_02c_475b

    dec c
    dec c
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    ld a, [bc]
    ld b, $05
    dec b

jr_02c_475b:
    ld b, $06
    dec b
    inc bc
    ld [bc], a
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
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
    rlca
    nop
    rlca
    nop
    inc bc
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
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    push de
    ret nz

    xor b
    nop
    ld d, l
    nop
    xor b
    nop
    ld d, h
    nop
    and b
    nop
    ret nc

    nop
    add sp, $00
    db $f4
    nop
    ld hl, sp+$00
    ld d, h
    nop
    xor d
    nop
    ld d, l
    nop
    ld [$f100], a
    ld c, $f3
    nop
    ld [hl], e
    add b
    inc sp
    ret nz

    dec sp
    ret nz

    dec de
    ldh [$0b], a
    ld [hl], b

jr_02c_47d0:
    ld bc, $4138

jr_02c_47d3:
    jr jr_02c_4816

    inc e
    ld h, c
    adc h
    ld [hl], c
    add h
    ld a, e
    add b
    ccf
    ret nz

    ld a, a
    add b
    rst $38
    nop
    rst $30
    ld [$0cf3], sp
    pop hl
    ld c, $e0
    rlca
    ret nz

    rlca
    ret nz

    rrca
    ret nz

    rrca
    add b
    rra
    add b
    inc e
    nop
    inc bc
    jr c, @+$05

    ld hl, sp+$03
    ld hl, sp+$03
    db $fc
    ld bc, $01fc
    db $fc
    ld bc, $01fc
    db $fc
    ld bc, $07f0
    ret nz

    ld e, $c0
    jr jr_02c_47d3

    nop
    cp $00
    cp $00
    rst $38
    nop
    cp a
    ld b, b

jr_02c_4816:
    rst $38
    nop
    cp a
    ld b, b
    ld a, a
    add b
    cp a
    ld b, b
    rst $18
    jr nz, jr_02c_47d0

    ld d, b
    ld d, a
    xor b
    xor a
    ld d, b
    ld [hl], a
    adc b
    xor e
    ld d, h
    ld e, l
    and d
    xor e
    ld d, h
    ld d, l
    xor d
    cp d
    ld b, l
    ld d, l
    xor d
    xor e
    ld d, h
    ld d, a
    xor b
    cp h
    ld b, b
    ld d, b
    and e
    ret nz

    rrca
    nop
    ccf
    nop
    rst $38
    nop
    ld a, a
    nop
    cp a
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    sub h
    rst $38
    cp $ff
    rst $28
    rst $38
    ld l, h
    ld a, h
    ld [hl], b
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    db $fd
    db $fc
    xor d
    add b
    ld d, l
    nop
    and d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    push af
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    ld a, [$fd00]
    nop
    ld a, [$f500]
    nop
    cp $00
    rst $30
    nop
    ld a, [$fd00]
    nop
    rst $38
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
    ldh a, [$3f]
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
    ld b, a
    sbc b
    rlca
    ld hl, sp+$07
    ldh [$1f], a
    ret nz

    ld a, $c1
    inc a
    jp $c33c


    jr c, @-$37

    db $10
    ld l, a
    db $10
    ld l, a
    ld de, $196e
    ld h, [hl]
    add hl, de
    ld h, [hl]
    dec hl
    ld d, h
    adc e
    inc [hl]
    adc e
    inc [hl]
    sbc l
    ld [hl+], a
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
    ld [hl], a
    adc b
    cp h
    ld b, b
    ld [hl], b
    add e
    ret nz

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

jr_02c_4914:
    jr nc, @+$01

    ld h, c
    rst $38
    ld h, $fe
    jr c, jr_02c_4914

    ld h, b
    ldh [$c0], a
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
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$55f0]
    nop
    xor d
    nop
    ld d, l
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
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    ld a, l
    nop
    xor d
    nop
    ld d, l
    nop
    ld [$5500], a
    nop

jr_02c_4968:
    xor [hl]
    nop

jr_02c_496a:
    push de
    nop

jr_02c_496c:
    xor d
    nop

jr_02c_496e:
    db $dd
    nop
    cp e
    nop
    rst $38
    nop
    cp $01
    db $fd
    ld [bc], a
    ei
    inc b
    ei
    inc b
    rst $30
    ld [$08f7], sp
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $18
    jr nz, jr_02c_4968

    jr nz, jr_02c_496a

    jr nz, jr_02c_496c

    jr nz, jr_02c_496e

    jr nz, @+$01

    nop
    ret nz

    ccf
    cp a
    ld a, a
    add b
    ld a, a
    ccf
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
    cp $01
    db $fd
    inc bc
    ldh a, [rIF]
    nop
    rst $38
    rst $38
    nop
    db $fc
    nop
    di
    nop
    call z, Call_000_3002
    add hl, bc
    nop
    rst $20
    ld bc, $0487
    ld a, $10
    ld a, c
    nop
    rst $20
    add hl, bc
    adc a
    scf
    ld a, a
    ld h, e
    ld a, a
    inc l
    db $fc
    jr nc, @-$0e

    ret nz

    ret nz

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
    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$aa], a
    nop
    ld d, l
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
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
    ld d, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    xor d
    nop
    ld e, [hl]
    ld bc, $02ad
    ld e, c
    inc b
    or d
    ld [$1045], sp
    sbc d
    jr nz, jr_02c_4a44

    ld b, b
    ld l, d
    add b
    ld d, l
    add b
    xor e
    nop
    ld a, l
    nop
    db $eb
    nop
    ld d, l
    nop
    ld [$ff00], a
    nop
    rst $38
    nop
    rst $38
    nop

jr_02c_4a44:
    inc bc
    db $fc
    ei
    db $fc
    dec de
    db $fc
    db $db
    inc a
    db $db
    inc a
    db $db
    inc a
    db $db
    inc a
    db $db
    inc a
    db $db
    inc a
    db $db
    inc a
    cp e
    ld a, h
    ld [hl], a
    ld hl, sp+$6f
    ldh a, [$df]
    ldh [$bc], a
    ret nz

    ld [hl], e
    add b
    call z, $3102
    ld [$07c0], sp
    inc b
    rrca
    nop
    ld a, h
    ld hl, $33f3
    call $bf48
    xor e
    ld a, a
    ld [hl], $fe
    ld hl, sp-$08
    ld h, b
    ldh [$80], a
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
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    rra
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
    ld d, a
    nop
    ld a, [hl+]
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop

jr_02c_4aae:
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    nop
    dec b
    nop
    ld a, [hl+]
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor e
    nop
    ld e, l
    nop
    xor a
    nop
    rst $38
    nop
    db $fc
    inc bc
    ei
    inc b
    rst $20
    jr jr_02c_4aae

    jr nz, jr_02c_4b0c

    ret nz

    rst $38
    nop
    ei
    nop
    rst $30
    nop
    ei
    nop
    push de
    nop
    cp d
    nop
    ld d, l
    nop
    cp d
    nop
    ld d, l
    nop
    ld [$5500], a
    nop
    cp d
    nop
    ld d, l
    nop
    xor [hl]
    nop
    rst $18
    nop
    ld a, [$d700]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    di
    nop

jr_02c_4b0c:
    call z, Call_000_3002
    ld bc, $23dd
    ld h, c
    sbc [hl]
    sub [hl]
    ld a, c
    dec de
    rst $20
    ld h, c
    sbc a
    sbc c
    ld a, a
    ld h, [hl]
    cp $fc
    db $fc
    or b
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    cp $ff
    add b
    rst $38
    nop
    rst $38
    nop
    cp $00
    push de
    nop
    xor d
    nop
    ld d, c
    nop
    jr z, jr_02c_4b6a

jr_02c_4b6a:
    ld de, $0200
    nop
    ld bc, $0a00
    nop
    ld d, h
    ld bc, $03a8
    ld d, h
    inc bc
    xor b
    inc bc
    ld d, l
    ld [bc], a
    xor c
    ld [bc], a
    ld d, l
    ld [bc], a
    cp l
    ld [bc], a
    db $fd
    ld [bc], a
    push hl
    ld a, [de]
    dec e
    ld [c], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ld a, h
    inc bc
    rst $38
    nop
    ld e, a
    nop
    xor [hl]
    nop
    ld d, l
    nop
    ld [$5700], a
    nop
    xor d
    nop
    ld e, l
    nop
    xor d
    nop
    ld d, a
    nop
    xor d
    nop
    ld a, l
    nop
    xor a
    nop
    rst $18
    nop
    xor e
    nop
    rst $10
    nop
    xor [hl]
    ld bc, $03dc
    ld hl, sp+$07
    pop af
    ld c, $f1
    ld c, $f3
    inc c
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    di
    nop
    adc $00
    jr nc, jr_02c_4be1

    ret nz

    daa
    add b
    inc e
    nop
    ld a, e
    add d
    rst $38

jr_02c_4be0:
    ld c, b

jr_02c_4be1:
    cp a
    add e
    ld a, a
    inc e
    db $fc
    jr c, jr_02c_4be0

    ld h, b
    ldh [$80], a
    add b
    nop
    nop
    nop
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
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    nop
    nop
    ld a, a
    ld a, a
    rst $38
    rst $38
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
    cp a
    nop
    ld d, a
    nop
    ld a, [hl+]
    inc bc
    ld d, e
    rlca
    and c
    rrca
    ld b, c
    ld e, $83
    inc a
    rlca
    ld a, b
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
    cp $01
    db $fd
    inc bc
    ei
    rlca
    rst $30
    rrca
    rst $28
    rra
    sbc $3f
    add hl, bc
    cp $d3
    inc c
    xor d
    nop
    ld a, l
    nop
    xor d
    nop
    push de
    nop
    xor d
    nop
    ld [hl], l
    nop
    ld [$d700], a
    nop
    ld a, [$ff00]

jr_02c_4c67:
    nop
    ld [c], a
    inc e
    call $833e
    ld a, a
    dec e
    db $e3
    dec a
    jp $837d


    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    ei
    rlca
    or $0f
    db $ed
    ld e, $db
    inc a
    or h
    ld a, b
    inc bc
    ldh a, [$cc]
    ld [bc], a
    jr c, @+$09

    ld hl, sp+$07
    db $e3
    inc e
    adc h
    ld [hl], e

jr_02c_4c96:
    jr nc, jr_02c_4c67

    di
    rra
    add [hl]
    ld a, [hl]
    jr jr_02c_4c96

    ld [hl], b
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
    cp $ff
    db $fc
    rst $38
    ld a, [c]
    rst $38
    pop hl
    rst $38
    pop bc
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    inc b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp z, $55f0

    nop
    xor d
    nop
    ld d, l
    nop
    ld [$d500], a
    nop
    db $eb
    nop
    push de
    nop
    db $eb
    nop
    ld d, l
    add b
    rst $08
    ldh [rPCM34], a
    ldh a, [$bf]
    ld a, b
    cp a
    ld a, b
    cp a
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld a, b
    db $f4
    ld a, e
    rst $30
    ld a, b
    rst $30
    ld a, b
    ld [hl], a
    ld hl, sp-$09
    ld hl, sp-$11
    ldh a, [$df]
    ldh [$bf], a
    ret nz

    ld a, d
    add b
    db $dd
    nop
    cp [hl]
    nop
    push af
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    ld [$5500], a
    nop
    cp d
    nop
    ld e, l
    nop
    ei
    nop
    ld [hl], l
    nop
    ld [$7f00], a
    nop
    ccf
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    ld a, h
    add b
    di
    nop
    adc $00

jr_02c_4d56:
    jr nc, jr_02c_4d63

    ldh a, [rIF]
    add b
    ld e, h
    nop
    ld [hl], e
    inc bc
    rst $08
    rst $00
    ccf
    inc c

jr_02c_4d63:
    db $fc
    jr nc, jr_02c_4d56

    ldh [$e0], a
    add b
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
    nop
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
    cp $ff
    db $fc
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    db $e3
    nop
    rra
    cp $ff
    dec d
    ldh [$aa], a
    nop
    ld d, l
    nop
    xor e
    nop
    ld d, l
    nop
    xor e
    nop
    ld e, a
    nop
    ld a, [$7d00]
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
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, l
    nop
    ld [$fd00], a
    nop
    cp d
    nop
    ld d, l
    nop
    ld [$5d00], a
    nop
    cp a
    nop
    ld d, a
    nop
    xor [hl]
    ld bc, $015e
    db $fd
    ld [bc], a
    ei
    inc b
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$0df2], sp
    db $fc
    inc bc
    rst $38
    nop
    db $fc
    nop
    di
    nop
    call z, $3003
    dec b
    pop hl
    ld e, $80
    ld a, a
    ld [bc], a
    rst $38
    dec hl
    rst $18
    sbc $3e
    ld e, b
    ld hl, sp+$60
    ldh [$c0], a
    ret nz

    rst $38
    nop
    rst $38
    ld b, $ff
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

jr_02c_4e48:
    ei
    rst $38
    pop hl
    rst $38
    sub b
    rst $38
    nop
    rst $38

jr_02c_4e50:
    ld b, b
    rst $38
    jr nz, @+$01

jr_02c_4e54:
    nop
    rst $38
    db $10
    rst $38
    ld [$04ff], sp
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    inc b
    db $fd
    nop
    db $fd
    nop
    cp $00
    cpl
    ld [bc], a
    rst $38
    ld [bc], a
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
    rlca
    rlca
    rst $38
    rst $38
    ld hl, sp-$01
    xor d
    ld d, l
    ld d, l
    ld [bc], a
    cp [hl]
    ld bc, $005f
    rst $38
    nop
    ld a, a
    nop
    cp a
    nop
    rst $38
    nop
    cp a
    nop
    ld a, a
    nop
    cp a
    nop
    rst $38
    nop
    xor a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    push de
    nop
    xor d
    nop
    push de
    nop
    ld l, d
    add b
    sub l
    ld b, b
    cp d
    ld b, b
    sub l
    ld b, b
    adc [hl]
    jr nz, jr_02c_4f18

    jr nz, jr_02c_4e48

    jr nz, jr_02c_4f14

    jr nz, jr_02c_4e50

    jr nz, jr_02c_4f22

    jr nz, jr_02c_4e54

    jr nz, @+$01

    nop
    xor a
    ld [hl], b
    ld [hl], e
    db $fc
    cp l
    ld a, [hl]
    db $dd
    ld a, $dd
    ld a, $dd
    ld a, $dd
    ld a, $c1
    ld a, $c1
    ld a, $c1
    ld a, $c3
    inc a
    add a
    ld a, b
    inc c
    ldh a, [rNR13]
    ldh [$0c], a
    jp $0f30


    pop bc
    ccf
    ld bc, $017f
    rst $18
    rlca
    rst $38
    inc a
    db $fc
    ld [hl], b
    ldh a, [$c0]
    ret nz

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
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38

jr_02c_4f14:
    rrca
    rst $38
    rlca
    rst $38

jr_02c_4f18:
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_02c_4f22:
    nop
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    db $10
    ld a, a
    nop
    cp a
    ld [$049f], sp
    rrca
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
    rst $38
    rst $38
    ldh [rIE], a
    inc b
    ei
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    push af
    ld a, [bc]
    ld [$fd15], a
    ld [bc], a
    ld [$fd15], a
    ld [bc], a
    ld [$fd15], a
    ld [bc], a
    cp $01
    rst $30
    ld [$01fe], sp
    cp $01
    cp $01
    rst $38
    nop
    cp $01
    cp $01
    cp a
    ld bc, $01ff
    cp a
    ld bc, $017f
    rst $38
    inc bc
    rst $38
    inc bc
    cp $02
    cp $02
    cp $06
    cp $06
    db $fc
    inc b
    db $f4
    inc c
    db $fc
    inc c
    db $fc
    inc c
    db $ec
    inc e
    add sp, $18
    ld hl, sp+$18
    ld hl, sp+$18
    ld hl, sp+$18
    ldh a, [rNR10]
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [$30]
    ldh [$60], a
    ld h, b
    ldh [$60], a
    ldh [$60], a
    ldh [rIE], a
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
    pop af
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_02c_4fca:
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
    inc bc
    rst $38
    inc bc
    rst $38
    ld b, $ff
    ld b, $ff
    nop
    nop
    nop
    nop

jr_02c_4fe4:
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    inc h
    call c, $fc04
    jr z, jr_02c_4fca

    ld e, b
    xor b
    xor b
    ld e, b
    ld c, b
    cp b
    or b
    ld d, b
    ld d, b
    or b
    or b
    ld d, b
    db $10
    ldh a, [$a0]
    ld h, b
    jr nz, jr_02c_4fe4

    and b
    ld h, b
    ld h, b
    and b
    ldh [$60], a
    ld b, b
    ret nz

    ret nz

    ld b, b
    ld b, b
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
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, $07
    rlca
    rlca
    ld a, [bc]
    rrca
    ld c, $0f
    inc c
    rrca
    inc e
    rra
    add hl, de
    rra
    add hl, de
    rra
    dec sp
    ccf
    dec sp
    ccf
    scf
    ccf
    ld a, a
    ld a, a
    ld a, e
    ld a, a
    ld a, a
    ld a, a
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
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    pop af
    rst $38
    di
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
    rst $38
    rst $38
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
    ld bc, $01ff
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    ld [$080f], sp
    rrca
    ld [$180f], sp
    rra
    inc d
    rra
    db $10
    rra
    jr nc, jr_02c_50e9

    ld hl, $533f
    ld a, a
    ld [hl], c
    ld a, a
    ld [hl], e
    ld a, a
    rst $20
    rst $38
    and a
    rst $38
    rst $08
    rst $38
    ld e, a
    rst $38
    ld c, a
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
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    di
    rst $38
    di
    rst $38
    or $ff
    and $ff
    xor $ff
    call $dfff
    rst $38
    sbc [hl]
    rst $38
    cp [hl]
    rst $38
    cp a
    rst $38
    ccf

jr_02c_50e9:
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
    cp $ff
    cp $ff
    cp $ff
    db $fd
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    ld bc, $0101
    ld bc, $0203
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    rrca
    ld [$090e], sp
    ld c, $09
    ld e, $11
    ld e, $11
    ld a, $21
    ld a, $21
    ld a, $21
    ld a, h
    ld b, e
    ld a, h
    ld b, e
    ld b, h
    ld a, e
    ret z

    rst $38
    db $db
    rst $38
    sbc e
    rst $38
    add a
    rst $38
    sbc a
    rst $38
    daa
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ei
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fd
    rst $38
    db $fd
    rst $38
    cp $ff
    call z, $dcff
    rst $38
    or h
    rst $38
    push af
    rst $38
    pop hl
    rst $38
    db $e3
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    and a
    rst $38
    rst $08
    rst $38
    ld c, a
    rst $38
    cp a
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
    cp $ff
    ld a, h
    rst $38
    db $fc
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
    ld bc, $0101
    ld bc, $0203
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    rlca
    inc b
    rlca
    inc b
    rrca
    add hl, bc
    rrca
    dec c
    rrca
    dec c
    rra
    ld de, $101f
    rla
    add hl, de
    ld a, $31
    inc a
    inc sp
    ld a, $37
    ld a, [hl]
    ld b, a
    ld a, h
    ld b, a
    ld a, b
    ld b, a
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [rIF]
    pop hl
    ld e, $e1
    ld e, $c0
    ccf
    jp nz, $803d

    ld a, a
    and b
    ld a, a
    ret nz

    ld a, a
    db $10
    rst $28
    add b
    rst $38
    ld [$00f7], sp
    rst $38
    ld bc, $01fe
    cp $02
    db $fd
    ld d, $e9
    ld [hl], $c9
    inc b
    ei
    ld b, b
    cp a
    ld [$18f7], sp
    rst $20
    db $10
    rst $28
    ld [c], a
    rst $38
    cp $ff
    cp $ff
    db $fd
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, [c]
    rst $38
    di
    rst $38
    pop hl
    rst $38
    ldh [rIE], a
    pop bc
    rst $38
    pop bc
    rst $38
    add e
    rst $38
    add e
    rst $38
    add a
    rst $38
    rla
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
    cp a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    ld a, [$f8ff]
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    and d
    rst $38
    add b
    rst $38
    jr nz, @+$01

    inc c
    rst $38
    add h
    rst $38
    ld b, $ff
    di
    rst $38
    sbc $ff
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    ei
    rst $38
    db $fc
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
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0908], sp
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $08
    ld [$1708], sp
    jr jr_02c_52a8

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_02c_52b8

    ld [hl+], a
    inc hl
    ld [$0808], sp
    inc h
    dec h
    ld h, $27
    jr z, jr_02c_52cb

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f

jr_02c_52a8:
    ld [$0808], sp
    ld [$3130], sp
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_02c_52ef

    ld a, [hl-]
    dec sp

jr_02c_52b8:
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
    ld [$4847], sp
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l

jr_02c_52cb:
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
    ld l, d
    nop
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b

jr_02c_52ef:
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    nop
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    ld [$0808], sp
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
    ld [$0808], sp
    ld [$8f8e], sp
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
    ld [$0808], sp
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    ld [$a4a3], sp
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
    ld [$b108], sp
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    ld [$0808], sp
    ld [$0808], sp
    ld [$bcbb], sp
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $08c3

    ld [$0808], sp
    ld [$0808], sp
    call nz, Call_000_00c5
    add $c7
    ret z

    ret


    jp z, $cccb

    call $cfce
    ret nc

    pop de
    jp nc, Jump_000_08d3

    nop
    call nc, $d6d5
    rst $10
    ret c

    reti


    jp c, $dcdb

    db $dd
    ld [$0808], sp
    ld [$0008], sp
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$0808], sp
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
    nop
    nop
    nop
    cp $ff
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $00
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    nop
    nop
    nop
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    dec b
    dec b
    nop
    nop
    nop
    dec b
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
    nop
    nop
    nop
    nop
    ld bc, $0306
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0306
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    ld bc, $0404
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0304
    inc bc
    nop
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0304
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0004
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld b, $03
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld b, $03
    inc bc
    nop
    nop
    nop
    inc bc
    nop
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, $03
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
    ld bc, $0306
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
    nop
    ld bc, $0306
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, $06
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    ld bc, $0306
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0006
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $03
    nop
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0003
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
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
    nop
    ld [$0b0b], sp
    dec bc
    dec bc
    dec bc
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
    nop
    nop
    ld b, $00
    inc bc
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
    add b
    add b
    ld b, b
    ldh [rNR10], a
    ldh a, [$08]
    db $fc
    nop
    cp $01
    rst $38
    nop
    ccf
    ret nz

    rra
    ldh [$c7], a
    jr c, jr_02c_5590

    sbc [hl]
    jp nc, Jump_02c_6def

    di
    sbc d
    ld a, l
    adc $3f
    adc a
    ld a, a
    rrca
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    cp a
    rst $38
    ld l, a
    rst $38
    ld e, l
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
    rst $38
    rst $38
    rra
    rst $38
    inc bc
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld d, e
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

jr_02c_5590:
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
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
    add b
    add b
    add b
    add b
    nop
    nop
    rra
    rra
    rra
    rra
    db $fc
    rst $38
    rst $18
    rst $18
    cp a
    cp a
    rst $18
    rst $18
    cp $fe
    rst $38
    rst $38
    ld a, [c]
    di
    rst $38
    rst $38
    ld a, $3f
    rst $30
    rst $38
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$04
    db $fc
    nop
    db $fc
    nop
    cp $01
    rst $38
    nop

jr_02c_55df:
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $03
    rst $38
    ld bc, $00ff
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
    rst $00
    nop

jr_02c_55fd:
    rlca
    nop
    ld b, $00
    daa
    nop
    inc sp
    nop
    rra
    nop
    rlca
    nop
    inc bc
    nop
    inc b
    nop
    dec d
    nop
    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    add b
    ld h, b
    ret nz

    jr nc, jr_02c_55fd

    jr jr_02c_55df

    inc a
    and a
    ld e, a
    add a
    rst $38
    ld c, a
    rst $38
    ccf
    rst $38
    sbc a
    rst $38
    rst $28
    rst $38
    di
    rst $38
    db $fd
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    ret nz

    rst $38
    ld [c], a
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld a, h
    rst $38
    call z, $f8ff
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    ld a, e
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fc
    nop
    ldh [rP1], a
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
    db $10
    db $10
    jp z, $c3ca

    jp $e0e0


    ldh a, [$f0]
    db $fd
    db $fd
    cp c
    cp c
    nop
    nop
    ld [bc], a
    ld [bc], a
    rst $30
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $fe
    rst $08
    rst $28
    ld a, b
    ld a, a
    ld a, b
    ld a, a
    jr c, jr_02c_56e5

    inc a
    ccf
    inc e
    rra
    ld c, $0f
    add a
    rlca
    ld b, a
    inc bc
    and c
    add c
    nop
    add b
    ld b, b
    ret nz

    jr nc, jr_02c_5728

    dec h
    ld h, b
    inc bc
    ret nz

    reti


    ld hl, sp-$39
    and $3a
    cp d
    xor e
    xor e
    ld sp, $2fb1
    rst $28
    rla
    rst $30
    rst $38
    rst $38
    ld d, $b6
    ld a, e
    ei
    dec a
    db $fd
    daa
    rst $38
    sbc [hl]
    cp $9e
    cp $bf
    rst $38
    or a
    rst $38
    db $76
    or $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a

jr_02c_56e5:
    rst $38
    ld a, [hl]
    cp $3f
    rst $38
    rrca
    rst $38
    dec b
    rst $38
    inc bc
    rst $38
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    rrca
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    add b
    rst $38
    ldh [rIE], a
    ld [hl], b
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    ld [bc], a
    db $fd
    ld e, a
    ldh [$66], a
    ld sp, hl
    db $fd
    ei
    ld a, l
    ei
    ld a, l
    ei
    ld a, l
    ei
    db $fd
    ei
    db $fd
    ei
    db $fd
    ei
    db $fd
    ei
    db $fd
    ei
    rst $38
    ei
    ei
    rst $38

jr_02c_5728:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    db $eb
    db $eb
    ld a, a
    ld a, a
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    pop af
    pop af
    db $eb
    db $eb
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, [hl]
    ld e, a
    ld a, a
    ld a, a
    ld d, $16
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
    add b
    nop
    ldh [$f0], a
    rst $18
    ld a, b
    ld a, a
    jr jr_02c_57a5

    inc e
    rrca
    inc b
    inc bc
    xor d
    ld bc, $01df
    rst $38
    inc bc
    ei
    nop
    ld a, a
    nop
    cp a
    add b
    rst $38
    ret nz

    rst $18
    ret nz

    rst $28
    ldh [$6f], a
    ld h, b
    ld [hl], a
    ld [hl], b
    add e
    add b
    add c
    add b
    nop

jr_02c_57a5:
    nop
    adc b
    adc b
    nop
    nop
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ret nz

    ret nz

    add b
    add b
    add b
    add b
    ld b, b
    ld b, b
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a

jr_02c_57bc:
    add b
    add b
    ret nz

    ret nz

    pop hl
    ldh [$60], a
    ldh [$78], a
    ld hl, sp+$38
    ld hl, sp+$1c
    db $fc
    jr nc, jr_02c_57bc

    ld hl, sp-$08
    ldh a, [rSVBK]
    ret nz

    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    call nz, $c3ff
    db $fc
    cp a
    ret nz

    cp $80
    rst $38
    rst $30
    ld a, a
    rst $38
    and b
    rst $38
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
    jr c, jr_02c_584c

    rrca
    rrca
    sbc e
    sbc e
    db $ec
    db $ec
    ld a, [hl]
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    ei
    rst $38
    rst $38
    ld a, [c]
    rst $38
    add h
    rst $38
    and [hl]
    rst $38
    sub $d6
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld de, $1000
    nop
    jr jr_02c_583e

jr_02c_583e:
    ld [$0c00], sp
    nop
    inc b
    nop
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    nop

jr_02c_584c:
    nop
    nop
    nop
    nop
    ldh [rIE], a
    ei
    ld e, a
    db $fc
    ld de, $00fe

Call_02c_5858:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ccf
    nop
    rra
    nop
    rra
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ld a, $ff
    ld a, [hl-]
    cp $bc
    cp $dc
    cp $ff
    db $fc
    sbc l
    db $fc
    adc l
    db $fc
    adc c
    db $fc
    cp c
    db $fc
    ccf
    ld hl, sp+$3b
    ld hl, sp+$63
    ld hl, sp+$63
    ld hl, sp+$1b
    ldh a, [$1f]
    ldh a, [$87]
    ldh a, [$c6]
    pop af
    add $f1
    ld a, [c]
    push hl
    ei
    db $f4
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
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    or $00
    ld a, [c]
    nop
    db $f4
    nop
    ld a, [$fe00]
    nop
    rst $28
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
    rst $38
    nop
    rst $18
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
    ccf
    rst $38
    add sp, $17
    rst $38
    nop
    nop
    nop
    db $fc
    add b
    ld b, e
    db $fc
    jr nz, @+$01

    ld a, l
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    call nz, Call_000_3ec4
    ld a, $bf
    cp a
    cp a
    cp a
    ld l, a
    ld l, a
    rst $38
    rst $38
    sbc $de
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, $ff
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
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
    add b
    ld [bc], a
    jp nz, Jump_02c_4204

    inc c
    inc bc
    ld d, b
    ld bc, $0170
    nop
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    rst $38
    add b
    rst $38
    call c, $9ad7
    add e
    rst $00
    rlca
    ldh a, [rP1]
    ld l, h
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
    ldh a, [rIF]
    db $fc
    nop
    ret nz

    ccf
    rst $00
    jr c, jr_02c_5990

    rst $38
    rra
    rst $38
    rra
    ldh a, [$5e]
    ldh a, [rNR11]
    ldh a, [$3f]
    ldh a, [$3f]
    ldh [$3f], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$73], a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, [hl]
    ret nz

    db $fc
    ret nz

    ld a, [c]
    ret nz

jr_02c_5990:
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    add l
    dec b
    add h
    inc b
    add b
    nop
    adc a
    rrca
    ld b, e
    inc bc
    ld b, a
    rlca
    ld b, $06
    ld [bc], a
    ld [bc], a
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
    ld bc, $0101
    ld bc, $0202
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
    jr nz, jr_02c_59c8

jr_02c_59c8:
    jr nz, jr_02c_59ca

jr_02c_59ca:
    or b
    nop
    ld d, b
    nop
    ld d, c
    nop
    adc d
    nop
    inc [hl]
    nop
    cp $00
    cp l
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    db $fd
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
    ld a, a
    rst $38
    ret nc

    cpl
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    rst $38
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    pop af
    nop
    dec e
    dec e
    inc e
    inc e
    ld [hl], b
    ld [hl], b
    ld sp, hl
    ld sp, hl
    db $f4
    db $f4
    dec a
    dec a
    rst $30
    rst $30
    ldh a, [$f0]
    ret nz

    ret nz

    rst $38
    rst $38
    sbc h
    sbc a
    db $e4
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld c, $00
    ld b, $00
    rlca
    nop
    inc bc
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
    add b
    nop
    add b
    ld b, b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    inc d
    rst $38
    ld bc, $9bff
    rst $38
    set 7, a
    ld l, a
    rst $38
    db $fc
    db $fc
    db $ec
    inc c
    call nz, Call_000_0004
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
    ld [hl], b
    rrca
    jr c, @-$3e

    ldh a, [rIF]
    ldh a, [rIE]
    ldh a, [rIE]
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    rst $08
    nop
    xor b
    nop
    ld e, e
    ld e, e
    ld l, a
    ld l, a
    ld a, a
    ld a, a
    ld l, a
    ld a, a
    rst $28
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
    rst $38
    rst $38
    db $fc
    rst $38
    cp [hl]
    rst $38
    ld a, d
    ld a, a
    jr c, jr_02c_5b1d

    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp h
    cp a
    inc a
    ccf
    inc a
    ccf
    ld e, h
    ld e, a
    ld a, $3f
    inc c
    rrca
    add hl, sp
    ccf
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld l, $2f
    rrca
    rrca
    rrca
    rrca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    inc b
    nop
    inc c
    nop
    inc b
    nop
    ld b, b
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
    jp nc, $fb00

    nop
    pop bc
    nop
    sub e
    nop
    ld l, e
    nop
    rst $20
    nop
    db $e3
    nop
    rst $30
    nop
    rst $38
    nop
    ld b, a
    nop
    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    add b
    jr nz, jr_02c_5b24

    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    jr nz, @+$22

    rst $30
    rst $30
    xor a
    xor a
    rst $18
    rst $18
    ld [hl], l
    push af
    ld h, b
    ldh [rNR41], a
    ldh [$58], a
    ld hl, sp-$01
    rst $38
    di

jr_02c_5b1d:
    di
    cp a
    cp a
    ld b, c
    rst $18
    inc de
    rst $18

jr_02c_5b24:
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
    ld l, c
    rst $38
    ld a, b
    rst $38
    ld [hl], b
    rst $30
    or b
    rst $30
    or b
    rst $30
    inc a
    rst $38
    ld [$4ceb], sp
    db $eb
    and $e7
    call c, Call_02c_65dd
    ld h, l
    ldh [$e0], a
    ld h, h
    ld h, b
    jr nz, jr_02c_5b70

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
    jr c, jr_02c_5b75

    ld a, h
    add b

jr_02c_5b70:
    rlca
    rst $38
    ret nc

    rst $38
    add b

jr_02c_5b75:
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $08
    nop
    add c
    nop
    nop
    nop
    nop
    cp a
    nop
    ld a, c
    nop
    rst $38
    nop
    rst $38
    nop
    di
    nop
    cp h
    nop
    ld [hl], a
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
    add b
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
    jr nc, jr_02c_5ba9

jr_02c_5ba9:
    ld h, e
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    dec bc
    dec bc
    ld b, $06
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_02c_5bbe

jr_02c_5bbe:
    ld [$2000], sp
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld [hl], b
    nop
    jr nz, jr_02c_5bca

jr_02c_5bca:
    nop
    nop
    inc c
    nop
    inc b
    nop
    ld a, [$fd00]
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld a, a
    inc bc
    inc bc
    nop
    nop
    nop
    ldh [rP1], a
    ld bc, $00fe
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
    ld b, b
    ld b, b
    ld b, h
    ld b, h
    rst $38
    rst $38
    pop af
    pop af
    jr nz, jr_02c_5c22

    ld hl, sp-$08
    dec b
    dec b
    nop
    nop
    db $10
    db $10

jr_02c_5c0a:
    ld hl, sp-$08

jr_02c_5c0c:
    sbc h
    sbc h
    rlca
    rlca
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

jr_02c_5c22:
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

jr_02c_5c2e:
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
    jr @-$76

    ld [$00e0], sp
    ldh a, [rP1]
    cp l
    nop
    cp a
    jr nz, jr_02c_5c0a

    jr nc, jr_02c_5c0c

    jr c, jr_02c_5c2e

    inc e
    rst $18
    ldh [$df], a
    ldh [$df], a
    ldh [$cf], a
    ldh a, [$cf]
    ldh a, [$e7]
    ld hl, sp-$19
    ld hl, sp+$03
    inc e
    inc bc
    inc c
    ld bc, $000e
    rrca
    add hl, bc
    rrca
    inc c
    adc a
    ld c, $f7
    rrca
    rst $30
    rrca
    rst $30
    inc bc
    ld hl, sp+$03
    ld hl, sp+$01
    db $fc
    nop
    cp $00
    rst $38
    nop
    ld a, a
    nop
    rst $30
    nop
    ld c, c
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
    ld [$4100], sp
    nop
    jp Jump_02c_6300


    nop
    rst $30
    rst $38
    rst $38
    cp $fe
    ld e, [hl]
    ld e, [hl]
    ld h, $26
    ld b, $06
    ld h, b
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
    inc d
    nop
    jr nc, jr_02c_5cbc

jr_02c_5cbc:
    ld h, e
    nop
    rst $20
    nop
    ld a, a
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    inc b
    rlca
    nop
    inc bc
    nop
    ldh [rP1], a
    ld bc, $00fe
    rst $38
    or b
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
    inc e
    rst $18
    rst $18
    ldh a, [$f0]
    sub b
    sub b
    or b
    or b
    ret nz

    ret nz

    ld c, h
    ld c, h
    ld b, b
    ld b, b
    ret nc

    ret nc

    ld [hl], h
    ld [hl], h
    ld sp, hl
    ld sp, hl
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

    ld bc, $18c0
    ldh [$0e], a
    ldh a, [rP1]
    ldh a, [rP1]
    add b
    add b
    rst $38
    add b
    rst $38
    pop hl
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    rrca
    rrca
    ld bc, $0001
    nop
    add b
    ld e, $c0
    rra
    db $fc
    inc bc
    rst $38
    nop
    ld a, a
    add b
    cp a
    ret nz

    rst $08
    ldh a, [$f3]
    db $fc
    nop
    db $fc
    nop
    rra
    nop
    daa
    nop
    rlca
    nop
    ld bc, $0000
    nop
    ld [$0200], sp
    nop
    inc bc
    nop
    inc bc
    nop
    nop
    nop
    ld [bc], a
    nop
    ld bc, $0100
    nop
    rlca
    nop
    ld [bc], a
    rlca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    adc a
    rst $38
    cp a
    rst $38
    rst $30
    rst $38
    cp $fe
    cp $fe
    cp $fe
    ld e, h
    ld e, h
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
    jr c, jr_02c_5d82

jr_02c_5d82:
    ld a, b
    nop
    ld de, $0300
    nop
    dec de
    nop
    ld e, a
    nop
    add hl, de
    nop
    ld e, c
    nop
    add hl, sp
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    ei
    nop
    nop
    nop
    ldh [rP1], a
    ld b, c
    cp $05
    nop
    nop
    nop
    nop
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
    db $fc
    db $fc
    ld a, a
    ld a, a
    sub c
    sub c
    nop
    nop
    nop
    nop
    ld b, e
    ld b, e
    rrca
    rrca
    cp a
    cp a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    ld a, b
    nop
    ld a, b
    nop
    ld a, b
    nop
    db $fc
    db $fc
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
    cp $fe
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    db $fc
    inc bc
    nop
    db $fc
    ld hl, sp-$08
    db $fc
    db $fc
    ld a, [$fcfa]
    db $fc
    ld a, h
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ld l, b
    add sp, -$3c
    call nz, $c444
    call z, $cccc
    call z, $c0c0
    ld [hl], d
    ld a, [c]
    ld a, h
    db $fc
    ld [hl], b
    ldh a, [$f8]
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
    dec c
    nop
    inc de
    nop
    adc a
    nop
    xor $00
    rst $28
    nop
    rst $38
    nop
    rst $28
    nop
    rst $08
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
    rla
    rst $38
    ldh [$1f], a
    db $f4
    dec bc
    dec b
    ld a, [$f0ff]
    cpl
    rst $38
    ld a, [hl+]
    rst $38
    nop
    rst $38
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
    jr nc, jr_02c_5eb6

    ret nz

    ret nz

    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
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
    rst $08
    ccf
    ccf
    rst $08
    rst $38
    rra
    rra
    rst $38
    ld a, a
    rst $38

jr_02c_5eb0:
    rra
    rst $38
    rrca
    rst $38
    ld c, $fe

jr_02c_5eb6:
    jr jr_02c_5eb0

    ldh a, [$f0]
    ret nz

    ret nz

    nop
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
    ld [$3000], sp
    nop
    ld b, b
    nop
    add b
    ld [de], a
    stop
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
    ld bc, $0100
    nop
    nop
    nop
    ld bc, $0500
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    dec bc
    nop
    ld [$4500], sp
    nop
    rrca
    nop
    ld c, $00
    ld [de], a
    nop
    ld d, $00
    ld e, $00
    rrca
    nop
    adc a
    nop
    ld h, a
    nop
    ld l, a
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
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    rst $38
    rst $30
    rst $38
    ccf
    rst $38
    inc de
    rst $38
    inc bc
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
    ld [$0008], sp
    nop
    ld b, b
    ld b, b
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
    jr jr_02c_5f99

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

jr_02c_5f99:
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
    ld e, a
    ei
    rst $08
    rst $38
    call z, $deff
    rst $38
    rst $10
    rst $38
    ld b, a
    rst $38
    dec bc
    rst $38
    rrca
    rst $38
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    add e
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    rra
    nop
    cp a
    nop
    ccf
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
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
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $18
    nop
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
    rst $38
    rst $38
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
    ld bc, $ffff
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
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
    dec sp
    ei
    ld [hl], d
    di
    ld h, d
    db $e3
    ld c, [hl]
    rst $08
    inc e
    rra
    db $10
    rra
    sub [hl]
    rra
    cp [hl]
    ccf
    ccf
    ccf
    ccf
    ccf
    db $eb
    db $eb
    or e
    or e
    add b
    add b
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
    db $fc
    inc bc
    rrca
    ldh a, [rP1]
    rst $38
    sub b
    rst $38
    rst $38
    nop
    rst $38
    db $fd
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
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    ccf
    rst $38
    rlc b
    rst $00
    nop
    push af
    nop
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
    ld [hl], b
    nop
    ld [hl], b
    nop
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    add b
    nop
    rst $38
    jr nz, @+$01

    add b
    rst $38
    nop
    ld a, a
    add b
    cp a
    ld b, b
    ld a, a
    nop
    ld a, a
    add b
    rst $38
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    nop
    and h
    rst $38
    jp nz, Jump_02c_6bff

    rst $38
    rst $28
    rst $38
    and $ff
    rst $38
    rst $38
    ld a, l
    ld a, l
    jr nc, jr_02c_6130

    ld l, $20
    ld c, [hl]
    ld b, b
    rra
    nop
    sbc a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp+$07
    nop
    rst $38
    nop
    rst $38
    inc d
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

jr_02c_6130:
    rst $38
    rst $38
    ld a, a
    rst $38
    rlca
    rst $38
    cpl
    rst $38
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
    nop
    nop
    db $10
    jr nz, jr_02c_618f

    inc c
    ld h, c
    sbc h
    pop bc
    ld b, $80
    ld b, a
    nop
    db $e3
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    and b
    rst $38
    call nz, $cbff
    ld a, a
    rst $30
    rst $38
    db $fc
    db $fc
    ldh [$e0], a
    adc a
    add b
    ld d, e
    nop
    ret nc

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_02c_618f:
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
    ld bc, $bcff
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld h, h
    ei
    db $db
    push hl
    db $d3
    db $ed
    ret nz

    rst $38
    rst $18
    pop hl
    sbc $e1
    rst $18
    pop hl
    rst $18
    pop hl
    rst $18
    pop hl
    rst $38
    pop bc
    rst $18
    pop hl
    rst $18
    pop hl
    rst $38
    pop bc
    rst $18
    pop hl
    rst $18
    pop hl
    rst $08
    pop af
    db $dd
    db $e3
    rst $28
    pop de
    rst $28
    pop de
    xor l
    db $d3
    rst $28
    pop de
    rst $28
    pop de
    cp a
    pop bc
    xor a
    pop de
    rst $28
    pop de
    xor a
    pop de
    xor a
    pop de
    xor l
    db $d3
    xor a
    pop de
    and l
    db $db
    and a
    reti


    and l
    db $db
    and l
    db $db
    add l
    ei
    and l
    db $db
    add l
    ei
    and l
    db $db
    sub l
    db $eb
    adc l
    di
    adc c
    rst $30
    add l
    ei
    add l
    ei
    add c
    rst $38
    add l
    ei
    add e
    rst $38
    add e
    rst $38
    add c
    rst $38
    add e
    rst $38
    add e
    rst $38
    add e
    rst $38
    add e
    rst $38
    add e
    rst $38
    add e
    rst $38
    add e
    rst $38
    add e
    rst $38
    add e
    rst $38
    add e
    rst $38
    add e
    rst $38
    jp $c3ff


    rst $38
    jp $e3ff


    rst $38
    rst $20
    rst $38
    db $e3
    rst $38
    rst $20
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_02c_623c

jr_02c_623c:
    ld h, b
    nop
    pop bc
    ld [bc], a
    add e
    nop
    ld b, $80
    inc c
    add b
    ld [$1030], sp
    jr nz, jr_02c_624b

jr_02c_624b:
    jr c, jr_02c_624d

jr_02c_624d:
    nop
    nop
    nop
    inc bc
    rst $38
    scf
    rst $38
    ld l, b
    ld hl, sp-$0d
    ldh a, [$e9]
    ldh [$c0], a
    ret nz

    ld bc, $c000
    nop
    daa
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    db $fc
    nop
    ld a, [$f000]
    nop
    ldh a, [rP1]
    add sp, $00
    db $ec
    nop
    ldh a, [rP1]
    add sp, $00
    ret nc

    nop
    call nz, $c000
    nop
    add b
    nop
    add b
    nop
    add e
    inc bc
    add e
    inc bc
    add e
    inc bc
    add e
    inc bc
    add a
    rlca
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add c
    ld bc, $00b0
    and b
    nop
    ret nz

    nop
    pop bc
    ld bc, $0141
    ld h, c
    ld bc, $0161
    pop hl
    ld bc, $00e0
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh [rP1], a
    xor $00
    ldh a, [rP1]
    ld a, [$ee00]
    nop
    cp $00
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    nop
    nop
    add hl, bc
    inc de
    rst $38
    rlca
    rst $38
    ccf
    rst $38
    sbc a
    rst $38
    inc l
    db $ec
    and b
    ldh [rP1], a
    add b
    add c
    nop
    dec b
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld d, [hl]
    nop
    xor a
    nop
    rst $08
    nop
    ld a, a
    nop

Jump_02c_6300:
    rst $38
    nop
    cp $00
    rst $38
    inc bc
    rst $38
    rlca
    push af
    rlca
    push bc
    rlca
    rrc a
    adc h
    ld c, $18
    ld e, $13
    rla
    ccf
    ccf
    jr c, jr_02c_6357

    ld a, [hl-]
    ccf
    ld a, $3f
    jr jr_02c_6339

    xor h
    ccf
    ld e, h
    rra
    ld e, $1f
    ld e, $1f
    inc a
    ccf
    dec e
    rra
    dec a
    ccf
    dec e
    rra
    dec c
    rrca
    dec a
    ccf
    dec b
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca

jr_02c_6339:
    rlca
    rlca
    rlca
    add a
    add a
    rlca
    rlca
    ld c, e
    ld c, e
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld [hl], a
    ld [hl], a
    ld [hl], e
    ld [hl], e
    di
    di
    ld a, [c]
    di
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a

jr_02c_6357:
    ld a, a
    ld h, e
    ld h, e
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
    ld b, $06
    ld b, $06
    inc b
    inc b
    nop
    nop
    add b
    nop
    add b
    nop
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    db $e4
    nop
    call nc, $f000
    nop
    ldh [rP1], a
    db $f4
    nop
    db $fc
    nop
    push af
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    ld bc, $0300
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    dec bc
    nop
    nop
    nop
    nop
    inc bc
    rst $38
    rlca
    rst $38
    and e
    ei
    ld l, a
    rst $38
    ld e, l
    rst $38
    cp $fe
    db $fc
    db $fc
    add sp, -$18
    ldh [$e0], a
    ldh [$e0], a
    ld h, b
    ld h, b
    ret nz

    ret nz

    nop
    nop
    inc b
    nop
    nop
    nop
    add c
    nop
    adc e
    nop
    rra
    nop
    ld l, [hl]
    nop
    ei
    inc bc
    di
    rlca
    db $e4
    rrca
    ret c

    rra
    or b
    scf
    ld a, h
    ld a, a
    ld a, b
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ret z

    rst $38
    or b
    rst $38
    and b
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
    jr nz, jr_02c_63e9

jr_02c_63e9:
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
    nop
    nop
    ld b, b
    nop
    ret nz

    nop
    ret nz

    nop
    add d
    nop
    add b
    nop
    ret nz

    nop
    push bc
    nop
    add h
    nop
    ret z

    ret nz

    rst $38
    call $daff
    rst $38
    sbc [hl]
    rst $38
    adc [hl]
    rst $28
    rra
    rst $38
    ccf
    rst $38
    or $ff
    or [hl]
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld a, [de]
    rst $38
    sub c
    rst $38
    cp l
    rst $38
    db $76
    rst $38
    ld a, [$fefb]
    rst $38
    rst $28
    rst $28
    rst $28
    rst $28
    ld [hl], a
    ld a, a
    rst $28
    rst $28
    ld h, d
    ld h, e
    di
    di
    rst $38
    rst $38
    cp $fe
    ld [c], a
    ld [c], a
    sbc d
    sbc d
    adc l
    adc l
    nop
    nop
    ld [$0108], sp
    ld bc, $0303
    inc bc
    inc bc
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
    add b
    nop
    sub b
    nop
    call nz, $c600
    nop
    sbc $00
    rst $08
    nop
    sub a
    nop
    sub a
    nop
    rst $08
    nop
    rst $28
    nop
    rst $00
    nop
    rst $10
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    cp $00
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
    rst $38
    nop
    rst $38
    nop
    sbc l
    db $fd
    and a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    ld [hl], a
    rst $38
    ld l, a
    rst $38
    scf
    or a
    db $e3
    db $e3
    ld [$e4ea], a
    db $e4
    ld l, h
    ld l, h
    ld l, b
    ld l, b
    nop
    nop
    add b
    add b
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    ld b, $01
    ld a, [hl-]
    inc bc
    ld [hl], b
    rlca
    ld l, b
    rrca
    ret nc

    rra
    and b
    ccf
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
    nop
    nop
    add b
    nop
    add b
    nop
    ld b, b
    nop
    nop
    nop
    inc b
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
    jr nz, jr_02c_64f1

jr_02c_64f1:
    nop
    nop
    nop
    nop
    nop
    nop
    inc l
    nop
    jr nz, jr_02c_64fb

jr_02c_64fb:
    ret nz

    nop
    ret nz

    nop
    ld l, b
    ld d, d
    rst $38
    ret z

    rst $38
    cp $ff
    xor $ff
    cp [hl]
    rst $38
    cp $ff
    rst $38
    rst $38
    rrca
    rrca
    rlca
    rlca
    dec c
    dec c
    rrca
    rrca
    dec bc
    dec bc
    ld c, $0e
    inc b
    inc b
    nop
    nop
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld hl, $2301
    inc bc
    ld h, h
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [hl], a
    rlca
    ld h, a
    rlca
    dec h
    dec b
    ld [de], a
    ld [bc], a
    ld [$0000], sp
    nop
    sub b
    nop
    ret nz

    nop
    ld a, [c]
    nop
    rst $38
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
    cp $00
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    db $fd
    nop
    rst $38
    nop
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
    ld [$0808], sp
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    ld [$2408], sp
    dec h
    ld h, $27
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_02c_65ca

    ld [$3208], sp
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_02c_65dc

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    rlca
    ld [$4008], sp
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, h
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld [$4b4a], sp
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld d, c
    ld b, l
    ld d, d

jr_02c_65ca:
    ld d, e
    ld d, h
    ld d, l
    ld [$5756], sp
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a

jr_02c_65dc:
    ld h, b

Call_02c_65dd:
    ld h, c
    ld [$4462], sp
    ld b, h
    ld b, h
    ld b, h
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
    ld b, h
    ld b, h
    ld b, h
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ld l, e
    ld l, e
    ld l, e
    db $76
    ld b, h
    ld [hl], a
    ld b, h
    ld b, h
    ld b, h
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
    db $76
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
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
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    dec hl
    ld e, a
    sub h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    ld [$a1a0], sp
    and d
    ld b, h
    ld b, h
    ld b, h
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    ld [$ab08], sp
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
    ld [$b908], sp
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
    ld [$c808], sp
    ret


    jp z, $cccb

    call $cfce
    ret nc

    pop de
    jp nc, $d4d3

    push de
    ld [$d608], sp
    rst $10
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    ld [$0808], sp
    db $e3
    db $e4
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    ld bc, $0401
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
    nop
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
    nop
    nop
    ld bc, $0001
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
    ld bc, $4001
    ld a, e
    add b
    adc l
    ret nz

    push bc
    sbc b
    adc h
    ld d, b
    ld b, b
    adc b
    add b
    rst $08
    jp Jump_02c_414d


    ld b, $e9
    ld b, $e9
    ld b, $e9
    rlca
    ret z

    rrca
    add b
    rrca
    db $10
    rra
    ldh [$7e], a
    add c
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ld h, b
    ld h, b
    ld e, b
    ld e, b
    ld h, c
    ld h, c
    ld hl, $8021
    add b
    ld l, h
    ld l, h
    nop
    nop
    ld b, c
    ld b, b
    ld bc, $2000
    nop
    ld de, $4800
    nop
    jp nz, RST_00

    nop
    jr nz, jr_02c_6828

jr_02c_6828:
    add d
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
    nop
    nop
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    pop hl
    nop
    db $e3
    nop
    rlc b
    ld h, l
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
    rst $38
    nop
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
    di
    rrca
    add c
    nop
    inc e
    ldh [$80], a
    ld a, a
    and b
    ld a, a
    rst $00
    ccf
    and b
    ld e, a
    ret


    ld a, $84
    ld a, a
    and b
    ld e, a
    jp z, $a037

    ld e, a
    call nc, $932b
    rst $38
    daa
    rst $38
    ld l, [hl]
    cp $df
    cp $9d
    ld a, h
    ld a, c
    ld hl, sp+$79
    ld hl, sp-$06
    ldh a, [$fc]
    ldh [rIE], a
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
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, $ff
    adc a
    rst $38
    or b
    or b
    jr c, jr_02c_6946

    ld e, b
    ld e, b
    cp $7e
    cp h
    inc a
    cp h
    inc a
    sbc a
    rra
    sbc h
    inc e
    adc [hl]
    ld c, $1a
    ld e, $1c
    dec e
    rla
    rra
    rrca
    rrca
    rra
    rra
    dec l
    dec l
    ccf
    ccf
    inc c
    inc c
    nop
    nop
    ld c, h
    ld c, h
    call $cccd
    call z, Call_02c_5858
    nop
    nop
    nop
    nop
    ld [$c008], sp
    nop
    add sp, $00
    jr nc, jr_02c_6902

jr_02c_6902:
    ld h, b
    nop
    ld [hl+], a
    nop
    stop
    stop
    stop
    jr jr_02c_690e

jr_02c_690e:
    ld [$0c00], sp
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
    ld c, b
    nop
    ld c, h
    nop
    or b
    nop
    or h
    nop
    db $f4
    nop
    ret nc

    nop
    ld h, b
    nop
    nop
    nop
    ret z

    nop
    jp nz, $c600

    nop
    or $00
    ei
    nop
    reti


jr_02c_6937:
    nop
    db $fc
    nop
    rst $38
    nop
    cp $00
    cp $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_02c_6946:
    rst $38
    rst $38
    adc a
    ld a, a
    rlca
    nop
    ld [hl], b
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    jr z, jr_02c_6937

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
    ret nz

    ret nz

    ld bc, $0001
    nop
    ld [bc], a
    ld [bc], a
    inc c
    inc c
    ld [$0308], sp
    inc bc
    nop
    nop
    ld hl, $4021
    ld b, b
    nop
    nop
    jr nc, @+$32

    ld a, b
    ld a, b
    ld a, b
    ld a, b
    db $fd
    db $fd
    ld a, $3e
    db $f4
    rst $30
    db $f4
    rst $30
    ld hl, sp-$05
    add sp, -$15
    ret z

    rrc a
    rrca
    dec c
    dec c
    add c
    ld bc, $2020
    jr @+$1a

    add b
    add b
    adc b
    adc b
    ld [$8008], sp
    add b
    nop
    nop
    ld hl, sp-$08
    or b
    or b
    add sp, -$18
    call nz, $e0c4
    ldh [$f0], a
    ldh a, [$f0]
    ldh a, [$b0]
    or b
    ld e, b
    ld e, b
    inc e
    inc e
    ret nz

    ret nz

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
    ld b, c
    nop
    rlca
    nop
    rlca
    nop
    rra
    nop
    dec a
    nop
    sbc a
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    rst $10
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
    nop
    rst $38
    nop
    db $fd
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
    inc c
    inc bc
    ret nz

    nop
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    rst $30
    nop
    rlca
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    ldh a, [rIE]
    rst $38
    ld a, a
    rst $38
    nop
    cpl
    nop
    ld a, a
    nop
    cp a
    nop
    cp a
    nop
    add b
    add b
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
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld h, b
    ld h, b
    inc bc
    inc bc
    add hl, bc
    add hl, bc
    ld sp, $2131
    ld hl, $0908
    ld bc, $8301
    add e
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
    jr nz, jr_02c_6abc

jr_02c_6abc:
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
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

jr_02c_6ba6:
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
    rst $08
    ccf
    inc bc
    nop
    jr c, jr_02c_6ba6

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

Jump_02c_6bff:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr jr_02c_6cc6

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

jr_02c_6cc6:
    ld e, a
    inc bc
    rrca
    inc bc
    cp a
    ld bc, $bf41
    nop
    rst $38
    jr nz, jr_02c_6cf3

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

jr_02c_6cf3:
    nop
    nop
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
    jr nc, jr_02c_6d93

    db $10
    rra
    ld [$010f], sp
    ld c, $12
    dec e
    inc e
    dec de
    jr nc, @+$21

    jr nz, jr_02c_6dc1

    jr nz, jr_02c_6dc3

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

jr_02c_6d93:
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

jr_02c_6dc1:
    cp a
    nop

jr_02c_6dc3:
    ccf
    add b
    rra
    ret nz

    rra
    ldh [rTAC], a
    jr jr_02c_6dd3

    nop
    add a
    nop
    db $e3
    nop
    nop
    nop

jr_02c_6dd3:
    nop
    nop
    nop
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

Jump_02c_6def:
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
    jr jr_02c_6e19

jr_02c_6e19:
    ccf
    jp $c0ff


    rst $38
    ldh [rIE], a
    jr c, jr_02c_6e69

    rlca
    ld [$0201], sp
    ld [hl], b
    add c
    adc a
    nop
    ld bc, $0002
    inc bc
    nop
    jr c, jr_02c_6e31

jr_02c_6e31:
    jr jr_02c_6e33

jr_02c_6e33:
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
    jr nz, jr_02c_6e5b

jr_02c_6e5b:
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

jr_02c_6e69:
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
    jr nz, jr_02c_6eeb

jr_02c_6eeb:
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
    jr c, jr_02c_6f02

jr_02c_6f02:
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
    nop
    add e
    inc bc
    inc c
    inc b
    jr jr_02c_6f23

    ld [hl], b
    nop
    ccf
    nop
    inc d
    nop
    nop
    nop

jr_02c_6f23:
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    jr nz, jr_02c_6f2d

jr_02c_6f2d:
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

jr_02c_6f8e:
    inc c
    ld [de], a
    ld [$0004], sp
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    jr c, jr_02c_6f9d

jr_02c_6f9d:
    inc e
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    cp $80
    ld a, h
    nop
    ld a, [hl]
    nop
    ld e, $00
    adc [hl]
    ld [$3f14], sp
    db $e3
    rst $38
    ldh a, [$7f]
    ldh a, [$3f]
    rst $20
    cp e
    srl c
    reti


    jr nc, jr_02c_6f8e

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

jr_02c_7066:
    nop
    nop

jr_02c_7068:
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
    jr nc, jr_02c_7081

jr_02c_7081:
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
    jr nc, jr_02c_70e2

jr_02c_70e2:
    jr nz, jr_02c_70e4

jr_02c_70e4:
    jr nc, jr_02c_7066

    jr nz, jr_02c_7068

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
    jr jr_02c_719c

    jr jr_02c_719e

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

jr_02c_719c:
    inc bc
    inc bc

jr_02c_719e:
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
    jr jr_02c_71ce

    db $10
    dec d
    db $10
    scf
    jr nc, jr_02c_71f4

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

jr_02c_71ce:
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

jr_02c_71f4:
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
    jr jr_02c_724e

    db $10
    db $10
    db $10
    db $10
    inc sp
    inc sp
    ld sp, $2e31
    ld l, $20
    jr nz, jr_02c_7283

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

jr_02c_724e:
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
    jr nz, jr_02c_7262

jr_02c_7262:
    ld [$1800], sp
    nop
    inc c
    nop
    jr nc, jr_02c_726a

jr_02c_726a:
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

jr_02c_7283:
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

    jr nz, jr_02c_7354

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
    jr nc, jr_02c_734e

jr_02c_734e:
    jr nc, jr_02c_7350

jr_02c_7350:
    inc b
    nop
    inc c
    nop

jr_02c_7354:
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
    ldh a, [$fc]
    push hl
    db $fd
    db $e4
    db $fc
    jp $cfff


    rst $38
    db $dd
    db $fd
    sub c
    pop af
    add b
    ldh [$b7], a
    rst $30
    rst $38
    rst $38
    add a
    add a
    ld c, a
    rst $08
    rst $18
    rst $18
    ld a, e
    ei
    or c
    pop af
    cp l
    cp l
    cp [hl]
    cp [hl]
    ccf
    ccf
    ld hl, $0021
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
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    add d
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    ld b, e
    ld b, e
    ld e, a
    ld e, a
    rst $18
    rst $18
    or a
    or a
    ldh a, [$f0]
    ld [hl], h
    ld [hl], h
    ld h, b
    ld h, b
    ld a, b
    ld a, b
    inc c
    inc c
    add b
    add b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    ld e, b
    ld e, b
    and [hl]
    and [hl]
    ld h, d
    ld h, d
    ld b, b
    ld b, b
    ld a, [bc]
    ld a, [bc]
    inc b
    inc b
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
    ld a, [bc]
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
    ld bc, $1300
    nop
    rlca
    nop
    rra
    nop
    ccf
    nop
    ei
    nop
    db $fd
    nop
    ld a, l
    nop
    db $f4
    nop
    db $fc
    nop
    add sp, $00
    cp $00
    ret c

    nop
    ldh a, [rP1]
    db $fc
    nop
    rst $30
    nop
    cp $00
    db $ec
    nop
    ld [$d400], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    jp $ff3f


    nop
    rrca
    ldh a, [rP1]
    rst $38
    ld d, b
    rst $38
    ld e, b
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add b
    rst $38
    add d
    rst $38
    db $f4
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld [$fcff], sp
    rst $38
    ld bc, $0001
    ld bc, $0302
    ld e, h
    ld e, a
    call z, $f8ff
    rst $38
    push af
    rst $30
    ld hl, sp-$01
    rst $38
    rst $38
    jp $97c3


    sub a
    db $ed
    db $ed
    rst $30
    rst $30
    ei
    ei
    cp c
    cp c
    ld a, b
    ld a, b
    ld sp, hl
    ld sp, hl
    dec bc
    dec bc
    sub [hl]
    sub [hl]
    rra
    rra
    dec de
    dec de
    inc bc
    inc bc
    inc hl
    inc hl
    inc hl
    inc hl
    ld [hl], e
    ld [hl], e
    ld a, a
    ld a, a
    dec de
    rra
    inc de
    rra
    and a
    cp a
    and e
    cp a
    rst $38
    rst $38
    rst $18

jr_02c_74bf:
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    jr c, jr_02c_74bf

    or $ff
    rst $38
    rst $38
    ret nz

    ret nz

    pop hl
    pop hl
    add $c6
    call nz, $ccc4
    call z, $dcdc
    ld h, c
    pop hl
    add c
    add c
    nop
    nop
    ld [$0000], sp
    nop
    jr nz, jr_02c_74e2

jr_02c_74e2:
    nop
    nop
    db $10
    db $10
    inc b
    inc b
    add b
    add b
    nop
    nop
    db $10
    db $10
    ld [hl], $36
    inc e
    inc e
    adc h
    adc h
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    nop
    add sp, $00
    xor b
    nop
    or b
    nop
    nop
    nop
    ld b, b
    nop
    jr nz, jr_02c_7514

jr_02c_7514:
    ret nz

    nop
    ld [bc], a
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    ld de, $0400
    nop
    nop
    nop
    ld [bc], a
    nop
    jr nz, jr_02c_7528

jr_02c_7528:
    jr nc, jr_02c_752a

jr_02c_752a:
    stop
    inc b
    nop
    call $8700
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
    rst $38
    rst $38
    rst $38
    sbc a
    ld a, a
    cp $01
    rst $38
    nop
    ld bc, $2efe
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    dec bc
    rst $38
    nop
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
    add b
    nop
    add b
    nop
    nop
    ret nz

    rst $38
    inc d
    rla
    call c, $f4df
    rst $30
    adc b
    adc a
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    nop
    ldh a, [rP1]
    jp hl


    nop
    rst $18
    nop
    rst $00
    nop
    add [hl]
    nop
    ret z

    nop
    ld e, c
    nop
    rlca
    add e
    rst $38
    inc b
    rst $38
    xor [hl]
    rst $28
    rst $30
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    adc a
    rst $38
    add a
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rst $30
    rst $30
    rst $28
    rst $28
    ld l, [hl]
    ld l, [hl]
    ld a, [hl]
    ld a, [hl]
    rrca
    rrca
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    ei
    ei
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    jr nz, jr_02c_75e6

    ld b, h
    ld b, h
    jr z, jr_02c_75f2

    ld b, b
    ld b, b
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    db $10
    stop
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

jr_02c_75e6:
    nop
    nop
    inc bc
    nop
    ld c, a
    nop
    rra
    nop
    ld c, $00
    inc c
    nop

jr_02c_75f2:
    ccf
    nop
    dec a
    nop
    inc c
    nop
    ld [$1d00], sp
    nop
    rrca
    nop
    ld h, a
    nop
    ld a, [$fa00]
    nop
    ld a, c
    nop
    rrca
    nop
    cpl
    nop
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
    ld a, a
    rst $38
    pop af
    rrca
    rst $38
    nop
    add c
    cp $7f
    rst $38
    rra
    rst $38
    ld b, c
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld [hl], a
    rst $38
    cp l
    rst $38
    rla
    rst $38
    nop
    ld bc, $0302
    inc b
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
    ld b, $06
    ld b, $06
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    dec b
    dec b
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $11
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_02c_7679

    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $1a
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_02c_7690

    ld [hl+], a
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $23
    inc h

jr_02c_7679:
    dec h
    ld h, $27
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $00
    inc l
    dec l
    ld l, $2f
    jr nc, jr_02c_76c1

jr_02c_7690:
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $38
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    dec a
    ld a, $3a
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ccf

jr_02c_76c1:
    ccf
    ccf
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld c, l
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, b
    ld c, b
    ld c, b
    ld c, b
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
    ld a, [hl-]
    ld c, b
    ld c, b
    ld c, b
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
    ld c, b
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
    ld c, b
    ld c, b
    ld c, b
    ld c, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec b
    nop
    nop
    ld [bc], a
    rlca
    ld bc, $0601
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    nop
    ld [bc], a
    rlca
    ld bc, $0601
    inc bc
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
    rlca
    dec b
    ld b, $02
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
    rlca
    ld bc, $0601
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
    dec b
    dec b
    ld bc, $0301
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
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $03
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    inc b
    ld bc, $0101
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
    nop
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    inc b
    ld bc, $0101
    ld bc, $0101
    dec b
    dec b
    dec b
    dec b
    dec b
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    dec b
    dec b
    ld b, $06
    dec b
    dec b
    nop
    nop
    nop
    nop
    inc b
    ld bc, $0101
    ld bc, $0501
    ld b, $06
    ld b, $06
    ld b, $00
    nop
    nop
    nop
    inc b
    ld bc, $0101
    ld bc, $0101
    dec b
    ld b, $03
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0601
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld sp, hl
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
    ld b, $ff
    ld [bc], a
    rst $38
    ld bc, $02fe
    db $fd
    ld bc, $01fe
    cp $02
    db $fd
    inc bc
    db $fc
    inc bc
    cp $03
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00fe
    rst $38
    ld bc, $01fe
    cp $01
    cp $01
    cp $01
    cp $00
    rst $38
    nop
    cp $00
    cp $00
    cp $00
    rst $38
    inc bc
    rst $38
    cp $03
    cp $03
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
    cp $03
    cp $01
    rst $38
    ld bc, $01ff
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    inc bc
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    db $ec
    db $fc
    db $f4
    db $fc
    or $fe
    or $fe
    rst $38
    cp $ff
    rst $38
    pop af
    rst $38
    add e
    db $fd
    ld [hl], a
    add b
    cp h
    inc bc
    db $e3
    inc e
    rra
    ldh [rIE], a
    nop
    rst $38
    ld bc, $01ff
    cp a
    ld c, e
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    ld [c], a
    ret nz

    jp nz, Jump_000_3280

    nop
    ld [de], a
    nop
    or d
    nop
    ldh [rTAC], a
    ld b, b
    rra
    add b
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    ld bc, $0f01
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    db $fc
    rrca
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [rNR32], a
    db $e3
    nop

jr_02c_7a1b:
    rst $38
    nop
    rst $38
    nop
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
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    jr nz, @+$01

    ret nc

    ld a, a
    ret z

    ld a, a
    ret nc

    ld a, a
    add sp, $7f
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    rra
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
    ld b, $fe
    inc b
    db $fc
    inc b
    db $fc
    rrca

jr_02c_7a51:
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    add e
    ld a, a
    add e
    ld a, a
    ld b, e
    ccf
    ld d, e
    ccf
    cp a
    ld a, a
    ret nc

    ccf
    rst $08
    jr nc, @-$2c

    jr nz, jr_02c_7a51

jr_02c_7a69:
    sub a
    rst $20
    sbc b
    rst $38
    add b
    rst $38
    ld b, b
    cp $41
    rst $38
    ld b, c
    db $fd
    inc hl
    cp a
    db $e3
    rst $38
    di
    db $fd
    di
    cp $f1
    ld e, $f1
    cp b
    jr jr_02c_7a1b

    ld [$08c8], sp
    ld h, h
    inc b
    inc b
    inc e
    inc b
    db $fc
    ld [bc], a
    cp $02
    cp $03
    ld [bc], a
    ld bc, $0301
    inc bc
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
    jr c, jr_02c_7a69

    ld [hl], a
    adc b
    ld hl, sp+$07
    push bc
    ld a, [hl-]
    ld a, [bc]
    push af
    inc b
    ei
    ld b, $f9
    inc b
    ei
    ld b, $f9
    nop
    rst $38
    nop
    rst $38
    nop
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
    cp $0f
    ld hl, sp+$1f
    ld a, [c]
    ccf
    ld [c], a
    ld a, a
    jp nz, $83ff

    rst $38
    add a
    ld a, b
    ld a, a
    ld b, b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38

jr_02c_7ade:
    rrca
    rst $38
    ret nz

    ret nz

    ret nz

    ret nz

    jr nz, @-$1e

    and b
    ldh [$a0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [rIE], a
    ldh a, [$2f]
    ldh a, [rVBK]
    jr nc, jr_02c_7ade

    jr jr_02c_7b00

    ld hl, sp-$19
    jr @-$03

    inc b
    ei
    inc b

jr_02c_7b00:
    db $eb
    ld d, $bf
    cp $ff
    cp $ff
    rst $38
    ld sp, hl
    rst $38
    ld [bc], a
    db $fd
    ccf
    ret nz

    db $db
    inc h
    and h
    nop
    inc h
    nop
    nop
    rra
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
    rst $00
    rlca
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
    pop af
    ld c, $8c
    ld [hl], e
    ld d, c
    or d
    ld d, b
    or e
    adc b
    ld a, c
    ld [$18f9], sp
    ld sp, hl
    inc d
    db $fc
    inc b
    db $fc
    inc d
    db $fc
    ld [bc], a
    cp $02
    cp $02
    cp $1f
    rst $38
    ld a, a
    pop af
    rst $38
    add c
    rst $38
    ld bc, $41ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    ccf
    rst $08
    ld a, a
    rlca
    rst $38
    nop
    cp $00
    ldh a, [$38]
    ld hl, sp+$7e
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $30
    rst $30
    jp $bfc3


    ld b, b
    cp a
    ld b, b
    ccf
    ld b, b
    rra

jr_02c_7b77:
    nop
    rrca
    nop
    rrca
    nop
    rrca
    rrca
    ld a, a
    ld a, a
    dec b
    ld a, [$f609]
    rla
    add sp, $3f
    ret nz

    ld e, a
    and b
    ld a, h
    add e
    ldh [$1f], a
    jr jr_02c_7b77

    cp b
    ld b, a
    sbc b
    ld h, a
    ld [$10f7], sp
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
    ld a, a
    ld b, b
    ld a, a
    ld a, b
    ccf
    ld a, $07
    ccf
    ld bc, $003f
    ccf
    ccf
    sbc h
    sbc a
    sbc [hl]
    sbc a
    sbc [hl]
    sbc a
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $20
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    pop af
    rst $38
    ld sp, hl
    rst $38

jr_02c_7bcf:
    ld sp, hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$c0], a
    jr nc, jr_02c_7bcf

    nop
    ldh a, [$08]
    ld hl, sp+$04
    db $fc
    ld [bc], a
    ld sp, hl
    rlca
    add l
    ld a, e
    ld a, l
    add e
    ld a, l
    add e
    cp l
    ld b, e
    ld a, $c1
    ld a, $c1
    ld a, $c1
    inc e
    db $e3
    inc e
    db $e3
    inc c
    di
    inc c
    di
    inc c
    di
    inc b
    ei
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
    inc b
    ei
    nop
    rst $38
    cp $fe
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    cp $ff
    ld a, a
    ld a, a
    ld b, e
    ld b, e
    ld a, $3e
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    rra
    rra
    scf
    scf
    rst $38
    ld bc, $07ff
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
    inc bc
    inc bc
    rla
    rla
    ld e, a
    ld e, a
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
    cp a
    cp a
    rra
    sbc a
    rra
    sbc a
    ld e, a
    rst $18
    rra
    sbc a
    sbc a
    sbc a
    rst $08
    rst $08
    ld [hl], a
    ld [hl], a
    ld [hl], e
    ld [hl], e
    cp e
    cp e
    cp e
    cp e
    ei
    ei
    rst $30
    rst $30
    rst $30
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
    inc bc
    rst $38
    rra
    nop
    nop
    nop
    nop
    ld bc, $0401
    inc b
    add hl, de
    add hl, de
    rrca
    rrca
    ld a, a
    ld a, a
    rst $38
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
    ldh [$60], a
    db $fc
    ld a, h
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ccf
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    ccf
    ld a, a
    ld c, a
    ld a, a
    rrca
    ld a, a
    cpl
    ld a, a
    cpl
    ld a, a
    daa
    ld a, a
    daa
    ld a, a
    daa
    ld a, a
    daa
    ld a, a
    daa
    ld a, a
    daa
    ld a, a
    daa
    ld a, a
    daa
    ld a, a
    cpl
    ld a, a
    cpl
    ld a, a
    cpl
    ld a, a
    scf
    ld a, a
    cpl
    ld a, a
    scf
    ld a, a
    ld l, a
    ld a, a
    cpl
    ld a, a
    scf
    ld a, a
    ld a, a
    ld a, a
    daa
    ld a, a
    scf
    ld a, a
    ld l, a
    ld a, a
    scf
    ccf
    ccf
    ccf
    scf
    ccf
    daa
    ccf
    scf
    ccf
    cpl
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    scf
    ccf
    ccf
    ccf
    ccf
    ccf
    scf
    ccf
    scf
    ccf
    scf
    ccf
    ld a, a
    ccf
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
    ld b, b
    ld b, b
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
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
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld hl, sp-$08
    rst $30
    rst $38
    ld [$f9ff], a
    rst $38
    cp $ff
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
    di
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
    rst $38
    rst $38
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
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
    cp $fe
    cp $fe
    nop
    nop
    rra
    jr nz, jr_02c_7dc2

    ld [hl+], a
    rra
    inc hl
    rra
    inc hl
    rra
    inc hl
    inc a
    inc hl
    inc a
    inc hl
    ret z

    rst $30
    ld l, $f5
    ld l, $f5
    ld a, [bc]
    push af
    ld [$48f7], sp
    rst $30
    inc c
    rst $30
    ld c, [hl]
    push af
    ld l, [hl]
    push af

jr_02c_7dc2:
    ld l, [hl]
    push af
    ld l, $f5
    ld a, [hl-]
    push hl
    ld a, [hl+]
    push af
    ld h, h
    ei
    dec hl
    push af
    ld h, h
    ei
    pop hl
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    ld l, e
    rst $38
    ld l, e
    rst $38
    or $ff
    xor $ff
    ldh a, [rIE]
    ld sp, hl
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    ld a, h
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    adc a
    rst $38
    add e
    rst $38
    add e
    rst $38
    and b
    rst $18
    sub b
    rst $28
    call c, $e7e3
    ld hl, sp-$1b
    ld hl, sp-$0d
    db $fc
    cp e
    db $fc
    cp a
    ld hl, sp-$41
    ld hl, sp-$45
    db $fc
    cp e
    db $fc
    sbc l
    ld a, [$ffb0]
    cp d
    db $fd
    or d
    db $fd
    cp d
    db $fd
    cp b
    rst $38
    cp b
    rst $38
    or b
    rst $38
    cp b
    rst $38
    cp b
    rst $38
    or b
    rst $38
    cp b
    rst $38
    cp b
    rst $38
    cp b
    rst $38
    cp b
    rst $38
    cp b
    rst $38
    cp b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    cp b
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    ld a, a
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $38

jr_02c_7e47:
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
    rst $38
    nop
    sbc a
    ldh [$f1], a
    cp $ff
    rst $38
    ld e, a
    rst $38
    jr jr_02c_7e47

    dec c
    ld a, [c]
    adc l
    ld a, [c]
    jp $88fc


    rst $38
    dec bc
    rst $38
    ld de, $14ef
    db $eb
    db $10
    rst $28
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
    nop
    rst $38
    ld c, b
    rst $38
    and b
    rst $38
    add b
    rst $38
    add b
    rst $38
    jr nz, @+$01

    and b
    rst $38
    and b
    rst $38
    jp nz, Jump_000_28ff

    rst $38
    ld [bc], a
    rst $38
    cp c
    rst $08
    add sp, -$09
    db $f4
    ei
    db $fd
    cp $ff
    rst $38
    dec sp
    rst $38
    ld c, $ff
    rlca
    rst $38
    ld bc, $00ff
    rst $38
    and b
    ld a, a
    nop
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld hl, $24ff
    rst $38
    ld hl, $23ff
    rst $38
    ld hl, $23ff
    rst $38
    inc bc
    rst $38
    dec b
    rst $38
    rla
    rst $38
    inc d
    rst $38
    ld c, $fe
    db $10
    db $fc
    ld [$10f8], sp
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rLCDC]
    ldh [rSTAT], a
    pop hl
    ld b, e
    db $e3
    ld b, e
    db $e3
    ld b, e
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    push hl
    rst $20
    push hl
    rst $20
    push hl
    rst $20
    rst $28
    rst $28
    rst $28
    rst $28
    db $eb
    rst $28
    set 1, a
    set 1, a
    jp $cfcf


    rst $08
    adc a
    adc a
    sub e
    sbc a
    rla
    rra
    rla
    rra
    cp a
    cp a
    xor a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
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
    ccf
    ret nz

    di
    db $fc
    rst $38
    rst $38
    sbc a
    ld a, a
    rst $18
    inc hl
    ld e, [hl]
    and c
    ld a, a
    add b
    dec e
    ld [c], a
    sbc l
    ld [c], a
    ld e, $e1
    dec e
    ld [c], a
    dec e
    ld [c], a
    inc e
    db $e3
    dec e

Jump_02c_7f35:
    ld [c], a
    dec e
    ld [c], a
    dec e
    ld [c], a
    add hl, sp
    add $19
    and $19
    and $09
    or $09
    or $09
    or $49
    and [hl]
    add hl, bc
    ld [c], a
    ld [$08f3], sp
    rst $30
    ld a, [hl+]
    rst $30
    ld d, d
    db $fd
    sub h
    rst $38
    ld [hl], h
    rst $38
    ld a, h
    rst $38
    inc a
    rst $38
    ld a, h
    rst $38
    db $fc
    rst $38
    call c, $bcff
    rst $38
    ld a, h
    rst $38
    ld hl, sp+$7f
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, [hl]
    ld sp, hl
    sbc l
    cp $ef
    rst $38
    ld [hl], e
    rst $38
    dec a
    rst $38
    adc [hl]
    rst $38
    add e
    rst $38
    add c
    rst $38
    add c
    rst $38
    ld [bc], a
    cp $00
    db $fc
    add h
    db $fc
    add b
    ldh a, [rNR42]
    pop hl
    add e
    add e
    inc bc
    add e
    rlca
    rlca
    inc c
    inc c
    inc c
    inc c
    jr jr_02c_7faa

    jr nc, jr_02c_7fc4

    ld [hl], b
    ld [hl], b
    ldh [$e0], a
    ldh [$e0], a
    pop bc
    pop bc
    jp $c1c0


    jp $e6e3


    ei
    cp $ff
    cp $45
    adc $c7
    rst $08

jr_02c_7faa:
    rst $00
    rst $08
    rst $10
    rst $18
    ld d, $9f
    add $cf
    sbc $df
    adc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    ccf
    ccf
    sbc [hl]
    sbc a
    ld a, $3f
    cp h
    cp a
    ld hl, sp-$01

jr_02c_7fc4:
    ld hl, sp-$01
    ldh a, [rIE]
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    inc a
    ret nz

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
    rst $38
    nop
    ld a, a
    add b
    rst $30
    ld hl, sp-$02
    rst $38
    rst $38
    ccf
    db $d3
    cpl
    sub a
    ld l, b
    sub a
    ld l, b
    add a
    ld a, b
    add [hl]
    ld a, c
    add b
    ld a, a
    add d
    ld a, a
    ret nz

    ccf
    and b
    ld e, a
    pop bc
    ld a, $a4
    ld e, e
    ret nc

    cpl
    ld d, d
    xor l
