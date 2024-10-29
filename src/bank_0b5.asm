SECTION "ROM Bank $0b5", ROMX[$4000], BANK[$b5]

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], e
    rst $38
    ld d, a
    rst $38
    ld a, $ff
    ld a, a
    rst $38
    rra
    rst $38
    dec e
    rst $38
    rra
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
    ld bc, $03ff
    rst $38
    nop
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
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld bc, $d4ff
    dec hl
    ld c, b
    or a
    ld d, b
    xor a
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    dec a
    rst $38
    ldh [rIE], a
    inc b
    rst $38
    inc bc
    rst $38
    inc c
    rst $38
    ld b, b
    cp a
    ld bc, $87fe
    ld a, b
    pop hl
    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld bc, $07ff
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    add b
    rst $38
    ld bc, $1dff
    cp $15
    ld a, [$f00f]
    cp a
    ret nz

    rst $38
    nop
    db $fd
    inc bc
    rlca
    ei
    inc hl
    db $fd
    add c
    ld a, [hl]
    nop
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    rst $38
    ld l, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    dec sp
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc de
    rst $38
    rrca
    rst $38
    rrca
    rst $38

jr_0b5_40d0:
    rra
    rst $38

jr_0b5_40d2:
    rla
    rst $38

jr_0b5_40d4:
    rra
    rst $38

jr_0b5_40d6:
    rlca
    rst $38

jr_0b5_40d8:
    ld b, $ff
    ld [bc], a
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
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    add b
    rst $38
    add d
    db $fd
    add c
    cp $0f
    ldh a, [$1f]
    ldh [rNR21], a
    add sp, $1c
    ldh [$3c], a
    ret nz

    jr c, jr_0b5_40d0

    jr nz, jr_0b5_40d2

    jr nc, jr_0b5_40d4

    jr nz, jr_0b5_40d6

    jr nz, jr_0b5_40d8

    ld h, b
    add b
    ld [hl], b
    add b
    ld h, b
    add b
    ld h, b
    sub b
    db $10
    ldh [rNR23], a
    pop hl
    ld b, $fb
    rlca
    rst $38
    rrca
    rst $38
    ccf
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
    ld a, a
    nop
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    dec bc
    rst $38
    inc bc
    rst $38
    sub a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    rst $00
    rst $38
    inc a
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld h, h
    ei
    add b
    rst $38
    ret nz

    ccf
    adc b
    ld [hl], a
    pop bc
    rst $38
    rlca
    rst $38
    ld e, $ff
    ld a, b
    rst $38
    ei
    rst $38
    adc [hl]
    rst $38
    inc a
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    add c
    rst $38
    add [hl]
    rst $38
    dec e
    rst $38
    jr c, @+$01

    ld [hl], b
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp+$7f
    db $fc
    ccf
    ld a, [hl]
    sbc a
    rra
    rst $28
    ld c, a
    or a
    inc de
    rst $38
    call $e6ff
    rst $38
    ld a, [c]
    rst $38
    di
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld l, a
    rst $38
    ld e, a
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
    nop
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ldh [$1f], a
    add sp, $07
    add [hl]
    ld bc, $0001
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
    ld bc, $0100
    nop
    nop
    nop
    inc bc

Jump_0b5_41ff:
    nop
    ld h, b
    ld a, a
    ldh [$7f], a
    rst $20
    ld a, a
    rst $20
    ld a, b
    db $e4
    ld a, b
    call nz, $c478
    ld a, b
    call nz, $c478
    ld a, b
    add $78
    push bc
    ld a, b
    add $78
    rst $20
    ld a, b
    rst $20
    ld a, b
    rst $20
    ld a, b
    rst $20
    ld a, b
    db $e4
    rst $00
    rst $20
    rst $00
    push af
    rst $00
    rst $38
    rst $00
    rst $38
    rst $38
    jp nz, $f0ff

    rst $38
    rst $00
    rst $38
    inc e
    rst $38
    rst $38
    rst $38
    ld c, $ff
    jr nc, @+$01

    rlca
    rst $38
    ld c, $ff
    rlca
    ld hl, sp+$7f
    add b
    ret nz

    rst $38
    call nc, $30ff
    rst $38
    ret nz

    rst $38
    jp Jump_000_02ff


    rst $38
    inc b
    rst $38
    ld l, h
    rst $38
    ld h, b
    rst $38
    and b
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    add hl, bc
    cp $00
    db $fd
    ld c, b
    rst $30
    rla
    add sp, $7f
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    dec hl
    rst $38
    sub a
    rst $38
    sub $ff
    ld [$f3ff], a
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    inc bc
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
    ldh [rIE], a
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ei
    db $fd
    ei
    rst $38
    ei
    rst $38
    ei
    db $fd
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    ld hl, sp-$01
    db $fc
    ei
    db $fd
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fd
    ei
    db $fc
    ei
    db $fc
    ei
    ld a, h
    ei
    ld a, l
    ld a, [$fa3d]
    inc a
    ei
    ccf
    ld hl, sp+$1d
    ld a, [$f807]
    ld b, $f8
    rst $38
    db $fc
    ld sp, hl
    cp $ff
    db $fc
    ld a, [$fafc]
    db $fc
    ld a, [c]
    db $fc
    ld a, [c]
    db $fc
    ld a, d
    db $fc
    ld [hl-], a
    db $fc
    ld [hl-], a
    db $fc
    ld [hl], b
    db $fc
    ld [hl-], a
    db $fc
    or b
    ld a, h
    or d
    ld a, h
    ld [hl-], a
    db $fc
    ld a, [hl-]
    ld [hl], h
    cp d
    ld [hl], h
    ld a, [hl+]
    ld [hl], h
    ld l, $70
    xor d
    ld [hl], h
    inc hl
    db $fc
    pop hl
    ld a, [hl]
    ld b, e
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    rst $38
    nop
    jr nc, jr_0b5_433a

    ld [hl], b
    ld [hl], b
    ld [hl], e
    ld h, b
    and $40
    ld h, b
    cp a
    ld h, b
    sbc a
    ldh [rIE], a
    ld a, a
    cp a
    ld b, b
    sbc a
    ld b, b
    sbc a
    ld b, b
    sbc a
    nop
    rst $38
    nop
    rst $38
    dec b
    rst $38
    inc bc
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    ld a, a
    rst $38
    db $fd
    cp $76
    ld sp, hl
    ret nz

    rst $38
    add b
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    db $dd
    ld [c], a

jr_0b5_433a:
    ei
    inc b
    rst $18

jr_0b5_433d:
    jr nz, jr_0b5_433d

    ld bc, $ff06
    jr @+$01

    ld d, d
    db $fd
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
    ld bc, $23ff
    rst $18
    ld d, a
    xor a
    rrca
    rst $38
    dec a
    rst $38
    db $fd
    rst $38
    ld a, a
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    dec d
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38

jr_0b5_4372:
    rst $38
    rst $38

jr_0b5_4374:
    call nz, $9ffb
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
    db $fc
    rst $38
    ld hl, sp-$01
    pop af
    cp $e3
    db $fc
    db $e3
    db $fc
    ldh a, [rIE]
    di
    db $fc
    db $e3
    db $fc
    db $e4
    ld hl, sp-$37
    ldh a, [$c0]
    ld hl, sp-$36
    ldh a, [$d0]
    ldh [$80], a
    ldh a, [$8c]
    ldh a, [$d8]
    ldh [$f8], a
    ret nz

    sbc b
    ldh [$90], a
    ldh [$90], a
    ldh [$b0], a
    ret nz

    jr nc, jr_0b5_4372

    jr nz, jr_0b5_4374

    jr nz, @-$3e

    nop
    ret nz

    ret nz

    nop
    nop
    add b
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

jr_0b5_43cc:
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
    or $00
    ld a, [c]
    nop
    ld a, [c]
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    db $e4
    nop
    add sp, $00
    ld [$f800], a
    nop
    rst $38
    ret nz

    rst $38
    rst $38
    nop
    rst $38
    rra
    rst $38
    rlca
    rst $38
    ldh a, [rIF]
    rrca
    nop
    nop
    inc bc
    add b
    ld [bc], a
    rst $20
    inc b
    inc b
    ei
    ld b, $f9
    ld b, $f9
    rst $18
    ld hl, sp-$01
    rst $38
    inc h
    ld sp, hl
    inc h
    ld sp, hl
    inc h
    ld sp, hl
    ld [hl-], a
    db $ed
    cp [hl]
    pop hl
    reti


    and $0f
    ldh a, [rLCDC]
    rst $38
    db $fc
    rst $38
    inc bc
    rst $38
    jr nz, @+$01

    cp $ff
    db $fc
    rst $38
    rst $20
    ld hl, sp-$47
    add $27
    ret c

    rrca
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ret z

    dec [hl]
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    rrca
    rst $38
    pop hl
    ld e, $c7
    jr c, jr_0b5_43cc

    ld a, b
    inc c
    di
    db $10
    rst $28
    ld bc, $00ff
    rst $38
    dec d
    cp $7f
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
    cp $ff
    db $ec
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    dec b
    ld a, [$00ff]
    ld hl, sp+$00
    and b
    nop
    ld a, b
    add b
    and b
    nop
    add b
    nop
    nop
    nop
    ld b, b
    nop
    ld [$4000], sp
    nop
    stop
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
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    add sp, $00
    db $e4
    nop
    ldh [rP1], a
    ret nc

    nop
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    ret nc

    nop
    ret nz

    nop
    and b
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
    ldh [rP1], a
    ldh a, [$f0]
    rlca
    rst $38
    push af
    rst $38

jr_0b5_44d4:
    push af
    rst $38
    ld bc, $f0fe
    ld c, $10
    ld c, $10
    ld c, $10
    ld c, $10
    ld c, $10
    ld c, $00
    ld c, $80
    ld c, $00
    ld c, $01
    ld c, $02
    ld c, $83
    rrca
    inc bc
    rrca
    inc bc
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    adc a
    rrca
    rst $38
    nop
    inc c
    nop
    ld [hl], b
    ld hl, sp+$20
    ret nz

    call nz, $f800
    nop
    ld sp, hl
    nop
    di
    nop
    rst $38
    nop
    reti


    ld [bc], a
    pop hl
    ld [$ea05], sp
    rra
    and b
    add hl, bc
    or $40
    rst $38
    add b
    rst $38
    add [hl]
    rst $38
    inc c
    rst $38
    db $e3
    inc e
    rst $00
    jr c, jr_0b5_44d4

    ld [hl], b
    rra
    ldh [$2e], a
    pop de
    ld a, a
    add b
    rst $38
    nop
    cp $01
    sub $ff
    ei
    rst $38
    db $eb
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ret z

    rst $38
    adc b
    rst $38
    push hl
    rst $18
    rst $00
    rst $38
    ld a, [c]
    rst $28
    db $e3
    rst $38
    ld sp, hl
    rst $30
    pop af
    rst $38
    db $fc
    ei
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $f4
    rst $38
    sub c
    cp $6f
    ret nc

    db $d3
    db $fc
    push bc
    ld hl, sp-$03
    ldh [$31], a
    ret nz

    ld [hl], c
    add b
    add d
    nop
    ld bc, $2000
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
    ld bc, $01ff
    cp $00
    rst $38
    nop
    db $fc
    nop
    ldh a, [rP1]
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $03cf


    rrca
    inc bc
    rrca
    inc bc
    rrca
    inc bc
    rrca
    inc bc
    rrca
    inc bc
    rrca
    inc bc
    rrca
    inc bc
    cpl
    inc bc
    cpl
    inc bc
    ccf
    inc bc
    ccf

jr_0b5_45bd:
    inc bc
    ccf
    inc bc
    ld a, $0c
    inc a
    jr jr_0b5_45bd

    ldh a, [$f0]
    ret nz

    ldh [$80], a
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
    jp nz, $ed01

    ld [bc], a
    ld a, [$f005]
    rrca
    pop hl
    ld e, $e2
    dec e
    call nz, Call_000_003b
    rst $38
    ld bc, $07ff
    rst $38
    ld c, $ff
    ld e, $ff
    ld [$08ff], sp
    rst $38
    jr @+$01

    db $fc
    rst $38
    ld h, h
    rst $38
    ldh [rIE], a
    ld b, b
    rst $38
    ld de, $3dff
    rst $18
    adc h
    rst $38
    ld c, b
    rst $38
    ld a, [bc]
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    rrca
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
    ldh [rIE], a
    add b
    rst $38
    ld c, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    scf
    rst $38
    ld e, $ff
    add b
    rst $38
    ld [bc], a
    db $fd
    ld a, a
    add b
    call z, $ff00
    nop
    rst $28
    nop
    call nz, Call_0b5_6000
    add b
    ld h, b
    add b
    db $e4
    nop
    ld c, h
    nop
    ld c, $00
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0b5_464c:
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
    ldh a, [$3f]
    jr nc, jr_0b5_464c

    nop
    ld l, e
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    rst $38
    rlca
    ld hl, sp+$01
    ldh a, [$09]
    ldh [rSB], a
    ret nz

    inc h
    add b

jr_0b5_4670:
    nop
    nop
    nop
    nop
    jr nz, jr_0b5_4676

jr_0b5_4676:
    ld b, c
    nop
    inc bc
    add b
    adc e
    inc b
    sbc e
    inc b
    rst $20
    jr jr_0b5_4670

    db $10
    rrca
    ldh a, [$0e]
    pop af
    ld d, h
    db $eb
    add b
    rst $38
    ld bc, $01ff
    rst $38
    ld b, $ff
    ld [bc], a
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld [$10ff], sp
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    push hl
    rst $38
    db $ec
    rst $38
    push af
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ccf
    rst $38
    db $dd
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    inc de
    rst $28
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
    ld [bc], a
    rst $38
    add b
    rst $38
    and b
    ld e, a
    xor $11
    rst $38
    nop
    add [hl]
    ld a, c
    ld l, e
    sub h
    ld [hl], l
    nop
    ld [$0000], sp
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
    di
    nop
    rst $10
    nop
    ld a, [hl+]
    nop
    jp z, RST_00

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
    ld [bc], a
    ld [bc], a
    dec c
    add hl, bc

jr_0b5_46ff:
    rlca
    or $00
    nop
    nop
    call nc, Call_000_3c08
    ld hl, sp-$28
    jr nc, jr_0b5_46ff

    jr c, jr_0b5_4786

    cp [hl]
    sbc a
    ld h, b
    rlca
    nop
    ld a, [hl]
    nop
    adc $00
    jp c, $9704

    ld [$887f], sp
    pop bc
    ld a, $d0
    ccf
    ld [c], a
    dec a
    nop
    rst $38
    add c
    ld a, a
    inc de
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    ld l, a
    rst $38
    dec b
    rst $38
    inc bc
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
    ld c, $ff
    rrca
    rst $38
    ccf
    rst $38
    and a
    rst $38
    ld hl, $0bff
    rst $38
    dec bc
    rst $38
    db $e3
    rst $38
    ld e, e
    rst $38
    db $e3
    rst $38
    rst $30
    rst $38
    di
    rst $38
    pop af
    rst $38
    adc a
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
    cpl
    rst $38
    rst $18
    rst $38
    nop
    rst $38
    call z, $ff33
    nop
    rst $38
    nop
    ret nc

    cpl
    rst $20
    nop
    ld h, e
    nop
    nop
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
    ld e, a
    nop
    dec de
    nop

jr_0b5_4786:
    dec c
    nop
    dec bc
    nop
    dec b
    nop
    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    nop
    rst $38
    db $fc
    inc h
    rst $38
    rst $18
    inc b
    adc a
    nop
    add a
    nop
    rlca
    nop
    rlca
    nop
    cp e
    rlca
    di

jr_0b5_47bd:
    ccf
    cp e
    db $76
    ld a, a
    jr nc, jr_0b5_4842

jr_0b5_47c3:
    jr nc, jr_0b5_4843

    jr nc, jr_0b5_4805

    ld sp, $337d
    ld a, h
    ld [hl-], a
    ld a, [$fe36]
    ld b, $27
    rrca
    jr nc, jr_0b5_47e3

    add hl, sp
    ld b, $70
    rrca
    ldh [$1f], a
    ret nz

    ccf
    nop
    rst $38
    ld b, b
    rst $38
    xor a
    ld d, b
    nop

