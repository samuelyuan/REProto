SECTION "ROM Bank $011", ROMX[$4000], BANK[$11]

    rrca
    rlca
    ld c, $1f
    rst $38
    rlca
    rrca
    rlca
    rra
    rlca
    ld e, a
    rlca
    ccf
    rlca
    ccf
    rlca
    ccf
    rst $00
    rra
    rst $20
    ccf
    rst $00
    ccf
    rst $00
    ld a, a
    add a
    ld e, a
    and a
    ccf
    rst $00
    rra
    rst $20
    ld e, a
    rlca
    ccf
    add hl, bc
    rra
    jr jr_011_4046

jr_011_4027:
    db $fc
    rra
    rst $38
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    ld e, a
    xor a
    ccf
    rst $00
    rrca
    di
    rst $38
    ld bc, $00ff
    and $00
    db $e3
    nop
    ld [hl], b
    adc a
    ld de, $00ee
    rst $38

jr_011_4046:
    jr nz, jr_011_4027

    ld h, b
    sbc a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    ld bc, $00fe
    rst $38
    nop
    rst $38
    rra
    ldh [$e3], a
    inc e
    nop
    rst $38
    ld e, $00
    ccf
    nop
    jr nc, jr_011_4075

    inc e
    inc bc
    rlca
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    rst $38
    nop
    rst $38
    nop

jr_011_4075:
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
    call $3f32
    ret nz

    ld bc, $01fe
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
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
    rst $10
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c3], a
    ldh [$c7], a
    ldh [$c7], a
    ldh [$c3], a
    ldh [$c2], a
    ldh [$c0], a
    ldh [$c0], a
    nop
    add b
    nop
    inc [hl]
    res 1, a
    add b
    nop
    nop
    ld a, b
    add a
    add b
    ret nz

    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add c
    ld b, b
    add e
    ld b, b
    adc [hl]
    ld b, b
    adc a
    ld b, b
    add a
    ld b, b
    add a
    ld b, b
    add c
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add c
    ld b, b
    add a
    ret nz

    sbc a
    ret nz

    add b
    ld b, b
    nop
    add b
    nop
    add b
    rlca
    add b
    cpl
    add b
    ccf
    add b
    dec e
    add b
    ccf
    add b
    rra
    add b
    dec sp
    add b
    ccf
    add b
    ld a, a
    add b
    inc bc
    nop
    inc bc
    nop
    ccf
    ret nz

    ldh [$1f], a
    pop bc
    ld a, $00
    rst $38
    ccf
    ret nz

    inc a
    jp $ff00


    inc bc
    db $fc
    rlca
    ld hl, sp-$04
    inc bc
    ldh a, [rIF]
    ld [bc], a
    db $fd
    inc bc
    db $fc
    db $fc
    inc bc
    ld hl, sp+$07
    nop
    rst $38
    ld bc, $c700
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fc
    nop
    ccf
    nop
    ld e, $01
    rrca
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
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ld hl, sp+$07
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
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
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc d
    db $eb
    ld d, $e9
    ld a, $c1
    ccf
    ret nz

    ld a, a
    add b
    ld l, a
    sub b
    rst $38
    nop
    ei
    nop
    ei
    nop
    ld l, a
    nop
    add d
    nop
    nop
    nop
    ld a, a
    add b
    ldh a, [rP1]
    nop
    nop
    ld [$0315], a
    nop
    rra
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $28
    nop
    rst $38
    nop

jr_011_4190:
    rst $38
    nop
    rst $28
    db $10
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
    cp $01
    cp c
    ld b, [hl]
    cp $01
    nop
    rst $38
    nop

jr_011_41a7:
    rst $38
    cp e
    ld b, h
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_011_4190

    jr nz, @+$01

jr_011_41b3:
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
    rst $38
    nop
    ld a, a
    add b
    db $fc
    inc bc
    jr nz, jr_011_41a7

    nop
    rst $38
    rrca
    ldh a, [rTAC]
    ld hl, sp-$08
    rlca
    add b
    ld a, a
    jr nz, jr_011_41b3

    nop
    rst $38
    ld [$f0f7], sp
    rrca
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    pop af
    ld c, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rrca
    ldh a, [$03]
    db $fc
    pop af
    nop
    ccf
    ret nz

    add [hl]
    ld a, b
    rst $28
    db $10
    rst $38
    nop
    ccf
    nop
    rlca
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
    rst $38
    nop
    nop
    nop
    ret nz

    ccf
    rlca
    ld hl, sp+$0f
    ldh a, [rNR33]
    ld [c], a
    ld a, a
    add b
    ldh a, [rIF]
    inc b
    ei
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    inc hl
    call c, $f00f
    ccf
    ret nz

    rst $38
    nop
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
    ldh a, [rP1]
    ld hl, sp+$00
    add a
    ld a, b
    jp $f13c


    ld c, $7f
    nop
    rrca
    nop
    db $db
    nop
    ldh [rP1], a
    ld hl, sp+$00
    ld hl, sp+$00
    ld a, h
    add e
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
    ccf
    ret nz

    add b
    nop
    nop
    nop
    nop
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    nop
    rst $38
    db $10
    rst $28
    rrca
    ldh a, [rIF]
    ldh a, [$f3]
    inc c
    nop
    rst $38
    nop
    rst $38
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    add b
    ld a, a
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    ld hl, sp+$07
    cp $01
    cp $01
    db $fc
    inc bc
    cp $01
    rrca
    ldh a, [rTAC]

jr_011_429f:
    ld hl, sp-$80
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr jr_011_429f

    inc a
    jp $837c


    ld e, $e1
    rrca
    ldh a, [rIE]
    rst $38
    rst $38

jr_011_42c3:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rst $28
    rra
    dec bc
    rlca
    ld bc, $0000
    rst $38
    nop
    rst $38
    ld e, $e1
    nop
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    rst $38
    nop
    rst $08
    jr nc, jr_011_4320

    ret nz

    jr nz, jr_011_42c3

    ld [$00f7], sp
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld c, $f1
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$5f
    and b
    rra
    ldh [$f0], a
    rrca
    ldh a, [rIF]
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
    nop
    inc e
    nop
    rra
    nop
    ccf
    nop
    inc hl
    inc e
    ldh a, [rIF]
    ccf
    nop
    sbc a
    nop

jr_011_4320:
    cpl
    rra
    dec bc
    rlca
    ld bc, $0000

jr_011_4327:
    nop
    nop
    nop
    ld b, b
    nop
    ldh a, [rP1]
    cp $00
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
    ld b, b
    cp a
    nop
    rst $38
    jr jr_011_4327

    ld c, $f1
    rlca
    ld hl, sp+$07
    ld hl, sp-$7d
    ld a, h
    pop hl
    ld e, $10
    rst $28
    rrca
    ldh a, [rTAC]
    ld hl, sp-$7d
    nop
    ldh a, [rP1]
    rst $38
    nop
    pop af
    ld c, $33
    inc c
    add hl, bc
    ld b, $07
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $3f00
    nop
    rst $38
    nop
    ld a, b
    add a
    add b
    ld a, a
    ld bc, $fffe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fb
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$02
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
    ld a, a
    rst $38
    ld e, a
    ccf
    dec bc
    rlca
    ld [bc], a
    ld bc, $0000
    nop
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
    nop
    pop bc
    nop
    ei
    nop
    cp $00
    db $d3
    inc c
    ldh a, [rIF]
    ldh a, [rIF]
    ld a, [c]
    rrca
    ld a, [c]
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    add d
    rrca
    nop
    rrca
    nop
    rrca
    ld [hl], b
    rrca
    ldh a, [rIF]
    or b
    ld c, a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], e
    adc a
    pop af
    rrca
    rst $38
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
    cp $fd
    cp $e7
    ld hl, sp+$7f
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [$1f], a
    rra
    ldh [$f0], a
    rrca
    rrca
    ldh a, [rIE]
    ret nz

    rst $38
    ret nz

    pop af
    ret nz

    add b
    rrca
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    add b
    rst $38
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

    db $fd
    jp nz, $c3fc

    pop af
    adc $f4
    set 5, b
    rst $10
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    and b
    ld e, a
    jr nz, jr_011_447f

    and b
    rra
    jr nz, jr_011_4483

    jr nz, jr_011_4485

    jr nz, jr_011_4487

    ld h, b
    rra
    ld h, b
    rra
    ld h, b
    rra
    ld b, b
    ccf
    nop
    rra
    nop
    rlca
    nop
    ld bc, $0000
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop

jr_011_447f:
    ldh a, [rP1]
    ld hl, sp+$00

jr_011_4483:
    rst $38
    db $10

jr_011_4485:
    rst $38
    ld h, c

jr_011_4487:
    rst $38
    ld hl, $10ff
    rst $38
    db $10
    rst $38
    ld c, h
    rst $38
    ld b, d
    rst $38
    ld h, c
    rst $38
    db $10
    rst $38
    ld a, [$3bff]
    rst $38
    ccf
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    nop
    db $fc
    nop
    db $d3
    rlca
    scf
    rrca
    rst $30
    rrca
    di
    rrca
    ldh a, [rIF]
    rst $20
    rra
    add hl, de
    rst $20
    ld hl, sp+$07
    rlca
    rst $38
    db $fd
    inc bc
    db $fd
    inc bc
    db $fc
    inc bc
    ld a, [$4000]
    rlca
    nop
    rst $38
    nop
    rst $38
    cp a
    rst $38
    push af
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ldh [$1f], a
    rst $38
    nop
    and a
    ld e, b
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    inc a
    rst $38
    inc a
    rst $38
    ld a, $ff
    ccf
    rst $38
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld a, [hl-]
    rst $38
    ld a, [hl-]
    rst $38
    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    inc a
    rst $38
    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    inc a
    rst $38
    inc a
    rst $38
    inc a
    ei
    jr c, @+$01

    inc a
    ei
    ld a, [hl-]
    db $fd
    ld a, $f9
    ccf
    rst $38
    rrca
    di
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
    rlca
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ldh [$80], a
    ldh a, [$80]
    db $fc
    ld b, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr z, @+$01

    jp hl


    rst $38
    ld [hl], c
    rst $38
    db $fd
    rst $38
    db $fd
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
    jr jr_011_4594

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    rra
    rra
    jr nz, jr_011_45a6

    ld [hl+], a
    rra
    rra
    rra
    rra
    rra
    rra
    inc hl
    inc h
    dec h
    ld h, $1f
    rra
    rra
    rra

jr_011_4594:
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    daa
    jr z, jr_011_45c8

    ld a, [hl+]
    rra
    rra
    rra
    rra
    rra
    rra

jr_011_45a6:
    rra
    rra
    rra
    rra
    rra
    rra
    dec hl
    inc l
    dec l
    ld l, $1f
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
    cpl
    jr nc, jr_011_45f0

    ld [hl-], a
    rra
    rra
    rra
    rra
    rra
    inc sp
    inc [hl]
    dec [hl]

jr_011_45c8:
    ld [hl], $37
    jr c, jr_011_4605

    ld a, [hl-]
    dec sp
    inc a
    nop
    rra
    rra
    rra
    rra
    rra
    dec a
    nop
    ld a, $3f
    nop
    ld b, b
    ld b, c
    nop
    ld b, d
    ld b, e
    nop
    rra
    rra
    rra
    rra
    rra
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
    nop

jr_011_45f0:
    rra
    rra
    rra
    rra
    rra
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
    nop
    rra
    rra
    rra
    rra
    rra

