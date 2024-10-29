SECTION "ROM Bank $04b", ROMX[$4000], BANK[$4b]

    ld e, a
    and b
    ld e, a
    and b
    ld e, a
    and b
    ld e, a
    and b
    ld e, a
    and b
    ld e, a
    and b
    ld e, a
    and b
    ld b, b
    cp a
    add b
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    rst $38
    cp $ff
    ld a, [$f8ff]
    rst $38
    ldh a, [rIE]
    ret z

    rst $38
    ld [$00ff], sp
    rst $38
    nop
    nop
    rst $38
    ld hl, sp-$01
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
    add b
    add b
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
    ld bc, $0001
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
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
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
    db $fc
    rlca
    cp $07
    cp $07
    rlca
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $3fff
    rst $38
    pop bc
    rst $38
    nop
    inc bc
    db $fc
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    inc bc
    db $fc
    rst $38
    nop
    nop

jr_04b_40b1:
    nop
    nop
    nop
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    add b
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
    sbc a
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
    db $fc
    inc bc
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
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
    stop
    jr nc, jr_04b_40b1

    nop
    ldh a, [rP1]
    ldh [rP1], a
    ldh a, [rP1]
    ld a, b
    nop
    jr c, jr_04b_410c

jr_04b_410c:
    inc e
    nop
    ld e, $00
    ccf
    nop
    ld h, e
    dec e
    ld b, e
    dec a
    ld b, e
    dec a
    ld b, e
    dec a
    ld b, e
    dec a
    ld b, e
    dec a
    ld b, e
    dec a
    ld hl, $211e
    ld e, $20
    rra
    jr nc, jr_04b_4137

    db $10
    rrca
    jr @+$09

    inc c
    inc bc
    ld b, $01
    inc bc
    nop
    ld bc, $0000
    nop
    nop

jr_04b_4137:
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $feff
    cp $01
    nop
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    rst $20
    rst $38
    add $fe
    sbc $fe
    rst $08
    cp $f5
    db $fc
    db $fd
    db $fc
    rst $38
    db $fc
    push hl
    db $fc
    rst $28
    db $fc
    db $ed
    db $fc
    rst $18
    db $fc
    rst $38
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $ec
    db $ec
    ldh [$e0], a
    pop hl
    pop hl
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rra
    rst $38
    ld a, [bc]
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
    ld hl, sp+$07
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
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
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
    inc b
    nop
    rlca
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    ld c, $00
    ld e, $00
    ld a, [$f304]
    adc h
    pop af
    adc $f1
    xor $f1
    xor $f1
    ld l, [hl]
    pop af
    xor [hl]
    pop af
    xor $e3
    call c, Call_04b_5ce2
    add $38
    ld b, $f8
    inc b
    ld hl, sp+$0c
    ldh a, [rNR23]
    ldh [$30], a
    ret nz

    ldh [rP1], a
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
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    rra
    pop af
    ldh a, [$df]
    ret nz

    cp a
    adc a
    ld a, a
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
    ld bc, $0fff
    cp $fe
    db $fc
    db $fc
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    nop
    add b
    ld b, b
    add b
    ld h, b
    add b
    ld h, b
    add b
    ld [hl], b
    add b
    ld [hl], b
    add b
    ld a, h
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
    ldh [$1f], a
    ldh a, [rIF]
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
    ld bc, $3ffe
    ret nz

    ld a, a
    add b
    ccf
    ret nz

    rra
    db $e3
    rrca
    rst $30
    rlca
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
    ld hl, sp-$01
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
    ldh [$e0], a
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
    add b
    nop
    and b
    nop
    ld h, b
    nop
    ret nz

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
    ld bc, $0300
    nop
    rlca
    nop
    rra
    nop
    ld a, a
    nop
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
    ld hl, sp-$08
    rlca
    nop
    rst $38
    inc bc
    cp $ff
    rst $18
    rlca
    rst $38
    inc bc
    rst $38
    pop af
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    cp $ff

jr_04b_4301:
    cp $bf
    and b
    rst $38
    cp a
    ret nz

    add b
    ldh [rP1], a
    ldh [rP1], a
    add b
    nop
    add b
    nop
    ldh [rP1], a
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
    add sp, $00
    xor $00
    rst $28
    nop
    rst $28
    nop
    rst $28
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
    jr c, jr_04b_4301

    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld a, b
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    ccf
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
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ld h, b
    ld h, b
    jr nc, jr_04b_43ae

    jr jr_04b_4398

    inc e
    inc e
    ld c, $0e
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0101
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop

jr_04b_4396:
    rlca
    nop

jr_04b_4398:
    rlca
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_04b_43ae:
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ret nz

    jr nz, jr_04b_4396

    rra
    ldh a, [rIE]
    ld hl, sp+$07
    rlca

Jump_04b_43bc:
    rst $38
    nop
    rst $38
    db $fc
    ld a, a
    ld hl, sp-$61
    ld hl, sp-$21
    ld hl, sp-$31
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, b
    rst $18
    ld a, b
    rst $28
    ld a, b
    rst $38
    ld a, b
    rst $28
    ld a, b
    rst $38
    ld a, b
    rst $18
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rrca
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
    jr nc, jr_04b_43f8

jr_04b_43f8:
    jr nc, jr_04b_43fa

jr_04b_43fa:
    jr c, jr_04b_43fc

jr_04b_43fc:
    jr c, jr_04b_43fe

jr_04b_43fe:
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
    inc bc
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ld a, h
    rst $38
    ld a, $ff
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld [hl], b
    rst $38
    ld a, b
    rst $38
    inc a
    rst $38
    ld e, $ff
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    rst $38
    ret nz

    rst $38
    nop
    db $fc
    inc bc
    inc bc
    db $fc
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
    ld a, h
    add e
    inc bc
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
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
    rra
    nop
    inc bc
    nop
    ld bc, $0000
    inc b
    nop
    dec c
    nop
    dec c
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    cp a
    nop
    rst $38
    nop
    inc bc
    db $fc
    rrca
    ldh a, [$1f]
    ldh [$7f], a
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
    add b
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    jp $c700


    nop
    rst $20
    ld hl, sp-$01
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
    ld [hl], b
    rst $38
    jr nc, @+$01

    jr c, @+$01

    inc a
    rst $38
    ld e, $ff
    ld e, $ff
    rra
    rst $38
    rra
    ret nz

    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
    nop
    ld hl, sp+$07
    dec bc
    db $f4
    db $eb
    inc d
    db $eb
    inc d
    db $eb
    inc d
    db $eb
    inc d
    db $eb
    inc d
    db $eb
    inc d
    db $eb
    inc d
    add sp, $17
    ldh a, [rP1]
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
    ld hl, sp-$01
    nop
    rst $38
    ld a, a
    ld a, [hl]
    ld a, a
    dec d
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
    ld a, c
    add [hl]
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    ldh a, [$7f]
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
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
    rra
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    db $fc
    rst $38
    nop
    ldh [$1f], a
    rra
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
    ldh [$1f], a
    rra
    ldh [rP1], a
    nop
    ld bc, $7f01
    ld a, a
    rst $38
    rst $38
    db $fc
    rst $38
    ret nz

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
    ccf
    rst $38
    rst $00
    rst $38
    jp Jump_000_00ff


    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    nop
    db $fc
    inc bc
    add b
    ld a, a
    add b
    ld a, a
    ldh [$80], a
    ldh a, [$c0]
    ld hl, sp-$19
    ld l, h
    di
    ld h, $f9
    inc de
    db $fc
    add hl, bc
    cp $0c
    rst $38
    ei
    rst $28
    ld a, e
    call z, $ed3a
    sbc d
    db $fd
    call z, $66fb
    db $fd
    inc sp
    cp $19
    rst $38
    rst $38
    inc e
    rst $38
    ld e, $ff
    dec de
    rst $38
    add hl, sp
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    ld [hl], b
    rst $38
    ld h, b
    nop
    ld hl, sp+$00
    db $fc
    nop
    rst $38
    rrca
    rst $38
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
    ret nz

    ret nz

    jr nc, jr_04b_4694

    cp $fe
    rra
    rra
    rra
    rra
    sbc a
    rra
    sbc a
    rra
    sbc e
    rra
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    rst $38
    rra
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop

jr_04b_4694:
    rst $38
    nop
    cp $00
    cp $00
    ld a, a
    add b
    ccf
    jp nz, $e31f

    ld bc, $010f
    rlca
    nop
    inc bc
    nop
    add c
    nop
    ret nz

    nop
    ldh [$8f], a
    ld [hl], b
    rst $38
    nop
    ld [hl], b
    adc a
    or b
    rst $08
    ld e, b
    rst $20
    inc l
    di
    rla
    ld hl, sp+$09
    cp $0c
    rst $38
    adc d
    ld a, a
    rst $38
    adc c
    rst $38
    ld [$08ff], sp
    rst $38
    adc b
    rst $38
    ldh [rIE], a
    ld [hl], b
    rst $38
    jr c, @+$01

    inc e
    nop
    ld a, a
    nop
    rst $38
    ccf
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
    rlca
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
    nop
    rst $38
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    ldh [$80], a
    ld hl, sp-$40
    cp $60
    rst $38
    ld hl, sp-$01
    xor $ff
    db $ed
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
    rst $38
    rst $38
    ld a, l
    rst $38
    ld e, $ff
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
    rst $38
    rst $38
    ld hl, sp-$08
    ld a, b
    ld b, $fe
    ld bc, $7f88
    rst $00
    ld a, a
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    ccf
    cp a
    ld a, a
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
    cp a
    ld a, a
    cp a
    ld a, a
    ccf
    rst $38
    rst $38
    ccf
    rst $38
    cp a
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
    inc bc
    rst $38
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
    rra
    ldh [$e0], a
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
    nop
    nop
    ld bc, $0202
    nop
    ld bc, $0000
    inc bc
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
    add b
    nop
    add b
    nop
    add b
    nop

jr_04b_47b8:
    add b
    nop

jr_04b_47ba:
    ret nz

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
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    cp $00
    cp $00
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
    add b
    nop
    ldh [rDIV], a
    ld hl, sp-$7f
    cp $c1
    cp $d0
    rst $38
    call c, $f9ff
    rst $38
    db $fd
    rst $38
    ei
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
    sbc a
    rst $38
    rst $08
    rst $38
    db $e3
    rst $38
    jr nc, @+$01

    db $10
    rst $38
    inc b
    rst $38
    nop
    db $fc
    nop
    nop
    nop
    nop
    rrca
    nop
    ld e, a
    nop
    rst $30
    ld [$80ff], sp
    rst $38
    add b
    rst $38
    add b
    nop
    add b
    nop
    add b
    inc c
    add b

jr_04b_4836:
    jr jr_04b_47b8

    jr jr_04b_47ba

jr_04b_483a:
    ld [$0880], sp
    add b
    ld [$1180], sp
    add b
    db $10
    add b
    nop
    nop
    nop
    nop
    ld [$5c00], sp
    nop
    jr jr_04b_484e

jr_04b_484e:
    jr jr_04b_4850

jr_04b_4850:
    rst $20
    jr jr_04b_483a

    jr @-$17

    jr jr_04b_4836

    jr nz, @+$01

    nop
    rst $38
    nop
    rst $28
    db $10
    add $39
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
    ld a, a
    add b
    add b
    nop
    nop
    nop
    nop
    inc b
    nop
    inc b
    jr nc, @+$26

    ld [de], a
    dec h
    ld [bc], a
    inc h
    ld d, c
    dec d
    ld a, [hl+]
    ld [$0833], sp
    ld h, e
    ld hl, sp+$07
    ld b, $f9
    inc bc
    inc b
    ld bc, $0106
    ld b, $01
    ld [bc], a
    inc bc
    nop
    inc bc
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    rrca
    ld bc, $0503
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    dec b
    ld bc, $0103
    inc bc
    ld bc, $0103
    ld [bc], a
    ld bc, $8002
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
    ccf
    ret nz

    adc a
    ldh a, [$c1]
    cp $e0
    rst $38
    ldh a, [rIE]
    add e
    db $fc
    add h
    rst $38
    and c
    rst $38
    and h
    rst $38
    or b
    rst $38
    and h
    rst $38
    add b
    rst $38
    and b
    rst $38
    xor h
    rst $38
    ldh a, [rIE]
    push af
    rst $38
    db $fc
    rst $38
    cp $ff
    ld [hl], e
    rst $38
    nop
    ldh [rP1], a
    nop
    inc bc
    nop
    cp $01
    add $39
    add a
    ld a, b
    ld c, $f1
    ld l, $d1
    cp $01
    xor $11
    xor $11
    call nz, $883b
    ld [hl], a
    inc c
    di
    ld [$44f7], sp
    cp e
    ld b, h
    cp e
    dec a
    jp nz, $807f

    cp $01
    ld a, h
    add e
    ret z

    scf
    ret z

    scf
    ld c, b
    or a
    ld [$00f7], sp
    rst $38
    adc c
    db $76
    ld e, c
    and [hl]
    ld a, l
    add d
    ld a, l
    add d
    ret


    ld [hl], $81
    ld a, [hl]
    add c
    ld a, [hl]
    add c
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
    inc bc
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
    ld [bc], a
    nop
    ld [bc], a
    add b
    ld b, c
    add b
    jr nz, @-$7e

    and b
    nop
    ld b, b
    nop
    jr nz, jr_04b_4952

