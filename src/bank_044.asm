SECTION "ROM Bank $044", ROMX[$4000], BANK[$44]

    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38
    nop
    cp $00
    cp $00
    cp $00
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
    cp $00
    db $fc
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
    rst $38
    nop
    rst $38
    nop
    ld e, a
    and b
    cpl
    ret nc

    dec b
    ld a, [$ff00]
    nop
    nop
    nop
    nop
    nop
    nop
    ret z

    ldh a, [$f7]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ld a, l
    add e
    rst $28
    ld de, $01fe
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    rst $38
    nop
    ld [hl], l
    add b
    ld a, c
    add b
    ld [hl], l
    add b
    ld l, b
    add b
    ld [hl], h
    add b
    ld l, b
    add b
    ld [hl], c
    add b
    ld h, c
    add b
    ld b, c
    add b
    ld bc, $0580
    add b
    dec hl
    add b
    ld d, h
    add c
    xor a
    add b
    or $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    nop
    ld bc, $0150
    adc d
    ld bc, $0114
    xor d
    ld bc, $0055
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor d
    rst $38
    ld c, a
    ldh a, [$0c]
    db $e3
    ld e, b
    rlca
    cp $00
    ld e, $e0
    and b
    nop
    nop
    nop
    ld a, [hl+]
    nop
    ld d, l
    nop
    jr z, jr_044_40ba

jr_044_40ba:
    ld b, b
    nop
    and b
    nop
    ld d, b
    nop
    add d
    ld bc, $01d6
    cp $01
    rst $38
    nop
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
    inc bc
    db $fc
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
    rst $38
    nop
    ld a, h
    add e
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    db $e3
    inc e
    inc bc
    db $fc
    ld bc, $01fe
    cp $00

Call_044_40ff:
    rst $38
    ldh a, [rP1]
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
    inc bc
    nop
    rlca
    nop
    adc a
    nop
    rst $38
    nop
    rst $18
    nop
    sbc a
    nop
    sbc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    xor d
    ld d, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, b
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $eb
    rst $18
    rst $30
    ret nz

    ld [$c5c0], a
    ret nz

    jp nz, $d5c0

    ret nz

    add b
    ret nz

    ld bc, $ffc0
    ret nz

    cp a
    ret nz

    rst $38
    add b
    rra
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    dec hl
    ret nz

    rla
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    rst $38
    ret nz

    ld a, a
    ret nz

    rst $38
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    add c
    ret nz

    jp nz, $d5c0

    ret nz

    db $eb
    ret nz

    push de
    ret nz

    db $eb
    ret nz

    rst $10
    ret nz

    rst $28
    ret nz

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
    cp d
    rst $38
    ld b, b
    ccf
    ld a, [de]
    ldh [$74], a
    add e
    ld [bc], a
    ld bc, $005f
    rst $28
    nop
    ld b, b
    nop
    and b
    nop
    ld d, b
    nop
    ld [bc], a
    nop
    ld bc, $0200
    nop
    ld [hl], b
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    ldh [$7f], a
    add b
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [$08]
    rst $30
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
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
    ld bc, $1ffe
    ldh [rIE], a
    nop
    rst $38
    nop
    ei
    nop
    db $fd
    nop
    ei
    nop

Jump_044_41fe:
    rst $38
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
    dec bc
    nop
    ld [bc], a
    nop
    rlca
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    inc bc
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
    ld a, a
    nop
    cp $01
    push af
    ld a, [bc]
    xor d
    ld d, l
    ld a, l
    add d
    cp $01
    db $fd
    ld [bc], a
    ld a, [$f505]
    ld a, [bc]
    ld [$d515], a
    ld a, [hl+]
    xor d
    ld d, l
    nop
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
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    ld a, a
    ldh [$1f], a
    db $fc
    inc bc
    ld sp, hl
    ld b, $f8
    rlca
    db $fc
    inc bc
    ld a, [hl]
    ld bc, $bf40
    add b
    ld a, a
    ld e, a
    xor a
    add b
    ld a, a
    ld d, a
    xor b
    and [hl]
    ld e, c
    ld c, a
    cp b
    xor d
    ld e, l
    or [hl]
    ld [$005f], sp
    jr nz, @+$21

    inc bc
    rra
    rra
    nop
    rla
    nop
    rrca
    nop
    rla
    nop
    call nc, $e82b
    rla
    ret nc

    cpl
    and b
    ld e, a
    ld d, b
    xor a
    and b
    ld e, a
    ld b, b

jr_044_428d:
    cp a
    ld bc, $f4ff
    dec bc
    db $fd
    ld [bc], a
    ldh a, [rIF]
    add sp, $17
    adc a
    ld a, a
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
    ld a, h
    add e
    push bc
    ccf
    pop hl
    ld e, $01
    db $fc
    ld a, [$0100]
    nop
    adc h
    inc bc
    jr jr_044_42bb

    rrca
    nop
    ld e, a
    nop
    cp h
    inc bc
    ld h, b

jr_044_42bb:
    rra
    ld a, h
    add e
    jr nc, @-$2f

    rra
    ldh [rP1], a
    rst $38
    jr c, jr_044_428d

    db $fc
    inc bc
    cp $01
    rst $38
    nop
    ld hl, sp+$07
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add a
    ld a, b
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld bc, $1ffe
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $28
    nop
    rst $30
    nop
    cp d
    nop
    ld d, l
    nop
    xor [hl]
    nop
    db $fd
    nop
    ld bc, $4300
    nop
    ld l, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    rst $08
    nop
    ret nc

    nop
    cp c
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
    rst $30
    ld [$15ea], sp
    call nc, $a82b
    ld d, a
    ld b, b
    cp a
    add b
    ld a, a
    nop
    rst $38
    add b
    ld a, a
    ld b, b
    cp a
    add b
    ld a, a
    ld b, b
    cp a
    xor b
    ld d, a
    ld d, b
    xor a
    add b
    ld a, a
    nop
    nop
    nop
    nop
    dec bc
    nop
    ld d, e
    nop
    ld e, c
    nop
    db $fd
    nop
    rst $38
    ret nz

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
    sbc a
    ld a, a
    adc a
    ld a, a
    ccf
    rst $38
    rrca
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    adc h
    ld [hl], a
    ld c, h
    rst $30
    xor h
    rst $10
    adc h
    ld [hl], a
    inc b
    ld a, a
    db $e4
    rra
    dec h
    ld e, a
    add l
    ld a, a
    sbc l

jr_044_4377:
    rst $38
    add hl, bc
    rst $38
    add c
    ld a, a
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    jp $c73f


    ccf
    rst $20
    rra
    rst $20
    rra
    add a
    ld a, a
    rra
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rst $38

jr_044_4399:
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
    add h
    ei
    jr nc, jr_044_4377

    ld a, [c]
    rrca
    ldh [$1f], a
    ld a, [hl+]
    rst $38
    ld b, a
    jr c, @+$11

    ldh a, [rSC]
    db $fd
    xor e

jr_044_43b5:
    nop
    ld d, a
    nop
    jr nz, jr_044_4399

    dec d
    rst $38
    ld [bc], a
    rst $38
    ld bc, $02ff
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    ld a, [hl+]
    rst $38
    nop
    rst $38
    jr jr_044_43b5

    nop
    rst $38
    ld a, [hl+]
    db $fd
    ld bc, $2afe
    rst $38
    nop
    rst $38
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
    cp b
    rlca
    ret nz

    ccf
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    add sp, $07
    db $fc
    inc bc
    ld a, [$5601]
    ld bc, $00ab
    push de
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [$fd05]
    ld [bc], a
    ld [$d015], a
    cpl
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
    ld a, [hl]
    nop
    ld hl, sp+$00
    ret nz

    nop
    jr nz, jr_044_4444

jr_044_4444:
    ldh [rP1], a
    ldh a, [rP1]
    db $f4
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    pop bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $fd
    db $fd
    cp $7d
    cp $ff
    db $fc
    rst $38
    db $fc
    ld a, a
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
    db $fd
    cp $ff
    db $fc
    db $fd
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    db $fc
    rst $38
    cp $ff
    cp $ff
    db $fd
    rst $38
    db $fd
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld de, $a8ff
    rst $38
    ld b, b
    rst $38
    xor b
    rst $30
    db $fd
    inc bc
    ld h, b
    sbc a
    push hl
    rra
    ld a, [c]
    rrca
    dec d
    rst $38
    ld a, [hl+]
    rst $38
    sub b
    ld a, a
    xor b
    rst $38
    ld d, h
    rst $38
    xor d
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    and b
    rst $38
    ld d, c
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
    sbc a
    pop hl
    rra
    ld a, [bc]
    rst $38
    dec d
    rst $38
    jp z, $e53f

    rra
    ld a, [c]
    rrca
    db $fd
    inc bc
    cp $01
    rst $38
    nop
    ldh a, [rIF]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add e
    ld a, h
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
    db $fd
    ld [bc], a
    ld [$d515], a
    ld a, [hl+]
    xor d
    ld d, l
    push de
    ld a, [hl+]
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    ld [bc], a
    db $fd
    dec b
    ld a, [$ff00]
    nop
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
    ld a, h
    nop
    ld [hl], b
    nop
    ldh [rP1], a
    add b
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
    stop
    ld c, c
    nop
    inc sp
    nop
    sbc a
    inc bc
    rst $38
    rrca
    rst $38
    ld a, a
    db $fc
    rst $38
    ld a, [c]
    db $fc
    sub b
    ldh [rBCPS], a
    add b
    ld [hl], b
    add b
    and b
    nop
    ret nz

    nop
    and b
    nop
    add b
    nop
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    ld l, [hl]
    sbc a
    ldh a, [rNR10]
    ld [hl], a
    sub b
    push af
    db $10
    ld [hl], c
    sub b

jr_044_4572:
    db $e4
    db $10
    ld h, l
    sub b
    pop hl
    db $10
    ld h, b
    sub b
    db $e4
    db $10
    ld h, c
    sub b
    xor b
    ld d, b
    ld l, b
    sub b
    jr z, @-$2e

    ld c, l
    or b
    inc l
    ret nc

    inc c
    ld hl, sp+$3e
    ret c

    sbc a
    ld hl, sp-$01
    db $fd
    jr @-$02

    jr c, jr_044_4572

    jr @+$01

    ld a, h
    rst $38
    db $fc
    rst $38
    cp $ff
    ld e, a
    cp a
    cp a
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld d, l
    rst $38
    and b
    rst $38
    ld d, b
    rst $38
    add b
    rst $38
    ld d, c
    rst $38
    ld [$38f7], sp
    rst $00
    add d
    rst $38
    rlca
    rst $38
    nop
    rst $38
    dec b
    rst $38
    cpl
    rst $38
    rra
    rst $38
    inc bc
    rst $38
    ld bc, $0bff
    rst $38
    ld d, a
    rst $38
    xor a
    rst $38
    ld d, l
    rst $38
    ld a, [hl+]
    rst $38
    dec b
    rst $38
    ld [$54ff], sp
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    and c
    cp $3f
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$03
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
    rlca
    ld hl, sp+$6a
    add b
    ld d, l
    nop
    call c, $eb22
    inc d
    ld a, l
    ld [bc], a
    cp $01
    db $fd
    ld [bc], a
    xor e
    ld d, h
    ld d, a
    xor b
    cp a
    ld b, b
    ld e, a
    and b
    xor a
    ld d, b
    ld d, a
    xor b
    xor [hl]
    ld d, c
    ld a, l
    add d
    xor d
    ld d, l
    ld d, h
    xor e
    and b
    ld e, a
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    rra
    rst $38
    inc a
    rst $38
    ldh a, [rIE]
    add b
    rst $38
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    inc sp
    nop
    add a
    nop
    ld a, a
    nop
    rra
    inc bc
    db $fc
    rra
    ldh a, [$7f]
    ret nz

    rst $38
    call nz, Call_044_40ff
    rst $38
    nop
    rst $38
    ld e, a
    xor [hl]
    cp a
    ld b, h
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    cp l
    ld d, b
    dec de
    sub b
    dec e
    db $10
    db $db
    db $10
    dec e
    db $10
    ld c, e
    db $10
    dec c
    db $10
    dec bc
    db $10
    ld e, l
    db $10
    ld c, e
    db $10
    rrca
    db $10
    rrca
    db $10
    ld c, a
    db $10
    ld c, a
    db $10
    rrca
    db $10
    rrca
    db $10
    ld e, a
    db $10
    rra
    db $10
    rra
    db $10
    ld e, a
    db $10
    sbc [hl]
    ld de, $101a
    rra
    ld d, b
    ld e, $10
    rra
    sub b
    rra
    ret nc

    rla
    ld hl, sp+$19
    cp $9f
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
    ld a, a
    rst $38
    ld a, $ff
    ld a, l
    rst $38
    rst $38
    rst $38
    ld d, h
    rst $38
    ld a, [$ffff]
    rst $38
    ld [$40ff], a
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    ld [$00ff], a
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    add sp, -$01
    ld [hl], h
    rst $38
    and b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    add b
    rst $38

jr_044_46d6:
    ld c, [hl]
    pop af
    and a
    ld hl, sp+$50
    rst $38
    and b
    rst $38
    rra
    ldh [$3f], a
    ret nz

    dec e
    ldh [$0c], a
    di
    inc d
    db $e3
    ld [$5501], a
    nop
    xor d
    nop
    ld d, l
    nop
    db $fd
    ld [bc], a
    cp [hl]
    ld b, b
    db $fd
    ld [bc], a
    rst $38
    nop
    db $fc
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_044_4702:
    cp $01
    ld d, b
    xor a

jr_044_4706:
    xor d
    ld d, l
    ld d, l
    xor d

jr_044_470a:
    xor d
    ld d, l
    dec d
    ld [$d12e], a
    ld d, l
    xor d
    ld [bc], a
    db $fd
    nop
    rst $38
    add b
    rst $38
    ld bc, $00fe
    rst $38
    ld bc, $00fe
    rst $38
    jr nz, jr_044_4722

jr_044_4722:
    ld [$4200], sp
    nop
    ld hl, $0900
    nop
    ld h, $01
    ccf
    rlca

jr_044_472e:
    db $fc
    ccf
    pop hl
    cp $81
    rst $38
    inc bc
    db $fc
    ld [$50f0], sp
    and b
    ld [hl], b
    nop
    ld h, b
    nop
    ld [hl], b
    nop
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    rst $18
    jr nz, jr_044_46d6

    ld [hl], b
    rst $18
    jr nz, jr_044_470a

    ld b, b
    sbc $20
    db $fd
    nop
    sbc $20
    ld a, l
    nop
    sbc $20
    ld a, l
    nop
    rst $38
    nop
    db $fd
    nop
    rst $18
    jr nz, @+$01

    nop

