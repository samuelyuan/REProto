SECTION "ROM Bank $00f", ROMX[$4000], BANK[$f]

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rrca
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
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
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
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
    ccf
    rst $38
    ccf
    sbc a
    ccf
    sbc a
    ccf
    sbc a
    ccf
    sbc a
    ccf
    sbc a
    ccf
    sbc a
    ccf
    sbc a
    ccf
    sbc a
    ccf
    sbc a
    ccf
    sbc a
    ccf
    sbc a
    ccf
    sbc a
    ccf
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
    rst $38
    ccf
    sbc a
    ccf
    sbc a
    ccf
    sbc a
    ccf
    sbc a
    ccf
    sbc a
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
    ret nz

    rst $38
    ret nz

    rst $38
    pop bc
    rst $38
    jp $c3ff


    db $fd
    rst $00
    rst $38
    rst $00
    rst $38
    rst $00
    ei
    rst $00
    ei
    rst $00
    ei
    rst $00
    ei
    rst $00
    ei
    rst $00
    ei
    rst $00
    ei
    rst $00
    ei
    rst $00
    ei
    rst $00
    ei
    rst $00
    ei
    rst $00
    rst $38
    jp $c3f9


    db $fd
    pop bc
    db $fc
    pop bc
    rst $38
    ret nz

    rst $38
    ret nz

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
    ld hl, sp+$1f
    rst $18
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
    rst $38
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
    nop
    rst $38
    nop
    rst $38
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
    rst $38
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
    ldh a, [$f7]
    db $fc
    db $fd
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $08
    rra
    rst $08
    rra
    rst $08
    rra
    rst $08
    rra
    rst $08
    rra
    rst $08
    rra
    rst $08
    rra
    rst $08
    rra
    rst $08
    rra
    rst $08
    rra
    rst $08
    rra
    rst $08
    rra
    rst $08
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
    rst $38
    ldh a, [$f7]
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
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
    rra
    rst $38
    rra
    rst $38
    rra
    ld a, a
    sbc a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    ret nz

    rst $18
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

    rst $18
    ret nz

    rst $18
    ret nz

    rst $38
    ret nz

    rst $38
    add b
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
    rst $38
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
    add a
    rst $38
    add a
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
    rlca
    rst $38
    rlca
    rst $38
    rlca
    cp $07
    cp $07
    cp $07
    cp $07
    rst $38
    rlca
    rst $38
    ld b, $fc
    ld b, $fd
    ld b, $fd
    ld b, $fd
    ld b, $ff
    ld b, $ff
    inc b
    ld sp, hl
    inc b
    ld sp, hl
    ld b, $ff
    ld b, $fd
    ld b, $fc
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
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    cp $fc
    cp $fd
    cp $ff
    cp $fb
    db $fc
    ld sp, hl
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    rst $38
    ld hl, sp-$0d
    ld hl, sp-$0d
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [$e7]
    ldh a, [$e7]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [$cf], a
    ldh [$cf], a
    ldh [$df], a
    ldh [$df], a
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    sbc a
    ret nz

    sbc a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    ccf
    add b
    ccf
    add b
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    add b
    rst $38
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
    cp $00
    cp $01
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
    add b
    rst $38
    ret nz

    rst $38
    ldh [$ef], a
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
    inc a
    sbc c
    ld h, b
    ld sp, hl
    inc a
    sbc a
    ld b, $e7
    ld h, [hl]
    rst $38
    inc a
    push hl
    nop
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
    db $fc
    db $fd
    ldh a, [$f7]
    ldh [rIE], a
    ret nz

    rst $38
    add b
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    cp $00
    cp $01
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    db $fd
    ld bc, $03fd
    rst $38
    inc bc

jr_00f_43bd:
    rst $38
    inc bc
    rst $38
    inc bc
    ei
    inc bc
    ei
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
    rrca
    rst $38
    rrca

jr_00f_43d3:
    rst $38
    rrca

jr_00f_43d5:
    rst $38
    rrca
    rst $38
    inc c
    db $eb
    inc c