jr_04b_4952:
    add hl, de
    nop
    rlca
    nop
    ld [bc], a
    nop
    inc b
    add c
    call z, $d823
    rst $20
    pop af
    rrca
    ei
    rlca
    rst $38
    ld b, a
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    add c
    rst $38
    ret nz

    rst $38
    pop bc
    rst $38
    db $e3
    rst $38
    di
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    cp a
    rra
    ld h, b
    inc c
    inc de
    nop
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
    add b
    nop
    ret nz

    nop
    ld h, b
    add b
    rra
    ldh [$fc], a
    nop
    cp $00
    ccf
    ret nz

    rrca
    ldh a, [rTAC]
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
    sbc a
    rst $38
    ld a, a
    adc a
    rst $28
    rra
    ccf
    rra
    ld [bc], a
    ccf
    add d
    ccf
    add d
    ccf
    ld bc, $073f
    ccf
    ld bc, $8037
    add hl, sp
    add b
    ld a, $7f
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
    sbc a
    ld a, a
    adc a
    ld a, a
    add e
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
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    db $10
    ld b, h
    jr nz, jr_04b_4a4c

    and b
    ld b, h
    ld b, b
    inc [hl]
    ld b, b
    inc c
    add b
    ld c, b
    add b
    ld [$d000], sp
    nop
    jr nc, jr_04b_4a17

jr_04b_4a17:
    ld h, b
    nop
    ret nz

    ldh [rNR32], a
    db $fc
    ld [c], a
    db $fc
    ld a, [c]
    cp $d9
    rst $38
    cp b
    rst $38
    db $fc
    cp $f9
    cp $f9
    cp $f9
    cp $f1
    cp $e9
    cp $f9
    cp $f9
    db $fc
    ld a, [c]
    db $fc
    ld [c], a
    ld hl, sp-$1c
    ld hl, sp-$1c
    ld hl, sp-$1c
    ldh a, [$c8]
    ldh a, [$88]
    ldh [$90], a
    ret nz

    jr nz, @-$7e

    ld b, b
    nop
    add b
    nop
    nop

jr_04b_4a4c:
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
    adc a
    ld [hl], b
    ld sp, $0ece
    pop af
    add e
    db $fc
    ldh a, [rIE]
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
    nop
    rst $38
    nop
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
    ld d, b
    rst $38
    ld d, b
    rst $38
    nop
    ld a, a
    jr jr_04b_4ac1

    nop
    rst $08
    nop
    db $e3
    nop
    ld hl, sp+$00
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    ld a, a
    rst $38
    ld e, a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_04b_4ac1:
    inc c
    dec c
    nop
    nop
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_04b_4aea

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_04b_4afa

    ld hl, $2121
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_04b_4b0d

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f

jr_04b_4aea:
    jr nc, jr_04b_4b1d

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $00
    nop
    nop
    nop
    scf
    jr c, jr_04b_4b31

    ld a, [hl-]
    dec sp

jr_04b_4afa:
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
    ld c, e
    ld c, h
    dec a
    dec a

jr_04b_4b0d:
    dec a
    ld c, l
    dec a
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    dec a
    dec a
    dec a
    dec a

jr_04b_4b1d:
    dec a
    dec a
    dec a
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
    dec a
    dec a
    ld h, e
    ld h, h
    ld h, l

jr_04b_4b31:
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
    nop
    ld a, a
    add b
    add c
    add d
    ld hl, $3d3d
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
    ld hl, $2121
    dec a
    dec a
    dec a
    ld c, h
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    ld hl, $9594
    sub [hl]
    sub a
    sbc b
    dec a
    dec a
    dec a
    dec a
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    ld hl, $2121
    ld hl, $9e21
    sbc a
    dec a
    dec a
    dec a
    dec a
    and b
    and c
    and d
    and e
    and h
    and l
    ld hl, $2121
    ld hl, $2121
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    and [hl]
    and a
    and l
    ld hl, $a821
    xor c
    xor d
    xor e
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    xor h
    xor l
    ld hl, $2121
    xor [hl]
    dec a
    xor a
    or b
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    or c
    or d
    or e
    ld hl, $2121
    or h
    dec a
    or l
    or [hl]
    dec a
    dec a
    dec a
    dec a
    dec a
    dec a
    or a
    cp b
    cp c
    ld hl, $2121
    cp d
    cp e
    ld hl, $3dbc
    dec a
    dec a
    dec a
    dec a
    dec a
    cp l
    cp [hl]
    cp a
    ld hl, $2121
    ld hl, $2121
    ret nz

    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld b, $07
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, $01
    ld bc, $0101
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
    ld bc, $0101
    ld bc, $0601
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
    ld bc, $0101
    ld bc, $0101
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, $06
    ld b, $03
    ld bc, $0601
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    nop
    ld b, $06
    ld b, $06
    ld bc, $0706
    rlca
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
    ld b, $07
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    nop
    nop
    nop
    ld bc, $0101
    ld b, $07
    ld [bc], a
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0000
    nop
    nop
    ld b, $06
    inc bc
    inc bc
    ld [bc], a
    rlca
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc bc
    rlca
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
    nop
    nop
    nop
    ld b, $06
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
    jr nz, jr_04b_4cdb

jr_04b_4cdb:
    nop
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
    ld [bc], a
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
    nop
    nop
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
    ld bc, $0300
    ld bc, $0103
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0307
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    ld b, $03
    ld c, $07
    ld c, $07
    ld c, $07
    ld c, $07
    inc e
    rrca
    inc e
    rrca
    inc e
    rrca
    inc e
    rrca
    inc e
    rrca
    jr c, jr_04b_4d8f

    jr c, @+$21

    jr c, @+$21

    jr c, @+$21

    jr c, @+$21

    jr c, @+$21

    jr c, @+$21

    jr c, @+$21

    jr c, @+$21

    jr c, @+$21

    jr c, @+$21

    inc a
    rra
    inc a
    rra
    inc a
    rra
    inc e
    rrca
    inc e
    rrca
    inc e

jr_04b_4d8f:
    rrca
    ld e, $0f
    ld e, $0f
    ld c, $07
    ld c, $07
    ld c, $07
    ld c, $07
    ld c, $07
    ld e, $0f
    ld e, $0f
    ld e, $0f
    ld e, $0f
    inc e
    rrca
    inc e
    rrca
    ld e, $0f
    ld e, $0f
    ld c, $07
    ld c, $07
    ld c, $07
    ld c, $07
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rlca
    inc bc
    rlca
    inc bc
    rlca

Jump_04b_4dc3:
    inc bc
    inc bc
    ld bc, $0103
    inc bc
    nop
    ld bc, $0100
    nop

Call_04b_4dce:
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
    ld b, $00
    ld b, $00
    ld b, $00
    ld c, $00
    ld c, $00
    ld c, $00
    rrca
    nop
    rrca
    nop
    ld c, $00
    ld b, $00
    ld b, $00
    rlca
    nop
    inc bc
    nop
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $00
    jr nc, jr_04b_4e21

    ld [hl], b
    ccf
    ld h, b
    ccf
    ldh [$7f], a
    ldh [$7f], a
    ldh [$7f], a
    ldh [$7f], a
    ret nz

    rst $38
    rst $38

jr_04b_4e21:
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    cp $c1
    cp $81
    cp $81
    cp $81
    rst $38
    add b
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$00ff], sp
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
    nop
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$00ff], sp
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
    ld [$08ff], sp
    rst $38
    ld [$04ff], sp
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $ff80
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [$7f], a
    jr nz, jr_04b_4eb2

jr_04b_4eb2:
    jr nz, jr_04b_4eb4

jr_04b_4eb4:
    jr nc, jr_04b_4eb6

jr_04b_4eb6:
    jr nc, jr_04b_4eb8

jr_04b_4eb8:
    jr nc, jr_04b_4eba

jr_04b_4eba:
    jr c, jr_04b_4ebc

jr_04b_4ebc:
    jr c, jr_04b_4ebe

jr_04b_4ebe:
    jr c, jr_04b_4ec0

jr_04b_4ec0:
    jr c, jr_04b_4ec2

jr_04b_4ec2:
    jr c, jr_04b_4ec4

jr_04b_4ec4:
    cp b
    nop
    ld hl, sp+$00
    db $fc
    nop
    ld a, h
    nop
    inc a
    nop
    inc e
    nop
    ld e, $00
    ld c, $00
    adc [hl]
    nop
    add a
    nop
    rst $00
    nop
    rst $00
    nop
    rst $20
    nop
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, l
    nop
    ld a, l
    nop
    ld a, c
    nop
    ld a, c
    nop
    ld a, c
    nop
    dec a
    nop
    ccf
    nop
    rra
    nop
    rrca
    nop
    rlca
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
    inc bc
    nop
    ld b, $01
    inc c
    rlca
    inc e
    rrca
    jr jr_04b_4f1d

    jr c, jr_04b_4f2f

    ldh a, [$3f]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, $41ff

jr_04b_4f1d:
    rst $38
    add c
    rst $38
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_04b_4f2f:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    inc bc
    rst $38
    dec b
    rst $38
    ld b, $ff
    rrca
    rst $38
    rra
    rst $38
    ld e, $ff
    ld a, $ff
    ld e, $ff
    ld l, $ff
    ld [hl], $ff
    ld [hl], $ff
    ld a, $ff
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    dec a
    rst $38
    ccf
    rst $38
    dec e
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld b, $00
    ld b, $00
    inc c
    nop
    inc e
    nop
    inc a
    nop
    inc a
    nop
    jr c, jr_04b_4f9c

jr_04b_4f9c:
    jr c, jr_04b_4f9e

jr_04b_4f9e:
    ld a, b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ld a, h
    nop
    ld a, $00
    ld a, a
    ldh a, [$7f]
    db $fc
    ld a, [hl]
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rst $18
    ccf
    rst $08
    ccf
    adc a
    ld a, a
    add a
    ld a, a
    rlca
    rst $38
    ld bc, $81ff
    ld a, a
    add b
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    db $dd
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    or a
    rst $38
    ld h, a
    rst $38
    set 7, a
    ld b, e
    rst $38
    dec hl
    rst $38
    ld d, a
    rst $38
    ld d, $ff
    dec d
    rst $38
    ld d, e
    rst $38
    ld d, e
    rst $38
    ld de, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    ld [bc], a
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    dec b
    rst $38
    ld bc, $11ff
    rst $38
    dec b
    rst $38
    ld bc, $01ff
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    add hl, bc
    rst $38
    inc b
    rst $38
    inc d
    rst $38
    ld b, $ff
    ld a, [bc]
    rst $38
    ld c, $ff
    ld c, $ff
    rrca
    rst $38
    sub [hl]
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld e, a
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    cp l
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
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
    add a
    inc bc
    inc bc
    ld bc, $0001
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
    add b
    nop
    ret nz

    nop
    ldh [$80], a
    ldh a, [$e0]
    ld hl, sp-$08
    ld a, h
    db $fc
    rst $38
    rst $38
    ld e, a
    rst $38
    sbc a
    rst $38
    ld a, l
    rst $38
    ld l, c
    rst $38
    ld b, l
    rst $38
    pop bc
    rst $38
    ld b, a
    rst $38
    rra
    rst $38
    dec c
    rst $38
    ld b, b
    cp a
    ld b, c
    cp a
    add c
    ld a, a
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff
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
    add a
    ld a, a
    rst $00
    ccf
    adc a
    ld a, a
    rlca
    rst $38
    add a
    ld a, a
    rlca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    ld b, $ff
    ld b, $ff
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ei
    rst $38
    ld [hl], e
    rst $38
    ld a, e
    rst $38
    db $fd
    rst $38
    ld a, a
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
    cp a
    rst $38
    rst $38
    rst $38
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
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
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
    ld b, a
    cp c
    and a
    ret c

    rst $00
    ld hl, sp+$43
    db $fc
    ld hl, $93fe
    ld a, a
    sbc e
    ld a, a
    ld e, b
    rst $38
    ld e, b
    ld a, a
    inc a
    ld a, a
    dec a
    ld a, [hl]
    rra
    inc a
    dec de
    inc a
    dec e
    ld e, $0d
    ld e, $0d
    ld e, $0d
    ld c, $04
    rrca
    ld b, $0f
    ld b, $07
    inc bc
    rlca
    inc bc
    inc bc
    ld bc, $0103
    ld bc, $0001
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
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    nop
    nop
    add b
    ret nz

    add b
    ldh a, [$c0]
    ld hl, sp-$40
    cp $e0
    rst $38
    ldh a, [rIE]
    or e
    db $fc
    ld hl, sp-$01
    db $fc
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
    cp $ff
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ret nz

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
    nop
    rst $38
    nop
    rst $38

jr_04b_51ec:
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
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    di
    sub c
    rst $30
    ret nc

    rst $20
    ld h, b
    db $e3
    jr nz, jr_04b_51ec

    ld h, b
    rst $20
    ld h, b
    rst $20
    db $e4
    rst $30
    ld a, [c]
    rst $30
    ld sp, hl
    rst $30
    ld hl, sp-$01
    db $fc
    ld a, a
    ld a, [hl]
    ccf
    ccf
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    sbc a
    rra
    sbc [hl]
    rra
    cp l
    ld e, $7d
    cp [hl]
    cp h
    cp $fa
    db $fc
    ld a, [$fafc]
    db $fc
    ld a, [$7afc]
    db $fc
    ld a, d
    db $fc
    ld a, d
    ld a, h
    ld a, [hl-]
    ld a, h
    ld a, [hl-]

jr_04b_523d:
    ld a, h
    ld a, [de]
    inc a
    sbc c
    ld a, $cd
    ld e, $ed
    ld e, $e6
    rra
    or $0f
    ld a, [$fd07]
    inc bc
    rst $38
    ld bc, $00ff
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
    ld a, a
    nop
    add hl, de
    rlca
    inc e
    rrca
    ld c, $87
    rlca
    rst $20
    ldh a, [rTAC]
    ld hl, sp+$07
    jr c, jr_04b_523d

    inc b
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    ld bc, $01fe
    cp $00
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    pop bc
    jp $e1e1


    ldh a, [$f0]
    ld a, b
    ld a, b
    inc a
    inc a
    ld e, $1e
    rrca
    rrca
    ld b, $07
    inc b