jr_044_4760:
    rst $18
    jr nz, jr_044_4760

    nop
    sbc $20
    db $fd
    nop
    sbc $20
    db $fd
    nop
    rst $18
    jr nz, jr_044_472e

    ld b, b
    rst $18
    jr nz, jr_044_4702

    ld [hl], b
    rst $18
    jr nz, jr_044_4706

    ld [hl], b
    sbc a
    ld h, b
    adc a
    ld [hl], b
    sbc a
    ld h, b
    adc a
    ld [hl], b
    ld [hl], d
    nop
    ld d, h
    jr nz, jr_044_479f

    ld h, b
    dec d
    ld h, b
    jp c, $ad20

    ld [hl], b
    xor [hl]
    ld [hl], b
    rst $28
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
    cp a
    rst $38
    ld d, a

jr_044_479f:
    rst $38
    xor a
    rst $38
    ld d, a
    rst $38
    ld a, [bc]
    rst $38
    ld d, a
    rst $38
    cpl
    rst $38
    ld bc, $00ff
    rst $38
    rla
    rst $38
    cpl
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld d, a
    rst $38
    dec hl
    rst $38
    dec b
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
    add d
    ld a, a
    ld d, l
    rst $38
    xor d
    rst $38
    sub l
    ld a, a
    jp z, $f53f

    rrca
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $f4
    inc bc
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
    ret nz

    ccf
    ld h, b
    rra
    db $10
    ld [bc], a
    adc a
    nop
    ld c, $00
    add e
    nop
    ld c, a
    nop
    ld e, a
    nop
    rst $38
    nop
    cp $01
    push af
    ld a, [bc]
    cp a
    ld b, b
    ld e, a
    and b
    cp [hl]
    ld b, c
    ld a, l
    add d
    ld [$5515], a
    xor e
    and b
    ld e, a
    ld bc, $02fe
    db $fd
    dec d
    ld [$d728], a
    inc d
    db $eb
    ld h, $dd
    ld d, h
    xor a
    and b
    ld e, a
    nop
    nop
    nop
    nop
    add a
    ld bc, $0f36
    call c, $e03f
    rst $38
    ld bc, $06ff
    rst $38
    jr nc, @-$06

    and b
    ret nz

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
    cp $00
    rst $38
    nop
    ld [$d500], a
    nop
    ld [$5500], a
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld [hl], l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld e, l
    nop
    cp d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    push de
    nop
    xor d
    nop
    push af
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
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    cp $01
    rst $38
    nop
    xor e
    ld d, h
    ld d, l
    xor d
    dec hl
    call nc, Call_000_00ea
    rst $18
    ldh [$fe], a
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld [$f5ff], a
    rst $38
    cp $ff
    push af
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    cp $ff
    rst $38
    rst $38
    ld [$40ff], a
    rst $38
    ldh [rIE], a
    db $fc
    rst $38
    xor e
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, h
    rst $38
    jr nz, @+$01

    ld d, b
    rst $38
    xor b
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    adc b
    ld a, a
    db $e3
    inc e
    add e
    ld a, h
    dec d
    cp $2a
    rst $38
    dec b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_044_48ef:
    rst $38
    ld bc, $0f00
    nop
    ccf
    nop
    cp $01
    push af
    ld a, [bc]
    xor $11
    ld e, l
    and d
    xor e
    ld d, h
    push de
    ld a, [hl+]
    cp e
    ld b, h
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, c
    xor [hl]
    xor d
    push de
    inc d
    db $eb
    ld a, [hl+]
    push de
    ld e, l
    and d
    xor d
    ld d, l
    ld d, l
    xor d
    jr z, jr_044_48ef

    add b
    rst $38
    and b
    ld a, a
    ld bc, $07ff
    rst $38
    adc $3f
    jr c, @+$01

    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    ld hl, sp-$20
    ret nz

    nop
    nop
    ld a, [$ff00]
    nop
    ld [$d700], a
    nop
    rst $38
    nop
    db $fd
    nop
    ld [$5400], a
    nop
    xor d
    nop
    ld d, l
    nop
    xor b
    nop
    ld d, b
    nop
    xor b
    nop
    ld d, b
    nop
    and b
    nop
    ld d, h
    nop
    xor d
    nop
    ld d, h
    nop
    xor b
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, h
    nop
    xor d
    nop
    ld d, b
    nop
    and b
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, h
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    push af
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    and b
    nop
    ld d, h
    nop
    add sp, $00
    db $fd
    ldh a, [rIE]
    rst $38
    rst $00
    rst $38
    rst $38
    rst $38
    xor $fd
    rst $38
    rst $38
    rst $38
    rst $38
    xor a
    rst $38
    ld d, l
    rst $38
    xor a
    rst $38
    ld e, a
    rst $38
    dec bc
    rst $38
    ld bc, $02ff
    rst $38
    rst $10
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld d, c
    rst $38
    and d
    rst $38
    nop
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
    xor d
    rst $38
    ld d, l
    rst $38
    xor b
    rst $38
    ld c, a
    ldh a, [$7f]
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rra
    ldh [$27], a
    ld hl, sp+$41
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    push af
    ld a, [bc]
    xor d
    ld d, l
    push de
    ld a, [hl+]
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld [hl], l
    adc d
    xor d
    ld d, l
    ld d, l
    xor d
    xor [hl]
    ld d, c
    ld d, l
    xor d
    ld [$5e15], a
    and c
    adc [hl]
    ld [hl], c
    ld [hl], e
    sbc h
    ld [hl-], a
    db $dd
    inc b
    nop
    nop
    nop
    ld [$0100], sp
    nop
    dec c
    inc bc
    ld h, $1f
    or b
    ld a, a
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    cp $ef
    ldh a, [$7f]
    add b
    rst $18
    nop
    rst $38
    nop
    rst $18
    nop
    ld [$5500], a
    nop
    xor d
    nop
    call c, $a800
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
    ld b, b
    nop
    add b
    nop
    ld b, b
    nop
    and b
    nop
    ld d, h
    nop
    xor a
    nop
    ld e, a
    nop
    xor a
    inc bc
    ld d, a
    inc bc
    xor a
    ld [bc], a
    ld d, a
    ld [bc], a
    xor a
    ld [bc], a
    rst $10
    ld [bc], a
    rst $28
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
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld h, d
    add d
    or $fa
    cp $fe
    ld a, [hl]
    cp $ee
    ld [bc], a
    or $fa
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    xor e
    cp $ff
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rrca
    rst $38
    dec b
    rst $38
    ld c, $ff
    ld a, l
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rrca
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0aff
    rst $38
    ld d, l
    rst $38
    ld a, [bc]
    rst $38
    add l
    ld a, a
    ret nz

    ccf
    and b
    ld e, a
    ld hl, sp+$07
    cp $01
    db $fd
    ld [bc], a
    rst $38
    nop
    cp $01
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    rrca
    ldh a, [rTAC]
    ld hl, sp+$57
    xor b
    xor d
    ld d, l
    ld d, l
    xor d
    xor b
    ld d, a
    ld d, c
    xor [hl]
    xor [hl]
    ld d, c
    dec e
    ld [c], a
    ld [$d115], a
    ld l, $98
    ld h, a
    reti


    ld h, $aa
    ld d, l
    inc [hl]
    res 2, b
    ld l, a
    ld b, b
    cp a
    nop
    rst $38
    ld [bc], a
    ld bc, $0708
    ld h, h
    rra
    ld [hl], b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], $f8
    or l
    ret nz

    ld [$d000], a
    nop
    add b
    nop
    stop
    adc b
    nop
    nop
    nop
    and b
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
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    rst $28
    db $10
    rst $08
    db $10
    adc [hl]
    db $10
    adc a
    db $10
    ld c, a
    db $10
    sub d
    dec e
    rra
    rra
    sbc a
    rra
    rra
    rra
    rra
    rra
    sbc a
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rst $38
    rst $38
    ld [$f0ff], a
    rst $38
    and b
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nc

    rst $38
    cp d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp [hl]
    rst $38
    db $10
    rst $38
    jr c, @+$01

    ld d, l
    rst $38
    xor [hl]
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    dec d
    rst $38
    ld c, d
    cp a
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld hl, sp+$07
    pop af
    rrca
    jp z, Jump_000_153f

    rst $38
    ld d, c
    xor [hl]
    adc [hl]
    ld [hl], c
    inc e
    db $e3
    xor $11
    ld b, l
    cp d
    jp hl


    ld d, $5d
    and d
    jp z, Jump_000_0035

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
    ld bc, $0f10
    ld b, b
    ccf
    nop
    rst $38
    add b
    rst $38
    ld b, $f8
    dec e
    ldh [$6e], a
    add c
    db $fc
    ld bc, $814a
    inc d
    ld bc, $0bb4
    ld c, d
    dec d
    sbc [hl]
    ld bc, $114e
    ld a, $01
    ld e, $01
    ld e, $01
    ld e, $01
    ld e, $01
    ld e, $01
    ld e, $01
    ld e, $01
    rra
    nop
    rra
    nop
    rra
    nop
    ld e, $01
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
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    ld d, d
    nop
    add b
    nop
    ld d, b
    nop
    xor d
    nop
    rst $38
    nop
    ld sp, hl
    cp $bf
    rst $38
    ld d, a
    rst $38
    xor e
    rst $38
    rla
    rst $38
    dec bc
    rst $38
    dec b
    rst $38
    inc bc
    rst $38
    dec b
    rst $38
    inc bc
    rst $38
    ld bc, $03ff
    rst $38
    ld bc, $03ff
    rst $38
    ld bc, $03ff
    rst $38
    dec b
    rst $38
    dec bc
    rst $38
    ld d, l
    rst $38
    xor a
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
    ld d, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, c
    rst $38
    db $e3
    rst $38
    pop bc
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
    ld [hl], b
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    inc d
    rst $38
    nop
    rst $38
    db $10
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    reti


    ld h, $ba
    ld b, l
    ld a, h
    add e
    xor [hl]
    ld d, c
    ld b, $f9
    add $79
    db $ed
    ld [hl-], a
    ldh [$1f], a
    nop
    nop
    nop
    nop
    inc b
    inc bc
    db $10
    rrca
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    push de
    ld [$d728], a
    ld b, [hl]
    cp b
    inc [hl]
    ret nz

    adc d
    nop
    inc d
    nop
    xor b
    nop
    ret nc

    nop
    and b
    nop
    ld b, b
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
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    jr nz, jr_044_4cda

jr_044_4cda:
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    xor b
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    dec b
    rst $38
    nop
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
    add sp, -$01
    call c, $a8ff
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
    ld b, b
    rst $38
    and b
    rst $38
    ld d, h
    rst $38
    nop
    ld bc, $0302
    inc b
    inc b
    inc b
    inc b
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    inc b
    inc b
    inc b
    inc b
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

    ld hl, $2221
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_044_4d9d

    ld a, [hl+]
    inc b
    inc b
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_044_4daf

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_044_4dbf

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
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b

jr_044_4d9d:
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
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d

jr_044_4daf:
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

jr_044_4dbf:
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld b, $7a
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
    inc b
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


    jp c, $dcdb

    db $dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    ld b, $e8
    jp hl


    ld [$eceb], a
    db $ed
    xor $ef
    ret nz

    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    ld [hl], d
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
    jr jr_044_4e84

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_044_4e94

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_044_4ea4

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $06
    dec b
    nop
    nop

jr_044_4e84:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    rlca
    rlca
    rlca
    ld b, $05
    nop
    nop

jr_044_4e94:
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    rlca
    rlca
    rlca
    rlca
    ld b, $06
    dec b
    nop

jr_044_4ea4:
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0707
    rlca
    rlca
    ld b, $06
    dec b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $06
    ld b, $04
    nop
    nop
    nop
    nop
    ld bc, $0101
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $06
    ld b, $05
    nop
    nop
    nop
    nop
    ld bc, $0101
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $06
    ld b, $05
    inc b
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $06
    ld b, $06
    dec b
    nop
    nop
    nop
    nop
    inc b
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $06
    ld b, $06
    dec b
    inc b
    nop
    nop
    inc b
    inc b
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $06
    ld b, $05
    dec b
    inc b
    inc b
    inc b
    inc b
    inc b
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $06
    ld b, $06
    dec b
    inc b
    nop
    nop
    nop
    inc b
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $06
    ld b, $06
    dec b
    inc b
    nop
    nop
    nop
    inc b
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $06
    ld b, $06
    dec b
    inc b
    nop
    nop
    nop
    inc b
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $06
    ld b, $06
    dec b
    inc b
    nop
    nop
    nop
    inc b
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $06
    ld b, $06
    dec b
    nop
    nop
    ld bc, $0202
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $05
    dec b
    dec b
    dec b
    nop
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $06
    ld b, $05
    dec b
    nop
    nop
    inc b
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $0e
    dec c
    dec c
    dec c
    dec bc
    dec bc
    inc c
    inc c
    add hl, bc
    rrca

jr_044_4f9b:
    rrca
    rrca
    rrca
    rrca
    rrca
    dec c
    inc c
    inc c
    inc c
    inc c
    ld [$0c08], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    rrca
    rrca
    rrca
    add hl, bc
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    add hl, bc
    inc c
    dec bc
    dec bc
    inc c
    inc c
    inc c
    inc c
    ld b, c
    cp [hl]
    jr z, jr_044_4f9b

    ld de, $8aee
    ld [hl], l
    ld b, h
    cp e
    dec hl
    push de
    ld b, l
    cp d
    jr z, @-$27

    nop
    nop
    ld bc, $0000
    ret nz

    ld [$00f0], sp
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rst $00
    ccf
    ld e, b
    rlca
    adc a
    nop
    ld e, l
    nop
    ld a, [hl+]
    nop
    dec d
    nop
    jr z, jr_044_4ff2

