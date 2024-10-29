SECTION "ROM Bank $0b6", ROMX[$4000], BANK[$b6]

    ld e, $00
    ld c, [hl]
    nop
    adc e
    nop
    jp $e200


    nop
    or b
    nop
    inc a
    nop
    ld [hl], e
    nop
    ld [hl], e
    nop
    ld h, e
    nop
    nop
    nop
    ret nz

    nop
    ldh [$c0], a
    db $fc
    ld h, b
    rst $38
    inc a
    rst $38
    rra
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    add c
    add c
    ret nz

    ret nz

    ld h, b
    ldh [$30], a
    ldh a, [rNR23]
    ld hl, sp-$74
    db $fc
    add $fe
    db $e3
    rst $38
    ld [hl], c
    ld a, a
    jr c, @+$41

    adc h
    rrca
    add $07
    db $e3
    inc bc
    pop af
    ld bc, $00f8
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
    ld bc, $0300
    ld bc, $0307
    rrca
    rlca
    rra
    rrca
    ccf
    rra
    ld a, a
    rra
    rst $38
    ccf
    ld a, a
    ld a, a
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
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
    ld bc, $00f8
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    rst $00
    rlca
    add a
    rlca
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    ret nz

    ret nz

    nop
    nop
    nop
    ld bc, $8700
    nop
    ld a, b
    nop
    ld h, c
    nop
    db $e3
    nop
    adc $00
    ei
    nop
    call z, $e300
    nop
    pop af
    nop
    ldh [rP1], a
    pop hl
    nop
    ld de, $1700
    nop
    dec bc
    nop
    ld a, [bc]
    nop
    rra
    nop
    sbc a
    nop
    ld a, [hl]
    nop
    rst $38
    nop
    ld hl, sp+$00
    db $fc
    nop
    ld sp, hl
    nop
    rst $20
    nop
    inc bc
    nop
    scf
    nop
    xor l
    nop
    ld a, b
    nop
    ld a, c
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    cpl
    nop
    ccf
    nop
    ld b, h
    nop
    add h
    nop
    inc b
    nop
    inc b
    nop
    ld c, $00
    inc c
    nop
    jr jr_0b6_4100

Jump_0b6_4100:
jr_0b6_4100:
    jr jr_0b6_4102

jr_0b6_4102:
    add hl, de
    nop
    or c
    nop
    db $e4
    nop
    ld a, l
    nop
    scf
    nop
    pop hl
    nop
    ld h, b
    nop
    db $fc
    nop
    add d
    nop
    add b
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
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $8001
    add b
    ret nz

    ret nz

    ld h, b
    ldh [rNR23], a
    ld hl, sp-$74
    db $fc
    add $fe
    db $e3
    rst $38
    ld [hl], c
    ld a, a
    jr c, jr_0b6_4187

    inc e
    rra
    adc [hl]
    rrca
    rst $00
    rlca
    db $e3
    inc bc
    ldh a, [rIE]
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
    ld a, a
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
    nop
    rst $38
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
    rrca
    nop
    inc bc
    add b

jr_0b6_4187:
    add c
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    cp $fe
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
    rst $38
    nop
    ld bc, $0000
    nop
    rst $38
    nop
    inc bc
    nop
    ld [bc], a
    nop
    inc b
    nop
    inc b
    nop
    add h
    nop
    adc h
    nop
    ld c, b
    nop
    ld c, b
    nop
    jr z, jr_0b6_41ba

jr_0b6_41ba:
    cp [hl]
    nop
    ccf
    nop
    ld a, $00
    rst $38
    nop
    cp a
    nop
    cp a
    nop
    rlca
    nop
    push hl
    nop
    ld a, [c]
    nop
    rst $38
    add b
    di
    ret nz

    rst $20
    add b
    jp Jump_0b6_4100


    nop
    call c, Call_0b6_5f00
    nop
    rst $38
    nop
    rst $18
    nop
    ld c, a
    nop
    ld [hl], h
    nop
    call c, $1200
    nop
    ld d, d
    nop
    ld d, c
    nop
    ld hl, $2000
    nop
    stop
    ld c, b
    nop
    adc a
    nop
    add hl, de
    nop
    rrca
    nop
    ld hl, sp+$00
    pop hl
    nop
    jr nz, jr_0b6_41fe

jr_0b6_41fe:
    inc hl
    nop
    db $fc
    nop
    jr nz, jr_0b6_4204

jr_0b6_4204:
    jr nz, jr_0b6_4206

jr_0b6_4206:
    jr nz, jr_0b6_4208

jr_0b6_4208:
    nop
    nop
    inc bc
    nop
    rra
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    ld a, h
    ld a, h
    inc a
    inc a
    jr jr_0b6_4246

    nop
    nop
    nop
    nop
    nop
    ld bc, $8180
    ret nz

    jp Jump_0b6_63e0


    ldh a, [$33]
    ld hl, sp+$1b
    db $fc
    sbc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_0b6_4246:
    nop
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
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
    ccf
    rst $38
    rra
    rst $38
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
    rlca
    db $fc
    inc bc
    cp $81
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    jr jr_0b6_42aa

    ld b, $07
    ld bc, $0023
    scf
    nop
    and $00
    inc e
    nop
    inc bc
    nop
    pop bc
    nop
    inc h
    nop
    dec e
    nop
    dec c
    nop
    rrca
    nop
    rra
    nop
    scf
    nop
    ld b, b
    nop
    ld b, a
    nop

jr_0b6_42aa:
    add a
    nop
    rlca
    nop
    call z, $fc00
    nop
    ldh [rP1], a
    ret nz

    nop
    ldh a, [rP1]
    rrca
    nop
    ld [hl+], a
    nop
    inc c
    nop
    ldh a, [rP1]
    call nz, $f200
    nop
    rst $20
    nop
    ldh [rP1], a
    nop
    nop
    add b
    nop
    ret nz

    nop
    jr nc, jr_0b6_42d0

jr_0b6_42d0:
    ld [$0400], sp
    nop
    inc bc
    nop
    daa
    nop
    ld a, a
    nop
    xor $00
    rst $28
    nop
    ld hl, sp+$00
    ld a, h
    nop
    ld h, l
    nop
    rst $28
    nop
    rst $38
    nop
    ei
    nop
    pop af
    nop
    add sp, $00
    ld [$0000], sp
    nop
    ld bc, $0700
    ld bc, $071f
    ld a, a
    rrca
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    ldh a, [$f0]
    pop hl
    ldh [$c3], a
    ret nz

    jp $87c0


    add b
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
    ld a, a
    nop
    ld a, c
    ld b, $f8
    rlca
    ld hl, sp+$03
    ld hl, sp+$01
    ld hl, sp+$01
    add sp, $15
    ldh [rNR33], a
    ldh [rNR34], a
    ret nz

    inc l
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
    ld a, a
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    ld bc, $00ff
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
    rlca
    nop
    inc bc
    add b
    add b
    rst $38
    ld h, b
    ld a, a
    db $10
    rst $38
    inc c
    rst $28
    ld b, $47
    inc bc
    jp Jump_0b6_7d01


    nop
    inc a
    nop
    jr c, jr_0b6_4372

jr_0b6_4372:
    stop
    ret c

    nop
    ld e, b
    nop
    db $fc
    nop
    cp $00
    xor h
    nop
    ld h, $00
    ld [de], a
    nop
    stop
    ld [hl], c
    nop
    sbc a
    nop
    adc c
    nop
    add c
    nop
    ld c, l
    nop
    dec h
    nop
    add hl, de
    nop
    add hl, de
    nop
    ld d, e
    nop
    rst $30
    nop
    rra
    nop
    ld a, [de]
    nop
    ld [hl], $00
    daa
    nop
    ld l, l
    nop
    call z, $ce00
    nop
    rst $30
    nop
    dec de
    nop
    ei
    nop
    ld hl, sp+$00
    ld a, c
    nop
    db $fd
    nop
    sbc a
    ld bc, $0287
    add a
    ld [bc], a
    rst $08
    inc b
    sbc a
    inc c
    ccf
    jr jr_0b6_443e

    jr nc, jr_0b6_4432

    ld [hl], b
    pop hl
    ldh [$c3], a
    ret nz

    rst $00
    ret nz

    add a
    add b
    rrca
    nop
    rrca
    nop
    rra
    ld bc, $003f
    ccf
    nop
    ld a, a
    nop
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld [c], a
    dec e
    ldh [$1f], a
    add sp, $1f
    ldh [$1f], a
    and b
    ld e, l
    add l
    ld a, a
    inc bc
    rst $38
    inc bc
    rst $38
    xor e
    ld e, a
    ld e, a
    cp a
    rra
    rst $38
    scf
    rst $38
    ld e, $ff
    inc c
    rst $38
    ld b, $3f
    ld [bc], a
    rra
    ld bc, $000f
    rst $38
    nop
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
    rst $38
    rst $38
    ccf
    rst $38
    rra
    rst $38
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
    ld a, a
    nop
    ccf
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    ret nz

    ret nz

    ldh [$e0], a
    ld [hl], b
    ld [hl], b
    rst $38
    ld a, h

jr_0b6_4432:
    ld a, a
    ld a, $7f
    ccf
    ccf
    rra
    ccf
    rra
    rra
    rrca
    rra
    rrca

jr_0b6_443e:
    rra
    rrca
    rra
    rrca
    rra
    rrca
    ld c, a
    rlca
    adc a
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rra
    rrca
    rra
    rrca
    sbc a
    ld c, $9f
    ld c, $1f
    inc c
    ccf
    jr @+$41

    jr @+$01

jr_0b6_4467:
    jr nc, jr_0b6_4467

    ld hl, $63fc
    db $fc
    ld b, e
    ld hl, sp-$79
    add a
    add b
    rrca
    nop
    rra
    nop
    rra
    nop
    ccf
    nop
    ld a, [hl]
    ld bc, $037e
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    ldh a, [rIF]
    ldh [$1f], a
    and $19
    push af
    dec bc
    ld bc, $80ff
    rst $38
    ld h, $ff
    sub a
    ld l, a
    adc a
    ld a, a
    dec de
    rst $38
    rlca
    rst $38
    rst $00
    ccf
    sbc a
    ld a, a
    ld a, a
    rst $38
    cp $ff
    inc a
    cp $0c
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ei
    rst $38
    db $e3
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $18
    ld a, a
    ld e, a
    rst $38
    call c, $feff
    rst $38
    rst $38
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
    ld a, a
    nop
    rra
    nop
    rrca
    nop
    rlca
    add b
    add c
    ret nz

    ret nz

    ldh [$e0], a
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    pop af
    ldh a, [$e1]
    ldh [$e3], a
    ldh [$c3], a
    ret nz

    add a
    add b
    adc a
    add b
    rrca
    nop
    rra
    nop
    ld a, $01
    ccf
    nop
    ld a, [hl]
    ld bc, $03fc
    db $fc
    inc bc
    ld hl, sp+$07
    ld [c], a
    rra
    db $db
    ld a, $e0
    rra
    ldh a, [rIF]
    ret nz

    ccf
    add e
    ld a, a
    add c
    ld a, e
    and b
    ld e, a
    nop
    rst $38
    nop
    rst $38
    daa
    rst $38
    cpl
    rst $38
    ld e, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    cp e
    rst $38
    or l
    rst $38
    ld a, e
    db $fd
    ld bc, $00ff
    rst $38
    db $ec
    rst $38
    sbc $ef
    add hl, bc
    xor a
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
    ld e, a
    rst $38
    sbc $7f
    add sp, -$01
    ld l, d
    db $fd
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ret z

    rst $28
    xor d
    rst $18
    add c
    rst $38
    or e
    adc l
    sbc d
    db $ed
    set 5, h
    db $fc
    ei
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
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
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
    ld bc, $071f
    rrca
    rrca
    rrca
    ld c, $03
    rra
    nop
    rra
    nop
    ccf
    nop
    ld a, [hl]
    ld bc, $017e
    ld hl, sp+$07
    db $e4
    rra
    ldh [$1f], a
    db $fc
    inc bc
    ldh [$1f], a
    pop hl
    rra
    ldh [$1f], a
    pop bc
    ccf
    ld bc, $03ff
    rst $38
    dec de
    rst $38
    ld a, [de]
    rst $38
    ret nc

    ccf
    ld b, $ff
    ld a, h
    cp $6f
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ld a, d
    ei
    ld hl, sp-$01
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    xor $ff
    adc l
    rst $38
    ld b, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld [hl], d
    db $fd
    xor c
    or $a0
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld [de], a
    rst $38
    ld [bc], a
    rst $38
    ld b, c
    cp [hl]
    ld e, $f1
    ld sp, hl
    rst $30
    rst $30
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld h, e
    cp a
    inc hl
    rst $38
    di
    rrca
    ld l, c
    sub a
    adc c
    rst $30
    rlca
    rst $38
    ld bc, $40ff
    cp a
    db $10
    rst $28
    nop
    rst $38
    and b
    ld a, a
    ld d, $ff
    scf
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld bc, $00ff
    rst $38
    nop
    rst $38
    rst $38
    ld bc, $07ff
    rst $38
    rrca
    rst $38
    ccf
    cp $7f
    db $fc
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    ld b, $ff
    inc c
    rst $38
    jr nz, @+$01

    ld bc, $0fff
    rst $38
    rla
    rst $38
    scf
    rst $38
    rrca
    rst $38
    ld e, [hl]
    rst $38
    ld hl, sp-$01
    add b
    rst $38
    jr @+$01

    ld a, c
    rst $38
    cp $ff
    rst $00
    rst $18
    ret z

    rst $30
    ret nz

    rst $38
    nop
    rst $38
    ld [de], a
    rst $38
    ld b, a
    cp a
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld a, [$dffd]
    ld sp, hl
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, $ff
    nop
    rst $38
    ld b, [hl]
    cp c
    inc sp
    call z, $ceb9
    call c, $c7de
    rst $38
    daa
    rst $18
    sub e
    ld l, a
    ld [de], a
    rst $28
    ld bc, $20ff
    rst $18
    ld [hl], b
    adc a
    add c
    cp $2f
    rst $38
    scf
    rst $38
    inc sp
    rst $38
    ei
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
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    ei
    rra
    ld a, a
    cp $ff
    ld hl, sp-$01
    jr c, jr_0b6_4777

    add hl, bc
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
    ld a, a
    rst $38
    rra
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    ld bc, $03ff
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    nop
    ld bc, $0300
    nop
    rra
    inc b
    ccf
    add hl, de
    ld a, [hl]
    jr c, @+$01

    ld [hl], b
    rst $38
    ret nz

    rst $38
    dec b
    ei
    inc bc
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    sbc h
    cp a
    nop
    rst $38
    add b
    rst $38
    ld [bc], a
    rst $38
    cpl
    rst $38
    jr @+$01

    inc sp
    db $fc
    jp nc, $c0ed

    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$47
    cp b
    ld e, l
    cp e
    ccf
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    jr nc, @+$01

    rst $18
    jr nz, @-$02

    inc bc
    nop
    rst $38
    inc bc
    db $fc
    nop

jr_0b6_4777:
    rst $38
    inc bc
    db $fc
    nop
    rst $38
    jp Jump_0b6_5dff


    cp a
    ld c, $ff
    sbc a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    call c, Call_0b6_78ff
    ei
    ld hl, sp-$01
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    add c
    sbc $c3
    rst $38
    adc c
    rst $38
    and l
    rst $38
    adc $fc
    ld a, [$79fc]
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
    rst $08
    rst $38
    rst $20
    rst $38
    ld a, a
    rst $20
    ld [hl], a
    rst $28
    rst $08
    rst $28
    rst $38
    rst $38
    ld a, a

jr_0b6_47bd:
    rst $38
    rra
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

jr_0b6_47c9:
    inc bc
    nop
    rrca
    nop
    rra
    nop
    ld a, a
    inc b
    rst $38
    ld [$00ff], sp
    rst $38
    add d
    db $fd
    ld [bc], a
    db $fd
    ld de, $3ffd
    rst $38
    ld a, l
    ld a, a
    ld hl, sp-$01
    ld a, [c]
    db $fd
    ret nz

    rst $38
    and b
    rst $18
    nop
    rst $38
    rlca
    ld hl, sp+$47
    cp b
    pop hl
    rra
    ld h, e
    sbc a
    ld a, [hl-]
    push bc
    jr c, jr_0b6_47bd

    ld l, b
    sub a
    jr nc, jr_0b6_47c9

    ld bc, $5fff
    cp a
    ld a, a
    sbc a
    rra
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld sp, hl
    rst $38
    db $e3
    rst $38
    ld c, $ff
    rla
    add sp, -$01
    nop
    rst $38
    nop
    cpl
    ret nc

    ld a, a
    add b
    ld [$f9fb], sp
    rst $38
    ld sp, hl
    rst $30
    ld [hl], e
    ld a, a
    ccf
    ld a, a
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    rst $28
    rst $30
    ld d, a
    rst $00
    rra
    rst $18
    ccf
    rst $38
    nop
    rst $28
    ld b, d
    cp l
    ld bc, $03fe
    cp h
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
    jp $c0ff


    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ld a, [$fff7]
    di
    rst $28
    di
    rst $28
    di
    rst $28
    di
    rst $28
    db $e3
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

