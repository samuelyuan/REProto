SECTION "ROM Bank $096", ROMX[$4000], BANK[$96]

    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$ef]
    ldh [$ef], a
    ldh [rIE], a
    ldh [$df], a
    ret nz

    rst $18
    ret nz

    sbc a
    add b
    rra
    ld bc, HeaderManufacturerCode
    ccf
    ld bc, HeaderManufacturerCode
    ccf
    inc bc
    ccf
    inc bc
    ld a, a
    inc bc
    ld a, a
    inc bc
    ld a, a
    rlca
    ld a, a
    rlca
    rst $38
    add a
    rst $38
    rrca
    rst $38
    rrca
    cp $0f
    cp $1f
    cp $1f
    db $fc
    rra
    db $fc
    rra
    db $fc
    rra
    ld hl, sp+$3f
    ld hl, sp+$3f
    ld hl, sp+$3f
    ldh a, [$7f]
    ldh a, [$7f]
    ldh a, [$7f]
    ldh a, [$7f]
    ldh [rIE], a
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    stop
    add b
    nop
    call nc, Call_096_7400
    nop
    call nc, $e800
    nop
    or h
    nop
    db $fc
    nop
    db $ec
    nop
    or $00
    db $dd
    nop
    db $dd
    nop
    db $eb
    nop
    ei
    nop
    sbc $00
    sbc $00
    ei
    nop
    cp $00
    ld a, a
    nop
    db $fd
    nop
    db $db
    nop
    sbc l
    nop
    rst $10
    nop
    ld a, h
    nop
    rst $38
    nop
    or $00
    rst $38
    nop
    ld hl, sp+$00
    cp $00
    db $fc
    nop
    sub $00
    call nc, $7c00
    nop
    db $fc
    nop
    ld a, [$fa00]
    nop
    rst $30
    nop
    rst $30
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
    add b
    rst $38
    cp $ff
    cp $ff
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    ccf
    ld hl, sp+$3f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ldh a, [$7f]
    ldh a, [$7f]
    ldh a, [rIE]
    ldh [rIE], a
    nop
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
    nop
    nop
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
    add b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ldh a, [rP1]
    db $e4
    nop
    xor h
    nop
    db $ec
    nop
    call c, $bc00
    nop
    db $fc
    nop
    sbc b
    nop
    sub b
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
    add b
    nop
    add b
    nop
    and b
    nop
    and b
    nop
    ldh [rP1], a
    ld [c], a
    nop
    add $00
    sbc a
    nop
    or [hl]
    nop
    sbc $00
    ld e, [hl]
    nop
    ld e, [hl]
    nop
    db $fc
    nop
    db $fc
    nop
    cp [hl]
    nop
    cp $00
    db $fc
    nop
    db $fc
    nop
    cp $00
    rst $38
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
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_096_41a3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    db $10
    db $10
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_096_41c4

    jr z, jr_096_41c6

    jr z, jr_096_41c9

    ld a, [hl+]
    dec hl
    inc l

jr_096_41a3:
    dec l
    jr nz, jr_096_41ce

    jr z, jr_096_41d6

jr_096_41a8:
    cpl
    jr nc, jr_096_41dc

    jr z, jr_096_41d5

    jr z, jr_096_41e1

    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_096_41ef

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    db $10
    ld b, h
    ld b, l
    ld b, [hl]

jr_096_41c4:
    ld b, a
    ld c, b

jr_096_41c6:
    ld c, c
    ld c, d
    ld c, e

jr_096_41c9:
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b

jr_096_41ce:
    jr z, jr_096_41f8

    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l

jr_096_41d5:
    ld d, [hl]

jr_096_41d6:
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h

jr_096_41dc:
    ld e, l
    jr z, jr_096_4207

    jr z, jr_096_41f4

jr_096_41e1:
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    db $10
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    jr z, jr_096_4217

jr_096_41ef:
    jr z, jr_096_4201

    ld l, c
    ld l, d
    ld l, e

jr_096_41f4:
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a

jr_096_41f8:
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    jr z, jr_096_4227

    jr z, jr_096_4214

jr_096_4201:
    inc de
    inc de
    ld [hl], l
    ld bc, $7776

jr_096_4207:
    ld a, b
    ld a, c
    ld a, d
    ld a, d
    ld a, e
    ld a, h
    jr z, jr_096_4237

    jr z, jr_096_4221

    db $10
    db $10
    ld a, l

jr_096_4214:
    ld a, [hl]
    ld a, a
    add b

jr_096_4217:
    add c
    add d
    add e
    add h
    add l
    add [hl]
    jr z, jr_096_4247

    jr z, jr_096_41a8

jr_096_4221:
    adc b
    adc c
    adc d
    db $10
    db $10
    db $10

jr_096_4227:
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    jr z, jr_096_4258

    sub d
    sub e
    sub h
    sub l
    sub [hl]
    db $10
    sub a

jr_096_4237:
    sbc b
    sbc c
    ld a, d
    ld a, d
    ld a, d
    sbc d
    sbc e
    jr z, jr_096_4268

    db $10
    db $10
    db $10
    sbc h
    sbc l
    sbc [hl]
    sbc a

jr_096_4247:
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    db $10
    db $10
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]

jr_096_4258:
    xor a
    or b
    or c
    or d
    or e
    or h
    or l
    or [hl]
    ld l, c
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l

jr_096_4268:
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    call nz, $c6c5
    rst $00
    ret z

    ret


    jp z, $cccb

    call $cfce
    ret nc

    call nz, $c4c4
    call nz, $d2d1
    db $d3
    call nc, $d6d5
    rst $08
    rst $10
    ret c

    call nz, $c4c4
    call nz, $c4c4
    call nz, $dad9
    db $db
    call c, $c4dd
    call nz, $c4c4
    call nz, $c4c4
    sbc $c4
    call nz, $dfc4
    ldh [$e1], a
    call nz, $c4c4
    call nz, $c4c4
    call nz, $e2c4
    call nz, $c4c4
    call nz, Call_000_0101
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
    ld bc, $0001
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0121
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    ld bc, $0101
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
    ld bc, $0001
    ld bc, $0101
    ld hl, $2121
    ld bc, $0101
    ld bc, $0000
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld b, $06
    inc b
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $06
    ld b, $04
    ld bc, $0120
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
    ld bc, $0000
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
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
    ld bc, $0101
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
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
    ld bc, $0000
    nop
    nop
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
    add a
    nop
    rst $00
    nop
    jp $e300


    nop
    di
    nop
    di
    nop
    ei
    add b
    ld a, e
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
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $81
    cp $c1
    cp $c1
    cp $e1
    cp $f1
    cp $f9
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
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
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
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
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, h
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
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
    rst $38
    rra
    nop
    rst $38

jr_096_44f2:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    add b
    nop
    add b
    nop
    add b
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

    nop
    ret nz

    nop
    ret nz

    nop

jr_096_452f:
    ret nz

    jr nz, jr_096_44f2

    db $10
    ldh [rNR23], a
    ldh [$0e], a
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    ld bc, $00fe
    rst $38
    db $10
    rst $28

jr_096_4546:
    jr jr_096_452f

jr_096_4548:
    jr @-$17

jr_096_454a:
    inc e
    db $e3

jr_096_454c:
    ld e, $e1

jr_096_454e:
    ld e, $e1

jr_096_4550:
    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$0f
    db $fc
    adc a
    db $fc
    adc a
    ld a, [hl]
    adc a
    ld a, a
    adc a
    ld a, a
    adc a
    ld a, a
    adc a
    ld a, a
    adc a
    ld [hl], a
    add a
    ld a, a
    add a
    ld a, e
    add a
    ld a, c
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    rst $00
    jr c, jr_096_4546

    jr c, jr_096_4548

    jr c, jr_096_454a

    jr c, jr_096_454c

    jr c, jr_096_454e

    jr c, jr_096_4550

    jr c, @-$37

    jr c, jr_096_4550

    inc a
    jp $c33c


    inc a
    jp $c33c


    inc a
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
    db $e3
    inc e
    db $e3
    inc e
    db $e3
    inc e
    db $e3
    inc e
    pop hl
    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld e, $f1
    ld c, $f1
    ld c, $f1
    ld c, $f1
    ld c, $f1
    ld c, $f1
    ld c, $f1
    ld c, $f1
    ld c, $f1
    ld c, $f1
    ld c, $f0
    rrca
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    add e
    db $fc
    add e
    db $fc
    add e
    db $fc
    add e
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
    inc bc
    nop
    ld bc, $0100
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
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp-$79
    ld a, b
    jp $c13c


    ld a, $e1
    ld e, $f0
    rrca
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    cp $81
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
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
    ld a, [hl]
    add c
    cp $7f
    cp $7f
    cp $7f
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
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    ld a, a
    rrca
    ld a, a
    rlca
    ld a, a
    rlca
    ld a, a
    rlca
    ccf
    rlca
    ccf
    rlca
    ccf
    inc bc
    ccf
    inc bc
    rra
    inc bc
    rra
    inc bc
    rra
    inc bc
    rra
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    nop
    rlca
    nop
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [$87]
    ld a, b
    add e
    ld a, h
    jp $e13c


    ld e, $e1
    ld e, $f0
    rrca
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    cp $81
    cp $81
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    ld a, [hl]
    rst $38
    ld a, $ff
    rra
    rst $38
    rrca
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
    cp $01
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld bc, $00fe
    cp $00
    cp $00
    cp $00
    cp $00
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
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    ld a, a
    db $fc
    ld a, a
    db $fc
    ld a, a
    db $fc
    ld a, a
    db $fc
    ccf
    cp $3f
    cp $3f
    cp $3f
    cp $3f
    cp $1f
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
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
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

    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [$8f]
    ld [hl], b
    add a
    ld a, b
    jp $e33c


    inc e
    pop hl
    ld e, $f0
    rrca
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    add e
    db $fc
    jp $c1fe


    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, h
    rst $38
    ld a, $ff
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
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
    ld bc, $01fe
    cp $03
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$3f], a
    ret nz

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
    add b
    nop
    add b
    nop
    add b
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
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    cp $00
    cp $80
    cp $80
    cp $80
    cp $80
    cp $80
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
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$7f]
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$3f
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    rra
    ld a, h
    sbc a
    inc a
    rst $18
    ld a, $df
    ld e, $ff
    ld e, $ef
    ld c, $ff
    add [hl]
    ld a, a
    rst $00
    ccf
    jp $e33f


    rra
    pop af
    rra
    ldh a, [$3f]
    ld hl, sp-$41
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    ld a, a
    ret nz

    ccf
    add c
    ld a, [hl]
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ld a, a
    add b

jr_096_4900:
    ld h, d
    inc c

jr_096_4902:
    ld h, d
    inc c

jr_096_4904:
    jr nc, jr_096_490c

jr_096_4906:
    jr nc, jr_096_490e

jr_096_4908:
    jr nc, jr_096_4910

jr_096_490a:
    jr nc, jr_096_4912

jr_096_490c:
    inc e
    inc bc

jr_096_490e:
    inc e
    inc bc

jr_096_4910:
    inc e
    inc bc

jr_096_4912:
    inc c
    ld bc, $010c
    inc c
    ld bc, $010e
    ld c, $00
    ld c, $01
    ld c, $01
    inc c
    ld bc, $010c
    inc c
    ld bc, $010c
    inc c
    ld bc, $010c
    inc c
    ld bc, $010c
    inc c
    ld bc, $010c
    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

    jr @+$03

jr_096_494c:
    jr @+$03

jr_096_494e:
    jr @+$03

    jr @+$03

    jr @+$03

jr_096_4954:
    jr @+$05

jr_096_4956:
    jr @+$05

jr_096_4958:
    jr @+$05

jr_096_495a:
    jr @+$05

    jr @+$05

    jr @+$05

    jr @+$05

    jr @+$05

    jr @+$05

    jr @+$05

    jr jr_096_496c

    jr jr_096_496e

jr_096_496c:
    jr jr_096_4970

jr_096_496e:
    jr jr_096_4972

jr_096_4970:
    jr jr_096_4974

jr_096_4972:
    jr c, jr_096_4976

jr_096_4974:
    jr nc, jr_096_4978

jr_096_4976:
    jr nc, jr_096_497a

jr_096_4978:
    jr nc, jr_096_497c

