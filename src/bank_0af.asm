SECTION "ROM Bank $0af", ROMX[$4000], BANK[$af]

    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld b, b
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
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ldh [rIE], a
    ld b, d
    rst $38
    ld h, h
    rst $38
    db $76
    rst $38
    ld [hl], b
    rst $38
    ld d, d
    rst $38
    ld h, b
    rst $38
    ld h, d
    rst $38
    ld [hl], b
    rst $38
    ld h, h
    rst $38
    ldh [rIE], a
    jr nc, @+$01

    jr nz, @+$01

    jr nz, @+$01

    nop
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    nop
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

    jr nz, @+$01

    db $10
    rst $38
    jr nz, @+$01

    or b
    rst $38
    ld de, $90ff
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    jr c, @+$01

    ld e, a
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld de, $11ff
    rst $38
    sub c
    rst $38
    sub c
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
    ld [$10ff], sp
    rst $38
    jr @+$01

    db $10
    rst $38
    jr @+$01

    jr @+$01

    ld [$18ff], sp
    rst $38
    ld [$98ff], sp
    rst $38
    ld [$18ff], sp
    rst $38
    ld [$48ff], sp
    rst $38
    ld [$0aff], sp
    rst $38
    adc [hl]
    rst $38
    ld a, [bc]
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    ld c, h
    rst $38
    inc c
    rst $38
    ld c, h
    rst $38
    adc h
    rst $38
    adc l
    rst $38
    call $9dff
    rst $38
    db $dd
    rst $38
    ld c, h
    rst $38
    ld d, [hl]
    rst $38
    cp h
    rst $38
    xor $ff
    ld h, l
    rst $38
    cp [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld d, l
    rst $38
    add l
    rst $38
    ld b, $ff
    daa
    rst $38
    ld d, [hl]
    rst $38
    ld h, [hl]
    rst $38
    and [hl]
    rst $38
    cp $ff
    cp $ff
    cp $ff
    sbc $ff
    ld a, [hl]
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
    add b
    rst $38
    db $10
    rst $38
    jr z, @+$01

    nop
    rst $38
    ld c, [hl]
    rst $38
    db $f4
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

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
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, $24ff
    rst $38
    db $10
    rst $38
    ld h, b
    rst $38
    and $ff
    ld b, b
    rst $38
    daa
    rst $38
    ld bc, $41ff
    rst $38
    inc d
    rst $38
    dec h
    rst $38
    ld d, d
    rst $38
    ld d, b
    rst $38
    jr @+$01

    push de
    rst $38
    sbc a
    rst $38
    or a
    rst $38
    cp l
    rst $38
    ei
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    db $10
    rst $38
    add d
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    add d
    rst $38
    add h
    rst $38
    inc b
    rst $38
    ld a, [bc]
    rst $38
    ld [$06ff], sp
    rst $38
    ld a, [bc]
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $08ff
    rst $38
    inc c
    rst $38
    dec bc
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    ei
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
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld [$80ff], sp
    rst $38
    adc b
    rst $38
    jr nz, @+$01

    jr z, @+$01

    nop
    rst $38
    ld c, c
    rst $38
    ld a, [de]
    rst $38
    ret nc

    rst $38
    db $10
    rst $38
    add d
    rst $38
    and h
    rst $38
    inc l
    rst $38
    and b
    rst $38
    call nz, $c8ff
    rst $38
    ld d, b
    rst $38
    and h
    rst $38
    ld b, c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    jr nz, @+$01

    add b
    rst $38
    inc h
    rst $38
    add b
    rst $38
    add b
    rst $38
    jr nz, @+$01

    sub h
    rst $38
    ld [bc], a
    rst $38
    jr z, @+$01

    jr nc, @+$01

    jr nz, @+$01

    jr z, @+$01

    nop
    rst $38
    inc b
    rst $38
    ld b, d
    rst $38
    add b
    rst $38
    ld b, c
    rst $38
    ld d, d
    rst $38
    ld d, d
    rst $38
    dec de
    rst $38
    cp a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    ld bc, $80ff
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$00ff], sp
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    ld [$0202], sp
    ld [bc], a
    ld [bc], a
    add hl, bc
    ld a, [bc]
    dec bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc c
    dec c
    ld c, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rrca
    db $10
    ld de, $1312
    inc d
    inc de
    dec d
    ld d, $0f
    rla
    jr jr_0af_425f

    ld [bc], a
    ld [bc], a

jr_0af_425f:
    ld [bc], a
    rrca
    add hl, de
    ld a, [de]
    dec de
    rrca
    rrca
    rrca
    rrca
    rrca
    inc e
    dec e
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld e, $0f
    rra
    jr nz, @+$11

    rrca
    rrca
    rrca
    ld hl, $2322
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc h
    rrca
    dec h
    ld h, $27
    jr z, jr_0af_42b0

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld l, $0f
    cpl
    jr nc, jr_0af_42a9

    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    scf
    rrca
    jr c, jr_0af_42dd

    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, [hl-]

jr_0af_42a9:
    dec sp
    inc a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_0af_42b0:
    rrca
    rrca
    jr c, jr_0af_42f1

    ld a, $3f
    ld b, b
    ld b, c
    ccf
    ld b, d
    ld b, e
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, h
    ld b, l
    rrca
    rrca
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld [bc], a
    ld [bc], a
    ld c, a
    ld d, b
    ld d, c
    rrca
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld [bc], a
    ld e, c
    ld e, d
    ld e, e
    ld e, h

jr_0af_42dd:
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
    ld [bc], a
    ld l, e
    ld l, h
    ld l, l
    ld [bc], a
    ld h, d

jr_0af_42f1:
    ld h, d
    ld l, [hl]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ld h, d
    ld h, d
    db $76
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld h, d
    ld h, d
    ld a, a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    ld h, d
    ld h, d
    adc c
    adc d
    adc e
    adc h
    adc d
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    ld h, d
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc d
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    sbc e
    and b
    and c
    and d
    and e
    and h
    and h
    inc d
    inc d
    and h
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
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
    xor l
    xor [hl]
    xor a
    or b
    or c
    or d
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0141
    ld bc, $0301
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld hl, $0101
    ld bc, $0301
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    ld bc, $0101
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0303
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    nop
    nop
    nop
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0003
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0003
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0003
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0141
    ld bc, $0101
    ld bc, $0003
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    jr nz, jr_0af_447f

jr_0af_447f:
    nop
    ld bc, $0101
    ld bc, $2121
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ldh [$1f], a
    add b
    ld a, b
    nop
    ret nz

    ld bc, $0700
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
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
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
    nop
    rst $38

Call_0af_4513:
    nop
    rst $38
    nop
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
    ld hl, sp+$00
    ldh [rSB], a
    nop
    rlca
    nop
    ccf
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
    ccf
    rst $20
    rra
    ld hl, sp+$07
    cp $01
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ldh [rSB], a
    nop
    rlca
    nop
    ccf
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
    ret nz

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
    add b
    ld a, a
    add b
    ld a, a
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
    db $fc
    inc bc
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
    cp $00
    ldh a, [rSB]
    add c
    rlca
    rlca
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
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld c, $fe
    jr @-$06

    ld bc, $07c1
    rlca
    ccf
    ld a, $ff
    ldh [rSC], a
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

jr_0af_46a8:
    nop
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
    ld hl, sp-$08
    pop bc
    pop bc
    rlca
    rlca
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nz, jr_0af_46a8

    db $10
    ldh [$0c], a
    ldh a, [rSC]
    db $fc
    ld bc, $00fe
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
    ld a, a
    rst $38
    sub h
    rst $38
    ld a, a
    ret nz

    ld a, l
    sbc $51
    xor $4d
    ldh [$61], a
    db $ed
    dec hl
    pop hl
    ccf
    di
    ld a, $ff
    inc a
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
    db $10
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
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
    ccf
    ccf
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
    nop
    rst $38
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
    inc bc
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
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
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
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rrca
    rrca
    nop
    nop
    ldh a, [$f0]
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
    ld e, $ef
    rrca
    rst $30
    rst $00
    dec sp
    jr nz, jr_0af_4837

    db $10
    rrca
    jr jr_0af_4823

    ldh a, [rIF]
    nop
    rst $38
    nop
    rst $38
    nop

jr_0af_4823:
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

jr_0af_4837:
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
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [rIF], a
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
    add b
    rst $38
    nop
    nop
    nop
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
    ld bc, $01ff
    rst $38
    ld bc, $01ff
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
    rlca
    ld sp, hl
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
    ld a, a
    add c
    ccf
    pop bc
    rrca
    pop af
    rlca
    ld sp, hl
    ld bc, $01ff
    ld bc, $0101
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
    cp $00
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    ld hl, sp-$01
    ld a, a
    add b
    rst $38
    add b
    rst $38
    add b
    ld a, a
    add c
    pop af
    cp [hl]
    rst $18
    and b
    ld hl, sp-$59
    ld a, d
    and a
    ld e, d
    and a
    ld e, d
    and a
    jp c, Jump_0af_78a7

    and a
    ld a, a
    and b
    rst $18
    and b
    ld e, a
    and b
    ld e, a
    and b
    ld a, a
    and b
    rst $38
    and b
    ld l, a
    or b
    ld a, a
    adc b
    ld a, l
    rst $00
    rst $18
    ldh [$5f], a
    ldh [$df], a
    ldh [$5d], a
    rst $20
    rst $38
    ret z

    ld a, a
    sub b
    rst $18
    and b
    rst $18
    and b
    ld a, a
    and b
    rst $18
    and b
    ld a, a
    and b
    rst $18
    and b
    ld e, a
    and b
    ld sp, hl
    and a
    ei
    and h
    db $db
    and h
    ld a, e
    and h
    cp b
    rst $20
    cp a
    ldh [$bf], a
    ldh [$bf], a
    rst $38
    add b
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
    cp $00
    db $fc

