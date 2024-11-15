SECTION "ROM Bank $0dd", ROMX[$4000], BANK[$dd]

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    ld b, $07
    nop
    nop
    inc c
    rrca
    nop
    nop
    inc a
    ccf
    nop
    nop
    ld [hl], b
    ld a, a
    nop
    nop
    ldh [rIE], a
    nop
    nop
    ret z

    rst $38
    nop
    nop
    ret nc

    rst $38
    nop
    nop
    ldh a, [rIE]
    nop
    nop
    ld hl, sp-$01
    ld bc, $fc01
    rst $38
    ld bc, $fe01
    rst $38
    ld bc, $fd01
    rst $38
    nop
    nop
    cp $fe
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    jr nc, jr_0dd_40b8

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0dd_40b8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    rst $28
    rst $28
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    sbc a
    rst $38
    ret nz

    ret nz

    ccf
    rst $38
    ret nz

    ret nz

    ld a, a
    rst $38

jr_0dd_410e:
    ret nz

    ret nz

    rra
    rst $38
    add b
    add b
    ld c, $ff
    add b
    add b
    dec c
    rst $38
    nop
    nop
    ld a, [bc]
    cp $00
    nop
    inc b
    db $fc
    nop
    nop
    ld [$00f8], sp
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nz, jr_0dd_410e

    nop
    nop
    ld b, b
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    nop
    nop
    ld b, $07
    nop
    nop
    ld e, $1f
    nop
    nop
    jr c, jr_0dd_421b

    nop
    nop
    ld [hl], b
    ld a, a
    nop
    nop
    ld h, h
    ld a, a
    nop
    nop
    ld l, b
    ld a, a
    nop
    nop
    ld a, b
    ld a, a
    nop
    nop
    cp h
    rst $38
    ld bc, $7e01
    rst $38
    ld [bc], a
    inc bc
    ld a, a
    rst $38
    inc bc
    ld [bc], a
    ld a, [hl]
    rst $38
    rlca
    inc b
    cp a
    ld a, a
    inc bc
    ld [bc], a
    call c, $013c
    ld bc, $78f8
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

jr_0dd_421b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_0dd_428a

    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    add b
    add b
    db $e3
    rst $38
    ret nz

    ret nz

    rst $00
    rst $38
    ldh [$e0], a
    sbc a
    rst $38

jr_0dd_428a:
    ldh [$e0], a
    ccf
    rst $38
    ldh [$e0], a
    rrca
    rst $38

jr_0dd_4292:
    ret nz

    ret nz

    rlca
    rst $38
    ld b, b
    ret nz

    ld b, $ff
    add b
    add b
    dec b
    rst $38
    nop
    nop
    ld [bc], a
    cp $00
    nop
    inc b
    db $fc
    nop
    nop
    ld [$00f8], sp
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nz, jr_0dd_4292

    nop
    nop
    ld b, b
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    inc bc
    nop
    nop
    inc b
    rlca
    nop
    nop
    dec b
    rlca
    nop
    nop
    inc e
    rra
    nop
    nop
    jr nz, jr_0dd_4393

    nop
    nop
    ld b, b
    ld a, a
    ld bc, $9001
    rst $38
    inc bc
    inc bc
    or b
    rst $38
    ld b, $07
    ldh a, [$7f]
    dec c
    ld c, $f0
    rst $38
    rrca
    dec c
    ld hl, sp-$01
    dec b
    rlca
    rst $38
    rst $38
    dec b
    rlca
    cp $ff
    ld [bc], a
    inc bc
    db $fc
    rst $38
    ld bc, $f801
    rst $38
    nop
    nop
    ldh a, [rIE]
    nop
    nop
    ld a, b
    ld a, a
    nop
    nop
    dec b
    rlca
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    ld bc, $0001
    nop
    nop

jr_0dd_4393:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0dd_43f4:
    inc c
    inc c
    nop
    nop
    cp $fe
    nop
    nop
    rra
    rst $38
    nop
    nop
    ccf
    rst $38
    add b
    add b
    ld a, a
    rst $38
    ld b, b
    ret nz

    cp a
    rst $38
    and b
    ldh [$1f], a
    rst $38

jr_0dd_440e:
    and b
    ldh [rIF], a
    rst $38
    jr nz, jr_0dd_43f4

    ld c, $ff
    ldh [$60], a
    rra
    db $fc
    and b
    ld h, b
    dec de
    cp $c0
    ret nz

    rla
    rst $38
    add b
    add b
    jr z, @-$06

    nop
    nop
    ret nc

    ldh a, [rP1]
    nop
    jr nz, jr_0dd_440e

    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ret nz

    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    inc bc
    nop
    nop
    inc b
    rlca
    nop
    nop
    dec b
    rlca
    nop
    nop
    inc e
    rra
    nop
    nop
    jr nz, jr_0dd_4513

    inc bc
    inc bc
    ret nz

    rst $38
    rlca
    rlca
    sub b
    rst $38
    ld c, $0f
    jr nc, @+$01

    dec c
    rrca
    ldh a, [rIE]
    ld b, $07
    ldh a, [rIE]
    dec c
    rrca
    ld hl, sp-$01
    rrca
    dec c
    rst $38
    rst $38
    ld b, $07
    cp $ff
    ld [bc], a
    inc bc
    db $fc
    rst $38
    ld bc, $f801
    rst $38
    nop
    nop
    di
    rst $38
    nop
    nop
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
    nop

jr_0dd_4513:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    cp $fe
    nop
    nop
    rra
    rst $38
    nop
    nop
    ld a, $ff
    add b
    add b
    ld a, a
    rst $38
    ld b, b
    ret nz

    cp a
    rst $38
    ld b, b
    ret nz

    rra
    rst $38
    ld b, b
    ret nz

    rrca
    rst $38

jr_0dd_4592:
    ld b, b
    ret nz

    ld c, $ff
    ld b, b
    ret nz

    inc e
    rst $38
    ld b, b
    ret nz

    db $10
    rst $38

jr_0dd_459e:
    add b
    add b
    ld de, $00ff
    nop
    ld [hl+], a
    cp $00
    nop
    call z, Call_000_00fc
    nop
    jr nc, jr_0dd_459e

    nop
    nop
    jr nz, jr_0dd_4592

    nop
    nop
    ld b, b
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    inc bc
    nop
    nop
    inc b
    rlca
    nop
    nop
    dec b
    rlca
    rlca
    rlca
    inc e
    rra
    rrca
    rrca
    and b
    cp a
    inc e
    rra
    ld b, b
    rst $38
    jr @+$21

    db $10
    rst $38
    jr jr_0dd_467d

    db $10
    rst $38
    ld [$300f], sp
    rst $38
    ld [$700f], sp
    rst $38
    ld [$f80f], sp
    rst $38
    dec b
    rlca
    rst $38
    rst $38
    dec b
    rlca
    rst $38
    rst $38
    inc bc
    inc bc
    cp $ff
    ld bc, $fc01
    rst $38
    nop

jr_0dd_467d:
    nop
    rst $38
    rst $38
    nop
    nop
    ld c, b
    ld a, b
    nop
    nop
    jr nc, jr_0dd_46b8

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0dd_46b8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    cp $fe
    nop
    nop

jr_0dd_46fc:
    rra
    rst $38
    nop

Jump_0dd_46ff:
    nop

jr_0dd_4700:
    ccf
    rst $38
    add b
    add b
    ld a, a
    rst $38
    ret nz

    ret nz

    cp a
    rst $38
    ret nz

    ret nz

    rra
    rst $38
    ret nz

    ret nz

    rrca
    rst $38