jr_096_497a:
    jr nc, jr_096_497e

jr_096_497c:
    jr nc, jr_096_4900

jr_096_497e:
    jr nc, jr_096_4902

    jr nc, jr_096_4904

jr_096_4982:
    jr nc, jr_096_4906

jr_096_4984:
    jr nc, jr_096_4908

    jr nc, jr_096_490a

jr_096_4988:
    jr nc, jr_096_494c

    jr nc, jr_096_494e

    jr nc, jr_096_4954

    jr nc, jr_096_4956

    jr nc, jr_096_4958

    jr nc, jr_096_4958

    jr nz, jr_096_495a

    nop
    db $e4
    nop
    db $e4
    nop
    db $e4
    nop
    db $e4
    nop
    db $e4
    nop
    push hl
    nop
    push af
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
    rst $38
    ld bc, $01fe
    cp $02
    db $fc
    ld [bc], a
    db $fc
    ld b, $f8
    rrca
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ccf
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
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    and b
    nop
    or b
    nop
    or b
    ld b, b
    sub b
    ld b, b
    sub b
    ld b, b
    sbc b
    ld b, b
    sbc b
    ld h, b
    adc b
    ld h, b
    adc b
    jr nz, jr_096_4988

    jr nz, jr_096_4982

    jr nc, jr_096_4984

    jr nc, jr_096_4a08

    db $10
    ld b, $18
    ld [bc], a
    jr @+$04

jr_096_4a08:
    ld [$0803], sp
    inc bc
    inc c
    ld bc, HeaderLogo
    inc b
    ld bc, $0006
    ld b, $00
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld bc, $0100
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
    nop
    ld bc, $0300
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
    ld bc, $023e
    ld a, h
    ld [bc], a
    ld a, h
    inc b
    ld hl, sp+$08
    ldh a, [$08]
    ldh a, [rNR10]
    ldh [rNR11], a
    ldh [rNR44], a
    pop bc
    ld b, e
    add d
    ld b, a
    add l
    add a
    ld [bc], a
    rrca
    dec b
    rra
    ld a, [bc]
    rra
    dec d
    rra
    ld a, [bc]
    rra
    dec d
    rrca
    ld a, [bc]
    inc bc
    ld bc, $0080
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
    nop
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
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
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
    sbc a
    nop
    sbc a
    nop
    sbc a
    nop
    sbc a
    nop
    rst $18
    nop
    ld e, a
    nop
    ld e, a
    nop
    ld a, a
    add b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ccf
    ret nz

    rra
    ld b, b
    rra
    ld b, b
    rra
    ld h, b
    rrca
    jr nz, jr_096_4af1

    jr nz, jr_096_4af3

    jr nz, jr_096_4af5

    jr nc, @+$09

    db $10
    rlca
    db $10
    rrca
    db $10
    rrca
    ld bc, $031e

jr_096_4af1:
    inc a
    ld [bc], a

jr_096_4af3:
    inc a
    inc b

jr_096_4af5:
    ld a, b
    inc b
    ld hl, sp+$08
    ldh a, [rNR11]
    ldh [rNR11], a
    pop hl
    inc hl
    jp nz, $8547

    ld b, a
    add d
    adc a
    dec b
    adc a
    ld a, [bc]
    rra
    dec d
    rra
    ld a, [bc]
    ccf
    dec d
    ld a, a
    ld a, [hl+]
    ld a, a
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
    ld a, a
    ld a, [hl+]
    rlca
    dec b
    nop
    nop
    add b
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

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    pop hl
    nop
    pop hl
    nop
    db $e3
    nop
    db $e3
    nop
    db $e3
    nop
    rst $20
    nop
    and $00
    xor $00
    db $ec
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    cp $00
    rst $38
    nop
    rst $38
    ldh [$1f], a
    add b
    nop
    nop
    nop
    rra
    dec d
    ld a, a
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
    xor d
    rst $38
    ld d, l
    cp $aa
    cp $54
    db $fc
    xor b
    ldh a, [$50]
    nop
    nop
    nop
    nop
    nop
    nop
    add a
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
    ld bc, $0100
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    rlca
    nop
    ld b, $00
    ld c, $00
    ld c, $00
    inc e
    nop
    inc e
    nop
    jr jr_096_4be1

jr_096_4be1:
    jr c, jr_096_4be3

jr_096_4be3:
    jr nc, jr_096_4be5

jr_096_4be5:
    ld [hl], b
    nop
    ld h, b
    nop
    ldh [rP1], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, a
    nop
    ld bc, $0080
    db $fc
    xor b
    cp $54
    rst $38
    xor d
    rst $38
    ld d, l
    cp $aa
    cp $54
    db $fc
    xor b
    db $fc
    ld d, h
    db $fc
    xor b
    ld hl, sp+$50
    ld sp, hl
    xor b
    pop af
    ld d, b
    pop af
    and b
    ld a, [c]
    ld d, b
    ld [c], a
    and b
    ld [c], a
    ld b, b
    db $e4
    add b
    call nz, $c440
    add b
    ret z

    nop
    adc b
    add b
    adc b
    nop
    sub b
    nop
    stop
    stop
    jr nz, jr_096_4c4a

jr_096_4c4a:
    jr nz, jr_096_4c4c

jr_096_4c4c:
    ld b, c
    nop
    ld b, c
    ld bc, $0243
    add e
    ld bc, $0081
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    cp $00
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
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
    ld bc, $0100
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
    ld c, $00
    inc e
    nop
    inc e
    nop
    jr jr_096_4c8d

jr_096_4c8d:
    jr c, jr_096_4c8f

jr_096_4c8f:
    jr nc, jr_096_4c91

jr_096_4c91:
    ld [hl], b
    nop
    ld [hl], b
    nop
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
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
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rrca
    stop
    stop
    jr nz, jr_096_4cbc

jr_096_4cbc:
    ld hl, $2300
    ld bc, $0247
    ld b, a
    dec b
    ld c, a
    ld a, [bc]
    adc a
    dec b
    adc a
    ld a, [bc]
    rrca
    dec b
    rra
    ld a, [bc]
    rra
    dec d
    rra
    ld a, [bc]
    rra
    dec d
    ccf
    ld a, [hl+]
    ccf
    dec d
    ccf
    ld a, [hl+]
    ccf
    dec d
    ld a, a
    ld a, [hl+]
    ld a, a
    ld d, l
    ld a, a
    ld a, [hl+]
    ld a, a
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
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    ld a, a
    ld d, l
    rra
    ld a, [bc]
    inc bc
    ld bc, $0000
    nop
    nop
    ldh [rP1], a
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
    adc $00
    adc $00
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    cp b
    nop
    cp h
    nop
    inc e
    nop
    inc e
    nop
    inc e
    nop
    ld e, $00
    ld c, $00
    ld c, $00
    ld c, $00
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
    add b
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    nop
    nop
    nop
    cp $aa
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
    ld a, a
    ld a, [hl+]
    rlca
    dec b
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    add b
    ld bc, $0180
    add b
    inc bc
    add b
    inc bc
    ret nz

    rlca
    ret nz

    rlca
    ret nz

    rlca
    ldh [rIF], a
    ldh [rIF], a
    ldh [$1f], a
    ld h, b
    rra
    ld h, b
    rrca
    ld [hl], b
    rrca
    ld [hl], b
    rrca
    jr nc, @+$09

    jr c, jr_096_4e1c

    jr c, jr_096_4e1e

    jr c, jr_096_4e40

    jr jr_096_4e3e

    inc e
    db $e3
    inc e
    di
    inc c
    di
    inc c
    pop af
    ld c, $f1
    ld c, $f9
    ld b, $f9
    ld b, $f8
    rlca
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    cp $01
    cp $01
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
    ld a, h
    inc bc
    inc bc
    nop
    ldh a, [$50]
    db $fc

jr_096_4e11:
    xor b
    cp $54
    cp $aa
    cp $54
    cp $aa
    cp $54

jr_096_4e1c:
    db $fc
    xor b

jr_096_4e1e:
    db $fc
    ld d, h
    db $fc
    xor b
    db $fc
    ld d, h
    db $fc
    xor b
    db $fc
    ld d, h
    db $fc
    xor b
    db $fc
    ld d, h
    db $fc
    xor b
    ld hl, sp+$50
    ld hl, sp-$58
    ld hl, sp+$50
    ld sp, hl
    xor b
    ld sp, hl
    ld d, b
    ld sp, hl
    xor b
    ld sp, hl
    ld d, b
    ld sp, hl
    xor b

jr_096_4e3e:
    ld sp, hl
    ld d, b

jr_096_4e40:
    ld sp, hl
    xor b
    pop af
    ld d, b
    pop af
    and b
    pop af
    ld d, b
    pop af
    and b
    pop af
    ld d, c
    pop hl
    and c
    add e

jr_096_4e4f:
    ld bc, $0103
    inc bc
    ld bc, $0303
    inc bc
    inc bc
    rst $00
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
    inc bc
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
    ld c, $ff
    nop
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    jr c, jr_096_4e4f

    jr c, jr_096_4e11

    ld a, b
    add b
    ld a, b
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rIF]
    ldh a, [$03]
    ldh [rSB], a
    ldh [rSB], a
    ldh [$03], a
    ldh [$03], a
    ret nz

    inc bc
    ldh [$03], a
    db $fc
    inc de
    nop
    ld a, $01
    ld a, $01
    ld a, $01
    ld a, $01
    ld a, $01
    ld a, [hl]
    ld bc, $037c
    ld a, h
    inc bc
    ld a, h
    inc bc
    inc a
    inc bc
    inc c
    inc bc
    inc c
    inc bc
    inc c
    inc bc
    inc c
    inc bc
    inc c
    inc bc
    inc c
    inc bc
    inc c
    add e
    inc c
    add e
    inc c
    add e
    inc c
    add e
    inc e
    jp $c31c


    inc e
    jp $c31c


    inc e
    ld h, e
    jr jr_096_4f4d

    add hl, de
    and $19
    and $18
    rst $20
    jr jr_096_4f15

    jr c, @+$09

    jr nc, jr_096_4f01

    jr nc, jr_096_4f03

    jr nc, jr_096_4f05

    jr nc, jr_096_4f07

    jr nz, jr_096_4f19

    jr nz, jr_096_4f1b

    jr nz, jr_096_4f1d

    ld hl, $211e

jr_096_4f01:
    ld e, $01

jr_096_4f03:
    ld a, $01

jr_096_4f05:
    ld a, $0b

jr_096_4f07:
    inc [hl]
    ld a, [bc]
    dec [hl]
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld b, $19
    ld hl, $33d9
    swap e

jr_096_4f15:
    swap e
    swap e

jr_096_4f19:
    swap e

jr_096_4f1b:
    res 6, a

jr_096_4f1d:
    rst $08
    or [hl]
    adc $b6
    adc $b6
    adc $ee
    sbc [hl]
    db $ec
    sbc h
    db $ec
    sbc h
    db $ec
    sbc h
    ld l, h
    sbc h
    ld l, c
    sbc c
    ld l, c
    sbc c
    jp hl


    sbc c
    ld l, c
    sbc c
    db $e3
    sub e
    ld h, e
    sub e
    ccf
    ret nz

    sbc a
    ldh [$c0], a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $28
    rst $18
    rst $28
    rst $18
    rst $28
    rst $38
    rst $28
    cp a
    rst $38
    sub a

jr_096_4f4d:
    rst $38
    and a
    rst $38
    rst $38
    sub a
    rst $38
    rrca
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld e, a
    rst $38
    ld e, a
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
    jr c, jr_096_4f77

    inc b
    inc bc

jr_096_4f72:
    dec b
    ld [bc], a

jr_096_4f74:
    dec c
    ld [bc], a
    dec c

jr_096_4f77:
    ld [bc], a
    dec c
    ld [bc], a
    dec c
    ld [hl-], a
    jp $c23c


    dec a
    jp nz, $c23d

    dec a
    add $39
    and $19
    rst $20
    jr jr_096_4f72

    jr jr_096_4f74

    jr @-$0f

    db $10
    rst $28
    db $10
    xor a
    ld d, b
    xor a
    ld d, b
    xor [hl]
    ld d, c
    ld l, $d1
    ld l, $d1
    ld l, $d1
    ld l, [hl]
    sub c
    ld l, $d1
    ld l, [hl]
    sub c
    inc l
    db $d3
    ld l, h
    sub e
    ld l, h
    sub e
    ld b, h
    cp e
    inc b
    ei
    dec b
    ld a, [$f609]
    add hl, bc
    or $0a
    push af
    ld a, [bc]
    push af
    ld [de], a
    db $ed
    inc d
    db $eb
    inc d
    db $eb
    inc d
    db $eb
    dec h