jr_0b6_4874:
    inc d
    dec d
    ld d, $17
    jr jr_0b6_4893

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
    jr z, jr_0b6_48b2

    add hl, hl

jr_0b6_488b:
    ld a, [hl+]
    dec hl
    inc l

jr_0b6_488e:
    dec l
    ld l, $2f
    jr nc, jr_0b6_48c4

jr_0b6_4893:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    jr z, jr_0b6_48c1

    jr z, jr_0b6_48d1

    scf
    jr c, jr_0b6_48d7

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
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d

jr_0b6_48af:
    ld c, e
    ld c, h
    ld c, l

jr_0b6_48b2:
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    jr z, @+$56

    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e

jr_0b6_48c1:
    ld e, h
    ld e, l
    ld e, [hl]

jr_0b6_48c4:
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

jr_0b6_48ce:
    ld l, c
    ld l, d
    ld l, e

jr_0b6_48d1:
    ld l, h
    ld l, l
    jr z, jr_0b6_48fd

    jr z, jr_0b6_48ff

jr_0b6_48d7:
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    jr z, jr_0b6_4957

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

jr_0b6_48ed:
    jr z, jr_0b6_4917

    jr z, jr_0b6_4874

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
    jr z, jr_0b6_488b

jr_0b6_48fd:
    jr z, jr_0b6_488e

jr_0b6_48ff:
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
    jr z, @+$2a

    jr z, jr_0b6_48af

    sbc a
    and b
    and c
    and d
    and e
    and h

jr_0b6_4917:
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    jr z, jr_0b6_48ce

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
    jr z, jr_0b6_48ed

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


    jp z, $cb28

    call z, $cecd
    rst $08
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

jr_0b6_4957:
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
    jr jr_0b6_49a8

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    dec bc
    jr nz, jr_0b6_49b9

    ld [hl+], a
    inc hl
    inc h
    jr z, jr_0b6_49c5

    daa
    dec h
    ld h, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0b6_49a8:
    nop
    nop
    dec b
    dec b
    dec b
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
    nop

jr_0b6_49b9:
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

jr_0b6_49c5:
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    dec b
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
    nop
    nop
    nop
    ld [bc], a
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
    nop
    inc bc
    inc bc
    nop
    inc bc
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    dec b
    dec b
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0606
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0201
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
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld bc, $0201
    ld bc, $0602
    dec b
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0502
    dec b
    ld b, $02
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld bc, $0101
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0301
    inc bc
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
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld bc, $0901
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    nop
    nop
    ld b, d
    ld a, [bc]
    add hl, bc
    ld a, h
    add e
    ld a, h
    add e
    cp h
    ld b, e
    cp [hl]
    ld b, c
    xor [hl]
    ld b, c
    xor $01
    or $01
    rst $30
    nop
    or d
    ld b, c
    cp a
    ld b, b
    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [rP1], a
    rst $38
    ld a, b
    rlca
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    cp $00

jr_0b6_4b10:
    db $fc
    nop
    db $fd
    nop
    db $fd
    nop
    ld d, a
    xor b
    ret nz

    ccf
    ld a, $00
    adc $00
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, [$fa04]
    inc b
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    ld sp, hl
    ld b, $01
    cp $fa
    nop
    sub a
    nop
    adc a
    nop
    sbc a
    nop
    rst $18
    nop
    sbc $01
    rst $38
    nop
    ld a, a
    nop
    ld e, a
    nop
    ld e, a
    nop
    ld e, a
    nop
    ld e, a
    nop
    ld [hl], b
    rrca
    add a
    ld a, b
    rra
    jr nz, jr_0b6_4b94

    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ld h, a
    jr jr_0b6_4b10

    db $10
    rst $28
    db $10
    db $e3
    inc e
    ldh [$1f], a
    ldh [$1f], a
    pop bc
    ld a, $07
    ld hl, sp-$2d
    inc c
    inc sp
    inc c
    di
    inc c
    ld [hl], e
    inc c
    ld a, e
    inc b
    ld a, e
    inc b
    ei
    inc b
    ei
    inc b
    jp hl


    ld d, $3e
    nop
    ld a, h
    inc bc
    ld [hl], b

jr_0b6_4b85:
    rrca
    ld b, b
    ccf
    adc a
    ld [hl], c
    dec sp
    add c
    ccf
    ld bc, $01bb
    cp d
    nop
    cp e
    nop

jr_0b6_4b94:
    sbc a

jr_0b6_4b95:
    nop
    rst $18
    nop
    rst $28
    nop
    ld l, a
    nop
    ld [hl], a
    nop
    ld a, e
    inc b
    ld l, h
    db $10
    db $10
    ld h, b
    and b
    ld b, b
    ld [hl], b
    nop
    ld h, b
    nop
    jr nz, jr_0b6_4bac

jr_0b6_4bac:
    jr nz, jr_0b6_4bae

jr_0b6_4bae:
    jr nz, jr_0b6_4bb0

jr_0b6_4bb0:
    rst $18
    jr nz, @+$01

    nop
    cp $01
    xor $11
    ld [$e014], a
    jr jr_0b6_4b85

    jr nc, jr_0b6_4bf7

    ret nz

    ld a, h
    add b
    db $fc
    nop
    rst $38
    nop
    rst $30
    ld [$00df], sp
    rst $28
    nop
    ld a, e
    add h
    ld a, d
    add l
    ld b, $80
    ld b, [hl]
    add b
    ld e, [hl]
    add b
    db $76
    add b
    inc bc
    ret nz

    ld [bc], a
    ret nz

    and d
    ld b, b
    and d
    ld b, b
    ld a, a
    add b
    rst $00
    jr c, jr_0b6_4b95

    rrca
    sbc $01
    rst $38
    nop
    db $ed
    nop
    push hl
    nop
    push hl
    nop
    ld [hl], l
    add b

jr_0b6_4bf2:
    dec [hl]
    ret nz

jr_0b6_4bf4:
    inc [hl]
    ret nz

    inc [hl]

jr_0b6_4bf7:
    ret nz

    ld [hl], $c0
    ld [hl], $c0
    ld c, $f0
    add c
    ld a, [hl]
    di
    nop
    or d
    ld b, b
    cp d
    ld b, b
    cp d
    ld b, b
    cp d
    ld b, b
    cp c
    ld b, b
    cp c
    ld b, b
    ld sp, hl
    nop
    db $fd
    nop
    db $dd
    jr nz, jr_0b6_4bf2

    jr nz, jr_0b6_4bf4

    jr nz, jr_0b6_4c1b

    db $fd
    rst $38

jr_0b6_4c1b:
    nop
    rst $38
    nop
    rst $38
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
    ld e, a
    nop
    rrca
    nop
    ldh [$1f], a
    ld sp, hl
    nop
    adc b
    nop
    ld c, b
    nop
    ret z

    nop
    ret z

    nop
    ret nz

    nop
    ret nz

    nop
    call nz, $e400
    nop
    call nz, $c400
    nop
    db $db
    inc b
    ld b, c
    cp [hl]
    ld a, d
    add h
    rst $20
    nop
    db $d3
    rrca
    and a
    rra
    rst $20
    rra
    rst $20
    rra
    rst $20
    rra
    rst $00
    ccf
    add a
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    jp Jump_000_033f


    rst $38
    inc bc
    rst $38
    jp $c33f


    ccf
    jp $c33f


    ccf
    pop bc
    ccf
    pop bc
    ccf
    pop hl
    rra
    pop hl
    rra
    and c
    ld e, a
    pop hl
    rra
    pop hl
    rra
    ld bc, $0f00
    nop
    rra
    nop
    ld a, a
    nop
    rst $38
    nop
    rlca
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    ld [hl], b
    rst $28
    ld [hl], b
    rst $28
    ld h, b
    rst $38
    ld l, e
    db $f4
    ld l, a
    ldh a, [$6f]
    ldh a, [$ef]
    ld [hl], b
    cp a
    ld [hl], b
    ccf
    ldh a, [$3f]
    ldh a, [$75]
    cp d
    ld [hl], h
    cp e
    ld [hl], h
    cp e
    inc e
    ei
    dec e
    ld a, [$789f]
    rra
    ld hl, sp+$1f
    ld hl, sp-$65
    ld a, h
    cp a
    ld e, h
    rst $08
    inc a
    rst $08
    inc a
    rst $08
    inc a
    rst $08
    inc a
    call $cd3e
    ld a, $cd
    ld a, $cf
    ld a, $87
    ld a, [hl]
    rlca
    cp $e7
    ld e, $c6
    ccf
    rst $00
    ccf
    rst $00
    ccf
    rst $00
    ccf
    jp $c33f


    ccf
    jp $e33f


    rra
    and d
    ld b, b
    ld [c], a
    nop
    ld [c], a
    nop
    ld [de], a

jr_0b6_4ce7:
    ldh [$c6], a
    jr c, jr_0b6_4ce7

    inc bc
    rst $28
    nop
    and $00
    rst $20
    nop
    rst $20
    nop
    di
    nop
    or a
    nop
    or a
    nop
    scf
    nop
    rla
    nop
    sub a
    nop
    rlca
    ld hl, sp+$18
    rlca
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
    nop
    nop
    nop
    nop
    ld [$8000], sp
    nop
    ld hl, sp+$00
    rst $38
    nop
    ret z

    nop
    ret z

    nop
    add sp, $00
    ld b, h
    add b
    ld b, h
    add b
    db $e4
    nop
    db $e4
    nop
    db $e4
    nop
    db $f4
    nop
    db $f4
    nop
    cp a
    ld b, b
    rrca
    ldh a, [$f2]
    nop
    ld a, [c]
    nop
    ld [hl], d
    nop
    ld [hl], d
    nop
    ld [hl], d
    nop
    ld [hl], d
    nop
    ld a, d
    nop
    ld a, [hl-]
    nop
    jr nc, jr_0b6_4d46

jr_0b6_4d46:
    ld sp, $7f00
    nop
    sbc b
    ld h, b
    ld hl, $0300
    rra
    rra

jr_0b6_4d51:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $18
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc de
    db $ec
    ld b, b
    cp a
    rst $38
    rst $38
    rst $38
    inc bc
    xor b
    nop
    jr z, jr_0b6_4d88

jr_0b6_4d88:
    inc h
    nop
    inc b
    nop
    inc b
    nop
    inc bc
    nop
    db $fc
    inc bc
    db $dd
    ld [bc], a
    ld [c], a
    add hl, de
    ld [$2cf1], sp
    pop de
    ld e, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$08f7], sp
    sub $29
    rst $30
    ld [$09f6], sp
    adc a
    ld [hl], e
    adc a
    ld [hl], a
    nop
    rst $38
    jp hl


    nop
    ld h, [hl]
    add hl, bc
    db $ed
    ld [bc], a
    sub $08
    ld h, l
    jr jr_0b6_4e04

    jr nc, jr_0b6_4d51

    ld h, b
    ld l, h
    add b
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    sbc a
    ld a, a
    add c
    ld a, a
    ret nz

    ccf
    ld bc, $22ff
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    jr nz, jr_0b6_4dd8

jr_0b6_4dd8:
    ld [hl+], a
    nop
    and d
    nop
    pop de
    jr nz, jr_0b6_4e1e

    nop
    inc hl
    nop
    jr nz, jr_0b6_4de4

jr_0b6_4de4:
    jr nz, jr_0b6_4de6

jr_0b6_4de6:
    jr nz, jr_0b6_4de8

jr_0b6_4de8:
    jr nc, jr_0b6_4dea

jr_0b6_4dea:
    jr nc, jr_0b6_4dec

jr_0b6_4dec:
    jr nc, jr_0b6_4dee

jr_0b6_4dee:
    ld sp, $f100
    nop
    ld sp, $e0c0
    rra
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc b
    nop
    ld [$0800], sp
    nop

jr_0b6_4e04:
    ld [$0800], sp
    nop
    ld [$ff00], sp
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, h
    nop
    ld b, h
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop

jr_0b6_4e1e:
    inc b
    nop
    ei
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld [de], a
    ld bc, $00fe
    add b
    nop
    nop
    rra
    adc a

jr_0b6_4e3d:
    ld a, a
    rst $38

jr_0b6_4e3f:
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
    ld [hl], c
    cp $ff
    rst $38
    rst $38
    rst $38
    db $e3
    rra
    ei
    rlca
    pop af
    rrca
    db $ed
    inc de
    cp l
    ld b, e
    ld a, a
    add c
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    ld a, a
    add c
    ld [hl], d
    adc l
    db $76
    adc c
    ld l, $d1
    rra
    ldh [$3e], a
    pop bc
    jr c, jr_0b6_4e3d

    jr c, jr_0b6_4e3f

    ld bc, $02fe
    db $fd
    ld [$10f7], sp
    rst $28
    rla
    ret z

    xor a
    db $10
    ld e, h
    inc hl
    db $f4
    dec bc
    db $d3
    inc l
    rlca
    jr c, @+$01

    nop
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
    ld hl, sp-$01
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    adc $01
    pop bc
    nop
    ld b, h
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    jr nz, jr_0b6_4eae

jr_0b6_4eae:
    jr nz, jr_0b6_4eb0

jr_0b6_4eb0:
    db $e4
    nop
    ld [hl], h
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc h
    nop
    ld b, $00
    xor [hl]
    nop
    and $00
    rst $20
    nop
    rrca
    ldh a, [rNR23]
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
    ld [bc], a
    nop
    jp c, $9f00

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
    pop bc
    nop
    jp $ee00


    ld bc, $00ff
    ld bc, $0900
    nop
    inc bc
    nop
    dec de
    nop
    ld e, c
    nop
    ld c, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld [hl], e
    inc c
    db $f4
    nop
    inc h
    nop
    ld b, e
    inc a
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
    db $eb
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $ec
    rst $38
    db $fc
    rst $38
    db $ec
    rst $38
    db $ec
    rst $38
    xor $ff
    xor $ff
    xor $ff
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
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
    ldh a, [rIE]
    ei
    db $fc
    cp $70
    db $fc
    nop
    ldh a, [rP1]
    pop hl
    nop
    add e
    nop
    add h
    add e
    adc h
    add e
    adc b
    rst $00
    adc d
    push bc
    sub d
    call $cd82
    add b
    call $cdc0
    ret nz

    call $c5ca
    jp z, $c0c5

    rst $00
    ret z

    rst $00
    ld [c], a
    call $cbe4
    db $e4
    jp $e7c8


    call nz, $c0e3
    rst $20
    ret nz

    rst $20
    pop hl
    and $e1
    and $e1
    and $f0
    rst $20
    ld [hl], b
    rst $20
    ld [hl], b
    rst $20
    ld h, d
    rst $30
    ld h, b
    rst $30
    ld h, d
    rst $30
    ld h, [hl]
    di
    db $76
    di
    db $76
    di
    ld h, b
    di
    ld [hl], b
    di
    add hl, sp
    ld a, [c]
    ld a, [hl-]
    ldh a, [$30]
    ld hl, sp+$30
    ld sp, hl
    pop af
    ei
    pop af
    ei
    adc a
    nop
    rst $08
    nop
    dec a
    nop
    rra
    nop
    ld b, $01
    ld bc, $0500
    nop
    inc b
    nop
    add l
    nop
    add l
    nop
    add l
    nop
    db $f4

Call_0b6_4fb7:
    nop
    ld a, $00
    rlca
    nop
    inc d
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld d, $00
    sub [hl]
    nop
    db $76
    add b
    ld h, c
    ld e, $05
    ld [bc], a
    ld b, $00
    ld b, $00
    ld c, $00
    ld c, $00
    ld c, $00
    ld b, $00
    ld b, $00
    rst $38
    nop
    inc bc
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
    jr z, jr_0b6_4fec

jr_0b6_4fec:
    jr z, jr_0b6_4fee

jr_0b6_4fee:
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
    inc b
    nop
    add h
    nop
    add h
    nop
    adc [hl]
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
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]