jr_0b5_47e3:
    rst $38
    ld [$00ff], sp
    rst $38
    ret nz

    rst $38
    ld c, b
    or a
    cp a
    ld b, b
    ld a, $c1
    dec bc
    db $f4
    nop
    rst $38
    jr c, jr_0b5_47bd

    inc a
    jp $cf30


    jr c, jr_0b5_47c3

    ld de, $f1ef
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0b5_4805:
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rla
    rst $28
    ld hl, sp+$07
    cp e
    inc b
    ld e, d
    and a
    sbc b
    ld h, a
    ld l, l
    add d
    call nz, $d703
    nop
    rlca
    nop
    ld e, $00
    nop
    nop
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
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ccf
    nop
    xor a
    nop
    rst $38
    nop
    ccf
    nop

jr_0b5_4842:
    sbc a

jr_0b5_4843:
    nop
    cp a
    nop
    ld a, a
    nop
    rst $38
    nop
    ld e, a
    nop
    cpl
    nop
    dec bc
    nop
    dec bc
    nop
    dec c
    nop
    add hl, bc
    nop
    inc b
    nop
    dec b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0100
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
    rrca
    nop
    rrca
    rrca
    rlca
    rrca
    rlca
    rrca
    add l
    rrca
    sub b
    ld l, a
    adc e
    nop
    add [hl]
    add hl, bc
    add a
    nop
    add a
    nop
    add a
    nop
    daa
    ret nz

    push af
    add sp, -$3c
    ld a, d
    call $cc72
    ld [hl], b
    ld l, h
    ld [hl], b
    db $fc
    ldh a, [$ac]
    ldh a, [$2e]
    ld [hl], b
    db $76
    ld a, b
    ld [hl], h
    ld a, b
    cp $f8
    ld a, a
    ld hl, sp+$23
    db $fc
    jr nz, @+$01

    jr nc, @+$01

    ld h, c
    rst $38
    ld [hl], c
    rst $38
    ld a, l
    rst $38
    pop hl
    ld a, a
    ld a, c
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, e
    rst $38
    pop hl
    rst $38
    and b
    ld a, a
    add b
    ld a, a
    rst $38
    rst $38
    db $e3
    rst $38
    jp $83ff


    rst $38
    rrca
    rst $38
    sub a
    rst $38
    rlca
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, [$fcfd]
    ei
    db $fc
    ei
    ld hl, sp-$01
    db $fc
    ei
    ld hl, sp-$01
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
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    adc a
    ld a, a
    add a
    ld a, a
    ldh [$1f], a
    ret nz

    ccf
    ld hl, sp+$07
    jr c, jr_0b5_4913

    add hl, bc
    ld b, $64
    inc bc
    ld a, [c]
    rrca
    rst $38

jr_0b5_4913:
    rlca
    ld a, [c]
    rrca
    ldh [$1f], a
    ld h, [hl]
    rra
    jr nz, jr_0b5_493b

    db $f4
    rrca
    ld b, d
    rra
    ld l, b
    rla
    ld [c], a
    rra
    db $e4
    rra
    jr c, jr_0b5_492f

    jr nz, jr_0b5_4949

    jr nc, jr_0b5_493b

    inc a
    inc bc
    inc e

jr_0b5_492f:
    inc bc
    ld e, $01
    ld c, $01
    ld b, $01
    ld d, $01
    rlca
    nop
    rlca

jr_0b5_493b:
    nop
    ld bc, $0706
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    dec b
    ld [bc], a
    inc b

jr_0b5_4949:
    inc bc
    inc b
    inc bc
    ld [bc], a
    ld bc, $0003
    db $fd
    ld [bc], a
    db $fc
    inc bc
    rst $38
    nop
    cp [hl]
    ld bc, $037c
    db $fc
    inc bc
    ld a, $01
    ld a, h
    inc bc
    ccf
    nop
    ld a, [hl]
    ld bc, $00bf
    rst $38
    nop
    ld a, l
    ld [bc], a
    ld a, h
    inc bc
    db $fc
    inc bc
    ld a, h
    inc bc
    rlca
    nop
    ld b, $01
    cpl
    rra
    dec e
    rst $38
    rra
    rst $38
    rra
    rst $38
    jp $cf3f


    ccf
    ld b, b
    rrca
    db $ec
    inc bc
    inc c
    inc bc
    inc e
    inc bc
    dec c
    inc bc
    inc e
    inc bc
    ld d, $09
    ld h, h
    sbc e
    inc bc
    rst $38
    db $d3
    ccf
    ld [hl], e
    ccf
    ld e, a
    ccf
    ld e, e
    ccf
    ld a, e
    rra
    rst $08
    ccf
    rst $08
    ccf
    ccf
    rra
    ld a, [hl-]
    rra
    ld a, [de]
    ccf
    ld a, [hl]
    rst $38
    ld l, a
    rst $38
    ld h, a
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    ret nc

    rst $38
    ret nc

    rst $38
    add b
    rst $38
    ret z

    rst $30
    call nz, $e0fb
    rst $18
    and b
    rst $18
    cp h
    jp $c07f


    ld [hl], a
    ret z

    ld a, e
    call nz, $c07f
    rra
    ldh [$3f], a
    ret nz

    ld a, [hl]
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld a, d
    rst $38
    ld a, [$feff]
    rst $38
    ld hl, sp-$01
    db $f4
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $f4
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
    db $fc
    rst $38
    ld hl, sp-$01
    ld a, b
    rst $38
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ldh a, [$7f]
    ld a, b
    rst $38
    add sp, $7f
    ldh a, [$7f]
    ldh a, [$7f]
    ldh a, [$7f]
    ldh a, [$7f]
    ld hl, sp+$7f
    ldh a, [$7f]
    ldh a, [$7f]
    or b
    ld a, a
    or b
    ld a, a
    or b
    ld a, a
    or b
    ld a, a
    ldh a, [$3f]
    or b
    ld a, a
    ldh a, [$3f]
    ldh a, [$3f]
    ldh a, [$3f]
    ldh [$3f], a
    ldh a, [$3f]
    ldh a, [$3f]
    ldh a, [$3f]
    ldh a, [$3f]
    or b
    ccf
    or b
    ccf
    ldh a, [$3f]
    ld hl, sp+$3f
    ld [hl], b
    ccf
    ld [hl], b
    ccf
    ld e, b
    ccf
    ld d, b
    ccf
    sbc b
    ld a, a
    ret nc

    ccf
    ret c

    ccf
    ld [hl], b
    ccf
    ld d, b
    ccf
    db $10
    ld a, a
    db $10
    ld a, a
    jr @+$81

    jr @+$81

    ld [hl], b
    rra
    ldh a, [$1f]
    jr nc, jr_0b5_4a7d

    jr nc, jr_0b5_4a7f

    db $10
    rra
    ld d, b
    rra
    ld d, b
    rra
    ld [hl], b
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    sub b
    ld e, a
    db $10
    rst $18
    db $10
    rst $18
    add b
    rst $18
    ld c, b
    rst $18
    ret c

jr_0b5_4a7d:
    rst $18
    xor b

jr_0b5_4a7f:
    rst $18
    db $ec
    rst $18
    ret z

    rst $38
    ret z

    rst $38
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
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp [hl]
    rst $38
    sbc [hl]
    rst $38
    adc [hl]
    rst $38
    rst $08
    rst $38
    xor $1f
    rst $08
    ccf
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    add e
    rst $38
    pop hl
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    di
    rst $38
    pop hl
    rst $38
    inc bc
    rst $38
    ld d, b
    rst $38
    ld b, c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    xor d
    ld [hl], l
    cp c
    ld h, [hl]
    ret


    ld [hl], $cb
    inc [hl]
    rst $28
    db $10
    db $fd
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    call c, $faff
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
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $ec
    rst $38
    add sp, -$01
    ld hl, sp-$01
    add sp, -$01
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    or b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ret nc

    rst $38
    ret nc

    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ret nc

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    and b
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
    add b
    rst $38
    ld bc, $80fe
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add c
    cp $81
    cp $80
    rst $38
    add d
    db $fd
    add c
    cp $00
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
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
    add b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add d
    db $fd
    add b
    rst $38
    pop bc
    cp $c1
    cp $c1
    cp $81
    cp $83
    db $fc
    add c
    cp $81
    cp $c0
    rst $38
    pop bc
    cp $e0
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    rrca
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp-$71
    ldh a, [$87]
    ld hl, sp+$07
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$5d
    db $fc
    rst $20
    ld hl, sp-$19
    ld hl, sp+$63
    db $fc
    db $e3
    db $fc
    cp c
    cp $b8
    rst $38
    ld sp, hl
    cp $d8
    rst $38
    ld e, h
    rst $38
    inc c
    rst $38
    adc [hl]
    ld a, a
    adc $3f
    sub $2f
    rst $30
    rrca
    db $e3
    rra
    ld bc, $18fe
    rst $20
    ld [de], a
    db $ed
    ld de, $08ee
    rst $30
    nop
    rst $38
    inc b
    ei
    nop
    rst $38
    ld b, b
    cp a
    inc b
    ei
    ld b, h
    cp e
    inc c
    di
    jr nz, @-$1f

    nop
    rst $38
    db $10
    rst $28
    nop
    rst $38
    db $10
    rst $28
    ld bc, $70fe
    adc a
    inc [hl]
    swap h
    rl l
    ld [$aa55], a
    rla
    add sp, $5e
    and c
    rla
    add sp, $06
    ld sp, hl
    ld d, $e9
    dec l
    jp nc, $d12e

    inc l
    db $d3
    cp a
    ld b, b
    ld c, a
    or b
    rra
    ldh [$97], a
    ld l, b
    inc a
    jp $c936


    ld a, [de]
    push hl
    ld a, [hl+]
    push de
    ld a, [hl]
    add c
    ld e, a
    and b
    db $fd
    ld [bc], a
    ld c, [hl]
    or c
    ld e, $e1
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    nop
    ei
    inc b

jr_0b5_4c34:
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    db $76
    adc c
    ld d, [hl]
    xor c
    cp a
    ld b, b
    ld a, a
    add b
    ld a, a
    add b
    rrca
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$2f], a
    ret nc

    ld a, a
    add b
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$7f], a
    add b
    cp a
    ld b, b
    rst $38
    nop
    db $fd
    ld [bc], a
    and e
    ld e, h
    and e
    ld e, h
    ld a, e
    add h
    rst $00
    jr c, jr_0b5_4c34

    jr nc, jr_0b5_4cd6

    sub b
    ld l, a
    sub b
    ld [hl], a
    adc b
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
    cpl
    ret nc

    ccf
    ret nz

    rra
    ldh [$2b], a
    call nc, $f40b
    ld bc, $03fe
    db $fc
    inc bc
    db $fc
    ld de, $01ee
    cp $00
    rst $38
    rst $38
    nop
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

    rra
    ldh [$9f], a
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    ld bc, $00fe
    rst $38
    inc de
    db $ec
    inc de
    db $ec
    ld d, c
    xor [hl]

Jump_0b5_4cb2:
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld hl, $24de
    db $db
    adc b
    ld [hl], a
    dec e
    ld [c], a
    inc d
    db $eb
    dec l
    jp nc, $32cd

    ld c, [hl]
    or c
    ld d, a
    xor b
    ld d, l
    xor d
    dec de
    db $e4

jr_0b5_4cd6:
    dec de
    db $e4
    ld l, l
    sub d
    ld a, a
    add b
    ld l, a
    sub b
    ld l, a
    sub b
    rst $38
    nop
    ld a, a
    add b
    rst $28
    db $10
    ld l, a
    sub b
    ld a, a
    add b
    rst $38
    nop
    rst $30
    ld [$50af], sp
    cp a
    ld b, b
    ld a, a
    add b
    rst $38
    nop
    rst $28
    db $10
    ld c, a
    or b
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
    ld a, a
    add b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    ld a, a
    add b
    cp a
    ld b, b
    ccf
    ret nz

    ld e, a
    and b
    rra
    ldh [$1f], a
    ldh [$7f], a
    add b
    rst $38
    nop
    sbc a
    ld h, b
    rra
    ldh [$9f], a
    ld h, b
    sbc a
    ld h, b
    ld e, a
    and b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b

jr_0b5_4d2c:
    rra
    ldh [$97], a
    ld l, b
    or e
    ld c, h

jr_0b5_4d32:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_0b5_4d32

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
    rst $18
    jr nz, jr_0b5_4d2c

    jr nz, @-$01

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
    ld a, a

jr_0b5_4d65:
    add b
    cpl
    ret nc

    rra
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    rrca
    ldh a, [rP1]
    rst $38
    ld [$08f7], sp
    rst $30
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    jr nz, jr_0b5_4d65

    adc b
    ld [hl], a
    inc c
    di
    ld c, b
    or a
    db $10
    rst $28
    db $10
    rst $28
    ldh [$1f], a
    ret nz

    ccf
    pop de
    ld l, $57
    xor b
    cpl
    ret nc

    rrca
    ldh a, [$bf]
    ld b, b
    ccf
    ret nz

    rra
    ldh [$3f], a
    ret nz

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
    or $00
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
    ld sp, hl
    nop
    ei
    nop
    cp $00
    db $fd
    nop
    ld a, [c]
    nop
    db $f4
    nop
    ldh a, [rP1]
    push af
    nop
    pop af
    nop
    xor $00
    ld [$f500], a
    nop
    di
    nop
    rst $30
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
    push af
    nop
    db $fc
    nop
    db $fc
    nop
    cp $00
    sbc $20
    ld hl, sp+$00
    ld sp, hl
    nop
    ld hl, sp+$00
    ld hl, sp+$00
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
    cp $00
    rst $38
    nop
    ld sp, hl
    nop
    db $fc
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
    db $fd
    nop
    ld sp, hl
    nop
    rst $38
    nop
    db $fd
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld a, [$fc00]
    nop
    db $fd
    nop
    ld sp, hl
    nop
    db $fd
    nop
    db $fc
    nop
    db $fc
    nop
    ld a, [$fe00]
    nop
    db $fc
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
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
    jr jr_0b5_4e83

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0b5_4e93

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0b5_4ea3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0b5_4eb3

    ld [hl-], a

jr_0b5_4e83:
    inc d
    inc sp
    inc [hl]
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0b5_4ec5

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b

jr_0b5_4e93:
    ld b, c
    ld b, d
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    inc d

jr_0b5_4ea3:
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    inc [hl]
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

jr_0b5_4eb3:
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
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h

jr_0b5_4ec5:
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
    inc d
    inc d
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
    inc d
    inc d
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

    push de
    sub $d7
    ret c

    reti


    jp c, Jump_000_14db

    call c, $dedd
    rst $18
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$eceb], a
    db $ed
    inc [hl]
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
    jr jr_0b5_4f91

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
    inc d
    ld h, $14
    daa
    jr z, jr_0b5_4fb3

    ld a, [hl+]
    inc d
    dec hl
    inc l
    dec l
    ld l, $01

jr_0b5_4f91:
    ld bc, $0101
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
    nop
    ld bc, $0101
    inc b
    ld bc, $0101

jr_0b5_4fb3:
    nop
    nop
    nop
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    dec b
    inc b
    inc b
    ld bc, $0001
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    inc b
    inc b
    inc b
    ld bc, $0001
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
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld bc, $0501
    dec b
    dec b
    dec b
    dec b
    nop
    nop
    nop
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