jr_0dd_4712:
    ld b, b
    ret nz

    ld c, $ff
    ld b, b
    ret nz

    inc e
    rst $38
    jr nz, jr_0dd_46fc

    jr @+$01

    jr nz, jr_0dd_4700

    db $10
    rst $38
    ld [hl], b
    ldh a, [rNR41]
    rst $38
    ldh a, [$f0]
    rst $08
    rst $38
    ldh a, [$f0]
    or c
    pop af
    ldh [$e0], a
    jr nz, jr_0dd_4712

    ret nz

    ret nz

    ld b, b
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    inc bc
    nop
    nop
    inc b
    rlca
    nop
    nop
    dec b
    rlca
    nop
    nop
    inc e
    rra
    nop
    nop
    jr nz, jr_0dd_4813

    inc bc
    inc bc
    ret nz

    rst $38
    inc b
    rlca
    ld d, b
    rst $38
    ld [$100f], sp
    rst $38
    ld [$300f], sp
    rst $38
    ld [$700f], sp
    rst $38
    ld [$f80f], sp
    rst $38
    dec b
    rlca
    rst $38
    rst $38
    dec b
    rlca
    rst $38
    rst $38
    ld [bc], a
    inc bc
    cp $ff
    ld [bc], a
    inc bc
    db $fc
    rst $38
    ld bc, $7801
    rst $38
    nop
    nop
    sub c
    rst $38
    nop
    nop
    ld l, [hl]
    ld l, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0dd_4813:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_0dd_48aa

    nop
    nop
    ld [hl], h
    ld a, h
    nop
    nop
    jp c, Jump_000_00ee

    nop

jr_0dd_487c:
    ld e, a
    rst $38
    nop
    nop

jr_0dd_4880:
    ccf
    rst $38
    add b
    add b
    ld a, a
    rst $38
    ret nz

    ret nz

    cp a
    rst $38
    ret nz

    ret nz

    rra
    rst $38
    ret nz

    ret nz

    rrca
    rst $38
    add b
    add b
    ld c, $ff
    ld b, b
    ret nz

    inc e
    rst $38
    jr nz, jr_0dd_487c

    jr @+$01

    jr nz, jr_0dd_4880

    db $10
    rst $38
    db $10
    ldh a, [rNR41]
    rst $38
    ld [hl], b
    ldh a, [$cc]
    rst $38

jr_0dd_48aa:
    ld hl, sp-$08
    sub d
    di
    db $fc
    db $fc
    ld h, c
    pop hl
    db $fc
    db $fc
    ld b, b
    ret nz

    ld hl, sp-$08
    ld b, b
    ret nz

    ld [hl], b
    ld [hl], b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    inc b
    rlca
    nop
    nop
    add hl, bc
    rrca
    nop
    nop
    inc de
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    ld [hl], b
    ld a, a
    nop
    nop
    add b
    rst $38
    ld bc, $2001
    rst $38
    ld [bc], a
    inc bc
    jr nz, @+$01

    ld [bc], a
    inc bc
    ld b, b
    rst $38
    ld [bc], a
    inc bc
    ldh [rIE], a
    inc bc
    inc bc
    di
    rst $38
    rlca
    rlca
    rst $38
    rst $38
    rlca
    rlca
    cp $ff
    inc bc
    inc bc
    rst $38
    db $fd
    ld bc, $fb01
    db $fc
    nop
    nop
    or a
    ld sp, hl
    nop
    nop
    ld b, l
    ld a, a
    nop
    nop
    ld a, $3e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld hl, sp-$08
    nop
    nop
    and h
    call c, RST_00

jr_0dd_49fc:
    ld a, d
    cp [hl]
    nop
    nop
    rst $38
    ld a, a
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    ld a, $ff
    add b
    add b
    inc e
    rst $38
    ld b, b
    ret nz

    jr @+$01

    jr nz, jr_0dd_49fc

    db $10
    rst $38
    ld [hl], b
    ldh a, [rNR41]
    rst $38
    ld hl, sp-$08
    cpl
    rst $38
    ldh a, [$f0]
    ld d, c
    pop af
    ldh [$e0], a
    and b
    ldh [$c0], a
    ret nz

    ld b, b
    ret nz

    nop
    nop
    add b
    add b
    nop
    nop
    add b
    add b
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    nop
    nop
    rlca
    rlca
    nop
    nop
    ld b, $07
    nop
    nop
    ld b, $07
    nop
    nop
    inc b
    rlca
    nop
    nop
    add hl, bc
    rrca
    nop
    nop
    inc de
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    ld [hl], b
    ld a, a
    nop
    nop
    add b
    rst $38
    ld bc, $2001
    rst $38
    ld [bc], a
    inc bc
    jr nz, @+$01

    ld [bc], a
    inc bc
    ld b, b
    rst $38
    ld [bc], a
    inc bc
    ldh [rIE], a
    inc bc
    inc bc
    di
    rst $38
    rlca
    rlca
    cp $ff
    rlca
    rlca
    cp $ff
    inc bc
    inc bc
    db $fc
    rst $38
    ld bc, $7801
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or b
    or b
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld e, h
    db $ec
    nop
    nop
    or d
    cp $00
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    ld a, $ff

jr_0dd_4b92:
    add b
    add b
    inc e
    rst $38

jr_0dd_4b96:
    add b
    add b
    add hl, de
    rst $38
    nop
    nop
    ld de, $00ff
    nop
    ld [hl+], a
    cp $00
    nop
    inc h
    db $fc
    nop
    nop
    ld e, b
    ld hl, sp+$00
    nop
    sub b
    ldh a, [rP1]
    nop
    jr nz, jr_0dd_4b92

    nop
    nop
    jr nz, jr_0dd_4b96

    nop
    nop
    ld b, b
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    rrca
    rrca
    nop
    nop
    inc e
    rra
    nop
    nop
    jr jr_0dd_4c5b

    nop
    nop
    jr jr_0dd_4c5f

    nop
    nop
    ld [$000f], sp
    nop
    inc b
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    inc de
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    ld [hl], b
    ld a, a
    nop
    nop
    add b

jr_0dd_4c5b:
    rst $38
    ld bc, $2001

jr_0dd_4c5f:
    rst $38
    ld [bc], a
    inc bc
    jr nz, @+$01

    ld [bc], a
    inc bc
    ld b, b
    rst $38
    ld [bc], a
    inc bc
    ldh [rIE], a
    inc bc
    inc bc
    di
    rst $38
    rlca
    rlca
    rst $38
    rst $38
    rlca
    rlca
    cp $ff
    inc bc
    inc bc
    db $fc
    rst $38
    ld bc, $f801
    rst $38
    nop
    nop
    ldh a, [rIE]
    nop
    nop
    ld a, h
    ld a, a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0dd_4cee:
    nop
    nop
    ldh [$e0], a
    nop
    nop
    jr jr_0dd_4cee

    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld e, $fe
    nop
    nop
    ccf
    rst $38
    nop
    nop
    ld a, a
    rst $38
    add b
    add b
    rst $38
    rst $38
    ld b, b
    ret nz

    rst $38
    rst $38
    ld b, b
    ret nz

    ccf
    rst $38

jr_0dd_4d12:
    add b
    add b
    rra
    rst $38

jr_0dd_4d16:
    nop
    nop
    dec e
    rst $38

jr_0dd_4d1a:
    nop
    nop
    add hl, de
    rst $38
    nop
    nop
    ld [hl-], a
    cp $00
    nop
    inc h
    db $fc
    nop
    nop
    ld e, b
    ld hl, sp+$00
    nop
    sub b
    ldh a, [rP1]
    nop
    jr nz, jr_0dd_4d12

    nop
    nop
    jr nz, jr_0dd_4d16

    nop
    nop
    jr nz, jr_0dd_4d1a

    nop
    nop
    jr nc, @-$0e

    nop
    nop
    ld a, b
    ld hl, sp+$00
    nop
    ld hl, sp-$08
    nop
    nop
    ldh a, [$f0]
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    inc bc
    nop
    nop
    inc b
    rlca
    nop
    nop
    inc b
    rlca
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld b, $07
    nop
    nop
    ld [$000f], sp
    nop
    inc de
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    ld [hl], b
    ld a, a
    nop
    nop
    add b
    rst $38
    ld bc, $2001
    rst $38
    ld [bc], a
    inc bc
    jr nz, @+$01

    rlca
    rlca
    ld b, b
    rst $38
    inc c
    rrca
    ldh [rIE], a
    rrca
    dec c
    di
    rst $38
    dec bc
    rrca
    rst $38
    rst $38
    dec b
    rlca
    cp $ff
    inc bc
    inc bc
    db $fc
    rst $38
    ld bc, $f801
    rst $38
    nop
    nop
    ld hl, sp-$01
    nop
    nop
    ld [hl], h
    ld [hl], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0dd_4e6e:
    nop
    nop
    ldh [$e0], a
    nop
    nop
    jr jr_0dd_4e6e

    nop
    nop
    ld b, $fe
    nop
    nop
    add hl, de
    rst $38
    nop
    nop
    ld a, $ff
    add b
    add b
    ld a, a
    rst $38
    ld b, b
    ret nz

    rst $38
    rst $38
    ld b, b
    ret nz

    rst $38
    rst $38
    add b
    add b
    ccf
    rst $38

