SECTION "ROM Bank $084", ROMX[$4000], BANK[$84]

    ld l, b
    sub b
    db $30, $c8
    db $20, $dc
    db $20, $dc
    db $38, $c4
    db $18, $e4
    db $18, $ec
    db $18, $e6
    db $18, $e6
    ld c, h
    or d
    ld b, [hl]
    cp b
    inc c
    di
    inc c
    rst $30
    ld b, $79
    ld [bc], a
    db $fd
    rlca
    ld hl, sp+$06
    ld sp, hl
    ld [bc], a
    db $ed
    rlca
    ld hl, sp+$03
    db $fd
    inc bc
    db $fd
    ld bc, $11fe
    xor $01
    cp [hl]
    ld bc, $01de
    cp $00
    ld a, a
    ld bc, $005e
    ld a, a
    nop
    rst $38
    inc b

Jump_084_403d:
    ei
    ld [hl+], a
    db $dd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    rst $38
    ld [bc], a
    db $dd
    nop
    rst $38
    ld bc, $81fe

jr_084_404f:
    ld a, [hl]
    add b
    ld a, a
    nop

jr_084_4053:
    rst $38
    ld [bc], a
    push af
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    ei
    add b

jr_084_4061:
    ld a, e
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    cp a
    jr nz, jr_084_404f

    jr nz, @+$01

    jr nz, jr_084_4053

    inc b
    ei
    db $10
    rst $28
    db $10
    rst $18
    nop
    rst $38
    ld a, [bc]
    db $fd
    ld a, [bc]
    db $fd
    ld [$04f7], sp
    ei
    dec b
    ld a, [$f704]
    inc b
    ei
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [de], a
    rst $28
    ld bc, $81fe
    ccf
    add c
    ld a, a
    add c
    cp $00
    rst $38
    ld b, b
    cp a
    ld b, h
    dec sp
    inc b
    ld a, e
    ld [hl+], a
    sbc l
    ld [hl+], a
    cp a
    ld [bc], a
    cp l
    ld de, $114e
    rra
    nop
    rra
    ld [$0877], sp
    rst $28
    ld h, c
    sub b
    ld [hl+], a
    ld d, b
    pop hl
    db $10
    xor a
    ld d, b
    ld a, l
    nop
    ld d, h
    nop
    inc h
    ld e, b
    nop

Jump_084_40bf:
    nop
    ld c, a
    nop
    ld b, a
    ld [$0826], sp
    inc h
    ld [$004e], sp
    rlc h
    ld [hl+], a
    dec c
    inc sp
    inc c
    inc c
    inc b
    nop
    ld b, $00
    ld b, $00
    sub d
    nop
    add $00
    ld [c], a
    add d
    jr nz, jr_084_4061

    adc c
    add b
    ei
    add b
    rst $10
    ld b, c
    sbc $41
    db $ec
    ld b, c
    ld a, [hl]
    ld b, b
    ld a, a
    ld b, b
    dec sp
    nop
    ld a, a
    nop
    ld a, [hl]
    jr nz, jr_084_4150

    nop
    ld [hl-], a
    jr nz, jr_084_4114

    nop
    ld [hl-], a
    db $10
    jr nz, jr_084_410d

    dec l
    db $10
    dec bc
    nop
    sbc e
    nop
    sbc c
    nop
    ld e, b
    nop
    jr jr_084_4111

    nop
    ld [$0800], sp

jr_084_410d:
    nop
    ld [$0004], sp

jr_084_4111:
    dec c
    nop
    rlca

jr_084_4114:
    inc b
    ld b, c
    inc b
    ld b, e
    inc b
    ld b, e
    ld [bc], a
    dec b
    ld [bc], a
    dec c
    ld [bc], a
    add c
    ld [bc], a
    add e
    ld [bc], a
    and [hl]
    ld [bc], a
    xor l
    cp a
    ld b, b
    ld a, a
    ret nz

    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    ld b, b
    pop hl
    pop hl
    pop hl
    cp $e9
    db $76
    ldh [$7f], a
    pop hl
    ld a, [hl]
    ldh [$7f], a
    ld h, d
    db $fd
    pop af
    ld l, $78
    rst $30
    add hl, sp
    or [hl]
    inc a
    and e
    cp h
    cpl
    dec a
    xor [hl]
    dec a
    xor [hl]
    ld a, $bd
    cp [hl]
    cpl

jr_084_4150:
    ld a, $87
    cp [hl]
    rlca
    cpl
    sbc [hl]
    ccf
    add h
    ld a, $89
    ld l, $93
    ld e, $a5
    ld e, $a5
    ld l, $91
    ld a, [bc]
    or l
    ld a, [de]
    add a
    inc c
    sub e
    ld b, $99
    inc b
    sbc a
    inc d
    adc e
    nop
    sbc a
    inc b
    sbc e
    nop
    rra
    ld [$0497], sp
    sbc e
    nop
    sbc a
    inc b
    dec de
    inc b
    dec de
    inc b
    dec de
    inc b
    dec de
    inc b
    rra
    inc b
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    ld [$0417], sp
    dec de
    inc b
    rra
    inc b
    dec de
    inc b
    dec bc
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
    inc b
    dec bc
    nop
    rrca
    nop
    rrca
    ld a, [bc]
    dec c
    nop
    rrca
    ld a, [bc]
    dec b

jr_084_41ae:
    nop

jr_084_41af:
    rrca
    inc e
    ld b, d
    ld de, $4d60
    ld [hl-], a
    rst $18
    nop
    db $dd
    ld [hl+], a
    swap b
    adc [hl]
    jr nc, jr_084_41f5

    nop
    cp e
    nop
    sbc a
    nop
    cpl
    nop
    or d
    nop
    ld d, c
    jr nz, jr_084_41af

    jr jr_084_424c

    add b
    ret z

    nop
    push bc
    jr jr_084_41ae

    nop
    db $e3
    ld [$08d5], sp
    ld e, c
    nop
    rst $08
    nop
    or e
    ld c, h
    cp b
    ld b, h
    cp b
    ld b, h
    cp c
    ld b, h
    ld a, [$bb04]
    ld b, h
    ld [hl], a
    add b
    ld e, e
    and h
    ld e, c
    and [hl]
    ld a, l
    add d
    add b
    add d
    add b
    add d
    add b

jr_084_41f5:
    adc d
    add b
    ld c, d
    nop
    bit 0, b
    adc a
    ld b, b
    ld b, a
    ld b, b
    db $e3
    ld bc, $00e2
    ld h, e
    ld bc, $0060
    ld a, c
    nop
    ld l, c
    nop
    ld hl, $2100
    nop
    ld hl, $a100
    nop
    jr nz, jr_084_4215

jr_084_4215:
    ldh a, [rP1]
    ldh a, [rNR10]
    ldh [rNR10], a
    ldh a, [rNR10]
    di
    nop
    ld hl, sp+$10
    rst $38
    nop
    rst $38

jr_084_4224:
    ld a, a
    rst $38
    rst $38
    call nz, Call_084_60ff
    rst $38
    pop af
    rst $38
    rst $00
    db $fc
    rst $38
    add h
    ld a, e
    add h
    ld a, a
    sub h
    rst $28
    adc h
    rst $30
    call z, $feb7
    add c

Jump_084_423c:
    ld a, [$7e67]
    ei
    ld a, [hl]
    di
    ld a, [hl]
    jp $c57a


    ld a, e
    add a
    ld a, e
    and l
    ld l, b
    or a

jr_084_424c:
    add d
    ld a, l
    or b
    ld c, a
    inc bc
    db $fc
    cp [hl]
    ld b, b
    ret nc

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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_084_4269:
    rst $38

jr_084_426a:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    sbc h
    ld h, e
    cp [hl]
    ld b, c
    cp $01

jr_084_4276:
    cp $01
    db $fc
    ld bc, $01fc
    db $fc
    ld bc, $01f8
    ld hl, sp+$01
    ld hl, sp+$01
    pop hl
    nop
    and b
    nop
    ret nz

    nop
    ldh [rP1], a
    ret nz

jr_084_428d:
    nop
    ldh [rP1], a
    ldh [rP1], a
    add b
    nop
    ret nz

    nop
    ld d, d
    add b
    jr nz, @-$7e

    nop
    add b
    ld h, b
    add b
    nop
    add b
    ld h, b
    add b
    jr nz, jr_084_4224

    nop
    add b
    ld bc, $1180
    add b
    ld bc, $5880
    add b
    ld [hl], c
    add b
    call nz, Call_084_603b
    sbc a
    jr z, jr_084_428d

    sbc h
    ld h, e
    db $f4
    inc bc
    ld a, $81
    sbc e
    nop
    db $76
    ld bc, $104d
    cp e
    ld b, b
    sub c
    ld b, b
    ld a, [hl]
    ld bc, $034c
    ld e, d
    nop
    ld a, h
    inc bc
    jr c, @+$09

    ld h, b
    inc e
    ld c, l
    jr nc, @+$5d

    add h
    or $09
    rst $10
    jr nz, jr_084_426a

    jr nc, jr_084_4269

    jr nc, jr_084_4276

    jr nz, jr_084_4360

    nop
    rst $28
    db $10
    rst $28
    db $10
    rst $18
    nop
    add a
    nop
    sbc a
    nop
    ld c, a
    add b
    cp $01
    nop
    ld bc, $4a00
    nop
    ld c, b
    ld [$0047], sp
    rrca
    ld bc, $004e
    ld c, a
    nop
    ld c, a
    nop
    rst $08
    nop
    ld c, a
    inc b
    adc a
    nop
    sub a
    inc b
    sbc e
    nop
    sub a
    nop
    sbc a
    add b
    rla
    add b
    sbc a
    add d
    db $dd
    jp nz, Jump_000_028f

    call z, $d702
    ld [bc], a
    rst $38
    ld [bc], a
    rst $30
    ld b, d
    adc e
    db $fc
    ld b, e
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop

jr_084_4329:
    ret nz

    nop
    ld e, a
    rlca
    ld sp, hl
    rst $38
    ld hl, $f521
    ld hl, $01df
    cp $01
    cp $11
    xor $30
    rst $08
    db $10
    rst $38
    ld d, h
    cp e
    ld d, b
    cp a
    db $10
    rst $38
    db $10
    rst $28
    inc a
    db $d3
    jr nz, jr_084_4329

    nop
    rst $38

jr_084_434c:
    rrca
    ldh a, [$78]

jr_084_434f:
    and b
    ld hl, $d7fe
    jr z, jr_084_434c

    ld [$00ff], sp
    rst $38
    nop
    rst $30
    ld [$00ff], sp
    rst $38
    nop

jr_084_4360:
    ld de, $00ee
    rst $38
    ld bc, $00fe
    rst $38
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_084_434f

    inc d
    db $eb
    inc d
    db $eb
    ld b, $f1
    ld b, a
    or b
    ld [bc], a
    ldh [rNR10], a
    ldh [$80], a
    ld b, b
    add b
    ld b, b
    and b
    ld b, b
    add c
    ld h, b
    adc b
    ld d, b
    xor b
    ld b, b
    ld h, b
    nop
    ld [hl], b
    nop
    ld c, b
    jr nz, jr_084_43cf

    jr nz, jr_084_43e9

    jr nz, jr_084_43a3

    jr nz, jr_084_43d1

    nop
    ld b, [hl]
    jr nc, jr_084_43c3

    db $10
    add sp, $10
    db $ed
    db $10
    call $7810
    add a

jr_084_43a2:
    ld a, h

jr_084_43a3:
    add e
    db $76
    adc c
    rst $30
    ld [$2cd2], sp
    ei
    inc b
    rst $38
    nop
    ccf
    nop
    ld a, c

jr_084_43b1:
    ld b, $ea
    dec b
    ld d, d
    dec c
    di
    inc c
    ld a, e
    inc b
    db $e3
    inc e
    sbc e
    ld h, h
    pop af
    ld c, $f1
    ld c, $19

jr_084_43c3:
    and $10
    rst $28
    ld e, b

jr_084_43c7:
    and a
    jr jr_084_43b1

    ld de, $09ee
    or $81

jr_084_43cf:
    ld a, [hl]
    ld [bc], a

jr_084_43d1:
    inc h
    nop
    cp e
    nop
    ld [$4200], sp
    nop

jr_084_43d9:
    ret nz

    nop
    dec bc
    nop

jr_084_43dd:
    rlca
    ld bc, $002e
    ld c, a
    nop
    ld c, e
    ld bc, $41ca
    adc a
    pop bc

jr_084_43e9:
    rrca
    add c
    ld l, e
    ld b, c
    xor e
    ld b, c
    xor a
    ld bc, $21ff
    ret nc

    jr nz, jr_084_43c7

    ld hl, $21e0
    pop hl
    jr nz, jr_084_43dd

    jr nz, @-$25

    jr nz, jr_084_43d9

    nop
    ld sp, hl
    nop
    push af
    nop
    or a
    db $10
    adc a
    db $10
    rla
    db $10
    ld a, a
    db $10
    rst $38
    rla
    ld a, [$ffff]
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, a
    ret c

    rst $38
    ld [$08ff], sp
    rst $38
    jr jr_084_43a2

    ld [$0988], sp
    ret


    ld c, c
    xor b
    ld sp, hl
    ld c, b
    ld sp, hl
    ld [$4bb8], sp
    ld hl, sp+$0f
    ld sp, hl
    adc [hl]
    cp c
    cp $f2
    xor l
    nop
    rst $38
    rrca
    ld a, [c]
    db $fc
    inc d
    sbc $04
    cp $00
    ld [hl+], a
    rst $18
    adc c
    ld [hl], a

jr_084_4444:
    sbc a
    ld h, d
    sub d

jr_084_4447:
    ld l, l
    xor h

jr_084_4449:
    ld d, e
    rst $18
    jr nz, jr_084_4444

    ld [$00ff], sp
    nop
    rst $38
    nop
    rst $38
    nop
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
    jr jr_084_4449

    and h
    ld e, e
    ld hl, sp+$07
    db $fd
    ld [bc], a
    db $fc
    inc bc
    call c, $e603
    ld bc, $00e7
    inc bc
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    ld b, b

jr_084_4479:
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ld b, b
    and b
    ld b, b
    ldh [rP1], a
    ret nz

    jr nz, jr_084_4447

    jr nz, jr_084_4479

    nop
    or b
    nop
    or b
    nop
    jr nz, jr_084_44a0

    ld [hl], b
    nop
    ld a, b
    nop
    ldh a, [$08]
    ld h, b
    ld [$00fc], sp
    db $fc
    nop
    ld hl, sp+$06
    ld a, d
    inc b

jr_084_44a0:
    ld bc, $00ee
    push hl
    nop
    rst $28
    nop
    ld a, a
    jr nz, jr_084_4509

    nop
    ld [hl], b
    nop
    rrca
    nop
    inc bc
    nop
    ld h, d
    nop
    inc [hl]
    nop

jr_084_44b5:
    pop af
    nop
    di
    nop
    rra
    db $10
    ld l, a
    nop
    ld a, a
    db $10
    rst $28
    db $10
    db $eb
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    nop

jr_084_44cd:
    ld a, a
    db $10
    and $10
    rst $28
    nop
    rst $38
    jr nz, jr_084_44b5

    nop
    ld [hl], a
    nop
    rlca
    nop
    rst $28
    ret


    ld a, $50
    xor a
    ld bc, $08de
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    jr z, jr_084_44cd

    ld [$08ff], sp
    rst $30
    adc b
    ld [hl], a
    nop
    rst $38
    ld [$08f7], sp
    rst $30
    ld [$08f3], sp
    di
    xor b
    ld d, a
    adc b
    rst $38
    cp b
    rst $00
    sbc b
    rst $28
    sbc h
    db $e3
    cp b

jr_084_4509:
    rst $00
    and b
    rst $18
    cp a
    sbc $ff
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    ldh [$9f], a
    ldh a, [rIF]
    ld [$85f7], sp
    ld a, [hl]
    dec b
    cp $04
    ei
    adc b
    ld [hl], a
    ld b, b
    rst $38
    ld b, h
    ei
    ld h, h
    rst $18
    ld b, h
    rst $38
    ld [hl], a
    adc h
    cp $71
    ld b, l
    cp d
    rra
    db $e4
    cp $72
    ret nz

    add b
    ld a, [bc]
    nop
    dec b
    inc b
    nop
    nop
    sbc $65
    rst $38
    add b
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
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld bc, $42fe
    cp l
    xor b
    ld d, a
    ld [hl], c
    adc [hl]
    and [hl]
    ld e, c
    db $fc
    inc bc
    ld a, d
    add l
    ld d, c
    xor [hl]
    ld hl, sp-$79
    ld a, h
    add e
    ld a, d
    push bc
    cp $41
    ld a, a
    ld b, b
    dec de
    ld h, b
    ld [hl], a
    jr nz, jr_084_45af

    jr nz, @+$03

    jr nc, jr_084_4593

    db $10
    jr @+$12

    nop
    jr jr_084_4589

jr_084_4589:
    ld [$0804], sp
    nop
    inc c
    ld [$0004], sp
    inc b
    nop

jr_084_4593:
    ld b, $00
    ld b, $04
    ld [bc], a
    ld bc, $8002
    inc bc
    ld [bc], a
    ld bc, $0102
    sub a
    db $ec
    sbc l
    rst $20
    call $08b6
    rst $30
    nop
    rst $38
    ld b, $b9
    nop
    ld a, a
    nop

jr_084_45af:
    rst $38
    nop
    rst $38
    ld bc, $057e
    ld a, [$fd02]
    ld [bc], a
    db $fd
    add d
    ld a, a
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
    add h
    ld a, a
    add h
    ei
    add h
    ld a, a
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
    inc b
    rst $38
    sub h
    ld l, e
    ret nz

    ccf
    ld h, b
    rst $18
    ret nc

    cpl
    ld b, b
    cp a
    jp nz, Jump_084_403d

    rst $38
    ld b, d
    cp l
    ld b, $ff
    inc d
    db $eb
    ld bc, $03fe
    cp $56
    db $eb
    ld d, [hl]
    rst $28
    ld c, [hl]
    push af
    rst $08
    ld a, [hl]
    rst $08
    ld sp, hl
    ld l, a
    ret c

    ld l, a
    jp c, $d66f

    ld l, a

jr_084_4601:
    sub $7f
    add $7f
    add $73
    call z, $fc43
    rst $38
    ld a, a
    rst $38
    ld [hl], a
    rst $38
    rra
    rst $38
    rrca
    rst $38
    ld l, e
    ret z

    scf
    ld b, b
    cp a
    ld b, b
    cp a
    inc b
    ei
    ld b, $f9
    nop
    rst $38
    jr nz, jr_084_4601

    ld b, b
    cp a
    nop
    rst $38
    xor e
    ld d, [hl]
    ld [$e7b7], a
    cp d
    rst $38
    daa
    rst $38
    dec sp
    sbc a
    rst $38
    rst $38
    rst $38
    rst $00

Jump_084_4635:
    rst $38
    rst $10
    db $fd
    ld d, a
    ld sp, hl
    db $d3
    ld l, l

jr_084_463c:
    cp a
    ld d, b
    xor [hl]
    ld a, c
    xor $11
    rst $30
    add hl, bc
    rst $28
    db $10
    db $fd
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [$50f7], sp
    xor a
    db $ec
    inc de
    db $fc
    inc bc
    or $09
    cp $01
    rst $38
    nop

jr_084_465e:
    ccf
    add b
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    xor a
    ld d, b
    cp a
    ld b, b
    rst $10
    jr z, jr_084_463c

    jr nc, jr_084_465e

    db $10
    rst $20
    jr jr_084_46ea

    ld [$003f], sp
    ccf
    nop
    dec d
    ld [bc], a
    rlca
    nop
    ld b, $01
    inc bc
    nop
    ld [bc], a
    nop
    ld bc, $0100
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld bc, $0200
    nop
    nop
    add b
    cp $fb
    add sp, -$01
    ld hl, sp+$7f
    ld a, [$707d]
    cp a
    ld a, b
    or a
    ld a, d
    or l
    ld a, d
    cp l
    ld a, b
    or a
    ld a, [$7075]
    rst $38
    ld a, b
    rst $30
    ld a, h
    or e
    ld a, h
    xor e
    ld a, h
    db $eb
    ld a, [hl]
    pop hl
    ld a, h
    db $eb
    ld l, h
    cp e
    ld a, h
    db $e3
    ld a, b
    xor h
    ld a, h
    add sp, $7c
    ldh a, [$7c]
    add sp, $7c
    add sp, $7c
    add sp, $78
    db $f4
    ld [hl], b
    db $fc
    ld a, b
    db $f4
    ld [hl], b
    db $fc
    ldh a, [$7c]
    ld a, b
    db $f4
    ld [hl], b
    db $fc
    ld [hl], b
    cp h
    ldh a, [$7c]
    ld [hl], b
    db $fc
    ldh a, [$7c]
    ldh a, [$fc]
    ldh a, [$fc]
    ld hl, sp+$74
    ld hl, sp+$74
    ldh a, [$ec]
    ld hl, sp+$64
    ld h, b
    db $fc
    ldh [$fc], a
    ldh a, [$6c]

