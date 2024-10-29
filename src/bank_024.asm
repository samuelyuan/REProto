SECTION "ROM Bank $024", ROMX[$4000], BANK[$24]

    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
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
    rst $38
    nop
    rst $38
    nop
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
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$7f
    add c
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
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
    rra
    cp $7f
    ld hl, sp-$40
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
    rra
    ldh [rIE], a
    nop
    rst $00
    db $38, $83
    ld a, h
    ld bc, $01fe
    cp $01
    cp $00
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
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
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
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    ret nz

    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ld bc, $0ffe
    ldh a, [$7f]
    add b
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
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
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
    nop
    rst $38
    nop
    nop
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
    db $fc
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
    ldh [$03], a
    db $fc
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ldh [$e1], a
    ldh a, [$f1]
    ld hl, sp-$07
    db $fc
    db $fd
    cp $ff
    nop
    ld bc, $0100
    add b
    add c
    add b
    add c
    ret nz

    pop bc
    ldh [$e1], a
    ldh a, [$f1]
    ld hl, sp-$07
    db $fc
    db $fd
    cp $ff
    cp $ff
    cp $ff
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
    inc bc
    db $fc
    rra
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
    db $fc
    inc bc
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    rst $38
    add b
    rst $38
    ld h, b
    rst $38
    db $10
    rst $38
    inc c
    rst $38
    ld [bc], a
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
    nop
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst $38
    ld bc, $3fff
    rst $38
    rst $38
    rst $38
    rst $38
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
    add b
    rst $38
    ld b, b
    rst $38
    jr nc, @+$01

    ld [$04ff], sp
    rst $38
    inc bc
    rst $38
    nop
    rst $38
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
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld h, b
    rst $38
    db $10
    rst $38
    inc c
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    rlca
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
    ldh [$df], a
    ldh [rIE], a
    ldh a, [rIE]
    db $fc
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
    add b
    rst $38
    ld b, b
    rst $38
    jr nc, @+$01

    ld [$00ff], sp
    nop
    nop
    nop
    nop
    nop
    ld bc, $0202
    inc bc
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    inc bc
    dec b
    ld b, $07
    rlca
    rlca
    ld [$0009], sp
    nop
    nop
    ld a, [bc]
    dec bc
    nop
    nop
    nop
    inc c
    rlca
    rlca
    dec c
    ld c, $0f
    rrca
    db $10
    ld de, $1312
    inc d
    dec d
    inc bc
    nop
    nop
    ld d, $17
    jr jr_024_42f0

    ld a, [de]
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1e
    rra
    jr nz, jr_024_4302

    nop
    nop
    nop
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_024_4315

    ld a, [hl+]
    dec hl
    inc l
    dec l

jr_024_42f0:
    rlca
    ld l, $01
    nop
    nop
    nop
    cpl
    jr nc, jr_024_432a

    ld e, $32
    ld e, $1e
    inc bc
    inc sp
    inc [hl]
    rlca
    rlca

jr_024_4302:
    ld [$3635], sp
    scf
    nop
    nop
    jr c, jr_024_4343

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $1e
    ccf
    rlca
    rlca
    rlca
    rlca

jr_024_4315:
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld e, $1e
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

jr_024_432a:
    ld d, e
    ld e, $1e
    ld e, $1e
    ld e, $54
    nop
    nop
    nop
    nop
    nop
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, $1e
    ld e, $1e
    ld e, $5a
    ld e, e
    ld e, h

jr_024_4343:
    ld e, l
    inc bc
    nop
    nop
    nop
    ld e, [hl]
    ld e, $1e
    ld e, $1e
    ld e, $1e
    ld e, $5f
    rlca
    rlca
    rlca
    inc c
    nop
    nop
    nop
    ld h, b
    ld e, $1e
    ld e, $1e
    ld e, $1e
    ld e, $61
    rlca
    rlca
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld e, $1e
    ld e, $1e
    ld e, $1e
    ld e, $68
    rlca
    rlca
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld e, $1e
    ld e, $1e
    ld e, $1e
    ld e, $6f
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
    ld e, $1e
    ld e, $7c
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
    rlca
    rlca
    adc h
    adc l
    adc [hl]
    adc a
    rlca
    rlca
    rlca
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    rlca
    rlca
    sub a
    sbc b
    ld [hl], b
    sbc c
    sbc d
    sbc e
    inc bc
    ld c, d
    sbc h
    ld c, l
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    nop
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
    rlca
    rlca
    rlca
    xor l
    xor [hl]
    xor a
    or b
    or c
    rlca
    rlca
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
    nop
    nop
    nop
    nop
    ld bc, $0000
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
    rlca
    rlca
    rlca
    rlca
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
    ld [bc], a
    ld [bc], a
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
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
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
    ld [bc], a
    nop
    nop
    ld b, h
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
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    nop
    rlca
    inc b
    inc b
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
    nop
    nop
    inc b
    inc b
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
    ld b, b
    nop
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    ld bc, $0606
    rlca
    rlca
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    ld bc, $0202
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
    nop
    nop
    ld bc, $0404
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
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0101
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
    jr nz, @+$03

    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0601
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    ld bc, $0101
    ld bc, $0006
    nop
    nop
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
    inc bc
    db $fc
    inc bc
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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

    rra
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
    rst $38
    nop
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

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    ld bc, $07ff
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
    nop
    rst $38
    ld e, $ff
    rra
    rst $38
    rra
    rst $38
    rra
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    rrca
    ld a, a
    rrca
    ld a, a
    rrca
    ld a, a
    rrca
    ccf
    rrca
    ccf
    rrca
    ccf
    rrca
    ccf
    rrca
    ccf
    rrca
    ccf
    rrca
    ccf
    rrca
    ccf
    rrca
    ccf
    rlca
    ccf
    rlca
    rra
    rlca
    rra
    rlca
    rra
    rlca
    rra
    rlca
    rra
    daa
    ccf
    ld h, b
    ld a, a
    ldh [rIE], a
    ldh [rIE], a
    pop hl
    rst $38
    ld bc, $031e
    inc e
    inc bc
    inc e
    inc bc
    inc e
    inc bc
    inc e
    ccf
    ccf
    ld a, a
    ld a, a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $08
    nop
    add a
    nop
    add e
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
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    rlca
    rra
    rra
    ccf
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
    cp $ff
    ld bc, $00ff
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
    ld hl, sp-$40
    ccf
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
    ldh a, [rIE]
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
    ld bc, $00fe
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
    rrca
    nop
    rlca
    nop
    rlca
    inc bc
    rlca
    rlca
    rra
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
    nop
    rst $38
    nop
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
    db $f4
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    jr nc, @+$01

    nop
    rst $38
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
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
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    rst $38
    rst $38
    inc bc
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
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    pop hl
    rra
    db $e3
    rra
    db $e3
    rra
    rst $20
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $18
    ccf
    rst $38
    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
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
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
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
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
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
    add b
    rst $38
    add b
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
    ld bc, $037f
    ld a, h
    inc bc
    db $fc
    rlca
    ld a, b
    rrca
    ld [hl], b
    rra
    ldh [$1f], a
    ld h, c
    ccf
    pop bc
    ld a, a
    add e
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
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$1f], a
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
    rst $30
    nop
    db $e3
    nop
    pop hl
    nop
    pop hl
    nop
    pop hl
    nop
    pop hl
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
    nop
    ld bc, $0700
    nop
    rra
    nop
    ld a, a
    ld a, a
    rst $38
    nop
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
    rra
    rst $38
    ld e, a
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
    db $10
    rst $38
    inc b
    rst $38
    rlca
    add sp, $0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
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
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    ld a, a
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
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ld h, b
    rra
    ld b, b
    ccf
    ld b, b
    ccf
    ld a, a
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $fcff
    rst $38
    nop
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
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    adc b
    rst $38
    nop
    rst $38
    ret nz

    ccf
    pop af
    ld c, $f9
    ld b, $f9
    ld b, $f9
    ld b, $f9
    add a
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
    nop
    rst $38
    nop
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
    ld [$30fc], sp
    db $fc
    ret nz

    db $fc
    nop
    db $fc

jr_024_4a88:
    nop
    db $fc
    jr nz, jr_024_4a88

jr_024_4a8c:
    nop
    db $fc
    jr nz, jr_024_4a8c

    nop
    call c, $dc00
    nop
    call c, $df03
    inc bc
    rst $18
    inc bc
    rst $18
    inc bc
    rst $18
    inc bc
    rst $18
    inc bc
    rst $38
    inc bc
    rst $18
    inc bc
    rst $38
    inc de
    rst $38
    ccf
    rst $00
    ccf
    rst $08
    ld a, a
    adc a
    rst $38
    rra
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
    cp a
    cp l
    cp a
    cp a
    inc de
    cp a
    ld h, e
    db $fd
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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

    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
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
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld c, b
    ld a, l
    ld b, [hl]
    ccf
    nop
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
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
    rrca
    nop
    rrca
    inc bc
    ldh a, [$03]
    ldh a, [$03]
    ldh a, [$03]
    ldh a, [$f3]
    ldh a, [$f3]
    ldh a, [$f3]
    ldh a, [$f3]
    ldh a, [$f3]
    ldh a, [$f3]
    ldh a, [$f3]
    ldh a, [$f3]
    ldh a, [$f3]
    ldh a, [$f3]
    ldh a, [$f3]
    ldh a, [$f3]
    ldh a, [rNR32]
    inc bc
    jr jr_024_4b7b

    add hl, de
    rlca
    add hl, de
    rlca
    add hl, de
    rlca
    add hl, de

jr_024_4b7b:
    rlca
    add hl, de
    rlca
    add hl, de
    rlca
    add hl, de
    rlca
    add hl, de
    rlca
    add hl, de
    rlca
    add hl, de
    rlca
    dec de
    rlca
    dec de
    rlca
    dec de
    rlca
    jr jr_024_4b97

    ld hl, sp+$07
    jr jr_024_4b98

    jr jr_024_4b9a

    nop

jr_024_4b97:
    nop

jr_024_4b98:
    rst $38
    rst $38