jr_00f_43db:
    rst $28
    inc e
    rst $38
    jr jr_00f_43d3

    jr jr_00f_43d5

    jr jr_00f_43db

    jr jr_00f_43bd

    rra
    rst $18
    ccf
    rst $38
    ld a, $fc
    ld a, $fc
    ld a, $fd
    ld a, $bd
    ld a, $bf
    ld a, [hl]
    rst $38
    ld a, h
    ld sp, hl
    ld a, h
    ld sp, hl
    ld a, h
    ei
    ld a, h
    ld a, e
    ld a, h
    ld a, a
    db $fc
    rst $38
    ld hl, sp-$0d
    ld hl, sp-$0d
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [$e7]
    ldh a, [$e7]
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
    ld bc, $03ff
    ei
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
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    ld hl, sp+$07
    ld hl, sp+$02
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fc
    inc bc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    add c
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$09
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [$e7]
    ldh a, [$e7]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [$cf], a
    ldh a, [$f0]
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
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp $01
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    db $fd
    ld bc, $03fd
    rst $38
    inc bc
    rst $38
    inc bc
    cp $03
    cp $03
    ld a, [$fa03]
    rlca
    cp $07
    rst $38
    ld b, $fc
    ld b, $f4
    ld c, $fd
    ld c, $fd
    ld e, $fd
    ld e, $dd
    ld a, $bc
    ld a, a
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
    rst $38
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
    add b
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    ld a, a
    add b
    ccf
    nop
    rst $38
    nop

jr_00f_44f9:
    rst $38
    nop

jr_00f_44fb:
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
    ld a, a
    ld a, a
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $30
    rlca
    rst $38
    rlca
    cp $07
    cp $07
    cp $07
    rst $38
    ld b, $fc
    ld b, $fc
    ld b, $f5
    ld b, $f5
    ld c, $ff
    ld c, $ff
    inc c
    ld sp, hl
    inc c
    add hl, bc
    db $fc
    ei
    db $fc
    ei
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$0d
    ld hl, sp-$0d
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [$e7]
    ldh a, [$e7]
    jr nc, jr_00f_44f9

    jr nc, jr_00f_44fb

    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld h, b
    rst $08
    ld h, b
    ld c, a
    ld h, b
    ld e, a
    ld h, b
    ld e, a
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    sbc a
    ret nz

    sbc a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    ccf
    add b
    ccf
    add b
    ld a, a
    add b
    ld a, a
    add b
    rst $38
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
    rst $38
    nop
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
    ldh [$ef], a
    rst $38
    rst $38
    rst $38
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
    scf
    ld b, h
    scf
    ld b, h
    scf
    ld b, h
    scf
    ld c, h
    ccf
    ld a, h
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
    rst $38
    rst $38
    rst $38
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
    db $fd
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    add b
    ld a, a
    add b
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
    cp $00
    cp $01
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01fd
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
    ei
    inc bc
    ei
    rlca
    rst $38
    rlca
    rst $38
    rlca
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
    rrca
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
    rst $18
    rra
    rst $18
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    cp a
    ccf
    cp a
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    rlca
    db $fd
    inc b
    ld sp, hl
    inc b
    ld sp, hl
    inc b
    ld sp, hl
    ld b, $fb
    inc bc
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
    rst $38
    rst $38
    rst $38
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
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    db $fd
    ld bc, $03fd
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
    rst $38
    rst $38
    rst $38
    cp $fc
    cp $fc
    cp $fd
    cp $fd
    cp $ff
    cp $ff
    db $fc
    db $fd
    inc b
    db $fd
    inc b
    ei
    inc b
    ei
    inc b
    rst $38
    inc b
    rst $30
    nop
    di
    ld [$fffb], sp
    rst $38
    rst $38
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
    rst $38
    nop
    rst $38
    ld b, b
    rst $18
    ld b, b
    sbc a
    ld b, b
    sbc a
    ret nz

    sbc a
    ld b, b
    sbc a
    ld b, b
    sbc a
    ld b, b
    sbc a
    ld b, b
    rra
    ret nz

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
    rst $38
    rst $38
    rst $38
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
    cp $01
    rst $38
    ld bc, $01fe
    cp $01
    rst $38
    ld bc, $00fd
    db $fc
    cp $fc
    cp $fd
    cp $fd
    cp $ff
    cp $ff
    db $fc
    ld sp, hl
    db $fc
    ld sp, hl
    db $fc
    ei
    db $fc
    ei
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$0d
    ld hl, sp-$0d
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [$e7]
    ldh a, [$e7]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [$cf], a
    ldh [$cf], a
    ldh [$df], a
    ldh [$df], a
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    sbc a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    rst $38
    add b
    ccf
    add b
    ccf
    add b
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    add b
    rst $38
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
    cp $00
    cp $01
    rst $38
    inc bc
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
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $18
    nop
    rst $38
    jr nz, @-$5f

    jr nz, @-$5f

    jr nz, @-$5f

    jr nz, @-$5f

    jr nz, @-$5f

    jr nz, @-$5f

    nop

jr_00f_47c7:
    rst $38
    nop

jr_00f_47c9:
    rst $38
    nop

jr_00f_47cb:
    rst $38
    nop

jr_00f_47cd:
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38

