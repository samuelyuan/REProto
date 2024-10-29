SECTION "ROM Bank $0c2", ROMX[$4000], BANK[$c2]

    pop hl
    ret nz

    ret nz

    ret nz

    add b
    ret nz

    sub c
    add b
    reti


    add b
    cp a
    ret nz

    xor [hl]
    ld [hl], c
    rst $28
    dec e
    adc e
    rlca
    ld h, l
    inc bc
    ld bc, $bf03
    inc bc
    cp e
    rlca
    rst $38
    rlca
    or a
    ld c, a
    sbc a
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, b
    rst $38
    xor e
    rst $38
    rst $18
    rst $38
    sbc h
    ld a, a
    ld c, l
    ccf
    ld a, d
    rlca
    add $09
    ld de, $8808
    db $10
    and b
    ret nc

    ld hl, sp-$10
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    cp $7f
    cp $bf
    dec e
    db $ed
    push bc
    cp $f1
    cp $ff
    cp $ff
    cp h
    ld a, [hl]
    ld a, [hl]
    adc h
    ld hl, sp-$14
    db $fc
    ld hl, sp-$04
    ld hl, sp-$2a
    inc a
    or d
    pop bc
    pop af
    ldh [$e0], a
    ldh [$e0], a
    nop
    and b
    ret nz

    ret c

    ldh [rOCPS], a
    sbc h
    adc d
    rlca
    add e
    ld bc, $0101
    inc bc
    ld bc, $0301
    ld e, a
    add e
    ret c

    ld h, a
    ccf
    rra
    rla
    rrca
    rla
    rrca
    dec e
    ld c, $1a
    rrca
    ld b, e
    rra
    dec a
    rra
    ld a, a
    sbc a
    ld a, a
    rst $38
    ld a, a
    ccf
    ccf
    ld a, a
    rst $38
    ld a, a
    ld a, c
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    rst $28
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
    db $ed
    rst $38
    ret c

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
    cp $fe
    add hl, de
    add hl, de
    sbc l
    db $dd
    ld a, $be
    push af
    push af
    ld a, [c]
    cp $f5
    db $fd
    db $ec
    inc a
    inc a
    rlca
    rlca
    jr nz, jr_0c2_4138

    nop
    jr z, jr_0c2_4118

    ld b, d
    ret nz

    pop hl
    ret nz

    and h
    sbc c
    sbc e
    rlca
    ld bc, $0003
    inc bc
    inc b
    inc bc
    ld b, l
    add e
    sbc a
    ld h, a
    dec sp
    rrca
    inc [hl]
    dec bc
    dec a
    dec bc
    add hl, de
    ld b, $08
    rra
    ld h, b
    sbc a
    or d
    ld l, a
    dec bc
    scf
    ld c, a
    inc sp
    dec bc
    ld a, a
    or $7f
    cp a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $28
    rst $28
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    reti


    rst $38
    ld e, c
    rst $38
    ld e, a
    rst $38

jr_0c2_4118:
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    xor a
    rst $38
    adc a
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, $ff
    rst $30
    rst $38
    xor $ff
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

jr_0c2_4138:
    rst $38
    rst $38
    rst $28
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
    jr jr_0c2_4202

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0c2_41f1

jr_0c2_41f1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0c2_4202:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, $05
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $00
    ld b, $05
    ld bc, $0101
    ld bc, $0100
    ld bc, $0606
    ld bc, $0100
    inc b
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    db $fd
    ld bc, $11e9
    db $eb
    ld [de], a
    inc de
    ld [c], a
    rla
    rst $20

jr_0c2_43dc:
    add l
    ld h, l
    ld [$0cc8], sp
    add sp, $1e
    ldh a, [$9c]
    ldh a, [rNR33]
    pop hl
    sbc c
    pop hl
    dec sp
    ld [c], a
    inc sp
    ld [c], a
    rst $30
    rst $20
    add l
    push hl
    jr jr_0c2_43dc

    inc a
    add sp, $1e
    ldh a, [$9c]
    ldh a, [$bd]
    pop hl
    reti


    pop hl
    ei
    jp nz, $cef3

    rst $30
    rrca
    push hl
    rra
    add sp, $1f
    call z, $9e1b
    ld de, $13bc
    sbc l
    inc bc
    ld sp, hl
    ld bc, $03fa
    ld a, [c]
    inc bc
    rst $20
    rla
    push hl
    dec d
    add sp, $08
    db $ec
    ld [$10fe], sp
    db $fc
    db $10
    db $fd
    ld bc, $01f9
    ld a, [$f203]
    inc bc
    rst $30
    rlca
    push hl
    dec b
    ld l, b
    adc b
    inc l
    ret z

    ld a, $d0
    inc e
    ldh a, [rNR33]
    pop hl
    add hl, de
    pop hl
    ld a, [de]
    ld [bc], a
    ld [de], a
    add d
    rla
    rst $20
    dec b
    push hl
    ld [$0cc8], sp
    ret z

    ld e, $90
    inc e
    ld d, b
    dec e
    ld hl, $6119
    ld a, [de]
    add d
    ld [de], a
    add d
    rla
    ld h, a
    dec b
    and l
    ld [$0cc8], sp
    adc b
    ld e, $90
    sbc h
    db $10
    cp l
    ld b, c
    ld sp, hl
    ld bc, $c23a
    ld [hl-], a
    jp nz, $a757

    dec b
    push hl
    ld [$0cf8], sp
    ld hl, sp+$3e
    ldh a, [$3c]
    ldh a, [$3d]
    pop hl
    ld a, c
    pop hl
    ld a, [de]
    db $e3
    ld [hl], d
    db $e3
    rst $30
    rst $20
    push hl
    push hl
    add sp, -$08
    db $ec
    ld hl, sp-$02
    ldh a, [$fc]
    ldh a, [$fd]
    pop hl
    ld sp, hl
    pop hl
    ld a, [$f2e3]
    db $e3
    rst $30
    rst $20
    push hl
    push hl
    add sp, -$08
    db $ec
    ld hl, sp-$02
    ldh a, [$fc]
    ldh a, [$bd]
    pop hl
    cp c
    pop hl
    ld a, [$f2e3]
    db $e3
    rst $30
    rst $20
    push hl
    push hl
    add sp, -$08
    xor h
    ld hl, sp+$1e
    ldh a, [$bc]
    ld d, b
    db $fd
    ld bc, $e119
    ld a, [$f2e3]
    db $e3
    rst $30
    rst $20
    dec b
    ld b, l
    jr jr_0c2_44d4

    inc e
    ld e, b
    ld e, $10
    sbc h
    cpl
    db $fc
    rra
    ret c

    ccf
    cp d
    ld e, h
    ld a, [c]
    inc e
    rla
    ld hl, sp+$05
    ld a, [$1708]
    ld a, [$25ff]
    ld a, l

jr_0c2_44d4:
    rst $00
    jp hl


    rst $30
    ldh a, [$ef]
    ldh a, [$3f]
    ld h, b
    rra
    ret nz

    ld e, a
    ld h, b
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    add b
    ld a, h
    add b
    ei
    nop
    xor a
    nop
    ld a, [$ea00]
    nop
    pop bc
    nop
    ret nz

    nop
    or b
    nop
    add h
    nop
    stop
    jr nz, jr_0c2_44fc

jr_0c2_44fc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and h
    nop
    or h
    nop
    ld l, b
    nop
    jr c, jr_0c2_4512

jr_0c2_4512:
    inc d
    nop
    ld c, a
    nop
    ld l, d
    nop
    add $00
    dec d
    nop
    stop
    dec d
    nop
    ld a, l
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
    rst $38
    rst $38
    rst $38

jr_0c2_4534:
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    add hl, sp
    nop
    call Call_0c2_5d10
    add b
    ld l, e
    add h
    ret c

    inc h
    ld [de], a
    db $ec
    add hl, de
    and $18
    rst $20
    nop
    call z, Call_0c2_4e82
    inc bc
    dec bc
    add l
    add l
    ret z

    call z, $d1d1
    ret nz

    ret nz

    nop
    nop
    inc bc
    add e
    xor d
    xor e
    adc [hl]
    sbc [hl]
    jr z, jr_0c2_4534

    ld hl, sp-$02
    call Call_000_1eff
    rst $38
    dec de
    rst $38
    rst $38
    rst $38
    ld a, a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_0c2_4597:
    nop
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
    di
    rra
    jp nz, Jump_0c2_6b01

    sub h
    add hl, bc
    or $00
    rst $38
    ld bc, $62fe
    sbc l
    db $e4
    dec de
    and b
    ld e, a
    inc bc
    cp h
    cp a
    ld b, b
    rst $38
    nop
    jr c, jr_0c2_4597

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_0c2_462f

jr_0c2_462f:
    nop
    nop
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0c2_465c

    ld [hl+], a
    inc hl
    inc h
    nop
    nop
    nop
    nop
    dec h
    ld h, $27
    jr z, jr_0c2_4670

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0c2_464f

jr_0c2_464f:
    nop
    nop
    nop
    ld sp, $3332
    inc [hl]
    nop
    dec [hl]
    ld [hl], $37
    jr c, jr_0c2_4695

jr_0c2_465c:
    ld a, [hl-]
    dec sp
    nop
    nop
    nop
    nop
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
    nop
    nop

jr_0c2_4670:
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    ld h, b
    ld h, c
    ld h, d

jr_0c2_4695:
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    and a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $06
    nop
    ld b, $06
    ld bc, $0101
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld bc, $0000
    nop
    nop
    ld bc, $0501
    dec b
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0100
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
    nop
    nop
    nop
    ld bc, $0501
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0101
    dec b
    ld bc, $0501
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld bc, $0101
    ld bc, $0505
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0501
    dec b
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0501
    ld bc, $0501
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
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
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0501
    dec b
    dec b
    dec b
    dec b
    dec b
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
    ld sp, hl
    rst $00
    db $fc
    rlca
    cp h
    ld b, a
    db $fc
    rlca
    db $fc
    ld b, $fc
    rlca
    ld hl, sp-$71
    ei
    rrca
    ld hl, sp+$1f
    ld hl, sp-$41
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [$3c]
    ld b, a
    ld hl, sp-$59
    ret c

    add h
    ei
    add b
    ei
    db $10
    ei
    ld e, b
    di
    ld e, b
    di
    ret z

    di
    ret nc

    di
    ldh a, [$f3]
    ldh a, [$f3]
    ldh a, [$f3]
    ldh a, [$f3]
    ldh a, [$93]
    ldh a, [$9b]
    ldh a, [$bb]
    and b
    ld a, e
    or b
    ld e, e
    ldh a, [$3b]
    ldh [$78], a
    ldh [$f8], a
    ldh [$f8], a
    ldh [$d8], a
    ldh [$d8], a
    sbc b
    ldh [$84], a
    ldh [rTAC], a
    ldh [$87], a
    ldh [$87], a
    ld hl, sp+$27
    ret c

    rlca
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp+$07
    ld hl, sp+$1f
    ldh [$1f], a
    ldh [$bc], a
    ret nz

    and h
    ret nz

    and h
    ret nz

    and h
    ret nz

    inc b
    ldh [$64], a
    ldh [$67], a
    ldh [$64], a
    db $e3
    ld b, h

jr_0c2_48d9:
    db $e3
    ld e, a
    ldh [$7f], a
    ldh [$38], a
    rst $20
    jr nc, jr_0c2_48d9

    sub b
    ld [hl], a
    rst $38
    jr nc, jr_0c2_4963

    or b
    sbc h
    ldh a, [$d8]
    ldh a, [$3b]
    ldh a, [$3b]
    ldh a, [$3b]
    ldh a, [rNR13]
    ldh a, [rNR13]
    ld hl, sp+$0b
    ldh a, [$03]
    ld hl, sp+$03
    ld hl, sp+$0b
    ldh a, [rNR13]
    ld hl, sp-$0d
    ld hl, sp-$2d
    ld hl, sp-$0d
    db $fc
    sub e
    db $fc
    add e
    db $fc
    add l
    cp $89
    cp $d0
    cp $c0
    cp $d3
    rst $38
    jp nz, $c6ff

    rst $38
    ld e, b
    rst $38
    ret nz

    rst $38
    ld e, h
    rst $38
    ld e, a
    rst $38
    ld h, d
    sbc a
    ret nc

    rra
    adc h
    rrca
    inc c
    rrca
    adc a
    inc bc
    adc h
    inc bc
    adc h
    nop
    adc h
    nop
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld l, h
    sub e
    ld l, h
    sub e
    rra
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    adc h
    ld [hl], e
    adc h
    ld [hl], e
    inc c
    di
    ld l, h
    di
    ld l, h
    di
    ld [hl], e
    db $fc
    inc de
    db $fc
    inc de
    db $fc
    db $ec
    db $10
    db $fc
    db $10
    db $fc
    db $10
    db $ec
    db $10
    db $ec
    db $10
    ldh [rNR32], a
    ld h, e
    sbc h
    ld h, e
    sbc h
    db $fc
    rst $38
    adc h

jr_0c2_4963:
    rst $38
    adc h
    rst $38
    nop
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], e
    adc h
    ld [hl], e
    db $ec
    ld [hl], e
    db $ec
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rrca
    rst $28
    inc c
    rst $28
    inc c
    rst $28
    ld h, b
    adc a
    inc bc
    adc h
    inc bc
    adc h
    add e
    inc c
    ld h, b
    adc h
    ld h, b
    adc h
    ld [hl], e
    adc h
    ld [hl], e
    adc h
    ld [hl], e
    adc h
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld l, h
    sub e
    ldh a, [rNR10]
    ldh a, [rNR10]
    rst $38
    nop
    rrca
    nop
    rrca
    nop
    ld [hl], e
    nop
    di
    nop
    di
    nop
    sub e
    ld h, b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    rst $28
    db $10
    rst $38
    db $10
    rst $38

jr_0c2_49bb:
    db $10
    di
    inc e
    di
    inc e
    inc c
    rra
    rrca
    rra
    rrca
    rra
    inc de
    sbc a
    ld [hl], e
    rst $38
    ld h, e
    rst $38
    add a
    cp a
    jr nz, jr_0c2_4a2f

    nop
    rst $38
    jr jr_0c2_49bb

    ld h, e
    rst $38
    rst $00
    rst $38
    ld bc, $41ff
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld a, [hl]
    ldh [$7e], a
    ldh [$7e], a
    ldh [rIE], a
    add b
    ldh a, [rIE]
    pop af
    nop
    sub b
    ld h, c
    ld a, [c]
    ld bc, $01f2
    ld [de], a
    pop hl
    ld [de], a
    pop hl
    dec e
    db $e3
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    ldh a, [rIF]
    ldh a, [rIF]
    add b
    ld a, a
    inc c
    ld a, a
    inc c
    ld a, a
    ld c, $7f
    ld [bc], a
    ld a, a
    ld [bc], a
    ld a, a
    ld a, l
    ld [bc], a
    ld a, [hl]
    inc bc
    ld a, [hl]
    inc bc
    ld a, l
    inc bc
    ld a, l
    inc bc
    ld a, l
    inc bc
    ld l, h
    inc de
    ld l, h
    inc de
    sbc a
    ld a, a
    sub b
    ld a, a
    sub b
    ld a, a
    pop hl
    db $10
    adc a
    db $10
    adc a
    db $10
    adc a
    db $10
    rst $28

jr_0c2_4a2f:
    db $10
    stop
    sub b
    nop
    pop af
    inc c
    pop af
    inc c
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $1ce2
    dec e
    cp $00
    db $fc
    nop
    db $fc
    nop
    db $fc
    ld l, h
    sub b
    ld h, b
    sub b
    ld h, b
    sub b
    ld [hl], c
    add b
    sub c
    nop
    sub c
    nop
    pop af
    nop
    sub b
    ld h, c
    sub b
    ld h, c
    di
    ld bc, $01f3
    inc de
    pop hl
    ld e, $e3
    ld e, $e3
    rst $38
    nop
    add b
    nop
    add b
    nop
    rrca
    nop
    ld a, a
    nop
    ld a, a
    nop
    di
    inc c
    rrca
    ldh a, [$3f]
    pop bc
    ccf
    jp $f78f


    adc a
    rst $38
    sbc a
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    rst $38
    add a
    rst $38
    adc a
    rst $38
    sbc a
    rst $38
    db $d3
    rst $38
    ld e, c
    rst $38
    dec b
    rst $38
    ld b, a
    rst $38
    rst $20
    rst $38
    rlca
    rst $38
    add c
    rst $38
    ret nz

    rst $38
    and b
    rst $38
    add b
    rst $38
    ld [hl], c
    adc [hl]
    ld a, a
    jr nc, jr_0c2_4af3

    ccf
    ld c, [hl]
    ccf
    ld a, [c]
    rrca
    ccf
    rst $38
    add hl, de
    rlca
    ld bc, $271f
    rra
    daa
    rra
    ld h, $1f
    ld h, $1f
    sbc $3f
    rst $38
    rlca
    rst $38
    rlca
    rlca
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    ccf
    pop bc
    ccf
    pop bc
    ld e, $e1
    sbc $21
    sbc $21
    sbc $21
    rst $20
    add hl, sp
    rst $20
    add hl, sp
    reti


    ccf
    reti


    ccf
    rst $18
    ccf
    rst $00
    ccf
    rst $00
    ccf
    rlca
    rst $38
    rst $38
    ld bc, $01ff
    ld b, $01
    ld b, $01
    ld b, $01
    nop
    ld bc, $0106
    ld b, $01
    rlca

