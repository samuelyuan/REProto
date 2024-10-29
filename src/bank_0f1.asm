SECTION "ROM Bank $0f1", ROMX[$4000], BANK[$f1]

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
    rra
    rra
    nop
    nop
    ccf
    inc a
    nop
    nop
    ld a, $3f
    nop
    nop
    scf
    inc a
    nop
    nop
    rra
    inc d
    nop
    nop
    push af
    cp $01
    ld bc, $fffc
    inc bc
    inc bc
    rst $38
    cp $06
    rlca
    ld a, $ff
    inc b
    rlca
    ld a, $ff
    inc b
    rlca
    inc e
    rst $38
    inc b
    rlca
    ld [$03ff], sp
    ld [bc], a
    ret z

    ccf
    inc bc
    ld [bc], a
    db $ec
    ccf
    inc bc
    ld [bc], a
    rst $30
    ccf
    ld [bc], a
    inc bc
    ldh a, [$3f]
    ld [bc], a
    inc bc
    ret nc

    ccf
    ld bc, $ff01
    rra
    ld bc, $e001
    rra
    ld bc, $e001
    rra
    ld bc, $e201
    rst $38
    ld bc, $f101
    ld a, a
    ld bc, $f001
    ld a, a
    ld bc, $f001
    rst $28
    ld bc, $6001
    sbc a
    nop
    nop
    ret nz

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
    ld h, c
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld e, a
    ld a, a
    nop
    nop
    ld b, c
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
    ld b, d
    ld a, a
    nop
    nop
    dec a
    dec a
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
    ld e, $1e
    nop
    nop
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    ldh [$e0], a
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
    adc b
    ld a, b
    nop
    nop
    or b
    ld [hl], b
    nop
    nop
    ldh a, [$30]
    nop
    nop
    ld [hl], b
    or b
    nop
    nop
    cp a
    ld a, a
    nop
    nop
    ccf
    rst $38
    add b
    add b
    rst $18
    ccf
    ret nz

    ret nz

    rst $18
    ccf
    ret nz

    ret nz

    rst $28
    rst $38
    ret nz

    ret nz

    ld b, a
    rst $38
    ld b, b
    ret nz

    ld [bc], a
    rst $38
    ld b, b

Call_0f1_40ff:
    ret nz

    ld b, d
    rst $38
    ld b, b
    ret nz

    ld b, a
    db $fc
    ret nz

    ld b, b
    cp e
    db $fc
    ret nz

    ld b, b
    rlca
    db $fc
    ret nz

    ld b, b
    rlca
    db $fc
    ret nz

    ld b, b
    rst $38
    sbc h
    ret nz

    ld b, b
    rlca
    db $fc
    ret nz

    ld b, b
    rlca
    db $fc
    ret nz

    ld b, b
    rlca
    rst $38
    ret nz

    ret nz

    ld b, a
    rst $38
    ret nz

    ret nz

    add a
    rst $38
    ret nz

    ret nz

    add l
    ei
    ret nz

    ret nz

    add e
    db $fc
    ld b, b
    ret nz

    add a
    rst $38
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
    inc c
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
    ldh [$e0], a
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
    rra
    rra
    nop
    nop
    ccf
    inc a
    nop
    nop
    ld a, $3f
    nop
    nop
    scf
    inc a
    nop
    nop
    ccf
    inc [hl]
    nop
    nop
    dec [hl]
    ld a, $01
    ld bc, $fdfa
    inc bc
    inc bc
    db $fd
    cp $07
    rlca
    cp $ff
    ld b, $07
    ld a, [hl]
    rst $38
    inc b
    rlca
    inc a
    rst $38
    inc b
    rlca
    jr nc, @+$01

    inc b
    rlca
    db $10
    rst $38
    inc bc
    ld [bc], a
    adc b
    ld a, a
    inc bc
    ld [bc], a
    rst $38
    ccf
    inc bc
    ld [bc], a
    ldh [$3f], a
    inc bc
    ld [bc], a
    ldh [$3f], a
    ld [bc], a
    inc bc
    ld a, a
    cp a
    ld bc, $e001
    rra
    ld bc, $e001
    rra
    ld bc, $e201
    rra
    ld bc, $e101
    rra
    ld bc, $e101
    rst $38
    ld bc, $f001
    sbc a
    ld bc, $9001
    rst $38
    ld bc, $f101
    rst $28
    nop
    nop
    pop hl
    sbc a
    ld bc, $0101
    rst $38
    ld bc, $c301
    rst $38
    ld bc, $ff01
    rst $38
    ld bc, $3f01
    rst $38
    ld [bc], a
    inc bc
    dec b
    db $fd
    ld [bc], a
    inc bc
    dec b
    db $fd
    ld [bc], a
    inc bc
    dec b
    db $fd
    ld [bc], a
    inc bc
    add hl, bc
    ld sp, hl
    ld [bc], a
    inc bc
    add hl, bc
    ld sp, hl
    ld [bc], a
    inc bc
    ld [$01f8], sp
    ld bc, $f808
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh [$e0], a
    ld bc, $f001
    ldh a, [rSB]
    ld bc, $f8f8
    ld bc, $fc01
    db $fc
    ldh [$e0], a
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
    adc b
    ld a, b
    nop
    nop
    or b
    ld [hl], b
    nop
    nop
    ldh a, [$30]
    nop
    nop
    ld a, [hl]
    cp [hl]
    nop
    nop
    cp a
    ld a, a
    nop
    nop
    ccf
    rst $38
    add b
    add b
    rst $38
    ccf
    add b
    add b
    rst $18
    ccf
    add b
    add b
    db $fc
    rst $38
    add b
    add b
    ld b, h
    rst $38
    ld b, b
    ret nz

    ld [bc], a
    rst $38
    and b
    ld h, b
    ld [bc], a
    rst $38
    ldh [rNR41], a
    ld b, a
    cp $e0
    jr nz, @-$41

    cp $a0
    ld h, b
    rrca
    db $fc
    ld b, b
    ret nz

    dec bc
    db $fc
    add b
    add b
    cp $39
    add b
    add b
    rrca
    rst $38
    nop
    nop
    ld c, $fe
    nop
    nop
    ld c, $fe
    nop
    nop
    ld l, $f6
    nop
    nop
    adc $f2
    nop
    nop
    adc h
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
    db $fc
    db $fc
    nop
    nop
    ld a, d
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
    add d
    cp $00
    nop
    ld b, h
    ld a, h
    nop
    nop
    jr c, jr_0f1_4322

    nop
    nop
    jr c, jr_0f1_4326

    nop
    nop
    jr c, jr_0f1_432a

    nop
    nop
    ld a, h
    ld a, h
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
    nop
    inc bc
    inc bc
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    add hl, bc
    ld c, $00
    nop
    rrca
    rrca
    nop
    nop
    rra
    ld e, $00
    nop
    rra
    rra
    nop
    nop
    dec de
    ld e, $00
    nop

jr_0f1_4322:
    rrca
    ld a, [bc]
    nop
    nop

jr_0f1_4326:
    ld a, d
    ld a, a
    nop
    nop

jr_0f1_432a:
    cp $ff
    ld bc, $ff01
    rst $38
    inc bc
    inc bc
    rra
    rst $38
    ld [bc], a
    inc bc
    rra
    rst $38
    ld [bc], a
    inc bc
    ld c, $ff
    ld [bc], a
    inc bc
    inc b
    rst $38
    inc b
    rlca
    inc b
    rst $38
    inc b
    rlca
    ld d, $ff
    ld [$2b0f], sp
    rst $28
    add hl, bc
    ld c, $a8
    ld l, a
    add hl, bc
    ld c, $c8
    ld c, a
    add hl, bc
    ld c, $df
    ld e, a
    rrca
    ld c, $e0
    ld a, a
    rrca
    rrca
    ldh [rIE], a
    rrca
    rrca
    and b
    rst $38
    dec bc
    rrca
    ldh [$bf], a
    dec b
    ld b, $e0
    ld a, a
    inc bc
    inc bc
    and b
    cp a
    nop
    nop
    jr nz, jr_0f1_43b3

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
    ld h, b
    ld a, a
    nop
    nop
    cp a
    rst $38
    nop
    nop
    adc a
    rst $38
    nop
    nop
    add b
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
    ld b, b
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    jr nz, jr_0f1_43e7

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

jr_0f1_43b3:
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
    ldh a, [$f0]
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
    add h
    db $fc
    nop
    nop
    call nz, Call_000_003c
    nop
    ld e, b
    cp b
    nop
    nop
    ld hl, sp+$18
    nop
    nop

jr_0f1_43e0:
    cp b
    ld e, b
    nop
    nop
    rst $18
    ccf
    add b

jr_0f1_43e7:
    add b
    rra
    rst $38
    ret nz

    ret nz

    rst $28
    rra
    ldh [$e0], a
    ld l, a
    sbc a
    ldh [$e0], a
    ld [hl], a
    rst $38
    ldh [$e0], a
    inc hl
    rst $38
    and b
    ldh [rSB], a
    rst $38
    jr nz, jr_0f1_43e0

    ld hl, $20ff
    ldh [rNR44], a
    cp $a0
    ld h, b
    db $dd
    cp $e0
    jr nz, @+$03

    cp $d0
    jr nc, jr_0f1_4414

    cp $f0
    db $10

jr_0f1_4414:
    cp $cf
    ldh a, [rNR10]
    inc bc
    rst $38
    ld e, b
    cp b
    ld [bc], a
    cp $fc
    db $f4
    add d
    cp $fc
    db $f4
    ld d, d
    cp $fc
    db $f4
    ld [hl+], a
    cp $f8
    ret z

    ld hl, $70ff
    ld [hl], b
    ld hl, $00ff
    nop
    jr nz, @+$01

    add b
    add b
    jr nz, @+$01

    add b
    add b
    ld a, a
    rst $38
    add b
    add b
    ld a, a
    rst $38
    add b
    add b
    ld h, b
    rst $38
    add b
    add b
    pop bc
    rst $38
    nop
    nop
    pop bc
    rst $38
    nop
    nop
    ld b, d
    cp $00
    nop
    ld b, d
    cp $00
    nop
    ld b, h
    db $fc
    nop
    nop
    ld c, b
    ld hl, sp+$00
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    ldh a, [$f0]
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
    ld hl, sp-$08
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    add hl, bc
    ld c, $00
    nop
    rrca
    rrca
    nop
    nop
    rra
    ld e, $00
    nop
    rra
    rra
    nop
    nop
    dec de
    ld e, $00
    nop
    rrca
    ld a, [bc]
    nop
    nop
    ld a, d
    ld a, a
    nop
    nop
    cp $ff
    ld bc, $ff01
    rst $38
    inc bc
    inc bc
    rra
    rst $38
    ld [bc], a
    inc bc
    rra
    rst $38
    ld [bc], a
    inc bc
    ld c, $ff
    ld [bc], a
    inc bc
    inc b
    rst $38
    ld [bc], a
    inc bc
    call nz, Call_000_033f
    ld [bc], a
    sub $3f
    inc bc
    ld [bc], a
    sbc e
    ld a, a
    inc bc
    ld [bc], a
    ld hl, sp+$1f
    inc bc
    ld [bc], a
    ld hl, sp+$1f
    inc bc
    ld [bc], a
    rst $18
    ccf
    inc bc
    inc bc
    ldh [rIE], a
    inc bc
    inc bc
    ldh [rIE], a
    inc bc
    inc bc
    ldh [rIE], a
    ld [bc], a
    inc bc
    ldh a, [$ef]
    ld bc, $6001
    sbc a
    nop
    nop
    ldh [rIE], a
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
    ld h, b
    ld a, a
    nop
    nop
    or b
    rst $38
    nop
    nop
    sbc a
    rst $38
    nop
    nop
    add b
    rst $38
    nop
    nop
    add b
    rst $38
    nop
    nop
    add b
    rst $38
    nop
    nop
    add b
    rst $38
    nop
    nop
    add b
    rst $38
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld a, $3e
    nop
    nop
    jr c, jr_0f1_4568

    nop
    nop
    jr c, jr_0f1_456c

    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld a, a
    ld a, a
    ldh a, [$f0]
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
    add h
    db $fc
    nop
    nop
    call nz, Call_000_003c
    nop
    ld e, b
    cp b
    nop
    nop
    ld hl, sp+$18
    nop
    nop

jr_0f1_4560:
    cp b
    ld e, b
    nop
    nop
    rst $18
    ccf
    add b
    add b

jr_0f1_4568:
    rra
    rst $38
    ret nz

    ret nz

jr_0f1_456c:
    rst $28
    rra
    ldh [$e0], a
    ld l, a
    sbc a
    ldh [$e0], a
    ld [hl], a
    rst $38
    ldh [$e0], a
    inc hl
    rst $38
    and b
    ldh [rSB], a
    rst $38
    jr nz, jr_0f1_4560

    ld hl, $20ff
    ldh [rNR44], a
    cp $c0
    ld b, b
    db $dd
    cp $c0
    ld b, b
    inc bc
    db $fc
    and b
    ld h, b
    ld bc, $a0fe
    ld h, b
    db $fd
    adc $e0
    jr nz, @+$03

    cp $e0
    ldh [$03], a
    rst $38
    ldh a, [$f0]
    add e
    rst $38
    ld hl, sp-$18
    ld d, e
    rst $38
    ld hl, sp-$18
    inc hl
    rst $38
    ldh a, [rNR10]
    ld hl, $e0ff
    ldh [rNR42], a
    rst $38
    nop
    nop
    ld hl, $00ff
    nop
    ld b, b
    rst $38
    add b
    add b
    ld b, b
    rst $38
    add b
    add b
    ld a, a
    rst $38
    add b
    add b
    ld h, b
    rst $38
    add b
    add b
    ld b, b
    rst $38
    add b
    add b
    ret nz

    rst $38
    ld b, b
    ret nz

    ld b, b
    rst $38
    ld b, b
    ret nz

    ld h, b
    rst $38
    ld b, b
    ret nz

    and b
    cp a
    ld b, b
    ret nz

    and b
    cp a
    ld b, b
    ret nz

    sbc a
    sbc a
    add b
    add b
    rra
    rra
    nop
    nop
    ld c, $0e
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
    ret nz

    ret nz

    rlca
    rlca
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
    inc b
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    add hl, bc
    ld c, $00
    nop
    rrca
    rrca
    nop
    nop
    rra
    ld e, $00
    nop
    rra
    rra
    nop
    nop
    dec de
    ld e, $00
    nop
    rrca
    ld a, [bc]
    nop
    nop
    ld a, d
    ld a, a
    nop
    nop
    cp $ff
    ld bc, $ff01
    rst $38
    inc bc
    inc bc
    rra
    rst $38
    ld [bc], a
    inc bc
    rra
    rst $38
    ld [bc], a
    inc bc
    ld c, $ff
    ld [bc], a
    inc bc
    inc b
    rst $38
    ld [bc], a
    inc bc
    call nz, Call_000_023f
    inc bc
    sub $3f
    ld [bc], a
    inc bc
    db $db
    ccf
    ld [bc], a
    inc bc
    add sp, $1f
    ld bc, $6801
    sbc a
    ld bc, $7701
    adc a
    ld bc, $f801
    rst $38
    ld bc, $f801
    rst $38
    nop
    nop
    ld hl, sp-$01
    nop
    nop
    db $fc
    ei
    nop
    nop
    ld a, b
    ld b, a
    nop
    nop
    jr nz, jr_0f1_46af

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
    ld b, b
    ld a, a
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    or b
    rst $38
    nop
    nop
    sbc a
    rst $38
    nop
    nop
    add c
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0101
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    cp $02
    inc bc
    ld [bc], a
    cp $01
    ld bc, $fc04
    ld bc, $f801
    ld hl, sp+$01
    ld bc, $f0f0
    ld bc, $e001