jr_024_4b9a:
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    adc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc c
    rst $38
    adc c
    rst $38
    adc c
    rst $38
    adc c
    rst $38
    adc c
    rst $38
    adc e
    rst $38
    adc a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $00
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
    nop
    rst $38
    nop
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
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
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
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $01
    ld b, $01
    db $76
    ld bc, $0176
    ld h, [hl]
    ld bc, $0166
    ld h, [hl]
    ld bc, HeaderSGBFlag
    ld b, [hl]
    ld bc, $0106
    ld b, $01
    ld b, $03
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
    ld bc, $0004
    inc b
    ld bc, HeaderLogo
    inc b
    nop
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    ld [$0800], sp
    ld bc, $0108
    ld [$0900], sp
    nop
    ld bc, $f9f8
    ld hl, sp-$07
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
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
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
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

    pop bc
    nop
    pop bc
    nop
    ret nz

    ld bc, $01c0
    ret nz

    ld bc, $01c0
    ld b, b
    add c
    ld b, b
    add c
    ld b, b
    add c
    ld b, d
    add c
    ld b, d
    add c
    ld b, d
    add c
    ld b, b
    add e
    ld b, b
    add e
    ld b, b
    add e
    ld b, b
    add e
    ld b, b
    add e
    ld b, b
    add e
    ld b, b
    add e
    ld b, b
    add e
    add h
    inc bc
    add h
    inc bc
    add h
    inc bc
    add b
    rlca
    add b
    rlca
    add c
    ld b, $81
    ld b, $81
    ld b, $81
    ld b, $89
    ld b, $89
    ld b, $89
    ld b, $89
    ld b, $89
    add [hl]
    adc c
    add [hl]
    add c
    adc [hl]
    add c
    adc [hl]
    ld b, c
    adc $41
    adc $52
    call z, $cc52
    or d
    db $ec
    or d
    db $ec
    or d
    db $ec
    or d
    db $ec
    sub d
    db $fc
    sub d
    db $fc
    ld d, d
    db $fc
    ld d, d
    db $fc
    ld c, d
    db $fc
    ld c, d
    db $fc
    ld c, d
    db $fc
    ld c, d
    db $fc
    ld h, $fc
    inc h
    db $fc
    inc h
    db $fc
    and h
    db $fc
    and d
    cp $a2
    cp $92
    cp $92
    cp $91
    rst $38
    sub c
    rst $38
    sub c
    rst $38
    ld c, $20
    rla
    jr nz, jr_024_4dac

    jr nz, jr_024_4dbe

    db $10
    rlca
    jr nz, jr_024_4dc2

    db $10
    rlca
    jr nc, @+$0d

    jr nc, jr_024_4dac

    db $10
    inc bc
    jr jr_024_4da8

    jr jr_024_4da8

    ld a, [de]

jr_024_4da8:
    ld bc, $011a
    inc c

jr_024_4dac:
    ld bc, $010c
    inc c
    ld bc, $0108
    jr jr_024_4db6

    nop

jr_024_4db6:
    nop
    ld a, [bc]
    ld [bc], a
    ld [$0402], sp
    add b
    add d

jr_024_4dbe:
    add b
    add d
    add b
    add b

jr_024_4dc2:
    add c
    add b
    add b
    add c
    add b
    add l
    add h
    add e
    add h
    add e
    add h
    add b
    add b
    add [hl]
    add b
    add h
    add b
    add d
    ret nz

    jp nz, $c1c2

    ret nz

    jp $c2c0


    ret nz

    jp nz, $c1c0

    nop
    nop
    ld b, b
    nop
    ld b, b
    nop
    add b
    ld b, b
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
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
    rst $38
    nop
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
    inc bc
    nop
    add e
    add b
    add e
    add b
    add e
    add b
    add e
    add b
    ld b, e
    ret nz

    ld b, a
    ret nz

    ld b, a
    ret nz

    ld b, a
    ret nz

    daa
    ldh [$27], a
    ldh [$27], a
    ldh [$27], a
    ldh [rNR22], a
    ldh a, [rNR22]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [rIF]
    ld hl, sp+$0f
    ld hl, sp+$08
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld hl, sp+$00
    ld a, b
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    inc a
    ld b, b
    ld a, $40
    ld a, $00
    ld a, $00
    ld a, $00
    ccf
    nop
    rra
    jr nz, jr_024_4ea8

    jr nz, jr_024_4eaa

    ld b, b
    ld e, a
    nop
    sbc a
    ld b, b
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

jr_024_4ea8:
    ld hl, sp+$07

jr_024_4eaa:
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
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
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
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
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    nop
    rst $38
    ldh [rIE], a
    ldh a, [$fe]
    ldh a, [$fe]
    ldh a, [$fe]
    ld hl, sp-$02
    ld hl, sp-$02
    ld hl, sp-$02
    db $fc
    cp $fc
    cp $fc
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
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ld a, b
    ld hl, sp+$78
    ld hl, sp+$00
    nop
    nop
    nop
    ld [bc], a
    inc b
    ld [$0007], sp
    rrca
    nop
    rra
    jr nz, @+$21

    nop
    ccf
    nop
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    nop
    ld a, a
    ld b, b
    ccf
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
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    pop af
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ld c, $f0
    ld c, $f0
    ld c, $e0
    ld e, $e0
    ld e, $e0
    ld e, $e0
    ld e, $e0
    ld e, $e0
    ld e, $e0
    ld e, $c0
    inc a
    ret nz

    inc a
    ret nz

    inc a
    ret nz

    inc a
    ret nz

    inc a
    ret nz

    inc a
    add b
    ld a, h
    add b
    ld a, b
    add b
    ld a, b
    add b
    ld a, b
    add b
    ld a, b
    add b
    ld a, b
    add b
    ld a, b
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
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
    nop
    nop
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
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    nop
    ret nz

    nop
    ret nz

    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    ret nz

    nop
    add b
    ld b, b
    add b
    ld b, b
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
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    add b
    ld a, a
    nop
    ld a, a
    add b
    ld a, a
    nop
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
    ld bc, $0302
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
    inc b
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
    dec b
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
    rlca
    inc bc
    inc bc
    ld [$0000], sp
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $00
    nop
    nop
    nop
    rrca
    inc bc
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_024_50b1

    ld a, [de]
    nop
    nop
    dec de
    inc bc
    inc bc
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    nop
    jr z, jr_024_50b0

    add hl, hl
    ld a, [hl+]
    dec hl

jr_024_50b0:
    inc l

jr_024_50b1:
    dec l
    ld l, $2f
    jr nc, jr_024_50e7

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    nop
    ld [hl], $03
    scf
    jr c, jr_024_50f9

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    nop
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
    nop
    nop
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

jr_024_50e7:
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld [bc], a
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld d, a
    ld h, l
    ld h, [hl]
    ld h, a
    ld d, a
    ld l, b
    ld l, c
    ld l, d
    ld l, c

jr_024_50f9:
    ld l, e
    ld l, h
    inc bc
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld d, a
    ld [hl], c
    ld [hl], d
    ld d, a
    ld d, a
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    inc bc
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, l
    add b
    add c
    add c
    add c
    add c
    add d
    nop
    ld d, d
    add e
    add h
    add l
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
    nop
    nop
    add a
    adc b
    adc c
    adc d
    adc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc h
    adc l
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
    nop
    nop
    adc [hl]
    adc a
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
    nop
    nop
    nop
    sub d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0401
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    inc b
    inc b
    nop
    nop
    nop
    nop
    inc bc
    inc b
    inc b
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    inc b
    inc b
    dec b
    dec b
    dec b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    inc b
    inc b
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld b, e
    inc bc
    inc bc
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
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
    jr nz, @+$03

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
    nop
    nop
    nop
    nop
    nop
    ld b, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    nop
    rst $38
    inc bc
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
    rra
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
    cp $ff
    rst $38
    rst $38
    or $ff
    rst $18
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
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
    ei
    rst $38
    xor $ff
    call c, $fbff
    rst $38
    ld d, a
    rst $38
    cp a
    rst $38
    ld h, l
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
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
    rrca
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
    ld bc, $1fff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fd
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ld a, [$fbff]
    rst $38
    nop
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
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    db $e3
    db $fc
    db $e3
    db $fc
    rst $20
    ld hl, sp-$19
    ld hl, sp-$15
    db $f4
    db $eb
    db $f4
    db $eb
    db $f4
    pop hl
    cp $e0
    rst $38
    ld [c], a
    db $fd
    db $e3
    db $fc
    db $e3
    db $fc
    push hl
    ld a, [$fbc4]
    call nz, $c0fb
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
    ldh [$9f], a
    ld hl, sp-$79
    cp $81
    rst $38
    ret nz

    rst $38
    ldh [$7f], a
    ld hl, sp+$0f
    cp $03
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    and e
    rst $38
    cp l
    rst $38
    ld a, [$ffff]
    rst $38
    cp $ff
    push af
    rst $38
    rst $30
    rst $38
    xor l
    rst $38
    dec sp
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld a, [bc]
    rst $38
    cp $ff
    push de
    rst $38
    inc bc
    db $fc
    ld bc, $01fe
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
    and c
    ld e, [hl]
    ld a, b
    add a
    cp h
    ld b, e
    ld a, [$7405]
    adc e
    cp $01
    ld a, a
    add b
    ccf
    ret nz

    cp a
    ld b, b
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
    ld h, a
    sbc b
    ld h, a
    sbc b
    scf
    ret z

    ld e, a
    and b
    cp a
    ld b, b
    jp c, $de25

    ld hl, $24db
    ei
    inc b
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a

