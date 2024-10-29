SECTION "ROM Bank $0f7", ROMX[$4000], BANK[$f7]

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
    inc e
    rla
    nop
    nop
    inc e
    rra
    nop
    nop
    ld a, [de]
    dec e
    nop
    nop
    ld e, $1d
    nop
    nop
    rra
    jr jr_0f7_4021

jr_0f7_4021:
    nop
    dec e
    ld a, [de]
    ld bc, $fb01
    db $fc
    inc bc
    inc bc
    ld hl, sp-$01
    rlca
    rlca
    rst $30
    ld hl, sp+$07
    rlca
    or $f9
    rlca
    rlca
    xor $ff
    dec b
    rlca
    call nz, Call_000_04ff
    rlca
    add b
    rst $38
    inc b
    rlca
    add h
    rst $38
    rlca
    inc b
    call nz, $077f
    inc b
    cp e
    ld a, a
    rlca
    inc b
    ret nz

    ld a, a
    rlca
    inc b
    ret nz

    ld a, a
    rlca
    inc b
    rst $38
    ld [hl], e
    rlca
    inc b
    ret nz

    ld a, a
    rlca
    inc b
    ret nz

    ld a, a
    rlca
    rlca
    ret nz

    rst $38
    rlca
    rlca
    push bc
    rst $38
    rlca
    rlca
    jp nz, Jump_000_07ff

    rlca
    ld b, d
    cp a
    dec b
    ld b, $82
    ld a, a
    inc bc
    inc bc
    jp nz, Jump_000_00ff

    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld h, c
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld hl, $003f
    nop
    ld hl, $003f
    nop
    ld hl, $003f
    nop
    ld hl, $003f
    nop
    ld hl, $003f
    nop
    ld hl, $003f
    nop

jr_0f7_40a6:
    db $10
    rra
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld c, $0e
    nop
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
    ret nz

    ret nz

    nop
    nop
    jr nz, jr_0f7_40a6

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    jr @-$06

    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ret c

    ld a, b
    nop
    nop
    ldh a, [$50]
    nop

Call_0f7_40e3:
    nop
    ld e, [hl]
    cp $00
    nop
    ld a, a
    rst $38
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    ld hl, sp-$01
    ret nz

    ret nz

    ld hl, sp-$01
    ld b, b
    ret nz

    ld [hl], b
    rst $38
    ld b, b
    ret nz

    jr nz, @+$01

    ld b, b
    ret nz

    daa
    ld hl, sp-$80
    add b
    ld l, a
    ld hl, sp-$80
    add b
    rst $18
    ld hl, sp-$80
    add b
    ld e, $f9
    add b
    add b
    ld d, $f9
    add b
    add b
    rst $38
    pop af
    nop
    nop
    rrca
    pop af
    nop
    nop
    rrca
    pop af
    nop
    nop
    adc a
    rst $38
    nop
    nop
    rra
    db $fd
    nop
    nop
    rra
    db $fd
    nop
    nop
    rra
    rst $28
    nop
    nop
    dec c
    di
    nop
    nop
    ld b, $fe
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc c
    db $fc
    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $f4
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    add h
    db $fc
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
    rrca
    rrca
    nop
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0f7_41cb

    nop
    nop
    jr c, jr_0f7_41bf

    nop
    nop
    jr c, jr_0f7_41d3

    nop
    nop
    inc [hl]
    dec sp
    nop
    nop
    dec a
    dec sp
    nop
    nop
    ccf
    jr nc, jr_0f7_41a1

jr_0f7_41a1:
    nop
    dec sp
    inc [hl]
    nop
    nop
    ld d, $19
    nop
    nop
    ldh a, [rIE]
    ld bc, $ff01
    pop af
    inc bc
    inc bc
    db $fd
    di
    inc bc
    inc bc
    db $fc
    rst $38
    inc bc
    inc bc
    add sp, -$01
    ld [bc], a
    inc bc
    ret nz

jr_0f7_41bf:
    rst $38
    ld [bc], a
    inc bc
    ld b, b
    rst $38
    ld bc, $6401
    cp a
    ld bc, $7b01

jr_0f7_41cb:
    sbc a
    ld bc, $7001
    sbc a
    ld bc, $7001

jr_0f7_41d3:
    sbc a
    ld bc, $3f01
    rst $18
    nop
    nop
    or b
    rst $08
    nop
    nop
    or b
    rst $08
    nop
    nop
    or b
    rst $08
    nop
    nop
    or h
    rst $08
    nop
    nop
    di
    rst $38
    nop
    nop
    pop hl
    rst $38
    nop
    nop
    pop bc
    rst $38
    nop
    nop
    ret nz

    rst $38
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    add b
    rst $38
    nop
    nop
    pop hl
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    sbc a
    rst $38
    ld bc, $0201
    cp $01
    ld bc, $fe02
    ld bc, $0201
    cp $01
    ld bc, $fc04
    ld bc, $0401
    db $fc
    ld bc, $0401
    db $fc
    nop
    nop
    add h
    db $fc
    nop
    nop

jr_0f7_422a:
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
    ld bc, $f801
    ld hl, sp+$03
    inc bc
    ld hl, sp-$08
    add b
    add b
    nop
    nop
    ld b, b
    ret nz

jr_0f7_4246:
    nop
    nop
    jr nz, jr_0f7_422a

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nc, jr_0f7_4246

    nop
    nop
    ldh a, [$f0]
    nop
    nop

jr_0f7_425c:
    or b
    ldh a, [rP1]
    nop
    cp $be
    nop
    nop
    cp a
    rst $38
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    db $fc
    rst $38
    add b
    add b
    ld hl, sp-$01
    ld b, b
    ret nz

    ld a, b
    rst $38
    ld b, b
    ret nz

    jr c, @+$01

    jr nz, jr_0f7_425c

    inc d
    rst $38
    ret nc

    jr nc, jr_0f7_4293

    rst $38
    ldh a, [rNR10]
    inc hl
    rst $38
    ldh a, [rNR10]
    cp $ff
    ret nc

    jr nc, jr_0f7_4294

    cp $a0
    ld h, b
    dec b
    cp $40

jr_0f7_4293:
    ret nz

jr_0f7_4294:
    rst $38
    db $fc
    ld b, b
    ret nz

    rrca
    rst $38
    add b
    add b
    dec bc
    db $fd
    nop
    nop
    ld c, e
    db $fd
    nop
    nop
    adc a
    rst $38
    nop
    nop
    adc a
    pop af
    nop
    nop
    rlca
    ld sp, hl
    nop
    nop
    ld [bc], a
    cp $00
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    jp nz, Jump_000_00fe

    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld a, l
    ld a, a
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld [hl+], a
    ld a, $00
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
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    cp $fe
    nop
    nop
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
    inc e
    rla
    nop
    nop
    inc e
    rra
    nop
    nop
    ld a, [de]
    dec e
    nop
    nop
    ld e, $1d
    nop
    nop
    rra
    jr jr_0f7_4321

jr_0f7_4321:
    nop
    dec e
    ld a, [de]
    ld bc, $fb01
    db $fc
    inc bc
    inc bc
    ld hl, sp-$01
    rlca
    rlca
    rst $30
    ld hl, sp+$07
    rlca
    or $f9
    rlca
    rlca
    xor $ff
    dec b
    rlca
    call nz, Call_000_04ff
    rlca
    add b
    rst $38
    inc b
    rlca
    add h
    rst $38
    inc bc
    inc bc
    ld b, h
    rst $38
    nop
    nop
    cp e
    rst $38
    nop
    nop
    add b
    rst $38
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld a, a
    ld [hl], e
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    add c
    rst $38
    nop
    nop
    jp z, Jump_000_00bf

    nop
    add h
    rst $38
    nop
    nop
    add h
    rst $38
    nop
    nop
    add h
    rst $38
    nop
    nop
    adc b
    rst $38
    nop
    nop
    adc b
    rst $38
    nop
    nop
    adc a
    rst $38
    nop
    nop
    adc a
    rst $38
    nop
    nop
    ld hl, sp-$01
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
    add d
    rst $38
    nop
    nop
    add d
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop

jr_0f7_43a6:
    ld b, d
    ld a, [hl]
    nop
    nop
    inc a
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
    ld a, $3e
    nop
    nop
    cp $fe
    ld bc, $fe01
    cp $c0
    ret nz

    nop
    nop
    jr nz, jr_0f7_43a6

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    jr @-$06

    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ret c

    ld a, b
    nop
    nop
    ldh a, [$50]
    nop
    nop
    ld e, [hl]
    cp $00
    nop
    ld a, a
    rst $38
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    ld hl, sp-$01
    ret nz

    ret nz

    ld hl, sp-$01
    ld b, b
    ret nz

    ld [hl], b
    rst $38
    ld b, b
    ret nz

    jr nz, @+$01

    ld b, b
    ret nz

    ld l, $f1
    add b
    add b
    ld l, [hl]
    pop af
    add b
    add b
    rst $18
    pop hl
    nop
    nop
    dec e
    db $e3
    nop
    nop
    ld a, $c2
    nop
    nop
    ld a, [$00c6]
    nop
    ld d, h
    db $ec
    nop
    nop
    ld hl, sp+$78
    nop
    nop
    ld hl, sp+$78
    nop
    nop
    ld hl, sp+$78
    nop
    nop
    ld a, b
    sbc b
    nop
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc c
    db $fc
    nop
    nop
    ld hl, sp-$08
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
    ld a, h
    ld a, h
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ldh a, [$f0]
    nop
    nop
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
    inc e
    rla
    nop
    nop
    inc e
    rra
    nop
    nop
    ld a, [de]
    dec e
    nop
    nop
    ld e, $1d
    nop
    nop
    rra
    jr jr_0f7_44a1

jr_0f7_44a1:
    nop
    dec e
    ld a, [de]
    ld bc, $fb01
    db $fc
    inc bc
    inc bc
    ld hl, sp-$01
    rlca
    rlca
    rst $30
    ld hl, sp+$07
    rlca
    or $f9
    rlca
    rlca
    xor $ff
    dec b
    rlca
    call nz, Call_000_04ff
    rlca
    add b
    rst $38
    inc b
    rlca
    add h
    rst $38
    inc bc
    inc bc
    ld b, h
    rst $38
    ld bc, $3b01
    rst $38
    ld bc, $c001
    ccf
    ld bc, $c001
    ccf
    ld bc, $7f01
    or e
    ld bc, $c001
    rst $38
    ld bc, $c001
    rst $38
    ld [bc], a
    inc bc
    pop bc
    rst $38
    inc bc
    ld [bc], a
    adc d
    rst $38
    ld [bc], a
    inc bc
    add h
    ld a, a
    ld bc, $8401
    rst $38
    nop
    nop
    add h
    rst $38
    nop
    nop
    ld b, h
    ld a, a
    nop
    nop
    ld c, b
    ld a, a
    nop
    nop
    ld c, b
    ld a, a
    nop
    nop
    cpl
    ccf
    nop
    nop
    jr z, jr_0f7_4547

    nop
    nop
    jr z, jr_0f7_454b

    nop
    nop
    jr nc, jr_0f7_454f

    nop
    nop
    jr nc, jr_0f7_4553

    nop
    nop
    jr nc, jr_0f7_4557

    nop
    nop
    jr nc, jr_0f7_455b

    nop
    nop
    jr nc, jr_0f7_455f

    nop
    nop
    db $10
    rra
    nop
    nop

jr_0f7_4526:
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
    rrca
    rrca
    ret nz

    ret nz

    nop
    nop
    jr nz, jr_0f7_4526

    nop

jr_0f7_4547:
    nop
    db $10
    ldh a, [rP1]

jr_0f7_454b:
    nop
    ld [$00f8], sp

jr_0f7_454f:
    nop
    ld [$00f8], sp

jr_0f7_4553:
    nop
    jr @-$06

    nop

jr_0f7_4557:
    nop
    ld hl, sp-$08
    nop

jr_0f7_455b:
    nop
    ret c

    ld a, b
    nop

jr_0f7_455f:
    nop
    ldh a, [$50]
    nop
    nop
    ld e, [hl]
    cp $00
    nop
    ld a, a
    rst $38
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    ld hl, sp-$01
    ret nz

    ret nz

    ld hl, sp-$01
    ld b, b
    ret nz

    ld [hl], b
    rst $38
    ld b, b
    ret nz

    jr nz, @+$01

    ld b, b
    ret nz

    daa
    ld hl, sp+$40
    ret nz

    ld l, a
    ldh a, [rLCDC]
    ret nz

    sbc $f1
    add b
    add b
    ld c, $f1
    add b
    add b
    dec c
    di
    nop
    nop
    db $fd
    db $e3
    nop
    nop
    dec e
    ei
    nop
    nop
    ld a, $fe
    nop
    nop
    ld a, [hl]
    cp [hl]
    nop
    nop
    ld a, [hl]
    cp [hl]
    nop
    nop
    inc a
    call nz, RST_00
    inc b
    db $fc
    nop
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
    ldh a, [$f0]
    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    ld d, b
    ldh a, [rP1]
    nop
    ld d, b
    ldh a, [rP1]
    nop
    ld d, b
    ldh a, [rP1]
    nop
    sub b
    ldh a, [rP1]
    nop
    sub b
    ldh a, [rP1]
    nop
    sub b
    ldh a, [rP1]
    nop
    sub b
    ldh a, [rP1]
    nop
    jr nz, @-$1e

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
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    nop
    nop
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
    inc e
    rla
    nop
    nop
    inc e
    rra
    nop
    nop
    ld a, [de]
    dec e
    nop
    nop
    ld e, $1d
    nop
    nop
    rra
    jr jr_0f7_4621