jr_0f1_46af:
    ldh [$03], a
    inc bc
    ldh [$e0], a
    inc bc
    inc bc
    ldh a, [$f0]
    ld bc, $f801
    ld hl, sp+$00
    nop
    ld hl, sp-$08
    ldh a, [$f0]
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
    add h
    db $fc
    nop
    nop
    call nz, Call_000_003c
    nop
    ld e, b
    cp b
    nop
    nop
    ld hl, sp+$18
    nop
    nop

jr_0f1_46e0:
    cp b
    ld e, b
    nop
    nop
    rst $18
    ccf
    add b
    add b
    rra
    rst $38
    ret nz

    ret nz

    rst $28
    rra
    ldh [$e0], a
    ld l, a
    sbc a
    ldh [$e0], a
    ld [hl], a
    rst $38
    ldh [$e0], a
    inc hl
    rst $38
    and b
    ldh [rSB], a
    rst $38
    jr nz, jr_0f1_46e0

    ld hl, $20ff
    ldh [rNR43], a
    rst $38
    ret nz

    ret nz

    call c, $80ff
    add b
    inc bc
    db $fc
    ld b, b
    ret nz

    inc bc
    db $fc
    ld b, b
    ret nz

    rst $38
    call z, Call_0f1_60a0
    inc bc
    rst $38
    ldh [$e0], a
    inc bc
    rst $38
    ldh [$e0], a
    add e
    rst $38
    ldh [$e0], a
    ld d, e
    rst $38
    ldh a, [$d0]
    inc hl
    cp $e0
    jr nz, jr_0f1_474e

    rst $38
    ret nz

    ret nz

jr_0f1_4730:
    ld hl, $00ff
    nop

jr_0f1_4734:
    ld b, b
    rst $38
    add b
    add b

jr_0f1_4738:
    ld b, b
    rst $38
    add b
    add b
    ld b, b
    rst $38
    add b
    add b
    rst $08
    rst $38
    ret nz

    ret nz

jr_0f1_4744:
    cp a
    cp a
    ret nz

    ret nz

    or b
    cp a
    ld b, b
    ret nz

    jr nz, jr_0f1_478d

jr_0f1_474e:
    jr nz, jr_0f1_4730

    db $10
    rra
    jr nz, jr_0f1_4734

    db $10
    rra
    jr nz, jr_0f1_4738

    db $10
    rra
    db $10
    ldh a, [rNR10]
    rra
    db $10
    ldh a, [$08]
    rrca
    jr nz, jr_0f1_4744

    rrca
    rrca
    ret nz

    ret nz

    rlca
    rlca
    add b
    add b
    rlca
    rlca
    add b
    add b
    rlca
    rlca
    ld hl, sp-$08
    rlca
    rlca
    ld [$07f8], sp
    rlca
    ldh a, [$f0]
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
    inc b
    rlca
    nop
    nop
    ld [$000f], sp

jr_0f1_478d:
    nop
    add hl, bc
    ld c, $00
    nop
    rrca
    rrca
    nop
    nop
    rra
    ld e, $00
    nop
    rra
    rra
    nop
    nop
    dec de
    ld e, $00
    nop
    rrca
    ld a, [bc]
    nop
    nop
    ld a, d
    ld a, a
    nop
    nop
    cp $ff
    ld bc, $ff01
    rst $38
    inc bc
    inc bc
    rra
    rst $38
    ld [bc], a
    inc bc
    rra
    rst $38
    ld [bc], a
    inc bc
    ld c, $ff
    ld [bc], a
    inc bc
    inc b
    rst $38
    ld [bc], a
    inc bc
    db $e4
    rra
    ld [bc], a
    inc bc
    or $0f
    ld bc, $7b01
    adc a
    ld bc, $7001
    adc a
    nop
    nop
    or b
    rst $08
    nop
    nop
    cp a
    rst $00
    nop
    nop
    cp b
    rst $18
    nop
    nop
    ld a, h
    ld a, a
    nop
    nop
    ld a, [hl]
    ld a, l
    nop
    nop
    ld a, [hl]
    ld a, l
    nop
    nop
    inc a
    inc hl
    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, jr_0f1_483f

    nop
    nop
    ld d, b
    ld a, a
    nop
    nop
    ld e, a
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
    add b
    rst $38
    nop
    nop
    add b
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
    jp nz, Jump_000_00fe

    nop
    db $fc
    db $fc
    nop
    nop
    ld a, b
    ld a, b
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
    ld a, h

jr_0f1_483f:
    ld a, h
    ldh a, [$f0]
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
    add h
    db $fc
    nop
    nop
    call nz, Call_000_003c
    nop
    ld e, b
    cp b
    nop
    nop
    ld hl, sp+$18
    nop
    nop

jr_0f1_4860:
    cp b
    ld e, b
    nop
    nop
    rst $18
    ccf
    add b
    add b
    rra
    rst $38
    ret nz

    ret nz

    rst $28
    rra
    ldh [$e0], a
    ld l, a
    sbc a
    ldh [$e0], a
    ld [hl], a
    rst $38
    ldh [$e0], a
    inc hl
    rst $38
    and b
    ldh [rSB], a
    rst $38
    jr nz, jr_0f1_4860

    ld hl, $20ff
    ldh [rNR43], a
    rst $38
    ret nz

    ret nz

    call c, $80ff
    add b
    inc bc
    db $fc
    add b
    add b
    inc bc
    db $fc
    add b
    add b
    cp $cd
    add b
    add b
    inc bc
    rst $38
    add b
    add b
    inc bc
    rst $38
    add b
    add b
    add e
    rst $38
    ld b, b
    ret nz

    ld d, c
    rst $38
    ret nz

    ld b, b
    ld hl, $40fe
    ret nz

    ld hl, $80ff
    add b
    jr nz, @+$01

    add b
    add b
    jr nz, @+$01

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
    ld h, b
    rst $38
    add b
    add b
    rst $38
    rst $38
    add b
    add b
    ld c, a
    rst $38
    ld b, b
    ret nz

    ld b, b
    rst $38
    ld b, b
    ret nz

    ret nz

    rst $38
    ld b, b
    ret nz

    ret nz

    rst $38
    ld b, b
    ret nz

    ld b, b
    ld a, a
    ld b, b
    ret nz

    ld b, b
    ld a, a
    ld b, b
    ret nz

    jr nz, jr_0f1_4921

    add b
    add b
    rra
    rra
    add b
    add b
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    ldh [$e0], a
    rrca
    rrca
    db $10
    ldh a, [rIF]
    rrca
    ldh [$e0], a
    ld [$800f], sp
    add b
    rrca
    rrca
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    add hl, bc
    ld c, $00
    nop
    rrca
    rrca
    nop
    nop
    rra
    ld e, $00
    nop
    rra
    rra
    nop
    nop
    dec de
    ld e, $00

jr_0f1_4921:
    nop
    rrca
    ld a, [bc]
    nop
    nop
    ld a, d
    ld a, a
    nop
    nop
    cp $ff
    ld bc, $ff01
    rst $38
    inc bc
    inc bc
    rra
    rst $38
    ld [bc], a
    inc bc
    rra
    rst $38
    ld [bc], a
    inc bc
    ld c, $ff
    ld [bc], a
    inc bc
    inc b
    rst $38
    ld bc, $7401
    adc a
    ld bc, $7601
    adc a
    nop
    nop
    ei
    add a
    nop
    nop
    cp b
    rst $00
    nop
    nop
    ld a, h
    ld b, e
    nop
    nop
    ld e, a
    ld h, e
    nop
    nop
    ld a, [hl+]
    scf
    nop
    nop
    rra
    ld e, $00
    nop
    rra
    ld e, $00
    nop
    rra
    ld e, $00
    nop
    ld e, $19
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
    db $10
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
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0f1_49cf

    nop
    nop
    jr nz, jr_0f1_49d3

    nop
    nop
    jr nz, jr_0f1_49d7

    nop
    nop
    jr nz, jr_0f1_49db

    nop
    nop
    jr nz, jr_0f1_49df

    nop
    nop
    jr nc, jr_0f1_49e3

    nop
    nop
    ccf
    ccf
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
    ld a, $3e
    nop
    nop
    rra
    rra
    nop
    nop
    rrca
    rrca
    ldh a, [$f0]
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

jr_0f1_49cf:
    nop
    add h
    db $fc
    nop

jr_0f1_49d3:
    nop
    call nz, Call_000_003c

jr_0f1_49d7:
    nop
    ld e, b
    cp b
    nop

jr_0f1_49db:
    nop
    ld hl, sp+$18
    nop

jr_0f1_49df:
    nop

jr_0f1_49e0:
    cp b
    ld e, b
    nop

jr_0f1_49e3:
    nop
    rst $18
    ccf
    add b
    add b
    rra
    rst $38
    ret nz

    ret nz

    rst $28
    rra
    ldh [$e0], a
    ld l, a
    sbc a
    ldh [$e0], a
    ld [hl], a
    rst $38
    ldh [$e0], a
    inc hl
    rst $38
    and b
    ldh [rSB], a
    rst $38
    jr nz, jr_0f1_49e0

    ld hl, $20ff
    ldh [rNR43], a
    rst $38
    ret nz

    ret nz

    db $dd
    rst $38
    nop
    nop
    ld bc, $00ff
    nop
    ld [bc], a
    cp $00
    nop
    cp $ce
    nop
    nop
    ld [bc], a
    cp $00
    nop
    ld [bc], a
    cp $00
    nop
    add c
    rst $38
    nop
    nop
    ld d, e
    db $fd
    nop
    nop
    ld [hl+], a
    cp $00
    nop
    ld hl, $00ff
    nop
    ld hl, $00ff
    nop
    ld de, $00ff
    nop
    ld de, $00ff
    nop
    pop af
    rst $38
    nop
    nop
    pop af
    rst $38
    nop
    nop
    rra
    rst $38
    nop
    nop
    ccf
    rst $38
    nop
    nop
    ld hl, $00ff
    nop
    ld b, c
    rst $38
    nop
    nop
    ld b, c
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
    ld b, d
    ld a, [hl]
    nop
    nop
    inc a
    inc a
    nop
    nop
    jr c, jr_0f1_4aa6

    nop
    nop
    jr c, jr_0f1_4aaa

    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    add b
    add b
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    add hl, bc
    ld c, $00
    nop
    rrca
    rrca
    nop
    nop
    rra
    ld e, $00
    nop
    rra
    rra
    nop
    nop
    dec de
    ld e, $00
    nop
    rrca
    ld a, [bc]
    nop
    nop

jr_0f1_4aa6:
    ld a, d
    ld a, a
    nop
    nop

jr_0f1_4aaa:
    cp $ff
    ld bc, $ff01
    rst $38
    inc bc
    inc bc
    rra
    rst $38
    ld [bc], a
    inc bc
    rra
    rst $38
    ld [bc], a
    inc bc
    ld c, $ff
    ld [bc], a
    inc bc
    inc b
    rst $38
    ld [bc], a
    inc bc
    db $e4
    rra
    ld [bc], a
    inc bc
    or $0f
    ld bc, $7b01
    adc a
    ld bc, $7001
    adc a
    nop
    nop
    or b
    rst $08
    nop
    nop
    cp a
    rst $00
    nop
    nop
    cp b
    rst $18
    nop
    nop
    ld a, h
    ld a, a
    nop
    nop
    ld a, [hl]
    ld a, l
    nop
    nop
    ld a, [hl]
    ld a, l
    nop
    nop
    inc a
    inc hl
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
    rrca
    rrca
    nop
    nop
    ld b, $07
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
    add hl, bc
    rrca
    nop
    nop
    inc b
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
    ldh a, [$f0]
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
    add h
    db $fc
    nop
    nop
    call nz, Call_000_003c
    nop
    ld e, b
    cp b
    nop
    nop
    ld hl, sp+$18
    nop
    nop

jr_0f1_4b60:
    cp b
    ld e, b
    nop
    nop
    rst $18
    ccf
    add b
    add b
    rra
    rst $38
    ret nz

    ret nz

    rst $28
    rra
    ldh [$e0], a
    ld l, a
    sbc a
    ldh [$e0], a
    ld [hl], a
    rst $38
    ldh [$e0], a
    inc hl
    rst $38
    and b
    ldh [rSB], a
    rst $38
    jr nz, jr_0f1_4b60

    ld hl, $20ff
    ldh [rNR43], a
    rst $38
    ret nz

    ret nz

    call c, $80ff
    add b
    inc bc
    db $fc
    add b
    add b
    inc bc
    db $fc
    add b
    add b
    cp $cd
    add b
    add b
    inc bc
    rst $38
    add b
    add b
    inc bc
    rst $38
    add b
    add b
    add e
    rst $38
    ld b, b
    ret nz

    ld d, c
    rst $38
    ret nz

    ld b, b
    ld hl, $40fe
    ret nz

    ld hl, $80ff
    add b
    ld hl, $00ff
    nop
    ld [hl+], a
    cp $00
    nop
    ld [de], a
    cp $00
    nop
    ld [de], a
    cp $00
    nop
    db $f4
    db $fc
    nop
    nop
    inc d
    db $fc
    nop
    nop
    inc d
    db $fc
    nop
    nop
    inc c
    db $fc
    nop
    nop
    inc c
    db $fc
    nop
    nop
    inc c
    db $fc
    nop
    nop
    inc c
    db $fc
    nop
    nop
    inc c
    db $fc
    nop
    nop
    ld [$00f8], sp
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
    ldh a, [$f0]
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
    inc b
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
    dec c
    rrca
    nop
    nop
    rlca
    dec b
    nop
    nop
    dec a
    ccf
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    rst $38
    rst $38
    ld bc, $8f01
    rst $38
    ld bc, $0f01
    rst $38
    ld bc, $0701
    rst $38
    ld bc, $0201
    rst $38
    ld bc, $6201
    sbc a
    ld bc, $6b01
    sbc a
    ld bc, $6d01
    sbc a
    ld bc, $7401
    adc a
    nop
    nop
    or h
    rst $08
    nop
    nop
    cp e
    rst $00
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
    ld a, h
    ld a, a
    nop
    nop
    ld a, [hl]
    ld a, l
    nop
    nop
    inc a
    inc hl
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
    inc c
    rrca
    nop
    nop
    inc c
    rrca
    nop
    nop
    ld b, $07
    nop
    nop
    ld b, $07
    nop
    nop
    dec bc
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
    jr nz, jr_0f1_4cdf

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
    ld e, $1e
    nop
    nop
    ld a, $3e
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
    rrca
    rrca
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
    jp nz, Jump_000_007e

    nop
    jp nz, Jump_000_00fe

    nop
    ld [c], a
    ld e, $00
    nop
    xor h
    call c, RST_00
    db $fc
    inc c
    nop

jr_0f1_4cdf:
    nop
    call c, Call_000_002c
    nop
    ld l, a
    sbc a
    ret nz

    ret nz

    rrca
    rst $38
    ldh [$e0], a
    rst $30
    adc a
    ldh a, [$f0]
    or a
    rst $08
    ldh a, [$f0]
    cp e
    rst $38
    ldh a, [$f0]
    ld de, $d0ff
    ldh a, [rP1]
    rst $38
    sub b
    ldh a, [rNR10]
    rst $38
    sub b
    ldh a, [rNR11]
    rst $38
    ld h, b
    ldh [$ee], a
    rst $38
    ld b, b
    ret nz

    ld bc, $a0fe
    ld h, b
    ld bc, $a0fe
    ld h, b
    rst $38
    and $d0
    jr nc, jr_0f1_4d1a

    rst $38