jr_024_54ed:
    add b
    ld a, l
    add d
    add b
    nop
    add l
    nop
    adc a
    nop
    sbc a
    nop
    sbc a
    nop
    rst $18
    ld b, b
    xor a
    nop
    rst $38
    nop
    jr c, @-$37

    ld b, h
    cp e
    jr nz, @-$1f

    inc b
    ei
    ld b, h
    cp e
    di
    inc c
    jr nz, jr_024_54ed

    add hl, hl
    sub $00
    rst $38
    add b
    ld a, a
    ldh a, [rIF]
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ldh a, [rIF]
    cp $01
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
    ld a, [hl]
    add c
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$03
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
    ld bc, $7fff
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $eb
    rst $38
    rst $38
    rst $38
    push af
    rst $38
    rst $38
    rst $38
    dec hl
    rst $38
    ld e, [hl]
    rst $38
    ret


    rst $38
    dec hl
    rst $38
    rst $28
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    push af
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    and l
    rst $38
    rst $38
    rst $38
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    ld a, b
    add a
    ld a, h
    add e
    inc a
    jp $e11e


    ld e, $e1
    rrca
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    ld bc, $01fe
    cp $00
    rst $38
    add b
    ld a, a
    and b
    ld e, a
    ldh a, [rIF]
    reti


    ld h, $da
    dec h
    ld hl, sp+$07
    db $fc
    inc bc
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, a
    add b
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    cpl
    ret nc

    ld a, a
    add b
    ld c, a
    or b
    rst $30
    ld [$08f7], sp
    or $09
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    rst $00
    jr c, jr_024_5608

    call z, $ec13
    ld d, $e9
    inc de
    db $ec
    ld b, c
    cp [hl]
    ld b, d
    cp l
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
    ld a, a
    nop
    ld a, a
    nop
    inc sp
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
    ret nz

    ccf
    ld hl, sp+$07
    cp $01
    rst $38
    ret nz

    ccf
    ldh a, [rIF]
    cp $01
    rst $38

jr_024_5608:
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [hl]
    add c
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
    rst $38
    rst $38
    db $dd
    rst $38
    cp e
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    di
    rst $38
    rst $18
    rst $38
    ld bc, $fdff
    rst $38
    ld hl, sp-$01
    ld h, c
    rst $38
    set 7, a
    cpl
    rst $38
    ld e, a

jr_024_564d:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld [hl], $ff
    ei
    rst $38
    rst $30
    rst $38
    and $ff
    adc h
    rst $38
    rst $38
    cp $ff
    cp $7f
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
    add a
    ld a, a
    add a
    ld a, a
    rst $00
    ccf
    jp $e33f


    rra
    pop hl
    rra
    ld [hl], c
    adc a
    ld a, b
    add a
    jr c, jr_024_564d

    inc a
    jp $e31c


    ld c, $f1
    rlca
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    inc bc
    cp $03
    cp $03
    cp $03
    cp $03
    cp $07
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
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rrca
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0e
    ld sp, hl
    ld c, $f9
    ld e, $f1
    ld e, $f1
    ld e, $f1
    ld e, $f1
    ld e, $f1
    sbc [hl]
    ld [hl], c
    cp $11
    cp $01
    cp $c1
    ld a, $f1
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
    or $ff
    add sp, -$01
    cp b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    add b
    rst $38
    ld d, b
    rst $38
    cp $ff
    db $f4
    rst $38
    ccf
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    cp $ff
    db $fc
    rst $38
    ld sp, hl
    rst $38
    db $ed
    rst $38
    ld a, [c]
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc $ff
    sub d
    rst $38
    ld b, h
    rst $38
    nop
    rst $38
    db $10
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
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
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
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
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
    call c, $f8ff
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    inc bc
    db $fc
    ld [bc], a
    db $fd
    ld bc, $01fe
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    sub b
    rst $38
    ld d, a
    rst $38
    ld d, e
    rst $38
    rst $30
    rst $38
    sub c
    rst $38
    cp $ff
    rra
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    xor $ff
    ld b, l
    rst $38
    ld [$1cff], sp
    rst $38
    db $10
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
    ldh a, [rIE]
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
    ld a, a
    add b
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
    ld bc, $7f01
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    rra
    ld a, a
    cpl
    ld a, a
    rra
    ld a, a
    xor a
    ld a, a
    sbc a
    ld a, a
    xor a
    ld a, a
    sub a
    ld a, a
    xor e
    ld a, a
    sub b
    ld a, a
    xor d
    ld a, a
    sub l
    ld a, a
    adc d
    ld a, a
    add l
    ld a, a
    add d
    ld a, a
    add l
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    call nc, Call_000_00ff
    rst $38
    ld b, $f9
    ccf
    ret nz

    ld e, a
    and b
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
    dec hl
    call nc, $fe01
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    db $f4
    rst $38
    rst $38
    rst $38
    db $dd
    rst $38
    and c
    rst $38
    rst $08
    rst $38
    jr z, @+$01

    or b
    rst $38
    ld h, b
    rst $38
    ld h, b
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
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
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc e
    rst $38
    sbc a
    rst $38
    ld e, a
    rst $38
    adc a
    rst $38
    ld d, l
    rst $38
    adc d
    rst $38
    ld d, l
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    and b
    rst $38
    db $10
    rst $28
    rst $18

jr_024_599b:
    jr nz, jr_024_599b

    nop
    db $fc
    nop
    ld a, h
    nop
    ld hl, sp+$00
    rst $38
    nop
    cp $00
    cp $00
    rst $18
    jr nz, jr_024_59ec

    ret nz

    ld a, $c1
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
    dec h
    rst $38
    ld b, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    nop
    rst $38

jr_024_59ec:
    inc bc
    db $fc
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
    ld a, [hl]
    ld d, h
    cp $fc
    cp $fc
    cp $fc
    cp $ec
    cp $ec
    cp $ec
    cp $ec
    cp $ec
    cp $ec
    cp $ec
    cp $ec
    cp $ec
    cp $ec
    cp $ec
    cp $ec
    cp $ec
    cp $ec
    cp $ec
    cp $ec
    cp $ec
    cp $ec
    cp $ec
    cp $ec
    cp $ec
    cp $fc
    cp $fc
    cp $fe
    rst $38
    cp $ff
    ld c, $ff
    xor $ff
    xor $ff
    xor $ff
    xor $ff
    xor [hl]
    rst $38
    ld b, [hl]
    rst $38
    xor d
    rst $38
    ld b, h
    rst $38
    xor d
    rst $38
    ld b, h
    rst $38
    ld a, [hl+]
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
    nop
    rst $38
    xor c
    ld d, [hl]
    rst $38
    nop
    rst $30
    nop
    dec sp
    nop
    sub e
    nop
    ld b, b
    nop
    and b
    nop
    and [hl]
    nop
    and $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    dec h
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    inc c
    rst $38
    dec c
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
    nop
    rst $38
    ld e, d
    and l
    cp a
    ld b, b
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
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
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
    ld a, [hl]
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $24ff
    db $db
    rst $38
    nop
    db $dd
    nop
    pop de
    nop
    ld e, [hl]
    nop
    ld b, b
    nop
    ld b, b
    nop
    call z, $e300
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    cp a
    ld b, b
    dec d
    ld [$ff00], a
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
    ld d, $e9
    rst $38
    nop
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    cp a
    ld a, a
    cp a
    ccf
    ld e, a
    ccf
    rst $18
    ccf
    rst $38
    rra
    rst $28
    rra
    rst $28
    rra
    adc a
    ld a, a
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
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $07ff
    ld sp, hl
    ld [hl+], a
    db $dd
    and [hl]
    ld e, c
    cpl
    ret nc

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
    nop
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
    nop
    rst $38
    nop
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
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
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
    add b
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
    rlca
    ld [$0a09], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    inc c
    dec c
    ld c, $0f
    nop
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_024_5c74

    ld a, [de]
    dec de
    nop
    inc e
    dec e
    ld e, $1f
    jr nz, jr_024_5c84

    ld hl, $2322
    inc h
    dec h
    jr nz, jr_024_5c91

    daa
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    inc l
    jr nz, jr_024_5ca0

    dec h

jr_024_5c74:
    ld l, $23
    inc hl
    inc hl
    cpl
    jr nc, jr_024_5cac

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_024_5cbc

    ld a, [hl-]

jr_024_5c84:
    dec sp
    inc a
    inc hl
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_024_5c8d:
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]

jr_024_5c91:
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    jr nz, jr_024_5ce4

    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld b, $52
    ld d, e

jr_024_5ca0:
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

jr_024_5cac:
    dec b
    ld b, $60
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
    nop
    nop
    ld l, d

jr_024_5cbc:
    ld b, $06
    ld [$206b], sp
    jr nz, @+$6e

    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    nop
    nop
    nop
    ld [hl], d
    ld b, $06
    ld b, $73
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h

jr_024_5cd9:
    nop
    nop
    ld a, l
    ld a, [hl]
    ld b, $06
    ld a, a
    add b
    add c
    add d
    add e

jr_024_5ce4:
    add h
    add l
    add [hl]
    add a
    jr nz, @-$76

    nop
    nop
    adc c
    ld b, $06
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    jr nz, jr_024_5c8d

    sub h
    nop
    sub l
    ld b, $06
    ld b, $96
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    jr nz, @+$22

    sbc [hl]
    nop
    sbc a
    ld b, $06
    ld b, $a0
    and c
    and d
    and e
    and h
    and l
    and [hl]
    sub e
    jr nz, jr_024_5d3a

    and a
    nop
    nop
    xor b
    ld b, $06
    xor c
    nop
    xor d
    nop
    xor e
    xor h
    xor l
    jr nz, jr_024_5d49

    jr nz, jr_024_5cd9

    nop
    nop
    xor a
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

