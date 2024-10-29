SECTION "ROM Bank $018", ROMX[$4000], BANK[$18]

    nop
    nop
    nop
    nop
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
    nop
    ld b, $02
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
    nop
    ld b, $02
    ld b, $00
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
    ld b, $02
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
    nop
    nop
    ld b, $06
    nop
    nop
    ld [bc], a
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    ld b, $00
    nop
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $00
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    ld b, $06
    ld b, $02
    ld b, $00
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $00
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $00
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $00
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
    ld [bc], a
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
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld b, $00
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $00
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $00
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
    ld b, $06
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
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
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld b, $06
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
    nop
    nop
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
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    and b
    rst $38
    ld b, b
    rst $38
    and b
    rst $38
    ld d, b
    rst $38
    and b
    rst $38
    ld d, b
    rst $38
    xor b
    rst $38
    ld d, b
    rst $38
    xor b
    rst $38
    ld d, h
    rst $38
    xor b
    rst $38
    ld d, h
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    push de
    rst $38
    ld [$f5ff], a
    rst $38
    ld [$f5ff], a
    rst $38
    ld a, [$fdff]
    rst $38
    cp $ff
    db $fd
    rst $38
    cp $ff
    rst $38
    rst $38
    rra
    nop
    cp $01
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
    rst $38
    nop
    rst $38
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

    inc [hl]
    ret


    rst $38
    ld b, a
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    adc a
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    and b
    rst $38
    ld d, b
    rst $38
    xor b
    rst $38
    ld d, b
    rst $38
    nop
    xor b
    nop
    ld d, h
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    rrca
    xor a
    ccf
    ld a, a
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
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    ldh [rNR32], a
    nop
    pop hl
    nop
    add l
    nop
    inc l
    ldh [rIE], a
    add a
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    jp Jump_000_2fff


    rst $38
    cp a
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
    inc bc
    add e
    ld a, a
    ld a, a
    rst $38
    ldh a, [rIE]
    nop
    db $fc
    inc bc
    ldh [$1f], a
    nop
    jp hl


    nop
    add b
    nop
    inc d
    nop
    jr nz, jr_018_424d

jr_018_424d:
    nop
    nop
    nop
    add b
    rst $38
    ld bc, $17ff
    rst $38
    ld a, a
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ld [bc], a
    dec e
    nop
    rlca
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
    ld bc, $3f01
    ccf
    rst $38
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
    cp $00
    ldh a, [rP1]
    add b
    rst $38
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    ld e, b
    rst $38
    add sp, -$01
    jp Jump_000_1fff


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
    ld d, a
    db $76
    adc c
    cpl
    ret nc

    ld a, [de]
    push hl
    ld b, $79
    inc bc
    inc a
    inc bc
    inc e
    nop
    rlca
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
    nop
    rrca
    rrca
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
    nop
    rst $38
    nop
    cp $01
    ld hl, sp+$07
    ret nz

    ccf
    nop

jr_018_42eb:
    cp $00
    ld hl, sp+$00
    ldh [rSB], a
    rst $38
    rrca
    rst $38
    ld [bc], a
    rst $38
    ld bc, $08ff
    rst $38
    db $10
    rst $38
    add b
    rst $38
    inc bc
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
    rst $38
    rst $38
    nop
    ld a, [bc]
    nop
    dec b
    nop
    inc bc
    nop
    add c
    nop
    ldh [rP1], a
    and b
    nop
    ret c

    nop
    ldh [rSVBK], a
    adc a
    jr c, jr_018_42eb

    jr @+$69

    inc b
    dec sp
    ld [bc], a
    dec c
    nop
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
    ld a, a
    ld a, h
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
    ld hl, sp+$07
    ret nz

    ld a, $00
    ld hl, sp+$00
    ldh [rP1], a
    add b
    nop
    ld bc, $0f00
    nop
    ld a, a
    db $fc
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $0006
    inc bc
    nop
    inc bc
    nop
    sub b
    nop
    pop hl
    nop
    ld sp, $2100
    nop
    ld bc, $0200
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    pop bc
    nop
    inc sp
    ld bc, $132a
    ld l, h
    ld b, $39
    ld b, $09
    inc b
    inc bc
    inc b
    inc bc
    ld b, $01
    ld b, $01
    ld b, $01
    ld b, $01
    rlca
    nop
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    nop
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    ld b, $03
    ld b, $01
    ld b, $03
    ld b, $03
    ld b, $03
    ld b, $03
    ld b, $03
    ld b, $03
    ld b, $03
    ld b, $03
    ld b, $03
    ld b, $03
    ld b, $03
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
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
    rlca
    nop
    rlca
    nop
    rlca
    nop
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    ccf
    jr nc, @+$01

    ret nz

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
    ldh [$1f], a
    nop
    db $f4
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    dec c
    rst $38
    ld a, h
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld c, $ff
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
    db $fc
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    ret nz

    rst $38
    inc d
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ret nz

    rst $38
    add b
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld a, b
    inc bc
    ld a, h
    inc bc
    ld l, h
    ld bc, $016e
    xor $00
    rst $38
    nop
    rst $28
    add c
    ld l, [hl]
    inc bc
    ld l, h
    inc bc
    ld c, b
    inc bc
    ld [hl], b
    ld b, e
    inc [hl]
    ld b, a
    jr c, jr_018_44b0

    ld [hl], h
    inc c
    ld [hl], e
    rrca
    ld [hl], b
    rrca
    ld [hl], b
    rrca
    ld [hl], b
    rrca
    ld [hl], b

jr_018_44b0:
    rrca
    ld [hl], b
    cpl
    ld d, b
    ld l, a
    sub b
    ld l, a
    sub b
    ld b, b
    cp a
    ld c, a
    jr nc, jr_018_450c

    jr nc, jr_018_450e

    jr nc, jr_018_44b0

    db $10
    adc [hl]
    ld [hl], c
    add b
    ld a, a
    adc a
    ld [hl], b
    ld c, a
    jr nc, jr_018_451a

    jr nc, jr_018_451c

    jr nc, jr_018_44de

    ldh a, [$8f]
    add b
    rrca
    nop
    ld c, a
    ld b, b
    rst $08
    ret nz

    ld c, a
    ld b, b
    ld c, a
    ld b, b
    rst $08
    ret nz

jr_018_44de:
    ld c, a
    ld b, b
    adc a
    add b
    rst $08
    ret nz

    rst $08
    ret nz

    rst $08
    ret nz

    ld c, a
    ld b, b
    ld c, a
    ld b, b
    ld c, a
    ld b, b
    ld c, a
    ld b, b
    rrca
    nop
    adc a
    add b
    adc a
    add b
    set 0, h
    rst $08
    ret nz

    call $cac2
    push bc
    adc h
    add e
    ldh a, [$80]
    ldh a, [$80]
    ldh a, [$c0]
    ldh a, [$c0]
    ldh a, [$80]
    or b
    ret nz

jr_018_450c:
    ldh [rP1], a

jr_018_450e:
    ldh [rP1], a
    ldh [rP1], a
    and b
    ld b, b
    and b
    ld b, b
    and b
    ld b, b
    and b
    ld b, b

jr_018_451a:
    ldh [rP1], a

jr_018_451c:
    ldh [rP1], a
    ldh [rP1], a
    and b
    ld b, b
    and b
    ld b, b
    and b
    ld c, d
    and b
    ld d, l
    and b
    ld c, d
    and b
    ld d, l
    ldh [$0a], a
    ldh [$1f], a
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [$1f], a
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    ldh [$e0], a
    rra
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    nop
    db $fc
    nop
    push hl
    nop
    add hl, sp
    nop
    ld b, b
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec b
    rst $38
    adc a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ld a, [$e8ff]
    rst $38
    ldh a, [rIE]
    and b
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

jr_018_4581:
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    sbc a
    ld h, b

jr_018_458c:
    adc a
    ld [hl], b
    rst $20
    jr jr_018_458c

    inc b
    db $fd
    ld [bc], a
    cp $01
    cp $01
    ld a, $c1
    sbc a
    ld h, b
    rst $08
    jr nc, jr_018_4581

    dec e
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    add b
    ld a, a
    nop
    rst $38
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $ff
    nop
    rst $38
    sbc [hl]
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
    rst $30
    ld [$04fb], sp
    ld a, [$f405]
    dec bc
    db $fc
    inc bc
    add sp, $17
    ld h, b
    sbc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0aff
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    cp a
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
    rst $38
    nop
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
    ldh a, [rIE]
    sbc h
    rst $38
    ld a, [hl]
    rst $38
    ld d, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld bc, $0fff
    rst $38
    ld a, a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    call z, $ffff
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
    ldh [$8f], a
    ld [hl], b
    ld b, a
    cp b
    inc bc
    db $fc
    nop
    ld hl, sp+$00
    add b
    nop
    call c, $fe00
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    ld hl, sp-$80
    nop
    nop
    nop
    nop
    ld d, b
    xor a
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    add b
    ld a, a
    and b
    ld e, a
    ld d, b
    xor a
    ret nz

    ccf
    and b
    ld e, a
    ld b, b
    cp a
    add b
    ld a, a
    and b
    ld e, a
    ld b, b
    cp a
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02ff
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor e
    rst $38
    ld e, a
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
    inc bc
    nop
    db $fc
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    pop hl
    rst $38
    ld bc, $00ff
    rst $38
    ld [de], a
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rst $38
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
    add b
    nop
    nop
    nop
    nop
    nop
    rst $38
    ret nz

    ccf

Call_018_4704:
    and b
    ld e, a
    ldh [$1f], a
    ret nz

    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    rst $38
    dec b
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    ld a, [hl+]
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor e
    rst $38
    ld d, a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld a, [$f6ff]
    rst $38
    add sp, -$01
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
    nop
    rst $38
    nop
    rst $38
    ld [$ffff], sp
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    ld a, [bc]
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    ld a, [hl+]
    rst $38
    dec d
    rst $38
    ld a, [hl+]
    rst $38
    ld d, l
    rst $38
    ld a, [hl+]
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor e
    rst $38
    ld d, l
    rst $38

Jump_018_47c0:
    xor e
    rst $38
    ld d, a
    rst $38
    xor a
    rst $38
    ld d, a
    rst $38
    xor a
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ld b, b
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
    cp $00
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
    ld a, a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
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
    ld bc, $00fe
    rst $38
    nop
    rst $38
    db $10
    rst $28
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
    cp $00
    nop
    ld bc, $0000
    nop
    nop
    rrca
    ldh a, [rP1]
    db $fd
    nop
    ld a, [$fd00]
    nop
    ld a, [$fd00]
    nop
    ld a, [$fd00]
    cp $ff
    db $fd
    rst $38
    cp $ff
    db $fd
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, h
    rst $38
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
    ld [bc], a
    rst $38
    ld c, $ff
    dec e
    rst $38
    add hl, bc
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
    db $fc
    nop
    nop
    inc bc
    inc bc
    db $fc
    ld e, $00
    nop
    nop
    nop
    nop
    ld bc, $0000
    inc bc
    nop
    db $fc
    nop
    nop
    rlca
    nop
    ld a, [hl-]
    dec b
    nop
    rst $38
    ret nz

    ccf
    nop
    ld b, b
    nop
    add b
    nop
    ld b, b
    nop
    add b
    nop
    ld b, b
    nop
    and b
    nop
    ld b, b
    and b
    rst $38
    ld d, b
    rst $38
    and b
    rst $38
    ld d, b
    rst $38
    and b
    rst $38
    ld d, b
    rst $38
    xor b
    rst $38
    ld d, h
    rst $38
    xor b
    rst $38
    ld d, h
    rst $38
    xor d
    rst $38
    call nc, $eaff
    rst $38
    push de
    rst $38
    ld [$f5ff], a
    rst $38
    ld a, [$fdff]
    rst $38
    ld a, [$fdff]
    rst $38
    cp $ff
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
    rrca
    nop
    ldh a, [rIF]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld [hl], d
    rst $38
    inc a
    rst $38
    ld a, $ff
    ld a, [hl]
    rst $38
    db $fc
    rst $38
    db $ec
    rst $38
    adc h
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    ld b, b
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
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    nop
    rrca
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rrca
    nop
    rrca
    rst $38
    rst $38
    ld hl, sp-$01
    inc b
    ld a, a
    cp $3f
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    add b
    ld a, e
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
    nop
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    and b
    rst $38
    ld d, b
    rst $38
    xor b
    rst $38
    ld d, h
    rst $38
    xor d
    rst $38
    push de
    rst $38
    ld [$f5ff], a
    rst $38
    ld a, [$fdff]
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
    nop
    rst $38
    rst $38
    rst $08
    rst $38
    rst $00
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
    ldh a, [$a5]
    ldh a, [$a3]
    ldh a, [$a7]
    ldh a, [$a3]
    ldh a, [$a5]
    ldh [$b3], a
    ldh [$b5], a
    ldh [$b3], a
    ldh [$b1], a
    ldh [$b3], a
    ldh [$b5], a
    ldh [$b3], a
    ldh [$b1], a
    ldh [$b3], a
    ldh [$b1], a
    ldh [$b3], a
    ldh [$b1], a
    ldh [$b3], a
    nop
    ldh a, [$80]
    ld [hl], e
    ldh [rNR11], a
    ldh [rNR12], a
    ldh [$91], a
    ldh [$90], a
    ldh [rNR24], a
    ldh a, [$08]
    ldh a, [$09]
    ldh a, [$08]
    ldh a, [$09]
    ldh [$98], a
    add b
    ld sp, hl
    nop
    ld hl, sp+$04
    ei
    nop
    rst $38
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    inc b
    ei
    nop
    rst $38
    inc b
    ei
    inc b
    ei
    nop
    rst $38
    inc bc
    db $fd
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $00ff
    rst $38
    add c
    rst $38
    ld d, a
    rst $38
    xor e
    rst $38
    ld d, a
    rst $38
    xor e
    rst $38
    rst $10
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    nop
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc bc
    inc bc
    db $fc
    ld bc, $01d6
    jp nz, $4201

    ld bc, $0102
    nop
    nop
    ld bc, $0000
    nop
    rst $38
    ld [$10f7], sp
    rst $28
    inc b
    ei
    ld [de], a
    db $ed
    ld [$05f7], sp
    ld a, [$db24]
    ld [de], a
    db $ed
    ld [$10f7], sp
    rst $28
    daa
    ret c

    rra
    ldh [$2d], a
    jp nc, $f40b

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
    db $fd
    rst $38
    ld a, [$f5ff]
    rst $38
    ld [$d0ff], a
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    and b
    rst $38
    nop
    rst $38
    sub b
    rst $28
    jr nc, @-$2f

    ld a, b
    add a
    ld a, b
    add a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_018_4ada:
    nop
    rst $38

