SECTION "ROM Bank $01c", ROMX[$4000], BANK[$1c]

    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    sub d
    sub e
    ld [bc], a
    ld [bc], a
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    sbc d
    sbc e
    sbc h
    ld a, [bc]
    ld [bc], a
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    ld [bc], a
    ld [bc], a
    and h
    and l
    ld [bc], a
    ld [bc], a
    ld [bc], a
    and [hl]
    ld [bc], a
    and a
    xor b
    xor c
    xor d
    sub a
    sbc b
    xor e
    ld a, l
    xor h
    xor l
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec [hl]
    xor [hl]
    ld [hl], e
    xor a
    ld h, e
    or b
    or c
    and c
    and d
    or d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    or e
    ld [hl], e
    or h
    or l
    or [hl]
    or a
    sub a
    sbc b
    cp b
    ld h, e
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld bc, $0101
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
    rlca
    ld b, a
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
    rlca
    rlca
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
    jr nz, jr_01c_40d1

    rlca
    ld bc, $0101
    ld bc, $0001

jr_01c_40d1:
    nop
    nop
    nop
    rlca
    rlca
    nop
    inc b
    inc b
    nop
    rlca
    rlca
    ld bc, $0101
    ld bc, $0000
    nop
    rlca
    ld bc, $0407
    ld b, $06
    inc b
    rlca
    rlca
    rlca
    rlca
    rlca
    dec b
    nop
    nop
    dec b
    ld bc, $0100
    ld [bc], a
    ld b, $01
    ld b, $07
    rlca
    daa
    rlca
    rlca
    ld bc, $0100
    ld bc, $0100
    ld bc, $0602
    ld b, $04
    rlca
    rlca
    rlca
    rlca
    ld bc, $0001
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    inc b
    dec b
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0520
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0505
    ld bc, $0101
    ld bc, $0501
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0501
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0141
    nop
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    dec b
    ld hl, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    dec b
    ld bc, $0101
    ld bc, $2101
    ld bc, $0101
    ld bc, $0101
    ld hl, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $feff
    ld bc, $07f8
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
    ld bc, $02ff
    rst $38
    inc b
    rst $38
    add hl, bc
    cp $0a
    db $fc
    inc d
    ld hl, sp+$28
    ldh a, [rHDMA1]
    ldh [$a2], a
    pop bc
    ld b, l
    add e
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
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
    cp $ff
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
    ld bc, $02ff
    rst $38
    ld [bc], a
    rst $38
    dec b
    cp $0a
    db $fc
    inc d
    ld hl, sp+$28
    ldh a, [rHDMA1]
    ldh [$a2], a
    pop bc
    ld b, l
    add e
    ld a, [bc]
    add a
    sub h
    rrca
    jr z, jr_01c_42c3

    ld d, b
    ccf
    ld d, b
    ccf
    and b
    ld a, a
    ld b, b
    rst $38
    add b
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
    cp $01
    db $fc
    inc bc
    db $fc

jr_01c_42c3:
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
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
    ld bc, $07ff
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
    ld bc, $02ff
    rst $38
    inc b
    rst $38
    add hl, bc
    cp $12
    db $fc
    inc h
    ld hl, sp+$49
    ldh a, [$92]
    pop hl
    dec h
    jp $874a


    sub h
    rrca
    jr z, jr_01c_4331

    jr nc, jr_01c_4333

    ld b, b
    ccf
    and b
    ld a, a
    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ret nz

    ccf
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
    rst $38
    nop

jr_01c_4331:
    rst $38
    nop

jr_01c_4333:
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
    rst $38
    rlca
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
    cp $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02ff
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    add hl, bc
    cp $12
    db $fc
    inc h
    ld hl, sp+$49
    ldh a, [$92]
    pop hl
    and l
    jp $864b


    sub a
    inc c
    rla
    inc c
    cpl
    jr jr_01c_43d1

    jr nc, jr_01c_4331

    ld h, b
    ld d, [hl]
    ret nz

    pop hl
    add b
    ld d, b
    add b
    or b
    ld b, b
    sub b
    ld h, b
    adc b
    ld [hl], b
    adc h
    ld [hl], b
    ld c, [hl]
    or b
    cpl
    ret nc

    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$03
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
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    and b
    rst $38
    sbc b
    ccf
    call nz, $e21f
    rlca
    ld sp, hl
    inc bc
    db $fc
    ld bc, $80fe
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    ld a, a

jr_01c_43d1:
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    dec b
    rst $38
    ld [$13ff], sp
    db $fc
    dec h
    ld hl, sp+$29
    ldh a, [rHDMA2]
    pop hl
    and l
    jp $876b


    ld d, d
    adc a
    daa
    call c, $f80f
    rrca
    ld hl, sp-$61
    ld [hl], b
    cp [hl]
    ld h, b
    ld a, h
    ret nz

    ld hl, sp-$80
    ldh a, [rP1]
    ldh [rP1], a
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
    add b
    nop
    ld b, b
    nop
    jr nz, jr_01c_4410

jr_01c_4410:
    stop
    ld [$0400], sp
    nop
    ld [bc], a
    nop
    add c
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    db $fd
    nop
    ld a, a
    add b
    ccf
    ret nz

    inc e
    ldh [$0d], a
    ldh a, [rDIV]
    ld hl, sp+$02
    db $fc
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
    ld b, b
    rst $38
    jr nz, jr_01c_44c4

    sub b
    ccf
    call z, $e21f
    rlca
    ld sp, hl
    inc bc
    db $fc
    ld bc, $80fe
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    ld a, a
    ld a, a
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
    ld a, a
    rst $38
    sbc a
    ld a, a
    rst $28
    rra
    scf
    rrca
    dec de
    rlca
    dec b
    inc bc
    ld [bc], a
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
    ld bc, $0300
    nop
    rlca
    ld bc, $030e
    dec c
    ld b, $1e
    inc b
    cp h
    ld [$087d], sp
    ld l, a
    add hl, de
    reti


    ccf
    ld a, e
    rst $38
    rst $38
    rst $38
    ldh a, [$7f]
    xor $31
    ld a, $01
    ld d, $01
    adc b
    inc bc
    rst $38
    nop
    rst $38
    ld bc, $02fe
    db $fc
    inc c
    ld hl, sp+$18
    ldh a, [$30]
    ldh [$30], a
    ldh [$38], a
    ldh a, [$3e]
    db $ec
    cpl

jr_01c_44c4:
    di
    inc de
    ldh a, [$30]
    pop af
    ld [hl], c
    ei
    ld a, [$fcff]
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
    cp $00
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$08
    ld hl, sp+$18
    ld hl, sp+$08
    ld hl, sp+$00
    db $fc
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
    nop
    rst $38
    ret nz

    rst $38
    jr nz, @+$01

    rst $38
    db $10
    ccf
    ret z

    rra
    and $0f
    pop af
    inc bc
    db $fc
    ld bc, $00fe
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
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
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    ld a, a
    ld b, b
    ccf
    jr nc, jr_01c_453d

    add hl, de
    rlca
    dec b
    inc bc
    rrca
    inc bc
    rra
    inc bc
    ccf
    rlca
    ld a, c
    rrca
    ld [hl], c
    rra
    db $e3

jr_01c_453d:
    scf
    rst $00
    ld l, a
    sub [hl]
    rst $08
    xor [hl]
    rra
    ld e, $3f
    ld [hl], d
    cpl
    ld c, c
    ld h, a
    ld c, l
    db $e3
    push bc
    db $e3
    pop de
    db $e3
    jp z, $86f7

    rst $38
    inc c
    rst $38
    inc c
    rst $38
    ld b, $ff
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    cp $0e
    db $fc
    inc c
    ld hl, sp+$18
    ldh a, [$30]
    ldh [$61], a
    jp $87fd


    ei
    rrca
    rst $30
    rra
    rst $28
    ccf
    rst $18
    ld a, a
    cp a
    cp a
    ld a, a
    rrca
    rst $38
    rlca
    rlca
    ld bc, $0081
    ret nz

    add b
    add b
    ldh [$60], a
    ldh a, [rNR10]
    db $fc
    inc c
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
    ld bc, $03ff
    rst $38
    inc bc
    ei
    inc bc
    di
    rrca
    db $e3
    rra
    ld [c], a
    ld a, $e0
    ld a, h
    ldh [$f8], a
    ldh [$f0], a
    ldh [$e0], a
    ret nz

    ret nz

    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$f8], a
    ldh [$fc], a
    db $e3
    rst $38
    db $e3
    ld a, a
    db $e3
    inc hl
    di
    inc bc
    ei
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
    db $10
    ccf
    ret z

    rra
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$bf], a
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $fe
    db $fd
    cp $fd
    db $fc
    ei
    db $fc
    ei
    ld hl, sp-$09
    ldh a, [$ef]
    ldh a, [$ef]
    ldh [$df], a
    ldh [$df], a
    ret nz

    cp a
    ret nz

    cp a
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
    nop
    rst $38
    add b
    ld a, a
    ldh [$9f], a
    ld hl, sp-$39
    ld a, $31
    ld hl, sp+$1f
    db $fc
    rra
    cp $2f
    rst $38
    cpl
    rst $38
    ld c, [hl]
    rst $38
    adc h
    rst $38
    ret c

    rst $38
    ld [hl], b
    nop
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
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    cp $7f
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [$e1]
    cp $83
    db $fd
    rlca
    ei
    rrca
    rst $30
    rra
    rst $28
    ld a, a
    sbc a
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
    cp $ff
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
    add b
    rst $38
    ldh [rIE], a
    sub b
    sbc a
    adc h
    adc a
    adc a
    adc a
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    add d
    add e
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
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    pop bc
    add d
    di
    adc [hl]
    rst $38
    adc [hl]
    rst $38
    adc [hl]
    rst $38
    adc [hl]
    ld a, a
    xor $1f
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
    nop
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    dec bc
    ld hl, sp+$17
    ldh a, [$2f]
    ldh a, [$2f]
    ldh [$5f], a
    ldh [$df], a
    ret nz

    cp a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38