jr_0f1_4d1a:
    ldh a, [$f0]
    ld bc, $f0ff
    ldh a, [rSTAT]
    rst $38
    ldh a, [$f0]
    add hl, hl
    rst $38
    ld hl, sp-$18
    ld de, $f0ff
    db $10
    ld de, $e0ff
    ldh [rNR12], a
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    ld a, [bc]
    cp $00
    nop
    inc c
    db $fc
    nop
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
    ld bc, $00ff
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
    add b
    rst $38
    add b
    add b
    ld b, c
    rst $38
    nop
    nop
    cp $fe
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
    ret nz

    ret nz

    jr c, jr_0f1_4db5

    ld b, b
    ret nz

    cp a
    cp a
    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    add hl, bc
    ld c, $00
    nop
    rrca
    rrca
    nop
    nop
    rra
    ld e, $00
    nop
    rra
    rra
    nop
    nop
    dec de
    ld e, $00
    nop
    rrca
    ld a, [bc]
    nop
    nop
    ld a, d
    ld a, a
    nop
    nop
    cp $ff
    ld bc, $ff01
    rst $38
    inc bc
    inc bc
    rra
    rst $38
    ld [bc], a

jr_0f1_4db5:
    inc bc
    rra
    rst $38
    ld [bc], a
    inc bc
    ld c, $ff
    ld [bc], a
    inc bc
    inc b
    rst $38
    ld [bc], a
    inc bc
    call nz, Call_000_033f
    ld [bc], a
    sub $3f
    inc bc
    ld [bc], a
    sbc e
    ld a, a
    inc bc
    ld [bc], a
    ld hl, sp+$1f
    inc bc
    ld [bc], a
    ld hl, sp+$1f
    inc bc
    ld [bc], a
    rst $18
    ccf
    inc bc
    inc bc
    ldh [rIE], a
    inc bc
    inc bc
    ldh [rIE], a
    inc bc
    inc bc
    ldh [rIE], a
    ld [bc], a
    inc bc
    ldh a, [$ef]
    ld bc, $6001
    sbc a
    nop
    nop
    ldh [rIE], a
    nop
    nop
    jr nz, jr_0f1_4e33

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
    jr jr_0f1_4e23

    nop
    nop
    rra
    rra
    nop
    nop
    rla
    rra
    nop
    nop
    jr nz, jr_0f1_4e4f

    nop
    nop
    jr nz, jr_0f1_4e53

    nop
    nop
    jr nz, jr_0f1_4e57

    nop
    nop
    jr nz, jr_0f1_4e5b

    nop
    nop
    jr nz, jr_0f1_4e5f

    nop
    nop
    db $10

jr_0f1_4e23:
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
    rlca

jr_0f1_4e33:
    rlca
    nop
    nop
    rrca
    rrca
    nop
    nop
    inc c
    rrca
    nop
    nop
    rrca
    rrca
    ldh a, [$f0]
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

jr_0f1_4e4f:
    nop
    add h
    db $fc
    nop

jr_0f1_4e53:
    nop
    call nz, Call_000_003c

jr_0f1_4e57:
    nop
    ld e, b
    cp b
    nop

jr_0f1_4e5b:
    nop
    ld hl, sp+$18
    nop

jr_0f1_4e5f:
    nop

jr_0f1_4e60:
    cp b
    ld e, b
    nop
    nop
    rst $18
    ccf
    add b
    add b
    rra
    rst $38
    ret nz

    ret nz

    rst $28
    rra
    ldh [$e0], a
    ld l, a
    sbc a
    ldh [$e0], a
    ld [hl], a
    rst $38
    ldh [$e0], a
    inc hl
    rst $38
    and b
    ldh [rSB], a
    rst $38
    jr nz, jr_0f1_4e60

    ld hl, $20ff
    ldh [rNR44], a
    cp $c0
    ld b, b
    db $dd
    cp $c0
    ld b, b
    inc bc
    db $fc
    and b
    ld h, b
    ld bc, $a0fe
    ld h, b
    db $fd
    adc $e0
    jr nz, @+$03

    cp $e0
    ldh [$03], a
    rst $38
    ldh a, [$f0]
    add e
    rst $38
    ld hl, sp-$18
    ld d, e
    rst $38
    ld hl, sp-$18
    inc hl
    rst $38
    ldh a, [rNR10]
    ld hl, $e0ff
    ldh [rNR42], a
    rst $38
    nop
    nop
    ld hl, $00ff
    nop
    ld hl, $00ff
    nop
    ld hl, $00ff
    nop
    ld hl, $00ff
    nop
    rst $38
    rst $38
    nop
    nop
    cp $fe
    nop
    nop
    ld [hl+], a
    cp $00
    nop
    inc h
    db $fc

jr_0f1_4ed2:
    nop
    nop
    inc h
    db $fc

jr_0f1_4ed6:
    nop
    nop
    jr z, jr_0f1_4ed2

    nop
    nop
    jr z, jr_0f1_4ed6

    nop
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    ldh [$e0], a
    nop
    nop
    add b
    add b
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    adc b
    ld hl, sp+$00
    nop
    ldh a, [$f0]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rrca
    rrca
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
    ld sp, $003f
    nop
    ld hl, $003f
    nop
    jr nz, jr_0f1_4fab

    nop
    nop
    jr nc, jr_0f1_4faf

    nop
    nop
    jr nc, jr_0f1_4fb3

    nop
    nop
    jr z, @+$41

    nop
    nop
    cpl
    jr c, jr_0f1_4f7d

jr_0f1_4f7d:
    nop
    daa
    jr c, jr_0f1_4f81

jr_0f1_4f81:
    nop
    ccf
    jr c, jr_0f1_4f85

jr_0f1_4f85:
    nop
    daa
    jr c, jr_0f1_4f89

jr_0f1_4f89:
    nop
    ld b, e
    ld a, h
    nop
    nop
    ld b, e
    ld a, h
    nop
    nop
    ld b, c
    ld a, [hl]
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
    ld b, c
    ld a, a
    nop
    nop
    add c
    rst $38
    ret nz

    ret nz

    add c
    rst $38
    rst $20
    rst $20
    add d

jr_0f1_4fab:
    cp $f8
    rst $38
    add d

jr_0f1_4faf:
    cp $f0
    rst $38
    add [hl]

jr_0f1_4fb3:
    cp $f0
    rst $38
    cp $fe
    ldh a, [rIE]
    cp $fe
    add sp, -$11
    ld a, h
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

jr_0f1_4fd8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f1_4fe8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $0e
    nop
    nop
    ld de, $801f
    add b
    jr nz, jr_0f1_5041

    ld b, b
    ret nz

    ld b, b
    ld a, a
    jr nz, jr_0f1_4fe8

    ld b, e
    ld a, l
    db $10
    ldh a, [$e3]
    rst $38
    db $10
    ldh a, [rIE]
    ld hl, sp+$10
    ldh a, [$fd]
    xor $60
    ldh [$d7], a
    ld hl, sp-$10
    ld [hl], b
    cp $f1
    ld hl, sp+$78
    rst $20
    ld hl, sp+$78
    ld hl, sp-$17
    rst $30
    ld hl, sp-$08
    rst $20
    ld sp, hl
    adc b
    ld hl, sp-$72
    rst $38
    ld [$84f8], sp
    rst $38
    ld [hl], b
    sub b
    add b
    rst $38
    ldh a, [$90]
    rst $30
    rst $38
    jr nc, @-$2e

jr_0f1_503c:
    rrca
    rst $38
    ldh a, [rNR10]

jr_0f1_5040:
    ld a, [c]

jr_0f1_5041:
    ld [hl], e
    ret nc

    jr nc, jr_0f1_5054

    cp $e0
    jr nz, jr_0f1_4fd8

    ld a, a
    and b
    ldh [$cf], a
    inc sp
    ret nz

    ret nz

    rst $08
    ld sp, $c0c0

jr_0f1_5054:
    rst $38
    rla
    ldh [$e0], a
    db $fc
    rra
    jr nz, jr_0f1_503c

    ld [hl], b
    rst $38
    jr nz, jr_0f1_5040

    ret nc

    rst $28
    ld b, b
    ret nz

    add sp, -$09
    ld b, b
    ret nz

    ld a, b
    ld a, a
    add b
    add b
    ld a, b
    ld b, a
    add b
    add b
    ccf
    daa
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
    ld h, d
    ld a, [hl]
    nop
    nop
    add c
    rst $38
    ld bc, $0001
    rst $38
    ld [bc], a
    inc bc
    inc sp
    call c, Call_000_0302
    ei
    db $f4
    inc bc
    inc bc
    ei
    push bc
    inc bc
    inc bc
    rst $30
    cp $03
    inc bc
    xor e
    rst $30
    ld bc, $bf01
    jp Jump_000_1f1f


    ld e, e
    and l
    add hl, sp
    ld a, $c7
    dec sp
    ld [hl], c
    ld a, [hl]
    rst $08
    inc sp
    ld h, b
    ld a, a
    ret nz

    ccf
    jr nz, @+$41

    cp [hl]
    rst $38
    ld de, $081f
    rst $38
    rrca
    rrca
    nop
    rst $38
    inc bc
    inc bc
    ld [$02ff], sp
    inc bc
    adc b
    rst $38
    ld bc, $f701
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $ff01
    db $e3
    ld bc, $0001
    rst $38
    ld bc, $0001
    rst $38
    ld [bc], a
    inc bc
    ld de, $02ff
    inc bc
    ld a, [bc]
    rst $38
    ld [bc], a
    inc bc
    inc b
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    ld bc, $0201
    rst $38
    ld bc, $0301
    rst $38
    ld bc, $0501
    db $fd
    ld bc, $0401
    db $fc
    ld bc, $0401
    db $fc
    ld bc, $8401
    db $fc
    ld [bc], a
    inc bc
    db $fc
    db $fc
    inc b
    rlca
    ld a, h
    db $fc
    ld [$090f], sp
    ld sp, hl
    db $10
    rra
    ld de, $20f1
    ccf
    ld [hl+], a
    db $e3
    jr nz, jr_0f1_5165

    ld b, d
    jp Jump_000_3f30


    add d
    add e
    add hl, sp
    ccf
    ld bc, $7e01
    ld a, [hl]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    db $fc
    db $fc
    ld bc, $fe01
    cp $01
    ld bc, $0000
    nop
    nop
    jr jr_0f1_515e

    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    cp h
    call c, RST_00
    db $f4
    inc c
    nop
    nop
    add sp, $18
    nop
    nop
    or b
    ld [hl], b
    nop
    nop
    ldh [$a0], a

jr_0f1_515e:
    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    ret nz

jr_0f1_5165:
    ret nz

    nop
    nop
    ld hl, sp-$08
    nop
    nop
    add $7e
    nop
    nop
    ei
    rst $00
    nop
    nop
    rst $18
    db $e3
    nop
    nop
    push af
    ei
    nop
    nop
    jp nz, Jump_000_00fe

    nop
    ld c, h
    db $fc

jr_0f1_5182:
    nop
    nop
    ld [hl], b
    ldh a, [rP1]
    nop
    ld h, b
    ldh [rP1], a
    nop
    and b
    ldh [rP1], a
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
    ret nz

    ret nz

    nop
    nop
    jr nz, jr_0f1_5182

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
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    jp nz, Jump_000_00fe

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
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
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
    nop
    nop
    nop
    nop
    ccf
    ccf
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
    sbc b
    rst $28
    nop
    nop
    ld hl, sp-$01
    ld bc, $fc01
    db $e3
    ld bc, $f501
    ei
    ld bc, $bf01
    pop hl
    nop
    nop
    ei
    and l
    rra
    rra
    xor l
    di
    ccf
    ccf
    pop hl
    rst $38
    ld a, a
    ld a, a
    cp $f1
    ld b, b
    ld a, a
    rst $38
    nop
    ld b, b
    ld a, a
    rst $28
    db $10
    ld b, b
    ld a, a
    rst $20
    jr jr_0f1_5274

    ccf
    nop
    rst $38
    ld de, $081f
    rst $38
    inc c
    rrca
    adc b
    rst $38
    inc bc
    inc bc
    rst $30
    rst $38
    ld [bc], a
    inc bc
    nop
    rst $38
    ld bc, $0001
    rst $38
    ld bc, $ff01
    db $e3
    ld bc, $0001
    rst $38
    ld bc, $0001
    rst $38
    ld [bc], a
    inc bc
    ld de, $02ff
    inc bc
    ld a, [bc]
    rst $38
    ld [bc], a
    inc bc
    inc b
    rst $38

jr_0f1_5274:
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    ld bc, $0201
    rst $38
    ld bc, $0301
    rst $38
    ld bc, $0501
    db $fd
    ld bc, $0401
    db $fc
    ld bc, $0401
    db $fc
    ld bc, $8401
    db $fc
    ld [bc], a
    inc bc
    db $fc
    db $fc
    inc b
    rlca
    ld a, h
    db $fc
    ld [$090f], sp
    ld sp, hl
    db $10
    rra
    ld de, $20f1
    ccf
    ld [hl+], a
    db $e3
    jr nz, jr_0f1_52e5

    ld b, d
    jp Jump_000_3f30


    add d
    add e
    add hl, sp
    ccf
    ld bc, $7e01
    ld a, [hl]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    db $fc
    db $fc
    ld bc, $fe01
    cp $01
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

jr_0f1_52dc:
    ld b, b
    ret nz

    nop
    nop
    add b
    add b
    nop
    nop
    add b

jr_0f1_52e5:
    add b
    nop
    nop
    cp a
    cp a
    ret nz

    ret nz

    ld [c], a
    db $dd
    ldh [$e0], a
    cp $c1
    ldh [$e0], a
    cp $c1
    ldh [rNR41], a
    ld a, b
    rst $38
    jr nz, jr_0f1_52dc

    ld e, [hl]
    jp hl


    and b
    ld h, b
    ld a, a
    cp $40
    ret nz

    ld b, c
    rst $38
    add b
    add b
    ld b, [hl]
    cp $00
    nop
    cp b
    ld hl, sp+$00
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
    ret nz

    ret nz

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
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    jp nz, Jump_000_00fe

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
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
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
    nop
    nop
    nop
    nop
    ccf
    ccf
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
    sbc b
    rst $28
    nop
    nop
    ld hl, sp-$01
    ld bc, $fc01
    db $e3
    ld bc, $f501
    ei
    ld bc, $bf01
    pop hl
    nop
    nop
    ei
    and l
    rra
    rra
    xor l
    di
    ccf
    ccf
    pop hl
    rst $38
    ld h, c
    ld a, a
    cp [hl]
    pop bc
    ld b, b
    ld a, a
    sbc h
    db $e3
    ld b, b
    ld a, a
    cp [hl]
    rst $38
    ld b, e
    ld a, h
    adc b
    ld a, a
    inc hl
    inc a
    pop bc
    ld a, $1f
    inc e
    ld l, d
    sbc l
    ld [bc], a
    inc bc
    ld e, l
    cp [hl]
    ld bc, $de01
    cp a
    ld bc, $1f01
    ei
    ld bc, $0b01
    cp $01
    ld bc, $e3ff
    ld bc, $0001
    rst $38
    ld bc, $0001
    rst $38
    ld [bc], a
    inc bc
    ld de, $02ff
    inc bc
    ld a, [bc]
    rst $38
    ld [bc], a
    inc bc
    inc b
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    ld bc, $0201
    rst $38
    ld bc, $0301
    rst $38
    ld bc, $0501
    db $fd
    ld bc, $0401
    db $fc
    ld bc, $0401
    db $fc
    ld bc, $8401
    db $fc
    ld [bc], a
    inc bc
    db $fc
    db $fc
    inc b
    rlca
    ld a, h
    db $fc
    ld [$090f], sp
    ld sp, hl
    db $10
    rra
    ld de, $20f1
    ccf
    ld [hl+], a
    db $e3
    jr nz, jr_0f1_5465

    ld b, d
    jp Jump_000_3f30


    add d
    add e
    add hl, sp
    ccf
    ld bc, $7e01
    ld a, [hl]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    db $fc
    db $fc
    ld bc, $fe01
    cp $01
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