jr_0c2_4af3:
    ld bc, $c11f
    rra
    pop bc
    cp $19
    cp $19
    cp $1f
    ld h, $c7
    ld h, $c7
    rst $00
    ld bc, $01c7
    rst $00
    ld bc, $0106
    rlca
    ld bc, $0107
    ld b, $01
    add hl, de
    rlca
    add hl, de
    rlca
    rra
    rlca
    ld b, $1f
    ld b, $1f
    ld a, $1f
    ld a, $1f
    jr c, jr_0c2_4b3f

    and $39
    ld a, a
    sbc a
    ld hl, sp+$07
    ld h, a
    rra
    ld h, a
    rra
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$3f], a
    or b
    ld a, a
    rra
    rst $38
    rra
    rst $38
    rlca
    rst $38
    add a
    rst $38
    jp nz, $c0ff

    rst $38
    ret nz

jr_0c2_4b3f:
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $38
    add e
    rst $38
    add e
    rst $38
    inc bc
    rst $38
    add e
    rst $38
    add e
    rst $38
    jp $ffff


jr_0c2_4b55:
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    ld e, a
    rst $38
    db $fc
    inc bc
    pop af
    nop
    add hl, sp
    ldh a, [$39]
    ldh a, [$79]
    ldh a, [$f9]
    ret nz

    ld sp, hl
    ret nz

    rst $38
    add b
    ldh a, [rIE]
    ldh a, [rIF]
    jr nz, jr_0c2_4b55

    ldh [$1f], a
    ldh [$1f], a
    and b
    rra
    ret nc

    rrca
    add sp, $17
    rra
    rst $38
    rrca
    rst $38
    rst $28
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    ld e, $ff
    ld a, [hl]
    rst $38
    ld a, h
    rst $38
    ld l, b
    rst $38
    jr z, @+$01

    inc l
    rst $38
    jr c, @+$01

    jr nz, @+$01

    ld bc, $02fe
    rst $38
    adc b
    rst $30
    ldh [rIE], a
    sub b
    rst $38
    ld hl, sp-$01
    ld h, b
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld [hl], d
    rst $38
    ldh [rIE], a
    ld bc, $00ff
    add a
    nop
    rst $38
    ld [bc], a
    ld sp, hl
    ret c

    rst $38
    ld bc, $05ff
    ei
    jp nz, $82fd

    db $fd
    nop
    rst $38
    jr nz, @+$01

    dec sp
    rst $38
    ld l, a
    rst $38
    rst $00

jr_0c2_4be3:
    rst $38
    add b
    rst $38
    or b
    rst $38
    ldh [rIE], a
    ld c, l
    rst $38
    rra
    rst $38
    dec de
    rst $38
    ld bc, $00ff
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
    add a
    rst $38
    ld bc, $87ff
    rst $38
    cpl
    rst $38
    ld c, $f1
    rst $38
    nop
    ret nz

    nop
    ret nz

    nop
    ld hl, sp-$40
    jr c, @+$01

    jr c, @+$01

    rst $08
    ccf
    rst $38
    rst $38
    db $f4
    dec bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc a
    jp $9867


    ld [hl], c
    adc [hl]
    sbc [hl]
    rst $38
    ld e, $ff
    cp $83
    inc e
    db $e3
    dec de
    rst $20
    rra
    rst $38
    ld [hl], c
    adc a
    push af

Call_0c2_4c3f:
    dec bc
    ld a, l
    add e
    ld [hl], e
    adc a
    ld a, [c]
    rrca
    db $fd
    ld [bc], a
    ld c, l
    ld [bc], a
    ld l, [hl]
    inc bc
    sbc $3f
    ld h, [hl]
    sbc a
    rst $20
    jr jr_0c2_4cca

    adc b
    ld b, c
    cp a
    rra
    pop hl
    pop bc
    cp a
    ld a, a
    add c
    db $fd
    add e
    add d
    db $fd
    jr nc, jr_0c2_4be3

    add b
    inc bc
    add c
    inc bc
    cp h
    inc bc
    ld [hl+], a
    pop de
    ld b, b
    or c
    ld b, b
    pop af
    add [hl]
    ld [hl], c
    add e
    ld bc, $00ff
    ld a, [de]
    pop hl
    dec de
    ldh [$fc], a
    inc bc
    ldh [$1f], a
    nop
    rst $38
    nop
    rst $38
    jr c, @+$01

    rra
    rst $38
    ld a, a
    rst $38
    dec e
    rst $38
    ld a, [c]
    rst $38
    ld c, $ff
    rrca
    rst $38
    ld l, b
    add a
    inc a
    jp $ff80


    cp h
    rst $38
    call nz, $d8bf
    and a
    ld [bc], a
    db $fd
    add e
    db $fc
    adc b
    rst $30
    sub b
    rst $38
    ld [$00ff], sp
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    add b
    rst $38
    sub b
    rst $38

jr_0c2_4cb0:
    nop
    rst $38

jr_0c2_4cb2:
    ldh a, [rIE]
    rst $38
    rst $38
    ei
    rst $38
    jp hl


    rst $38
    ldh [rIE], a
    pop hl
    rst $38
    pop bc
    rst $38
    ret nc

    rst $28
    ret nc

    rst $28
    jp z, $f0f5

    rst $38
    di
    rst $38

jr_0c2_4cca:
    add b
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    ret nc

    jr nz, jr_0c2_4cb2

    nop
    nop
    rlca
    nop
    rlca
    inc bc
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc bc
    db $fc
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0dfe
    ld a, [c]
    ld [$c8f7], sp
    scf
    add b
    ld a, a
    ld [hl], a
    rst $38
    ld h, a
    rst $38
    dec h
    rst $38
    inc de
    rst $38
    adc c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    rst $28
    rst $30
    set 6, a
    jp $83ff


    ld a, a
    db $e3
    ld a, a
    jp $017f


    rst $38
    dec de
    rst $38
    cp a
    nop
    add d
    ld [$08d7], sp
    rst $38
    rst $38
    ret


    or $6f
    add b
    adc a
    nop
    ccf
    ret nz

    ret nz

jr_0c2_4d21:
    rst $38
    rst $38
    ld hl, sp-$7f
    ld hl, sp+$06
    ld sp, hl
    ld b, a
    sbc b
    ld h, a
    sbc b
    db $fc
    nop
    jr jr_0c2_4cb0

    ld [hl], a
    adc b
    rst $20

jr_0c2_4d33:
    jr jr_0c2_4d33

    ld bc, $f906
    inc b
    ei
    ld a, h
    add e
    pop bc
    cp $0d
    cp $00
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    jr @+$01

    sub b
    rst $38
    nop
    rst $38
    jr nc, jr_0c2_4d21

    add b
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    di
    rrca
    ld a, b
    add a
    ld a, [hl]
    add c
    rra
    ldh [rP1], a
    rst $38
    inc bc
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
    ldh [rIE], a
    pop hl
    rst $38
    db $e3
    rst $38
    rst $20
    rst $38
    db $e4
    rst $38
    inc h
    rst $38
    ld [bc], a
    rst $38
    ld hl, $71ff
    rst $38
    jp $c1ff


    rst $38
    ret nc

    rst $38
    ldh [rIE], a
    ld [$df00], sp
    jr nz, jr_0c2_4db1

    db $e3
    inc e
    db $e3
    inc a
    ret nz

    rra
    call c, $dc1f
    rst $38
    jr c, @+$01

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    and b
    ld e, a
    ldh [$1f], a
    ret nz

    ccf
    ldh [$1f], a
    ld b, b

jr_0c2_4db1:
    cp a
    nop
    rst $38
    ld b, $f9
    ld l, h
    sub e
    ld a, b
    add a
    ld h, b
    sbc a
    add d
    ld a, l
    pop hl
    rra
    cp e
    rlca
    db $e3
    rra
    db $10

jr_0c2_4dc5:
    rst $38
    inc c
    di
    sbc $31
    reti


    scf
    pop de
    ccf
    ld b, b
    cp a
    ldh [$1f], a
    ld b, d
    dec a
    or c
    ld a, [hl]
    ld d, l
    cp $b1
    ld c, [hl]
    cp c
    ld b, [hl]
    jr jr_0c2_4dc5

    add e
    ld a, a
    dec bc
    rst $38
    inc bc

jr_0c2_4de3:
    rst $38
    adc e
    ld [hl], a
    inc hl
    rst $18
    ld l, a
    rst $38
    nop
    rst $38
    add hl, de
    and $b0
    ld c, a
    call z, Call_000_00bf
    rst $38
    db $e4
    dec de
    inc [hl]
    swap b
    rst $08
    ld h, l
    sbc d
    add sp, $1f
    ret nz

    ccf
    rlca
    rst $38
    dec l
    rst $38
    rst $08
    rst $38
    cp h
    rst $38
    db $fc
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec de
    db $fc
    push bc
    jr c, jr_0c2_4de3

    ldh a, [$c0]
    rst $38
    ret nz

    rst $38
    ret nc

    rst $28
    cp $e1
    sub $f9
    ld c, e
    db $fc
    ret nz

    rst $38
    jp $d3ff


    rst $28
    ret z

    rst $30
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    rst $28

jr_0c2_4e47:
    rst $38
    or $ff
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp a
    ld a, a
    nop
    rst $38
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    jr jr_0c2_4e47

    rst $38
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

jr_0c2_4e6b:
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
    ld hl, sp-$01
    ld hl, sp-$01

Call_0c2_4e82:
    adc c
    rst $38
    dec l
    rst $18
    adc b
    rst $38
    nop
    rst $38
    jr nz, jr_0c2_4e6b

    add b
    rst $38
    ld [$00ff], sp
    rst $38
    inc d
    rst $38
    dec b
    rst $38
    ld b, l
    rst $38
    ld b, l
    rst $38
    ld bc, $01ff
    rst $38
    inc de
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    add $ff
    add $ff
    rst $00
    rst $38
    ld b, [hl]
    rst $38
    ld b, $ff
    ld b, b
    rst $38
    nop
    rst $38
    add c
    rst $38
    sub b
    ld l, a
    ld h, b
    rst $38
    nop
    rst $38
    inc c
    rst $38
    ld a, a
    rst $38
    ld a, b
    rst $38
    adc e
    rst $38
    cp $ff
    rst $38
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    ld h, a
    ld hl, sp+$1e
    rst $38
    inc bc
    rst $38
    ld hl, sp+$07
    or b
    ld c, a
    adc l
    ld [hl], d
    add b
    ld a, a
    ldh a, [rIE]
    jr nc, @+$01

    nop
    rst $38
    db $10
    rst $38
    ld b, a
    cp a
    sbc b
    ld a, a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ld b, b
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    add b
    rst $38
    pop hl
    rst $38
    nop
    rst $38
    dec c
    di
    sbc [hl]
    ld h, e
    sbc [hl]
    ld h, e
    add c
    ld a, [hl]
    adc [hl]
    ld a, a
    adc [hl]
    ld a, a
    cp $7f
    rst $38
    rst $38
    inc bc
    rst $38
    dec b
    ei
    dec b
    ei
    ld bc, $07ff
    ei
    rlca
    ei
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$fe03]
    inc bc
    cp $1f
    cp $11
    cp $11
    cp $11
    cp $15
    cp $1f
    cp $9b
    cp $12
    rst $38
    ld [de], a
    rst $38
    ld b, e
    rst $38
    rst $18
    rst $38
    ld e, a
    rst $38
    ld c, a
    rst $38
    rrca
    cp $1f
    cp $1d
    cp $99
    cp $19
    cp $54
    cp $55
    cp $39
    cp $3b
    cp $3b
    cp $2f
    cp $6d
    cp $35
    cp $1d
    rst $38
    dec c
    rst $38
    dec c
    rst $38
    rst $18
    cp $1f
    cp $7f
    cp $bd
    cp $7f
    cp $fb
    cp $f9
    cp $86
    rst $38
    ld b, [hl]
    rst $38
    inc sp
    rst $38
    ld bc, $a1ff
    ld e, a
    add hl, sp
    rst $00
    ld bc, $80ff
    rst $38
    sbc h
    ld [bc], a
    dec e
    rst $38
    cp [hl]
    ld a, a
    or e
    ld a, a
    ld e, b
    or a
    ld e, b
    or a
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ld [hl], d
    rst $38
    ldh [rIE], a
    nop
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    ld a, h
    rst $38
    ldh a, [rIE]
    ld [c], a
    rst $38
    jr nz, @+$01

    ld a, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld sp, hl
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    db $fc
    ei
    cp $f9
    ld a, e
    db $fc
    ld hl, sp-$01
    cp $ff
    ld h, b
    rst $38
    ld b, b
    rst $38
    ld e, d
    add l
    add e
    db $fc
    ld a, a
    add b
    ld a, a
    add b
    cp $01
    ld c, $ff
    ld h, d
    add b
    nop
    ld [c], a
    sub c
    ld [c], a
    sub c
    ld [c], a
    sub c
    ld [c], a
    sub c
    ld [c], a
    xor $f3
    rst $38
    add b
    rst $38
    add b
    add b
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    dec e
    rst $38
    ld de, $11ff
    rst $38
    xor $11
    sbc l
    ld [hl], e
    sbc l
    ld [hl], e
    ld l, [hl]
    di
    ld l, [hl]
    di
    xor $f3
    adc h
    di
    adc h
    di
    add b
    rst $38
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
    nop
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    ld [c], a
    inc c
    ld [c], a
    inc c
    rst $38
    ld h, d
    rst $38
    ld h, d
    rst $38
    ld [c], a
    sub c
    adc h
    sub c
    adc h
    adc h
    nop
    adc h
    nop
    adc h
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    ld h, d
    add b
    ld h, d
    add b
    ld [c], a
    add b
    add b
    ld [c], a
    add b
    ld [c], a
    di
    ld [c], a
    di
    ld [c], a
    ld [hl], e
    ld [c], a
    sbc l
    ld [hl], e
    ld sp, hl
    rst $20
    rst $38
    ret nz

    ld hl, sp-$20
    ld hl, sp-$20
    ccf
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rTAC]

jr_0c2_5061:
    ld hl, sp+$03
    db $fc
    ld bc, $1bfe
    rst $38
    rst $38
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
    rra
    rst $38
    rst $38
    rst $38
    ld a, h
    rst $38
    inc a
    rst $38
    ld e, h
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc c
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld c, $ff
    ldh a, [rIE]
    jr c, @+$01

    inc de
    rst $38
    add e
    nop
    or $38
    ret z

    ld a, $c8
    ld a, $0f
    cp $3f
    rst $38
    inc a
    nop
    inc h
    jr jr_0c2_5061

    ccf
    ret nz

    ccf
    call c, $dc3f
    ccf
    rra
    db $fc
    nop
    rst $38
    nop
    rst $38
    ld hl, sp+$07
    inc a
    jp $c33c


    inc b
    ei
    ret nz

    ei
    ret nz

    ei
    jp $03f8


    ld hl, sp+$03
    ld hl, sp+$03
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07

jr_0c2_50cb:
    ld hl, sp+$20
    ei
    jr nz, jr_0c2_50cb

    db $e4
    ei
    inc h
    ei
    inc h
    ei
    inc e
    inc hl
    call nz, $c423
    inc hl
    call nz, $dc23
    inc hl
    call c, $db23
    inc h
    jp $c3fc


    db $fc
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret c

    daa
    dec de
    inc h
    dec de
    inc h
    dec sp
    inc b
    ret c

    inc h
    ret c

    inc h
    jp $db3c


    inc a
    db $db
    inc a
    ret nz

    ccf
    ret nz

    ccf
    call c, Call_000_1f3f
    db $fc
    rra
    db $fc
    nop
    rst $38
    ld hl, sp+$07
    ld hl, sp+$07
    inc a
    jp $fb04


    inc b
    ei
    dec sp
    ret nz

    rst $38
    nop
    rst $20
    nop
    rst $20
    nop
    rst $20
    add b
    rst $20
    ret nz

    and $e1
    or $f1
    pop af

jr_0c2_5131:
    rst $30
    ld sp, hl

jr_0c2_5133:
    rst $38
    db $fd
    rst $38

jr_0c2_5136:
    cp $ff
    rra
    rst $38
    ld a, $ff
    ld a, h
    rst $38
    ld hl, sp-$01
    cp b
    rst $38

