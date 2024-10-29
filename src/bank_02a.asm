SECTION "ROM Bank $02a", ROMX[$4000], BANK[$2a]

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
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    cp a
    jr c, jr_02a_4058

    nop
    cp a
    nop
    ccf
    nop
    cp a
    jr nz, jr_02a_4060

    dec e
    cp a
    inc bc
    ccf
    db $20, $bf
    db $10
    ccf
    ld [$06bf], sp
    ccf
    ccf
    cp a
    nop
    ccf
    nop
    cp a
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    ccf
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
    rra
    inc bc
    rra
    inc b
    rra
    jr jr_02a_406c

    nop
    rra
    nop
    rra
    inc e
    rra
    inc bc
    rra
    nop
    rra
    inc bc

jr_02a_4058:
    rra
    inc c
    rra
    db $10
    rra
    nop
    rra
    nop

jr_02a_4060:
    nop
    nop
    nop
    nop
    inc e
    nop
    cp $00
    db $f4
    nop
    ld hl, sp+$00

jr_02a_406c:
    ld hl, sp+$00
    ldh a, [rP1]
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [$80]
    cp $e0
    ei
    ld hl, sp-$02
    adc b
    cp $c0
    rst $38
    db $fc
    rst $38
    cp $ff
    ei
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    cp $ff
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    ld a, [c]
    rst $38
    ld hl, sp-$01

Jump_02a_40a0:
    rst $18
    rst $38
    jp nc, $e0ff

    rst $38
    ld b, b
    rst $20
    ret nz

    rst $28
    nop
    ei
    add b
    push af
    add b
    cp $af
    ret nc

    rlca
    ld hl, sp+$1f
    ldh [rSCX], a
    cp h
    pop bc
    ld a, $91
    ld l, [hl]
    ld hl, $ecde
    inc de
    rst $30
    ld [$7c82], sp
    and a
    ld a, b
    pop af
    rst $38
    ld c, b
    rlca
    ld e, d
    dec b
    rra
    nop
    ld [hl], a
    nop
    db $eb
    inc b
    ld e, b
    rlca
    inc b
    inc bc
    ld e, [hl]
    ld bc, $00bf
    ld e, a
    nop
    ei
    ld [$38be], sp
    ei
    nop
    call z, $b500
    nop
    cp $00
    add sp, $00
    or d
    nop
    sbc c
    nop
    adc c
    nop
    add d
    rst $38
    add d
    ld hl, sp-$80
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    jr nz, @+$01

    db $10
    rst $38
    db $10
    rst $38
    rra
    rst $38
    ld [hl], b
    rst $38
    add b
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
    ret nz

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
    ldh [rIE], a
    ld e, $ff
    ld bc, $0eff
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    jp Jump_000_00ff


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
    ccf
    ccf
    jr jr_02a_4182

    ld bc, $8100
    add b
    jp Jump_000_0fc0


    nop
    rra
    nop
    rra
    nop
    rst $38
    nop
    rst $30
    nop
    ei
    nop
    rst $38
    nop
    and a
    nop
    nop
    rst $18

jr_02a_4182:
    nop
    dec hl
    nop
    ei
    nop
    rst $38
    dec bc
    rst $38
    ld a, l
    rst $38
    rst $38
    rst $38
    rst $00
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push af
    rst $38
    ld sp, hl
    rst $38
    ld [hl], b
    ei
    ld hl, sp-$01
    add b
    ld hl, sp+$00
    jp hl


    nop
    ld a, a
    nop
    rst $38
    nop
    cp l
    nop
    ld a, a
    nop
    rst $38
    db $fd
    nop
    jp Jump_000_1f00


    nop
    ld a, a
    nop
    add sp, $10
    adc b
    ld a, b
    dec bc
    ld hl, sp+$0f
    ld hl, sp-$03
    inc c
    ld a, c
    ld [$8eff], sp
    dec h
    inc b
    ei
    inc b
    db $e3
    inc e
    add a
    ld a, h
    add [hl]
    ld a, h
    daa
    db $fc
    sbc l
    ld h, h
    ccf
    call nz, $e41f
    rlca
    db $fc
    rla
    db $ec
    db $fd
    dec e
    ld c, a
    ld b, h
    rst $28
    inc b
    adc a
    inc b
    rrca
    inc b
    adc a
    nop
    rra
    nop
    and a
    nop
    call nz, $8404
    inc b
    inc b
    cp $00
    nop
    nop
    nop
    ld bc, $ff00
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
    ld [hl], b
    nop
    cp $00
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ld e, $ff
    ld bc, $00ff
    rst $38
    inc bc
    rst $38
    jp nz, Jump_000_3eff

    rst $38
    inc de
    rst $38
    jr nz, @+$01

    ret nz

    rst $38
    ld hl, sp-$01
    ld b, $ff
    ld bc, $00ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $3d
    inc a
    db $e3
    ld [bc], a
    ld sp, hl
    nop
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [$01ff], sp
    rst $38
    rlca
    rst $38
    rra
    rst $38
    rra
    rst $38
    rlca
    rst $38
    scf
    rst $38
    inc bc
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
    nop
    rst $38
    ld h, b
    push af
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ld hl, sp-$01
    db $ec
    rst $38
    db $f4
    rst $38
    and b
    rst $38
    nop
    or a
    nop
    rst $28
    inc b
    rst $38
    ld b, $ff
    db $e4
    rst $38
    ld a, [hl]
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    adc b
    ld a, a
    ld h, c
    rra
    pop af
    rrca
    ld h, b
    rra
    ld a, [c]
    dec c
    rst $38
    nop
    rst $38

Jump_02a_42bd:
    nop
    rst $38
    nop
    ld [bc], a
    rst $38
    nop
    ld c, a
    inc b
    rlca
    inc b
    rst $10
    nop
    rst $28
    nop
    rst $28
    nop
    ld a, a
    inc b
    ld a, a
    pop af
    nop
    pop af
    nop
    pop hl
    nop
    pop hl
    nop
    pop hl
    nop
    ld a, [$fd0a]
    db $fc
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, [$0000]
    nop
    ld [bc], a
    nop
    ld [hl], b
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
    nop
    nop
    nop
    rlca
    nop
    rra
    nop
    rla
    and b
    adc e
    ld [hl], h
    and a
    ld e, b
    adc a
    ld [hl], b
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc b
    rst $38
    jr @+$01

    ld h, b
    rst $38
    ldh [rIE], a
    rra
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ccf
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

    inc c
    rst $38
    rlca
    rst $38
    ld [$f0ff], sp
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    jr nz, @+$01

    db $10
    rst $38
    inc c
    rst $38
    inc bc
    rst $38
    ld bc, $06ff
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    ld bc, $03ff
    rst $38
    inc e
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    nop
    rst $38
    inc b
    rst $38
    rst $00
    cp [hl]
    ld l, $e7
    inc hl
    rst $28
    rlca
    rst $18
    inc bc
    rst $30
    add a
    sbc a
    rst $38
    sbc a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ei
    ei
    ei
    ld a, [$feff]
    rst $38
    rst $28
    ld a, a
    ld h, c
    cp a
    inc hl
    rst $18

jr_02a_438d:
    rra
    rst $30
    nop

jr_02a_4390:
    nop

jr_02a_4391:
    rst $38

jr_02a_4392:
    add c
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    inc b
    rst $38
    inc h
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    ld b, $bf
    inc de
    rst $18
    ld hl, $38c7
    ret nz

    ccf
    ld h, d
    sbc a
    ld h, b
    sbc a
    jr nz, jr_02a_4391

    add [hl]
    ld a, e
    nop
    rst $38
    ld e, $e1
    adc a
    ldh a, [rDIV]
    ei
    jr nc, jr_02a_438d

    sub b
    ld l, a
    db $10
    rst $28
    ld sp, hl
    ld b, $ff
    rla
    db $fc
    nop
    sbc $00
    db $eb
    nop
    ld [$c600], a
    nop
    ret nz

    nop
    cp $00
    db $fc
    nop
    add b
    nop
    ret nz

    nop
    ld a, a
    ld e, a
    cp c
    add hl, sp
    cp d
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
    ldh [rP1], a
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

Jump_02a_43ff:
    nop
    ld bc, $2d00
    nop
    db $fd
    nop
    xor $11
    rst $08
    jr nc, jr_02a_4392

    jr c, jr_02a_4390

    ld a, h
    add b
    ld b, b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
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
    inc bc
    rst $38
    db $fc
    rst $38
    ld [$06ff], sp
    rst $38
    ld bc, $00ff
    rst $38
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
    nop
    rst $38
    nop
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
    rra
    rst $38
    inc b
    rst $38
    inc c
    rst $38
    jr @+$01

    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    rst $08
    ld a, a
    rra
    xor a
    adc a
    rst $18
    rst $18
    rst $28
    push hl
    rst $38
    rst $28
    rst $38
    add e
    rst $38
    db $e3
    rst $38
    ld hl, sp-$01
    ret z

    db $fd
    ld l, h
    rst $38
    ld c, [hl]
    cp $76
    rst $38
    db $f4
    rst $38
    ldh a, [rIE]
    ld sp, hl
    rst $38
    db $fc
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    inc e
    rst $38
    ld hl, sp-$01
    pop hl
    rst $38
    pop bc
    cp a
    adc h
    rst $38
    adc $bf
    sub b
    rst $38
    nop
    rst $18
    add hl, de
    ei
    ld bc, $07bf
    cp a
    ld de, $13bf
    ld e, a
    ld d, a
    rst $38
    pop af
    rst $38
    di
    ei
    db $e3
    cp $4e
    ld a, b
    ld [$0019], sp
    push bc
    nop
    add [hl]
    nop
    ld b, $00
    inc bc
    nop
    ld de, $9000
    nop
    adc [hl]
    ld [bc], a
    ld e, $02
    ld a, [hl-]
    ld [bc], a
    ld e, $06
    db $db
    db $d3
    rst $30
    rst $30
    adc d
    add d
    ld h, [hl]
    ld b, $62
    ld [bc], a
    inc h
    nop
    ld a, [hl-]
    ld [bc], a
    ld e, $02
    sbc a
    add d
    add hl, bc
    nop
    nop
    nop
    xor a
    rrca
    cp $fe
    ld e, [hl]
    ld b, [hl]
    rst $38
    add h
    nop
    rst $38
    nop
    rst $38
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
    sbc a
    ld h, b
    rrca
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    cp $00
    dec e
    ldh [$3e], a
    pop bc
    cp $00
    sbc a
    ld h, b
    db $fd
    ld [bc], a
    add b
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    ld b, $ff
    ld a, a
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld h, b
    rst $38
    db $10
    rst $38
    rrca
    rst $38
    ld [bc], a
    rst $38
    ld bc, $80ff
    rst $38
    ld h, b
    rst $38
    db $10
    rst $38
    rrca
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, c
    rst $38
    ld [hl-], a
    rst $38
    inc c
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
    db $fd
    ld l, e
    rst $38
    rst $28
    rst $38
    ei
    rst $38
    cp $ff
    rst $38
    rst $38
    xor $ff
    call c, $e1ff
    rst $38
    inc bc
    rst $38
    ld c, $ff
    ld e, d

jr_02a_4576:
    rst $38
    nop
    rst $38
    ld b, d
    ld a, a
    ld d, e
    ld a, a
    ld h, [hl]
    ld a, a
    ld d, a
    ld a, a
    inc d
    rst $38
    ld bc, $e0ff
    rst $28
    jp z, $cbff

    rst $38
    set 7, a
    pop bc
    rst $38
    pop bc
    rst $38
    nop
    rst $38
    add hl, de
    rst $38
    cp d
    rst $38
    cp d
    cp $f8
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$15
    ret z

    rst $38
    adc h
    ld l, e
    ld [$0cdf], sp
    ld l, $0c
    dec de
    jr jr_02a_4576

    ld [$0cef], sp
    sub a
    inc b
    sbc e
    nop
    ld a, [hl-]
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld e, h
    nop
    add l
    nop
    dec e
    jr jr_02a_463d

Call_02a_45bf:
    jr jr_02a_462c

    ld [$1fbf], sp
    rra
    rra
    or a
    nop
    ld h, [hl]
    nop
    dec hl
    nop
    ccf
    inc b
    rra
    inc b
    dec sp
    nop
    ccf
    nop
    sbc a
    nop
    inc de
    ld [bc], a
    rst $38
    xor a
    adc d
    add b
    sbc l
    nop
    sbc a
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
    ld bc, $4f90
    ret nz

    ccf
    xor $11
    cp [hl]
    ld b, b
    ld a, [hl]
    nop
    ld bc, $0000
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
    ldh a, [rIE]
    ld [$04ff], sp
    rst $38
    rlca
    rst $38
    ld bc, $00ff
    rst $38
    ldh [rIE], a
    rra
    rst $38
    add b
    rst $38
    ld h, b

jr_02a_462c:
    rst $38
    db $10
    rst $38
    inc c
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
    nop
    rst $38

jr_02a_463d:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02ff
    rst $38
    ld b, $ff
    ld [$30ff], sp
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ld e, $ff
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    cp $ff
    ld hl, sp-$01
    ld a, a
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld [hl], b
    rst $38
    ld bc, $c0ff
    ld [de], a
    rst $38
    inc hl
    rst $38
    ld a, a
    rst $38
    ld sp, hl
    rst $38
    ld a, c
    rst $38
    ld a, c
    rst $38
    ld [c], a
    rst $38
    ld l, h
    rst $38
    rst $38

Jump_02a_4681:
    add hl, sp
    cp $06
    rst $38
    add a
    rst $38
    and [hl]
    rst $38
    rst $38
    rst $38
    rst $20

jr_02a_468c:
    rst $38
    add a
    ei
    dec de
    ei
    dec de
    rst $38
    rla
    rst $38
    ld b, a
    rst $38
    ld b, a
    db $fd
    dec h
    rst $38
    call c, $d8fe
    cp l
    inc e
    rst $38
    ld b, e
    sbc a
    rla
    rst $18
    rra
    rst $38
    inc c
    rst $38
    nop
    rst $30
    nop
    cp a
    dec bc
    and $06
    db $eb
    ld [$0cff], sp
    ld a, e
    ld [$0074], sp
    ld e, $00
    inc e
    ld [$0b3b], sp
    cp l
    dec e
    ld hl, sp+$08
    ld sp, hl
    cp c
    ld a, e
    ld [$0475], sp
    ld sp, hl
    add b
    ld [hl], c
    nop
    ldh [rP1], a
    ret nz

    nop
    ret nz

jr_02a_46d1:
    nop
    rst $20
    jr nz, jr_02a_46d1

    jr nz, @+$01

    ld a, a
    rst $38
    rst $38
    ld a, [c]
    jr nz, jr_02a_468c

    jr nz, @+$01

    jr nz, jr_02a_46e1

jr_02a_46e1:
    rst $38
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
    db $10
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
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    inc e
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
    rlca
    rst $38
    ld hl, sp-$01
    rlca
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ldh [rIE], a
    rra
    rst $38
    ld [bc], a
    rst $38
    rrca
    rst $38
    ld hl, sp-$01
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld bc, $c0ff
    rst $38
    ld a, $ff
    ld bc, $07ff
    rst $38
    ld sp, hl
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    di
    rst $38
    ld c, $ff
    ld bc, $01ff
    rst $38
    nop
    ld a, a
    rst $38
    rrca
    rst $38
    adc [hl]
    rst $38
    add h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    or $ff
    ldh a, [rIE]
    ret


    rst $38
    ld [hl], l
    rst $38
    jr c, @+$01

    ld a, b
    rst $38
    ld [hl], d
    rst $38
    ld a, $ff
    ld a, a
    rst $38
    rst $38
    db $fd
    sbc a
    rst $30
    rst $38
    rst $18
    rst $38
    rra
    cp $1f
    rst $38
    ld e, $ff
    cp d
    ld a, a
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$05
    ldh a, [rIE]
    or $ff
    db $ec
    rst $38
    ret nc

    rst $38
    ret z

    db $fc
    ret z

    db $fd
    ret nz

    rst $38
    inc c
    rst $38
    ld h, b
    rst $38
    ret nc

    and $00
    ld hl, sp-$50
    cp $b0
    or $00
    ldh a, [rP1]
    jr nc, jr_02a_47b4

jr_02a_47b4:
    ld a, b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    nop
    nop
    dec de
    jr jr_02a_47d7

    jr jr_02a_47de

    jr @+$01

    rst $38
    ld [de], a
    ld [de], a
    cp e
    dec de
    ld a, h
    inc e
    ld [de], a
    ld [de], a
    ld [de], a
    db $10
    ld [hl+], a
    nop
    db $10
    rst $38
    db $10
    rst $38
    jr @+$01

    ei

jr_02a_47d7:
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38