jr_044_4ff2:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    nop
    xor d
    nop
    ld d, l
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [bc], a
    nop
    ld e, e
    rlca
    ld a, a
    rst $38
    ldh a, [rIE]
    ld [$51ff], sp
    ldh [$0b], a
    rlca
    ld e, a
    ccf
    db $fc
    rst $38
    add b
    rst $38
    inc de
    rst $28
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
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$d0ff]
    rst $38
    nop
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
    cpl
    rst $38
    ld a, a
    rst $38
    cpl
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
    ld [bc], a
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ld d, a
    rst $38
    ld [$20ff], sp
    rst $18
    db $10
    rst $28
    ld a, [hl+]
    push de
    ld de, $02ee
    db $fd
    call nz, $8abb
    ld [hl], l
    inc b
    nop
    ld [hl+], a
    nop
    adc b
    nop
    ld [bc], a
    nop
    nop
    nop
    ld b, b
    add b
    nop
    ldh a, [rP1]
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
    rra
    rst $38
    inc bc
    ld b, a
    nop
    ld [bc], a
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
    nop
    nop
    nop
    nop
    rlca
    nop
    dec bc
    rlca
    dec bc
    rlca
    ld de, $230f
    rra
    ld b, e
    ccf
    inc bc
    ld a, a
    add hl, sp
    rlca
    dec de
    rlca
    inc de
    rrca
    inc bc
    rra
    inc bc
    rra
    inc bc
    rra
    inc hl
    rra
    rra
    ccf
    cpl
    ccf
    ccf
    rra
    ccf
    rra
    rra
    rra
    ccf
    rra
    ccf
    rra
    ccf
    rra
    ccf
    rra
    sbc a
    ld a, a
    rst $38
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    sbc a
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    cp a
    rst $38
    cp $ff
    push af
    rst $38
    ld a, [$ffff]
    rst $38
    ld a, [$d5ff]
    rst $38
    and b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld b, l
    rst $38
    adc a
    rst $38
    ld b, l
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0bff
    rst $38
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
    cp $ff
    rst $38
    rst $38
    cp $ff
    ld d, h
    rst $38
    jr nz, @+$01

    ld d, h
    rst $38
    cp $ff
    push af
    rst $38
    ld [$d5ff], a
    rst $38
    ld d, l
    xor d
    ld a, [hl+]
    push de
    dec d
    ld [$f50a], a
    dec d
    ld [$5da2], a
    ld de, $aeee
    pop de
    ld [hl], c
    adc [hl]
    xor d
    ld d, l
    dec b
    ld a, [$7798]
    ld bc, $20fe
    rst $18
    inc d
    db $eb
    ld [$00ff], sp
    add b
    db $10
    ldh [rP1], a
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
    inc hl
    rra
    jr @+$11

    daa
    ld [$0817], sp
    rlca
    ld [$0817], sp
    rlca
    ld [$0807], sp
    rlca
    ld [$000f], sp
    rlca
    ld [$000f], sp
    rlca
    ld [$000f], sp
    rlca
    ld [$000f], sp
    rlca
    ld [$000f], sp
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
    dec bc
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
    rst $38
    db $fd
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ld a, a
    rst $38
    xor a
    rst $38
    ld e, a
    rst $38
    dec hl
    rst $38
    ld bc, $82ff
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
    cp d
    rst $38
    db $10
    rst $38
    ld a, [hl-]
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fd
    rst $38
    ld a, [$f5ff]
    rst $38
    cp $ff
    db $fc
    rst $38
    ldh [rIE], a
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
    ld b, b
    rst $38
    and b
    rst $38
    ld d, h
    rst $38
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
    adc d
    ld [hl], l
    dec d
    ld [$1de2], a
    ld d, b
    xor a
    ld a, [hl+]
    push de
    ld b, l
    cp d
    ld a, [hl+]
    push de
    dec d
    ld [$7d82], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    ldh [rDIV], a
    ld hl, sp+$00
    rst $38
    ld [bc], a
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rst $00
    ccf
    ld sp, hl
    rlca
    cp [hl]
    ld bc, $00ff
    xor a
    nop
    db $dd
    nop
    xor d
    nop
    inc d
    nop
    xor d
    nop
    push de
    nop
    and d
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    xor $10
    xor b
    db $10
    ld l, b
    db $10
    jr z, jr_044_529e

    ld l, b
    db $10
    cpl
    db $10
    ccf
    rra
    ld a, a
    rra
    ccf
    rra
    ccf
    rra
    ccf
    rra
    ccf
    rra

jr_044_529e:
    ccf
    rra
    ccf
    rra
    ccf
    rra
    ccf
    rra
    ccf
    rra
    rra
    rra
    ccf
    rra
    ccf
    rra
    rra
    rra
    ccf
    rra
    ccf
    rra
    ccf
    rra
    dec a
    rra
    jr c, jr_044_52d9

    dec [hl]
    rra
    ld a, $1f
    inc [hl]
    rra
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    add sp, -$01
    ld b, b
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    ei
    rst $38
    db $fc
    rst $38
    add sp, -$01
    ld b, b
    rst $38
    nop

jr_044_52d9:
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    xor b
    rst $38
    ld e, l
    rst $38
    add sp, -$01
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
    ld bc, $02ff
    rst $38
    dec d
    rst $38
    ld a, a
    add b
    cp a
    ld b, b
    ld e, a
    and b
    xor a
    ld d, b
    ld d, a
    xor b
    xor d

jr_044_530b:
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld b, c
    cp [hl]
    and b
    ld e, a
    ld d, h
    xor e
    ld a, [hl+]
    push de
    dec d
    ld [$5fa0], a
    ld d, b
    xor a
    ld a, [bc]
    push af
    ld d, l
    xor d
    jr jr_044_530b

    ld de, $a6ee
    ld e, l
    ld bc, $02fe
    db $fd
    ld bc, $c0fe
    rst $38
    inc e
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    jr c, jr_044_5343

    rlca
    nop
    nop
    nop
    cp a
    nop
    ld e, l

jr_044_5343:
    nop
    xor e
    nop
    rla
    nop
    xor d
    nop
    dec d
    nop
    ld [bc], a
    nop
    ld bc, $0000
    nop
    rra
    db $10
    jr nc, jr_044_5375

    ld a, [de]
    dec d
    scf
    jr jr_044_537a

    db $10
    scf
    jr jr_044_5379

    db $10
    ld a, $10
    rra
    db $10
    dec [hl]
    jr jr_044_5384

    db $10
    ld d, $18
    ld e, $10
    dec d
    jr @+$13

    inc e
    ld [hl-], a
    rra
    rra
    rra
    dec bc

jr_044_5375:
    nop
    nop
    nop
    nop

jr_044_5379:
    nop

jr_044_537a:
    nop
    nop
    nop
    nop
    ld bc, $ff00
    nop
    rst $38
    nop

jr_044_5384:
    ld hl, sp-$01
    add d
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    nop
    ld e, a
    nop
    rst $38
    ccf
    db $fd
    rst $38
    ld a, [$f4ff]
    rst $38
    add sp, -$01
    ldh a, [rIE]
    add sp, -$01
    ldh a, [rIE]
    ldh [rIE], a
    ldh a, [rIE]
    ldh [rIE], a
    ldh a, [rIE]
    ldh [rIE], a
    db $f4
    rst $38
    ld [$fdff], a
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld [$05ff], a
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld [$00ff], sp
    rst $38
    add b
    rst $38
    push af
    rst $38
    and b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld d, a
    rst $38
    adc d
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
    dec d
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    ld a, [hl+]
    rst $38
    dec b
    rst $38
    nop
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
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    rst $38
    nop
    rst $38
    nop
    rlc b
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    ld a, h
    add b
    cp h
    ld b, b
    ld e, a
    and b
    xor e
    ld d, h
    dec b
    ld a, [$7d82]
    ld b, b
    cp a
    and b
    ld e, a
    ld d, h
    xor e
    ld a, [hl+]
    push de
    dec d
    ld [$5da2], a
    ld d, c
    xor a
    ld a, [hl+]
    push de
    dec d
    ld [$55aa], a
    ld d, l
    xor d
    adc c
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ld hl, sp+$18
    cp $07
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $18
    ccf
    ei
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
    ld a, a
    nop
    cp a
    nop
    ld e, a
    nop
    ld a, a
    add b
    add e
    ld a, h
    inc d
    db $eb
    and [hl]
    ld bc, $00f4
    rst $08
    nop
    nop
    nop
    adc e
    nop
    rrca
    nop
    dec bc
    nop
    ld b, a
    nop
    ld l, l
    nop
    db $fd
    nop
    cp l
    nop
    ld hl, $fefe
    rst $38
    ret nc

    cpl
    dec d
    nop
    ld a, [bc]
    nop
    ld d, l
    nop
    dec hl
    nop
    ld e, l
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    di
    ld [$0851], sp
    ld sp, $7108
    ld [$78f9], sp
    ld sp, hl
    ld hl, sp+$79
    ld hl, sp+$79
    ld hl, sp+$79
    ld hl, sp+$79
    ld hl, sp+$79
    ld hl, sp+$79
    ld hl, sp+$79
    ld hl, sp+$79
    ld hl, sp+$79
    ld hl, sp+$79
    ld hl, sp+$78
    ld hl, sp+$79
    ld hl, sp+$79
    ld hl, sp-$07
    ld hl, sp+$78
    ld hl, sp-$07
    ld hl, sp+$79
    ld hl, sp-$47
    ld sp, hl
    ld e, a
    rst $38
    cp a
    rst $38
    ld e, a
    rst $38
    ld [bc], a
    rst $38
    rla
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor d
    rst $38
    inc b
    rst $38
    ld a, [bc]
    rst $38
    ld [hl], l
    rst $38
    xor d
    rst $38
    ld [hl], l
    rst $38
    xor d
    rst $38
    ld d, h
    rst $38
    ld [$14ff], sp
    rst $38
    ld a, [hl+]
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, h
    rst $38
    jr nz, @+$01

    ld bc, $28fe
    rst $38
    ld d, h
    rst $38
    xor b
    rst $38
    ld d, h
    rst $38
    add b
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
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    inc c
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_044_5512

jr_044_5512:
    ldh a, [rP1]
    ld a, h
    add b
    xor a
    ld d, b
    ld d, l
    xor d
    ld a, [hl+]
    push de
    dec b
    ld a, [$f708]
    ld b, h
    cp e
    xor d
    ld d, l
    push de
    xor d
    ld a, [hl+]
    push de
    dec d
    ld [$5da2], a
    ld d, b
    xor a
    xor b
    ld d, a
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
    inc b
    ret nz

    jp z, $39f0

    cp $06
    rst $38
    add e
    ld a, a
    sub b
    ld l, a
    db $10
    rrca
    inc c
    inc bc
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
    add b
    ccf
    ret nz

    ccf
    ret nz

    cp a
    ld b, b
    ccf
    ret nz

    sbc a
    ld b, b
    ccf
    ret nz

    sub a
    ld b, b
    cpl
    ret nz

    dec d
    ret nz

    ld l, e
    ret nz

    ld d, a
    ret nz

    ld l, e
    ret nz

    rst $10
    ret nz

    xor e
    ret nz

    ld d, a
    nop
    xor e
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
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    cp $81
    rst $38
    add b
    ld [$d595], a
    xor d
    xor $91
    push de
    xor d
    xor d
    push de
    ret nz

    cp a
    xor c
    rst $10
    rst $38
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
    ld [$55ff], a
    rst $38
    ei
    rst $38
    ret nc

    rst $38
    and b
    rst $38
    push af
    rst $38
    add sp, -$01
    ld b, b
    rst $38
    nop
    rst $38
    pop de
    rst $38
    ld hl, sp-$01
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld d, h
    rst $38
    xor b
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
    add b
    rst $38
    ld d, h
    rst $38
    xor d
    rst $38
    ld d, c
    cp $a7
    ld hl, sp+$4f
    ldh a, [$3f]
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    rlca
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$6c
    jr nc, jr_044_563d

    dec b
    inc bc
    nop
    nop
    nop
    ld bc, $0a00
    dec b
    ld [$0206], sp
    nop
    inc b
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $fa02
    dec b
    db $fd
    ld [bc], a
    xor d
    ld d, l
    ld d, h
    xor e
    xor d
    push de
    ld b, l
    cp d
    xor d
    ld d, l

jr_044_5624:
    ld d, l
    xor d

jr_044_5626:
    xor d
    ld d, l

jr_044_5628:
    ld d, l
    xor d

jr_044_562a:
    xor d
    ld d, l
    ld d, l
    xor d
    ld a, [hl+]
    push de
    ld bc, $00fe
    rst $38
    db $10
    rst $28
    nop
    rst $38
    ld d, c
    xor $10
    rst $38

jr_044_563c:
    nop

jr_044_563d:
    rst $38
    ld bc, $60ff
    ldh [$cc], a
    db $fc
    inc sp
    rst $38
    ld c, $ff
    ld bc, $00ff
    rst $38
    nop
    rst $38

jr_044_564e:
    nop
    rst $38
    call $cf7a
    jr nc, jr_044_5624

    jr nc, jr_044_5626

    jr nc, jr_044_5628

    jr nc, jr_044_562a

    jr nc, jr_044_563c

    jr nz, jr_044_564e

    db $10

jr_044_5660:
    rst $18
    jr nz, @+$01

    nop

jr_044_5664:
    rst $18
    jr nz, @+$01

    nop
    rst $18
    jr nz, @+$01

    nop
    rst $18
    jr nz, @-$0f

    db $10
    rst $18
    jr nz, @-$0f

    db $10
    rst $18
    jr nz, @-$0f

    db $10
    rst $18
    jr nz, @-$0f

    db $10
    rst $18
    jr nz, jr_044_564e

    jr nc, jr_044_5660

    jr nz, @-$2f

    jr nc, jr_044_5664

    jr nz, @-$2f

    jr nc, @-$2f

    jr nc, @-$33

    inc [hl]
    call $9a32
    ld [hl], l
    adc a
    jr nc, jr_044_56da

    jr nc, jr_044_5664

    jr nc, jr_044_5706

jr_044_5697:
    jr nc, jr_044_5697

    ld sp, $30ff
    rst $20
    ccf
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
    ld hl, sp-$01
    ld a, l
    rst $38
    cp d
    rst $38
    ld a, l
    rst $38
    cp $ff
    ld e, h
    rst $38
    cp [hl]
    rst $38
    rst $38
    rst $38
    ld a, [hl+]
    rst $38
    dec b
    rst $38
    cpl

jr_044_56bd:
    rst $38
    ld [hl], a

jr_044_56bf:
    rst $38
    ld a, [hl+]
    rst $38
    ld bc, $02ff
    rst $38
    dec b
    rst $38
    ld a, [hl+]
    rst $38
    ld d, l
    rst $38
    ld a, [bc]
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    ld b, $f9
    jr jr_044_56bd

    ld sp, $0acf
    rst $38

jr_044_56da:
    db $10
    rst $38
    nop
    rst $38
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    db $fc
    inc bc
    ldh a, [rIF]
    jr nz, @-$1f

    jr c, jr_044_56bf

    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38
    nop
    ld bc, $ed08
    rlca
    db $fc
    rrca