jr_0b6_5010:
    ret nz

    rst $38
    ld b, $ff
    jr c, @+$01

    ret nz

    rst $38
    add e
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
    ld a, b
    rst $38
    ld [hl], c
    cp $43
    db $fc
    ld c, $f0
    jr jr_0b6_5010

    add b
    ldh a, [rSB]
    ret nz

    ld [bc], a
    add b
    dec c
    nop
    ld a, $00
    ld a, a
    nop
    ccf
    ret nz

    rst $38
    ret nz

    set 6, h
    jp $cffc


    ldh a, [$ce]
    pop af
    ret z

    rst $30
    pop bc
    cp $c2
    db $fd
    push bc
    ld a, [$ffc0]
    ld hl, sp-$01
    rst $38
    rst $38
    rst $00
    rst $38
    ret nz

    rst $38
    cp $ff
    ld a, a
    rst $38
    ld h, e
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
    ldh [rIE], a
    rst $38
    nop
    cp $00
    db $fc
    nop
    ld hl, sp+$01
    di
    ld bc, $03f3
    rst $20
    rlca
    rst $08
    rrca
    adc a
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
    rst $38
    rst $38
    rst $38
    ld d, d
    ld bc, $0053
    ld d, h
    nop
    inc e
    nop
    call c, $fc00
    nop
    ld a, h
    nop
    dec bc
    inc b
    ld [bc], a
    ld bc, $0004
    nop
    nop
    nop
    nop
    ld b, b
    nop
    ret nz

    nop
    cp b
    ld b, b
    ld e, [hl]
    nop
    ld h, c
    nop
    ld b, b
    nop
    nop
    nop
    add d
    nop
    rrca
    nop
    rrca
    nop
    ccf
    ret nz

    inc de
    rrca
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    pop hl
    rlca
    add hl, sp
    rlca
    dec b
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    add hl, de
    rlca
    push de

jr_0b6_50df:
    inc bc
    dec b

jr_0b6_50e1:
    inc bc
    dec b

jr_0b6_50e3:
    inc bc
    dec b

jr_0b6_50e5:
    inc bc
    dec b

jr_0b6_50e7:
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    dec a
    inc bc
    jp Jump_000_0101


    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $01f0
    ldh a, [rSB]
    ldh a, [$31]
    ldh a, [rSTAT]
    ret nc

    ld de, $f1d0
    ldh a, [$f1]
    ldh a, [$f9]
    ld hl, sp-$05
    ld hl, sp-$41
    ld hl, sp-$08
    nop
    ld hl, sp+$00
    ret z

    jr nc, jr_0b6_50df

    jr nc, jr_0b6_50e1

    jr nc, jr_0b6_50e3

    jr nc, jr_0b6_50e5

    jr nc, jr_0b6_50e7

    jr nc, @-$30

    ld hl, sp-$34
    ldh a, [rNR23]
    ldh [$60], a
    add b
    jp nz, Jump_000_0602

    ld b, $0f
    rrca
    ccf
    ccf
    ld a, a
    ld b, $7f
    ld b, $fb
    ld b, $7a
    rlca
    jp c, $be27

    ld b, e
    ld a, [$f207]
    rrca
    rst $00
    dec sp
    adc c
    ld [hl], a
    dec e
    db $e3
    ld a, c
    add a
    pop af
    rrca
    ld d, c
    xor a
    ld b, c
    cp a
    add e
    ld a, a
    rlca
    rst $38
    inc bc
    rst $38
    pop hl
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ld bc, $e0ff
    rst $38
    db $fd
    cp $fc
    db $fc
    ld sp, hl
    nop
    di
    ld bc, $01f3
    rst $20
    inc bc
    rst $08
    rlca
    sbc a
    rrca
    ccf
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
    ld [$08ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    adc b
    rlca
    reti


    ld b, $79
    ld b, $11
    ld c, $19
    ld b, $18
    rlca
    dec sp
    inc b
    ccf
    nop
    ei
    inc b
    adc a
    ld [hl], b
    rst $20
    jr @-$1e

    rra
    cp $01
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    ld h, a
    jr jr_0b6_5232

    ld [bc], a
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    adc b
    ld [hl], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh a, [$03]
    db $e3
    rlca
    rst $00
    rrca
    rrca
    rra
    ccf
    sbc a
    ccf
    sbc a
    cp a
    sbc a
    rst $18
    sbc a
    rst $18
    rra
    rst $18
    rra
    rst $18
    rra
    rst $18
    rst $18
    ld e, a
    rst $18
    ld e, a
    rst $18
    ld e, a
    rst $18
    ld e, a
    add b
    ld e, a
    nop
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld c, [hl]
    ld e, a
    ld c, h
    ld e, a
    ld c, b
    ld e, [hl]
    ld b, d
    ld e, h
    ld b, h
    ld e, c
    ld d, e
    ld c, c
    ld d, e
    ld b, e
    ld b, a
    ld b, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld l, a
    ld c, a
    ld l, a
    rst $08
    ld l, a
    rrca
    ld l, a
    rrca
    xor a
    rrca
    xor a
    rrca
    xor a
    rrca
    xor a
    rrca
    xor a
    rrca
    xor a
    rrca
    cp a
    cp a
    cp a

jr_0b6_5232:
    cp a
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
    di
    rrca
    ei
    rrca
    ld hl, sp+$0f
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    pop af
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$03]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [$0d]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ret c

    daa
    ld hl, sp-$09
    xor $f0
    db $eb
    ldh a, [$fc]
    rst $30
    ld hl, sp-$09
    ld hl, sp-$0d
    ld hl, sp-$0d
    ld hl, sp-$0d
    ld hl, sp-$0f
    ld hl, sp-$0d
    ld hl, sp-$0d
    ld hl, sp-$0d
    ldh a, [$f3]
    ldh a, [$f3]
    ld hl, sp-$0d
    ldh a, [$f7]
    ldh a, [$f0]
    pop af
    ldh a, [$f0]
    di
    ldh a, [$f3]
    ldh a, [$f3]
    ld a, [c]
    pop af
    ld a, [c]
    pop af
    db $f4
    di
    db $f4
    di
    db $fd
    ld a, [c]
    push af
    ld a, [c]
    ld sp, hl
    or $f9
    or $f9
    or $fc
    ldh a, [$fa]
    pop af
    ld hl, sp-$09
    ld a, [$fff5]
    ldh a, [$fe]
    ldh a, [$fb]
    ldh a, [$fb]
    ldh a, [$fb]
    ldh a, [$f3]
    ld hl, sp-$0d
    nop
    inc bc
    di
    inc bc
    jp $8b13


    inc de
    dec sp
    jr nc, jr_0b6_5345

    pop af
    ei
    pop af
    ei
    pop af
    ei
    ld sp, hl
    ei
    ld sp, hl
    ei
    ei
    ei
    ld sp, hl
    ei
    ld sp, hl
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    ccf
    ei
    rlca
    ei
    set 6, e
    push de
    db $e3
    and a
    rrc [hl]
    db $db
    dec a
    sbc e
    dec a
    dec sp
    ld a, l
    ld a, e
    ld a, l
    ei
    ld sp, hl
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
    ret nz

    ccf
    pop bc
    ld a, $db
    inc h
    sbc a
    jr nz, jr_0b6_5358

    nop
    cp a
    nop
    cp a
    nop
    rst $08
    jr nc, @+$01

    nop
    cp a
    nop
    ccf
    nop
    cp a
    nop
    cp a
    nop
    di
    inc c
    cp e
    inc b
    cp e
    inc b
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ld a, e
    inc b
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    rst $38
    nop
    ld hl, sp+$07
    ld a, h

jr_0b6_5345:
    add e
    add b
    rst $38
    ld b, d
    cp a
    ld b, d
    cp a
    ld b, d
    cp a
    ld b, d
    cp a
    ld b, d
    cp a
    ld b, d
    cp a
    ld [bc], a
    rst $38
    ld b, e
    cp [hl]

jr_0b6_5358:
    inc bc
    cp $43
    cp [hl]
    ld bc, $19fe
    ld b, $43
    cp [hl]
    inc bc
    cp $43
    cp [hl]
    ld b, d
    cp a
    inc bc
    cp $12
    rst $28
    ld [hl], e
    adc [hl]
    ld h, e
    adc [hl]
    or d
    ld c, a
    sub c
    ld l, [hl]
    add b
    ld a, a
    or d
    ld c, a
    jp $033e


    cp $13
    cp $02
    rst $38
    inc de
    xor $63
    sbc [hl]
    inc sp
    adc $32
    rst $08
    inc sp
    adc $14
    rst $28
    ld [$13ff], sp
    cp $46
    rst $38
    adc [hl]
    rst $38
    ld e, [hl]
    cp a
    sbc a
    ld a, [hl]
    ld e, $ff
    ld e, $ff
    ld e, $ff
    rra
    cp $1e
    rst $38
    ld b, $ff
    ld a, [de]
    rst $30
    ld b, [hl]
    or e
    ld a, [de]
    rst $30
    ld c, $f7
    ld b, $ff
    ld e, $e7
    inc d
    rst $38
    ld [$08ff], sp
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc $ff
    cp $ff
    db $fc
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
    cp a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc l
    db $d3
    rst $38
    nop
    ld a, a
    add b
    ei
    nop
    rst $30
    nop
    jp c, Jump_0b6_6e00

    sub c
    ld a, [hl]
    add b
    jp nc, $f200

    nop
    sub $00
    sub d
    nop
    rst $38
    nop
    ld a, a
    add b
    ld [hl], d
    add b
    ld a, [c]
    nop
    sub d
    nop
    or b
    nop
    sub d
    nop
    ld a, a
    add b
    jp c, $b200

    nop
    sbc b
    nop
    sub b
    nop
    sub b
    nop
    nop
    rst $38
    ld a, a
    add b
    jp nc, $da00

    nop
    jp nc, $c200

    db $10
    ld a, a
    add b
    ld a, a
    add b
    di
    nop
    ld a, [$fa00]
    nop
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ei
    nop
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    ld d, l
    cp d
    ld l, a
    sub b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld l, l
    sub d
    ld [$7df7], sp
    add d
    cpl
    ret nc

    ld l, a
    sub b
    ld l, a
    sub b
    sbc l
    ld a, [c]
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    cpl
    ret nc

    nop
    rst $38
    ld l, a
    sub b
    ld l, a
    sub b
    db $dd
    and d
    sbc l
    ld [c], a
    add b
    rst $38
    ld a, a
    add b
    ld l, l
    sub d
    ld c, l
    or d
    rrca
    ldh a, [$80]
    rst $38
    ld [$4df7], sp
    or d
    dec b
    ld a, [$906f]
    add b
    rst $38
    and h
    db $db
    ld h, h
    sbc e
    ld h, h
    sbc e
    ret nc

    cp a
    ldh a, [rIE]
    cp $ff
    ld a, [hl-]
    rst $38
    rra
    rst $38
    ld c, $ff
    add hl, de
    rst $38
    and b
    rst $38
    ld b, b
    rst $38
    rst $38
    rst $38
    rst $38
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
    ccf
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    db $e4
    nop
    and h
    nop
    inc h
    nop
    and h
    nop
    inc h
    nop
    inc b
    nop
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    nop
    ld h, h
    nop
    ld h, b
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
    ld b, b
    nop
    ret nz

    inc bc
    nop
    ld bc, $0300
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld b, b
    nop
    nop
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    cp $00
    ret z

    nop
    ld c, c
    nop
    ret


    nop
    ld l, c
    nop
    ld l, c
    nop
    db $fd
    nop
    rst $38
    nop
    ld e, c
    nop
    jp z, $d900

    nop
    db $ec
    ld bc, $01fe
    rst $38
    nop
    db $ed
    nop
    db $fc
    ld bc, $01fe
    cp $01
    ld a, $c9
    cp $01
    cp a
    ld b, b
    rst $38
    nop
    ld a, a
    add b
    cp a
    ld b, b
    ld e, [hl]
    pop hl
    sbc a
    ld h, b
    cp a
    ld b, b
    cp a
    ld b, b