jr_018_4adc:
    nop
    rst $38

jr_018_4ade:
    nop
    rst $38
    add b
    rst $38
    ld bc, $80ff
    rst $38
    ld b, c
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    push de
    rst $38
    xor d
    rst $38
    push de
    rst $38
    ld [$d5ff], a
    rst $38
    ei
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
    add b
    nop
    add b
    nop
    ret nz

    nop
    ld b, b
    add b
    ld b, b
    add b
    ld h, b
    add b
    ld h, b
    add b
    jr nz, jr_018_4ada

    jr nc, jr_018_4adc

    jr nc, jr_018_4ade

    db $10
    ldh [$f8], a
    rra
    ld hl, sp+$1f
    ld a, b
    sbc a
    ld a, h
    rrca
    ld a, h
    rrca
    ld a, h
    rrca
    ld a, h
    rrca
    ld a, [hl]
    rlca
    ld a, $07
    ld a, $07
    ccf
    rlca
    ccf
    inc bc
    ccf
    inc bc
    ccf
    inc bc
    rra
    ld bc, $011f
    rra
    ld bc, $011f
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
    rst $38
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
    rst $38
    xor a
    rst $38
    ld d, a
    rst $38
    xor e
    rst $38
    ld d, l
    rst $38
    dec hl
    rst $38
    dec d
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    ld a, [bc]
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    ld a, [hl+]
    rst $38
    dec d
    rst $38
    ld a, [hl+]
    rst $38
    dec d
    rst $38
    ld a, [hl+]
    rst $38
    dec d
    rst $38
    ld a, [hl+]
    rst $38
    ld d, l
    rst $38
    xor e
    rst $38
    ld d, l
    rst $38
    xor e
    rst $38
    ld d, a
    rst $38
    xor e
    rst $38
    ld d, a
    rst $38
    xor a
    rst $38
    ld d, a
    rst $38
    xor a
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    ld a, a
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
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ld [hl], b
    add b
    ld [hl], b
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
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    nop
    ld bc, $0302
    inc bc
    inc b
    dec b
    ld b, $07
    rlca
    rlca
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0707
    rlca
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_018_4c4a

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_018_4c5a

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_018_4c44

    add hl, hl
    ld a, [hl+]
    dec hl

jr_018_4c44:
    inc l
    dec l
    ld l, $2f
    jr nc, jr_018_4c7b

jr_018_4c4a:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    inc bc
    jr c, jr_018_4c8c

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    rlca

jr_018_4c5a:
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    inc bc
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    rlca
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
    ld e, h
    ld e, l
    ld e, [hl]

jr_018_4c7b:
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
    inc bc

jr_018_4c8c:
    inc bc
    inc bc
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    rlca
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    inc bc
    inc bc
    inc bc
    inc bc
    ld a, h
    ld a, l
    ld e, $1e
    ld a, [hl]
    ld e, $7f
    add b
    add c
    add d
    add e
    add h
    inc bc
    inc bc
    inc bc
    inc bc
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
    inc bc
    inc bc
    inc bc
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    rlca
    rlca
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
    inc bc
    and d
    and e
    rlca
    rlca
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
    rlca
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    rlca
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    rlca
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    inc bc
    jp z, $cccb

    call Call_000_07ce
    rst $08
    ret nc

    pop de
    jp nc, $d4d3

    ld e, $d5
    sub $d7
    ret c

    reti


    jp c, $dcdb

    db $dd
    rlca
    sbc $1e
    ld e, $1e
    ld e, $df
    ldh [$e1], a
    ld [c], a
    inc bc
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$1e1e], a
    ld e, $1e
    db $eb
    db $ec
    db $ed
    inc bc
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    ld e, $1e
    ld e, $1e
    ld e, $f6
    rst $30
    ld hl, sp+$03
    ld sp, hl
    rlca
    ld a, [$fcfb]
    db $fd
    cp $1e
    ld e, $1e
    ld e, $1e
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
    ld b, $06
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
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    ld b, $06
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
    ld [bc], a
    ld b, $00
    nop
    nop
    ld b, $06
    ld b, $02
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld b, $00
    nop
    nop
    nop
    nop
    rlca
    ld b, $02
    ld [bc], a
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
    nop
    ld b, $06
    nop
    nop
    nop
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
    ld b, $00
    nop
    nop
    nop
    ld [bc], a
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
    nop
    nop
    ld [bc], a
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
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $07
    rlca
    rlca
    nop
    nop
    nop
    ld b, $06
    rlca
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
    nop
    nop
    nop
    ld b, $06
    ld b, $06
    ld b, $00
    nop
    nop
    ld b, $07
    nop
    nop
    nop
    nop
    nop
    inc b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $00
    nop
    ld [bc], a
    ld b, $00
    nop
    nop
    nop
    nop
    inc b
    inc bc
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld b, $02
    ld b, $07
    nop
    nop
    nop
    nop
    nop
    inc b
    inc bc
    dec b
    ld [bc], a
    ld [bc], a
    nop
    inc b
    inc bc
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    db $fc
    inc bc
    cp $01
    cp $01
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_018_4ed5:
    nop
    cp $01
    cp $01
    cp $01
    db $fd
    ld [bc], a
    ld a, [$f505]
    ld a, [bc]
    db $f4
    dec bc
    jp c, $ec25

    inc de
    inc h
    db $db
    ret c

    daa
    inc h
    db $db
    ld d, b
    xor a
    db $10
    rst $28
    ld b, h
    cp e
    jr nz, jr_018_4ed5

    db $10
    rst $28
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0300
    ld bc, $0307
    rlca
    rlca
    rrca
    rrca
    rra
    rrca
    rra
    rra
    ccf
    rra
    ccf
    ld e, a
    ccf
    ld e, a
    rra
    ld a, a
    rra
    ld l, a
    inc bc
    ld a, h
    inc bc
    ld a, h
    nop
    ld a, a
    ld bc, $037e
    ld a, h
    rlca
    ld a, b
    rrca
    ld [hl], b
    rra
    ld h, b
    rra
    jr nz, jr_018_4f4a

    jr nc, @+$03

    ld a, $00
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

jr_018_4f4a:
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sub h
    ld l, e
    add l
    ld a, d
    rlca
    ld hl, sp+$01
    cp $03
    db $fc
    ld [bc], a
    db $fd
    ld a, [bc]
    push af
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    db $10
    rst $38
    nop
    rst $38
    ld d, b
    rst $38
    jr nz, @+$01

    nop
    rst $38
    jr z, @+$01

    db $10
    rst $38
    ld a, [hl+]
    rst $38
    inc d
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    ld a, [bc]
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38
    dec b
    rst $38
    adc d
    ld a, a
    add l
    ld a, a
    add [hl]
    ld a, a
    add a
    ld a, a
    add a
    ld a, a
    add e
    ld a, a
    ld b, e
    cp a
    add e
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    add c
    ld a, a
    ld b, c
    cp a
    add c
    ld a, a
    ld b, c
    cp a
    add b
    ld a, a
    ld bc, $00ff
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
    ld bc, $00ff
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $07ff
    rst $38
    nop
    inc bc
    nop
    ld bc, $0500
    nop
    rra
    nop
    dec bc
    nop
    ld bc, $0700
    ld a, h
    inc de
    cp $05
    rst $38
    ld [bc], a
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
    db $fd
    ld [bc], a
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    add b
    ld a, a
    nop
    rst $38
    ld c, $f1
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$03]
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    ld d, a
    nop
    dec hl
    nop
    dec d
    nop
    ld [bc], a
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
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    rst $18
    jr nz, jr_018_508a

    and b
    rst $30
    ld [$4ab5], sp
    and l
    ld e, d
    dec hl
    call nc, $d52a
    ld [bc], a
    db $fd
    ld [de], a
    db $ed
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
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    jr z, @+$01

    ld d, b
    rst $38
    and d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    push af
    rst $38
    ld a, [$fdff]
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
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    inc bc
    ld a, a
    inc bc
    cp $03
    cp $03
    ld a, [hl]

jr_018_508a:
    inc bc
    ld a, [hl]
    inc bc
    ld a, [hl]
    inc bc
    ld a, [hl]
    inc bc
    ld a, [hl]
    inc bc
    ld a, [hl]
    inc bc
    ld a, [hl]
    inc bc
    cp $03
    ld a, [hl]
    inc bc
    ld a, [hl]
    inc bc
    ld a, [hl]
    inc bc
    ld a, [hl]
    inc bc
    ld a, [hl]
    inc bc
    ld a, [hl]
    inc bc
    ld a, [hl]
    inc bc
    ld a, [hl]
    inc bc
    ld a, [hl]
    inc bc
    ld a, [hl]
    inc bc
    ld a, [hl]
    inc bc
    cp $03
    ld a, [hl]
    inc bc
    cp $03
    cp $03
    cp $03
    ld a, [hl]
    inc bc
    cp $03
    cp $03
    cp $02
    ld bc, $0102
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
    add b
    pop bc
    add b
    pop hl
    ret nz

    ld sp, hl
    ldh [$fd], a
    ld [hl], b
    rst $38
    inc e
    rst $38
    ld c, $7f
    add e
    ccf
    pop bc
    rrca
    ldh a, [rTAC]
    ld hl, sp+$01
    cp $00
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
    ccf
    ret nz

    rrca
    ldh a, [rSB]
    cp $00
    rst $38
    nop
    ld a, a
    nop
    cp a
    nop
    ld d, a
    nop
    ld a, [hl+]
    nop
    dec b
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    xor a
    ld d, b
    dec bc
    db $f4
    ld [bc], a
    db $fd
    ld b, [hl]
    cp c
    dec b
    ld a, [$fe01]
    nop
    rst $38
    nop
    rst $38
    nop
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
    xor d
    rst $38
    ld d, b
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    push de
    rst $38
    ld a, [$ffff]
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
    rrca
    nop
    rst $38
    ldh a, [rIE]
    nop
    cp $01
    ldh [$1f], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
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
    ldh a, [rIE]
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
    add b
    ld b, b
    add e
    ld b, b
    add a
    ld b, b
    sbc a
    ld b, [hl]
    cp a
    ld c, a
    cp a
    ld c, a
    cp a
    ld b, [hl]
    add b
    rra
    ldh [$80], a
    ldh a, [rLCDC]
    ld hl, sp+$30
    db $fc
    ld [$00ff], sp
    ccf
    ret nz

    rra
    ldh [rTAC], a
    ld hl, sp+$03
    db $fc
    nop
    rst $38
    ret nz

    ccf
    ldh a, [rIF]
    db $fc
    inc bc
    cp $01
    ld a, a
    add b
    rra
    ldh [rTAC], a
    ld hl, sp+$01
    cp $00
    rst $38
    nop
    ld a, a
    nop
    xor a
    nop
    ld d, a
    nop
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
    xor a
    ld d, b
    cp d
    ld b, l
    ld bc, $46fe
    cp c
    ld bc, $80fe
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
    ld b, b
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
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
    ld bc, $1e00
    ld bc, $1fe0
    nop
    rst $38
    cp $01
    ldh [$1f], a
    nop
    rst $38
    nop
    di
    nop
    di
    nop
    pop af
    nop
    ld [hl], c
    nop
    ldh a, [rSVBK]
    rst $38
    ld [hl], b
    rst $38
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

