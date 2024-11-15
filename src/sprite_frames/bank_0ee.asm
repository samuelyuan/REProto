SECTION "ROM Bank $0ee", ROMX[$4000], BANK[$ee]

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    rrca
    rlca
    nop
    nop
    rrca
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
    rrca
    nop
    nop
    db $10
    rra
    nop
    nop
    jr nc, jr_0ee_4087

    nop
    nop
    ld h, a
    ld a, a
    nop
    nop
    ld h, a
    ld a, a
    nop
    nop
    ld h, c
    ld a, [hl]
    nop
    nop
    daa
    ccf
    nop
    nop
    rrca
    rra
    nop
    nop
    rrca
    rra
    nop
    nop
    rrca
    rra
    nop
    nop
    rrca
    rra
    nop
    nop
    rrca
    rra
    nop
    nop
    daa
    ccf
    nop
    nop
    ld h, c
    ld a, [hl]
    nop
    nop
    ld h, a
    ld a, a
    nop
    nop
    ld h, a
    ld a, a
    nop
    nop
    jr nc, jr_0ee_40bf

    nop
    nop
    db $10
    rra
    nop
    nop
    rrca

jr_0ee_4087:
    rrca
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
    rlca
    nop
    nop
    rrca
    rlca
    nop
    nop
    rlca
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

