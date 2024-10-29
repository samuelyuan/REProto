SECTION "ROM Bank $034", ROMX[$4000], BANK[$34]

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
    ld bc, $0301
    inc bc
    rrca
    rrca
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    ld [hl], a
    rst $38
    ld [hl], e
    rst $38
    ld a, e
    rst $38
    ld a, e
    rst $38
    ld a, e
    rst $38
    ld a, e
    rst $38
    ld a, a
    rst $38
    ei
    rst $38
    ei
    rst $38
    dec sp
    rst $38
    dec sp
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
    rst $38
    cp a
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
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
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
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$60], a
    cp $7e
    rst $38
    ld a, a
    rst $38
    ld h, a
    rst $38
    ld l, b
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    cpl
    ld a, a
    cpl
    ld a, a
    cpl
    ld a, a
    cpl
    ld a, a
    cpl
    ld a, a
    cpl
    ld a, a
    daa
    ld a, a
    jr c, jr_034_4131

    ccf
    ld a, a
    daa
    ld a, a
    jr z, jr_034_4137

    cpl
    ld a, a
    cpl
    rst $38
    xor a
    ld a, a
    xor a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$e0], a
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
    ld bc, $0301
    inc bc
    inc c
    inc c
    jr jr_034_40fa

    jr nc, jr_034_4114

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
    ld bc, $0301
    inc bc
    rrca
    rrca
    ccf
    ccf
    ld a, a
    ld a, a

jr_034_40fa:
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    ldh a, [$f8]
    ret nz

    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp-$08
    rst $38
    ld hl, sp-$01

jr_034_4114:
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
    ld hl, sp-$01
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38

jr_034_4131:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_034_4137:
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38

Jump_034_413d:
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
    rst $38
    db $fc
    rst $38
    db $fc
    cp $00
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
    cp $01
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
    nop
    nop
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
    cp $fe
    rst $38
    rst $38
    rst $38
    add a
    rst $38
    cp b
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
    cp a
    rst $38
    add a
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    add a
    rst $38
    cp b
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ldh [$e0], a
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
    ld bc, $0301
    inc bc
    ld c, $0e
    jr jr_034_41ee

    jr nc, jr_034_4208

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
    ld bc, $0301
    inc bc
    rrca
    rrca
    ccf
    ccf

jr_034_41ee:
    ld a, a
    ld a, a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_034_4208:
    nop
    rst $38
    inc c
    rst $38
    ld e, $ff
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
    ld a, a
    rst $38
    ld a, a
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

Jump_034_423c:
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

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    ret nz

    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$bf], a
    jr nz, @+$01

    jr nz, jr_034_42ea

    ldh [$3f], a
    ldh [$3f], a
    ldh [rP1], a
    nop
    ld bc, $0301
    inc bc
    ld c, $0e
    jr jr_034_42d2

    jr nc, jr_034_42ec

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
    ld bc, $0301
    inc bc
    rrca
    rrca

jr_034_42d2:
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
    cp $fe
    ld hl, sp-$08
    ret nz

    rst $38
    add b
    rst $38
    add c
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38

jr_034_42ea:
    rst $38
    rst $38

jr_034_42ec:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ret nz

    cp $c1
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
    rra
    rra
    nop
    rst $38
    ld [$08ff], sp
    rst $38
    ld a, [bc]
    rst $38
    dec c
    rst $38
    add hl, bc
    rst $38
    add hl, de
    rst $38
    inc a
    rst $38
    nop
    jp $8100


    nop
    add c
    nop
    add c
    nop
    jp $ff00


    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $0202
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
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
    ld [bc], a
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0202
    ld [bc], a
    ld [bc], a
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_034_43b1

    inc de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_034_43c2

    ld [hl+], a
    inc de
    inc de
    inc de
    inc de
    inc de
    inc d
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_034_43d8

    ld a, [hl+]
    dec hl

jr_034_43b1:
    inc l
    dec l
    ld l, $13
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    cpl
    jr nc, jr_034_43f0

    ld [hl-], a
    inc sp
    inc [hl]

jr_034_43c2:
    dec [hl]
    ld [hl], $37
    jr c, jr_034_43da

    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    inc de

jr_034_43d8:
    inc de
    inc de

jr_034_43da:
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de

jr_034_43f0:
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
    ld [hl+], a
    inc de
    inc de
    inc de
    inc de

Jump_034_4400:
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
    inc de
    inc de
    inc de
    inc de
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
    inc de
    inc de
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
    inc de
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


    jp z, Jump_000_05cb

    dec b
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
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0501
    inc bc
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
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0003
    nop
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
    inc bc
    inc bc
    inc bc
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
    inc bc
    inc bc
    inc bc
    ld b, $00
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
    dec b
    inc bc
    inc bc
    ld b, $00
    nop
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc bc
    inc bc
    nop
    nop
    nop
    ld b, $06
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld b, $06
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $01
    ld bc, $0002
    nop
    nop
    nop
    nop
    ld b, $06
    ld b, $00
    nop
    nop
    nop
    ld b, $04
    ld bc, $0202
    nop
    nop
    nop
    nop
    nop
    ld b, $03
    inc bc
    nop
    nop
    nop
    nop
    ld b, $03
    ld bc, $0002
    nop
    nop
    nop
    nop
    nop
    ld b, $04
    inc bc
    ld [bc], a
    nop
    nop
    nop
    inc b
    dec b
    ld bc, $0002
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    ld [bc], a
    nop
    nop
    nop
    ld b, $05
    ld bc, $0201
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
    rrca
    nop
    ld bc, $0100
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    cp $fe
    cp $fe
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
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
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
    ld bc, $0100
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

    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$fc]
    ldh a, [$fc]
    ldh a, [$fc]
    ldh a, [$fc]
    ldh a, [$fc]
    ldh a, [$fc]
    ld hl, sp-$04
    ld hl, sp-$02
    ld hl, sp-$02
    ld hl, sp-$02
    ld hl, sp-$02
    ld hl, sp-$02
    ld hl, sp-$02
    ld hl, sp-$02
    ld hl, sp-$02
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

Call_034_46c4:
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
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
    db $fc
    inc bc
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    adc b
    rst $30
    adc b
    rst $30
    adc h
    di
    adc h
    di
    adc h
    di
    add h
    ei
    add [hl]
    ld sp, hl
    add $f9
    add $f9
    add $f9
    rst $00
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$1d
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    di
    db $fc
    pop af
    cp $f1
    cp $f1
    cp $f1
    cp $f1
    cp $f1
    cp $f9
    cp $fe
    ld hl, sp-$02
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$7f
    db $fc
    ld a, a
    db $fc
    add b
    db $fc
    add b
    db $fc
    add b
    db $fc
    add b
    db $fc
    add b
    db $fc
    add b
    cp $c0
    cp $c0
    cp $c0
    cp $c0
    cp $c0
    cp $c0
    cp $c0
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    db $fc
    rst $38
    db $fc
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
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    ld a, h
    inc bc
    ld a, h
    inc bc
    ld a, [hl]
    ld bc, $017e
    ld a, $01
    ld a, $01
    ld a, $01
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
    ld a, [hl]
    add c
    ld a, [hl]
    add c
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

    jr nc, @+$01

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
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
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
    ld hl, sp+$07
    ld a, b
    rlca
    ld a, b
    rlca
    ld a, b
    rlca
    ld a, b
    rlca
    inc a
    inc bc
    inc a
    inc bc
    inc a
    inc bc
    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    db $10
    ldh a, [rP1]
    nop
    nop
    nop
    add b
    add b
    add b
    add a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    pop af
    cp $f8
    rst $38
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
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
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
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
    rst $00
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $00
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
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    adc l
    di
    cp l
    jp $c3bd


    cp l
    jp Jump_034_423c


    inc e
    ld h, d
    ld [$0035], sp
    ld hl, sp+$00
    ldh a, [$60]
    ldh a, [$e0]
    ld hl, sp+$70
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    rst $38
    ld [hl], b
    rst $38
    dec sp
    rst $38
    dec sp
    rst $38
    dec e
    rst $38
    dec e
    rst $38
    ld c, $ff
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
    ei
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    adc h
    rst $38
    adc h
    rst $38
    adc h
    rst $38
    adc h
    rst $38
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    rst $00
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    ld b, a
    ld a, a
    ret nz

    ld hl, sp+$00
    jr c, jr_034_49df

jr_034_49df:
    jr c, jr_034_49e1

jr_034_49e1:
    jr c, jr_034_49e3

jr_034_49e3:
    jr c, jr_034_49e5

jr_034_49e5:
    jr c, jr_034_49e7

jr_034_49e7:
    jr c, jr_034_49e9

jr_034_49e9:
    jr c, jr_034_49eb

jr_034_49eb:
    jr c, jr_034_49f0

    dec sp
    rlca
    ccf

jr_034_49f0:
    rlca
    ccf
    rlca
    ld a, a
    nop
    ld hl, sp-$10
    ld hl, sp-$20
    rst $38
    ldh [rIE], a
    rst $20
    rst $38
    rst $20
    rst $38
    jr @+$01

    sbc b
    rst $38
    sbc b
    rst $38
    ld a, a
    rst $38
    ld a, b
    ld hl, sp+$3f
    rst $38
    rst $38
    rst $38
    jp $87c3


    add a
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    ldh [$e0], a
    ldh [$e0], a
    db $e3
    db $e3
    ld a, a
    rst $38

jr_034_4a22:
    rra
    sbc a
    rra
    rst $18
    rra
    rst $38
    jr jr_034_4a22

    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$03
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
    ld sp, $31ff
    rst $38
    ld sp, $20ff
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    ldh [rIE], a
    db $fc
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
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
    rlca
    ld a, a
    rst $38
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    db $fc
    db $fc
    nop
    nop
    nop
    inc bc
    nop
    rst $38
    rlca
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ccf
    rst $38
    cp $fe
    ld a, a
    ld a, a
    pop af
    pop af
    ldh [$e0], a
    rst $20
    rst $20
    rst $38
    rst $38
    rra
    rra
    rrca
    rrca
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    pop bc
    pop bc
    ret nz

    ret nz

    ldh [$e0], a
    rst $38
    rst $38
    ccf
    ccf
    rra
    rra
    rra
    rra
    rrca
    rrca
    nop
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    rlca
    rst $00
    rlca
    rst $20
    ld c, $ee
    ld c, $fe
    ld c, $fe