Jump_0b5_5000:
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0000
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
    ld [bc], a
    ld bc, $0404
    inc b
    dec b
    dec b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0000
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
    ld bc, $0101
    nop
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
    inc c
    inc c
    add hl, bc
    add hl, bc
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0d08], sp
    dec c
    inc c
    inc c
    inc c
    add hl, bc
    add hl, bc
    dec c
    ld [$0808], sp
    inc c
    ld [$0808], sp
    ld [$0c0d], sp
    inc c
    inc c
    dec c
    add hl, bc
    add hl, bc
    dec c
    ld [$0c00], sp
    ld bc, $0808
    ld [$010c], sp
    inc c
    dec c
    ld [$a008], sp
    ld c, a
    and b
    ld c, a
    ret nc

    daa
    ld d, b
    and a
    ld d, b
    and a
    add sp, $13
    add sp, $13
    ld [hl], h
    adc c
    ld a, h
    add c
    ld [hl], h
    adc c
    ld a, d
    add h
    ld a, [$ba04]
    ld b, h
    db $fd
    ld [bc], a
    rst $38
    nop
    ld e, [hl]
    ld hl, $017e
    ccf
    nop
    cp a
    nop
    rra
    add b
    rst $18
    nop
    rst $08
    nop
    ld l, a
    add b
    ld h, a
    add b
    rla
    ldh [$b3], a
    ld b, b
    ld e, e
    and b
    ld sp, hl
    nop
    or l
    ld c, b
    db $fc
    nop
    sbc $20
    jp hl


    rla
    xor a
    ld e, a
    sbc a
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
    or $f6
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push af
    push af
    ld a, l
    ld a, l
    ld a, a
    rst $38
    ccf
    cp a
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    adc a
    ld a, a
    add a
    ld a, a
    rst $00
    ccf
    ld b, e
    cp a
    ld h, e
    sbc a
    and e
    ld e, a
    pop af
    rrca
    ret nc

    cpl
    ret c

    daa
    add sp, $17
    db $f4
    dec bc
    or $09
    ld a, [$fb05]
    inc b
    db $fd
    ld [bc], a
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
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    sbc a
    nop
    adc a
    nop
    ld c, a
    nop
    daa
    nop
    and a
    nop
    ld d, e
    nop
    xor c
    nop
    xor c
    nop
    call nc, Call_0b5_6a00
    nop
    xor d
    nop
    sub l
    nop
    ld e, d
    nop
    ld a, [hl+]
    nop
    xor l
    nop
    ld d, h
    nop
    ld a, [hl+]
    nop
    dec h
    nop
    sub l
    nop
    adc d
    nop
    push bc
    nop
    db $e4
    nop
    ld a, [c]
    nop
    pop af
    nop
    ld sp, hl
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
    cp $01
    rst $38
    ld bc, $03fd
    ei
    rlca
    rst $38
    rlca
    rst $30
    rrca
    rst $38
    rrca
    rst $28
    rra
    ld e, a
    ccf
    nop
    rst $30
    nop
    rst $30
    dec b
    ld a, [c]
    ld bc, $01fa
    ld a, [$f902]
    nop
    db $fd
    nop
    db $fd
    ld bc, $00fc
    cp $00
    cp $00
    cp $00
    cp $00
    ld a, a
    nop
    ld a, a
    add b
    ccf
    add b
    ccf
    add b
    ccf
    ret nz

    rra
    ret nz

    rra
    ret nz

    rra
    and b
    ld c, a
    ld [c], a
    dec c
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$07
    db $fd
    ld bc, $03fb
    rst $28
    rrca
    ccf
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
    ld [bc], a
    ld [bc], a
    ldh [$e0], a
    cp $fe
    xor b
    xor b
    or $f6
    nop
    nop
    add b
    add b
    db $f4
    db $f4
    rst $38
    rst $38
    xor b
    xor b
    ld b, b
    ld b, b
    nop
    nop
    db $f4
    db $f4
    db $f4
    db $f4
    or b
    or b
    ret nz

    ret nz

    ldh a, [$f0]
    ret nc

    ret nc

    ldh a, [$f0]
    cp $fe
    rst $38
    rst $38
    and b
    and b
    add b
    add b
    ld h, b
    ld h, b
    cp $fe
    rst $38
    rst $38
    push de
    push de
    ld c, b
    ret z

    ld a, [hl]
    cp $3c
    db $fc
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    adc [hl]
    ld a, [hl]
    adc a
    ld a, a
    rst $00
    ccf
    ld b, a
    cp a
    and e
    ld e, a
    and c
    ld e, l
    pop de
    cpl
    pop de
    cpl
    add sp, $17
    ld hl, sp+$07
    db $f4
    dec bc
    or $09
    ld a, [$fb05]
    inc b
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
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    cp a
    nop
    sbc a
    nop
    ld c, a
    nop
    xor a
    nop
    ld h, a
    nop
    ld d, a
    nop
    xor e
    nop
    db $e4
    ld bc, $0153
    jp hl


    inc bc
    add e
    rlca
    ld c, e
    rlca
    cpl
    rrca
    adc a
    rra
    ld e, a
    rra
    rra
    ccf
    cp a
    ccf
    cp a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    inc b
    rst $38
    rra
    rst $38
    inc bc
    rst $38
    inc e
    rst $38
    ld de, $3cff
    cp $ff
    rra
    rst $18
    rrca
    rst $18
    xor a
    ld e, a
    cpl
    rst $18
    rlca
    rst $28
    add a
    ld l, a
    sub a
    ld l, a
    add l
    ld [hl], a
    ld l, l
    sub a
    ld l, e
    sub a
    ld b, e
    cp e
    or l
    ld c, e
    or e
    ld c, e
    inc [hl]
    ld c, e
    ld e, b
    dec h
    ld e, c
    dec h
    ld a, [de]
    and l
    inc e
    and d
    inc l
    sub d
    dec e
    jp nz, $c01e

    ld d, $c9
    inc bc
    rst $28
    rlca
    rst $28
    rra
    rst $18
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    ld hl, sp-$08
    ldh [$e0], a
    ld b, b
    ld b, b
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
    rst $38
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
    db $fc
    rst $38
    db $fc
    rst $38
    or $ff
    cp $ff
    cp $ff
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
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
    ret nc

    ret nc

    ld a, [c]
    ld a, [c]
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    db $fc
    db $fc
    ei
    ei
    db $fc
    db $fc
    add sp, -$18
    db $e4
    db $e4
    rst $38
    rst $38

jr_0b5_5378:
    ld a, a
    rst $38
    ld [hl], h
    db $f4
    inc a
    db $fc
    jr c, jr_0b5_5378

    inc a
    db $fc
    ld e, $fe
    sbc d
    ld a, d
    adc a
    ld a, a
    ld c, a
    cp a
    ld b, a
    cp a
    and a
    ld e, a
    and e
    ld e, a
    pop de
    dec l
    pop hl
    dec e
    jp hl


    ld de, $08f0
    and b
    ld d, b
    ldh [rP1], a
    ret nz

    jr nz, @-$7e

    ld b, b
    ld a, a
    ccf
    ld hl, sp+$7f
    pop bc
    rst $38
    rst $20
    rst $38
    rra
    rst $38
    adc a
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rst $38
    rra
    rst $38
    rst $00
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    rst $38
    db $eb
    rst $38
    or $ff
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
    ld a, a
    rst $38
    call nc, $cbff
    ld [hl], a
    adc a
    ld a, e
    adc a
    ld a, e
    rst $00
    cp e
    rst $00
    cp e
    rst $00
    cp l
    rst $00
    cp l
    di
    db $dd
    ld [hl], e
    db $dd
    inc hl
    sbc $b9
    xor $31
    xor $11
    xor $11
    rst $28
    ret z

    rst $30
    ld l, b
    rst $30
    ld [$09f7], sp
    rst $30
    rlca
    ei
    rrca
    rst $28
    ccf
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    adc a
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $00
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    and a
    rst $38
    or e
    rst $38
    di
    rst $38
    pop de
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
    ld a, [$ffff]
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
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    add b
    add b
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$e0], a
    ldh a, [$f0]
    db $fc
    db $fc
    rst $38
    rst $38
    dec b
    dec b
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
    rst $18
    rst $38
    rst $28
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
    ld l, a
    rst $38
    rst $38
    rst $38
    cp e
    rst $38
    ld c, l
    rst $38
    sub b
    rst $38
    and b
    rst $38
    ld b, b
    rst $38
    db $f4
    rst $38
    cp [hl]
    rst $38
    db $f4
    rst $38
    ld hl, sp-$01
    ret c

    rst $38
    db $10
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    db $ed
    rst $38
    db $eb
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    or $7f
    ei
    ld a, a
    ei
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
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
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
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    db $10
    stop
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
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    or $ff
    or $ff
    ldh a, [rIE]
    ld hl, sp-$02
    ld hl, sp-$02
    ld hl, sp-$02
    ld hl, sp-$04
    ld hl, sp-$03
    ldh a, [$fd]
    ldh a, [$fd]
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$f8]
    ret nc

    db $fc
    ldh a, [$fc]
    ld hl, sp-$02
    db $fc
    cp $fe
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $18
    rst $38
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    cp $ff
    ld e, a
    rst $38
    ld sp, hl
    rst $38
    xor $ff
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $28
    ei
    rst $28
    push af
    rst $28
    db $fc
    rst $30
    cp $f7
    db $f4
    rst $38
    db $f4
    rst $38
    db $fc
    rst $30
    ld a, [$fef7]
    ei
    cp $fb
    ld a, [$ffff]
    ei
    db $fc
    ei
    db $fd
    ei
    rst $38
    db $fd
    rst $18
    rst $18
    cpl
    cpl
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rla
    rla
    ld e, a
    ld e, a
    rst $38
    rst $38
    sbc a
    sbc a
    xor a
    xor a
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    rra
    rra
    ccf
    ccf
    rla
    rla
    inc de
    inc de
    dec de
    dec de
    inc de
    inc de
    rla
    rla
    dec bc
    dec bc
    dec bc
    dec bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    rlca
    rlca
    dec b
    dec b
    ld b, $06
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [de], a
    ld [de], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld h, d
    ld hl, $41c1
    and c
    ld b, b
    jr nz, jr_0b5_561b

    nop
    nop
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
    ld bc, $0501
    dec b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ldh a, [$fe]
    ldh [$f8], a

jr_0b5_55fe:
    ret nz

    di
    pop hl
    and $c2
    call $9a95
    ld a, [hl+]
    dec [hl]
    dec d
    ld a, [hl+]
    ld a, [hl+]
    ld d, l
    push af
    ld a, [bc]
    ei
    inc b
    rst $18
    jr nz, jr_0b5_55fe

    inc d
    ld d, a
    xor b
    xor e
    ld d, h
    ld [hl], a
    adc b
    cp a

jr_0b5_561b:
    ld b, b
    ld e, a
    and b
    cp a
    ld b, b
    ld a, a
    nop
    ccf
    nop
    ccf
    ld bc, $f1ef
    ei
    rst $38
    di
    rst $38
    sbc b
    sbc a
    call z, $c0cf
    db $e3
    and b
    ld sp, hl
    jr nc, @-$04

    ld [hl], b

jr_0b5_5637:
    db $fd
    jr nc, @+$01

    jr nc, jr_0b5_5637

    or b
    ei
    ld h, b
    ei
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
    ei
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    rst $38
    ld a, [hl]
    ld a, a
    cp [hl]
    ld a, a
    cp [hl]
    rst $38
    cp [hl]
    rst $38
    cp [hl]
    rst $38
    cp a
    rst $38
    cp a
    cp a
    rst $18
    ccf
    rst $18
    rra
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $18
    rst $18
    rst $38
    rra
    rst $28
    sbc a
    rst $28
    ldh [rIF], a
    nop
    rst $28
    sub b
    rst $28
    sub b
    rst $28
    add b
    rst $28
    or b
    rst $00
    ldh [$d7], a
    ldh [$d7], a
    add sp, -$29
    ret z

    rst $30
    ret nz

    rst $30
    ret c

    db $e3
    call c, $f8e3
    jp $ebd0


    call nc, $d4eb
    db $eb
    ret c

    db $e3
    db $fc
    pop hl
    db $f4
    jp hl


    add sp, -$0b
    add sp, -$0b
    add sp, -$0b
    add sp, -$0b
    ld a, [$fef5]
    ldh a, [$f6]
    ld hl, sp-$0f
    cp $f1
    cp $f4
    ld a, [$fafd]
    ei
    db $fc
    db $fd
    ld a, [$fcfb]
    ld hl, sp-$01
    ld a, [$f8fd]
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ret z

    ret z

    ld h, e
    ld h, e
    ld l, c
    ld l, c
    ld h, c
    ld h, c
    ld a, c
    ld a, c
    or c
    or c
    ld a, c
    ld a, c
    cp h
    cp h
    inc a
    inc a
    cp h
    cp h
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, a
    ld a, a
    ld a, [hl]
    ld a, [hl]
    ld a, h
    ld a, h
    cp b
    cp b
    ld a, b
    ld a, b
    ld [hl], b
    ld [hl], b
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
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
    rlca
    rrca
    rlca
    rrca
    inc bc
    adc a
    inc b
    call nz, $e404
    inc b
    db $e4
    inc b
    db $f4
    ld b, $f6
    pop bc
    scf
    ldh a, [rTAC]
    ldh a, [$03]
    ld hl, sp+$00
    ld hl, sp+$00
    ei
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    db $fc
    rra
    ld hl, sp+$3f
    ldh a, [$7f]
    ret nz

    ld a, a
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
    jp nz, Jump_0b5_60fd

    rst $38
    ld [de], a
    db $fd
    add hl, bc
    or $4f
    ld [hl], b
    and a
    cp b
    db $d3
    call c, $e4e0
    ldh a, [$f0]
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    or $ff
    rst $38
    rst $38
    rst $38
    rst $38
    sub a
    ei
    rlca
    ei
    rlca
    ei
    ld c, a
    ei
    ld c, a
    ei
    ld e, a
    ei
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
    rst $38
    rst $38
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp h
    cp h
    cp [hl]
    cp [hl]
    cp [hl]
    cp [hl]
    sbc [hl]
    sbc [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld a, [hl]
    ld a, [hl]
    ld e, a
    ld e, a
    ld c, a
    ld c, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ccf
    ccf
    ccf
    ccf
    cpl
    cpl
    daa
    daa
    cpl
    cpl
    ld h, $26
    inc e
    rra
    inc de
    db $10
    ld d, $15
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rrca
    rrca
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    adc e
    dec bc
    adc e
    dec bc
    dec bc
    adc e
    dec bc
    adc e
    add a
    rlca
    add a
    rlca
    rlca
    add a
    rlca
    rlca
    rlca
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    call nc, $82d4
    add d
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
    ccf
    nop
    ld a, a
    nop
    ld a, a
    rst $38
    rst $38
    cp $ff
    push af
    rst $38
    db $fc
    rst $38
    db $e3
    rst $38
    call z, $9fff
    ldh [$bf], a
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
    ldh [$e0], a
    inc e
    db $fc
    ld [bc], a
    cp $08
    rst $30
    rlca
    jr c, jr_0b5_581c

    ld [$f0f0], sp
    rst $38
    rst $38
    dec hl
    rst $38

jr_0b5_581c:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    rrca
    ldh a, [$1f]
    ldh [$7f], a
    add b
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
    ld a, [hl]
    nop
    ld a, h
    nop
    ld a, b
    nop
    ld hl, $0101
    inc bc
    rlca
    rrca
    rra
    rra
    adc a
    sbc a
    call $c0cf
    rst $08
    ldh [$e7], a
    ldh [$e7], a
    db $fc
    rst $38
    add sp, -$09
    add sp, -$09
    jp hl


    or $e9
    or $e9
    or $e8
    rst $30
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
    rst $38
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
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rra
    rra
    rrca
    rst $08
    adc a
    ld l, a
    rst $28
    rrca
    and a

jr_0b5_589f:
    sub a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp nc, Jump_000_00d2

    nop
    inc bc
    inc bc
    add c
    add c
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
    nop
    rst $38
    jr nc, jr_0b5_589f

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
    inc b
    ei
    ld h, a
    sbc b
    add d
    ld a, l
    ld [hl], a
    adc b
    cp a
    ld b, b
    cp l
    ld b, d
    cp e
    ld b, h
    rst $38
    nop
    rst $38
    nop
    ld e, a
    and b
    rst $38
    nop
    add b
    add b
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    jr nz, jr_0b5_591a

    and b
    and b
    db $10
    sub b
    db $10
    ret nc

    ld d, b
    and b
    ldh a, [rP1]
    db $f4
    inc b
    ld [c], a
    ld [bc], a
    ld [c], a
    ld [bc], a
    pop hl
    ld bc, $08c8
    adc b
    ld [$1090], sp
    jr nz, jr_0b5_5934

    jr nz, jr_0b5_5936

    ld b, b
    ld b, b
    ld b, b
    ld b, b

jr_0b5_591a:
    add b
    add b
    nop
    nop
    call nc, $fcf8
    rst $38
    or $ff
    ret c

    rst $38
    add sp, -$01
    nop
    rst $38
    nop
    rst $38
    ld a, [bc]
    push af
    nop
    rst $38
    ld e, e
    cp a
    ld c, e
    cp a

jr_0b5_5934:
    ld e, d
    cp a

jr_0b5_5936:
    ld e, d
    cp a
    ld a, a
    cp a
    ld e, a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    sbc a
    sbc a
    adc d
    adc d
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    rst $38
    rst $38
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
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
    pop af
    add hl, de
    add hl, de
    ldh [$e0], a
    ldh [$e0], a
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
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    nop
    rst $38
    db $fd
    ld [bc], a
    nop
    rst $38
    ld [$04f7], sp
    ei
    ld [de], a
    db $ed

jr_0b5_59b8:
    ld e, $e1
    ld l, [hl]
    sub c

jr_0b5_59bc:
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    db $e4
    dec de
    db $e3
    inc e
    rst $00
    jr c, jr_0b5_59b8

    db $10
    ld e, a
    jr nz, jr_0b5_59bc

    db $10
    ld l, a
    db $10
    rst $38
    nop
    cp a
    nop
    sbc a
    nop
    adc a
    nop
    rlca
    nop
    ld bc, $1800
    nop
    rra
    nop
    dec b
    nop
    add h
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    db $fc
    nop
    rst $38
    add b
    jp z, $d040

    ld b, b
    and b
    add b
    ldh [rP1], a
    ld b, d
    nop
    ret nz

    nop
    jp nc, Jump_0b5_5f00

    nop
    ld [$2000], sp
    ret nz

    add b
    rst $38
    inc b
    rst $38
    dec b
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    add d
    ld a, l
    adc e
    ld [hl], l
    sbc d
    ld h, l
    sub d
    ld l, l
    sbc d
    ld h, l
    sbc d
    ld h, l
    sbc d
    ld h, l
    rst $38
    rst $38
    cp $ff
    rst $38
    nop
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
    call c, $dcff
    rst $38
    call c, $dcff
    rst $38
    call c, $9cff
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc b
    ld hl, sp-$01
    ld sp, hl
    cp $f9
    cp $f9
    cp $f8
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld sp, hl
    cp $f9
    cp $f9
    cp $f8
    rst $38
    ld hl, sp-$01
    ld sp, hl
    cp $f9
    cp $f9
    cp $f9
    cp $80
    add c
    ret nz

    pop bc
    ret nz

    pop bc
    ldh [$e1], a
    ldh [$e1], a
    ldh a, [$f1]
    ldh a, [$f1]
    ld hl, sp-$07
    ld a, b
    ld a, c
    ld hl, sp-$07
    ld hl, sp-$07
    ld hl, sp-$08
    ld hl, sp-$08
    ei
    ei
    db $fd
    db $fd
    jr nc, @+$32

    ld b, h
    ld b, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0b5_5a9d:
    nop
    nop
    nop

jr_0b5_5aa0:
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
    ld b, b
    cp a
    ld c, d
    or l
    ret nz

    ccf
    nop
    rst $38
    ld [bc], a
    db $fd
    inc d
    db $eb
    rrca
    ldh a, [$da]
    dec h
    ld a, $c1
    dec e
    ld [c], a
    dec d
    ld [$f00f], a
    ld h, $d9
    rst $00
    jr c, jr_0b5_5a9d

    jr z, jr_0b5_5aa0

    jr z, @-$08

    ld [$50ad], sp
    ld a, h
    add b
    ld hl, sp+$00
    ld a, d
    add b
    di
    nop
    ret nz

    nop
    add hl, bc
    nop
    rlca
    nop
    rlca
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
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    and l
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
    nop
    nop
    nop
    ld l, b
    nop
    sub d
    nop
    nop
    nop
    ld b, b
    add b
    ld c, b
    rst $38
    dec b
    rst $38
    ld bc, $10ff
    rst $38
    dec b
    rst $38
    nop
    rst $38
    ld [bc], a
    ld sp, hl
    db $10
    ei
    ld [bc], a
    ld sp, hl
    ld bc, $01fa
    ld a, [$fa01]
    add c
    ld a, [$fa81]
    ld bc, $01fa
    ld a, [$f803]
    dec b
    ld a, [c]
    rlca
    ldh a, [rTAC]
    ldh a, [rTAC]
    ldh a, [rTAC]
    ldh a, [rTAC]
    ldh a, [rTAC]
    ldh a, [rTAC]
    ldh a, [rTAC]
    ldh a, [rTAC]
    ldh a, [$03]
    db $f4
    rlca
    ldh a, [$03]
    db $f4
    rlca
    ldh a, [$0b]
    db $e4
    rrca
    ldh [rIF], a
    ldh [rIF], a
    ldh [rIF], a
    ldh [$0e], a
    pop hl
    rrca
    ldh [rIF], a
    ldh [rIF], a
    ldh [rIF], a
    ldh [rTAC], a
    add sp, $0e
    pop hl
    rrca
    ldh [rTAC], a
    add sp, $1f
    ret nz

    rra
    ret nz

    rra
    ret nz

    ld e, $c0
    inc e
    jp nz, $c21c

    ld e, $c0
    inc e
    jp nz, $c01e

    ld c, $d0
    ld e, $c0
    ld c, $d0
    inc e
    pop bc
    inc c
    pop de
    ld [$08d5], sp
    push de
    ld [$3ad5], sp
    push bc
    ld a, [hl-]
    push bc
    ld a, [hl+]
    push de
    nop
    ld b, $00
    nop
    db $fc
    db $fc
    ld a, a
    ld a, a
    dec b
    dec b
    dec e
    dec e
    ld [$0008], sp

jr_0b5_5b95:
    nop
    nop
    nop
    inc b
    inc b
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
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], b
    adc a
    ld b, b
    cp a
    dec bc
    rst $38
    inc b
    rst $38
    jr nz, jr_0b5_5b95

    add b
    ld a, a
    ld e, b
    and a
    ld l, b
    sub a
    ld [$e8f7], sp
    rla
    db $fc
    inc bc
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$00ff], sp
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ld d, [hl]
    nop
    inc e
    nop
    cp a
    nop
    ld e, $00
    jr z, jr_0b5_5bd8

