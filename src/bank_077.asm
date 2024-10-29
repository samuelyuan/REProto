SECTION "ROM Bank $077", ROMX[$4000], BANK[$77]

    add b
    nop
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    dec [hl]
    jp z, $f00f

    rrca
    ldh a, [$6f]
    sub b
    rlca
    ld hl, sp+$33
    call z, $fc03
    db $10
    rst $28
    db $10
    rst $28
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
    nop
    rst $38
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
    add b
    sbc a
    nop
    rst $38

jr_077_4038:
    nop
    rst $10
    db $10
    add $2b
    nop
    and d
    ld [$2600], sp
    nop
    add d
    ld bc, $01da
    ei
    ld bc, $017e
    ld e, [hl]
    ld bc, $010e
    ld h, e
    inc bc
    ld l, l
    ld bc, $4366
    ld hl, $0000
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld b, e
    ld l, a
    sbc h
    ld c, l
    sbc h
    nop
    add h
    add hl, de
    add b
    ld [$0800], sp
    ld h, b
    nop
    ldh a, [rP1]
    ld e, b
    nop
    nop
    jr jr_077_4038

    db $10
    rst $28
    inc bc
    rst $10
    ld [bc], a
    rst $20
    ld [hl+], a
    rst $30
    ld [hl+], a
    cp $e6
    cp $0a
    rst $30
    ld h, b
    rst $38
    ret nz

    rst $38
    ld l, b
    rst $30
    inc e
    db $e3
    ld b, [hl]
    cp a
    ld d, b
    cp a
    ld b, $f9
    cp d
    ld a, a
    ld de, $40ff
    rst $38
    ld c, b
    rst $30
    add hl, bc
    rst $30
    inc c
    rst $38
    cp h
    rst $38
    ret nz

    rst $38
    nop
    add e
    ld bc, $0717
    ccf
    rra
    rst $38
    rra
    cp a
    ld c, l
    rst $38
    inc bc
    rst $38
    ld hl, sp+$03
    nop
    nop
    rlca
    cp a
    inc b
    rst $38
    inc c
    ld a, $c0
    ld e, $e0
    rlca
    ld h, h
    nop
    ld [hl], b
    nop
    ld b, c
    inc bc
    nop
    rra

jr_077_40c4:
    jr jr_077_40c4

    ld h, b
    cp $60
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    or b
    rst $08
    ld h, b
    sbc a
    nop
    rst $38
    nop
    rst $38
    inc e
    rst $38
    ld e, $ff
    ld a, $ff
    inc bc
    nop
    ld bc, $0300
    nop
    rlca
    nop
    sub a
    nop
    db $fc
    inc bc
    db $fc
    inc bc
    inc e
    db $e3
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    dec sp
    call nz, $807d
    ld b, b
    add b
    jr jr_077_4120

    ld a, a
    nop
    rst $38

jr_077_4103:
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    ccf
    ret nz

    ld e, a
    and b
    rra
    ldh [$de], a
    ld hl, $f30c
    ldh [$1f], a
    dec h
    jp c, $fe01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_077_4120:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0ce3
    add c
    inc c
    inc bc
    inc c
    and c
    cp a
    rst $38
    ld e, a
    cp a
    rlca
    rst $38
    and a
    ld e, a
    ld [hl+], a
    rst $18
    add b
    rst $38
    ld d, d
    rst $20
    ld h, h
    jp $fe3d


    inc a
    rst $38
    ld [hl+], a
    sbc h
    dec b
    ld [bc], a
    ld bc, $3002
    nop
    jr c, jr_077_415e

    or b
    nop
    inc a
    nop
    inc d
    ld b, b
    jr jr_077_4156

jr_077_4156:
    add sp, $04
    ld e, c

jr_077_4159:
    rlca
    add hl, de
    rlca
    sbc c
    ld h, a

jr_077_415e:
    sub b
    ld b, d
    or b
    inc bc
    jr nz, jr_077_4103

    dec de
    rst $38
    ld a, d
    ld a, a
    jr c, jr_077_41e9

    cp b
    ld a, a
    rla
    ld a, a
    ld [bc], a
    rst $38
    jr jr_077_4159

    ld [hl-], a
    db $ed
    ld e, $e1
    add l
    ld a, e
    ld b, b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    nop
    rst $38
    jr nc, @+$01

    ldh a, [rIE]
    jp Jump_000_07fc


    ld hl, sp+$0c
    di
    ld a, [hl-]
    rst $00
    ld b, c
    cp $47
    cp b
    ld [bc], a
    nop
    ld a, h
    ld bc, $003e
    ld bc, $88c0
    ld hl, sp-$79
    ldh a, [$3f]
    add b
    ld a, e
    nop
    ld hl, $8608
    ret c

    ld c, $00
    ccf
    nop
    nop

jr_077_41a9:
    nop
    nop
    rst $38
    inc bc
    rra
    ld h, b
    rst $38
    db $10
    add b
    ld a, $00
    ccf
    nop
    ld a, $00
    ld a, $80
    ld a, $80
    ld [bc], a
    ret nz

    nop
    add b
    rra
    ldh [rTAC], a
    ld hl, sp+$2c
    db $d3
    nop
    rst $38
    add b
    rst $38
    inc hl
    db $fc
    ld bc, $03fe
    db $fc
    dec d
    ld l, e
    adc l
    ld [hl], e
    add l
    ld a, e
    sub l
    ld a, e
    inc de
    rst $38
    rra
    rst $38
    scf
    rst $38
    ld a, a
    rst $38
    inc l
    ret nz

    jr nz, jr_077_41a9

    and c
    ld b, h
    jp nz, Jump_000_0004

jr_077_41e9:
    add d
    ld [bc], a
    add b
    add d
    nop
    nop
    nop
    db $fc
    nop
    ei
    inc b
    db $eb
    inc b
    rst $28
    nop
    rst $28
    nop
    rst $38
    nop
    ei
    inc b
    ld a, e
    add h
    ld h, c
    sbc [hl]
    ld sp, $20ce
    rst $18
    ld h, b
    sbc a
    ld c, b
    or a
    ld l, b
    sub a
    inc l
    db $d3
    inc b
    ei
    inc b
    ei
    ld bc, $08fe
    rst $30
    ld [$08f7], sp
    rst $30
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
    db $10
    rst $38
    sub c
    cp $40
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    add b
    ld a, a
    sub b
    ld l, a
    ret nz

    ccf
    ld b, b
    ccf
    ret nz

    ccf
    call nz, Call_077_443f
    ccf
    jp $813f


    ccf
    ld bc, $4d3f
    ccf
    db $ec
    rra
    xor b
    ld e, a
    cp b
    ld e, a
    reti


    ccf
    pop af
    ccf
    sub a
    rst $38
    sub a
    rst $38
    rst $10
    cp a
    rrca
    rst $38
    rra
    rst $38
    ld l, $ff
    rrca
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    dec a
    rst $38
    rla
    rst $38
    dec c
    rst $38
    add a
    ld a, a
    dec b
    rst $38
    ld hl, $05ff
    rst $38
    dec c
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    ld h, c
    rst $38
    ld b, b
    rst $38
    ld b, b
    cp $78
    ld sp, hl
    ld a, b
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ret z

    pop af
    nop
    rst $38
    nop
    ld a, a
    add b
    db $fc
    inc bc
    xor c
    inc bc
    inc b
    jp Jump_077_4b00


    add hl, sp
    inc bc
    nop
    ld h, d
    add b
    ld l, $00
    inc b
    nop
    nop
    ld [hl], b
    nop
    pop af
    inc bc
    rlca
    ld l, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rla
    add b
    ld bc, $0160
    nop
    ld bc, $0003
    nop
    nop
    nop
    jr nc, jr_077_42c3

jr_077_42c3:
    ld b, b
    nop
    ldh [rP1], a
    sbc $00
    ldh [rSB], a
    nop
    nop
    add [hl]
    dec c
    rst $38
    nop
    ld d, b
    ld b, b
    ldh a, [rP1]
    ld a, b
    ld [$1879], sp
    jr c, jr_077_430b

    ld a, [hl-]
    jr nz, jr_077_435a

    inc l
    dec a
    inc a
    inc a
    inc d
    ld e, $04
    ld e, $06
    ld b, $06
    ld b, $02
    ld b, a
    ld [bc], a
    ld b, a
    ld [bc], a
    ld h, a
    ld [bc], a
    ld h, a
    ld [bc], a
    ld l, a
    ld a, [bc]
    ld l, a
    ld [$007e], sp
    ld a, $00
    ld a, $00
    dec a
    nop
    dec e
    inc e
    ld b, d
    db $10
    ld hl, $8102
    ld a, [bc]
    pop bc
    ld [$00d1], sp

jr_077_430b:
    add b
    ld de, $00e0
    ldh [rP1], a
    ldh [rP1], a
    ldh [rSB], a
    or d
    nop
    or [hl]
    nop
    sub $00
    call nc, $f400
    inc bc
    call nc, Call_077_7003
    ld [bc], a
    ldh a, [rSC]
    or b
    ld [bc], a
    ldh [rDIV], a
    ldh [$08], a

jr_077_432b:
    di
    ld b, c
    di
    inc de
    rst $30
    inc bc
    rst $30
    ld bc, $08f3
    di
    jr jr_077_432b

    nop
    pop af
    nop
    ld sp, hl
    nop
    ld a, [c]
    ld bc, $01e2
    ld [c], a
    ld bc, $00f2
    ld a, [c]
    nop
    ei
    add b
    db $eb
    add b
    db $fd
    add hl, bc
    db $fd
    add hl, bc
    ld sp, hl
    ld h, [hl]
    ld sp, hl
    ld a, l
    di
    ld l, l
    di
    ld b, c
    rst $38
    ld c, e
    rst $30

jr_077_435a:
    ld e, e
    rst $20
    db $db
    rst $20
    ld e, b
    rst $20
    ld e, b
    rst $20
    ld b, a
    rst $38
    rst $00
    rst $38
    rst $20
    rst $38
    cp $f9
    di
    db $fd
    or l
    rst $38
    add l
    rst $38
    ld bc, $11ff
    rst $38
    ld hl, sp-$21
    ld hl, sp-$21
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    sub c
    cp $10
    db $fc
    ld d, b
    db $fc
    ld [hl], b
    ld a, a
    ld h, d
    ld a, [hl]
    inc b
    rst $28
    nop
    dec l
    nop
    dec bc
    ret nz

    rlca
    ld hl, sp+$03
    ld hl, sp+$01
    ld [bc], a
    rst $38
    ld e, $ff
    cp $ff
    db $fc
    cp $c0
    db $fc
    db $10
    rrca
    dec b
    inc c
    inc b
    rra
    inc e
    ccf
    ld a, h
    cp $fe
    cp $fe
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
    rst $00
    rst $38
    ld a, a
    adc a
    ld l, a
    sbc a
    call $833f
    ld a, a
    inc bc
    rst $00
    ld b, $0f
    nop
    ld b, $60
    ld bc, $0160
    ret nz

    jr jr_077_43cd

jr_077_43cd:
    ldh [rP1], a
    and b
    inc a
    ld b, d
    sbc h
    ld b, e
    sbc h
    ld bc, $010c
    inc c
    ld hl, $800c
    inc c
    ld [hl], b
    inc c
    ld [hl], b
    add hl, bc
    ld [hl], b
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rDIV]
    pop af
    inc b
    ld a, b
    add b
    ld a, b
    add b
    ld a, [hl]
    nop
    inc a
    ld [bc], a
    inc a
    nop
    cp h
    nop
    sbc b
    inc b
    sub c
    inc c
    add c
    ld e, $81
    ld c, $c1
    inc c
    pop hl
    nop
    di
    nop
    rst $38
    nop
    rst $38
    nop
    rst $20
    nop
    rst $20
    ld [$0887], sp
    dec b
    ld [$0c05], sp
    rlca
    inc l
    ld b, $2c
    rlca
    jr nc, jr_077_4421

    add c
    ld b, a
    add e
    rla
    add d
    cpl
    add h

jr_077_4421:
    ld a, $a0
    ld a, h
    and $79
    ld h, [hl]

jr_077_4427:
    ldh a, [$c6]
    pop hl
    inc b
    pop hl
    ld b, $a1
    add [hl]
    and c
    add d
    or c
    nop
    or c
    nop
    ld hl, $2304
    nop
    ld sp, $3184
    add b
    add hl, sp
    add c

Call_077_443f:
    ld a, e
    adc e
    ld a, a
    adc [hl]
    ccf
    inc bc
    cpl
    nop
    xor e
    nop
    db $db
    nop
    jp c, $f000

    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ld [hl], h
    jr nz, @+$66

    nop
    ld h, l
    ld [$0165], sp
    ld b, l
    ld bc, $1d47
    db $e3
    dec e
    db $e3
    rlca
    ei
    add l
    rst $38
    ld b, c

jr_077_4469:
    rst $38
    ld d, a
    rst $28
    ld a, e
    rst $20
    dec de
    rst $20
    add hl, de
    rst $20
    add hl, sp
    rst $20
    sbc b
    ld h, a
    sbc b
    ld h, a
    sbc d
    ld h, a
    sub b
    ld l, a
    ldh [$5f], a
    ld h, b
    rst $18
    or c
    ld c, [hl]
    ld sp, hl
    ld b, [hl]
    ldh a, [rVBK]
    jr nc, @-$2f

    jr nz, jr_077_4469

    ld h, b
    sbc a
    ldh [$9f], a
    ld [hl], b
    adc a
    ld [bc], a
    sbc a
    ld [bc], a
    rst $18
    ld [bc], a
    rst $38
    ld l, [hl]
    rst $38
    ld c, $ff
    rst $28
    rrca
    ld [hl], a
    rrca
    jr nc, jr_077_4427

    rra
    nop
    cpl
    add b
    nop
    jp hl


    nop
    inc c
    inc bc
    nop
    inc bc
    nop
    inc bc
    add b
    cp l
    ret nz

    adc b
    ret nz

    call nz, $c0e0
    rst $38
    cp $ff
    ldh a, [rIE]
    ld [hl], b
    ld a, [$f9e0]
    ldh [$fd], a
    pop hl
    ld hl, sp+$20
    cp $2b
    ld a, a
    cpl
    rst $38
    sbc a
    rst $38
    dec a
    rst $38
    ld l, $ff
    or [hl]
    rst $38
    ld b, b
    ld c, $00
    ld b, $00
    add b
    ld bc, $0000
    ld b, b
    nop
    ld b, b
    ld bc, $00c0
    ret nc

    ld bc, $02d4
    call c, $c002
    nop
    ret z

    nop
    add sp, $00
    ld b, c
    ld [$1022], sp
    ld hl, $2700
    nop
    ld h, c
    nop
    add c
    nop
    ld bc, $0320
    and b
    rlca
    pop hl
    inc bc
    pop hl
    inc bc
    pop hl
    dec bc
    ldh [$0b], a
    ldh [$0b], a
    ldh [rNR31], a
    call nz, $c00b
    dec de
    ld b, b
    ld [de], a
    ld b, b
    ld [de], a
    ld c, b
    ld [de], a
    ld c, b
    ld [de], a
    nop
    ld [bc], a
    ld [$5803], sp
    inc bc
    db $10
    add l
    db $10
    dec b
    ld d, b
    rlca
    ld d, b
    rlca
    ld b, b
    rlca
    nop
    daa
    nop
    daa
    nop
    scf
    nop
    scf
    nop
    inc sp
    nop
    sbc a
    ld h, b
    sbc a
    nop
    rst $38
    ld c, $ff
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    cp $ff
    adc $ff
    db $e4
    rst $38
    ld h, h
    rst $38
    ld h, h
    rst $38
    xor $ff
    xor $ff
    or $ef
    rst $10
    rst $28
    rst $10
    rst $28
    sub a
    rst $28
    rst $18
    rst $20
    sbc a
    rst $20
    sbc a
    rst $20
    sbc a
    rst $20
    cp e
    rst $20
    sbc e
    rst $20
    set 6, a
    rst $28
    di
    db $ed