jr_096_4fc1:
    jp c, $d629

    add hl, hl
    sub $49
    or [hl]
    ld d, d
    xor l
    ld d, d

jr_096_4fcb:
    xor l
    ld d, d

jr_096_4fcd:
    xor l
    and d

jr_096_4fcf:
    ld e, l
    and h
    ld e, e
    and h
    ld e, e
    and c
    ld e, [hl]
    ld b, c
    cp [hl]
    ld b, c
    cp [hl]
    ld b, e
    cp h
    add e

jr_096_4fdd:
    ld a, h
    add e

jr_096_4fdf:
    ld a, h
    inc bc
    db $fc
    rlca
    ld hl, sp+$06
    ld sp, hl
    ld b, $f9
    add [hl]
    ld a, c
    adc [hl]
    ld [hl], c
    adc h
    ld [hl], e
    inc c
    di
    inc c
    di
    inc e
    db $e3
    jr jr_096_4fdd

    jr jr_096_4fdf

    jr c, jr_096_4fc1

    jr nc, jr_096_4fcb

    jr nc, jr_096_4fcd

    jr nc, jr_096_4fcf

    ld [hl], b
    adc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ret nz

    ccf
    pop bc
    ccf
    pop bc
    ccf
    pop bc
    ccf
    add e
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
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
    rra
    rst $38
    rra
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ccf
    rra
    ccf

jr_096_502d:
    rra
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
    sub e
    ld l, h
    sub e
    ld l, h
    and [hl]
    ld e, c
    xor [hl]
    ld d, c
    ld l, $d1
    ld l, $d1
    inc l
    db $d3
    ld c, [hl]
    or c
    ld e, [hl]
    and c
    ld e, [hl]
    and c
    ld e, h
    and e
    ld e, h
    and e
    ld e, h
    and e
    sbc h
    ld h, e
    cp b
    ld b, a
    cp b
    ld b, a
    cp b
    ld b, a
    cp b
    ld b, a
    jr c, jr_096_502d

    ld [hl], c
    adc [hl]
    ld [hl], c
    adc [hl]
    ld [hl], c
    adc [hl]
    ld h, c
    sbc [hl]
    db $e3
    inc e
    ld [c], a
    dec e
    ld [c], a
    dec e
    jp nz, $c63d

    add hl, sp
    add h
    ld a, e
    add h
    ld a, e
    add h
    ld a, e
    add b
    ld a, a
    nop

jr_096_5081:
    rst $38
    inc b

jr_096_5083:
    ei
    inc h

jr_096_5085:
    db $db
    inc h

jr_096_5087:
    db $db
    add hl, hl
    sub $29
    sub $49
    or [hl]
    ld c, c
    or [hl]
    ld d, e
    xor h
    ld d, e
    xor h
    ld d, e
    xor h
    sub a
    ld l, b
    and a
    ld e, b
    and a
    ld e, b
    and [hl]
    ld e, c
    ld h, $d9
    ld c, [hl]
    or c
    ld c, h
    or e
    ld c, h
    or e
    ld c, h
    or e

jr_096_50a8:
    sbc h
    ld h, e
    sbc b
    ld h, a
    sbc b
    ld h, a
    sbc b
    ld h, a
    jr nc, jr_096_5081

    jr nc, jr_096_5083

    jr nc, jr_096_5085

    jr nc, jr_096_5087

    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
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
    inc bc
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
    rra
    rst $38
    rra
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

jr_096_50fb:
    rst $38
    rst $38

jr_096_50fd:
    rst $38
    rst $38

jr_096_50ff:
    rst $38
    ret nz

    ccf
    ld h, b
    sbc a
    jr nc, @-$2f

    ret nc

    cpl
    ldh a, [rIF]
    ldh a, [rIF]
    ld bc, $21fe
    sbc $21
    sbc $23
    call c, $dc23
    ld h, e
    sbc h
    ld b, e

jr_096_5119:
    cp h
    ld b, e
    cp h
    ld b, a
    cp b
    rst $00
    jr c, jr_096_50a8

    ld a, b
    adc [hl]
    ld [hl], c
    adc [hl]
    ld [hl], c
    adc [hl]
    ld [hl], c
    inc c
    di
    inc e
    db $e3
    inc e
    db $e3
    inc e
    db $e3
    jr jr_096_5119

    jr c, jr_096_50fb

    jr c, jr_096_50fd

    jr c, jr_096_50ff

    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld h, b
    sbc a
    ldh [$1f], a
    ldh [$1f], a
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
    add c
    ld a, a
    add c
    ld a, a
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
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
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
    rrca
    rst $38
    rrca
    rst $38
    rrca
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
    rst $08
    rst $38
    rst $18
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
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
    jr jr_096_5253

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_096_5263

    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc h
    rra
    rra
    rra
    dec h
    ld h, $27

jr_096_5253:
    jr z, jr_096_527e

    ld a, [hl+]
    dec hl
    add hl, hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_096_527d

    rra
    rra
    ld sp, $3332

jr_096_5263:
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_096_52a2

    ld a, [hl-]
    dec sp
    inc a
    rra
    rra
    rra
    rra
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
    rra

jr_096_527d:
    rra

jr_096_527e:
    rra
    rra
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    rra
    rra
    rra
    rra
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
    rra
    rra
    rra
    rra
    ld e, h
    ld e, l

jr_096_52a2:
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld e, b
    ld h, e
    ld h, h
    ld h, l
    rra
    rra
    rra
    rra
    rra
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
    rra
    rra
    rra
    rra
    rra
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
    rra
    rra
    rra
    rra
    rra
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
    rra
    rra
    rra
    rra
    rra
    add a
    inc sp
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
    rra
    rra
    rra
    rra
    inc sp
    inc sp
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
    rra
    rra
    rra
    rra
    inc sp
    inc sp
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and b
    and c
    and d
    and e
    and h
    rra
    rra
    rra
    rra
    inc sp
    inc sp
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    inc sp
    xor h
    xor l
    rra
    rra
    rra
    rra
    xor [hl]
    xor a
    or b
    or c
    or d
    or e
    or e
    or e
    or h
    or l
    or [hl]
    or a
    rra
    rra
    rra
    rra
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    rra
    rra
    ret nz

    pop bc
    rra
    rra
    rra
    rra
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    jp z, $cccb

    call Call_000_1fce
    rra
    rra
    rst $08
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    jp nz, $dad9

    rra
    rra
    rra
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
    ld bc, $0001
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
    ld bc, $0101
    ld bc, $0141
    ld bc, $0001
    nop
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld bc, $0701
    ld bc, $0107
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    rlca
    inc b
    rlca
    dec b
    dec b
    dec b
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    ld bc, $0000
    nop
    inc b
    inc b
    inc b
    dec b
    dec b
    dec b
    inc b
    inc b
    inc b
    rlca
    ld b, a
    rlca
    ld bc, $0000
    nop
    ld bc, $0119
    add hl, de
    ld bc, $0119
    add hl, de
    ld bc, $0139
    ld sp, $3101
    ld bc, $0131
    ld sp, $3101
    ld bc, $0131
    add hl, sp
    ld bc, $0379
    ld a, e
    inc bc
    ld l, e
    inc bc
    ld l, e
    inc bc
    ld l, e
    inc bc
    ld l, e
    inc bc
    ld l, e
    inc bc
    db $eb
    inc bc
    db $eb
    inc bc
    db $eb
    inc bc
    db $eb
    inc bc
    rlc e
    rlc e
    rlc e
    rlc e
    rlc e
    rlc e
    rlc e
    rlc e
    rlc e
    add a
    inc bc
    add a
    inc bc
    add a
    inc bc
    add a
    inc bc
    add a
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    ld bc, $0107
    rlca
    ld bc, $0107
    rlca
    add hl, bc
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
    rrca
    rra
    rrca
    rra
    rrca
    rra
    rrca
    rra
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
    ld a, a
    rrca
    ld a, a
    rrca
    ld a, a
    rrca
    ld a, a
    rrca
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
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
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
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
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
    nop
    rst $38
    db $fd
    ld a, [$fafd]
    db $fd
    ld a, [$fafd]
    db $fd
    ld a, [$fafd]
    db $fd
    ld a, [$fafd]
    db $fd
    ld a, [$fbfc]
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
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fd
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    ld a, [c]
    ld sp, hl
    or $f9
    or $f9
    or $f9
    or $f9
    or $f9
    or $f9
    or $f9
    rst $30
    ld sp, hl
    rst $30
    ld sp, hl
    rst $30
    ld sp, hl
    rst $30
    ld sp, hl
    rst $30
    ld sp, hl
    rst $30
    ld sp, hl
    rst $30
    ld sp, hl
    rst $30
    ld sp, hl
    rst $30
    ld sp, hl
    rst $30
    push af
    ei
    push af
    ei
    push af
    ei
    push af
    ei
    push af
    ei
    push af
    ei
    push af
    ei
    push af
    ei
    push af
    ei
    push af
    ei
    push af
    ei
    push af
    ei
    push af
    ei
    push af
    ei
    push af
    ei
    push af
    db $eb
    db $ed
    di
    db $ed
    di
    db $ed
    di
    db $ed
    di
    db $ed
    di
    db $ed
    di
    db $ed
    di
    db $ed
    di
    db $ed
    di
    db $ed
    di
    db $ed
    di
    db $ed
    di
    db $ed
    di
    db $ed
    di
    db $ed
    di
    call $ddf3
    db $e3
    db $dd
    db $e3
    db $dd
    db $e3
    db $dd
    db $e3
    db $dd
    db $e3
    rst $18
    rst $20
    rst $18
    rst $20
    rst $18
    rst $28
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fc
    cp $f8
    db $fc
    ld hl, sp-$10
    ldh a, [$f0]
    ldh a, [$e0]
    ldh [$e0], a
    ldh [$c0], a
    ret nz

    ret nz

    ret nz

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
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, b
    rst $38
    ld a, e
    db $fc
    ld a, a
    ld hl, sp+$7f
    rst $38
    ld a, a
    ld hl, sp+$7f
    ld hl, sp+$77
    ld hl, sp-$01
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    db $fc
    nop
    ldh a, [rP1]
    ret nz

    nop
    add b
    nop
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, [hl]
    add c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$19
    rst $38
    rst $20
    ld hl, sp-$0d
    db $ec
    di
    db $ec
    di
    db $ec
    di
    db $ec
    ld sp, hl
    and $f9
    and $f9
    and $fc
    db $e3
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    db $e3
    cp $e1
    cp $e1
    cp $e1
    rst $38
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

    cp $c0
    cp $c0
    cp $c0
    cp [hl]
    ret nz

    cp $c0
    cp $c0
    cp $c0
    cp $c0
    cp $c0
    cp $c0
    cp $c0
    cp $c0
    cp $c0
    cp $c1
    cp $c1
    cp $c1
    db $fc
    add e
    db $fc
    add e
    db $fc
    add e
    ld sp, hl
    add [hl]
    ld sp, hl
    add [hl]
    ld sp, hl
    add [hl]
    di
    adc h
    di
    adc h
    di

jr_096_5777:
    adc h
    rst $20

jr_096_5779:
    sbc b
    rst $20

jr_096_577b:
    sbc b
    rst $20
    sbc b
    rst $08
    or b
    rst $08
    or b
    rst $08
    or b
    sbc a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$3f], a
    ret nz

    ccf
    jp $ffff


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
    cp $00
    ld hl, sp+$00
    ret nz

    nop
    nop
    nop

jr_096_57a8:
    nop
    nop

jr_096_57aa:
    nop
    nop

jr_096_57ac:
    nop
    nop