jr_0b6_5536:
    or a
    ld c, b
    ld a, [bc]
    db $fd
    scf
    ret z

    rst $10
    jr z, jr_0b6_5536

    ld [$ff00], sp
    ld hl, sp-$01
    ld a, d
    rst $38
    ld e, b
    rst $38
    ld a, [de]
    rst $38
    ld a, [de]
    rst $38
    cp d
    rst $38
    ei
    rst $38
    nop
    rst $38
    ld [$c4ff], sp
    rst $38
    ret z

    rst $38
    ld a, [$d2ff]
    rst $38
    sub d
    rst $38
    ld d, $ff
    and c
    ld e, [hl]
    nop
    rst $38
    ld e, [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    rlca
    rst $38
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
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld a, [$ffff]
    rst $38
    rst $18
    rst $38
    rst $20
    rst $38
    cp $ff
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    xor a
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
    jr nz, @+$01

Jump_0b6_55aa:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    or e
    ld c, b
    db $db
    nop
    reti


    nop
    ld de, $0100
    nop
    ld e, [hl]
    ld bc, $00d9
    sub e
    nop
    nop
    add d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    ld b, $00
    rlca
    nop
    ld l, a
    nop
    ld a, a
    add b
    ld a, a
    add b
    ld l, [hl]
    sub c
    cpl
    ret nc

    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    db $fd
    ld [bc], a
    ld a, a
    nop
    add b
    rst $38
    add hl, bc
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
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_0b6_55f8

jr_0b6_55f8:
    ld [hl-], a
    nop
    rst $38
    nop
    rst $38
    nop
    ld c, d
    nop
    xor [hl]
    nop
    cp $00
    rst $18
    jr nz, jr_0b6_5664

    and d
    rst $38
    nop
    halt

jr_0b6_560c:
    cp h
    nop
    rst $18
    jr nz, jr_0b6_566c

    and h
    dec h
    cp $d9
    ld h, $fb
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
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
    jr nz, @+$01

    rst $38
    nop
    rst $38
    nop
    ld b, c
    cp $fb
    inc b
    rst $38
    nop
    rst $38
    nop

jr_0b6_563c:
    rst $38
    nop
    ld d, a
    add sp, -$36
    dec a
    rst $20
    jr jr_0b6_563c

    ld [$8877], sp
    rst $10
    jr z, jr_0b6_560c

    ld a, $f7
    ld [$4bb4], sp
    cp d
    ld b, l
    ld a, [bc]
    push af
    add b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld a, [hl-]
    rst $38
    ld b, $ff
    nop
    rst $38
    db $10
    rst $38
    db $10
    rst $38

jr_0b6_5664:
    nop
    rst $38
    jr c, @+$01

    inc d
    rst $38
    nop
    rst $38

jr_0b6_566c:
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
    scf
    rst $38
    ld a, d
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    rst $30
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    push af
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    or e
    nop
    dec de
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld a, [$0000]
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
    sub b
    ld l, a
    add b
    ld a, a
    ret nc

    cpl
    ret c

    daa
    ret c

    daa
    add b
    ld a, a
    ret nz

    ccf
    ret c

    daa
    ret nc

    cpl
    ret nc

    cpl
    ret nc

    cpl
    add b
    nop
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
    ld b, a
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    ld c, h
    nop
    rst $38
    nop
    db $dd
    nop
    nop
    nop
    ld b, b
    nop
    add sp, $00
    jp hl


    nop
    rst $38
    nop
    rst $38
    nop
    ret


    nop
    push hl
    ld [$00fd], sp
    ld [$dcff], sp
    rst $38
    inc c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    sbc h
    rst $38
    ld bc, $80ff
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    jp nc, Jump_000_00ff

    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    db $ed
    ld [de], a
    jp z, $fd37

    ld [bc], a
    rst $38
    nop
    ld a, a
    add b
    ld l, a
    sub b
    inc d
    ei
    ld l, l
    sub d
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_0b6_57aa

    or b
    pop af
    ld c, $fb
    inc b
    rst $18
    jr nz, jr_0b6_57a2

    and b
    inc de
    db $ec
    inc b
    rst $38
    ld bc, $7dff
    rst $38
    inc sp
    rst $38
    scf
    rst $38
    ccf
    rst $38
    cpl
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    cpl
    rst $38
    ld l, l
    rst $38
    inc bc
    rst $38
    ld h, d
    rst $38
    rla
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld e, $e1
    rra
    ldh [$3f], a
    ret nz

    db $fc
    rst $38
    ld [hl], b
    rst $38
    adc h
    rst $38
    or e
    rst $38
    ld [$ffff], a
    rst $38
    ld a, a
    rst $38
    rst $30
    rst $38
    add sp, -$01
    rst $38
    rst $38
    cp $ff
    and b
    rst $38
    ld hl, sp-$01
    cp h
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    inc h
    nop
    jr nz, jr_0b6_5794

jr_0b6_5794:
    jr nz, jr_0b6_5796

jr_0b6_5796:
    nop
    inc b
    dec sp
    inc b
    inc b
    nop
    nop
    nop
    inc b
    nop
    inc b
    nop

jr_0b6_57a2:
    nop
    nop
    nop
    nop
    ld d, a
    nop
    ld b, h
    nop

jr_0b6_57aa:
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
    ld c, [hl]
    nop
    nop
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
    ld a, a
    add b
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    rst $38
    nop
    add c
    nop
    nop
    nop
    ld bc, $8100
    nop
    sub c
    nop
    rst $38
    nop
    rst $18
    nop

jr_0b6_57de:
    stop
    stop
    sub c
    nop
    sbc d
    nop
    rst $38
    nop
    rst $28
    db $10
    ld [hl-], a
    nop
    ld [hl], d
    nop
    ld [hl-], a
    nop
    or a
    nop
    db $fd

jr_0b6_57f3:
    ld [bc], a
    reti


    ld h, $bf
    nop
    xor $00
    ld a, a
    nop
    ld e, a

jr_0b6_57fd:
    jr nz, jr_0b6_57de

    jr nz, @-$20

    ld hl, $00ad
    push af
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    sbc [hl]
    ld h, c
    db $fd
    nop
    ld bc, $00ff
    rst $38
    ld b, b
    rst $38
    db $ec
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ccf
    ret nz

    jr c, jr_0b6_57f3

    or a
    ld c, b
    rst $38
    nop
    rst $38
    nop
    cp $01
    jr nc, jr_0b6_57fd

    ld a, b
    add a
    cp $01
    ld [hl], $c9
    ccf
    ret nz

    sbc a
    ldh [rLCDC], a
    rst $38
    and b
    rst $38
    ld l, a
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld [$5fff], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    rra
    rst $38
    ld e, a
    rst $38
    db $e3
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    db $f4
    rst $38
    add hl, hl
    rst $38
    ld d, b
    rst $38
    ld [hl], b
    rst $38
    ld a, b
    rst $38
    sbc l
    rst $38
    daa
    rst $38
    push hl
    rst $38
    rst $30
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
    ld h, h
    nop
    ld b, h
    nop
    inc b
    nop
    ld b, l
    nop
    rst $38
    nop
    ld b, b
    nop
    ld c, b
    nop
    ld b, b
    nop
    ld [$0800], sp
    nop
    inc c
    nop
    rst $38
    nop
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    add hl, bc
    nop
    adc e
    nop
    rst $18
    nop
    add c
    nop
    ld bc, $0100
    nop
    add c
    nop
    ld bc, $ff00
    nop
    cp $01
    db $10
    ld bc, $0110
    ld de, $1001
    ld bc, $0113
    db $fd
    inc bc
    inc hl
    ld bc, $0133
    ld hl, $3303
    ld bc, $0331
    db $fd
    inc bc
    db $fd
    inc bc
    ld sp, $2303
    inc bc
    daa
    inc bc
    daa
    inc bc
    or a
    inc bc
    ei
    rlca
    daa
    inc bc
    ld h, e
    rlca
    inc hl
    rlca
    ld d, e
    rlca
    rlc a
    rst $38
    rlca
    ld e, [hl]
    rlca
    ld l, c
    ld b, $c3
    inc b
    db $eb
    inc b
    xor a
    ld b, h
    ld [hl], a
    call Call_0b6_4fb7
    and a
    ld c, a
    rst $38
    rlca
    rst $30
    rrca
    rst $30
    rrca
    cpl
    rst $18
    rst $38
    rrca
    cp a
    rrca
    rst $38
    rrca
    rst $28
    rra
    ld l, a
    sbc a
    rrca
    rst $38
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    cpl
    rst $18
    rst $38
    rra
    rst $38
    rra
    rst $28
    rra
    rst $38
    rra
    rst $18
    ccf
    rra
    rst $38
    rst $18
    ccf
    rst $38
    ccf
    rst $18
    ccf
    rst $18
    ccf
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
    ld a, a
    rst $38
    cp a
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
    cp a
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
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
    cp $01
    dec e
    rst $38
    dec e
    rst $38
    jp z, Jump_000_20ff

    rst $38
    nop
    rst $38
    jr z, @+$01

    ld a, [$c6ff]
    rst $38
    ret nz

    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
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
    rst $38
    ld a, a
    rst $38
    ld a, a
    cp $7f
    db $fc
    ld a, a
    ei
    ld a, l
    db $fd
    ld a, e
    ld sp, hl
    ld [hl], a
    di
    ld l, a
    rst $00
    ld a, a
    xor a
    ld e, a
    rst $18
    ccf
    cp a
    ld a, a
    rst $38
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $fd
    cp $fd
    cp $fd
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
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ld sp, hl
    cp $ff
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$09
    ld hl, sp-$05
    db $fc
    ld sp, hl
    cp $fc
    rst $38
    cp $ff
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ld a, [c]
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ld a, [c]
    db $ed
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [$df], a
    ldh [$c1], a
    cp $df
    ldh [$df], a
    ldh [$df], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    db $fd
    jp nz, $fec1

    and d
    rst $18
    cp a
    ret nz

    cp l
    jp nz, $c2bd

    cp a
    ret nz

    rst $38
    add b
    rst $18
    and b
    jp $84fc


    rst $38
    ei
    add h
    ld a, [$4885]
    or a
    ld b, h
    cp a
    inc d
    rst $38
    pop af
    rst $38
    rst $38
    rst $38
    or e
    rst $38
    or b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    db $f4
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
    sub a
    rst $38
    inc b
    rst $38
    add b
    rst $38
    ld a, a
    rst $38
    ld l, a
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ld bc, $80ff
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    xor a
    rst $38
    rra
    rst $38
    cp $c1
    cp $c1
    cp [hl]
    pop bc
    cp [hl]
    pop bc
    cp a
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    db $fd
    add d
    rst $38
    add b
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    rst $38
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
    db $10
    rst $38
    db $10
    rst $38
    db $10
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
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    sbc a
    ld h, b
    ld a, [hl+]
    push af
    cp $01
    rst $38
    nop
    rst $38
    nop
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    sub b
    ld l, a
    ld h, c
    rst $38
    ld b, e
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld b, $ff
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    inc b
    rst $38
    xor a
    rst $38
    dec b
    rst $38
    inc b
    rst $38
    ldh a, [rIF]
    ei
    inc b
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $10
    rst $38
    jp hl


    rla
    cp $01
    cp $01
    xor $11
    rst $28
    db $10
    rst $28
    db $10
    add sp, $17
    inc b
    rst $38
    daa
    rst $38
    ld h, c
    rst $38
    ld h, c
    rst $38
    ld h, c
    rst $38
    ld hl, $21ff
    rst $38
    inc hl
    rst $38
    rst $30
    rst $38
    daa
    rst $38
    inc bc
    rst $38
    rla
    rst $38
    ccf
    rst $38
    ld a, e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    add hl, bc
    rst $38
    adc b
    rst $38
    sbc b
    rst $38
    nop
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
    ret nc

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
    ldh a, [rIE]
    rst $38
    nop
    rst $38
    nop
    cp $00
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
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $30
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
    nop
    or $00
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
    add b
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    dec b
    rst $38
    rrca
    rst $38
    rst $08
    rst $38
    cp a
    rst $38
    nop
    rst $38
    nop
    rst $38
    sbc b
    rst $38
    nop
    rst $38
    ld hl, $15de
    ld [$b847], a
    rlca
    ld hl, sp+$06
    ld sp, hl
    ld b, $f9
    nop
    rst $38
    ld d, b
    rst $38
    ld [hl], c
    rst $38
    nop
    rst $38
    jr nz, @+$01

    cp $01
    nop
    rst $38
    jr nz, @+$01

Call_0b6_5c24:
    jr nz, @+$01

    ld hl, $f7ff
    rst $38
    rlca
    rst $38
    ld bc, $01ff
    rst $38
    cp [hl]
    ld b, c
    db $fc
    inc bc
    rst $30
    rrca
    ld b, [hl]
    rst $38
    ld e, [hl]
    rst $38
    rst $38
    rst $38
    ld b, a
    rst $38
    add a
    rst $38
    rra
    rst $38
    rrca
    rst $38
    adc a
    rst $38
    rst $08
    rst $38
    rst $08
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rrca
    rst $38
    add c
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    inc b
    rst $38
    ld [$04ff], sp
    rst $38
    ret nz

    rst $38
    db $e3
    rst $38
    push af
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    db $fd
    nop
    sub $00
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    or l
    nop
    db $eb
    nop
    or a
    nop
    db $eb
    nop
    rst $30
    nop
    db $eb
    nop
    push af
    nop
    db $eb
    nop
    jp nc, Jump_000_002d

    rst $38
    push af
    nop
    rst $28
    nop
    rst $10
    nop
    rst $10
    nop
    rst $30
    nop
    rst $28
    nop
    rst $28
    nop
    rst $38
    nop
    rst $28
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $18
    nop
    cp a
    nop
    rst $18
    nop
    rst $38
    nop
    cp e
    inc b
    rst $38
    nop
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    inc bc
    rst $38
    rla
    rst $38
    rla
    rst $38
    sub a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr nz, @+$01

    jr z, @+$01

    ld l, $ff
    ccf
    rst $38
    adc b
    ld a, a
    add b
    ld a, a
    ld bc, $01ff
    rst $38
    ld b, c
    rst $38
    ld h, c
    rst $38
    ld h, e
    rst $38
    ld a, [c]
    rst $38
    rst $38
    rst $38
    ld [c], a
    rst $38
    ld [c], a
    rst $38
    ret nc

    rst $28
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
    add h
    rst $38
    nop
    rst $38
    ld bc, $f0ff
    rrca
    nop
    rst $38
    ld bc, $0fff
    rst $38
    rra
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
    ldh [$1f], a
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
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
    jr jr_0b6_5d83

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0b6_5d93

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0b6_5da3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0b6_5db3

    ld [hl-], a

jr_0b6_5d83:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0b6_5dc3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_0b6_5d93:
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

jr_0b6_5da3:
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

jr_0b6_5db3:
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

jr_0b6_5dc3:
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
    sbc h
    xor b
    xor c
    sbc h
    sbc h
    sbc h

Jump_0b6_5dff:
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
    sbc h
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
    rst $10
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    rst $10
    db $e4
    push hl
    rst $10
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
    jr jr_0b6_5e8c

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0b6_5e9c

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0b6_5eac

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0b6_5ebc

    ld [hl-], a

jr_0b6_5e8c:
    inc sp
    inc [hl]
    dec [hl]
    ld h, $00
    dec b
    nop
    dec b
    dec b
    dec b
    nop
    nop
    nop
    nop
    dec b
    dec b

jr_0b6_5e9c:
    dec b
    nop
    nop
    dec b
    dec b
    dec b
    rlca
    rlca
    rlca
    rlca
    rlca
    dec b
    dec b
    dec b
    nop
    dec b

jr_0b6_5eac:
    dec b
    dec b
    dec b
    dec b
    nop
    nop
    dec b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b

jr_0b6_5ebc:
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    dec b
    dec b
    dec b
    ld [bc], a
    inc b
    inc b
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    inc b
    inc b
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

Call_0b6_5f00:
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    dec b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    dec b
    inc b
    inc b
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0102
    ld [bc], a
    nop
    nop
    dec b
    inc b
    inc b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    nop
    nop
    dec b
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    nop
    nop
    dec b
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    nop
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    ld bc, $0606
    ld b, $05
    ld b, $02
    ld bc, $0602
    ld c, $0c
    dec bc
    rrca
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0e
    dec c
    dec c
    ld c, $0e
    ld c, $0e
    dec c
    ld c, $0e
    dec bc
    rrca
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0d
    ld [$0e08], sp
    ld c, $0e
    ld c, $0e
    ld c, $0e
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    ld [$0808], sp
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [hl], e
    adc h
    pop af
    ld c, $f9
    ld b, $f8
    rlca
    ld a, c
    add [hl]

jr_0b6_5fda:
    ld a, c
    add [hl]
    db $fc
    inc bc
    call c, Call_000_0b23
    nop
    rlca
    nop
    inc bc
    nop

jr_0b6_5fe6:
    ld [bc], a
    ld bc, $0001
    ld bc, $0100
    nop
    ld b, c
    nop
    rst $18
    jr nz, jr_0b6_5fda

    jr jr_0b6_5fe6

    ld c, $7c
    inc bc
    xor $11
    ld a, a
    nop
    ei
    inc b
    ld a, [hl]
    ld bc, $0000
    ld [bc], a
    nop
    db $10
    ldh [rNR43], a
    inc e
    inc b
    inc bc
    nop
    nop
    ld b, $00
    inc bc
    nop
    ld a, [bc]
    nop
    ld a, [bc]
    nop
    ld [bc], a
    nop
    ld bc, $0100
    nop
    ld e, [hl]
    nop
    nop
    nop
    rlca
    rrca
    ld c, $07
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    rlca
    inc bc
    rlca
    nop
    rlca
    rlca
    nop
    call Call_000_3e32
    pop bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    ei
    inc b
    rst $30
    ld [$20df], sp
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
    ld a, [$b805]
    ld b, a
    cp e
    ld b, h
    or e
    ld c, h
    add a
    ld a, b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    rrca
    ldh a, [rIF]
    ldh a, [$8f]
    ld [hl], b
    adc a
    ld [hl], b
    ld c, $f1
    dec b
    ld a, [$00ea]
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $ec
    db $10
    db $e4
    db $10
    sub $20
    ld a, [hl]
    nop
    cp $00
    db $fd
    ld [bc], a
    ld a, l

jr_0b6_6085:
    ld [bc], a
    ld a, l
    ld [bc], a
    ld a, l
    ld [bc], a
    ld l, l
    ld [bc], a
    ld a, a
    nop
    ld a, a
    nop
    ld a, e
    nop
    ld a, a
    nop
    ei
    nop
    ld [hl], l
    nop
    ld [hl], l
    nop
    ld [hl], l
    nop
    ld [hl], b
    ld bc, $01f2
    inc c
    di
    dec c
    ld a, [c]
    sbc l
    ld h, d
    adc c
    db $76
    sub c
    ld l, [hl]
    rst $30
    ld [$29d6], sp
    and $19
    xor $11
    adc $31
    sbc $21
    sbc $21
    sbc [hl]
    ld h, c
    sbc [hl]
    ld h, c
    jr c, jr_0b6_6085

    ld a, h
    add e
    add [hl]
    nop
    add a
    nop
    ld a, [de]
    inc b
    sbc [hl]
    nop
    sbc [hl]
    nop
    sbc [hl]
    nop
    rst $38
    nop
    rst $18
    nop
    adc [hl]
    ld [hl], b
    adc b
    ld [hl], h
    add c
    ld a, h
    jp nz, $c63d

    dec a
    ld [c], a
    dec e
    ld [hl], e
    dec c
    ld [hl], d
    dec c
    ld a, [hl-]
    dec b
    ld a, [hl]
    ld bc, $01bc
    cp d
    ld bc, $02f5
    xor $01
    rst $28
    nop
    rst $18
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    di
    db $fd
    di
    db $fc
    rst $30
    ld hl, sp-$0d
    sbc h
    pop af
    sbc $f2
    db $dd
    di
    call c, Call_000_1cf3
    ei
    inc b
    ei
    call nz, $e4fb
    ei
    db $e4
    ei
    db $ec
    ld sp, hl
    xor $f9
    xor $f9
    xor $f9
    adc [hl]
    db $fd
    ld [c], a
    db $fd
    ld [bc], a
    db $fd
    ld a, [$fefd]
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $20
    db $fc
    rlca
    cp $05
    cp $e1
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $fb
    rst $38
    ld a, [$fbff]
    rst $38
    ei
    ei
    inc b
    ld e, l
    ld [bc], a
    dec e
    ld [bc], a
    inc a

jr_0b6_6147:
    inc bc
    ld e, [hl]
    ld bc, $016e
    ld l, d
    ld bc, $0172
    ld [c], a
    ld bc, $01c6
    ld b, d
    add c
    add [hl]
    ld bc, $00c3
    add a
    nop
    rlca
    nop
    adc e
    nop
    sub e
    nop
    ld d, e
    nop
    ld [hl], e
    nop
    jp nz, $d301

    nop
    rst $00
    nop
    rst $08
    nop
    ld c, l
    nop
    or [hl]
    ld c, c
    db $f4
    dec bc
    add sp, $17
    sbc h
    ld h, e
    sbc h
    ld h, e
    sbc h
    ld h, e
    cp b
    ld b, a
    jr c, jr_0b6_6147

    rst $00
    nop
    adc a
    nop
    ld c, a
    nop
    rrca
    nop
    ld e, [hl]
    ld bc, $005f
    or a
    nop
    and e
    nop
    rst $20
    nop
    rst $28
    nop
    xor a
    ld b, b
    db $ed
    nop
    ld a, a
    add b
    ld a, a
    add b
    cp $01
    sub $01
    or $01
    db $e4
    inc de
    db $fc
    inc bc
    call c, Call_0b6_7823
    rlca
    ld hl, sp+$07
    ld a, b
    rlca
    ld [hl], b
    rrca
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    pop hl
    rra
    pop hl
    rra
    pop hl
    rra
    jp $c33f


    ccf
    ld b, a
    cp a
    ld b, a
    cp a
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
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    rlca
    ld hl, sp+$7c
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a

jr_0b6_61e5:
    rst $38
    ccf
    rst $38
    ccf

jr_0b6_61e9:
    rst $38
    rra
    rst $38

jr_0b6_61ec:
    rrca
    rst $38

jr_0b6_61ee:
    nop
    rst $38

jr_0b6_61f0:
    ret nz

    inc a
    ret nz

jr_0b6_61f3:
    inc a
    ret nz

    inc a
    ld b, b

jr_0b6_61f7:
    cp h
    ld d, d
    xor h
    ld d, b
    xor [hl]
    ld b, c
    cp [hl]
    ldh a, [$ce]
    ret nz

    nop
    ret nz

    nop
    and b

jr_0b6_6205:
    ld h, b
    and b
    ld h, b
    and b

jr_0b6_6209:
    ld h, b
    jr nz, jr_0b6_61ec

    jr nz, jr_0b6_61ee

    jr nz, jr_0b6_61f0

    sub b
    ld [hl], b
    add b

jr_0b6_6213:
    ld h, b
    and b
    ld h, b

jr_0b6_6216:
    sub b
    ld [hl], b

jr_0b6_6218:
    sub b

jr_0b6_6219:
    ld [hl], b

jr_0b6_621a:
    sub b
    ld [hl], b
    sub b
    ld [hl], b
    sub b
    ld [hl], b
    ret nz

    jr nc, jr_0b6_61f3

    jr nc, jr_0b6_61e5

jr_0b6_6225:
    jr nc, jr_0b6_61f7

jr_0b6_6227:
    jr nc, jr_0b6_61e9

    jr nc, jr_0b6_6213

jr_0b6_622b:
    jr c, jr_0b6_6205

    jr c, jr_0b6_61f7

    jr c, jr_0b6_6209

    jr c, jr_0b6_6213

    jr jr_0b6_6225

    jr jr_0b6_6227

    jr jr_0b6_6219

    jr jr_0b6_622b

    jr jr_0b6_62a1

    sbc h
    ld h, h
    sbc h
    ld l, h
    sbc h
    ld l, b
    sbc h
    ld a, b
    adc h
    ld a, b
    adc h
    jr nc, jr_0b6_6216

    jr c, jr_0b6_6218

    jr nc, jr_0b6_621a

    jr @-$12

    ld a, [de]
    xor $13
    rst $28
    inc sp
    rst $08
    inc a
    add $3c
    add $be
    call nz, $e69a
    inc e
    ld h, [hl]
    inc e
    ld h, [hl]
    add hl, sp
    ld b, a
    add hl, de
    ld h, a
    add hl, de
    ld h, a
    dec e
    ld h, e
    ld e, h
    ld h, e
    ld e, a
    ld h, e
    ld e, l
    ld h, d
    rrca
    jr nc, jr_0b6_6292

    jr nz, jr_0b6_62b4

    nop
    cpl
    db $10
    rrca
    jr nc, jr_0b6_628a

    jr nc, jr_0b6_62ac

    jr nc, jr_0b6_62ae

    jr nc, jr_0b6_62b0

    ld sp, $312f
    rra
    ld bc, $011f
    rra
    inc bc

jr_0b6_628a:
    rra
    inc bc
    ccf
    inc sp
    rra
    inc de
    inc c
    ccf

jr_0b6_6292:
    inc c
    ccf
    ld [$143f], sp
    ccf
    db $10
    ccf
    db $10
    ccf
    db $10
    ccf
    nop
    ccf
    ld h, b

jr_0b6_62a1:
    ccf
    ld h, b
    ccf
    nop
    ld a, a
    nop
    ld a, a
    ld b, b
    ld a, a
    add b
    ld a, a

jr_0b6_62ac:
    add b
    ld a, a

jr_0b6_62ae:
    nop
    rst $38

jr_0b6_62b0:
    rst $38
    rst $38
    rst $38
    rst $38

jr_0b6_62b4:
    rst $38
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
    add b
    nop
    rlca
    ld hl, sp-$68
    rst $38
    add hl, sp
    rst $38
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
    nop
    rst $38
    ld [hl], a
    adc b
    rst $38
    nop
    sub d
    ld l, l
    rst $38
    nop
    rst $38
    nop
    db $eb
    inc d
    add b
    ld a, a
    cp e
    ld b, h
    cp $01
    cp a
    ld b, b
    xor [hl]
    ld d, c
    rst $38
    nop
    rst $38
    nop
    rlca
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    ldh a, [rP1]
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, h
    add b
    ld a, [hl]
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

    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$01
    cp $11
    xor $18
    rst $28
    ld bc, $00fe
    nop
    ld b, b
    nop
    nop
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    db $10
    ld hl, sp+$70
    ld a, b
    ldh a, [$f8]
    ld [$04fc], sp
    call c, Call_0b6_5c24
    and h
    sbc a
    db $e3
    adc a
    di
    adc a
    di
    rst $08
    pop af
    rst $00
    ld hl, sp+$47
    ld a, b
    ld h, a
    ld e, b
    ld h, a
    ld e, b
    di
    adc h
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add sp, -$01
    rrca
    ldh a, [$3c]
    jp $c23d


    dec d
    ld [$ff42], a
    ld [bc], a
    rst $38
    jr z, @+$01

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
    ldh a, [rIF]
    ld [$c0ff], sp
    rst $38
    ld bc, $06ff
    rst $38
    ld b, $ff
    ld [hl+], a
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
    cp $ff
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    inc b
    ei
    ld [$60f7], sp
    sbc a
    ld b, d
    cp l
    ld [de], a
    db $fd
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld a, [$feff]
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    db $fd
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
    rlca
    ld hl, sp+$00
    rst $38
    nop
    rst $38

Jump_0b6_63e0:
    add b
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    db $eb
    db $10
    db $ed
    db $10
    rst $28
    db $10
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    xor [hl]
    ld d, c
    rst $38
    nop
    rst $38
    nop
    ld a, [hl]
    add c
    inc e
    db $e3
    db $fd

jr_0b6_6407:
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    ld a, e
    add h
    ld a, [$fa04]
    inc b
    ld [hl-], a
    call z, Call_000_0cf2
    ld [hl], d
    adc h
    inc sp
    call z, $0ef1
    pop af
    ld c, $0e
    nop
    ld c, $00
    adc h
    ld [bc], a
    xor h
    ld [bc], a
    db $ec
    ld [bc], a
    db $fc
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ld sp, hl
    ld b, $f9
    ld b, $f8
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld a, b
    add a
    jr c, jr_0b6_6407

    nop
    rst $38
    jr nz, @-$1f

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
    ld [bc], a
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    nop
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
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    ld a, a
    adc a
    rst $38
    rrca
    rst $38
    rrca
    ld a, a
    adc a
    rst $38
    rrca
    cp $0f
    ei
    rrca

jr_0b6_6484:
    ld hl, sp+$0f
    pop af
    rrca
    db $fd
    rrca
    db $fc
    rrca
    ld hl, sp+$0f
    sub b
    ld a, a
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    ld [$80ff], sp
    rst $38
    nop
    rst $38
    db $10
    rst $38
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    pop bc
    ld a, $40
    cp a
    call nz, $b13f
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    inc sp
    rst $38
    ccf
    rst $38
    dec hl
    rst $38
    ei
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    xor $ff
    cp $ff
    rst $28
    rst $38
    ld c, [hl]
    rst $38
    adc h
    rst $38
    xor [hl]
    rst $38
    ld l, [hl]
    rst $38
    rrca
    rra
    rrca
    rra
    rrca
    rra
    rrca
    rra
    rrca
    rra
    adc a
    rra
    rra
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
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    cp $01
    ld [$ca15], a
    dec [hl]
    rst $28
    db $10
    rst $20
    jr jr_0b6_6484

    ld a, b
    adc a
    ld [hl], b
    rst $38
    nop
    ld a, a
    add b
    rrca
    ldh a, [$6f]
    sub b
    ld a, e
    add b
    ei
    nop
    ldh [rP1], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    ld h, b
    nop
    ld b, b
    nop
    ldh [rP1], a
    ld a, b
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    db $ec
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
    nop
    nop
    add b
    ld bc, $01c0
    ldh a, [rSB]
    ld e, d
    ld hl, $23dc
    ret nc

    cpl
    ld h, b
    sbc a
    pop de
    ld l, $38
    rst $00
    ld l, b
    sub a
    dec a
    jp nz, $f708

    ld [$00f7], sp
    rst $38
    nop
    rst $38
    nop
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    ld d, b
    xor a
    rst $38
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
    rst $30
    rst $38
    ld e, a
    rst $38
    db $db
    rst $38
    ld sp, hl
    rst $38
    add hl, hl
    rst $38
    ld bc, $10ff
    rst $38
    ld c, b
    rst $38
    ld [$0eff], sp
    rst $38
    jr nc, @+$01

    nop
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
    rst $18
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    or $ff
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push hl
    rst $38
    or b
    rst $38
    pop de
    rst $38
    or a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ret c

    rst $38
    ld a, e
    rst $38
    ld a, e
    rst $38
    rst $38
    rst $38
    ld e, l
    rst $38
    rra
    rst $38
    add hl, de
    rst $38
    jr c, @+$01

    jr nc, @+$01

    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ret nc

    rst $38
    ret z

    rst $38
    cp h
    rst $38
    call z, $feff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fc
    inc bc
    jp $d100


    nop
    rst $38
    nop
    ld a, [c]
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    cp a
    ld b, b
    ret nc

    nop
    ret nc

    nop
    rst $38
    nop
    rst $30
    nop
    sub l
    nop
    or e
    nop
    rra
    nop
    rlca
    nop
    inc e
    nop
    ld e, $00
    rra
    nop
    nop
    nop
    ld bc, $1f00
    nop
    ld [$0800], sp
    nop
    dec a
    nop
    ccf
    nop
    jr z, jr_0b6_6626

jr_0b6_6626:
    ld l, [hl]
    nop
    ld [hl], a
    ld [$00f8], sp
    cp $00
    rst $18
    jr nz, jr_0b6_665b

    ld a, [hl+]
    inc [hl]
    dec hl
    dec [hl]
    ld a, [hl+]
    inc [hl]
    dec hl
    or [hl]
    xor c
    di
    db $ec
    pop af
    xor $73
    ld l, h
    ld [hl-], a
    dec l
    ld [hl], e
    ld l, h
    ld [hl], e
    ld l, h
    inc sp
    inc l
    inc de
    inc c
    ld [hl-], a
    dec l
    dec de
    inc b
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld [hl], b

jr_0b6_665b:
    rst $38
    ldh a, [rIE]
    or b
    rst $38
    rst $38
    sbc b
    rst $08
    ld hl, sp-$05
    call z, $fccf
    rst $38
    cp $ff
    ld a, [$f9ff]
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    ld a, [$fbfd]
    db $fc
    ei
    db $fc
    cp $fd
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
    cp $fd
    cp $fd
    ld a, [hl]
    db $fd
    ld a, l
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
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    cpl
    rst $18
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $28
    rst $00
    ccf
    add a
    ld a, a
    rlca
    rst $38
    ccf
    rst $00
    rra
    rst $20
    dec de
    rst $20
    rra
    db $e3
    rla
    db $eb
    ld bc, $15ff
    db $eb
    dec h
    db $db
    ld sp, $18cf
    rst $20
    ld a, $c1
    ld a, a
    add b
    di
    inc c
    rst $38
    nop
    rst $38
    nop
    nop

jr_0b6_66d1:
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    adc b
    rst $38
    db $fc
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
    rst $38
    rra
    nop
    sbc [hl]
    nop
    cp $00
    rst $38
    nop
    cp $00
    cp $00
    push de
    ld a, [hl+]
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    ld l, [hl]
    nop
    ld a, d
    nop
    rst $38
    nop
    ld h, b
    nop
    ld [hl], c
    nop
    db $dd
    jr nz, @+$01

    nop
    ldh [rP1], a
    db $f4
    nop
    cp $00
    ld h, b
    nop
    ld b, b
    nop
    nop
    dec e
    nop
    rla
    nop
    inc de

jr_0b6_6726:
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    add b
    ld d, $e9
    ld [$c408], sp
    jr c, jr_0b6_66d1

    ld h, b
    sbc h
    ld h, b
    sbc b
    ld h, h
    sbc b
    ld h, h
    sbc h
    ld h, b
    sbc h
    ld h, b
    jr jr_0b6_6726

    inc bc
    rst $38
    inc e
    ldh [$5d], a
    and c
    ld e, a
    and e
    ld e, a
    and e
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec b
    ld a, [$f50a]
    dec b
    ld a, [$b54a]
    nop
    rst $38
    ld [bc], a
    db $fd
    dec b
    ld a, [$f50a]
    dec d
    ld [$d52a], a
    ld d, l
    xor d
    ld a, [hl+]
    push de
    sub l
    ld [$d5aa], a
    push de
    ld [$f5ca], a
    push af
    ld [$f5ea], a
    ld [hl], l
    ld a, [$fdf2]
    db $fd
    ld a, [$fcbb]
    ld sp, hl
    cp $cc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    add a
    db $fc
    rst $00
    db $fc
    rst $20
    cp $e7
    cp $e6
    rst $38
    or $ff
    or $ff
    or $ff
    cp $ff
    rst $38
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
    cp $7f
    cp $ff
    cp $fe
    rst $38
    cp $ff
    cp $ff
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
    rst $38
    rst $38
    ld [hl], a
    rst $38
    sbc e
    ld h, a
    ld c, $f1
    dec b
    ld a, [$ff00]
    ld [bc], a
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
    pop de
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
    rra
    rst $38
    ccf
    nop
    jr nc, jr_0b6_67f6

jr_0b6_67f6:
    or b
    nop
    rst $30
    nop
    rla
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $20
    nop
    db $ed
    ld [bc], a
    ld a, b
    add a
    call c, $ff03
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    inc d
    inc d
    inc d
    inc d
    nop
    ld bc, $7f04
    inc b
    ld a, a
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
    dec b
    dec b
    dec b
    dec b
    dec c
    ld a, [bc]
    inc l
    dec hl
    dec a
    ld a, [hl-]
    inc l
    dec hl
    inc a
    dec sp
    ld a, l
    ld a, d
    ld a, h
    ld a, e
    ld a, b
    ld a, b
    ld l, e
    ld l, e
    ld [c], a
    ld [c], a
    ld [$0008], sp
    jr z, jr_0b6_6843

jr_0b6_6843:
    jr z, jr_0b6_6845

jr_0b6_6845:
    ld a, [hl+]
    nop
    inc hl
    nop
    and e
    nop
    rst $28
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    ld bc, $20ff
    rst $18
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    dec d
    ld [$55aa], a
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    ld [$d515], a
    ld a, [hl+]
    xor e
    ld d, h
    ld d, l
    xor d
    xor e
    ld d, h
    ld d, l
    xor d
    xor e
    ld d, h
    ld d, a
    xor b
    xor e
    ld d, h
    ld e, a
    and b
    push af
    ld a, [bc]
    ld d, b
    xor a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec bc
    db $f4
    ccf
    ret nz

    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    add b
    cp a
    ret nz

    rst $18
    ldh [$df], a
    ldh [$7f], a
    ldh [$ef], a
    ldh a, [$7f]
    ldh a, [$bf]
    ldh a, [$bf]
    ld hl, sp-$65

jr_0b6_68af:
    db $fc
    rst $18
    ld hl, sp-$21
    db $fc
    ld l, l
    cp $6e
    rst $38
    and [hl]
    rst $38
    ld [hl], a
    rst $38
    db $d3
    rst $38
    ld a, e
    rst $38
    adc a
    ld a, c
    adc a
    ld a, c
    add [hl]
    ld a, l
    adc a
    ld [hl], h
    add a
    ld a, [hl]
    ld b, d
    cp a
    rst $28
    sbc a
    rst $38
    rst $38
    ret nz

    rst $38
    ld d, b
    rst $38
    rst $38
    rst $38
    db $eb
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
    inc b
    rst $38
    sbc b
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
    nop
    rst $38
    rst $38
    nop
    cp $00
    sub $28
    sbc [hl]
    ld h, b
    ret nc

    jr nz, jr_0b6_68af

    ld b, b
    rra
    ldh [$e0], a
    nop
    ldh [rP1], a
    db $fc
    nop
    add $00
    add h
    nop
    push hl
    nop
    or $00
    ccf
    ccf
    ld [$0008], sp
    nop
    nop
    nop
    nop
    rst $38
    add l
    rst $38
    add b
    rst $38
    add h
    rst $38
    push bc
    push bc
    add c
    add c
    ld b, $06
    rrca
    rrca
    rst $38
    rst $38
    ld h, c
    sbc a
    rla
    jp hl


    rst $38
    ld bc, $01ff
    pop af
    rrca
    di
    dec c
    ld a, a
    add e
    nop
    nop
    ld a, [$02fa]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [hl+], a
    call c, Call_0b6_7c02
    ld [bc], a
    call z, $8422
    nop
    ld [bc], a
    rra
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    jr nz, @+$01

    and b
    rst $38
    ld [hl+], a
    db $fd
    ld d, b
    xor a
    cp d
    ld b, l
    ld d, a
    xor b
    xor e
    ld d, h
    ld d, a
    xor b
    xor a
    ld d, b
    ld e, a
    and b
    cp a
    ld b, b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    cp a
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
    db $fc
    nop
    di
    nop
    cp $01
    ld d, b
    xor a
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
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
    ld a, a
    add b
    cp a
    ret nz

    cp a
    ret nz

    rst $38
    ret nz

    rst $18
    ldh [rIE], a
    ldh [rIE], a
    ldh [$ef], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    ld b, c
    rst $38
    xor l
    rst $38
    sbc $ff
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
    ld b, d
    rst $38
    ld a, [hl]
    rst $38
    pop af
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    cp [hl]
    ld bc, $0001
    sub c
    nop
    sbc a
    nop
    rlca
    nop
    rrca
    nop
    cp a
    nop
    rla
    nop
    rlca
    nop
    cp a
    nop
    cpl
    nop
    ld b, $00
    ld h, a
    nop
    ccf
    nop
    nop
    nop
    db $10
    db $10
    cp $fe
    ld [$08f8], sp
    ld hl, sp-$78
    ei
    ld [$80ff], sp
    rst $38
    ldh a, [$f0]
    add b
    ldh a, [$80]
    rst $38
    cp h
    rst $38
    cp h
    rst $38
    add b
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    nop
    ld hl, sp+$00
    cp $ff
    rst $38
    db $e4
    ret c

    inc bc
    ldh a, [$a9]
    ld b, b
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $8000
    nop
    ld hl, sp+$00
    ld hl, sp-$04
    cp $ff
    rst $38
    rst $38
    nop
    rst $38
    ld bc, $2bfe
    call nc, $807f
    rst $38
    nop
    ld a, l
    add d
    dec hl
    call nc, $807f
    rst $38
    nop
    rst $38
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
    nop
    nop
    cp l
    ld [bc], a
    xor d
    ld d, l
    ld d, b
    xor a
    nop
    rst $38
    rlca
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
    cp $00
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    and a
    rst $38
    rst $20
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
    add c
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
    adc e
    nop
    adc c
    nop
    db $fd
    nop
    ldh a, [rP1]
    ldh [rP1], a
    cp $00
    rst $38
    nop
    pop af
    nop
    ld a, [c]
    ld bc, $01fe
    daa
    nop
    adc a
    nop
    db $fd
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [$3830], sp
    jr nc, jr_0b6_6b01

    jr nc, jr_0b6_6b43

    jr nc, jr_0b6_6b3d

    jr nc, jr_0b6_6b47

    jr nc, jr_0b6_6b41

    jr nc, jr_0b6_6b43

    jr nc, @+$72

    jr nc, @+$74

    jr nc, jr_0b6_6b4e

    ld [hl-], a
    jr c, jr_0b6_6b53

    inc [hl]
    ld [hl], e
    add hl, sp
    db $76
    ld [hl], a
    jr nc, @+$34

    ld [hl], b
    or a
    ld [hl], b
    ld h, $00
    scf
    ld h, b
    jr c, jr_0b6_6b53

    scf
    ld h, b
    dec l

jr_0b6_6aef:
    ld h, d
    ld a, $61
    inc a
    ld h, e
    inc a
    ld h, e
    ld l, h
    ld h, e
    db $ec
    ld h, e
    ld l, h
    inc bc
    inc l
    ld h, e
    jr nc, jr_0b6_6aef

    nop

jr_0b6_6b01:
    rst $38
    push de
    dec hl
    ld [$fd15], a
    ld [bc], a
    db $eb
    inc d
    ld a, [hl]
    add b
    ldh a, [rP1]
    ldh [rP1], a
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ldh [rP1], a
    nop
    nop
    ld a, [hl-]
    dec b
    ld d, l
    xor d
    add b
    ld a, a
    ld bc, $3ffe
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38

jr_0b6_6b3d:
    nop
    rst $38
    nop
    rst $38

jr_0b6_6b41:
    nop
    rst $38

jr_0b6_6b43:
    nop
    cp $00
    rst $38

jr_0b6_6b47:
    nop
    cp $00
    rst $38
    nop
    cp a
    nop

jr_0b6_6b4e:
    ld a, a
    nop
    rst $18
    nop
    ld [hl], h

jr_0b6_6b53:
    nop
    ld [$f000], a
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ldh [rP1], a
    nop
    nop
    add b
    nop
    add b
    nop
    ld b, b
    nop
    ldh [rP1], a
    ld [c], a
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    inc d
    rst $38
    cp [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld bc, $00ff
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld b, b
    ccf
    add hl, de
    ld h, $c1
    ld a, $c0
    ccf
    ld b, a
    jr c, jr_0b6_6bb1

    jr nz, jr_0b6_6bf6

    jr nz, jr_0b6_6bd5

    nop
    jr nc, jr_0b6_6ba8

jr_0b6_6ba8:
    cp a
    nop
    jr nz, jr_0b6_6bac

jr_0b6_6bac:
    jr nz, jr_0b6_6bae

jr_0b6_6bae:
    and a
    nop
    nop

jr_0b6_6bb1:
    nop
    ld de, $1700
    nop
    ld bc, $0100
    nop
    add hl, bc
    nop
    inc bc
    nop
    ld a, [de]
    ld bc, $011e
    ld a, $01
    ld e, $01
    ld e, $01
    ld a, $01
    ld e, [hl]
    ld hl, $017e
    ldh [$1f], a
    ld a, [hl]
    ld bc, $235d
    ld l, l

jr_0b6_6bd5:
    inc de
    sbc l
    ld h, e
    add c
    ld a, a
    ld bc, $fbff
    dec b
    push bc
    dec sp
    adc l
    ld [hl], e
    ld b, c
    cp a
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    inc de
    rst $38
    ld l, $ff
    rlca
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38

jr_0b6_6bf6:
    ld a, a
    sbc a
    ei
    rlca
    cp $01
    rra
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    ld bc, $0100
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
    ld bc, $0e00
    ld bc, $2ad5
    and b
    ld e, a
    nop
    rst $38
    rrca
    ldh a, [rIE]
    nop
    ld [hl], l
    nop
    ld hl, sp+$00
    or $00
    db $f4
    nop
    ld b, b
    nop
    add b
    nop
    add b
    nop
    ret nz

    nop
    ldh a, [rP1]
    db $e4
    nop
    db $e4
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    ld [bc], a
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
    ld bc, $0800
    rlca
    ld b, a
    ccf
    ld a, c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    call z, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld bc, $07fe
    ld hl, sp+$1f
    ldh [$6f], a
    sub b
    ld l, a
    sub b
    ld b, l
    cp d
    cpl
    ld hl, sp+$0f
    ldh a, [$7f]
    add b
    ld a, a
    add b
    ld c, a
    jr nc, jr_0b6_6cb0

    ld l, b
    ld [hl], a
    ld [$20df], sp
    ld a, e
    inc b
    ld h, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_0b6_6cb0:
    db $fc
    inc bc
    dec sp
    call nz, Call_000_00ff
    ccf
    ret nz

    cp [hl]
    ld b, c
    dec a
    jp Jump_000_01fe


    db $fd
    inc bc
    rst $38
    nop
    add hl, sp
    rst $00
    ld a, h
    add e
    db $fc
    inc bc
    ld a, h
    add e
    dec e
    db $e3
    or l
    ld c, a
    ld h, h
    sbc a
    ld e, b
    rst $38
    db $fc
    rst $38
    sbc $ff
    ld c, [hl]
    rst $38
    ld c, [hl]
    rst $38
    xor $ff
    cp $ff
    cpl
    rst $38
    ccf
    rst $38
    jr nz, @+$01

    ld [hl], $ff
    add b
    ldh [$cf], a
    ldh [$f7], a
    ld hl, sp-$27
    db $fc
    ld b, b
    ldh [rBGP], a
    ldh [$c7], a
    ldh a, [$c3]
    ld hl, sp-$3d
    ld hl, sp-$0d
    ld hl, sp-$0d
    ld hl, sp-$4d
    ld a, b
    di
    ld [$03fc], sp
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
    nop
    nop
    nop
    nop
    nop
    ld bc, $3e00
    ld bc, $0af5
    xor b
    ld d, a
    nop
    rst $38
    nop
    rst $38
    ld d, b
    and b
    ret nz

    nop
    ld b, b
    nop
    jr nz, jr_0b6_6d28

jr_0b6_6d28:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0f11
    sbc a
    ld a, a

jr_0b6_6d5a:
    rst $38
    rst $38
    cp [hl]
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$d0ff], sp
    rst $38
    ldh [rIE], a
    db $f4
    rst $38
    ldh [rIE], a
    ld a, a
    add b
    db $fd

jr_0b6_6d73:
    nop

jr_0b6_6d74:
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_0b6_6d74

    jr nz, jr_0b6_6d5a

    jr nz, jr_0b6_6d73

    nop
    ld a, [$fd00]
    nop
    ldh a, [rP1]
    db $f4
    nop
    ldh a, [rP1]
    pop af
    nop
    ld a, l
    add b
    ld [hl], d
    add c
    sub $01
    db $fd
    inc bc
    db $fc
    inc bc
    ldh [$1f], a
    ld [$c017], a

jr_0b6_6d9b:
    ccf
    or b
    ld c, a
    or b
    ld c, a
    ld h, b
    rst $38
    cp h
    ld b, e
    cp a
    ld b, b
    ccf
    ret nz

    inc hl
    call c, $fe31
    ldh [rIE], a
    pop af
    cp $89
    db $76
    ld a, h
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    ld [hl+], a
    db $dd
    nop
    rst $38
    add c
    ld a, a
    ld h, l
    sbc d
    jr z, jr_0b6_6d9b

    add b
    rst $38
    add h
    rst $38
    ld h, l
    sbc a
    jr nz, @-$1f

    cpl
    ret nc

    ld b, a
    ldh a, [$f3]
    rst $38
    ld e, a
    rst $38
    ld b, h
    rst $38
    ld b, b
    cp a
    rst $38
    nop
    nop
    nop
    ld c, $01
    pop hl
    rra
    add hl, bc
    rra
    rra
    rrca
    dec bc
    rra
    ld e, $ff
    add a
    rst $38
    ld h, b
    rst $38
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    ld bc, $c0fe
    ccf
    ld hl, sp+$07
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

Jump_0b6_6e00:
    ld a, a
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    xor d
    ld d, l
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp-$1f
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    nop
    inc b
    inc bc
    ld h, a
    rra
    ccf
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ret nz

    rst $38
    ld [bc], a
    db $fd
    ret


    ld [hl], $ff
    nop
    rst $38
    nop
    db $fc
    inc bc
    rst $30
    ld [$609c], sp
    ld hl, sp+$00
    jr jr_0b6_6e4e

jr_0b6_6e4e:
    inc d
    nop
    inc d
    nop
    ccf
    nop
    ld l, h
    db $10
    db $f4
    nop
    ld d, b
    nop
    stop
    ld de, $3c00
    nop
    ldh a, [rP1]
    ld sp, $3900
    rlca
    ld c, a
    ccf
    rra
    ld a, a
    ld hl, sp+$7f
    ld h, b
    rst $38
    add e
    db $fc
    dec bc
    db $f4
    ld e, $e0
    ld l, $d0
    ld a, [hl]
    add b
    inc a
    ret nz

    ld a, h
    add b
    db $fc
    nop
    ld e, h
    and b
    ld c, h
    or b
    ld a, b
    add b
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    db $fd
    nop
    cp $00
    rst $38
    nop
    inc bc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    dec a
    jp nz, $c23d

    dec l
    jp nc, Jump_000_1fe0

    ld a, l
    add d
    ld a, c
    add [hl]
    ld bc, $88fe
    rst $38
    rst $10
    xor a
    pop af
    adc a
    ld d, e
    xor a
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    jp $c03f


    ccf
    db $10
    ld e, l
    ret nc

    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    db $e3
    rst $38
    db $fc
    cp $ff
    rst $38
    db $dd
    rst $38
    sbc h
    ccf
    ldh a, [rTAC]
    adc h
    di
    inc bc
    db $fc
    ld bc, $00fe
    rst $38
    add c
    cp $c1
    ld a, [hl]
    pop hl
    ld e, $f8
    rlca
    rst $38
    rlca
    xor a
    ld d, e
    ld d, e
    xor a
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld a, $c1
    cp $01
    cp $01
    ld a, [hl]
    ld bc, $011e
    ccf
    nop
    daa
    nop
    rrca
    nop
    dec bc
    nop
    ld a, a
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    rra
    nop
    rrca
    nop
    rrca
    nop
    rlca
    nop
    rrca
    nop
    or a
    nop
    dec c
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
    ldh [rP1], a
    ld bc, $0700
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    ld [bc], a
    ld bc, $0f11
    sbc a
    ld a, a
    rst $38
    rst $38
    cp $ff
    pop af
    cp $80
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    ld bc, $1cfe
    db $e3
    nop
    rst $38
    nop
    ld a, [$c200]
    nop
    add d
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [de], a
    inc bc
    nop
    ld c, $00
    add d
    nop
    ld [bc], a
    jr nz, jr_0b6_6f56

jr_0b6_6f56:
    jr nz, jr_0b6_6f5a

    jr nz, jr_0b6_6f5c

jr_0b6_6f5a:
    nop
    ld a, [bc]

jr_0b6_6f5c:
    nop
    nop
    jr nz, jr_0b6_6f60

jr_0b6_6f60:
    ld b, $1f
    ld [hl], b
    db $fc
    ldh a, [$f0]
    ldh [$f0], a
    pop bc
    ldh [$c0], a
    ret nz

    ld a, [bc]
    add b
    inc b
    add b
    ld [$01f7], sp
    cp $04
    ei
    ld a, [bc]
    push af
    ld bc, $0afe
    push af
    nop
    rst $38
    nop
    rst $38
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    nop
    nop
    rrca
    rra
    ld bc, $0007
    ld bc, $0080
    add c
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    xor c
    ld d, [hl]
    cp a
    ld b, b
    rst $38
    nop
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
    add b
    rst $38
    or b
    rst $38
    add c
    rst $38
    ld a, a
    add b
    rst $18
    and b
    ld a, a
    add b
    ld a, a
    add b
    ld h, [hl]
    sbc b
    rst $30
    ld [$000c], sp
    add c
    nop
    add b
    ldh a, [$90]
    db $fc
    sbc [hl]
    add b
    ld a, a
    nop
    rrca
    ret nz

    pop af
    db $fc
    inc e
    ld a, a
    ld h, c
    rlca
    rra
    nop
    adc a
    nop
    rrca
    nop
    rlca
    jr nz, @+$0e

    ldh [rTIMA], a
    ldh [rDIV], a
    ldh a, [$80]
    ldh a, [$c0]
    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    ld a, h
    cp h
    ld e, $ee
    rlca
    rst $38
    ld bc, $00ff
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
    ret nz

    ccf
    ld b, b
    ccf
    nop
    ccf
    jr nz, jr_0b6_7025

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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rrca
    nop
    rrca
    nop
    rra
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

jr_0b6_7025:
    nop
    db $fc
    inc bc
    rst $00
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    add b
    rst $38
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
    ld d, $00
    rlca
    nop
    rlca
    nop
    ld d, $01
    nop
    rrca
    nop
    inc c
    jr nc, jr_0b6_7056

    jr nc, jr_0b6_7050

jr_0b6_7050:
    ld a, b
    nop
    jr c, jr_0b6_7054

jr_0b6_7054:
    ld a, c
    nop

jr_0b6_7056:
    ld a, c
    nop
    dec e
    nop
    ei
    nop
    rst $20
    nop
    rlca
    add b
    rlca
    ld hl, sp+$2f
    ret nc

    add a
    ld a, b
    ld e, a
    and b
    ld e, d
    and b
    or l
    ld b, b
    ld a, [hl-]
    ret nz

    or a
    ld b, b
    ld d, a
    and b
    scf
    ret nz

    cp e
    ld b, b
    ld d, a
    and b
    ld a, a
    add b
    sbc a
    ld b, b
    ld e, a
    add b
    dec e
    jp nz, Jump_000_007a

    ld h, d
    nop
    ld [bc], a
    add b
    nop
    nop
    nop
    and b
    di
    rst $38
    ldh a, [$fa]
    ld [$01fe], sp
    nop
    ld bc, $fdfc
    cp $f1
    db $fc
    add c
    db $fc
    inc bc
    ld hl, sp+$03
    ld hl, sp+$03
    ldh a, [rSC]
    ldh a, [rSB]
    ldh a, [rP1]
    ldh [rNR13], a
    ldh [rNR30], a
    ldh [rNR10], a
    ret nz

    nop
    ldh [$80], a
    and b
    nop
    adc a
    nop
    ld bc, HeaderLogo
    db $10
    ld bc, $0004
    nop
    add b
    nop
    ld [bc], a
    nop
    ld bc, $ff00
    ld [hl], b
    rst $38
    add b
    ld a, a
    cp $01
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $28
    ldh a, [$31]
    ld a, b
    db $f4
    rlca
    ld hl, sp+$03
    cp $00
    rst $38
    nop
    db $fd
    nop
    rst $38
    nop
    ld a, d
    rlca
    ldh a, [rTMA]
    ldh a, [rIF]
    ldh a, [$0b]
    ld [hl], b
    rrca
    jr nz, jr_0b6_70f9

    ld h, b
    rrca
    jr nz, jr_0b6_70fd

    jr nz, jr_0b6_710f

    rst $38
    nop
    rra
    ldh [$03], a
    db $fc
    inc bc
    cp $00

jr_0b6_70f9:
    rst $38
    nop
    rst $38
    nop

jr_0b6_70fd:
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
    ld a, $01
    add hl, bc
    nop
    ld de, $0300

jr_0b6_710f:
    nop
    ld a, [$f505]
    ld a, [bc]
    ld [$ff15], a
    nop
    rst $38
    nop
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    cp $01
    pop af
    rrca
    adc a
    ld a, a

jr_0b6_7126:
    ld a, a
    rst $38
    cp $ff
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
    add b
    ld a, a
    ret nz

    ccf
    db $f4
    rlca
    db $f4
    rlca
    jp Jump_000_0f18


    ldh [$3f], a
    nop
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    ld [hl], b
    add b
    and b
    ld b, b
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    add sp, $00
    ret nc

    nop
    ret nc

    nop
    cpl
    ret nc

    ccf
    ret nz

    jr nc, jr_0b6_7126

    ld [hl], b
    add b
    ld h, b
    add b
    ldh [rP1], a
    ld h, b
    add b
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ld a, [hl]
    add b
    cp a
    ld b, b
    ld c, a
    or b
    dec d
    ld [$f609], a
    add hl, de
    and $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    add b
    ld e, e
    nop
    ld a, a
    nop
    ld e, a
    nop
    ld a, a
    nop
    rst $38
    nop
    ld bc, $00ff
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rlca
    add b
    ld a, b
    nop
    rst $38
    nop
    cp $00
    ld l, h
    nop
    stop
    nop
    nop
    nop
    dec b
    ld e, b
    inc bc
    ld e, b
    nop
    ld e, b
    nop
    stop
    db $10
    inc b
    nop
    ld b, h
    inc b
    ld c, [hl]
    nop
    inc c
    nop
    inc c
    nop
    ld [$00fc], sp
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
    ret nz

    inc bc
    ld a, b
    ldh [rTMA], a
    cp $00
    rst $38
    nop
    ld a, a
    nop
    rra
    nop
    rra
    nop
    rrca
    nop
    rrca
    add b
    rlca
    ret nz

    rlca
    ldh [$03], a
    ldh [rP1], a
    ld hl, sp-$01
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
    ldh [rTAC], a

jr_0b6_71fd:
    ld hl, sp+$03
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
    ld hl, sp+$07
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_0b6_71fd

    ld b, a
    cp a
    ccf
    rst $38
    cp $ff
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    di
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $00
    nop
    rlca
    nop
    rlca
    nop
    ldh a, [rIF]
    ldh a, [rIF]
    db $f4
    dec bc
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [rIF], a
    ret z

    rlca
    sub b
    rrca
    jr jr_0b6_726b

    rra
    nop
    rra
    nop
    rra
    nop
    rra

jr_0b6_726b:
    nop
    rra
    nop
    rra
    nop
    cpl
    db $10
    dec [hl]
    ld a, [bc]
    jr z, jr_0b6_728d

    jp nz, $d43d

    dec hl
    call z, $dc33
    inc hl
    adc b
    ld [hl], a
    cp $00
    and $00
    db $e4
    nop
    ldh [rP1], a
    add b
    ld [bc], a
    sub a
    rst $38
    rst $38

jr_0b6_728d:
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
    jr nz, @+$01

    nop
    rst $38
    ret z

    nop
    call c, $9c00
    nop
    sbc l
    nop
    sbc l
    nop
    add hl, bc
    nop
    db $10
    inc b
    dec sp
    nop
    dec de
    nop
    dec bc
    nop
    rlca
    nop
    rlca
    nop
    ld [bc], a
    ld [hl], b
    nop
    jr c, jr_0b6_72bb

    ld h, b
    ld [bc], a

jr_0b6_72bb:
    and b
    ld [bc], a
    and b
    ld [bc], a
    add b
    ld [bc], a
    sub b
    ld [bc], a
    ldh a, [rP1]
    jr c, jr_0b6_72c9

    db $10
    ld [bc], a

jr_0b6_72c9:
    nop
    jp nz, $ff00

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, b
    inc b
    nop
    rlca
    rst $20
    rrca
    rst $38
    rlca
    ei
    rlca
    ei
    rlca
    ei
    rlca
    ld sp, hl
    rlca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ld [hl], d
    adc a
    ld [hl], d
    adc a
    ld [hl-], a
    adc a
    scf
    rst $08
    daa
    rst $08
    rrca
    rst $28
    rrca
    rst $38
    ld a, a
    adc a
    ccf
    rst $38
    rlca
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    ldh a, [rIF]
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
    ld bc, $0fff
    rst $38
    ld a, a
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
    jr jr_0b6_7363

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0b6_7373

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0b6_7383

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0b6_7393

    ld [hl-], a

jr_0b6_7363:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0b6_73a3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_0b6_7373:
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

jr_0b6_7383:
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
    ld c, a
    ld e, a
    ld h, b
    ld h, c

jr_0b6_7393:
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
    ld l, a
    ld [hl], b
    ld [hl], c

jr_0b6_73a3:
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
    ld e, l
    inc l
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
    and a
    ld e, l
    xor b
    xor c
    xor d
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

    ld c, a
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
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    ld c, a
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
    jr jr_0b6_746a

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0b6_747a

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0b6_748a

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0b6_749a

    ld [hl-], a

jr_0b6_746a:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0b6_7473

    dec b
    nop

jr_0b6_7473:
    nop
    ld b, $02
    ld b, $06
    ld b, $05

jr_0b6_747a:
    ld b, $01
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld b, $00
    nop
    ld b, $02
    dec b
    ld b, $06
    dec b

jr_0b6_748a:
    ld b, $01
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld b, $05
    nop
    ld b, $06
    ld b, $02
    ld b, $02

jr_0b6_749a:
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld bc, $0602
    dec b
    nop
    ld b, $06
    ld b, $06
    ld b, $02
    ld bc, $0101
    ld bc, $0101
    ld bc, $0502
    dec b
    ld b, $02
    ld [bc], a
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    dec b
    dec b
    ld b, $02
    ld b, $06
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0606
    dec b
    ld b, $06
    ld b, $06
    ld b, $07
    ld bc, $0101
    ld bc, $0101
    ld bc, $0606
    dec b
    dec b
    ld b, $05
    ld b, $04
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0606
    dec b
    nop
    nop
    nop
    nop
    inc b
    rlca
    ld bc, $0101
    ld bc, $0201
    ld bc, $0506
    dec b
    nop
    dec b
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld bc, $0606
    dec b
    nop
    nop
    nop
    nop
    dec b
    ld bc, $0101
    ld bc, $0002
    nop
    ld bc, $0506
    ld b, $06
    ld b, $06
    ld b, $01
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    dec b
    ld b, $05
    dec b
    inc b
    inc b
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    dec b
    dec b
    dec b
    dec b
    inc b
    inc b
    ld bc, $0201
    ld [bc], a
    dec b
    ld b, $02
    ld bc, $0202
    dec b
    dec b
    dec b
    ld b, $06
    ld [bc], a
    ld bc, $0101
    ld bc, $0605
    ld bc, $0202
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    ld b, $06
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld bc, $0002
    nop
    dec b
    dec b
    nop
    nop
    ld [$0d0d], sp
    ld c, $0e
    ld c, $0a
    add hl, bc
    add hl, bc
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    dec c
    ld c, $0e
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$080d], sp
    dec c
    dec c
    dec c
    ld [$00bf], sp
    cp a
    nop
    rst $38
    nop
    ei
    nop
    ld a, a
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    ld d, d
    xor l
    ret


    ld [hl], $f5
    ld a, [bc]
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
    nop
    rst $38
    jr z, @-$27

    ld a, b
    add a
    cp $01
    cp $01
    rst $38
    nop
    ld a, e
    nop
    ld [hl], e
    nop
    ld h, e
    nop
    ld [hl], e
    nop
    ld [hl], e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, @-$40

    ld b, c
    sub l
    ld l, d
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
    sbc $00
    ret z

    nop
    ld b, $df
    rst $38
    rst $38
    ld b, a
    rst $38
    rst $00
    nop
    add $00
    ld b, h
    nop
    adc $00
    xor $00
    cp $00
    rra
    nop
    ret c

    nop
    add e
    db $10
    rst $00
    db $10
    rst $00
    db $10
    add a
    db $10
    rlca
    db $10
    rst $20
    db $10
    rst $20
    jr jr_0b6_7686

    jr jr_0b6_7685

    jr jr_0b6_7667

    jr jr_0b6_7631

    dec e
    ld [$080c], sp
    ld c, $88
    ld c, $0e