jr_01c_46e4:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fd
    inc bc
    db $fd
    rlca
    ei
    ld b, $fa
    ld c, $f6
    inc c
    db $f4
    jr jr_01c_46e4

    db $10
    ldh [$30], a
    ret nc

    jr nz, @+$01

    ld b, b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    pop bc
    rst $38
    add e
    rst $38
    rlca
    rst $38
    rra
    rst $28
    ccf
    rst $18
    ld a, a
    cp a
    rst $38
    ld a, a
    cp $ff
    db $fd
    rst $38
    ei
    rst $38
    or $ff
    jp hl


    cp $d3
    db $fc
    and [hl]
    ld hl, sp+$67
    ld hl, sp-$13
    ld a, [c]
    push hl
    ei
    db $ec
    di
    db $e4
    ei
    db $ec
    di
    jp hl


    rst $30
    pop hl
    rst $38
    rst $30
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    ld bc, $00ff
    rst $38
    add b
    rst $38
    ld h, b
    ld a, a
    jr nc, jr_01c_47af

    ccf
    rst $38
    dec sp
    rst $38
    jr c, @+$01

    jr c, jr_01c_47b7

    jr jr_01c_4799

    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $0300
    nop
    rlca
    ld [$180f], sp
    rra
    jr jr_01c_47a9

    add hl, sp
    ld a, $3b
    ld a, h
    ccf
    ld hl, sp+$3f
    jr nc, jr_01c_47d2

    jr nz, jr_01c_47d4

    nop
    ccf
    nop
    ld a, a

jr_01c_4799:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    ld hl, sp+$07
    ret nc

    cpl
    add b
    ld a, a
    nop

jr_01c_47a9:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_01c_47af:
    rst $38
    ld bc, $01fe
    cp $03
    db $fd
    inc bc

jr_01c_47b7:
    db $fd
    rlca
    ei
    rrca
    rst $30
    rrca
    rst $38
    ld e, $ee
    inc e
    db $fc
    inc a
    call c, $b878
    ld [hl], b
    or b
    ldh [$60], a
    ldh [$60], a
    ret nz

    ret nz

    add b
    add b
    add b
    rst $38

jr_01c_47d2:
    nop
    rst $38

jr_01c_47d4:
    nop
    rst $38
    nop
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
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
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
    rst $08
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $08
    ld [hl], b
    jp $c0fc


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
    ret nz

    rst $38
    ret nz

    sbc a
    ldh [$67], a
    ld hl, sp-$08
    rst $38
    cp $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    sbc a
    ld a, a
    ld h, a
    rra
    add hl, de
    rlca
    add [hl]
    ld bc, $00e1
    ld hl, sp+$00
    sbc $e0
    rst $30
    ld hl, sp-$03
    cp $ff
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    pop bc
    rst $38
    add c
    rst $38
    inc bc
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    rst $28
    rst $20
    rst $28
    rst $20
    db $e3
    cp $c3
    db $fc
    add a
    db $fc
    adc a
    db $fc
    rrca
    db $fc
    inc bc
    db $fc
    ld bc, $00fe
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
    jp Jump_000_003c


    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fd
    inc bc
    db $fd
    rlca
    ei
    rrca
    rst $30
    rra
    rst $28
    rra
    rst $28
    ld a, $de
    ld a, $de
    ld a, h
    cp h
    ld a, e
    cp e
    ld hl, sp+$78
    ldh a, [rIE]
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
    ccf
    rst $38
    rrca
    inc bc
    rst $38
    nop
    ccf
    ret nz

    rrca
    ldh a, [$03]
    db $fc
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
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    adc $f1
    db $f4
    ei
    ld hl, sp-$01
    ldh a, [rIE]
    ld h, b
    rst $38
    add b
    ld a, a
    ld h, c
    rra
    dec de
    rlca
    add [hl]
    ld bc, $00c1
    ld [hl], b
    add b
    call c, Call_01c_76e0
    ld hl, sp+$7f
    db $fc
    cp $ff
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
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    rst $38
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
    rlca
    rst $38
    rlca
    rst $38
    ld b, $ff
    dec b
    cp $09
    cp $0a
    db $fc
    rra
    ld hl, sp+$07
    ld hl, sp+$01
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rlca
    cp $0f
    db $fc
    rra
    db $fc
    ccf
    ld hl, sp+$3f
    ld hl, sp+$7f
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ret nz

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
    ret nz

    rst $38
    jr nc, @+$01

    ld [$06ff], sp
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
    ld bc, $01ff
    rst $38
    ld [bc], a
    rst $38
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rrca
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    db $fc
    rra
    or $1f
    di
    rra
    di
    rst $18
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
    ccf
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    nop
    ccf
    ret nz

    rrca
    ldh a, [$03]
    db $fc
    nop
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    pop bc
    ccf
    add e
    ld a, a
    rlca
    rst $38
    rlca
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
    rst $38
    cp $ff
    db $fc
    rst $38
    cp b
    ld a, a
    ld h, b
    rra
    jr jr_01c_49e5

    inc b
    inc bc
    add d
    ld bc, $00e1
    or b

jr_01c_49e5:
    ret nz

    ret c

    ldh [$28], a
    ldh a, [$2d]
    ldh a, [$2d]
    ldh a, [$2f]
    ldh a, [$27]
    ld hl, sp+$26
    ld sp, hl
    inc h
    ei
    ld hl, $a1ff
    rst $38
    pop hl
    rst $38
    jp nz, $f7ff

    rst $38
    cp l
    rst $38
    sbc c
    rst $38
    jp nz, Jump_000_3cff

    rst $38
    ret c

    ccf
    jr c, jr_01c_4a2b

    jr nc, jr_01c_4a2d

    ld [hl], b
    ccf
    ld h, b
    ld a, a
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
    nop
    rst $38
    add b
    rst $38
    ld h, b
    rst $38
    db $10

jr_01c_4a2b:
    rst $38
    inc c

jr_01c_4a2d:
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld [$08ff], sp
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld b, b
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
    cp $0f
    db $fc
    rrca
    rst $38
    rra
    rst $38
    inc de
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, jr_01c_4a81

    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld [hl], b
    rst $38
    db $fc
    rst $38
    rst $20
    rst $38
    pop hl
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
    ld hl, sp-$01
    inc a
    rst $38
    inc c
    rst $38
    inc c

jr_01c_4a81:
    rst $38
    inc c
    rst $38
    inc e
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    di
    rst $38
    db $fc
    rst $38
    rst $28
    rst $38
    di
    rst $38
    cp h
    rst $38
    rst $18
    rst $38
    rst $30
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
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
    ld [bc], a
    rst $38
    inc b
    rst $38
    adc b
    rst $38
    ld l, b
    rst $38
    jr @+$01

    ld d, $ff
    ld hl, $40ff
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    nop
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld hl, sp-$01
    cp $1f
    rst $38
    rlca
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
    ret nz

    rst $38
    ld a, b
    rst $38
    ld e, $ff
    rlca
    ccf
    nop
    rrca
    nop
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
    nop
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    ccf
    rst $38
    rst $08
    rst $38
    di
    rst $38
    inc a
    rst $38
    rst $08
    rst $38
    di
    rst $38
    ld a, h
    rst $38
    rst $18
    rst $38
    rst $30
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    rlca
    rst $38
    ld bc, $01ff
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [$10ff], sp
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
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
    jr nc, @+$01

    inc c
    rst $38
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld hl, sp-$01
    cp $3f
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
    nop
    rst $38
    add b
    rst $38
    ldh [rIE], a
    inc a
    rst $38
    rrca
    rst $38
    inc bc
    ccf
    nop
    rrca
    nop
    pop bc
    nop
    ldh a, [rP1]
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
    ret nz

    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    ccf
    rst $38
    rst $08
    rst $38
    di
    rst $38
    inc a
    rst $38
    rst $08
    rst $38
    di
    rst $38
    ld a, h
    rst $38
    rst $18
    rst $38
    rst $30
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
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
    ld bc, $01ff
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [$08ff], sp
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    add b
    rst $38
    add b
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
    nop
    ldh [rP1], a
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    cp $3f
    rst $38
    rlca
    rst $38
    ld bc, $00ff
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
    ret nz

    rst $38
    ldh a, [rIE]
    ld e, $ff
    rlca
    ld a, a
    ld bc, $001f
    add a
    nop
    pop hl
    nop
    ld hl, sp+$00
    cp $00
    rst $38
    nop
    rst $38
    rst $18
    rst $38
    rst $30
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld [$08ff], sp
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld b, b
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
    nop
    rst $38
    nop
    ldh [rP1], a
    db $fc
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh a, [rIE]
    cp $3f
    rst $38
    rrca
    add b
    rst $38
    ldh [rIE], a
    ld a, b
    rst $38
    rra
    rst $38
    inc bc
    ld a, a
    nop
    rrca
    nop
    add e
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
    rst $38
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
    ld b, a
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
    add b
    rst $38
    ld b, b
    rst $38
    jr nc, @+$01

    inc c
    rst $38
    inc bc
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
    db $fc
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh a, [rIE]
    db $fc
    ld a, a
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
    inc a
    rst $38
    rrca
    rst $38
    inc bc
    ccf
    nop
    rrca
    nop
    jp $f000


    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $18
    rst $38
    rst $30
    rst $38
    db $fd
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
    nop
    ld bc, $0302
    inc b
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    ld a, [bc]
    dec bc
    inc c
    inc c
    dec c
    ld c, $04
    inc b
    inc b
    rrca
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr @+$1a

    add hl, de
    ld a, [de]
    inc b
    inc b
    add hl, bc
    dec de
    ld de, $1c11
    dec e
    ld e, $1f
    jr nz, jr_01c_4d7f

    ld [hl+], a
    inc hl
    inc h
    dec h
    inc b
    inc b
    ld h, $11
    ld de, $2711
    jr z, jr_01c_4d94

    ld de, $1111
    ld a, [hl+]
    ld de, $2c2b
    inc b
    inc b
    dec l
    ld de, $1111
    ld l, $2f
    jr nc, jr_01c_4d8d

    ld de, $3111

jr_01c_4d7f:
    ld de, $3332
    inc b
    inc b
    inc [hl]
    ld de, $1111
    dec [hl]
    ld [hl], $37
    jr c, jr_01c_4dc5

