SECTION "ROM Bank $09e", ROMX[$4000], BANK[$9e]

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
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    ld [$04ff], sp
    rst $38
    add d
    rst $38
    add c
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    ld [$04ff], sp
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ld hl, sp+$07
    rst $38
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
    ld hl, sp-$04
    nop
    cp $00
    cp $00
    db $fc
    nop
    ld hl, sp+$04
    db $fc
    rlca
    rst $38
    rlca
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
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    ld [$08ff], sp
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    add c
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    db $fc
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
    rst $38
    rst $38
    rst $38
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
    pop af
    rst $38
    di
    rst $38
    rst $30
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    ldh a, [$f0]
    db $fc
    db $fc
    di
    di
    ld hl, sp-$08
    rst $30
    rst $30
    ld hl, sp-$08
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
    ccf
    dec a
    ccf
    dec a
    ccf
    dec a
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    di
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
    add b
    rst $38
    ld b, b
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld hl, sp-$01
    ld hl, sp+$7f
    db $fc
    ld a, a
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    ccf
    inc e
    rra
    db $fc
    rst $38
    inc e
    rra
    db $fc
    rst $38
    ld a, a
    ld h, b
    rst $38
    ld b, b
    rst $38
    ld [hl], b
    rst $38
    ld l, h
    rst $38
    ld h, e
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
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$df], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [$03]
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
    ldh a, [rIE]
    ldh a, [rIE]
    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
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
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld [hl], b
    rst $38
    inc c
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rra
    ldh [rTAC], a
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
    rst $38
    nop
    rst $38
    nop
    ld bc, $0101
    ld bc, $0201
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0109], sp
    ld bc, $010a
    ld bc, $0101
    ld bc, $0101
    dec bc
    inc c
    dec c
    ld c, $0f
    ld bc, $1001
    ld bc, $0111
    ld bc, $0101
    ld bc, $1201
    inc de
    inc d
    dec d
    ld bc, $1601
    rla
    ld bc, $0118
    ld bc, $0101
    ld bc, $1a19
    inc d
    dec de
    ld bc, $1c01
    dec e
    ld e, $1f
    jr nz, jr_09e_42b4

    ld bc, $0101
    ld bc, $2322
    inc h
    dec h
    ld h, $27
    jr z, jr_09e_42c8

    ld bc, $2b2a
    inc l
    ld bc, $0101
    ld bc, $2e2d
    cpl
    ld bc, $3001
    ld bc, $1e01
    ld sp, $3332
    inc [hl]

jr_09e_42b4:
    dec [hl]
    ld [hl], $37
    jr c, jr_09e_42f2

    ld a, [hl-]
    ld bc, $3b01
    ld bc, $3c01
    dec a
    ld a, $3f
    ld b, b
    ld b, b
    ld b, c
    ld b, d
    ld b, e

jr_09e_42c8:
    ld b, h
    ld b, l
    ld b, [hl]
    ld bc, $4701
    ld bc, $4948
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
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld c, h
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld e, $64
    ld bc, $6501
    ld h, [hl]

jr_09e_42f2:
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld c, h
    ld c, h
    ld d, [hl]
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
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
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
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
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
    inc [hl]
    dec [hl]
    and d
    sub e
    and e
    and h
    and l
    ld bc, $a7a6
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    ld bc, $b2b1
    ld bc, $b301
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
    ld bc, $0101
    ld bc, $c0bf
    pop bc
    jp nz, $c4c3

    ld bc, $c501
    add $c7
    ld bc, $0101

Call_09e_4372:
    rra
    ret z

    ld c, h
    ret


    jp z, $cccb

    call $cfce
    ret nc

    ld bc, $0101
    ld bc, $d101
    ld c, h
    ld c, h
    jp nc, $d3d3

    call nc, Call_000_1e4c
    push de
    sub $d7
    ld h, $01
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld bc, $0002
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
    ld [bc], a
    ld [bc], a
    ld bc, $0002
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
    ld [bc], a
    ld bc, $0203
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
    nop
    ld [bc], a
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0301
    ld bc, $2201
    ld [bc], a
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0301
    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0103
    ld bc, $0103
    ld [bc], a
    nop
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    inc b
    inc bc
    nop
    nop
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    nop
    inc bc
    nop
    ld b, b
    nop
    nop
    nop
    inc b
    ld [bc], a
    ld bc, $0000
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0303
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0303
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    inc b
    ld bc, $0001
    inc bc
    inc bc
    inc bc
    ld [hl+], a
    ld [hl+], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    nop
    ld bc, $0101
    ld bc, $0303
    ld bc, $0203
    ld bc, $0003
    nop
    nop
    ld bc, $0100
    ld bc, $0101
    ld [bc], a
    inc bc
    inc bc
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld bc, $0301
    ld bc, $0301
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0203
    inc bc
    ld bc, $0101
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
    ld b, c
    inc bc
    inc bc
    ld [bc], a
    ld [hl+], a
    ld bc, $ff03
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
    ldh a, [rIE]
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
    ld [$0cff], sp
    rst $38
    inc c
    rst $38
    rra
    db $fc
    ccf
    ld hl, sp+$7f
    ld hl, sp+$7f
    ldh a, [$7f]
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp-$01
    rst $38
    db $fc
    db $fc
    di
    di
    db $fc
    db $fc
    di
    di
    db $fc
    db $fc
    di
    di
    rst $38
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, h
    db $fc
    ld h, b
    ldh [rLCDC], a
    adc $40
    rst $18
    ld b, b
    sbc $40
    call z, $c141
    ld h, a
    rst $20
    ld a, [hl]
    rst $38
    ld [hl], b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    ld h, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    rst $38
    rst $38

jr_09e_4572:
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
    ld bc, $00ff
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh [$3f], a
    rst $00
    ret c

    ccf
    jr nz, jr_09e_4572

    ret nz

    ccf
    ccf
    rst $18
    sbc $3f
    ld a, $ff
    cp $ff
    sbc $ff
    ld e, $ff
    ld e, $ff
    ld e, $ff
    ld e, $ff
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
    rrca
    rst $38
    rrca
    rst $38
    add a
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$79
    ld [hl], b
    ld c, a
    ld h, b
    ld e, a
    ld b, b
    ld a, a
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
    ld bc, $02ff
    rst $38
    inc b
    rst $38
    ld [$10ff], sp
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
    nop
    rst $38
    nop
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
    ldh a, [$7f]
    add b
    rst $38
    inc bc
    rst $38
    inc e
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02ff
    rst $38
    inc b
    rst $38
    ld [$10ff], sp
    rst $38
    ld h, c
    rst $38
    add d
    rst $38
    inc b
    rst $38
    ld [$10ff], sp
    rst $38
    jr nz, @+$01

    ld b, b
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rra
    ldh [rIE], a
    ld bc, $0eff
    rst $38
    ld [hl], b
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
    inc bc
    rst $38
    inc b
    rst $38
    ld [$10ff], sp
    rst $38
    jr nz, @+$01

    ld b, c
    rst $38
    add d
    rst $38
    inc b
    rst $38
    ld [$30ff], sp
    rst $38
    ld b, b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    ccf
    rst $38
    adc a
    rst $38
    db $e3
    rst $38
    ld sp, hl
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rrca
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $38
    rst $20
    rst $38
    ldh [rIE], a
    rst $00
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
    ld bc, $03ff
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
    rlca
    rst $38
    dec bc
    rst $38
    rla
    rst $38
    daa
    rst $38
    ld b, a
    rst $38
    add a
    rst $38
    rrca
    rst $38
    rra
    rst $38
    cpl
    rst $38
    ld c, a
    rst $38
    adc a
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
    ld hl, sp-$01
    db $fc
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    cp $ff
    rst $38
    rst $38
    di
    rst $38
    db $fc
    rst $38
    rst $38
    rra
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
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    rst $38
    ld hl, sp-$01
    ei
    rst $38
    db $fc
    rst $38
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
    ld bc, $0fff
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
    cp $fd
    cp $fd
    db $fd
    cp $fe
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
    ldh [rIE], a
    nop
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ld hl, sp+$7f
    rst $38
    sbc a
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    ccf
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    cp $7f
    db $fc
    rra
    ld hl, sp+$0f
    ldh a, [$f0]
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
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$3f
    ld hl, sp+$27
    db $fc
    ld h, a
    db $fc
    ld b, a
    db $fc
    ld d, a
    db $ec
    ld d, a
    db $ec
    ld d, a
    db $ec
    ld d, e
    xor $53
    xor $5b
    and $5b
    and $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc e
    rst $38
    ld [hl], b
    rst $38
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
    rlca
    rst $38
    rra
    cp $7f
    ld hl, sp-$01
    db $fc
    rst $38
    rst $30
    ld hl, sp-$05
    db $fc
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, a
    cp a
    sbc a
    ld l, a
    ld c, a
    cp a
    sbc a
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
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $1ffe
    ldh [rP1], a
    rst $38
    nop
    rst $38

jr_09e_48b0:
    ld a, a
    rst $38

jr_09e_48b2:
    add b
    rst $38

jr_09e_48b4:
    nop
    rst $38

jr_09e_48b6:
    rlca
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    rst $20
    sbc b
    rst $20
    jr jr_09e_48b0

    jr jr_09e_48b2

    jr jr_09e_48b4

    jr jr_09e_48b6

    jr @+$1a

    rst $38
    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