jr_011_4605:
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
    rra
    rra
    rra
    rra
    rra
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    rra
    ld h, [hl]
    ld h, a
    ld l, b
    nop
    ld l, c
    ld l, d
    rra
    rra
    rra
    rra
    rra
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
    rra
    rra
    rra
    rra
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
    rra
    rra
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
    rra
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    add a
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    rra
    rra
    adc h
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    ld c, $a4
    and l
    and [hl]
    and a
    rra
    rra
    xor b
    xor c
    ld c, $9f
    xor d
    xor e
    xor h
    xor l
    xor l
    xor [hl]
    xor a
    xor a
    or b
    or c
    or d
    rra
    or e
    ld c, $9f
    xor d
    ld c, $b4
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
    sbc a
    xor d
    ld c, $c0
    pop bc
    jp nz, $c4c3

    rra
    rra
    push bc
    add $c7
    ld l, a
    ld a, h
    ld bc, $0601
    ld b, $06
    ld b, $06
    ld b, $06
    ld bc, $0101
    ld bc, $0606
    ld bc, $0101
    ld bc, $0606
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld b, $06
    ld b, $00
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
    nop
    nop
    nop
    nop
    ld bc, $0601
    ld b, $01
    ld b, $01
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0601
    ld b, $01
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0601
    ld b, $01
    ld b, $01
    ld bc, $0202
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0606
    ld b, $06
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0601
    ld b, $06
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0100
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
    ld bc, $0101
    ld bc, $0101
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld b, $01
    ld bc, $0101
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld b, $01
    ld bc, $0101
    ld bc, $0001
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0602
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld bc, $0101
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
    rst $38
    nop
    rst $38
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
    ret nz

    inc bc
    ldh a, [rP1]
    db $fc
    nop
    rst $38
    ld bc, $20fe
    rst $18
    add hl, bc
    or $c6
    add hl, sp
    ld [hl], e
    adc h
    inc a
    jp $f00f


    jp $f03c


    rrca
    ld a, $01
    add a
    ld b, b
    ret


    jr nc, @-$08

    ld [$c03f], sp
    rrca
    ldh a, [$03]
    db $fc
    ld b, b
    cp a
    ld a, b
    add a
    rst $28
    db $10
    rst $38
    nop
    cp a
    ld b, b
    cp $00
    ld a, b
    nop
    nop
    nop
    ret z

    nop
    ld a, b
    add b
    ld hl, sp+$00
    ld a, b
    add b
    ld h, b
    add b
    ld [hl], b
    add b
    ld h, d
    add b
    ldh a, [rP1]
    ldh [rP1], a
    ld [hl], h
    add b
    jr nz, @-$3e

    ld [hl], b
    add b
    ld [hl], b
    add b
    inc [hl]
    ret nz

    ld h, b
    add b
    ld a, b
    add b
    ld [hl], h
    add b
    ld a, l
    add b
    ld [hl], $c8
    ld a, a
    add b
    ld a, a
    add b
    ld a, l
    add d
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    add b
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

    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    ld a, a
    add b
    rst $38
    nop
    cp a
    ld b, b
    cp a
    ld b, b
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
    ldh [$3f], a
    ret nz

    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$00
    db $fc
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
    inc bc
    nop
    inc c
    inc bc
    ld [hl], b
    rrca
    add b

Call_011_48b7:
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
    ld a, a
    ld a, a
    ld e, a
    sbc a
    rst $30
    rlca

jr_011_4908:
    rst $38
    ld bc, $807f
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    rst $08
    jr nc, jr_011_4908

    inc c
    inc a
    jp Jump_011_708f


    ldh [$1f], a
    ccf
    rlca
    rst $08
    rlca
    di
    inc bc
    db $fc
    nop
    ld a, a
    add b
    rrca
    ldh a, [$81]
    ld a, [hl]
    ldh [$1f], a
    ld e, a
    rrca
    rra
    rrca
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    cp a
    ld e, a
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    cp a
    ld e, a
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
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    db $fc
    ccf
    ldh [$3f], a
    ret nz

    nop
    ld e, a
    nop
    ccf
    nop
    rra
    nop
    rrca
    nop
    rlca
    nop
    dec sp
    inc b
    jp Jump_000_023c


    db $fc
    nop
    db $fc
    nop
    db $fc
    ld bc, $03fc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld [bc], a
    db $fc
    ld bc, $01fc
    db $fc
    nop
    db $fc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rra
    rst $18
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

jr_011_4a01:
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
    rst $38
    rst $38
    rst $38
    cp $ff
    ldh a, [rIE]
    add b
    rst $38
    nop
    rst $38
    nop
    jr nz, jr_011_4a01

    nop
    rst $38
    ld [c], a
    dec e
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    ldh a, [rIF]
    ld b, $f9
    ld c, $f1
    inc e
    db $e3
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ld [$00f7], sp
    rst $38
    ld hl, $3ede
    pop bc
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ldh [$3f], a
    ret nz

    ld b, a
    cp b
    ld de, $00ee
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_011_4a63:
    rst $38
    nop
    rst $38
    ret nc

    cpl
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ld [hl], d
    adc l
    cp b
    ld b, a
    rst $38
    nop
    rra
    ldh [$03], a
    db $fc
    inc bc
    db $fc
    nop
    rst $38
    ld bc, $00fe
    rst $38
    jr nz, jr_011_4a63

    ret nz

    ccf
    add e
    ld a, h
    ld b, b
    cp a
    nop
    rst $38
    ld [bc], a
    db $fd
    inc b
    ei
    ldh a, [$8f]
    db $fc
    inc bc
    ld sp, hl
    ld b, $f0
    rrca
    ldh a, [rIF]
    and b
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
    ld [$3ff7], sp
    ret nz

    nop
    rst $38
    nop
    rst $38
    ld bc, $07fe
    ld hl, sp+$0e

jr_011_4ab3:
    pop af
    db $fc
    inc bc
    db $fc
    inc bc
    ldh [$1f], a
    nop
    rst $38
    nop
    rst $38
    rst $00
    jr c, jr_011_4b00

    ret nz

    rlca
    ld hl, sp+$00
    rst $38
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    inc c
    di
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_011_4ab3

    ld bc, $0ffe
    ldh a, [$1f]
    ldh [$7e], a

jr_011_4adb:
    add c
    ld hl, sp+$07
    inc b
    ei
    ld b, c
    cp [hl]
    nop
    rst $38
    rrca
    ldh a, [$fe]
    ld bc, $1ee1
    nop
    rst $38
    inc b
    ei
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    ld bc, $03fe
    db $fc
    nop
    rst $38
    jr nz, jr_011_4adb

    jr nz, @-$1f

    ldh [$1f], a

jr_011_4b00:
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
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
    rst $38
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
    db $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $f9
    cp $f0
    ld hl, sp-$08
    rst $38
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$01
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f7]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$f7], a
    add sp, -$03
    ld [c], a
    db $fc
    db $e3
    ld hl, sp-$19

jr_011_4b7e:
    db $f4
    db $eb
    rra
    ldh [$7f], a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $20
    jr jr_011_4b9a

    ldh a, [$9f]
    ld h, b
    ld a, b
    add a
    jp Jump_000_0f3c


    ldh a, [rIE]
    nop
    nop
    rst $38
    ret nz

    ccf

jr_011_4b9a:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, $c1
    rst $38
    nop
    ldh a, [rIF]
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
    nop
    nop
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
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    rst $38
    nop
    rst $18
    jr nz, jr_011_4b7e

    ld a, b
    add a
    ld a, b
    ld b, c
    cp [hl]
    nop
    rst $38
    nop
    rst $38
    cp $01
    ld hl, sp+$07
    ld bc, $08fe
    rst $30
    nop
    rst $38
    ld bc, $07fe
    ld hl, sp+$7f
    add b
    rrca
    ldh a, [$78]
    add a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$00
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
    rlca
    rst $38
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    di
    rrca
    ld bc, $0303
    rst $38
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    rst $38
    ei
    rlca
    ei
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ei
    rlca
    ei
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ei
    rlca
    ld sp, hl
    rlca
    ei
    rlca
    ei
    rlca
    ld sp, hl
    rlca
    ei
    rlca
    ei
    rlca
    ei
    rlca
    ld sp, hl
    ld b, $07
    nop
    ei
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
    rst $30
    dec bc
    ld a, a
    add e
    rrca
    di
    ld e, h
    and e
    dec sp
    call nz, $fc03
    rra
    ldh [rP1], a
    rst $38
    ld b, b
    cp a
    xor $11
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    adc a
    ld [hl], b
    ld a, [hl]
    add c
    cp $01
    cp h
    ld b, e
    ld a, b
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
    add d
    rst $38
    adc [hl]
    di
    sbc [hl]
    db $e3
    cp [hl]
    jp $c3be


    cp $83
    cp $81
    cp $81
    ei
    add b
    res 0, b
    jp $8380


    add b
    add c
    add b
    add c
    add b
    add c
    add b
    add c
    add b
    add c
    add b
    add c
    add b
    add c
    ret nz

    pop hl
    ldh [$e1], a
    ldh [$c1], a
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$c0], a
    ret nz

    pop bc
    ret nz

    pop bc
    ret nz

    add c
    ret nz

    add c
    ret nz

    add c
    ret nz

    add c
    ret nz

    add c
    ret nz

    add c
    ret nz

    add c
    ret nz

    add c
    ret nz

    pop bc
    cp $c0
    rst $38
    ret nz

    rst $38
    ldh [$9f], a
    ldh [$3f], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    nop
    sbc [hl]
    ld h, c
    add b
    ld a, a
    add b
    ld a, a
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rIF]
    nop
    rst $38
    rst $20
    jr @+$01

    nop
    cp $01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    ldh a, [rNR34]
    pop hl
    or e
    ld c, h
    sbc $21
    nop
    rst $38
    inc hl
    call c, $ff00
    ld [bc], a
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    rst $20
    rst $38
    rst $20
    rst $38
    rst $28
    ldh a, [rIE]
    ldh [rIE], a
    ldh [$7f], a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld e, a
    ret nz

    ld e, a
    ret nz

    ld e, a
    ret nz

    ld c, a
    ret nz

    ld c, a
    ret nz

    ld c, a
    ret nz

    ld c, a
    ret nz

    ld c, a
    ret nz

    ld c, a
    ret nz

    ld c, [hl]
    pop bc
    ld c, b
    rst $00
    ld c, a
    rst $00
    ld c, a
    rst $00
    ld b, a
    rst $00
    ld c, a
    rst $00
    ld c, a
    rst $00
    ld c, a
    rst $00
    ld c, a
    rst $00
    ld c, a
    rst $00
    ld c, a
    rst $00
    ld c, a
    rst $00
    ld c, a
    rst $00
    ld c, a
    rst $00
    ld c, a
    rst $00
    rst $08
    ld b, a
    rst $08
    ld b, a
    rst $08
    ld b, a
    ret nz

    ld c, a
    ldh [$5f], a
    ldh [$5f], a
    push af
    adc d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    ldh [$1f], a
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rrca
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $10
    rst $28
    nop
    rst $38
    ldh [$1f], a
    jp nz, Jump_000_003d

    rst $38
    nop
    rst $38
    ld a, [hl]
    add c
    ld e, $e1
    rrca
    ldh a, [rIE]
    nop
    rrca
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    inc bc
    db $fc
    db $10
    rst $28
    nop
    rst $38
    ld [hl+], a
    db $dd
    inc b
    ei
    jr nz, @-$1f

    inc bc
    db $fc
    db $10
    rst $28
    ld bc, $00fe
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld l, b
    sub a
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
    ldh a, [rIF]
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    ld bc, $00fe
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld bc, $80fe
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
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [rP1], a
    rst $38
    nop
    rst $38
    ld bc, $08fe
    rst $30
    add b
    ld a, a
    ld [de], a
    db $ed
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp-$05
    db $fc
    ei
    db $fc
    jp hl


    ld e, $eb
    inc e
    ret


    ld a, $ca
    dec a
    ret


    ld a, $8a
    ld a, l
    add hl, bc
    cp $08
    rst $38
    add hl, bc
    cp $08
    rst $38
    ld [$08ff], sp
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    cp $ff
    db $fd
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
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    db $fd
    rst $38
    cp $ff
    rst $38
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc de
    rst $28
    di
    dec c
    rst $38
    ld bc, $00ff
    ld a, a
    nop
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    cp $01
    jp $c03c


    ccf
    nop
    rst $38
    ld hl, sp+$07
    rst $38
    nop
    di
    inc c
    ccf
    ret nz

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
    ret nz

    ccf
    ld hl, sp+$07
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
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [$c0], a
    ccf
    call nz, Call_011_603b
    sbc a
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
    cp $ff
    cp $fc
    rst $38
    db $fc
    rst $38
    db $fc
    ei
    ld a, [$f4fd]
    dec bc
    cp $01
    db $fc
    inc bc
    ld a, [$fd05]
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    cp $0f
    db $fd
    rra
    cp $1f
    db $fc
    ccf
    ld a, d
    cp a
    ld [hl], h
    rst $38
    ld hl, sp-$01
    push af
    rst $38
    db $eb
    rst $38
    and $ff
    call z, $d8ff
    rst $38
    or b
    rst $38
    ld h, b
    rst $38
    call nz, $84ff
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    push bc
    rst $38
    push bc
    rst $38
    push hl
    rst $38
    push hl
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $30
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
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    rst $38
    rra
    rst $38
    rst $18
    ccf
    cpl
    rst $18
    rrca
    rst $38
    rlca
    rst $38
    add a
    ld a, a
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $c937
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, $f9
    rrca
    ldh a, [rTAC]
    ld hl, sp+$01
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    db $fc
    inc bc
    rst $38
    nop
    ld a, a
    add b
    rrca
    ldh a, [$03]
    db $fc
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
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
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
    add c
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rrca
    rrca
    ld c, $0f
    ld e, $1f
    inc a
    ccf
    jr c, jr_011_5079

    ld a, b
    ld a, a
    ld [hl], b
    ld a, a
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    ld bc, $83ff
    rst $38
    ld b, $ff
    inc c
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
    ld bc, $01ff
    rst $38
    ld bc, $05ff
    rst $38
    dec b
    rst $38
    rlca
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