jr_00f_47d3:
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
    rst $18
    nop
    rst $18
    nop
    rst $18
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @-$3f

    jr nz, @-$3f

    jr nz, @-$3f

    jr nz, @-$3f

    jr nz, @-$3f

    jr nz, jr_00f_47c7

    jr nz, jr_00f_47c9

    jr nz, jr_00f_47cb

    jr nz, jr_00f_47cd

    jr nz, @+$01

    jr nz, @+$01

    jr nz, jr_00f_47d3

    jr nz, @-$5f

    ld h, b
    rst $18
    ld h, b
    rst $18
    ld h, b
    rst $18
    ld h, b
    rst $18
    ld h, b
    ld e, a
    ld h, b
    ld e, a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$cf], a
    ldh [$cf], a
    ldh [$cf], a
    ldh [$cf], a
    ldh [$cf], a
    ldh [$cf], a
    ldh [$cf], a
    ldh [$cf], a
    ldh [$cf], a
    ldh [$cf], a
    ldh [$cf], a
    ldh [$cf], a
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
    ld e, $c8
    inc sp
    rst $38
    inc hl
    rst $08
    inc hl
    rst $08
    inc sp
    rst $38
    ld e, $d3
    nop
    rst $38
    nop
    rst $38
    nop

jr_00f_486b:
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
    ld a, h
    ld a, c
    ld a, h
    ld sp, hl
    ld a, h
    ei
    ld a, h
    ei
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, b
    di
    ld a, b
    di
    ld a, b
    rst $30
    ld a, b
    rst $30
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld [hl], b
    rst $20
    ld [hl], b
    rst $28
    ld [hl], b
    rst $28
    ld [hl], b
    rst $28
    ld [hl], b
    rst $38
    ld h, b
    rst $08
    ld h, b
    rst $08
    ld h, b
    rst $18
    ld h, b
    rst $18
    ld h, b
    rst $18
    ld h, b
    rst $38
    jr nz, jr_00f_486b

    ld b, b
    rst $18
    ld b, b
    rst $18
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    add b
    cp a
    add b
    cp a
    add b
    cp a
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
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp $01
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    db $fd
    ld bc, $03fd
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    ei
    inc bc
    ei
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
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
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
    ld bc, $01fe
    db $fc
    ld bc, $00fc
    rst $38
    ld bc, $01fc
    rst $38
    nop
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
    ld bc, $01ff
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
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $28
    rrca
    rst $28
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $18
    rra
    rst $18
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    cp a
    ccf
    cp a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [$df]
    nop
    rst $08
    ldh [$ef], a
    jr nc, jr_00f_49c1

    db $10
    rst $08
    ldh [rIF], a
    nop
    rst $38
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
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    inc b
    dec b
    dec b
    dec b
    ld b, $07
    dec b
    dec b
    dec b
    ld [$0000], sp

jr_00f_49c1:
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $0f
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld de, $0012
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc de
    inc d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    ld d, $17
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr @+$1b

    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    dec de
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec e
    ld e, $1f
    rra
    rra
    rra
    rra
    rra
    jr nz, @+$23

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    inc hl
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec h
    ld h, $26
    ld h, $26
    ld h, $26
    ld h, $12
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    daa
    jr z, jr_00f_4a71

    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    dec d
    dec d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, $2f
    jr nc, jr_00f_4a8d

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_00f_4a64

jr_00f_4a64:
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
    ld b, b

jr_00f_4a71:
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, l
    ld b, [hl]
    ld b, a
    nop
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    nop
    nop
    nop
    nop
    nop
    nop