jr_077_4565:
    di
    call $e8f3
    rst $30
    add sp, -$09
    add sp, -$09
    add sp, -$09
    ret z

    rst $30
    pop bc
    rst $38
    pop bc
    rst $38
    ld bc, $41ff
    cp a
    add e
    ld a, a
    rlca
    ei
    inc bc
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    dec bc
    rst $30
    rlca
    rst $38
    ld d, $ff
    ld b, $ff
    rlca
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld c, $ff
    inc c
    rst $38
    inc e
    rst $38
    ld c, $ff
    adc [hl]
    rst $38
    ld b, $ff
    ld b, $7f
    ld b, $3f
    add [hl]
    ccf
    add [hl]
    ld l, a
    add a
    ld a, a
    add e
    ccf
    or e
    ccf
    ccf
    ld a, a
    rra
    ld a, a
    rlca
    cp a
    inc bc
    rst $38
    inc bc
    rst $38
    nop
    rlca
    inc bc
    nop
    ld bc, $ff00
    nop
    nop
    ld [bc], a
    rra
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    cp $ff
    ldh a, [rIE]
    ldh [$fd], a
    or b
    ld bc, $0170
    ld [hl], b
    nop
    jr nc, jr_077_45da

    jr nc, @+$05

jr_077_45da:
    jr nc, @+$09

    jr nc, jr_077_4565

    jr nc, @-$77

    nop
    rrca
    jr nz, jr_077_4633

    ld hl, $014f
    ld e, a
    ld bc, $011f
    rra
    ld bc, $011f
    add a
    ld b, c
    cp a
    ld b, c
    cp a
    ld b, b
    cp a
    ld l, h
    sub e
    call c, $9e33
    ld [hl], c
    adc a
    ld [hl], b
    ld c, $f0
    ld a, [bc]
    db $f4
    add a
    ld a, b
    add h
    ld a, e
    nop
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
    adc a
    ld a, a
    dec c
    rst $38
    dec b
    rst $38
    inc b
    rst $38
    ld b, $ff
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc bc
    cp $00
    rst $38
    ld [$09f7], sp
    rst $30
    inc de
    rst $28
    ld c, $f7
    ld b, l
    rst $38
    rst $00
    rst $38
    and a

jr_077_4633:
    rst $38
    xor a
    rst $38
    inc h
    rst $38
    dec sp
    db $fc
    rla
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [rLCDC], a
    cp a
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld b, b
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
    jp nz, $c1ff

    rst $38
    db $db
    rst $38
    adc $ff
    adc a
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    ld e, a
    cp a
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld e, [hl]
    rst $38
    ld e, a
    rst $38
    rst $18
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld l, a
    sbc a
    ld c, a
    cp a
    ld l, a
    sbc a
    ld c, [hl]
    cp a
    ld l, [hl]
    sbc a
    ld c, $ff
    ld b, a
    cp a
    ld b, a
    cp a
    add a
    ld a, a
    rlca
    rst $38
    add a
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
    rrca
    rst $38
    rrca
    rst $38
    ld c, a
    cp a
    rrca
    rst $38
    ld a, a
    sbc a
    ld a, a
    sbc a
    rra
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    rra
    cp a
    sbc a
    rst $38
    rra
    rra
    adc $1f
    add a
    rrca
    ld a, [$0003]
    ld bc, $fffe
    rst $38
    rst $38
    db $fc
    rst $38
    add b
    cp $00

jr_077_46cd:
    push bc
    nop
    or l
    ld [hl], b
    adc a
    ldh [$1f], a
    ldh [$1f], a
    nop

jr_077_46d7:
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
    ld [de], a
    db $ed
    add hl, de
    and $78
    add a
    ld a, d
    add l
    ld a, [hl]
    add c
    ld a, h
    add e
    cp h
    jp $e39c


    adc [hl]
    pop af
    ld c, $f1
    adc [hl]
    pop af
    inc b
    ei
    adc c
    db $76
    adc b

Call_077_46ff:
    ld [hl], a
    and b

jr_077_4701:
    ld e, a
    add sp, $17
    jr c, jr_077_46cd

    jr nc, jr_077_46d7

    nop
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
    ld c, b
    or a
    jr jr_077_4701

    ld [hl], b
    adc a
    push hl
    rra
    adc a
    ld a, a
    rst $28
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $18
    rst $38
    rst $00
    rst $38
    add e
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
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
    and b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    or h
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
    db $e3
    rst $38
    inc bc
    rst $38
    inc hl
    rst $38
    db $e3
    rst $38
    pop bc
    rst $38
    ld de, $10ff
    rst $38
    db $10
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
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $81ff
    rst $38
    add c
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    jp nz, $c2fd

    db $fd
    ldh [rIE], a
    ldh [rIE], a
    db $f4
    ei
    ldh a, [rIE]
    add sp, -$09
    db $ec
    di
    add sp, -$09
    db $fc
    db $e3
    call c, $fee3
    pop hl
    rst $28
    ldh a, [$e5]
    ld a, [$fff0]
    sbc [hl]
    rst $38
    daa
    rst $18
    rlca
    rst $38
    ld de, $80ef
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
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    rlca
    ld hl, sp+$05
    ld a, [$f807]
    ld b, $f9
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$33], a
    call z, $c43b
    ccf
    ret nz

    ld a, e
    add h
    ld l, a
    sub b
    ld [hl], e
    adc h
    ld [hl-], a
    call $ce31
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, $ff
    rlca
    rst $38
    rlca
    rst $38
    rra
    rst $38
    rla
    rst $38
    ld bc, $00ff
    rst $38
    inc bc
    rst $38
    cp a
    rst $38
    ld a, c
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    db $ec
    rst $38
    set 7, a
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
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp h
    rst $38
    jr @+$01

    jr nc, @+$01

    db $f4
    ei
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ldh a, [rIE]
    ld [c], a
    rst $38
    ldh [rIE], a
    ld h, b
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld [hl], b
    rst $38
    cp b
    rst $38
    ld a, b
    rst $38
    inc e
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc c
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld [bc], a
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    nop
    rst $38
    inc b
    rst $38
    ld b, $ff
    ld b, $ff
    ld b, $ff
    add $ff
    sbc $ff
    cp $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    inc sp
    rst $38
    ld sp, $31ff
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
    jr jr_077_48f3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_077_4903

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_077_4913

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_077_4923

    ld [hl-], a

jr_077_48f3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_077_4933

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_077_4903:
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

jr_077_4913:
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

jr_077_4923:
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

jr_077_4933:
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
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_077_49f3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_077_4a03

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_077_4a13

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_077_4a23

    ld [hl-], a

jr_077_49f3:
    inc c
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_077_4a34

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $00
    nop
    nop

jr_077_4a03:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_077_4a13:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_077_4a23:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_077_4a34:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0106
    ld bc, $0101
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0606
    ld bc, $0101
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    ld [bc], a
    ld bc, $0101
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0206
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop

Jump_077_4b00:
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0008], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    rst $38
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    cpl
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
    rlca
    rst $38
    add a
    rst $38
    add a
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    db $eb
    rst $38
    ld [hl], a
    rst $38
    di
    rst $38
    rst $30
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
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    add a
    rst $38
    add e
    rst $38
    rst $00
    rst $38
    add e
    rst $38
    add e
    rst $38
    rst $00
    rst $38
    set 7, a
    ld [hl], e
    rst $38
    pop af
    rst $38
    ld l, a
    rst $38
    rst $28
    rst $38
    and a
    rst $38
    db $e3
    rst $38
    rst $10
    rst $38
    rst $38
    rst $38
    db $dd
    rst $38
    call $cdff
    rst $38
    push af
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ldh a, [rIE]
    pop af
    rst $38
    jp nz, $c2ff

    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    add e
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $fd
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
    db $fc
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
    sbc a
    rst $38
    rrca
    rst $38
    ld c, $ff
    ld c, $ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld sp, hl
    rst $38
    di
    rst $38
    pop bc
    rst $38
    db $e3
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    push af
    rst $38
    pop af
    rst $38
    ei
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ret c

    rst $38
    ret z

    rst $38
    inc c
    rst $38
    rrca
    rst $38
    inc c
    rst $38
    ld [$10ff], sp
    rst $38
    ei
    rst $38
    sbc c
    rst $38
    reti


    rst $38
    reti


    rst $38
    ld sp, hl
    rst $38
    cp c
    rst $38
    add hl, sp
    rst $38
    dec de
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    cp a
    rst $38
    ld a, $ff
    inc a
    rst $38
    cp h
    rst $38
    ld a, h
    rst $38
    inc a
    rst $38
    or b
    rst $38
    or b
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    pop af
    rst $38
    db $e3
    rst $38
    pop hl
    rst $38
    db $d3
    rst $38
    ret nc

    rst $38
    ret nc

    rst $38
    call nc, $e3ff
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    ld a, [$fdff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    di
    rst $38
    ld a, [$fbff]
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    db $fd
    rst $38
    pop af
    rst $38
    di
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld a, [$f0ff]
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ldh [rIE], a
    ret nc

    rst $38
    call c, $c7ff
    rst $38
    rst $08
    rst $38
    cp $ff
    cp $ff
    push hl
    rst $38
    rra
    rst $38
    rlca
    rst $38
    rst $00
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    adc h
    rst $38
    nop
    rst $38
    ld bc, $80ff
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    ld a, c
    rst $38
    inc bc
    rst $38
    add a
    rst $38
    adc l
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ei
    rst $38
    ld a, [$f8ff]
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld a, $ff
    ld a, $ff
    ld a, b
    rst $38
    ret nz

    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    ld b, c
    cp a
    sbc a
    rst $38
    call c, $bcff
    rst $38
    cp a
    rst $38
    cp a
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
    db $fd
    rst $38
    push hl
    rst $38
    db $e4
    rst $38
    db $ec
    rst $38
    jp hl


    rst $38
    ld l, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, e
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    db $76
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    dec a
    rst $38
    ccf
    rst $38
    sbc [hl]
    rst $38
    cp a
    rst $38
    rrca
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
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, h
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    add sp, -$01
    push hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    dec h
    rst $38
    dec h
    rst $38
    dec h
    rst $38
    ld h, l
    rst $38
    daa
    rst $38
    ld [hl], $ff
    or a
    rst $38
    rst $10
    rst $38
    ld de, $f9ff
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push af
    rst $38
    add sp, -$01
    jp hl


    rst $38
    ldh [rIE], a
    pop af
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    cp $ff
    ld a, [$ffff]
    rst $38
    ei
    rst $38
    add [hl]
    rst $38
    add a
    rst $38
    add b
    rst $38
    add c
    rst $38
    add hl, bc
    rst $38
    inc de
    rst $38
    scf
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
    rst $38
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    cpl
    rst $38
    rst $08
    rst $38
    xor [hl]
    rst $38
    inc l
    rst $38
    ld a, h
    rst $38
    ld hl, sp-$01
    ld [hl], b
    rst $38
    ld h, b
    rst $38
    adc h
    rst $38
    rra
    rst $38
    ld bc, $04ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    db $10
    rst $38
    dec c
    rst $38
    db $e3
    rst $38
    add e
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    di
    rst $38
    ld a, [hl]
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
    ccf
    rst $38
    ld hl, sp-$01
    add sp, -$01
    ld l, h
    rst $38
    ld h, h
    rst $38
    or h
    rst $38
    cp b
    rst $38
    cp h
    rst $38
    db $fc
    rst $38
    or $ff
    ld a, a
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
    add a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    cpl
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld a, $ff
    call c, $fdff
    rst $38
    ld a, a
    rst $38
    dec a
    rst $38
    ld a, l
    rst $38
    dec hl
    rst $38
    add hl, bc
    rst $38
    ld [$08ff], sp
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld [hl], b
    rst $38
    ld hl, sp-$01
    ld a, [hl]
    rst $38
    jr c, @+$01

    rra
    rst $38
    rra
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    di
    rst $38
    di
    rst $38
    ld [hl], e
    rst $38
    inc sp
    rst $38
    ld [hl], e
    rst $38
    or e
    rst $38
    cp d
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $30
    rst $38
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
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld e, [hl]
    rst $38
    ld e, h
    rst $38
    rra
    rst $38
    rrca
    rst $38
    ld a, $ff
    cp a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    ld [c], a
    rst $38
    jp $c3ff


    rst $38
    ldh [rIE], a
    ldh [rIE], a
    di
    rst $38
    add a
    rst $38
    rlca
    rst $38
    inc b
    rst $38
    ld b, $ff
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, $ff
    ld [bc], a
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
    ret nz

    ccf
    nop
    rst $38
    ld [hl], e
    rst $38
    ccf
    rst $38
    ld a, e
    rst $38
    db $fc
    rst $38
    inc a
    rst $38
    cp h
    rst $38
    ccf
    rst $38
    rra
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
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
    ei
    rst $38
    ld a, b
    rst $38
    inc a
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    ld a, $ff
    rst $38
    rst $38
    ei
    rst $38
    pop af
    rst $38
    rst $30
    rst $38
    di
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, sp
    rst $38
    pop af
    rst $38
    ld sp, hl
    rst $38
    pop af
    rst $38
    push hl
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    dec l
    rst $38
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
    jp Jump_000_0bff


    rst $38
    sbc a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ld a, $ff
    sbc h
    rst $38
    call c, $d8ff
    rst $38
    adc h
    rst $38
    adc h
    rst $38
    dec l
    rst $38
    ld e, $ff
    ld a, $ff
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
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    add hl, sp
    rst $38
    add hl, sp
    rst $38
    ld [hl], b
    rst $38
    ld hl, sp-$01
    ld a, b
    rst $38
    ld a, b
    rst $38
    ret z

    rst $38
    ld a, d
    rst $38
    ret c

    rst $38
    call c, $9dff
    rst $38
    ld hl, $60ff
    rst $38
    ld [hl], e
    rst $38
    ld c, e
    rst $38
    xor a
    rst $18
    adc a
    rst $38
    rlca
    rst $38
    ld b, a
    rst $38
    inc b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    nop
    rst $38
    add b
    rst $38
    ld a, [hl-]
    rst $38
    rra
    rst $38
    rlca
    rst $38
    db $10
    rst $28
    rlca
    ld hl, sp-$80
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    pop bc
    rst $38
    ret c

    rst $38
    jp z, $feff

    rst $38
    db $ed
    rst $38
    dec de
    rst $38
    ld a, [de]
    rst $38
    sbc l
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $dd
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    ld e, $ff
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
    rst $30
    rst $38
    sbc [hl]
    rst $38
    adc [hl]
    rst $38
    ld e, $ff
    ld e, $ff
    inc c
    rst $38
    adc h
    rst $38
    adc h
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    db $dd
    rst $38
    sbc l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cp $ff
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    cp [hl]
    rst $38
    or $ff
    or l
    rst $38
    ld de, $b9ff
    rst $38
    ld sp, hl
    rst $38
    sbc l
    rst $38
    adc a
    rst $38
    cp a
    rst $38
    db $fd
    rst $38
    pop de
    rst $38
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    dec a
    rst $38
    dec a
    rst $38
    add hl, sp
    rst $38
    ld a, e
    rst $38
    ld a, e
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    or b
    rst $38
    ret nc

    rst $38
    sbc e
    rst $38
    jp $c3ff


    rst $38
    sub e
    rst $38
    ccf
    rst $38
    ld e, a
    rst $38
    sbc $ff
    rst $08
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    ld hl, $c7ff
    rst $38
    ld b, l
    rst $38
    ld b, l
    rst $38
    call z, $c4f7
    rst $38
    ret z

    rst $38
    db $fc
    rst $38
    ld a, [$7cff]
    rst $38
    ld [hl], h
    rst $38
    ld hl, sp-$01
    jr c, @+$01

    ld a, $ff
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    add c
    cp $81
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
    ld de, $03ff
    rst $38
    inc bc
    rst $38
    ret nz

    rst $38
    pop bc
    rst $38
    ret nz

    rst $38
    pop bc
    rst $38
    add b
    ld a, a
    nop
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
    add b
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $f7ff


    rst $38
    rst $08
    rst $38
    rrca
    rst $38
    db $fc
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    pop af
    rst $38
    ei
    rst $38
    db $db
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    and [hl]
    rst $38
    and h
    rst $38
    db $e4
    rst $38
    db $ec
    rst $38
    ld e, [hl]
    rst $38
    cp $ff
    cp $ff
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
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    sbc h
    rst $38
    sbc b
    rst $38
    adc b
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    or c
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or $ff
    jp z, $92ff

    rst $38
    add e
    rst $38
    ld c, a
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    rst $00
    rst $38
    call c, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, l
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    ld [hl], e
    rst $38
    or $ff
    rst $30
    rst $38
    cp $ff
    jr c, @+$01

    jr nc, @+$01

    ld a, [de]
    rst $38
    inc sp
    rst $38
    dec sp
    rst $38
    dec a
    rst $38
    ld a, e
    rst $38
    ld [hl], b
    rst $38
    or $ff
    rst $28
    rst $38
    rst $30
    rst $38
    db $10
    rst $38
    inc c
    rst $38
    add b
    rst $38
    nop
    rst $38
    db $e4
    rst $38
    nop
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    ld de, $02ef
    rst $38
    ret c

    rst $38
    jr nz, @+$01

    sub b
    ld a, a
    rra
    rst $38
    rra
    rst $38
    ld e, a
    rst $38
    rra
    rst $38
    ld e, a
    rst $38
    rst $10
    rst $38
    jp $a0ff


    rst $18
    adc b
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    db $e3
    rst $38
    rst $30
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
    ld c, $ff
    add b
    ld a, a
    db $10
    rst $38
    rst $38
    rst $38
    db $d3
    rst $38
    jp Jump_000_1fff


    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    and b
    rst $38
    ldh [rIE], a
    db $e3
    rst $38
    ldh [rIE], a
    db $e4
    rst $38
    db $e3
    rst $38
    ldh a, [rIE]
    jr c, @+$01

    jr c, @+$01

    ld a, h
    rst $38
    db $fc
    rst $38
    ld [hl], h
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ret nc

    rst $38
    ret nc

    rst $38
    call c, $95ff
    rst $38
    add c
    rst $38
    add hl, bc
    rst $38
    ld h, e
    rst $38
    inc hl
    rst $38
    and e
    rst $38
    adc a
    rst $38
    ld c, a
    rst $38
    cp $ff
    or $ff
    ld a, [c]
    rst $38
    ld [c], a
    rst $38
    push hl
    rst $38
    db $e4
    rst $38
    db $ec
    rst $38
    db $ed
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld a, [c]
    rst $38
    ld [hl+], a
    rst $38
    ld e, d
    rst $38
    ld a, [$f2ff]
    rst $38
    di
    rst $38
    or $ff
    ld a, [$f6ff]
    rst $38
    cp $ff
    cp $ff
    set 7, a
    ret


    rst $38
    ld l, h
    rst $38
    ld l, [hl]
    rst $38
    rst $08
    rst $38
    xor a
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
    adc a
    rst $38
    rst $00
    rst $38
    and a
    rst $38
    rst $18
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $30
    rst $38
    push af
    rst $38
    db $e3
    rst $38
    ld h, e
    rst $38
    ld [hl], e
    rst $38
    ld h, b
    rst $38
    inc l
    rst $38
    dec hl
    rst $38
    ld l, d
    rst $38
    jr z, @+$01

    inc b
    rst $38
    pop af
    rst $38
    ld l, b
    rst $30
    ret z

    rst $30
    ld h, b
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ld c, $ff
    ld c, $ff
    rra
    rst $38
    adc a
    rst $38
    ld b, e
    rst $38
    pop hl
    rst $38
    ret nz

    rst $38
    and b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld bc, $f9ff
    rst $38
    cp $ff
    cp $ff
    xor $ff
    db $fc
    rst $38
    ld hl, sp-$01
    db $fc
    ei
    or d
    db $fd
    ldh a, [rIE]
    ld a, $ff
    ccf
    rst $38
    ld b, d
    rst $38
    ld bc, $81ff
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld a, [c]
    db $fd
    ld hl, sp-$01
    db $fd
    cp $8e
    rst $38
    dec c
    rst $38
    inc bc
    rst $38
    ld b, $ff
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    add a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ret c

    rst $38
    add b
    rst $38
    ld hl, sp-$01
    add b
    rst $38
    add $ff
    add hl, de
    rst $38
    jr nz, @+$01

    inc b
    ei
    cp [hl]
    pop bc
    ld b, b
    rst $38
    ld a, h
    rst $38
    ld a, l
    rst $38
    ld [hl], b
    rst $38
    ld b, c
    ld hl, sp-$80
    ld a, [$fc80]
    nop
    cp h
    nop
    cp h
    nop
    rst $38
    adc e
    rst $30
    add c
    rst $38
    or b
    rst $38
    push bc
    ld a, [$caf7]
    xor b
    rst $10
    add c
    rst $38
    sbc a
    sbc a
    cp a
    cp a
    ccf
    inc a
    ccf
    inc a
    ld a, $3d
    cp a
    cp h
    ld a, $3d
    inc a
    ccf
    inc a
    ccf
    ld a, b
    ld a, a
    jr c, @+$41

    jr @+$21

    inc e
    rra
    inc e
    rra
    inc e
    rra
    inc e
    rra
    cp h
    cp a
    dec a
    ld a, $9c
    sbc a
    inc c
    rrca
    ld c, h
    ld c, a
    inc c
    rrca
    inc c
    rrca
    inc c
    rrca
    adc h
    adc a
    call nz, $ecc7
    rst $28
    cp $ff
    rst $30
    rst $30
    rst $38
    rst $38
    rst $28
    rst $28
    ld c, a
    ld c, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    ld a, a
    rst $38
    rst $18
    rst $38
    inc de
    rst $38
    ld b, $ff
    ld a, $ff
    ld a, [hl]
    rst $38
    sbc h
    rst $38
    cp b
    rst $38
    sbc h
    rst $38
    ld b, $ff
    nop
    rst $38
    ld b, b
    rst $38
    jp $e4ff


    rst $38
    nop
    rst $38
    jr nz, @+$01

    jr c, @+$01

    inc a
    rst $38
    ld h, h
    rst $38
    or b
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rlca
    rst $38
    ret nc

    rst $28
    ldh [rIE], a
    ld hl, sp-$01
    inc e
    rst $38
    ld c, l
    cp a
    ld [$30ff], sp
    rst $38
    pop af
    rst $38
    adc a
    rst $38
    add c
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    db $e3
    rst $38
    add e
    rst $38
    ld bc, $11ff
    rst $38
    add d
    db $fd
    call z, $82f3
    rst $38
    ld b, [hl]
    cp a
    ld b, d
    cp a
    ld [hl], d
    adc a
    ld [hl], h
    adc a
    db $f4
    rrca
    ldh a, [rIF]
    add sp, $1f
    ld c, c
    cp [hl]
    cp b
    rst $38
    ld hl, sp-$01
    ld sp, $f7ff
    rst $38
    rst $38
    rst $38
    call c, $80ff
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    jp $feff


    rst $38
    ld a, [bc]
    rst $38
    ld a, $ff
    ld a, b
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    inc bc
    rst $38
    and a
    rst $18
    and h
    db $db
    ld h, [hl]
    sbc c
    db $f4
    adc e
    ld a, e
    add a
    db $eb
    rla
    db $fd
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld l, c
    sub [hl]
    ld de, $d1ee
    xor $52
    rst $38
    ld l, $df
    ld b, [hl]
    cp a
    ld h, [hl]
    cp a
    ld h, $ff
    ld l, a
    rst $38
    ld hl, sp-$08
    db $fc
    db $fc
    ld e, h
    cp h
    ld [$8cf8], sp
    ld a, h
    ld c, $fe
    rrca
    rst $38
    add hl, bc
    ld sp, hl
    rrca
    rst $38
    rrca
    rst $38
    ld c, $fe
    rrca
    rst $38
    ld c, $fe
    rra
    rst $38
    dec e
    db $fd
    dec c
    db $fd
    dec e
    db $fd
    sbc l
    db $fd
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    dec a
    db $fd
    dec a
    db $fd
    ld a, $fe
    ld a, [hl]
    cp $fe
    cp $fe
    cp $fe
    cp $ff
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
    db $ec
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    nop
    rst $38
    add b
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld b, $ff
    inc b
    rst $38
    inc h
    rst $38
    inc c
    rst $38
    jr @+$01

    ld c, $ff
    rst $38
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    rlca
    rst $38
    ld b, $ff
    ld b, $ff
    add hl, bc
    rst $38
    ld [$40ff], sp
    rst $38
    ld h, c
    cp $60
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    call nz, Call_077_70fb
    rst $38
    inc c
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld a, h
    rst $38
    inc e
    rst $38
    inc c
    rst $38
    add hl, bc
    rst $38
    jr @+$01

    ldh [rIE], a
    ld h, b
    rst $38
    rst $20
    rst $38
    ld b, e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    rst $38
    ret z

    rst $38
    nop
    rst $38
    dec de
    rst $38
    rra
    rst $38
    rra
    rst $38
    sbc [hl]
    ld a, a
    inc a
    rst $38
    cp c
    cp $fd
    cp $f0
    rst $38
    cp $ff
    rst $08
    rst $38
    inc b
    rst $38
    scf
    rst $38
    ld a, a
    rst $38
    cp $ff
    ld a, [hl]
    rst $38
    ld sp, $9afe
    db $fd
    nop
    rst $38
    nop
    rst $38
    ld [hl], $f9
    ret nz

    rst $38
    dec hl
    rst $10
    add b
    rst $38
    dec c
    cp $03
    db $fc
    dec bc
    db $fc
    ei
    db $fc
    add a
    db $fc
    rst $20
    sbc h
    inc sp
    call z, $bf40
    ld h, [hl]
    sbc a
    rlca
    rst $38
    scf
    rst $38
    rla
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld a, l
    rst $38
    ccf
    rst $38
    inc c
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $dd
    rst $38
    ld c, d
    db $fd
    ld b, h
    ei
    ld b, d
    rst $38
    ld h, [hl]
    rst $38
    cp $ff
    rlca
    rst $38
    rst $10
    rst $38
    db $e3
    rst $38
    add a
    rst $38
    ld c, $ff
    or [hl]
    rst $38
    db $e3
    rst $38
    rst $20
    rst $38
    ld c, a
    rst $38
    rrca
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    add a
    rst $38
    add a
    rst $38
    scf
    rst $38
    add e
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    add hl, bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    db $e3
    rst $38
    ld hl, sp-$01
    jr c, @+$01

    dec c
    cp $01
    cp $00
    rst $38
    dec e
    cp $2f
    rst $38
    jp $03fc


    db $fc
    ld bc, $c0fe
    rst $38
    nop
    rst $38
    rlca
    rst $38
    add e
    rst $38
    ld b, b
    rst $38
    rst $38
    rst $38
    ld a, $ff
    call z, $ee3f
    rra
    ld l, [hl]
    sbc a
    ld e, [hl]
    cp a
    ld a, $ff
    cp b
    rst $38
    inc e
    rst $38
    ld [$d8ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld d, e
    rst $38
    add d
    rst $38
    add h
    rst $38
    call nz, $86ff
    rst $38
    ld b, e
    cp a
    rrca
    rst $38
    rrca
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    ld b, e
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    ld bc, $21fe
    cp $e0
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    db $fc
    inc bc
    rst $38
    nop
    sbc a
    rst $38
    ld [$94ff], sp
    rst $38
    call nz, Call_000_06ff
    rst $38
    ld bc, $1cff

jr_077_564d:
    db $e3
    xor b
    ld [hl], a
    add d
    ld a, l
    reti


    and $2c
    db $d3
    ld hl, $fcde
    rlca
    ret nc

    cpl
    ld d, e
    xor h
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    jr nz, jr_077_56dd

    jr nz, @-$1b

    jr nz, jr_077_564d

    ld [$04b0], sp
    jr nc, jr_077_566f

jr_077_566f:
    add hl, bc
    ld [bc], a
    adc h
    nop
    call z, $fff7
    db $e3
    rst $30
    jp $c1f3


    di
    pop hl

jr_077_567d:
    rst $30
    pop hl
    rst $30
    ret nz

    rst $38
    ldh [rIE], a
    ld b, c
    rst $38
    ld h, b
    rst $38
    ld h, b
    db $fd
    ld b, b
    ld a, b
    ld b, b
    ld [$fc41], a
    nop
    rst $38
    adc e
    db $fc
    dec de
    db $fc
    nop
    rst $38
    push hl
    ld a, [de]
    daa
    ret c

    jr z, jr_077_567d

    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    ld h, b
    sbc a
    nop
    rst $38
    add b
    rst $38
    call nc, $ffff
    rst $38
    ld hl, sp-$01
    ld a, [c]
    db $fd
    ldh a, [rIE]
    ld a, c
    rst $38
    add hl, sp
    rst $38
    or b
    rst $38
    cp b
    rst $38
    and b
    rst $38
    jr nz, @+$01

    jr nc, @+$01

    dec bc
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    add $f9
    ld b, [hl]
    ld sp, hl
    nop
    rst $38
    ld [$03ff], sp
    rst $38
    nop
    rst $38
    pop bc
    ld a, $01
    cp $fc

jr_077_56dd:
    rra
    ld e, b
    cp a
    ld l, d
    db $fd
    add b
    ld a, a
    sub [hl]
    ld l, a
    ld b, $ff
    ld c, $ff
    add b
    rst $38
    nop
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    ld d, c
    rst $38
    inc c
    di
    nop
    rst $38
    rrca
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    ld [hl-], a
    db $fd
    ld l, h
    db $d3
    ld b, e
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    rst $08
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    pop hl
    rst $38
    rst $30
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
    inc e
    rst $38
    inc e
    rst $38
    sbc a
    ld a, a
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    db $fc
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc c
    rst $38
    nop
    rst $38
    rla
    rst $38
    rra
    rst $38
    dec de
    rst $38
    add b
    ld a, a
    pop bc
    ccf
    ld b, c
    cp a
    nop
    rst $38
    nop
    rst $38
    add b
    ldh a, [rSB]

jr_077_5753:
    ld [bc], a
    jr z, jr_077_5756

jr_077_5756:
    ld b, $30
    ld b, $00
    inc d
    add b
    dec de
    and b
    ld a, [de]
    and b
    nop
    dec de
    ld bc, $000b
    jr jr_077_5767

jr_077_5767:
    inc de
    nop
    add c
    nop
    ld [$1800], sp
    nop
    ld e, $18
    jr nz, jr_077_57bf

    ld h, c
    add $f0
    jp nz, $d8c0

    ret nz

    ret nz

    rst $10
    ret nz

    sbc $c0
    sub $c0
    db $f4
    ret nz

    rst $38
    jp Jump_077_58e7


    jp $c090


    ld d, b
    jp $c391


    jr jr_077_5753

    reti


    db $e3
    nop
    ldh [$03], a
    ldh [$03], a
    ld e, h
    ld bc, $8110
    jr jr_077_57ae

    ld hl, sp-$50
    cp $b4
    cp $00
    and a
    nop
    and b
    nop
    ldh a, [rSC]
    ldh a, [rNR10]
    ld hl, sp+$00
    di

jr_077_57ae:
    add b
    rst $38
    rlca
    ld hl, sp+$1b
    db $fc
    dec bc
    db $fc
    ld c, $f9
    ld hl, sp-$01
    ld hl, sp-$01
    ld h, d
    db $fd
    ld h, b

jr_077_57bf:
    rst $38
    ld [hl], b
    rst $38
    add sp, -$03
    ldh a, [rIE]
    ld h, c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $12
    cp b
    rlca
    ld hl, sp+$04
    rst $38
    inc a
    cp a
    nop
    cp $00
    di
    nop
    cp $02
    ld c, a
    nop
    add a
    ld c, c
    or a
    nop
    rst $38
    ld a, [hl]
    add c
    ld hl, sp+$07
    inc bc
    rst $38
    ld [hl], a
    adc a
    ld d, $ff
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    jr @+$01

    ld [$f8ff], sp

jr_077_57f9:
    rst $38
    ldh a, [rIE]
    inc e
    rst $38
    db $10
    rst $38
    jr nc, @+$01

    rst $38
    rst $38
    dec de

jr_077_5805:
    rst $38
    rra
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ld [hl], b
    rst $38
    ld b, b
    rst $38
    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
    jr nz, jr_077_57f9

    inc l
    rst $18
    rst $30
    rst $38

jr_077_581e:
    rst $38
    rst $38
    ccf
    rst $38
    rlca
    rst $38
    jr nz, jr_077_5805

    nop
    rst $38
    ld bc, $3fff
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push bc
    ccf
    ld h, b
    sbc a
    nop
    rst $38
    dec b
    rst $38
    ld hl, $7fff
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    di
    rst $38
    db $e3
    rst $38
    di
    rst $38
    ld sp, $00ff
    rst $38
    rla
    ld a, a
    add b
    inc b
    ld c, $e0
    ld [$14e0], sp
    jp Jump_000_100e


    rst $20
    db $10
    rlca
    nop
    add e
    rst $30
    nop
    rst $30
    nop
    ld [bc], a
    nop
    rst $28
    ld [$00ff], sp
    rra
    ld bc, $0707
    adc a
    add a
    ld a, [hl]
    sbc c
    ld a, [hl]
    ld l, l
    inc de
    add hl, bc
    add a
    pop de
    ld c, $07
    nop
    add hl, sp
    nop
    nop
    nop
    nop
    rst $18
    nop
    ld a, [c]
    xor [hl]
    ldh [$2e], a
    jr nz, jr_077_58c8

    ldh [$bf], a
    ldh [$be], a
    ldh [$84], a
    pop hl
    jp nz, Jump_000_00e1

    dec hl
    rra
    jr nz, jr_077_581e

    ld h, b
    add b
    ld b, d
    add b
    inc de
    nop
    sbc c
    ld [bc], a
    ld e, b
    ld [bc], a
    ld c, b
    ld [bc], a
    ret c

    ld b, $d1
    inc b
    pop de
    nop
    ld a, [c]
    nop
    db $f4
    ld l, h
    rst $38
    ld a, c
    rst $38
    db $76
    ld sp, hl
    and $79
    and $79
    ld l, [hl]
    pop af
    db $ec
    di
    ldh [rIE], a
    ld b, b
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    pop bc
    rst $38
    ret nz

    rst $38
    add b
    rst $38

jr_077_58c8:
    ld bc, $01ff
    ld b, a
    jr nz, jr_077_594d

    jr jr_077_5930

    add b
    ld bc, $c310
    ld [bc], a
    pop bc
    nop
    ld a, h
    ld [hl], b
    ld a, a
    ld e, [hl]
    rst $38
    nop
    rst $38
    inc b
    add [hl]
    nop
    rst $38
    add b
    ld a, a
    ld b, c
    cp a
    inc bc

Jump_077_58e7:
    rst $38
    rrca
    rst $38
    cp $ff
    ld b, $ff
    di
    rrca
    ld b, $ff
    rst $38
    rst $38
    db $fc
    rst $38
    jr @+$01

    ccf
    rst $38
    dec sp
    rst $38
    jr c, @+$01

    jr @+$01

    ld hl, sp-$01
    ld hl, sp-$01
    ldh [rIE], a
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    rra
    rst $38
    rrca
    rst $38
    nop
    rst $38
    jr c, @+$01

    jr c, @+$01

    ld b, $ff
    inc bc
    rst $38
    ld bc, $5fff
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ei
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld a, [c]
    rst $38

jr_077_5930:
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
    db $f4
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    rst $20
    rst $38
    ei
    rst $38
    db $fc
    rst $38
    cp $ff
    ld a, [$ecff]
    rst $38
    inc b

jr_077_594d:
    rst $38
    nop
    rst $38
    nop
    nop
    ld bc, $2300
    nop
    adc b
    inc bc
    db $fd
    nop
    sbc $3f
    jp z, $c63f

    cp $dc

jr_077_5961:
    call z, Call_000_00bc
    ld a, $00
    adc [hl]
    nop
    sub d
    inc c
    sbc b
    ld c, $e1
    sbc a
    rrca
    cp a
    ld d, b
    ldh [rSVBK], a
    ret nz

    ld e, b
    ldh [rVBK], a
    ldh a, [$e3]
    db $fc
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ldh [rP1], a
    add b
    ld a, [hl]
    ld bc, $c11c
    inc c
    pop bc
    inc a
    add d
    ld l, l
    add b
    dec e
    ret nz

    add hl, de

jr_077_5991:
    ret nz

    inc e
    pop bc
    ld hl, sp+$01
    db $e4
    ld bc, $0107
    rra
    ld bc, $011d
    jr jr_077_5961

    sbc c
    jp $c701


    ld [$1884], sp
    add h
    ld b, b
    inc c
    jr @+$41

    ld de, $f9ff
    rst $38
    ld a, c
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld h, a
    rst $38
    rlca
    rst $38
    and h
    rst $18
    add b
    rst $08
    adc b
    xor a
    add b
    rst $38
    add b
    db $db
    add b
    ret z

    add [hl]
    ldh [$81], a
    pop hl
    jr nc, jr_077_5991

    nop
    add d
    nop
    adc [hl]
    db $10
    add c
    inc bc
    ld a, a
    daa
    sbc a
    inc hl
    add a
    ld hl, $0103

jr_077_59df:
    jp $e15f


    cpl
    pop de
    cp l
    jp $efd0


    ret c

    rst $20
    ld de, $61ef
    sbc a
    inc c
    di
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $8bff
    rst $30
    add a
    rst $38
    sub c
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    add a
    ld a, a
    adc a
    ld a, a
    ccf
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    add b
    rst $38
    inc c
    rst $38
    nop
    rst $38
    ld bc, $02ff
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    adc b
    rst $30
    jr nz, @+$01

    jr @+$01

    inc c
    rst $38
    add hl, bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    nop
    rst $38
    add h
    rst $38
    rlca
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    jp $c0ff


    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    ld h, h
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    nop
    add hl, sp
    nop
    ld b, e
    nop
    add a
    jr c, jr_077_59df

    ld [$0847], sp
    ld h, e
    ret z

    rla
    ldh [rNR32], a
    nop
    ld h, b
    nop
    jr nz, jr_077_5a65

jr_077_5a65:
    nop
    nop
    ret z

    ret nz

    inc c
    ldh [$0e], a
    ldh a, [$0e]
    ldh a, [$ce]
    ld b, a
    ccf
    ld b, a
    ccf
    ld b, a
    ccf
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
    ld bc, $8c00
    inc bc
    ld hl, sp+$07
    ldh [$1f], a
    ldh a, [rIF]
    cp h
    ld b, e
    cp $01
    cp $01
    add d
    ld [bc], a
    inc b
    rst $38
    nop
    ld b, e
    inc b
    ld c, c
    nop
    db $fc
    inc a
    db $fc
    inc a
    db $fc
    ld a, h
    cp $f8
    rst $38
    or b
    rst $38
    ret nz

    ccf
    ld [bc], a
    db $fd
    ld b, $f9
    inc bc
    db $fc
    inc de
    db $fc
    db $e3
    db $fc
    dec b
    ld a, [$f90e]
    ld c, b
    rst $38
    db $10
    rst $38
    inc d
    rst $38
    add d
    rst $38
    adc b
    rst $30
    add h
    rst $38
    dec b
    rst $38
    rlca
    rst $38
    inc de
    rst $28
    inc bc
    rst $38
    add e
    ld a, a
    pop hl
    rra
    ld b, a
    rst $38
    rlca
    rst $38
    ld c, $9f
    ld a, [hl+]
    sbc a
    ld [bc], a
    adc a
    ld [bc], a
    sbc a
    ld [hl+], a
    sbc a
    db $10
    sbc a
    ld [bc], a
    rst $18
    ld [hl+], a
    adc a
    add e
    rst $38
    rlca
    rst $38
    rst $08
    rst $38
    dec [hl]
    rst $08
    dec c
    rst $38
    dec c
    rst $38
    add l
    rst $38
    ld b, $ff
    ld b, $ff
    dec h
    rst $38
    inc b
    rst $38
    add l
    rst $38
    rst $20
    rst $38
    pop hl
    rst $38
    adc d
    rst $30
    ld [c], a
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
    ld [hl], h
    rst $38
    ld h, d
    rst $38
    ld b, e
    rst $38
    ld d, e
    rst $38
    ld bc, $00ff
    rst $38
    inc b
    ei
    add b
    ld a, a
    db $10
    rst $38
    dec a
    rst $38
    adc c
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    rlca
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
    sub b
    rst $38
    db $fd
    rst $38
    rst $28
    rst $38
    pop bc
    rst $38
    ld sp, hl
    rst $38
    pop de
    rst $38
    sub c
    rst $38
    ld d, c
    rst $38
    add hl, sp
    rst $38
    jr c, @+$01

    jr z, @+$01

    jr z, @+$01

    jr nz, @+$01

    ld d, b
    rst $38
    ld e, b
    rst $38
    jp nc, Jump_077_72ff

    rst $38
    ld [hl], d
    rst $38
    ld l, d
    rst $38
    ld a, [hl-]
    rst $38
    inc d
    rst $38
    sbc h
    ld a, a
    sbc h
    ld a, a
    adc h
    ld a, a
    dec c
    rst $38
    adc c
    ld a, a
    adc e
    ld a, a
    ld c, a
    cp a
    rrca
    rst $38
    dec bc
    rst $38
    cp a
    ld a, a
    cp e
    ld a, a
    cp c
    ld a, a
    sbc a
    ld a, a
    sbc e
    ld a, a
    sbc e
    ld a, a
    add hl, de
    rst $38
    dec c
    rst $38
    dec c
    rst $38
    ld e, h
    rst $38
    sbc [hl]
    ld a, a
    cp a
    ld a, a
    or a
    ld a, a
    sub a
    ld a, a
    sub a
    ld a, a
    sbc a
    ld a, a
    rla
    rst $38
    xor a
    ld a, a
    rst $28
    ccf
    dec hl
    rst $38
    dec bc
    rst $38
    adc e
    ld a, a
    adc c
    rra
    add hl, de
    ccf
    dec de
    ccf
    inc bc
    ccf
    dec bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld [bc], a
    rst $38
    ld l, d
    rst $30
    ld h, c
    rst $38
    ld b, e
    rst $38
    ld b, a
    rst $38
    ld c, l
    rst $38
    ld b, l
    rst $38
    ld h, l
    rst $38
    ld h, l
    rst $38
    ld l, e
    rst $38
    adc e
    rst $38
    set 7, a
    adc e
    rst $38
    rlca
    rst $38
    rla
    rst $38
    ld c, $ff
    ld b, $ff
    ld [hl], a
    rst $38
    push hl
    rst $38
    db $ed
    rst $38
    jp hl


    rst $38
    ld a, c
    rst $38
    ld l, e
    rst $38
    db $eb
    rst $38
    ei
    rst $38
    ld hl, sp-$01
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    ld [$a2ff], a
    rst $38
    and e
    rst $38
    add a
    rst $38
    rrca
    rst $38
    rst $18
    rst $38
    adc a
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    cp l
    rst $38
    xor l
    rst $38
    add hl, hl
    rst $38
    ld l, a
    rst $38
    db $dd
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    sbc [hl]
    rst $38
    sbc [hl]
    rst $38
    sub [hl]
    rst $38
    ld b, [hl]
    rst $38
    call nz, Call_077_46ff
    rst $38
    ld c, $ff
    adc l
    rst $38
    ld [$9eff], sp
    ld a, a
    sbc $ff
    db $dd
    rst $38
    or l
    rst $38
    xor $ff
    cp $ff
    cp $ff
    xor $ff
    ld [hl+], a
    rst $38
    ld l, e
    rst $38
    adc $ff
    ld e, [hl]
    rst $38
    adc $ff
    ldh a, [rIE]
    ret nz

    rst $38
    ld c, b
    rst $38
    ld c, b
    rst $38
    ld c, h
    rst $38
    adc [hl]
    rst $38
    adc [hl]
    rst $38
    adc $ff
    add $ff
    add $ff
    rst $18
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    xor $ff
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    db $e3
    rst $38
    pop hl
    rst $38
    ld h, c
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    or b
    rst $38
    and b
    rst $38
    cp b
    rst $38
    cp b
    rst $38
    ld sp, hl
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    add sp, -$01
    rst $00
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    ret


    rst $38
    pop hl
    rst $38
    or b
    rst $38
    or b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    cp e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    ld d, d
    rst $38
    inc bc
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    xor a
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    db $e4
    rst $38
    db $ec
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp [hl]
    rst $38
    ld e, $ff
    ld e, $ff
    rra
    rst $38
    dec b
    rst $38
    scf
    rst $38
    xor a
    rst $38
    rst $18
    rst $38
    rst $30
    rst $38
    or a
    rst $38
    di
    rst $38
    rst $30
    rst $38
    db $fd
    rst $38
    cp $ff
    ld l, [hl]
    rst $38
    cp $ff
    sbc b
    rst $38
    call c, $b8ff
    rst $38
    jp c, $99ff

    rst $38
    sbc b
    rst $38
    sbc b
    rst $38
    sbc c
    rst $38
    sub l
    rst $38
    or l
    rst $38
    push af
    rst $38
    or e
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rra
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld [hl], a
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    rst $08
    rst $38
    adc a
    rst $38
    ld a, $ff
    ld a, $ff
    ld a, $ff
    inc a
    rst $38
    inc a
    rst $38
    jr c, @+$01

    ld a, b
    rst $38
    ld a, b
    rst $38
    ld [hl], b
    rst $38
    ld a, b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld a, b
    rst $38
    push af
    rst $38
    ld a, e
    rst $38
    ld a, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    add a
    rst $38
    add a
    rst $38
    rlca
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    sbc a
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
    rst $18
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
    rst $20
    rst $38
    rst $30
    rst $38
    pop af
    rst $38
    or h
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
    ei
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    ld a, c
    rst $38
    ld a, c
    rst $38
    ld a, c
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld a, h
    rst $38
    ld a, c
    rst $38
    ld a, c
    rst $38
    db $fd
    rst $38
    rst $18
    rst $38
    rst $00
    rst $38
    add a
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $20
    rst $38
    push hl
    rst $38
    db $fd
    rst $38
    ld a, l
    rst $38
    ld a, l
    rst $38
    ld a, h
    rst $38
    ld a, b
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    pop af
    rst $38
    di
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ld sp, hl
    rst $38
    pop af
    rst $38
    ld [hl], d
    rst $38
    ld [hl], c
    rst $38
    ld [hl], c
    rst $38
    ld h, c
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rrca
    rst $38
    ld e, a
    rst $38
    cp [hl]
    rst $38
    xor l
    rst $38
    inc c
    rst $38
    sbc b
    rst $38
    sbc b
    rst $38
    ld sp, hl
    rst $38
    cp c
    rst $38
    or l
    rst $38
    or e
    rst $38
    and e
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    rst $00
    rst $38
    dec h
    rst $38
    dec d
    rst $38
    ld sp, $0bff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
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
    rrca
    rst $38
    jp $a9ff


    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    ldh a, [rIE]
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
    ld hl, sp-$01
    ret c

    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, [hl]
    rst $38
    ccf
    rst $38
    rra
    rst $38
    sbc e
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    adc a
    rst $38
    rst $28
    rst $38
    xor a
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    push hl
    rst $38
    db $e4
    rst $38
    ld h, h
    rst $38
    db $e4
    rst $38
    ldh [rIE], a
    add sp, -$01
    db $ec
    rst $38
    db $fc
    rst $38
    ld a, d
    rst $38
    inc e
    rst $38
    ld e, $ff
    ld b, $ff
    db $e3
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push hl
    rst $38
    or d
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
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
    rst $38
    rst $38
    cp $ff
    ld a, h
    rst $38
    add hl, sp
    rst $38
    cp e
    rst $38
    ld a, e
    rst $38
    ld a, c
    rst $38
    ld a, l
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $f4
    rst $38
    db $f4
    rst $38
    db $e4
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
    jr jr_077_5f63

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_077_5f73

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_077_5f83

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_077_5f93

    ld [hl-], a

jr_077_5f63:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_077_5fa3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_077_5f73:
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

jr_077_5f83:
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    inc a
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c

jr_077_5f93:
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

jr_077_5fa3:
    ld [hl], d
    ld h, d
    ld h, d
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
    ld h, d
    ld h, d
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
    ld h, d
    ld h, d
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
    xor h
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
    xor h
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    inc a
    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    xor h
    xor h
    xor h
    ret


    jp z, $cccb

    call $cfce
    ret nc

    pop de
    jp nc, $d4d3

    push de
    xor h
    xor h
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

Jump_077_6040:
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
    jr jr_077_6072

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_077_6082

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_077_6092

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_077_6071

jr_077_6071:
    nop

jr_077_6072:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_077_6082:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_077_6092:
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
    inc bc
    dec b
    dec b
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
    inc bc
    inc bc
    inc bc
    dec b
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
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
    ld bc, $0000
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
    nop
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
    ld bc, $0000
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
    ld bc, $0000
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
    nop
    dec b
    dec b
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
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$fffe], sp
    ld a, [hl]

jr_077_61b3:
    rst $38
    cp $ff
    cp a
    rst $38
    ld e, a
    rst $38
    adc a
    ld a, a
    rst $08
    ccf
    ld d, a
    cp a
    dec hl
    rst $18
    daa
    rst $18
    ld [hl], a
    adc a
    ld sp, $30cf
    rst $08
    jr jr_077_61b3

    inc e
    db $e3
    ld e, $e1
    ld c, $f1
    nop
    rst $38
    nop
    rst $38
    adc h
    di
    sbc a
    ldh [$df], a
    ldh [$f0], a
    rst $38
    ld hl, sp-$01
    cp $ff
    cp $ff
    db $fc
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ld a, b
    rst $38
    inc a
    rst $38
    inc c
    rst $38
    ld b, $ff
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
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    or d
    ld c, a
    ld sp, $39cf
    rst $00
    inc a
    jp $cb34


    sbc [hl]
    pop hl
    sbc a
    ldh [$ce], a
    pop af
    ld h, e
    db $fc
    ld h, b
    rst $38
    jr nc, @+$01

    ld e, $ff
    dec de
    rst $38
    inc e
    rst $38
    inc c
    rst $38
    ld c, $ff
    ld b, $ff
    ld b, $ff
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    jr z, @-$27

    add h
    ei
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    add b
    rst $38
    db $10
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld d, b
    cp a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    pop af
    ld c, $81
    ld a, [hl]
    nop
    rst $38
    rst $38
    rst $38
    db $dd
    rst $38
    and c
    rst $38
    add c
    ld a, a
    jp $c33f


    ccf
    ld b, a
    cp a
    rst $00
    ccf
    adc [hl]
    ld a, a
    adc $3f
    rst $28
    ld e, $fc
    rra
    inc e
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    ld a, [$9eff]
    rst $38
    cp h
    rst $38
    ld hl, sp-$01
    ld a, h
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld a, [$f2ff]
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    db $fd
    rst $38
    db $fd
    rst $38
    cp $ff
    cp $ff
    cp $ff
    ld [c], a
    rst $38
    jp $81ff


    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec b
    ld a, [$fe81]
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    or b
    rst $08
    ret c

    rst $20
    ret nc

    rst $28
    ret nz

    rst $38
    pop bc
    rst $38
    push hl
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    pop af
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    jr c, @+$01

    ld a, b
    rst $38
    ld e, l
    cp $9f
    ld a, h
    adc l
    ld a, [hl]
    adc $3f
    rst $38
    rra
    rlca
    rst $38
    ld a, a
    rst $38
    ld c, [hl]
    cp a
    ld [hl], b
    adc a
    ld a, [hl]
    add c
    ccf
    ret nz

    rst $28
    db $10
    rst $30
    ld [$7f80], sp
    add b
    ld a, a
    ldh [$1f], a
    ld a, [hl]
    add c
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    rrca
    ldh a, [rTMA]
    ld sp, hl
    ld c, h
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, @+$01

    db $10
    rst $38
    jr @+$01

    add hl, bc
    rst $38
    inc b
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld b, $ff
    rlca
    rst $38
    ld h, a
    sbc a
    rlca
    rst $38
    rrca
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ld [hl], a
    rst $38
    jr nc, @+$01

    jr @+$01

    inc e
    rst $38
    adc [hl]
    ld a, a
    ld b, l
    cp a
    dec h
    rst $18
    rla
    rst $28
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld b, e
    rst $38
    and c
    rst $38
    ld h, e
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
    adc a
    ld a, a
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
    inc bc
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp+$07
    ld a, $c1
    inc e
    db $e3
    ld e, $e1
    ld c, $f1
    ld b, $f9
    ld b, [hl]
    ld sp, hl
    ld b, d
    db $fd
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    ld h, $ff
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld h, [hl]
    rst $38
    jp $e1ff


    rst $38
    jp nz, $ffff

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
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    and a
    ld e, a
    ld b, $ff
    ld b, $ff
    inc bc
    rst $38
    dec bc
    rst $30
    inc bc
    rst $38
    inc b
    ei
    dec b
    ei
    inc hl
    db $fd
    ld [bc], a
    db $fd
    ld b, b
    cp a
    add hl, hl
    sbc $2d
    sbc $60
    sbc a
    ld b, h
    cp a
    nop
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    add b
    inc e
    nop
    db $fc
    add b
    db $fd
    ret nc

    rst $38
    sub h
    db $eb
    sbc [hl]
    pop hl
    adc a
    ldh a, [$c7]
    ld hl, sp+$67
    ld hl, sp+$73
    db $fc
    inc de
    db $fc
    inc sp
    db $fc
    ld bc, $09fe
    cp $6d
    sbc [hl]
    db $f4
    rrca
    ld hl, sp+$07
    call z, $0c33
    di
    inc e
    db $e3
    call nz, Call_077_7ffb
    rst $38
    ld bc, $80ff
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr c, @+$01

    ld bc, $07ff
    rst $38
    inc bc
    rst $38
    inc de
    rst $38
    db $10
    rst $38
    nop
    rst $38
    jr z, @+$01

    ld a, [$fcff]
    rst $38
    db $ec
    rst $38
    and $ff
    db $e3
    rst $38
    pop af
    rst $38
    ld e, c
    rst $38
    inc b
    rst $38
    ld e, $ff
    rla
    rst $38
    ld c, $ff
    rrca
    rst $38
    ld b, a
    rst $38
    rlca
    rst $38
    add e
    rst $38
    sub e
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    db $e3
    rst $38
    di
    rst $38
    ld sp, hl
    rst $38
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
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld [$02ff], sp
    rst $38
    ld [$09ff], sp
    rst $38
    ld [bc], a
    rst $38
    ld de, $11ff
    rst $38
    ld de, $d2ff
    rst $38
    di
    rst $38
    scf
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    xor $ff
    rst $08
    rst $38
    ld c, a
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    adc a
    rst $38
    jp $e1ff


    rst $38
    db $e3
    rst $38
    di
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    rrca
    rst $38
    ld e, a
    and b
    ccf
    ret nz

    scf
    ret z

    or a
    ret z

    sub a
    add sp, $47
    ld hl, sp-$11
    ldh a, [$f7]
    ld hl, sp-$09

jr_077_64c1:
    ld hl, sp-$05
    db $fc
    ei
    db $fc
    ld a, a
    db $fc
    db $fd
    ld a, [hl]
    or e
    ld a, [hl]
    db $76
    cp a
    ld e, $ff
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    jr jr_077_64c1

    ld [bc], a
    db $fd
    ld a, [bc]
    push af
    ld c, a
    ldh a, [rNR41]
    rst $38
    ld [c], a
    db $fd
    jr c, @+$01

    ld c, $ff
    adc [hl]
    ld a, a
    call nz, $f43f
    rra
    ld a, [c]
    rrca
    nop
    rlca
    ld bc, $0100
    add b
    add hl, bc
    add b
    ld bc, $0000
    add b
    nop
    add b
    nop
    add b
    rlca
    ld hl, sp+$06
    ld sp, hl
    add b
    rst $38
    ld h, c
    rst $38
    dec bc
    rst $38
    ld sp, $7ecf
    add c
    rst $00
    jr c, jr_077_6558

    cp b
    ld [bc], a
    db $fd
    add b
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    di
    ld c, $f1
    rrca
    ldh a, [$6f]
    sub b
    rlca
    ld hl, sp+$0f
    ldh a, [$08]
    rst $30
    add b
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, h
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    inc c
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    db $fc
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
    ld a, a
    rst $38

jr_077_6558:
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
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
    cp $ff
    db $fd
    cp $75
    cp $7f
    db $fc
    ei
    db $fc
    ld a, [c]
    db $fd
    or $f9
    db $f4
    ei
    cp a
    ldh a, [$e3]
    db $fc
    db $e3
    db $fc
    ld [c], a
    db $fd
    ld [c], a
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
    cp $ff
    db $fc
    rst $38
    ld sp, hl
    cp $f1
    cp $e3
    db $fc
    rst $20
    ld hl, sp+$06
    rst $38
    rlca
    rst $38
    ld b, [hl]
    cp a
    jp nz, $c03f

    ccf
    pop hl
    rra
    pop hl
    rra
    ret nz

    ccf
    add b
    ld a, a
    call z, $c833
    scf
    sub l
    ld l, e
    db $dd
    inc hl
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    and c
    ld a, a
    add c
    ld a, a
    ld b, b
    cp a
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld hl, $1fde
    ldh [$1f], a
    ldh [rP1], a
    pop af
    nop
    ld [hl], l
    nop
    db $fd
    nop
    rst $38
    ld bc, $410f
    rrca
    ld h, b
    dec bc
    ld b, b
    add hl, bc
    ret nz

    dec de
    add b
    ld [hl-], a
    jr nz, jr_077_666a

    jr nz, jr_077_6668

    jr nz, @+$7a

    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld a, b
    add a
    ld a, b
    ld b, b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    adc h
    di
    ldh [rIE], a
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp a
    ld a, a
    rra
    rst $38
    rra
    rst $38
    adc a
    ld a, a
    rrca
    rst $38
    scf
    rst $08
    ld a, a
    adc a
    ld h, a
    sbc a
    rrca
    rst $38
    adc a
    ld a, a
    and a
    ld a, a
    ld h, a
    rst $38
    ld h, e
    rst $38
    add e
    rst $38
    add e
    rst $38
    ld bc, $00ff
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld bc, $01ff
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
    jp $f7ff


    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    push bc
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, [$ffff]
    rst $38
    db $fc
    rst $38
    ei
    rst $38

jr_077_6668:
    cp e
    rst $38

jr_077_666a:
    ccf
    rst $38
    ld hl, $a0ff
    rst $38
    db $e3
    cp $e0
    rst $38
    ret c

    rst $20
    ret c

    rst $20
    sbc b
    rst $20
    or b
    rst $08
    ld sp, $71ce
    adc [hl]
    rst $20
    jr @-$0f

    db $10
    rst $38
    nop
    sbc a
    ld h, b
    ld e, a
    and b
    ld a, h
    add e
    ld hl, sp+$07
    push hl
    ld e, $c3
    inc a
    adc a
    ld [hl], b
    sbc a
    ld h, b
    ccf
    ret nz

    daa
    ret c

    adc e
    db $f4
    pop hl
    cp $e0
    rst $38
    ld hl, sp-$01
    ld a, a
    rst $38
    ld [hl], a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld l, a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld bc, $80ff
    rst $38
    ld h, $db
    inc bc
    rst $38
    ld b, c
    cp a
    ld h, e
    sbc h
    ld h, e
    sbc h
    ld hl, $68de
    sub a
    ld [hl], $c9
    sub e
    db $ec
    add b
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    jr nc, jr_077_6713

    or b
    cp a
    jr c, jr_077_6717

    jr c, jr_077_6719

    jr jr_077_66fb

    ld [$1b0f], sp
    inc e
    ld a, h
    rlca
    ld e, $03
    ld [bc], a
    inc bc
    add $03
    cp $03
    or $03
    ld b, d
    inc bc
    ld b, c
    ld bc, $0181
    ld d, c
    ld bc, $0101
    ld bc, $0001
    nop
    nop

jr_077_66fb:
    nop
    nop
    nop
    nop
    nop
    inc b
    ld b, b
    nop
    ret nz

    nop
    ld b, b
    nop
    nop
    nop
    add b
    add h
    ldh [$f0], a
    ld hl, sp-$02
    rst $38
    rst $38
    rst $38
    rst $38

jr_077_6713:
    rst $38
    rst $38
    rst $38
    rst $38

jr_077_6717:
    rst $38
    rst $38

jr_077_6719:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or $ff
    ld a, [c]
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    add e
    db $fc
    rrca
    ldh a, [$5f]
    and b
    ld a, a
    add b
    or a
    ret z

    ret nz

    rst $38
    ldh [rIE], a
    add sp, -$01
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
    cp a
    rst $38
    cp a
    rst $38
    rst $28
    rst $38
    ld hl, sp-$01
    cp a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld c, $ff
    dec e
    rst $38
    cp [hl]
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    ldh [$1f], a
    ld sp, hl
    ld b, $e8
    rla
    ld a, b
    add a
    ld a, b
    add a
    call nc, $f42f
    rrca
    ld hl, sp+$0f
    add sp, $1f
    pop af
    ld e, $c5
    ld a, [hl-]
    adc c
    db $76
    ld e, l
    ld a, [c]
    dec bc
    db $f4
    dec de
    db $e4
    sbc e
    ld h, h
    cp a
    ld b, b
    rst $38
    nop
    ldh a, [rIF]
    ldh a, [rIF]
    db $e4
    rra
    add e
    ld a, a
    rlca
    rst $38
    ld e, $ff
    sbc h
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
    db $fd
    rst $38
    sbc $ff
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    add b
    rst $38
    add b
    cp a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    cp a
    ld b, b
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    pop bc
    cp $7f
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [$ff05]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_077_67e8:
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    add b
    rst $38
    add b
    rst $38
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
    ret nz

    ld a, a
    rst $18
    ldh [$df], a
    ldh [$c3], a
    db $fc
    ldh [$e3], a
    xor $ee
    db $fc
    db $fc
    di
    di
    nop
    nop
    ld e, $e1
    ld a, [hl]
    add c
    xor $11
    ld a, [c]
    dec c
    ld a, [$fe05]
    ld bc, $01fe
    db $fc
    inc bc
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    add b
    rst $38
    ret nz

    rst $38
    db $e4
    rst $38
    db $ec
    rst $38
    rst $20
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    db $eb
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    inc bc
    rst $38
    add e
    rst $38
    jp $c3ff


    rst $38
    inc hl
    rst $38
    inc hl
    rst $38
    inc hl
    rst $38
    ld h, e
    rst $38
    pop hl
    rst $38
    pop bc
    rst $38
    jp $f3ff


    rst $38
    rlca
    rst $38
    nop
    ld b, e
    nop
    nop
    jr nz, jr_077_67e8

    nop
    add b
    nop
    add b
    nop
    add c
    nop
    inc bc
    ld a, h
    add e
    db $fc
    inc bc
    ld sp, hl
    rlca
    pop af
    rrca
    ldh a, [rIF]
    jp hl


    ld e, $e1
    ld e, $c2
    dec a
    jp nz, $c33d

    inc a
    ld b, a
    cp b
    rrca
    ldh a, [rVBK]
    ldh a, [$ef]
    ldh a, [$94]
    ei
    db $10
    rst $38
    sub c
    cp $17
    ld hl, sp-$79
    ld hl, sp+$37
    ld hl, sp+$39
    cp $1c
    rst $38
    sbc a
    ld a, a
    rra
    rst $38
    ret nc

    ccf
    ret nc

    ccf
    ret nc

    ccf
    call nc, $fa3b
    dec e
    ld hl, sp+$1f
    add sp, $1f
    add sp, $1f
    ldh [$1f], a
    ld sp, hl
    ld c, $ef
    inc e
    rst $38
    inc c
    rst $30
    inc c
    db $f4
    rrca
    db $fc
    rlca
    cp h
    ld b, a
    db $fc
    db $fc
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
    add sp, $17
    rst $38
    nop
    rst $38

jr_077_68d5:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ldh a, [rP1]
    xor a
    ld a, h
    ld a, h
    rst $38
    rst $38
    or $f6
    ld [$25f7], sp
    ld a, [$f00f]
    ld e, e
    and h
    ldh a, [rIF]
    ldh [$1f], a
    pop hl
    ld e, $03
    db $fc
    inc bc
    db $fc
    ld c, $f1
    inc b
    ei
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    jr c, jr_077_68d5

    ld b, a
    ld hl, sp-$13
    cp $6f
    rst $38
    ld e, $ff
    sbc a
    rst $38
    inc bc
    rst $38
    add d
    db $fd
    add c
    cp $80
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld [hl], b
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    jp nz, $a0ff

    rst $38
    jr nc, @+$01

    nop

jr_077_6939:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    or b
    rst $38
    jr c, @+$01

    ld [de], a
    rst $38
    ret z

    scf
    rst $28
    jr nc, jr_077_6939

    ld [hl], c
    db $e3
    rst $38
    jp $83ff


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $38
    ld a, h
    add e
    rst $38
    nop
    db $fd
    ld [bc], a
    ld a, [$fa05]
    dec b
    sub $29
    sub b
    ld l, a
    sbc b
    ld h, a
    jr c, @-$37

    ld a, h
    add e
    ld a, b
    add a
    ldh a, [rIF]
    db $e3
    inc e
    ldh [$1f], a
    pop bc
    ccf
    ld sp, $ffff
    rst $38
    rst $38
    rst $38
    sbc [hl]
    rst $38
    inc de
    rst $38
    ld bc, $21ff
    rst $18
    ld h, b
    sbc a
    ld [hl], b
    adc a
    ld h, c
    sbc a
    ld a, c
    add a
    ei
    rlca
    ld [$c317], a
    ccf
    ld c, e
    or a
    ld e, e
    and a
    ld d, e
    xor a
    db $e3
    rra
    jp $8f3f


    ld [hl], e
    ld bc, $ff01
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
    add b
    ld a, a
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

jr_077_69c7:
    nop
    ld a, a
    add b
    inc bc
    db $fc
    ret nz

    rst $00
    rrca
    rrca
    rrca
    rrca
    add hl, bc
    rrca
    ld [$280d], sp
    dec c
    ld [$089c], sp
    sbc h
    nop
    cp h
    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    jr nz, jr_077_69c7

    ld a, [bc]
    rst $38
    rla
    cp $01
    cp $c1
    ld a, $c1
    ld a, $40
    cp a
    add b
    rst $38
    ret nz

    rst $38
    call nz, $40ff
    rst $38
    ld a, $ff
    inc bc
    rst $38
    and c
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    pop bc
    rst $38
    and c
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra

jr_077_6a17:
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
    rrca
    rst $38
    rrca
    rst $38
    ld a, a
    rst $38
    sbc a
    ld a, a
    ld l, a
    sbc a
    ld bc, $20ff
    rst $38
    ld a, a
    db $fc
    ld e, e
    db $fc
    ei
    db $fc
    ld a, [$f8fd]
    rst $38
    jr c, @+$01

    dec de
    rst $38
    push hl
    dec de
    dec d
    ei
    ld e, $f1
    ld c, $f1
    cpl
    ldh a, [$3f]
    ldh [$5c], a
    db $e3
    ld a, $c1
    jr c, jr_077_6a17

    ccf
    ret nz

    inc a
    jp $8f70


    ld hl, sp-$79
    ld a, h
    add a
    ld [hl], l
    adc a
    db $fc
    rrca
    add sp, $1f
    rst $38
    rst $38
    ld e, a
    rst $38
    rrca
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    inc b
    ei
    ld b, c
    rst $38
    and c
    rst $38
    rst $20
    rst $38
    ldh [rIE], a
    ei
    rst $38
    cp $ff
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
    ld hl, sp+$07
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

jr_077_6aa3:
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
    rst $28
    rrca
    sub h

jr_077_6ab1:
    rst $28
    rst $28
    rst $38
    sbc a
    rst $28
    ld a, [hl]
    adc a
    ld a, [$f30d]
    inc c
    ldh a, [rIF]
    ldh a, [rIF]
    jr jr_077_6ab1

    jr z, jr_077_6aa3

    ld a, h
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    di
    inc c
    db $fc
    rrca
    xor $1f
    ld [hl], a
    adc a
    ld h, a
    sbc a
    daa
    rst $18
    add $3f
    ld b, $ff
    rlca
    rst $38
    rlca
    rst $38
    rst $00
    rst $38
    jp nz, $82ff

    rst $38
    and d
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld bc, $81ff
    rst $38
    ld sp, hl
    rst $38
    pop af
    rst $38
    ei
    rst $38
    cp $ff
    xor $ff
    adc $ff
    ld b, $ff
    add [hl]
    rst $38
    jp $c2fe


    rst $38
    add $ff
    adc $ff
    add $ff
    add [hl]
    rst $38
    adc [hl]
    rst $38
    ld h, $df
    ld c, a
    cp a
    ld b, b
    cp a
    nop
    rst $38
    ld b, d
    rst $38
    rst $38
    ret nz

    rst $18
    ldh [$bc], a
    jp $dba4


    ld h, b
    sbc a
    nop
    rst $38
    nop
    rst $38
    jr nz, @-$1f

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add c
    ld a, a
    ld b, b
    cp a
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    adc b
    rst $38
    pop bc
    cp $41
    cp $fe
    rst $38
    cp h
    rst $38
    ld [$00ff], sp
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, $ff
    inc a
    rst $38
    ld a, $ff
    inc [hl]
    rst $38
    ld a, a
    rst $38
    ld a, h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld hl, sp+$07
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc

jr_077_6ba5:
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    ldh a, [rIF]
    ld a, b
    add a
    nop
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    sbc a
    sbc a
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, @-$1f

    jr z, @-$27

    jr nz, jr_077_6ba5

    db $10
    rst $28
    ld d, b
    xor a
    jr nc, @-$2f

    db $10
    rst $28
    db $10
    rst $28
    nop
    rst $38
    db $e4
    ei
    ldh a, [rIE]
    ld hl, sp-$01
    ld e, a
    rst $38
    rst $18
    rst $38
    ld h, e
    rst $38
    ld b, c
    rst $38
    pop bc
    rst $38
    ld b, c
    rst $38
    jr nz, @+$01

    sub c
    ld a, a
    add hl, de
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    call c, $0fff
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca

jr_077_6bff:
    rst $38
    rlca
    rst $38
    or h

jr_077_6c03:
    ld c, a
    ret nz

    ccf
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    rst $00
    ccf
    ld a, a
    rst $38
    cp a
    ld a, a
    rlca
    rst $38
    inc e
    db $e3
    inc c
    di
    add c
    ld a, [hl]
    jr nz, jr_077_6bff

    nop
    rst $38
    jr nz, jr_077_6c03

    ld bc, $0ffe
    ldh a, [$3f]
    ret nz

    ccf
    ret nz

    ld bc, $f0fe
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$0f
    ldh a, [$7f]
    add b
    rst $38
    nop
    db $fd
    cp $36
    rst $38
    inc [hl]
    rst $38
    ld a, h
    rst $38
    db $fd
    cp $fd
    cp $fd
    cp $79
    cp $79
    cp $f9
    cp $3b
    db $fc
    ld a, $f9
    ld a, [hl-]
    db $fd
    ld a, [$f9fd]
    cp $f9
    cp $f8
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp+$7f
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
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
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rra
    rrca
    rrca
    nop
    nop
    nop
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    inc c
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    cp c
    rst $38
    ld [hl], e
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    jp $83ff


    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rst $20
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
    inc a
    rst $38
    inc e
    rst $38
    ld [$08ff], sp
    rst $38
    add b
    rst $38
    ret c

    rst $38
    ld a, b
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    add b
    rst $38
    ld [bc], a
    db $fd
    ld h, $d9
    jp nz, Jump_000_003d

    rst $38
    nop
    rst $38
    inc b
    rst $38
    jp $fd3f


    inc bc
    db $fd
    inc bc
    rst $38
    ld bc, $f30d
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rra
    db $e3
    dec sp
    rst $00
    inc sp
    rst $08
    and e
    ld e, a
    add a
    ld a, a
    inc de
    db $ec
    dec e
    ld [c], a
    ld e, $e1
    rrca
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$db], a
    inc h
    or [hl]
    ld c, c
    cp [hl]
    ld b, c
    call c, $a823
    ld d, a
    ret nz

    ccf
    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
    ld [bc], a
    db $fd
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld b, $ff
    ld [bc], a
    rst $38
    ld b, $ff
    ld b, $ff
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
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    ld b, $f9
    ld h, b
    sbc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ret nz

    pop bc
    ret nc

    ret nc

    ret nc

    ret nc

    ldh a, [$f0]
    jr nc, @+$01

    or b
    rst $38
    db $f4
    ei
    sub b
    rst $38
    add h
    ei
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ldh [rIE], a
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
    rst $38
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
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    add a
    ld a, a
    ld b, a
    cp a
    scf
    rst $08
    rrca
    rst $38
    ld l, a
    rst $38
    ld a, a
    rst $38
    ld e, [hl]
    rst $38
    ld d, $ff
    db $10
    rst $38
    add b
    rst $38
    inc b
    rst $38
    nop
    rst $18
    nop
    rst $00
    nop
    ret nz

    pop bc
    ld hl, sp-$10