jr_0b5_5bd8:
    ld h, a
    nop
    rst $28
    nop
    daa
    nop
    dec c
    nop
    dec bc
    nop
    adc e
    nop
    inc sp
    nop
    inc sp
    nop
    ld a, [hl+]
    nop
    inc a
    nop
    dec d
    nop
    add hl, hl
    nop
    rst $38
    nop
    ld c, c
    nop
    ld [bc], a
    nop
    ld [hl], $00
    ld [hl], b
    nop
    ld e, b
    nop
    ret nz

    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    add b
    ld bc, $5afe
    rst $38
    nop
    rst $38
    ld c, d
    rst $38
    inc d
    rst $38
    ret nz

    cpl
    ret nz

    cpl
    ret nz

    cpl
    ret nz

    cpl
    ret nz

    cpl
    ldh [rIF], a
    ldh [rIF], a
    and b
    ld c, a
    and b
    ld c, a
    and b
    ld c, a
    ldh [rIF], a
    add b
    ld e, a
    add b
    ld e, a
    add b
    ld e, a
    ret nz

    rra
    add b
    ld e, a
    ret nz

    rra
    ret nz

    rra
    ret nz

    rra
    ret nz

    rra
    ret nz

    rra
    ld b, b
    sbc a
    ret nz

    ccf
    ld b, b
    sbc a
    nop
    cp a
    add b
    ccf
    rrca
    cp a
    sbc a
    ccf
    cp a
    ccf
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, $7e
    inc e
    ld a, [hl]
    dec a
    ld a, h
    add hl, sp
    ld a, h
    add hl, de
    ld a, h
    ld bc, $057c
    ld a, b
    nop
    ld a, l
    inc bc
    ld a, b
    inc bc
    ld a, b
    inc bc
    ld a, b
    inc bc
    ld hl, sp+$03
    ld hl, sp+$03
    ld hl, sp+$01
    ld a, [$f803]
    inc bc
    ld hl, sp+$07
    ldh a, [rTAC]
    ldh a, [rTAC]
    ldh a, [rTAC]
    ldh a, [$03]
    db $f4
    inc bc
    db $f4
    inc bc
    db $f4
    ld [bc], a
    push af
    ld e, $e1
    ld e, $e1
    ld d, $e9
    ld bc, $003e
    ld bc, $8080
    rst $38
    rst $38
    rst $38

jr_0b5_5c8f:
    rst $38
    cp a
    cp a
    db $10
    stop
    nop
    jr nz, jr_0b5_5cb8

    adc b
    adc b
    jr nz, jr_0b5_5cbc

    nop
    nop
    nop
    nop
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
    jr nz, jr_0b5_5c8f

    inc b
    ei
    db $e4
    dec de
    push af
    ld a, [bc]
    db $f4
    dec bc

jr_0b5_5cb8:
    or $09
    or $09

jr_0b5_5cbc:
    push af
    ld a, [bc]
    rst $30
    ld [$ff02], sp
    add b
    ld a, a
    add b
    ld a, a
    ldh [$1f], a

jr_0b5_5cc8:
    ldh [$1f], a
    ld [hl], h
    dec bc
    ld a, [c]
    dec c
    ld [hl], e
    inc c
    add a
    jr jr_0b5_5cc8

    ld a, [bc]
    db $76
    add hl, bc
    db $76
    add hl, bc
    di
    inc c
    cp $01
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    rst $38

Call_0b5_5ce3:
    nop
    rst $38
    nop
    cp a
    nop
    rst $18
    nop
    rrca
    nop
    rst $08
    nop
    rra
    nop
    db $ed
    nop
    ld a, [hl]
    nop
    ld c, [hl]
    nop
    ld e, $00
    ld hl, $6d00
    nop
    ccf
    nop
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
    ld [bc], a
    db $fc
    cp d
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec b
    ld [$e906], a
    ld b, $e9
    ld [hl], $c9
    ld d, $c9
    ld d, $c9
    ld c, $d1
    ld a, [bc]
    push de
    rrca
    ret nc

    dec c
    jp nc, $922d

    inc l
    sub d
    ld a, $80
    ld a, $80
    ld a, $80
    ld a, $80
    ld a, [de]
    and h
    inc a
    add c
    ld e, b
    dec h
    ld a, b
    dec b
    ld a, h
    ld bc, $017c
    inc a
    ld b, c
    inc [hl]
    ld c, c
    jr c, @+$7d

    ld [hl], b
    ei
    ldh [$fb], a
    ret c

    db $e3
    cp b
    jp $83f8


    ld h, b
    sub a
    ld h, b
    sub a
    ldh [rNR22], a
    ldh a, [rTAC]
    ldh a, [rTAC]
    ldh a, [rTAC]
    ret nz

    cpl
    ret nz

    cpl
    ldh [rIF], a
    ldh [rIF], a
    ldh [rIF], a
    ldh [rIF], a
    add b
    ld e, a
    add b
    ld e, a
    add b
    ld e, a
    ret nz

    rra
    ret nz

    rra
    ret nz

    ld e, $80
    ld a, $00
    cp [hl]
    nop
    cp [hl]
    add b
    ld a, $81
    inc a
    ld bc, $007c
    ld a, l
    nop
    ld a, l
    add d
    ld a, l
    add d
    ld a, l
    add [hl]
    ld a, c
    add h
    ld a, d
    inc b
    ld [bc], a
    ld bc, $a101
    and c
    rst $38
    rst $38
    cp $fe
    sbc [hl]
    sbc [hl]
    inc bc
    inc bc
    dec b
    dec b
    inc b

jr_0b5_5d99:
    inc b
    inc b
    inc b
    ld b, $06
    inc b
    inc b
    inc c
    inc c
    inc c
    inc c
    inc b
    inc b
    ld b, $06
    ld b, $86
    rlca
    add a
    rlca
    add a
    ld b, $86
    inc bc
    add e
    ld [bc], a
    add d
    inc bc
    add e
    ld [bc], a
    add d
    ld bc, $0081

jr_0b5_5dbb:
    add b
    ld bc, $0081
    add b
    ld bc, $8081
    nop
    nop
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
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld h, b
    ret nz

    jr nz, jr_0b5_5d99

    jr nz, jr_0b5_5dbb

    nop
    ldh [rP1], a
    ldh [rP1], a
    rra
    rra
    rlca
    rra
    inc de

jr_0b5_5de5:
    rra
    dec de
    dec d
    inc b
    rra
    inc bc
    inc e
    nop
    rra
    dec b
    ld a, [de]
    nop
    rra
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    ld [bc], a
    dec c
    nop
    rrca
    nop

jr_0b5_5e07:
    rrca
    nop

jr_0b5_5e09:
    rrca
    nop
    rst $38
    dec l
    rst $38
    nop
    rst $38
    ld [bc], a
    cp a
    nop
    cp a
    add b
    ccf
    add b
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    cp $01
    db $fc
    ld bc, $01fc
    db $fc
    ld bc, $00fc
    db $fd
    ld [bc], a
    ld sp, hl
    inc bc
    ld hl, sp+$03
    ld hl, sp+$01
    ld a, [$fa01]
    dec b
    ld a, [c]
    rlca
    ldh a, [rTAC]
    ldh a, [$03]
    db $f4
    dec bc
    db $e4
    dec bc
    db $e4
    rrca
    ldh [rIF], a
    ldh [rTMA], a
    jp hl


    rrca
    ldh [rNR21], a
    ret


    rra
    ret nz

    inc e
    jp nz, $c21c

    ld a, $80
    ld a, $80
    ld a, $80
    jr c, jr_0b5_5de5

    jr jr_0b5_5e07

    ld a, h
    ld bc, $017c
    ld a, b
    inc bc
    ld [hl], b
    dec bc
    ld [hl], b
    dec bc
    jr c, jr_0b5_5eb1

    ld hl, sp+$03
    ldh [rNR22], a
    ld h, b
    sub a
    ld h, b
    sub a
    ld [hl], b
    add a
    ret nz

    cpl
    ret z

    cpl
    ret z

    cpl
    ldh [rIF], a
    and b
    ld e, a
    and b
    ld e, a
    jr nz, jr_0b5_5e09

    ret c

    ret c

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
    ld a, a
    rst $38
    rst $38
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ld b, e
    ld b, e
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ldh [$e0], a
    ret nz

    ret nz

    ldh [$e0], a
    ret nz

    ret nz

    ldh [$e0], a
    ld h, b
    ld h, b
    ld b, b
    ld b, b
    ld b, b

jr_0b5_5eb1:
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    nop

jr_0b5_5eb7:
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
    ei
    rst $38

jr_0b5_5ec5:
    di
    rst $30
    ei
    rst $30
    ld sp, hl
    rst $30
    ld hl, sp-$09
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$19
    ldh a, [$63]
    call nc, $c661
    ld h, c
    add [hl]
    ld h, d
    sub l
    ld h, e

jr_0b5_5edd:
    sub h
    ld h, b
    sub e
    ld h, b
    sub e
    jr nz, jr_0b5_5eb7

    ld hl, $21f3
    db $d3
    jr nz, jr_0b5_5ec5

    ld [hl+], a
    db $d3
    ld [hl+], a
    rst $10
    ld [hl+], a
    rst $38
    inc h
    rst $18
    inc l
    rst $18
    cpl
    rst $18
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    ld bc, $1eff
    rst $38

Jump_0b5_5f00:
    inc b
    cp d
    db $10
    xor [hl]
    ld d, b
    ld l, $5a
    inc h
    jr jr_0b5_5f6f

    jr z, @+$57

    ld sp, $b44d
    ld c, c
    jr nc, jr_0b5_5edd

    ld [hl], b
    adc e
    ld h, b
    sbc e
    ld l, d
    sub e
    ld l, b
    sub e
    ldh [rNR22], a
    ldh [rNR22], a
    ldh a, [rTAC]
    ret nc

    daa
    ret nz

    cpl
    ret nz

    cpl
    ret nz

    cpl
    ldh [rIF], a
    and b
    ld c, a
    ret nz

    rra
    add b
    ld e, a
    ret nz

    rra
    ld b, b
    sbc a
    nop
    cp a
    nop
    cp a
    add b
    ccf
    add b
    ccf
    nop
    ld a, a
    ld bc, $817e
    ld a, [hl]
    add b
    ld a, [hl]
    nop
    cp $02
    db $fc
    ld [bc], a
    db $fc
    nop
    db $fc
    nop
    db $fc
    inc b
    ld hl, sp+$04
    ld hl, sp+$00
    ld hl, sp+$0e
    or $0b
    di
    inc bc
    di
    inc bc
    di
    ld de, $11e1
    pop hl
    ld [$18e8], sp
    ld hl, sp+$2c
    call z, $cc2c
    ld b, $c6
    ld b, d
    add d
    ld d, d
    sub d
    ld [hl-], a