jr_024_5d3a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_024_5d49:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc b
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
    ld bc, $0101
    ld bc, $0301
    rlca
    rlca
    rlca
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0301
    rlca
    rlca
    rlca
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
    ld bc, $0100
    ld bc, $0505
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
    ld b, c
    ld bc, $0000
    nop
    nop
    nop
    nop
    inc b
    inc b
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
    inc b
    inc b
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
    inc b
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
    inc bc
    nop
    nop
    nop
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
    nop
    inc bc
    inc bc
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
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
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rrca
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $ed
    ld a, [c]
    rst $18
    ldh [$df], a
    ldh [rP1], a
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
    ld a, $fe
    ld a, [hl]
    cp $fe
    cp $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$03
    ld hl, sp-$05
    ldh a, [rIE]
    ldh a, [$f0]
    rst $38
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
    ld d, l
    xor d
    rst $38
    nop
    rst $30
    ld [$12ed], sp
    nop
    rst $38
    nop
    rst $38
    nop
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
    rlca
    ld hl, sp+$07
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
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rNR34], a
    ldh [rNR32], a
    ldh [rNR32], a
    ldh [rNR23], a
    ldh [rNR23], a
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
    ldh [rNR23], a
    ldh [rNR23], a
    ldh [rNR23], a
    ldh [rNR32], a
    ldh [rNR34], a
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

    ccf
    ret nz

    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    call $94b2
    ret nz

    nop
    add b
    add h
    nop
    nop
    nop
    inc b
    nop
    xor a
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    or l
    ld c, d
    adc h
    ld [hl], e
    ld b, b
    cp a
    nop
    rst $38
    ld [de], a
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rra
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
    db $10
    rst $28
    cp h
    ld b, e
    sbc $21
    ld c, [hl]
    or c
    ld c, [hl]
    or c
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
    ld bc, $03fe
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [rP1], a
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
    ld a, [$8d05]
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    dec bc
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    ld sp, hl
    ld b, $29
    sub $80
    ld a, a
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
    ld bc, $1bff
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $18
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    adc d
    ld [hl], l
    ei
    inc b
    ei
    inc b
    rst $38
    nop
    or a
    ld c, b
    rst $38
    rst $38
    rra
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
    cp $00
    db $fc
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
    inc bc
    nop
    nop
    nop
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$1cff], sp
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ld e, $ff
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
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
    ld a, a
    ccf
    ld a, a
    rrca
    jr nc, jr_024_621e

    nop
    rst $38
    nop
    cp $01
    pop hl
    ld e, $58
    and a
    xor b
    ld d, a
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
    jr z, @+$01

    dec l
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
    add d
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
    ld b, h
    cp e
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    nop
    rst $38
    nop
    rst $38
    nop
    rlca
    nop
    rrca
    inc bc
    rrca
    ld bc, $041f
    rra
    ld c, $1f
    ldh a, [$3f]
    ldh a, [$3f]
    ldh a, [$3f]
    rst $38
    ccf
    rst $38
    ccf
    ldh a, [$3f]
    ldh a, [$3f]
    cp $3e
    ldh a, [$3e]
    ldh a, [$7f]
    ldh a, [$7f]
    ldh a, [$7f]
    rst $38
    rst $38
    rra
    rra
    nop
    rrca
    nop
    rrca
    db $10
    rra
    ldh a, [$3f]
    ldh a, [$3f]
    ldh a, [$3f]
    ldh a, [$3f]
    rst $38
    ccf
    rst $38
    ccf

jr_024_621e:
    ldh a, [$3f]
    rrca
    ccf
    rrca
    ccf
    rrca
    ccf
    rrca
    ccf
    rrca
    ccf
    rrca
    ccf
    nop
    ccf
    nop
    ccf
    rra
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
    ld bc, $0100
    nop
    ld bc, $0300
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    dec e
    rst $38
    add hl, sp
    rst $38
    ld h, c
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, a
    rst $38
    ld b, a
    rst $38
    ld h, a
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
    jp hl


    ld d, $ff
    nop
    db $fd
    ld [bc], a
    sub h
    ld l, e
    ret nz

    ccf
    ld b, b
    cp a
    rlca
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld e, a
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
    sub $ff
    ldh [rIE], a
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
    inc l
    db $d3
    cp h
    ld b, e
    ld h, h
    sbc e
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
    di
    rst $38
    di
    rst $38
    di
    rst $38
    ld [hl], e
    rst $38
    call z, Call_024_6dff
    rst $38
    ccf
    rst $38
    cp $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    ld c, $0f
    rlca
    rlca
    ld b, $07
    ld c, $0f
    ld c, $ff
    ld c, $ff
    cp $ff
    rst $38
    rst $38
    rrca
    rst $38
    ld c, $ff
    ld e, $ff
    ld [bc], a
    db $e3
    nop
    pop bc
    nop
    pop bc
    ld [bc], a
    db $e3
    cp $ff
    rst $38
    rst $38
    rrca
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
    pop af
    rst $38
    ld bc, $00ff
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld c, $ff
    jr @+$01

    ld a, b
    rst $38
    add sp, -$01
    adc b
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$09ff], sp
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
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
    cp $ff
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
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
    rst $38
    rst $38
    ld [hl], b
    adc a
    pop bc
    ld a, $50
    xor a
    nop
    rst $38
    ld bc, $dfff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    sbc d
    ld h, l
    rst $38
    nop
    rlca
    ld hl, sp+$07
    ld hl, sp+$0e
    pop af
    ld c, $f1
    sbc $e1
    sbc [hl]
    pop hl
    sbc [hl]
    pop hl
    ld a, $e1
    ld a, $e1
    ld a, [hl]
    pop hl
    cp $e1
    rst $38
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIE], a
    ldh [$1f], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$1f], a
    ldh [$e0], a
    rst $38
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
    ldh [$3f], a
    ldh [rIE], a
    ldh [$df], a
    ldh [$5f], a
    ldh [$5f], a
    ldh [$5f], a
    ldh [$5f], a
    ldh [$5f], a
    ldh [$5f], a
    ldh [$5f], a
    ldh [$5f], a
    ldh [$7f], a
    ldh [$7f], a
    ldh [$7f], a
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
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
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
    rrca
    rst $38
    cpl
    rst $38
    inc bc
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
    xor c
    ld d, [hl]
    rst $20
    jr @+$01

    ldh [$fe], a
    pop bc
    db $fc
    add e
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$79
    db $fc
    add e
    db $fc
    add e
    db $fc
    add e
    db $fc
    add e
    ld a, h
    jp $c37c


    ld a, h
    jp $c37c


    ld a, h
    jp $c37c


    ld a, [hl]
    pop bc
    ld a, a
    pop bc
    ld a, a
    pop bc
    ld a, [hl]
    pop bc
    ld a, [hl]
    pop bc
    ld a, [hl]
    pop bc
    ld a, a
    pop bc
    ld a, a
    pop bc
    ld a, a
    pop bc
    ccf
    pop hl
    ld a, $e1
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
    ldh [$3f], a
    ldh [$3f], a
    ldh [$1f], a
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    pop af
    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    add b
    ld a, a
    ei
    inc b
    cp c
    ld b, [hl]
    ld sp, $70ce
    adc a
    ldh a, [rIF]
    ldh a, [rIF]
    db $f4
    dec bc
    db $fc
    inc bc
    ld a, [c]
    dec c
    ldh [$1f], a
    add b
    ld a, a
    inc bc
    db $fc
    ld [bc], a
    db $fd
    inc b
    ei
    jr @-$17

    ld a, [de]
    push hl
    adc [hl]
    pop af
    adc l
    ld a, [c]
    ld c, $f1
    inc b
    ei
    nop
    rst $38
    ret nz

    rst $38
    jr z, @+$01

    jr z, @+$01

    ld b, d
    db $fd
    jp nz, $80fd

    rst $38
    db $10
    rst $38

jr_024_6568:
    and b
    rst $38
    ret z

    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ret nc

    rst $38
    ldh [rIE], a
    ldh a, [$7f]
    ldh a, [$7f]
    db $e3
    ld a, h
    rst $28
    ld [hl], b
    rst $38
    ld b, b
    rst $38
    ld bc, $07ff
    db $fc
    ccf
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
    add b
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $18
    rst $38
    dec c
    rst $38
    nop
    rst $38
    nop
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
    ld [bc], a
    cp $01
    cp $01
    db $fc
    inc bc
    cp $01
    db $f4
    dec bc
    db $e4
    dec de
    jp hl


    ld d, $f2
    dec c
    and c
    ld e, [hl]
    and d
    ld e, l
    and d
    ld e, l
    and b
    ld e, a
    pop bc
    ld a, $83
    ld a, h
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    rst $28
    db $10
    rst $08
    jr nc, jr_024_6568

    ld [hl], b
    rrca
    ldh a, [rNR33]
    ld [c], a
    ld l, e
    sub h
    ld a, [$ec05]
    inc de
    ldh [$1f], a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld b, h
    cp a
    ld b, b
    cp a
    inc b
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    and c
    rst $38
    inc bc
    rst $38
    ld b, $ff
    nop
    rst $38
    ld bc, $07fe
    ld hl, sp+$1f
    ldh [rNR12], a
    db $ed
    inc c
    di
    jr @-$17

    nop
    rst $38
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
    rst $38
    rlca
    cp $3f
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
    rlca
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$03
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
    rst $38
    nop
    rst $38
    add b
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

jr_024_665f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld e, a
    rst $38
    db $10
    rst $38
    inc bc
    rst $38
    add hl, bc
    rst $38
    ld bc, $ffff
    nop
    rst $38
    nop
    rst $38
    nop
    or $09
    pop af
    ld c, $e3
    inc e
    ld h, c
    sbc [hl]
    jr nz, jr_024_665f

    rla
    add sp, $0f
    ldh a, [rNR22]
    add sp, $57
    xor b
    push de
    ld a, [hl+]
    pop af
    ld c, $e9
    ld d, $e4
    dec de
    add sp, $17
    and b
    ld e, a
    ld a, [c]
    dec c
    ret c

    daa
    ld a, b
    add a
    ld c, c
    or a
    inc d
    db $eb
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc d
    rst $38
    jr nc, @+$01

    inc [hl]
    ei
    or b
    ld a, a
    cp h
    ld a, a
    sub b
    ld a, a
    sub b
    ld a, a
    adc b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    inc b
    ei
    ld a, b
    add a
    add sp, $17
    ret nz

    ccf
    ret nz

    ccf
    ld b, b
    cp a
    add b
    ld a, a
    nop

Call_024_66cf:
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
    rlca
    cp $3f
    ldh a, [rIE]
    ret nz

    rst $38
    nop
    rst $38

jr_024_66e6:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_024_66ec:
    inc bc
    db $fc
    rra
    ldh [rIE], a
    nop
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [$03]
    db $fc
    ld bc, $00fe
    rst $38
    nop
    rst $38
    add b
    rst $38