jr_02a_47de:
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
    ld bc, $013e
    db $fc
    inc bc
    cp $01
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
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
    ld hl, sp-$01
    ld b, $ff
    ld bc, $1eff
    rst $38
    jr nz, @+$01

    ldh [rIE], a
    nop
    rst $38
    add e
    rst $38
    ld a, h
    rst $38
    nop
    rst $38
    rra
    rst $38
    ld h, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld h, b
    rst $38
    jr @+$01

    inc b
    rst $38
    ld bc, $80ff
    rst $38
    ld b, b
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    jr @+$01

    add [hl]
    rst $38
    add c
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    ccf
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop

jr_02a_485c:
    rst $38
    nop
    rst $38
    add b
    add h
    rst $38
    or b
    rst $38
    ld a, e
    rst $38
    ld a, b
    rst $38
    ld b, h
    rst $38
    adc $ff
    rst $38
    rst $38
    ld e, [hl]
    rst $38
    ret nc

    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    dec bc
    rst $38
    ret c

    rst $38
    rst $38
    add b
    ld a, [$fd97]
    inc bc
    ld sp, hl
    adc a
    ld a, l
    add e
    ei
    rlca
    ld [$ce95], a
    jr nc, jr_02a_485c

    inc a
    call nc, $9aab
    dec h
    call Call_02a_6f32
    sub b
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, e
    nop
    rst $18
    nop
    cp $00
    rlc b
    rst $30
    nop
    ld d, a
    nop
    inc bc
    nop
    ld b, [hl]
    nop
    ld [bc], a
    nop
    ld [de], a
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    nop
    nop
    add b
    nop
    stop
    xor [hl]
    and [hl]
    ld d, $00
    rst $38
    add b
    jr z, jr_02a_48ca

jr_02a_48ca:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    rst $38
    ld [$bfff], sp
    rst $38
    call c, $0cff
    rst $38
    ld [$08ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sbc a
    ld bc, $41fe
    cp [hl]
    inc sp
    call z, $ee11
    adc h
    ld [hl], e
    ld hl, sp+$07
    ld hl, sp+$07
    rst $38
    rla
    rst $38
    cp a
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
    db $fc
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
    rlca
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    rrca
    rst $38
    ld hl, sp-$01
    inc b
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
    add b
    rst $38
    ld h, b
    rst $38
    jr @+$01

    inc b
    rst $38
    rst $38
    rst $38
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
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    db $fc
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
    cp $1f
    sbc $3e
    ret nc

    ld a, [hl-]
    db $eb
    db $10
    rst $28
    nop
    rst $18
    ld bc, $0aff
    rst $30
    nop
    rst $38
    add d
    rst $38
    add a
    db $fd
    dec bc
    db $db
    rrca
    cp a
    ld bc, $47af
    ld l, a
    sbc a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ei
    rst $38
    rst $28
    rst $38
    rst $38
    ei
    ei
    rst $38
    cp $ff
    ld a, [hl]
    rst $38
    db $e3
    ld a, a
    ld h, a
    rst $18
    dec c
    rst $38
    ld bc, $02ff
    ld a, a
    ld bc, $00ff
    rst $38
    nop
    rst $38
    inc b
    cp $10
    cp $00
    rst $38
    rlca
    rst $38
    daa
    sbc a
    ld bc, $0006
    sub [hl]
    ld [bc], a
    ld a, c
    ld bc, $007c
    db $fc
    nop
    xor $00
    sbc [hl]
    nop
    cp $00
    adc [hl]
    nop
    inc bc
    inc bc
    add e
    inc bc
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    inc bc
    ld b, d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rra
    rra
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    db $76

jr_02a_49d5:
    rst $38
    add b
    rst $38
    nop
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
    rlca
    ld hl, sp-$08
    rlca
    jr jr_02a_49d5

    ld [c], a
    dec e
    add b
    ld a, a
    nop
    rst $38
    reti


    ld l, $d9
    ld a, a
    or a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret z

    rst $38
    jr @+$01

    inc sp
    rst $38
    ld l, h
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    ld a, a
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    inc a
    rst $38
    inc bc
    rst $38
    rra
    rst $38
    pop hl
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
    add b
    rst $38
    ld a, b
    rst $38
    cpl
    rst $38
    jr nz, @+$01

    jr @+$01

    inc h
    rst $38
    daa
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld [$fcff], sp
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
    add b
    rst $38
    ld [hl], b
    rst $38
    inc c

jr_02a_4a4e:
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
    nop
    rst $38
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
    cp a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld h, c
    rst $20
    ld sp, hl
    db $eb
    ld a, [hl]
    rst $38
    ld e, a
    cp a
    rst $18
    rst $28
    rst $38
    rst $28
    ei
    rst $28
    adc c
    rst $38
    db $e3
    rst $38
    ldh a, [$fb]
    call nz, Call_02a_7cff
    rst $38
    ld e, [hl]
    rst $38
    db $ec
    cp $e2
    cp $f8
    rst $38
    db $fc
    rst $38
    di
    rst $38
    ld sp, $b3ff
    rst $38
    rst $00
    rst $38
    add l
    ld a, a
    inc e
    rst $30
    and b
    rst $38
    ld [bc], a
    rst $38
    inc [hl]
    cp a
    rla
    ccf
    rla
    ccf
    add $fe
    ld c, a
    db $fd
    add $ef
    call c, $bdee
    rst $00
    jr c, jr_02a_4a4e

    ld e, [hl]
    scf
    ret z

    rra
    nop
    dec bc
    nop
    ccf
    nop
    dec sp
    nop
    inc a
    nop
    inc a
    nop
    ccf
    nop
    ld a, a
    nop
    push de
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
    add d
    rst $38
    rst $00
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
    ld b, $ff
    ld [bc], a
    rst $38
    add b
    rst $38
    add $ff
    ld bc, $00fe
    rst $38
    sub d
    ld l, l
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    ld de, $53ee
    cp $77
    rst $38
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
    rrca
    rst $38
    pop af
    rst $38
    inc bc
    rst $38
    ld b, $ff
    ld [$88ff], sp
    rst $38
    ld [hl], b
    rst $38
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    cp $c0
    cp $f0
    rst $38
    add hl, bc
    rst $38
    rlca
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    add e
    rst $38
    ld h, e
    rst $38
    dec de
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    add a
    rst $38
    ld [hl], a
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ccf
    rst $38
    ld h, e
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
    ld hl, sp-$01
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $db
    ld l, $ff
    ld [$649f], sp
    rst $38
    adc a
    rst $38
    ld e, [hl]
    rst $38
    ld e, a
    rst $10
    ld l, a
    rst $38
    di
    db $fd
    rst $38
    cp b
    rst $38
    db $e4
    rst $38
    pop hl
    rst $38
    ld [c], a
    rst $38
    ld a, b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], c
    rst $38
    rst $18
    call c, Call_02a_51df
    ld a, a
    ld [hl], l
    rst $38
    inc [hl]
    cp a
    db $10
    ld a, a
    jr nc, @+$01

    and e
    rst $38
    xor [hl]
    rst $28
    and [hl]
    rst $38
    ld [hl+], a
    rst $38
    nop
    rst $38
    add hl, bc
    rst $28
    ld bc, $55ff
    rst $38
    ld [hl], e
    rst $38
    ld [hl+], a
    cp $02
    call c, $da10
    ld b, b
    rst $28
    ld h, h
    ld c, a
    ld b, h
    ld c, h
    ld [$0009], sp
    ld d, l
    inc b
    sbc b
    nop
    db $e3
    ld [hl+], a
    call nz, Call_02a_6400
    nop
    pop de
    ld b, b
    ld d, d
    ld b, b
    push bc
    pop bc
    ld h, e
    ld b, c
    rst $38
    rst $38
    scf
    inc de
    scf
    dec b
    or e
    and c
    ld a, [hl]
    ld h, b
    xor l
    dec h
    dec sp
    inc de
    and $e2
    ld b, e
    rst $38
    or $ff
    ld [hl-], a
    rst $38
    ld [hl], $ff
    ld b, d
    rst $38
    ld h, d
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld e, $ff
    nop
    rst $38
    db $fc
    inc bc
    call nc, $f02f
    ccf
    ld [$8cf7], sp
    di
    cp h
    ld [hl], a
    ld hl, sp+$27
    ld hl, sp-$51
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$79
    db $fc
    dec de
    db $fc
    db $e3
    db $fc
    add e
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp-$09
    ld hl, sp+$1f
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$39
    ld hl, sp+$7f
    ld hl, sp+$07
    ld hl, sp+$07
    ldh [$e7], a
    nop
    rlca
    nop
    rlca
    add h
    inc bc
    jp $f000


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
    add b
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
    rst $38
    rst $38
    rst $38
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
    ldh [rIE], a
    inc a
    rst $38
    ld b, $03
    db $fc
    ld b, e
    db $fc
    set 7, h
    rst $38
    db $fc
    cp $fc
    ld hl, sp-$01
    ld a, c
    cp $f7
    ld hl, sp-$09
    ld hl, sp-$39
    ld hl, sp+$07
    ld hl, sp-$59
    ld hl, sp+$46
    ld hl, sp-$0d
    ei
    push af
    rst $38
    rst $20
    ld hl, sp-$31
    ldh a, [$8c]
    pop af
    and [hl]
    ld hl, sp+$6c
    ld sp, hl
    ld e, d
    db $fc
    ld e, a
    ldh a, [rIE]
    ldh [$85], a
    ld [$f400], a
    and c
    db $eb
    ld a, c
    ld sp, hl
    ld e, a
    ldh [rNR30], a
    push hl
    adc [hl]
    ldh a, [$58]
    db $e4
    ld [hl], e
    jp hl


    ld h, b
    ld a, [c]
    sbc a
    ldh [$df], a
    ldh [rNR33], a
    ld [c], a
    inc b
    ld sp, hl
    inc b
    ld hl, sp+$58
    push hl
    ld b, b
    jp z, $c0dc

    ccf
    ret nz

    ccf
    ret nz

    add hl, bc
    or $00
    db $fd
    sub b
    db $e4
    call nc, $cfeb
    cp a
    ld d, b
    xor a
    rst $38
    add b

jr_02a_4cc4:
    db $76
    add b
    ld b, [hl]
    or c
    add b
    jp z, $c404

    ldh [rNR11], a
    rst $20
    db $10
    ld h, c
    call nc, $9460
    ld bc, $30d0
    call nz, Call_000_01fe
    rst $28
    nop
    add [hl]
    ld l, b
    jp nz, $862d

    ld b, b
    jr jr_02a_4cc4

    di
    dec c
    ld a, h
    add d
    cp b
    ld b, e
    ld de, $00cd
    sub c
    nop
    adc c
    ld [bc], a
    jp Jump_02a_4681


    ld e, $e1
    add h
    ld de, $5184
    ld a, b
    add h
    jp z, $7a32

    add d
    ld [hl-], a
    ld c, e
    daa
    rlca
    add l
    ld d, [hl]
    nop
    inc de
    dec b
    add $01
    add [hl]
    ld h, e
    inc d
    jr jr_02a_4d37

    ld hl, $0100
    nop
    ld b, d
    and e
    rra
    db $ec
    inc b
    ei
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    jr nz, jr_02a_4d45

    ld [$c307], sp
    nop
    ldh [rP1], a
    ld hl, sp+$00
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38

jr_02a_4d37:
    ret nz

    rst $38
    ldh a, [rIE]
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

jr_02a_4d45:
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
    cp a
    rlca
    ccf
    ld b, a
    rst $30
    cpl
    ld c, a
    ccf
    sub $ee
    ld a, e
    add [hl]
    ld a, [c]
    rlca
    rst $30
    ld b, $dc
    rrca
    rst $38
    ld c, $bd
    inc c
    db $ed
    inc c
    ld [hl], a
    ld a, b
    rst $18
    ret nz

    ld a, c
    ld b, $79

jr_02a_4d6f:
    add d
    ld a, c
    nop
    cp [hl]
    ld b, [hl]
    and c
    ld [$86a6], sp
    push bc
    ld h, $e0
    inc de
    call nz, $c603
    ld hl, $0bcc
    ld b, $1e
    ei
    rlca
    pop hl
    rrca
    and c
    ld [de], a
    ld h, b
    add e
    and e
    inc b
    ld c, l
    ld c, h

jr_02a_4d90:
    jr nc, @+$11

    db $fc
    inc bc
    db $fc
    ld [bc], a
    sub b
    ld [bc], a
    ld d, b
    nop
    ld [hl], e
    adc d
    ld h, b
    ld bc, $6667
    ld e, $a6
    ei
    ld b, $f0
    inc c
    and b
    ld [bc], a
    and d
    inc bc
    db $e3
    nop
    pop bc
    ld [bc], a
    cp h
    cp h
    cp a
    ld a, $3b
    cp b
    jr c, jr_02a_4d6f

    dec e
    add hl, sp
    add hl, de
    db $76
    sub e
    ldh [$f3], a
    dec c
    call Call_000_1c11
    db $e3
    inc d
    dec hl
    rst $20
    ret c

    ld c, $31
    ld b, $29
    dec d
    sub b
    ld l, b
    rst $00
    dec e
    pop bc
    cp c
    add $88
    sub a
    ld c, h
    ld bc, $7884
    add h
    ld a, d
    inc sp
    rst $00
    or b
    ld b, h
    rlca
    di
    and a
    ld b, e
    xor e
    ld d, e
    nop
    ld h, c
    xor [hl]
    ld a, a
    ld l, d
    xor h
    ld h, $40
    ld l, [hl]
    db $10
    jr jr_02a_4d90

    ld hl, $9a41
    and b
    ret z

    jr nc, jr_02a_4e4e

    xor h
    ld l, d
    adc c
    ld b, b
    xor a
    ld h, l
    ret nc

    dec a
    jp nz, Jump_02a_5dc2

    add [hl]
    jr @+$03

    or $00
    cp $04
    db $eb
    ld a, [bc]
    ldh a, [$0d]
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
    ld a, a
    nop
    rra
    nop
    rlca
    inc bc
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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

jr_02a_4e4e:
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
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec c
    dec e
    ld e, $1f
    jr nz, jr_02a_4e94

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_02a_4ea4

    ld a, [hl+]
    dec c
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_02a_4eb5

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_02a_4ec5

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c

jr_02a_4e94:
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
    ld d, c

jr_02a_4ea4:
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

jr_02a_4eb5:
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
    ld [hl], c
    ld [hl], d

jr_02a_4ec5:
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
    dec c
    dec c
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
    dec c
    and a
    xor b
    xor c
    xor d
    xor e
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
    xor e
    xor e
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

Call_02a_4f20:
    xor e
    xor e
    ret z

    ret


    jp z, $cccb

    call $cfce
    ret nc

    pop de
    jp nc, $d4d3

    push de
    xor e
    xor e
    sub $d7
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    ldh [$e1], a
    ld [c], a
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
    jr jr_02a_4f90

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_02a_4fa0

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_02a_4fb0

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_02a_4fc0

    ld [hl-], a

jr_02a_4f90:
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
    inc b
    inc b
    nop
    nop
    nop
    nop

jr_02a_4fa0:
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
    inc b
    inc b
    nop
    nop
    nop
    nop

jr_02a_4fb0:
    inc bc
    inc b
    inc bc
    inc b
    inc b
    inc b
    inc bc
    inc b
    inc b
    inc b
    inc b
    rlca
    nop
    nop
    nop
    nop

jr_02a_4fc0:
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc bc
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
    inc bc
    inc bc
    inc bc
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    rlca
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
    inc b
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc bc
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    dec b
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    inc bc
    inc bc
    ld b, $01
    ld bc, $0303
    inc bc
    nop
    nop
    nop
    nop
    inc bc
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    inc bc
    ld bc, $0101
    ld bc, $0501
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $01
    ld bc, $0505
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
    ld b, $06
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
    ld b, $06
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
    inc b
    inc b
    ld b, $06
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
    inc b
    inc b
    ld b, $06
    nop
    nop
    dec b
    dec b
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld b, $06
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    ld b, $02
    ld [bc], a
    inc b
    inc b
    inc b
    ld b, $04
    ld [bc], a
    inc b
    rlca
    rlca
    rrca
    rrca
    rrca
    ld c, $0e
    ld c, $0e
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld c, $0f
    ld c, $0e
    ld c, $0e
    ld c, $0c
    inc c
    inc c
    inc c
    inc c
    ld c, $0e
    ld c, $09
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld c, $0a
    ld a, [bc]
    rst $38
    nop
    rst $38
    nop
    cp $01
    inc b
    ld b, d
    ld e, [hl]
    ld b, c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, l
    ld [$00ff], sp
    rst $18
    nop
    inc a
    ld a, $f6
    ld sp, hl
    rrca
    ld b, b
    ld a, a
    add b
    rst $18
    nop
    rst $38
    inc b
    ld a, a
    add b
    xor a
    db $10
    ret c

    ld e, b
    add a
    nop
    ld a, a
    nop
    db $fd
    nop
    ld a, h
    inc bc
    rst $38
    add b
    jr nz, jr_02a_5164

    ld c, a
    ret z

    ld h, a
    ret nz

    ccf
    nop
    rra
    nop
    ld b, c
    ld b, h
    ret z

    ld l, c
    rst $20
    ld [$08ff], sp
    rst $38
    nop
    ld l, a
    nop
    nop
    nop
    rst $38
    rst $38
    ld c, a
    jr @+$69

    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    ld b, b
    add b
    ret nz

    ld e, h
    ld e, h
    di
    ld b, h
    inc bc
    inc d
    ld a, a
    nop
    ccf
    nop
    inc d
    ld [hl+], a
    ldh [rSC], a
    rst $18
    ld e, a
    inc a