jr_0af_4997:
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
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
    ld [bc], a
    db $fd
    add hl, de
    and $52
    xor l
    jr nz, jr_0af_4997

    inc b
    ei
    ld c, b
    or a
    ld bc, $05fe
    ld a, [$ff00]
    nop
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
    nop
    nop
    nop
    cp h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    and h
    rst $38
    rst $38
    nop
    rst $38
    nop
    inc bc
    db $fc
    xor e
    db $fc
    xor e
    db $fc
    xor e
    db $fc
    xor e
    db $fc
    inc bc
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
    jr @+$01

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld l, d
    rst $38
    rst $38
    nop
    daa
    ld hl, sp-$01
    ld [$08ff], sp
    rst $38
    ld [$f8ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    rst $38
    add a
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
    ccf
    rst $38
    ccf

jr_0af_4a6a:
    ret nz

    nop
    add b
    nop
    add b
    nop
    rlca
    ld hl, sp+$0d
    ld a, [c]
    ld [$1bf7], sp
    db $e4
    cpl
    ret nc

    dec sp
    call nz, $a05f
    ld e, a
    and b
    ld e, a
    and b
    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    rst $18
    jr nz, jr_0af_4a6a

    jr nz, @+$11

    ldh a, [rNR22]
    add sp, -$02
    ld bc, $18e7
    db $eb
    inc d
    rst $18
    jr nz, @-$5f

    ld h, b
    rra
    ldh [$df], a
    jr nz, @+$01

    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_0af_4adc:
    rst $38
    nop

jr_0af_4ade:
    rst $38
    nop

jr_0af_4ae0:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rrca
    nop
    rrca
    and b
    rst $28
    jr nc, jr_0af_4adc

    jr nz, jr_0af_4ade

    jr nc, jr_0af_4ae0

    jr nz, @-$1f

    or b
    ld e, a
    or b
    rst $18
    or b

jr_0af_4af8:
    rst $38
    or b

jr_0af_4afa:
    ld a, a
    or b
    ld e, a
    or b
    rst $18
    or b
    rst $18
    or b
    rst $38
    or b
    ld a, a
    or b
    ld e, a
    or b
    rst $18
    or b
    rst $18
    or b
    ld a, a
    or b
    rst $38
    or b
    rst $18
    or b
    ld e, a
    or b
    rst $18
    or b
    rst $38
    jr nc, jr_0af_4af8

    jr nc, jr_0af_4afa

    jr nc, @+$01

    or b
    rst $18
    or b
    ld a, a
    or b
    rst $18
    or b
    rst $38
    or b
    rst $18
    or b
    ld e, a
    or b
    ld a, a
    or b
    rst $38
    or b
    ld e, a
    or b
    ld a, a
    or b
    rst $38
    or b
    rst $18
    or b
    rst $38
    or b
    rst $38
    or b
    rst $38
    or b
    rst $38
    or b
    rst $38
    add b
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
    ld a, [hl]
    ld [hl], b
    ld h, $26
    ld c, $0e
    ret nz

    ccf
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
    ei
    rlca
    rst $38
    rlca
    ei
    rlca
    ei
    rlca
    cp $03
    ld sp, hl
    rlca
    ldh a, [rIF]
    cp $01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ret nz

    ccf
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
    ldh [$c0], a
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
    rrca
    ldh a, [$3e]
    pop bc
    ld a, $c1
    ld a, a
    add b
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [rIE], a
    add b
    rst $38
    ret z

    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    adc h
    rst $38
    nop
    rst $38
    add b
    rst $38
    db $e3
    rst $38
    ccf
    rst $38
    ld b, $ff
    nop
    rst $38
    ret nz

    ccf
    db $fd
    ld [bc], a
    ld sp, hl
    ld b, $f7
    ld [$10ef], sp
    add a
    ld a, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $01
    db $fc
    inc bc
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
    rst $38
    nop
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
    rst $30
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld [hl], b
    rst $38
    ld h, b
    rst $38
    ld h, b

jr_0af_4c4c:
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
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
    nop
    dec a
    jp nz, $8f70

    ret nz

    ccf
    rst $00
    jr c, jr_0af_4c4c

    inc e
    ld b, c
    cp [hl]
    nop
    rst $38
    ld [bc], a
    rst $38
    rlca
    rst $38
    ld c, $ff
    sbc a
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rra
    rst $38
    ld bc, $80ff
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ld hl, sp+$07
    db $fc
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
    ret nz

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
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
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
    rst $38
    ccf
    ccf
    ret nz

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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, c
    rst $38
    ld a, b
    rst $38
    ld [hl], b
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, jr_0af_4d16

    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    ld a, a
    ld e, a
    and b
    rrca
    ldh a, [rTAC]
    ld hl, sp-$79
    ld a, b
    and c
    ld a, [hl]
    db $10
    rst $38
    inc c
    rst $38
    ld b, $ff
    and e
    rst $38
    sbc e
    rst $38

jr_0af_4d16:
    cp a
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
    cp $ff
    rst $38
    rst $38
    ld e, $ff
    inc bc
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
    ldh a, [rIE]
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
    nop
    rst $38
    ld bc, $01ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    add hl, de
    rst $38
    add hl, de
    ld a, a
    add hl, de
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ret nz

    ccf
    ldh a, [rIF]
    ret nz

    ccf
    add b
    ld a, a
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    add c
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    push bc
    rst $38
    call nz, $87ff
    rst $38
    inc bc
    rst $38
    ld b, c
    rst $38
    jp hl


    rst $38
    pop af
    rst $38
    rra
    rst $38
    ld bc, $00ff
    rst $38
    rst $38
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
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

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

    rst $38
    ldh [rIE], a
    rst $38
    nop
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
    ccf
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    ld a, [hl]
    rst $38
    cp [hl]
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $30
    ld hl, sp-$11
    ldh a, [$ef]
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$9f]
    ldh [$9f], a
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

    rra
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
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$c7]
    jr c, jr_0af_4f56

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
    rst $00
    ld hl, sp-$79
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
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, $ff

jr_0af_4f56:
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld b, $ff
    ld b, $ff
    rlca
    rst $38
    rlca
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
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
    ld a, a
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
    ld a, a
    adc a
    ld a, a
    adc a
    ld a, a
    adc a
    ccf
    rst $08
    ccf
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    dec b
    rst $38
    add b
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
    add b
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $07
    ld [$0a09], sp
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    dec b
    dec b
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1212
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_0af_5012

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    ld [bc], a
    ld [de], a
    ld [de], a
    jr nz, jr_0af_5025

    ld [hl+], a
    dec b
    dec b
    dec b
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0af_5011

    ld [bc], a
    ld [de], a

jr_0af_5011:
    ld [de], a

jr_0af_5012:
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    dec b
    ld l, $2f
    jr nc, jr_0af_504d

    ld [de], a
    ld [hl-], a
    ld [bc], a
    ld [bc], a
    ld [de], a
    ld [de], a
    inc sp
    inc [hl]
    dec [hl]

jr_0af_5025:
    ld [bc], a
    ld [bc], a
    ld [hl], $37
    jr c, jr_0af_5064

    ld a, [hl-]
    dec sp
    inc a
    ld [bc], a
    ld [bc], a
    dec a
    ld [de], a
    ld [de], a
    ld a, $3f
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld [bc], a
    ld [bc], a
    ld b, [hl]
    ld b, a
    ld [de], a
    ld c, b
    ld c, c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]

jr_0af_504d:
    ld c, a
    ld [bc], a
    ld [bc], a
    dec b
    ld d, b
    ld [de], a
    ld d, c
    ld d, d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld d, e
    dec b
    ld d, h
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld d, l
    ld [de], a
    ld d, [hl]

jr_0af_5064:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld d, a
    dec b
    ld e, b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld e, c
    dec b
    ld e, d
    ld e, e
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld e, h
    ld e, l
    dec b
    ld e, [hl]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, e
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld l, c
    ld l, d
    add hl, hl
    ld l, e
    dec b
    dec b
    dec b
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, e
    ld a, h
    ld [de], a
    ld a, l
    dec b
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    add h
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add l
    add [hl]
    add a
    adc b
    dec b
    adc c
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    adc a
    ld [de], a
    sub b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    sub c
    sub d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [de], a
    ld [de], a
    sub e
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    sub h
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [de], a
    sub l
    sub [hl]
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    sub a
    sbc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [de], a
    sbc c
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    sbc d
    sbc e
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld b, c
    ld bc, $0101
    ld bc, $0101
    ld bc, $0303
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0303
    inc bc
    ld bc, $0101
    ld bc, $0000
    ld bc, $0101
    ld bc, $0101
    ld bc, $0303
    rlca
    ld bc, $0101
    ld bc, $0000
    ld bc, $0101
    ld bc, $0101
    ld bc, $0703
    rlca
    nop
    ld bc, $0101
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0707
    inc bc
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0101
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $4101
    ld bc, $0307
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0141
    ld bc, $0101
    ld bc, $0707
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rlca
    nop
    nop
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    rlca
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $4101
    rlca
    rlca
    ld bc, $0303
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    ld bc, $0101
    ld bc, $0000
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0303
    ld bc, $0101
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
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld bc, $80ff
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
    nop
    rst $38
    ld bc, $07fe
    ld sp, hl
    rrca
    rst $30
    rra
    rst $28
    rra
    rst $28
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
    ld e, $ff
    ld e, $ff
    ld e, $ff
    ld e, $ff
    ld e, $ff
    ld c, $ff
    ld c, $ff
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
    rst $30
    rlca
    rst $30
    rlca
    rst $20
    rlca
    rst $20
    rlca
    call nz, $c007
    rlca
    add b
    rrca
    add b
    rrca
    add b
    rrca
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld b, e
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    nop
    add c
    ld a, [hl]
    cp $41
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    nop
    add b
    ld a, a
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
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
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
    rst $38
    ld hl, sp-$01
    rst $30
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$f8], a
    ret nz

    ldh [$80], a
    ret nz

    add b
    ret nz

    nop
    add b
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
    ld a, a
    ld a, a
    rst $30
    rst $30
    ld l, [hl]
    xor $57
    rst $10
    ld a, a
    rst $38
    ld b, e
    rst $38
    ld bc, $7fff
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
    cp [hl]
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
    ld a, a
    add b
    add b
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
    add d
    jp $c382


    add d
    jp $c382


    add d
    jp $ffbe


    cp d
    ei
    and d
    db $e3
    add d
    jp $f7b6


    cp [hl]
    cp [hl]
    cp [hl]
    and [hl]
    sub [hl]
    cp [hl]
    cp [hl]
    cp [hl]
    add [hl]
    add [hl]
    add [hl]
    add [hl]
    cp [hl]
    cp [hl]
    cp [hl]
    cp [hl]
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
    rst $38
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
    rst $38
    rst $38
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
    nop
    ld a, a
    add b
    add b
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rlca
    ld hl, sp-$08
    rlca
    rst $38
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
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
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
    nop
    rst $38
    rra
    ldh [rIE], a
    rra
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    rlca
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
    ld [$080c], sp
    inc c
    ld [$28fb], sp
    db $db
    dec sp
    ei
    ei
    ei
    adc d
    ei
    ld [$1bfb], sp
    ei
    ei
    ld a, [$dba9]
    ld e, e
    ei
    ld hl, sp-$08
    jr jr_0af_5580

    dec de
    dec de
    ei
    ei
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
    ld hl, sp-$01
    nop
    rst $38
    nop