jr_01c_4d8d:
    jr c, jr_01c_4dc8

    jr c, jr_01c_4dcb

    dec sp
    inc a
    dec a

jr_01c_4d94:
    ld a, $11
    ld de, $3f11
    inc b
    ld b, b
    ld de, $4111
    ld de, $0411
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld de, $1111
    ld b, [hl]
    add hl, bc
    ld de, $1111
    ld b, a
    ld de, $0411
    inc b
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld de, $4e4d
    ld de, $1111
    ld c, a
    ld de, $0411
    inc b
    ld d, b
    ld d, c
    ld d, c

jr_01c_4dc5:
    ld d, d
    ld d, e
    ld d, h

jr_01c_4dc8:
    ld d, l
    ld d, [hl]
    ld d, a

jr_01c_4dcb:
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld de, $0404
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld de, $1111
    ld h, h
    ld h, l
    ld h, [hl]
    inc b
    inc b
    inc b
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld de, $1111
    ld l, [hl]
    ld de, $0411
    inc b
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld de, $1111
    ld [hl], a
    ld de, $0411
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld e, e
    ld de, $047c
    ld a, l
    ld a, [hl]
    ld de, $807f
    ld de, $8111
    add d
    add e
    ld de, $1111
    ld de, $8584
    ld de, $8786
    adc b
    adc c
    ld de, $0911
    inc b
    adc d
    adc e
    adc h
    ld de, $8d11
    inc d
    ld de, $1111
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
    ld de, $1111
    sbc e
    ld de, $1111
    sbc h
    sbc l
    sbc [hl]
    sbc a
    inc b
    inc b
    inc b
    inc b
    and b
    and c
    ld de, $a211
    ld de, $1111
    and e
    and h
    and l
    and [hl]
    inc b
    inc b
    inc b
    inc b
    and a
    xor b
    xor c
    xor d
    xor e
    ld de, $1111
    xor h
    inc b
    xor l
    inc b
    inc b
    inc b
    inc b
    inc b
    xor [hl]
    ld de, $af11
    or b
    ld de, $1111
    nop
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
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0505
    dec b
    dec b
    dec b
    nop
    nop
    nop
    nop
    ld bc, $0101
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
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0303
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0121
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0041
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld bc, $0101
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
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $ff01
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, [bc]
    ld a, [bc]
    add b
    add b
    ldh [$e0], a
    ldh [$e0], a
    db $ec
    db $ec
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    cp a
    cp a
    cp a
    cp a
    rst $18
    rst $18
    cp [hl]
    cp [hl]
    cp $fe
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
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
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    jp $dfff


    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    call c, $c3ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld b, $06
    inc d
    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    add sp, -$18
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    adc c
    adc c
    cp a
    cp a
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
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    and b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

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
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    ldh [$65], a
    cp $64
    rst $38
    ld h, h
    rst $38
    ld h, h
    rst $38
    ld h, h
    rst $38
    ld h, h
    rst $38
    ld h, h
    rst $38
    ld h, h
    rst $38
    ld h, h
    rst $38
    ld h, h
    rst $38
    ld h, h
    rst $38
    ld h, h
    rst $38
    ld h, h
    rst $38
    ld h, h
    rst $38
    ld h, h
    rst $38
    ld h, h
    rst $38
    ld h, h
    rst $38
    ld h, h
    rst $38
    ld h, h
    rst $38
    ret z

    rst $38
    ret


    rst $38
    ret


    rst $38
    ret


    rst $38
    ret


    rst $38
    ret


    rst $38
    ret


    rst $38
    ret


    rst $38
    ret


    rst $38
    ret


    rst $38
    ret


    rst $38
    ret


    rst $38
    cp c
    cp c
    rst $38
    rst $38
    rst $38
    rst $38
    db $eb
    db $eb
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or [hl]
    or [hl]
    ei
    ei
    ld l, l
    ld l, l
    rst $38
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
    or b
    rst $38
    ldh [rIE], a
    db $fc
    rst $38
    call nc, Call_000_00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
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
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    adc a
    db $fc
    adc a
    db $fc
    adc a
    db $fc
    adc a
    db $fc
    adc a
    db $fc
    adc a
    db $fc
    adc a
    db $fc
    adc a
    db $fc
    adc a
    db $fc
    adc a
    db $fc
    adc a
    db $fc
    adc a
    db $fc
    adc a
    db $fc
    adc a
    db $fc
    adc a
    db $fc
    adc a
    db $fc
    adc a
    db $fc
    adc a
    db $fc
    adc a
    db $fc
    rra
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp+$1f
    rst $38
    rra
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp-$21
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, b
    ld d, b
    nop
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
    ld l, b
    sub l
    sub l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh [rIE], a
    ret nz

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
    ldh [rIE], a
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
    adc e
    adc e
    ei
    ei
    ld [$01ea], a
    ld bc, $0000
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ret nz

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
    ld l, d
    ld l, d
    rst $28
    rst $28
    ld c, b
    ld c, b
    nop
    nop
    nop
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
    ld a, h
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
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
    adc e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    cp $ff
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
    cp $ff
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    rst $38
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$01ff], sp
    ld bc, $d1d1
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
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    ret nz

    ret nz

    ret nc

    ret nc

    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    xor e
    xor e
    cp $fe
    cp $fe
    db $fd
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
    cp $ff
    ld b, $ff
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
    inc bc
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $feff
    rst $38
    rst $38
    rst $38
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
    sbc a
    rst $38
    add a
    rst $38
    add c
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ccf
    ldh [$3f], a
    ldh [$bf], a
    ldh [$7f], a
    ldh [$bf], a
    ldh a, [$bf]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp+$57
    db $fc
    rlca
    db $fc
    inc bc
    cp $03
    cp $03
    cp $01
    rst $38
    ld bc, $00ff
    rst $38
    ccf
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
    ld bc, $feff
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rrca
    xor a
    ld d, c
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
    ld [$f515], a
    ld a, [bc]
    ld [$f515], a
    ld a, [bc]
    ld a, [$f505]
    ld a, [bc]
    ld a, [$f505]
    ld a, [bc]
    ld a, [$fd05]
    ld [bc], a
    ld a, [$fd05]
    ld [bc], a
    cp $01
    db $fd
    ld [bc], a
    cp $01
    rst $38
    add b
    cp $81
    ld a, a
    ret nz

    ld a, a
    ret nz

    ccf
    ldh [$3f], a
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$0f
    ld hl, sp+$07
    db $fc
    inc bc
    cp $03
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
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
    cp $ff
    ld hl, sp-$01
    rst $20
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
    ld bc, $feff
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
    ld a, a
    rst $38
    rrca
    ld e, a
    and c
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
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, h
    xor e
    xor c
    ld d, [hl]
    ld d, e
    xor h
    xor e
    ld d, h
    db $d3
    inc l
    xor c
    ld d, [hl]
    call nc, $ea2b
    dec d
    push af
    ld a, [bc]
    ld a, [$7585]
    jp z, $e53a

    dec e
    ld a, [c]
    ld c, $fd
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
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
    ldh [rIE], a
    nop
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
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
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    db $fd
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
    ld a, a
    ld e, a
    xor a
    xor a
    ld d, e
    ld d, e
    xor h

jr_01c_5586:
    xor h
    ld d, e
    ld d, e
    xor h
    xor h
    ld d, e
    ld d, e
    xor h
    xor h
    ld d, e
    ld d, e
    xor h
    xor h
    ld d, e
    ld d, e
    xor h
    xor h
    ld d, e
    ld d, e
    xor h
    xor h
    ld d, e
    ld d, e
    xor h
    xor h
    ld d, e
    ld d, b
    xor a
    and a
    ld e, b
    jr jr_01c_5586

    ld [hl], b
    add b
    rst $20
    nop
    rst $08
    nop
    sbc a
    nop
    ccf
    nop
    ccf
    nop
    jr nz, jr_01c_55b4

jr_01c_55b4:
    ret nz

    nop
    nop
    rst $38
    ld d, e
    xor h
    xor h
    ld d, e
    ld d, e
    xor h
    xor h
    ld d, e
    ld d, e
    xor h
    xor h
    ld d, e
    ld d, e
    xor h
    db $fd
    ei
    ld e, $ff
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
    ret nz

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
    ret nz

    rst $38
    nop
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
    ld b, b
    rst $38
    ld hl, sp-$01
    push hl
    ld a, [$d52a]
    push de
    ld a, [hl+]
    ld a, [hl+]
    push de
    push de
    ld a, [hl+]
    ld a, [hl+]
    push de
    push de
    ld a, [hl+]
    ld a, [hl+]

jr_01c_5631:
    push de
    push de
    ld a, [hl+]
    ld a, [hl+]
    push de
    push de
    ld a, [hl+]
    ld a, [hl+]
    push de
    push de
    ld a, [hl+]
    ld a, [hl+]
    push de
    push de
    ld a, [hl+]
    ld a, [bc]
    push af
    push hl
    ld a, [de]
    ld [hl-], a
    dec c
    add hl, de
    ld b, $cc
    inc bc
    push hl
    ld [bc], a
    db $e4
    inc bc
    push hl
    ld [bc], a
    db $e4
    inc bc
    ld de, $ca0e
    dec [hl]
    inc d
    db $eb
    jr z, jr_01c_5631

    push de
    dec hl
    ld a, [hl+]
    rst $10
    call nc, $282f
    rst $18
    ret nc

    ccf
    ld h, b
    rst $38
    add b
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
    add b
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
    ldh [rIE], a
    nop
    rst $38
    ld a, a
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
    db $fc
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    add b
    rst $38
    ld d, b
    xor a
    and b
    ld e, a
    ld d, b
    xor a
    and b
    ld e, a
    ld d, b
    xor a
    and b
    ld e, a
    ld d, b
    xor a
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
    and b
    ld e, a
    ld b, b
    cp a
    add b
    ld a, a
    ld b, b
    cp a
    add b
    ld a, a
    ld b, c
    cp a
    add c
    ld a, a
    ld [bc], a
    rst $38
    add h
    ld a, a
    inc b
    rst $38
    adc b
    ld a, a
    ld [$10ff], sp
    rst $38
    jr nz, @+$01

    ld b, b
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
    add b
    rst $38
    ld bc, $feff
    rst $38
    nop
    rst $38
    nop
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
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $02ff
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [$08ff], sp
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
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
    ld hl, sp-$01
    ld [$04ff], sp
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    jp $c1ff


    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, b
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
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
    ld b, b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$04ff], sp
    rst $38
    rlca
    rst $38
    db $fc
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
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
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
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
    ld bc, $00ff
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
    ldh [rIE], a
    rra
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
    ld b, b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$40ff], sp
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    and c
    cp $a0
    rst $38
    sub d
    db $fd
    db $d3
    db $fc
    jp nc, $c8fc

    cp $e8
    rst $38
    add sp, -$01
    push hl
    cp $f4
    rst $38
    db $f4
    rst $38
    ld a, [$faff]
    rst $38
    ld a, [$fdff]
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    pop bc
    rst $38
    rst $18
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
    rst $38
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
    ccf
    rst $38
    rra