jr_02a_5139:
    jr c, jr_02a_5139

    ld hl, sp+$67
    jr nz, jr_02a_515c

    nop
    or l
    and l
    xor b
    ld hl, $32bd
    ccf
    or b
    rst $30
    or b
    call nz, $e309
    dec de
    adc h
    ld [$00f6], sp
    cp a
    add b
    jp nz, Jump_000_09c0

    ld bc, $0444
    dec b
    inc b

jr_02a_515c:
    dec l
    ld l, $bd
    xor h
    jp Jump_02a_6cc0


    ld l, h

jr_02a_5164:
    xor c
    add hl, hl
    ld c, d
    ld c, c
    sbc l
    sbc [hl]
    ld c, l
    ld b, h
    cp c
    cp d
    ld [$6ee2], a
    xor [hl]
    cp b
    cp b
    ld [hl], c
    ld h, b
    sub d
    nop
    ld [$73c1], a
    ld [hl], b
    ld a, l
    ld a, h
    ld b, d
    jp nc, Jump_02a_5c6f

    or $f0
    call nz, $d9c1
    ret nz

    db $e4
    db $e4
    db $dd
    call c, Call_02a_6061
    pop hl
    ld [bc], a
    rra
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

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
    rst $38
    jr @+$01

    ld h, b
    ld [c], a
    nop
    ld [hl], c
    ld bc, $00f7
    rst $30
    ld bc, $207c
    ld h, $48
    rst $30
    nop
    di

Call_02a_51df:
    nop
    ld [hl], a
    nop
    ld a, l
    inc c
    ldh a, [rDIV]
    ld [hl-], a
    add d
    add e
    add d
    xor d
    ld a, [bc]
    db $fd
    ld b, $fb
    nop
    cp a
    ld [bc], a
    rst $30
    jr nz, jr_02a_526d

    nop
    inc d
    inc b

jr_02a_51f8:
    ret z

    ret z

    adc b
    ld d, b
    db $ed

jr_02a_51fd:
    ld bc, $40bc
    sbc e
    ld b, b
    dec c
    jr nz, jr_02a_51fd

    jr nc, @-$06

    nop
    call c, Call_02a_4f20
    add c
    ret


    db $10
    ld [hl+], a
    ld h, d
    rst $18
    ld bc, $01ff
    sbc d
    ld h, b
    add $20
    ld b, $08
    ret nz

    db $10
    cp $01
    rst $38
    nop
    or l
    ld [$2a91], sp
    pop af
    inc b
    ld b, b
    and [hl]
    ld [hl], l
    inc b
    rst $38
    nop
    rst $38
    nop
    ret


    inc d
    sub e
    ld c, h
    pop hl
    ld [de], a
    ldh [$08], a
    ld b, a
    jr nz, jr_02a_51f8

    ld b, b
    ld a, [$fd00]
    nop
    ldh [rNR14], a
    ld c, h
    ld c, h
    db $e3
    inc d
    rst $30
    ld [$06e9], sp
    sub h
    ld a, [hl+]
    ld h, b
    db $10
    rst $30
    ret z

    sbc e
    inc h
    ld a, b
    inc bc
    ld c, b
    inc d
    add sp, $11
    ld c, $11
    xor a
    sub b
    ei
    inc b
    ld a, b
    ld bc, $09e4
    sub b
    inc c
    jr nc, jr_02a_52a8

    ld b, b
    ld e, b
    ld [hl], c
    inc c
    ldh a, [$0c]
    ret nc

    rrca
    add hl, sp

jr_02a_526d:
    ld b, [hl]
    dec bc
    sub h
    ld [hl], l
    adc d
    ld a, h
    ld bc, $06b0
    pop hl
    ld c, $38
    add d
    add b
    add c
    jr nz, jr_02a_52b3

    inc e
    ld [hl+], a
    ld [hl], b
    ld b, $e8
    ld [bc], a
    ld bc, $7c1c
    ld [hl], e
    cp a
    nop
    rra
    nop
    xor b
    rla
    and b
    ld bc, $ffff
    rst $38
    nop
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jp $ff00


    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    pop af

jr_02a_52a8:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_02a_52b3:
    rst $38
    rst $38
    ld a, a
    rst $38
    rrca
    rst $38
    ld hl, sp-$01
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    pop af
    cp $f9
    rst $38
    di
    adc e
    ld a, l
    ei
    rst $08
    xor [hl]
    pop de
    db $fd
    ld a, [c]
    rst $38
    inc c
    di
    ld b, b
    ld a, l
    ld [$92bf], sp
    db $d3
    ret nz

    add e
    ld [$00a8], sp
    rst $38
    nop
    ccf
    ld [$fbdf], sp
    rst $18
    ccf
    push af
    ld a, [$ffef]
    cp $7f
    rst $38
    db $fd
    rst $38
    ld a, a
    rst $18
    cp $a0
    nop
    cp [hl]
    ld c, $0a
    ld a, [bc]
    xor b
    ld [$40f8], sp
    ld d, e
    ld b, b
    sub d
    ld [bc], a
    ld h, d
    ld h, [hl]
    rst $30
    pop af
    db $d3
    ret nc

    ld a, [$9efc]
    ld e, $f0
    sub b
    ld h, [hl]
    inc b
    xor $08
    cp h
    jr nz, jr_02a_5311

jr_02a_5311:
    add b
    sbc c
    add hl, bc
    or b
    nop
    ld a, d
    ld d, b
    rst $30
    ld [hl], a
    adc b
    ld c, b
    and d
    ld [hl+], a
    ld e, h
    inc e
    db $e3
    cp $f9
    ld a, a
    scf
    ei
    ld a, $f3
    jr z, @+$01

    ccf
    adc $2b
    rst $18
    or $df
    or d
    nop
    ld hl, sp+$00
    add hl, sp
    ret nz

    ld [hl], d
    nop
    ld de, $2e40
    ldh a, [$9b]
    nop
    sbc a
    ld b, c
    ld a, [bc]
    ld b, d
    adc e
    ld c, e
    ld l, $16
    inc de
    and e
    add e
    ld h, e
    cp d
    ld [bc], a
    jr z, jr_02a_539e

    sub l
    ld b, l
    inc c
    ld e, h
    ld e, $78
    add h
    ld a, h
    rrca
    and b
    ld c, c
    nop
    ld b, $21
    ld d, h
    cp b
    ldh a, [$39]
    call nc, $931a
    ld [$4093], sp
    jr jr_02a_536d

    ld d, $29
    ld h, d
    inc c
    and e

jr_02a_536d:
    ld c, b
    dec e
    ld d, d
    jp hl


    ld d, $d2
    dec l
    rlca
    ld hl, sp+$1c
    db $e3
    db $fc
    nop
    ret c

    jr nz, jr_02a_536d

    nop
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
    cp $ff
    db $fc

jr_02a_539e:
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
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
    ldh a, [rIE]
    db $10
    xor l
    ld a, e
    rst $30
    ld a, e
    rst $28
    cp l
    or e
    adc $db
    ld l, a
    rst $38
    rst $00
    ld l, a
    rst $30
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
    rst $38
    ld a, a
    rst $38
    cp $ff
    db $fd
    db $fd
    rst $30
    rst $38
    push af
    dec sp
    rst $38
    di
    cp a
    or a
    rst $18
    ld a, a
    ei
    adc a
    db $fd
    add [hl]
    rst $38
    ld a, l
    rst $08
    ld e, $04
    add $c0
    pop bc
    pop bc
    rrca
    rrca
    nop
    nop
    ld c, d
    ld c, h
    rst $10
    ld b, l
    or [hl]
    or [hl]
    dec bc
    inc hl
    ld [$9202], a
    ld [bc], a
    ccf
    daa
    inc d
    inc d
    ld b, d
    nop
    dec d
    inc d
    ld b, $06
    inc b
    rst $38
    ld e, a
    cp e
    ld l, $dd
    ccf
    cp $5f
    rst $38
    ld a, a
    cp $fe
    rst $18
    ldh a, [rIE]
    ei
    rst $30
    ei
    ld e, h
    rst $38
    ld l, a
    ld e, [hl]
    rst $38
    cp a
    rst $38
    rst $08
    rst $38
    rst $38
    rst $28
    cp $4f
    or [hl]
    add d
    ld c, d
    ld c, b
    ld c, c
    add hl, bc
    ld a, h
    inc e
    and b
    ld [$01f1], sp
    rr e
    ld d, h
    nop
    dec b
    ld bc, $3f3f
    dec l
    rrca
    ld b, $00
    ld [hl], $34
    dec a
    ld a, l
    ei
    ei
    db $ec
    ldh [$4e], a
    db $10
    inc b
    inc bc
    add c
    add l
    nop
    ld bc, $8481
    adc b
    and l
    ld b, b
    ld c, $89
    nop
    db $d3
    jp c, Jump_02a_40a0

    jr jr_02a_545c

    db $10
    ld a, [bc]
    ld a, [hl-]
    ld b, d
    cp [hl]
    ld b, d

jr_02a_545c:
    ld e, e
    and $c4
    db $ec
    ld bc, $0ffe
    ldh a, [rNR33]
    ldh [$73], a
    add b
    rst $08
    nop
    cp e
    nop
    ld l, a
    nop
    sbc a
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
    cp $ff
    ld hl, sp-$01
    ld hl, sp-$01
    add sp, -$01
    ret z

    rst $38
    adc b
    rst $38
    ld [$0cff], sp
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
    ld bc, $06ff
    ld a, [$d5ef]
    xor a
    rst $38
    rst $18
    ld a, [hl]
    rst $38
    ld h, a
    rst $38
    rst $10
    rst $38
    jp $fffe


    rst $38
    rst $18
    ld a, l
    jp nz, $c37d

    cp $f5
    rst $38
    and $ff
    ld d, a
    xor l
    rst $38
    cp $f9
    or a
    ld e, [hl]
    rst $38
    db $e3
    rst $38
    rst $28
    rst $38
    ld a, a
    ldh a, [$df]
    ld hl, sp+$3d
    cp $ff
    ei
    rst $00
    rst $38
    rrca
    ld c, $49
    ld c, c
    ld b, b
    ld b, b
    ld [$3988], sp
    db $10
    ld h, b
    jr nz, @+$03

    ld bc, $0000
    ld a, [hl+]
    rst $38
    adc [hl]
    rst $38
    ld l, $ff
    add a
    rst $38
    sbc $77
    sbc $77
    sbc $3f
    cp $6d
    sbc [hl]
    rst $30
    sbc $f7
    or a
    ld a, e
    cp $bb
    or $ff
    ld h, b
    cp a
    db $e4
    ccf
    ld [hl], b
    rst $38
    or c
    rst $38
    rst $38
    ld a, a
    ld a, b
    rst $38
    ld l, [hl]
    cp a
    rst $30
    rst $38
    di
    rst $38
    sub $ff
    ldh a, [rIE]
    rst $38
    cp a
    db $ec
    rst $38
    dec e
    cp $5f
    rst $38
    ld e, a
    cp $4b
    cp $e3
    rst $38
    ldh a, [$bf]
    rst $10
    rst $38
    rst $08
    rst $38
    db $fc
    rst $38
    di
    rst $38
    sbc e
    rst $38
    add hl, de
    rst $30
    ld a, l
    rst $38
    ei
    rst $38
    cpl
    xor a
    rst $20
    rst $20
    xor $e6
    ld b, h
    ld l, b
    sub h
    ld [$10e0], sp
    ld d, b
    ld [$a845], sp
    rra
    ldh [$f9], a
    ld b, $79
    add [hl]
    ei
    inc b
    ldh a, [$0e]
    or b
    ld b, b
    ld b, b
    add b
    nop
    nop
    or e
    nop
    ld l, a
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
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    call nz, $83ff
    rst $38
    nop
    rst $38
    nop
    cp $01
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    jr @+$01

    rlca
    rst $38
    ld [$30ff], sp
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    nop
    ei
    rst $38
    db $eb
    cp a
    ld a, a
    rst $38
    ld e, a
    db $f4
    db $fd
    cp a
    ld a, h
    rst $08
    ld c, a
    rst $38
    db $db
    rst $38
    cp $ff
    rst $18
    ld a, a
    rst $18
    cp c
    rst $08
    db $fd
    sbc a
    rst $38
    db $ed
    rst $38
    inc a
    rst $38
    or l
    ld l, a
    ld a, [hl]
    rst $00
    rst $38
    ld [hl], e
    rst $30
    ld l, d
    rst $38
    rst $38
    pop hl
    ld a, a
    or $af
    rst $10
    rst $38
    di
    ld a, a
    rst $30
    cp a
    sub a
    rst $38
    rst $28
    db $fd
    call c, Call_02a_6f7f
    rst $30
    rst $38
    rst $30
    ld c, [hl]
    rst $38
    ldh [rIE], a
    db $fd
    rst $38
    db $fd
    rst $38
    ld [hl], h
    rst $38
    db $fc
    rst $38
    rst $38
    cp a
    sbc $ff
    sbc a
    rst $38
    rst $00
    rst $38
    ld h, [hl]
    rst $38
    ld [bc], a
    rst $38
    rst $18
    rst $28
    rst $38
    rst $38
    or c
    rst $38
    ld a, a
    rst $28
    rst $38
    xor $ff
    ld a, a
    di
    ccf
    or $ff
    ld h, [hl]
    rst $38
    rst $18
    db $fd
    rst $28
    ld sp, hl
    xor $fd
    rlca
    ld sp, hl
    inc l
    rst $38
    inc l
    inc c
    add e
    add e
    db $e3
    inc bc
    ld h, b
    jr nz, jr_02a_562a

    nop

jr_02a_562a:
    ld b, $06
    cp c
    cp c
    pop bc
    pop de
    or a
    rst $38
    ld h, b
    rst $38
    ld h, c
    rst $38
    jr nz, @+$01

    or [hl]
    rst $38
    sub h
    rst $38
    add [hl]
    rst $38
    sbc a
    rst $38
    cp e
    rst $38
    and b
    rst $38
    rrca
    rst $38
    xor a
    rst $38
    rst $38
    rst $38
    or h
    ei
    add c
    rst $38
    and e
    cp $06
    ld hl, sp+$0d
    ldh a, [$7b]
    add b
    rst $10
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
    rst $38
    ld bc, $07ff
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    cp $ff
    db $fc
    rst $38
    di
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    nop
    sbc $21
    rst $38
    nop
    rst $38
    nop
    ld b, [hl]
    cp c
    add c
    ld a, [hl]
    db $fc
    ei
    rst $00
    ccf
    ldh a, [rIF]
    cp l
    ld b, d
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $18

jr_02a_569b:
    jr nz, jr_02a_569b

    ld bc, $00ff
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    ldh [rIE], a
    dec de
    rst $38
    ld b, $ff
    nop
    rst $38
    nop
    add c
    add c
    ldh [$e0], a
    ld d, d
    ld b, d
    jr c, jr_02a_56da

    rrc c
    ld b, c
    ld bc, $0000
    ld h, b
    nop
    rst $30
    rra
    ld d, l
    rst $28
    rst $20
    rst $38
    rst $30
    cp a
    ld a, a
    rst $38
    ei
    rst $38
    rst $28
    rst $38
    ld a, a
    ei
    sub c
    sub b
    adc h
    inc c
    call nc, $f004
    nop
    ld c, b
    nop

jr_02a_56da:
    jr c, jr_02a_5704

    ret z

    ldh [$aa], a
    add d
    rst $38
    db $e3
    db $fc
    rst $38
    xor $fb
    sub [hl]
    rst $38
    db $fc
    ld a, a
    cp a
    ld a, a
    db $fd
    ld a, [hl]
    pop af
    cp a
    cp $7f
    cp $bf
    rst $38
    ld a, a
    sbc a
    rst $38
    adc a
    or $af
    rst $38
    db $ec
    rst $38
    rst $28
    ld e, a
    adc l
    rst $38
    ld a, c
    rst $30