jr_0af_5580:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    nop
    ldh [$e0], a
    ccf
    rst $18
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    nop
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
    ld a, a
    add b
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
    nop
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
    dec hl
    push hl
    ld l, a
    and c
    cpl
    pop hl
    dec l
    db $e3
    ld hl, $efef
    rst $28
    cpl
    rst $28
    cpl
    rst $28
    ld l, a
    rst $28
    db $eb
    rst $28
    jp hl


    ld l, a
    inc hl
    inc sp
    rst $28
    rst $38
    ld h, c
    rst $38
    ld l, a
    rst $38
    rst $28
    rst $38
    rst $28
    cp $ff
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
    inc bc
    rst $38
    nop
    rst $38
    nop
    rlca
    nop
    ld hl, sp-$08
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    add b
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
    ld a, a
    add b
    rra
    ldh [rTAC], a
    ld hl, sp+$01
    cp $c0
    ccf
    ldh [$df], a
    ldh [rIE], a
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
    ld a, a
    rlca
    ld [hl], a
    inc bc
    ld a, e
    inc sp
    ld c, a
    add hl, sp
    ld b, a
    ccf
    ld b, c
    ld a, a
    ld bc, $0b75
    ld bc, $6b7f
    ld a, a
    ld d, l
    ld a, a
    ld l, e
    ld a, a
    ld a, a
    rst $38
    rrca
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    db $fd
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ret nz

    rst $38
    ret nz

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
    nop
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
    rlca
    rst $38
    nop
    rst $38
    nop
    ld bc, $fe00
    cp $ff
    ld bc, $00ff
    rst $38
    nop
    rlca
    nop
    ld hl, sp-$08
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
    ccf
    ret nz

    ld bc, $00fe
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ldh [$df], a
    ldh [$df], a
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$e0]
    ldh a, [$e0]
    ldh a, [$e0]
    rst $28
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$f7]
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$01
    add b
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
    rst $38
    ldh [rIE], a
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
    rlca
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr c, jr_0af_5784

    ld [$f8ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_0af_5784:
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
    ldh [rP1], a
    nop
    nop
    nop
    ld a, a
    ld a, a
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
    ret nz

    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $00ff
    ld a, a
    ld c, $83
    add d
    rst $38
    ld a, [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld hl, sp+$07
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    ccf
    ccf
    rst $38
    rst $38
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
    ld bc, $00ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    cp $01
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
    ld bc, $00ff
    rst $38
    nop
    inc a
    ei
    ld a, b
    rst $30
    ldh a, [$ef]
    pop hl
    sbc $c4
    cp b
    ld [$10f0], sp
    ldh [rNR41], a
    ret nz

    inc e
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rra
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
    ldh [$1f], a

jr_0af_58a2:
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
    nop
    ld a, $20
    ld a, a
    cpl
    ld [hl], b
    ld e, $20
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
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    nop
    ldh [rP1], a
    nop
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
    nop
    rst $38
    nop
    jr nz, jr_0af_58a2

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
    nop
    nop
    nop
    nop
    pop af
    nop
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
    rst $38
    rst $38
    rst $38
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
    ld bc, $01ff
    rst $38
    ld bc, $02ff
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld b, $07
    rlca
    ld b, $0f
    rrca
    rrca
    rrca
    ccf
    ccf
    nop
    ld a, a
    ld [hl], $c9
    rst $38
    rst $38
    add b
    rst $38
    jp z, $c4f5

    ei
    ld b, [hl]
    ld sp, hl
    ld b, b
    ld b, b
    ret nz

    ret nz

    ldh [$e0], a
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
    ld a, b
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc b
    inc bc
    jr jr_0af_5965

    jr nz, jr_0af_597f

    ret nz

    ccf
    nop
    rst $38
    nop

jr_0af_5965:
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

jr_0af_597f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    rst $28
    rst $28
    db $ec
    rst $28
    add sp, -$11
    adc b
    rst $28
    adc b
    rst $28
    adc b
    rst $28
    adc b
    rst $28
    adc b
    rst $28
    adc b
    rst $28
    adc b
    rst $28
    adc b
    rst $28
    add h
    rst $20
    add d
    di
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
    add b
    add b
    add b
    add c
    ret nz

    ret nz

    pop bc
    pop bc
    ldh [$e0], a
    or b
    ret nc

    db $10
    ldh [rNR10], a
    rst $28
    ccf
    ret nz

    ld de, $18fe
    rst $38
    inc c
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    add a
    ld a, a
    adc a
    ld a, a
    rst $08
    cp a
    rrca
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
    ld a, a
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
    rst $38
    rst $38
    rst $38
    ld bc, $ff00
    add b
    ld a, a
    ld b, b
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
    inc bc
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
    db $fc
    rst $38
    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    ccf
    jp $df3f


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
    ret nz

    nop
    nop
    rra
    ldh [$80], a
    rst $38
    rst $38
    rst $38
    db $e3
    db $e3
    ld [$0808], sp
    ld [$fc3c], sp
    ldh [$3f], a
    rst $38
    nop
    ccf
    rst $00
    rra
    ldh [$cc], a
    di
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    xor a
    rst $30
    add a
    rst $38
    sub a
    rst $38
    sub a
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $30
    rst $38
    rst $30
    rst $38
    db $f4
    rst $38
    or $ff
    rst $30
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
    rst $38
    rst $38
    rst $38
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
    ldh [$1f], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    nop
    nop
    add b
    ld [hl], b
    nop
    ldh [$c0], a
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
    ldh [$f0], a
    nop
    ldh a, [$f0]
    db $10
    ldh a, [rNR10]
    ldh a, [$30]
    ldh a, [$e0]
    ldh [$e0], a
    ldh [$c0], a
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
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld h, b
    ld a, a
    nop
    rrca
    nop
    ld bc, $c0c0
    ldh a, [$f0]
    cp $fe
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
    nop
    ccf
    nop
    rlca
    nop
    nop
    ret nz

    ret nz

    ld hl, sp+$38
    rst $38
    nop
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
    rra
    nop
    ld bc, $0000
    ldh [rP1], a
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
    ccf
    nop
    rlca
    nop
    nop
    nop
    nop
    ldh [rP1], a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    inc bc
    nop
    nop
    add b
    nop
    ldh a, [rP1]
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
    nop
    nop
    ld bc, $0302
    inc bc
    inc bc
    inc b
    dec b
    ld b, $06
    rlca
    ld [$0303], sp
    inc bc
    nop
    nop
    add hl, bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld a, [bc]
    dec bc
    ld b, $0c
    dec c
    inc bc
    inc bc
    inc bc
    nop
    nop
    ld c, $03
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rrca
    ld b, $10
    ld de, $0303
    inc bc
    nop
    nop
    ld [de], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc de
    ld b, $10
    inc d
    inc bc
    inc bc
    inc bc
    nop
    nop
    dec d
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld d, $06
    rla
    jr jr_0af_5c61

    inc bc
    inc bc
    nop

jr_0af_5c61:
    nop
    nop
    add hl, de
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld a, [de]
    ld b, $1b
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    inc e
    inc bc
    inc bc
    inc bc
    inc bc
    dec e
    ld b, $06
    ld e, $03
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    rra
    jr nz, jr_0af_5ca7

    ld [hl+], a
    inc hl
    inc h
    ld b, $06
    dec h
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    ld h, $06
    ld b, $06
    ld b, $06
    ld b, $06
    daa
    jr z, jr_0af_5ca1

    inc bc
    inc bc
    nop

jr_0af_5ca1:
    nop
    nop
    add hl, hl
    ld a, [hl+]
    ld b, $06

jr_0af_5ca7:
    ld b, $06
    ld b, $2b
    inc l
    dec l
    inc bc
    inc bc
    inc bc
    nop
    nop
    ld l, $2f
    jr nc, jr_0af_5ce7

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0af_5cc1

    inc bc
    inc bc
    nop

jr_0af_5cc1:
    nop
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $33
    ccf
    ld b, b
    ld b, c
    ld b, d
    inc bc
    inc bc
    inc bc
    nop
    add hl, sp
    ld b, e
    ld b, $06
    ld b, $44
    ld b, l
    ld b, $06
    ld b, $46
    ld b, a
    inc bc
    inc bc
    inc bc
    add hl, sp
    ld b, e
    ld b, $48
    ld c, c
    ld c, d
    ld c, e

jr_0af_5ce7:
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld b, $50
    inc bc
    inc bc
    inc bc
    ld b, e
    ld b, $51
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld d, l
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    inc bc
    inc bc
    ld b, $06
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld b, $60
    ld h, c
    ld b, $62
    ld h, e
    ld h, h
    ld h, l
    add hl, de
    inc bc
    ld b, $66
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld b, $06
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    inc bc
    ld b, $72
    ld [hl], e
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], l
    db $76
    db $76
    ld [hl], a
    ld a, b
    ld a, b
    ld a, b
    ld a, b
    ld a, c
    inc bc
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld a, d
    ld a, e
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld a, h
    ld a, l
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    ld bc, $0101
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    ld bc, $0101
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    ld bc, $0101
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    ld bc, $0101
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    ld bc, $0101
    ld bc, $0000
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    ld bc, $0101
    ld bc, $0000
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    ld bc, $0101
    ld bc, $0000
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    ld bc, $0101
    ld bc, $0000
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    ld bc, $0101
    ld bc, $0000
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0000
    ld bc, $0101
    ld bc, $0101
    ld hl, $0101
    inc bc
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
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
    ld bc, $0321
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
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
    rrca
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
    ldh a, [rIF]
    ldh a, [$1f]
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
    ldh [$1f], a
    ldh [rIF], a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
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
    ld a, a
    sbc a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
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
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
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
    nop
    rst $38
    nop
    add b
    nop
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
    cp $01
    ld hl, sp+$07
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
    di
    rrca
    ld hl, sp+$07
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
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
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
    nop
    cp $00
    nop
    nop
    nop
    rra
    rra
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
    ldh a, [rIF]
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    ld bc, $00ff
    nop
    nop
    nop
    ccf
    ccf
    rst $38
    rst $38
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
    ld a, [hl]
    cp $3e
    cp $1d
    cp $0c
    cp $04
    cp $06
    cp $03
    cp $03
    rst $38
    ld bc, $00ff
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
    ld hl, sp-$08
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $18
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $20
    rst $38
    rst $00
    rlca
    db $10
    ld [hl], a
    sub a
    rst $30
    rrca
    rla
    ld b, a
    rst $18
    ld a, a
    ld c, a
    rst $18
    ld l, a
    adc a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    nop
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
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    add sp, -$01
    ret nc

    rst $38
    or b
    rst $38
    ld [hl], b
    rst $38
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
    sbc a
    sbc a
    add a
    add a
    ret nz

    ret nz

    ldh a, [$f0]
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    rst $38
    ld hl, sp-$01
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
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ei
    ld b, $fc
    inc b
    ld hl, sp+$06
    ld hl, sp+$04
    ld hl, sp+$07
    ld hl, sp+$07
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
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    jr nc, jr_0af_633d

    inc c
    rrca
    nop
    ld bc, $c0c0
    ldh a, [$f0]
    db $fc
    db $fc
    rst $38
    rrca
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
    ld bc, $02fe
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a

jr_0af_633d:
    db $fd
    ld bc, $f1fe
    ld a, $f1
    ld a, $f1
    cp $f1
    ld a, $f1
    ld a, $f1
    ld a, $f1
    ld a, $f1
    ld a, $f1
    ld a, $f1
    ld a, [hl]
    pop af
    cp $01
    cp $07
    rst $38
    rlca
    rst $38
    dec b
    cp $05
    cp $05
    cp $05
    cp $05
    cp $07
    rst $38
    rlca
    rst $38
    dec b
    cp $05
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
    cp $00
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
    inc bc
    nop
    nop
    ldh [$e0], a
    ldh a, [rNR10]
    db $fc
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
    rlca
    ld hl, sp+$1f
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    sbc a
    ld h, b
    rrca

jr_0af_63b9:
    di
    rlca

jr_0af_63bb:
    rst $38
    dec e

jr_0af_63bd:
    cp $30

jr_0af_63bf:
    rst $38
    ld b, b

jr_0af_63c1:
    cp a
    ld b, c

jr_0af_63c3:
    cp a
    ld b, a

jr_0af_63c5:
    cp a
    ld b, l

jr_0af_63c7:
    cp a
    ld b, l

jr_0af_63c9:
    cp a
    ld b, l

jr_0af_63cb:
    cp a
    ld b, l

jr_0af_63cd:
    cp a
    ld b, l

jr_0af_63cf:
    cp a
    ld b, l

jr_0af_63d1:
    cp a
    ld b, l
    cp a
    ld b, [hl]
    cp a
    ld b, b
    cp a
    jr nz, jr_0af_63b9

    jr nz, jr_0af_63bb

    jr nz, jr_0af_63bd

    jr nz, jr_0af_63bf

    jr nz, jr_0af_63c1

    jr nz, jr_0af_63c3

    jr nz, jr_0af_63c5

    jr nz, jr_0af_63c7

    jr nz, jr_0af_63c9

    jr nz, jr_0af_63cb

    jr nz, jr_0af_63cd

    jr nz, jr_0af_63cf

    jr nz, jr_0af_63d1

    nop

jr_0af_63f3:
    rst $38
    nop

jr_0af_63f5:
    rst $38
    ld bc, $80ff

jr_0af_63f9:
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38

Call_0af_6400:
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add e
    rst $38
    add [hl]
    rst $38
    adc h
    rst $38
    sbc b
    rst $38
    jr nc, @+$01

    jr nz, @-$1f

    jr nz, jr_0af_63f3

    jr nz, jr_0af_63f5

    jr nz, @-$1f

    jr nz, jr_0af_63f9

    sub b
    ld l, a
    sub b
    ld l, a
    sub b
    ld l, a
    sub b
    ld l, a
    sub b
    ld l, a
    sub b
    ld l, a
    sub b
    ld l, a
    sub b
    ld l, a
    sub e
    ld l, a
    sub b
    ld l, a
    sub b
    ld l, a
    sub b
    ld l, a
    sbc b
    ld h, a
    add a
    ld a, b
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
    ldh [rIE], a
    ld hl, sp+$7f
    cp $1f
    rst $38
    rlca
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    inc bc
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$3f]
    ret nz

    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    inc e
    rst $38
    jr c, @+$01

    ldh [rIE], a
    add b
    rst $38
    ld bc, $07fe
    ld a, [hl]
    sbc a
    db $76
    rst $38
    or [hl]
    rst $38
    or [hl]
    rst $38
    or [hl]
    rst $38
    or [hl]
    rst $38
    or [hl]
    rst $38
    or a
    rst $38
    or a
    cp $bf
    ld hl, sp-$39
    ld hl, sp+$07
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
    rra
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
    rra
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, h
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
    ldh a, [rIE]
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    inc e
    db $e3
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
    rst $38
    ldh a, [rIE]
    db $fc
    ld a, a
    rst $38
    rra
    rst $38
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, $f9
    ld c, $f1
    ld e, $e1
    ld a, [hl]
    add c
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $21
    cp $f1
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
    nop
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, b
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
    ld h, b
    cp a
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

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
    ld a, a
    ld [hl], b
    adc a
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
    rst $38
    ret nz

    rst $38
    ld hl, sp-$01
    cp $7f
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
    ld b, b
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

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

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
    ld [$08f8], sp
    ld hl, sp-$78
    ld hl, sp-$18
    ld hl, sp-$08
    ld hl, sp-$08
    ld a, b
    db $fc
    inc e
    rst $38
    nop
    nop
    rst $38
    nop
    ccf
    nop
    rrca
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    add b
    nop
    ldh [rP1], a
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
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ldh [rP1], a
    ld hl, sp+$00
    rst $38
    nop
    rst $38
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
    dec bc
    inc c
    nop
    nop
    nop
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_0af_66a9

    nop
    nop
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0af_66bb

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0af_66cb

    inc e
    inc e
    inc e
    inc e
    ld a, [hl+]
    dec hl
    inc l

