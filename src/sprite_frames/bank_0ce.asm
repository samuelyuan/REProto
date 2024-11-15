SECTION "ROM Bank $0ce", ROMX[$4000], BANK[$ce]

    nop
    nop
    nop
    nop
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
    rra
    rra
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
    rra
    rra
    nop
    nop
    rra
    ld a, a
    nop
    inc bc
    ld a, $ff
    nop
    rrca
    rst $38
    ld a, $00
    rrca
    sub h
    rst $38
    nop
    rra
    sub h
    rst $38
    nop
    rra
    db $dd
    db $e3
    inc c
    inc de
    db $e3
    db $dd
    inc e
    inc bc
    db $e3
    db $dd
    inc e
    inc bc
    inc e
    db $e3
    ld c, $11
    db $e3
    rst $38
    ld c, $11
    db $e3
    rst $38
    ld b, $09
    db $e3
    rst $38
    inc b
    dec bc
    ld d, l
    rst $38
    ld bc, $ff07
    ld d, l
    inc bc
    rlca
    rst $38
    rst $38
    inc bc
    inc bc
    add b
    rst $38
    ld bc, $8001
    rst $38
    nop
    nop
    add a
    ld a, a
    nop
    nop
    ld [bc], a
    ld a, a
    nop
    nop
    ld [bc], a
    ld a, a
    nop
    nop
    ld [bc], a
    ld a, a
    nop
    nop
    ld [bc], a
    ld a, a
    nop
    nop
    inc bc
    ld a, a
    nop
    nop
    ld b, e
    ld a, a
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
    ld b, e
    ld a, a
    nop
    nop
    ld [bc], a
    ld a, a
    nop
    nop
    ld [bc], a
    ld a, a
    nop
    nop

jr_0ce_409a:
    ld [bc], a
    ld a, a
    nop
    nop
    ld [bc], a
    ld a, a
    nop
    nop
    ld [bc], a
    ld a, a
    nop
    nop
    ld a, $3e
    nop
    nop
    inc a
    inc a
    nop
    nop
    inc a
    inc a
    nop
    nop
    inc a
    inc a
    nop
    nop
    ccf
    ccf
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
    and b
    ret nz

    nop
    nop
    and b
    ld h, b
    nop
    nop
    jr nz, jr_0ce_409a

    nop
    nop
    ret nz

    ldh [rP1], a
    nop
    ret nz

    ldh [rP1], a
    nop
    jr c, @-$06

    nop
    nop
    ld [hl], b
    cp $00
    nop
    ldh [$7f], a
    nop
    nop
    pop hl
    cp $00
    add b
    ret nz

    rst $38
    nop
    ret nz

    ret nz

    rst $38
    nop
    ret nz

    jp Jump_000_00fc


Jump_0ce_40ff:
    ret nz

    rst $20
    ld hl, sp-$80
    nop
    rlca
    ld hl, sp+$00
    add b
    or $f9
    nop
    add b
    rst $30
    ld hl, sp+$00
    add b
    rst $30
    ld hl, sp+$00
    add b
    ld d, e
    db $fc
    nop
    add b
    ei
    ld d, a
    add b
    add b
    rst $38
    rst $38
    add b
    nop
    rlca
    rst $38
    add b
    add b
    inc bc
    cp $80
    nop
    add e
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
    nop
    cp $00
    nop
    nop
    cp $00
    nop
    nop
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    ld [bc], a
    cp $00
    nop
    nop
    cp $00
    nop
    nop
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
    nop
    db $fc
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    rst $38
    rst $38
    ret nz

    ret nz

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
    rra
    rra
    nop
    nop
    ld c, a
    rst $38
    nop
    ld bc, $ff1f
    nop
    ld bc, $9f7f
    nop
    ld bc, $ff4a
    nop
    ld bc, $ff4a
    nop
    ld bc, $f16e
    nop
    ld bc, $ee71
    nop
    nop
    ld [hl], c
    xor $00
    nop
    ld c, $71
    nop
    nop
    ld [hl], c
    ld a, a
    nop
    nop
    ld [hl], c
    ld a, a
    nop
    nop
    ld [hl], c
    ld a, a
    nop
    nop
    ld a, [hl+]
    ld a, a
    nop
    nop
    ld a, a
    ld a, [hl+]
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    jr nz, jr_0ce_4227

    nop
    nop
    rra
    ccf
    nop
    nop
    ld [bc], a
    ccf
    nop
    nop
    ld [bc], a
    ccf
    nop
    nop
    ld [bc], a
    ccf
    nop
    nop
    ld [bc], a
    ccf
    nop
    nop
    ld [bc], a
    ccf
    nop
    nop
    ld [bc], a
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld [bc], a
    rst $38
    nop
    nop
    ld [bc], a
    rst $38
    nop
    nop
    ld [bc], a
    rst $38
    nop
    nop
    ld [bc], a
    rst $38
    nop
    nop
    ld [bc], a
    rst $38
    nop
    nop
    ld [bc], a
    ld a, a
    nop
    nop
    ld a, l

jr_0ce_4227:
    ld a, l
    nop
    nop
    ld a, c
    ld a, c
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    db $fc
    db $fc
    ld bc, $fd01
    db $fd
    ld bc, $fd01
    db $fd
    nop
    nop
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
    ret nc

    ldh [rP1], a
    nop
    ret nc

    or b
    nop
    nop
    sub b
    ldh [rP1], a
    nop
    ret nz

    ldh a, [rP1]
    nop
    db $fc
    db $fc
    nop
    nop
    sbc a
    rst $38
    nop
    nop
    inc a
    rst $38
    nop
    add b
    ld hl, sp+$3f
    nop
    ret nz

    ld a, b
    rst $38
    add b
    ld b, b
    ld a, b
    rst $38
    nop
    ret nz

    ld hl, sp-$01
    nop
    ret nz

    db $fc
    rst $38
    nop
    ldh [rIE], a
    db $fc
    ret nz

    jr nz, @+$03

    cp $80
    ld b, b
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
    xor b
    db $fc
    nop
    nop
    db $fc
    xor b
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    nop
    ld hl, sp+$00
    nop
    add b
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
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
    nop
    db $fc
    nop
    nop
    nop
    db $fc
    nop
    nop
    inc b
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
    inc b
    db $fc
    nop
    nop
    nop
    db $fc
    nop
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
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
    ldh a, [$f0]
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
    rst $38
    rst $38
    add b
    add b
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
    rlca
    rlca
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
    rlca
    rlca
    nop
    nop
    rlca
    ccf
    nop
    nop
    rrca
    ld a, a
    nop
    nop
    ccf
    rst $08
    nop
    nop
    dec h
    rst $38
    nop
    nop
    dec h
    rst $38
    nop
    nop
    scf
    ld hl, sp+$00
    nop
    jr c, @+$79

    nop
    nop
    jr c, jr_0ce_43bb

    nop
    nop
    daa
    ld a, b
    nop
    nop
    jr c, jr_0ce_43cb

    nop
    nop
    jr c, jr_0ce_43cf

    nop
    nop
    jr c, jr_0ce_43d3

    nop
    nop
    ld [hl], l
    ld a, a
    nop
    nop
    ld a, a
    ld [hl], l
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld [hl], b
    ccf
    nop
    nop
    jr nc, jr_0ce_43c7

    nop
    nop
    add hl, bc
    rrca
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    inc bc
    nop
    nop
    inc bc
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
    ld bc, $0003
    nop
    ld bc, $0007
    nop
    ld bc, $0007
    nop
    ld bc, $0007
    nop
    ld bc, $0007
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
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld bc, $000f
    nop
    nop

jr_0ce_43bb:
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    nop

jr_0ce_43c7:
    nop
    db $fc
    db $fc
    nop

jr_0ce_43cb:
    nop
    db $fc
    db $fc
    nop

jr_0ce_43cf:
    nop
    add sp, -$10
    nop

jr_0ce_43d3:
    nop
    add sp, -$28
    nop
    nop
    ret z

    ldh a, [rP1]
    nop
    ldh a, [$f8]
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    adc $fe
    nop
    nop
    sbc h
    rst $38
    nop
    add b
    ld hl, sp-$61
    nop
    ret nz

    jr c, @+$01

    ld b, b
    and b
    jr nc, @+$01

    nop
    ldh [rSVBK], a
    rst $38
    nop
    ldh [$f0], a
    ld a, a
    nop
    ret nz

    ld hl, sp+$7f
    ret nz

    nop
    nop
    rst $38
    ret nz

    nop
    db $fc
    rst $38
    ld b, b
    add b
    db $fc
    rst $38
    ret nz

    nop
    db $fc
    rst $38
    ret nz

    nop
    ld d, h
    rst $38
    ret nz

    nop
    rst $38
    ld d, a
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    inc bc
    rst $38
    ret nz

    ret nz

    inc bc
    db $fd
    ret nz

    ret nz

    pop hl
    cp $c0
    nop
    add b
    db $fc
    nop
    nop
    add b
    db $fc
    nop
    nop
    add b
    db $fc
    nop
    nop
    add b
    db $fc
    nop
    nop
    add b
    db $fc
    nop
    nop
    add b
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
    nop
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
    nop
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
    add b
    ld hl, sp+$00
    nop
    cp b
    cp b
    nop
    nop
    cp b
    cp b
    nop
    nop
    cp b
    cp b
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld a, [hl]
    cp $00
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
    rlca
    rlca
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
    rlca
    rlca
    nop
    nop
    rlca
    ccf
    nop
    nop
    rrca
    ld a, a
    nop
    nop
    ccf
    rst $08
    nop
    nop
    dec h
    rst $38
    nop
    nop
    dec h

jr_0ce_44b7:
    rst $38
    nop
    nop
    scf

jr_0ce_44bb:
    ld hl, sp+$00
    nop
    jr c, jr_0ce_44b7

    nop
    nop
    jr c, jr_0ce_44bb

    nop
    nop
    daa
    ld hl, sp+$00
    nop
    jr c, @+$01

    nop
    nop
    jr c, @+$01

    nop
    nop
    jr c, @+$01

    nop
    nop
    push af
    rst $38
    nop
    nop
    rst $38
    push af
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ldh a, [$7f]
    nop
    nop
    ld [hl], b
    sbc a
    nop
    nop
    add hl, bc
    rrca
    nop
    nop
    ld bc, $0007
    nop
    ld bc, $0007
    nop
    ld bc, $0007
    nop
    ld bc, $0003
    nop
    ld bc, $0003
    nop
    ld bc, $0003
    nop
    ld bc, $0003
    nop
    inc bc
    inc bc
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
    ld [bc], a
    inc bc
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
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    db $fc
    db $fc
    nop
    nop

jr_0ce_454c:
    db $fc
    db $fc
    nop
    nop
    add sp, -$10
    nop
    nop
    add sp, -$28
    nop
    nop

jr_0ce_4558:
    ret z

    ldh a, [rP1]
    nop
    ldh a, [$f8]
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    adc $fe
    nop
    nop
    sbc h
    rst $38
    nop
    add b
    ld hl, sp-$61
    nop
    ret nz

    jr c, @+$01

    ld b, b
    and b
    jr nc, @+$01

    nop
    ldh [rSVBK], a
    rst $38
    nop
    ldh [$f0], a
    ld a, a
    ldh [rP1], a
    ld hl, sp+$7f
    ldh [rP1], a
    nop
    rst $38
    ldh [rP1], a
    db $fc
    db $fd
    jr nz, jr_0ce_454c

    db $fc
    db $fd
    ld h, b
    add b
    db $fc
    db $fc
    ld h, b
    add b
    ld d, h
    db $fc
    jr nz, jr_0ce_4558

    db $fc
    ld d, h
    ldh [$e0], a
    db $fd
    db $fd
    ldh [$e0], a
    ld bc, $e0fd
    ldh [rSB], a
    db $fc
    ldh [$e0], a
    ldh [$fd], a
    ldh [rP1], a
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    ld hl, sp-$08
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
    nop
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
    nop
    db $fc
    nop
    nop
    ld [$00f8], sp
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld a, a
    ld a, a
    add b
    add b
    rst $38
    rst $38
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    cp $fe
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
    rlca
    rlca
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
    rlca
    rlca
    nop
    nop
    rlca
    ccf
    nop
    nop
    rrca
    ld a, a
    nop
    nop
    ccf
    rst $08
    nop
    nop
    dec h
    rst $38
    nop
    nop
    dec h
    rst $38
    nop
    nop
    scf
    ld hl, sp+$00
    ld bc, $f738
    nop
    ld bc, $b778
    nop
    ld bc, $38e7
    nop
    ld bc, $3ff8
    nop
    ld bc, $3ff8
    nop
    ld bc, $3ff8
    inc bc
    inc bc
    dec d
    rst $18
    inc bc
    inc bc
    sbc a
    sub l
    rlca
    inc bc
    sbc a
    sbc a
    ld b, $01
    sub b
    sbc a
    ld bc, $9000
    rra
    nop
    nop
    add hl, bc
    rrca
    nop
    nop
    ld bc, $0007
    nop
    ld bc, $0007
    nop
    ld bc, $0007
    nop
    ld [bc], a
    inc bc
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
    nop
    nop
    inc b
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
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    ld [$000f], sp
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
    rra
    rra
    nop
    nop
    inc de
    rra
    nop
    nop
    rrca
    rrca
    nop
    nop
    nop
    nop
    ld hl, sp-$08
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
    add sp, -$10
    nop
    nop

jr_0ce_46d4:
    add sp, -$28
    nop
    nop
    ret z

    ldh a, [rP1]
    nop
    ldh a, [$f8]
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    adc $fe
    nop
    nop
    sbc h
    rst $38
    nop
    add b
    ld hl, sp-$61
    nop
    ret nz

    jr c, @+$01

    ld b, b
    and b
    jr nc, @+$01

    nop
    ldh [rSVBK], a
    rst $38
    nop
    ldh [$f0], a
    ld a, a
    ldh [rP1], a
    ld hl, sp+$7f
    ldh [rP1], a
    nop
    db $fd
    ld h, b
    add b
    db $fc
    db $fd
    ld h, b
    add b
    db $fc
    db $fc
    db $10
    ldh [$fc], a
    db $fc
    jr nc, jr_0ce_46d4

    ld d, h
    db $fc
    jr nc, jr_0ce_4758

    db $fc
    ld d, h
    db $10
    ld [hl], b
    db $fc
    db $fc
    ld [hl], b
    ld [hl], b
    nop
    db $fc
    ld h, b
    ld [hl], b
    nop
    db $fc
    ld [hl], b
    ld [hl], b
    ldh [$fc], a
    jr nz, jr_0ce_477c

    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    ldh [$f0], a
    nop
    nop
    jr nc, @-$0e

    nop
    nop
    ld b, b
    ld hl, sp+$00
    nop
    ld b, b
    ld hl, sp+$00
    nop
    ld b, b
    ld hl, sp+$00
    nop