jr_0dd_4e92:
    ld b, b
    ret nz

    ld e, $ff

jr_0dd_4e96:
    ld b, b
    ret nz

    inc e
    rst $38
    ld b, b
    ret nz

    jr @+$01

    add b
    add b
    ld sp, $00ff
    nop
    ld l, $fe
    nop
    nop
    ld c, b
    ld hl, sp+$00
    nop
    sub b
    ldh a, [rP1]
    nop
    jr nz, jr_0dd_4e92

    nop
    nop
    jr nz, jr_0dd_4e96

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    inc a
    db $fc
    nop
    nop
    ld a, [hl]
    cp $00
    nop
    ld a, [hl]
    cp $00
    nop
    cp $fe
    nop
    nop
    inc a
    inc a
    nop
    nop
    jr jr_0dd_4eee

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0dd_4eee:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $c001
    ret nz

    inc bc
    ld [bc], a
    ldh [rNR41], a
    ld bc, $f001
    jr nc, @+$03

    ld bc, $6cfc
    nop
    nop
    ei
    rst $00
    rra
    rra
    ld [hl], e
    ld c, a
    jr nc, jr_0dd_4f71

    or a
    xor a
    jr nz, @+$41

    ld e, a
    rst $18
    ld b, b
    ld a, a
    ld a, a
    rst $38
    ld b, b
    ld a, a
    ld a, a
    rst $38
    ld b, b
    ld a, a
    ld a, a
    rst $38
    add b
    rst $38
    ld c, a
    rst $38
    add b
    rst $38
    sub [hl]
    rst $28
    add c
    rst $38
    inc a
    rst $08
    ld b, d
    ld a, a
    ld l, h
    sbc a
    ld l, $37
    ld c, b
    cp a
    scf
    cpl
    call c, Call_0dd_5fff
    ld l, a
    or $ff
    ld c, a

jr_0dd_4f71:
    ld a, a
    db $e3
    rst $38
    ld e, a
    ld a, a
    pop bc
    rst $38
    ld e, a
    ld a, a
    ld [c], a
    rst $38
    ld c, a
    ld a, a
    db $fc
    rst $38
    daa
    ccf
    sbc c
    sbc a
    ld de, $061f
    ld b, $0e
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    ret nz

    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    and b
    ldh [rP1], a
    nop
    and b
    ldh [rP1], a
    nop
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    ld h, b
    ldh [rP1], a
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    inc l
    db $fc
    nop
    nop
    ld [hl+], a
    cp $00
    nop
    ld b, c
    rst $38
    nop
    nop
    add b
    rst $38
    add b
    add b
    nop
    rst $38
    ld b, b
    ret nz

    ld b, b
    rst $38
    ld b, b
    ret nz

    and b
    cp a
    ld h, b
    ldh [rNR10], a
    rra
    ld hl, sp-$08
    add hl, bc
    rrca
    ld a, [hl]
    cp $06
    rlca
    ccf
    rst $38
    ld bc, $6b01
    rst $38
    nop
    nop
    sub $fe
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $d001
    ldh a, [rSB]
    ld bc, $d8e8
    nop
    nop
    or h
    call z, RST_00
    ld e, d
    ld h, [hl]
    nop
    nop
    dec l
    inc sp
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld e, a
    ld l, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, [$199b]
    add hl, de
    ld [hl], c
    sub c
    ld a, $3f
    rst $10
    scf
    inc a
    ccf
    ret c

    ccf
    inc a
    ccf
    rst $20
    jr @+$1e

    rra
    rst $18
    ld sp, $0f0c
    or l
    ld a, e
    ld b, $07
    push af
    rst $38
    inc bc
    inc bc
    ldh a, [rIE]
    rlca
    rlca
    ld hl, sp-$01
    rlca
    rlca
    ld hl, sp-$01
    inc bc
    inc bc
    db $fc
    rst $38
    ld bc, $fb01
    ei
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    ret nz

    ret nz

    ret nz

    ld h, c
    and c
    ldh [$e0], a
    di
    inc de
    ldh a, [$f0]
    ld a, h
    adc a
    ldh a, [$f0]
    cp b
    rst $00
    ld a, b
    ld hl, sp-$40
    rst $38
    inc a
    db $fc
    xor $7f
    inc a
    db $fc
    rra
    rst $38
    ld a, b
    ld hl, sp-$71
    ld a, a
    ldh a, [$f0]
    adc a
    rst $38
    ldh [$e0], a
    rrca
    rst $38
    add b
    add b
    rra
    rst $38
    nop
    nop
    ld a, $fe
    nop
    nop
    ld a, b
    ld hl, sp+$00
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0dd_5208:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    rrca
    add hl, bc
    nop
    nop
    rrca
    ld [$8080], sp
    rlca
    inc b
    ld h, b
    ldh [rSC], a
    inc bc
    jr nc, jr_0dd_5208

    ld bc, $1801
    ld hl, sp+$00
    nop
    sbc h
    db $ec
    ld bc, $ee01
    ld e, [hl]
    ld bc, $7b01
    db $fd
    ld bc, $f701
    ld hl, sp+$03
    inc bc
    rst $38
    ld hl, sp+$03
    inc bc
    push hl
    and $02
    inc bc
    ld b, d
    jp $0203


    pop bc
    ld b, c
    dec b
    ld b, $c7
    ld b, a
    rlca
    inc b
    ld a, b
    rst $38
    rrca
    inc c
    ld e, h
    db $eb
    rra
    inc e
    and b
    ld e, a
    dec a
    ld a, $20
    rst $38
    dec a
    ccf
    ret nz

    cp a
    rra
    rra
    ret nz

    cp a
    rrca
    rrca
    ret nz

    rst $38
    rrca
    rrca
    ret nz

    rst $38
    rrca
    rrca
    db $e3
    rst $38
    rlca
    rlca
    ld hl, sp-$01
    inc bc
    inc bc
    add b
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
    ret nz

    nop
    nop
    ldh [rNR41], a
    ret nz

    ret nz

    pop af
    ld de, $e0e0
    db $eb
    dec de
    ldh a, [$f0]
    call nz, $f0bf
    ldh a, [rP1]
    rst $38
    ld a, b
    ld hl, sp+$7c
    rst $38
    inc a
    db $fc
    ld a, $ff
    inc a
    db $fc
    ccf
    rst $38
    ld a, b
    ld hl, sp+$3f
    rst $38
    ldh a, [$f0]
    ld a, a
    rst $38
    ld h, b
    ld h, b
    ld a, [hl]
    cp $00
    nop
    db $fc
    db $fc
    nop
    nop
    ret z

    ld hl, sp+$00
    nop
    db $10
    ldh a, [rP1]
    nop
    ld h, b
    ldh [rP1], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0dd_5388:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    dec b
    nop
    nop
    rrca
    ld [$8080], sp
    rlca
    inc b
    ld h, b
    ldh [rSC], a
    inc bc
    jr nc, jr_0dd_5388

    ld bc, $1801
    ld hl, sp+$00
    nop
    sbc h
    db $ec
    ld bc, $ee01
    ld e, [hl]
    ld bc, $7b01
    db $fd
    ld bc, $f701
    ld hl, sp+$03
    inc bc
    rst $38
    ld hl, sp+$03
    inc bc
    push hl
    and $02
    inc bc
    ld b, d
    jp $0203


    pop bc
    ld b, c
    dec b
    ld b, $df
    ld e, a
    rlca
    inc b
    ld h, b
    rst $38
    rrca
    inc c
    ld b, b
    rst $38
    rra
    inc e
    add b
    ld a, a
    dec a
    ld a, $00
    rst $38
    dec a
    ccf
    nop
    rst $38
    rra
    rra
    add c
    rst $38
    rrca
    rrca
    add e
    cp $0f
    rrca
    add $fd
    rrca
    rrca
    rst $38
    rst $38
    rlca
    rlca
    ld hl, sp-$01
    inc bc
    inc bc
    add b
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
    ret nz

    nop
    nop
    ldh [rNR41], a
    ret nz

    ret nz

    pop af
    ld de, $e0e0
    db $eb
    dec de
    ldh a, [$f0]
    call nz, $f0bf
    ldh a, [$80]
    rst $38
    ld a, b
    ld hl, sp+$7c
    rst $38
    inc a
    db $fc
    ld a, [hl]
    rst $38
    inc a
    db $fc
    ld a, a
    rst $38
    ld a, b
    ld hl, sp-$01
    rst $38
    ldh a, [$f0]
    ld a, a
    rst $38
    ld h, b
    ld h, b
    ld a, [hl]
    cp $00
    nop
    db $fc
    db $fc
    nop
    nop
    ret z

    ld hl, sp+$00
    nop
    db $10
    ldh a, [rP1]
    nop
    ld h, b
    ldh [rP1], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $e001
    ldh [rSC], a
    inc bc
    db $10
    ldh a, [rDIV]
    rlca
    ld l, b
    sbc b
    rrca
    rrca
    db $f4
    call z, Call_000_1f1f
    ld a, [$1fe6]
    rra
    ei
    rst $30
    rra
    rra
    cp $fd
    rra
    rra
    add e
    cp $0f
    rrca
    ld bc, $0fff
    rrca
    nop
    rst $38
    rlca
    rlca
    nop
    rst $38
    inc bc
    inc bc
    nop
    rst $38
    ld bc, $8001
    rst $38
    nop
    nop
    ret nz

    rst $38
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    ccf
    ccf
    nop
    nop
    rra
    rra
    nop
    nop
    rrca
    rrca
    nop
    nop
    rlca
    rlca
    nop
    nop
    inc bc
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_0dd_5602:
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ldh [$a0], a
    nop
    nop
    ret nz

    ld b, b
    nop
    nop
    jr nc, jr_0dd_5602

    nop
    nop
    ld [$00f8], sp
    nop
    inc h
    db $fc
    nop
    nop
    ld [hl], d
    cp $00
    nop
    ld a, [$c0fe]
    ret nz

    rst $38
    rst $38
    ldh [$e0], a
    db $fd
    rst $38
    ldh a, [$f0]
    db $fc
    rst $38
    ld hl, sp-$08
    db $fc
    rst $38
    ld a, b
    ld hl, sp-$02
    db $fd
    ldh a, [$b0]
    rst $38
    ld sp, hl
    ldh a, [$d0]
    ld e, l
    ld h, e
    or b
    ret nc

    cpl
    inc sp
    ldh [$a0], a
    ld [de], a
    rra
    ret nz

    ld b, b
    dec c
    dec c
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $e001
    ldh [rSC], a
    inc bc
    db $10
    ldh a, [rDIV]
    rlca
    ld l, b
    sbc b
    rrca
    rrca
    db $f4
    call z, Call_000_1f1f
    ld a, [$1fe6]
    rra
    ei
    rst $30
    rra
    rra
    cp $fd
    rra
    rra
    add e
    cp $0f
    rrca
    ld bc, $0fff
    rrca
    nop
    rst $38
    rlca
    rlca
    nop
    rst $38
    inc bc
    inc bc
    nop
    rst $38
    ld bc, $8001
    rst $38
    nop
    nop
    ret nz

    rst $38
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    ccf
    ccf
    nop
    nop
    rra
    rra
    nop
    nop
    rrca
    rrca
    nop
    nop
    rlca
    rlca
    nop
    nop
    inc bc
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_0dd_577e:
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ldh [$a0], a
    nop
    nop
    ret nz

    ld b, b
    nop
    nop
    jr nc, jr_0dd_577e

    nop
    nop
    ld c, $fe
    nop
    nop
    daa
    rst $38
    nop
    nop
    ld [hl], e
    rst $38
    add b
    add b
    ei
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    nop
    nop
    cp $fe
    ret nz

    ret nz

    rst $38
    db $fd
    ldh [$a0], a
    rst $38
    ld sp, hl
    ldh a, [$d0]
    ld a, l
    ld h, e
    or b
    ret nc

    rra
    inc de
    ldh [$a0], a
    ld c, $0f
    ret nz

    ld b, b
    ld bc, $8001
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, $07
    nop
    nop
    ld c, $0f
    nop
    nop
    ld c, $0f
    nop
    nop
    inc c
    rrca
    nop
    nop
    rrca
    ld c, $00
    nop
    rra
    rra
    nop
    nop
    inc sp
    ccf
    inc c
    inc c
    db $db
    rst $20
    rra
    rra
    ld a, a
    add c
    rra
    ld e, $ae
    ld d, e
    ld e, $1f
    ld sp, hl
    rst $00
    rrca
    rrca
    ld sp, hl
    rst $00
    rlca
    rlca
    ldh a, [$df]
    rlca
    rlca
    ldh [rIE], a
    rlca
    rlca
    ldh [rIE], a
    inc bc
    inc bc
    ldh [rIE], a
    ld bc, $8101
    rst $38
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
    ret nz

    nop
    nop
    and b
    ld h, b
    nop
    nop
    ld [hl], b
    or b
    nop
    nop
    ei
    ld a, e
    nop
    nop
    rst $38
    scf
    add b
    add b
    rst $28
    inc de
    ret nz

    ret nz

    ld [hl], a
    adc c
    ret nz

    ret nz

    rst $30
    ld sp, hl
    ldh [$e0], a
    rst $38
    db $fd
    ldh a, [$f0]
    rst $38
    db $fc
    ldh a, [$f0]
    cp a
    ld a, h
    ldh [$e0], a
    sbc a
    db $fd