jr_096_57ae:
    nop
    nop
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld bc, $001f
    ldh [rP1], a
    cp $00
    rst $38
    ld hl, sp-$01
    rlca
    db $fc
    nop
    rst $38
    add b
    rst $38
    ld a, h
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
    ld a, a
    add b
    ld a, [hl]
    add b
    ld a, h
    add b
    jr c, jr_096_57a8

    jr c, jr_096_57aa

    jr nc, jr_096_57ac

    jr nc, jr_096_57ae

    add b
    ld h, b
    add b
    ld h, b
    add b
    ld h, b
    ret nz

    jr nc, jr_096_5777

    jr nc, jr_096_5779

    jr nc, jr_096_577b

    jr nc, jr_096_57fd

jr_096_57fd:
    jr jr_096_57ff

jr_096_57ff:
    jr jr_096_5801

jr_096_5801:
    jr jr_096_5803

jr_096_5803:
    dec c
    nop
    dec c
    nop
    dec c
    nop
    rrca
    nop
    rlca
    nop
    rlca
    nop
    ld b, $00
    rlca
    nop
    rlca
    nop
    rrca
    nop
    dec c
    nop
    dec e
    nop
    add hl, de
    nop
    add hl, de
    nop
    jr c, jr_096_5821

jr_096_5821:
    jr nc, jr_096_5823

jr_096_5823:
    jr nc, jr_096_5825

jr_096_5825:
    ld [hl], b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    ret nz

    ld b, b
    add b
    ld b, b
    add b
    ld h, b
    add b
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld hl, sp+$00
    ret nz

    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh a, [rIE]
    cp $ff
    rst $38
    rst $38
    ccf
    ccf
    ld bc, $0003
    ldh [rP1], a
    cp $80
    ld a, a
    ld a, b
    add a
    rlca
    ld hl, sp+$00
    rst $38
    ldh [rIE], a
    rra
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fc
    ld bc, $01f8
    ldh [$03], a
    ret nz

    inc bc
    add b
    inc bc
    nop
    rlca
    nop
    ld b, $00
    ld b, $00
    ld c, $00
    inc c
    nop
    inc c
    nop
    inc e
    nop
    jr jr_096_58af

jr_096_58af:
    jr jr_096_58b1

jr_096_58b1:
    jr c, jr_096_58b3

jr_096_58b3:
    jr nc, jr_096_58b5

jr_096_58b5:
    jr nc, jr_096_58b7

jr_096_58b7:
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
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
    nop
    nop
    nop
    nop
    nop
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
    add b
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    jr nc, jr_096_58ef

jr_096_58ef:
    jr nc, jr_096_58f1

jr_096_58f1:
    jr nc, jr_096_58f3

jr_096_58f3:
    jr jr_096_58f5

jr_096_58f5:
    jr jr_096_58f7

jr_096_58f7:
    jr jr_096_58f9

jr_096_58f9:
    jr jr_096_58fb

jr_096_58fb:
    inc c
    nop
    inc c
    nop
    inc c
    nop
    ld b, $00
    ld b, $00
    ld b, $00
    ld b, $00
    inc bc
    add b
    inc bc
    ret nz

    inc bc
    ldh [rSB], a
    ldh a, [rSB]
    ld hl, sp+$01
    db $fc
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ccf
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
    cp $00
    ldh [rP1], a
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
    ret nz

    rst $38
    db $fc
    rst $38
    rrca
    ccf
    nop
    ld bc, $f000
    nop
    rst $38
    ret nz

    ccf
    inc a
    jp $fc03


    nop
    rst $38
    ldh a, [rIF]
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
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    cp [hl]
    nop
    cp [hl]
    nop
    cp a
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    cp $00
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
    ret nz

    rst $38
    db $fc
    rst $38
    rlca
    rrca
    nop
    nop
    nop
    ldh [rP1], a
    cp $c0
    ccf
    ld a, $e1
    ld bc, $80ff
    ld a, a
    db $fc
    rra
    add e
    rrca
    ret nz

    rlca
    ret nz

    inc bc
    ret nz

    ld bc, $00c0
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    jr nc, jr_096_59d7

jr_096_59d7:
    jr nc, jr_096_59d9

jr_096_59d9:
    jr nc, jr_096_59db

jr_096_59db:
    jr nc, jr_096_59dd

jr_096_59dd:
    jr jr_096_59df

jr_096_59df:
    jr jr_096_59e1

jr_096_59e1:
    jr jr_096_59e3

jr_096_59e3:
    inc c
    nop
    inc c
    nop
    inc c
    nop
    inc c
    nop
    ld b, $00
    ld b, $00
    ld b, $00
    inc bc
    nop
    inc bc
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
    ld bc, $0100
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    inc bc
    nop
    ld b, $00
    ld b, $00
    ld b, $00
    inc b
    nop
    inc c
    nop
    inc c
    nop
    ld [$1800], sp
    nop
    jr jr_096_5a2b

jr_096_5a2b:
    jr jr_096_5a2d

jr_096_5a2d:
    stop
    jr nc, jr_096_5a31

jr_096_5a31:
    jr nc, jr_096_5a33

jr_096_5a33:
    jr nz, jr_096_5a35

jr_096_5a35:
    ld h, b
    nop
    ld h, b
    nop
    ld b, b
    nop
    ret nz

    nop
    ret nz

    ld bc, $03c0
    add b
    rlca
    add b
    rra
    add b
    ccf
    nop
    rst $38
    ld bc, $ffff
    rst $38
    ld hl, sp-$01
    nop
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
    ret nz

    rst $38
    inc a
    ccf
    inc bc
    ld bc, $0000
    nop
    ldh a, [rP1]
    rst $38
    ldh [$1f], a
    ld e, $e1
    ld bc, $e0ff
    rst $38
    ld e, $ff
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
    ld c, $01
    ld c, $01
    ld b, $01
    inc b
    inc bc
    nop
    inc bc
    nop
    inc bc
    ld bc, $0006
    ld b, $00
    ld b, $00
    inc b
    nop
    inc c
    nop
    inc c
    nop
    inc c
    nop
    jr jr_096_5ab3

jr_096_5ab3:
    jr jr_096_5ab5

jr_096_5ab5:
    jr jr_096_5ab7

jr_096_5ab7:
    stop
    or b
    nop
    or b
    nop
    and b
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    and b
    nop
    or b
    nop
    inc b
    nop
    ld b, $00
    ld b, $01
    ld b, $01
    ld [bc], a
    nop
    inc bc
    nop
    inc bc
    ld b, $01
    ld b, $01
    ld c, $01
    ld e, $01
    ccf
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
    rst $38
    nop
    rst $38
    rst $38
    rst $38
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
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_096_5b0f:
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
    inc a
    rra
    inc bc
    rrca
    nop
    add b
    nop
    ld hl, sp+$00
    rst $38
    ldh a, [rIE]
    rrca
    rst $38
    nop
    rst $38
    ldh a, [$8e]
    ld a, a
    add b
    ld a, a
    jr nz, jr_096_5b0f

    ld hl, $21de
    sbc $61
    sbc [hl]
    ld h, c
    sbc [hl]
    ld h, c
    sbc [hl]
    ld h, c
    sbc [hl]
    pop hl
    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld e, $61
    ld e, $61
    ld e, $61
    ld e, $21
    ld e, $21
    ld e, $21
    ld e, $21
    ld e, $21
    ld e, $01
    ld e, $01
    ld e, $01
    ld e, $01
    ld e, $01
    ld e, $01
    ld e, $01
    ld e, $01
    ld e, $01
    ld e, $01
    ld e, $01
    ld e, $01
    ld e, $21
    ld e, $21
    ld e, $21
    ld e, $21
    ld e, $21
    ld e, $61
    ld e, $61
    ld e, $61
    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld e, $61
    sbc [hl]
    ld h, c
    sbc [hl]
    ld h, c
    sbc [hl]
    ld h, c
    sbc [hl]
    ld hl, $21de
    sbc $a1
    ld e, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    ret nz

    ccf
    rst $18
    ccf
    rst $38
    rst $38
    ldh [$e0], a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    rst $38
    ld a, a
    rra
    rlca
    ld bc, $0080

jr_096_5bd4:
    ld hl, sp+$00

jr_096_5bd6:
    rst $38
    ld hl, sp-$01
    rlca
    rst $38
    add b
    rst $38
    ld a, h
    rst $38
    inc bc
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b

jr_096_5be8:
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    rst $18
    jr nz, @-$1f

    jr nz, jr_096_5bd4

    jr nz, jr_096_5bd6

    jr nz, jr_096_5be8

    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $30
    ld [$08f7], sp

jr_096_5c04:
    rst $30
    ld [$08f7], sp
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fc
    inc bc
    cp $01
    cp $01
    cp $01

jr_096_5c1e:
    db $fc
    inc bc

jr_096_5c20:
    db $fd
    ld [bc], a

jr_096_5c22:
    db $fd
    ld [bc], a
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $18
    jr nz, jr_096_5c1e

    jr nz, jr_096_5c20

    jr nz, jr_096_5c22

    jr nz, jr_096_5c04

    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
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
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    ld a, a
    rra
    inc bc
    nop
    ret nz

    nop
    db $fc
    add b
    rst $38
    ld a, b
    rst $38
    rlca
    rst $38
    ldh [rIE], a
    rra
    db $fc
    inc bc
    db $fc
    inc bc
    ld a, [$fa05]
    dec b
    ld a, [$fa05]
    dec b
    or $09
    or $09
    or $09
    or $09
    xor $11
    xor $11
    xor $11
    xor $11
    sbc $21
    sbc $21
    sbc $21
    sbc $21
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    sbc $21
    sbc $21
    sbc $21
    sbc $21
    xor $11
    xor $11
    xor $11
    xor $11
    or $09
    or $09
    or $09
    or $09
    ld a, [$fa05]
    dec b
    ld a, [$fa05]
    dec b
    db $fc
    inc bc
    db $fc
    inc bc
    db $fd
    inc bc
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
    rra
    nop
    inc bc
    nop
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
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    ccf
    rrca
    inc bc
    nop
    ret nz

    nop
    db $fc
    ret nz

    rst $38
    inc a
    rst $38
    inc bc
    cp $f0
    rrca
    rst $38
    rrca
    ldh a, [rIF]
    ldh a, [rNR22]
    add sp, $17
    add sp, $17
    add sp, $17
    add sp, $1b
    db $e4
    dec de
    db $e4
    dec de
    db $e4
    dec de
    db $e4
    dec de
    db $e4
    dec e
    ld [c], a
    dec e
    ld [c], a
    dec e
    ld [c], a
    dec e
    ld [c], a
    dec e
    ld [c], a
    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld e, $e1
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rNR34], a
    pop hl
    ld e, $e1
    ld e, $e1
    ld e, $e1
    dec e
    ld [c], a
    dec e
    ld [c], a
    dec e
    ld [c], a
    dec e
    ld [c], a
    dec e
    ld [c], a
    dec de
    db $e4
    dec de
    db $e4
    dec de
    db $e4
    dec de
    db $e4
    rla
    add sp, $17
    add sp, $17
    add sp, $17
    add sp, $0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIE]
    rst $38
    rst $38
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
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh [rIE], a
    db $fc
    rst $38
    rst $38
    ld a, a
    rra
    rra
    rlca
    pop hl
    nop
    cp $c0
    ccf
    ld a, $83
    add c
    db $fc
    ld a, h
    rst $38
    inc bc
    cp $01
    cp $01
    cp $01
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$10ef], sp
    rst $28
    db $10
    ld l, a
    sub b
    ld l, a
    sub b
    ld e, a
    and b
    ld e, a
    and b
    ld e, a
    and b
    sbc a
    ld h, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    ld e, a
    and b
    ld e, a
    and b
    ld e, a
    and b
    ld l, a
    sub b
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$04fb], sp
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    cp $01
    cp $01
    cp $01
    rst $38
    rst $38
    add b
    add b
    nop
    nop
    ld bc, $3f00
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
    inc bc
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
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rra
    rlca
    pop hl
    nop
    db $e4
    ld hl, sp+$3f
    ld e, $c3
    pop bc
    inc a
    db $fc
    rlca
    ld sp, hl
    rlca
    ld hl, sp+$0b
    db $f4
    dec bc
    db $f4
    dec bc
    db $f4
    dec bc
    db $f4
    dec c
    ld a, [c]
    dec c
    ld a, [c]
    dec c
    ld a, [c]
    ld c, $f1
    ld c, $f1
    ld c, $f1
    ld c, $f1
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$0e]
    pop af
    ld c, $f1
    ld c, $f1
    ld c, $f1
    dec c
    ld a, [c]
    dec c
    ld a, [c]
    dec c
    ld a, [c]
    dec c
    ld a, [c]
    dec bc
    db $f4
    dec bc
    db $f4
    dec bc
    db $f4
    dec bc
    db $f4
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0f
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
    rst $38
    nop
    rst $38
    nop
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

