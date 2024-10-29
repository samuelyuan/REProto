SECTION "ROM Bank $088", ROMX[$4000], BANK[$88]

    add l
    db $10
    rst $28
    db $10
    ld b, a
    db $18, $c1
    inc e
    push hl
    jr jr_088_4066

    adc h
    inc sp
    adc h
    ld [hl], c
    inc c
    sbc e
    inc h
    cp e
    inc b
    or a
    inc c
    ld c, c
    sub [hl]
    ld bc, $e196
    ld d, $bd
    ld [bc], a
    ld d, [hl]
    ld [bc], a
    ccf
    ld b, d
    ei
    ld [bc], a
    cp h
    ld b, e
    or $01
    cp [hl]
    ld b, c
    ei
    ld bc, $817f
    ld l, b
    sub c
    ld l, a
    sub b
    xor d
    pop de
    cp a
    ret nz

    db $dd
    and b
    cp e
    call nz, $c0bf
    cp a
    ret nz

    ld e, h
    pop hl
    ld a, a
    ret nz

    ld d, d
    db $ed
    ld c, a
    ldh a, [$33]
    db $ec
    add hl, sp
    and $20
    rst $38
    and b
    ld a, a
    add hl, hl
    or $5c
    or e
    ld e, [hl]
    or c
    db $10
    rst $38
    inc d
    ei
    ld d, b
    cp a
    ld [$2fff], sp
    rst $18
    adc l
    ld a, b
    rrca
    ld hl, sp+$0b
    db $fc
    add e
    ld a, h

jr_088_4066:
    inc bc
    db $fc
    ld b, a
    cp h
    rst $00
    cp h
    nop
    add b
    ld h, b
    rla
    add b
    rst $30
    nop
    rst $30
    add b
    rst $30
    sub h
    rst $30
    ld bc, $00f7
    ei
    nop
    ei
    nop
    ei
    nop
    ld a, e
    jr nz, jr_088_40ff

    nop
    ld a, e
    ld d, b
    ld a, e
    ld b, b
    ld a, b
    nop
    nop

Call_088_408c:
    nop
    nop
    nop
    nop
    ld a, [$ff05]
    nop
    rst $38
    nop
    rst $38
    nop
    cpl
    ret nc

    rst $38
    nop
    rst $38
    ld b, $ff
    nop
    rst $38
    rst $38
    ldh [$e0], a
    nop
    ld e, $00
    sbc a
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    ld c, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld c, a
    db $fc
    inc a
    db $fc
    db $fc
    ld hl, sp-$08
    nop
    cp b
    ld bc, $0e89
    rst $08
    ld a, b
    ld a, c
    pop hl
    ei
    ld hl, $23b9
    ld a, c
    inc hl
    ld sp, $3329
    dec h
    ld hl, $123a
    ld [de], a
    ld e, d
    rrca
    ld [$4e0b], a
    db $db
    ld a, [bc]
    dec a
    inc c
    dec bc
    dec b
    ld [$c207], sp
    cp l
    ld a, [de]
    push hl
    ld bc, $50fe
    ld d, d
    ld [$008a], sp
    rst $38
    db $fd
    rst $28
    dec sp
    rlca
    ei
    rlca
    add e
    ld a, a
    rrca
    rst $38
    ld hl, sp-$01
    pop hl
    rst $38
    adc a

jr_088_40ff:
    rst $38
    jp nc, $bf04

    nop
    cp a
    nop
    ld b, c
    ld a, [bc]
    db $e3
    ld [$08e3], sp
    ld [$fb01], a
    nop
    rst $28
    nop
    and h
    ld bc, $05f0
    ld [hl], c
    inc b
    ld d, b
    inc b
    or [hl]
    nop
    ld a, [$f804]
    ld [bc], a
    sbc d
    ld b, b
    ld a, c
    ld [bc], a
    ld sp, $3902
    ld [bc], a
    ret c

    ld bc, $03d0
    db $f4
    inc bc
    db $76
    add c

jr_088_4130:
    ld h, c
    add l
    ld h, b
    add l
    xor a
    add b
    rst $08
    add b
    push hl
    adc b
    ccf
    ret nz

    ccf
    ret nz

    rst $10
    ld b, b
    sub a
    ld b, b
    ld [hl+], a
    ld d, l
    or d
    ld b, l
    sub e
    ld h, h
    ld [de], a
    push hl
    di
    inc h
    xor [hl]
    ld [hl], c
    xor [hl]
    ld [hl], c
    di
    inc l
    ld c, l
    or d
    ld a, [de]
    pop af
    dec hl
    ret nc

    ccf
    ret nc

    inc d
    ei
    sub $f9
    ld l, d
    dec e
    ld a, [$fa0d]
    dec c
    ld a, [$e90d]
    ld c, $f0
    rrca
    or l
    ld c, $01
    ld [bc], a
    jr z, jr_088_4130

    rst $20
    rrca
    add sp, $07
    ld [$ee07], a
    inc bc
    xor $03
    xor $03
    xor $03
    ld l, l

Call_088_417f:
    add e
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    add sp, -$01
    nop
    rst $38
    ld a, b
    add a
    ld [c], a
    dec e
    rst $38
    nop
    rlca
    ld hl, sp-$01
    nop
    db $fd
    dec e
    rst $38
    xor b
    rst $38
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    nop
    cp a
    cp a
    nop
    nop
    nop
    sbc a
    nop
    rst $38
    ld b, $f6
    ld a, $3e
    rst $30
    rst $30
    ld sp, hl
    ld sp, hl
    nop
    ld hl, sp+$01

jr_088_41b3:
    ldh [rP1], a
    ret nz

    nop
    and b
    ld a, [bc]
    add b
    scf
    nop
    cp a
    nop
    nop
    ld b, b
    cp l
    dec a
    jp $c1e1


    rst $10
    and b
    db $fc
    sub [hl]
    or b
    ld [hl], a
    sbc b
    ld a, d
    inc c
    push de
    inc b
    ld c, $06
    rra
    inc bc
    dec hl
    ld bc, $0015
    nop
    nop
    ld de, $0300
    inc bc
    ld c, $0f
    db $10
    ldh [$c0], a
    ld b, b
    rra
    and $00
    rst $38
    and b
    ld h, e
    ld c, [hl]
    add hl, hl

jr_088_41ec:
    adc $39
    ld c, $f1
    nop
    ld a, [$7e00]
    nop
    jr nc, jr_088_41f7

jr_088_41f7:
    jp $0f00


    nop
    ld a, a

Jump_088_41fc:
    nop
    rst $38
    nop
    rst $38
    reti


    ld [hl], $9b
    ld [hl], h
    dec e
    ld a, [c]
    cp c
    ld d, [hl]
    rst $30
    jr jr_088_41b3

    ld e, a
    rst $28
    rra
    sub a
    ld l, b
    ld h, a
    sbc b
    rst $38
    ld [$a85f], sp
    rst $20
    jr jr_088_41ec

    inc l
    or e
    ld c, h
    and e
    ld e, h
    ld [$a715], a
    ld e, h
    db $dd
    ld h, $d7
    inc l
    inc sp
    adc h
    ld sp, hl
    ld b, $b9
    ld b, $b9
    ld b, $eb
    ld d, $d3
    ld l, $5b
    and [hl]
    ld l, h
    sub e
    ld b, l
    cp d
    ld d, h
    xor e
    ld [hl], b
    adc a
    ld [hl], c
    adc a
    daa
    reti


    inc sp
    call $df21
    and l
    ld e, e
    db $f4
    ld c, e
    or h
    ld c, e
    ld [de], a
    db $ed
    ld hl, sp+$47
    ld hl, sp+$47
    inc c
    di
    ld a, [hl-]
    rst $38
    ld de, $5bee
    and h
    ld e, e
    and h
    rst $38
    nop
    ld c, d
    add l
    ld e, e
    and h
    dec hl
    call nc, $d22d
    inc sp
    call z, $e926
    inc sp
    db $ec
    inc hl
    db $ec
    inc de
    db $ec
    ld [hl], $09
    ld h, c
    ld c, $02
    ld [hl], l
    ld de, $1176
    db $76
    ld d, h
    scf
    ld b, e
    inc [hl]
    ld b, e
    inc [hl]
    ld bc, $7776
    rst $38
    ld [hl], a
    rst $38
    ld [hl], a
    rst $38
    ld a, a
    add c
    inc bc
    db $fc
    jp Jump_000_273c


    ret c

    add sp, $17
    rst $38
    rrca
    rst $38
    ld a, [hl]
    rst $38
    rst $20
    rst $38
    sbc a
    rst $30
    push af
    rst $38
    rst $30
    rst $30
    ld d, $fe
    ld a, c
    rlca
    rst $20
    ccf
    ccf
    ldh a, [$f5]
    add b
    jp Boot


    nop
    ret z

    ld [bc], a
    jr nz, jr_088_42b8

    nop
    ld a, [de]
    nop
    dec h
    nop
    inc h
    nop
    ld b, $00

jr_088_42b8:
    ld c, [hl]
    nop
    cp $00

Jump_088_42bc:
    rlca
    rlca
    ei
    ld hl, sp-$70
    rlca
    ld bc, $06fc
    ld [hl], b
    db $d3
    add b
    rst $28
    add b
    sub [hl]
    ret nz

    cp l
    ret nz

    ld [hl], h
    ret nz

    nop
    ld b, b
    nop
    ld b, b
    add b
    ld b, b
    ld bc, $a8c1
    ld c, a
    add [hl]
    ld a, d
    inc c
    ldh a, [$03]
    and d
    nop
    and b
    db $10
    add b
    add c
    ld de, $788f
    adc $f1
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst $38
    nop
    add a
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
    ld c, d
    or l
    adc $31
    ld c, b
    or a
    ld e, b
    or a
    db $f4
    dec de
    jr @-$07

    or $f9
    or $19
    or [hl]
    add hl, de
    or $19
    and [hl]
    add hl, de
    and [hl]
    add hl, de
    xor [hl]
    add hl, de
    and a

jr_088_431b:
    jr jr_088_431b

    add hl, bc
    ld a, [$db0d]
    inc c
    db $db
    inc l
    or a
    ld c, a
    db $d3
    inc c
    ld a, [c]
    inc c
    push hl
    ld [$04b9], sp
    db $ed
    inc b
    ld a, a
    inc b
    and $04
    db $ec
    inc b
    or $04
    ld a, [$db04]
    inc h
    ei
    inc b
    ld h, c

Jump_088_433f:
    ld d, $fe
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    ld e, a
    and d
    ld a, [hl]
    add d
    ld a, l
    add d
    db $dd
    and d
    adc $b1
    cp l
    jp $c3bd


    inc de
    db $ed
    ld d, c
    rst $28
    dec sp
    push bc
    ld a, a
    pop bc
    rst $18
    ld h, c
    sub $69
    call nc, $946b
    ld l, e
    sub h
    ld l, e
    add b
    ld a, a
    and b
    ld a, a
    ld h, b
    cp a
    ldh [$3f], a
    pop hl
    ld a, $b0
    ld l, a
    ret nz

    ccf
    ld b, b
    cp a
    ld [hl], b
    sbc a
    ld d, b
    cp a
    or b
    ld e, a
    sub b
    ld a, a
    jr nc, @-$1f

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
    sbc a
    ccf
    rst $08
    rra
    add sp, $0f
    ld a, b
    rlca
    ld [$3c07], sp
    inc bc
    db $fc
    inc bc
    inc e
    inc bc
    ld a, [hl]
    ld bc, $837c
    ld c, $f1
    ldh a, [rIE]
    ld c, $be
    nop
    ld c, $00
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
    db $d3
    nop
    ld l, l
    nop
    sbc h
    nop
    ret c

    nop
    nop
    nop
    rst $38
    rst $38

Jump_088_43be:
    rst $38
    ld b, b
    ld a, a
    ld b, b
    rst $18
    ld b, b
    db $dd
    ld b, b
    pop de
    ld b, b
    ld [$a022], a
    jr nz, jr_088_43f6

    add hl, hl
    jr nz, jr_088_43f0

    nop
    jr nz, jr_088_43e3

    jr nc, jr_088_43dd

    rla
    adc e
    ld [hl], b
    ret nz

    ld d, b
    nop
    stop

jr_088_43dd:
    db $10
    db $e3
    dec de
    dec sp
    jr jr_088_4421

jr_088_43e3:
    add hl, de
    rst $38
    rra
    call c, $e13f
    rst $38
    rlca
    rst $38
    ccf
    rst $38
    rst $38
    rst $38

jr_088_43f0:
    rst $38
    rst $38
    rst $38

jr_088_43f3:
    rst $38
    rst $38
    rst $38

jr_088_43f6:
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    ldh [rIE], a
    add b
    adc a
    ld b, b
    cpl
    ret nz

    inc bc
    ldh [$09], a
    ldh [$83], a
    ld l, b
    dec hl
    ldh [$2f], a
    ldh [rNR50], a
    pop hl
    jr nz, jr_088_43f3

    ld l, h
    and c
    sub a
    ld h, b
    and a
    ld h, b
    ld d, a
    and b
    ld d, a
    and b
    rst $28
    db $10
    ld c, c
    or h
    ld a, l

jr_088_4421:
    sub b
    ld d, l
    or b
    rst $30
    ldh a, [$e5]
    db $10
    and e
    inc d
    db $e3
    inc d
    rst $08
    db $10
    push bc
    db $10
    ld c, a
    db $10
    or l
    ld a, [bc]
    sub a
    ld [$02ec], sp
    pop hl
    ld a, [bc]
    pop hl
    ld a, [bc]
    and l
    ld a, [bc]
    add $09
    ldh [$0d], a
    ld [c], a
    dec c
    xor e
    ld b, h
    ld sp, hl
    ld b, $f8
    ld b, $b8
    ld b, $77
    inc b
    ld [hl], l
    ld b, $7a
    dec b
    ld a, d
    dec b
    ld a, b
    rlca
    or b
    rrca
    ldh a, [rIF]
    ld hl, sp+$07
    ld l, h
    sub e
    ld a, h
    add e
    db $76
    adc e
    ld a, $c3
    ld a, [$da87]
    and a
    di
    adc a
    rst $20
    sbc e
    db $e3
    sbc a
    inc sp
    rst $08
    sub e
    rst $28
    inc hl
    rst $18
    ld h, e
    rst $18
    ld [hl], c
    rst $08
    ld h, c
    rst $18
    ld d, c
    rst $28
    ld b, c
    rst $38
    ld b, c
    rst $38
    nop
    rst $38
    nop

jr_088_4483:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
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

jr_088_44a0:
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
    ld a, a
    nop
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    and b
    rra
    ld h, b
    rra
    ldh [$1f], a
    nop
    inc bc
    nop
    db $fd
    jr jr_088_44e6

    add hl, bc
    daa
    dec c
    inc hl
    inc d
    inc hl
    ld [de], a
    ld hl, $1102
    add c
    db $10
    pop hl
    db $10
    jr nz, jr_088_44a0

    ld c, b
    ld [hl], b
    add d
    ld a, h
    and d
    sub c
    add c
    sbc b
    ld h, a
    ld e, [hl]
    daa
    jr c, jr_088_4483

    cp c
    ldh [$1f], a
    ld [$00d8], sp
    inc bc
    nop
    rrca

jr_088_44e6:
    jr nz, jr_088_4567

    add b
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ldh a, [rIE]
    add b

jr_088_44f8:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld h, b
    add e
    ld a, [hl-]
    add c
    sub $81
    ld e, a
    add c
    ld a, [hl]
    add c
    db $76
    adc c
    dec sp
    pop bc
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    ld [hl], d
    pop bc
    ld a, h
    jp Jump_088_41fc


    or $41
    cp $41
    db $ec
    ld b, c
    adc [hl]
    ld h, c
    ei
    ld b, b
    ld e, $e1
    ld c, a
    ldh a, [$1f]
    ldh [$5f], a
    ldh [$1f], a
    ldh [$37], a
    add sp, $3f
    ldh [$af], a
    ld [hl], b
    cpl
    ldh a, [$3f]
    ldh [rIE], a
    jr nz, jr_088_44f8

    ld h, b
    cpl
    ldh a, [$83]
    ld a, h
    adc e
    ld [hl], h
    add d
    ld a, l
    push de

jr_088_4543:
    ld a, [hl-]
    ld d, c

jr_088_4545:
    cp [hl]
    db $db
    inc [hl]
    dec c
    ld a, [c]
    jr jr_088_4543

    jr jr_088_4545

    ld e, b
    or a
    sub b
    ld a, a
    inc d
    rst $38
    ld e, l
    or b
    dec de
    ldh a, [rIF]
    ldh a, [$8d]
    ld [hl], b
    dec bc
    ldh a, [$8d]
    ld [hl], b
    add hl, de
    ldh a, [$63]
    sbc b
    add [hl]
    ret c

    add b