jr_0dd_5926:
    nop
    nop
    ld e, $fa
    nop
    nop
    inc a
    db $fc
    nop
    nop
    ld [$00f8], sp
    nop
    jr nc, jr_0dd_5926

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_0dd_59e8

    nop
    nop
    ld e, e
    ld l, e
    nop
    nop
    ld a, h
    ld b, a
    nop
    nop
    dec a
    ld [hl+], a
    nop
    nop
    ld e, $11
    nop
    nop
    rra
    jr jr_0dd_59cd

jr_0dd_59cd:
    nop
    rra
    inc e
    nop
    nop
    ccf
    ld a, $00
    nop
    ld d, a
    ld l, a
    nop
    nop
    ld a, c
    ld b, a
    nop
    nop
    or b
    rst $08
    ld b, $06
    ldh [$9f], a
    rrca
    rrca
    ret nz

    cp a

jr_0dd_59e8:
    rrca
    rrca
    nop
    rst $38
    rrca
    rrca
    ld b, b
    rst $38
    rlca
    rlca
    pop bc
    cp $03
    inc bc
    ld [c], a
    db $fd
    inc bc
    inc bc
    db $fd
    ei
    inc bc
    inc bc
    rst $38
    rst $38
    ld bc, $f001
    rst $38
    nop
    nop
    ret nz

    rst $38
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
    ret nz

    nop
    nop
    ldh [$60], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp+$78
    nop
    nop
    db $dd
    dec h
    add b
    add b
    rst $28
    inc de
    ret nz

    ret nz

    ld [hl], a
    adc c
    ldh [$e0], a
    and e
    call c, $e0e0
    ld a, e
    db $fc
    ldh a, [$f0]
    rst $38
    cp $f8
    ld hl, sp-$01
    cp $f8
    ld a, b
    rst $38
    cp $f0
    ld [hl], b
    ld a, a
    cp $e0
    ldh [rIE], a
    db $fd
    ret nz

    ret nz

    cp $fe