jr_0af_66a9:
    dec l
    ld l, $2f
    jr nc, jr_0af_66df

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $1c
    scf
    jr c, jr_0af_66f0

    ld a, [hl-]
    dec sp
    inc a
    dec a

jr_0af_66bb:
    ld a, $3f
    ld b, b
    inc e
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, l
    ld b, l
    ld b, a
    ld c, b
    ld c, c
    ld c, d

jr_0af_66cb:
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
    inc e
    inc e
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h

jr_0af_66df:
    ld e, l
    ld e, [hl]
    ld e, a
    ld d, d
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

jr_0af_66f0:
    ld l, l
    ld l, [hl]
    ld d, d
    ld h, b
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
    ld d, d
    ld a, e
    ld a, h
    nop
    nop
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
    ld a, h
    nop
    nop
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
    nop
    nop
    nop
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    nop
    sbc [hl]
    sbc a
    and b
    and c
    ld d, d
    and d
    nop
    nop
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
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $1c
    inc e
    inc e
    inc e
    inc e
    rst $28
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    ld a, [$fcfb]
    db $fd
    cp $52
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
    ld d, d
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
    ld bc, $0103
    ld bc, $0101
    ld bc, $2121
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0303
    inc bc
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0303
    inc bc
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    nop
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    nop
    inc bc
    ld bc, $0101
    inc b
    inc b
    ld bc, $0000
    nop
    ld b, $06
    ld b, $07
    ld bc, $0303
    inc bc
    ld bc, $0101
    ld bc, $0000
    nop

Call_0af_6897:
    ld b, $06
    ld b, $06
    nop
    inc bc
    inc bc
    inc bc
    nop
    ld bc, $0401
    inc b
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc b
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $00
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
    ld b, $00
    nop
    ld bc, $0101
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
    ld b, $00
    nop
    nop
    nop
    ld bc, $080b
    ld [$0808], sp
    ld [$0808], sp
    ld [$0e08], sp
    ld c, $08
    ld [$ff00], sp
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ldh a, [$8f]
    ld h, b
    rst $38
    jr @+$01

    ld b, $ff
    ld bc, $00ff
    rst $38
    nop
    rst $38

jr_0af_6916:
    nop
    rst $38
    ld l, [hl]
    ld sp, $1833
    dec sp
    inc e
    rra
    inc c
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    pop hl
    nop
    rst $38
    nop
    jp c, Jump_000_0925

    ld b, $fd
    ld [bc], a
    ld a, [$f905]
    ld b, $84
    ld a, e
    inc c
    inc bc
    sbc b
    ld h, a
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
    ld bc, $0100

jr_0af_6949:
    nop
    ei
    db $f4
    ld c, b
    or b

jr_0af_694e:
    adc b
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$007d], sp
    rst $18
    jr nz, jr_0af_6949

    inc de
    ldh [$1f], a
    ld a, [bc]
    rst $30
    db $10
    rst $28
    ld [bc], a
    rst $38
    sub $ef
    adc $ff
    ld h, $df
    ld a, [bc]
    rst $38
    jr jr_0af_694e

    ld h, b
    add b
    add e
    nop
    ld e, $00
    ld h, e
    nop
    adc h
    inc bc
    ld hl, $081e
    ldh a, [rSCY]
    add c
    add hl, bc
    ld b, $25
    jr jr_0af_6916

    ld h, b
    ld b, [hl]
    add b
    ld d, $00
    dec b
    nop
    inc d
    inc bc
    ld c, b
    rlca
    ld b, b
    rra
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02fe
    ld hl, sp+$0f
    ldh a, [rTIMA]
    ldh [$5f], a
    add b
    ld a, [de]
    nop
    rrca
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    dec c
    ld [bc], a
    rra
    ld b, $3b
    inc b
    ld l, [hl]
    ld [de], a
    cp $0e
    cp [hl]
    ld a, [bc]
    ld a, [hl-]
    ld a, [bc]
    cp a
    ld a, [de]
    dec sp
    ld a, [de]
    ei
    rra
    rst $38

jr_0af_69c1:
    nop
    rst $38

jr_0af_69c3:
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

jr_0af_69d2:
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
    add b
    rst $38
    ld h, b
    rst $38
    jr @+$01

    ld b, $ff
    ld bc, $00ff

jr_0af_69eb:
    rst $38
    pop hl

jr_0af_69ed:
    rra
    ei

jr_0af_69ef:
    rlca
    ld a, $01
    rra
    add b
    rlca
    ret nz

    inc hl
    ret nz

    ld sp, $39c0
    ret nz

    add hl, sp
    ret nz

    jr c, jr_0af_69c1

    jr c, jr_0af_69c3

    jr @-$1d

    jr @-$1d

jr_0af_6a06:
    jr @-$1d

    jr jr_0af_69eb

    jr jr_0af_69ed

    jr jr_0af_69ef

    ld e, c
    jr nz, jr_0af_6a69

    jr nz, jr_0af_6a6b

    jr nz, jr_0af_6a6d

    jr nz, jr_0af_6a4f

    nop
    ld a, c
    nop
    ld e, c
    ld hl, $2019
    jr c, jr_0af_6a20

jr_0af_6a20:
    jr jr_0af_6a22