jr_0c2_5142:
    sbc b
    rst $38
    ld e, h
    rst $38
    ld a, [hl]
    rst $38
    ccf
    rst $38
    db $fd
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    inc de
    inc c
    ld a, [bc]
    dec b
    inc b
    inc bc
    adc b
    inc bc
    db $fc
    di
    cp $31
    ret z

    rlca
    jr nc, jr_0c2_5131

    jr nc, jr_0c2_5133

    rst $30
    rrca
    rst $30
    rrca
    rst $00
    ccf
    nop
    rst $38
    nop
    rst $38
    ld a, $c1
    rst $08
    jr nc, jr_0c2_5142

    jr nc, jr_0c2_5136

    ld a, $f0
    ld a, $f0
    ld a, $30
    cp $00
    cp $00
    cp $00
    cp $01
    cp $01
    cp $01
    cp $01
    cp $c1
    cp $c8
    cp $c8
    cp $f9
    cp $c9
    cp $c9

jr_0c2_5195:
    cp $07
    ret z

    ld sp, $31c8

jr_0c2_519b:
    ret z

    ld sp, $37c8
    ret z

    scf
    ret z

    ld [hl], $c9
    jr nc, @+$01

    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld [hl], $c9
    ld b, $c9
    ld b, $c9
    ld c, $c1
    ld [hl], $c9
    ld [hl], $c9
    jr nc, jr_0c2_5195

    ld [hl], $cf
    ld [hl], $cf
    jr nc, jr_0c2_519b

    jr nc, @-$2f

    rst $30
    rrca
    jr c, jr_0c2_5209

    jr c, jr_0c2_520b

    rst $38
    nop
    pop bc
    nop
    pop bc
    nop
    jr nc, jr_0c2_51dc

jr_0c2_51dc:
    ld a, $00
    ld a, $00
    ld c, $30
    adc [hl]
    ld [hl], b
    adc [hl]
    ld [hl], b
    cp $40
    cp $40
    cp $40
    ld a, [hl]
    ret nz

    ld a, [hl]
    ret nz

    cp [hl]
    ret nz

    cp [hl]
    ret nz

    cp [hl]
    ret nz

    db $76
    ret z

    ld b, $f8
    ld b, $f8
    ld [hl], $c8
    ld [$18e0], sp
    ldh a, [rNR23]
    ld hl, sp+$1c
    db $fc
    inc e
    cp $7c

jr_0c2_5209:
    rst $38
    db $dd

jr_0c2_520b:
    rst $38
    ld sp, hl
    rst $38
    ld bc, $10ff
    rst $28
    add hl, de
    rst $20
    inc de
    rst $28
    dec de
    rst $20
    inc de
    rst $28
    inc de
    rst $28
    rlca
    rst $38
    rlca
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld l, a
    ld a, a
    ld l, a
    ld a, a
    ld h, a
    ld a, a
    cpl
    scf
    dec hl
    scf
    add hl, hl
    scf
    dec hl
    scf
    dec l
    inc sp
    dec l
    inc sp
    jr z, jr_0c2_526d

    dec l
    inc sp
    inc d
    dec de
    inc d
    dec de
    ld d, $19
    ld d, $19
    db $10
    rra
    db $10
    rra
    jr @+$21

    jr jr_0c2_528b

    ld [$083f], sp
    ccf
    inc c
    ccf
    inc d
    cpl
    inc b
    ccf
    inc b
    rra
    inc b
    rra
    inc c
    rla
    inc c
    rla
    nop
    rra
    nop
    rra
    jr jr_0c2_526b

    inc de
    rrca
    rlca
    rra
    ld d, $df
    rlca

jr_0c2_526b:
    rst $18
    rlca

jr_0c2_526d:
    rst $18
    rra
    rst $28
    rrca
    rst $38
    rrca
    rst $38
    rst $08
    ccf
    rst $08
    ccf
    rst $28
    rra
    cpl
    rra
    cpl
    rra
    ld a, $1f
    ld a, $1f
    ccf
    rra
    inc hl
    rra
    ld sp, $311f
    rra
    pop af

jr_0c2_528b:
    rra
    pop hl
    rra
    pop bc
    rra
    ld bc, $011f
    rra
    pop hl
    rra
    pop hl
    rra
    di
    rra
    db $d3
    rra
    rst $18
    rra
    rst $18
    rra
    rst $18
    rra
    ccf
    rra
    ccf
    rra
    ccf
    rra
    scf
    rra
    scf
    rra
    scf
    rra
    daa
    rra
    inc bc
    ccf
    rlca
    ccf
    daa
    ccf
    rst $00
    ccf
    rst $30
    ccf
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sub a
    ld a, a
    inc de
    rst $38
    sub c
    rst $38
    add c
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
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    nop
    nop
    nop
    nop
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_0c2_532f

jr_0c2_532f:
    nop
    nop
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0c2_535c

    ld [hl+], a
    inc hl
    inc h
    nop
    nop
    nop
    nop
    dec h
    ld h, $27
    jr z, jr_0c2_5370

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0c2_534f

jr_0c2_534f:
    nop
    nop
    nop
    ld sp, $3332
    inc [hl]
    nop
    dec [hl]
    ld [hl], $37
    jr c, jr_0c2_5395

jr_0c2_535c:
    ld a, [hl-]
    dec sp
    nop
    nop
    nop
    nop
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
    nop
    nop

jr_0c2_5370:
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    ld h, b
    ld h, c
    ld h, d

jr_0c2_5395:
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    and a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $06
    nop
    ld bc, $0506
    ld bc, $0505
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    ld bc, $0601
    dec b
    ld bc, $0501
    dec b
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld bc, $0101
    dec b
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
    ld bc, $0501
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld bc, $0101
    dec b
    ld bc, $0501
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld bc, $0101
    ld bc, $0505
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld bc, $0501
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0100
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld b, $01
    nop
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0606
    nop
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec b
    dec b
    dec b
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
    ld sp, hl
    rst $00
    db $fc
    rlca
    cp h
    ld b, a
    db $fc
    rlca
    db $fc
    ld b, $fc
    ld b, $f8
    adc [hl]
    ld hl, sp+$0e
    ld hl, sp+$1e
    ld hl, sp-$44
    ld hl, sp-$04
    ld hl, sp-$03
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$03
    ld hl, sp+$3f
    ld b, b
    cp $a3
    call c, $f887
    add [hl]
    ld sp, hl
    ld de, $51ff
    rst $38
    ld e, b
    rst $38
    call z, Call_000_22ff
    call c, $fa06
    rrca
    rst $30
    ld b, $f2
    ld [bc], a
    ldh a, [rTAC]
    ldh a, [rTAC]
    ldh a, [$03]
    ldh [$a0], a
    ld h, a
    and b
    ld c, [hl]
    ldh [$3d], a
    ldh [$7b], a
    ldh [rIE], a
    ldh [$f7], a
    ldh [$c3], a
    ldh [$c7], a
    add b
    ldh [$80], a
    ldh [rP1], a
    db $fc
    add b
    db $fd
    sub b
    rst $28
    inc b
    db $db
    inc c
    ldh a, [$90]
    ldh [$9f], a
    ldh [rNR31], a
    ldh [$1f], a
    ldh [rNR34], a
    pop hl
    cp b
    rst $00
    and b
    rst $08
    xor h
    jp $ceb7


    rra
    cp $7d
    cp $7b
    cp $72
    cp $40
    cp $42
    cp $64
    cp $37
    cp $3f
    cp $9e
    ld a, a
    rst $38
    ld a, $7e
    cp a
    sbc [hl]
    rst $38
    sbc $ff
    ld a, $ff
    ccf
    rst $38
    ld a, $ff
    inc e
    rst $38
    ld d, $f9
    inc c
    di
    ld [bc], a
    rst $38
    nop
    rst $38
    ld [$10f7], sp
    rst $38
    ldh a, [rIE]
    ret nc

    rst $38
    ldh a, [rIE]
    sub c
    rst $38
    add b
    rst $38
    add h
    rst $38
    adc b
    rst $38
    ret nc

    rst $38
    pop bc
    rst $38
    db $d3
    rst $38
    jp nz, $c6ff

    rst $38
    ld e, b

jr_0c2_5619:
    rst $38
    ret nz

jr_0c2_561b:
    rst $38
    ld e, h
    rst $38
    ld e, a
    rst $38
    ld h, d
    sbc a
    ld [$9014], a
    ld c, $88
    ld b, $28
    ld b, $10
    ld c, $1d
    ld [bc], a
    inc bc
    nop
    adc l
    rlca
    rrca
    rrca
    rst $38
    rra
    db $76
    cp a
    add b
    ld a, a
    jr nz, jr_0c2_561b

    ld [hl], b
    adc a
    db $ec
    inc de
    ld e, h
    inc hl
    add hl, sp
    ld b, h
    ld a, b
    add b
    jr nz, jr_0c2_5619

    sbc b
    db $e3
    cp b
    rst $00
    ld [hl], c
    adc [hl]
    ldh [rNR32], a
    add $38
    adc [hl]
    ld [hl], c
    adc h
    ld [hl], e
    jp $c33f


    ccf
    ldh a, [$1f]
    ld a, b
    cp a
    add hl, sp
    cp $ac
    db $10
    rra
    nop
    rrca
    inc bc
    add [hl]
    inc bc
    ld [c], a
    ld bc, $00f1
    ld a, c
    add b
    ld a, a
    add b
    rst $38
    ld bc, $03fd
    inc de
    rst $28
    ld [hl], b
    adc a
    ld a, [$fd07]
    inc bc
    ld hl, sp+$07
    ld de, $010f
    rrca
    nop
    rlca
    nop
    inc bc
    ld bc, $ff8f
    rst $38
    rst $38
    rlca
    rst $18
    daa
    rst $38
    add a
    db $10
    rst $28
    ld [bc], a
    rst $38
    ld [de], a
    rst $28
    nop
    rst $38
    add d
    ld a, a
    ret nz

    ccf
    inc bc
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    ld h, b
    rst $38
    jr nc, @+$01

    ld d, b
    rst $38
    ld h, [hl]
    rst $38
    ld a, c
    rst $38
    rlca
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld [hl], a
    rst $38
    inc bc

jr_0c2_56bb:
    rst $38
    ld h, c
    rst $38
    ld bc, $e1ff
    ld a, a
    rst $38
    ld a, a
    ld [hl], a
    rst $38
    ld d, e
    rst $38
    ld d, e
    rst $38
    inc bc
    rst $38
    add a
    rst $38
    and b
    rst $18
    nop
    rst $38
    jr jr_0c2_56bb

    ld h, e
    rst $38
    rst $00
    rst $38
    ld bc, $41ff
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    ldh [$1f], a

jr_0c2_56e6:
    add c
    ld a, [hl]
    add d
    ld a, h
    inc [hl]
    ret z

    db $76
    adc b
    xor $91
    push bc
    ld a, [$fc83]
    rlca
    cp $06
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    ld [hl], c
    rst $38
    dec sp
    rst $38
    ccf
    rst $38
    ld a, [hl]
    rst $38
    ld l, h
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    ldh [$1f], a
    ret c

    daa
    cp b
    ld b, a
    ld [hl], d
    adc l
    ldh a, [$08]
    ld d, b
    and b
    db $10
    ldh [$32], a
    ret nz

    ld [hl], b
    add h
    or $08
    cp $10
    pop bc
    jr nz, jr_0c2_56e6

    ld b, b
    add c
    add [hl]
    sbc c
    rrca
    ld a, a
    sbc a
    rst $18
    ccf
    and $7f
    ld sp, hl
    or a
    ld a, [$e7ff]
    rst $38
    add d
    rst $38
    sbc [hl]
    ld bc, $0fb0
    and $1f
    jp nz, $f83f

    rlca
    ld e, b
    and a
    xor l
    inc de
    sub c
    rrca
    ld [hl], c
    adc a
    add a
    ld a, a
    di
    rrca
    sbc a
    ld h, b
    inc hl
    call c, $fe00
    nop
    ld sp, hl
    nop
    ld hl, sp+$04
    db $fc
    add d
    ld a, [hl]
    ld [bc], a
    rst $30
    inc bc
    rst $38
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
    ccf
    rst $38
    rra
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    rst $38
    add a
    rst $38
    adc a
    rst $38
    sbc a
    rst $38
    db $d3
    rst $38
    ld e, c
    rst $38
    dec b
    rst $38
    ld b, a
    rst $38
    rst $20
    rst $38
    rlca
    rst $38
    add c
    rst $38
    ret nz

    rst $38
    and b
    rst $38
    add b
    rst $38
    adc [hl]
    rst $38
    ld b, h
    cp a
    adc b
    ld a, a
    ld d, l
    ccf
    inc bc
    ccf
    daa
    ld c, a
    db $76
    adc a
    ldh [$1f], a
    ret nz

    ccf
    add c
    ld a, [hl]
    ld [bc], a
    db $fc
    inc b
    ld hl, sp+$68
    sub b
    db $ec
    ld de, $23dc
    adc c
    or $fc
    nop
    ld hl, sp+$04
    ldh a, [$0c]
    ld sp, hl
    nop
    ld a, $c1
    ld e, $e5
    cp a
    ld c, b
    and a
    ld [$1d03], sp
    dec [hl]
    add hl, bc
    ld [hl], b
    nop
    ld hl, $0301
    ld bc, $0007
    rrca
    ld bc, $031e
    cp h
    rlca
    cp h
    ld c, e
    adc h
    di
    rst $38
    ldh [$dd], a
    jp nz, $835c

    ld d, h
    adc e
    call nc, Call_000_1e8b
    ret


    ld l, $d1
    inc a
    jp $817e


    ld e, d
    add l
    ret c

    rlca
    di
    rrca
    rst $30
    rrca
    ld [hl], d
    rrca
    ld a, d
    add a
    ld a, [hl-]
    rst $00
    ld c, $f3
    inc b
    ei
    sbc b
    rst $38
    add sp, $1f
    db $e4
    dec de
    add h
    ld a, e
    xor h
    ld d, e
    db $e4
    dec de
    db $e4
    dec de
    ldh [$1f], a
    db $ec
    inc de
    nop
    rst $38
    add b
    rst $38
    jp nz, Jump_000_00ff

    rst $38
    nop
    rst $38
    daa
    rst $38
    rrca
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    or b
    rst $38
    rra
    rst $38
    rra
    rst $38
    rlca
    rst $38
    add a
    rst $38
    jp nz, $c0ff

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $38
    add e
    rst $38
    add e
    rst $38
    inc bc
    rst $38
    add e
    rst $38
    add e
    rst $38
    jp $ffff


    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    ld e, a
    rst $38
    inc bc
    rst $38
    ld c, $f0
    sbc [hl]
    pop hl
    db $fc
    jp $c7b8


    db $10
    rst $28
    nop
    rst $18
    ld b, b
    cp a
    adc h
    ld a, a
    add hl, de
    rst $38
    cp e
    ld a, a
    daa
    ld a, a
    ld [bc], a
    rst $18
    ld h, c
    adc a
    ld hl, sp+$07
    ld hl, sp+$03
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0100
    add b
    inc b
    add b
    ld l, [hl]
    ld bc, $83fc
    db $fc
    rst $00
    ld hl, sp-$71
    ldh [$9f], a
    ret nz

    rst $38
    add c
    cp $01
    cp $81
    ld a, [hl]
    nop
    rst $38
    inc bc
    rst $38
    ld e, $ff
    ld a, [hl]
    rst $38
    ld a, h
    rst $38
    ld l, b
    rst $38
    jr z, @+$01

    inc l
    rst $38
    jr c, @+$01

    jr nz, @+$01

    ld bc, $02fe
    rst $38
    adc b
    rst $30
    ldh [rIE], a
    sub b
    rst $38
    ld hl, sp-$01
    ld h, b
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld [hl], d
    rst $38
    ldh [rIE], a
    ld bc, $00ff
    add a
    nop
    rst $38
    ld [bc], a
    ld sp, hl
    ret c

    rst $38
    ld bc, $05ff
    ei
    jp nz, $82fd

    db $fd
    nop
    rst $38
    jr nz, @+$01

    dec sp
    rst $38
    ld l, a
    rst $38
    rst $00