jr_04b_52a1:
    rlca
    add b
    adc a
    ld b, b
    ld a, a
    nop
    ld a, [hl]
    nop
    ld hl, sp+$10
    ld hl, sp+$08
    add sp, $04
    call nz, $e2ff
    rst $38
    pop af
    rst $38
    ld hl, sp+$7f
    ld a, h
    ccf
    ld a, $1f
    rra
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
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
    add h
    nop
    ret z

    nop
    jp z, Jump_04b_6a80

    add b
    ld l, c
    ret nz

    or b
    ret nz

    cp b
    ld h, b
    reti


    jr nc, jr_04b_5353

    jr nc, jr_04b_5357

    jr jr_04b_52a1

    inc c
    sbc e
    ld c, $89
    rlca
    adc h
    add $03
    add e
    ld b, c
    and e
    ld b, c
    rra
    pop hl
    add a
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld b, c
    cp a
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
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
    rrca
    rst $38
    rlca
    rst $38
    ld [bc], a
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
    pop bc
    rst $38
    rst $00
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_04b_5353:
    cp $ff
    cp $ff

jr_04b_5357:
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    cp $f8
    cp $f8
    cp $f0
    db $fc
    ldh a, [$fc]
    ldh [$f8], a
    ldh [$f8], a
    ldh [$f8], a
    ret nz

    ldh a, [$c0]
    add b
    rst $38
    ret nz

    rst $38
    ldh [$fe], a
    ldh a, [$7c]
    ld hl, sp+$78
    ldh a, [$30]
    ldh [$e3], a
    add [hl]
    add a
    ld c, $07
    ccf
    inc hl
    rst $38
    db $e3
    rst $38
    pop af
    rst $38
    ld a, h
    rst $38
    inc a
    rst $38
    ld e, $ff
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    add e
    rst $38
    ld b, c
    rst $38
    jr nz, @+$01

    db $10

jr_04b_539c:
    rst $38
    adc b
    rst $38
    call nz, $e2ff
    rst $38
    ld a, [c]
    rst $38
    ld sp, hl
    ld a, a
    ld a, h
    ccf
    ld a, $1f
    rra
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0001
    nop
    ld b, b
    nop
    ld b, b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    ld [$1000], sp
    nop
    stop
    jr nz, jr_04b_53ca

jr_04b_53ca:
    and c
    nop
    ld [c], a
    nop
    db $e4
    nop
    db $e4
    nop
    jr nc, jr_04b_539c

    adc b
    db $fc
    ldh a, [$fe]
    ldh [rIE], a
    db $fc
    rst $38
    ld hl, sp-$01
    cp $ff
    ld h, [hl]
    ld sp, hl
    db $e4
    ld sp, hl
    jp $e3fc


    db $fc
    rst $20
    ld hl, sp-$20
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
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    add b
    ld a, [hl]
    ret nz

    inc a
    ret nz

    inc a
    ld hl, sp+$38
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rNR41]
    ldh a, [$60]
    ldh a, [$60]
    ldh a, [$e0]
    ldh a, [$e0]
    ldh a, [$e0]
    ldh a, [$e0]
    ldh a, [$e0]
    ldh a, [$e0]
    ldh a, [$e0]
    ldh a, [$e0]
    ldh a, [$c0]
    ldh a, [$c0]
    ldh [$c0], a
    ldh [$c0], a
    ldh [$80], a
    ldh [$80], a
    ldh [$80], a
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    nop
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
    ld bc, $0100
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    ld a, a
    nop
    nop
    rst $08
    nop
    rrca
    nop
    rra
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
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [$7f], a
    ldh a, [$7f]
    ld hl, sp+$3f
    db $fc
    sbc a
    db $fc
    adc a
    cp $c7
    rst $38
    rst $20
    rst $38
    di
    rst $38
    ld [hl], c
    rst $38
    jr c, @+$01

    inc a
    rst $38
    ld e, $ff
    rrca
    rst $38
    rlca
    rst $38
    add e
    rst $38
    ld b, c
    rst $38
    ld hl, $90ff
    rst $38
    ret z

    rst $38
    db $e4
    rst $38
    ld a, [c]
    ld a, a
    ld sp, hl
    ld a, a
    db $fc
    ccf
    ld a, [hl]
    ld e, a
    ld a, a
    ccf
    cpl
    cpl
    scf
    rra
    inc sp
    rla
    add hl, de
    inc de
    inc e
    adc b
    rrca
    adc h
    rrca
    inc b
    rlca
    ld b, $07
    ld [bc], a
    rlca
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    ld bc, $00f0
    ld hl, sp+$00
    cp $00
    rst $38
    add c
    rst $38
    db $e3
    rst $38
    rst $30
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
    add b
    rst $38
    add sp, -$01
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add h
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
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
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
    rrca
    nop
    rrca
    nop
    rrca
    nop
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
    ccf
    nop
    ld a, a
    nop
    ld a, a
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

jr_04b_555c:
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [$7f]
    ld hl, sp+$3f
    ld hl, sp-$61
    db $fc
    adc a
    db $fc
    rst $00
    cp $e7
    rst $38
    di
    rst $38
    ld a, c
    rst $38
    inc a
    rst $38
    ld e, $ff
    ld e, $f7
    sub a
    rst $30
    ld d, e
    rst $30
    ld sp, $b0f7
    rst $20
    ldh [$ef], a
    add sp, -$31
    call nz, $c2cf
    rrca
    add hl, bc
    rra
    inc e
    ld a, a
    ld e, $7f
    rrca
    rst $38
    rlca
    inc bc
    inc bc
    ld c, $0f
    pop af
    cp $03
    db $fc
    ld c, $f0
    jr nc, jr_04b_555c

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
    ldh [$df], a
    ld hl, sp-$19
    cp $f1
    rst $38
    db $fc
    rst $38
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr z, @+$01

    ld a, a
    rst $38
    nop
    rst $38

jr_04b_55be:
    nop
    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    jr nz, jr_04b_55be

    nop
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
    inc b
    rst $38
    ld h, $ff
    ld [hl+], a
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
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
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [$7f]
    ldh a, [$3f]
    ld sp, hl
    sbc a
    ld sp, hl
    rst $18
    db $fd
    rst $28
    cp $f6
    db $fc
    ld a, h
    ld sp, hl
    add hl, sp
    pop af
    db $10
    rst $20
    ld h, $cf
    rst $00
    adc a
    inc bc
    sbc a
    add c
    cp [hl]
    adc [hl]
    jr nc, jr_04b_5652

    ld bc, $0f00
    nop
    ccf
    jr nc, @+$01

    jr c, @+$01

    inc e
    rst $38
    ld c, $ff
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
    ld a, a
    add b
    cp a
    ret nz

    ld l, a
    ldh a, [rPCM34]
    ld hl, sp+$33
    db $fc
    add e
    db $fc
    jp $e7fc


    ld hl, sp-$09
    ld hl, sp+$0f
    ldh a, [$e0]
    sbc a

jr_04b_5652:
    ret nz

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
    ld b, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    jr nc, @+$01

    sub b
    rst $38
    sbc b
    rst $38
    sbc b
    rst $38
    ld c, h
    rst $38
    ld c, h
    rst $38
    inc h
    rst $38
    ld h, $ff
    ld d, $ff
    inc de
    rst $38
    inc de
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    dec b
    rst $38
    dec b
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    cp a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    ld bc, $80ff
    cp $c2
    cp $e4
    ld a, l
    ld hl, sp+$3b
    ldh [$27], a
    ret z

    rst $08
    jr jr_04b_56df

    ld a, h
    ld b, a
    cp $63
    rst $38
    ld sp, $19ff
    rst $38
    jr @+$01

    inc c
    rst $38
    ld b, $ff

jr_04b_56df:
    inc bc
    rst $38
    add c
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld [hl], b
    rst $38
    jr c, @+$01

    inc e
    rst $38
    ld c, $ff
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
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, [hl]
    rst $38
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
    rst $38
    nop
    cp a
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

    ld a, a
    ldh [$7f], a
    ldh a, [$3f]
    ld hl, sp-$61
    ld hl, sp-$31
    db $fc
    ld h, a
    cp $37
    rst $38
    inc de
    rst $38
    dec de
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    add d
    rst $38
    jp nz, $e2ff

    rst $38
    ld [hl], c
    rst $38
    ld sp, $19ff
    rst $38
    dec c
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc bc
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
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
    ld bc, $0300
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
    nop
    dec bc
    nop
    ld bc, $0000
    nop
    ld bc, $0100
    nop
    inc bc
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
    rrca
    ld [bc], a
    rrca
    ld b, $0f
    ld b, $0f
    ld b, $0f
    rst $38
    nop
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    cp $c0
    ret nz

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
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $6700
    nop
    rst $38
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
    add b
    rst $08
    nop
    rst $00
    nop
    add c
    nop
    nop
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
    add b
    rst $38
    ld b, b
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$f0], a
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
    inc bc
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
    nop
    nop
    nop
    nop
    ld bc, $7700
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sbc [hl]
    nop
    sbc [hl]
    nop
    sbc h
    nop
    adc h
    nop
    add [hl]
    nop
    add d
    nop
    pop bc
    nop
    ld b, c
    nop
    ld [hl], b
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
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f8]
    nop
    nop
    nop
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
    rra
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    nop
    sbc h
    nop
    rst $18
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
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    rlca
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
    rst $38
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
    cp $00
    nop
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
    inc c
    inc c
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr @+$0e

    inc c
    inc c
    inc c
    add hl, de
    rlca
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_04b_597b

    ld [hl+], a
    inc c
    inc c
    inc c
    inc c
    inc c
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_04b_5990

    ld a, [hl+]
    dec hl
    inc l
    dec l
    inc c
    inc c
    inc c
    inc c
    inc c
    ld l, $2f
    jr nc, jr_04b_59a5

    ld [hl-], a
    inc sp
    add hl, hl
    inc [hl]
    dec [hl]
    ld [hl], $0c

jr_04b_597b:
    scf
    jr c, jr_04b_598a

    inc c
    inc c
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $29
    ccf
    ld b, b
    ld b, c

jr_04b_598a:
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a

jr_04b_5990:
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
    ld d, e
    ld d, h
    rlca
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e

jr_04b_59a5:
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    rlca
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    rlca
    rlca
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    rlca
    rlca
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
    rlca
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
    rlca
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
    rlca
    rlca
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
    xor b
    xor c
    xor d
    xor e
    xor h
    rlca
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
    rlca
    rlca
    rlca
    rlca
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
    rlca
    rlca
    rlca
    sub $d7
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    ld h, e
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$f1]
    rlca
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp+$0c
    ld sp, hl
    inc c
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
    ld de, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld bc, $0101
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
    nop
    ld bc, $0101
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
    nop
    ld bc, $0101
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
    nop
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
    nop
    nop
    ld bc, $0101
    ld bc, $0505
    dec b
    dec b
    dec b
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
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    ld bc, $0000
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld bc, $0101
    ld bc, $0000
    nop
    ld b, $01
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    ld b, $06
    ld bc, $0301
    inc bc
    inc bc
    rlca
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld b, $03
    ld bc, $0701
    ld b, $06
    ld b, $00
    ld bc, $0101
    nop
    nop
    nop
    nop
    inc bc
    inc b
    ld bc, $0701
    ld b, $06
    ld b, $07
    ld bc, $0101
    ld bc, $0000
    nop
    inc bc
    inc b
    ld bc, $0701
    ld b, $06
    rlca
    rlca
    rlca
    rlca
    nop
    ld bc, $4000
    nop
    inc bc
    inc b
    ld bc, $0704
    ld b, $06
    ld b, $06
    ld b, $07
    rlca
    rlca
    nop
    nop
    nop
    inc bc
    inc bc
    ld bc, $0601
    nop
    ld b, $00
    ld b, $06
    ld b, $06
    ld b, $07
    rrca
    ld [$0b0b], sp
    add hl, bc
    add hl, bc
    ld c, $0e
    ld c, $0e
    ld c, $0f
    rrca
    ld c, $0e
    ld c, $0e
    rrca
    ld a, a
    add b
    ld a, a
    add b
    dec sp
    call nz, $e41b
    db $db
    inc h
    rst $08
    jr nc, @-$47

    ld c, b
    inc de
    db $ec
    add hl, sp
    add $9d
    ld h, d
    rra
    ldh [rNR34], a
    pop hl
    rra
    ldh [$af], a
    ld d, b
    adc a
    ld [hl], b

jr_04b_5bce:
    rst $08
    jr nc, @-$2f

    jr nc, jr_04b_5bce

jr_04b_5bd3:
    inc b
    ei
    inc b
    cp $01
    cp $01
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    cp $01

jr_04b_5be2:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, @+$01

    nop
    rst $20
    jr jr_04b_5be2

    inc c
    rst $20
    jr @-$03

    inc b
    rst $28
    db $10
    or a
    ld c, b
    ei
    inc b
    xor e
    ld d, h
    ld h, e
    sbc h
    ld d, c
    xor [hl]
    ld l, c
    sub [hl]
    jr nc, jr_04b_5bd3

    ld de, $50ee
    xor a
    or b
    ld c, a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld [bc], a
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
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    nop
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    nop
    rst $38
    dec b
    ld a, [$fb04]
    ld bc, $04fe
    ei
    inc b
    ei
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
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

jr_04b_5c78:
    nop
    nop

jr_04b_5c7a:
    nop
    nop

jr_04b_5c7c:
    nop
    nop

jr_04b_5c7e:
    nop
    nop
    ld e, a
    ldh [$5f], a
    ldh [$df], a
    ld h, b
    sbc $61
    sbc $61
    rst $38
    ld h, b
    or l
    ld l, d
    and c
    ld a, [hl]
    or e
    ld l, h
    xor e
    ld [hl], h
    and e
    ld a, h
    db $eb
    inc [hl]
    rst $28