jr_077_6df9:
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38

jr_077_6dff:
    rst $38
    rst $38
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
    ld sp, hl

jr_077_6e0d:
    rst $38
    ldh a, [rIE]
    rst $00

jr_077_6e11:
    ccf
    rst $00

jr_077_6e13:
    ccf
    rst $20
    rra
    ld h, l
    sbc a
    jr nz, jr_077_6df9

    nop
    rst $38
    inc b
    ei
    add l
    ld a, e
    add [hl]
    ld a, c
    ld b, $f9
    ld h, $d9
    xor h
    ld d, e
    jr jr_077_6e11

    jr jr_077_6e13

    jr nz, jr_077_6e0d

    jr nc, jr_077_6dff

    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0303
    ei
    ei
    rlca
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    add h
    ld a, e
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
    rlca
    rlca
    rrca
    rrca
    add hl, de
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $10ff
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    add hl, bc
    rst $30
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    and b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
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
    cp $ff
    or $ff
    ld hl, sp-$01
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    db $ec
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    and $ff
    db $f4
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    cp c
    rst $38
    add hl, sp
    rst $38
    jr c, @+$01

    inc a
    rst $38
    inc a
    rst $38
    rra
    rst $38
    dec h
    rst $38
    ld [hl+], a
    rst $38
    ld [hl], $ff
    ld c, $1f
    jp nz, Jump_000_000f

    inc bc
    jr nz, @-$03

    cp b
    rst $38
    ld [hl], h
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
    ld e, [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh a, [rIE]
    ld a, [$feff]
    rst $38
    di
    rst $38
    rst $30
    rst $38
    ld a, a
    rst $38
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or $ff
    or $ff
    ld a, [$7aff]
    rst $38
    ld [hl], b
    ld [hl], b
    ldh [$e0], a
    ret nz

    ret nz

    add b
    add b
    add b
    add b
    ret nz

    ret nz

    cp $fe
    ld bc, $01ff
    cp $00
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    nop
    rst $38
    ld [bc], a
    db $fd
    ld b, $f9
    ld b, $f9
    nop
    rst $38
    inc b
    ld a, [$fa04]
    inc c
    ld a, [c]
    inc c
    ld a, [c]
    dec bc
    rst $30
    dec bc
    rst $30
    dec bc
    rst $30
    dec bc
    rst $30
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp-$40
    ld hl, sp-$10
    ldh a, [$f6]
    ld sp, hl
    or $f9
    rst $30
    ld hl, sp-$59
    ld hl, sp-$2a
    ld sp, hl
    rst $30
    ld hl, sp-$0d
    db $fc
    scf
    ld hl, sp+$37
    ld hl, sp+$37
    ld hl, sp+$13
    db $fc
    inc bc
    db $fc
    add hl, bc
    cp $59
    cp [hl]
    xor h
    ld e, a
    ld c, $ff
    ld c, $ff
    inc bc
    rst $38
    inc bc
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    rrca
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
    inc de
    rst $38
    ld d, a
    rst $38
    rlca
    rst $38
    daa
    rst $38
    rrca
    rst $38
    daa
    rst $38
    rrca
    rst $38
    sbc a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    rst $18
    rst $38
    rst $00
    rst $38
    sbc a
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld a, $ff
    cp a
    ld a, a
    ret c

    ccf
    pop hl
    ld e, $ec
    inc de
    nop
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    pop de
    rst $38
    ld b, b
    rst $38
    ld e, d
    db $fd
    ld bc, $00fe
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add sp, -$01
    ld hl, sp-$01
    ret c

    rst $38
    sub b
    rst $38
    add d
    rst $38
    add b
    rst $38
    add h
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ld b, h
    cp a
    ret c

    daa
    ld b, $ff
    inc h
    rst $18
    xor h
    ld e, a
    jr @+$01

    ld sp, hl
    cp $fc
    ld hl, sp-$07
    ld hl, sp-$08
    ldh a, [$f8]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f3]
    ldh [rIE], a
    ldh [rIE], a