jr_044_5706:
    or [hl]
    ld c, a
    sbc a
    ld h, e
    cp b
    ld b, a
    sbc h
    ld h, e
    dec sp
    ld b, l
    push de
    dec hl
    ld hl, $d75f
    dec hl
    add e
    ld a, a
    ld d, h
    xor e
    xor d
    ld d, l
    ld d, l
    xor d
    xor [hl]
    ld d, l
    ld d, c
    xor [hl]
    cp d
    ld b, l
    ld d, c
    xor [hl]
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    adc d
    ld [hl], l
    ld b, l
    cp d
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld bc, $60ff
    nop
    ld d, $00
    ldh [rP1], a
    ld d, e
    add b
    sbc e
    ldh [$f3], a
    db $fc
    ld e, $ff
    cp a
    rst $38
    rst $08
    ccf
    ld e, e
    rlca
    dec bc
    nop
    dec d
    nop
    nop
    nop
    ld de, $0200
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
    cp $01
    rst $38
    nop
    cp $01
    ld [bc], a
    nop
    dec b
    nop
    ld a, [bc]
    nop
    dec d
    nop
    dec hl
    nop
    ld d, a
    nop
    xor b
    nop
    ld [hl], l
    add hl, bc
    and $1a
    rst $30
    dec bc
    pop bc
    ccf
    ld bc, $32fc
    call Call_044_7f9f
    rst $38
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    cp d
    rst $38
    ld d, h
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    ld [bc], a
    rst $38
    dec d
    rst $38
    nop
    rst $38
    ld bc, $a2ff
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add sp, -$01
    ld d, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    and b
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, h
    rst $38
    xor b
    rst $38
    ld b, h
    ei
    and c
    ld a, [hl]
    ld d, b
    rst $38
    adc d
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
    ret nz

    ccf
    db $fd
    ld [bc], a
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
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
    nop
    rst $38
    nop
    rst $38
    ld [hl], b
    rrca
    xor [hl]
    ld bc, $0055
    add l
    ld [bc], a
    ld a, h
    add b
    ldh [$c0], a
    ld l, a
    ret nc

    dec a
    jp nz, Jump_044_41fe

    sbc h
    ld h, e
    and d
    ld e, l
    ld [hl], h
    adc a
    ld a, [hl-]
    push bc
    inc e
    db $e3
    adc [hl]
    pop af
    inc b
    ei
    xor b
    ld d, a
    inc b
    ei
    ld [bc], a
    db $fd
    ld b, h
    cp e
    adc d
    ld [hl], l
    ld b, l
    cp d
    add b
    ld a, a
    nop
    rst $38
    sub h
    ld a, a
    ld [bc], a
    rst $38
    nop
    rst $38
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
    inc b
    nop
    xor $00
    ld a, a
    nop
    rra
    nop
    rst $08
    nop
    jp $c200


    nop
    adc l
    nop
    rst $38
    nop
    rst $18
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    ld a, a
    rst $20
    rra
    db $76
    rrca
    or [hl]
    rrca
    db $76
    rrca
    or [hl]
    rrca
    ld d, h
    rrca
    ld [hl], $0f
    inc d
    rrca
    inc [hl]
    rrca
    ld d, h
    rrca
    inc [hl]
    rrca
    inc d
    rrca
    inc [hl]
    rrca
    ld d, h
    rrca
    or h
    rrca
    ld d, [hl]
    rrca
    or [hl]
    rrca
    ld d, [hl]
    rrca
    or [hl]
    rrca
    db $76
    rrca
    db $f4
    rrca
    db $fc
    rrca
    db $ec
    rra
    adc $3f
    add h
    ld a, a
    sub [hl]
    ld a, a
    rla
    ld a, a
    db $76
    cp a
    jp nz, $e9bf

    ldh a, [rNR42]
    ret c

    ld a, a
    adc a
    jp $d7a3


    db $e3
    ret z

    rst $20
    db $db
    rst $28
    ldh [rIE], a
    ld e, h
    rst $38
    ld a, [hl+]
    rst $38
    ld bc, $82ff
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld d, a
    ld hl, sp+$0f
    ldh a, [rHDMA4]
    rst $38
    xor b
    rst $38
    inc bc
    db $fc
    ld a, [bc]
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    dec b
    rst $38
    nop
    rst $38
    ld bc, $02ff
    rst $38
    dec d
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
    rra
    ldh [$81], a
    cp $01
    cp $07
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$7f], a
    add b
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    inc bc
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
    ld bc, $00fe
    cp $c1
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld d, b
    and b
    adc b
    ld [hl], b
    ld hl, sp+$00
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    cp [hl]
    ld bc, $00df
    rst $08
    nop
    ld [hl], e
    add b
    ld sp, hl
    nop
    ld a, h
    add b
    cp a
    ld b, b
    ld e, l
    and d
    xor d
    ld d, l
    ld e, l
    and d
    ld l, $d1
    dec d
    ld [$f40b], a
    dec b
    ld a, [$fd02]
    dec b
    ld a, [$fd02]
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    add b
    nop
    ret nz

    nop
    ldh a, [rP1]
    ld a, [$ff00]
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
    rst $38
    add e
    db $fc
    daa
    ret c

    ccf
    ret nz

    rrca
    ldh a, [$e1]
    cp $82
    db $fd
    add c
    cp $82
    db $fd
    ld bc, $02fe
    db $fd
    dec b
    ld a, [$fd02]
    dec b
    ld a, [$fd02]
    dec b
    ld a, [$fd82]
    add l
    ld a, [$fd02]
    add c
    cp $82
    db $fd
    add c
    cp $80
    rst $38
    pop bc
    cp $80
    rst $38
    pop hl
    cp $e2
    db $fd
    rst $30
    ld hl, sp-$01
    pop af
    add hl, bc
    ldh a, [$d9]
    ld h, b
    bit 6, b
    pop hl
    rst $30
    or c
    rst $30
    push af
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ld a, [$14ff]
    rst $38
    nop
    rst $38
    dec c
    di
    xor a
    ldh a, [rBGP]
    ld hl, sp-$58
    rst $38
    inc bc
    db $fc
    ldh [$1f], a
    ld b, b
    cp a
    rst $38
    nop
    push af
    nop
    ld e, $e1
    ld d, b
    rst $38
    and b
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld d, h
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    ld a, [hl+]
    rst $38
    add c
    ld a, [hl]
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
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
    rst $38
    nop
    ld a, e
    add b
    rrca
    ldh a, [$03]
    db $fc
    dec b
    ld hl, sp+$0a
    ldh a, [$15]
    ldh [$2a], a
    ret nz

    ld d, l
    add b
    xor d
    nop
    ld d, l
    nop
    xor [hl]
    nop
    ld d, l
    nop
    dec d
    ld a, [bc]
    ld a, [de]
    dec b
    dec c
    ld [bc], a
    rlca
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    db $fc
    nop
    ld e, [hl]
    and b
    xor a
    ld d, b
    rst $10
    jr z, @+$01

    nop
    cp $00
    db $fc
    nop
    ld [bc], a
    nop
    ret nz

    nop
    or $00
    cp b
    ld b, b
    ld a, h
    add b
    cp h
    ld b, b
    cp $00
    cp $00
    ld a, a
    add b
    xor a
    ld d, b
    ld e, a
    and b
    xor a
    ld d, b
    ld d, a
    xor b
    dec hl
    call nc, $f807
    ld a, [bc]
    push af
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
    rst $30
    nop
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld [hl], l
    add b
    xor b
    nop
    ld d, h
    nop
    xor d
    nop
    call nc, Call_044_5f00
    and b
    cp a
    ld b, b
    ld e, a
    and b
    cp a
    ld b, b
    ld a, a
    add b
    cp a
    ld b, b
    ld a, a
    add b
    cp a
    ld b, b
    ld a, a
    add b
    cp a
    ld b, b
    ld e, a
    and b
    cp a
    ld b, b
    ld e, a
    and b
    cp a
    ld b, b
    ld e, a
    and b
    cp a
    ld b, b
    ld a, a
    add b
    cp a
    ld b, b
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    ld e, a
    and b
    dec hl
    call nc, Call_000_00a8
    call nc, $ea00
    nop
    sbc l
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor a
    rst $38
    dec h
    rst $18
    ld a, $c1
    ld b, d
    db $fd
    ld b, $f8
    ld b, b
    ccf
    rst $38
    nop
    ld d, l
    nop
    dec de
    ldh [rNR10], a
    ldh [$a8], a
    ld b, b
    sbc l
    ld h, b
    rrca
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    inc c
    di
    ret nc

    cpl
    nop
    rst $38
    sbc b
    rst $20
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $e3fe
    inc e
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ret c

    rlca
    xor a
    nop
    rst $18
    nop
    xor a
    nop
    ld e, a
    nop
    xor a
    nop
    ld e, a
    nop
    xor a
    nop
    ld e, a
    nop
    rst $38
    nop
    rst $38
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
    ld a, a
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
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ld hl, sp+$00
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    xor d
    ld d, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jp $fd3f


    rst $38
    cp $ff
    ld a, [$a0fd]
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    cp $00
    db $fd
    nop
    rst $38
    nop
    db $fd
    nop
    ld sp, hl
    nop
    pop af
    nop
    ld sp, hl
    nop
    push af
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
    cp $01
    rst $38
    nop
    cp $01
    rst $38
    nop
    cp $01
    nop
    nop
    ld bc, $0100
    nop
    ld b, c
    nop
    adc d
    pop af
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, l
    rst $38
    rlca
    ld hl, sp+$03
    db $fc
    xor c
    ld b, $df
    nop
    add b
    nop
    push af
    nop
    cp $00
    inc d
    nop
    ld [bc], a
    nop
    dec d
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    inc [hl]
    ret nz

    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    ld hl, sp+$07
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    db $10
    rst $28
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
    rst $38
    nop
    rlca
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
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add c
    nop
    sub c
    ld h, b
    ld d, a
    and b
    xor a
    ld b, b
    rst $38
    nop
    di
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    db $ed
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
    dec b
    nop
    rlca
    nop
    dec bc
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    ld [hl], a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, l
    ld [bc], a

jr_044_5c1a:
    ld [$5415], a
    xor e
    add b
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
    ld h, b
    rra
    ld d, h
    rst $38
    add b
    rst $38
    adc d
    db $fd
    nop
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
    ret nz

    nop
    ret nz

    rst $38
    ret nz

    ld d, l
    ret nz

    add d
    ret nz

    add c
    ld b, b
    ld b, b
    nop
    pop bc
    nop
    ret nz

    nop
    pop bc
    nop
    jp nz, $8100

    ld b, b
    ld b, b
    add b
    add c
    ld b, b
    jr nz, jr_044_5c1a

    ld bc, $20c0
    ret nz

    ld sp, $6ac0
    ret nz

    push af
    ret nz

    ld a, e
    ret nz

    rst $30
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    nop
    ret nz

    db $fc
    rst $38
    rst $38
    rst $38
    db $f4
    ei
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, [hl+]
    rst $38
    ld a, b
    rlca
    ld hl, sp+$07
    push af
    nop
    cp $00
    rst $38
    nop
    ld [bc], a
    nop
    nop
    nop
    xor b
    nop
    ld d, h
    nop
    xor b
    nop
    dec b
    nop
    dec bc
    nop
    dec d
    nop
    adc d
    nop
    ld d, c
    add b
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
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
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
    cp $01
    ld a, $c1
    nop
    rst $38
    ld bc, $03fe
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$c3], a
    inc a
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    push de
    ld a, [hl+]
    ld [$d515], a
    ld a, [hl+]
    xor d
    ld d, l
    call nc, $ea2b
    dec d
    push af
    ld a, [bc]
    ld a, [$fd05]
    ld [bc], a
    ld a, [$f505]
    ld a, [bc]
    ld a, [$f505]
    ld a, [bc]
    ld a, [$f405]
    dec bc
    ld [$f515], a
    ld a, [bc]
    ld [$d415], a
    dec hl
    xor b
    ld [hl], a
    call nc, $fa2b
    dec b
    db $f4
    dec bc
    add sp, $17
    ldh a, [rIF]
    add sp, $17
    ret nc

    cpl
    and b
    ld e, a
    ld b, c
    cp a
    dec bc
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
    ld bc, $4300
    ccf
    xor a
    rst $38
    nop
    rst $38
    cp a
    rst $38
    rla
    add sp, -$01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld a, a
    nop
    rst $38
    nop
    ld e, a
    nop
    rst $38
    nop
    rst $38
    nop
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
    rlca
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
    ld b, $01
    inc b
    inc bc
    nop
    rrca
    rrca
    nop
    ld bc, $070e
    rlca
    dec b
    ld b, $04
    rlca
    inc b
    rrca
    db $fc
    rst $38
    db $f4
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cpl
    rst $38
    push af
    rrca
    nop
    rst $38
    ld h, b
    rra
    and b
    rra
    sub a
    ld b, b
    xor d
    nop
    ld [hl], c
    ld c, $f0
    rrca
    ld e, $01
    ld a, [bc]
    nop
    ld b, l
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    ldh a, [rIF]
    ld h, b
    rra
    ld [c], a
    rra
    pop hl
    rra
    ld [c], a
    rra
    dec b
    rst $38
    nop
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
    adc d
    ld a, a
    dec d
    rst $38
    ld a, [bc]
    rst $38
    dec b
    rst $38
    ld [$05ff], sp
    rst $38
    ld [bc], a
    rst $38
    ldh [$1f], a
    add sp, $17
    ldh [$1f], a
    ldh a, [rIF]
    add b
    ld a, a
    ldh [$1f], a
    ret nc

    cpl
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
    add b
    ld a, a
    nop
    rst $38
    add c
    ld a, a
    rrca
    nop
    rrca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    dec c
    nop
    dec b
    nop
    inc bc
    nop
    inc bc
    nop
    rlca
    nop
    ccf
    nop
    rra
    nop
    rra
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
    inc bc
    nop
    daa
    nop
    rla
    nop
    daa
    nop
    rst $38
    nop
    adc a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, b
    rst $38
    db $fd
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
    nop
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    cp $01
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $01
    inc l
    db $d3
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    ld l, $ff
    rst $00
    ccf
    jr nz, @+$01

    rrca
    ldh a, [$a2]
    rra
    pop hl
    rra
    inc a
    jp $c03f


    add b
    ld a, a
    add l
    ld a, a
    add d
    ld a, a
    ld h, c
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    ld a, [hl+]
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
    ld d, h
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    ld a, [bc]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    sub h
    ld [hl+], a
    cp d
    ld bc, $208f
    xor a
    nop
    dec d
    xor d
    cp l
    ld [bc], a
    dec e
    and d
    ld a, $81
    db $dd
    and d
    ld a, [$d585]
    xor d
    xor [hl]
    pop de
    push af
    adc d
    xor [hl]
    pop de
    or l
    jp z, $d4ab

    cp h
    jp $d5ea


    push hl
    jp c, $d7e8

    call nz, $c2fb
    db $fd
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ld h, b
    nop
    ld sp, hl
    nop
    db $fd
    nop
    rst $38
    nop

Call_044_5f00:
    ld a, a
    nop
    ld a, a
    nop
    sbc a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    ld d, l
    xor d
    xor d
    ld d, l
    db $fd
    ld [bc], a
    xor d
    ld d, l
    ld d, l
    xor d
    cp $01
    db $fd
    ld [bc], a
    cp $01
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ret c

    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    rlca
    rst $38
    nop
    rst $38
    ccf
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    db $fd
    rst $38