jr_034_4aca:
    rrca
    rst $38

jr_034_4acc:
    ld c, $fe

jr_034_4ace:
    ld e, $fe

jr_034_4ad0:
    ld e, $fe
    ld e, $fe
    ld e, $ff
    ld e, $ff
    ld e, $ff
    ld e, $ff
    inc c
    rst $38

jr_034_4ade:
    nop
    rst $38
    nop
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
    ld bc, $c0ff
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld b, b
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    jp $c1c2


    jp nc, $d3c1

    ret z

    rst $10
    ret z

    rst $00
    ret c

    rst $20
    ret c

    rst $20
    sbc b
    jr nc, jr_034_4aca

    jr nc, jr_034_4acc

    jr nc, jr_034_4ace

    or b
    cp b
    and b
    or b
    jr nz, jr_034_4acc

    jr nz, jr_034_4ace

    jr nz, jr_034_4ad0

    jr nz, jr_034_4b52

    jr z, jr_034_4b5c

    jr z, jr_034_4ade

    jr z, jr_034_4b60

    inc e
    inc a
    ld e, $3e
    rra
    ccf
    ld e, a
    ld a, a
    or e
    ld a, a
    cp [hl]
    ld a, [hl]

jr_034_4b34:
    cp [hl]
    ld a, [hl]
    cp a
    ld a, a
    or b
    ld [hl], b
    jr c, jr_034_4b34

    rst $38
    rst $38
    rst $30
    rst $30
    jp $e3c3


    db $e3
    rst $38
    rst $38
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    rst $38
    rst $38
    cp $fe
    cp $fe

jr_034_4b52:
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a

jr_034_4b5c:
    ldh [$e0], a
    di
    di

jr_034_4b60:
    rst $38
    rst $38
    rrca
    rrca
    rrca
    adc a
    rra
    rst $18
    rra
    rst $18
    rra
    rst $38
    rra
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    cp a
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
    inc c
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, d
    rst $38
    ld a, d
    rst $38
    ld a, d
    rst $38
    ld a, h
    rst $38
    ccf
    ccf
    rra
    rra
    rlca
    rlca
    ld bc, $8001
    ld a, a
    ldh [$1f], a
    ld hl, sp+$07
    db $fc
    inc bc
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    inc de
    inc de
    ld de, $1011
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
    ld de, $3100
    nop
    add hl, sp
    nop
    dec a
    ld [$cc37], sp
    di
    di
    rst $38
    ld [hl], e
    ld a, a
    ld a, e
    ld a, a
    di
    di
    ld sp, hl
    ld sp, hl
    rst $38
    rst $38
    di
    di
    pop hl
    pop hl
    di
    di
    rst $38
    rst $38
    add a
    add a
    add a
    add a
    jp $ffc3


    rst $38
    sbc a
    sbc a
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    cp $fe
    cp $fe
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    rst $38
    rst $38
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ldh [$fe], a
    add [hl]
    cp $1c
    db $fc
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
    rst $20
    rst $38
    jp $81ff


    rst $38
    ret nz

    cp $c0
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $28
    rst $28
    rst $20
    rst $20
    rst $20
    rst $20
    jp $c1c3


    pop bc
    add c
    pop bc
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
    rlca
    rst $38
    rlca
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
    ld e, $ff
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
    ld l, a
    rst $38
    ld e, c
    rst $38
    sub a
    rst $38
    sub e
    rst $38
    sub d
    rst $38
    jp nc, $f2ff

    rst $38
    db $fc
    rst $38
    ld a, a
    ld a, a
    rra
    rra
    rlca
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    add b
    nop
    ldh [rNR41], a
    ld hl, sp+$70
    db $fc
    ld a, h
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
    rst $30
    rst $38
    push af
    rst $38
    rst $30
    rst $38
    db $eb
    cp $db
    cp $d7
    cp $ff
    cp $f7
    cp $ff
    db $fc
    rst $30
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    ei
    cp $fd
    rst $38
    ld a, [$f9ff]
    rst $38
    ret z

    rst $08
    ret nz

    rst $00
    ldh [$e3], a
    cp $ff
    rst $08
    rst $08
    add a
    add a
    jp $e3c3


    db $e3
    rst $38
    rst $38
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    add e
    add e
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    rst $38
    rst $38
    cp $fe
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
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
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
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rIF], a
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    add c
    rst $38
    add b
    rst $38
    ccf
    rst $38

jr_034_4d42:
    rra
    rst $38

jr_034_4d44:
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
    add e
    add e
    ld b, c
    pop bc
    jr nz, jr_034_4d42

    jr nz, jr_034_4d44

    db $10
    ldh a, [rNR10]
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$05
    db $fd
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
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    inc sp
    rst $38
    ld c, a
    rst $38
    ld b, e
    rst $38
    ld b, a
    rst $38
    ld b, a
    rst $38
    rst $00
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    rrca
    rrca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ldh [$80], a
    ld hl, sp-$40
    cp h
    ldh a, [$8f]
    ld hl, sp+$07
    ld [$1cff], sp
    db $eb
    ld a, $d5
    ld l, a
    add d
    ld l, a
    add d
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
    ld a, a
    add b
    ccf
    ret nz

    rst $18
    ldh [$b0], a
    ldh [rHDMA1], a
    ldh a, [$2f]
    ld hl, sp+$17
    cp $09
    rst $38
    add [hl]
    rst $38
    pop bc
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    add b
    add a
    ret nz

    jp $e1e0


    ldh a, [$f0]
    rst $38
    rst $38
    rst $20
    rst $20
    inc bc
    inc bc
    add c
    add c
    ret nz

    ret nz

    ldh [$e0], a
    rst $38
    rst $38
    adc a
    adc a
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    add c
    add c
    jp $ffc3


    rst $38
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    ccf
    ccf
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
    rra
    rra
    rra
    rra
    rrca
    rrca
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    cp $fe
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
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    ld a, h
    ld a, a
    ld a, $3f
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
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$fc]
    ldh [$fc], a
    ldh [$fe], a
    ret nz

    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ldh a, [rIE]
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    sbc l
    rst $38
    adc [hl]
    rst $38
    sbc c
    rst $38
    sbc b
    rst $38
    sbc b
    rst $38
    ret c

    rst $38
    ldh a, [rIE]
    db $fd
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rra
    rra
    rlca
    rlca
    ld bc, $0001
    nop
    nop
    nop
    nop
    add b
    ldh [$1f], a
    ld hl, sp+$07
    inc a
    inc bc
    rra
    nop
    rlca
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    nop
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

    cp a
    ldh a, [rVBK]
    ld hl, sp+$27
    db $fc
    dec de
    cp $05
    rst $38
    ld [bc], a
    rst $38
    add c
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    ld a, h
    ld a, a
    ldh [$e1], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    rst $38
    rst $38
    pop af
    pop af
    add c
    add c
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    rst $00
    rst $00
    rst $38
    rst $38
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $7f01
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    cp $ff
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
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    rst $38
    rst $38
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0301
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
    ldh a, [rIE]
    cp $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $28
    rst $38
    di
    rst $38
    call $c3ff
    rst $38
    jp $83ff


    rst $38
    add e
    rst $38
    add [hl]
    rst $38
    and $ff
    cp $ff
    cp $ff
    ld a, a
    ld a, a
    ccf
    ccf
    rrca
    rrca
    inc bc
    inc bc
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
    ld hl, sp-$80
    ld a, [hl]
    rra
    rra
    rrca
    rrca
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
    ldh [$9f], a
    ldh a, [$6f]
    db $fc
    ld de, $08ff
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    ld a, a
    nop
    ccf
    nop
    rra
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    ld a, [hl]
    ld a, a
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    cp $fe
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
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
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
    ccf
    ccf
    rst $38
    rst $38
    ld hl, sp-$08
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
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    rst $38
    rst $38
    inc bc
    add e
    ld bc, $00c1
    ldh [$e0], a
    rra
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
    rlca
    rst $38
    add b
    add b
    ld [hl], b
    ldh a, [$0e]
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
    add b
    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    ld h, a
    rst $38
    dec e
    rst $38
    ld c, $ff
    add hl, de
    rst $38
    jr @+$01

    jr @+$01

    db $10
    rst $38
    or b
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
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
    nop
    rst $38
    ret nz

    ccf
    ldh [$1f], a
    ld hl, sp+$07
    ld a, [hl]
    ld bc, $001f
    rrca
    nop
    inc bc
    nop
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_034_50d8:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$f0]
    nop
    ld hl, sp-$80
    ld a, b
    ret nz

    jr c, jr_034_50d8

    sbc h
    ldh a, [$4e]
    ld hl, sp+$26
    db $fc
    inc de
    cp $09
    rst $38
    ld b, $ff
    ld bc, $00ff
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    nop
    rlca
    nop
    inc bc
    add b
    add c
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ei
    ei
    rst $38
    rst $38
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    nop
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    rst $38
    rst $38
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    add b
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0001
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
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    rra
    rra
    rst $38
    rst $38
    ld a, h
    db $fc
    inc a
    db $fc
    ld a, $fe
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
    ld bc, $00ff
    nop

jr_034_5182:
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr c, jr_034_5182

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
    inc bc
    rst $38
    add e
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rst $18
    rst $38
    ccf
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
    ld a, [hl]
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    ld a, a
    ld a, a
    rra
    rra
    rlca
    rlca
    ld bc, $0001
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
    ld hl, sp-$80
    ld a, [hl]
    ret nz

    ccf
    ldh a, [rIF]
    ld hl, sp+$17
    cp $11
    rra
    jr jr_034_524e

    ld l, [hl]
    sbc [hl]
    rrca
    sbc [hl]
    rrca
    cp $05
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
    cp $01
    ld a, [hl]
    add c
    db $e3
    add b
    ld a, a
    ret nz

    ccf
    ldh [$9f], a
    ldh a, [rVBK]
    db $fc
    inc hl
    cp $19
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    ccf
    ccf
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
    ld a, a
    ld a, a
    ccf
    ccf
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    rst $38
    rst $38