jr_04b_5c99:
    jr nc, @+$01

    jr nc, jr_04b_5c7c

    jr nc, jr_04b_5c7e

    jr nc, jr_04b_5c78

    jr c, jr_04b_5c7a

    jr c, jr_04b_5c7c

    jr c, @-$07

    jr jr_04b_5c99

    rra
    ld hl, sp+$1f
    ld l, b
    sbc a
    inc l
    rst $18
    pop af
    nop
    pop bc
    nop
    ret nz

    nop
    ret nz

    inc bc
    ret nz

    inc bc
    ldh [$03], a
    ldh [$03], a
    ldh [$03], a
    ld [c], a
    inc bc
    ld [c], a
    inc bc
    ldh [rSB], a
    ldh [rSB], a
    ldh a, [rSB]
    ldh a, [rSB]
    ldh a, [rSB]
    pop af
    ld bc, $01f1
    pop af
    ld bc, $01f1
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld a, a
    add a

Call_04b_5ce2:
    ccf
    rst $00
    cp a
    ld b, a
    sbc e
    ld h, a
    dec hl
    rst $10
    daa
    db $db
    or a
    ld c, e
    dec de
    rst $20
    rlca
    ei
    rlca
    ei
    dec b
    ei
    ld bc, $01ff
    rst $38
    dec b
    ei
    ld bc, $81ff
    ld a, a
    add hl, bc
    rst $30
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
    ld [$00f7], sp
    rst $38
    ld h, b
    sbc a
    nop
    rst $38
    jr nz, @-$1f

    add b
    ld a, a
    ld b, h
    cp e
    jr nz, @-$1f

    nop
    rst $38
    nop
    rst $38
    ld bc, $20fe
    rst $18
    inc d
    db $eb
    adc b
    ld [hl], a
    inc d
    db $eb
    nop
    rst $38
    inc bc
    rst $38
    adc a
    ld a, a
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
    rst $30
    ld [$04fb], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    rlca
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    ld bc, $fffe
    nop
    rst $38
    nop
    ccf
    nop
    ld bc, $0000
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
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    inc e
    rst $38
    nop
    rst $38
    nop
    rst $38
    add [hl]
    rst $38
    sbc [hl]
    rst $38
    xor a
    rst $38
    cp a
    rst $38
    ld e, a
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
    ld a, a
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
    ccf
    ccf
    ccf
    ccf
    rra
    rra
    dec de
    dec de
    ld e, $1e
    dec de
    dec de
    rra
    rra
    ld a, [de]
    ld a, [de]
    rlca
    rlca
    rlca
    rlca
    add [hl]
    ld b, $8a
    ld a, [bc]
    add h
    inc b
    adc b
    ld [$0888], sp
    add b
    nop
    add b
    nop
    call nz, $c004
    nop
    ret nz

    nop
    call nz, $c204
    ld [bc], a
    ret nz

    nop
    ret nz

jr_04b_5ddb:
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ldh a, [rP1]
    rst $30
    nop
    rst $38
    nop
    db $f4
    nop
    rst $28
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
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    sbc l
    ld h, b
    db $db

jr_04b_5e01:
    jr nz, jr_04b_5ddb

    jr nz, jr_04b_5e01

    nop
    db $f4
    ld [$00fe], sp
    ei
    inc b
    db $fd
    ld [bc], a
    sbc $21
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
    db $10
    ldh a, [rP1]
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
    ld de, $11ff
    rst $38
    sub c
    rst $38
    sbc e
    rst $38
    sbc c
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $18
    dec l
    dec l
    ld e, [hl]
    ld e, [hl]
    and [hl]
    and [hl]
    and d
    and d
    add hl, bc
    add hl, bc
    add h
    add h
    nop
    nop
    ld [$0008], sp
    nop
    nop
    nop
    ld [$0008], sp
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    jr nz, jr_04b_5eaa

    db $10
    stop
    nop
    ld b, b
    ld b, b
    ccf
    nop
    rra
    nop
    rra
    nop
    rrca
    nop
    rst $00
    nop
    jp $4100


    nop
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a

jr_04b_5eaa:
    ldh [rP1], a
    ldh [rP1], a
    ld h, b
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    inc [hl]
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    and e
    nop
    or b
    nop
    rst $38
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
    ret nz

    ret nz

    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    add a
    rst $38
    sub [hl]
    rst $38
    sbc a
    rst $38
    or a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ld a, [hl]
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    ldh [$e0], a
    ret nz

    ret nz

    sbc e
    sbc e
    ld e, a
    ld e, a
    ld a, [hl]
    ld a, [hl]
    rst $18
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    ld a, a
    ld a, a
    cp [hl]
    cp [hl]
    ld a, a
    ld a, a
    jp hl


    jp hl


    dec c
    dec c
    and l
    and l
    ret


    ret


    add b
    add b
    ld bc, $8001
    add b
    nop
    nop
    inc b
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
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld b, $00
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
    sub [hl]
    ld l, e
    or d
    ld c, a
    add d
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    pop af
    rrca
    ld a, b
    rlca
    ld b, a
    ld bc, $0161
    ld bc, $4101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    jr z, @+$03

    ld de, $0100
    nop
    add l
    nop
    ld e, c
    nop
    ldh [rP1], a
    ld c, b
    add b
    ld a, [$fc00]
    nop
    pop hl
    add b
    cp $ff
    inc a
    db $fc
    inc hl
    rst $38
    ld l, b
    rst $38
    rst $10
    rst $38
    rst $18
    rst $38
    push de
    rst $38
    db $db
    rst $38
    cp $ff
    ei
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    db $ed
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ei
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    ei
    ei
    sbc e
    sbc e
    ld a, e
    ld a, e
    ld a, c
    ld a, c
    ld h, l
    ld h, l
    ld e, b
    ld e, b
    ld d, h
    ld d, h
    add hl, bc
    add hl, bc
    ld bc, $0501
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    nop
    inc bc
    nop
    rlca
    nop
    inc b
    nop
    dec bc
    nop

jr_04b_5fde:
    scf
    nop

jr_04b_5fe0:
    rrca
    nop
    ccf
    nop
    rra
    nop
    rra
    nop
    rlca
    nop
    rra
    nop
    scf
    nop
    ld a, a
    nop
    rst $38
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    rra
    nop
    ld c, $00
    add hl, de
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    dec c
    nop
    dec de
    nop
    ccf
    nop
    cpl
    nop
    dec sp
    nop
    rra
    nop
    rlca
    nop
    rla
    nop
    rra
    nop
    rra
    nop
    add hl, bc
    nop
    ld bc, $0300
    nop
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
    ld bc, $0000
    nop
    rst $08
    ccf
    rst $30
    rlca
    ld [hl], e
    add e
    ld d, c
    and b
    and b
    ld b, b
    ret z

    nop
    ret z

    nop
    ret z

    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a

jr_04b_6047:
    nop
    inc bc
    nop
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
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    jr nz, jr_04b_5fde

    jr z, jr_04b_5fe0

    nop
    add b
    ld [hl+], a
    add b
    ld [hl+], a
    add b
    or h
    add b
    sub h
    add b
    sub h
    add b
    sub b
    add b
    sbc b
    add b
    ccf
    nop
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    ccf
    add b
    cp a
    add b
    ccf
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    sbc a
    add b
    rst $18
    ret nz

    rst $18
    ret nz

    rst $18
    ret nz

    rst $18
    ret nz

    rst $18
    ret nz

    rst $18
    ret nz

    rst $18
    ret nz

    rst $18
    ret nz

    rst $18
    ret nz

    rst $18
    ret nz

    rst $18
    ret nz

    rst $18
    ret nz

    rst $18
    ret nz

    rst $18
    ret nz

    rst $18
    ret nz

    rst $08
    ret nz

    rst $08
    ret nz

    rst $28
    ldh [$ef], a
    ldh [$ef], a
    ldh [$e8], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$c0], a
    ret nz

    add b
    add b
    inc hl
    jr nz, jr_04b_6047

    add b
    nop
    nop
    inc sp
    nop
    ld [hl], a
    nop
    ld a, $00
    sbc l
    nop
    rst $38
    nop
    rst $28
    nop
    sbc a
    nop
    rst $38
    nop
    rst $18
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
    cp $00
    rst $38
    nop
    ei
    nop
    rst $30
    nop
    rst $28
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
    cp $00
    db $fd
    nop
    db $ed
    nop
    ei
    nop
    rst $30
    nop
    rst $20
    nop
    rst $08
    nop
    rra
    nop
    cpl
    nop
    ld a, a
    nop
    rst $20
    nop
    adc $00
    rst $08
    nop
    add a
    nop
    rlca
    nop
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
    ld a, a
    ccf
    ld l, a
    rra
    ld a, [hl]
    rlca
    ld a, d
    rlca
    ld a, [bc]
    rlca
    ld [$0807], sp
    rlca
    ld [$9207], sp
    rlca
    ld hl, sp+$07
    ld a, [c]
    rlca
    xor $03
    ld h, [hl]
    inc bc
    ld h, $03
    ld e, [hl]
    inc bc
    ld c, $03
    sbc [hl]
    inc bc
    ld c, $03
    ld e, $03
    ld e, [hl]
    inc bc
    ld a, $03
    dec de
    inc bc
    ld b, $03
    ld c, $03
    rlca
    inc bc
    ld b, $03
    ld [bc], a
    inc bc
    ld d, b
    inc bc
    ld b, d
    inc bc
    jp nc, $d803

    inc bc
    ld hl, sp+$03
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    cp l
    ld b, e
    cp l
    ld b, e
    db $fd
    inc bc
    cp l
    ld b, e
    db $fd
    inc bc
    cp l
    ld b, e
    db $dd
    inc hl
    db $dd
    inc hl
    call $9d33
    ld h, e
    call $ed33
    inc de
    jp hl


    rla
    db $fd
    inc bc
    push af
    dec bc
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    reti


    daa
    or c
    ld c, a
    pop hl
    rra
    pop hl
    rra
    ld h, c
    sbc a
    pop bc
    ccf
    add a
    ld a, a
    ccf
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    ldh [rIE], a
    ld a, a
    nop
    rst $38
    nop
    db $fc
    nop
    ei
    nop
    cp a
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
    nop
    cp $00
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
    cp $00
    db $fc
    nop
    ld sp, hl
    nop
    ei
    nop
    db $f4
    nop
    xor $00
    call $df00
    nop
    cp a
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
    db $fd
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
    rst $38
    nop
    ld [bc], a
    db $fd
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
    nop
    rst $38
    nop
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
    ld [bc], a
    db $fd
    rst $38
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
    ccf
    nop
    ccf
    nop
    rra
    nop
    rra
    nop
    rra
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
    nop
    nop
    db $fd
    nop
    ei
    nop
    rst $38
    nop
    ld h, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
    ld bc, $20ff
    rst $18
    ei
    nop
    rst $30
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$01f7], sp
    cp $01
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    inc c
    ei
    db $10
    rst $38
    jr nz, @+$01

    jr nz, @+$01

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
    cp $00
    cp $00
    db $fc
    nop
    ld sp, hl
    nop
    ldh a, [rP1]
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
    nop

jr_04b_62d9:
    nop
    nop
    nop
    rst $38
    nop
    rst $38

jr_04b_62df:
    nop
    nop
    rst $38
    nop

jr_04b_62e3:
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
    inc b

jr_04b_62f1:
    ei
    ld [$20f7], sp
    rst $18
    nop
    rst $38
    jr nz, jr_04b_62d9

    nop
    rst $38
    nop
    rst $38
    jr nz, jr_04b_62df

    nop
    rst $38
    jr nz, jr_04b_62e3

    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    jr nz, jr_04b_62f1

    and b
    ld e, a
    db $10
    rst $28
    nop
    rst $38
    db $10
    rst $28
    db $10
    rst $28
    nop
    rst $38
    inc b
    ei
    db $10
    rst $28
    nop
    rst $38
    ld [$00f7], sp
    rst $38
    inc b
    ei
    dec b
    ld a, [$fb04]
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00fe
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
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    rrca
    nop
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
    ldh [rP1], a
    rst $38
    nop
    cp $00
    nop

jr_04b_6361:
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    jr z, jr_04b_6361

    ld d, b
    rst $28
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
    cp $00
    db $fd
    nop
    ei
    nop
    ei
    nop
    rst $30
    nop
    db $10
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    and b
    rst $18
    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
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
    ei
    nop
    ei
    nop
    rst $30
    nop
    rst $30
    nop
    db $fd
    nop
    rst $38
    nop
    rst $18
    nop
    rst $18
    nop
    sbc a
    nop
    cp a
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
    rst $18
    nop
    ld l, e
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
    add a
    ei
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    rrca
    pop af
    rlca
    ld sp, hl
    inc bc
    db $fd
    inc bc
    db $fd
    cpl
    pop de
    adc a
    ld [hl], c
    rra
    pop hl
    sub a
    ld l, c
    sbc a
    ld h, c
    rra
    pop hl
    rla
    jp hl


    dec de
    push hl
    inc hl
    db $dd
    inc bc
    db $fd
    ld a, [bc]
    push af
    inc bc
    db $fd
    nop
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    dec b
    ei
    nop

jr_04b_63fd:
    rst $38
    ld bc, $40ff
    cp a
    ld bc, $01ff
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    dec b
    ld a, [$fb06]
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_04b_63fd

    ld [hl+], a
    rst $18
    add d
    ld a, a
    ld [hl+], a
    rst $18
    nop
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
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    ld a, l
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
    ld b, h
    ei
    nop
    rst $38
    add l
    ld a, [$fd02]
    nop