jr_0ee_40bf:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$c0], a
    nop
    nop
    ldh a, [$e0]
    nop
    nop
    ldh a, [$e0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ld hl, sp+$00
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    sub b
    ld a, h
    nop
    nop
    add sp, -$04
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    add sp, -$04
    nop
    nop
    sub b
    ld a, h
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ldh a, [rP1]
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$e0]
    nop
    nop
    ldh a, [$e0]
    nop
    nop
    ldh [$c0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_0ee_417e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [hl], b
    nop
    nop
    db $e3
    rst $38
    ld bc, $c701
    rst $38
    ld bc, $cf01
    rst $38
    ld bc, $df01
    rst $38
    nop
    nop
    rst $28
    rst $38
    nop
    nop
    ld d, a
    ld l, a
    nop
    nop
    jr c, jr_0ee_41cb

    nop
    nop
    jr c, jr_0ee_41cf

    nop
    nop
    inc sp

jr_0ee_41cb:
    ld c, a
    nop
    nop
    ld [hl], e

jr_0ee_41cf:
    rrca
    nop
    nop
    ld h, b
    rra
    nop
    nop
    ld [hl], b
    rra
    nop
    nop
    inc de
    ld a, a
    nop
    nop
    ld [hl], a
    ld a, a
    nop
    nop
    ld [hl], a
    ld a, a
    nop
    nop
    ld a, a
    ld [hl], a
    nop
    nop
    ccf
    scf
    nop
    nop
    rra
    rlca
    nop
    nop
    ccf
    daa
    nop
    nop
    ccf
    scf
    nop
    nop
    rra
    ccf
    nop
    nop
    jr c, jr_0ee_421f

    nop
    nop
    jr z, jr_0ee_4223

    nop
    nop
    scf
    rrca
    nop
    nop
    ccf
    rlca
    nop
    nop
    rra
    daa
    nop
    nop
    dec bc
    rla
    nop
    nop
    inc bc
    rrca
    nop
    nop
    ld bc, $0007
    nop
    nop

jr_0ee_421f:
    nop
    nop
    nop
    nop

jr_0ee_4223:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    db $fc
    nop
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    ld [$00fe], sp
    nop
    call nz, Call_000_003e
    nop
    db $f4
    cp $00
    nop
    db $fc
    cp $00
    nop
    db $fc
    cp $00
    nop
    db $fc
    cp $00
    nop
    db $fc
    cp $00
    nop
    db $fc
    cp $00
    nop
    ld hl, sp-$02
    nop
    nop
    cp $3e
    nop
    nop
    cp $fe
    nop
    nop
    nop
    db $fc
    nop
    nop
    nop
    ld hl, sp+$00
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rra
    nop
    nop
    nop
    ccf
    nop
    nop
    nop
    ccf
    nop
    nop
    rlca
    ccf
    nop
    nop
    rlca
    ccf
    nop
    nop
    ld bc, $003e
    nop
    rlca
    dec sp
    nop
    nop
    dec c
    rla
    nop
    nop
    rlca
    dec e
    nop
    nop
    rrca
    dec d
    nop
    nop
    rlca
    dec e
    nop
    nop
    dec c
    rla
    nop
    nop
    rlca
    dec de
    nop
    nop
    ld bc, $001e
    nop
    rst $00
    rra
    nop
    nop
    ld b, a
    rst $18
    nop
    ld bc, $efc0
    ld bc, $a001
    rst $18
    ld bc, $6f01
    sbc a
    nop
    nop
    rst $28
    rst $18
    nop
    nop
    cpl
    ld e, a
    nop
    nop
    rlca
    ccf
    nop
    nop
    rlca
    rrca
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
    ret nz

    ret nz

    nop
    nop
    ldh [$f8], a
    nop
    nop
    ld a, [$00e6]
    nop
    rst $38
    di
    nop
    nop
    rst $38
    rst $30
    nop
    nop
    rst $30
    rst $38
    nop
    nop
    ld [bc], a
    cp $00
    nop
    nop
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    sub b
    ld a, h
    nop
    nop
    add sp, -$04
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    ld hl, sp-$01
    nop
    nop
    ld hl, sp-$01
    ret nz

    ret nz

    add sp, -$01
    ldh [$e0], a
    sub b
    ld a, a
    ldh [$e0], a
    db $fc
    rst $38
    ldh [$e0], a
    db $fc
    rst $38
    ret nz

    ret nz

    nop
    cp $00
    nop
    nop
    ld hl, sp+$00
    nop
    ldh a, [$f0]
    nop
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
    inc bc
    inc bc
    nop
    nop
    rlca
    rlca
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
    rrca
    nop
    nop
    nop
    rrca
    nop
    nop
    nop
    rrca
    nop
    nop
    rlca
    rra
    nop
    nop
    rlca
    rra
    nop
    nop
    ld bc, $001e
    nop
    rlca
    dec de
    nop
    nop
    dec c
    rla
    nop
    nop
    rlca
    dec e
    nop
    nop
    rrca
    dec d
    nop
    nop
    rlca
    dec e
    nop
    nop
    dec c
    scf
    nop
    nop
    rlca
    dec sp
    nop
    nop
    ld bc, $003e
    nop
    rlca
    ccf
    nop
    nop
    rlca
    ccf
    nop
    nop
    nop
    rra
    nop
    nop
    nop
    rra
    nop
    nop
    rrca
    rra
    nop
    nop
    rrca
    rra
    nop
    nop
    rrca
    rra
    nop
    nop
    rlca
    rrca
    nop
    nop
    rlca
    rrca
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
    ret nz

    ldh [rP1], a
    nop
    ldh [$f0], a
    nop
    nop
    ldh [$f0], a
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    nop
    db $fc
    nop
    nop
    nop
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    sub b
    ld a, h
    nop
    nop
    add sp, -$04
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    ld hl, sp-$02
    nop
    nop
    ld sp, hl
    rst $38
    nop
    nop
    jp hl


    rst $38
    add b
    add b
    sub c
    ld a, a
    add b
    add b
    db $fd
    rst $38
    add b
    add b
    db $fd
    rst $38
    nop
    nop
    nop
    db $fc
    nop
    nop
    nop
    ldh a, [rP1]
    nop
    ldh a, [$f0]
    nop
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
    inc c
    inc a
    nop
    nop
    ld a, $fe
    nop
    ld bc, $7fbf
    inc bc
    inc bc
    cp a
    ld a, a
    dec b
    ld b, $bf
    ld a, a
    ld b, $07
    cp [hl]
    ld a, a
    inc bc
    rlca
    jr nc, @+$01

    ld bc, $4003
    ld a, a
    inc bc
    nop
    ld b, a
    ld a, a
    nop
    nop
    ld e, a
    ld a, a
    nop
    nop
    ld d, [hl]
    ld a, c
    nop
    nop
    ld e, a
    ld l, a
    nop
    nop
    scf
    rra
    nop
    nop
    rra
    scf
    nop
    nop
    ccf
    rla
    nop
    nop
    rra
    scf
    nop
    nop
    scf
    rra
    ld bc, $df01
    rst $28
    inc bc
    inc bc
    and [hl]
    ld sp, hl
    dec b
    rlca
    and e
    rst $38
    dec b
    rlca
    sub e
    rst $38
    ld b, $07
    sub b
    rst $38
    inc bc
    inc bc
    ret z

    rst $38
    nop
    nop
    ld [$003f], sp
    nop
    rlca
    rlca
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
    add b
    add b
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
    ld d, b
    ld hl, sp+$00
    nop
    ld [hl], e
    rst $38
    add b
    add b
    pop af
    rst $38
    ret nz

    ret nz

    pop de
    rst $38
    ret nz

    ret nz

    ld d, c
    rst $38
    ret nz

    ret nz

    xor c
    rst $38
    ret nz

    ret nz

    jp hl


    rst $38
    ret nz

    ret nz

    db $eb
    rst $38
    add b
    add b
    add sp, -$08
    nop
    nop
    add sp, -$08
    nop
    nop
    add sp, -$08
    nop
    nop
    xor b
    ld hl, sp+$00
    nop
    ld a, b
    ld hl, sp+$00
    nop
    db $f4
    db $fc
    nop
    nop
    call nz, Call_000_00fc
    nop
    rlca
    rst $38
    nop
    nop
    rrca
    rst $38
    add b
    add b
    ld a, l
    rst $38
    add b
    add b
    rst $38
    db $fd
    add b
    add b
    cp $fd
    add b
    add b
    cp $fd
    nop
    nop
    cp $fc
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_0ee_47a9

jr_0ee_47a9:
    ld bc, $fc3c
    ld bc, $fe02
    ld a, [hl]
    inc bc
    nop
    rst $38
    ld a, a
    rrca
    inc c
    rst $38
    ld a, a
    ccf
    inc a
    rst $38
    ld a, a
    ld e, l
    ld l, [hl]
    ld hl, sp+$7f
    ld l, [hl]
    ld a, [hl]
    ld b, b
    ld a, a
    inc a
    ld a, h
    rlca
    ld a, a
    inc e
    ld a, h
    rra
    ld a, a
    jr nc, jr_0ee_47d6

    ld d, $79
    nop
    nop
    rra
    ld l, a
    nop
    nop

jr_0ee_47d6:
    scf
    ld e, a
    nop
    nop
    rra
    ld [hl], a
    nop
    nop
    ccf
    ld d, a
    nop
    nop
    rra
    ld [hl], a
    nop
    nop
    scf
    ld e, a
    rrca
    rrca
    rra
    rst $28
    ld e, $1f
    ld h, $f9
    ld l, $3f
    inc hl
    rst $38
    ld l, $3f
    inc sp
    rst $38
    ld [hl], $3f
    jr nc, @+$01

    rra
    rra
    jr c, @+$01

    nop
    nop
    jr jr_0ee_4883

    nop
    nop
    dec b
    rlca
    nop
    nop
    ld bc, $0001
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
    ld b, b
    ret nz

    nop
    nop
    ld c, b
    rst $38
    nop
    add b
    ld a, h
    rst $38
    ld a, h

jr_0ee_4883:
    db $fc
    db $f4
    rst $38
    ld a, $fe
    call z, Call_000_3eff
    cp $4c
    rst $38
    ld a, $fe
    and h
    rst $38
    ld a, $fe
    db $e4
    rst $38
    ld a, $fe
    db $e4
    rst $38
    ld a, h
    db $fc
    db $e4
    db $fc
    nop
    nop
    ldh [$fc], a
    nop
    nop
    ldh [$fc], a
    nop
    nop
    xor h
    db $fc
    nop
    nop
    ld a, h
    db $fc
    nop
    nop
    ldh a, [$fc]
    nop
    nop

jr_0ee_48b4:
    ret nz

    db $fc
    nop
    nop
    nop
    db $fc
    ldh [$e0], a
    dec b
    db $fd
    ldh a, [$f0]
    inc a
    rst $38
    jr nc, jr_0ee_48b4

    db $fd
    cp $f0
    jr nc, @-$01

    cp $d0
    jr nc, @-$01

    cp $c0
    jr nz, @-$01

    cp $c0
    nop
    ld a, e
    ld a, h
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
    inc bc
    inc bc
    nop
    nop
    rlca
    rrca
    nop
    nop
    rlca
    ccf
    nop
    nop
    cpl
    ld e, a
    nop
    nop
    rst $28
    rst $18
    ld bc, $6f01
    sbc a
    ld bc, $a001
    rst $18
    nop
    ld bc, $efc0
    nop
    nop
    ld b, a
    rst $18
    nop
    nop
    rst $00
    rra
    nop
    nop
    ld bc, $001e
    nop
    rlca
    dec de
    nop
    nop
    dec c
    rla
    nop
    nop
    rlca
    dec e
    nop
    nop
    rrca
    dec d
    nop
    nop
    rlca
    dec e
    nop
    nop
    dec c
    rla
    nop
    nop
    rlca
    dec sp
    nop
    nop
    ld bc, $003e
    nop
    rlca
    ccf
    nop
    nop
    rlca
    ccf
    nop
    nop
    nop
    ccf
    nop
    nop
    nop
    ccf
    nop
    nop
    rrca
    rra
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
    rlca
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
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    cp $00
    nop
    db $fc
    rst $38
    ret nz

    ret nz

    db $fc
    rst $38
    ldh [$e0], a
    sub b
    ld a, a
    ldh [$e0], a
    add sp, -$01
    ldh [$e0], a
    ld hl, sp-$01
    ret nz

    ret nz

    ld hl, sp-$01
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    add sp, -$04
    nop
    nop
    sub b
    ld a, h
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    nop
    db $fc
    nop
    nop
    ld [bc], a
    cp $00
    nop
    rst $30
    rst $38
    nop
    nop
    rst $38
    rst $30
    nop
    nop
    rst $38
    di
    nop
    nop
    ld a, [$00e6]
    nop
    ldh [$f8], a
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
    inc bc
    inc bc
    nop
    nop
    rlca
    rrca
    nop
    nop
    rlca
    rrca
    nop
    nop
    rrca
    rra
    nop
    nop
    rrca
    rra
    nop
    nop
    rrca
    rra
    nop
    nop
    nop
    rra
    nop
    nop
    nop
    rra
    nop
    nop
    rlca
    ccf
    nop
    nop
    rlca
    ccf
    nop
    nop
    ld bc, $003e
    nop
    rlca
    dec sp
    nop
    nop
    dec c
    scf
    nop
    nop
    rlca
    dec e
    nop
    nop
    rrca
    dec d
    nop
    nop
    rlca
    dec e
    nop
    nop
    dec c
    rla
    nop
    nop
    rlca
    dec de
    nop
    nop
    ld bc, $001e
    nop
    rlca
    rra
    nop
    nop
    rlca
    rra
    nop
    nop
    nop
    rrca
    nop
    nop
    nop
    rrca
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
    rrca
    nop
    nop
    rlca
    rlca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    db $fc
    nop
    nop
    db $fd
    rst $38
    nop
    nop
    db $fd
    rst $38
    add b
    add b
    sub c
    ld a, a
    add b
    add b
    jp hl


    rst $38
    add b
    add b
    ld sp, hl
    rst $38
    nop
    nop
    ld hl, sp-$02
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    add sp, -$04
    nop
    nop
    sub b
    ld a, h
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    nop
    db $fc
    nop
    nop
    nop
    db $fc
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    ldh [$f0], a
    nop
    nop
    ldh [$f0], a
    nop
    nop
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rlca
    nop
    nop
    ld [$033f], sp
    inc bc
    ret z

    rst $38
    ld b, $07
    sub b
    rst $38
    dec b
    rlca
    sub e
    rst $38
    dec b
    rlca
    and e
    rst $38
    inc bc
    inc bc
    and [hl]
    ld sp, hl
    ld bc, $df01
    rst $28
    nop
    nop
    scf
    rra
    nop
    nop
    rra
    scf
    nop
    nop
    ccf
    rla
    nop
    nop
    rra
    scf
    nop
    nop
    scf
    rra
    nop
    nop
    ld e, a
    ld l, a
    nop
    nop
    ld d, [hl]
    ld a, c
    nop
    nop
    ld e, a
    ld a, a
    inc bc
    nop
    ld b, a
    ld a, a
    ld bc, $4003
    ld a, a
    inc bc
    rlca
    jr nc, @+$01

    ld b, $07
    cp [hl]
    ld a, a
    dec b
    ld b, $bf
    ld a, a
    inc bc
    inc bc
    cp a
    ld a, a
    nop
    ld bc, $7fbf
    nop
    nop
    ld a, $fe
    nop
    nop
    inc c
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    cp $fc
    nop
    nop
    cp $fd
    nop
    nop
    cp $fd
    add b
    add b
    rst $38
    db $fd
    add b
    add b
    ld a, l
    rst $38
    add b
    add b
    rrca
    rst $38
    add b
    add b
    rlca
    rst $38
    nop
    nop
    call nz, Call_000_00fc
    nop
    db $f4
    db $fc
    nop
    nop
    ld a, b
    ld hl, sp+$00
    nop
    xor b
    ld hl, sp+$00
    nop
    add sp, -$08
    nop
    nop
    add sp, -$08
    nop
    nop
    add sp, -$08
    nop
    nop
    db $eb
    rst $38
    add b
    add b
    jp hl


    rst $38
    ret nz

    ret nz

    xor c
    rst $38
    ret nz

    ret nz

    ld d, c
    rst $38
    ret nz

    ret nz

    pop de
    rst $38
    ret nz

    ret nz

    pop af
    rst $38
    ret nz

    ret nz

    ld [hl], e
    rst $38
    add b
    add b
    ld d, b
    ld hl, sp+$00
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0001
    nop
    dec b
    rlca
    nop
    nop
    jr jr_0ee_4e3f

    rra
    rra
    jr c, @+$01

    ld [hl], $3f
    jr nc, @+$01

    ld l, $3f
    inc sp
    rst $38
    ld l, $3f
    inc hl
    rst $38
    ld e, $1f
    ld h, $f9
    rrca
    rrca
    rra
    rst $28
    nop
    nop
    scf
    ld e, a
    nop
    nop
    rra
    ld [hl], a
    nop
    nop
    ccf
    ld d, a
    nop
    nop
    rra
    ld [hl], a
    nop
    nop
    scf
    ld e, a
    nop
    nop
    rra
    ld l, a
    jr nc, jr_0ee_4dfa

    ld d, $79
    inc e
    ld a, h
    rra
    ld a, a
    inc a
    ld a, h

jr_0ee_4dfa:
    rlca
    ld a, a
    ld l, [hl]
    ld a, [hl]
    ld b, b
    ld a, a
    ld e, l
    ld l, [hl]
    ld hl, sp+$7f
    ccf
    inc a
    rst $38
    ld a, a
    rrca
    inc c
    rst $38
    ld a, a
    inc bc
    nop
    rst $38
    ld a, a
    ld bc, $fe02
    ld a, [hl]
    nop
    ld bc, $fc3c
    nop
    nop
    nop
    jr nc, jr_0ee_4e1d

jr_0ee_4e1d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ee_4e3f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, h
    add b
    nop
    db $fd
    cp $c0
    nop

jr_0ee_4e70:
    db $fd
    cp $c0
    jr nz, @-$01

    cp $d0
    jr nc, @-$01

    cp $f0
    jr nc, jr_0ee_4eb9

    rst $38
    jr nc, jr_0ee_4e70

    dec b
    db $fd
    ldh a, [$f0]
    nop
    db $fc
    ldh [$e0], a
    ret nz

    db $fc
    nop
    nop
    ldh a, [$fc]
    nop
    nop
    ld a, h
    db $fc
    nop
    nop
    xor h
    db $fc
    nop
    nop
    ldh [$fc], a
    nop
    nop
    ldh [$fc], a
    nop
    nop
    db $e4
    db $fc
    nop
    nop
    db $e4
    rst $38
    ld a, h
    db $fc
    db $e4
    rst $38
    ld a, $fe
    and h
    rst $38
    ld a, $fe
    ld c, h
    rst $38
    ld a, $fe
    call z, Call_000_3eff
    cp $f4

jr_0ee_4eb9:
    rst $38
    ld a, $fe
    ld a, h
    rst $38
    ld a, h
    db $fc
    ld c, b
    rst $38
    nop
    add b
    ld b, b
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
    ld a, h
    cp h
    nop
    ld bc, $7efe
    ld bc, $7e02
    cp $03
    inc b
    rst $38
    rst $38
    rrca
    ld [$ffff], sp
    ld e, $39
    rst $38
    rst $38
    inc a
    ld e, a
    nop
    rst $38
    ld e, h
    inc a
    nop
    rst $38
    add hl, bc
    add hl, de
    rst $38
    rst $38
    ld de, $ff01
    rst $38
    ld bc, $8400
    ld a, a
    rlca
    rlca
    ld a, [c]
    rst $28
    rrca
    rrca
    ld a, [$0ff7]
    rrca
    ld a, [$0ff7]
    rrca
    ld a, [$0ff7]
    rrca
    ld a, [$0ff7]
    rrca
    ld a, [$07f7]
    rlca
    ld a, [c]
    rst $28
    ld sp, $843e
    ld a, a
    ld h, c
    ld a, a
    rst $38
    rst $38
    ld h, c
    ld a, a
    rst $38
    rst $38
    ld h, b
    ld a, a
    nop
    rst $38
    ld h, b
    ld a, a
    nop
    rst $38
    jr nc, jr_0ee_4fd1

    rst $38
    rst $38
    jr jr_0ee_4fb5

    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    inc a
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
    nop
    nop
    nop
    nop

jr_0ee_4fb5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ee_4fd1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
    ret nz

    ldh a, [$f0]
    ld b, b
    rst $38
    db $fc
    db $fc
    jr nz, @+$01

    ld a, [hl]
    cp $20
    rst $38

jr_0ee_501e:
    ld a, [hl]
    cp $20
    rst $38

jr_0ee_5022:
    ld a, [hl]
    cp $20
    rst $38

jr_0ee_5026:
    inc e
    sbc h
    jr nz, @+$01

jr_0ee_502a:
    nop
    nop
    jr nz, jr_0ee_501e

jr_0ee_502e:
    nop
    nop
    jr nz, jr_0ee_5022

jr_0ee_5032:
    nop
    nop
    jr nz, jr_0ee_5026

    nop
    nop
    jr nz, jr_0ee_502a

    nop
    nop
    jr nz, jr_0ee_502e

    nop
    nop
    jr nz, jr_0ee_5032

    nop
    nop
    ld b, b
    ldh [rP1], a
    nop
    ld b, b
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], e
    adc h
    nop
    ld bc, $0bf4
    ld bc, $d301
    db $ec
    inc bc
    inc bc
    db $e3
    db $fc
    rlca
    rlca
    di
    db $fc
    inc c
    rrca
    ld [$0ffb], sp
    inc c
    ret c

    dec hl
    inc c
    rrca
    ld [$0fff], sp
    rrca
    pop af
    rst $30
    dec b
    ld b, $81
    ld b, a
    rlca
    rlca
    inc bc
    adc a
    rlca
    rlca
    add a
    adc e
    rlca
    rlca
    add c
    adc a
    ld b, $07
    add [hl]
    add hl, de
    dec b
    ld b, $83
    ld e, $07
    nop
    and l
    ld a, d
    rlca
    nop
    and [hl]
    ld a, c
    ccf
    jr c, jr_0ee_5136

    db $fc
    ld a, a
    ld a, b
    ld c, h
    rst $38
    ld a, e
    ld a, h
    rst $08
    rst $38
    ld a, e
    ld a, h
    jp $3bff


    inc a
    ldh [rIE], a
    ld bc, $fc02
    rst $38
    nop
    ld bc, $ffff
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, a
    ld a, a
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

