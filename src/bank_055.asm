SECTION "ROM Bank $055", ROMX[$4000], BANK[$55]

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sbc a
    nop
    rst $28
    nop
    add b
    add b
    ld h, [hl]
    ld h, [hl]
    or b
    or b
    or $f6
    and l
    and l
    add b
    add b
    ld h, b
    ldh [$c6], a
    and $02
    ld [bc], a
    add hl, bc
    add hl, bc
    adc e
    adc a
    add a
    rst $00
    add c
    rst $38
    add a
    rst $30
    inc e
    cp $9e
    sbc [hl]
    inc b
    inc a
    cp h
    db $fc
    ld a, e
    ei
    rst $28
    rst $28
    db $fd
    rst $38
    pop bc
    rst $18
    inc e
    ld a, h
    ld c, h
    db $ec
    add hl, hl
    xor a
    cp a
    cp a
    inc [hl]
    cp a
    rst $28
    rst $28
    sub $f6
    and c
    pop hl
    ret nz

    ret nz

    ld b, b
    ret nz

    db $10
    ret nc

    dec sp
    ei
    ld e, [hl]
    rst $18
    push bc
    rst $00
    ret c

    db $db
    inc [hl]
    ccf
    inc hl
    scf
    ld e, d
    ld a, [hl]
    call z, Call_055_58fc
    ld hl, sp-$51
    rst $38
    jr c, @+$01

    or d
    rst $38
    db $ed
    rst $38
    sub c
    rst $38
    dec a
    db $fd
    jr c, jr_055_40aa

    ld h, [hl]
    ld h, [hl]
    db $dd
    db $dd
    db $eb
    db $eb
    xor d
    xor [hl]
    ld a, d
    ld a, d
    dec e
    dec e
    ldh a, [$f0]
    add hl, de
    sbc c
    ld h, a
    ld h, a
    ld hl, sp-$08
    ret nz

    ret nc

    pop af
    pop af
    sbc [hl]
    sbc [hl]
    ld [bc], a
    ld [bc], a
    ld h, $26
    ld a, a
    nop
    db $db
    nop
    db $fd
    nop
    ld a, a
    nop
    rst $38
    nop
    ei
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
    inc b
    rst $38
    nop
    rst $38
    inc b

jr_055_40aa:
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
    ld l, b
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, b
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
    ret nc

    rst $38
    ld d, b
    rst $38
    nop
    rst $38
    jr nc, @+$01

    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    di
    pop bc
    ld sp, hl
    ldh [$fe], a
    ld hl, sp-$01
    rst $38
    ld a, a
    di
    or a
    pop hl

Call_055_40fe:
    or a
    ld [c], a
    cp d
    ldh [$fc], a
    ldh [$3c], a
    ldh a, [$30]
    db $fc
    dec sp
    rst $38
    sbc a
    rst $38
    rst $28
    rst $38
    rst $00
    rst $38
    ld hl, sp-$08
    and c
    pop hl
    cp $fe
    adc a
    rst $38
    inc de
    rra
    scf
    ccf
    dec sp
    dec sp
    dec h
    dec h
    ccf
    ccf
    sbc h
    cp h
    and h
    or h
    inc a
    inc a
    sbc [hl]
    cp $f9
    ld sp, hl
    ld sp, hl
    ld sp, hl

Jump_055_412e:
    ld h, a
    ld a, a
    jr jr_055_41b1

    and [hl]
    rst $38
    inc bc
    rst $38
    ld [bc], a
    cp $17
    rst $38
    adc $cf
    adc $cf
    xor [hl]
    cp a
    add b
    cp e
    ccf
    cp a
    ld [hl], h
    rst $38
    ld a, e
    rst $38
    ldh a, [rIE]
    ld d, h
    rst $30
    inc e
    rra
    ld b, $07
    jr nz, jr_055_4172

    ld a, b
    ld a, b
    ld h, a
    ld l, a
    ld c, d
    ld c, d
    ld l, a
    ld l, a
    rrca
    rrca
    ld h, l
    ld h, l
    ld c, $0e
    rst $38
    nop
    cp l
    nop
    db $fd
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, a
    nop
    rst $38
    nop

jr_055_4172:
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
    ld bc, $01ff
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld bc, $03ff
    rst $38
    ld bc, $02ff
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld bc, $02ff
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38

jr_055_41b1:
    inc bc
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $05ff
    rst $38
    ld bc, $02ff
    rst $38
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
    ld bc, $08ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    pop de
    rst $38
    ld e, $ff
    inc bc
    inc c
    rst $38
    ld [hl], d
    rst $08
    db $fd
    cp $fe
    rst $38
    add [hl]
    rst $38
    ld [hl], e
    adc a
    add hl, bc
    rst $30
    ret nz

    rst $38
    inc hl
    db $fc
    add sp, $1f
    db $e3
    rra
    pop af
    rrca
    pop hl
    rra
    db $e3
    rra
    sbc a
    rst $38
    nop
    rst $38
    rra
    nop
    rrca
    add b
    ld b, a
    add b
    ld c, a
    ret nz

    sbc a
    jp nc, $f40f

    dec c
    ld hl, sp+$04
    db $fc
    rst $10
    ldh a, [$3c]
    inc a
    ld e, h
    ld e, h
    dec bc
    rrca
    inc e
    ld e, $58
    ld e, b
    ret


    ret


    ldh [$e0], a
    xor b
    xor b
    ld [hl], h
    ld [hl], h
    db $fc
    db $fc
    dec sp
    dec sp
    or a
    cp a
    adc e
    rst $18
    and a
    rst $30
    pop de
    pop de
    add l
    add l
    add $c7
    pop bc
    pop bc

jr_055_4236:
    xor h
    xor h
    ld [hl], a
    rst $38
    ld d, $fe
    jr jr_055_4236

    ld e, h
    db $fc
    ld a, [bc]
    ld a, [bc]
    ld b, d
    ld b, d
    sbc e
    sbc e
    ccf
    cp a
    and a
    and a
    ld a, l
    ld a, l
    ld h, [hl]
    ld h, [hl]
    ld h, e
    ld h, a
    ld l, a
    ld l, a
    cp [hl]
    cp [hl]
    db $ec
    db $ec
    db $ec
    db $ed
    ld c, [hl]
    ld c, [hl]
    ld a, d
    ld a, d
    add hl, de
    add hl, de
    add hl, bc
    add hl, bc
    rst $28
    nop
    cp $00
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
    rla
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    rst $28
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
    ld e, a
    rst $38
    ei
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $08
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld a, a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    sbc $ff
    ld a, e
    rst $38
    call c, $feff
    rst $38
    ld e, [hl]
    rst $38
    xor $ff
    db $76
    rst $38
    ld a, h
    rst $38
    ld a, [hl]
    rst $38
    cp $ff

Jump_055_42c3:
    call c, $bcff
    rst $38
    cp h
    rst $38
    ld a, h
    rst $38
    jr c, @+$01

    inc e
    rst $38
    inc c
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    cp b
    rst $38
    nop
    rst $38
    rst $38
    ld b, $ff
    ld b, b
    cp a
    xor e
    ld e, a
    ld a, e
    sbc a
    call $7eff
    rst $38
    inc h
    ei
    inc de
    db $fc
    add hl, bc
    cp $0c
    rst $38
    ld e, e
    rst $20
    dec e
    db $e3
    xor [hl]
    pop de
    cp a
    ret nz

    rst $10
    add sp, $4f
    ldh a, [$27]
    ld hl, sp+$23
    db $fc
    ld bc, $00fe
    rst $38
    ld [$0eff], sp
    rst $38
    reti


    rst $38
    inc e
    rst $38
    and c
    rst $38
    ld b, c
    rst $38
    ret nz

    ccf
    pop hl
    rra

jr_055_431a:
    add sp, $1f
    ld a, a
    adc a
    ld [hl], a
    adc a
    and a
    add l
    di
    ldh a, [$e1]
    pop af
    pop bc
    pop hl
    jr nz, jr_055_431a

    nop
    ld hl, sp+$70
    ld hl, sp+$00
    db $fc
    ld [hl], l
    db $f4
    ld a, [de]
    ld a, [$fcec]
    db $fd
    db $fc
    sbc c
    sbc b
    ld [$0208], sp
    ld [bc], a
    inc hl
    inc hl
    ld d, $16
    ld [hl], d

Jump_055_4343:
    ld a, d
    ld b, b
    call nz, Call_055_5b00

jr_055_4348:
    reti


    rst $38

jr_055_434a:
    pop hl
    rst $38

jr_055_434c:
    cp [hl]
    cp $87
    rst $20

jr_055_4350:
    and [hl]
    or [hl]
    db $76
    cp $5f
    rst $38
    add [hl]

jr_055_4357:
    cp $da

jr_055_4359:
    cp $20
    ld a, a
    inc c
    inc a
    nop
    rrca
    add hl, de
    rst $38
    db $10
    rst $38
    ld c, l
    rst $38
    ld c, a
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], e
    rst $30
    nop
    dec c
    ld a, [c]
    nop
    rst $38
    sbc c
    ld h, a
    add hl, de
    and $0a
    db $f4
    nop

jr_055_437b:
    db $fc
    jr nz, @-$22

    ld a, [hl+]

jr_055_437f:
    call nc, $fe01
    nop
    rst $38
    rst $38
    nop
    jr nz, jr_055_4348

    jr c, jr_055_434a

    jr nc, jr_055_434c

    jr c, @-$3e

    jr nc, jr_055_4350

    ld a, b
    add b
    ld a, b
    add b
    jr c, jr_055_4357

    jr c, jr_055_4359

    jr jr_055_437b

    jr @-$1d

    jr jr_055_437f

    ld [$98f1], sp
    pop hl
    ld a, [bc]
    pop af
    add d
    pop af
    add d
    pop af
    add $f1
    and $f1
    call nz, $c4f3
    di
    push bc
    ld a, [c]
    db $ec
    di
    add sp, -$09
    add sp, -$09
    ldh [rIE], a
    ldh a, [$ef]
    ldh [rIE], a
    pop hl
    rst $38
    inc d
    nop
    stop
    db $10
    ld bc, $0303
    ld bc, $0601
    ld b, $03
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    rlca
    inc b
    dec b
    ld b, $06
    dec b
    dec b
    dec b
    dec b
    rlca
    rlca
    ld bc, $b803
    ld bc, $0004
    ld bc, $0100
    nop
    jr nz, jr_055_43ec

jr_055_43ec:
    cp $00
    rst $38
    nop
    ldh a, [rIF]
    db $f4
    dec bc
    ld a, b
    add a
    ld de, $80ee
    rst $38
    xor $ff
    ld a, [hl]
    rst $38

jr_055_43fe:
    add c

Jump_055_43ff:
    ld a, a
    rst $38

jr_055_4401:
    nop
    cp [hl]
    ld b, c
    rst $38
    nop
    cp a
    ld b, b
    ld a, e
    add h
    dec e
    ld [c], a
    nop
    rst $38
    add b
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ld a, [$c7ff]
    rst $38
    jr jr_055_4401

    ld a, a
    add b
    ld e, a
    and b
    cp e
    call nz, $e01f
    ld b, a
    ld hl, sp-$11
    ldh a, [$c5]
    ld a, [$fef1]
    ld a, h
    rst $38
    sbc [hl]
    ld a, a
    and a
    ld a, a
    ccf
    add hl, sp
    ccf
    nop
    sbc a
    nop
    ccf
    nop
    rst $38
    dec b
    rst $38
    inc bc
    rst $38
    rst $00
    cp a
    push hl
    inc [hl]
    ld [hl], $3f
    ccf
    ld a, e

jr_055_4445:
    ld a, e
    ld l, d
    ld a, d
    ld h, e
    ld h, e
    jr nc, jr_055_43fe

    and b
    ld [c], a
    or b
    ld a, [c]
    ld h, c
    di
    and d
    xor e
    jp nz, $a0e6

    and h
    jr z, jr_055_4445

    ld e, c
    reti


    ld [hl], c
    ld [hl], c
    inc bc
    inc bc
    ld a, l
    rst $38
    ld a, l
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    rst $18
    rst $38
    rst $10
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rra
    sbc a
    ld a, a
    rst $38
    rst $38
    ld a, a
    rst $38
    ld e, a
    ccf
    ccf
    rra
    ld e, $1f
    ld a, $1f
    ld e, a
    ccf
    ld a, a
    ccf
    rst $38
    rst $38
    ld bc, $0100
    nop
    inc bc
    nop
    ld b, $01
    inc c
    inc bc
    add hl, sp

jr_055_448f:
    rlca
    ei
    ld c, $f7
    ld c, $fe
    ld a, [de]
    db $ec
    inc [hl]
    db $ec
    jr nc, jr_055_448f

    inc [hl]
    db $f4
    inc [hl]
    push bc
    ld h, l
    call $c96d
    ld l, c
    ret


    ld l, c
    ret


    ld l, c
    push bc
    ld a, l
    ret nz

    ld a, a
    add b
    ld a, a
    or b
    ld e, a
    xor [hl]
    res 7, [hl]
    jp c, $cebe

    cp d
    jp z, $cebe

    ld a, $de
    db $76
    sub $56
    sub $36
    sub [hl]
    ld [hl], $96

Call_055_44c4:
    inc d
    ld d, h
    dec b
    dec [hl]
    pop de
    push de
    db $fc
    db $fd
    rst $38
    rst $38
    cp $ff
    cp a
    cp a
    sbc $df
    sbc $de
    ld a, d
    ei
    jr c, jr_055_4553

    adc h
    cp a
    call nz, $f0ce
    rst $30
    ld sp, hl
    ei
    ld hl, sp-$01
    ld a, b
    ld a, [$7b11]
    add d
    ld d, $e2
    ld b, $70
    inc b
    cp c
    inc bc
    call c, $f601
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    call c, RST_00
    nop
    cp a
    nop
    db $fc
    inc bc
    ld a, [hl]
    add c
    rst $38
    nop
    db $ec
    inc de
    db $f4
    rrca
    ld b, a
    cp a
    nop
    rst $38
    ld a, [hl+]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $78ff
    add a
    rst $38
    nop
    ei
    inc b
    rst $38
    nop
    db $e3
    inc e
    adc b
    ld a, a
    call z, $a63f
    ld e, a
    rst $20
    rra
    ld [hl], e
    adc a
    nop
    rst $38
    dec b
    rst $38
    rst $38
    ld a, h
    rst $38
    sbc l
    rst $38
    ret


    rst $38
    pop af
    rst $38
    di
    rst $38
    nop

Jump_055_453c:
    rst $38
    jr nz, @+$01

    nop
    ld h, b
    ld h, b
    add sp, -$16
    ld e, b
    ld e, b
    ld [hl], b
    ld [hl], b
    ld h, b
    ld [hl], b
    db $10
    ld d, b
    ld bc, $5c41
    ld e, h
    inc e
    inc e
    dec a

jr_055_4553:
    db $fd
    rra
    ld e, a
    pop af
    rst $38
    cp a
    rst $38
    inc [hl]
    cp $2f
    rst $38
    ld sp, $bbf1
    cp e
    inc hl
    inc hl
    ld [hl], e
    ld [hl], e
    ld c, $2f
    jr z, jr_055_4599

    rlca
    rlca
    add hl, bc
    dec c
    dec c
    dec c
    or $00
    rst $38
    nop
    rst $38
    nop
    ld b, a
    nop
    daa
    nop
    rlca
    nop
    adc a
    nop
    rrca
    nop
    jr jr_055_4582

jr_055_4582:
    xor b
    nop

jr_055_4584:
    and b
    nop
    add b
    nop
    dec a
    dec a
    jp nz, $b9ff

    xor l
    add hl, sp
    sbc h
    or c
    sbc h
    or c
    sbc h
    sub a
    sbc [hl]
    sub h
    sbc h
    or a

jr_055_4599:
    cp h
    or e
    sbc b
    or e
    cp b
    or l
    cp h
    dec h
    dec a
    inc hl
    jr c, jr_055_45d0

    jr c, jr_055_45d2

    ld a, [hl-]
    dec hl
    ld a, [hl-]
    daa
    inc sp
    rlca
    pop af
    rlca
    di
    db $10
    rst $38
    db $10
    ld a, a
    db $10
    ld a, a
    inc d
    ld [hl], a
    ld b, c
    ld h, c
    add c
    pop hl
    set 5, e
    adc [hl]
    ld [c], a

jr_055_45c0:
    sbc h
    ldh [$a0], a
    ldh [rNR44], a
    db $e3
    inc bc
    pop bc
    inc bc
    jp nz, $d050

    inc d
    db $f4
    jr nz, jr_055_45c0

jr_055_45d0:
    db $10
    sub b