jr_0ce_4758:
    ld b, b
    db $fc
    nop
    nop
    add b
    db $fc
    nop
    nop
    add b
    db $fc
    nop
    nop
    nop
    ld a, b
    nop
    nop
    jr c, jr_0ce_47a2

    nop
    nop
    dec sp
    dec sp
    add b
    add b
    ccf
    ccf
    add b
    add b
    ccf
    ccf
    nop
    nop
    cp [hl]
    cp [hl]
    nop
    nop

jr_0ce_477c:
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
    rlca
    rlca
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

jr_0ce_47a2:
    rlca
    rlca
    nop
    nop
    rlca
    ccf
    nop
    nop
    rrca
    ld a, a
    nop
    nop
    ccf
    rst $08
    nop
    nop
    dec h
    rst $38
    nop
    nop
    dec h

jr_0ce_47b7:
    rst $38
    nop
    nop
    scf

jr_0ce_47bb:
    ld hl, sp+$00
    nop
    jr c, jr_0ce_47b7

    nop
    nop
    jr c, jr_0ce_47bb

    nop
    nop
    daa
    ld hl, sp+$00
    nop
    jr c, @+$01

    nop
    nop
    jr c, @+$01

    nop
    nop
    jr c, @+$01

    nop
    nop
    push af
    rst $38
    nop
    nop
    rst $38
    push af
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ldh a, [$7f]
    nop
    nop
    ld [hl], b
    rra
    nop
    nop
    add hl, bc
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
    nop
    rlca
    nop
    nop
    nop
    rlca
    nop
    nop
    ld bc, $0007
    nop
    ld bc, $0007
    nop
    rlca
    rlca
    nop
    nop
    ld [bc], a
    rlca
    nop
    nop
    ld [bc], a
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
    inc b
    rlca
    nop
    nop
    inc b
    rlca
    nop
    nop
    inc bc
    rlca
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    rrca
    rrca
    nop
    nop
    inc bc
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld bc, $0007
    nop
    rlca
    rlca
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    db $fc
    db $fc
    nop
    nop

jr_0ce_484c:
    db $fc
    db $fc
    nop
    nop
    add sp, -$10
    nop
    nop
    add sp, -$28
    nop
    nop

jr_0ce_4858:
    ret z

    ldh a, [rP1]
    nop
    ldh a, [$f8]
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    adc $fe
    nop
    nop
    sbc h
    rst $38
    nop
    add b
    ld hl, sp-$61
    nop
    ret nz

    jr c, @+$01

    ld b, b
    and b
    jr nc, @+$01

    nop
    ldh [rSVBK], a
    rst $38
    nop
    ldh [$f0], a
    ld a, a
    ldh [rP1], a
    ld hl, sp+$7f
    ldh [rP1], a
    nop
    rst $38
    ldh [rP1], a
    db $fc
    db $fd
    jr nz, jr_0ce_484c

    db $fc
    db $fd
    ld h, b
    add b
    db $fc
    db $fc
    ld h, b
    add b
    ld d, h
    db $fc
    jr nz, jr_0ce_4858

    db $fc
    ld d, h
    ldh [$e0], a
    db $fd
    db $fd
    ldh [$e0], a
    ld bc, $e0fd
    ldh [rSB], a
    db $fc
    ldh [$e0], a
    ldh [$fd], a
    ldh [rP1], a
    add b
    db $fc
    nop
    nop
    add b
    db $fc
    nop
    nop
    add b
    db $fc
    nop
    nop
    add b
    db $fc
    nop
    nop
    nop
    ld hl, sp+$00
    nop
    ld hl, sp-$08
    nop
    nop
    ld [$00f8], sp
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    add b
    ret nz

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

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
    ld a, b
    ld hl, sp+$00
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
    rlca
    rlca
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
    rlca
    rlca
    nop
    nop
    rlca
    ccf
    nop
    nop
    rrca
    ld a, a
    nop
    nop
    ccf
    rst $08
    nop
    nop
    dec h
    rst $38
    nop
    nop
    dec h
    rst $38
    nop
    nop
    scf
    ld hl, sp+$00
    nop
    jr c, jr_0ce_49b7

    nop
    nop
    jr c, jr_0ce_49bb

    nop
    nop
    daa
    ld a, b
    nop
    nop
    jr c, jr_0ce_49cb

    nop
    nop
    jr c, jr_0ce_49cf

    nop
    nop
    jr c, jr_0ce_49d3

    nop
    nop
    ld [hl], l
    ld a, a
    nop
    nop
    ld a, a
    ld [hl], l
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld [hl], b
    ccf
    nop
    nop
    jr nc, jr_0ce_49c7

    nop
    nop
    add hl, bc
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
    nop
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
    nop
    rrca
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
    nop
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
    nop
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
    nop
    rrca
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
    inc bc
    inc bc
    nop
    nop
    rlca

jr_0ce_49b7:
    rlca
    nop
    nop
    rlca

jr_0ce_49bb:
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    nop

jr_0ce_49c7:
    nop
    db $fc
    db $fc
    nop

jr_0ce_49cb:
    nop
    db $fc
    db $fc
    nop

jr_0ce_49cf:
    nop
    add sp, -$10
    nop

jr_0ce_49d3:
    nop
    add sp, -$28
    nop
    nop
    ret z

    ldh a, [rP1]
    nop
    ldh a, [$f8]
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    adc $fe
    nop
    nop
    sbc h
    rst $38
    nop
    add b
    ld hl, sp-$61
    nop
    ret nz

    jr c, @+$01

    ld b, b
    and b
    jr nc, @+$01

    nop
    ldh [rSVBK], a
    rst $38
    nop
    ldh [$f0], a
    ld a, a
    nop
    ret nz

    ld hl, sp+$7f
    ret nz

    nop
    nop
    rst $38
    ret nz

    nop
    db $fc
    rst $38
    ld b, b
    add b
    db $fc
    rst $38
    ret nz

    nop
    db $fc
    rst $38
    ret nz

    nop
    ld d, h
    rst $38
    ret nz

    nop
    rst $38
    ld d, a
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    inc bc
    rst $38
    ret nz

    ret nz

    inc bc
    db $fd
    ret nz

    ret nz

    pop hl
    cp $c0
    nop
    ld b, b
    db $fc
    nop
    nop
    ld b, b
    cp $00
    nop
    ld b, b
    cp $00
    nop

jr_0ce_4a38:
    jr nz, jr_0ce_4a38

    nop
    nop
    ccf
    rst $38
    nop
    nop
    ld hl, $00ff
    nop
    ldh [rIE], a
    nop
    nop
    ldh [rIE], a
    nop
    nop

jr_0ce_4a4c:
    jr nz, jr_0ce_4a4c

    nop
    nop
    ld b, b
    cp $00
    nop
    ld b, b
    cp $00
    nop
    ld b, b
    cp $00
    nop
    ld b, b
    db $fc
    nop
    nop
    inc a
    db $fc
    nop
    nop
    inc a
    cp h
    nop
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
    inc e
    db $fc
    nop
    nop
    add $fe
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
    rlca
    rlca
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
    rlca
    rlca
    nop
    nop
    rlca
    ccf
    nop
    nop
    rrca
    ld a, a
    nop
    nop
    ccf
    rst $08
    nop
    nop
    dec h
    rst $38
    nop
    nop
    dec h
    rst $38
    nop
    nop
    scf
    ld hl, sp+$00
    nop
    jr c, jr_0ce_4b37

    nop
    nop
    jr c, jr_0ce_4b3b

    nop
    nop
    daa
    jr c, jr_0ce_4ac9

jr_0ce_4ac9:
    nop
    jr c, jr_0ce_4b0b

    nop
    nop
    jr c, jr_0ce_4b0f

    nop
    nop
    jr c, jr_0ce_4b13

    nop
    nop
    dec d
    rra
    nop
    nop
    ccf
    dec [hl]
    nop
    nop
    ccf
    ccf
    nop
    nop
    jr nc, jr_0ce_4b03

    nop
    nop
    db $10
    ccf
    nop
    nop
    add hl, bc
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
    nop
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
    nop

jr_0ce_4b03:
    rra
    nop
    nop
    nop
    rra
    nop
    nop
    ccf

jr_0ce_4b0b:
    ccf
    nop
    nop
    nop

jr_0ce_4b0f:
    ccf
    nop
    nop
    nop

jr_0ce_4b13:
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
    nop
    ccf
    nop
    nop
    nop
    ccf
    nop
    nop
    nop
    rra
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
    rlca
    rlca
    nop
    nop
    rrca

jr_0ce_4b37:
    rrca
    nop
    nop
    rra

jr_0ce_4b3b:
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    nop
    nop
    ld hl, sp-$08
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
    add sp, -$10
    nop
    nop
    add sp, -$28
    nop
    nop
    ret z

    ldh a, [rP1]
    nop
    ldh a, [$f8]
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    adc $fe
    nop
    nop
    sbc h
    rst $38
    nop
    add b
    ld hl, sp-$61
    nop
    ret nz

    jr c, @+$01

    ld b, b
    and b
    jr nc, @+$01

    nop
    ldh [rSVBK], a
    rst $38
    nop
    ldh [$f0], a
    ld a, a
    nop
    ret nz

    ld sp, hl
    ld a, [hl]
    ret nz

    nop
    ld bc, $c0fe
    nop
    ld hl, sp-$01
    add b
    ld b, b
    ld sp, hl
    cp $80
    nop
    ld sp, hl
    cp $80
    nop
    ld d, c
    cp $80
    nop
    rst $38
    ld d, a
    add b
    nop
    rst $38
    rst $38
    add b
    add b
    rlca
    rst $38
    nop
    add b
    rlca
    ei
    add b
    add b
    db $e3
    db $fc
    nop
    add b
    ld b, b
    cp $00
    nop
    ld b, b
    cp $00
    nop
    ld b, b
    rst $38
    nop
    nop
    nop
    cp a
    nop
    nop
    nop
    cp a
    nop
    nop
    rra
    sbc a
    add b
    add b
    nop
    sbc a
    nop
    add b
    add b
    adc a
    nop
    add b
    add b
    adc a
    nop
    ret nz

    nop
    adc a
    nop
    ret nz

    nop
    adc a
    nop
    ret nz

    nop
    adc a
    nop
    ret nz

    nop
    adc a
    nop
    ret nz

    nop
    adc a
    nop
    ret nz

    inc bc
    inc bc
    add b
    add b
    inc bc
    inc bc
    add b
    add b
    inc bc
    inc bc
    add b
    add b
    inc bc
    inc bc
    ld hl, sp-$08
    add e
    add e
    ldh a, [$f0]
    jp $c0c3


    ret nz

    ldh [$e0], a
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
    rlca
    rlca
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
    rlca
    rlca
    nop
    nop
    rlca
    ccf
    nop
    nop
    rrca
    ld a, a
    nop
    nop
    ccf
    rst $08
    nop
    nop
    dec h
    rst $38
    nop
    nop
    dec h
    rst $38
    nop
    nop
    scf
    ld hl, sp+$00
    nop
    jr c, jr_0ce_4cb7

    nop
    nop
    jr c, jr_0ce_4c7b

    nop
    nop
    daa
    jr c, jr_0ce_4c49

jr_0ce_4c49:
    nop
    jr c, jr_0ce_4c8b

    nop
    nop
    jr c, jr_0ce_4c8f

    nop
    nop
    jr c, jr_0ce_4c93

    nop
    nop
    dec d
    rra
    nop
    nop
    rra
    dec d
    nop
    nop
    rra
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    add hl, bc
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
    nop
    rra
    nop
    nop
    nop

jr_0ce_4c7b:
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
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld [bc], a

jr_0ce_4c8b:
    ld a, [hl]
    nop
    nop
    nop

jr_0ce_4c8f:
    db $fc
    nop
    nop
    nop

jr_0ce_4c93:
    db $fc
    nop
    ld bc, $fc00
    nop
    ld bc, $fc00
    nop
    ld bc, $f800
    nop
    nop
    nop
    ld hl, sp+$00
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    ld bc, $f001

jr_0ce_4cb7:
    ldh a, [rSB]
    ld bc, $f838
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    ld hl, sp-$08
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
    add sp, -$10
    nop
    nop
    add sp, -$28
    nop
    nop
    ret z

    ldh a, [rP1]
    nop
    ldh a, [$f8]
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    adc $fe
    nop
    nop
    sbc h
    rst $38
    nop
    add b
    ld hl, sp-$61
    nop
    ret nz

    jr c, @+$01

    ld b, b
    and b
    jr nc, @+$01

    nop
    ldh [rSVBK], a
    rst $38
    nop
    ldh [$f3], a
    ld a, h
    add b
    nop
    di
    ld a, h
    nop
    add b
    inc bc
    db $fc
    nop
    nop
    or $f9
    nop
    nop
    or $f8
    nop
    nop
    or $f8
    nop
    nop
    ld d, [hl]
    ld hl, sp+$00
    nop
    ld hl, sp+$5e
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    inc a
    call c, RST_00
    inc [hl]
    call z, RST_00
    db $ec
    ldh a, [rP1]
    nop
    add b
    db $fc
    nop
    nop
    add b
    cp $00
    nop
    add b
    cp $00
    nop
    nop
    ld a, $00
    nop
    nop
    ccf
    nop
    nop
    ld bc, $003f
    nop
    rra
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
    add b
    nop
    rrca
    nop
    add b
    nop
    rrca
    nop
    add b
    nop
    rrca
    nop
    ret nz

    nop
    rrca
    nop
    ret nz

    nop
    rlca
    nop
    ret nz

    nop
    rlca
    nop
    add b
    inc bc
    inc bc
    add b
    add b
    inc bc
    inc bc
    cp b
    cp b
    inc bc
    inc bc
    ld hl, sp-$08
    inc bc
    inc bc
    ldh a, [$f0]
    inc bc
    inc bc
    ldh [$e0], a
    inc bc
    inc bc
    ret nz

    ret nz

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
    rlca
    rlca
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
    rlca
    rlca
    nop
    nop
    rlca
    ccf
    nop
    nop
    rrca
    ld a, a
    nop
    nop
    ccf
    rst $08
    nop
    nop
    dec h
    rst $38
    nop
    nop
    dec h
    rst $38
    nop
    nop
    scf
    ld hl, sp+$00
    nop
    jr c, jr_0ce_4e37

    nop
    nop
    jr c, jr_0ce_4e3b

    nop
    nop
    daa
    jr c, jr_0ce_4dc9