jr_00f_4a8d:
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, h
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, b
    ld l, c
    nop
    nop
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    dec sp
    ld a, d
    ld a, e
    ld a, h
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, l
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
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
    nop
    nop
    nop
    nop
    nop
    nop
    sub e
    ld e, a
    sub h
    sub l
    sub [hl]
    sub a
    nop
    nop
    nop
    ld c, l
    sbc b
    sbc c
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    ld bc, $0101
    call z, $ff7e
    ld a, a
    and b
    ld a, l
    ld hl, sp+$7f
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop

    INCBIN "gfx/image_00f_4cb0.2bpp"

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    inc bc
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
    rst $38
    rst $38
    rst $00
    rst $00
    cp e
    cp e
    xor e
    xor e
    and a
    and a
    cp a
    cp a
    jp $ffc3


    rst $38
    add hl, sp
    add hl, sp
    inc sp
    inc sp
    daa
    daa
    rrca
    rrca
    daa
    daa
    inc sp
    inc sp
    add hl, sp
    add hl, sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    inc bc
    rra
    rra
    db $e3
    db $e3
    inc bc
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    add c
    inc a
    inc a
    ld h, [hl]
    ld h, [hl]
    ld l, [hl]
    ld l, [hl]
    ld h, [hl]
    ld h, [hl]
    inc a
    inc a
    add c
    add c
    rst $38
    rst $38
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ld bc, $0101
    ld bc, $ffff
    rst $38
    rst $38
    sbc a
    sbc a
    inc bc
    inc bc
    sbc a
    sbc a
    sbc a
    sbc a
    add e
    add e
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    sbc a
    rst $20
    rst $20
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    rst $20
    rst $20
    sbc a
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, sp
    add hl, sp
    ld de, $0111
    ld bc, $2929
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc bc
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    ld sp, hl
    rst $20
    rst $20
    sbc a
    sbc a
    sbc a
    sbc a
    rst $20
    rst $20
    ld sp, hl
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, sp
    add hl, sp
    add hl, de
    add hl, de
    add hl, bc
    add hl, bc
    ld bc, $2101
    ld hl, $3131
    add hl, sp
    add hl, sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc sp
    inc sp
    inc sp
    inc sp
    add a
    add a
    rst $08
    rst $08
    rst $38
    rst $38
    rst $28
    rst $28
    rst $28
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
    add e
    add e
    ld bc, $3901
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    ld bc, $8301
    add e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, sp
    add hl, sp
    add hl, hl
    add hl, hl
    ld bc, $1101
    ld de, $ffff
    rst $38
    rst $38
    db $fd
    db $fd
    ei
    ei
    rst $30
    rst $30
    rst $28
    rst $28
    rst $18
    rst $18
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    add e
    add c
    add c
    sbc c
    sbc c
    add c
    add c
    add e
    add e
    sbc a
    sbc a
    sbc a
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc hl
    inc hl
    adc a
    adc a
    rst $00
    rst $00
    inc de
    inc de
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    rst $18
    rst $18
    rst $28
    rst $28
    rst $30
    rst $30
    ei
    ei
    db $fd
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    add e
    ld bc, $3901
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    ld [bc], a
    ld [bc], a
    adc c
    adc c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc sp
    inc sp
    inc sp
    inc sp
    add a
    add a
    rst $00
    rst $00
    adc a
    adc a
    rst $38
    rst $38
    di
    di
    rst $28
    rst $28
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $28
    rst $28
    di
    di
    rst $38
    rst $38
    inc bc
    inc bc
    ld bc, $3901
    add hl, sp
    inc bc
    inc bc
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    inc bc
    rst $20
    rst $20
    sbc a
    sbc a
    inc bc
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $20
    rst $20
    rst $20
    add c
    add c
    add c
    add c
    rst $20
    rst $20
    rst $20
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    pop bc
    pop bc
    add c
    add c
    adc a
    adc a
    jp $f1c3


    pop af
    add c
    add c
    add e
    add e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $30
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    add c
    add c
    add c
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
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
    add e
    add e
    add e
    add e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    ld bc, $8301
    add e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $20
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    sub e
    sub e
    sub e
    sub e
    rst $00
    rst $00
    rst $00
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
    rst $38
    rst $30
    rst $30
    di
    di
    add c
    add c
    add c
    add c
    di
    di
    rst $30
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, hl
    add hl, hl
    ld bc, $1101
    ld de, $3939
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add a
    add a
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    add a
    add a
    rst $38
    rst $38
    add hl, sp
    add hl, sp
    sub e
    sub e
    rst $00
    rst $00
    rst $28
    rst $28
    rst $00
    rst $00
    sub e
    sub e
    add hl, sp
    add hl, sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $38
    rst $38
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    jp $e7c3


    rst $20
    rst $20
    rst $20
    rst $20
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
    add a
    add a
    inc sp
    inc sp
    di
    di
    rst $20
    rst $20
    rst $08
    rst $08
    sbc a
    sbc a
    inc bc
    inc bc
    rst $38
    rst $38
    ld bc, $0101
    ld bc, $e7e7
    rst $08
    rst $08
    sbc a
    sbc a
    ld bc, $0101
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
    rst $38
    rst $38
    rst $38
    add a
    add a
    inc sp
    inc sp
    di
    di
    rst $00
    rst $00
    di
    di
    inc sp
    inc sp
    add a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $00
    rst $00
    add a
    add a
    daa
    daa
    inc bc
    inc bc
    rst $20
    rst $20
    rst $20
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    inc bc
    ccf
    ccf
    rlca
    rlca
    di
    di
    di
    di
    inc sp
    inc sp
    add a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $00
    sbc a
    sbc a
    ccf
    ccf
    rlca
    rlca
    inc sp
    inc sp
    inc sp
    inc sp
    add a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc bc
    di
    di
    rst $20
    rst $20
    rst $20
    rst $20
    rst $08
    rst $08
    rst $08
    rst $08
    sbc a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add a
    add a
    inc sp
    inc sp
    inc sp
    inc sp
    add a
    add a
    inc sp
    inc sp
    inc sp
    inc sp
    add a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add a
    add a
    inc sp
    inc sp
    inc sp
    inc sp
    add e
    add e
    di
    di
    rst $20
    rst $20
    adc a
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    inc bc
    inc sp
    inc sp
    inc sp
    inc sp
    dec bc
    dec bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    ccf
    ccf
    inc bc
    inc bc
    inc sp
    inc sp
    inc sp
    inc sp
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $20
    rst $08
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    inc bc
    ccf
    ccf
    ccf
    ccf
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $08
    rst $30
    rst $30
    ei
    ei
    ei
    ei
    ei
    ei
    rst $30
    rst $30
    rst $08
    rst $08
    rst $38
    rst $38
    di
    di
    di
    di
    inc bc
    inc bc
    inc sp
    inc sp
    inc sp
    inc sp
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $ffc3


    rst $38
    rst $38
    rst $38
    jp $ffc3


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
    inc bc
    inc hl
    inc hl
    rra
    rra
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    call $b3cd
    or e
    rst $38
    rst $38
    rst $38
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
    add e
    sbc a
    sbc a
    adc a
    adc a
    sbc a
    sbc a
    sbc a
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
    rst $38
    rst $38
    rst $38
    add a
    add a
    inc sp
    inc sp
    di
    di
    rst $20
    rst $20
    rst $08
    rst $08
    rst $38
    rst $38
    rst $08
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    inc bc
    inc sp
    inc sp
    inc bc
    inc bc
    di
    di
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
    rst $28
    rst $28
    rst $00
    rst $00
    xor a
    xor a
    rst $00
    rst $00
    db $eb
    db $eb
    xor e
    xor e
    rst $00
    rst $00
    rst $28
    rst $28
    rst $38
    rst $38
    ccf
    ccf
    ccf
    ccf
    inc bc
    inc bc
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    add e
    ld bc, $3901
    add hl, sp
    add hl, sp
    add hl, sp
    ld bc, $3901
    add hl, sp
    add hl, sp
    add hl, sp
    rst $38
    rst $38
    rst $20
    rst $20
    rst $38
    rst $38
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
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
    inc bc
    inc bc
    ld bc, $3901
    add hl, sp
    inc bc
    inc bc
    add hl, sp
    add hl, sp
    ld bc, $0301
    inc bc
    rst $38
    rst $38
    rst $20
    rst $20
    rst $38
    rst $38
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $00
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
    rst $38
    add e
    add e
    ld bc, $3901
    add hl, sp
    ccf
    ccf
    add hl, sp
    add hl, sp
    ld bc, $8301
    add e
    rst $38
    rst $38
    ccf
    ccf
    ccf
    ccf
    inc sp
    inc sp
    rlca
    rlca
    rlca
    rlca
    inc sp
    inc sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc bc
    ld bc, $3901
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    ld bc, $0301
    inc bc
    rst $38
    rst $38
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
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
    ld bc, $0101
    ld bc, $3f3f
    rlca
    rlca
    ccf
    ccf
    ld bc, $0101
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    ld de, $2911
    add hl, hl
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $0101
    ld bc, $3f3f
    rrca
    rrca
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
    rst $38
    rst $38
    inc bc
    inc bc
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    add e
    ld bc, $3901
    add hl, sp
    ccf
    ccf
    add hl, sp
    add hl, sp
    ld bc, $8101
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    inc bc
    inc sp
    inc sp
    inc sp
    inc sp
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
    rst $38
    rst $38

    xor a
    ld [$c319], a
    ld [$c31a], a
    ld a, [$c17c]
    cp $04
    jp z, Jump_00f_5d0e

    cp $0f
    jp z, Jump_00f_5ce4

    cp $16
    jp z, Jump_00f_5d3a

    cp $1d
    jp z, Jump_00f_5c7e

    cp $24
    jp z, Jump_00f_5c4b

    cp $2d
    jp z, Jump_00f_5c1a

    cp $37
    jp z, Jump_00f_5be3

    cp $60
    jp z, Jump_00f_5d71

    ret