jr_0ee_5136:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp h
    ld a, h
    nop
    nop
    ld a, [hl]
    cp $00
    nop
    cp $fe
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
    ld e, $ff
    ret nz

    ret nz

jr_0ee_5184:
    ld [bc], a
    rst $38
    ld [hl], b
    ldh a, [rP1]
    rst $38
    jr c, jr_0ee_5184

jr_0ee_518c:
    ldh [rIE], a
    jr c, @-$06

    ld hl, sp-$01
    jr c, jr_0ee_518c

    cp $ff
    jr nc, @-$0e

    cp $ff
    ld h, b
    ldh [$fc], a
    rst $38
    nop
    nop
    db $fc
    cp $00
    nop
    db $fc
    db $fc
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    cp b
    db $fc
    nop
    nop
    ldh a, [$3c]

jr_0ee_51b2:
    nop
    nop
    ret nz

    jr c, jr_0ee_51b7

jr_0ee_51b7:
    nop
    ldh [$f8], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    jr nc, jr_0ee_51b2

    nop
    nop
    nop
    ldh [rP1], a
    nop
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], e
    adc h
    nop
    ld bc, $03fc
    ld c, $0f
    ei
    inc b
    ccf
    ccf
    ld a, e
    add h
    ccf
    ccf
    or e
    call z, Call_0ee_7f40
    ld b, b
    jp Jump_0ee_417e


    ret nz

    ld b, e
    ld b, b
    ld a, a
    ld b, b
    rst $00
    ld a, a
    ld a, a
    add c
    add a
    dec bc
    inc c
    ld bc, $0e87
    rrca
    inc bc
    rrca
    rrca
    rrca
    rlca
    rrca
    rrca
    rrca
    rlca
    rrca
    dec c
    ld c, $03
    rra
    dec bc
    inc c
    rlca
    dec de
    rrca
    nop
    inc hl
    ld a, a
    rrca
    nop
    dec h
    ei
    ld a, $31
    ld b, e
    db $fc
    ld [hl], l
    ld a, d
    ld c, h
    rst $38
    ld [hl], a
    ld a, b
    rst $08
    rst $38
    ld a, e
    ld a, h
    jp $3bff


    inc a
    ldh [rIE], a
    ld bc, $fc02
    rst $38
    nop
    ld bc, $ffff
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, a
    ld a, a
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
    cp h
    ld a, h
    nop
    nop
    ld a, [hl]
    cp $00
    nop
    cp $fe
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
    ld e, $ff
    ret nz

    ret nz

jr_0ee_5304:
    ld [bc], a
    rst $38
    ld [hl], b
    ldh a, [rP1]
    rst $38
    jr c, jr_0ee_5304

jr_0ee_530c:
    ldh [rIE], a
    jr c, @-$06

    ld hl, sp-$01
    jr c, jr_0ee_530c

    cp $ff
    jr nc, @-$0e

    cp $ff
    ld h, b
    ldh [$f8], a
    rst $38
    nop
    nop
    ld hl, sp-$02
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    or b
    ld a, h

jr_0ee_5332:
    nop
    nop
    ret nz

    jr c, jr_0ee_5337

jr_0ee_5337:
    nop
    ldh [$f8], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    jr nc, jr_0ee_5332

    nop
    nop
    nop
    ldh [rP1], a
    nop
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, a
    sbc b
    nop
    ld bc, $07f8
    rrca
    rrca
    rst $30
    ld [$1f1f], sp
    rst $30
    ld [$ffff], sp
    ld h, a
    sbc b
    ld bc, $00ff
    inc bc
    ei
    dec b
    nop
    inc bc
    ld bc, $00ff
    rlca
    cp $fe
    ld bc, $2c07
    ld [hl-], a
    ld bc, $3807
    inc a
    rlca
    rrca
    inc a
    inc a
    rrca
    rrca
    inc a
    inc a
    rrca
    rrca
    inc [hl]
    jr c, jr_0ee_53f2

    rra
    inc l
    jr nc, jr_0ee_53f6

    rra
    inc e
    ld [bc], a
    cpl
    ld a, a
    ld e, $00
    cpl
    rst $30
    ld l, $31

jr_0ee_53f2:
    ld b, a
    ei
    ld a, l
    ld [hl], d

jr_0ee_53f6:
    ld c, l
    cp $77
    ld a, b
    rst $08
    rst $38
    ld a, e
    ld a, h
    jp $3bff


    inc a
    ldh [rIE], a
    ld bc, $fc02
    rst $38
    nop
    ld bc, $ffff
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, a
    ld a, a
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
    cp h
    ld a, h
    nop
    nop
    ld a, [hl]
    cp $00
    nop
    cp $fe
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
    ld e, $ff
    ret nz

    ret nz