jr_0ce_4dc9:
    nop
    jr c, jr_0ce_4e0b

    nop
    nop
    jr c, jr_0ce_4e0f

    nop
    nop
    jr c, jr_0ce_4e13

    nop
    nop
    dec d
    rra
    nop
    nop
    ccf
    dec [hl]
    nop
    nop
    ccf
    ccf
    nop
    nop
    jr nc, jr_0ce_4e03

    nop
    nop
    db $10
    ccf
    nop
    nop
    add hl, bc
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
    nop
    rrca
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
    rra

jr_0ce_4e03:
    rra
    nop
    nop
    nop
    rra
    nop
    nop
    nop

jr_0ce_4e0b:
    ccf
    nop
    nop
    nop

jr_0ce_4e0f:
    ccf
    nop
    nop
    nop

jr_0ce_4e13:
    ld a, a
    nop
    nop
    nop
    ld a, a
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    jr nc, jr_0ce_4e62

    nop
    nop
    jr c, jr_0ce_4e60

jr_0ce_4e28:
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    jr c, jr_0ce_4e28

    nop
    nop
    ld hl, sp-$08
    nop
    nop
    inc e

jr_0ce_4e37:
    ld a, h
    nop
    nop
    ld a, [hl]

jr_0ce_4e3b:
    ld a, [hl]
    nop
    nop
    ld b, $3e
    nop
    nop
    nop
    nop
    ld hl, sp-$08
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
    add sp, -$10
    nop
    nop
    add sp, -$28
    nop
    nop
    ret z

    ldh a, [rP1]
    nop
    ldh a, [$f8]
    nop
    nop

jr_0ce_4e60:
    ldh a, [$f8]

jr_0ce_4e62:
    nop
    nop
    adc $fe
    nop
    nop
    sbc h
    rst $38
    nop
    add b
    ld hl, sp-$61
    nop
    ret nz

    jr c, @+$01

    ld b, b
    and b
    jr nc, @+$01

    nop
    ldh [rSVBK], a
    rst $38
    nop
    ldh [$f0], a
    ld a, a
    nop
    ret nz

    ld sp, hl
    ld a, [hl]
    ret nz

    nop
    ld bc, $c0fe
    nop
    ld hl, sp-$01
    add b
    ld b, b
    ld sp, hl
    cp $80
    nop
    ld sp, hl
    cp $80
    nop
    ld d, c
    cp $80
    nop
    rst $38
    ld d, a
    add b
    nop
    rst $38
    rst $38
    add b
    add b
    rlca
    rst $38
    nop
    add b
    rlca
    ei
    add b
    add b
    db $e3
    db $fc
    nop
    add b
    add b
    cp $00
    nop
    add b
    cp $00
    nop
    add b
    cp $00
    nop
    add b
    cp $00
    nop
    ld b, b
    cp $00
    nop
    jp nz, Jump_000_00fe

    nop
    cp $fe
    nop
    nop
    ld b, b
    cp $00
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    inc a
    nop
    nop
    inc e
    inc e
    nop
    nop
    inc e
    inc e
    nop
    nop
    inc e
    inc e
    nop
    nop
    ld a, $3e
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld a, a
    ld a, a
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
    cp $ff
    nop
    nop
    db $fc
    rst $38
    nop
    nop
    ld hl, sp+$7e
    inc bc
    inc bc
    cp $fe
    add hl, bc
    rrca
    ldh a, [rIE]
    inc bc
    rra
    ldh [rIE], a
    rrca
    inc de
    ld hl, sp-$19
    add hl, bc
    rra
    ld c, b
    rst $38
    add hl, bc
    rra
    ld c, b
    rst $38
    dec c
    ld e, $dc
    ccf
    ld c, $0d
    ld a, $df
    ld c, $0d
    ccf
    rst $18
    ld bc, $c00e
    ccf
    ld c, $0f
    ccf
    rst $38
    ld c, $0f
    ccf
    rst $38
    ld c, $0f
    ccf
    rst $38
    dec b
    rrca
    ld d, l
    rst $38
    rrca
    dec b
    rst $38
    ld d, l
    rrca
    rrca
    rst $38
    rst $38
    inc c
    rrca
    ld bc, $06ff
    rlca
    ld bc, $03ff
    inc bc
    pop bc
    rst $38
    ld [bc], a
    inc bc
    ld bc, $02ff
    inc bc
    inc bc
    rst $38
    ld [bc], a
    inc bc
    inc bc
    rst $38
    nop
    inc bc
    inc bc
    rst $38
    nop
    inc bc
    rlca
    rst $38
    inc bc
    inc bc
    rst $00
    rst $38
    nop
    inc bc
    rst $38
    rst $38
    nop
    inc bc
    ld a, h
    rst $38
    nop
    inc bc
    inc b
    rst $38
    nop
    rlca
    inc b
    rst $38
    nop
    rlca
    inc b
    rst $38
    nop
    rlca
    inc b
    rst $38
    nop
    rlca
    ld [$00ff], sp
    inc bc
    ld [$01ff], sp
    ld bc, $f787
    ld bc, $e701
    rst $20
    inc bc
    inc bc
    rst $28
    rst $28
    inc bc
    inc bc
    rst $38
    rst $38
    rlca
    rlca
    rst $38
    rst $38
    rlca
    rlca
    rst $38
    rst $38
    rlca
    rlca
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
    rrca
    rrca
    ldh a, [$f0]
    dec c
    dec bc
    ldh [$f0], a
    inc c
    adc e
    nop
    ldh a, [rNR31]
    rst $20
    ret nz

    ret nz

    add a
    ld a, c
    ld b, b
    ret nz

    rra
    pop hl
    ld b, b
    ret nz

    rra
    db $e3
    add b
    add b
    nop
    ld hl, sp+$00
    nop
    nop
    ret nz

    nop
    nop
    add b
    add b
    nop
    nop
    nop
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
    add b
    nop
    nop
    add b
    nop
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
    add b
    add b
    nop
    nop
    add b
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
    ret nz

    nop
    nop
    nop
    ret nz

    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ccf
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
    ld a, [hl]
    ld a, a
    nop
    nop
    ld a, [hl]
    ld a, l
    nop
    nop
    ld a, h
    ld a, a
    nop
    nop
    ld a, $3f
    nop
    nop
    rst $38
    rst $38
    ld [bc], a
    inc bc
    ld a, h
    rst $38
    nop
    inc bc
    ld sp, hl
    rst $38
    inc bc
    nop
    rst $38
    ld sp, hl
    ld [bc], a
    inc bc
    ld d, e
    rst $38
    ld [bc], a
    inc bc
    ld d, e
    rst $38
    inc bc
    inc bc
    ld [hl], a
    adc a
    inc bc
    inc bc
    adc a
    db $76
    inc bc
    inc bc
    adc a
    halt
    inc bc
    ld [hl], c
    adc [hl]
    inc bc
    inc bc
    adc a
    cp $03
    inc bc
    adc a
    rst $38
    inc bc
    inc bc
    adc a
    rst $38
    ld bc, $5503
    rst $38
    inc bc
    ld bc, $55ff
    inc bc
    inc bc
    rst $38
    rst $38
    ld [bc], a
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
    nop
    ld a, a
    nop
    nop
    nop
    ld a, a
    nop
    nop
    nop
    ld a, a
    nop
    nop
    rrca
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    rrca
    ld a, a
    nop
    nop
    ld [bc], a
    rst $38
    nop
    nop
    inc b
    rst $38
    nop
    ld bc, $ff04
    nop
    inc bc
    ld [$00ff], sp
    inc bc
    ld [$00ff], sp
    ld bc, $ff10
    ld bc, $f701
    rst $30
    inc bc
    inc bc
    rst $28
    rst $28
    inc bc
    inc bc
    rst $38
    rst $38
    rlca
    rlca
    rst $38
    rst $38
    rlca
    rlca
    rst $38
    rst $38
    rlca
    rlca
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
    add b
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    add b
    nop
    nop
    nop
    add b
    add b
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    add b
    add b
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ret nz

    db $fc
    nop
    nop
    add b
    cp $00
    nop
    adc b
    or $00
    nop
    nop
    cp $00
    nop
    rst $20
    rra
    db $fc
    db $fc
    db $f4
    rrca
    inc a
    ldh [$e7], a
    rra
    ldh [$fc], a
    jp c, $8027

    add b
    ld a, $c7
    add b
    add b
    rst $20
    rra
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    ret nz

    ld b, b
    nop
    nop
    ret nz

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
    add b
    ret nz

    nop
    nop
    add b
    ldh [rP1], a
    nop
    or b
    ldh a, [rP1]
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    jr nc, @-$0e

    nop
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    nop
    nop
    rlca
    rrca
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
    nop
    rra
    nop
    nop
    rra
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
    nop
    ccf
    nop
    nop
    rrca
    ccf
    nop
    nop
    jr nc, jr_0ce_52bb

    nop
    nop
    jr nz, jr_0ce_52bf

    nop
    nop
    jr nz, jr_0ce_52c3

    nop
    nop
    ld [hl+], a
    ccf
    nop
    nop
    ld a, $3f
    nop
    nop
    ld [bc], a
    rra
    nop
    nop
    ld [bc], a
    rrca
    nop
    nop
    ld [bc], a
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    ld bc, $3e7f
    ld a, $00
    rst $38
    daa
    ccf
    add b
    rst $38
    daa
    ccf
    add b
    rst $38
    rra
    rra
    add b
    rst $38
    inc de
    rra
    nop
    rst $38
    rra
    rra
    ld bc, $037f
    rrca
    rlca

jr_0ce_52bb:
    rlca
    rrca
    rrca
    rlca

jr_0ce_52bf:
    rlca
    nop
    nop
    nop

jr_0ce_52c3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    ret nz

    rrca
    rrca
    ldh [$e0], a
    rra
    rra
    ldh a, [$f0]
    ld a, a
    ld a, a
    ldh a, [$d0]
    pop bc
    rst $38
    ldh a, [$f0]
    inc bc
    rst $38
    adc b
    ld hl, sp-$08
    rst $38
    inc a
    db $fc
    ld h, b
    rst $38
    ld a, [hl]
    cp $00
    rst $38
    ld a, [hl]
    cp $e0
    rst $38
    ld a, [hl]
    cp $1c
    rst $38
    ld a, h
    cp $02
    rst $38
    ld [bc], a
    sbc h
    ld bc, $8eff
    sub b
    jp nz, Jump_000_0cfe

    ld [de], a
    ld h, $fe
    ld b, $18
    rla
    rst $38
    ld [bc], a
    inc e
    rrca
    rst $38
    add d
    sbc h
    dec c
    rst $38
    ld [bc], a
    sbc h
    rrca
    db $fd
    add b
    ld e, $10
    cp $1e
    ld e, $10
    cp $1e
    ld e, $10
    db $fc
    ld e, $3e
    db $10
    db $fc
    ld a, [bc]
    ld e, $90
    ld hl, sp+$14
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
    ld hl, sp-$08
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
    rra
    rra
    nop
    nop
    sbc a
    rst $38
    nop
    rlca
    sbc a
    rst $38
    nop
    rrca
    rst $38
    sbc a
    db $10
    rrca
    adc $ff
    nop
    rra
    and $ff
    nop
    rra
    ld [hl], e
    db $fc
    nop
    rra
    ld a, h
    ei
    ld e, $21
    ld a, h
    ei
    ld e, $21
    inc bc
    ld a, h
    ld e, $21
    ld a, h
    ld a, a
    ld [bc], a
    inc a
    ld a, h
    ld a, a
    ld c, $30
    ld a, h
    ld a, a
    rlca
    add hl, de
    ld a, [hl+]
    ld a, a
    inc bc
    rrca
    rst $38
    xor d
    rrca
    rrca
    rst $38
    rst $38
    rrca
    rrca
    add b
    rst $38
    rlca
    rlca
    sub b
    ld a, a
    inc bc
    inc bc
    adc a
    ld a, a
    nop
    nop
    nop
    cp $00
    nop
    nop
    cp $00
    nop
    nop
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
    add h
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld a, b
    db $fc
    nop
    nop
    nop
    db $fc
    nop
    ld bc, $fc00
    nop
    ld bc, $fc00
    nop
    ld bc, $fc00
    nop
    ld bc, $fc00
    nop
    ld bc, $fc00
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    ld bc, $f001
    ldh a, [$03]
    inc bc
    ldh a, [$f0]
    inc bc
    inc bc
    ldh a, [$f0]
    ld bc, $f001
    ldh a, [rP1]
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
    ldh [$e0], a
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
    ldh a, [$f0]
    nop
    nop
    ld a, [c]
    cp $00
    nop
    ld a, [c]
    rst $38
    nop
    ret nz

    cp $f3
    nop
    ldh [$e6], a
    rst $38
    db $10
    ldh [$ce], a
    rst $38
    nop
    ldh a, [$9c]
    ld a, a
    nop
    ldh a, [$7c]
    cp a
    nop
    ldh a, [$7c]
    cp a
    ldh a, [$08]
    add b
    ld a, l
    ldh a, [$08]
    ld a, h
    db $fd
    ldh a, [$08]
    ld a, h
    db $fc
    add b
    ld a, b
    ld a, h
    db $fc
    ldh [rNR23], a
    xor c
    db $fd
    ret nz

    jr nc, @+$01

    xor e
    add b
    ldh [rIE], a
    rst $38
    ldh [$e0], a
    inc bc
    rst $38
    ldh [$e0], a
    inc de
    db $fd
    ret nz

    ret nz

    db $e3
    db $fd
    add b
    add b
    nop
    cp $00
    nop
    nop
    cp $00
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    ld b, d
    ld a, [hl]
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    inc a
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, a
    nop
    nop
    nop
    ld a, a
    nop
    nop
    nop
    ld a, a
    nop
    nop
    nop
    ld a, a
    nop
    nop
    nop
    ld a, a
    nop
    nop
    ld a, $3e
    nop
    nop
    ld e, $1e
    nop
    nop
    ld e, $1e
    nop
    nop
    rra
    rra
    nop
    nop
    rra
    rra
    add b
    add b
    rra
    rra
    add b
    add b
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
    rlca
    rlca
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
    rrca
    rrca
    nop
    ld bc, $ff4f
    nop
    inc bc
    ld c, a
    rst $38
    nop
    rlca
    ld a, a
    rst $08
    inc b
    inc bc
    ld h, a
    rst $38
    nop
    rlca
    ld [hl], e
    rst $38
    nop
    rlca
    add hl, sp
    cp $00
    rlca
    ld a, $fd
    inc bc
    inc b
    ld a, [hl]
    db $fd
    nop
    inc bc
    ld b, c
    cp $00
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    ld a, $3f
    nop
    nop
    ld a, $3f
    nop
    nop
    dec d
    ccf
    nop
    nop
    ccf
    dec d
    nop
    nop
    ccf
    ccf
    nop
    nop
    nop
    ccf
    nop
    nop
    ld [$003f], sp
    nop
    rlca
    ccf
    nop
    nop
    ld bc, $003f
    nop
    ld bc, $007f
    nop
    ld bc, $007f
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    nop
    ld a, a
    nop
    nop
    nop
    ld a, a
    nop
    nop
    nop
    ld a, a
    nop
    nop
    nop
    ld a, a
    nop
    nop
    nop
    ld a, a
    nop
    nop
    nop
    ld a, a
    nop
    nop
    ld a, $3e
    nop
    nop
    inc a
    inc a
    nop
    nop
    inc a
    inc a
    nop
    nop
    inc a
    inc a