jr_0b5_5f6f:
    or d
    ld [hl], d
    or $b1
    ld sp, $1999
    dec c
    rrca
    adc b
    adc d
    add sp, -$32
    ret z

    db $ec
    add $c6
    and $e6
    or $f6
    rst $20
    rst $20
    db $e3
    rst $20
    pop hl
    push hl
    pop hl
    rst $20
    push af
    di
    ld hl, sp-$02
    ld hl, sp-$06
    ld hl, sp-$06
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    db $fd
    db $fc
    db $fd
    cp $fe
    ld a, a
    ld a, a
    rra
    rra
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
    rst $38
    rst $38
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
    ld a, a
    add b
    ccf
    ret nz

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
    ld bc, $fffe
    ldh [rIE], a
    ld [c], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $28
    ld a, [hl]
    cp $7c
    cp $5c
    cp $3d

jr_0b5_5ff7:
    db $fc
    jr c, jr_0b5_5ff7

    sbc b

jr_0b5_5ffb:
    db $fd
    jr c, jr_0b5_5ffb

    ld [hl-], a
    ld sp, hl

Call_0b5_6000:
    jr nc, @-$03

    ld b, b
    ei
    ld bc, $05fa
    ld a, [c]
    ld b, b
    rst $30
    ld b, d
    push af
    ld c, c
    and $02
    db $ed
    dec b
    ld [$e906], a
    ld d, $c9
    ld [bc], a
    db $dd
    ld [$0dd7], sp
    jp nc, $922d

    db $10
    xor a
    ld e, b
    and a
    ld e, d
    and h
    add e
    ld a, l
    inc c
    inc c
    cp $fe
    cp $fe
    db $fc
    db $fc
    ld a, h
    ld a, h
    inc a
    ld a, $38
    jr c, jr_0b5_6070

    dec sp
    ei
    ei
    pop af
    push af
    ldh a, [$f6]
    ldh a, [rIE]
    ldh [$ef], a
    ld h, c
    ld h, d
    ld h, c
    ld h, [hl]
    ld a, [hl+]
    add hl, hl
    ld [$0c0b], sp
    dec c
    add [hl]
    add a
    add [hl]
    add [hl]
    add a
    add a
    ei
    ei
    ld bc, $7101
    ld [hl], l
    ld [hl], b
    ld [hl], b
    ld a, $3e
    ld [hl], $36
    inc e
    ld e, l
    jr @+$5b

    inc c
    db $ec
    inc c
    ld a, h
    add [hl]
    or $86
    cp $c3
    ei
    jp Jump_0b5_41ff


    ld e, l
    ld l, c
    ld [hl], a

jr_0b5_6070:
    ld h, h
    ld a, d
    inc [hl]
    cp d
    ld [hl-], a
    cp l
    ld [de], a
    ld d, l
    dec e
    ld a, d
    add hl, bc
    ld l, [hl]
    adc [hl]
    db $ed
    adc h
    cp a
    add l
    and h
    rst $00
    and $46
    ld b, a
    ld b, d
    jp nz, $ed61

    ld sp, $21bd
    dec l
    ret nc

    sbc $b0
    cp [hl]
    sub d
    call nc, $ce88
    ld [$086c], sp
    ld l, b
    ld [$0068], sp
    ld h, b
    nop
    jr nc, @-$0f

    ret nc

    rst $28
    rst $30
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    db $e3
    ld sp, hl
    rst $00
    pop bc
    rst $38
    pop bc
    ei
    pop hl
    ei
    ldh a, [$f9]
    ld hl, sp-$07
    ld hl, sp-$08
    ld hl, sp-$03
    ld hl, sp-$06
    db $fc
    db $fd
    db $fc
    cp $fc
    cp $fe
    cp $fe
    rst $38
    cp $3f
    rst $38
    ld a, $ff
    rrca
    rst $38
    rlca
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01fe
    cp $01
    rst $38
    nop
    rst $38
    nop
    dec bc
    db $f4
    nop
    rst $38
    ld bc, $07fe
    ld hl, sp+$7f
    add b
    rst $38
    ld bc, $bfff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    db $fd
    inc bc
    db $fd
    inc b
    ei
    ld b, $fb
    inc h
    db $db
    ld [$88f7], sp

Jump_0b5_60fd:
jr_0b5_60fd:
    ld [hl], a
    inc c
    rst $30
    ld d, h
    xor a
    db $10
    rst $28
    add hl, de
    rst $28
    or c
    ld c, a
    and c
    ld e, a
    and e
    ld e, a
    ld h, e
    sbc a
    ld b, e
    cp a
    cp b
    rlca
    sbc b
    daa
    ld l, b
    rla
    ld [hl], c
    ld c, $91
    ld l, [hl]
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
    rrca
    rrca
    rrca
    rrca

jr_0b5_612c:
    ld b, $06
    inc bc
    inc bc
    ld hl, $1f21
    rra
    sub a
    or a
    rst $00
    rst $10
    rst $00
    rst $18
    db $e3
    db $eb
    di
    di
    ei
    ld a, e
    jr c, jr_0b5_60fd

    inc e
    rst $18
    ld a, $df
    ld c, [hl]
    xor a
    ld b, [hl]
    or a
    add a
    ld [hl], a
    inc bc
    ei
    ld bc, $21fd
    ld e, a
    add b
    cp $86
    and [hl]
    rst $20
    rst $28
    ld h, c
    ld l, c
    ld [hl], h
    ld [hl], b
    ld [hl], d
    ld [hl], b
    add hl, sp
    ld a, [hl-]
    ld e, $9e
    ld e, $1e
    rrca
    ld c, a
    rrca
    ld c, a
    rlca
    daa
    add e
    di
    ld b, $3e
    add b
    or b
    add b
    sbc h
    ret nz

    ret c

    ret nz

    ret z

    ld h, b
    ld h, b
    ld h, b
    ld h, b
    jr nc, jr_0b5_612c

    or b
    ld [hl], b
    add b
    ld b, b
    ret nz

    jr nz, jr_0b5_61c3

    and b
    ret nz

    nop
    add [hl]
    ld b, a
    ld b, $87
    ld b, $07
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0101
    dec b
    nop
    inc c
    ld [hl], b
    ld a, [hl]
    ld l, b
    ld h, [hl]
    jr nz, jr_0b5_61cb

    jr nc, jr_0b5_61d5

    inc d
    inc de
    ld e, l
    cp b
    dec a
    sbc h
    xor l
    ld e, $1d
    ld c, $9e
    ld c, $87
    adc [hl]
    add [hl]
    adc a
    rst $38
    add a
    rst $28
    jp $c3e6


    ld h, h
    jp $e360


    push af
    ld h, e
    ldh a, [$67]
    jr c, jr_0b5_6235

    ld [hl], b
    ccf
    ccf
    ld h, b
    ccf

jr_0b5_61c3:
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ret nz

    ld a, a

jr_0b5_61cb:
    add b
    rst $38
    nop
    ccf
    ret nz

    rrca
    ldh a, [$3f]
    ret nz

    rst $38

jr_0b5_61d5:
    nop
    rst $38
    nop
    rst $38
    ld c, $ff
    rrca
    cp a
    ld b, d
    rst $38
    ld [bc], a
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
    dec a
    rst $38
    cp b
    rst $38
    jr c, @+$01

    ld a, b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ldh [rIE], a
    pop hl
    cp $e1
    cp $c0
    rst $38
    jp nz, $c0fd

    rst $38
    add l
    ei
    add l
    ei
    add b
    rst $38
    push af
    ld [bc], a
    rst $30
    nop
    ld a, a
    nop
    rst $28
    nop
    rst $28
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    add c
    ret nz

    ret nz

    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    ldh [$e0], a
    rst $08
    rst $08
    ld a, a
    ld a, a
    cp a
    cp a
    rst $18
    rst $18
    rst $08

jr_0b5_6235:
    rst $08
    and a
    and a
    sub e
    di
    and e
    db $d3
    inc b
    ld [hl], h
    db $10
    add sp, $32
    jp z, Jump_0b5_4cb2

    ld h, b
    sbc [hl]
    ld b, b
    cp [hl]
    ld b, b
    cp [hl]
    nop
    db $fc
    ld [$9c74], sp
    and b
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ld [hl], b
    rst $38
    ld h, b
    nop
    nop
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0808
    ldh [$ec], a
    ld [hl], h
    ld a, d
    ld [hl], d
    ld a, h
    ld a, [hl-]
    dec a
    add hl, de
    ld e, $1d
    ld e, [hl]
    ld c, a
    ld l, $6e
    sbc a
    rst $30
    rlca
    rst $30
    rrca
    di
    dec bc
    pop hl
    add hl, bc
    ld d, c
    adc l
    ld d, h
    adc d
    call nz, $9eba
    ldh [$de], a
    pop hl
    call c, Call_0b5_5ce3
    ld b, d
    ld l, h
    ld [hl], d
    ld h, b
    ld a, h
    jr nc, jr_0b5_62d9

    ld a, [hl+]
    db $fd
    ldh [$3f], a
    call nz, $803b
    ccf
    ret z

    ccf
    ret nz

    ccf
    sub b
    ld a, a
    nop
    rst $38
    rst $38
    nop
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
    nop
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
    rrca
    rst $38
    ld bc, $03ff
    rst $38

jr_0b5_62d9:
    and a
    rst $38
    rst $38

jr_0b5_62dc:
    rst $38
    rst $38
    rst $38
    dec de
    db $fd
    rst $38
    cp $ff
    rst $38
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$3f], a
    rst $18
    ld a, [bc]
    rst $38
    ld e, a
    cp [hl]
    ld a, l
    cp [hl]
    add hl, de
    cp $b2
    ld a, l
    cp d
    ld a, l
    ld h, [hl]
    ld sp, hl
    push af
    ld a, [$fad5]
    ld e, e
    db $f4
    dec bc
    db $f4
    dec bc
    db $f4
    sub a
    add sp, $56
    jp hl


    scf
    ret z

    jp nc, Jump_0b5_5000

    add b
    and b
    nop
    and l
    nop
    nop
    nop
    jr z, jr_0b5_62dc

    di
    ldh [$f8], a
    ldh a, [$80]
    add e
    add b
    add b
    nop
    nop
    ldh a, [$f0]
    nop
    nop
    db $fc
    db $fc
    sub d
    sub d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor a
    rst $38
    ldh [rIE], a
    cp a
    rst $38
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    ccf
    rra
    rra
    rrca
    adc a
    adc a
    rrca
    ld b, a
    add a
    add e
    add e
    pop bc
    pop bc
    ret nz

    jp nz, $c2c0

    ret nz

    ret nz

    add b
    add b
    rst $38
    pop bc
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
    ld bc, $ff03
    rlca
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
    cp $ff
    cp $00
    ld bc, $0201
    ld bc, $0302
    inc b
    inc bc
    inc b
    rlca
    ld [$100f], sp
    rra
    jr nz, jr_0b5_63f0

    ld b, b
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
    jr jr_0b5_63f3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0b5_6403

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0b5_6413

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f

jr_0b5_63f0:
    jr nc, jr_0b5_6423

    ld [hl-], a

jr_0b5_63f3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0b5_6433

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f

Call_0b5_6400:
    ld b, b
    ld b, c
    ld b, d

jr_0b5_6403:
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
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c

jr_0b5_6413:
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

jr_0b5_6423:
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

jr_0b5_6433:
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
    ld c, [hl]
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
    ld c, [hl]
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_0b5_652b

    ld c, [hl]
    ld c, [hl]
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0b5_6509

    ld [hl+], a
    ld d, [hl]
    inc hl
    inc h
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    add hl, de
    dec h
    ld h, $27
    jr z, jr_0b5_651e

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld d, [hl]
    ld l, $4e
    ld c, [hl]
    cpl
    jr nc, @+$33

    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    inc b
    inc b

jr_0b5_6509:
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    inc b
    ld bc, $0101
    ld bc, $0101
    nop
    inc b
    inc b
    inc b
    nop
    nop
    nop

jr_0b5_651e:
    nop
    nop
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc bc
    ld bc, $0000
    inc b
    inc b

jr_0b5_652b:
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    ld b, $06
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    inc b
    nop
    nop
    nop
    inc b
    ld bc, $0707
    rlca
    rlca
    rlca
    rlca
    ld b, $06
    inc bc
    nop
    ld [bc], a
    ld [bc], a
    inc b
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $06
    ld b, $04
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0301
    inc bc
    ld b, $06
    ld b, $06
    ld b, $04
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0301
    inc bc
    ld b, $03
    inc bc
    ld bc, $0406
    inc b
    nop
    inc b
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0301
    inc bc
    inc bc
    ld bc, $0103
    inc b
    ld [bc], a
    inc b
    inc b
    inc b
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    nop
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    nop
    dec b
    dec b
    ld [bc], a
    ld bc, $0101
    ld bc, $0401
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    nop
    ld bc, $0001
    nop
    ld bc, $0501
    dec b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    inc b
    inc b
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc bc
    inc bc
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
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
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
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0505
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    dec b
    dec b
    inc b
    inc b
    inc b
    inc b
    nop
    ld bc, $0909
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    dec c
    dec c
    inc c
    ld [$0800], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    nop
    nop
    nop
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    inc c
    inc c
    inc c
    ld [bc], a
    inc c
    inc c
    nop
    nop
    nop
    jr z, jr_0b5_663a

    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0c08], sp
    inc c
    ld [bc], a

jr_0b5_663a:
    inc c
    nop
    nop
    ld [$0808], sp
    rst $10
    ld bc, $01e3
    db $e4
    ld bc, $00e1
    pop hl
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld [hl], b
    nop
    ld a, b
    nop
    ld a, b
    nop
    jr nc, jr_0b5_665a

jr_0b5_665a:
    jr c, jr_0b5_665c

jr_0b5_665c:
    or b
    nop
    stop
    ld d, [hl]
    nop
    ld c, d
    nop
    ld a, [hl+]
    nop
    sub d
    nop
    sub d
    nop
    call $ff00
    nop
    di
    nop
    ld d, h
    nop
    ld d, h
    nop
    ld h, d
    nop
    db $e3
    nop
    xor c
    nop
    and c
    nop
    and c
    nop
    pop bc
    nop
    sub d
    nop
    db $db
    nop
    adc c
    nop
    call Call_0b5_6400
    nop
    call nz, $8200
    nop
    add b
    nop
    sub $00
    ld [hl+], a
    nop
    jp nz, $0600

    nop
    inc bc
    nop
    ld hl, $7000
    nop
    db $fc
    ret nz

    inc b
    ld sp, hl
    inc l
    pop af
    ld [$0cf1], sp
    pop af
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
    rrca
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    db $fd
    ei
    rst $38
    or $fb
    or $ed
    db $ec
    rst $38
    ret c

    rst $38
    sub b
    rst $38
    or b
    rst $38
    ld [hl], b
    ei
    ld b, b
    rst $38
    add b
    cp a
    add b
    sbc l
    add b
    sbc h
    nop
    sbc l
    nop
    rst $18
    nop
    adc l
    ld bc, $03cf
    ld c, e
    rlca
    ld h, a
    rlca
    daa
    rlca
    xor a
    ld c, $bf
    sbc a
    sbc a
    sbc l
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $f4
    db $f4
    db $e4
    db $e4
    xor $ee
    rst $08
    adc $dd
    call c, $9c9e
    cp d
    cp b
    ld a, h
    ld a, b
    ld a, l
    ld a, c
    pop af
    ld sp, hl
    ld a, e
    ld [hl], e
    daa
    and a
    scf
    rst $30
    ld d, a
    sub a
    ld c, a
    adc a
    rra
    rst $38
    ld l, $ce
    ld l, $de
    ld c, [hl]
    xor [hl]
    ld e, h
    cp h
    ld e, h
    sbc h
    inc a
    db $fc
    cp h
    dec a
    ld a, h
    db $fd
    ld a, b
    ld a, d
    ld [hl], b
    ld [hl], e
    ldh a, [$f2]
    ldh a, [$f4]
    ldh [$e6], a
    ldh a, [$fa]
    ldh [$ec], a
    ret nz

    call nz, $d1c1
    add a
    sub a
    add a
    add a
    add e
    add e
    adc e
    adc e
    add a
    rst $00
    rla
    ld d, a
    rrca
    adc a
    add b
    rst $38
    add b
    rst $38
    ret nz

    cp a
    ret nz

    rst $38
    ldh [$5f], a
    ldh a, [$6f]
    ld hl, sp+$67
    db $fd
    ld [hl], d
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    ld a, a
    ccf
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    rra
    ccf
    rra
    ccf
    rrca
    ccf
    rrca
    rra
    rrca
    rla
    rrca
    rra
    rlca
    rrca
    rlca
    rrca
    rlca
    dec bc
    rlca
    ld b, a
    inc bc
    ld b, e
    inc bc
    inc hl
    add e
    ld hl, $1383
    add c
    ld sp, $1181
    ld b, c
    jr jr_0b5_67c1

    ld e, a
    inc bc
    ld l, a
    inc bc
    ld a, a
    ld bc, $012b
    rla
    ld bc, $003f
    dec hl
    nop
    cpl
    nop
    rla
    nop
    ld e, e
    nop
    add hl, bc
    nop
    xor l
    nop
    add l
    nop
    add $00
    ld d, d
    nop
    ld d, e
    nop
    inc h
    nop
    inc [hl]
    nop
    stop
    ld a, [bc]
    nop
    ld e, $e0
    db $f4
    ldh a, [$f2]
    ldh a, [$f0]
    ldh a, [$97]
    sbc b
    inc hl
    inc l
    nop
    rrca
    scf
    scf
    scf
    scf
    ld [hl], a
    ld [hl], a
    ld [hl], e
    ld [hl], e
    ld a, e
    ld a, e
    ld a, a