jr_055_45d2:
    jr nc, jr_055_4584

    ld a, [hl-]
    cp d
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    cp a
    cp a
    ccf
    ccf
    ld h, a
    ld h, a
    inc sp
    ld [hl], e
    ld c, a
    ld a, a
    ld h, e
    ld a, a
    ld a, b
    ld a, a
    ld l, [hl]
    ld l, a
    rst $20
    rst $20
    rst $38
    rst $38
    cp $fe
    ccf
    rst $38
    rra
    ccf
    adc a
    rra
    rlca
    rrca
    di
    rlca
    cp b
    inc bc
    db $fc
    nop
    rst $38
    or $ff
    ld hl, sp-$01
    db $fc
    rst $38
    ld hl, sp-$01
    inc c
    rst $38
    ld l, [hl]
    rst $38
    cp h
    rst $38
    ld [c], a
    or a
    rst $38
    rst $20
    rst $38
    ld a, [$7fff]
    rst $38
    rrca
    rst $38
    ld bc, $e4ff
    rra
    ld bc, $aaff
    ld a, a
    inc d
    rst $38
    inc b
    rst $38
    ld b, e
    rst $38
    dec b
    rst $38
    db $fc
    rst $38
    ld a, l
    rst $38
    ld d, e
    rst $38
    rst $38
    dec b
    rst $38
    ld d, c
    rst $38
    rlca
    rst $38
    call Call_055_64ff
    rst $38
    jr z, @+$01

    ld [$00ff], sp
    db $10
    sub b
    ld [hl+], a
    ld [hl+], a
    ld [bc], a
    ld [bc], a
    add hl, hl
    dec l
    ld hl, $9029
    sbc b
    sbc c
    ld sp, hl
    dec b
    dec e
    or e
    cp a
    ld [hl], c
    ld a, l
    ldh a, [$f7]
    ld [hl], e
    ld [hl], e
    ld a, [hl]
    ld a, a
    dec h
    dec a
    dec d
    rra
    ld bc, $a007
    and e
    sbc d
    cp e
    ld b, e
    db $db
    ld a, d
    cp $78
    ei
    cp a
    rst $38
    ei
    ei
    cp b
    db $fc
    sbc h
    cp $76
    ld [hl], a
    rst $18
    rst $18
    ld c, e
    ld c, e
    inc bc
    inc bc
    inc hl
    inc hl
    ld hl, $2223
    ld [hl+], a
    halt
    ld a, [de]
    nop
    ld a, [de]
    nop
    ld [bc], a
    nop
    add d
    add b
    jp nz, Jump_000_1dc0

    ld hl, sp-$37
    ld a, b
    push af
    ld a, h
    ld hl, sp+$7c
    sbc b
    ld c, [hl]
    adc a
    ld c, a
    dec b
    ld b, l
    adc a
    ld c, a
    cp $4e
    ld [$e8e2], a
    add sp, -$78
    adc b
    xor b
    xor b
    jr c, @-$46

    cp c
    cp b
    or c
    sub b
    or c
    or b
    ld sp, $3130
    db $10
    ld sp, $0df0
    db $fc
    dec b
    db $fc
    add l
    db $fc
    ld c, l
    ld a, h
    dec a
    inc a
    add hl, hl
    ld [$fcd6], sp
    sbc [hl]
    db $fc
    ld a, [hl]
    cp b
    xor $38
    inc c
    ld hl, sp-$34
    ld hl, sp-$34
    ld hl, sp-$34
    ld hl, sp-$24
    ld a, b
    sbc a
    ldh a, [$ef]
    ldh a, [$df]
    ldh a, [$cf]
    ldh a, [rIF]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$ef]
    ldh [$ef], a
    ldh [$e5], a
    ldh [$dc], a
    ret nz

    inc b
    add b
    ld [bc], a
    add b
    ld bc, $80c0
    add b
    ret nz

    ret nz

    nop
    nop
    ld b, b
    ld b, b
    ret nz

    ret nz

    add b
    add b
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
    rst $38
    nop
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
    jr nz, @+$01

    jr nz, @+$01

    or b
    rst $38
    add h
    rst $38
    inc b
    rst $38
    call c, $ffff
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld a, e
    rst $38
    rra
    rst $38
    rst $18
    rst $38
    ld [hl], l
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    db $fc
    rst $38
    ld a, h
    rst $38
    dec sp
    rst $38
    ld c, b
    rst $38
    ld b, [hl]
    rst $38
    add hl, bc
    ld [hl], d
    ld [hl], d
    ld d, e
    ld d, e
    ld b, e
    ld b, a
    ld h, d
    ld h, [hl]
    ld b, h
    ld h, a
    di
    di
    sub $f7
    ld a, [c]
    di
    jr nz, jr_055_47b2

    ld a, c
    ld a, c
    ld l, a
    rst $28
    dec [hl]
    or l
    or a
    rst $30
    xor h
    xor [hl]
    adc h
    adc [hl]
    xor d
    xor e
    adc e
    ei
    ld b, $e6
    ld a, [hl-]
    ld a, [$4d4d]
    ld b, l
    ld b, l
    ld [hl], h
    ld [hl], h
    ld hl, sp-$08
    cp d
    cp d
    ld [hl+], a
    ld [hl+], a
    ld a, c
    ld a, c
    ld c, c
    jp hl


    add hl, sp
    add hl, sp
    cp h
    cp h
    xor h
    xor h
    and b
    and b
    jr nz, jr_055_47a0

    sbc a
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cpl
    rra
    ld bc, $0000
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
    add b
    nop
    add b
    nop

jr_055_47a0:
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

jr_055_47b2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add l
    nop
    ccf
    nop
    ei
    nop
    db $ed
    nop
    ld l, a
    nop
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    db $fc
    inc bc
    db $f4
    dec bc
    or c
    ld c, a
    nop
    rst $38
    ld hl, $01df
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rst $38
    add sp, -$01
    ldh [rIE], a
    and b
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
    jr nz, @+$01

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
    add b
    rst $38
    ldh [rIE], a
    ret nc

    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    ld a, [c]
    rst $38
    adc c
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc a
    rst $38
    ld e, $ff
    rst $08
    rst $38
    add sp, -$01
    or b
    dec e
    dec e
    cpl

Call_055_4833:
    ccf
    ld b, e
    ld d, e
    ld [hl], e
    ld a, e
    inc de
    ld d, a
    pop af
    di
    ld h, c
    ld sp, hl
    jr nz, jr_055_48a4

    inc b
    cp $06
    scf
    ld [hl], a
    ld a, a
    ld h, c
    rst $28
    ld l, a
    rst $28
    cp a
    rst $38
    add e
    rst $38
    rst $08
    rst $38
    ld c, $fe
    sub [hl]
    sbc [hl]
    ld a, [hl]
    ld a, [hl]
    inc sp
    inc sp
    add hl, sp
    add hl, sp
    sbc c
    sbc c
    ld c, b
    ld c, b
    ld a, b
    ld a, b
    rst $38
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    push bc
    rst $38
    adc e
    rst $30
    dec a
    jp $834d


    dec b
    add e
    add l
    add e
    add e
    add a
    adc e
    add a
    adc a
    rst $00
    rst $10
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    ld a, a
    nop
    inc bc
    nop
    inc bc
    inc b
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    rlca
    ld [$0007], sp
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    ld de, $010f
    rra
    inc bc
    rra
    rlca
    rra
    rrca
    rra
    ccf
    rra
    rra
    ccf

jr_055_48a4:
    rra
    ccf
    ccf
    ccf
    ld a, a
    ccf
    rst $38
    ccf
    cp a
    ld a, a
    cp a
    ld a, a
    cp $7f
    cp $7f
    rst $38
    ld a, [hl]
    ld a, a
    cp $7f
    cp $fc
    rst $38
    db $fd
    cp $fd
    cp $ff
    db $fc
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    db $f4
    ei
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [$df], a
    and b
    rst $18
    add b
    rst $38
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, e
    rst $38
    ld a, a
    rst $38
    rst $18
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
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
    ld bc, $a0ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nc

    rst $38
    ldh a, [rIE]
    ld h, [hl]
    rst $38
    ld d, l
    rst $38
    ld [de], a
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
    jr jr_055_4963

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_055_4973

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_055_4983

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_055_4993

    ld [hl-], a

jr_055_4963:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_055_49a3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_055_4973:
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

jr_055_4983:
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
    ld b, h
    ld e, a
    ld h, b
    ld h, c

jr_055_4993:
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld b, h
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

jr_055_49a3:
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
    jp $c7c6


    ret z

    ret


    jp z, $cccb

    call $cecd
    rst $08
    ret nc

    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
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
    rst $20
    rst $20
    add sp, -$19
    jp hl


    call $eacd
    db $eb
    db $ec
    db $ed
    xor $ef
    ldh a, [$f1]
    rst $20
    rst $20
    rst $20
    ld a, [c]
    di
    db $f4
    push af
    call $f7f6
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    rst $20
    cp $ff
    nop
    ld bc, $7202
    inc bc
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
    jr jr_055_4a78

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_055_4a88

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_055_4a98

    ld a, [hl+]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_055_4a78:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_055_4a88:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_055_4a98:
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    nop
    nop
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
    ld bc, $0202
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0200
    inc b
    inc b
    ld bc, $0101
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    ld [bc], a
    inc b
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0200
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $03
    inc bc
    ld b, $03
    inc bc
    inc bc
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, $01
    ld bc, $0101
    ld bc, $0301
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
    ld b, $06
    ld b, $06
    ld b, $03
    inc bc
    inc bc
    inc bc
    ld b, $01
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
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
    ld bc, $0100
    ld bc, $0101
    ld bc, $0901
    add hl, bc
    add hl, bc
    ld hl, $0909
    add hl, bc
    ld [$0809], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
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
    rst $18
    rst $38
    ld e, a
    rst $38
    sbc a
    rst $38
    rst $20
    rst $38
    pop af
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
    rst $38
    rst $38
    rra
    rst $38
    rra
    rst $38
    db $e3
    rst $38
    ldh a, [rIE]
    rst $30
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    pop af
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    push af
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    and b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh a, [rIE]
    nop
    rst $38
    inc bc
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    ld hl, sp-$01
    ldh [rIE], a
    add e
    rst $38
    dec c
    rst $38
    scf
    rst $38
    daa
    rst $38
    rlca
    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc d
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    adc h
    rst $38
    inc c
    rst $38
    ld a, [hl+]
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    dec c
    rst $38
    add hl, bc
    rst $38
    ld d, $ff
    ld b, h
    rst $38
    adc b
    rst $38
    add b
    rst $38
    add c
    rst $38
    add e
    rst $38
    add e
    rst $38
    rlca
    rst $38
    ld c, a
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
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ei
    rst $38
    pop af
    rst $38
    db $e3
    rst $38
    jp hl


    rst $38
    ret


    rst $38
    jp c, $b8ff

    rst $38
    cp h
    rst $38
    inc a
    rst $38
    ld a, c
    rst $38
    ld a, e
    rst $38
    di
    rst $38
    di
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    ei
    rst $38
    db $fd
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
    ei
    rst $38
    db $fd
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $18
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    db $fc
    rst $38
    cp $ff
    cp a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    adc a
    rst $38
    rst $20
    rst $38
    or c
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    inc de
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ld [c], a
    rst $38
    di
    rst $38
    pop de
    rst $38
    pop hl
    rst $38
    pop bc
    rst $38
    add c
    rst $38
    ld bc, $00ff
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
    ret nz

    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    ld bc, $1fff
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp c
    rst $38
    di
    rst $38
    add a
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    add e
    rst $38
    add d
    rst $38
    add b
    rst $38
    ld bc, $c0ff
    rst $38
    ld b, $ff
    inc c
    rst $38
    db $10
    rst $38
    jr nc, @+$01

    ld h, b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld bc, $00ff
    rst $38
    dec b
    rst $38
    ld c, h
    rst $38
    inc c
    rst $38
    inc e
    rst $38
    inc a
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    db $fc
    rst $38
    ld sp, hl
    rst $38
    di
    rst $38
    di
    rst $38
    rst $20
    rst $38
    push bc
    rst $38
    ret


    rst $38
    adc e
    rst $38
    rla
    rst $38
    ld d, $ff
    ld d, [hl]
    rst $38
    sbc $ff
    call c, $dcff
    rst $38
    ret c

    rst $38
    ret nc

    rst $38
    ret z

    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    add c
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    and h
    rst $38
    db $e4
    rst $38
    ldh [rIE], a
    add sp, -$01
    ret nz

    rst $38
    pop bc
    rst $38
    sub c
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    ld [hl], e
    rst $38
    ld a, e
    rst $38
    ld [hl], a
    rst $38
    rst $30
    rst $38
    and $ff
    and $ff
    xor $ff
    adc $ff
    ld e, h
    rst $38
    jp nz, $f8ff

    rst $38
    ld a, d
    rst $38
    and l
    rst $38
    or [hl]
    rst $38
    db $db
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    ld [hl], a
    rst $38
    or [hl]
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    ld d, a
    rst $38
    ld b, [hl]
    rst $38
    xor e
    rst $38
    sub c
    rst $38
    ret nz

    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    di
    rst $38
    pop af
    rst $38
    jp hl


    rst $38
    ldh [rIE], a
    pop hl
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    jr nz, @+$01

    add b
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh [rIE], a
    ldh a, [rIE]
    ld a, b
    rst $38
    db $10
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    pop af
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    ld bc, $81ff
    rst $38
    push bc
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
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
    ld [$08ff], sp
    rst $38
    ld l, b
    rst $38
    add sp, -$01
    add sp, -$01
    ldh [rIE], a
    ret nz

    rst $38
    sbc b
    rst $38
    sbc h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld hl, sp-$01
    jr nc, @+$01

    db $10
    rst $38
    nop
    rst $38
    jr @+$01

    inc d
    rst $38
    jr nc, @+$01

    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld h, [hl]
    rst $38
    ld c, h
    rst $38
    call nz, $9cff
    rst $38
    jr @+$01

    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld [bc], a
    rst $38
    add d
    rst $38
    call nz, $c4ff
    rst $38
    add h
    rst $38
    add l
    rst $38
    add b
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld [bc], a
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld h, h
    rst $38
    ld h, h
    rst $38
    ld h, h
    rst $38
    db $e4
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ret z

    rst $38
    pop de
    rst $38
    db $d3
    rst $38
    sub e
    rst $38
    sub e
    rst $38
    inc hl
    rst $38
    daa
    rst $38
    daa
    cp c
    cp $b9
    cp $b1
    cp $b3
    db $fc
    ld [hl], e
    db $fc
    ld [hl], e
    db $fc
    ld h, e
    db $fc
    ld h, a
    ld hl, sp-$19
    ld hl, sp-$20
    rst $38
    ret nz

    rst $38
    pop bc
    rst $38
    jp $c3ff


    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    ld h, h
    ld a, h
    inc sp
    dec sp
    jr nc, jr_055_4ee9

    add [hl]
    adc a
    add b
    add a
    and l
    and a
    inc l
    cpl
    ld h, $27
    ld [$ff80], a
    add b
    rst $38
    and b
    pop hl
    pop bc
    ld sp, hl

jr_055_4ec9:
    ld b, c
    rst $38
    jr nz, jr_055_4ec9

    and b
    db $fc
    ld b, b
    rst $38
    rrca
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    sbc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    ld l, a
    rst $38
    cpl
    rst $38
    rlca
    rst $38
    rlca
    rst $38

jr_055_4ee9:
    rlca
    rst $38
    rla
    rst $38
    ld b, a
    rst $38
    rlca
    rst $38
    rla
    rst $38
    rlca
    rst $38
    ld b, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld de, $86ff
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    nop
    rst $38
    rlca
    rst $38
    add e
    rst $38
    ret nz

    rst $38
    add d
    rst $38
    ld [bc], a
    rst $38
    ldh a, [rIE]
    jp Jump_055_43ff


    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    nop
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
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ld sp, $20ff
    rst $38
    jr nz, @+$01

    nop
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [$2bff], sp
    rst $38
    inc bc
    rst $38
    dec bc
    rst $38
    ld [de], a
    rst $38
    rla
    rst $38
    db $10
    rst $38
    daa
    rst $38
    daa
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    add e
    rst $38
    add a
    rst $38
    add a
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    add b
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    cp b
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    add c
    cp $07
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$33], a
    call z, $8e71
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    ld sp, hl
    ld b, $7f
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $20
    jr @+$01

    nop
    ret nz

    ccf
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
    rst $38
    rst $38
    rst $38
    rst $38
    xor [hl]
    rst $28
    ld h, e
    rst $20
    push de
    push de
    or b
    ldh a, [$d4]
    db $f4
    call nz, Call_055_44c4
    call nz, $c4c4
    ld c, b
    ret z

    jp nz, Jump_000_00d2

    nop
    ld l, b
    ld l, h
    ld l, $6f
    nop
    nop
    ld l, e
    ld l, a
    ld l, a
    ld l, a
    nop
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
    ld bc, $01fe
    cp $00
    rst $38
    ld hl, $00de
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ccf
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
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    inc hl
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rra
    rst $38
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $18
    rst $38
    nop
    rst $38
    sub c
    rst $38
    nop
    rst $38
    rrca
    rst $38
    nop
    rst $38
    ld bc, $3fff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc a
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop

jr_055_5067:
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc c
    rst $38
    add hl, bc
    cp $0b
    db $fc
    rla
    ld hl, sp-$01
    ldh [$3f], a
    ret nz

    rra
    ldh [$73], a
    adc h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [$fe05]
    ld bc, $03fc
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    jr nc, jr_055_5067

    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    add c
    ld a, a
    rst $38
    ld sp, hl
    rst $38
    rst $20
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
    ld a, a
    rst $38
    rst $38
    rst $18
    ld a, a
    rst $20
    rst $38
    db $db
    ld a, a
    sbc l
    ld a, a
    rst $10
    ld [hl], a
    ld b, e
    ld h, e
    di
    ld hl, $ff4f
    ld a, l
    rst $38
    ld l, c
    rst $38
    add sp, -$01
    rst $20
    rst $38
    ldh a, [rIE]
    cp a
    cp a
    adc b
    sbc a
    adc h
    adc l
    ldh [rP1], a
    ldh a, [rP1]
    db $f4
    nop
    ld h, b
    nop
    ld h, b
    nop
    xor $00
    ld b, b
    nop
    ccf
    ret nz

    dec b
    ld a, [$d02f]
    dec e
    ld [c], a
    ld c, $f1
    rra
    ldh [$1f], a
    ldh [rSC], a
    db $fd
    dec de
    db $e4
    inc bc
    db $fc
    dec b
    ld a, [$f20d]
    inc bc
    db $fc
    ld bc, $05fe
    ld a, [$fd02]
    ld [$08f7], sp
    rst $30
    nop
    rst $38
    nop
    rst $38
    ld [$00f7], sp
    rst $38
    ld [bc], a
    db $fd
    ld a, [bc]
    push af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, a
    rst $38
    rst $38
    rst $38

jr_055_5121:
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    nop
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    cp $ff
    add a
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    inc bc
    db $fc
    jr nz, jr_055_5121

    nop
    rst $38
    db $e3
    rst $38
    sub b
    ld a, a
    ld [$a0ff], sp
    rst $38
    rra
    ldh [$3f], a
    ret nz

    db $fc
    inc bc
    nop
    rst $38
    nop
    rst $38
    add a
    rst $38
    ret z

    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ldh a, [rIE]
    ld [$84ff], sp
    rst $38
    add e
    rst $38
    add c
    rst $38
    db $10
    rst $28
    ld a, e
    add h
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    cp $01
    ld a, [$ff05]
    nop
    rst $38
    nop
    ldh [$1f], a
    ld b, b
    cp a
    call z, $843f
    ld a, a
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    rst $38
    rst $20
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    and e
    rst $38
    ld a, l
    rst $38
    cp $80
    rrca
    db $10
    rra
    ld bc, $600f
    ld a, a
    ldh a, [$f7]
    ld [hl], h
    scf
    ld a, b
    jr nc, jr_055_5227

    inc e
    rla
    dec de
    ld [de], a
    dec e
    dec a
    ccf
    cpl
    ccf
    nop
    nop
    cp l
    cp a
    nop
    nop
    xor a
    xor a
    ld d, b
    rst $30
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, @+$01

    nop
    pop af
    ld c, $ff
    nop
    add hl, sp
    add $bf
    ld b, b
    ccf
    ret nz

    rlca
    ld hl, sp+$20
    rst $18
    nop
    rst $38
    ret nz

    ccf
    sub b
    ld l, a
    ld b, h
    cp e
    call z, Call_055_4833
    or a
    ld [$0af7], sp
    push af
    ld h, [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    adc [hl]

jr_055_5219:
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    add h
    ld a, e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    pop af

jr_055_5227:
    rst $08
    nop
    rst $38
    ld a, a
    add b
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
    ldh [rIE], a
    jr nz, jr_055_5219

    ld [bc], a
    rst $38
    ld [hl-], a
    rst $08
    jp nz, Jump_000_023f

    rst $38
    dec c
    cp $18
    rst $38
    nop
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    db $e4
    rra
    db $e4
    rra
    ld b, h
    cp a
    add $3d
    push bc
    ld a, $88
    ld a, a
    dec c
    ld a, [$f817]
    ld [hl+], a
    db $fd
    ret nz

    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    ld [bc], a
    db $fd
    inc bc
    db $fc
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    ld bc, $80fe
    rst $38
    ld h, b
    rst $38
    jr nc, @+$01

    rrca
    rst $38
    nop
    rst $38
    dec b
    ld a, [$e01f]
    add hl, bc
    or $3f
    ret nz

    nop
    rst $38
    add e
    rst $38
    ld [$0e7f], sp
    rst $28
    ld c, $ee
    ld a, [hl+]
    ld a, [hl+]
    db $10
    add b
    rra
    nop
    xor $ef
    ld l, l
    cpl
    ld h, a
    ld l, a
    db $ed
    xor $1f
    add hl, bc
    sub b
    add b
    ld a, [de]
    ld a, [bc]
    inc d
    nop
    rst $38
    db $eb
    rst $38
    nop
    dec a
    nop
    ld a, b
    nop
    ld a, a
    nop
    jr nc, jr_055_52bc

jr_055_52bc:
    ld [hl], d
    nop
    cp $00
    ld h, l
    nop
    rst $30
    nop
    rst $38
    nop
    db $eb
    nop
    rst $38
    nop
    rst $30
    nop
    db $fd
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
    cp a
    ld b, b
    ld a, a
    add b
    ccf
    ret nz

    dec e
    ld [c], a
    ccf
    ret nz

    sbc l
    ld h, d
    ld b, e
    cp h
    ld c, e
    or h
    ld h, b
    sbc a
    ld c, a
    or b
    ld b, a
    cp b
    nop
    rst $38
    ld c, $f1
    nop
    rst $38
    inc b
    ei
    ld c, d
    or l
    nop
    rst $38
    dec b
    ld a, [$fb04]
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, [bc]
    push af
    rst $18
    jr nz, jr_055_5328

    db $fc
    ret nz

    rst $38

jr_055_5328:
    ld a, $ff
    add c
    ld a, a
    and $1f
    adc b
    ld a, a
    ld [$31ff], sp
    cp $d0
    rst $28
    db $10
    rst $28
    ccf
    ret nz

    ccf
    ret nz

    inc a
    jp $9f63


    adc $3f
    adc h
    ld a, a
    add hl, de
    cp $00
    rst $38
    jr @+$01

    inc b
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    ld b, a
    cp b
    ld b, $f9
    daa
    rst $18
    nop
    rst $38
    add b
    ld a, a
    adc $31
    db $fc
    inc bc
    call nz, Call_000_003b
    rst $38
    nop
    rst $38
    ld b, $f9
    ld [$1cf7], sp
    db $e3
    ld hl, sp-$01
    ld [bc], a
    rst $38
    rlca
    ld sp, hl
    ld e, $e1
    ld d, [hl]
    xor c
    ret z

    scf
    reti


    daa
    pop hl
    rra
    ld b, c
    cp a
    ld b, c
    cp a
    ld b, $ff
    inc c
    rst $38
    db $10
    rst $38
    ld h, d
    db $fd
    inc b
    ei
    adc l
    ld [hl], d
    rst $38
    nop
    or l
    ld c, d
    and a
    ld e, b
    rst $38
    nop
    rst $38
    ld e, h
    db $fd
    inc a
    rst $30
    ccf
    db $fd
    rst $38
    and [hl]
    cp $de
    cp $b0
    ld hl, sp-$28
    ld hl, sp-$58
    ld hl, sp+$7a
    ld a, [$f2b6]
    call nc, Call_055_60d0
    ld h, b
    ld h, $22
    sub [hl]
    sub b
    sbc e
    rst $38
    ccf
    ld sp, hl
    ccf
    nop
    ld a, [hl]
    ld bc, $00ff
    ld a, h
    inc bc
    ccf
    nop
    rst $38
    nop
    ld a, [hl]
    ld bc, $007f
    ldh a, [rIF]
    ei
    inc b
    add b
    ld a, a
    rst $18
    jr nz, @+$01

    nop
    cp $01
    rst $38
    nop
    rst $38
    nop
    ldh a, [rIF]
    rst $38
    nop
    db $fd
    ld [bc], a
    or $09
    rst $38
    nop
    db $f4
    dec bc
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    db $fc
    inc bc
    ldh a, [rIF]
    ld a, [$f405]
    dec bc
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ld b, b
    cp a
    ldh a, [rIF]
    ldh [$1f], a
    ld h, b
    sbc a
    ldh [$1f], a
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
    rst $38
    rst $38
    rra
    ldh [$78], a
    add a
    ld b, b
    cp a
    add b
    ld a, a
    nop
    rst $38
    rlca
    rst $38
    add b
    rst $38
    inc b
    ei
    jr nc, @-$2f

    ld b, b
    cp a
    inc e
    db $e3
    nop
    rst $38
    ret nz

    ccf
    ldh [$1f], a
    nop
    rst $38
    inc a
    rst $38
    rst $38
    ret nz

    rra
    ldh [$7f], a
    add b
    db $fc
    inc bc
    nop
    rst $38
    rra
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst $38
    add b
    rst $38
    ld [hl], b
    rst $38
    db $10
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rra
    ldh [$3e], a
    pop bc
    ccf
    ret nz

    inc a
    jp $cc33


    add hl, bc
    or $01
    cp $03
    db $fc
    adc e
    db $f4
    ld b, c
    cp $43
    cp $03
    rst $38
    nop
    rst $38
    nop
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
    di
    db $fd
    ld [bc], a
    rst $38
    nop
    ld a, l
    add d
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    ld a, [de]
    db $fc
    inc [hl]
    ld hl, sp+$7c
    ldh a, [$fc]
    ldh [$fc], a
    ret nz

    cp l
    ret nz

    ld a, a
    add b
    rst $38
    nop
    ld bc, $8b00
    nop
    add c
    nop
    sub a
    nop
    rst $10
    ld bc, $83fe
    db $fd
    rrca
    ld sp, hl
    rra
    rrca
    rrca
    inc bc
    inc bc
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    ld a, [$fa03]
    inc bc
    ld a, [$fb03]
    inc bc
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    ld sp, hl
    ld bc, $01f9
    ld sp, hl
    ld bc, $073c
    inc a
    rlca
    ld a, h
    rlca
    ld a, h
    rlca
    ld a, h
    rlca
    db $fc
    rlca
    ld a, h
    rlca
    ld a, h
    rlca
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
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
    ei
    inc bc
    ei
    inc bc
    ld a, [$fb02]
    inc bc
    ei
    inc bc
    db $fc
    rlca
    db $fc
    rlca
    cp $07
    db $fd
    rlca
    db $fc
    rlca
    db $fc
    rlca
    rst $38
    rst $38
    rra
    nop
    ld [hl], b
    adc a
    nop
    rst $38
    ld [bc], a
    db $fd
    ld a, h
    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ldh a, [rIE]
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    ld [hl], b
    rst $38
    ld hl, sp+$1f
    nop
    rst $38
    jr nc, @+$01

    ld b, b
    rst $38
    sub b
    rst $28
    ld a, [bc]
    push af
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $ff
    nop
    rst $38
    nop
    rst $38
    inc de
    db $ec
    ld a, b
    add a
    pop hl
    ld e, $9f
    ld h, b
    db $fd
    ld [bc], a
    db $f4
    dec bc
    push af
    ld a, [bc]
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
    dec sp
    call nz, $ce31
    ret nc

    rst $28
    ccf
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    db $10
    rst $28
    ld [$00f7], sp
    rst $38
    ld d, d
    cp a
    cp $01
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    cp $01
    ld bc, $0300
    nop
    add e
    nop
    ld e, $01
    ld [hl], h
    inc bc
    xor h
    inc bc
    ld [hl], c
    adc a
    rla
    rst $28
    ldh a, [$03]
    ldh [$0e], a
    jp Jump_000_271b


    daa
    set 1, e
    dec sp
    dec sp
    ld a, d
    ld a, e
    db $fc
    rst $38
    db $f4
    rst $38
    db $e4
    rst $38
    add h
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    add h
    rst $38
    and h
    rst $38
    db $e4
    rst $38
    and h
    rst $38
    ld [hl], h
    rst $38
    db $e4
    rst $38
    db $f4
    rst $38
    db $f4
    rst $38
    cp l
    rst $38
    push af
    rst $38
    db $fd
    rst $38
    ld sp, hl
    ei
    push af
    rst $38
    db $fd
    rst $38
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    db $fd
    rst $38
    db $fd
    rst $38
    ei
    ei
    ei
    ei
    di
    di
    ei
    ei
    di
    di
    ei
    ei
    ld l, e
    db $eb
    ei
    ei
    db $eb
    db $eb
    jp hl


    jp hl


    xor c
    jp hl


    ld sp, hl
    ld sp, hl
    db $d3
    db $d3
    ld b, e
    jp $a1a1


    jp hl


    jp hl


    pop hl
    pop hl
    xor e
    xor e
    db $e3
    db $e3
    ld [c], a
    db $e3
    jp Jump_055_42c3


    jp Jump_055_4343


    reti


    reti


    xor d
    xor e
    add hl, sp
    add hl, sp
    pop bc
    pop bc
    sbc b
    ld hl, sp-$20
    rst $38
    jr jr_055_563f

    ld hl, sp+$1f
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    cp $00
    rst $38
    nop
    jr nz, @-$1f

    nop
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    inc h
    ei
    sub b
    ld a, a
    ret nz

    ccf
    db $10

jr_055_563f:
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    ld [$49f7], sp
    or [hl]
    nop
    rst $38
    nop
    rst $38
    ld a, h
    add e
    ldh [$1f], a
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    rst $28
    db $10
    cp $01
    cp $01
    and $1f
    xor l
    ld e, [hl]
    ld de, $f3fe
    db $fc
    rst $38
    ld hl, sp+$3f
    ld hl, sp+$27
    ld hl, sp+$45
    ld a, [$cab5]
    reti


    and $e5
    ld a, [$eb74]
    ldh a, [$7f]
    jr nc, @+$01

    ccf
    rst $38
    rst $38
    nop
    db $fd
    ld bc, $06f2
    add sp, $08
    db $d3
    inc de
    rlca
    ld h, a
    rrca
    rst $08
    add hl, sp
    cp a
    ld h, a
    ld a, a
    jp hl


    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ld [hl], c
    rst $38
    jr nc, @+$01

    jr c, @+$01

    inc a
    rst $38
    dec sp
    rst $38
    ld a, h
    rst $38
    ld e, h
    rst $38
    ld a, [$b6ff]
    rst $38
    ld a, h
    rst $38
    ld a, [$f6ff]
    rst $38
    cp [hl]
    rst $38
    cp $ff
    ld a, e
    rst $38
    rst $38
    rst $38
    cp $ff
    or [hl]
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
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
    ld sp, hl
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    pop af
    rst $38
    pop af
    rst $38
    db $fd
    rst $38
    reti


    rst $38
    push de
    rst $38
    ldh a, [rIE]
    add sp, -$01
    xor b
    rst $38
    add sp, -$01
    pop hl
    rst $38
    pop bc
    rst $38
    ret nz

    rst $38
    pop bc
    rst $38
    add c
    rst $38
    add b
    rst $38
    ld bc, $01ff
    rst $38
    ret nz

    rst $38
    add hl, sp
    rst $38
    rlca
    rst $38
    ret nz

    rst $38
    jr jr_055_5745

    db $e3
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [bc], a
    rst $38
    ld bc, $e0ff
    rra
    nop
    rst $38
    inc bc
    db $fc
    rra
    ldh [$03], a
    db $fc
    nop
    rst $38
    ld a, a
    rst $38
    rlca
    rst $38
    inc bc

jr_055_5745:
    rst $38
    nop
    rst $38
    nop

jr_055_5749:
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    add hl, de
    rst $20
    nop
    rst $38
    inc b
    ei
    ret nz

    ccf
    ret nz

    ccf
    ld b, d
    cp l
    ld h, b
    sbc a
    ld d, $e9
    ld c, $f1
    inc bc
    db $fc
    nop
    rst $38
    jr nz, jr_055_5749

    nop
    rst $38
    jr @+$01

    ld c, $ff
    inc bc
    rst $38
    add c
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    ldh [$1f], a
    db $ec
    inc de
    ld hl, sp+$07
    ld a, [$fe05]
    ld bc, $2bd4
    ld b, [hl]
    cp c
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    dec bc
    db $f4
    rra
    ldh [rSVBK], a
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh [rSVBK], a
    ldh [rSVBK], a
    ldh [rSVBK], a
    ldh [rSVBK], a
    ldh [rSVBK], a
    ldh [rSVBK], a
    ldh [rSVBK], a
    ldh [rSVBK], a
    ldh [rSVBK], a
    ldh [rSVBK], a
    ldh [$f0], a
    ldh [$f0], a
    ldh [$f0], a
    ldh [$f0], a
    ldh [$f0], a
    ldh [rSVBK], a
    ldh [$74], a
    ldh [rSVBK], a
    ldh [$78], a
    ldh [$73], a
    ldh [$7b], a
    ldh [$7f], a
    ldh [rPCM34], a
    ldh [$7f], a
    ldh [rPCM34], a
    ldh [$7f], a
    ldh [$7f], a
    ldh [$7f], a
    ldh [$7f], a
    ldh [$9f], a
    add b
    sbc a
    add b
    sbc a
    add b
    sbc a
    add b
    sbc a
    add b
    sbc a
    add b
    sbc a
    add b
    sbc a
    add b
    sbc a

jr_055_57f1:
    add b
    sbc a
    add b
    sbc a
    add b
    sbc a
    add b
    sbc a
    add b
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
    sbc a
    add b
    sbc a
    add b
    sbc a
    add b
    sbc a
    add b
    sbc a
    add b
    sbc a
    add b
    ld a, a
    ldh [$7f], a
    ldh [$7f], a
    ldh [$7f], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    inc e
    ld a, a
    inc bc
    jr nc, jr_055_57f1

    push bc
    rst $38
    ld a, l
    cp $00
    rst $38
    ld [hl], b
    adc a
    db $fc
    inc bc
    rst $28
    db $10
    ld a, [hl]
    add c
    ldh a, [rIE]
    db $fc
    rst $38
    cp $ff
    rra

jr_055_5837:
    rst $38
    rrca
    rst $30
    ld bc, $43ff
    cp a
    inc c
    rst $38
    jr c, @+$01

    add b
    rst $38
    ld hl, $64de

jr_055_5847:
    sbc e
    ld a, h
    add e
    ld e, $e1
    inc h
    db $db
    inc l
    db $d3
    inc e
    db $e3
    sub b
    ld l, a
    ldh [$1f], a
    jr nz, jr_055_5837

    nop
    rst $38
    rrca
    ldh a, [rSB]
    cp $00
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    adc c
    rst $38
    adc l
    rst $38
    sub $ff
    ld [c], a
    rst $38
    add sp, $0f
    rst $38
    add a
    ld a, a
    inc bc
    rst $38
    ld bc, $60ff
    sbc a
    ld [hl], b
    adc a
    db $10
    rst $28
    jr c, jr_055_5847

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $ed
    ld [de], a
    ld l, h
    sub e
    ld l, [hl]
    sub c
    ld e, [hl]
    and c
    sbc [hl]
    ld h, c
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
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
    ldh a, [rIE]
    ld a, [hl]
    adc a
    cp a
    ld b, c
    rlca
    ld hl, sp+$00
    rst $38
    jr nc, @+$01

    rrca
    rst $38
    ld h, c
    sbc [hl]
    rst $38
    rst $38
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
    rlca
    ld b, b
    rst $38
    inc a
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    rlca
    ld hl, sp+$1f
    ldh [rTAC], a
    ld hl, sp+$01
    cp $07
    ld hl, sp+$03
    db $fc
    ld bc, $00fe
    rst $38

Call_055_58fc:
    ld b, b
    cp a
    ld h, b
    sbc a
    db $10
    rst $28
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ld e, a
    rst $38
    rrca
    rst $38
    add a
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp $00
    db $fc
    ld [bc], a
    ld a, [c]
    inc c
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    db $fc
    ld [bc], a
    or $08
    cp [hl]
    ld b, b
    cp $00
    cp $00
    cp $00
    ld a, [$fe04]
    nop
    ld a, [$0604]
    ld hl, sp+$1c
    ldh [$d0], a
    inc l
    ld [$f214], a
    inc c
    jp nz, Jump_000_303c

    call z, $fc02
    nop
    db $fc
    nop
    db $fc
    ld b, b
    cp h
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
    inc b
    ld hl, sp+$04
    ld hl, sp+$00
    db $fc
    inc b
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$00
    ld hl, sp+$04
    ld hl, sp+$06
    ld hl, sp+$07
    ld hl, sp+$05
    ld hl, sp+$03
    ld hl, sp+$02
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
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$0e]
    pop af
    ld c, $f1
    ld c, $f1
    ld [$08f7], sp
    rst $30
    ld [$0cf7], sp
    di
    call z, $f1f3
    ld a, a
    rra
    rst $38
    nop
    rst $38
    add d
    rst $38
    add e
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
    jr nz, @-$1f

    nop
    rst $38
    db $10
    rst $28
    nop
    rst $38
    ldh [rIE], a
    jr @+$01

    rlca
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld c, b
    or a
    sub b
    ld l, a
    call c, $fe23
    ld bc, $03fc
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rst $38
    jp $cfff


    rst $38
    rst $18
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
    add c
    cp $86
    ld sp, hl
    and c
    sbc $20
    rst $18
    nop
    rst $38
    nop
    rst $38
    ret z

    rst $38
    and $ff
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    nop
    add hl, bc
    nop
    ld a, a
    nop
    rra
    nop
    rst $08
    nop
    ret z

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    call $c032
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0ffe
    ldh a, [$03]
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    ld bc, $1eff
    rst $38
    nop
    rst $38
    rst $38
    rrca
    rst $38
    di
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
    ld a, a
    ld b, h
    ei
    ld [bc], a
    db $fd
    nop
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld [$04ff], sp
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld a, [bc]
    push af
    rst $28
    sub b
    ld c, a
    or b
    cpl
    ret nc

    rrca
    ldh a, [rNR34]
    pop hl
    ld a, [de]
    push hl
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    cp a
    ld b, b
    ld bc, $83fe
    ld a, h
    nop
    rst $38
    ld c, $f1
    ld a, d
    add l
    ld c, c
    or [hl]
    dec bc
    db $f4
    ld e, e
    nop
    jr nc, jr_055_5ac4