Call_077_7003:
    ldh [rIE], a
    ldh [$e0], a
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ld c, a
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
    ld [bc], a
    ld [bc], a
    nop
    nop
    inc b
    inc b
    rlca

jr_077_7021:
    cp $0d
    cp $1d
    cp $18
    rst $38
    jr @+$01

    ld a, h
    rst $38
    add h
    rst $38
    add b
    rst $38
    jr jr_077_7021

    ld [$08ff], sp
    rst $38
    nop
    rst $38
    ld bc, $40ff
    cp a
    ld b, b
    cp a
    ld b, e
    cp a
    jp nz, $c03f

    ccf
    ret z

    ccf
    ret nz

    ccf
    ld b, c
    cp a
    add e
    ld a, a
    pop bc
    ccf
    add b
    ld a, a
    ld a, [c]
    rrca
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    nop
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ld b, e
    cp a
    ld b, b
    cp a
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
    rst $38
    db $fc
    db $fc
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
    rst $20
    rst $38
    pop af
    rst $38
    pop de
    rst $38
    pop de
    rst $38
    and c
    rst $38
    pop af
    rst $38
    rst $30
    rst $38
    ccf
    rst $38
    ei
    rst $38
    ld a, e
    rst $38
    or c
    ld a, a
    ret nc

    cpl
    cp a
    ld b, a
    sbc a
    ld h, a
    inc bc
    adc a
    sub l
    rst $08
    add a
    rst $28
    adc [hl]
    rst $38
    rst $08
    rst $38
    adc a
    rst $28
    rrca
    sbc a
    ld [$7f9f], sp
    add b
    ld a, a
    add b
    ld a, a
    add b
    rra
    ldh [$1f], a
    ldh [$1f], a