jr_09e_48e2:
    jr @+$01

    jr @+$01

    jr @-$0f

    jr @-$0f

    jr @-$0f

    jr @-$0f

    rra
    rst $28
    ld a, [de]
    rst $28
    ld e, $ea
    dec e
    db $eb
    ld a, [de]
    rst $28
    jr jr_09e_48e2

    inc e
    add sp, $1b
    ld [$eb1e], a
    ld e, $e8
    jr @-$15

    rra
    jp hl


    dec e
    db $eb
    ld e, $ec
    inc e
    db $ec
    rra
    rst $28
    rra
    rst $28
    rst $20
    rrca
    rst $38
    ccf
    ld hl, sp-$01
    di
    db $fc
    rst $00
    ld hl, sp+$1d
    ld [c], a
    ld sp, $64ce
    sbc b
    rrca
    ldh a, [rNR34]
    ldh [$58], a
    ldh [$30], a
    ldh [$f4], a
    ld hl, sp-$06
    db $fc
    cp $fe
    rst $38
    cp $ff
    rst $38
    rst $38
    db $fd
    rst $38
    db $fc
    db $fd
    cp $ff
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fd
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    cp $fd
    cp $ff
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    ldh a, [rIE]
    ldh [rIE], a
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
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    add b
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
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
    inc bc
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    ld b, c
    rst $38
    ld bc, $0903
    rst $30
    sbc e
    ld a, a
    ld hl, $0103
    ld bc, $31eb
    adc c
    rst $38
    ld d, $69
    nop
    ld bc, $639c
    nop
    rst $38
    and c
    inc bc
    rrca
    inc bc
    ld e, h
    cp a
    ldh a, [rIE]
    rlca
    ld hl, sp-$11
    ldh a, [$5f]
    ldh [$a7], a
    ld e, b
    adc a
    ld [hl], b
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
    nop
    add c
    nop
    ld b, e
    add c
    ld b, a
    add e
    inc bc
    rst $00
    cpl
    rst $00
    ld l, a
    rst $08
    nop
    rst $28
    inc e
    rst $38
    cp h
    rst $38
    cp $ff
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
    db $fc
    rst $38
    ld hl, sp-$09
    ld hl, sp-$39
    ld hl, sp-$7f
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
    ldh [$df], a
    ldh [$9f], a
    ldh [$bf], a
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
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fc
    nop
    db $e3
    rra
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    ld bc, $feff
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
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
    inc bc
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

jr_09e_4a9a:
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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

    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$f0ea], a
    rst $38
    ldh [$ef], a
    ldh a, [rIE]
    ld [$ffea], a
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
    rst $28
    jp $e107


    ld bc, $e119
    inc e
    ldh [rNR32], a
    ldh [$38], a
    ret nz

    jr c, jr_09e_4a9a

    ld h, b
    add b
    ret nz

    nop
    ld bc, $0300
    ld bc, $0103
    ld bc, $0403
    inc bc
    inc c
    rlca
    inc e
    rrca
    jr c, jr_09e_4b0d

    jr jr_09e_4b2f

    rlca
    jr c, jr_09e_4b02

    ld [hl], c
    rrca
    pop af
    rrca
    di
    rrca
    di
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $38
    ldh a, [rIE]

jr_09e_4b02:
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    nop

jr_09e_4b0d:
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
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
    db $fc
    nop
    ldh [rP1], a
    add b
    nop
    db $fc
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38

jr_09e_4b2f:
    rst $38
    nop
    rst $38
    nop

Call_09e_4b33:
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
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
    rst $38
    nop
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
    nop
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
    ld hl, sp-$01
    rst $20
    ld hl, sp+$27
    ld hl, sp+$26
    ld hl, sp+$26
    ld hl, sp+$26
    ld hl, sp+$26
    ld hl, sp+$26
    ld hl, sp+$24
    ld hl, sp-$1c
    ld hl, sp-$1c
    ld hl, sp-$1c
    ld hl, sp-$1c
    ld hl, sp-$1c
    ld a, b
    db $e4
    ld hl, sp-$19
    ld a, b
    and $38
    and $78
    db $e4
    ld hl, sp-$1c
    ld hl, sp-$19
    ld hl, sp-$11
    rst $38
    rst $28

jr_09e_4b9b:
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    ld l, a
    rst $38
    ld l, a
    ld a, a
    ccf
    ld a, a
    ld e, a
    ccf
    cpl
    rra
    rla
    rrca
    rrca
    nop
    ld [$de07], sp
    add a
    sbc a
    rst $28
    rst $08
    rst $38
    ld [hl], c
    rst $38
    jr nz, jr_09e_4b9b

    ld b, b
    cp a
    add b
    ld a, a
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
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
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
    ret nz

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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    jp $ccfc


    ldh a, [$cf]
    ldh a, [$c1]
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
    inc bc
    rst $38
    inc bc
    inc bc
    rst $38
    rrca
    rst $38
    rra
    db $fc
    ld a, h
    ld hl, sp-$01
    ldh [$f0], a
    nop
    ld hl, sp+$00
    ld [bc], a
    db $fd
    ld b, $f9
    ld c, $f1
    ld e, $e1
    ld a, $c1
    ld a, $c1
    ld a, d
    add c
    ld a, e
    add b
    di
    nop
    di
    nop
    di
    nop
    db $e3
    nop
    db $e3
    nop
    db $e3
    nop
    db $e3
    nop
    db $e3
    nop
    jp $c300


    nop
    ret nz

    inc bc
    ret nz

    inc bc
    add b
    nop
    add b
    nop
    add b
    nop
    ld b, $f8
    adc e
    ld [hl], b
    ld d, b
    nop
    ld d, b
    nop
    ld d, b
    nop
    ldh a, [rP1]
    rst $38
    rst $38
    add b
    rst $38
    inc bc

jr_09e_4c6d:
    ldh [$8e], a

jr_09e_4c6f:
    nop
    adc h
    ldh a, [$c0]
    ldh a, [$c0]
    ld hl, sp-$0a
    ld hl, sp-$20
    rst $38
    xor $f0
    db $ec
    ldh a, [$ec]
    jr nc, jr_09e_4c6d

    jr nc, jr_09e_4c6f

    jr nc, @+$2e

    ldh a, [$2c]
    ldh a, [rNR50]
    ld hl, sp-$19
    jr c, @-$0b

    inc c
    rst $38
    nop
    rra
    nop
    ld bc, $1f00
    nop
    ld a, a
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
    ld bc, $feff
    ld bc, $0081
    ld bc, $0100
    ld bc, $03fd
    ld bc, $ffff
    rst $38
    cp $ff
    cp $c1
    cp $f1
    cp $c1
    cp $c1
    pop hl
    rst $38
    ld sp, hl
    ccf
    ccf
    rrca
    rrca
    rlca
    cp $01
    ld bc, $0100
    nop
    ld a, [c]
    ld bc, $01c0
    add c
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
    nop
    ld bc, $3c00
    nop
    ccf
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ldh a, [$f0]
    inc bc
    db $fc
    jp $0a3c


    inc a
    nop
    ld b, $00
    ld [bc], a
    nop
    inc bc
    rst $30
    rrca
    rlca
    rst $38
    adc a
    rrca
    rrca
    rrca
    rrca
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    ldh a, [rIF]
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    nop
    rst $38
    nop
    nop
    ld bc, $0300
    nop
    add b
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld a, $ff
    ld c, $ff
    ld b, $ff
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
    jp nz, $e23f

    rra
    ld [c], a
    rra
    ld [c], a
    rra
    ld [c], a
    rra
    ld a, [c]
    rrca
    ld a, [$fa07]
    rlca
    ld a, [$fc07]
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    cp $05
    cp $05
    ld sp, hl
    inc b
    add hl, bc
    inc b
    add hl, de
    inc b
    add hl, hl
    inc b
    inc a
    dec b
    cp h
    ld a, l
    or b
    ld e, l
    jr c, jr_09e_4dbd

    jr jr_09e_4dbf

    ld e, b
    dec c
    ld a, c
    dec c
    ld sp, hl
    db $fd
    ld sp, hl
    db $fd
    ld sp, hl
    db $fd
    ld sp, hl

jr_09e_4dbd:
    db $fd
    ld sp, hl