jr_02a_5704:
    ld a, e
    rst $38
    ld a, e
    rst $38
    cp a
    rst $38
    or a
    ld a, a
    and e
    rst $38
    cp a
    rst $38
    inc a
    rst $38
    ld b, h
    rst $38
    ld l, $ff
    ld h, a
    rst $38
    rst $28
    sbc a
    db $fd
    sbc a
    ld l, h
    rst $18
    rra
    rst $38
    cp [hl]
    rst $38
    rst $08
    rst $38
    ld [hl], h
    rst $38
    or $ff
    adc a
    rst $38
    ld l, d
    cp a
    ld h, b
    rst $38
    ld a, a
    rst $38
    ld a, d
    rst $38
    ld a, h
    rst $38
    ld [hl-], a
    rst $38
    and b
    ei
    nop
    ldh [rP1], a
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    add c
    ld a, [hl]
    rst $18
    jr nz, jr_02a_5768

    ldh [$cf], a
    nop
    adc a
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
    rra
    db $10
    ld a, a
    ld [hl], b

jr_02a_5768:
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$ef]
    rst $28
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    ld h, b
    rst $38
    add b
    rst $38
    ld h, b
    rst $38
    db $10
    rst $38
    rrca
    rst $38
    nop
    ld a, a
    add b
    ld [c], a
    dec e
    cp $01
    ld [$21f7], sp
    rst $18
    ld bc, $e1ff
    rst $38
    ld e, a
    cp a
    xor a
    ld d, c
    ld a, a
    add c
    rst $30
    add hl, bc
    ei
    inc b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    ld bc, $46bf
    rst $38
    ld [$30ff], sp
    rst $38
    ret nz

    rst $38
    ld a, h
    rst $38
    inc bc
    rst $38
    nop
    add l
    add c
    ld a, [bc]
    ld b, $80
    inc e
    ld b, c
    ld [$a0a0], sp
    pop hl
    ldh [$b2], a
    and d
    ld h, a
    ld h, a
    add b
    nop
    add h
    ld a, [bc]
    adc $c8
    ld [$2a0a], sp
    ld [$084a], sp
    dec bc
    ld [$1516], sp
    db $fc
    db $fd
    db $10
    db $10
    db $10
    db $10
    ld d, c
    ld d, c
    add hl, de
    add hl, de
    add hl, bc
    dec bc
    add c
    add e
    ld [de], a
    dec de
    ld b, $02
    ld a, h
    ld [hl], c
    sbc $d1
    ld h, c
    ld h, c
    ld h, d
    ld h, b
    ld e, b
    ld e, b
    xor [hl]
    ld l, $5f
    ld e, a
    ld a, l
    rst $38
    db $fd
    rst $38
    ld [hl], d
    rst $38
    inc [hl]
    rst $38
    ld a, [de]
    rst $38
    ld [$77ff], sp
    rst $38
    pop af
    cp a
    db $d3
    cp a
    ld d, $ff
    db $dd
    rst $38
    rst $18
    rst $38
    db $d3
    rst $38
    add $ff
    rst $20
    rst $38
    xor $7f
    inc bc
    rra
    nop
    ld d, e
    nop
    add hl, de
    ld bc, $01ff
    add hl, de
    ld bc, $0059
    inc bc
    nop
    and a
    inc c
    rst $38
    ld de, $3bfe
    db $fc
    ccf
    db $fc
    ld a, e
    db $fc
    ld a, l
    cp $fe
    rst $38
    cp $ff
    cp $f8
    rst $38
    db $fc
    rst $18
    and $b2
    call $5926
    jr z, @+$56

    ld l, e
    sub h
    ld d, e
    xor h
    ld d, e
    db $ec
    inc de
    db $ec
    ld b, b
    rst $38
    ld d, e
    db $ec
    ld d, e
    db $ec
    ld d, e
    db $ec
    ld d, e
    db $ec
    ld d, e
    db $ec
    and e
    db $fc
    rst $10
    ld a, b
    rst $10
    ld a, b
    rst $10
    ld a, b
    rst $10
    ld a, b
    rst $10
    ld a, b
    rst $10
    ld a, b
    rst $10
    ld a, b
    rst $10
    ld a, b
    rst $10
    ld a, b
    rst $10
    ld a, b
    rst $10
    ld a, b
    rst $10
    ld a, b
    rst $10
    ld a, b
    rst $10
    ld a, b
    rst $10
    ld a, b
    rst $38
    ccf
    rst $38
    dec c
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
    rst $20

jr_02a_5882:
    rst $38
    jr jr_02a_5882

    ld [hl+], a
    inc hl
    db $fc
    ld b, a
    ld hl, sp-$72
    pop af
    or a
    ret z

    dec a
    jp nz, $807f

    ld l, a
    sub b
    db $db
    inc h
    rst $38
    nop
    rst $38
    add b

jr_02a_589a:
    rst $38
    ld e, a
    rst $38
    and b
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
    ld bc, $e2ff
    rst $38
    inc e
    jp c, $bdbf

    rst $30
    cp a
    rst $28
    db $fd
    rst $28
    db $fd
    cp $f9
    rst $38
    inc hl
    cp $5b
    cp a
    ld a, [bc]
    ld b, $21
    ld bc, $97a7
    set 0, e
    add c
    adc c
    nop
    inc b
    ld a, [$2f86]
    add a
    dec d
    ld d, l
    db $e4
    inc d
    ld [de], a
    ld a, [de]
    db $10
    sbc b
    jr nz, jr_02a_589a

    add b
    jp nz, $866a

    db $10
    ld l, h
    ld d, h
    ld a, [hl+]
    pop af
    ld [$8d20], sp
    ld c, h
    ld b, b
    ld b, b

jr_02a_58e9:
    ld [hl], e
    ld [de], a
    ld a, $12
    ld [de], a
    ld b, b
    ld c, d
    db $10
    dec h
    sub d
    ld b, $41
    ld b, a
    ld d, b
    ld e, l
    dec l
    dec bc
    push bc
    pop bc
    call Call_000_19c1
    add hl, de
    jr jr_02a_58e9

    inc a
    jp $816e


    ld a, [hl]
    add c
    inc a
    jp $c33c


    ld a, h
    add e
    ld a, b
    add a
    rst $38
    rst $38
    add c
    rst $38
    and c
    rst $18
    ld a, c
    add a
    push af
    dec bc
    sbc $01
    ld a, a
    add b
    dec b
    ld a, [$e01f]
    rst $28
    db $10
    scf
    ld [$0817], sp
    cp a
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $30
    ld [$c33c], sp
    ld bc, $87ff
    ld a, a
    ld a, a
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
    rst $38
    rst $38
    ei
    rst $38
    and h
    rst $38
    ld a, a
    rst $38
    ld bc, $03ff
    rst $38
    ld b, $ff
    jr @+$01

    ldh [rIE], a
    jr jr_02a_59e4

    adc a
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc b
    rst $38
    ld [$09fe], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld hl, sp-$01
    ld c, $ff
    ld bc, $03ff
    rst $38
    dec c
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    or a
    or a
    ld [bc], a
    inc bc
    add [hl]
    add [hl]
    jp nc, $99d2

    sbc b
    jp c, Jump_000_28da

    jr z, @-$25

    inc d
    jr nc, jr_02a_59d2

    ld sp, $9c37
    sbc [hl]
    xor [hl]
    xor [hl]
    xor h
    xor h
    sub b
    sub l
    adc c
    adc d
    ld h, c
    ld h, d
    ld [$d1e4], a
    sub $d0
    ret c

    ld [hl], d
    ld [hl], a
    ld [hl], e
    ld [hl], e
    ld a, e
    ld a, e
    ld a, e
    ld a, e
    ld hl, $0ca3
    inc c
    ld c, b

jr_02a_59c3:
    ld [$0909], sp
    ld c, c
    add hl, hl
    dec bc
    dec bc
    dec b
    dec h
    scf
    or a
    ld c, e
    sra c
    add hl, hl

jr_02a_59d2:
    ccf
    cp a
    cpl
    xor a
    ccf
    ccf
    dec sp
    dec sp
    ld sp, hl
    ld sp, hl
    cp l
    cp l
    cp l
    cp l
    ld b, b
    rst $38
    inc b
    rst $38

jr_02a_59e4:
    inc d
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ret nz

    rst $38
    ldh [$9f], a
    jr nc, jr_02a_59c3

    ld b, h
    cp e
    ld b, h
    cp e
    ld c, b
    or a
    ld b, b
    cp a
    nop
    rst $38
    adc b
    ld [hl], a
    ld b, b
    cp a
    or b
    ld c, a
    sbc b
    ld h, a
    xor h
    ld d, e
    and h
    ld e, e
    inc hl
    call c, $de28
    db $10
    cp $10
    db $fc
    jr @-$05

    ldh [$e3], a
    add b
    adc a
    nop
    ccf
    nop
    ld a, a
    add e
    ld a, a
    add a
    ld a, a
    adc [hl]
    ld a, a
    cp b
    ld a, a
    ld [hl], b
    rst $38
    ldh a, [rIE]
    sub b
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
    ld de, $12ff
    rst $38
    ld [de], a
    rst $38
    inc d
    rst $38
    jr @+$01

    db $10
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    add b
    rst $38
    ret nz

    rst $38
    ld a, a
    rst $38
    sub [hl]
    rst $38
    add sp, -$01
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
    ret nz

    rst $38
    ld h, e
    rst $38
    inc e
    rst $38
    ldh [$fe], a
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $18
    jr nz, @+$01

    rlca
    rst $38

jr_02a_5a7d:
    ld hl, sp-$01
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
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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

    cp a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    cp a
    ret nz

    rst $38
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    cp a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    inc c
    ret nz

    ld sp, $15c0
    ret nz

    jr nz, jr_02a_5a7d

    add b
    ret nz

    ld a, [hl+]
    pop bc
    ld [de], a
    jp $cf4c


    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ret nz

    ld a, [$fd00]
    ld b, d
    cp $81
    cp $c1
    ld a, [c]
    call $c2fd
    adc $f1
    ld [$fed5], a
    pop bc
    cp $41
    ei
    call nz, $e0df
    rst $28
    ret nc

    sbc $e1
    ei
    call nz, $e4db
    set 6, h
    add sp, -$29
    rst $38
    rst $38
    jp hl


    or $e3
    db $fc
    jp hl


    or $e1
    cp $f4
    db $eb
    rst $38
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, [hl]
    ld sp, hl
    ld a, h
    add e
    db $fc
    inc bc
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
    db $10
    rst $38
    ld [hl], b
    rst $38
    ldh [rIE], a
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
    ld b, c
    rst $38
    ld b, d
    cp $4c
    db $fc
    ld c, a
    rst $38
    ld b, h
    db $f4
    adc a
    rst $38
    nop
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld b, l
    rst $38
    adc c
    rst $38
    ld a, [$07ff]
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
    adc b
    rst $38
    ld e, b
    rst $38
    daa
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b