Jump_00f_5be3:
    ld a, [$c311]
    ld e, a
    ld a, [$c312]
    ld d, a
    call Call_00f_5d9d
    ld a, d
    or a
    ret nz

    ld a, e
    cp $50
    ret c

    ld a, [$c313]
    ld e, a
    ld a, [$c314]
    ld d, a
    call Call_00f_5d9d
    ld a, d
    or a
    jr z, jr_00f_5c0a

    ld a, e
    cp $9e
    ret c

    jr jr_00f_5c0e

jr_00f_5c0a:
    ld a, e
    cp $20
    ret nc

jr_00f_5c0e:
    ld de, $ffe0
    ld a, e
    ld [$c319], a
    ld a, d
    ld [$c31a], a
    ret


Jump_00f_5c1a:
    ld a, [$c11f]
    cp $01
    ret nz

    ld a, [$c313]
    ld e, a
    ld a, [$c314]
    ld d, a
    call Call_00f_5d9d
    ld hl, $0014
    add hl, de
    ld e, l
    ld d, h
    ld a, d
    cp $ff
    ret nz

    ld a, $00
    sub e
    inc a
    cp $10
    jr c, jr_00f_5c3f

    ld a, $0f

jr_00f_5c3f:
    ld e, a
    ld d, $00
    ld a, e
    ld [$c319], a
    ld a, d
    ld [$c31a], a
    ret