jr_0b6_7631:
    rrca
    add a
    rrca
    add e
    dec bc
    nop
    dec bc
    nop
    inc bc
    add b
    ld bc, $0000
    ld a, a
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    ld bc, $0e00
    ld bc, $1f60
    ld bc, $cffe
    ldh a, [$3f]
    ret nz

    ld a, a
    add b
    ld a, $c1
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_0b6_7667:
    rst $38
    ld [bc], a
    db $fd
    dec d
    ld [$d52a], a
    ld d, l
    xor d
    xor e
    ld d, h
    ld d, a
    xor b
    cp a
    ld b, b
    ld d, l
    xor d
    xor d
    ld d, l
    ld bc, $00fe
    rst $38
    inc b
    ei
    rst $38

jr_0b6_7681:
    rst $38
    rst $38
    ccf
    rst $38

jr_0b6_7685:
    nop

jr_0b6_7686:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fc

jr_0b6_769c:
    rst $38
    nop
    ld a, [c]
    dec c
    jr nz, jr_0b6_7681

    ld bc, $2fff
    rst $38
    ld a, a
    rst $38

jr_0b6_76a8:
    rst $38
    rst $38

jr_0b6_76aa:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, a
    jr jr_0b6_7731

    ld bc, $0065
    ld sp, $2500
    nop
    and h
    nop
    ldh a, [rP1]
    ld c, $00
    xor b
    ld bc, $0074
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
    ld b, $f9
    rrca
    ldh a, [$3f]
    ret nz

    add hl, de
    ldh [$30], a
    ret nz

    jr nc, jr_0b6_769c

    or b
    ld b, b
    cp b
    ld b, b
    ld hl, sp+$00
    cp b
    ld b, b
    call c, $de20
    jr nz, jr_0b6_76a8

    ld b, b
    adc a
    ld [hl], b
    rlca
    ld hl, sp+$11
    xor $ff