jr_011_5079:
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    and e
    rst $38
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
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $20
    rst $38
    ei
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
    ld bc, $01ff
    rst $38
    nop
    rst $38
    pop hl
    ld e, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $ff
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
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ld e, $1f
    ld a, $3f
    inc a
    ccf
    ld a, b
    ld a, a
    ld a, b
    ld a, a
    ldh a, [rIE]
    ldh [rIE], a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    jr c, @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    cp h
    rst $38
    cp [hl]
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $28
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    db $fd
    rst $38
    cp $ff
    rst $38
    rst $38
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    pop hl
    rra
    inc bc
    rra
    inc bc
    rra
    rlca
    rra
    rlca
    rra
    rrca
    rra
    rrca
    rra
    rra
    ld a, $3f
    ld a, $3f
    ld a, h
    ld a, a
    ld a, b
    ld a, a
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld c, $ff
    inc e
    rst $38
    jr c, @+$01

    ld [hl], b
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
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    adc [hl]
    rst $38
    adc [hl]
    rst $38
    xor $ff
    xor [hl]
    rst $38
    ld l, $ff
    ld l, $ff
    ld a, $ff
    ld h, $ff
    ld b, $ff
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ret z

    rst $38
    add sp, -$01
    ld hl, sp-$01
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
    cp a
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $30
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
    rra
    rst $38
    ccf
    cp $3f
    db $fd
    ld a, a
    db $fc
    ld a, a
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
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
    ld c, $ff
    inc e
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    sbc h
    rst $38
    dec de
    rst $38
    cp e
    rst $38
    cp d
    rst $38
    ld hl, sp-$01
    ld a, b
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
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, [$faff]
    rst $38
    ld a, [$fbff]
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $20
    rst $38
    ei
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
    ld a, a
    rst $38
    ld a, a
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
    inc bc
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld hl, sp-$01
    db $e3
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
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
    ld l, a
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
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
    rst $00
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    jp $c3ff


    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    ld a, a
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    di
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
    rst $28
    rst $38
    rst $30
    rst $38
    ei
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
    cp $ff
    cp $ff
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    dec de
    rst $38
    scf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
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
    rst $38
    cp $ff
    ldh a, [rIE]
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
    add b
    rst $38
    sbc $ff
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
    ld bc, $00ff
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    sbc a
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    db $fc
    rst $38
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
    jr jr_011_5493

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_011_54a3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_011_54b3

    ld a, [hl+]
    dec hl
    inc l
    ld c, $2d
    ld l, $2f
    jr nc, jr_011_54c4

jr_011_5493:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $28
    scf
    jr c, jr_011_54d5

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b

jr_011_54a3:
    ld b, c
    ld b, d
    ld b, e
    ld [hl], $44
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

jr_011_54b3:
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld [hl], $5c
    ld e, l
    ld e, [hl]

jr_011_54c4:
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

jr_011_54d5:
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    inc d
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
    inc d
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

jr_011_5517:
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


    jp z, Jump_000_14cb

    call z, $cecd
    rst $08
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, $dcdb

    and b
    adc l
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
    adc l
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    cp $ff
    nop
    ld bc, $0302
    inc b
    adc l
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    adc l
    inc d
    dec d
    ld d, $17
    jr jr_011_5517

    adc l
    add hl, de
    ld a, [de]
    ld [hl], $1b
    inc e
    dec e
    ld e, $1f
    adc l
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_011_55c7

    ld a, [hl+]
    ld [hl], $01
    ld b, $06
    ld [bc], a
    ld b, $06
    ld b, $06
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    inc b
    ld [bc], a
    ld b, $00
    nop
    ld [bc], a
    ld b, $06
    ld b, $06
    ld b, $06
    ld bc, $0101
    ld bc, $0204
    ld b, $06
    ld b, $00
    nop

jr_011_55c7:
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    inc b
    ld [bc], a
    ld b, $06
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    dec b
    dec b
    ld b, $06
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    dec b
    dec b
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    dec b
    dec b
    ld [bc], a
    ld bc, $0302
    inc bc
    ld b, $02
    ld b, $01
    ld bc, $0101
    ld bc, $0500
    inc b
    ld [bc], a
    ld bc, $0002
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0501
    dec b
    dec b
    ld bc, $0201
    ld b, $06
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    dec b
    dec b
    dec b
    ld bc, $0200
    ld b, $06
    ld b, $01
    ld bc, $0101
    ld [bc], a
    ld bc, $0501
    dec b
    dec b
    ld bc, $0101
    ld b, $01
    ld bc, $0606
    ld bc, $0606
    ld b, $01
    dec b
    dec b
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld b, $06
    ld bc, $0606
    ld b, $02
    dec b
    dec b
    ld [bc], a
    ld bc, $0601
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $06
    ld b, $02
    ld [bc], a
    dec b
    dec b
    ld bc, $0201
    ld b, $00
    ld b, $02
    ld [bc], a
    ld bc, $0606
    ld b, $02
    ld [bc], a
    dec b
    inc b
    ld bc, $0401
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    ld bc, $0206
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld bc, $0001
    inc b
    ld [bc], a
    ld b, $06
    ld b, $01
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld bc, $0000
    inc b
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $0206
    ld a, [bc]
    ld a, [bc]
    inc c
    ld a, [bc]
    add hl, bc
    nop
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    add hl, bc
    add hl, bc
    nop
    dec c
    dec c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    ld a, [bc]
    dec c
    ld [bc], a
    ld a, [bc]
    ld a, [bc]
    inc c
    add hl, bc
    add hl, bc
    nop
    dec c
    dec c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec c
    ld [bc], a
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    rrca
    rrca
    jp $f803


    nop
    ld a, $c0
    rrca
    ldh a, [rSB]
    cp $00
    rst $38
    ret nz

    rst $38
    jr nc, jr_011_5747

    ld c, $0f
    ld bc, $0001
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
    ret nz

    ccf
    ldh [$1f], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    ld a, h
    add b
    db $fc
    add b
    db $fc
    add b
    cp [hl]
    ret nz

    sbc [hl]
    ret nz

    sbc [hl]
    ret nz

    adc $c0
    adc $c0
    rrca
    add b
    dec c
    nop
    dec e
    nop
    sbc a
    nop
    pop af

jr_011_5747:
    add b
    rst $38
    add b
    ld a, [$f8f1]
    pop af
    rst $38
    ldh a, [$f2]
    pop af
    di
    ldh a, [$f0]
    pop af
    pop af
    ldh a, [$f0]
    pop af
    ldh a, [$f1]
    pop af
    ldh a, [$f3]
    ldh a, [$f5]
    ld a, [c]
    db $f4
    di
    db $f4
    di
    push af
    ld a, [c]
    db $fc
    di
    db $fc
    di
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
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
    rst $38
    ldh [rIE], a
    add b
    cp a
    ld b, b
    rrca
    ldh a, [rSB]
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $c3
    db $fc
    pop af
    cp $8f
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld hl, sp+$7f
    add b
    ld l, $d1
    ccf
    ret nz

    ld [hl], a
    adc b
    ccf
    ret nz

    inc a
    jp $c33c


    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    cp $e7
    rst $38
    pop hl
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [$f0]
    cp $fe
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
    add a
    ld a, a
    pop hl
    ld bc, $8078
    ld c, $f0
    inc bc
    db $fc
    nop
    rst $38
    ret nz

    rst $38
    ld [hl], b
    ld a, a
    ld c, $0f
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
    nop
    nop
    rst $38
    sub b
    ld l, a
    ld b, $f9
    ld [hl], c
    adc [hl]
    inc e
    db $e3
    ld c, [hl]
    or c
    ld hl, $d4de
    dec hl
    db $fd
    nop
    cp e
    nop
    or a
    nop
    rst $38
    nop
    adc h
    nop
    ld a, $c0
    ret nz

    nop
    add b
    nop
    ld a, h
    add b
    ldh [rP1], a
    ret nz

    nop
    ldh [rP1], a
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    db $ec
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    rst $28
    nop
    ld l, h
    add b
    ld l, [hl]
    add b
    ld l, a
    add b
    ld l, a
    add b
    ld l, [hl]
    add b
    ld h, [hl]
    add b
    rst $20
    nop
    rst $28
    nop
    xor $00
    ld l, [hl]
    add b
    xor $00
    rst $28
    nop
    ld e, a
    add b
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    ld e, [hl]
    add b
    ld a, a
    add b
    ld l, [hl]
    add b
    ccf
    ret nz

    rra
    ldh [$c7], a
    nop
    db $e3
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rIF]
    add b
    ld a, a
    add c
    ld a, [hl]
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
    db $fd
    ld [bc], a
    rst $10
    jr z, @+$01

    rlca
    ld hl, sp+$3f
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
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc l
    db $d3
    ld a, h
    add e
    ld hl, sp+$07
    ldh a, [rIF]
    jp $873c


    ld a, b
    rra
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    rst $18
    ld l, a
    rst $18
    ld h, a
    rst $18
    ld h, e
    rst $18
    ld h, c
    rst $18
    pop hl
    rst $18
    pop af
    ld e, a
    db $fd
    ld c, a
    rst $38
    ld b, e
    ld b, e
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    pop bc
    pop bc
    ld sp, hl
    ld sp, hl
    db $fd
    db $fd
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
    add e
    inc bc
    ldh [rP1], a
    inc a
    ret nz

    rlca
    ld hl, sp+$01
    cp $80
    rst $38
    jr nc, @+$41

    ld c, $0f
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
    ld bc, $0301
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    db $f4
    rrca
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ld a, $c0
    ccf
    ldh a, [$0e]
    ldh a, [$0d]
    ldh [rNR30], a
    ret nz

    dec [hl]
    add b
    ld a, d
    nop
    push af
    nop
    ld a, [$f400]
    nop
    ld [$d400], a
    nop
    add sp, $00
    call nc, $a800
    nop
    ld d, b
    nop
    and b
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
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    cp $ff
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
    ld c, $ff
    ldh a, [rIE]
    rrca
    ldh a, [rIE]
    rrca
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rrca
    db $ec
    rra
    ld [$0eff], sp
    rst $38
    add hl, sp
    rst $08
    cp b
    ld c, a
    xor b
    ld e, a
    cp c
    ld c, a
    xor [hl]
    ld e, a
    cp b
    ld c, a
    ld a, b
    adc a
    ldh a, [$1f]
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    rst $18
    jr nz, @+$01

    nop
    ld e, a
    and b
    db $fc
    inc bc
    ld h, b
    sbc a
    ld bc, $01fe
    cp $38
    rst $00

jr_011_59c2:
    ld a, a
    add b
    cp $01
    rst $38
    nop
    ei
    inc b
    pop af
    ld c, $e0
    rra
    ldh [$1f], a
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ld hl, sp+$7f
    db $fc
    ld a, a
    cp a
    ld a, a
    sbc a
    ld a, e
    adc a
    ld a, e
    adc l
    ld a, e
    adc h
    ld a, e
    db $ec
    ld a, e
    db $fc
    dec de
    db $fc
    dec bc
    rst $38
    dec bc
    rst $38
    ld [$c8ff], sp
    rst $38
    ld hl, sp-$08
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    adc a
    ld a, a
    pop hl
    rra
    jr c, jr_011_59c2

    ld c, $f0
    inc bc
    db $fc
    add b
    rst $38
    ld [hl], b
    ld a, a
    ld c, $0f
    ld bc, $0001
    inc bc
    nop
    rra
    rrca
    ld [hl], b
    ccf
    ret nz

    add b
    add b
    ldh [$e0], a
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ld [$5400], a
    nop
    xor b
    nop
    ld d, b
    nop
    add b
    nop
    ld b, b
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
    nop
    nop
    nop
    ccf
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    daa
    rst $38
    jr c, @+$01

    inc bc
    db $fc
    ld a, a
    add e
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ret nz

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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    cp $3f
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $00
    jr c, jr_011_5ac8

    ldh [$7f], a
    add b
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    rlca
    ld hl, sp-$10
    rrca
    cp $01
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