jr_0f1_5465:
    add b
    nop
    nop
    add b
    add b
    nop
    nop
    db $fc
    db $fc
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
    pop hl
    rst $38
    nop
    nop
    ld e, c
    rst $20

jr_0f1_5482:
    nop
    nop
    cp d
    ld b, [hl]
    nop
    nop
    call c, Call_000_0024
    nop
    ld l, b
    sbc b
    nop
    nop
    cp b
    ld c, b
    nop
    nop
    ld e, h
    cp h
    nop
    nop
    db $fc
    call c, RST_00
    ld hl, sp-$08
    nop
    nop
    jr nz, jr_0f1_5482

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
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    jp nz, Jump_000_00fe

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
    ldh a, [$f0]
    nop
    nop
    ldh [$e0], a
    nop
    nop
    ldh a, [$f0]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld e, a
    ld a, a
    nop
    nop
    ld b, a
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
    ld a, [hl]
    ld b, e
    nop
    nop
    cp e
    rst $00
    nop
    nop
    rst $38
    add a
    ld bc, $7601
    adc a
    ld bc, $ea01
    db $db
    inc bc
    inc bc
    db $d3
    di
    inc bc
    inc bc
    db $e4
    rst $20
    rlca
    ld b, $e4
    daa
    rlca
    ld b, $e8
    cpl
    inc bc
    ld [bc], a
    ret z

    ld c, a
    ld bc, $9001
    sbc a
    nop
    nop
    jr nz, jr_0f1_55b7

    nop
    nop
    jr nz, jr_0f1_55bb

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
    ret nz

    rst $38

jr_0f1_5588:
    ld bc, $f101
    rst $38
    ld [bc], a
    inc bc
    ld a, $fe
    inc b
    rlca
    inc c
    db $fc
    ld [$080f], sp
    ld hl, sp+$08
    rrca
    ld [$08f8], sp
    rrca
    db $10
    ldh a, [$08]
    rrca
    db $10
    ldh a, [$0c]
    rrca
    jr nz, jr_0f1_5588

    rra
    rra
    ret nz

    ret nz

    rra
    rra
    nop
    nop
    ld a, $3e
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop

jr_0f1_55b7:
    nop

jr_0f1_55b8:
    cp $fe
    nop

jr_0f1_55bb:
    nop

jr_0f1_55bc:
    cp $fe
    nop
    nop

jr_0f1_55c0:
    nop
    nop
    nop
    nop

jr_0f1_55c4:
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
    add b
    add b
    jr nz, @+$41

    ld b, b
    ret nz

    ld b, b
    ld a, a
    jr nz, jr_0f1_55b8

    ld c, h
    ld [hl], a
    jr nz, jr_0f1_55bc

    ld a, h
    ld a, a
    jr nz, jr_0f1_55c0

    ld a, [hl]
    ld [hl], c
    jr nz, jr_0f1_55c4

    ld a, [$c0fd]
    ret nz

    rst $38
    ldh a, [$f0]
    ldh a, [$fd]
    ld a, [c]
    db $fc
    sbc h
    sub $f9
    cp $9e
    reti


    and $f7
    sbc a
    rst $08
    ldh a, [$f7]
    rst $38
    adc [hl]
    rst $38
    ld a, a
    ei
    inc b
    rst $38
    dec sp
    push bc
    nop
    rst $38
    ld a, l
    jp $ff00


    ld e, a
    pop hl
    ld [$5fff], sp
    pop hl
    ld hl, sp-$01
    db $ed
    di
    rrca
    rst $38
    sbc $de
    nop
    rst $38
    ld b, b
    ret nz

    rst $38
    adc a
    ret nz

    ret nz

    nop
    rst $38
    ld b, b
    ret nz

    nop
    rst $38
    ld b, b
    ret nz

    ld b, h
    rst $38
    ld b, b
    ret nz

    jr z, @+$01

    ld b, b
    ret nz

    db $10
    rst $38
    ld b, b
    ret nz

    jr nz, @+$01

    ld b, b
    ret nz

    jr nz, @+$01

    ld b, b
    ret nz

    ld h, b
    rst $38
    ld b, b
    ret nz

    and b
    cp a
    ld b, b
    ret nz

    sub b
    sbc a
    ld b, b
    ret nz

    rra
    rra
    ret nz

    ret nz

    rra
    rra
    ret nz

    ret nz

    db $10
    rra
    ld b, b
    ret nz

    db $10
    rra
    ld b, b
    ret nz

    db $10
    rra
    ld b, b
    ret nz

    db $10
    rra
    ld b, b
    ret nz

    db $10
    rra
    ld b, b
    ret nz

    ld [$800f], sp
    add b
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
    add b
    add b
    rrca
    rrca
    ret nz

    ret nz

    rrca
    rrca
    ldh [$e0], a
    rrca
    rrca
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
    rrca
    rrca
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
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld e, a
    ld a, a
    nop
    nop
    ld b, a
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
    ld a, [hl]
    ld b, e
    nop
    nop
    cp e
    rst $00
    nop
    nop
    rst $38
    add a
    ld bc, $7601
    adc a
    ld bc, $ea01
    db $db
    inc bc
    inc bc
    db $d3
    di
    inc bc
    inc bc
    db $e4
    rst $20
    rlca
    ld b, $e4
    daa
    rlca
    ld b, $e4
    daa
    inc bc
    ld [bc], a
    ret z

    ld c, a
    ld bc, $8801
    adc a
    nop
    nop
    db $10
    rra
    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, jr_0f1_5737

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
    pop af
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    sbc [hl]
    cp $01
    ld bc, $fe02
    ld bc, $0201
    cp $01
    ld bc, $fe02
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
    ld [$01f8], sp
    ld bc, $f808
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]

jr_0f1_5730:
    nop
    nop
    ldh a, [$f0]

jr_0f1_5734:
    ld bc, $f801

jr_0f1_5737:
    ld hl, sp+$07
    rlca
    ld hl, sp-$08

jr_0f1_573c:
    rrca
    rrca
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    rra
    rra
    add b
    add b
    jr nz, @+$41

    ld b, b
    ret nz

    ld b, b
    ld a, a
    jr nz, jr_0f1_5730

    ld c, h
    ld [hl], a
    jr nz, jr_0f1_5734

    ld a, h
    ld a, a
    jr nz, @-$1e

    ld a, [hl]
    ld [hl], c
    jr nz, jr_0f1_573c

    ld a, [$c0fd]
    ret nz

    rst $38
    ldh a, [$f0]
    ldh a, [$fd]
    ld a, [c]
    db $fc
    sbc h
    sub $f9
    cp $9e
    reti


    and $f7
    sbc a
    rst $08
    ldh a, [$f7]
    rst $38
    adc [hl]
    rst $38
    ld a, a
    ei
    inc b
    rst $38
    dec sp
    push bc
    nop
    rst $38
    ld a, l
    jp $ff00


    ld e, a
    pop hl
    ld [$5fff], sp
    pop hl
    ld hl, sp-$01
    db $ed
    di
    rrca
    rst $38
    sbc $de
    nop
    rst $38
    ld b, b
    ret nz

    rst $38
    adc a
    ret nz

    ret nz

    nop
    rst $38
    ld b, b
    ret nz

    nop
    rst $38
    ld b, b
    ret nz

    ld b, h
    rst $38
    ld b, b
    ret nz

    jr z, @+$01

    ld b, b
    ret nz

    db $10
    rst $38
    ld b, b
    ret nz

    jr nz, @+$01

    ld b, b
    ret nz

    jr nz, @+$01

    ld b, b
    ret nz

    ld h, b
    rst $38
    ld b, b
    ret nz

    ld h, b
    rst $38
    ld b, b
    ret nz

    and b
    cp a
    ld b, b
    ret nz

    rra
    rra
    ret nz

    ret nz

    rra
    rra
    ret nz

    ret nz

    db $10
    rra
    ld b, b
    ret nz

    db $10
    rra
    ld b, b
    ret nz

    db $10
    rra
    ld b, b
    ret nz

    db $10
    rra
    ld b, b
    ret nz

    db $10
    rra
    ld b, b
    ret nz

    db $10
    rra
    ld b, b
    ret nz

    db $10
    rra
    ld b, b
    ret nz

    ld [$800f], sp
    add b
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
    add b
    add b
    rrca
    rrca
    ret nz

    ret nz

    rrca
    rrca
    ldh [$e0], a
    rrca
    rrca
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
    rra
    rra
    nop
    nop
    jr nz, jr_0f1_584f

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld c, h
    ld [hl], a
    nop
    nop
    ld a, h
    ld a, a
    nop
    nop

jr_0f1_581e:
    cp $f1
    nop
    nop
    ld a, [$00fd]
    nop
    rst $18
    ldh a, [rP1]
    nop
    ld a, l
    ld d, d
    rrca
    rrca
    sub $f9
    rra
    rra
    ldh a, [rIE]
    ccf
    ccf
    rst $18
    ldh [rNR44], a
    ccf
    adc $f1
    ld hl, $df3f
    rst $38
    ld hl, $843f
    rst $38
    jr nz, jr_0f1_5885

    add b
    rst $38
    jr nz, jr_0f1_5889

    add a
    cp $17
    add hl, de
    ld a, [hl]

jr_0f1_584f:
    rst $38
    rla
    add hl, de
    rst $38
    rst $38
    rla
    add hl, de
    cp $f9
    ld sp, $b63e
    ld a, a
    scf
    jr c, jr_0f1_581e

    ld [hl], l
    ccf
    jr c, jr_0f1_589f

    rst $38
    rra
    rra
    add b
    rst $38
    ld bc, $0801
    rst $38
    ld bc, $0501
    rst $38
    ld bc, $0201
    rst $38
    ld bc, $0101
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

jr_0f1_5885:
    nop
    add d
    cp $00

jr_0f1_5889:
    nop
    add d
    cp $00
    nop
    jp nz, Jump_000_01fe

    ld bc, $fe7e
    ld [bc], a
    inc bc
    ld a, $fe
    inc b
    rlca
    inc b
    db $fc
    ld [$080f], sp

jr_0f1_589f:
    ld hl, sp+$10
    rra
    ld de, $10f1
    rra
    ld hl, $18e1
    rra
    ld b, c
    pop bc
    inc e
    rra
    add b
    add b
    ccf
    ccf

jr_0f1_58b2:
    nop
    nop
    ld a, b
    ld a, b

jr_0f1_58b6:
    nop
    nop
    ld a, [hl]
    ld a, [hl]

jr_0f1_58ba:
    nop
    nop
    ld a, a
    ld a, a

jr_0f1_58be:
    nop
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
    jr nz, jr_0f1_58b2

    nop
    nop
    jr nz, jr_0f1_58b6

    nop
    nop
    jr nz, jr_0f1_58ba

    nop
    nop
    jr nz, jr_0f1_58be

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
    cp $fe
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, [hl]
    rst $38

jr_0f1_58f6:
    ld hl, sp-$08
    ld a, h
    rst $38

jr_0f1_58fa:
    call c, Call_0f1_7f3c
    db $fc
    call c, $2c3c
    di
    jr c, @-$06

    ld a, l
    add d
    ldh [$60], a
    rst $30
    ld c, $e0
    ldh [$5f], a
    rst $38
    ret nz

    ret nz

    db $e3
    db $e3
    add b
    add b
    jr nz, jr_0f1_58f6

    nop
    nop
    jr nz, jr_0f1_58fa

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
    adc b
    ld hl, sp+$00
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
    ld a, a
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
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    cp $fe
    nop
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
    rra
    rra
    nop
    nop
    jr nz, jr_0f1_59cf

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld c, h
    ld [hl], a
    nop
    nop
    ld a, h
    ld a, a
    nop
    nop
    cp $f1
    nop
    nop
    ld a, [$00fd]
    nop
    rst $18
    ldh a, [rP1]
    nop
    ld a, l
    ld d, d
    rrca
    rrca
    sub $f9
    rra
    rra
    ldh a, [rIE]
    ccf
    ccf
    rst $18
    ldh [$3f], a
    ccf
    adc $f1
    cpl
    ccf
    rst $18
    rst $38
    inc hl
    ccf
    add h
    rst $38
    jr nz, jr_0f1_5a05

    add b
    rst $38
    jr c, @+$29

    add h
    rst $38
    ld a, a
    ld h, e
    ld b, h

jr_0f1_59cf:
    rst $38
    rst $38
    db $e3
    ld hl, sp-$01
    rst $38
    db $e3
    rst $38
    ld hl, sp-$01
    db $e3
    ld a, h
    or e
    ld a, a
    ld h, c
    ld a, a
    or c
    rra
    ld de, $fff0
    rrca
    rrca
    add b
    rst $38
    ld bc, $0801
    rst $38
    ld bc, $0501
    rst $38
    ld bc, $0201
    rst $38
    ld bc, $0101
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

jr_0f1_5a05:
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    jp nz, Jump_000_01fe

    ld bc, $fe7e
    ld [bc], a
    inc bc
    ld a, $fe
    inc b
    rlca
    inc b
    db $fc
    ld [$080f], sp
    ld hl, sp+$10
    rra
    ld de, $10f1
    rra
    ld hl, $18e1
    rra
    ld b, c
    pop bc
    inc e
    rra
    add b
    add b
    ccf
    ccf

jr_0f1_5a32:
    nop
    nop
    ld a, b
    ld a, b

jr_0f1_5a36:
    nop
    nop
    ld a, [hl]
    ld a, [hl]

jr_0f1_5a3a:
    nop
    nop
    ld a, a
    ld a, a

jr_0f1_5a3e:
    nop
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
    jr nz, jr_0f1_5a32

    nop
    nop
    jr nz, jr_0f1_5a36

    nop
    nop
    jr nz, jr_0f1_5a3a

    nop
    nop
    jr nz, jr_0f1_5a3e

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
    cp $fe
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, a
    rst $38
    add b
    add b
    ld a, a
    rst $38
    add b
    add b
    ld a, [hl]
    rst $38
    add b
    add b
    jr c, @+$01

    add b
    add b
    jr nz, @+$01

    add b
    add b
    daa
    ld hl, sp-$80
    add b
    ld e, a
    ld hl, sp-$40
    ret nz

    nop
    rst $38
    ldh [$e0], a
    rst $38
    nop
    ldh [$e0], a
    ld [bc], a
    rst $38
    ret nz

    ret nz

    db $fd
    rst $38
    nop
    nop
    ld e, $fe
    nop
    nop
    ld [$00f8], sp
    nop
    adc b
    ld hl, sp+$00
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
    ld a, a
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
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld a, b
    ld a, b
    nop
    nop
    cp $fe
    nop
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
    inc bc
    inc bc
    nop
    nop
    inc b
    rlca
    nop
    nop
    ld [$000f], sp
    nop
    add hl, bc
    ld c, $00
    nop
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    ld bc, $fd01
    rst $38
    inc bc
    inc bc
    rst $38
    db $fd
    rlca
    rlca
    db $fd
    ei
    inc c
    rrca
    rst $38
    db $fd
    ld [$7d0f], sp
    cp $08
    rrca
    ld a, h
    rst $38
    ld [$380f], sp
    rst $38
    inc a
    dec sp
    jr z, @+$01

    ld a, a
    ld a, b
    ld c, b
    rst $38
    ld [hl], a
    ld a, b
    ret z

    rst $38
    ld a, l
    ld [hl], e
    db $fc
    rst $38
    ccf
    ld sp, $ffc7
    ld d, $19
    ld hl, sp-$39
    ld a, [bc]
    dec c
    rst $38
    ldh [rTAC], a
    rlca
    cp a
    ret c

    ld bc, $fc01
    rst $18
    nop
    nop
    cp l
    or $00
    nop
    add h
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
    add b
    rst $38
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