jr_077_70cb:
    ldh [rNR34], a
    pop hl
    ld c, $f1
    inc c
    di
    nop
    rst $38
    adc b
    rst $30
    ld [$00f7], sp
    rst $38
    ld b, c
    cp $05
    ld a, [$fc03]
    ld a, [bc]
    push af
    jr jr_077_70cb

    add hl, bc
    rst $30
    ld de, $13ef
    rst $28
    inc bc
    rst $38
    ld [hl+], a
    rst $18
    ld [hl], h
    adc a
    db $fc
    rlca
    db $f4
    rrca
    db $f4
    rrca
    ldh [$1f], a
    ret z

    ccf
    adc b

Call_077_70fb:
    ld a, a
    jr @+$01

    jr @+$01

    db $fc
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    ld h, d
    sbc a
    pop hl
    rra
    add c
    ld a, a
    add b
    ld a, a
    ret z

    ccf
    and b
    ld e, a
    ld [$18ff], sp
    rst $38
    ld de, $10fe
    rst $38
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ldh [$1f], a
    ret nz

    ccf
    inc b
    ei
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ld b, $ff
    ld b, $ff
    and h
    rst $38
    ldh [rIE], a
    ld c, b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nc

    rst $28
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
    add hl, bc
    rst $30
    ld bc, $09ff
    rst $30
    ld bc, $13ff
    rst $28
    ld [de], a
    rst $28
    ld d, $ef
    dec b
    rst $38
    ld [$1aff], sp
    rst $38
    inc a
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
    rst $28
    rst $38
    add a
    rst $38
    adc a
    rst $38
    sbc [hl]
    rst $38
    jp nz, $a3ff

    rst $38
    daa
    rst $38
    inc c
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ret nz

    rst $38
    ld [$ffff], a
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
    ldh [rIE], a
    ldh a, [rIE]
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    ld a, h
    rst $38
    ld c, $ff
    sub b
    rst $28
    db $e4
    rst $38
    rst $18
    rst $38
    adc [hl]
    rst $38
    inc e
    rst $38
    sbc h
    rst $38
    call c, Call_000_3cff
    rst $38
    cp l
    rst $38
    ccf
    rst $38
    add $39
    jp nc, $d42d

    dec hl
    ret


    scf
    add e
    ld a, a
    rst $20
    rra
    ld c, a
    cp a
    rla
    rst $38
    rrca
    rst $38
    rra
    rst $38
    dec c
    rst $38
    rra
    rst $38
    sbc a
    ld a, a
    cp $7f
    cp $7f
    ld [hl], a
    rst $38
    ld a, a
    rst $38
    ld sp, hl
    rst $38
    pop hl
    rst $38
    pop bc
    rst $38
    ldh [rIE], a
    ld c, b
    rst $30
    db $10
    rst $28
    ld bc, $04fe
    ei
    add hl, bc
    or $93
    ld l, h
    ld [hl], e
    adc h
    ld [hl], a
    adc b
    rla
    add sp, $0f
    ldh a, [$cf]
    jr nc, jr_077_7218

    add sp, $01
    cp $fe
    rst $38
    rst $38
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    jr nc, @-$2f

    inc sp
    call z, $d827
    cpl
    ret nc

    ld a, a
    add b
    db $fd
    ld [bc], a