jr_0af_6a22:
    jr c, jr_0af_6a24

jr_0af_6a24:
    jr c, jr_0af_6a26

jr_0af_6a26:
    ld a, c
    nop

jr_0af_6a28:
    ld hl, sp+$01
    ld hl, sp+$01
    ret c

    ld hl, $21d8
    ld [hl], b
    and c
    ld sp, $31e1
    pop hl
    jr nz, jr_0af_6a28

    ld h, b
    ldh a, [rSB]
    ldh a, [rP1]
    db $10
    ldh [rNR11], a
    pop hl
    ld [de], a
    db $e3
    db $10
    add d
    ld [hl], c
    ld bc, $47f2
    jr nc, jr_0af_69d2

    ld [hl], b
    ld b, a
    sub b
    dec b

jr_0af_6a4f:
    jr nc, jr_0af_6a06

    ld sp, $3145
    add l
    ld de, $3107
    dec b
    sub c
    dec b
    pop bc
    dec b
    pop hl
    inc bc
    pop af
    dec bc
    pop af
    add hl, bc
    pop hl
    add hl, hl
    add b
    ld e, b
    nop
    xor b

jr_0af_6a69:
    nop
    reti


jr_0af_6a6b:
    nop
    db $d3

jr_0af_6a6d:
    nop
    ld [hl], a
    nop
    db $e3
    ld [$10b3], sp
    ld a, [c]
    add hl, de
    ld a, [c]
    dec e
    rst $30
    sbc b
    db $76
    sub c
    or a
    ld de, $11b7
    or a
    sub c
    dec [hl]
    sub e
    or l
    inc de
    pop af
    rla
    or c
    rra
    or c
    sub a
    ld sp, hl
    rla
    dec a
    sub e
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_0af_6ac2:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh [rIE], a
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    sbc a
    ld a, a
    rst $08
    dec sp
    rst $38
    add hl, bc
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [rSB], a
    cp $f0
    rrca
    cp $01
    ldh a, [rIF]
    ldh a, [rIF]
    cp $01
    inc b
    ei
    ret nz

    ccf
    nop
    nop
    ld bc, $0000
    nop
    inc bc
    nop
    rst $38
    nop
    db $ec
    ldh a, [$f0]
    ldh [rLCDC], a
    ldh [$e6], a
    ld b, b
    rst $28
    ld b, b
    push af
    ld c, d
    ld h, e
    db $dd
    ld h, c
    rst $18
    add sp, -$01
    adc [hl]
    ei
    rst $28
    di
    db $fc
    ld hl, sp-$08
    ret nz

    rst $00
    nop
    jr c, jr_0af_6b18

jr_0af_6b18:
    ldh [$03], a
    add e
    inc e
    ld c, $71
    add hl, sp
    add $e7
    jr jr_0af_6ac2

    ld h, b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    ld a, a
    cp $3e
    db $fc
    sbc h
    ldh a, [$c0]
    ld hl, sp-$20
    ld hl, sp-$10
    db $fc
    ldh a, [$f6]
    ld hl, sp-$05
    db $e4
    ei
    call nz, $80ff
    push af
    ld [de], a
    or l
    ld d, d
    push af
    ld b, [hl]
    or l
    ld b, [hl]
    push hl
    ld b, [hl]
    xor c
    ld b, [hl]
    add l
    ld c, d
    and c
    ld e, $55
    ld a, [hl-]
    or h
    ld a, e
    ld [hl], l
    ei
    push af
    ld a, [$fef1]
    db $f4
    db $fd
    pop af
    cp $f1
    db $fc
    pop af
    db $fc
    push hl
    ld sp, hl
    db $e4
    ld sp, hl
    adc $f3
    adc h
    rst $30
    ld [$83f7], sp
    ld a, a
    pop bc
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
    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ld h, a
    rra
    inc sp
    rrca
    sbc c
    rlca
    push bc
    ld a, [bc]
    and $09
    ldh [rIF], a
    db $e4
    dec bc
    xor $01
    and $09
    push hl
    ld a, [bc]
    ldh [rIF], a
    pop hl
    ld c, $e0
    rrca
    rst $28
    nop
    push hl
    ld a, [bc]
    ld h, l
    ld c, $26
    inc c
    inc h
    ld [$0d22], sp
    ld h, [hl]
    add hl, bc
    ld h, b
    rrca
    ldh [rIF], a
    db $e4
    rrca
    db $e4
    rrca
    and h
    ld c, [hl]
    ldh [rLCDC], a
    ldh [$c2], a
    jr nz, jr_0af_6be1

    rst $20
    rrca
    ld hl, $040f
    rst $28
    ld h, b
    adc a
    ld [hl-], a
    rst $08
    ld b, c
    cp a
    add b
    ld a, a
    adc a

jr_0af_6be1:
    ld a, e
    adc $3d
    rst $28
    ld e, $cc
    rst $38
    ldh a, [$ef]
    and $e7
    pop bc
    jp Jump_000_0300


    inc bc
    ld [bc], a
    inc b
    rlca
    rlca
    inc c
    inc bc
    inc e
    jr nz, jr_0af_6c39

    ld bc, $a27f
    rst $38
    add a
    rst $38
    xor d
    rst $38
    xor a
    rst $38
    xor a
    rst $38
    xor a
    rst $38
    rst $28
    cp a
    cp $af
    ld l, $ff
    ld l, h
    rst $38
    ld a, l
    rst $28
    ld a, l
    rst $28
    ld a, $ff
    inc a
    cp a
    jr c, jr_0af_6c99

    ld hl, sp+$7f
    or b
    rst $38
    ld d, b
    cp a
    ld a, b
    ccf
    ld b, h
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a

jr_0af_6c39:
    rst $38
    ccf
    rst $38
    inc c
    di
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

jr_0af_6c66:
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
    ld b, a
    ccf
    ld h, d
    rra
    ld d, b
    inc bc
    ld d, b
    add c
    nop

jr_0af_6c99:
    add b
    ld d, b
    add b
    ld d, b
    add b
    nop
    add b
    ld [hl], b
    add b
    ld [de], a
    ret nz

    jr nc, jr_0af_6c66

    xor $00
    or b
    rrca
    ld bc, $110a
    inc c
    and l
    ld [$8835], sp
    ld [hl], c
    adc h
    ld b, c
    xor h
    ld de, $01ec
    db $ec
    inc d
    dec hl
    add h
    ld l, e
    nop

Call_0af_6cbf:
    ld l, a
    ret nz

    rst $08
    ld h, l
    jp c, $fd02

    ld h, b
    rst $38
    sub e
    rst $28
    ld l, d
    rst $38
    ld [hl], e
    rst $38
    ldh [rIE], a
    ld sp, hl
    add $78
    add a
    ld sp, hl
    ld b, $e0
    rra
    ld b, b
    cp a
    sub c
    rst $28
    ld d, b
    rst $28
    ld d, e
    xor $12
    db $ed
    ld bc, $13ff
    rst $38
    inc sp
    rst $18
    ccf
    rst $18
    xor a
    ld e, a
    cpl
    rst $18
    cpl
    rst $18
    xor [hl]
    rst $18
    ld l, $ff
    ld c, h
    rst $38
    call z, Call_0af_6cbf
    cp a
    add b
    ld a, a
    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    db $fc
    cp $00
    db $fc
    nop
    db $fc
    nop
    ld a, [$fc00]
    nop
    pop af
    add d
    ld a, [$c3b8]
    cp a
    ret nz

    cp l
    ret nz

    xor h
    ret nz

    cp b
    ret nz

    inc l
    ret nz

    ld hl, sp-$20
    db $fc
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
    rst $38
    rst $38
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
    ld a, [hl]
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    ld a, [hl]
    rst $38
    ld c, $bf
    ld [bc], a
    sub a
    nop
    ret


    nop
    ret z

    nop
    ret z

    nop
    ret z

    ld c, c
    ret z

    ld l, [hl]
    jp hl


    db $db
    nop
    ld a, [bc]
    add b
    ld a, [$d200]
    ld [$08f3], sp
    db $d3
    ld [$00fb], sp
    ld a, [c]
    add hl, bc
    rst $18
    add hl, hl
    rst $18
    dec l
    rst $38
    dec l
    rst $38
    dec l
    ld a, a
    cp h
    cp l
    ld a, a
    or l
    ld a, a
    add d
    db $fd
    xor d
    db $dd
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    ld a, [$d9fd]
    rst $38
    ret c

    rst $38
    ret


    rst $38
    call $c8ff
    rst $38
    ret


    rst $38
    ld l, [hl]
    rst $38
    ld l, h
    rst $38
    adc b
    rst $38
    and [hl]
    rst $38
    and e
    rst $38
    ldh a, [rIE]
    ret nc

    rst $38
    ret z

    rst $38
    rst $00
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
    ld [bc], a
    db $fd
    ld [bc], a
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$01
    ld hl, sp+$01
    ldh a, [rP1]
    cp $03
    db $fc
    dec b
    pop bc
    rrca
    adc [hl]
    ld [hl], a
    ld [hl], b
    adc [hl]
    add b
    rra
    jr nz, jr_0af_6e1e

    ret nz

    ld a, $00
    ld d, b
    add b
    ld a, b
    nop
    inc a
    nop
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rst $18
    ccf
    rst $28
    rra
    ld l, a
    rra
    jr z, jr_0af_6e1d

    ld l, b
    rra
    ld l, b
    rra
    ld l, b
    rra
    ret z

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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0af_6e1d:
    rst $38

jr_0af_6e1e:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh a, [$f0]
    ldh a, [rIE]
    ldh a, [rIE]
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
    rst $38
    nop
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
    ld h, l
    ld a, d
    db $76
    ld l, b
    ld l, d
    ld [hl], b
    ld h, b
    ld [hl], b
    ld h, [hl]
    ld [hl], c
    ld h, a
    ld [hl], b
    ld l, b
    ld [hl], a
    ld a, b
    ld h, a
    ld h, a
    ld [hl], b
    ld l, l
    ld [hl], b
    ld h, b
    ld [hl], b
    ld [hl], e
    ld h, b
    ld [hl], a
    ld h, b
    ld [hl], a
    ldh [$f6], a
    ldh [$e0], a
    ldh a, [$e5]
    ldh a, [$60]
    ldh a, [$e0]
    rst $30
    ld h, e
    rst $30
    ld h, b
    rst $30
    ld l, b
    rst $30
    ld h, c
    cp $7f
    rst $38
    ld a, a
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc b
    rst $38
    ld [$f0ff], sp
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    dec d
    ld [$c0ff], a
    ld a, a
    cp a
    ccf
    ret nz

    rst $28
    db $10
    dec de
    db $e4
    rra
    ldh [$37], a
    ret z

    cpl
    ret nz

    rst $18
    jr nz, jr_0af_6eec

    ret nz

    ld l, l
    nop
    dec [hl]
    ld c, b
    ei
    nop
    cp e
    nop
    ei
    ld bc, $06ff
    rst $38
    jr c, @+$01

    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
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
    ld a, a
    rst $38
    ld [hl], b
    rst $38
    dec [hl]
    ld a, [$fa35]
    ld a, d
    push af
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38