jr_09e_4dbf:
    db $fd
    ld [$00ff], sp
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
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret z

    ld a, a
    adc b
    rst $18
    cp h
    ld e, a
    cp [hl]
    sbc a
    ld a, [hl]
    cp a
    ld a, l
    ccf
    db $fd
    ccf
    ei
    rlca
    ei
    ld bc, $81ff
    cp $c1
    ld a, [hl]
    ldh [$3f], a
    ldh a, [$1f]
    ld hl, sp+$0f
    db $fc
    rlca
    rst $38
    ld [bc], a
    cp $01
    cp $01
    cp $01
    cp $01
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    cp $01
    ldh a, [$6f]
    ret nz

    ld a, a
    rst $00
    ld a, b
    db $db
    ld h, h
    db $db
    ld h, h
    ret


    db $76
    call Call_09e_4372
    db $fc
    ld e, h
    ldh [$58], a
    ret nz

    ld e, h
    ret nz

    ld e, h
    ret nz

    ld e, h
    ret nz

    ld e, h
    ret nz

    ld e, l
    ret nz

    sbc h
    pop bc
    sbc h
    jp $d384


    sub b
    rst $00
    sub [hl]
    ret nz

    sub [hl]
    ret nz

    sub [hl]
    ret nz

    sub [hl]
    ret nz

    sub [hl]
    add b
    sub [hl]
    add b
    sub [hl]
    add b
    or [hl]
    add b
    or [hl]
    add b
    sub [hl]
    and b
    sbc [hl]
    ldh [$38], a
    rst $00
    add b
    rst $20
    add a
    rst $30
    adc b
    ldh a, [$b8]
    ret nz

    call c, $eee0
    ldh a, [rIE]
    ldh a, [$f7]
    ld hl, sp+$04
    ld hl, sp+$02
    db $fc
    ld b, b
    cp $41
    cp $20
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    db $10
    rst $38
    ld [$08ff], sp
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$0c
    ld hl, sp+$0e
    db $fc
    rrca
    db $fc
    rrca
    cp $0f
    cp $0f
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
    rrca
    rst $38
    rrca
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld [bc], a
    db $fd
    add e
    ld a, l
    push bc
    dec sp
    push hl
    dec de
    pop af
    rrca
    ld sp, hl
    rlca
    db $fc
    add e
    rst $38
    ret nz

    cp $81
    db $fc
    or e
    ld hl, sp+$77
    ld hl, sp-$09
    ldh a, [$ef]
    ldh [$df], a
    ret nz

    cp a
    ret nz

    cp a
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
    ld a, a
    sbc a
    ccf
    rst $08
    rst $38
    rrca
    rst $38
    rlca
    cp a
    ld b, a
    cp a
    ld b, b
    or b
    ld b, b
    stop
    nop
    sub b
    nop
    sub b
    nop
    sub b
    nop
    sub b
    nop
    sub b
    nop
    sub b
    nop
    sub b
    nop
    ret nc

    nop
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    cp $fe
    nop
    cp $02
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
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rrca
    rst $38
    ld [bc], a
    cp $f2
    rst $38
    dec a
    ccf
    dec b
    rrca
    inc b
    rlca
    add e
    rlca
    add c
    inc bc
    pop bc
    ld bc, $03f1
    jp $073f


    rst $38
    rst $00
    rst $38
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
    rlca
    rlca
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    rlca
    rst $00
    rlca
    rst $30
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [$fe], a
    pop af
    db $fc
    di
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
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
    nop
    db $f4
    ei
    add sp, -$09
    ret nc

    rst $28
    ret nc

    rst $28
    and b
    rst $18
    ld b, b
    cp a
    add b
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
    nop
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
    ld bc, $0100
    nop
    ld bc, $0900
    nop
    dec e
    ld bc, $0115
    ld bc, $0101
    ld bc, $0101
    ld bc, $8181
    add c
    sub c
    add c
    sub c
    add c
    xor l
    add c
    and l
    add c
    sbc l
    add e
    add e
    add e
    add e
    add e
    add e
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    add a
    add a
    add a
    rlca
    add a
    rlca
    rst $20
    rlca
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
    ld a, a
    rst $38
    rrca
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
    jp $33ff


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
    db $fd
    ld [bc], a
    db $fc
    inc bc
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
    ld bc, $03ff
    rst $38
    add e
    rst $38
    add e
    rst $38
    jp $c7ff


    rst $38
    rst $00
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    pop hl
    cp $e1
    cp $c3
    db $fc
    jp $c7fc


    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$31
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$df]
    ldh [$df], a
    ldh [$df], a
    ldh [$9f], a
    ldh [$be], a
    ret nz

    cp [hl]
    ret nz

    cp h
    ret nz

    cp h
    ret nz

    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
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
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ei
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $30
    ld sp, hl
    pop af
    rst $38
    pop af
    rst $38
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    pop af
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
    rst $38
    rst $38
    rst $38
    ld a, a
    sbc a
    ld a, a
    rlca
    rst $38
    nop
    rst $38
    ld bc, $01ff
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
    nop
    rst $38
    rrca
    ldh a, [$3f]
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
    ldh [rIE], a
    ldh [rIE], a
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    cp h
    jp $ff80


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
    ret nz

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
    ldh a, [$df]
    db $fc
    rst $08
    cp $c3
    rst $38
    pop bc
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
    add e
    rst $38
    add a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    di
    rst $38
    ei
    db $fd
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
    rlca
    rst $38
    ld bc, $00ff
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
    add b
    ld a, a
    nop
    rst $38
    rst $38
    ret nz

    rst $38
    ldh [$7f], a
    ld hl, sp+$1f
    ld a, h
    rlca
    cp a
    inc hl
    rst $18
    sub c
    rst $28
    call z, $c2b3
    cp l
    pop hl
    sbc [hl]
    ld hl, sp-$79
    db $fc
    jp $e3fc


    ld hl, sp-$09
    ldh a, [rIE]
    ld [hl], c
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    adc a
    rst $38
    rst $08
    rst $38
    rst $20
    rst $38
    db $e3
    rst $38
    pop af
    rst $38
    ld hl, sp-$01
    nop
    ld bc, $0002
    nop
    inc bc
    inc b
    nop
    dec b
    ld b, $07
    ld [$0009], sp
    nop
    nop
    ld a, [bc]
    dec bc
    nop
    inc c
    dec c
    ld c, $0f
    db $10
    ld b, $11
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    inc de
    add hl, bc
    inc d
    dec d
    ld d, $17
    jr jr_09e_527e

    add hl, de
    ld a, [de]
    nop
    nop
    nop
    nop

jr_09e_527e:
    nop
    nop
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_09e_52a8

    ld [hl+], a
    inc hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec de
    dec de
    inc h
    dec h
    ld h, $27
    jr z, jr_09e_52c1

    nop
    nop
    nop
    nop
    nop
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_09e_52d6

    ld [hl-], a
    inc sp
    inc [hl]

jr_09e_52a8:
    nop
    nop
    nop
    nop
    dec [hl]
    ld [hl], $1b
    dec de
    scf
    jr c, jr_09e_52ec

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $00
    nop
    nop
    nop
    ccf
    dec de
    dec de
    dec de
    ld b, b

jr_09e_52c1:
    ld b, c
    nop
    ld b, d
    ld b, e
    ld b, h
    nop
    nop
    ld b, l
    ld b, [hl]
    nop
    nop
    ld b, a
    dec de
    dec de
    dec de
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l

jr_09e_52d6:
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    nop
    nop
    ld d, e
    dec de
    dec de
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    nop
    ld e, e
    dec de
    ld e, h
    ld e, l

jr_09e_52ec:
    add hl, bc
    ld e, [hl]
    dec de
    dec de
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    nop
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    dec de
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    nop
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    dec de
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    nop
    nop
    add d
    add e
    add h
    add l
    add [hl]
    dec de
    dec de
    add a
    adc b
    adc c
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
    ld d, a
    ld d, a
    ld d, a
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    nop
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
    adc c
    add $c7
    ret z

    ret


    nop
    jp z, $cccb

    call $cfce
    ret nc

    pop de
    jp nc, $89d3

    call nc, $d6d5
    ret


    rst $10
    ret c

    dec de
    reti


    rla
    jp c, $dcdb

    db $dd
    adc c
    adc c
    sbc $df
    ldh [$e1], a
    ld bc, $0202
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0202
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
    ld b, d
    inc bc
    inc bc
    ld bc, $0202
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
    inc bc
    inc b
    ld bc, $0301
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
    ld bc, $0003
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
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
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    inc bc
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0201
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
    inc bc
    inc bc
    inc bc
    ld bc, $0303
    inc bc
    ld bc, $0003
    nop
    inc bc
    ld [hl+], a
    nop
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    inc b
    inc bc
    inc bc
    ld bc, $0003
    ld bc, $0303
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    nop
    nop
    nop
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0103
    nop
    inc bc
    nop
    nop
    inc bc
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0301
    inc bc
    ld bc, $0001
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    nop
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    nop
    jr nz, jr_09e_548f

    jr nz, jr_09e_5474

    inc bc
    nop
    nop

jr_09e_5474:
    nop
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    ld bc, $0301
    inc bc
    ld bc, $0301
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop

jr_09e_548f:
    nop
    ld bc, $0101
    ld bc, $0101
    inc bc
    ld bc, $0101
    ld bc, $0003
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    inc b
    nop
    nop
    nop
    inc b
    ld bc, $0101
    inc bc
    inc bc
    inc b
    nop
    ld bc, $0404
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0303
    nop
    ld bc, $0302
    inc b
    inc b
    inc b
    nop
    nop
    inc b
    ld bc, $0001
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rra
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    add hl, bc
    rst $38
    ld [de], a
    rst $38
    inc h
    rst $38
    ld c, b
    rst $38
    sub b
    rst $38
    jr nz, @+$01

    ld b, b
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
    rst $38
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
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
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    ret nz

    rst $38
    and b
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    ret


    rst $38
    set 7, [hl]
    rst $20
    db $fc
    rst $28
    ld sp, hl
    rst $18
    ld a, [c]
    rst $38
    db $e4
    rst $38
    ret z

    rst $38
    sub b
    rst $38
    nop
    rst $38
    nop
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
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    rst $38
    add b
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
    rst $38
    rst $38
    add b
    cp a
    add b
    sbc a
    ret nc

    rst $08
    ret nz

    rst $08
    ret nz

    rst $08
    add sp, -$19
    ldh [$e7], a
    pop hl
    rst $20
    push af
    di
    ldh a, [$f3]
    ldh a, [$f3]
    ld a, [$f9f9]
    ld hl, sp-$07
    ld hl, sp-$04
    db $fc
    db $fc
    db $fc
    rst $38
    db $fc
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
    pop bc
    ccf
    jp nz, $c43f

    rra
    jp hl


    rra
    ld a, [c]
    ccf
    db $e4
    ld a, a
    ret z

    rst $38
    sub b
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
    cp $03
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$3f], a
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
    ret nz

    rst $38
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [$3f], a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    jp nz, $cb84

    ld b, b
    rst $28
    ld c, h
    db $e3
    ld b, b
    rst $20
    jp nz, $a061

    ld [hl], b
    and b
    ld [hl], b
    ldh [$30], a
    ldh [$33], a
    ret nc

    dec sp
    ldh a, [rNR31]
    ldh a, [rNR31]

jr_09e_56d0:
    ldh a, [$9c]
    add sp, -$64
    ld hl, sp-$74
    ld hl, sp-$34
    db $f4
    rst $08
    db $fc
    rst $00
    db $fc
    rst $20
    db $fc
    rst $20
    and $e3
    or $f3
    or $f3
    cp $f3
    db $fd
    ei
    db $fd
    ei
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    db $fc
    ld a, a
    db $fc
    ld a, a
    db $fc
    ld a, a
    cp $3f
    cp $3f
    cp $3f
    rst $38
    ccf
    rst $38
    rra
    rst $20
    rra
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
    ldh a, [rIE]
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
    jr nc, jr_09e_5729

    ld h, d