jr_01c_592f:
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    ei
    rst $38
    jp Jump_000_3fff


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
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
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    ld l, a
    rst $28
    rla
    rst $20
    inc de
    rst $30
    adc l
    ld a, c
    push hl
    rra
    db $10
    rrca
    add b
    rlca
    ret nz

    inc bc
    jr nz, @+$03

    ld bc, $0100
    ret nz

    ret c

    jr nz, jr_01c_592f

    ld e, c
    ret nz

    ccf
    ld b, h
    cp e
    ld b, b
    cp a
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
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
    ld [$08ff], sp
    rst $38
    inc b
    rst $38
    inc b
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
    nop
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    cp [hl]
    rst $38
    db $fc
    rst $38
    db $fc
    cp $3c
    cp $9f
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    ld a, a
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    ld bc, $7eff
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    rlca
    rst $38
    rrca
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    db $10
    rst $38
    ld [$08ff], sp
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [bc], a
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
    rrca
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
    ld b, $ff
    rrca
    rst $38
    rrca
    ld a, a
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
    ret nz

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
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    db $10
    rst $38
    rrca
    rst $38
    ld hl, sp-$01
    inc b
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    nop
    ld bc, $0002
    nop
    nop
    nop
    nop
    inc bc
    inc b
    dec b
    ld b, $07
    rlca
    rlca
    ld [$0a09], sp
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    inc c
    dec c
    rlca
    rlca
    rlca
    rlca
    ld c, $0f
    db $10
    inc c
    nop
    nop
    nop
    ld de, $0000
    nop
    dec c
    rlca
    rlca
    rlca
    rlca
    ld [de], a
    rrca
    rrca
    inc de
    inc d
    dec d
    nop
    ld d, $17
    jr jr_01c_5b14

    ld a, [de]
    rlca
    rlca
    rlca
    rlca
    dec de
    inc e
    rrca
    rrca
    dec e
    ld e, $1f
    jr nz, jr_01c_5b2a

    ld [hl+], a
    inc hl
    inc h
    rlca
    rlca
    rlca
    rlca
    dec h
    ld h, $0f
    rrca

jr_01c_5b14:
    daa
    jr z, jr_01c_5b40

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $07
    rlca
    rlca
    rlca
    cpl
    jr nc, jr_01c_5b32

    rrca
    rrca
    rrca
    rrca
    ld sp, $0000

jr_01c_5b2a:
    nop
    dec c
    rlca
    rlca
    rlca
    rlca
    ld [hl-], a
    inc sp

jr_01c_5b32:
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_01c_5b71

    ld a, [hl-]
    nop
    dec sp
    inc a
    rlca
    rlca
    rlca
    rlca

jr_01c_5b40:
    rrca
    rrca
    ld [$3e3d], sp
    rrca
    rrca
    rrca
    ccf
    nop
    ld b, b
    rlca
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    rrca
    ld b, c
    ccf
    rrca
    rrca
    rrca
    ccf
    nop
    ld b, b
    rlca
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    ld b, d
    rrca
    rrca
    rrca
    ccf
    nop
    ld b, b
    rlca
    rlca
    rlca
    rlca
    rlca
    rrca

jr_01c_5b71:
    rrca
    rrca
    rrca
    ld b, e
    rrca
    rrca
    rrca
    ld sp, $4000
    rlca
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    rlca
    rlca
    rlca
    rlca
    rlca
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, d
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    rlca
    rlca
    rlca
    rlca
    ld d, [hl]
    ld d, a
    rrca
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    rlca
    rlca
    rlca
    rlca
    ld h, c
    rrca
    ld h, d
    ld h, e
    rrca
    rrca
    rrca
    ld h, h
    nop
    nop
    ld h, l
    ld h, [hl]
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    ld h, d
    ld h, e
    ld h, a
    inc c
    nop
    nop
    nop
    ld l, b
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld l, c
    nop
    nop
    nop
    nop
    ld l, d
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld l, e
    ld l, h
    nop
    nop
    nop
    nop
    ld l, l
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld l, [hl]
    nop
    nop
    nop
    nop
    nop
    ld l, a
    ld [hl], b
    rlca
    rlca
    rlca
    nop
    nop
    nop
    ld bc, $0000
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
    nop
    nop
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    jr nz, jr_01c_5c25

jr_01c_5c25:
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
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0701
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    ld b, $06
    ld b, $00
    nop
    ld bc, $0701
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    ld b, $06
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0001
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
    nop
    nop
    ld hl, $0101
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
    nop
    nop
    nop
    ld bc, $0001
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
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0402
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    ld bc, $0404
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
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
    ld bc, $0101
    ld bc, $0101
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    inc bc
    jp $ffff


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
    ld bc, $01fe
    cp $01
    cp $01
    cp $01
    cp $03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$00
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [$f0]
    ldh a, [$f0]
    db $fc
    db $fc
    ld hl, sp-$04
    ld hl, sp-$08
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ldh [$c0], a
    ret nz

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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    cp a
    ld b, b
    rst $18
    jr nz, @-$0f

    db $10
    ld l, a
    sub b
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
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
    cp $ff
    ldh a, [rIE]
    ret nz

    rst $38
    add b
    inc bc
    db $fc
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
    rst $38
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
    ret nz

    rlca
    ld hl, sp+$03
    db $fc
    nop
    rst $38
    nop
    rst $38
    rrca
    ldh a, [rIF]
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38

jr_01c_5e61:
    pop hl
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
    inc bc

jr_01c_5e6f:
    db $fc
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

    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rTAC]
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
    jr nz, jr_01c_5e6f

    jr nc, jr_01c_5e61

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    ld bc, $00ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    pop hl
    ldh [$e4], a
    db $e3
    di
    ldh a, [$f1]
    ldh a, [$f1]
    ldh a, [$f1]
    ldh a, [$f3]
    ldh a, [$f3]
    ldh a, [$f3]
    ldh a, [$f3]
    ldh a, [$f3]
    ldh a, [$f7]
    ldh a, [$0e]
    rst $38
    ld c, $ff

jr_01c_5ee4:
    inc c
    rst $38
    inc b
    rrca
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_01c_5efb:
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
    rst $38
    nop
    rst $28
    jr nc, jr_01c_5ee4

    ld [hl], b
    jp nz, $e47d

    ccf
    jp hl


    ld e, $f1
    ld a, $f1
    ld a, $f0
    rra
    pop af
    rra
    ei
    rrca
    di
    rra
    di
    ccf
    rst $30
    ccf
    and $7f
    add [hl]
    ld a, a
    add $3f
    and h
    ld a, a
    or l
    ld a, a
    cp e
    ld a, a
    sbc [hl]
    ld a, a
    sbc [hl]
    ld a, a
    sbc h
    rst $38
    ld c, b
    rst $38
    add hl, hl
    jr z, jr_01c_5efb

    jr c, @-$63

    dec de
    sbc $1e
    inc c
    db $ec
    inc c
    db $ec
    ld [$08e8], sp
    add sp, $00
    ldh [rP1], a
    ldh [$09], a
    add hl, hl
    ld [$0888], sp
    adc b
    ld [$80c9], sp
    pop bc
    ret nc

    db $d3
    ld c, e
    rst $38
    ld b, a
    rst $38
    rst $28
    rst $38
    db $fc
    inc bc
    cp $01
    nop
    rst $38
    cp a
    ld a, a

jr_01c_5f6e:
    add b
    ld a, a

jr_01c_5f70:
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

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    cp $00
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
    rst $38
    nop
    rst $38
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
    ld a, a
    add b
    rra
    ldh [$cf], a
    ldh a, [$bf]
    ret nz

    ld h, a
    sbc b
    ld c, a
    or b
    rst $08
    jr nc, jr_01c_5f6e

    ld h, b
    rra
    ldh [$bf], a
    ret nz

    cp a
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $20
    jr jr_01c_5f70

    nop
    rra
    nop
    cp a
    add b
    ld h, a
    ld h, b
    sbc h
    sbc a
    nop
    dec e
    nop
    ld a, [hl]
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
    rst $38
    ret nz

    ccf
    ret nz

    ccf
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
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp+$1f
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    rra
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp+$1f
    db $fc
    rra
    db $fc
    rra
    db $fc
    rra
    db $fc
    rra
    db $fc
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    db $e3
    inc e
    db $e3
    inc e

jr_01c_60b4:
    db $e3
    inc e

jr_01c_60b6:
    db $e3
    inc e

jr_01c_60b8:
    db $e3
    inc e

jr_01c_60ba:
    db $e3
    inc e

jr_01c_60bc:
    db $e3
    inc e

jr_01c_60be:
    db $e3
    inc e