jr_0b6_76f1:
    nop
    db $fd
    nop
    cp l
    nop
    cp l
    nop
    sbc l
    nop
    ld c, $00
    inc c
    nop
    ret nc

    rst $38
    rst $38
    rst $38
    ld [bc], a
    rst $38
    add a
    nop
    rla
    nop
    sub e
    nop
    inc de
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    ld a, $c1
    add l
    ld a, [bc]
    ld [bc], a
    dec c
    nop
    rrca
    ld d, d
    dec c
    ld [hl], d
    dec c
    jp nc, $f80d

    nop
    ld hl, sp+$00
    jr c, jr_0b6_76aa

    ld a, [bc]
    inc b
    ld [bc], a
    ld d, b
    ld [bc], a
    db $e4
    nop
    push af
    nop
    db $fd
    ld h, c

jr_0b6_7731:
    db $fd
    jr nz, jr_0b6_76f1

    nop
    cp l
    nop
    add b
    nop
    ld h, b
    nop
    ld b, b

jr_0b6_773c:
    nop
    jr nz, jr_0b6_773c

    nop
    nop
    ld bc, HeaderSGBFlag
    add hl, de
    rlca
    ret nz

    ccf
    ld e, $e1
    ld a, [hl]
    add c
    cp $01
    db $fc
    inc bc
    or b
    ld c, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02fe
    db $fd
    dec b
    ld a, [$d52a]
    ld d, l
    xor d
    xor d
    ld d, l
    ld a, a
    add b
    ld [$d515], a
    ld a, [hl+]
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    nop
    rst $38
    rst $38
    add b
    rst $38
    add b
    rst $38
    db $10
    rst $38
    nop
    rst $10
    jr z, jr_0b6_77e1

    xor c
    ret z

    scf
    pop hl
    rra
    sbc $2b
    rst $20
    dec de
    rst $38
    ccf
    ld a, a
    rst $18
    cp a
    db $fd
    push de
    dec sp
    ldh a, [$3f]
    ld [hl], l
    rst $28
    ld [hl], a
    rst $38
    rst $38
    rst $38
    ei
    rst $38