jr_02a_5b64:
    cp $01
    ld hl, sp+$07
    rst $38
    rst $38
    rst $38
    jr nz, jr_02a_5b64

    jr z, @+$01

    jr nz, @-$01

    ld [hl+], a
    rst $38
    db $10
    rst $38
    rra
    rst $38
    db $10
    rst $38
    ldh [rIE], a
    db $10
    rst $38
    db $10
    rst $38
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
    ccf
    nop
    rra
    nop
    ld c, a
    nop
    ld d, a
    inc e
    inc hl
    ld a, a
    add b
    db $76
    add b
    inc de
    rst $38
    inc b
    rst $38
    ld bc, $05ff
    rst $38
    nop
    rst $38
    jp c, $fcff

    rst $38
    ld b, a
    rst $38
    db $fd
    rst $38
    ld [hl], c
    rst $38
    rst $20
    rst $38
    db $fc
    rst $38
    sbc h
    rst $38
    sbc $ff
    ld a, l
    rst $38
    ld d, l
    rst $38
    cp [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    cp $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    and b
    ld e, a
    rst $38
    rst $38
    ldh a, [rIF]
    pop de
    ld l, $f9
    ld b, $f3
    inc c
    cp e
    ld b, h
    di
    db $fc
    sbc a
    ld a, a
    ld bc, $b3fe
    ld c, h
    add a
    ld a, b
    ld b, a
    ld hl, sp-$01
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
    ld hl, sp-$01
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
    add c
    rst $38
    cp $ff
    adc b
    rst $38
    add a
    rst $38
    add b
    rst $38
    rlca
    rst $38
    ld a, h
    rst $38
    ldh a, [rIE]
    ld c, a
    rst $38
    db $f4
    rst $38
    rra
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    rlca
    rst $38
    add hl, bc
    rst $38
    rrca
    rst $38
    ld [de], a
    rst $38
    ld a, $ff
    ld [hl+], a
    rst $38
    ld b, h
    rst $38
    ld a, h
    rst $38
    adc b
    rst $38
    ld [hl], b
    rst $38
    jr nc, @+$01

    ld h, b
    rst $38
    ldh [rIE], a
    ld b, b
    rst $38
    ld a, a
    rst $38
    add b
    rst $38
    nop
    rst $30
    ld [$02fd], sp
    ld e, a
    and b
    db $fc
    inc bc
    cp b
    ld b, a
    rst $38
    ldh a, [$cf]
    ld a, $81
    ld a, a
    ld bc, $0fff
    rst $38
    rst $38
    ldh a, [$8f]
    ld a, h
    ld h, a
    sbc h
    rst $18

jr_02a_5c5f:
    inc h
    cp $09
    rst $38
    ld [$f4ff], sp
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

Jump_02a_5c6f:
    nop
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    jr jr_02a_5c5f

    ldh a, [rSB]
    add sp, $00
    ret nz

    nop
    sbc d
    nop
    and b
    rst $38
    ld sp, $43ff
    rst $38
    add hl, bc
    rst $38
    jr nz, @+$01

    add d
    rst $38
    sub e
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    ld e, e
    rst $38
    and a
    rst $38
    xor e
    rst $38
    rst $08
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    dec h
    rst $38
    rrca
    rst $38
    db $eb
    rst $38
    db $d3
    rst $38
    ld e, $ff
    ld [hl], d
    rst $38
    ld a, h

jr_02a_5caf:
    rst $38
    ld hl, $f1de
    cp $bf
    ld a, a
    call nz, $d63f
    dec l
    ret c

    daa
    rst $18
    inc h
    cp d
    ld b, l
    rst $38
    rst $38
    ld c, b
    or a
    inc e
    db $e3
    jr jr_02a_5caf

    jr @-$17

    cp $ff
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $10
    rst $38
    db $ec
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    db $fc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    ld [$ffff], sp
    rst $38
    sub b
    rst $38
    ldh [rIE], a
    and b
    rst $38
    rst $18
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    ldh [rIE], a
    sub b
    rst $38
    ld [$04ff], sp
    rst $38
    ld b, $ff
    inc bc
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
    ld bc, $07ff
    rst $38
    inc e
    rst $38
    ldh [rIE], a
    db $10
    rst $38
    ld [$46bf], sp
    rla
    jp hl


    adc a
    ld [hl], b
    ld a, a
    add c
    ld a, a
    add [hl]
    rst $38
    jr c, @+$01

    ld b, b
    cp $81
    jp hl


    sub [hl]
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    ld b, $ff
    ld bc, $10ef
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    rst $38
    nop
    rst $38
    ldh [rIE], a
    rra
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fc
    nop
    di
    nop
    cp $00
    ld a, l
    add b
    ld a, a
    ld c, $01
    dec c
    nop
    ld [$3d00], sp
    nop
    dec de
    nop
    jr z, jr_02a_5d6c

jr_02a_5d6c:
    cp $00
    rst $38
    nop
    nop
    rst $38
    sub b
    rst $38
    reti


    rst $38
    xor l
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    ld [hl], h
    rst $38
    ld [hl], h
    rst $38
    sub l
    rst $38
    add hl, hl
    rst $38
    rlca
    rst $38
    add e
    rst $38
    ld a, a
    add b
    ld hl, sp+$07
    rst $38
    rst $38
    cp [hl]
    ld b, c
    db $76
    adc c
    ld d, a
    xor b
    rra
    ldh [rIE], a
    nop
    pop af
    cp $8f
    ld a, a
    inc bc
    db $fc
    inc bc
    db $fc
    ld b, $fd
    ld b, $fd
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    ret nz

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

Jump_02a_5dc2:
    rst $38
    rra
    rst $38
    rst $28
    rst $38
    rla
    rst $38
    ld h, a
    rst $38
    add a
    rst $38
    ei
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    add c
    rst $38
    ld h, e

jr_02a_5dd6:
    rst $38
    rra
    rst $38
    pop hl
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00fe
    cp $06
    cp $08
    cp $18
    cp $10
    cp $e0
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    db $fd
    nop
    db $fd
    inc a
    db $fd
    ret nz

    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    ret nz

    db $fd
    ret nz

    db $fc
    cp h
    ld a, [$fa00]
    nop
    ld [$3810], a
    ret nz

    jr c, jr_02a_5dd6

    ld a, b
    add b
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp-$08
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [$80]
    ldh a, [rSVBK]
    ldh a, [rP1]
    nop
    sub l
    nop
    ld de, $8e00
    nop
    ld l, [hl]
    nop
    xor [hl]
    nop
    or $00
    ld [hl], l
    nop
    db $d3
    nop
    ld d, d
    add b
    ld [hl-], a
    ld b, d
    jr nz, @-$50

    nop
    rst $18
    nop
    rst $30
    nop
    rst $30
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ld [hl+], a
    rst $38
    add sp, -$01
    db $ec
    rst $38
    ld a, [c]
    rst $38
    jp nc, $f4ff

    rst $38
    xor $ff
    rst $38
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    jr @+$01

    ccf
    rst $38
    ld h, d
    sbc l
    rlca
    rst $38
    rst $38
    rst $38
    rlca
    ei
    inc de
    rst $28
    dec de
    rst $20
    add e
    ld a, a
    and a
    ld e, a
    rlca
    cp $ff
    cp $de
    ld h, $37
    call Call_02a_45bf
    ld d, a
    xor a
    db $fd
    db $fd
    ei
    ei
    ccf
    ccf
    ccf
    ccf
    cp a
    ccf
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    or a
    rst $38
    sub a
    rst $38
    add a
    rst $38
    add a
    rst $38
    add e
    rst $38
    add e
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
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
    nop
    nop
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
    ld sp, hl
    nop
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $01fc
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ldh a, [$03]
    ldh a, [rSC]
    ld hl, sp+$00
    ld hl, sp+$03
    ld hl, sp+$03
    ld a, h
    nop
    ld e, $00
    rra
    nop
    xor a
    nop
    rst $28
    nop
    rst $30
    ld [$b087], sp
    ld bc, $00f8
    ld sp, hl
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    xor $00
    ld b, c
    rst $38
    ld sp, hl
    rst $38
    db $ed
    rst $38
    dec d
    rst $38
    ld bc, $0dff
    rst $38
    ld d, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    rrca
    rst $38
    ld [$08bf], sp
    rst $38
    nop
    ld [$e01d], a
    ld a, c
    add b
    dec h
    ret nz

    xor l
    ret nz

    rst $00
    ret nz

    rst $20
    ldh [$f7], a
    ldh a, [$fe]
    ldh a, [$2d]
    ld a, [c]
    xor c
    or $a3
    db $fc
    or $f9
    xor $f1
    db $e4
    ei
    db $e4
    ei
    ldh [$bf], a
    ld e, b
    daa
    ld [$1837], sp

jr_02a_5f85:
    rst $20
    jr nz, @+$01

    jr nz, @+$01

    daa
    rst $38
    inc bc
    ld l, a
    inc de
    rst $28
    dec sp
    ld b, a
    ld d, $cf
    rrca
    rst $00
    jr @-$17

    ld a, [bc]
    push hl
    inc c
    rst $20
    jr nc, jr_02a_5f85

    dec h
    and $6c
    rst $30
    ld d, $e7
    ld [bc], a
    rst $30
    ld b, $d7
    rra
    add $0d
    cp $0d
    cp $8d
    cp $07
    cp $15
    db $ec
    dec d
    db $ec
    inc b
    db $fc
    inc b
    db $fc
    inc d
    db $ec
    inc d
    db $ec
    ld c, [hl]
    cp $4c
    db $fc
    ld c, $fe
    ld c, $fe
    inc c
    cp $08
    ld a, h
    ld c, b
    ld a, h
    ld l, d
    ld a, h
    jr c, jr_02a_604d

    ld a, b
    ld a, c
    ld b, b
    ld a, c
    inc d
    ld l, b
    ld b, l
    ld a, b
    ld c, h
    ld [hl], b
    ld b, b
    ld a, h
    ld c, b
    ld [hl], h
    ld d, b
    ld a, h
    ld d, b
    ld a, h
    ld [de], a
    ld a, h
    ld [de], a
    inc a
    inc d
    ld a, [hl-]
    inc d
    ld a, [hl-]
    db $10
    ld a, $14
    ld a, [hl-]
    jr @+$40

    add hl, de
    ld a, $1c
    dec sp
    inc e
    inc sp
    ld d, $39
    inc d
    dec sp
    inc d
    dec sp

jr_02a_5ffc:
    dec d
    dec sp
    dec d
    dec sp
    rst $30
    add hl, hl
    ccf
    pop bc
    ld a, a
    add c
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld bc, $17ff
    rst $38
    inc hl
    ei
    inc b
    di
    inc c
    or b
    ld a, a
    jp hl


    ld [hl], $ff
    nop
    cp l
    jp nz, Jump_000_01fe

    rst $38
    nop
    rst $38
    nop
    ld a, e
    nop
    ld e, $00
    db $76
    add b
    ccf
    ret nz

    inc sp
    ret nz

    rra
    ldh [$1f], a
    ldh [rIF], a
    or b
    inc bc
    ld d, h
    inc bc
    adc h
    rst $20
    jr jr_02a_60ac

    inc c
    cp b
    ld b, $7c
    ld [bc], a
    rst $38
    nop
    ret nz

    rst $38
    ld b, b
    rst $38
    ldh [rIE], a
    ret nc

    rst $38
    inc bc
    rst $38
    ld c, $ff
    xor [hl]

jr_02a_604d:
    rst $38
    add sp, -$01
    ret z

    rst $38
    db $fc
    rst $38
    db $10
    db $fc
    jr @+$01

jr_02a_6058:
    jr c, jr_02a_6058

    nop
    ld a, [$fe00]
    nop
    or $04

Call_02a_6061:
    cp $0e
    rst $18
    rlca
    rst $18
    dec b
    rst $38
    push hl
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    ld a, a
    sub b
    ld l, a

jr_02a_6074:
    cp $01
    rst $38
    nop
    ld h, a
    jr jr_02a_5ffc

    ld a, [hl]
    ld b, l
    ld a, [hl-]
    pop hl
    sbc [hl]
    ld b, $7f
    rlca
    ccf
    dec b
    ld a, a
    nop
    ld a, a
    nop
    cp a
    nop
    ld hl, sp+$00
    ld a, l
    nop
    db $ed
    ld a, e
    nop
    db $fd
    nop
    rst $28
    nop
    cp $00
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ret z

    rst $38
    ld b, b
    rst $38
    ld b, d
    rst $38
    ldh [rIE], a
    and h
    rst $38
    and b
    rst $38

jr_02a_60ac:
    ld a, [c]
    rst $38
    or b
    rst $38
    xor c
    ld d, [hl]
    and h
    ld e, e
    sub [hl]
    ld l, c
    push de
    ld a, [hl+]
    jp nc, $c92d

    ld [hl], $cb
    inc [hl]
    ld l, c
    ld d, $6d
    ld [de], a
    ld h, h
    dec de
    ld [hl], h
    dec bc
    ld [hl], $09
    ld [hl-], a
    dec c
    inc sp
    inc c
    ld a, [hl-]
    dec b
    add hl, de
    ld b, $99
    ld b, $1d
    ld [bc], a
    dec e
    add d
    inc c
    add e
    inc c
    add e
    ld c, $81
    ld b, $81
    ld b, $c1
    rlca
    ld b, b
    rlca
    ld b, b
    inc hl
    ld b, b
    ld b, e
    nop
    inc bc
    ld h, b
    ld b, e
    jr nz, @+$03

    jr nz, @+$03

    jr nz, jr_02a_6132

    jr nz, jr_02a_6074

    ld [hl], b
    nop
    ldh a, [rP1]
    ldh a, [$08]
    ldh a, [rLCDC]
    ret nc

    ldh [$d8], a
    ret nz

    call c, $9c6b
    ld h, a
    sbc b
    db $ed
    inc de
    db $e3
    rra
    rst $00
    ccf
    or c
    ld c, [hl]
    ccf
    ret nz

    and e
    ld e, a
    inc hl
    rst $18
    ld d, e
    db $fd
    ccf
    ret


    ld e, a
    and c
    ld a, a
    and l
    cp a
    push hl
    ld a, a
    xor a
    ccf
    rst $00
    ld a, a
    sub c
    rst $38
    scf
    ld [hl], a
    cp a
    rst $28
    rst $38
    cp $f7
    ld a, [$f9ff]
    cp $33
    db $fc
    ld a, e
    cp h

jr_02a_6132:
    cp b
    rst $28
    ld d, b
    rst $38
    ld e, a
    rst $38
    rst $00
    ld a, a
    db $eb
    rra
    rla
    rst $28
    db $e3
    ccf
    dec bc
    rst $38
    ld de, $33ff
    rst $38
    and e
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    sbc a
    rst $38
    ld [de], a
    rst $38
    ld h, b
    rst $38
    ld a, [hl-]
    rst $38
    dec sp
    rst $38
    add hl, hl
    rst $38
    jr c, @+$01

    or b
    rst $38
    ld a, [$46ff]
    rst $38
    nop
    add h
    nop
    cp h
    nop
    db $f4
    nop
    push af
    add b
    ld hl, sp-$80
    db $fd
    or b
    db $fc
    ld hl, sp-$03
    ldh [$fe], a
    ldh a, [rIE]
    ldh [$f7], a
    ret nz

    rst $38
    inc b
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    adc a
    rst $38
    rst $08
    rst $38
    jp nz, Jump_02a_43ff

    rst $38
    ret nz

    ei
    add c
    di
    ld bc, $01b3
    ld [hl], e
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
    ld bc, $03ff
    cp a
    nop
    rst $38
    nop
    db $fc
    nop
    rst $38
    ld d, b
    rst $38
    ld [$20ff], sp
    rst $38
    db $10
    cp e
    add h
    rst $38
    db $10
    ld e, [hl]
    ld d, d
    rst $38
    ld e, b
    sbc $91
    pop af
    add $ee
    db $10
    sub [hl]
    ld b, l
    ld e, l
    add h
    push de
    ld a, [hl+]
    ld a, e
    ld b, c
    push de
    add hl, hl
    xor a
    dec b
    rst $00
    ld de, $87d7
    add a
    adc e
    rst $18
    rst $00
    rst $28
    rst $00
    rst $28
    ld b, a
    rst $38
    rst $28
    rst $38
    ld l, a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ld b, b
    cp a
    inc l
    rst $18
    daa
    rst $18
    or a
    ld c, a
    xor e
    ld d, a
    db $d3
    ld l, a
    sbc e
    ld h, a
    db $d3
    cpl
    swap a
    swap a
    rst $20
    rra
    rst $20
    rra
    rst $20
    rra
    rst $30
    rrca
    ld a, a
    rrca
    ld a, a
    rrca
    rst $10
    inc a
    rst $38
    ld b, b
    di
    db $ec
    db $eb
    inc d
    jp $e43c


    rra
    db $e4
    rst $38
    db $ec
    rst $38
    pop bc
    cp $ff
    ldh [rIE], a
    add sp, -$05
    db $ec
    rst $38
    ld a, a

jr_02a_621a:
    rst $38
    sbc e

jr_02a_621c:
    rst $38
    sub c
    rst $38
    add c
    rst $38
    cp b
    rst $38
    ld a, [bc]
    rst $38
    ld c, a
    rst $38
    pop af
    rst $38
    db $fc

jr_02a_622a:
    ld a, a
    db $fd
    cp a
    ld e, l
    rst $38
    ld a, l
    rst $28
    jr c, jr_02a_622a

    ld a, b
    scf
    db $fc
    dec l
    cp $bf
    ld a, [c]
    dec e
    ld a, [c]
    rrca
    ldh a, [rWY]
    or l
    inc bc
    db $fc
    inc sp
    call z, $aed1
    ld hl, sp-$39
    db $fc
    db $e3
    ldh a, [$ef]
    db $f4
    db $eb
    rst $28
    db $10
    ld [bc], a
    rlca
    rlca
    rlca
    add a
    add a
    ldh [$e0], a
    ld h, h
    db $e4
    ld a, [hl]
    cp $7b
    rst $38
    ld a, [hl-]
    ccf
    ld l, e
    ld l, a
    ld c, e
    rst $08
    ld l, b
    ld l, a
    ld a, b
    ld a, a
    ld a, b
    ld a, a
    ld a, b
    ld a, a
    ld l, c
    ld l, a
    ld c, c
    ld c, a
    ld b, a
    ld b, a
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    add $24
    db $e4
    jr nz, jr_02a_621a

    jr nz, jr_02a_621c

    or b
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$b0]
    ldh a, [$f0]
    ldh a, [$e0]
    ldh [$a0], a
    ld [$e8e0], a
    ld h, b
    db $e4
    jr nz, jr_02a_62f7

    ld b, c
    rst $00
    ld b, c
    pop bc
    ld b, c
    ld b, c
    pop bc
    pop bc
    pop bc
    pop bc
    ret nz

    ret nz

    ret nz

jr_02a_629d:
    ret nz

    ret nz

    ret nz

    ret nz

    jr nz, @-$26

    nop
    rst $38
    nop
    or $08
    rst $38
    ld [$18ef], sp
    rst $28
    jr jr_02a_629d

    jr @+$4d

    inc a
    srl h
    rst $08
    inc a
    adc a
    ld a, h
    adc a
    ld a, h
    adc [hl]
    ld a, h
    inc c
    cp $0c
    cp $0d
    cp $0f
    cp $0f
    cp $1f
    cp $1f
    cp $1e
    rst $38
    ld e, $ff
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
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    db $fd
    ld hl, sp-$0d
    ld hl, sp-$09
    ld hl, sp-$0a
    ld hl, sp-$07
    ldh a, [rIE]

jr_02a_62f7:
    ldh a, [$fa]
    ldh a, [$fc]
    ldh a, [$f9]
    ldh a, [$f8]
    ldh a, [$df]
    ldh [$3f], a
    ret nz

    ld l, e
    sub h
    ld b, e
    cp h
    xor a
    ld d, b
    cp a
    ld b, b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    cp e
    nop
    or a
    ld b, b
    rst $38
    ld h, b
    or $c1
    cp $81
    rst $38
    ret nz

    cp $c1
    rst $38
    ld h, b
    rst $38
    ld h, c
    ld a, [$ffe7]
    add b
    rst $38
    jr nc, @-$03

    nop
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ld hl, sp-$12
    ld sp, $01fe
    or e
    ld c, h
    db $ed
    ld d, $73
    adc h
    ld a, c
    add [hl]
    sub c
    ld l, [hl]
    inc de
    db $ec
    dec sp
    call nz, $8877
    ld a, a
    add b
    push af
    ld a, [bc]
    push af
    ld a, [bc]
    db $fd
    add d
    cp $01
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    cp e
    rst $38
    sbc a
    rst $38
    sub c
    rst $38
    ret nz

    ld sp, hl
    ret nz

    rst $38
    ld h, b
    db $fc
    ld h, b
    db $fd
    add sp, -$02
    ld a, $bf
    cp [hl]
    cp a
    sbc h
    sbc a
    cp h
    cp a
    cp h
    cp a
    inc a
    ccf
    jr c, jr_02a_63ae

    db $10
    inc e
    jr nz, jr_02a_63ae

    ld h, b
    ld a, b
    ld h, b
    ld a, h
    ld b, b
    ld a, [hl]
    add b
    db $fd
    add b
    db $fc
    add b
    ld a, [$f7a0]
    pop bc
    rst $38
    ldh [$f3], a
    ldh [rIE], a
    cp b
    ld a, [$fae0]
    ret z

    ld sp, hl
    add b
    rst $20
    nop
    rra
    nop
    xor a
    nop
    ld e, a
    add b
    xor a
    ret nz

    rst $00
    ldh a, [$f1]
    ld hl, sp-$08
    inc e
    db $fc
    ld [bc], a
    ld a, [$fc00]
    nop
    ld a, [$ff00]
    nop
    rst $38
    nop
    rst $38

jr_02a_63ae:
    nop
    rst $38
    rst $38
    nop
    cp c
    nop
    ccf
    nop
    ld e, l
    nop
    jp nc, $8b00

    nop
    ld e, d
    nop
    sub l
    nop
    ld [hl], d
    nop
    sbc c
    nop
    inc a
    nop
    stop
    xor l
    nop
    add hl, hl
    nop
    ld b, h
    nop
    ld l, h
    nop
    sub b
    nop
    add c
    nop
    adc b
    nop
    ret z

    nop
    ld c, c
    add b
    ld b, $80
    xor e
    add b
    push hl
    add b
    rst $20
    add b
    pop af
    add b
    reti


    add b
    cp d
    nop
    sub [hl]
    nop
    ld e, $00
    db $f4
    nop
    ld a, $00
    ld sp, hl
    nop
    sbc h
    nop
    ld [hl], a
    nop
    rra
    nop
    add l
    nop
    ld h, l
    nop
    ld d, l
    nop
    adc l
    nop