jr_044_5f5c:
    jr z, @+$01

    push hl
    rra
    ld [bc], a
    rst $38
    ld d, b
    rst $38
    nop
    rst $38
    push hl
    rra
    ld [bc], a
    rst $38
    ld d, c
    rst $38
    xor b
    rst $38
    ld d, l
    rst $38
    ld a, [bc]
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ld d, a
    rst $38
    and d
    rst $38
    ld d, b
    rst $38
    and b
    rst $38
    ld d, b
    rst $38
    ld [$15ff], sp
    rst $38
    dec bc
    rst $38
    dec d
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    xor d
    rst $38
    ld b, b
    rst $38
    and b
    rst $38
    ld b, b
    rst $38
    and b
    rst $38
    ld b, b
    rst $38
    and b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    dec d
    rst $38
    ld a, [hl+]
    rst $38
    dec d
    rst $38
    ld a, [hl+]
    rst $38
    dec d
    rst $38
    ld a, [hl+]
    rst $38
    dec d
    rst $38
    ld a, [hl+]
    rst $38
    dec d

jr_044_5faf:
    rst $38
    rst $10
    jr z, jr_044_5f5c

    ld d, [hl]
    ld [hl], c
    adc [hl]
    ei
    inc b
    ld hl, $abde
    ld d, h
    push de
    ld a, [hl+]
    xor b
    ld d, a
    ld a, l
    add d
    add sp, $17
    ld [hl], h
    adc e
    xor a
    ld d, l
    ld d, l
    cp a
    xor e
    ld d, l
    ld d, h
    xor a
    jr nz, jr_044_5faf

    nop
    nop
    ld bc, $0300
    nop
    dec bc
    ld bc, $010b
    xor e
    ld bc, $012b
    rla
    ld bc, $0305
    and a
    inc bc
    scf
    inc bc
    ld h, e
    rlca
    dec de
    rlca
    dec de
    rlca
    ld e, $07
    cp $07
    or $0f
    ld e, [hl]
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    cp $0c
    ld a, [hl]
    inc c
    cp [hl]
    inc c
    sbc $0c
    cp $0c
    ld e, [hl]
    inc c
    cp $0c
    ld e, [hl]
    inc c
    xor [hl]
    inc c
    ld e, [hl]
    inc c
    xor [hl]
    inc c
    ld e, [hl]
    inc c
    xor [hl]
    inc c
    ld e, [hl]
    inc c
    xor [hl]
    inc c
    ld e, [hl]
    inc c
    xor [hl]
    inc c
    ld e, [hl]
    inc c
    cp [hl]
    inc c
    ld e, [hl]
    inc c
    cp [hl]
    inc c
    ld e, a
    db $fc
    cp $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    db $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
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
    ld b, a
    rst $38
    cp a
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld b, c
    rst $38
    xor e
    rst $38
    ld d, a
    rst $38
    dec hl
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    dec d
    rst $38
    ld a, [bc]
    rst $38
    dec b
    rst $38
    nop
    rst $38
    ld d, l
    rst $38
    cp $ff
    ld d, a
    rst $38
    xor e
    rst $38
    ld a, a
    rst $38
    xor a
    rst $38
    ld d, a
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
    ld b, b
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    ld e, $1f
    inc e
    rra
    inc a
    rra
    inc e
    ccf
    inc a
    ccf
    jr c, jr_044_60fb

    cp b
    ccf
    ld a, b
    ccf
    ld a, [hl-]
    db $fd
    ld [hl], l
    ld hl, sp+$75
    ld hl, sp+$7d
    ldh a, [$f1]
    ld a, b
    ld sp, hl
    ld [hl], b
    ld l, d
    ldh a, [$f1]
    ldh [$f0], a
    ldh [$f1], a
    ldh [$c1], a
    ldh [$e1], a
    ret nz

    add sp, -$40
    pop af
    ret nz

    ldh [$c0], a
    or c
    ret nz

    ldh [$80], a
    ldh [$80], a
    ld h, b
    add b
    ld h, b
    add b
    ld h, b
    add b
    ld b, b
    add b
    ret nz

    add b
    ret nz

    add b
    nop
    add b
    ret nz

    add b
    add b
    add b
    nop
    add b
    add b
    add b
    nop

jr_044_60fb:
    add b
    nop
    add b
    nop
    add b
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
    rst $38
    add b
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
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    add b
    ld a, a
    add b
    add b
    nop
    nop
    add b
    nop
    add b
    nop
    add b
    add b
    nop
    nop
    add b
    add b
    add b
    nop
    add b
    add b
    nop
    nop
    add b
    nop
    add b
    ld b, b
    add b
    nop
    add b
    ld b, b
    add b
    nop
    add b
    pop bc
    add b
    add b
    add b
    pop bc
    add b
    ldh [$80], a
    add c
    ret nz

    ldh [$80], a
    sub c
    ret nz

    and c
    ret nz

    sub c
    ldh [$09], a
    ldh a, [$8d]
    ldh a, [$a5]
    ret c

    or h
    ret


    sub e
    db $ec
    sbc $e1
    sbc $e1
    sub $e9
    adc $f1
    db $ec
    pop af
    and $f9
    ldh [$fd], a
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    or $f9
    db $fc
    ei
    ld hl, sp-$01
    cp $fd
    cp $fd
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld e, a
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
    ld d, a
    rst $38
    rrca
    rst $38
    rla
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld d, c
    rst $38
    cp e
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld d, a
    rst $38
    xor a
    rst $38
    ld a, a
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    rst $20
    ei
    rst $20
    ei
    rst $20
    ei
    rst $20
    ei
    rst $30
    db $eb
    di
    rst $28
    rst $30
    db $eb
    rst $30
    db $eb
    rst $30
    db $eb
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    db $e3
    rst $28
    di
    rst $28
    di
    db $eb
    rst $30
    rst $28
    di
    ld l, a
    di
    rst $28
    di
    rst $28
    di
    db $eb
    rst $30
    ld l, e
    rst $30
    db $eb
    rst $30
    ld l, a
    di
    ld l, a
    di
    ld l, a
    di
    ld l, a
    di
    ld l, a
    di
    ld l, a
    di
    ld l, a
    di
    ld l, a
    di
    ld l, a
    di
    ld l, a
    di
    rst $30
    db $e3
    ei
    db $e3
    ld [hl], a
    db $e3
    ld a, e
    db $e3
    ld [hl], a
    db $e3
    ld a, e
    db $e3
    ld [hl], a
    db $e3
    ld l, e
    db $e3
    ld [hl], a
    db $e3
    ld a, e
    db $e3
    ld [hl], a
    db $e3
    ld a, e
    db $e3
    ld a, a
    db $e3
    rst $38
    db $e3
    db $ec
    di
    xor $f1
    db $ec
    di
    add sp, -$09
    ldh [rIE], a
    ld h, d
    rst $38
    ld h, [hl]
    rst $38
    xor $ff
    rst $38
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
    rst $18
    rst $00
    jp $c0c0


    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh a, [$c0]
    ldh [$c0], a
    ldh a, [$c0]
    ldh [$c0], a
    ldh a, [$c0]
    ldh a, [$c0]
    ret c

    ret nz

    ld hl, sp-$40
    db $fc
    ret nz

    ld hl, sp-$40
    db $fc
    ret nz

    ld hl, sp-$40
    db $fc
    ret nz

    cp $c0
    rst $38
    ret nz

    rst $28
    ret nz

    rst $18
    ldh [$df], a
    ldh [$d7], a
    ldh [$eb], a
    ret nz

    db $fd
    ret nz

    ret c

    ldh [$d5], a
    ldh [$db], a
    ldh [$f7], a
    ret nz

    db $db
    ldh [$5d], a
    ldh [$7e], a
    ldh [$bd], a
    ldh [$bf], a
    ldh a, [$bf]
    ldh a, [$de]
    ld sp, hl
    adc $f9
    jp z, $effd

    db $fc
    ld hl, sp-$19
    db $fc
    di
    ld a, [$f3f7]
    rst $38
    ld a, l
    ei
    db $fc
    ei
    ld hl, sp+$7f
    cp a
    ld a, l
    ld a, [hl]
    db $fd
    cp a
    cp $df
    cp [hl]
    sbc $bf
    nop
    ld bc, $0202
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $02
    ld [bc], a
    rrca
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_044_62e7

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_044_62f7

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_044_6307

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_044_6317

    ld [hl-], a

jr_044_62e7:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_044_6327

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_044_62f7:
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    inc c
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c

jr_044_6307:
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

jr_044_6317:
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

jr_044_6327:
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
    ld [bc], a
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
    ld [hl], l
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
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
    cp b
    cp b
    ret z

    ret


    jp z, $cccb

    call $cfce
    ret nc

    pop de
    inc c
    add $d2
    db $d3
    cp b
    cp b
    call nc, $d6d5
    rst $10
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    ldh [$e1], a
    cp b
    cp b
    ld [c], a
    cp b
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$0ceb], a
    db $ec
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
    cp $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rst $38
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    ld [$0a09], sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1202
    inc de
    inc d
    dec d
    ld d, $02
    ld [bc], a
    ld [bc], a
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
    ld bc, $0707
    rlca
    rlca
    rlca
    inc bc
    nop
    nop
    nop
    inc bc
    inc b
    inc b
    inc b
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc b
    inc bc
    inc b
    nop
    inc b
    inc b
    inc b
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc b
    ld bc, $0401
    inc b
    inc b
    inc bc
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    ld bc, $0404
    inc b
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
    nop
    nop
    nop
    inc b
    inc b
    inc b
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
    nop
    nop
    nop
    nop
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
    rlca
    rlca
    nop
    nop
    nop
    nop
    inc b
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
    rlca
    nop
    nop
    nop
    nop
    inc b
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0707
    rlca
    nop
    ld bc, $0404
    inc b
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
    rlca
    nop
    nop
    nop
    nop
    inc b
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
    rlca
    nop
    nop
    nop
    inc bc
    inc b
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
    rlca
    nop
    nop
    inc b
    ld bc, $0707
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
    nop
    nop
    inc b
    ld bc, $0701
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
    nop
    nop
    inc b
    ld bc, $0701
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
    nop
    nop
    inc b
    ld bc, $0701
    ld bc, $0707
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    ld bc, $0303
    inc b
    nop
    inc b
    inc bc
    inc b
    inc b
    inc b
    inc b
    inc b
    inc bc
    inc b
    inc b
    inc b
    inc b
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    dec bc
    ld [$0808], sp
    inc c
    dec bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0b0c], sp
    ld [$0000], sp
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$0800], sp
    inc c
    add hl, bc
    inc c
    ld [$0000], sp
    nop
    xor a
    nop
    ld d, a
    nop
    xor a
    nop
    ld d, a
    nop
    xor e
    nop
    ld e, a
    nop
    cp a
    nop
    ld e, a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ld hl, sp+$07
    pop af
    ld c, $e2
    dec e
    ld d, l
    xor d
    adc d
    ld [hl], l
    db $eb
    nop
    ld a, l
    nop
    db $eb
    nop
    rst $10
    nop
    xor a
    nop
    ld e, [hl]
    ld bc, $01bf
    ld d, a
    inc bc
    ei
    rlca
    rst $30
    rrca
    rst $38
    rrca
    rst $28
    rra
    rst $38
    rra
    rst $38
    ccf
    cp a
    ld a, a
    rst $38
    ld a, a
    cp a
    rst $38
    ld a, a
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    db $fd
    ei
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    rst $38
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
    ld e, a
    rst $38
    adc d
    rst $38
    ld d, c
    rst $38
    and d
    rst $38
    ld d, c
    rst $38
    xor e
    rst $38
    ld d, a
    rst $38
    xor e
    rst $38
    ld d, a
    rst $38
    xor a
    rst $38
    ld e, a
    rst $38
    cpl
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    cp $ff
    ld a, l
    rst $38
    ld a, [hl+]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld bc, $03ff
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
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
    cp $01
    rst $38
    nop
    cp $01
    ld [bc], a
    nop
    dec b
    nop
    ld a, [bc]
    nop
    dec b
    nop
    ld a, [hl+]
    nop
    ld d, $00
    dec l
    ld bc, $0155
    xor e
    inc bc
    ld e, c
    ld bc, $033b
    ld a, c
    inc bc
    cp c
    nop
    halt
    db $eb
    nop
    rst $10
    nop
    xor a
    nop
    ld a, a
    ld bc, $03ad
    rst $38
    inc bc
    ei
    rlca
    rst $30
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $18
    ccf
    rst $28
    ccf
    rst $18
    ld a, a
    ld a, a
    rst $38
    rst $38
    cp $fe
    cp $ff
    db $fc
    ld sp, hl
    db $fd
    cp $ff
    db $fd
    rst $38
    cp $ff
    db $fd
    rst $38
    ld a, [$f0ff]
    rst $38
    ldh [rIE], a
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
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    db $f4
    rst $38
    ld a, [$fcff]
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    add sp, -$01
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    ret nc

    rst $38
    cp $ff
    db $fd
    rst $38
    cp $ff
    db $dd
    rst $38
    xor $ff
    push de
    rst $38
    xor $ff
    db $dd
    rst $38
    ld [$f5ff], a
    rst $38
    xor d
    rst $38
    ld d, h
    rst $38
    xor d
    rst $38
    ld d, h
    rst $38
    xor b
    rst $38
    ld d, h
    rst $38
    nop
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    ld a, [hl+]
    rst $38
    dec d
    rst $38
    ld a, [hl+]
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
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
    inc bc
    inc bc
    inc bc
    ld bc, $0103
    ld bc, $0108
    dec b
    nop
    ld [bc], a
    nop
    inc b
    nop
    push af
    ld a, [bc]
    ld a, [$7005]
    adc a
    xor b
    ld d, a
    ld e, l
    and d
    xor b
    ld d, a
    ld d, c
    xor [hl]
    and e
    ld e, l
    cp e
    ld bc, $037c
    ret c

    rlca
    inc d
    rrca
    rst $10
    ld a, a
    rst $30
    rst $38
    sbc a
    ei
    inc a
    cp a
    dec sp
    dec e
    ld d, l
    ld e, c
    ld a, a
    rst $10
    rst $28
    rst $38
    rst $38
    rst $38
    rst $18
    ld a, a
    ld a, [c]
    rrca
    ld c, l
    sbc [hl]
    ei
    rst $10
    db $fd
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
    db $fc
    rst $38
    ldh a, [rIE]
    add sp, -$01
    ret nc

    rst $38
    ld [$d5ff], a
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, h
    rst $38
    xor b
    rst $38
    ld d, l
    cp $00
    rst $38
    dec b
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    ld a, [hl+]
    rst $38
    dec d
    rst $38
    ld a, [hl+]
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    ld [bc], a
    rst $38
    ld [$09f7], sp
    or $0b
    db $f4
    rrca
    ldh a, [rNR22]
    add sp, $0e
    pop af
    ld a, [de]
    push hl
    ld l, $d1
    rrca
    pop af
    inc c
    di
    inc e
    db $e3
    ld a, [de]
    rst $20
    ld l, c
    sub a
    ld [de], a
    rst $28
    ld b, c
    rst $38
    xor a
    ldh a, [rVBK]
    ldh a, [$9f]
    ldh [$5f], a
    ldh [$bf], a
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

    add e
    db $fc
    ld b, h
    rst $38
    adc b
    rst $38
    ld d, h
    rst $38
    xor b
    rst $38
    ld d, b
    rst $38
    xor b
    rst $38
    ld d, h
    rst $38
    xor d
    rst $38
    ld d, l
    cp $a8
    rst $38
    ld d, h
    rst $38
    xor b
    rst $38
    ld d, b
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
    db $f4
    rst $38
    db $f4
    rst $38
    ld a, [$faff]
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
    ld a, a
    ld a, a
    cp a
    cp a
    ld a, a
    cp a
    rst $38
    ldh [$7f], a
    ret nc

    ccf
    add b
    ld a, a
    nop
    rst $28
    and b
    ldh [rNR41], a
    ret nz

    nop
    ret nz

    ld bc, $06c0
    ldh [rSC], a
    db $fc
    ld hl, sp-$04
    db $fc
    ld hl, sp+$5c
    ld hl, sp+$68
    ldh a, [$74]
    ldh [$f8], a
    ld hl, sp-$22
    ld a, [$848c]
    inc b
    inc b
    adc c
    add hl, bc
    ld de, $b311
    inc de
    rlca
    inc bc
    rst $00
    add a
    rst $30
    rst $20
    db $e3
    db $e3
    di
    di
    ld sp, hl
    ld sp, hl
    db $fd
    ld sp, hl
    rra
    rst $38
    dec b
    rst $38
    ld a, [hl+]
    rst $18
    dec h
    rst $18
    add d
    rst $38
    ld b, d
    db $fd
    adc a
    ldh a, [$1f]
    ldh [$df], a
    and b
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [$bf], a
    ld b, b
    sbc a
    ld h, b
    ld b, a
    ld hl, sp-$58
    rst $38
    ld d, h
    rst $38
    xor d
    rst $38
    ld d, l
    cp $a9
    cp $53
    db $fc
    xor e
    db $fc
    ld d, a
    ld hl, sp-$59
    ld hl, sp+$5f
    ldh a, [$af]
    ldh a, [$5f]
    ldh [$c3], a
    inc a
    call nc, $a83f
    ld a, a
    call nc, $087f