jr_0c2_58e3:
    rst $38
    add b
    rst $38
    or b
    rst $38
    ldh [rIE], a
    ld c, l
    rst $38
    rra
    rst $38
    dec de
    rst $38
    ld bc, $00ff
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
    add a
    rst $38
    ld bc, $87ff
    rst $38
    cpl
    rst $38
    ld c, $f1
    ld sp, hl
    ld b, $f3
    inc c
    di
    inc c
    ld a, [c]
    dec c
    db $e4
    dec de
    xor $31
    xor $71
    dec e
    ld [c], a
    ld a, a
    call nz, $8ef9
    jp hl


    ld e, $df
    inc a
    sbc c
    ld a, [hl]
    add hl, bc
    rst $38
    sbc a
    ld a, [hl]
    db $fd
    ld a, $f9
    ld e, $f1
    ld [de], a
    db $e3
    jr nz, @-$5a

    ld b, e
    ld h, b
    sbc a
    adc [hl]
    ld bc, $010a
    ld a, l
    add e
    ld [hl], e
    adc a
    ld a, [c]
    rrca
    db $fd
    ld [bc], a
    ld c, l
    ld [bc], a
    ld l, [hl]
    inc bc
    sbc $3f
    ld h, [hl]
    sbc a
    rst $20
    jr jr_0c2_59ca

    adc b
    ld b, c
    cp a
    rra
    pop hl
    pop bc
    cp a
    ld a, a
    add c
    db $fd
    add e
    add d
    db $fd
    jr nc, jr_0c2_58e3

    add b
    inc bc
    add c
    inc bc
    cp h
    inc bc
    ld [hl+], a
    pop de
    ld b, b
    or c
    ld b, b
    pop af
    add [hl]
    ld [hl], c
    add e
    ld bc, $00ff
    ld a, [de]
    pop hl
    dec de
    ldh [$fc], a
    inc bc
    ldh [$1f], a
    nop
    rst $38
    nop
    rst $38
    jr c, @+$01

    rra
    rst $38
    ld a, a
    rst $38
    dec e
    rst $38
    ld a, [c]
    rst $38
    ld c, $ff
    rrca
    rst $38
    ld l, b
    add a
    inc a
    jp $ff80


    cp h
    rst $38
    call nz, $d8bf
    and a
    ld [bc], a
    db $fd
    add e
    db $fc
    adc b
    rst $30
    sub b
    rst $38
    ld [$00ff], sp
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    add b
    rst $38
    sub b
    rst $38

jr_0c2_59b0:
    nop
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    ei
    rst $38
    jp hl


    rst $38
    ldh [rIE], a
    pop hl
    rst $38
    pop bc
    rst $38
    ret nc

    rst $28

jr_0c2_59c2:
    ret nc

    rst $28
    jp z, $f0f5

    rst $38
    di
    rst $38

jr_0c2_59ca:
    add b
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    ret nc

    jr nz, jr_0c2_59c2

    ld bc, $00f7
    ld a, e
    add c
    ccf
    pop bc
    ld a, a
    add b
    ld a, a
    add c
    cp $02
    db $fd
    ld b, $f8
    rrca
    ldh [$1f], a
    pop bc
    ld a, $8d
    ld [hl], d
    adc b
    rst $30
    ret z

    scf
    add b
    ld a, a
    ld [hl], a
    rst $38
    ld h, a
    rst $38
    dec h
    rst $38
    inc de
    rst $38
    adc c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    rst $28
    rst $30
    set 6, a
    jp $83ff


    ld a, a
    db $e3
    ld a, a
    jp $017f


    rst $38
    dec de
    rst $38
    cp a
    nop
    add d
    ld [$08d7], sp
    rst $38
    rst $38
    ret


    or $6f
    add b
    adc a
    nop
    ccf
    ret nz

    ret nz

jr_0c2_5a21:
    rst $38
    rst $38
    ld hl, sp-$7f
    ld hl, sp+$06
    ld sp, hl
    ld b, a
    sbc b
    ld h, a
    sbc b
    db $fc
    nop
    jr jr_0c2_59b0

    ld [hl], a
    adc b
    rst $20

jr_0c2_5a33:
    jr jr_0c2_5a33

    ld bc, $f906
    inc b
    ei
    ld a, h
    add e
    pop bc
    cp $0d
    cp $00
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    jr @+$01

    sub b
    rst $38
    nop
    rst $38
    jr nc, jr_0c2_5a21

    add b
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    di
    rrca
    ld a, b
    add a
    ld a, [hl]
    add c
    ld e, $e1
    nop
    rst $38
    ld b, $fe
    rst $18
    rst $38
    db $fd
    rst $38
    cp $fe
    db $fc
    rst $38
    db $fc
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    db $e3
    db $fc
    rst $20
    ld hl, sp-$1d
    db $fc
    rst $20
    db $fc
    rst $20
    db $fc
    daa
    db $fc
    inc bc
    db $fc
    ld hl, $70fe
    rst $38
    ret nz

    rst $38
    pop bc
    rst $38
    ret nc

    rst $38
    ldh [rIE], a
    ld [$ff00], sp
    rst $38
    db $e3
    di
    pop bc
    pop hl
    ldh [$c0], a
    ret nz

    add b
    jr nz, jr_0c2_5a9e

jr_0c2_5a9e:
    ld [hl], e
    nop
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    ld b, $f9
    ld l, h
    sub e
    ld a, b
    add a
    ld h, b
    sbc a
    add d
    ld a, l
    pop hl
    rra
    cp e
    rlca
    db $e3
    rra
    db $10

jr_0c2_5ac5:
    rst $38
    inc c
    di
    sbc $31
    reti


    scf
    pop de
    ccf
    ld b, b
    cp a
    ldh [$1f], a
    ld b, d
    dec a
    or c
    ld a, [hl]
    ld d, l
    cp $b1
    ld c, [hl]
    cp c
    ld b, [hl]
    jr jr_0c2_5ac5

    add e

jr_0c2_5adf:
    ld a, a
    dec bc
    rst $38
    inc bc
    rst $38
    adc e
    ld [hl], a
    inc hl
    rst $18
    ld l, a
    rst $38
    nop
    rst $38
    add hl, de
    and $b0
    ld c, a
    call z, Call_000_00bf
    rst $38
    db $e4
    dec de
    inc [hl]
    swap b
    rst $08
    ld h, l
    sbc d
    add sp, $1f
    ret nz

    ccf
    rlca
    rst $38
    dec l
    rst $38
    rst $08
    rst $38
    cp h
    rst $38
    db $fc
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec de
    db $fd
    add $3b
    adc $f6
    ret nz

    db $fc

jr_0c2_5b18:
    ret c

    ld hl, sp-$10
    db $fc
    sbc b
    db $fc
    jr c, jr_0c2_5b18

    db $76
    ld hl, sp-$20
    db $fc
    ld [hl], b
    ld hl, sp-$08
    ld [hl], b
    or b
    pop hl
    ld [c], a
    ld [c], a
    rst $30
    inc b
    add $38
    xor h
    inc e
    rra
    ld [$008f], sp
    add $01
    ld [c], a
    ld bc, $00e1
    ld [hl], c
    add b
    ld a, e
    add b
    ld a, e
    add b
    or a
    ld b, b
    adc [hl]
    ld h, b
    inc e
    ldh [$38], a
    ret nz

    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    ccf
    dec b
    ld hl, sp-$78
    ldh a, [$d0]
    ldh [$e0], a
    ret nz

    ld [hl], b
    ld b, b
    ld e, b
    jr nz, jr_0c2_5adf

    ld [hl], b
    ld [bc], a
    ld hl, sp+$0b
    db $f4
    ld bc, $01fe
    rst $38
    nop
    rst $38
    nop

jr_0c2_5b6b:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld hl, sp-$01
    adc c
    rst $38
    dec l
    rst $18
    adc b
    rst $38
    nop
    rst $38
    jr nz, jr_0c2_5b6b

    add b
    rst $38
    ld [$00ff], sp
    rst $38
    inc d
    rst $38
    dec b
    rst $38
    ld b, l
    rst $38
    ld b, l
    rst $38
    ld bc, $01ff
    rst $38
    inc de
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    add $ff
    add $ff
    rst $00
    rst $38
    ld b, [hl]
    rst $38
    ld b, $ff
    ld b, b
    rst $38
    nop
    rst $38
    add c
    rst $38
    sub b
    ld l, a
    ld h, b
    rst $38
    nop
    rst $38
    inc c
    rst $38
    ld a, a
    rst $38
    ld a, b
    rst $38
    adc d
    rst $38
    rst $38
    rst $38
    rst $38
    cp $f7
    db $fc
    rlca
    ld hl, sp+$4f
    ldh a, [$1f]
    ei
    rst $38
    rst $38
    di
    sub d
    db $e3
    nop
    call nz, $8403
    inc bc
    ld c, $00
    inc c
    nop
    nop
    nop
    ld bc, $8200
    ld bc, $01e0
    add b
    ld b, e
    ld d, l
    add d
    rst $30
    ld [$18e7], sp
    add $39
    sub b
    ld a, [hl]
    call nz, $e838
    db $10
    ld [hl], c
    add b
    dec sp
    ret nz

    ccf
    ret nz

    ld e, $80
    adc [hl]
    ld [$08cc], sp
    db $ec
    ld [$00ff], sp
    ld c, [hl]
    ld bc, $0344
    ld [c], a
    ld bc, $e0e1
    add b
    rst $38
    pop hl
    rst $38
    rst $38
    rst $38
    sub b
    rrca
    add hl, bc
    add [hl]
    sbc a
    ld b, b
    db $dd
    ld [hl+], a
    add sp, $17
    ldh a, [rIF]
    ld hl, sp+$1f
    rlca
    jr jr_0c2_5c72

    nop
    cp $01
    db $fc
    inc sp
    cp $b9
    ld [hl], b
    di
    jr c, @+$01

    inc e
    di
    ld c, $f9
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    inc e
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    inc d
    rst $38
    inc e
    rst $38
    sbc b
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld b, d
    rst $38
    sbc $ff
    ld e, h
    rst $38
    ld c, h
    rst $38
    inc c
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    sbc b
    rst $38
    jr @+$01

    ld d, h
    rst $38
    ld d, a
    rst $38
    ld a, [hl-]
    rst $38
    ld a, [hl-]
    rst $38
    ld a, [hl-]
    rst $38
    ld l, $ff
    ld l, a
    rst $38
    scf
    rst $38
    ld e, $ff
    ld c, $ff
    rrca
    rst $38

jr_0c2_5c72:
    rst $18
    rst $38

jr_0c2_5c74:
    rra
    rst $38
    ld a, a
    rst $38
    cp a
    ei
    ld c, [hl]
    pop af
    sbc a
    ldh [$3b], a
    ret nz

    xor $91
    ld a, $c0
    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    ld a, a
    and b
    ld a, a
    ldh a, [$d0]
    jr nz, jr_0c2_5c74

    inc h
    di
    ld c, h
    ld a, a
    nop
    rst $38
    nop
    sbc a
    ld h, b
    adc a
    ld [hl], b
    sbc $21
    inc bc
    rst $38
    rlca
    rst $38
    adc a
    ld a, a
    rst $00
    ccf
    add a
    ld a, a
    ld l, [hl]
    sbc [hl]
    db $e4
    dec e
    ret nz

    dec sp
    ld [hl], c
    nop
    pop hl
    nop
    jp nz, $8000

    nop
    ld [$1100], sp
    nop

jr_0c2_5cbc:
    dec sp

jr_0c2_5cbd:
    jr nz, jr_0c2_5d2d

    jr nc, jr_0c2_5cbd

    jr nc, jr_0c2_5cbc

    nop
    ld [hl], e
    add b
    ccf
    ret nz

    ld a, $c1
    ld c, $83
    ld h, b
    rst $38
    ld b, b
    rst $38
    and l
    rst $18
    inc hl
    rst $18
    ld de, $8bff
    ld a, a
    rst $00
    ld a, a
    rst $28
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ldh [$1f], a
    rst $30
    ld [$807f], sp
    ld a, [hl]
    add b
    ld [hl-], a
    ret nz

    ld de, $88e0
    ldh a, [$84]
    ldh [$82], a
    ldh [$c1], a
    ldh a, [$60]
    ld hl, sp+$20
    db $fc
    nop
    ld hl, sp-$40
    ld a, h
    ld a, c
    cp [hl]
    rst $18
    ccf
    dec l
    rst $38
    inc b
    rst $38
    inc bc
    cp $7b
    add c
    nop
    ret nz

    ld b, b
    add b
    add b
    ld b, b
    sbc b
    ld b, b

Call_0c2_5d10:
    cp [hl]
    ld b, b
    rra
    ret nz

    ld a, a
    add b
    ld d, b
    cp a
    ld a, [bc]
    push af
    scf
    rst $08
    ld c, a
    add a
    ld c, a
    add a
    dec c
    rst $00
    dec bc
    rst $00
    ld a, a
    add [hl]
    inc de
    db $fc
    daa
    ret c

    rrca
    ldh a, [$7f]

jr_0c2_5d2d:
    ldh [rIE], a
    ret nz

    or [hl]
    ret


    ld bc, $b7fe
    db $fc
    rst $30
    ld hl, sp+$2e

jr_0c2_5d39:
    pop af
    rra
    db $e3
    inc a
    rst $00
    or c
    ld c, [hl]
    inc a
    rst $38
    jr @+$01

    dec bc
    ld a, a
    add [hl]
    ccf
    call z, $e81f
    rra
    ret


    ld [hl], $86
    ld h, c
    inc b
    jp $8748


    ldh a, [rIF]
    ldh [$1f], a
    jr nz, jr_0c2_5d39

    ld [hl], c
    adc [hl]
    db $e3
    inc e
    rst $00
    cp b
    adc a
    ldh a, [rNR34]
    db $ed
    dec c
    cp $80
    rst $38
    ld b, b
    rst $38
    ldh [rIE], a
    ld h, b
    rst $38
    ld bc, $fcff
    inc bc
    ld sp, hl
    ld b, $70
    rrca
    ld a, b
    rlca
    ldh a, [rIF]
    sub b
    rrca
    inc a
    rlca
    ld a, h
    rrca
    db $fc
    rra
    call z, $803f
    ld a, a
    inc b
    rst $38
    ld c, $ff
    ldh a, [rIE]
    jr c, @+$01

    inc de
    rst $38
    ld bc, $0382
    add a
    add a
    sbc a
    inc bc
    cp a
    add e
    sbc a
    pop bc
    db $d3
    pop de
    ei
    ld bc, $f8ff
    rlca
    call c, $ef03
    ld bc, $0077
    dec sp
    nop
    dec e
    nop
    adc a
    nop
    ld b, [hl]
    nop
    sbc e
    ld h, h
    ld h, c
    cp $69
    cp $9f
    ld a, h
    rst $18
    ld a, $ee
    rra
    ld h, h
    sbc a
    ld bc, $fcfe
    ldh [$38], a
    ldh [$b3], a
    ld b, b
    rst $20
    ld bc, $836f
    ccf
    ld b, e
    rra
    ld hl, $131f
    cpl
    dec bc
    rst $00
    ccf
    ld b, $ff
    rla
    rst $38
    ld h, a
    rst $38
    xor $ff
    db $fc
    rst $38
    cp $ff
    cp $93
    rst $28
    nop
    rst $30
    nop
    ei
    nop
    db $fd
    nop
    cp $00
    rst $08
    jr nc, jr_0c2_5dfe

    ldh a, [$9f]
    ld h, b
    jp hl


    ld d, $c3
    inc a
    sub a
    ld l, b
    cp a
    ret nz

    rst $38
    add b
    cp $00

jr_0c2_5dfe:
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    pop hl
    nop
    jp $8700


    nop
    ld l, a
    ld bc, $1ae5
    jp Jump_0c2_783c


    rst $38
    ldh a, [rIE]
    ld c, d
    rst $38
    inc b
    cp a
    ret z

    rra
    pop hl
    ld e, $cb
    inc h
    add [hl]
    ld b, c
    add e
    nop
    rlca
    nop
    rrca
    nop
    ld e, a
    nop
    sbc $01
    sbc h
    inc bc
    ld a, $07
    ld a, a
    adc a
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rra
    rst $38
    ld a, $ff
    ld a, h
    rst $38
    ld hl, sp-$01
    cp b
    rst $38
    sbc b
    rst $38
    ld e, h
    rst $38
    ld a, [hl]
    rst $38
    ccf
    rst $38
    db $fd
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    rst $38
    db $fc
    db $ed
    cp $85
    rst $38
    add e
    cp a
    add e
    sbc a
    add e
    sbc a
    add c
    rst $18
    pop bc
    rst $38
    pop bc
    rst $38
    ret


    rst $38
    ret


    rst $38
    db $fd
    rst $38
    ld bc, $03ff
    adc e
    dec bc
    rra
    inc bc
    adc [hl]
    di
    rrca
    db $e3
    rra
    jp $873d


    ld a, b
    dec bc
    db $f4
    dec e
    ld [c], a
    ld c, $f1
    add $39
    rra
    nop
    ld l, c
    nop
    pop af
    nop
    ld a, [$ba81]
    pop bc
    ld de, $19e0
    ldh a, [$3f]
    ld hl, sp-$25
    cp $41
    cp $3a
    db $e4
    inc a

jr_0c2_5e97:
    ret nc

jr_0c2_5e98:
    ld b, $e8
    inc bc
    call nz, $8245
    add b
    add hl, bc
    ld [$9910], sp
    jr nz, jr_0c2_5e98

    ld b, b
    add a
    ld h, b
    rst $38
    nop
    ld sp, hl
    ld b, $70
    rrca
    cp c
    ld b, $e3
    inc e
    pop af
    ld c, $70
    adc a
    jr nz, jr_0c2_5e97

    inc b
    cp e
    rrca
    ld [hl], b
    sbc h
    ld h, e
    ld hl, sp+$07
    ld l, e
    inc b
    pop hl
    ld e, $c3
    inc a
    or a
    ld c, b
    rst $38
    add b
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    pop hl
    nop
    jp $8700


    nop
    rrca
    ld bc, $136f
    rst $00
    ccf
    adc a
    ld a, a
    inc bc
    rst $38
    inc bc
    rst $38
    pop hl
    ld a, a
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld e, $ff
    ld a, $ff
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $fbff
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    inc e
    rst $38
    ld e, $ff
    ld e, $ff
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    ld a, h
    rst $38
    db $dd
    rst $38
    ld sp, hl
    rst $38
    ld bc, $10ff
    rst $28
    add hl, de
    rst $20
    inc de
    rst $28
    dec de
    rst $20
    inc de
    rst $28
    inc de
    rst $28
    rlca
    rst $38
    rlca
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38