jr_088_4567:
    dec bc
    adc [hl]
    rrca
    adc b
    inc c
    adc b
    adc b
    rst $28
    sbc a
    call nc, $e8ff
    ldh a, [$e7]
    ldh [$e7], a
    ld hl, sp-$08
    ldh [$f4], a
    db $e3
    rst $30
    ei
    rst $28
    di
    rst $38
    di
    rst $30
    ei
    or a
    ei
    or c
    cp $30
    db $fc
    or b
    ld a, h
    ld [hl], b
    ld a, h
    jr nc, @+$3e

    db $10
    inc e
    db $10
    inc e
    ld [$080c], sp
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

    ret nz

    rst $38
    ret nz

    ld a, a
    pop bc
    ld a, [hl]
    rst $08
    ldh a, [$fe]
    ld b, b
    pop af
    ret nz

    rst $08
    ret nz

    ld a, a
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
    ld h, b
    rst $38
    nop
    rst $38
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
    ld [$04f3], sp
    ld a, [$f305]
    inc b
    di
    inc b
    db $76
    add c
    or $01
    cp $01
    ld a, [c]
    dec b
    or $01
    ld hl, sp+$05
    ld sp, hl
    inc b
    jp hl


    inc b
    ld sp, hl
    inc b
    rst $28
    db $10
    db $fd
    nop
    cp e

jr_088_4601:
    inc b
    inc sp
    add h
    db $dd
    ld [bc], a
    ld [hl], e
    add h
    ld [hl], a
    add h
    ld [c], a
    adc l
    and $89
    ld e, l
    add d
    dec c
    sub d
    add $91
    ld l, d
    sub l
    ld l, l
    sub d
    ld e, l
    add d
    ld d, h
    adc e
    ld c, l
    sub d
    ld c, b
    sub a
    ld b, l
    sbc d
    nop
    rst $18
    dec l
    jp nc, $c7b8

    jr z, jr_088_4601

    or d
    ld c, a
    ld de, $b3ce
    ld c, [hl]
    rst $38
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
    rst $28
    rst $00
    add a
    or a
    add a
    add a
    add a
    rst $10
    add a
    ld d, a
    add a
    rst $38
    rst $38
    cp $ff
    inc e
    rst $38
    inc c
    rst $38
    rst $38
    rst $38
    inc e
    adc a
    ld [hl], b
    rrca
    db $e3
    dec c
    ld l, d
    dec b
    ld a, [hl]
    dec bc
    cp [hl]
    ei
    ld a, [$c8ff]
    rst $38
    ldh [$fb], a
    ldh a, [rIE]
    ei
    rst $38
    ld e, e
    rst $38
    ld a, e
    ld a, a
    ld e, e
    ld e, a
    ld c, d
    ld c, [hl]
    ld [$080c], sp
    inc c
    ld [$080c], sp
    inc c
    ld [$0c0c], sp
    inc c
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
    ld bc, $0ffe
    ldh a, [$7e]
    add b
    pop af
    nop
    adc a
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

jr_088_46a9:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [$3f], a
    ldh [$3f], a
    and c
    ld a, [hl]
    nop
    rst $38

jr_088_46b8:
    db $e4
    dec sp
    cp h
    ld h, e
    rst $18
    ccf
    ld c, d
    or l
    sbc [hl]
    ld h, c
    adc $31
    ld c, d
    or l
    sub [hl]
    ld l, c
    cp $21
    ld e, $e1
    sbc [hl]
    ld h, c
    dec c
    ld a, [c]
    rlca
    ld hl, sp+$7e
    and c
    adc $31
    rst $08
    jr nc, jr_088_46b8

    jr nz, jr_088_46a9

    ld sp, $60bf
    ld c, a

jr_088_46df:
    or b
    ld c, a
    or b
    rlca
    ld hl, sp-$75
    ld [hl], h
    adc d
    ld [hl], l
    ld b, $f9
    rra
    ldh [$0e], a
    pop af
    ld b, [hl]
    cp c
    rlca
    ld hl, sp+$5b
    or h
    ld [bc], a
    db $fd
    sbc d
    ld [hl], l
    ld h, [hl]
    ld sp, hl
    sub [hl]
    ld sp, hl
    ld b, b
    cp a
    jr nc, jr_088_46df

    ld c, c
    or [hl]
    ld d, h
    cp e
    ld c, d
    or l
    ld a, b
    sub a
    ld l, b
    sub a
    or b
    ld e, a
    ldh [$1f], a
    ld d, b
    cp a
    ret nc

    ccf
    db $10
    rst $38
    ld b, b
    rst $38
    ret nc

    ldh [$a0], a
    ld d, b
    db $fc
    ld bc, $708f
    add l
    ld a, d
    sub a
    ld [hl], b
    or a
    ld d, b
    ld [hl], e
    adc a
    ld l, $ef
    ccf
    rst $28
    cpl
    rst $38
    ld a, $ef
    dec bc
    rst $20
    nop
    rst $38
    ld bc, $e0f1
    pop af
    pop hl
    pop af
    ld hl, $2131
    ld sp, $3101
    jr nz, jr_088_4771

    jr nz, jr_088_4773

    jr nz, jr_088_4775

    jr nc, jr_088_4776

    nop
    nop
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
    ld bc, $0ffe
    ldh a, [$7e]
    add b
    pop af
    nop
    adc a
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
    add e

jr_088_4771:
    db $fc
    pop bc

jr_088_4773:
    cp h
    add l

jr_088_4775:
    db $fc

jr_088_4776:
    ld b, l
    cp h
    ld b, l
    cp h
    add l
    db $fc
    ld bc, $e3fc
    sbc h
    db $e3
    sbc h
    jp Jump_088_42bc


    cp l
    ret nz

    cp l
    jp $c2bc


    cp l
    rrca
    db $f4
    ld b, a
    cp h
    sub e
    db $fc
    add e
    db $fc
    ld a, e
    add h
    ld a, l
    add d
    push af
    ld a, [bc]
    ei
    inc b
    ld a, c
    add [hl]
    ld l, c
    add [hl]
    ld a, l
    add d
    ld e, l
    and d
    db $f4
    dec bc
    ld a, b
    add a
    ld sp, hl
    ld b, $7a
    add l
    ld [hl], d
    adc l
    inc de
    db $ec
    ld [hl], d
    adc l
    ld a, b
    add a
    ld a, [c]
    dec c
    ld a, b
    add a
    ld h, b
    sbc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld d, b
    xor a
    ld h, b
    sbc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld h, b
    sbc a
    or b
    rst $08
    ld c, b
    cp a
    ld d, b
    xor a
    ret z

    cp a
    ld b, b
    cp a
    ld c, b
    cp a
    nop
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    ld l, b
    sbc a
    adc b
    ld a, a
    ld l, b
    sbc a
    ld l, d
    rra
    adc e
    ld a, a
    xor e
    ld a, a
    xor e
    ld a, a
    dec bc
    ld a, a
    nop
    cp $00
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
    ret nz

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
    rst $38
    ld bc, $0ffe
    ldh a, [$7e]
    add b
    pop af
    nop
    adc a
    nop
    ld a, a
    nop
    rst $38
    nop
    db $fc
    ld hl, $21de
    cp [hl]
    ld h, c
    cp a
    ld h, c
    rst $30
    add hl, hl
    call nc, $ff2b
    ld hl, $35ea
    inc d
    db $eb
    cp [hl]
    ld h, c
    add h
    ld a, e
    dec de
    db $e4
    ld a, [hl-]

jr_088_4839:
    push hl
    db $dd
    ld [hl+], a
    cp b
    ld h, a
    sub l
    ld l, d
    adc l
    ld [hl], d
    dec c
    ld a, [c]
    ld e, l
    ld [c], a
    ld d, $eb
    dec d
    ld [$e25d], a
    ld d, l
    ld [$ea57], a
    ld c, c
    or $5d
    ld [c], a
    ld e, c
    and $05
    ld a, [$f24d]
    ld b, c
    cp $01
    cp $40
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, c
    cp $40
    rst $38
    ld d, h
    rst $38
    ld [hl], h
    rst $38
    ld e, h
    rst $00
    ld a, h
    rst $00
    jr c, jr_088_4839

    inc a
    rst $00
    inc a
    rst $00
    cp h
    rst $00
    cp h
    rst $00
    inc a
    rst $00
    sub h
    rst $28
    dec [hl]
    rst $08
    rra
    push hl
    inc h
    rst $18
    inc h
    rst $18
    ld de, $a4ef
    rst $18
    ld hl, $a1df
    rst $18
    pop bc
    cp a
    sub l
    rst $38
    adc e
    rst $38
    adc e
    rst $38
    nop
    ld hl, sp+$00
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop

jr_088_48a3:
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
    ldh a, [$3e]
    ret nz

    pop af
    nop
    rst $08
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
    ldh [$1f], a
    xor [hl]
    ld d, c
    xor d
    ld d, l
    xor b
    ld d, a
    ld l, c
    sub a
    ld hl, sp+$07
    add sp, $17
    ld e, b
    and a
    xor b
    ld d, a
    di
    dec c
    xor c
    ld d, a
    ret z

    scf
    db $f4
    dec bc
    jr c, jr_088_48a3

    ld l, c
    sub a
    sub c
    ld l, a
    add sp, $17
    ldh [$1f], a
    call z, $e033
    ccf
    jp $823e


    ld a, a
    ld b, c
    cp [hl]
    db $e3
    ld a, $53
    xor [hl]
    ld b, e
    cp [hl]
    nop
    rst $38
    ld [hl+], a
    rst $38
    jr nz, @+$01

    ld [bc], a
    rst $38
    inc [hl]
    rst $28
    nop
    rst $38
    inc d
    rst $28
    inc a
    rst $38
    ld b, h
    rst $38
    inc b
    rst $38
    ld b, h
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld l, h
    rst $10
    ld c, h
    rst $30
    add h
    rst $38
    ld b, h
    rst $38
    ld b, l
    rst $38
    dec b
    rst $38
    inc b
    rst $38
    ld b, b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld c, e
    rst $38
    ld [$4bff], sp
    rst $38
    dec bc
    rst $38
    adc c
    rst $38
    adc a
    rst $38
    set 7, a
    adc a
    rst $38
    adc b
    db $fc
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0ffe
    ldh a, [$3e]
    ret nz

    pop af
    nop
    rst $08
    nop
    ccf
    nop
    rst $38

jr_088_4953:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc c
    ei
    adc b
    rst $38
    ld [$04ff], sp

jr_088_4967:
    ei
    ld [$01ff], sp
    rst $38
    ldh a, [rIE]
    ld bc, $e1ff
    rra
    jr nc, jr_088_4953

    ld sp, $40df
    cp a
    ld e, c
    or a
    ld b, c
    cp a
    sub b
    ld a, a
    sub [hl]
    ld a, a
    sub c
    ld a, [hl]
    ld c, l

jr_088_4983:
    or d
    db $d3

jr_088_4985:
    inc l
    ld b, h
    cp e
    call $fc32
    inc hl
    ld e, h
    and e
    ld [de], a
    db $ed
    ld a, h
    and e
    inc e
    db $e3
    sbc h
    ld h, e
    and b
    ld a, a
    nop
    rst $38
    jr jr_088_4983

    jr jr_088_4985

    jr c, jr_088_4967

    ld h, b
    rst $18
    ld h, b
    rst $18
    ld h, b
    rst $18
    ld h, b
    rst $18
    ld b, h
    rst $38
    inc h
    rst $18
    ld b, h
    rst $38
    ld h, h
    rst $18
    ld b, l
    rst $38
    inc c
    rst $38
    adc l
    rst $38
    inc c
    rst $38
    ld c, h
    cp a
    adc l
    rst $38
    sbc c
    rst $38
    cp h
    rst $38
    xor d
    rst $38
    dec a
    rst $38
    cp [hl]
    rst $38
    sbc $ff
    ld e, [hl]
    rst $38
    ld e, [hl]
    rst $38
    ld e, [hl]
    rst $38
    ld a, [hl]
    db $fc
    nop
    ldh [rP1], a
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
    inc bc
    ld [bc], a
    inc bc
    nop
    rlca
    nop
    rlca
    ld bc, $0006
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ldh [$1f], a
    ld [hl], b
    rrca
    cp b
    rlca
    sbc $01
    rst $28
    nop
    di
    nop
    db $fd
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
    ld [hl], a
    adc b
    ld a, a
    adc b
    ld [hl], a
    adc b
    ld h, [hl]
    sbc c
    ld h, [hl]
    sbc c
    ld l, b
    sub l
    and $19
    cp b
    ld d, l
    adc $31
    jp c, $8635

    ld a, c
    sbc a
    ld [hl], b
    sub $39
    ld e, h
    or e
    push bc
    ld a, [hl-]
    ld h, [hl]
    cp c
    ld h, h
    cp e
    dec h
    ld a, [$fb24]
    db $e4
    ld a, e
    and h
    ld a, e
    ld hl, $0dfe
    ld a, [c]
    xor $71
    ld c, $f1
    ld hl, $41ff
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld d, b
    rst $28
    ld b, b
    rst $38
    ld b, e
    cp $43
    cp $e3
    cp $c7
    cp d
    sub c
    xor $c0
    cp a
    ld b, b
    cp a
    ret nc

    xor a
    ld d, l

jr_088_4a81:
    xor [hl]
    ld b, c

jr_088_4a83:
    cp [hl]
    rla
    db $ec
    inc b
    rst $38
    ld e, h
    rst $38
    ld [$01ff], sp
    cp $01
    cp $40
    cp a
    jr jr_088_4a83

    ld [$d0ff], sp
    xor a
    ld a, [de]
    db $ed
    ld e, c
    xor [hl]
    xor d
    db $dd
    add h
    ld a, e
    jr nz, jr_088_4a81

    nop
    rst $38
    ld de, $31ff
    rst $18
    ld de, $01ff
    rst $38
    nop
    rst $38
    add d
    ld a, a
    ld b, e
    cp [hl]
    inc bc
    cp $22
    rst $38
    ld [hl+], a
    rst $38
    jr nz, @+$01

    inc h
    rst $38
    inc b
    rst $38
    inc [hl]
    rst $38
    inc b
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld b, b
    rst $38
    db $10
    rst $38
    ld e, b
    rst $38
    nop
    rst $38
    add d
    ld a, a
    ld [$00df], sp
    rst $28
    dec c
    ld [hl], e
    dec b
    jr c, jr_088_4adb

jr_088_4adb:
    ld c, $00
    rlca
    nop
    ld bc, $ff00
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ld [hl], b
    rrca
    cp b
    rlca
    sbc $01
    rst $28
    nop
    rst $30
    nop
    ei
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
    ld b, c

jr_088_4b01:
    cp [hl]
    ld a, [bc]
    push af
    add e
    ld a, l
    cp e
    ld h, l
    jr z, jr_088_4b01

    ld a, a
    cp a
    ld h, [hl]
    cp a
    ld e, h
    and e
    inc a
    jp Jump_088_43be


    ccf
    jp nz, $c23f

    dec sp
    add $b9
    ld b, [hl]
    ld sp, $3bc6

jr_088_4b1f:
    call nz, $a45f
    ld hl, sp-$79
    ccf
    call nz, $d42b
    ld e, a

jr_088_4b29:
    and a
    ld [hl], e
    adc a
    inc sp
    call z, Call_000_08f1
    rst $30
    ld [$08f3], sp
    rst $30
    ld [$08f6], sp
    rst $20
    jr jr_088_4b29

    db $10
    xor a
    ld d, b
    db $e4
    db $10
    ld a, [hl]
    sub b
    xor a
    ld d, b
    sbc a
    ld h, b
    rst $18
    jr nz, jr_088_4b1f

    add hl, hl
    db $fc
    ld hl, $21fc
    sbc h
    ld h, c
    sbc $21
    ld e, h
    and e
    cp h

jr_088_4b55:
    ld b, e
    cp b
    ld b, e
    db $fc
    ld b, e
    sbc c
    ld b, d
    dec e
    jp nz, $c639

    ld e, l
    add d
    ld hl, sp-$79
    ei
    add h
    ld a, e
    add h
    ldh [$9f], a
    ld [hl], b
    adc a
    ld h, b
    sbc a
    ld a, b
    adc a
    ld hl, sp+$0f
    ld [hl], d
    adc l
    jr nz, jr_088_4b55

    ldh a, [rIF]
    ldh [$1f], a
    ld b, b
    cp a
    sub b
    ld a, a
    db $10
    rst $38
    nop
    rst $38
    ld de, $c1ff
    ccf
    ld bc, $21ff
    rst $38
    ld hl, $00ff
    rst $38
    ld h, c
    cp $00
    rst $38
    inc hl
    cp $43
    cp $41
    cp $41
    cp $c5
    cp $17
    db $fc
    ld d, [hl]
    cp l
    or a
    db $fc
    or b
    rst $38
    cp h
    ei
    sub b
    rst $38
    sbc b
    rst $38
    db $ec
    ld a, e
    inc bc
    cp h
    inc bc
    call z, $e704
    ld bc, $0079
    inc e
    nop
    rrca
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ld [hl], b
    rrca
    cp b
    rlca
    sbc $01
    rst $28
    nop
    rst $30
    nop
    ei
    nop
    db $fd
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
    ld b, b
    cp h
    ld b, c
    cp h
    call nz, $8538
    ld a, b
    dec b
    ld hl, sp-$77
    ld a, b
    adc d
    ld a, b
    add [hl]
    ld a, b
    adc b
    ld [hl], b
    adc d
    ld [hl], b
    sbc d
    ld [hl], b
    cpl
    ret nc

    sub a
    ld [hl], b
    inc sp
    ret nc

    ld b, e
    or b
    ld d, a
    and b
    ld e, a
    and b
    rst $08
    jr nc, jr_088_4c80

    and b
    and d
    ld l, c
    ld a, [bc]
    pop hl
    ret


    db $e3
    sub a
    ld h, c
    db $fd
    inc bc
    adc c
    ld d, a
    add hl, bc
    ld d, a
    jr nz, @+$59

    ld e, e
    and [hl]
    db $e3
    ld c, $63
    adc [hl]
    inc sp
    adc [hl]
    jp hl


    ld d, $31
    adc $b5
    ld c, [hl]
    push af
    ld c, $b7
    ld c, h
    or a
    ld c, h
    or d
    ld c, h
    inc sp
    call z, Call_088_59a6
    xor c
    ld e, [hl]
    xor h
    ld e, e
    and c
    ld e, [hl]
    ret


    ld a, $d0
    ccf
    or d
    ld e, l
    cp c
    ld d, [hl]
    db $dd
    ld [hl-], a
    add hl, de
    or $1d
    ld a, [c]
    ld hl, $30fe
    rst $28
    ld sp, $28ee
    rst $30
    jr c, @+$01

    ld [hl], $cf
    db $ed
    ld b, e
    ld e, h
    jp $c33c


    ld a, $c3
    ld e, [hl]
    add e
    db $dd
    add d
    jp hl


    add [hl]
    sbc b
    add a
    dec a
    add [hl]
    ld a, [hl]
    add l
    call c, $d207
    dec c
    or d
    ld c, l
    ei