jr_055_5ac4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_055_5ae1:
    nop
    inc bc
    nop
    inc bc
    nop
    rlca
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    rrca
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

jr_055_5aff:
    nop

Call_055_5b00:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    di
    nop
    cp a
    nop
    ei
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
    jr jr_055_5aff

    jr c, jr_055_5ae1

    ld a, b
    add a
    add hl, sp
    add $73
    adc h
    cp $01
    add a
    ld a, a
    rst $38
    rst $38
    add b
    rst $38
    nop
    rst $38
    cp $ff
    inc bc
    rst $38
    ld hl, $ffdf
    cp $ff
    rst $20
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    ld bc, $03fe
    db $fc
    jp nz, Jump_055_78ff

    rst $38
    rst $38
    ei
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
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    ld [$08ff], sp
    rst $38
    ld h, b
    sbc a
    ld a, $c1
    ld e, $e1
    add [hl]
    ld a, c
    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ld e, a
    nop
    inc bc
    nop
    ld bc, $0300
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
    rrca
    nop
    dec b
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld [bc], a
    nop
    inc bc
    nop
    inc bc
    nop
    inc b
    nop
    inc b
    nop
    nop
    nop
    dec d
    nop
    sbc a
    nop
    cp a
    nop
    rst $38
    nop
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
    jp hl


    nop
    or $00
    db $fc
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    cp a
    ld b, b
    rrca
    ldh a, [$1f]
    ldh [rNR52], a
    reti


    ld a, a
    add b
    ei
    inc b
    rst $38
    nop
    rst $00
    ccf
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
    rst $38
    ld a, a
    rst $38

jr_055_5c15:
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
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld b, $ff
    inc d
    db $eb
    jr jr_055_5c15

    ld a, [hl-]
    rst $00
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    ld bc, $80ff
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    db $fd
    rst $38
    xor $11
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ccf
    ret nz

    rra
    ldh [rP1], a
    rst $38
    ld bc, $40ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld b, b
    cp a
    ld de, $f3ef
    nop
    cp a
    nop
    rst $38
    nop
    cp a
    nop
    ccf
    nop
    cpl
    nop
    ld c, a
    nop
    ld b, $00
    jp z, $4b00

    nop
    nop
    nop
    ld b, $00
    ld [bc], a
    nop
    inc bc
    nop
    inc bc
    nop
    add c
    nop
    rst $00
    nop
    ld bc, $0400
    nop
    cp $00
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
    rst $18
    nop
    sbc l
    nop
    ld a, d
    nop
    rst $38
    nop
    ld hl, sp+$00
    db $fc
    nop
    ldh a, [rP1]
    add b
    nop
    nop
    nop
    add e
    nop
    add c
    nop
    adc c
    nop
    sbc a
    nop
    ld e, a
    nop
    sbc a
    nop
    jr jr_055_5cb6

jr_055_5cb6:
    jr jr_055_5cb8

jr_055_5cb8:
    add b
    nop
    or b
    nop
    cp $00
    ld a, [hl]
    nop
    db $fc
    nop
    cp $00
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
    cp $01
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ldh a, [rIF]
    db $ec
    inc de
    db $fc
    inc bc
    and $19
    adc $31
    sbc $21
    call c, $f823
    rlca
    ld hl, sp+$07
    adc a
    ld a, a
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
    nop
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    cp $ff
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
    ld sp, hl
    rst $38
    ld [$98f7], sp
    ld h, a
    ld [$00f7], sp
    rst $38
    inc bc
    rst $38
    call z, $f0ff
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    db $10
    rst $28
    adc l
    ld a, [c]
    sub a
    add sp, -$12
    pop af
    inc hl
    db $fc
    nop
    rst $38
    ld h, b
    sbc a
    ldh a, [rIF]
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    pop bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld a, a
    nop
    rrca
    nop
    inc hl
    nop
    ld [bc], a
    nop
    cp a
    nop
    cp a
    nop
    rst $38
    nop
    rst $08
    nop
    ld a, a
    nop
    sbc a
    nop
    cp a
    nop
    rst $38
    nop
    ld a, a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    add e
    nop
    ld bc, $8000
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    cpl
    nop
    rst $30
    nop
    di
    nop
    rlc b
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, h
    nop
    adc a
    nop
    scf
    nop
    dec bc
    nop
    dec d
    nop
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    db $d3
    nop
    pop af
    nop
    db $f4

jr_055_5dcb:
    nop
    db $fd
    nop
    rst $38

jr_055_5dcf:
    nop
    rst $38
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
    db $10
    rst $18
    jr nz, jr_055_5e5e

    add b
    ld [hl], a
    adc b
    adc e
    ld [hl], h
    sbc [hl]
    ld h, c
    jr jr_055_5dcf

    ld a, [hl-]
    push bc
    jr nz, jr_055_5dcb

    nop
    rst $38
    nop
    rst $38
    rst $38
    di
    rst $38
    rst $30
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    add b
    rst $38
    nop
    rst $38
    ld a, h
    rst $38
    db $fd
    rst $38
    jp $ffff


    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    ld bc, $f0ff
    rst $38
    db $fc
    rst $38
    cp $ff
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    rst $18
    nop
    rst $38
    ld [bc], a
    rst $38
    nop

jr_055_5e25:
    rst $38
    nop
    rst $38
    db $10
    rst $28
    ret nz

    rst $38
    jr z, jr_055_5e25

    inc h
    ei
    ld b, b
    rst $38
    ld b, b
    rst $38
    adc h
    di
    dec [hl]
    jp z, $ff00

    cp $ff
    nop
    rst $38
    nop
    rst $38
    add $f9
    jr nz, @+$01

    ld [de], a
    db $fd
    inc de
    db $fc
    adc b
    rst $38
    inc c
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    xor c
    ld d, a
    db $fc
    inc bc
    ld l, $d1
    inc bc
    db $fc
    ld bc, $00fe
    rst $38
    adc h
    di

jr_055_5e5e:
    set 6, h
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
    jr jr_055_5e93

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_055_5ea3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_055_5eb3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_055_5ec3

    ld [hl-], a

jr_055_5e93:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_055_5ed3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_055_5ea3:
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

jr_055_5eb3:
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
    ld d, b
    ld h, b
    ld h, c

jr_055_5ec3:
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
    ld d, b
    ld l, a
    ld [hl], b

jr_055_5ed3:
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
    jr jr_055_5f95

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_055_5fa5

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_055_5fb5

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_055_5fc5

    ld [hl-], a

jr_055_5f95:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_055_5fd5

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc

jr_055_5fa5:
    inc bc
    inc bc
    inc bc
    ld b, $03
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc

jr_055_5fb5:
    ld b, $06
    ld b, $06
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0203
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_055_5fc5:
    ld bc, $0101
    ld b, $03
    inc bc
    inc bc
    inc bc
    ld bc, $0606
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_055_5fd5:
    ld bc, $0101
    ld b, $03
    inc bc
    inc bc
    inc bc
    ld bc, $0306
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0707
    rlca
    rlca
    rlca
    inc bc
    inc bc
    ld b, $00
    nop
    dec b
    dec b
    ld bc, $0301
    ld b, $03
    inc bc
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $00
    nop
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0306
    rlca
    rlca
    rlca
    rlca
    ld bc, $0006
    nop
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $03
    inc bc
    rlca
    rlca
    rlca
    rlca
    ld bc, $0006
    nop
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $07
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0206
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    ld bc, $0303
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0606
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0305
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, $03
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, $01
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0808], sp

Call_055_60d0:
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0808], sp
    ld a, [hl]
    ld a, [hl]
    sbc $ee
    xor $fc
    cp $7e
    cp $3e
    cp $9f
    sbc $c0
    ret z

    ret nz

    ret nz

    ret nz

    ret nc

    pop hl
    ld sp, hl
    jp hl


    rst $38
    rst $30
    ld b, a
    di
    ld b, a
    di

Call_055_60fc:
    jp $e373


    ld d, c
    pop bc
    ld a, e
    and $7f
    db $e3
    ld a, h
    xor $7c
    ld l, a
    ccf
    ld l, a
    ccf
    ld l, a
    ccf
    scf
    ld a, a
    ccf
    ccf
    rst $30
    ccf
    ld [hl], a
    cp a
    rst $30
    rra
    rst $30
    rra
    rst $30
    rra
    ld h, a
    sbc a
    daa
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
    ld e, $e1
    rst $38
    nop
    cp e
    add $fc
    ld b, b
    cp d
    ld b, h
    xor a
    ret nz

    push bc
    jp nz, $c305

    add $81
    ld b, $e1
    or [hl]
    pop hl
    or [hl]
    pop bc
    xor $c7
    call c, $d2e3
    pop hl
    di
    ret nz

    ld a, [$fae1]
    pop hl
    cp $41
    jr c, jr_055_61b7

    inc e
    ld [hl], e
    ld l, d
    ld sp, $306b
    ld l, e
    jr nc, jr_055_617f

    ldh a, [$ef]
    ldh a, [$f0]
    ld a, [c]
    jp hl


    push af
    ld b, e
    db $db
    sbc e
    cp e
    nop
    nop
    nop
    nop
    jr nz, jr_055_618e

    ld h, b
    ld h, b
    dec de
    db $e4
    cp c
    ld c, a
    rst $38
    ld h, a
    ld a, a
    ret nz

    ld l, a
    rst $38
    rst $38
    ld a, [$fbff]
    rst $30

jr_055_617f:
    rst $38
    ld h, a
    db $fd
    ei
    ld b, $fd
    ld b, $fe
    rlca
    rst $38
    rlca
    rst $38
    ld b, $ff
    nop

jr_055_618e:
    ei
    ld d, l
    ccf
    rst $38
    ld a, a
    sbc a
    dec a
    ret z

    sbc $ed
    ld a, a
    db $ec
    ld a, l
    xor $7f
    rst $20
    ld a, a
    rst $30
    ld a, a
    rst $38
    cp $f9
    rst $38
    jr c, @-$47

    ld c, b
    ld [hl], e
    sbc h
    inc hl

jr_055_61ab:
    call c, Call_055_7cdb
    rst $18
    db $fc
    ccf
    call z, $e71c
    sub a
    ld l, a
    ld l, a

jr_055_61b7:
    cp a
    rst $38
    rst $38
    db $fd
    rst $38
    db $eb
    db $fc
    db $db
    db $ec
    cp $ed
    adc [hl]
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $28
    db $fc
    rst $28
    db $f4
    db $fd
    cp $e6
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $30
    ld a, c
    rst $00
    ld a, d
    ldh a, [$8f]
    ld bc, $6103
    ld hl, $0181
    add hl, bc
    nop
    jr @+$0a

    jr jr_055_61ec

jr_055_61ec:
    inc a
    jr jr_055_6223

    jr c, jr_055_6229

    jr c, jr_055_61ab

    ld a, $be
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    db $fc
    db $fc
    call z, $dffe
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $28
    ld h, e
    ld l, l
    pop hl
    ld sp, hl
    ld l, c
    pop de
    db $dd
    sbc a
    ei
    sbc a
    ei
    rst $38
    db $eb
    rst $38
    rst $28
    rst $38
    ccf
    ld l, a
    scf
    cpl
    rst $20
    rst $28
    pop hl
    rst $28
    di
    ei
    rst $30
    rst $38
    rst $38
    rst $38

jr_055_6223:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_055_6229:
    rst $38
    rst $38
    rst $38
    ld h, c
    sbc a
    ld a, a
    ld bc, $0101
    ld bc, $8021
    ldh [rP1], a
    ld b, b
    adc c
    xor c
    rst $38
    rst $38
    pop bc
    pop bc
    add b
    add a
    and b
    and b
    cp $fe
    db $fc
    db $fc
    cp $fe
    cp $fe
    db $fc
    db $fc
    ld a, [$eafa]
    ld [$f8f8], a
    db $fd
    db $fd
    ret z

    adc $e0
    ld [c], a
    ld [$f809], sp
    ld hl, sp+$78
    ld a, b
    ld hl, sp-$08
    ldh [$e2], a
    jr c, jr_055_629e

    rst $38
    rst $38
    pop hl
    ld sp, hl
    add b
    cp [hl]
    add e
    ld a, a
    add $c6
    ld h, $26
    ei
    rst $38
    cp c
    ld e, e
    pop hl
    rra
    push af
    rrca
    rst $38
    cp $f7
    inc c
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $28
    cp a
    rst $28
    rst $38
    ld b, e
    rst $30
    dec de
    cp $20
    db $f4
    inc c
    rst $38
    rra
    cp a
    rst $18
    rst $20
    ld a, [$d3ef]
    ld c, e
    rst $30
    ld e, c
    rst $38
    rra
    rst $20