jr_0ce_55b4:
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
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
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld sp, hl
    rst $38
    nop
    nop
    ld sp, hl
    rst $38
    nop
    ret nz

    rst $38
    ld sp, hl
    nop
    ldh [$73], a
    rst $38
    jr nz, jr_0ce_55b4

    ld h, a
    rst $38
    nop
    ldh [$ce], a
    ccf
    nop
    ldh [$3e], a
    rst $18
    nop
    ldh [$3f], a
    rst $18
    add b
    ld b, b
    pop bc
    ccf
    nop
    add b
    ccf
    rst $38
    nop
    nop
    ld a, $fe
    nop
    nop
    ld a, $fe
    nop
    nop
    ld d, h
    cp $00
    nop
    cp $54
    nop
    nop
    cp $fe
    nop
    nop
    nop
    db $fc
    nop
    nop
    ld [$00fc], sp
    nop
    ldh a, [$fc]
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
    nop
    cp $00
    nop
    nop
    cp $00
    nop
    nop
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    nop
    ld a, a
    nop
    nop
    nop
    ld a, a
    nop
    nop
    nop
    ld a, a
    nop
    add b
    nop
    ccf
    nop
    add b
    nop
    ccf
    nop
    add b
    nop
    rra
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
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    rra
    rra
    add b
    add b
    rra
    rra
    ret nz

    ret nz

    rra
    rra
    ret nz

    ret nz

    nop
    nop
    nop
    nop
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
    rra
    rra
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
    ccf
    ccf
    ld bc, $3f01
    rst $38
    rrca
    rrca
    ccf
    rst $38
    rra
    rra
    rst $38
    ccf
    rrca
    rra
    sbc l
    rst $38
    rra
    rra
    call Call_000_1eff
    rra
    rst $20
    ld hl, sp+$1e
    rra
    ld hl, sp-$09
    nop
    rra
    ld hl, sp-$09
    nop
    ld e, $07
    ld hl, sp+$10
    ld c, $f8
    rst $38
    db $10
    ld c, $f8
    rst $38
    nop
    ld e, $f8
    rst $38
    ld c, $0f
    ld d, l
    rst $38
    rrca
    ld c, $ff
    ld d, l
    rrca
    rrca
    rst $38
    rst $38
    ld b, $06
    nop
    rst $38
    nop
    nop
    jr nz, @+$01

    nop
    nop
    rra
    rst $38
    nop
    ld bc, $fd00
    nop
    ld bc, $fd00
    nop
    ld bc, $fd00
    nop
    ld bc, $fd00
    nop
    ld bc, $fd00
    nop
    nop
    ld sp, hl
    ld sp, hl
    nop
    nop
    adc c
    ld sp, hl
    nop
    ld bc, $fd00
    nop
    ld bc, $fd00
    nop
    ld bc, $fd00
    nop
    ld bc, $fd00
    nop
    ld bc, $fd00
    nop
    nop
    ld [hl], b
    ld sp, hl
    nop
    nop
    ldh a, [$f1]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld h, h
    ld a, h
    nop
    nop
    db $fc
    db $fc
    ld bc, $c801
    ld hl, sp+$01
    ld bc, $f0f0
    ld bc, $2001
    ldh [rP1], a
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
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

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
    ldh [$e0], a
    nop
    nop
    db $e4
    db $fc
    nop
    nop
    rst $20
    rst $38
    add b
    add b
    rst $38
    rst $20
    ret nz

    ret nz

    rst $08
    rst $38
    add b
    ret nz

    sbc a
    rst $38
    ret nz

    ret nz

    dec sp
    rst $38
    ret nz

    ret nz

    ld sp, hl
    ld a, [hl]
    ret nz

    nop
    ld sp, hl
    ld a, [hl]
    ret nz

    nop
    nop
    ei
    nop
    ret nz

    ld hl, sp-$05
    nop
    ret nz

    ld hl, sp-$05
    nop
    add b
    ei
    ld hl, sp-$80
    nop
    ld d, e
    ld hl, sp-$80
    nop
    ld hl, sp+$53
    nop
    add b
    ei
    rst $38
    add b
    add b
    rlca
    di
    add b
    add b
    daa
    di
    add b
    add b
    jp nz, Jump_000_00f1

    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    ld [$00f8], sp
    nop
    ld hl, sp-$08
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
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
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
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
    nop
    nop
    nop
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
    rra
    rra
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
    ccf
    ccf
    ld bc, $3f01
    rst $38
    rrca
    rrca
    ccf
    rst $38
    rra
    rra
    rst $38
    ccf
    rrca
    rra
    sbc l
    rst $38
    rra
    rra
    call Call_000_1eff
    rra
    rst $20
    ld hl, sp+$1e
    rra
    ld hl, sp-$09
    nop
    rra
    ld hl, sp-$09
    nop
    ld e, $07
    ld hl, sp+$10
    ld c, $f8
    rst $38
    jr jr_0ce_5854

    ld hl, sp-$01
    jr jr_0ce_5858

    ld hl, sp-$01

jr_0ce_5854:
    nop
    ld e, $55
    rst $38

jr_0ce_5858:
    ld c, $0e
    rst $38
    ld d, l
    ld c, $0f
    rst $38
    rst $38
    rrca
    ld c, $00
    rst $38
    ld b, $06
    jr nz, @+$01

    nop
    nop
    rra
    rst $38
    nop
    ld bc, $fd00
    nop
    ld bc, $fd00
    nop
    ld bc, $fd00
    nop
    ld bc, $fd00
    nop
    ld bc, $fdf8
    nop
    nop
    adc b
    ld sp, hl
    nop
    ld bc, $fd01
    nop
    ld bc, $fd01
    nop
    ld bc, $fd00
    nop
    ld bc, $fd00
    nop
    ld bc, $fd00
    nop
    ld bc, $f970
    nop
    nop
    ldh a, [$f1]
    nop
    nop
    ldh a, [$f1]
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld hl, sp-$08
    ld bc, $f801
    ld hl, sp+$03
    inc bc
    ld hl, sp-$08
    inc bc
    inc bc
    pop hl
    pop hl
    nop
    nop
    ld bc, $0001
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
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

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
    ldh [$e0], a
    nop
    nop
    db $e4
    db $fc
    nop
    nop
    rst $20
    rst $38
    add b
    add b
    rst $38
    rst $20
    ret nz

    ret nz

    rst $08
    rst $38
    add b
    ret nz

    sbc a
    rst $38
    ret nz

    ret nz

    dec sp
    rst $38
    ret nz

    ret nz

    ld a, [$007f]
    ret nz

    ld sp, hl
    ld a, [hl]
    ret nz

    nop
    ld bc, $c0fa
    nop
    ld hl, sp-$05
    ld b, b
    add b
    ld hl, sp-$05
    ld b, b
    add b
    ld sp, hl
    ld a, [$4080]
    ld d, c
    ld a, [$0080]
    ld sp, hl
    ld d, d
    add b
    nop
    ld hl, sp-$05
    nop
    add b
    inc bc
    rst $30
    add b
    add b
    daa
    di
    add b
    add b
    rst $00
    di
    add b
    add b
    ld [bc], a
    ld sp, hl
    nop
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
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
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
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
    nop
    nop
    nop
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
    rra
    rra
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
    ccf
    ccf
    ld bc, $3f01
    rst $38
    rrca
    rrca
    ccf
    rst $38
    rra
    rra
    rst $38
    ccf
    rrca
    rra
    sbc l
    rst $38
    rra
    rra
    call Call_000_1eff
    rra
    rst $20
    ld hl, sp+$1e
    rra
    ld hl, sp-$09
    nop
    rra
    ld hl, sp-$09
    jr jr_0ce_59cc

    rlca
    ld hl, sp+$18
    ld b, $f8
    rst $38

jr_0ce_59cc:
    db $10
    ld c, $f8
    rst $38
    inc e
    ld [bc], a
    ld hl, sp-$01
    inc c
    ld [de], a
    ld d, l
    rst $38
    inc c
    ld [de], a
    rst $38
    ld d, l
    ld c, $0e
    rst $38
    rst $38
    ld c, $0f
    nop
    rst $38
    rrca
    ld c, $20
    rst $38
    rrca
    ld c, $1f
    rst $38
    nop
    ld bc, $fd00
    nop
    ld bc, $fd00
    nop
    ld bc, $fd00
    nop
    ld bc, $fd00
    nop
    ld bc, $fd00
    nop
    nop
    ld hl, sp-$07
    nop
    nop
    nop
    ld sp, hl
    nop
    ld bc, $fd01
    nop
    ld bc, $fd01
    nop
    ld bc, $fd00
    nop
    ld bc, $fd00
    nop
    ld bc, $fd00
    nop
    ld bc, $f900
    nop
    nop
    ldh a, [$f1]
    nop
    nop
    ldh a, [$f1]
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld [hl], b
    ld [hl], b
    ld bc, $f801
    ld hl, sp+$01
    ld bc, $f9f9
    nop
    nop
    ld sp, hl
    ld sp, hl
    nop
    nop
    ld bc, $0001
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
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

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
    ldh [$e0], a
    nop
    nop
    db $e4
    db $fc
    nop
    nop
    rst $20
    rst $38
    add b
    add b
    rst $38
    rst $20
    ret nz

    ret nz

    rst $08
    rst $38
    add b
    ret nz

    sbc a
    rst $38
    ret nz

    ret nz

    dec sp
    rst $38
    ret nz

    ret nz

    ei
    ld a, a
    ret nz

    ret nz

    ld hl, sp+$7f
    nop
    ret nz

    nop
    ei
    ret nz

    nop
    ld hl, sp-$05
    ret nz

    nop
    ld hl, sp-$05
    ld b, b
    add b
    ld sp, hl
    ld a, [$00c0]
    ld d, c
    ld a, [$4080]
    ld sp, hl
    ld d, d
    add b
    ld b, b
    ei
    ei
    add b
    add b
    inc bc
    rst $30
    add b
    add b
    daa
    di
    add b
    add b
    rst $00
    di
    add b
    add b
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    ld hl, sp-$08
    nop
    nop
    ld [$00f8], sp
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
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
    ld hl, sp-$08
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
    nop
    nop
    nop
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
    rra
    rra
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
    ccf
    ccf
    ld bc, $3f01
    rst $38
    rrca
    rrca
    ccf
    rst $38
    rra
    rra
    rst $38
    ccf
    rrca
    rra
    sbc l
    rst $38
    rra
    rra
    call Call_000_1eff
    rra
    rst $20
    ld hl, sp+$02
    rra
    ld hl, sp-$09
    inc e
    inc bc
    ld hl, sp-$09
    inc e
    ld [bc], a
    rlca
    ld hl, sp+$10
    ld c, $f8
    rst $38
    db $10
    ld c, $f8
    rst $38
    inc c
    ld [de], a
    ld hl, sp-$01
    inc c
    ld [bc], a
    ld d, l
    rst $38
    inc c
    ld [bc], a
    rst $38
    ld d, l
    nop
    ld c, $ff
    rst $38
    ld c, $0f
    nop
    rst $38
    rrca
    ld c, $20
    rst $38
    rrca
    ld c, $1f
    rst $38
    ld [bc], a
    inc b
    nop
    db $fd
    nop
    ld bc, $fd00
    nop
    ld bc, $fd00
    nop
    ld bc, $fd00
    nop
    ld bc, $fd00
    nop
    nop
    adc b
    ld sp, hl
    nop
    ld bc, $f9f9
    nop
    ld bc, $f901
    nop
    ld bc, $f900
    nop
    ld bc, $f900
    nop
    ld bc, $f900
    nop
    ld bc, $f900
    nop
    ld bc, $f900
    nop
    nop
    nop
    ldh a, [rP1]
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld [hl], b
    ld [hl], b
    ld bc, $f001
    ldh a, [rSB]
    ld bc, $f0f0
    ld bc, $f001
    ldh a, [rP1]
    nop
    ldh a, [$f0]
    nop
    nop
    ld [hl], b
    ld [hl], b
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
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

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
    ldh [$e0], a
    nop
    nop
    db $e4
    db $fc
    nop
    nop
    rst $20
    rst $38
    add b
    add b
    rst $38
    rst $20
    ret nz

    ret nz

    rst $08
    rst $38
    add b
    ret nz

    sbc a
    rst $38
    ret nz

    ret nz

    dec sp
    rst $38
    ret nz

    ret nz

    ei
    ld a, a
    ret nz

    ret nz

    ld hl, sp+$7f
    nop
    ret nz

    nop
    ei
    nop
    ret nz

    ld hl, sp-$05
    ld b, b
    add b
    ld hl, sp-$05
    ret nz

    nop
    ld hl, sp-$05
    ret nz

    nop
    ld d, b
    ei
    nop
    ret nz

    ei
    ld d, e
    add b
    add b
    ei
    rst $38
    add b
    add b
    rlca
    di
    add b
    add b
    inc hl
    di
    nop
    nop
    ret nz

    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    ld hl, sp-$08
    nop
    nop
    ld [$00f8], sp
    nop
    nop
    ld hl, sp+$00
    nop
    nop
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
    nop
    db $fc
    nop
    nop
    ld a, b
    ld hl, sp+$00
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    sbc [hl]
    cp $00
    nop
    ld h, [hl]
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
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
    rra
    rra
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
    ccf
    ccf
    ld bc, $3f01
    rst $38
    rrca
    rrca
    ccf
    rst $38
    rra
    rra
    rst $38
    ccf
    rrca
    rra
    sbc l
    rst $38
    rra
    rra
    call Call_000_1eff
    rra
    rst $20
    ld hl, sp+$1c
    inc bc
    ld hl, sp-$09
    inc e
    inc bc
    ld hl, sp-$09
    nop
    ld e, $07
    ld hl, sp+$00
    ld e, $f8
    rst $38
    nop
    ld c, $f8
    rst $38
    ld c, $00
    ld hl, sp-$01
    ld c, $00
    ld d, l
    rst $38
    nop
    ld c, $ff
    ld d, l
    ld c, $0f
    rst $38
    rst $38
    rrca
    ld c, $00
    ld a, a
    rrca
    ld c, $20
    ld a, a
    ld [bc], a
    inc b
    rra
    ld a, a
    nop
    nop
    nop
    db $fd
    nop
    nop
    nop
    db $fd
    nop
    nop
    nop
    db $fd
    nop
    nop
    nop
    db $fd
    nop
    nop
    nop
    db $fd
    nop
    nop
    add h
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld a, b
    db $fd
    nop
    nop
    nop
    db $fd
    nop
    nop
    nop
    db $fd
    nop
    nop
    nop
    db $fd
    nop
    nop
    nop
    db $fd
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
    ld a, b
    ld a, b
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld a, c
    ld a, c
    nop
    nop
    ld a, c
    ld a, c
    nop
    nop
    ld hl, sp-$08
    ld bc, $f801
    ld hl, sp+$01
    ld bc, $f8f8
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
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

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
    ldh [$e0], a
    nop
    nop
    db $e4
    db $fc
    nop
    nop
    rst $20
    rst $38
    add b
    add b
    rst $38
    rst $20
    ret nz

    ret nz

    rst $08
    rst $38
    add b
    ret nz

    sbc a
    rst $38
    ret nz

    ret nz

    dec sp
    rst $38
    ret nz

    ret nz

    ei
    ld a, a
    ret nz

    ret nz

    ld hl, sp+$7f
    nop
    ret nz

    nop
    ei
    nop
    ret nz

    ld hl, sp-$05
    ld b, b
    add b
    ld hl, sp-$05
    ld b, b
    add b
    ld hl, sp-$05
    nop
    ret nz

    ld d, e
    rst $38
    add b
    add b
    rst $38
    ld d, e
    add b
    add b
    rst $38
    rst $38