jr_0f1_5b8c:
    nop
    nop
    ld h, c
    ld a, a
    nop
    nop
    cp a
    rst $38
    ld bc, $1f01
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    cp $04
    rlca
    inc b
    db $fc
    ld [$080f], sp
    ld hl, sp+$08
    rrca
    db $10
    ldh a, [$0c]
    rrca
    jr nz, jr_0f1_5b8c

    ld c, $0f
    ld b, b
    ret nz

    rra
    rra
    add b
    add b
    inc a
    inc a
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
    nop
    nop
    nop
    nop

jr_0f1_5bca:
    nop
    nop
    ldh [$e0], a
    nop
    nop
    jr jr_0f1_5bca

    nop
    nop
    inc b
    db $fc
    nop
    nop
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    ld [c], a
    ld e, $00
    nop
    xor h
    call c, RST_00

jr_0f1_5be8:
    db $fc
    inc c
    nop
    nop

jr_0f1_5bec:
    rst $18
    cpl
    nop
    nop
    ld l, a
    sbc a
    ret nz

    ret nz

    sbc a
    ld a, a
    ldh [$e0], a
    rst $18
    ccf
    ldh a, [$f0]
    ld a, a
    rst $38
    ldh a, [$f0]
    cpl
    rst $38
    and b
    ldh [rSC], a
    rst $38
    jr nz, jr_0f1_5be8

    ld [hl+], a
    rst $38
    jr nz, jr_0f1_5bec

    ld h, h
    rst $38
    ld b, b
    ret nz

    ei
    db $fc
    ld b, b
    ret nz

    rrca
    ld hl, sp-$80
    add b
    ld e, $f1
    add b
    add b
    push bc
    dec sp
    nop
    nop
    add hl, sp
    rst $00
    nop
    nop
    ld e, h
    and e
    add b
    add b
    ld l, a
    di
    add b
    add b
    add e
    rst $38
    nop
    nop
    ld bc, $00ff
    nop
    add c
    rst $38
    nop
    nop
    add b
    rst $38
    add b
    add b
    ret nz

    rst $38
    add b
    add b
    ld b, b
    ld a, a
    add b
    add b
    jr nz, jr_0f1_5c85

    add b
    add b
    jr nz, jr_0f1_5c89

    add b
    add b
    jr nc, jr_0f1_5c8d

    add b
    add b
    ccf
    ccf
    add b
    add b
    ccf
    ccf
    add b
    add b
    ld b, b
    ld a, a
    add b
    add b
    ld b, b
    ld a, a
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
    add d
    cp $00
    nop
    ld a, h
    ld a, h
    nop
    nop
    jr c, jr_0f1_5caa

    nop
    nop
    inc a
    inc a
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    add b
    add b
    nop
    nop
    nop
    nop
    nop

jr_0f1_5c85:
    nop
    nop
    nop
    nop

jr_0f1_5c89:
    nop
    nop
    nop
    nop

jr_0f1_5c8d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f1_5caa:
    nop
    nop
    nop
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
    rra
    rra
    nop
    nop
    ccf
    inc a
    nop
    nop
    ld a, $3f
    nop
    nop
    scf
    inc a
    nop
    nop
    rra
    inc d
    nop
    nop
    push af
    cp $01
    ld bc, $fffc
    inc bc
    inc bc
    rst $38
    cp $06
    rlca
    ld a, $ff
    inc b
    rlca
    ld a, $ff
    inc b
    rlca
    inc e
    rst $38
    inc b
    rlca
    ld [$03ff], sp
    ld [bc], a
    ret z

    ccf
    inc bc
    ld [bc], a
    db $ec
    ccf
    inc bc
    ld [bc], a
    rst $30
    ccf
    ld [bc], a
    inc bc
    ldh a, [$3f]
    ld [bc], a
    inc bc
    ret nc

    ccf
    ld bc, $ff01
    rra
    ld bc, $e001
    rra
    ld bc, $e001
    rra
    ld bc, $e001
    rst $38
    ld bc, $f001
    ld a, a
    ld bc, $f001
    ld a, a
    ld bc, $f001
    rst $28
    inc bc
    inc bc
    ldh [$9f], a
    inc bc
    inc bc
    jr nz, @+$01

    inc bc
    inc bc
    ld hl, $07ff
    rlca
    ld hl, $07ff
    rlca
    ld hl, $07ff
    rlca
    cp a
    rst $38
    rlca
    rlca
    sbc a
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
    ldh [$e0], a
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
    adc b
    ld a, b
    nop
    nop
    or b
    ld [hl], b
    nop
    nop
    ldh a, [$30]
    nop
    nop
    ld [hl], b
    or b
    nop
    nop
    cp a
    ld a, a
    nop
    nop
    ccf
    rst $38
    add b
    add b
    rst $18
    ccf
    ret nz

    ret nz

    rst $18
    ccf
    ret nz

    ret nz

    rst $28
    rst $38
    ret nz

    ret nz

    ld b, a
    rst $38
    ld b, b
    ret nz

    ld [bc], a
    rst $38
    ld b, b
    ret nz

    ld b, d
    rst $38
    ld b, b
    ret nz

    ld b, a
    db $fc
    ret nz

    ld b, b
    cp e
    db $fc
    ret nz

    ld b, b
    rlca
    db $fc
    ret nz

    ld b, b
    rlca
    db $fc
    ret nz

    ld b, b
    rst $38
    sbc h
    ret nz

    ld b, b
    rlca
    db $fc
    ret nz

    ld b, b
    rlca
    db $fc
    ret nz

    ld b, b
    rlca
    rst $38
    ret nz

    ret nz

    add a
    rst $38
    ret nz

    ret nz

    rst $20
    rst $38
    ret nz

    ret nz

    add l
    ei
    ret nz

    ret nz

    add e
    db $fc
    ld b, b
    ret nz

    add a
    rst $38
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
    inc c
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
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    inc c
    rrca
    nop
    nop
    rrca
    rrca
    ld bc, $ff01
    db $fd
    inc bc
    inc bc
    cp $ff
    rlca
    rlca
    cp $ff
    rlca
    rlca
    rst $38
    cp $05
    rlca
    ld hl, sp-$01
    inc b
    rlca
    ld [hl], b
    rst $38
    inc b
    rlca
    db $10
    rst $38
    dec b
    ld b, $a0
    ld a, a
    dec b
    ld b, $b1
    ld a, a
    ld a, [bc]
    dec c
    ld a, [hl]
    ei
    dec bc
    inc c
    call c, Call_000_046b
    rlca
    ld a, h
    di
    inc bc
    inc bc
    rst $38
    rst $38
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
    ld hl, $003f
    nop
    jr nz, jr_0f1_5eaf

    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, jr_0f1_5eb7

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
    db $10
    rra
    nop
    nop
    db $10
    rra
    nop
    nop
    jr jr_0f1_5eaf

    nop
    nop
    cpl
    ccf
    nop
    nop
    ld b, a
    ld a, a
    nop
    nop
    add b
    rst $38
    ld bc, $0101
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    cp $02
    inc bc
    inc b
    db $fc
    ld bc, $0801
    ld hl, sp+$03
    inc bc
    sub b

jr_0f1_5eaf:
    ldh a, [rTAC]
    rlca
    ldh [$e0], a
    rrca
    rrca
    nop

jr_0f1_5eb7:
    nop
    rra
    rra
    ret nz

    ret nz

    rra
    rra
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f1_5ec6:
    nop
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
    jr nc, jr_0f1_5ec6

    nop
    nop
    ld [$00f8], sp
    nop
    inc b
    db $fc
    nop
    nop
    ld h, h
    cp h
    nop
    nop
    ld h, h
    db $fc
    nop
    nop
    db $e4
    inc e
    nop
    nop
    xor a
    rst $18
    ret nz

    ret nz

    rst $38
    rrca
    ldh [$e0], a
    rst $18
    cpl
    ldh a, [$f0]
    rrca
    rst $38
    ldh a, [$f0]
    rst $28
    rst $38
    ret nc

    ldh a, [rBGP]
    rst $38
    db $10
    ldh a, [rSC]
    rst $38
    db $10
    ldh a, [$86]
    ei
    ld [hl], b
    sub b
    ld b, a
    ld sp, hl
    ldh a, [rNR10]
    ccf
    ld sp, hl
    add sp, -$68
    rlca
    db $fd
    add sp, -$68
    rlca
    rst $38
    add sp, $18

jr_0f1_5f1c:
    db $fd
    sbc l
    db $10
    ldh a, [rSC]
    cp $e0
    ldh [rSB], a
    rst $38
    nop
    nop

jr_0f1_5f28:
    ld de, $00ff
    nop

jr_0f1_5f2c:
    and b
    rst $38
    add b
    add b

jr_0f1_5f30:
    ld b, b
    rst $38
    ld b, b
    ret nz

    jr nz, @+$01

    ld b, b
    ret nz

    jr nz, @+$01

    jr nz, jr_0f1_5f1c

jr_0f1_5f3c:
    jr nc, @+$01

    jr nz, @-$1e

jr_0f1_5f40:
    ld d, b
    rst $18
    jr nz, @-$1e

    ld c, b
    rst $08
    jr nz, jr_0f1_5f28

    ld c, b
    rst $08
    jr nz, jr_0f1_5f2c

    ld c, h
    rst $08
    jr nz, jr_0f1_5f30

    rst $08
    rst $08
    ldh [$e0], a
    rst $08
    rst $08
    ldh [$e0], a
    sub b
    sbc a
    jr nz, jr_0f1_5f3c

    db $10
    rra
    jr nz, jr_0f1_5f40

    jr nz, jr_0f1_5fa1

    ld b, b
    ret nz

    jr nz, jr_0f1_5fa5

    ld b, b
    ret nz

    jr nz, jr_0f1_5fa9

    add b
    add b
    rra
    rra
    nop
    nop
    ld c, $0e
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

    rra
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
    rrca
    rrca
    nop
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0f1_5fd3

    nop
    nop
    ld h, $3b
    nop
    nop
    ld a, $3f
    nop
    nop
    ld a, a
    ld a, b
    nop

jr_0f1_5fa1:
    nop
    ld a, l
    ld a, [hl]
    nop

jr_0f1_5fa5:
    nop
    ld l, a
    ld a, b
    nop

jr_0f1_5fa9:
    nop
    ld a, $29
    inc bc
    inc bc
    db $eb
    db $fc
    rlca
    rlca
    ld hl, sp-$01
    rrca
    rrca
    rst $38
    ldh [$09], a
    rrca
    rst $30
    ret z

    db $10
    rra
    rst $38
    rst $08
    db $10
    rra
    or d
    rst $08
    db $10
    rra
    or b
    rst $08
    ld e, $11
    ld a, [c]
    rst $08
    inc e
    inc de
    dec [hl]
    rst $08
    dec de
    dec d
    db $fc

jr_0f1_5fd3:
    rst $38
    rra
    ld de, $a77c
    rrca
    add hl, bc
    ld a, h
    and a
    rlca
    rlca
    rst $38
    xor $00
    nop
    ret nz

    rst $38
    nop
    nop
    add b
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
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    cp $fe
    ld bc, $fe01
    cp $02
    inc bc
    ld [bc], a
    cp $04
    rlca
    inc b
    db $fc
    ld [$080f], sp
    ld hl, sp+$10
    rra
    db $10
    ldh a, [rNR41]
    ccf
    jr nz, @-$1e

    ld b, b
    ld a, a
    ld b, b
    ret nz

    jr c, @+$41

    add b
    add b
    rra
    rra

jr_0f1_602e:
    nop
    nop
    jr c, jr_0f1_606a

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
    ret nz

    ret nz

    nop
    nop
    jr nz, jr_0f1_602e

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
    ld a, h
    db $fc
    nop
    nop
    cp $66
    nop
    nop
    cp $66

jr_0f1_606a:
    nop
    nop
    ld a, [hl]
    and $00
    nop
    ld a, [hl]
    cp $00
    nop
    cp a
    ld a, a
    nop
    nop
    ld e, $f1
    add b
    add b
    sbc a
    ldh a, [rLCDC]
    ret nz

    rla
    ld hl, sp-$60
    ld h, b
    rrca
    ld hl, sp-$60
    ld h, b
    dec bc
    db $fc
    and b
    ld h, b
    dec e
    cp $40
    ret nz

    di
    di
    add b
    add b
    db $10
    ldh a, [rP1]
    nop
    db $10
    ldh a, [rP1]
    nop
    ldh a, [rSVBK]
    nop
    nop

Call_0f1_60a0:
jr_0f1_60a0:
    db $10
    ldh a, [rP1]
    nop

jr_0f1_60a4:
    ld [$00f8], sp
    nop
    ld b, h
    db $fc
    nop
    nop
    add d
    cp $00
    nop

jr_0f1_60b0:
    ld bc, $00ff
    nop

jr_0f1_60b4:
    nop
    rst $38
    add b
    add b
    ret nz

    rst $38
    ld b, b
    ret nz

    jr nz, @+$41

    jr nz, jr_0f1_60a0

    db $10
    rra
    jr nz, jr_0f1_60a4

    rrca
    rrca
    ldh [$e0], a
    rla
    rra
    ldh [$e0], a
    db $10
    rra
    jr nz, jr_0f1_60b0

    db $10
    rra
    jr nz, jr_0f1_60b4

    jr nz, jr_0f1_6115

    ld b, b
    ret nz

    jr nz, jr_0f1_6119

    ld b, b
    ret nz

    jr nz, jr_0f1_611d

    add b
    add b

Jump_0f1_60e0:
    ld b, b
    ld a, a
    add b
    add b
    dec a
    ccf
    nop
    nop
    ld a, $3e
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
    rra
    rra
    nop

jr_0f1_6115:
    nop
    ccf
    inc a
    nop

jr_0f1_6119:
    nop
    ld a, $3f
    nop

jr_0f1_611d:
    nop
    scf
    inc a
    nop
    nop
    rra
    inc d
    ld bc, $f501
    cp $03
    inc bc
    db $fc
    rst $38
    rlca
    rlca
    rst $38
    ldh a, [rDIV]
    rlca
    ei
    db $e4
    ld [$7f0f], sp
    rst $20
    ld [$590f], sp
    rst $20
    ld [$580f], sp
    rst $20
    rrca
    ld [$e779], sp
    ld c, $09
    ld a, [de]
    rst $20
    dec c
    ld a, [bc]
    cp $ff
    rrca
    ld [$d3be], sp
    rlca
    inc b
    cp [hl]
    db $d3
    inc bc
    inc bc
    rst $38
    rst $30
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
    add h
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
    ld bc, $0101
    rst $38
    ld bc, $0101
    rst $38
    ld bc, $0301
    rst $38
    ld bc, $0301
    rst $38
    ld bc, $8301
    rst $38
    ld bc, $fe01
    cp $01
    ld bc, $fd7d
    ld bc, $0501
    db $fd
    ld [bc], a
    inc bc
    dec b