jr_088_4c6b:
    dec c
    ld hl, sp+$0f
    ret c

    cpl
    db $ec
    dec de
    db $e4
    dec de
    or h
    ld e, e
    ld d, [hl]

jr_088_4c77:
    cp e
    ret c

    scf
    ret nz

    ccf
    ld d, b
    cp a
    ldh [$3f], a

jr_088_4c80:
    ld [hl], l
    xor a
    and c
    ld a, a
    add c
    ld a, a
    jr nc, jr_088_4c77

    ld b, d
    rst $38
    ld c, d
    rst $38
    ld d, d
    rst $38
    ld b, d
    rst $38
    inc b
    rst $38
    sub h
    rst $38
    inc b
    rst $38
    inc h
    ld a, a
    ld d, h
    sbc a
    jr nc, jr_088_4c6b

    inc b
    di
    ld b, $39
    ld bc, $001e
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
    ret nz

    ccf
    ldh [$1f], a
    ld [hl], b
    rrca
    cp b
    rlca
    sbc $01
    rst $28
    nop
    rst $30
    nop
    ei
    nop
    db $fd
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
    ld [hl], b
    db $10
    ld [hl-], a
    db $10
    ld h, [hl]
    db $10
    ld de, $d922
    ld [hl+], a
    ld l, h
    jr nz, jr_088_4d46

    and b
    db $db
    jr nz, jr_088_4c6b

    ld h, b
    sbc d
    ld h, b
    dec de

jr_088_4ce5:
    ldh [$ea], a
    ld b, c
    jp c, $c441

    ld d, c
    inc [hl]
    pop bc
    inc d
    pop bc
    ld [hl], d
    add c
    jp c, $e981

    add d
    ld d, d
    add d

jr_088_4cf8:
    ld a, d
    add d
    db $ec
    ld [bc], a
    call nc, $fa02
    inc b
    ldh a, [rDIV]
    add sp, $04
    db $eb
    inc b
    db $eb
    inc b
    and $08
    or $08
    ret nc

    ld [$08f0], sp
    call $c810
    ld de, $10eb
    db $eb
    db $10
    ld [$e610], a
    db $10
    ld e, e
    jr nz, jr_088_4ce5

    ld hl, $20d7
    add a
    jr nc, jr_088_4cf8

    inc h
    xor l
    ld b, d
    xor [hl]
    ld b, c
    and a
    ld c, c
    ld [hl], $c9
    ld a, $c1
    jp hl


    sub [hl]
    db $fd
    add d
    ret c

    and a
    ld de, $11ae
    xor [hl]
    inc de
    xor [hl]
    di
    rrca
    and d
    ld e, l
    ld [c], a
    dec e
    xor e
    ld d, h
    sub [hl]
    ld l, c

jr_088_4d46:
    sub a
    ld l, b
    sub a
    ld l, b
    add l
    ld a, d
    ld c, l
    or d
    ld c, l
    or d
    dec bc
    db $f4
    dec bc
    db $f4
    dec bc
    db $f4
    rrca

jr_088_4d57:
    ldh a, [rTAC]
    ld hl, sp-$7d
    ld a, h
    ld a, [hl+]
    push af
    inc c
    di
    ld d, $e9
    rst $10
    ld l, c
    dec e
    db $e3
    inc l
    db $d3
    ld e, $e3
    scf
    jp z, $d3ac

    ld c, b
    or a
    ld c, h
    or a
    ld h, b
    sbc a
    ld l, h

jr_088_4d75:
    sub a
    inc d
    rst $28
    jr @-$0f

    ld e, b
    xor a
    inc e
    db $eb
    adc b
    ld a, a
    add hl, bc
    rst $38
    inc d
    ei
    ld de, $10ff
    rst $38
    db $10
    rst $38
    ld h, b
    cp a
    ld h, b
    cp a
    inc b
    rst $38
    call nz, Call_088_417f
    cp a
    jr nz, jr_088_4d75

    add hl, de
    rst $20
    ld e, $71
    add hl, bc
    inc a
    nop
    rra
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
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ld a, b
    rlca
    sbc [hl]
    ld bc, $00ef
    rst $30
    nop
    ei
    nop
    db $fd
    nop
    ld a, h
    jr nz, jr_088_4e13

    jr nz, jr_088_4e35

    nop
    and $40
    inc d
    ld h, b
    cp d
    ld b, b
    ld d, $40
    sbc d
    ld b, b
    ld a, l
    add b
    ld b, h
    add c
    jr z, jr_088_4d57

    adc c
    nop
    cp d
    nop
    cp d
    nop
    adc b
    ld [bc], a
    add b
    ld a, [bc]
    or $00
    ld a, b
    inc b
    push af
    nop
    pop de
    nop
    inc d
    nop
    ld c, b
    nop
    ld b, e
    ld [$0802], sp
    dec h
    ld [$000f], sp
    dec c
    db $10
    jr nz, jr_088_4e08

    inc hl
    db $10
    scf
    ld b, b

jr_088_4dfc:
    ld l, [hl]
    ld de, $249b
    sbc [hl]
    ld hl, $20df
    ld e, a
    jr nz, jr_088_4e42

    ld b, h

jr_088_4e08:
    and e
    ld e, h
    or e
    ld c, h
    xor d
    ld d, l
    ld a, [hl+]
    ld d, l
    ld sp, $69cf

jr_088_4e13:
    sub a
    ld [hl], h
    adc e
    ld d, a
    xor d
    ld d, [hl]
    xor d
    ld d, c
    xor [hl]
    sub c
    ld l, $e7
    inc e
    db $76
    adc l
    pop hl
    ld e, $33
    ld c, h
    dec hl
    ld e, h
    adc [hl]
    ld a, b
    adc l
    ld a, d
    add $f9
    ld [hl], e
    db $fc
    ld a, [hl]
    sub c
    ld a, [c]
    dec e
    rst $10

jr_088_4e35:
    jr c, jr_088_4dfc

    ld a, [hl-]
    push hl
    ld a, [hl-]
    or l
    ld l, d
    cp d
    ld h, l
    jp c, $ef65

    ld d, b

jr_088_4e42:
    db $db
    ld h, h
    ld d, $e9
    ld d, $e9
    ccf
    pop bc
    ld [hl], c
    adc a
    ld c, e
    or l
    ld de, $02ef
    rst $38
    ld b, $fb
    inc bc
    cp $05
    cp $01
    cp $27
    call c, $fd06
    ld e, c
    xor h
    add hl, bc

jr_088_4e61:
    db $fc
    rrca

jr_088_4e63:
    ld hl, sp+$0d
    ld a, [$fa15]
    jr jr_088_4e61

    jr jr_088_4e63

    ld [$2cf7], sp
    di
    jr nc, jr_088_4e61

    jr nz, @+$01

    ld b, h
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    jr nz, @-$1f

    add c
    rst $38
    ld bc, $01ff
    rst $38
    ld hl, $02ff
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld b, $7f
    inc b
    sbc a
    inc b
    rst $08
    ld b, $f3

jr_088_4e94:
    nop
    ld a, c
    nop
    inc a
    nop
    rrca
    nop
    rlca
    nop
    ld bc, $0000
    nop
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
    ldh [$1f], a
    dec c
    ld b, d
    ld e, d
    nop
    ld e, a

jr_088_4eb5:
    nop
    sbc a
    nop
    cp h
    ld bc, $8134
    cp h
    ld bc, $057b
    ld a, h
    inc bc
    ld c, b

jr_088_4ec3:
    inc hl
    dec sp
    ld b, d
    ld a, a
    ld [bc], a
    ld a, a
    ld [bc], a
    ld a, c
    ld b, $73
    inc b

jr_088_4ece:
    rst $10
    inc b
    db $db
    inc b
    db $d3
    inc c

jr_088_4ed4:
    rst $30
    ld [$08fb], sp
    call $e438
    jr jr_088_4ec3

    jr jr_088_4e94

    ld d, b
    ld d, l
    or b
    push hl
    db $10
    sbc [hl]
    jr nz, jr_088_4f24

    jr nz, jr_088_4ed4

    jr nz, @-$7c

    ld h, b
    xor b
    ld b, b
    ld a, [$d840]
    ld b, b
    add hl, hl
    ret nz

    add hl, de
    ret nz

    db $f4
    add b
    cp b
    add b
    dec l
    add b
    ld a, h
    add c
    cp d
    ld bc, $01bd
    db $fc
    inc bc
    ld a, l
    ld [bc], a
    ld a, [$ea02]
    ld b, $f0
    ld b, $9e
    inc b
    cp l
    inc b
    push af
    inc c
    db $d3
    inc c
    rst $18
    ld [$08ff], sp
    ei
    ld [$10ed], sp
    push af
    db $10
    or a
    db $10
    pop bc

jr_088_4f21:
    jr nc, jr_088_4eb5

    ld h, b

jr_088_4f24:
    rst $30
    jr nz, jr_088_4ece

    ld h, b
    add a
    ld h, b
    add e
    ld h, b
    ld l, a
    ret nz

    ld l, a
    ret nz

    rra
    ret nz

    rst $18

jr_088_4f33:
    add b
    db $dd
    add d
    rst $38
    add b
    ld l, [hl]
    add c
    call c, $bf23
    ld b, c
    rst $18
    ld bc, $8358
    or $0b
    db $76
    adc e
    ret c

    daa
    ld l, h
    sub a
    db $e4
    rra
    add h
    ld a, a
    sbc b
    ld l, a
    jr c, jr_088_4f21

    jr z, jr_088_4f33

    ld [hl], b
    sbc a
    ld d, c
    cp [hl]
    ld de, $11fe
    cp $33
    db $fc
    ld h, c
    cp $21
    cp $40
    rst $38
    ld c, b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add h
    ei
    nop
    rst $38
    ld b, h
    ei
    add a
    ld a, e
    sub c
    ld a, a
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    and e
    cp $c5
    cp $85
    cp $26
    db $fd
    ld l, $fd
    adc e
    db $fc
    ld l, [hl]
    ld a, c
    inc e
    dec sp
    ld a, [bc]
    adc l
    nop
    rst $20
    ld bc, $00f3
    ld a, h
    nop
    ld e, $00
    rrca
    nop
    rlca
    nop
    ld bc, $0000
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
    jr jr_088_4fd3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_088_4fe3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_088_4ff3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_088_5003

    ld [hl-], a

jr_088_4fd3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_088_5013

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_088_4fe3:
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

jr_088_4ff3:
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

jr_088_5003:
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

jr_088_5013:
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


    jp c, $dbdb

    call c, $dedd
    rst $18
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    db $db
    db $db
    db $db
    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $db
    db $db
    rst $30
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    cp $ff
    nop
    ld bc, $0302
    inc b
    db $db
    db $db
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    db $db
    dec b
    inc d
    dec d
    ld d, $17
    jr jr_088_50de

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_088_50ee

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_088_50fe

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_088_510e

    ld [hl-], a

jr_088_50de:
    inc sp
    inc [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_088_50ee:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_088_50fe:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_088_510e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
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
    inc b
    ld [bc], a
    inc b
    inc b
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
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    inc b
    inc b
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
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0808], sp
    ld [$020c], sp
    ld [bc], a
    ld a, [bc]
    inc c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0c08], sp
    inc c
    ld [bc], a
    ld a, [bc]
    inc c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    inc c
    inc c
    ld a, [bc]
    inc c
    ld [$0808], sp
    ld [$0e0e], sp
    ld c, $0e
    ld c, $0e
    ld [$0908], sp
    ld c, $0c
    ld [$60c6], sp
    dec [hl]

jr_088_5223:
    ldh [$b5], a
    ld h, b
    sub a
    ld h, b
    or a
    ld b, b
    rlca
    ldh [$63], a
    and b
    xor l
    ld h, b
    and a
    ld h, b
    dec h
    ldh [$b5], a
    ld h, b
    pop af
    jr nz, jr_088_52ac

    and b
    ld d, e
    and b
    add hl, hl
    and b
    ld c, d
    and b
    ld [hl], d
    and b
    ld d, d
    and b
    ld b, e
    or b
    jp $4530


    or b
    ld d, c
    or b
    sub c
    ld [hl], b
    db $d3
    jr nc, jr_088_5223

    jr nc, @+$55

    or b
    ld d, $f0
    rla
    ldh a, [rNR22]

jr_088_5259:
    ldh a, [$15]
    ldh a, [rNR22]
    ldh a, [rHDMA1]
    or b
    sub l
    ld [hl], b
    sbc l
    ld [hl], b
    sbc a
    ld [hl], b
    jr jr_088_5259

    ld d, e
    cp b
    ld d, d
    cp b
    add d
    ld a, b
    ret nc

    ld a, [hl-]
    srl b
    ld l, [hl]
    sbc c
    xor $19
    ret z

    dec a
    sub $39
    inc e
    ld sp, hl
    db $fd
    ld hl, sp+$0c
    ld sp, hl
    db $fc
    add hl, bc
    cp h
    add hl, bc
    db $fc
    add hl, bc
    cp h
    add hl, bc
    cp [hl]
    add hl, bc
    or $09
    add $19
    ret c

    dec c
    cp [hl]
    add hl, bc
    cp h
    add hl, bc
    and b
    dec c
    and b
    dec c
    ld [c], a
    dec c
    or $09
    ld hl, sp+$05
    di
    inc c
    di
    inc c
    di
    inc c
    db $fd
    ld b, $fd
    ld b, $fd
    ld b, $ae
    ld b, l

jr_088_52ac:
    and $0d
    db $ec
    rlca
    db $fc
    rlca
    ld l, h
    add a
    ld [hl], h
    add a
    db $fc
    rlca
    db $f4
    rlca
    ld hl, sp+$07
    db $f4
    rlca
    di
    ld b, $fa
    rlca
    ld d, h
    and a
    ei
    ld b, $db
    ld h, $db
    ld h, $9b
    ld h, [hl]
    or e
    ld c, [hl]
    di
    ld c, $b6
    ld c, e
    add d
    ld a, a
    or $0b
    sub a
    ld l, e
    add $3b
    sub $2b
    jp c, $de27

    inc hl
    sbc $23
    rst $20
    dec de
    ld h, a
    sbc e
    ld d, e
    xor a
    ld e, e
    and a
    ld b, c
    cp a
    ld b, e
    cp a
    ld bc, $03ff
    rst $38
    add c
    ld a, a
    ld bc, $01ff
    rst $38
    and c
    ld a, a
    ld bc, $09ff
    rst $30
    ld h, c
    sbc a
    ld hl, $01df
    rst $38
    inc bc
    rst $38
    rla
    rst $38
    rra
    rst $38
    dec sp
    rst $38
    dec de
    rst $38
    inc de
    rst $38
    or e
    rst $38
    dec sp
    rst $38
    sbc a
    rst $38
    dec sp
    rst $38
    adc a
    rst $38
    and b
    rst $38
    dec bc
    rst $38
    rst $38
    rst $38
    jp hl


    inc c
    ret


    inc c
    db $db
    inc c
    cp e
    inc c
    xor c
    inc c
    ld d, b
    inc c
    and c
    inc c
    ei
    inc c
    ld h, [hl]
    inc c
    ld h, e
    inc c
    ld h, a
    inc c
    ld h, d
    inc c
    ld h, [hl]
    inc c
    ld a, $04
    dec b
    inc c
    rla
    inc c
    push af
    inc c
    ld d, a
    inc c
    ld d, a
    inc c
    ld a, a
    inc b
    xor $14
    xor [hl]
    inc d
    ld a, [hl]
    inc b
    ccf
    inc b
    ld a, [hl]
    inc b
    inc [hl]
    ld c, $f4
    ld c, $7d
    ld b, $e9
    ld d, $6d
    ld d, $6d
    ld d, $6d
    ld d, $a7
    ld e, $63
    ld e, $e3
    ld e, $f3
    ld c, $f3
    ld c, $eb
    ld d, $ea
    rla
    ld l, e
    sub [hl]
    ld a, a
    add d
    ld l, d
    sub a
    ld a, d
    add a
    cp d
    rlca
    cp d
    rlca
    xor d
    rla
    ld [$e317], a
    rra
    di
    rrca
    db $e3
    rra
    ld h, a
    sbc a
    ld h, e
    sbc a
    ld h, d
    sbc a
    inc sp
    sbc a
    add e
    ccf
    srl a
    jp Jump_088_433f


    cp a
    ld b, e
    cp a
    ld h, e
    sbc a
    db $e3
    rra
    ld h, e
    sbc a
    ld [hl], c
    adc a
    ld h, e
    sbc a
    ld l, e
    sub a
    ld b, e
    cp a
    add hl, hl
    rst $10
    add hl, hl
    rst $10
    ld [hl], c
    rst $08
    sub c
    ld l, a
    add c
    ld a, a
    adc c
    ld [hl], a
    pop bc
    ccf
    push af
    dec hl
    ld h, l
    cp e
    ld d, l
    xor e
    ld c, l
    or e
    ld b, e
    cp l
    ld e, c
    or a
    ld b, b
    cp a
    ld b, b
    cp a
    ld d, c
    cp a
    ld bc, $00ff
    rst $38
    dec d
    ei
    ld hl, $01df
    rst $38
    add c
    rst $38
    ld bc, $01ff
    rst $38
    add c
    rst $38
    add c
    rst $38
    pop de
    rst $28
    reti


    rst $28
    sbc b
    rst $28
    ret nc

    rst $28
    ld a, [c]
    rst $28
    ld a, [c]
    rst $28
    ld hl, sp-$11
    ld a, b
    rst $28
    pop af
    rst $28
    ldh [rIE], a
    ldh a, [$ef]
    jp hl


    rst $38
    xor c
    rst $38
    ldh [rIE], a
    ld [$a0ff], a
    rst $38
    inc h
    rst $38
    ld d, $ff
    ld a, l
    rst $30
    cp b
    rst $30
    sub b
    rst $38
    sub h
    ei
    ldh a, [rIE]
    ld a, [c]
    rst $38
    ld a, [c]
    rst $38
    or c
    rst $38
    or b
    rst $38
    cp d
    db $fd
    or c
    rst $38
    ld hl, sp-$01
    cp h
    rst $38
    or l
    cp $af
    cp $ae
    rst $38
    sbc a
    rst $38