jr_0af_6eec:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    ld bc, $03fe
    db $fc
    inc bc
    db $fc
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
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, h
    and d
    ld hl, sp+$06
    nop
    ld [bc], a
    nop
    nop
    inc e
    ldh [rNR32], a
    ldh [$0c], a
    ld a, [c]
    nop
    cp $f8
    nop
    add d
    nop
    ld [bc], a
    nop
    xor b
    nop
    db $10
    xor b
    ld l, b
    nop
    cp b
    nop
    jr nz, jr_0af_6f5e

jr_0af_6f5e:
    call nc, Call_0af_6400
    nop
    ld h, h
    add b
    ld a, h
    add b
    ret nz

    nop
    nop
    db $fc
    xor l
    ld d, d
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $06ff
    rst $38
    jr @+$01

    ldh [rIE], a
    ld c, $f1
    inc de
    db $ec
    ld a, $c1
    ld a, d
    add l
    rst $28
    db $10
    rst $38
    nop
    rst $18
    jr nz, jr_0af_700a

    add b
    rst $38
    rst $38
    rst $38
    nop
    cp [hl]
    ld b, b
    db $fc
    nop
    db $fc
    nop
    cp $00
    cp [hl]
    nop
    cp a
    nop
    ld a, a
    nop
    ld a, a
    ld bc, $06ff
    rst $38
    jr @+$01

    ld h, b
    db $fd
    add b
    rst $38
    nop
    ei
    nop
    rst $38
    nop
    cp b
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
    rst $38
    ret nz

    ld hl, sp-$1f
    cp $f0
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld d, b
    xor a
    dec b
    ld a, [$5da2]
    ld d, l
    xor d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    add b
    ccf
    ret nz

    ld hl, sp-$01
    rst $38
    rst $38
    nop
    adc h
    nop
    add b
    nop
    add b
    nop
    nop
    rst $38
    nop
    ld a, e
    inc b

jr_0af_700a:
    cp e
    ld b, h
    and b
    ld e, a
    xor d
    nop
    ret c

    nop
    nop
    nop
    ccf
    nop
    ld d, c
    inc l
    ld e, c
    nop
    ld l, a
    nop
    jr jr_0af_701e

jr_0af_701e:
    rra
    nop
    ld c, d
    nop
    ld c, [hl]
    ld a, b
    ld c, a
    ld a, b
    ld l, [hl]
    ld c, b
    ld c, d
    ld a, l
    ld a, d
    call $ffff
    rst $38
    rst $38
    ld a, b
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
    add hl, de
    and $00
    rst $38
    ccf
    ret nz

    rst $38
    nop
    pop bc
    nop
    add b
    nop
    ld c, b
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld bc, $0272
    inc c
    inc c
    db $10
    db $10
    jr nz, jr_0af_7078

    cp $20
    rst $38
    ld b, b
    rst $38
    add b
    cp $00
    rst $38
    nop
    db $ed
    nop
    db $fc
    nop
    cp b
    nop
    ldh [rP1], a
    ret nz

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

jr_0af_7078:
    nop
    rst $38
    nop
    rst $38
    ld bc, $02ff
    rst $38
    nop
    rst $38
    nop
    nop
    db $fc
    nop
    rst $38
    nop
    ld a, [hl]
    add c
    inc a
    jp $fff0


    rrca
    rst $38
    ld de, $43ee
    cp h
    rrca
    ldh a, [$5f]
    and b
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
    ccf
    ccf
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
    nop
    rst $38
    rst $38
    rst $38
    nop
    jr z, jr_0af_70d1

jr_0af_70d1:
    jr z, jr_0af_70d3

jr_0af_70d3:
    jr z, jr_0af_70d5

jr_0af_70d5:
    nop
    and [hl]
    ld bc, $0401
    pop bc
    ld h, $40
    and a
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc bc
    nop
    add a
    nop
    rlca
    nop
    nop
    add b

jr_0af_70ed:
    nop
    ld b, b
    nop
    add b
    ld bc, HeaderSGBFlag
    ld b, [hl]
    ld bc, $0000
    add b
    ld b, [hl]
    add b
    ld l, a
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr jr_0af_70ed

    dec a
    jp nz, $c13e

    ld e, $e1
    sbc b
    ld h, a
    ld e, b
    and a
    ret z

    scf
    rst $28
    db $10
    ld l, e
    db $10
    db $10
    ld [$0800], sp
    add h
    ld [$0fff], sp
    cp $fe
    inc b
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld bc, $8100
    nop
    pop bc
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
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    inc bc
    inc bc
    inc e
    inc e
    ld h, b
    ld h, b
    add b
    add b
    nop
    nop
    add hl, de
    db $e4
    inc bc
    inc a
    nop
    nop
    ld bc, $07fe
    ld hl, sp+$0f
    ldh a, [rNR13]
    db $ec
    rst $38
    rst $38
    ld c, a
    or b
    xor a
    ld d, b
    rst $18

jr_0af_7165:
    jr nz, jr_0af_7165

    ld bc, $00ff
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $00fe
    rst $38
    nop
    ld [bc], a
    jr nz, jr_0af_71a4

    nop
    ld [bc], a

jr_0af_71a4:
    nop
    nop
    db $ed
    nop
    ld hl, $00c0
    db $e4
    nop
    db $fc
    nop
    nop
    nop
    nop
    ld bc, $0100
    ld hl, sp+$04
    ld hl, sp+$78
    add l
    nop
    ld bc, $6100
    nop
    ld hl, $2580
    add b
    dec h
    add b
    ld hl, $4100
    nop
    db $fd
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    ld [bc], a
    db $fd
    add d
    ld a, l
    add d
    ld a, l
    sub [hl]
    ld l, c
    ld [bc], a
    db $fd
    inc bc
    db $fc
    ld bc, $fdfc
    nop
    db $fd
    nop
    ld a, l
    nop
    dec e
    nop
    ccf
    inc bc

jr_0af_71ec:
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
    add b
    nop

jr_0af_7200:
    add a
    nop
    sbc e
    nop
    ccf
    ld b, b
    ccf
    ld b, b
    cp a
    ld b, b
    rst $18
    jr nz, jr_0af_71ec

    jr nz, jr_0af_726e

    jr nz, jr_0af_7200

    db $10
    rst $28
    rra
    rst $38
    ldh a, [$f7]
    ld [$0877], sp
    scf
    ld [$041b], sp
    inc bc
    inc b
    ld e, d
    nop
    rst $38
    nop
    nop
    nop
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    or $df
    cpl
    push af
    ld a, [bc]
    rst $38
    nop
    rst $38
    nop
    cp l
    ld b, d
    rst $38
    ld hl, sp-$01
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
    ret nz

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
    rrca
    rrca
    nop
    nop
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_0af_726e:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $01ff
    rst $38
    call Call_0af_4513
    sub e
    ld a, l
    add e
    ld bc, $fe00
    ld bc, $0900
    pop af
    inc b
    inc b
    nop
    inc b
    nop
    inc b
    nop
    nop
    inc b
    inc b
    nop
    rrca
    ld [$3dca], sp
    rst $38
    ld [$0afd], sp
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    ccf
    ret nz

    rst $38
    ret nz

    cp a
    ld a, h
    ei
    rlca
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
    db $fd
    nop
    ld hl, sp+$00
    ldh a, [rP1]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, [hl]
    nop
    rst $38
    ld a, a
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
    rst $18
    ccf
    db $fd
    rra
    ld l, h
    rra
    inc c
    rra
    db $ec
    rra
    db $ec
    rra
    db $ec
    rra
    rrca
    rst $38
    cp $ff
    db $ec
    rra
    xor $1f
    xor $1f
    xor [hl]
    ld e, a
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    add b
    rst $38
    cp $ff
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ld l, [hl]
    ld bc, $2944
    ld d, h
    add hl, hl
    nop
    nop
    ld d, e
    inc l
    ld h, b
    nop
    ld a, [c]
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    and e
    ld e, h
    rst $38
    nop
    and b
    ld e, a
    ld a, a
    rst $38
    rst $38
    rst $38
    ld b, b
    cp a
    ld b, b
    cp a
    rst $38
    nop
    rst $38
    nop
    sbc a
    ld h, b
    and a
    cp $b3
    ld c, l
    cp h
    ld b, e
    sbc a
    ld h, c
    xor a
    ld d, c
    or a
    ld c, c
    ld bc, $0047
    ld b, c
    ld bc, $e141
    pop hl
    rra
    rra
    rrca
    rrca
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
    pop bc
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
    ld a, a
    rst $38
    rst $38
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
    sbc a
    rst $38
    cp a
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $08
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
    rst $08
    rla
    rla
    rla
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
    cp $ff
    rst $38
    rst $38
    ld a, a
    adc a
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    ld a, [hl]
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
    add b
    ld a, b
    add b
    ld a, b
    add b
    nop
    db $fd
    add d
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$59
    ld hl, sp-$09
    rst $38
    add [hl]
    ld hl, sp-$80
    ld hl, sp-$80
    ld hl, sp-$79
    ld hl, sp-$7b
    ld hl, sp-$69
    db $fc
    and [hl]
    ld hl, sp-$7b
    ld hl, sp-$7e
    ld hl, sp-$7b
    ld hl, sp-$7b
    ld hl, sp-$80
    ld hl, sp-$0c
    ld hl, sp-$2e
    ld hl, sp-$2f
    ld hl, sp-$0e
    ld hl, sp-$3a
    ld hl, sp-$3c
    ld hl, sp-$79
    ld hl, sp-$40
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
    ld a, a
    ld a, a
    sbc a
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    ld l, a
    rst $38
    xor a
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    nop
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ret nz

    nop
    add b
    nop
    add b
    nop
    nop
    rst $38
    adc a
    ldh a, [$8f]
    rst $38
    ld hl, sp-$01
    rst $20
    ld hl, sp-$3a
    ld hl, sp-$39
    ld hl, sp-$1a
    ld hl, sp-$1c
    ld hl, sp-$1c
    ld hl, sp-$1a
    ld hl, sp-$0c
    ld hl, sp-$20
    ld hl, sp-$0c
    ld hl, sp-$10
    ld hl, sp-$10
    ld hl, sp-$07
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    ld e, a
    xor a
    rst $18
    ccf
    ld e, a
    and e
    ld d, c
    xor a
    ld e, e
    and a
    sbc $21
    ld d, d
    xor l
    sbc $21
    ld a, a
    add b
    ld c, e
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    call nc, $a8ff
    rst $38
    ld b, b
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr c, jr_0af_7560

    nop
    rst $28
    nop
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], b
    rla
    nop
    inc bc
    nop
    rlca
    nop
    and l
    nop
    add hl, hl
    nop
    ld d, d
    nop
    ld sp, $4b00
    nop
    ld d, d
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld [bc], a
    nop
    adc d
    nop
    sub h
    nop
    ld hl, $4d00
    nop
    inc b
    nop
    add h
    nop
    cp a
    ld b, b
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
    cp $fe
    db $fc