jr_096_5efc:
    rst $38
    rst $38
    rst $38
    rst $38
    cp $f8
    ld sp, hl
    ld h, b
    ccf
    inc bc

jr_096_5f06:
    db $fc
    inc c

jr_096_5f08:
    di
    di
    ld a, a
    inc c
    rst $38
    ldh a, [rIE]
    nop

jr_096_5f10:
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    cp $01

jr_096_5f1a:
    cp $01
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ei
    inc b
    ld a, e
    add h
    ld a, e
    add h

jr_096_5f2a:
    ld a, e
    add h
    or a
    ld c, b
    or a
    ld c, b
    or a
    ld c, b
    or a
    ld c, b
    rst $08
    jr nc, jr_096_5f06

    jr nc, jr_096_5f08

    jr nc, jr_096_5f2a

    db $10
    rst $08
    jr nc, @-$2f

    jr nc, jr_096_5f10

    jr nc, jr_096_5f1a

    jr z, jr_096_5efc

    ld c, b
    or a
    ld c, b
    cp e
    ld b, h
    cp e
    ld b, h
    ld a, e
    add h
    ld a, e
    add h
    ld a, l
    add d
    ld a, l
    add d
    db $fd
    ld [bc], a
    cp $01
    cp $01
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    db $fd
    inc bc
    rst $38
    rlca
    rst $30
    rrca
    rst $38
    rrca
    cp $1f
    cp $1f
    cp $3f
    db $fc
    ccf
    cp $3f
    cp $3f
    cp $3f
    db $fc
    ccf
    ld a, $3f
    ccf
    ld a, $3c
    ccf
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    cp h
    cp a
    jr c, jr_096_5fef

    ld a, b
    ccf
    db $f4
    rst $38
    inc a
    ld a, $7c
    ld a, [hl-]
    db $f4
    ld hl, sp-$0c
    ld a, b
    or $78
    ld [hl], a
    ld hl, sp+$72
    ld hl, sp+$73
    ld hl, sp+$7f
    ld [hl], b
    ld a, a
    ld [hl], b
    ld a, a
    ld [hl], b
    ld a, a
    ld a, a
    ld a, a
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
    ld a, [hl]

jr_096_5fef:
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
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
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
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
    ccf
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
    ld bc, $0000
    rrca
    nop
    ccf
    ld [hl], c
    ld a, [hl]
    db $e3
    db $fc
    jp $c3fc


    db $fc
    add e
    db $fc
    ld bc, $03fe
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [rTAC]
    ld hl, sp+$3f
    ret nz

    ccf
    ret nz

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
    cp $0e
    ldh a, [rP1]
    ld bc, $7100
    nop
    ld d, a
    nop
    ld e, c
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld [hl], b
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_096_6069

jr_096_6069:
    ld a, h
    nop
    ld l, h
    nop
    ld l, h
    nop
    ld a, b
    nop
    ld l, h
    nop
    ld l, l
    nop
    ld l, l
    nop
    ld a, b
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
    rrca
    inc c
    ld a, a
    ld h, [hl]
    ld a, b
    scf
    ld h, b
    rra
    ld h, b
    ld e, a
    ld a, a
    ldh [$3f], a
    and e
    add hl, de
    sbc c
    ld c, b
    rst $08
    nop
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
    ld b, b
    rst $38
    ret nz

    rst $38
    ld d, b
    rst $38
    ret nz

    rst $38
    ld [hl], b
    rst $38
    ld e, h
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
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
    cp $00
    pop bc
    ld a, $00
    rst $38
    rlca
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$1f]
    add b
    rrca
    nop
    ld c, a
    nop
    ld e, e
    and b
    ld c, $f0
    ld c, [hl]
    or b
    ld c, [hl]
    or c
    ld a, b
    add a
    ld d, b
    rrca
    and b
    rrca
    ld d, b
    inc bc
    ret nz

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
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    add e
    nop
    add b
    ld bc, $2b00
    nop
    ld d, a
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld c, $02
    cp $98
    and $dc
    ld b, $fe
    ld b, $fa
    ld b, $f8
    ld b, $fc
    ld a, $e6
    cp $32
    ldh [$80], a
    nop
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
    cp $01
    ld sp, hl
    ld b, $fb
    inc b
    rst $20
    jr jr_096_6158

    ld hl, sp-$08
    rlca
    rst $38
    nop
    rst $38
    nop

jr_096_6158:
    rst $38
    nop
    rst $38

jr_096_615b:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $08
    jr nc, jr_096_61e7

    add a
    ld d, [hl]
    xor c
    jr jr_096_615b

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
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    and b
    nop
    and b
    nop
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    ld b, b
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    inc [hl]
    nop
    rra
    nop
    ccf
    nop
    push af
    nop
    ld [$5500], a
    nop
    xor d
    nop
    push de
    nop
    xor d
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
    ret nz

    nop
    ret nz

    nop
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
    add b
    nop
    nop
    add b

jr_096_61e7:
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
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add h
    nop
    ret nz

    nop
    add b
    nop
    and b
    nop
    add h
    nop
    xor b
    nop
    ret nc

    nop
    xor d
    nop
    call nc, $a800
    nop
    ret nc

    nop
    xor b
    nop
    ret nc

    nop
    and b
    nop
    call nc, $aa00
    nop
    call nc, $ab00
    nop
    rst $10
    nop
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
    inc bc
    nop
    nop
    nop
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
    dec c
    dec c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $0d
    rla
    jr jr_096_6286

    dec c
    dec c
    dec c
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_096_6299

    ld [hl+], a
    inc hl
    inc h
    dec h
    dec c
    dec c
    dec c
    dec c
    ld h, $27
    jr jr_096_629c

    jr z, jr_096_62af

jr_096_6286:
    ld a, [hl+]
    dec hl
    dec hl
    dec hl
    inc l
    dec l
    dec c
    dec c
    dec c
    dec c
    ld l, $2f
    jr jr_096_62ac

    jr nc, jr_096_62ae

    jr jr_096_62c9

    ld [hl-], a

jr_096_6299:
    inc sp
    inc [hl]
    dec c

jr_096_629c:
    dec c
    dec c
    dec c
    dec c
    dec [hl]
    ld [hl], $37
    jr c, jr_096_62dd

    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $0d

jr_096_62ac:
    dec c
    dec c

jr_096_62ae:
    dec c

jr_096_62af:
    dec c
    ccf
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
    dec c
    dec c
    dec c
    dec c
    dec c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d

jr_096_62c9:
    ld d, e
    ld d, h
    dec c
    dec c
    dec c
    dec c
    dec c
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
    ld d, h
    dec c
    dec c

jr_096_62dd:
    dec c
    dec c
    dec c
    ld e, a
    ld h, b
    jr jr_096_6345

    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    dec c
    dec c
    dec c
    dec c
    dec c
    ld l, c
    ld l, d
    jr jr_096_635f

    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [hl], e
    ld [hl], h
    jr jr_096_6379

    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    dec c
    dec c
    dec c
    dec c
    dec c
    ld a, l
    ld a, [hl]
    jr @+$81

    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    dec c
    dec c
    dec c
    dec c
    dec c
    add a
    dec hl
    dec hl
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    dec c
    dec c
    dec c
    dec c
    dec c
    sub b
    sub b
    sub b
    sub c
    sub d
    sub d
    sub e
    sub h
    sub d
    sub l
    sub [hl]
    dec c
    dec c
    dec c
    dec c
    dec c
    sub b
    sub b
    sub b
    sub a
    sub d

jr_096_6345:
    sub d
    sbc b
    sbc c
    sub d
    sub l
    sbc d
    sbc e
    dec c
    dec c
    dec c
    dec c
    sub b
    sub b
    sbc h
    sbc l
    sbc [hl]
    sbc [hl]
    sbc [hl]
    sbc [hl]
    sbc [hl]
    sbc a
    sbc d
    and b
    dec c
    dec c
    dec c

jr_096_635f:
    dec c
    sub b
    sub b
    sub b
    sub b
    sub b
    sub b
    sub b
    sub b
    sub b
    sub b
    and c
    and d
    dec c
    dec c
    dec c
    dec c
    and e
    and e
    and e
    and e
    and e
    and e
    and e
    and e
    and e

jr_096_6379:
    and e
    and h
    and l
    and [hl]
    dec c
    dec c
    dec c
    and a
    and a
    xor b
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    xor c
    xor d
    xor e
    dec c
    rlca
    ld bc, $0500
    dec b
    nop
    nop
    rlca
    rlca
    ld bc, $0101
    ld bc, $0000
    nop
    rlca
    rlca
    rlca
    dec b
    dec b
    nop
    nop
    inc b
    rlca
    ld bc, $0101
    ld bc, $0000
    nop
    ld b, $07
    rlca
    inc b
    ld b, $05
    dec b
    inc b
    rlca
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
    ld bc, $0001
    nop
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
    ld bc, $0107
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0107
    ld bc, $0404
    inc b
    inc b
    inc b
    inc b
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0101
    inc b
    inc b
    inc b
    inc b
    inc b
    rlca
    inc b
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0101
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0101
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0101
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0101
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $2121
    inc b
    nop
    inc b
    nop
    nop
    inc b
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    ld bc, $0301
    inc bc
    ld bc, $0107
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    ld bc, $0301
    inc bc
    ld bc, $0107
    ld bc, $0000
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
    ld bc, $0001
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
    ld bc, $0000
    nop
    nop

jr_096_64d1:
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    sbc a
    nop
    sbc [hl]
    nop
    sbc [hl]
    nop
    add [hl]
    nop
    sub d
    nop
    pop hl
    nop
    pop bc
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$0e], a
    ldh a, [$ce]
    jr nc, jr_096_64d1

    jr nc, jr_096_6513

    ldh a, [rNR32]
    ldh [$8c], a
    ld [hl], b
    call nz, $0438
    ld hl, sp+$06
    ld hl, sp+$1c

jr_096_6513:
    db $e3
    db $fc
    inc bc
    db $fd
    nop
    ld a, [$fd00]
    nop
    ld a, [$ff00]
    nop
    nop
    nop
    nop
    nop
    ldh a, [$80]
    rst $38
    call z, $e61f
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$61
    rst $38
    call z, Call_000_0001
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    ld e, a
    and b
    cpl
    ret nc

    ld d, a
    xor b
    cpl
    ret nc

    rla
    add sp, $0f
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
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
    db $fc
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, $f1
    rrca
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ld e, a
    and b
    cpl
    ret nc

    ld e, a
    and b
    xor a
    ld d, b
    ld e, a
    and b
    rst $38
    nop
    ld a, a
    add b
    rra
    ldh [rTAC], a
    ld hl, sp+$01
    ld a, $00
    rra
    nop
    ld c, a
    nop
    rrca
    ld [bc], a
    dec c
    ld e, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    rst $28
    nop
    rst $38
    nop
    db $e3
    nop
    nop
    rra
    nop
    rrca
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

jr_096_65f2:
    nop
    rlca
    nop
    rlca
    nop
    rlca

jr_096_65f8:
    nop
    rlca
    nop
    rlca
    nop
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop

jr_096_6604:
    nop
    nop

jr_096_6606:
    ret nz

    ret nz

    ld hl, sp+$60
    ld hl, sp+$30
    jr jr_096_6606

jr_096_660e:
    jr jr_096_65f8

    jr jr_096_65f2

    jr jr_096_6604

    jr jr_096_660e

    ld hl, sp-$38
    ld hl, sp+$60
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld bc, $8200
    nop
    ld b, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor e

