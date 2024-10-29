SECTION "ROM Bank $095", ROMX[$4000], BANK[$95]

    rlca
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
    rst $38
    cp $f8
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    ld bc, $01fe
    cp $07
    ld hl, sp+$1f
    ldh [$3f], a
    ret nz

    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    cp e
    inc b
    cp [hl]
    ld bc, $04fb

jr_095_402c:
    rst $38
    nop
    db $fd
    nop
    rst $18
    db $20, $9f
    jr nz, jr_095_402c

    nop
    rst $38
    nop
    ei
    inc b
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    ei
    nop
    rst $30
    nop
    cp $00
    ld hl, sp+$00
    db $fc
    nop
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    rst $38
    nop
    rst $30
    nop
    cp $00
    rst $08
    nop
    rst $18
    nop
    sbc d
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
    cp a
    nop
    ld a, a
    nop
    rst $18
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld e, $00
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    sbc a
    nop
    sbc a
    nop
    ld a, a
    nop
    sbc $00
    cp $00
    rst $38
    nop
    rst $38
    nop
    add e
    nop
    ld b, a
    nop
    add c
    nop
    ret


    nop
    ld bc, $8a00
    nop
    ld b, $00
    rlca
    nop
    rlca
    nop
    dec c
    nop
    or [hl]
    nop
    sbc a
    nop
    ld d, [hl]
    ld bc, $01ee
    ld e, h
    ld bc, $001b
    ld c, a
    nop
    ld a, e
    nop
    ld b, c
    nop
    ld a, l
    nop
    ld e, a
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
    inc b
    rst $38
    nop
    rst $38
    ld sp, hl
    ld c, $f2
    dec c
    rst $30
    dec c
    cp h
    ld c, a
    cp a
    ld c, a
    rst $18
    ld a, a
    cp e
    ld e, a
    rst $18
    ccf
    cp a
    ld a, a
    cp a
    ld a, a
    rst $38
    ld a, a
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
    db $fc
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
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
    db $fd

jr_095_4121:
    inc bc
    db $fc
    inc bc
    cp h
    ld b, e
    ld a, [hl]
    pop bc

jr_095_4128:
    cp [hl]
    pop bc
    cp a
    ld d, b
    ei
    inc d
    rst $28
    jr jr_095_4128

    jr jr_095_4121

    ld de, $18e7
    rst $38
    add b
    ei
    inc b
    ei
    inc b
    rst $30
    ld [$02fd], sp
    db $dd
    ld [hl+], a
    db $fc
    inc bc
    cp l
    ld b, d
    cp e
    ld b, h
    cp l
    ld b, d
    ld hl, sp+$07
    cp $01
    ld e, b
    daa
    db $f4
    dec bc
    ld sp, hl
    rlca
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    cp c
    ld b, $fd
    ld [bc], a
    ld a, a
    nop
    ld a, h
    inc bc
    ld a, a
    nop
    ld a, c
    ld b, $7d
    ld [bc], a
    ld [hl], l
    ld [bc], a
    db $fc
    inc bc
    rst $30
    nop
    rst $38
    nop