jr_034_524e:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
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
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    nop
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $06
    ld b, $06
    rlca
    ld b, $08
    add hl, bc
    nop
    nop
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    ld b, $06
    ld b, $06
    db $10
    ld b, $11
    add hl, bc
    ld [de], a
    inc de
    ld b, $14
    dec d
    ld d, $17
    jr jr_034_52af

    ld b, $06
    ld b, $19
    ld a, [de]
    add hl, bc

jr_034_52af:
    add hl, bc
    dec de
    inc e
    ld b, $06
    dec e
    ld e, $1f
    jr nz, jr_034_52da

    ld b, $22
    inc hl
    inc h
    dec h
    add hl, bc
    add hl, bc
    ld h, $27
    ld b, $06
    jr z, jr_034_52ef

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_034_52ff

    add hl, bc
    add hl, bc
    ld [hl-], a
    inc sp
    inc [hl]
    ld b, $06
    dec [hl]
    ld [hl], $37
    jr c, jr_034_52e0

jr_034_52da:
    ld b, $39
    ld b, $3a
    add hl, bc
    add hl, bc

jr_034_52e0:
    dec sp
    inc a
    dec a
    ld a, $3e
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    add hl, bc

jr_034_52ef:
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
    ld d, c
    ld d, c
    ld d, d
    add hl, bc
    add hl, bc

jr_034_52ff:
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
    add hl, bc
    ld b, a
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld b, $68
    ld l, c
    ld l, d
    ld e, [hl]
    ld l, e
    ld l, h
    add hl, bc
    ld d, e
    ld d, c
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld b, $06
    jr c, jr_034_5331

    rlca
    ld de, $7447
    ld [hl], l
    db $76

jr_034_5331:
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld b, $7d
    ld a, [hl]
    ld e, [hl]
    ld a, a
    add hl, bc
    add b
    ld [hl], e
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
    ld h, $8e
    ld b, $06
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
    ld b, $9d
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    and h
    ld b, $a5
    and [hl]
    ld d, c
    and a
    xor b
    xor c
    xor c
    xor d
    ld b, $06
    ld b, $06
    xor e
    xor h
    xor l
    ld b, $06
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
    sub $51
    rst $10
    ret c

    ld b, $d9
    jp c, $dcdb

    cp a
    db $dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $06
    rst $20
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [rSB]
    ld bc, $0501
    inc bc
    inc bc
    dec b
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
    dec b
    inc bc
    inc bc
    dec b
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    ld [bc], a
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
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    inc bc
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    inc bc
    inc bc
    ld bc, $0301
    inc bc
    inc bc
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
    inc bc
    inc bc
    ld b, e
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
    inc b
    dec b
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
    inc b
    dec b
    dec b
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
    inc b
    inc b
    inc bc
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    ld bc, $0303
    ld [bc], a
    nop
    nop
    nop
    nop
    inc b
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    ld bc, $0201
    nop
    nop
    nop
    inc b
    inc b
    inc bc
    dec b
    inc bc
    inc bc
    dec b
    dec b
    inc bc
    inc bc
    ld bc, $0201
    jr nz, jr_034_547c

jr_034_547c:
    nop
    inc b
    inc hl
    inc bc
    dec b
    dec b
    dec b
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    ld bc, $0003
    nop
    ld b, h
    inc b
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
    nop
    inc b
    ld bc, $0201
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0103
    nop
    nop
    ld b, $03
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0503
    inc bc
    ld bc, $0101
    ld bc, $0506
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0505
    dec b
    dec b
    dec b
    ld bc, $0601
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0105
    ld bc, $0101
    ld bc, $0601
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    ld bc, $0105
    ld bc, $0101
    ld bc, $0621
    ld [bc], a
    inc bc
    dec b
    inc bc
    ld bc, $0101
    ld bc, $0105
    ld bc, $0101
    ld bc, $0601
    ld [bc], a
    inc bc
    dec b
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
    nop
    rst $38
    nop
    nop
    ret nz

    adc h
    ldh a, [$60]
    db $fc
    adc b
    rst $38
    ld [c], a
    rst $38
    ld hl, sp-$01
    ld a, $ff
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
    ld a, a
    rst $38
    rra
    rst $38
    jp Jump_000_08ff


    rst $38
    ld bc, $00ff
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    jr z, @-$0e

    ret nc

    ldh [$a0], a
    ret nz

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
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    rrca
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    ret nz

    adc a
    ldh a, [$03]
    db $fc
    add h
    rst $38
    ld c, $ff
    jp $f0ff


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
    rra
    rst $38
    ld h, e
    rst $38
    inc c
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    rlca
    rra
    ld b, $01
    inc bc
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
    ldh a, [rP1]
    nop
    nop
    nop
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
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    ld hl, sp+$07
    ldh [$1f], a
    ret nz

    ccf
    add b
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
    ld hl, sp-$08
    cp $fe
    rra
    rst $38
    add a
    rst $38
    pop af
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
    ld a, a
    rst $38
    sbc a
    rst $38
    inc sp
    rst $38
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, jr_034_56b7

    ld b, $07
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
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    rst $18
    ret nz

    ccf
    cp $01
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_034_56b7:
    rst $38
    nop
    ccf
    nop
    rra
    nop
    rlca
    nop
    inc bc
    ld e, $01
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ldh [$e0], a
    db $fc
    db $fc
    ccf
    rst $38
    adc a
    rst $38
    db $e3
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
    ld a, a
    rst $38
    rst $18
    rst $38
    rra
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    ld a, a
    inc c
    rrca
    nop
    ld bc, $ff01
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
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    ccf
    rst $38
    rst $08
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
    db $fc
    nop
    add b
    nop
    nop
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
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
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
    nop
    nop
    nop
    nop
    nop
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
    ld a, h
    db $fc
    rra
    rst $38
    rst $00
    rst $38
    ld sp, hl
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
    rrca
    rst $38
    ld bc, $00ff
    rst $38
    inc c
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, $00
    inc a
    nop
    inc a
    rst $38
    cp h
    ld a, a
    db $fc
    dec sp
    rst $38
    jr c, @+$01

    jr c, @+$01

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
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
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
    ldh a, [rIE]
    nop
    cp $00
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    rrca
    nop
    rlca
    add b
    inc bc
    ret nz

    ld bc, $01f0
    ld hl, sp+$00
    db $fc
    nop
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
    ld a, a
    ld a, a
    rra
    rra
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
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ldh [$e0], a
    ld hl, sp-$08
    ld a, $fe
    rst $08
    rst $38
    pop af
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
    ccf
    rst $38
    rlca
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld b, $87
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
    ld a, a
    nop
    ccf
    nop
    rra
    add b
    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
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
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    rlca
    jr jr_034_5915

    ld b, b
    ld a, a
    jr nz, jr_034_5939

    nop
    rra
    add b
    sbc a
    ldh [$ef], a
    ld a, h
    rst $38
    sbc a
    rst $38
    db $e3
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
    rra
    rst $38
    inc bc

jr_034_5915:
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    nop
    rra
    nop
    rst $38
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra

jr_034_5939:
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld bc, $03fe
    ld hl, sp+$01
    db $fc
    nop
    cp $01
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
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
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    rlca
    rlca
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
    jr c, jr_034_5a00

    ld h, h
    ld a, h
    add [hl]
    cp $07
    rst $38
    rlca
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
    nop
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $c0ff
    rst $38
    db $f4
    rst $38
    ld [hl], $ff
    rst $00
    rst $38
    rst $00
    rst $38
    rst $20
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $20
    rst $38
    scf
    rst $38
    rlca
    rst $38
    ld b, $ff
    ld b, $ff
    ld b, $ff

jr_034_5a00:
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec b
    rst $38
    inc bc
    rst $38
    inc b
    rst $38
    nop
    rst $38
    inc b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07fe
    ld hl, sp+$1f
    ldh [$7f], a
    add b
    rst $38
    nop
    ld h, [hl]
    ld e, c
    sub e
    inc l
    db $db
    inc b
    ld l, c
    ld b, $8c
    inc hl
    ld h, $91
    ld de, $0cca
    pop hl
    ld b, $f0
    inc bc
    ld hl, sp+$01
    db $fc
    nop
    cp $01
    cp $00
    rst $38
    nop
    rst $38
    add b
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
    ld bc, $8001
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    cp $fe
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
    rrca
    rlca
    rlca
    inc bc
    inc bc
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

    ld h, b
    ldh [rNR10], a
    ldh a, [$0c]
    db $fc
    ret nz

    db $fc
    ld h, b
    ld hl, sp-$70
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [rSVBK]
    ldh a, [rNR10]
    ldh a, [rP1]
    ldh a, [$c0]
    ldh a, [$c0]
    ldh [$dc], a
    db $fc
    rst $08
    rst $38
    pop bc
    rst $38
    ret c

    rst $38
    call c, $d3ff
    rst $38
    call c, $deff
    rst $38
    jp $c0ff


    rst $38
    ld b, b
    rst $38
    nop
    jp $c300


    add b
    pop bc
    nop
    pop bc
    nop
    ret nz

    nop
    ldh a, [$cf]
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

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    rst $38
    rst $38
    jp $c3ff


    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    di
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$fc]
    add b
    ret nz

    nop
    nop
    nop
    nop
    rlca
    ld hl, sp+$1f
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
    cp a
    cp a
    rst $18
    rst $18
    ld e, a
    ld e, a
    cpl
    cpl
    scf
    scf
    sbc e
    sbc e
    set 1, e
    ld b, l
    ld b, l
    ld e, l
    and d
    ld c, l
    ld [hl-], a
    ld h, [hl]
    add hl, de
    inc sp
    adc h
    add hl, de
    ld b, [hl]
    ld c, h
    inc hl
    inc h
    sub e
    ld [de], a
    ret


    dec c
    ldh [rTIMA], a
    ldh a, [rP1]
    ld a, [$fd00]
    nop
    cp $00
    cp $00
    rst $38
    add b
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
    add c
    add c
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    db $fc
    db $fc
    cp $fe
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
    nop
    nop
    nop
    nop
    add b
    add b
    ldh [$e0], a
    ld a, b
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ldh [rP1], a
    ldh [$80], a
    ldh a, [$78]
    db $fc
    inc c
    db $fc
    nop
    db $fc
    nop
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    ret nz

    rst $38
    ret nz

    rst $38
    db $fc
    jp $c0ff


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
    rst $28
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ret nz

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
    ld [hl], b
    ld [hl], b
    cp b
    cp b
    cp b
    cp b
    call c, $ecdc
    db $ec
    xor $ee
    rst $30
    rst $30
    rst $30
    rst $30
    ei
    ei
    db $fd
    db $fd
    ld a, l
    ld a, l
    cp [hl]
    cp [hl]
    rst $18
    rst $18
    ld e, a
    ld e, a
    rst $28
    rst $28
    or a
    or a
    ld [$84f7], sp
    ld a, e
    jp nz, Jump_034_413d

    ld a, $21
    sbc [hl]
    sub b
    ld c, a
    ld c, b
    daa
    dec l
    add d
    ld d, $c1
    ld [bc], a
    jp hl


    ld bc, $00f4
    ld a, [$fd00]
    ld bc, $00fc
    cp $80
    ld a, a
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    add e
    add e
    pop bc
    pop bc
    ldh [$e0], a
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    rst $38
    rst $38
    rst $38