jr_088_541e:
    cp a
    rst $38
    dec e
    inc bc
    ld d, l
    inc bc
    ld l, d
    inc bc
    or c
    inc bc
    cp h
    inc bc
    cp l
    inc bc
    db $fc
    inc bc
    rst $28
    ld bc, HeaderManufacturerCode
    ld [hl], c
    dec bc
    dec e
    inc bc
    adc a
    ld bc, $0197
    ld d, a
    ld bc, $01df
    db $eb
    ld bc, $01cb
    jp z, $cb01

    ld bc, $01db
    cp $01
    rst $38
    ld bc, $41be
    ccf
    ld b, c
    rst $38
    ld bc, $21df

jr_088_5454:
    rst $08
    ld sp, $11ee
    and $11
    ld a, $c1
    xor d
    ld b, l
    ld [$8d05], a
    ld h, d
    xor d
    ld b, l
    jp nc, $b225

    ld b, l
    sla h
    sla h
    ei
    inc b
    cp a
    ld b, b
    cp a
    nop
    sbc a
    jr nz, jr_088_5454

    jr nz, @-$1f

    jr nz, @-$21

    ld [hl+], a
    db $dd
    ld [hl+], a
    rst $18
    jr nz, jr_088_541e

    ld h, b
    sbc e
    ld h, h
    rst $38
    nop
    ld l, [hl]
    sub c
    inc hl
    call c, Call_088_58a7
    ld c, e
    or h
    ld c, d
    or l
    ld l, d
    sub l
    ld a, [hl+]
    push de
    scf
    ret z

    ld [de], a
    db $ed
    inc sp
    call z, $cd32
    ld d, d
    xor l
    ld c, d
    or l
    ld a, [hl-]
    push bc
    ld e, $e1
    ld e, [hl]
    and c
    call nz, $01bb
    cp $85
    ld a, [$fe81]
    rrca
    ld hl, sp-$78
    rst $38
    adc b
    rst $38
    and h
    rst $38
    add b
    rst $38
    sub b
    rst $38
    and d
    db $dd
    sub b
    rst $28
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret z

    rst $38
    adc e
    rst $38
    add l
    rst $38
    add l
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    cp $81
    or [hl]
    ret


    cp l
    jp nz, $ccb3

    cp a
    ret nz

    sbc l
    ld [c], a
    cp h
    jp $e31c


    cp l
    jp nz, $c1be

    cp l
    jp nz, $c1be

    cp [hl]
    pop bc
    xor [hl]
    pop de
    ld e, [hl]
    pop hl
    sub $e9
    sub $e9
    ld sp, hl
    add $eb
    call nc, $f748
    ld d, c
    xor $51
    xor $6c
    db $d3

Call_088_5500:
    ld c, l
    ld a, [c]
    ld c, b
    rst $30
    ld c, b
    rst $30
    ld b, b
    rst $38
    ld d, b
    rst $28
    ld c, c
    or $c2
    db $fd
    ld b, c
    cp $e6
    ld sp, hl
    jp z, $e6f5

    ld sp, hl
    ld a, [c]
    db $ed
    ld hl, sp-$19
    ld hl, sp-$19
    ld [hl], b
    rst $28
    rst $20
    rst $38
    ld b, a
    nop
    rst $20
    nop
    rst $28
    nop
    call $cf00
    nop
    rst $18
    nop
    ei
    inc b
    ld a, a
    nop
    halt
    ld d, [hl]
    nop
    rst $30
    nop
    di
    inc b
    rst $30
    nop
    db $ed
    ld [bc], a
    ld a, [hl]
    add c
    ld a, $c1
    cp [hl]
    ld b, c
    db $76
    adc c
    rst $30
    ld [$cc33], sp
    ld [hl], a
    adc b
    ld [hl], c
    adc [hl]
    dec bc
    db $f4
    rra
    ldh [$3f], a
    ret nz

    ld l, a
    sub b
    add hl, sp
    add $bb
    call nz, $e996
    and $99
    and $99
    jp nz, $febd

    add c
    rst $38
    add b
    ld a, [$b485]
    set 7, b
    add a
    cp $81
    cp [hl]
    pop bc
    xor $91
    xor b
    rst $10
    or b
    rst $08
    inc h
    db $db
    and a
    ret c

    sbc c
    add $19
    add $bb
    call nz, $c13e
    ccf
    ret nz

    cp a
    ret nz

    dec sp
    call nz, $c877
    ld e, b
    and $57
    add sp, $7f
    ret nz

    cp [hl]
    pop bc
    ld a, [hl]
    pop bc
    ld a, h
    jp $c378


    ld a, h
    jp $c778


    ld l, l
    jp nc, $e659

    ld [hl], h
    set 6, l
    ld c, d
    ld d, h
    db $eb
    add sp, $53
    ld h, h
    db $db
    ret nc

    ld l, e
    ld e, [hl]
    db $e3
    ld e, [hl]
    db $e3
    ld e, h
    db $e3
    ld c, [hl]
    di
    jp c, Jump_088_6c67

    di
    ld l, b
    rst $30
    ld h, h
    ei
    ld b, b
    rst $38
    ld h, b

jr_088_55bd:
    rst $38
    ld b, b
    rst $38
    ret nc

    ld l, a
    ld hl, sp+$67
    jr z, jr_088_55bd

    inc l
    di
    inc l
    di
    ld h, $fb
    ldh [rIE], a
    ld [$e6f7], a
    ld a, e
    ld h, $fb
    xor [hl]
    ld a, e
    and l
    ld a, e
    and a
    ld a, e
    and d
    ld a, a
    or [hl]
    ld a, e
    and [hl]
    ld a, e
    di
    ccf
    di
    ccf
    jr z, @+$01

    jr nc, @+$01

    ld h, b
    cp a
    ldh a, [$3f]
    db $ed
    dec sp
    or c
    ld a, a
    cp c
    ld a, a
    ld a, c
    cp a
    ld [hl], d
    cp a
    inc [hl]
    rst $38
    ld a, c
    cp a
    ld de, $51ff
    cp a
    pop de
    ccf
    ld e, e
    cp l
    or c
    ld a, a
    ld sp, $31ff
    rst $38
    ld sp, $39ff
    rst $38
    rra
    db $fd
    dec de
    db $fd
    add hl, de
    rst $38
    ld e, c
    cp a
    dec [hl]
    rst $38
    dec e
    rst $38
    add hl, de
    rst $38
    inc e
    rst $38
    sbc h
    rst $38
    cp a
    rst $38
    xor b
    rst $10
    ld [hl-], a

jr_088_5623:
    call $ce11
    add hl, hl
    sub $28
    rst $10
    ld a, [de]
    push bc
    ld [$09d7], sp
    sub $d9
    ld b, [hl]
    ld [$c8d7], sp
    ld d, a
    ret nc

    ld c, a
    add sp, $57
    db $ec
    ld d, e
    cp l
    ld b, d
    jp c, Jump_088_7845

    rst $00
    jr nz, jr_088_5623

    jp hl


    ld d, [hl]
    di
    ld c, h
    xor e
    ld d, h
    jp $e05c


    ld e, a
    db $ec
    ld d, e
    and b
    ld e, a
    sub b
    ld l, a
    cp b
    ld b, a
    or b
    ld c, a
    ret nc

    cpl
    ret nc

    cpl
    ret nc

    cpl
    ret nc

    cpl
    pop de

jr_088_5661:
    ld l, $e0
    cpl
    ret nz

    cpl
    sub b
    ld l, a
    ret


    ld h, $d8
    daa
    ret z

    daa
    ret c

    daa
    jr nc, jr_088_5661

    ret c

    daa
    ret nc

    cpl
    ld d, b
    xor a
    ret z

    scf
    ret z

    scf
    call c, $e623
    add hl, sp
    and b
    ccf
    and h
    dec sp
    inc [hl]
    ld l, e
    and a
    ld a, b
    ld hl, $28fe
    rst $30
    ld h, b
    cp a
    ld h, b
    cp a
    ld h, b
    cp a
    nop
    rst $38
    add b
    ld a, a
    xor b
    ld [hl], a
    add d
    ld a, a
    sub b
    ld a, a
    adc d
    ld [hl], a
    and d
    ld a, a
    ld [bc], a
    rst $38
    db $10
    rst $38
    inc d
    ei
    inc d
    ei
    ld d, h
    ei
    db $10
    rst $38
    jr @+$01

    jr nc, @+$01

    or h
    db $db
    db $10
    rst $38
    db $10
    rst $38
    ld [de], a
    db $fd
    ld [de], a
    db $fd
    ld [hl-], a
    db $fd
    ld [hl-], a
    db $fd
    or d
    db $fd
    ld a, d
    rst $38
    ld a, a
    rst $38
    ld d, l
    rst $38
    ld de, $15ff
    ei
    db $10
    rst $38
    add hl, de
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld de, $01ff
    rst $38
    ld b, b
    rst $38
    sub c
    rst $38
    db $d3
    rst $38
    ld e, c
    rst $38
    ld l, c
    rst $38
    ld l, b
    rst $38
    add sp, -$01
    ld l, h
    rst $38
    call z, $cdff
    rst $38
    adc l
    rst $38
    ld c, $ff
    adc h
    rst $38
    adc d
    rst $38
    adc d
    rst $38
    call z, $ccff
    rst $38
    ret z

    rst $38
    xor b
    rst $38
    xor l
    rst $38
    add sp, -$01
    db $ec
    rst $38
    xor [hl]
    rst $38
    ld c, b
    rst $38
    add sp, -$01
    ld [$f8ff], a
    rst $38
    ret c

    rst $38
    jp c, $daff

    rst $38
    ld [$feff], a
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    ld sp, $33ff
    rst $38
    inc hl
    rst $38
    ld h, e
    cp a
    ld [hl-], a
    rst $38
    ld [hl+], a
    rst $38
    ld [hl-], a
    rst $38
    ld [hl+], a
    rst $38
    inc hl
    rst $38
    ld [hl-], a
    rst $38
    and b
    ld a, a
    or c
    ld a, a
    ld hl, $33ff
    rst $38
    ld [hl-], a
    rst $38
    ld [hl], e
    cp a
    or e
    ld a, a
    ld de, $35ff
    rst $38
    jr nc, @+$01

    db $10
    rst $38
    ld [hl-], a
    rst $38
    db $10
    rst $38
    jr nc, @+$01

    ld [hl-], a
    rst $38
    ld [hl], b
    cp a
    ld [de], a
    db $fd
    db $10
    rst $38
    ld e, a
    cp a
    ld e, a
    cp a
    or d
    db $fd
    sub e
    db $fc
    ld d, b
    cp a
    ld d, h
    cp e
    inc d
    ei
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld d, b
    cp a
    ld [hl], b
    cp a
    db $10
    rst $38
    ld d, b
    rst $38
    db $10
    rst $38
    jr nc, @+$01

    db $10
    rst $38
    jr @+$01

    db $10
    rst $38
    ld de, $10fe
    rst $38
    db $10
    rst $38
    sub b
    ld a, a
    ld de, $14fe
    ei
    ld de, $30fe
    rst $38
    ld d, b
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    jr @+$01

    sub h
    ei
    sub b
    rst $38
    jp z, $58fd

    rst $38
    ld d, b
    rst $38
    ret c

    rst $38
    cp h
    ei
    inc e
    ei
    ld e, [hl]
    ei
    ld d, [hl]
    ei
    ld a, b
    rst $38
    jr @+$01

    ld c, b
    rst $38
    dec de
    rst $38
    ld a, [hl-]
    rst $38
    jr c, @+$01

    jr @+$01

    jr @+$01

    jr c, @+$01

    ld hl, sp-$01
    ld e, l
    rst $38
    ld a, [hl]
    rst $38
    ld hl, sp-$01
    jp c, $8aff

    rst $38
    rrca
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    inc c
    rst $38
    inc e
    rst $38
    ld a, [bc]
    rst $38
    jr @+$01

    ld a, [bc]
    rst $38
    ld [$0eff], sp
    rst $38
    ld c, h
    cp a
    ld c, [hl]
    cp a
    ld c, h
    cp a
    inc c
    rst $38
    dec c
    rst $38
    dec c
    rst $38
    dec c
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
    dec c
    rst $38
    inc c
    rst $38
    dec c
    rst $38
    dec c
    rst $38
    rlca
    rst $38
    ld e, a
    rst $28
    ld c, a
    rst $38
    ld b, a
    rst $38
    ld c, a
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ld b, a
    rst $38
    ld b, l
    rst $38
    inc b
    rst $38
    ld b, a
    rst $38
    ld b, a
    rst $38
    ld h, a
    rst $38
    ld b, a
    rst $38
    ld b, a
    rst $38
    and a
    rst $38
    ld h, a
    rst $38
    rst $38
    rst $38
    ld c, e
    rst $38
    dec bc
    rst $38
    dec c
    rst $38
    ld c, c
    rst $38
    ld c, c
    rst $38
    dec c
    rst $38
    dec c
    rst $38
    add hl, bc
    rst $38
    adc h
    rst $38
    add hl, bc
    rst $38
    call z, $49ff
    rst $38
    cp h
    rst $38
    jp hl


    rst $38
    db $fd
    rst $38
    ld l, b
    rst $38
    dec l
    rst $38
    rst $08
    db $fd
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    ld c, h
    rst $38
    ld c, b
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    ld e, h
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    inc c
    rst $38
    ld c, h
    cp a
    ld c, h
    cp a
    ld c, h
    cp a
    ld c, h
    cp a
    ld l, [hl]
    sbc a
    ld c, h
    cp a
    ld c, a
    cp [hl]
    ld c, l
    cp [hl]
    ld c, h
    cp a
    ld c, h
    cp a
    inc b
    rst $38
    ld l, h
    sbc a
    ld h, $df
    ld [bc], a
    rst $38
    ld b, $ff
    rrca
    rst $38
    rrca
    rst $38
    dec h
    sbc $2e
    db $dd
    ld l, $dd
    ld d, $ed
    ld a, $cd
    cp [hl]
    ld c, l
    xor [hl]
    ld e, l
    inc h
    rst $18
    inc l
    rst $18
    and h
    ld e, a
    ld a, $cd
    ld b, $fd
    rlca
    db $fc
    ld b, $fd
    ld b, $fd
    ld c, $fd
    ld b, $fd
    ld c, $fd
    ld h, $dd
    inc e

Call_088_58a7:
    rst $28
    add h
    ld a, a
    inc c
    rst $38
    ld b, h
    cp a
    inc b
    rst $38
    inc b
    rst $38
    ld h, $dd
    add h
    ld a, a
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    dec b
    cp $14
    rst $38
    inc b
    rst $38
    rla
    cp $17
    cp $45
    cp $5d
    cp $5f
    cp $3c
    rst $38
    ld d, $ff
    inc b
    rst $38
    ld d, $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld d, $ff
    ld [hl], $ff
    scf
    rst $38
    rla
    rst $38
    ccf
    rst $38
    ld [hl], $ff
    or [hl]
    rst $38
    or $ff
    or $ff
    cp $ff
    or $ff
    sbc $ff
    ld e, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    or $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ef
    cp $ef
    cp $5f
    cp $fe
    rst $38
    db $fc
    rst $38
    ld a, h
    rst $38
    db $ec
    rst $38
    call c, $edff
    cp $ef
    cp $ef
    cp $ff
    cp $fb
    cp $f8
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    rst $30
    cp $db
    cp $ed
    cp $bb
    cp $bf
    cp $ff
    cp $ff
    cp $f7
    cp $cf
    cp $de
    cp $7f
    cp $7f
    cp $7f
    cp $7e
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    cp $6f
    cp $6f
    cp $6f
    cp $7f
    cp $37
    cp $6f
    cp $2e
    rst $38
    and [hl]
    rst $38
    ld [hl], $ff
    and [hl]
    rst $38
    ld [hl], $ff
    ld [hl], $ff
    cp $ff
    cp $ff
    ld [bc], a
    rst $38
    sub d
    ld l, a
    add d
    ld a, a
    ld [de], a
    rst $28
    ld a, [de]
    rst $20
    ld c, d
    or a
    ld c, d
    or a
    dec bc
    or $52
    xor a
    sub d
    ld l, a
    or [hl]
    ld c, e
    ld d, [hl]
    xor e
    ld d, $eb
    rlca
    ld a, [$fe03]
    ld [bc], a
    rst $38
    ld [hl+], a
    rst $18
    ld [hl+], a
    rst $18
    ld a, [bc]
    rst $30