jr_095_4170:
    rst $18
    jr nz, jr_095_4170

    ld [bc], a
    cp c
    ld b, [hl]
    rst $38
    nop
    db $fd
    ld [bc], a
    cp [hl]
    ld bc, $04bb
    cp a
    nop
    db $fc
    inc bc
    rst $38
    nop
    rst $20
    ld [$00bf], sp
    sub a
    ld [$00bf], sp
    ei
    inc b
    dec l
    ld [bc], a
    sbc $03
    db $ec
    inc bc
    sbc $01
    ld a, a
    ld bc, $01be
    rst $38
    nop
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    rst $18
    nop
    rst $38
    ld bc, $0df2
    cp a
    nop
    ld e, [hl]
    ld bc, $057a
    cp $01
    db $fc
    inc bc
    ei
    inc b
    ei
    add h
    db $fd
    ld b, $fd
    ld b, $f9
    ld b, $f8
    rlca
    db $fd
    inc bc
    db $fd
    inc bc
    rst $10
    dec hl
    ld sp, hl
    rlca
    db $eb
    scf
    pop de
    cpl
    ret nc

    ccf
    push bc
    ccf
    rst $38
    ccf
    rst $38
    rra
    db $db
    ccf
    cp a
    ld e, e
    ld a, a
    rst $38
    ld [hl], a
    rst $38
    rst $38
    ld a, a
    ccf
    rst $38
    rst $38
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$e0ff]
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
    ldh a, [$80]
    nop
    nop
    nop
    nop
    nop
    nop
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
    cp a
    ld a, a
    rst $38
    rra
    rst $28
    rra
    rst $30
    rrca
    rst $28
    rla
    inc l
    rst $10
    ld b, [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec b
    rst $38
    inc d
    rst $38
    inc d
    rst $38
    ld c, b
    rst $38
    ld b, c
    rst $38
    ld d, b
    rst $38
    ld b, h
    rst $38
    db $ec
    rst $38
    db $ec
    rst $38
    db $ec
    rst $38
    sub $ff
    db $d3
    rst $38
    and c
    rst $38
    ld c, d
    or l
    inc b
    ei
    ld [bc], a
    db $fd
    ld l, b
    or a
    ld [$88f7], sp
    ld [hl], a
    sub [hl]
    ld l, c
    adc c
    db $76
    ld a, [bc]
    push af
    or a
    ld l, b
    adc h
    ld [hl], e
    ld d, $e9
    add [hl]
    ld a, c
    jp z, $c075

    ld a, a
    add e
    ld a, [hl]
    and b
    ld a, a
    add h
    ld a, a
    jp nz, $ee3f

    rla
    db $d3
    ld l, $e0
    rra
    pop hl
    rra
    ld d, c
    cp a
    xor e
    ld a, a
    jp z, $2b3f

    rst $38
    xor e
    ld a, a
    ld l, a
    sbc a
    ld c, l
    cp a
    ret


    cp a
    db $fc
    sbc a
    ld [$12ff], sp
    rst $38
    ld b, $ff
    pop hl
    ccf
    add e
    ld a, a
    add e
    ld a, a
    ld l, a
    sbc a
    sbc e
    rst $38
    rla
    rst $38
    inc de
    rst $38
    cpl
    rst $38
    ld l, a
    rst $38
    cpl
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    rst $20
    rst $38
    xor a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    add sp, -$01
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    call c, $d700
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, a
    rst $38
    ccf
    rst $18
    ccf
    rst $20
    rra
    di
    rrca
    call c, $b223
    ld c, a
    and $19
    or h

jr_095_4311:
    ld c, e
    sbc b
    ld [hl], a
    sbc d
    ld h, l
    ld h, e
    db $fc
    ei
    ld h, h
    xor d
    ld [hl], l
    sub e
    ld l, h
    jp nc, $886f

    ld [hl], a
    adc a
    ldh a, [$9d]
    ld a, [c]
    rlca
    ld hl, sp-$7f
    cp $00
    rst $38
    nop
    rst $38
    ld d, l
    cp [hl]
    jr nz, jr_095_4311

    ld bc, $01fe
    cp $00
    rst $38
    ld b, c
    rst $38
    ldh [$7f], a
    ld [$04f7], sp

Jump_095_433f:
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld bc, $63ff
    rst $38
    ld sp, $1cff
    rst $38
    add hl, hl
    rst $38
    inc e
    rst $38
    ld e, b
    rst $38
    sub b
    rst $38
    add $fd
    jp z, $d0fd

    rst $38
    db $fd
    ld a, [$ffe0]
    pop af
    cp $f0
    rst $38
    ld hl, sp-$01
    add sp, -$01
    ei
    rst $38
    ld a, [$fdff]
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
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

jr_095_4384:
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
    and h
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
    cp a
    nop
    rra
    nop
    inc e
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
    db $fc
    nop
    xor $00
    rst $38
    nop
    cp $00
    rst $38
    rst $38
    rst $38
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
    ccf
    ld l, a
    sbc a
    ld e, a
    xor a
    ld d, a
    xor e
    jp c, Jump_095_7f25

    add b
    rlca
    ld hl, sp+$0f
    ldh a, [$6f]
    sub b
    rst $28
    db $10
    rst $20
    jr jr_095_4384

    ld h, b
    cp a
    ret nz

    ld a, [hl]
    add b
    ld a, a
    add b
    ld a, $c0
    cp a
    ld b, b
    ld a, [hl]
    and b
    sbc [hl]
    ldh [$3e], a
    ret nz

    scf
    ret z

    ld a, [hl]
    add b
    db $fc
    nop
    ld a, [hl]
    add b
    ld a, h
    add b
    cp $80
    ld a, [hl]
    add b
    ld d, [hl]
    xor b
    ld a, h
    add b
    ld l, $d0
    sbc [hl]
    ld h, b
    sbc [hl]
    ld h, b
    inc l
    ret nc

    ld e, h
    and b
    cp h
    ld b, b
    db $fc
    nop
    ld a, h
    add b
    ld a, $c0
    ld a, d
    add b
    ld a, l
    add b
    db $fc
    nop
    ld a, h
    add b
    ld a, $c0
    ld a, [hl]
    add b
    ld [hl], $c0
    ld a, h
    add b
    inc a
    ret nz

    inc a
    ret nz

    ld a, [hl]
    add b
    ld a, h
    add b
    cp $80
    ld a, $c0
    cp $80
    ld a, $c0
    cp [hl]
    ret nz

    sbc $e0
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld e, a
    and b
    cpl
    ldh a, [$9f]
    ldh [$8b], a
    db $f4
    rst $08
    ldh a, [$cf]
    or b
    rst $10
    cp b
    sbc e
    db $f4
    ei
    db $f4
    rst $38
    ldh a, [$f6]
    ld sp, hl
    rst $30
    ld a, [$f8ff]
    ei
    db $f4
    rst $38
    cp $ff
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
    cp $ff
    ld sp, hl
    cp $f0
    rst $38
    ret nz

    rst $38
    add b
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
    and a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    add $00
    db $ec
    nop
    ldh a, [rP1]
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
    rst $38
    nop
    rst $38
    nop
    db $dd
    nop
    ccf
    nop
    ld a, [hl]
    nop
    ld a, a
    nop
    rla
    nop
    ld bc, $fe00
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
    ld a, a
    ld e, a
    rrca
    rrca
    rlca
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    cp $03
    rst $38
    inc bc
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
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    cp $03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fd
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fd
    inc bc
    db $fc
    inc bc
    db $fd
    inc bc
    cp $03
    cp $03
    db $fd
    inc bc
    db $fc
    inc bc
    cp $03
    rst $38
    inc bc
    rst $38
    inc bc
    db $fc
    inc bc
    cp $03
    rst $38
    inc bc
    db $fd
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
    add e
    inc bc
    add e
    inc bc
    add e
    inc bc
    jp $c303


    inc bc
    jp $c303


    inc bc
    db $d3
    inc bc
    db $d3
    inc bc
    rst $30
    inc bc
    rst $28
    inc bc
    rst $28
    inc bc
    rst $30
    inc bc
    rst $38
    inc bc
    inc bc
    rst $38
    rlca
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    ld hl, sp-$10
    ldh [$c0], a
    add b
    add b
    rst $38
    nop
    dec bc
    db $f4
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
    cp $ff
    ldh [rIE], a
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    ld a, a
    add b
    rst $38
    nop
    xor l
    nop
    rst $38
    nop
    ld hl, $d900
    nop
    ret nc

    nop
    and b
    nop
    add c
    nop
    rst $28
    rst $38
    jp Jump_000_00ff


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
    db $fc
    rst $38
    cp $ff

jr_095_45aa:
    rst $38
    rst $38
    rst $38
    rst $38

jr_095_45ae:
    rst $38
    rst $38
    rst $38
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
    adc e
    rst $38
    db $dd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld e, a
    cp a
    adc a
    ld a, a
    daa
    rst $18
    and e
    ld e, a
    xor c
    ld d, a
    db $fc
    inc bc
    or $01
    ld a, [c]
    ld bc, $01d2
    jp $9300


    nop
    add c
    nop
    add c
    nop
    add c
    nop
    ret nz

    nop
    ret nz

    nop
    pop bc
    nop
    adc c
    nop
    adc b
    nop
    add c
    nop
    add c
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
    nop

Call_095_4603:
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
    add b
    add b
    nop
    nop
    add b
    ret nz

    nop
    nop
    add b
    jr nz, jr_095_45aa

    ld [hl-], a
    add b
    jr c, jr_095_45ae

    ld a, [de]
    add b
    ld a, e
    add b
    ld e, a
    and b
    ld e, l
    and d
    inc l
    db $d3
    ld e, b
    and a
    inc d
    db $eb
    inc bc
    rst $38
    rrca
    rst $38
    ld e, $ff
    cp e
    db $fc
    cp a
    ldh a, [$df]
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
    rla
    add sp, $00
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld a, [$dfff]
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
    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    call z, $d000
    nop
    and b
    nop
    jr nz, jr_095_467c

jr_095_467c:
    ldh [rP1], a
    ret nz

    nop
    or h
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
    ld hl, $29de
    sub $ef
    db $10
    rst $38
    nop
    ld a, a
    add b
    rst $38
    add b
    cp a
    ret nz

    ldh [$c0], a
    ldh a, [$e0]
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    ld hl, sp-$0a
    db $fc
    db $e3
    cp $e1
    rst $38
    rst $38
    ldh [$fc], a
    ld h, b
    ld hl, sp-$50
    ld hl, sp-$28
    db $fc
    db $ec
    cp $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $18
    ccf
    ld c, a
    ccf
    rst $00
    ccf
    jp Jump_095_433f


    ccf
    ld b, e
    ccf
    inc bc
    ccf
    inc bc
    dec a
    ld bc, $013c
    inc a
    ld bc, $003c
    inc a
    nop
    inc a
    nop
    inc a
    nop
    inc a
    nop
    inc a
    nop
    inc a
    nop
    inc a
    nop
    inc a
    nop
    inc a
    nop
    inc a
    nop
    inc a
    nop
    inc a
    nop
    inc a
    nop
    inc a
    nop
    inc a
    nop
    inc a
    ld bc, $013c
    inc a
    ld bc, $053c
    inc a
    ld bc, $053c
    inc a
    dec b
    inc a
    rrca
    inc a
    rlca
    inc a
    ld l, h
    inc a
    call c, Call_000_3f3c
    db $fc
    ccf
    cp $3f
    cp $3b
    db $fc
    scf
    ld hl, sp-$01
    ldh [$df], a
    ldh [rIE], a
    add b
    ldh [rP1], a
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    db $f4
    nop
    cp $00
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
    inc b
    rst $38
    rst $30
    rst $38
    ret c

    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld e, a
    nop
    jr z, jr_095_474c

jr_095_474c:
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
    db $fd
    nop
    db $fc
    nop
    ld d, b
    nop
    ld de, $1000
    nop
    ld [hl], a
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    cp $00
    sub h
    nop
    nop
    nop

jr_095_4786:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [c]
    ld bc, $0081
    nop
    nop
    nop
    nop
    nop
    nop
    and b
    nop
    ld d, b
    add b
    ld [hl], b
    add b
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_095_4786

    db $10
    ldh a, [rNR23]
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    cp $03
    add c
    inc hl
    pop bc
    or e
    ld h, b
    rst $38
    jr nc, jr_095_4818

    cp h
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    or a
    ld c, b
    rst $38
    nop
    ld e, e
    nop
    ld c, e
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
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    add a
    nop
    rst $28
    stop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rst $38
    nop
    cp $00
    ldh [rP1], a
    nop
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
    push af
    ld a, [bc]
    rst $38
    nop

jr_095_4802:
    rst $38
    nop
    rst $38
    nop
    inc hl
    call c, $ff00
    nop
    rst $38
    ret nz

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

jr_095_4818:
    rst $38
    nop
    ld e, l
    nop
    ld b, b
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
    rst $08
    nop
    ld c, a
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
    ld b, b
    cp a
    ret nc

    cpl
    ld a, h
    add e
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp a
    ldh a, [$5f]
    ldh a, [$5f]
    ld d, b
    cpl
    jr z, jr_095_4818

    jr z, jr_095_4802

    inc d
    rst $10
    inc d
    rrc d
    ld [$350b], a
    push bc
    ld a, [bc]
    push af
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
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $08
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
    rst $38
    ld bc, $0eff
    rst $38
    ld e, e
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    sbc a
    nop
    rst $38
    nop
    inc [hl]
    set 5, b
    rla
    db $ec
    inc de
    rst $38
    nop
    ld a, b
    nop
    nop
    nop
    nop
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
    rst $00
    jr c, jr_095_48e1

jr_095_48e1:
    nop
    nop
    nop
    nop
    nop
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
    db $fc
    nop
    ld a, b
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
    cpl
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
    nop
    nop
    ld b, b
    nop
    dec de
    rst $38
    ld [de], a
    rst $38
    inc d
    rst $38
    add h
    rst $38
    nop
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
    ret z

    scf
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
    rlca
    nop
    ld [bc], a
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
    cpl
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
    nop
    rst $38
    nop
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
    ld [bc], a
    rst $38
    rst $38
    ld [bc], a
    cp $01
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    rrca
    nop
    dec bc
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
    nop
    nop
    nop
    ld bc, $0100
    nop
    dec de
    nop
    cpl
    nop
    nop
    rst $38
    nop
    rst $38
    dec b
    rst $38
    ld [$b5ff], a
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    ld a, a
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
    db $fc
    inc bc
    cp a
    nop
    rrca
    nop
    rlca
    nop
    rst $08
    nop
    dec bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    or a
    ld c, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $ffff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld c, a
    nop
    ld bc, $0100
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
    ei
    nop
    rst $38
    nop
    ld d, e
    nop
    ld c, e
    nop
    dec d
    nop
    dec de
    nop
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, e
    rst $38
    jp z, $03ff

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
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    ld [bc], a
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
    ld a, a
    nop
    ld e, a
    nop
    ld a, a
    nop
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
    rla
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld bc, $00ff
    rst $38
    inc bc
    rst $38
    rra
    rst $38
    ld bc, $07ff
    rst $38
    rst $38
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
    ld a, a
    jp $db3f


    cpl
    rst $38
    rlca
    db $fd
    inc bc
    rst $38
    ld bc, $03fc
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld c, a
    nop
    ccf
    nop
    rra
    nop
    ccf
    nop
    scf
    nop
    rla
    nop
    rra
    nop
    ld l, a
    nop
    ld a, a
    nop
    ld e, a
    nop
    ld a, $01
    ld a, a
    nop
    rst $38
    nop
    cp $01
    rst $38
    ld [bc], a
    cp $03
    rra
    rst $38
    ld a, a
    rst $38
    ld d, e
    rst $38
    xor a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rlca
    nop
    ld e, a
    nop
    ld a, a
    nop
    ei
    inc b
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    ld de, $1800
    nop
    cpl
    nop
    rlca
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
    nop
    inc bc
    db $fc
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
    ccf
    rst $38
    inc de
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ldh [$1f], a
    inc d
    db $eb
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
    rst $38
    nop
    rst $08
    nop
    or h
    nop
    db $fc
    nop
    jr z, jr_095_4b0a

jr_095_4b0a:
    jr jr_095_4b0c

jr_095_4b0c:
    nop
    nop
    jr nz, jr_095_4b10

jr_095_4b10:
    cp a
    rst $38
    set 7, a
    adc e
    rst $38
    rra
    rst $38
    dec de
    rst $38
    rst $10
    rst $38
    xor e
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $10
    ccf
    di
    ccf
    di
    ccf
    db $e3
    ccf
    rst $20
    ccf
    rst $20
    ccf
    inc hl
    rst $38
    inc hl
    rst $38
    ccf
    rst $20
    dec sp
    rst $20
    db $d3
    rst $28
    ei
    rst $20
    di
    rst $28
    ei
    rst $20
    di
    rst $28
    ei
    rst $20
    di
    rst $28
    ei
    rst $20
    ei
    rst $20
    ei
    rst $20
    di
    rst $28
    pop af
    rst $28
    ld sp, hl
    rst $20
    ld sp, hl
    rst $20
    pop af
    rst $28
    ei
    rst $20
    ei
    rst $20
    rst $30
    rst $28
    rst $38
    rst $20
    di
    rst $28
    rst $30
    rst $28
    rst $28
    rst $20
    rst $20
    rst $20
    and a
    rst $20
    and a
    rst $20
    ld l, a
    rst $20
    cpl
    rst $20
    cpl
    rst $20
    daa
    rst $20
    ld l, $e7
    ld c, [hl]
    rst $20
    ld c, $e7
    ld c, $e7
    ld c, $e7
    ld b, $e7
    ld c, $e7
    ld c, $e7
    ld c, $e7
    ld c, $e7
    ld l, $e7
    ld c, [hl]
    rst $20
    ld l, $e7
    and [hl]
    rst $20
    xor $e7
    ld l, [hl]
    rst $20
    xor $e7
    xor $e7
    xor $e7
    xor $e7
    xor $e7
    xor $e7
    xor $e7
    cp $07
    ld l, $07
    ld c, $07
    xor [hl]
    rlca
    xor $07
    rrca
    rlca
    cpl
    rlca
    ccf
    rlca
    ccf
    daa
    rst $30
    ccf
    rst $30
    ccf
    rst $38
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    di
    rrca
    rst $38
    inc bc
    ei
    rlca
    ei
    rlca
    inc bc
    rst $38
    inc bc
    rst $38
    inc de
    rst $38
    rst $38
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
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    xor a
    nop
    rrca
    nop
    rrca
    nop
    dec b
    nop
    rst $00
    ld hl, sp-$21
    ldh [rIE], a
    ldh [$de], a
    pop hl
    cp $e1
    jp nc, $f3ed

    db $ed
    db $db
    db $e4
    push de
    ld [$e2dd], a
    db $db
    db $e4
    ld e, a
    ldh [$5e], a
    pop hl
    ld e, e
    ldh [$5f], a
    ldh [$9f], a
    ld h, b
    rst $18
    ld h, b
    ld e, a
    ldh [$5e], a
    ldh [$5f], a
    ldh [$5f], a
    ldh [$dc], a
    ld h, b
    adc $60
    ei
    ld b, b
    ld c, b
    ldh [$7e], a
    ret nz

    ld l, [hl]
    ret nz

    rst $28
    ld b, b
    db $d3
    ld h, b
    rst $18
    ld h, b
    sbc $60
    db $fd
    ld b, b
    ld hl, sp+$40
    db $dd
    ld h, b
    sbc $60
    rst $18
    ld h, b
    rst $18
    ld h, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    cp a
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $30
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    ld l, a
    ld b, b
    cp a
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $18
    ld h, b
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $18
    ld h, b
    rst $18
    ld h, b
    cp $40
    cp $40
    or $40
    rst $10
    ld h, b
    ld [hl], h
    ld b, b
    db $f4
    ld b, b
    db $e4
    ld b, b
    ld a, [c]
    ld b, b
    xor l
    ld b, b
    db $fd
    ld b, b
    ei
    ld b, b
    jp z, $cb60

    ld h, b
    rst $20
    ld b, b
    rst $08
    ld h, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $28
    ld b, b
    ld l, a
    ret nz

    rst $28
    ld b, b
    rst $08
    ld h, b
    rst $38
    ld b, b
    rst $18
    ld h, b
    rst $08
    ld h, b
    rst $38
    ld h, b
    rst $18
    ldh [$5f], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$df], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    add sp, -$05
    db $e4
    rst $38
    pop hl
    rst $38
    db $e3
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $28
    rst $38
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
    rst $38
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
    rst $38
    nop
    dec sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc a
    ld a, h
    ld d, a
    db $fc
    add e
    ld a, h
    jr nz, @+$01

    ld hl, $81ff
    ld a, a
    adc c
    ld [hl], a
    ld [de], a
    db $ed
    ld sp, $71cf
    adc a
    ld c, [hl]
    or c
    and b
    ld e, a
    ld l, h
    sub e
    ld [hl], d
    adc l
    ld [hl], d
    adc l
    ld d, h
    xor e
    dec d
    rst $38
    ld de, $1dff
    rst $38
    inc e
    rst $38
    ld [$00ff], sp
    rst $38
    jr nz, @+$01

    nop
    rst $38
    rst $38
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
    ld a, a
    nop
    ld a, a
    nop
    db $fd
    nop
    rst $18
    nop
    rst $18
    nop
    rst $28
    nop
    ld e, a
    nop
    rst $38
    nop
    cp $01
    rst $28
    nop
    rst $28
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
    ei
    nop
    rst $38
    nop
    rst $18
    nop
    sbc a
    nop
    adc a
    nop
    rst $28
    nop
    rst $18
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    ld e, a
    nop
    rst $18
    nop
    sbc a
    nop
    rst $38
    nop
    ld a, a
    nop
    sbc [hl]
    ld bc, $02bf
    sbc a
    nop
    rst $18
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
    ld a, [$f305]
    ld c, $ff
    ld b, $ff
    nop
    cp $01
    ei
    inc b
    push af
    dec bc
    or a
    ld e, c
    rst $38
    ld b, e
    ld a, l
    rst $10
    db $f4
    ld e, e
    cp $1d
    cp $3f
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [bc], a
    rst $38
    rst $38
    nop
    rst $38
    nop
    xor a
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
    rst $38
    nop
    rst $38
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

jr_095_4ded:
    nop
    rla
    nop
    ld l, $ff
    add e
    rst $38
    jp nz, $84bd