jr_024_6704:
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38

jr_024_6709:
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
    add b
    add b
    nop
    nop

jr_024_671e:
    ld b, b
    ld b, b
    jp z, $df35

    jr nz, jr_024_66ec

    jr c, jr_024_671e

    ld [$2ad5], sp
    rst $18
    jr nz, jr_024_6704

    jr z, jr_024_66e6

    ld c, b
    add b
    nop
    ld bc, $0500
    nop
    xor e
    jr nz, jr_024_6776

    nop
    cp e
    nop
    rst $30
    nop
    db $eb
    nop
    jr c, jr_024_6709

    db $10
    rst $28
    ld [$00f7], sp
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$0af7], sp
    push af
    inc l
    db $d3
    ld [hl], b
    adc a
    ld d, b
    xor a
    and b
    ld e, a
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_024_6776:
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
    rst $38
    nop
    rst $38
    rlca
    rst $38
    rra
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
    rlca
    ld hl, sp+$3f
    ret nz

jr_024_679c:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ldh [$03], a
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
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor e
    jr nz, jr_024_679c

    ld [$2465], sp
    xor c
    add b
    or l
    and b
    sub c
    add b
    ld [hl], h
    ld b, b
    add $80
    call c, $ff00
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
    ld b, b
    rst $38
    nop
    rst $38
    ld [$14f7], sp
    db $eb
    db $10
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
    rst $38
    db $10
    rst $28
    ld h, b
    sbc a
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld [$00ff], sp
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
    inc bc
    rst $38
    rra
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
    inc bc
    db $fc
    rra
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
    ld a, a
    add b
    rlca
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld bc, $01ff
    rst $38
    add c
    ld a, a
    ld bc, $00ff
    rst $38
    ld b, b
    cp a
    ld b, b

jr_024_6883:
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
    jr nz, jr_024_6883

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    inc bc
    rst $38
    rra
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
    nop
    rst $38
    rrca
    ldh a, [rIE]
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
    rst $38
    ret nz

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
    jr z, @+$01

    inc b
    rst $38
    inc bc
    db $fc
    rra
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
    inc bc
    rst $38
    rra
    db $fc
    ld a, a
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
    inc bc
    db $fc
    rra
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
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
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $06
    ld b, $06
    ld b, $07
    ld [$0101], sp
    ld bc, $0101
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    ld b, $06
    ld b, $06
    ld b, $0d
    ld c, $01
    ld bc, $0101
    rrca
    db $10
    ld de, $1312
    inc d
    ld b, $06
    ld b, $06
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    ld b, $1b
    inc e
    dec e
    ld e, $1f
    ld b, $06
    ld b, $06
    jr nz, jr_024_69b8

    ld b, $06
    ld b, $21
    ld [hl+], a
    inc hl

jr_024_69b8:
    inc h
    dec h
    ld h, $1e
    daa
    ld b, $06
    ld b, $28
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_024_69fb

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld b, $06
    inc e
    inc e
    inc e
    ld [hl], $37
    jr c, jr_024_6a10

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    inc [hl]
    ld b, b
    ld b, c
    inc e
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
    ccf
    inc [hl]
    inc e
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

jr_024_69fb:
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    inc e
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
    ld l, e
    ld l, h

jr_024_6a10:
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

jr_024_6a32:
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
    ld b, $b8
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

    ld b, $06
    jr nz, jr_024_6a32

    add $c7
    ret z

    ret


    jp z, $cccb

    call $cfce
    ret nc

    ld b, $06
    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, $dcdb

    db $dd
    ld b, $de
    rst $18
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$20eb], a
    db $ec
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
    dec b
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
    dec b
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $04
    ld bc, $0004
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
    ld b, $04
    ld bc, $0401
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    ld b, $02
    ld b, $02
    inc b
    ld bc, $0401
    nop
    nop
    nop
    nop
    ld b, $06
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $01
    ld bc, $0401
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld [bc], a
    inc b
    ld bc, $0101
    ld bc, $0004
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0101
    ld bc, $0101
    dec b
    nop
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    dec b
    nop
    nop
    inc b
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0101
    dec b
    dec b
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
    inc b
    ld bc, $0505
    nop
    nop
    ld b, b
    nop
    ld b, $00
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
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
    ld [$0808], sp
    ld c, $0e
    nop
    rrca
    nop
    rlca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $1f00
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
    ldh a, [$c0]
    rst $38
    jr c, @+$01

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
    nop
    rst $38
    ret nz

    ccf
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld b, $7f
    nop
    ccf
    nop
    ccf
    nop
    rra
    nop
    rrca
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
    nop
    ld bc, $0300
    nop
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
    nop
    ldh [$1f], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    inc e
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
    ret nz

    ccf
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
    db $fc
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    cp $81
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    rrca
    ldh [rTAC], a
    add b
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
    ld bc, $0300
    nop
    rlca
    nop
    rrca
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
    rst $38
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
    inc bc
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
    rst $38
    add b
    rst $38
    ld [hl], b
    rst $38
    ld c, $ff
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rIF]
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
    rst $38
    nop
    rst $38
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
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    rst $38
    nop
    cp $01
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02ff
    cp $02
    cp $04
    db $fc
    ret z

    ld hl, sp+$38
    ld hl, sp+$0c
    db $fc
    ld b, $fe
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
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ldh a, [rIF]
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
    rst $38

Call_024_6dff:
    nop
    rst $38
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
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    add b
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
    db $fd
    rst $38
    db $fd
    ld [bc], a
    rst $38
    ld b, $ff
    ld [$10fb], sp
    ldh a, [rNR10]
    ldh a, [rNR41]
    ldh [rLCDC], a
    ret nz

    add b
    add b
    db $fc
    nop
    ldh a, [rP1]
    pop hl
    nop
    ret z

    nop
    ret z

    nop
    ldh a, [rP1]
    db $e4
    nop
    ld hl, sp+$00
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ld h, b
    ldh [$30], a
    ldh a, [rNR23]
    ld hl, sp+$0c
    db $fc
    ld b, $fe
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
    add b
    ld a, a
    add b
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
    rst $38
    cp $fd
    db $fc
    db $fc
    db $fc
    cp $fe
    rst $38
    db $fc
    db $fd
    ld hl, sp-$08
    ldh a, [$e0]
    ldh [$f8], a
    ld hl, sp-$0c
    ldh a, [$e2]
    ldh [$c1], a
    ret nz

    add b
    add b
    ret nz

    ret nz

    ld h, d
    nop
    rst $30
    nop
    dec a
    nop
    rrca
    nop
    dec d
    nop
    ld e, d
    rst $38
    cp l
    rst $38
    ld e, a
    rst $38
    ccf
    rst $38
    dec e
    ld a, a
    rlca
    ccf
    inc bc
    rrca
    nop
    inc bc
    ld a, a
    nop
    rra
    nop
    rra
    nop
    rlca
    nop
    inc bc
    nop
    add e
    nop
    inc bc
    nop
    ld bc, $8000
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a

jr_024_6f18:
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    cp $00
    nop
    nop

jr_024_6f22:
    add b
    add b
    ldh [$e0], a
    jr nc, jr_024_6f18

    jr jr_024_6f22

    inc c
    db $fc
    ld b, $fe
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $ff
    cp $ff
    cp $fe
    rst $38
    ei
    ld hl, sp-$06
    db $fd
    rst $38
    ldh a, [rIE]
    ldh a, [$fb]
    ldh a, [$f7]
    ld hl, sp-$04
    ld [c], a
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    sbc a
    add b
    db $eb
    add b
    db $fc
    add b
    db $fc
    nop
    rst $18
    nop
    and [hl]
    nop
    adc e
    nop
    ld a, $c1
    cp a
    ld b, b
    ld e, a
    and b
    and a
    ld e, b
    ld d, d
    xor l
    ld sp, hl
    ld b, $fd
    ld [bc], a
    cp [hl]
    ld b, c
    sbc b
    nop
    sbc [hl]
    nop
    ld a, a
    nop
    ccf
    nop
    sub a
    nop
    db $eb
    nop
    db $f4
    nop
    ei
    ld bc, $fd02
    ret z

    scf
    pop hl
    ld e, $32
    call $641b
    rrca
    db $10
    add e
    inc c
    ld [hl], e
    adc h
    ld b, a
    rst $38
    and d
    rst $38
    ld b, h
    ld a, a
    inc [hl]
    ccf
    dec bc
    rrca
    dec b
    rlca
    ld [bc], a
    inc bc
    ld bc, $ff01
    nop
    rra
    nop
    ld c, $00
    ld hl, $0000
    nop
    ld [$8000], sp
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    and b
    nop
    ldh [rP1], a
    xor b
    nop
    add sp, $00
    call c, $f600
    nop
    add b
    add b
    ret nz

    ret nz

    ld h, b
    ldh [$30], a
    ldh a, [rNR23]
    ld hl, sp+$0c
    db $fc
    ld b, $fe
    inc bc
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
    ldh a, [rIF]
    ldh a, [rIF]
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
    cp $01
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld a, [$fcfd]
    rst $38
    db $fc
    cp $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    pop af
    xor $e0
    rst $18
    ld a, [c]
    call $d2ed
    xor $d1
    jp $a1fc


    sbc $a4
    ld e, e
    ld a, d
    add l
    cp a
    ld b, b
    ld a, a
    nop
    cpl
    sub b
    cpl
    ret nz

    rst $10
    jr nz, @+$38

    ld sp, hl
    inc bc
    db $fc
    ld bc, $00fe
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld c, b
    or a
    ld [de], a
    db $ed
    ld d, c
    xor $0b
    db $f4
    dec b
    ld a, [$1de2]
    ldh a, [rIF]
    db $fd
    ld [bc], a
    ld a, a
    add b
    cp a
    ld b, b
    ld c, a
    or b
    and [hl]
    ld e, c
    call nz, $f83b
    rlca
    ld [hl], l
    adc d
    cpl
    ret nc

    add a
    ld a, b
    and c
    ld e, [hl]
    cp a
    nop
    rrca
    nop
    inc bc
    nop
    jp z, $e000

    nop
    push af
    ld bc, $01f9
    ld a, e
    inc bc
    or a
    add a
    ld [hl], $26
    sbc [hl]
    ld e, $ec
    inc c
    call c, Call_000_181c
    jr jr_024_70c5

    jr c, jr_024_70bf

    inc [hl]
    ld h, b
    ld l, h
    ldh [$ec], a
    ret nz

    call nz, $a680
    nop
    ld h, [hl]
    nop
    pop af
    nop
    pop af
    nop
    ld [hl], d
    ld a, [hl]
    rst $38
    db $fd
    ld a, [hl]
    rst $38
    jr c, jr_024_7123

    nop
    ld [$4000], sp
    nop
    sub b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    inc b