jr_018_5288:
    inc b
    ei

jr_018_528a:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$00f7], sp
    rst $38
    ld [$0cf7], sp
    di
    ld [$0af7], sp
    push af
    inc e
    db $e3
    ld d, $e9
    ld e, $e1
    ld e, $e1
    ld c, $f1
    rra
    ld h, b
    ld c, $31
    rrca
    db $10
    dec hl
    inc [hl]
    ld h, $39
    ld h, e
    ld a, h
    nop
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    jr nc, jr_018_5288

    jr c, jr_018_528a

    ld a, [hl]
    sbc b
    cp $bd
    db $fc
    rst $38
    ld hl, sp+$10
    ld hl, sp+$00
    db $fc
    nop
    ld a, $c0
    rra
    ldh [rTAC], a
    ld hl, sp+$03
    db $fc
    add b
    ld a, a
    ldh [$1f], a
    ld hl, sp+$07
    cp $01
    ccf

jr_018_52e7:
    ret nz

    rrca
    ldh a, [$03]

jr_018_52eb:
    db $fc
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
    rst $10
    jr z, jr_018_52eb

    ld de, $5ba4
    adc d
    ld [hl], l
    add h
    ld a, e
    ld b, b
    cp a
    jr nz, jr_018_52e7

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl+], a
    rst $38
    dec d
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc e
    inc bc
    ldh [$1f], a
    nop

jr_018_533b:
    rst $38
    nop
    cp $00
    ldh [$f7], a
    rst $38
    or $ff
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    jr nc, @+$01

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
    rst $38
    nop

jr_018_535d:
    rst $38
    ld b, b

jr_018_535f:
    cp a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld a, b
    add a
    jr c, @-$37

    jr c, jr_018_533b

    jr jr_018_535d

    jr jr_018_535f

    inc e
    db $e3
    inc e
    db $e3
    inc e
    db $e3
    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld e, $e1
    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$05
    ld a, [$fa05]
    dec sp
    call nz, Call_018_7a85
    add c
    ld a, [hl]
    ret nz

    ccf
    add [hl]
    ld a, c
    adc d
    ld [hl], l
    ld a, [c]
    dec c
    ld b, h
    cp e
    add h
    ei
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp+$78
    cp $1e
    rst $38
    rrca
    rst $38
    add e
    rst $38
    pop hl
    rst $38
    ld hl, sp-$01
    cp $ff
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
    rst $38
    nop
    cp $01
    rst $30
    ld [$05fa], sp
    add sp, $17
    db $f4
    dec bc
    ld h, b
    sbc a
    and b
    ld e, a
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
    nop
    rst $38
    ld bc, $0aff
    rst $38
    dec b
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor e
    rst $38
    ld e, a
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
    ccf
    db $fc
    rst $38
    ret nz

    rst $38
    nop
    cp $01
    ldh [$1f], a
    nop
    db $fc
    nop
    cp h
    sbc [hl]
    rst $38
    inc c
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
    dec c
    ld a, [c]
    dec b
    ld a, [$e916]
    ld a, $c1
    dec sp
    call nz, $c03f
    dec a
    jp nz, $e31c

    ld e, $e1

jr_018_5452:
    rra
    ldh [rIF], a
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
    ld bc, $01fe
    cp $01
    cp $00
    rst $38
    inc bc
    db $fc
    rlca
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
    ld bc, $82fe
    ld a, l
    and l
    ld e, d
    or l
    ld c, d
    sub a
    ld l, b
    rst $18

jr_018_5493:
    jr nz, @-$1f

    jr nz, @+$01

    nop
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    cp a
    ld b, b
    rst $18
    jr nz, jr_018_54d6

    ret nc

    sbc a
    ld h, b
    rst $30
    ld [$3cc3], sp
    rst $08
    jr nc, jr_018_5452

    ld e, [hl]
    jr nz, jr_018_5493

    ld bc, $09fe
    or $38
    rst $00
    inc b
    ei
    ld [bc], a
    db $fd
    inc bc
    db $fc
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

    ld b, b
    ret nz

    nop
    ret nz

    add b
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a

jr_018_54d6:
    ret nz

    ccf
    db $10
    rst $28
    ld b, b
    cp a
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
    nop
    rst $38
    nop
    rst $38
    ld bc, $02ff
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    ld a, [hl+]
    rst $38
    dec d
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor e
    rst $38
    ld d, a
    rst $38
    xor a
    rst $38
    ld e, a
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
    rlca
    nop
    jr c, @+$09

    rst $38
    ret nz

    rst $38
    nop
    cp $01
    ldh [$1f], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [hl]
    ld a, $ff
    ccf
    rst $38
    ld c, $ff
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
    add b
    ld a, a
    ret nz

    ccf
    call nz, $e43b
    dec de
    db $e4
    dec de
    ldh a, [rIF]
    ld [hl], d
    adc l
    ld a, e
    add h
    cp e
    ld b, h
    cp l
    ld b, d
    rst $18
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    rst $30
    ld [$28d7], sp
    rst $28
    db $10
    ei
    inc b
    ei
    inc b
    rst $38
    nop
    ld a, a
    add b
    cp a
    ld b, b
    cp a
    ld b, b
    rra
    ldh [$df], a
    jr nz, jr_018_55aa

    ldh [$b7], a
    ld c, b
    xor a
    ld d, b
    xor e
    ld d, h
    ld d, e
    xor h
    cp l
    ld b, d
    sub $29
    dec hl
    call nc, $d22d
    ld [bc], a
    db $fd
    dec de
    db $e4
    ld [bc], a
    rst $38
    ld bc, $02ff
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38

jr_018_55aa:
    dec d
    rst $38
    ld a, [bc]
    rst $38
    dec b
    rst $38
    ld [bc], a
    rst $38
    dec d
    rst $38
    ld a, [hl+]
    rst $38
    dec d
    rst $38
    ld a, [bc]
    rst $38
    ld d, l
    rst $38
    ld a, [hl+]
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor e
    rst $38
    ld d, a
    rst $38
    xor e
    rst $38
    ld d, a
    rst $38
    xor a
    rst $38
    ld e, a
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
    rlca
    nop
    ld a, b
    rlca
    add b
    ld a, a
    nop
    rst $38
    cp $01
    ldh [$1f], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_018_55fc:
    nop
    rst $38
    nop
    di
    ld [hl], c
    rst $38
    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
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
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ld a, [c]
    dec c
    db $fc
    inc bc
    ld hl, sp+$07
    db $fc
    inc bc
    cp h
    ld b, e
    cp [hl]
    ld b, c
    sbc [hl]
    ld h, c
    ld e, a
    and b
    rrca
    ldh a, [rIF]
    ldh a, [$87]
    ld a, b
    add a
    ld a, b
    rst $00
    jr c, jr_018_55fc

    inc a
    db $e3
    inc e
    jp hl


    ld d, $f1
    ld c, $f0
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
    rst $38
    nop
    xor e
    rst $38
    ld d, a
    rst $38
    xor e
    rst $38
    ld d, a
    rst $38
    xor a
    rst $38
    ld d, a
    rst $38
    xor a
    rst $38
    ld e, a
    rst $38
    xor a
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    nop
    nop
    nop
    nop
    rrca
    nop
    ldh a, [rIF]
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ldh [rIE], a
    rst $38
    rst $30
    rst $38
    inc sp
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
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
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
    nop
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
    ei
    nop
    rst $38
    ld bc, $01fe
    cp $00
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
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    db $f4
    dec bc
    ldh a, [rIF]
    db $fc
    inc bc
    ld a, h
    add e
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [bc]
    dec d
    ld b, $19
    ld a, [bc]
    dec d
    ld b, $19
    ld b, $19
    ld b, $19
    ld b, $19
    ld a, [bc]
    dec d
    ld c, $11
    ld b, $19
    dec b
    ld a, [de]
    dec b
    ld a, [de]
    dec b
    ld a, [de]
    dec c
    ld [de], a
    dec c
    ld [de], a
    dec c
    ld [de], a
    dec c
    ld [de], a
    dec b
    ld a, [de]
    dec c
    ld [de], a
    dec c
    ld [de], a
    dec c
    ld [de], a
    dec b
    ld a, [de]
    dec b
    ld a, [de]
    dec c
    ld [de], a
    dec c
    ld [de], a
    dec b
    ld a, [de]
    dec c
    ld [de], a
    dec c
    ld [de], a
    ld a, [bc]
    dec d
    ld a, [bc]
    dec [hl]
    ld a, [bc]
    dec [hl]
    ld a, [bc]
    dec [hl]
    ld a, [bc]
    dec [hl]
    jp z, Jump_000_1a35

    push hl
    ld a, [de]
    push hl
    ld a, [de]
    push hl
    ld a, [bc]
    push af
    ld a, [bc]
    dec [hl]
    ld a, [bc]
    dec [hl]
    ccf
    jp z, $ca3f

    ccf
    jp z, $da3f

    ccf
    jp c, $ca3f

    ccf
    jp z, $d43e

    ld a, $d4
    ld a, $c4
    ld a, $d0
    ld a, $c0
    ld a, $d0
    ld a, [hl]
    nop
    ld a, [hl]
    ld b, b
    ld a, [hl]
    ld b, b
    ld a, [hl]
    ld [hl+], a
    ld a, $5c
    rra
    ld h, c
    ld e, a

jr_018_5757:
    jr nz, jr_018_5798

    nop
    cpl
    db $10
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
    inc b
    ei
    nop

jr_018_5773:
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    add c
    ld a, [hl]
    ld b, b
    cp a
    add b
    ld a, a
    jr nz, @-$1f

    db $10
    rst $28
    jr nc, jr_018_5757

    db $10
    rst $28
    jr jr_018_5773

    ld a, [bc]
    push af
    inc c
    di
    ld b, $f9
    ld a, [bc]
    push af
    ld h, $d9
    inc de
    db $ec

jr_018_5798:
    add hl, hl
    sub $9d
    ld h, d
    xor $11
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
    cp $01
    cp $01
    rst $00
    add b
    pop bc
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
    jr c, jr_018_57c9

    ld a, $01
    ld a, a
    nop
    ld a, a
    nop
    ld a, a

jr_018_57c9:
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
    ld e, a
    jr nz, jr_018_5808

    ldh [$2f], a
    ret nc

    rra
    ldh [$5a], a
    and l
    add [hl]
    ld a, c
    ld bc, $01fe
    cp $00
    rst $38
    ld bc, $00fe
    rst $38
    nop

jr_018_57fd:
    rst $38
    nop

jr_018_57ff:
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b

jr_018_5808:
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh [rNR41], a
    ldh a, [rNR10]
    ld hl, sp+$08
    db $fc
    inc b
    cp $02
    ld a, a
    ld bc, $007f
    ccf
    nop
    rra
    nop
    rrca
    nop
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ld h, b
    sbc a
    jr c, jr_018_57fd

    jr c, jr_018_57ff

    inc e
    db $e3
    ld e, $e1
    rrca
    ldh a, [rIF]
    ldh a, [rTIMA]
    ld a, [$d22d]
    sub l
    ld l, d
    sub b
    ld l, a
    and c
    ld e, [hl]
    or [hl]
    ld c, c
    db $d3
    inc l
    swap h
    ld l, h
    sub e
    and $19
    ld [hl-], a
    call $e51a
    add hl, de
    and $15
    ld [$f10e], a
    ld a, [bc]
    push af
    inc b
    ei
    ld b, $f9
    add d
    ld a, l
    pop bc
    ld a, $d0
    cpl
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    db $f4
    dec bc
    db $f4
    dec bc
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    db $fd
    ld [bc], a
    ld hl, sp+$07
    db $fc
    inc bc
    db $fd
    ld [bc], a
    cp $01
    db $fc
    inc bc
    cp $01
    db $fc
    inc bc
    cp $01
    cp $01
    di
    rrca
    db $fc
    inc bc
    ld a, a
    nop
    rra
    nop
    rlca
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
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
    cp [hl]
    ld b, c
    xor l
    ld d, d
    xor d
    ld d, l
    inc bc
    db $fc
    dec b
    ld a, [$ef10]
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    inc bc
    add c
    add [hl]
    pop bc
    ld b, a
    jp $e34d


    cpl
    di
    rra
    rst $38
    dec bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld b, $fe
    rlca
    ld a, [hl]
    rrca
    ld a, $0d
    inc e
    rrca
    dec e
    ld e, $1d
    dec sp
    add hl, sp
    rra
    dec sp
    rla
    dec sp
    ld d, l
    inc sp
    ld e, a
    ld [hl], a
    ld a, [hl+]
    ld [hl], a
    ld a, [hl+]
    ld h, a
    ld a, [hl]
    rst $28