jr_095_4df7:
    rst $38
    call nz, $c8bf
    cp a
    add c
    rst $38
    or h
    rst $38
    and $bf
    cp d
    rst $28
    ld h, $ff
    jr nc, jr_095_4df7

    add b
    rst $38
    reti


    xor a
    jr z, jr_095_4ded

    ld c, c
    or a
    ld l, l
    sub e
    sbc b
    ld h, a
    reti


    ld h, a
    cp b
    ld b, a
    inc a
    jp Jump_095_6798


    and b
    ld e, a
    ret z

    scf
    ld [c], a
    dec e
    ldh a, [rIF]
    push de
    ld a, [hl+]
    ld [c], a
    dec e
    ret nc

    cpl
    ret nz

    ccf
    and l
    dec de
    ld a, [$f805]
    rlca
    cp [hl]
    ld b, c
    cp $41
    db $fd
    ld b, e
    push hl
    dec de
    rst $38
    inc bc
    xor e
    ld d, a
    cp $43
    db $ed
    ld d, e
    db $db
    rst $20
    cp $03
    db $fc
    inc bc
    rst $30
    dec bc
    rst $38
    inc bc
    call c, $fe03
    ld bc, $01de
    cp $01
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $38
    nop
    cp $01
    rst $38
    nop
    ld a, [$b705]
    ld c, b
    cp a
    ld b, b
    or e
    ld c, h
    rst $38
    nop
    rst $38
    ld [bc], a
    ld sp, hl
    ld b, $fe
    inc bc
    db $fd
    inc bc
    ld a, a
    add b
    or l
    jp z, $867b

    ld sp, hl
    ld b, $fb
    ld c, $bb
    ld c, [hl]
    ld a, [c]
    rrca
    rst $38
    ld c, [hl]
    ld a, e
    adc [hl]
    rst $38
    rrca
    ld e, a
    xor a
    db $eb
    rra
    ccf
    rst $18
    cp a
    rst $38
    rst $38
    rst $38
    rst $18
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
    ld a, a
    rst $38
    rst $38
    cp a
    rst $38
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
    ldh [$1f], a
    ldh a, [rIF]
    ld sp, hl
    ld b, $fd
    ld [bc], a
    ld a, a
    rst $38
    ld a, a
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    cp [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ld a, a
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
    rst $38
    rst $38
    ccf
    rst $38
    cpl
    rst $38
    xor a
    ld a, a
    ld d, a
    cp a
    dec e
    rst $38
    and e
    ld a, a
    inc bc
    rst $38
    ld h, l
    rst $18
    inc sp
    rst $38
    ccf
    rst $38
    daa
    rst $38
    xor a
    ld a, a
    ld a, a
    cp a
    sbc a
    ld a, a
    rra
    rst $38
    jp $d7bf


    xor a
    di
    xor a
    rra
    rst $20
    rlca
    rst $38
    cp a
    ld a, a
    sbc a
    ld a, a
    and l
    ld a, a
    dec d
    rst $38
    nop
    rst $38
    db $d3
    ccf
    ld h, [hl]
    sbc a
    rst $20
    ld e, a
    ld a, e
    rst $18
    sub e
    ld a, a
    rra
    rst $38
    rst $38
    ld e, a
    sbc a
    ld a, a
    sbc a
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ld e, a
    cp a
    rst $38
    ccf
    rst $18
    ccf
    cp a
    ld a, a
    rst $38
    ld a, a
    ccf
    rst $38
    ld a, a
    rst $38
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
    rst $38
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
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    rrca
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
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
    db $e3
    rst $38
    rst $28
    di
    db $fd
    di
    db $fd
    di
    or $f9
    rst $38
    ld hl, sp-$05
    db $fc
    ei
    db $fc
    ei
    db $fc
    rst $38
    ld hl, sp-$02
    ld sp, hl
    push af
    ei
    db $fd
    di
    rst $38
    di
    rst $28
    di
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
    or a
    rst $38
    or a
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
    ld a, a
    nop
    rra
    nop
    ccf
    nop
    ccf
    nop
    add hl, de
    nop
    ld bc, $ff00
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
    rst $38
    rst $38
    dec e
    ld a, [$bb5c]
    rst $18
    add hl, sp
    push af
    dec sp
    cp l
    ld a, e
    cp l
    ld a, e
    rst $38
    ld a, c
    cp $79
    db $fd
    ld a, e
    cp l
    ld a, e
    db $fd
    dec sp
    db $dd
    dec sp
    ld e, b
    cp a
    db $10
    rst $38
    sbc b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $10
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    rst $38
    nop
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
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_095_5093

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, @+$0a

    ld [$3108], sp
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_095_50b6

    ld a, [hl-]
    dec sp
    inc a
    dec de
    ld [$0808], sp
    ld [$3e3d], sp
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld [$0808], sp

jr_095_5093:
    ld [$4808], sp
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
    ld [$0808], sp
    ld [$5453], sp
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld [$5e5d], sp
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e

jr_095_50b6:
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld [$6d6c], sp
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
    ld [$7c7b], sp
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    rrca
    add c
    add d
    add e
    add h
    add l
    add [hl]
    ld [$0887], sp
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    ld [$9291], sp
    sub e
    sub h
    sub l
    ld [$9796], sp
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    ld [$a1a0], sp
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
    ld [$b2b1], sp
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
    ld [$0808], sp
    cp l
    cp [hl]
    cp a
    ret nz

    ld [$c2c1], sp
    jp $c5c4


    add $c7
    ret z

    ret


    jp z, $cccb

    ret nz

    inc sp
    ret nz

    call $cfce
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    ret nz

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    rrca
    push hl
    and $c0
    rst $20
    ret nz

    ret nz

    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $ef
    rrca
    rrca
    rrca
    ldh a, [$f1]
    ret nz

    ret nz

    ret nz

    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$0f0f]
    rrca
    ei
    ret nz

    ret nz

    ret nz

    db $fc
    db $fd
    cp $ff
    nop
    ld bc, $0302
    inc b
    rrca
    rrca
    dec b
    ld b, $07
    ld [$03c0], sp
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
    ld bc, $0606
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
    ld bc, $0100
    nop
    ld bc, $0505
    inc bc
    ld b, e
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld bc, $0001
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0001
    ld bc, $0201
    ld bc, $0001
    nop
    nop
    ld b, $06
    ld b, $06
    dec b
    ld bc, $0000
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld bc, $0101
    ld bc, $0202
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0404
    dec b
    ld [bc], a
    ld [bc], a
    ld b, $00
    dec b
    dec b
    nop
    nop
    nop
    nop
    ld hl, $0400
    inc bc
    inc bc
    ld b, $04
    ld b, $03
    nop
    inc bc
    ld bc, $0101
    nop
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
    ld bc, $0101
    nop
    ld bc, $0000
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0001
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
    ld bc, $0101
    ld bc, $0000
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld bc, $0b01
    dec bc
    add hl, bc
    add hl, bc
    nop
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
    rst $28
    nop
    rst $38
    nop
    cp a
    nop

jr_095_52d2:
    rst $38
    nop
    rst $38
    nop
    rst $28
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
    cp a
    nop
    rst $38
    nop
    rst $20
    nop
    rst $30
    nop
    push hl
    nop
    rst $38
    nop
    rst $28
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_095_52d2

    jr nz, @+$01

    nop
    rst $28
    nop
    rst $28
    nop
    rst $38
    nop
    ld a, l
    add b
    cp l
    ld b, b
    cp l
    ld b, b
    rst $38
    nop
    cp a
    ld b, b
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    xor a
    ld d, b
    cp a
    ld b, b
    rrca
    ldh a, [$0b]
    db $f4
    add e
    db $fc
    rlca
    ld hl, sp-$7d
    db $fc
    call nc, Call_095_61ff
    cp $f0
    ld a, a
    jr nz, jr_095_53a3

    ld e, b
    ccf
    dec a
    rra
    inc a
    rra
    rra
    rrca
    rra
    rrca
    rrca
    rlca
    rrca
    rlca
    inc bc
    rlca
    rlca
    inc bc
    ld bc, $0303
    ld bc, $0103
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
    add b
    nop
    nop
    nop
    ld b, b
    nop
    and b
    nop
    and b
    nop
    sub b
    nop
    and b
    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    db $ec
    nop
    db $f4
    nop
    ld a, h
    add b
    db $76
    add b
    ld a, l
    add b
    cp a
    ld b, b
    rra
    ldh [$5f], a
    and b
    ld c, a
    or b
    dec e
    ld [c], a
    ld a, $c1
    rra
    ldh [rIF], a
    ldh a, [rTIMA]
    ld a, [$fa07]
    ld b, [hl]
    ei
    ld hl, $12ff
    db $fd
    dec d
    cp $08
    rst $38
    ld a, [bc]
    rst $38
    ld [$83ff], sp
    rst $38
    and c
    rst $38
    and l

jr_095_53a3:
    rst $38
    or l
    rst $38
    jp nc, Jump_095_7aff

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
    cp $00
    rst $38
    nop
    di
    nop
    ld sp, hl
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [$fb00]
    nop
    db $f4
    nop
    cp $00
    ld a, [$f800]
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    cp $00
    db $fd
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
    cp $00
    rst $38
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $30
    nop
    rst $18
    nop
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
    rst $38
    nop
    ld a, [hl]
    pop bc
    ccf
    ret nz

    rra
    ldh [$bf], a
    ld b, b
    swap h
    add hl, de
    and $91
    xor $40
    rst $38
    adc b
    rst $30
    pop hl
    rst $38
    ld a, [c]
    rst $38
    ei
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
    ld a, a
    rst $38
    ld a, a
    ccf
    ld a, a
    ld a, a
    ccf
    ld e, a
    ccf
    ccf
    rra
    ccf
    rra
    rra
    rrca
    rra
    rrca
    rrca
    rlca
    rrca
    rlca
    inc bc
    rlca
    rlca
    inc bc
    rlca
    inc bc
    inc bc
    ld bc, $0103
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
    ld b, b
    nop
    nop
    nop
    and b
    nop
    ret nz

    nop
    or b
    nop
    ret c

    nop
    ret c

    nop
    ld h, b
    add b
    cp d
    ld b, b
    cp b
    ld b, b
    ret c

    jr nz, @+$6e

    sub b
    rst $38
    nop
    ld a, a
    add b
    ld c, a
    or b
    ld c, a
    or b
    rra
    ldh a, [$df]
    ldh a, [rBGP]
    ld hl, sp-$79
    ld hl, sp+$03
    db $fc
    add c
    cp $a2
    db $fd
    pop bc
    cp $41
    cp $60
    rst $38
    ld hl, sp-$01
    cp [hl]
    rst $38
    ei
    rst $38
    db $fd
    rst $38
    db $ed
    rst $38
    push hl
    rst $38
    di
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    db $f4
    nop
    db $fc
    nop
    ld c, h
    nop
    ld h, b
    nop
    ret nz

    nop
    add b
    nop
    nop
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
    add b
    nop
    add b
    nop
    nop
    nop
    ldh [rP1], a
    ldh [rP1], a
    and b
    nop
    and b
    nop
    ld c, b
    nop
    ret nz

    nop
    ret nz

    nop
    and $00
    rst $38
    nop
    db $f4
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ret nc

    nop
    ld hl, sp+$00
    add sp, $00
    jp c, $fe00

    nop
    ld a, [c]
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
    cp a
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
    nop
    rst $38
    nop
    cp a
    ld b, b
    ccf
    ret nz

    ld a, a
    ret nz

    dec b
    ld a, [$fd82]
    pop hl
    rst $38
    ldh [rIE], a
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld a, [$efff]
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    pop bc
    cp $c1
    cp $c3
    db $fc
    db $fc
    ldh [$fc], a
    ldh [rIE], a
    ldh [$7f], a
    ldh a, [$7f]
    ld hl, sp+$7f
    ld hl, sp+$3f
    ld hl, sp+$3f
    ld hl, sp+$3f
    cp $1f
    db $fc
    ld e, $fc
    ld e, $fc
    ld c, $fc
    ld c, $fe
    rrca
    cp $07
    cp $0f
    rlca
    rrca
    rlca
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    inc bc
    ld bc, $0103
    ld bc, $0301
    nop
    add e
    nop
    add c
    nop
    add c
    nop
    ld b, b
    nop
    jr nz, jr_095_559c