jr_055_629a:
    rra
    di
    rst $18
    ld sp, hl

jr_055_629e:
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $18
    ccf
    db $ec
    jr jr_055_629a

    jr @+$01

    ccf
    scf
    rst $38
    rst $38
    ld [hl], d
    ld sp, hl
    or $ef
    ldh a, [rIE]
    add b
    ccf
    jp $ffff


    rst $38
    rst $38
    db $fd
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    cp a
    ld a, h
    ccf
    db $fc
    rst $18
    ld a, h
    rst $38
    db $fc
    db $e3
    db $fc
    xor a
    ld d, b
    ld c, a
    or b
    ld a, a
    add b
    adc h
    adc h
    rst $28
    db $ed
    db $ed
    xor $ff
    cp $ff
    ld a, a
    ld a, a
    ccf
    ld a, a
    ccf
    ld [hl], a
    ld a, a
    ld a, a
    ld [hl], e
    ld a, a
    ld a, e
    cp $f8
    ld a, [$7dfc]
    ld a, [hl]
    ld [hl], a
    ld h, e
    ld h, e
    ld [hl], d
    ld bc, $93f2
    sub d
    adc [hl]
    sub e
    sbc a
    sub a
    cp a
    rst $18
    rst $30
    rst $18
    rst $10
    rst $08
    rst $38
    rst $28
    rst $38
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $30
    di
    push af
    ld sp, hl
    db $fc
    ld sp, hl
    or $f9
    rst $30
    db $f4
    rst $30
    cp $f2
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld [hl], a
    rst $38
    ld l, e
    rst $30
    db $eb
    ld [hl], a
    ei
    ld [hl], a
    ld sp, hl
    ld [hl], a
    ld a, c
    rst $30
    ld sp, hl
    ld [hl], a
    ei
    ld [hl], a
    or c
    ld a, a
    cp c
    ld a, a
    cp a
    ld a, a
    cp h
    ld a, a
    cp h
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    inc sp
    inc sp
    ret z

    sub $28
    inc l
    nop
    nop
    ld h, e
    db $fc
    ld sp, hl
    and $f6
    reti


    rst $38
    ld hl, sp-$01
    cp $f7
    ld [$88f7], sp
    or $89

jr_055_6380:
    ld b, a

jr_055_6381:
    ld hl, sp-$01
    jr nz, jr_055_6404

    and b
    ld c, h
    or e
    ccf
    nop
    rst $28
    jr nc, jr_055_6380

    db $fc
    ldh a, [rIE]
    rst $30
    ld a, e
    rst $38
    ld a, h
    rst $20
    rst $38
    push af
    ld a, a
    db $fd
    ld a, [hl-]
    db $f4
    dec de
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    ldh a, [$fa]
    add a
    or e
    rst $38
    rst $38
    rst $38
    rst $30
    ld a, e
    db $fd
    ld [hl], e
    db $fc
    rst $38
    rst $38
    rst $38
    rst $10
    db $fd
    jp hl


    ldh a, [$e0]
    ldh [$f0], a
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    rst $38

jr_055_63c1:
    nop
    ld sp, hl
    ld b, $f8
    inc b
    sub c
    ld c, c
    cp $00
    cp $00
    ld c, $f0
    ld [$0036], sp
    nop
    nop
    nop
    nop
    inc [hl]
    nop
    inc b
    ld [$0000], sp
    nop
    nop
    add b
    ret c

    jr jr_055_63e1

jr_055_63e1:
    nop
    inc l
    ret c

    inc a
    ld a, h
    sbc h
    jr jr_055_6381

    jr nz, jr_055_63c1

    and b
    ldh a, [$f0]
    add sp, -$10
    add $e8
    call z, Call_000_0cc0
    ld b, c
    ld h, $25
    scf
    inc a
    sbc [hl]
    ld a, $0f
    sbc a
    rlca
    add a
    add e
    rla
    rlca
    sub c

jr_055_6404:
    ld hl, sp-$04
    ld hl, sp-$02
    ld a, a
    ld a, a
    ld a, a
    rst $38
    or $ff
    cp $ff
    rst $38
    rst $38
    rst $28
    sbc a
    sub $8f
    cp h
    inc c
    ld e, h
    cp h
    call c, Call_055_60fc
    pop hl
    ld [hl], b
    ld hl, $373b
    or a
    ld [hl], a
    ld [hl], d
    rst $30
    cp $ff
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    db $fc
    rst $38
    adc l
    rst $38
    adc c
    rst $38
    and b
    rst $38
    adc h
    rst $38
    jr @+$01

    ld h, b
    rst $38
    ret nz

    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$04
    ret nz

    ret nz

    ld bc, $023e
    ld [bc], a
    inc bc
    rla
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    rst $10
    cpl
    add e
    inc bc
    ei
    inc bc
    ld a, b
    add [hl]
    db $fc
    ld [bc], a
    ld l, c
    add d
    db $ed
    inc bc
    ld a, [c]
    rrca
    ldh a, [$c0]
    ldh a, [rP1]
    db $d3
    inc l
    ld d, b
    rst $28
    db $f4
    bit 7, c
    add [hl]
    ld sp, hl
    ld b, $fb
    inc b
    rst $38
    add b
    db $dd
    ld [hl+], a
    call $ff36
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    db $fd
    ld a, [hl]
    rst $38
    db $fd
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    ld l, a
    cp a
    ld l, e
    cp h
    ld l, b
    ld hl, sp-$20
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $01
    or $09
    nop
    ld sp, $1000
    ret nz

    ret nz

    ret nz

    ret z

    ldh [$e1], a
    ret nz

    pop bc
    rst $38
    ld b, b
    sbc a
    ld h, d
    push bc
    ld a, $fc
    rra
    ld a, [$ef0d]
    db $10
    rst $38
    ld b, h
    rst $38
    inc b
    rlca
    rrca
    rrca
    rrca
    daa
    rlca
    daa
    rlca
    rlca
    inc bc
    ld bc, $2021
    ld bc, $0081
    push bc
    add [hl]
    rst $08
    jp $e3ff


    pop af
    pop hl
    ldh a, [$e0]
    ld [hl], b
    ld h, b
    ld [hl], c
    ld h, b
    ld [hl], c

Call_055_64ff:
    ldh a, [$f0]
    pop hl
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    db $e4
    ret nz

    cp $9c
    add sp, -$70
    ld [hl+], a
    add b
    add d
    nop
    inc c
    add h
    jr nz, @-$3a

    ld l, $34
    ld a, $1f
    sbc a
    rrca
    sub d
    sbc a
    sub e
    sbc $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $fe
    rst $38
    cp $ff
    cp $ff
    nop
    rst $38
    di
    nop
    nop
    rst $38
    jp hl


    cp $ee
    db $fd
    or $fd
    db $f4
    rst $38
    db $fc
    rst $30
    db $f4
    rst $38
    db $f4
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    db $f4
    rst $38
    ld a, [c]
    db $fd
    sub b
    rst $38
    add c
    cp $08
    cp $20
    rst $38
    add b
    rst $38
    ld bc, $16fe
    add sp, $00
    rst $38
    ld a, [hl-]
    call nz, $e41a
    nop
    rst $38
    dec b
    ld a, [$06f9]
    cp h
    ld c, a
    ei
    ld [$08fb], sp
    dec sp
    ld hl, sp+$7a
    ld sp, hl
    db $db
    jr c, @-$36

    dec sp
    ret z

    dec sp
    ld sp, hl
    ld a, [$fced]
    push de
    db $ec
    cp l
    ld b, h
    db $fd
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $ec
    inc d
    call c, $f83c
    inc a
    ld e, h
    ldh a, [$dc]
    ld [hl], b
    db $fc
    ldh a, [$fc]
    ldh a, [$bc]
    ld [hl], b
    ld a, h
    or d
    cp $5e
    cp $5a
    cp $70
    cp $f0
    or $f8
    cp $f8
    ld a, [hl]
    ld hl, sp-$0a
    db $fc
    db $e4
    ld a, [hl]
    cp $7e
    cp $fe
    ld a, [$f6fe]
    ld c, $0b
    dec b
    rrca
    ld bc, $0907
    inc de
    dec c
    rrca
    rla
    dec de
    rlca
    rla
    rrca
    rla
    rrca
    rra
    rrca
    ld e, $0f
    inc a
    dec c
    ld a, c
    nop
    jp hl


    db $10
    rst $38
    ld bc, $00ff
    db $fc
    ld [bc], a
    jr jr_055_65ea

    rra
    sbc a
    ld bc, $11c1
    ld d, c
    sbc [hl]
    cp [hl]
    jr z, jr_055_6604

    rlca
    rlca
    inc bc
    inc bc
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

jr_055_65ea:
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l

jr_055_65ef:
    rst $38
    xor d

jr_055_65f1:
    rst $38
    ld d, l
    rst $38
    adc d
    rst $38
    dec d
    rst $38
    ld a, [bc]
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a

jr_055_6604:
    rst $18
    adc a
    sbc a
    rrca
    ccf
    rra
    cpl
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    inc bc
    add e
    inc bc
    add e
    inc bc
    add e
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    nop
    add e
    nop
    jp $c300


    ret nz

    inc bc
    ld b, b
    inc bc
    add b
    inc bc
    ret nz

    inc bc
    ret nz

    ld bc, $01e0
    jr nz, jr_055_65ef

    jr nz, jr_055_65f1

    ld [hl+], a
    pop bc
    ld [hl+], a
    pop bc
    ld [de], a
    pop hl
    ld a, h
    rst $38
    cp $ff
    cp $ff
    ld a, [$fa7f]
    ld a, a
    ld a, [$faff]
    rst $38
    ldh [rIE], a
    cp $ff
    ld a, a
    rst $38
    db $10
    ldh [rP1], a
    ld h, b
    nop
    jr nz, @-$31

    ld [hl-], a
    ld c, c
    ld d, $20
    dec l
    nop
    rra
    ld b, $f9
    inc b
    dec sp
    rst $38
    nop
    cp $00
    nop
    cp $00
    ld e, $18
    nop
    rst $38
    nop
    jr jr_055_666a

jr_055_666a:
    ld a, [de]
    nop
    adc b
    rrca
    ld sp, hl
    ld b, $ff
    nop
    ccf
    ret nz

    rst $38
    db $10
    rst $38
    ret nz

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
    ld a, a
    rst $38
    rst $38
    nop
    nop
    nop
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
    db $fc
    ld a, a
    db $fc
    ld e, a
    ldh [$7f], a
    add b
    nop
    add b
    ld c, a
    rst $38
    ld l, a
    rst $38
    ld c, a
    ld a, a
    ld c, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld b, l
    ld e, h
    ld h, a
    ccf
    ld b, b
    nop
    nop
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, l
    ld a, [hl]
    ld h, e
    ld a, a
    ld a, a
    ld a, a
    ld a, [hl]
    ld a, a
    ld a, a
    ld b, b
    ld a, b
    ld b, $81
    add c
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    rst $38
    rst $38
    cp $ff
    ldh [rIE], a
    ld a, a
    ld h, b
    rst $08
    ldh a, [$cb]
    call nz, $8080
    nop
    ld b, b
    ld b, b
    ld b, b
    and b
    and e
    ld b, c
    ld b, d
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    and d
    rst $38
    ld d, b
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
    cp $ff
    ld a, [$f4fd]
    set 7, l
    adc e
    cp l
    ld l, e
    xor c
    ld a, a
    add hl, hl
    rst $38
    xor c
    rst $38
    xor c
    rst $38
    add hl, hl
    rst $38
    dec bc
    db $fd
    rst $38
    nop

jr_055_6714:
    rst $38
    nop
    sub e
    ld l, l
    ccf
    db $ed
    dec a
    rst $28
    db $fd
    xor a
    db $fd
    xor a
    inc l
    rst $38
    inc l
    rst $38
    ld a, d
    add l
    rst $38
    nop
    rrca
    ldh a, [$bf]
    ld b, b
    sbc c
    ld h, [hl]
    rst $38
    nop
    rst $38
    nop
    ld [$0ff7], sp
    ldh a, [rP1]
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $01
    inc b
    nop
    ldh [rP1], a
    jr nc, jr_055_6714

    ld b, b
    cp a
    ret nz

    ccf
    jr jr_055_674e

jr_055_674e:
    ld [$1bf0], sp
    db $e4
    ld a, a
    add b
    add b
    sbc a
    nop
    nop
    inc bc
    db $ec
    nop
    adc h
    nop
    ld [$0000], sp
    rst $38
    nop
    cp $01
    pop bc
    nop
    sub b
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    rst $38
    add b
    cp $00
    ld bc, $ff01
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    add b
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
    call c, $ffff
    nop
    add b
    nop
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    ld e, $ff
    rst $38
    rst $38
    rst $38
    ccf
    ret nz

    ret nz

    ld a, $01
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld sp, hl
    add b
    add b
    nop
    ld a, b
    nop
    inc b
    nop
    rst $38
    nop
    ld a, [c]
    dec c
    nop
    db $fc
    jr c, jr_055_680c

    db $fc
    inc b
    ld a, c
    add c
    db $d3
    inc de
    ret nc

    db $10
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
    ld b, l
    rst $38
    jr nz, @+$01

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
    sbc a
    ld a, a
    sub e
    ld l, a
    ret c

    ld a, a
    sbc $7b
    ld a, [$ba5f]
    ld e, a
    cp e
    ld e, [hl]
    xor d
    ld e, a
    xor d
    ld e, a
    db $e3
    ld e, $ff
    nop
    rst $38
    nop
    ld [$8bff], sp
    ld a, a
    db $eb
    cp a

jr_055_680c:
    db $eb
    cp a
    db $eb
    cp a
    rst $28
    cp e
    ld l, [hl]
    cp e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [c], a
    dec e
    rst $30
    ld [$00ff], sp
    cp a
    ld b, b
    ld [c], a
    dec e
    rst $38
    nop
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
    ld a, b
    add a
    db $fc
    inc bc
    ld hl, sp+$07
    sub b
    ld l, a
    inc e
    dec h
    ld c, $73
    cp $01
    cp $01
    nop
    nop
    nop
    nop
    cp a
    nop
    rst $38
    nop
    db $10
    ld [$1ee9], sp
    rst $30
    ld a, [bc]
    rst $38
    nop
    ld hl, sp+$07
    add hl, bc
    cp $18
    ld a, [hl]
    ld l, a
    sbc a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    nop
    db $fc
    ld [bc], a
    ld bc, $ff01
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $18
    db $fd
    add d
    db $fc
    ld [bc], a
    ld bc, $ff01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop bc
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    db $e3
    db $fc
    ld hl, sp+$07
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
    cp a
    ld hl, sp-$41
    nop
    ccf
    nop
    ccf
    nop
    ccf
    ld b, $1c
    sbc l
    dec a
    dec sp
    ld l, h
    ld [hl], d
    dec bc
    inc h
    ret nc

    sub $80
    add b
    inc c
    inc c

jr_055_68be:
    nop
    nop
    xor a
    rst $38
    ld d, a
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
    ld d, a
    rst $38
    xor a
    rst $38
    ld d, l
    rst $38
    xor e
    rst $38
    ld d, l
    rst $38
    xor e
    rst $38
    ld d, l
    rst $38
    xor e
    rst $38
    dec d
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    pop af
    ld hl, sp-$0f
    ldh a, [$e8]
    pop af
    xor $f1
    pop af
    ret nz

    pop hl
    ret nz

    add c
    ldh [$80], a
    ldh [$80], a
    ld h, b
    add b
    ld h, b
    ld h, b
    add b
    and b
    ret nz

    jr nz, jr_055_68be

    and b
    ret nz

    and b
    ret nz

    ldh [rP1], a
    ldh [rP1], a
    ld h, b
    ret nz

    ld h, b
    ret nz

    ld h, b
    ret nz

    ld h, b
    ret nz

    ld h, b
    ret nz

    ld [hl], b
    ret nz

    ld [hl], b
    ret nz

    ldh a, [rP1]
    db $fc
    inc bc
    ldh [$1f], a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ldh [$1f], a
    ldh [$1f], a
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ld b, b
    cp a
    nop
    nop
    nop
    nop
    nop
    nop
    di
    inc c
    nop
    or c
    add b
    nop
    db $10
    ld d, b
    nop
    rst $38
    sub b
    ld l, a
    nop
    nop
    nop
    ldh [$fe], a
    rra
    ldh [$1f], a
    cp $01
    cp $00
    cp $00
    ld a, [hl-]
    call nz, Call_055_40fe
    cp $00
    ld a, [de]
    cp $7c
    add d
    ret c

    ld l, $fc
    cp $fc
    cp $fc
    cp $fe
    cp $fe
    cp $f8
    cp $fe
    nop
    nop
    nop
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    db $fc
    ld a, [$faec]
    cp $00
    nop
    nop
    cp $fe
    ld a, [hl]
    cp $7e
    cp $fe
    cp $fe
    cp $ee
    ld a, $c8
    or $fc
    ld [bc], a
    nop
    nop
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    and [hl]
    sbc $fe
    cp $fe
    cp $ce
    jr nc, jr_055_699b