Call_088_59a6:
    ld l, $d3
    ld h, $db
    ld [bc], a
    rst $38
    ld b, $fb
    ld b, a
    ei
    ld a, [hl+]
    rst $30
    ld h, $fb
    add [hl]
    ld a, e
    add [hl]
    ld a, e
    add a
    ld a, e
    add [hl]
    ld a, e
    add [hl]
    ld a, e
    and a
    ld e, e
    rlca
    ei
    ld bc, $01ff
    rst $38
    add e
    ld a, a
    inc bc
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $07ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld b, e
    cp a
    add hl, bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rra
    rst $38
    dec hl
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    add hl, sp
    rst $38
    inc sp
    rst $38
    db $db
    ld a, a
    inc sp
    rst $38
    dec de
    rst $38
    sbc a
    rst $38
    ld l, a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    dec sp
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
    cp a
    rst $38
    ld a, a
    rst $38
    ld l, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    dec b
    ei
    inc bc
    rst $38
    add c
    ld a, a
    ld b, e
    cp l
    dec b
    ei
    add c
    ld a, a
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $c9ff
    ccf
    ld b, e
    cp l
    sub c
    ld l, a
    adc c
    ld [hl], a
    sbc e
    ld h, a
    add c
    ld a, a
    add c
    ld a, a
    sub c
    ld l, a
    add c
    ld a, a
    rlca
    rst $38
    ld b, a
    cp a
    ld b, a
    cp a
    inc hl
    rst $18
    inc hl
    rst $18
    inc hl
    rst $18
    inc bc
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    add e
    ld a, a
    and a
    ld e, a
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    dec h
    rst $38
    rlca
    rst $38
    ld b, l
    cp a
    rlca
    rst $38
    ld h, l
    cp a
    dec b
    rst $38
    rlca
    rst $38
    ld bc, $53ff
    rst $28
    ld e, e
    rst $28
    rst $18
    ld l, a
    rst $00
    ld a, a
    rst $00
    ld a, a
    rst $00
    ld a, a
    ld c, a
    rst $38
    ld c, a
    rst $38
    ld c, a
    rst $38
    ld c, a
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld e, a
    rst $38
    ld c, a
    rst $38
    rst $08
    rst $38
    ld b, a
    rst $38
    ld b, a
    rst $38
    ld b, e
    rst $38
    jp $637f


    rst $38
    inc hl
    rst $38
    inc hl
    rst $38
    inc hl
    rst $38
    or a
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    sub c
    rst $38
    dec de
    rst $38
    sub e
    rst $38
    ld de, $11ff
    rst $38
    ld de, $13ff
    rst $38
    rla
    rst $38
    inc de
    rst $38
    adc e
    rst $38
    dec de
    rst $38
    adc e
    ld a, a
    db $db
    ld a, a
    rst $28
    rst $38
    ccf
    rst $38
    db $eb
    rst $38
    db $eb
    rst $38
    db $eb
    rst $38
    rst $28
    rst $38
    rst $28
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
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    xor $ff
    di
    rst $38
    or $ff
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
    rst $30
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ld a, a
    rst $38
    ld a, l

jr_088_5b15:
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ld b, b
    cp a
    ld b, h
    cp e
    and d
    ld e, l
    ld b, h
    cp e
    adc b
    rst $30
    nop
    rst $38
    ld [bc], a
    db $fd
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_088_5b15

    and h
    rst $18
    and b
    rst $18
    ld [$48f7], sp
    or a
    ld b, $f9
    nop
    rst $38
    nop
    rst $38
    ld a, [bc]
    push af
    inc b
    ei
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    jr nz, @+$01

    ld h, d
    rst $38
    add d
    rst $38
    sbc d
    rst $30
    xor b
    rst $30
    inc de
    rst $38
    ld [bc], a
    rst $38
    jr nz, @+$01

    add b
    rst $38
    ld [hl+], a
    rst $38
    add b
    rst $38
    nop
    rst $38
    or b
    rst $18
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    sub b
    rst $38
    db $10
    rst $38
    and b
    rst $38
    add b
    rst $38
    sub b
    rst $38
    ret nz

    rst $38
    cp b
    rst $38
    or b
    rst $38
    or c
    rst $38
    sub c
    rst $38
    pop bc
    rst $38
    ret nz

    rst $38
    jp hl


    rst $38
    ret z

    rst $38
    call $a2ff
    rst $38
    add c
    rst $38
    jp nz, $80ff

    rst $38
    adc d
    rst $38
    jp c, $faff

    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld sp, hl
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $28
    rst $38
    cp e
    rst $38
    sbc l
    rst $38
    call $fdff
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
    rst $38
    rst $38
    xor a
    rst $38
    pop bc
    cp a
    ldh [$9f], a
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    jr nz, @-$1f

    ret nz

    cp a
    add hl, bc
    rst $30
    and l
    rst $18
    inc h
    rst $18
    ret nz

    cp a
    add b
    rst $38
    adc l
    rst $30
    jp z, $10b7

    rst $38
    add b
    rst $38
    add d
    rst $38
    add d
    rst $38
    sub d
    rst $38
    adc b
    rst $38
    add b
    rst $38
    adc c
    rst $38
    adc l
    rst $38
    add l
    rst $38
    sub c
    rst $38
    add d
    rst $38
    ld [de], a
    rst $38
    add h
    rst $38
    and h
    rst $38
    add l
    rst $38
    add l
    rst $38
    add l
    rst $38
    sbc a
    rst $38
    sbc l
    rst $38
    sub l
    rst $38
    cp a
    rst $38
    cp l
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    add d
    db $fd
    add c
    cp $8e
    pop af
    adc h
    di
    and h
    db $db
    ret nz

    rst $38
    adc c
    or $88
    rst $30
    add b
    rst $38
    add b
    rst $38
    sub b
    rst $28
    call nz, $a7bb
    ld a, [$ff82]
    add h
    ei
    adc b
    rst $30
    ret


    rst $30
    ret nz

    rst $38
    pop hl
    rst $38
    pop bc
    rst $38
    call nz, $85ff
    rst $38
    adc h
    rst $38
    and l
    rst $38
    db $fc
    rst $38
    add sp, -$01
    ldh [rIE], a
    add h
    rst $38
    and $ff
    db $ed
    rst $38
    jp hl


    rst $38
    sbc c
    rst $38
    call c, $a9ff
    rst $38
    sub d
    rst $38
    add b
    rst $38
    jp z, $87ff

    rst $38
    ret nz

    rst $38
    ld b, e
    rst $38
    sub d
    rst $38
    rst $08
    rst $38
    adc $ff
    db $db
    rst $38
    sub c
    rst $38
    db $e4
    rst $18
    call z, $c0f7
    rst $38
    add b
    rst $38
    add b
    rst $38
    add l
    cp $c0
    rst $38
    db $d3
    db $fd
    pop bc
    rst $38
    pop bc
    rst $38
    add c
    rst $38
    jp nz, $84ff

    rst $38
    add h
    rst $38
    call nz, $85ff
    rst $38
    add h
    rst $38
    adc h
    rst $38
    add l
    rst $38
    rst $18
    rst $30
    add e
    rst $38
    rst $00
    rst $38
    push bc
    rst $38
    or a
    rst $28
    add a
    rst $38
    add a
    rst $38
    sbc $ef
    cp a
    rst $28
    rst $18
    rst $28
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    db $e3
    rst $38
    db $eb
    rst $38
    set 7, a
    adc a
    rst $38
    rst $08
    rst $38
    db $db
    rst $28
    rst $08
    rst $38
    sbc $ff
    sbc $ff
    rst $08
    rst $38
    xor $ff
    xor $ff
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
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
    ld b, b
    rst $38
    ret nz

    rst $38
    rst $28
    ret nc

    ld e, a
    ldh [$5a], a
    push hl
    ld b, e
    db $fc
    ld b, e
    db $fc
    ld b, l
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
    ret nz

    ret nz

    ret nz

    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ld a, a
    rst $38
    ld c, e
    rst $38
    ld c, e
    rst $38
    ld c, e
    rst $38
    ld b, [hl]
    ret


    ld b, a
    ret z

    ld h, d
    call $cf20
    pop hl
    ld c, b
    push hl
    ld c, b
    push bc
    ld c, b
    inc bc
    ret z

    reti


    ld b, b
    add c
    ld c, b
    ret z

    ld b, c
    ld b, c
    ret z

    ld b, c
    ret z

    ld e, c
    ret nz

    ld b, b
    ret z

    pop bc
    ld c, b
    nop
    ret


    inc bc
    ret z

    add l
    ld c, b
    ld [hl+], a
    ret z

    ld [hl], $c8
    dec [hl]
    ret z

    inc e
    ret nz

    inc de
    ret z

    inc hl
    ret z

    cp a
    ld b, b
    ld l, [hl]
    ret nz

    xor c
    ret nz

    and c
    ret z

    and h
    ret


    inc hl
    ret z

    dec sp
    ret nz

    inc [hl]
    ret


    ld a, [hl]
    pop bc
    ld [hl-], a
    ret


    ld hl, sp-$3d
    sbc [hl]
    pop hl
    call nc, $b6eb
    ret


    ld e, h
    db $e3
    ld d, [hl]
    jp hl


    ld b, [hl]
    ld sp, hl
    ld b, [hl]
    ld sp, hl
    or a
    ret z

    or h
    res 2, h
    res 2, h
    res 6, b
    rst $08
    inc e
    res 6, b
    rst $08
    or b
    rst $08
    or h
    res 4, b
    rst $18
    ldh [$df], a
    or b
    rst $08
    and b
    rst $18
    cp b
    rst $08
    adc c
    rst $38
    adc b
    rst $38
    and c
    rst $18
    and d
    db $dd
    adc [hl]
    pop bc
    add b
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
    add b
    rst $38
    rst $38
    ret nz

    or b
    ldh [$bb], a
    ldh [$9b], a
    ldh a, [$9d]
    ldh a, [$8d]
    ld hl, sp-$7a
    db $fc
    add a
    db $fc
    add e
    cp $83
    cp $80
    add c
    add b
    add c
    add b
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
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    cp a
    ld b, b
    db $fc
    inc bc
    ld e, b
    and a
    db $10
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38

jr_088_5e24:
    rst $38
    rst $38
    rst $38

jr_088_5e27:
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
    cp $ff
    ld a, a
    rst $38
    ld [de], a
    rst $38
    rla
    rst $38
    ld c, l
    ld [de], a
    ld h, b
    rra

jr_088_5e44:
    ld h, l
    ld a, [de]
    ld d, h
    ld a, [hl+]
    ld h, h
    ld a, [de]
    ld [hl], c
    ld c, $69
    ld d, $ed
    ld [de], a
    add sp, $17
    ld c, c
    ld [hl], $75
    ld a, [bc]
    push de
    ld a, [hl+]
    ld [hl], l

jr_088_5e59:
    ld a, [bc]
    ld l, l
    ld [de], a

jr_088_5e5c:
    ld d, l
    ld a, [hl+]
    ld d, c
    ld l, $75
    ld a, [bc]
    sbc h
    inc hl
    ld e, a
    jr nz, jr_088_5e44

    ld [hl+], a
    pop hl
    ld e, $dd
    ld [hl+], a
    push de
    ld [hl+], a
    db $fd
    ld [bc], a
    ld e, l
    ld [hl+], a
    ld e, l
    ld [hl+], a
    ld e, l
    ld [hl+], a
    sbc $23
    rst $38
    nop
    ld d, a
    jr nz, jr_088_5e5c

    jr nz, jr_088_5e59

    jr nz, jr_088_5e8e

    ldh [$dd], a
    jr nz, jr_088_5e24

    ld h, b
    sbc a
    ld h, b
    sbc e
    ld h, h
    rst $38
    jr nz, jr_088_5e27

    ld h, h

jr_088_5e8e:
    cp a
    ld h, b
    ld e, e
    db $e4
    db $db
    inc h
    reti


    inc h
    ei
    inc h
    sbc e
    inc h
    jp nc, $d12c

    ld l, $81
    ld a, [hl]
    jp $c23c


    dec a
    db $d3
    inc l
    jp nz, $023d

    db $fd
    add d
    ld a, l
    add b
    ld a, a
    ld b, b
    cp a
    nop
    rst $38
    jr nz, @+$01

    inc hl
    rst $38
    inc bc
    rst $38
    ld a, e
    add a
    dec hl
    rst $10
    inc bc
    rst $38
    jp nz, $013f

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
    ld a, a
    nop
    ld a, a
    nop
    cp a
    nop
    rst $18
    nop
    rst $18
    nop
    rst $28
    add b
    ld l, a
    ret nz

    ld [hl], a
    ret nz

    dec sp
    ldh [$3b], a
    ldh [rNR33], a
    ldh a, [$0d]
    ld hl, sp+$0e
    ld hl, sp+$07
    db $fc
    rlca
    db $fc
    inc bc
    cp $03
    cp $01
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
    rst $38
    nop
    cp [hl]
    ld b, c
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    dec bc
    db $f4
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret z

    rst $38
    call z, Call_088_7cff
    rst $38
    cp h
    ld b, b
    cp h
    ld b, b
    ld a, b
    add h
    sub h
    ld b, b
    sub h
    ld b, b
    or h
    ld b, b
    and h
    ld b, b
    or h
    ld b, b
    inc d
    ret nz

    ld [hl], h
    add b
    inc e
    ret nz

    inc c
    ret nz

    nop
    call nz, Call_088_408c
    inc e
    ret nz

    adc h
    ld b, b
    inc c
    ret nz

    adc h
    ld b, b
    nop
    ret z

    adc [hl]
    ld b, b
    rrca
    ret nz

    ld b, $c8
    dec b
    ret z

    sub e
    ld c, b
    sub l
    ld c, b
    or e
    ld c, b
    and [hl]
    ld c, b
    rlca
    ret z

    ld [hl], a
    ld [$0876], sp
    ld e, a
    ld [$285f], sp
    ld [hl], a
    ld [$4837], sp
    ld [hl], $49
    dec [hl]
    ld c, d
    or l
    ld c, d
    db $76
    add hl, bc
    ld [hl], $49
    jr c, jr_088_5fdf

    push hl
    ld a, [de]
    and b
    ld e, a
    add [hl]
    ld a, c
    and d
    ld e, c
    add d
    ld a, c
    add b
    ld a, c
    jp nz, Jump_000_0279

    ld sp, hl
    ld b, $f9
    ld [bc], a
    ld sp, hl
    add [hl]
    ld a, c
    ld b, [hl]
    ld sp, hl
    ld b, $f9
    ld b, $f9
    rrca
    pop af
    rlca
    ld sp, hl
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    db $fd
    cp a
    add b
    cp a
    sbc e
    sbc a
    rst $18
    sbc a
    rst $38
    rst $18
    jp c, $ffff

    rst $38
    rst $38
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    rst $38