jr_096_662d:
    nop
    ld [hl], a
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
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
    add b
    rst $38
    adc b
    rst $38
    ld d, b
    rst $38
    ld a, h
    rst $38
    cp $ff
    rst $30
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
    rrca
    nop
    rrca
    nop
    rrca
    ld [$0f0e], sp
    rrca
    rrca
    rrca
    rrca
    rlca
    rrca
    ld bc, $f00f
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rNR10], a
    ret nc

    jr nz, jr_096_662d

    ld d, b
    ld d, b
    and b
    and b
    ld d, b
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    nop
    rrca
    inc c
    rrca
    inc bc
    rrca
    inc c
    inc bc
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    or b
    rrca
    ld [hl], b
    rrca
    or b
    rrca
    ld [hl], b
    rrca
    or b
    rrca
    ld [hl], b
    rrca
    or b
    rrca
    ld [hl], b
    rrca
    or b
    rrca
    ld d, b
    rrca
    or b
    rrca
    ld d, b
    rrca
    or b
    rrca
    ld e, a
    rrca
    xor a
    rrca
    ld e, a
    rrca
    xor a
    rrca
    ld e, a
    rrca
    cp a
    rrca
    ld e, a
    rrca
    cp a
    rrca
    ld a, a
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $08
    ccf
    adc a
    ld a, a
    rrca
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
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
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
    db $fc
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
    add b
    nop
    ld hl, sp-$80
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    db $fc
    rst $38
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
    add b
    rst $38
    ld [hl], b
    rst $38
    ld c, $7f
    ld bc, $003f
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
    rrca
    nop
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
    rlca
    nop
    rlca
    nop
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
    db $fc
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    nop
    db $fc
    nop
    ldh [rP1], a
    db $fc
    nop
    cp $00
    cp $00
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
    nop
    nop
    nop
    nop
    ldh [rP1], a
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
    ld a, [hl]
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

jr_096_67da:
    rst $38
    ret nz

jr_096_67dc:
    rst $38
    jr c, @+$01

    rlca

jr_096_67e0:
    rst $38
    ccf

jr_096_67e2:
    rst $38
    jr nz, @+$01

    cpl

jr_096_67e6:
    rst $38
    daa

jr_096_67e8:
    rst $28
    jr nz, jr_096_67da

    jr nz, jr_096_67dc

    jr nz, @-$0f

    jr nz, jr_096_67e0

    jr nz, jr_096_67e2

    jr nz, @-$0f

    jr nz, jr_096_67e6

    jr nz, jr_096_67e8

jr_096_67f9:
    jr nz, @+$01

    jr nz, jr_096_67f9

    jr nz, @+$01

    ld a, $ff
    ccf
    rst $38
    dec sp
    rst $38
    ld sp, $31ff
    rst $38
    ld [hl], c
    rst $38
    ld [hl], c
    rst $38
    ld [hl], c
    rst $38
    ld [hl], c
    ld a, a
    ld a, a
    cp a
    cp a
    rst $38
    ret nz

    rst $38
    ret nz

    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    db $fc
    rst $38
    ccf
    rst $38
    rrca
    ei
    rlca
    ld sp, hl
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$19
    ld hl, sp+$1f
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    ei
    db $f4
    inc bc
    db $e4
    inc bc
    db $e4
    db $e3
    db $e4
    db $e3
    db $e4
    inc bc
    db $e4
    inc bc
    db $e4
    inc bc
    db $e4
    inc bc
    db $e4
    inc bc
    db $e4
    inc bc
    db $e4
    inc bc
    db $e4
    inc bc
    db $e4
    inc bc
    db $e4
    inc bc
    db $ec
    ld [$5c7f], sp
    ld [hl], a
    db $76
    or a
    ld [hl-], a
    or a
    ld sp, $31b7
    rst $30
    ld sp, $b1f7
    rst $30
    or c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop bc
    ldh a, [$c0]

jr_096_68b6:
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
    add b
    add b
    ld b, b
    ret nz

    jr nc, jr_096_68b6

    ld [$04f8], sp
    ld a, h
    ld [bc], a
    ld a, $01
    rra
    ldh a, [rIF]
    ld b, $01
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
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$7f]
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    and b
    ld a, a
    and b
    ld a, a
    and b
    ld a, a
    and b
    ld a, a
    and b
    ld a, a
    sub b
    ld a, a
    sub b
    ld a, a
    sub b
    ld a, a
    sub b
    ld a, a
    sub b
    ld a, a
    sub b
    ld a, a
    adc b
    ld a, a
    adc b
    ld a, a
    adc b
    ld a, a
    adc b
    ld a, a
    adc b
    ld a, a
    add h
    ld a, a
    add h
    ld a, a
    add h
    ld a, a
    add l
    ld a, a
    add l
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    add d
    ld a, a
    add d
    ld a, a
    add d
    ld a, a
    add d
    ld a, a
    add l
    ld a, a
    add l
    ld a, a
    add l
    ld a, a
    add h
    ld a, a
    adc b
    ld a, a
    adc b
    ld a, a
    adc b
    ld a, a
    adc b
    ld a, a
    sub b
    ld a, a
    sub b
    ld a, a
    sub b
    ld a, a
    sub b
    ld a, a
    and b
    ld a, a
    and b
    ld a, a
    and b
    ld a, a
    and b
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld a, a
    rst $38
    add b

jr_096_6962:
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
    adc a
    add b
    ld a, a
    ret nz

    jr nz, jr_096_6962

    db $10
    ldh a, [$8c]
    ld a, h
    ld b, d
    ld a, $01
    rra
    nop
    rrca
    inc c
    rrca
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    add a
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    dec bc
    db $fc
    dec bc
    db $fc
    dec bc
    db $fc
    dec bc
    db $fc
    inc de
    db $fc
    inc de
    db $fc
    inc de
    db $fc
    inc de
    db $fc
    inc hl
    daa
    ld hl, sp+$38
    ldh [rTIMA], a
    nop
    ccf
    nop
    ld d, a
    ld a, [hl+]
    ld l, e
    dec d
    ld d, a
    ld a, [hl+]
    ld l, e
    dec d
    ld d, a
    ld a, [hl+]
    db $eb
    dec d
    rst $10
    ld a, [hl+]
    db $eb
    dec d
    rst $10
    ld a, [hl+]
    db $eb

jr_096_69cb:
    dec d
    rst $10
    ld a, [hl+]
    db $eb
    dec d
    rst $10
    ld a, [hl+]
    db $eb
    dec d
    rst $10
    ld a, [hl+]
    db $eb
    dec d
    ret nz

    jr nz, jr_096_69cb

    inc bc
    ret nc

    inc hl
    ldh a, [rP1]
    ret nc

    ld hl, $01f0
    ret nc

    ld hl, $00ff
    rst $30
    ld a, [hl+]
    db $eb
    dec d
    rst $30
    ld a, [hl+]
    db $eb
    dec d
    rst $10
    ld a, [hl+]
    ei
    dec d
    rst $10
    ld a, [hl+]
    ei
    dec d
    rst $10
    ld a, [hl+]
    db $eb
    dec d
    rst $18
    ld a, [hl+]
    db $eb
    dec d
    rst $18
    ld a, [hl+]
    db $eb
    dec d
    rst $10
    ld a, [hl+]
    rst $28
    dec d
    rst $10
    ld a, [hl+]
    rst $38
    nop
    rst $38
    rst $38
    add b
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
    nop
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    nop
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
    ldh a, [rIE]
    nop
    db $fc
    nop
    ld [bc], a
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
    ld d, l
    xor d
    xor e
    ld d, l
    ld e, a
    xor d
    xor d
    ld d, l
    ld e, l
    xor d
    xor d
    ld d, l
    ld e, l
    xor d
    xor d
    ld d, l
    ld e, l
    xor d
    xor d
    ld d, l
    ld e, l
    xor d
    xor d
    ld d, l
    ld bc, $0202
    ld b, c
    ld bc, $0242
    ld hl, $2201
    ld [bc], a
    and c
    ld bc, $fea2
    ld bc, $aa5d
    xor d
    ld d, l
    ld e, l
    xor d
    xor d
    ld d, l
    ld d, l
    ld [$00aa], sp
    ld d, l
    ld [$00aa], sp
    ld d, l
    ld [$00aa], sp
    ld d, l
    ld [$00aa], sp
    ld e, l
    xor d
    xor d
    ld d, l
    ld e, l
    xor d
    xor d
    ld d, l
    ld e, l
    xor d
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    ld bc, $0f00
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
    rlca
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
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
    rra
    ldh [rIE], a
    nop
    rst $38
    rlca
    jr jr_096_6b11

    and b
    rra
    ld b, b
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    rst $38
    rra
    cp b
    rra
    cp b
    rra
    cp b
    rra
    cp a
    rra
    cp b
    rra
    cp b
    rra
    cp b

jr_096_6b11:
    rra
    cp b
    rra
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld sp, hl
    rra
    ld sp, hl
    rra
    ld sp, hl
    rra
    ld a, [$fa1f]
    rra
    cp h
    rra
    cp h
    rra
    cp c
    rra
    cp c
    rra
    cp l
    rra
    cp l
    rra
    cp d
    rra
    cp d
    rra
    ld sp, hl
    rra
    ld sp, hl
    rra
    ld sp, hl
    rra
    ld hl, sp+$1f
    db $fc
    rra
    db $fc
    rra
    db $fc
    rra
    db $fc
    rra
    cp $1f
    cp $1f
    cp $1f
    cp $1f
    rst $38
    rra
    rst $38
    rst $38
    nop
    rst $38
    rst $38
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
    rlca
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
    rst $38
    nop
    rst $38
    rrca
    ldh a, [rIE]
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
    rst $38
    nop
    rst $38
    ld [hl], a
    rst $38
    or l
    rst $38
    inc [hl]
    rst $38
    ld d, h
    rst $38
    ld d, h
    rst $38
    sub h
    rst $38
    sub h
    rst $38
    sub h
    rst $38
    inc d
    rst $38
    inc d
    rst $38
    inc d
    rst $38
    inc d
    rst $38
    inc d
    rst $38
    inc d
    rst $38
    inc e
    rst $38
    or $ff
    ld d, $ff
    ld d, $ff
    or $ff
    inc e
    rst $38
    inc d
    rst $38
    inc d
    rst $38
    inc d
    rst $38
    dec d
    rst $38
    sub l
    rst $38
    sub h
    rst $38
    ld d, [hl]
    rst $38
    ld d, h
    rst $38
    inc [hl]
    rst $38
    inc [hl]
    rst $38
    inc d
    rst $38
    dec d
    rst $38
    dec d
    rst $38
    rst $30
    rst $38
    rst $38
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
    inc bc
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
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
    nop
    rst $38
    nop
    rst $38
    ld bc, $fffe
    nop
    rst $38
    nop
    rst $38
    rrca
    ldh a, [rIE]
    nop
    rst $38
    jr jr_096_6c32

jr_096_6c32:
    jr jr_096_6c34

jr_096_6c34:
    jr jr_096_6c36