jr_034_5c27:
    rst $38
    ccf

jr_034_5c29:
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
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    ld hl, sp+$1f
    ldh [$7e], a
    add b
    db $fc
    nop
    ld hl, sp+$00

jr_034_5c4a:
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    cp $fe
    rst $38
    rst $38
    ret z

    jr nc, jr_034_5c27

    jr c, jr_034_5c29

    jr c, jr_034_5c4a

    inc e
    db $e3
    inc e
    pop af
    ld c, $f1
    ld c, $f8
    rlca
    add a
    add a
    add e
    add e
    jp $e1c3


    pop hl
    ld h, c
    ld h, c
    ld [hl], b
    ld [hl], b
    or b
    or b
    ret c

    ret c

    call c, $ecdc
    db $ec
    xor $ee
    or $f6
    ei
    ei
    ld a, e
    ld a, e
    cp l
    cp l
    cp [hl]
    cp [hl]
    and c
    ld e, [hl]
    db $10
    rst $28
    ld [$88f7], sp
    ld [hl], a
    ld b, h
    dec sp
    ld [hl+], a
    ld e, l
    and c
    ld e, $11
    ld c, [hl]
    ld [$04a7], sp
    db $db
    ld [bc], a
    db $ed
    ld bc, $01f6
    ld a, [$f902]
    nop
    db $fd
    add b
    ld a, [hl]
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    add e
    add e
    pop hl
    pop hl
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    rlca
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ei
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
    rst $38
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld hl, sp+$08
    ldh [$30], a
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

jr_034_5d17:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    ld c, c
    inc b
    ld c, c
    ld b, $84
    ld [bc], a
    ld l, h
    inc bc
    ld [c], a
    ld bc, $01e6

jr_034_5d2c:
    db $76
    ld bc, $00b5
    sub a
    nop
    ld e, a
    add b
    ld h, a
    add b
    scf
    ret nz

    scf
    ret nz

    rra
    ldh [rNR13], a
    ldh [$8b], a
    ld [hl], b
    adc l
    ld [hl], b
    rst $00
    jr c, jr_034_5d2c

    jr @-$1b

    inc e
    di
    inc c
    ld [hl], c
    adc [hl]
    ld a, b
    add a
    jr c, jr_034_5d17

    jp Jump_034_63c3


    ld h, e
    ld h, c
    ld h, c
    or c
    or c
    ret c

    ret c

    ret c

    ret c

    db $ec
    db $ec
    db $f4
    db $f4
    db $76
    db $76
    cp e
    cp e
    cp l
    cp l
    db $dd
    db $dd
    xor $ee
    db $76
    db $76
    or a
    or a
    db $db
    db $db
    ld [de], a
    ld l, l
    ld d, d
    xor l
    add hl, hl
    sub $14
    db $eb
    ld a, [bc]
    push af
    add hl, bc
    or $85
    ld a, d
    jp nz, Jump_000_1e3d

    ld e, $0f
    rrca
    rst $00
    rst $00
    db $e3
    db $e3
    pop af
    pop af
    ld hl, sp-$08
    db $fc
    db $fc
    ld a, [hl]
    ld a, [hl]
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
    nop
    jr c, jr_034_5d9f

jr_034_5d9f:
    jr c, jr_034_5dd9

    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
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
    add b
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_034_5dd9:
    rst $38
    ldh a, [$fc]
    nop
    add b
    nop
    nop
    nop
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
    scf
    scf
    scf
    scf
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    adc e
    adc e
    adc l
    adc l
    adc l
    adc l
    push bc
    push bc
    push bc
    push bc
    ld b, [hl]
    ld b, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    inc sp
    inc sp
    ld de, $1111
    ld de, $0909
    ld [$0808], sp
    ld [$0404], sp
    inc b
    inc b
    ld b, $06
    ld [bc], a
    ld [bc], a
    add d
    add d
    add c
    add c
    pop bc
    pop bc
    pop bc
    pop bc
    ldh [$e0], a
    ldh [$e0], a
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    jr c, jr_034_5e6a

    jr c, jr_034_5e6c

    inc e
    inc e
    adc h
    adc h
    adc [hl]
    adc [hl]
    add $c6
    ld h, a
    ld h, a
    and e
    and e
    or e
    or e
    pop de
    pop de
    jp hl


    jp hl


    ld l, h
    ld l, h
    or h
    or h
    cp d
    cp d
    jp c, Jump_034_6dda

    ld l, l
    xor l
    xor l
    ld d, [hl]
    ld d, [hl]
    xor e
    xor e
    push de
    push de
    push de
    push de
    ld [$75ea], a
    ld [hl], l
    dec sp
    dec sp
    sbc a
    sbc a
    add $c6
    db $e4
    db $e4
    db $f4
    db $f4
    db $f4
    db $f4

jr_034_5e6a:
    ld [hl], h
    ld [hl], h

jr_034_5e6c:
    inc d
    inc d
    inc b
    inc b
    ld b, $06
    ld e, $1e
    ld e, $1e
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
    rst $38
    ld b, $ff
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
    db $10
    rst $38
    sub h
    ld a, a
    sub l
    ld a, a
    sub l
    ld a, a
    sub l
    ld a, a
    sub l
    ld a, a
    sub l
    ld a, a

jr_034_5e9c:
    sub l
    ld a, a
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$80fe]
    ret nz

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
    cp $00
    ld hl, sp+$00
    ldh [rP1], a
    add b
    nop
    nop
    nop
    rst $38
    jr nz, @+$01

    ld d, b
    rst $38
    ld e, b
    rst $38
    ret nz

    rst $20
    add b
    rst $20
    add b
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$18ff], sp
    rst $38
    jr c, @-$1f

    jr c, jr_034_5e9c

    ld a, b
    ld e, a
    db $fc
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
    ldh [$e0], a
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    or b
    or b
    or b
    or b
    cp b
    cp b
    ret c

    ret c

    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld e, h
    ld e, h
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    ld c, $0e
    sub [hl]
    sub [hl]
    sub [hl]
    sub [hl]
    ld d, $16
    ld c, e
    ld c, e
    ld c, e
    ld c, e
    dec bc
    dec bc
    inc hl
    inc hl
    dec h
    dec h
    dec b
    dec b
    ld de, $0311
    inc bc
    rlca
    rlca
    adc a
    adc a
    cp $fe
    cp $fe
    xor $ee
    db $ec
    db $ec
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    jr c, jr_034_5f78

    cp b
    cp b
    sbc l
    sbc l
    ld e, l
    ld e, l
    ld c, [hl]
    ld c, [hl]
    xor b
    xor b
    ldh a, [$f0]
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
    add b
    add b
    ret nz

    ret nz

    nop
    ret nz

    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    pop hl
    rst $38
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$e0], a
    nop
    nop

jr_034_5f78:
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0701
    rlca
    rra
    rrca
    ld [hl], a
    rrca
    rst $30
    rrca
    rst $30
    rrca
    pop af
    rrca
    pop af
    rrca
    ldh a, [rIF]
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
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld c, $0f
    ld [$080f], sp
    rrca
    inc c
    rrca
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld c, $0f
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
    add a
    add a
    ld hl, sp-$08
    inc a
    jp $df20


    jr nz, @-$20

    ld b, c
    cp [hl]
    ld b, b
    cp a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
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
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add e
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
    add b
    rst $38
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec de
    ld h, a
    ld sp, hl
    rst $20
    ld sp, hl
    rst $20
    ld sp, hl
    rst $20
    ld sp, hl
    rst $20
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$19
    db $f4
    db $e3
    db $f4
    db $e3
    db $f4
    db $e3
    db $f4
    db $e3
    db $f4
    db $e3
    db $f4
    db $e3
    db $e4
    di
    db $e4
    di
    db $e4
    di
    db $e4
    di
    ld [$faf1], a
    ld bc, $c1fa
    ld a, [$faf1]
    pop af
    ld a, [$faf1]
    pop af
    ld a, d
    pop af
    ld a, [$f2f1]
    ld sp, hl
    push af
    ld hl, sp-$0b
    ld hl, sp-$0b
    ld hl, sp-$0b
    ld hl, sp-$0b
    ld hl, sp-$0b
    ld hl, sp-$0d
    ccf
    di
    ccf
    di
    ccf
    ldh a, [$3f]
    ldh a, [$3f]
    pop af
    ccf
    rst $38
    ccf
    rst $38
    ccf

jr_034_6060:
    rst $38
    jr c, @+$01

    ld bc, $1fff
    db $fc
    ld a, a
    ldh [$7f], a
    ldh [$7f], a
    rst $20
    ld a, a
    rst $20
    ld a, a
    rst $20
    ld a, a

jr_034_6072:
    rst $20
    ld a, a