jr_055_699b:
    nop
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    cp $01
    ld sp, hl
    nop
    cp e
    nop
    ei
    inc b
    ei
    inc c
    adc a
    xor a
    rst $08
    rst $08
    ld sp, hl
    ld sp, hl
    ld hl, sp-$08
    cp $fe
    ld h, b
    ld h, b
    nop
    nop
    nop

jr_055_69bf:
    nop
    ld [hl], b
    inc sp
    ld a, a
    inc a
    cp a
    inc c
    ld e, a
    add c
    add [hl]
    nop
    ld b, b
    nop
    ld [hl], b
    jr jr_055_69bf

    db $10
    sub b
    db $10
    ld hl, $6391
    sub e
    ld h, $b6
    ld a, h
    cp $fa
    db $fc
    db $fc
    ld hl, sp-$08
    db $fc
    ld hl, sp-$24
    db $10
    sbc h
    ld a, a
    add a
    rlca
    rst $00
    ld d, a
    rst $38
    ld sp, hl
    ld sp, hl
    db $eb
    jp z, $ebd8

    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    ld a, a
    ld a, a
    ccf
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ld e, a
    ccf
    ld e, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ccf
    ld a, a
    rst $00
    ld a, $fe
    ld b, $d4
    ld a, $7e
    cp a
    adc $bf
    rst $38
    cp [hl]
    ld a, a
    cp [hl]
    ld a, a
    cp [hl]
    cp a
    cp $8f
    cp $b7
    cp $bd
    cp $07
    cp $43
    ld a, $c2
    ccf
    add d
    ccf
    ld [bc], a
    rrca
    rlca
    cp [hl]
    ld [bc], a
    rst $38
    ld [hl], b
    adc [hl]
    ld [$c004], sp
    nop
    ld b, $f9
    nop
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    ld a, h
    add e
    rst $28
    sub b
    or a
    sbc a
    cp a
    rst $18
    rst $38
    cp e
    rst $38
    or c
    db $fc
    sbc a
    rst $18
    cp a
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    pop af
    ldh a, [$f1]
    ldh a, [$f7]
    ldh a, [$ef]
    pop af
    rst $08
    ldh a, [$ef]
    ldh a, [$f7]
    ld hl, sp-$27
    rst $38
    adc h
    sbc a
    cp $8f
    ld a, [$da8f]
    adc a
    rst $10
    adc b
    cp b
    rst $20
    rst $18
    rst $28
    rst $38
    rst $38
    rst $30
    db $fc
    cp e
    rst $18
    sbc e
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fc
    ld hl, sp-$04
    ld hl, sp-$01
    ld hl, sp-$05
    db $fc
    xor $d0
    xor $d0
    sbc $e0
    or $e8
    ld a, [$f7e4]
    ld a, [$e0f7]
    rst $30
    ret nz

    rst $38
    ret nz

    rst $38
    add h
    rst $18
    add b
    sub c
    add b
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld a, b
    rlca
    cp a
    add b
    xor a
    ret nc

    ld a, [bc]
    dec [hl]
    add b
    add b
    ld l, h
    ld l, h
    dec hl
    dec hl
    nop
    nop
    cp $fe
    rst $38
    ld a, a
    cp $b7
    rst $30
    rst $38
    rst $30
    rst $30
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ld a, a
    rst $38
    ld a, [hl]
    ld a, [$3cfc]
    cp b
    dec a
    ld a, [de]
    ld c, $0c
    rra
    dec bc
    rrca
    adc a
    adc [hl]
    ld c, $de
    call $c163
    jp nz, $fee3

    di
    cp h
    ei
    cp b
    ld sp, hl
    ld hl, sp+$71
    ld a, b
    ld [hl], c
    inc a
    ld a, c
    cp h
    ld a, a
    scf
    cp $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$05
    ld hl, sp+$77
    db $fc
    ld a, a
    db $f4
    rst $38
    di
    ld [hl], d
    db $f4
    di
    ld [hl], b
    rst $38
    ld a, h
    ei
    jr c, @+$01

    dec a
    cp $e5
    ld a, $ac
    ld [bc], a
    dec hl
    nop
    dec sp
    nop
    ld b, $ff
    adc h
    rra
    sbc h
    rrca
    ld [hl], b
    adc a
    db $10
    rst $28
    ld bc, $c0fe
    ccf
    di
    rrca
    db $e3
    rra
    jp $ff3f


    rlca
    rst $30
    rrca
    ld h, e
    sbc a
    and a
    ld e, a
    add h
    ld a, [hl]
    ld [bc], a

jr_055_6b35:
    db $fc
    jr nz, jr_055_6b57

    ld b, b
    ccf
    ld b, c
    nop
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $28
    nop
    db $e3
    inc bc
    db $fc
    cp c
    ld b, b
    rst $38
    adc e
    ld a, a
    add b
    rst $38
    sbc b
    rst $38
    add b
    cp $81
    rst $38
    rst $38
    rst $38
    nop
    ld [hl], a

jr_055_6b57:
    adc b
    rst $38
    rst $38
    ld l, h
    rst $30
    rst $18
    di
    rst $08
    scf
    ld a, b
    or b
    call nz, Call_055_6f03
    sub b
    db $fd
    ld [bc], a
    ccf
    di
    ei
    cp a
    db $fd
    rst $38
    rst $38
    sbc l
    ld [hl], a
    adc l
    rst $30
    ld e, c
    ld a, a
    rst $38
    rst $38
    cp $ef
    db $f4
    rst $38
    db $76
    ld [hl], a
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
    ld e, $1f
    nop
    ld b, b
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
    cp $01
    ld [$fe10], a
    nop
    rst $38
    nop
    rra
    ldh [rTAC], a
    jr c, jr_055_6ba3

jr_055_6ba3:
    nop
    nop
    ld [$1004], sp
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    rst $20
    ld b, b
    cp a
    ret nz

    jr nz, jr_055_6b35

    ld b, b
    nop
    dec e
    ld [bc], a
    dec c
    rlca
    ld a, b
    cp l
    add d
    ld a, a
    ld b, b
    dec de
    rrca
    ld c, a
    reti


    inc b
    reti


    or b
    ldh a, [$e0]
    cp $f7
    cp $ff
    ld a, [hl]
    ld a, $7f
    ccf
    ld a, $be
    ld a, [hl]
    db $76
    ld a, [hl-]
    scf
    inc a
    ld hl, sp+$1c
    ld a, b
    sbc h
    ld e, a
    rra
    ld e, a
    rla
    rla
    rst $20
    and l
    ld d, a
    rlca
    ld d, a
    sbc a
    inc c
    sbc [hl]
    inc c
    xor b
    ld b, [hl]
    inc de
    ld l, l
    ccf
    ld c, l
    rst $38
    ld a, l
    dec l
    ld a, l
    ld hl, $a9ed
    ld a, b
    cp e
    ld [hl], b
    di
    scf
    or e
    ld a, l
    ccf
    db $fd
    dec a
    rst $38
    ccf
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    nop
    ld a, a
    rst $38
    nop
    rst $38
    nop
    cp a
    ld a, a
    cp a
    ld a, a
    xor a
    ld a, a
    rst $28
    ld a, a
    rst $38
    ld l, a
    ccf

jr_055_6c21:
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    db $ec
    rst $38
    ld l, b
    rst $38
    ld [$007f], sp
    rst $38
    ld [bc], a
    db $fd

jr_055_6c38:
    jr jr_055_6c21

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
    rst $18
    jr nz, @+$01

    ld sp, $ffff
    db $e3
    ccf
    ldh a, [$3f]
    ld sp, hl
    ld a, $7f
    rst $38
    db $f4
    adc a
    rst $38
    inc b
    rst $30
    rrca
    rst $30
    rst $08
    rst $20
    rst $38
    ldh [rIE], a
    cp d
    ld a, a
    ld a, h
    add sp, -$04
    set 3, a
    ld l, c
    ld sp, hl
    ld a, a
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    db $fd
    rst $30
    db $fc
    daa
    db $fd
    dec b
    rst $38
    rst $38
    rst $38
    ld e, a
    ccf
    rst $38

jr_055_6c79:
    ccf
    rst $38
    ccf
    rst $38
    cp a
    cp a
    ei
    di
    rst $38
    rst $30
    ei
    ld e, a
    rst $38
    rst $28
    ld [hl], b
    rlca
    nop
    inc bc
    nop
    ld b, $03
    ld c, $01
    ld a, a
    nop
    add b
    nop
    nop
    nop
    inc c
    nop
    rst $38
    nop
    ccf
    ret nz

    rra
    ldh [$3f], a
    ret nz

    rst $30
    nop
    rst $08
    jr nc, jr_055_6c38

    ld l, h
    rst $20
    jr c, jr_055_6c79

    ld a, $e1
    ld e, $06
    ld bc, $0102
    cp $01
    rst $38
    nop
    pop af
    nop
    rst $38
    nop
    cp e
    nop
    ld a, [de]
    ld bc, $0007
    inc bc
    nop
    ld c, a
    cpl
    scf
    ld l, a
    ld h, a
    rst $18
    rst $28
    rst $00
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ei
    ld a, a
    ld sp, hl
    ld a, b
    ldh a, [rSVBK]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$a0], a
    ld bc, $0386
    rlca
    ld bc, $0401
    nop
    adc h

jr_055_6ce7:
    ld b, $16
    ld [hl], $1e
    ccf
    cp a
    rst $38
    cp l
    ei
    db $f4
    ei
    di
    ld sp, hl
    jr nc, jr_055_6ce7

    ld [hl], a
    ld a, [c]
    db $e3
    ei
    jr nz, @+$41

    ld c, b
    and a
    ret z

    ld h, $e5
    jp z, $dba0

    push de
    ei
    push af
    ei
    pop af
    rst $38
    di
    rst $38
    push af
    ei
    pop af
    rst $38
    inc b
    ei
    db $fc
    inc bc
    adc h
    ld [hl], e
    db $ed
    di
    jp hl


    rst $30
    pop hl
    rst $30
    db $eb
    rst $30
    pop hl
    rst $38
    pop bc
    rst $38
    ret


    rst $30
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
    rra
    rst $38
    ccf
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    ld [bc], a

jr_055_6d39:
    ret nz

    ld e, $c0
    nop
    rst $38
    nop
    rst $38
    nop
    ld b, h
    rlca
    ld hl, sp-$01
    nop
    ld a, e
    sbc h
    ei
    add l
    cp l
    ld [hl], d
    rst $38
    db $10
    rst $38
    jr @+$01

    rst $38
    rst $38
    rlca
    rst $38
    nop
    rst $08
    ld hl, sp-$41
    ld hl, sp-$09
    jr c, jr_055_6d39

    cp a
    rst $18
    ccf
    ld a, a
    ccf
    cp a
    ld a, a
    rst $20
    inc a
    rst $20
    ccf
    cpl
    rst $30
    ld a, a
    rst $20
    ld h, a
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    rst $28
    pop af
    rst $38
    ldh [$fe], a
    pop hl
    rst $30
    jp hl


    rst $38
    add sp, -$23
    ei
    rst $28
    db $fd
    or a
    ld a, [hl]
    or c
    rst $38
    rst $38
    rst $38
    cp $1d
    rst $38
    inc c
    dec bc
    db $fc
    db $ec
    rst $38
    xor b
    rst $38
    ld e, h
    db $fc
    ld a, [$79ff]
    ld a, l
    or b
    ld [hl], c
    ldh [$7c], a
    ldh a, [rSVBK]
    ld sp, hl
    ld sp, hl
    ld a, l
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ret z

    rst $38
    ld l, b
    rst $38
    ld c, b
    rst $38
    ld b, b
    rst $38
    jr @+$01

    ld a, [hl]
    rst $38
    add $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$38
    call c, $9df8
    cp d
    sbc l
    ld [hl], e
    di
    db $e3
    db $e3
    db $e3
    rst $00
    db $eb
    rst $18
    srl a
    ld c, a
    ld a, a
    rst $08
    ld a, a
    adc $7f
    ld c, [hl]
    rrca
    scf
    ccf
    ld b, a
    rrca
    rrca
    dec c
    rrca
    dec e
    add hl, de
    jr jr_055_6df4

    stop
    ld a, c
    ld b, b
    ld hl, sp-$40
    cp $f8
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd

jr_055_6df4:
    rst $38
    cp $ff
    ld a, [hl]
    ld a, a
    ld a, a
    pop hl
    ld [hl], c
    dec d
    ld sp, $3113
    dec sp
    rla
    cp e
    scf
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
    ld hl, sp-$02
    db $fc
    ei
    db $fc
    ei
    ld sp, hl
    ld a, [$f8ff]
    ld sp, hl
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    sbc d
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    jp nz, Jump_055_453c

    cp b
    nop
    rst $38
    nop
    rst $38
    cp a
    ret nz

    push bc
    ld a, a
    db $fd
    ld a, [hl]
    ld h, c
    cp $f5
    cp $79
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    db $fd
    ld a, [hl]
    cp $7f
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
    cp $3f
    rst $38
    rra
    ld l, a
    sbc a
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $28
    rst $30
    rst $28
    rst $38
    rst $38
    xor $ff
    rst $28
    rst $38
    ld a, d
    rst $38
    cp a
    ld a, a
    cp a
    rst $28
    ld a, a
    call nz, $c4fe
    ret nz

    ldh a, [$58]
    ld hl, sp-$48
    ld a, b
    ld a, e
    add b
    sbc l
    ld l, d
    inc d
    rrc [hl]
    sbc c
    dec de
    ei
    cp $ff
    xor a
    xor a
    adc h
    rst $08
    push bc
    rst $30
    adc a
    rst $38
    rst $28
    rst $28
    ld l, $ff
    cp e
    rst $38
    ccf
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    ld e, $ff
    dec sp
    rst $38
    ld a, d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp b
    ld e, a
    ld de, $1f1b
    dec de
    adc d
    ld c, a
    ld [c], a
    call z, $c8c7
    push bc
    add b
    ld b, $81
    add c
    inc bc
    add e
    daa
    ld [hl], e
    add a
    ld b, a
    rlca
    add e
    inc bc
    db $e3
    db $e3
    rst $38
    di
    ei
    di
    ei
    sub a
    rst $38
    sub [hl]
    db $fc
    sub a
    rst $38
    ld [hl], a
    di
    ld de, $094b
    db $e3
    ld b, h
    ld [c], a
    ld b, a
    set 1, a
    rst $08
    rst $08
    ld l, a
    rst $08
    rst $08
    rrca
    rrca
    rst $28
    rst $18
    rst $38
    sbc a
    cp a
    cp a
    sbc a
    rst $38
    cp a
    rst $38

Call_055_6f03:
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    dec sp
    rst $30
    dec sp
    rst $38
    ei
    ld a, a
    dec sp
    rst $38

jr_055_6f1e:
    inc sp
    rst $38
    inc hl
    rst $38
    ld h, e
    rst $38
    di
    rst $38
    db $e3
    rst $38
    rst $30
    rst $28
    db $e3
    rst $38
    db $db
    rst $20
    rst $08
    rst $30
    ld hl, sp-$01
    jr @+$01

    nop
    rst $38
    rlca
    ld hl, sp+$67
    nop
    inc hl
    nop
    jr jr_055_6f1e

    add hl, bc
    ldh a, [rP1]
    rst $38
    rst $38
    nop
    xor $3d
    rst $30
    ld e, a
    cp a
    pop af
    db $fd
    inc sp
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
    rst $38
    ld bc, $0077
    cp $03
    ei
    rst $30
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    cp l
    db $fd
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    db $ed
    rst $18
    cp a
    rst $08
    rst $38
    rst $18
    rst $38
    reti


    cp $dd
    ld a, [c]
    cp l
    cp $bd
    ld a, a
    db $fd
    sbc $e7
    rst $18
    ld [c], a
    ld b, e
    call nz, $c03f
    ld h, a
    add b
    pop hl
    ld d, $53
    and h
    add l
    ld a, d
    ld b, h
    dec sp
    ld b, d
    inc a
    di
    ld bc, $c1fd
    rst $20
    rst $20
    and a
    rst $20
    cp $fe
    ld a, $fe
    ld l, $7e
    ld a, [hl]
    ld a, [hl]
    ld a, $ff
    cp [hl]
    rst $38
    adc b
    rst $38
    nop
    rst $38
    ld [$0bff], sp
    rst $38
    add l
    rst $38
    nop
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
    inc b
    rst $38
    inc e
    rst $38
    inc c
    rst $38
    rrca
    adc l
    rrca
    add a
    adc a
    and l
    rra
    jp Jump_055_412e


    nop
    nop
    or b
    add b
    sub [hl]
    or d
    rst $18
    cp d
    sbc $be
    cp $fe
    cp $de
    db $fc
    add $fe
    and [hl]
    cp $f0
    jp c, $faf0

    cp $1f
    ccf
    rla
    ld [$1d18], sp
    rra
    add hl, sp
    rst $20
    ld a, e
    ld a, a
    rst $30
    rst $38
    ld [hl], a
    rst $38
    di
    di
    rst $38
    rst $28
    rst $38
    ei
    rst $38
    di
    ei
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc $ff
    nop
    rst $38
    nop
    rst $38
    rst $30
    rst $38
    rst $20
    rst $38
    or $ef
    rst $00
    cp $c5
    cp $d0
    rst $28
    call nz, $c6ff
    db $fd
    push de
    rst $28
    push bc
    rst $38
    push de
    rst $28
    and l
    rst $08
    dec d
    rst $28
    ld h, c
    rst $38
    ld d, b
    rst $38
    nop
    rst $38
    ldh [$1f], a
    db $10
    rst $28
    ldh [$1f], a
    inc [hl]
    dec bc
    nop
    ccf
    nop
    rst $38
    rst $38
    nop
    db $eb
    ccf
    rst $38
    ld sp, hl