jr_044_68a1:
    rst $38
    ld d, b
    rst $38
    and b
    rst $38
    ld d, b
    rst $38
    xor b
    rst $38
    ld d, b
    rst $38
    and b
    rst $38
    nop
    rst $38
    and b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    nop
    rst $38
    jr c, jr_044_68a1

    ld a, a
    add b
    ld l, [hl]
    add b
    ld [hl], l
    add b
    cp $00
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    ld a, a
    add b
    rst $38
    nop
    add b
    rst $38
    ret nc

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ld hl, sp-$01
    ld hl, sp-$01
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
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    di
    rst $38
    ld a, d
    sbc a
    rst $18
    rra
    db $eb
    rra
    ld hl, sp+$00
    add [hl]
    ld c, a
    sub a
    rra
    rra
    ccf
    scf
    ccf
    ld a, a
    ccf
    ld c, $07
    ld b, c
    ld l, $6f
    ccf
    ld [hl], a
    ld a, b
    ccf
    ccf
    rra
    rrca
    rla
    rla
    scf
    ccf
    ld a, a
    ld [hl], a
    ld a, a
    ccf
    rst $38
    cp a
    rst $18
    sbc a
    db $fc
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    sub l
    rst $38
    xor d
    rst $38
    ld d, h
    rst $38
    xor c
    cp $55
    cp $ab
    db $fc
    inc de
    db $fc
    pop af
    ld c, $f0
    rrca
    ldh a, [rIF]
    ldh [$1f], a
    add sp, $1f
    ret nz

    ccf
    ret z

    ccf
    sub b
    ld a, a
    xor b
    ld a, a
    ld b, b
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fd
    nop
    ld a, [$f500]
    nop
    ld a, [$f500]
    nop
    ei
    nop
    db $fc
    ld bc, $01fa
    ld a, $c1
    ld [bc], a
    db $fd
    ld bc, $06fc
    ld hl, sp+$05
    ld hl, sp+$0a
    ldh a, [$0d]
    ldh a, [$0a]
    ldh a, [$15]
    ldh [rNR30], a
    ldh [$35], a
    ret nz

    ld a, [hl+]
    ret nz

    dec d
    ret nz

    ld a, d
    add b
    ld [hl], l
    add b
    ld e, $e0
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
    add b
    ld a, a
    db $ed
    ld [bc], a
    ld [hl], l
    nop
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    dec b
    ld a, [$f50a]
    dec b
    ld a, [$fd02]
    ld bc, $02fe
    db $fd
    ld bc, $00fe
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
    ldh [rIE], a
    ldh [rIE], a
    add sp, -$01
    or b
    rst $38
    ld hl, sp-$01
    ld b, c
    cp $fc
    rst $38
    inc a
    rst $30
    inc [hl]
    rst $20
    and h
    rst $00
    call nz, Call_000_04c7
    add a
    rlca
    add a
    rlca
    add a
    rlca
    inc bc
    adc e
    inc bc
    add l
    inc bc
    add l
    adc l
    dec c
    call $dede
    rst $18
    ld e, $1f
    sbc a
    rst $18
    rst $08
    rst $28
    rst $28
    rst $30
    rst $20
    rst $20
    rst $20
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [bc]
    rst $38
    inc b
    rst $38
    ld [$10ff], sp
    rst $38
    ld [$00ff], sp
    rst $38
    rst $38
    add b
    ld a, a
    add b
    ld a, [$f500]
    nop
    ld a, [$f500]
    nop
    ld [$f500], a
    nop
    xor d
    nop
    dec c
    ldh a, [rSB]
    cp $01
    cp $02
    db $fc
    ld bc, $06fc
    ld hl, sp+$05
    ld hl, sp+$02
    ld hl, sp+$0d
    ldh a, [$0a]
    ldh a, [$15]
    ldh [$fa], a
    nop
    ld h, e
    inc e
    add b
    ccf
    ld b, b
    ccf
    pop bc
    ld a, $03
    ld a, h
    add c
    ld a, [hl]
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
    ld [hl], b
    rrca
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor e
    nop
    ld d, h
    ld bc, $01aa
    ld d, h
    inc bc
    xor b
    inc bc
    ld d, h
    inc bc
    inc a
    jp $f805


    ld a, [bc]
    ldh a, [rSB]
    ldh a, [rNR30]
    ldh [$15], a
    ldh [$0a], a
    ldh [$15], a
    ldh [$2a], a
    ret nz

    dec d
    ret nz

    ld l, d
    add b
    ld d, l
    add b
    ld a, [hl+]
    add b
    push de
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    add b
    inc bc
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
    ld d, a
    xor b
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
    ld d, l
    xor d
    ld a, [hl+]
    push de

jr_044_6af4:
    ld d, l
    xor d
    dec bc
    db $f4
    rla
    add sp, $2b
    call nc, $ea15
    ld a, [hl+]
    push de
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    ld a, [bc]
    push af
    ld b, l
    cp d
    ld a, [hl+]
    push de
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    cp $ff
    rst $38
    rst $38

jr_044_6b18:
    call $efff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ei
    rst $38
    ldh a, [$fd]
    ldh [$fe], a
    ldh [$fd], a
    ret nz

    ei
    ret nz

    cp h
    pop bc
    add d
    db $fd
    inc bc
    db $fc
    ld [bc], a
    db $fc
    dec b
    ld hl, sp+$02
    ld hl, sp+$0d
    ldh a, [$0a]
    ldh a, [rDIV]
    ldh a, [$d8]
    jr nz, jr_044_6b96

    jr jr_044_6af4

    inc e
    ld b, a
    jr c, jr_044_6b18

    inc a
    ld b, e
    inc a
    add e
    ld a, h
    adc a
    ld [hl], b
    rrca
    ldh a, [$1f]
    ldh [rIE], a
    nop
    ld b, l
    nop
    and b
    nop
    ld b, b
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
    ld bc, $0100
    nop
    ld b, c
    nop
    ld a, e
    add b
    ld a, h
    add b
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ld h, b
    add b
    ld h, b
    add b
    ld b, b
    add b
    ldh [rP1], a
    ld a, h
    nop
    rst $38
    nop

jr_044_6b96:
    ld a, a
    nop
    cp a
    ld b, b
    cp a
    ld b, b
    rra
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ld e, a
    and b
    ld e, a
    and b
    ld e, a
    and b
    ld e, a
    and b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    xor a
    nop
    ld d, c
    nop
    and b
    nop
    ld d, b
    nop
    and b
    nop
    ld d, b
    nop
    and b
    nop
    ld d, h
    nop
    xor b
    nop
    ld d, c
    nop
    xor b
    nop
    ld d, l
    nop
    and e
    nop
    ld b, c
    nop
    add e
    nop
    ld b, e
    nop
    xor l
    ld [bc], a
    inc [hl]
    jp $f906


    dec b
    ld hl, sp+$0a
    ldh a, [$0d]
    ldh a, [$0a]
    ldh a, [$15]
    ldh [rIE], a
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
    ld b, b
    ld a, a
    add b
    cp a
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
    rst $38
    nop
    ld a, a
    add b
    xor a
    ld d, b
    ld d, a
    xor b
    xor a
    ld d, b
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
    ld bc, $c0fe
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    add sp, -$01
    ld hl, sp-$01
    ld bc, $8ffe
    ldh a, [$fa]
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$82ff]
    ld a, a
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
    inc bc
    db $fc
    ld d, a
    nop
    add b
    nop
    ld b, c
    nop
    add b
    nop
    ld bc, $0300
    nop
    ld bc, $0300
    nop
    dec b
    nop
    ld a, [$f000]
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    ldh [rP1], a
    ld b, b
    nop
    jr z, jr_044_6c66

jr_044_6c66:
    ld d, l
    nop
    ld a, [hl+]
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    push de
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $a200
    nop
    db $fd
    nop
    ld hl, sp+$00
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    ldh [rP1], a
    ld b, b
    nop
    ld a, [hl-]
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
    ei
    inc b
    cp $01
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rra
    ldh [$7f], a
    nop
    xor [hl]
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l

jr_044_6cdf:
    nop
    rst $38
    nop
    db $fc
    ld bc, $00f9

jr_044_6ce6:
    db $fd
    nop
    rst $38
    nop
    db $fd

jr_044_6ceb:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld e, l
    and d
    xor e
    ld d, h
    ld d, l
    xor d
    xor d
    ld d, l
    ld b, l
    cp d
    jr z, jr_044_6cdf

    ld bc, $00fe
    rst $38
    ld b, l
    cp d
    nop
    rst $38
    rst $38
    nop
    rra
    ldh [$8b], a
    nop
    ret nc

    ldh [rIE], a
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    jr c, jr_044_6ceb

    jr nz, jr_044_6ce6

    ld b, b
    add b
    nop
    add b
    add b
    nop
    add b
    nop
    nop
    nop
    add sp, $00
    db $fd
    nop
    ld a, [$f500]
    nop
    ld [$d500], a
    nop
    xor d
    nop
    ld d, l
    nop
    xor b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    nop
    ld bc, $4000
    nop
    and b
    nop
    nop
    nop
    and b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld b, b
    nop
    nop
    nop
    stop
    jr z, jr_044_6d72

jr_044_6d72:
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    pop de
    nop
    ld a, [$fe00]
    nop
    cp $00
    db $fc
    nop
    cp $00
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld a, [$f000]
    nop
    ld a, [$f000]
    nop
    ld a, [$5400]
    nop
    adc [hl]
    nop
    ld e, a
    nop
    dec de
    ldh [$c7], a
    ld hl, sp-$1f
    ld hl, sp-$0b
    ld hl, sp-$0e
    ld hl, sp-$0b
    ld hl, sp-$06
    ld hl, sp-$03
    ld hl, sp+$07
    ld hl, sp+$47
    ld hl, sp+$5f
    ld hl, sp+$7f
    ld hl, sp+$6f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$78
    ld hl, sp+$78
    ld hl, sp+$78
    ld hl, sp-$08
    ld a, b
    ld hl, sp+$78
    db $fc
    ld a, b
    ld hl, sp+$78
    ld a, h
    ld a, b
    ld hl, sp+$78
    ld a, l
    ld a, b
    cp $78
    ld a, c
    ld a, h
    ld a, [$797c]
    ld a, h
    ld a, [$f97c]
    ld a, h
    ld a, [$fb7c]
    ld a, h
    rst $38
    ld a, h
    ld a, e
    inc a
    add sp, -$80
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    and d
    rra
    ld e, $01
    rra
    nop
    rra
    nop
    ccf
    nop
    rra
    nop
    ccf
    nop
    dec d
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
    jr nz, jr_044_6e46

jr_044_6e46:
    ld b, b
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
    ld bc, $0000
    nop
    nop
    nop
    ld b, b
    nop
    and b
    nop
    ld d, b
    nop
    and b
    nop
    ld d, b
    nop
    and b
    nop
    ld b, b
    nop
    and b
    nop
    ld b, b
    nop
    and b
    nop
    ld b, b
    nop
    and b
    nop
    ld b, b
    nop
    jr z, jr_044_6e7e

jr_044_6e7e:
    dec d
    nop
    ld a, [hl+]
    nop
    ld [hl], l
    nop
    cpl
    nop
    ld d, l
    nop
    ld a, $00
    ld e, a
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
    rla
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld b, l
    nop
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    nop
    ld bc, $0000
    nop
    dec b
    nop
    ld [$0000], sp
    nop
    ld [$0000], sp
    nop
    add b
    nop
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
    cp a
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
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    ld a, [$5505]
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    ld a, [hl+]
    push de
    nop
    rst $38
    nop
    rst $38
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    inc c
    inc bc
    nop
    nop
    db $fd
    cp $87
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec b
    rst $38
    ei
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ld [hl], b
    nop
    and b
    nop
    dec d
    nop
    ld a, [bc]
    nop
    dec d
    nop
    ld a, [bc]
    nop
    dec d
    nop
    ld a, [bc]
    nop
    dec d
    nop
    ld [bc], a
    nop
    add l
    nop
    ld b, b
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
    ld b, l
    nop
    ld a, [bc]
    nop
    ld bc, $0200
    nop
    dec b
    nop
    adc d
    nop
    dec d
    nop
    xor d
    nop
    dec d
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
    ld bc, $0000
    nop
    ld b, c
    nop
    cp d
    nop
    ld a, h
    nop
    cp $00
    db $fc
    nop
    cp $00
    db $fc
    nop
    cp $00
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    db $fc
    nop
    ld hl, sp+$00
    db $fd
    nop
    ld a, [$1500]
    nop
    adc a
    nop
    ld d, b
    rlca
    dec l
    ld [bc], a
    ld e, [hl]
    ld bc, $032c
    ld e, h
    inc bc
    and d
    dec c
    ld d, [hl]
    add hl, bc
    inc l
    inc bc
    ld e, [hl]
    ld bc, $013e
    ld e, $01
    jr nz, jr_044_6fc9

    inc e
    inc bc
    cp h
    inc bc
    ld e, e
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
    push af
    ld a, [bc]
    ld a, [$2a05]
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor e