jr_0f1_6193:
    db $fd
    ld [bc], a
    inc bc
    dec b
    db $fd
    ld [bc], a
    inc bc
    dec b
    db $fd
    ld [bc], a
    inc bc
    dec b
    db $fd
    ld bc, $0801
    ld hl, sp+$00
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
    ldh [$e0], a
    ld bc, $f001
    ldh a, [$03]
    inc bc
    ldh a, [$f0]
    inc bc
    inc bc
    ldh a, [$f0]
    ldh [$e0], a
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
    adc b
    ld a, b
    nop
    nop
    cp [hl]
    ld a, [hl]
    nop
    nop
    rst $38
    inc sp
    nop
    nop
    ld a, a
    or e
    nop
    nop
    cp a
    ld [hl], e
    nop
    nop
    ccf
    rst $38
    nop
    nop
    rst $18
    ccf
    add b
    add b
    adc a
    ld a, b
    ld b, b
    ret nz

    rst $08
    ld hl, sp-$60
    ld h, b
    dec bc
    db $fc
    ret nc

    jr nc, @+$09

    db $fc
    ret nc

    jr nc, jr_0f1_6206

    cp $d0
    jr nc, jr_0f1_6193

    rst $38

jr_0f1_6206:
    and b
    ld h, b
    ld a, c
    ld sp, hl
    ret nz

    ret nz

    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld hl, sp+$38
    nop
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld c, b
    ld hl, sp+$00
    nop
    add h
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
    cp $fe
    nop
    nop
    cp $fe
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
    add h
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
    jr c, jr_0f1_62a6

    nop
    nop
    jr c, jr_0f1_62aa

    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    inc bc
    inc bc
    inc b
    db $fc
    inc b
    rlca
    ld [bc], a
    cp $04
    rlca
    ld h, c
    cp a
    inc b
    rlca
    ld [hl], c
    rst $28
    inc b
    rlca
    ld [hl], a
    adc a
    rlca
    rlca
    db $fd
    ld [c], a
    rlca
    rlca
    cp a
    ret nz

    rrca
    rrca

jr_0f1_62a6:
    rst $38
    add b
    ld e, $1f

jr_0f1_62aa:
    dec a
    jp Jump_000_1f1c


    rlca
    rst $38
    inc e
    rra
    dec a
    rst $38
    dec e
    rra
    call nz, Call_000_0dff
    rrca
    inc b
    rst $38
    dec c
    rrca
    adc h
    rst $38
    ld b, $07
    ld [hl], d
    rst $38
    ld [bc], a
    inc bc
    ld bc, $02ff
    inc bc
    nop
    rst $38
    ld [bc], a
    inc bc
    nop
    rst $38
    inc bc
    inc bc
    rst $38
    di
    ld [bc], a
    inc bc
    nop
    rst $38
    ld [bc], a
    inc bc
    nop
    rst $38
    inc b
    rlca
    nop
    rst $38
    inc b
    rlca
    ld [hl+], a
    rst $38
    inc b
    rlca
    inc d
    rst $38
    inc b
    rlca
    ld [$04ff], sp
    rlca
    ld [$08ff], sp
    rrca
    ld [$08ff], sp
    rrca
    ld [$08ff], sp
    rrca
    jr @+$01

    ld [$180f], sp
    rst $38
    inc c
    rrca
    rra

jr_0f1_6303:
    rst $38
    rrca
    rrca
    rst $30

jr_0f1_6307:
    rst $30
    dec bc
    rrca
    add sp, -$11
    ld [$280f], sp

jr_0f1_630f:
    rst $28
    db $10
    rra
    jr z, jr_0f1_6303

    db $10
    rra
    jr z, jr_0f1_6307

    db $10
    rra
    jr z, @-$0f

    db $10
    rra
    jr z, jr_0f1_630f

    ld [$440f], sp
    rst $00
    rlca
    rlca
    add e
    add e
    rlca
    rlca
    inc bc
    inc bc
    rlca
    rlca
    ld bc, $0701
    rlca
    ld bc, $0f01
    rrca
    add e
    add e
    rra
    rra
    add e
    add e
    rra
    rra
    add e
    add e
    nop
    nop
    xor b
    ret c

    ld bc, $5001
    or b
    ld [bc], a
    inc bc
    and b
    ld h, b
    dec b
    ld b, $40
    ret nz

    ld a, [de]
    dec e
    add b
    add b
    ld a, l
    ld a, a
    nop
    nop
    push af
    cp $80
    add b
    or a
    ld a, d
    add b
    add b
    sbc $3f
    add b
    add b
    ld a, a
    rst $38
    nop
    nop
    ret nz

    ret nz

jr_0f1_636a:
    nop
    nop
    ret nz

    ret nz

jr_0f1_636e:
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    jr nc, jr_0f1_636a

    nop
    nop
    jr nc, jr_0f1_636e

    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    ret nz

    ret nz

jr_0f1_6386:
    nop
    nop
    ld b, b
    ret nz

jr_0f1_638a:
    nop
    nop
    ld b, b
    ret nz

jr_0f1_638e:
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
    jr nz, jr_0f1_6386

    nop
    nop
    jr nz, jr_0f1_638a

    nop
    nop
    jr nz, jr_0f1_638e

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

jr_0f1_63c2:
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
    jr nz, jr_0f1_63c2

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rrca
    rrca
    nop
    nop
    jr jr_0f1_646b

    nop
    nop
    db $10
    rra
    nop
    nop
    jr nz, jr_0f1_6493

    nop
    nop
    jr z, jr_0f1_6497

    nop
    nop
    inc h
    ccf
    nop
    nop
    ld d, d
    ld a, a
    nop
    nop
    ld c, a
    ld a, a
    nop
    nop
    ld h, b
    ld a, a
    nop
    nop
    sub b

jr_0f1_646b:
    rst $38
    ld bc, $0c01
    rst $38
    ld bc, $0301
    rst $38
    ld [bc], a
    inc bc
    ld de, $02ff
    inc bc
    ld a, [bc]
    rst $38
    ld [bc], a
    inc bc
    inc b
    rst $38
    ld [bc], a
    inc bc
    inc b
    rst $38

jr_0f1_6484:
    ld bc, $0701
    rst $38
    ld bc, $fe01
    cp $01
    ld bc, $fefe
    inc bc
    inc bc
    inc b

jr_0f1_6493:
    db $fc
    inc b
    rlca
    inc b

jr_0f1_6497:
    db $fc
    ld [$080f], sp
    ld hl, sp+$10
    rra
    db $10
    ldh a, [rNR10]
    rra
    jr nz, jr_0f1_6484

    ld [$400f], sp
    ret nz

    rrca
    rrca
    add b
    add b
    ld c, $0e
    nop
    nop
    ld c, $0e
    nop
    nop
    rra
    rra
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
    nop
    nop

jr_0f1_64d4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $0e
    nop
    nop
    ld de, $801f
    add b
    jr nz, jr_0f1_652d

    ld b, b
    ret nz

    ld b, b
    ld a, a
    jr nz, jr_0f1_64d4

    ld b, e
    ld a, l
    inc e
    db $fc
    db $e3
    rst $38
    ld c, $fe
    rst $38
    ld hl, sp+$2e
    ld a, [$eefd]
    ld a, [hl]
    ld [$f8f7], a
    xor $7e
    ld a, [hl]
    pop af
    ld [c], a
    ld a, [hl]
    ccf
    ld hl, sp+$4c
    db $fc
    jr c, @+$01

    ldh a, [$f0]
    rra
    ld hl, sp-$40
    ret nz

    ld b, c
    cp a
    add b
    add b
    db $e3
    rra
    nop
    nop

jr_0f1_6520:
    ld a, [hl]
    sbc [hl]
    nop
    nop
    cp h
    call z, RST_00
    ld e, [hl]
    and $00
    nop
    cpl

jr_0f1_652d:
    rst $30
    nop
    nop
    rst $38
    cp $80
    add b
    rra
    ei
    add b
    add b
    dec bc
    cp $40
    ret nz

    ld b, $ff
    and b
    ld h, b
    nop
    rst $38
    ld d, b
    or b
    nop
    rst $38
    jr z, jr_0f1_6520

    rst $08
    rst $38
    call nc, $3fec
    ccf
    ld [$20f6], a
    ccf
    sub [hl]
    sbc d
    ld b, b
    ld a, a
    adc h
    adc h
    ld b, b
    ld a, a
    add b
    add b
    ld b, b
    ld a, a
    add b
    add b
    ld b, b
    ld a, a
    add b
    add b
    ld hl, $003f
    nop
    ld e, $1e
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
    nop
    nop
    rra
    rra
    nop
    nop
    jr nz, jr_0f1_65c7

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld c, h
    ld [hl], a
    nop
    nop
    ld a, h
    ld a, a
    nop
    nop
    cp $f1
    nop
    nop
    ld a, [$00fd]
    nop
    rst $18
    ldh a, [rP1]
    nop
    ld a, l
    ld d, d
    nop
    nop
    sub $f9
    ld bc, $f801
    rst $20
    inc bc
    inc bc
    sbc a
    ldh [$03], a
    inc bc
    sbc l
    ld [c], a
    inc bc
    inc bc
    sbc h
    db $e3
    ld bc, $d001
    rst $28
    ld bc, $9101
    rst $38
    nop
    nop
    adc $ff
    nop
    nop
    ld b, b

jr_0f1_65c7:
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    jr nz, jr_0f1_660f

    nop
    nop
    ccf
    ld a, $00
    nop
    jr nz, jr_0f1_6617

    nop
    nop
    jr nz, jr_0f1_661b

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, h
    ld a, a
    nop
    nop
    ld b, d
    ld a, a
    nop
    nop
    ld b, c
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
    add e
    rst $38
    ld bc, $0301
    rst $38
    ld bc, $8301
    rst $38
    ld bc, $fe01
    cp $01
    ld bc, $fd7d
    ld bc, $0501

jr_0f1_660f:
    db $fd
    ld [bc], a
    inc bc
    dec b
    db $fd
    ld [bc], a
    inc bc
    dec b

jr_0f1_6617:
    db $fd
    ld [bc], a
    inc bc
    dec b

jr_0f1_661b:
    db $fd
    ld [bc], a
    inc bc
    dec b
    db $fd
    ld bc, $0801
    ld hl, sp+$00
    nop
    ldh a, [$f0]
    nop
    nop

jr_0f1_662a:
    ldh [$e0], a
    nop
    nop

jr_0f1_662e:
    ldh [$e0], a
    nop
    nop

jr_0f1_6632:
    ldh [$e0], a
    ld bc, $f001
    ldh a, [$03]
    inc bc
    ldh a, [$f0]
    inc bc
    inc bc
    ldh a, [$f0]
    add b
    add b
    nop
    nop
    ld b, b
    ret nz

    nop
    nop
    jr nz, jr_0f1_662a

    nop
    nop
    jr nz, jr_0f1_662e

    nop
    nop
    jr nz, jr_0f1_6632

    nop
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
    ldh a, [$f0]
    nop
    nop
    ld a, a
    rst $38
    ld hl, sp-$08
    rst $28
    rra
    db $fc
    inc b
    db $eb
    dec e
    ld hl, sp+$18
    rrca
    rst $38
    ldh [$e0], a
    add a
    rst $38
    nop
    nop
    add [hl]
    cp $00
    nop
    ld c, h
    db $fc
    nop
    nop
    jr c, @-$06

    nop
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld hl, sp+$78
    nop
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld [$00f8], sp
    nop
    ld c, b
    ld hl, sp+$00
    nop
    add h
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
    cp $fe
    nop
    nop
    cp $fe
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
    add h
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
    jr c, jr_0f1_6726

    nop
    nop
    jr c, jr_0f1_672a

    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld a, a
    ld a, a
    add b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0f1_6726:
    rst $38
    rst $38
    rst $38
    rst $38

jr_0f1_672a:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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

jr_0f1_688f:
    nop
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    inc b
    rlca
    nop
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
    jr jr_0f1_68c7

    nop
    nop
    rra
    ld e, $03
    inc bc
    rst $38
    ei
    rlca
    rlca
    db $fd
    cp $0f
    rrca
    db $fd
    xor $0f
    rrca
    cp $cd
    dec bc
    rrca
    pop af
    rst $08
    ld [$f80f], sp
    rst $08
    ld [$300f], sp

jr_0f1_68c7:
    rst $08
    dec bc
    inc c
    ld sp, $0bcf
    inc c
    ld a, [c]
    rst $08
    inc d
    dec de
    db $fc
    rst $30
    rla
    jr jr_0f1_688f

    rst $10
    ld [$e00f], sp
    rst $38
    rlca
    rlca
    rst $38
    rst $38
    nop
    nop
    jr nz, jr_0f1_6923

    nop
    nop
    jr nz, @+$41

    nop
    nop
    ld b, d
    ld a, a
    nop
    nop
    ld b, c
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
    jr nz, jr_0f1_693b

    nop
    nop
    jr nz, jr_0f1_693f

    nop
    nop
    jr nz, jr_0f1_6943

    nop
    nop
    jr nz, jr_0f1_6947

    nop
    nop
    jr nz, jr_0f1_694b

    nop
    nop
    jr nc, jr_0f1_694f

jr_0f1_6910:
    nop
    nop
    ld e, a
    ld a, a
    nop
    nop
    adc a
    rst $38
    ld bc, $0101
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    cp $04
    rlca
    inc b

jr_0f1_6923:
    db $fc
    inc b
    rlca
    ld [$02f8], sp
    inc bc
    db $10
    ldh a, [rTAC]
    rlca
    jr nz, jr_0f1_6910

    rrca
    rrca
    ret nz

    ret nz

    ld e, $1e
    nop
    nop
    ccf
    ccf
    add b

jr_0f1_693b:
    add b
    ccf
    ccf
    ret nz

jr_0f1_693f:
    ret nz

    nop
    nop
    nop

jr_0f1_6943:
    nop
    nop
    nop
    nop

jr_0f1_6947:
    nop
    nop
    nop
    nop

jr_0f1_694b:
    nop
    nop
    nop
    nop

jr_0f1_694f:
    nop
    add b
    add b
    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    db $10
    ldh a, [rP1]
    nop
    ld [$00f8], sp
    nop
    ret z

    ld a, b
    nop
    nop

jr_0f1_6964:
    ret z

    ld hl, sp+$00
    nop

jr_0f1_6968:
    ret z

    jr c, jr_0f1_696b

jr_0f1_696b:
    nop
    ld e, a
    cp a
    add b
    add b
    rst $38
    rra
    ret nz

    ret nz

    cp a
    ld e, a
    ldh [$e0], a
    rra
    rst $38
    ldh [$e0], a
    rst $18
    rst $38
    and b
    ldh [$8e], a
    rst $38
    jr nz, jr_0f1_6964

    inc b
    rst $38
    jr nz, jr_0f1_6968

    inc c
    rst $30
    ldh [rNR41], a
    adc a
    ld a, [c]
    ldh [rNR41], a
    ld a, a
    di
    ret nc

    jr nc, jr_0f1_69a4

    ei
    ret nc

jr_0f1_6997:
    jr nc, jr_0f1_69a8

    cp $d0
    jr nc, jr_0f1_6997

    dec sp
    jr nz, @-$1e

    dec b
    db $fd
    ret nz

    ret nz

jr_0f1_69a4:
    ld [bc], a
    cp $00
    nop

jr_0f1_69a8:
    ld [hl+], a
    cp $00
    nop
    ld b, c
    rst $38
    nop
    nop
    add b
    rst $38
    add b
    add b
    ld b, b
    rst $38
    add b
    add b
    ld b, b
    rst $38
    ld b, b
    ret nz

    ld h, b
    rst $38
    ld b, b
    ret nz

    and b
    cp a
    ld b, b
    ret nz

    sub b
    sbc a
    ld b, b
    ret nz

    sub b
    sbc a
    ld b, b
    ret nz

    sbc b
    sbc a
    ld b, b
    ret nz

    sbc a
    sbc a
    ret nz

    ret nz

    sbc a
    sbc a
    ret nz

    ret nz

    jr nz, jr_0f1_6a19

    ld b, b
    ret nz

    jr nz, jr_0f1_6a1d

    ld b, b
    ret nz

    ld b, b
    ld a, a
    add b
    add b
    ld b, b
    ld a, a
    add b
    add b
    ld b, c
    ld a, a
    nop
    nop
    ld a, $3e
    nop
    nop
    inc e
    inc e
    nop
    nop
    ld e, $1e
    nop
    nop
    ccf
    ccf
    add b
    add b
    ccf
    ccf
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
    jr c, jr_0f1_6a44

    nop
    nop
    ld l, h
    ld d, h
    nop
    nop
    ld e, a
    ld a, a
    nop
    nop
    ld a, b
    ld a, a
    nop