jr_011_5ac8:
    nop
    nop
    add b
    add b
    and $e6
    push af
    rst $30
    rst $38
    cp $5f
    ld a, a
    ld c, a
    ld l, a
    ld b, a
    ld h, l
    ld b, a
    ld h, h
    rst $00
    db $e4
    rst $00
    db $e4
    ld e, a
    db $fc
    ld e, a
    db $fc
    ld b, a
    db $fc
    ld b, a
    db $fc
    rst $00
    db $fc
    rst $20
    db $fc
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rra
    rra
    rst $00
    rlca
    pop af
    ld bc, $c03e
    rlca
    ld hl, sp-$7f
    cp $70
    rst $38
    inc c
    rst $38
    add e
    ld a, a
    db $fc
    nop
    ld a, a
    nop
    rra
    nop
    rrca
    nop
    rlca
    nop
    db $e3
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
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
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    di
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    ld [hl], e
    rst $38
    add e
    rst $38
    rra
    db $e3
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc e
    rst $38
    ldh [rIE], a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $00
    rst $38
    ld b, $f9
    xor $11
    adc a
    ld [hl], b
    rra
    ldh [$3f], a
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [$1f], a
    inc bc
    db $fc
    rst $38
    nop
    rst $38
    nop
    cp $01
    adc h
    ld [hl], e
    ld bc, $00fe
    rst $38
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
    inc b
    db $fd
    ld c, $f8
    sbc a
    db $fc
    ld a, a
    db $fc
    rst $38
    db $fc
    rst $18
    db $fc
    rst $38
    cp h
    rst $38
    cp h
    rst $18
    cp h
    rst $18
    cp h
    rst $18
    cp h
    rst $18
    cp h
    rst $18
    cp h
    rst $18
    cp h
    rst $18
    cp h
    rst $18
    cp h
    rst $18
    cp h
    rst $18
    cp h
    rst $18
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
    sbc a
    rra
    db $e3
    inc bc
    add hl, sp
    pop bc
    dec c
    ldh a, [$82]
    db $fd
    ldh a, [$7f]
    ld a, h
    rrca
    cp a
    ld bc, $00df
    rst $28
    nop
    adc a
    ld [hl], b
    rlca
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    ld a, h
    inc bc
    ld a, h
    ld bc, $013e
    ld a, $01
    ld a, $01
    ld e, $01
    ld e, $00
    rra
    nop
    rra
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    rra
    pop af
    cp $f1
    cp $f1
    cp $f1
    cp $f1
    cp $f3
    db $fc

jr_011_5c30:
    pop af
    cp $f1
    cp $f1
    cp $f1
    cp $f1
    cp $f1
    cp $f1
    cp $f1
    cp $f1
    cp $e3
    db $fc
    jp $80fc


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
    ld h, b
    rst $38
    jr @+$01

    ld [hl], a
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    add a
    ld hl, sp+$78
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$07
    ld hl, sp+$01
    cp $00
    rst $38
    rlca
    ld hl, sp+$03
    db $fc
    ld a, [bc]
    push af
    rst $38
    nop
    ei
    inc b
    cp $01
    ld a, a
    add b
    dec de
    db $e4
    rra
    ldh [$d9], a
    ld h, $f7
    ld [$00ff], sp
    rst $30
    ld [$817e], sp
    ld hl, sp+$07
    di
    inc c
    rst $00
    jr c, jr_011_5c30

    ld h, b
    ccf
    ret nz

    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    rlca
    ld hl, sp+$07
    ld hl, sp+$00
    add b
    nop
    ret nz

    nop
    add b
    inc bc
    add e
    ccf
    cp a
    ld a, a
    rst $38
    ld a, h
    db $fc
    ld [hl], b
    cp b
    ld [hl], h
    sbc h
    db $76
    sbc [hl]
    db $76
    sbc d
    db $76
    sbc d
    db $76
    sbc d
    db $76
    sbc d
    db $76
    sbc d
    ld [hl], a
    sbc e
    ld [de], a
    ld [de], a
    inc de
    inc de
    sub a
    sub a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    ldh [$1f], a
    nop
    rst $38
    nop
    rst $38
    rra
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
    db $fc
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld a, b
    inc bc
    ld a, h
    rlca
    ld a, b
    rlca
    ld a, b
    rrca
    jr nc, jr_011_5d24

    jr nz, jr_011_5d26

    ccf
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

jr_011_5d14:
    sbc a
    rra
    sbc a
    rra
    sbc a
    rra
    sbc a
    ccf
    sbc a
    rra
    cp a
    rra
    rst $38
    rra
    rst $38
    rra

jr_011_5d24:
    cp a
    ld e, a

jr_011_5d26:
    rst $38
    rra
    cp a
    ld e, a
    rst $38
    rra
    rst $38
    rra
    cp a
    ld e, a
    rst $38
    rra
    rra
    rrca
    ccf
    inc bc
    rst $20
    ld a, [de]
    sub [hl]
    ld l, e
    or $0b
    or $0b
    rst $30
    dec bc
    cp $03
    cp $07

jr_011_5d44:
    ld hl, sp+$3f
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    pop af
    ld c, $7f
    add b
    inc bc
    db $fc
    ld hl, sp+$07
    cp $01
    cp $01
    ld a, a
    add b
    rst $30
    ld [$00ff], sp
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    rrca
    ldh a, [$1f]
    ldh [rIE], a
    nop
    db $fc
    inc bc
    ld sp, hl
    ld b, $e7
    jr jr_011_5d44

    jr nc, jr_011_5db6

    ret nz

    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, @-$2f

    jr nc, jr_011_5d14

    ld [hl], b
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    xor a
    nop
    ld d, l
    nop
    ld a, [bc]
    nop
    dec d
    nop
    ld a, [bc]
    nop
    dec b
    nop
    ld [bc], a
    nop
    ld bc, $0002
    inc bc
    inc bc
    ccf
    ccf
    rst $38
    rst $38
    ld hl, sp-$04
    adc b
    call z, $cc88
    adc b
    call z, $ccbb
    cp e
    call z, $ccbb

jr_011_5db6:
    cp e
    call z, $ccbb
    cp e
    call z, $ccbb
    cp e
    rst $08
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
    add b
    rst $38
    rlca
    rst $38
    rst $38
    nop
    rst $38
    nop
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
    ccf
    rst $38
    rrca
    rst $38
    ld bc, $609f
    rlca
    ld hl, sp+$07
    ld hl, sp-$1d
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rrca
    ld a, a
    ld bc, $012f
    rla
    nop
    dec bc

jr_011_5dfa:
    nop
    rlca
    nop
    dec bc
    nop
    rlca
    nop
    inc bc
    nop
    dec b
    ld bc, $0003
    dec b
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
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld a, e
    rst $38
    ld c, d
    rst $38
    ld c, d
    rst $38
    ld c, d
    rst $38
    ld c, e
    rst $38
    ld a, b
    rst $38
    inc bc
    db $fc
    ccf
    jp Jump_000_3fff


    rst $38
    rst $38
    pop af
    rst $38
    ld bc, $01ff
    rst $38
    nop
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
    ld [$00ff], sp
    rst $38
    ld b, $f9
    rra
    ldh [rIE], a
    nop
    rst $38
    nop
    rrca
    ldh a, [rSVBK]
    adc a
    rst $38
    nop
    ld sp, hl
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    ei
    inc b
    rst $20
    jr jr_011_5dfa

    ld [hl], b
    ccf
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
    rst $28
    db $10
    rst $28
    db $10
    ldh [$3f], a
    ldh a, [$1f]
    ld hl, sp+$0f
    db $fc
    rlca
    cp h
    rlca
    ld a, [hl]
    inc bc
    cp [hl]
    inc bc
    ld e, a
    ld bc, $3fbf
    rst $38
    rst $38
    db $fd
    or $9d
    add $ad
    add $9d
    add $ad
    add $9d
    add $bd
    add $9d
    add $bd
    add $9d
    add $bd
    add $9d
    add $bf
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    rlca
    ld hl, sp-$02
    ld bc, $3fc0
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    ld a, a
    add a
    ld a, a
    pop bc
    ccf
    ldh [$9f], a
    ldh [$df], a
    ldh a, [$c0]
    ldh a, [$e0]
    ldh a, [$e0]
    ldh a, [$e1]
    pop af
    ldh [$99], a
    ldh [$89], a
    ldh a, [$89]
    ldh a, [$89]
    ldh a, [$89]
    ldh a, [$8f]
    pop af
    adc a
    pop af
    sub l
    db $e3
    add c
    di
    sub c
    db $e3
    add c
    di
    sub l
    db $e3
    add c
    di
    add l
    di
    add l
    di
    add l
    di
    add l
    di
    adc l
    di
    adc l
    di
    adc l
    di
    adc l
    di
    adc l
    di
    adc l
    di
    adc l
    di
    rst $18
    and c
    adc a
    ld [hl], b
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$cf]
    di
    inc a
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
    ldh [rTAC], a
    ld hl, sp+$07
    ld hl, sp+$2f
    ret nc

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, $c1
    ret nz

    ccf
    di
    inc c
    rst $20
    jr @-$5f

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
    cp a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rlca
    db $fd
    inc bc
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $3fff
    rst $38
    rst $38
    rst $38
    db $ed
    rst $38
    pop hl
    rst $38
    pop hl
    ld a, a
    pop hl
    ccf
    pop hl
    ccf
    rst $28
    ccf
    rst $28
    ld sp, $31ef
    rst $28
    ld sp, $31ef
    rst $28
    ld sp, $31ef
    rst $28
    scf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    rra
    ldh [$f8], a
    rlca
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ccf
    rst $00
    rlca
    ld a, c
    ld b, e
    cp h
    db $e3
    inc e
    pop af
    ld c, $f1
    ld c, $f1
    ld c, $f1
    ld c, $e1
    ld c, $f1
    ld c, $e1
    ld c, $1f
    ldh [$ef], a
    ldh [$1f], a
    ldh [$ef], a
    ldh [rIF], a
    pop hl
    rrca
    pop hl
    dec bc
    di
    rrca
    di
    set 6, e
    rst $38
    di
    rrca
    pop af
    pop af
    rst $38
    rrca
    di
    rrca
    di
    adc a
    di
    adc a
    di
    adc a
    di
    rst $08
    di
    rst $38
    pop af
    rst $38
    pop af
    cp $f1
    cp $f1
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
    ld bc, $00fe
    rst $38
    ld [$ff15], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld sp, hl
    ld b, $f7
    ld [$30cf], sp
    cp a
    ld b, b
    ld a, a
    add b
    rst $38

Call_011_603b:
    nop

Jump_011_603c:
    inc bc
    db $fc
    db $fc
    inc bc
    rst $38
    nop
    db $fd
    ld [bc], a
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
    rst $38
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
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor e
    ld a, a
    rst $18
    rst $38
    rst $38
    ei
    rst $38
    ld a, c
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    dec de
    rst $38
    ld a, e
    db $ed
    ld a, e
    adc l
    ld a, e
    adc l
    ld a, e
    adc l
    ld a, e
    adc l
    ld a, e
    adc l
    ld a, e
    adc l
    ld a, a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    ld hl, sp-$02
    ld bc, $3fc0
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
    ldh a, [rIE]
    db $eb
    db $f4
    add $f9
    add c
    cp $0f
    ldh a, [$1f]
    ldh [$3e], a
    ret nz

    rra
    ldh [rNR34], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$6f], a
    sub b
    ret nz

    ccf
    ret nz

    ld a, a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_011_60e7:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_011_60f7:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $02ff
    cp $05
    db $fc
    inc c
    ei
    inc c
    ei
    inc c
    ei
    inc c
    ei
    ld a, h
    adc e

jr_011_610c:
    inc c
    ei
    ld a, h
    adc e
    db $fc
    dec bc
    ld a, h
    adc e
    ld a, h
    adc e
    jr c, jr_011_60e7

    rst $08
    jr c, jr_011_60f7

    daa
    ccf
    jp Jump_000_00ff


    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $08
    nop
    adc a
    jr nz, jr_011_610c

    nop
    rrca
    ldh a, [$f0]
    rrca
    rst $38
    nop
    ld sp, hl
    nop
    call nc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop

jr_011_613e:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    db $fc
    ld bc, $02fd
    db $fd
    ld [bc], a
    ei
    inc b
    rst $30
    ld [$10ef], sp
    rst $28
    db $10
    rst $18
    jr nz, jr_011_613e

    jr nz, @+$01

    ld d, l
    cp a
    ld [$f7df], a
    rst $38
    rst $38
    rst $38
    rst $38
    jp hl


    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    rst $20
    rst $38
    rst $28
    ld sp, hl
    rst $28
    pop af
    rst $28
    pop af
    rst $28
    pop af
    rst $28
    pop af
    rst $28
    pop af
    pop hl
    pop hl
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
    ldh [$fe], a
    ld bc, $ff00
    nop
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
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    ld a, h
    rst $38
    ld [hl], d
    rst $38
    rst $10
    rst $38
    db $fc
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    add sp, -$01
    ret nc

    rst $38
    ldh [rIE], a
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
    add b
    rst $38
    sub b
    rst $28
    adc b
    rst $30
    add h
    ei
    add d
    db $fd
    add c
    cp $83
    db $fc
    add c
    cp $81
    cp $34
    ret nz

    ld l, b
    add b
    ld a, $c0
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_011_61f8:
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
    cp b
    ld b, a
    db $fc
    inc bc
    inc bc
    db $fc
    ldh a, [rIE]
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
    ccf
    nop
    inc de
    ld b, b
    add b
    ld [$e010], sp
    jp hl


    ld d, $2b
    nop
    ld b, c
    nop
    add sp, $01
    db $fd
    ld [bc], a
    ei
    inc b
    ei
    inc b
    rst $30
    ld [$10ef], sp
    xor a
    db $10
    add a
    jr nz, jr_011_61f8

    ld b, b
    ld a, a
    add b
    ccf
    add b
    cp a
    nop
    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld d, a
    rst $38
    cp a
    db $fd
    rst $38
    ld a, h
    rst $38
    ld b, h
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    dec b
    rst $38
    ld a, l
    cp $7d
    add [hl]
    ld a, l
    add [hl]
    ld a, l
    add [hl]
    ld a, l
    add [hl]
    ld a, l
    add [hl]
    ld a, l
    add [hl]
    ld a, l
    add [hl]
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
    db $fc
    rst $38
    add b
    rst $38
    rlca
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
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, a
    cp a
    ld a, a
    sbc a
    rst $28
    rra
    rst $38
    rra
    rra
    rst $38
    ld sp, $f8fe
    rst $38
    inc a
    rst $38
    cp $7f
    rst $38
    ld a, a
    pop bc
    ld a, a
    rst $38
    ld b, b
    rst $00
    ld b, b
    pop bc
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    cp $41
    ret nz

    ld a, a
    rst $38
    ld b, b
    cp $40
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    db $fd
    ld b, d
    rst $38
    ld [hl], b
    ld a, b
    ld [$063d], sp
    dec b
    ld e, $64
    sbc a
    ld b, h
    cp a
    ld b, h
    cp a
    ld b, h
    cp a
    ld c, [hl]
    or l
    ld c, [hl]
    or l
    ld c, a
    or h
    ld c, a
    or h
    ld l, [hl]

jr_011_62f3:
    sub l
    ld e, h
    add a
    ld a, [hl]
    add l
    ld a, a
    sbc b
    ld [c], a
    jr nz, jr_011_633d

    ret nz

    ldh [$80], a
    rst $38
    nop
    cp $01
    push af
    ld [bc], a
    di

jr_011_6307:
    inc b
    ld a, [$f704]
    ld [$10ef], sp
    cpl
    stop

jr_011_6311:
    jr nz, jr_011_62f3

    nop
    xor h
    ld d, d
    ld [bc], a
    add c
    nop
    nop
    add b
    nop
    ld hl, sp+$00
    cp $00
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_011_632d:
    nop
    db $fc
    inc bc
    ei
    inc b
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01

jr_011_633c:
    add a

jr_011_633d:
    ld a, b
    add a
    ld a, b
    rst $38
    rst $38
    ld hl, sp-$01
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld de, $17ff
    cp $f2
    ld hl, sp+$54
    jr @-$4e

    jr jr_011_63a9

    jr jr_011_6307

    jr jr_011_632d

    jr jr_011_6311

    jr jr_011_633c

    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rrca
    ldh a, [rIE]
    nop
    ret nz

    ccf
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $7e
    cp $3e
    ld a, [hl]
    sbc a
    ld a, $cf
    ld e, $e7
    sbc a
    rst $20
    adc l
    pop af
    ret nz

    ld a, b
    ldh [$38], a
    nop
    nop
    inc bc
    ld bc, $0706
    rra
    rrca
    rra
    rra
    ccf

jr_011_63a9:
    ccf
    ld a, a
    ccf
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
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
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
    cp a
    ld a, a
    rst $38
    ccf
    add b
    ld a, a
    rlca
    ld hl, sp+$02
    db $fd
    sbc [hl]
    ld h, c
    ldh [$1f], a
    ld a, [c]
    dec c
    ld a, [hl]
    add c
    db $fd
    ld [bc], a
    swap h
    ld a, e
    add h
    rst $30
    ld [$f00f], sp
    call Call_000_1f32
    jr nz, jr_011_6432

    nop
    add b
    nop
    ld b, d
    add b
    cp $00
    ld a, a
    nop
    db $fd
    nop
    db $fc
    nop
    rst $38
    nop
    ld a, [c]
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld d, a
    xor b
    rrca
    nop
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    add c
    ld a, [hl]
    rst $28
    db $10
    rrca
    ldh a, [$fc]
    inc bc
    ret nz

    ccf
    cp a
    ld b, b
    rst $38
    nop
    nop
    rst $38
    ld [c], a
    dec e
    rra
    ldh [$87], a
    ld a, b
    ldh a, [rIF]
    ld a, h
    add e
    cp a
    ld b, b
    sbc a
    ld h, b
    sbc a
    ld h, b

jr_011_6430:
    ldh [rIE], a

jr_011_6432:
    jr nz, @+$01

jr_011_6434:
    jr nz, @+$01

jr_011_6436:
    inc hl
    rst $38

jr_011_6438:
    inc l
    db $fc
    ldh [$f0], a
    and b
    jr nc, jr_011_645f

    jr nc, jr_011_6430

    jr nc, jr_011_6432

    jr nc, jr_011_6434

    jr nc, jr_011_6436

    jr nc, jr_011_6438

    scf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    pop bc
    cp $3f
    ret nz

    db $fc
    inc bc
    add b
    ld a, a
    nop
    rst $38
    nop

jr_011_645f:
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
    rst $38
    rst $38
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
    db $d3
    rst $38
    reti


    rst $38
    ld [$aaff], a
    xor d
    rst $38
    rst $38
    dec sp
    dec sp
    ld a, [bc]
    ld a, [bc]
    set 1, e
    di
    ld [hl], e
    ld a, $de
    ld c, $f6
    inc bc
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
    ld a, b
    add a
    add a
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ld hl, sp-$01
    cp $ff
    dec b
    rst $38
    reti


    ld h, $97

jr_011_64b5:
    ld l, b
    ccf
    ret nz

    ld b, a
    cp b
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    jr c, jr_011_64d0

jr_011_64d0:
    ld [$18f7], sp
    rst $20
    jr nz, jr_011_64b5

    ld [bc], a
    db $fd
    ld de, $61ee
    sbc [hl]
    dec d
    ld [$7986], a
    ld h, b
    sbc a
    ld b, b
    cp a
    ret nz

    ccf
    add b
    ld a, a
    ldh a, [rIF]
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
    ld d, b
    xor a
    rst $38
    nop
    ld hl, sp+$07
    inc e
    db $e3
    rra
    ldh [$b9], a
    ld b, [hl]
    rst $38
    nop
    ccf
    ret nz

    inc sp
    call z, Call_011_48b7
    rst $38
    nop
    rst $38
    nop
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld e, a
    rst $38
    rst $18
    ldh [$df], a
    ld h, b
    rst $18
    ld h, b
    rst $18
    ld h, b
    rst $18
    ld h, b
    rst $18
    ld h, b
    rst $18
    ld h, b
    rst $18
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
    ldh [rIE], a
    rra
    ldh [rIE], a
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
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_011_6546:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    add b
    add b
    ldh [$e0], a
    ccf
    ld hl, sp-$31
    db $fc
    di
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    db $f4
    rst $38
    or e
    rst $38
    or a
    rst $38
    cp a
    cp a
    add $c6
    ld a, d
    cp d
    inc e
    db $fc
    rrca
    rst $30
    inc bc
    rst $38
    ld bc, $00fe
    rst $38
    nop
    nop
    ret nz

    nop
    jr nz, jr_011_6546

    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    add e
    db $fc
    db $fd
    cp $fd
    cp $fd
    cp $fd
    db $fc
    rst $38
    db $fc
    db $fc
    cp $fc
    cp $fc
    cp $ff
    rst $38
    rst $38
    cp $ff
    rst $38
    cp $fe
    cp $fe
    db $fc

jr_011_65af:
    db $fc
    ld a, a
    db $fc
    db $db
    inc h
    ld a, a

jr_011_65b5:
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_011_65bd:
    nop
    rst $38
    nop
    rst $38
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
    rst $20
    jr jr_011_661e

jr_011_65cf:
    nop
    ld bc, $18fe
    rst $20
    ld [bc], a
    db $fd
    db $10
    rst $28
    ld b, b
    cp a
    ld h, b
    sbc a
    ld b, b
    cp a
    jr nc, jr_011_65af

    ld [$04f7], sp
    ei
    jr nc, jr_011_65b5

    ld a, b
    add a
    nop
    rst $38
    ret nz

    ccf
    ccf
    ret nz

    inc bc
    db $fc
    ldh [$1f], a
    ld [hl], b
    adc a
    jr c, jr_011_65bd

    jr z, jr_011_65cf

    rlca
    ld hl, sp+$1c
    db $e3
    db $fc
    inc bc
    ldh a, [rIF]
    ret nz

    ccf
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    ld hl, sp+$07
    jp nz, $c03d

    ccf
    ret nz

    ccf
    rst $08
    rst $38
    cp a
    ldh a, [$bf]
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

jr_011_661e:
    cp a
    ret nz

    cp a
    ret nz

    cp a
    rst $00
    rst $38
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
    ld a, a
    add b
    cp $01
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
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ld a, a
    ldh a, [$9f]
    db $fc
    ld b, a
    cp $3d
    rst $38
    adc h
    adc h
    rst $08
    rst $08
    jp hl


    jp hl


    xor $ee
    ld c, a
    ld c, a
    sbc e
    sbc e
    db $eb
    db $eb
    ld [hl], e
    or e
    add hl, de
    ld sp, hl
    ld c, $f6
    rlca
    ld sp, hl
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    add e
    ld a, h
    nop
    add c
    nop
    add c
    nop
    add c
    inc bc
    add b
    inc bc
    add b
    nop
    add a
    dec c
    rst $38
    ld c, $7f
    rrca
    ei
    rra
    jp hl


    rrca
    rst $28
    rst $30
    scf
    ld hl, sp-$38
    rst $38
    ccf
    rst $38
    rra
    rra
    rst $38
    rst $38
    ld e, $ff
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    di
    ld [bc], a
    ei
    ld [bc], a
    ei
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    ld a, a

jr_011_66b3:
    add [hl]
    ld a, a

jr_011_66b5:
    add [hl]
    ld a, a

jr_011_66b7:
    adc a
    cp a

jr_011_66b9:
    ld e, a
    cp a

jr_011_66bb:
    ld a, b
    cp a
    ld [hl], b
    cp a
    ld b, d
    ccf
    ld b, b
    ld b, b
    nop
    ld b, e
    nop
    ld b, b
    nop
    ld b, d
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    sbc a
    jr nz, jr_011_66b3

    jr nz, jr_011_66b5

    jr nz, jr_011_66b7

    jr nz, jr_011_66b9

    jr nz, jr_011_66bb

    or b

jr_011_66dd:
    ld c, a
    cp $01
    scf

jr_011_66e1:
    ret z

    jr nc, jr_011_66b3

    jr nc, jr_011_66b5

    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    jr @-$17

    jr @-$17

    jr @-$17

    jr jr_011_66dd

    jr @-$17

    jr jr_011_66e1

    ret z

    scf
    inc e
    db $e3
    inc e
    db $e3
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
    pop bc
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
    ldh a, [rIE]
    nop
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
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    xor $f3
    ld c, $f3
    ld c, $f3
    ld c, $f3
    ld c, $f3
    ld c, $f3
    ld c, $f3
    ld c, $f3
    ld c, $f3
    ld c, $f3
    ld c, $f2
    rrca
    di
    rrca
    ld a, [c]
    rrca
    rst $38
    rst $38
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    di
    di
    pop af
    pop af
    ld a, c
    ld a, c
    ld a, b
    ld a, b
    db $fc
    db $fc
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, [hl]
    ld a, [hl]
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rst $28
    rrca
    rst $28
    rrca
    rrca
    adc a
    rst $38
    rst $38
    sbc a
    cp a
    rst $38
    rst $38
    sbc a
    ld a, a
    rst $38
    rst $38
    rst $38
    ld hl, sp+$6b
    ld l, e
    rst $38
    rst $38
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
    sbc a
    sbc a
    sbc a