jr_0af_7560:
    db $fc
    db $fc
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    adc a
    rst $38
    and e
    rst $38
    cp c
    rst $38
    cp h
    rst $38
    cp [hl]
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    adc a
    rst $38
    and b
    ld hl, sp+$00
    ld c, [hl]
    nop
    ld b, a
    nop
    ld b, c
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    add b
    ld b, b
    ret nz

    nop
    db $fc
    db $fc
    ld b, $ff
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
    rrca
    rst $38
    db $eb
    dec e
    rst $28
    ld sp, hl
    ccf
    rst $38
    dec de
    rrca
    ccf
    dec bc
    dec de
    ld c, $3b
    ld c, $1b
    inc c
    dec a
    rrca
    inc [hl]
    rrca
    rlca
    ld e, $27
    ld e, $26
    rra
    inc sp
    rrca
    rlca
    dec sp
    rla
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $fd
    rst $18
    ei
    adc a
    ei
    adc a
    rst $38
    xor a
    rst $38
    xor a
    rst $38
    xor a
    rst $38
    xor a
    ld a, a
    xor e
    ld a, a
    xor e
    rst $38
    db $eb
    ld a, a
    srl a
    set 7, h
    rst $38
    di
    ld hl, sp-$05
    ldh a, [$38]
    rst $38
    inc a
    rst $38
    inc e
    rst $38
    db $fc
    rst $38
    inc a
    rst $38
    ld a, b
    rst $38
    ld hl, sp-$01
    jr nc, @+$11

    jr nc, @+$11

    db $10
    rrca
    jr nc, @+$11

    jr nc, @+$11

    jr nc, @+$11

    jr nc, jr_0af_7611

    jr nc, jr_0af_7613

    jr nc, @+$11

    jr nc, @+$11

    jr nc, jr_0af_7619

    jr nc, jr_0af_761b

    jr nc, jr_0af_761d

    jr nc, jr_0af_761f

    db $10

jr_0af_7611:
    rrca
    db $10

jr_0af_7613:
    rrca
    jr jr_0af_761d

    jr jr_0af_761f

    db $10

jr_0af_7619:
    rrca
    db $10

jr_0af_761b:
    rrca
    dec de

jr_0af_761d:
    rlca
    dec de

jr_0af_761f:
    rlca
    ld a, [de]
    rlca
    db $e3
    rra
    dec de
    rlca
    dec de
    rlca
    ld a, [de]
    rlca
    ei
    rlca
    dec de
    rlca
    ld a, e
    rlca
    ei
    rlca
    db $e3
    rra
    di
    rrca
    di
    rrca
    di
    rrca
    ld [hl], e
    rrca
    di
    rrca
    ld a, e
    rlca
    ld a, e
    rlca
    cp d
    rlca
    cp e
    rlca
    cp e
    rlca
    dec sp
    rlca
    ld e, e
    rlca
    ld e, e
    rlca
    cpl
    inc bc
    rlca
    inc bc
    ld [bc], a
    ld a, a
    ld b, $ff
    cp $ff
    cp $ff
    cp $ff
    ccf
    rra
    rra
    rrca
    rrca
    ccf
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
    rst $38
    ccf
    rst $38
    sbc a
    rst $38
    rst $08
    rst $38
    db $e3
    rst $38
    ld bc, $0407
    rlca
    ld b, $07
    rlca
    add a
    rlca
    rst $00
    rlca
    ld h, a
    rlca
    scf
    inc bc
    rra
    ld bc, $040f
    rlca
    ld b, $07
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
    rst $38
    ld a, a
    db $fc
    ld a, a
    db $fc
    ld a, a
    call z, $ccff
    rst $38
    db $fc
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, [hl]
    rst $38
    sbc $7f
    sbc [hl]
    ld a, a
    ld e, [hl]
    cp a
    ld e, [hl]
    cp a
    sbc a
    ld a, a
    ld e, a
    cp a
    cp a
    ld e, a
    rst $18
    cp a
    cp a
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
    rst $38
    or $ff
    and $ff
    or $ff
    rst $38
    rst $38
    cp $ff
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
    ldh [$1f], a
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
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ld [hl], b
    adc a
    ld h, b
    sbc a
    ld h, b
    sbc a

jr_0af_771a:
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld [hl], b
    adc a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld hl, sp+$07
    ld a, b
    add a
    ld a, b
    add a

jr_0af_7734:
    ld a, h
    add e
    add sp, $17
    ld l, [hl]
    sub c
    db $ed
    ld [de], a
    jp c, $ed25

    ld [de], a
    rst $28
    db $10
    rst $18
    jr nz, jr_0af_7734

    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $38
    nop
    db $fd
    nop
    ret nz

    nop
    ld [hl-], a
    ret nz

    inc e
    ret nz

    db $10
    add b
    nop
    ret nz

    jr nz, jr_0af_771a

    ld [hl+], a
    ret nz

    ld [hl], e
    add b
    ccf
    ret nz

    call z, $c000
    nop
    xor d
    nop
    ret c

    jr nz, jr_0af_7788

    ldh [$80], a
    rst $38
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
    adc a
    rst $38
    rst $00
    rst $38
    db $e3
    rst $38

jr_0af_7788:
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    sbc a
    rst $38
    rst $08
    rst $38
    db $e3
    rst $38
    ld sp, hl
    rst $38
    db $fc
    rst $38
    cp $ff
    db $fc
    rst $38
    ccf
    rst $18
    db $fc
    rra
    ld a, h
    sbc a
    ld a, l
    sbc d
    ld a, b
    or a
    rst $38
    rst $38
    ld a, b
    rst $38
    ld a, d
    cp l
    ld hl, sp+$3f
    rst $38
    ld e, a
    ld a, a
    cp a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    ld [$f5ff], a
    rst $38
    ld [$ffff], a
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
    ld a, [bc]
    rst $38
    ld d, l
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    cp $ff
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
    adc b
    ld [hl], a
    and b
    ld e, a
    xor d
    ld d, l
    call nc, $e92b
    ld d, $fe
    ld bc, $02fd
    rst $38
    nop
    inc bc
    nop
    nop
    nop
    rst $18
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    ld a, a
    nop
    nop
    rst $38
    rst $18
    cp a
    rst $28
    rst $38
    rst $30
    rst $28
    rst $00
    rst $28
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
    rst $30
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
    ld a, a
    rst $38
    rra
    rst $38
    adc a
    rst $18
    rst $00
    rst $28
    rst $20
    rst $28
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    ld h, a
    rst $38
    ld l, l
    rst $38
    db $fd
    rst $38
    sbc a
    ld a, a
    ld b, b
    cp a
    call c, $ff23
    rst $38
    ld d, a
    xor b
    rrca
    ldh a, [$cb]
    inc [hl]
    or e
    ld c, h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor [hl]
    xor [hl]
    ld b, b
    ld b, b
    add b
    rst $38
    ld b, b
    rst $38
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
    cp $ff
    ld hl, sp-$01
    rrca
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    nop
    rst $38
    ld bc, $00fe
    rst $38
    add b
    ld a, a
    ld d, b
    xor a
    adc d
    ld [hl], l
    ld [hl], c
    adc [hl]
    db $fd
    ld [bc], a
    rst $38
    nop
    ccf
    nop
    ldh [rP1], a
    rrca
    inc bc
    rrca
    nop
    rlca

Jump_0af_78a7:
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld b, l
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
    inc bc
    db $fc
    ret nc

    rst $38
    rst $38
    cp $fe
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
    rrca
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
    ld d, e
    and c
    daa
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    rla
    di
    rlca
    di
    ld l, e
    rst $38
    rrca
    rst $38
    dec c
    rst $38
    rlca
    db $fd
    push bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push de
    push de
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    and [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add a
    rst $38
    rrca
    rst $38
    ld a, a
    rst $38
    cp $ff
    ld hl, sp-$01
    call nz, Call_000_1cfa
    ldh [$7c], a
    add c
    xor h
    ld d, b
    ld e, h
    and c
    inc c
    ldh a, [$5c]
    and c
    inc l
    pop de
    inc e
    ldh [$2c], a
    pop de
    inc c
    pop af
    inc c
    pop af
    inc d
    jp hl


    inc a
    ret nz

    ld a, h
    add b
    inc a
    ret nz

    inc a
    ret nz

    ld a, h
    add b
    ld a, h
    add b
    inc a
    ret nz

    inc e
    ldh [$3c], a
    ret nz

    inc a
    ret nz

    inc a
    ret nz

    inc a
    ret nz

    inc e
    ldh [rNR32], a
    ldh [$0c], a
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$08]
    or $0c
    ldh a, [$08]
    or $0c
    ldh a, [$08]
    or $0c
    ldh a, [$08]
    db $f4
    inc d
    add sp, $18
    db $e4
    inc e
    ldh [rNR23], a
    db $e4
    inc d
    add sp, $1c
    ldh [rNR23], a
    and $3c
    ret nz

    inc e
    ldh [$3c], a
    ret nz

    ld [$1cf6], sp
    ld [c], a
    ld e, [hl]
    and b
    inc e
    ld [c], a
    cp [hl]
    ld b, b
    ld e, h
    and d
    xor [hl]
    ld d, b
    cp [hl]
    ld b, b
    ld [hl], h
    adc d
    xor d
    ld d, l
    cp $01
    cp $01
    nop
    nop
    rst $38

jr_0af_7993:
    ld hl, sp-$01
    rlca
    rst $38
    nop
    nop
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    inc bc
    nop
    ld h, $00
    push af