Jump_00f_5c4b:
    ld a, [$c11f]
    or a
    ret nz

    ld a, [$c311]
    ld e, a
    ld a, [$c312]
    ld d, a
    call Call_00f_5d9d
    ld hl, $0050
    add hl, de
    ld e, l
    ld d, h
    ld a, d
    cp $ff
    ret nz

    ld a, $00
    sub e
    inc a
    cp $2e
    jr c, jr_00f_5c6f

    ld a, $2d

jr_00f_5c6f:
    ld e, a
    ld d, $00
    call Call_00f_5dc2
    ld a, e
    ld [$c319], a
    ld a, d
    ld [$c31a], a
    ret


Jump_00f_5c7e:
    ld a, [$c11f]
    or a
    ret nz

    ld a, [$c313]
    ld e, a
    ld a, [$c314]
    ld d, a
    call Call_00f_5d9d
    ld a, d
    or a
    ret nz

    ld a, e
    cp $40
    ret c

    ld a, [$c311]
    ld e, a
    ld a, [$c312]
    ld d, a
    call Call_00f_5d9d
    ld a, d
    cp $ff
    jr z, jr_00f_5cc4

    or a
    ret nz

    ld a, e
    cp $44
    ret nc

    ld e, a
    ld a, $44
    sub e
    cp $28
    jr c, jr_00f_5cb5

    ld a, $27

jr_00f_5cb5:
    ld e, a
    ld d, $00
    call Call_00f_5dc2
    ld a, e
    ld [$c319], a
    ld a, d
    ld [$c31a], a
    ret


jr_00f_5cc4:
    ld a, $00
    sub e
    inc a
    cp $44
    ret nc

    ld e, a
    ld a, $44
    sub e
    cp $28
    jr c, jr_00f_5cd5

    ld a, $27

jr_00f_5cd5:
    ld e, a
    ld d, $00
    call Call_00f_5dc2
    ld a, e
    ld [$c319], a
    ld a, d
    ld [$c31a], a
    ret


Jump_00f_5ce4:
    ld a, [$c11f]
    cp $02
    jr nc, jr_00f_5d0d

    ld a, [$c313]
    ld e, a
    ld a, [$c314]
    ld d, a
    call Call_00f_5d9d
    ld a, d
    cp $80
    jr nc, jr_00f_5d0d

    ld a, e
    cp $30
    jr c, jr_00f_5d02

    ld e, $2f

jr_00f_5d02:
    call Call_00f_5dc2
    ld a, e
    ld [$c319], a
    ld a, d
    ld [$c31a], a

jr_00f_5d0d:
    ret


Jump_00f_5d0e:
    ld a, [$c31f]
    or a
    ret z

    ld a, [$c313]
    ld e, a
    ld a, [$c314]
    ld d, a
    call Call_00f_5d9d
    ld bc, $0014
    ld a, c
    sub e
    ld c, a
    ld a, b
    sbc d
    ld b, a
    or a
    ret nz

    ld a, c
    cp $07
    jr c, jr_00f_5d30

    ld a, $07

jr_00f_5d30:
    add a
    add a
    ld [$c319], a
    xor a
    ld [$c31a], a
    ret


Jump_00f_5d3a:
    ld a, [$c31f]
    or a
    ret z

    ld a, [$c311]
    ld e, a
    ld a, [$c312]
    ld d, a
    call Call_00f_5d9d
    ld bc, $0008
    ld a, e
    sub c
    ld c, a
    ld a, d
    sbc b
    ld b, a
    or a
    ret nz

    ld a, c
    cp $0c
    jr c, jr_00f_5d5c

    ld a, $0c

jr_00f_5d5c:
    srl a
    srl a
    inc a
    add a
    add a
    cp $04
    jr nz, jr_00f_5d69

    ld a, $08