jr_0ee_5484:
    ld [bc], a
    rst $38
    ld [hl], b
    ldh a, [rP1]
    rst $38
    jr c, jr_0ee_5484

jr_0ee_548c:
    ldh [rIE], a
    jr c, @-$06

    ld hl, sp-$01
    jr c, jr_0ee_548c

    cp $ff
    jr nc, @-$0e

    xor $ff
    ld h, b
    ldh [$e0], a
    rst $38
    nop
    nop
    ldh [$fe], a
    nop
    nop
    ldh [$fc], a
    nop
    nop
    ldh [$fc], a
    nop
    nop
    ldh [$fc], a
    nop
    nop
    ret nz

    db $fc

jr_0ee_54b2:
    nop
    nop
    add b
    ld a, b
    nop
    nop
    ldh [$f8], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    jr nc, jr_0ee_54b2

    nop
    nop
    nop
    ldh [rP1], a
    nop
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, $07
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
    ld bc, $0000
    ld bc, $0002
    nop
    inc bc
    inc b
    nop
    nop
    rrca
    ld [$0000], sp
    ld e, $19
    nop
    nop
    ld e, $1f
    nop
    nop
    inc a
    rra
    nop
    nop
    inc a
    rra
    nop
    nop
    jr jr_0ee_5567

    nop
    nop
    nop

jr_0ee_5567:
    inc bc
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    inc bc
    nop
    nop
    ld bc, $0003
    nop
    inc bc
    inc bc
    nop
    nop
    rlca
    rlca
    nop
    nop
    rla
    rra
    nop
    nop
    ccf
    scf
    nop
    nop
    ccf
    scf
    nop
    nop
    scf
    ccf
    nop
    nop
    scf
    ccf
    nop
    nop
    inc sp
    ccf
    nop
    nop
    rra
    rra
    ld bc, $fe00
    ld [hl], c
    ld bc, $fe00
    ld [hl], c
    ld bc, $fe00
    ld [hl], c
    nop
    ld bc, $fc63
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $fc
    db $fc
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld h, e
    rst $38
    nop
    nop
    pop bc
    rst $38
    nop
    nop
    nop
    ld a, a
    nop
    nop
    ld a, [hl]
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld bc, $00ff
    nop
    ld b, b
    rst $38
    nop
    nop
    ld a, [hl]
    rst $38
    nop
    add b
    ccf
    rst $38
    add b
    add b
    inc bc
    rst $38
    add b
    add b
    ld bc, $00ff
    add b
    ld sp, hl
    rst $38
    nop
    add b
    db $ed
    rra
    nop
    add b
    and $ff
    nop
    nop
    cp $f7
    nop
    nop
    cp $f7
    nop
    nop
    cp $f7
    nop
    nop
    db $f4
    rst $38
    nop
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    ldh [$fc], a
    nop
    nop
    call nz, Call_000_00fc
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld [hl], b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, $07
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
    inc bc
    nop
    nop
    dec de
    inc e
    nop
    nop
    rra
    jr jr_0ee_56d1

jr_0ee_56d1:
    nop
    ccf
    inc e
    nop
    nop
    ld a, $1f
    nop
    nop
    inc e
    inc c
    nop
    nop
    ld [$0001], sp
    nop
    nop
    ld bc, $0000
    nop
    inc bc
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    inc bc
    nop
    nop
    ld bc, $0003
    nop
    inc bc
    inc bc
    nop
    nop
    rlca
    rlca
    nop
    nop
    rla
    rra
    nop
    nop
    ccf
    scf
    nop
    nop
    ccf
    scf
    nop
    nop
    scf
    ccf
    ld bc, $3700
    ccf
    ld bc, $f300
    ld a, a
    ld bc, $df00
    ld a, a
    nop
    ld bc, $71fe
    nop
    nop
    ld a, [hl]
    pop af
    nop
    nop
    inc hl
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $fc
    db $fc
    nop
    nop
    ld a, [hl]
    cp $00
    nop
    db $e3
    rst $38
    nop
    nop
    ld bc, $007f
    nop
    inc a
    rst $38
    nop
    nop
    cp $ff
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    inc bc
    rst $38
    nop
    nop
    ld b, b
    rst $38
    nop
    nop
    ld a, [hl]
    rst $38
    nop
    add b
    ccf
    rst $38
    add b
    add b
    inc bc
    rst $38
    add b
    add b
    ld bc, $00ff
    add b
    ld sp, hl
    rst $38
    nop
    add b
    db $ed
    rra
    nop
    add b
    and $ff
    nop
    nop
    cp $f7
    nop
    nop
    cp $f7
    nop
    nop
    cp $f7
    nop
    nop
    db $f4
    rst $38
    nop
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    ldh [$fc], a
    nop
    nop
    call nz, Call_000_00fc
    nop
    db $fc
    db $fc
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld [hl], b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    cp $00
    nop
    ccf
    cp $00
    nop
    rst $18
    ld a, $3f
    ccf
    cp $ff
    ccf
    jr nc, @+$12

    rst $38
    jr nc, @+$41

    db $10
    rst $38
    ccf
    ccf
    ld hl, sp-$01
    inc c
    dec bc
    ld bc, $0b87
    inc c
    ld bc, $0e87
    rrca
    nop
    rrca
    rrca
    rrca
    inc bc
    dec c
    rrca
    rrca
    ld b, $0b
    dec c
    ld c, $03
    ld e, $0b
    inc c
    rlca
    ld a, [de]
    rrca
    nop
    inc hl
    ld a, [hl]
    rrca
    nop
    ld h, $fb
    ld a, $31
    ld b, e
    db $fd
    ld [hl], l
    ld a, d
    ld c, h
    rst $38
    ld [hl], a
    ld a, b
    rst $08
    rst $38
    ld a, e
    ld a, h
    jp $3bff


    inc a
    ldh [rIE], a
    ld bc, $fc02
    rst $38
    nop
    ld bc, $ffff
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, a
    ld a, a
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
    sbc $3e
    nop
    nop
    cp a
    ld a, a
    nop
    nop
    rst $38
    ld a, a
    nop
    nop
    rst $38
    ld a, a
    nop
    nop
    ld a, a
    rst $38
    add b
    add b
    rra
    rst $38
    ret nz

    ret nz

jr_0ee_5904:
    ld [bc], a
    rst $38
    ld [hl], b
    ldh a, [rP1]
    rst $38
    jr c, jr_0ee_5904

jr_0ee_590c:
    ldh [rIE], a
    jr c, @-$06

    ld hl, sp-$01
    jr c, jr_0ee_590c

    adc $3f
    jr nc, @-$0e

    or $ff
    ld h, b
    ldh [$f8], a
    rst $38
    nop
    nop
    ld hl, sp-$02
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    ldh a, [$fc]

jr_0ee_5932:
    nop
    nop
    ret nz

    jr c, jr_0ee_5937

jr_0ee_5937:
    nop
    ldh [$f8], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    jr nc, jr_0ee_5932

    nop
    nop
    nop
    ldh [rP1], a
    nop
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    rst $38
    db $fc
    nop
    inc bc
    rst $38
    db $fc
    inc bc
    nop
    ld a, a
    db $fc
    rst $38
    rst $38
    cp $fd
    rst $38
    nop
    db $10
    rst $38
    nop
    rst $38
    db $10
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    jr nc, jr_0ee_59fc

    ld bc, $2c07
    ld [hl-], a
    ld bc, $3807
    inc a
    nop
    rrca
    inc a
    inc a
    inc bc
    rrca
    ld e, $1e
    rlca
    rrca
    ld a, [de]
    inc e
    rlca
    rra
    ld d, $18
    rlca
    rra
    rrca
    nop
    daa
    ld a, a
    rrca
    nop
    daa
    rst $38
    ld a, $31
    ld b, e
    rst $38
    ld [hl], l
    ld a, d
    ld c, h
    rst $38
    ld [hl], a
    ld a, b
    rst $08
    rst $38

jr_0ee_59fc:
    ld a, e
    ld a, h
    jp $3bff


    inc a
    ldh [rIE], a
    ld bc, $fc02
    rst $38
    nop
    ld bc, $ffff
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, a
    ld a, a
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
    cp h
    ld a, h
    nop
    nop
    ld a, [hl]
    cp $00
    nop
    cp $fe
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
    ld e, $ff
    ret nz

    ret nz

jr_0ee_5a84:
    ld [bc], a
    rst $38
    ld [hl], b
    ldh a, [rP1]
    rst $38
    jr c, jr_0ee_5a84

jr_0ee_5a8c:
    ldh [rIE], a
    jr c, @-$06

    ld hl, sp-$01
    jr c, jr_0ee_5a8c

    sbc $3f
    jr nc, @-$0e

    or $ff
    ld h, b
    ldh [$f8], a
    rst $38
    nop
    nop
    ld hl, sp-$02
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    ldh a, [$fc]

jr_0ee_5ab2:
    nop
    nop
    ret nz

    jr c, jr_0ee_5ab7

jr_0ee_5ab7:
    nop
    ldh [$f8], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    jr nc, jr_0ee_5ab2

    nop
    nop
    nop
    ldh [rP1], a
    nop
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    rst $38
    db $fc
    nop
    inc bc
    rst $38
    db $fc
    inc bc
    nop
    ld a, a
    db $fc
    rst $38
    rst $38
    cp $fd
    rst $38
    nop
    db $10
    rst $38
    nop
    rst $38
    db $10
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    jr nc, jr_0ee_5b7c

    ld bc, $2c07
    ld [hl-], a
    ld bc, $3807
    inc a
    nop
    rrca
    inc a
    inc a
    inc bc
    rrca
    ld e, $1e
    rlca
    rrca
    ld a, [de]
    inc e
    rlca
    rra
    ld d, $18
    rlca
    rra
    rrca
    nop
    daa
    ld a, a
    rrca
    nop
    daa
    rst $38
    ld a, $31
    ld b, e
    rst $38
    ld [hl], l
    ld a, d
    ld c, h
    rst $38
    ld [hl], a
    ld a, b
    rst $08
    rst $38