jr_0f7_4621:
    nop
    dec e
    ld a, [de]
    ld bc, $fb01
    db $fc
    inc bc
    inc bc
    ld hl, sp-$01
    rlca
    rlca
    rst $30
    ld hl, sp+$07
    rlca
    or $f9
    rlca
    rlca
    xor $ff
    dec b
    rlca
    call nz, Call_000_04ff
    rlca
    add b
    rst $38
    inc b
    rlca
    add h
    rst $38
    inc bc
    inc bc
    ld b, h
    rst $38
    ld bc, $3b01
    rst $38
    ld [bc], a
    inc bc
    ret nz

    ccf
    ld [bc], a
    inc bc
    ret nz

    ccf
    dec b
    ld b, $ff
    inc sp
    rlca
    rlca
    ret nz

    rst $38
    rlca
    rlca
    ret nz

    rst $38
    rlca
    rlca
    pop bc
    rst $38
    rrca
    dec bc
    jp z, Jump_000_07ff

    inc b
    call nz, Call_000_037f
    inc bc
    add h
    rst $38
    nop
    nop
    ld h, h
    ld a, a
    nop
    nop
    jr z, @+$41

    nop
    nop
    jr jr_0f7_469b

    nop
    nop
    jr jr_0f7_469f

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
    jr nz, jr_0f7_46cb

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    add b
    rst $38
    nop
    nop
    add b

jr_0f7_469b:
    rst $38
    nop
    nop
    add b

jr_0f7_469f:
    rst $38
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop

jr_0f7_46a6:
    ld a, $3e
    nop
    nop
    ld e, $1e
    nop
    nop
    ld e, $1e
    ld bc, $fe01
    cp $01
    ld bc, $fe0e
    nop
    nop
    cp $fe
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    jr nz, jr_0f7_46a6

    nop
    nop
    db $10
    ldh a, [rP1]

jr_0f7_46cb:
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    jr @-$06

    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ret c

    ld a, b
    nop
    nop
    ldh a, [$50]
    nop
    nop
    ld e, [hl]
    cp $00
    nop
    ld a, a
    rst $38
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    ld hl, sp-$01
    ret nz

    ret nz

    ld hl, sp-$01
    ld b, b
    ret nz

    ld [hl], b
    rst $38
    ld b, b
    ret nz

    jr nz, @+$01

    ld b, b
    ret nz

    inc hl
    db $fc
    ld b, b
    ret nz

    ld l, e
    db $fc
    ld b, b
    ret nz

    db $db
    db $fc
    ld b, b
    ret nz

    rla
    ld hl, sp+$40
    ret nz

    ld d, $f9
    add b
    add b
    xor $f1
    add b
    add b
    rra
    rst $38
    add b
    add b
    rra
    rst $38
    add b
    add b
    rra
    rst $38
    nop
    nop
    ccf
    rst $18
    nop
    nop
    ld e, $e2
    nop
    nop
    inc b
    db $fc

jr_0f7_472e:
    nop
    nop
    inc b
    db $fc

jr_0f7_4732:
    nop
    nop
    jr jr_0f7_472e

    nop
    nop
    jr jr_0f7_4732

    nop
    nop
    jr nc, jr_0f7_472e

    nop
    nop
    or b
    ldh a, [rP1]
    nop
    add sp, -$08
    nop
    nop
    ld c, b
    ld hl, sp+$00
    nop
    ld c, b
    ld hl, sp+$00
    nop
    add h
    db $fc
    nop
    nop
    add h
    db $fc
    nop
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    inc b
    db $fc
    nop
    nop
    ld hl, sp-$08
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
    ld a, [hl]
    ld a, [hl]
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
    inc e
    rla
    nop
    nop
    inc e
    rra
    nop
    nop
    ld a, [de]
    dec e
    nop
    nop
    ld e, $1d
    nop
    nop
    rra
    jr jr_0f7_47a1

jr_0f7_47a1:
    nop
    dec e
    ld a, [de]
    ld bc, $fb01
    db $fc
    inc bc
    inc bc
    ld hl, sp-$01
    rlca
    rlca
    rst $30
    ld hl, sp+$07
    rlca
    or $f9
    rlca
    rlca
    xor $ff
    dec b
    rlca
    call nz, Call_000_04ff
    rlca
    add b
    rst $38
    inc b
    rlca
    add h
    rst $38
    inc bc
    ld [bc], a
    call nz, Call_000_037f
    ld [bc], a
    cp e
    ld a, a
    dec b
    ld b, $c0
    ccf
    dec b
    ld b, $80
    ld a, a
    rlca
    inc b
    cp a
    ld [hl], e
    rlca
    rlca
    add b
    ld a, a
    rrca
    rrca
    ret nz

    rst $38
    rra
    rla
    pop bc
    rst $38
    rra
    rla
    jp z, $0fff

    ld [$ffc4], sp
    rlca
    rlca
    add h
    rst $38
    nop
    nop
    add h
    rst $38
    nop
    nop
    add h
    rst $38
    nop
    nop
    add h
    rst $38
    nop
    nop
    add h
    rst $38
    nop
    nop
    add h
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
    ld b, h
    ld a, a
    nop
    nop
    inc h
    ccf
    nop
    nop
    inc h
    ccf
    nop
    nop
    inc d
    rra
    nop
    nop
    inc d
    rra
    nop
    nop
    ld c, $0f
    nop
    nop

jr_0f7_4826:
    rlca
    rlca
    nop
    nop
    ld bc, $0001
    nop
    rrca
    rrca
    nop
    nop
    ld de, $001f
    nop
    rrca
    rrca
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    ld bc, $c001
    ret nz

    nop
    nop
    jr nz, jr_0f7_4826

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    jr @-$06

    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ret c

    ld a, b
    nop
    nop
    ldh a, [$50]
    nop
    nop
    ld e, [hl]
    cp $00
    nop
    ld a, a
    rst $38
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    ld hl, sp-$01
    ret nz

    ret nz

    ld hl, sp-$01
    ld b, b
    ret nz

    ld [hl], b
    rst $38
    ld b, b
    ret nz

    jr nz, @+$01

    ld b, b
    ret nz

    inc hl
    db $fc
    ld b, b
    ret nz

    ld l, e
    db $fc
    ret nz

    ld b, b
    reti


    cp $c0
    ld b, b
    rra
    ld hl, sp-$40
    ld b, b
    rra
    ld hl, sp-$40
    ld b, b
    ei
    db $fc
    ret nz

    ld b, b
    rlca
    rst $38
    ret nz

    ret nz

    rlca
    rst $38
    ret nz

    ret nz

    rlca
    rst $38
    ret nz

    ret nz

    rrca
    rst $30
    ld b, b
    ret nz

    ld b, $f9
    add b
    add b
    rlca
    rst $38
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    jr @-$06

    nop
    nop
    ld hl, sp-$08
    nop
    nop
    add sp, -$08
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld [$00f8], sp
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a

jr_0f7_48ea:
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
    jr nc, jr_0f7_48ea

    nop
    nop
    ldh a, [$f0]
    nop
    nop
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
    inc e
    rla
    nop
    nop
    inc e
    rra
    nop
    nop
    ld a, [de]
    dec e
    nop
    nop
    ld e, $1d
    nop
    nop
    rra
    jr jr_0f7_4921

jr_0f7_4921:
    nop
    dec e
    ld a, [de]
    ld bc, $fb01
    db $fc
    inc bc
    inc bc
    ld hl, sp-$01
    rlca
    rlca
    rst $30
    ld hl, sp+$07
    rlca
    or $f9
    rlca
    rlca
    xor $ff
    dec b
    rlca
    call nz, Call_000_04ff
    rlca
    add b
    rst $38
    inc b
    rlca
    add h
    rst $38
    inc bc
    inc bc
    ld b, h
    rst $38
    ld bc, $3b01
    rst $38
    ld [bc], a
    inc bc
    ret nz

    ccf
    ld [bc], a
    inc bc
    ret nz

    ccf
    dec b
    ld b, $ff
    inc sp
    dec b
    ld b, $c0
    ccf
    rrca
    rrca
    ld b, b
    rst $38
    rra
    rra
    pop bc
    rst $38
    ccf
    cpl
    adc d
    rst $38
    rra
    ld de, $ff84
    ld c, $0e
    add h
    rst $38
    nop
    nop
    add h
    rst $38
    ld bc, $0401
    rst $38
    ld bc, $0401
    rst $38
    ld bc, $fe01
    rst $38
    ld bc, $fe01
    rst $38
    ld bc, $0601
    rst $38
    nop
    nop
    add e
    rst $38
    nop
    nop
    add e
    rst $38
    nop
    nop
    ld b, d
    ld a, a
    nop
    nop
    ld b, d
    ld a, a
    nop
    nop
    ld [hl+], a
    ccf
    nop
    nop
    ld [de], a
    rra
    nop
    nop
    ld c, $0f
    nop
    nop

jr_0f7_49a6:
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
    rrca
    rrca
    ret nz

    ret nz

    nop
    nop
    jr nz, jr_0f7_49a6

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    jr @-$06

    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ret c

jr_0f7_49dd:
    ld a, b
    nop
    nop

jr_0f7_49e0:
    ldh a, [$50]
    nop
    nop
    ld e, [hl]
    cp $00
    nop
    ld a, a
    rst $38
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    ld hl, sp-$01
    ret nz

    ret nz

    ld hl, sp-$01
    ld b, b
    ret nz

    ld [hl], b
    rst $38
    ld b, b
    ret nz

    jr nz, @+$01

    jr nz, jr_0f7_49e0

    ld hl, $a0fe
    ld h, b
    ld l, c
    cp $e0
    jr nz, jr_0f7_49dd

    rst $30
    ldh [rNR41], a
    rla
    db $f4
    ldh [rNR41], a
    rla
    db $f4
    ldh [rNR41], a
    rst $30
    rst $30
    ldh [$e0], a
    rrca
    rst $38
    ldh [$e0], a
    rrca
    ei
    and b
    ldh [rIF], a
    db $fc
    ld b, b
    ret nz

    dec bc
    ei
    add b
    add b
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld b, $fe
    nop
    nop
    db $fd
    rst $38
    nop
    nop
    pop af
    rst $38
    nop
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    inc b
    db $fc
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
    ld hl, sp-$08
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
    inc e
    rla
    nop
    nop
    inc e
    rra
    nop
    nop
    ld a, [de]
    dec e
    nop
    nop
    ld e, $1d
    nop
    nop
    rra
    jr jr_0f7_4aa1

jr_0f7_4aa1:
    nop
    dec e
    ld a, [de]
    ld bc, $fb01
    db $fc
    inc bc
    inc bc
    ld hl, sp-$01
    rlca
    rlca
    rst $30
    ld hl, sp+$07
    rlca
    or $f9
    rlca
    rlca
    xor $ff
    dec b
    rlca
    call nz, Call_000_04ff
    rlca
    add b
    rst $38
    inc b
    rlca
    add h
    rst $38
    inc bc
    inc bc
    ld b, h
    rst $38
    ld bc, $3b01
    rst $38
    ld [bc], a
    inc bc
    ret nz

    ccf
    ld [bc], a
    inc bc
    ret nz

    ccf
    dec b
    ld b, $ff
    inc sp
    rlca
    rlca
    ret nz

    rst $38
    rlca
    rlca
    ret nz

    rst $38
    rlca
    rlca
    pop bc
    rst $38
    rrca
    dec bc
    jp z, Jump_000_07ff

    inc b
    call nz, Call_000_037f
    inc bc
    add h
    rst $38
    nop
    nop
    add h
    rst $38
    nop
    nop
    add h
    rst $38
    ld bc, $0201
    rst $38
    ld bc, $0201
    rst $38
    ld bc, $fe01
    rst $38
    ld bc, $0601
    rst $38
    ld bc, $0201
    rst $38
    ld [bc], a
    inc bc
    inc bc
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    ld [bc], a
    inc bc
    ld b, $ff
    ld [bc], a
    inc bc
    dec b
    db $fd
    ld [bc], a
    inc bc
    dec b
    db $fd
    ld bc, $f901
    ld sp, hl
    nop
    nop

jr_0f7_4b26:
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
    ldh [$e0], a
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    jr nz, jr_0f7_4b26

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    jr @-$06

    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ret c

    ld a, b
    nop
    nop
    ldh a, [$50]
    nop
    nop
    ld e, [hl]
    cp $00
    nop
    ld a, a
    rst $38
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    ld hl, sp-$01
    ret nz

    ret nz

    ld hl, sp-$01
    ld b, b
    ret nz

    ld [hl], b
    rst $38
    ld b, b
    ret nz

    jr nz, @+$01

    ld b, b
    ret nz

    inc hl
    db $fc
    ld b, b
    ret nz

    ld l, e
    db $fc
    ld b, b
    ret nz

    db $db
    db $fc
    ld b, b
    ret nz

    rla
    ld hl, sp+$40
    ret nz

    ld d, $f9
    add b
    add b
    xor $f1
    add b
    add b
    rra
    rst $38
    add b
    add b
    rra
    rst $38
    add b
    add b
    rra
    rst $38
    nop
    nop
    ccf
    rst $18
    nop
    nop
    ld e, $e2
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld b, $fe
    nop
    nop
    dec c
    rst $38
    nop
    nop
    ld sp, hl
    rst $38
    nop
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    add d
    cp $00
    nop
    ld a, h
    ld a, h
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
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    cp $fe
    nop
    nop
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
    inc e
    rla
    nop
    nop
    inc e
    rra
    nop
    nop
    ld a, [de]
    dec e
    nop
    nop
    ld e, $1d
    nop
    nop
    rra
    jr jr_0f7_4c21