jr_055_7048:
    ld [hl], a
    ei
    cp $fb
    rst $10
    ld sp, hl
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $38
    nop
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_055_7048

    db $fc
    rst $30
    rst $38
    ld a, [hl]
    di
    db $fd
    ld a, [c]
    ei
    cp $fb
    rst $38
    rst $38
    ei
    ei
    rst $38
    rst $38
    rst $38
    dec sp
    db $fc
    cp a
    ld c, b
    ld a, a
    adc b
    inc de
    db $fc
    ei
    sbc h
    xor [hl]
    jr jr_055_70bb

    nop
    and l
    ld c, d
    db $e3
    inc b
    ld [c], a
    nop
    add $30
    sub e

jr_055_7089:
    ld h, l
    ld d, e
    and c
    ld d, c
    cpl
    push af
    adc a
    rst $08
    add a
    sub a
    rrca
    cpl
    rra
    ld e, a
    rra
    cp a
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    rst $38
    jr nc, @+$01

    jr nz, @+$01

    nop
    rst $38
    jr nz, @+$01

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
    rra
    rst $38
    ld a, a
    rst $38
    ld a, a

jr_055_70bb:
    rst $38
    ld a, a
    rst $38
    ld a, $ff
    db $e3
    and b
    ldh [$80], a
    ld hl, sp-$10
    cp $fe
    db $fc
    rst $38
    db $fd
    rst $38
    ld a, a
    ld a, a
    ccf
    ld a, a
    ccf
    inc sp
    ld de, $dd73
    db $e3
    jp $b387


    add e
    ld hl, $1fc1
    db $fd
    dec a
    cp $66
    ld h, b
    rst $00
    rst $30
    dec b
    ld [hl-], a
    inc b
    jr z, jr_055_7089

    ld h, b
    ret c

    and b
    adc e
    and b
    ld [$0123], sp
    and [hl]
    rst $00
    xor a
    ld d, e
    rst $28
    nop
    db $fc
    sub b
    db $ec
    add b
    db $fc
    call nz, $c4fc
    cp $87
    rst $38
    adc a
    rst $38
    xor a
    rst $18
    or a
    rst $08
    cp a
    rst $08
    sub a
    rst $08
    sbc a
    rst $08
    xor a
    rst $18
    rlca
    rst $38
    nop
    rst $38
    ld b, $ff
    adc a
    rst $38
    rra
    rst $38
    ld a, a
    sbc a
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
    sbc a
    rst $38
    rrca
    cp a
    rrca
    rst $38
    ld b, a
    cp a
    db $10
    rst $38
    nop
    rst $38
    ld h, b
    rra
    dec h
    jp nc, $ff00

    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp-$09
    dec c
    cp a
    rst $38
    db $ec
    rst $38
    cp $ff
    rst $38
    rst $18
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    pop af
    di
    pop bc
    rst $38
    ld b, a
    rst $38
    ld b, a
    rst $38
    ld h, a
    rst $38
    ld l, a
    rst $38
    ld a, a
    cp h
    rst $38
    rst $30
    ld [$1ae5], sp
    db $ed
    ld [de], a
    ld a, l
    add d
    sbc [hl]
    pop af
    rst $38
    ld sp, hl
    rst $38
    rst $38
    di
    db $fd
    rst $38
    ld h, c
    or $21
    dec sp
    push hl
    rst $38
    rst $38
    ld a, h
    rra
    inc sp
    ld [$0001], sp
    ld h, e
    nop
    ld a, e
    ld [bc], a
    xor e
    rra
    ccf
    cp a
    cp a
    cp a
    ccf
    sbc a
    rra
    rra
    rra
    cp a
    sbc a
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
    ldh a, [rIE]
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld [hl], b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    ld b, b
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
    add hl, bc
    rlca
    rlca
    inc bc
    rrca
    ld de, $9102
    ret nz

    ret nz

    adc $e2
    adc e
    xor $cf
    xor $ee
    cp $ee
    db $fc
    cp $ec
    db $ec
    and $ec
    add $ca
    ld hl, sp-$24
    ld hl, sp-$22
    ld hl, sp-$71
    rst $18
    rst $08
    adc c
    xor c
    ret z

    cp d
    call c, $be7a
    sbc $bf
    rst $38
    sbc a
    ld a, [$fadf]
    db $fd
    ld sp, hl
    rst $38
    adc c
    ld sp, hl
    ld a, [$9a90]
    rst $30
    or a
    rst $08
    ld a, [hl]
    inc b
    ld h, h
    inc l
    ld l, [hl]
    and [hl]
    adc [hl]
    cp a
    cp a
    cp a
    rst $38
    rst $38
    di
    rst $38
    di
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    jp Jump_000_00ff


    rst $38
    ld b, h
    rst $38
    rst $10
    rst $28
    rst $00
    rst $28
    adc a
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
    add $df
    add h
    rst $18
    and [hl]
    rst $18
    dec l
    rst $18
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld h, h
    dec de
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    di
    inc c
    rst $20
    rst $38
    rst $20
    rst $38
    ld sp, hl
    cp $d9
    and $d3
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
    cp $dd
    cp [hl]
    cp $9f
    rst $18
    cp a
    cp [hl]
    rst $38
    cp $ff
    ld hl, sp-$01
    set 6, a
    push af
    adc d
    rst $30
    ld a, [bc]
    ld a, h
    add a
    db $fd
    add a
    cp $ff
    sbc $ff
    set 6, a
    di
    rrca
    push af
    ld a, [bc]
    and a
    ld a, b
    rst $00
    jr c, jr_055_72ec

    sbc [hl]
    adc h
    adc e
    inc bc
    nop
    ld [bc], a
    nop
    cpl
    rla
    ld a, a
    ccf
    cp a
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    ldh a, [$fb]
    ld hl, sp-$01
    ld sp, hl
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    cp $ff
    db $fd
    rst $38
    ldh a, [rIE]
    ret nc

    rst $38
    ldh a, [rIE]
    push af
    rst $38
    ld a, [hl]
    rst $38
    ldh a, [rIE]
    ld de, $10ff
    rst $38
    db $10
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ldh [rIE], a
    pop bc
    rst $38
    ret nz

    rst $38
    ld hl, sp-$10
    ldh a, [$f0]
    rst $30
    pop hl
    jp hl


    adc $65
    pop af
    ld a, a
    ld [hl], e
    ld a, a
    ld [hl], e
    ei
    db $76
    rst $10
    rst $38
    cp a
    sbc a
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    ccf
    rla
    dec l
    ld e, $05
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_055_734a

    ldh a, [$e8]

jr_055_72ec:
    db $fd
    db $fc
    db $fc
    db $fd
    rst $38
    rst $38
    cp $ff
    ei
    cp $ff
    ld a, a
    ld a, a
    ld a, a
    ldh a, [$78]
    cp b
    jr jr_055_731b

    jr jr_055_7314

    add hl, de
    rra
    dec sp
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
    rst $38
    rst $38
    add b
    rst $38

jr_055_7314:
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a

jr_055_731b:
    rst $38
    rst $18
    cp a
    ld c, a
    cp a
    rst $08
    cp a
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    nop
    rst $38

jr_055_7334:
    nop
    rst $38
    ld a, [bc]
    pop af
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    inc b
    ei
    rst $38
    nop
    inc sp
    rst $08
    rra
    rst $38
    rst $08
    rst $38
    ld l, [hl]
    rst $38

jr_055_734a:
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    call Call_000_0cf3
    db $fd
    ld [bc], a
    ld a, a
    cp a
    rst $38
    rst $30
    jp hl


    or $d9
    and $fe
    pop bc
    rst $38
    ret nz

    rst $38
    ld b, b
    inc sp
    rst $28
    ld a, a
    rst $38

jr_055_736a:
    rst $38
    ld [hl], b
    rst $38
    ldh a, [$bf]
    ld [hl], b
    rst $30
    jr nc, jr_055_736a

    jr c, jr_055_7334

    ld a, a
    cp h
    ld a, a
    db $fc
    ld [hl], a
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, e
    rst $38
    ei
    rlca
    ld [c], a
    dec e
    or $e9
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f9]
    ldh a, [$fe]
    ld [hl], b
    rst $38
    ld b, b
    ei
    ld h, b
    rst $38
    ld a, h
    ld a, a
    ld a, a
    ld a, a
    ld h, [hl]
    rst $38
    ld h, h
    rst $38
    db $f4
    rst $38
    or b
    rst $38
    jr nz, @+$01

    ld l, h
    rst $38
    rst $38
    rst $38
    db $76
    rst $38
    db $fc
    rst $38
    ret c

    rst $38
    ld hl, sp-$01
    ld l, c
    rst $38
    add sp, -$01
    db $dd
    rst $38
    rst $18
    rst $38
    ld a, [c]
    rst $38
    ld [c], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    rla
    rra
    inc de
    dec b
    ret nz

    inc bc
    ret


    jp $c9f0


    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$e0]
    ld hl, sp-$40
    db $fc
    ldh [$ec], a
    sub d
    add sp, -$3e
    ldh a, [$e0]
    db $fc
    cp $fe
    cp $7f
    ld h, [hl]
    ld a, a
    ld h, $3f
    ld h, $66
    ccf
    ld l, a
    dec e
    rla
    inc bc
    ld sp, $9891
    ld sp, hl
    ei
    ld hl, sp-$05
    di
    di
    inc sp
    db $db
    db $10
    db $d3
    add b
    di
    cp $32
    rst $28
    jp $c3ef


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
    rrca
    rst $38
    rra
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    di
    rst $38
    di
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    rst $00
    rst $38
    rst $38
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
    dec bc
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    nop
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    rst $38
    ld [bc], a
    ei
    rst $38
    sbc a
    rst $38
    ld d, a
    rst $38
    rla
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
    rra
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $18
    rst $38
    di
    rst $38
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ccf
    ld a, a
    cp a
    ccf
    rst $38
    rst $38
    ld a, a
    rst $28
    ld a, a
    rst $38
    rst $38
    rst $30
    ei
    rst $30
    ei
    rst $38
    ei
    ld a, a
    cp a
    ld e, $ff
    cpl
    push de
    ld sp, hl
    ccf
    rst $30
    cp l
    xor a
    rst $38
    rst $38
    rst $38
    ld b, a
    rst $38
    ld l, [hl]
    rst $38
    inc b
    rst $38
    ld b, h
    rst $38
    call nz, $bfff
    rst $38
    ld a, e
    rst $38
    ld a, h
    rst $38
    ld a, $ff
    ld e, $ff
    inc e
    rst $38
    ccf
    rst $38
    ld a, [$f0ff]
    rst $38
    ld [hl-], a
    rst $38
    ld a, d
    rst $38
    db $f4
    rst $38
    cp $ff
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ld de, $30ff
    rst $38
    jr nc, @+$01

    ccf
    rst $38
    jr c, @+$01

    jr nc, @+$01

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
    jr jr_055_74f3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_055_7503

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_055_7513

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_055_7523

    ld [hl-], a

jr_055_74f3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_055_7533

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_055_7503:
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

jr_055_7513:
    ld d, e
    ld l, $54
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

jr_055_7523:
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

jr_055_7533:
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
    jr jr_055_75f4

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_055_7604

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_055_7614

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_055_7624

    ld [hl-], a

jr_055_75f4:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_055_7634

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_055_7604:
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
    ld [bc], a
    ld [bc], a

jr_055_7614:
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
    ld [bc], a
    ld [bc], a

jr_055_7624:
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
    ld bc, $0202
    ld [bc], a
    ld [bc], a

jr_055_7634:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld bc, $0101
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $01
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0106
    ld bc, $0301
    ld b, $01
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
    ld bc, $0101
    ld b, $01
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
    ld b, $06
    ld b, $06
    ld b, $01
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    dec b
    ld bc, $0606
    ld b, $06
    ld b, $01
    ld b, $00
    nop
    nop
    nop
    ld bc, $0601
    ld bc, $0606
    ld b, $06
    ld b, $06
    ld b, $01
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0606
    ld b, $06
    ld b, $06
    ld bc, $0006
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0106
    ld bc, $0201
    ld [bc], a
    ld bc, $0203
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
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
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rst $38
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
    ld a, a
    ld a, a
    rst $38
    ccf
    rrca
    rra
    rrca
    sbc $fe
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rra
    inc b
    dec bc
    inc d
    ld bc, $11ee
    add $c5
    sub b
    ret


    sub b
    adc $d7
    rst $10
    rst $20
    db $ed
    di
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
    adc l
    rst $38
    or l
    cpl
    inc sp
    ccf
    inc de
    ld a, a
    rrca
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    ld c, a
    rst $38
    rrca
    ld a, a
    sbc a
    ld a, a
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    or e
    ld a, [hl]
    or e
    ld a, a
    ld h, a
    rlca
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    nop
    inc a
    ret c

    ld e, l
    inc bc
    dec c
    ld b, e
    add sp, -$20
    ld a, b
    ldh a, [$7a]
    ld a, a
    rst $30
    ld l, [hl]
    rst $20
    db $db
    db $dd
    jp hl


    ld e, c
    dec a
    dec e
    add hl, hl
    ld a, b
    ld bc, $e6fe
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
    cp $ff
    ld hl, sp-$03
    rst $38
    ld e, $3f
    rrca
    rra
    rrca
    rrca
    rlca
    rlca
    add e
    rlca
    add [hl]
    rlca
    ld b, a
    ld h, [hl]
    ccf
    ld bc, $001d
    sbc e
    jr nc, @-$33

    db $fc
    rst $10
    and $d7
    rst $28
    rst $20
    rst $38
    rst $20
    rst $38
    rst $38
    ld h, e
    ld a, a
    ld a, b
    rst $38
    rst $18
    rst $08
    rst $38
    rst $20
    rst $38
    rst $38
    cp $fd
    cp $ff
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $7f
    ld e, a
    ccf
    rra
    cpl
    rlca
    ccf
    rst $38
    jp $efff


    rst $20
    rst $38
    ld sp, hl
    rst $30
    ei
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$98], a
    ld a, c
    ld bc, $f9f9
    ld a, [$fef8]
    ld hl, sp-$02
    db $fd
    cp $ff
    cp $ff
    db $eb
    rst $10
    ld e, a
    xor $3e
    rst $38
    cp [hl]
    ld a, a
    cp [hl]
    ld a, a
    adc [hl]
    ld a, a
    ld h, a
    sbc a
    db $e3
    sbc a
    ret nz

    ret nz

    ldh [$c0], a
    call nc, $e0e0
    ldh [$d6], a
    ldh [$c5], a
    ret nz

    cp $e2
    or $f3
    db $dd
    db $e3
    inc bc
    adc a
    adc d
    rst $00
    add c
    rst $00
    rst $00
    rst $38
    cp $ff
    cp $ff
    cp $ff
    rst $30
    rst $38
    di
    rst $38
    ld [hl], a
    rst $38
    ld [hl], b
    rst $38
    ld h, c
    ei
    add sp, -$11
    db $fc
    ld a, a
    db $fc
    ld a, a
    ld a, $7f
    sbc a
    ccf
    cp [hl]
    rrca
    sub b
    inc bc
    and c
    rst $00
    sub a
    rst $20
    di
    db $e3
    db $e3
    di
    ld a, [$70e0]
    ld hl, sp-$20
    ld hl, sp-$20
    db $fc
    add e
    di
    pop af
    ei
    rst $30
    ld sp, hl
    rst $30
    ld sp, hl
    rst $38
    db $fd
    ld a, a
    rst $38
    cp a
    ld a, a
    rst $38
    rst $30
    ld sp, hl
    db $e3
    ld [$fefd], a
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a

jr_055_78a6:
    ld a, a
    ld a, a
    ccf
    ld a, a
    rra
    ccf
    inc bc
    ei
    db $e3
    ld sp, hl
    ld h, c
    ld a, c
    jr nc, jr_055_78ef

    db $10
    ld e, $c1
    inc e
    dec bc
    sub c
    pop de
    add d
    pop bc
    add [hl]
    pop bc
    add d
    ret nz

    add e
    inc bc
    ld hl, $b3e1
    ld sp, hl
    ld hl, sp-$04
    db $fc
    cp $fd
    rst $38
    sbc $ef
    sbc $de
    ld c, a
    rst $38
    ld l, a
    ld a, a
    ccf
    ei
    or a
    rst $38
    di
    rst $38
    rst $18
    rst $38
    cp $ff
    rst $38
    db $fd
    ld a, a
    sbc e
    db $ec
    or b
    jr z, jr_055_78a6

    ld c, $1f
    rrca
    rrca
    sub a
    rst $38
    rst $38
    rst $38

jr_055_78ef:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, sp
    rst $10
    adc h
    push af
    adc $ff
    rst $38
    rst $38