jr_044_6fc9:
    nop
    ld d, l
    nop
    xor e
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $ff01
    ld [hl], e
    rrca
    adc e
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
    adc e
    ld a, a
    inc de
    rlca
    inc bc
    rlca
    rla
    rlca
    rrca
    rlca
    rlca
    rlca
    rrca
    rlca
    inc b
    rlca
    and c
    ld c, $f5
    ld c, $fa
    nop
    ld a, b
    nop
    cp b
    nop
    ld d, b
    nop
    xor b
    nop
    ld d, b
    nop
    xor b
    nop
    stop
    ld a, [bc]
    nop
    rlca
    nop
    rrca
    nop
    rlca
    nop
    dec bc
    nop
    dec d
    nop
    dec bc
    nop
    dec d
    nop
    dec bc
    nop
    dec d
    nop
    add d
    nop
    ld b, b
    nop
    add b
    nop
    ld b, b
    nop
    add b
    nop
    ld b, b
    nop
    add b
    nop
    ld b, b
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    ld b, b
    nop
    ld a, [hl+]
    nop
    ld e, a
    nop
    cpl
    nop
    ld e, a
    nop
    rst $28
    nop
    ld a, a
    nop
    cp a
    nop
    ld a, a
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
    rla
    nop
    ld [bc], a
    nop
    inc b
    nop
    ld [bc], a
    nop
    dec b
    nop
    ld a, [bc]
    nop
    dec d
    nop
    ld [bc], a
    nop
    dec d
    nop
    ld a, [hl+]
    nop
    dec d
    nop
    ld a, [hl+]
    nop
    dec d

jr_044_706b:
    nop
    xor d
    nop
    ld d, l

jr_044_706f:
    nop
    xor d
    nop
    ld a, a
    add b
    ret nz

    ccf
    ldh a, [rIF]
    ldh a, [rIF]
    ld b, b
    cp a
    nop
    rst $38
    ld b, b
    cp a
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    jr nz, jr_044_706b

    ld h, b
    sbc a
    jr nz, jr_044_706f

    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    ld a, [$f505]
    ld a, [bc]
    ld [$f515], a
    ld a, [bc]
    ld [$2a15], a
    nop
    ld a, b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld c, a
    cp a
    sbc [hl]
    ld bc, $8060
    pop bc
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
    ld a, a
    rst $38
    ld a, [hl+]
    rst $38
    push bc
    ccf
    ret z

    scf
    ld bc, $201f
    rrca
    add hl, de
    rlca
    inc l
    inc bc
    ld d, $01
    ld a, [bc]
    ld bc, HeaderLogo
    xor d
    ld bc, $00ff
    cp $00
    rst $38
    nop
    cp $00
    rst $38
    nop
    cp $00
    rst $38
    nop
    cp $00
    ld a, l
    nop
    ld a, [$1d04]
    nop
    inc bc
    nop
    rlca
    nop
    ld a, [bc]
    ld bc, $0106
    dec bc
    nop
    dec b
    ld [bc], a
    dec bc
    nop
    rlca
    nop
    dec c
    ld [bc], a
    dec b
    ld [bc], a
    adc l
    ld [bc], a
    rst $30
    nop
    ld a, [$fd00]
    nop
    ld a, [$fd00]
    nop
    ld a, [$fd00]
    nop
    ld a, [$fd00]
    nop
    ld [$ed10], a
    db $10
    sbc d
    ld h, b
    add l

jr_044_7143:
    ld [hl], b
    ld [$5f10], a
    nop
    and b
    rrca
    ld d, b
    rrca
    and b
    rrca
    ld d, b
    rrca
    and b
    rrca
    ld d, b
    rrca
    or b

jr_044_7155:
    rrca
    ld d, b
    rrca
    or b
    rrca
    ld d, b
    rrca
    and b
    rra
    ld b, b
    rra
    and b
    rra
    ld b, b
    rra
    ld h, b
    sbc a
    inc e
    db $e3
    ld a, [de]
    pop hl
    inc d
    db $e3
    inc l
    jp $c730


    jr z, @-$37

    jr nc, jr_044_7143

    jr nz, jr_044_7155

    nop
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
    cp $01
    db $fd
    ld [bc], a
    ld a, [$f505]
    ld a, [bc]
    xor d
    ld d, l
    push de
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
    xor d
    nop
    ld a, l
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
    ld a, a
    rst $38
    ld [$ff17], a
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rla
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp b
    rlca
    ld d, l
    nop
    xor a
    nop
    ld d, l
    nop
    xor e
    nop
    ld d, l
    nop
    xor e
    nop
    ld d, l
    nop
    xor a
    nop
    ld d, l
    nop
    cp $00
    ld bc, $00fe
    rst $38
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
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ld e, [hl]
    ld bc, $00bf
    ld d, a
    nop
    xor a
    nop
    ld d, a
    nop
    cp e
    nop
    ld d, a
    nop
    cp a
    nop
    ld d, a
    nop
    cp a
    nop
    ld e, a
    nop
    xor a
    nop
    ld e, a
    nop
    ccf
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
    ld bc, $02ff
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    ld a, [hl+]
    rst $38
    dec d
    rst $38
    ld a, [hl+]
    rst $38
    ld d, l
    rst $38
    ld a, [bc]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor b
    ld d, a
    ld d, h
    xor e
    and b
    ld e, a
    ld b, b
    cp a
    add b
    ld a, a
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
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
    cp a
    rst $38
    call $ff37
    nop
    pop af
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
    cp a
    rst $38
    ld e, a
    rst $38
    xor e
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d

jr_044_7299:
    rst $38
    ld b, b
    rst $38
    ccf
    ret nz

    ld a, $c1
    ccf
    ret nz

    pop bc
    ld a, $c0
    ccf
    push bc
    ccf
    jp nz, $c13f

    ccf
    jp nz, $c53f

    ccf
    jp nz, $c13f

    ccf
    jp nz, $c13f

    ccf
    jr nz, jr_044_7299

    ld a, $c1
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

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    pop bc
    ld a, $c4
    ccf
    jp z, $c13f

    ccf
    jp nz, $c13f

    ccf
    jp z, $c13f

    ccf
    adc d
    ld a, a
    push de
    ccf
    adc d
    ld a, a
    sub l
    ld a, a
    adc d
    ld a, a
    dec b
    rst $38
    ld [hl+], a
    rst $18
    ld sp, $20cf
    rst $18
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld d, l
    rst $38
    ld a, [hl+]
    rst $38
    ld d, l
    rst $38
    ld a, [hl+]
    rst $38
    ld d, l
    rst $38
    ld a, [hl+]
    rst $38
    ld d, l
    rst $38
    ld a, [hl+]
    rst $38
    ld d, l
    rst $38
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
    and b
    ld e, a
    ld b, b
    cp a
    add b

jr_044_732f:
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
    ld [bc], a
    rst $38
    cp $01
    rst $38
    nop
    cp $01
    jr jr_044_732f

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
    dec bc
    rst $38
    db $fd
    inc bc
    pop hl
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
    ld e, a
    rst $38
    xor a
    rst $38
    ld e, a
    rst $38
    rrca
    rst $38
    sbc a
    ld a, a
    adc a
    ld a, a
    rrca
    rst $38
    rrca
    rst $38
    ld e, a
    rst $38
    xor a
    rst $38
    ld e, a
    rst $38
    xor a
    rst $38
    ld e, a
    rst $38
    xor a
    rst $38
    ld e, a
    rst $38
    xor a
    rst $38
    ld d, a
    rst $38
    xor a
    rst $38
    rlca
    rst $38
    rst $00
    ccf
    add a
    ld a, a
    rst $00
    ccf
    rst $00
    ccf
    add a
    ld a, a
    rst $00
    ccf
    rst $00
    ccf
    add a
    ld a, a
    and a
    ld e, a
    rst $00
    ccf
    ld b, a
    cp a
    rlca
    rst $38
    xor a
    rst $38
    ld d, a
    rst $38
    xor a
    rst $38
    ld d, a
    rst $38
    xor a
    rst $38
    ld d, a
    rst $38
    xor a
    rst $38
    ld d, a
    rst $38
    xor a
    rst $38
    ld d, a
    rst $38
    xor a
    rst $38
    ld d, a
    rst $38
    xor a
    rst $38
    ld d, a
    rst $38
    dec bc
    rst $38
    rla
    rst $38
    dec bc
    rst $38
    rlca
    rst $38
    dec hl
    rst $38
    rla
    rst $38
    dec hl
    rst $38
    rlca
    rst $38
    xor e
    rst $38
    ld b, a
    rst $38
    xor e
    rst $38
    ld d, a
    rst $38
    dec hl
    rst $38
    rla
    rst $38
    inc bc
    rst $38
    ld b, a
    rst $38
    xor e
    rst $38
    ld d, a
    rst $38
    xor e
    rst $38
    ld d, a
    rst $38
    xor e
    rst $38
    ld d, a
    rst $38
    xor e
    rst $38
    ld d, a
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $3fff
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    ld a, a
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
    ld sp, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $fe
    db $fc
    db $fd
    db $fc
    cp $f8
    db $fc
    ld hl, sp-$08
    ldh a, [$fc]
    ldh a, [$f8]
    ldh [$fc], a
    ldh [$d8], a
    ldh [$f0], a
    ret nz

    sbc b
    ldh [$90], a
    ldh [$a0], a
    ret nz

    or b
    ret nz

    and b
    add b
    db $f4
    nop
    ld e, a
    and b
    xor a
    ld d, b
    ld c, a
    or b
    xor a
    ld d, b
    ld b, l
    cp d
    dec hl
    call nc, $f807
    dec bc
    db $f4
    ld a, [$fc00]
    nop
    ld a, d
    add b
    ld a, l
    add b
    ld a, d
    add b
    ld a, h
    add b
    ld [$dc80], a
    add b
    add sp, -$80
    ret c

    add b
    ld hl, sp-$80
    call nc, $e880
    add b
    call nc, $ec80
    add b
    db $e4
    add b
    db $ec
    add b
    ld [hl], h
    add b
    ld a, h
    add b
    or h
    ret nz

    xor $c0
    ld [hl], $c0
    ld l, [hl]
    add b
    inc [hl]
    ret nz

    xor d
    ret nz

    or $80
    and d
    ret nz

    or $c0
    ld [c], a
    ret nz

    di
    add b
    ld [$d5c0], a
    ldh [$a2], a
    ret nz

    pop de
    ldh [$eb], a
    ldh [$95], a
    ldh [$e8], a
    add b
    pop de
    add b
    ld a, [$d7c1]
    db $e3
    rst $28
    rst $20
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
    cp $dc
    db $fc
    ld a, [$d7f0]
    ldh [$fa], a
    ret nz

    call nc, $d8e0
    ldh [$e5], a
    ldh a, [$f8]
    ldh a, [$fc]
    ldh [$fa], a
    ldh [$fc], a
    ldh [$f8], a
    ldh [$fd], a
    ldh [$fa], a
    ldh [$fc], a
    ldh [$f8], a
    ldh [$fc], a
    ldh [$f2], a
    add sp, -$04
    ldh [$fa], a
    ldh [$e4], a
    ld hl, sp-$0e
    ld hl, sp-$0c
    ld hl, sp-$02
    ldh a, [$fc]
    ldh a, [$e0]
    rra
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    add c
    ld a, a
    add c
    ld a, a
    add e
    ld a, a
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    cp $3e
    cp $3d
    db $fc
    ld a, h
    db $fc
    ld a, h
    ld hl, sp-$06
    ld hl, sp-$04
    ldh a, [$f8]
    ldh a, [$f4]
    ldh [$e8], a
    ldh [$d0], a
    ret nz

    ldh [$c0], a
    ret nc

    add b
    ldh [$80], a
    ret nz

    add b
    ret nz

    add b
    ret nz

    nop
    add b
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld e, l
    and d

jr_044_752a:
    cp e
    ld b, h
    ld h, a
    sbc b

jr_044_752e:
    xor a
    ld d, b
    and c
    ld bc, $03c7
    adc a
    rlca
    rrca
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
    rst $38
    rst $38
    cp $fc
    ld hl, sp-$10
    ldh a, [$e0]
    ret nz

    ret nz

    add b
    nop
    nop
    ld b, c
    nop
    ld d, l
    xor d
    xor e
    ld d, h
    rla
    add sp, $3f
    ret nz

    ld [hl], a
    adc b
    xor e
    ld d, h
    ld a, a
    add b
    cp a
    ld b, b
    ld a, a
    add b
    xor a
    ld d, b
    rst $38
    nop
    cp a
    ld b, b
    rst $18
    jr nz, jr_044_752a

    ld b, b
    rst $18
    jr nz, jr_044_752e

    ld b, b
    rst $18
    jr nz, @+$01

    nop
    rst $18
    jr nz, @+$01

    nop
    rst $18
    jr nz, @+$01

    nop
    rst $18
    jr nz, @+$01

    nop
    ld a, h
    db $fc
    ld a, h
    ld hl, sp-$08
    ld hl, sp-$10
    ldh a, [$e0]
    ldh a, [$f4]
    ldh [$e0], a
    ldh [$c0], a
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    and b
    add b
    ld b, b
    nop
    nop
    nop
    nop
    nop
    add b
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
    push af
    ld a, [bc]
    ei
    inc b
    jr z, jr_044_75b2

jr_044_75b2:
    ld b, b
    nop
    add e
    ld bc, $0307
    rlca
    rrca
    rra
    rra
    ccf
    ccf
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
    cp $fe
    db $fc
    ld hl, sp-$10
    ldh a, [$c0]
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fd
    ld [bc], a
    rst $28
    db $10
    ld a, a
    add b
    cp a
    ld b, b
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
    cp $00
    rst $38
    nop
    ei
    nop
    rst $38
    nop
    cp $00
    db $fd
    nop
    ld a, [$f500]
    nop
    ld a, [$fd00]
    nop
    ld [$f500], a
    nop
    ld [$ff00], a
    nop
    cp $00
    db $fd
    nop
    cp $00
    db $fd
    nop
    ld a, [$fd00]
    nop
    ld a, [$f500]
    nop
    cp $00
    db $fd
    nop
    ld a, [$f500]
    nop
    ld a, [$fd00]
    nop
    ld a, [$f700]
    nop
    rst $28
    nop
    db $dd
    nop
    cp $00
    rst $38
    nop
    cp $00
    db $fd
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    nop
    stop
    nop
    nop
    ld bc, $8300
    ld bc, $0703
    rrca
    rrca
    rra
    rra
    cp a
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
    cp $fc
    ld hl, sp-$20
    ldh a, [$e0]
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    rst $30
    ld [$00ff], sp
    ld e, a
    and b
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
    nop
    ld bc, $0302
    inc b
    inc b
    inc b
    inc b
    dec b
    ld b, $07
    ld [$0908], sp
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld [$0808], sp
    ld d, $17
    jr jr_044_76da

    ld a, [de]
    dec de
    ld a, [de]
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [$0808], sp
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_044_76fe

    ld [$2a08], sp
    dec hl
    inc l

