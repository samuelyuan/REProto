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
    jp $708f


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
    call nz, $603b
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

IntroScene5Tilemap::
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f
    db $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $0e, $2d, $2e
    db $2f, $30, $31, $32, $33, $34, $35, $36, $28, $37, $38, $39, $3a, $3b, $3c, $3d
    db $3e, $3f, $40, $41, $42, $43, $36, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c
    db $4d, $4e, $4f, $50, $51, $52, $53, $54, $55, $55, $56, $57, $58, $59, $5a, $5b
    db $36, $5c, $5d, $5e, $5f, $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a
    db $6b, $6c, $6d, $6e, $6f, $70, $71, $72, $73, $74, $75, $76, $77, $78, $14, $79
    db $7a, $7b, $7c, $7d, $7e, $7f, $80, $81, $82, $83, $84, $85, $86, $87, $88, $88
    db $89, $8a, $8b, $8c, $8d, $8e, $8f, $90, $91, $92, $93, $94, $95, $96, $14, $97
    db $98, $99, $9a, $9b, $9c, $9d, $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7
    db $a8, $a9, $aa, $ab, $ac, $ad, $ae, $ae, $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6
    db $b7, $b8, $b9, $ba, $bb, $bc, $bd, $bd, $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5
    db $c6, $c7, $c8, $c9, $ca, $cb, $14, $cc, $cd, $ce, $cf, $d0, $d1, $d2, $d3, $d4
    db $d5, $d6, $d7, $d8, $d9, $da, $db, $dc, $a0, $8d, $dd, $de, $df, $e0, $e1, $e2
    db $e3, $e4, $e5, $e6, $e7, $e8, $e9, $ea, $eb, $ec, $ed, $ee, $ef, $f0, $f1, $f2
    db $f3, $f4, $f5, $8d, $f6, $f7, $f8, $f9, $fa, $fb, $fc, $fd, $fe, $ff, $00, $01
    db $02, $03, $04, $8d, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f, $10
    db $11, $12, $13, $8d, $14, $15, $16, $17, $18, $8d, $8d, $19, $1a, $36, $1b, $1c
    db $1d, $1e, $1f, $8d, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $36

IntroScene5PaletteIndex::
    db $01, $06, $06, $02, $06, $06, $06, $06, $06, $01, $01, $01, $01, $01, $01, $01
    db $04, $02, $06, $00, $00, $02, $06, $06, $06, $06, $06, $06, $01, $01, $01, $01
    db $04, $02, $06, $06, $06, $00, $00, $00, $01, $01, $01, $01, $01, $01, $01, $01
    db $04, $04, $02, $06, $06, $00, $00, $00, $01, $01, $01, $01, $01, $01, $01, $01
    db $00, $05, $05, $06, $06, $00, $00, $00, $01, $01, $01, $01, $01, $01, $01, $01
    db $04, $05, $05, $06, $06, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $00, $05, $05, $02, $01, $02, $03, $03, $06, $02, $06, $01, $01, $01, $01, $01
    db $00, $05, $04, $02, $01, $02, $00, $00, $01, $01, $01, $01, $01, $01, $01, $01
    db $05, $05, $05, $01, $01, $02, $06, $06, $06, $01, $01, $01, $01, $01, $01, $01
    db $05, $05, $05, $01, $00, $02, $06, $06, $06, $01, $01, $01, $01, $02, $01, $01
    db $05, $05, $05, $01, $01, $01, $06, $01, $01, $06, $06, $01, $06, $06, $06, $01
    db $05, $05, $02, $01, $01, $01, $01, $01, $01, $06, $06, $01, $06, $06, $06, $02
    db $05, $05, $02, $01, $01, $06, $02, $02, $02, $06, $06, $06, $06, $06, $02, $02
    db $05, $05, $01, $01, $02, $06, $00, $06, $02, $02, $01, $06, $06, $06, $02, $02
    db $05, $04, $01, $01, $04, $02, $02, $01, $01, $00, $01, $06, $02, $02, $02, $02
    db $04, $04, $01, $01, $00, $04, $02, $06, $06, $06, $01, $06, $02, $02, $02, $02
    db $04, $04, $01, $00, $00, $04, $02, $02, $03, $02, $02, $01, $06, $02, $0a, $0a
    db $0c, $0a, $09, $00, $0c, $0c, $0a, $0a, $0b, $0a, $0a, $0a, $0a, $0a, $0a, $0a
    db $0c, $09, $09, $00, $0d, $0d, $0a, $0a, $0a, $00, $00, $0a, $0d, $02, $0a, $0a
    db $0c, $09, $09, $00, $0d, $0d, $0a, $0a, $0a, $0a, $0a, $0a, $0d, $0d, $0d, $02