jr_096_6c36:
    rra
    nop
    nop
    nop
    ld a, a
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
    rlca
    rst $38
    ld hl, sp-$01
    ld bc, $81ff
    rst $38
    add c
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    dec d
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld b, d
    rst $38
    ld [bc], a
    rst $38
    add hl, bc
    rst $38
    sbc c
    rst $38
    inc d
    rst $38
    inc h
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld b, d
    rst $38
    ld b, c
    rst $38
    add c
    rst $38
    add c
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rlca
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
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    rlca
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    rra
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    ld a, l
    nop
    ld a, d
    nop
    ld [hl], l
    nop
    ret nz

    nop
    ld a, $00
    cp $00
    cp $00
    cp $f8
    cp $08
    cp $08
    cp $08
    cp $f8
    cp $98
    cp $28
    cp $28
    cp $28
    cp $48
    rst $38
    ld c, b
    cp $88
    cp $88
    cp $88
    cp $08
    rst $38
    ld [$08fe], sp
    cp $08
    rst $38
    ld [$08fe], sp
    cp $08
    rst $38
    ld [$08ff], sp
    cp $08
    cp $08
    rst $38
    ld [$08ff], sp
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    ld c, b
    rst $38
    ld c, b
    rst $38
    jr z, @+$01

    jr z, @+$01

    jr z, @+$01

    sbc b
    rst $38
    sbc b
    rst $38
    ld c, b
    rst $38
    ld c, b
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
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add e
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    cp a
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
    ld a, $ff
    nop
    rst $38
    nop
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
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
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    cp a
    ccf
    cp a
    ccf
    cp a
    ccf
    cp a
    ccf
    cp a
    ccf
    cp a
    ccf
    cp a
    ccf
    rst $38
    ccf
    ccf
    ccf
    ccf
    ld a, $3f
    dec sp
    ld a, $39
    ld a, $3d
    ld a, $3f
    ld a, $3b
    ld a, $39
    ld a, $3d
    ccf
    ld a, $3f
    dec sp
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
    cp a
    ccf
    cp a
    ccf
    cp a
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
    nop
    nop
    nop
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
    rrca
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
    nop
    rst $38
    nop
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
    ld h, [hl]
    ld h, [hl]
    inc sp
    inc sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld h, [hl]
    ld h, [hl]
    inc sp
    inc sp
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
    ccf
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
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
    ld h, l
    ld h, a
    ld [hl-], a
    inc sp
    ld sp, hl
    dec bc
    cp $0f
    push af
    rlca
    ld a, [c]
    inc bc
    ld sp, hl
    dec bc
    cp $0f
    ld h, l
    ld h, a
    ld [hl-], a
    inc sp
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
    rra
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    add b
    rst $38
    nop
    rst $10
    inc a
    xor e
    db $fc
    ld d, a
    db $fc
    xor e
    db $fc
    ld d, a
    db $fc
    xor e
    db $fc
    ld d, a
    db $fc
    xor e
    db $fc
    ld d, a
    db $fc
    xor e
    db $fc
    ld d, a
    db $fc
    xor e
    db $fc
    ld d, a
    db $fc
    xor e
    db $fc
    ld d, a
    db $fc
    xor e
    db $fc
    ld d, a
    db $fc
    xor e
    db $fc
    ld d, a
    db $fc
    xor e
    db $fc
    ld d, a
    db $fc
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $007f
    rrca
    nop
    ld bc, $0000
    nop
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
    rst $00
    rst $38
    rst $00
    rst $18
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
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
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $ffff
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
    ld hl, sp-$01
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
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
    jr jr_096_6fb9

    inc c
    inc c
    inc c
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_096_6fda

jr_096_6fb9:
    ld [hl+], a
    inc hl
    inc h
    dec h
    inc c
    inc c
    inc c
    ld h, $27
    jr z, jr_096_6fed

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, @+$0b

    ld sp, $0c0c
    inc c
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_096_7011

    ld a, [hl-]
    dec sp

jr_096_6fda:
    inc a
    add hl, bc
    dec a
    inc c
    inc c
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

jr_096_6fed:
    inc c
    ld c, h
    nop
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld a, [hl+]
    ld d, h
    ld d, l
    nop
    ld d, [hl]
    inc c
    inc c
    ld d, a
    nop
    nop
    nop
    ld e, b
    nop
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
    ld h, e
    nop
    ld h, h

jr_096_7011:
    nop
    ld h, l
    nop
    nop
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    nop
    nop
    nop
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    inc c
    inc c
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    nop
    nop
    nop
    inc c
    ld a, c
    ld a, d
    inc c
    inc c
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    nop
    nop
    nop
    inc c
    add e
    inc c
    inc c
    inc c
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    nop
    nop
    nop
    nop
    inc c
    adc e
    inc c
    inc c
    inc c
    adc h
    adc l
    adc [hl]
    ld [$908f], sp
    sub c
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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

    nop
    nop
    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    jp z, $cccb

    call $cfce
    nop
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $9b
    ld [hl], l
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
    ld bc, $0101
    rlca
    rlca
    rlca
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    rlca
    rlca
    rlca
    rlca
    inc b
    ld b, $07
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0007
    ld b, $00
    inc b
    ld b, $06
    nop
    nop
    rlca
    ld bc, $0101
    ld bc, $0101
    rlca
    dec b
    dec b
    ld b, $00
    nop
    nop
    nop
    nop
    rlca
    ld bc, $0100
    ld bc, $0101
    inc b
    inc b
    inc b
    ld b, $06
    ld b, $00
    nop
    nop
    rlca
    rlca
    nop
    ld bc, $0101
    ld bc, $0404
    inc b
    dec b
    dec b
    dec b
    inc b
    nop
    nop
    rlca
    rlca
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    inc b
    inc b
    inc b
    nop
    rlca
    rlca
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    ld bc, $0000
    nop
    ld b, $07
    rlca
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0100
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld bc, $4001
    nop
    ld bc, $0001
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
    ld bc, $0101
    ld bc, $0401
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0404
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
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
    inc b
    inc b
    inc b
    dec b
    dec b
    dec b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0404
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
    ld bc, $0000
    ld bc, $0404
    inc b
    inc b
    inc b
    nop
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $4100
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ldh [rIE], a
    nop
    rst $38
    nop
    ld a, b
    add a
    ld a, b
    add a
    inc a
    jp $c33c


    inc e
    db $e3
    ld e, $e1
    nop
    pop af
    nop
    ldh a, [$08]
    ld [hl], b
    jr @+$22

    jr jr_096_724a

jr_096_724a:
    inc c
    add b
    rrca
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
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    ld bc, $01fe
    cp $20
    rst $38
    nop
    rst $38
    nop
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
    or b
    rst $38
    ret nc

    rst $38
    ret nc

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld a, [$f8ff]
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$0c]
    di
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld bc, $01fe
    cp $01
    cp $01
    cp $03
    inc a
    inc bc
    inc c
    inc bc
    inc c
    inc bc
    inc c
    rlca
    add b
    inc b
    add b
    ld b, h
    add b
    ld b, e
    add b
    ld b, e
    add b
    ld h, c
    add b
    ld h, c
    add b
    ld bc, $0300
    nop
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
    cp $01
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    nop
    ld a, $00
    ld e, $00
    rra
    nop
    rra
    nop
    rrca
    ld bc, $020e
    dec b
    dec b
    ld [bc], a
    ld a, b
    add b
    inc a
    ret nz

    inc a
    ret nz

    ld e, $e0
    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld bc, $01fe
    cp $01
    cp $81
    cp $80
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ld sp, hl
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
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
    ld hl, sp+$07
    rlca
    ld hl, sp+$00
    nop
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
    ld a, a
    nop
    ld a, a
    inc a
    nop
    ld a, $00
    ld e, $00
    rra
    nop
    rst $18
    nop
    ld l, a
    add b
    ld c, a
    add b
    rrca
    nop
    nop
    rlca
    nop
    rlca
    nop
    rlca
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp-$3d
    inc a
    nop
    inc a
    nop
    inc a
    inc d
    jr z, jr_096_73ff

    ldh a, [$97]
    ld l, b
    rrca
    add b
    adc a
    nop
    ld c, a

jr_096_73ff:
    add b

Call_096_7400:
    cp a
    ld b, b
    ld a, a
    add b
    db $fc
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
    rrca
    ld c, $7f
    ld b, a
    jr nc, jr_096_745d

    jr nc, jr_096_745f

    jr jr_096_7431

    jr jr_096_742b

    inc c
    rrca
    inc c
    rrca
    ld b, $01
    rlca

jr_096_742b:
    ld b, $03
    inc bc
    nop
    nop
    rrca

jr_096_7431:
    ldh a, [rTIMA]
    ld a, [$fb04]
    ld d, b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    db $f4
    rst $38
    xor d
    rst $38
    ld h, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_096_745d:
    ld a, a
    rst $38

jr_096_745f:
    ccf
    rst $38
    rra
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
    ldh a, [rIF]
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
    db $fd
    nop
    dec a
    ret nz

    ld a, [bc]
    ldh a, [rTIMA]
    ldh a, [$82]
    ld a, b
    add l
    ld a, b
    add d
    ld a, b
    dec b
    ldh a, [rSC]
    ld hl, sp+$01
    db $fc
    jp nz, $e13c

    ld e, $9e
    nop
    sbc [hl]
    nop
    sbc b
    nop
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc [hl]
    nop
    sbc [hl]
    nop
    sbc [hl]
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
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ccf
    inc hl
    rst $38
    jr c, @-$3e

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
    ld bc, $7fff
    ldh a, [$fe]
    inc a
    add b
    add b
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    dec [hl]
    jp z, $fd02

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
    ld a, a
    rst $38
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
    ccf
    nop
    ret nz

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
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    nop
    nop
    rlca
    ld [$300f], sp
    rrca
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$07
    ld [$0807], sp
    rlca
    ld [$0403], sp
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
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
    nop
    ld bc, $0f00
    ld c, $fe
    ccf
    ld hl, sp+$07
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
    cp $0f
    rst $38
    db $fc
    ldh [$f0], a
    ld [hl], b
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
    ld e, a
    and b
    xor e
    ld d, h
    ld d, l
    xor d
    ld a, [hl+]
    push de
    inc d
    db $eb
    nop
    rst $38
    add sp, -$01
    db $fc
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    cp $ff
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
    cp $00
    cp $00
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ccf
    nop
    ccf
    nop
    ccf
    nop
    rst $38
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
    rrca
    nop
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
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    ld bc, $0180
    add b
    ld bc, $0080
    add b
    nop
    add b
    nop
    add b
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
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rLCDC]
    add b
    ld b, d
    nop
    push af
    nop
    ld l, d
    nop
    push de
    nop
    rst $28
    nop
    db $fd
    nop
    ld a, [$f500]
    nop
    db $eb
    ret nz

    ret nz

    nop
    ret nz

    ret nz

    ld h, b
    ldh [$60], a
    add b
    ld h, b
    ret nz

    ld h, b
    ldh [$30], a
    ldh a, [$30]
    ret nz

    ldh a, [$e0]
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
    rst $38
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
    push af
    ld a, [bc]
    add sp, $17
    ld d, b
    xor a
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
    inc b
    rst $38
    add h
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    ret nz

    nop
    nop
    nop
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
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    ld bc, $0100
    nop
    ld bc, $0100
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
    ccf
    nop
    rra
    nop
    ccf
    nop
    rra
    nop
    ccf
    nop
    ld e, a
    nop
    cp a
    nop
    ld e, a
    nop
    cp a
    nop
    rst $18
    nop
    cp a
    nop
    ld e, a
    nop
    cp a
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
    cp $01
    rst $38
    nop
    cp $01
    db $fd
    ld [bc], a
    ld a, [$f405]
    dec bc
    ld a, [$d405]
    dec hl
    xor b
    ld d, a
    ld d, b
    xor a
    and b
    ld e, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    db $e3
    cp $17
    ld hl, sp-$01
    ldh a, [rIE]
    ret nz

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
    ccf
    ccf
    ret nz

    rst $38
    ccf
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
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    ccf
    jr nc, jr_096_7802

    jr c, jr_096_7804

    jr c, jr_096_7805

    dec a
    inc a
    ccf
    ld a, $3f
    dec sp
    ccf
    dec a
    ccf
    call c, $de3c
    ld a, $de
    ld a, $df
    ccf
    rst $18
    ccf
    sbc a
    ld a, a
    adc a
    ld a, a
    adc a
    ld a, a
    rrca
    rst $38
    adc a
    ld a, a
    rrca
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
    rla
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    rlca
    rst $38

jr_096_7802:
    rlca
    rst $38

jr_096_7804:
    rlca