jr_0c2_5f25:
    rst $38
    rst $28
    rst $38
    ld l, a
    rst $38
    ld h, a
    rst $38
    ld l, a
    rst $30
    ld l, e
    rst $30
    ld l, c
    rst $30
    xor e
    ld [hl], a
    xor l
    ld [hl], e
    xor l
    ld [hl], e
    ld l, b
    inc sp
    dec l
    inc sp
    inc d
    dec de
    inc d
    dec de
    ret nc

    rra
    ldh a, [$1f]
    jr nc, jr_0c2_5f25

    db $10
    rst $38
    jr @+$01

    jr @+$01

    xor b
    ld c, a
    ret z

    rrca
    adc h
    rrca
    inc b
    rrca
    inc [hl]
    rrca
    ld [hl], h
    rrca
    db $f4
    rrca
    db $f4
    rrca
    db $f4
    rrca
    ldh a, [$1f]
    ldh a, [$9f]
    ldh a, [rVBK]
    ld [hl], e
    cp a
    daa
    rst $18
    add $0f
    rst $00
    rra
    rst $20
    rra
    rst $28
    rra
    xor a
    rra
    rrca
    rra
    cpl
    rra
    xor a
    ld e, a
    rst $28
    ccf
    rst $28
    ccf
    ld c, a
    ccf
    sbc [hl]
    ccf
    ld e, $3f
    rra
    ccf
    add e
    ccf
    sub c
    ccf
    ld de, $117f
    ld a, a
    ld bc, $017f
    ld a, a
    add c
    ld a, a
    add c
    ld a, a
    add c
    ld a, a
    ld hl, $b3ff
    rst $38
    inc sp
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    rra
    rst $38
    rla
    rst $38
    scf
    rst $38
    scf
    rst $38
    rlca
    rst $38
    add e
    rst $38
    add a
    rst $38
    and a
    rst $38
    rlca
    rst $38
    scf
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
    rst $38
    rra
    rst $38
    rla
    rst $38
    inc de
    rst $38
    sub c
    rst $38
    add c
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
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    nop
    nop
    nop
    nop
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_0c2_602f

jr_0c2_602f:
    nop
    nop
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0c2_605c

    ld [hl+], a
    inc hl
    inc h
    nop
    nop
    nop
    nop
    dec h
    ld h, $27
    jr z, jr_0c2_6070

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0c2_604f

jr_0c2_604f:
    nop
    nop
    nop
    ld sp, $3332
    inc [hl]
    nop
    dec [hl]
    ld [hl], $37
    jr c, jr_0c2_6095

jr_0c2_605c:
    ld a, [hl-]
    dec sp
    nop
    nop
    nop
    nop
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
    nop
    nop

jr_0c2_6070:
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    ld h, b
    ld h, c
    ld h, d

jr_0c2_6095:
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    and a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $06
    nop
    ld b, $06
    dec b
    ld bc, $0505
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    ld bc, $0601
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld bc, $0101
    ld bc, $0105
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
    nop
    ld bc, $0501
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    ld bc, $0101
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0501
    ld bc, $0100
    ld bc, $0101
    ld bc, $0000
    ld bc, $0101
    ld bc, $0101
    dec b
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec b
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
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
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0501
    dec b
    dec b
    dec b
    dec b
    dec b
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
    ld sp, hl
    rst $00
    db $fc
    rlca
    cp h
    ld b, a
    db $fc
    rlca
    db $fc
    ld b, $fc
    ld b, $f8
    adc [hl]
    ld hl, sp+$0e
    ld hl, sp+$1e
    ld hl, sp-$44
    ld hl, sp-$04
    ld hl, sp-$03
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp+$3d
    ld b, d
    db $fd
    and d
    db $dd
    add b
    rst $38
    adc c
    or $10
    cp $5f
    cp $57
    cp $c2
    db $fd
    pop de
    db $fd
    pop af
    rst $38
    ldh a, [$fe]
    ld hl, sp-$02
    db $fc
    rst $38
    db $fc
    sbc a
    db $fc
    sbc a
    db $fc
    cp a
    xor h
    ld [hl], c
    cp h
    ld e, b
    ld hl, sp+$30
    pop af
    ld l, c
    pop af
    db $fd
    ld hl, sp-$09
    ei
    rst $18
    cp $df
    add h
    cp $84
    cp $00
    db $fc
    add b
    db $fd
    sub b
    rst $28
    inc b
    db $db
    inc c
    ldh a, [$90]
    ldh [$9f], a
    ldh [rNR31], a
    ldh [$1f], a
    ldh [rNR34], a
    pop hl
    cp b
    rst $00
    and b
    rst $08
    xor h
    jp $ceb7


    rra
    cp $7d
    cp $7b
    cp $72
    cp $40
    cp $42
    cp $64
    cp $37
    cp $3f
    cp $9e
    ld a, a
    rst $38
    ld a, $7e
    cp a
    sbc [hl]
    rst $38
    sbc $ff
    ld a, $ff
    ccf
    rst $38
    ld a, $ff
    inc e
    rst $38
    ld d, $f9
    inc c
    di
    ld [bc], a
    rst $38
    nop
    rst $38
    ld [$10f7], sp
    rst $38
    ldh a, [rIE]
    ret nc

    rst $38
    ldh a, [rIE]
    sub c
    rst $38
    add b
    rst $38
    add h
    rst $38
    adc b
    rst $38
    ret nc

    rst $38
    pop bc
    rst $38
    db $d3
    rst $38
    jp nz, $c6fe

    cp $58
    cp $c0
    rst $38
    ld e, h
    rst $38
    ld e, a
    rst $38
    ld h, d
    sbc a
    ld [$9014], a
    ld c, $88
    ld b, $28
    ld b, $10
    ld c, $1c
    ld [bc], a
    ld [bc], a
    nop
    adc a
    nop
    inc c
    inc bc
    ei
    rlca
    ld b, e
    cp h
    di
    inc c
    ld a, e
    inc b
    push af
    ld c, $f8
    rlca
    pop hl
    ld e, $6f
    sbc h
    di
    inc c
    db $db
    inc h
    ld sp, hl
    ld b, $99
    ld b, $17
    db $ec
    ld c, $ff
    rst $38

jr_0c2_6351:
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    and h
    ld a, e
    ccf
    ret nz

    cp a
    ld b, b
    rst $18
    jr nz, jr_0c2_63b2

    xor h
    cp a
    ld b, b
    rra
    nop
    ld a, l
    ld [bc], a
    db $10
    rst $38
    jr jr_0c2_6351

    dec bc
    rlca
    add e
    rlca
    add d
    rlca
    add b
    rlca
    ld e, h
    add e
    inc de
    rst $28
    ld [hl], b
    adc a
    ld a, [$fd07]
    inc bc
    ld hl, sp+$07
    ld de, $010f
    rrca
    nop
    rlca
    nop
    inc bc
    ld bc, $ff8f
    rst $38
    rst $38
    rlca
    rst $18
    daa
    rst $38
    add a
    db $10
    rst $28
    ld [bc], a
    rst $38
    ld [de], a
    rst $28
    nop
    rst $38
    add d
    ld a, a
    ret nz

    ccf
    inc bc
    rst $38
    ld a, a
    rst $38
    ld b, e
    rst $38
    nop
    rst $38
    ld [hl], b
    adc a
    rra
    ldh [$60], a
    sbc a
    ld sp, $50cf
    xor a
    ld h, [hl]
    sbc c
    ld a, a
    cp a

jr_0c2_63b2:
    rlca
    ld hl, sp+$7f
    add h
    ld a, a
    add b
    ld [hl], a
    adc c
    ld a, e
    db $fc
    ld h, c
    sbc [hl]
    ld bc, $e1fe
    ld e, $fe
    ld bc, $8a75
    ld d, e
    xor h
    ld d, b
    xor a
    nop
    rst $38
    sbc a
    ldh [$83], a
    ret nz

    inc bc
    add b
    add e
    nop
    add b
    nop
    add b
    nop
    add e
    nop
    ld b, c
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld a, $20
    ld e, $00
    ld h, [hl]
    jr jr_0c2_645c

    inc c
    ld l, d
    inc b
    ld c, [hl]
    nop
    inc h
    ld [bc], a
    and $1f
    xor [hl]
    rra
    ld a, [bc]
    rst $38
    rst $18
    ccf
    ldh a, [rIF]
    ld [hl], a
    adc b
    rst $30
    ld [$c03f], sp
    rst $38
    nop
    db $eb
    db $10
    db $fd
    ld [$0cf7], sp
    ei
    inc b
    pop af
    ld c, $e3
    rra
    rrca
    rst $38
    ld bc, $01fe
    cp $01
    cp $00
    cp $cc
    ld a, $36
    rrca
    ld a, [bc]
    rlca
    rlca
    ld [bc], a
    ld l, e
    ld b, $e0
    ld e, $04
    cp $04
    cp $7e
    rst $38
    cp $ff
    rst $18
    rst $38
    rst $38
    rst $38
    ld l, $ff
    ccf
    rst $38
    add d
    rst $38
    sbc [hl]
    ld bc, $0fb0
    and $1f
    jp nz, $f83f

    rlca
    ld e, b
    and a
    xor l
    inc de
    sub c
    rrca
    ld [hl], c
    adc a
    add a
    ld a, a
    di
    rrca
    sbc a
    ld h, b
    inc hl
    call c, $fe00
    nop
    ld sp, hl
    nop
    ld hl, sp+$04
    db $fc
    add d
    ld a, [hl]
    ld [bc], a
    rst $30

jr_0c2_645c:
    inc bc
    rst $38
    ld b, c
    cp a
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc a
    rst $38
    ld sp, $9fcf
    ldh [rTAC], a
    ld hl, sp+$03
    rst $38
    sub a
    add sp, -$01
    nop
    cp $01
    db $fd
    ld [bc], a
    jp Jump_000_07fc


    ld hl, sp-$39
    jr c, @-$40

    ld b, b
    ld a, [hl]
    add b
    cp $00
    ret nz

    nop
    rrca
    ret nz

    rrca
    ret nz

    ld [hl], b
    add b
    ld e, $81
    dec e
    add e
    dec e
    add e
    adc a
    nop
    adc a
    nop
    adc a
    nop
    ldh [rP1], a
    ret nz

    rst $38
    and b
    rst $38
    add b
    rst $38

jr_0c2_64a0:
    ld [hl], c
    adc [hl]
    ld a, a
    jr nc, @+$50

    ccf
    ld c, [hl]
    ccf
    ld a, [c]
    rrca
    ccf
    rst $38
    add hl, de
    rlca
    ld bc, $1f0f
    rlca
    sbc a
    ld bc, $106b
    rst $00
    jr c, jr_0c2_64a0

    nop
    add hl, bc
    ld [de], a
    dec h
    ld a, [de]
    dec h
    ld a, [de]
    rst $38
    ld d, $e4
    rra
    push hl
    rra
    push hl
    rra
    ld a, [c]
    dec c
    ld a, [$0f0d]
    ld sp, hl
    and a
    ld sp, hl
    db $ed
    inc de
    pop af
    rrca
    ld de, $00ef
    rst $38
    sub b
    ld l, a
    ldh a, [rIF]
    cp $83
    ld a, a
    jp $03f4


    inc a
    inc bc
    inc l
    inc de
    rra
    nop
    sbc l
    ld [bc], a
    ld e, h
    add e
    ld d, h
    adc e
    call nc, Call_000_1e8b
    ret


    ld l, $d1
    inc a
    jp $817e


    ld e, d
    add l
    ret c

    rlca
    di
    rrca
    rst $30
    rrca
    ld [hl], d
    rrca
    ld a, d
    add a
    ld a, [hl-]
    rst $00
    ld c, $f3
    inc b
    ei
    sbc b
    rst $38
    add sp, $1f
    db $e4
    dec de
    add h
    ld a, e
    xor h
    ld d, e
    db $e4
    dec de
    db $e4
    dec de
    ldh [$1f], a
    db $ec
    inc de
    nop
    rst $38
    add b
    rst $38
    jp nz, Jump_000_00ff

    rst $38
    nop
    rst $38
    daa

jr_0c2_6527:
    rst $38
    rrca
    rst $38
    rlca
    ld hl, sp-$38
    jr nc, jr_0c2_6527

    ldh [$bf], a
    ld b, b
    ld h, c
    sbc [hl]
    daa
    rra
    daa
    rra
    ccf
    jr @+$3a

    nop
    jr c, jr_0c2_653e

jr_0c2_653e:
    ccf
    nop
    ld hl, $211e
    ld e, $e1
    ld e, $e7
    nop
    rst $20
    nop
    pop hl
    nop
    ld [hl], d
    rst $38
    rst $38
    add c
    rst $38
    add c
    cp $00
    cp $00
    cp $00
    ld bc, $0200
    rst $38
    inc bc
    rst $38
    ld e, a
    rst $38
    db $fc
    inc bc
    pop af
    nop
    add hl, sp
    ldh a, [$39]
    ldh a, [$79]
    ldh a, [$f9]
    ret nz

    ld sp, hl
    ret nz

    rst $38
    add b
    ldh a, [rIE]
    ldh a, [rIF]
    jr nz, @-$1f

    ldh [$1f], a
    ldh [$1f], a
    and b
    rra
    ret nc

    rrca
    add sp, $17
    rra
    rst $38
    rrca
    rst $38
    rst $28
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38

jr_0c2_659a:
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    ld e, $ff
    ld a, [hl]
    rst $38
    ld a, h
    rst $38
    ld l, b
    rst $38
    jr z, @+$01

    inc l
    rst $38
    jr c, @+$01

    jr nz, @+$01

jr_0c2_65b2:
    ld bc, $02fe
    rst $38
    adc b
    rst $30
    ldh [rIE], a
    sub b
    rst $38
    ld hl, sp-$01
    ld h, b
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld [hl], d
    rst $38
    ldh [rIE], a
    ld bc, $00ff
    add a
    nop
    rst $38
    ld [bc], a
    ld sp, hl
    ret c

    rst $38
    db $fc
    rst $38
    rst $20
    ld hl, sp+$38
    ret nz

    jr c, jr_0c2_659a

    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ei
    rst $18

jr_0c2_65e3:
    ldh [$c4], a
    ld hl, sp-$3c
    ld hl, sp-$20
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    inc b
    ei
    jr nz, jr_0c2_65b2

    jr nz, @-$3e

    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    ld a, b
    add a
    or c
    adc $b1
    adc $3f
    nop
    ccf
    nop
    ccf
    nop
    add b
    nop
    ld bc, $87ff
    rst $38
    cpl
    rst $38
    ld c, $f1
    rst $38
    nop
    ret nz

    nop
    ret nz

    nop
    ld hl, sp-$40
    jr c, @+$01

    jr c, @+$01

    rst $08
    ccf
    rst $38
    rst $38
    db $f4
    dec bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc a
    jp $9867


    ld [hl], c
    adc [hl]
    sbc [hl]
    rst $38
    ld e, $ff
    cp $83
    inc e
    db $e3
    dec de
    rst $20
    rra
    rst $38
    ld [hl], c
    adc a
    push af
    dec bc
    ld a, l
    add e
    ld [hl], e
    adc a
    ld a, [c]
    rrca
    db $fd
    ld [bc], a
    ld c, l
    ld [bc], a
    ld l, [hl]
    inc bc
    sbc $3f
    ld h, [hl]
    sbc a
    rst $20
    jr jr_0c2_66ca

    adc b
    ld b, c
    cp a
    rra
    pop hl
    pop bc
    cp a
    ld a, a
    add c
    db $fd
    add e
    add d
    db $fd
    jr nc, jr_0c2_65e3

    add b
    inc bc
    add c
    inc bc
    cp h
    inc bc
    ld [hl+], a
    pop de
    ld b, b
    or c
    ld b, b
    pop af
    add [hl]
    ld [hl], c
    add e
    ld bc, $00ff
    ld a, [de]
    pop hl
    dec de
    ldh [$fc], a
    inc bc
    ldh [$1f], a
    nop
    rst $38
    nop
    rst $38
    jr c, @+$01

    rra
    rst $38
    ld a, a
    rst $38
    dec e
    rst $38
    ld a, [c]
    rst $38
    ld c, $ff
    rrca
    rst $38
    ld l, b
    add a
    inc a
    jp $ff1f


    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    inc b
    nop
    inc b
    ei
    inc b
    ld a, a
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    nop
    ld a, e
    inc b
    ld a, e
    inc b
    ei
    inc b