jr_077_7218:
    rst $38
    nop
    rst $38
    nop
    ld c, a
    or b
    nop
    rst $38
    dec b
    ld a, [$ec13]
    ld c, $f1
    nop
    rst $38
    ld [bc], a
    db $fd
    add hl, bc
    rst $30
    dec c
    di
    ld [hl], e
    adc a
    inc bc

jr_077_7231:
    rst $38
    ld a, [bc]
    rst $30
    ld a, [de]
    rst $20
    ld b, $ff
    inc b
    rst $38
    ld c, $ff
    ld e, $ff
    ld a, [de]
    rst $38
    ld [hl-], a
    rst $38
    jr nc, @+$01

    ld l, h
    di
    ld l, h
    di
    ld e, h
    db $e3
    call c, $dce3

jr_077_724d:
    db $e3
    pop bc
    rst $38
    db $e3
    rst $38
    di
    rst $38
    add b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, jr_077_7231

    nop
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    ld b, $ff
    nop
    rst $38
    jr nz, jr_077_724d

    ld [$80ff], sp
    rst $38
    ret nz

    rst $38
    ret c

    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    nop
    rst $38
    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    db $f4
    rst $38
    cp h
    rst $38
    inc a
    rst $38
    ld hl, $20ff
    rst $38
    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, $ff
    rlca
    rst $38
    ld bc, $00ff
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    inc l
    rst $18
    add sp, -$61
    jr z, @-$1f

    inc c
    rst $38
    ld c, $fd
    ld c, $fd
    ld l, $fd
    xor $fd
    db $fc
    rst $38
    ld [hl], d
    db $fd
    ld hl, sp-$01
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    add sp, -$01
    ld hl, sp-$01
    pop af
    cp $e0
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld a, b
    rst $38
    ld d, b
    rst $38
    db $10
    rst $38
    call nz, $40fb
    rst $38
    xor l
    cp $cd
    cp $ed
    cp $3c
    rst $38
    jr @+$01

    nop
    rst $38
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    rst $18
    jr nz, @+$01

    nop
    rst $38

Jump_077_72ff:
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [$e1], a
    cp $7c
    rst $38
    rlca
    rst $38
    ld b, c
    cp a
    ldh [$1f], a
    cp $01
    rst $38
    nop
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop

jr_077_731c:
    ret nz

    ccf
    ld e, l
    db $e3
    and l
    ld a, e
    ld c, a
    ldh a, [$4e]
    pop af
    rst $08
    ldh a, [$bf]
    ret nz

    cp a
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    db $fc
    inc bc
    ei
    inc b
    pop af
    ld c, $ef
    jr jr_077_731c

    inc e
    ld [hl], b
    adc a
    pop hl
    rra
    pop hl
    rra
    nop
    rst $38
    adc [hl]
    ld a, a
    rst $08
    ccf
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld h, b
    rst $38
    ldh a, [rIE]
    ret nc

    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0bff
    rst $38
    ld [bc], a
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr c, @+$01

    ld a, b
    rst $38
    ld a, b
    rst $38
    ld a, $ff
    ccf
    rst $38
    dec c
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld [$ffff], sp
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
    nop
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
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp $ff
    db $fc
    rst $38
    inc e
    rst $38
    jr c, @+$01

    ld [hl], b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    jr nc, @+$01

    ld l, h
    sbc a
    add hl, sp
    rst $00
    sbc h
    ld h, e
    ld a, [c]
    dec c
    cp $01
    rst $38
    nop
    cp $01
    rst $38
    nop
    cp $ff
    push af
    rst $38
    add sp, -$09
    ld h, b
    rst $38
    ld b, h
    ei
    ld c, [hl]
    pop af
    inc c
    di
    inc e
    db $e3
    nop
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    inc b
    ei
    ld b, $f9
    adc [hl]
    pop af
    inc c
    di
    inc c
    di
    inc c
    di
    dec e
    ld [c], a

jr_077_73e8:
    rst $18
    jr nz, jr_077_73e8

    ld [bc], a
    db $fd
    ld [bc], a
    ld a, a
    add b
    ccf
    ret nz

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
    rst $38
    nop
    db $ec
    inc de
    add e
    ld a, a
    rlca
    rst $38
    rst $00
    rst $38
    adc e
    rst $30
    inc bc
    rst $38
    inc bc
    rst $38
    inc h
    rst $18
    rra
    rst $38
    ld a, a
    rst $38
    cp a
    ld a, a
    sbc a
    ld a, a
    ld [$10ff], sp
    rst $28
    nop
    rst $38
    ldh [$1f], a
    ret nz

    ccf
    sub b
    ld l, a
    and b
    ld e, a
    ldh a, [rIF]
    ld a, b
    add a
    cp $01
    xor a
    ld d, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    db $fc
    inc bc
    ld a, b
    add a
    nop
    rst $38
    set 7, a
    ld bc, $eaff
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
    rst $38
    ld c, a
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    ld b, $ff
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld b, c
    rst $38
    nop
    rst $38
    jr nz, @+$01

    jr @+$01

    and a
    rst $38
    ldh [rIE], a
    db $fd
    rst $38
    rst $38
    rst $38
    cp $ff
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
    rst $08
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
    add e
    rst $38
    add b
    rst $38
    jr nz, @+$01

    rra
    rst $38
    rla
    rst $38
    inc e
    rst $38
    jr nc, @+$01

    ld h, b
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    jr c, @+$01

    rra
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    ld a, l
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
    jr jr_077_74f3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_077_7503

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_077_7513

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_077_7523

    ld [hl-], a

jr_077_74f3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_077_7533

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_077_7503:
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

jr_077_7513:
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

jr_077_7523:
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

jr_077_7533:
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
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_077_75f3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_077_7603

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_077_7613

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_077_7623

    ld [hl-], a

jr_077_75f3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_077_7633

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld bc, $0101

jr_077_7603:
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

jr_077_7613:
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

jr_077_7623:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_077_7633:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
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
    dec b
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
    dec b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    dec b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0505
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    dec b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0505
    dec b
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
    inc b
    inc b
    inc b
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
    inc b
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
    nop
    nop
    dec b
    dec b
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
    nop
    nop
    nop
    nop
    dec b
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
    nop
    ld bc, $0000
    nop
    nop
    nop
    inc b
    inc b
    ld [$0f08], sp
    rrca
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    ld [$0808], sp
    ld [$080d], sp
    add hl, bc
    rrca
    rrca
    add hl, bc
    ld [$0808], sp
    ld [$0908], sp
    ld [$0808], sp
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0cf3], sp
    ldh a, [rIF]
    ldh a, [rIF]
    add sp, $07
    add sp, $07
    ldh [rTAC], a
    db $e4
    inc bc
    db $e4
    inc bc
    db $e4
    inc bc
    or $01
    or $01
    ld a, [$fa01]
    ld bc, $00fb
    rst $38
    nop
    cp a
    nop
    cp e
    inc b
    rst $38
    nop
    rst $18
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
    rst $30
    nop

jr_077_7772:
    rst $30
    nop
    ld a, e
    add b
    ld a, e
    add b
    ld a, c
    add b
    add hl, sp
    ret nz

    dec a
    ret nz

jr_077_777e:
    dec e
    ldh [rNR32], a
    ldh [$9c], a
    ld h, b

jr_077_7784:
    adc [hl]
    ld [hl], b
    rst $08
    jr nc, @-$2f

    jr nc, jr_077_7772

    jr jr_077_7784

    jr jr_077_777e

    jr jr_077_779d

    nop
    ld [$0804], sp
    inc b
    ld b, $00
    inc b
    ld [bc], a
    rlca
    nop
    ld [bc], a

jr_077_779d:
    ld bc, $0083
    inc bc
    nop
    ld bc, $0100
    nop
    ld b, c
    nop
    ld h, b
    nop
    ld h, b
    nop
    ret nz

    nop
    or b
    nop
    add sp, $00
    ldh [rP1], a
    db $e4
    nop
    db $f4
    nop
    jr nc, jr_077_77ba

jr_077_77ba:
    ld a, [hl-]
    nop
    dec sp
    nop
    dec de
    nop
    ld bc, $8100
    nop
    ld [de], a
    nop
    ld [de], a
    nop
    ld de, $2000
    nop
    ld c, b
    nop
    ld b, b
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    ld sp, hl
    nop
    ld sp, hl
    nop
    cp h
    ld b, b
    cp h
    ld b, b
    ld e, h
    jr nz, jr_077_782f

    jr nc, jr_077_7811

    db $10
    daa
    jr jr_077_780e

    jr @+$19

    ld [$0c13], sp
    dec bc
    inc b
    dec bc
    ld b, $0d
    ld [bc], a
    inc b
    inc bc
    ld b, $01
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    ld bc, $0800
    nop
    ld [$8800], sp
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop

jr_077_780e:
    ldh [rP1], a
    inc h

jr_077_7811:
    nop
    ld [hl], h
    nop
    jr nc, jr_077_7816

jr_077_7816:
    ld [hl-], a
    nop
    add hl, de
    nop
    ld sp, $0d00
    nop
    dec c
    nop
    inc b
    nop
    ld b, $00
    adc l
    nop
    dec l
    nop
    dec l
    nop
    dec a
    nop
    ld a, [hl+]
    nop
    ccf

jr_077_782f:
    nop
    rra
    nop
    rrca
    nop
    adc a
    nop
    adc l
    nop
    add a
    nop
    rst $00
    nop
    ld b, a
    add b
    db $e3
    add b
    pop bc
    jr nz, jr_077_78a4

    db $10
    ld h, b
    db $10
    ldh [rNR10], a
    ld hl, sp+$00
    or b
    ld [$0870], sp
    ldh a, [$08]
    db $fd
    nop
    ld a, l
    inc b
    ld l, b
    inc b
    xor $00
    cp $00
    db $fc
    ld [bc], a
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    ld a, [hl]
    ld bc, $017f
    ld a, a
    ld bc, $013e
    ccf
    nop
    ccf
    nop
    rra
    nop
    ld e, $00
    ret nz

    rra
    pop af
    ld c, $b1
    ld c, [hl]
    pop af
    ld c, $d4
    dec hl
    ret c

    daa
    ld hl, sp+$07
    add sp, $17
    add sp, $17
    add sp, $17
    db $fd
    ld [bc], a
    ld l, [hl]
    ld de, $0976
    db $76
    add hl, bc
    scf
    ld [$00bf], sp
    xor a
    nop
    rst $28
    nop
    rst $18
    nop
    rst $18
    nop
    ld a, a
    nop
    ld l, a
    nop
    ld l, a
    nop
    ei
    nop
    ld a, a
    add b
    ld [hl], l
    add b

jr_077_78a4:
    rst $10
    add b
    cp e
    ret nz

    rst $38
    ret nz

    ld l, a
    ret nz

    ld e, l
    ldh [$bd], a
    ld h, b
    ld d, b
    jr nz, jr_077_7903

    jr nz, jr_077_7925

    db $10
    jr z, jr_077_78c8

    jr z, jr_077_78ca

    inc d
    ld [$0c10], sp
    ld a, $00
    adc [hl]
    inc b
    adc d
    inc b
    add l
    ld [bc], a
    push hl
    ld [bc], a

jr_077_78c8:
    dec h
    ld [bc], a

jr_077_78ca:
    ld e, [hl]
    ld bc, $011e
    ld e, $01
    rrca
    nop
    rrca
    nop
    rlca
    nop
    scf
    nop
    cp a
    nop
    rst $38
    nop
    cp $00
    rst $38
    nop
    ld a, a
    nop
    ld a, l
    nop
    ld a, l
    nop
    ld a, h
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    add b
    cp a
    ret nz

    ccf
    ret nz

    rst $18
    ld h, b
    cp a
    ld h, b
    rst $08

jr_077_7903:
    jr nc, jr_077_7964

    jr nc, jr_077_7946

    db $10
    daa
    jr jr_077_7936

    inc e
    rla
    inc c
    dec e
    ld b, $0d
    ld b, $0a
    rlca
    ld h, [hl]
    inc bc
    ld b, l
    inc bc
    inc bc
    ld bc, $0196
    dec c
    nop
    dec c
    nop
    adc l
    nop
    db $ec
    nop
    db $ec

jr_077_7925:
    nop
    db $ec
    nop
    ld a, h
    nop
    db $fc
    nop
    ld a, [hl]
    nop
    ld [hl], h
    nop
    db $fc
    nop
    cp $00
    rst $38
    nop

jr_077_7936:
    ld hl, sp+$00
    rst $38
    nop
    xor $00
    cp $00
    db $fc
    nop
    dec sp
    inc c
    rlca
    inc c
    rlca
    inc c

jr_077_7946:
    add hl, bc
    ld b, $09
    ld b, $17
    ld [bc], a
    ld d, [hl]
    inc bc
    ld b, a
    ld [bc], a
    db $e4
    inc bc
    ld l, h
    inc bc
    dec hl
    ld bc, $012b
    ld hl, $1001
    ld bc, $0021
    ld de, $0800
    nop
    ld d, $00

jr_077_7964:
    sub [hl]
    nop
    xor a
    nop
    rla
    add b
    ld b, l
    add b
    pop bc
    nop
    add l
    ld b, b
    ret nz

    ld b, b
    jp nz, Jump_077_6040

    ld b, b
    ld [hl+], a
    ld b, b
    ld h, c
    jr nz, @+$75

    jr nz, jr_077_798e

    jr nz, jr_077_7998

    jr nz, @+$3f

    db $10
    rra
    db $10
    ld b, a
    jr jr_077_79c6

    ld [$087f], sp
    db $d3
    inc c
    ei
    inc b

jr_077_798e:
    ei
    inc c
    di
    inc c
    rst $38
    nop
    ld a, a
    ld [bc], a
    ld a, l
    ld [bc], a

jr_077_7998:
    ld a, a
    nop
    ld a, $01
    ccf

jr_077_799d:
    ld bc, $003f
    rra
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
    dec b
    ld [bc], a
    nop
    rlca
    inc b
    inc bc
    ld bc, $0302
    nop
    ld [bc], a
    ld bc, $0003
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    nop
    nop

jr_077_79c6:
    nop
    nop
    ld b, b
    nop
    ret nz

    nop
    and b
    nop
    ldh [rP1], a
    ld d, b
    add b
    ld b, b
    add b
    ld l, b
    add b
    ldh [rP1], a
    ldh [rP1], a
    or b

jr_077_79db:
    ld b, b
    or b
    ld b, b
    ret nc

    jr nz, jr_077_7a39

    jr nz, jr_077_79db

    db $10
    cp b
    db $10
    and b
    jr jr_077_799d

    ld [$0854], sp
    jp nc, $da0c

    inc b
    add sp, $06
    ld [hl], a
    ld [bc], a
    db $fc
    inc bc
    db $fc
    inc bc
    ei
    ld bc, $01fe
    rst $38
    nop
    cp $00
    cp $00
    cp $00
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
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $28
    add b
    cp a
    ret nz

    ld [hl], a
    ret nz

    ld d, e
    ldh [$bb], a
    ld h, b
    add sp, $30

jr_077_7a26:
    ld d, h
    jr c, jr_077_7a86

    jr c, jr_077_7a95

    inc e
    ld e, $0c
    dec d
    ld c, $0f
    ld b, $0e
    rlca
    ld c, a
    inc bc
    dec b
    inc bc
    rlca

jr_077_7a39:
    ld bc, $0183
    ld [bc], a
    ld bc, $0003
    cp a
    nop
    cp a
    nop
    cp a
    nop
    rst $38
    nop
    ld a, $01
    rst $38
    nop
    xor a
    nop
    and [hl]
    ld bc, $00df
    rst $28
    nop
    xor a
    nop
    rst $10
    nop
    cp a
    nop
    ei
    nop
    ld a, e
    add b
    ei
    add b
    ei
    add b
    rst $38
    add b
    db $fd
    nop
    cp l
    ld b, b
    cp h
    ld b, b
    cp $40
    cp a
    ld b, b
    rst $08
    jr nz, @+$7d

    jr nz, jr_077_7a86

    jr nz, jr_077_7a26

    nop
    push hl
    db $10
    ld [hl], e
    db $10
    ld e, e
    db $10
    ld [hl], e
    ld [$0873], sp
    cp a
    ld [$08b7], sp
    sbc e
    inc b