jr_084_46ea:
    ldh [$fc], a
    ldh [$7c], a
    ldh [$7c], a
    ld h, c
    ld hl, sp+$71
    ld hl, sp-$0f
    ld l, b
    ld [hl], c
    add sp, -$07
    ldh [$f9], a
    ldh a, [$f9]
    ld hl, sp-$07
    ld hl, sp-$07
    ld hl, sp-$07
    ld a, b
    ld sp, hl
    add sp, $69
    ldh a, [$e1]
    ld a, b
    ld l, c
    ret nc

    ld l, c
    ldh a, [rBCPD]
    ret nc

    ld h, c
    ld hl, sp+$71
    add sp, -$0f
    ld a, b
    ld sp, hl
    ldh a, [$f9]
    ldh a, [$f9]
    ldh [$f1], a
    add sp, -$0f
    ld hl, sp-$07
    ldh a, [$f9]
    sub b
    ld a, c
    ret nz

    ld sp, hl
    jr nz, @-$05

    jr @-$01

    add h
    cp $8c
    cp $40
    db $e3
    ccf
    ld h, d
    cp a
    ld de, $fdff
    rra
    and [hl]
    ld e, a
    ld l, h
    sub a
    or $4b
    cp d
    ld b, a
    di
    dec c
    pop af
    ld c, $f8
    rlca
    jp c, $fc25

    inc bc
    cp $01
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
    ld b, d
    rst $38
    ldh a, [$7f]
    add b
    ld a, a
    jp nc, $e33d

    inc e
    jp hl


    ld e, $fd
    ld a, [bc]
    db $f4
    rrca
    ld hl, sp+$07
    ld hl, sp+$07
    ld sp, hl
    rlca
    db $f4
    dec bc
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    cp $01
    ld a, d
    add l
    cp [hl]
    ld b, c
    ld [hl], $c9
    ld e, $61
    ld e, $e1
    adc a
    ld [hl], b
    ld e, a
    and b
    rst $28
    db $10
    adc e
    ld [hl], h
    ld [bc], a
    db $fd
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
    ld b, b
    or a
    ld b, b
    or a
    ret nz

    ld a, a
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld a, a
    add b
    rrca
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$45
    ld a, [$b877]
    ld c, d
    cp h
    ld b, d
    cp h
    ld b, h
    cp d
    ld b, d
    cp h
    ld b, [hl]
    cp b
    ld b, [hl]
    cp b
    ld b, $f8
    ld b, [hl]
    cp b
    ld b, h
    cp b
    ld b, [hl]
    cp b
    ld b, [hl]
    cp b
    ld b, h
    cp b
    ld b, [hl]
    cp b
    ld b, h
    cp b
    ld b, l
    cp b
    ld b, h
    cp b
    nop
    db $fc
    dec b
    ld hl, sp+$44
    cp b
    ld bc, $01fc
    db $fc
    ld b, l
    cp b
    ld bc, $05fc
    ld hl, sp+$01
    db $fc
    add l
    ld hl, sp-$7b
    ld hl, sp-$79
    ld a, b
    db $e3
    ld a, h
    dec d
    ld a, [$fe01]
    ld b, l
    ld a, [$f906]
    ld b, $f9
    ld b, $f9
    ld b, $f9
    inc b
    ei
    ld b, h
    ei
    inc b
    ei
    add h
    ei
    ld b, h
    ei
    ld b, h
    ei
    ld b, h
    ei
    add b
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    add b

Call_084_482b:
    rst $38
    ld b, b

jr_084_482d:
    rst $38
    jr nz, @+$01

    ld a, b
    rlca
    cp h
    inc bc
    call c, $ee03
    ld bc, $01ee
    rst $30
    nop
    ei
    nop
    db $fd
    nop
    ld [bc], a
    db $fd
    add c
    cp $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_084_482d

    nop

jr_084_484f:
    rst $38
    ldh a, [rIF]
    ldh [$1f], a
    cp $03
    db $fc
    inc bc
    rst $38
    ld bc, $00ff
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
    add b
    ld a, a
    add b

jr_084_486b:
    ld a, a
    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    add b
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
    ld a, [bc]
    push af
    jr jr_084_486b

    ld [$07f7], sp
    ld hl, sp+$44
    cp e
    rst $00
    jr c, jr_084_484f

jr_084_488d:
    dec a
    db $e3
    inc e
    ld h, [hl]
    sbc c
    ld c, $f1
    ld a, [bc]
    push af
    dec de
    db $e4
    inc sp
    call z, $cc31
    rlca
    ld hl, sp+$17
    add sp, $24
    jp c, $d827

    dec l
    jp nc, $9669

    ld h, c
    sbc [hl]
    ld [hl], c
    adc [hl]
    ld sp, $61ce
    sbc [hl]
    nop
    rst $38
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
    pop hl
    db $fc
    ld bc, $01fc
    db $fc
    ld bc, $01fc
    ld hl, sp+$03
    jr c, jr_084_488d

    ret z

    inc sp
    ld hl, sp+$03
    ld hl, sp+$03
    ld hl, sp+$03
    ld hl, sp+$03
    ld hl, sp+$03
    ld hl, sp+$03
    ldh a, [$03]
    ldh a, [$03]
    ldh a, [rTAC]
    ldh a, [rTAC]
    ldh a, [rTAC]
    ldh a, [rTAC]
    ldh a, [rTAC]
    ldh [rTAC], a
    ldh [rIF], a
    ldh [rTAC], a
    ldh [rIF], a
    db $ec
    inc bc
    add sp, $07
    add sp, $07
    add sp, $07
    add sp, $07
    add sp, $07
    ldh [rIF], a
    ldh [rIF], a
    ldh [rIF], a
    ldh [rIF], a
    ret nz

    rrca
    ret nc

    rrca
    ret nc

    rrca
    ld d, b
    adc a
    db $10
    rst $08
    sub b
    ld c, a
    sub b
    ld c, a
    ret nz

    rra
    ld b, b
    sbc a
    ld [$40df], sp
    sbc a
    ld e, b
    sbc a
    ld [$32df], sp
    adc a
    inc a
    add e
    ld l, $91
    daa
    sbc b
    cpl
    sub b
    rlca
    cp b
    dec bc
    cp h
    ld bc, $00be
    cp a
    nop
    cp a
    db $10
    cp a
    db $10
    cp a
    inc d
    cp a
    inc d
    cp a
    inc d
    ld a, a
    inc [hl]
    ld a, a
    jr jr_084_49bd

    jr c, jr_084_49bf

    ld a, b
    ccf
    ld a, c
    ccf
    ld a, b
    ccf
    reti


    sbc a
    jp hl


    adc a
    pop af
    ld b, a
    rst $30
    daa
    ld a, [$fd33]
    ld de, $08fe
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld bc, $81ff
    rst $38
    nop
    rst $38
    ld b, b
    ldh [$3f], a
    ldh [$1f], a
    ldh a, [$1f]
    ld hl, sp+$0f

jr_084_4968:
    ld hl, sp+$07
    ld hl, sp+$07
    cp $03
    db $fc
    inc bc
    rst $38
    ld bc, $00ff
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
    and b
    ld e, a
    ret nz

    ccf
    ld b, c
    cp a
    jp z, Jump_084_4635

    add hl, sp
    sub $29
    ld l, d
    sub l
    ld d, b
    cpl
    sub b
    cpl
    rst $00
    jr c, jr_084_4968

    ld [hl], $70
    adc a
    pop bc
    ld a, $c1
    ld a, $c1
    ld a, $5f
    and b
    add e
    ld a, h
    pop bc
    ld a, $f1
    ld c, $44
    jr @-$3e

    jr c, @-$0f

    db $10

Jump_084_49b6:
    ldh a, [rTIMA]
    ld h, [hl]
    adc c
    db $76
    adc c
    ld h, c

jr_084_49bd:
    sbc d
    ld h, c

jr_084_49bf:
    sbc d
    ld h, h
    sbc d
    ld h, h
    sbc d
    ld l, c
    sub b
    ld l, d
    sub c
    pop af
    ld [bc], a
    ld h, h
    sub e
    add b
    scf
    ld c, h
    or e
    db $dd
    ld [hl+], a
    rst $28
    nop
    dec a
    jp nz, Jump_084_40bf

    dec a
    jp nz, $c23d

    ld a, l
    add d
    ld e, b
    and d
    ld d, $e0
    rra
    ldh [$3f], a
    ret nz

    inc sp
    ret nz

    cp [hl]
    ld b, c
    xor [hl]
    ld b, c
    dec sp
    ret nz

    inc d
    ret z

    ld [hl], a
    adc b
    dec a
    ret nz

    ld sp, $3fca
    ret nz

    ld a, $c1
    ld a, $c1
    inc [hl]
    jp $d32c


    ld l, [hl]
    sub c
    ld l, d
    sub l
    ld l, d
    sub l
    ld l, h

jr_084_4a07:
    sub e
    db $ec
    inc de
    call z, $cc33
    inc sp
    call nc, $f52b
    ld a, [bc]
    call nc, $d02b
    cpl
    ret nc

    cpl
    ret nc

    cpl
    ret nc

    cpl
    db $10
    rst $28
    jr jr_084_4a07

    cp e
    call nz, $c07f
    rra

jr_084_4a25:
    ld h, b
    rrca
    jr c, @+$0d

jr_084_4a29:
    inc e
    ld bc, $010e
    inc bc

jr_084_4a2e:
    nop
    add c
    cp a
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rNR22]
    ld hl, sp+$13
    db $fc
    dec d
    cp $16
    rst $38
    ld [bc], a
    rst $38
    ld [de], a
    rst $28
    ld [bc], a
    push af
    jr nz, jr_084_4a25

    inc h
    ei
    jr nz, jr_084_4a29

    jr nz, @-$1f

    inc b
    rst $38
    ld c, h
    or a
    ld l, h
    db $d3
    ld c, h
    cp e
    add sp, $5f
    ld l, b
    ccf
    cp b
    cpl
    ret c

    rrca
    add sp, -$79
    ldh [rVBK], a
    db $f4
    daa
    ei
    db $10
    db $fd
    ld de, $08fd
    cp $04
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    ret nz

    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ldh a, [$1f]
    ld hl, sp+$0f
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    rlca
    ld sp, hl
    rlca
    cp $01
    ld a, [$f905]
    ld b, $fc
    inc bc
    ld b, d
    and l
    jp z, $c324

    inc h
    add e
    ld h, b
    add b
    ld [hl+], a
    db $d3
    jr nz, jr_084_4a2e

    ld h, b
    sub h
    ld h, b
    and c
    ld b, d
    xor c
    ld b, h
    inc c
    jp nz, $c40b

    nop
    rst $10
    ld e, b
    add a
    xor b
    rlca
    xor h
    inc bc
    db $eb
    dec e
    dec l
    sbc $fc
    adc a
    push de
    xor a
    ld [hl], e
    xor a
    rst $30
    dec hl
    ld l, c
    or a
    ld d, c
    cp l
    and e
    jr @-$5b

    jr @-$5a

    add hl, de
    xor [hl]
    ld de, $0986
    ret nc

    rrca
    ret nz

    rla
    call z, $c013
    dec de
    add $18
    ld c, d
    db $10
    db $dd
    nop
    call nc, $b509
    ld [$0a75], sp
    and c
    ld c, d
    sbc l
    ld b, d
    sbc l
    ld b, d
    jr z, jr_084_4ae7

    xor l

jr_084_4ae7:
    nop
    ld c, b
    add l
    inc a
    ld bc, $0441
    ld a, b
    add l
    ld h, a
    adc b
    scf
    ret z

    ld [hl], a
    adc b
    db $76
    adc c
    ld [hl], a
    adc b
    ld h, e
    sbc b
    pop hl
    ld a, [de]
    and l
    ld e, d
    ld hl, $2eda
    pop de
    inc c
    di
    adc h
    ld [hl], e
    adc b
    ld [hl], a
    ld e, $e1
    ld e, $e1
    ld a, [de]
    push hl
    jr nz, @-$37

    nop
    and $00
    xor $40
    xor d
    ld b, b
    jp z, $ce40

    ld b, b
    call nz, $9440
    nop
    db $f4
    nop
    call nc, Call_084_5e80
    add b
    ld a, $80
    adc h
    adc b
    ld l, h
    ld [$80c1], sp
    db $dd
    ld b, b
    rst $38
    or b
    ld a, a
    ret nc

    ccf
    add sp, $1f
    db $f4
    rrca
    cp $03
    rst $38
    ld bc, $807f
    ccf
    ret nz

    rra
    ldh [$2f], a
    ldh a, [$27]
    ld hl, sp+$23
    db $fc
    ld bc, $00fe
    rst $38
    ld d, b
    rst $38
    ld b, b
    cp l
    ld h, b
    sbc l
    nop
    db $fd
    ld [$c8f5], sp
    ccf
    add sp, $5f
    ldh [$df], a
    ret nc

    ld l, a
    ldh [rIE], a
    ldh a, [$bf]
    ldh a, [$9f]
    pop af
    sbc a
    ld h, c
    sbc [hl]
    ld h, l
    dec de
    and e
    inc e
    jp nc, $ca0d

    sub a
    ld [$f647], a
    inc hl
    ld a, [$fb21]
    ld de, $09fe
    cp $04
    rst $38
    ld [bc], a
    ld [bc], a
    rst $38
    ld bc, $05ff
    rst $38
    or a
    rst $38
    inc c
    rst $38
    ld bc, $00ff
    rst $38
    add b
    ld a, a
    nop
    ld a, c
    add h
    ld a, b
    xor a
    ld d, b
    cpl
    ld d, b
    cpl
    ld d, b
    ld c, $71
    rrca
    ld [hl], b
    adc e
    ld [hl], b
    inc d
    ld h, e
    push de
    ld [hl+], a
    call nc, Call_084_5423
    and e
    ld d, [hl]
    and c
    sub [hl]
    ld h, c
    cp [hl]
    ld b, c
    cp h
    ld b, e
    inc l
    jp $c32c


    dec l
    ld b, d
    ld a, l
    ld [bc], a
    ld a, l
    add d
    ld [hl], l
    add d
    ld a, c
    add [hl]
    ld a, e
    add h
    inc sp
    call nz, $c439
    ld a, c
    add h
    ld a, c
    add h
    push af
    ld [$08f5], sp
    ld [hl], e
    ld [$0873], sp
    di
    ld [$8877], sp
    ld l, a
    sub b
    rst $28
    db $10
    rrca
    db $10
    db $eb
    inc b
    pop hl
    ld [de], a
    push bc
    jr nc, @-$3a

    ld sp, $31c4
    call c, $de21
    ld hl, $21da
    sub d
    ld h, l
    sub h
    ld h, e
    sub h
    ld h, e
    adc l
    ld [hl], d
    dec b
    ld a, [$fa05]
    add c
    ld a, [hl]
    ld bc, $2bfe

jr_084_4bfb:
    call nc, $a45b
    ld e, d
    and h
    ld d, e
    xor h
    ld d, c
    xor h
    ld d, e
    xor h
    sub a
    ld l, b
    add a
    ld a, b
    and a
    ld e, b
    and a
    ld e, b
    ld h, d
    sbc h
    jp nz, Jump_084_6a3c

    sub h
    adc $30
    ld c, l
    or b
    call $dd30
    jr nz, jr_084_4bfb

    ld hl, $21ce
    nop
    ld hl, $4001
    ld bc, $0242
    ld b, c
    ld b, d
    ld b, e
    ld [bc], a
    ret nz

    nop
    jp nz, $8200

    ld a, c
    add [hl]
    ld a, e
    add h
    ld a, e
    add h
    ld a, e
    add h
    ld [hl], e
    adc h
    rst $30
    ld [$a956], sp
    add $f9
    and b
    ld a, a
    ret nc

    ccf
    add sp, $1f
    db $f4
    rrca
    ld a, [$fd07]
    inc bc
    cp $01
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [rIF], a

jr_084_4c55:
    ldh a, [$c7]
    ld hl, sp+$03
    db $fc
    ld bc, $02fe
    rst $38
    daa
    rst $38
    inc h
    rst $18
    add h
    ld a, a
    add h
    ld a, a
    ld c, l
    or [hl]
    inc c
    di
    ld [$89ff], sp
    ld a, [hl]

jr_084_4c6e:
    adc c
    db $76
    ld [de], a
    db $fd
    sub c
    ld a, [hl]
    jr nc, jr_084_4c55

    inc sp
    db $ec
    dec sp
    db $e4
    cp e
    ld [hl], h
    ld sp, hl
    ld l, a
    ld [hl], e
    ld c, l
    cp e
    rla
    cp e
    rla
    ei
    add a
    xor $43
    or $23
    ld a, [c]
    and a
    ld sp, hl
    ld a, [c]
    db $fc
    jp hl


jr_084_4c90:
    ld a, l
    cp $7c
    db $fd
    dec e
    ld a, [hl]

jr_084_4c96:
    ld a, e
    sbc l

jr_084_4c98:
    ld c, l
    db $db

jr_084_4c9a:
    ld b, e
    rst $28

jr_084_4c9c:
    rst $00
    db $eb
    sbc e
    rst $28
    sub e
    xor $9a
    and $85
    or $93
    db $fc
    and a
    db $fc
    ld h, b
    rst $38
    inc b
    ei
    nop
    rst $38
    inc c
    di
    ld de, $12ef
    db $fd
    ld [$0eff], sp
    ei
    ld a, [hl-]
    rst $18
    add hl, de
    cp $18
    cp $e4
    jr @-$3a

    jr c, jr_084_4c90

    jr nc, jr_084_4c96

    jr nc, jr_084_4c98

    jr nc, jr_084_4c9a

jr_084_4ccb:
    jr nc, jr_084_4c9c

    jr nc, jr_084_4c6e

    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    cp a
    ld b, b
    cp [hl]
    ld b, c
    ld l, $c1
    ld a, $c1
    db $76
    adc c
    inc [hl]
    adc e
    nop
    add e
    ld [bc], a
    add b

jr_084_4ce4:
    ld [bc], a
    add b
    nop
    ld [bc], a
    nop
    ld b, $04
    nop
    inc b
    nop
    nop
    inc b
    ldh a, [$0e]
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$18e7], sp
    rst $08
    jr nc, jr_084_4ccb

    ld sp, $10ef
    db $ec
    inc de
    call c, Call_084_5d23
    ld [hl+], a
    ld e, a
    jr nz, jr_084_4ce4

    inc h
    db $db
    inc h
    cp e
    ld b, h
    cp l
    ld b, b
    nop
    ld c, c
    nop
    ld b, c
    ld bc, $0180
    adc c
    nop
    adc e
    nop
    add a
    nop
    add e
    nop
    ld [de], a
    nop
    daa
    nop
    ld h, $00
    inc h
    inc b
    ld [bc], a
    nop
    rrca
    nop
    ld c, a
    ld [$0845], sp
    ld e, a
    nop
    rst $18
    nop
    ld e, a
    db $10
    db $dd
    db $10
    cp a
    db $10
    xor a
    nop
    cp a
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    ld b, b
    cp a
    ld b, c
    cp $41
    cp a
    ld bc, $83ff
    db $fd
    jp nz, Jump_000_233f

    cp $92
    ld a, a
    jp z, $f43f

    rrca
    ld a, [$fd07]
    inc bc
    cp $01
    rst $38
    nop
    ccf
    ret nz

    rra
    ldh [$c7], a
    ld hl, sp-$7d
    db $fc
    or d

jr_084_4d67:
    db $fd
    db $10
    rst $38
    jr nz, @+$01

    inc h
    rst $38
    ld b, b
    rst $38
    ret nz

    ld a, a
    ret nz

    ld a, a
    ld c, b
    or a
    add b
    ld a, a
    add b
    db $fd
    add c
    rst $38
    sub e
    db $fd
    sub c
    rst $28

Call_084_4d80:
    and e
    ld e, [hl]
    inc hl
    sbc $07
    ld a, [$fc07]
    ld b, a
    cp h
    ld b, a
    rst $38
    ld c, a
    scf
    adc a
    ld a, a
    pop hl

jr_084_4d91:
    cp a
    db $e3

jr_084_4d93:
    ld a, a
    inc bc
    rst $38
    add e
    rst $38
    ld e, e
    xor a
    ld b, e
    sbc a
    add $7f
    rst $00
    ld a, [hl]
    add $7e
    ld b, a
    db $fc
    ld b, a
    ld sp, hl
    adc h
    db $e3
    adc h
    rst $10
    db $ec
    xor a
    ld e, l
    xor [hl]
    jr @+$01

    jr c, jr_084_4d91

    jr c, jr_084_4d93

    jr @+$01

    jr nc, jr_084_4d67

    ld [hl], b
    sbc a
    sub b
    ld a, [hl]
    ld [hl], c
    cp $62
    db $fd
    daa
    ld sp, hl
    ldh a, [rOCPD]
    ld c, h
    rst $30
    ld d, b
    rst $28
    ld d, b
    rst $28
    ld [hl], c
    adc $c0
    rst $18
    and b
    rst $18
    rra
    and b
    ld a, $81
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, h
    add e
    db $fc
    inc bc
    ld a, h
    add e
    push af
    ld [bc], a
    ld sp, hl
    ld b, $f9

jr_084_4de3:
    ld b, $fb
    inc b
    ei
    inc b
    rlc h
    jp $d30c


    inc c
    or e
    inc c
    rst $10
    ld [$18e7], sp
    rst $20
    jr jr_084_4de3

    inc de
    call $cd32
    ld [hl-], a
    rst $08
    jr nc, jr_084_4e5e

    and b
    rra
    ldh [$9f], a
    ld h, b
    sbc a
    ld h, b
    ccf
    ret nz

    ld e, $e0
    rra
    ldh [$1f], a
    ldh [$3e], a
    pop bc
    pop bc
    add c
    ld bc, $01c1
    add e
    ld bc, $038b
    adc e
    ld [bc], a
    cpl
    ld [bc], a
    ld [hl], a
    ld b, $d5
    inc b
    rst $18
    inc b
    cp $0c
    xor $08

jr_084_4e27:
    db $ec
    ld [$18fc], sp
    ld [$f810], a
    db $10
    ld hl, sp+$10
    ld hl, sp+$30
    pop de
    jr nz, jr_084_4e27

    jr nz, @-$0d

    ld h, b
    and e
    ld b, b
    db $e3
    ld b, d
    pop hl
    jp nz, $c0e4

    rst $20
    add b
    push de
    add b
    db $fd
    add b
    ld a, a
    ld [$01e7], sp
    xor a
    ld bc, $02ff
    ld a, l
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    inc b
    rst $38
    adc h
    rst $38
    adc h
    rst $38
    ld l, b
    rst $38