jr_04b_6469:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec b
    ei
    ld bc, $00ff
    rst $38
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld [$48ff], sp
    cp a
    db $10
    rst $38
    jr nc, jr_04b_6469

    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    ld a, a
    nop
    ld [hl], a
    nop
    nop
    rst $38
    nop
    rst $38
    jp z, $ffff

    rst $38
    and b
    rst $38
    xor b
    rst $38
    call c, $f9ff
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ccf
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    rrca
    ld a, a
    rlca
    scf
    rrca
    scf
    rrca
    ld [hl], l
    rrca
    inc [hl]
    rrca
    ld d, $2d
    inc b
    ccf
    inc l
    rla
    ld l, h
    rla
    inc [hl]
    rrca
    inc [hl]
    rrca
    inc [hl]
    rrca
    jr nc, jr_04b_64f3

    inc [hl]
    rrca
    inc [hl]
    rrca
    ld h, h
    rra
    ld [hl], h
    rrca
    ld [hl], h
    rrca
    db $76
    rrca
    ld [hl], h
    rrca
    ld [hl], h

jr_04b_64f3:
    rrca
    or $0f
    db $f4
    rrca
    or $0f
    and $1f
    add $3f
    add $3f
    rst $00
    ld a, $87
    ld a, [hl]
    ld b, [hl]
    cp a
    ld b, $ff
    ld c, $ff
    ld c, $ff
    adc [hl]
    ld a, a
    adc [hl]
    ld a, a
    adc [hl]
    ld a, a
    ld c, $ff
    sbc [hl]
    ld l, a
    ld c, $ff
    ld c, $ff
    ld c, $ff
    ld e, $ff
    rra
    rst $38
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ld a, [hl]
    rst $38
    ld a, h

jr_04b_6533:
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    ld [hl+], a
    db $dd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec sp
    push bc
    ld bc, $8aff
    ld [hl], a
    cp b
    ld b, a
    sbc h
    ld h, a
    inc d
    rst $28
    jr z, jr_04b_6533

    and b
    ld e, a
    jr nc, @-$1f

    ld b, b
    cp a
    jr nz, @+$01

    jr nz, @+$01

    ld b, b
    rst $38
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
    cp $00
    cp $00
    rst $38
    nop
    cp $00
    cp $00
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ld c, $f1
    nop
    rst $38
    inc b
    rst $38
    inc sp
    rst $38
    sub l
    ld l, e
    inc e
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    rst $28
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
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld l, a
    sub b
    rst $30
    ld [$44bb], sp
    or c
    ld c, [hl]
    cp a
    ld b, b
    rst $38
    nop
    cp [hl]
    ld b, c
    sbc $21
    xor h
    ld d, e
    rst $38
    nop
    ld d, a
    xor b
    rra
    ldh [$3f], a
    ret nz

    cpl
    ret nc

    cpl

jr_04b_65cf:
    ret nc

    ld a, [hl+]
    push de
    dec e
    ld [c], a
    ld [de], a
    db $ed
    add hl, bc
    or $0f

jr_04b_65d9:
    ldh a, [rSC]
    db $fd
    nop
    rst $38
    nop
    rst $38
    ld bc, $02fe
    db $fd
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
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    jr nz, jr_04b_65d9

    db $10
    rst $28
    ld b, b
    cp a
    jr nc, jr_04b_65cf

    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    adc d
    push af
    ldh [rIE], a
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$10ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @-$1f

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
    ld [de], a
    db $ed
    ld bc, $01fe
    rst $38
    ld bc, $84ff
    ld a, e
    ld bc, $02ff
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    db $10
    rst $28
    ld [$08ff], sp
    rst $38
    ld c, b
    cp a
    nop
    rst $38
    ld [$30ff], sp
    rst $18
    ld e, b
    or a
    db $10
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    rst $18
    nop
    rst $18
    nop
    rst $38
    nop
    rst $18
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    ld a, a
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
    db $fd
    ld b, $7f
    add [hl]
    ld a, a
    add [hl]
    ld b, $ff
    cp $ff
    rlca
    cp $d7
    cp $d7
    cp $06
    rst $38
    ld b, $ff
    add [hl]
    rst $38
    and $ff
    ld [hl], $ff
    ld c, $ff
    rst $28
    rst $38
    rst $38
    rst $38
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
    adc a
    ld [hl], b
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
    pop bc
    nop
    rst $30
    nop
    sbc a
    ld bc, $038f
    ld e, a
    rlca
    rst $18
    rlca
    rra
    rlca
    ccf
    rlca
    rst $18
    rlca
    rst $18
    rlca
    rst $18
    rlca
    rst $18
    rlca
    rst $18
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
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp+$00
    db $ec
    nop
    rst $38
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
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld e, b
    rst $20
    adc a

jr_04b_671b:
    ldh a, [$a1]
    sbc $3c
    jp $80ff


    rst $08
    jr nc, jr_04b_6798

    adc h
    ld [hl], b
    adc a
    ld a, l
    add d
    rra
    ldh [rIF], a
    ldh a, [rSTAT]
    cp [hl]
    jr nc, @-$2f

    nop
    rst $38
    inc [hl]
    rlc b
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

jr_04b_6742:
    rst $18
    jr nz, jr_04b_6742

    ld [bc], a
    ld [hl+], a
    db $fd
    cp a
    ld b, b
    jr nc, jr_04b_671b

    inc b
    rst $38
    add c
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
    inc bc
    inc bc
    ei
    inc bc
    db $fd
    inc bc
    ld a, [c]
    ld bc, $01f2
    ldh a, [$03]
    pop af
    ld [bc], a
    ld [hl], c
    ld [bc], a
    jp hl


    ld [bc], a
    ld l, [hl]
    ld [bc], a
    ld a, [$ca02]
    ld [bc], a
    ld a, [$fa02]
    ld [bc], a
    ld a, [$fe02]
    ld [bc], a
    db $fc
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    db $fc
    rst $38
    db $e4
    rst $38
    rst $38
    rst $38
    add e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, c
    cp [hl]
    ld [hl], $c9
    nop
    rst $38

jr_04b_6798:
    cp $ff
    db $fc
    rst $38
    ld d, h
    rst $38
    rst $10
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38

jr_04b_67a4:
    xor $ff
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_04b_67ae:
    rst $20
    rst $38
    xor a
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38
    nop
    cp a
    nop
    rst $38
    nop
    ld b, b
    rst $38
    nop
    rst $38
    ld b, h
    ei
    daa
    ld hl, sp+$2c
    di
    sbc a
    ld h, b
    or a
    ld l, b
    ccf
    ldh [$af], a
    ld [hl], b
    rst $38
    jr nz, jr_04b_67a4

    ld h, b
    rra
    ldh [$b7], a
    ld l, b
    rst $30
    jr z, @+$01

    jr nz, jr_04b_67ae

    ld h, b
    ld a, $e1
    or a
    ld l, b
    push de
    ld a, [hl-]
    ld d, e
    cp h
    db $10
    rst $38
    nop
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $38
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $38
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ld e, h
    and e
    nop
    rst $38
    cp [hl]
    rst $38
    ld c, b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    jp $ffff


    rst $38
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$e0], a
    cp [hl]
    add b
    cp $00
    rst $30
    nop
    rst $38
    nop
    ld l, a
    nop
    ld b, a
    nop
    and d
    nop
    jr nz, jr_04b_686e

jr_04b_686e:
    add hl, hl
    nop
    ld bc, $0200
    nop
    jr nz, jr_04b_6876

jr_04b_6876:
    ldh [rP1], a

jr_04b_6878:
    ret nz

    nop
    ld b, b
    nop
    ld sp, hl
    nop
    jp nc, $ff00

    nop
    rst $38
    nop
    rst $38
    rst $38
    jr jr_04b_6878

    ld de, $f1f1
    pop af
    pop af
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    nop
    rst $38
    daa
    rst $38
    rra
    rst $38
    xor d
    rst $38
    nop
    ld d, l
    daa
    reti


    ei
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ee
    rst $38
    rst $38
    cp $fd
    rst $38
    rst $38
    db $fd
    db $fd
    ei
    jr c, @+$01

    ld a, [bc]
    db $fd
    xor $dd
    ld a, [hl]
    call $fccf
    cp $fd
    rst $38
    db $fc
    db $fc
    rst $38
    jp nz, $fdff

    rst $38
    db $fd
    inc bc
    cp $03
    cp $03
    cp $03
    cp $03
    db $fd
    inc bc
    add c
    rst $38
    ld b, c
    rst $38
    nop
    rst $38
    ret nz

    ld a, a
    jr nz, @+$01

    ldh [$3f], a
    ret nc

jr_04b_68dd:
    ccf
    ld h, b
    sbc a
    ldh a, [$1f]
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    db $f4
    rrca
    db $fc
    rlca
    ld a, [$fa07]
    rlca
    ld a, d
    add a
    adc l
    ld [hl], e
    and c
    ld e, a
    add a
    ld a, c
    ld a, [$7805]
    add a
    jr nz, jr_04b_68dd

    ld [de], a
    db $ed
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
    inc a
    jp $ff04


    rra
    ldh [$3c], a
    jp $ff00


    nop
    rst $38
    nop
    rst $38
    ld a, d
    rst $38
    ret nz

    rst $38
    ld a, [bc]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp+$1f
    nop
    ld d, a
    nop
    jp nz, $c600

    nop
    call z, $ce00
    nop
    rst $38
    nop
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    nop
    nop
    ld [$0000], sp
    nop
    jr nc, jr_04b_6948

jr_04b_6948:
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
    rst $38
    adc a
    rst $38
    inc e
    rst $38
    ld h, b
    rst $38
    jr nc, @+$01

    jr nz, @+$01

    jp hl


    or a
    ld [hl], a
    cp a
    add [hl]
    rst $38
    xor [hl]
    rst $00
    add a
    cp $af
    add $af
    add $66
    rst $38
    rst $28
    dec d
    cp a
    ld e, [hl]
    xor a
    ld a, [hl]
    db $ed
    sbc [hl]
    and [hl]
    rst $18
    ld e, $ff
    adc a
    rst $38
    ld b, e
    cp a
    rrca
    ld hl, sp-$60
    rst $18
    ld [$62f7], sp
    sbc l
    ld b, d
    cp a
    jp z, $fff7

    pop hl
    ld a, a
    ldh [$bf], a
    ldh [$1f], a
    ldh [$9b], a
    rst $28
    sbc c
    rst $20
    pop de
    cpl
    xor h
    ld e, e
    ld a, e
    sbc a
    ld [hl], e
    rst $18
    db $eb
    rst $18
    ei
    rst $08
    ld a, a
    rst $00
    ld a, e
    rst $00
    cp a
    ld b, e
    add e
    ld a, l
    rst $08
    ccf
    rst $10
    ccf
    rst $28
    rra
    rst $30
    rrca
    rst $30
    rrca
    ld sp, hl
    rlca
    ei
    rlca
    db $fc
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
    ld a, a
    nop
    cp a

jr_04b_69cd:
    nop
    cp a
    nop
    ld b, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    jr nc, @+$01

    jr @+$01

    jr jr_04b_69cd

    ld [$f7ff], sp
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    db $fd
    nop
    ld sp, hl
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
    rst $38
    nop
    nop
    rst $38
    ld a, a
    add b
    rst $38
    nop
    ld d, b
    xor a
    nop
    rst $38
    nop
    rst $38
    ld c, [hl]
    rst $38
    add b
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
    db $f4
    nop
    ld l, [hl]
    nop
    rra
    nop
    ld a, $00
    ld c, [hl]
    nop
    ld l, e
    nop
    xor d
    nop
    ld [$ec00], a
    nop
    adc l
    nop
    ld c, b
    nop
    ld e, c
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    ld h, h
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $07ff
    rst $38
    ccf
    db $fd
    cp $ee
    pop af
    ldh a, [rIF]
    rra
    ldh [rIE], a
    rrca
    db $fd
    cp $0b
    rst $38
    rst $38
    rst $38
    ld a, h
    rst $18
    ld a, a
    db $db
    db $fc
    ld a, a
    db $ed
    rst $18
    db $dd
    rst $38
    db $fd
    add a
    call $ffff
    rst $38
    rst $38
    rst $38
    rst $00
    cp a
    sbc a
    rst $30
    rla
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $20
    ld a, a
    cp e
    ld a, a
    xor e
    rst $30
    scf
    rst $38
    dec sp
    rst $38
    ei
    or a
    rst $38
    rst $38
    cp a
    rst $30

Jump_04b_6a80:
    rst $38
    ld a, a
    rst $30
    ld a, a
    db $fd
    rst $18
    rst $38
    rst $00
    sbc a
    rst $20
    and h
    rst $18
    ld l, b
    sbc a
    cp b
    rst $08
    ret z

    rst $38
    ld a, [hl+]
    db $fd
    ld b, $f9
    rst $28
    ld hl, sp-$09
    rst $38
    db $fc
    or e
    rst $18
    or l
    rst $38
    rst $30
    rst $38
    rst $10
    ld a, [$eef7]
    rst $30
    ld a, [c]
    rst $28
    cp $ef
    cp $e7
    ld a, [$ffe7]
    db $e3
    ccf
    pop hl
    ld a, a
    ldh [$9f], a
    ld h, b
    cp a
    ld b, b
    jp $df3c


    ccf
    rst $28
    rra
    rst $28
    rra
    rst $30
    rrca
    ei
    rlca
    ei
    rlca
    db $fd
    inc bc
    db $fd
    inc bc
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    rst $18
    nop
    rst $18
    nop
    rst $08
    nop
    rrca
    nop
    rrca
    nop
    add a
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ld a, a
    add b
    rst $38
    nop
    rst $00
    jr c, @+$0a

    rst $30
    ld bc, $00fe
    rst $38
    add b
    rst $38
    ld bc, $06ff
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    jr c, jr_04b_6b43

    jr c, jr_04b_6b45

    jr nc, jr_04b_6b1f

    db $10
    ld [hl], $10
    ld [bc], a
    jr nc, jr_04b_6b15