jr_095_559c:
    stop
    ld hl, sp+$00
    ldh a, [rP1]
    db $fc
    nop
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
    add b
    ld e, a
    and b
    ccf
    ret nz

    rra
    ldh [$df], a
    and b
    ld c, e
    db $f4
    pop bc
    cp $41
    cp $50
    rst $38
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
    nop
    nop
    add b
    nop
    sub b
    nop
    ret nc

    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld a, b
    nop
    db $ec
    nop
    cp $00
    sbc $00
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
    add b
    rst $38
    rst $30
    ld [$807f], sp
    add hl, hl
    rst $10
    adc a
    rst $38
    db $fd
    cp $f7
    ld hl, sp-$29
    rst $28
    ccf
    rst $38
    ld hl, sp-$01
    db $ec
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    cp h
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    ld hl, sp-$01
    db $f4
    nop
    ret nz

    nop
    add b
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
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rra
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp-$6d
    db $ec
    ldh a, [rP1]
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
    rst $38
    nop
    ld a, a
    add b
    rst $38
    add b
    cp a
    ret nz

    cp a
    ret nz

    rst $38
    ret nz

    rst $18
    ldh [$df], a
    ldh [$e0], a
    ldh [$f0], a
    ldh [$f0], a
    ldh [rSVBK], a
    ldh a, [$78]
    ldh a, [$78]
    ld hl, sp+$3c
    ld hl, sp+$3e
    ld hl, sp+$3e
    db $fc
    ld e, $fc
    ld e, $fc
    ld e, $fe
    rra
    cp $0f
    cp $0f
    rst $38
    rrca
    rst $38
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    ei
    rlca
    xor e
    ld d, a
    inc sp
    rst $08
    swap a
    add l
    ld a, e
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
    db $fc
    nop
    ret c

    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc bc
    rst $38
    inc e
    rst $38
    pop af
    cp $87
    db $fc
    rra
    ld hl, sp-$01
    add sp, -$01
    add b
    db $fc
    nop
    dec b
    ld a, [$f906]
    add b
    rst $38
    add e
    db $fc
    rrca
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

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
    db $fd
    nop
    cp $00
    cp $00
    db $fc
    nop
    db $fc
    nop
    ld a, [$fd00]
    nop
    cp $00
    db $fd
    nop
    rst $38
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
    rst $38
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
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld bc, $81fe
    cp $80
    rst $38
    ret nz

    rst $38
    jp nz, $c0fd

    rst $38
    ldh [rIE], a
    ldh [rIE], a
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
    inc e
    nop
    dec de
    nop
    rrca
    nop
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    rst $30
    nop
    ei
    rlca
    rst $38
    inc e
    ld sp, hl
    ldh a, [$87]
    db $fc
    add hl, sp
    ret nz

    ld [c], a
    ld b, b
    add b
    nop
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
    db $fd
    nop
    add sp, $00
    ldh a, [rP1]
    ldh [rP1], a
    and b
    nop
    add b
    nop
    ld b, b
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
    push bc
    nop
    and e
    nop
    ld [hl], e
    nop
    dec sp
    nop
    ld c, a
    nop
    ld a, e
    nop
    rst $38
    nop
    ld a, [hl]
    nop
    rst $38
    nop
    add hl, sp
    nop
    add hl, bc
    nop
    add b
    nop
    stop
    ld b, b
    nop
    ld hl, $0100
    nop
    and $00
    xor $00
    rst $00
    nop
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
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
    nop
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
    ld bc, $0000
    nop
    ld [c], a
    nop
    ld a, [c]
    nop
    db $fd
    nop
    rst $38
    nop
    rst $28
    nop
    rst $30
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

jr_095_57fe:
    ld c, $00
    ld [bc], a
    nop
    ld a, [bc]
    nop
    ld e, $00
    ld e, $00
    rra
    nop
    sbc a
    nop
    cp a
    nop
    cp a
    nop
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld e, $ff
    ld h, c
    rst $38
    add a
    db $fc
    jr c, jr_095_57fe

    ret nz

    add b
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
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $01
    cp $01
    cp $a1
    ld e, [hl]
    jp nz, $fe3c

    nop
    rst $38
    nop
    ei
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
    db $fc
    nop
    rst $38
    nop
    rst $18
    jr nz, @+$01

    nop
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    ld a, $c0
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld e, a
    and b
    rlca
    ld hl, sp+$37
    ret z

    ld h, a
    sbc b
    sub b
    nop
    inc l
    nop
    jr nc, jr_095_5876

jr_095_5876:
    ld [hl], b
    nop
    or $00
    and $00
    db $ec
    nop
    cp $00
    db $fc
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
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld h, b
    nop
    pop af
    nop
    cp a
    nop
    ccf
    nop
    ccf
    nop
    ld e, $00
    rra
    nop
    rra
    nop
    ccf
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
    rrca
    nop
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0100
    nop
    dec b
    nop
    ld b, $00
    dec bc
    nop
    rrca
    nop
    inc de
    nop
    rra
    nop
    rlca
    nop
    rrca
    nop
    rst $38
    nop
    ld a, a
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
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    rlca
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    cp $ff
    ldh a, [$ef]
    add b
    jr z, jr_095_590c

jr_095_590c:
    jr nz, jr_095_590e

jr_095_590e:
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
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
    cp b
    nop
    ei
    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fc
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ldh [rP1], a
    add b
    nop
    ldh a, [rP1]
    ei
    nop
    ei
    nop
    ldh a, [rP1]
    db $eb
    nop
    ld [hl], b
    nop
    or $00
    rst $38
    nop
    rst $38
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
    ld bc, $0000
    nop
    stop
    call nz, $ff00
    nop
    rst $38
    nop
    cp a
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [de], a
    nop
    or e
    nop
    rst $38
    nop
    db $fd
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
    cp $00
    rst $38
    nop
    cp $00
    cp $00
    db $fd
    nop
    rst $38
    nop
    ei
    nop
    db $fd
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    ld a, [$7e01]
    ld bc, $01fe
    rst $38
    nop
    cp $01
    cp $01
    ei
    inc b
    cp $01
    rst $38
    ld bc, $0779
    push af
    rrca
    ei
    rrca
    db $e3
    rra
    rst $08
    ccf
    cp a
    ld a, a
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
    adc e
    ld [hl], h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [$0000]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, e
    nop
    rst $28
    nop
    cp l
    nop
    ld bc, $c000
    nop
    add e
    nop
    inc bc
    nop
    adc c
    nop
    ld bc, $8000
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    ld bc, $0000
    nop
    jr nc, jr_095_5a42

jr_095_5a42:
    jr nz, jr_095_5a44

jr_095_5a44:
    and b
    nop
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    add b
    nop
    jr nz, jr_095_5a50

jr_095_5a50:
    ldh a, [rP1]
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
    nop
    and b
    nop
    ldh [rP1], a
    db $fc
    nop
    cp $00
    rst $30
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
    ld b, b
    nop
    rst $38
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
    cp $01
    ld a, [$7b05]
    inc b
    db $db
    inc h
    ld sp, hl
    ld b, $e5
    ld e, $e1
    ld e, $ee
    ld de, $03fc
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ld a, [c]
    rrca
    db $e3
    rra
    scf
    rst $08
    ld h, a
    sbc a
    rst $20
    rra
    and a
    ld e, a
    adc a
    ld a, a
    adc a
    ld a, a
    cp a
    ld a, a
    ccf
    rst $38
    cp a
    ld a, a
    cp a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, $ff
    ld a, b
    rst $38
    nop
    rst $38
    ld a, [de]
    push hl
    rst $38
    nop
    rst $38
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
    ld a, a
    nop
    rra
    nop
    ld l, e
    nop
    add b
    nop
    ld d, b
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
    nop
    rst $38
    nop
    cp $00
    rst $08
    nop
    rst $38
    nop
    or a
    nop
    inc sp
    nop
    jr jr_095_5b0a

jr_095_5b0a:
    ld [bc], a
    nop
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    nop
    ccf
    nop
    nop
    nop
    nop
    nop
    dec b
    nop
    inc b
    nop
    dec l
    nop
    rst $28
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
    jr nz, jr_095_5b4c

jr_095_5b4c:
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
    ld b, b
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
    ld e, a
    and b
    ld c, a
    or b
    ld b, a
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp-$71
    ldh a, [rVBK]
    ldh a, [$e7]
    ld hl, sp-$39
    ld hl, sp+$67
    ld hl, sp-$19
    ld hl, sp-$1d
    db $fc
    db $e3
    db $fc
    pop af
    cp $f3
    db $fc
    ld a, [c]
    db $fd
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
    cp $ff
    ld hl, sp-$01
    ldh [rIE], a
    ret nz

    rst $38
    call z, $acff
    rst $38
    ld [$e3ff], a
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld d, b
    xor a
    or b
    ld c, a
    and b
    ld e, a
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
    ccf
    nop
    ld d, a
    nop
    inc bc
    nop
    ld bc, $fe00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    ld a, a
    nop
    ccf
    nop
    dec sp
    nop
    ld de, $0000
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
    inc bc
    nop
    ld bc, $1700
    nop
    rra
    nop
    ccf
    nop
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
    ld bc, $0100
    nop
    inc bc
    nop
    nop
    nop
    add hl, bc
    nop
    rla
    nop
    rra
    nop
    rra
    nop
    sbc a
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
    stop
    inc bc
    nop
    rlca
    nop
    ld a, [hl]
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, [hl]
    nop
    rst $38
    nop
    db $fc
    nop
    cp $00
    ld hl, sp+$00
    db $fc
    nop
    ld a, [$ff00]
    nop
    cp $00
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    db $fc
    nop
    ld hl, sp+$00
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
    ld a, $00
    sbc h
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld l, a
    add b
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add e
    rst $38
    inc a
    rst $38
    ldh a, [$fe]
    ldh [$f8], a
    ret nz

    ldh [$7f], a
    add b
    ccf
    ret nz

    rra
    ldh [rTAC], a
    ld hl, sp+$03
    db $fc
    pop bc
    cp $81
    cp $80
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    inc de
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
    cp a
    nop
    ld d, a
    nop
    rlca
    nop
    rlca
    nop
    rrca
    nop
    ld bc, $0000
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
    ld a, a
    nop
    cp a
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
    ld bc, $0300
    nop
    nop
    nop
    inc bc
    nop
    dec bc
    nop
    ld [hl], a
    nop
    ld d, a
    nop
    rrca
    nop
    db $fd
    nop
    ei
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
    rlca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    ccf
    nop
    cp l
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
    ld bc, $01fe
    cp $01
    cp $01
    cp $01
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld [bc], a
    cp $02
    cp $02
    cp $02
    cp $02
    cp $02
    cp $06
    ld hl, sp+$06
    ld hl, sp+$06
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc c
    db $f4
    inc c
    db $f4
    inc c
    ldh a, [$0c]
    ld hl, sp+$1d
    add sp, $1f
    add sp, $18
    add sp, $00
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    cp $00
    rst $38
    nop
    ld a, [$ff00]
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ld hl, sp+$00
    ld hl, sp+$00
    db $fd
    nop
    rst $38
    nop
    rst $30
    nop
    cp a
    nop
    rst $38
    nop
    dec de
    nop
    inc bc
    nop
    inc bc
    nop
    dec b
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
    rst $18
    nop
    ld a, a
    nop
    ld a, a
    nop
    rrca
    nop
    ccf
    nop
    rra
    nop
    rrca
    nop
    rla
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rla
    nop
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    rlca
    nop
    dec sp
    nop
    rra
    nop
    ccf
    nop
    ld e, a
    nop
    sub a
    nop
    cp a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
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
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc de
    nop
    dec de
    nop
    rst $20
    nop
    xor e
    nop
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
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
    nop
    rst $38
    nop
    ld b, d
    add b
    ld l, c
    add b
    ld l, [hl]
    add b
    ld a, [bc]
    add b
    ld l, [hl]
    add b
    inc a
    add b
    ld a, [hl-]
    add b
    ld h, $80
    ld [hl+], a
    add b
    cp l
    nop
    db $fc
    nop
    sub b
    nop
    ld hl, sp+$00
    and d
    nop
    ld hl, sp+$00
    ld [$4000], sp
    nop
    add b
    nop
    db $e4
    nop
    ld [c], a
    nop
    db $f4
    nop
    jp c, Jump_095_5f00

    nop
    ld [hl], b
    nop
    ld c, [hl]
    nop
    ld h, a
    nop
    inc h
    nop
    pop bc
    nop
    ld b, l
    nop
    db $eb
    nop
    rst $38
    ld bc, $0ff6
    ld a, a
    rst $38
    ei
    db $fc
    rst $08
    ldh a, [rNR34]
    ldh [$b2], a
    ld b, b
    ld a, b
    add b
    db $fc
    nop
    cp $00
    cp [hl]
    ld b, b
    db $fc
    nop
    db $fc
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rra
    ldh [$cc], a
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
    ld a, a
    add b
    ccf
    ret nz

    and b
    nop
    ldh a, [rP1]
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    ccf
    nop
    ld a, a
    nop
    rlca
    nop
    rrca
    nop
    rlca
    nop
    dec b
    nop
    ld bc, $0100
    nop
    nop
    nop
    inc bc
    nop
    inc b
    nop
    ld b, $00
    ld [$0100], sp
    nop
    ld b, c
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    rrca
    nop
    rrca
    nop
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0500
    nop
    rla
    nop
    rst $18
    nop
    rst $28
    nop
    rst $18
    nop
    rst $18
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    rlca
    ld bc, $030f
    rrca
    ld b, $0f
    inc c
    ld c, $78
    jr c, @-$1e

    ret nz

    ret nz

    nop