Call_02a_6400:
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
    jr nz, jr_02a_6443

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_02a_6453

    dec bc
    ld a, [hl+]
    dec hl
    dec bc
    inc l
    dec l
    ld l, $2f
    jr nc, jr_02a_6465

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_02a_6475

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b

jr_02a_6443:
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    dec bc
    ld b, a
    ld c, b
    dec bc
    ld c, c
    dec bc
    dec bc
    ld c, d
    ld c, e
    ld c, h

jr_02a_6453:
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    dec bc
    ld d, [hl]
    dec bc
    dec bc
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e

jr_02a_6465:
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    dec bc
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d

jr_02a_6475:
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
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    dec bc
    dec bc
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    add c
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    dec bc
    dec bc
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
    dec bc
    dec bc
    dec bc
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
    dec bc
    dec bc
    cp c
    cp d
    ld c, b
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c381

    dec bc
    dec bc
    call nz, $c6c5
    dec bc
    rst $00
    ret z

    ret


    jp z, $cccb

    call $cfce
    ret nc

    dec bc
    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, $cedb

    call c, $dedd
    rst $18
    ldh [$e1], a
    dec bc
    dec bc
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$9256], a
    db $eb
    db $ec
    db $ed
    xor $0b
    ld d, [hl]
    rst $28
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    dec bc
    or $f7
    ld hl, sp-$07
    ld a, [$0bfb]
    db $fc
    db $fd
    cp $ff
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    dec bc
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $0b
    dec bc
    rla
    jr jr_02a_6559

    inc bc
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
    inc bc
    inc b

jr_02a_6559:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc b
    inc b
    inc bc
    inc b
    inc b
    inc bc
    inc bc
    inc b
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
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
    inc b
    inc b
    inc bc
    inc bc
    inc bc
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
    inc bc
    inc bc
    inc b
    inc bc
    ld bc, $0301
    dec b
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0005
    nop
    nop
    nop
    inc bc
    inc b
    inc b
    inc bc
    ld bc, $0303
    ld bc, $0101
    ld bc, $0005
    nop
    nop
    nop
    inc b
    inc b
    ld bc, $0301
    inc bc
    ld bc, $0101
    ld bc, $0101
    dec b
    nop
    nop
    nop
    ld bc, $0103
    ld bc, $0303
    inc bc
    ld bc, $0101
    ld bc, $0005
    nop
    nop
    nop
    inc b
    inc bc
    inc bc
    inc bc
    ld bc, $0103
    ld bc, $0101
    ld bc, $0005
    nop
    nop
    nop
    inc b
    inc b
    inc bc
    ld bc, $0303
    ld bc, $0101
    ld bc, $0005
    nop
    nop
    nop
    nop
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    ld bc, $0101
    ld bc, $0505
    nop
    nop
    nop
    nop
    nop
    inc b
    inc bc
    inc bc
    inc b
    ld bc, $0101
    ld bc, $0501
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
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
    inc bc
    inc b
    ld b, $01
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
    inc bc
    ld bc, $0500
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
    ld b, $06
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$0008], sp
    ld [$0808], sp
    ld [$0c0a], sp
    inc c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0008], sp
    nop
    ld [$0808], sp
    di
    rst $38
    ld [hl], e
    rst $28
    dec de
    rst $28
    reti


    rst $38
    ret


    ld a, $c9
    rst $38
    ld h, b
    cp a
    ld [hl], b
    sbc a
    rst $18
    cp $5a
    ld b, d
    ld [hl], h
    ld l, b
    rst $38
    ldh a, [$f7]
    ld [hl], b
    ld a, [hl]
    cp [hl]
    db $e3
    inc b
    jr c, jr_02a_66dc

    rst $30
    ld hl, sp+$3f
    nop
    db $fd
    ld a, [bc]
    ld b, e
    ld b, b
    rst $30
    or $5a
    ld [bc], a
    db $eb
    inc bc
    db $ed
    ld bc, $01f7
    xor b
    ld b, b
    push af
    dec b
    ret c

    ret c

    and l
    and d
    cpl
    ld [$02b2], sp
    jr nz, jr_02a_66c0

jr_02a_66c0:
    rlca
    nop
    ld sp, $c701
    ld h, a
    db $eb
    db $e3
    db $eb
    db $eb
    ld l, h
    ld h, h
    ld l, a
    ld h, c
    dec h
    jr nz, jr_02a_6741

    inc sp
    db $ed
    add d
    rst $38
    nop
    call c, Call_000_0ddc
    adc h
    sbc $06

jr_02a_66dc:
    sub h
    adc b
    jp nc, Jump_02a_7f92

    sbc a
    ld a, [$72f8]
    ld [hl], b
    dec bc
    ld [bc], a
    cp e
    jr c, jr_02a_674a

    rra
    ld [$e008], sp
    ldh [$c0], a
    ret nz

    db $f4
    db $f4
    or b
    jr nc, jr_02a_6711

    ld a, [hl-]
    ld e, b
    jr @-$61

    dec e
    ld h, a
    rst $20
    rst $38
    rst $38
    rst $18
    ld e, a
    ld a, [hl]
    ld e, $50
    jr nz, jr_02a_6727

    db $10
    sbc c
    ld h, c
    inc c
    sub c
    ld a, [hl+]
    call nc, $802f
    rlca

jr_02a_6711:
    ld e, h
    ld de, $fa3e
    ld a, [hl-]
    ld [$230c], sp
    add h
    jp $c3dc


    db $e4
    ld e, a
    ld h, b
    nop
    db $fd
    nop
    cp b
    nop
    db $10
    inc bc

jr_02a_6727:
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_02a_6741:
    ld [bc], a
    rst $38
    dec bc
    rst $38
    rla
    rst $38
    ld e, a
    rst $38
    rst $38

jr_02a_674a:
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    ldh a, [rIE]
    ret nz

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
    ei
    inc b
    ei
    inc b
    cp l

jr_02a_6765:
    ld b, d

jr_02a_6766:
    rst $38
    nop
    rst $30
    ld [$08f7], sp
    rst $38
    nop
    rra
    ldh [rTAC], a
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    add c
    cp $c0
    ld a, a
    ld hl, sp+$7f
    ld hl, sp+$0f
    cp $07
    ld [hl], e
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [$2e00], sp
    nop
    ld h, e
    nop
    jr jr_02a_678d

    adc h

jr_02a_678d:
    xor l
    pop hl
    ldh [$f5], a
    ld b, h
    ld b, a
    ld b, [hl]
    rst $30
    rst $00
    rrca
    rrca
    rst $38
    rst $38
    ld l, b
    ld l, b
    ld h, h
    ld h, h
    ld a, c
    pop hl
    sub a
    ld c, c
    add $00
    ld l, e
    jr nz, jr_02a_6766

    jr nc, @+$01

    ccf
    sbc $1e
    ld l, h
    inc c
    ld a, $0e
    sbc a
    cp a
    push af
    ldh a, [$fc]
    ldh a, [rNR41]
    jr nz, jr_02a_6765

    jr nz, @+$01

    ld [hl], b
    inc d
    db $10
    call c, Call_000_1f1c
    ccf
    adc $ce
    cp [hl]
    adc [hl]
    rrca
    rlca
    adc a
    add e
    jp z, Jump_02a_7bc2

    ld a, h
    rst $20
    ld bc, $01f7
    ld b, d
    ld [hl-], a
    sub [hl]
    nop
    ret nz

    add b
    inc bc
    nop
    ld e, b
    nop
    nop
    db $10
    scf
    jr c, @+$01

    cp $f8
    ld hl, sp+$42
    ld b, b
    ldh [rP1], a
    adc d
    ld a, [bc]
    inc b
    inc b
    inc e
    inc e
    ld d, c
    add hl, de
    di
    rst $38
    ld a, [$ffdf]
    ld [hl], a
    ld hl, sp-$19
    db $f4
    rst $38
    ld e, $fd
    ld a, b
    rst $38
    ld [hl], b
    rst $38
    dec d
    add a
    inc de
    rrca
    inc b
    rrca
    push bc
    rrca
    ld h, l
    inc bc
    ld bc, $a55f
    rra
    ld [c], a
    ld a, a
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    inc b
    ld hl, sp+$10
    ldh [rP1], a
    add b
    nop
    ret nz

    ld bc, $0fe0
    ret nz

    ccf
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
    ld [bc], a
    rst $38
    dec b
    rst $38
    dec bc
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
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
    db $db
    inc h
    db $db
    inc h
    rst $38
    nop
    rst $38
    nop
    cp $01
    and $19
    rst $38
    nop
    rrca
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    rst $08
    ld a, b
    rst $28
    ccf
    ret nz

    rst $38
    ldh [rIE], a
    ld [c], a
    rst $38
    sbc $f5
    cp $03
    rst $18
    ld [hl], d
    cp a
    jr nc, @+$3e

    cp h
    ld [hl], c
    ld [hl], b
    pop af
    ldh a, [$30]
    jr nc, jr_02a_68f3

    jr @+$7d

    inc e
    inc sp
    nop
    or e
    and b
    set 1, b
    call z, $8ecc
    ld c, $c9
    ret nz

    inc c
    nop
    ld e, e
    inc de
    sbc h
    ld a, h
    dec sp
    and $ff
    ld a, b
    rst $38
    ld d, $fd
    rla
    rst $38
    or h
    rst $38
    ld [hl], h
    rst $28
    inc sp
    rst $38
    sub b

jr_02a_68c0:
    cp d
    xor d
    db $10
    ld [de], a
    ld l, $2e
    ld e, a
    ld e, a
    rst $20
    rst $20
    add e
    inc bc
    and e
    ld b, e
    ld bc, $8101
    add c
    dec d
    dec d
    adc e
    inc bc
    rlca
    rlca
    sbc b
    jr jr_02a_68c0

    pop hl
    ld b, b
    ld h, b
    ld [c], a
    ld h, b
    rst $08
    ld a, [hl]
    adc a
    ld a, a
    call nz, $c1ff
    rst $38
    add $ff
    and $bf
    and b
    rst $18
    ld a, [$9eff]
    rst $38
    add e

jr_02a_68f3:
    cp $0f
    rst $38
    ld a, a
    rst $18
    db $fc
    sbc a
    ld [hl], c
    cp a
    rlca
    rst $38
    ld a, [hl-]
    rst $38
    push bc
    rst $38
    sbc c
    rst $20
    ld h, b
    rst $38
    cp $ff
    jp $c3ff


    rst $38
    ld sp, hl
    cp $f7
    ld hl, sp+$00
    ld hl, sp+$00
    ret nz

    nop
    nop
    ld bc, $0700
    nop
    rra
    nop
    ld a, a
    nop
    rst $38
    nop

jr_02a_6920:
    rst $38
    nop
    rst $38
    dec b
    rst $38
    rla
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    db $10
    rst $38
    db $10
    rst $38
    inc c
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    nop
    rst $38

jr_02a_693f:
    nop
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    rst $28
    db $10
    rst $10
    jr z, jr_02a_6920

    ld l, $f9
    ld b, $f8
    rlca
    pop bc
    ld a, $6f
    sub b
    ld a, h
    add e
    add sp, $17
    ldh a, [rIF]
    nop
    rst $38
    ld h, h
    inc c
    pop de
    ret nc

    call nz, $c0c0
    ret nz

    call c, $d8e0
    ret nz

    cp $e0
    ld l, a
    ld h, h
    ldh a, [$f8]
    ld a, l
    ld a, h
    add b
    nop
    and b
    jr nz, jr_02a_693f

    ld b, $27
    rlca
    rlca
    rlca
    add $06
    db $e3
    rlca
    ei
    inc de
    nop
    nop
    ldh a, [$f0]
    inc bc
    inc bc
    db $e3
    db $e3
    rst $28
    db $eb
    db $fd
    ld a, l
    rst $00
    ld a, h
    rst $00
    ld a, b
    rst $30
    ld a, b
    rst $30
    ld e, $f7
    rrca
    db $db
    cpl
    ld hl, sp-$71
    sub h
    rst $38
    rrca
    rst $38
    ld [hl], a
    rst $38
    rst $30
    cp a
    rst $38
    rst $38
    rrca
    rst $38
    rra
    ei
    rst $38
    ld a, a
    rst $18
    cp a
    ld a, [hl]
    rst $30
    ld a, b
    rst $38
    ld [bc], a
    rst $38
    ld a, [de]
    rst $38
    adc h
    ld a, a
    db $fc
    ccf
    cp $ff
    db $fc
    rst $38
    ret nz

    rst $38
    ld a, [de]
    rst $38
    ld h, c
    rst $38
    db $10
    rst $38
    adc b
    rst $38
    ld a, b
    rst $38
    ld a, [c]
    rst $38
    db $10
    rst $38
    sbc $ef
    and b
    inc hl
    or c
    ccf
    cp [hl]
    cp [hl]
    ret c

    ld sp, hl
    ld e, d
    ld a, h
    xor b
    cpl
    inc b
    db $d3
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $04fe
    ld hl, sp+$10
    ldh [rLCDC], a
    add b
    nop
    nop
    inc bc
    nop
    rra
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
    inc bc
    rst $38
    cpl
    rst $38
    sbc a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld a, h
    rst $38
    inc bc
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [$08ff], sp
    rst $18
    jr z, @+$01

    ld [$08ff], sp
    ld a, a
    adc b
    rst $38
    ld [$10ff], sp
    ld a, a
    sub b
    rst $38
    db $10
    rst $38
    db $10
    rst $18
    jr nc, jr_02a_6a72

    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [rIF]
    db $fc
    rlca
    db $fc
    ld a, a
    ld hl, sp-$41
    ld e, b
    rst $30
    cp a
    rst $30
    db $db
    push af
    set 6, a
    sbc a
    cp $8f
    jp nz, $38ff

    ld a, b

jr_02a_6a72:
    add sp, $28
    inc c
    inc c
    ld de, $c901
    add hl, bc
    jr c, jr_02a_6ab4

    add h
    add b
    ld hl, sp-$48
    ld [$cc08], sp
    call z, $4f6f
    ld a, h
    db $fc
    add b
    add b
    ldh [$e0], a
    jp c, $7cde

    nop
    ld a, h
    nop
    cp h
    nop
    jp c, $ff04

    ld bc, $0141
    rrca
    ld c, $ff
    cp $e7
    and $cd
    rst $38
    ld b, c
    rst $38
    ld b, a
    rst $38
    rst $30
    rst $38
    di
    sbc a
    db $fc
    rst $28
    ldh a, [rIE]
    cp h
    rst $38
    ld a, h
    db $e3
    db $f4
    db $eb

jr_02a_6ab4:
    ldh [$bf], a
    ld h, b
    rst $18
    inc c
    di
    ld c, $fd
    ld e, $f9
    ld c, $f9
    rst $20
    db $fc
    ld b, d
    db $fd
    ld [hl-], a

jr_02a_6ac5:
    rst $38
    ld [bc], a
    rst $38
    ld c, $ff
    add [hl]
    rst $38
    add a
    rst $38
    inc bc
    rst $38
    add hl, de
    add hl, de
    ld a, a
    ld a, a
    rra
    sbc a
    ld h, a
    add e
    ld sp, $0ec7
    rst $38
    ld a, d
    cp a
    push hl
    ld a, [$fc03]
    ld [$20f0], sp
    ret nz

    nop
    nop
    inc bc
    nop
    rrca
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    ld bc, $02ff
    rst $38
    rla
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    cp $ff
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
    inc a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $38
    nop
    ld e, h
    inc e
    jr jr_02a_6b3c

    jr jr_02a_6b3e

    sub h
    jr jr_02a_6ac5

    jr @+$3a

    ld a, b
    db $e4
    db $e4
    add [hl]
    add [hl]
    ld e, e
    rst $38
    ei
    rst $38
    or b
    rst $38
    rlca
    rst $38
    ld d, $fd
    rst $38
    rst $28

jr_02a_6b3c:
    ld e, e
    xor l