jr_0c2_66b0:
    ld a, a
    nop

jr_0c2_66b2:
    ld a, a
    nop
    rst $38
    nop
    ldh [$1f], a
    ldh [$1f], a
    add e
    ld a, h
    jr nc, @+$01

    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $38
    nop
    rst $38
    nop
    nop
    nop

jr_0c2_66ca:
    add b
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    ret nc

    jr nz, jr_0c2_66b2

    nop
    nop
    rlca
    nop
    rlca
    inc bc
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc bc
    db $fc
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0dfe
    ld a, [c]
    ld [$c8f7], sp
    scf
    add b
    ld a, a
    ld [hl], a
    rst $38
    ld h, a
    rst $38
    dec h
    rst $38
    inc de
    rst $38
    adc c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    rst $28
    rst $30
    set 6, a
    jp $83ff


    ld a, a
    db $e3
    ld a, a
    jp $017f


    rst $38
    dec de
    rst $38
    cp a
    nop
    add d
    ld [$08d7], sp
    rst $38
    rst $38
    ret


    or $6f
    add b
    adc a
    nop
    ccf
    ret nz

    ret nz

jr_0c2_6721:
    rst $38
    rst $38
    ld hl, sp-$7f
    ld hl, sp+$06
    ld sp, hl
    ld b, a
    sbc b
    ld h, a
    sbc b
    db $fc
    nop
    jr jr_0c2_66b0

    ld [hl], a
    adc b
    rst $20

jr_0c2_6733:
    jr jr_0c2_6733

    ld bc, $f906
    inc b
    ei
    ld a, h
    add e
    pop bc
    cp $0d
    cp $00
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    jr @+$01

    sub b
    rst $38
    nop
    rst $38
    jr nc, jr_0c2_6721

    sub b
    rst $38
    db $fc
    inc bc
    ldh [$80], a
    ldh [$80], a
    add b
    nop
    add b
    ld h, e
    add b
    ld h, e
    rst $38
    nop
    ldh [rP1], a
    ldh [$80], a
    ldh [$80], a
    add b
    nop
    add b
    ld h, e
    add b
    ld h, e
    rst $38
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    rrca
    add b
    rrca
    add b

jr_0c2_677a:
    rst $38
    nop
    jr nz, jr_0c2_677a

    jr nz, @+$01

    jr nz, @+$01

    rlca
    ld hl, sp-$20
    jr @-$1e

    jr jr_0c2_6789

jr_0c2_6789:
    nop
    pop bc
    rst $38
    ret nc

    rst $38
    ldh [rIE], a
    ld [$df00], sp
    jr nz, jr_0c2_67b1

    db $e3
    inc e
    db $e3
    inc a
    ret nz

    rra
    call c, $dc1f
    rst $38
    jr c, @+$01

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    and b
    ld e, a
    ldh [$1f], a
    ret nz

    ccf
    ldh [$1f], a
    ld b, b

jr_0c2_67b1:
    cp a
    nop
    rst $38
    ld b, $f9
    ld l, h
    sub e
    ld a, b
    add a
    ld h, b
    sbc a
    add d
    ld a, l
    pop hl
    rra
    cp e
    rlca
    db $e3
    rra
    db $10

jr_0c2_67c5:
    rst $38
    inc c
    di
    sbc $31
    reti


    scf
    pop de
    ccf
    ld b, b
    cp a
    ldh [$1f], a
    ld b, d
    dec a
    or c
    ld a, [hl]
    ld d, l
    cp $b1
    ld c, [hl]
    cp c
    ld b, [hl]
    jr jr_0c2_67c5

    add e
    ld a, a
    dec bc
    rst $38
    inc bc
    rst $38
    adc e
    ld [hl], a
    inc hl
    rst $18
    ld l, a
    rst $38
    nop
    rst $38
    add hl, de
    and $b0
    ld c, a
    call z, Call_000_00bf
    rst $38
    db $e4
    dec de
    inc [hl]
    swap b
    rst $08
    ld h, l
    sbc d
    add sp, $1f
    ret nz

    ccf
    rlca
    rst $38
    dec l
    rst $38
    rst $08
    rst $38
    cp h
    rst $38
    db $fc
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec de
    db $fc
    ld a, [hl]
    rst $38
    rrca
    rst $38
    dec c
    ld a, a
    dec c
    ld a, a
    db $10
    rst $38
    db $10
    db $fc
    db $10
    db $fc
    add c
    ld a, [hl]
    rra
    ld h, b
    dec c
    ld a, a
    dec c
    ld a, a
    db $10
    rst $38
    inc de
    db $fc
    inc de
    db $fc
    add c
    ld a, [hl]
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    db $fd
    nop
    ld bc, $01fe
    cp $1f
    rst $38
    ld hl, sp+$07
    ld hl, sp+$1f
    rlca
    jr @+$01

    nop
    rra
    nop
    rra

jr_0c2_6847:
    nop
    ccf
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp a
    ld a, a
    nop
    rst $38
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    jr jr_0c2_6847

    rst $38
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

jr_0c2_686b:
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
    ld hl, sp-$01
    ld hl, sp-$01
    adc c
    rst $38
    dec l
    rst $18
    adc b
    rst $38
    nop
    rst $38
    jr nz, jr_0c2_686b

    add b
    rst $38
    ld [$00ff], sp
    rst $38
    inc d
    rst $38
    dec b
    rst $38
    ld b, l
    rst $38
    ld b, l
    rst $38
    ld bc, $01ff
    rst $38
    inc de
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    add $ff
    add $ff
    rst $00
    rst $38
    ld b, [hl]
    rst $38
    ld b, $ff
    ld b, b
    rst $38
    nop
    rst $38
    add c
    rst $38
    sub b
    ld l, a
    ld h, b
    rst $38
    nop
    rst $38
    inc c
    rst $38
    ld a, a
    rst $38
    ld a, b
    rst $38
    adc e
    rst $38
    cp $ff
    rst $38
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    ld h, a
    ld hl, sp+$1e
    rst $38
    inc bc
    rst $38
    ld hl, sp+$07
    ld bc, $80ff
    ret nz

    ret nz

    ldh a, [$c0]
    ldh a, [$30]
    rst $38
    nop
    ld bc, $0100
    rst $38
    nop
    rst $38
    nop
    rst $08
    ldh a, [$cf]
    ldh a, [$30]
    rst $38
    cp $01
    cp $01
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    add b
    rst $38
    nop
    add b
    add h
    ld hl, sp+$78
    add b
    ld a, a
    add b
    ld hl, sp+$00
    ld hl, sp+$00
    rst $38
    nop
    ei
    rst $38
    add b
    rst $38
    pop hl
    rst $38
    nop
    rst $38
    dec c
    di
    sbc [hl]
    ld h, e
    sbc [hl]
    ld h, e
    add c
    ld a, [hl]
    adc [hl]
    ld a, a
    adc [hl]
    ld a, a
    cp $7f
    rst $38
    rst $38
    inc bc
    rst $38
    dec b
    ei
    dec b
    ei
    ld bc, $07ff
    ei
    rlca
    ei
    rlca
    ld a, [$fa07]
    rlca
    ld a, [$fe03]
    inc bc
    cp $1f
    cp $11
    cp $11
    cp $11
    cp $15
    cp $1f
    cp $9b
    cp $12
    rst $38
    ld [de], a
    rst $38
    ld b, e
    rst $38
    rst $18
    rst $38
    ld e, a
    rst $38
    ld c, a
    rst $38
    rrca
    cp $1f
    cp $1d
    cp $99
    cp $19
    cp $54
    cp $55
    cp $39
    cp $3b
    cp $3b
    cp $2f
    cp $6d
    cp $35
    cp $1d
    rst $38
    dec c
    rst $38
    dec c
    rst $38
    rst $18
    cp $1f
    cp $7f
    cp $bd
    cp $7f
    cp $fb
    cp $f9
    cp $86
    rst $38
    ld b, [hl]
    rst $38
    inc sp
    rst $38
    ld bc, $a1ff
    ld e, a
    add hl, sp
    rst $00
    ld bc, $80ff
    rst $38
    sbc h
    ld [bc], a
    pop af
    rst $38
    nop
    ld bc, $0700
    nop
    rlca
    ld bc, $0687
    adc $06
    adc $f1
    nop
    pop af
    nop
    ld hl, sp+$07
    ld hl, sp+$07
    ld a, c
    add a
    scf
    adc $37
    adc $f1
    nop
    ld c, $f1
    ld c, $f1
    add hl, sp
    ld b, $81
    ld a, [hl]
    add c
    ld a, [hl]
    ld a, b
    add a
    inc e
    inc bc
    ld a, a
    nop
    nop
    nop
    ld a, a
    nop
    ld [de], a
    dec c
    ld [de], a
    dec c
    cp $01
    cp $ff
    ld h, b
    rst $38
    ld b, b
    rst $38
    ld e, d
    add l
    add e
    db $fc
    ld a, a
    add b
    ld a, a
    add b
    cp $01
    ld c, $ff
    ld h, d
    add b
    nop
    ld [c], a
    sub c
    ld [c], a
    sub c
    ld [c], a
    sub c
    ld [c], a
    sub c
    ld [c], a
    xor $f3
    rst $38
    add b
    rst $38
    add b
    add b
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    dec e
    rst $38
    ld de, $11ff
    rst $38
    xor $11
    sbc l
    ld [hl], e
    sbc l
    ld [hl], e
    ld l, [hl]
    di
    ld l, [hl]
    di
    xor $f3
    adc h
    di
    adc h
    di
    add b
    rst $38
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
    nop
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    ld [c], a
    inc c
    ld [c], a
    inc c
    rst $38
    ld h, d
    rst $38
    ld h, d
    rst $38
    ld [c], a
    sub c
    adc h
    sub c
    adc h
    adc h
    nop
    adc h
    nop
    adc h
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    ld h, d
    add b
    ld h, d
    add b
    ld [c], a
    add b
    add b
    ld [c], a
    add b
    ld [c], a
    di
    ld [c], a
    di
    ld [c], a
    ld [hl], e
    ld [c], a
    sbc l
    ld [hl], e
    ld sp, hl
    rst $20
    rst $38
    ret nz

    ld hl, sp-$20
    ld hl, sp-$20
    ccf
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38

jr_0c2_6a61:
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    ldh a, [$39]
    cp $fe
    rlca
    cp $07
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
    cp $00
    di
    ld h, b
    ld [hl], e
    nop
    ld [hl], e
    nop
    pop af
    nop
    ld de, $11e0
    ldh [rNR32], a
    ldh [$f0], a
    rst $38
    jr c, @+$01

    inc de
    rst $38
    add e
    nop
    or $38
    ret z

    ld a, $c8
    ld a, $0f
    cp $3f
    rst $38
    inc a
    nop
    inc h
    jr jr_0c2_6a61

    ccf
    ret nz

    ccf
    call c, $dc3f
    ccf
    rra
    db $fc
    nop
    rst $38
    nop
    rst $38
    ld hl, sp+$07
    inc a
    jp $c33c


    inc b
    ei
    ret nz

    ei
    ret nz

    ei
    jp $03f8


    ld hl, sp+$03
    ld hl, sp+$03
    ld hl, sp+$07
    ld hl, sp+$07

jr_0c2_6ac5:
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07

jr_0c2_6acb:
    ld hl, sp+$20
    ei
    jr nz, jr_0c2_6acb

    db $e4
    ei
    inc h
    ei
    inc h
    ei
    inc e
    inc hl
    call nz, $c423
    inc hl
    call nz, $dc23
    inc hl
    call c, $db23
    inc h
    jp $c3fc


    db $fc
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret c

    daa
    dec de
    inc h
    dec de
    inc h
    dec sp
    inc b
    ret c

Jump_0c2_6b01:
    inc h
    ret c

    inc h
    jp $db3c


    inc a
    db $db
    inc a
    ret nz

    ccf
    ret nz

jr_0c2_6b0d:
    ccf
    call c, Call_000_1f3f

jr_0c2_6b11:
    db $fc
    rra

jr_0c2_6b13:
    db $fc
    nop
    rst $38
    ld hl, sp+$07
    ld hl, sp+$07
    inc a
    jp $fb04


    inc b
    ei
    ret nz

    ei
    nop
    rst $38
    jr jr_0c2_6b0d

    jr @-$17

    jr jr_0c2_6b11

    jr jr_0c2_6b13

    add hl, de
    rst $20
    add hl, sp
    rst $00
    pop bc

jr_0c2_6b31:
    rlca
    pop bc

jr_0c2_6b33:
    rlca
    add hl, de
    rlca

jr_0c2_6b36:
    cp $07
    ld hl, sp+$07
    jr @+$09

    rst $00
    jr c, jr_0c2_6ac5

    ld a, b
    add [hl]
    ld a, b

jr_0c2_6b42:
    cp $00
    ld hl, sp+$00
    ld hl, sp+$00
    ld c, $00
    db $fd
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    inc de
    inc c
    ld a, [bc]
    dec b
    inc b
    inc bc
    adc b
    inc bc
    db $fc
    di
    cp $31
    ret z

    rlca
    jr nc, jr_0c2_6b31

    jr nc, jr_0c2_6b33

    rst $30
    rrca
    rst $30
    rrca
    rst $00
    ccf
    nop
    rst $38
    nop
    rst $38
    ld a, $c1
    rst $08
    jr nc, jr_0c2_6b42

    jr nc, jr_0c2_6b36

    ld a, $f0
    ld a, $f0
    ld a, $30
    cp $00
    cp $00
    cp $00
    cp $01
    cp $01
    cp $01
    cp $01
    cp $c1
    cp $c8
    cp $c8
    cp $f9
    cp $c9
    cp $c9

jr_0c2_6b95:
    cp $07
    ret z

    ld sp, $31c8

jr_0c2_6b9b:
    ret z

    ld sp, $37c8
    ret z

    scf
    ret z

    ld [hl], $c9
    jr nc, @+$01

    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld [hl], $c9
    ld b, $c9
    ld b, $c9
    ld c, $c1
    ld [hl], $c9
    ld [hl], $c9
    jr nc, jr_0c2_6b95

    ld [hl], $cf
    ld [hl], $cf
    jr nc, jr_0c2_6b9b

    jr nc, @-$2f

    rst $30
    rrca
    jr c, jr_0c2_6c09

    jr c, jr_0c2_6c0b

    rst $38
    nop
    pop bc
    nop
    pop bc
    nop
    jr nc, jr_0c2_6bdc

jr_0c2_6bdc:
    ld a, $00
    ld a, $00
    ld c, $30
    adc [hl]
    ld [hl], b
    adc [hl]
    ld [hl], b
    cp $40
    cp $40
    cp $40
    ld a, [hl]
    ret nz

    ld a, [hl]
    ret nz

    cp [hl]
    ret nz

    cp [hl]
    ret nz

    cp [hl]
    ret nz

    db $76
    ret z

    ld b, $f8
    ld b, $f8
    or $08
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    ld [$0800], sp

jr_0c2_6c09:
    nop
    db $dd

jr_0c2_6c0b:
    rst $38
    ld sp, hl
    rst $38
    ld bc, $10ff
    rst $28
    add hl, de
    rst $20
    inc de
    rst $28
    dec de
    rst $20
    inc de
    rst $28
    inc de
    rst $28
    rlca
    rst $38
    rlca
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld l, a
    ld a, a
    ld l, a
    ld a, a
    ld h, a
    ld a, a
    cpl
    scf
    dec hl
    scf
    add hl, hl
    scf
    dec hl
    scf
    dec l
    inc sp
    dec l
    inc sp
    jr z, jr_0c2_6c6d

    dec l
    inc sp
    inc d
    dec de
    inc d
    dec de
    ld d, $19
    ld d, $19
    db $10
    rra
    db $10
    rra
    jr @+$21

    jr jr_0c2_6c8b

    ld [$083f], sp
    ccf
    inc c
    ccf
    inc d
    cpl
    inc b
    ccf
    inc b
    rra
    inc b
    rra
    inc c
    rla
    inc c
    rla
    nop
    rra
    nop
    rra
    jr jr_0c2_6c6b

    inc de
    rrca
    rlca
    rra
    ld d, $df
    rlca

jr_0c2_6c6b:
    rst $18
    rlca

jr_0c2_6c6d:
    rst $18
    rra
    rst $28
    rrca
    rst $38
    rrca
    rst $38
    rst $08
    ccf
    rst $08
    ccf
    rst $28
    rra
    cpl
    rra
    cpl
    rra
    ld a, $1f
    ld a, $1f
    ccf
    rra
    inc hl
    rra
    ld sp, $311f
    rra
    pop af