jr_0f7_4c21:
    nop
    dec e
    ld a, [de]
    ld bc, $fb01
    db $fc
    inc bc
    inc bc
    ld hl, sp-$01
    rlca
    rlca
    rst $30
    ld hl, sp+$07
    rlca
    or $f9
    rlca
    rlca
    xor $ff
    dec b
    rlca
    call nz, Call_000_04ff
    rlca
    add b
    rst $38
    inc b
    rlca
    add h
    rst $38
    inc bc
    inc bc
    ld b, h
    rst $38
    ld bc, $3b01
    rst $38
    ld bc, $c001
    ccf
    ld bc, $c001
    ccf
    ld bc, $7f01
    or e
    ld bc, $c001
    rst $38
    ld bc, $c001
    rst $38
    ld [bc], a
    inc bc
    pop bc
    rst $38
    inc bc
    ld [bc], a
    jp z, Jump_000_02ff

    inc bc
    call nz, $013f
    ld bc, $ff84
    nop
    nop
    add h
    rst $38
    ld bc, $0201
    rst $38
    ld bc, $0201
    rst $38
    ld bc, $0201
    rst $38
    inc bc
    inc bc
    di
    rst $38
    inc bc
    inc bc
    db $fd
    db $fd
    ld [bc], a
    inc bc
    dec c
    db $fd
    inc b
    rlca
    inc b
    db $fc
    inc b
    rlca
    ld [$04f8], sp
    rlca
    ld [$08f8], sp
    rrca
    ld [$08f8], sp
    rrca
    ld [$04f8], sp
    rlca
    db $10
    ldh a, [$03]
    inc bc

jr_0f7_4ca6:
    ldh [$e0], a
    ld bc, $e001
    ldh [rSB], a
    ld bc, $e0e0
    rra
    rra
    ldh [$e0], a
    db $10
    rra
    ldh [$e0], a
    rrca
    rrca
    ldh [$e0], a
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    jr nz, jr_0f7_4ca6

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    jr @-$06

    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ret c

    ld a, b
    nop
    nop
    ldh a, [$50]
    nop
    nop
    ld e, [hl]
    cp $00
    nop
    ld a, a
    rst $38
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    ld hl, sp-$01
    ret nz

    ret nz

    ld hl, sp-$01
    ld b, b
    ret nz

    ld [hl], b
    rst $38
    ld b, b
    ret nz

    jr nz, @+$01

    ld b, b
    ret nz

    daa
    ld hl, sp+$40
    ret nz

    ld l, a
    ldh a, [rLCDC]
    ret nz

    sbc $f1
    add b
    add b
    ld c, $f1
    add b
    add b
    dec c
    di
    nop
    nop
    db $fd
    db $e3
    nop
    nop
    dec e
    ei
    nop
    nop
    ld a, $fe
    nop
    nop
    ld a, [hl]
    cp [hl]
    nop
    nop
    ld a, [hl]
    cp [hl]
    nop
    nop
    inc a
    call nz, RST_00
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld b, $fe
    nop
    nop
    dec c
    rst $38
    nop
    nop
    ld sp, hl
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    ld b, b
    ld a, a
    ld b, b
    ret nz

    ld b, b
    ld a, a
    ld b, b
    ret nz

    jr nz, jr_0f7_4da1

    add b
    add b
    rra
    rra
    nop
    nop
    rrca
    rrca
    add b
    add b
    rlca
    rlca
    add b
    add b
    rlca
    rlca
    ret nz

    ret nz

    rrca
    rrca
    ret nz

    ret nz

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
    inc e
    rla
    nop
    nop
    inc e
    rra
    nop
    nop
    ld a, [de]
    dec e
    nop
    nop
    ld e, $1d
    nop
    nop
    rra
    jr jr_0f7_4da1

jr_0f7_4da1:
    nop
    dec e
    ld a, [de]
    ld bc, $fb01
    db $fc
    inc bc
    inc bc
    ld hl, sp-$01
    rlca
    rlca
    rst $30
    ld hl, sp+$07
    rlca
    or $f9
    rlca
    rlca
    xor $ff
    dec b
    rlca
    call nz, Call_000_04ff
    rlca
    add b
    rst $38
    inc b
    rlca
    add h
    rst $38
    inc bc
    inc bc
    ld b, h
    rst $38
    ld bc, $3b01
    rst $38
    ld bc, $c001
    ccf
    ld bc, $c001
    ccf
    ld bc, $7f01
    or e
    ld bc, $c001
    rst $38
    ld bc, $c001
    rst $38
    ld [bc], a
    inc bc
    pop bc
    rst $38
    inc bc
    ld [bc], a
    adc d
    rst $38
    ld [bc], a
    inc bc
    add h
    ld a, a
    ld bc, $8401
    rst $38
    ld bc, $0401
    rst $38
    ld bc, $0401
    rst $38
    ld bc, $0201
    rst $38
    ld bc, $0201
    rst $38
    ld bc, $0601
    rst $38
    ld bc, $ff01
    rst $38
    ld [bc], a
    inc bc
    ld a, [c]
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    ld [bc], a
    inc bc
    inc bc
    rst $38
    ld [bc], a
    inc bc
    inc bc
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    cp $02
    inc bc
    ld [bc], a
    cp $01
    ld bc, $fc04
    nop
    nop

jr_0f7_4e26:
    ld hl, sp-$08
    nop
    nop
    ldh a, [$f0]
    rlca
    rlca
    ldh a, [$f0]
    ld [$f00f], sp
    ldh a, [rTAC]
    rlca
    ldh a, [$f0]
    ld bc, $1001
    ldh a, [rP1]
    nop
    ldh a, [$f0]
    ret nz

    ret nz

    nop
    nop
    jr nz, jr_0f7_4e26

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    jr @-$06

    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ret c

    ld a, b
    nop
    nop
    ldh a, [$50]
    nop
    nop
    ld e, [hl]
    cp $00
    nop
    ld a, a
    rst $38
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    ld hl, sp-$01
    ret nz

    ret nz

    ld hl, sp-$01
    ld b, b
    ret nz

    ld [hl], b
    rst $38
    ld b, b
    ret nz

    jr nz, @+$01

    ld b, b
    ret nz

    daa
    ld hl, sp+$40
    ret nz

    ld l, a
    ldh a, [rLCDC]
    ret nz

    sbc $f1
    add b
    add b
    ld c, $f1
    add b
    add b
    dec c
    di
    nop
    nop
    db $fd
    db $e3
    nop
    nop
    dec e
    ei
    nop
    nop
    ld a, $fe
    nop
    nop
    ld a, [hl]
    cp [hl]
    nop
    nop
    ld a, [hl]
    cp [hl]
    nop
    nop
    inc a
    call nz, RST_00
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [$00fe]
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    add c
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
    ld a, $3e
    nop
    nop
    ld e, $1e
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
    rrca
    rrca
    nop
    nop
    jr nc, jr_0f7_4f7f

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    add b
    rst $38
    nop
    nop
    or b
    rst $18
    nop
    nop
    or b
    rst $38
    nop
    nop
    ld c, h
    ld [hl], e
    nop
    nop
    ei
    rst $30
    ld bc, $fe01
    pop hl
    inc bc
    inc bc
    rst $30
    add sp, $03
    inc bc
    xor $f1
    inc bc
    inc bc
    ld sp, hl
    cp $01
    ld bc, $f91e
    ld bc, $2701
    rst $38
    ld bc, $2201
    rst $38
    ld bc, $1001
    rst $38
    ld bc, $ce01
    ccf
    ld bc, $f801

jr_0f7_4f7f:
    rra
    ld [bc], a
    inc bc
    rst $30
    rla
    inc bc
    ld [bc], a
    rst $10
    scf
    inc bc
    ld [bc], a
    rst $20
    daa
    inc bc
    ld [bc], a
    rst $28
    dec hl
    inc b
    rlca
    cp a
    ld a, e
    rlca
    rlca
    ld e, a
    db $dd
    rlca
    rlca
    ret z

    rst $08
    rrca
    rrca
    ret z

    rst $08
    rrca
    rrca
    ret z

    ld c, a
    rrca
    rrca
    add a
    add a
    rrca
    add hl, bc
    inc b
    rlca
    rrca
    add hl, bc
    ld [bc], a
    inc bc
    ld c, $0a
    ld bc, $0401
    inc b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f7_4fe6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_0f7_4fe6

    nop
    nop

jr_0f7_5008:
    db $10
    ldh a, [rP1]
    nop

jr_0f7_500c:
    inc e
    db $fc
    nop
    nop
    ccf
    rst $38
    nop
    nop

jr_0f7_5014:
    rst $38
    ld a, a
    add b
    add b
    cp a
    rst $38
    ret nz

    ret nz

    db $fc
    rst $38
    ld h, b
    ldh [$7c], a
    rst $38
    ld h, b
    ldh [$7c], a
    rst $38
    jr nz, jr_0f7_5008

    ld a, b
    rst $38
    jr nz, jr_0f7_500c

    ld [$20ff], sp
    ldh [$08], a
    rst $38
    jr nz, jr_0f7_5014

    inc de
    db $fc
    ret nz

    ld b, b
    rst $20
    ld hl, sp-$40
    ld b, b
    rlca
    ld hl, sp-$40
    ld b, b
    rst $38
    add b
    ld b, b
    ret nz

    rst $38
    add b
    ld b, b
    ret nz

    ret nz

    rst $38
    ld b, b
    ret nz

    nop
    rst $38
    ret nz

    ret nz

    add c
    rst $38
    add b
    add b
    jp Jump_000_00ff


    nop
    ld h, [hl]
    cp $00
    nop
    ld a, [hl-]
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    cp $fe
    rlca
    rlca
    inc bc
    rst $38
    rst $08
    rst $08
    nop
    rst $38
    ccf
    rst $38
    ldh [rIE], a
    rra
    rst $38
    ldh a, [rIE]
    rra
    rst $38
    ldh a, [rIE]
    rra
    rst $38
    ld hl, sp-$01
    ld l, $ee
    nop
    nop
    nop
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
    add sp, -$28
    nop
    nop
    ld [hl], h
    adc h
    ld bc, $ba01
    add $01
    ld bc, $724e
    nop
    nop
    ld d, [hl]
    ld l, [hl]
    nop
    nop
    ccf
    cpl
    nop
    nop
    ld e, $1f
    ret nz

    ret nz

    rrca
    ld c, $b0
    ld [hl], b
    rrca
    rrca
    rst $28
    rra
    rlca
    rlca
    rst $38
    nop
    inc bc
    inc bc
    ld l, a
    sub b
    nop
    nop
    rst $08
    ldh a, [rP1]
    nop
    ld a, $3f
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
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld [bc], a
    inc bc
    nop
    nop
    ld [bc], a
    inc bc
    nop
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
    inc b
    rlca
    nop
    nop
    dec b
    rlca
    nop
    nop
    dec b
    rlca
    nop
    nop
    dec b
    rlca
    nop
    nop
    dec b
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
    inc bc
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    jr c, @+$3a

    nop
    nop
    ld b, [hl]
    ld a, [hl]
    nop
    nop
    add c
    rst $38
    nop
    nop
    ld h, b
    cp a
    add b
    add b
    ld h, b
    rst $38
    ld b, b
    ret nz

    sub b
    rst $28
    ld b, b
    ret nz

    call c, Call_0f7_40e3
    ret nz

    rst $38
    adc a
    ret nz

    ret nz

    db $dd
    and a
    ret nz

    ret nz

    rst $38
    add l
    add b
    add b
    or l
    rst $08
    nop
    nop
    rlca
    rst $38
    add b
    add b
    inc bc
    rst $38
    ret nz

    ret nz

    ld bc, $c0ff
    ret nz

    ld bc, $c0ff
    ret nz

    pop hl
    rst $38
    ret nz

    ret nz

    ld e, l
    rst $38
    ret nz

    ret nz

    add c
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    ld bc, $80ff
    add b
    ld bc, $80ff
    add b
    rst $38
    rst $38
    nop
    nop
    ld bc, $00ff
    nop
    ld bc, $00ff
    nop
    nop
    rst $38
    add b
    add b
    ld b, b
    rst $38
    add b
    add b
    ld b, b
    rst $38
    add b
    add b
    add c
    rst $38
    nop
    nop
    add d
    cp $00
    nop
    add h
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    jr @-$06

    nop
    nop
    db $fc
    db $fc
    nop
    nop
    db $f4
    db $fc
    nop
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    ld b, d
    cp $00
    nop
    ld b, h
    db $fc
    nop
    nop
    ld a, b
    ld hl, sp+$00
    nop
    ld hl, sp-$08
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    pop de
    xor $80
    add b
    rst $18
    ldh [$80], a
    add b
    sbc a
    ldh [rIE], a
    rst $38
    ld a, l
    ld [hl], e
    rst $28
    ldh a, [rNR31]
    ld d, $5f
    ldh [rNR31], a
    ld d, $5d
    ld [c], a
    rrca
    rrca
    rst $38
    rst $38
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
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
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
    inc bc
    inc bc
    nop
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
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    rlca
    rlca