jr_0ee_5b7c:
    ld a, e
    ld a, h
    jp $3bff


    inc a
    ldh [rIE], a
    ld bc, $fc02
    rst $38
    nop
    ld bc, $ffff
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, a
    ld a, a
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
    cp h
    ld a, h
    nop
    nop
    ld a, [hl]
    cp $00
    nop
    cp $fe
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
    ld e, $ff
    ret nz

    ret nz

jr_0ee_5c04:
    ld [bc], a
    rst $38
    ld [hl], b
    ldh a, [rP1]
    rst $38
    jr c, jr_0ee_5c04

jr_0ee_5c0c:
    ldh [rIE], a
    jr c, @-$06

    ld hl, sp-$01
    jr c, jr_0ee_5c0c

    sbc $3f
    jr nc, @-$0e

    or $ff
    ld h, b
    ldh [$f8], a
    rst $38
    nop
    nop
    ld hl, sp-$02
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    ldh a, [$fc]

jr_0ee_5c32:
    nop
    nop
    ret nz

    jr c, jr_0ee_5c37

jr_0ee_5c37:
    nop
    ldh [$f8], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    jr nc, jr_0ee_5c32

    nop
    nop
    nop
    ldh [rP1], a
    nop
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [$c0], a
    rrca
    rlca
    ldh a, [$e0]
    rrca
    rlca
    ldh a, [$e0]
    rrca
    rrca
    ldh a, [$f0]
    rrca
    rrca
    ldh a, [$f0]
    rrca
    rrca
    ldh a, [$f0]
    nop
    rrca
    nop
    ldh a, [rP1]
    rrca
    nop
    rst $38
    rlca
    rra
    db $fc
    rst $38
    rlca
    rra
    db $fc
    rst $38
    ld bc, $901e
    ld a, a
    rlca
    rra
    add sp, -$01
    rrca
    rra
    ld hl, sp-$01
    rrca
    rra
    ld hl, sp-$04
    rrca
    rra
    ld hl, sp-$04
    rrca
    rra
    ld hl, sp-$04
    rrca
    rra
    ld hl, sp-$01
    rlca
    rra
    add sp, -$01
    ld bc, $901e
    ld a, a
    rlca
    rra
    db $fc
    rst $38
    rlca
    rra
    db $fc
    rst $38
    nop
    rrca
    nop
    rst $38
    nop
    rrca
    nop
    ldh a, [rIF]
    rrca
    ldh a, [$f0]
    rrca
    rrca
    ldh a, [$f0]
    rrca
    rrca
    ldh a, [$f0]
    rrca
    rlca
    ldh a, [$e0]
    rrca
    rlca
    ldh a, [$e0]
    rlca
    inc bc
    ldh [$c0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $1e
    nop
    nop
    rra
    rst $38
    add b
    add b
    rrca
    rst $38
    ret nz

    ret nz

    rrca
    rst $38
    ret nz

    ret nz

    rrca
    rst $38
    ret nz

    ret nz

    inc bc
    di
    add b
    add b
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
    nop
    ldh [rP1], a
    nop
    inc bc
    di
    add b
    add b
    rrca
    rst $38
    ret nz

    ret nz

    rrca
    rst $38
    ret nz

    ret nz

    rrca
    rst $38
    ret nz

    ret nz

    rra
    rst $38
    add b
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    rra
    nop
    nop
    inc a
    ccf
    nop
    nop
    jr c, jr_0ee_5e87

    nop
    nop
    jr nc, jr_0ee_5e8b

    nop
    nop
    db $10
    rra
    nop
    nop
    nop
    rrca
    nop
    nop
    nop
    rrca
    nop
    nop
    nop
    rlca
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
    rra
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    rrca
    ccf
    nop
    nop
    rrca
    scf
    nop
    nop
    rlca
    ld a, e
    nop
    nop
    jr jr_0ee_5eff

    ld b, $00
    rra
    ld a, a
    ld c, $06
    rlca

jr_0ee_5e87:
    rst $38
    rra
    rrca
    nop

jr_0ee_5e8b:
    rst $38
    rra
    ld e, $c0
    ld a, a
    rra
    inc e
    ld hl, sp-$01
    rrca
    ld [$fffc], sp
    rlca
    inc b
    rst $38
    rst $38
    inc bc
    nop
    rst $38
    rst $38
    ld bc, $f800
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc b
    add b
    nop

jr_0ee_5eff:
    nop
    inc a
    call c, RST_00
    ld a, [hl]
    cp $00
    nop
    ld a, a
    rst $38
    nop
    nop
    ccf
    rst $38
    nop
    nop
    rra
    rst $38
    nop
    nop
    rlca
    rst $38
    nop
    nop
    di
    rst $38
    nop
    nop
    ld hl, sp-$01
    nop
    nop
    sbc $be
    nop
    nop
    xor $de
    nop
    nop
    ld a, [c]
    cp $00
    nop
    ldh a, [$fe]
    nop
    nop
    ldh a, [$fe]
    nop
    nop
    ldh [$fc], a
    nop
    nop
    ret nz

    db $fc
    nop
    nop
    nop
    ld hl, sp+$00
    nop
    add b
    ld hl, sp+$00
    nop
    ldh [$fc], a
    nop
    nop
    db $e3
    rst $38
    nop
    nop
    inc bc
    rst $38
    add b
    add b
    rlca
    rst $38
    add b
    add b
    rrca
    rst $38
    add b
    add b
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    rst $38
    db $fc
    nop
    inc bc
    rst $38
    db $fc
    inc bc
    nop
    ld a, a
    db $fc
    inc bc
    inc bc
    cp $fd
    rlca
    inc b
    ld a, b
    ei
    inc c
    dec bc
    and b
    db $e3
    dec de
    rla
    ret nz

    rst $00
    inc c
    inc c
    ld bc, $0007
    nop
    ld bc, $0f07
    ld [$0f00], sp
    rrca
    ld [$0f83], sp
    dec bc
    inc c
    rlca
    adc a
    ld c, $0f
    rlca

jr_0ee_5fdf:
    rra
    rrca
    rrca
    rlca
    rra
    rrca
    rrca
    daa
    ld a, a
    rrca
    rra
    daa
    rst $38
    cpl
    jr nc, jr_0ee_6032

    rst $38
    ld l, a
    ld [hl], b
    ld c, h
    rst $38
    ld l, [hl]
    ld [hl], c
    rst $08
    rst $38
    ld l, h
    ld [hl], e
    jp $37ff


    jr c, jr_0ee_5fdf

    rst $38
    rlca
    ld [$fffc], sp
    inc bc
    inc b
    rst $38
    rst $38
    nop
    inc bc
    rst $38
    rst $38
    ld bc, $ff01
    rst $38
    nop
    nop
    rst $38
    rst $38
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

jr_0ee_6032:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp h
    ld a, h
    nop
    nop
    ld a, [hl]
    cp $00
    nop
    cp $fe
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
    ld e, $ff
    ret nz

    ret nz

jr_0ee_6080:
    ld [bc], a
    rst $38
    ld [hl], b
    ldh a, [rP1]
    rst $38
    jr c, jr_0ee_6080

jr_0ee_6088:
    ldh [rIE], a
    jr c, @-$06

    ld hl, sp-$01
    jr c, jr_0ee_6088

    sbc $3f
    jr nc, @-$0e

    or $ff
    ld h, b
    ldh [$f8], a
    rst $38
    nop
    nop
    ld hl, sp-$02
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    ldh a, [$fc]

jr_0ee_60ae:
    nop
    nop
    ret nz

    jr c, jr_0ee_60b3

jr_0ee_60b3:
    nop
    ldh [$f8], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    jr nc, jr_0ee_60ae

    nop
    nop
    nop
    ldh [rP1], a
    nop
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    rst $38
    db $fc
    nop
    inc bc
    rst $38
    db $fc
    inc bc
    nop
    ld a, a
    db $fc
    inc bc
    inc bc
    cp $fd
    rlca
    inc b
    ld a, b
    ei
    inc c
    dec bc
    and b
    db $e3
    dec de
    rla
    ret nz

    rst $00
    inc c
    inc c
    ld bc, $0007
    nop
    ld bc, $0f07
    ld [$0f00], sp
    rrca
    ld [$0f83], sp
    dec bc
    inc c
    rlca
    adc a
    ld c, $0f
    rlca

jr_0ee_615f:
    rra
    rrca
    rrca
    rlca
    rra
    rrca
    rrca
    daa
    ld a, a
    rrca
    rra
    daa
    rst $38
    cpl
    jr nc, jr_0ee_61b2

    rst $38
    ld l, a
    ld [hl], b
    ld c, h
    rst $38
    ld l, [hl]
    ld [hl], c
    rst $08
    rst $38
    ld l, h
    ld [hl], e
    jp $37ff


    jr c, jr_0ee_615f

    rst $38
    rlca
    ld [$fffc], sp
    inc bc
    inc b
    rst $38
    rst $38
    nop
    inc bc
    rst $38
    rst $38
    ld bc, $ff01
    rst $38
    nop
    nop
    rst $38
    rst $38
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

jr_0ee_61b2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp h
    ld a, h
    nop
    nop
    ld a, [hl]
    cp $00
    nop
    cp $fe
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
    ld e, $ff
    ret nz

    ret nz

jr_0ee_6200:
    ld [bc], a
    rst $38
    ld [hl], b
    ldh a, [rP1]
    rst $38
    jr c, jr_0ee_6200

jr_0ee_6208:
    ldh [rIE], a
    jr c, @-$06

    ld hl, sp-$01
    jr c, jr_0ee_6208

    sbc $3f
    jr nc, @-$0e

    or $ff
    ld h, b
    ldh [$f8], a
    rst $38
    nop
    nop
    ld hl, sp-$02
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    ldh a, [$fc]

jr_0ee_622e:
    nop
    nop
    ret nz

    jr c, jr_0ee_6233

jr_0ee_6233:
    nop
    ldh [$f8], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    jr nc, jr_0ee_622e

    nop
    nop
    nop
    ldh [rP1], a
    nop
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec bc
    nop
    nop
    rrca
    scf
    nop
    nop
    scf
    ld c, a
    nop
    nop
    ld a, a
    adc a
    nop
    nop
    ld a, a
    adc a
    nop
    ld bc, $1fef
    inc bc
    ld [bc], a
    ret nz

    ccf
    rlca
    ld c, $80
    ld c, a
    rrca
    rla
    rra
    sbc a
    rla
    rrca
    rra
    rra
    ld [bc], a
    ld e, $06
    add hl, de
    inc [hl]
    nop
    rra
    rrca
    ld h, b
    nop
    scf
    rra
    ret nz

    nop
    rra
    scf
    nop
    nop
    ccf
    rla
    nop
    nop
    rra
    scf
    nop
    nop
    scf
    rra
    nop
    nop
    rra
    cpl
    nop
    nop
    and $f9
    ld bc, $8301
    rst $38
    ld bc, $8301
    rst $38
    ld bc, $8001
    rst $38
    ld bc, $8001
    rst $38
    nop
    nop
    pop bc
    rst $38
    nop
    nop
    ld h, c
    ld a, a
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
    ret nz

    ret nz

    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    nop
    db $fc
    nop
    nop
    ld bc, $1cff
    inc e
    pop af
    rst $38
    ld e, $fe
    ldh a, [rIE]
    adc a
    rst $38
    ld d, b
    rst $38
    adc a
    rst $38
    ret z

    cp a
    adc a
    rst $38
    add sp, -$21
    adc [hl]
    cp $e8
    rst $18
    add b
    ldh [$e8], a
    rst $18
    add b
    ret nz

    add sp, -$21
    add b
    ret nz

    add sp, -$21
    add b
    ret nz

    add sp, -$41
    add b
    ret nz

    db $10
    rst $38
    add b
    ret nz

    cp $ff
    add b
    ret nz

    rst $38
    rst $38
    nop
    add b
    ld bc, $00ff
    nop
    nop
    cp $00
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
    db $fc
    db $fc
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec de
    nop
    nop
    rra
    daa
    nop
    nop
    scf
    ld c, a
    nop
    nop
    ld l, a
    sbc a
    nop
    ld bc, $3fcf
    nop
    ld bc, $7f8f
    ld [bc], a
    inc bc
    nop
    rst $38
    ld b, $0f
    nop
    rst $18
    rrca
    rla
    rra
    sbc a
    rla
    rrca
    rra
    rra
    ld [bc], a
    ld e, $06
    add hl, de
    inc [hl]
    nop
    rra
    rra
    ld h, b
    nop
    ccf
    ccf
    ret nz

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
    rra
    rra
    nop
    nop
    add $f9
    ld bc, $8301
    rst $38
    ld bc, $8301
    rst $38
    ld bc, $8001
    rst $38
    ld bc, $8001
    rst $38
    nop
    nop
    pop bc
    rst $38
    nop
    nop
    ld h, c
    ld a, a
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
    ret nz

    ret nz

    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    nop
    db $fc
    nop
    nop
    ld bc, $1cff
    inc e
    pop af
    rst $38
    ld e, $fe
    ldh a, [rIE]
    adc a
    rst $38
    db $10
    rst $38
    adc a
    rst $38
    ret z

    cp a
    adc a
    rst $38
    add sp, -$21
    adc [hl]
    cp $e8
    rst $18
    add b
    ldh [$e8], a
    rst $18
    add b
    ret nz

    add sp, -$21
    add b
    ret nz

    add sp, -$21
    add b
    ret nz

    ret z

    cp a
    add b
    ret nz

    db $10
    rst $38
    add b
    ret nz

    cp $ff
    add b
    ret nz

    rst $38
    rst $38
    nop
    add b
    ld bc, $00ff
    nop
    nop
    cp $00
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
    db $fc
    db $fc
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec bc
    nop
    nop
    rrca
    scf
    nop
    nop
    scf
    ld c, a
    nop
    nop
    ld a, a
    adc a
    nop
    nop
    ld a, a
    adc a
    nop
    ld bc, $1fef
    inc bc
    ld [bc], a
    ret nz

    ccf
    rlca
    ld c, $80
    ld c, a
    rrca
    rla
    rrca
    adc a
    rla
    rrca
    rrca
    rrca
    ld [bc], a
    ld e, $01
    ld c, $34
    nop
    rlca
    rrca
    ld h, b
    nop
    rrca
    rrca
    ret nz

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
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rlca
    rrca
    nop
    nop
    pop bc
    cp $01
    ld bc, $ff83
    ld bc, $8301
    rst $38
    ld bc, $8001
    rst $38
    ld bc, $8001
    rst $38
    nop
    nop
    pop bc
    rst $38
    nop
    nop
    ld h, c
    ld a, a
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
    ret nz

    ret nz

    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    nop
    db $fc
    nop
    nop
    ld bc, $1cff
    inc e
    pop af
    rst $38
    ld e, $fe
    ldh a, [rIE]
    adc a
    rst $38
    sub b
    ld a, a
    adc a
    rst $38
    add sp, -$01
    adc a
    rst $38
    ld hl, sp-$01
    adc [hl]
    cp $f8
    rst $38
    add b
    ldh [$f8], a
    rst $38
    add b
    ret nz

    ld hl, sp-$01
    add b
    ret nz

    ld hl, sp-$01
    add b
    ret nz

    add sp, -$01
    add b
    ret nz

    sub b
    ld a, a
    add b
    ret nz

    cp $ff
    add b
    ret nz

    rst $38
    rst $38
    nop
    add b
    ld bc, $00ff
    nop
    nop
    cp $00
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
    db $fc
    db $fc
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    nop
    nop
    ccf
    inc a
    nop
    nop
    rrca
    inc a
    nop
    nop
    scf
    dec c
    nop
    nop
    ccf
    dec a
    nop
    nop
    ld [hl], l
    ld c, a
    nop
    nop
    ret z

    cp a
    ld bc, $bc01
    ld a, a
    nop
    nop
    ret nz

    jp RST_00


    inc bc
    inc bc
    nop
    nop
    inc bc
    rrca
    nop
    nop
    ld b, $19
    nop
    nop
    rra
    rra
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
    ld bc, $ff3f
    inc c
    rrca
    rra
    rst $38
    jr jr_0ee_6919

    ld e, $f9
    jr jr_0ee_691d

    rra
    rst $38
    jr jr_0ee_6921

    rlca
    rst $38
    jr jr_0ee_6925

    ld b, b
    rst $38
    inc c
    rrca
    ld a, b
    rst $38
    ld b, $07
    ld a, a
    rst $38
    nop
    nop
    rst $38
    ld a, a
    nop
    nop
    rst $38
    ld a, a
    nop

jr_0ee_6919:
    nop
    cp $7e
    nop

jr_0ee_691d:
    nop
    ld a, h
    inc a
    nop

jr_0ee_6921:
    nop
    nop
    nop
    nop

jr_0ee_6925:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    ld hl, sp+$78
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ccf
    rst $38
    nop
    nop
    rlca
    rst $38
    add b
    add b
    ld bc, $c0ff
    ret nz

    ret nz

    rst $38
    ldh [$e0], a
    ldh a, [rIE]
    ld h, b
    ldh [$3c], a
    rst $38
    ld [hl], b
    ldh a, [$8c]
    rst $38
    ld [hl], b
    ldh a, [$c0]
    rst $38
    ld [hl], b
    ldh a, [$c0]
    rst $38
    ldh a, [$f0]
    ret nz

    cp $e0
    ldh [$c0], a
    ld hl, sp+$00
    nop
    ret nz

    ld hl, sp+$00
    nop
    add b
    ld hl, sp+$00
    nop
    nop
    ldh a, [rP1]
    nop
    ret nz

    ldh a, [rP1]
    nop
    ldh [$e0], a
    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    nop
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$0000], sp
    rrca
    stop
    nop
    ld c, $1f
    nop
    nop
    rra
    rra
    nop
    nop
    rra
    jr jr_0ee_6a3d