jr_034_6074:
    ld [hl], e
    cp a
    ld [hl], e
    cp a
    ld [hl], e
    cp a
    ld [hl], e
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld [hl], e
    cp a
    ld [hl], e
    cp a
    ld [hl], e
    cp a
    ld [hl], e
    cp a
    ld a, c
    cp a
    ld a, c
    cp a
    add hl, sp
    rst $18
    add hl, sp
    rst $18
    rst $18
    jr jr_034_6072

    jr jr_034_6074

    rra
    ret c

    jr jr_034_6060

    nop
    ldh [$1f], a
    rra
    ldh [$f0], a
    rrca
    nop
    cp $00
    add b
    dec a
    nop
    cp $00
    ldh [rP1], a
    ld bc, $0180
    ret nz

    ld bc, $01c0
    ret nz

    ld bc, $01c0
    ret nz

    ld bc, $01c0
    ret nz

    ld bc, $01c0
    ret nz

    ld bc, $01c0
    ret nz

    ld bc, $81c0
    ld b, b
    add c
    ld b, b
    add c
    ld b, b
    add c
    ld b, b
    add c
    ld b, b
    add c
    ld b, b
    nop
    add b
    nop
    rst $38
    add c
    ld b, b
    add c
    ld b, b
    jp $ff20


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
    ldh [rIE], a
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    rst $38
    pop hl
    rst $38
    pop hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rIE], a
    db $fc
    rst $38
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
    rra
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
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    add b
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp $ff
    add b
    rst $38
    ld bc, $1fff
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    add b
    rst $38
    rrca
    cp $ff
    ret nz

    rst $38
    nop
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    cp $ff
    ldh [rIE], a
    add e
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    call z, $c0ff
    rst $38
    jp $ffff


    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    ld bc, $7fff

jr_034_6194:
    ldh [$e0], a

jr_034_6196:
    ld e, $01

jr_034_6198:
    add c
    ld a, [hl]

jr_034_619a:
    ld a, a
    add b

jr_034_619c:
    ret nz

    ccf

jr_034_619e:
    rra
    ldh [$80], a
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
    rrca
    ld hl, sp+$1e
    ldh a, [rNR34]
    ldh a, [$3c]
    ldh [$38], a
    ldh [$78], a
    ret nz

    ld a, b
    ret nz

    jr c, @-$3e

    jr c, jr_034_6194

    jr c, jr_034_6196

    jr c, jr_034_6198

    jr c, jr_034_619a

    jr c, jr_034_619c

    jr c, jr_034_619e

    jr c, @-$3e

    inc a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    rst $38
    add c
    rst $38
    add c
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
    ld a, $ff
    ld a, $ff
    ld a, $ff
    add b
    rst $38
    add b
    db $fc
    add h
    db $fc
    call nz, $c4fc
    db $fc
    db $e4
    db $fc
    db $e4
    db $fc
    ld [c], a
    cp $e2
    cp $e2
    cp $e2
    cp $e2
    cp $e2
    cp $e2
    cp $e2
    cp $f2
    cp $f2
    cp $f3
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh [rIE], a
    ld h, c
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    add b
    rst $38
    rrca
    rst $38
    rst $38
    ldh a, [rIE]
    jr nc, @+$01

    scf
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    scf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    inc c
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    inc c
    rst $38
    rrca
    rst $38
    cp $fe
    add c
    add b
    ld a, b
    rlca
    rlca
    ld hl, sp-$04
    inc bc
    ld bc, $7ffe
    add b
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
    ld a, $ff
    rst $38
    pop bc
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
    ld a, $00
    rst $38
    nop
    add b
    ld a, a
    add b
    nop
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    ld b, c
    ld a, $3e
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
    inc bc
    rst $38
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    add a
    rst $38
    add a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
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
    rst $38
    nop
    rst $28
    nop
    rst $30
    inc bc
    ld a, [$0103]
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    nop
    ld bc, $0a0a
    inc b

Jump_034_62ff:
    inc b
    push af
    ld a, [bc]
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
    cp $00
    nop
    nop
    nop
    ldh a, [rP1]
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    add b

Jump_034_631d:
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    add b
    rst $38
    rlca
    rst $38
    ld a, a
    ld hl, sp-$01
    nop
    rst $38
    rlca
    rst $38
    ld a, a
    rst $38
    ld hl, sp-$01
    add b
    rst $38
    ld c, $ff
    cp $ff
    cp $ff
    cp $ff
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
    ldh a, [rIE]
    nop
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    rrca
    rst $38
    rst $38
    ld hl, sp+$07
    nop
    pop hl
    ld e, $1f
    ldh [$f0], a
    rrca
    rlca
    ld hl, sp-$01
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
    add b
    rst $38
    ldh [$7f], a
    ldh a, [$1f]
    ld hl, sp+$0f
    inc a
    rlca
    inc a
    rlca
    ld e, $03
    adc [hl]
    inc bc
    adc a
    ld bc, $018f
    adc [hl]
    ld bc, $018e
    adc [hl]
    ld bc, $018e
    adc [hl]
    ld bc, $010e
    ld c, $01
    ld c, $01
    ld e, $01
    cp $01
    cp $01
    cp $01
    cp $ff
    add b
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add [hl]
    rst $38
    add [hl]
    rst $38
    add [hl]
    rst $38
    add [hl]
    rst $38
    add [hl]
    rst $38
    add [hl]
    rst $38
    rst $38
    add [hl]
    rst $38

Jump_034_63c3:
    add [hl]
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
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fd
    ld hl, sp+$0b
    ld hl, sp-$10
    ld [$08f0], sp
    ldh a, [$08]
    ldh a, [$08]
    ldh a, [$08]
    ldh [rNR10], a
    ld c, d
    xor d
    inc b
    ld b, h
    push af
    ld a, [bc]
    rlca
    nop
    inc bc
    nop
    di
    ldh a, [$f3]
    ldh a, [$f3]
    ldh a, [$f3]
    ldh a, [$67]
    ld h, b
    rrca
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    rst $38
    inc bc
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    nop
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
    dec d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    ld bc, $1e1d
    rra
    jr nz, jr_034_6457

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_034_6467

    ld a, [hl+]
    dec hl
    ld c, $2c
    dec l
    ld l, $2f
    jr nc, jr_034_6478

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_034_6488

    ld a, [hl-]
    ld bc, $3c3b
    dec a
    ld a, $3f
    ld b, b

jr_034_6457:
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
    ld d, b

jr_034_6467:
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    nop
    nop
    nop
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]

jr_034_6478:
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    dec d
    dec d
    nop
    nop
    nop
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c

jr_034_6488:
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    ld l, d
    nop
    ld l, e
    ld l, h
    dec d
    ld l, l
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    ld [hl], l
    db $76
    dec d
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    dec d
    dec d
    dec d
    dec d
    dec d
    add b
    add c
    nop
    nop
    nop
    nop
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
    nop
    adc l
    adc [hl]
    adc a
    dec d
    dec d
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
    nop
    nop
    nop
    nop
    sub l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, $06
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    inc b
    ld bc, $0301
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
    ld b, $02
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    ld b, $06
    ld b, $00
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    ld [bc], a
    inc bc
    ld b, $03
    inc bc
    inc bc
    inc bc
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld b, $00
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    ld bc, $0101
    ld [bc], a
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
    ld bc, $0305
    inc bc
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
    inc bc
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld b, $ff
    ld b, $ff
    ld [bc], a
    rst $38
    rst $38
    rst $38
    add e
    rst $38
    add e
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    nop
    nop
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh a, [$f0]
    ldh a, [$90]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, [hl]
    ld a, [hl]
    ld a, $3e
    cp [hl]
    cp [hl]
    cp [hl]
    cp [hl]
    cp [hl]
    cp [hl]
    rst $18
    rst $18
    rst $18
    rst $18
    ld e, a
    ld e, a
    ld l, a
    ld l, a
    nop
    ld a, a
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ccf
    jr nz, jr_034_6752

    jr nz, jr_034_6754

    jr nc, @+$32

    ccf
    db $10
    rra
    db $10
    rra
    jr @+$21

    adc b
    adc a
    db $76
    adc [hl]
    ld [hl], e
    adc a
    ld [hl], e
    adc a
    cp e
    rst $00
    cp c
    rst $00
    cp l
    jp Jump_034_631d


    add hl, bc
    ld [hl], a
    inc bc
    ccf
    rra
    rra
    rra
    rra
    rst $38
    rst $38
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ret nz

    add c
    add c
    cp $fe
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    pop af
    pop af

jr_034_6752:
    rst $38
    rst $38

jr_034_6754:
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
    cp $fe
    rst $38
    rst $38
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
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
    rst $38
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld c, a
    ld a, a
    ld c, b
    ld a, a
    ld c, b
    ld a, a
    ld b, h
    ld a, a
    ld b, h
    ld a, a
    inc h
    ccf
    inc h
    ccf
    inc h
    ccf
    ld [hl+], a
    ccf
    ld [hl+], a
    ccf
    ld [de], a
    rra
    ld [de], a
    rra
    ld [de], a
    rra
    ld de, $101f
    rra
    add hl, bc
    rrca
    add hl, bc
    rrca
    add hl, bc
    rrca
    add hl, bc
    rrca
    ld [$080f], sp
    rrca
    db $fc
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
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
    rlca
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    add c
    rst $38
    add c
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
    nop
    add b
    add b
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
    nop
    rst $38
    nop
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    rst $38
    rst $38
    ldh [$e0], a
    pop hl
    pop hl
    add c
    add c
    add e
    add e
    rst $38
    rst $38
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f0]
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
    cp $fe
    rst $38
    rst $38
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    rra
    rra
    rst $38
    rst $38
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
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    cp [hl]
    rst $38
    jr nz, @+$01

    jr nz, @+$01

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
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$efff], sp
    rst $38
    nop
    rst $38
    rst $30
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    add d
    rst $38
    add d
    rst $38
    add d
    rst $38
    add d
    rst $38
    adc a
    rst $38
    ld c, a
    rst $38
    ld c, a
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
    rst $38
    ccf
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $81ff
    rst $38
    add c
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    ldh a, [$1f]
    di
    rra
    ld a, [$fa0f]
    rrca
    ld sp, hl
    rrca
    ld sp, hl
    rrca
    ld sp, hl
    rrca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fc
    rlca
    db $fc
    rlca
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    ccf
    ccf
    ldh a, [$f0]
    ldh a, [$f0]
    pop hl
    pop hl
    rst $08
    rst $08
    cp $fe
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    rst $38
    rst $38
    rst $28
    rst $28
    rra
    rra
    rra
    rra
    ccf
    ccf
    rst $38
    rst $38
    ret nz

    ret nz

    add b
    add b
    add c
    add c
    ld bc, $0301
    inc bc
    rlca
    rlca
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
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
    rst $38
    rst $38
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
    rst $38
    ld c, a
    rst $38
    ld c, b
    rst $38
    ld c, b
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld [de], a
    rst $38
    db $d3
    rst $38
    db $10
    or a
    sub c
    sub e
    ld de, $11ff
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    ld [$08ff], sp
    rst $38
    adc b
    rst $38
    add h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $38
    db $e3
    rst $38
    ei
    rst $38
    db $e3
    rst $38
    cp $ff
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
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
    rst $28
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$04ff], sp
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
    add h
    rst $38
    di
    rst $38
    nop
    rst $38
    ld a, e
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld b, c
    rst $38
    ld hl, $21ff
    rst $38
    cp l
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    pop hl
    pop hl
    jp $ffc3


    rst $38
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    rst $38
    rst $38
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    ccf
    rst $38
    rst $38
    ldh [$e0], a
    pop hl
    pop hl
    pop bc
    pop bc
    pop bc
    pop bc
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    nop
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld [$f00f], sp
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    db $fd
    db $fd
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    rst $38
    rst $38
    adc a
    adc a
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
    ld a, a
    ld a, a
    ldh [$e0], a
    cp a
    rst $38
    ld hl, $20ff
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
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    rst $28
    rst $38
    nop
    rst $38
    rst $30
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
    add d
    rst $38
    add d
    rst $38
    add d
    rst $38
    add d
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
    rst $38
    rst $38
    rst $38
    add e
    rst $38
    rst $38
    rst $38
    add e
    rst $38
    jp $c3ff


    rst $38
    pop bc
    rst $38
    ld h, c
    rst $38
    ld h, c
    rst $38
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
    cpl
    rst $38
    xor b
    rst $38
    jr z, @+$01

    jr z, @+$01

    inc h
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    inc d
    rst $38
    inc d
    rst $38
    inc d
    rst $38
    rla
    rst $38
    ret nc

    rst $38
    inc de
    cp e
    jp nc, Jump_000_16ff

    rst $38
    ldh [$1f], a
    ldh [$1f], a
    adc $3f
    sbc a
    ld a, a
    cp a
    ld a, a
    ld a, a
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
    nop
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
    cp $ff
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
    ldh a, [rIE]
    pop af
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    jp $e7ff


    rst $38
    rst $20
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc

jr_034_6b1e:
    ld bc, $fefe
    rst $38

jr_034_6b22:
    cp $ff

jr_034_6b24:
    rst $38
    rst $38
    rst $30
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    db $e3
    rst $38
    inc bc
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
    ldh [$e0], a
    jr nz, jr_034_6b1e

    jr nz, @-$1e

    jr nz, jr_034_6b22

    jr nz, jr_034_6b24

    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR23]
    ld hl, sp+$08
    ld hl, sp-$78
    ld hl, sp-$78
    ld hl, sp+$08
    ld hl, sp-$38
    ld hl, sp+$48
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    rlca
    rst $38
    dec b
    rst $38
    rlca
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
    inc de
    rst $38
    di
    rst $38
    inc bc
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    daa
    rst $38
    inc hl
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    rla
    rst $38
    rla
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rst $18
    rst $38
    rra
    rst $38
    rst $38
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
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $01
    cp $00
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    sub b
    rst $38
    db $10
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    jr c, @+$01

    ld a, c
    cp $79
    cp $79
    cp $f9
    cp $f8
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
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    rst $38
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
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

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
    rst $38
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    pop hl
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $00
    rst $38
    rst $38
    rst $38
    jp $c3ff


    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rra
    rra
    rra
    rra
    rra
    rra
    ccf
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
    rst $38
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
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
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
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    nop
    ld bc, $0300
    nop
    rrca
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    rst $38
    rst $38
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
    add b
    rst $38
    nop
    rst $38
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
    ldh [$1f], a
    ret nz

    ccf
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
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ld a, $01
    ld a, [hl]
    ld bc, $017e
    ld a, [hl]
    ld bc, $01fe
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    db $fc
    ld hl, sp+$04
    ld hl, sp+$06
    rlca
    cp $07
    cp $05
    rst $38
    add hl, bc
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld hl, sp-$01
    ld [$08ff], sp
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    rst $38

Jump_034_6dda:
    ld bc, $01ff
    rst $38
    ld bc, $40ff
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
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_034_6e06:
    ld bc, $01fe
    cp $01
    cp $01
    cp $03
    db $fc
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    add b
    db $fc
    add b
    db $fc
    add b
    ld a, b
    ret nz

    ld a, b
    ret nz

    ld a, b
    ret nz

    jr c, jr_034_6e06

    inc a
    ldh [$3c], a
    ldh [rNR32], a
    ldh a, [rNR32]
    ldh a, [rNR32]
    ldh a, [$0c]
    ld hl, sp+$0c
    ld hl, sp+$04
    ld hl, sp+$06
    db $fc
    ld b, $fc
    ld [bc], a
    db $fc
    inc bc
    cp $03
    cp $81
    rst $38
    add c
    rst $38
    add c
    rst $38
    add b
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
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    db $10
    rst $38
    db $10
    rst $38
    db $10
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
    inc b
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
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$07
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
    ld a, a
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
    ld b, b
    ret nz

    ld b, b
    ret nz

    jr nz, @-$1e

    jr nz, @-$1e

    jr nz, @-$1e

    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    ld [bc], a
    cp $02
    cp $01
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
    ld b, b
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
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
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
    ld bc, $03fe
    db $fc
    rrca
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

jr_034_6f50:
    ld a, a
    add b

jr_034_6f52:
    rst $38
    nop

jr_034_6f54:
    rst $38
    nop
    rst $38
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
    add b
    add b
    add b
    add b
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    jr nz, jr_034_6f50

    jr nz, jr_034_6f52

    jr nz, jr_034_6f54

    db $10
    ldh a, [rNR10]
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    ld [bc], a
    cp $02
    cp $02
    cp $01
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

jr_034_6f9c:
    add b
    rst $38

jr_034_6f9e:
    add b
    rst $38

jr_034_6fa0:
    rlca
    ld hl, sp+$1f
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
    add b
    add b
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    jr nz, jr_034_6f9c

    jr nz, jr_034_6f9e

    jr nz, jr_034_6fa0

    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    ld [bc], a
    cp $02
    cp $02
    cp $01
    rst $38
    ld bc, $01ff
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
    add b
    rst $38
    add b
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
    jr jr_034_7023

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    ld bc, $2001
    ld hl, $2322
    inc h
    dec h
    ld h, $27
    jr z, jr_034_7045

    ld a, [hl+]
    dec hl
    inc l
    rra
    dec l
    ld l, $2f

jr_034_7023:
    jr nc, jr_034_7056

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_034_7066

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
    rra
    ld c, c
    ld c, d
    ld c, e
    ld bc, $4c01
    ld c, l
    ld c, [hl]

jr_034_7045:
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
    ld bc, $5a01
    ld e, e
    ld e, h
    ld e, l

jr_034_7056:
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
    ld bc, $0101
    ld l, b
    ld l, c
    ld l, d

jr_034_7066:
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
    ld bc, $0101
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
    ld bc, $0180
    add c
    add d
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
    ld bc, $8e8d
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
    ld bc, $9e9d
    sbc a
    and b
    and c
    ld b, b
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
    ld bc, $0101
    ld bc, $bcbb
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    rra
    push bc
    ld bc, $0101
    ld bc, $c7c6
    ret z

    ret


    jp z, $cccb

    call $cfce
    ret nc

    pop de
    ld bc, $0101
    jp nc, $d4d3

    push de
    sub $5f
    rst $10
    ret c

    reti


    jp c, $dcdb

    rra
    ld bc, $0101
    db $dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld bc, $0101
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
    ld a, [$fcfb]
    db $fd
    cp $ff
    nop
    ld bc, $0302
    dec bc
    inc b
    dec b
    ld b, $07
    ld [$0901], sp
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0000
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    dec b
    dec b
    dec b
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    dec b
    dec b
    dec b
    ld [bc], a
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0500
    dec b
    dec b
    dec b
    dec b
    dec b
    nop
    nop
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0401
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    nop
    nop
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0002
    nop
    dec b
    dec b
    dec b
    nop
    nop
    nop
    dec b
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    rlca
    nop
    nop
    dec b
    dec b
    dec b
    ld [bc], a
    nop
    nop
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    dec b
    dec b
    nop
    nop
    nop
    dec b
    dec b
    dec b
    ld [bc], a
    nop
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    nop
    nop
    nop
    nop
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    nop
    inc b
    inc b
    inc b
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    inc b
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0505
    ld [bc], a
    inc b
    dec b
    dec b
    dec b
    dec b
    ld b, l
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    dec b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec b
    dec b
    dec b
    nop
    dec b
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
    inc b
    dec b
    dec b
    ld [bc], a
    nop
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
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
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    nop
    nop
    nop
    inc b
    dec b
    dec b
    ld [bc], a
    nop
    nop
    ld [bc], a
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    nop
    nop
    nop
    dec b
    dec b
    dec b
    ld [bc], a
    nop
    nop
    nop
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    nop
    nop
    nop
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld b, h
    dec c
    dec c
    dec c
    ld [$020d], sp
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
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
    nop
    nop
    nop
    nop
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
    inc a
    ccf
    ret nz

    rst $38
    ld bc, $07fe
    ld hl, sp+$3f
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38

jr_034_72a9:
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
    pop bc
    ccf
    ld b, $ff
    jr @+$01

    ld h, b
    rst $38
    add c
    cp $06
    ld sp, hl
    jr jr_034_72a9

    ld h, b
    sbc a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop

jr_034_72cb:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $06fe
    ld sp, hl
    jr jr_034_72cb

    ld h, b
    sbc a
    add b
    ld a, a
    ldh [$1f], a
    rra
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    nop
    ldh [$e0], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    scf
    scf
    ld sp, $1131
    ld de, $1818
    adc b
    adc b
    adc b
    adc b
    adc h
    adc h
    and $e6
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
    ld bc, $e001
    nop
    cp $e0
    rst $18
    ld a, $fd
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [$ed00]
    nop
    pop af
    nop
    ld hl, sp+$00
    cp $00
    ld a, [$ee00]
    nop
    cp $00
    db $fd
    nop
    ld c, h
    nop
    jp c, $7800

    nop
    scf
    nop
    ld d, b
    nop
    jp nz, Jump_034_4400

    nop
    ret z

    nop
    ld b, b
    nop
    add b
    nop
    jr nz, jr_034_7362