jr_0f1_6a19:
    nop
    sbc b
    rst $28
    nop

jr_0f1_6a1d:
    nop
    cp [hl]
    rst $38
    nop
    nop
    cp a
    db $fd
    nop
    nop
    ld b, a
    ld a, b
    nop
    nop
    ld e, l
    ld h, d
    nop
    nop
    db $db
    db $e4
    inc bc
    inc bc
    ret c

    rst $20
    rlca
    rlca
    ld a, e
    add h
    inc c
    rrca
    pop af
    ld c, $09
    ld c, $e0
    rra
    ld [$c80f], sp
    ccf

jr_0f1_6a44:
    inc b
    rlca
    ld [$02ff], sp
    inc bc
    db $10
    rst $38
    ld bc, $ff01
    rst $38
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, @+$41

    nop
    nop
    ccf
    ccf
    nop
    nop
    jr nz, jr_0f1_6aa3

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, c
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
    jr nz, jr_0f1_6ab7

    nop
    nop
    jr nz, jr_0f1_6abb

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
    rrca
    rrca
    nop
    nop
    ld de, $001f
    nop
    jr nz, jr_0f1_6ad7

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

jr_0f1_6aa3:
    ld a, a
    nop
    nop
    ld hl, $003f
    nop
    ld e, $1e
    nop
    nop
    ld e, $1e
    nop
    nop
    ld c, $0e
    nop
    nop
    rrca

jr_0f1_6ab7:
    rrca
    nop
    nop
    rra

jr_0f1_6abb:
    rra
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

jr_0f1_6ac8:
    nop
    nop
    add b
    add b
    ld bc, $c001
    ld b, b
    inc bc
    inc bc
    ld h, b
    and b
    add [hl]
    add l
    and b

jr_0f1_6ad7:
    ldh [rSCX], a
    jp $e0e0


    ld b, e
    jp $e0e0


    ld b, d
    jp $e0e0


    add d
    add e
    jr nz, jr_0f1_6ac8

    add d
    add e
    ldh [rNR41], a
    ld a, [c]
    di
    ldh [rNR41], a
    cp $ff
    ldh [rNR41], a
    cp h
    ld a, a
    ldh [rNR41], a
    srl h
    ret nz

    ld b, b
    push af
    cp $80
    add b
    ld [hl+], a
    rst $38
    add b
    add b
    inc bc
    rst $38
    nop
    nop
    ld b, [hl]
    cp $00
    nop
    cp h
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
    ld hl, sp+$18
    nop
    nop
    ld [$00f8], sp
    nop
    inc b
    db $fc
    nop
    nop
    inc d
    db $fc
    nop
    nop
    and h
    db $fc
    nop
    nop
    ld b, h
    db $fc
    nop
    nop
    ld b, d
    cp $00
    nop
    ld b, d
    cp $00
    nop
    ld b, d
    cp $00
    nop
    ld b, d
    cp $00
    nop
    ld hl, $00ff
    nop
    ld hl, $00ff
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld b, d
    cp $00
    nop
    ld b, d
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
    ld [$00f8], sp
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld [hl], b
    ld [hl], b
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
    cp $fe
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ccf
    ccf
    nop
    nop
    ld a, a
    ld a, a
    nop
    nop
    ld h, a
    ld a, a
    nop
    nop
    jp Jump_000_00ff


    nop
    add c
    rst $38
    nop
    nop
    add b
    rst $38
    ld bc, $6101
    sbc a
    ld bc, $7201
    adc a
    ld [bc], a
    inc bc
    xor $1f
    ld [bc], a
    inc bc
    reti


    ccf
    ld [bc], a
    inc bc
    add sp, $2f
    inc bc
    ld [bc], a
    xor [hl]
    ld l, a
    inc bc
    inc bc
    jp hl


    rst $28
    rlca
    ld b, $38
    rst $38
    rlca
    dec b
    ldh a, [$7f]
    rlca
    dec b
    pop hl
    rst $38
    inc bc
    ld [bc], a
    ldh [$7f], a
    ld bc, $a001
    cp a
    nop
    nop
    jr nz, @+$41

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
    ld [hl], b
    ld a, a
    rrca
    rrca
    sub b
    rst $38
    rrca
    rrca
    sbc a
    rst $38
    rrca
    rrca
    sbc a
    rst $38
    rrca
    rrca
    sub b
    rst $38
    rrca
    rrca
    db $10
    rst $38
    inc c
    inc c
    ldh [rIE], a
    inc c
    inc c
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
    jr nz, jr_0f1_6de3

    nop
    nop
    rra
    rra
    nop
    nop
    ld e, $1e

jr_0f1_6dac:
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
    ccf
    ccf
    nop
    nop
    ccf
    ccf
    nop
    nop
    nop
    nop
    rrca
    rrca
    ret nz

    ret nz

    db $10
    rra
    jr nz, jr_0f1_6dac

    jr nz, jr_0f1_6e0d

    db $10
    ldh a, [rNR52]
    dec sp
    db $10
    ldh a, [$3e]
    ccf
    db $10
    ldh a, [$7f]
    ld a, b
    db $10
    ldh a, [$7d]
    ld a, [hl]
    ld h, b
    ldh [$ef], a
    ld hl, sp-$20

jr_0f1_6de3:
    ld h, b
    cp $e9
    ldh a, [rSVBK]
    db $eb
    db $fc
    ld a, b
    ld hl, sp-$08
    rst $38
    ld a, h
    db $fc
    ei
    db $fc
    db $fc
    db $fc
    and $f9
    db $fc
    db $fc
    add $ff
    inc [hl]
    db $fc
    db $10
    rst $38
    ld [$0cf8], sp
    rst $38
    ld [hl], b
    ldh a, [$08]
    rst $38
    ld a, h
    db $fc
    jr @+$01

    sbc [hl]
    and $e7

jr_0f1_6e0d:
    rst $38
    ld l, a
    sub e
    nop
    rst $38
    rst $28
    inc de
    ld a, [$e6cf]
    ld a, $05
    db $fd
    db $fc
    db $fc
    inc b
    db $fc
    nop
    nop
    inc d
    db $fc
    nop
    nop
    and d
    cp $00
    nop
    ld b, d
    cp $00
    nop
    ld b, d
    cp $00
    nop
    ld b, h
    db $fc
    nop
    nop
    ld b, h
    db $fc
    nop
    nop
    ld b, h
    db $fc
    nop
    nop
    ld h, h
    db $fc
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    sbc b
    ld hl, sp+$00
    nop
    sub b
    ldh a, [rP1]
    nop
    and b
    ldh [rP1], a
    nop
    ret nz

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
    ccf
    ccf
    nop
    nop
    ld sp, $003f
    nop
    jr nz, jr_0f1_6ef3

    nop
    nop
    jr nz, jr_0f1_6ef7

    nop
    nop
    ld e, l
    ld h, e
    nop
    nop
    ld e, a
    ld h, e
    nop
    nop
    ld e, c
    ld h, a
    nop
    nop
    ld h, h
    ld e, a
    nop
    nop
    ld a, h
    ld b, a
    nop
    nop
    ld a, b
    ld b, a
    nop
    nop
    ld h, a
    ld e, a
    nop
    nop
    ld l, b
    ld a, a
    nop
    nop
    call c, Call_000_00eb
    nop
    cp $fb
    nop
    nop
    ld a, c
    ld b, a
    nop
    nop
    jr nz, jr_0f1_6f27

    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, c

jr_0f1_6ef3:
    ld a, a
    nop
    nop
    ld b, c

jr_0f1_6ef7:
    ld a, a
    nop
    nop
    add e
    rst $38
    nop
    nop
    ld [c], a
    cp $00
    nop
    cp $fe
    nop
    nop
    sbc a
    rst $38
    ld bc, $0301
    rst $38
    ld bc, $0201
    rst $38
    ld bc, $0701
    rst $38
    ld bc, $0501
    db $fd
    ld [bc], a
    inc bc
    add hl, bc
    ld sp, hl
    ld [bc], a
    inc bc
    dec bc
    ei
    ld bc, $d301
    di
    ld bc, $e001

jr_0f1_6f27:
    ldh [rSB], a
    ld bc, $e0e0
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
    ldh [$e0], a
    rlca
    rlca
    ldh a, [$f0]
    nop
    nop
    ld hl, sp-$08
    rrca
    rrca
    ret nz

    ret nz

    db $10
    rra
    jr nz, @-$1e

    jr nz, jr_0f1_6f89

    db $10
    ldh a, [rNR52]
    dec sp
    db $10
    ldh a, [$3e]
    ccf
    db $10
    ldh a, [$7f]
    ld a, b
    db $10
    ldh a, [$7d]
    ld a, [hl]
    ld h, b
    ldh [$ef], a
    ld hl, sp-$20
    ld h, b
    cp $e9
    ldh [$60], a
    db $eb
    db $fc
    ld [hl], b
    ldh a, [$f8]
    rst $38
    ld a, b
    ld hl, sp-$01
    pop af
    ld hl, sp-$08
    rst $28
    di
    add sp, -$08
    adc l
    rst $38
    add sp, -$08
    nop
    rst $38
    ret nc

    ldh a, [rP1]
    rst $38
    ld [hl], b
    ret nc

    inc b
    rst $38
    ld h, b
    ldh [$88], a
    rst $38
    ldh a, [$90]
    ld [hl], a

jr_0f1_6f89:
    rst $38
    sbc [hl]
    ld l, [hl]
    inc bc
    rst $38
    ld c, a
    or e
    add h
    db $fc
    rst $10
    xor c
    ld a, b
    cp b

jr_0f1_6f96:
    ld d, a
    ld l, c
    ld [$33f8], sp
    ccf
    jr z, jr_0f1_6f96

    ld e, $1e
    ld c, b
    ld hl, sp+$00
    nop
    add h
    db $fc
    nop
    nop
    add d
    cp $00
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
    ld e, a
    ld a, a
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    add d
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
    add sp, -$08
    nop
    nop
    ldh a, [$f0]
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
    jr c, jr_0f1_7022

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_0f1_7022:
    rrca
    rrca
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
    ld sp, $003f
    nop
    jr nz, jr_0f1_7073

    nop
    nop
    jr nz, jr_0f1_7077

    nop
    nop
    ld l, $31
    nop
    nop
    cpl
    ld sp, $0000
    jr nz, @+$41

    nop
    nop
    ld l, $31
    nop
    nop
    ld l, $31
    nop
    nop
    scf
    add hl, sp
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
    ld b, e
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
    jr nz, jr_0f1_70a7

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
    add c

jr_0f1_7073:
    rst $38

jr_0f1_7074:
    nop
    nop
    add c

jr_0f1_7077:
    rst $38
    ld bc, $de01
    cp $01
    ld bc, $fc7c
    ld [bc], a
    inc bc
    ld [$04f8], sp
    rlca
    ld [$04f8], sp
    rlca
    db $10
    ldh a, [$08]
    rrca
    db $10
    ldh a, [rNR10]
    rra
    jr nz, jr_0f1_7074

    ld c, $0f
    ld b, b
    ret nz

    rra
    rra
    add b
    add b
    ld e, $1e
    nop
    nop
    inc a
    inc a
    nop
    nop

jr_0f1_70a4:
    ld a, $3e
    nop

jr_0f1_70a7:
    nop
    rra
    rra
    nop
    nop
    rlca
    rlca
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
    db $10
    rra
    jr nz, jr_0f1_70a4

    jr nz, jr_0f1_7105

    db $10
    ldh a, [rNR52]
    dec sp
    db $10
    ldh a, [$3e]
    ccf
    db $10
    ldh a, [$7f]
    ld a, b
    db $10
    ldh a, [$7d]
    ld a, [hl]
    ld h, b
    ldh [$6f], a
    ld a, b
    ldh [$60], a
    cp $e9
    ldh [$60], a
    db $eb
    db $fc
    ld [hl], b
    ldh a, [$f8]
    rst $38
    ld a, b
    ld hl, sp-$05
    db $fd
    ld hl, sp-$08

jr_0f1_70ec:
    or $f9
    ld hl, sp-$08

jr_0f1_70f0:
    and $ff
    ld l, b
    ld hl, sp+$04
    rst $38
    ld [$82f8], sp
    rst $38
    jr nc, jr_0f1_70ec

    add d
    rst $38
    jr nc, jr_0f1_70f0

    ld b, [hl]
    rst $38
    ld h, b
    ldh [$39], a

jr_0f1_7105:
    rst $38
    ret nz

    ret nz

    inc bc
    db $fc
    ld b, b
    ret nz

    call nz, Call_0f1_40ff
    ret nz

    rst $38
    ld l, h
    ret nz

    ret nz

    push hl
    ld e, d
    ldh [$60], a
    push hl
    jp c, Jump_0f1_60e0

    db $ec
    ccf
    ret nz

    ret nz

    ld b, a
    rst $38
    add b
    add b
    add d
    cp $00
    nop
    add d
    cp $00
    nop
    ld bc, $00ff
    nop

jr_0f1_7130:
    add c
    rst $38
    nop
    nop

jr_0f1_7134:
    add e
    rst $38
    add b
    add b

jr_0f1_7138:
    ld e, a
    ld a, a
    add b
    add b

jr_0f1_713c:
    jr c, jr_0f1_717d

    ld b, b
    ret nz

    jr nz, jr_0f1_7181

    ld b, b
    ret nz

    jr nz, jr_0f1_7185

    ld b, b
    ret nz

    db $10
    rra
    ld b, b
    ret nz

    db $10
    rra
    jr nz, jr_0f1_7130

    db $10
    rra
    jr nz, jr_0f1_7134

    db $10
    rra
    jr nz, jr_0f1_7138

    db $10
    rra
    jr nz, jr_0f1_713c

    dec bc
    rrca
    and b
    ldh [$0b], a
    rrca
    ret nz

    ret nz

    dec b
    dec b
    cp $fe
    inc bc
    inc bc
    ld a, [c]
    cp $03
    inc bc
    call z, $01fc
    ld bc, $f0b0
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop

jr_0f1_717d:
    nop
    nop
    nop
    nop

jr_0f1_7181:
    nop
    nop
    nop
    nop

jr_0f1_7185:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
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
    inc b
    rlca
    nop
    nop
    dec b
    ld b, $00
    nop
    add hl, bc
    ld c, $00
    nop
    add hl, bc
    ld c, $00
    nop
    add hl, bc
    ld c, $00
    nop
    add hl, bc
    ld c, $00
    nop
    ld c, $0f
    nop
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
    jr nz, jr_0f1_7237

    nop
    nop
    ld [hl], b
    ld a, a
    ld bc, $9c01
    rst $38
    ld b, $07
    rrca
    rst $38

jr_0f1_7204:
    ld [$0e0f], sp
    cp $0c
    rrca
    inc b
    db $fc
    ld e, $1f
    ld [$3ff8], sp
    ccf
    jr nc, jr_0f1_7204

    ld a, [hl]
    ld a, [hl]
    ret nz

    ret nz

    ld a, h
    ld a, h
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
    ld e, $1e
    nop
    nop
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