jr_09e_5729:
    nop
    call nz, $dc21
    inc hl
    adc a
    nop
    xor a
    ld a, a
    nop
    nop
    add c
    and b
    xor c
    ld sp, hl
    add b
    rst $38
    rst $18
    rst $38
    nop
    rst $18
    rst $20
    rst $38
    db $fc
    ld a, a
    ld c, d
    cp [hl]
    add hl, de
    and [hl]
    cpl
    db $f4
    inc h
    rst $38
    dec a
    db $f4
    rst $38
    ccf
    jr nz, jr_09e_56d0

    jr c, @-$6f

    adc b
    cp $ba
    rst $38
    sbc e
    db $fd
    add b
    db $fd
    ret nz

    ret nz

    ldh [$f0], a
    rst $38
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
    ld a, h
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
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
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
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
    ldh [$1f], a
    ldh [$1f], a
    rst $20
    rra
    rst $20
    rra
    rst $20
    rra
    db $e3
    rra
    di
    rrca
    di
    rrca
    di
    rrca
    di
    rrca
    di
    rrca
    pop af
    rrca
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    call nz, Call_000_1a0f
    rst $00
    ld [hl+], a
    rst $18
    ld a, [c]
    rlca
    ld a, [hl-]
    add a
    ld a, [de]
    rlca
    ld [bc], a
    rlca
    ld b, c
    and e
    add hl, bc
    and e
    ld d, c
    xor e
    db $dd
    inc hl
    call Call_09e_4b33
    rst $38
    dec b
    dec sp
    ld bc, $3b79
    ld e, c
    ld d, c
    ei
    ld a, a
    pop af
    ld b, a
    push af
    rlca
    ccf
    nop
    jr nc, jr_09e_5817

    inc a
    dec [hl]
    rst $38
    ld a, a
    rst $38
    rlca
    cp $00
    rra
    nop
    nop
    add b
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_09e_5817:
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
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
    ld a, h
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
    cp $3f
    rst $38
    ld a, $fe
    ccf
    rst $38
    ld a, $fe
    cp a
    rst $38
    cp [hl]
    cp $9f
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
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
    rst $08
    ld a, a
    daa
    ld a, a
    daa
    ld a, a
    daa
    rst $38
    daa
    rst $38
    daa
    rst $38
    daa
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    inc de
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
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    add b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, l
    ld d, l
    xor d
    xor d
    nop
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    xor b
    xor d
    ld d, b
    ld d, a
    ld hl, sp-$01
    cp $ff
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
    nop
    rst $38
    nop
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
    db $fc
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    add b
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
    ld bc, $ffff
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
    nop
    rst $38
    nop
    rst $38
    ld sp, hl
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
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
    nop
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, h
    ld a, a
    cp h
    cp a
    ld a, h
    ld a, a
    cp h
    cp a
    ld a, h
    ld a, a
    cp h
    cp a
    ld a, h
    ld a, a
    cp h
    cp a
    inc b
    rst $38
    inc b
    rst $38
    sub h
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
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
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
    ld hl, sp-$01
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
    add b
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    ld bc, $0fff
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
    ld a, a
    rst $38
    rrca
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    ld bc, $83fe
    db $fc
    pop bc
    cp $e0
    rst $38
    ldh a, [$ef]
    db $fc
    db $e3
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$e0], a
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    cp $e0
    cp $e0
    cp $e0
    cp $e0
    cp $e0
    ldh [$fe], a
    ldh [rIE], a
    db $e3
    rst $38
    rst $20
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    db $e4
    ld hl, sp-$1c
    ld hl, sp-$1c
    ld hl, sp-$1c
    ld hl, sp-$06
    db $fc
    ei
    db $fc
    ld sp, hl
    cp $f8
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
    rst $38
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ccf
    ret nz

    ld bc, $02fe
    db $fc
    ld [bc], a
    db $fc
    add h
    ld hl, sp-$3a
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$09
    ld hl, sp+$0c
    ldh a, [rTMA]
    ld hl, sp+$06
    db $fc
    rlca
    cp $07
    cp $07
    rst $38
    inc bc
    rst $38
    ld bc, $ffff
    rst $38
    ld a, a
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
    nop
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
    db $fc
    rst $38
    add e
    rst $38
    ret nz

    rst $38
    ld a, $ff
    nop
    rst $38
    rra
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $87fe
    ld hl, sp-$7d
    db $fc
    ld [hl], e
    db $fc
    inc c
    di
    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, [hl]
    add b
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
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    nop
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld sp, $f1ff
    rst $28
    ld de, $110f
    ld c, $11
    ld c, $11
    ld c, $20
    rra
    ld l, [hl]
    rra
    adc $3f
    ld c, $ff
    ld e, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$18
    ldh [rNR41], a
    ret nz

    ld b, b
    add b
    ld [bc], a
    ld bc, $070b
    ccf
    rra
    ld a, a
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
    cp $7f
    ld [hl], h
    ld a, a
    ld a, a
    ld a, e
    rst $38
    inc a
    db $fd
    ld e, $eb
    sbc [hl]
    push af
    rst $08
    ei
    rst $20
    rst $38
    pop af
    ld [hl], a
    ld hl, sp+$77
    ld hl, sp+$79
    cp $7c
    rst $38
    ld a, [hl]
    rst $38
    cp [hl]
    rst $38
    cp a
    rst $38
    ld e, [hl]
    rst $38
    ld c, [hl]
    rst $38
    ld h, $ff
    ld [hl], $f9

jr_09e_5b8a:
    adc d
    ld a, h
    adc $3f
    rst $30
    rrca
    ei
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
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    ld bc, $e3fe
    db $fc
    rrca
    rst $38
    rra
    ldh [$67], a
    ld hl, sp-$01
    nop
    rst $38
    nop
    add b
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    db $f4
    nop
    jr nc, jr_09e_5b8a

    cp [hl]
    nop
    add b
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    rlca
    inc bc
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
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
    add b
    add b
    ldh a, [$f0]
    ldh a, [$f8]
    cp $fe
    xor $fe
    cp $fe
    add d
    nop
    add d
    nop
    add d
    nop
    ld b, d
    nop
    ld b, b
    add d
    ld l, e
    add a
    dec sp
    rst $00
    inc bc
    rst $38
    inc bc
    rst $38

jr_09e_5c0a:
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
    nop
    rst $38
    nop
    rst $38
    rlca
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    ld sp, hl
    cp $fe
    rst $38
    rst $38
    rst $38
    and $ff
    ld a, [$c3ff]
    rst $38
    push bc
    rst $38
    jp $f3f9


    db $e3
    ld a, $fe
    nop
    ldh a, [rLCDC]
    add b
    add b
    nop
    jr nc, jr_09e_5c0a

    nop
    rst $38
    nop
    ld e, $41
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    ret nz

    ld a, $c0
    rra
    ldh [rTAC], a
    ld hl, sp+$00
    cp $82
    db $fc
    ld [bc], a
    db $fc
    add d
    db $fc
    add d
    db $fc
    add c
    cp $07
    ld hl, sp+$7f
    add e
    rst $38
    rst $38
    db $fd
    cp $03
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop hl
    rst $38
    jp nz, $81ff

    rst $38
    db $fd
    ld [bc], a
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    sub $29
    rst $38
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    rra
    rra
    ccf
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ld b, b
    ccf
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
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    rra
    jr nz, jr_09e_5d24

    jr jr_09e_5d12

    inc c
    dec de
    add [hl]
    inc de
    rst $28
    rst $08
    rst $38
    rrca
    rst $38
    ld l, a
    sbc a
    cp a
    rrca
    and a
    rra
    rlca
    rrca
    ld h, a
    rra

jr_09e_5d12:
    ld c, a
    rla
    ld l, a
    rla
    ld e, a
    daa
    cpl
    rst $08
    rra
    sbc a
    ccf
    ccf
    rst $38
    cp $fe
    db $fc
    ld hl, sp-$10

jr_09e_5d24:
    pop bc
    add b
    ld b, $01
    cp [hl]
    ld bc, $03fc
    db $fc
    inc bc
    ld [$1807], sp
    rlca
    db $10
    rrca
    jr nc, jr_09e_5d45

    ld h, b
    rra
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    cp a
    add b
    rst $38
    rlca
    rst $38
    ld bc, $00ff

jr_09e_5d45:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ldh [$1f], a
    ret nz

    ccf
    rst $38
    rst $38
    add b
    ld a, a
    nop
    rst $38
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
    inc bc
    nop
    rlca
    nop
    nop
    nop
    ld hl, sp+$00
    ld h, a
    sbc b
    jr nc, @+$01

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
    add l
    add e
    nop
    add e
    nop
    add c
    nop
    add c
    nop
    inc bc
    nop
    rlca
    nop
    nop
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    push af
    push af
    ld hl, sp-$01
    ldh a, [$f7]
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [$ef], a
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
    rst $38
    rst $38
    rst $38
    ccf
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$39
    ret c

    rst $00
    ret c

    rst $00
    ret c

    rst $00
    ret c

    rst $00
    ret c

    rst $00
    ret c

    rst $00
    ret c

    rst $00
    ret c

    rst $00
    sbc b
    add a
    jr c, jr_09e_5df5

    jr c, jr_09e_5df7

    ld b, a
    ccf
    add a
    ld a, a
    rlca

jr_09e_5df5:
    rst $38
    rlca

jr_09e_5df7:
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rst $38
    db $fc
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
    rlca
    rst $38
    inc bc
    rst $38
    ld a, l
    rst $38
    add c
    rst $38
    inc bc
    rst $38
    ld a, a
    rst $38
    rst $38
    cp $f0
    nop
    nop
    nop
    nop
    nop
    nop
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
    rra
    nop
    rra
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
    nop
    nop
    nop
    nop
    nop
    ld a, e
    nop
    pop bc
    ld a, $1c
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $18
    sbc a
    ld b, c
    adc a
    ld b, b
    rrca
    add b
    ld c, $81
    ld e, $81
    inc a
    add e
    nop
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    dec d
    push de
    nop
    cp $03
    rst $38
    ld bc, $03fd
    rst $38
    inc bc
    ei
    ld d, a
    ld d, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $03
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
    ret nz

    rst $38
    ld hl, sp-$01
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
    cp $ff
    ld sp, hl
    cp $fe
    add b
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$01
    jr nz, jr_09e_5ec3

    nop