jr_0c2_6c8b:
    rra
    pop hl
    rra
    pop bc
    rra
    ld bc, $011f
    rra
    pop hl
    rra
    pop hl
    rra
    di
    rra
    db $d3
    rra
    rst $18
    rra
    rst $18
    rra
    rst $18
    rra
    ccf
    rra
    ccf
    rra
    ccf
    rra
    scf
    rra
    scf
    rra
    scf
    rra
    daa
    rra
    inc bc
    ccf
    rlca
    ccf
    daa
    ccf
    rst $00
    ccf
    rst $30
    ccf
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sub a
    ld a, a
    inc de
    rst $38
    sub c
    rst $38
    add c
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
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0009], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0012
    nop
    nop
    nop
    nop
    nop
    nop
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_0c2_6d64

    ld a, [de]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0c2_6d7c

    ld [hl+], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0c2_6d64:
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0c2_6d94

    ld a, [hl+]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0c2_6dac

    ld [hl-], a

jr_0c2_6d7c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0c2_6dc4

    ld a, [hl-]
    nop
    nop
    nop
    nop
    nop
    nop

Call_0c2_6d92:
    nop
    nop

jr_0c2_6d94:
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d

jr_0c2_6dac:
    ld c, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0c2_6dc4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    ld bc, $0707
    ld [bc], a
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
    ld bc, $0202
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
    ld bc, $0202
    ld [bc], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    sbc a
    rst $38
    xor a
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    call c, $deff
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    cp $7e
    cp $7e
    db $fc
    ld a, b
    cp $fc
    cp $bc
    rst $38
    ld hl, sp-$01
    ret c

    rst $38
    ld hl, sp-$01
    jr nc, @+$01

    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    reti


    cp $d9
    db $fc
    db $dd
    db $fc
    db $fd
    db $fc
    rst $18
    cp $df
    cp $df
    cp $dd
    db $fc
    db $fd
    db $fc
    pop af
    db $fc
    or b
    db $fc
    cp b
    db $fc
    db $f4
    db $fc
    ld hl, sp-$04
    ld a, [$fffc]
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $6f
    cp $76
    db $fc
    ld a, [$f0fc]
    cp $f0
    cp $f0
    rst $38
    ldh a, [rIE]
    add sp, -$01
    add sp, -$01
    ld b, h
    rst $38
    call nz, $86ff
    db $fc
    add h
    db $fc
    ld b, a
    cp $cf
    cp $ff
    cp $ff
    cp $ff
    cp $bd
    db $fc
    sbc a
    cp $3f
    cp $10
    rst $38
    jr c, @+$01

    inc a
    rst $38
    ld e, $ff
    ld e, $ff
    rra
    rst $38
    rrca
    rst $38
    add a
    rst $38
    rst $38
    rst $38
    cp l
    rst $38
    rst $30
    rst $38
    jp nz, Jump_000_00ff

    rst $38
    rlca
    rst $38
    ld bc, $2cf8
    ret nz

    rlc b
    rst $08
    inc b
    adc h
    rlca
    and e
    ld a, $13
    ld e, $9f
    inc c
    rla
    adc a
    rlca
    sbc a
    cpl
    sbc a
    add hl, hl
    sbc a
    ld e, b
    cp a
    ld a, h
    adc a
    inc c
    rlca
    ld a, h
    rlca
    db $fc
    rlca
    cp [hl]
    ld b, a
    sbc d
    ld h, a
    ret c

    daa
    jp c, $ee27

    scf
    sub $3f
    call c, Call_0c2_4c3f
    cp a
    inc c
    rst $38
    ld a, h
    add a
    adc d
    rlca
    adc b
    rlca
    add b
    rlca
    adc d
    rlca
    adc h
    rlca
    sbc l
    ld b, a
    ld sp, hl
    rla
    ld sp, hl
    rra
    dec hl
    rst $08
    rst $08
    rlca
    rst $08
    rlca
    adc e
    rlca
    adc a
    rlca
    dec bc
    rlca
    sub a
    rrca
    sbc a
    rrca
    adc a
    rra
    dec a
    sbc a
    ld [hl], $9f
    ld l, e
    or a
    ld a, e
    add a
    dec bc
    rlca
    ld a, a
    rlca
    rst $38
    rlca
    cp a
    ld b, a
    sbc e
    ld h, a
    reti


    daa
    rst $38
    daa
    rst $28
    scf
    db $d3
    ccf
    rst $18
    ccf
    ld a, a
    cp a
    ld a, a
    rst $38
    ld a, a
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    db $db
    rst $38
    db $db
    rst $38
    ld hl, sp-$01

Jump_0c2_708c:
    db $f4
    inc bc
    ld [hl-], a
    dec c
    sub e
    inc c
    sbc a
    nop
    ret c

    ld bc, $09de
    rst $10
    rrca
    ei
    rlca
    rrca
    rst $38
    jp $0fff


    rst $38
    nop
    rst $38
    add hl, bc
    cp $05
    ld a, [$fa05]
    ld d, $f8
    ld bc, $05fe
    cp $07
    db $fc
    add b
    ld a, h
    add b
    ld a, b
    ld a, [de]
    ldh a, [rIF]
    ldh a, [$0c]
    di
    cpl
    ldh a, [rTMA]
    ld hl, sp+$5c
    ldh [rIF], a
    ldh a, [rDIV]
    di
    inc c
    di
    ld bc, $00f8
    ld hl, sp+$0f
    ldh a, [$c9]
    or $c0
    rst $38
    inc b
    rst $38
    nop
    rst $38
    adc d
    push af
    and [hl]
    ld sp, hl
    add [hl]
    ld sp, hl
    ld b, [hl]
    ld sp, hl
    inc bc
    db $fc
    inc hl
    db $fc
    jr nz, @+$01

    ld h, b
    rst $38
    pop hl
    cp $63
    db $fc
    push bc
    cp $c3
    db $fc
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    and h
    rst $38
    ld b, h
    rst $38
    ldh [rIE], a
    add b
    rst $38
    ld b, $ff
    ld e, $ff
    push bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    inc hl
    call c, $f609
    ret


    ld b, $cf
    nop
    ld l, h
    ret nz

    rst $28
    call nz, $87eb
    db $fd
    inc bc
    rst $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, d
    add c
    adc h
    inc bc
    inc b
    dec bc
    ld c, h
    inc bc
    ld b, h
    inc bc
    ld c, h
    inc bc
    dec c
    ld [bc], a
    ccf
    nop
    sbc [hl]
    ld bc, $01ba
    cp [hl]
    ld bc, $019a
    sbc b
    ld bc, $01f8
    ld e, $01
    ld a, [de]
    ld bc, $0118
    jr jr_0c2_7147

    ld a, h

jr_0c2_7147:
    ld bc, $01ff
    ld a, a
    ld bc, $019f
    adc c
    ld bc, $0100
    nop
    ld bc, $3b3a
    ld c, $0f
    rrca
    rrca
    rrca
    rrca
    add hl, de
    add hl, de
    add hl, bc
    add hl, bc
    ld e, l
    cp e
    call $f73b
    add hl, bc
    add a
    nop
    or b
    ld [$48b7], sp
    ld a, [hl-]
    pop bc
    rrca
    ldh a, [$08]
    rst $30
    pop bc
    rst $38
    pop bc
    rst $38
    ld c, [hl]
    rst $38
    ld c, $ff
    ldh [$9f], a
    add hl, bc
    cp $70
    rst $38
    db $e3
    rst $38
    ret c

    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    db $e3
    rst $38
    ldh [rIE], a
    ld b, $01
    rst $38
    nop
    ld b, e
    add b
    rst $28
    nop
    nop
    rlca
    ld [bc], a
    ccf
    inc e
    rst $38
    jp $e1fc


    rst $38
    nop
    rst $38
    rrca
    ldh a, [$9c]
    db $e3
    daa
    jp $fc02


    ld e, c
    sbc h
    inc c
    jr jr_0c2_71b1

    ld [$0804], sp
    nop

jr_0c2_71b1:
    nop
    rst $38
    nop
    nop
    rst $38
    db $fc
    inc bc
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
    ld a, a
    add b
    ld a, h
    add e
    ld a, h
    add e
    ld a, h
    add e
    ld a, e
    add h
    ld c, e
    or h
    ld b, h
    cp e
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
    add b
    rst $38
    add b
    rst $38
    add l
    rst $38
    rst $38
    rst $38
    rlca
    rlca
    nop
    nop
    nop
    nop
    add b
    add b
    nop
    nop
    ld e, $e3
    cp h
    jp $ff80


    call nz, $03ff
    rst $38
    add a
    ld a, a
    sub a
    ld a, a
    ld a, b
    rst $38
    rst $38
    rst $38
    inc sp
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rlca
    pop hl
    ld hl, sp+$00
    ldh a, [rP1]
    ld a, a
    add b
    ld h, b
    sub b
    ldh [rP1], a
    ld [hl], b
    ld h, b
    db $fd
    ret nz

    ldh a, [rIE]
    jr nz, @+$01

    add b
    ld a, a
    add a
    ld a, a
    ld bc, $62ff
    rra
    nop
    rra
    ld c, $1f
    ccf
    rra
    rra
    ccf
    nop
    nop
    ret nz

    ld a, $04
    ld a, [$fa04]
    nop
    cp $00
    cp $c0
    ld a, $e0
    ld e, $f5
    dec bc
    push hl
    dec de
    add l
    ld a, e
    ld b, l
    cp e
    ld [hl], l
    adc e
    ld b, c
    cp a
    ld de, $83ef
    ld a, a
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    ld b, $fe
    ld b, $fe
    rrca
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $e4
    rst $38
    ld b, $f9
    dec h
    db $d3
    adc c
    scf
    db $fc
    inc bc
    dec l
    di
    rrca
    rst $38
    rra
    rst $38
    ld de, $30ff
    rst $38
    and $ff
    ccf
    rst $38
    cp h
    rst $38
    scf
    rst $38
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
    ld hl, sp-$08
    nop
    nop
    ld a, a
    nop
    adc a
    ld [hl], b
    ld e, a
    jr nz, jr_0c2_72d9

    ccf
    ld c, l
    ld a, $fb

jr_0c2_729b:
    inc a
    ld a, h
    rst $38
    rlca
    rst $38
    add a
    rst $38
    add b
    rst $38
    ld [bc], a
    db $fd
    ld b, e
    cp h
    ld c, c
    or h
    sbc e
    db $e4
    db $fc
    add e
    ret nc

    add l
    rst $38
    add b
    adc l
    ldh a, [$83]
    ld hl, sp-$79
    ld hl, sp+$04
    ei
    jr z, jr_0c2_729b

    inc c
    rst $38
    ld [$80ff], sp
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    pop af
    cp $f5
    ld a, [$faa5]
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    pop de
    cp $89
    cp $01

jr_0c2_72d9:
    cp $00
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    nop
    rst $38
    jr @+$01

    or b
    ld a, a
    db $10
    rst $38
    ld bc, $a0ff
    rst $18
    ld b, l
    cp a
    ld a, a
    rst $38
    call $c5ff
    rst $38
    ldh [rIE], a
    db $f4
    rst $38
    ld bc, $83ff
    rst $38
    ld c, a
    rst $38
    ld a, a
    rst $38
    xor $ff
    cp $ff
    rst $38
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    di
    rst $38
    ld hl, sp-$3b
    inc b
    inc bc
    pop af
    nop
    pop af
    nop
    sbc l
    ld h, [hl]
    dec a
    add $fa
    rlca
    db $e3
    rra
    ld h, a
    rst $38
    adc l
    rst $38
    dec e
    rst $38
    inc c
    rst $38
    rra
    cp $3f
    cp $0d
    cp $8f
    ld a, [hl]
    inc bc
    cp $81
    ld a, [hl]
    ld b, c
    cp [hl]
    ld h, c
    sbc [hl]
    ld hl, $0dde
    cp $0a
    rst $38
    rrca
    rst $38
    rla
    rst $38
    rla
    rst $38
    dec d
    cp $0f
    cp $7f
    cp $6c
    cp $67
    cp $cd
    cp $6d
    cp $7d
    cp $0b
    cp $0b
    cp $0f
    cp $9d
    ld a, [hl]
    sbc l
    ld a, [hl]
    dec e
    cp $3f
    cp $3e
    rst $38
    ld c, $ff
    rra
    rst $38
    ld e, a
    rst $38
    ld a, $ff
    db $fd
    cp $bf
    cp $3f
    cp $0d
    cp $8d
    cp $bd
    cp $3d

jr_0c2_7375:
    cp $3d
    cp $bf
    cp $3f
    cp $1e
    rst $38
    ld b, $ff
    db $dd
    rst $38
    cp $ff
    db $fc
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    ld b, $ff
    ld [bc], a
    rst $38
    nop
    ld a, a
    ld [bc], a
    dec a
    rlca
    jr jr_0c2_73ac

    nop
    dec b
    nop
    sub l
    nop
    db $fd
    ldh [$15], a
    adc b
    rst $18
    add b
    jp nc, Jump_0c2_708c

    call z, $01ff
    rlca
    inc bc
    db $e3
    inc bc

jr_0c2_73ac:
    ei
    inc bc
    db $db
    inc hl
    sbc c
    ld h, c
    cp c
    ld b, c
    ld sp, hl
    ld b, b
    ld a, c
    ret nz

    ld sp, hl
    ret nz

    cp b
    pop bc
    ld a, [hl+]
    pop de
    ld a, [bc]
    pop af
    ld [$1311], a
    ld bc, $0313
    inc de
    inc bc
    inc de
    inc bc
    dec d
    ld bc, $209d
    db $fd
    ld [bc], a
    ld [bc], a
    rst $38
    or e
    ld a, a
    inc bc
    ccf
    ld bc, $283f
    rla
    ld a, [bc]
    dec d
    sbc d
    dec b
    jr z, jr_0c2_7375

    sbc l
    nop
    dec d
    adc b
    rst $18
    add b
    jp nc, $70cc

    db $ec
    rst $38
    nop
    rlca
    nop
    db $e3
    ld bc, $01fb
    db $db
    ld hl, $6199
    ld sp, hl
    ld b, c
    ld sp, hl
    ld b, c
    ld a, c
    ret nz

    cp c
    ret nz

    cp b
    jp $fffc


    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    pop hl
    rst $38
    ldh a, [rIE]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$0009], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0012
    nop
    nop
    nop
    nop
    nop
    nop
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_0c2_74a4

    ld a, [de]
    dec de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0c2_74bb

    ld [hl+], a
    inc hl
    inc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0c2_74a4:
    dec h
    ld h, $27
    jr z, jr_0c2_74d2

    ld a, [hl+]
    dec hl
    inc l
    dec l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, $2f
    jr nc, jr_0c2_74e9

    ld [hl-], a
    inc sp
    inc [hl]

jr_0c2_74bb:
    dec [hl]
    ld [hl], $00
    nop
    nop
    nop
    nop
    nop
    nop
    scf
    jr c, jr_0c2_7500

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    nop
    nop
    nop
    nop
    nop

jr_0c2_74d2:
    nop
    nop
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l

jr_0c2_74e9:
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0c2_7500:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0707
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
    ld bc, $0202
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
    ld bc, $0202
    ld [bc], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    sbc a
    rst $38
    xor a
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    call c, $deff
    rst $38
    rst $18
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
    cp $79
    cp $fd
    cp $bc
    rst $38
    ld hl, sp-$01
    ret c

    rst $38
    ld hl, sp-$01
    jr nc, @+$01

    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret c

    cp $d9
    db $fc
    call c, $fefc
    db $fc
    rst $18
    db $fc
    db $dd
    cp $de
    db $fc
    rst $18
    db $fc
    rst $38
    db $fd
    pop af
    db $fc
    or d
    db $fc
    cp e
    db $fc
    or $fd
    ei
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
    rst $38
    rst $38
    ld l, [hl]
    db $fc
    ld [hl], h
    db $fc
    ld sp, hl
    db $fc
    pop af
    cp $f1
    cp $f0
    rst $38
    ldh a, [rIE]
    add sp, -$01
    add sp, -$01
    ld b, h
    rst $38
    call nz, $87ff
    cp $87
    cp $47
    cp $cd
    cp $ff
    cp $ff
    cp $ff
    cp $bf
    cp $9f
    cp $3f
    cp $10

jr_0c2_7721:
    rst $38
    jr c, @+$01

    inc a
    rst $38
    ld e, $ff
    ld e, $ff
    rra
    rst $38
    rrca
    rst $38
    add a
    rst $38
    rst $38
    rst $38
    cp l
    rst $38
    rst $30
    rst $38
    jp nz, Jump_000_00ff

    rst $38
    rlca
    rst $38
    rlca
    ld hl, sp-$04
    add e
    and e
    call z, Call_0c2_6d92
    add b
    ld a, a
    add sp, $10
    ldh [rNR10], a
    ldh [rNR24], a
    ld h, c
    add b
    ld a, a
    add b
    ld b, d
    add b
    ld h, c
    add b
    ld [hl], e
    add b
    db $76
    add b

jr_0c2_7758:
    db $dd
    ld [bc], a
    add $18
    db $e4
    jr jr_0c2_7758

    nop
    rrca
    ld bc, $0345
    di
    jr nz, jr_0c2_7721

    ld [hl], c
    inc a
    ld h, e
    ld a, h
    scf
    db $fc
    ld a, a
    ld a, h
    rst $38
    ld a, h
    cp a
    cp $7f
    ld a, h
    rst $38
    db $fc
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $30
    rrca
    ei
    rlca
    rra
    db $e3
    push bc
    dec sp
    rst $38
    rra