jr_0ce_5d9e:
    add b
    add b
    inc bc
    ei
    nop
    nop
    jr nz, jr_0ce_5d9e

    nop
    nop
    ret nz

    ld hl, sp+$00
    nop
    nop
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
    nop
    db $fc
    nop
    nop
    nop
    db $fc
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    adc b
    ld hl, sp+$00
    nop
    nop
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
    nop
    db $fc
    nop
    nop
    nop
    db $fc
    nop
    nop
    ld [hl], b
    ld hl, sp+$00
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    jr nc, @-$0e

    nop
    nop
    ld hl, sp-$08
    nop
    nop
    sbc h
    db $fc
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    inc h
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
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
    rra
    rra
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
    ccf
    ccf
    ld bc, $3f01
    rst $38
    rrca
    rrca
    ccf
    rst $38
    rra
    rra
    rst $38
    ccf
    rrca
    rra
    sbc l
    rst $38
    rra
    rra
    call Call_000_1eff
    rra
    rst $20
    ld hl, sp+$02
    rra
    ld hl, sp-$09
    inc e
    inc bc
    ld hl, sp-$09
    inc e
    ld [bc], a
    rlca
    ld hl, sp+$10
    ld c, $f8
    rst $38
    db $10
    ld c, $f8
    rst $38
    inc c
    ld [de], a
    ld hl, sp-$01
    inc c
    ld [bc], a
    ld d, l
    rst $38
    inc c
    ld [bc], a
    rst $38
    ld d, l
    nop
    ld c, $ff
    rst $38
    ld c, $0f
    nop
    ld a, a
    rrca
    ld c, $20
    ld a, a
    rrca
    ld c, $1f
    ld a, a
    ld [bc], a
    inc b
    nop
    db $fd
    nop
    nop
    nop
    db $fd
    nop
    nop
    nop
    db $fd
    nop
    nop
    nop
    db $fd
    nop
    nop
    nop
    db $fd
    nop
    nop
    nop
    db $fc
    nop
    nop
    db $fc
    db $fd
    nop
    nop
    db $fc
    db $fd
    nop
    nop
    nop
    db $fd
    nop
    nop
    nop
    db $fd
    nop
    nop
    nop
    db $fd
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
    nop
    db $fc
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld a, b
    ld a, b
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
    db $fc
    db $fc
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
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

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
    ldh [$e0], a
    nop
    nop
    db $e4
    db $fc
    nop
    nop
    rst $20
    rst $38
    add b
    add b
    rst $38
    rst $20
    ret nz

    ret nz

    rst $08
    rst $38
    add b
    ret nz

    sbc a
    rst $38
    ret nz

    ret nz

    dec sp
    rst $38
    ret nz

    ret nz

    ei
    ld a, a
    ret nz

    ret nz

    ld hl, sp+$7f
    nop
    ret nz

    nop
    ei
    nop
    ret nz

    ld hl, sp-$05
    ld b, b
    add b
    ld hl, sp-$05
    ret nz

    nop
    ld hl, sp-$05
    ret nz

    nop
    ld d, b
    ei
    nop
    ret nz

    ei
    ld d, e
    add b
    add b
    ei
    rst $38
    add b
    add b
    rlca
    ei
    add b
    add b
    inc hl
    ei
    nop
    nop
    ret nz

    ld hl, sp+$00
    nop
    nop
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
    nop
    db $fc
    nop
    nop
    ld hl, sp-$04
    nop
    nop
    adc b
    ld hl, sp+$00
    nop
    nop
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
    nop
    db $fc
    nop
    nop
    nop
    db $fc
    nop
    nop
    ld [hl], b
    db $fc
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    cp $fe
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
    rra
    rra
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
    ccf
    ccf
    ld bc, $3f01
    rst $38
    rrca
    rrca
    ccf
    rst $38
    rra
    rra
    rst $38
    ccf
    rrca
    rra
    sbc l
    rst $38
    rra
    rra
    call Call_000_1eff
    rra
    rst $20
    ld hl, sp+$1e
    rra
    ld hl, sp-$09
    nop
    rra
    ld hl, sp-$09
    jr jr_0ce_5fcc

    rlca
    ld hl, sp+$18
    ld b, $f8
    rst $38

jr_0ce_5fcc:
    db $10
    ld c, $f8
    rst $38
    inc e
    ld [bc], a
    ld hl, sp-$01
    inc c
    ld [de], a
    ld d, l
    rst $38
    inc c
    ld [de], a
    rst $38
    ld d, l
    ld c, $0e
    rst $38
    rst $38
    ld c, $0f
    nop
    ld a, a
    rrca
    ld c, $20
    ld a, a
    rrca
    ld c, $1f
    ld a, a
    nop
    nop
    nop
    db $fd
    nop
    nop
    nop
    db $fd
    nop
    nop
    nop
    db $fd
    nop
    nop
    nop
    db $fd
    nop
    nop
    nop
    db $fd
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
    db $fd
    nop
    nop
    add h
    db $fd
    nop
    nop
    nop
    db $fd
    nop
    nop
    nop
    db $fd
    nop
    nop
    nop
    db $fd
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
    nop
    db $fc
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    db $fc
    db $fc
    ld bc, $fc01
    db $fc
    ld bc, $fc01
    db $fc
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
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

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
    ldh [$e0], a
    nop
    nop
    db $e4
    db $fc
    nop
    nop
    rst $20
    rst $38
    add b
    add b
    rst $38
    rst $20
    ret nz

    ret nz

    rst $08
    rst $38
    add b
    ret nz

    sbc a
    rst $38
    ret nz

    ret nz

    dec sp
    rst $38
    ret nz

    ret nz

    ei
    ld a, a
    ret nz

    ret nz

    ld hl, sp+$7f
    nop
    ret nz

    nop
    ei
    ret nz

    nop
    ld hl, sp-$05
    ret nz

    nop
    ld hl, sp-$05
    ld b, b
    add b
    ld sp, hl
    ld a, [$00c0]
    ld d, c
    ld a, [$4080]
    ld sp, hl
    ld d, d
    add b
    ld b, b
    ei
    ei
    add b
    add b
    inc bc
    rst $38
    add b
    add b
    daa
    ei
    add b
    add b
    rst $00
    ei
    add b
    add b
    nop
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
    nop
    db $fc
    nop
    nop
    nop
    db $fc
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
    nop
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
    nop
    db $fc
    nop
    nop
    nop
    db $fc
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld [hl], b
    ld [hl], b
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
    ld hl, sp-$08
    nop
    nop
    nop
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
    rra
    rra
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
    ccf
    ccf
    ld bc, $3f01
    rst $38
    rrca
    rrca
    ccf
    rst $38
    rra
    rra
    rst $38
    ccf
    rrca
    rra
    sbc l
    rst $38
    rra
    rra
    call Call_000_1eff
    rra
    rst $20
    ld hl, sp+$1e
    rra
    ld hl, sp-$09
    nop
    rra
    ld hl, sp-$09
    nop
    ld e, $07
    ld hl, sp+$10
    ld c, $f8
    rst $38
    jr jr_0ce_6154

    ld hl, sp-$01
    jr jr_0ce_6158

    ld hl, sp-$01

jr_0ce_6154:
    nop
    ld e, $55
    rst $38

jr_0ce_6158:
    ld c, $0e
    rst $38
    ld d, l
    ld c, $0f
    rst $38
    rst $38
    rrca
    ld c, $00
    ld a, a
    ld b, $06
    jr nz, jr_0ce_61e7

    nop
    nop
    rra
    rst $38
    nop
    nop
    nop
    db $fd
    nop
    nop
    nop
    db $fd
    nop
    nop
    nop
    db $fd
    nop
    nop
    nop
    db $fd
    nop
    nop
    nop
    db $fd
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
    add h
    db $fc
    nop
    nop
    nop
    db $fc
    nop
    ld bc, $fc00
    nop
    ld bc, $fc00
    nop
    ld bc, $fc00
    nop
    ld bc, $fc00
    nop
    nop
    ldh a, [$f8]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld [hl], b
    ld [hl], b

jr_0ce_61b0:
    nop
    nop
    ld hl, sp-$08
    ld bc, $f801
    ld hl, sp+$03
    inc bc
    ret z

    ld hl, sp+$03
    inc bc
    jr nc, jr_0ce_61b0

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
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

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
    ldh [$e0], a
    nop
    nop
    db $e4
    db $fc
    nop

jr_0ce_61e7:
    nop
    rst $20
    rst $38
    add b
    add b
    rst $38
    rst $20
    ret nz

    ret nz

    rst $08
    rst $38
    add b
    ret nz

    sbc a
    rst $38
    ret nz

    ret nz

    dec sp
    rst $38
    ret nz

    ret nz

    ld a, [$007f]
    ret nz

    ld sp, hl
    ld a, [hl]
    ret nz

    nop
    ld bc, $c0fa
    nop
    ld hl, sp-$05
    ld b, b
    add b
    ld hl, sp-$05
    ld b, b
    add b
    ld sp, hl
    ld a, [$4080]
    ld d, c
    ld a, [$0080]
    ld sp, hl
    ld d, d
    add b
    nop
    ld hl, sp-$05
    nop
    add b
    inc bc
    rst $38
    add b
    add b
    daa
    ei
    add b
    add b
    rst $00
    ei
    add b
    add b
    ld [bc], a
    ld sp, hl
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
    nop
    db $fc
    nop
    nop
    nop
    db $fc
    nop
    nop
    adc b
    ld hl, sp+$00
    nop
    ld hl, sp-$04
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
    nop
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
    nop
    db $fc
    nop
    nop
    nop
    ld a, b
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
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
    dec de
    rla
    nop
    nop
    rra
    ld a, a
    ld bc, $9f07
    rst $38
    ld bc, $9f0f
    rst $38
    add hl, bc
    rlca
    rst $38
    sbc a
    inc bc
    rrca
    adc $ff
    inc bc
    rrca
    and $ff
    inc bc
    rrca
    di
    db $fc
    inc bc
    rlca
    db $fc
    ei
    ld bc, $fc03
    ei
    nop
    ld bc, $fc03
    ld bc, $fc01
    rst $38
    nop
    nop
    db $fc
    rst $38
    nop
    nop
    db $fc
    rst $38
    nop
    nop
    xor d
    rst $38
    nop
    nop
    rst $38
    xor d
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    ld a, a
    nop
    nop
    ld [$007f], sp
    nop
    rlca
    ld a, a
    nop
    nop
    nop
    cp $00
    nop
    nop
    cp $00
    nop
    nop
    cp $00
    nop
    nop
    cp $01
    ld bc, $fc04
    ld bc, $fc01
    db $fc
    nop
    ld bc, $fcf8
    nop
    ld bc, $fc00
    nop
    ld bc, $fc00
    nop
    ld bc, $fc00
    nop
    ld bc, $fc00
    nop
    ld bc, $fc00
    nop
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld hl, sp-$08
    ld bc, $f801
    ld hl, sp+$03
    inc bc
    ld hl, sp-$08
    inc bc
    inc bc
    ld hl, sp-$08
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
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$01
    nop
    nop
    ldh a, [rIE]
    nop
    add b
    ldh a, [rIE]
    nop
    ret nz

    db $fc
    di
    ld b, b
    add b
    db $e4
    rst $38
    nop
    ret nz

    call z, Call_000_00ff
    add b
    sbc h
    ld a, a
    nop
    nop
    ld a, h
    cp h
    nop
    nop
    ld a, h
    cp h
    nop
    nop
    add b
    ld a, h
    nop
    nop
    ld a, h
    db $fc
    nop
    nop
    ld a, h
    db $fc
    nop
    nop
    ld a, h
    db $fc
    nop
    nop
    xor b
    db $fc
    nop
    nop
    db $fc
    xor b
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    nop
    db $fc