Jump_095_5f00:
    rst $38
    nop
    jp c, $0700

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
    ld bc, $0300
    nop
    inc bc
    nop
    rrca
    nop
    cp $01
    db $fc
    inc bc
    ldh [$1f], a
    nop
    ld bc, $0100
    nop
    ld bc, $0300
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
    ret nz

    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ld [c], a
    rra
    ldh [$1f], a
    ld [$e91f], a
    ccf
    rst $38
    ccf
    rst $18
    ccf
    rst $08
    ccf
    ld [hl], a
    ccf
    dec sp
    rrca
    rst $38
    rrca
    ld a, a
    inc bc
    ld a, a
    ld bc, $007f
    rst $38
    nop
    cp a
    nop
    rst $38
    nop
    ccf
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
    inc de
    nop
    ld e, a
    nop
    ld c, a
    nop
    ccf
    nop
    ccf
    nop
    ld e, a
    nop
    ccf
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
    ld a, a
    nop
    ld a, a
    nop
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
    ld bc, $0100
    nop
    ld bc, $0300
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
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    db $76
    ld [$10ee], sp
    call nc, $fc28
    rra
    db $fc
    ld [hl], e
    ldh a, [$e3]
    ret nz

    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rrca
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
    nop
    ccf
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
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld d, a
    nop
    dec d
    nop
    rrca
    nop
    cpl
    nop
    cp a
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
    inc bc
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    cp l
    ld b, d
    xor b
    ld d, a
    add c
    rst $38
    ld [hl], a
    rst $28
    ld [hl], a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld c, $ff
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
    nop
    rst $38
    inc c
    rst $38
    ld [$00ff], sp
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
    ld b, b
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
    rst $38
    ei
    nop
    ld a, e
    nop
    ld [hl], e
    nop
    ld [hl], d
    nop
    ld [hl], d
    nop
    ld a, [c]
    nop
    pop hl
    nop
    db $e3
    nop
    push hl
    nop
    pop hl
    nop
    pop bc
    nop
    pop bc
    nop
    add $00
    add h
    nop
    add b
    nop
    add b
    nop
    add d
    nop
    inc b
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    stop
    ld bc, $0000
    nop
    add hl, bc
    nop
    ld bc, $0100
    nop
    ld [$0600], sp
    nop
    adc [hl]
    nop
    dec bc
    inc b
    inc bc
    nop
    inc bc
    nop
    ld bc, $0900
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld [bc], a
    nop
    add hl, bc
    nop
    dec de
    nop
    dec de
    nop
    ld [hl], e
    nop
    ld a, e
    nop
    ld a, e
    nop
    rst $18
    nop
    rst $18
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
    db $fd
    ld [bc], a
    ld hl, sp+$07
    or d
    ld c, l
    ldh [$1f], a
    db $f4
    dec bc
    ld b, b
    cp a
    sub e
    ld l, a
    inc bc
    rst $38
    di
    rst $38
    ld d, a
    rst $38
    rst $10
    rst $38
    rst $30
    rst $38
    rst $38
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
    inc bc
    rst $38
    add e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    rst $38
    inc b
    rst $38
    inc b
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
    ret nz

    rst $38
    ld b, b
    rst $38
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    ld a, a
    nop
    xor $01
    ld l, [hl]
    ld bc, $00ff
    rst $28
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    cp $00
    cp $00
    cp c
    nop
    add hl, sp
    nop
    ld sp, hl
    nop
    inc sp
    nop
    rra
    nop
    cp a
    nop
    ld c, a
    nop
    ld a, a
    nop
    sbc a
    nop
    ld a, $01
    ld a, a
    nop
    ld a, $01
    ccf
    nop
    ld e, a
    nop
    cp l
    ld [bc], a
    rst $18
    nop
    sbc a
    nop
    rst $38
    nop
    ld l, e
    sub h
    cp a
    nop
    ld h, [hl]
    rst $38
    inc h
    rst $38
    inc b
    rst $38
    ld b, [hl]
    rst $38
    ld b, [hl]
    rst $38
    ld b, b
    rst $38
    pop bc
    rst $38
    ld bc, $fdff
    ld [bc], a
    ld hl, sp+$07
    db $fc
    rlca
    pop de
    cpl
    db $fd
    inc bc
    cp $03
    rst $38
    inc bc
    db $ec
    inc de
    add sp, $17
    ld [$e417], a
    rra
    cp b
    ld e, a
    nop
    rst $38
    sub d
    ld l, a
    ld b, l
    rst $38
    add l
    rst $38
    adc c
    rst $38
    dec de
    rst $38
    cp c
    ld e, a
    rst $38
    ccf
    or a
    ld a, a
    ld [hl], a
    rst $38
    and a
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
    add a
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    add b
    rst $38
    sub b
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    xor a
    ld d, b
    cp l
    jp nc, $82fd

    call z, $cc33
    inc sp
    db $fc
    inc bc
    db $fc
    inc bc
    cp a
    ld b, b
    cp $01
    ld hl, sp+$07
    ld sp, hl
    ld b, $fc
    inc bc
    ld hl, sp+$07
    cp $03
    ldh [$1f], a
    di

Call_095_61ff:
    ld c, $e5
    ld e, $e8
    rra
    ld l, e
    sbc l
    jp nz, $ca3d

    dec a
    ldh a, [$3f]
    add b
    ld a, a
    ret nz

    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ret nc

    cpl
    pop hl
    rra
    jp $d73f


    cpl
    ld h, e
    sbc a
    add e
    ld a, a
    add [hl]
    ld a, a
    inc b
    cp $06
    db $fc
    add h
    ld a, b
    ld [$01f0], sp
    ldh a, [$03]
    pop af
    ld a, [bc]
    rst $38
    dec c
    rst $38
    add hl, de
    rst $38
    ld [hl], l
    rst $38
    db $fd
    rst $38
    cp [hl]
    rst $38
    dec d
    rst $38
    ld h, l
    cp a
    rlca
    rst $38
    rlca
    rst $38
    rra
    rst $38
    ld l, $ff
    ld a, [hl]
    rst $38
    ld a, $ff
    ld a, [hl]
    db $fd
    ld a, [$fffd]
    ld hl, sp-$09
    ld hl, sp+$7f
    ldh a, [$6f]
    ldh a, [$f7]
    ldh [$e1], a
    db $e3
    rst $20
    jp $c7c3


    ld [c], a
    pop bc
    ldh a, [$e0]
    push af
    ld hl, sp-$04

jr_095_6265:
    rst $38
    rst $38

jr_095_6267:
    rst $38
    rst $38
    rst $38
    rst $38
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
    rlca
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    and d
    ld e, a
    ld [hl], b
    rst $08
    ld b, b
    cp a
    nop
    rst $38
    pop bc
    ccf
    ret nz

    ccf
    add hl, hl
    rst $18
    dec b
    rst $38
    add hl, bc
    rst $38
    ld [$02ff], sp
    rst $38
    ld [hl], d
    sbc a
    ld b, [hl]
    cp a
    ld h, b
    sbc a
    ld c, b
    cp a
    ld b, e
    rst $38
    add b
    ld a, a
    sbc b
    ld a, a
    db $10
    rst $38
    pop af
    rst $38
    ld a, [$f9fd]
    rst $38
    add e
    rst $38
    sub l
    rst $28
    ld h, a
    sbc a
    rrca
    adc a
    add hl, bc
    adc h
    sub b
    ld [$9000], sp
    sub b
    ld bc, $0381
    add a
    inc bc
    ld c, $07
    ld c, $0e
    inc e
    ld c, $1c
    inc c
    sbc b
    inc c
    adc h
    jr jr_095_6265

    jr jr_095_6267

    db $10
    sub b
    ld de, $c0f0
    ld hl, sp-$10
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
    cp a
    ld a, a
    rst $08
    ccf
    inc sp
    rst $08
    dec de
    rst $20
    ld [hl], e
    rst $38
    ld [hl], c
    rst $38
    db $e3
    rst $38
    ld h, e
    rst $38
    rst $00
    ccf
    rst $20
    rra
    ld e, a
    cp a
    ld a, a
    sbc a
    rst $38
    rrca
    rst $28
    rra
    rst $38
    rra
    rst $18
    ccf
    ld a, a
    rst $38
    ei
    rst $20
    rst $18
    db $e3
    rst $28
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
    cp $ff
    cp $ff
    db $fd
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $30
    rst $38
    db $fc
    rst $38
    cp $ff
    ld a, a
    rst $38
    ccf
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
    ld [bc], a
    rst $38
    dec bc
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
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec bc
    dec bc
    inc c
    dec bc
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_095_637c

    dec bc
    add hl, de
    ld a, [de]
    dec bc
    dec de
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc e

jr_095_637c:
    dec e
    ld e, $1f
    jr nz, jr_095_638c

    dec bc
    ld hl, $2322
    inc h
    dec h
    ld h, $27
    jr z, jr_095_63b4

    ld a, [hl+]

jr_095_638c:
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_095_63c8

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $09
    add hl, bc
    add hl, bc
    scf
    jr c, jr_095_63db

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    add hl, bc
    add hl, bc
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c

jr_095_63b4:
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    add hl, bc
    add hl, bc
    add hl, bc
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

jr_095_63c8:
    ld e, e
    ld e, h
    ld e, l
    add hl, bc
    add hl, bc
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

jr_095_63db:
    add hl, bc
    add hl, bc
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
    add hl, bc
    add hl, bc
    ld a, d
    ld a, e
    add hl, bc
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
    add hl, bc
    add hl, bc
    add a
    adc b
    add hl, bc
    adc c
    adc d
    dec bc
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    add hl, bc
    sub h
    sub l
    add hl, bc
    sub [hl]
    sub a
    sbc b
    scf
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    add hl, bc
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
    ld b, [hl]
    ld b, [hl]
    xor l
    xor [hl]
    xor a
    or b
    or c
    or d
    or e
    add hl, bc
    add hl, bc
    add hl, bc
    or h
    or l
    add hl, bc
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
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
    add hl, bc
    add hl, bc
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $0909

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
    jp $c5c4


    add $09
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
    add hl, bc
    add hl, bc
    rst $00
    ret z

    ret


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
    add hl, bc
    add hl, bc
    add hl, bc
    jp z, $cccb

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
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    call RST_00
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
    inc bc
    nop
    nop
    inc bc
    inc bc
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld b, $01
    ld bc, $0001
    nop
    inc bc
    inc bc
    rlca
    rlca
    inc b
    inc b
    inc bc
    inc bc
    inc bc
    dec b
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
    inc b
    inc b
    inc b
    inc b
    inc b
    ld b, $00
    nop
    nop
    ld bc, $0003
    inc bc
    rlca
    rlca
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld b, $00
    nop
    ld bc, $0001
    nop
    inc b
    inc b
    rlca
    inc b
    inc bc
    nop
    inc b
    inc b
    dec b
    nop
    nop
    nop
    ld bc, $0001
    inc bc
    inc b
    inc b
    inc b
    inc b
    inc bc
    nop
    inc b
    inc b
    nop
    nop
    nop
    ld bc, $0201
    nop
    nop
    inc bc
    inc b
    inc b
    inc b
    inc b
    inc bc
    inc bc
    inc bc
    dec b
    nop
    nop
    ld bc, $0202
    inc bc
    inc bc
    nop
    inc b
    rlca
    inc b
    inc b
    inc b
    inc bc
    inc bc
    nop
    nop
    nop
    ld bc, $0202
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    dec b
    nop
    nop
    ld bc, $0202
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    dec b
    nop
    nop
    ld bc, $0202
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    rlca
    inc bc
    inc bc
    dec b
    dec b
    ld bc, $0100
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, $06
    inc bc
    nop
    nop
    dec b
    ld bc, $0201
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
    dec b
    ld bc, $0201
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
    ld b, $01
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
    ld b, $01
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
    ld b, $01
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
    inc bc
    inc bc
    inc bc
    ld a, a
    cp a
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
    di
    rst $38
    di
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, h
    rst $38
    ld a, h
    rst $38
    add e
    ld a, h
    add e
    ld a, h
    inc bc
    ld a, h
    ld c, b
    ccf
    ld [hl], e
    nop
    ld de, $3900
    nop
    add hl, de
    nop
    jr jr_095_6622

jr_095_6622:
    add hl, sp
    nop
    ld [$0c00], sp
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    ld b, $00
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0200
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
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
    inc bc
    nop
    ld bc, $0100
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
    ld b, b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
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
    ret nz

    ccf
    ret z

    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld h, b
    rra
    ld h, b
    rra
    ld h, b
    rra
    ld h, b
    rra
    jr nz, jr_095_66ef

    jr nz, jr_095_66f1

    jr nz, jr_095_66f3

    jr nc, jr_095_66e5

    jr nc, jr_095_66e7

    sub b
    rrca
    db $10
    rrca
    db $10
    rrca
    sub b
    rrca
    ld d, b
    rrca
    sbc b
    rlca
    adc b