jr_0b5_67c1:
    rst $38
    ld a, a
    ld a, a
    ld a, l
    ld a, a
    dec a
    ld a, a
    dec a
    ccf
    ccf
    cp a
    ld e, $ff
    ld a, $ff
    ld a, [hl-]
    rst $30
    ld [hl], a
    cp d
    ld a, a
    rst $20
    rst $28
    ld e, a
    rst $18
    rst $28
    rst $18
    xor a
    cp a
    rst $18
    cp a
    ld [hl], a
    ld a, a
    rst $30
    rst $38
    rst $30
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    adc a
    rst $28
    rrca
    rst $38
    rra
    rst $38
    ccf
    ld a, h
    ld a, h
    ld a, b
    ld a, c
    ld a, b
    ld a, c
    ld a, b
    ld a, e
    ld a, [c]
    pop af
    ldh a, [$f3]
    pop hl
    and $e0
    and $e4
    ld [c], a
    ret nz

    call z, $ccc0
    pop de
    call $9981
    add e
    sbc e
    inc bc
    dec hl
    inc bc
    inc sp
    rlca
    rla
    ld b, $46
    ld c, $2e
    ld c, $0f
    ld l, $af
    inc e
    dec e
    inc a
    ccf
    ld a, c
    ld a, [$383b]
    dec sp
    jr c, jr_0b5_6896

    db $76
    ld [hl], l
    ld [hl], d
    db $f4
    di
    and $e0
    and $e8
    db $e3
    db $ed
    pop hl
    rst $38
    ret


    push de
    rst $08
    db $d3
    set 6, a
    adc e
    or e
    and a
    rst $18
    and a
    rst $10
    or [hl]
    add $f1
    pop af
    pop af
    pop af
    pop af
    pop af
    ldh a, [$f0]
    pop af
    pop af
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp+$00
    ld hl, sp+$40
    ld hl, sp+$00
    ld sp, hl
    nop
    ld hl, sp+$00
    db $fc
    jr nz, @-$06

    nop
    db $fc
    nop
    ld hl, sp+$00
    db $fc
    nop
    db $fd
    ld bc, $08fc
    db $fc
    ld [$18fc], sp
    db $fc
    jr @-$02

    ld [$083c], sp
    cp h
    ld [$089c], sp
    call c, $dc08
    adc b
    call c, $8c88
    adc b
    call z, Call_000_00c4
    call nz, $8440
    ret nz

    ld b, $e0
    ld b, $e0
    ld [bc], a
    ldh a, [rSC]
    ldh a, [rSC]
    ldh a, [rP1]
    ccf
    db $fc
    rra
    db $fc
    rra
    db $fc

jr_0b5_6896:
    rrca
    db $fc
    rrca
    cp $0f
    cp $07
    cp $07
    cp $7f
    ld bc, $017f
    dec sp
    ld [bc], a
    dec de
    inc bc
    rra
    nop
    sub e
    nop
    adc d
    nop
    ld c, [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    dec b
    ld b, $ff
    db $fc
    ld sp, hl
    ld a, [$faf9]
    pop af
    ld a, [c]
    pop af
    ld a, [c]
    ldh [$e1], a
    db $e4
    push af
    adc $cf
    adc $ef
    adc [hl]
    xor a
    adc h
    call z, Call_0b5_7d3d
    dec sp
    cp e
    rst $38
    ei
    ld a, e
    rst $38
    ld a, e
    ei
    ld [hl], e
    ei
    pop af
    cp e
    and c
    di
    and c
    di
    jp $c3f1


    db $e3
    jp $e7e7


    and $e7
    xor $ee
    rst $30
    cp $ff
    cp $fd
    db $fc
    rst $38
    ldh a, [$f3]
    ld [hl], b
    ld [hl], e
    ld a, b
    ld a, a
    ld a, b
    ld a, d
    ld a, b
    ld a, d
    ld l, c
    ld l, c
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    db $dd
    db $dd
    sbc $de
    sbc $de
    cp [hl]
    cp [hl]
    cp a
    cp a
    cp a
    cp a
    db $fd
    cp l
    ld e, l
    dec e
    ld e, e
    dec sp
    ld e, a
    cp a
    ld a, e
    sbc e
    db $db
    dec sp
    pop de
    dec d
    pop af
    dec [hl]
    or c
    ld [hl], a
    or l
    dec sp
    ld h, c
    rst $28
    ld l, e
    rst $20
    ld l, e
    rst $20
    ld [$c2e6], a
    jp c, $dac2

    add $df
    add $ff
    add [hl]
    or a
    adc h
    cp l
    adc h
    cp l
    ld c, h
    ld c, l
    jr z, jr_0b5_69a5

    jr c, jr_0b5_69b6

    jr c, jr_0b5_6978

    jr @+$1d

    nop

jr_0b5_6941:
    rst $38
    ld b, b
    cp a
    ld d, b
    cp a
    ret nc

    ccf
    ret nz

    ccf
    ret c

    ccf
    ret c

    ccf
    ret c

    ccf
    inc l
    rst $18
    and h
    ld e, a
    daa
    rst $18
    dec h
    rst $18
    dec [hl]

jr_0b5_6959:
    rst $18
    ld l, $df
    inc hl
    rst $18
    ld h, e
    sbc a
    jr nz, jr_0b5_6941

    and c
    ld e, a
    and c
    ld e, a
    and c
    ld e, a
    ld hl, $20df
    rst $18
    and b
    ld e, a
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    rst $28
    rra
    ld a, a
    rra

jr_0b5_6978:
    ld a, a
    rra
    ld a, a
    rra
    jr nz, jr_0b5_699d

    db $10
    rrca
    jr c, jr_0b5_6991

    ld a, b
    rrca
    ld a, $0f
    add hl, de

jr_0b5_6987:
    rrca
    dec c
    rrca
    sub l
    rrca
    sbc l
    rlca
    add l
    rlca
    ld b, b

jr_0b5_6991:
    add a
    rlca
    rst $00
    rlca
    rst $00
    ldh [rSCX], a
    pop hl
    ld b, e
    add c
    ld h, e
    ld [de], a

jr_0b5_699d:
    ld h, c
    ld b, c
    ld sp, $3170
    ld e, c
    jr nc, @-$26

jr_0b5_69a5:
    jr nc, jr_0b5_6987

    jr jr_0b5_6991

    jr @-$12

    jr jr_0b5_6959

    jr jr_0b5_69db

    sbc h
    ld e, $8c
    sub [hl]
    inc c
    cp $04

jr_0b5_69b6:
    ld a, [hl]
    add [hl]
    ld d, [hl]
    adc [hl]
    ld e, e
    add [hl]
    ld e, a
    add [hl]
    res 0, [hl]
    res 0, [hl]
    res 0, [hl]
    add a
    rst $00
    add a
    rst $00
    rst $00
    jp $c345


    rst $20
    jp $e3c3


    jp $f9e1


    db $e3
    db $e3
    pop af
    ld [c], a
    pop af
    ld a, [$f3f1]

jr_0b5_69db:
    ld hl, sp-$0a
    ld sp, hl
    ld [$1cfd], a
    ld h, e
    ld e, a
    ld h, b
    rst $08
    ldh a, [$ef]
    ldh a, [rBCPS]
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld d, b
    ld d, b
    rst $38
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc l
    rst $38
    sbc l
    rst $38

Call_0b5_6a00:
    ld b, h
    inc h
    ld b, h
    add h
    ld b, [hl]
    add [hl]
    adc [hl]
    ld c, [hl]
    ld c, $8e
    ld b, $96
    ld [de], a
    ld a, [bc]
    jr jr_0b5_6a10

jr_0b5_6a10:
    sbc b
    add b
    sub b
    xor b
    sub b
    and b
    or b
    add b
    ret nc

    ldh [$c0], a
    ldh a, [$c0]
    ret nc

    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld [hl], b
    ld [hl], b
    ldh a, [$f0]
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ldh a, [$78]
    ld hl, sp+$10
    sub b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $ec
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ld de, $80ff
    rst $38

jr_0b5_6a4a:
    nop
    rst $38
    adc b
    rst $38
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
    rla
    rst $38
    rst $38
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
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    ldh a, [$72]
    pop af
    ld [hl], e
    ldh a, [$7b]
    ld hl, sp+$7f
    cp b
    ld a, a
    cp b
    cp a
    ld a, b
    rst $38
    jr c, jr_0b5_6a4a

    ld a, b
    sbc l
    ld a, [hl]
    ld e, [hl]
    cp l
    ld a, a
    rst $38
    rst $38
    rst $38
    cp h
    rst $18
    cp l
    ld e, [hl]
    sbc l
    ld a, [hl]
    xor h
    ld e, a
    ld c, l
    cp [hl]
    ld c, h
    cp a
    ld c, a
    cp [hl]
    ld c, a
    cp [hl]
    cpl
    sbc $2f
    rst $18
    rst $38
    ld a, a
    nop
    ld a, a
    ld c, a
    ld a, a
    ccf
    ccf
    ld a, a
    ccf
    ccf
    ccf
    ccf
    rra
    rra
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
    rlca
    rlca
    inc bc
    rlca
    inc bc
    add e
    ld bc, $0182
    add b
    ld bc, $0081
    add c
    nop
    add c
    add b
    add b
    add b
    ret nz

    add b
    ret nz

    add b
    ldh [$c0], a
    jp $e7c0


    jp $c7ef


    nop
    ld hl, sp-$40
    ccf
    ld hl, sp+$06
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    di
    rst $38
    ret nz

    rst $38
    sub e
    db $ec
    ld c, $f1
    ld e, b
    and a
    ld a, c
    add [hl]
    scf
    ret z

    ld a, e
    add h
    ld b, l
    cp d
    and l
    ld e, d
    ld b, c
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
    nop
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add a
    ld a, h
    rst $20
    inc e
    ld h, a
    sbc h
    ld h, a
    sbc h
    ld h, a
    sbc h
    ld h, a
    sbc h
    ld [hl], $cc
    ld [hl], $cc
    inc h
    call c, $dc34
    inc [hl]
    call c, Call_000_1cf4
    sub [hl]
    cp $f6
    cp $ee
    ld e, $36
    sbc $1e
    cp $1e
    cp $1e
    cp $0e
    cp $0e
    cp $0e
    cp $0e
    cp $0f
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor a
    ld d, a
    xor a
    ld d, a
    ld d, a
    xor a
    cp a
    ld b, a
    rst $10
    cpl
    ld a, a
    add e
    xor e
    ld d, a
    ld a, a
    add e
    xor e
    ld d, a
    ld a, a
    add e
    sub a
    ld l, e
    rst $38
    rst $38
    rst $38
    rst $38
    xor e
    ld d, l
    ld d, l
    xor e
    ld d, l
    xor e
    adc e
    ld [hl], l
    ld d, c
    xor a
    ld c, e
    or l
    dec h
    db $db
    sub e
    ld l, l
    swap l
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    xor a
    rst $38
    dec sp
    rst $38
    xor a
    ld a, a
    cp a

jr_0b5_6bc1:
    ld a, a
    cp a
    ld a, a
    xor a
    ld a, a
    or l
    ld a, a
    push de
    ld a, a
    add d
    ld a, a
    xor b
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    rst $28
    cp $4d
    cp [hl]
    ccf
    rst $38
    ld bc, $e6ff
    rra
    inc bc
    rst $38
    ld d, b
    xor a
    nop
    rst $38
    jr nc, jr_0b5_6bc1

    sbc h
    ld h, e
    ld a, [$f8fd]
    rst $38
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
    cp $ff
    cp $ff
    cp $ff
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
    cp a
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    ccf
    nop
    cp a
    nop
    sbc a
    nop
    sbc a
    nop
    sbc a
    nop
    rst $18
    nop
    sbc a
    nop
    ld e, a
    nop
    ld e, a
    nop
    ld e, a
    nop
    rrca
    nop
    ld c, a
    nop
    nop
    ld e, a
    ld bc, $01ee
    ld l, [hl]
    ld bc, $016e
    xor $01
    ld a, $01
    xor a
    nop
    cpl
    inc bc
    daa
    ld bc, $0127
    inc hl
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    add c
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ret nz

    ldh [$c0], a
    ld hl, sp-$40
    db $fc
    ret nz

    rst $18
    ret nz

    rst $08
    ret nz

    rst $08
    ret nz

    rst $00
    ret nz

    jp $c3c0


    ret nz

    pop bc
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]

jr_0b5_6ca8:
    ldh a, [$f0]

jr_0b5_6caa:
    ldh a, [$f0]
    ldh [$fc], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
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
    rst $20
    jr jr_0b5_6caa

    jr jr_0b5_6ca8

    inc e
    pop af
    ld c, $f1
    ld c, $f0
    ld c, $f0
    ld c, $f0
    ld c, $ff
    rlca
    cp $07
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rlca
    rst $38
    rlca
    ei
    ld a, a
    add e
    ccf
    jp $c33f


    rrca
    di
    rrca
    di
    rlca
    ei
    rlca
    ei
    inc bc
    db $fc
    dec a
    rst $38
    dec sp
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rla
    rst $38
    rrca
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
    nop
    rst $38
    nop
    rst $38
    add b
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$08
    ldh a, [$08]
    ldh a, [rNR10]
    add sp, $00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$04
    ld hl, sp-$01
    jr @-$13

    inc e
    rst $08
    inc e
    rst $18
    inc c
    push de
    ld c, $df
    ld b, $df
    ld b, $df
    ld b, $df
    ld b, $df
    ld [bc], a
    rst $18
    inc bc
    rst $18
    inc bc
    rst $08
    inc bc
    rst $08
    ld bc, $01ca
    ret z

    ld bc, $f00f
    rst $38
    nop
    ldh a, [rIF]
    add b
    ld a, a
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
    jp $ff3c


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
    rst $38
    nop
    cp $7e
    rst $00
    ld b, a
    add l
    dec b
    xor [hl]
    ld l, $f8
    ld a, b
    and b
    jr nz, @+$01

    nop
    rst $38
    rst $38
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
    cp a
    nop
    cp a
    rst $38
    nop
    add b
    ld [hl], b
    add b
    ld h, b
    add b
    ld a, [hl]
    add b
    ld e, $80

jr_0b5_6d9b:
    dec hl
    add b
    ld c, h
    rst $38
    nop
    ld e, b
    nop
    ld e, b
    nop
    ld a, b
    nop
    ret c

    nop
    ld hl, sp+$00
    ld hl, sp+$00
    db $fd
    nop
    rst $38
    rra
    nop
    rst $38
    jr jr_0b5_6d9b

    ld b, h
    add e
    jp nz, $e601

    ld bc, $837c
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
    ld a, l
    nop
    nop
    ld bc, $5e0c
    inc c
    sbc l
    nop
    ld [hl-], a
    nop
    rst $38
    rla
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, b
    ld b, b
    ld hl, $8021
    add b
    ld b, b
    ld b, b
    ld [hl], b
    ld [hl], b
    inc b
    inc b
    nop
    nop
    ld bc, $ff01
    rst $38
    rst $38
    rst $38