jr_0dd_5aba:
    add b
    add b
    inc b
    db $fc
    nop
    nop
    jr jr_0dd_5aba

    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $d801
    ld e, b
    inc bc
    ld [bc], a
    db $e4
    inc a
    ld bc, $ea01
    ld d, $00
    nop
    rst $30
    adc e
    nop
    nop
    rst $38
    rst $00
    nop
    nop
    rst $38
    db $e3
    ld bc, $fe01
    pop af
    ld [bc], a
    inc bc
    cp a
    ld a, b
    inc bc
    ld [bc], a
    rst $08
    inc a
    dec b
    ld b, $85
    ld a, [hl]
    ld b, $05
    ld [bc], a
    rst $38
    ld e, $1d
    inc bc
    rst $38
    ld a, $3d
    rlca
    rst $38
    inc a
    ccf
    rlca
    ei
    inc a
    ccf
    dec c
    di
    rra
    rra
    dec e
    db $e3
    rrca
    rrca
    cp e
    rst $00
    rrca
    rrca
    rst $10
    rst $28
    rrca
    rrca
    db $fc
    rst $38
    rlca
    rlca
    ret nz

    rst $38
    inc bc
    inc bc
    inc bc
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    ld b, b
    nop
    nop
    ldh [rNR41], a
    nop
    nop
    db $76
    sub [hl]
    nop
    nop
    cp a
    ld c, a
    nop
    nop
    rst $18
    daa
    add b
    add b
    adc a
    ld [hl], e
    add b
    add b
    rst $28
    di
    ret nz

    ret nz

    rst $38
    ei
    ldh [$e0], a
    rst $38
    ld sp, hl
    ldh [$e0], a
    rst $38
    ld sp, hl
    ret nz

    ret nz

    rst $38
    ei
    ret nz

    ret nz

    rst $38
    rst $30
    ret nz

    ret nz

    rst $38
    rst $38
    add b
    add b
    inc de
    di
    nop
    nop
    ld h, b
    ldh [rP1], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec c
    rrca
    nop
    nop
    inc de
    rra
    nop
    nop
    daa
    ccf
    nop
    nop
    ld e, a
    ld a, a
    nop
    nop
    or b
    rst $38
    ld bc, $4001
    rst $38
    ld [bc], a
    inc bc
    add b
    rst $38
    dec b
    rlca
    nop
    rst $38
    add hl, bc
    rrca
    nop
    rst $38
    inc de
    rra
    nop
    rst $38
    rla
    rra
    nop
    rst $38
    rra
    rra
    add c
    rst $38
    rra
    rra
    ret nz

    rst $38
    ccf
    ccf
    ld hl, sp-$01
    ccf
    ccf
    ldh a, [rIE]
    ccf
    ccf
    ldh [rIE], a
    rra
    rra
    ldh [rIE], a
    rrca
    rrca
    ret nc

    rst $18
    rlca
    rlca
    ld [$000f], sp
    nop
    inc b
    rlca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld a, h
    db $fc
    nop
    nop
    ld [hl], h
    db $fc
    nop
    nop
    ld h, d
    cp $00
    nop
    ld b, c
    rst $38
    nop
    nop
    nop
    rst $38
    add b
    add b
    nop
    rst $38
    ld b, b
    ret nz

    add b
    rst $38
    add b
    add b
    ret nz

    rst $38
    ret nz

    ret nz

    ld h, e
    rst $38
    ld hl, sp-$08
    ld [hl], $ff
    ld a, h
    db $fc
    ld a, [de]
    ei
    ld e, [hl]
    cp $11
    pop af
    sub $fe
    db $10
    ldh a, [$f4]
    db $fc
    ld [hl], b
    ldh a, [$38]
    jr c, jr_0dd_5e09

    ld hl, sp+$00
    nop
    call z, Call_000_00fc
    nop
    db $fc
    db $fc
    nop
    nop
    ld h, [hl]
    ld a, [hl]
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld [hl], d
    ld a, [hl]
    nop
    nop
    inc a
    inc a
    nop
    nop
    jr jr_0dd_5df6

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0dd_5df6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0dd_5e09:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_0dd_5e4c

    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    cp $ea
    ld bc, $e301
    db $fd
    inc bc
    ld [bc], a
    add c
    ld a, a
    rlca
    inc b
    add c
    ld a, a
    dec bc
    inc c
    nop
    rst $38

jr_0dd_5e4c:
    ld [de], a
    dec e
    ld bc, $12ff
    rra
    inc bc
    db $fd
    rla
    rra
    ld b, $f9
    rra
    rra
    call Call_000_1ff3
    rra
    rst $38
    rst $38
    rrca
    rrca
    ld hl, sp-$01
    rlca
    rlca
    ldh [rIE], a
    ld bc, $ff01
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
    inc bc
    inc bc
    add b
    add b
    dec b
    ld b, $c0
    ld b, b
    ld b, $07
    and b
    ldh [$e5], a
    rst $20
    ldh [$e0], a
    rla
    push af
    ldh [$e0], a
    ld a, a
    rst $38
    ldh [rNR41], a

jr_0dd_5f08:
    ld sp, hl
    cp $e0
    jr nz, @-$01

    cp $e0
    jr nz, @+$01

    db $fc
    and b
    ld h, b
    db $fd
    cp $40
    ret nz

    ld sp, hl
    rst $38
    add b
    add b

jr_0dd_5f1c:
    ld [c], a
    rst $38
    add b
    add b
    inc b
    rst $38
    ret nz

    ret nz

    add hl, de
    rst $38
    jr nz, jr_0dd_5f08

jr_0dd_5f28:
    ld hl, sp-$01
    jr nc, jr_0dd_5f1c

    inc b
    rlca
    jr c, jr_0dd_5f28

    ld [bc], a
    inc bc
    ld a, b
    ld hl, sp+$01
    ld bc, $f8f8
    nop
    nop
    ldh a, [$f0]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_0dd_5fec

    nop
    nop
    db $fc
    db $e4
    ld bc, $7f01
    ei
    ld [bc], a
    inc bc
    db $fc
    dec sp
    rlca
    ld b, $ee
    dec d
    rrca
    ld c, $d0
    cpl
    ld e, $1f
    sub b
    ld a, a

jr_0dd_5fec:
    ld e, $1f
    ldh [$df], a
    rrca
    rrca
    ldh [$df], a
    rlca
    rlca
    ldh [rIE], a
    rlca
    rlca
    ldh [rIE], a
    rlca
    rlca
    pop af

Call_0dd_5fff:
    rst $38
    inc bc
    inc bc
    db $fc
    rst $38
    ld bc, $c001
    rst $38
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_0dd_60c6

    ld h, b
    ld h, b
    ld a, h
    ld e, h
    ldh a, [$f0]
    rst $38
    add a
    ld hl, sp-$08

jr_0dd_6098:
    cp $8f
    ld a, b
    ld hl, sp+$1b
    db $fc
    inc a
    db $fc
    ccf
    cp $9e
    ld a, [hl]

jr_0dd_60a4:
    rra
    rst $38
    sbc [hl]
    ld a, [hl]
    rra
    rst $38
    cp h
    db $fc
    rra
    rst $38
    cp b
    ld hl, sp+$3f
    rst $38
    jr nc, jr_0dd_60a4

    ld a, $ff

jr_0dd_60b6:
    jr nz, jr_0dd_6098

    ld a, h
    rst $38
    ld b, b
    ret nz

    rst $20
    rst $38
    add b
    add b
    ld [$00f8], sp
    nop
    jr nc, jr_0dd_60b6

jr_0dd_60c6:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_0dd_60ff:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    ccf
    add hl, sp
    nop
    nop
    rst $18
    cp $01
    ld bc, $8e7f
    ld [bc], a
    inc bc
    db $ec
    rra
    rlca
    ld b, $ee
    dec [hl]
    rrca
    ld c, $d0
    cpl
    ld e, $1f
    sub b
    ld a, a
    ld e, $1f
    ldh [$df], a
    rrca
    rrca
    ldh [$df], a
    rlca
    rlca
    ldh [rIE], a
    rlca
    rlca
    ldh [rIE], a
    rlca
    rlca
    pop af
    rst $38
    inc bc
    inc bc
    db $fc
    rst $38
    ld bc, $c001
    rst $38
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_0dd_6246

    ld h, b
    ld h, b
    ld a, h
    ld e, h
    ldh a, [$f0]
    rst $38
    add a
    ld hl, sp-$08

jr_0dd_6218:
    cp $8f
    ld a, b
    ld hl, sp+$1b
    db $fc
    inc a
    db $fc
    ccf
    cp $9e
    ld a, [hl]