jr_01c_60c0:
    db $e3
    inc e
    db $e3
    inc e
    db $e3
    inc e
    db $e3
    inc e
    db $e3
    inc e
    rst $20
    jr jr_01c_60b4

    jr jr_01c_60b6

    jr jr_01c_60b8

    jr jr_01c_60ba

    jr jr_01c_60bc

    jr jr_01c_60be

    jr jr_01c_60c0

    jr @+$09

    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$00
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
    ldh a, [rIE]
    ret nz

    rst $38
    add b
    ldh a, [$e0]
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
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
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
    rst $38
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
    cp $01
    rst $38
    nop
    rst $38
    nop
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
    add b
    ld a, [hl]
    cp $00
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
    cp $00
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    pop hl
    nop
    jp $c300


    nop
    add a
    nop
    adc a
    nop
    rrca
    nop
    rra
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
    rst $38
    nop
    cp $00
    db $fc
    nop
    db $fd
    ld bc, $01fd
    db $fd
    ld bc, $00fd
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $02
    cp $0e
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
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
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $ff00
    nop
    rst $38
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
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    pop bc
    nop
    pop bc
    nop
    add e
    nop
    rlca
    nop
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
    rst $38
    ld bc, $03ff
    rst $38

jr_01c_6245:
    ld b, $ff
    inc c
    cp $18
    db $fc
    jr nc, jr_01c_6245

    ld h, b
    ldh a, [$c0]
    ld h, b
    and b
    ret nz

    ld b, b
    add b
    add b
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
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld a, [hl]
    cp $01
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop

jr_01c_629a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ret nz

    ld bc, $0180
    add b
    inc bc
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    ld [$1807], sp
    rlca
    jr jr_01c_62b8

    inc a
    inc bc
    ld a, h

jr_01c_62b8:
    inc bc
    ld a, h
    ld bc, $01fe
    cp $01
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
    cp a
    nop
    cp a
    nop
    ccf
    ccf
    ldh [$bf], a
    ld h, b
    cp a
    ld h, b
    ccf
    ld h, b
    ccf
    ld h, b
    ccf
    ld h, b
    ccf
    ld h, b
    ccf
    ld h, b
    ccf
    ld h, b
    ccf
    ld h, b
    ccf
    ld h, b
    ccf
    ld h, b
    ccf
    ld h, b
    ccf
    ld h, b
    ccf
    ld h, b
    ccf
    ld h, b
    rra
    jr nc, jr_01c_6312

    jr nc, jr_01c_6314

    jr nc, jr_01c_6316

    jr nc, jr_01c_6318

    jr nc, jr_01c_629a

    or b
    rra
    or b
    rra
    or b
    rra
    or b
    rra
    ldh a, [$1f]
    or b
    rra
    or b
    rra
    or c
    ld e, a
    rst $30
    ld e, a
    rst $38
    ld c, a
    rst $30
    rrca
    sub a

jr_01c_6312:
    rrca
    ld d, a

jr_01c_6314:
    rrca
    ld [hl], a

jr_01c_6316:
    rrca
    ld d, a

jr_01c_6318:
    rrca
    ld d, a
    rrca
    ld d, a
    ld c, a
    ld d, a
    rrca
    rla
    rrca
    rla
    rlca
    dec de
    rlca
    dec de
    rlca
    dec bc
    rlca
    dec bc
    rlca
    dec bc
    rlca
    dec bc
    rlca
    dec bc
    rlca
    dec bc
    rlca
    dec bc
    rlca
    dec bc
    rlca
    dec bc
    rlca
    dec bc
    rlca
    dec bc
    rlca
    dec bc
    inc bc
    inc c
    ei
    db $fc
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
    nop
    nop
    nop
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
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    ld bc, $01fe
    cp $ff
    nop
    cp $01
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
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
    ldh a, [rIF]
    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rrca
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
    ld a, h
    add e
    ld [hl], e
    adc a
    rrca
    rst $38
    ld a, a
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
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
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
    db $fc
    inc bc
    di
    rrca
    adc a
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
    inc bc
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
    di
    rrca
    adc a
    ld a, a
    ld a, a
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
    rst $38
    nop
    rst $38
    nop
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
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0707
    rlca
    rlca
    rlca
    rlca
    ld [de], a
    inc de
    inc d
    dec d
    inc c
    ld d, $17
    jr jr_01c_6492

    ld a, [de]
    dec de
    inc e
    ld de, $071d
    rlca
    ld e, $1f
    jr nz, jr_01c_64a5

    ld [hl+], a
    inc hl
    rlca
    inc h
    dec h
    rlca
    rlca
    ld h, $27
    jr z, jr_01c_64b8

    ld de, $2b2a

jr_01c_6492:
    inc l
    dec l
    ld l, $2f
    jr nc, jr_01c_64c9

    rlca
    rlca
    rlca
    rlca
    rlca
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_01c_64de

jr_01c_64a5:
    ld a, [hl-]
    dec sp
    inc a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    rlca
    ld b, d
    rlca

jr_01c_64b8:
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    rlca
    rlca

jr_01c_64c9:
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca

jr_01c_64de:
    rlca
    rlca
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
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
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    rlca
    rlca
    rlca
    rlca
    ld e, e
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc c
    inc c
    ld e, h
    ld e, l
    rlca
    rlca
    rlca
    rlca
    ld e, [hl]
    ld e, a
    ld h, b
    rlca
    rlca
    rlca
    rlca
    rlca
    inc c
    inc c
    inc c
    ld h, c
    rlca
    rlca
    rlca
    rlca
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    rlca
    rlca
    rlca
    rlca
    ld h, [hl]
    ld h, a
    inc c
    inc c
    ld l, b
    rlca
    rlca
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    rlca
    ld l, l
    rlca
    rlca
    rlca
    ld c, d
    ld l, [hl]
    inc c
    inc c
    ld l, a
    ld [hl], b
    rlca
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    rlca
    ld c, d
    ld a, c
    inc c
    inc c
    inc c
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
    ld e, [hl]
    add h
    inc c
    inc c
    inc c
    inc c
    inc c
    add l
    dec e
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
    inc c
    inc c
    inc c
    inc c
    sub c
    rlca
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    ld l, a
    sbc c
    sbc d
    inc c
    inc c
    inc c
    inc c
    inc c
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    inc c
    inc c
    and e
    and h
    and l
    inc c
    inc c
    inc c
    and [hl]
    and a
    sbc h
    xor b
    xor c
    xor d
    xor e
    xor h
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc b
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, HeaderLogo
    nop
    nop
    nop
    ld bc, $0307
    inc bc
    inc bc
    inc b
    ld bc, $0101
    ld bc, $0401
    inc b
    inc b
    ld bc, $0701
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc b
    ld bc, $0401
    inc b
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc b
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0301
    ld bc, $0207
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
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc b
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
    rlca
    inc bc
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
    ld bc, $0101
    rlca
    inc bc
    inc b
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
    ld bc, $0303
    inc bc
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
    nop
    nop
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    nop
    nop
    ld [bc], a
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld [bc], a
    inc bc
    nop
    nop
    nop
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
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
    inc bc
    dec b
    dec b
    dec b
    ld [bc], a
    nop
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
    dec b
    dec b
    ld b, $03
    dec b
    dec b
    dec b
    nop
    nop
    nop
    nop
    inc bc
    ld [bc], a
    inc bc
    nop
    nop
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    dec b
    dec b
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    rst $38
    nop
    rst $38

jr_01c_66d3:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $20
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
    ld sp, hl
    rst $38
    ei
    db $fc
    ld e, a
    cp h
    xor h
    rst $18
    ld [hl], b
    adc a
    jr nz, jr_01c_66d3

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [de], a
    db $ed
    ld [de], a
    db $ed
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
    ld bc, $07fe
    ld hl, sp+$1f
    ldh [$e1], a
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
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    rra
    rra
    rra
    rra
    rra
    rra
    rrca
    rrca
    rrca
    ld c, $0f
    ld [$0007], sp
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
    ld sp, hl
    nop
    rst $20
    nop
    ret c

    rlca
    call c, $ef03
    nop
    ldh a, [$60]
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    di
    ld c, $f1
    dec b
    ld a, [$fb04]
    add e
    ld a, h
    add d
    ld a, l
    ld bc, $01fe
    cp $00
    rst $38
    db $10
    rst $28
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
    rlca
    ld hl, sp+$1f
    ldh [$9e], a
    ld h, c
    sbc b
    ld h, a
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
    ld bc, $0ffe
    ldh a, [$3f]
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    ld bc, $07ff
    rst $38
    inc a
    db $fc
    ldh [$e0], a
    add b

jr_01c_67bb:
    add b
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
    ld b, b
    ret nz

    ld h, b
    ldh [rSVBK], a
    ldh a, [$30]
    ldh a, [$38]
    ld hl, sp+$3c
    db $fc
    inc e
    db $fc
    ld e, $fe
    ld e, $fe
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $07e8
    jr z, jr_01c_67bb

    inc h
    jp $d91a


    inc a
    call c, Call_000_1f9f
    rst $38
    rst $38
    rst $38
    rst $38
    db $ed
    rst $38
    rst $00
    db $fc
    dec b
    cp $b7
    cp $03
    rst $38
    ei
    rst $38
    ld h, e
    rst $38
    db $fd
    rst $38
    ld a, [bc]
    push af
    add c
    ld a, [hl]
    add hl, bc
    or $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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

jr_01c_6827:
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
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
    cp $01
    ldh a, [rIF]
    ret nz

    ld hl, sp+$00
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
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    nop
    nop
    nop
    nop
    ld bc, $0e01
    ld c, $30
    jr nc, jr_01c_6827

    ret nz

    nop
    add b
    nop
    add b
    nop
    ret nz

    add b
    ret nz

    add b
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh a, [$e0]
    ldh a, [$e0]
    ldh a, [$e0]
    ld hl, sp-$10
    ld hl, sp-$08
    ldh a, [$fc]
    ldh a, [$fc]
    ld hl, sp-$04
    ld hl, sp+$7e
    ld hl, sp+$7e
    db $fc
    ld a, [hl]
    db $fc
    ccf
    db $fc
    ld a, $3f
    ld a, $3f
    ld e, $1f
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
    rst $08
    db $10
    jr jr_01c_68ee

    cp c

jr_01c_68b6:
    ccf
    cp a
    ld a, a
    ld a, a
    db $fd
    db $fd
    ldh a, [$f0]
    ret nz

    ret nz

    db $fc
    ld [bc], a
    or l
    ld l, e
    or a
    ld l, a
    rst $38
    ccf
    cp $fe
    ld a, [$c8fa]
    ret z

    xor b
    xor b
    and l
    and l
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, e
    di
    db $ed
    pop hl
    sbc $e1
    cp $ed
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