jr_088_5fdf:
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
    rst $18
    nop
    rst $18
    nop
    rst $28
    add b
    ldh a, [$80]
    ld a, a
    ret nz

    ld a, a
    ret nz

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
    ld e, a
    and b
    rlca
    ld hl, sp+$0f
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    add e
    rst $38
    or e
    rst $38
    or e
    rst $38
    add $33
    scf
    jp $a35f


    rlca
    di
    ld b, [hl]
    sub e
    ld [hl], e
    add a
    ld d, l
    add e
    ld hl, sp+$07
    cp b
    rlca
    ld e, $83
    sub h
    inc bc
    add hl, de
    add a
    sbc b
    rlca
    ld sp, $9a87
    rlca
    ld [de], a
    add a
    or c
    rlca
    jp z, $3a17

    add a
    ld e, e
    add a
    dec sp
    add a
    ld a, e
    add a
    ld e, d
    add a
    jp c, $9807

    rlca
    db $fc
    rlca
    ld a, $87
    adc e
    rla
    push de
    rrca
    dec l
    sub a
    adc [hl]
    rla
    cp d
    rlca
    push af
    rrca
    push hl
    rra
    xor a
    rla
    rst $08
    scf
    rst $20
    rra
    rst $18
    daa
    ld e, a
    and a
    rst $00
    ccf
    rst $00
    ccf
    sub a
    ld l, a
    sbc $27
    sub l
    ld l, a
    sub [hl]
    ld l, a
    add [hl]
    ld a, a
    add a
    ld a, a
    add [hl]
    ld a, a
    rla
    rst $28
    rla
    rst $28
    adc a
    ld [hl], a
    add a
    ld a, a
    sub a
    ld l, a
    dec d
    rst $28
    rrca
    rst $38
    and a
    ld a, a
    rst $20
    rst $38
    ei
    rst $30
    pop af
    ei
    ld sp, hl
    ld sp, hl
    ld sp, hl
    db $fd
    rst $38
    db $fd
    rst $18
    db $fd
    rst $30
    rst $38
    xor l
    rst $38
    db $fd
    rst $38
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    ld a, a
    add b
    add b
    nop
    ld a, a
    nop
    nop
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
    nop
    rst $38
    nop
    rst $38
    add sp, $00
    and a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    ld b, $e0
    rra
    add b
    ld a, a
    inc bc
    cp $09
    cp $08
    rst $38
    or b
    ld a, a
    ld e, b
    rst $38
    ld l, b
    rst $38
    add [hl]
    rst $38
    sbc [hl]
    rst $38
    ld hl, sp-$01
    cp $ff
    ld a, h
    rst $38
    inc a
    rst $38
    ld a, $ff
    ld e, h
    rst $38
    xor h
    rst $38
    cp h
    rst $38
    inc a
    rst $38
    add hl, sp
    cp $38
    rst $38
    ld e, h
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    cp l
    cp $bd
    cp $bd
    cp $bd
    cp $3d
    cp $bd
    cp $bd
    cp $bc
    cp $34
    cp $3c
    cp $b4
    cp $b0
    cp $b0
    cp $f9
    cp $f0
    cp $d6
    db $fc
    or h
    cp $b4
    cp $81
    cp $85
    cp $d1
    cp $d5
    cp $a4
    cp $97
    cp $95
    cp $cd
    cp $dd
    cp $4d
    cp $95
    cp $05
    cp $d9
    cp $cc
    rst $38
    ret c

    rst $38
    db $fd
    cp $c8
    rst $38
    ret z

    rst $38
    ret nc

    rst $38
    ret c

    rst $38
    ld a, [$f8ff]
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    cp b
    rst $38
    ld hl, sp-$01
    ld sp, hl
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    db $fd
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
    push hl
    rst $38
    pop af
    cp $ff
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    nop
    add b
    nop
    ld a, a
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
    rra
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
    rst $18
    jr nz, jr_088_61c7

    rst $30
    ld e, b
    rlca
    dec bc
    nop
    nop
    nop
    ld b, a

jr_088_61c7:
    nop
    rra
    nop
    db $ed
    db $10
    ld l, $d1
    cpl
    pop de
    and h
    ld d, c
    and e
    ld d, b
    adc e
    ld [hl], b
    and l
    ld d, d
    rlca
    ldh a, [$af]
    db $10
    ld h, l
    db $10
    and [hl]
    db $10
    and e
    db $10
    push bc
    ld [de], a
    add hl, sp
    ld [bc], a
    ld [hl-], a
    nop
    ld sp, $3002
    ld [bc], a
    jr nc, jr_088_61f0

    add hl, bc
    ld [de], a

jr_088_61f0:
    add hl, de
    ld [bc], a
    add hl, hl
    ld [bc], a
    inc sp
    nop
    and b
    ld [bc], a
    dec b
    ld [hl+], a
    push hl
    ld [bc], a
    pop de
    ld [hl+], a
    adc c
    ld [hl+], a
    sbc c

jr_088_6201:
    ld [hl+], a
    db $dd
    ld [hl+], a
    ld d, l
    ld [hl+], a
    adc c
    ld h, $91
    ld h, $bf
    nop
    sla h
    add hl, bc
    ld h, $0d
    ld [hl+], a
    add hl, de
    ld h, $51

jr_088_6215:
    ld l, $59
    ld h, $1d
    ld h, $98
    daa
    db $dd
    ld h, $f9

jr_088_621f:
    ld b, $7a
    dec b
    push de
    ld l, $d6
    dec l
    and $1d
    add $3d
    rst $18
    inc h
    ret nz

    ccf
    call nz, $803f
    ld a, a
    cp b
    ld a, a
    cp b
    ld b, a
    cp h
    ld b, a
    jr c, jr_088_6201

    cp b
    ld b, a
    ld l, b
    rst $00
    cp b
    ld b, a
    ldh a, [rVBK]
    ld hl, sp+$47
    jr nc, jr_088_6215

    jr z, jr_088_621f

    ldh a, [rVBK]
    db $10
    rst $28
    ld h, b
    rst $18
    jr nc, jr_088_621f

    ld d, b
    rst $28
    ld [hl-], a
    rst $08
    ld [bc], a
    rst $38
    add d
    rst $38
    inc bc
    rst $38
    ld a, [de]
    rst $28
    ld bc, $e0ff
    rra
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
    ld bc, $fe00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
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
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $10
    jr z, @+$01

    nop
    rst $38
    nop
    rst $08
    jr nc, jr_088_631e

    add b
    nop
    rst $38
    ldh [$1f], a
    ld a, a
    nop
    add sp, $17
    add h
    ld a, e
    ld d, [hl]
    and c
    ld h, b
    cp a
    and b
    rst $38
    jr nz, @+$01

    ret nz

    ccf
    ret nz

    ccf
    ret nc

    cpl
    call nc, $d42b
    dec hl
    ret nz

    ccf
    ret nc

    cpl
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
    ld h, b
    cp a
    ret nz

    ccf
    call nz, $c83f
    scf
    ret nz

    ccf
    call nz, $c83f
    scf
    ret nz

    ccf
    ret nz

    ccf
    inc b
    ld a, e
    ret nz

    ccf
    ret nz

    ccf
    add l
    ld a, a
    add e
    ld a, h
    add e
    ld a, h
    db $10
    ld l, a
    ld h, $59
    inc bc
    db $fc
    jp nc, $de6d

    ld a, c
    or h
    ld c, e
    cp [hl]
    ld b, c
    or $09
    or [hl]
    ld c, c
    ld [hl], h
    adc e
    or [hl]

jr_088_62fd:
    ld c, c
    or $09
    ld a, [c]
    dec c
    db $76
    adc c
    ld d, h
    xor e
    ld [hl], l
    adc e
    ld [hl], d
    adc l
    ld [hl], c
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld a, c
    adc a
    ld [hl], b
    adc a
    ld h, b
    sbc a
    and b
    rst $18
    ldh [$9f], a
    ld b, b
    cp a
    jr nz, jr_088_62fd

jr_088_631e:
    add b
    rst $38
    ld [bc], a
    rst $38
    add b
    rst $38
    nop
    rst $38
    add d
    rst $38
    sub b
    rst $38
    add d
    rst $38
    ld [bc], a
    rst $38
    sub b
    rst $38
    sub [hl]
    rst $38
    sub d
    rst $38
    add d
    rst $38
    ld d, $ff
    ld e, d
    rst $38
    ld e, $ff
    sub d
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
    rst $38
    ret nz

    ccf
    ld h, b
    rra
    cp b
    rlca
    call z, $f603
    ld bc, $00fb
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
    nop
    rst $38
    nop
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
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38
    nop
    ld b, $f8
    ld [$01f0], sp
    ldh a, [$08]
    db $f4
    ld bc, $02f8
    ld hl, sp+$00
    db $fc
    dec sp
    ret nz

    ld b, $fd
    ld d, [hl]
    jp hl


    inc l
    db $d3
    inc h
    db $db
    ld h, [hl]
    reti


    ld c, [hl]
    pop af
    ld l, [hl]

jr_088_639b:
    pop de

Jump_088_639c:
    inc b
    ei
    inc c
    di
    ld a, $c1
    inc c
    di
    dec c
    ld a, [c]
    inc c
    di
    dec c
    ld a, [c]
    ld [$0cf7], sp
    di
    ld [$2cf7], sp
    db $d3
    jr jr_088_639b

    ld [$28f7], sp
    rst $10
    inc e
    db $e3
    xor h
    db $d3
    adc h
    di
    adc b
    rst $30
    sub b
    rst $28
    jr @-$17

    db $10
    rst $28
    sub d
    rst $28
    inc de
    db $ec
    inc de
    db $ec
    dec sp
    call nz, $cc33
    inc bc
    db $fc
    ld d, e
    xor h
    ld d, e
    xor h
    dec de
    db $e4
    dec de
    db $e4
    dec bc
    db $f4
    inc bc
    db $fc
    inc hl
    call c, $f807
    inc bc
    db $fc
    ld b, $f9
    inc bc
    db $fc
    inc bc
    db $fc
    ld [bc], a
    db $fd
    ld [de], a
    db $ed
    jp nz, Jump_000_1cfd

    db $eb
    ld a, [hl+]
    db $fd
    ld a, [bc]
    db $fd
    nop

jr_088_63f7:
    rst $38
    add b

jr_088_63f9:
    ld a, a
    add h
    ld a, e
    db $10
    rst $28
    ld [de], a
    db $ed
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    jr jr_088_63f7

    jr jr_088_63f9

    ld [$01ff], sp
    cp $13
    xor $28
    rst $18
    ld b, b
    rst $38
    ld b, e
    cp $c2
    rst $38
    ld b, b
    rst $38
    ld c, d
    rst $38
    ld d, b
    rst $38
    ld [$42ff], sp
    rst $38
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    rlca
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
    add b
    ld a, a
    ret nz

    ccf
    ld [hl], b
    rrca
    sbc b
    rlca
    xor $01
    di
    nop
    db $fd
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
    nop
    ldh [rP1], a
    rra
    nop
    rst $38
    ld bc, $fffe
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $f4
    dec bc
    db $fc
    inc bc
    cp $01
    db $e4
    nop
    ret nc

    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld [de], a
    ld bc, $008c
    ld hl, $8410
    inc bc
    ld [bc], a
    dec e
    ld a, [bc]
    ld [hl], l
    inc b
    rst $38
    inc bc
    db $fc
    dec bc
    db $f4
    rlca
    ld hl, sp+$27
    ret c

    ld l, $d0
    inc sp
    ret z

    ld h, $d8
    ld l, $d0
    ld d, $e8
    dec h
    ret c

    scf
    ret z

    rla
    add sp, $07
    ld hl, sp+$0f
    ldh a, [$03]
    ld hl, sp+$0b
    ldh a, [rSB]
    ld hl, sp-$07
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ei
    cp $f3
    db $fc
    pop af
    db $fc
    di
    db $fc
    or $fc
    rst $30
    db $fc
    or a
    db $fc
    or a
    db $fc
    or a
    db $fc
    sub l
    db $fc
    cp c
    db $fc
    or c
    db $fc
    sub l
    ld hl, sp-$0b
    ld hl, sp-$6b
    ld hl, sp-$6b
    ld hl, sp+$05
    ld hl, sp-$7b
    ld hl, sp-$6c
    ld hl, sp+$1c
    ld hl, sp-$7a
    ld hl, sp+$06
    ld hl, sp+$0e
    ld hl, sp+$1e
    ld hl, sp+$36
    ld hl, sp+$16
    ld hl, sp+$12
    ld hl, sp+$02
    ld hl, sp+$26
    ld hl, sp+$06
    ld hl, sp+$24
    ld hl, sp+$3d
    ldh a, [$3d]
    ldh a, [$3d]
    ldh a, [$31]
    ldh a, [$38]
    ldh a, [$3d]
    ldh a, [$3f]
    rst $38
    xor a
    rst $38
    dec a
    rst $38
    ld a, c
    rst $38
    db $dd
    rst $38
    db $fd
    rst $38
    ld b, e
    db $fc
    ld b, e
    db $fc
    ld b, e
    db $fc
    ld b, [hl]
    ld sp, hl
    ld c, d
    db $fd
    ld b, b
    ld hl, sp+$42
    push af
    rlca
    add sp, $1e
    ld sp, hl
    ld e, c
    cp $48
    rst $38
    ld e, l
    ei
    ld b, l
    ei
    ld a, [bc]
    db $fd
    nop
    rst $38
    nop
    rst $38
    sub d
    rst $38
    sub d
    rst $38
    sub d
    rst $38
    cp $80
    sbc a
    add b
    pop hl
    add b
    and b
    ret nz

    adc h
    ldh a, [$f3]
    db $fc
    ei
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    ld b, a
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld bc, $c1ff
    ccf
    pop hl
    rra
    ei
    rlca
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    rst $38
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
    ld de, $0312
    inc de
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_088_6596

    ld hl, $2322

jr_088_6596:
    inc h
    dec h
    ld h, $27
    jr z, jr_088_65c5

    ld a, [hl+]
    dec hl
    inc l
    dec l
    rra
    ld l, $2f
    jr nc, jr_088_65d6

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_088_65e6

    ld a, [hl-]
    dec sp
    inc a
    rra
    dec a
    inc d
    ld a, $03
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    rra
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a

jr_088_65c5:
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    inc bc
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    rra
    ld d, d
    inc d
    ld d, e
    ld d, h
    inc d

jr_088_65d6:
    inc d
    inc d
    inc d
    ld d, l
    inc bc
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    rra
    ld e, e
    inc d
    ld e, h
    ld e, l
    ld e, [hl]

jr_088_65e6:
    inc d
    inc d
    inc d
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    rra
    ld h, [hl]
    inc d
    ld h, a
    ld l, b
    ld l, c
    inc d
    inc d
    inc d
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
    inc d
    ld [hl], a
    inc d
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
    inc bc
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
    inc bc
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    rra
    ret nz

    pop bc
    jp nz, $c4c3

    inc bc
    push bc
    add $c7
    ret z

    ret


    jp z, Jump_000_1fcb

    call z, $cecd
    rst $08
    rra
    ret nc

    pop de
    inc bc
    jp nc, $d4d3

    inc d
    push de
    sub $d7
    rra
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
    and $1f
    rst $20
    inc d
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    rra
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    cp $ff
    nop
    ld bc, $0214
    rra
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    nop
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    nop
    ld bc, $0006
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $07
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0008], sp
    ld [$0800], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$ff40], sp
    ret nz

    rst $38
    and b
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
    rst $38
    rst $38
    rst $38
    inc b
    ei
    ld h, c
    sbc [hl]
    ldh a, [rIF]
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
    adc d
    ld a, a
    ei
    rlca
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
    add b
    cp a
    ret nz

    cp a
    ret nz

    rst $18
    ldh [$df], a
    ldh [$ef], a
    ldh a, [rIE]
    ldh a, [$f7]
    ld hl, sp-$01
    ld hl, sp-$25
    db $fc
    xor a
    db $fc
    db $fd
    cp $ff
    cp $fe
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
    pop hl
    rst $38
    pop af
    rst $38
    di
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $eb
    rst $38
    ld h, c
    rst $38
    dec a
    rst $38
    dec e
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
    ld hl, sp-$02
    ld hl, sp-$04
    ldh a, [$fe]
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
    add c
    rst $38
    ldh a, [rIE]
    or h
    rst $38
    call c, $dfff
    rst $38
    push af
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
    rlca
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    rst $38
    rst $38
    nop
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
    ccf
    ld [hl], b
    ld l, a
    ldh a, [$5f]
    ldh [rIE], a
    ret nz

    rst $38
    add b
    push bc
    ld a, [$0738]
    nop
    nop
    db $fd
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    inc bc
    ei
    inc de
    db $e3
    rst $00
    rlca
    inc b
    rlca
    ld [de], a
    inc e
    nop
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
    ldh [rIE], a
    ld [c], a
    rst $38
    ldh [$f0], a
    or b
    ld b, b
    ret c

    ld h, $0b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $18
    ccf
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    pop af
    rrca
    rlca
    rst $38
    rrca
    rst $30
    rrca
    rst $38
    rra
    rst $38
    dec a
    rst $38
    rst $38
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
    ld [bc], a
    rst $38
    ld a, a
    rst $38
    daa
    rst $38
    ld c, a
    rst $38
    inc e
    rst $38
    inc a
    rst $38
    ld d, h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop bc
    cp a
    add e
    sbc a
    inc bc
    adc a
    rlca
    rst $08
    rrca
    ccf
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
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add sp, -$01
    cp $ff
    db $fc
    cp $fe
    rst $38
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
    add b
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
    db $eb
    rra
    rst $30
    rrca
    rst $20
    rrca
    rst $28
    rra
    sbc a
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
    cp $ff
    ret c

    cp $78
    call c, $9c7c
    jr jr_088_6a1c

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    db $10
    ldh [rP1], a
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
    rst $18
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38