jr_0dd_6224:
    rra
    rst $38
    sbc [hl]
    ld a, [hl]
    rra
    rst $38
    cp h
    db $fc
    rra
    rst $38
    cp b
    ld hl, sp+$3f
    rst $38
    jr nc, jr_0dd_6224

    ld a, $ff

jr_0dd_6236:
    jr nz, jr_0dd_6218

    ld a, h
    rst $38
    ld b, b
    ret nz

    rst $20
    rst $38
    add b
    add b
    ld [$00f8], sp
    nop
    jr nc, jr_0dd_6236

jr_0dd_6246:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [$90]
    nop
    nop
    ld a, [hl]
    ld c, [hl]
    nop
    nop
    inc hl
    ccf
    nop
    nop
    ld d, $1f
    add b
    add b
    rra
    dec de
    ret nz

    ret nz

    rra
    rra
    ldh [$a0], a
    rrca
    rrca
    ldh a, [rNR10]
    inc bc
    inc bc
    ld hl, sp+$08
    nop
    nop
    db $e4
    sbc h
    nop
    nop
    adc [hl]
    cp $00
    nop
    ld e, a
    ld a, a
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    ld bc, $c301
    rst $38
    ld [bc], a
    inc bc
    pop af
    ld l, a
    inc bc
    ld [bc], a
    pop af
    ld a, a
    inc bc
    ld [bc], a
    add c
    ld a, a
    ld [bc], a
    inc bc
    pop bc
    ccf
    inc bc
    ld [bc], a
    add c
    ld a, a
    ld [bc], a
    inc bc
    pop bc
    ld a, a
    ld bc, $c101
    rst $38
    nop
    nop
    inc hl
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    rra
    rra
    ld bc, $ff01
    rst $38
    ld [bc], a
    inc bc
    ld a, a
    rst $38
    ld [bc], a
    inc bc
    rst $38
    ld a, a
    ld [bc], a
    inc bc
    ei
    rst $30
    ld [bc], a
    inc bc
    sbc a
    ldh a, [rSB]
    ld bc, $f8f7
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
    ret nz

    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld a, $fe
    nop
    nop
    add hl, de
    rst $38
    nop
    nop
    inc b
    rst $38
    add b
    add b
    inc b
    rst $38
    ld b, b
    ret nz

    add h
    rst $38
    ld h, b
    ldh [$d8], a
    rst $38
    ld [hl], b
    ldh a, [$f4]
    rst $38
    ld c, b
    ld hl, sp-$7c
    rst $38
    adc h
    db $fc
    add h
    rst $38
    add [hl]
    cp $8d
    rst $38
    ld c, $fe
    rst $38
    rst $38
    db $fc
    db $fc
    ld hl, sp-$08
    jr c, jr_0dd_6400

    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ld h, b
    and b
    nop
    nop
    and b
    ld h, b
    nop
    nop
    ret nz

    ld b, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0dd_6400:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_0dd_644e

    nop
    nop
    ld a, b
    ld c, b
    nop
    nop
    ccf
    daa
    nop
    nop
    ld de, $801f
    add b
    dec bc
    rrca
    ld b, b
    ret nz

    rrca
    dec c
    ldh [$e0], a
    rrca
    rrca
    ldh a, [$d0]
    rlca
    rlca
    ld hl, sp-$78
    ld bc, $fc01
    add h
    nop
    nop
    ld [hl], d
    ld c, [hl]
    nop
    nop
    ld b, a
    ld a, a
    nop
    nop
    cpl
    ccf
    nop
    nop

jr_0dd_644e:
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld hl, $003f
    nop
    ld b, b
    ld a, a
    nop
    nop
    add b
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $0101
    rst $38
    nop
    nop
    add e
    rst $38
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    rst $28
    rst $28
    ld bc, $ff01
    rst $38
    inc bc
    inc bc
    rst $30
    rst $30
    ld bc, $7801
    rst $28
    nop
    nop
    ld hl, sp-$39
    nop
    nop
    ld a, a
    ld b, b
    nop
    nop
    dec a
    inc hl
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
    ret nz

    nop
    nop
    and b
    ldh [rP1], a
    nop
    ld hl, sp-$08
    nop
    nop
    sbc h
    db $fc
    nop
    nop
    adc a
    rst $38
    nop
    nop

jr_0dd_6520:
    add d
    rst $38
    add b
    add b
    add d
    rst $38
    ld b, b
    ret nz

    jp nz, Jump_0dd_60ff

    ldh [$ec], a
    rst $38
    jr nc, jr_0dd_6520

    ld a, [$28ff]
    ld hl, sp-$3e
    rst $38

jr_0dd_6536:
    ld b, h
    db $fc
    jp nz, Jump_0dd_46ff

    cp $c6
    rst $38
    add [hl]
    cp $ff
    rst $38
    ld c, $fe
    db $fc
    db $fc
    cp h
    db $fc
    ldh a, [$f0]
    ld a, b
    ld a, b
    ret nc

    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nz, jr_0dd_6536

    nop
    nop
    ld b, b
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_0dd_65ce

    nop
    nop
    ld a, b
    ld c, b
    nop
    nop
    ccf
    daa
    nop
    nop
    ld de, $801f
    add b
    dec bc
    rrca
    ld b, b
    ret nz

    rrca
    dec c
    ldh [$e0], a
    rrca
    rrca
    ldh a, [$d0]
    rlca
    rlca
    ld hl, sp-$78
    ld bc, $fc01
    add h
    nop
    nop
    ld [hl], d
    ld c, [hl]
    nop
    nop
    ld b, a
    ld a, a
    nop
    nop
    cpl
    ccf
    nop
    nop

jr_0dd_65ce:
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld hl, $003f
    nop
    ld b, b
    ld a, a
    nop
    nop
    add b
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $0101
    rst $38
    nop
    nop
    add e
    rst $38
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rlca
    rlca
    nop
    nop
    inc b
    rlca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
    ret nz

    nop
    nop
    and b
    ldh [rP1], a
    nop
    ld hl, sp-$08
    nop
    nop
    sbc h
    db $fc
    nop
    nop
    adc a
    rst $38
    nop
    nop

jr_0dd_66a0:
    add d
    rst $38
    add b
    add b
    add d
    rst $38
    ld b, b
    ret nz

    jp nz, Jump_0dd_60ff

    ldh [$ec], a
    rst $38
    jr nc, jr_0dd_66a0

    ld a, [$28ff]
    ld hl, sp-$3e
    rst $38
    ld b, h
    db $fc
    jp nz, Jump_0dd_46ff

    cp $c6
    rst $38
    add [hl]
    cp $ff
    rst $38
    ld c, $fe
    db $fc
    db $fc
    cp h
    db $fc
    ld hl, sp-$08
    ld a, b
    ld a, b
    call z, Call_000_00fc
    nop
    jr @-$16

    nop
    nop
    ld hl, sp+$08
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    ccf
    add hl, sp
    nop
    nop
    rst $18
    cp $01
    ld bc, $8e7f
    ld [bc], a
    inc bc
    db $ec
    rra
    rlca
    ld b, $e0
    ccf
    rrca
    ld c, $c0
    ccf
    ld e, $1f
    add b
    ld a, a
    ld e, $1f
    ldh [$df], a
    rrca
    rrca
    ldh [$df], a
    rlca
    rlca
    ldh [rIE], a
    rlca
    rlca
    ldh [rIE], a
    rlca
    rlca
    pop af
    rst $38
    inc bc
    inc bc
    db $fc
    rst $38
    ld bc, $c001
    rst $38
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_0dd_69c6

    ld h, b
    ld h, b
    ld a, h
    ld e, h
    ldh a, [$f0]
    rst $38
    add a
    ld hl, sp-$08

jr_0dd_6998:
    cp $8f
    ld a, b
    ld hl, sp+$1b
    db $fc
    inc a
    db $fc
    ccf
    cp $9e
    ld a, [hl]

jr_0dd_69a4:
    rra
    rst $38
    sbc [hl]
    ld a, [hl]
    rra
    rst $38
    cp h
    db $fc
    rra
    rst $38
    cp b
    ld hl, sp+$3f
    rst $38
    jr nc, jr_0dd_69a4

    ld a, $ff