jr_0f7_52bc:
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
    rra
    rra
    nop
    nop
    jr nz, jr_0f7_530d

    add b
    add b
    ld b, b
    ld a, a
    ld b, b
    ret nz

    ld [hl], b
    ld e, a
    jr nz, @-$1e

    ld [hl], b
    ld a, a
    jr nz, jr_0f7_52bc

    ld l, b
    ld [hl], a
    ld h, b
    ldh [$7b], a
    ld [hl], a
    ldh [$e0], a
    ld a, a
    ld h, c
    ld h, b
    ldh [rPCM34], a
    ld l, c
    ret nz

    ld b, b
    dec l
    inc sp
    ld b, b
    ret nz

    rst $00
    rst $38
    ret nz

    ret nz

    ret nz

    ccf
    ldh [$e0], a
    ret nz

    ccf
    ld [hl], b
    ldh a, [$c0]
    ccf
    ld [hl], b
    ldh a, [$80]
    rst $38
    ld [hl], b
    ldh a, [$be]
    rst $38
    ld [hl], b
    ldh a, [$d0]
    rst $38
    ld [hl], b
    ldh a, [$60]

jr_0f7_530d:
    ld a, a
    ld [hl], b
    ldh a, [$7f]
    ld a, a
    ldh a, [$f0]
    ld b, b
    ld a, a
    ld h, b
    ldh [$80], a
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    nop
    rst $38
    ld b, b
    ret nz

    jr nz, @+$01

    ld b, b
    ret nz

    and b
    rst $38
    ld b, b
    ret nz

    ld b, b
    rst $38
    add b
    add b
    ld b, c
    rst $38
    nop
    nop
    ld b, d
    cp $00
    nop
    add d
    cp $00
    nop
    add h
    db $fc
    nop
    nop
    add h
    db $fc
    nop
    nop
    adc h
    db $fc
    nop
    nop
    cp $fe
    nop
    nop
    ld a, [$00fe]
    nop
    ld b, c
    rst $38
    nop
    nop
    ld b, c
    rst $38
    nop
    nop
    ld b, c
    rst $38
    nop
    nop
    ld hl, $00ff
    nop
    ld [hl+], a
    cp $00
    nop
    inc a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, $03
    inc bc
    rrca
    add hl, bc
    inc c
    rrca
    ld sp, hl
    or $13
    inc e
    rst $30
    ld hl, sp+$6e
    ld [hl], c
    rst $38
    ldh a, [$9d]
    db $e3
    cp b
    ld a, a
    ei
    rst $00
    cp a
    ld a, a
    rst $28
    rst $38
    ret nz

    ret nz

    ld [hl], a
    ld [hl], a
    nop
    nop
    nop
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
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
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
    inc bc
    inc bc
    nop
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
    ld bc, $0001
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
    ld a, $3e
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    add b
    rst $38
    add b
    add b
    ldh [$bf], a
    ld b, b
    ret nz

    ldh [rIE], a
    ld b, b
    ret nz

    ret nc

    rst $28
    ret nz

    ret nz

    rst $30
    rst $28
    ret nz

    ret nz

    cp $c3
    ret nz

    ret nz

    rst $28
    jp nc, $8080

    ld e, d
    ld h, a
    add b
    add b
    ld l, a
    ld a, a
    add b
    add b
    rst $38
    rst $38
    ldh [$e0], a
    pop af
    rst $38
    ldh a, [$f0]
    xor b
    rst $30
    ldh a, [$f0]
    jr c, @-$37

    ldh a, [$f0]
    db $fc
    inc bc
    ldh a, [$f0]
    db $fc
    inc bc
    ldh a, [$f0]
    ld [hl], b
    adc a
    ldh a, [$f0]
    ccf
    rst $38
    ldh a, [$f0]
    add b
    rst $38
    ldh [$e0], a
    add b
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ret nz

    add b
    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    nop
    rst $38
    ld b, b
    ret nz

    jr nz, @+$01

    ld b, b
    ret nz

    and b
    rst $38
    ld b, b
    ret nz

    ld b, b
    rst $38
    add b
    add b
    ld b, c
    rst $38
    nop
    nop
    ld b, d
    cp $00
    nop
    add d
    cp $00
    nop
    add h
    db $fc
    nop
    nop
    add h
    db $fc
    nop
    nop
    adc h

jr_0f7_54cd:
    db $fc
    nop
    nop
    cp $fe
    nop
    nop
    ld a, [$00fe]
    nop
    ld b, c
    rst $38
    nop

jr_0f7_54db:
    nop
    ld b, c
    rst $38
    nop
    nop
    ld b, c
    rst $38
    nop
    nop
    ld hl, $00ff
    nop
    ld [hl+], a
    cp $00
    nop
    inc a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    ld bc, $0401
    db $fc
    ld [bc], a
    inc bc
    ld [bc], a
    cp $03
    ld [bc], a
    add c
    rst $38
    inc bc
    inc bc
    add c
    rst $38
    inc bc
    inc bc
    ld b, e
    cp a
    inc sp
    inc sp
    rst $18
    cp a
    ld a, e
    ld c, e
    ei
    rrca
    rst $38
    or a
    cp a
    ld c, e
    rst $38
    rst $30
    ld a, a
    sbc a
    ei
    ei
    rst $38
    rst $38
    push de
    db $ed
    jp $f7ff


    rst $08
    ld bc, $79ff
    ld b, [hl]
    ld bc, $5bff
    ld h, h
    add c
    ld a, a
    ccf
    jr nz, jr_0f7_54cd

    ld a, a
    cpl
    jr nc, jr_0f7_54db

    ld a, a
    ld d, $19
    rst $38
    rst $38
    rrca
    rrca
    jr nz, jr_0f7_5597

    nop
    nop
    jr nz, jr_0f7_559b

    nop
    nop
    rra
    rra
    nop
    nop
    jr nz, jr_0f7_55a3

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    add b
    rst $38
    ld bc, $0001
    rst $38
    ld [bc], a
    inc bc
    ld bc, $04ff
    rlca
    ld [bc], a
    rst $38
    ld [$040f], sp
    rst $38
    ld [$080f], sp
    rst $38
    db $10
    rra
    jr @+$01

    db $10
    rra
    cpl
    rst $28
    rra
    rra
    sbc $ff
    inc e
    rra
    ld [$08ff], sp
    rrca
    ld [$08ff], sp
    rrca
    inc b

jr_0f7_5597:
    rst $38
    inc b
    rlca
    ld [bc], a

jr_0f7_559b:
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    ld bc, $0201

jr_0f7_55a3:
    rst $38
    nop
    nop
    adc a
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
    ccf
    ccf
    nop
    nop
    rst $38
    rst $38
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
    ldh [$e0], a

jr_0f7_55ea:
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    jr c, jr_0f7_55ea

    nop
    nop
    db $fc
    db $fc
    nop
    nop
    sbc h
    db $fc
    nop
    nop
    sbc d
    cp $00
    nop
    sub d
    cp $00
    nop
    sbc l
    di
    nop
    nop
    sbc l
    di
    nop
    nop
    sbc l
    di
    nop
    nop
    ld a, [$00f6]
    nop
    ld a, [de]
    or $00
    nop
    ld a, [de]
    cp $00
    nop
    cp $fe
    nop
    nop
    ld e, $fe
    nop
    nop
    inc c
    db $fc
    nop
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    add sp, -$08
    nop
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
    db $10
    ldh a, [rP1]
    nop
    ldh a, [$f0]
    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]

jr_0f7_5653:
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
    jr nz, @-$1e

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
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    ld bc, $0401
    db $fc
    ld [bc], a
    inc bc
    ld [bc], a
    cp $03
    ld [bc], a
    add c
    rst $38
    inc bc
    inc bc
    add c
    rst $38
    inc bc
    inc bc
    ld b, e
    cp a
    inc sp
    inc sp
    rst $18
    cp a
    ld a, e
    ld c, e
    ei
    rrca
    rst $38
    or a
    cp a
    ld c, e
    rst $38
    rst $30
    ld a, a
    sbc a
    ei
    ei
    rst $38
    rst $38
    push de
    db $ed
    jp $f7ff


    rst $08
    ld bc, $79ff
    ld b, [hl]
    ld bc, $5bff
    ld h, h
    add c
    ld a, a
    ccf
    jr nz, @-$7c

    ld a, a
    cpl
    jr nc, jr_0f7_5653

    ld a, a
    ld d, $19
    rst $38
    rst $38
    rrca
    rrca
    jr nz, jr_0f7_570f

    nop
    nop
    jr nz, jr_0f7_5713

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
    jr nz, @+$41

    nop
    nop
    jr nz, @+$41

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    add c
    rst $38
    nop
    nop
    add d
    rst $38
    ld bc, $0201
    rst $38
    ld bc, $0201
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $e701
    rst $38
    ld bc, $0201
    rst $38
    ld bc, $0201

jr_0f7_570f:
    rst $38
    nop
    nop
    add d

jr_0f7_5713:
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    jr nz, jr_0f7_575f

    nop
    nop
    jr nz, jr_0f7_5763

    nop
    nop
    ld de, $001f
    nop
    rrca
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
    rrca
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f7_575f:
    nop
    ldh [$e0], a

jr_0f7_5762:
    nop

jr_0f7_5763:
    nop
    ldh a, [$f0]
    nop
    nop
    jr c, jr_0f7_5762

    nop
    nop
    db $fc
    db $fc
    nop
    nop
    sbc h
    db $fc
    nop
    nop
    sbc d
    cp $00
    nop
    sub d
    cp $00
    nop
    sbc l
    di
    nop
    nop
    sbc l
    di
    nop
    nop
    sbc l
    di
    nop
    nop
    ld a, [$00f6]
    nop
    ld a, [de]
    or $00
    nop
    ld a, [de]
    cp $00
    nop
    cp $fe
    nop
    nop
    ld c, $fe
    nop
    nop
    ld b, $fe
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld [hl], h
    db $fc
    nop
    nop
    adc b
    ld hl, sp+$00
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld hl, sp-$08
    nop
    nop
    ret z

    ld hl, sp+$00
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    adc b
    ld hl, sp+$00
    nop
    adc b
    ld hl, sp+$00
    nop
    sbc b
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
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    ld [bc], a
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
    rlca
    rlca
    ld bc, $0e01
    add hl, bc
    jp $0fc3


    ld [$77b6], sp
    dec b
    ld b, $ed
    ld e, $02
    inc bc
    dec sp
    db $fc
    inc bc
    ld [bc], a
    ld a, [$017d]
    ld bc, $fff3
    nop
    nop
    dec de
    rla
    nop
    nop
    ld a, [de]
    rla
    nop
    nop
    ld e, $1f
    nop
    nop
    rrca
    rrca
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
    dec b
    rlca
    nop
    nop
    dec b
    rlca
    nop
    nop
    add hl, bc
    rrca
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    ld a, [bc]
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
    add hl, bc
    rrca
    nop
    nop
    add hl, bc
    rrca
    nop
    nop
    add hl, bc
    rrca
    nop
    nop
    ld [$000f], sp
    nop
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
    rlca
    rlca
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld [bc], a
    cp $00
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    ld b, e
    cp a
    nop
    nop
    rst $18
    cp a
    nop
    nop
    ei
    rrca
    nop
    nop
    cp [hl]
    ld c, d
    nop
    nop
    ld l, d
    sbc [hl]
    nop
    nop
    cp [hl]
    cp $00
    nop
    rst $38
    rst $38
    nop
    nop
    rst $00
    rst $38
    add b
    add b
    db $e3
    sbc a
    add b
    add b
    di
    rrca
    add b
    add b
    di
    rrca
    add b
    add b
    db $e3
    rra
    add b
    add b
    inc bc
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    inc bc
    rst $38
    nop
    nop
    inc bc
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld bc, $00ff
    nop
    add c
    rst $38
    nop
    nop
    add c
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
    ld [$00f8], sp
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nc, @-$0e

    nop
    nop
    ld hl, sp-$08
    nop
    nop
    add sp, -$08
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    add h
    db $fc
    nop
    nop
    adc b
    ld hl, sp+$00
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
    inc bc
    ld [bc], a
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
    ld bc, $0001
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
    dec c
    ld c, $00
    nop
    dec de
    inc e
    ccf
    ccf
    jp hl


    or $70
    ld a, a
    dec a
    db $e3
    ld a, a
    ld [hl], b
    db $fc
    di
    ccf
    dec a
    rst $38
    ld hl, sp+$03
    ld [bc], a
    rst $28
    add sp, $01
    ld bc, $c9cf
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
    dec b
    rlca
    nop
    nop
    dec b
    rlca
    nop
    nop
    add hl, bc
    rrca
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    ld a, [bc]
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
    add hl, bc
    rrca
    nop
    nop
    add hl, bc
    rrca
    nop
    nop
    add hl, bc
    rrca
    nop
    nop
    ld [$000f], sp
    nop
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
    rlca
    rlca
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld [bc], a
    cp $00
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    ld b, e
    cp a
    nop
    nop
    rst $18
    cp a
    nop
    nop
    ei
    rrca
    nop
    nop
    cp [hl]
    ld c, d
    nop
    nop
    ld l, d
    sbc [hl]
    nop
    nop
    cp [hl]
    cp $00
    nop
    rst $38
    rst $38
    nop
    nop
    rst $00
    rst $38
    add b
    add b
    add e
    rst $38
    add b
    add b
    inc bc
    rst $38
    add b
    add b
    jp $803f


    add b
    jp $803f


    add b
    add e
    ld a, a
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    inc bc
    rst $38
    nop
    nop
    inc bc
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld bc, $00ff
    nop
    add c
    rst $38
    nop
    nop
    add c
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
    ld [$00f8], sp
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nc, @-$0e

    nop
    nop
    ld hl, sp-$08
    nop
    nop
    add sp, -$08
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    add h
    db $fc
    nop
    nop
    adc b
    ld hl, sp+$00
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
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    inc de
    dec e
    nop
    nop
    rrca
    rrca
    nop
    nop
    dec c
    ld c, $00
    nop
    rrca
    inc c
    nop
    nop
    ld c, $0d
    nop
    nop
    dec b
    ld b, $00
    nop
    ld b, $07
    nop
    nop
    rlca
    rlca
    nop
    nop
    ld b, $07
    nop
    nop
    inc c
    rrca
    nop
    nop
    inc c
    rrca
    nop
    nop
    dec c
    rrca
    nop
    nop
    rlca
    rlca
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop
    inc c
    rrca
    nop
    nop
    ld [hl], l
    ld a, d
    inc bc
    inc bc
    or e
    call z, $0e0d
    rst $28
    db $10
    rra
    jr jr_0f7_5bcf

    di
    ld e, $19
    ldh [rIE], a
    inc de
    rra
    db $fc
    rst $38
    rrca
    rrca
    call nz, Call_000_00c7
    nop
    ld b, $07
    nop
    nop
    dec b
    rlca
    nop
    nop
    dec b
    rlca
    nop
    nop
    add hl, bc
    rrca
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    ld a, [bc]
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
    add hl, bc
    rrca
    nop
    nop
    add hl, bc
    rrca
    nop
    nop
    add hl, bc
    rrca
    nop
    nop
    ld [$000f], sp
    nop
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
    rlca
    rlca
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