jr_011_679a:
    adc a
    adc a
    add a
    add a
    add a
    add a
    add e
    add e
    pop bc
    add c
    ret nz

    add b
    ldh a, [$e0]
    ldh a, [$e0]
    jr c, jr_011_67dc

    ld e, $1e
    add b
    nop
    add b
    nop
    nop
    ret nz

    add b
    ld b, b
    nop
    ldh [rP1], a
    ldh [$80], a
    ld [hl], b
    nop
    ldh a, [rSVBK]

jr_011_67bf:
    adc b
    jr nz, jr_011_679a

    ld b, b
    cp b
    add b
    ld a, h
    nop
    db $fc
    nop
    cp $70

jr_011_67cb:
    adc [hl]
    add hl, de
    and $00
    rst $38
    ldh a, [rIF]
    rrca
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    ld e, $e1
    inc e
    db $e3

jr_011_67dc:
    ret nz

    ccf
    jr nz, jr_011_67bf

    jr c, @-$37

    jr jr_011_67cb

    ld b, $f9
    inc bc
    db $fc
    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    cp a
    jp $c3bf


    cp a
    jp $c3bf


    cp a
    jp $c3bf


    cp a
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    add c
    cp $7f
    add b
    rst $38
    nop
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
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    inc de
    ld a, [de]
    ld e, $1e
    rra
    rra
    dec de
    rra
    dec de
    rra
    rra
    ld e, $1f
    ld e, $1e
    inc d
    rra
    rra
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
    rst $38
    cp [hl]
    cp [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, l
    ld l, l
    dec e
    dec e
    sub a
    sub a
    cp a
    cp a
    xor e
    xor e
    rst $18
    rst $18
    ld c, c
    ld c, c
    ld l, e
    ld l, e
    inc l
    inc l
    ccf
    ccf
    nop
    nop
    rra
    rra

jr_011_685c:
    rlca
    rlca
    adc a
    adc a
    jp $c7c3


    rst $00
    rst $08
    rst $08
    rst $28
    rst $28
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
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    rst $38
    rra
    rst $38
    inc bc
    rst $38
    inc bc
    db $fc
    ld bc, $01fe
    cp $00
    rst $38
    nop
    rst $38
    add b
    nop
    add b
    nop
    add b
    nop
    ld b, b
    add b
    nop
    ret nz

    jr nz, jr_011_685c

    nop
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [$08], a
    ldh a, [$08]
    ldh a, [rDIV]
    ld hl, sp+$0c
    ldh a, [rNR34]
    ldh [$7e], a
    add b
    ld a, [hl]
    add b
    rst $20
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$19
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
    ld hl, sp-$01
    rlca
    ld hl, sp-$01
    nop
    ld hl, sp+$07
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
    db $fd
    ld [hl], c
    db $fd
    ld sp, $257f
    rst $30
    ld sp, hl
    rst $28
    db $fd
    push hl
    xor c
    push af
    jp hl


    ld sp, hl
    ld sp, hl
    rst $38
    ld a, e
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
    cp $ff
    ld a, [hl]
    ld a, [hl]
    ld l, d
    ld l, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld [$6eea], a
    ld l, [hl]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [$2afa]
    ld a, [hl+]
    add $c6
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    cp e
    cp e
    nop
    nop
    rst $38
    rst $38
    jp c, $e0da

    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    db $fd
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$e0], a
    ei
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    ld a, [c]

jr_011_6945:
    ld a, [c]
    rst $38
    rst $38
    rst $38
    rst $38
    di
    di
    ldh a, [$f0]
    db $fc
    db $fc
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

jr_011_695f:
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
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
    ld h, b
    sbc a
    jr nc, @-$2f

    jr nc, jr_011_6945

    jr jr_011_695f

    inc e
    db $e3
    inc c
    di
    ld b, $f9
    ld b, $f9
    inc bc
    db $fc
    inc bc
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
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $04
    rrca
    db $10
    ld de, $0404
    inc b
    inc b
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_011_69cd

    inc b
    inc b
    ld a, [de]
    dec de
    inc e
    inc b
    inc b
    dec e
    ld e, $1f
    jr nz, jr_011_69e1

    ld [hl+], a
    inc hl
    inc h
    dec h
    inc b
    ld h, $27
    jr z, jr_011_69f2

    ld a, [hl+]
    dec hl
    inc l
    dec l

jr_011_69cd:
    rra
    ld l, $2f
    jr nc, jr_011_6a03

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_011_6a13

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $1f
    ccf

jr_011_69e1:
    ld b, b
    ld b, c
    ld b, d
    inc [hl]
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

jr_011_69f2:
    rra
    ld d, b
    inc [hl]
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
    rra
    rra

jr_011_6a03:
    rra
    ld e, l
    ld e, [hl]
    ld b, h
    ld b, l
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    rra
    rra
    ld h, e
    ld h, h
    ld h, l
    rra
    rra

jr_011_6a13:
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
    inc l
    ld [hl], d
    rra
    rra
    rra
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
    rra
    rra
    rra
    add b
    add c
    rra
    ld b, l
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    rra
    rra
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
    rra
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
    rra
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$f1]
    rra
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
    inc b
    inc b
    db $10
    ld de, $0012
    nop

Jump_011_6ad2:
    nop
    nop
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
    dec b
    ld [bc], a
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
    ld [bc], a
    dec b
    ld [bc], a
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
    ld bc, $0201
    dec b
    ld [bc], a
    dec b
    dec b
    dec b
    nop
    nop
    nop
    ld [bc], a
    inc bc
    nop
    ld bc, $0101
    ld bc, $0502
    dec b
    dec b
    ld [bc], a
    dec b
    nop
    nop
    nop
    ld [hl+], a
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0507
    dec b
    dec b
    ld [bc], a
    dec b
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld b, $06
    ld bc, $0507
    dec b
    dec b
    ld [bc], a
    dec b
    nop
    nop
    nop
    inc b
    ld [bc], a
    inc hl
    ld bc, $0101
    ld b, $07
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    nop
    nop
    nop
    inc b
    ld [bc], a
    inc bc
    ld bc, $0606
    ld b, $07
    dec b
    dec b
    dec b
    ld b, d
    inc b
    nop
    nop
    nop
    inc b
    ld [bc], a
    inc bc
    inc bc
    ld b, $01
    ld b, $07
    dec b
    dec b
    dec b
    ld [bc], a
    inc b
    nop
    nop
    nop
    inc b
    ld [bc], a
    nop
    ld bc, $0101
    ld [bc], a
    rlca
    dec b
    dec b
    dec b
    ld [bc], a
    inc b
    nop
    nop
    inc b
    inc b
    ld [bc], a
    inc bc
    inc bc
    ld b, $01
    ld [bc], a
    rlca
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    nop
    nop
    inc b
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0101
    ld [bc], a
    rlca
    dec b
    dec b
    rlca
    ld [bc], a
    dec b
    nop
    inc b
    inc b
    inc b
    ld [bc], a
    ld bc, $0101
    ld b, $06
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0506
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b

jr_011_6bc3:
    dec b
    inc b
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    dec b

jr_011_6bcc:
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    dec b

jr_011_6bd1:
    dec b
    dec b

jr_011_6bd3:
    dec b
    ld [bc], a
    ld [bc], a

jr_011_6bd6:
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a

jr_011_6bdf:
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    ld a, [bc]
    dec c
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ret nc

    ret nc

    ret nc

    ret nc

    sub $d0
    ld d, [hl]
    ld d, b
    sub [hl]
    db $10
    cp a
    jr nc, jr_011_6c46

    jr nz, jr_011_6bc3

    jr nz, jr_011_6bdf

    jr nc, jr_011_6bd1

    jr nz, jr_011_6bd3

    jr nz, jr_011_6bd6

    inc hl
    xor l
    ld hl, $22aa
    ld d, d
    ld b, d
    jp nc, $c7c2

    rst $00
    ld b, h
    ld b, h
    add hl, hl
    jr z, jr_011_6c68

    jr nc, jr_011_6bcc

    sub b
    sbc d
    sbc b
    ret z

    ret z

    ret


    ret


    xor $ee
    db $e4
    db $e4
    db $fd
    db $fc

jr_011_6c46:
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_011_6c68:
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    nop
    ld [hl], a
    nop
    ld [hl], c
    nop
    ld [hl], c
    nop
    ld [hl], l
    nop
    ld [hl], l
    nop
    ld [hl], l
    nop
    ld [hl], l
    nop
    ld [hl], l
    nop
    ld [hl], l
    nop
    ld [hl], c
    nop
    ld [hl], c
    nop
    ld [hl], c
    nop
    ld [hl], a
    nop
    ld a, a
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    rlca
    ld hl, sp-$01
    nop
    rst $38
    nop
    ld hl, sp+$07
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fc
    db $fc
    cp $fe
    cp $fe
    cp [hl]
    cp [hl]
    cp [hl]
    cp [hl]
    cp a
    cp a
    cp a
    sbc a
    cp a
    adc a
    rst $18
    rst $08
    rst $28
    rst $28
    rst $38
    rst $38
    ccf
    ccf
    rrca
    rrca
    ld l, a
    dec bc
    cpl
    dec bc
    rst $08
    dec bc
    rst $08
    rrca
    rst $18
    rra
    ei
    dec sp
    sub a
    inc de
    rla
    ld de, $191b
    ei
    ei
    adc l
    adc l
    rlca
    rlca
    inc sp
    inc bc
    rst $30
    inc bc
    rst $30
    inc bc
    inc de
    inc bc
    di
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    ld bc, $01cf
    rst $00
    ld bc, $01c7
    rst $10
    ld bc, $01d7
    rst $10
    ld bc, $01d7
    rst $00
    ld bc, $01c7
    rst $08
    ld bc, $03ff
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
    cp $fe
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
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
    db $fc
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    nop
    rst $38
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

    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
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
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
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
    cp $ff
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$20
    ldh [$c0], a
    ret nz

    ret nz

    ret nz

    add b
    rst $38
    inc bc
    db $fc
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
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    nop
    rst $38
    nop
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
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    ld a, a
    rra
    rst $38
    rrca
    ld a, a
    rrca
    ccf
    rlca
    ld a, a
    inc bc
    ccf
    inc bc
    ld a, a
    ld bc, HeaderManufacturerCode
    rra
    ld bc, HeaderManufacturerCode
    rra
    ld bc, HeaderManufacturerCode
    rra
    ld bc, HeaderManufacturerCode
    rra
    ld bc, HeaderManufacturerCode
    rra
    ld bc, $010f
    rra
    ld bc, $010f
    rra
    ld bc, $010f
    rra
    ld bc, $c10f
    rst $18
    ld sp, hl
    rst $38
    db $fd
    rst $38

Call_011_6e6e:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $ef
    xor $6f
    ld l, [hl]
    ld h, a
    ld h, [hl]
    daa
    ld h, $27
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    cpl
    cpl
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
    ret nz

    rst $38
    add e
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $fffe
    nop
    rst $38
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
    cp $ff
    rst $38
    ld bc, $00ff
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
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sub d
    sub d
    sub d
    sub d
    sub d
    sub d
    sub d
    sub d
    sub d
    sub d
    sub d
    sub d
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
    rst $38
    rst $38
    rst $38
    inc bc
    nop
    ldh [rP1], a
    ret nz

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
    add b
    add b
    add b
    add b
    rst $38
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    sbc a
    rst $38
    sub c
    rst $38
    sub c
    rst $38
    sub c
    rst $38
    rst $18
    rst $38
    ret nz

    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    di
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld hl, sp+$07
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ret nz

    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0ffe
    ldh a, [rNR30]
    push hl
    inc [hl]
    sra b
    rst $10
    inc [hl]
    rr d
    push hl
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
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    nop
    rst $38
    nop
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
    nop
    nop
    cp $00
    db $fd
    nop
    ld a, [$fd00]
    nop
    ld [$d400], a
    nop
    ld [$d400], a
    nop
    xor b
    nop
    ret nc

    nop
    ldh [rP1], a
    ret nc

    nop
    and b
    nop
    ret nc

    nop
    xor b
    nop
    ret nc

    nop
    ldh [rP1], a
    ret nc

    nop
    ldh [rP1], a
    ldh a, [rP1]
    add sp, $00
    ldh a, [rSB]
    ld sp, hl
    ld bc, $ffff
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
    rst $38
    ldh [$f0], a
    ld hl, sp+$04
    db $fc
    ld [bc], a
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
    rst $38
    rst $38
    nop
    rst $38
    ld a, $ff
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld a, $ff
    nop
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
    nop
    rst $38
    nop