jr_0ee_6a3d:
    nop
    rra
    jr jr_0ee_6a41

jr_0ee_6a41:
    nop
    dec c
    ld a, [bc]
    ld bc, $8601
    cp l
    inc bc
    inc bc
    add [hl]
    db $fd
    inc bc
    inc bc
    add [hl]
    rst $38
    inc bc
    inc bc
    adc d
    rst $38
    ld bc, $8a01
    rst $38
    nop
    nop
    adc d
    rst $38
    nop
    nop
    ld c, d
    ld a, a
    nop
    nop
    ld b, $1f
    nop
    nop
    ld c, $07
    nop
    nop
    ld b, $1f
    nop
    nop
    ld c, d
    ld a, a
    nop
    nop
    adc d
    rst $38
    ld bc, $8a01
    rst $38
    inc bc
    inc bc
    adc d
    rst $38
    inc bc
    inc bc
    add [hl]
    rst $38
    inc bc
    inc bc
    add [hl]
    db $fd
    ld bc, $8601
    cp l
    nop
    nop
    dec c
    ld a, [bc]
    nop
    nop
    rra
    jr jr_0ee_6a91

jr_0ee_6a91:
    nop
    rra
    jr jr_0ee_6a95

jr_0ee_6a95:
    nop
    rra
    rra
    nop
    nop
    ld c, $1f
    nop
    nop
    rrca
    stop
    nop
    rlca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    cp b
    ld l, b
    nop
    nop
    db $e4
    ld a, h
    nop
    nop
    ld a, h
    db $fc
    nop
    nop
    cp [hl]
    ld a, [hl]
    nop
    nop
    cp $3e
    nop
    nop
    ld a, $fe
    nop
    nop
    add b
    ld a, a
    nop
    nop
    add b
    ld a, a
    nop
    add b
    ccf
    rst $38
    add b
    add b
    ccf
    rst $38
    add b
    add b
    nop
    rst $38
    nop
    add b
    rra
    ld sp, hl
    ret nz

    ret nz

    ld a, a
    ld [c], a
    ldh [$e0], a
    db $eb
    sub $e0
    ldh [$ef], a
    jp c, $e0e0

    db $eb
    sub $e0
    ldh [$7f], a
    ld [c], a
    ldh [$e0], a
    rra
    ld sp, hl
    ret nz

    ret nz

    nop
    rst $38
    nop
    add b
    ccf
    rst $38
    add b
    add b
    ccf
    rst $38
    add b
    add b
    add b
    ld a, a
    nop
    add b
    add b
    ld a, a
    nop
    nop
    ld a, $fe
    nop
    nop
    cp $3e
    nop
    nop
    cp [hl]
    ld a, [hl]
    nop
    nop
    ld a, h
    db $fc
    nop
    nop
    db $e4
    ld a, h
    nop
    nop
    cp b
    ld l, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0001
    nop
    dec b
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    inc de
    rra
    nop
    nop
    inc hl
    ccf
    nop
    nop
    ld h, $39
    nop
    nop
    rra
    cpl
    nop
    nop
    scf
    ld e, a
    nop
    nop
    rra
    ld [hl], a
    nop
    nop
    ccf
    ld d, a
    nop
    nop
    rra
    ld [hl], a
    nop
    nop
    scf
    ld e, a
    nop
    nop
    rra
    ld l, a
    jr nc, jr_0ee_6d7a

    ld d, $79
    inc e
    ld a, h
    rra
    ld a, a
    inc a
    ld a, h