jr_0f7_5bc2:
    nop
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

jr_0f7_5bcf:
    nop
    jr nc, jr_0f7_5bc2

    nop
    nop
    ld [$00f8], sp
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    db $fc
    inc l
    nop
    nop
    db $ec
    inc [hl]
    nop
    nop
    cp h
    ld l, h
    nop
    nop
    ld a, [hl]
    cp [hl]
    nop
    nop
    rst $38
    ld a, a
    nop
    nop
    pop bc
    rst $38
    add b
    add b
    add c
    rst $38
    add b
    add b
    add c
    rst $38
    add b
    add b
    rlca
    rst $38
    add b
    add b
    inc b
    rst $38
    add b
    add b
    adc b
    ld a, a
    add b
    add b
    ret nc

    ccf
    add b
    add b
    ldh [$3f], a
    add b
    add b
    add b
    ld a, a
    add b
    add b
    rst $38
    rst $38
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld bc, $00ff
    nop
    add c
    rst $38
    nop
    nop
    add c
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
    ld [$00f8], sp
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nc, @-$0e

    nop
    nop
    ld hl, sp-$08
    nop
    nop
    add sp, -$08
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    add h
    db $fc
    nop
    nop
    adc b
    ld hl, sp+$00
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$000f], sp
    nop
    db $10
    rra
    nop
    nop
    inc e
    rla
    nop
    nop
    inc e
    rra
    nop
    nop
    ld a, [de]
    dec e
    nop
    nop
    ld e, $1d
    nop
    nop
    rra
    jr jr_0f7_5cd5

jr_0f7_5cd5:
    nop
    dec e
    ld a, [de]
    ld bc, $fb01
    db $fc
    inc bc
    inc bc
    ld hl, sp-$01
    rlca
    rlca
    rst $30
    ld hl, sp+$07
    rlca
    or $f9
    rlca
    rlca
    xor $ff
    dec b
    rlca
    call nz, Call_000_04ff
    rlca
    add b
    rst $38
    inc b
    rlca
    add h
    rst $38
    rlca
    inc b
    call nz, $077f
    inc b
    cp e
    ld a, a
    rlca
    inc b
    ret nz

    ld a, a
    rlca
    inc b
    ret nz

    ld a, a
    rlca
    inc b
    rst $38
    ld [hl], e
    rlca
    inc b
    ret nz

    ld a, a
    rlca
    inc b
    ret nz

    ld a, a
    rlca
    rlca
    ret nz

    rst $38
    rlca
    rlca
    jp nz, Jump_000_07ff

    rlca
    adc $ff
    rlca
    rlca
    ld b, d
    cp a
    dec b
    ld b, $82
    ld a, a
    inc bc
    inc bc
    jp nz, Jump_000_00ff

    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld h, c
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
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

jr_0f7_5d5a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_0f7_5d5a

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    jr @-$06

    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ret c

    ld a, b
    nop
    nop
    ldh a, [$50]
    nop
    nop
    ld e, [hl]
    cp $00
    nop
    ld a, a
    rst $38
    nop
    nop
    rst $38
    rst $38
    add b
    add b
    ld hl, sp-$01
    ret nz

    ret nz

    ld hl, sp-$01
    ld b, b
    ret nz

    ld [hl], b
    rst $38
    ld b, b
    ret nz

    jr nz, @+$01

    ld b, b
    ret nz

    daa
    ld hl, sp-$80
    add b
    ld l, a
    ld hl, sp-$80
    add b
    rst $18
    ld hl, sp-$80
    add b
    ld e, $f9
    add b
    add b
    ld d, $f9
    add b
    add b
    rst $38
    pop af
    nop
    nop
    rrca
    pop af
    nop
    nop
    rrca
    pop af
    nop
    nop
    rrca
    rst $38
    nop
    nop
    rra
    db $fd
    nop
    nop
    rra
    db $fd
    nop
    nop
    rra
    rst $28
    nop
    nop
    rrca
    di
    add b
    add b
    add hl, bc
    rst $38
    add b
    add b
    add hl, bc
    rst $38
    add b
    add b
    add hl, bc
    rst $38
    ret nz

    ret nz

    add hl, bc
    rst $38
    ret nz

    ret nz

    ei
    rst $38
    ret nz

    ret nz

    di
    rst $38
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
    inc a
    inc a
    nop
    nop
    jp nz, Jump_000_01fe

    ld bc, $ff01
    ld [bc], a
    inc bc
    nop
    rst $38
    ld [bc], a
    inc bc
    ret nz

    ld a, a
    ld [bc], a
    inc bc
    ret nz

    rst $38
    ld bc, $3001
    rst $08
    ld bc, $ef01
    db $dd
    ld bc, $fb01
    add a
    ld bc, $df01
    and a
    ld bc, $bf01
    rst $08
    nop
    nop
    call z, Call_000_00ff
    nop
    ld hl, sp-$31
    nop
    nop
    ret z

    rst $38
    ld a, b
    ld a, b
    ld l, [hl]
    ld a, c
    db $fc
    sbc h
    rst $30
    ld hl, sp-$01
    rst $30
    rra
    ldh a, [$7c]
    ld a, a
    or $09
    dec a
    ld a, $fe
    ld bc, $0f0e
    rst $38
    rlca
    ld bc, $f001
    rst $38
    nop
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0f7_5eab

    nop
    nop
    inc h
    ccf
    nop
    nop
    inc [hl]
    ccf
    nop
    nop
    jr z, jr_0f7_5eb7

    nop
    nop
    jr z, jr_0f7_5ebb

    nop
    nop
    ld c, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, c
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
    ld c, b
    ld a, a
    nop
    nop
    ld c, b
    ld a, a
    nop
    nop
    ld c, b
    ld a, a
    nop
    nop
    ld b, h
    ld a, a
    nop
    nop
    ld b, h

jr_0f7_5eab:
    ld a, a
    nop
    nop
    daa
    ccf
    nop
    nop
    rra
    rra
    nop
    nop
    ccf

jr_0f7_5eb7:
    ccf
    nop
    nop
    rst $38

jr_0f7_5ebb:
    rst $38
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
    add b
    add b
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

jr_0f7_5ef6:
    nop
    nop
    ld hl, sp-$08

jr_0f7_5efa:
    nop
    nop
    jr c, jr_0f7_5ef6

jr_0f7_5efe:
    nop
    nop
    jr c, jr_0f7_5efa

jr_0f7_5f02:
    nop
    nop
    jr jr_0f7_5efe

jr_0f7_5f06:
    nop
    nop
    jr jr_0f7_5f02

    nop
    nop
    jr jr_0f7_5f06

jr_0f7_5f0e:
    nop
    nop
    ld hl, sp-$08

jr_0f7_5f12:
    nop
    nop
    jr jr_0f7_5f0e

    nop
    nop
    jr jr_0f7_5f12

jr_0f7_5f1a:
    nop
    nop
    ldh a, [$f0]
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
    jr nz, jr_0f7_5f1a

jr_0f7_5f3a:
    nop
    nop
    ld b, b
    ret nz

jr_0f7_5f3e:
    nop
    nop
    ld b, b
    ret nz

jr_0f7_5f42:
    nop
    nop
    add b
    add b

jr_0f7_5f46:
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
    ret nz

    ret nz

    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    jr nz, jr_0f7_5f3a

    nop
    nop
    jr nz, jr_0f7_5f3e

    nop
    nop
    jr nz, jr_0f7_5f42

    nop
    nop
    jr nz, jr_0f7_5f46

    nop
    nop
    ld b, b
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
    ret nz

    ret nz

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
    rlca
    dec b
    nop
    nop
    rlca
    rlca
    nop
    nop
    ld b, $07
    nop
    nop
    rrca
    rrca
    nop
    nop
    rra
    ld [de], a
    nop
    nop
    ccf
    inc l
    nop
    nop
    ld a, $3d
    nop
    nop
    ld a, $3f
    nop
    nop
    ld [hl], l
    ld e, d
    nop
    nop
    ld a, l
    ld d, e
    nop
    nop
    ld a, a
    ld b, b
    nop
    nop
    ld [hl], a
    ld c, b
    nop
    nop
    ld [hl], e
    ld c, h
    nop
    nop
    ld [hl], c
    ld c, [hl]
    nop
    nop
    ld [hl], d
    ld c, a
    nop
    nop
    ld a, h
    ld a, a
    nop
    nop
    add sp, -$21
    nop
    nop
    add sp, -$21
    nop
    nop
    ld a, a
    ld a, [hl]
    nop
    nop
    jr c, @+$41

    nop
    nop
    ld [$000f], sp
    nop
    inc c
    rrca
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
    jr nz, jr_0f7_6037

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    add c
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
    add e
    rst $38
    nop
    nop
    add d
    rst $38
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld hl, $003f
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
    rlca
    rlca
    nop
    nop
    rrca

jr_0f7_6037:
    rrca
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
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld [$00f8], sp
    nop
    inc b
    db $fc
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    add [hl]
    ld a, [hl]
    nop
    nop
    cp [hl]
    ld a, [hl]
    nop
    nop
    or $1e
    nop
    nop
    ld a, h
    sub h
    nop
    nop
    rst $10
    ccf
    add b
    add b
    rra
    rst $38
    ret nz

    ret nz

    ld hl, sp+$3f
    ldh [$e0], a
    ldh a, [rIE]
    ld h, b
    ldh [rP1], a
    rst $38
    ld h, b
    ldh [$f0], a
    rrca
    ld h, b
    ldh [$f8], a
    rlca
    ret nz

    ret nz

    rst $30
    rrca
    add b
    add b
    adc a
    rst $38
    nop
    nop
    ld [hl], c
    rst $38
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    db $fc
    ld a, h
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    inc b
    db $fc
    nop
    nop
    jr c, @-$06

    nop
    nop
    ld d, b
    ldh a, [rP1]
    nop
    and b
    ldh [rP1], a
    nop
    jr nz, @-$1e

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
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
    ld [$00f8], sp
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
    ld [hl], b
    ld [hl], b
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
    inc e
    rla
    nop
    nop
    inc e
    rra
    nop
    nop
    ld a, [de]
    dec e
    nop
    nop
    ld a, $3d
    nop
    nop
    ld a, a
    ld c, b
    nop
    nop
    db $fd
    or d
    nop
    nop
    ei
    db $f4
    nop
    nop
    ld hl, sp-$01
    ld bc, $d701
    ld l, b
    ld bc, $f701
    ld c, a
    ld bc, $fc01
    inc bc
    ld bc, $df01
    jr nz, @+$03

    ld bc, $30cf
    ld bc, $c701
    jr c, @+$03

    ld bc, $3fca
    ld bc, $f101
    rst $38
    inc bc
    inc bc
    and b
    ld a, a
    inc bc
    inc bc
    and b
    ld a, a
    ld bc, $ff01
    ld sp, hl
    nop
    nop
    ldh [rIE], a
    nop
    nop
    jr nz, jr_0f7_619f

    nop
    nop
    ld sp, $003f
    nop
    ld a, [hl+]
    ccf
    nop
    nop
    inc h
    ccf
    nop
    nop
    inc h
    ccf
    nop
    nop
    inc h
    ccf
    nop
    nop
    inc h
    ccf
    nop
    nop
    inc h
    ccf
    nop
    nop
    inc [hl]
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
    inc d
    rra
    nop
    nop
    inc d
    rra
    nop
    nop
    inc c
    rrca
    nop
    nop
    inc c
    rrca
    nop
    nop
    inc b

jr_0f7_619f:
    rlca
    nop
    nop
    ld [bc], a
    inc bc
    nop
    nop