jr_0b6_77a6:
    rst $30
    rst $38
    xor $ff
    adc h
    rst $38
    pop af
    rst $38
    adc a
    rst $38
    rst $38
    nop
    db $fd
    ld [bc], a
    cp a
    ld b, b
    or $09
    xor $01
    push af
    nop
    push af
    nop
    ld e, h
    jr nz, jr_0b6_77e1

    rst $38
    nop
    dec a
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    add d
    nop
    ret


    nop
    rst $20
    jr jr_0b6_77a6

    inc l
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rra
    nop
    ld e, $00
    rrca
    nop
    cp c

jr_0b6_77e1:
    ld b, $b0
    rrca
    cp b
    rlca
    ldh a, [rIF]
    ld hl, sp+$07
    ldh a, [rIF]
    or b
    ld c, a
    xor b
    ld d, a
    rst $38
    nop
    push af
    nop
    push af
    nop
    db $f4
    ld [$00b4], sp
    jr c, jr_0b6_77fe

    jr nz, jr_0b6_77fe

jr_0b6_77fe:
    nop
    rst $38
    rst $38
    rst $38
    cp $ff
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    cp $00
    db $fc
    inc de
    nop
    inc sp
    nop
    inc de
    nop
    ld [de], a
    nop
    nop
    ld [$0002], sp
    ld [bc], a
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    ld sp, hl

Call_0b6_7823:
    nop
    ret c

    nop
    jr nc, jr_0b6_7828

jr_0b6_7828:
    jr nc, jr_0b6_782a

jr_0b6_782a:
    inc d
    nop
    inc l
    nop
    inc a
    add b
    ld bc, $0084
    and h
    nop
    add sp, $00
    db $e3
    nop
    or b
    rrca
    add b
    jr c, jr_0b6_783f

    ld h, c

jr_0b6_783f:
    rlca
    cpl
    ld e, $74
    ld hl, sp-$44
    ret nz

    cp h
    nop
    ld a, b
    nop
    nop
    nop
    stop
    db $fc
    nop
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    or b
    rst $38
    cp c
    cp $f5
    ld a, [$f46b]
    ld d, a
    xor b
    xor e
    ld d, h
    ld d, a
    xor b
    xor a
    ld d, b