jr_0c2_7794:
    ld [hl], c
    adc a
    ld a, b
    add a
    dec [hl]
    adc d
    dec de
    add h
    xor h
    ld [bc], a
    or l
    ld b, b
    ret c

    jr nz, @+$2e

    db $10
    ld h, $18
    ld c, $70
    ld c, $b0
    rla
    ldh [$f6], a
    nop
    ret nz

    ld bc, $9542
    ld [bc], a
    sbc l
    ld a, e
    add h
    dec sp
    call nz, $c837
    ei
    call nz, $f3fc
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    db $db
    rst $38
    db $db
    rst $38
    ld hl, sp-$01
    db $fc
    inc bc
    ld a, $c1
    rlca
    nop
    jr c, jr_0c2_7794

    ld a, h
    add b
    ld [hl], h
    nop
    dec l
    ret nc

    ld e, $e0
    ld a, $c1
    rst $30
    ld [$0df3], sp
    and l
    add hl, de
    ld c, c
    dec a
    dec bc
    dec e
    add hl, de
    ld a, $32
    ld a, h
    ld bc, $357e
    cp $e7
    db $fc
    ld b, b
    db $fc
    add b
    ld hl, sp+$1a
    ldh a, [rIF]
    ldh a, [$0c]
    di
    cpl
    ldh a, [rTMA]
    ld hl, sp+$5c
    ldh [rIF], a
    ldh a, [rDIV]
    di
    inc c
    di
    ld bc, $00f8
    ld hl, sp+$0f
    ldh a, [$c9]
    or $c0
    rst $38
    inc b
    rst $38
    nop
    rst $38
    adc d
    push af
    and [hl]
    ld sp, hl
    add [hl]
    ld sp, hl
    ld b, [hl]
    ld sp, hl
    inc bc
    db $fc
    inc hl
    db $fc
    and b
    rst $38
    ldh [rIE], a
    pop bc
    ld a, $e3
    inc e
    dec b
    ld c, $1f
    inc b
    inc c
    inc bc
    adc [hl]
    inc bc
    ld c, a
    rlca
    dec a
    nop
    db $fc
    nop
    ld [hl], h
    ld [$c03e], sp

Jump_0c2_783c:
    sbc [hl]
    ld h, b
    add hl, bc
    ldh a, [$5c]
    and b
    ld [hl], d
    add b
    add hl, sp
    add b
    inc e
    nop
    xor $00
    rst $38
    nop
    inc bc
    ldh [rP1], a
    ldh a, [$c5]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    inc bc
    call c, $f10f
    dec l
    inc de
    inc bc
    ccf
    ld d, c
    rrca
    adc e
    rlca
    rlca
    ld [bc], a
    dec bc
    inc b
    ld [bc], a
    dec c
    and b
    rra
    ret nz

    cp a
    ld a, [$8c41]
    add e
    inc b
    dec bc
    ld c, h
    inc bc
    ld b, h
    inc bc
    ld c, h
    inc bc
    dec c
    ld [bc], a
    ccf
    nop
    sbc [hl]
    ld bc, $01ba
    cp [hl]
    ld bc, $019a
    sbc b
    ld bc, $01f8
    ld e, $01
    ld a, [de]
    ld bc, $0118
    jr jr_0c2_7897

    ld a, h

jr_0c2_7897:
    ld bc, $01ff
    ld a, a
    ld bc, $019f
    adc c
    ld bc, $0100
    nop
    ld bc, $3b3a
    ld c, $0f
    rrca
    rrca
    rrca
    rrca
    add hl, de
    add hl, de
    add hl, bc
    add hl, bc
    ld e, l
    cp e
    call $f73b
    add hl, bc
    add a
    nop
    or b
    ld [$48b7], sp
    ld a, [hl-]
    pop bc
    rrca
    ldh a, [$08]
    rst $30
    pop bc
    rst $38
    pop bc
    ld a, a
    xor $3f
    ld l, [hl]
    rra
    jr z, @+$21

    dec l
    ld e, $1e
    rrca
    adc h
    rrca
    ld e, a
    inc b
    xor l
    ld b, [hl]
    cp $04
    call $cb30
    jr nc, jr_0c2_78ee

    nop
    or e
    ld bc, $ffe3
    ret c

    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    db $e3
    rst $38
    ldh [rIE], a
    ld a, a
    adc a

jr_0c2_78ee:
    rst $38
    rra
    ld e, a
    cp a
    ccf
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld h, d
    db $fd
    ld c, [hl]
    pop af
    inc b
    ei
    nop
    rst $38
    rrca
    ldh a, [$9c]
    db $e3
    daa
    jp $fc02


    ld e, c
    sbc h
    inc c
    jr jr_0c2_7911

    ld [$0804], sp
    nop

jr_0c2_7911:
    nop
    rst $38
    nop
    nop
    rst $38
    db $fc
    inc bc
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
    ld a, a
    add b
    ld a, h
    add e
    ld a, h
    add e
    ld a, h
    add e
    ld a, e
    add h
    ld c, e
    or h
    ld b, h
    cp e
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
    add b
    rst $38
    add b
    rst $38
    add l
    rst $38
    rst $38
    rst $38
    rlca
    rlca
    nop
    nop
    nop
    nop
    add b
    add b
    nop
    nop
    ld e, $e3
    cp h
    jp $ff80


    call nz, $03ff
    rst $38
    add a
    ld a, a
    sub a
    ld a, a
    ld e, $ff
    rlca
    rst $38
    daa
    rst $38
    rst $30
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $30
    rrca
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    inc sp
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    or e
    ret nz

    rst $38
    ldh [$ef], a
    ldh a, [rIE]
    ld hl, sp-$05
    db $fc
    cp l
    cp $82
    ld a, a
    pop de
    cp a
    add hl, bc
    rst $38
    jr nz, @+$01

    add b
    ld a, a
    add a
    ld a, a
    ld bc, $62ff
    rra
    nop
    rra
    ld c, $1f
    ccf
    rra
    rra
    ccf
    nop
    nop
    ret nz

    ld a, $04
    ld a, [$fa04]
    nop
    cp $00
    cp $c0
    ld a, $e0
    ld e, $f5
    dec bc
    push hl
    dec de
    add l
    ld a, e
    ld b, l
    cp e
    ld [hl], l
    adc e
    ld b, c
    cp a
    ld de, $83ef
    ld a, a
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    ld b, $fe
    ld b, $fe
    rrca
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $e4
    rst $38
    ld b, $f9
    dec h
    db $d3
    adc c
    scf
    db $fc
    inc bc
    dec l
    di
    rrca
    rst $38
    rra
    rst $38
    ld de, $30ff
    rst $38
    and $ff
    ccf
    rst $38
    dec a
    rst $38
    dec h
    rst $38
    ld a, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    scf
    rst $38
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
    db $e3
    nop
    ld [hl], c
    add b
    ld a, b
    add b
    dec a
    ret nz

    cp $60
    cp e
    ld [hl], h
    push hl
    ld a, [hl-]
    ld [hl+], a

jr_0c2_7a1b:
    db $fd
    or $f8
    inc a
    ldh a, [$8c]
    ldh a, [$8c]
    ld hl, sp+$01
    db $fc
    ld b, e
    cp [hl]
    ld c, b
    or l
    sbc e
    db $e4
    db $fc
    add e
    ret nc

    add l
    rst $38
    add b
    adc l
    ldh a, [$83]
    ld hl, sp-$79
    ld hl, sp+$04
    ei
    jr z, jr_0c2_7a1b

    inc c
    rst $38
    ld [$80ff], sp
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    pop af
    cp $f5
    ld a, [$faa5]
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    pop de
    cp $89
    cp $01
    cp $00
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    nop
    rst $38
    jr @+$01

    or b
    ld a, a
    db $10
    rst $38
    ld bc, $a0ff
    rst $18
    ld b, l
    cp a
    ld a, [hl]
    rst $38
    rst $08
    rst $38
    rst $00
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rrca
    rst $38
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
    cp $fe
    db $fc
    db $fc
    rst $38
    ld hl, sp-$12
    rst $38
    cp $ff
    rst $38
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    di
    rst $38
    ld a, [$7c07]
    inc bc
    rra
    add b
    add b
    ld b, b
    rst $18
    jr nz, jr_0c2_7b26

    nop
    cp c
    nop
    dec e
    nop
    add d
    nop
    ld c, c
    ld [bc], a
    inc l
    inc bc
    ld e, $01
    rra
    nop
    ei
    inc b
    rst $38
    nop
    ld h, e
    add b
    ld [hl], b
    ret nz

    cp b
    ld h, b
    ld c, h
    or b
    ld h, a
    sbc b
    inc h
    rst $18
    ld c, $ff
    dec bc
    rst $38
    rrca
    rst $38
    rla
    rst $38
    rla
    rst $38
    rla
    rst $38
    rrca
    rst $38
    ld a, a
    rst $38
    ld l, a
    rst $38
    ld h, a
    rst $38
    rst $08
    rst $38
    ld l, a
    rst $38
    ld a, a
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    rrca
    rst $38
    sbc a
    ld a, a
    sbc a
    ld a, a
    rra
    rst $38
    ccf
    rst $38
    ld a, $ff
    inc c
    rst $38
    dec e
    rst $38
    ld e, a
    rst $38
    ccf
    rst $38
    rst $18
    rst $38
    rst $38
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
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f1]
    ldh [$f1], a
    ret nz

    cp $80
    cp $00
    ld e, $08
    ld e, $00
    rra
    pop af
    ld c, $dd
    rst $38
    cp $ff
    db $fc
    rst $38

jr_0c2_7b26:
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38

jr_0c2_7b2a:
    cp $ff
    ld b, $ff
    ld [bc], a
    rst $38
    add b
    ld a, a
    jp nz, $e73d

    jr jr_0c2_7b2a

    inc c
    ld l, e
    inc d
    pop af
    ld c, $30
    rst $08
    ldh a, [rIF]
    ldh a, [$03]
    db $76
    add c
    ld [hl], e
    add b
    db $d3
    ld bc, $034b
    inc hl
    inc bc
    sub e
    inc bc
    ld e, a
    inc bc
    dec l
    ld de, $0519
    xor c
    inc b
    db $fd
    ret c

    db $fc
    ld hl, sp-$56
    ret nc

    or a
    ret nz

    rst $38
    ldh [$ef], a
    ldh a, [$f7]
    ld sp, hl
    ld a, e
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
    ld a, h
    rst $38
    ld a, c
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$0d
    db $fd
    db $e3
    db $fd
    pop hl
    rst $18
    cp c
    add a
    ld sp, $1f0f
    nop
    rla
    ld h, b
    inc b
    db $e3
    inc c
    db $e3
    ld [$3807], sp
    rlca
    jr nc, jr_0c2_7bb7

    jr nc, jr_0c2_7bb9

    jr nz, jr_0c2_7bcb

    ld hl, $f01f
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0c2_7bb7:
    nop
    nop

jr_0c2_7bb9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0c2_7bcb:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$0009], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0012
    nop
    nop
    nop
    nop
    nop
    nop
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_0c2_7c44

    ld a, [de]
    dec de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0c2_7c5b

    ld [hl+], a
    inc hl
    inc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0c2_7c44:
    dec h
    ld h, $27
    jr z, jr_0c2_7c72

    ld a, [hl+]
    dec hl
    inc l
    dec l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, $2f
    jr nc, jr_0c2_7c89

    ld [hl-], a
    inc sp
    inc [hl]

jr_0c2_7c5b:
    dec [hl]
    ld [hl], $00
    nop
    nop
    nop
    nop
    nop
    nop
    scf
    jr c, jr_0c2_7ca0

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    nop
    nop
    nop
    nop
    nop

jr_0c2_7c72:
    nop
    nop
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, c
    ld c, d
    nop
    nop
    nop

jr_0c2_7c89:
    nop
    nop
    ld c, e
    ld c, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0c2_7ca0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    ld bc, $0707
    ld [bc], a
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
    ld bc, $0202
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
    ld bc, $0202
    ld [bc], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    sbc a
    rst $38
    xor a
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    call c, $deff
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    cp $7e
    cp $7e
    db $fc
    ld a, b
    cp $fc
    cp $bc
    rst $38
    ld hl, sp-$01
    ret c

    rst $38
    ld hl, sp-$01
    jr nc, @+$01

    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    reti


    cp $d9
    db $fc
    db $dd
    db $fc
    db $fd
    db $fc
    rst $18
    cp $df
    cp $df
    cp $dd
    db $fc
    db $fd
    db $fc
    pop af
    db $fc
    or b
    db $fc
    cp b
    db $fc
    db $f4
    db $fc
    ld hl, sp-$04
    ld a, [$fffc]
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $6f
    cp $76
    db $fc
    ld a, [$f0fc]
    cp $f0
    cp $f0
    rst $38
    ldh a, [rIE]
    add sp, -$01
    add sp, -$01
    ld b, h
    rst $38
    call nz, $86ff
    db $fc
    add h
    db $fc
    ld b, a
    cp $cf
    cp $ff
    cp $ff
    cp $ff
    cp $bd
    db $fc
    sbc a
    cp $3f
    cp $10
    rst $38
    jr c, @+$01

    inc a
    rst $38
    ld e, $ff
    ld e, $ff
    rra
    rst $38
    rrca
    rst $38
    add a
    rst $38
    rst $38
    rst $38
    cp l
    rst $38
    rst $30
    rst $38
    jp nz, Jump_000_00ff

    rst $38
    rlca
    rst $38
    ld bc, $2cf8
    ret nz

    rlc b
    rst $08
    inc b
    adc h
    rlca
    and e
    ld a, $13
    ld e, $9f
    inc c
    rla
    adc a
    rlca
    sbc a
    cpl
    sbc a
    add hl, hl
    sbc a
    ld e, b
    cp a
    ld a, h
    adc a
    inc c
    rlca
    ld a, h
    rlca
    db $fc
    rlca
    cp [hl]
    ld b, a
    sbc d
    ld h, a
    ret c

    daa
    jp c, $ee27

    scf
    sub $3f
    call c, Call_0c2_4c3f
    cp a
    inc c
    rst $38
    ld a, h
    add a
    adc d
    rlca
    adc b
    rlca
    add b
    rlca
    adc d
    rlca
    adc h
    rlca
    sbc l
    ld b, a
    ld sp, hl
    rla
    ld sp, hl
    rra
    dec hl
    rst $08
    rst $08
    rlca
    rst $08
    rlca
    adc e
    rlca
    adc a
    rlca
    dec bc
    rlca
    sub a
    rrca
    sbc a
    rrca
    adc a
    rra
    dec a
    sbc a
    ld [hl], $9f
    ld l, e
    or a
    ld a, e
    add a
    dec bc
    rlca
    ld a, a
    rlca
    rst $38
    rlca
    cp a
    ld b, a
    sbc e
    ld h, a
    reti


    daa
    rst $38
    daa
    rst $28
    scf
    db $d3
    ccf
    rst $18
    ccf
    ld l, e
    cp h
    ld h, c
    db $fc
    ld a, c
    add h
    add hl, bc
    call nz, $c00c
    call nz, $fec0
    ldh a, [$fb]
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    db $db
    rst $38
    db $db
    rst $38
    ld hl, sp-$01
    db $f4
    inc bc
    ld [hl-], a
    dec c
    sub e
    inc c
    sbc a
    nop
    ret c

    ld bc, $09de
    rst $10
    rrca
    ei
    rlca
    rrca
    rst $38
    jp $0fff


    rst $38
    nop
    rst $38
    add hl, bc
    cp $05
    ld a, [$fa05]
    ld d, $f8
    ld bc, $05fe
    cp $07
    db $fc
    add b
    ld a, h
    add b
    ld a, b
    ld a, [de]
    ldh a, [rIF]
    ldh a, [$0c]
    di
    cpl
    ldh a, [rTMA]
    ld hl, sp+$5c
    ldh [rIF], a
    ldh a, [rDIV]
    di
    inc c
    di
    ld bc, $00f8
    ld hl, sp+$0f
    ldh a, [$c9]
    or $c0
    rst $38
    inc b
    rst $38
    nop
    rst $38
    adc d
    push af
    and [hl]
    ld sp, hl
    add [hl]
    ld sp, hl
    ld b, [hl]
    ld sp, hl
    inc bc
    db $fc
    inc hl
    db $fc
    jr nz, @+$01

    ld h, b
    rst $38
    pop hl
    cp $63
    db $fc
    push bc
    cp $c3
    db $fc
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    and h
    rst $38
    ld b, h
    rst $38
    ldh [rIE], a
    add b
    rst $38
    ld b, $ff
    ld e, $ff
    db $fd
    ld b, $fc
    rrca
    jp c, $bf3f

    ld h, c
    cp $00
    cp $00
    ld bc, $c100
    nop
    push bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    inc hl
    call c, $f609