jr_04b_6b15:
    jr nc, jr_04b_6b2d

    jr nz, jr_04b_6b49

    jr nz, jr_04b_6b3c

    jr nz, @+$22

    jr nz, @-$1e

jr_04b_6b1f:
    jr nz, jr_04b_6b81

    jr nz, jr_04b_6b85

    jr nz, jr_04b_6b67

    jr nz, jr_04b_6b47

    ld b, b
    ld b, l
    ld b, e
    ld c, a
    ld a, a
    rst $38

jr_04b_6b2d:
    ld a, a
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
    di
    db $fc

jr_04b_6b3c:
    or $f0
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_04b_6b43:
    rst $38
    rst $28

jr_04b_6b45:
    rst $18
    rst $18

jr_04b_6b47:
    ei
    rst $38

jr_04b_6b49:
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    or [hl]
    db $fd
    rrca
    rst $38
    rlca
    rst $38
    inc hl
    rst $18
    ld d, e

jr_04b_6b67:
    xor a
    rst $30
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    xor a
    rst $38
    ld d, a
    rst $38
    cpl
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    ld a, e
    rst $20
    ccf
    pop af
    rrca

jr_04b_6b81:
    ld sp, hl
    rlca
    rst $38
    adc e

jr_04b_6b85:
    rst $38
    jp $bd7f


    ld a, a
    ld a, [$fdff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    and a
    rst $38
    rst $18
    db $e3
    sub e
    rst $38
    rst $38
    add c
    rst $38
    ldh a, [$7f]
    rst $38
    cp a
    ld a, a
    cp a
    ld a, a
    rst $18
    ccf
    rst $18
    ccf
    rst $28
    rra
    rst $28
    rra
    rst $30
    rrca
    rst $30
    rrca
    ei
    rlca
    db $fd
    inc bc
    db $fd
    inc bc
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $08
    nop
    adc e
    nop
    rlca
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    inc bc
    ld sp, hl
    ld b, $c7
    jr c, @+$09

    ld hl, sp+$01
    rst $38
    inc hl
    rst $38
    daa
    sbc $8a
    db $fd
    db $10
    rst $38
    ld h, l
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    ld [hl], $00
    rlca
    nop
    rlca
    nop
    daa
    nop
    rlca
    nop
    rrca
    nop
    jr jr_04b_6c00

jr_04b_6c00:
    ld d, c
    nop
    inc bc
    rlca
    rra
    rra
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
    rst $10
    nop
    dec sp
    dec b
    rst $38
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
    ret nz

    ret nz

    rst $38
    nop
    nop
    nop
    xor $f1
    ret nz

    ret nz

    rst $08
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    db $fc
    ld sp, hl
    or d
    ret


    and $f1
    db $fc
    rst $38
    cp $ff
    ld hl, sp-$01
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    rst $30
    rst $38
    or $ff
    cp $fd
    db $fc
    rst $38
    ld a, h
    sbc a
    cp h
    ld c, a
    jr nz, @-$1f

    ldh [$9f], a
    add c
    rst $38
    jp hl


    rst $38
    ld a, [$feff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, a
    rst $38
    di
    rst $08
    rst $38
    pop hl
    cp $f1
    ei
    db $fc
    db $ed
    ld a, [hl]
    rst $38
    ld l, $cf
    or [hl]
    rst $30
    jp z, $c5fb

    ld hl, sp-$39
    xor b
    rst $10
    db $dd
    add e
    cp b
    rst $00
    cp b
    rst $00
    xor h
    db $d3
    call nz, $e67b
    ld sp, hl
    ld [c], a
    db $fd
    pop af
    cp $f8
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    jp $e0ff


jr_04b_6cb5:
    rst $38
    ldh a, [rIE]
    push hl
    ld hl, sp+$70
    db $ec
    ld h, b
    db $fc
    and b
    ld a, a
    call nc, $df3b
    jr nc, @-$0f

    jr jr_04b_6cb5

    rra
    rst $30
    cp a
    rst $30
    rst $38
    ei
    rst $38
    ld a, [$00ff]
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
    ld d, $07
    rla
    jr jr_04b_6d04

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_04b_6d14

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_04b_6d24

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_04b_6d34

    ld [hl-], a

jr_04b_6d04:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_04b_6d44

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_04b_6d14:
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

jr_04b_6d24:
    ld d, e
    ld d, h
    rlca
    rlca
    rlca
    ld c, l
    ld d, l
    ld c, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l

jr_04b_6d34:
    ld e, [hl]
    ld e, a
    rlca
    rlca
    rlca
    ld c, l
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld c, l
    ld l, b

jr_04b_6d44:
    ld l, c
    ld l, d
    ld l, e
    rlca
    ld l, h
    ld c, l
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld c, l
    ld [hl], l
    db $76
    ld [hl], a
    ld c, l
    ld a, b
    ld a, c
    ld c, l
    ld a, d
    ld a, e
    ld h, a
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    add h
    ld c, l
    ld c, l
    add l
    ld c, l
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
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    sub b
    ld c, l
    ld c, l
    sub c
    sub d
    sub e
    sub h
    sub l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    sub [hl]
    ld c, l
    ld c, l
    sub a
    ld c, l
    ld c, l
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    ld c, l
    sbc l
    ld c, l
    sbc [hl]
    ld c, l
    ld c, l
    ld c, l
    sbc a
    and b
    and c
    ld c, l
    and d
    and e
    and h
    and l
    and e
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    and [hl]
    and a
    xor b
    xor c
    ld c, l
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
    ld c, l
    cp c
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    ld c, l
    ld c, l
    ld c, l
    ld c, l
    pop bc
    jp nz, Jump_04b_4dc3

    call nz, $c6c5
    rst $00
    ret z

    ret


    jp z, $cccb

    call Call_04b_4dce
    ld c, l
    rst $08
    ret nc

    ld c, l
    ld c, l
    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    ld c, l
    ld c, l
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$eceb], a
    db $ed
    ld c, l
    ld c, l
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    ld c, l
    ld c, l
    db $fd
    cp $01
    ld bc, $0606
    ld b, $06
    ld b, $00
    ld b, $06
    ld [bc], a
    ld b, $06
    ld b, $07
    rlca
    ld bc, $0601
    ld b, $06
    ld b, $06
    nop
    ld b, $06
    ld b, $06
    ld b, $07
    rlca
    ld b, $01
    ld bc, $0601
    rlca
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $07
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0606
    ld b, $06
    ld b, $06
    ld b, $06
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0607
    ld b, $06
    ld b, $06
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld bc, $2101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    ld bc, $0100
    nop
    nop
    nop
    rlca
    rlca
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld b, $06
    rlca
    nop
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld b, $06
    nop

jr_04b_6efa:
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop

jr_04b_6f1c:
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101

jr_04b_6f30:
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
    ld bc, $0101
    ld bc, $0001
    nop

jr_04b_6f44:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $ef01
    jr nc, jr_04b_6efa

    jr nc, jr_04b_6f7c

    jr nc, @-$69

    jr nc, jr_04b_6f30

    jr nc, @-$27

    jr nc, jr_04b_6f1c

    db $10
    cp e
    ret nc

    di
    ld hl, sp-$03
    ld hl, sp-$03
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
    adc a
    rra
    db $fc
    inc bc
    ld b, h
    cp b
    ld e, d
    xor h
    inc hl
    db $fc
    ld e, e
    inc a

jr_04b_6f7c:
    inc c
    rlca
    jr z, jr_04b_6f44

    db $fc
    db $fc
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    ccf
    ld e, $e3
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
    ld [hl], a
    rst $28
    rra
    inc [hl]
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    db $ed
    db $fd
    cp $fc
    cp $ff
    rst $38
    rst $38
    cp $fe
    ld a, a
    rrca
    rst $38
    rst $38
    cp $ff
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ld b, c
    rst $38
    rlca
    rst $38
    ld c, $ff
    ccf
    ld hl, sp-$04
    di
    ldh [$c0], a
    nop
    add b
    ld bc, $1002
    ld b, $e8
    ld [$04ce], sp
    cp $54
    ld a, [bc]
    nop
    sub b
    nop
    ld d, [hl]
    nop
    ld [hl], h
    jr nz, jr_04b_7054

    nop
    xor e
    nop
    xor c
    ld [bc], a
    sbc a
    nop
    ld b, a
    ld de, $5701
    rrca
    ld d, a
    and a
    ld e, a
    xor [hl]
    ld e, a
    sbc $3f
    ccf
    rst $38
    ld a, a
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    cp $ff
    db $fc
    rst $38
    ld a, [$f8ff]
    rst $38
    ld a, [$e0ff]
    rst $38
    push hl
    rst $38
    add c
    rst $38
    ld b, e
    rst $38
    rlca
    db $fc
    rlca
    db $fc
    rrca
    ld hl, sp+$57
    ld sp, hl
    ccf
    di
    ccf
    db $e3
    ld a, a
    add $ef
    rst $18
    rst $38
    xor a
    rst $30
    ccf
    cp $3f
    db $eb
    nop
    ei
    nop

jr_04b_7054:
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    db $fd
    nop
    rst $38
    nop
    db $fd
    nop
    ld hl, sp+$00
    jr nz, jr_04b_7066

jr_04b_7066:
    ld d, b
    add b
    ret nz

    ldh [$e8], a
    ldh a, [$fa]
    db $fc
    cp $ff
    rst $18
    rst $38
    rst $30
    rst $38
    db $fd
    ld a, a
    cpl
    rra
    db $db
    rlca
    jp c, $8d21

    ld [hl], d
    ld c, b
    or a
    jr z, @+$21

    push bc
    inc bc
    jp hl


    ldh a, [$fe]
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    or a
    rrca
    rst $00
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    db $fc
    ei
    cp $f9
    db $fc
    db $db
    db $fc
    ld a, e
    ld a, [$98f5]
    rst $38
    ld hl, sp-$01
    ld sp, hl
    cp $fc
    rst $38
    db $ec
    rst $38
    ld a, h
    ld a, a
    db $fc
    ccf
    db $fc
    rra
    ld a, h
    ld a, a
    ld e, [hl]
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
    db $fc
    rst $38
    add sp, -$01
    pop bc
    rst $38
    rlca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rst $38
    rst $28
    rst $08
    sbc a
    cp a
    adc a
    ld h, a
    adc a
    rrca
    rst $10
    rra
    rst $00
    rla
    ld d, a
    rst $08
    rla
    rst $10
    rlca
    daa
    sub a
    xor [hl]
    rrca
    adc b
    cpl
    adc h
    dec hl
    inc c
    dec hl
    ld h, l
    dec bc
    inc bc
    ld l, [hl]
    and h
    ld c, [hl]
    ld [$18fc], sp
    ldh a, [rNR41]
    ldh a, [rSTAT]
    ldh [$cf], a
    pop bc
    ld a, [c]
    rst $38
    sbc $ff
    cp $ff
    cp $ff
    rst $30
    rst $38
    rst $30
    rst $38
    push af
    rst $38
    db $fd
    rst $38
    rst $38
    db $fd
    db $fc
    rst $38
    pop hl
    rst $38
    reti


    rst $38
    xor e
    rst $38
    and l
    rst $38
    add a
    rst $38
    ld c, a
    rst $38
    rra
    cp $1f
    db $fc
    dec a
    rst $38
    ld a, a
    db $f4
    cp a
    ret nz

    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    ld a, [$f4ff]
    cp a
    push af
    rst $18
    ld sp, hl
    rst $08
    db $d3
    rst $28
    db $eb
    ld [hl], a
    xor a
    ld [hl], a
    rrca
    cp a
    ld a, a
    sbc a
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
    cp a
    nop
    cp $00
    ldh [rP1], a
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
    ld [bc], a
    nop
    rlca
    nop
    call nz, $f4e0
    ldh [$f4], a
    ld hl, sp-$04
    cp $fe
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
    rst $38
    ld a, a
    ccf
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    db $d3
    ld [hl], e
    cp a
    di
    rst $18
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
    ccf
    rst $38
    ccf
    ld hl, sp+$7d
    ld a, [$fd3b]
    dec l
    rst $38
    ld a, $fd
    ld a, l
    db $fc
    ccf
    rst $38
    ccf
    rst $38
    ld a, l
    rst $38
    db $fd
    db $fc
    db $fc
    cp $fc
    cp $ff
    db $fc
    or $fc
    db $fc
    cp $ff
    cp $fe
    cp $ff
    cp $ff
    cp $fe
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $18
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop de
    rst $38
    jp $87ff


    rst $38
    rrca
    rst $38
    rra
    rst $38
    dec a
    pop hl
    ld b, e
    pop bc
    add h
    add e
    and b
    rlca
    ld bc, $080e
    rla
    nop
    ccf
    ld h, h
    dec de
    ret


    rla
    rst $30
    dec bc
    add $1b
    add b
    ld e, [hl]
    rrca
    ld e, l
    ld b, e
    ld e, a
    ld c, a
    dec de
    cp a
    ld e, a
    rst $38
    rra
    rst $28
    ccf
    rst $38
    ld [hl], a
    rst $38
    rst $38
    push af
    rst $30
    ei
    rst $38
    rst $38
    rst $38
    ld a, [$ecff]
    pop de
    di
    adc e
    ld c, a
    or a
    sub a
    ld h, a
    db $d3
    rst $20
    ld h, a
    add a
    rst $00
    rrca
    rst $08
    rra
    rst $18
    rra
    rst $38
    cp a
    ccf
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, [$f3ff]
    rst $38
    pop af
    rst $38
    rst $30
    cp $e3
    cp $cb
    cp $ff
    nop
    rst $38
    nop
    rra
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rlca
    nop
    ld b, $00
    ld e, $00
    jr jr_04b_7254

jr_04b_7254:
    ret c

    nop
    ldh a, [rP1]
    ld [hl], b
    nop
    nop
    nop
    ld [hl], b
    nop
    dec hl
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    add b
    nop
    add b
    ret nz

    ldh [$f0], a
    ld hl, sp-$04
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
    xor a
    rst $38
    add b
    rst $38
    rst $10
    rst $38
    db $eb
    add a
    nop
    inc bc
    ld a, a
    ld a, a
    rst $38
    rst $38
    cp $ff
    ld e, $0d
    rrca
    rrca
    rst $38
    rst $38
    db $f4
    ld hl, sp+$30
    add b
    ld hl, $03f3
    push af
    ld b, [hl]
    or c
    jp $e070


    ld de, $50a3
    ld [bc], a
    ld [hl], c
    cp c
    ld d, a
    ld e, [hl]
    ld [hl], a
    add hl, sp
    ld e, a
    jr c, jr_04b_7337

    ld [c], a
    ldh [$c4], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    add c
    ret z

    ret c

    db $fd
    ld e, b
    pop af
    ld a, e
    db $fd
    ei
    cp $d6
    rst $38
    xor h
    rst $38
    rst $18
    rst $38
    and b
    rst $38
    rst $28
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    db $fc
    rst $38
    ld a, [$f5ff]
    db $fd
    ld a, [c]
    db $fd
    jp hl


    rst $38
    reti


    rst $38
    sub $eb
    db $e3
    xor $fe
    reti


    db $eb
    cp $ed
    ld a, [$fbee]
    db $eb
    rst $38
    db $eb
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ld a, e
    ld a, a
    ld a, a
    ld [hl], e
    ei
    push af
    push af
    rst $38
    ld [hl], a
    ld a, h
    ld a, e
    ld [hl], a
    ld a, a
    rst $38
    db $fd
    rst $38
    rst $38
    cp $fb
    cp $fb
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    db $fc
    rst $38
    db $fc
    rst $38
    ld sp, hl
    cp $f2
    db $fd
    db $e3
    db $fc
    push hl
    ld a, [$f6c9]
    db $d3
    db $ec
    db $fd
    jp nz, $d8a7

    rst $38
    add b
    ld l, a

jr_04b_7337:
    sub b
    rst $28
    db $10
    cp a
    ld b, b
    ld a, a
    add b
    cp [hl]
    ld b, c
    pop hl
    nop
    push bc
    nop
    pop bc
    nop
    push bc
    nop
    add c
    nop
    jr nz, jr_04b_734c

jr_04b_734c:
    jr nz, jr_04b_734e

jr_04b_734e:
    ld bc, $0000
    nop
    jr nz, jr_04b_7354

jr_04b_7354:
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    stop
    add b
    nop
    ld b, b
    nop
    stop
    inc d
    nop
    inc b
    nop
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    inc c
    nop
    ld c, a
    add b
    db $d3
    ldh [$e5], a
    ldh a, [$e2]
    ldh a, [$e1]
    ldh a, [$f0]
    ldh [$e0], a
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [rIE]
    ldh a, [$f7]
    ld hl, sp-$09
    ld hl, sp-$0d
    db $fc
    pop af
    cp $70
    rst $38
    ld e, a
    ldh a, [$5f]
    ldh a, [rVBK]
    ldh a, [$5f]
    ldh a, [$6f]
    ldh a, [rIE]
    rst $30
    ld e, a
    rst $38
    rrca
    rst $38
    ld a, a
    ld e, a
    rrca
    ld a, a
    rrca
    ld a, a
    ld l, a
    ld e, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    ld a, a
    cp a
    rst $38
    rst $38
    ld c, a
    rrca
    ld e, a
    sbc a
    rrca
    rst $38
    ld c, a
    rst $38
    ld c, a
    rst $38
    rra
    cp a
    rra
    cp a
    scf
    cp a
    ld h, a
    ccf
    ld b, a
    rst $38
    rst $10
    adc a
    rst $18
    rlca
    ld a, e
    rlca
    inc bc
    rst $30
    ld [hl], a
    set 3, a
    db $eb
    ld a, [de]
    sub [hl]
    sub [hl]
    ld a, [bc]
    ld [c], a
    xor $fa
    add $5f
    jp $8fc3


    rst $08
    sub a
    cpl
    or a
    rla
    ld a, a
    ccf
    ld a, a
    cp a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld b, c
    rst $20
    ld c, d
    and $56
    cp $bf
    call z, $fcaf
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$e0]
    rst $38
    pop af
    xor $d1
    xor $c3
    db $fc
    and [hl]
    reti


    add c
    cp $80
    rst $38
    ld d, b
    xor a
    dec h
    jp c, $f40b

    dec e
    ld [c], a
    rra
    ldh [$3f], a
    ret nz

    ld a, [hl]
    add c
    ld a, $c1
    ld a, [hl]
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
    cp a
    ld b, b
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
    ld h, b
    nop
    ld h, d
    nop
    ld l, b
    nop
    ld h, d
    nop
    ld h, d
    nop
    ld h, h
    nop
    ld [hl], b
    nop
    ld [hl], c
    nop
    ldh a, [rP1]
    pop af
    nop
    db $f4
    nop
    pop af
    nop
    ldh [rP1], a
    pop hl
    nop
    pop hl
    nop
    db $e3
    nop
    ld b, c
    and b
    db $e3
    nop
    di
    nop
    ld a, [c]
    nop
    pop de
    jr nz, @+$01

    nop
    ld l, a
    db $10
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
    xor a
    db $10
    cp a
    nop
    xor a
    db $10