Jump_011_708f:
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
    or $6f
    sub b
    rst $00
    jr c, @+$01

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
    db $fc
    rst $38
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
    rst $38
    nop
    ld d, l
    xor d
    add d
    ld a, l
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add d
    ld a, l
    ld d, l
    xor d
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
    rst $38
    nop
    rst $38
    nop
    cp $01
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
    ld bc, $3f00
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    rst $38
    rrca
    rst $38
    nop
    ld a, [$e400]
    nop
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

jr_011_7110:
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rst $38

jr_011_7128:
    nop
    rst $38

jr_011_712a:
    rst $38
    nop

jr_011_712c:
    nop
    rst $38

jr_011_712e:
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    add c
    add c
    ld b, b
    add c
    ld h, d
    add c
    ld h, d
    add c
    ld h, d
    pop bc
    ld a, $c3
    jr nz, jr_011_7128

    jr c, jr_011_712a

    jr c, jr_011_712c

    jr c, jr_011_712e

    jr c, jr_011_7110

    ei
    ld b, d
    ei
    ei
    jp $c338


    ld a, b
    jp $c378


    ld a, b
    jp $c378


    ld a, b
    jp $c03b


    add c
    ld b, c
    sbc a
    pop bc
    sbc [hl]
    pop bc
    ld e, $c1
    ld e, $c1
    nop
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
    ld l, a
    sub b
    ld a, c
    add [hl]
    ld [hl], e

jr_011_717b:
    adc h
    db $fd
    ld [bc], a
    rst $38
    nop
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    or b
    ld c, a
    ld e, b
    and a
    jr z, jr_011_717b

    ld e, b
    and a
    or b
    ld c, a
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
    ld a, a
    add b
    rst $38
    nop
    cp $01
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
    rrca
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
    rst $38
    rst $38
    rst $38
    nop
    and b
    nop
    nop
    nop
    rst $38
    ld hl, sp-$01
    rst $38
    ld c, a
    rst $38
    ld c, c
    rst $38
    ld c, c
    rst $38
    ld c, c
    rst $38
    ld c, c
    rst $38
    ld c, c
    rst $38
    ret


    ret


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rra
    ldh [$3f], a
    rst $18
    rst $38
    rst $38
    nop
    rst $38
    ld sp, hl
    rst $38
    adc c
    rst $38
    adc c
    rst $38
    ld sp, hl
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0efe
    pop af
    cpl
    ret nc

    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret z

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
    ret nz

    rst $38
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    add b
    rst $38
    nop
    cp $01
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
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    rst $38
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
    inc c
    inc c
    rst $38
    inc c
    rst $38
    rst $38
    rst $38
    rst $38
    dec l
    rst $38
    dec l
    rst $38
    dec l
    rst $38
    dec l
    rst $38
    dec l
    rst $38
    dec l
    dec l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    ld a, [$c005]
    cp a
    ldh [rP1], a
    ldh a, [$08]
    ld hl, sp+$00
    ld hl, sp+$04
    db $fc
    nop
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    inc bc
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    ld bc, $ffff
    ld bc, $ffff
    rst $38
    ld bc, $f3ff
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    di
    rst $38
    ld bc, $fcff
    ld [bc], a
    db $fc
    cp $fc
    cp $00
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld h, a
    sbc b
    rst $30
    ld [$04fb], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    pop hl
    nop
    add h
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    inc bc
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
    ld bc, $02fe
    db $fd
    inc bc
    db $fc
    ld [bc], a
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
    rst $38
    ccf
    ret nz

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
    db $fc
    rst $38
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
    inc h
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    inc h
    inc h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    ld bc, $01fe
    ld [bc], a
    inc bc
    inc b
    inc bc
    inc b
    rlca
    ld [$0807], sp
    rlca
    ld [$1807], sp
    rlca
    jr jr_011_7380

    ldh a, [rIF]
    or b
    rra
    or b
    rra
    or b
    rra
    or b
    rra
    or b
    rra
    cp a
    db $10
    rst $38

jr_011_7380:
    rst $38
    rra
    ldh a, [$1f]
    rst $30
    rra
    db $f4
    rra
    db $f4
    rra
    rst $30
    rra
    ldh a, [$1f]
    rrca
    nop
    rst $38
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    nop
    rst $38
    nop
    rst $38
    ld [$eff7], sp
    db $10
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
    call nz, Call_000_2100
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
    rra
    ldh [$ea], a
    dec d
    ld d, b
    xor a
    add b
    ld a, a
    nop
    rst $38
    add b
    ld a, a
    ld d, b
    xor a
    ld [$1f15], a
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
    rra
    ldh [rIE], a
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
    ld a, a
    nop
    db $fc
    inc bc
    ldh a, [rIF]
    db $fc
    inc bc
    rst $38
    nop
    ei
    inc b
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    sub d
    rst $38
    sub d
    rst $38
    sub d
    rst $38
    sub d
    rst $38
    sub d
    sub d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    db $fc
    inc bc
    rst $38
    cp $ff
    rst $38
    nop
    rst $38
    rst $08
    rst $38
    ld c, b
    rst $38
    ld c, b
    rst $38
    rst $08
    rst $38
    nop
    rst $38
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
    scf
    ret z

    dec a
    jp nz, Jump_000_01fe

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    adc [hl]
    ld [hl], c
    ld [bc], a
    db $fd
    db $10
    rst $28
    ld bc, $00fe
    nop
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    xor [hl]
    ld d, c
    dec d
    ld [$fd02], a
    ld bc, $02fe
    db $fd
    dec d
    ld [$51ae], a
    ldh a, [rIF]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    ldh a, [rIE]
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
    nop
    rlca
    nop
    db $fc
    inc bc
    ld c, $f1
    inc b
    ei
    inc e
    db $e3
    inc a
    jp $03fc


    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_011_74ba:
    nop
    rst $38
    ret nz

    rst $38
    rst $38
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld sp, hl
    ld l, a
    rst $38
    ld a, a
    cp $ff
    ld a, [$7aff]
    rst $38
    ld a, d
    rst $38
    ld a, d
    rst $38
    ld a, d
    rst $38
    ld a, e
    ld a, e
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    dec b
    ld a, [$00ff]
    daa
    rst $18
    jr nz, @-$1f

    nop
    sub b
    add b
    ld d, b
    add b
    ld l, b
    pop bc
    jr z, jr_011_74ba

    inc l
    pop bc
    inc l
    pop bc
    inc l
    pop bc
    inc a
    db $e3
    rra
    ld [c], a
    inc de
    ld [c], a
    inc de
    ld [c], a
    inc de
    ld [c], a
    inc de
    ld [c], a
    inc de
    ld [c], a
    di
    inc bc
    di
    ld a, [c]
    db $e3
    ld [de], a
    db $e3
    sub d
    db $e3
    sub d
    db $e3
    sub d
    db $e3
    sub d
    db $e3
    ld [de], a
    pop bc
    rst $18
    ld hl, $e1de
    ld e, $e1
    ld e, $e1
    nop
    rst $38
    nop
    rst $38
    adc l
    ld [hl], d
    rst $38
    nop
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$6699], sp
    adc a
    ld [hl], b
    ld [bc], a
    db $fd
    add hl, de
    and $09
    or $00
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    inc bc
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

jr_011_7554:
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
    nop
    rst $38
    nop
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
    ld hl, sp-$01
    nop
    rst $38
    nop
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
    rlca
    nop
    ldh a, [rIF]
    ld b, b
    cp a
    db $e3
    inc e
    ld hl, $30de
    rst $08
    db $10
    rst $28
    ld a, $c1
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
    rst $38
    rst $38
    ld bc, $0001
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
    nop
    rst $38
    jr nc, jr_011_7554

    ld a, b
    sbc a
    rst $38
    jr @+$01

    dec de
    rst $38
    rra
    rst $38
    ld a, [hl-]
    rst $38
    jp c, $9ada

    sbc d
    sbc d
    sbc d
    sbc d
    sbc d
    sbc d
    sbc d
    sbc d
    sbc d
    sbc e
    sbc e
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    ld a, [bc]
    push af
    ld e, a
    and b
    rst $38
    inc bc
    rst $38
    rst $38
    rra
    rst $38
    rst $38
    ccf
    add b
    nop
    nop
    nop
    nop
    nop
    nop

jr_011_75e9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ld c, c
    rst $38
    ld c, c
    rst $38
    ld c, c
    rst $38
    ld c, c
    rst $38
    ld c, c
    rst $38
    ld c, c
    rst $38
    rst $38
    rst $38
    ld c, c
    rst $38
    ld c, c
    rst $38
    ld c, c
    rst $38
    ld c, c
    rst $38
    ld c, c
    rst $38
    ld c, c
    rst $38
    ld c, c
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
    jr nc, jr_011_75e9

    ld a, h
    add e
    db $fc
    inc bc
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    ld c, d
    or l
    nop
    rst $38
    add hl, de
    and $80
    ld a, a
    rrca
    rrca
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
    nop
    rst $38
    ld bc, $03fe
    db $fc
    ld [bc], a
    db $fd
    inc bc
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
    rlca
    ld hl, sp-$01
    nop
    rst $38
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_011_7667:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$e0], a
    rra
    nop
    rst $38
    nop
    rst $38
    add d
    ld a, l
    db $fd
    ld [bc], a
    rst $38
    nop
    ld a, [de]
    push hl
    jr jr_011_7667

    rst $38
    push af
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
    add b
    rst $38
    rst $38
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
    cp $07
    cp $ff
    ld a, [hl]
    ei
    cp $eb
    cp a
    db $eb
    cp [hl]
    db $eb
    cp a
    db $eb
    cp [hl]
    db $eb
    cp [hl]
    rst $38
    xor e
    rst $38
    xor [hl]
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    dec c
    ld a, [c]
    cp a
    ld b, b
    rst $38
    inc bc
    rst $38
    rst $38
    ret nz

    rst $38
    pop bc
    cp $ff
    db $fd
    ld a, a
    jr nc, jr_011_7764

    jr nz, jr_011_7766

    inc h
    ld a, a
    jr nz, jr_011_776a

    inc h
    ld a, a
    jr nz, jr_011_776e

    daa
    rst $38
    and h
    ld a, a
    and b
    ld a, e
    and h
    ld a, e
    and h
    ld a, e
    and h
    ld a, e
    and h
    ld a, e
    and h
    ei
    or h
    ld [hl], e
    xor h
    ld a, e
    or h
    ld a, c
    and [hl]
    ld a, e
    and h
    ld a, c
    and [hl]
    ld a, e
    add h
    ld a, e
    add h
    ei
    inc b
    rrca
    nop
    rrca
    add b
    ld b, b
    cp a
    ld [hl], b
    adc a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld [hl], l
    add d
    ld a, l
    add d
    rst $38
    nop
    ld sp, hl
    nop
    ld h, b
    nop
    stop
    ld [bc], a
    nop
    stop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    ccf
    ret nz

    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    ldh [$f5], a
    ld a, [bc]
    xor b
    ld d, a
    ld b, b
    cp a
    add b
    ld a, a
    ld b, b
    cp a
    xor b
    ld d, a
    push af
    ld a, [bc]
    rra
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rst $38
    nop
    rst $38
    nop
    add b
    ld a, a
    nop
    nop
    nop
    nop

jr_011_7764:
    nop
    nop

jr_011_7766:
    nop
    nop
    nop
    nop

jr_011_776a:
    nop
    nop
    rst $38
    nop