jr_00f_5d69:
    ld [$c319], a
    xor a
    ld [$c31a], a
    ret


Jump_00f_5d71:
    ld a, [$c31f]
    or a
    ret z

    ld a, [$c311]
    ld e, a
    ld a, [$c312]
    ld d, a
    call Call_00f_5d9d
    ld bc, $001c
    ld a, c
    sub e
    ld c, a
    ld a, b
    sbc d
    ld b, a
    or a
    ret nz

    ld a, c
    cp $08
    jr c, jr_00f_5d93

    ld a, $08

jr_00f_5d93:
    add a
    add a
    ld [$c319], a
    xor a
    ld [$c31a], a
    ret


Call_00f_5d9d:
    ld a, d
    cp $80
    jr c, jr_00f_5db5

    call Call_00f_5dc2
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    call Call_00f_5dc2
    ret


jr_00f_5db5:
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    ret


Call_00f_5dc2:
    ld a, $00
    sub e
    ld e, a
    ld a, $00
    sbc d
    ld d, a
    ret


    ld hl, $cb00
    ld de, $5e3f
    ld bc, $0140

jr_00f_5dd4:
    ld a, [de]
    ld [hl+], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_00f_5dd4

    ld hl, $c900
    call Call_000_3d85
    ld de, $0004
    ld b, $28

jr_00f_5de7:
    ld [hl], $c0
    add hl, de
    dec b
    jr nz, jr_00f_5de7

    ld hl, $c900
    call Call_000_3d85
    ld de, $c2c0
    ld b, $09

jr_00f_5df8:
    ld a, [de]
    or a
    jr z, jr_00f_5e01

    inc de
    inc de
    inc de
    jr jr_00f_5e0e

jr_00f_5e01:
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, $00
    ld [hl+], a
    ld a, $02
    ld [hl+], a

jr_00f_5e0e:
    dec b
    jr nz, jr_00f_5df8

    ld de, $5e2d
    ld a, [$c2e0]
    add a
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    ld a, [$c2e0]
    inc a
    add a
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    ret


    ld e, [hl]
    ld c, b
    ld e, [hl]
    ld d, h
    ld e, [hl]
    ld h, b
    ld l, d
    ld c, b
    ld l, d
    ld d, h
    ld l, d
    ld h, b
    db $76
    ld c, b
    db $76
    ld d, h

jr_00f_5e3d:
    db $76
    ld h, b
    inc a
    inc a
    ld b, d
    ld a, [hl]
    adc c
    rst $30
    sbc l
    db $e3

jr_00f_5e47:
    cp l
    jp $e799


    ld b, d
    ld a, [hl]
    inc a
    inc a
    nop
    nop
    nop
    nop

jr_00f_5e53:
    nop
    nop
    nop
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
    db $10
    rst $08
    jr nc, jr_00f_5e53

    db $10
    rst $28
    db $10
    rst $28
    db $10
    add $38
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

jr_00f_5e7d:
    nop
    nop
    ld b, [hl]
    jr c, jr_00f_5e3d

    ld b, h
    ei
    inc b
    rst $00
    jr c, jr_00f_5e47

    ld b, b
    add d
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
    ld [bc], a
    ld a, h
    cp e
    ld b, h
    rst $30
    ld [$04fb], sp
    cp e
    ld b, h
    add $38
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
    db $76
    ld [$18e7], sp
    rst $10
    jr z, jr_00f_5e7d

    ld c, b
    add e
    ld a, h
    or $08
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
    ld [bc], a
    ld a, h
    cp a
    ld b, b
    add a
    ld a, b
    ei
    inc b
    cp e
    ld b, h
    add $38
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

jr_00f_5efd:
    nop
    nop
    ld b, [hl]
    jr c, @-$3f

    ld b, b
    add a
    ld a, b
    cp e
    ld b, h
    cp e
    ld b, h
    add $38
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

jr_00f_5f1d:
    nop
    nop
    ld [bc], a
    ld a, h
    ei
    inc b
    rst $30
    ld [$08f7], sp
    rst $28
    db $10
    xor $10
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
    ld b, [hl]
    jr c, jr_00f_5efd

    ld b, h
    rst $00
    jr c, @-$43

    ld b, h
    cp e
    ld b, h
    add $38
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
    ld b, [hl]
    jr c, jr_00f_5f1d

    ld b, h
    cp e
    ld b, h
    jp $fb3c


    inc b
    add $38
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
    ld a, [$c100]
    and $20
    jp nz, Jump_00f_60c0

    xor a
    ld [$c16b], a
    ld a, [$c100]
    and $10
    jp nz, Jump_00f_60de

    xor a
    ld [$c16c], a
    ld a, [$c100]
    and $40
    jp nz, Jump_00f_60fd

    xor a
    ld [$c110], a
    ld a, [$c100]
    and $80
    jp nz, Jump_00f_6117

    xor a
    ld [$c111], a
    ld a, [$c100]
    and $01
    jp nz, Jump_00f_5fbc

    xor a
    ld [$c1fb], a
    ret