jr_0af_79a5:
    nop
    ld a, [$fd00]
    nop
    rrca
    ldh a, [$81]
    cp $ff
    rst $38
    nop
    rst $38
    jr nz, jr_0af_7993

    jr nc, jr_0af_79a5

    ld hl, $ffff
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
    ldh [$f0], a
    rst $38
    rst $38
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
    inc d
    inc d
    inc d
    inc d
    inc d
    dec d
    ld d, $17
    jr jr_0af_7a08

    rrca
    ld a, [de]
    dec de
    inc e
    dec e
    inc d
    inc d
    inc d
    inc d
    inc d
    ld e, $1f
    jr nz, jr_0af_7a1e

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0af_7a2e

    ld a, [hl+]
    dec hl
    inc l

jr_0af_7a08:
    dec l
    ld l, $2f
    jr nc, jr_0af_7a3e

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0af_7a4e

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_0af_7a1e:
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

jr_0af_7a2e:
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

jr_0af_7a3e:
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    rrca
    ld l, b
    ld l, c
    ld l, c
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a

jr_0af_7a4e:
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld l, c
    ld l, c
    ld l, c
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld l, c
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    ld l, c
    ld l, c
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
    rrca
    adc [hl]
    add d
    ld l, c
    ld l, c
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
    rrca
    sbc d
    sbc e
    ld l, c
    ld l, c
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
    rrca
    sbc d
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
    rrca
    or l
    or [hl]
    inc d
    inc d
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

    jp $c5c3


    add $c7
    ret z

    ret


    jp z, $cccb

    call $cfce
    ret nc

    inc d
    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, $db14

    call c, Call_000_14dd
    inc d
    inc d
    inc d
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    ld l, c
    ld l, c
    add sp, -$17
    inc d
    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    ld l, c
    ld l, c
    ld l, c
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    cp $ff
    nop
    ld bc, $6969
    ld l, c
    ld l, c
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld bc, $0003
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
    nop
    ld bc, $0003
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    nop
    nop
    nop
    ld bc, $0003
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    nop
    ld bc, $0401
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    ld bc, $0101
    ld bc, $0401
    inc b
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0303
    inc bc
    ld bc, $0101
    ld bc, $0000
    nop
    ld b, $06
    ld b, $06
    nop
    ld bc, $0303
    nop
    ld bc, $0401
    inc b
    ld bc, $0000
    nop
    ld b, $06
    ld b, $07
    ld bc, $0303
    inc bc
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    nop
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0303
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    nop
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0303
    inc bc
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0303
    inc bc
    ld bc, $0101
    ld bc, $2101
    ld hl, $0101
    ld bc, $0101
    ld bc, $0303
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
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

jr_0af_7c2b:
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101

jr_0af_7c37:
    ld bc, $0101
    ld bc, $0101
    ld bc, $0909
    ld bc, $0101
    ld bc, $0909
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rst $08
    add b
    rst $20
    db $fc
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$11
    ret z

    rst $28
    ret nz

    rst $18
    or $ff
    ldh a, [$b0]
    rst $38
    ldh [$bf], a
    and e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor e
    xor e
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    ld h, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop hl
    rst $38
    ldh a, [rIE]
    cp $ff
    ld a, a
    rst $38
    rra
    rst $38
    inc hl
    ld e, a
    jr c, @+$09

    ld a, $81
    dec [hl]
    ld a, [bc]
    ld a, [hl-]
    add l
    jr nc, jr_0af_7ca1

    ld a, [hl-]
    add l
    inc [hl]
    adc e
    jr c, @+$09

    inc [hl]
    adc e
    jr nc, jr_0af_7c2b

    jr nc, @-$6f

    jr z, jr_0af_7c37

    inc a

jr_0af_7ca1:
    inc bc
    ld a, $01
    inc a
    inc bc
    inc a
    inc bc
    ld a, $01
    ld a, $01
    inc a
    inc bc
    jr c, jr_0af_7cb7

    inc a
    inc bc
    inc a
    inc bc
    inc a
    inc bc
    inc a

jr_0af_7cb7:
    inc bc
    jr c, @+$09

    jr c, @+$09

    jr nc, @+$11

    jr nc, jr_0af_7ccf

    jr nc, @+$11

    jr nc, jr_0af_7cd3

    jr nc, @+$11

    db $10
    ld l, a
    jr nc, @+$11

    db $10
    ld l, a
    jr nc, @+$11

    db $10

jr_0af_7ccf:
    ld l, a
    jr nc, @+$11

    db $10

jr_0af_7cd3:
    cpl
    jr z, jr_0af_7ced

    jr jr_0af_7cff

    jr c, @+$09

    jr jr_0af_7d03

    jr z, jr_0af_7cf5

    jr c, jr_0af_7ce7

    jr jr_0af_7d49

    inc a
    inc bc
    jr c, jr_0af_7ced

    inc a

jr_0af_7ce7:
    inc bc
    db $10
    ld l, a
    jr c, @+$49

    ld a, d

jr_0af_7ced:
    dec b
    jr c, jr_0af_7d37

    ld a, l
    ld [bc], a
    ld a, [hl-]
    ld b, l
    ld [hl], l

jr_0af_7cf5:
    ld a, [bc]
    ld a, l
    ld [bc], a
    ld l, $51
    ld d, l
    xor d
    ld a, a
    add b
    ld a, a

jr_0af_7cff:
    add b
    nop
    nop
    rst $38

jr_0af_7d03:
    rra
    rst $38
    ldh [rIE], a
    nop
    nop
    nop
    ret nz

    nop
    add d
    nop
    stop
    nop
    nop
    reti


    nop
    rst $38
    nop
    ld a, l
    nop
    rst $10
    nop
    ldh a, [rIF]
    add c
    ld a, a
    rst $38
    rst $38
    nop
    rst $38
    inc b
    ei
    inc c
    rst $30
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
    rst $38
    rst $38
    jr c, jr_0af_7d3b

    rrca
    rst $38
    rst $38

jr_0af_7d37:
    rst $38
    rst $38
    rst $38
    rst $38

jr_0af_7d3b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0af_7d49:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or [hl]
    rst $38
    cp a
    rst $38
    ld hl, sp-$02
    ld bc, $00ff
    rst $38
    rst $38
    ld [$f015], a
    rrca
    db $d3
    inc l
    call $ff32
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], l
    ld [hl], l
    ld [bc], a
    ld [bc], a
    ld bc, $02ff
    rst $38
    ld d, l
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
    ldh a, [rIE]
    db $fd
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
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
    nop
    rst $38
    nop
    rst $38
    ld bc, $0afe
    push af
    ld d, c
    xor [hl]
    adc [hl]
    ld [hl], c
    cp a
    ld b, b
    rst $38
    nop
    db $fc
    nop
    rlca
    nop
    ldh a, [$c0]
    ldh a, [rP1]
    ldh [rP1], a
    nop
    nop
    nop
    nop
    ld b, b
    nop
    xor c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rst $38
    nop
    ret nz

    ccf
    dec bc
    rst $38
    rst $38
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
    ldh a, [rIE]
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
    ccf
    db $fc
    ei
    ccf
    ld hl, sp+$3e
    ld sp, hl
    cp [hl]
    ld e, c
    ld e, $ed
    rst $38
    rst $38
    ld e, $ff
    ld e, [hl]
    cp l
    rra
    db $fc
    rst $38
    ld a, [$fdfe]
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    ld d, a
    rst $38
    xor a
    rst $38
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
    db $fc
    rst $38
    nop
    rst $38
    ld d, b
    rst $38
    xor d
    rst $38
    db $fd
    rst $38
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
    ld bc, $01fe
    cp $01
    cp $11
    xor $05
    ld a, [$aa55]
    dec hl
    call nc, Call_0af_6897
    ld a, a
    add b
    cp a
    ld b, b
    rst $38
    nop
    ret nz

    nop
    nop
    nop
    ei
    nop
    nop
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
    nop
    ld c, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    nop
    cp $00
    nop
    rst $38
    ei
    db $fd
    rst $30
    rst $38
    rst $28
    rst $30
    db $e3
    rst $30
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
    rst $28
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
    cp $ff
    ld hl, sp-$01
    pop af
    ei
    db $e3
    rst $30
    rst $20
    rst $30
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    and $ff
    rst $38
    cp $3f
    cp $3f
    cp $33
    rst $38
    inc sp
    rst $38
    ccf
    rst $38
    ld a, $ff
    ld a, $ff
    ld a, [hl]
    rst $38
    ld a, e
    cp $79
    cp $7a
    db $fd
    ld a, d
    db $fd
    ld sp, hl
    cp $fa
    db $fd
    db $fd
    ld a, [$fdfb]
    db $fd
    rst $38
    rst $38
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
    ld l, a
    rst $38
    ld h, a
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
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
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [$1f]
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$0e
    pop af
    ld b, $f9
    ld b, $f9
    ld b, $f9
    ld b, $f9
    ld c, $f1
    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld e, $e1
    rra
    ldh [rNR34], a
    pop hl
    ld e, $e1
    ld a, $c1
    rla
    add sp, $76
    adc c
    or a
    ld c, b
    ld e, e
    and h
    or a
    ld c, b
    rst $30
    ld [$04fb], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$00ff], sp
    cp a
    nop
    inc bc
    nop
    ld c, h
    inc bc
    jr c, jr_0af_7f57

    ld [$0001], sp

jr_0af_7f57:
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    cp [hl]
    ld bc, $037c
    inc sp
    nop
    inc bc
    nop
    ld d, l
    nop
    dec de
    inc b
    jr jr_0af_7f71

    ld bc, $e3ff
    rst $38
    rst $38

jr_0af_7f6f:
    rst $38
    rst $38

jr_0af_7f71:
    rst $38
    rst $38
    rst $38
    rst $38
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
    pop af
    rst $38
    db $e3
    rst $38
    rst $00
    rst $38
    rra
    rst $38
    ccf
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
    di
    rst $38
    rst $00
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    ldh a, [$df]
    or b
    rst $38
    sub a
    db $fc
    rst $38
    ret c

    ldh a, [$fc]
    ret nc

    ret c

    ld [hl], b
    call c, $d870
    jr nc, jr_0af_7f6f

    ldh a, [$2c]
    ldh a, [$e0]
    ld a, b
    db $e4
    ld a, b
    ld h, h
    ld hl, sp-$34
    ldh a, [$e0]
    call c, $ffe8
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    cp a
    ei
    rst $18
    pop af
    rst $18
    pop af
    rst $38
    push af
    rst $38
    push af
    rst $38
    push af
    rst $38
    push af
    cp $d5
    cp $d5
    rst $38
    rst $10
    cp $d3
    db $fc
    db $d3
    ccf
    rst $38
    rst $08
    rra
    rst $18
    rrca
    inc e
    rst $38
    inc a
    rst $38
    jr c, @+$01

    ccf
    rst $38
    inc a
    rst $38
    ld e, $ff
    rra
    rst $38
    inc c
    ldh a, [$0c]
    ldh a, [$08]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    db $f0