jr_024_70bf:
    nop
    nop
    nop
    adc b
    nop
    ret nz

jr_024_70c5:
    nop
    ld [hl], b
    nop
    xor b
    nop
    ld hl, sp+$00
    cp $00
    db $fc
    nop
    rst $30
    rrca
    rst $28
    rra
    rst $18
    ccf
    cp a
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld a, a
    cp a
    ccf
    adc a
    rrca
    ld b, a
    rst $00
    pop af
    pop af
    cp b
    ld hl, sp-$22
    cp $f5
    rst $38
    push af

jr_024_70eb:
    rst $38
    jr z, @+$01

    sub b
    rst $38
    ld b, b
    ld a, a
    cp d
    or a
    ld hl, sp-$01
    ld a, h
    rst $38
    cp [hl]
    rst $38
    adc a
    rst $38
    dec h
    rst $38
    add d
    rst $38
    jr nz, @+$01

    ld b, b
    cp a
    sub b
    rst $28
    ld l, b
    rst $30
    inc h
    ei
    ld [$05ff], sp
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    jp nz, $643d

    sbc e
    dec de
    db $e4
    rla
    add sp, $0a
    push af
    add h
    ld a, e
    jp nz, $e83d

jr_024_7123:
    rla
    cp h
    ld b, e
    ld a, h
    add e
    inc a
    jp $827d


    ld a, e
    add h
    ccf
    ret nz

    ld b, b
    nop
    jr nz, jr_024_7134

jr_024_7134:
    or b
    nop
    ld [hl], b
    nop
    and b
    nop
    ld b, b
    ld bc, $0009
    inc sp
    jr nc, jr_024_7171

    jr nc, jr_024_71b3

    ld [hl], b
    ld h, d
    ld l, b
    db $e4
    add sp, -$29
    ret z

    rst $00
    ret z

    add d
    adc h
    and d
    add h
    sub $28
    ld a, [$a4c4]
    sbc b
    and c
    jr c, jr_024_70eb

    ld [$7090], sp
    pop hl
    ld hl, $0383
    cpl
    ld hl, sp+$3f
    ldh a, [$7f]
    ldh [$bf], a
    ldh [$f8], a
    ret nz

    ldh a, [$80]
    ldh [rP1], a
    add b
    nop
    rrca

jr_024_7171:
    nop
    inc bc
    nop
    ld bc, $0200
    nop
    add d
    nop
    dec c
    nop
    ld a, [bc]
    nop
    ld [$1000], sp
    nop
    inc de
    nop
    inc hl
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    nop
    nop
    inc bc
    nop
    rlca
    nop
    inc bc
    nop
    ld c, $00
    dec c
    nop
    add hl, de
    nop
    dec bc
    nop
    sub [hl]
    nop
    push hl
    nop
    dec a
    nop
    cp e
    nop
    rst $18
    nop
    rst $08
    nop
    cp a
    nop
    rst $18
    nop
    rst $28
    nop
    add b
    add b
    ret nz

jr_024_71b3:
    ret nz

    ld h, b
    ldh [$38], a
    ld hl, sp+$0c
    db $fc
    ld b, $fe
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
    rst $38
    rst $38
    db $fd
    rst $38
    rst $30
    rst $38
    cp a
    rst $38
    rst $28
    rst $38
    ld a, l
    ld a, a
    ld a, [de]
    rra
    call Call_024_66cf
    rst $20
    add hl, de
    ld sp, hl
    dec h
    db $fd
    nop
    cp $80
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    ret nz

    cp a
    ret nc

    rst $28
    ld h, h
    ei
    cp [hl]
    ld sp, hl
    dec e
    cp $0e
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ldh [$1f], a
    or d
    call $e31c
    dec c
    ld a, [c]
    rrca
    ldh a, [rIF]
    ldh a, [rIE]
    nop
    rst $38
    nop
    ld a, a
    add c
    rst $38
    ld bc, $03fd
    db $fc
    inc bc
    ld a, d
    add l
    rst $30
    nop
    rst $30
    inc b
    di
    ld d, $ff
    rra
    db $fd
    ccf
    cp $25
    ei
    ld h, h
    cp $e1
    cp d
    db $e4
    adc h
    ldh a, [rHDMA5]
    ld a, b
    adc e
    cp b
    db $e3
    ret nc

    scf
    ret nz

    and [hl]
    ld b, b
    call z, $5a00
    add d
    sbc d
    add d
    ld [hl], $86
    daa
    rlca
    cp a
    ld [c], a
    ld a, a
    call nz, $c07f
    rst $38
    pop bc
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    ld de, $70ee
    adc a
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
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
    rst $28
    nop
    ccf
    nop
    rst $18
    nop
    rst $28
    nop
    ld a, l
    ld [bc], a
    ccf
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    cp a
    nop
    ld a, a
    nop
    cp a
    nop
    rst $38
    nop
    cp a
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
    ei
    inc b
    cp $01
    ld sp, hl
    ld b, $fd
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
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ret nz

    ret nz

    ld h, b
    ldh [$30], a
    ldh a, [rNR23]
    ld hl, sp+$0c
    db $fc
    ld b, $fe
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
    rst $30
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    rst $10
    rst $38
    ld d, a
    rst $38
    ld e, e
    rst $38
    or e
    rst $38
    ld [hl], e
    rst $38
    db $e3
    rst $38
    add e
    rst $38
    jp nz, $62ff

    ld a, a
    sbc $df
    ld a, h
    rst $38
    jr c, @+$01

    ld bc, $03fe
    cp $02
    rst $38
    rlca
    rst $38
    add a
    ld a, a
    adc [hl]
    ld [hl], a
    rlca
    rst $38
    dec d
    xor $37
    adc $27
    call c, $8e75
    ld b, a
    cp a
    rst $28
    ccf
    cp l
    ld a, a
    ld a, h
    rst $38
    call c, $c87f
    rst $38
    set 7, l
    ldh [$fe], a
    ld c, c
    ld a, h
    dec c
    inc a
    jp $c3f8


    ld hl, sp+$07
    ldh a, [$ef]
    nop
    rst $28
    nop
    sbc a
    ld b, b
    cp [hl]
    add b
    inc a
    add b
    jr c, jr_024_7326

jr_024_7326:
    ld [hl], c
    ld bc, $01f1
    ldh [rP1], a
    call nz, $8104
    ld bc, $ffdf
    cp $ff
    cp $ff
    cp a
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rst $08
    rst $38
    ld [hl], d
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    jr nc, @+$01

    adc b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ld b, b
    cp a
    inc d
    rst $28
    inc b
    rst $38
    ldh [$1f], a
    ret nz

    ccf
    pop hl
    ld e, $d4
    cpl
    ld [$f717], a
    rrca
    add sp, $17
    or b
    ld c, a
    add b
    ld a, a
    add b
    ld a, a
    ldh [$1f], a
    ldh [$1f], a
    add sp, $17
    ret nz

    ccf
    ret nz

    ccf
    add d
    ld a, a
    add [hl]
    ld a, a
    ld [$20f7], sp
    rst $18
    ret nz

    ccf
    and b
    ld e, a
    ld h, b
    sbc a
    ld h, b
    sbc a

jr_024_7392:
    jp nz, $8f3f

    ld a, a
    ld [bc], a
    rst $38
    rra
    rst $38
    jp c, $9f3f

    ld a, a
    rst $10
    ccf
    dec h
    rst $18
    call c, Call_000_1a2f
    db $ed
    ret nz

    ccf
    rlca
    rst $38
    rlca
    rst $38
    rst $18
    cpl
    ld b, e
    cp a
    add e
    ld a, a
    add $3f
    add [hl]
    ld a, a
    rst $20
    rra
    rst $08
    ccf
    rst $00
    dec a
    add e
    ld a, a
    add c
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    cp $ff
    rst $38
    rst $38
    ei
    db $fd
    ei
    rst $38
    jp hl


    rst $38
    rst $10
    ld hl, sp-$59
    ld hl, sp-$3e
    db $fd
    add h
    ei
    add c
    rst $38
    add e
    rst $38
    dec bc
    rst $30
    rlca
    rst $38
    rlca
    rst $38
    cpl
    rst $18
    daa
    rst $10
    ld d, a
    or a
    ld a, a
    cp a
    adc [hl]
    ld c, a
    ld e, [hl]
    rst $18
    inc h
    cp a
    xor l
    or e
    sbc l
    sbc e
    sbc c
    sbc a
    sbc a
    sbc a
    rst $08
    rst $38
    pop de
    db $ec
    jp Jump_024_7bf8


    adc b
    rst $00
    jr nc, @-$2f

    jr nz, jr_024_7392

    ret nz

    sbc a
    add b
    rra
    add b
    ccf
    add b
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    db $fd
    ld bc, $fc07
    rrca
    ld hl, sp+$0f
    ld hl, sp+$1f
    ldh a, [$3f]
    ldh [$7f], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    add c
    cp $80
    rst $38
    nop
    rst $38
    add d
    db $fd
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    reti


    cp $20
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    db $f4
    rst $38
    ld hl, sp-$01
    ret c

    rst $38
    or $ff
    rst $30
    rst $38
    rst $38
    rst $38
    cp $ff
    ld a, l
    rst $38
    ld a, e
    rst $38
    cp $ff
    db $fd
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, $ff
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld c, $ff
    ld l, a
    rst $38
    add a
    rst $38
    add a
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
    add d
    rst $38
    ld bc, $01ff
    rst $38
    ld hl, $0bff
    rst $38
    ld bc, $01ff
    rst $38
    ld hl, $08ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    inc bc
    rst $38
    inc bc
    rst $38
    add c
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
    ld b, c
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    xor b
    rst $38
    ret c

    rst $38
    cp b
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    db $fd
    rst $38
    rst $28
    rst $38
    ld d, d
    rst $38
    ld [de], a
    rst $38
    inc sp
    rst $38
    scf
    rst $38
    cpl
    rst $38
    rra
    rst $38
    inc bc
    rst $38
    and c
    db $fd
    jp $87ff


    rst $38
    adc c
    pop af
    add c
    ld sp, hl
    cp d
    sla e
    jp nc, $32c1

    cp $1d
    cp a
    ld e, h
    rst $28
    jr jr_024_756e

    add b
    sbc e
    rst $20
    ei
    rst $20
    db $76
    cp $80
    add b
    ldh [rP1], a
    ld hl, sp+$00
    ld a, [$f702]
    rlca
    rra
    ldh a, [$1f]
    ldh a, [$3f]
    ldh [$7f], a
    ret nz

    rst $38
    add b
    cp $00
    rst $38
    nop
    rst $38
    nop
    inc b
    ei
    nop
    rst $38
    inc bc
    db $fc
    inc bc
    db $fc
    dec l
    jp nc, $a05f

    rra
    ldh [$5f], a
    and b
    rra
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    cp a
    ld b, b
    adc a
    ld [hl], b
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [$2f]
    ret nc

    rlca
    ld hl, sp+$1b
    db $e4
    ld d, $e9
    dec b
    ld a, [$fc03]
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    db $f4
    rst $38
    sbc $ff
    cp $ff
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
    rst $38
    rst $38
    cp $ff
    rst $20
    rst $38
    rst $30
    rst $38
    ld sp, hl
    rst $38
    ld a, [$fbff]
    rst $38
    rst $38
    rst $38