jr_0ee_6d7a:
    rlca
    ld a, a
    ld l, [hl]
    ld a, [hl]
    ld b, b
    ld a, a
    ld e, l
    ld l, [hl]
    ld hl, sp+$7f
    ccf
    inc a
    rst $38
    ld a, a
    rrca
    inc c
    rst $38
    ld a, a
    inc bc
    nop
    rst $38
    ld a, a
    ld bc, $fe02
    ld a, [hl]
    nop
    ld bc, $fc3c
    nop
    nop
    nop
    jr nc, jr_0ee_6d9d

jr_0ee_6d9d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, h
    add b
    nop
    db $fd
    cp $c0
    nop

jr_0ee_6df0:
    db $fd
    cp $c0
    jr nz, @-$01

    cp $d0
    jr nc, @-$01

    cp $f0
    jr nc, jr_0ee_6e39

    rst $38
    jr nc, jr_0ee_6df0

    dec b
    db $fd
    ldh a, [$f0]
    nop
    db $fc
    ldh [$e0], a
    ret nz

    db $fc
    nop
    nop
    ldh a, [$fc]
    nop
    nop
    ld a, h
    db $fc
    nop
    nop
    xor h
    db $fc
    nop
    nop
    ldh [$fc], a
    nop
    nop
    ldh [$fc], a
    nop
    nop
    db $e4
    db $fc
    nop
    nop
    db $e4
    rst $38
    ld a, $fe
    db $e4
    rst $38
    rra
    rst $38
    and h
    rst $38
    rra
    rst $38
    ld c, h
    rst $38
    rra
    rst $38
    call z, Call_000_1fff
    rst $38
    db $f4

jr_0ee_6e39:
    rst $38
    rra
    rst $38
    ld a, h
    rst $38
    ld a, $fe
    ld c, b
    rst $38
    nop
    ret nz

    ld b, b
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
    rlca
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    inc de
    rra
    nop
    nop
    inc hl
    ccf
    nop
    nop
    ld h, $39
    nop
    nop
    rra
    cpl
    nop
    nop
    scf
    rra
    nop
    nop
    rra
    scf
    nop
    nop
    ccf
    ld d, a
    nop
    nop
    rra
    ld [hl], a
    nop
    nop
    scf
    rst $18
    nop
    nop
    ld e, a
    rst $28
    nop
    nop
    ld d, [hl]
    ld sp, hl
    nop
    nop
    ld e, a
    rst $38
    inc bc
    nop
    ld b, a
    ld a, a
    ld bc, $4003
    ld a, a
    inc bc
    rlca
    jr nc, @+$01

    ld b, $07
    cp [hl]
    ld a, a
    dec b
    ld b, $bf
    ld a, a
    inc bc
    inc bc
    cp a
    ld a, a
    nop
    ld bc, $7fbf
    nop
    nop
    ld a, $fe
    nop
    nop
    inc c
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    cp $fc
    nop
    nop
    cp $fd
    nop
    nop
    cp $fd
    add b
    add b
    rst $38
    db $fd
    add b
    add b
    ld a, l
    rst $38
    add b
    add b
    rrca
    rst $38
    add b
    add b
    rlca
    rst $38
    nop
    nop
    add $fe
    nop
    nop
    or $fe
    nop
    nop
    ld a, [hl]
    cp $00
    nop
    xor [hl]
    cp $00
    nop
    db $ec
    db $fc
    nop
    nop
    add sp, -$08
    nop
    nop
    add sp, -$08
    nop
    nop
    jp hl


    rst $38
    ret nz

    ret nz

    add sp, -$01
    ldh [$e0], a
    xor b
    rst $38
    ldh [$e0], a
    ld d, b
    rst $38
    ldh [$e0], a
    ret nc

    rst $38
    ldh [$e0], a
    ldh a, [rIE]
    ldh [$e0], a
    ld [hl], c
    rst $38
    ret nz

    ret nz

    ld d, b
    ld hl, sp+$00
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rrca
    nop
    nop
    nop
    rrca
    nop
    nop
    nop
    rrca
    nop
    nop
    rlca
    rra
    nop
    nop
    rlca
    rra
    nop
    nop
    ld bc, $001e
    nop
    rlca
    dec de
    nop
    nop
    dec c
    rla
    nop
    nop
    rlca
    dec e
    nop
    nop
    rrca
    dec d
    nop
    nop
    rlca
    dec e
    nop
    nop
    dec c
    scf
    nop
    nop
    rlca
    dec sp
    rlca
    rlca
    add c
    cp $0f
    rrca
    rlca
    rst $38
    rla
    rra
    rlca
    rst $38
    rla
    rra
    nop
    rst $38
    dec de
    rra
    nop
    rst $38
    rrca
    rrca
    adc a
    rst $38
    nop
    nop
    rrca
    ccf
    nop
    nop
    rrca
    rra
    nop
    nop
    rlca
    rrca
    nop
    nop
    rlca
    rrca
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
    ret nz

    ldh [rP1], a
    nop
    ldh [$f0], a
    nop
    nop
    ldh [$f0], a
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    ldh a, [$fe]
    nop
    nop
    ldh a, [rIE]
    ldh [$e0], a
    nop
    rst $38
    ld [hl], b
    ldh a, [rP1]
    rst $38
    ld [hl], b
    ldh a, [$fc]
    rst $38
    ld [hl], b
    ldh a, [$fc]
    rst $38
    ld [hl], b
    ldh a, [$90]
    ld a, a
    ld [hl], b
    ldh a, [$e8]
    rst $38
    ldh [$e0], a
    ld hl, sp-$04
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    add sp, -$04
    nop
    nop
    sub b
    ld a, h
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ldh a, [rP1]
    nop
    ldh a, [$f0]
    nop
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
    jr nc, jr_0ee_71a9

jr_0ee_71a9:
    nop
    inc a
    inc a
    nop
    nop
    ld a, $fe
    nop
    ld bc, $7fff
    inc bc
    inc bc
    rst $38
    ld a, a
    dec b
    ld b, $ff
    ld a, a
    ld b, $07
    ld hl, sp+$7f
    inc bc
    rlca
    ld b, b
    rst $38
    ld bc, $4703
    ld a, a
    inc bc
    nop
    rra
    ld a, a
    nop
    nop
    ld d, $79
    nop
    nop
    rra
    ld l, a
    nop
    nop
    scf
    ld e, a
    nop
    nop
    rra
    scf
    nop
    nop
    ccf
    ld d, a
    nop
    nop
    rra
    ld [hl], a
    nop
    nop
    scf
    ld e, a
    ld bc, $9f01
    rst $28
    inc bc
    inc bc
    ld h, $f9
    dec b
    rlca
    inc hl
    rst $38
    dec b
    rlca
    inc sp
    rst $38
    rlca
    rlca
    jr nc, @+$01

    inc bc
    inc bc
    cp b
    rst $38
    nop
    nop
    jr jr_0ee_7243

    nop
    nop
    dec b
    rlca
    nop
    nop
    ld bc, $0001
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