jr_0f7_61a6:
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
    inc bc
    inc bc
    nop
    nop
    rrca
    rrca
    nop
    nop
    rra
    rra
    ret nz

    ret nz

    nop
    nop
    jr nz, jr_0f7_61a6

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    jr @-$06

    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ret c

    ld a, b
    nop
    nop
    ldh a, [$50]
    nop
    nop
    ld e, [hl]
    cp $00
    nop
    ld a, a
    rst $38
    nop
    nop
    db $e3
    rst $38
    add b
    add b
    pop bc
    rst $38
    add b
    add b
    ld bc, $80ff
    add b
    pop bc
    ccf
    add b
    add b
    db $e3
    rra
    nop
    nop
    sbc $3e
    nop
    nop
    inc a
    db $fc
    nop
    nop
    call nz, Call_000_00fc
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld hl, sp-$08
    nop
    nop
    ld [$00f8], sp
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld [$00f8], sp
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
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
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
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    jr @-$06

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
    ld hl, sp-$08
    nop
    nop
    jr c, jr_0f7_62aa

    nop
    nop
    ld e, b
    ld l, b
    rlca
    rlca
    ld e, b
    ld l, b
    ld [$580f], sp
    ld l, b
    ld d, $1b
    ld e, b
    ld l, b
    ld d, $1f
    ld h, h
    ld e, h
    add hl, bc
    ld c, $4c
    ld [hl], h
    dec c
    ld c, $64
    ld e, h
    ccf
    jr c, jr_0f7_631c

    ld a, a
    db $fd
    ld a, [$3c23]
    ld a, a
    ld hl, sp+$13
    inc e

jr_0f7_62aa:
    ld a, e
    db $fc
    dec bc
    inc c
    ld a, h
    ei
    inc b
    rlca
    daa
    db $fc
    inc bc
    inc bc
    jp Jump_000_00ff


    nop
    jp nz, Jump_000_00ff

    nop
    ld h, d
    ld a, a
    nop
    nop
    ld e, l
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    jr nz, jr_0f7_630f

    nop
    nop
    ccf
    add hl, sp
    nop
    nop
    jr nz, jr_0f7_6317

    nop
    nop
    jr nz, jr_0f7_631b

    nop
    nop
    jr nz, jr_0f7_631f

    nop
    nop
    ld sp, $003f
    nop
    ld a, [hl+]
    ccf
    nop
    nop
    inc h
    ccf
    nop
    nop
    inc h
    ccf
    nop
    nop
    inc h
    ccf
    nop
    nop
    inc h
    ccf
    nop
    nop
    inc h
    ccf
    nop
    nop
    inc [hl]
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
    inc d

jr_0f7_630f:
    rra
    nop
    nop
    inc d
    rra
    nop
    nop
    inc c

jr_0f7_6317:
    rrca
    nop
    nop
    inc c

jr_0f7_631b:
    rrca

jr_0f7_631c:
    nop
    nop
    inc b

jr_0f7_631f:
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
    nop
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
    rra
    rra
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
    ld [$00f8], sp
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    call z, Call_000_003c
    nop
    ld hl, sp-$08
    nop
    nop
    sbc $7e
    nop
    nop
    rst $38
    ld e, a
    add b
    add b
    ld a, a
    rst $38
    ret nz

    ret nz

    rst $38
    ld a, a
    ldh [$e0], a
    ld a, a
    rst $38
    db $10
    ldh a, [$3e]
    rst $38
    db $10
    ldh a, [rNR34]
    rst $38
    ld [hl], b
    sub b
    ld [de], a
    rst $38
    ldh a, [rNR10]
    ld [hl], $ff
    add sp, $18
    db $fd
    db $fd
    ld l, b
    sbc b
    ld [$e8f8], sp
    sbc b
    ld [$e8f8], sp
    sbc b
    ld hl, sp-$08
    add sp, -$68
    ld [$e8f8], sp
    sbc b
    ld [$88f8], sp
    ld hl, sp+$04
    db $fc
    ld hl, sp-$08
    dec b
    db $fd
    add sp, $78
    dec b
    db $fd
    add sp, $78
    dec b
    db $fd
    ld a, b
    ld hl, sp+$08
    ld hl, sp-$30
    or b
    ld [$60f8], sp
    ld h, b
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    db $10
    ldh a, [rP1]
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
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
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    jr @-$06

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld h, c
    ld a, a
    nop
    nop
    add b
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $6001
    cp a
    ld bc, $6001
    rst $38
    nop
    nop
    sbc b
    rst $20
    ld bc, $f701
    xor $03
    inc bc
    db $fd
    jp $0303


    rst $28
    pop de
    inc bc
    inc bc
    db $dd
    db $e3
    ld [bc], a
    inc bc
    db $e3
    db $fd
    inc b
    rlca
    rst $38
    ld sp, hl
    dec b
    ld b, $6e
    rst $38
    dec b
    ld b, $22
    rst $38
    dec bc
    inc c
    ld hl, $08ff
    rrca
    ld sp, $0aff
    dec c
    ld e, [hl]
    rst $18
    ld a, [bc]
    dec c
    ld c, a
    rst $08
    ld a, [bc]
    dec c
    pop bc
    ld b, c
    ld c, $0f
    ld b, c
    pop bc
    rla
    dec de
    add [hl]
    add a
    rra
    rla
    adc b
    adc a
    dec hl
    scf
    db $10
    rra
    ld d, h
    ld l, h
    db $10
    rra
    xor b
    ret c

    rra
    rra
    ld d, b
    or b
    rra
    rra
    and b
    ld h, b
    db $10
    rra
    ret nz

    ret nz

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
    add b
    add b
    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    ccf
    rst $38
    ldh a, [$f0]
    ccf
    rst $38
    cp b
    ret c

    ld a, a
    rst $38
    cp [hl]
    sbc $fe
    rst $38
    cp l
    rst $10
    ld a, [hl]
    rst $38
    or $fd
    ld a, [hl]
    rst $38
    ld a, [hl-]
    db $fd
    cp a
    rst $38
    call $85f3
    ld a, a
    cp [hl]
    cp [hl]

jr_0f7_6514:
    dec d
    rst $38
    add b
    add b

jr_0f7_6518:
    rrca
    rst $38
    add b
    add b
    inc c
    rst $38
    add b
    add b
    db $10
    rst $38
    add b
    add b
    ldh [rIE], a
    ld b, b
    ret nz

    inc bc
    rst $38
    ldh [$e0], a
    sbc h
    rst $38
    jr nz, @-$1e

    ld h, b
    rst $38
    jr nz, jr_0f7_6514

    nop
    rst $38
    jr nz, jr_0f7_6518

    nop
    rst $38
    ldh [$e0], a
    inc bc
    rst $38
    ret nz

    ret nz

    rrca
    rst $38
    nop
    nop
    ld [hl-], a
    cp $00
    nop
    cp $fe
    nop
    nop
    cp $fe
    nop
    nop
    ld [hl+], a
    cp $00
    nop
    ld hl, $00ff
    nop
    ld hl, $00ff
    nop
    ld hl, $00ff
    nop
    ld hl, $00ff
    nop
    ld hl, $00ff
    nop
    ld [hl+], a
    cp $00
    nop
    call c, Call_000_00dc
    nop
    call c, Call_000_00dc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    ei
    rst $20
    rst $38
    rlca
    cp e
    rst $00
    cp $c5
    cp c
    rst $00
    ccf
    ccf
    add d
    rst $38
    rlca
    rlca
    ld a, [$00ff]
    nop
    rlca
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
    ld [bc], a
    inc bc
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
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

jr_0f7_6634:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $3e
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    add b
    rst $38
    add b
    add b
    ldh [$bf], a
    ld b, b
    ret nz

    ldh [rIE], a
    jr nz, jr_0f7_6634

    ret nc

    rst $28
    and b
    ldh [$f7], a
    rst $28
    ret nz

    ret nz

    cp $c3
    ret nz

    ret nz

    rst $28
    jp nc, $c0c0

    jp c, $c0e7

    ret nz

    rst $20
    db $db
    db $fc
    db $fc
    rst $38
    jp $fefe


    dec sp
    rst $20
    pop af
    rst $38
    add hl, de
    rst $38
    pop hl
    rst $38
    db $10
    rst $38
    rst $20
    ld sp, hl
    db $10
    rst $38
    adc a
    pop af
    jp hl


    rst $38
    xor [hl]
    pop af
    rlca
    rst $38
    or $f9
    nop
    rst $38
    ld c, [hl]
    ret


    nop
    rst $38
    ld c, [hl]
    ret


    rst $38
    rst $08
    adc $c9
    nop
    rst $38
    ld c, [hl]
    ret


    nop
    rst $38
    ld c, b
    rst $08
    nop
    rst $38
    cpl
    rst $28
    adc b
    rst $38
    ld a, $f7
    ld d, b
    rst $38
    ld a, $f7
    jr nz, @+$01

    scf
    rst $38
    jr nz, @+$01

    ld c, l
    sla b
    rst $38
    ld b, [hl]
    add $20
    rst $38
    ld b, b
    ret nz

    jr nz, @+$01

    ld b, b
    ret nz

    and b
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
    ld hl, sp-$01
    add b
    add b
    and b
    rst $38
    ld b, b
    ret nz

    and b
    rst $38
    ld b, b
    ret nz

    ld h, b
    ld a, a
    ld b, b
    ret nz

    ld h, b
    ld a, a
    ld b, b
    ret nz

    jr nz, jr_0f7_671d

    ld b, b
    ret nz

    db $10
    rra
    ret nz

    ret nz

    rrca
    rrca
    ret nz

    ret nz

    rrca
    rrca
    add b
    add b
    rlca
    rlca
    add b
    add b
    rlca
    rlca
    add b
    add b
    rra
    rra
    ret nz

    ret nz

    ld a, a
    ld a, a
    ret nz

    ret nz

    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0f7_671d:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc a
    inc a
    nop
    nop
    jp nz, Jump_000_01fe

    ld bc, $ff01
    ld [bc], a
    inc bc
    nop
    rst $38
    ld [bc], a
    inc bc
    ret nz

    ld a, a
    ld [bc], a
    inc bc
    ret nz

    rst $38
    ld bc, $3001
    rst $08
    ld bc, $ef01
    db $dd
    ld bc, $fb01
    add a
    ld bc, $df01
    and a
    ld bc, $bf01
    rst $08
    nop
    nop
    call z, Call_000_00ff
    nop
    ld hl, sp-$31
    nop
    nop
    ret z

    rst $38
    ld a, b
    ld a, b
    xor $b9
    db $fd
    sbc l
    rst $10
    ld hl, sp-$01
    rst $30
    ld e, a
    or b
    ld a, h
    ld a, a
    or $09
    dec a
    ld a, $fe
    ld bc, $0f0e
    ei
    rlca
    ld bc, $e001
    rst $38
    nop
    nop
    jr nz, jr_0f7_6927

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld c, b
    ld a, a
    nop
    nop
    ld l, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    sub b
    rst $38
    nop
    nop
    and b
    rst $38
    nop
    nop
    and c
    rst $38
    nop
    nop
    and c
    rst $38
    nop
    nop
    and e
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
    sub b
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    sub b
    rst $38
    nop
    nop
    adc b

jr_0f7_6927:
    rst $38
    nop
    nop
    adc b
    rst $38
    nop
    nop
    ld c, a
    ld a, a
    nop
    nop
    ccf
    ccf
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
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

jr_0f7_6976:
    nop
    nop
    ld hl, sp-$08

jr_0f7_697a:
    nop
    nop
    jr c, jr_0f7_6976

jr_0f7_697e:
    nop
    nop
    jr c, jr_0f7_697a

jr_0f7_6982:
    nop
    nop
    jr c, jr_0f7_697e

jr_0f7_6986:
    nop
    nop
    jr c, jr_0f7_6982

jr_0f7_698a:
    nop
    nop
    jr c, jr_0f7_6986

    nop
    nop
    ld hl, sp-$08
    nop
    nop
    jr nc, jr_0f7_6986

jr_0f7_6996:
    nop
    nop
    jr nc, jr_0f7_698a

    nop
    nop
    ldh [$e0], a
    nop
    nop
    jr nz, jr_0f7_6982

    nop
    nop
    jr nz, jr_0f7_6986

    nop
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
    jr nz, jr_0f7_6996

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
    ld bc, $0001
    nop
    inc bc
    ld [bc], a
    add b
    add b
    ld b, $05
    ret nz

    ret nz

    dec b
    rlca
    ld h, c
    and c
    rlca
    rlca
    pop bc
    pop bc
    rlca
    rlca
    ret nz

    ret nz

    rlca
    rlca
    ld b, c
    pop bc
    inc b
    rlca
    ld b, c
    pop bc
    rlca
    inc b
    ld b, c
    pop bc
    rlca
    inc b
    ld c, a
    rst $08
    rlca
    inc b
    ld a, a
    rst $38
    rlca
    inc b
    dec a
    cp $03
    ld [bc], a
    db $d3
    inc a
    ld bc, $af01
    ld a, a
    ld bc, $4401
    rst $38
    nop
    nop
    ret nz

    rst $38
    nop
    nop
    ld h, d
    ld a, a
    nop
    nop
    dec a
    ccf
    nop
    nop
    jr nz, jr_0f7_6a93

    nop
    nop
    jr nz, jr_0f7_6a97

    nop
    nop
    jr nz, jr_0f7_6a9b

    nop
    nop
    rra
    jr jr_0f7_6a61

jr_0f7_6a61:
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0f7_6aa7

    nop
    nop
    jr z, jr_0f7_6aab

    nop
    nop
    dec h
    ccf
    nop
    nop
    ld [hl+], a
    ccf
    nop
    nop
    ld b, d
    ld a, a
    nop
    nop
    ld b, d
    ld a, a
    nop
    nop
    ld b, d
    ld a, a
    nop
    nop
    ld b, d
    ld a, a
    nop
    nop
    add h
    rst $38
    nop
    nop
    add h
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38