jr_095_66e5:
    rlca
    adc b

jr_095_66e7:
    rlca
    adc b
    rlca
    adc b
    rlca
    xor b
    rlca
    adc h

jr_095_66ef:
    inc bc
    adc h

jr_095_66f1:
    inc bc
    adc h

jr_095_66f3:
    inc bc
    call nz, $c403
    inc bc
    call nc, Call_095_4603
    ld bc, HeaderSGBFlag
    ld d, d
    ld bc, $0132
    ld [hl-], a
    ld bc, $013a
    ld a, e
    nop
    ld a, e
    nop
    ld a, e
    nop
    ld a, c
    nop
    ld sp, hl
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    ld a, l
    nop
    ld a, l
    nop
    ld a, h
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
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
    ccf
    nop
    ld a, $01
    ccf
    nop
    ccf
    ld bc, HeaderManufacturerCode
    ccf
    ld bc, $011f
    dec a
    inc bc
    ccf
    ld bc, $031f
    ccf
    inc bc
    ccf
    inc bc
    ccf
    inc bc
    ccf
    inc bc
    rra
    inc bc
    rra
    inc bc
    rra
    inc bc
    rra
    inc bc
    rra
    rlca
    rra
    rlca
    rla
    rrca
    rra
    rlca
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
    inc bc
    db $fc
    ld bc, $02fe
    db $fc
    nop
    cp $02
    db $fc
    ld bc, $00fe
    cp $01
    cp $01
    cp $01
    cp $01
    cp $00
    rst $38
    nop
    rst $38

jr_095_6784:
    nop
    rst $38

jr_095_6786:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add d
    rst $38
    nop
    rst $38

jr_095_6792:
    add b
    ld a, a
    ret nz

    ccf
    add b
    ccf

Jump_095_6798:
    daa
    rra
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    jr c, jr_095_6792

    jr nc, jr_095_6784

    jr nz, jr_095_6786

    ld h, b
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    ldh [$60], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
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

    cp a
    ret nz

    rst $38
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
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
    rst $30
    ld [$00ff], sp
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld d, l
    nop
    ld [hl], e
    inc c
    nop
    ccf
    ld [hl], e
    rst $38
    dec l
    di
    cp b
    di
    or d
    db $fc
    or d
    db $fc
    or c
    ld a, [$f1b9]
    cp h
    ei
    or h
    cp $b9
    cp $de
    ld sp, hl
    sbc $f9
    db $dd
    rst $38
    jp c, $dfff

    db $fd
    ret c

    rst $38
    sbc $fd
    rst $18
    rst $38
    cp $ff
    rst $28
    db $fc
    xor $ff
    rst $28
    rst $38
    db $ed
    rst $38
    xor $ff
    rst $28
    db $fc
    rst $28
    rst $38
    db $fd
    rst $38
    xor $ff
    rst $30
    cp $f6
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    inc b
    ld a, [c]
    dec b
    ld a, [c]
    dec c
    ld a, [c]
    ld [$0df3], sp
    ld a, [c]
    ld [$08f3], sp
    di
    ld a, [bc]
    pop af
    ld a, [bc]
    pop af
    ld [bc], a
    ld sp, hl
    ld [bc], a
    ld sp, hl
    ld b, $f9
    ld [bc], a
    ld sp, hl
    inc b
    ld sp, hl
    inc b
    ld sp, hl
    dec b
    ld hl, sp+$05
    ld hl, sp+$09
    db $f4
    add hl, bc
    db $f4
    dec hl
    call nc, $d02e
    ld l, $d0
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    nop
    rst $38
    nop
    rst $38
    ld bc, $fffe
    cp $fe
    cp $fe
    cp $fc
    ld hl, sp-$40
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
    db $fd
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
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
    ld d, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    di
    rst $38
    ldh [$ca], a
    jp nz, $eec4

    ret nz

    jp hl


    ldh a, [$71]
    ld hl, sp-$05
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
    rra
    ld a, a
    ld a, a
    sbc a
    rrca
    sbc a
    and a
    ld e, a
    ld h, a
    inc sp
    xor a
    ld d, e
    cp [hl]
    call $ce39
    dec [hl]
    ei
    db $fc
    inc sp
    ld e, l
    xor $d7
    xor $ad
    ei
    ld [hl], a
    cp e
    dec sp
    xor $d6
    rst $28
    and c
    rst $38
    sbc [hl]
    db $fd
    reti


    cp a
    scf
    xor $4f
    push af
    jp c, $84bd

    rst $38
    ld d, e
    rst $38
    ld a, [hl+]
    rst $30
    ld b, d
    db $fd
    add sp, -$61
    ld [hl], e
    rst $38
    inc sp
    rst $38
    cp $ff
    sbc $ff
    ei
    rst $38
    scf
    ei
    cpl
    cp $d7
    xor $ad
    ei
    ld e, l
    cp e
    rst $30
    xor [hl]
    cp $e7
    xor a
    ld sp, hl
    rst $38
    sbc c
    res 6, a
    ei
    rst $20
    rst $30
    rst $18
    rst $38
    adc a
    cp a
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    sub a
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld [bc], a
    db $fd
    rlca
    ld hl, sp-$04
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    db $fd
    jp nz, $807f

    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
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
    nop
    rst $38
    add b
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
    ld c, $f0
    db $fd
    nop
    db $fc
    nop
    cp [hl]
    ld b, b
    push af
    rst $38
    nop
    ld d, a
    jr nz, jr_095_69a9

    ld [de], a
    ld b, a
    nop
    adc h
    add b
    inc c
    ld h, b
    inc de
    ld bc, $4e33
    nop
    add h
    call z, $caa0
    add e
    pop af
    reti


    ld [c], a
    db $e4
    cp $f4
    cp $fe
    ld sp, hl
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ccf

jr_095_69a9:
    rst $38
    rst $18
    cp a
    ld l, a
    rst $38
    or a
    ld l, a
    ei
    sbc a
    sub a
    rst $38
    ld l, e
    rst $30
    xor e
    ld [hl], a
    cpl
    rst $18
    and a
    rst $18
    db $db
    ld [hl], a
    db $eb
    ld [hl], a
    cpl
    rst $18
    rst $18
    rst $28
    rlca
    ei
    ld a, a
    or e
    add e
    ld a, a
    rst $38
    rst $08
    xor e
    rst $38
    inc sp
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    cp e
    rst $38
    rst $18
    cp a
    xor a
    rst $38
    ld l, a
    rst $38
    rra
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fd
    cp $f9
    rst $30
    db $fd
    rst $28
    di
    ei
    db $f4
    rst $38
    call z, $dfef
    ei
    rst $38
    or b
    rst $38
    rra
    rst $38
    ldh a, [rIE]
    rra
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
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ldh a, [rP1]
    ldh a, [rP1]
    ld b, b
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
    and h
    db $fc
    ld c, e
    rst $38
    ld [de], a
    ld a, [$fb0b]
    ld bc, $11e1
    pop de
    ld [$0088], sp
    nop
    nop
    nop
    nop
    sub h
    nop
    call z, $e400
    add b
    ld a, [c]
    add b
    cp $c0
    ccf
    ldh a, [$1f]
    ld d, d
    xor a
    sbc $67
    ld d, h
    xor e
    or b
    dec de
    ld b, l
    cp e
    adc a
    ld h, a
    sbc b
    ld h, a
    ld a, l
    sbc e
    ld [hl], h
    sbc e
    sbc e
    ld h, a
    ld a, [hl-]
    rst $20
    ret c

    rst $38
    ret


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    nop
    cp a
    nop
    ld c, a
    sub b
    ld e, [hl]
    add b
    ld a, [hl]
    add b
    dec hl
    add b
    ret nc

    cpl
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld sp, hl
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld sp, hl
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
    cp $f3
    db $fd
    call c, $dffb
    and $ff
    push hl
    ld a, a
    reti


    db $eb
    sbc [hl]
    dec sp
    and $8f
    ld [hl], l
    ld l, e
    db $dd
    di
    sbc $2a
    rst $30
    nop
    db $fd
    add b
    call $ff02
    inc [hl]
    rst $38
    rlca
    rst $38
    ld hl, sp-$08
    add b
    ldh [$f8], a
    nop
    rst $38
    nop
    cp $00
    rst $38
    nop
    ldh a, [rP1]
    push de
    nop
    ldh a, [rP1]
    ret nz

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
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    jr nz, jr_095_6b41

    ccf
    jr nc, @+$41

    dec l
    ccf
    inc d
    rra
    jp c, $89df

    sbc c
    ld b, h
    ld b, h
    nop
    ld bc, $2707
    ld [bc], a
    ld d, e
    ld bc, $00c7
    ld b, a
    dec b
    ld a, $01
    ld a, $04
    ei
    rla
    ld sp, hl
    ld [hl+], a

jr_095_6b41:
    rst $38
    db $76
    rst $28
    ret z

    cp a
    db $fd
    sbc e
    nop
    rst $38
    ld a, [hl]
    rst $20
    add b
    rst $38
    cp l
    db $db
    ldh a, [$9f]
    ld a, a
    and $67
    cp $3a
    db $dd
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc a
    jp $c33c


    db $ec
    inc bc
    inc a
    jp $c33c


    inc [hl]
    rlc e
    db $fc
    inc bc
    db $fc
    cp $ff
    cp $ff
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, $ff
    ld a, [hl]
    rst $38
    ld a, $ff
    ld a, $ff
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    ei
    cp [hl]
    ei
    ccf
    adc $db
    ld l, a
    dec d
    ei
    cp e
    xor $d6
    ld l, a
    sub e
    ld a, a
    sbc [hl]
    ei
    cp $e7
    and a
    ld a, a
    dec e
    ei
    sbc $ff
    rst $08
    rst $38
    pop bc
    rst $38
    ld a, a
    rst $38
    ldh a, [$f0]
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
    cp $00
    push af
    nop
    db $ed
    nop
    add sp, $00
    ret nc

    nop
    nop
    nop
    nop
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
    db $fc
    nop
    db $fc
    nop
    db $f4
    nop
    ldh a, [rP1]
    or b
    nop
    ld e, a
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
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    ld b, b
    ccf
    rra
    nop
    rra
    nop
    ccf
    nop
    rst $38
    rst $38
    xor e
    rst $38
    rst $18
    inc sp
    ld h, [hl]
    cp e
    ld e, l
    xor $5d
    xor $d7
    cp e
    ld d, [hl]
    cp e
    ld a, l
    rst $28
    ld [hl], l
    rst $28
    db $db
    cp a
    rst $10
    cp a
    ccf
    rst $28
    rst $38
    ld l, a
    cp a
    rst $18
    rst $18
    cp a
    ccf
    rst $38
    cp $7f
    ld a, [hl]
    rst $38
    db $fc
    rst $38
    ld sp, hl
    cp $dd
    cp $d8