jr_0dd_69b6:
    jr nz, jr_0dd_6998

    ld a, h
    rst $38
    ld b, b
    ret nz

    rst $20
    rst $38
    add b
    add b
    ld [$00f8], sp
    nop
    jr nc, jr_0dd_69b6

jr_0dd_69c6:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    inc bc
    nop
    nop
    inc b
    rlca
    nop
    nop
    inc b
    rlca
    nop
    nop
    dec e
    rra
    nop
    nop
    ld hl, $003f
    nop
    ld b, [hl]
    ld a, a
    nop
    nop
    ld c, c
    ld a, [hl]
    ld bc, $9101
    cp $02
    inc bc
    pop hl
    ld a, $03
    ld [bc], a
    rst $20
    ld a, [hl]
    inc bc
    ld [bc], a
    rst $38
    rst $28
    ld bc, $cf01
    rst $30
    nop
    nop
    rst $38
    rst $08
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, $3e
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, @+$3a

    nop
    nop
    ld e, h
    ld h, h
    nop
    nop
    cp $ce
    nop
    nop
    ccf
    rst $18
    nop
    nop
    ld a, $fd
    add b
    add b
    ld d, e
    db $ed
    ret nz

    ret nz

    adc l
    ei
    ldh [$e0], a
    rra
    rst $38
    ldh [$e0], a
    rra
    rst $38
    ldh [$e0], a
    rst $38
    rrca
    ret nz

    ret nz

    ld [hl], a
    sbc a
    add b
    add b
    call Call_000_003b
    nop
    call z, $803f
    add b
    add b
    rst $38
    add b
    add b
    ld bc, $00ff
    nop
    ld [bc], a
    cp $00
    nop
    inc b
    db $fc
    nop
    nop
    adc b
    ld hl, sp+$00
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $6001
    ld h, b
    inc bc
    inc bc
    ldh a, [$f0]
    inc b
    rlca
    ld hl, sp-$08
    ld [$c60f], sp
    cp $10
    rra
    reti


    rst $20
    jr nc, jr_0dd_6d9b

    ld e, [hl]
    ld h, c
    ldh a, [rIE]
    cpl
    jr nc, jr_0dd_6dd3

    rst $38
    ld d, $19
    ldh a, [rIE]
    add hl, bc
    rrca
    ld hl, sp-$01
    dec b
    rlca
    rst $38
    rst $38
    inc bc
    inc bc
    cp $ff
    inc bc
    inc bc
    db $fc
    rst $38
    ld bc, $f801
    rst $38
    nop
    nop
    ldh a, [rIE]
    nop
    nop
    ld a, b
    ld a, a
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld [bc], a
    inc bc
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

jr_0dd_6d9b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0dd_6dd3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld e, $1e
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld a, a
    ld a, a
    add b
    add b
    rst $38
    rst $38
    ret nz

    ret nz

    cp a
    rst $38
    ret nz

    ret nz

    rra
    rst $38
    ret nz

    ret nz

    rrca
    rst $38
    add b
    add b
    ld c, $ff
    ld b, b
    ret nz

    dec e
    cp $a0
    ld h, b
    rra
    ld hl, sp-$50
    ld [hl], b
    inc de
    db $fc
    ldh a, [$30]
    dec l
    cp $b0
    ld [hl], b
    db $d3
    di
    ld h, b
    ldh [rNR42], a
    pop hl
    ret nz

    ret nz

    ld b, b
    ret nz

    add b
    add b
    ld b, b
    ret nz

    nop
    nop
    jr nz, @-$1e

    nop
    nop
    jr nz, @-$1e

jr_0dd_6e3e:
    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    jr c, jr_0dd_6e3e

    nop
    nop
    ld a, [hl]
    cp $00
    nop
    ld a, a
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld e, $1e
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    nop
    nop
    inc b
    rlca
    jr c, jr_0dd_6f0a

    ld [$7c0f], sp
    ld a, h
    db $10
    rra
    ld a, e
    ld a, a
    jr nc, jr_0dd_6f1b

    ld a, h
    ld [hl], e
    ldh a, [rIE]
    cpl
    jr nc, jr_0dd_6f53

    rst $38
    ld d, $19
    ldh a, [rIE]
    add hl, bc
    rrca
    ld hl, sp-$01
    rlca
    rlca
    rst $38
    rst $38
    inc bc
    inc bc
    cp $ff
    inc bc
    inc bc
    db $fc
    rst $38
    ld bc, $f801
    rst $38
    nop
    nop
    ldh a, [rIE]
    nop
    nop
    ld a, b
    ld a, a
    nop
    nop
    dec b
    rlca
    nop
    nop

jr_0dd_6f0a:
    inc bc
    inc bc
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

jr_0dd_6f1b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0dd_6f53:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld e, $1e
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld a, a
    ld a, a
    add b
    add b
    rst $38
    rst $38
    ret nz

    ret nz

    cp a
    rst $38
    ret nz

    ret nz

    rra
    rst $38
    ret nz

    ret nz

    rrca
    rst $38
    add b
    add b
    ld c, $ff
    ld b, b
    ret nz

    dec e
    cp $60
    ldh [rNR22], a
    ld hl, sp+$60
    ldh [rNR13], a
    db $fc
    ld h, b
    ldh [$2e], a
    rst $38
    ret nz

    ret nz

    rst $10
    rst $30
    add b
    add b
    ld hl, $00e1
    nop
    ld b, b
    ret nz

    nop
    nop
    add b
    add b
    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ret nz

    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    rlca
    rlca
    inc b
    rlca
    rrca
    rrca
    adc b
    adc a
    inc e
    rra
    ld d, b
    rst $18
    jr @+$21

    jr nc, @+$01

    jr jr_0dd_707d

    db $10
    rst $38
    ld [$300f], sp
    rst $38
    ld [$700f], sp
    rst $38
    ld [$f80f], sp
    rst $38
    dec b
    rlca
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    cp $ff
    ld bc, $ff01
    rst $38
    nop

jr_0dd_707d:
    nop
    db $fc
    db $fc
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    jr nc, jr_0dd_70b8

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0dd_70b8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld e, $1e
    nop
    nop

jr_0dd_70fc:
    ccf
    ccf
    nop
    nop

jr_0dd_7100:
    ld a, a
    ld a, a
    add b
    add b
    rst $38
    rst $38
    ret nz

    ret nz

    cp a
    rst $38
    ret nz

    ret nz

    rra
    rst $38
    ret nz

    ret nz

    rrca
    rst $38
    add b
    add b
    ld c, $ff
    ld b, b
    ret nz

    inc e
    rst $38
    jr nz, jr_0dd_70fc

    jr @+$01

    jr nz, jr_0dd_7100

    db $10
    rst $38
    ld [hl], b
    ldh a, [$28]
    rst $38
    ldh a, [$f0]
    rst $10
    rst $30
    ldh a, [$f0]
    and c
    pop hl
    ldh [$e0], a
    ld b, b
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    ld c, $00
    nop
    rlca
    ld b, $00
    nop
    ld [bc], a
    inc bc
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    inc bc
    inc bc
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld [$030f], sp
    inc bc
    sub b
    sbc a
    inc b
    rlca
    ld [hl], b
    rst $38
    ld [$100f], sp
    rst $38
    ld [$300f], sp
    rst $38
    ld [$700f], sp
    rst $38
    ld [$f80f], sp
    rst $38
    dec b
    rlca
    rst $38
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    inc bc
    inc bc
    cp $ff
    ld bc, $fc01
    rst $38
    nop
    nop
    db $fd
    ld a, [$0000]
    ld a, a
    ld [hl], b
    nop
    nop
    ld [hl], $39
    nop
    nop
    add hl, bc
    rrca
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

    nop
    nop
    and b
    ldh [rP1], a
    nop
    call c, Call_000_003c
    nop
    xor $1e
    nop
    nop

jr_0dd_727c:
    rst $38
    rra
    nop
    nop