jr_044_76da:
    ld [$0808], sp
    dec l
    ld l, $2f
    jr nc, jr_044_7713

    ld [$3332], sp
    inc [hl]
    ld [$3508], sp
    ld [$0808], sp
    ld [$3736], sp
    jr c, jr_044_772a

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $08
    ld [$083f], sp
    ld [$4008], sp
    ld b, c

jr_044_76fe:
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld [$084b], sp
    ld [$4c08], sp
    ld c, l
    inc b
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c

jr_044_7713:
    ld d, d
    inc b
    inc b
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld [$5958], sp
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
    inc b
    ld h, h

jr_044_772a:
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    inc b
    ld l, [hl]
    ld l, a
    ld l, a
    ld [hl], b
    inc b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    inc b
    ld a, d
    ld a, e
    ld l, a
    ld l, a
    ld l, a
    ld a, h
    inc b
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    add h
    inc b
    add l
    add [hl]
    ld l, a
    ld l, a
    ld l, a
    add a
    inc b
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    inc b
    sub b
    sub c
    ld l, a
    ld l, a
    sub d
    sub e
    inc b
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    inc b
    inc b
    sbc h
    sbc l
    ld l, a
    sbc [hl]
    sbc a
    inc b
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    inc b
    xor c
    xor d
    xor e
    xor h
    inc b
    inc b
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
    rst $20
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $1a
    rst $28
    ldh a, [$f1]
    ld a, [c]
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    di
    db $f4
    push af
    or $f7
    ld hl, sp+$1a
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
    inc b
    ld bc, $0701
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0101
    ld bc, $0707
    rlca
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
    ld bc, $0101
    rlca
    rlca
    rlca
    inc b
    nop
    nop
    nop
    inc b
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    rlca
    rlca
    rlca
    ld bc, $0001
    nop
    inc b
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld bc, $0707
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld bc, $0101
    inc b
    rlca
    rlca
    rlca
    dec b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc bc
    ld bc, $0102
    ld bc, $0301
    rlca
    rlca
    rlca
    dec b
    inc b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc b
    ld [bc], a
    inc b
    ld bc, $0707
    rlca
    rlca
    dec b
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
    inc b
    rlca
    rlca
    rlca
    rlca
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
    inc b
    inc b
    rlca
    rlca
    rlca
    rlca
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
    inc b
    inc b
    rlca
    rlca
    rlca
    rlca
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
    inc b
    nop
    rlca
    rlca
    rlca
    rlca
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
    inc b
    inc b
    rlca
    rlca
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
    inc b
    inc b
    rlca
    rlca
    rlca
    rlca
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
    inc b
    inc b
    rlca
    rlca
    rlca
    rlca
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
    inc b
    inc b
    inc b
    rlca
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
    inc bc
    inc b
    ld bc, $0707
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
    inc bc
    inc b
    inc b
    rlca
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
    inc bc
    inc b
    inc b
    rlca
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
    ld bc, $0404
    rlca
    rlca
    rlca
    ld d, l
    xor d
    xor [hl]
    ld d, c
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld e, l
    and d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    cp d
    ld b, l
    ld d, l
    xor d
    cp d
    ld b, l
    ld [hl], l
    adc d
    cp d
    ld b, l
    push af
    ld a, [bc]
    ld [$f515], a
    ld a, [bc]
    cp d
    ld b, l
    ld [hl], l
    adc d
    cp d
    ld b, l
    push af
    ld a, [bc]
    ld [$f515], a
    ld a, [bc]
    ld [$f515], a
    ld a, [bc]
    ld a, [$fd05]
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
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    ld [$d415], a
    dec hl
    xor b
    ld d, a
    ret nc

    cpl
    and b
    ld e, a
    ld d, b
    xor a
    and b
    ld e, a
    ld b, b
    cp a
    and b
    ld e, a
    ld b, b
    cp a
    add b
    ld a, a
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ld bc, $feff
    ld bc, $01fe
    rst $38
    ld bc, $01ff
    db $fd
    inc bc
    ld sp, hl
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    and a
    ld hl, sp+$7f
    add b
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
    push hl
    rra
    adc d
    ld a, a
    call c, $bf03
    nop
    ld a, a
    nop
    xor e
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor e
    nop
    ld d, b
    rlca
    ld d, b
    xor a
    and b
    ld e, a
    ld b, c
    cp [hl]
    and b
    ld e, a
    ld d, b
    xor a
    and b
    ld e, a
    ld b, h
    cp e
    and d
    ld e, l
    ld d, b
    xor a
    xor b
    ld d, a
    ld d, h
    xor e
    and b
    ld e, a
    ld d, h
    xor e
    xor d
    ld d, l
    ld d, h
    xor e
    xor d
    ld d, l
    ld d, l
    xor d
    xor b
    ld d, a
    ld d, b
    xor a
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, h
    xor e
    xor d
    ld d, l
    ld d, h
    xor e
    xor d
    ld d, l
    ld d, h
    xor e
    xor d
    ld d, l
    ld d, h
    xor e
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
    call nc, $e02b
    rra
    ldh [$1f], a
    db $e3
    inc e
    push de
    ld a, [hl+]
    ldh [$1f], a
    rlca
    rlca
    rra
    rra
    dec e
    ld e, $07
    jr jr_044_7a48

    db $10
    rrca
    db $10
    rrca
    db $10
    rlca
    jr jr_044_7a44

    inc e
    inc bc
    inc e

jr_044_7a44:
    ld bc, $201e
    ccf

jr_044_7a48:
    jr nz, jr_044_7a89

    jr nz, jr_044_7a8b

    jr nc, @+$41

    jr nc, jr_044_7a8f

    jr c, jr_044_7a91

    inc a
    ccf
    inc a
    ccf
    ld a, $3f
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    ldh a, [rIF]
    rst $38
    nop
    rst $38

jr_044_7a89:
    nop
    rst $38

jr_044_7a8b:
    nop
    ld hl, sp+$07
    push bc

jr_044_7a8f:
    ccf
    xor d

jr_044_7a91:
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    dec d
    rst $38
    ldh a, [rIF]
    rst $30
    nop
    xor a
    nop
    ld e, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor e
    nop
    ld d, h
    inc bc
    or d
    rrca
    ld b, b
    ccf
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    add b
    ld a, a
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    ld a, c
    rlca
    rra
    rst $38
    cp $01
    xor e
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $28
    rst $38
    db $fc
    rst $38
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
    cp $01
    cp $01
    cp $01
    rst $38
    ld bc, $01ff
    ld a, a
    add c
    ccf
    pop bc
    ccf
    pop bc
    rra
    pop hl
    rrca
    pop af
    dec b
    ei
    ld bc, $00ff
    rst $38
    nop
    rst $38
    add d
    rst $38
    jp nz, $c0ff

    rst $38
    ld [c], a
    rst $38
    ld a, [c]
    rst $38
    ld a, [$feff]
    rst $38
    cp $ff
    rst $38
    db $fc
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor e
    rst $38
    db $fc
    inc bc
    ldh a, [rIF]
    sub l
    ld a, a
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    pop hl
    rra
    xor e
    nop
    ld [hl], a
    nop
    xor b
    rlca
    ld h, l
    rra
    adc d
    ld a, a
    dec b
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    and d
    ld e, a
    di
    rrca
    di
    rrca
    pop bc
    ccf
    add b
    ld a, a
    add sp, $17
    ld hl, sp+$07
    add sp, $17
    rla
    rst $38
    inc de
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $07ff
    rst $38
    inc bc
    rst $38
    ld bc, $07ff
    rst $38
    rlca
    rst $38
    ld hl, sp+$07
    ld a, h
    add e
    db $fc
    add e
    ld [c], a
    db $fd
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, e
    add a
    rra
    db $e3
    inc bc
    rst $38
    rlca
    ei
    inc bc
    rst $38
    inc bc
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
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
    cp $ff
    ld hl, sp-$01
    ld [hl], h
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    adc d
    rst $38
    dec b
    rst $38
    xor c
    cp $57
    ld hl, sp-$71
    ld [hl], b
    inc d
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    ld a, [bc]
    rst $38
    ld d, b
    rst $38
    and b
    rst $38
    ld d, c
    rst $38
    ld d, a
    rst $38
    db $db
    rst $38
    db $db
    rst $38
    ld a, [$f3ff]
    rst $38
    ld a, e
    rst $38
    ccf
    rst $38
    rra
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
    add b
    ld a, a
    nop
    rst $38
    add b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    add e
    rst $38
    ldh [rIE], a
    rra
    ldh [rIE], a
    nop
    rlca
    ld hl, sp-$56
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, e
    db $fc
    xor a
    ldh a, [$3f]
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    adc b
    rst $38
    ld d, l
    rst $38
    add d
    rst $38
    ld d, l
    rst $38
    ld a, [hl+]
    rst $38
    ld d, c
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    rst $38
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
    rst $18
    rst $38
    rst $28
    rst $38
    ld b, a
    rst $38
    add a
    rst $38
    rst $00
    rst $38
    rst $30
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    add hl, bc
    rst $38
    rla
    rst $38
    rlca
    rst $38
    ld bc, $23ff
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    db $d3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ei
    db $f4
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
    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc bc
    db $fc
    ld d, h
    rst $38
    and e
    db $fc
    ld e, a
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
    nop
    ld a, a
    add b
    ld d, b
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor b
    rst $38
    ld d, c
    rst $38
    rst $38
    add b
    db $fc
    ret nz

    rst $38
    ldh [rIE], a
    pop af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $fe
    rst $38
    rst $38
    cp $fc
    rst $38
    rst $38
    cp $fd
    cp $ff
    db $fc
    db $fd
    cp $df
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    db $fd
    db $fc
    cp $fc
    push af
    db $fc
    or $fc
    db $f4
    db $fc
    db $f4
    db $fc
    db $f4
    db $fc
    or h
    db $fc
    db $fc
    db $f4
    db $fc
    db $f4
    ldh a, [$fc]
    db $f4
    db $fc
    ldh a, [$fc]
    ldh a, [$fc]
    db $f4
    ld hl, sp-$10
    db $fc
    db $f4
    ld hl, sp-$04
    ld hl, sp-$08
    db $fc
    or h
    ld hl, sp-$5c
    ld hl, sp-$14
    ld hl, sp-$04
    ld hl, sp-$08
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
    rst $38
    rst $38
    rst $38
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
    nop
    cp $01
    ld a, [$e507]
    rra
    ld a, [hl+]
    rst $38
    dec b
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add c
    cp $55
    rst $38
    xor d
    rst $38
    ld d, h
    rst $38
    xor c
    cp $17
    ld hl, sp+$0e
    nop
    db $e3
    nop
    ccf
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
    pop af
    cp $77
    adc b
    or a
    ld c, b
    ccf
    ret nz

    ld a, $c0
    db $fd
    nop
    dec b
    ld a, [$fd02]
    nop
    rst $38
    nop
    rst $38
    dec d
    ld [$d42b], a
    rlca
    ld hl, sp+$2b
    call nc, $e817
    xor a
    ld d, b
    ld a, a
    add b
    cp a
    ld b, b
    ld a, a
    add b
    cp a
    ld b, b
    ld a, a
    add b
    cp a
    ld b, b
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ldh [$c0], a
    ret nz

    ret nz

    ldh [$c0], a
    ret nz

    ret nz

    ldh [$c0], a
    ret nz

    ret nz

    ldh [$c0], a
    ret nz

    ret nz

    ldh [$c0], a
    ret nz

    ret nz

    ldh [$c0], a
    ret nz

    ret nz

    ldh [$c0], a
    ret nz

    ret nz

    ldh [$c0], a
    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh [$fe], a
    db $fc
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    ld hl, sp-$0c
    ld a, h
    db $f4
    ld [hl], h
    db $ec
    ld l, b
    ld hl, sp+$68
    ld hl, sp-$0e
    ld hl, sp-$03
    ldh a, [$fa]
    ldh a, [$f7]
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    cp $ff
    db $fd
    rst $38
    ld [$fcff], a
    rst $38
    cp $ff
    sbc $ff
    xor [hl]
    rst $38
    dec b
    rst $38
    adc [hl]
    ld a, a
    ld d, l
    rst $38
    xor d
    rst $38
    ld e, l

jr_044_7eb7:
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    ld [bc], a
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
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ldh [$1f], a
    jr nz, jr_044_7eb7

    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
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
    rst $38
    rst $38
    rst $38
    or $f8
    ld [hl], a
    add b
    rst $28
    nop
    rst $18
    nop
    xor d
    nop
    ld d, h
    nop
    xor d
    nop
    dec d
    nop
    push af
    ld a, [bc]
    xor d
    ld d, l
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
    cp $00
    push af
    nop
    ld a, [$f500]
    nop
    ld [$fd00], a
    nop
    ld a, [$f500]
    nop
    ld [$f500], a
    nop
    xor d
    nop
    db $dd
    nop
    cp d
    nop
    push af
    nop
    cp d
    nop
    push de
    nop
    xor [hl]
    nop
    rst $18
    nop
    cp [hl]
    nop
    db $fd
    nop
    xor $00
    push af
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
    nop
    rst $38
    nop
    ld a, [$aa05]
    nop
    ld d, l
    nop
    xor d
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    db $fd
    cp $fc
    rst $38
    rst $38
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
    rst $38
    ld bc, $15fe
    cp $0b
    cp $15
    cp $3f
    rst $38
    rst $38

Call_044_7f9f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    pop bc
    ccf
    rst $38
    nop
    cp $01
    ld hl, sp+$07
    pop af
    rrca
    ld [c], a
    rra
    push bc
    ccf
    ld a, [bc]
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38
    dec b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fc
    inc bc
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
    ei
    db $fc
    ld d, l
    add b
    ld d, l
    xor d
    ld a, [hl+]
    push de
    ld d, l
    xor d
    xor d
    ld d, l
    ld e, l
    and d
    cp a
    ld b, b
    push af
    ld a, [bc]
    cp d
    ld b, l
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
    rst $38
    nop