jr_095_6c3d:
    rst $38
    ld hl, sp-$01
    di
    cp $f5
    cp $f1
    rst $38
    ld hl, sp-$01
    db $f4
    rst $38
    ld [hl], b
    rst $38
    ld [hl], c
    rst $38
    ld a, b
    rst $38
    add b
    db $76
    adc a
    ld [hl], b
    add d
    ld a, c
    adc [hl]
    ld [hl], b
    ret z

    ld [hl], $ca
    dec [hl]
    adc $39
    ld b, a
    ld a, $55
    ld a, [hl+]
    ld de, $00ef
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ldh [$1f], a
    jr nc, jr_095_6c3d

    jr jr_095_6c97

    jr c, @+$09

    sbc [hl]
    ld b, c
    push af
    ld [bc], a
    inc e
    ld hl, $08d7
    call c, $9702
    jr nz, @-$4a

    add hl, bc
    ld b, b
    rst $38
    nop
    rst $38
    nop
    cp $00
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_095_6c97:
    nop
    db $ec
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ld a, [c]
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
    dec b
    ld sp, hl
    inc b
    ld sp, hl
    add h
    ld a, c
    add h
    ld a, c
    add h
    ld a, c
    add h
    ld a, c
    call nz, $8439
    ld a, c
    rst $20
    add hl, de
    or b
    ld c, a
    or b
    ld c, a
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    cp $01
    or [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, $ff
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    ld e, b
    rst $38
    db $ec
    rra
    ld hl, sp+$1f
    jr c, @+$01

    cp d
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $fd
    ld hl, sp-$03
    pop af
    cp $f8
    rst $30
    ldh [$fd], a
    jp nz, $dafd

    rst $30
    xor b
    rst $30
    ld [$e2dd], a
    db $dd
    ld l, d
    or a
    ld [$7af7], sp
    call $fd42
    ld l, d
    or a
    ld bc, $5bff
    db $ec
    add c
    cp $3b
    or $8b
    push af
    ld a, [$aacd]
    rst $30
    cp d
    rst $30
    adc d
    db $fd
    ld e, a
    db $ed
    cp d
    rst $30
    or l
    rst $38
    jp z, $e6fd

    rst $38
    cp d
    rst $30
    cp a
    db $fd
    call $d2ff
    ld [hl+], a
    ld b, l
    or b
    dec b
    ld hl, sp+$5f
    and b
    cpl
    sub d
    ld [de], a
    db $ed
    ld [hl-], a
    call $f60b
    inc b
    ei
    ld [bc], a
    db $fd
    ld bc, $01fe

jr_095_6d57:
    cp $07
    ld hl, sp+$07
    ld a, b
    rst $20

jr_095_6d5d:
    jr jr_095_6dce

jr_095_6d5f:
    sub b
    ld hl, sp-$01
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

jr_095_6d6f:
    nop
    rst $38
    nop
    push af
    nop
    rst $38
    nop
    rst $38
    nop
    dec [hl]
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
    db $fd
    nop
    and b
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, e
    rst $20
    daa
    db $e3
    rlca
    db $e3
    dec bc
    rst $30
    rra
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor e
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    jr c, @+$09

    jr jr_095_6dcb

    jr c, @+$09

    db $10
    rrca
    jr nc, jr_095_6dd9

    sbc b

jr_095_6dcb:
    rlca
    jr nc, jr_095_6d5d

jr_095_6dce:
    jr c, jr_095_6d57

    or b
    rrca
    jr c, jr_095_6ddb

    cp b
    rlca
    jr c, jr_095_6d5f

    cp b

jr_095_6dd9:
    rlca
    or b

jr_095_6ddb:
    rrca
    cp b
    rlca
    jr nc, jr_095_6d6f

    or c
    rrca
    or c
    rrca
    ld [hl], c
    adc a
    ldh a, [rIF]
    ld [hl], b
    adc a
    ldh a, [rIF]
    ldh a, [rIF]
    ld [hl], b
    adc a
    rrca
    rst $38
    rrca
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    sbc a
    rst $38
    rrca
    rst $38
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ldh [$1f], a
    ld h, c
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    rst $38
    ccf
    ccf
    rst $18
    ccf
    rst $18
    rra
    rrca
    ld bc, $0300
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    jp z, $fe00

    nop
    and d
    nop
    inc b
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
    pop de
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ldh [rIE], a
    jr nz, @+$01

    add b
    ld a, a
    ldh [$7f], a
    ld b, b
    rst $38
    ldh [$7f], a
    ldh [$7f], a
    ld h, b
    rst $38
    ld b, b
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
    ccf
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
    rst $00
    db $fc
    rst $38
    db $fc
    ei
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    add e
    ld a, h
    db $fc
    rst $38
    ld a, h
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ret z

    rst $38
    call z, $f8ff
    rst $38
    db $fc
    rst $38
    add e
    ld a, h
    ld d, e
    db $fc
    ld d, a
    ld hl, sp+$57
    ld hl, sp+$57
    ld hl, sp+$57
    ld hl, sp+$57
    ld hl, sp+$57
    ld hl, sp+$47
    ld hl, sp+$67
    ld hl, sp+$47
    ld hl, sp+$67
    ld hl, sp+$57
    ld hl, sp-$19
    ld hl, sp+$67
    ld hl, sp+$67
    ld hl, sp-$39
    ld hl, sp-$19
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$08
    rst $38
    cp $e3
    rst $20
    pop bc
    add e
    ld bc, $00c1
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
    ld h, c
    nop
    add c
    nop
    ret nz

    nop
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
    rst $38
    nop
    ei
    nop
    ret nz

    nop
    or $00
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    add $ff
    or b
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
    rst $38
    nop
    xor $00
    db $ec
    nop
    db $fc
    nop
    db $fc
    nop
    call nc, $d000
    nop
    ret nz

    nop
    and b
    nop
    db $fc
    nop
    pop bc
    ld a, $c0
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    pop de
    nop
    sbc b
    rst $38
    add b
    rst $38
    or h
    ld hl, sp-$0c
    db $fc
    ld a, [$fbf4]
    db $f4
    rst $30
    db $fc
    db $fc
    rst $30
    sub h
    ld h, b
    add h
    ld [hl], b
    sub h
    ld [hl], b
    sub h
    ld a, h
    adc c
    ld a, [hl]
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$ff08], sp
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$3cff], sp
    rst $08
    inc a
    rst $08
    inc a
    rst $08
    inc a
    rst $08
    adc b
    rst $38
    ld hl, sp-$01
    ld hl, sp+$7f
    ld a, b
    ld a, a
    jr c, jr_095_700d

    rra
    rrca
    rst $30
    rrca
    ei
    rlca
    cp $01
    adc [hl]
    ld [hl], c
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $08
    nop
    dec l
    nop
    ld b, e
    nop
    adc e
    nop
    ld [hl], h
    nop
    ld [$2000], sp
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    pop hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_095_700d:
    nop
    ld [bc], a
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld a, [$fc00]
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    add sp, $00
    ld sp, hl
    nop
    ei
    nop
    pop de
    nop
    ld sp, hl
    nop
    ld hl, sp+$00
    cp $00
    ld a, [c]
    nop
    or b
    nop
    pop af
    nop
    ldh [rP1], a
    ret


    nop
    add sp, $00
    and $00
    call nz, $d200
    nop
    db $e4
    nop
    call nc, $dc00
    nop
    call nc, $c400
    nop
    db $f4
    nop
    db $ec
    nop
    pop de
    nop

jr_095_704c:
    pop hl
    nop
    add b
    nop
    nop
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
    ret nz

    nop
    ld c, $f0
    rra
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [$8f]
    ld [hl], b
    rrca
    rra
    nop
    add c
    nop
    nop
    nop
    add c
    nop
    adc b
    nop
    ld l, b
    jr jr_095_704c

    inc b
    rst $00
    ret nc

    add c
    ld h, d
    sub e
    ld d, d
    and c
    ld a, [c]
    add c
    ld a, [c]
    add e
    add d
    add c
    ld h, d
    pop hl
    sbc $f3
    ld a, [c]
    nop
    ld a, [$fe00]
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
    add b
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp+$7f
    ld a, h
    ccf
    ccf
    rrca
    rrca
    rrca
    rlca
    inc bc
    db $fd
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
    xor a
    nop
    add d
    nop
    add hl, bc
    nop
    ld bc, $0000
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
    rra
    nop
    rrca
    nop
    ccf
    nop
    ccf
    nop
    ld a, [hl]
    nop
    ld [hl], b
    nop
    ld h, b
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
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    and b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_095_7106

jr_095_7106:
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_095_7146

jr_095_7146:
    jr nz, jr_095_7148

jr_095_7148:
    and b
    nop
    add b
    nop
    ret nz

    nop
    add b
    nop
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    db $e4
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    db $fd
    add b
    rst $38
    ret nz

    ldh a, [rIE]
    db $fc
    ld a, a
    ld a, h
    ccf
    ld a, $1f
    rra
    rrca
    rrca
    inc bc
    inc bc
    inc bc
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld e, e
    nop
    ld [bc], a
    nop
    ld bc, $0000
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
    nop
    nop
    db $ed
    nop
    and l
    nop
    nop
    nop
    ld de, $1100
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    and b
    nop
    ldh a, [$80]
    add sp, -$40
    ldh a, [$e0]
    cp $f8
    cp $7f
    ld a, a
    ccf
    rra
    rra
    rrca
    rlca
    rlca
    rlca
    inc bc
    ld bc, $0000
    nop
    nop
    ld e, a
    nop
    ccf
    nop
    ld a, a
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
    ldh a, [rIF]
    db $fd
    ld [bc], a
    rst $38
    nop
    cp $01
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    nop
    nop
    nop
    nop
    ld h, $00
    nop
    nop
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
    add b
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    ccf
    ld a, $3f
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    db $fd
    inc bc
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    rst $18
    nop
    ld l, a
    nop
    ld e, a
    nop
    rlca
    nop
    ld d, e
    nop
    inc hl
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
    dec bc
    nop
    ld l, b
    nop
    ld e, h
    nop
    ld [bc], a
    nop
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    db $fc
    rst $38
    cp $7f
    ccf
    rra
    rra
    dec de
    db $fd
    rrca
    cp $07
    db $fd
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
    nop
    nop
    ld bc, $0100
    nop
    ld b, b
    nop
    and b
    nop
    nop
    nop
    jr nz, jr_095_726e

jr_095_726e:
    nop
    nop
    nop
    nop
    nop
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

    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    ccf
    cp $9f
    ld a, a
    ld c, a
    ccf
    inc hl
    rra
    add hl, de
    rlca
    inc b
    add b
    ld b, $10
    inc bc
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
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ld hl, sp-$08
    nop
    nop
    nop
    ld bc, $0002
    inc bc
    inc b
    dec b
    nop
    ld b, $07
    nop
    nop
    ld [$0a09], sp
    dec bc
    nop
    inc c
    dec c
    ld c, $0f
    nop
    nop
    nop
    nop
    stop
    nop
    nop
    nop
    ld de, $1312
    inc d
    dec d
    ld d, $00
    nop
    nop
    rla
    jr jr_095_72dc

jr_095_72dc:
    add hl, de
    nop
    nop
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    nop
    dec h
    nop
    nop
    nop
    nop
    ld h, $27
    jr z, jr_095_731d

    jr nz, @+$2c

    jr nz, jr_095_7323

    jr nz, @+$22

    inc l
    dec l
    ld l, $2f
    jr nc, jr_095_7331

    ld [hl-], a
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $20
    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_095_732d

    jr nz, jr_095_732f

    scf
    jr c, jr_095_734b

    ld [hl-], a
    ld a, [hl-]
    dec sp
    inc a
    dec a
    jr nz, jr_095_7344

    jr nz, @+$22

    jr nz, jr_095_733d

jr_095_731d:
    jr nz, jr_095_733f

    ld a, $3f
    ld b, b
    ld b, c

jr_095_7323:
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld [hl], $47
    jr nz, jr_095_734c

    ld c, b

jr_095_732d:
    jr nz, jr_095_734f

jr_095_732f:
    ld c, c
    ld c, d

jr_095_7331:
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    jr nz, jr_095_735a

    jr nz, jr_095_7367

    ld c, b

jr_095_733d:
    ld d, d
    ld d, e

jr_095_733f:
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b

jr_095_7344:
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a

jr_095_734b:
    ld h, b

jr_095_734c:
    ld h, c
    ld h, d
    ld h, e

jr_095_734f:
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
    dec hl

jr_095_735a:
    jr nz, jr_095_737c

    jr nz, jr_095_73cc

    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a

jr_095_7367:
    ld a, b
    ld a, c
    ld a, d
    jr nz, @+$22

    jr nz, jr_095_738e

    jr nz, jr_095_7390

    ld [hl-], a
    ld [hl-], a
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    jr nz, jr_095_739c

jr_095_737c:
    add e
    add h
    add l
    jr nz, jr_095_73b3

    ld [hl-], a
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    jr nz, jr_095_73ab

    adc a

jr_095_738e:
    jr nz, jr_095_73b0

jr_095_7390:
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b

jr_095_739c:
    dec hl
    jr nz, jr_095_73bf

    sbc c
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c

jr_095_73ab:
    and d
    jr nz, jr_095_73ce

    jr nz, @+$22

jr_095_73b0:
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a

jr_095_73b3:
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
    jr nz, jr_095_73df

jr_095_73bf:
    jr nz, jr_095_73f3

    ld [hl-], a
    ld [hl-], a
    xor l
    xor [hl]
    xor a
    or b
    or c
    or d
    or e
    or h
    or l

jr_095_73cc:
    or [hl]
    or a

jr_095_73ce:
    cp b
    jr nz, jr_095_7403

    ld [hl-], a
    ld [hl-], a
    cp c
    cp d
    cp e
    cp h
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc

jr_095_73df:
    jp nz, Jump_000_3232

    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    jp Jump_000_0032


    nop
    nop

jr_095_73f3:
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    nop

jr_095_7403:
    inc bc
    inc bc
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
    nop
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
    nop
    nop
    nop
    nop
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
    inc bc
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    inc hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0305
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    nop
    nop
    inc bc
    nop
    nop
    nop
    inc bc
    ld bc, $0101
    ld bc, $0101
    inc bc
    nop
    nop
    nop
    inc hl
    ld b, e
    nop
    nop
    nop
    inc bc
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0305
    ld bc, $0101
    ld bc, $0101
    dec b
    inc bc
    inc bc
    nop
    nop
    nop
    dec b
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    nop
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc b
    rlca
    inc bc
    inc bc
    inc bc
    nop
    inc hl
    inc bc
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc b
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc hl
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    inc b
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
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    rlca
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
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
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
    inc b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld bc, $00fe
    cp $00
    cp $00
    cp $02
    db $fc
    ld [bc], a
    db $fc
    nop
    db $fc
    nop
    db $fc
    ld bc, $00fc
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, h
    rst $38
    inc de
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    add a
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
    nop
    rst $38
    nop
    rst $38
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
    rst $38
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
    nop
    rst $38
    nop
    rst $38
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
    nop
    rrca
    nop
    ld c, $00
    rrca
    nop
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $fff0
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
    cp $ff
    cp $ff
    cp $ff
    cp $ff
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
    add b
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    rrca
    ld [$0807], sp
    rlca
    jr nz, jr_095_7629

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
    ld hl, sp-$01
    di
    rst $38
    rst $08
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38