jr_084_4e5e:
    cp b
    ld a, a
    call c, $ec3f
    rra
    sub $2f
    ld e, e
    and a
    and h
    ld e, e
    ld [bc], a
    db $fd
    ld b, c
    cp [hl]
    ld b, b
    rst $38
    ld h, b
    ret nz

    ldh a, [$60]
    ld hl, sp-$40
    ld hl, sp-$70
    or h
    ret z

    jp $293c


    rst $10
    and d
    ld e, l
    ld a, [c]
    adc a
    ld a, [c]
    ld c, a
    add $79
    call nc, $ec2f
    rla
    db $fc
    rrca
    db $fc
    db $db
    ld hl, sp-$69
    ld [$e7b0], a
    cp b
    add d
    db $fd
    inc bc
    db $fd
    jp $c77d


    ld a, e
    jp nz, $8a7b

    ld [hl], e
    ld c, $f3
    ld b, $f3
    dec b
    or $03
    push af
    ld e, $e3
    ld [bc], a
    rst $20
    ld b, $e7
    ld l, $c7
    inc c
    rst $10
    ld d, a
    cp l
    rst $10
    dec a
    ld e, a
    ld h, l
    inc de
    rst $28
    rst $20
    xor e
    ei
    xor l
    db $10
    db $fd
    scf
    cp c
    db $e3
    ld a, l
    db $eb
    ld a, e
    ld h, a
    ei
    db $eb
    or $fe
    ld [$daf5], a
    ret c

    db $fd
    reti


    db $fc
    sub l
    ei
    cp a
    or $cd
    or $7f
    xor $cb
    cp $fe
    rst $18
    or $bf
    ld d, c
    xor [hl]
    add hl, hl
    sub $09

jr_084_4ee5:
    or $11
    xor $12
    db $ec
    inc de
    db $ec
    inc sp
    call z, $cc33
    rst $30
    ld [$18e7], sp
    rst $20
    jr jr_084_4ee5

    ld de, $31ce
    adc e
    inc [hl]
    rst $10
    jr z, jr_084_4f5c

    ld [hl+], a
    jr nz, @+$44

    ld b, b
    jr nz, @+$42

    ld b, h
    ld b, b
    ld b, b
    ld b, b
    ret nz

    nop
    pop bc
    add b
    ret nz

    add b
    add d
    add b
    add e
    nop
    add a
    nop
    add l
    nop
    adc l
    ld bc, $0182
    ld bc, $1303
    inc bc
    rra
    ld [bc], a
    rra
    ld [bc], a
    daa
    inc b
    ld l, e
    inc b
    ld a, [hl]
    inc b
    ld a, [hl]
    ld [$0875], sp
    db $fd
    ld [$00fb], sp
    cp e
    db $10
    sbc a
    db $10
    rst $38
    db $10
    ld l, a
    jr nz, @-$1f

    jr nz, @+$01

    jr nz, @-$1f

    ld b, b
    cp a
    ld b, b
    rst $38

jr_084_4f42:
    nop
    call z, $ed80
    add b
    sbc c
    nop
    cp a
    nop
    rst $20
    nop
    rst $38
    ld bc, $01fe
    db $ed
    ld bc, $03c7
    db $ed
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff

jr_084_4f5c:
    inc b

jr_084_4f5d:
    cp $04
    ei
    ld [$08ff], sp
    rst $38
    jr jr_084_4f5d

    db $10

jr_084_4f67:
    rst $38
    ret nc

    xor a
    ldh [$7f], a
    jr nc, jr_084_4f5d

    jr jr_084_4f67

    inc c
    rrca
    ld b, $07
    inc bc
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    jr nz, jr_084_4f42

    db $10
    ldh [rNR23], a
    ldh [$3c], a
    call nz, $ca37
    ld c, a
    di
    ld c, a
    or $c5
    cp [hl]
    db $dd
    xor $cf
    cp $5d
    xor $59
    xor $cc
    ld a, a
    and a
    ld a, a
    ld c, l
    cp a
    ld e, l
    sbc a
    ld hl, sp+$5f
    ld e, e
    ld e, $ea
    ld e, a
    ld c, a
    rst $28
    sub $6f
    add $7f
    rst $10

jr_084_4fad:
    xor $d6
    rst $28
    call nc, $dcef
    rst $28
    ld h, a
    call z, $e78c
    add b
    rst $30
    cp c
    sub $91
    sbc $94
    ei
    or l
    cp d
    or b
    cp a
    ld [de], a
    db $fd
    jp nc, Jump_084_623d

    cp h
    or b
    rst $38
    inc [hl]
    ei
    or b
    ld a, a
    xor a
    ld d, b
    cpl
    ld d, b
    ccf
    ld b, b
    sbc a
    jr nz, jr_084_5038

    and b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $0001
    ld bc, $0101
    inc bc
    ld bc, $0203
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a

jr_084_4ff1:
    rlca
    ld b, $06
    inc b
    ld c, $04

jr_084_4ff7:
    ld c, $0c
    daa
    inc c
    dec l
    ld [$083c], sp
    rra
    jr jr_084_4fad

    jr jr_084_4ff7

    db $10
    ei
    jr nc, jr_084_505f

    jr nc, jr_084_4ff1

    jr nz, @-$07

    ld h, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ret nz

    ccf
    ret nz

    cp a
    add b
    rst $38
    add h
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    push af
    nop
    rst $38
    ld bc, $01fe
    rst $38
    ld bc, $03ff

jr_084_5029:
    db $fd
    inc bc
    rst $38
    ld [bc], a

jr_084_502d:
    rst $38
    ld b, $fb
    ld b, $dd
    inc b
    rst $38
    inc c
    rst $30
    inc c

jr_084_5037:
    rst $38

jr_084_5038:
    ld [$1aff], sp

jr_084_503b:
    ld l, l
    ld [de], a
    rst $38
    jr nc, jr_084_5037

    jr nc, jr_084_5029

    jr nz, jr_084_503b

    jr nz, jr_084_502d

    ld b, b
    and $40
    rst $00
    ret nz

    add h
    add b
    jp nz, $9080

    add b
    nop
    nop
    adc h
    nop
    add hl, de
    nop
    inc de
    nop
    inc de
    nop
    inc hl
    ld bc, $0150

jr_084_505f:
    db $e3
    ld bc, $01db
    rlc d
    rst $00
    ld [bc], a
    sbc a
    ld b, $ed
    inc b
    rst $28
    inc c
    rst $38
    ld [$18ff], sp
    rst $28
    ld d, b
    cp a
    sub b
    rst $38
    or b
    rst $28
    ldh [rIE], a
    ld [hl], b
    ld l, a
    jr c, jr_084_5095

    inc c
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    ld a, a
    add b
    rst $38
    ret nz

    rst $38
    ldh [rP1], a
    ld bc, $0302
    inc b

jr_084_5095:
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
    jr jr_084_50c3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_084_50d3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_084_50e3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_084_50f3

    ld [hl-], a

jr_084_50c3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_084_5103

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_084_50d3:
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

jr_084_50e3:
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

jr_084_50f3:
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

jr_084_5103:
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
    jr jr_084_51c3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_084_51d3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_084_51e3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_084_51f3

    ld [hl-], a

jr_084_51c3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_084_5203

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    rlca
    rlca
    rlca

jr_084_51d3:
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca

jr_084_51e3:
    rlca
    rlca
    rlca
    rlca
    rlca
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld bc, $0707

jr_084_51f3:
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    dec b
    ld [bc], a
    nop
    dec b
    dec b
    dec b
    ld bc, $0707

jr_084_5203:
    rlca
    rlca
    rlca
    rlca
    rlca
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    nop
    rlca
    dec b
    rlca
    rlca
    dec b
    rlca
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0707
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld bc, $0101
    inc b
    dec b
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0101
    inc b
    dec b
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    dec b
    rlca
    rlca
    dec b
    dec b
    dec b
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    dec b
    dec b
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    dec b
    rlca
    ld bc, $0707
    rlca
    rlca
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a

Jump_084_527d:
    nop
    nop
    nop
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    nop
    nop
    nop
    nop
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    nop
    nop
    nop
    rlca
    rlca
    rlca
    dec b
    dec b
    rlca
    rlca
    dec b
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    nop
    nop
    nop
    ld b, $01
    rlca
    ld bc, $0507
    dec b
    dec b
    dec b
    ld [bc], a
    dec b
    rlca
    rlca
    ld [bc], a
    nop
    nop
    ld b, $01
    ld b, $06
    rlca
    rlca
    rlca
    rlca
    dec b
    ld [bc], a
    dec b
    rlca
    dec b
    rlca
    ld [bc], a
    nop
    ld c, $0e
    ld c, $0e
    ld c, $0e
    rrca
    rrca
    rrca
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    ld a, [bc]
    ld c, $0e
    ld c, $0e
    ld c, $0e
    rrca
    dec c
    dec c
    dec c
    ld [$0d0a], sp
    dec c
    dec c
    dec c
    ld c, $0e
    rrca
    add hl, bc
    rrca
    rrca
    rrca
    dec c
    dec c
    dec c
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    ld c, $09
    rrca
    rrca
    dec c
    dec c
    dec c
    rrca
    rrca
    dec c
    ld a, [bc]
    ld [$0d0d], sp
    dec c
    dec c
    add b
    ld c, l
    add b
    ld c, l
    add b
    call Call_084_4d80
    add b
    ld c, l
    ret nz

    add hl, bc
    ret nz

    ld c, c
    ret nz

    ld c, l
    ld b, b
    set 0, b
    ld c, e
    ld b, b
    rst $08
    ld b, b
    db $ed
    ret nz

    ld l, a
    ret nz

    ld a, a
    ld b, b
    rst $28
    ld b, b
    rst $28
    ret nz

    rst $20
    ldh [$57], a
    ldh [$7f], a
    ld h, b
    rst $38
    ldh [$6f], a
    ldh [$7f], a
    ldh [$7f], a
    ld h, b

jr_084_533f:
    rst $38
    ld h, b
    rst $38
    ld h, b

jr_084_5343:
    rst $38
    ld h, b
    cp a
    ld h, b
    cp a
    and b
    ld a, a
    jr nc, @-$0f

    jr nc, @-$0f

    jr nc, jr_084_533f

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @-$1f

    jr nc, @+$01

    jr nc, jr_084_533f

    db $10
    rst $38
    jr nc, jr_084_5343

    db $10
    rst $38
    jr @-$07

    jr @-$0b

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    add hl, de
    xor $1c
    db $eb
    jr @-$0f

    inc e
    db $eb
    inc c
    ei
    inc c
    ei
    inc c
    rst $38
    inc c
    ei
    dec c
    ld a, [$ff0c]
    inc c
    rst $38
    dec c
    ld a, [$ff0c]
    inc c
    rst $38
    inc c
    cp a
    inc c
    rst $38
    inc b
    rst $38
    rlca
    db $fc
    adc a
    cp $87
    ld a, h
    sub a
    xor $9f
    ld h, [hl]
    adc a
    db $76
    add a
    cp $87
    cp $8f
    or $87
    cp $a7
    sbc $96
    rst $28
    and a
    sbc $87
    ld a, [$fe87]
    add a
    rst $38
    adc a
    or $87
    cp $87
    ld a, a
    and a
    ld e, e
    rlca
    ei
    sbc e
    ld h, a
    inc de
    rst $28
    inc bc
    rst $38
    inc bc
    rst $38
    inc de
    rst $28
    inc de
    rst $38
    inc de
    rst $38
    inc de
    rst $28
    dec de
    rst $20
    rrca
    pop af
    rra
    pop af
    dec de
    db $ed
    add hl, de
    rst $28
    adc e
    ld [hl], a
    rra
    db $eb
    rrca
    rst $38
    rra
    rst $28
    sbc a
    ld a, a
    ccf
    cp $7f
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [$e0]
    rst $38
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

Call_084_5408:
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    pop bc
    rst $38
    nop
    add h
    nop
    adc h
    inc b
    adc b
    add b
    inc l
    add h
    ld [$9480], sp
    add b
    sbc $80
    rst $18
    add b
    rst $10
    add b

Call_084_5423:
    rst $10
    add b
    rst $38
    add b
    cp $80
    ld a, a
    add b
    rst $38
    ret nz

    or a
    jp nz, $c237

    dec a
    jp nz, $423d

jr_084_5435:
    cp l
    ld b, d
    db $fd
    ld b, d

jr_084_5439:
    cp l
    ld b, b
    sbc a
    ret nz

jr_084_543d:
    ld a, a
    ret nz

jr_084_543f:
    xor a
    ret nz

jr_084_5441:
    set 0, b

jr_084_5443:
    db $eb
    ret nz

    db $eb
    ret nz

jr_084_5447:
    ld l, e
    ld b, b
    db $eb
    ld b, b
    db $eb
    ld b, b
    db $eb
    ld b, b
    ei
    ld b, b
    cp e
    ld b, b
    cp a
    ld h, b
    sbc a
    jr nz, jr_084_5435

jr_084_5458:
    jr nz, jr_084_5439

    jr nz, @+$01

    jr nz, jr_084_543d

    jr nz, jr_084_543f

    jr nz, @+$01

    jr nz, jr_084_5441

    jr nz, jr_084_5443

    nop
    rst $38
    jr nz, jr_084_5447

    nop
    db $fd
    nop
    db $fc
    nop
    rst $30
    nop
    cp $00
    cp $10
    db $ec
    db $10
    db $ec
    jr nz, jr_084_5458

    db $10

jr_084_547b:
    xor $10
    cp $90
    ld l, [hl]
    db $10
    rst $38
    db $10
    xor $10
    ld a, [$7b90]
    sub b
    ld a, [hl]
    sub b
    ld a, a
    sub b

jr_084_548d:
    ld a, a
    db $10
    rst $38
    sub b
    ld l, a
    db $10
    rst $38
    jr jr_084_548d

    ld a, [de]
    push af
    ld e, b
    and a
    ld e, d
    db $ed
    ld [$6a5d], a
    sbc l
    xor b
    ld e, a
    adc b
    ld a, a
    ret c

    cpl
    ld a, b
    add a
    ld hl, sp-$71
    jr c, jr_084_547b

    jr @-$0f

    inc e
    db $eb
    adc h
    ld a, e
    ld c, h
    cp e
    ld e, h
    xor e
    ld l, h
    sbc e
    ld l, h
    sub a
    inc a
    rst $00
    ld [hl], h
    sbc a
    dec [hl]
    adc $9d
    ld h, [hl]
    or h
    ld c, a
    sbc l
    ld h, a
    and a
    ld e, h
    xor a
    rst $10
    rst $28
    sub a
    rst $38
    rrca
    cp a
    rst $18

jr_084_54d0:
    ld e, [hl]
    rst $38
    db $fc
    rst $38
    db $fc

jr_084_54d5:
    cp $f8
    ld hl, sp-$10
    ld hl, sp-$20
    cp $e0
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    nop
    cp $00
    cp $00
    rst $38
    nop
    db $fc
    nop
    cp $00

jr_084_54ed:
    db $fd
    nop
    db $fd
    nop
    rst $38
    nop
    rst $30
    ld bc, $01ff
    rst $38
    ld bc, $05ff
    rst $38
    dec b
    rst $38
    ld bc, $ffff
    add hl, bc
    rst $38
    add hl, de
    db $fd
    dec de
    rst $38
    add hl, sp
    db $fd
    ld a, a
    rst $38
    ld a, l
    rst $38
    ld a, l
    rst $38
    ld a, l

jr_084_5510:
    sub b
    ld l, a

jr_084_5512:
    sub b
    ld l, a
    add d
    ld a, l
    sub a
    ld l, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sub [hl]
    ld l, c
    add [hl]
    ld a, c
    nop
    ld a, l
    nop
    ld a, h
    nop
    ld a, h
    jr nz, @+$0f

    jr nz, jr_084_5566

    jr nz, jr_084_5547

    jr nz, @-$40

    jr nz, jr_084_54ed

    jr nz, jr_084_54d0

    jr nz, jr_084_5510

    jr nz, jr_084_5512

    jr nz, jr_084_54d5

    nop
    cp [hl]
    nop
    cp [hl]
    nop
    ld a, $02
    cp l
    nop
    cp [hl]
    nop
    ccf
    ld [de], a
    dec l
    db $10

jr_084_5547:
    cpl
    ld [de], a
    dec c
    nop
    rra
    db $10
    rrca
    ld [de], a
    dec c
    db $10
    rrca
    db $10
    rrca
    ld [de], a
    ld l, $12
    dec l
    db $10
    cpl
    db $10
    cpl
    db $10
    cpl
    db $10
    cpl
    nop
    ccf
    nop
    ccf
    db $10
    xor a

jr_084_5566:
    db $10
    xor a
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    cp a
    ld [$08b7], sp
    or a
    ld [$80bf], sp
    ccf
    adc b
    rla
    nop
    xor a
    adc b
    ld b, a
    add b
    ld c, e
    add c
    adc $80
    ld c, a
    nop
    rst $08
    nop
    rst $38
    nop
    rst $38
    ld b, b
    sbc a
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop

jr_084_5595:
    push de
    nop
    rst $00
    nop
    rst $10
    inc b
    db $d3
    inc b
    di
    ld b, h
    sbc e
    nop
    rst $18
    nop
    rst $18
    nop
    rst $38
    ld b, h
    sbc e
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
    cp a
    jr nz, jr_084_5595

    ld bc, $23ff
    rst $18
    inc hl
    rst $18
    cpl
    sub $3f

jr_084_55bf:
    db $ec
    jr c, jr_084_55bf

jr_084_55c2:
    jr c, jr_084_55c2

    ld [hl], b
    cp $e0
    cp $c0
    xor $80
    push de
    add b
    cp $00

jr_084_55cf:
    xor $ff
    rst $20
    rst $38
    daa
    rst $38
    ld c, $ff
    add a
    rst $38
    ld b, l
    rst $38
    ld b, e
    rst $38
    rlca
    rst $38
    ld l, a
    ld l, e
    inc b
    db $d3
    inc c
    sbc l
    ld [bc], a
    cp c
    ld b, $71
    ld c, $d1
    ld l, $b1
    ld c, [hl]
    or l
    ld c, d
    or c
    ld e, a
    cp c
    ld b, [hl]
    add hl, sp
    rst $10
    add hl, de
    and $19
    and $09

jr_084_55fb:
    or [hl]
    add hl, hl
    sbc $a8
    ld d, a
    jr z, @+$01

    jr z, jr_084_55fb

    ld a, [hl+]
    push af
    jr c, jr_084_55cf

    sbc c
    ld h, [hl]
    sbc b
    ld l, a
    sbc b
    rst $28
    ld [$41ff], sp
    cp [hl]
    inc de
    db $ec
    ld bc, $0cfe
    di
    dec c
    ld a, [c]
    ld de, $91ee
    ld l, [hl]
    rlca
    ld hl, sp+$00
    cp $00
    or $00
    ccf
    nop
    cp a
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    ld [$0016], sp
    xor $08
    jp nz, $8100

    nop
    ld l, c
    nop
    ld c, h
    nop
    db $ec
    nop
    ld c, [hl]
    nop
    ld l, [hl]
    nop
    halt
    dec [hl]
    nop
    add hl, sp
    nop
    push de
    nop
    cp l
    nop
    db $dd
    nop
    sbc h
    db $10
    rst $08
    db $10
    ld h, a
    db $10
    db $ed
    db $10
    ld c, a
    nop

jr_084_5655:
    rst $38
    ld b, b

jr_084_5657:
    sub a
    nop
    rst $18
    ld d, b
    and a
    ld d, b

jr_084_565d:
    and l
    ld b, b
    cp a
    ld b, b
    rst $38
    nop
    ei
    ld b, b

jr_084_5665:
    cp a
    nop

jr_084_5667:
    db $fd
    ld b, c

jr_084_5669:
    cp h

jr_084_566a:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_084_5655

    jr nz, jr_084_5657

    nop
    rst $38
    nop
    rst $38
    jr nz, jr_084_565d

    nop
    cp a
    jr nz, jr_084_565d

    nop
    ei
    jr nz, jr_084_5665

    jr nz, jr_084_5667

    nop
    rst $38
    jr nz, jr_084_566a

    jr z, jr_084_5665

    jr z, jr_084_5667

    jr z, jr_084_5669

    xor b
    ld d, a
    jr nz, @-$1f

    nop
    rst $38
    adc b
    ld [hl], a
    sub b
    ld l, a
    sub b
    ld l, a
    adc b
    ld [hl], a
    sub h
    ld l, e
    sub h

jr_084_56a3:
    ld l, e
    dec d
    rst $38
    sub l
    ld l, e
    sub a
    ld a, e
    rst $10
    ld l, $5f
    xor h
    ld e, a
    cp b

jr_084_56b0:
    jr nc, jr_084_56b0

    ld h, b
    or $e0
    db $fd
    ret nz

    call $9980
    nop
    db $eb
    nop
    xor a
    nop
    rst $38
    nop
    sbc a
    nop
    xor a
    nop
    or a
    nop
    rst $28
    nop
    cp a
    ld [$089f], sp
    cp a
    ld [$4eff], sp
    add hl, sp
    rst $08
    jr nc, jr_084_56a3

    ld [hl], c
    ld c, b
    rst $30
    ld c, [hl]
    or c
    ld c, [hl]
    pop af
    ld b, [hl]
    cp c
    ld c, h
    or e
    ld c, $f1
    ld h, $d9
    adc d
    ld [hl], l
    and [hl]
    ld e, c
    ld h, a
    sbc b
    add $7d
    ld h, [hl]
    sbc l
    ld h, [hl]
    sbc l
    ld h, a
    cp h
    ld l, a
    sub l
    ld l, a
    or l
    rst $28
    dec d
    rst $20
    sbc l
    rst $20
    ld a, l
    rst $20
    ld a, l
    rst $20
    ld a, l
    rst $20