jr_096_7805:
    rst $38
    rlca
    rst $38
    dec b
    rst $38
    rrca
    ld hl, sp+$1f
    ldh a, [$3f]
    ldh [$3f], a
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
    cp $00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh [rP1], a
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
    rlca
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
    ld a, a
    ld a, a
    add b
    rst $38
    ld a, a
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
    ld bc, $0300
    nop
    rlca
    nop
    rrca
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
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    sub b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    ret z

    rst $38
    ret z

    rst $38
    ret z

    rst $38
    ret z

    rst $38
    ret z

    rst $38
    ret z

    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    xor $ff
    db $e4
    rst $38
    db $e4
    rst $38
    db $f4
    rst $38
    db $f4
    rst $38
    db $f4
    rst $38
    db $f4
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, h
    db $fd
    ld a, b
    db $fc
    inc a
    cp $1c
    rst $38
    ld c, $ff
    ld b, $ff
    inc bc
    rst $38
    nop
    db $fc
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
    inc bc
    nop
    inc bc
    ld bc, $fffe
    ld bc, $ffff
    cp $01
    nop
    ld bc, $0100
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
    rra
    nop
    rra
    nop
    ccf
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
    rst $38
    nop
    rst $38
    nop
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
    rra
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc e
    rst $38
    ld a, $fb
    dec sp
    ld sp, hl
    ld a, c
    db $fc
    ld a, c
    db $fc
    ld [hl], h
    cp $76
    cp $7e
    rst $38
    jp nz, Jump_000_02ff

    rst $38
    inc bc
    adc a
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
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
    rst $38
    nop
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
    nop
    rst $38
    nop
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
    inc bc
    rst $38
    inc bc
    rst $38
    dec b
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld [bc], a
    ei
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld sp, hl
    inc b
    db $fd
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld [bc], a
    ei
    nop
    ld sp, hl
    db $10
    ld sp, hl
    ld a, b
    ld sp, hl
    ld hl, sp-$07
    ld hl, sp-$07
    db $fc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    pop af
    rst $38
    ld c, $ff
    ldh a, [$7f]
    nop
    ld hl, sp+$00
    add b
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
    ld hl, sp-$01
    rlca
    rst $38
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld a, h
    rst $38
    ccf
    rst $38
    sbc a
    rst $38
    rst $08
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
    cp $00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    pop af
    nop
    pop af
    nop
    pop af
    nop
    pop af
    nop
    pop af
    ld bc, $01f1
    ei
    ld bc, $01fb
    rst $38
    ld bc, $81ff
    rst $38
    jp $e3ff


    rst $38
    di
    rst $38
    db $eb
    rst $20
    rst $20
    or $f2
    ld a, [c]
    ld a, [c]
    ld a, [$ffd2]
    ld [hl-], a
    rst $38
    jp z, $0eff

    rst $38
    ld c, $fe
    ld c, $7e
    ld e, $3e
    ld e, $3f
    ld e, $1f
    ld e, $1f
    inc e
    rrca
    inc c
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    ldh a, [rIE]
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
    nop
    rst $38
    nop
    rst $38
    ret nz

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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
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
    ret nz

    rst $38
    add b
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
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld [hl], b
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

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
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $1f
    ldh [rIE], a
    ld e, $ff
    db $fc
    db $e3
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    pop hl
    rra
    pop hl
    rra
    pop bc
    ccf
    pop bc
    ccf
    pop bc
    ccf
    jp $c33e


    ld a, $c3
    ld a, $83
    ld a, [hl]
    add e
    ld a, [hl]
    add e
    ld a, [hl]
    add a
    ld a, h
    add a
    db $fc
    add a
    db $fc
    add a
    db $fc
    rst $08
    db $fd
    rst $08
    db $fd
    rst $08
    rst $38
    rst $28
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    rst $38
    cp a
    cp a
    rra
    rra
    rrca
    rrca
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
    inc bc
    cp $03
    cp $03
    cp $07
    db $fc
    rlca
    db $fc
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
    ld hl, sp+$1f
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$3f]
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$7f], a
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

    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add c
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    ld b, $ff
    ld b, $0c
    rst $38
    inc c
    rst $38
    jr @+$01

    jr @+$01

    jr nc, @+$01

    jr nc, @+$01

    ld h, c
    cp $61
    cp $c1
    cp $c1
    cp $83
    db $fc
    add e
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    pop hl
    rra
    pop hl
    rra
    ldh [$3f], a
    pop bc
    ccf
    pop bc
    ccf
    ret nz

    cp a
    pop bc
    rst $38
    add c
    rst $38
    add l
    add h
    add h
    add c
    add c
    dec b
    dec b
    inc c
    inc c
    ld bc, $0401
    add h
    ld bc, $0081
    ret nz

    ld bc, $00e1
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    cp $00
    rst $38
    nop
    rst $38
    rst $38
    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$32

    rst $38
    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    ld sp, $31fe
    cp $31
    cp $31
    cp $33
    db $fc
    inc sp
    db $fc
    inc sp
    db $fc
    inc sp
    db $fc
    scf
    ld hl, sp+$27
    ld hl, sp+$67
    ld hl, sp+$67
    ld hl, sp+$6f
    ldh a, [$6f]
    ldh a, [$6f]
    ldh a, [$6f]
    ldh a, [$7f]
    ldh [$7e], a
    pop hl
    cp $e1
    cp $e1
    cp a
    ret nz

    cp [hl]
    pop bc
    ld a, $c1
    ld a, $c1
    ld a, [hl]
    add c
    ld a, e
    add h
    ld a, d
    add l
    ld a, [hl]
    add c
    ld a, [$fb05]
    inc b
    ld a, [$fe05]
    ld bc, $05fa
    db $eb
    inc d
    ld a, [$fe15]
    ld de, $11f6
    di
    db $10
    pop af
    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$50]
    ldh [rLCDC], a
    ldh [rLCDC], a
    ldh [rLCDC], a
    ldh [rLCDC], a
    ldh [rLCDC], a
    ldh [rLCDC], a
    ldh a, [rLCDC]
    ld hl, sp+$50
    db $fc
    inc d
    cp $50
    rst $38
    ld b, l
    rst $38
    dec d
    rst $38
    ld d, h
    rst $38
    ld d, c
    rst $38
    ld b, l
    rst $38
    inc d
    ld d, c
    ld d, c
    ld b, l
    ld b, l
    inc d
    inc d
    ld d, c
    ld d, c
    dec b
    dec b
    ld d, b
    ld d, b
    dec b
    dec b
    ld d, h
    ld d, h
    ld b, c
    ld b, c
    dec d
    dec d
    ld d, b
    ld d, b
    dec b
    dec b
    inc d
    inc d
    ld bc, $0501
    dec b
    nop
    add b
    ld bc, $00c1
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
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
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    sbc a
    ld h, a
    add a
    ld a, c
    add c
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    ld [$ea15], a
    dec d
    xor $11
    ld [$ea15], a
    dec d
    ei
    inc b
    ld [$ea15], a
    dec d
    xor $11
    xor d
    ld d, l
    cp e
    ld b, h
    cp d
    ld b, l
    xor [hl]
    ld d, c
    ld [$bb15], a
    ld b, l
    xor e
    ld d, h
    xor e
    ld d, l
    rst $28
    ld de, $55ab
    cp e
    ld b, l
    xor a
    ld d, h
    xor a
    ld d, l
    rst $28
    ld de, $55af
    cp a
    ld b, h
    xor a
    ld d, l
    cp $11
    cp [hl]
    ld d, l
    cp [hl]
    ld b, l
    cp a
    ld d, h
    cp $11
    cp $55
    ei
    ld b, h
    rst $38
    ld d, l
    rst $38
    ld de, $45ff
    rst $38
    ld d, h
    rst $38
    ld de, $157f
    ccf
    add l
    rra
    call nz, $e10f
    inc bc
    pop af
    ld bc, $0074
    ld l, $00
    ld c, $00
    ld b, h
    nop
    ld b, h
    nop
    and $00
    add $00
    add $00
    ld h, [hl]
    add b
    inc c
    ret nz

    ld c, h
    ldh [rLY], a
    ldh a, [rNR10]
    ld hl, sp+$50
    db $fc
    ld b, b
    cp $14
    rst $38
    ld d, h
    rst $38
    ld b, c
    rst $38
    dec d
    rst $38
    ld d, h
    rst $38
    ld b, c
    rst $38
    dec d
    ld d, h
    ld d, h
    ld bc, $5501
    ld d, l
    ld d, b
    ld d, b
    dec b
    dec b
    ld d, l
    ld d, l
    nop
    nop
    ld d, l
    ld d, l
    ld d, b
    ld d, b
    dec b
    dec b
    ld d, b
    ld d, b
    dec b
    dec b
    db $10
    db $10
    dec b
    dec b
    db $10
    db $10
    inc b
    inc b
    inc b
    inc b
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$01
    db $fd
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
    cp a
    ld [hl], b
    rst $38
    ld a, [hl]
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
    ccf
    add hl, sp
    rrca
    nop
    jp $f000


    nop
    db $fc
    nop
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    db $10
    rst $38
    inc d
    cp a
    ld d, l
    cp [hl]
    ld b, l
    cp a
    ld d, h
    cp $15
    cp $11
    cp $55
    ld a, [$fa55]
    ld b, l
    ei
    ld d, h
    ld a, [$fe15]
    ld d, c
    ld a, [$fa55]
    ld b, l
    db $eb
    ld d, h
    ld [$ee15], a
    ld d, c
    xor d
    ld d, l
    cp e
    ld b, h
    ld [$ae15], a
    ld d, c
    xor d
    ld d, l
    cp e
    ld b, h
    xor d
    ld d, l
    xor $11
    xor d
    ld d, l
    cp d
    ld b, l
    db $eb
    inc d
    xor [hl]
    ld d, c
    xor e
    ld d, l
    cp e
    ld b, l
    db $eb
    inc d
    xor a
    ld d, c
    xor a
    ld d, l
    cp a
    ld b, h
    rst $28
    dec d
    xor a
    ld d, c
    cp a
    ld b, l
    rst $38
    inc d
    cp a
    ld d, c
    cp a
    ld b, l
    rst $38
    dec d
    ld a, a
    inc d
    ccf
    ld bc, $011f
    rlca
    ld bc, $0003
    inc bc
    ld bc, $0107
    rrca
    ld bc, $000f
    rra
    dec b
    rra
    dec b
    ccf
    dec b
    ccf
    nop
    ld a, a
    dec b
    rst $38
    dec d
    rst $38
    ld d, h
    rst $38
    ld b, b
    rst $38
    inc d
    cp $54
    cp $50
    db $fc
    inc b
    db $fc
    ld d, h
    ld hl, sp+$40
    ld hl, sp+$10
    ldh a, [$50]
    ldh a, [rP1]
    ldh [rLCDC], a
    pop hl
    ld b, c
    pop af
    ld bc, $43f3
    ei
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    cp $0f
    cp $0f
    db $fc
    rra
    db $fc
    rra
    ld hl, sp+$3f
    ld hl, sp+$3f
    db $f4
    ld a, a
    ld a, [c]
    ld a, a
    pop hl
    rst $38
    pop hl
    rst $38
    ldh a, [rIE]
    rst $38
    ld hl, sp-$01
    db $fc
    ld a, a
    ld a, [hl]
    ld a, a
    ld a, a
    ccf
    ccf
    ld e, $1f
    dec c
    rrca
    rlca
    rlca
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
    db $e3
    ld e, $e3
    ld e, $e1
    sbc $ff
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
    rra
    rst $38
    inc bc
    ccf
    nop
    add a
    nop
    pop hl
    nop
    ld hl, sp+$00
    cp $00
    rst $38
    nop
    cp a
    ld b, b
    xor a
    ld d, b
    xor e
    ld d, h
    cp d
    ld b, l
    xor e
    ld d, h
    ld [$ae15], a
    ld d, c
    xor d
    ld d, l
    cp d
    ld b, l
    xor e
    ld d, h
    ld [$ae15], a
    ld d, c
    cp d
    ld b, l
    xor d
    ld d, l
    db $eb
    inc d
    xor [hl]
    ld d, c
    xor d
    ld d, l
    cp d
    ld b, l
    xor e
    ld d, h
    ld a, [$be15]
    ld d, c
    cp a
    ld b, l
    cp a
    ld d, l
    rst $38
    inc d
    rst $38
    ld d, c
    rst $38
    ld d, l
    rst $38
    ld b, l
    rst $38
    inc d
    ld d, l
    ld d, l
    ld d, c
    ld d, c
    ld b, l
    ld b, l
    inc d
    inc d
    ld d, c
    ld d, c
    ld d, l
    ld d, l
    ld b, l
    ld b, l
    dec d
    dec d
    rst $38
    ld d, h
    rst $38
    ld d, c
    rst $38
    ld b, l
    rst $38
    dec d
    cp $54
    cp $50
    db $fc
    ld b, h
    db $fc
    inc d
    ld hl, sp+$50
    ld hl, sp+$50
    rst $38
    ld b, b
    rst $38
    db $10
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
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
    ld a, $0f
    ld e, $0f
    inc e
    rra
    inc e
    rra
    jr c, jr_096_7ff5

    inc [hl]
    ccf
    ld [hl], h
    ld a, a
    db $e4
    rst $38
    db $e4
    rst $38
    ret z

    rst $38
    rst $38
    ret z

    rst $38
    adc b
    rst $38
    adc b
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$10ff], sp
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
    jr nz, @+$01

    jr nz, @+$01

    and b
    rst $38
    ld h, c
    rst $38
    ld hl, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01

jr_096_7ff5:
    db $fd
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    dec de
    rra