jr_0b5_6df4:
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
    rst $38
    ld e, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    rrca
    ldh a, [$03]
    db $fc
    dec b
    ld a, [$ec10]
    jr jr_0b5_6df4

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
    ret nz

    nop
    cp c
    nop
    ccf
    nop
    jr c, jr_0b5_6e28

jr_0b5_6e28:
    db $fc
    nop
    ld sp, hl
    nop
    cp $00
    rst $38

jr_0b5_6e2f:
    nop
    ld [hl], l

jr_0b5_6e31:
    ld a, [bc]
    ld a, l
    ld [bc], a
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
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ldh [$1f], a
    ldh [$1f], a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    jr nc, @-$2f

    jr nc, jr_0b5_6e2f

    jr nc, jr_0b5_6e31

    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIE]
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
    db $e4
    db $e3
    inc b
    add e
    inc h
    inc hl
    ld b, h
    ld e, e
    inc b
    add e
    inc d
    inc de
    db $fc
    inc bc
    ld b, $f8
    cp $00
    rst $38
    nop
    cp $00
    cp $00
    ld [hl], $00
    ld a, $00
    ld l, $00
    ldh a, [rIF]
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    ldh a, [rIF]
    call z, $cf00
    nop
    ld e, a
    nop
    ld d, [hl]
    nop
    ld d, [hl]
    nop
    ld d, e
    nop
    di
    rrca
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ret nz

    rlca
    ret nz

    rlca
    ldh [rTAC], a
    ldh a, [rTAC]
    ld hl, sp+$07
    ei
    rst $00
    ei
    rst $00
    pop hl
    dec de
    add l
    rst $38
    nop
    dec a
    jr nc, jr_0b5_6f16

    ldh [$0b], a
    ld b, e
    rla
    rra
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
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
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
    ld a, $ff
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    ret nz

    ccf
    ldh [$1f], a
    db $10
    rst $28
    ld d, b
    rrca
    db $fc
    nop
    ldh a, [rP1]
    cp $00

jr_0b5_6f16:
    ret nz

    nop
    add h
    nop
    add b
    nop
    db $f4
    nop
    ret


    nop
    ld c, $00
    ld a, [$c700]
    nop
    xor a
    nop
    db $fd
    nop
    db $d3
    nop
    pop af
    nop
    db $f4
    nop
    ld a, l
    nop
    ld a, l
    nop
    ld a, l
    nop
    ld a, l
    nop
    ld a, l
    nop
    ld a, l
    nop
    ld a, l
    nop
    ld a, l
    nop
    ld a, l
    nop
    ld a, l
    nop
    ld a, l
    nop
    ld a, l
    nop
    ld a, l
    nop
    ld a, l
    ld bc, $0177
    ld [hl], a
    ld bc, $007d
    ld [hl], l
    nop
    ld [hl], l
    nop
    dec h
    nop
    dec h
    nop
    dec h
    nop
    dec h
    nop
    dec h
    nop
    rst $38
    rst $38
    add b
    add b
    sub c
    sub c
    sub b
    sub b
    add [hl]
    add [hl]
    and b
    and b
    or b
    or b
    rst $38
    rst $38
    cp l
    nop
    cp c
    nop
    cp c
    nop
    cp c
    nop
    or l
    nop
    and l
    nop
    add l
    nop
    dec h
    nop
    and l
    nop
    xor l
    nop
    and l
    nop
    and l
    nop
    and l
    nop
    and b
    nop
    and h
    nop
    and b
    nop
    and b
    nop
    and h
    nop
    and l
    nop
    and l
    nop
    and l
    nop
    add l
    nop
    or l
    nop
    cp l
    nop
    cp e
    ld b, h
    cp d
    ld b, l
    cp d
    ld b, l
    sbc d
    ld h, l
    add c
    ld a, [hl]
    nop
    rst $38
    nop
    nop
    nop
    nop
    ld sp, hl
    add $c7
    rst $38
    cp $fe
    db $fc
    db $fc
    ld sp, hl
    ld sp, hl
    or $f6
    add b
    add b
    nop
    nop
    nop
    add b
    ld b, b
    ldh [rP1], a
    ldh a, [$08]
    db $fc
    ld a, [bc]
    sbc $1f
    rst $38
    cpl
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
    rst $38
    nop
    rst $38
    nop
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
    jr nz, @-$1f

    ld l, b
    sub a
    ld a, b
    add a
    ccf
    ret nz

    rlca
    ld hl, sp+$03
    db $fc
    ld [bc], a
    db $fd
    ld b, $f9
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
    db $fc
    nop
    add b
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
    ld de, $9600
    nop
    ldh [rP1], a
    jr nz, jr_0b5_7024

jr_0b5_7024:
    nop
    nop
    nop
    nop
    ld a, [bc]
    nop
    and b
    nop
    jr nz, jr_0b5_702e

jr_0b5_702e:
    ld c, $00
    ld h, a
    sbc b
    rst $10
    jr z, @-$6f

    ld [hl], b
    rst $28
    db $10
    and a
    ld e, b
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    nop
    nop
    ld [$0000], sp
    nop
    jr nz, jr_0b5_7048

jr_0b5_7048:
    jr nz, @+$22

    ld h, b
    ld h, b
    ldh [$e0], a
    add b
    ldh [$80], a
    ldh [$f0], a
    ldh a, [$f0]
    ldh a, [$d0]
    ldh a, [$c0]
    ldh a, [rP1]
    ldh [rP1], a
    nop
    nop
    nop
    rst $38
    rst $38
    ld bc, $0101
    ld bc, $5d5d
    ld bc, $9101
    sub c
    ld de, $ff11
    rst $38
    ld sp, hl
    ld bc, $01fb
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    ld a, [$fa00]
    nop
    ld a, [$fa00]
    nop
    ld a, [$fa00]
    nop
    ld a, d
    nop
    ld a, d
    nop
    ld h, d
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld a, b
    nop
    ldh a, [rP1]
    ld [hl], b
    nop
    ret nc

    nop
    or b
    nop
    ld [hl], b
    nop
    ld hl, sp+$00
    ld a, [c]
    nop
    ldh a, [rP1]
    push af
    nop
    db $fd
    ld [bc], a
    nop
    rst $38
    rst $18
    rst $18
    sbc a
    sbc a
    ccf
    rra
    dec a
    ccf
    ld a, l
    ld a, a
    db $fc
    rst $38
    db $fd
    cp $fe
    rst $38
    ccf
    ccf
    rra
    rra
    nop
    rlca
    nop
    rlca
    nop
    rra
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    rlca
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
    jr @+$01

    ld bc, $06fe
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$03
    db $fc
    add h
    ld a, e
    ret z

    scf
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    nop
    nop
    nop
    or l
    nop
    rra
    nop
    dec h
    nop
    ld bc, $0b00
    nop
    cp a
    nop
    ld sp, hl
    nop
    add b
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    dec c
    nop
    inc c
    nop
    inc b
    nop
    stop
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    db $fd
    ld [bc], a
    ld a, [$e805]
    rlca
    db $ec
    inc bc
    db $ec
    inc bc
    db $ec
    inc bc
    xor $01
    db $ed
    inc bc
    db $ed
    inc bc
    xor $01
    db $ed
    inc bc
    db $ed
    inc bc
    jp hl


    rlca
    db $ed
    inc bc
    db $fd
    inc bc
    cp $00
    cp $00
    cp $00
    cp $00
    adc [hl]
    ld d, b
    inc b
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc c
    ld e, $00
    ld a, $00
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    ld e, l
    inc bc
    ld e, l
    inc bc
    ld e, a
    inc bc
    ld e, a
    inc bc
    ld e, a
    inc bc
    ld e, a
    inc bc
    ld e, a
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
    inc bc
    rra
    inc bc
    cp e
    rlca
    rra
    inc bc
    dec sp
    rlca
    rlca
    inc bc
    rlca
    rlca
    rra
    rrca
    rlca
    rra
    rla
    ccf
    inc sp
    ccf
    add hl, sp
    ccf
    jr c, @+$41

    cp b
    rst $38
    jr @+$01

    inc c
    rst $38
    ld b, [hl]
    rst $38
    cp $07
    rst $18
    rlca
    rrca
    rst $38
    adc a
    rst $38
    ld b, a
    cp a
    daa

jr_0b5_71c3:
    rst $18
    daa
    db $db
    rla
    db $eb
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    ret


    or $ef
    ldh [rIE], a

jr_0b5_71df:
    di
    cpl
    rst $30
    rlca
    rst $30
    ld a, $c1
    ccf
    add b
    ld a, $01
    ld a, a
    nop
    ld a, [hl]
    ld bc, $0778
    ld a, a
    rlca
    ld l, a
    rra
    dec h
    rra
    inc h
    sbc a
    dec c
    rst $38
    ccf
    rst $38
    rrca
    rst $28
    jr jr_0b5_71df

    db $10
    rst $18
    jr nc, jr_0b5_71c3

    inc hl
    cp a
    ld a, h
    ld a, h
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    cp $00
    xor a
    nop
    db $eb
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc bc
    nop
    jr nz, jr_0b5_7220

jr_0b5_7220:
    ld hl, $0600
    nop
    nop
    nop
    add c
    nop
    ret


    nop
    ld b, c
    nop
    ld bc, $8300
    nop
    nop
    nop
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
    nop
    jr jr_0b5_723f

jr_0b5_723f:
    stop
    stop
    add hl, de
    nop
    stop
    jr jr_0b5_7249

jr_0b5_7249:
    ld de, $1400
    nop
    ld [de], a
    nop
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    dec [hl]
    nop
    jr nc, jr_0b5_725d

jr_0b5_725d:
    dec [hl]
    nop
    inc [hl]
    nop
    ld a, [hl+]
    nop
    dec [hl]
    nop
    ld a, [hl-]
    nop
    jr nc, jr_0b5_7269

jr_0b5_7269:
    nop
    nop
    nop
    nop
    scf
    nop
    ld a, $00
    ld [hl], $00
    scf
    nop
    ccf
    nop
    halt
    ld [hl], $00
    ccf
    nop
    nop
    ld bc, $fc01
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
    add b
    add b
    ret nz

    ret nz

    ld h, b
    ld h, b
    rst $38
    ld c, a
    rst $38
    cpl
    rst $38
    daa
    rst $38
    daa
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    xor a
    rst $38
    rst $28
    cp $ff
    ldh a, [rIE]
    ldh a, [rIE]
    db $fc
    di
    ld a, [c]
    db $fd
    di
    rst $38
    ld hl, sp-$01
    cp b
    rst $38
    ld e, b
    rst $38
    ld e, b
    rst $38
    jr c, @+$01

    jr c, @+$01

    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    cp $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    rrca
    rst $30
    ld a, [hl]
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rra
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
    nop
    nop
    nop
    nop
    ei
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
    cpl
    db $10
    ld e, d
    dec b
    ld h, a
    nop
    ld [hl], a
    nop
    rst $08
    nop
    rst $28
    nop
    rst $38
    nop
    cp $00
    ld a, $00
    rla
    rla
    rrca
    rrca
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $06
    nop
    nop
    rrca
    rrca
    rlca
    rst $00
    rlca
    rlca
    rlca
    ld b, a
    rlca
    add a
    ld b, $06
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    nop
    inc bc
    add e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$04
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$f0], a
    ret nz

    ldh [$e0], a
    ldh [$c0], a
    ldh [$c0], a
    ret nz

    ret nz

    ret nz

    add b
    pop hl
    add c
    add $81
    jp nz, $d381

    add c
    add c
    add c
    add c
    ld bc, $0101
    ld bc, $0301
    ld bc, $4101
    jp $e161


    ld [hl], l
    push af
    sub l
    ret nc

    add b
    add b
    rra
    sbc a
    ccf
    rst $38
    rra
    rst $38
    dec de
    rst $38
    ld bc, $21f3

jr_0b5_73bf:
    db $e3
    add sp, -$20
    add sp, -$1c
    ret z

    call nz, $c2dc
    inc e
    ret nz

    dec e
    pop bc
    db $fd
    pop bc
    db $fd
    pop bc
    cp c
    push bc
    cp c
    add l
    ld a, e
    add e
    ld a, e
    inc bc
    ld [hl], e
    adc e
    di
    adc e
    di
    adc e
    rst $30
    add a
    nop
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    db $10
    rst $38
    jr nc, @+$01

    ld hl, sp-$01
    ldh a, [rIE]
    cp $c1
    jp nz, $c2e7

    db $e3
    ret nz

    jp $e140


    ld h, b
    pop hl
    ld h, b
    ld [hl], b
    ld [hl], b
    ld [hl], e
    ld [hl], b
    ld [hl], c
    jr c, jr_0b5_743c

    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$07
    adc h
    ld [hl], e
    ld h, b
    sbc a
    ret nz

    ccf
    or b
    ld c, a
    db $f4
    dec bc
    ldh [$1f], a
    db $fc
    inc bc
    add b
    inc a
    add b
    inc e
    add b
    inc e
    add b
    add hl, de
    add b
    add hl, de
    add b
    dec e
    add b
    ld e, c
    add b
    ld e, c
    add b
    ld e, c
    add b
    ld d, l
    add b
    ld b, l
    add c
    ld b, b
    add c
    ld b, b
    add c
    ld h, b

jr_0b5_743c:
    add c
    jr nz, jr_0b5_73bf

    add hl, hl
    pop bc
    pop de
    ret nz

    pop de
    ret nz

    pop de
    ret nz

    pop bc
    ret nz

    pop de
    ret nz

    pop de
    ret nz

    ld d, l
    ret nz

    pop de
    ret nz

    pop de
    ret nz

    pop de
    ret nz

    pop de
    pop bc
    ret nc

    pop bc
    ldh a, [$c1]
    ret z

    add c
    or b
    ld bc, $03e0
    jr nc, @+$05

    jr nz, @+$03

    ld e, $11
    ld e, $11
    ld e, $11
    ld e, $13
    inc l
    inc de
    inc h
    inc hl
    inc h
    inc hl
    inc h
    inc hl
    ld h, h
    daa
    ld h, b
    daa
    ld h, b
    ld h, a
    nop
    ld h, e
    ld b, h
    ld b, e
    db $e4
    ld b, e
    db $e4
    ld b, a
    add sp, $47
    add sp, -$39
    ld l, b
    rst $00
    ld c, b
    rst $00
    sbc b
    rst $00
    sbc b
    rst $00
    ret z

    rst $00
    xor b
    add a
    ret nz

    add a
    ret z

    adc a
    ret nz

    adc a
    ret nz

    adc a
    ret nz

    adc a
    ret nc

    adc a
    nop
    add a
    ld [$1887], sp
    add a
    jr jr_0b5_74ae

    cp b
    rrca
    or b
    adc a
    ld [hl], b
    adc a
    ld [hl], b

jr_0b5_74ae:
    adc a
    ld [hl], b
    cp a
    ld b, b
    cp a
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $18
    ldh [rIE], a
    ldh [$f7], a
    add sp, -$05
    db $f4
    ld sp, hl
    cp $fd
    ld a, [hl]
    cp $7f
    rst $38
    cp $ff
    rst $28
    cp a
    ld c, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $30
    adc c
    ld a, a
    ret nz

    ld a, l
    sbc d
    cp [hl]
    ld b, c
    ld b, l
    ei
    dec de
    rst $20
    ld a, a
    and a
    ld a, a
    add a
    ld [de], a
    db $ed
    inc b
    ei
    dec bc
    db $fc
    rst $38
    inc e
    cp a
    db $e3
    ld a, a
    ei
    ld a, a
    cp a
    rst $38
    ld a, d
    ld a, a
    add b
    rst $18
    and b
    db $eb
    rra
    db $fd
    inc bc
    jp $ff3c


    nop
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
    rst $28
    rra
    rst $38
    rrca
    rst $38
    rrca
    dec c
    inc bc
    rlca
    ld bc, $010f
    inc de
    ld bc, $0003
    dec bc
    nop