Jump_084_5701:
    ld a, l
    rst $20
    ld a, c
    db $e3
    ld a, $e6
    cp [hl]
    ld [c], a
    ld a, [hl]
    and $fe
    and $fc
    db $f4
    db $ec
    cp $ff
    db $fc
    rst $38
    db $fd
    rst $38
    cp $ff
    cp $fe
    cp $ff
    rst $38
    cp $ff
    rst $38
    ccf
    ret nz

    ccf
    ret nz

    rra
    ld h, b
    rra
    ld h, b
    rra
    ld h, b
    rra
    ld h, h
    dec bc
    db $f4
    ld c, $f1
    rlca
    ld hl, sp+$17
    add sp, $03
    db $fc
    rlca
    db $fc
    rlca
    ld hl, sp+$57
    xor h
    ld d, a
    xor h
    ld d, a
    xor h
    ld d, $e9
    ld d, $ed
    dec d
    xor $0c
    di
    dec e
    ld h, [hl]
    inc e
    rst $20
    inc d
    rst $28
    dec b
    ld a, d
    dec bc
    db $f4
    ld a, [bc]
    ld [hl], a
    ld [$18ff], sp
    rst $20
    inc c
    ld a, [c]
    inc b
    ei
    ld [$0077], sp
    rst $38
    inc e
    db $e3
    inc c
    di
    inc b
    ei
    inc b
    rst $38
    inc b
    ei
    inc b
    rst $38
    ld b, $fd
    ld c, $f3
    ld c, $f7
    rlca
    ld a, h
    ld b, $7b
    rlca
    cp d
    ld b, $f9
    rlca
    db $fd
    rla
    ld [$cf36], a
    ld l, $d3
    ld [bc], a
    rst $38
    ld [bc], a
    db $fd
    ld [de], a
    rst $28
    scf
    reti


    scf
    adc $3f
    jp z, $e01f

    ld d, a
    cp d
    ld [hl], a
    sbc c
    rla
    ld sp, hl
    rla
    rst $38
    ccf
    rst $10
    ccf
    rst $08
    ccf
    rst $18
    cp a
    ld a, a
    ld [hl], a
    rst $38
    xor $ff
    call $85df
    cp a
    inc bc
    rra
    ld bc, $059f
    ccf
    ld a, [bc]
    rra
    ld [bc], a
    ccf
    ld [de], a
    cp a
    ld [de], a
    ld a, a
    ld a, [hl+]
    ld a, a
    add hl, de

jr_084_57b9:
    rst $38
    inc [hl]
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    xor a
    ld d, l
    xor $1b
    cp a
    ld l, d
    ccf
    jp nc, $cb3f

    ld a, a
    adc e
    ld a, a
    rst $08
    ld a, a
    and a
    ld l, a
    sbc e
    cpl
    ei
    xor a
    ld e, a
    ld l, a
    cp a
    rst $28
    ccf
    ld l, a
    or a
    ld l, a
    cp a
    cp a
    ld l, e
    rst $38
    dec hl
    cp a
    ei
    cp a
    db $f4
    rst $38
    ld [hl], $7f
    or h
    rst $38
    ld a, [hl+]
    rst $28
    xor b
    rst $38
    ld l, b
    rst $28
    ld b, b
    ld e, a
    ret nc

    rst $18
    ld d, b
    rst $38
    db $10
    cp a
    sub b
    cp a
    cp h
    cp a
    cp d
    cp a
    jr c, jr_084_57b9

    ld a, a
    ldh a, [$7f]
    ldh a, [$7f]
    ld [hl], b
    rst $38
    ld h, c
    cp $43
    db $fc
    jp $83fc


    db $fc
    ld bc, $8cff
    rst $18
    ld b, $8f
    nop
    cpl
    nop
    ld l, a
    jr nz, @+$09

    inc b
    dec bc
    add l
    ld a, [bc]
    add c
    inc e
    jr z, @-$77

    add h
    ld [$80a0], sp
    add h
    add b
    adc b
    add h
    ldh [$80], a
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e2], a
    ldh a, [$e2]
    ldh [$f2], a
    cp $f0

jr_084_5840:
    pop af
    or $f1
    rst $38
    ld hl, sp-$01

jr_084_5846:
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    rla
    add sp, $07
    ld hl, sp+$06
    ld sp, hl
    rst $10
    jr z, jr_084_5840

    nop
    ld h, [hl]
    add c
    xor [hl]
    ld d, c
    ld b, $f9
    nop
    ld sp, hl
    ld [$08f1], sp
    pop af
    nop
    ld hl, sp+$00
    ld hl, sp+$40
    cp c
    ld b, b
    cp b
    nop
    ld hl, sp+$10
    add sp, -$50
    ld c, b
    cp b
    ld b, b
    jr nc, jr_084_5840

    cp b
    ld b, b
    cp b
    ld b, b
    jr nc, jr_084_5846

    jr c, jr_084_5840

    rla
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    nop
    db $fd
    inc b
    db $fd
    inc b
    rst $38
    inc b
    rst $30
    inc bc
    db $e4
    nop
    rst $08
    add b
    rst $08
    nop
    rst $18
    inc b
    rst $38
    inc b
    rst $38
    nop
    cp a
    nop
    rst $38
    ld b, $ff
    ld b, $fb
    ld [bc], a
    db $fd
    add [hl]
    ld hl, sp+$04
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp-$01
    ld hl, sp-$03
    ldh a, [$f0]
    ldh a, [$f3]
    ldh a, [$f9]
    ldh [$fe], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$df], a
    and b
    adc $e0
    jp $d9c0


    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret


    pop bc
    rst $38
    add c
    rst $38
    ld b, c
    rst $38
    pop hl
    rst $38
    di
    rst $38
    pop af
    rst $38
    jp $01ff


    rst $38
    inc bc

Jump_084_58e1:
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
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
    rlca
    rst $38
    ld b, $ff
    ld b, $ff
    inc b
    rst $38
    ld h, $ff
    inc d
    rst $38
    inc [hl]
    rst $38
    ld h, h
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld b, $fd
    ld b, $fd
    nop
    rst $38
    dec c
    di
    add h
    ld a, e
    rst $38
    nop
    cp $01
    ld hl, sp+$07
    cp $01
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    add d
    ld a, a
    add $3b
    add b
    ld a, a
    and b
    ld c, a
    inc l
    ld b, e
    inc bc
    ld b, h
    ld b, d
    nop
    nop

jr_084_592f:
    ld b, d
    ld b, b
    ld [bc], a
    ld b, d
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    ld b, $00
    call nz, Call_084_6320
    sub h
    sub l
    nop
    rst $38
    nop
    ei
    inc b
    jr jr_084_592f

    nop
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld h, [hl]
    ld bc, $24c1
    rst $38
    nop
    daa
    nop
    inc sp
    nop
    ld b, a
    jr nz, jr_084_59bc

    jr nz, @-$22

    jr nz, @-$21

    jr nz, jr_084_59c0

    and b
    ld e, b
    and h
    dec e
    ldh [rNR34], a
    ldh [rNR31], a
    db $e4
    ld a, [de]
    db $e4
    ld e, e
    and h
    ld a, e
    add h
    ld c, c
    or [hl]
    ld e, c
    and [hl]
    ld a, e
    add h
    ld a, e
    add h
    ld a, d
    add l
    ld e, e
    and h
    add hl, de
    and $80
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    sbc b
    rst $38
    add b
    rst $38
    nop
    rst $38
    rst $38
    add b
    rst $38
    add b
    ld a, a
    sub b
    rst $28
    ret nc

    cpl
    ldh a, [rVBK]
    or b
    ld c, [hl]
    ld d, b
    xor a
    sub b
    ld l, a
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    ld a, a
    rst $38
    nop
    add e
    nop
    cp e
    nop
    xor h
    nop
    ld a, [$fb00]
    nop
    rst $38
    nop
    ld l, e
    nop
    db $eb
    nop
    ld a, l
    nop
    ld a, l
    nop

jr_084_59bc:
    db $fd
    ld [bc], a
    db $fc
    add a

jr_084_59c0:
    inc bc
    db $fc
    ld a, a
    add b
    ldh a, [rIF]
    nop
    rst $38
    nop
    rst $38
    add a
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    db $e3
    rst $38
    pop bc
    rst $38
    add e
    rst $38
    add c
    rst $38
    and l
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
    cp $ff
    db $f4
    rst $38
    call c, $f9ff
    rst $38
    pop bc
    rst $38
    ret nz

    rst $38
    add h
    rst $38
    add c
    rst $38
    sub h
    rst $38
    cp $ff
    ld a, a
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    dec bc
    rst $38
    ld c, h
    rst $38
    ld e, l
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld a, [de]
    rst $38
    rst $18
    ccf
    rlca
    rst $38
    ld e, $ff
    ld b, a
    cp a
    add $3f
    nop
    cp a
    nop
    cp a
    ld b, b
    ccf
    nop
    ccf
    nop
    cpl
    db $10
    ld c, a
    ld [bc], a
    ld c, l
    inc h
    ld e, e
    sbc e
    ld h, h
    cp a
    nop
    rst $38
    nop
    ld a, h
    add e
    inc b
    ei
    nop
    rst $38
    ld [$d9f7], sp
    ccf
    rst $38
    nop
    sbc b
    ld h, a
    inc c
    di
    db $db
    inc h
    cp l
    nop
    rst $30
    nop
    cp d
    dec b
    di
    inc c
    ld a, d
    add l
    ld c, $71
    ld l, b
    sub a
    add sp, $17
    ldh [$1f], a
    db $fc
    inc bc
    ld a, [$f005]
    rrca
    ld c, b
    or a
    db $10
    rst $28
    ld [$00f7], sp
    rst $38
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$02f7], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    inc e
    rst $38
    rla
    ld [c], a
    rst $38
    ld bc, $10ff
    rst $28
    db $10
    rst $38
    ld d, h
    xor e
    jr nc, @-$1f

    ld [bc], a
    db $fd
    ld [hl], e
    adc h
    ld h, b
    sbc a
    ld bc, $fffe
    rst $38
    rst $38
    rst $38
    xor $ff
    rst $38
    ld c, e
    cp a
    nop
    scf
    nop
    cpl
    nop
    ld h, a
    nop
    rst $18
    nop
    sub e
    nop
    sub a
    nop
    rst $18
    nop
    rst $38
    nop
    sbc $03
    add sp, $1f
    nop
    rst $38

Jump_084_5ac0:
    rst $30
    ld [$0ff0], sp
    ld b, b
    cp a
    inc b
    rst $38
    rlca
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add e
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
    rst $38
    rst $38
    rst $38
    di
    rst $38
    cp $ff
    di
    rst $38
    or $ff
    ret z

    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    cp a
    ret nz

    cp a
    ret nz

    sbc l
    ld [c], a
    adc a
    ldh a, [$9f]
    ldh [$9f], a
    ldh [rIE], a
    ret nz

    ld e, a
    ldh [$5f], a
    ldh [$5f], a
    ldh [rVBK], a
    ldh a, [rVBK]
    ldh a, [$cf]
    ld [hl], b
    rst $08
    ld [hl], b
    rst $10
    ld l, b
    adc [hl]
    ld [hl], c
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
    rst $18
    rst $38
    db $db
    rst $38
    ld a, a
    rst $38
    rst $18
    rst $38
    jp c, $feff

    rst $38
    cp $ff
    or e
    rst $38
    ld a, [de]
    rst $38
    rrca
    rst $38
    ld c, [hl]
    rst $38
    rrca
    rst $38
    dec de
    rst $38
    ld b, $ff
    nop
    rst $38
    ld b, b
    rst $38
    ld [$a9ff], sp
    rst $38
    inc b
    rst $38
    nop
    nop
    add hl, hl
    nop
    rst $08
    nop
    rst $38
    nop
    cp a
    nop
    rst $38
    ld de, $ffff
    cpl
    rst $10
    daa
    db $db
    rlca
    ld a, c
    ld bc, $01ff
    ccf
    ld bc, HeaderManufacturerCode
    sbc a
    ld bc, $01fe
    cp $01
    cp $01
    cp $01
    rst $38
    ld bc, $01fe
    rst $38
    ld bc, $113e
    xor $01
    cp $01
    cp $81
    rst $38
    dec b
    ei
    inc bc
    db $fc
    rla
    jp hl


    dec d
    rst $28
    rla
    jp hl


    sbc a
    ld [hl], d
    sub l
    ld l, [hl]
    or a
    ld c, h
    adc c
    db $76
    rst $38
    rrca
    ccf
    rlca
    rst $38
    inc bc
    ld bc, $01fe
    cp $05
    ld a, [$bf40]
    nop
    rst $38
    ld bc, $35fe
    res 6, a
    ld e, c
    cp a
    ld b, a
    cp a
    ld e, a
    inc h
    rst $38
    ld bc, $01ff
    rst $38
    rlca
    ld a, b
    ld b, c
    ld l, $06
    ld hl, $001f
    ld de, $fd02
    rrca
    ld sp, hl
    rrca
    ld sp, hl
    rrca
    db $fd
    rra
    rst $38
    rst $38
    ld h, e
    rst $38
    dec e
    rst $38
    ld h, h
    rst $38
    ld d, $e9
    nop
    rst $38
    db $10