jr_0ce_63a2:
    nop
    nop
    jr nz, jr_0ce_63a2

    nop
    nop
    ret nz

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
    nop
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
    add h
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld a, b
    db $fc
    nop
    nop
    nop
    db $fc
    nop
    nop
    nop
    cp $00
    nop
    nop
    cp $00
    nop
    nop
    cp $00
    nop
    nop
    cp $00
    nop
    nop
    cp $00
    nop
    nop
    ld a, h
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    inc a
    inc a
    nop
    nop
    ld a, $3e
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    add b
    add b
    ccf
    ccf
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
    rra
    rra
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
    ld a, a
    ld a, a
    ld bc, $3f01
    rst $38
    ld bc, $3f03
    rst $38
    nop
    rlca
    rst $38
    ccf
    inc b
    inc bc
    sbc l
    rst $38
    nop
    rlca
    call Call_000_00ff
    rlca
    rst $20
    ld hl, sp+$00
    rlca
    ld hl, sp-$09
    ld [bc], a
    dec b
    ld hl, sp-$09
    nop
    rlca
    rlca
    ld hl, sp+$00
    nop
    ld hl, sp-$01
    nop
    nop
    ld hl, sp-$01
    nop
    nop
    ld hl, sp-$01
    nop
    nop
    ld d, l
    rst $38
    nop
    nop
    rst $38
    ld d, l
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    ld bc, $ff10
    nop
    ld bc, $ff0f
    nop
    ld bc, $ff02
    nop
    ld bc, $ff03
    nop
    ld bc, $fe02
    nop
    nop
    add h
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    ld bc, $fc00
    nop
    ld bc, $fd00
    nop
    ld bc, $ff00
    nop
    ld bc, $ff00
    nop
    ld bc, $ff00
    nop
    nop
    nop
    ld sp, hl
    nop
    nop
    ld sp, hl
    ld sp, hl
    nop
    nop
    ld a, c
    ld a, c
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    nop
    ldh a, [$f0]
    ld bc, $f901
    ld sp, hl
    inc bc
    inc bc
    ld sp, hl
    ld sp, hl
    inc bc
    inc bc
    ld sp, hl
    ld sp, hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

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
    ldh [$e0], a
    nop
    nop
    db $e4
    db $fc
    nop
    nop
    ldh [rIE], a
    nop
    nop
    ld hl, sp-$19
    nop
    add b
    ret z

    rst $38
    ld b, b
    add b
    sbc [hl]
    rst $38
    nop
    ret nz

    ld a, [hl-]
    rst $38
    nop
    ret nz

    ld a, [$007f]
    ret nz

    ld a, [$807f]
    ld b, b
    ld [bc], a
    rst $38
    add b
    ld b, b
    ld a, [$80ff]
    ld b, b
    cp $ff
    nop
    add b
    ld hl, sp-$08
    nop
    nop
    ld d, b
    ld hl, sp+$00
    nop
    ld hl, sp+$50
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    nop
    ld hl, sp+$00
    nop
    ld b, b
    db $fc
    nop
    nop
    add b
    db $fc
    nop
    nop
    nop
    cp $00
    nop
    nop
    cp $00
    nop
    add b
    cp $00
    nop
    ld b, d
    ld a, [hl]
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    nop
    cp $00
    nop
    nop
    cp $00
    nop
    nop
    cp $00
    nop
    nop
    db $fc
    nop
    nop
    nop
    db $fc
    nop
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
    ldh a, [$f0]
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
    rst $38
    rst $38
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
    inc a
    ccf
    nop
    nop
    ccf
    ld a, a
    ld bc, $b801
    rst $38
    inc bc
    inc bc
    add e
    rst $38
    rlca
    rlca
    add b
    rst $38
    inc bc
    rlca
    add b
    rst $38
    rlca
    rlca
    add a
    rst $38
    rlca
    rlca
    ret c

    rst $38
    inc bc
    nop
    ldh [$7f], a
    inc bc
    nop
    ldh [$3f], a
    ld bc, $1702
    rst $38
    nop
    ld bc, $ff18
    nop
    nop
    db $10
    rst $38
    nop
    nop
    db $10
    ccf
    nop
    nop
    inc b
    ccf
    nop
    nop
    inc bc
    ld a, a
    nop
    nop
    nop
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    jr nz, jr_0ce_665b

    nop
    nop
    nop
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
    ld bc, $000f
    nop
    ld c, $0e
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

jr_0ce_665b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld e, $fe
    nop
    nop
    cp $ff
    nop
    nop
    ld c, $ff
    ldh [$e0], a
    ldh [rIE], a
    ldh a, [$f0]
    add b
    rst $38
    ldh [$f0], a
    nop
    rst $38
    ldh a, [$f0]
    ldh a, [rIE]
    ldh a, [$f0]
    dec c
    rst $38
    or b
    ret nz

    inc bc
    rst $38
    ld [hl], b
    add b
    inc bc
    rst $38
    ld [hl], b
    add b
    ld a, [$00fe]
    ld [hl], b
    ld b, $fe
    nop
    ldh a, [rSC]
    cp $80
    ld [hl], b
    ld [bc], a
    cp $80
    ld [hl], b
    ld [$80fe], sp
    ld [hl], b
    ldh a, [$fe]
    ldh [$f0], a
    add b
    cp $f0
    ldh a, [$81]
    rst $38
    ldh [$e0], a
    add b
    rst $38
    ldh [$e0], a
    add c
    cp a
    ldh [$e0], a
    nop
    cp [hl]
    nop
    and b
    ld bc, $c0bf
    ret nz

    rra
    ccf
    nop
    ldh [rNR42], a
    ccf
    nop
    ldh [rNR42], a
    ccf
    ldh [$e0], a
    ld hl, $803f
    ldh a, [rNR41]
    ccf
    ld hl, sp-$08
    jr nc, jr_0ce_6739

    ld b, b
    ld hl, sp+$1c
    inc e
    jr c, jr_0ce_6738

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
    dec b
    inc bc
    nop
    nop
    dec b
    ld b, $00
    nop
    inc b
    inc bc
    nop
    nop
    inc bc
    rlca
    nop
    nop
    inc bc
    rlca
    nop
    nop
    inc e
    rra
    nop
    nop
    ld c, $7f
    nop
    nop
    rlca
    cp $00
    ld bc, $7f87
    nop
    inc bc
    inc bc
    rst $38

jr_0ce_6738:
    nop

jr_0ce_6739:
    inc bc
    inc bc
    rst $38
    nop
    inc bc
    jp $013f


    nop
    rst $20
    rra
    nop
    ld bc, $1fe0
    nop
    ld bc, $9f6f
    nop
    ld bc, $1fef
    nop
    ld bc, $1fef
    nop
    ld bc, $3fca
    ld bc, $df01
    ld [$0001], a
    rst $38
    rst $38
    ld bc, $e001
    rst $38
    ld bc, $c000
    ld a, a
    nop
    nop
    pop bc
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
    nop
    ld a, a
    nop
    nop
    nop
    ld a, a
    nop
    nop
    nop
    ld a, a
    nop
    nop
    ld b, b
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
    ld b, b
    ld a, a
    nop
    nop
    nop
    ld a, a
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
    nop
    ccf
    nop
    nop
    nop
    ccf
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
    ld e, $1e
    nop
    nop
    ld e, $1e
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld bc, $ff01
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    nop
    nop
    nop
    nop

jr_0ce_67c4:
    ldh a, [$f0]
    nop
    nop

jr_0ce_67c8:
    ld hl, sp-$08
    nop
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
    ld hl, sp-$08
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$02
    nop
    nop

jr_0ce_67e8:
    ld a, h
    rst $38
    nop
    ret nz

    rst $38
    ld a, h
    nop
    ldh a, [$29]
    rst $38
    nop
    ldh a, [$29]
    rst $38
    nop
    ld hl, sp-$45
    rst $00
    nop
    ld hl, sp-$39
    cp e
    jr nc, jr_0ce_67c8

    rst $00
    cp e
    jr c, jr_0ce_67c4

    jr c, @-$37

    jr c, jr_0ce_67c8

    rst $00
    rst $38
    ld [hl], b
    adc b
    rst $00
    rst $38
    ld [hl], b
    adc b
    rst $00
    rst $38
    ld h, b
    sub b
    xor d
    rst $38
    jr nz, jr_0ce_67e8

    rst $38
    xor d
    add b
    ldh [rIE], a
    rst $38
    ret nz

    ldh [rSB], a
    rst $38
    ret nz

    ret nz

    ld bc, $80ff
    add b
    pop hl
    cp $00
    nop
    ld b, b
    cp $00
    nop
    ld b, b
    cp $00
    nop
    ld b, b
    cp $00
    nop
    ld b, b
    cp $00
    nop
    ret nz

    cp $00
    nop
    jp nz, Jump_000_00fe

    nop
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    jp nz, Jump_000_00fe

    nop
    ld b, b
    cp $00
    nop
    ld b, b
    cp $00
    nop
    ld b, b
    cp $00
    nop
    ld b, b
    cp $00
    nop
    ld b, b
    cp $00
    nop
    ld a, h
    ld a, h
    nop
    nop
    inc a
    inc a
    nop
    nop
    inc a
    inc a
    nop
    nop
    inc a
    inc a
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
    dec b
    inc bc
    nop
    nop
    dec b
    ld b, $00
    nop
    inc b
    inc bc
    nop
    nop
    ld bc, $0007
    nop
    rra
    rra
    nop
    nop
    ld a, h
    ld a, a
    nop
    nop
    ld e, $ff
    nop
    ld bc, $fe0f
    nop
    ld bc, $7f8f
    nop
    ld bc, $ff0f
    nop
    ld bc, $ff0f
    nop
    inc bc
    rra
    rst $38
    ld bc, $ff02
    rra
    nop
    ld bc, $3fc0
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
    rrca
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    rrca
    ld a, [bc]
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
    nop
    rrca
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
    nop
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
    db $10
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
    db $10
    rra
    nop
    nop
    nop
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
    rrca
    nop
    nop
    nop
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
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rra
    rra
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    rst $38
    rst $38
    nop
    nop
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
    db $fc
    db $fc
    nop
    nop
    ld sp, hl
    rst $38
    nop
    add b
    ld a, h
    rst $38
    nop
    ret nz

    rst $38
    ld a, h
    nop
    ret nz

    add hl, hl
    rst $38
    nop
    ret nz

    add hl, hl
    rst $38
    nop
    ret nz

    cp e
    rst $00
    nop
    ret nz

    rst $00
    cp e
    nop
    ret nz

    rst $00
    cp e
    nop
    add b
    jr c, @-$37

    nop
    nop
    rst $00
    rst $38
    nop
    nop
    rst $00
    rst $38
    nop
    nop
    rst $00
    rst $38
    nop
    nop
    xor d
    rst $38
    nop
    nop
    rst $38
    xor d
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld bc, $00ff
    nop
    add d
    cp $00
    nop
    ld a, h
    cp $00
    nop

jr_0ce_69ac:
    jr nz, jr_0ce_69ac

    nop
    nop

jr_0ce_69b0:
    jr nz, jr_0ce_69b0

    nop
    nop

jr_0ce_69b4:
    jr nz, jr_0ce_69b4

    nop
    nop

jr_0ce_69b8:
    jr nz, jr_0ce_69b8

    nop
    nop

jr_0ce_69bc:
    jr nz, jr_0ce_69bc

    nop
    nop

jr_0ce_69c0:
    jr nz, jr_0ce_69c0

    nop
    nop
    cp $fe
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    jr nz, @+$01

    nop
    add b
    jr nz, @+$01

    nop
    add b
    jr nz, @+$01

    nop
    add b
    jr nz, @+$01

    nop
    add b
    jr nz, @+$01

    nop
    add b
    jr nz, @+$01

    nop
    nop
    rst $18
    rst $18
    nop
    nop
    rst $08
    rst $08
    nop
    nop
    adc a
    adc a
    nop
    nop
    adc a
    adc a
    nop
    nop
    sbc a
    sbc a
    add b
    add b
    rst $18
    rst $18
    ret nz

    ret nz

    rst $18
    rst $18
    ret nz

    ret nz

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
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    rla
    rrca
    nop
    nop
    rla
    dec de
    nop
    nop
    inc de
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
    ld [hl], e
    ld a, a
    nop
    ld bc, $ff39
    nop
    inc bc
    rra
    ld sp, hl
    ld [bc], a
    dec b
    inc e
    rst $38
    nop
    rlca
    inc c
    rst $38
    nop
    rlca
    ld c, $ff
    nop
    inc bc
    rrca
    cp $03
    nop
    rra
    cp $03
    nop
    nop
    rst $38
    ld [bc], a
    ld bc, $ff3f
    inc bc
    nop
    ccf
    rst $38
    inc bc
    nop
    ccf
    rst $38
    inc bc
    nop
    ld a, [hl+]
    rst $38
    inc bc
    inc bc
    rst $38
    ld [$0303], a
    rst $38
    rst $38
    inc bc
    inc bc
    ret nz

    rst $38
    inc bc
    inc bc
    ret nz

    cp a
    inc bc
    nop
    add a
    ld a, a
    nop
    nop
    ld [bc], a
    ccf
    nop
    nop
    ld [bc], a
    ld a, a
    nop
    nop
    ld [bc], a
    ld a, a
    nop
    nop
    inc b
    ld a, a
    nop
    nop
    db $fc
    rst $38
    nop
    nop
    add h
    rst $38
    nop
    nop
    rlca
    rst $38
    nop
    nop
    rlca
    rst $38
    nop
    nop
    inc b
    ld a, a
    nop
    nop
    ld [bc], a
    ld a, a
    nop
    nop
    ld [bc], a
    ld a, a
    nop
    nop
    ld [bc], a
    ld a, a
    nop
    nop
    ld [bc], a
    ccf
    nop
    nop
    inc a
    ccf
    nop
    nop
    inc a
    dec a
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
    jr c, jr_0ce_6af7

    nop
    nop
    ld h, e
    ld a, a
    nop
    nop
    rrca
    rrca
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
    ldh [$e0], a
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
    ldh [$e0], a
    nop
    nop
    ldh [$fc], a
    nop
    nop
    ldh a, [$fe]
    nop
    nop
    db $fc
    di
    nop
    nop
    and h
    rst $38
    nop
    nop
    and h
    rst $38
    nop