jr_02a_6b3e:
    rst $18
    db $fd
    ret z

    ccf
    set 7, a
    ccf
    rst $30
    ccf
    rst $30
    ccf
    rst $38
    cpl
    rst $38
    ld h, a
    rst $38
    and a
    rst $38
    ld d, b
    ld d, b
    and h
    nop
    db $e4
    ld b, h
    ld a, b
    ld a, b
    nop
    nop
    ldh [rSTAT], a
    cp b
    ld bc, $03fb
    ld c, [hl]
    rst $38
    jp z, $c4ff

    rst $38
    adc $ff
    ld a, [de]
    db $fd
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
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
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp h
    nop
    ldh [$80], a
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    pop hl
    nop
    rst $20
    nop
    ld a, [hl]
    add c
    ld a, b
    add a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld h, b
    sbc a
    ld h, b
    sbc [hl]
    ld h, c
    sbc a
    pop hl
    ld e, $61
    ld e, $70
    rrca
    ld [hl], b
    rrca
    ld [hl], b
    rrca
    ld a, b
    rlca
    ld a, b
    rlca
    inc [hl]
    dec bc
    inc [hl]
    dec bc
    ld d, $09
    ld a, [de]
    dec b
    ld a, [bc]
    dec b
    ld a, [bc]
    dec b
    dec c
    ld [bc], a
    ld b, $01
    rra
    nop
    ccf
    nop
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    ldh a, [rIE]
    and b
    rst $38
    ld de, $16ff
    rst $38
    ld [$08ff], sp
    rst $38
    dec b
    rst $38
    ld b, $ff
    ld [bc], a
    rst $38
    ld [bc], a
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
    rst $38
    rst $38
    nop
    rst $38
    nop
    sbc e
    rst $38
    ld sp, hl
    rst $38
    call $edff
    cp $a7
    rst $38
    db $fc
    ccf
    cp [hl]
    rst $18
    rst $38
    db $fd
    db $fd
    cp a
    rst $10
    cp $ff
    adc a
    rst $18
    xor l
    ld a, a
    db $fd
    ld a, a
    db $ed
    ld [hl], b
    rst $38
    ld d, $ff
    ret z

    jp c, $0606

    ld a, [bc]

jr_02a_6c15:
    ld a, [bc]
    nop
    nop
    ld [hl], l
    nop
    add sp, $28
    ld c, $0e
    ld c, a
    ld c, a
    jp nc, $c7ff

    ld a, a
    di
    rst $18
    rst $30
    ld e, a
    pop af
    rra
    rst $20
    cp a
    sbc a
    cp $7c
    rst $38
    add b
    rst $38
    nop
    rst $38
    jr nz, jr_02a_6c15

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$d8ff], sp
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ld d, b
    rst $38
    ld h, b
    rst $38
    ld [hl], b
    rst $38
    ldh a, [rIE]
    ld [$080f], sp
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rra
    ld b, $19
    ld a, a
    nop
    pop af
    ld c, $81
    ld a, [hl]
    ld [hl], b
    rst $38
    ret nz

    rst $38
    nop
    ld hl, sp+$00
    ldh [rP1], a
    add b
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_02a_6cb5

    and b
    ld h, b
    sub b
    ld [hl], b
    adc b
    jr c, @-$3a

    inc a
    jp nz, $a15e

    rst $28
    sub b
    rst $28
    sub b
    rst $30
    adc b
    ei
    add h
    ld a, l
    jp nz, Jump_02a_42bd

    ld a, [hl]
    and c
    ld e, a
    and b
    cp a
    ld d, b
    xor a
    ld d, b
    xor a
    ld d, b
    and a
    ld e, b
    and a
    ld e, b
    and a
    ld e, b
    and a
    ld e, b
    and a
    ld e, b
    and e
    ld e, h
    and e
    ld e, h
    ld hl, $255e
    ld e, b
    jr nz, jr_02a_6cc8

    nop
    jr jr_02a_6cad

jr_02a_6cad:
    ld h, b
    nop
    add b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38

jr_02a_6cb5:
    inc hl
    rst $38
    inc l
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld [$04ff], sp

Jump_02a_6cc0:
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff

jr_02a_6cc8:
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
    inc bc
    or $df
    or [hl]
    rst $38
    ld [hl-], a
    rst $38
    cp [hl]
    rst $38
    cp $ff
    sbc $ff
    ret z

    rst $38
    ld c, e
    rst $38
    or h
    or h
    db $dd
    dec e
    add hl, bc
    add hl, bc
    add c
    add c
    jr nc, @+$32

    ld [$c008], sp
    ldh [$80], a
    add b
    nop
    nop
    jp c, $5bda

    ld e, d
    ld d, b
    ld d, b
    ld [hl-], a
    ld [de], a
    ld d, e
    ld d, a
    add hl, de
    add hl, de
    ld de, $6e11
    ei
    ld h, $ff
    adc c
    rst $38
    adc h
    rst $38
    inc l
    rst $38
    or h
    rst $38
    inc a
    rst $38
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07fe
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [$0e]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [rTMA]
    ld hl, sp+$0b
    db $f4
    dec bc
    db $fc
    ld a, [de]
    db $ed
    inc e
    db $eb
    ccf
    ret nz

    ccf
    jp $e71f


    rrca
    di
    rlca
    ld hl, sp+$02
    db $fd
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
    ld a, a
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
    nop
    nop
    add b
    nop
    add b
    add b
    ld b, c
    ret nz

    daa
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ld [hl], c
    adc a
    ld [hl], a
    adc a
    adc a
    ld a, a
    rst $08
    ccf
    adc $3f
    add sp, $1f
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    cp h
    inc bc
    ld a, h
    inc bc
    rst $38
    ld e, a
    rst $38
    rst $28
    rst $38
    rla
    rst $38
    rla
    rst $38
    dec bc
    rst $38
    add hl, bc
    rst $38
    inc b
    rst $38
    ld c, $ff
    ld [hl-], a
    rst $38
    pop bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    add c
    rst $38
    ld b, [hl]
    rst $38
    ld e, b
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    db $10
    rst $38
    ld [$07ff], sp
    rst $38
    ld b, $ff
    ld [bc], a
    rst $38
    ld bc, $02ff
    rst $38
    inc b
    rst $38
    inc c
    rst $38
    ld [$30ff], sp
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    ret nz

    rst $38
    nop
    rlca
    nop
    inc b
    inc bc
    ld l, h
    ld h, e
    sbc $c1
    adc a
    add b
    rst $20
    add sp, -$69
    sub b
    sub a
    sub b
    sub l
    sub b
    add a
    add b
    sub a
    add d
    scf
    nop
    daa
    nop
    ld [hl], a
    jr nz, jr_02a_6e70

    db $10
    cpl
    ld b, b
    rst $38
    nop
    ld a, e
    add b
    ld a, [hl]
    add b
    ld h, a
    sbc b
    add c
    ld a, [hl]
    ld b, b
    cp a
    adc b
    ld [hl], a
    sbc a
    ld h, b
    scf
    ret z

    ccf
    ret nz

    dec sp
    call nz, $a15e
    ld [hl], a
    add b
    ld a, c
    add b
    cp $00
    rst $20
    nop
    ldh a, [rLCDC]
    ld l, [hl]
    and b
    db $fd
    ld a, h
    ei
    ldh a, [$fc]
    ld a, h
    ei
    dec de
    ei
    dec bc
    ld a, e
    rrca
    add hl, sp
    rlca
    inc a
    ld b, $3e
    rrca
    ld a, d
    rrca
    ei
    rlca
    ld sp, hl
    rla
    rst $38
    ld c, $be
    ld h, c
    ld hl, sp+$07
    ldh [$1f], a
    ldh [$1f], a
    ret z

    scf
    sbc b
    ld h, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    jr jr_02a_6e61

jr_02a_6e61:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0700

jr_02a_6e70:
    nop
    rra
    nop
    ld a, a
    nop
    rst $38
    ld bc, $07ff
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    rst $30
    rst $38
    jp $81ff


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
    cp $00
    ld hl, sp+$00
    ldh a, [rP1]
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
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    jr nz, @+$01

    jr nz, @+$01

    db $10
    rst $38
    db $10
    rst $38
    jr c, @+$01

    call nz, Call_000_04ff
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    rst $38
    add [hl]
    rst $38
    adc b
    rst $38
    ld [hl], b
    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    ld [$08ff], sp
    rst $38
    inc b
    cp a
    nop
    rst $38
    nop
    sbc a
    nop
    cp a
    nop
    rst $30
    nop
    rst $28
    nop
    rst $28
    nop
    ld a, [$ff05]
    db $10
    cp $01
    rst $38
    inc b
    rst $10
    dec l
    rst $38
    rrca
    di
    inc c
    ei
    dec b
    rst $38
    inc b
    rst $30
    ld [$00ff], sp
    dec d
    nop
    rlc b
    cp a
    ld b, b
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ld hl, sp+$07
    ld e, [hl]
    and c
    rst $18
    jr nz, jr_02a_6f98

    add b
    jp hl


    ld d, $7f
    nop
    adc a
    nop
    sbc $25
    db $f4
    dec bc
    ld a, [$de85]
    pop hl
    cp l
    ld [c], a
    ret nz

    rst $38
    ret nz

    rst $38
    db $e4
    rst $18
    and b
    ld e, a

Call_02a_6f32:
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    cp a
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    ld bc, $02ff
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
    nop
    db $fc
    nop
    ldh a, [rP1]
    ldh [rP1], a
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0700
    nop
    rra
    nop
    ld a, a
    nop
    rst $38
    ld bc, $07ff
    rst $38
    rra
    rst $38
    ld a, [hl]
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    add b
    rst $38
    add b

Call_02a_6f7f:
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    jr c, @+$01

    inc e
    rst $38
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_02a_6f98:
    nop
    cp $00
    ld hl, sp+$00
    ldh a, [rP1]
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
    add b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld de, $0aff
    rst $38
    inc e
    rst $38
    ld h, h
    ld sp, hl
    dec bc
    cp $03
    cp $02
    cp $00
    ld sp, hl
    ld bc, $23f3
    rst $28
    rrca
    rst $38
    ld e, a
    ld [hl], b
    cp a
    ldh a, [$7f]
    ldh [rIE], a
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [$7f]
    ld [hl], c
    cp $f7
    ld a, b
    rst $38
    nop
    cp $01
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
    nop
    rst $38
    add b
    rst $38
    ld bc, $ffff
    jp hl


    cp $0f
    ldh [$7f], a
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
    add b
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    add e
    rst $38
    rst $00
    rst $38
    db $fc
    rst $38
    ldh a, [$fc]
    ret nz

    ldh a, [rP1]
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0700
    nop
    rra
    nop
    ld a, a
    nop
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    cp $ff
    db $fc
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
    nop
    rst $38
    nop
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
    inc c
    rst $38
    jr nc, @+$01

    ld h, b
    db $fc
    add b
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
    rst $38
    nop
    rst $38
    nop
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
    jr @+$01

    jr nc, @+$01

    ld c, b
    rst $38
    add h
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    inc c
    inc c
    ld a, [de]
    ld a, [de]
    sbc $de
    db $eb
    db $eb
    rst $20
    rst $20
    sbc h
    sbc h
    cp a
    cp a
    sbc h
    sbc d
    rst $00
    jp hl


    add $e0
    adc $c8
    ld sp, hl
    ld sp, hl
    rst $38
    rst $38
    cp $fe
    cp $82
    rst $38
    rlca
    ld [c], a
    rra
    add d
    ld a, a
    jr @+$01

    jr z, @+$01

    jr nz, @+$01

    ld [hl+], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
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
    ld a, $ff
    ld [bc], a
    rst $38
    dec d
    rst $38
    cpl
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld sp, hl
    rst $38
    ld [hl], b
    rst $38
    ld [hl], c
    rst $38
    ld e, c
    rst $38
    ld [$20ff], sp
    rst $38
    nop
    rst $38
    nop
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
    ret z

    rst $38
    ldh a, [$fe]
    ldh [$f8], a
    ret nz

    ldh a, [rP1]
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rrca
    nop
    ccf
    nop
    ld a, a
    ld bc, $07ff
    rst $38
    rrca
    rst $38
    ccf
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $06ff
    rst $38
    ld [$30ff], sp
    rst $38
    ld b, b
    db $fc
    add b
    ldh a, [rP1]
    ldh [rP1], a
    add b
    nop
    nop
    rst $38
    ld bc, $02ff
    rst $38
    inc b
    rst $38
    jr @+$01

    jr nz, @+$01

    ld h, b
    rst $38
    sub b
    rst $38
    ld [$04ff], sp
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    inc c
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    ret nz

    rst $38
    nop
    ld b, h
    rst $38
    ld [hl], h
    rst $38
    ld b, b
    rst $38
    rra
    rst $38
    sbc $ff
    cp d
    rst $38
    or [hl]
    rst $38
    ld d, $ef
    db $ed
    jp hl


    db $eb
    db $eb
    ld sp, hl
    ld sp, hl
    jp hl


    ei
    ld b, e
    ld b, e
    ld c, $46
    inc h
    ld h, h
    or a
    or a
    nop
    rst $38
    nop
    rst $38
    ld d, c
    rst $38
    ld d, b
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    ld a, $ff
    rst $10
    rst $10
    db $fc
    db $fd
    ei
    ei
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rra
    rst $38
    rst $38
    inc hl
    rst $38
    and b
    rst $38
    ld h, b
    rst $38
    and b
    rst $38
    ld h, b
    cp $c0
    rst $38
    ret nc

    rst $38
    ldh [rIE], a
    ld [bc], a
    rst $38
    ld b, $ff
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    nop
    cp $00
    ld hl, sp+$00
    ldh a, [rP1]
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rrca
    nop
    ccf
    nop
    rst $38
    ld bc, $07ff
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    cp $ff
    cp $ff
    sbc $ff
    ld c, $ff
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
    ld c, $ff
    ld e, $ff
    ld e, $ff
    inc e
    rst $38
    jr c, @+$01

    jr nz, @+$01

    ret nz

    db $fc
    nop
    ldh a, [rP1]
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02ff
    rst $38
    inc b
    rst $38
    jr @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    and b
    rst $38
    db $10
    rst $38
    ld [$05ff], sp
    rst $38
    ld [bc], a
    rst $38
    inc c
    rst $38
    db $10
    rst $38
    jr nz, jr_02a_723f

    ld e, $fb
    db $eb
    rst $28
    rst $28
    xor a
    xor a
    adc [hl]
    sbc [hl]
    and a
    and a
    and a
    and a
    rst $08