jr_018_5915:
    inc d
    rst $28
    ld d, b
    ld c, a
    ld [hl], d
    rra
    jr nz, jr_018_593c

jr_018_591d:
    ld [hl+], a
    rra
    ld h, d
    rrca
    ld sp, $1a07
    rlca
    ld a, [de]
    inc bc
    inc c
    inc bc
    inc c
    ld bc, $0007
    inc bc
    nop
    inc bc
    ld b, c
    cp a
    nop
    rst $38
    jr nz, jr_018_5915

    inc d
    db $eb
    db $10
    rst $28
    adc c
    db $76

jr_018_593c:
    jr nz, jr_018_591d

    inc b

jr_018_593f:
    ei
    inc bc
    db $fc
    ld bc, $01fe
    cp $00
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
    jr nz, @-$1f

    jr nz, jr_018_593f

    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rst $08
    ccf
    di
    rrca
    db $fc
    inc bc
    ld a, a
    nop
    rra
    nop
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
    add b
    ld a, a
    ldh [$1f], a
    ld hl, sp+$07
    cp $01
    rst $38

jr_018_5985:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    jr nz, jr_018_5985

    dec de
    ld d, e
    xor h
    xor d
    ld d, l
    ld h, b
    sbc a
    and d
    ld e, l
    ld c, b
    or a
    and b
    ld e, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$0cff], sp
    rst $38
    ld e, $ff
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
    ld [hl], a
    rst $30
    ld [hl], e
    di
    pop hl
    pop hl
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
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
    ld bc, $00fe
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    rrca
    add b
    add a
    ld [$4483], sp
    db $e3
    nop
    pop hl
    db $10
    ldh a, [rSB]
    or b
    ld c, b
    inc a
    ret nz

    ld e, h
    and d
    ld c, $d0
    ld c, [hl]
    sub c
    ld c, a
    or b
    rrca
    ldh a, [rWX]
    or h
    ld a, [bc]
    push af
    ld c, [hl]
    or c
    ld b, [hl]
    cp b
    ld [$84f6], sp
    ld a, b
    jr nz, @-$22

    nop
    db $fc
    nop
    ld hl, sp+$20
    reti


    ld b, b
    or c
    ld [hl], c
    xor [hl]
    inc hl
    call c, $dc23
    rlca
    ld a, b
    rlca
    ld a, b
    ld c, $31
    ld c, $11
    nop
    rlca
    ld b, c
    cp a
    add b
    ld a, a
    ret nz

    ccf
    add b
    ld a, a
    ld h, b
    sbc a
    ld b, b
    cp a
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
    ld a, a
    nop
    rra
    add b
    rlca
    ldh [$f9], a
    rlca
    cp $01
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
    rst $38
    nop
    rst $38
    add b
    ld a, a
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
    rst $38
    nop
    rst $28
    db $10
    rst $28
    db $10
    db $dd
    ld [hl+], a
    ld c, c
    or [hl]
    add hl, bc
    or $ac
    ld d, e
    ld bc, $49fe
    or [hl]
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
    add b
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
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
    inc bc
    db $fc
    ld bc, $00fe
    rst $38
    add b
    rst $38
    ccf
    nop
    inc e
    inc bc
    inc c
    inc de
    add b
    ld c, $08
    add [hl]
    nop
    sbc [hl]
    nop
    inc e
    nop
    inc a
    nop
    jr c, jr_018_5af3

jr_018_5af3:
    jr c, jr_018_5af5

jr_018_5af5:
    ld [hl], b
    ld b, b
    jr nc, jr_018_5af9

jr_018_5af9:
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
    nop
    nop
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
    ccf
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02fe
    ld bc, $0007
    rlca
    ld [$1906], sp
    ld c, $11
    inc b
    dec sp
    db $10
    cpl
    db $10
    cpl
    rst $38
    rst $38
    ld a, a
    rst $38
    sbc a
    ld a, a
    db $e3
    rra
    db $fc
    inc bc
    rst $38
    nop
    ccf
    nop
    rrca
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
    rst $28
    db $10
    cp a
    ld b, b
    ld a, a
    add b
    cp [hl]
    ld b, c
    daa
    ret c

    or d
    ld c, l
    ld [bc], a
    db $fd
    xor e
    ld d, h
    ld hl, $20de
    rst $18
    ld [bc], a
    db $fd
    inc bc
    db $fc
    ld bc, $00fe
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
    nop
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
    ld a, a
    ld a, a
    ccf
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
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    ld a, a
    cp a
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
    inc b
    nop
    ld [bc], a
    nop
    ld bc, $ffff
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
    rlca
    rst $38
    ei
    rlca
    ld bc, $0101
    ld bc, $0000
    jr c, jr_018_5c30

    jr c, jr_018_5c32

    jr jr_018_5c14

    nop
    nop
    add b
    add b
    ldh [$1f], a
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

jr_018_5c14:
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
    ldh a, [$fc]
    inc bc
    ld a, a
    nop
    rra
    nop
    rlca
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop

jr_018_5c30:
    nop
    rst $38

jr_018_5c32:
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
    db $fd
    ld [bc], a
    cp [hl]
    ld b, c
    rst $38
    nop
    rst $38

jr_018_5c45:
    nop
    ld l, e
    sub h
    ld c, d
    or l
    ld b, a
    cp b
    db $eb
    inc d
    ld a, c
    add [hl]
    jr @-$17

    ld c, h
    or e
    ld bc, $00fe
    rst $38
    inc b
    ei
    nop
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_018_5c45

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
    inc bc
    rst $38
    ld b, $ff
    dec b
    rst $38
    ld bc, $88ff
    rst $38
    call z, $f2ff
    rst $38
    ei
    rst $38
    nop
    add b
    nop
    ld b, b
    nop
    jr nz, jr_018_5c87

jr_018_5c87:
    jr nz, jr_018_5c89

jr_018_5c89:
    stop
    ld [$0400], sp
    nop
    ld [bc], a
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
    rst $38
    rst $38
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
    rst $18
    ld a, a
    rst $08
    ld a, a
    rlca
    ldh [rP1], a
    ld hl, sp+$00
    rst $38
    ret nz

    ccf
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    rst $38
    sbc a
    ld a, a
    rst $20
    rra
    ld sp, hl
    rlca
    cp $01
    ld a, a
    nop
    rra
    nop
    rlca
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

jr_018_5cdb:
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ld hl, sp+$07
    cp $01
    di
    inc c
    push af

jr_018_5ce9:
    ld a, [bc]
    dec a
    jp nz, $38c7

    rst $10
    jr z, jr_018_5d66

    adc d
    jr jr_018_5cdb

    ld c, d
    or l
    ld b, e
    cp h
    add hl, bc
    or $08
    rst $30
    ld [bc], a
    db $fd
    and b
    ld e, a
    nop
    rst $38
    ld [$0af7], sp
    push af
    nop
    rst $38
    jr nz, jr_018_5ce9

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [de], a
    rst $38
    ld [$08ff], sp
    rst $38
    ld [bc], a
    rst $38
    inc h
    rst $38
    add hl, bc
    rst $38
    ret nc

    rst $38
    and b
    rst $38
    ld c, c
    rst $38
    rst $00
    rst $38
    or $ff
    reti


    rst $38
    db $db
    rst $38
    or $ff
    rst $38
    rst $38
    reti


    rst $38
    ld a, [$ffff]
    rst $38
    rst $28
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    add b
    nop
    ld b, b
    nop
    ld b, b
    nop
    jr nz, jr_018_5d4b

jr_018_5d4b:
    stop
    ld [$0400], sp
    nop
    ld [bc], a
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
    nop
    rst $38
    nop
    rrca
    nop

jr_018_5d66:
    ld bc, $00f0
    cp $00
    rst $38
    ldh [$1f], a
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
    ld a, a
    nop
    rra
    add b
    inc bc
    ldh [rP1], a
    db $fc
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

jr_018_5d8b:
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
    add b
    ld a, a
    ldh [$1f], a
    ld a, b
    add a
    ld c, [hl]
    or c
    db $d3
    inc l
    or b
    ld c, a
    inc l
    db $d3
    dec c
    ld a, [c]
    add a
    ld a, b
    and b
    ld e, a
    jr nz, jr_018_5d8b

    ld [$02f7], sp
    db $fd
    and b
    ld e, a
    and b
    ld e, a
    ld [$02f7], sp
    db $fd
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
    ld [$02ff], sp
    rst $38
    add b
    rst $38
    ld [$40ff], sp
    rst $38
    sub [hl]
    rst $38
    dec h
    rst $38
    ld a, d
    rst $38
    adc h
    rst $38
    rrca
    rst $38
    ld l, e
    rst $38
    ld [hl], h
    rst $38
    sbc c
    rst $38
    rst $28
    rst $38
    or a
    rst $38
    cp a
    rst $38
    db $dd
    rst $38
    cp [hl]
    rst $38
    ld a, a
    rst $38
    ei
    rst $38
    cp $ff
    rst $38
    rst $38
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
    jr nz, jr_018_5dfd

jr_018_5dfd:
    stop
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    inc bc
    ret nz

    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_018_5e1b:
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    rst $38
    rst $08
    ccf
    di
    rrca
    db $fc
    inc bc
    rst $38
    nop
    ccf
    nop
    rrca
    nop
    inc bc
    nop
    ret nz

    ccf
    jr jr_018_5e1b

    ld b, $f9
    ld b, d
    cp l
    ld b, b
    cp a
    inc d
    db $eb
    dec b
    ld a, [$ff00]
    nop
    rst $38
    nop
    rst $38
    ld [$00f7], sp
    rst $38
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ld [hl], $ff
    nop
    rst $38
    add hl, bc
    rst $38
    ld [bc], a
    rst $38
    jr nz, @+$01

    ld e, c
    rst $38
    ld a, [de]
    rst $38
    daa
    rst $38
    ld e, c
    rst $38
    ld [hl-], a
    rst $38
    inc a
    rst $38
    db $eb
    rst $38
    db $eb
    rst $38
    rst $30
    rst $38
    ld a, b
    rst $38
    db $db
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    rst $08
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    nop
    ld bc, $0200
    inc bc
    inc b
    nop
    nop
    nop
    dec b
    ld b, $07
    ld [$0808], sp
    ld [$0900], sp
    nop
    ld a, [bc]
    dec bc
    inc c
    nop
    dec c
    ld c, $0f
    db $10
    ld [$0808], sp
    ld [$0008], sp
    ld de, $1200
    inc de
    inc d
    dec d
    ld d, $17
    jr @+$0a

    ld [$0808], sp
    ld [$0019], sp
    ld de, $1a00
    dec de
    inc e
    dec e
    ld [$1e08], sp
    rra
    jr nz, jr_018_5ede

    ld [hl+], a
    inc hl
    inc h
    nop
    dec h
    ld h, $27
    ld [$0808], sp
    ld [$2928], sp
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_018_5f03

    ld [hl-], a
    inc sp
    ld [$3408], sp
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

    ld a, [hl-]
    dec sp

jr_018_5ede:
    inc a
    dec a
    ld a, $3f
    ld [bc], a
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld l, $44
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld a, $4c
    ld c, l
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $4e
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]