jr_0f1_7237:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $f801
    ld hl, sp+$02
    inc bc
    inc b
    db $fc
    inc b
    rlca
    ld [bc], a
    cp $04
    rlca
    jp nz, Jump_000_077e

    rlca
    jp nz, $0ffe

    rrca
    ld [c], a
    ld e, $0f
    rrca
    xor h
    call c, $0f0d
    db $fc
    inc c
    ccf
    dec a
    sbc $2e
    db $fd
    rst $38
    ld l, a
    sbc a
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    cp $9d
    ld a, a
    dec e
    rst $38
    adc d
    cp $18
    rst $38
    ld a, [bc]
    cp $e8
    ccf
    sbc h
    db $fc
    ret nc

    ccf
    sbc b
    ld hl, sp-$37
    ccf
    ld [hl], b
    ldh a, [rTMA]
    rst $38
    and b
    ld h, b
    adc a
    ld a, a
    ret nz

    ret nz

    db $fd
    ld c, $c0
    ret nz

    ld a, l
    adc [hl]
    ret nz

    ret nz

    rrca
    rst $38
    ret nz

    ret nz

    adc d
    rst $38
    ret nz

    ret nz

    ld d, e
    rst $38
    add b
    add b
    inc hl
    rst $38
    nop
    nop
    ld [hl+], a
    cp $00
    nop
    ld [hl+], a
    cp $00
    nop
    ld b, c
    rst $38
    nop
    nop
    ld b, c
    rst $38
    nop
    nop
    pop bc
    rst $38
    nop
    nop
    adc a
    cp a
    nop
    nop
    ccf
    ccf
    add b
    add b
    jr nc, jr_0f1_7305

    add b
    add b
    jr nz, jr_0f1_7309

    add b
    add b
    jr nz, jr_0f1_730d

    add b
    add b
    jr nz, jr_0f1_7311

    add b
    add b
    jr nz, jr_0f1_7315

    add b
    add b
    jr nz, jr_0f1_7319

    add b
    add b
    jr nz, jr_0f1_731d

    add b
    add b
    rla
    rra
    nop
    nop
    rrca
    rrca
    nop
    nop

jr_0f1_72e8:
    rrca
    rrca
    nop
    nop
    rrca
    rrca
    ldh a, [$f0]
    rrca
    rrca
    ret z

    ld hl, sp+$0f
    rrca
    jr nc, jr_0f1_72e8

    inc c
    rrca
    ret nz

    ret nz

    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f1_7305:
    nop
    nop
    nop
    nop

jr_0f1_7309:
    nop
    nop
    nop
    nop

jr_0f1_730d:
    nop
    nop
    nop
    nop

jr_0f1_7311:
    nop
    nop
    nop
    nop

jr_0f1_7315:
    nop
    nop
    nop
    nop

jr_0f1_7319:
    nop
    nop
    nop
    nop

jr_0f1_731d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, $07
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
    dec b
    ld b, $00
    nop
    dec b
    ld b, $00
    nop
    dec b
    ld b, $00
    nop
    dec c
    ld c, $00
    nop
    inc c
    rrca
    nop
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
    ld [$000f], sp
    nop
    ld [$000f], sp
    nop
    inc b
    rlca
    nop
    nop
    inc e
    rra
    rlca
    rlca
    db $e3
    rst $38
    rlca
    rlca
    pop hl
    rst $38
    rlca
    rlca
    ldh [rIE], a
    rlca
    rlca
    db $10
    rra
    rlca
    rlca
    rrca
    rrca
    ld b, $06
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [$f0]
    inc b
    rlca
    ld [$08f8], sp
    rrca
    inc b
    db $fc
    add hl, bc
    ld c, $84
    db $fc
    rrca
    rrca
    add h
    db $fc
    rra
    ld e, $c4
    inc a
    rra
    rra
    ld e, b
    cp b
    dec de
    ld e, $f8
    jr @+$21

    ld a, [de]
    cp h
    ld e, h
    ld a, [$dcff]
    inc a
    cp $ff
    inc e
    db $fc
    rst $38
    cp $fc
    ld a, h
    ccf
    db $fc
    inc a
    db $fc

jr_0f1_73f8:
    dec de
    rst $38
    inc d
    db $fc
    db $10
    rst $38
    inc d
    db $fc
    ld de, $38ff
    ld hl, sp-$1f
    ccf
    jr nc, jr_0f1_73f8

    rst $10
    ccf
    ldh [$e0], a
    call $c03e
    ret nz

    adc l
    db $76
    ret nz

    ret nz

    rst $30
    rrca
    ret nz

    ret nz

    inc bc
    rst $38
    add b
    add b
    ld [bc], a
    cp $00
    nop
    ld b, [hl]
    cp $00
    nop
    ld a, [hl+]
    cp $00
    nop
    ld [de], a
    cp $00
    nop
    ld [de], a
    cp $00
    nop
    ld de, $00ff
    nop
    ld de, $00ff
    nop
    ld de, $00ff
    nop
    ld de, $00ff
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld h, c
    rst $38
    nop
    nop
    pop bc
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
    ld b, d
    ld a, [hl]
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
    jr jr_0f1_74d3

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
    rla
    jr jr_0f1_74c1

jr_0f1_74c1:
    nop
    daa
    jr c, jr_0f1_74c5

jr_0f1_74c5:
    nop
    daa
    jr c, jr_0f1_74c9

jr_0f1_74c9:
    nop
    inc h
    dec sp
    nop
    nop
    ld h, $39
    nop
    nop
    dec sp

jr_0f1_74d3:
    inc a
    nop
    nop
    ld sp, $003e
    nop
    ld h, b
    ld a, a
    nop
    nop
    ld b, d
    ld a, a
    nop
    nop
    ld b, c
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
    jr nz, jr_0f1_752f

    nop
    nop
    jr nz, jr_0f1_7533

    nop
    nop
    db $10
    rra
    nop
    nop
    ld [$000f], sp
    nop
    rrca
    rrca
    nop
    nop
    ld de, $001f
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
    ld c, h
    ld a, a
    nop
    nop
    ld e, [hl]
    ld a, a
    nop
    nop
    dec a
    ccf
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
    ld a, a
    ld a, a
    nop
    nop
    ccf
    ccf
    nop
    nop
    inc a

jr_0f1_752f:
    inc a
    nop
    nop
    inc a

jr_0f1_7533:
    inc a
    nop
    nop
    ld a, h
    ld a, h
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    rrca
    rrca
    rlca
    rlca
    ldh [$e0], a
    ld [$100f], sp
    ldh a, [rNR10]
    rra
    ld [$13f8], sp
    dec e
    ld [$1ff8], sp
    rra
    ld [$3ff8], sp
    inc a
    adc b
    ld a, b
    ld a, $3f
    or b
    ld [hl], b
    scf
    inc a
    ldh a, [$30]
    rst $38
    db $f4
    ld a, b
    cp b
    push af
    cp $bc
    ld a, h
    db $fc
    rst $38
    inc a
    db $fc
    rst $38
    db $fc
    db $fc
    db $fc

jr_0f1_7570:
    cp $f9
    ld [hl], h
    db $fc

jr_0f1_7574:
    db $76
    rst $38
    jr z, jr_0f1_7570

    ld h, b
    rst $38
    jr z, jr_0f1_7574

    and d
    rst $38
    ld [hl], b
    ldh a, [rSCY]
    rst $38
    ld h, b
    ldh [rNR51], a
    rst $38
    ret nz

    ret nz

    ld a, [de]
    db $fd
    add b
    add b
    ccf
    rst $38
    nop
    nop
    rst $30
    dec sp
    nop
    nop
    rst $30
    dec sp
    nop
    nop
    ccf
    rst $38
    nop
    nop
    dec hl
    rst $38
    nop
    nop
    ld c, [hl]
    cp $00
    nop
    sbc h
    db $fc

jr_0f1_75a6:
    nop
    nop
    sub b
    ldh a, [rP1]
    nop
    ld h, b
    ldh [rP1], a
    nop
    ld h, b
    ldh [rP1], a
    nop
    jr nc, jr_0f1_75a6

    nop
    nop
    jr nc, @-$0e

    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    ld h, b
    ldh [rP1], a
    nop
    jr nz, @-$1e

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rra
    rra
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
    ld h, e
    ld a, a
    nop
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld e, l
    ld h, e
    nop
    nop
    ld e, a
    ld h, e
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    ld e, h
    ld h, e
    nop
    nop
    ld e, h
    ld h, e
    nop
    nop
    ld l, a
    ld [hl], e
    nop
    nop
    ld b, l
    ld a, [hl]
    nop
    nop
    add l
    cp $00
    nop
    add a
    rst $38
    nop
    nop
    add e
    cp $00
    nop
    ld b, c
    ld a, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    jr nz, jr_0f1_76ab

    nop
    nop
    jr nz, jr_0f1_76af

    nop
    nop
    jr nc, jr_0f1_76b3

    nop
    nop
    ld a, b
    ld a, a
    nop
    nop
    sbc l
    rst $38
    ld bc, $0f01
    rst $38
    ld [bc], a
    inc bc
    ld b, $ff
    inc b
    rlca
    ld b, $ff
    ld [$0a0f], sp
    ei
    ld [$110f], sp
    pop af
    rlca
    rlca
    ld hl, $07e1
    rlca
    pop bc
    pop bc
    rrca
    rrca
    add c
    add c
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

jr_0f1_76a8:
    rlca
    rlca
    add b

jr_0f1_76ab:
    add b

jr_0f1_76ac:
    inc bc
    inc bc
    ret nz

jr_0f1_76af:
    ret nz

jr_0f1_76b0:
    nop
    nop
    nop

jr_0f1_76b3:
    nop

jr_0f1_76b4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_0f1_7701

    ld b, b
    ret nz

    ld b, b
    ld a, a
    jr nz, jr_0f1_76a8

    ld c, h
    ld [hl], a
    jr nz, jr_0f1_76ac

    ld a, h
    ld a, a
    jr nz, jr_0f1_76b0

    cp $f1
    jr nz, jr_0f1_76b4

    ld a, [$c0fd]
    ret nz

    rst $18
    ldh a, [$c0]
    ret nz

    db $fd
    jp nc, $c0c0

    sub $f9
    ldh [$e0], a
    ldh a, [rIE]
    ldh a, [$f0]
    rst $30
    ei
    ldh a, [$f0]
    db $ed
    di
    ldh a, [$f0]
    call z, $d0ff
    ldh a, [$08]
    rst $38
    db $10
    ldh a, [rDIV]
    rst $38
    ld h, b
    ldh [rDIV], a
    rst $38
    ld h, b
    ldh [$8c], a

jr_0f1_7701:
    rst $38
    ret nz

    ret nz

    ld [hl], e
    rst $38
    add b
    add b
    ld b, $f9
    add b
    add b
    adc b
    rst $38

jr_0f1_770e:
    add b
    add b
    rst $38
    reti


    add b
    add b
    res 6, h
    ret nz

    ret nz

    res 6, h
    ret nz

    ret nz

    reti


    ld a, a
    add b
    add b
    rra
    rst $38
    nop
    nop
    and b
    ldh [rP1], a
    nop
    ld h, b
    ldh [rP1], a
    nop
    jr nz, jr_0f1_770e

    nop
    nop
    db $10
    ldh a, [rP1]
    nop
    ld a, b
    ld hl, sp+$00
    nop
    db $fc
    db $fc
    nop
    nop
    call nz, Call_000_00fc
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

jr_0f1_774c:
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
    cp d
    cp $00
    nop
    cp h
    db $fc
    nop
    nop
    ld e, a
    ld e, a
    ret nz

    ret nz

    ccf
    ccf
    jr nz, jr_0f1_774c

    inc a
    ccf
    ret nz

    ret nz

    inc de
    rra
    nop
    nop
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rrca
    rrca
    nop
    nop
    rra
    rra
    nop
    nop
    ld sp, $003f
    nop
    jr nc, jr_0f1_77ef

    nop
    nop
    jr nz, @+$41

    nop
    nop
    jr nz, jr_0f1_77f7

    nop
    nop
    ld e, l
    ld h, e
    nop
    nop
    ld e, a
    ld h, e
    nop
    nop
    ld e, b
    ld h, a
    nop
    nop
    ld h, h
    ld e, a
    nop
    nop
    ld a, h
    ld b, a
    nop
    nop
    ld a, b
    ld b, a
    nop
    nop
    ld h, a
    ld e, a
    nop
    nop
    ld l, b
    ld a, a
    nop
    nop
    call c, Call_000_00eb
    nop
    cp $fb
    nop
    nop
    ld a, c
    ld b, a
    nop
    nop
    ld b, b
    ld a, a
    nop
    nop
    jr nz, @+$41

    nop
    nop
    ld [hl], b

jr_0f1_77ef:
    ld a, a
    nop
    nop
    ldh a, [rIE]
    ld bc, $7801

jr_0f1_77f7:
    rst $38
    ld b, $07
    jr c, @+$01

    ld [$1f0f], sp
    rst $38
    db $10
    rra
    rrca
    rst $38
    jr nz, jr_0f1_7845

    inc c
    rst $38
    db $10
    rra
    inc [hl]
    rst $30
    ld a, b
    ld a, a
    call nz, $ffc7
    rst $38
    inc b
    rlca
    ldh a, [$f0]
    inc b
    rlca
    ld [hl], b
    ld [hl], b
    inc b
    rlca
    ld [hl], b
    ld [hl], b
    ld [bc], a
    inc bc
    jr c, jr_0f1_785a

    ld bc, $1801
    jr @+$03

    ld bc, $0000
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
    rrca
    rrca
    ret nz

    ret nz

    db $10

jr_0f1_7845:
    rra
    jr nz, @-$1e

    jr nz, @+$41

    db $10
    ldh a, [rNR52]
    dec sp
    db $10
    ldh a, [$3e]
    ccf
    db $10
    ldh a, [$7f]
    ld a, b
    db $10
    ldh a, [$7d]
    ld a, [hl]

jr_0f1_785a:
    ld h, b
    ldh [$ef], a
    ld hl, sp-$20
    ld h, b
    cp $e9
    ldh [$60], a
    db $eb
    db $fc
    ld [hl], b
    ldh a, [$f8]
    rst $38
    ld a, b
    ld hl, sp-$01
    pop af
    ld hl, sp-$08
    rst $28
    di
    add sp, -$08
    adc l
    rst $38
    add sp, -$08
    nop
    rst $38
    ret nc

    ldh a, [rDIV]
    rst $38
    ld [hl], b
    ret nc

    adc b
    rst $38
    ldh [$a0], a
    ld [hl], a
    rst $38
    ldh a, [rNR10]
    ld bc, $1eff
    xor $03
    rst $38
    ld c, a
    or e
    add h
    db $fc
    rst $10
    xor c
    ld a, b
    cp b

jr_0f1_7896:
    ld d, a
    ld l, c
    ld [$33f8], sp
    ccf
    jr z, jr_0f1_7896

    ld e, $1e
    ld c, b
    ld hl, sp+$00
    nop
    sub b
    ldh a, [rP1]
    nop
    sub b
    ldh a, [rP1]
    nop
    ld d, b
    ldh a, [rP1]
    nop
    ld h, b
    ldh [rP1], a
    nop
    jr nz, jr_0f1_7896

    nop
    nop
    jr nc, @-$0e

    nop
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
    db $10
    ldh a, [rP1]
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
    ldh [$e0], a
    nop
    nop
    cp $fe
    nop
    nop
    pop af
    rst $38

jr_0f1_78f2:
    nop
    nop
    add $fe
    nop
    nop
    jr jr_0f1_78f2

    nop
    nop
    ldh [$e0], a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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

Call_0f1_7f3c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