jr_024_756e:
    push af
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [$e3]
    db $fc
    ldh a, [rIE]
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
    sbc [hl]
    rst $38
    sub $ff
    call nc, $e5ff
    rst $38
    di
    rst $38
    db $eb
    rst $38
    rst $30
    rst $38
    ld a, e
    rst $38
    ld l, [hl]
    rst $38
    ld e, $ff
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    dec b
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $08
    ldh a, [$dc]
    ei
    ld a, l
    rst $38
    ld d, [hl]
    rst $38
    and l
    rst $38
    ld a, [hl+]
    rst $38
    nop
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    ld d, e
    rst $38
    add a
    ei
    adc d
    or $0b
    rst $30
    add hl, de
    push hl
    ld [hl], c
    adc c
    ld l, b
    sbc c
    and d
    ld d, e
    di
    ld [de], a
    add e
    ld [hl], d
    rst $10
    inc a

jr_024_75ec:
    ld e, e
    cp h
    rst $38
    jr jr_024_75ec

    inc b
    ld a, [$db87]
    rst $20
    scf
    ccf
    dec de
    dec de
    nop
    nop
    inc bc
    nop
    inc bc
    nop
    ld a, a
    rst $38
    rra
    rst $38
    rlca
    rst $38
    inc de
    rst $28
    sub c
    ld l, a
    rra
    ldh [rNR31], a
    db $e4
    ccf
    ret nz

    ld c, a
    or b
    cp a
    ld b, b
    rst $38
    nop
    cp $00
    ei
    nop
    ld a, [$ec00]
    db $10

jr_024_761e:
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    db $ec
    db $10
    db $fd
    nop
    db $db
    jr nz, jr_024_761e

    db $10
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ei
    inc b
    xor a
    ld d, b
    rst $18
    jr nz, jr_024_76bc

    add b
    ld a, [hl]
    add c
    dec a
    jp nz, $e21d

    ld a, l
    add d
    rla
    add sp, $0c
    di
    ld [bc], a
    db $fd
    ld bc, $00fe
    rst $38
    add h
    ei
    add b
    rst $38
    or b
    rst $38
    ld a, b
    rst $38
    cp $ff
    rst $28
    rst $38
    xor $ff
    rst $08
    rst $38
    rst $38
    or a
    rst $38
    xor a
    cp $ff
    cp $ff
    db $fc
    rst $38
    ld hl, sp+$7f
    ld hl, sp-$01
    ldh a, [rIE]
    rst $38
    ldh [rIE], a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rrca
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [$7f], a
    ldh a, [$bf]
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $30
    rst $38
    rst $08
    cp e
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    rst $28
    rst $38
    db $db
    rst $38
    rst $38
    rst $38
    push af
    rst $38
    db $ed
    rst $38
    xor $ff
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_024_76bc:
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    adc a
    ld [hl], b
    ld [hl], d
    rst $38
    ld e, e
    rst $38
    adc h
    rst $38
    ld h, h
    rst $38
    ld b, b
    rst $38
    and h
    rst $38
    rst $30
    rst $38
    sbc $ff
    sbc $ff
    db $fc
    rst $38
    cp b
    rst $38
    or l
    ld a, [$f3ac]
    ld a, a
    pop hl
    db $dd
    db $e3
    cp d
    add $fc
    add h
    push hl
    dec e
    ld [hl], l
    add l
    ldh [rNR11], a
    ei
    dec de
    call nc, $db3f
    jr c, @+$01

    jr @+$01

    nop
    db $fc
    add e
    sbc a
    db $e3
    ei
    rst $30
    rst $18
    rst $18
    add b
    nop
    rst $38
    inc bc
    nop
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    db $fc
    rst $38
    cp $7f
    ld a, a
    ccf
    sbc a
    rrca
    rst $30
    rrca
    ld e, l
    inc bc
    add [hl]
    add hl, bc
    add a
    nop
    add e
    nop
    ld bc, $0200
    nop
    ld b, b
    nop
    ld [bc], a
    nop
    stop
    stop
    nop
    nop
    stop
    sub d
    nop
    add d
    nop
    push bc
    nop
    cp e
    nop
    cp a
    nop
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    ld b, b
    nop
    ld h, c
    nop
    ldh a, [rP1]
    rlc b
    cp a
    ld bc, $038f
    ld l, [hl]
    inc bc
    cp $07
    db $fc
    rrca
    ld hl, sp+$1f
    ldh a, [$1f]
    ldh a, [$3f]
    ldh [$7f], a
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
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
    ccf
    ret nz

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ldh a, [rIE]
    ld hl, sp-$01
    cp h
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld [hl], b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    pop bc
    rst $38
    add c
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    xor a
    ld [hl], b
    db $db
    rst $38
    ld l, [hl]
    rst $38
    ld e, l
    rst $38
    add d
    rst $38
    add l
    rst $38
    db $10
    rst $38
    xor l
    rst $28
    ccf
    rst $38
    ld a, a
    rst $38
    db $fd
    rst $38
    db $f4
    rst $38
    add sp, -$01
    xor b
    or a
    pop bc
    cp $81
    cp $02
    db $fd
    add h
    ld a, e
    ld c, b
    rst $30
    dec bc
    rst $30
    inc sp
    rst $08
    ld [hl+], a
    sbc $f2
    ld c, $ed
    rra
    db $ed
    dec e
    di
    ld a, [bc]
    ld a, [hl]
    add c
    xor [hl]
    pop de
    db $f4
    db $eb
    ldh a, [rIE]
    db $fd
    rst $38
    ld e, a
    ld e, a
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
    ret nz

    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    cp $ff
    rst $38
    ld a, a
    ccf
    rra
    sbc a
    rrca
    rlca
    inc bc
    dec bc
    ld bc, $017e
    dec e
    ld [bc], a
    rst $08
    nop
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    xor [hl]
    ld bc, $01fe
    inc bc
    nop
    inc bc
    ld bc, $0117
    rra
    inc bc
    rra
    rlca
    inc e
    rrca
    jr c, @+$21

    ld [hl], b
    ccf
    ldh [$3f], a
    ret nz

    ld a, a
    ret nz

    ld a, a
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
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
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
    cp $ff
    cp $ff
    db $fc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ld c, $ff
    rra
    rst $38
    rra
    rst $38
    ccf

jr_024_786d:
    rst $38
    ccf
    rst $38
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
    jr z, @+$01

    or a
    rst $38
    adc d
    rst $38
    ld d, [hl]
    rst $38
    ret nz

    cp a
    inc h
    rst $38
    jr z, jr_024_786d

    set 7, a
    sub a
    rst $38
    cpl
    rst $38
    ld e, $fe
    dec a
    db $fd
    ld e, [hl]
    cp a
    sbc b
    ld a, e
    inc sp
    db $f4
    ccf
    ld hl, sp+$16
    reti


    inc b
    sbc e
    inc a
    inc hl
    ld hl, $4a1e
    ld a, l
    ld d, h
    ld a, e
    cp h
    di
    adc h
    di
    dec e
    db $e3
    dec [hl]
    bit 5, l
    sub e
    inc e
    db $e3
    ld a, [hl]
    pop af
    ld e, e
    ld e, h
    xor h
    xor a
    jp z, $ffcb

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
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    db $fc
    rst $38
    rst $38
    ld a, a
    ld a, [hl]
    ccf
    inc a
    rrca
    jr jr_024_78f7

    ld [hl], b
    rra
    pop hl
    ccf
    rst $20
    ld a, a
    rst $08
    ld a, a
    cp a
    db $fc
    ld a, a
    ld hl, sp-$01
    ldh [rIE], a