jr_034_7362:
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
    rst $38
    nop
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
    db $fc
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    inc a
    nop
    inc a
    nop
    inc a
    nop
    inc a
    inc e
    nop
    inc e
    nop
    rra
    rrca
    ld [hl], b
    ld a, a
    add b
    rst $38
    rlca
    db $fc
    daa
    call c, Call_000_0ef3
    di

jr_034_73a1:
    ld c, $f3
    ld c, $f3
    ld c, $f9
    rlca
    ld sp, hl
    rlca
    ldh a, [rIF]
    pop bc
    ccf
    ld b, $ff
    jr @+$01

    ld h, b
    rst $38
    add c
    cp $06
    ld sp, hl
    jr jr_034_73a1

    ld h, b
    sbc a
    add b
    ld a, a
    nop
    rst $38
    nop
    nop
    nop

jr_034_73c3:
    nop
    nop
    nop
    ld bc, $0701
    rlca
    rrca
    rrca
    rra
    rra
    rrca
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $06fe
    ld sp, hl
    jr jr_034_73c3

    ld h, b
    sbc a
    add b
    ld a, a
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld a, [hl]
    add c
    ld bc, $00fe
    nop
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
    cp a
    cp a
    adc h
    adc h
    adc h
    adc h
    call nz, Call_034_46c4
    ld b, [hl]
    ld b, d
    ld b, d
    ld h, d
    ld h, d
    ld h, e
    ld h, e
    pop af
    pop af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    nop
    nop
    ldh a, [rP1]
    rst $38
    ldh [$1f], a
    rst $38
    rlca
    ld hl, sp+$0f
    ldh a, [$87]
    ld a, b
    add a
    ld a, b
    jp $c13c


    ld a, $e0
    rra
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    ldh a, [$03]
    ldh a, [rP1]
    ldh [rP1], a
    cp e
    inc b
    ld a, [hl-]
    dec b
    dec e
    ld [bc], a
    dec d
    ld [bc], a
    xor d
    ld bc, $008b
    stop
    jr nz, jr_034_744e

jr_034_744e:
    ld b, b
    nop
    add b
    nop
    add b
    nop
    ld [hl], b
    nop
    ld c, $00
    ld bc, $0000
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
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    add b
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
    ld bc, $07ff
    rlca
    ld e, $1e
    ld a, h
    ld a, h
    xor $ee
    sub $d6
    call nc, $ffd4
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc sp
    rst $38
    ld [hl], e
    cp a
    or a
    ld a, a
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
    ccf
    rst $38
    inc bc
    rst $38
    pop af
    rrca
    rrca
    pop af
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    pop hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc sp
    inc sp
    ld sp, $1131
    ld de, $1010
    jr @+$1a

    ld [$0808], sp
    ld [$8c8c], sp
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
    rlca
    rst $38
    nop
    rst $38
    ld hl, sp+$07
    rst $38
    ldh a, [$3f]
    rrca
    cp a
    nop
    sbc a
    nop
    rst $18
    nop
    rst $08
    nop
    rst $28
    nop
    rst $20
    nop
    ldh a, [rP1]
    ld [hl], b
    add b
    ld hl, sp+$01
    ldh a, [rSB]
    ld b, b
    add e
    inc bc
    nop
    rlca
    nop
    rrca
    nop
    cpl
    ret nz

    rra
    ldh [$8e], a
    ld [hl], b
    db $ed
    db $10
    rst $30
    ld [$043a], sp
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
    ldh [rP1], a
    inc e
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
    ld a, a
    rra
    ld a, a
    rra
    ccf
    ld e, $3f
    ld e, $2f
    ld c, $3f
    ld c, $1f
    rrca
    rra
    rrca
    rla
    rlca
    rra
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    nop
    rrca
    nop
    rlca
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
    rst $38
    nop
    rst $38
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
    ld hl, sp+$00
    rst $38
    ldh [rIE], a
    rra
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld a, c
    rst $38
    jp hl


    rst $38
    ret


    rst $38
    ret


    cp $46
    db $fd
    inc l
    rst $30
    inc [hl]
    rst $28
    ld h, a
    cp a
    rst $20
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
    db $fd
    rst $38
    ld sp, hl
    rst $38
    pop af
    rst $38
    sub e
    rst $38
    adc a
    rst $38
    sbc a
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
    cp $ff
    rst $38
    cp $fe
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
    rst $38
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
    add b
    nop
    db $fc
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
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [$9f], a
    ld h, b
    adc a
    jr nc, jr_034_7678

    nop
    ld b, b
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
    add b
    nop
    ld a, b
    nop
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
    rst $38
    nop
    rst $38
    nop
    rlca
    ld hl, sp-$09
    ld hl, sp+$77
    ld hl, sp-$4d
    ld a, h
    di
    inc a
    ei
    inc a
    jr c, jr_034_768e

    inc a
    ld a, [$befc]
    inc a
    cp $1c
    cp [hl]
    inc c
    sbc [hl]
    sbc h
    rst $38
    cp $7f
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_034_7678:
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    inc a
    db $e4
    rst $38
    inc h
    rst $38
    ld [hl+], a
    rst $38
    daa
    ld a, [$f71a]

jr_034_768e:
    inc sp
    rst $18
    inc de
    inc de
    sub a
    sub a
    sbc a
    sbc a
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld de, $10ff
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    ret z

    rst $38
    ret z

    rst $38
    call nz, $fcff
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
    ld hl, sp+$07
    rlca
    ld hl, sp+$00
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
    or e
    or e
    or b
    or b
    or b
    or b
    or b
    or b
    sbc b
    sbc b
    sbc b
    sbc b
    ret c

    ret c

    ld hl, sp-$08
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
    rra
    rra
    ld bc, $e001
    nop
    cp $80
    rst $38
    ld a, b
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
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
    ld bc, $0100
    nop
    ld [bc], a
    nop
    inc b
    nop
    inc b
    nop
    ld [$e8f7], sp
    rla
    ld e, $e1
    ld hl, $20de
    rst $18
    ld b, b
    cp a
    ld b, b
    cp a
    add b
    ld a, [hl]
    nop
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld b, $f9
    cp $f9
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $08
    dec h
    rst $38
    and h
    rst $38
    xor h
    rst $38
    cp h
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    jp $01ff


    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_034_7771:
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc e
    rst $38
    adc e
    rst $38
    adc a
    rst $38
    ld c, a
    rst $38
    ld c, a
    rst $38
    ld c, a
    rst $38
    ld c, a
    rst $38
    ld c, a
    rst $38
    rst $38
    rst $38
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
    ldh [$1f], a
    rra
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld h, e
    ld h, e
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld sp, $3031
    jr nc, jr_034_77e7

    jr nc, jr_034_7771

    cp b
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
    rrca
    rrca
    nop
    nop
    nop
    ldh a, [$c0]
    rst $38
    ld a, [hl]

jr_034_77cd:
    rst $38

jr_034_77ce:
    rlca
    ei
    rra
    ld hl, sp+$0f
    rst $38
    inc bc
    db $e3
    ld bc, $00e1
    ldh [rNR23], a
    ld hl, sp+$1f
    rst $38
    rlca
    rst $38
    rst $38
    ld bc, $02ff
    rst $38
    nop
    ccf