jr_0b5_751c:
    inc hl
    nop
    ld d, $00
    inc bc
    cp $2a
    cp $1d
    cp $5d
    cp $7e
    db $fc
    ld a, a
    db $fc
    db $fd
    db $fc
    db $db
    db $fc
    ld a, [hl-]
    db $fc
    db $fd
    ld hl, sp-$03
    ld hl, sp-$01
    ld hl, sp-$02
    ld hl, sp-$2e
    ld hl, sp-$6a
    ld hl, sp-$64
    ldh a, [$9c]
    ldh a, [$8c]
    ldh a, [$8c]
    ldh a, [$8c]
    ldh a, [$8e]
    ret nc

    adc d
    or b
    ld [bc], a
    or b
    adc h
    ldh a, [$88]
    or b
    ld [$30b0], sp
    ldh [$30], a
    ldh [$30], a
    ret nz

    jr nz, jr_0b5_751c

    nop
    ret nz

    nop
    ret nz

    xor $c0
    db $eb
    ret nz

    push af
    ret nz

    push af
    add b
    push de
    add b
    db $dd
    add b
    push bc
    add b
    rst $18
    nop
    db $e3
    add b
    db $eb
    ret nz

    ei
    ld b, b
    db $eb
    ret nz

    ei
    ret nz

    rst $20
    ret nz

    rst $10
    add b
    rst $10
    ld b, b
    ld d, a
    nop
    rst $10
    add b
    rst $30
    add b
    adc a
    add b
    ld c, a
    nop
    cpl
    nop
    xor a
    nop
    xor a
    nop
    rst $18
    ret nz

    sbc a
    add b
    sbc $c0
    sbc $40
    sbc $40
    sbc $00
    cp [hl]
    nop
    cp h
    nop
    db $fd
    ld b, b
    cp l
    and b
    cp l
    add b
    db $fc
    add b
    ld sp, hl
    ret nz

    ld a, [$7ac0]
    ld b, b
    ld a, d
    nop
    ld sp, hl
    nop
    push af
    nop
    db $f4
    add b
    push af
    add b
    push af
    add b
    push af
    ret nz

    ei
    ret nz

    xor $c0
    nop
    add b
    nop
    ret nz

    nop
    ret nc

    nop
    ldh [rP1], a
    ldh a, [$80]
    add sp, -$40
    ldh a, [$f0]
    db $ec
    ldh a, [$fc]
    ld a, [$f9fc]
    cp $fc
    rst $38
    cp $ff
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp $ff
    cp $ff
    cp $af
    cp [hl]
    rst $20
    ld a, l
    rst $18
    db $fd
    xor a
    db $dd
    ld a, a
    db $fd
    xor a
    ei
    dec l
    db $eb
    push af
    cp e
    ld b, a
    db $eb
    rra
    rst $30
    ld a, a
    rst $30
    ei
    rst $30
    rst $18
    rst $30
    ld c, a
    rrca
    rst $30
    rrca
    rst $38
    ld c, a
    or a
    rra
    rst $38
    cp a
    ld l, a
    cp a
    ld c, a
    db $eb
    ld d, l
    cp l
    ld b, d
    rst $10
    cpl
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
    ld a, a
    rst $38
    rst $38
    ccf
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    cp [hl]
    nop
    cp [hl]
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    ld a, l
    nop
    ld a, l
    nop
    ld a, l
    nop
    rst $38
    nop
    ei
    nop
    ei
    nop
    ld a, [$fb00]
    nop
    ei
    nop
    or $00
    push af
    nop
    db $f4
    nop
    push af
    nop
    db $f4
    nop
    jp hl


    nop
    jp hl


    nop
    jp hl


    nop
    jp hl


    nop
    ld [$d600], a
    nop
    jp nc, $d200

    nop
    jp c, $d500

    nop
    add l
    nop
    or l
    nop
    and l
    nop
    xor c
    nop
    xor e
    nop
    dec bc
    nop
    ld c, e
    nop
    ld l, e
    nop
    ld d, e
    nop
    rla
    ld bc, $0117
    sub a
    ld bc, $0187
    xor a
    ld bc, $01af
    cpl
    ld bc, $012f
    ld c, a
    inc bc
    rra
    inc bc
    ld e, a
    inc bc
    ld e, a
    inc bc
    rst $18
    rlca
    cp a
    rlca
    cp a
    rlca
    ld bc, $0107
    rlca
    ld bc, $030f
    rrca
    inc bc
    rrca
    rlca
    rrca
    rlca
    rra
    rlca
    rra
    rlca
    rra
    rlca
    rra
    rrca
    ccf
    rrca
    ccf
    rrca
    ccf
    rra
    ccf
    rra
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    ccf
    ld a, a
    ccf
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
    rst $38
    ret nz

    ret nz

    add b
    add b
    add b
    add b
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
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    ccf
    ret nz

    cp a
    ld b, b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    rst $38
    nop
    cp $00
    cp $00
    cp a
    nop
    cp a
    nop
    rst $38
    nop
    db $fd
    nop
    db $fd
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, e
    nop
    ei
    nop
    ei
    nop
    rst $38
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $38
    nop
    rst $18
    nop
    ld e, a
    nop
    ld e, a
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
    cp l
    inc bc
    ld a, a
    rra
    ld e, a
    ccf
    ld a, a
    rra
    ld e, a
    rra
    rst $08
    rra
    adc a
    rrca
    adc e
    rlca
    db $e3
    inc bc
    pop af
    inc bc
    rst $38
    ccf
    ccf
    rst $38
    rrca
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
    ld e, b
    rst $38
    jr nc, @+$01

    ld h, b
    rst $38
    ld h, c
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    ld [c], a
    rst $38
    jp nz, $c2ff

    rst $38
    jp nz, $c2ff

    rst $38
    call nz, $84ff
    rst $38
    add h
    rst $38
    adc h
    rst $38
    adc b
    rst $38
    ld [$18ff], sp
    rst $38
    db $10
    rst $38
    ld [de], a
    rst $38
    ld a, [hl-]
    rst $38
    db $76
    rst $38
    daa
    rst $38
    ld a, $ff
    ld l, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld e, [hl]
    rst $38
    rst $38
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
    add b
    add b
    ld a, [c]
    dec c
    rst $38
    nop
    ei
    inc b
    ld e, [hl]
    ld hl, $00ff
    rst $30
    ld [$08f7], sp
    rst $38
    nop
    ei
    inc b
    cp $00
    cp $00
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
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $38
    nop
    rst $28
    nop
    rst $28
    nop
    xor $00
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    or a
    nop
    cp a
    nop
    cp e
    nop
    sbc a

jr_0b5_7827:
    jr nz, jr_0b5_7827

jr_0b5_7829:
    jr nz, jr_0b5_7829

    ldh [$de], a
    ldh [$f4], a
    ld hl, sp+$08
    ld hl, sp+$38
    ld hl, sp+$70
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$f0], a
    ldh [rIE], a
    rst $38
    rst $38
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
    add b
    rst $38
    ldh [rIE], a
    sbc b
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    cp [hl]
    rst $38
    ld e, a
    rst $38
    cp a
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
    ld a, a
    add b
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
    ld a, a
    nop
    cp $00
    cp $00
    cp $00
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
    ei
    nop
    ei
    nop
    rst $38
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    cp $01
    xor $01
    xor $01
    xor $01
    db $dd
    inc bc
    db $dd
    inc bc
    db $dd
    inc bc
    reti


    rlca
    cp a
    inc bc
    cp e
    rlca
    cp e
    rlca
    or [hl]
    rrca
    db $76
    rrca
    ld [hl], l
    ld c, $73
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    push af
    ld a, [bc]
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, l
    ld c, l
    inc sp
    inc sp
    add [hl]
    add [hl]
    db $10
    stop
    nop
    ld a, [hl+]
    ld a, [hl+]
    ret nz

    ret nz

    or c
    or c
    ld a, a
    rst $38
    rra
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
    ret nz

    rst $38
    jr nz, @+$01

    jr @+$01

    ld b, $ff
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add a
    rst $38
    xor a
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    nop
    nop
    jr nz, @+$22

    nop
    nop
    ld bc, $0005
    inc c
    ld [bc], a
    ld a, [bc]
    nop
    jr jr_0b5_7941

    ld [de], a
    inc b

jr_0b5_7941:
    dec b
    inc b
    dec b
    inc b
    rlca
    ld [$080a], sp
    ld [$1010], sp
    db $10
    db $10
    db $10
    db $10
    jr nz, jr_0b5_7972

    ld hl, $4121
    ld b, c
    ld b, d
    ld b, d
    add d
    add d
    add d
    add d
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0302
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

jr_0b5_7972:
    nop
    nop
    nop
    nop
    inc b
    dec b
    ld b, $02
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
    rlca
    ld [bc], a
    ld [$0202], sp
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
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
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
    dec c
    ld c, $0f
    db $10
    ld de, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_0b5_79bf

    ld [bc], a
    ld [bc], a

jr_0b5_79bf:
    ld [bc], a
    nop
    nop
    nop
    nop
    add hl, de
    ld a, [de]
    dec de
    dec d
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0b5_79d0

    ld [bc], a
    ld [bc], a

jr_0b5_79d0:
    nop
    nop
    nop
    ld hl, $2322
    inc h
    dec h
    ld h, $27
    jr z, jr_0b5_7a05

    ld a, [hl+]
    dec hl
    ld [bc], a
    ld [bc], a
    nop
    nop
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0b5_7a19

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    dec hl
    ld [bc], a
    nop
    jr c, jr_0b5_7a2c

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
    ld c, e

jr_0b5_7a05:
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
    dec d
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]

jr_0b5_7a19:
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
    dec d
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b

jr_0b5_7a2c:
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    dec d
    ld [hl], l
    db $76
    dec d
    dec d
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
    dec d
    add d
    ld d, a
    add e
    dec d
    dec d
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
    dec d
    dec d
    ld h, [hl]
    adc [hl]
    adc a
    dec d
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
    dec d
    dec d
    dec d
    sbc d
    sbc e
    sbc h
    dec d
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    and h
    and l
    dec d
    dec d
    dec d
    and [hl]
    and a
    xor b
    dec d
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    dec d
    dec d
    dec d
    dec d
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
    dec d
    dec d
    dec d
    dec d
    dec d
    sbc d
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
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
    nop
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
    nop
    nop
    nop
    ld bc, $0101
    nop
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
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    inc bc
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
    rlca
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    inc b
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    dec b
    inc b
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
    nop
    inc b
    inc b
    inc b
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
    nop
    nop
    inc b
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
    nop
    ld b, $02
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
    nop
    ld [bc], a
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
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld hl, sp+$00
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
    add b
    rst $38
    ld h, b
    rst $38
    jr @+$01

    ld b, $ff
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    nop
    ret nz

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
    ld h, b
    rst $38
    jr @+$01

    ld c, $ff
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
    rst $38
    add b
    rst $38
    ldh [rIE], a
    jr c, @+$01

    ld c, $ff
    inc bc
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
    add b
    nop
    cp $00
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
    db $fc
    nop
    ld sp, hl
    ld bc, $01f1
    db $e3
    inc bc
    rst $00
    rlca
    adc a
    rrca
    rra
    rra
    cp a
    cp a
    ld a, a
    ld a, a
    cp a
    ccf
    sbc $1f
    rst $28
    rrca
    rst $30
    rlca
    ei
    inc bc
    db $fd
    ld bc, $00fe
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
    ld bc, $0300
    nop
    rlca
    nop
    rrca
    pop af
    rra
    db $e3
    rst $00
    rlca
    adc a
    rrca
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
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
    ret nz

    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    rst $30
    rst $38
    ld a, c
    ld a, a
    cp h
    ccf
    call z, $e60f
    rlca
    di
    inc bc
    ld sp, hl
    ld bc, $00fc
    cp $00
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
    ld bc, $0300
    nop
    rlca
    ld bc, $030f
    rra
    rlca
    ccf
    rrca
    ld a, a
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

Call_0b5_7d3d:
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
    ld hl, sp-$40
    ldh a, [$f0]
    ldh a, [$60]
    ldh [$30], a
    ldh a, [rNR23]
    ld hl, sp-$74
    db $fc
    add $fe
    ld h, e
    ld a, a
    ld sp, $983f
    rra
    call z, $e70f
    rlca
    di
    inc bc
    ld sp, hl
    ld bc, $00fc
    cp $00
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
    ld bc, $0300
    nop
    rlca
    ld bc, $030f
    rra
    rlca
    ccf
    rrca
    ld a, a
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
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
    db $fc
    inc bc
    nop
    cp $00
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rSB], a
    pop bc
    inc bc
    add e
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
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    rra
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
    ldh [rNR23], a
    ld hl, sp-$74
    db $fc
    add $fe
    db $e3
    rst $38
    ld [hl], c
    ld a, a
    jr c, jr_0b5_7e1b

    sbc h
    rra
    adc $0f
    rst $20
    rlca
    di
    inc bc
    ld hl, sp+$00
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
    nop
    ld bc, $0100
    nop
    inc bc
    ld bc, $0307
    rrca
    inc bc
    rra
    rlca
    ccf
    rrca
    ld a, a
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    cp $ff
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_0b5_7e1b:
    nop
    rst $38
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
    ldh [$1f], a
    add b
    ld a, a
    nop
    cp $00
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rSB]
    pop hl
    inc bc
    jp $8303


    ld b, $06
    rst $38
    ld c, $ff
    ld e, $fe
    inc a
    cp $7c
    cp $fc
    db $fc
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04

jr_0b5_7e65:
    ld hl, sp-$04
    ld hl, sp-$02
    db $fc
    cp $fc
    cp $7c
    rst $38
    ld a, $1e
    ld e, $0e
    ld c, $07
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
    ld h, e
    ld a, a
    ld sp, $983f
    rra
    call z, $e70f
    rlca
    di
    inc bc
    ld sp, hl
    ld bc, $00fc
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
    nop
    ld bc, $0300
    nop
    rlca
    ld bc, $030f
    rra
    rlca
    ccf
    rrca
    ld a, a
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld [bc], a
    ld hl, sp+$04
    ldh [rNR23], a
    ret nz

    jr c, jr_0b5_7e65

    ld [hl], b
    ld bc, $02e1
    jp nz, $8202

    inc b
    inc b
    ld [$f908], sp
    db $10
    db $fd
    jr nz, @+$01

    ld b, b
    rst $18
    add b
    add $80
    adc a
    nop
    sbc l
    nop
    ccf
    nop
    rrca
    nop
    dec a
    nop
    dec e
    nop
    ld [de], a
    nop
    ld [de], a
    nop
    inc h
    nop
    inc h
    nop
    inc h
    nop
    inc h
    nop
    ld h, h
    nop
    ld l, a
    nop
    rst $38
    nop
    ld h, $00
    inc h
    nop
    dec h
    nop
    ld a, $00
    ccf
    nop
    ccf
    nop
    rra
    nop
    dec b
    nop
    ld a, [de]
    nop
    nop
    nop
    ld [$1f00], sp
    nop
    rra
    nop
    inc de
    nop
    add c
    nop
    jp $c780


    add b
    rst $20
    ret nz

    or $60
    ld hl, sp+$30
    db $fc

jr_0b5_7f41:
    jr jr_0b5_7f41

    inc c
    rst $38
    ld b, $ff
    ld bc, $80ff
    rst $38
    ret nz

    ld a, a
    ldh [$1f], a
    ld hl, sp-$74
    db $fc
    add $fe
    db $e3
    rst $38
    ld [hl], c
    ld a, a
    jr c, jr_0b5_7f99

    sbc h
    rra
    adc $0f
    rst $20
    rlca
    ld bc, $0100
    nop
    inc bc
    ld bc, $0307
    rrca
    rlca
    rra
    rrca
    ccf
    rra
    ld a, a
    ccf
    ld a, a
    ld a, a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_0b5_7f99:
    nop
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    pop hl
    ld bc, $03c3
    add a
    rlca
    rrca
    rrca
    inc e
    inc e
    jr nc, jr_0b5_7fe0

    ldh a, [rNR41]
    ldh [rLCDC], a
    ret nz

    add b
    sbc c
    nop
    rra
    nop
    ld a, [de]
    nop
    or e
    nop
    db $e3
    nop
    xor $00
    cp $00
    ld c, [hl]
    nop
    db $fc
    nop
    ld a, b
    nop
    ld h, h
    nop
    jp nz, $8100

    nop
    add b
    nop
    add b
    nop
    add b
    nop
    ld hl, sp+$00
    rrca
    nop
    ld bc, $8100
    nop
    add a
    nop

jr_0b5_7fe0:
    ld [$3f00], sp
    nop
    ld b, b
    nop
    ret nz

    nop
    add b
    nop
    inc bc
    nop
    inc c
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    add b
    nop
    ld bc, $b900
    nop
    cp $00
    ld l, h
    nop
    ld h, h
    nop