jr_024_78f7:
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
    db $fc
    inc bc
    db $fc
    inc bc
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
    ld b, $ff
    ld c, $ff
    dec c
    rst $38
    inc e
    rst $38
    ld a, [de]
    rst $38
    dec a
    rst $38
    inc a
    rst $38
    db $76
    rst $38
    and $ff
    rst $00
    rst $38
    jp $cbff


    rst $38
    sub h
    rst $38
    ld a, [hl]
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    or a
    rst $38
    sbc l
    rst $38
    rrca
    rst $38
    ld bc, $00ff
    rst $38
    add b
    rst $38
    ret nc

    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    scf
    rst $38
    rst $38
    rst $38
    ld d, $ff
    xor c
    rst $38
    ld c, c
    cp $00
    rst $38
    nop
    rst $38
    ld c, d
    ld a, a
    ld hl, $a17f
    rst $38
    dec c
    rst $38
    add e
    rst $38
    ld b, $ff
    xor h
    ld a, a
    inc a
    rst $38
    sub c
    rst $38
    ld hl, $02ff
    cp $8d

jr_024_7985:
    ld a, l
    jr @-$05

    jr c, jr_024_7985

    inc [hl]
    rst $30
    ld [hl], a
    rst $30
    ld l, a
    rst $28
    cp $ff
    db $dd
    sbc $a1
    cp [hl]
    inc hl
    call c, Call_000_3cc3
    adc b
    ld a, a
    sbc a
    ld a, a
    sub c
    pop af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02ff
    rst $38
    inc b
    rst $38
    add hl, bc
    rst $38
    inc de
    rst $38
    inc hl
    rst $38
    ld b, a
    cp $8f
    cp $0f
    db $fc
    rra
    db $fc
    rra
    ld hl, sp+$7f
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
    nop
    rst $38
    nop
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
    ldh [$1f], a
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
    dec e
    rst $38
    rra
    rst $38
    dec a
    rst $38
    ld a, [hl-]
    rst $38
    ld a, d
    rst $38
    db $e4
    rst $38
    ret nc

    rst $38
    db $ed
    rst $38
    rra
    rst $38
    dec c
    rst $38
    ld b, $ff
    inc de
    rst $38
    ld c, [hl]
    rst $38
    rla
    rst $38
    adc e
    rst $38
    push bc
    rst $38
    cp e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    call nz, $efff
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
    rst $38
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
    ld a, a
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    push bc
    rst $38
    db $e4
    rst $38
    ld a, [c]
    rst $38
    ld a, l
    rst $38
    db $eb
    rst $38
    dec d
    rst $38
    ld d, d
    rst $38
    ld [bc], a
    rst $38
    dec d

jr_024_7a5b:
    rst $38
    db $10
    rst $28
    ld b, $fe
    add a
    rst $38
    dec d
    db $fd
    sbc e
    ei
    ld [hl], a
    rst $30
    db $76
    rst $30
    ldh [$ef], a
    call nc, $81df
    cp [hl]
    jp $8bfd


    rst $38
    rrca
    rst $38
    ld l, $ff
    inc d
    rst $28
    jr nz, jr_024_7a5b

    pop hl
    sbc a
    ld b, e
    cp a
    add c
    ld a, a
    rst $08
    ccf
    sbc a
    ld a, a
    inc e
    db $fc
    dec hl
    db $db
    nop
    ld a, a
    ld b, b
    rra
    ld [$ff00], sp
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
    ldh [rIE], a
    ldh [$7f], a
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
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
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
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    ld b, $ff
    inc c
    rst $38
    inc c
    rst $38
    inc e
    rst $38
    add hl, sp
    rst $38
    jr nc, @+$01

    ld a, c
    rst $38
    ld [hl], h
    rst $38
    ld c, b
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    ld l, a
    rst $38
    and a
    rst $38
    ld h, e
    rst $38
    ld sp, hl
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    ld a, a
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    rst $08
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
    rst $18
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    add hl, bc
    rst $38
    ld [bc], a
    rst $38
    ldh a, [rIE]
    db $fd
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
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, b
    rst $38
    ld [hl], d
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld [hl], e
    rst $38
    sub [hl]
    rst $38
    ld b, l
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld d, b
    rst $38
    or a
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    rra
    rst $38
    and c
    ld a, a
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $dd
    db $fd
    ld a, [de]
    ei
    or h
    rst $30
    pop hl
    rst $20
    jp $d2cf


    rst $18
    jr c, jr_024_7bad

    ld a, a
    ld a, h
    ld a, [$f6fd]
    ld sp, hl
    call nc, Call_000_1cfb
    jp $df00


    ld a, [bc]
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
    ld a, a
    rst $38
    rlca
    db $fc
    inc bc
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    nop

jr_024_7bad:
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    ld c, $ff
    dec c
    rst $38
    rra
    rst $38
    ld e, $ff
    ld a, [hl-]
    rst $38
    ccf
    rst $38
    ld [hl], a
    rst $38
    ld h, a
    rst $38
    push hl
    rst $38
    add $ff
    ret nz

    rst $38
    ret nc

    rst $38
    ldh a, [rIE]
    or c
    rst $38
    adc a
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    dec e
    rst $38
    ld e, $ff
    dec e
    rst $38
    xor b
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    rra
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
    rst $38

Jump_024_7bf8:
    ld [$00ff], sp
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ld hl, sp-$01
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
    ld hl, sp-$01
    nop
    rst $38
    ldh [rIE], a
    rst $38
    set 7, [hl]
    sbc e
    rst $38
    reti


    rst $38
    dec c
    rst $38
    ld h, $ff
    nop
    rst $38
    jr z, @+$01

    db $e4
    rst $38
    sub b
    rst $38
    add sp, -$01
    adc b
    rst $38
    ld a, b
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
    jr jr_024_7c66

    inc c
    inc c
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_024_7c86

    ld [hl+], a

jr_024_7c66:
    inc hl
    inc h
    inc c
    inc c
    dec h
    ld h, $27
    jr z, jr_024_7c98

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2e
    ld l, $2e
    cpl
    inc c
    jr nc, jr_024_7cac

    ld [hl-], a
    inc sp
    inc c
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_024_7cb2

    ld l, $2e

jr_024_7c86:
    ld l, $39
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
    ld l, $2e
    ld l, $45
    ld b, [hl]

jr_024_7c98:
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
    ld l, $2e
    ld l, $51
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a

jr_024_7cac:
    inc c
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h

jr_024_7cb2:
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
    inc c
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    inc c
    inc c
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
    inc c
    inc c
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
    inc c
    inc c
    inc c
    inc c
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
    inc c
    inc c
    inc c
    inc c
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
    inc c
    inc c
    inc c
    inc c
    inc c
    sbc a
    and b
    and c
    sub [hl]
    and d
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    inc c
    inc c
    inc c
    inc c
    inc c
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    ld l, $2e
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    sbc a
    or c
    or d
    or e
    or h
    ld l, $2e
    ld l, $2e
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    or l
    or [hl]
    or a
    cp b
    ld l, $2e
    ld l, $2e
    ld l, $0c
    inc c
    inc c
    inc c
    inc c
    cp c
    cp d
    cp e
    cp h
    cp b
    ld l, $2e
    ld l, $2e
    ld l, $2e
    inc c
    inc c
    inc c
    inc c
    cp l
    cp [hl]
    cp a
    ret nz

    ld e, [hl]
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $0c
    inc c
    pop bc
    jp nz, $c4c3

    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    inc c
    push bc
    add $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
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
    inc b
    ld bc, $0202
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
    inc b
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
    ld bc, $0202
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    nop
    nop
    nop
    nop
    nop
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    nop
    nop
    nop
    nop
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
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
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0501
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
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
    inc b
    ld bc, $0101
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
    nop
    nop
    ld bc, $0404
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_024_7e9a

jr_024_7e9a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, [hl]
    ld a, a
    ld a, l
    ld a, [hl]
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    jp z, $f3f7

    rst $08
    inc hl
    rst $18
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst $38
    ret nz

    rst $38
    ret nc

    rst $38
    ld hl, sp-$01
    ld a, $ff
    rlca
    rst $30
    dec de
    db $eb
    inc d
    db $ec
    and b
    db $fc
    db $ec
    ld a, [$fff9]
    ld a, a
    ld a, a
    ld a, a
    rst $38
    cp a
    rst $38
    rst $28
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    sub c
    cp a
    ldh [rIE], a
    push hl
    ld a, [$e9f6]
    db $db
    db $e4
    ld c, l
    or d
    or $09
    call c, $3923
    rst $00
    inc bc
    rst $38
    adc e
    ld a, a
    rst $18
    ccf
    rst $18
    ld a, a
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $18
    ld a, $fe
    inc e
    db $fc
    inc b
    db $fc
    ld b, $fe
    ld bc, $47ff
    cp a
    and [hl]
    ld e, [hl]
    ld c, h
    cp h
    xor b
    ld a, b
    cp b
    ld hl, sp-$12
    xor $c6
    add $e8
    add sp, $20
    jr nz, @+$03

    ld bc, $0000
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
    cp $ff
    cp $ff
    cp $ff
    db $fd
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld a, [$f2ff]
    rst $38
    ld a, [c]
    rst $38
    db $f4
    rst $38
    db $f4
    rst $38
    add sp, -$01
    add sp, -$01
    add sp, -$01
    ret nc

    rst $38
    ret nc

    rst $38
    sub b
    rst $38
    and b
    rst $38
    and b
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rrca
    rst $38
    rra
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

jr_024_7faa:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fd
    cp $f1
    cp $f3
    db $fc
    and $f9

jr_024_7fb8:
    adc $f1
    sbc b
    rst $20
    dec e
    ld [c], a
    ld a, e
    add h
    ld de, $e0ef
    rra
    ret nz

    ccf
    nop
    rst $38
    ld [bc], a
    db $fd
    ld de, $8afe
    push af
    pop hl
    cp $ef
    db $fc
    ld a, h
    rst $38
    ld l, $ef
    inc de
    di
    jr nc, jr_024_7faa

    ld h, b
    sub b
    cp b
    ld c, b
    jr nz, jr_024_7fb8

    xor h
    db $f4
    ld a, [c]
    cp $3e
    ld a, $bf
    cp a
    cp $fe
    rst $38
    rst $38
    rst $28
    rst $38
    ld a, c
    ld a, c
    db $dd
    db $dd
    db $f4
    db $f4
    db $fc
    db $fc
    ld l, c
    jp hl


    inc d
    db $f4
    inc d
    db $ec
    add d
    ld a, [hl]
    ldh [rNR32], a