jr_0ce_6af7:
    nop
    db $ec
    rra
    nop
    nop
    inc e
    xor $00
    nop
    inc e
    xor $00
    nop
    db $e4
    ld e, $00
    nop
    inc e
    cp $00
    nop
    inc e
    cp $00
    nop
    inc e
    cp $00
    nop
    xor [hl]
    cp $00
    nop
    cp $ae
    nop
    nop
    cp $fe
    nop
    nop
    ld c, $fc
    nop
    nop
    inc c
    ld a, [$0000]
    sub b
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ldh a, [rP1]
    nop
    ret nz

    ret nz

    nop
    nop
    ret nz

    ret nz

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
    ldh [$e0], a
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
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    rla
    rrca
    nop
    nop
    rla
    dec de
    nop
    nop
    inc de
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
    ld [hl], e
    ld a, a
    nop
    ld bc, $ff39
    nop
    inc bc
    rra
    ld sp, hl
    ld [bc], a
    dec b
    inc e
    rst $38
    nop
    rlca
    inc c
    rst $38
    nop
    rlca
    ld c, $ff
    nop
    inc bc
    rrca
    cp $03
    nop
    sbc a
    ld a, [hl]
    inc bc
    nop
    add b
    ld a, a
    ld bc, $1f02
    rst $38
    ld bc, $9f00
    ld a, a
    ld bc, $9f00
    ld a, a
    ld bc, $8a00
    ld a, a
    ld bc, $ff00
    ld [$0101], a
    rst $38
    rst $38
    nop
    ld bc, $ffe0
    ld bc, $e001
    rst $18
    nop
    ld bc, $3fc7
    nop
    nop
    ld [bc], a
    ld a, a
    nop
    nop
    ld [bc], a
    ld a, a
    nop
    nop
    ld [bc], a
    rst $38
    nop
    nop
    nop
    db $fd
    nop
    nop
    nop
    db $fd
    ld bc, $f801
    ld sp, hl
    nop
    ld bc, $f900
    nop
    ld bc, $f101
    nop
    inc bc
    ld bc, $00f1
    inc bc
    nop
    pop af
    nop
    inc bc
    nop
    pop af
    nop
    inc bc
    nop
    pop af
    nop
    inc bc
    nop
    pop af
    nop
    inc bc
    nop
    pop af
    ld bc, $c001
    ret nz

    ld bc, $c001
    ret nz

    ld bc, $c001
    ret nz

    rra
    rra
    ret nz

    ret nz

    rrca
    rrca
    pop bc
    pop bc
    inc bc
    inc bc
    jp Jump_000_00c3


    nop
    rlca
    rlca
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
    ldh [$e0], a
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
    ldh [$e0], a
    nop
    nop
    ldh [$fc], a
    nop
    nop
    ldh a, [$fe]
    nop
    nop
    db $fc
    di
    nop
    nop
    and h
    rst $38
    nop
    nop
    and h
    rst $38
    nop
    nop
    db $ec
    rra
    nop
    nop
    inc e
    xor $00
    nop
    inc e
    xor $00
    nop
    db $e4
    inc e
    nop
    nop
    inc e
    db $fc
    nop
    nop
    inc e
    db $fc
    nop
    nop
    inc e
    db $fc
    nop
    nop
    xor b
    ld hl, sp+$00
    nop
    db $fc
    xor h
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    inc c
    ld hl, sp+$00
    nop
    ld [$00fc], sp
    nop
    sub b
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
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
    nop
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
    nop
    db $fc
    nop
    nop
    nop
    ld hl, sp+$00
    nop
    ldh [$e0], a
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
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
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
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    rla
    rrca
    nop
    nop
    rla
    dec de
    nop
    nop
    inc de
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
    ld [hl], e
    ld a, a
    nop
    ld bc, $ff39
    nop
    inc bc
    rra
    ld sp, hl
    ld [bc], a
    dec b
    inc e
    rst $38
    nop
    rlca
    inc c
    rst $38
    nop
    rlca
    ld c, $ff
    ld bc, $cf00
    ld a, $00
    ld bc, $3ecf
    nop
    nop
    ret nz

    ccf
    nop
    nop
    ld l, a
    sbc a
    nop
    nop
    ld l, a
    rra
    nop
    nop
    ld l, a
    rra
    nop
    nop
    ld l, d
    rra
    nop
    nop
    rra
    ld a, d
    nop
    nop
    ccf
    ccf
    nop
    nop
    inc a
    dec sp
    nop
    nop
    inc l
    inc sp
    nop
    nop
    scf
    rrca
    nop
    nop
    ld bc, $003f
    nop
    ld bc, $007f
    nop
    ld bc, $007f
    nop
    nop
    ld a, h
    nop
    nop
    nop
    db $fc
    nop
    nop
    add b
    db $fc
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    nop
    ld hl, sp+$00
    ld bc, $f800
    nop
    ld bc, $f000
    nop
    ld bc, $f000
    nop
    inc bc
    nop
    ldh a, [rP1]
    inc bc
    nop
    ldh a, [rP1]
    inc bc
    nop
    ldh [rP1], a
    ld bc, $e000
    ld bc, $c001
    ret nz

    dec e
    dec e
    ret nz

    ret nz

    rra
    rra
    ret nz

    ret nz

    rrca
    rrca
    ret nz

    ret nz

    rlca
    rlca
    ret nz

    ret nz

    inc bc
    inc bc
    ret nz

    ret nz

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
    ldh [$e0], a
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
    ldh [$e0], a
    nop
    nop
    ldh [$fc], a
    nop
    nop
    ldh a, [$fe]
    nop
    nop
    db $fc
    di
    nop
    nop
    and h
    rst $38
    nop
    nop
    and h
    rst $38
    nop
    nop
    db $ec
    rra
    nop
    nop
    inc e
    xor $00
    nop
    inc e
    db $ec
    nop
    nop
    db $e4
    inc e
    nop
    nop
    inc e
    db $fc
    nop
    nop
    inc e
    db $fc
    nop
    nop
    inc e
    db $fc
    nop
    nop
    xor b
    ld hl, sp+$00
    nop
    ld hl, sp-$58
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    sub b
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
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
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld b, b
    ld a, [hl]
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
    nop
    ccf
    nop
    add b
    nop
    ccf
    nop
    add b
    nop
    rra
    nop
    add b
    nop
    rra
    nop
    nop
    ld c, $0e
    nop
    nop
    ld c, $0e
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
    add b
    add b
    inc e
    rra
    add b
    add b
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
    rla
    rrca
    nop
    nop
    rla
    dec de
    nop
    nop
    inc de
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
    ld [hl], e
    ld a, a
    nop
    ld bc, $ff39
    nop
    inc bc
    rra
    ld sp, hl
    ld [bc], a
    dec b
    inc e
    rst $38
    nop
    rlca
    inc c
    rst $38
    nop
    rlca
    ld c, $ff
    nop
    inc bc
    rrca
    cp $03
    nop
    sbc a
    ld a, [hl]
    inc bc
    nop
    add b
    ld a, a
    ld bc, $1f02
    rst $38
    ld bc, $9f00
    ld a, a
    ld bc, $9f00
    ld a, a
    ld bc, $8a00
    ld a, a
    ld bc, $ff00
    ld [$0101], a
    rst $38
    rst $38
    nop
    ld bc, $ffe0
    ld bc, $e001
    rst $18
    nop
    ld bc, $3fc7
    nop
    nop
    ld bc, $007f
    nop
    ld bc, $007f
    nop
    ld bc, $007f
    nop
    ld bc, $007f
    nop
    ld [bc], a
    ld a, a
    nop
    nop
    ld b, e
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld [bc], a
    ld a, a
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    inc a
    nop
    nop
    jr c, jr_0ce_6f64

    nop
    nop
    jr c, jr_0ce_6f68

    nop
    nop
    jr c, jr_0ce_6f6c

    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    db $fc
    db $fc
    ld bc, $fc01
    db $fc
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
    ldh [$e0], a
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
    ldh [$e0], a
    nop
    nop

jr_0ce_6f64:
    ldh [$fc], a
    nop
    nop

jr_0ce_6f68:
    ldh a, [$fe]
    nop
    nop

jr_0ce_6f6c:
    db $fc
    di
    nop
    nop
    and h
    rst $38
    nop
    nop
    and h
    rst $38
    nop
    nop
    db $ec
    rra
    nop
    nop
    inc e
    xor $00
    nop
    inc e
    xor $00
    nop
    db $e4
    inc e
    nop
    nop
    inc e
    db $fc
    nop
    nop
    inc e
    db $fc
    nop
    nop
    inc e
    db $fc
    nop
    nop
    xor b
    ld hl, sp+$00
    nop
    db $fc
    xor h
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    inc c
    ld hl, sp+$00
    nop
    ld [$00fc], sp
    nop
    sub b
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
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
    nop
    db $fc
    nop
    nop
    nop
    cp $00
    nop
    nop
    cp $00
    nop
    nop
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl]
    nop
    nop
    inc c
    ld a, h
    nop
    nop
    inc e
    inc e
    nop
    nop
    rra
    rra
    nop
    nop
    inc e
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    jr c, jr_0ce_7034

    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld h, b
    ld a, h
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
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    rla
    rrca
    nop
    nop
    rla
    dec de
    nop
    nop
    inc de
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
    ld [hl], e
    ld a, a
    nop
    ld bc, $ff39
    nop
    inc bc
    rra
    ld sp, hl
    ld [bc], a
    dec b
    inc e
    rst $38