jr_0f7_6a93:
    rst $38
    nop
    nop
    ld b, d

jr_0f7_6a97:
    ld a, a
    nop
    nop
    ld b, d

jr_0f7_6a9b:
    ld a, a
    nop
    nop
    ld hl, $003f
    nop
    ld hl, $003f
    nop
    db $10

jr_0f7_6aa7:
    rra
    nop
    nop
    rrca

jr_0f7_6aab:
    rrca
    nop
    nop
    ld c, $0e
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    inc e
    nop
    nop
    ld [hl], $2a
    nop
    nop
    ld a, [$00fe]
    nop
    ld a, $de
    nop
    nop
    ld e, e
    or a
    nop
    nop
    db $fc
    rst $38
    add b
    add b
    db $fc
    cp a
    add b
    add b
    ldh [$1f], a
    add b
    add b

jr_0f7_6ae8:
    cp e
    ld b, a
    nop
    nop

jr_0f7_6aec:
    db $db
    daa
    nop
    nop
    dec de
    rst $20
    ret nz

    ret nz

    sbc $21
    ldh [$e0], a
    adc a
    ld [hl], b
    jr nc, jr_0f7_6aec

    rlca
    ld hl, sp-$70
    ld [hl], b
    inc de
    db $fc
    db $10
    ldh a, [rNR10]
    rst $38
    jr nz, jr_0f7_6ae8

    ld [$40ff], sp
    ret nz

    rst $38
    rst $38
    add b
    add b
    ld [bc], a
    cp $00
    nop
    inc b
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
    inc b
    db $fc
    nop
    nop
    ld [bc], a
    cp $00
    nop
    add d
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
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
    ldh a, [$f0]
    nop
    nop
    adc b
    ld hl, sp+$00
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    add h
    db $fc
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
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
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
    ld a, h
    ld a, h
    nop
    nop
    add d
    cp $01
    ld bc, $ff01
    ld bc, $c001
    ld a, a
    ld bc, $c001
    rst $38
    ld bc, $a101
    rst $18
    ld bc, $ef01
    rst $18
    ld bc, $fd01
    add a
    inc bc
    inc bc
    rst $18
    and l
    inc bc
    inc bc
    or l
    rst $08
    inc bc
    inc bc
    add a
    rst $38
    inc bc
    inc bc
    rst $30
    rst $08
    inc bc
    inc bc
    db $db
    rst $20
    ld [bc], a
    inc bc
    add hl, de
    rst $38
    ld [bc], a
    inc bc
    add h
    rst $38
    ld bc, $9801
    rst $38
    ld bc, $8801
    rst $38
    nop
    nop
    adc $ff
    nop
    nop
    ld a, e
    ld [hl], a
    nop
    nop
    dec sp
    ld [hl], $00
    nop
    ld a, $3f
    nop
    nop
    inc e
    rra
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld b, $07
    nop
    nop
    dec b
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
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
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
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    inc bc
    inc bc
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
    nop
    nop
    nop
    nop
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
    add $fe
    nop
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    ld a, d
    add $00
    nop
    cp d
    add $00
    nop
    ld a, [hl-]
    add $00
    nop
    dec de
    rst $20
    nop
    nop
    pop af
    rrca
    nop
    nop
    ld bc, $00ff
    nop
    nop
    rst $38
    add b
    add b
    jr nz, @+$01

    add b
    add b
    ld b, b
    rst $38
    add b
    add b
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add d
    cp $00
    nop
    add e
    rst $38
    add b
    add b
    adc h
    rst $38
    ld a, [hl]
    cp $f8
    rst $38

jr_0f7_6e42:
    ld a, [hl]
    cp $f0
    rst $38
    ld a, [hl]
    cp $60
    rst $38
    adc [hl]
    adc [hl]
    ccf
    rst $38
    ld c, $0e
    db $10
    ldh a, [rTMA]
    ld b, $10
    ldh a, [rTMA]
    ld b, $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    jr nz, jr_0f7_6e42

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
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    ld a, $3e
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    add b
    rst $38
    nop
    nop
    ldh [$bf], a
    nop
    nop
    ldh [rIE], a
    nop
    nop
    ret nc

    rst $28
    nop
    nop
    rst $30
    rst $28
    nop
    nop
    cp $c3
    ld bc, $ef01
    jp nc, $0303

    jp c, $03e7

    inc bc
    jp $03ff


    inc bc
    rst $38
    di
    ld [bc], a
    inc bc
    rst $20
    ld sp, hl
    ld bc, $4601
    rst $38
    ld bc, $4001
    rst $38
    nop
    nop
    db $e4
    rst $38
    nop
    nop
    ld h, h
    ld a, a
    nop
    nop
    ld a, [hl-]
    ccf
    nop
    nop
    dec d
    dec de
    nop
    nop
    rrca
    rrca
    nop
    nop
    ld c, $0d
    nop
    nop
    ld c, $0d
    nop
    nop
    rrca
    rrca
    nop
    nop
    dec c
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
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
    ldh a, [$f0]
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
    add b
    add b
    pop af
    rst $38
    add b
    add b
    ldh [rIE], a
    add b
    add b

jr_0f7_6f78:
    ld h, b
    rst $38
    add b
    add b

jr_0f7_6f7c:
    ld e, [hl]
    pop af
    add b
    add b

jr_0f7_6f80:
    ld l, $f1
    ld b, b
    ret nz

jr_0f7_6f84:
    ld c, [hl]
    pop af
    ld b, b
    ret nz

jr_0f7_6f88:
    add d
    db $fd
    ld b, b
    ret nz

    rst $00
    ld sp, hl
    ret nz

    ret nz

    db $fc
    jp $c040


    ld hl, sp-$39
    jr nz, jr_0f7_6f78

    ret nz

    rst $38
    jr nz, jr_0f7_6f7c

    ld b, h
    rst $38
    jr nz, jr_0f7_6f80

    jr z, @+$01

    jr nz, jr_0f7_6f84

    sub b
    rst $38
    jr nz, jr_0f7_6f88

    sub b
    rst $38
    ld b, b
    ret nz

    ld h, b
    ld a, a
    ld b, b
    ret nz

    ld h, b
    ld a, a
    add b
    add b

jr_0f7_6fb4:
    ret nz

    rst $38
    add b
    add b
    pop bc
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, b
    ld a, a
    add b
    add b
    ld h, b
    ld a, a
    add b
    add b
    ld b, b
    ld a, a
    ld b, b
    ret nz

    jr nz, jr_0f7_700d

    ld b, b
    ret nz

    inc hl
    ccf
    jr nz, jr_0f7_6fb4

    rla
    rra
    and b
    ldh [$0b], a
    rrca
    ret nz

    ret nz

    rlca
    rlca
    ldh [$e0], a
    rlca
    rlca
    ldh [$e0], a
    rrca
    rrca
    ldh [$e0], a
    rra
    rra
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

    inc bc
    inc bc
    ldh [$e0], a
    rlca
    rlca
    ldh [$e0], a
    rra
    rra
    nop
    nop
    ld bc, $0401
    db $fc
    ld [bc], a
    inc bc
    ld [bc], a
    cp $03
    ld [bc], a
    add c
    rst $38
    inc bc

jr_0f7_700d:
    inc bc
    add c
    rst $38
    inc bc
    inc bc
    ld b, e
    cp a
    inc bc
    inc bc
    rst $18
    cp a
    inc bc
    inc bc
    ei
    rrca
    inc bc
    inc bc
    cp a
    ld c, e
    rlca
    rlca
    ld l, e
    sbc a
    rrca
    rrca
    rrca
    rst $38
    rrca
    rrca
    rst $28
    rst $18
    rrca
    rrca
    or a
    rst $08
    dec bc
    rrca
    inc sp
    rst $38
    ld [$100f], sp
    rst $38
    ld b, $07
    jr nz, @+$01

    ld b, $07
    jr nz, @+$01

    inc bc
    inc bc
    ld sp, $01ff
    ld bc, $ffce
    ld bc, $6001
    sbc a
    ld bc, $1101
    rst $38
    ld bc, $ff01
    sbc e
    ld bc, $d301
    dec l
    ld bc, $d301
    dec l
    nop
    nop
    sbc e
    cp $00
    nop
    ld l, b
    ld l, a
    nop
    nop
    dec b
    rlca
    nop
    nop
    ld b, $07
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    ld e, $1f
    nop
    nop
    ccf
    ccf
    nop
    nop
    inc hl
    ccf
    nop
    nop
    jr nz, jr_0f7_70c3

    nop
    nop
    jr nz, jr_0f7_70c7

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld e, l
    ld a, a
    nop
    nop
    dec a
    ccf
    inc bc
    inc bc
    cp $fe
    inc b
    rlca
    db $fc
    db $fc
    inc bc
    inc bc
    inc a
    db $fc
    nop
    nop
    ret z

    ld hl, sp+$00
    nop
    jr nc, jr_0f7_70e8

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f7_70c3:
    nop
    nop
    nop
    nop

jr_0f7_70c7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld hl, sp-$08
    nop
    nop
    db $fc
    db $fc
    nop
    nop

jr_0f7_70e8:
    cp $fe
    nop
    nop
    add $fe
    nop
    nop
    add d
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    cp d
    add $00
    nop
    ld a, [$00c6]
    nop
    ld [bc], a
    cp $00
    nop
    ld a, [hl-]
    add $00
    nop
    ld a, [hl-]
    add $00
    nop
    or $ce
    nop
    nop
    and d
    ld a, [hl]
    nop
    nop
    and c
    ld a, a
    nop
    nop
    pop hl
    rst $38
    nop
    nop
    pop bc
    ld a, a
    nop
    nop
    add d
    cp $00
    nop
    ld [bc], a
    cp $00
    nop

jr_0f7_7128:
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc c
    db $fc
    nop
    nop
    ld e, $fe
    nop
    nop
    cp c
    rst $38
    nop
    nop
    ldh a, [rIE]
    add b
    add b
    ld h, b
    rst $38
    ld b, b
    ret nz

    ld h, b
    rst $38
    jr nz, jr_0f7_7128

    ld d, b
    rst $18
    db $10
    ldh a, [$88]
    adc a
    db $10
    ldh a, [$84]
    add a
    ldh [$e0], a
    add e
    add e
    ldh [$e0], a
    add c
    add c
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    ldh a, [$f0]
    ld bc, $e001
    ldh [$03], a
    inc bc
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
    ld bc, $f001
    ldh a, [rSC]
    inc bc
    ld [$04f8], sp
    rlca
    inc b
    db $fc
    rlca
    dec b
    ld [bc], a
    cp $07
    rlca
    ld [bc], a
    cp $06
    rlca
    add [hl]
    ld a, [hl]
    rlca
    rlca
    cp [hl]
    ld a, [hl]
    rlca
    ld b, $f7
    rra
    rlca
    ld b, $7f
    sub a
    ld c, $0f
    rst $10
    ccf
    ld e, $1f
    rra
    rst $38
    rra
    rra
    rst $38
    adc a
    rla
    rra
    rst $30
    rst $08
    rla
    rra
    or c
    rst $38
    dec bc
    rrca
    nop
    rst $38
    ld c, $0b
    jr nz, @+$01

    rlca
    dec b
    ld de, $0fff
    ld [$ffee], sp
    jr c, jr_0f7_7201

    add b
    rst $38
    ld [hl], d
    ld c, l
    ret nz

    rst $38
    db $eb
    sub l
    ld hl, $ea3f
    sub [hl]
    ld e, $1d
    ld c, h
    ld a, h
    db $10
    rra
    jr nc, jr_0f7_720e

    inc d
    rra
    nop
    nop
    ld [de], a
    rra
    nop
    nop
    add hl, bc
    rrca
    nop
    nop
    add hl, bc
    rrca
    nop
    nop
    ld a, [bc]
    rrca
    nop
    nop
    ld b, $07
    nop
    nop
    inc b
    rlca
    nop
    nop
    inc c
    rrca
    nop
    nop
    rrca
    rrca
    nop

jr_0f7_7201:
    nop
    rrca
    rrca
    nop
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop

jr_0f7_720e:
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    ld [$000f], sp
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
    rlca
    rlca
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    adc a
    rst $38
    nop
    nop
    ld h, e
    ld a, a
    nop
    nop
    jr jr_0f7_725b

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f7_725b:
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
    adc h
    db $fc
    nop
    nop
    inc c
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    cp d
    add $00
    nop
    ld a, [$00c6]
    nop
    ld a, [de]
    and $00
    nop
    ld h, $fa
    nop
    nop
    ld a, $e2
    nop
    nop
    ld e, $e2
    nop
    nop
    and $fa
    nop
    nop
    ld d, $fe
    nop
    nop
    dec sp
    rst $10
    nop
    nop
    ld a, a
    rst $18
    nop
    nop
    sbc [hl]
    ld [c], a
    nop
    nop
    ld [bc], a
    cp $00
    nop
    inc b
    db $fc
    nop
    nop
    ld c, $fe
    nop
    nop
    rrca
    rst $38

jr_0f7_72b2:
    nop
    nop
    ld e, $ff

jr_0f7_72b6:
    add b
    add b
    inc e
    rst $38