jr_095_7629:
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $30
    nop
    rst $30
    nop
    ei
    nop
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    rst $38
    nop
    ei
    nop
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
    cp a
    nop
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
    ccf
    ret nz

    ccf
    ret nz

    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
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
    db $fc
    rst $38
    cp $ff
    cp $ff
    ld a, [$ceff]
    rst $38
    cp [hl]
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
    ei
    nop
    ei
    nop
    ei
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
    cp $00
    rst $38
    nop
    rst $28
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
    nop
    rst $18
    nop
    rst $38
    push af
    nop
    rst $38
    nop
    ei
    nop
    ld a, [$d800]
    nop
    ld a, b
    nop
    db $fd
    nop
    rst $38
    nop
    ccf
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
    ld a, a
    nop
    rst $28
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
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
    db $fc
    rst $38
    db $fc
    rst $38
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
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    nop
    ldh [rP1], a
    and b
    nop
    ld h, b
    nop
    ret nz

    nop
    ld h, b
    nop
    ldh [rP1], a
    ldh [rP1], a
    and b
    nop
    ret nz

    nop
    ld [c], a
    nop
    or $00
    db $ed
    nop
    rst $38
    nop
    db $ed
    nop
    add $00
    rst $00
    nop
    adc $00
    push bc
    nop
    db $ed
    nop
    rst $00
    nop
    rst $28
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    sbc a
    nop
    cp a
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
    cp a
    nop
    rst $18
    nop
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
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
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
    db $fc
    rst $38
    cp $ff
    db $fc
    rst $38
    cp $ff
    ld bc, $03fe
    cp h
    inc bc
    db $fc
    rlca
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    db $fc
    db $fd
    ld hl, sp-$08
    ld hl, sp-$08
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    ld d, b
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ld a, [$b700]
    nop
    ld h, a
    nop
    ld l, a
    nop
    ld e, h
    nop
    rst $08
    nop
    ld l, d
    nop
    ld [$e300], a
    nop
    db $ed
    nop
    xor $00
    xor $00
    db $f4
    nop
    db $fc
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
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    ld a, a
    nop
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
    nop
    nop
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
    dec b
    nop
    ld bc, $0300
    nop
    rlca
    nop
    inc bc
    nop
    rlca
    nop
    inc bc
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
    ld b, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ldh a, [rP1]
    ret nc

    nop
    add sp, $00
    db $ec
    nop
    cp [hl]
    nop
    rst $18
    nop
    cp $00
    rst $38
    nop
    db $fd
    nop
    cp $00
    rst $28
    nop
    rst $28
    nop
    rst $10
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
    pop af
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    add b
    nop
    add b
    nop
    ld a, a
    add b
    rrca
    ldh a, [rNR41]
    rst $38
    nop
    rst $38
    jr nz, @+$01

    rra
    ldh [$1f], a
    rst $20
    ccf
    rst $28
    rst $28
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    cp a
    ld a, a
    cp a
    ld a, a
    rst $18
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
    ld a, h
    db $fc
    ld a, h
    db $fc
    ld a, a
    rst $38
    ld a, h
    db $fc
    ld a, h
    db $fc
    ld a, a
    rst $38
    inc a
    db $fc
    inc a
    db $fc
    ccf
    rst $38
    ccf
    rst $38

jr_095_7980:
    inc a
    db $fc
    ccf
    rst $38
    ccf
    rst $38
    jr c, jr_095_7980

    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
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
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    rst $38
    nop
    db $fd
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    nop
    nop
    add b
    nop
    rst $38
    nop
    rst $18
    nop
    rst $38
    nop
    add b
    nop
    nop
    nop
    rst $38
    nop
    ret nz

    nop
    ld a, h
    add b
    rlca
    ld hl, sp+$00
    rst $38
    rst $38
    dec hl
    rst $38
    rst $38
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
    cp $fc
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
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    cp l
    cp a
    push af
    sub e
    db $fd
    db $d3
    cp l
    cp a
    push af
    sub e
    db $fd
    db $d3
    cp l
    cp a
    db $f4
    sub e
    db $fc
    db $d3
    cp $ff
    cp $3f
    cp $c3
    cp $ff
    cp $1f
    cp $01
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ldh a, [rP1]
    rra
    ldh [$fa], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    add c
    ld bc, $00e0
    ld a, [hl]
    add b
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    nop
    cp $00
    cp $00
    cp $02
    db $fc
    ld [bc], a
    db $fc
    ld b, $fc
    add h
    cp $a6
    db $fc
    push af
    cp $fd
    cp $fd
    ld sp, hl
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld sp, hl
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld sp, hl
    ld hl, sp-$07
    db $fc
    ld hl, sp+$38
    ld hl, sp+$00
    ld hl, sp+$04
    ld hl, sp-$3e
    db $fc
    db $fc
    cp $fc
    cp $fc
    cp $55
    cp $01
    cp $01
    cp $81
    cp $ff
    rst $38

jr_095_7af2:
    rst $38
    rst $38

jr_095_7af4:
    adc a
    ld a, a

jr_095_7af6:
    cp $21

jr_095_7af8:
    rst $38

jr_095_7af9:
    jr nz, jr_095_7af9

    jr nz, @+$01

    jr nz, @-$0f

Jump_095_7aff:
    jr nc, @-$0f

    jr nc, jr_095_7af2

    jr nc, jr_095_7af4

    jr nc, jr_095_7af6

    jr nc, jr_095_7af8

    jr nc, @+$01

    jr nz, @-$0f

    jr nc, @-$0f

    jr nc, @-$0f

    jr nc, @-$0f

    jr nc, @-$0f

    jr nc, @-$0f

    jr nc, @-$0f

    jr nc, @-$0f

    jr nc, @-$0f

    jr nc, @-$0f

    jr nc, @+$01

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
    ld a, a
    db $10
    ei
    db $10
    ei
    db $10
    ei
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
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    sbc a
    db $10
    ld de, $1010
    add b
    nop
    rrca
    ldh a, [rSB]
    cp $01
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $ffff
    ld bc, $01ff
    rst $38
    ld bc, $817f
    rrca
    pop af
    inc bc
    db $fd
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
    jr nc, jr_095_7b88

jr_095_7b88:
    rst $28
    nop
    ei
    nop
    ld bc, $0000
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    inc c
    ldh a, [$ec]
    ldh a, [$f4]
    ld hl, sp-$04
    ldh a, [$fc]
    ld hl, sp-$04
    db $fc
    db $fc
    ld hl, sp-$04
    ld a, b
    ld a, h
    inc a
    inc a
    jr c, jr_095_7beb

    inc a
    inc [hl]
    jr c, jr_095_7bd7

    jr c, jr_095_7c25

    inc a
    ld h, [hl]
    jr c, jr_095_7c2d

    jr c, jr_095_7c31

    jr c, jr_095_7c1d

    inc a
    db $76
    jr c, jr_095_7c33

    ld a, h
    di
    db $fc
    or $f8
    di
    db $fc
    rst $30
    ld hl, sp-$0e
    db $fc
    di
    db $fc
    di
    db $fc
    ld a, [$fbfc]
    db $fc
    ei
    db $fc
    ei

jr_095_7bd7:
    db $fc
    ld a, c
    ld a, [hl]
    dec sp
    ld a, h
    dec sp
    ld a, h
    ld a, c
    ld a, $7b
    inc a
    ld a, e
    inc a
    dec sp
    inc a
    ld a, e
    inc a
    ei
    inc a
    ld a, e

jr_095_7beb:
    inc a
    ld a, e
    inc a
    ei
    ld a, h
    cp $fe
    rst $38
    rst $38
    cp $fe
    ld e, $fe
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
    rst $18
    nop
    rst $18
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
    ld b, b

jr_095_7c1d:
    ld a, a
    ld b, b
    ld a, a
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38

jr_095_7c25:
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38

jr_095_7c2d:
    ret nz

    rst $38
    ret nz

    rst $38

jr_095_7c31:
    ret nz

    rst $38

jr_095_7c33:
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
    nop
    nop
    nop
    nop
    nop
    nop
    and h
    nop
    cp $00
    ei
    inc b
    ld [$0806], sp
    rlca
    rst $38
    rrca
    rst $38
    rrca
    cp a
    rrca
    rra
    rrca
    sbc a
    rrca
    rra
    rrca
    sbc a
    rrca
    cp a
    rrca
    rra
    rrca
    ld e, $0f
    sbc [hl]
    rrca
    rra
    rrca
    sbc [hl]
    rrca
    rra
    rrca
    ld e, $0f
    sbc [hl]
    rrca
    ld e, $0f
    ld e, $0f
    ld a, $0f
    sbc [hl]
    rrca
    ld a, $0f
    sbc [hl]
    rrca
    sbc $0f
    sbc [hl]
    rrca
    sbc $0f
    sbc $0f
    sbc $0f
    cp $0f
    sbc $0f
    db $fc
    rrca
    sbc $0f
    cp $0f
    inc c
    rrca
    ld c, $0f
    ld c, $0f
    inc c
    rrca
    inc c
    rrca
    inc c
    rrca
    inc c
    rrca
    inc c
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $dd
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
    nop
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    rrca
    cp $0f
    cp $0f
    cp $0f
    cp $0f
    cp $0f
    cp $0f
    cp $1f
    cp $1f
    cp $1f
    cp $1e
    db $fc
    ld e, $fc
    rra
    db $fc
    rra
    rst $38
    rra
    rst $38
    ld bc, $00ff
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
    rst $38
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
    rst $38
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
    nop
    sbc $00
    cp $00
    cp $00
    rst $38
    nop
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    ld hl, sp-$40
    ld hl, sp-$40
    ld sp, hl
    pop bc
    ld sp, hl
    pop bc
    ei
    add e
    ei
    add e
    rst $38
    add a
    rst $38
    add a
    rst $38
    add a
    rst $38
    add a
    rst $38
    add a
    rst $38
    rlca
    rst $38
    rlca
    cp $06
    cp $06
    db $fc
    inc b
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld sp, hl
    ld bc, $03fb
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    cp $c0
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rlca
    nop
    nop
    stop
    ld d, b
    nop
    db $f4
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
    cp $00
    rst $38
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
    nop
    rst $38
    nop
    cp $00
    rst $28
    nop
    rst $38
    nop
    cp a
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
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    add c
    add c
    add c
    add c
    inc bc
    inc bc
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
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f0]
    ldh a, [rSVBK]
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    rst $38
    db $fc
    nop
    rst $38
    nop
    rrca
    nop
    nop
    nop
    nop
    jr nz, jr_095_7e8a

jr_095_7e8a:
    ld l, l
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    halt
    ld a, c
    nop
    xor $00
    rst $38
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
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    rst $38
    rst $38
    rst $38
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
    ccf
    ccf
    ld a, [hl]
    ld a, [hl]
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

    ret nz

    ret nz

    add b
    add b
    add b
    add b
    ld bc, $0301
    inc bc
    inc bc
    inc bc
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
    ld h, b
    add b
    rst $38
    ldh a, [rIE]
    rst $38
    ccf

Jump_095_7f25:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    or c
    nop
    sub c
    nop
    cp a
    nop
    cp a
    nop
    db $fd
    nop
    rst $30
    nop
    rst $38
    nop
    cp $00
    db $fc
    nop
    db $fc
    nop
    push hl
    nop
    ei
    nop
    ld a, [$fb00]
    nop
    rst $30
    nop
    rst $30
    nop
    rst $10
    nop
    rst $28
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    ld e, a
    nop
    rst $38
    nop
    nop
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    ret nz

    add b
    add b
    add b
    add b
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
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

    ret nz

    ret nz

    add c
    add c
    add c
    add c
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
    cp $c0
    rst $38
    cp $7f
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    add c
    nop
    di
    nop
    cp c
    nop
    rst $38
    nop
    cp l
    nop
    cp a
    nop
    ld a, a
    nop
    db $fc
    nop
    ld a, [hl]
    nop
    ld a, c
    nop
    cp b
    nop
    ld a, c
    nop
    or e
    nop
    di
    nop
    ei
    nop
    rst $20
    nop
    rst $30
    nop
    rst $28
    nop
    rst $38
    nop
    rst $18
    nop
    rst $08
    nop
    rst $38
    nop
    rst $18
    nop
    xor a
    nop
    cp a
    nop
    sbc [hl]
    nop
    cp $00
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