jr_018_5f03:
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
    ld [$4c63], sp
    ld h, h
    ld [$6665], sp
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld [$6d08], sp
    ld l, [hl]
    ld h, e
    ld c, h
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ld l, $76
    ld [$7877], sp
    ld a, c
    ld a, d
    ld h, e
    ld c, h
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    ld l, $82
    ld [$8483], sp
    add l
    add [hl]
    ld h, e
    ld c, h
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    ld l, $8e
    adc a
    ld [$9008], sp
    ld [$4c63], sp
    sub c
    adc b
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    ld l, $97
    sbc b
    sbc c
    ld [$0808], sp
    ld h, e
    ld c, h
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    ld l, $a1
    ld l, $a2
    and e
    and h
    and l
    ld h, e
    ld c, h
    sbc d
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    ld l, $2e
    xor l
    xor [hl]
    xor a
    or b
    or c
    ld c, h
    sbc d
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
    or b
    cp h
    cp l
    ld a, $4c
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    ld l, $ca
    set 1, h
    call $a1ce
    ld l, $cf
    ret nc

    pop de
    jp nc, $d4d3

    push de
    ld l, $d6
    ld l, $d7
    ret c

    reti


    jp c, $dcdb

    db $dd
    ld [$de08], sp
    rst $18
    ld [$e1e0], sp
    ld [c], a
    db $e3
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld b, $02
    ld [bc], a
    ld [bc], a
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
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $00
    nop
    nop
    nop
    nop
    inc b
    inc bc
    dec b
    dec b
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $00
    nop
    nop
    nop
    nop
    inc bc
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $00
    nop
    nop
    nop
    inc bc
    inc bc
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $02
    ld [bc], a
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
    ld b, $06
    ld b, $00
    ld [bc], a
    ld [bc], a
    ld b, $00
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld b, $00
    ld b, $07
    ld b, $06
    ld b, $02
    ld b, $06
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $07
    ld b, $06
    rlca
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $07
    ld b, $06
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
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
    nop
    ld [bc], a
    ld [bc], a
    ld b, $00
    ld b, $07
    nop
    ld b, $07
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld b, $00
    ld b, $07
    rlca
    ld b, $07
    nop
    nop
    nop
    nop
    ld b, $06
    ld b, $02
    ld [bc], a
    ld b, $04
    inc b
    inc b
    rlca
    ld b, $06
    ld [bc], a
    nop
    nop
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $04
    ld bc, $0004
    nop
    ld b, $07
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $00
    inc b
    inc b
    nop
    nop
    nop
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    dec b
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, b
    nop
    nop
    nop
    nop
    ld b, $02
    ld b, $00
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ldh [rP1], a
    nop
    rra
    nop
    rst $38
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
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    ld bc, $1ffe
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38

jr_018_614d:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_018_6153:
    nop
    rst $38
    nop
    rst $38
    nop
    cp [hl]
    ld b, c
    cp $01
    ei
    inc b
    rst $28
    db $10
    xor h
    ld d, e
    cp c
    ld b, [hl]
    db $e4
    dec de
    jp c, $e825

    rla
    add sp, $17
    or d
    ld c, l
    and d
    ld e, l
    adc d
    ld [hl], l
    jr nz, jr_018_6153

    jr z, jr_018_614d

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
    rra
    ldh [rIE], a
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
    db $fc
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    ld a, [$fd05]
    ld [bc], a
    ld a, [$ea05]
    dec d
    cp $01
    cp d
    ld b, l
    db $e4
    dec de
    sub $29
    xor d
    ld d, l
    xor b
    ld d, a
    ldh [$1f], a
    ret z

    scf
    nop
    rst $38
    and b
    ld e, a
    nop
    rst $38
    add b
    ld a, a
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
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    rlca
    ld hl, sp-$01
    nop
    rst $38
    nop
    ldh a, [rP1]
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
    ld b, $f9
    rst $38
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
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fc
    inc bc
    cp $01
    db $fd
    ld [bc], a
    cp $01
    push af
    ld a, [bc]
    db $f4
    dec bc
    ld [$f115], a
    ld c, $ea
    dec d
    call nz, $d03b
    cpl
    or d
    ld c, l
    call nz, $943b
    ld l, e
    ld d, b
    xor a
    and b
    ld e, a
    sub b
    ld l, a
    ld b, b
    cp a
    add b
    ld a, a
    nop
    rst $38
    and b
    ld e, a
    ld b, b
    cp a
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
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    rlca
    inc b
    rrca

jr_018_629d:
    ld [$101f], sp
    rst $38
    rst $38
    ldh [rIE], a
    rra
    ldh [rIE], a
    nop
    cp $00
    add b
    nop
    nop
    nop
    nop

jr_018_62af:
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
    jr nz, jr_018_629d

    add b
    ld a, a
    ld b, b
    cp a
    sub b
    ld l, a
    ld b, b
    cp a
    add b
    ld a, a
    jr nz, @-$1f

    nop
    rst $38
    add b
    ld a, a
    jr nz, jr_018_62af

    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ld b, b
    cp a
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
    ld bc, $07ff
    rst $38
    rrca
    rst $38
    rra
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
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    rlca
    inc b
    rrca
    ld [$101f], sp
    ld a, a
    ld h, b
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
    add b
    nop
    nop
    ld a, a
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
    rst $38
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
    add c
    cp $7f
    add b
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
    rst $38
    nop
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
    cp $fe
    rst $38
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

    cp $c1
    db $fc
    db $e3
    ld hl, sp-$19
    ld hl, sp-$19
    ldh a, [$ef]
    ld a, [c]
    rst $38
    di
    rst $38
    pop af
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    ld bc, $0300
    nop
    inc bc
    nop
    ld bc, $0100
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
    nop
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
    ld hl, sp+$00
    nop
    rlca
    rst $38
    nop
    cp $00
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
    ld bc, $00ff
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
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    rlca
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
    cp $01
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
    cp $01
    db $fc
    ld [bc], a
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    ld a, h
    add b
    ld a, h
    add d
    ld a, h
    ld [bc], a
    ld l, h
    ld [de], a
    ld a, $40
    ld e, $61
    ccf
    nop
    ld c, $31
    rra
    jr nz, jr_018_64d8

    add h
    rra
    add b
    rrca
    db $10
    dec bc
    inc b
    dec c
    ld [bc], a
    rrca
    ld b, b
    ld b, $49
    rlca
    ld h, b
    ld [bc], a
    dec b
    ld bc, $0226
    dec h
    nop
    inc sp
    nop
    inc de
    nop
    inc bc

jr_018_64d8:
    ld bc, $0000
    ld bc, $0100
    nop
    ld bc, $ff00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    ld bc, $fffe
    nop

jr_018_64fe:
    rst $38
    nop
    ld hl, sp+$07
    nop
    rra
    nop
    ccf
    nop
    ccf
    nop
    rra
    nop
    ccf
    nop
    ccf
    nop
    ld e, a
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ccf
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    rra

jr_018_6525:
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld e, a
    rst $38
    ccf
    rst $38
    ccf
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fd
    rrca
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst $38
    ld bc, $fcff
    nop
    ld hl, sp+$04
    ldh a, [$08]
    ldh [rNR11], a
    pop bc
    jr nz, jr_018_64fe

    ld b, b
    add a
    nop
    rlca
    ld [$100f], sp
    rra
    jr nz, jr_018_65c4

    ld b, b
    ld a, b
    rlca
    ld [hl], b
    adc a
    ld [hl], b
    rrca
    ld [hl], b
    rrca
    ld [hl], $49
    ld [hl-], a
    ld c, l
    jr nc, @+$11

    jr nc, jr_018_65a5

    db $10
    cpl
    db $10
    cpl
    jr @+$09

    jr jr_018_6525

    ld [$0997], sp
    sub [hl]
    ld [$8087], sp

jr_018_65a5:
    ld c, a
    adc b

jr_018_65a7:
    ld b, a
    add b
    ld c, a
    add b
    ld b, [hl]
    ld [bc], a
    call nz, $e004
    ldh [$9f], a
    ldh [$de], a
    ldh a, [$ae]
    ldh a, [$7c]
    ldh a, [$78]
    ldh [$60], a
    ldh [rP1], a
    ret nz

    nop
    rst $38
    nop
    rst $38
    nop

jr_018_65c4:
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    add b
    ld bc, $7f00
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
    add b
    add b
    inc bc
    add b
    inc bc
    add b
    ld b, e
    add b
    ld b, c
    ret nz

    or a
    ret nz

    rst $30
    ldh [$57], a
    ldh [$9f], a
    db $e3
    inc e
    pop hl
    ld [de], a
    ldh [rNR23], a
    ldh [rNR23], a
    ldh a, [$08]
    ldh a, [$88]
    ldh a, [$08]
    ldh a, [$0c]
    ld hl, sp+$14
    ld hl, sp+$14
    ldh a, [$0c]
    ldh [rNR32], a
    ldh [rNR23], a
    ret nz

    ld [hl], b
    ret nz

    jr nc, jr_018_65a7

    ld h, b

jr_018_6628:
    nop
    ret nz

jr_018_662a:
    nop
    ret nz

jr_018_662c:
    nop
    add b

jr_018_662e:
    nop
    add b

jr_018_6630:
    db $10
    rst $28

jr_018_6632:
    ld l, b
    sub a
    sub b
    ld l, a
    ld d, b
    xor a
    and b
    ld e, a
    and b
    ld e, a

jr_018_663c:
    ld b, b
    cp a

jr_018_663e:
    ret nz

    ccf
    ld a, a
    add b
    add b
    ld a, a
    rst $18
    jr nz, @-$1f

    jr nz, jr_018_6628

    jr nz, jr_018_662a

    jr nz, jr_018_662c

    jr nz, jr_018_662e

    jr nz, jr_018_6630

    jr nz, jr_018_6632

    jr nz, jr_018_6655

jr_018_6655:
    nop
    nop
    rst $38
    nop
    rst $38
    rst $18
    jr nz, jr_018_663c

    jr nz, jr_018_663e

    jr nz, @+$01

    rst $18
    rst $38
    rst $18
    cp $de
    nop
    cp $fc
    nop
    db $fc
    nop
    nop
    db $fc
    nop
    db $fc
    db $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $ff
    db $fc
    db $fd
    cp $ff
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
    cp $00
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    inc bc
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    nop
    ld bc, $0100
    nop
    inc bc
    inc bc
    inc b
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
    nop
    nop
    ld bc, $0201
    inc bc
    inc b
    inc bc
    inc b
    ld bc, $0006
    rlca
    nop
    inc bc
    nop
    ld bc, $0300
    nop
    rrca
    rra
    jr nz, jr_018_672c

    nop
    ccf
    ld b, b
    ld a, a
    or a
    ld a, a
    or d
    ld [hl], a
    adc b
    ei
    inc b
    rst $38
    nop
    cp h

jr_018_66fb:
    ld e, b
    ld hl, sp+$78
    ldh a, [$08]
    nop
    db $fc
    nop
    cp $7e
    add b
    cp $20
    db $fc
    ld h, b
    ld hl, sp+$30
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    ld [$10f7], sp
    rst $28
    nop
    rst $38
    jr nz, jr_018_66fb

    nop
    rst $38
    ret nz

    ccf
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

jr_018_672c:
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
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld a, a
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
    jr jr_018_6770

    rra
    ld de, $010f
    ld [hl], $36
    nop
    ld bc, $ff0e
    jr nc, @+$01

    ret nz

    rst $38
    rst $38
    nop
    rst $38
    nop
    ld bc, $00fe
    rst $38
    nop
    rlca

jr_018_6770:
    db $fc
    ld [hl], b
    db $fc
    ld hl, sp-$04
    ld a, b
    db $fc
    ld a, b
    ld hl, sp+$30
    ld hl, sp+$10

jr_018_677c:
    db $fc
    db $10
    cp $00
    cp $e0
    rst $38
    ldh a, [rIE]
    ld hl, sp-$02
    db $fc
    cp $d9
    cp $cc
    cp $80
    rst $38
    ld [$c3ff], sp
    rst $38
    inc a
    cp $40
    ld a, h
    xor b
    ld a, h
    xor e
    ld a, h
    xor e
    ld a, h
    xor e
    ld a, h
    xor e
    jr z, jr_018_67f6

    jr z, jr_018_67f8

    jr z, jr_018_67fa

    jr z, jr_018_677c

    ret z

    inc [hl]
    add sp, $14
    ldh [rNR32], a
    ldh [rNR32], a
    db $fc
    jp Jump_000_00fc


    rst $38
    inc b
    rst $38
    ld c, $ff
    ld a, $ff
    db $fc
    rst $38
    ld hl, sp-$01
    cp b
    db $fc
    xor b
    ld hl, sp-$80
    ld hl, sp+$00
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $01
    cp $00
    rst $38
    ld [bc], a
    db $fd
    dec b
    ld a, [$f30c]
    dec b
    ld a, [$f30c]
    dec b
    ld a, [$e31c]
    inc d
    db $eb
    ld a, [hl-]
    push bc
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop

jr_018_67f6:
    nop
    nop

jr_018_67f8:
    nop
    rst $38

jr_018_67fa:
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    nop
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
    rlca
    db $10
    inc bc
    dec bc
    inc bc
    rla
    rrca
    rlca
    rrca
    rra
    rrca
    rlca
    rlca
    rla
    rlca
    ld h, a
    inc bc
    add e
    nop
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    add b
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rrca
    rst $38
    dec d
    rst $38
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
    rrca
    db $10
    rlca
    inc c
    rlca
    ld d, $07
    ld l, $07
    ld b, [hl]
    inc bc
    add d
    inc bc
    ld [bc], a
    ld bc, $0300
    nop
    nop

jr_018_6851:
    ld a, b
    nop