IntroScene5Tileset:: ; 0x56e0
    INCBIN "gfx/image_011_56e0.2bpp"

    INCBIN "gfx/image_011_68e0.2bpp"

IntroScene2Tilemap:: ; 0x6990
    db $00, $01, $02, $03, $04, $05, $06, $07, $04, $04, $04, $04, $04, $08, $09, $0a
    db $0b, $0c, $0d, $0e, $04, $0f, $10, $11, $04, $04, $04, $04, $12, $13, $14, $15
    db $16, $17, $18, $19, $04, $04, $1a, $1b, $1c, $04, $04, $1d, $1e, $1f, $20, $21
    db $22, $23, $24, $25, $04, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $1f, $2e, $2f
    db $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $1f
    db $3f, $40, $41, $42, $34, $43, $44, $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d
    db $4e, $4f, $1f, $50, $34, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b
    db $5c, $1f, $1f, $1f, $5d, $5e, $44, $45, $5f, $60, $61, $62, $1f, $1f, $63, $64
    db $65, $1f, $1f, $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f, $70, $71, $2c
    db $72, $1f, $1f, $1f, $73, $74, $75, $76, $77, $78, $79, $7a, $7b, $7c, $7d, $7e
    db $7f, $1f, $1f, $1f, $80, $81, $1f, $45, $82, $83, $84, $85, $86, $87, $88, $89
    db $8a, $1f, $1f, $8b, $8c, $8d, $8e, $8f, $90, $91, $92, $93, $94, $95, $96, $97
    db $98, $99, $1f, $9a, $9b, $9c, $9d, $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $a6
    db $a7, $a8, $a9, $aa, $ab, $ac, $ad, $ae, $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6
    db $b7, $b8, $b9, $ba, $bb, $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6
    db $c7, $c8, $c9, $ca, $cb, $cc, $cd, $ce, $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6
    db $d7, $d8, $d9, $da, $db, $dc, $dd, $de, $df, $e0, $e1, $e2, $1f, $e3, $e4, $e5
    db $e6, $e7, $e8, $e9, $ea, $eb, $ec, $ed, $ee, $ef, $f0, $f1, $1f, $f2, $f3, $f4
    db $f5, $f6, $f7, $f8, $f9, $fa, $fb, $fc, $fd, $fe, $ff, $00, $01, $02, $03, $04
    db $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f, $04, $04, $10, $11, $12

IntroScene2PaletteIndex:: ; 0x6ad0
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $02, $05
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $05, $02, $05, $05
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $02, $05, $02, $05, $05
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $01, $02, $05, $02, $05, $05
    db $05, $00, $00, $00, $02, $03, $00, $01, $01, $01, $01, $02, $05, $05, $05, $02
    db $05, $00, $00, $00, $22, $03, $03, $01, $01, $01, $01, $07, $05, $05, $05, $02
    db $05, $00, $00, $00, $02, $02, $03, $03, $06, $06, $01, $07, $05, $05, $05, $02
    db $05, $00, $00, $00, $04, $02, $23, $01, $01, $01, $06, $07, $02, $02, $05, $02
    db $05, $00, $00, $00, $04, $02, $03, $01, $06, $06, $06, $07, $05, $05, $05, $42
    db $04, $00, $00, $00, $04, $02, $03, $03, $06, $01, $06, $07, $05, $05, $05, $02
    db $04, $00, $00, $00, $04, $02, $00, $01, $01, $01, $02, $07, $05, $05, $05, $02
    db $04, $00, $00, $04, $04, $02, $03, $03, $06, $01, $02, $07, $05, $05, $05, $02
    db $02, $00, $00, $04, $02, $02, $00, $01, $01, $01, $02, $07, $05, $05, $07, $02
    db $05, $00, $04, $04, $04, $02, $01, $01, $01, $06, $06, $05, $05, $05, $02, $02
    db $05, $05, $05, $04, $02, $02, $01, $01, $01, $01, $06, $05, $05, $05, $02, $02
    db $05, $05, $05, $05, $04, $02, $01, $01, $01, $02, $02, $05, $05, $05, $02, $02
    db $05, $05, $05, $05, $02, $02, $06, $06, $02, $02, $02, $02, $02, $05, $02, $02
    db $05, $05, $05, $05, $02, $02, $00, $02, $02, $02, $02, $02, $02, $05, $02, $02
    db $05, $05, $05, $02, $02, $02, $02, $02, $02, $02, $02, $0a, $0a, $0d, $0a, $0a
    db $0d, $0d, $0d, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $00, $00, $0a, $0a, $0a