jr_09e_5ec3:
    ld bc, $0300
    inc c
    inc bc
    ld a, h
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
    ldh a, [rIF]
    pop hl
    rra
    pop hl
    rra
    pop hl
    rra
    pop hl
    rra
    jp $c33f


    ccf
    jp $c73f


    ccf
    add a
    ld a, a
    add a
    ld a, a
    ld a, a
    rlca
    ld a, a
    rrca
    rst $38
    rrca
    rst $38
    rrca
    ld l, a
    sbc [hl]
    sbc a
    cp $df
    cp $df
    db $fc
    rst $18
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    ccf
    ld hl, sp+$3f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld sp, hl
    ld a, a
    pop af
    pop af
    rst $38
    di
    rst $38
    di
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    rst $20
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    adc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    dec e
    cp $1d
    cp $1d
    cp $18
    rst $38
    jr @+$01

    ld [$08ff], sp
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
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    nop
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
    add a
    rst $38
    add a
    rst $38
    add a
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
    ld e, $ff
    ld e, $ff
    ld e, $ff
    inc e
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    jr c, @+$01

    ld a, b
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld [hl], b
    rst $38
    ldh a, [rIE]
    pop af
    rst $38
    pop af
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    db $e3
    rst $38
    jp $c3ff


    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    add a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
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
    rst $38
    ld a, a
    cp $7f
    cp $7f
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
    cp $ff
    cp $fe
    cp $fe
    db $fc
    cp $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$04
    ld hl, sp-$08
    ldh a, [$f8]
    ldh a, [$f0]
    ldh a, [$f1]
    ldh [rIE], a
    ldh [rIE], a
    ldh [$9f], a
    ldh [rTMA], a
    ldh a, [$0b]
    ldh a, [$0c]
    ldh a, [$03]
    ld hl, sp+$07
    ld hl, sp+$07
    ld sp, hl
    rlca
    ld sp, hl
    db $fd
    inc bc
    db $fd
    inc bc
    ld a, l
    add e
    ld a, h
    add c
    ld a, h
    add b
    ld a, h
    add b
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    ret nz

    cp $c0
    cp $c0
    cp $c0
    rst $38
    pop bc
    cp $cf
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [$80]
    ldh a, [$80]
    ldh a, [$80]
    ld hl, sp-$80
    ld hl, sp-$80
    ld hl, sp-$80
    ld hl, sp-$80
    ld hl, sp+$40
    ld hl, sp+$40
    db $fc
    ld b, b
    db $fc
    ld b, b
    db $fc
    ld b, b
    db $fc

jr_09e_6066:
    ld b, b
    db $fc
    jr nz, jr_09e_6066

jr_09e_606a:
    jr nz, jr_09e_606a

jr_09e_606c:
    jr nz, jr_09e_606c

jr_09e_606e:
    jr nz, jr_09e_606e

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    pop bc
    rst $38
    pop bc
    rst $38
    jp $c3ff


    rst $38
    add e
    cp $87
    cp $87
    db $fd
    add a
    db $fd
    rlca
    db $fd
    rrca
    db $fd
    rrca
    ei
    rrca
    ei
    rra
    ei
    rra
    rst $30
    rra
    rst $30
    ccf
    rst $30
    ccf
    rst $30
    ccf
    rst $30
    ccf
    rst $30
    ld a, a
    rst $30
    ld a, a
    rst $30
    ld a, a
    rst $30
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    db $fd
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

jr_09e_60c8:
    cp [hl]
    cp $9e
    cp $9e
    cp $4c
    db $fc
    ld c, h
    db $fc
    dec l
    db $fc
    add hl, hl
    ld hl, sp+$2b
    ld hl, sp+$13
    ldh a, [rNR13]
    ldh a, [rNR22]
    ldh a, [$36]
    ldh [$30], a
    ldh [$30], a
    ldh [$e0], a
    ret nz

    ldh [$c0], a
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    add b
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    ld bc, $0100
    ld bc, $0301
    ld bc, $0100
    inc bc
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    sbc a
    nop
    ld e, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    rst $38
    nop
    rst $28
    db $10
    ld e, a
    jr nz, jr_09e_60c8

    ld d, b
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    add b
    cp a
    ret nz

    cp l
    ret nz

    or c
    ret nz

    or b
    ld b, b
    ld [hl], b
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
    ldh a, [rSB]
    pop af
    ld bc, $01f3
    di
    inc bc
    di
    inc bc
    ei
    inc bc
    ld sp, hl
    inc bc
    ld sp, hl
    inc bc
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
    cp $fd
    cp $fd
    cp $fd
    db $fd
    ld a, [$fafd]
    db $fd
    ld a, [$f4fb]
    ei
    db $f4
    rst $38
    rst $38
    ccf
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    add a
    cp a
    add a
    cp a
    and e
    sbc a
    inc hl
    rra
    ld sp, $700f
    rrca
    ld a, b
    rlca
    ld a, b
    rlca
    db $fc
    inc bc
    db $fc
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
    and a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $033f
    ld bc, $617f
    cp $e5
    cp $f5
    cp $63
    rst $38
    inc sp
    db $fc
    rra
    ld hl, sp+$3f
    call nz, $01f2
    and b
    nop
    jr nc, jr_09e_61e8

jr_09e_61e8:
    ld [hl], b
    nop
    ld h, b
    nop
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    cp h
    nop
    db $fc
    nop
    ld a, b
    nop
    ret c

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
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    ld b, $00
    inc b
    nop
    ld a, [bc]
    nop
    dec de
    nop
    ccf
    nop
    ld a, a
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
    add b
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ret nz

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
    rst $28
    ret nc

    rst $28
    ret nc

    rst $18
    and b
    rst $18
    and b
    rst $18
    and b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    ld a, a
    add b
    ld a, a
    add b
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
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    ld a, a
    rlca
    ld a, a
    inc bc
    ccf
    inc bc
    ccf
    ld hl, $211f
    rra
    jr nz, jr_09e_62a5

    jr nz, jr_09e_62a7

    ld c, b
    scf
    ld h, b
    daa
    db $e4
    ld b, e
    ret nc

    db $e3
    jp z, $c4f1

    ld sp, hl
    add c
    ld a, h
    inc e
    nop
    ld [de], a
    inc c
    ld h, d
    sbc [hl]
    inc hl
    rst $38
    ei
    rlca
    or $0f
    dec e
    cp $7e

jr_09e_62a5:
    nop
    nop

jr_09e_62a7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0303
    rlca
    rlca
    rlca
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
    rra
    ld e, a
    rrca
    xor a
    rlca
    or a
    rlca
    rst $10
    inc bc
    inc hl
    ld bc, $0055
    add b
    nop
    jr nz, jr_09e_62d8

jr_09e_62d8:
    nop
    nop
    ret nz

    nop
    ldh [rP1], a
    ld hl, sp+$00
    inc e
    nop
    and $00
    ei
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
    nop
    nop
    nop
    nop
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
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $00
    nop
    nop
    nop
    rrca
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $0b
    dec bc
    dec bc
    dec bc
    rla
    jr jr_09e_6340

    ld a, [de]
    dec de
    inc e
    dec bc
    dec e
    ld e, $1f
    jr nz, jr_09e_633b

    ld hl, $0b22
    dec bc
    dec bc
    dec bc
    inc hl
    inc h
    dec h
    ld h, $27

jr_09e_633b:
    dec bc
    jr z, @+$0d

    dec bc
    dec bc

jr_09e_6340:
    dec bc
    add hl, hl
    ld a, [hl+]
    dec hl
    ld hl, $2c22
    dec l
    ld l, $2f
    jr nc, jr_09e_637d

    dec bc
    dec bc
    dec bc
    dec bc
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_09e_6391

    dec bc
    dec bc
    ld a, [hl-]
    dec sp
    dec bc
    dec bc
    dec bc
    dec bc
    nop
    nop
    nop
    nop
    nop
    inc a
    dec bc
    dec bc
    dec a
    ld a, $3f
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    nop
    nop
    nop
    nop
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    dec bc

jr_09e_637d:
    dec bc
    dec bc
    dec bc
    nop
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
    ld c, a
    dec bc
    dec bc
    dec bc
    dec bc
    nop