Jump_055_78ff:
    ld a, a
    ccf
    rst $30
    cp a
    rst $38
    rst $30
    ei
    sub c
    ld b, c
    adc d
    db $10
    add hl, sp
    pop bc
    call $eded
    rst $28
    rst $18
    rst $20
    rst $20
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
    ccf
    ld a, a
    db $eb
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    ccf
    ld a, a
    rra
    rra
    ld [hl], a
    daa
    ccf
    rst $20
    rst $28
    scf
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    ei
    rst $38
    cp e
    rst $38
    inc sp
    rst $38
    ld a, a
    cp $7f
    ld b, b
    rlca
    db $10
    dec c
    ld a, [hl-]
    jr jr_055_7963

    nop
    inc bc
    jr jr_055_795c

    rra
    ld c, $07
    ld c, [hl]
    rlca
    ld e, h
    dec h
    ld a, b
    db $e4
    ldh a, [$c0]
    ei
    ret nz

    cp $e1
    ld sp, hl

jr_055_795b:
    pop hl

jr_055_795c:
    ld a, a
    di
    db $fd
    ld [hl], e
    ld sp, hl
    jr c, jr_055_795b

jr_055_7963:
    sbc h
    ld hl, sp-$24
    ld a, b
    db $fc
    dec l
    cp $79
    rst $38
    ld hl, sp-$01
    ld hl, sp-$03
    call c, $dcfe
    rst $38
    xor $ef
    rst $28
    rst $30
    rst $38
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    ld a, e
    db $fd
    ld a, e
    db $fd
    ccf
    ld a, a
    rra
    rra
    ld e, a
    rrca
    ld c, a
    adc a
    ld d, a
    xor a
    sbc e
    ld a, a
    dec de
    rra
    add a
    rrca
    rst $00
    rst $28
    pop bc
    rst $20
    ld [c], a
    push af
    ld sp, $2cea
    inc sp
    adc h
    jp $c9c0


    ld hl, sp-$01
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $df
    ld h, $fe
    rst $30
    rst $28
    rst $18
    rst $38
    rst $08
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    ld a, a
    rst $18
    rra
    jp $cf0f


    rlca
    adc a
    ld h, a
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
    pop hl
    rra
    rst $38
    ld b, l
    ld a, h
    rst $38
    cp $7f
    sbc a
    ld a, a
    rst $38
    rst $38
    di
    ei
    jp $7181


    pop hl
    ei
    pop hl
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $00
    rrca
    rst $00
    inc bc
    or e
    rst $08
    rst $38
    rst $08
    ret c

    rst $08
    set 3, h
    db $e3
    call nc, $c7f0
    ld sp, hl
    db $e3
    db $f4
    ld sp, hl
    ld [$9bf0], a
    jr c, jr_055_7a1c

    cp a
    ld a, l
    sbc a
    ld sp, hl
    rst $38
    db $fd
    di
    ld sp, hl
    ei
    rst $38
    ld sp, hl
    ei
    rst $38
    rst $18
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    cp $ff
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_055_7a1c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp a
    ld a, a
    ccf
    ld e, a
    rrca
    rra
    sbc a
    rra
    cp a
    ld a, a
    ccf
    ld a, a
    rst $38
    ccf
    cp a
    ld e, a
    cpl
    rlca
    ld [$1407], sp
    inc bc
    ret


    add d
    or c
    jp nz, $c0a5

    ld h, h
    sub e
    ld [hl], c
    add e
    ld [hl], c
    inc bc
    sub c
    inc bc
    db $fd
    inc bc
    db $ed
    inc de
    ld e, c
    add a
    ret


    sub a
    add $bf
    rst $38
    adc $6f
    cp $fa
    db $fd
    rst $38
    ld hl, sp-$06
    db $fc
    cp $f9
    db $fc
    ld sp, hl
    db $fc
    ld a, [c]
    ld a, [$fbff]
    db $fc
    cp $ff
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
    cp $fc
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp $ff
    db $fd
    ld a, [hl]
    push af
    dec sp
    ccf
    ei
    ld a, [hl]
    rst $38
    cp $7f
    cp h
    ld a, a
    adc [hl]
    ld sp, hl
    cp $f9
    cp $f8
    db $fd
    cp $ff
    rst $38
    ld a, e
    rst $38
    ld a, [bc]
    ret c

    adc [hl]
    call z, $e4de
    cp h
    rst $38
    cp e
    db $fd
    reti


    push af
    rst $08
    ei
    rst $00
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld a, [c]
    rst $38
    push hl
    cp $f3
    db $fc
    or $f8
    ei
    db $fc
    rst $38
    ld hl, sp-$09
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fd
    cp $ff
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
    rst $18
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    inc hl
    rst $38
    ld h, e
    rst $38
    cp $fe
    cp $f0
    db $fc
    ld hl, sp-$04
    or $f8
    ld [c], a
    ld hl, sp-$08
    ldh a, [$f0]
    ldh a, [$d8]
    ldh [$dc], a
    ldh [$f8], a
    ret nz

    ld hl, sp-$40
    di
    add c
    db $e3
    add c
    rst $10
    ld bc, $03dd
    ei
    rlca
    db $db
    ccf
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
    xor b
    rst $38
    ld e, b
    rst $38
    xor d
    rst $38
    ld [hl], l
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
    ld [$d5ff], a
    rst $38
    ld [$d5ff], a
    rst $38
    ld a, [$f5ff]
    rst $38
    ld a, [$ffff]
    rst $38

jr_055_7b64:
    ld a, [$fdff]
    rst $38
    cp $ff
    db $fd
    rst $38
    ld a, [$f1ff]
    rst $38
    ccf
    rst $38
    ld a, a
    ld a, a
    sbc a
    ccf
    rra
    sbc a
    rst $18

jr_055_7b79:
    ccf
    rrca
    cpl
    ld [hl], a
    rrca
    ld a, a
    rst $00
    or e
    ld [hl], a
    dec sp
    ld b, e
    db $d3
    add hl, hl
    sbc l
    inc bc
    dec bc
    add a
    ld l, a
    rlca
    adc a
    daa
    adc a
    rlca
    ld hl, $4097
    or e
    jr nc, jr_055_7b79

    ld d, [hl]
    or c
    reti


    ldh [$e8], a
    ret nz

    ret nc

    ldh [$d0], a
    ldh [$c0], a
    adc b
    sbc [hl]
    jr c, jr_055_7b64

    ld a, [hl]
    cp $fd
    cp $fc
    cp e
    db $f4
    dec sp
    push bc
    inc e
    db $e3
    inc e
    db $e3
    ld e, d
    cp a
    ld c, a
    cpl
    rla
    ld h, [hl]
    rst $18
    ld [c], a
    db $db
    rst $00
    ld [hl], e
    ld a, a
    rst $38
    ld a, a
    ccf
    ld a, a
    cp a
    ccf
    adc a
    cp a
    ld c, a
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_055_7bcf:
    rst $38
    ldh a, [$f0]
    nop
    nop
    rra
    rra
    rst $38
    rst $38
    ld a, b
    ld a, b
    or b
    ld [$23c0], sp
    nop
    rst $28
    rst $38
    nop
    ldh [rP1], a
    ld a, [hl]
    ldh [rIE], a
    rst $38
    cp a
    rst $38
    ld [hl], h
    cp e
    rst $30
    jr @+$01

    jr jr_055_7bcf

    jr jr_055_7bff

    inc e
    db $fc
    inc e
    db $fc
    ld hl, sp-$40
    nop
    ret z

    add b
    ei
    add b
    ei

jr_055_7bff:
    ldh [$f3], a
    ldh [$c7], a
    ldh [$c7], a
    ret nz

    adc a
    pop bc
    sbc l
    add e
    ccf
    add e
    rlca
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rrca
    rlca
    rrca
    rrca
    rra
    rrca
    rra
    rra
    add hl, sp
    rra
    add hl, sp
    ccf
    dec sp
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    rst $38
    ld a, [hl]
    cp $fe
    db $fc
    cp $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$04
    db $fd
    db $fc
    ld a, [$fafd]
    db $fd
    db $eb
    ld hl, sp-$28
    ld a, [c]
    and b
    ldh a, [$f6]
    ldh [$e2], a
    ldh [$a2], a
    rst $38
    ld h, a
    rst $38
    ld hl, $55ff
    rst $38
    adc d
    rst $38
    ld d, [hl]
    rst $38
    xor [hl]
    rst $38
    ld e, l
    rst $38
    xor [hl]
    rst $38
    ld d, l
    rst $38
    xor [hl]
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    push af
    rst $38
    ld [$75ff], a
    rst $38
    xor [hl]
    rst $38
    ld d, l
    rst $38
    xor b
    rst $38
    ld d, l
    rst $38
    and d
    rst $38
    ld bc, $01ff
    rst $38
    ld de, $fbff
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
    ld a, a
    rst $38
    ccf
    cp a
    rra
    rst $38
    rra
    rst $38
    sbc a
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    rst $08
    ccf
    ld c, a
    rra
    adc a
    rrca
    rst $00
    rlca
    ld b, e
    add a
    rst $20
    rla
    rst $08
    daa
    db $db
    daa
    rst $30
    inc sp
    cp e
    rst $38
    rst $18
    sbc a
    sbc a
    ld a, a
    ccf
    ld a, a
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rlca
    rlca
    inc c
    inc l
    ld a, b
    ld a, b
    ldh a, [$f0]
    dec bc
    dec bc
    nop
    rst $38
    ccf
    ret nz

    scf
    ret z

    add c
    nop
    ld bc, $b701
    add hl, bc
    rst $38
    rst $38
    rst $38
    add a
    rlca

Call_055_7cdb:
    rlca
    rrca
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    rra
    ccf
    rra
    ccf

jr_055_7ce9:
    ccf
    ld a, a
    ccf
    ld l, a
    ld e, a
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
    cp $fd
    cp $fa
    db $fd
    rst $30
    ld sp, hl
    di
    push af
    ld [$e1e5], a
    xor $c2
    call $c19e
    adc h
    sub e
    rra
    ld a, a
    cp $3e
    rst $18
    rra
    add c
    ld a, l
    cp [hl]
    ld b, c
    cp l
    ld b, e
    ld e, $62
    add [hl]
    or $2d
    inc bc
    ld b, l
    cp d
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, a
    jr nz, jr_055_7d8e

    jr nz, jr_055_7ce9

    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    rst $10
    rst $38
    ld [hl], d
    rst $38
    dec b
    rst $38
    adc d
    rst $38
    ld b, a
    rst $38
    xor d
    rst $38
    ld [hl], l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    cp d
    rst $38
    ld a, l
    rst $38
    cp d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, a
    rst $38
    xor d
    rst $38
    ld b, $ff
    ld [bc], a
    rst $38
    ld b, l
    rst $38
    cp d
    rst $38
    ldh a, [rIE]
    cp e
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
    ld [$dfff], a
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
    cp e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_055_7d8e:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor $ff
    push af
    rst $38
    rst $38
    rst $38
    rst $10
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
    ld [$fdff], a
    rst $38
    ld [$75ff], a
    rst $38
    xor b
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
    or $0f
    cp $00
    xor $00
    cp $00
    ret nz

    nop
    ldh [rP1], a
    ld [hl], b
    add b
    adc a
    ldh a, [$c3]
    db $fc
    add e
    db $fc
    ld hl, $e0fe
    rst $18
    rst $38
    ret nz

    ret nz

    ret nz

    ldh [$c0], a
    rst $18
    ldh [$df], a
    ldh [$f0], a
    ldh [$f0], a
    ldh [$fd], a
    ld [c], a
    pop hl
    cp $df
    ldh [$df], a
    ldh [$9e], a
    ldh [rIE], a
    ret nz

    adc $e1
    xor h
    jp $c738


    and b
    ld a, a
    ld h, h
    rst $38
    db $e4
    rst $38
    inc hl
    db $fc
    adc c
    ld a, [hl]
    ld c, $f1
    ld d, a
    xor b
    ld [c], a
    rra
    ld [bc], a
    rst $38
    rrca
    ldh a, [rTAC]
    ld hl, sp-$04
    db $fc
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    cp a
    ret nz

    ret nz

    add e
    add e
    nop
    ld bc, $00ff
    rrca
    ldh a, [$72]
    dec c
    inc hl
    nop
    ld b, e
    nop
    add c
    nop
    ld b, c
    add b
    ld b, b
    add b
    ld hl, $51ff
    rst $38
    ld [hl-], a
    rst $38
    db $10
    rst $38
    xor d
    rst $38
    ld e, a
    rst $38
    xor [hl]
    rst $38
    ld d, a
    rst $38
    xor e
    rst $38
    ld d, a
    rst $38
    xor e
    rst $38
    dec d
    rst $38
    xor d
    rst $38
    ld d, a
    rst $38
    cp d
    rst $38
    ld [hl], l
    rst $38
    cp d
    rst $38
    rst $10
    rst $38
    xor d
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld d, b
    rst $38

jr_055_7e5c:
    and b
    rst $38
    ld d, d
    db $fd
    or b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    ld a, a
    rst $38
    or d
    rst $38
    rst $00
    jr c, jr_055_7e5c

    db $fc
    rst $30
    db $fc
    db $fd
    cp $ff
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $30
    rst $38
    ld a, [$d5ff]
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, b
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor b
    rst $38
    ld d, b
    rst $38
    xor b
    rst $38
    inc d
    rst $38
    nop
    rst $38
    ld d, h
    rst $38
    ld [$55ff], a
    rst $38
    xor a
    rst $38
    ld d, a

jr_055_7eaf:
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [$fdff]
    rst $38
    rst $38
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
    cp h
    inc bc
    ld h, c
    ld [bc], a
    ldh [rTAC], a
    call nc, Call_000_097f
    ld a, [hl]
    ld c, e
    cp h
    inc e
    inc e
    jr jr_055_7eec

    ld a, $3e
    db $fc
    db $fd
    call nz, $ffc4
    rst $38
    rra
    sbc a
    ccf
    cp a
    add [hl]
    add [hl]
    ld a, d
    ld a, d
    inc bc
    db $eb
    nop
    rst $38
    jr nz, @-$3f

    nop
    or [hl]

jr_055_7eec:
    ld b, b
    ld e, a
    nop
    sbc l
    nop
    ret nz

    ldh a, [$f0]
    sub $d6
    xor $ee
    adc $ce
    ld [$ffea], a
    rst $38
    cp $fe
    inc a
    dec a
    di
    di
    rst $20
    rst $20
    rst $30
    rst $30
    ld h, b
    db $fc
    ret nz

    rst $38
    ld b, b
    ld [hl], a
    ld b, b
    rst $38
    jr z, jr_055_7f22

    or b
    adc b
    ret nc

    rst $08
    sub h
    xor a
    ldh [$ef], a
    ld a, [hl]
    ld h, c
    ccf
    jr nz, jr_055_7f9e

    ld h, b
    ret nz

    ld h, b

jr_055_7f22:
    ld h, b
    ret nz

    ld a, a
    ldh [$d8], a
    jr nz, @-$7e

    jr nz, jr_055_7eaf

    jr nz, jr_055_7f93

    jr nz, jr_055_7f8f

    nop
    adc h
    rst $38
    db $dd
    rst $38
    ld hl, sp-$01
    ld c, c
    rst $38
    ld [hl+], a
    rst $38
    ld d, a
    rst $38
    xor $ff
    rst $18
    rst $38
    xor [hl]
    rst $38
    ld e, a
    rst $38
    xor [hl]
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    cp d
    rst $38
    ld a, l
    rst $38
    ld a, [$f7ff]
    rst $38
    xor d
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld bc, $03fe
    rst $38
    add l
    ld a, a
    add e
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $eb
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_055_7f6e:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    ld e, a
    rst $28
    rra
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
    ld [hl], a
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    xor a
    rst $38
    ld d, a

jr_055_7f8f:
    rst $38
    rst $38
    rst $38
    rst $38

jr_055_7f93:
    db $fc
    rst $38
    ld hl, sp-$06
    db $fd
    ld hl, sp-$01
    rst $38
    ld hl, sp-$04
    ei

jr_055_7f9e:
    ldh a, [rIE]
    db $fc
    di
    rst $38
    ldh a, [$fe]
    pop af
    ld a, [c]
    db $fd
    db $fd
    ld [c], a
    db $dd
    ld [c], a
    adc d
    pop bc
    add b
    add c
    cp $81
    cp $81
    rst $38
    nop
    ld [bc], a
    db $fd
    ld e, h
    and e
    ld c, a
    or b
    rst $28
    jr nc, jr_055_7f6e

    jr nc, jr_055_7ffe

    ld a, l
    ld h, l
    add l
    di
    inc b
    add $30
    ccf
    ccf
    ld e, l
    ld e, l
    ld d, b
    ld d, b
    ld b, b
    ld b, b
    adc h
    adc h
    rst $20
    and $80
    or a
    nop
    ld a, a
    ld bc, $007a
    cpl
    pop bc
    adc $c9
    sub $df
    ldh [$dc], a
    jp $ebe0


    inc b
    dec de
    nop
    inc bc
    ld h, c
    ld h, c
    ld [hl], e
    ld a, e
    ld l, e
    ld [hl], e
    ld a, a
    ld h, a
    ld e, c
    ld b, l
    ld e, e
    db $e3
    ld e, b
    ld b, h
    inc a
    ld [hl+], a
    inc [hl]
    ld [hl], e
    inc e
    ld a, a

jr_055_7ffe:
    sbc h
    rst $38