jr_01c_68ee:
    rst $38
    rst $38
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
    ret nz

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
    ldh a, [$fc]
    add b
    ldh a, [rP1]
    ret nz

    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    pop bc
    pop bc
    add [hl]
    add [hl]
    jr jr_01c_68b6

    jr nz, jr_01c_6980

    ret c

    ld hl, sp-$80
    xor b
    add b
    xor b
    ldh [$f0], a
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
    add b
    nop
    add b
    nop
    add b
    nop
    ret nz

    add b
    ret nz

    add b
    ldh [$c0], a
    ldh [$c0], a
    ldh a, [$c0]
    ldh a, [$e0]
    ldh a, [$e0]
    ld hl, sp-$10
    ld hl, sp-$10
    ld hl, sp-$10
    db $fc
    ld hl, sp-$04
    db $fc
    ld hl, sp-$02
    ld hl, sp-$02
    db $fc
    rst $38
    db $fc
    ld a, a
    cp $7f
    cp $7f
    cp $3f
    cp $3f
    ccf
    ccf
    ccf
    rra
    rra
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
    ld a, a
    ld a, a
    ld a, a
    ld a, [hl]
    rst $38
    ld hl, sp-$04
    ld a, [$beb8]
    sbc c
    cp h
    dec e
    ld hl, sp-$63
    ld e, h

jr_01c_6980:
    cp l
    call c, $fcff
    cp $fe
    rst $28
    xor $87
    add [hl]
    add a
    add a
    rlca
    rlca
    ld e, a
    ld e, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    pop hl
    rst $38
    inc bc
    rst $38
    rra
    rst $38
    db $fd
    db $fd
    rst $38
    rst $38
    rst $38
    cp $ee
    cp $c7
    rst $38
    rst $00
    rst $18
    rst $00
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld bc, $0ffe
    ldh a, [$7f]
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc bc
    rst $38
    inc e
    db $fc
    ld h, b
    ldh [$80], a
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
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
    ld bc, $0601
    ld b, $18
    jr jr_01c_6a47

    ld h, b
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
    nop
    add b
    nop
    nop
    add b
    nop
    ret nz

    add b
    ret nz

    add b
    ldh [$80], a
    ldh [$c0], a
    ldh [$c0], a
    ldh a, [$c0]
    ldh a, [$e0]
    ldh a, [$e0]
    ld hl, sp-$10
    ld hl, sp-$10
    db $fc
    ldh a, [$fc]
    ld hl, sp-$04
    ld hl, sp-$02
    ld hl, sp-$02
    rst $38
    ret nz

    rra
    ld [bc], a
    cp a
    ld a, [bc]
    dec l
    ld a, [de]
    rra
    ld bc, $076f
    cpl
    rlca
    rst $30
    rlca
    ld hl, sp+$07
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $f4
    dec bc
    db $f4
    dec bc
    db $fc
    inc bc
    db $fc
    inc bc
    ld [$6a15], a
    sub l
    ld [hl], d
    adc l
    ld d, d
    xor l
    ld d, [hl]

jr_01c_6a47:
    xor c
    jr nc, @-$2f

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], e
    ld [hl], e
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
    cp $ff
    ldh a, [rIE]
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0eff
    cp $38
    ld hl, sp-$20
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
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    nop
    jr nz, jr_01c_6a8e

    inc hl
    inc c
    inc e

jr_01c_6a8e:
    ld h, b
    ld [hl], b
    add [hl]
    sbc [hl]
    jr nz, @+$2b

    ld b, b
    ld c, d
    jr nc, jr_01c_6ad4

    nop
    ld [$0000], sp
    nop
    nop
    nop
    nop
    ld h, e
    db $f4
    sbc $b3
    rst $18
    rra
    ld a, a
    ld e, a
    ld a, a
    rst $38
    rst $38
    rst $38
    ei
    db $fd
    ret


    db $fd
    db $ed
    call z, $a94f
    dec hl
    add hl, bc
    rra
    ld a, a
    db $fd
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    and [hl]
    ei
    ld bc, $9ffd
    rst $38
    db $fc
    db $fc
    cp $fe
    ld a, [$f2fe]
    ld a, [c]

jr_01c_6acc:
    ei
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_01c_6ad4:
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    db $fc
    rst $38
    ldh a, [$fe]
    add b
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
    inc bc
    inc bc
    inc c
    inc c
    jr nc, jr_01c_6b28

    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    or a
    ld hl, sp-$09
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp+$7f
    ld hl, sp-$01
    jr c, jr_01c_6b4e

    jr c, jr_01c_6acc

    ld a, h
    ei
    db $fc
    rst $38
    db $fc
    ccf
    db $fc
    ld e, $fd
    sbc a
    ld a, a
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $28
    rst $00
    rst $08
    rst $00
    rst $00

jr_01c_6b28:
    rst $38

jr_01c_6b29:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ldh a, [rIE]
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc e
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

jr_01c_6b4e:
    ld a, h
    ld a, h
    cp $fe
    cp $fe
    ld a, h
    ld a, h
    nop
    stop
    db $10
    ld bc, $0611
    ld c, $30
    jr c, jr_01c_6b29

    ret nz

    inc e
    nop
    jr z, jr_01c_6b68

    db $10
    inc c

jr_01c_6b68:
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld hl, sp+$07
    cp $07
    rst $08
    ccf
    ld a, a
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ret nz

    ld hl, sp+$00
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
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
    ld bc, $0601
    ld b, $18
    jr jr_01c_6c29

    ld h, c
    add b
    add b
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    rra
    ldh [$9f], a
    ldh [$8f], a
    ldh a, [$bf]
    ret nz

    db $ec
    di
    rst $30
    rst $38
    ld [hl], e

jr_01c_6be3:
    rst $38
    ld [hl], h
    ei
    rst $30
    ld hl, sp-$21
    ldh a, [rIE]
    ldh a, [$7f]
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    ei
    db $fc
    rst $38
    ld hl, sp-$11
    ldh a, [rIE]
    add b
    rst $38
    nop
    rst $38
    nop
    cp $01
    ldh a, [$fe]
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
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f0]
    ld bc, $0641
    ld b, [hl]
    jr jr_01c_6c78

    ld h, b
    jr nz, jr_01c_6be3

    add b
    ld b, b
    nop
    ldh [rP1], a
    ld b, b

jr_01c_6c29:
    db $10
    add b
    ld h, b
    ld b, b
    nop
    nop
    nop
    rst $38
    inc bc
    ei
    rlca
    ei
    rlca
    ei
    rlca
    ei
    rlca
    rst $30
    rrca
    sbc a
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
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38

jr_01c_6c4e:
    inc b
    db $fc
    inc b
    db $fc
    rlca
    rst $38
    dec b
    rst $38
    add hl, bc
    ei
    db $10
    ld a, [c]
    jr nc, jr_01c_6c4e

    ld d, b
    jp nc, $9790

    db $10
    ld a, [de]
    db $10
    rla
    db $10
    ld [de], a
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    jr nz, jr_01c_6c98

jr_01c_6c78:
    ld b, b
    ld b, b
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
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_01c_6c98:
    rst $38
    rst $38
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    inc bc
    add e
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
    ld bc, $0100
    inc bc
    rlca
    rrca
    rrca
    rra
    sbc a
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
    ld a, a
    rra
    ccf
    rrca
    rra
    rlca
    rrca
    rlca
    rlca
    inc bc
    rlca
    ld bc, $0101
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    nop
    nop
    nop

jr_01c_6cf3:
    ld bc, $0300
    ld bc, $070f
    ccf
    rra
    ccf
    ccf
    ld a, a
    cp $ff
    rlca
    ei
    rrca
    rst $30
    rra
    rst $28
    rra
    ldh [rNR32], a
    db $e3
    jr jr_01c_6cf3

    ld bc, $03fe
    db $fd
    rlca
    rst $38
    rrca
    rst $30
    rra
    ldh [$1f], a
    db $e3
    rra
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $fe
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
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    ld bc, $01fe
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rra
    rra
    rrca
    rrca
    rlca
    rlca
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
    ld bc, $7f0f
    ccf
    ld a, a
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst $38
    ld b, $fd
    rra
    db $ec
    ccf
    db $fc
    cp $71
    db $fc
    db $e3
    pop hl
    cp $cf
    pop af
    cp a
    jp $cf3f


    ccf
    rst $18
    rst $38
    rra
    rst $38
    rra
    rst $38
    rst $08
    rst $38
    rst $20
    rst $38
    ld sp, $f9ff
    rst $38
    ld hl, sp-$30
    cpl
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
    nop
    inc bc
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
    ld a, a
    add b
    ld a, a
    add b
    rrca
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
    nop
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
    rra
    ccf
    rra
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld a, [bc]
    push af
    ld bc, $01fe
    cp $01
    cp $9c
    ld h, e
    ccf
    ret nz

    rst $38
    inc bc
    rst $38
    add a
    rst $38
    rst $08
    rst $38
    rst $20
    rst $38
    di
    rst $38
    ld sp, hl
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    sbc $ff
    rst $38
    sbc $ff
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    dec b
    inc b
    inc e
    dec b
    dec c
    ld b, $0f
    ld a, a
    rst $38
    dec e
    ld a, a
    nop
    rrca
    nop
    inc bc
    nop
    ld bc, $0100
    add c
    add c
    db $e3
    add h
    ld [hl], l
    ld b, [hl]
    inc a
    daa
    jr jr_01c_6e67

    nop
    ccf
    nop
    ccf
    jr nz, jr_01c_6ecd

    jr nc, jr_01c_6ecf

    db $10
    rst $38
    ld [$06ff], sp
    rst $38
    ld bc, $007f
    ccf
    nop
    ld e, $00
    nop
    nop
    nop
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    db $fc

jr_01c_6e67:
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ret nz

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
    ld a, a
    ld a, a
    ccf
    ccf
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    nop
    nop
    nop