jr_09e_6391:
    nop
    nop
    nop
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    dec bc
    dec bc
    dec bc
    dec bc
    nop
    nop
    nop
    nop
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    dec bc
    ld e, l
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    nop
    nop
    nop
    nop
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    dec bc
    ld h, e
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    nop
    nop
    nop
    nop
    nop
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    dec bc
    ld l, b
    dec bc
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
    ld l, c
    dec bc
    ld l, d
    dec bc
    ld l, e
    dec bc
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
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    dec bc
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
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    dec bc
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
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    dec bc
    dec bc
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
    ld a, d
    dec bc
    dec bc
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
    ld a, e
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
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
    ld bc, $0301
    nop
    nop
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
    inc bc
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
    ld bc, $0203
    ld [bc], a
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
    inc bc
    inc bc
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0002
    nop
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0002
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0301
    inc bc
    inc bc
    ld bc, $0201
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
    ld b, $06
    dec b
    dec b
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
    ld b, $05
    dec b
    dec b
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
    ld b, $05
    dec b
    dec b
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
    ld b, $05
    dec b
    dec b
    ld [bc], a
    ld bc, $0002
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    ld b, $05
    ld [bc], a
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
    ld bc, $0101
    ld bc, $0201
    nop
    nop
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
    nop
    ld b, $05
    ld bc, $0202
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $05
    ld bc, $0203
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld hl, sp-$01
    ld sp, hl
    cp $f0
    rst $38
    ldh [rIE], a
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
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
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
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fd
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    sbc [hl]
    ld a, a
    ld h, l
    sbc a
    add hl, de
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    db $fd
    inc bc
    db $fd
    inc bc
    ei
    rlca
    ei
    rlca
    rst $30
    rrca
    rst $30
    rrca
    rst $28
    rra
    rst $28
    rra
    ret nz

    ccf
    rst $18
    ccf
    rst $38
    rra
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
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
    ld a, a
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fd
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    xor $ff
    sbc $ff
    call c, $b8ff
    rst $38
    or b
    rst $38
    or b
    rst $38
    ld h, b
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
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
    ld bc, $feff
    ld bc, $00ff
    rst $38
    nop
    cp $01
    cp $01
    db $fd
    inc bc
    db $fd
    inc bc
    ei
    rlca
    ei
    rlca
    rst $30
    rrca
    rst $30
    rrca
    rst $28
    rra
    rst $28
    rra
    rst $18
    ccf
    rst $18
    ccf
    cp a
    ld a, a
    cp a
    ld a, a
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
    add b
    rst $38
    rst $38
    cp $3f
    rst $38
    ld c, a
    rst $38
    di
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ld a, a
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
    db $fc
    rst $38
    ld hl, sp-$01
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
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    rra
    rst $38
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
    ldh a, [rIE]
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ldh [$9f], a
    db $fd
    ld [c], a
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
    cp $ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ccf
    rst $38
    ccf
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$19
    and $f9
    pop hl
    cp $c0
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
    ld bc, $01fe
    cp $01
    cp $03
    db $fd
    inc bc
    db $fd
    rlca
    ei
    rlca
    ei
    rlca
    ei
    rrca
    rst $30
    rrca
    rst $30
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
    ld a, a
    cp a
    ld a, a
    cp a
    rst $38
    ld a, a
    ld a, a
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
    rst $38
    rst $38
    cp $ff
    db $fc
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
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
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
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
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
    ccf
    rst $38
    rst $38
    ccf
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $08
    ld a, a
    xor a
    ld a, a
    cp a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld a, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld bc, $0300
    nop
    rlca
    nop
    rlca
    rlca
    ld [$0807], sp
    rlca
    add hl, bc
    rlca
    add hl, bc
    rlca
    add hl, bc
    rlca
    add hl, bc
    rlca
    add hl, bc
    rlca
    add hl, bc
    rrca
    ld bc, $030f
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    rst $38
    db $fc
    rst $38
    ld sp, hl
    cp $ff
    rst $38
    rst $38
    ld hl, sp-$03
    ld a, [$f9fe]
    db $fd
    ld a, [c]
    rst $38
    ldh a, [rIE]
    rst $38
    ccf
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
    ccf
    rst $20
    ccf
    jp $c03f


    ccf
    ret nz

    ccf
    ldh [$3f], a
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$0f
    rst $38
    rrca
    ld hl, sp+$07
    db $fc
    rlca
    db $fc
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    add hl, bc
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
    rst $38
    nop
    rst $38
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
    db $fc
    inc bc
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    sbc a
    ldh [$fe], a
    ld bc, $00ff
    rst $38
    ld hl, sp-$01
    rlca
    ld d, a
    xor b
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    rst $38
    nop
    rst $38
    rst $38
    ccf
    ccf
    ret nz

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
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    xor a
    rst $38
    ld hl, sp-$01
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ldh a, [$fb]
    rst $38
    cp l
    rst $38
    ld b, [hl]
    rst $38
    add d
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
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ld sp, hl
    nop
    rst $38
    nop
    rst $38
    cp $01
    cp $01
    cp $f9
    cp $f9
    cp $f9
    cp $f9
    cp $f9
    cp $f9
    cp $f9
    db $fc
    di
    db $fc
    di
    db $fc
    di
    rst $38
    ld a, [c]
    rst $38
    ld a, [c]
    rst $38
    ld a, [c]
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    ld a, a
    cp $cf
    ld a, $f7
    inc c
    rst $38
    db $fc
    rst $38
    inc b
    xor a
    ld d, h
    ld e, a
    and a
    cp a
    ld c, a
    ld e, a
    xor a
    rst $38
    rrca
    rst $38
    rst $38
    ccf
    ccf
    ret nz

    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    adc a
    pop af
    rrca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld sp, hl
    rrca
    ld sp, hl
    rra
    pop af
    rst $38
    pop hl
    rra
    pop hl
    rra
    pop bc
    ccf
    add c
    ld a, a
    ld bc, $81ff
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    and b
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
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    jr c, @+$01

    ccf
    rst $38
    rlca
    rst $38
    nop
    rst $38
    ld a, b
    rst $38
    ld a, a
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
    nop
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
    rst $38
    rst $38
    rra
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [$f0]
    nop
    ldh a, [rP1]
    ldh a, [$80]
    ldh a, [$80]
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    adc a
    rst $38
    sbc a
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
    rst $38
    rst $38
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
    db $fc
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
    rst $38
    nop
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
    rst $08
    rst $38
    rst $08
    rst $38
    set 7, a
    db $db
    rst $38
    db $db
    rst $38
    db $d3
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    db $e3
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    db $e4
    rst $38
    db $ec
    rst $38
    db $ec
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop bc
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
    nop
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    pop hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    jp $feff


    rst $38
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
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    nop
    ret nz

    ret nz

    ret nz

    ret nz

    pop bc
    pop bc
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld h, e
    rst $38
    ld b, c
    rst $38
    pop bc
    rst $38
    add c
    rst $38
    add e
    rst $38
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ldh [rIE], a
    cp a
    rst $38
    add b
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    rra
    db $e3
    ld b, $ff
    ld c, $ff
    inc c
    rst $38
    jr @+$01

    jr @+$01

    jr nc, @+$01

    jr nc, @+$01

    ld h, b
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
    ld h, b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    and b
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    sbc b
    rst $38
    or b
    rst $38
    or b
    rst $38
    ld h, b
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld [bc], a
    inc bc
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    dec b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    ld b, $04
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    rlca
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
    nop
    nop
    ld bc, $0000
    ld [$0404], sp
    inc b
    inc b
    inc b
    inc b
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    inc c
    inc c
    dec c
    ld c, $04
    rrca
    db $10
    ld de, $1312
    inc d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    ld d, $17
    jr jr_09e_6dc5

    ld a, [de]
    dec de
    inc e
    dec e
    inc de
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    rla
    rra
    jr nz, jr_09e_6ddd

    ld [hl+], a
    inc hl
    inc h
    dec e
    inc de
    ld e, $00
    nop
    nop

jr_09e_6dc5:
    nop
    nop
    nop
    rla
    dec h
    ld h, $27
    jr z, jr_09e_6df7

    ld a, [hl+]
    dec e
    inc de
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    rla
    dec hl
    ld h, $27
    inc l

jr_09e_6ddd:
    dec l
    ld l, $1d
    inc de
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    rla
    dec hl
    cpl
    daa
    jr nc, jr_09e_6e1f

    ld [hl-], a
    dec e
    inc de
    ld e, $00
    nop
    nop
    nop
    nop

jr_09e_6df7:
    nop
    inc sp
    inc [hl]
    dec [hl]
    daa
    ld [hl], $37
    jr c, jr_09e_6e1d

    inc de
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    dec e
    inc de
    inc d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h

jr_09e_6e1d:
    ld b, l
    ld b, [hl]

jr_09e_6e1f:
    dec e
    add hl, bc
    ld b, a
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, c
    inc b
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    nop
    ld c, a
    ld d, b
    ld d, c
    ld d, c
    ld d, d
    ld d, e
    inc b
    inc b
    inc b
    ld d, h
    ld d, l
    ld d, [hl]
    inc b
    inc b
    inc b
    nop
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld a, [hl+]
    ld h, b
    ld h, c
    inc b
    inc b
    inc b
    nop
    ld h, d
    ld h, e
    ld h, h
    ld a, [hl+]
    ld h, l
    ld a, [hl+]
    ld a, [hl+]
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    inc b
    inc b
    inc b
    nop
    inc b
    ld l, e
    ld l, h
    ld a, [hl+]
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld a, [hl+]
    ld [hl], c
    ld [hl], d
    ld l, d
    inc b
    inc b
    inc b
    nop
    ld [hl], e
    ld l, e
    ld [hl], h
    ld a, [hl+]
    ld [hl], l
    db $76
    ld a, [hl+]
    ld [hl], a
    ld [hl], d
    ld [hl], c
    ld [hl], d
    ld l, d
    inc b
    inc b
    inc b
    ld bc, $0101
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
    ld bc, $0101
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
    ld bc, $0101
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
    ld bc, $0101
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
    ld bc, $0101
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
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $01
    nop
    ld b, $06
    ld b, $06
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
    ld bc, $0606
    dec b
    dec b
    ld b, $05
    dec b
    ld bc, $0101
    ld bc, $0101
    ld b, l
    dec b
    ld b, $06
    dec b
    dec b
    dec b
    ld b, $05
    dec b
    ld bc, $0101
    ld bc, $0101
    ld b, l
    dec b
    dec b
    ld b, $05
    dec b
    dec b
    ld b, $05
    dec b
    ld bc, $0101
    ld bc, $0101
    ld b, l
    dec b
    dec b
    ld b, $05
    dec b
    dec b
    ld b, $05
    dec b
    ld bc, $0101
    ld bc, $0101
    ld b, l
    dec b
    dec b
    ld b, $05
    dec b
    dec b
    ld b, $05
    dec b
    ld bc, $0101
    ld bc, $0101
    dec b
    dec b
    dec b
    ld b, $05
    dec b
    dec b
    ld b, $05
    dec b
    ld bc, $0101
    ld bc, $0101
    dec b
    dec b
    ld b, $06
    dec b
    dec b
    dec b
    ld b, $05
    dec h
    dec h
    dec h
    dec h
    dec h
    dec h
    dec h
    dec b
    dec b
    ld b, $06
    ld b, $05
    dec b
    ld b, $25
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
    ld b, $01
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
    ld b, $00
    nop
    nop
    ld bc, $0505
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $00
    nop
    nop
    ld bc, $0505
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $00
    nop
    nop
    ld bc, $0505
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $00
    nop
    nop
    ld bc, $0505
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $00
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
    nop
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
    cp $ff
    ld hl, sp-$01
    ldh a, [rIE]
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ret nz

    rst $38
    nop
    rst $38
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
    nop
    rst $38
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
    ldh a, [rIE]
    rst $28
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [rIF]
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    stop
    rra
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
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
    ld bc, $0100
    nop
    ld bc, $0100
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
    ccf
    nop
    ccf
    nop
    dec [hl]
    ld a, [bc]
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