jr_088_6a1c:
    rst $20
    ei
    dec h
    ei
    ld de, $10fd
    db $fd
    adc b
    ld a, h
    adc b
    ld a, [hl]
    call z, $ce3e
    ccf
    db $e3
    rra
    pop af
    rrca
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    ld a, [c]
    rrca
    adc $3e
    cp $fe
    db $fc
    cp $fc
    cp $fc
    cp $fc
    cp $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    cp b
    ld hl, sp-$08
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$f0], a
    ldh a, [$f0]
    ldh [$f0], a
    ldh [$f0], a
    ldh [$f0], a
    ldh [$e0], a
    ldh [$e0], a
    ld h, b
    ldh [rP1], a
    ldh [rP1], a
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
    sub $1f
    ret nz

    rra
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
    rra
    nop
    rra
    nop
    rra
    nop
    inc a
    inc bc
    inc bc
    inc a
    rlca
    nop
    or a
    nop
    inc bc
    ldh a, [$09]
    ldh a, [$ec]
    ldh a, [$ee]
    ldh a, [$fe]
    ldh [rIE], a
    ret nz

    rst $38
    add b
    cp [hl]
    ret nz

    sub [hl]
    ret nz

    di
    ret nz

    rst $00
    ret nz

    rst $00
    ld hl, sp-$40
    ret nz

    ret nz

    ret nz

    ret nz

    ld hl, sp-$80
    nop
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
    and c
    cp $00
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    cp a
    ret nz

    rst $38
    ret nz

    rst $18
    ldh [rIE], a
    ldh [rIE], a
    ldh [$ef], a
    ldh a, [rIE]
    ldh a, [$f7]
    ld hl, sp-$01
    ld hl, sp-$05
    db $fc
    rst $38
    db $fc
    db $fc
    rst $38
    cp $ff
    ld a, [hl]
    cp $fe
    cp $fc
    cp $fc
    db $fc
    ld hl, sp-$03
    ld hl, sp-$08
    ldh a, [$f8]
    ldh a, [$f9]
    ldh [$f1], a
    ldh [$f1], a
    ldh [$e1], a
    ret nz

    pop hl
    nop
    pop bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    ld bc, $0103
    inc bc
    ld bc, $0103
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
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
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
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
    rrca
    rrca
    rrca
    rrca
    rlca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rra
    rrca
    rrca
    rrca
    rra
    rrca
    rra
    rrca
    rra
    rra
    rra
    rrca
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
    ccf
    rra

jr_088_6b77:
    ccf
    inc e
    ccf
    jr c, jr_088_6bbc

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
    rst $00
    nop
    ld hl, sp+$07
    nop
    ld hl, sp-$80
    ld b, b
    ret nz

    jr nz, jr_088_6b77

    db $10
    ldh [rNR23], a
    ldh a, [$0c]
    ld hl, sp+$04
    ld hl, sp+$06
    ld a, h
    inc bc
    ld a, $01
    sbc a
    nop
    adc a
    nop
    rst $08
    nop
    rst $20
    nop
    sub e
    nop
    jp $c110


    jr c, jr_088_6bb3

jr_088_6bb3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_088_6bbc:
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    dec b
    rst $38
    nop
    add b
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
    rlca
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
    ldh a, [rIE]
    xor b
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
    nop
    rlca
    nop
    ld hl, sp+$07
    nop
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
    nop
    inc b
    nop
    jr nz, @+$21

    inc de
    ldh [rP1], a
    add b
    rra
    ret nz

    ld c, c
    and b
    xor a
    ld d, b
    add d
    ld a, b
    jp nz, $803c

    ld a, [hl]
    nop
    rst $38
    adc b
    ld [hl], a
    ld c, b
    scf
    ld [hl], b
    rrca
    ld e, $01
    rrca
    nop
    ld [bc], a
    ld bc, $0102
    nop
    rst $38
    nop
    rst $38
    inc b
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    dec e
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
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    and b
    ld e, a
    rst $38
    rst $38
    ei
    cp $ff
    cp $ff
    cp $fe
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    cp $ff

Jump_088_6c67:
    cp $ff
    cp $fe
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    cp $fe
    rst $38
    ld a, [$ffff]
    cp $fe
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $fe
    rst $38
    cp $ff
    cp $ff
    cp $ff
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $fe
    rst $38
    rst $38
    cp $ff
    cp $fe
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    ld hl, sp-$01
    ld [hl], h
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
    rrca
    nop

jr_088_6cda:
    ldh a, [rIF]
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
    add b
    ccf
    dec sp
    ret nz

    add b
    nop
    ld e, a
    nop
    push af
    nop
    cpl
    nop
    rst $38
    nop
    rst $38
    nop
    adc $00
    inc de
    nop
    ld [hl], a
    nop
    ld [hl], c
    add b
    dec de
    ret nz

    ld e, a
    and b
    jr nz, jr_088_6cda

    rst $10
    jr z, jr_088_6d78

    sub h
    nop
    rst $38
    nop
    rst $38
    ld [hl-], a
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $7f00
    add b
    rst $38
    nop
    rst $38
    nop
    db $f4
    dec bc
    ld a, a
    rst $38
    nop
    rst $38
    cp e
    ld b, h
    rst $28
    db $10
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $e4
    dec de
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ld [hl], d
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
    rra
    nop
    ldh [$1f], a
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
    nop

jr_088_6d78:
    inc b
    nop
    add b
    ld a, a
    ld a, a
    add b
    add b
    nop
    ld e, a
    nop
    pop af
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    rst $38
    nop
    cp e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    ld [hl+], a
    nop
    rst $38
    nop
    ldh [rP1], a
    and b
    ld e, b
    ret nz

    ld hl, sp+$03
    rst $38
    ld h, b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    rst $10
    jr z, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rlca
    rst $38
    add sp, -$01
    cp $01
    rst $38
    nop
    rst $38
    nop
    ld a, [$fb05]
    inc b
    ld a, [$fb05]
    inc b
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    rst $30
    ld [$20df], sp
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    xor $11
    nop
    rst $38
    jr nc, @+$01

    ld sp, $30ff
    rst $38
    db $e3
    rst $38
    ld h, e
    rst $38
    db $e3
    rst $38
    jp nc, $e2ff

    rst $38
    db $e3
    rst $38
    di
    rst $38
    di
    rst $38
    ldh a, [rIE]
    or l
    ld b, b
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    ccf
    nop
    ret nz

    ccf
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
    inc b
    ld bc, $fe00
    ld a, a
    nop
    ld d, b
    nop
    rst $18
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [$ff00]
    nop
    ld e, c
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    add hl, hl
    nop
    rst $38
    nop
    rst $38
    rrca
    ld b, b
    nop
    jr nz, jr_088_6e8e

    jr nz, jr_088_6e90

    ld b, e
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [hl+], a
    rst $18
    db $fc
    rst $38
    ld a, [de]
    push hl
    ld e, a
    and b
    cp a
    ld b, b
    ccf
    ret nz

    cp $01
    cp [hl]
    ld b, c
    cp a
    ld b, b
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

jr_088_6e8e:
    rst $38
    nop

jr_088_6e90:
    rst $38
    nop
    rst $38
    nop
    jp hl


    ld d, $2e
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld [hl], h
    add b
    or $00
    or $00
    ei
    nop
    ei
    nop
    ei
    nop
    ld a, [$fb00]
    nop
    ld a, [$ff00]
    nop
    add b
    ld a, a
    ld a, e
    add b
    ei
    nop
    ei
    nop
    ld sp, hl
    nop
    ldh a, [rP1]
    add b
    nop
    add b
    nop
    adc b
    inc bc
    ld bc, $7ffc
    nop
    sub l
    nop
    rst $38
    nop
    db $eb
    nop

jr_088_6ee0:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    push af
    nop
    rst $18
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $eb
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
    rrca
    rst $38
    add b
    nop
    nop
    nop
    nop
    nop
    rlca
    nop

jr_088_6f18:
    and a
    ld e, b

jr_088_6f1a:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_088_6f22:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_088_6f2c:
    push af
    ld a, [bc]

jr_088_6f2e:
    ldh [$1f], a

jr_088_6f30:
    rst $38
    rst $38
    dec b
    ld a, [$a05f]
    ld a, $c1
    rra
    ldh [$5f], a
    and b
    rra
    ldh [$df], a
    jr nz, jr_088_6ee0

    ld h, b
    adc a
    ld [hl], b

jr_088_6f44:
    sbc a
    ld h, b
    rst $08
    jr nc, jr_088_6f18

    jr nc, jr_088_6f1a

    jr nc, jr_088_6f2c

    jr nz, jr_088_6f2e

    jr nz, jr_088_6f30

    jr nz, jr_088_6f22

    jr nc, jr_088_6f44

    db $10
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
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
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [$9605]
    ld a, a
    rra
    rst $38
    ld e, $ff
    rrca
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
    inc bc
    rst $38
    dec bc
    rst $38
    rlca
    rst $38
    nop
    rst $38
    ld a, [hl]
    add b
    halt
    ld a, d
    nop
    ld [hl], a
    nop
    dec sp
    nop
    ld a, [hl-]
    nop
    dec sp
    nop
    dec sp
    nop
    dec sp
    nop
    ld a, a
    nop
    add b
    ld a, a
    add hl, sp
    add b
    dec e
    nop
    dec e
    nop
    jr jr_088_6fac

jr_088_6fac:
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_088_6fbb

    inc b
    ld hl, sp+$7f
    nop
    sbc l
    nop
    pop bc

jr_088_6fbb:
    ld a, $b7
    nop
    pop hl
    ld e, $fe
    ld bc, $32cd
    push af
    nop
    ld a, a
    nop
    adc e
    ld [hl], h
    ld bc, $fffe
    nop
    ei
    nop
    db $eb
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38

jr_088_6fe4:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_088_6fea:
    nop
    rst $38
    ld [bc], a
    rst $38
    inc e
    ldh [rP1], a
    nop

jr_088_6ff2:
    nop
    nop
    nop
    nop
    sbc $21
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_088_6ffe:
    rst $38
    nop

jr_088_7000:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    rst $30
    ld [$0cf3], sp

jr_088_700c:
    jp nc, $272d

    rst $38
    add b
    rst $38
    sbc h
    ld h, e
    rst $18
    jr nz, jr_088_6ff2

    inc h
    rst $08
    jr nc, jr_088_6fea

    jr nc, jr_088_700c

    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10

jr_088_7024:
    ld h, a
    sbc b
    or a
    ld c, b

jr_088_7028:
    rst $28
    db $10
    rst $20
    jr jr_088_6fe4

    ld c, b

jr_088_702e:
    rst $30
    ld [$14eb], sp
    rst $20
    jr jr_088_7024

    db $10
    rst $20
    jr jr_088_7000

    jr c, jr_088_6ffe

    inc a
    db $e3
    inc e
    rst $08
    jr nc, jr_088_7028

    jr jr_088_702e

    inc d
    db $e3
    inc e
    rst $30
    ld [$08f7], sp
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $30
    ld [$06f9], sp
    rst $30
    ld [$06f9], sp
    ei
    inc b
    ei
    inc b
    rst $38
    nop
    ei
    inc b
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    cp $01
    cp $01
    db $fc
    inc bc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $76
    add b
    ld e, d
    nop
    ld e, d
    nop
    ld e, d
    nop
    ld a, [de]
    nop
    dec c
    nop
    dec l
    nop
    dec c
    nop
    dec c
    nop
    cp $01
    ld bc, $04fe
    nop
    add [hl]
    nop
    add h
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
    rrca
    nop
    ld a, [$3f80]
    nop
    xor a
    nop
    db $fd
    nop
    and e
    nop
    rst $38
    ret nz

    ccf
    ldh a, [rIF]
    add sp, $03
    jr nz, jr_088_70e5

    ld [$f0f7], sp
    rrca
    adc h
    ld [hl], e
    db $f4
    inc bc
    ld a, h
    inc bc
    ei
    inc b
    cp $3f
    ret nz

    rst $38
    nop
    ld a, a
    nop
    sbc a
    nop
    scf
    nop
    add a
    nop
    add hl, hl
    nop
    rst $38
    nop
    rst $38
    nop

jr_088_70e5:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    xor c
    cp $00
    nop
    nop
    nop
    nop
    nop
    inc a
    inc bc
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    db $fc
    inc bc
    add sp, $17
    add sp, $17
    ret z

    scf
    ret nz

    ccf
    ld b, b
    cp a
    nop
    rst $38
    dec bc
    rst $38
    ldh [rIE], a
    ld e, $e1
    ld a, [de]
    push hl
    inc c
    di
    ld c, $f1
    ld c, $f1
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$43
    cp h
    add e
    ld a, h
    add e
    ld a, h
    sub e
    ld l, h
    ret


    ld [hl], $d1
    ld l, $d5
    ld a, [hl+]
    pop hl
    ld e, $e5
    ld a, [de]
    push hl
    ld a, [de]
    ld a, [c]
    dec c
    add sp, $17
    ld [c], a
    dec e
    or $09
    ld a, [c]
    dec c
    or $09
    rst $30
    ld [$08f7], sp
    ei
    inc b
    cp $01
    db $fd
    ld [bc], a
    db $fc
    inc bc
    cp $01
    db $fc
    inc bc
    cp $01
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
    rst $38
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
    rst $38
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
    cp d
    ld b, b
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    db $fc
    inc bc
    nop
    db $fc
    nop
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
    di
    di
    ret nz

    db $e3
    add b
    rst $30
    add c
    rst $38
    pop bc
    rst $38
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    ld hl, sp-$10
    ret nz

    ldh [rP1], a
    add a
    nop
    rst $38
    add e
    rst $38
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
    and h
    rst $38
    ld b, b
    add b
    nop
    nop
    nop

jr_088_71f1:
    nop
    ld b, $01
    dec [hl]
    jp z, Jump_000_00ff

    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    ldh a, [rIF]
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

jr_088_720a:
    ld bc, $ffff
    rst $38
    ld bc, $d9fe
    ld h, $4b
    or h
    ld l, b
    sub a
    ld b, h
    cp e
    jr z, jr_088_71f1

    inc h
    db $db
    inc h
    db $db
    inc b
    ei
    inc de
    db $ec
    sub e
    ld l, h
    jp $d13c


    ld l, $89
    db $76
    ret


    ld [hl], $cd
    ld [hl-], a
    call $c432
    dec sp
    db $e4
    dec de
    ld a, [c]
    dec c
    ld [c], a
    dec e
    ld [c], a
    dec e
    ld a, c
    add [hl]
    ld a, c
    add [hl]
    ld [hl], a
    adc b
    ld [hl], e
    adc h
    dec [hl]
    jp z, $c43b

    cp c
    ld b, [hl]
    cp d
    ld b, l
    inc a
    jp Jump_088_639c


    ld e, l
    and d
    dec e
    ld [c], a
    sbc $21
    sbc [hl]
    ld h, c
    ld a, $c1
    cp [hl]
    ld b, c
    ccf
    ret nz

    rra
    ldh [$9f], a
    ld h, b
    cp a
    ld b, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    adc a
    ld [hl], b
    rst $18
    jr nz, jr_088_720a

    ld h, b
    sub $29
    rla
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld [hl], h
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_088_7281:
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    add a
    nop
    ld hl, sp+$07
    nop
    ld hl, sp-$80
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    ld bc, $0000
    ld a, a
    ld b, b
    adc a
    db $10
    rst $28
    ld [hl], d
    adc c
    ld h, b
    rrca
    ld [hl], d
    adc c
    jr nz, jr_088_7281

    ld [$4877], sp
    or a
    ld a, [bc]
    push de
    rst $38
    rst $38

jr_088_72b2:
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
    rrca
    rlca
    ccf
    rlca
    rrca
    rst $18
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
    ld c, $f0
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, e
    or h
    db $fc
    inc bc
    ldh a, [rIF]
    ret nz

    ccf
    nop
    rst $38
    nop

jr_088_72ed:
    rst $38
    nop
    rst $38
    nop
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
    ld d, h
    rst $38
    add b
    ld a, a
    ld b, b
    cp a
    ld d, b
    xor a
    ldh [$1f], a
    ld [hl], b
    adc a
    ld h, b
    sbc a
    or b
    ld c, a
    ld d, h
    xor e
    ld d, b
    xor a
    ld a, [hl+]
    push de
    ld c, d
    or l
    jr z, jr_088_72ed

    xor c
    ld d, [hl]

jr_088_7318:
    sbc c
    ld h, [hl]

jr_088_731a:
    rst $18
    jr nz, jr_088_72b2

    ld l, d
    jp c, $f325

    inc c
    pop af
    ld c, $e5
    ld a, [de]
    db $fd
    ld [bc], a
    add hl, sp
    add $3a
    push bc

jr_088_732c:
    inc a
    jp $a35c


    sbc l
    ld h, d
    cp h
    ld b, e
    cp [hl]
    ld b, c
    rst $18
    jr nz, jr_088_7318

    jr nz, jr_088_731a

    jr nz, @-$1f

    jr nz, @+$61

    and b
    ld l, a
    sub b
    ld l, a
    sub b
    cp e
    ld b, h
    xor a
    ld d, b
    cp a
    ld b, b
    ld d, a
    xor b
    ld [hl], a
    adc b
    ld d, a
    xor b
    ld [hl], a
    adc b
    ei
    inc b
    cp [hl]
    ld b, c
    cp e
    ld b, h
    sbc l
    ld h, d
    call c, $0723
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ld d, h
    and b
    nop
    nop

jr_088_736a:
    nop
    nop
    nop
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
    ld hl, sp+$07
    nop
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
    nop
    nop
    ld bc, $fe01
    rlca
    ldh [$0a], a
    ldh a, [rIF]
    ldh [$09], a
    or $09
    sub $01

jr_088_7397:
    cp $c7
    jr c, jr_088_736a

    jr nc, jr_088_732c

    jr nc, @+$01

    nop
    ld [hl], e
    adc h
    cpl
    ret nc

    ld c, a
    or b
    inc d
    db $eb
    ld a, e
    add h
    cp $01
    nop
    ld a, a
    nop
    rst $38
    nop
    cp $06
    ld sp, hl
    inc d
    db $e3
    jr nz, jr_088_7397

    ld a, [bc]
    db $f4
    ld [hl], e
    adc h
    ld b, a
    jr nc, @-$62

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
    nop
    nop
    nop
    nop
    jr nc, jr_088_73e1

    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_088_73df:
    rst $38
    nop