IntroScene2Tileset:: ; 0x6c10
    INCBIN "gfx/image_011_6c10.2bpp"

    INCBIN "gfx/image_011_7d10.2bpp"

DiningRoom1FScene1Tilemap:: ; 0x7d40
    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $00, $00, $09, $0a, $0b, $0c, $0d
    db $00, $0e, $0f, $10, $11, $12, $13, $14, $00, $00, $15, $16, $17, $18, $19, $1a
    db $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a
    db $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a
    db $3b, $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a
    db $4b, $4c, $4d, $4e, $4f, $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a
    db $5b, $5c, $5d, $5e, $5f, $60, $61, $62, $63, $64, $65, $1a, $66, $67, $68, $69
    db $4b, $6a, $6b, $6c, $6d, $6e, $6f, $70, $71, $72, $73, $74, $75, $76, $77, $78
    db $79, $7a, $7b, $7c, $7d, $7e, $7f, $80, $81, $82, $83, $84, $85, $86, $87, $88
    db $89, $8a, $8b, $8c, $8d, $8e, $8f, $90, $91, $92, $93, $94, $95, $96, $97, $98
    db $99, $9a, $9b, $9c, $9d, $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8
    db $a9, $aa, $ab, $ac, $ad, $ae, $af, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $b8
    db $b9, $ba, $bb, $bc, $bd, $be, $bf, $c0, $c1, $c2, $c3, $c4, $c5, $c6, $c7, $c8
    db $c9, $ca, $cb, $cc, $cd, $6e, $6e, $ce, $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6
    db $d7, $d8, $d9, $da, $db, $dc, $dd, $de, $df, $e0, $e1, $e2, $e3, $e4, $e5, $e6
    db $e7, $e8, $e9, $ea, $eb, $ec, $ed, $ee, $ef, $f0, $f1, $f2, $f3, $f4, $f5, $f6
    db $f7, $f8, $f9, $fa, $fb, $fc, $fd, $fe, $ff, $00, $01, $02, $03, $04, $05, $06
    db $e7, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f, $10, $11, $12, $13, $14, $15
    db $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $00, $24
    db $6e, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $00, $2e, $2f, $30, $31, $32

DiningRoom1FScene1PaletteIndex::
    db $00, $02, $03, $03, $03, $03, $01, $04, $04, $00, $00, $02, $02, $01, $01, $01
    db $00, $02, $03, $03, $03, $01, $01, $04, $00, $00, $02, $02, $01, $01, $01, $01
    db $02, $03, $03, $03, $03, $01, $07, $00, $00, $02, $02, $01, $01, $01, $01, $01
    db $02, $03, $03, $03, $01, $04, $00, $00, $02, $01, $01, $01, $01, $01, $01, $01
    db $02, $03, $03, $07, $04, $05, $05, $03, $01, $01, $01, $01, $01, $01, $01, $01
    db $02, $03, $03, $07, $04, $05, $05, $05, $01, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $07, $04, $05, $03, $03, $07, $07, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $01, $05, $00, $02, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $01, $01, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $02, $02, $01, $02, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $01, $02, $01, $02, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $02, $02, $01, $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $02, $02, $01, $00, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $01, $06, $00, $00, $02, $03, $03, $07, $01, $01, $01, $01, $01
    db $03, $03, $02, $01, $06, $05, $05, $03, $03, $03, $01, $01, $01, $01, $01, $01
    db $02, $03, $03, $03, $01, $04, $04, $03, $03, $03, $01, $01, $01, $01, $01, $01
    db $03, $03, $03, $03, $03, $01, $01, $04, $06, $0a, $09, $09, $09, $09, $09, $09
    db $02, $0b, $0b, $0b, $0b, $0b, $0b, $09, $09, $09, $09, $09, $09, $09, $09, $09
    db $0b, $09, $09, $0b, $0b, $0b, $0b, $0b, $0b, $09, $09, $09, $09, $09, $01, $09
    db $03, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $01, $09, $09, $09, $09, $09

DiningRoom1FScene1Tileset:: ; 0x7fc0 (continues on to bank 12)
    INCBIN "gfx/image_011_7fc0.2bpp"