jr_077_7a86:
    ei
    inc b
    rst $38
    inc b
    rst $18
    nop
    ld l, a
    nop
    ld l, l
    ld [bc], a
    ld l, h
    ld [bc], a
    db $ec
    ld [bc], a
    rst $30

jr_077_7a95:
    nop
    rst $38
    nop
    cp $01
    db $fd
    ld bc, $00fd
    rst $18
    nop
    ld a, c
    add b
    db $fd
    add b
    ld h, a
    adc b
    ld l, a
    add b
    cp a
    ld b, b
    ei
    ld b, h
    ei
    ld b, h
    sbc e
    ld h, h
    cp e
    ld h, h
    ld a, a
    and b
    dec c
    ld a, [c]
    jr nc, @+$01

    rrca
    ldh a, [rVBK]
    nop
    sub [hl]
    nop
    ccf
    nop
    adc c
    ld a, a
    ld a, [hl+]
    db $fd
    call nz, $857f
    ld a, [hl]
    ld b, [hl]
    ld a, a
    ld a, $7f
    ld a, e
    ccf
    ld a, d
    ccf
    scf
    ccf
    dec sp
    rra
    dec e
    rra
    dec bc
    rra
    add hl, de
    rrca
    add hl, de
    rrca
    inc b
    rrca
    inc c
    rlca
    ld [$0407], sp
    rlca
    nop
    rlca
    dec b
    inc bc
    dec b
    inc bc
    ld bc, $0303
    ld bc, HeaderLogo
    dec b
    nop
    ld bc, $0100
    nop
    inc hl
    nop
    adc e
    nop
    dec bc
    add b
    ret


    add b
    ld d, h
    add b
    call c, Call_077_7e40
    ld b, b
    ld l, $40
    ld c, [hl]
    jr nz, jr_077_7b27

    jr nz, jr_077_7b40

    nop
    xor a
    db $10
    sbc h
    db $10
    sbc h
    nop
    sbc a
    ld [$0887], sp
    rlc h
    rst $00
    inc b
    pop bc
    ld b, $e7
    ld [bc], a
    db $e3
    ld [bc], a
    db $e3
    ld bc, $01f1
    ldh a, [rSB]
    pop af

jr_077_7b27:
    nop
    ld a, c
    nop
    db $fc
    nop
    cp b
    nop
    and [hl]
    nop
    ld c, [hl]
    nop
    ld c, [hl]
    nop
    add a
    nop
    dec sp
    add b
    rst $18
    add b
    rst $18
    add b
    cp a
    ret nz

    rst $38
    ret nz

jr_077_7b40:
    rst $38
    ld bc, $01fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sbc $00
    sbc [hl]
    ld b, b

jr_077_7b4e:
    ld e, d
    ret nz

    ld a, [hl]
    add b
    ld l, h
    add b
    cp $00
    xor $00
    db $fc
    ld b, b

jr_077_7b5a:
    jp nc, $b240

    ld b, b
    add d
    ld h, b
    add sp, $20
    jp hl


    jr nz, jr_077_7b4e

    jr nz, @-$04

    jr nz, @-$01

    jr nz, jr_077_7b5a

    jr nc, jr_077_7b5a

    db $10
    cpl
    db $10
    cp a
    db $10
    sbc a
    db $10
    rrca
    db $10
    rst $08
    db $10
    sbc a
    ld [$089f], sp
    ei
    inc c
    rst $38
    ld [$0cf3], sp
    rst $28
    inc b
    rst $28
    inc b
    rst $18
    inc b
    db $fd
    ld b, $69
    ld b, $7d
    ld [bc], a
    ccf
    ld [bc], a
    sbc a
    ld [bc], a
    cp a
    ld [bc], a
    cp h
    inc bc
    cp h
    inc bc
    reti


    rlca
    db $db
    dec b
    rst $18
    ld bc, $01ff
    ld a, [hl]
    add c
    ld a, a
    add b
    cp l
    ret nz

    rst $38
    ld b, b
    cp $40
    rst $38
    ld b, b
    cp a
    ld b, b
    cp [hl]
    ld b, b
    rst $18
    jr nz, @+$01

    jr nz, @-$01

    ld [hl+], a
    rla
    add sp, -$01
    nop
    db $ed
    nop
    or a
    nop
    pop hl
    rra
    inc c
    ei
    ld c, a
    cp b
    cpl
    ret c

    adc e
    db $fc
    dec d
    xor $05
    cp $04
    rst $38
    ld b, h

jr_077_7bcf:
    rst $38
    inc bc
    cp $1a
    rst $30
    ld [de], a
    rst $38
    add d
    rst $38
    adc b
    rst $38
    adc e
    rst $38
    add c
    rst $38
    push bc
    rst $38
    rst $00
    rst $38
    ld h, l
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    or b
    rst $38
    rst $30
    rst $38
    ldh [rIE], a
    jr nz, jr_077_7bcf

    ret nz

    ccf
    inc b
    ei
    ld a, b
    add a
    ld a, [$e805]
    rla
    rst $28
    db $10
    ldh [$1f], a
    add b
    ld a, a
    ret nz

    ccf
    jp nc, $e02d

    rra
    ldh [$1f], a
    ld h, b
    rra
    ld h, b
    rra
    nop
    rra
    ret nc

    rrca
    ld [hl], b
    rrca
    inc a
    inc bc

jr_077_7c14:
    xor c
    ld b, $b8
    rlca
    inc e
    inc bc
    sub h
    inc bc
    ld e, h
    inc bc
    ld e, a
    nop
    cp [hl]
    ld bc, $815e
    ld e, [hl]
    add c
    rst $08
    add b
    rst $20
    add b
    daa
    ret nz

    rst $38
    ld b, b
    rst $18

Call_077_7c2f:
    ld h, b
    ccf
    ld h, b
    ld a, l
    jr nz, @-$11

    jr nc, jr_077_7c14

    jr nc, @-$01

    db $10
    rst $38
    db $10
    rst $28

jr_077_7c3d:
    jr jr_077_7c3d

    ld [$08f2], sp
    push af
    ld [$08f5], sp
    ld [hl], a
    adc b
    ld [hl], l
    adc b
    ld [hl], a
    adc b
    ld sp, hl
    inc b
    di
    inc c
    ei
    inc b
    ld a, e
    inc b
    ld a, e
    inc b
    ld a, e
    inc b
    ld a, a
    nop
    ld a, h
    ld [bc], a
    dec a
    ld [bc], a
    dec a
    ld [bc], a
    dec a
    ld [bc], a
    dec e
    ld [hl+], a
    ccf
    nop
    dec a
    ld [bc], a
    cp a
    nop
    rst $38
    nop
    cp a
    nop
    xor $11
    rst $10
    db $10
    cp $11
    rst $28
    db $10
    rst $28
    db $10
    rst $20
    jr @+$01

    ld [$08ff], sp
    rst $38
    ld [$08f7], sp
    rst $30
    ld [$04fb], sp
    rst $38
    inc b
    rst $38
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
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    rst $38
    add c
    cp $81
    rst $38
    add b
    cp a
    ret nz

    cp a
    ld b, b
    cp a
    ld b, b
    rst $38
    ld b, b
    rst $18
    ld h, b
    sbc a
    ld h, b
    inc bc
    db $fc
    ld [c], a
    nop
    db $fc
    nop
    inc b
    nop
    ei
    inc b
    sub e
    ld a, h
    ldh a, [$1f]
    ld [hl], b
    sbc a
    ld b, d
    cp l
    reti


    xor [hl]
    ld a, c
    adc [hl]
    ld a, h
    adc e
    inc a
    swap c
    adc $b2
    ld c, l
    ld [hl], h
    rst $08
    ld d, $ed
    inc d
    rst $28
    ld e, [hl]
    and a
    ld [bc], a
    rst $38
    ld [hl+], a
    rst $18
    add d
    rst $38
    ld a, [bc]
    rst $30
    and e
    rst $38
    add e
    rst $38
    db $d3
    rst $38
    rst $30
    rst $38
    ldh [rIE], a
    nop
    rst $38
    ld h, b
    sbc a
    nop
    rst $38
    add c
    ld a, [hl]
    dec de
    db $e4
    ld [hl], a
    adc b
    xor e
    ld d, h
    and c
    ld e, [hl]
    rrca
    ldh a, [$6f]
    sub b
    adc a
    ld [hl], b
    rlca
    ld hl, sp+$0f
    ldh a, [$0c]
    di
    inc de
    db $ec
    ccf
    ret nz

    ld a, a
    add b
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    inc bc
    db $fc
    rrca
    ldh a, [$3f]
    ret nz

    rst $38
    nop
    ld a, a
    add b
    sbc a
    ld h, b
    rst $10
    jr z, @+$31

    ret nc

    cpl
    ret nc

    ld e, a
    and b
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
    ccf
    nop
    dec l
    db $10
    cpl
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $10
    ld [$08d7], sp
    rst $30
    ld [$08b7], sp
    rrc b
    di
    ld [$08fb], sp
    di
    ld [$00fd], sp
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
    add h
    db $fd
    inc b
    rst $38
    inc b
    ld a, a
    add h
    ld a, a
    add h
    ld sp, hl
    ld b, $7d
    add d
    ld e, a
    and d
    ld a, a
    add d
    ld a, a
    add d
    ld a, a
    add d
    db $fd
    ld [bc], a
    ld l, h
    sub e
    xor h
    ld d, e
    xor a
    ld d, c
    sbc a
    ld h, c
    rst $18
    ld hl, $6997
    adc a

jr_077_7d93:
    ld [hl], c
    pop bc
    ccf
    cp $20
    db $fc
    jr nz, @-$02

    jr nz, @-$01

jr_077_7d9d:
    ld [hl+], a
    sbc h
    ld h, e
    cp d
    ld h, a
    sub l
    ld l, d
    db $f4
    dec hl
    call nc, $f02b
    rrca
    ld [hl], b
    adc a
    ld h, b
    sbc a
    ld [hl], b
    sbc a
    jr z, @-$1f

    jr z, jr_077_7d93

    ret z

    rra
    dec de
    dec e
    ld a, [bc]
    dec e
    db $10
    rra
    jr nz, jr_077_7d9d

    ld hl, $ccdf
    ccf
    sub b
    ld l, a
    or [hl]
    ld l, a
    push af
    ld l, [hl]
    inc [hl]
    rst $28
    inc h
    rst $38
    inc b
    rst $38
    ld b, [hl]
    cp a
    inc [hl]
    rst $18
    inc b
    rst $38
    inc d
    rst $38
    dec b
    cp $0d
    cp $84
    rst $38
    ld a, e
    cp $7c
    rst $38
    db $fc
    rst $38
    cp $ff
    cp l
    cp $fd
    cp $c1
    cp $99
    ld h, [hl]
    ld hl, $87de
    ld hl, sp-$80
    rst $38
    nop
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
    ei
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
    db $fd
    ld [bc], a
    rst $38

jr_077_7e0f:
    nop
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc b
    ei
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
    db $e3
    rst $38
    di
    rst $38
    and a
    rst $38
    add a
    rst $38
    add a
    rst $38
    and e
    rst $38
    or e
    rst $38
    add e
    rst $38
    cp l
    rst $38
    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38

Call_077_7e40:
    pop bc
    nop
    pop bc
    nop
    ret nz

    ld bc, $4180
    add c
    ld b, b
    add c
    ld b, b
    add c
    ld b, b
    add c
    ld b, b
    and c
    ld b, b

jr_077_7e52:
    db $e3
    nop
    rst $38
    ld a, a
    ret nz

    ld a, a
    rst $08
    ld [hl], b
    adc $71
    adc $71
    rst $08
    ld [hl], b
    rst $38
    jr nc, jr_077_7e52

    jr nc, jr_077_7e0f

    dec [hl]
    and [hl]
    add hl, sp
    inc hl
    inc a
    ld h, d
    dec a
    and [hl]
    add hl, sp
    and c
    ld a, $e6
    add hl, sp
    or b
    ccf
    jp nc, $793d

    ld e, $f3
    inc e
    ldh a, [$1f]
    ld hl, sp+$1f
    ldh a, [$1f]
    ldh a, [$1f]

jr_077_7e82:
    ldh a, [$1f]
    ld hl, sp+$0f
    db $ec
    rra
    db $fc
    rrca
    db $fc
    rrca
    call c, Call_077_7c2f
    adc a
    add sp, $1f
    add sp, $1c
    jr jr_077_7e82

    ld e, $0c
    inc e
    rlca
    ld a, h
    rlca
    inc b
    rst $38
    and [hl]
    rst $38
    add a

jr_077_7ea1:
    cp $e6
    rst $38
    xor [hl]
    rst $38
    xor $ff
    ld d, [hl]
    rst $38
    ld h, d
    rst $38
    ld b, d
    rst $38
    ld b, e
    rst $38
    ld [hl], e
    rst $38
    ld h, e
    rst $38
    ld c, e
    rst $38
    ld h, e
    rst $38
    ld [hl], e
    rst $38
    ld l, e
    rst $38
    rst $20
    ld a, a
    scf
    rst $38
    cpl
    rst $38
    db $fd
    rst $38
    ld c, l
    or e
    ld h, c
    sbc a
    nop
    rst $38
    ld [bc], a
    db $fd
    sub b
    ld l, a
    ret nc

    cpl
    jr nc, jr_077_7ea1

    db $10
    rst $28
    ld de, $13ee
    db $ec
    db $d3
    inc l
    db $d3
    inc l
    ld d, e
    xor h
    ld a, e
    add h
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    ld a, e
    add h
    db $fd
    ld [bc], a
    ei
    inc b
    ei
    inc b
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01fe
    cp $de
    rst $38
    jp c, $ceff

    rst $38

jr_077_7f16:
    sbc $ff
    rst $30
    rst $38
    ret z

    rst $38
    ret nz

    rst $38
    sub b
    rst $38
    add b
    rst $38
    xor b
    rst $38
    add h
    rst $38
    add b
    rst $38
    add b
    rst $38
    adc b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    adc b
    rst $38
    and b
    rst $38
    ld b, c
    rst $38
    ld bc, $00ff
    rst $38

jr_077_7f3a:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add [hl]
    nop
    add [hl]
    nop
    ld b, $00
    inc b
    nop
    inc b
    nop
    add h
    nop
    ld b, $00
    add [hl]
    nop
    ld b, $00
    rst $20
    nop
    rst $38
    rst $38
    ld bc, $fffe
    nop
    db $10
    rst $28
    rst $38
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
    ld a, a
    add b
    ld l, $d1
    rst $00
    jr c, jr_077_7f16

    ld e, b
    rst $20
    jr @+$01

    nop
    nop
    rst $38
    rst $18
    jr nz, @-$1f

    jr nz, jr_077_7f3a

    ld b, b
    rra
    ldh [$1f], a
    ldh [$15], a
    ld [$fd02], a
    rlca
    ld hl, sp+$53
    xor h
    ld bc, $03fe
    db $fc
    dec bc
    db $f4
    ld bc, $f4fe
    rst $38
    ld a, [hl]
    ld a, a
    ld a, a
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
    ld b, b
    cp a
    ret nz

    ccf
    ld a, [bc]
    push af
    ld a, [bc]
    push af
    inc l
    db $d3
    ld a, [de]
    push af
    inc d
    ei
    jr nz, @+$01

    sbc c
    cp $30
    rst $38
    and b
    rst $38
    ld d, e
    rst $38
    ei
    rst $38
    ld a, [$d9ff]
    rst $38
    ld a, a
    rst $38
    reti


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
    ld b, $f9
    inc bc
    db $fc
    rra
    ldh [$1f], a
    ldh [$af], a
    ld d, b
    rst $38
    nop
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    ld [bc], a
    db $fd
    ld [de], a
    db $fd
    ld [bc], a
    db $fd
    inc bc
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$78
    rst $38
    ret c

    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    cp b
    rst $38
    xor b

Call_077_7ffb:
    rst $38
    inc a
    rst $38
    cp h
    rst $38