jr_01c_6e87:
    nop
    nop
    nop
    nop
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

    ldh a, [$f0]
    db $fc
    db $fc
    cp $fe
    rst $38
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ldh [$1f], a
    jr nz, jr_01c_6e87

    db $fc
    inc bc
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    ei
    add h
    rst $38
    call z, $e6ff
    rst $38
    di
    rst $38
    di
    rst $38
    ld sp, hl
    rst $38
    ld a, b
    rst $38
    inc a
    rst $38
    sbc [hl]
    rst $38
    ld e, a
    ei
    ld h, h
    ld sp, hl
    and $ff
    jr nc, jr_01c_6f0a

    ret


    rlca

jr_01c_6ecd:
    ld sp, hl
    inc bc

jr_01c_6ecf:
    db $fd
    rst $38
    rst $38
    ld a, a
    ld a, a
    rra
    rra
    rlca
    rlca
    inc bc
    inc bc
    add l
    add l
    db $e4
    db $e4
    call c, Call_000_0cdc
    sbc h
    rlca
    sbc a

jr_01c_6ee4:
    add [hl]
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    sbc $80
    ldh a, [rP1]
    pop af
    nop
    rst $38
    nop
    rst $38
    nop
    db $e3
    nop
    ldh a, [rP1]
    ldh a, [$30]
    ret nc

    ldh a, [$90]
    ld [hl], b
    ret nc

    jr nz, jr_01c_6ee4

    ld h, b
    ldh [$80], a
    add b
    nop
    nop

jr_01c_6f0a:
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    nop
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
    rra
    rra
    rrca
    rrca
    inc bc
    inc bc
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    ld a, [hl]
    cp $1f
    rst $38
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    cp $81
    cp $c1
    ei
    db $f4
    db $fd
    ld a, [$7ffe]
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    sbc a
    rst $38
    adc a
    rst $38
    rst $00
    rst $38
    db $e3
    rst $38
    pop af
    cp a
    ld d, c
    ccf
    ret c

    ccf
    call c, $ee1f
    rrca
    di
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    xor $7f
    ld [bc], a
    rst $38
    nop
    rst $38
    ld h, $ff
    inc a
    db $fc
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    db $10
    ldh a, [$0c]
    db $fc
    db $10
    ldh a, [$c0]
    ldh a, [rBCPS]
    ld hl, sp+$64
    ld h, h
    ld h, [hl]
    ld h, [hl]
    ld h, d
    ld h, d
    nop
    jr nz, jr_01c_6f93

jr_01c_6f93:
    jr nz, jr_01c_6f95

jr_01c_6f95:
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
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
    rra
    ld e, $3f
    dec a
    ld a, a
    ld a, e
    rst $38
    rst $30
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld hl, sp+$03
    ld hl, sp+$07
    pop af
    rrca
    db $e3
    rrca
    db $e3
    rra
    rst $00
    rra
    rst $18
    ccf
    cp a
    rrca
    rst $08
    rlca
    rst $30
    ld bc, $00f9
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
    ccf
    ccf
    rra
    rra
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0001
    nop
    add b
    add b
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    ld a, a
    ret nz

    cp a
    ldh [$df], a
    ldh a, [$ef]
    ld hl, sp-$49
    db $fc
    db $d3
    db $fc
    adc e
    cp $c5
    cp $c1
    rst $38
    ld h, h
    rst $38
    jr c, @+$01

    ld h, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, b
    ccf
    ret nz

    ldh a, [rIE]
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01c_7033:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca
    rrca
    rra
    ld c, $1f
    dec e
    ccf
    dec sp
    ld a, a
    ld [hl], a
    rst $38
    rst $30
    rst $38
    db $10
    rst $28
    jr nz, jr_01c_7033

    ld b, c
    cp [hl]
    add c
    ld a, [hl]
    ld bc, $02fe
    db $fd
    nop
    rst $38
    nop
    rst $38
    add b
    rra
    ldh [$87], a
    ld hl, sp-$3d
    ldh a, [$c7]
    ldh a, [$c7]
    ldh [$8f], a
    ret nz

    rra
    add b
    cp a
    add b
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
    ccf
    ccf
    rra
    rra
    rrca
    rrca
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
    nop
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld b, b
    cp a
    ld h, b
    sbc a
    or b
    ld c, a
    call c, $dc23
    inc hl
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    ld b, $fe
    inc e
    db $fc
    ld hl, sp-$08
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca
    ld c, $1f
    ld e, $3f
    dec a
    ld a, a
    ld a, e
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    ld hl, $43de
    cp h
    add a
    ld a, b
    rrca
    ldh a, [$1f]
    ldh [$1f], a
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
    db $fc
    inc bc
    ldh a, [rIF]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $03
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    ld bc, $fffe
    rst $38
    rst $38
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
    ccf
    rra
    rra
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
    ldh [$e0], a
    ldh a, [$f0]
    cp b
    cp b
    inc c
    inc c
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
    rrca
    dec c
    rra
    dec de
    ccf
    scf
    ld a, a
    ld [hl], a
    rst $38
    rst $28
    rst $38
    sbc $ff
    ld b, e
    cp h
    add a
    ld a, b
    rrca
    ldh a, [$1f]
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
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld hl, sp+$07
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
    nop
    nop
    nop
    nop
    nop
    ld bc, $0302
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    dec b
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    ld bc, $0307
    inc bc
    inc bc
    inc bc
    inc bc
    ld [$0901], sp
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    dec bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc c
    dec c
    ld c, $03
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    rrca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    db $10
    ld de, $0312
    nop
    nop
    nop
    nop
    nop
    inc de
    inc d
    inc bc
    inc bc
    inc bc
    dec d
    ld d, $17
    jr jr_01c_7208

    inc bc
    nop
    nop
    nop
    nop
    nop
    ld a, [de]
    dec de
    inc bc
    inc bc
    inc e
    dec e
    ld e, $1f
    inc bc
    jr nz, jr_01c_7203

    nop
    nop
    nop

jr_01c_7203:
    nop
    nop
    ld hl, $0322

jr_01c_7208:
    inc bc
    inc bc
    inc hl
    inc h
    dec h
    inc bc
    ld h, $03
    nop
    nop
    nop
    nop
    nop
    daa
    jr z, jr_01c_721b

    inc bc
    inc bc
    inc bc

jr_01c_721b:
    add hl, hl
    ld a, [hl+]
    inc bc
    dec hl
    inc bc
    nop
    nop
    inc l
    dec l
    ld bc, $2f2e
    jr nc, jr_01c_725a

    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [hl-], a
    inc bc
    nop
    nop
    inc sp
    ld bc, $3401
    dec [hl]
    ld [hl], $37
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    jr c, jr_01c_7243

    nop
    nop
    add hl, sp

jr_01c_7243:
    ld bc, $3a01
    dec sp
    inc a
    dec a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld a, $03
    nop
    nop
    ccf
    ld bc, $4001
    ld b, c
    ld b, d
    ld b, e
    inc bc

jr_01c_725a:
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, h
    inc bc
    nop
    nop
    ld b, l
    ld bc, $4601
    ld b, a
    ld c, b
    ld c, c
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld c, d
    inc bc
    ld c, e
    nop
    ld c, h
    ld bc, $4d01
    ld c, [hl]
    ld c, a
    ld d, b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld d, c
    inc bc
    ld d, d
    nop
    ld d, e
    ld bc, $5401
    ld d, l
    ld d, [hl]
    ld d, a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld e, b
    ld e, c
    ld e, d
    nop
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld h, d
    ld h, e
    ld h, h
    nop
    nop
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
    ld h, e
    ld h, h
    nop
    nop
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
    ld bc, $0201
    ld a, e
    nop
    nop
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    nop
    nop
    nop
    nop
    add c
    add d
    add e
    add h
    add l
    nop
    nop
    add [hl]
    add a
    adc b
    adc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc d
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
    inc bc
    nop
    ld bc, $0001
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
    inc bc
    nop
    ld bc, $0001
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
    inc bc
    nop
    ld bc, $0001
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
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    inc bc
    inc b
    ld bc, $0000
    nop
    nop
    nop
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    inc b
    ld bc, $0000
    nop
    nop
    nop
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    ld [bc], a
    inc b
    ld bc, $0000
    nop
    nop
    nop
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    inc b
    ld bc, $0000
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0000
    nop
    nop
    nop
    inc bc
    inc b
    inc b
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0000
    nop
    nop
    nop
    inc b
    inc bc
    inc b
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0000
    nop
    nop
    nop
    inc b
    inc b
    inc b
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0000
    nop
    nop
    nop
    inc b
    inc b
    inc b
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0001
    nop
    nop
    nop
    inc b
    inc b
    inc b
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    inc b
    inc b
    inc b
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0001
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    inc bc
    inc bc
    inc b
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    nop
    ld [bc], a
    ld [bc], a
    inc b
    inc bc
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld bc, $0001
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$fc]
    rst $38
    rst $38
    rst $38
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
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
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
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ld a, a
    rst $38
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
    nop
    nop
    nop
    nop
    nop
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
    ld a, a
    ld a, a
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
    rst $38
    rst $38
    rst $38
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
    add b
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
    ld bc, $01fe
    cp $07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$f0]
    rst $38
    db $e3
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    cp h
    db $fc
    ld e, $fe
    ld e, $fe
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
    ld h, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc b
    nop
    ld [bc], a
    nop
    inc bc
    ld [bc], a
    ld bc, $0101
    ld bc, $1010
    add hl, bc
    add hl, bc
    rrca
    rrca
    ld e, a
    ld e, a
    ld a, l
    ld a, a
    ccf
    ld [hl+], a
    ccf
    ld a, $1f
    ld e, $1f
    dec de
    ccf
    ccf
    ld b, h
    ld b, h
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    nop
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
    db $10
    db $10
    db $10
    db $10
    stop
    stop
    stop
    sub b

jr_01c_75f7:
    sub b
    or b