jr_09e_70f8:
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
    ldh a, [rIF]
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
    rra
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    nop
    nop
    nop
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
    ld a, [hl+]
    ld a, a
    nop
    push af
    ld a, [bc]
    pop hl
    ld e, $e1
    ld e, $ff
    nop
    rst $38
    nop
    or $09
    cp $01
    pop bc
    ld a, $cf
    jr nc, jr_09e_70f8

    ld a, h
    add e
    ld a, h
    adc e
    ld [hl], h
    add e
    ld a, h
    dec h
    jp c, $fc03

    ld b, $f9
    ld c, $f1
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld d, l
    xor d
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
    cp $ff
    cp $ff
    db $fc
    rst $38
    inc bc
    inc b
    inc bc
    inc b
    rlca
    ld [$100f], sp
    rra
    jr nz, jr_09e_71ee

    jr nz, jr_09e_7210

    ld b, b
    ld a, a
    add b
    ld d, l
    xor d
    ld a, [hl+]
    push de
    nop
    rst $38
    nop
    nop
    nop
    nop
    ld d, l
    xor d
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    jp c, $ff25

    nop
    rst $38
    nop
    or $09

jr_09e_71ee:
    cp $01
    rra
    ldh [$fb], a
    inc b
    rst $38
    nop
    ld l, a
    sub b
    ld l, l
    sub d
    and $19
    or [hl]
    ld c, c
    cp a
    ld b, b
    rrca
    ldh a, [rIF]
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

jr_09e_7210:
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    xor d
    ld d, l
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld d, l
    xor d
    xor d
    ld d, l
    nop
    rst $38
    nop
    nop
    nop
    nop
    ld d, l
    xor d
    rst $38
    nop
    rst $38
    nop
    db $dd
    ld [hl+], a
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    or $09
    rst $38
    nop
    ld a, [hl]
    add c
    ld a, e
    add h
    rst $28
    db $10
    xor l
    ld d, d
    db $ed
    ld [de], a
    ld [$de15], a
    ld hl, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    xor $11
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    sub $29
    cp $01
    ld l, d
    sub l
    ld l, l
    sub d
    rst $38
    nop
    or a
    ld c, b
    rst $38
    nop
    ld e, e
    and h
    db $db
    inc h
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
    rst $38
    nop
    nop
    rst $38
    xor d
    ld d, l
    rst $38
    nop
    rst $38
    ld a, a
    add sp, $5f
    db $eb
    ld e, [hl]
    rst $38
    ld a, a
    add b
    ld a, a
    rst $38
    nop
    rst $38
    nop
    or $09
    rst $30
    ld [$00ff], sp
    db $fd
    ld [bc], a
    ret c

    daa
    ld sp, hl
    ld b, $ed
    ld [de], a
    db $ed
    ld [de], a
    ld sp, hl
    ld b, $b0
    ld c, a
    pop af
    ld c, $64
    sbc e
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld c, $f1
    ld c, $f1
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    ld a, [$fa17]
    rla
    rst $38
    rra
    ldh [$1f], a
    rst $38
    nop
    nop
    rst $38
    ld bc, $00ff

jr_09e_730d:
    rst $38
    nop
    rst $38
    nop
    rst $38
    xor d
    ld d, l
    rst $38
    nop
    rst $38
    rst $38
    cp a
    ei
    rst $38
    ld bc, $ffff
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    ret nz

    ccf
    ldh [$1f], a
    rst $38
    nop
    db $ed
    ld [de], a
    jr nz, jr_09e_730d

    and b
    ld e, a
    ld h, b
    sbc a
    ldh [$1f], a
    dec de
    db $e4
    ld e, a
    and b
    rra
    ldh [$5c], a
    and e
    sbc h
    ld h, e
    inc e
    db $e3
    db $10
    rst $28
    db $10
    rst $28
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop

jr_09e_7357:
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    cpl
    cp $ff
    add b
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp a
    ld a, a
    ret nz

    jr nz, jr_09e_7357

    db $10
    ldh [rNR10], a
    ldh a, [$08]
    ld hl, sp+$04
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    cp $01
    ld d, h
    xor e
    xor d
    ld d, l
    nop
    rst $38
    nop
    nop
    nop
    nop
    ld d, l
    xor d
    rst $38
    nop
    ld a, a
    adc a
    dec a
    srl a
    rst $08
    ldh a, [rIF]
    cp a
    ld b, b
    db $10
    rst $28
    ld de, $1dee
    ld [c], a
    rla
    add sp, $7f
    add b
    or $09
    cp $01
    ld a, a
    add b
    ld a, [hl]
    add c
    ccf
    ret nz

    dec bc
    db $f4
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
    rst $38
    nop
    rst $30
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp+$0f
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    ret nz

    ccf
    ret nz

    rst $38
    nop
    nop
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
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
    ld d, h
    xor b
    cp $00
    cp $fc
    ld a, [hl]
    add h
    rst $38
    db $fc
    inc bc
    db $fc
    rst $38
    nop
    inc bc
    db $fc
    inc bc
    db $fc
    ld sp, $b3ce
    ld c, h
    pop af
    ld c, $db
    inc h
    ld a, [$d805]
    daa
    jp c, $d825

    daa
    call c, $ec23
    inc de
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    or $09
    pop af
    ld c, $f0
    rrca
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
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
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
    ld bc, $000e
    rlca
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
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ld [hl], b
    add b
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld e, b
    and b
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
    rst $38
    ret nz

    ccf
    ld a, b
    add a
    ld c, $f1
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld [de], a
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
    ld bc, $01fe
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
    rlca
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
    db $fd
    ld [bc], a
    ld d, b
    xor a
    nop
    rst $38
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

    ccf
    ld a, b
    add a
    rra
    ldh [$03], a
    db $fc
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld c, b
    rst $38
    ld c, d
    rst $38
    ld c, d
    rst $38
    ld c, d
    rst $38
    ld c, d
    rst $38
    ld c, d
    rst $38
    ld c, d
    rst $38
    ld c, d
    rst $38
    ld c, d
    rst $38
    ld c, d
    rst $38
    ld c, b
    rst $38
    ld c, c
    cp $49
    cp $41
    cp $41
    cp $43
    db $fc
    ld b, e
    db $fc
    ld b, e
    db $fc
    ld b, e
    db $fc
    ld b, e
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
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
    rst $38
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
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    cp $01
    rst $38
    nop
    ld a, [$f505]
    ld a, [bc]
    ld d, l
    xor d
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    rst $38
    nop
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
    add c
    ld a, a
    add c
    ld a, a
    add c
    rst $38
    inc bc
    cp $03
    cp $03
    rst $38
    inc bc
    rst $38
    rlca
    ld hl, sp+$07
    rst $38
    nop

jr_09e_7610:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    or b
    ld c, a
    rst $38
    nop

jr_09e_761c:
    ld l, b
    sub a

jr_09e_761e:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$10ef], sp
    rst $28
    db $10
    rst $28

jr_09e_7633:
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $18
    jr nz, jr_09e_761c

    jr nz, jr_09e_761e

    jr nz, jr_09e_7610

    jr nc, jr_09e_7633

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
    add b
    ld a, a
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
    nop
    rst $38
    rst $38
    nop
    xor d
    ld d, l
    ld d, l
    xor d
    ld d, l
    xor d
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
    rst $38
    nop
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
    dec de
    rst $38
    inc de
    rst $38
    inc d
    rst $38
    db $10
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
    rrca

jr_09e_7692:
    rst $38
    rrca
    rst $30
    rra
    rst $30
    rra
    rst $30
    rra
    rst $30
    rra
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
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
    ldh [$1f], a
    rst $18
    jr nz, jr_09e_7692

    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    cp $ff
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    cp $c7
    ld hl, sp-$39
    ld hl, sp+$00
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
    nop
    rst $38
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
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    dec c
    ld c, $0f
    db $10
    ld de, $0f12
    rrca
    inc de
    inc d
    rrca
    rrca
    dec d
    ld d, $17
    jr jr_09e_7778

    ld a, [de]
    rrca
    dec de
    inc e
    dec e
    rrca
    rrca
    ld e, $1f
    rrca
    jr nz, jr_09e_778c

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_09e_779c

    ld a, [hl+]
    rrca
    dec hl
    inc l
    rrca

jr_09e_7778:
    dec l
    ld l, $2f
    jr nc, jr_09e_77ae

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_09e_77be

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b

jr_09e_778c:
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

jr_09e_779c:
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, c
    ld e, d
    ld e, e
    dec c
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b

jr_09e_77ae:
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

jr_09e_77be:
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    dec hl
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ld [hl], d
    ld [hl], d
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
    rrca
    adc e
    ld [hl], d
    ld [hl], d
    ld [hl], d
    adc h
    adc l
    rrca
    adc [hl]
    rrca
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    ld [hl], d
    ld [hl], d
    ld [hl], d
    sub a
    sbc b
    sbc c
    sbc d
    rrca
    rrca
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    ld [hl], d
    ld [hl], d
    ld [hl], d
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
    rrca
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
    rrca
    cp b
    cp c
    cp d
    rrca
    rrca
    rrca
    rrca
    rrca
    cp e
    cp h
    adc [hl]
    cp l
    rrca
    rrca
    cp [hl]
    rrca
    cp a
    cp c
    ret nz

    rrca
    rrca
    rrca
    rrca
    rrca
    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    jp z, Jump_000_0fcb

    rrca
    rrca
    rrca
    rrca
    call z, $cecd
    rst $08
    rrca
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    rrca
    jp c, $0fdb

    rrca
    rrca
    rrca
    call c, $0fdd
    sbc $7d
    rst $18
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    db $e4
    and $c6
    rst $20
    add sp, -$17
    ld [$0feb], a
    rrca
    rrca
    ret nc

    db $ec
    db $ed
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    xor $ef
    ldh a, [rIF]
    rrca
    rrca
    rrca
    rrca
    pop af
    ld a, [c]
    nop
    ld [bc], a
    ld bc, $0002
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0202
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld bc, $0101
    ld bc, $0100
    ld bc, $0100
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0141
    ld bc, $0101
    ld bc, $0202
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    ld bc, $0001
    nop
    nop
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0000
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    ld bc, $0100
    ld bc, $0202
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0202
    ld bc, $0100
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $4001
    ld bc, $0000
    ld bc, $0100
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0001
    nop
    jr nz, jr_09e_799c