jr_011_776e:
    ld [c], a
    dec e
    ret


    ld [hl], $0b
    db $f4
    ld a, [c]
    dec c
    ld [hl], b
    adc a
    ldh [$1f], a
    ret nz

    ccf
    nop
    rst $38
    ccf
    ret nz

    rst $38
    ld d, l
    rst $38
    ld a, [$ff07]
    nop
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
    rrca
    rst $38
    nop
    ccf
    nop
    rrca
    nop
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $6100
    ldh [$60], a
    ldh [$30], a
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [$31]
    pop af
    ld [hl], a
    rst $30
    ld a, $ff
    ld a, $fd
    ld a, [hl]
    push af
    ld a, [hl]
    push af
    ld a, $f5
    ld a, [hl]
    push af
    ld a, [hl]
    push af
    ld a, [hl]
    rst $30
    ld a, $3e
    ld a, $3e
    ld a, a
    ld a, a
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    inc bc
    db $fc
    rst $10
    jr z, @+$01

    nop
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    rst $38
    rst $28
    ld de, $03ff
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
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
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld a, h
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld a, h
    rst $38
    add b
    ld a, a
    rst $38
    nop
    rst $38
    ccf
    pop bc
    ld a, $c0
    ccf
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $01
    cp $05
    ld a, [$718e]
    ld c, e
    or h
    rst $38
    nop
    ld a, a
    nop
    adc a
    nop
    cpl
    nop
    ld bc, $1f00
    nop
    nop
    rst $38
    inc bc
    db $fc
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
    ldh a, [rIF]
    ld e, [hl]
    and c
    dec hl
    call nc, $fa05
    ld [bc], a
    db $fd
    dec b
    ld a, [$d42b]
    ld e, [hl]
    and c
    ldh a, [rIF]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $fffe
    nop
    rst $38
    nop
    ret nz

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
    rst $38
    nop
    db $fc
    inc bc
    jr nz, @-$1f

    add b
    ld a, a
    pop hl
    ld e, $40
    cp a
    nop
    rst $38
    nop
    rst $38
    inc de
    db $ec
    rst $38
    nop
    db $e4
    dec de
    rst $38
    ld d, l
    rst $38
    xor d
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    cp $3f
    or $fd
    or $ed
    or [hl]
    ld l, l
    or [hl]
    ld l, l
    or [hl]
    ld l, l
    or [hl]
    ld l, l
    or [hl]
    ld l, a
    or [hl]
    ld l, a
    or [hl]
    db $fd
    or [hl]
    db $fd
    or [hl]
    ld l, a
    cp a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    ld e, e
    and h
    rst $38
    nop
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    ld hl, sp-$04
    inc bc
    nop
    rst $38
    rst $38
    ldh [$c7], a
    cp b
    db $e3
    sbc h
    pop af
    adc [hl]
    ld sp, hl
    add [hl]
    db $fd
    add d
    db $fd
    add d
    rst $38
    add b
    rst $38
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
    rst $38
    add b
    ld a, a
    add b
    rst $38
    add b
    ld a, a
    add b
    rst $38
    add b
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    add [hl]
    ld a, a
    adc a
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    ld a, a
    ccf
    ccf
    sbc a
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
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
    cp $1e
    ldh a, [$30]
    rra
    rst $38
    rst $38
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
    add b
    ld a, a
    nop
    rst $38
    ld bc, $01fe
    cp $e0
    rra
    ld a, [bc]
    push af
    nop
    rst $38
    inc bc
    db $fc
    cp $01
    add b
    ld a, a
    nop
    rst $38
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    push de
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
    rra
    db $fd
    ld a, a
    db $fd
    di

jr_011_79a8:
    db $dd
    di
    db $dd
    di
    db $dd
    or e
    db $dd
    or e
    db $dd
    or e
    db $dd
    or e
    db $dd
    cp a
    db $dd
    rst $38
    db $dd
    di
    db $dd
    or e
    db $dd
    or e
    rst $18
    cp a
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
    ld [bc], a
    db $fd
    ld d, a
    xor b
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    ldh [$f0], a
    rrca
    nop
    rst $38
    ld bc, $fffe
    ldh a, [rNR32]
    ldh [rNR34], a
    ldh [$3c], a
    ret nz

    jr c, jr_011_79a8

    ld a, b
    add b
    ld hl, sp+$00
    ld hl, sp+$3c
    db $fc
    ld a, $fe
    ld a, $fe
    ld a, [hl]
    cp $7f
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
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    cp $7e
    ld sp, hl
    ld sp, hl
    rst $30
    rst $30
    rst $08
    adc $b7
    or [hl]
    rst $30
    db $e4
    rst $10
    call nc, $f4f7
    rst $30
    call nz, $c4f7
    rst $30
    push bc
    or $c6
    db $f4
    call nz, $f5f5
    jp $8fc3


    adc a
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, [hl]
    ld a, [hl]
    cp $fe
    add a
    add a
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    nop
    ldh [$1f], a
    nop
    rst $38
    nop

jr_011_7a4d:
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    ldh [$1f], a
    db $10
    rst $28
    ld [$84f7], sp
    ld a, e
    jp $813c


    ld a, [hl]
    ld b, c
    cp [hl]
    rra
    ldh [$fc], a
    inc bc
    nop
    rst $38
    jr nz, jr_011_7a4d

    ld h, a
    sbc b
    ld hl, sp+$5f
    pop hl
    cp a
    jp $877f


    rst $38
    inc c
    rst $38
    ld [$01ff], sp
    rst $38
    inc bc
    rst $38
    inc c
    rst $38
    jr c, @+$01

    ld hl, sp-$01
    ld hl, sp+$07
    ld hl, sp+$07
    ei
    rrca
    cp $3f
    ld hl, sp-$01
    ldh a, [$df]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    rst $30
    rra
    rst $38
    rra
    cp $1f
    ldh a, [$3f]
    ldh a, [rIE]
    ld a, [c]
    rst $38
    di
    ccf
    ei
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
    ld hl, sp-$01
    nop
    rst $38
    rlca
    ld hl, sp-$21
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    ccf
    nop
    rst $38
    and [hl]
    ld e, c
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
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    rst $38
    ld bc, $03fe
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld [bc], a
    db $fc
    ld bc, $07f9
    rst $20
    rrca
    adc $3b
    cp d
    ld [hl], e
    ld a, d
    and e
    cp d
    inc hl
    cp d
    inc hl
    cp d
    and e
    ld a, [hl-]
    and e
    dec sp
    cp d
    ld [hl+], a
    cp d
    ld a, [hl-]
    or c
    ld sp, $a7a7
    adc a
    adc a
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$e0], a
    ldh [$e0], a
    cp $fe
    rrca
    rrca
    rlca

jr_011_7b21:
    rlca
    add b
    add b
    ldh [$e0], a
    ld a, [hl]
    ld a, [hl]
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    rst $38
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
    nop
    rst $38
    nop
    nop
    nop
    nop
    ld a, a
    nop
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld [hl], b
    adc a
    inc b
    ei
    nop
    rst $38
    ret nz

    ccf
    rst $38
    nop
    db $fc
    inc bc
    jr c, jr_011_7b21

    inc e
    db $e3
    ld b, $f9
    jp Jump_011_603c


    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    ld a, e
    rst $38
    ld a, a
    cp $7f
    db $fc
    rst $38
    ld hl, sp+$7f
    pop af
    ld a, a
    rst $30
    ld a, a
    rst $38
    ld a, a
    cp $77
    db $fc
    rst $30
    db $fc
    rst $30
    db $fc
    rst $30
    db $fc
    rst $30
    db $fc
    rst $30
    db $fc
    rst $30
    db $fc
    rst $30
    rst $38
    db $f4
    rst $38
    rst $30
    rst $38
    push af
    rst $38
    push af
    rst $38
    push af
    rst $38
    push af
    push af
    push af
    push af
    push af
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
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    ld bc, $57fe
    xor b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$0dfa]
    db $fd
    ld h, $de
    db $e3
    rra
    pop hl
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    db $f4
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $7e
    ld sp, hl
    ld a, c
    rst $30
    scf
    adc $0e
    ld a, $3e
    sbc $de
    sbc $de
    sbc $1e
    sbc $1e
    sbc $1e
    sbc $1e
    sbc $1e
    call c, $d11c
    ld d, c
    rst $00
    rst $00
    sbc a
    sbc a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    db $fc
    db $fc
    rst $38
    rst $38
    rlca
    rlca
    ret nz

    ret nz

    ldh a, [$f0]
    db $fc
    db $fc
    rra
    rra
    inc bc
    inc bc
    add b
    add b
    ldh a, [$f0]
    ld a, [hl]
    ld a, [hl]
    ccf
    ccf
    rla
    rla
    inc bc
    inc bc
    ret nz

    ret nz

    ldh [$e0], a
    db $fc
    db $fc
    rra
    rra
    rlca
    rlca
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    ld a, a
    add c
    rst $38
    nop
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
    nop
    rst $38
    nop
    ret nz

    ccf
    inc bc
    db $fc
    dec b
    ld a, [$df20]
    ld h, b
    sbc a
    nop
    rst $38
    nop
    rst $38
    ld a, [hl]
    add c
    ret nz

    ccf

jr_011_7c56:
    inc b
    ei

jr_011_7c58:
    nop
    rst $38

jr_011_7c5a:
    inc e
    db $e3

jr_011_7c5c:
    ld e, $e1

jr_011_7c5e:
    inc c
    di

jr_011_7c60:
    rrca
    rst $38

jr_011_7c62:
    ccf
    ld hl, sp-$01
    ldh [rIE], a
    add b
    rst $38
    ld bc, $0fff
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ld hl, sp-$21
    ldh a, [$df]
    jr nc, jr_011_7c56

    jr nc, jr_011_7c58

    jr nc, jr_011_7c5a

    jr nc, jr_011_7c5c

    jr nc, jr_011_7c5e

    jr nc, jr_011_7c60

    jr nc, jr_011_7c62

    pop af
    rra
    rst $30
    rst $18
    rst $38
    ld e, a
    ei
    ld e, a
    ei
    ld e, a
    di
    ld e, a
    di
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
    ld hl, sp-$01
    nop
    rst $38
    ld a, [bc]
    push af
    ld a, a
    add b
    rst $38
    nop
    rst $38
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
    sub d
    sub d
    or [hl]
    or [hl]
    sub d
    sub d
    ld d, [hl]
    ld d, [hl]
    or d
    or d
    jp nc, Jump_011_6ad2

    ld [$f636], a
    dec de
    ei
    dec c
    db $fd
    rlca
    rst $38
    inc bc
    rst $38
    nop
    cp $c1
    cp c
    rst $20
    rst $10
    call Call_000_3dcf
    ccf
    rst $30
    push af
    rst $30
    push af
    rst $30
    push af
    rst $30
    push af
    rst $30
    push af
    rst $30
    rst $30
    rst $30
    rst $30
    db $f4
    db $f4
    pop af
    pop af
    rst $20
    rst $20
    sbc a
    sbc a
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
    adc h
    adc h
    sbc [hl]
    sbc [hl]
    rst $38
    rst $38
    rst $18
    rst $18
    ldh [$e0], a
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
    nop
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
    ldh [$1f], a
    nop
    rst $38
    add h
    ld a, e
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    cp $01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld d, h
    xor e
    inc b
    ei
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0000], sp
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    nop
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    nop
    nop
    dec d
    ld d, $17
    jr jr_011_7d78

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_011_7d88

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_011_7d98

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_011_7da8

    ld [hl-], a

jr_011_7d78:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_011_7db8

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_011_7d88:
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
    ld d, c
    ld d, d

jr_011_7d98:
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

jr_011_7da8:
    ld h, e
    ld h, h
    ld h, l
    ld a, [de]
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld c, e
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b

jr_011_7db8:
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

    call Call_011_6e6e
    adc $cf
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
    ld b, $e7
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
    jr jr_011_7e7d

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_011_7e8d

    ld [hl+], a
    inc hl
    nop
    inc h
    ld l, [hl]
    dec h
    ld h, $27
    jr z, jr_011_7e9f

    ld a, [hl+]
    dec hl
    inc l
    dec l
    nop
    ld l, $2f

jr_011_7e7d:
    jr nc, @+$33

    ld [hl-], a
    nop
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0404
    nop
    nop
    ld [bc], a
    ld [bc], a

jr_011_7e8d:
    ld bc, $0101
    nop
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld bc, $0401
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0101

jr_011_7e9f:
    ld bc, $0302
    inc bc
    inc bc
    inc bc
    ld bc, $0007
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0201
    inc bc
    inc bc
    inc bc
    ld bc, $0004
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0302
    inc bc
    rlca
    inc b
    dec b
    dec b
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    inc bc
    inc bc
    rlca
    inc b
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    rlca
    inc b
    dec b
    inc bc
    inc bc
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0005
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld bc, $0102
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld bc, $0200
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld bc, $0006
    nop
    ld [bc], a
    inc bc
    inc bc
    rlca
    ld bc, $0101
    ld bc, $0301
    inc bc
    ld [bc], a
    ld bc, $0506
    dec b
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld bc, $0404
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0401
    ld b, $0a
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [bc], a
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
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    add hl, bc
    add hl, bc
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
    ld bc, $0309
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld bc, $0909
    add hl, bc
    add hl, bc
    add hl, bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    inc bc
    db $fc
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
    rst $38
    add b
    rst $38
    pop hl
    rst $38
    rst $00
    rst $38
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
    ld [bc], a
    db $fc
    rrca
    ldh a, [$3f]
    di
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