jr_034_77e7:
    ret nz

    add hl, de
    and $10
    rst $28
    jr nz, jr_034_77cd

    jr nz, jr_034_77ce

    ld b, b
    cp [hl]
    ld b, b
    cp h
    add b
    ld a, h
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [$1f], a
    rra
    ccf
    ccf
    ccf
    ccf
    rst $38
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    cp $ff
    cp $ff
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    ld [$04f8], sp
    db $fc
    add e
    ld a, a
    sub b
    ld a, a
    jr @-$07

    inc e
    di
    ld e, $f1
    ccf
    ldh [$3f], a
    ldh [$3f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [$f3]
    db $fc
    jp hl


    cp $f4
    rst $38
    cp e
    rst $38
    sbc h
    rst $38
    adc a
    rst $38
    adc e
    rst $38
    adc c
    adc c
    ret z

    ret z

    add sp, -$18
    ld hl, sp-$08
    ld a, h
    db $fc
    ld a, $fe
    rra
    rst $38
    rlca
    rst $38
    rst $38
    inc bc
    rst $38
    ld bc, $feff
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
    add b
    ld a, a
    ld a, h
    add e
    inc bc
    db $fc
    nop
    rst $38
    nop
    nop
    nop
    nop
    ldh [$e0], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc a
    adc a
    add [hl]
    add [hl]
    add [hl]
    add [hl]
    add [hl]
    add [hl]
    add $c6
    jp $c3c3


    jp $c3c3


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
    rst $38
    rst $38
    rlca
    rlca
    nop
    nop
    ld hl, sp+$00
    rst $38
    ret nz

    rst $38

jr_034_78b1:
    db $fc
    rst $38

jr_034_78b3:
    rst $38
    cp a
    cp a
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rra
    rst $38
    sbc a
    rst $18

jr_034_78c5:
    rra
    sbc a

jr_034_78c7:
    rra
    adc a
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rst $38
    rlca
    rst $38
    ld b, $f9

jr_034_78d6:
    ld b, $f9
    inc c
    di
    inc c
    di
    jr jr_034_78c5

    jr jr_034_78c7

    jr nc, jr_034_78b1

    jr nc, jr_034_78b3

    ld h, b
    sbc a
    ld h, b
    sbc a
    ret nz

    ccf
    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_034_78d6

    db $10
    ldh a, [$08]
    ld hl, sp-$3a
    ld a, $e1
    rra
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    ld a, a
    add b
    sbc a
    ldh [rVBK], a
    ldh a, [$a7]
    ld hl, sp-$25
    db $fc
    db $e4
    rst $38
    ld a, [$bdff]
    rst $38
    sbc [hl]
    rst $38
    adc a
    rst $38
    adc e
    rst $38
    set 7, a
    set 1, e
    ld [$7aea], a
    ld a, [$fefe]
    rst $38
    rst $38
    rst $38
    rst $38
    daa
    rst $38
    inc hl
    rst $38
    rst $38
    and c
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    pop af
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
    ccf
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    rrca
    ldh a, [rP1]
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
    rst $38
    rst $38
    ld a, a
    ld a, a
    add hl, de
    add hl, de
    jr jr_034_797c

    jr jr_034_797e

    jr jr_034_7980

    ld [$0c08], sp
    inc c
    inc c
    inc c
    adc h
    adc h
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
    ld a, a
    rst $38

jr_034_797c:
    inc bc
    rst $38

jr_034_797e:
    add b
    ld a, a

jr_034_7980:
    db $fc
    inc bc
    rst $38
    ldh [rIE], a
    cp $f9
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    pop af
    ldh a, [$f0]
    ld [c], a
    db $fd
    ld a, [$fffd]
    rst $38
    rst $20
    rst $38
    pop bc
    cp $c2
    db $fd
    jp nz, $c4fd

    ei
    add h
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

jr_034_79b4:
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$06
    ld sp, hl
    rrca
    ldh a, [$0e]
    pop af
    nop
    nop
    nop
    nop
    nop
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

    jr nz, jr_034_79b4

    db $10
    ldh a, [$0c]
    db $fc
    add d
    ld a, [hl]
    pop bc
    ccf
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    ld a, [hl]
    add c
    cp [hl]
    pop bc
    ld e, [hl]
    pop hl
    ld h, $f9
    jp nc, $ecfd

    rst $38
    ld a, [c]
    ld a, [c]
    ld a, c
    ld a, c
    ld a, $3e
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
    ld a, h
    db $fc
    ld a, $fe
    rra
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
    rst $38
    rst $38
    rst $38
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
    ret nz

    ccf
    ld a, $c1
    ld bc, $00fe
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
    ld l, a
    ld l, a
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ldh a, [$f0]
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
    ccf
    rst $38
    ld bc, $c0ff
    ccf
    cp $01
    rst $38
    ldh [$1f], a
    ld e, $f1
    pop af
    rst $38
    rst $38
    rra
    rra
    nop
    nop
    nop
    nop
    add b
    add b
    ld hl, sp-$08
    ld a, a
    ld a, a
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
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
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
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
    add a
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ccf
    ldh [$3f], a
    ldh [$3f], a
    ldh [rNR42], a
    cp $00
    rst $38
    db $fc
    rst $38
    inc bc
    rst $38
    add b
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    jp nz, Jump_034_62ff

    rst $18
    jp nc, $caef

    rst $30
    jp z, $caf7

    rst $30
    jp nc, $d2ef

    rst $28
    ld [c], a
    rst $38
    rst $38
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
    ld hl, sp+$07
    rlca
    ld hl, sp+$00
    rst $38
    nop
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
    jp $c1c3


    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
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
    rra
    rst $38
    nop
    rst $38
    ldh [$1f], a
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    rrca
    ldh a, [$f0]
    rst $38
    rst $38
    rrca
    rrca
    nop
    nop
    nop
    nop
    add b
    add b
    ld hl, sp-$08
    ld a, a
    ld a, a
    rlca
    rlca
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ldh [$1f], a
    ld [hl], b
    adc a
    or b
    ld c, a
    ld e, b
    and a
    cp b
    ld b, a
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld hl, sp+$07
    db $e3
    rra
    rst $08
    inc a
    sbc a
    ld [hl], b
    ccf
    ldh [$7f], a
    ret nz

    ld a, a
    pop bc
    rst $38
    add e
    rst $38
    add a
    rst $38
    dec b
    rst $38
    inc b
    rst $38
    cp $ff
    rrca
    inc c
    ld [$090c], sp
    dec c
    ld [$0a0e], sp
    inc c
    ld [$090e], sp
    ld c, $0e
    dec bc
    inc c
    rrca
    rrca
    ld a, [bc]
    ld c, $0e
    ld a, [bc]
    ld c, $0c
    rrca
    inc c
    add hl, bc
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    inc c
    rrca
    rrca
    nop
    nop
    nop
    ldh [$e0], a
    rst $38
    rra
    rst $38
    ret nz

    rst $38
    ccf
    rst $38
    nop
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
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rra
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
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    sub b
    sub b
    rst $38
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
    ldh [$1f], a
    rra
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$e0], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    jp $f3c3


    di
    rst $38
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
    nop
    nop
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    ldh a, [$8f]
    rst $38
    ld a, [$7ffd]
    rst $38
    rlca
    rst $38
    inc b
    ei
    inc b
    ei
    add h
    ei
    ld hl, sp-$01
    ld a, a
    rst $38
    rrca
    rst $30
    ld [$08f7], sp
    rst $30
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    inc bc
    db $fc
    nop
    rst $38
    cp $ff
    rst $38
    ld bc, $00ff
    rst $38
    nop
    nop
    nop
    db $fc
    db $fc
    cp [hl]
    and $73
    dec hl
    ld h, c
    add hl, sp
    ld l, l
    ld sp, $3979
    rst $38
    rst $38
    ld sp, hl
    ld sp, hl
    pop hl
    and e
    ld a, e
    and l
    db $fd
    di
    rst $30
    db $fd
    sub l
    dec b
    ld a, a
    ld a, l
    db $fd
    di
    rst $10
    rst $28
    rst $38
    ld e, a
    db $fd
    rst $30
    ld l, a
    ld h, e
    ld e, e
    ld b, e
    rst $38
    rst $38
    rst $18
    rst $30
    cp a
    rst $10
    rst $28
    rst $10
    rst $38
    rst $20
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    ld a, a
    add b
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
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    add h
    rst $38
    add l
    cp $86
    db $fd
    add h
    rst $38
    adc l
    rst $30
    adc a
    rst $30
    sub a
    rst $28
    sub a
    rst $28
    sub a
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
    db $fc
    rst $38
    dec bc
    rst $38
    adc a
    ld a, a
    ld a, a
    adc a
    rrca
    rst $38
    rla
    rst $38
    rrca
    rst $38
    rrca
    rrca
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
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    sbc a
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
    ld a, a
    ld a, a
    inc bc
    inc bc
    add b
    nop
    db $fc
    nop
    rst $38
    add b
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld [hl], b
    rst $38
    ld h, b
    sbc a

jr_034_7d2a:
    ld h, b
    sbc a
    ret nz

    ccf
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

jr_034_7d38:
    ccf
    ret nz

    rra
    ldh [$8f], a
    ldh a, [$cf]
    ld [hl], b
    rst $20
    jr c, jr_034_7d2a

    jr c, jr_034_7d38

    inc e
    di
    inc e
    ld sp, hl
    ld c, $f9
    ld c, $f9
    ld c, $f9
    cp $f9
    ld c, $f9
    ld c, $f9
    ld c, $f9
    ld c, $f9
    ld c, $f9
    ld c, $f9
    ld c, $f9
    ld c, $f9
    ld c, $f9
    ld c, $f9
    ld c, $f9
    ld c, $f9
    ld c, $19
    xor $e9
    cp $19
    cp $c8
    cp $3f
    rst $38
    nop
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
    rra
    ldh [rP1], a
    rst $38
    nop
    rst $38
    di
    rst $38
    rrca
    rst $38
    inc e
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ei
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
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
    rst $38
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    rst $38
    ldh a, [$f0]
    rst $38
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    rst $38
    rst $38
    rst $38
    rst $38

jr_034_7dcc:
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add a
    add a
    add [hl]
    add [hl]
    add $c6
    add $c6
    and $e6
    cp $fe
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
    ld bc, $c0ff
    ccf
    cp $01
    rst $38
    add b
    ld a, a
    ld a, b
    rrca
    rlca
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

jr_034_7e0a:
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
    rst $38
    nop
    rst $38
    nop
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
    jr jr_034_7e51

    ldh [rIE], a
    inc bc
    db $fc
    rrca
    ld hl, sp-$31
    jr c, jr_034_7e0a

    jr c, jr_034_7dcc

    ld a, b
    adc a
    ld a, b
    adc a
    ld a, b
    adc a
    ld a, c
    rrca
    rst $38
    ld a, $ff
    ld hl, sp-$01
    ret z

    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b

jr_034_7e51:
    adc b
    jp hl


    jp hl


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$c2ff]
    rst $38
    add d
    rst $38
    rst $38
    add d
    rst $38
    add d
    rst $38
    add d
    rst $38
    add d
    rst $38
    add d
    rst $38
    add d
    rst $38
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
    ccf
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ld a, $c1
    ld bc, $00fe
    rst $38
    nop
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
    rra
    rra
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, $06
    ld b, $06
    ld b, $06
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
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
    rra
    rra
    nop
    nop
    ldh [rP1], a
    rst $38
    nop
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
    ccf
    nop
    ld hl, $2000
    nop
    jr nz, jr_034_7ed0

jr_034_7ed0:
    nop
    nop
    nop
    nop
    ld bc, $0601
    rlca
    jr jr_034_7ef9

    ld h, b
    ld a, a
    add e
    db $fc
    rrca
    ldh a, [$3f]
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
    inc bc
    rst $38
    rra
    db $fc
    ld a, a
    add sp, -$01
    adc b
    rst $38
    adc b
    rst $38
    adc b

jr_034_7ef9:
    rst $38
    adc c
    rst $38
    adc a
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    inc c
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    inc bc
    nop
    nop
    ld hl, sp+$07
    rlca
    ld hl, sp+$00
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
    ld b, $06
    ld b, $06
    ld b, $06
    ld c, $0e
    inc c
    inc c
    adc h
    adc h
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
    rrca
    rrca
    nop
    nop
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld a, $ff
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
    ld a, a
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
    inc bc
    db $fc
    rrca
    jr nc, jr_034_7fe1

    ret nz

    rst $38
    inc bc
    db $fc
    rrca
    ldh a, [$3f]
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
    ld bc, $0fff
    cp $3f
    db $f4
    rst $38
    call nz, $84ff
    rst $38
    adc b
    adc b
    adc c
    adc c
    adc e
    adc e
    sbc a
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ldh [rIE], a
    rst $38
    add b
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

jr_034_7fe1:
    rst $38
    rst $38
    rst $38
    rst $38
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
    rrca
    nop
    rst $38
    ldh [$1f], a
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