jr_09e_799c:
    ld bc, $0101
    ld [bc], a
    nop
    nop
    jr nz, jr_09e_79a4

jr_09e_79a4:
    jr nz, @+$03

    ld bc, $0101
    nop
    nop
    nop
    nop
    ld hl, $0101
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
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop

jr_09e_79c7:
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    or b
    or b
    rst $38
    adc [hl]
    rst $38
    add c
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    ccf
    nop
    inc bc
    ret nz

    ret nz

    inc a
    inc a
    jp Jump_000_3cc3


    inc a
    jp Jump_000_3cc3


    inc a
    jp Jump_000_3cc3


    inc a
    jp Jump_000_3cc3


    inc a
    jp $3c03


    ret nz

    ld b, e
    db $fc
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    ld b, b
    ld b, b
    jr nz, jr_09e_7a24

    jr nz, @+$22

jr_09e_7a06:
    jr nz, @+$22

    jr nz, jr_09e_7a2a

    jr nz, jr_09e_7a2c

    jr nz, jr_09e_7a2e

    jr nz, jr_09e_7a30

    jr nz, @+$22

    jr nz, jr_09e_7a34

    jr nz, @+$22

    jr nz, jr_09e_7a38

    jr nz, jr_09e_7a3a

    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    rst $38
    db $10
    rst $38
    db $10

jr_09e_7a24:
    rst $18
    jr nc, jr_09e_7a06

    jr nc, jr_09e_79c7

    ld [hl], c

jr_09e_7a2a:
    db $10
    rst $38

jr_09e_7a2c:
    rra
    rst $38

jr_09e_7a2e:
    ldh a, [rIE]

jr_09e_7a30:
    ld de, $89fe
    ld a, [hl]

jr_09e_7a34:
    ret


    ld a, $eb
    inc e

jr_09e_7a38:
    db $eb
    inc e

jr_09e_7a3a:
    db $eb
    inc e
    db $eb
    inc e
    ei
    inc c
    ei
    inc c
    ei
    inc c
    ei
    inc c
    ei
    inc c
    ei
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
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $30
    inc c
    rst $30
    inc c
    rst $20
    inc e
    rst $00
    inc a
    add e
    ld a, [hl]
    add e
    ld a, [hl]
    inc bc
    cp $03
    cp $03
    cp $07
    cp $07
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add a
    ld a, a
    ld a, l
    add e
    rst $28
    db $10
    db $fd
    ld [hl], d
    ld a, b
    rst $20
    db $fd
    cp $f8
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
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    rst $38
    jr nc, @+$01

    ld c, $ff
    ld bc, $00ff
    rst $38
    nop
    ld a, a
    nop
    rlca
    add b
    add b
    ld a, b
    ld a, b
    add [hl]
    add [hl]
    ld a, b
    ld a, b
    add [hl]
    add [hl]
    ld a, b
    ld a, b
    add [hl]
    add [hl]
    ld a, b
    ld a, b
    add [hl]
    add [hl]
    ld a, b
    ld a, b
    add [hl]
    ld b, $78
    add b
    ld b, $f8
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
    nop
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
    ld b, a
    cp b
    ld h, a
    sbc b
    rst $28
    db $10
    rst $28
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
    nop
    ld hl, sp+$07
    cp $0f
    db $fc
    ccf
    ld hl, sp+$7f
    ldh [rIE], a
    xor $f1
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
    ccf
    rst $08
    rra
    rst $20
    cp c
    rst $00
    rst $28
    db $10
    cp b
    ld [hl], a
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $e3
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $20
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
    rst $38
    rst $38
    ld a, a
    ld a, a
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
    ret nz

    ret nz

    jr nc, jr_09e_7bac

    ld c, $0e
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $28
    db $10
    rst $20
    jr @-$3b

    inc a
    add c
    ld a, [hl]
    rrca
    rst $38
    di
    db $fc

jr_09e_7bac:
    add e
    ld a, h
    db $d3
    inc l
    ei
    inc b
    ei
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
    nop
    rst $38
    nop
    rst $38
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
    add b
    ld a, a
    inc bc
    rst $38
    rst $38
    rlca
    inc e
    db $e3
    inc d
    rst $38
    pop af
    ld a, a
    inc a
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
    adc a
    ld [hl], b
    ccf
    ldh a, [rIE]
    db $fc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
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
    ldh [$e0], a
    rst $38
    rst $38
    rst $38
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
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    adc $f1
    rst $20
    ld a, b
    pop af
    ld e, $fe
    rrca
    rst $38
    inc bc
    sbc a
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
    rst $18
    ld h, b
    rst $18
    ld h, b
    rst $18
    ld h, b
    rst $18
    ldh [rIE], a
    ldh a, [$8f]
    cp $c1
    cp a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ret nz

    cp a
    add b
    rst $38
    ldh [rIE], a
    db $fc
    rra
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
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
    cp $01
    cp $01
    cp $01
    cp $01
    ld hl, sp+$07
    rra
    rst $28
    ldh a, [rIE]
    ld hl, sp+$07
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    rst $38
    nop
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
    ld bc, $03ff
    rst $38
    cpl
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
    ld a, a
    add e
    sub c
    xor $87
    db $fc
    rlca
    rst $38
    inc c
    rst $38
    ld hl, sp-$01
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
    cp $fe
    add b
    add b
    nop
    nop
    ld hl, sp-$08
    ld a, a
    ld a, a
    pop bc
    ld bc, $00e0
    ldh a, [$30]
    cp b
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$10
    ldh a, [$e0]
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
    ld bc, $0301
    inc bc
    rrca
    rrca
    ccf
    ccf
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
    ld hl, sp-$0d
    pop af
    and $e2
    call z, $98c4
    adc b
    ld h, b
    rst $38
    or b
    ld a, a
    db $fc
    ccf
    ld [hl], e
    rst $28
    ld sp, hl
    rst $00
    adc $f1
    rst $30
    ld a, b
    reti


    ld a, $ee
    rra
    ei
    rlca
    db $fc

jr_09e_7d25:
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
    add b
    ld a, a
    ldh a, [$1f]
    db $fc
    rlca
    rst $38
    jr jr_09e_7d25

    ld e, $e1
    rra
    ldh [$1f], a
    ldh [$1f], a
    db $fc
    rst $20
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ld e, a
    ld e, a
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
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

    ld a, b
    rst $00
    ld b, b

jr_09e_7d73:
    rst $38
    ld c, a
    rst $38
    ldh a, [rIE]
    ld b, b
    rst $38
    ld [hl], b
    rst $08
    add hl, sp
    and $39
    and $39
    and $bb
    ld h, h
    cp e
    ld h, h
    cp a
    ld h, b
    cp a
    ld h, b
    cp a
    ld h, b
    cp a
    ld h, b
    ccf
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3e], a
    pop hl
    ld a, h
    rst $38
    sbc e
    rst $20
    jr c, jr_09e_7d73

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
    rst $38
    rst $38
    rst $38
    rst $38
    sbc $3e
    ld e, b
    and b
    dec sp
    ret nz

    jr c, @+$01

    inc bc
    rst $38
    rra

jr_09e_7dc5:
    rst $38
    ld sp, hl
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
    nop
    nop
    nop
    nop
    ldh [$e0], a
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
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca
    rrca
    ccf
    ccf
    ld a, a
    ld a, a
    db $fc
    db $fc
    ld sp, hl
    ld hl, sp-$0d
    pop af
    and $e2
    call z, $98c4
    adc b
    jr nc, jr_09e_7e12

    ld h, b
    jr nz, jr_09e_7dc5

    ld b, b
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

jr_09e_7e12:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld h, b
    rst $38
    jr c, @+$01

    inc c
    rst $38
    ld h, a
    sbc a
    inc sp
    rst $08
    rst $08
    di
    db $76
    rst $38
    dec e
    cp $0f
    rst $38
    adc a
    ld a, a
    add a
    ld a, a
    add e
    ld a, a
    jp $c33f


jr_09e_7e35:
    ccf
    jp $c33f


jr_09e_7e39:
    ccf
    add e
    rst $38
    di
    rst $38
    rra
    rst $38
    rlca
    rst $38
    ld bc, $b0ff
    ld c, a
    or b
    rst $08
    ld [hl], b
    rst $28
    jr c, @-$17

    jr c, jr_09e_7e35

    jr c, @-$17

    jr c, jr_09e_7e39

    ld hl, sp-$19
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
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
    rra
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
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
    ldh a, [rIE]
    ld l, a
    sbc a
    adc a
    ld hl, sp-$58
    rst $38
    ld e, b
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
    add a
    ld a, b
    dec de
    db $fc
    cp $ff
    ccf
    rst $38
    cp a
    rst $38
    rst $18
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
    nop
    nop
    ldh a, [$f0]
    rst $38
    rst $38
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    ld a, $3e
    ld a, h
    ld a, h
    db $fd
    db $fc
    rst $30
    push af
    and $e6
    call nz, $84c4
    add h
    add h
    add h
    add h
    add h
    add h
    add h
    add h
    add h
    add h
    add h
    add h
    add h
    add h
    add h
    add b
    add b
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
    ld bc, $03fe
    db $fc
    ld a, a
    add b
    ccf
    ret nz

    rra
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
    ret nz

    rst $38
    ldh a, [rIE]
    ld a, h
    rst $38
    cp a
    ld a, a
    ld c, a
    cp a
    add e
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
    rst $38
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    cp $ff
    ldh a, [rIE]
    ret nz

    rst $38
    ldh [rIE], a
    db $fc
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    cp $ff
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
    ld a, a
    rst $38
    di
    inc c
    ld b, c
    rst $38
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    add b
    nop
    cp a
    ld a, a
    ld h, b
    ldh [$e0], a
    ldh [$c0], a
    ret nz

    add b
    add b
    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ld a, c
    ld a, c
    di
    pop af
    rst $20
    db $e3
    call $99c5
    adc c
    ld sp, $6111
    ld hl, $41c1
    add c
    add c
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
    inc bc
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$3f], a
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
    ld a, a
    add b