jr_0f7_72ba:
    ld h, b
    ldh [$f8], a
    rst $38
    db $10
    ldh a, [$f0]
    rst $38
    ld [$30f8], sp
    rst $38
    inc b
    db $fc
    inc l
    rst $28
    inc c
    db $fc
    inc hl
    db $e3
    ld e, $fe
    jr nz, jr_0f7_72b2

    rst $38
    rst $38
    jr nz, jr_0f7_72b6

    rrca
    rrca
    jr nz, jr_0f7_72ba

    ld c, $0e
    ld b, b
    ret nz

    ld c, $0e
    add b
    add b
    inc e
    inc e
    add b
    add b
    jr jr_0f7_7300

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
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f7_7300:
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    ld bc, $0401
    db $fc
    ld [bc], a
    inc bc
    ld [bc], a
    cp $03
    ld [bc], a
    add c
    rst $38
    inc bc
    inc bc
    add c
    rst $38
    inc bc
    inc bc
    ld b, e
    cp a
    inc bc
    inc bc
    rst $18
    cp a
    inc bc
    inc bc
    ei
    rrca
    rlca
    rlca
    cp a
    ld c, a
    rrca
    rrca
    ld l, a
    sbc a
    rra
    rra
    rrca
    rst $38
    rra
    rra
    rst $38
    adc a
    rra
    rra
    cp e
    rst $00
    ld d, $1f
    ld sp, $08ff
    rrca
    inc b
    rst $38
    ld e, $1f
    adc b
    rst $38
    jr c, jr_0f7_736d

    adc b
    rst $38
    db $76
    ld c, c
    adc h
    rst $38
    ld [hl], a
    ld c, b
    ld [hl], e
    rst $38
    daa
    inc a
    ld b, b
    rst $38
    dec de
    dec de
    and b
    cp a
    nop
    nop
    rra
    ld e, $00
    nop
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    inc h
    ccf
    nop
    nop
    ld [hl+], a
    ccf
    nop

jr_0f7_736d:
    nop
    ld hl, $003f
    nop
    ld de, $001f
    nop
    ld de, $001f
    nop
    ld de, $001f
    nop
    inc de
    rra
    nop
    nop
    rrca
    rrca
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
    ld bc, $0001
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
    ld hl, sp-$08
    nop
    nop
    cp $fe
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    di
    rst $38
    nop
    nop
    pop hl
    rst $38
    add b
    add b
    ret nz

    rst $38
    add b
    add b
    add b
    rst $38
    add b
    add b
    ld b, e
    db $fc
    ld b, b
    ret nz

    daa
    ld hl, sp+$40
    ret nz

    dec sp
    db $fc
    and b
    ld h, b
    ld c, l
    cp $a0
    ld h, b
    adc e
    ld a, [$60a0]
    ld a, [bc]
    ei
    ldh [rNR41], a
    dec sp
    ei
    ldh [$e0], a
    adc $ff
    ld [hl], b
    or b
    rlca
    rst $38
    ldh a, [$50]
    inc bc
    rst $38
    ldh a, [$d0]
    ld b, e
    rst $38
    ldh [rNR41], a
    add d
    cp $c0
    ret nz

    ld [bc], a
    cp $00
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    rlca
    rst $38
    nop
    nop
    inc b
    rst $38
    ld hl, sp-$08
    db $fc
    rst $38
    ld hl, sp-$08
    db $fc
    rst $38
    ld hl, sp-$08
    add h
    rst $38
    ld hl, sp-$08
    add h
    rst $38
    ld a, b
    ld hl, sp-$7d
    rst $38
    sbc b
    sbc b
    add c
    rst $38
    jr jr_0f7_7470

    add c
    rst $38
    nop
    nop
    add c
    rst $38
    nop
    nop
    add d
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

jr_0f7_7470:
    inc a
    inc a
    nop
    nop
    ld a, h
    ld a, h
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
    rra
    rra
    nop
    nop
    jr nz, @+$41

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld [hl], b
    ld e, a
    nop
    nop
    ld [hl], b
    ld a, a
    nop
    nop
    ld l, b
    ld [hl], a
    nop
    nop
    ld a, e
    ld [hl], a
    nop
    nop
    ld a, a
    ld h, c
    nop
    nop
    ld [hl], a
    ld l, c
    nop
    nop
    db $ed
    di
    ld bc, $e101
    rst $38
    ld bc, $ff01
    ld hl, sp+$01
    ld bc, $fc7f
    ld bc, $7b01
    rst $38
    nop
    nop
    or b
    rst $38
    nop
    nop
    ld [c], a
    cp a
    nop
    nop
    ld [hl], c
    ld e, a
    nop
    nop
    cp $8f
    inc bc
    inc bc
    adc b
    ld a, a
    rlca
    inc b
    inc l
    rst $18
    ld c, $09
    or d
    ld d, e
    ld c, $09
    and c
    ld h, c
    inc b
    rlca
    pop bc
    pop bc
    inc bc
    inc bc
    ld bc, $0001
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
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
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
    ld bc, $0001
    nop

jr_0f7_752e:
    nop
    nop
    nop
    nop

jr_0f7_7532:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_0f7_752e

    nop
    nop
    jr nz, jr_0f7_7532

    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    ldh [$e0], a
    nop
    nop
    ld a, [hl]
    cp $00
    nop
    rst $38
    ld a, a
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

    ld hl, sp-$01
    ret nz

    ret nz

    ld [hl], b
    rst $38
    ld b, b
    ret nz

    db $10
    rst $38
    ld b, b
    ret nz

    dec bc
    db $fc
    and b
    ld h, b
    rrca
    db $fc
    and b
    ld h, b
    ld de, $a0fe
    ld h, b
    ld [c], a
    rst $38
    ld h, b
    and b
    inc bc
    cp $e0
    jr nz, @+$03

    cp $e0
    jr nz, jr_0f7_75af

    rst $38
    ld h, b
    and b

jr_0f7_7594:
    pop hl
    rst $18
    ld h, b
    ldh [$03], a
    db $fd
    or b
    ld [hl], b
    ld b, a
    db $fd
    ldh a, [$f0]
    add hl, hl
    cp $e0
    jr nz, @+$12

    rst $38
    ld b, b
    ret nz

    db $10
    rst $38
    jr nz, @-$1e

    ld [$20ff], sp

jr_0f7_75af:
    ldh [rNR23], a
    rst $38
    jr nz, jr_0f7_7594

    jr @+$01

    jr nz, @-$1e

    cp h
    rst $38
    db $10
    ldh a, [$f4]
    rst $30
    ld [hl], b
    ldh a, [rNR22]
    rst $30
    ldh a, [$f0]
    rrca
    rst $38
    sub b
    ldh a, [$0c]
    rst $38
    ld [$04f8], sp
    rst $38
    ld [$7ef8], sp
    rst $38
    ld [$faf8], sp
    ei
    ld [$39f8], sp
    add hl, sp
    inc b
    db $fc
    ld a, l
    ld a, l
    inc b
    db $fc
    db $fc
    db $fc
    cp h
    db $fc
    ldh a, [$f0]
    ld a, b
    ld a, b
    ret nz

    ret nz

    ld a, b
    ld a, b
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
    nop
    nop
    cp $fe
    ld bc, $f001
    ldh a, [rSB]
    ld bc, $fc04
    ld [bc], a
    inc bc
    ld [bc], a
    cp $03
    ld [bc], a
    add c
    rst $38
    inc bc
    inc bc
    add c
    rst $38
    inc bc
    inc bc
    ld b, e
    cp a
    inc bc
    inc bc
    rst $18
    cp a
    inc bc
    inc bc
    ei
    rrca
    inc bc
    inc bc
    cp a
    ld c, e
    rlca
    rlca
    ld l, e
    sbc a
    rrca
    rrca
    rrca
    rst $38
    rrca
    rrca
    rst $28
    rst $18
    rrca
    rrca
    or a
    rst $08
    dec bc
    rrca
    inc sp
    rst $38
    ld [$100f], sp
    rst $38
    ld b, $07
    jr nz, @+$01

    ld b, $07
    jr nz, @+$01

    inc bc
    inc bc
    ld sp, $01ff
    ld bc, $ffce
    ld bc, $6001
    sbc a
    ld bc, $1101
    rst $38
    ld bc, $ff01
    sbc e
    ld bc, $d301
    dec l
    ld bc, $d301
    dec l
    nop
    nop
    sbc e
    cp $00
    nop
    ld [hl], c
    ld a, a
    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, @+$41

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ldh [rIE], a
    nop
    nop
    db $fd
    rst $38
    ld bc, $0e01
    cp $01
    ld bc, $fe02
    ld bc, $0201
    cp $01
    ld bc, $fc04
    ld [bc], a
    inc bc
    inc b
    db $fc
    ld [bc], a
    inc bc
    inc b
    db $fc
    ld [bc], a
    inc bc
    inc b
    db $fc
    ld [bc], a
    inc bc
    inc b
    db $fc
    ld [bc], a
    inc bc
    add sp, -$08
    ld bc, $e801
    ld hl, sp+$3f
    ccf
    ldh a, [$f0]
    daa
    ccf
    ldh [$e0], a
    add hl, de
    rra
    ldh [$e0], a
    ld b, $07
    ret nz

    ret nz

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
    ldh [$e0], a
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
    add $fe
    nop
    nop
    add d
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    cp d
    add $00
    nop
    ld a, [$00c6]
    nop
    ld [bc], a
    cp $00
    nop
    ld a, [hl-]
    add $00
    nop
    ld a, [hl-]
    add $00
    nop
    or $ce
    nop
    nop
    and d
    ld a, [hl]
    nop
    nop
    and c
    ld a, a
    nop
    nop
    pop hl
    rst $38
    nop
    nop
    pop bc
    ld a, a
    nop
    nop
    ld b, c
    rst $38
    nop
    nop
    add d
    cp $00
    nop
    add c
    rst $38
    nop
    nop
    ld b, b
    rst $38
    add b
    add b
    ret nz

    rst $38
    add b
    add b
    ret nz

    rst $38
    add b
    add b
    ccf
    ccf
    ret nz

    ret nz

    rra
    rra
    ld b, b
    ret nz

    ld [$200f], sp
    ldh [$08], a
    rrca
    db $10
    ldh a, [rDIV]
    rlca
    db $10
    ldh a, [rDIV]
    rlca
    ld [$02f8], sp
    inc bc
    inc b
    db $fc
    ld bc, $3801
    ld hl, sp+$00
    nop
    db $fc
    db $fc
    nop
    nop
    inc a
    inc a
    nop
    nop
    ld e, $1e
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, h
    ld a, h
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

jr_0f7_7777:
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

    ld [$200f], sp
    ldh [rNR10], a
    rra
    db $10
    ldh a, [rNR32]
    rla
    ld [$1cf8], sp
    rra
    ld [$1af8], sp
    dec e
    jr @-$06

    ld e, $1d
    ld hl, sp-$08
    rra
    jr jr_0f7_7777

    ld a, b
    dec a
    ld a, [hl-]
    cp $5e
    ld a, e
    ld a, h
    ld e, a
    rst $38
    ld a, b
    ld a, a
    ld a, a
    rst $38
    ld a, a
    ld a, [hl]
    rst $38
    ld a, a
    ld e, h
    ld a, a
    cp $3f
    jr z, jr_0f7_77f5

    call c, Call_000_28ff
    ccf
    inc c
    rst $38
    inc e
    rra
    adc e
    cp $0c
    rrca
    add l
    cp $07
    rlca
    ld c, c
    cp $02
    inc bc
    or b
    ld a, a
    ld bc, $f801
    rst $38
    ld bc, $df01
    cp b
    ld bc, $df01
    cp b
    ld bc, $f801
    rst $38
    ld bc, $a801
    rst $38
    nop
    nop
    push hl
    rst $38
    nop
    nop
    ld h, d
    ld a, a
    nop
    nop
    ld [hl+], a
    ccf
    nop
    nop
    ld [hl+], a
    ccf
    nop
    nop
    ld b, c
    ld a, a
    nop

jr_0f7_77f5:
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld sp, hl
    rst $38
    nop
    nop
    cp $fe
    nop
    nop
    add [hl]
    cp $00
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    ld [hl], h
    ld a, h
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    ld a, b
    ld a, b
    rlca
    rlca
    ld hl, sp-$08
    add hl, bc
    rrca
    ld hl, sp-$08
    ld b, $07
    ld a, b
    ld hl, sp+$01
    ld bc, $f898
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

jr_0f7_7862:
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
    jr nc, jr_0f7_7862

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    ret nc

    jr nc, jr_0f7_787f

jr_0f7_787f:
    nop
    ret z

    jr c, jr_0f7_7883

jr_0f7_7883:
    nop
    ret z

    jr c, jr_0f7_7887

jr_0f7_7887:
    nop
    ld c, b
    cp b
    nop
    nop
    ret z

    jr c, jr_0f7_788f

jr_0f7_788f:
    nop
    cp b
    ld a, b
    nop
    nop
    ld [$00f8], sp
    nop
    inc b
    db $fc
    nop
    nop
    add h
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    ld [$00f8], sp
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop
    inc b
    db $fc
    nop
    nop

jr_0f7_78b4:
    ld [bc], a
    cp $00
    nop
    add a
    rst $38
    nop
    nop
    sbc h
    rst $38
    ret nz

    ret nz

    ld hl, sp-$01
    jr nc, jr_0f7_78b4

jr_0f7_78c4:
    ld a, b
    ld a, a
    ld [$30f8], sp
    ccf
    jr jr_0f7_78c4

    ld [$3c0f], sp
    db $fc
    ld b, $07
    ld a, [hl]
    cp $01
    ld bc, $bfbf
    nop
    nop
    rra
    rra
    nop
    nop
    ld e, $1e
    nop
    nop
    inc e
    inc e
    nop
    nop
    inc a
    inc a
    nop
    nop
    jr c, jr_0f7_7924

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_0f7_7924:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