jr_02a_723f:
    rst $08
    ld [hl-], a
    rst $38
    add hl, sp
    rst $38
    ld c, c
    rst $38
    ld [$08ff], sp
    rst $38
    db $10
    rst $28
    sub b
    rst $38
    inc h
    rst $38
    jr nz, @+$01

    ldh [rIE], a
    ret nz

    rst $38
    inc b
    rst $38
    ld b, $ff
    inc h
    rst $38
    ld hl, $00ff
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    call z, $0cff
    rst $38
    sub h
    rst $38
    or $ff
    rst $30
    rst $38
    rst $38
    cp $03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld bc, $003e
    rrca
    nop
    add a
    nop
    add c
    nop
    ret nz

    nop
    ret nz

    nop
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
    nop
    nop
    inc bc
    nop
    rrca
    nop
    ccf
    nop
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    ld a, h
    rst $38
    ld hl, sp-$01
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
    db $fc
    nop
    ldh a, [rP1]
    ldh [rP1], a
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
    ld bc, $02ff
    rst $38
    inc b
    rst $38
    jr @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    add hl, de
    rst $38
    ld b, $ff
    inc c
    rst $38
    db $10
    rst $38
    jr nz, @+$01

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
    sbc $de
    xor h
    xor h
    rst $28
    rst $28
    rst $28
    rst $28
    rst $30
    rst $30
    rst $18
    rst $18
    db $f4
    or $3a
    ld [hl-], a
    dec e
    rst $38
    inc c
    rst $38
    jp nc, $30ff

    rst $38
    inc d
    rst $38
    and b
    rst $38
    jr nz, @+$01

    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    inc b
    rst $38
    inc d
    rst $38
    and b
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
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ldh [rP1], a
    inc e
    nop
    inc bc
    nop
    ret nz

    ret nz

    rst $10
    ret nz

    nop
    rst $38
    nop
    ld a, a
    nop
    rra
    nop
    rrca
    nop
    inc bc
    nop
    ld bc, $0300
    nop
    rrca
    rrca
    ccf
    rrca
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $28
    rst $38
    call nz, $83ff
    rst $38
    ld c, [hl]
    rst $38
    jr nc, @+$01

    jr @+$01

    dec b
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
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    inc b
    rst $38
    jr @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld hl, $22ff
    rst $38
    inc e
    rst $38
    inc d
    rst $38
    inc h
    rst $38
    jp nz, $82ff

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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    adc $ff
    ld c, $fb
    ld [$00ff], sp
    rst $38
    inc b
    rst $38
    nop
    rst $38
    add d
    rst $38
    adc [hl]
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    db $fd
    db $fd
    rst $38
    rst $38
    cp a
    cp a
    cp a
    cp a
    cp c
    cp l
    ld sp, hl
    ld sp, hl
    inc d
    db $eb
    nop
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    adc [hl]
    ld a, a
    rrca
    rst $38
    rla
    rst $38
    cpl
    rst $38
    rst $38
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
    ld a, a
    ld a, a
    rra
    rrca
    rrca
    rlca
    rlca
    rlca
    rlca
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
    rra
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
    cp $ff
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
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    sub b
    rst $38
    inc c
    rst $38
    ld [de], a
    rst $38
    and c
    rst $38
    ld b, e
    rst $38
    inc [hl]
    rst $38
    ld [$04ff], sp
    rst $38
    ld [bc], a
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
    ld a, [de]
    rst $38
    ld hl, $41ff
    rst $38
    add b
    rst $38
    ld bc, $80ff
    rst $38
    ld b, c
    rst $38
    ld h, $ff
    jr @+$01

    db $10
    rst $38
    ld l, $ff
    jp nz, $01ff

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    sbc a
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, b
    or b
    rst $38
    dec b
    rst $38
    inc d
    rst $38
    inc e
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld hl, $10ff
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
    dec e
    rst $38
    ld bc, $81ff
    rst $38
    adc e
    rst $38
    ld a, e
    rst $38
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
    ld a, a
    rst $38
    rra
    jp $c000


    nop
    pop hl
    ret nz

    rst $38
    ld h, b
    ret nz

    ccf
    or b
    ld c, a
    db $fc
    inc bc
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld l, h
    sub e
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    add c
    rst $38
    ldh [rIE], a
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
    cp $ff
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
    ld h, b
    rst $38
    jr nc, @+$01

    ld c, b
    rst $38
    add l
    rst $38
    ld b, $ff
    sbc c
    rst $38
    ld h, b
    rst $38
    ld [hl], c
    rst $38
    sbc b
    rst $38
    inc c
    rst $38
    dec bc
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld [$b0ff], sp
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
    ret nz

    rst $38
    jr nz, @+$01

    jr c, @+$01

    inc b
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
    sub b
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
    rlca
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
    ldh a, [$f0]
    ldh [$e0], a
    add b
    add b
    ldh a, [$f0]
    db $fc
    db $fc
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    rrca
    cp $3e
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $02
    cp $1e
    ld [c], a
    ld a, [hl]
    add [hl]
    cp $0e
    db $fc
    inc a
    inc a
    db $fc
    ld a, b
    ld hl, sp-$10
    ldh a, [rIE]
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    db $ec
    rst $38
    call nz, Call_000_06ff
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    inc b
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
    nop
    rst $38
    inc bc
    rst $38
    inc c
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    ret nz

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

    jr nz, @+$01

    ld h, b
    rst $38
    sub b
    rst $38
    db $10
    rst $38
    ld [$04ff], sp
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
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
    nop
    rst $38
    nop
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
    jr nz, @+$01

    ret nz

    rst $38
    nop
    rst $38
    nop
    rra
    db $fc
    dec de
    db $fc
    ld e, a
    db $fc
    rst $18
    ld hl, sp+$5f
    ld hl, sp+$5f
    ld hl, sp-$45
    ldh a, [$af]
    ldh a, [$7f]
    ldh [$7f], a
    ldh [rPCM34], a
    add sp, $78
    rst $20
    rst $38
    pop bc
    cp a
    ret nz

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
    nop
    rst $38
    nop
    rra
    nop
    inc bc
    nop
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
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
    rst $18
    rst $38
    rst $00
    rst $38
    add c
    rst $38
    ret nz

    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    ld e, $ff
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
    add b
    rst $38
    rst $38
    rst $38
    ld hl, $20ff
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    ld b, b
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
    ld bc, $02ff
    rst $38
    inc c
    rst $38
    db $10
    rst $38
    ld h, b
    rst $38
    sub b
    rst $38
    ld c, $ff
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
    jr nz, @+$01

    ld hl, sp-$01
    inc b
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld [$30ff], sp
    rst $38
    ldh [rIE], a
    add b
    rst $38
    cp a
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
    cp d
    nop
    ld e, a
    nop
    ld a, l
    nop
    db $e3
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [$8f00]
    nop
    nop
    ld b, $00
    ld hl, $0700
    add b
    add a
    ldh [$e3], a
    dec l
    dec l
    rlca
    rst $00
    ld bc, $0121
    ld bc, $8303
    inc bc
    dec bc
    ld b, $1e
    ld b, $56
    inc b
    and h
    inc c
    db $ec
    ld [$1ffa], sp
    rra
    inc bc
    inc bc
    nop
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    and b
    rst $38
    ldh [rIE], a
    ld sp, hl
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
    rlca
    rst $38
    ld bc, $00ff
    rst $38
    pop bc
    rst $38
    ld [hl+], a
    rst $38
    inc d
    rst $38
    ld [$04ff], sp
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    cp $ff
    nop
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    inc c
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    ld b, $ff
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
    add b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    jr @+$01

    inc b
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
    ldh [rIE], a
    db $10
    rst $38
    db $fc
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
    ret nz

    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    inc e
    rst $38
    inc b
    rst $38
    inc b
    nop
    ld bc, $0202
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $00
    rrca
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_02a_7855

    ld a, [de]
    dec de
    inc e
    dec e
    nop
    nop
    ld e, $00
    rra
    jr nz, jr_02a_785c

    ld hl, $2322
    inc h
    dec h
    ld h, $27
    jr z, jr_02a_7879

    nop
    nop
    nop
    nop
    ld a, [hl+]

jr_02a_7855:
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_02a_788d

jr_02a_785c:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    nop
    nop
    nop
    nop
    ld [hl], $15
    scf
    nop
    nop
    nop
    jr c, jr_02a_78a5

    ld a, [hl-]
    dec sp
    inc a
    dec a
    nop
    nop
    nop
    ld a, $15
    ccf
    nop
    nop
    nop

jr_02a_7879:
    nop
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    nop
    nop
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    nop
    nop
    ld c, [hl]

jr_02a_788d:
    ld c, a
    ld d, b
    ld d, c
    nop
    ld c, l
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

jr_02a_78a5:
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    or d
    or e
    dec d
    or h
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    and c
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    xor h
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    and c
    add $c7
    ret z

    ret


    jp z, $cccb

    dec d
    call $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    adc $cf
    ret nc

    nop
    nop
    nop
    pop de
    dec d
    jp nc, $0202

    ld [bc], a
    ld [bc], a
    ld [bc], a
    db $d3
    call nc, RST_00
    nop
    nop
    nop
    nop
    ld [bc], a
    push de
    sub $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    rst $10
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0004
    inc b
    inc b
    inc b
    inc b
    rlca
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0400
    inc b
    rlca
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0704
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    rlca
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0404
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0300
    ld bc, $0101
    ld bc, $0404
    inc b
    ld bc, $0001
    ld bc, $0101
    ld bc, $0202
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0004
    nop
    ld bc, $0141
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc b
    nop
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
    ld [bc], a
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0303
    inc bc
    inc bc
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
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
    ld bc, $0001
    nop
    nop
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    inc b
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld hl, $0101
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
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rrca
    rrca
    rra
    rra
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
    ld sp, hl
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    ld a, h
    cp $f9
    ld sp, hl
    ld h, b
    pop af
    nop
    ldh [rP1], a
    ldh a, [$60]
    nop
    ld [$0000], sp
    ld [$0408], sp
    nop
    ld b, b
    add d
    pop bc
    nop
    add b
    nop
    inc b
    ld b, $04
    inc b
    ld b, $02
    ld [bc], a
    ld [bc], a
    nop
    add b
    nop
    nop
    add b
    ld b, l
    ld b, b
    rlca
    jr nc, jr_02a_7b88

    ld [$0dc6], sp
    add c
    rra
    ld b, $07
    inc b
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld b, b
    ld b, $30
    add d
    sbc h
    pop af
    rst $38

jr_02a_7b68:
    inc de
    ld [hl], a
    ld de, $007f
    nop
    db $10
    db $10
    or h
    ld a, b
    jr nc, jr_02a_7b68

    db $10
    jr c, jr_02a_7bb7

    inc c
    ld [bc], a
    inc h
    inc bc
    rlca
    add c
    add e
    nop
    ret nz

    nop
    nop
    ld bc, $0003
    inc bc
    nop
    db $10

jr_02a_7b88:
    ld [$0000], sp
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
    ld a, a
    nop
    ccf
    nop
    rrca
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
    inc bc
    nop
    rlca
    nop
    rra
    nop
    ccf
    nop
    rra

jr_02a_7bb7:
    nop
    rra
    nop
    rrca
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    nop

Jump_02a_7bc2:
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
    add b
    nop
    add b
    nop
    ret nz

    nop
    pop hl
    ld bc, $03e3
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld a, a
    rst $38

jr_02a_7bed:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rrca
    rst $38
    rst $38

jr_02a_7c05:
    rst $38
    cp $ff
    cp $fe
    ld hl, sp-$03
    ldh a, [$f9]
    ldh [$f0], a
    ret nz

    ret nz

    add b
    add b
    add b
    adc h
    nop
    ld b, h
    ld [bc], a
    ld [hl], b
    nop
    ld [hl], b
    ld b, b
    xor b
    ld h, b
    add [hl]
    db $10
    ld [hl], b
    nop
    ld bc, $0101
    nop
    ld bc, $4120
    jr nz, jr_02a_7bed

    nop
    ldh [rP1], a
    add sp, $38
    ld e, b
    db $10
    ld a, $16
    stop
    nop
    call z, $8600
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld c, b
    add b
    jp nz, Jump_000_0181

    db $10
    ld [bc], a
    ld hl, $0723
    add a
    rrca
    db $10
    ld h, h
    ld e, h
    nop
    dec e
    ld bc, $0102
    nop
    nop
    nop
    db $ec
    ld a, [$00fc]
    ld l, b
    ld b, c
    ld h, d
    ld hl, $be33
    ccf
    ld h, b
    cp $00
    ld bc, $0114
    ld bc, $0000
    inc bc
    ld b, e
    inc bc
    jr nz, jr_02a_7c92

    jr nz, jr_02a_7c05

    inc l
    ld c, a
    inc b
    ld c, $00
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
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_02a_7c92:
    rst $38
    nop
    db $fd
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

jr_02a_7ca1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0701
    rlca
    rra
    rra
    ccf

jr_02a_7caf:
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
    cp $ff

jr_02a_7cbd:
    db $fc
    rst $38
    ld hl, sp-$20
    ldh [$c0], a
    ldh [$80], a
    ret nz

    nop
    ldh [rP1], a
    ld c, b
    ld b, b
    call z, $ce80
    nop
    inc e
    nop
    nop
    nop
    ld c, b
    ld c, $0e
    ld b, $0e
    inc bc
    rlca
    ld b, c
    ld b, c
    jp z, $e6c6

    db $e3
    ld [$0800], sp
    nop
    adc b
    nop
    ldh [rP1], a
    ret nz

    jr nz, jr_02a_7caf

    jr nc, jr_02a_7ced

jr_02a_7ced:
    inc d
    ld bc, $0113
    ld de, $01c1
    ldh [rSB], a
    sub h
    jr nz, jr_02a_7d05

    ld [hl], b
    inc c
    add d
    db $10
    inc bc
    inc bc

Call_02a_7cff:
    and a
    inc b
    ld b, $04
    ld b, $80

jr_02a_7d05:
    ld [bc], a
    xor b
    ld [hl], b
    ld d, b
    ldh a, [$b0]
    ld sp, hl
    jr nz, jr_02a_7caf

    ld bc, $8501
    ld b, c
    ld hl, $41c7
    push bc
    ld bc, $0047
    ld h, c
    and c
    ld h, b
    ld h, b
    nop
    sbc b
    jr jr_02a_7ca1

    db $e4
    sub b
    call nz, $4492
    adc h
    inc e
    ld hl, $068c
    stop
    inc c
    inc c
    add b
    add h
    nop
    ld bc, $0400
    inc b
    ld bc, $4004
    stop
    jr nz, jr_02a_7cbd

    inc c
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
    ld a, a
    nop
    ld a, a
    nop
    ccf
    ld bc, $073f
    rra
    rrca
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

jr_02a_7d5f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

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
    ld [$0400], sp
    ld [$0000], sp
    nop
    nop
    nop
    ld [$0c00], sp
    nop
    ld b, $0a
    add a
    dec b
    add e
    ld bc, $1021
    ld hl, $0130
    sbc b
    nop
    sub b
    nop
    nop
    jr nc, jr_02a_7dab

jr_02a_7dab:
    jr z, @+$12

    and b
    nop
    and h
    ld hl, $4001

jr_02a_7db3:
    jr nz, jr_02a_7dd5

    jr nz, jr_02a_7d5f

    ld [hl], b
    nop
    jr nc, jr_02a_7dbb

jr_02a_7dbb:
    ld bc, $0000
    nop
    nop
    jr z, jr_02a_7de5

    ld h, [hl]
    ld h, d
    stop
    nop
    nop
    nop
    add b
    nop
    ld bc, $0100
    inc d
    jr c, jr_02a_7de1

    or b

jr_02a_7dd2:
    jr @+$1e

    db $10

jr_02a_7dd5:
    sbc b
    nop
    add b
    ld [bc], a
    add b
    nop
    ld [bc], a
    ld bc, $0043
    ld [de], a
    nop

jr_02a_7de1:
    jr jr_02a_7de3

jr_02a_7de3:
    nop
    inc b

jr_02a_7de5:
    nop
    nop
    nop
    jr nz, jr_02a_7e62

    ld [hl+], a
    ld sp, $0300
    ld [$0c0c], sp
    nop
    jr nz, jr_02a_7df4

jr_02a_7df4:
    nop
    ld [hl], b
    dec bc
    nop
    jr nz, jr_02a_7dfa

jr_02a_7dfa:
    ld a, [bc]
    jr jr_02a_7dfd

jr_02a_7dfd:
    db $10
    inc e
    nop
    rst $38
    ld bc, $03ff
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
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    add b
    nop
    jr nz, jr_02a_7e46

    jr nz, @+$32

    jr nz, jr_02a_7e5a

    nop
    ld h, b
    ld [bc], a
    add h
    ld [bc], a
    inc b
    ld h, d
    jr nz, jr_02a_7db3

    jr nz, jr_02a_7e45

    nop
    nop
    inc b
    dec b
    inc c
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

jr_02a_7e45:
    nop

jr_02a_7e46:
    nop
    nop
    nop
    nop
    nop
    add b
    ret nz

    ret nz

    nop
    add b
    jr nz, jr_02a_7dd2

    nop
    db $10
    jr nc, jr_02a_7e6e

    nop
    jr jr_02a_7e59

jr_02a_7e59:
    nop

jr_02a_7e5a:
    nop
    nop
    nop
    nop
    jr nz, jr_02a_7e80

    nop
    nop

jr_02a_7e62:
    add b
    adc b
    ld b, b
    adc b
    nop
    nop
    ld [$00c0], sp
    nop
    db $10
    inc c

jr_02a_7e6e:
    jr nz, jr_02a_7e70

jr_02a_7e70:
    ld bc, $0381
    add e
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    sbc a
    rra
    ccf
    ccf
    ld a, a
    ld a, a

jr_02a_7e80:
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
    ld sp, hl
    ei
    pop hl
    pop hl
    ret nz

    pop bc
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    add b
    jr nz, jr_02a_7ec4

jr_02a_7ec4:
    jr nz, jr_02a_7f26

    nop
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
    ccf
    rst $38
    ld a, a
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
    ldh a, [rIE]
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_02a_7f26:
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    pop hl
    rst $38
    rst $00
    rst $38
    adc a
    rst $38
    rra
    rst $38
    scf
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    or a
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    rrca
    rst $38
    ld c, a
    ld a, a
    rrca
    ld a, a
    ld b, a
    ld a, a
    rlca
    ld a, a
    daa
    ccf
    inc hl
    ccf
    inc bc
    ccf
    inc de
    rra
    dec de
    rra
    ld de, $091f
    rrca
    ld [$0c0f], sp
    rrca
    inc b
    rlca
    inc b
    rlca
    ld b, $07
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
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
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rlca
    rrca
    rrca

Jump_02a_7f92:
    rra
    rra
    ccf
    ccf
    ld a, [hl]
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    db $fd
    rst $38
    rst $30
    cp $c0
    rst $38
    db $fd
    di
    ei
    rst $38
    push af
    rst $38
    call $9dff
    rst $38
    dec e
    rst $38
    ld a, a
    rst $38
    ld a, l
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    ld a, [hl]
    rst $38
    rst $38
    inc bc
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    db $e3
    rst $38
    add [hl]
    rst $38
    ld e, $ff
    ld a, [hl-]
    rst $38
    ld [hl], c
    rst $38
    ld sp, hl
    rst $38
    reti


    rst $38
    xor c
    rst $38
    ret


    rst $38
    ret


    rst $38
    add l
    rst $38
    add l
    rst $38
    add $ff
    and $ff
    ld h, [hl]
    rst $38
    ld h, [hl]
    rst $38