jr_018_6853:
    rst $38
    ldh [$1f], a
    rst $38
    nop
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rra
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
    nop
    nop
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld bc, $04fe
    ei
    ld b, $f9
    inc b
    ei
    inc c
    di
    ld [$1cf7], sp
    db $e3
    inc e
    db $e3
    jr c, jr_018_6851

    jr c, jr_018_6853

    ld a, b
    add a
    ld [hl], b
    adc a
    ld a, c
    add [hl]
    ld a, [c]
    dec c
    ldh a, [rIF]
    push hl
    ld a, [de]
    add sp, $17
    jp z, Jump_000_1e35

    pop hl
    ld e, h
    and e
    inc [hl]
    srl h
    jp $837c


    ld a, b
    add a
    ld a, b
    add a
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
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
    xor d
    ret nz

    push de
    ret nz

    ld a, [hl+]
    add b
    ld d, l
    and $8c
    rst $20
    sub $e6
    call z, $95c0
    ld hl, sp-$46
    sbc b
    jr jr_018_68e1

jr_018_68e1:
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld d, h
    xor e
    cp $01
    rst $38
    ld hl, sp+$5f
    rst $38
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
    xor d
    ldh [$15], a
    ret nz

    ld [$15c0], a
    ret nz

    ld a, [hl+]
    ret nz

    dec d
    add b
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    ld hl, sp+$07
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
    ld [bc], a
    db $fd
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, $02de
    db $fd
    ld bc, $16fe
    jp hl


    rlca
    ld hl, sp+$2b
    call nc, $f906
    adc a
    ld [hl], b
    cpl
    ret nc

    rra
    ldh [$9f], a
    ld h, b
    rra
    ldh [$9f], a
    ld h, b
    ld a, $c1
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    rst $38
    nop
    rst $38
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
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
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
    ld bc, $01ff
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
    ld b, b
    cp a
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    add b
    ld a, a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    xor d
    ld bc, $0004
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    rst $38
    ret nz

    rst $38
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    ld bc, $0354
    xor b
    ld bc, $0015
    nop
    nop
    nop
    nop
    cp $00
    db $fc
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
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld bc, $0fff
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
    nop
    rst $38
    nop
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
    nop
    nop
    nop
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
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
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
    ret nz

    ld a, [hl+]
    ret nz

    dec d
    nop
    inc a
    nop
    ld a, $00
    ld a, a
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
    cp $57
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    cp $54
    cp $1f
    and e
    ccf
    ld b, [hl]
    ld a, a
    sub d
    rst $38
    and h
    rst $38
    ld [$50ff], sp
    ccf
    ld [bc], a
    ld c, a
    ld b, $00
    nop

jr_018_6b02:
    nop
    nop

jr_018_6b04:
    ld c, $fe
    jr @-$06

    jr jr_018_6b02

    jr jr_018_6b04

    db $fc
    inc e
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
    ld a, a
    rst $38
    ld a, a
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
    nop
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
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    rrca
    ld c, $1f
    inc e
    ccf
    inc a
    ccf
    jr c, jr_018_6bd0

    ld [hl], b
    ld a, [hl]
    ld h, c
    ld a, l
    ld b, e
    ld a, l
    inc bc
    dec sp
    rlca
    inc bc
    rlca
    rlca
    rlca
    rlca
    rlca
    rst $38
    rst $38
    nop
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    cp $ab
    cp $55
    cp $ab
    cp $55
    cp $ab
    cp $55
    cp $ab
    cp $55
    cp $f1
    ld c, $e9
    ld b, $d8
    rlca
    ld [hl], b
    adc a
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

jr_018_6b92:
    rst $38
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    ld a, [bc]
    rra
    ld d, l
    rra
    ldh a, [$3a]
    ld hl, sp-$3b
    db $fc
    cp d
    cp $7d
    cp $7e
    rst $38
    cp $fe
    db $fc
    cp $fd
    cp $78
    db $fc
    jr c, @-$02

    ld a, b
    cp $fc
    cp $fc
    rst $38
    ret nz

    rst $08
    jr nc, @+$11

    ldh a, [rP1]
    dec bc
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

jr_018_6bd0:
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rra
    inc bc
    inc bc
    rlca
    rlca
    rlca
    ld b, $0f
    ld c, $1f
    inc e
    rra
    dec e
    ccf
    add hl, sp
    ld a, a
    ld a, e
    ld a, a
    ld [hl], e
    rst $38
    rst $30
    rst $38
    rst $20
    rst $38
    rst $08
    rst $08
    jr nc, jr_018_6b92

    ld h, b
    rra
    ldh [rNR34], a
    pop hl
    ld a, $c1
    inc a
    jp $837c


    ld a, b
    add a
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
    ldh a, [rIF]
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
    rst $38
    rst $38
    nop
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    rst $38
    nop
    ld a, a
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
    nop
    ret nz

    nop
    ld a, a
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
    rst $38
    nop

jr_018_6c52:
    rst $38
    ld hl, sp-$41
    rst $38
    ld d, l
    rst $38
    xor c
    rst $38
    ld d, l
    rst $38
    xor c
    rst $38
    ld d, l
    rst $38
    xor e
    rst $38
    ld d, e
    rst $38
    xor e
    rst $38
    ld d, e
    rst $38
    xor e
    rst $38
    ld d, e
    rst $38
    and a
    rst $38
    ld d, a
    rst $38
    nop
    rlca
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
    add b
    nop
    ccf
    nop
    ccf
    nop
    ccf
    ccf
    ld a, $3f
    ld a, $3f
    ld a, $3f
    ld a, $3f
    ld a, $3f
    ret nz

    ld a, $00
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    ld bc, $01fc
    db $fc
    inc bc
    db $fd
    inc bc
    pop bc
    rlca
    pop bc
    rrca
    jp $e30f


    rra
    rst $30
    ccf
    rst $20
    ccf
    rst $28
    ld a, a
    rst $08
    rst $18
    jr nz, jr_018_6c52

    ld h, b
    cp a
    ld b, b
    cp a
    ld b, b
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, h
    add e
    ld hl, sp+$07
    add b
    ld a, [hl]
    nop
    cp $00
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    rst $20
    ld c, $f1
    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ld a, h
    sbc e
    jr c, jr_018_6d34

    db $10
    ld l, $ff
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
    cp $00
    db $fd
    nop
    di
    rst $28
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    ld e, a
    rst $38
    sbc [hl]
    rst $38
    ld e, [hl]
    rst $38
    cp [hl]
    rst $38
    ld a, $ff
    cp $3f
    ld a, [hl]
    ccf
    ld a, h
    ccf
    ld a, h
    ccf
    ld a, h
    ccf
    ld a, h
    ccf
    ld a, h
    ccf
    ld a, h
    ccf
    ld a, c
    ccf
    ld a, c
    ccf
    ld sp, hl
    ccf
    add hl, sp
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld c, a
    or e
    rst $38
    inc bc
    rst $38
    di
    rst $38
    db $e3
    rst $38
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
    rst $08

jr_018_6d34:
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
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
    sbc a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    nop
    ccf
    nop
    ccf
    inc bc
    inc a
    rlca
    ld a, c
    rrca
    ld [hl], h
    rrca
    ld a, [hl]
    rra
    ld l, a
    rra
    ld a, a
    rra
    ld a, a
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
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
    ld a, [hl]
    nop
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
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
    rst $38
    rst $38
    ld a, a
    ld a, a
    rra
    rra
    rra
    sbc a
    rrca
    rrca
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    cp $01
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    rst $30
    ld [$08f7], sp
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $28
    rrca
    rra
    inc de
    rrca
    inc e
    inc bc
    ccf
    nop
    rra
    jr nz, jr_018_6de8

    jr c, @+$03

    ld a, $00
    ccf
    nop
    ccf

jr_018_6de8:
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    rst $38
    rst $38
    cp $ff
    cp $ff
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
    cp $ff
    db $fd
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
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
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    nop
    db $fc
    nop
    rst $38
    ret nz

    ld a, $f0
    xor $f8
    push af
    cp $6c
    rst $38
    ld a, $ff
    adc a
    add c
    ld a, [hl]
    add b
    ld a, [hl]
    nop
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [$f0]
    rrca
    ldh [$1f], a
    ldh [rNR34], a
    ret nz

    ccf
    add b
    ld a, [hl]
    add b
    ld a, a
    add b
    ld a, [hl]
    nop
    rst $38
    cp $ff
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
    cp $ff
    ld bc, $fffe
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    ret nz

    nop
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
    rst $38
    nop
    ccf
    nop
    rrca
    ret nz

    di
    rrca
    db $fc
    inc bc
    ld a, a
    add b
    rra
    add b
    rlca
    ret nz

    ld bc, $00c0
    ret nz

    nop
    ldh [$80], a
    rst $38
    and b
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
    jr nz, @+$01

    add b
    rst $38
    ld b, b
    rst $38
    ret nz

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
    add b
    rst $38
    add b
    rst $38
    add b
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
    rst $38
    nop
    rst $38
    nop
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
    ret nz

    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    and b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    and b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ret nz

    rst $38
    xor b
    rst $38
    ret nc

    rst $38
    ld a, [$f8ff]
    rst $38
    nop
    ld bc, $0101
    ld bc, $0201
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    ld bc, $0c0b
    dec c
    ld bc, $0101
    ld c, $0f
    db $10
    ld bc, $0101
    ld de, $1312
    inc d
    dec d
    ld d, $17
    ld bc, $0101
    ld bc, $1918
    ld bc, $1a01
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_018_6f94

    ld [hl+], a
    inc hl
    ld bc, $2401
    dec h
    ld h, $01
    daa
    jr z, jr_018_6f7f

    add hl, hl

jr_018_6f7f:
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_018_6fb8

    ld [hl-], a
    inc sp
    ld bc, $3401
    dec [hl]
    ld bc, $3601
    scf
    jr c, jr_018_6fcc

    ld a, [hl-]

jr_018_6f94:
    dec sp
    inc a
    ld bc, $3d01
    ld bc, $3e01
    ld bc, $3f01
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld bc, $4544
    ld b, [hl]
    ld b, a
    ld c, b
    ld bc, $4a49
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld bc, $5352
    ld d, h
    ld d, l

jr_018_6fb8:
    ld d, [hl]
    ld bc, $5857
    ld e, c
    ld bc, $5b5a
    ld e, h
    ld e, l
    ld e, [hl]
    ld bc, $605f
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]

jr_018_6fcc:
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
    adc d
    adc e
    ld h, d
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
    ld bc, $a3a2
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
    ld e, $b2
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
    ld h, d
    ret c

    reti


    jp c, $dcdb

    ld bc, $dd01
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $01
    rst $20
    add sp, $01
    ld bc, $e901
    ld [$eb01], a
    db $ec
    db $ed
    ld h, d
    xor $01
    ld bc, $01ef
    ld bc, $f1f0
    ld bc, $f3f2
    db $f4
    push af
    or $f7
    ld h, d
    ld hl, sp+$01
    ld bc, $f901
    ld a, [$fcfb]
    ld bc, $fefd
    rst $38
    nop
    ld bc, $0302
    inc b
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
    inc bc
    ld bc, $0101
    ld bc, $0301
    inc bc
    inc bc
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0303
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    inc b
    inc bc
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    ld bc, $0303
    nop
    nop
    nop
    inc b
    inc b
    inc b
    inc bc
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    ld bc, $0301
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
    inc bc
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
    inc bc
    inc bc
    inc bc
    inc bc
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
    nop
    nop
    nop
    inc bc
    ld bc, $0303
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
    inc bc
    ld bc, $0301
    ld bc, $0103
    nop
    inc b
    inc b
    inc b
    inc b
    inc bc
    inc bc
    inc b
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    inc bc
    ld bc, $0103
    ld bc, $0101
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    ld bc, $0301
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    nop
    inc bc
    inc bc
    ld bc, $0301
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0103
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    inc bc
    ld bc, $0303
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    ld bc, $0301
    inc bc
    inc bc
    ld bc, $0301
    inc bc
    inc bc
    inc b
    nop
    nop
    nop
    inc bc
    inc bc
    ld bc, $0301
    ld bc, $0303
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
    ld bc, $0301
    ld bc, $0101
    nop
    nop
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
    ld bc, $0101
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
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
    add b
    add d
    add d
    push bc
    push bc
    push bc
    push bc
    rst $20
    rst $20
    rst $30
    rst $30
    or $f6
    ei
    ei
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
    rra
    rra
    ccf
    ccf
    rra
    rra
    rra
    rra
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
    rrca
    rrca
    daa
    daa
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0303
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0303
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
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    rra
    rra
    rra
    rra
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    ld a, a
    nop
    inc a
    nop
    ld e, l
    ld bc, $012d
    ld d, $00
    dec bc
    nop
    db $fd
    rst $38
    db $fd
    rst $38
    cp $ff
    db $fc
    rst $38
    cp $ff
    db $fd
    rst $38
    rst $38
    rst $38
    db $fd
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
    nop
    nop
    ld [$0008], sp
    nop
    nop
    nop
    add b
    add b
    ret nc

    ret nc

    and b
    and b
    ld h, b
    ld h, b
    ld d, d
    ld d, d
    ld h, b
    ld h, b
    adc c
    adc c
    ld b, h
    ld b, h
    nop
    nop
    ret nz

    ret nz

    and b
    and b
    or c
    or c
    sub h
    sub h
    db $eb
    db $eb
    di
    di
    ld sp, hl
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
    rst $38
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
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    db $fd
    db $fd
    db $fd
    db $fd
    cp $fe
    ld hl, sp-$08
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
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
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ccf
    rrca
    ld a, a
    ccf
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    rst $38
    ld sp, hl
    rst $38
    pop af
    cp a
    ld sp, hl
    rra
    ld hl, sp-$01
    ld sp, hl
    rst $38
    db $fc
    ld a, a
    db $fc
    ld a, a
    db $fc
    ld a, a
    db $fc
    ccf
    cp $3f
    cp $3f
    cp $1f
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld c, $ff
    inc c
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
    add c
    add c
    ret nz

    ret nz

    ld b, b
    ld b, b
    call nc, $dad4
    jp c, $f5f5

    cp [hl]
    cp [hl]
    xor $ee
    or c
    or c
    rst $38
    rst $38
    rst $38
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
    add sp, -$18
    ldh a, [$f0]
    add sp, -$18
    db $fc
    db $fc
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$20fa]
    jr nz, jr_018_7381