jr_0ee_7243:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    nop
    nop
    ld c, b
    rst $38
    nop
    nop
    ld a, h
    rst $38
    ld a, b
    ld hl, sp-$0c
    rst $38
    inc a
    db $fc
    call z, Call_000_3cff
    db $fc
    ld c, h
    rst $38
    inc a
    db $fc
    and h
    rst $38
    inc a
    db $fc
    db $e4
    rst $38
    inc a
    db $fc
    db $e4
    rst $38
    ld a, b
    ld hl, sp-$1c
    db $fc
    nop
    nop
    ldh [$fc], a
    nop
    nop
    ldh [$fc], a
    nop
    nop
    xor h
    db $fc
    nop
    nop
    ld a, h
    db $fc
    nop
    nop
    ldh a, [$fc]
    nop
    nop
    ret nz

    db $fc
    nop
    nop
    inc bc
    rst $38
    nop
    nop
    rlca
    rst $38
    add b
    add b
    dec a
    rst $38
    add b
    add b
    rst $38
    db $fd
    add b
    add b
    cp $fd
    add b
    add b
    cp $fd
    nop
    nop
    cp $fc
    nop
    nop
    ld a, b
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
    jr nc, jr_0ee_7329

jr_0ee_7329:
    ld bc, $fc3c
    ld bc, $fe02
    ld a, [hl]
    inc bc
    nop
    rst $38
    ld a, a
    rrca
    inc c
    rst $38
    ld a, a
    ccf
    inc a
    rst $38
    ld a, a
    ld e, l
    ld l, [hl]
    ld hl, sp+$7f
    ld l, [hl]
    ld a, [hl]
    ld b, b
    ld a, a
    inc a
    ld a, h
    rlca
    ld a, a
    inc e
    ld a, h
    rra
    ld a, a
    jr nc, jr_0ee_7356

    ld d, $79
    nop
    nop
    rra
    ld l, a
    nop
    nop

jr_0ee_7356:
    scf
    ld e, a
    nop
    nop
    rra
    ld [hl], a
    nop
    nop
    ccf
    ld d, a
    nop
    nop
    rra
    ld [hl], a
    nop
    nop
    scf
    ld e, a
    nop
    nop
    rra
    cpl
    nop
    nop
    ld h, $39
    nop
    nop
    inc hl
    ccf
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
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    dec b
    rlca
    nop
    nop
    ld bc, $0001
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
    ld b, b
    ret nz

    nop
    nop
    ld c, b
    rst $38
    nop
    ret nz

    ld a, h
    rst $38
    ld a, $fe
    db $f4
    rst $38
    rra
    rst $38
    call z, Call_000_1fff
    rst $38
    ld c, h
    rst $38
    rra
    rst $38
    and h
    rst $38
    rra
    rst $38
    db $e4
    rst $38
    rra
    rst $38
    db $e4
    rst $38
    ld a, $fe
    db $e4
    db $fc
    nop
    nop
    ldh [$fc], a
    nop
    nop
    ldh [$fc], a
    nop
    nop
    xor h
    db $fc
    nop
    nop
    ld a, h
    db $fc
    nop
    nop
    ldh a, [$fc]
    nop
    nop

jr_0ee_7434:
    ret nz

    db $fc
    nop
    nop
    nop
    db $fc
    ldh [$e0], a
    dec b
    db $fd
    ldh a, [$f0]
    inc a
    rst $38
    jr nc, jr_0ee_7434

    db $fd
    cp $f0
    jr nc, @-$01

    cp $d0
    jr nc, @-$01

    cp $c0
    jr nz, @-$01

    cp $c0
    nop
    ld a, e
    ld a, h
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
    inc c
    inc a
    nop
    nop
    ld a, $fe
    nop
    ld bc, $7fbf
    inc bc
    inc bc
    cp a
    ld a, a
    dec b
    ld b, $bf
    ld a, a
    ld b, $07
    cp [hl]
    ld a, a
    inc bc
    rlca
    jr nc, @+$01

    ld bc, $4003
    ld a, a
    inc bc
    nop
    ld b, a
    ld a, a
    nop
    nop
    ld e, a
    rst $38
    nop
    nop
    ld d, [hl]
    ld sp, hl
    nop
    nop
    ld e, a
    rst $28
    nop
    nop
    scf
    rst $18
    nop
    nop
    rra
    ld [hl], a
    nop
    nop
    ccf
    ld d, a
    nop
    nop
    rra
    scf
    nop
    nop
    scf
    rra
    nop
    nop
    rra
    cpl
    nop
    nop
    ld h, $39
    nop
    nop
    inc hl
    ccf
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
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    rlca
    rlca
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
    add b
    add b
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
    ld d, b
    ld hl, sp+$00
    nop
    ld [hl], c
    rst $38
    ret nz

    ret nz

    ldh a, [rIE]
    ldh [$e0], a
    ret nc

    rst $38
    ldh [$e0], a
    ld d, b
    rst $38
    ldh [$e0], a
    xor b
    rst $38
    ldh [$e0], a
    add sp, -$01
    ldh [$e0], a
    jp hl


    rst $38
    ret nz

    ret nz

    add sp, -$08
    nop
    nop
    add sp, -$08
    nop
    nop
    db $ec
    db $fc
    nop
    nop
    xor [hl]
    cp $00
    nop
    ld a, [hl]
    cp $00
    nop
    or $fe
    nop
    nop
    add $fe
    nop
    nop
    rlca
    rst $38
    nop
    nop
    rrca
    rst $38
    add b
    add b
    ld a, l
    rst $38
    add b
    add b
    rst $38
    db $fd
    add b
    add b
    cp $fd
    add b
    add b
    cp $fd
    nop
    nop
    cp $fc
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rrca
    nop
    nop
    rlca
    rrca
    nop
    nop
    rrca
    rra
    nop
    nop
    rrca
    ccf
    rrca
    rrca
    adc a
    rst $38
    dec de
    rra
    nop
    rst $38
    rla
    rra
    nop
    rst $38
    rla
    rra
    rlca
    rst $38
    rrca
    rrca
    rlca
    rst $38
    rlca
    rlca
    add c
    cp $00
    nop
    rlca
    dec sp
    nop
    nop
    dec c
    scf
    nop
    nop
    rlca
    dec e
    nop
    nop
    rrca
    dec d
    nop
    nop
    rlca
    dec e
    nop
    nop
    dec c
    rla
    nop
    nop
    rlca
    dec de
    nop
    nop
    ld bc, $001e
    nop
    rlca
    rra
    nop
    nop
    rlca
    rra
    nop
    nop
    nop
    rrca
    nop
    nop
    nop
    rrca
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
    rrca
    nop
    nop
    rlca
    rlca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ld hl, sp+$00
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    sub b
    ld a, h
    nop
    nop
    add sp, -$04
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    add sp, -$01
    ldh [$e0], a
    sub b
    ld a, a
    ld [hl], b
    ldh a, [$fc]
    rst $38
    ld [hl], b
    ldh a, [$fc]
    rst $38
    ld [hl], b
    ldh a, [rP1]
    rst $38
    ld [hl], b
    ldh a, [rP1]
    rst $38
    ld [hl], b
    ldh a, [$f0]
    rst $38
    ldh [$e0], a
    ldh a, [$fe]
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    ldh [$f0], a
    nop
    nop
    ldh [$f0], a
    nop
    nop
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0001
    nop
    dec b
    rlca
    nop
    nop
    jr jr_0ee_77ff

    inc bc
    inc bc
    cp b
    rst $38
    rlca
    rlca
    jr nc, @+$01

    dec b
    rlca
    inc sp
    rst $38
    dec b
    rlca
    inc hl
    rst $38
    inc bc
    inc bc
    ld h, $f9
    ld bc, $9f01
    rst $28
    nop
    nop
    scf
    ld e, a
    nop
    nop
    rra
    ld [hl], a
    nop
    nop
    ccf
    ld d, a
    nop
    nop
    rra
    scf
    nop
    nop
    scf
    ld e, a
    nop
    nop
    rra
    ld l, a
    nop
    nop
    ld d, $79
    inc bc
    nop
    rra
    ld a, a
    ld bc, $4703
    ld a, a
    inc bc
    rlca
    ld b, b

jr_0ee_77ff:
    rst $38
    ld b, $07
    ld hl, sp+$7f
    dec b
    ld b, $ff
    ld a, a
    inc bc
    inc bc
    rst $38
    ld a, a
    nop
    ld bc, $7fff
    nop
    nop
    ld a, $fe
    nop
    nop
    inc a
    inc a
    nop
    nop
    nop
    jr nc, jr_0ee_781d

jr_0ee_781d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, h
    nop
    nop
    cp $fc
    nop
    nop
    cp $fd
    nop
    nop
    cp $fd
    add b
    add b
    rst $38
    db $fd
    add b
    add b
    dec a
    rst $38
    add b
    add b
    rlca
    rst $38
    add b
    add b
    inc bc
    rst $38
    nop
    nop
    ret nz

    db $fc
    nop
    nop
    ldh a, [$fc]
    nop
    nop
    ld a, h
    db $fc
    nop
    nop
    xor h
    db $fc
    nop
    nop
    ldh [$fc], a
    nop
    nop
    ldh [$fc], a
    nop
    nop
    db $e4
    db $fc
    nop
    nop
    db $e4
    rst $38
    ld a, b
    ld hl, sp-$1c
    rst $38
    inc a
    db $fc
    and h
    rst $38
    inc a
    db $fc
    ld c, h
    rst $38
    inc a
    db $fc
    call z, Call_000_3cff
    db $fc
    db $f4
    rst $38
    inc a
    db $fc
    ld a, h
    rst $38
    ld a, b
    ld hl, sp+$48
    rst $38
    nop
    nop
    ld b, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_0ee_7f40:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