jr_04b_7480:
    cp e
    nop
    cp a
    nop
    rst $30
    ld [$0cf3], sp
    db $e3
    inc e
    rst $00
    jr c, jr_04b_7480

    inc c
    di
    inc c
    inc hl
    call c, $ea15
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

jr_04b_74a0:
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
    and b
    rst $18
    inc b
    ei

jr_04b_74ae:
    nop

jr_04b_74af:
    rst $38
    nop

jr_04b_74b1:
    rst $38
    nop
    rst $38

jr_04b_74b4:
    add hl, bc
    or $48
    or a
    adc c
    db $76
    or c
    ld c, [hl]

jr_04b_74bc:
    or e
    ld c, h

jr_04b_74be:
    rst $30
    ld [$00ff], sp

jr_04b_74c2:
    ld l, a
    sub b
    rst $20
    jr jr_04b_74ae

    jr jr_04b_7536

    sub b
    ld l, l
    sub b
    push hl
    jr jr_04b_74c2

    inc c
    rst $20
    jr @-$10

jr_04b_74d3:
    db $10
    ret c

    jr nz, jr_04b_74af

    jr nz, jr_04b_74b1

    jr nz, jr_04b_74d3

    nop
    cp $00
    rst $30
    nop
    ldh a, [rP1]
    or b
    ld b, b
    ld a, b
    add b
    ld h, b
    add b
    ld h, a
    add b
    push hl
    nop
    ld h, d
    add b
    ld h, b
    add b
    rst $08
    ld [hl], b
    rst $00
    ld a, b
    ld c, a
    ld [hl], b

jr_04b_74f6:
    ld c, a
    ld [hl], b
    ld c, a
    ld [hl], b

jr_04b_74fa:
    ld c, a
    ld [hl], b
    ld c, a
    ld [hl], b

jr_04b_74fe:
    rrca
    ld [hl], b
    rrca
    ld [hl], b
    adc a
    ld [hl], b
    xor a
    ld [hl], b

jr_04b_7506:
    daa
    ld a, b

jr_04b_7508:
    daa
    ld a, b

jr_04b_750a:
    and a
    ld a, b
    and a
    ld a, b
    and a
    ld a, b
    rst $20
    jr c, jr_04b_74fa

    jr c, jr_04b_74bc

    jr c, jr_04b_74be

    jr c, jr_04b_74a0

    jr c, jr_04b_74fe

    inc a
    and a
    jr c, jr_04b_7506

    jr c, jr_04b_7508

    jr c, jr_04b_750a

    jr c, jr_04b_7508

    inc a
    pop af
    ld l, $e4

jr_04b_7529:
    dec sp
    and $39
    rst $00
    jr c, jr_04b_74f6

    jr c, jr_04b_74b4

    ld a, h
    ld b, d
    cp l
    add e
    ld a, h

jr_04b_7536:
    db $e3
    inc e
    ld [c], a
    dec e
    ldh a, [$1f]
    ret nc

    rra
    ld a, [c]
    dec e
    ld a, [c]
    dec e
    ldh a, [$1f]
    ldh a, [$1f]
    ld [hl], b
    sbc a
    jr nc, jr_04b_7529

    ld hl, sp-$01
    db $fc
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
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    dec e
    ld [c], a
    ld bc, $63fe
    sbc h
    ld hl, $77de
    adc b
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
    ei
    nop
    rst $38
    nop
    ldh [rP1], a
    xor b
    nop
    ret z

    nop
    adc h
    nop
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    push hl
    nop
    ld b, h
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
    cp b
    nop
    ldh [rP1], a
    ret nz

    nop
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
    ei
    inc b
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    rst $28
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
    rst $18
    jr nz, @+$01

    nop
    cp a
    ld b, b
    sbc a
    ld h, b
    sub a

jr_04b_75d9:
    ld l, b
    pop af
    ld c, $ad
    ld d, d
    rla
    add sp, $0f
    ldh a, [$71]
    adc [hl]
    ld h, a
    sbc b
    ld b, a
    cp b
    ld b, $f9
    ld a, [bc]
    push af
    ld a, [bc]
    push af
    inc c
    di
    ld [$10f7], sp
    rst $28
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_04b_75d9

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
    ld a, [c]
    db $fd
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    nop
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [bc]
    push af
    adc c
    db $76
    adc b
    ld [hl], a
    ret nc

    cpl
    ld a, c
    add [hl]
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    rst $38
    nop
    db $ed
    ld [de], a
    xor $11
    rst $38
    nop
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    db $db
    nop
    cp a
    nop
    ld e, e
    nop
    ld e, c
    nop
    cp l
    nop
    dec l
    nop
    inc sp
    nop
    or c
    nop
    call c, $e101
    nop
    ret nz

    nop
    add h
    nop
    inc hl
    nop
    xor b
    ld bc, $0089
    add hl, de
    nop
    ld sp, $1900
    nop
    ld e, b
    nop
    ld e, b
    nop
    jr jr_04b_767c

jr_04b_767c:
    inc e
    nop
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
    dec bc
    db $f4
    add d
    ld a, l
    nop
    rst $38
    ld [bc], a
    db $fd
    ei
    inc b
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $30
    ld [$00ff], sp
    rst $28
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
    rst $30
    ld [$18e7], sp
    rst $38
    nop
    rst $30
    ld [$08f7], sp
    or e
    ld c, h
    ld b, a
    cp b
    and a
    ld e, b
    adc a
    ld [hl], b
    dec b
    ld a, [$f807]
    ld [bc], a
    db $fd
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, h
    cp e
    dec b
    ld a, [$fa05]
    nop
    rst $38
    call c, $fe23
    ld bc, $00ff
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
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    sbc [hl]
    nop
    ld c, $00
    db $f4
    nop
    db $fc
    nop
    ld a, h
    nop
    add b
    nop
    cp b
    nop
    cp b
    nop
    rrca
    nop
    rrca
    nop
    adc a
    nop
    jp $e700


    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    jp hl


    ld d, $ec
    inc de
    dec c
    ld a, [c]
    ld c, $f1
    inc l
    db $d3
    inc a
    jp $03fc


    db $fc
    inc bc
    ld hl, sp+$07
    add sp, $17
    ld [c], a
    dec e
    push hl
    ld a, [de]
    push hl
    ld a, [de]
    db $ed
    ld [de], a
    pop bc
    ld a, $c4
    dec sp
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    db $fd
    ld [bc], a
    cp $01
    cp $01
    rst $38
    nop
    cp $01
    db $fd
    ld [bc], a
    cp $01
    xor $11
    add sp, $17
    sub $29
    ld h, b
    sbc a
    ld h, b
    sbc a
    ldh a, [rIF]
    ret nz

    ccf
    ret nz

    ccf
    and b
    ld e, a
    nop
    rst $38
    ld b, b
    cp a
    jr nz, @-$1f

    nop
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

jr_04b_77a1:
    nop
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
    inc bc
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_04b_77a1

    nop
    rst $38
    nop
    rst $38
    ld hl, sp+$07
    and [hl]
    ld e, c
    sub $29
    db $db
    inc h
    reti


    ld h, $fc
    inc bc
    db $fd
    ld [bc], a
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
    cp $00
    sbc a
    nop
    rst $18
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, l
    nop
    rst $18
    nop
    rlca
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc bc
    nop
    pop af
    nop
    pop af
    nop
    pop af
    nop
    or c
    nop
    ldh a, [rP1]
    ld a, [$7f00]
    nop
    rst $38
    nop
    inc a
    rst $00
    xor h
    ld d, a
    inc l
    rst $10
    ld l, h
    sub a
    ld c, h
    or a
    inc c
    rst $30
    add h
    ld a, a
    add h
    ld a, a
    add h
    ld a, a
    add h
    ld a, a
    add h
    ld a, a
    adc h
    ld [hl], a
    adc h
    ld [hl], a
    inc c
    rst $30
    inc c
    rst $30
    inc c

jr_04b_782f:
    rst $30
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld b, h
    cp a
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ei
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
    ldh [rP1], a

jr_04b_785e:
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    jr c, jr_04b_782f

    db $ed
    ld [de], a
    ld h, [hl]
    sbc c
    ld b, $f9
    adc [hl]
    ld [hl], c
    ld bc, $e5fe
    ld a, [de]
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
    cp $01
    cp a
    ld b, b