jr_088_73e1:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_088_73e7:
    rst $38
    inc d
    rst $38
    and b
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
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ld b, b
    cp a
    jr nz, jr_088_73e7

    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ld [hl], b
    adc a
    ld hl, sp+$07
    cp b
    ld b, a
    jr c, jr_088_73df

    ld [hl], h
    adc e
    ld e, h
    and e
    db $76
    adc c
    ld e, [hl]
    and c
    ld l, [hl]
    sub c
    xor a
    ld d, b
    ld e, a
    and b
    ld d, a
    xor b
    sub $29
    xor [hl]
    ld d, c
    xor a
    ld d, b
    rst $38
    nop
    rst $28
    db $10
    rst $30
    ld [$08f7], sp
    ld a, a
    add b
    or $09

jr_088_743a:
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    dec b
    ret nz

    dec b
    nop
    ld a, [bc]
    nop
    ld [$0c00], sp
    nop
    inc b
    nop
    dec b
    nop
    inc b
    nop
    rrca
    nop
    ldh a, [rIF]
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
    inc b
    inc bc
    inc bc
    db $fc
    rst $18
    nop
    ei
    nop
    rst $28
    nop
    rst $38
    nop
    ld d, b
    xor a
    rst $38
    nop
    ld hl, sp+$07
    rst $18
    jr nz, jr_088_743a

    ld b, b
    db $fc
    inc bc
    daa
    ret c

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
    inc bc
    db $fc
    inc bc
    ld hl, sp+$35
    ret nz

    ei
    nop
    rst $10
    nop
    jp $a100


    nop
    ld [hl], $00
    rra
    nop
    ld d, b
    nop
    ld e, b
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], b
    add b
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
    add hl, hl
    rst $38
    inc bc
    db $fc
    ld bc, $0102
    ld [bc], a
    nop
    ld bc, $0100
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ret nz

    ccf
    ld b, b
    cp a
    ld b, b
    cp a
    ld h, b
    sbc a
    and b
    ld e, a
    or b
    ld c, a
    ld [$feff], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    dec a
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
    ld a, a
    nop
    ld a, a
    nop
    ld e, a
    nop
    ldh [$1f], a
    dec c
    ldh [$0d], a
    nop
    rrca
    nop
    ld b, $00
    rlca
    nop
    inc bc
    nop
    ld [bc], a
    nop
    nop
    rlca
    rlca
    ld hl, sp-$11
    nop
    db $fd
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    rst $38
    nop
    ldh a, [rIF]
    rrca
    ldh a, [$fd]
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $20
    nop
    add e
    nop
    ret nc

    nop
    xor d
    nop
    inc bc
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
    and h
    ld a, [$0000]
    nop
    nop
    nop
    nop
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    and c
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
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ld b, b
    ccf
    ld b, b
    rra
    jr nz, jr_088_75ac

    jr nz, jr_088_759e

    stop
    stop
    db $10
    rlca
    ld [$0807], sp
    inc bc
    inc b
    nop
    rlca
    nop
    inc bc

jr_088_759e:
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    add b

jr_088_75ac:
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    db $fd
    rst $38
    inc e
    ldh [rIE], a
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
    rst $18
    nop
    cp a
    nop
    ret nz

    ccf
    rra
    ret nz

    sub $00
    sbc $00
    xor c
    nop
    db $db
    nop
    call nz, Call_088_5500
    nop
    ld h, b
    rrca
    rrca
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fd
    ld [bc], a
    ei
    inc b
    ei
    inc b
    or $09
    add sp, $17
    ret nz

    ccf
    ret nz

    ccf
    add e
    ld a, a
    ld [bc], a
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
    cp a
    nop
    cp a
    nop
    rst $38
    nop
    ld a, a
    nop
    ld e, a
    nop
    ld c, e
    nop
    ccf
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    nop
    nop
    nop
    nop
    nop
    ld [$0007], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    sub b
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
    nop
    nop
    nop
    dec b
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [$1f], a
    ret nz

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
    ld e, e
    and h
    ld a, [hl+]
    ld d, l
    ccf
    ld b, b
    rra
    jr nz, jr_088_76b0

    jr nz, jr_088_769e

jr_088_7693:
    db $10
    rrca
    db $10
    rlca
    ld [$0806], sp
    rlca
    ld [$0403], sp

jr_088_769e:
    inc bc
    inc b
    ld bc, $0002
    inc bc
    nop
    ld bc, $0100
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    add b

jr_088_76b0:
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    add b
    cp $e0
    cp $f8
    cp $fe
    rst $38
    db $fd
    rst $38
    rra
    ldh [rIE], a
    nop
    ld a, a
    nop
    rst $38
    nop
    cp a
    nop
    cp a
    nop
    rst $38
    nop
    ld e, a
    nop
    ld a, a
    nop
    add b
    ld a, a
    cpl
    add b
    rst $28
    nop
    rst $10
    nop
    or a
    nop
    cp e
    nop
    dec hl
    nop
    ret z

    ld bc, $1e21
    dec de
    db $e4
    rst $30
    ld [$08f7], sp
    rst $28
    db $10
    rst $18
    jr nz, @-$3f

    ld b, b
    cp [hl]
    ld b, c
    ld a, l
    add d
    db $fc
    ld [bc], a
    ld hl, sp+$04
    pop hl
    jr jr_088_7693

    ld [hl], b
    dec bc
    ldh a, [$1f]
    ldh [$7f], a
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
    ld d, a
    nop
    sbc a
    nop
    rst $18
    nop
    rst $30
    nop
    nop
    rst $38
    inc b
    rst $38
    ld [hl], b
    add b
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
    ld e, c
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
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
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
    rst $30
    nop
    ld [hl], a
    nop
    rst $38
    nop
    or d
    ld c, l
    add b
    ld a, a
    jp hl


    ld d, $ff
    nop
    rst $38
    nop
    ld [hl], a
    nop
    rst $38
    nop
    and $00
    ld a, $00
    jr z, jr_088_778c

jr_088_778c:
    nop
    nop
    rst $38
    nop
    ld a, a
    add b
    ld [de], a
    db $ed
    nop
    nop
    nop

jr_088_7797:
    nop
    nop
    add b
    nop
    add b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    jr nz, jr_088_77a5

jr_088_77a5:
    jr nz, jr_088_77a7

jr_088_77a7:
    stop
    stop
    ld [$0800], sp
    nop
    inc b
    ld bc, HeaderLogo
    ld [bc], a
    ld bc, $0002
    ld bc, $0100
    inc c
    inc de
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld a, a
    ld [hl], a
    adc b
    rst $28
    db $10
    rst $28
    db $10
    rst $18
    jr nz, jr_088_7797

    ld b, c
    ld a, [hl]
    add c
    ld a, h
    add d
    ld sp, hl
    inc b
    ldh a, [$08]
    db $f4
    ld [$10ec], sp
    adc $20
    sbc d
    ld b, b
    cp l
    ld b, b
    daa
    add b
    ld b, c
    nop
    ld b, h
    nop
    ld h, [hl]
    nop
    cp a
    nop
    ld a, a
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
    nop
    rst $38
    ld bc, $00fe
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
    dec b
    rst $38
    ld h, c
    rst $38
    db $ed
    inc sp
    adc e
    ld [hl], a
    adc a
    ld [hl], a
    rlca
    rst $38
    rrca
    rst $38
    adc a
    rst $38
    rrca
    rst $38
    ld e, $ff
    ld c, $ff
    rrca
    rst $38
    ld d, $ff
    rra
    rst $38
    nop

jr_088_783d:
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    ret nz

Jump_088_7845:
    ccf
    nop
    rst $38
    ldh [$1f], a
    ld hl, sp+$07
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
    or b
    ld c, a
    nop
    rst $38
    jr nz, jr_088_783d

    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    cp e
    nop
    rst $28
    nop
    cp $00
    add hl, sp
    nop
    dec l
    nop

jr_088_786e:
    or a
    nop
    rst $38
    nop
    nop
    rst $38
    db $fd
    ld [bc], a
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

jr_088_7884:
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

jr_088_7890:
    ld a, h
    inc bc
    pop bc
    ld a, $db
    inc h

jr_088_7896:
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    cp a
    ld b, b
    cp a
    ld b, b
    rst $18
    jr nz, jr_088_7884

    jr nz, jr_088_7896

    db $10
    rst $28
    db $10
    rst $30
    ld [$f807], sp
    rst $28
    db $10
    rst $08
    jr nz, jr_088_7890

    jr nz, jr_088_786e

    ld b, b
    ccf
    add b
    ld a, [hl]
    nop
    inc a
    nop
    inc hl
    nop
    ld [bc], a
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
    add b
    nop
    nop
    nop
    nop
    nop
    ld h, d
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
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    or $00
    db $fc
    nop
    db $fc
    nop
    cp l
    nop
    xor l
    nop
    rst $18
    nop
    rst $18
    nop
    xor $00
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
    ld bc, $0b0a
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0000
    nop
    nop
    nop
    nop
    nop
    ld [de], a
    ld a, [bc]
    inc de
    inc d
    dec d
    ld d, $17
    ld [$0018], sp
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld a, [de]
    ld a, [bc]
    dec de
    inc e
    dec e
    ld [$1e08], sp
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_088_7969

    ld a, [bc]
    ld [hl+], a
    inc hl
    inc h
    ld [$2508], sp
    ld h, $00
    nop
    nop
    nop
    nop
    nop
    daa
    ld hl, $280a
    add hl, hl
    ld [$0808], sp
    ld a, [hl+]
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    inc l
    ld a, [bc]

jr_088_7969:
    dec l
    ld l, $08
    ld [$2f08], sp
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_088_7983

    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $0a
    nop
    nop
    nop

jr_088_7983:
    nop
    nop
    nop
    nop
    jr nc, jr_088_7993

    scf
    jr c, jr_088_79c5

    ld a, [hl-]
    dec sp
    inc a
    dec a
    nop
    nop
    nop

jr_088_7993:
    nop
    nop
    nop
    nop
    jr nc, jr_088_79a3

    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld a, [bc]
    ld b, e
    nop
    nop
    nop

jr_088_79a3:
    nop
    nop
    nop
    nop
    jr nc, jr_088_79ed

    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld a, [bc]
    ld c, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    nop
    ld d, b
    ld a, [bc]
    ld d, c
    nop
    nop
    nop
    nop
    nop

jr_088_79c5:
    nop
    nop
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    nop
    ld d, a
    ld e, b
    ld e, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    nop
    nop
    ld e, a
    ld h, b
    nop
    ld h, c
    ld h, d
    ld h, d
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d

jr_088_79ed:
    nop
    ld l, e
    ld l, h
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    nop
    ld [hl], e
    nop
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld l, l
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    nop
    nop
    nop
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    nop
    nop
    nop
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, a
    ld a, [bc]
    add b
    add c
    add d
    add e
    nop
    nop
    nop
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, a
    ld a, [bc]
    add h
    add l
    ld a, [bc]
    add [hl]
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
    inc b
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
    inc b
    nop
    ld bc, $0001
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
    inc b
    nop
    ld bc, $0001
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
    rlca
    inc b
    nop
    ld bc, $0001
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
    ld bc, $0004
    ld bc, $0006
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
    ld bc, $0004
    ld bc, $0006
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
    rlca
    inc b
    nop
    ld bc, $0006
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
    inc b
    nop
    ld bc, $0103
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
    inc b
    nop
    ld bc, $0103
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
    inc b
    nop
    inc bc
    inc bc
    inc b
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
    inc b
    ld bc, $0103
    inc b
    inc b
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
    inc b
    ld bc, $0001
    inc b
    ld [bc], a
    inc b
    nop
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    nop
    nop
    ld bc, $0204
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld bc, $0701
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    nop
    ld bc, $0106
    rlca
    ld [bc], a
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    nop
    ld bc, $0106
    rlca
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0600
    ld b, $07
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
    inc b
    nop
    nop
    nop
    rlca
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
    ld [bc], a
    inc b
    nop
    nop
    nop
    inc b
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
    ld [bc], a
    inc b
    nop
    nop
    nop
    nop
    inc b
    ld [bc], a
    ld [bc], a
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
    nop
    rst $38
    inc e
    rst $38
    ld a, d
    rst $38
    ld b, a
    rst $38
    ld hl, $03ff
    rst $38
    add a
    rst $38
    rlca
    rst $38
    ld b, $ff
    nop
    rst $38
    ld b, l
    rst $38
    add a
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    db $10
    rst $38
    jr nz, @+$01

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
    db $10
    rst $38
    ld d, b
    rst $38
    ld [hl], b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ldh [rIE], a
    pop bc
    rst $38
    daa
    rst $38
    cp a
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, $ff
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
    inc hl
    rst $38
    call c, $f2ff
    db $fd
    ld a, [c]
    db $fd
    and $f9
    ld c, b
    push af
    ld b, $f9
    and d
    db $fd
    di
    db $fd
    ld sp, hl
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $20
    rst $38
    add $f9
    rst $28
    inc b
    rst $38
    nop
    rst $38
    ld [hl+], a
    rst $38
    ld h, $ff
    ld b, [hl]
    rst $38
    and $ff
    and $ff
    and $ff
    and $ff
    and $ff
    and $ff
    and $ff
    and $ff
    ld [c], a
    rst $38
    jp nc, $eeff

    rst $38
    or $ff
    ldh a, [rIE]
    ldh a, [rIE]
    and $ff
    ld a, [c]
    rst $38
    ld [c], a
    rst $38
    jp nc, $fbff

    rst $38
    jp hl


    rst $38
    pop hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret c

    rst $38
    ld b, $ff
    cpl
    rst $38
    ld c, a
    cp a
    adc h
    ccf
    ld b, b
    cp a
    ld de, $0fee
    ldh a, [$87]
    db $fc
    sbc a
    ld [$5dbf], a
    rst $38
    inc c
    rst $38
    add [hl]
    rst $38
    add d
    rst $38
    add b
    rst $38
    db $fc
    rrca
    rst $38
    add a
    rst $38
    daa
    rst $38
    ld b, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    cp a
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

Call_088_7cff:
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
    rrca
    ld [$1f0f], sp
    rra
    rra
    rra
    ccf
    ccf
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
    rst $38
    rst $38
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
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, b
    rst $38
    add b
    rst $28
    ld b, b
    rst $30
    rst $38
    ld sp, hl
    rst $38
    ld c, $ff
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
    ld hl, sp+$00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $00
    db $fc
    nop
    ld b, c
    nop
    jp $ff3f


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
    cp $ff
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    push hl
    rst $38
    db $10
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
    rst $38
    sbc a
    rst $38
    rst $28
    rst $38
    ld [hl], a
    rst $38
    add hl, sp
    rst $38
    ld e, $ff
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
    db $fc
    rst $38
    inc bc
    db $fc
    rst $38
    nop
    db $fd
    nop
    ld l, d
    nop
    sub h
    nop
    ld a, h
    nop
    db $e4
    nop
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    ld bc, $c300
    ccf
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
    rst $38
    cp $00
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    ret nz

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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld bc, $fffe
    nop
    ret nz

    nop
    jr nz, jr_088_7e5c

jr_088_7e5c:
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $8700
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
    nop
    rst $38
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
    rst $38
    nop
    ld b, b
    add b
    add hl, hl
    ret nz

    ccf
    ret nz

    add a
    ld hl, sp-$40
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    rlca
    ld hl, sp-$7e
    db $fd
    add e
    db $fc
    pop bc
    cp $e1
    cp $f0
    rst $38
    pop af
    rst $38
    ld sp, hl
    rst $38
    nop
    db $fc
    nop
    ld a, [$f200]
    nop
    pop af
    nop
    jp hl


    nop
    push hl
    nop
    add sp, $00
    jp hl


    nop
    db $e4
    nop
    db $e4
    nop
    db $e4
    nop
    call nz, $c000
    nop
    db $e4
    nop
    ldh [rP1], a
    rst $28
    ldh a, [rIE]
    sbc a
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
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
    nop
    add b
    nop
    ld b, h
    nop
    rst $38
    nop
    xor a
    ld d, b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld l, c
    rst $38
    inc c
    di
    ld b, $f9
    ld [$88f7], sp
    ld [hl], a
    inc c
    di
    inc b
    ei
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
    jr nz, jr_088_7f35

jr_088_7f35:
    jr nz, jr_088_7f37

jr_088_7f37:
    dec h
    nop
    cpl
    nop
    rst $38
    inc bc
    rst $38
    ld e, $ff
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    nop
    rst $38
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
    db $fc
    nop
    ld [bc], a
    ret nz

    xor a
    ld b, b
    db $db
    inc h
    nop
    rst $38
    nop
    rst $38
    ld b, c
    rst $38
    sbc b
    rst $38
    nop
    rst $38
    ld a, a
    add b
    inc a
    jp $e31c


    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$20f7], sp
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld [hl], b
    nop
    ldh [rP1], a
    ld h, b
    nop
    nop
    ld [hl], c
    nop
    pop hl
    ld bc, $0277
    ccf
    rlca
    rst $38
    ld e, $ff
    ldh [rIE], a
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
    db $fd
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    add hl, de
    rlca
    di
    nop
    cp [hl]
    ld b, b
    db $fd
    ld [bc], a
    pop af
    ld c, $06
    nop
    rlca
    nop
    sub a
    nop
    rst $18
    inc bc
    rst $38
    rlca
    cp a
    ld b, a
    ld d, a
    xor a
    rrca
    rst $30
    ld b, a
    cp a
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    cp $07
    cp $07
    db $fc
    rlca
    db $fc
    rlca
    db $f8