jr_018_7381:
    nop
    nop
    nop
    nop
    nop
    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld c, $0e
    ld c, $0e
    rrca
    rrca
    rrca
    rrca
    add [hl]
    add [hl]
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_018_73a7:
    nop
    nop
    nop
    nop
    nop
    add b
    add b
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

jr_018_73b9:
    rst $38
    ld [hl], c

jr_018_73bb:
    rst $28
    ld a, b
    rst $20
    jr c, jr_018_73a7

    jr z, jr_018_73b9

    jr c, jr_018_73bb

    cp b
    rst $30
    cp h
    di
    sub h
    ei
    ld e, h
    ei
    ld e, h
    ei
    ld e, b
    rst $38
    ld l, b
    rst $38
    inc l
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    cp a
    db $d3
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $0105
    ld bc, $0901
    ld bc, $0111
    nop
    nop
    nop
    nop
    ld [$0000], sp
    nop
    ei
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
    nop
    nop
    nop
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
    ld b, b
    jr nz, jr_018_7432

    add b
    add b
    adc d
    adc d
    call nc, $94d4
    sub h
    ret z

    ret z

    db $f4
    db $f4
    rst $38
    rst $38
    rst $30
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

jr_018_7432:
    rst $38
    rst $38
    db $fd
    db $fd
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
    nop
    nop
    add b
    add b
    ldh [$e0], a
    cp $fe
    push af
    push af
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_018_7474

    db $fc
    db $fc
    ldh a, [$f0]
    or b
    or b
    ld a, [bc]
    ld a, [bc]
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $ff01
    rst $38
    rst $38
    rst $38

jr_018_7474:
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    cp [hl]
    pop bc
    cp [hl]
    pop bc
    cp $c1
    rst $38
    ret nz

    rst $18
    ldh [$5f], a
    ldh [$7f], a
    ldh [$7f], a
    ldh [$7f], a
    ldh [$6f], a
    ldh a, [$2f]
    ldh a, [$3f]
    ldh a, [$3f]
    ldh a, [rSVBK]
    rst $38
    ei
    rst $38
    ld a, e
    rst $38
    ld [hl], c
    rst $38
    ld [hl], l
    rst $38
    or l
    rst $38
    cp l
    rst $38
    cp l
    rst $38
    cp d
    rst $38
    jp c, $deff

    rst $38
    sbc $ff
    sbc $ff
    db $fd
    ld a, a
    rst $28
    ld a, a
    rst $28
    ld a, a
    rst $28
    ld a, a
    rst $38
    ld a, a
    rst $30
    ccf
    rst $30
    ccf
    rst $30
    ccf
    rst $38
    ccf
    rst $38
    rra
    ei
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
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
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
    ld bc, $6161
    ld b, c
    ld b, c
    ldh a, [$f0]
    ret c

    ret c

    ld [hl], b
    ld [hl], b
    jr c, jr_018_7528

    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    ld a, $3e
    ld a, $3e
    sbc $de
    ld a, [hl]
    ld a, [hl]
    ld e, a
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    rrca
    rrca
    rlca
    rlca
    ld bc, $0101
    ld bc, $1111
    ld bc, $0b01
    dec bc
    cpl
    cpl
    ccf
    ccf
    db $10
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

jr_018_7528:
    nop
    nop
    inc de
    inc bc
    inc a
    inc a
    ldh [$e0], a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $20
    rst $18
    rst $20
    rst $18
    di
    rst $08
    di
    rst $08
    di
    rst $08
    db $d3
    rst $28
    ld d, e
    rst $28
    ld [hl], e
    rst $28
    ld [hl], e
    rst $28
    ld [hl], c
    rst $28
    ld l, c
    rst $30
    add hl, hl
    rst $30
    ld sp, hl
    ld [hl], a
    cp e
    ld [hl], a
    scf
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    sbc a
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
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    ld l, a
    rst $38
    ld h, a
    rst $38
    ld [hl], a
    rst $38
    ld [hl], a
    rst $38
    rst $30
    rst $38
    or a
    rst $38
    cp a
    rst $38
    cp e
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $18
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
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    pop hl
    pop hl
    ldh [$e0], a
    call nz, Call_000_00c4
    nop
    ld d, $16
    ld a, $3e
    nop
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
    jr c, jr_018_7602

    add b
    add b
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    dec a
    rst $18
    xor d
    ld e, l
    adc [hl]
    ld a, l
    ld e, $ed
    ld e, [hl]
    xor l
    ld e, [hl]
    xor l
    sbc $ad
    call c, $c5af
    cp [hl]
    add l
    cp $87
    cp $87
    cp $c7
    cp $d6
    rst $38
    sbc $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_018_7602:
    rst $38
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
    db $fd
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
    ld a, [c]
    rst $38
    ld a, [c]
    rst $38
    cp $ff
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
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
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
    db $fc
    db $fc
    cp $fe
    ld a, h
    ld a, h
    cp $fe
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    ldh a, [$f0]
    ldh [$e0], a
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
    ld c, $0e
    ld a, [de]
    ld a, [de]
    inc e
    inc e
    ld [$0008], sp
    nop
    cp b
    cp b
    ldh a, [$f0]
    ld b, d
    ld b, d
    inc b
    inc b
    nop
    nop
    ld bc, $0001
    nop
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
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rlca
    rlca
    ld [hl], b
    ld [hl], b
    add c
    add b
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
    ld e, a
    rst $38
    rrca
    rst $38
    ld a, l
    rst $38
    ld [c], a
    ld a, l
    or d
    ld l, l
    and d
    ld a, l
    xor [hl]
    ld [hl], l
    xor [hl]
    ld [hl], l
    ld l, $f5
    ld l, $f5
    ld a, [hl]
    or l
    db $fc
    or a
    db $fc
    or a
    db $fc
    or a
    or b
    rst $38
    or d
    rst $38
    di
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld h, a
    rst $38
    and a
    rst $38
    and e
    rst $38
    and e
    rst $38
    pop af
    rst $38
    ld [hl], c
    rst $38
    ld [hl], c
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    nop
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
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld a, b
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    or $f6
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    ld [bc], a
    rla
    ld [de], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld de, $0b01
    ld bc, $0105
    ld [hl+], a
    nop
    inc b
    nop
    ld [hl+], a
    nop
    ld de, $2800
    nop
    ld d, b
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_018_7756

jr_018_7756:
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    ld [bc], a
    nop
    ld de, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    inc b
    nop
    ld bc, $0e01
    ld c, $f2
    ldh a, [rNR14]
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
    ld b, b
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    daa
    ld sp, hl
    ld h, e
    cp l
    ld h, a
    cp c
    ld h, e
    cp l
    ld h, e
    cp l
    ld h, e
    cp l
    ld h, e
    cp l
    db $e3
    cp l
    di
    cp l
    di
    cp l
    sub e
    db $fd
    sub c
    rst $38
    sbc h
    rst $38
    sbc l
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
    db $eb
    rst $38
    set 7, a
    rst $20
    rst $38
    rst $20
    rst $38
    di
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ldh a, [rIE]
    cp b
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $05ff
    rst $38
    rlca
    rst $38
    rlca
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
    db $fc
    db $fc
    add a
    add b
    ld d, h
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    add d
    nop
    ld b, h
    nop
    nop
    nop
    ld d, h
    nop
    ld a, [hl+]
    nop
    push de
    add b
    xor d
    add b
    sub l
    add b
    xor d
    add b
    inc d
    nop
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, l
    ld b, b
    ld a, [bc]
    nop
    ld hl, $2820
    jr nz, jr_018_7873

    jr nz, jr_018_7865

    jr nz, jr_018_7867

    jr nz, @+$12

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
    ld [$0c08], sp
    ld [$0909], sp
    inc e
    inc e
    ld [$05e8], a
    inc b
    rlca
    inc b
    dec b
    inc b
    dec [hl]

jr_018_7865:
    inc b
    dec e

jr_018_7867:
    inc b
    dec a
    inc b
    inc sp
    ld [bc], a
    ld a, [hl+]
    ld [bc], a
    ld a, [de]
    ld [bc], a
    rst $38
    rst $38
    rst $38

jr_018_7873:
    rst $38
    rst $38
    rst $38
    cp [hl]
    jp $837e


    ld a, [hl]
    add e
    ld a, h
    add e
    ld a, h
    add e
    ld a, $c3
    cp [hl]
    jp $c33e


    ld a, $c3
    ld a, $c3
    cp [hl]
    jp $c3be


    cp a
    jp $ffe3


    jp hl


    rst $38
    ld l, c
    rst $38
    add hl, hl
    rst $38
    add hl, hl
    rst $38
    ld l, c
    rst $38
    add hl, hl
    rst $38
    add hl, hl
    rst $38
    xor c
    rst $38
    xor l
    rst $38
    xor l
    rst $38
    or l
    rst $38
    or l
    rst $38
    or l
    rst $38
    or l
    rst $38
    push af
    rst $38
    push af
    rst $38
    push af
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
    rst $20
    rst $20
    add a
    rlca
    pop bc
    ld bc, $ff7f
    cp a
    rst $38
    rra
    rst $38
    cp a
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    ld e, a
    rst $38
    xor a
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld e, a
    rst $38
    xor a
    rst $38
    ld e, a
    rst $38
    xor a
    rst $38
    xor b
    nop
    ld b, b
    nop
    ld [$0000], sp
    nop
    add b
    nop
    ld b, d
    ld [bc], a
    add b
    nop
    ld b, b
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fd
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
    inc bc
    inc bc
    dec a
    inc a
    jp Jump_018_47c0


    nop
    ld c, $00
    dec [hl]
    nop
    ld b, c
    rst $38
    nop
    rst $38
    nop
    rst $38
    xor b
    rst $38
    inc b
    rst $38
    and b
    rst $38
    ld [hl+], a
    rst $38
    add e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec de
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    dec bc
    db $fc
    dec bc
    db $fc
    dec bc
    db $fc
    dec bc
    db $fc
    dec bc
    db $fc
    dec bc
    db $fc
    rrca
    db $f4
    sbc a
    ldh a, [$ce]
    ldh a, [$2c]
    ldh a, [$2c]
    ldh a, [$7c]
    ldh [$2c], a
    ldh a, [$38]
    ldh [$28], a
    ldh a, [$28]
    ldh a, [rNR41]
    ldh a, [rNR41]
    ldh a, [$30]
    ldh [rNR41], a
    ldh a, [$30]
    ldh [rNR41], a
    ldh a, [$b0]
    ldh [$b0], a
    ldh a, [$b0]
    ldh [$b0], a
    ldh [$b0], a
    ldh [$b0], a
    ldh [$b0], a
    ldh [$b0], a
    ldh [$f0], a
    ldh [$b0], a
    ldh [$ef], a
    ldh [$ee], a
    pop hl
    db $ec
    db $e3
    db $eb
    db $e4
    add sp, -$19
    db $ec
    db $e3
    db $ec
    db $e3
    db $ec
    db $e3
    ld hl, sp-$09
    db $fd
    ld a, [c]
    xor $e1
    db $ec
    db $e3
    jp hl


    ldh [$c3], a
    ret nz

    rst $00
    ret nz

    add a
    add b
    ret c

    ldh a, [$90]
    ldh a, [rNR10]
    ldh [$f0], a
    ldh [$f0], a
    ldh [$f0], a
    ldh [$f0], a
    ldh [$f1], a
    ldh [$f1], a
    pop af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh [$e0], a
    ld a, [c]
    ld a, [c]
    ld [c], a
    ld [c], a
    ret nz

    ret nz

    ld [hl], h
    ld [hl], h
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
    ld bc, $ff00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld [$f5ff], a
    rst $38
    ld [$d5ff], a
    rst $38
    ldh [rIE], a
    pop af
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
    db $fd
    rst $38
    cp $ff
    call c, $feff
    rst $38
    ld e, h
    rst $38
    xor d
    rst $38
    ld e, b
    rst $38
    cp b
    rst $38
    inc bc
    inc bc
    ld [hl], c
    ld [hl], b
    adc a
    add b
    ld [hl], a
    nop
    rst $38
    nop
    ld a, a
    nop
    cp a
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
    inc b
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    rst $18
    ldh [$ef], a
    ret nc

    rst $30
    adc b
    db $fd
    ld [bc], a
    rst $10
    jr z, jr_018_7af6

    add h
    cp $01
    rst $18
    jr nz, @+$03

    cp $01
    cp $01