jr_0b6_7866:
    ld d, a
    xor b
    xor e
    ld d, h
    rst $38
    nop
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, h
    xor e
    xor b
    ld d, a
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
    cp $01
    jp hl


    ld d, $c6
    add hl, sp
    dec bc
    db $f4
    ld h, e
    cp h
    ld e, a
    ldh a, [rIE]
    ldh a, [$fd]
    ld a, [c]
    rst $38
    pop af
    db $fc
    or e
    ld a, [hl+]
    rst $10
    add c
    cp $61
    cp $83
    db $fc
    ld hl, sp-$01
    ld sp, hl
    cp $f2
    db $fd
    pop af
    cp $e2
    db $fd
    push bc
    ld a, [$f5ca]
    push bc
    ld a, [$00ff]
    ld a, a
    add b
    rst $08
    jr nc, jr_0b6_7866

    ld d, b
    ld l, [hl]
    sub c
    swap h
    ld [hl-], a
    dec c
    inc b
    inc bc
    nop
    dec bc
    nop
    rlca
    nop
    add d
    nop
    cpl
    nop
    ld b, $00
    ld bc, $00a4
    ld [hl], h
    nop
    db $f4
    dec bc
    db $fc
    inc bc
    db $f4
    dec bc
    sbc [hl]
    ld bc, $0916
    rrca
    nop
    ld c, $01
    dec c
    nop
    sub d
    dec c
    jp nc, $d30d

    inc c
    ld [hl], d
    adc l
    ld [hl], e
    adc h
    or e
    ld c, h
    inc de
    db $ec
    ld de, $ffee
    nop
    rst $38
    nop
    rst $18
    nop
    rst $10
    nop
    rst $00
    nop
    add c
    nop
    ld bc, $0000

Call_0b6_78ff:
    rst $38
    rst $38
    rst $38
    adc b
    rst $38
    nop
    adc b
    nop
    add hl, bc
    nop
    dec bc
    nop
    rst $38
    nop
    nop
    ldh [rP1], a
    ld b, b
    nop
    ldh [rP1], a
    add b
    ld bc, $0000
    ret nz

    nop
    and b
    nop
    and b
    ld bc, $0760
    nop
    nop
    jr nz, jr_0b6_7924

jr_0b6_7924:
    ld d, b
    nop
    jr nc, jr_0b6_7928

jr_0b6_7928:
    jr nc, jr_0b6_7932

    nop
    ld e, $00
    jr nz, jr_0b6_792f

jr_0b6_792f:
    jr nz, @+$11

    nop

jr_0b6_7932:
    rrca
    nop
    dec b
    nop
    rrca
    ret nz

    ld a, b
    inc bc
    rlca
    rra
    ld a, h
    cp $e0
    cp $1e
    nop
    ld [hl], h
    ld [$18fc], sp
    inc sp
    call c, $2cd3
    dec de
    inc [hl]
    rra
    jr nc, jr_0b6_7989

    dec b
    inc c
    rst $38
    inc de
    db $fc
    ld a, [de]
    push hl
    ld d, l
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
    nop
    rst $38
    nop
    rst $38
    nop
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld b, l
    cp d
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
    ld [bc], a
    rst $38
    inc b
    rst $38
    inc c

jr_0b6_7989:
    rst $38
    add hl, bc
    cp $12
    db $fd
    ld sp, $62fe
    db $fd
    push bc
    ld a, [$f18e]
    sbc a
    ldh [rNR34], a
    pop hl
    dec a
    jp nz, $956a

    ld d, h
    xor e
    xor d
    ld d, l
    ld d, h
    xor e
    xor b
    ld d, a
    ld b, b
    cp a
    add b
    ld a, a
    ld b, b
    cp a
    add b
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
    add b
    rst $38
    ld a, h
    rst $38
    cp [hl]
    rst $38
    rst $38
    rst $38
    ret nz

    ccf
    or b
    rrca
    and [hl]
    ld bc, $0084
    add b
    nop
    and c
    nop
    ld sp, $0100
    nop
    nop
    rst $38
    nop
    rst $38
    inc d
    db $eb
    ld e, $e1
    ld [hl], $c1
    ld [hl-], a
    pop bc
    ld h, d
    add c
    inc hl
    ret nz

    ld h, e
    add b
    db $e3
    nop
    di
    nop
    di
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $10
    nop
    rst $08
    nop
    add c
    nop
    ld bc, $0300
    nop
    nop
    ld [$ff00], sp
    rst $28
    rst $38
    rst $38
    nop
    rrca
    nop
    rrca
    nop
    cpl
    nop
    jp z, RST_00

    nop
    ld [bc], a
    nop
    nop
    nop
    ld b, d
    nop
    ld b, d
    nop
    nop
    nop
    ld [bc], a
    nop
    rlca
    nop
    ld d, a
    nop
    rst $20
    nop
    nop
    ld b, a
    nop
    ld b, a
    nop
    ld h, a
    nop
    daa
    nop
    halt
    nop
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$01
    ld bc, $673c
    ldh [$9c], a
    add e
    inc e
    ld b, e
    jr jr_0b6_7aa7

    nop
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld bc, $0afe
    push af
    dec [hl]
    jp z, Jump_0b6_55aa

    ld d, l
    xor d
    xor d
    ld d, l
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    xor d
    ld d, l
    ld d, h
    xor e
    xor b
    ld d, a
    ld d, c
    xor [hl]
    and e
    ld e, h
    ld b, a
    cp b
    add e
    ld a, h
    rlca
    ld hl, sp+$0b
    db $f4
    dec d
    ld [$d52a], a
    dec d
    ld [$d52a], a
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d

jr_0b6_7a94:
    and b
    ld e, a
    ld b, h
    cp e
    adc b
    ld [hl], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_0b6_7aa7:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld a, b
    rlca
    ld [bc], a
    ld bc, $0001
    add b
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    add hl, de
    and $3f
    ret nz

    daa
    ret nz

    daa
    ret nz

    daa
    ret nz

    ld h, a
    add b
    rst $20
    nop
    or $00
    cp $00
    sbc $20
    adc $30
    adc $30
    rst $08
    nop
    push bc
    nop
    ld h, l
    db $10
    ld hl, $2010
    sub b
    jr nz, jr_0b6_7a94

    nop
    dec de
    nop
    rst $38
    add b
    rst $38
    db $fd
    nop
    add h
    nop
    add c
    nop
    rst $18
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    add c
    nop
    nop
    nop
    ld [bc], a
    nop
    inc bc
    nop
    and [hl]
    nop
    add b
    ret z

    ldh [$c0], a
    rst $38
    ld b, b
    ei
    ld b, c
    rst $30
    inc bc
    rst $38
    ld c, $ff
    rst $30
    nop
    rst $38
    nop
    db $fc
    ld bc, $0ee0
    rlca
    ld [hl], b
    rra
    nop
    cp $00
    ld hl, sp+$00
    sbc b
    ld bc, $4300
    nop
    ld a, a

jr_0b6_7b40:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, a
    xor b
    xor a
    ld d, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    push af
    ld a, [bc]
    ld [$5515], a
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    and d
    ld e, l
    ld d, h
    xor e
    add d
    ld a, l
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
    add b
    rst $38
    sbc c
    rst $38
    ld l, a
    rst $38
    rst $38
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
    add e
    ld l, b
    nop
    jr z, jr_0b6_7b40

    inc b
    ret nz

    nop
    ld a, [c]
    inc b
    ldh a, [rSC]
    nop
    ld de, $3200
    nop
    ld a, b
    nop
    dec a
    nop
    ld l, l
    add d
    add sp, $07
    add sp, $07
    ld hl, sp+$07
    dec a
    ld b, d
    db $dd
    ld [hl+], a
    sbc a
    ld h, b
    sbc h
    ld h, e
    adc h
    nop
    add h
    nop
    add b
    nop
    and b
    inc de
    and b
    ld d, b
    jr nz, jr_0b6_7c06

    nop
    ld e, $02
    cp $f0
    cp $04
    add sp, $04
    ldh [rNR10], a
    ret nz

    db $10
    add b
    inc e
    nop
    inc [hl]
    nop
    ld d, h
    nop
    nop
    add b

Call_0b6_7c02:
    ld [hl], h
    nop
    inc [hl]
    nop

jr_0b6_7c06:
    inc d
    nop
    ld [bc], a
    add b
    ld d, $80
    ld b, $00
    ld b, $00
    nop
    add b
    nop
    ldh a, [rDIV]
    ld h, b
    rra
    nop
    db $fc
    nop
    ldh a, [rTAC]
    nop
    ccf
    ret nz

    rst $28
    add [hl]
    ccf
    add b
    ccf
    inc b
    ccf
    ld [$003e], sp
    ld a, $00
    ccf
    nop
    ccf
    inc bc
    ccf
    ldh a, [rIF]
    ldh [$1f], a
    rst $38
    nop
    xor d
    nop
    nop
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    xor e
    ld d, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    db $fc
    nop
    db $fc
    nop
    cp $00
    cp $00
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    ld [hl], a
    adc b
    xor e
    ld d, h
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    ld a, [hl+]
    push de
    dec d
    ld [$d52a], a
    dec b
    ld a, [$fd02]
    dec b
    ld a, [$fd02]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    inc a
    rst $38
    push hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld hl, sp+$6f
    nop
    or a
    nop
    rst $20
    nop
    add e
    nop
    inc bc
    jr @+$09

    ld [$0087], sp
    add e
    nop
    add b
    ld [$00c2], sp
    db $e4
    nop
    ld a, [c]
    dec c
    and $19
    ld d, b
    xor a
    db $76
    adc c
    or $09
    or $09
    ld a, a
    add b
    rra
    ldh [rIF], a
    ldh a, [$1f]
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [$0e]
    ldh a, [rIF]
    ldh a, [$0e]
    ldh a, [$0e]
    ldh a, [rNR22]
    add b
    rra
    nop
    rra
    nop
    rra
    nop
    rlca
    add b
    rlca
    add b
    rrca
    nop
    nop
    nop
    rrca

Jump_0b6_7d01:
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0e
    ldh a, [rIF]
    ldh a, [rIF]
    ret nz

    rlca
    ldh [rTAC], a
    ld b, b
    inc bc
    nop
    ld b, e
    ret nc

    pop bc
    ldh a, [$c0]
    ldh [$c0], a
    ldh a, [$f0]
    sub b
    ld hl, sp-$68
    ld hl, sp-$58
    ldh a, [$a0]
    ret nz

    or b
    ret nz

    cp [hl]
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [de]
    ldh [$d0], a
    nop
    and b
    nop
    nop
    nop
    and b
    nop
    ld d, l
    nop
    xor d
    nop
    rst $38
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
    ldh a, [rP1]
    rst $38
    nop
    ld e, a
    and b
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, b
    xor a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld d, c
    rst $38
    sbc h
    rst $38
    ld l, $ff
    db $fd
    rst $38
    ei
    rst $38
    ret nz

    cp $39
    add b
    ld a, l
    nop
    ld a, l
    nop
    ld a, a
    nop
    jr c, jr_0b6_7dc2

jr_0b6_7dc2:
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    dec sp
    add b
    ld a, a
    nop
    ld a, a
    nop
    ccf
    ret nz

    ccf
    ret nz

    dec bc
    db $f4
    dec sp
    call nz, $c43b
    dec hl
    call nc, Call_000_00ff
    rst $38
    nop
    ld [bc], a
    db $fd
    ld bc, $00fe
    rst $38
    ld a, [bc]
    push af
    rra
    ldh [rIE], a
    nop
    db $e3
    nop
    jp nz, $c101

    nop
    pop bc
    nop
    rst $30
    nop
    add hl, sp
    add $01
    cp $01
    cp $00
    rst $38
    nop
    rst $38
    ld bc, $0ffe
    ldh a, [$fb]
    nop
    ld [hl], e
    add b
    ld h, e
    add b
    ld b, b
    add c
    ld h, e
    add b
    pop hl
    ld [bc], a
    db $e3
    nop
    jp $c300


    nop
    ld h, e
    add b
    ld [hl], c
    add d
    ld a, h
    add e
    ld e, h
    and e
    db $10
    rst $28
    nop
    nop
    nop
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
    rst $38
    ccf
    rst $38
    dec d
    ldh [$a8], a
    nop
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, l
    nop
    xor d
    nop
    ld a, [$ff05]
    nop
    rst $38
    nop
    rst $10
    nop
    dec bc
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

jr_0b6_7e5b:
    nop
    nop
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld b, $01
    rrca
    nop
    ld a, [hl-]
    dec b
    push af
    ld a, [bc]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_0b6_7e76:
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    nop

jr_0b6_7e81:
    rst $38
    jr @+$01

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
    and e
    rst $38

jr_0b6_7e90:
    ld a, h
    rst $38
    ld sp, hl

jr_0b6_7e93:
    rst $38
    ld hl, sp-$01
    inc b
    add b

jr_0b6_7e98:
    sbc $00
    rst $38
    nop
    cp $00
    cp $00
    ld [$dcf7], sp
    inc hl
    sbc $21
    rst $38
    nop
    sbc $21
    call c, $ff23
    nop
    rst $18
    jr nz, jr_0b6_7e90

    jr nz, jr_0b6_7e81

    ld sp, $20df
    rst $18
    jr nz, jr_0b6_7e98

    jr nz, @+$01

    nop
    ld [$5f00], a
    nop
    dec d
    ld [$b54a], a
    inc b
    ei
    add d
    ld a, l
    swap h
    rst $18
    jr nz, jr_0b6_7e93

    jr c, @+$06

    cp b
    and b
    ld [$08a0], sp
    add h
    jr z, jr_0b6_7e5b

    jr z, jr_0b6_7f1f

    xor b
    ld b, a
    xor b
    ld b, e
    cp h
    inc bc
    db $fc
    ld bc, $4000
    nop
    jr nz, jr_0b6_7ee6

jr_0b6_7ee6:
    jr nz, jr_0b6_7ee8

jr_0b6_7ee8:
    jr nz, jr_0b6_7eea

jr_0b6_7eea:
    cp b
    nop
    jr nc, jr_0b6_7e76

    and h
    ld [$08a0], sp
    xor b
    nop
    jr z, jr_0b6_7e76

    ld h, h
    adc b
    ld h, h
    adc b
    ld h, h
    adc b
    ld [hl], h
    adc b
    ld [hl], h
    adc b
    rst $18
    cp b
    ld [hl], a
    adc b
    rra
    ldh [$0b], a
    db $f4
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $30
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    ld hl, sp+$00
    ld e, a

jr_0b6_7f1f:
    and b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [$1f05]
    nop
    ld a, $01
    dec a
    ld [bc], a
    ld a, [hl]
    ld bc, $02fd
    ld a, [$f505]
    ld a, [bc]
    ld [$d515], a
    ld a, [hl+]
    xor d
    ld d, l
    push de
    ld a, [hl+]
    xor d
    ld d, l
    push de
    ld a, [hl+]
    xor d
    ld d, l
    push de
    ld a, [hl+]
    xor d
    ld d, l
    ld d, h
    xor e
    xor b
    ld d, a
    ld d, h
    xor e
    xor b
    ld d, a
    ld d, b
    xor a
    xor b
    ld d, a
    ld d, b
    xor a
    and c
    ld e, a
    ld b, c
    cp a
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
    push af
    rst $38
    db $fd
    di
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
    ld h, b
    rst $38
    inc e
    rst $38
    jp $f0ff


    rst $38
    ld [hl], $ff
    sbc $ff
    cp a
    rst $38
    nop
    ld hl, sp+$77
    nop
    rst $20
    nop
    rst $30
    nop
    db $e3
    nop
    nop
    inc c
    ld h, e
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    and e
    ld [$00e7], sp
    di
    nop
    rst $20
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
    cp a
    nop
    ld l, e
    nop
    ld [hl+], a
    db $dd
    sub l
    ld l, d
    ld b, b
    cp a
    or a
    ld c, b
    cp $00
    db $fd
    nop
    dec e
    nop
    jr jr_0b6_7fd0

jr_0b6_7fd0:
    nop
    nop
    rlca
    nop
    rra
    nop
    db $fc
    inc bc
    ld a, [hl]
    add c
    ld d, h
    xor e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    ld sp, hl
    nop
    cp c
    nop
    sub c
    nop
    nop
    nop
    nop
    nop
    jr jr_0b6_7ff0

jr_0b6_7ff0:
    sbc [hl]
    nop
    rra
    nop
    rrca
    nop
    dec c
    ld [bc], a
    dec e
    ld [bc], a
    cp b
    rlca
    ld hl, sp+$07
    ldh [$1f], a