jr_04b_7884:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld e, a
    jr nz, jr_04b_7884

    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $20
    ld [$006d], sp
    db $fc
    nop
    rst $30
    nop
    rst $30
    nop
    sub e
    jr nz, jr_04b_785e

    nop
    ccf
    nop
    dec a
    nop
    cpl
    nop
    ld a, l
    nop
    ld a, [c]
    nop
    cp [hl]
    nop
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
    rst $38
    nop
    ld [hl-], a
    call $c03f
    ccf
    ret nz

    rra
    ldh [rNR33], a
    ld [c], a
    scf
    ret z

    adc c
    db $76
    adc a
    ld [hl], b
    ld e, c
    and [hl]
    cpl
    ret nc

    cp a
    ld b, b
    db $dd
    ld [hl+], a
    rst $28
    db $10
    ei
    inc b
    db $fd
    ld [bc], a
    cp $01
    cp $01
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
    rst $38
    nop
    rst $38
    nop

Call_04b_7900:
    rst $38
    nop
    rst $38
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
    ld a, a
    add b
    ld a, a
    add b
    sbc a
    ld b, b
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
    nop
    rst $38
    nop
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
    rst $38
    rlca
    ld hl, sp+$07
    db $fc
    rlca
    db $fc
    inc bc
    db $fd
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fd
    inc bc
    db $fc
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld sp, hl
    rst $38
    db $fd
    rst $38
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
    nop
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ld sp, hl
    ld b, $1a
    push hl
    ld a, [hl]
    add c
    cp a
    ld b, b
    swap h
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
    rst $38
    nop
    rst $30
    ld [$00ff], sp
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
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    cp $01
    cp $01
    rst $28
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
    rst $38
    rst $38
    di
    rst $38
    dec de
    rst $38
    rra
    rst $38
    cp a
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    rst $38
    set 7, a
    jr nz, @+$01

    ccf
    rst $38
    ccf
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
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    ret nz

    ccf
    ret nz

    ccf
    ld [c], a
    dec e
    di
    inc c
    cp $01
    rst $38
    nop
    cp $01
    rst $38
    nop
    db $fd
    ld [bc], a
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
    ei
    nop
    ld l, [hl]
    nop
    cp [hl]
    nop
    sbc $00
    rst $08
    nop
    rst $30
    nop
    di
    nop
    db $fd
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
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ld a, [$fa00]
    nop
    ld a, [$fa00]
    nop
    or $00
    or $00
    or $00
    or $00
    or $00
    or $00
    or $00
    or $00
    or $00
    or $00
    push af
    nop
    push af
    nop
    push af
    nop
    push af
    nop
    push af
    nop
    push af
    nop
    db $ed
    nop
    db $ed
    nop
    db $ed
    nop
    db $ed
    nop
    db $ed
    nop
    db $ed
    nop
    db $ed
    nop
    rst $38
    ld [hl], d
    rst $38
    inc h
    rlca
    inc b
    rlca
    db $fc
    add a
    inc b
    rst $38
    ld [hl], h
    rst $38
    ld [hl], h
    rst $38
    inc [hl]
    db $fd
    cp $f7
    rst $38
    rst $18
    rst $38
    rst $38
    rst $18
    call nz, $f4fb
    db $eb
    db $f4
    db $eb
    push af
    ld [$eaf5], a
    push af
    ld [$ebf7], a
    rst $10
    ei
    ld b, a
    rst $38
    ld hl, $0fff
    pop af
    rst $38
    db $fd
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
    rst $38
    nop
    rst $38
    nop
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
    ld e, [hl]
    and c
    rst $38
    nop
    rst $18
    jr nz, jr_04b_7b6b

    adc e
    ld hl, sp+$07
    adc $31

jr_04b_7afc:
    ld h, b
    sbc a
    rst $10
    jr z, jr_04b_7afc

    inc b
    ld sp, hl
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
    nop
    ei
    nop
    ei
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
    rst $18
    nop
    sbc a
    nop
    rrca
    nop
    add l
    nop
    db $fd
    nop
    ccf
    nop
    sbc a
    nop
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld l, b
    rst $10
    ld d, b
    rst $28
    ld c, b
    rst $30
    sub b
    rst $28
    sub b
    rst $28
    and b
    rst $18
    sub b
    rst $28
    xor b
    rst $10
    sub b
    rst $28
    sub b
    rst $28
    sub b
    rst $28
    add b
    rst $38
    and b
    rst $18
    add b
    rst $38
    add b
    rst $38
    adc b
    rst $30
    add b
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
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    cp a
    ret nz

    cp a

jr_04b_7b6b:
    ret nz

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
    ccf
    nop
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
    add h
    ld a, e
    ret nz

    ccf
    ld sp, $34ce
    bit 3, d
    and l
    ld b, e
    cp h
    add b
    ld a, a
    db $ec
    inc de
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
    db $db
    inc h
    rst $28
    db $10
    rst $38
    nop
    cp e
    ld b, h
    call c, $ff23
    nop
    rst $38
    nop
    rst $38
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
    adc a
    nop
    ld hl, sp+$00
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    ld [$10f7], sp
    rst $28
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $03
    db $fc
    nop
    rst $38
    nop
    rst $38
    ld bc, $07fe
    ld hl, sp+$06
    ld sp, hl
    rla
    add sp, $0b
    db $f4
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    dec b
    ld a, [$fe01]
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    ld bc, $05fe
    ld a, [$fe01]
    dec b
    ld a, [$fe01]
    nop
    rst $38
    ld bc, $00fe
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

jr_04b_7c3d:
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
    ccf
    nop
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
    add b
    nop
    ret nz

    nop
    ld hl, sp+$00

jr_04b_7c5e:
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
    add b
    ld a, a
    jr nc, jr_04b_7c3d

    nop
    rst $38
    ld b, $f9
    ld [$d0f7], sp
    cpl
    ld a, [c]
    dec c
    rst $38
    nop
    rst $38
    nop

jr_04b_7c7c:
    rst $38
    nop

jr_04b_7c7e:
    di
    inc c

jr_04b_7c80:
    push bc
    ld a, [hl-]
    rst $30
    ld [$0df2], sp
    inc bc
    db $fc
    adc $31
    cp $01
    rst $18
    jr nz, jr_04b_7c5e

    jr nc, jr_04b_7c80

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

jr_04b_7c9e:
    rst $38
    nop
    inc a
    jp $d22d


    ld l, l
    sub d
    ld l, a
    sub b
    ld l, a
    sub b
    ld h, a
    sbc b
    rst $20
    jr jr_04b_7c9e

    db $10
    rst $28
    db $10
    rst $08

jr_04b_7cb3:
    jr nc, jr_04b_7c7c

    jr c, jr_04b_7c7e

    jr c, jr_04b_7c80

    jr c, jr_04b_7cfa

    ret nz

    cp $01
    cp $01
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
    rst $38
    nop
    rst $38
    nop
    cp $01
    ei
    inc b
    rst $38
    nop
    cp $01
    ld a, [hl]
    add c
    ld a, c
    add [hl]
    ld a, h
    add e
    cp [hl]
    ld b, c
    cp l
    ld b, d
    dec a
    jp nz, Jump_04b_43bc

    ld hl, sp+$07
    jr c, jr_04b_7cb3

    cp b
    ld b, a
    ld sp, $7cce
    add e
    sub [hl]
    ld l, c
    jp nz, $823d

    ld a, l
    ld [bc], a
    db $fd

jr_04b_7cfa:
    inc bc
    db $fd
    rrca
    pop af
    rlca
    ld sp, hl
    dec bc
    push af
    ld bc, $05ff
    ei
    ld bc, $05ff
    ei
    rlca
    ei
    rlca
    ei
    rlca
    ei
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $fd
    ld bc, $01fd
    db $fd
    ld bc, $01f9
    ld sp, hl
    ld bc, $01f9
    ld sp, hl
    ld bc, $03fb
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    di
    inc bc
    di
    inc bc
    di
    inc bc
    inc sp
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_04b_7d39:
    ld [bc], a
    dec b
    dec b
    inc b
    inc b
    inc b
    inc b
    push bc
    dec b
    di
    inc bc
    ld sp, hl
    ld bc, $00fe
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
    db $10
    rst $28
    ld c, b
    or a
    jr nz, jr_04b_7d39

    add b
    ld a, a
    adc h
    ld [hl], e
    and [hl]
    ld e, c
    pop af
    ld c, $f8
    rlca
    rst $38
    nop
    xor a
    ld d, b
    ld l, e
    sub h
    dec d
    ld [$a15e], a
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
    cp a
    ld b, b
    sbc a
    ld h, b
    ld a, [$fa03]
    inc bc
    ei
    ld [bc], a
    rst $38
    ld [bc], a
    cp $02
    ld a, [$fb06]
    ld b, $fc
    rlca
    ld a, h
    add a
    db $fc
    rlca
    db $fd
    ld b, $df
    inc h
    rst $30
    inc c
    rst $30
    inc c
    push af
    inc c
    pop af
    inc c
    dec sp
    call z, $fd0a
    ld [$c8ff], sp
    ccf
    ld [$8bff], sp
    ld a, h
    inc c
    rst $38
    sbc a
    ld a, a
    rst $00
    rlca
    ret nc

    rra
    ret nc

    rra
    ret nz

    rra
    ret nz

    rra
    add b
    rra
    add b
    rra
    add b
    rra
    add b
    rra
    and b
    ccf
    and b
    ccf
    and b
    ccf
    and b
    ccf
    nop
    ccf
    nop
    ccf
    rlca
    ccf
    nop
    ccf
    ld b, l
    ld a, a
    ld l, l
    ld a, a
    ld a, [hl]
    ld a, a
    ld l, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    push af
    push af
    sub $d6
    ld [$d4ea], a
    call nc, $c2c2
    ldh a, [$f0]
    rst $28
    rst $28
    rst $28
    rst $28
    rst $10
    rst $10
    add l
    add l
    pop bc
    pop bc
    or c
    or c
    xor c
    xor c
    ld c, b
    ld c, b
    ld d, c
    ld d, c
    xor c
    xor c
    ld h, b
    ld h, b
    ld [bc], a
    ld [bc], a
    sub d
    sub d
    ld b, c
    ld b, c
    ld d, d
    ld d, d
    ld c, d
    ld c, d
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    sub l
    dec d
    ld [c], a
    ld [bc], a
    ld sp, hl
    ld bc, $00fe
    nop
    rst $38
    nop
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
    add b
    ld a, a
    nop
    rst $38
    ldh [$1f], a
    ld l, c
    sub [hl]
    inc a
    jp $9966


    sub a
    ld l, b
    rst $08
    jr nc, @-$22

    inc hl
    ld a, [$f805]
    rlca
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    db $fc
    nop
    call nc, Call_04b_7900
    add b
    push af
    nop
    ei
    nop
    rst $10
    nop
    db $fd
    nop
    cp a
    ld b, b
    rst $00
    ld [$01ee], sp
    sbc h
    ld b, e
    ld h, b
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
    ret nz

    nop
    inc e
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
    ld hl, $f1ff
    rst $38
    ld [bc], a
    rst $38
    ld e, b
    rst $38
    ld l, b
    rst $38
    and b
    rst $38
    ldh [rIE], a
    di
    rst $38
    sub $ff
    rst $38
    rst $38
    ld d, [hl]
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
    ld a, a
    ld a, a
    ld [hl], a
    ld [hl], a
    ld a, a
    ld a, a
    or $f6
    ld [hl], b
    ld [hl], b
    add sp, -$18
    rst $28
    rst $28
    rst $38
    rst $38
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
    ld a, a
    ld a, a
    ld c, a
    ld c, a
    sub e
    sub e
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp [hl]
    cp [hl]
    ld e, $1e
    ld l, $2e
    xor [hl]
    xor [hl]
    ccf
    ccf
    rst $08
    rst $08
    ld a, e
    ld a, e
    ld a, a
    ld a, a
    cp a
    cp a
    ld a, a
    ld a, a
    ld e, a
    ld e, a
    sub a
    rla
    rst $20
    rlca
    ld sp, hl
    ld bc, $00fe
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
    ld [bc], a
    db $fd
    add b
    ld a, a
    db $10
    rst $28
    add b
    ld a, a
    and b
    ld e, a
    inc b
    ei
    ld [c], a
    dec e
    reti


    ld h, $ec
    inc de
    and $19
    ld [c], a
    dec e
    pop af
    ld c, $00
    ld bc, $0302
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $03
    inc bc
    rrca
    inc bc
    inc bc
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_04b_7f78

    ld a, [de]
    inc bc
    dec de
    inc e
    inc bc
    dec e
    ld e, $1f
    jr nz, jr_04b_7f8a

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $19
    daa
    inc bc
    inc bc
    jr z, jr_04b_7f77

    add hl, hl
    ld a, [hl+]
    dec hl

jr_04b_7f77:
    inc l

jr_04b_7f78:
    dec l
    ld l, $2f
    jr nc, jr_04b_7fae

    ld [hl-], a
    add hl, de
    add hl, de
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_04b_7fc0

    ld a, [hl-]
    dec sp
    inc a

jr_04b_7f8a:
    dec a
    ld a, $3f
    ld b, b
    add hl, de
    add hl, de
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld c, b
    add hl, de
    add hl, de
    ld c, c
    ld c, d
    inc bc
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
    inc bc

jr_04b_7fae:
    add hl, de
    add hl, de
    ld d, l
    inc bc
    inc bc
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    add hl, de
    ld e, [hl]
    ld e, a
    add hl, de
    add hl, de

jr_04b_7fc0:
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
    add hl, de
    ld l, e
    ld l, h
    add hl, de
    add hl, de
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    add hl, de
    add hl, de
    add hl, de
    ld [hl], d
    ld [hl], e
    ld [hl], h
    add hl, de
    ld [hl], l
    db $76
    add hl, de
    add hl, de
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    add hl, de
    add hl, de
    ld a, l
    ld a, [hl]
    ld [hl], h
    ld a, a
    add b
    add c
    add hl, de
    add hl, de
    add d
    add e
    add h
    add l
    add [hl]
    add a
    add hl, de
    add hl, de
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    add hl, de
    add hl, de