Call_018_7a85:
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $21
    sbc $21
    sbc $61
    sbc [hl]
    ld h, c
    sbc [hl]
    ldh [$1f], a
    pop bc
    ld a, $c0
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
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ret c

    daa
    cp h
    ld b, e
    ld l, h
    add e
    sub [hl]
    ld h, b
    dec bc
    ldh a, [rP1]
    db $fd
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
    ld hl, sp+$00
    inc bc
    inc bc
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
    add b
    add b

jr_018_7af6:
    dec b
    dec b
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    adc c
    adc c
    ld bc, $0901
    add hl, bc
    nop
    nop
    nop
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
    rst $38
    rst $38
    cp [hl]
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld e, a
    rst $38
    cpl
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    ld d, a
    rst $38
    dec sp
    rst $38
    ld e, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38

jr_018_7b2e:
    cp a
    rst $38

jr_018_7b30:
    ret nz

    nop

jr_018_7b32:
    ld bc, $1200
    nop
    sbc a
    nop
    rst $38
    nop
    db $fc
    nop
    ld [c], a
    ld [bc], a
    jr nc, jr_018_7b70

    rst $38
    rst $38
    db $ed

jr_018_7b43:
    rst $38
    ld a, e
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    nop
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ld d, $ff
    ld a, [bc]
    rst $38
    dec b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    jr nz, jr_018_7b43

    sub c
    ld l, [hl]
    ld bc, $2ffe
    ret nc

    ld c, $f0
    jr c, jr_018_7b2e

    jr nc, jr_018_7b30

jr_018_7b70:
    jr nz, jr_018_7b32

    ld h, b
    add c
    ld b, d
    add c
    pop bc
    ld [bc], a
    push bc
    ld [bc], a
    add b
    rlca
    add l
    ld b, $82
    dec c
    adc d
    dec c
    sbc c
    ld c, $9b
    inc e
    dec de
    inc e
    inc sp
    inc e
    ld d, $38
    ld [hl], $38
    dec [hl]
    jr c, jr_018_7bc7

    add hl, sp
    ld [hl], h
    dec sp
    ld hl, $217f
    ld a, a
    and b
    ld a, a
    or b
    ld a, a
    or l
    ld a, d
    or a
    ld a, b
    or h
    ld a, c
    or c
    ld a, h
    or h
    ld a, c
    ld hl, sp+$3f
    ld hl, sp+$3f
    ld a, b
    cp a
    ld e, b
    cp a
    ld e, l
    cp [hl]
    ld c, a
    cp a
    ld c, $ff
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
    rst $38
    nop

jr_018_7bc7:
    rst $38
    ld bc, $00fe
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
    db $fc
    nop
    ld hl, sp+$00
    rst $00
    rlca
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld hl, sp-$08
    call nz, Call_000_26c4
    ld h, $b2
    or d
    ld sp, hl
    ld sp, hl
    add c
    add c
    and b
    and b
    sub b
    sub b
    db $10
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
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    ld [$77ff], a
    rst $38
    xor $ff
    db $fc
    rst $38
    ld a, [$f4ff]
    rst $38
    xor b
    rst $38
    ld d, b
    rst $38
    and b
    rst $38
    cp a
    nop
    ld a, a
    nop
    rst $38
    nop
    db $fc
    nop
    db $e4
    inc b
    inc hl
    jr nz, jr_018_7c6c

    nop
    ld a, h
    nop
    db $d3
    rst $38
    db $e3
    rst $38
    rst $10
    rst $38
    rst $28
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fd
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    ld a, l
    rst $38
    ld a, a
    rst $38
    dec e
    rst $38
    xor e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add d
    ld a, a
    rst $28
    rra
    inc e
    ccf
    nop
    ld a, a
    inc bc
    ld a, a
    sbc a
    rst $28
    ld e, a
    cp a
    rst $18
    ccf
    cp a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38

jr_018_7c6c:
    rst $38
    ld sp, hl
    ei
    ldh [$f1], a
    ldh [$e1], a
    pop hl
    ld [hl], c
    pop hl
    di
    ld h, c
    ld h, [hl]
    ld [hl], c
    and $71
    db $e3
    db $e3
    db $e3
    jp $c3e3


    rst $20
    jp $e79a


    add b
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld [bc], a
    db $fd
    ld c, $f1
    cp h
    ld b, e
    inc e
    db $e3
    dec l
    ld a, [c]
    ld h, c
    cp $63
    db $fc
    xor $f1
    ld a, l
    ld [c], a
    dec h
    ret nz

    ld a, c
    add c
    rst $20
    ld [bc], a
    cp l
    adc $f2
    db $fd
    inc b
    ei
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
    nop
    cp $01
    cp $80
    ld a, [hl]
    nop
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
    jr jr_018_7cc8

jr_018_7cc8:
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    ret nz

    ret nz

    ld b, b
    ld b, b
    jr nz, jr_018_7d04

    nop
    nop
    db $10
    db $10
    ld [bc], a
    nop
    add hl, de
    ld [$0406], sp
    ld de, $8200
    ld [bc], a
    ld bc, $0801
    nop
    stop
    nop
    nop
    nop
    nop
    jr nz, jr_018_7cfe

jr_018_7cfe:
    db $d3
    nop
    ld a, b
    rst $38
    ld a, [hl-]
    rst $38

jr_018_7d04:
    db $10
    rst $38
    jr nc, @+$01

    db $10
    rst $38
    jr nc, @+$01

    inc d
    rst $38
    nop
    rst $38
    rst $38
    nop
    db $fc
    nop
    call nz, Call_018_4704
    ld b, b
    inc bc
    nop
    jp $8300


    nop
    ld b, l
    nop
    ret nc

    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    and b
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ld hl, sp-$01
    ld hl, sp-$01
    rst $38
    rst $38
    xor e
    rst $38
    dec e
    rst $38
    and b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    rrca
    ldh a, [$3f]
    ret nz

    and b
    ret nz

    sub b
    ldh [$80], a
    ld hl, sp-$20
    ld hl, sp-$0c
    ld hl, sp-$08
    db $fc
    ld a, [$fcfc]
    cp $fc
    cp $dc
    cp $fc
    cp $cf
    cp $ef
    sbc $ff
    adc $bf
    adc $bf
    adc $ff
    adc [hl]
    db $fc
    adc [hl]
    xor h
    sbc $af
    sbc $cd
    cp $cd
    cp $c9
    cp $a9
    db $fc
    ld e, $fd
    ld [de], a
    db $fd
    ld a, [bc]
    db $fd
    adc b
    ld a, a
    inc b

jr_018_7d81:
    ei
    nop
    rst $38
    or b
    ld e, a
    add b
    ld a, a
    ld [hl], b
    xor a
    pop bc
    ld a, [hl]
    ld b, c
    cp $81
    cp $c3
    inc a
    add d
    ld a, l
    add l
    ld a, b
    ld b, $f9
    ld a, [bc]
    pop af
    dec c
    ldh a, [rNR14]
    db $e3
    nop
    rst $28
    jr nz, jr_018_7d81

    add b
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
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
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
    rst $38
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
    cpl
    cpl
    dec bc
    dec bc
    ld bc, $0001
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld [$0000], sp
    nop
    nop
    nop
    add l
    add b
    ld a, [bc]
    nop
    dec d
    nop
    ld [hl+], a
    jr nz, jr_018_7e50

    db $10
    or b
    db $10
    add sp, $08
    ldh a, [rP1]
    ld d, h
    inc b
    xor b
    nop
    db $fc
    nop
    rst $38
    ld bc, $01f9
    jr jr_018_7e2a

    adc a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nc

    nop
    ld a, [c]
    nop
    or $00
    ld b, c
    rst $38
    adc e
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38

jr_018_7e2a:
    xor e
    rst $38
    ld c, c
    rst $38
    db $eb
    rst $38
    db $fd
    rst $38
    di
    rst $38
    add e
    rst $38
    rst $38
    rst $38
    ld l, e
    rst $38
    rra
    rst $38
    ld a, [hl-]
    rst $38
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ld h, b
    rra
    jr nz, jr_018_7e6b

    db $10
    rrca
    db $10
    rrca

jr_018_7e50:
    db $10
    rrca
    db $10
    rrca
    db $10

jr_018_7e55:
    rrca
    db $10

jr_018_7e57:
    rrca
    db $10

jr_018_7e59:
    rrca
    db $10
    rrca
    jr nz, jr_018_7e7d

    jr nz, jr_018_7e7f

    jr nz, jr_018_7e81

    jr nz, jr_018_7e83

    nop
    ccf
    nop
    ccf
    ld b, b
    ccf
    ld b, b

jr_018_7e6b:
    ccf
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    jr nz, jr_018_7e55

    jr nz, jr_018_7e57

    jr nz, jr_018_7e59

    ld h, b
    sbc a
    ld h, b

jr_018_7e7d:
    sbc a
    ld h, b

jr_018_7e7f:
    sbc a
    ld [hl], b

jr_018_7e81:
    adc a
    ld h, b

jr_018_7e83:
    sbc a
    ldh [$1f], a
    ret nz

    ccf
    ldh [$1f], a
    ret nz

    ccf
    and b
    rra
    ldh [rIF], a
    and b
    rra
    add b
    ld a, a
    nop
    ld a, a
    add c
    ld a, a
    ld bc, $017f
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    inc bc
    ei
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $30
    rlca
    rst $30
    rlca
    rst $28
    rrca
    xor a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    di
    jp hl


    jp hl


    ld sp, hl
    ld sp, hl
    ld l, a
    ld l, a
    ret nc

    ret nc

    ldh a, [$f0]
    ld d, b
    ld d, b
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
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $28
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
    cp a
    rst $38
    ld e, a
    rst $38
    cp d
    rst $38
    ld a, [hl+]
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0901
    ld [$809f], sp
    ccf
    nop
    ld a, a
    ld b, b
    sbc a
    nop
    rst $08
    nop
    rst $38
    db $10
    rst $20
    nop
    rst $38
    ld [$0477], sp
    cp e
    nop
    rrca
    ld [bc], a
    inc c
    nop
    ld b, $00
    ld [bc], a
    nop
    rlca
    nop
    or a
    nop
    ld d, l
    nop
    add b
    rst $38
    xor b
    rst $38
    call nz, $8cff
    rst $38
    xor h
    rst $38
    inc e
    rst $38
    ld [$04ff], sp
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
    rst $30
    rlca
    rst $38
    rrca
    rst $28
    rrca
    rst $28
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $18
    rra
    scf
    rra
    scf
    ccf
    daa
    ccf
    ld h, a
    ccf
    ld h, a
    ccf
    ld b, a
    ld a, a
    ld b, a
    ld a, a
    rst $18
    ld a, a
    db $d3
    rst $38
    rst $00
    rst $38
    rst $08
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
    cp $fe
    cp e
    cp e
    rst $38
    rst $38
    ld a, [hl]
    ld a, [hl]
    jr jr_018_7fb6

    jr c, @+$3a

    ld a, e
    ld a, e
    ld [hl], e
    ld [hl], e
    ld b, c
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_018_7fb6:
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
    rst $30
    rst $38
    rst $38
    rst $38

jr_018_7fd0:
    add d
    nop
    ld h, a
    nop
    and $00
    ld b, c
    ld bc, $0002
    ld e, a
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
    ld b, b
    rst $38
    ld [$ffff], sp
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    add b
    ccf
    nop
    rst $38
    ld b, b
    rst $38
    db $20