Jump_00f_5fbc:
    ld a, [$c1fb]
    or a
    ret nz

    ld a, $ff
    ld [$c1fb], a
    ld a, $02
    call Call_000_026b
    ld a, [$c2e0]
    or a
    jp z, Jump_00f_60a9

    cp $01
    jp z, Jump_00f_6091

    cp $02
    jp z, Jump_00f_607f

    cp $03
    jp z, Jump_00f_6067

    cp $04
    jp z, Jump_00f_6049

    cp $05
    jp z, Jump_00f_6031

    cp $06
    jp z, Jump_00f_601f

    cp $07
    jp z, Jump_00f_6007

    ld hl, $c2cf
    call Call_00f_60bb
    ld hl, $c2d5
    call Call_00f_60bb
    ld hl, $c2d8
    jp Jump_00f_60bb


Jump_00f_6007:
    ld hl, $c2cc
    call Call_00f_60bb
    ld hl, $c2d2
    call Call_00f_60bb
    ld hl, $c2d5
    call Call_00f_60bb
    ld hl, $c2d8
    jp Jump_00f_60bb


Jump_00f_601f:
    ld hl, $c2c9
    call Call_00f_60bb
    ld hl, $c2d2
    call Call_00f_60bb
    ld hl, $c2d5
    jp Jump_00f_60bb


Jump_00f_6031:
    ld hl, $c2c6
    call Call_00f_60bb
    ld hl, $c2cc
    call Call_00f_60bb
    ld hl, $c2cf
    call Call_00f_60bb
    ld hl, $c2d8
    jp Jump_00f_60bb


Jump_00f_6049:
    ld hl, $c2c3
    call Call_00f_60bb
    ld hl, $c2c9
    call Call_00f_60bb
    ld hl, $c2cc
    call Call_00f_60bb
    ld hl, $c2cf
    call Call_00f_60bb
    ld hl, $c2d5
    jp Jump_00f_60bb


Jump_00f_6067:
    ld hl, $c2c0
    call Call_00f_60bb
    ld hl, $c2c9
    call Call_00f_60bb
    ld hl, $c2cc
    call Call_00f_60bb
    ld hl, $c2d2
    jp Jump_00f_60bb


Jump_00f_607f:
    ld hl, $c2c3
    call Call_00f_60bb
    ld hl, $c2c6
    call Call_00f_60bb
    ld hl, $c2cf
    jp Jump_00f_60bb


Jump_00f_6091:
    ld hl, $c2c0
    call Call_00f_60bb
    ld hl, $c2c3
    call Call_00f_60bb
    ld hl, $c2c6
    call Call_00f_60bb
    ld hl, $c2cc
    jp Jump_00f_60bb


Jump_00f_60a9:
    ld hl, $c2c0
    call Call_00f_60bb
    ld hl, $c2c3
    call Call_00f_60bb
    ld hl, $c2c9
    jp Jump_00f_60bb


Call_00f_60bb:
Jump_00f_60bb:
    ld a, [hl]
    xor $ff
    ld [hl], a
    ret


Jump_00f_60c0:
    ld a, [$c16b]
    or a
    ret nz

    ld a, $ff
    ld [$c16b], a
    ld a, [$c2e0]
    or a
    ret z

    cp $03
    ret z

    cp $06
    ret z

    dec a
    ld [$c2e0], a
    ld a, $01
    jp Jump_000_026b


Jump_00f_60de:
    ld a, [$c16c]
    or a
    ret nz

    ld a, $ff
    ld [$c16c], a
    ld a, [$c2e0]
    cp $02
    ret z

    cp $05
    ret z

    cp $08
    ret z

    inc a
    ld [$c2e0], a
    ld a, $01
    jp Jump_000_026b


Jump_00f_60fd:
    ld a, [$c110]
    or a
    ret nz

    ld a, $ff
    ld [$c110], a
    ld a, [$c2e0]
    cp $03
    ret c

    sub $03
    ld [$c2e0], a
    ld a, $01
    jp Jump_000_026b


Jump_00f_6117:
    ld a, [$c111]
    or a
    ret nz

    ld a, $ff
    ld [$c111], a
    ld a, [$c2e0]
    cp $06
    ret nc

    add $03
    ld [$c2e0], a
    ld a, $01
    jp Jump_000_026b


    ds $1ecf, $00