jr_01c_75f9:
    or b
    cp b
    cp b
    cp b
    jr c, jr_01c_75f7

    jr c, jr_01c_75f9

    cp b
    ret c

    ld hl, sp-$27
    ld hl, sp-$21
    ld a, [hl]
    adc a
    ld a, a
    ldh a, [$1f]
    db $ec
    dec de
    sub $db
    or [hl]
    sbc a
    ld a, a
    ld c, a
    ld [hl], e
    ld b, e
    ld [hl], e
    ld d, e
    jp $c3c2


    jp $8080


    nop
    nop
    nop
    nop
    rrca
    nop
    rst $38
    rrca
    ld a, a
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
    nop
    rst $38
    nop
    rrca
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
    nop
    nop
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
    ld [$1008], sp
    db $10
    jr nz, jr_01c_767e

    ld h, b
    ld h, b
    ldh [$e0], a
    ldh a, [$e0]
    cp $fe
    cp [hl]
    ld [c], a
    ccf
    di
    rst $38
    ld a, c
    rlca
    db $fc
    rst $38
    ld hl, sp-$01
    reti


    ccf
    ei
    rst $00
    rst $38
    rst $38
    ccf
    db $fc
    cp h
    add sp, -$58
    ldh [$a0], a

jr_01c_767e:
    add b
    add b
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    ccf
    ret nz

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
    nop
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
    ccf
    rst $38
    nop
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
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    nop
    ret nz

    ret nz

    ret nz

    add b
    ldh a, [$c0]
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
    rst $38
    rst $38
    rra
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

Call_01c_76e0:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    ld [hl], e
    di
    ld h, b
    ldh [$e2], a
    ld [c], a
    ldh a, [$f0]
    ld a, [c]
    ld a, [c]
    di
    di
    di
    di
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    rst $38
    rst $38
    dec c
    db $fd
    inc c
    inc c
    inc c
    inc c
    dec c
    dec c
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
    inc bc
    inc bc
    inc bc
    inc bc
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
    ldh a, [rP1]
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    nop
    rra
    ldh [rP1], a
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
    rra
    rra
    ld l, a
    adc a
    ccf
    rst $08
    rrca
    rst $28
    rra
    rst $28
    rrca
    ld l, a
    rra
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
    sbc $d8
    ld sp, hl
    jp nz, $f2f1

    ldh [$e9], a
    ldh a, [$f1]
    cp $ff
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

jr_01c_7791:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    nop
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
    ccf
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
    rst $18
    ld e, $80
    ld bc, $0f00
    nop
    ld c, a
    db $10
    ld c, e
    jr nz, jr_01c_7791

    jr nz, @+$22

    pop af
    ld sp, hl
    pop af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    ld a, a
    cp a
    ccf
    ccf
    cp a
    rra
    sbc a
    ccf
    cp a
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
    ld a, [$fffa]
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
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    ldh a, [rP1]
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
    ld a, a
    ld a, a
    rst $38
    ld l, a
    ld h, a
    ld b, e
    ld e, a
    ld b, c
    ld e, l
    ld h, c
    ld e, l
    ld sp, hl
    ld [hl], c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop hl
    ldh a, [$e4]
    ldh a, [$e3]
    db $fc
    ld sp, hl
    cp $fc
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
    ld hl, sp+$00
    rst $38
    add b
    rst $38
    rst $38
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
    nop
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
    db $fc
    rst $38
    cp $fe
    db $fd
    cp $df
    rst $18
    rrca
    sbc a
    ei
    sbc $bf
    cp $df
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rlca
    rlca
    rst $30
    rrca
    rst $30
    rrca
    rrca
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
    nop
    nop
    nop
    nop
    nop
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
    db $fc
    rst $38
    inc bc
    inc bc
    db $fc
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc bc
    db $fc
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
    rst $38
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, [hl]
    db $fc
    ld a, [hl]
    ld a, l
    db $fc
    db $fc
    ei
    ld hl, sp-$01
    rst $38
    rst $38
    pop af
    ldh a, [$f6]
    ldh a, [$f7]
    ld hl, sp-$08
    rst $38
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
    ldh [rP1], a
    rst $38
    rst $38
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
    db $fc
    ret nz

    ret nz

    rst $08
    ret nz

    sbc [hl]
    ldh [$dc], a
    rst $38
    and $ff
    rst $38
    rst $28
    ld bc, $bc41
    nop
    or [hl]
    inc h
    nop
    db $fc
    db $fc
    rst $38
    rst $38
    ld bc, $00f0
    cp $03
    ei
    rra
    rlca
    rst $18
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
    push af
    push af
    rst $38
    rst $38

jr_01c_7998:
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
    rst $38
    rst $38
    rst $38
    ld bc, $00ff
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
    rst $38
    db $fc
    db $fc
    ldh [$e0], a
    cp $fe
    rst $38
    rst $38
    db $fc
    db $fc
    call c, $ffdc
    rst $38
    db $fd
    db $fd
    add b
    add b
    ret nz

    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    db $fc
    db $fc
    nop
    nop
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
    rlca
    inc c
    di
    ld [$18f7], sp
    rst $20
    cp h
    ld e, e
    rst $38
    db $fd
    rst $38
    rst $38
    jr nc, jr_01c_7998

    inc c
    call nc, $0686
    rst $38
    sbc a
    rst $38
    rst $38
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
    ret nz

    nop
    rst $38
    rst $38
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
    rst $38
    nop
    rst $38
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
    add b
    add b
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
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    add b
    add b
    nop
    nop
    rst $38
    rst $38
    rst $38
    sbc a
    ld e, $e1
    nop
    rst $38
    ld bc, $62fe
    call c, $e3fb
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, c
    ld b, c
    nop
    nop
    db $fc
    db $fc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
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
    rst $18
    rst $38
    sbc a
    rst $38
    rra
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    rrca
    ccf
    rrca
    ccf
    rrca
    ccf
    rrca
    ccf
    rrca
    ccf
    rrca
    ccf
    rrca
    ccf
    rrca
    ccf
    rrca
    ccf
    rrca
    ccf
    rrca
    ccf
    rrca
    ccf
    rrca
    ccf
    rrca
    ccf
    rlca
    rra
    rlca
    rra
    rlca
    rra
    rlca
    rra
    rlca
    rra
    rlca
    rra
    rlca
    rra
    rlca
    rra
    rlca
    rra
    rlca
    rra
    rlca
    rra
    rlca
    rra
    rlca
    rra
    rlca
    rra
    rlca
    rra
    rlca
    rra
    rlca
    rra
    rlca
    rra
    rlca
    rrca
    rlca
    rst $38
    rst $30
    rst $38
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
    rst $38
    rst $38
    rst $38
    ld a, d
    ld sp, $200e
    rra
    nop
    rra
    nop
    inc c
    nop
    nop
    db $fc
    db $fc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    add b
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
    ei
    db $fc
    ei
    db $fc
    db $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fe
    rst $38
    cp $ff
    cp $ff
    cp $ff
    ld bc, $01fe
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
    cp $01
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
    ccf
    nop
    rst $38
    nop
    ccf
    nop
    rra
    nop
    ccf
    nop
    rra
    nop
    rlca
    nop
    ld bc, $ff00
    nop
    ld a, a
    nop
    inc bc
    nop
    ld bc, $0100
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
    ldh a, [$f0]
    ld a, a
    rst $38
    ld bc, $0181
    add c
    ld bc, $0101
    ld bc, $0101
    ld bc, $ff01
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    rst $38
    ldh a, [rIE]
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
    rst $38
    nop
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
    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    ccf
    ret nz

    rra
    ld h, b
    ld bc, $001e
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ccf
    rst $38
    nop
    inc bc
    nop
    ld a, a
    nop
    rst $38
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
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
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
    rra
    ldh [rSB], a
    ld e, $00
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
    ld bc, $0302
    nop
    nop
    nop
    nop
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
    inc bc
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
    ld b, $03
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
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    nop
    nop
    nop
    nop
    nop
    dec c
    ld c, $0e
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $16
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    jr jr_01c_7d46

    ld a, [de]
    dec de
    inc e
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
    rla
    jr jr_01c_7d56

    dec e
    ld e, $1f
    rla
    rla
    rla
    rla
    rla
    rla

jr_01c_7d46:
    rla
    rla
    rla
    rla
    rla
    jr jr_01c_7d66

    jr nz, jr_01c_7d70

    ld [hl+], a
    rla
    rla
    rla
    rla
    rla
    rla

jr_01c_7d56:
    rla
    rla
    rla
    rla
    rla
    jr jr_01c_7d76

    inc hl
    inc h
    dec h
    rla
    rla
    rla
    rla
    rla
    rla

jr_01c_7d66:
    rla
    rla
    rla
    rla
    rla
    jr jr_01c_7d93

    daa
    jr z, jr_01c_7d99

jr_01c_7d70:
    rla
    rla
    rla
    rla
    rla
    rla

jr_01c_7d76:
    rla
    rla
    rla
    rla
    rla
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $17
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
    ld a, [hl+]
    dec hl
    cpl
    jr nc, jr_01c_7dc1

    rla
    rla
    rla

jr_01c_7d93:
    rla
    rla
    rla
    rla
    rla
    rla

jr_01c_7d99:
    rla
    rla
    ld a, [hl+]
    dec hl
    ld [hl-], a
    inc sp
    inc [hl]
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
    rla
    ld a, [hl+]
    dec hl
    dec [hl]
    ld [hl], $37
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
    rla
    ld a, [hl+]
    dec hl
    jr c, jr_01c_7dbf

jr_01c_7dbf:
    add hl, sp
    nop

jr_01c_7dc1:
    nop
    nop
    nop
    nop
    dec c
    ld c, $0e
    ld c, $0e
    ld c, $3a
    dec sp
    nop
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
    nop
    nop
    dec a
    inc bc
    ld a, $00
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
    ld b, b
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
    ld b, d
    inc bc
    ld b, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, h
    inc bc
    ld b, l
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
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
    ld bc, $0000
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
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
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $2101
    ld hl, $2121
    ld hl, $0121
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
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
    nop
    ld bc, $ff01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    inc bc
    rst $38
    rlca
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
    nop
    rst $38
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$0f
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
    inc bc
    rst $38
    rrca
    rst $38
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07fe
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$3f], a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07ff
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    rrca
    ldh a, [$1f]
    db $e0