jr_084_5bc5:
    rst $38
    ld a, b
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    cp h
    rst $38
    sub h
    rst $38
    sub [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_084_5bd8:
    nop
    rst $38

jr_084_5bda:
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    xor d

jr_084_5be3:
    push de
    ccf
    ret nz

    ld e, a
    ldh [$6f], a
    ret nc

    rst $18
    ld h, b

jr_084_5bec:
    ld e, a
    ldh [$bf], a
    ld h, b
    cp [hl]
    ld h, b
    xor $30
    rrca

jr_084_5bf5:
    ldh a, [$ce]

jr_084_5bf7:
    jr nc, jr_084_5bd8

    jr nc, jr_084_5bda

jr_084_5bfb:
    jr nc, jr_084_5be3

jr_084_5bfd:
    jr jr_084_5bc5

jr_084_5bff:
    jr c, jr_084_5c39

jr_084_5c01:
    rst $38
    ld e, b

jr_084_5c03:
    rst $38

jr_084_5c04:
    ret z

    rst $38
    ret c

jr_084_5c07:
    rst $38

jr_084_5c08:
    ld c, h
    rst $38
    inc b
    rst $38
    ld d, h
    rst $38

jr_084_5c0e:
    ld [hl], h
    rst $38
    rst $38

jr_084_5c11:
    rst $38
    rst $38

jr_084_5c13:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp a
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $20
    rst $38
    cp [hl]
    rst $38
    adc h

jr_084_5c2f:
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    cp a

jr_084_5c39:
    nop
    sbc a
    nop
    ccf
    nop
    cp [hl]
    ld bc, $02cc
    add sp, $0f
    ldh a, [$0a]
    ldh [rNR12], a
    ldh [rOBP0], a
    ret nz

    cp b
    add b
    ldh a, [$80]
    ld [hl], h
    add b
    db $f4
    nop
    db $fc
    nop
    add sp, $00
    ei
    nop
    di
    nop
    rst $38
    add b
    ld a, e
    add b
    ld c, e
    add b
    inc c
    jr nz, jr_084_5bec

    jr nz, @-$71

    jr nz, jr_084_5bf5

    jr nz, @-$75

    jr nz, jr_084_5bf5

    jr nz, jr_084_5bf7

    jr nz, jr_084_5bfb

    jr nz, jr_084_5bfd

    jr nz, jr_084_5bff

    jr nz, jr_084_5c01

    jr nz, jr_084_5c03

    jr nz, jr_084_5c04

    jr nz, jr_084_5c07

    jr nz, jr_084_5c08

    jr nz, jr_084_5c0e

    jr nz, jr_084_5c11

    jr nz, jr_084_5c13

    and b
    rrca
    and b
    adc a
    xor b
    adc a
    xor a
    rlca
    xor a
    nop
    xor a
    nop
    and e
    inc c
    and b
    rrca
    and b
    rrca
    and h
    adc e
    and b
    rrca
    and b
    adc a
    and b
    rrca
    jr nz, jr_084_5c2f

    xor a
    add b
    rst $28
    ld b, b
    rst $30
    db $10
    ei
    ld [$04fc], sp
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $7f98
    ld [bc], a
    rst $38
    ld [hl+], a
    rst $38
    ld d, d
    rst $38
    db $10
    rst $38
    ret nz

    ccf
    ldh [$1f], a
    nop
    rst $38
    inc bc
    rst $38
    ld bc, $21ff
    rst $38
    ld sp, $10ff
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, $f3
    inc e
    db $e3
    ld a, $c1
    ld a, a
    add b
    ld a, a

jr_084_5cdb:
    add b
    ld a, a
    add b
    ccf
    ret nz

    add c
    cp $25
    rst $38
    add c
    cp $00
    rst $38
    nop
    rst $38
    ld bc, $00ff

jr_084_5ced:
    rst $38
    ld [$5cf7], sp
    xor a
    db $fc
    dec de
    db $fc
    daa
    cp $97
    rst $38
    daa
    rst $38
    ld d, d
    rst $38
    ld [hl-], a
    ld a, a
    cp e
    ccf
    pop bc
    ld a, a
    or c
    ccf
    ret nz

    ld hl, $03de
    db $fc
    jr nc, jr_084_5cdb

    jr nz, jr_084_5ced

    ld hl, $abde
    rst $38
    cp [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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

Call_084_5d23:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld de, $23ff
    ld a, a
    ld [bc], a
    cp $05
    db $fc
    cpl
    ld hl, sp+$0f
    ld hl, sp+$17
    ldh [$3e], a
    ret nz

    ld a, a
    add b
    ld e, a
    nop
    rst $38
    nop
    rst $18
    ld b, b
    cp a
    ld h, a
    sbc b
    ld b, d
    cp l
    ld [c], a
    dec e
    xor h
    ld d, e
    inc a
    jp $9768


    db $ec
    inc de
    nop
    dec de
    nop
    rlc b
    push af
    nop
    pop de
    nop
    ld a, [$ff00]
    add b
    ld a, a
    nop
    rst $38
    db $10
    rst $28
    db $10
    ld a, a
    db $10
    ld c, a
    nop
    rst $18
    nop
    rst $10
    nop
    rst $10
    nop
    rst $10
    nop
    scf
    nop
    ccf
    ld bc, $01be
    cp [hl]
    nop
    ld a, a
    inc bc
    inc a
    ld [bc], a
    dec [hl]
    ld [bc], a
    dec [hl]
    ld bc, $037e
    ld [hl], h
    inc bc
    db $76
    inc bc
    cp $03
    cp $02
    db $fd
    add e
    db $fc
    ld a, [$ff7d]
    rlca
    sbc [hl]
    nop
    ld a, a
    add b
    rra
    ldh [rTAC], a
    ld hl, sp+$03
    db $fc
    ld [bc], a
    db $fd
    ld bc, $02fe
    db $fd
    ld c, b
    or a
    ld h, [hl]
    reti


    ld b, d
    cp l
    inc [hl]
    set 3, h
    inc hl
    dec hl
    ld d, [hl]
    sbc e
    and [hl]
    bit 2, h
    and [hl]
    ld h, e
    ld a, [$f579]
    xor h
    cp $5a
    rst $28
    ld bc, $01ff
    rst $38
    add hl, bc
    rst $38
    rra
    ld c, a
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    and b
    rst $38
    jr nc, @+$01

    db $10
    rst $38
    ld [$09ff], sp
    cp $01
    cp $01
    cp $1c
    db $e3
    inc sp
    call z, $ff00
    add c
    ld a, [hl]
    call nc, Call_000_172a
    db $fc
    rst $10
    inc a
    and e
    cp $d3
    ld a, [hl]
    db $dd
    ld [hl], a
    ld sp, hl
    ccf
    db $fc
    add a
    ld a, [hl]
    add a
    ld a, d
    push de
    ld a, l
    add $7d
    add a
    ld a, a
    add d
    ld [hl], e
    add b
    ld [hl], e
    add b
    ld [hl], b
    ret nz

    ld sp, hl
    ld b, b
    cp h
    ret nz

    cp h
    ld h, b
    rst $18
    ldh [$c7], a
    cp b
    sbc a
    ld h, b
    cp a
    ld b, b
    rst $38
    jr nz, @+$01

    jr nz, jr_084_5e1d

    nop
    rst $28
    nop
    rst $28
    nop
    db $fd
    nop
    di
    ld bc, $03ff
    rst $28

jr_084_5e1d:
    rlca
    cp $0d
    db $fc
    rra
    db $fc
    dec sp
    ld hl, sp+$7f
    ld hl, sp-$19
    ldh a, [$df]
    pop af
    adc $b0
    ld c, a
    jr nz, @+$01

    ld bc, $01fe
    cp $4d
    or e
    inc b
    ei
    inc c
    rst $30
    inc b
    ei
    inc c
    rst $30
    inc e
    rst $20
    dec a
    and $bc
    rst $08
    cp h
    ld d, a
    ld a, $cd
    inc e
    rst $30
    dec l
    sbc $0c
    rst $38
    dec c
    cp $0c
    rst $30
    ld e, l
    xor [hl]
    dec l
    sub $3d
    xor $27
    reti


    dec bc
    push af
    rrca
    ld sp, hl
    ld l, l
    sbc e
    dec sp
    push bc
    ld e, e
    or l
    cp l
    ld c, e
    dec a
    jp $c53f


    ld e, a
    xor l
    ld c, a
    or l
    ld c, l
    ld a, [$fd4f]
    ld c, l
    rst $38
    rst $08
    cp [hl]
    rst $08
    cp h
    rst $28
    dec e
    adc l
    rst $38
    adc a
    db $fd
    xor a
    ld a, l

Call_084_5e80:
    sbc l
    ld l, [hl]
    sbc a
    ld a, l
    ld c, a
    cp l
    rst $08
    cp l
    call Call_084_6f3e
    sbc l
    rst $28
    ld e, l
    rst $38
    db $ec
    ld a, c
    rst $38
    rra
    rst $38
    inc sp
    rst $38
    jr c, @+$01

    ld a, $ff
    add [hl]
    rst $38
    jr z, @+$01

    inc a
    rst $38
    db $dd
    cpl
    cp a
    call $2ddf
    sbc a
    add sp, -$13
    sub d
    cp a
    ret


    db $ed
    sbc d
    cp l
    rst $00
    db $fd
    add [hl]
    db $fd
    xor e
    db $fd
    xor a
    db $fd
    dec sp
    dec a
    scf
    rst $18
    reti


    rst $28
    db $ed
    rst $30
    di
    rst $38
    ld sp, hl
    db $fd
    cp $fe
    rst $38
    rst $28
    rst $38
    pop bc
    rst $38
    ld h, b
    rst $38
    db $10
    rst $38
    ld bc, $ccfe
    rst $38
    ld [bc], a
    rst $38
    ld [hl], $ff
    rst $38
    rst $38
    rst $38
    rst $28
    cp a
    ldh a, [rIE]
    add sp, -$61
    ldh a, [$ef]
    ld [hl], b
    and a
    ld e, b
    ld [hl], a
    inc a
    db $eb

jr_084_5ee7:
    ld e, $ed
    ld a, [hl-]
    ld [$ff1d], a
    inc h
    rst $38
    jr nz, jr_084_5ee7

    add b
    ld h, b
    add b
    adc b
    ret nz

    and b
    ld b, b
    and b
    ld h, b
    ldh a, [rP1]
    ldh [rNR10], a
    or d
    ld [$083c], sp
    ld hl, sp+$04
    cp $00
    cp $00
    cp $00
    rst $38
    nop
    cp $00
    rst $38
    nop
    ld a, $35
    ld [hl], b
    ccf
    db $e4
    ld a, e
    ret nz

    rst $38
    jp nz, $95fd

    ld [$7f91], a
    ret nc

    xor a
    ld a, [de]
    push hl
    inc d
    db $eb
    ld [de], a

jr_084_5f25:
    db $ed
    sub d
    db $fd
    sub d
    db $fd
    jp nz, $837d

    db $f4
    sub d
    ld l, l
    ld d, $f9
    inc d
    ei
    inc de
    db $fd
    dec b
    ei
    rla
    ld sp, hl
    rla
    jp hl


    sub a
    ld l, a
    rla
    jp hl


    ld b, a
    cp l
    rlca
    db $fc
    rla
    db $ec
    dec b
    cp $06
    db $fd
    rla
    db $ec
    ld d, [hl]
    xor c
    ld d, d
    xor l
    jp Jump_084_423c


    cp l
    ret nz

    ccf
    add h
    ld a, e
    add l
    ld a, e
    sub c
    ld l, [hl]
    add sp, -$69
    db $ed
    ld [hl-], a
    cp c
    ld h, [hl]
    xor b
    rst $10
    sub l
    ld [$fa85], a
    add l
    ld a, d
    add a
    ld hl, sp-$33
    or d
    adc [hl]
    ei
    adc $7b
    sbc $6b
    rst $08
    jr nc, jr_084_5f25

    ld d, e
    xor a
    ld d, d
    adc [hl]
    ld [hl], a
    xor [hl]
    ld d, e
    xor [hl]
    ld d, c
    cp d
    ld b, a
    xor d
    ld e, l
    sbc [hl]
    ld h, a
    ld e, $e7
    adc [hl]
    ld [hl], a
    adc [hl]
    ld [hl], c
    adc [hl]
    ld a, e
    ld c, $f7
    xor [hl]
    ld e, e
    xor [hl]
    ld a, e
    rst $38
    ld a, [$7fff]
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
    ccf
    ldh [$df], a
    inc l
    ld c, [hl]
    cp l
    xor [hl]
    ld e, l
    xor $17
    xor a
    ld a, b
    xor [hl]
    ld e, c

jr_084_5fb0:
    xor [hl]
    pop af
    cp $05
    xor [hl]
    ld sp, hl
    adc [hl]
    pop af
    db $f4
    dec bc
    db $ec
    or e
    cp [hl]
    ld b, c
    xor $17
    xor $3b
    cp $55
    inc e
    ld h, a
    adc h
    sbc e
    call nz, $e06b
    or a
    ldh a, [rNR31]
    ld hl, sp+$0c
    and $1f
    pop af
    rrca
    db $fc
    inc bc
    sbc $21

jr_084_5fd8:
    ld c, a
    or b
    nop
    ldh [rP1], a
    ld [hl], b
    nop
    jr nc, jr_084_5fd8

    ld [$04fb], sp
    db $fc
    ld [bc], a
    cp $01
    cp [hl]
    ld bc, $00f0
    ld c, b
    add b
    jr nz, jr_084_5fb0

    ldh a, [$60]
    ld e, b
    jr nz, jr_084_601d

    db $10
    ld d, $08
    ld [bc], a
    inc b
    dec b
    ld [bc], a
    ld bc, $0002
    ld bc, $0001
    nop
    nop
    nop
    nop

jr_084_6006:
    nop
    nop
    nop
    nop

jr_084_600a:
    nop
    nop
    add b
    nop
    add b
    nop
    nop
    rst $38
    db $10
    rst $28
    nop
    db $fd
    nop
    rst $38
    nop
    ei
    db $10
    rst $28
    nop

jr_084_601d:
    ld hl, sp+$30
    xor $30
    rst $08
    jr nz, @+$01

    jr nz, @-$23

    jr nz, jr_084_6006

    jr z, @-$27

    jr nz, jr_084_600a

    jr nz, @+$01

    ld b, b
    cp e
    nop
    db $fd
    ld [$08fd], sp
    cp $08
    ei
    ld [$08ff], sp

Call_084_603b:
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$09ff], sp
    or $09
    or $09
    or $00
    rst $38
    nop
    rst $38
    ld b, c
    cp [hl]
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    rst $38
    ld d, b
    xor a
    ld d, b
    rst $28
    ld b, b
    cp a
    ld b, d
    db $fd
    ld d, d
    db $ed
    ld [hl], b
    sbc a
    ld d, b
    rst $28
    ld b, b
    rst $38
    ld d, b
    xor a
    ld [hl], b
    bit 2, b
    rst $28
    ld d, b
    xor a
    ld [hl], b
    sbc a
    ld d, b
    rst $28
    ret z

    inc sp
    ldh a, [$0b]
    ld d, b
    cp a
    ld [hl], d
    db $dd
    ld [hl], d
    sbc a
    jp nc, Jump_084_527d

    rst $38
    sub d
    ld a, l
    sub d
    ld l, a
    ld d, [hl]
    xor c
    ld b, [hl]
    cp c
    add [hl]
    ld a, c
    db $dd
    ld [hl+], a
    sbc a
    ld h, b
    ld e, l
    and d
    rst $28
    stop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ld e, $ff
    ld bc, $00ff
    pop af
    nop
    ld hl, sp+$00
    db $ec
    nop
    ret nc

    nop
    db $f4
    nop
    db $fc
    ret nz

    rst $38
    add b
    rst $38
    inc b
    rst $38
    or $89
    ldh a, [rIF]
    ld hl, sp-$79
    ld [hl], h
    set 4, d
    dec e
    db $f4
    adc e
    or h
    ld l, e
    db $f4
    ld c, e
    db $e4
    db $db
    db $e4
    db $d3
    db $e4
    ld a, a
    db $f4
    db $eb
    db $fc
    db $e3
    cp $e1
    db $fc
    and e
    rst $38
    ld b, b
    add h
    ld a, a
    ld b, h
    cp a
    and b
    rst $18
    ld e, b
    rst $20
    inc h
    ei
    sbc d
    ld a, l
    dec b
    ld a, [hl]
    ld [bc], a
    rra
    rst $38
    rrca
    ld a, a
    inc bc
    add hl, bc
    inc bc
    add hl, bc
    nop
    nop
    add b
    ld [bc], a
    ret nz

    ld bc, $c860
    jr nc, jr_084_611d

    db $10
    ld d, h
    ld [$041a], sp
    dec d
    ld [bc], a
    rrca
    nop
    ld bc, $0600
    nop
    add a

Call_084_60ff:
    nop
    pop bc
    nop
    ld b, b
    nop
    ld h, b
    nop
    ld a, [bc]
    jr nz, jr_084_6139

    nop
    inc e
    nop
    ld [$0600], sp
    nop
    db $fd
    rst $38
    db $ec
    sbc $82
    ld [hl], l

jr_084_6116:
    ld a, [c]
    ei
    ret nc

    rst $38

jr_084_611a:
    rst $18
    db $f4
    sbc l

jr_084_611d:
    xor $9d
    ld a, [hl]
    ei
    nop
    inc hl
    inc e
    and e
    ld e, h
    pop hl
    ld e, $43
    cp h
    add b
    ld a, a
    dec b
    ld a, [$f20d]
    nop
    ld a, [c]
    nop
    ld h, [hl]
    nop

jr_084_6135:
    adc [hl]
    jr nz, jr_084_6116

    nop

jr_084_6139:
    cp $00

jr_084_613b:
    db $fc

jr_084_613c:
    jr nz, jr_084_611a

    nop
    db $fc
    ld b, e
    cp h
    dec b
    ld a, [$bb44]
    ret nz

    scf
    ld c, c
    or [hl]
    ld b, c
    cp [hl]
    ld b, c
    cp [hl]
    ld bc, $20fe
    sbc $00
    db $f4
    nop
    push af
    jr nz, jr_084_6135

    nop
    push af
    inc b
    ei
    jr nz, jr_084_613c

    jr nz, jr_084_613b

    inc h
    db $db
    inc h
    rst $38
    inc h
    rst $38
    inc h
    rst $18
    inc h
    rst $18
    inc b
    rst $38
    ld b, h
    cp a
    inc b
    rst $38
    ld b, h
    cp e
    inc b
    ei
    ld [$4cf7], sp
    or e
    ld c, h
    or e
    ld l, h
    db $d3
    ld e, b
    rst $20
    ld e, h
    xor e
    ld e, l
    ld [c], a
    ld e, l
    ld [$aa5d], a
    ld a, b
    rst $08
    ld a, h
    bit 5, c
    sbc [hl]
    ld l, c
    sbc $48
    rst $38
    ld c, c
    cp $e8
    ld e, a
    add sp, $5f
    ld l, b
    rst $18
    jp c, $e86d

    ld e, a
    db $fc
    db $eb
    cp $1f
    ld bc, $001b
    ld [hl], d
    nop
    ld e, $00
    dec b
    nop
    xor e
    nop
    ld e, a
    nop
    db $ed
    nop
    ld sp, hl
    rst $30
    sbc b
    or c
    ld a, [$5fb0]
    cp b
    rst $30
    ldh a, [$8f]
    pop de
    xor [hl]
    sub b
    rst $28
    or c
    ld c, [hl]
    or c
    sbc $b1
    sbc $91
    ld l, [hl]
    sub c
    ld l, a
    sub c
    ld l, [hl]
    sub c
    ld a, h
    sub c
    cp $b1
    sbc $f1
    sbc [hl]
    or c
    sbc $f1
    sbc a
    or l
    db $db
    pop af
    sbc [hl]
    pop af
    ld c, a
    ld [hl], c
    ld c, $b1
    rra
    ld hl, $d9df
    rst $20
    dec l
    di
    ld [de], a
    db $fd
    add hl, bc
    ld a, [hl]
    inc h
    rra
    inc bc
    rra
    nop
    rrca
    ld l, a
    rlca
    ld a, a
    inc bc
    scf
    nop
    cpl
    nop
    xor a
    nop
    rlc b
    db $eb
    nop
    push af
    nop
    cp h
    nop
    rst $18
    nop
    inc l
    nop
    rlca
    nop
    inc hl
    nop
    dec b
    nop
    nop
    nop
    nop
    nop
    rra
    ld a, a
    rrca
    rst $38
    ld a, e
    rst $28
    ei
    ld a, a
    ld a, e
    rst $38
    dec hl
    rst $38
    dec hl
    rst $38
    ld h, d
    cp $9d
    ld h, d
    rst $18
    jr nz, @+$01

    nop
    sbc a
    nop
    rra
    nop
    rrca
    nop
    rrca
    nop
    rra
    nop
    nop
    sub l
    pop de
    dec b
    sbc c
    dec h
    add b
    dec a
    ret nz

    dec a
    ld h, b
    cp l
    inc c

Jump_084_623d:
    db $fd

jr_084_623e:
    ld [$30fd], sp
    cp l
    ld a, c
    db $fd
    ld a, h
    ei
    ld a, [c]
    ld a, a
    ld h, [hl]
    rst $30
    ld h, [hl]
    rst $38
    ld l, a
    rst $18
    ld e, a
    rst $28
    nop
    adc $60
    ld c, $44
    cp d
    ld b, h
    ld [hl-], a
    ld b, h
    adc [hl]
    ld b, h
    xor $04
    cp $04
    call c, $9d04
    nop
    dec e
    db $10
    rst $28
    nop
    ld a, e
    ld d, b
    ld l, e
    ld b, b
    sbc a
    add d
    ld a, l
    ld b, h
    or e
    inc b
    rst $38
    inc b
    rst $38
    ld b, h
    cp e
    nop
    rst $38
    inc b
    ei
    nop
    db $fd
    inc b
    ld sp, hl
    nop
    db $fd
    nop
    db $fd
    nop
    rst $38
    add b
    ld a, a
    add b
    rst $38
    add b
    rst $38
    add b
    ld a, a
    adc b
    ld [hl], a
    adc b
    rst $30
    adc c
    ld a, [hl]
    adc l
    ld a, [$fa85]
    add l
    ld a, [$f88f]
    rst $28
    sbc b
    rst $28
    jr jr_084_623e

    ld h, b
    ldh [rIE], a
    inc e
    ld e, a
    inc bc
    sbc a
    nop
    di
    nop
    ld a, b
    nop
    add sp, $00
    pop de
    nop
    db $dd

jr_084_62b0:
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    adc a
    ld [hl], b
    pop bc
    ld a, $00
    rst $38
    sub b

jr_084_62bd:
    ld l, a
    nop
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    rst $30
    sub b
    ld l, a
    sub b
    ld a, a
    ld d, b
    cp a
    db $10
    rst $38
    ld d, b
    cp a
    ld [de], a
    db $fd
    jp nc, $d22d

    db $ed
    jp c, $dba5

    and h
    db $eb
    sub h
    ei
    push bc
    db $ed
    ld a, [c]
    rst $38
    ret nz

    rst $38
    and b
    rst $38
    and c
    rst $38
    add c
    rst $38
    ld b, c
    ld a, a
    ld bc, $019f
    rst $28
    add l
    ld c, c
    rst $30
    daa
    ld sp, hl
    inc de
    db $fc
    inc c
    ld a, a
    ld [bc], a
    ccf
    ld bc, $001f
    rrca
    nop
    rlca
    ld a, a
    inc bc
    rra
    ld bc, $000f
    rlca
    nop
    ld b, e
    nop
    pop hl
    nop
    ldh [rP1], a
    ld l, [hl]
    nop
    sub b
    or l
    dec c
    or c
    dec bc
    or b
    dec [hl]
    and b
    and b
    inc l
    inc d
    jr z, jr_084_632d

    ld [$1900], sp

Call_084_6320:
    ld [$8010], sp
    jr jr_084_6325

jr_084_6325:
    sbc b
    nop
    sbc b
    dec b
    or b
    xor b
    jr nc, jr_084_62bd

jr_084_632d:
    jr nz, jr_084_62b0

    jr z, @-$75

    jr jr_084_633f

    add hl, bc
    add hl, bc
    inc c
    add e
    inc b
    ld d, [hl]
    sub c
    db $10
    pop de
    ld e, h
    sub c
    inc d

jr_084_633f:
    ret nc

    ld [de], a
    jp nc, $da0a

    ld [$0bdb], sp
    db $db
    adc a
    db $db
    sbc a
    rst $18
    di
    sbc a
    dec bc
    cp a
    ld h, e
    rst $28
    ld e, a
    rst $20
    ld d, l
    db $e3
    ld e, e
    jp hl


    ld d, l
    ei
    sbc c
    rst $38
    cp l
    ei
    or h
    ei
    or l
    cp $7d
    or $67
    db $fc
    inc [hl]
    cp $3c
    rst $38
    daa
    db $fd
    ld a, l
    rst $38
    ld a, a
    rst $38
    ld bc, $007a
    ld a, e
    ld hl, $0142
    ld h, [hl]
    ld bc, $016e
    ld l, [hl]
    ld b, c
    ld l, $41
    cpl
    ld b, c
    ld a, [hl-]
    ld b, c
    rst $28
    ld c, c
    ld [hl], a
    ld b, c
    ccf
    ld b, c
    ccf
    ld b, c
    ccf
    ld b, c
    cp a
    ld c, c
    or a
    ld c, c
    or a
    ld b, c
    cp [hl]
    ld c, c
    rst $30
    ld h, e
    inc e
    ld l, e
    sub l
    ld l, a
    pop de
    ld [hl], a
    ret


    ld a, a
    jp nz, $ff42

    ld b, d
    rst $38
    jp nz, Jump_000_3eff

    rst $38
    inc bc
    or a
    nop
    ld [hl], a
    nop
    ld [bc], a
    nop
    nop
    nop
    ret nc

    nop
    rra
    nop
    ld sp, hl
    nop
    ldh [rP1], a
    sbc $80
    ldh a, [$f0]
    db $fd
    ld a, h
    rst $38
    cp h
    ld b, a
    cp l
    ld b, [hl]
    sbc l
    ld h, [hl]
    sbc h
    daa
    adc h
    ld [hl], a
    adc h
    ld [hl], a
    and h
    ld e, [hl]
    add l
    ld a, [hl]
    inc b
    rst $38
    inc b
    rst $38
    add h
    ld a, a
    add h
    ld a, a
    add h
    ld a, a
    ld c, h
    or a
    ld c, h
    or a
    inc b
    ei
    ld b, l
    cp e
    ld c, h
    or e
    ld c, h
    cp e
    inc c
    ei
    inc c
    ei
    inc c
    db $db
    add hl, bc
    cp $0b
    db $fc
    ld c, $f9
    rra
    xor $1f
    add sp, $1a
    ld l, l
    sbc d
    dec l
    adc $19
    rst $20
    add c
    ld sp, hl
    ld b, d
    ld [hl-], a
    db $fd
    add hl, bc
    cp $04
    ld a, a
    ld [bc], a
    ccf
    ld bc, $001f
    rrca
    nop
    rlca
    nop
    inc bc
    adc d
    push de
    and b
    sub [hl]
    and b
    sub a
    inc bc
    add l
    jp $f125


    dec h
    ld hl, $0161
    ld h, c
    ld [hl], e
    ld b, c
    ld b, e
    ld h, c
    ld h, e
    ld hl, $21a3
    jr nz, jr_084_644b

    ld h, l
    ld h, c
    ld bc, $0061
    ld hl, $2080
    add b
    ld [hl+], a
    ld b, b
    jp nz, Jump_084_5ac0

    ld c, e
    reti


    ld c, c
    db $dd
    ld c, c
    db $dd
    ret


    db $fd
    ld c, b
    ld a, l
    ld c, e
    ld a, h
    ld h, b
    ld a, [hl]
    jr nz, jr_084_64c6

    ld l, b
    scf
    or d

jr_084_644b:
    dec a
    add hl, sp
    rra
    res 3, a
    dec e
    rst $08
    ld b, $e9
    db $76
    and $77
    ld [hl], a
    inc sp
    ld a, a
    rst $30
    dec sp
    ld a, e
    cp e
    ld a, e
    cp e
    ld a, a
    cp a
    cp a
    ccf
    ld a, a
    cp a
    rst $38
    ccf
    cp a
    ld a, a
    sbc a
    ld a, a
    ccf
    rst $38
    rst $38
    cp a
    ld [hl+], a
    sbc a
    ld h, $9b
    ld d, $ab
    ld d, $ab
    add [hl]
    ld a, a
    ld b, $fb
    ld b, $ff
    ld b, $ff
    ld d, $eb
    ld d, $ed
    ld b, $ff
    ld b, $fd
    inc b
    rst $38
    ld d, $ed
    ld l, h
    rst $10
    ld e, [hl]
    and l
    ld c, h
    cp a
    ld e, h
    and a
    adc h
    ld [hl], a
    adc h
    ld [hl], a
    adc h
    ld a, a
    ld c, $f9
    inc l
    rst $18
    ld c, h
    cp e
    adc h
    ld a, e
    inc c
    rst $38
    inc c
    rst $38
    inc c
    ei
    ret z

    rst $38
    db $fd
    ld a, [hl-]
    rst $38
    rlca
    rst $38
    nop
    rst $38
    inc b
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
    ld [bc], a
    rst $38
    nop
    nop
    ldh a, [rP1]
    ld hl, sp+$20
    rst $38

jr_084_64c6:
    jr nz, @+$01

    ld d, b
    rst $38
    db $10
    rst $38
    sub b
    rst $38
    nop
    rst $38
    cp $11
    ld a, $d0
    inc a
    jp Jump_000_13fc


    db $fc
    inc bc
    db $fc
    inc bc
    ld a, [$5015]
    xor a
    or b
    ld c, a
    ld [de], a
    db $ed
    or d
    ld c, l
    ld [hl], d
    xor l
    ld [hl-], a
    rst $28
    ld [hl], d
    xor l
    ld a, [c]
    dec l
    ldh a, [$2f]
    ld [hl], b
    rst $28
    ld [hl], h
    db $eb
    ld h, h
    ei
    ld [hl], b
    rst $28
    ld [hl], b
    rst $28
    ldh a, [$6f]
    ld h, b
    rst $38
    db $e4
    dec sp
    and h
    ld a, e
    jr nz, jr_084_6583

    and h
    dec de
    call nz, $e41b
    dec bc
    ldh a, [$c3]
    db $fd

jr_084_650d:
    jr nz, jr_084_650d

    db $10
    ldh a, [$f7]
    ldh a, [$f1]
    sub h
    push af
    inc [hl]
    ld d, a
    ret nc

    ld [hl], a
    sub b
    rst $30
    add b
    rst $30
    ret nz

    or a
    add b
    rst $30
    or b
    rst $00
    add c
    rst $10
    sub c
    rst $20
    add l
    rst $38
    add l
    ei
    add b
    rst $38
    pop bc
    rst $38
    nop
    add c
    nop
    add c
    nop
    and c
    nop
    ld sp, $9300
    ld bc, $00c6
    rst $10
    ld bc, $3cc2
    jp $c738


    jr c, jr_084_650d

    sbc b
    ld h, a
    sbc d
    ld h, l
    sbc b
    ld h, l
    ret c

    daa
    ld h, b
    sbc a
    ld bc, $01cb
    jp c, Jump_084_5701

    ld bc, $0167
    rst $38
    ld bc, $01fe
    cp $00
    cp a
    ld [bc], a
    db $fd
    ld [bc], a
    rst $38
    ld [bc], a
    cp a
    ld [de], a
    rst $28
    ld [de], a
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
    cp a
    ld [bc], a
    rst $38
    ld [bc], a
    db $fd
    ld b, $fb
    ld [hl+], a
    db $dd
    ld h, $d9
    ld h, $db
    inc h
    db $db
    inc h

jr_084_6583:
    rst $38
    inc h
    rst $38
    inc h
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
    rst $28
    inc c
    or $04
    ei
    inc c

jr_084_6597:
    di
    inc c
    ei
    inc c

jr_084_659b:
    di
    inc c
    rst $20
    ld [$08ff], sp
    ld a, a
    inc c
    ei
    add hl, bc
    cp $18
    rst $28
    jr jr_084_6597

    jr jr_084_659b

    adc b

jr_084_65ad:
    rst $38
    ld hl, sp+$7f
    rlca
    rst $38
    nop
    xor e
    nop
    add hl, bc
    nop
    ld bc, $4000
    nop
    ld hl, $0300
    nop
    ld bc, $1000
    nop
    jp $8800


    nop
    ret


    nop
    ld sp, hl
    nop
    cp $18
    rst $38
    jr @+$01

    ld a, [$7e1f]
    sub c
    ld [hl], h
    sbc e
    ld [hl-], a

jr_084_65d7:
    db $dd
    ld [hl], d
    sbc l
    ld [hl], b
    sbc a
    jr nc, jr_084_65ad

    ld h, h
    sbc e
    dec [hl]
    jp z, $ed33

    ld a, c
    and [hl]
    ld a, $eb
    ld a, $e1
    inc l
    rst $30
    ld a, $c5
    jr c, jr_084_65d7

    dec [hl]
    ld a, [$ec33]
    ld a, [hl-]
    push hl
    ld a, a
    cp d
    ccf
    cp $7e
    cp a
    cp [hl]
    ld a, a
    ld a, [hl]
    cp l
    ld a, l
    cp a
    ld a, a
    rst $38
    ld a, a
    cp a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ei
    ld a, a
    rst $38
    ld a, a
    ld a, [$ffc9]
    ret


    rst $38
    jp $c1ff


    rst $38
    ret


    rst $38
    call $c9ef
    rst $38
    rst $08
    rst $38
    cp b
    rst $00
    or b
    rst $08
    and b
    rst $18
    ret nz

    cp a
    and b
    rst $18
    and d
    db $dd
    ldh [$9f], a
    and b
    rst $18
    add b
    db $ed
    add b
    rst $18
    add b
    sbc l
    add b
    sbc l
    add b
    dec e
    add b
    dec a
    add b
    dec [hl]
    add b
    ld a, a
    nop
    cp a
    add b
    ld a, l
    add b
    ld a, a
    nop
    rst $38
    ld bc, $01fe
    rst $38
    ld bc, $01fe
    cp $01
    rst $18
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $11ff
    rst $28
    ld bc, $13ff
    db $ed
    inc de
    db $ed
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff
    db $fd
    inc bc
    cp $03
    cp $03
    cp $07
    ld a, [$fe03]
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    ld a, a
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld b, $fb
    ld b, $fa
    ld b, $fe
    ld b, $fa
    ld b, $fa
    ld b, $f8
    ld b, $fc
    ld b, $f4
    inc b
    sbc $06
    call c, $fc06
    inc b
    cp $0c
    rst $30
    inc b
    rst $38
    dec b
    cp $05
    ld a, [$f807]
    rrca
    ldh a, [rIF]
    ldh a, [rIF]

jr_084_66ab:
    ld hl, sp+$1f

jr_084_66ad:
    add sp, $0f
    ld hl, sp-$80
    rst $38
    ld a, b

jr_084_66b3:
    rst $38
    ld c, $7f
    nop
    rra
    nop
    ld hl, $8c00
    nop
    rst $30
    nop

jr_084_66bf:
    rst $38
    rst $38

jr_084_66c1:
    rst $38
    rst $38
    rst $38
    rst $38
    dec a
    rst $38
    nop
    rst $38
    or b
    rst $38
    ld a, b
    rst $38
    cp h
    rst $38
    di
    ld e, a
    and b
    rla
    ld hl, sp+$11
    xor $10
    rst $28
    ld d, b
    xor a
    jr nc, jr_084_66ab

    jr nc, jr_084_66ad

    jr nz, jr_084_66bf

    jr nz, jr_084_66c1

    jr nc, jr_084_66b3

    ld sp, $21ee
    cp $31
    rst $28
    ld sp, $21ee
    rst $38
    ld [hl], c
    xor [hl]
    ld h, c
    cp [hl]
    pop hl
    ld a, [hl]
    pop hl
    ld a, [hl]
    pop hl
    ld a, [hl]
    ld h, c
    sbc $61
    sbc $62
    db $dd
    ld h, e
    call c, $5fe0
    ld h, b
    rst $18
    ld b, b
    rst $38
    ld h, b
    rst $18
    ret nz

    rst $38
    ret nz

    ld a, a
    ret nz

    rst $38
    jp nz, Jump_000_00fd

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
    jr jr_084_6743

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_084_6753

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_084_6763

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_084_6773

    ld [hl-], a

jr_084_6743:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_084_6783

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_084_6753:
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

jr_084_6763:
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

jr_084_6773:
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

jr_084_6783:
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
    xor $ee
    rst $28
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
    jr jr_084_6844

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
    jr z, jr_084_6864

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_084_6874

    ld [hl-], a

jr_084_6844:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $06
    ld b, $06
    ld b, $06
    rlca
    dec b
    dec b
    dec b
    dec b
    nop
    inc b
    rlca
    rlca
    dec b
    rlca
    ld b, $06
    ld b, $06

jr_084_6864:
    ld b, $07
    rlca
    rlca
    dec b
    inc b
    nop
    dec b
    dec b
    dec b
    dec b
    rlca
    ld b, $06
    ld b, $06

jr_084_6874:
    ld b, $07
    rlca
    rlca
    dec b
    nop
    ld [bc], a
    dec b
    dec b
    dec b
    rlca
    nop
    ld bc, $0101
    ld b, $01
    rlca
    dec b
    dec b
    dec b
    nop
    ld [bc], a
    dec b
    dec b
    rlca
    ld [bc], a
    nop
    dec b
    rlca
    rlca
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    dec b
    dec b
    dec b
    nop
    nop
    inc b
    rlca
    rlca
    rlca
    dec b
    rlca
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    rlca
    ld [bc], a
    nop
    nop
    rlca
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    nop
    nop
    nop
    dec b
    rlca
    rlca
    rlca
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    dec b
    dec b
    dec b
    ld [bc], a
    nop
    nop
    nop
    rlca
    rlca
    ld bc, $0701
    rlca
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    rlca
    ld bc, $0101
    rlca
    rlca
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    rlca
    ld bc, $0707
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    rlca
    rlca
    rlca
    dec b
    dec b
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [bc], a
    dec b
    rlca
    rlca
    dec b
    dec b
    dec b
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    dec b
    ld bc, $0505
    dec b
    dec b
    dec b
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    inc b
    inc bc
    dec b
    rlca
    rlca
    dec b
    dec b
    rlca
    dec b
    dec b
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    rlca
    add hl, bc
    rrca
    rrca
    rrca
    dec c
    rrca
    rrca
    dec c
    dec c
    dec c
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    add hl, bc
    rrca
    rrca
    rrca
    dec c
    rrca
    rrca
    rrca
    rrca
    dec c
    rrca
    dec c
    dec c
    ld a, [bc]
    ld [$0f0a], sp
    rrca
    rrca
    rrca
    add hl, bc
    rrca
    rrca
    rrca
    add hl, bc
    rrca
    rrca
    rrca
    dec c
    dec c
    ld a, [bc]
    ld a, [bc]
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    add hl, bc
    rrca
    dec c
    dec c
    dec c
    dec c
    dec c
    jr z, jr_084_69a2

    jr c, jr_084_6994

jr_084_6994:
    ld sp, $0401
    ld sp, $3f40
    ld b, b
    ccf
    ld [hl-], a
    ld c, a
    call nz, Call_000_101b
    rrca

jr_084_69a2:
    adc [hl]
    cp a
    and $df
    rst $08
    rst $38
    rst $08
    rst $38
    rst $18
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    add sp, -$01
    ld [c], a
    ld hl, sp+$6e
    db $e4
    ld l, h
    xor $e5
    ld l, b
    ldh a, [$71]
    ld hl, sp+$7d
    ld a, h

jr_084_69bf:
    ld a, l
    ld a, l
    ld a, l
    ld a, a
    ld a, l
    ei
    ld a, l
    ld a, a
    ld sp, hl
    ld a, e
    ld hl, sp-$0d
    cp $ff
    di
    push hl
    ei
    and c
    db $e3
    db $e4
    and c
    ld hl, sp-$1d
    db $eb
    db $db
    ei
    db $db
    rst $18
    db $db
    ld sp, hl
    rst $38
    ei
    db $fd
    jr nc, jr_084_69bf

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
    sub b
    ld l, a
    ld [$18f7], sp
    rst $20
    adc b
    rst $38
    adc b
    ld a, a
    adc c
    cp $08
    rst $38
    adc b
    ld a, a
    adc b
    ld a, a
    adc b
    ld a, a
    adc b
    ld a, a
    ld [$08ff], sp
    rst $38
    ld [$04ff], sp
    ei
    inc b
    ei
    ld c, h
    or a
    ld b, h
    rst $38
    ld b, h
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
    ld b, $fd
    inc b
    rst $38
    ld b, $fd
    add [hl]
    ld a, a
    ld b, $fd
    ld b, $ff
    add [hl]
    ld a, e
    ld bc, $87fe
    ld a, b
    rst $38
    nop
    ld a, a
    ret nz

    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    nop
    rst $38
    and b

Jump_084_6a3c:
    rst $38
    nop
    rst $38
    nop
    ld a, h
    add e
    ld hl, sp+$07
    sub c
    ld l, a
    rla
    rst $28
    dec a
    rst $38
    pop bc
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
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    ld bc, $00de
    db $fd
    nop
    db $dd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    ld [$08f6], sp
    rst $38
    ld [$88ff], sp
    ld [hl], a
    add b
    ld a, a
    adc b
    rst $30
    add b
    rst $38
    adc b
    rst $30
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add h
    ei
    call nz, $c4bf
    cp a
    call nz, $c4fb
    cp e
    jp nz, $c0fd

    cp $c0
    db $fc
    ld a, [bc]
    ld de, $9b81
    and e
    sbc c
    add e
    cp c
    and e
    sbc c
    add e
    cp c
    add e
    cp c
    and l
    sbc c
    and l
    sub b
    xor b
    sub b
    push hl
    sbc h
    call nz, $e09c
    sbc [hl]
    add c
    sbc [hl]
    add c
    sbc [hl]
    ld b, b
    sbc a
    sub b
    rrca
    ld [c], a
    ccf
    ld a, d
    ld a, a
    ld [c], a
    rst $38
    and $ff
    db $ed
    rst $38
    rst $30
    rst $38
    db $fd
    rst $38
    rst $28
    rst $38
    and $ff
    ld h, e
    cp $af
    ld a, [hl]
    ld h, c
    cp $78
    rst $38
    pop af
    db $fd
    ldh a, [rIE]
    ldh a, [$fd]
    ld a, [c]
    db $fd
    rst $38
    ld sp, hl
    di
    ei
    ld a, [$fef7]

jr_084_6adb:
    rst $30
    rst $38
    rst $30
    xor $f7
    nop
    and $04
    ld a, [c]
    nop
    xor $00

jr_084_6ae7:
    xor $14
    ld a, [$fe10]
    db $10
    rst $38
    jr jr_084_6ae7

    nop

Call_084_6af1:
    rst $38
    jr jr_084_6adb

    ld [$08f3], sp
    ld sp, hl
    ld [$08f9], sp
    ld sp, hl
    ld [$08fe], sp
    ei
    ld [$08fb], sp
    db $fd
    ld [$08fd], sp
    push af
    ld [$04f5], sp
    ld hl, sp+$04
    call c, $f50c
    inc c
    di
    inc b
    ei
    inc b
    ei
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
    ld bc, $0fff
    cp $7c
    jp Jump_000_23fc


    pop af
    ld c, $ff
    ld e, $ff
    ld h, l
    rst $38
    ld b, a
    rst $38
    rlca
    rst $38
    dec bc
    rst $38
    ccf
    rst $38
    scf
    rst $38
    ld a, a
    ld hl, sp+$07
    ret nz

    ccf
    add b
    rst $38
    add b
    rst $38
    ret nz

    cp a
    pop bc
    cp [hl]
    add c
    ld a, a
    add c
    rst $38
    add c
    cp $89
    rst $30
    add c
    ld a, a
    add c
    rst $38
    sub c
    ld l, [hl]
    sub c
    rst $28
    and c
    db $db
    db $db
    inc h
    adc c
    or $81
    cp $c5
    ld a, $ec
    sub e
    call c, $de2b
    ld a, c
    ld a, [hl]
    reti


    ld a, a
    ld a, [$fb7f]
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    cp h
    ld a, a
    ret c

    ld a, a
    sbc b
    dec a
    jp c, Jump_000_3cfb

    ld a, [hl]
    cp e
    ld a, h
    cp d
    ld sp, $23f8
    ldh a, [rTAC]
    ret nz

    rra
    add b
    ccf
    nop
    ld a, a
    nop
    sub a
    xor $be
    push bc
    xor b
    rst $10
    ld a, [bc]
    rst $30
    add [hl]
    ei
    adc l
    di
    and c
    db $db
    sub a
    jp hl


    push bc
    cp e
    call nz, $e03b
    ld a, a
    xor c
    db $76
    ld l, b
    or a
    sbc d
    scf
    ld h, d
    ld e, a
    ld h, d
    ld e, a
    ld l, d
    ld l, a
    ld h, c
    ld l, a
    ld a, c
    ld h, a
    scf
    ld l, e
    dec e
    ld h, e
    ld c, a
    or l
    ld d, d
    cp l
    db $f4
    ld a, [hl-]
    sub e
    ccf
    sbc a
    ld a, a
    rst $30
    ld e, a
    rst $30
    rst $18
    rst $00
    rst $18
    rst $30
    rst $08
    rst $20
    rst $10
    db $fd
    set 3, e
    db $fd
    cp b
    db $fd
    rst $38
    cp l
    scf
    db $fd
    ld [hl], $fd
    di
    cp $7e
    ei
    inc sp
    cp $20
    rla
    jr nz, @+$3d

    nop
    ld a, e
    jr nz, jr_084_6c47

    jr nz, @+$20

    jr nz, @+$60

    jr nz, jr_084_6c4c

    nop
    ld a, [hl]
    jr nz, jr_084_6c48

    nop
    ld [hl], a
    db $10
    ld [hl], a
    db $10
    cpl
    ld [de], a
    dec a
    db $10
    cpl
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    cp a
    db $10
    ccf
    ld de, $118e
    adc [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    rst $38
    ld [$08f5], sp
    push af
    ld [$08f7], sp
    db $ed
    ld [$08cd], sp
    call $8c08
    ld [$09ff], sp
    rst $38
    rra
    ei
    rst $38
    and e
    rst $38
    rra
    rst $38
    cp $ff
    ld sp, hl
    rst $38
    cp $00
    inc a
    nop
    ld a, [$7800]
    nop
    db $fd
    ld bc, $06fe
    db $fd
    ccf
    call nz, $04fb
    inc b
    call nz, $c004
    ld b, $e0
    inc b

jr_084_6c47:
    ld [c], a

jr_084_6c48:
    nop
    and $02
    push af

jr_084_6c4c:
    ld [de], a
    push hl
    ld [bc], a
    push af
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ei
    add d
    ld a, a
    ld [de], a
    db $ed
    ld [de], a
    rst $28
    add d
    ld a, a
    add d
    ld a, a
    add d
    ld a, a
    add e
    ld a, l
    add e
    db $fc
    adc d
    push af
    adc e
    push af
    adc e
    dec [hl]
    adc c
    rst $38
    adc e
    ld [hl], l
    add c
    ld a, a
    pop bc
    cp a
    adc [hl]
    pop af
    ret nz

    cp a
    ret nz

    ld a, h
    ld b, e

jr_084_6c7b:
    or b
    ld b, a
    and b
    rra
    add c
    ccf
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
    add b
    ld c, b
    or a
    ld l, h
    sub e
    ld c, h
    or e
    nop
    cp e
    call nz, $923b
    dec l
    jp nc, $c12d

    ld a, $a1
    ld e, $45
    sbc d
    ld sp, $358e
    adc d
    dec d
    adc d
    ld d, c
    adc [hl]
    ld sp, $108e
    adc a
    sub c
    ld c, [hl]
    jr jr_084_6c7b

    ld a, b
    add a
    ld c, b
    and a
    inc b
    xor e
    inc b
    cp e
    ld c, h
    or e
    add b
    ld [hl], a
    ld [hl], a
    rst $38
    rst $30
    ld a, a
    ld [hl], e
    ld a, a
    scf
    rst $38
    scf
    rst $38
    push de
    cp a
    rst $30
    sbc a
    adc l
    rst $38
    nop
    xor a
    ld e, b
    and a
    ld a, [bc]
    or l
    ld hl, $649e
    sbc e
    db $e4
    dec de
    db $e4
    dec de

jr_084_6cde:
    ret nz

    rra
    ld [bc], a
    rra
    ld [bc], a
    rra
    ld [bc], a
    ld c, a
    ld b, d
    rra
    ld b, d
    sbc a
    ld [bc], a
    rst $28
    ld b, d
    cp a
    ld c, d
    and a
    ld c, d
    or a
    ld c, d
    rst $30
    ld b, d
    cp a
    ld b, d
    rst $38
    ld b, d
    cp a
    ld c, d
    push af
    ld h, e
    rst $18
    ld h, e
    sbc $43
    cp [hl]
    ld h, a
    reti


    ld a, a
    jp $d76b


    ld l, a
    sub c
    inc sp
    db $ed
    inc sp
    call $ef31
    ld hl, $7bff
    and l
    add hl, hl
    rst $30
    scf
    jp hl


    add hl, hl
    rst $30
    ld hl, $abff
    ld [hl], l
    ld a, c
    and [hl]
    rst $38
    rst $30
    rst $38
    ldh a, [rIE]
    jr nc, @+$01

    ret c

    rst $38
    and b
    rst $38
    inc c
    rst $38
    ld b, [hl]
    rst $38
    nop
    nop
    ld bc, $8f03
    rlca
    ccf
    inc sp
    rst $18
    di
    rra
    db $d3
    ccf
    ret nc

    ccf
    ret nc

    ccf
    sub c
    ld a, $1f
    jr nc, jr_084_6cde

    ld [hl], $1b
    ld [hl], h
    sbc e

jr_084_6d49:
    inc h
    sbc d
    push af
    sbc c
    ld l, $9b
    ld h, b
    jr jr_084_6d49

    sbc c
    ld l, [hl]
    sbc c
    ld h, [hl]
    adc c
    db $76
    sbc c
    ld l, [hl]
    ld a, [de]
    db $ed
    ld a, [bc]
    db $fd
    adc h
    ld a, e
    adc [hl]
    ei
    dec e
    xor $0e
    ld sp, hl
    dec bc
    db $fc
    ld a, [bc]
    db $fd
    inc c
    ei
    ld [$00fc], sp
    ei
    ld [$31f7], sp
    rst $08
    jp nz, $843f

    ld a, a
    db $10
    cp $00
    db $fc
    ld b, b
    ldh a, [rLCDC]
    ldh [rIE], a
    ret nz

    cp $80
    db $fd
    nop
    ld sp, hl
    nop
    push af
    nop
    rst $08
    nop
    ld d, a
    nop
    rrca
    nop
    ld b, [hl]
    db $fd
    ld b, h
    cp a
    ld b, h
    cp a
    ld b, h
    rst $38
    ld b, h
    cp a
    ld b, [hl]
    cp l
    ld b, h
    rst $38
    ld b, h
    cp a
    ld b, [hl]
    cp l
    ld b, [hl]
    ld a, l
    ld b, $7b
    ld b, $5b
    ld b, $7b
    ld b, $79
    ld b, d
    ld a, l
    ld [bc], a
    ld a, a
    ld [bc], a
    ld a, a
    ld [bc], a
    ld a, l
    ld h, $5b
    ld [bc], a
    rst $38
    ld [hl+], a
    db $dd
    ld h, [hl]
    sbc e
    ld h, $f9
    ld [hl+], a
    rst $38
    ld [hl+], a
    db $fd
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld [hl-], a
    rst $08
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld [hl-], a
    call $cd32
    ld [hl], $d9
    ld d, $fb
    scf
    ret z

    ld sp, $33ce
    call z, $ed12
    ld de, $15ee
    db $eb
    dec d
    db $eb
    ld d, l
    xor e
    ld d, c
    cp a
    ld d, c
    cp [hl]
    ld de, $11ee
    rst $28
    ld de, $11fe
    rst $28
    ld de, $11fe
    rst $28
    dec d
    ld [$ef11], a
    ld de, $11ee
    xor $00
    rst $38
    db $10

jr_084_6e01:
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    jr @-$17

    ld [$18f7], sp
    rst $20
    ld [$08ff], sp
    rst $30
    jr jr_084_6e01

    ld [$08f7], sp
    rst $38
    ld [$88ff], sp
    ld a, a
    ld c, c
    cp [hl]
    ccf
    ret nz

    rst $38
    nop
    nop
    ret nz

    nop
    ld l, b
    nop
    ld bc, $4b00
    nop
    adc a
    nop
    add hl, de
    nop
    rrca
    inc b
    ccf
    and $1d
    add [hl]
    ld a, l
    and l
    sbc $a4
    rst $18
    add l
    cp $85
    ld a, [$f887]
    add [hl]
    db $fd
    add a
    ld a, h
    add a
    ld a, l
    sub a
    db $ec
    rst $00
    cp b
    sub a
    ld l, l
    sub e
    db $ed
    rst $00
    dec sp
    rst $00
    ld a, e
    jp $e39f


    rla
    rst $00
    ld [hl], e
    jp $c3d7


    rst $10
    db $d3
    ld b, e
    jp $c2c3


    ld b, e
    add $ff
    ret


    rst $38
    ld [hl], a
    rst $38
    rst $08
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$10
    ldh a, [$e1]
    ldh [$ca], a
    ret nz

    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    cp e
    nop
    ld e, $00
    cpl
    nop
    rst $38
    nop
    db $fd
    nop
    db $fc
    nop
    ei
    nop
    cp d
    nop
    cp d
    nop
    and h
    ld b, b
    ld b, l
    cp $45
    ld a, [$ff40]
    ld b, b
    ei
    ld b, b
    rst $38
    ld b, l
    ei
    ld b, c
    ld a, [$ef40]
    ld b, l
    cp $65
    sbc $05
    ld a, [$ba05]
    nop
    rst $38
    ld bc, $42fe
    cp l
    ld b, e
    cp l
    inc hl
    db $dd
    ld hl, $23df
    ld sp, hl
    ld [hl+], a
    ld sp, hl
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    ld hl, $21df
    rst $38
    ld hl, $21df
    sbc $20
    rst $18
    jr nz, @-$1f

    ld [hl+], a
    db $dd
    ld [hl+], a
    rst $18
    ld [hl+], a
    rst $38
    inc [hl]
    ld [$db26], a
    ld [hl+], a
    rst $18
    ld [bc], a
    rst $38
    ld [bc], a
    db $fd
    inc de
    db $ec
    inc bc
    db $fc
    inc de
    db $ec
    inc bc
    db $fc
    inc bc
    cp $92
    ld l, l
    add e
    ld a, [hl]
    ld b, $fb
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [de], a
    db $ed
    ld de, $11ef
    cp $11
    cp $11
    rst $28
    ld de, $11ff
    rst $28
    dec d
    ld [$ef11], a
    ld bc, $01ff
    rst $38
    add c
    ld a, a
    add c
    ld a, a
    ld bc, $83ff
    ld a, l
    add c
    ld a, a
    ld bc, $8bff
    ld [hl], l
    inc bc
    db $fd
    ld de, $9fee
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

jr_084_6f25:
    nop
    rst $38
    ld bc, $0afd
    srl l
    adc a
    ld a, b
    add hl, bc
    or $8a
    ld [hl], l
    ld a, [bc]
    push af
    dec c
    ld a, [c]
    inc d
    db $eb
    ld c, d
    or l
    ld b, h
    ei
    ld b, [hl]
    ld sp, hl

Call_084_6f3e:
    ld c, h
    di
    ld d, h
    db $eb
    adc $75
    ld c, h
    rst $30
    ld b, [hl]
    db $fd
    add $39
    call nz, $c47f
    cp a
    call z, $c4f7
    rst $38
    db $ec
    rst $10
    db $ec
    jp c, Jump_084_58e1

    rst $00
    ld sp, $e38f
    rra
    add h
    ld a, a
    inc e
    jr nz, @+$01

    ld d, b
    rst $38
    add b
    cp $80
    ldh a, [rP1]
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    db $db
    nop
    daa
    nop
    xor [hl]
    nop
    sbc h
    nop
    db $fd
    nop
    or b
    ld b, b
    and d
    nop
    jp $c400


    nop
    inc bc
    nop
    sbc e

jr_084_6f85:
    nop
    cpl

jr_084_6f87:
    ld [bc], a
    cp $04
    db $fc

jr_084_6f8b:
    ld [$1038], sp
    ld [hl], b
    jr nz, jr_084_6f25

jr_084_6f91:
    dec sp
    db $10
    rst $28
    jr jr_084_6f85

    jr jr_084_6f87

    jr jr_084_6f91

    jr jr_084_6f8b

    ld [$18f7], sp
    rst $20
    adc b
    rst $30
    adc b
    rst $30
    adc b
    rst $30
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add d
    rst $38
    add b
    rst $38
    add d
    db $fd
    add d
    rst $38
    add d
    ld a, a
    ld [bc], a
    db $fd
    ld [bc], a
    rst $38
    ld bc, $01fe
    cp $40
    cp a
    ld b, d
    cp l
    ld b, d
    rst $38
    ld b, d
    cp a
    ld [bc], a
    db $fd
    ld [hl+], a
    rst $18
    ld l, d
    sbc a
    ld l, d
    rst $18
    ld l, b
    sbc a
    ld b, h
    cp a
    ld b, [hl]
    ld sp, hl
    ld c, h
    or e
    inc c
    rst $38
    ld e, h
    xor a
    ld c, b
    cp a
    ld c, d
    cp l
    ld c, h
    cp e
    ld c, [hl]
    cp c
    ld e, h
    db $eb
    ld l, a
    sbc c
    ld l, l
    db $d3
    ld a, l
    xor e
    db $ed
    dec de
    ld l, a
    pop de
    db $ed
    inc sp
    db $ed
    ld d, [hl]
    db $ed
    ld d, d
    db $ed
    rla
    db $ed
    inc de
    ld l, l
    sub d
    jp hl


    scf
    ld h, l
    cp d
    db $ed
    ld [hl-], a
    push hl
    ld a, d
    db $ed
    ld [hl], a
    push hl
    ld a, [hl]
    and l
    ld a, d
    and l
    ld a, [hl]
    xor [hl]
    ld [hl], c
    and l
    ld a, [hl]
    push af
    xor [hl]
    push af
    cp [hl]
    rst $20
    ld a, l
    cp a
    ld c, [hl]
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    ld [bc], a
    rst $28
    or $f7
    ld [$69f6], a
    rst $38
    ld h, b
    rst $30
    ld l, h
    rst $28
    ld [de], a
    rst $20
    cp d
    di
    xor a
    or e
    ld l, h
    ei
    add a
    di
    rrca
    di
    rra
    or e
    ld e, a
    cp e
    rst $30
    di
    cp a
    ei
    or a
    or e
    rst $18
    di
    rst $18
    ldh a, [$9c]
    di
    sbc c
    di
    rst $00
    rst $08
    rst $20
    xor $9f
    sbc h
    ld a, a
    ld [hl], b
    rst $38
    ld h, b
    rst $38
    add b
    rst $38
    dec e
    ld [c], a
    ld a, a
    add b
    rst $18
    jr nz, jr_084_7091

    rst $38
    ld a, e
    rst $38
    ld a, [$edbf]
    ld a, [hl-]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $18
    nop
    ld a, $03
    dec c
    ld [bc], a
    ld a, [de]
    inc b
    ccf
    ld [$18ec], sp
    ld de, $7230
    jr nz, @-$2e

    ld b, b
    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld bc, $8300

jr_084_7091:
    ld a, a
    add hl, bc
    rst $30
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
    ld b, h
    cp e
    add b
    ld a, a
    add h
    ld a, c
    nop
    rst $38
    ld b, h
    cp e
    ld b, c
    cp [hl]
    nop
    rst $38
    ld b, c
    cp h
    nop
    db $fd
    ld c, b
    or a
    nop
    rst $38
    ld b, b
    cp [hl]
    nop
    cp $00
    rst $38
    db $10
    xor $14
    ld a, [$6e94]
    ret nc

    ld a, $b4
    ld c, d
    ret nc

    ccf
    call nc, Call_084_482b
    or l
    inc d
    db $eb
    inc c
    di
    ld c, b
    rst $30
    inc b
    ei
    add hl, de
    and $19
    and $51
    xor $39
    sub $31
    sbc $79
    sub $59
    or $6c
    sbc e
    ld e, d
    and l
    inc a
    rr l
    and $1e
    jp hl


    ccf
    call nz, $fc1f
    rra
    and $be
    ld b, l
    rrca
    db $fd
    rrca
    db $fd
    cpl
    call c, $ee1f
    ld a, a
    adc d
    rra
    db $ec
    ccf
    sbc $1f
    cp $1f
    xor $1f
    db $ec
    ccf
    adc $1e
    db $ed
    cpl
    sbc $bf
    ld e, [hl]
    ld a, a
    adc a
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
    cp $ff
    cp $ff
    ld e, $ff
    ld a, a
    sbc [hl]
    cp [hl]
    ld c, a
    ld a, $cf
    ld l, a
    sbc h
    ld a, [hl]
    adc e
    ccf
    ld [$6abf], a
    cp [hl]
    ld c, e
    xor a
    ld [hl], d
    cp [hl]
    db $eb
    cp [hl]
    db $eb
    cp a
    ld l, [hl]
    rst $38
    ld l, $be
    rst $28
    xor h
    ld e, h
    xor e
    di
    and a
    rst $30
    rst $08
    adc a
    cp a
    cp a
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld c, $f1
    inc e
    db $e3
    ld [hl], h
    adc e
    db $fd
    ld [bc], a
    ld bc, $22ff
    rst $38
    push bc
    cp a
    add l
    ld a, [hl]
    add l
    ld a, d
    ld e, a
    ldh a, [rNR22]
    ldh [$bf], a
    ld b, b
    ld e, a
    add b
    xor a
    nop
    ld l, a
    nop
    ld e, a
    nop
    cp a
    ld [$003f], sp
    xor a
    nop
    rla
    nop
    rla
    nop
    sbc a
    nop
    ld e, a
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
    add b
    rst $38
    add b
    rst $38
    ret nz

    ld a, a
    ldh [$3f], a
    ldh a, [$1f]
    ldh a, [rIF]
    ld hl, sp+$07
    ld e, h
    inc bc
    ld e, [hl]
    ld bc, $00df
    cp $00
    call z, $ec00
    nop
    and c
    nop
    and [hl]
    nop

jr_084_71af:
    jr nz, jr_084_71af

    ld bc, $7788
    add b
    ld a, a
    or d
    ld c, l
    or [hl]
    ld c, c
    or [hl]
    ld c, c
    xor c
    ld d, [hl]
    cp b
    ld b, a
    or a
    ld b, b
    or d
    ld b, h
    dec sp
    call nz, $8479
    ld h, e
    sub h
    cpl
    ret nc

    ld l, $d1
    inc sp
    call z, $dd00
    nop
    push de
    nop
    db $dd
    nop
    db $fd
    nop
    db $fd
    nop
    ld sp, hl
    nop
    ld sp, hl
    add b
    ld a, a
    adc b
    ld [hl], c
    ld b, b
    cp l
    add b
    ld a, a
    add b
    ld e, a
    ret nz

    ccf
    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    add b
    ld a, a
    add h
    ld a, e
    ld b, b
    cp a
    ld b, b
    cp a
    add h
    ld a, e
    adc b
    rst $30
    add h
    ld a, e
    ret nz

    ld a, a
    call nz, $c6bb
    add hl, sp
    sub h
    db $eb
    cp a
    ld b, h
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ld [c], a
    rst $38
    rst $10
    rst $38
    jp nz, $e4df

    sbc $a5
    sub $e9
    sub $69
    sub $ab
    sbc $e1
    jp nc, $daef

    ld [hl], a
    sub $eb
    cp $55
    sbc $65
    db $fc
    call nz, Call_084_6af1
    rst $30
    db $d3
    rst $08
    ld b, a
    cp a
    cp a
    ld a, a
    ld a, a
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
    db $d3
    rst $38
    add c
    rst $38
    ld [bc], a
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    ldh [$3f], a
    ret nz

    sbc [hl]
    rst $38
    db $fd
    rst $38
    cp $ff
    db $fd
    rst $38
    dec e
    rst $38
    rst $20
    rra
    rst $00
    ccf
    rst $08
    ccf
    rst $38
    dec de
    rst $18
    daa
    rst $38
    ld h, [hl]
    rst $38
    adc a
    rst $38
    add l
    rst $38

jr_084_727b:
    ld [bc], a
    rst $38
    rlca
    rst $38
    ld bc, $07ff
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    rlca
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    dec d
    rst $38
    inc bc
    reti


    rst $38
    jp c, $f3ff

    rst $38
    cp l
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    cp [hl]
    rst $38
    ld sp, hl
    rst $38
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ld a, a
    jr nz, jr_084_72c8

    ld [hl], b
    rrca
    ret c

    rlca
    ld e, h
    inc bc
    ld b, [hl]
    cp l
    ld b, e
    jr c, jr_084_727b

    inc a
    jp Jump_084_49b6


    cp [hl]
    ld b, c
    cp d
    ld b, l
    sbc $21
    or $09
    ld a, [c]
    dec b
    ld [c], a
    dec b
    ld l, b
    add a
    ld a, b
    add a

jr_084_72c8:
    db $76
    add c
    cp $01
    ld l, c
    sub [hl]
    db $ed
    ld [de], a
    db $ed
    ld [de], a
    db $ed
    ld [de], a
    or h
    dec bc
    cp c
    ld b, $f1
    ld c, $f8
    rlca
    ld l, c
    sub [hl]
    ld d, c
    adc [hl]
    nop
    adc a
    nop
    adc a
    nop
    adc a
    nop
    adc a
    nop
    adc a
    add b
    ld c, l
    nop
    db $ed
    nop
    cp a
    nop
    cp a
    nop
    rst $38
    nop
    db $dd
    nop
    cp a
    nop
    rst $38
    nop
    cp l
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    ld hl, sp+$0e
    ret nz

    ld a, [hl]
    nop
    db $fc
    nop
    ei
    ld bc, $025d
    or c
    ld c, $29
    sub $01
    cp $11
    rst $28
    or l
    ld e, e
    dec d
    db $eb
    and l
    ld e, a
    sbc l
    rst $20
    cp a
    call nc, $f894
    sbc c
    ld [c], a
    sub e
    push af
    rst $08
    add h
    adc a
    or h
    ccf
    ld d, b
    ld b, b
    rst $38
    add c
    rst $38
    ld b, $ff
    adc h
    rst $38
    sbc b
    rst $38
    or b
    rst $38
    ldh [rIE], a
    add c
    rst $38
    add e
    rst $38
    add l
    rst $38
    xor h
    rst $38
    db $fc
    rst $38
    ld a, [$ffff]
    rst $38
    rst $30
    rst $38
    and e
    rst $38
    add d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$c8f7], sp
    scf
    ccf
    ret nz

    ld d, c
    rst $38
    add b
    rst $38
    sub c
    rst $38
    sub b
    rst $38
    db $10
    rst $38
    ld l, b
    rst $38
    or e
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    ldh a, [$ef]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    pop bc
    rst $38
    db $fc
    ld e, a
    ei
    adc a
    ccf
    rst $00
    cpl
    pop de
    jp nc, $feff

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, l
    rst $38
    pop hl
    rst $38
    ld a, b
    rst $38
    db $fc
    rst $38
    ei
    rst $38
    adc c
    rst $38
    add $ff
    ld [hl], h
    rst $38
    rst $08
    rst $38
    and c
    rst $38
    ld [c], a
    rst $38
    di
    rst $38
    inc a
    rst $38
    rst $10
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    inc de
    db $ec
    add e
    db $fc
    ld b, a
    ld hl, sp+$40
    rst $38
    ld a, [de]
    push hl
    inc a
    jp $d728


    ld [hl], $c9
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ld de, $00ee
    rst $38
    nop
    db $dd
    nop
    push de
    nop
    push bc
    ld a, [hl-]
    push bc
    ld a, [hl-]
    push bc
    ld [hl], $c9
    ld a, [hl-]
    push bc
    ld a, [hl-]
    push bc
    inc sp
    call z, $c43b
    ld a, [hl-]
    push bc
    nop
    push bc
    ld b, b
    add c
    ld b, b
    add c
    nop
    push de
    nop
    push de
    nop
    push bc
    nop
    push bc
    nop
    push de
    nop
    rst $10
    ld b, b
    sbc l
    nop
    rst $10
    nop
    rst $10
    ld b, b
    sbc a
    ld b, b
    sbc a
    ld b, b
    sbc a
    ret nz

    ccf
    ld e, a
    add b
    ret


    nop
    ld sp, hl
    ld b, b
    pop bc
    ld a, $c1
    ld a, $c0
    ccf
    ret nz

    ld a, a
    pop bc
    cp [hl]
    pop bc
    ccf
    push bc
    ld a, e
    pop de
    ld l, a
    pop bc
    ld [hl], a
    ret nz

    ccf
    pop bc
    inc bc
    rst $08
    ret nz

    jp $ef40


    ld b, b
    ld l, a
    ld b, b
    rst $38
    ret nz

    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $40
    add c
    cp $01
    cp $00
    rst $38
    inc b
    ei
    ld a, [bc]
    push af
    nop
    rst $38
    add c
    cp $03
    db $fc
    dec bc
    db $fc
    rlca
    ld hl, sp+$18
    rst $30
    ld b, b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    ld bc, $01ff
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
    ld a, a
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    pop de
    rst $38
    add c
    rst $38
    dec bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    xor b
    rst $38
    or c
    rst $38
    ld de, $fdff
    rst $38
    xor [hl]
    rst $38
    add h
    rst $38
    add $ff
    jp nz, $c0ff

    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    ld sp, $f0ff
    rst $38
    add b
    rst $38
    jr @+$01

    inc bc
    cp $80
    rst $38
    sub h
    rst $38
    jr nc, @+$01

    ld [bc], a
    rst $38
    or c
    rst $38
    call c, $efff
    rst $38
    add hl, hl
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
    nop
    rst $38
    nop
    rst $38
    add hl, sp
    adc d
    ld [hl], l
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    ld [de], a
    db $ed
    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $30
    nop
    rst $38
    ld [bc], a
    ld a, l
    nop
    rst $38
    nop
    rst $38
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
    ld [bc], a
    db $dd
    ld [bc], a
    db $dd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    cp a
    ld b, $f9
    ld a, [bc]
    rst $30
    ld [bc], a
    rst $38
    rst $38
    ld a, [bc]
    rst $38
    add hl, bc
    rst $38
    inc bc
    cpl
    sbc $0f
    or $2e
    push de
    xor [hl]
    ld d, c
    adc [hl]
    ld [hl], l
    sbc [hl]
    ld h, e
    xor [hl]
    rst $10
    xor a
    ld e, b
    xor a
    ld a, [hl]
    ld l, a
    cp a
    rst $38
    cp a
    rst $38
    dec b
    rst $38
    rlca
    inc bc
    rst $38
    ld b, $ff
    ccf
    rst $38
    nop
    rst $38
    db $10
    rst $28
    ld [hl], e
    adc h
    ld a, d
    add l
    ldh a, [rIF]
    cpl
    rst $38
    pop hl
    rst $38
    pop bc
    cp $83
    cp $03
    cp $07
    rst $38
    inc bc
    rst $38
    ld bc, $ffff
    nop
    cp $01
    ld e, a
    and b
    dec bc
    db $f4
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    rst $10
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rra
    rst $38
    rrca
    rst $38
    inc c
    rst $38
    inc b
    rst $38
    nop
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
    cp $ff
    push af
    rst $38
    ret c

    rst $38
    add hl, hl
    rst $38
    ld bc, $10ff
    rst $38
    ld de, $80ff
    rst $38
    ld b, c
    rst $38
    dec b
    rst $38
    add c
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    db $10
    db $fc
    nop
    db $f4
    nop

jr_084_7595:
    db $fc
    nop
    ld hl, sp+$00
    ret c

    nop
    add sp, $30
    call z, $f00e
    ld [hl+], a
    call c, $f708
    adc l
    ld [hl], d
    inc c
    ld a, [c]
    ld hl, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [c]
    dec c
    add c
    ld a, [hl]
    jr nz, jr_084_7595

    ld e, b
    and a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $ffff
    nop
    rst $38
    inc bc
    rst $38
    ei
    ld [hl], l
    xor d
    ld [hl], b
    rst $28
    ld [hl], b
    xor a
    ld [hl], h
    bit 7, h
    and a
    sbc c
    ld h, a
    add hl, sp
    sbc $01
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    rst $38
    dec l
    ld [hl], e
    add hl, sp
    rst $28
    add hl, hl
    rst $30
    ld h, c
    cp a
    add c
    ld a, a
    ld bc, $08fe
    rst $30
    add b
    ld a, a
    add [hl]
    ld sp, hl
    ld [bc], a
    cp a
    inc l
    db $d3
    ld h, $d9
    dec bc
    or $0b
    rst $38
    adc a
    ld [hl], e
    xor a
    ld d, a
    xor a
    ld [hl], e
    xor a
    ld d, e
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $18
    rst $38
    rst $08
    rst $28
    rra
    rst $38
    adc a
    rst $28
    ei
    rst $38
    ld l, e
    rst $38
    rst $28
    rst $38
    ei
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
    ld c, $ff
    jp nz, $bc3d

    ld b, e
    ld b, c
    and d
    nop
    ld [c], a
    db $fd
    rst $20
    rst $38
    add h
    ld a, [$f504]
    ld [$08ff], sp
    xor $10
    rst $38
    or b
    rst $18
    ldh a, [rP1]
    ldh a, [$e0]
    db $10
    ret nc

    ld a, [hl+]
    cp c
    ld b, [hl]
    dec a
    jp nz, $c0bf

    inc c
    di
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    sub d
    rst $38
    sbc a
    rst $38
    rrca
    rst $38
    cp a
    rst $38
    rlca
    rst $38
    dec b
    rst $38
    ld [bc], a
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
    ld [$08ff], sp
    rst $38
    ld [$00ff], sp
    rst $38
    db $10
    rst $38
    inc d
    ei
    ld d, $f9
    sbc a
    ld [hl], b
    dec bc
    db $f4
    dec c
    ld a, [c]
    cpl
    ldh a, [$3d]
    ld [c], a
    inc a
    db $e3
    ld e, $e1
    inc e
    db $e3
    ld e, [hl]
    pop hl
    ld d, [hl]
    jp hl


    ld b, c
    nop
    nop
    ld b, b
    ld bc, $0040
    ld b, c
    nop
    ld b, c
    ld bc, $2000
    ld bc, $2100
    adc b
    dec h
    jp nz, $cb31

    jr nz, jr_084_76e5

    ld bc, $d12e
    ld h, l
    ld a, [de]
    adc [hl]
    ld [hl], c
    nop
    rst $38
    rst $28
    db $10
    rst $20
    jr @+$03

    cp $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    and a
    rst $38
    rst $38
    cpl
    rst $38
    rst $38
    rst $18
    xor a
    rst $08
    or c
    sub a
    ld a, l
    ld [$5cf7], sp
    rst $38
    add hl, sp
    sub $80
    rst $38
    call z, $ccbb
    or a
    adc a
    db $fd
    rst $08
    push af
    ld l, a
    rst $10
    rst $08
    scf
    ld b, a
    cp l
    dec sp
    sub $1b
    db $ec
    add hl, de

jr_084_76e5:
    rst $28
    xor a
    ld a, c
    ld c, e
    cp [hl]
    ld l, a
    cp c
    ccf
    ret c

    ei
    cp h
    cp l
    or $5f
    xor d
    xor [hl]
    ld a, c
    cp e
    adc $bb
    rst $08
    ei
    xor l
    cp $f9
    rst $38
    ld [$ffff], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp e
    rst $38
    di
    rst $38
    or [hl]
    rst $38
    cp d
    rst $38
    cp a
    ld a, d
    rst $38
    cp e
    rst $38
    rst $30
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
    pop af
    rst $38
    sbc d
    rst $38
    nop
    rst $38
    or $09
    ld h, [hl]
    add hl, de
    nop
    db $10
    ldh [rNR41], a

jr_084_7732:
    jr nz, jr_084_7754

    ld h, c
    jr nz, jr_084_7778

    jr nz, jr_084_7732

    ld bc, $016a
    pop af
    ld bc, $41fe
    ld a, a
    ld b, c
    cp $41
    ld a, a
    rst $30
    cp e
    rst $38
    add c
    rst $38
    add c
    rst $38
    add e
    rst $38
    db $e3
    rst $38
    ld [$00f7], sp
    rst $38

jr_084_7754:
    nop
    rst $38
    nop
    rst $38
    pop bc
    rst $38
    db $eb
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    ld b, e
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
    nop
    rst $38

jr_084_7778:
    nop
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ld [bc], a
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    ld [bc], a
    rst $38
    inc b
    ei
    add b
    ld a, a
    nop
    inc b
    ld a, [bc]
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [$0803], sp
    ld h, c
    ld [$0821], sp
    ld h, e
    ld [$0810], sp
    ret z

    jr nz, @-$0b

    ld [$007b], sp
    daa
    ld d, b
    cpl
    ret nc

    inc b
    ei
    nop
    rst $38
    ld b, c
    ld bc, $01a7
    adc a
    nop
    rst $38
    nop
    cp $03
    cp $03
    cp $17
    cp $43
    db $fc
    rst $38
    db $fc
    rst $38
    sub $ff
    ld d, h
    rst $38
    ld b, l
    db $fc
    db $10
    db $fc
    ld de, $34fc
    rst $38
    ld [hl], h
    cp a
    ld [hl], h
    rst $38
    ld [hl], h
    xor a
    db $fc
    ld [hl], a
    db $fc
    ld [hl], a
    db $fc
    ld a, e
    db $fc
    ld [hl], a
    db $fc
    ld [hl], e
    ld a, h
    rst $30
    ld a, h
    rst $38
    db $fc
    ld e, a
    db $fc
    sbc e
    db $fc
    rst $18
    db $fc
    ld e, e
    db $fc
    ld a, e
    ld hl, sp-$01
    db $fc
    ei
    ld hl, sp-$11
    ld hl, sp-$01
    ld hl, sp-$11
    db $fc
    ei
    ld hl, sp-$01
    ei
    db $fc
    db $fc
    rst $38
    ld hl, sp-$01
    db $fc
    ei
    ld hl, sp-$01
    db $fd
    rst $38
    db $fc
    rst $38
    cp $fd
    cp $f9
    rst $38
    add sp, -$01
    add sp, -$01
    ld hl, sp-$01
    ld hl, sp-$03
    ld a, [$d6f9]
    push af
    ld a, [$fffc]
    cp $fd
    or b
    rst $38
    ld d, b
    rst $38
    ld d, b
    rst $38
    ldh a, [rIE]
    ld b, $ff
    sub h
    ld l, a
    inc b
    cp a
    inc b
    scf
    rst $38
    rlca
    rst $38
    rlca
    xor a
    rlca
    rst $00
    rlca
    sbc a
    inc bc
    rrca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    add e
    inc bc
    add a
    inc bc
    rst $20
    inc bc
    rst $28
    inc bc
    di
    sbc a
    ld b, c
    rst $38
    ld bc, $01ff
    rst $38
    rst $38
    ld bc, $817f
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld b, $ff
    ld [bc], a
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ccf
    ld [$0c3f], sp
    ccf
    jp z, $ca3f

    ccf
    dec c
    ld a, a
    add hl, bc
    ld a, a
    inc c
    ld a, a
    ld e, $7f
    add hl, bc
    rst $38
    ld b, $ff
    ld [$9cff], sp
    rst $38
    adc l
    rst $38
    adc $ff
    ld h, $ff
    dec h
    sbc $15
    adc $1d
    or $06
    db $fd
    ld b, $fd
    dec b
    ld a, [$ff01]
    inc d
    db $eb
    inc h
    db $db
    ld bc, $81be
    cp $80
    ccf
    nop
    sbc a
    ld bc, $018e
    rrca
    ld bc, $049f
    ld a, e
    db $10
    ld l, a
    inc d
    ld a, e
    add hl, de
    ld h, [hl]
    add hl, de
    and $19
    and $10
    rst $38
    ld a, [hl-]
    db $dd
    dec sp
    call nc, $e71a
    ld c, b
    or a
    ld a, [de]
    push af
    add hl, sp
    sub $1a
    rst $28
    ld a, [hl-]
    push bc
    ld a, [de]
    push hl
    ld d, b
    xor a
    ld a, [hl-]
    rst $20
    ld l, d
    sub l
    ld e, d
    and l
    ld a, [de]

jr_084_78e9:
    push af
    ld de, $3bee
    call nc, $b05f
    jr jr_084_78e9

    ld de, $11fe
    cp $3b
    and $77
    xor c
    scf
    db $dd
    dec [hl]
    jp z, $7b15

    ccf
    ld b, c
    or a
    ld e, c
    db $dd
    ld a, [hl+]
    ei
    ld c, h
    db $fd
    ld a, [hl-]
    rst $38
    dec [hl]
    rst $38
    ld a, l
    db $fd
    ld a, $ff
    ld a, $fe
    ccf
    ld a, a
    or [hl]
    rst $38
    dec sp
    ld a, a
    sbc e
    ld a, a
    sbc c
    cp a
    ld d, c
    ld a, a
    and h
    ld hl, $40fe
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld a, [hl+]
    db $fd
    ld c, c
    cp $49
    cp $6b
    call c, Call_000_38ef
    ld a, a
    xor b
    rst $38
    ld e, d
    ei
    ld d, h
    ei
    ld l, h
    rst $28
    or b
    cp $97
    or $df
    or $8b
    cp $91
    rst $38
    ret nc

    rst $30
    db $fc
    rst $38
    call nc, $f1fe
    push af
    jp c, $f2fd

    rst $30
    db $fc
    push af
    ei
    or $f9
    db $fd
    ld a, [c]
    db $fd
    di
    rst $38
    db $f4
    db $fd
    or $ff
    ld [hl], h
    db $fd
    ld a, [c]
    db $fd
    ld a, [hl]
    db $fd
    ld a, [hl]
    db $fd
    ld a, [hl]
    db $fc
    ld a, a
    rst $28

jr_084_796d:
    ld a, h
    rst $38
    ld c, h
    ld a, [$dd6d]
    ld a, d
    rst $30
    inc a
    cp $2f
    and $3f
    xor $77
    rst $30
    ld a, $ef
    ld [hl], $04
    ld sp, hl
    and b
    ld e, a
    nop
    rst $38
    nop
    rst $38
    nop
    cp $10
    db $ed
    jr nz, jr_084_796d

    nop
    rst $38
    ld [bc], a
    db $fd
    dec b
    ld a, [$f40b]
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ld bc, $00fe
    ei
    nop
    ei
    nop
    ei
    jr nz, @-$1f

    nop
    ei
    ld [bc], a
    ld sp, hl
    nop
    ei
    nop
    rst $38
    nop
    rst $38
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
    add b
    ld [hl], a
    nop
    rst $38
    add b
    ld a, a
    add h
    ld a, e
    ret nz

    ccf
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
    rst $28
    add b
    ld l, a
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    add b
    ld l, a
    add b
    ld l, a
    add b
    ld l, a
    nop
    rst $28
    nop
    rst $38
    add b
    ld a, a
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
    inc b
    ei
    add h
    ld a, e
    add h
    ld a, e
    add h
    ld a, e
    add b
    rst $38
    call nz, $c4fb
    ei
    db $e4
    ei
    ldh a, [$6f]
    ld [hl], b
    ld a, a
    jr c, jr_084_7a67

    ld hl, sp+$1f
    sbc h
    dec de
    call c, $ce0f
    rrca
    and [hl]
    ld e, a
    or a
    ld b, a
    db $d3
    cpl
    rst $10
    inc hl
    jp hl


    inc de
    push bc
    add hl, sp
    ld d, h
    and e
    ld [hl-], a
    ret z

    ld e, c
    add b
    call c, $5800
    add b
    inc [hl]
    ret nz

    ld a, $c0
    inc l
    ret nz

    sbc [hl]
    ld h, b
    ld d, $e0
    rla
    ldh [rNR34], a
    ldh [rNR30], a
    ldh a, [$3b]
    ret nz

    ld [hl], a
    adc b
    ld d, a
    and b
    ld d, l
    xor b
    ld h, e
    call c, $c873
    ld [hl], d
    xor h
    ld h, e
    sbc [hl]
    ld h, e

jr_084_7a67:
    cp h
    ld h, e
    sbc h
    db $e3
    dec e
    ld h, a
    cp c
    ld l, e
    sub l
    db $e3
    inc a
    ld h, e
    sbc h
    ld h, d
    cp l
    and $7d
    rst $20

jr_084_7a79:
    ld hl, sp-$19
    jp c, $fce7

    rst $20
    db $fc
    ld b, d
    cp l
    ld c, d
    or l
    ld c, d
    or l
    swap h
    swap h
    swap h
    swap h
    ld b, e
    cp h
    nop
    cp h
    nop
    inc a
    nop
    ld a, $00
    jr c, jr_084_7aa1

    ld [hl], b
    ld [$0065], sp
    ld e, b
    ld [$0852], sp

jr_084_7aa1:
    pop hl
    nop
    ld sp, hl
    ld [$08fb], sp
    di
    ld [$08f1], sp
    di
    nop
    ld sp, hl
    nop
    ei
    db $10
    rst $28
    add b
    ld a, a
    sub b
    ld l, a
    sub b
    ld l, a
    sub b
    ld l, a
    sub b
    ld a, a
    sub b
    ld e, a
    db $10
    rst $38
    db $10
    rst $28
    db $10
    rst $38
    ld de, $10fe
    rst $28
    db $10
    rst $28
    db $10

jr_084_7acb:
    rst $28
    ld de, $10ee
    rst $28

jr_084_7ad0:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_084_7a79

    nop
    cp a
    jr nz, @-$5f

    jr nz, @-$3f

    ld [hl+], a
    sbc l
    ld [hl+], a
    db $fd
    ld [hl+], a
    db $fd
    ld [hl+], a
    cp l
    ld [hl+], a
    db $fd
    jr nz, jr_084_7acb

    jr nz, @-$1f

    ld [bc], a
    push af
    jr nz, jr_084_7ad0

    nop
    cp $20
    db $dd
    inc b
    ld hl, sp+$44
    cp d
    ld b, h
    cp a
    ld b, h
    ei
    ld b, h
    ei
    ld b, h
    ld a, a
    ld b, h
    cp a
    ld d, h
    db $eb
    ld b, h
    rst $38
    ld d, h
    rst $28
    ld b, h
    ei
    ld b, l
    ld a, [$ff40]
    ld c, b
    or a
    ld c, b
    or a
    ld [$08f7], sp
    rst $38
    adc b
    ld a, a
    adc b
    ld a, a
    adc b
    ld a, a
    adc b
    rst $38
    sbc d
    db $ed
    adc b
    rst $38
    adc b
    or $90
    xor $88
    or $90
    rst $28
    adc b
    rst $30
    adc b
    rst $30
    sub b
    ld l, a
    sub b
    ld l, a
    sub b
    rst $28
    sub b
    rst $38
    call nc, $f0fb
    rst $18
    ldh a, [rIE]
    ld hl, sp-$09
    ldh a, [$7f]
    ld a, b
    ld a, a
    db $fc
    dec sp
    ld a, h
    ccf
    ld a, h
    ccf
    ld e, [hl]
    rra
    ld a, a
    rrca
    ccf
    rrca
    rlca
    xor a
    rlca
    rra
    inc bc
    sbc a
    inc bc
    adc a
    ld bc, $01cb
    rst $28
    nop
    db $dd
    nop
    rst $30
    rst $38
    and c
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, h
    rst $38
    or $ff
    xor $ff
    push af
    nop
    rst $38
    nop
    cp $00
    sbc $40
    ei
    ld b, b
    db $eb
    ld b, b
    ei
    ld b, b
    rst $38
    ld b, b
    rst $38
    nop
    ld a, c
    nop
    ld a, c
    nop
    ld e, e
    ld b, b
    dec bc
    ld b, b
    dec bc
    ld c, b
    ld d, e
    ld b, b
    db $db
    ld b, b
    db $db
    ld bc, $41da
    db $d3
    ld bc, $01d3
    ld [c], a

jr_084_7b98:
    ld bc, $01ea
    jp z, $df00

    add b
    ld e, a
    add b
    rst $18
    add b
    rst $18
    add b
    sub $80
    sub $80
    sub $80
    sub $80
    ld a, [c]
    add d
    ldh a, [$80]
    ld [hl], d
    add b
    halt
    cp $00
    and $00
    adc $00
    xor $00
    xor $00
    db $e4
    inc de
    db $ec
    rra
    ldh [$1f], a
    ldh [rNR31], a
    db $e4
    dec e
    ld [c], a
    dec bc
    db $f4
    dec sp
    call nz, $d42b
    nop
    ld b, [hl]
    nop
    rst $28
    nop
    ld l, [hl]
    nop
    ld c, [hl]

jr_084_7bd8:
    nop
    inc c
    ld [$0844], sp
    ld h, b
    ld [$0844], sp
    ld b, h

jr_084_7be2:
    ld [$085c], sp
    call nc, Call_084_5408
    ld [$08d1], sp
    reti


    ld [$18d4], sp
    call nz, $c418
    ld [$18b0], sp
    and b
    jr jr_084_7b98

    db $10
    xor b

jr_084_7bfa:
    db $10
    ld a, h
    db $10
    cp h
    nop
    ret c

    dec c
    ld a, [c]
    inc e
    di

jr_084_7c04:
    rrca
    ldh a, [$5f]
    and b
    dec c
    ld a, [c]
    and b
    ld e, a
    ld c, h
    or e
    ld b, $f9
    jr nz, jr_084_7be2

    jr nz, @-$1e

    jr nz, jr_084_7bd8

    jr nz, jr_084_7bfa

    jr nz, jr_084_7c04

    jr nz, @-$3a

    nop
    xor $00
    ld [$6600], a
    nop
    and $00
    push hl
    ld b, b
    and a
    ld b, b
    rst $30
    ld b, b
    cp a
    ld b, b
    rst $00
    ld b, b
    rst $08
    ld b, b
    rst $08
    ld b, b
    rst $10
    ld b, b
    rst $08
    ld b, b
    sbc a
    ld b, b
    sbc e
    nop
    db $db
    nop
    ei
    nop
    rst $38
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
    rst $38
    add b
    rst $38
    add b
    ld e, a
    add b
    rst $38
    ret nz

    rst $38
    ret nc

    rst $28
    ldh [rIE], a
    ldh a, [$ef]
    pop af
    cp $f1
    cp $f9
    rst $38
    ld a, l
    rst $38
    ld a, l
    rst $38
    dec a
    ld a, a
    ccf
    rst $38
    rra
    ccf
    rra
    ld a, a
    rrca
    ld e, a
    rrca
    rra
    rlca
    ccf
    rlca
    ld c, a
    rlca
    rst $10
    inc bc
    xor a
    inc bc
    ld l, e
    ld bc, HeaderCartridgeType
    and l
    nop
    rst $30
    add b
    pop hl
    add b
    pop hl
    add b
    ld b, c
    add b
    ld h, c
    nop
    jp $c300


    nop
    add e
    nop
    add e
    nop
    adc e
    nop
    inc bc
    ld bc, HeaderLogo
    add l
    ld bc, $010e
    rrca
    ld bc, $010f
    rrca
    ld bc, $011f
    rra
    ld bc, $019f
    rra
    ld bc, $001f
    ccf
    ld [bc], a
    dec e
    nop
    ld e, $00
    ld a, [bc]
    nop
    add hl, bc
    nop
    ld bc, $2300
    ld [bc], a
    ld h, $00
    nop
    nop
    nop
    ld [bc], a
    ld bc, $6702
    ld [bc], a
    db $76
    ld [bc], a
    ld [hl-], a
    ld [bc], a
    dec bc
    ld [bc], a
    ld c, d
    ld [bc], a
    ld e, b
    nop
    ld b, b
    nop
    nop
    nop
    stop
    nop
    nop
    nop
    nop
    ld b, $04
    ld [de], a
    inc b
    ld d, $04
    rrca
    inc b
    ld e, [hl]
    inc c
    ld b, [hl]
    inc c
    ld c, $08
    adc [hl]
    ld [$00cc], sp
    call z, $8100
    nop
    add c
    nop
    add e
    ld [bc], a
    add h
    inc b
    ld b, d
    nop
    ld c, $00
    inc c
    nop
    inc h
    nop
    ld b, h
    nop
    ld e, c
    nop
    ld a, c
    db $10
    pop hl
    db $10
    cp c
    db $10
    cp c
    db $10
    cp h
    db $10
    inc a
    db $10
    ld a, $10
    ld e, $00
    ld c, $d9
    ld h, $f8
    daa
    and l
    ld a, d
    and [hl]
    ld a, c
    and [hl]
    ld a, c
    and c
    ld a, [hl]
    and c
    ld a, [hl]
    and b
    ld a, a
    ld h, b
    ccf
    ld h, b
    ld a, e
    ld h, b
    add hl, sp
    ld h, b
    ret c

    ld h, b
    db $dd
    ld h, b
    ei
    ld h, b
    db $dd
    ld h, b
    sbc l
    ld h, b
    rst $18
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
    cp a
    add b
    ld a, a
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    add b

jr_084_7d47:
    rst $38
    add b

jr_084_7d49:
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

    cp a
    add b
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
    jr nz, jr_084_7d47

    jr nz, jr_084_7d49

    add b
    ld a, a
    add b
    rst $38
    ret nz

    rst $38
    ldh [$df], a
    pop hl
    cp $f0
    rst $28
    pop af
    cp $f9
    cp $f9
    cp $fd
    rst $38
    rst $38
    db $fd
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
    jr jr_084_7db3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_084_7dc3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_084_7dd3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_084_7de3

    ld [hl-], a

jr_084_7db3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_084_7df3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_084_7dc3:
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

jr_084_7dd3:
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

jr_084_7de3:
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

jr_084_7df3:
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
    jr jr_084_7eb3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_084_7ec3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_084_7ed3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_084_7ee3

    ld [hl-], a

jr_084_7eb3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_084_7ef3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    dec b
    dec b
    dec b

jr_084_7ec3:
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    nop
    ld [bc], a
    dec b
    dec b
    dec b
    dec b

jr_084_7ed3:
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    dec b
    dec b
    rlca
    rlca
    rlca

jr_084_7ee3:
    rlca
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    rlca
    rlca
    rlca

jr_084_7ef3:
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    rlca
    ld b, $06
    ld b, $06
    ld bc, $0707
    rlca
    dec b
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0606
    ld b, $06
    ld bc, $0505
    dec b
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld bc, $0606
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0601
    inc bc
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
    nop
    rlca
    ld bc, $0701
    rlca
    inc b
    ld [bc], a
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
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
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
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
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    dec b
    dec b
    rlca
    rlca
    dec b
    dec b
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
    dec b
    rlca
    rlca
    rlca
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
    nop
    rlca
    rlca
    ld bc, $0707
    rlca
    dec b
    ld [bc], a
    dec b
    dec b
    nop
    nop
    nop
    nop
    ld [bc], a
    ld b, $01
    ld bc, $0101
    ld bc, $0701
    nop
    nop
    dec b
    dec b
    rlca
    ld [bc], a
    dec b
    dec b
    add hl, bc
    add hl, bc
    ld c, $0e
    add hl, bc
    rrca
    rrca
    rrca
    dec c
    dec c
    ld [$0d0a], sp
    dec c
    dec c
    dec c
    rrca
    rrca
    rrca
    add hl, bc
    rrca
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    rrca
    rrca
    rrca
    rrca
    rrca
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld a, [bc]
    ld a, [bc]
    rrca
    rrca
    rrca
    add hl, bc
    rrca
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld a, [bc]