jr_0ce_7034:
    nop
    rlca
    inc c
    rst $38
    nop
    rlca
    ld c, $ff
    nop
    inc bc
    rrca
    cp $03
    nop
    rra
    cp $03
    nop
    nop
    rst $38
    ld [bc], a
    ld bc, $ff3f
    inc bc
    nop
    ccf
    rst $38
    inc bc
    nop
    ccf
    rst $38
    inc bc
    nop
    ld a, [hl+]
    rst $38
    inc bc
    inc bc
    rst $38
    ld [$0303], a
    rst $38
    rst $38
    inc bc
    inc bc
    ret nz

    rst $38
    inc bc
    inc bc
    ret nz

    cp a
    inc bc
    nop
    add a
    ld a, a
    nop
    nop
    ld bc, $003f
    nop
    ld bc, $003f
    nop
    ld bc, $003f
    nop
    ld bc, $003f
    nop
    ld bc, $003f
    nop
    ld bc, $003f
    nop
    ccf
    ccf
    nop
    nop
    ccf
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
    nop
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
    nop
    ccf
    nop
    nop
    ld bc, $001f
    nop
    dec e
    dec e
    nop
    nop
    dec e
    dec e
    nop
    nop
    dec e
    dec e
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld a, [hl]
    ld a, a
    nop
    nop
    rst $38
    rst $38
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
    ldh [$e0], a
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
    ldh [$e0], a
    nop
    nop
    ldh [$fc], a
    nop
    nop
    ldh a, [$fe]
    nop
    nop
    db $fc
    di
    nop
    nop
    and h
    rst $38
    nop
    nop
    and h
    rst $38
    nop
    nop
    db $ec
    rra
    nop
    nop
    inc e
    xor $00
    nop
    inc e
    xor $00
    nop
    db $e4
    ld e, $00
    nop
    inc e
    cp $00
    nop
    inc e
    cp $00
    nop
    inc e
    cp $00
    nop
    xor [hl]
    cp $00
    nop
    cp $ae
    nop
    nop
    cp $fe
    nop
    nop
    ld c, $fc
    nop
    nop
    inc c
    ld a, [$0000]
    sub b
    ldh a, [rP1]
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ret nz

    nop
    nop
    ret nz

    ret nz

    nop
    nop
    nop
    ret nz

    nop
    nop
    nop
    ret nz

    nop
    nop
    add b
    ret nz

    nop
    nop
    add b
    ret nz

    nop
    nop
    add b
    ldh [rP1], a
    nop
    add b
    ldh [rP1], a
    nop
    add b
    ldh [rP1], a
    nop
    add b
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
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    add b
    ldh a, [rP1]
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
    rla
    rrca
    nop
    nop
    rla
    dec de
    nop
    nop
    inc de
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
    ld [hl], e
    ld a, a
    nop
    ld bc, $ff39
    nop
    inc bc
    rra
    ld sp, hl
    ld [bc], a
    dec b
    inc e
    rst $38
    nop
    rlca
    inc c
    rst $38
    nop
    rlca
    ld c, $ff
    rlca
    nop
    rrca
    cp $07
    nop
    rra
    cp $07
    nop
    nop
    rst $38
    inc b
    inc bc
    ccf
    cp a
    ld b, $01
    ccf
    cp a
    ld b, $01
    ccf
    ccf
    inc b
    inc bc
    ld a, [hl+]
    ccf
    rlca
    rlca
    ccf
    ld a, [hl+]
    rlca
    rlca
    cp a
    cp a
    rlca
    rlca
    add b
    cp a
    rlca
    rlca
    add b
    ccf
    rlca
    nop
    rlca
    cp a
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
    nop
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
    nop
    rra
    nop
    nop
    nop
    rra
    nop
    nop
    rra
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
    nop
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
    nop
    ccf
    nop
    nop
    db $10
    rra
    nop
    nop
    ld e, $1e
    nop
    nop
    ld e, $1e
    ld bc, $fe01
    cp $00
    nop
    rst $38
    rst $38
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld a, a
    ld a, a
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
    ldh [$e0], a
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
    ldh [$e0], a
    nop
    nop
    ldh [$fc], a
    nop
    nop
    ldh a, [$fe]
    nop
    nop
    db $fc
    di
    nop
    nop
    and h
    rst $38
    nop
    nop
    and h
    rst $38
    nop
    nop
    db $ec
    rra
    nop
    nop
    inc e
    rst $28
    nop
    nop
    inc e
    rst $28
    nop
    nop
    db $e4
    rra
    nop
    nop
    inc e
    rst $38
    nop
    nop
    inc e
    rst $38
    nop
    nop
    inc e
    rst $38
    nop
    nop
    xor a
    rst $38
    nop
    nop
    rst $38
    xor a
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rrca
    cp $00
    nop
    ld c, $f9
    nop
    nop
    sub b
    ldh a, [rP1]
    nop
    add b
    ldh [rP1], a
    nop
    add b
    ldh [rP1], a
    nop
    add b
    ldh [rP1], a
    nop
    add b
    ret nz

    nop
    nop
    add b
    ret nz

    nop
    nop
    add b
    ret nz

    nop
    nop
    add b
    ret nz

    nop
    nop
    ret nz

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
    rla
    rrca
    nop
    nop
    rla
    dec de
    nop
    nop
    inc de
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
    ld [hl], e
    ld a, a
    nop
    ld bc, $ff39
    nop
    inc bc
    rra
    ld sp, hl
    ld [bc], a
    dec b
    inc e
    rst $38
    nop
    rlca
    inc c
    rst $38
    nop
    rlca
    ld c, $ff
    rlca
    nop
    rrca
    cp $07
    nop
    rra
    cp $06
    ld bc, $bf00
    ld b, $01
    ccf
    cp a
    ld [$3f07], sp
    ccf
    inc c
    inc bc
    ccf
    ccf
    inc c
    ld [bc], a
    ld a, [hl+]
    ccf
    ld [$3f0e], sp
    ld a, [hl+]
    ld c, $0e
    ccf
    ccf
    ld b, $0e
    nop
    ccf
    ld c, $0e
    nop
    ccf
    inc b
    ld a, [bc]
    rlca
    ccf
    nop
    nop
    db $10
    rra
    nop
    nop
    db $10
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
    ld [$000f], sp
    nop
    rlca
    rrca
    nop
    nop
    inc c
    rrca
    nop
    nop
    ld [bc], a
    rra
    nop
    nop
    ld [bc], a
    rra
    nop
    nop
    ld [bc], a
    rra
    nop
    nop
    ld [bc], a
    ccf
    nop
    nop
    ld bc, $003f
    nop
    ld bc, $003f
    nop
    nop
    ld e, $00
    nop
    inc e
    inc e
    ld bc, $dc01
    call c, Call_000_0101
    db $fc
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    ld a, l
    ld a, l
    nop
    nop
    ccf
    ccf
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
    ldh [$e0], a
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
    ldh [$e0], a
    nop
    nop
    ldh [$fc], a
    nop
    nop
    ldh a, [$fe]
    nop
    nop
    db $fc
    di
    nop
    nop
    and h
    rst $38
    nop
    nop
    and h
    rst $38
    nop
    nop
    db $ec
    rra
    nop
    nop
    inc e
    rst $28
    nop
    add b
    ld e, $ed
    nop
    add b
    rst $20
    inc e
    nop
    add b
    rra
    db $fc
    nop
    add b
    rra
    db $fc
    nop
    add b
    rra
    db $fc
    nop
    add b
    xor b
    ei
    ret nz

    ret nz

    ld sp, hl
    xor c
    ret nz

    ret nz

    ld sp, hl
    ld sp, hl
    ldh [$c0], a
    add hl, bc
    ld sp, hl
    ld h, b
    add b
    add hl, bc
    ld hl, sp-$80
    nop
    sub b
    ldh a, [rP1]
    nop
    add b
    ldh [rP1], a
    nop
    add b
    ldh [rP1], a
    nop
    add b
    ldh [rP1], a
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
    ldh [$e0], a
    nop
    nop
    jr nz, @-$1e

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    db $10
    ldh a, [rP1]
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
    ld hl, sp-$08
    nop
    nop
    ret z

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
    rla
    rrca
    nop
    nop
    rla
    dec de
    nop
    nop
    inc de
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
    ld [hl], e
    ld a, a
    nop
    ld bc, $ff39
    nop
    inc bc
    rra
    ld sp, hl
    ld [bc], a
    dec b
    inc e
    rst $38
    nop
    rlca
    inc c
    rst $38
    nop
    rlca
    ld c, $ff
    rlca
    nop
    rrca
    cp $07
    nop
    rra
    cp $07
    nop
    nop
    rst $38
    inc b
    inc bc
    ccf
    cp a
    ld b, $01
    ccf
    cp a
    ld b, $01
    ccf
    ccf
    inc b
    inc bc
    ld a, [hl+]
    ccf
    rlca
    rlca
    ccf
    ld a, [hl+]
    rlca
    rlca
    cp a
    cp a
    rlca
    rlca
    add b
    cp a
    rlca
    rlca
    add b
    ccf
    rlca
    nop
    rlca
    cp a
    nop
    nop
    ld bc, $003f
    nop
    ld bc, $003f
    nop
    ld bc, $003f
    nop
    ld bc, $003f
    nop
    nop
    rra
    nop
    nop
    rra
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    nop
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
    rrca
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    nop
    nop
    ld bc, $0003
    nop
    inc bc
    inc bc
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
    rlca
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld e, $1f
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
    ldh [$e0], a
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
    ldh [$e0], a
    nop
    nop
    ldh [$fc], a
    nop
    nop
    ldh a, [$fe]
    nop
    nop
    db $fc
    di
    nop
    nop
    and h
    rst $38
    nop
    nop
    and h
    rst $38
    nop
    nop
    db $ec
    rra
    nop
    nop
    inc e
    rst $28
    nop
    nop
    inc e
    rst $28
    nop
    nop
    db $e4
    rra
    nop
    nop
    inc e
    rst $38
    nop
    nop
    inc e
    rst $38
    nop
    nop
    inc e
    rst $38
    nop
    nop
    xor a
    rst $38
    nop
    nop
    rst $38
    xor a
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rrca
    cp $00
    nop
    ld c, $f8
    nop
    nop
    sub b
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    nop
    ldh [rP1], a
    nop
    add b
    ldh [rP1], a
    nop
    add b
    ldh [rP1], a
    nop
    ldh [$e0], a
    nop
    nop
    ld b, b
    ldh [rP1], a
    nop
    ld b, b
    ldh [rP1], a
    nop
    jr nz, @-$1e

    nop
    nop
    jr nz, @-$1e

    nop
    nop
    jr nz, @-$1e

    nop
    nop
    jr nz, @-$1e

    nop
    nop
    ret nz

    ldh [rP1], a
    nop
    ret nz

    ret nz

    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ret nz

    ldh a, [rP1]
    nop
    ldh a, [$f0]
    nop
    nop
    add b
    ldh [rP1], a
    nop
    ldh [$e0], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    ld bc, $0000
    nop
    nop
    ld bc, $0101
    db $fc
    db $fd
    ld bc, $1400
    rst $28
    nop
    ld bc, $ff06
    nop
    nop
    rlca
    rst $38
    nop
    ld bc, $bf47
    ld [bc], a
    ld bc, $ff07
    ld [bc], a
    ld bc, $ff07
    inc bc
    nop
    rlca
    rst $38
    ld bc, $8f00
    ld a, a
    nop
    nop
    ccf
    ccf
    nop
    nop
    nop
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
    rra
    rra
    nop
    nop
    dec d
    rra
    nop
    nop
    rra
    dec d
    nop
    nop
    rra
    rra
    nop
    nop
    nop
    rra
    nop
    nop
    ld bc, $001f
    nop
    nop
    rra
    nop
    nop
    nop
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
    nop
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
    ld a, b
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    nop
    ld a, a
    nop
    nop
    nop
    ld a, a
    nop
    nop
    nop
    ld a, a
    nop
    nop
    nop
    ld a, a
    nop
    nop
    nop
    ld a, a
    nop
    nop
    nop
    ccf
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
    ld e, $1e
    nop
    nop
    ld e, $1e
    nop
    nop
    ld a, a
    ld a, a
    ld bc, $ff01
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld hl, sp-$08
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
    cp [hl]
    cp $00
    nop
    xor [hl]
    ld e, [hl]
    nop
    nop
    ld c, [hl]
    cp [hl]
    nop
    nop
    ld a, h
    db $fc
    nop
    nop
    cp $ff
    nop
    add b
    ld a, [hl]
    rst $38
    nop
    ret nz

    ld a, $ff
    nop
    ldh [rIE], a
    ld a, $80
    ld h, b
    sub h
    rst $38
    add b
    ldh [$94], a
    rst $38
    add b
    ldh [$dd], a
    db $e3
    add b
    ret nz

    db $e3
    db $dd
    add b
    add b
    db $e3
    db $dd
    add b
    add b
    inc e
    db $e3
    nop
    add b
    db $e3
    rst $38
    add b
    add b
    db $e3
    rst $38
    add b
    add b
    db $e3
    rst $38
    add b
    add b
    ld d, l
    rst $38
    nop
    add b
    rst $38
    ld d, l
    add b
    nop
    rst $38
    rst $38
    add b
    add b
    nop
    cp $00
    nop
    inc b
    cp $00
    nop
    ld hl, sp-$01
    nop
    nop
    ld b, b
    rst $38
    nop
    nop
    nop
    cp a
    nop
    nop
    nop
    cp a
    nop
    nop
    nop
    cp a
    nop
    add b
    nop
    cp a
    nop
    add b
    inc bc
    ccf
    add b
    add b
    ccf
    ccf
    add b
    add b
    ld a, $3f
    nop
    add b
    nop
    rra
    nop
    ret nz

    nop
    adc a
    nop
    ldh [rP1], a
    adc a
    nop
    ldh [rP1], a
    adc a
    nop
    ldh [rP1], a
    adc a
    nop
    ldh [rP1], a
    rlca
    nop
    ret nz

    rlca
    rlca
    ret nz

    ret nz

    inc bc
    inc bc
    ret nz

    ret nz

    inc bc
    inc bc
    ret nz

    ret nz

    rlca
    rlca
    ret nz

    ret nz

    rrca
    rrca
    ldh [$e0], a
    rrca
    rrca
    ldh [$e0], a
    rlca
    rlca
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
    ld bc, $0001
    nop
    rlca
    rlca
    nop
    nop
    inc bc
    ccf
    nop
    nop
    ld bc, $007f
    nop
    ld de, $006f
    nop
    ld bc, $037f
    inc bc
    ld bc, $03ff
    nop
    ld bc, $00ff
    inc bc
    ld a, a
    add e
    nop
    nop
    inc a
    ld b, e
    nop
    nop
    rlca
    ccf
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
    ld a, [bc]
    rrca
    nop
    nop
    rrca
    ld a, [bc]
    nop
    nop
    rlca
    rra
    nop
    nop
    nop
    ccf
    nop
    nop
    ld bc, $007f
    ld bc, $ff00
    nop
    inc bc
    nop
    rst $38
    nop
    inc bc
    inc bc
    rst $38
    ld [bc], a
    inc bc
    inc b
    db $fc
    inc bc
    inc bc
    ld hl, sp-$08
    inc bc
    inc bc
    ldh a, [$fc]
    nop
    inc bc
    nop
    db $fc
    nop
    inc bc
    nop
    db $fc
    nop
    ld bc, $fe00
    nop
    ld bc, $fe00
    nop
    ld bc, $fe00
    nop
    nop
    nop
    db $fc
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    inc a
    inc a
    nop
    nop
    inc a
    inc a
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    ld bc, $fe01
    cp $03
    inc bc
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ce_7847:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    cp a
    ld a, a
    nop
    nop
    cp a
    rst $18
    nop
    nop
    sbc a
    ld a, a
    nop
    nop
    ld a, [hl]
    cp $00
    nop
    rst $38
    rst $38
    ret nz

    ret nz

    ld a, $ff
    ld b, b
    ldh a, [$9f]
    rst $38
    nop
    ld hl, sp-$01
    sbc a
    ret nz

    jr c, jr_0ce_7847

    rst $38
    ld b, b
    db $fc
    jp z, Jump_0ce_40ff

    db $fc
    xor $f1
    ret nz

    db $fc
    pop af
    xor $e0
    db $fc
    pop af
    xor $f0
    db $ec
    ld c, $f1
    ld e, b
    db $f4
    pop af
    rst $38
    ret c

    db $f4
    pop af
    rst $38
    ret nc

    db $fc
    pop af
    rst $38
    ldh a, [$f0]
    xor d
    rst $38
    add b
    ret nz

    rst $38
    xor d
    ret nz

    add b
    rst $38
    rst $38
    ret nz

    ret nz

    nop
    rst $38
    nop
    add b
    ld [bc], a
    rst $38
    nop
    add b
    db $fc
    rst $38
    nop
    add b
    ret nz

    rst $38
    nop
    add b
    nop
    ld a, a
    nop
    ret nz

    nop
    ccf
    nop
    ret nz

    jr nz, jr_0ce_7905

    nop
    ret nz

    inc a
    ccf
    nop
    ret nz

    ccf
    ccf
    ret nz

    ret nz

    nop
    rra
    nop
    ldh a, [rP1]
    rra
    nop
    ld hl, sp+$00
    rrca
    nop
    db $fc
    nop
    rlca
    nop
    db $fc
    nop
    inc bc
    nop
    ld hl, sp+$00
    ld bc, $f818
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    db $fc
    db $fc
    ld bc, $fe01
    cp $01
    ld bc, $fefe
    nop
    nop
    nop
    nop
    nop

jr_0ce_7905:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    ret nz

    rrca
    rrca
    ldh [$e0], a
    rra
    rra
    ldh a, [$f0]
    rra
    rla
    db $fc
    db $fc
    rra
    rra
    rlca
    rst $38
    inc hl
    ccf
    add c
    rst $38
    jr c, jr_0ce_7999

    ld a, $ff
    inc a
    ld a, a
    inc c
    rst $38
    ld e, h
    ccf
    nop
    rst $38
    inc a
    ld a, a
    rrca
    rst $38
    ld a, h
    ld a, a
    ld [hl], b
    rst $38
    ld [hl], b
    dec bc
    add b
    rst $38
    ld [hl], e
    dec bc
    nop
    rst $38
    ld [hl], b
    ld [$ff87], sp
    inc bc
    ld a, a
    ld hl, sp-$01
    inc bc
    ccf
    add b
    rst $38
    ld e, $1f
    nop
    rst $38
    inc c
    rrca
    nop
    rst $38
    inc c
    rrca
    nop
    rst $38
    inc c
    rrca
    ld bc, $0eff
    rrca
    ld c, $ff
    rlca
    rlca
    cp $fe
    nop

jr_0ce_7999:
    rlca
    ld b, $fe
    nop
    inc bc
    nop
    db $fc
    nop
    ld bc, $fc00
    nop
    ld bc, $fc00
    nop
    nop
    nop
    ld hl, sp+$00
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    db $fc
    db $fc
    inc bc
    inc bc
    db $fc
    db $fc
    rlca
    rlca
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
    add b
    ret nz

    nop
    nop
    ret nz

    ldh [rP1], a
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ldh a, [rP1]
    nop
    ldh a, [$f0]
    nop
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    ldh [$f8], a
    nop
    nop
    jr @-$06

    nop
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    adc b
    ld hl, sp+$00
    nop
    ldh a, [$f8]
    nop
    nop
    add b
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$00
    nop
    nop
    ld hl, sp+$1c
    inc e
    jr @+$01

    ld hl, sp-$04
    jr nz, jr_0ce_7ae9

    ld hl, sp-$04
    ld b, b
    ld a, a
    cp $fe
    ld b, b
    ld a, a
    inc a
    cp [hl]
    ld b, b
    ld a, a
    ld e, $1e
    ld h, b
    ld a, [hl]
    inc e
    ld e, $3c
    inc a
    ld c, $0e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ce_7ae9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