jr_0dd_7280:
    ld a, a
    cp a
    add b
    add b
    rst $38
    rst $38
    ret nz

    ret nz

    cp a
    rst $38
    ret nz

    ret nz

    rra
    rst $38
    ret nz

    ret nz

    rrca
    rst $38
    add b
    add b
    ld c, $ff
    ld b, b
    ret nz

    inc e
    rst $38
    jr nz, jr_0dd_727c

    jr @+$01

    jr nz, jr_0dd_7280

    db $10
    rst $38
    db $10
    ldh a, [$28]
    rst $38
    ld [hl], b
    ldh a, [$d4]
    rst $30
    ld hl, sp-$08
    and d
    db $e3
    db $fc
    db $fc
    ld b, c
    pop bc
    db $fc
    db $fc
    add b
    add b
    ld hl, sp-$08
    add b
    add b
    ld [hl], b
    ld [hl], b
    ld b, b
    ret nz

    nop
    nop
    ld b, b
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rra
    rra
    nop
    nop
    jr c, jr_0dd_736b

    nop
    nop
    dec de
    inc e
    nop
    nop
    dec bc
    inc c
    nop
    nop
    dec b
    ld b, $00
    nop
    dec b
    ld b, $00
    nop
    ld [bc], a
    inc bc
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    inc bc
    inc bc
    nop
    nop
    rlca
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0dd_739b

    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    ret nz

    rst $38
    ld bc, $e001

jr_0dd_736b:
    rst $38
    inc bc
    inc bc
    di
    rst $38
    rlca
    rlca
    rst $38
    rst $38
    rlca
    rlca
    rst $38
    cp $03
    inc bc
    db $fd
    cp $01
    ld bc, $fcfb
    nop
    nop
    ei
    db $fc
    nop
    nop
    ld [hl], h
    ld [hl], a
    nop
    nop
    inc bc
    inc bc
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

jr_0dd_739b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
    ret nz

    nop
    nop
    and b
    ld h, b
    nop
    nop
    ret nc

    jr nc, jr_0dd_73f7

jr_0dd_73f7:
    nop
    call z, Call_000_003c
    nop

jr_0dd_73fc:
    cp [hl]
    ld a, [hl]
    nop
    nop
    ld a, a
    rst $38
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    ld a, $ff
    add b
    add b
    inc e
    rst $38
    ld b, b
    ret nz

    jr @+$01

    jr nz, jr_0dd_73fc

    db $10
    rst $38
    db $10
    ldh a, [rNR41]
    rst $38
    ld [$2cf8], sp
    rst $38
    jr c, @-$06

    ld d, e
    di
    ld a, h
    db $fc
    and b
    ldh [$fe], a
    cp $40
    ret nz

    ld a, a
    ld a, a
    ld b, b
    ret nz

    ccf
    ccf
    and b
    ld h, b
    ld a, $3e
    ldh a, [$30]
    inc e
    inc e
    ret c

    jr c, jr_0dd_7443

jr_0dd_7443:
    nop
    or b
    ld [hl], b
    nop
    nop
    ldh [$e0], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rrca
    ld c, $00
    nop
    dec b
    ld b, $00
    nop
    ld [bc], a
    inc bc
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    inc bc
    inc bc
    nop
    nop
    rlca
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0dd_751b

    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    ret nz

    rst $38
    ld bc, $e001
    rst $38
    inc bc
    inc bc
    di
    rst $38
    rlca
    rlca
    cp $ff
    rlca
    rlca
    rst $38
    cp $03
    inc bc
    db $fd
    cp $01
    ld bc, $fcfb
    nop
    nop
    ld hl, sp-$01
    nop
    nop
    ld [hl], a
    ld [hl], a
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
    nop

jr_0dd_751b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
    ret nz

    nop
    nop
    and b
    ld h, b
    nop
    nop
    ret nc

    jr nc, jr_0dd_7577

jr_0dd_7577:
    nop
    call c, Call_000_003c
    nop

jr_0dd_757c:
    cp [hl]
    ld a, [hl]
    nop
    nop
    ld a, a
    rst $38
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    ld a, $ff
    add b
    add b
    inc e
    rst $38
    ld b, b
    ret nz

    jr @+$01

    jr nz, jr_0dd_757c

    db $10
    rst $38
    ld [hl], b
    ldh a, [rNR50]
    rst $38
    ld hl, sp-$08
    dec hl
    ei
    ldh a, [$f0]
    ld d, c
    pop af
    ldh [$e0], a
    and b
    ldh [$c0], a
    ret nz

    ld b, b
    ret nz

    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    ldh [$60], a
    nop
    nop
    or b
    ld [hl], b
    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    ret nz

    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    rrca
    rrca
    nop
    nop
    inc e
    rra
    nop
    nop
    jr @+$21

    nop
    nop
    jr jr_0dd_765f

    nop
    nop
    ld [$000f], sp
    nop
    inc b
    rlca
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    rlca
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0dd_769b

    nop
    nop
    ld h, b

jr_0dd_765f:
    ld a, a
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    ret nz

    rst $38
    ld bc, $e001
    rst $38
    inc bc
    inc bc
    di
    rst $38
    rlca
    rlca
    rst $38
    rst $38
    rlca
    rlca
    cp $ff
    inc bc
    inc bc
    db $fc
    rst $38
    ld bc, $f801
    rst $38
    nop
    nop
    ld hl, sp-$01
    nop
    nop
    ld [hl], h
    ld [hl], a
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
    nop

jr_0dd_769b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    inc c
    db $fc
    nop
    nop
    ld e, $fe
    nop
    nop
    ccf
    rst $38
    nop
    nop
    ld a, a
    rst $38
    add b
    add b
    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    ccf
    rst $38
    add b
    add b
    rra
    rst $38

jr_0dd_7716:
    nop
    nop
    ld e, $fe

jr_0dd_771a:
    nop
    nop
    ld a, [de]
    cp $00
    nop
    inc [hl]
    db $fc
    nop
    nop
    jr z, @-$06

    nop
    nop
    ld d, b
    ldh a, [rP1]
    nop
    and b
    ldh [rP1], a
    nop
    ld b, b
    ret nz

    nop
    nop
    jr nz, jr_0dd_7716

    nop
    nop
    jr nz, jr_0dd_771a

    nop
    nop
    jr nc, @-$0e

    nop
    nop
    ld a, b
    ld hl, sp+$00
    nop
    ld hl, sp-$08
    nop
    nop
    ldh a, [$f0]
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0dd_77a7:
    nop
    nop
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
    ld [bc], a
    inc bc
    nop
    nop
    inc b
    rlca
    nop
    nop
    inc b
    rlca
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    rlca
    rlca
    inc c
    inc c
    ld [$1e0f], sp
    ld e, $10
    rra
    ccf
    ccf
    jr nz, jr_0dd_781b

    ld a, $39
    ldh [rIE], a
    rra
    jr jr_0dd_7843

    rst $38
    rla
    jr jr_0dd_77a7

    ld a, a
    dec bc
    inc c
    ldh [rIE], a
    dec b
    rlca
    di
    rst $38
    rlca
    rlca
    rst $38
    rst $38
    rlca
    rlca
    cp $ff
    inc bc
    inc bc
    db $fc
    rst $38
    ld bc, $f801
    rst $38
    nop
    nop
    ld hl, sp-$01
    nop
    nop
    ld [hl], h
    ld [hl], a
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
    nop

jr_0dd_781b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0dd_7843:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    inc c
    db $fc
    nop
    nop
    ld e, $fe
    nop
    nop
    ccf
    rst $38
    nop
    nop
    ld a, a
    rst $38
    add b
    add b
    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    ccf
    rst $38
    and b
    ld h, b
    rra
    cp $d0
    jr nc, @+$1e

    rst $38
    ret nc

    jr nc, jr_0dd_78b6

    cp $a0
    ld h, b
    ld [hl], $ff
    ld b, b
    ret nz

    add hl, hl
    ld sp, hl
    add b
    add b
    ld d, b
    ldh a, [rP1]
    nop
    and b
    ldh [rP1], a
    nop
    ld b, b
    ret nz

    nop
    nop
    jr nz, @-$1e

jr_0dd_78b6:
    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    inc a
    db $fc
    nop
    nop
    ld a, [hl]
    cp $00
    nop
    ld a, [hl]
    cp $00
    nop
    cp $fe
    nop
    nop
    inc a
    inc a
    nop
    nop
    jr jr_0dd_78ee

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0dd_78ee:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
