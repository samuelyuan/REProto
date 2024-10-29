SECTION "ROM Bank $09d", ROMX[$4000], BANK[$9d]

    rst $38
    nop
    ccf
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    db $e3
    inc e
    db $e3
    inc e
    rst $30
    ld [$48b7], sp
    rst $38
    nop
    rst $38
    nop
    cp c
    ld b, [hl]
    db $fd
    ld [bc], a
    rst $38
    nop
    ei
    inc b
    ei
    inc b
    ld [hl], e
    adc h
    ld [hl], a
    adc b
    db $e3
    inc e
    push hl
    ld a, [de]
    db $fc
    inc bc
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    push af
    ld a, [bc]
    rst $38
    nop
    ld l, a
    sub b
    ld a, e
    add h
    ld a, a
    add b
    cp $01
    rst $30
    ld [$09f6], sp
    rst $00
    jr c, @+$01

    nop
    rst $28
    db $10
    cp $01
    db $e3
    inc e
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
    rst $38
    nop
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$00ff], sp
    db $ed
    ld [de], a
    db $fd
    ld [bc], a
    ld a, [c]
    dec c
    or d
    ld c, l
    rra
    nop
    ld sp, hl
    rlca
    sbc c
    rst $38
    inc sp
    rst $38
    ld [hl], e
    rst $38
    ld h, [hl]
    rst $38
    and $ff
    rst $08
    ldh a, [rP1]
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
    rst $38
    nop
    rst $38
    nop
    ret nz

    ccf
    ccf
    ret nz

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
    nop
    rst $38
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
    and b
    ld e, a
    and b
    ld e, a
    add b
    ld a, a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc h
    ld [hl], e
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    or d
    ld c, l
    or [hl]
    ld c, c
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$44bb], sp
    push hl
    ld a, [de]
    pop af
    ld c, $6d
    sub d
    db $d3
    inc l
    db $db
    inc h
    di
    inc c
    sub e
    ld l, h
    db $db
    inc h
    cp e
    ld b, h
    ei
    inc b
    ccf
    ret nz

    rra
    ldh [$7f], a
    add b
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
    ei
    inc b
    rst $38
    nop
    rst $30
    ld [$00ff], sp
    rst $18

jr_09d_4141:
    jr nz, jr_09d_4141

    ld bc, $23dc
    db $fc
    inc bc
    ld a, h
    add e
    ld a, b
    add a
    add sp, $17
    ret z

    scf
    ret z

    scf
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
    ei
    rrca
    sbc d
    rst $38
    or [hl]
    rst $38
    dec [hl]
    rst $38
    ld l, l
    rst $38
    ld l, a
    ei
    rst $38
    ld h, $ff
    ld c, $44
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    ldh [rIE], a
    nop
    rra
    ldh [rIE], a
    nop
    rst $38
    nop
    cp $01
    nop
    rst $38
    add b
    ld a, a
    ldh [$1f], a
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
    nop
    ccf
    nop
    rrca
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    cp $00
    rst $38
    and c
    pop hl
    and c
    pop hl
    and c
    pop hl
    and c
    pop hl
    and c
    pop hl
    and c
    pop hl
    and c
    pop hl
    or c
    pop hl
    or c
    pop hl
    or c
    pop hl
    or c
    pop hl
    or c
    pop hl
    or e
    pop hl
    cp e
    pop hl
    xor e
    pop af
    xor e
    pop af
    xor e
    pop af
    xor e
    pop af
    xor e
    pop af
    xor a
    pop af
    xor e
    pop af
    xor e
    pop af
    xor e
    pop af
    xor e
    pop af
    xor a
    pop af
    xor e
    pop af
    xor a
    pop af
    xor a
    pop af
    xor e
    pop af
    xor a
    pop af
    xor a
    pop af
    xor e
    pop af
    xor a
    pop af
    xor e
    pop af
    xor e
    pop af
    xor e
    pop af
    xor a
    pop af
    xor a
    pop af
    xor e
    pop af
    xor a
    pop af
    xor a
    pop af
    xor a
    pop af
    cp e
    pop hl
    cp e
    pop hl
    cp e
    pop hl
    cp d
    pop hl
    cp d
    pop hl
    ld a, e
    pop hl
    ld a, d
    pop hl
    ld a, e
    pop hl
    ld a, d
    pop hl
    ld a, d
    pop hl
    ld a, d
    pop hl
    ld a, d
    ldh [$78], a
    ld [c], a
    ld a, c
    ld [c], a
    ld e, b
    ld [c], a
    ld a, c
    jp nz, $c271

    ld [hl], c
    jp nz, $c271

    ld [hl], c
    jp nz, $c271

    ld [hl], c
    jp nz, $c261

    ld h, c
    jp nz, $c261

    ld h, c
    jp nz, $c241

    ld b, c
    jp nz, $c241

    ld b, c
    jp nz, $c241

    ld b, c
    jp nz, $c241

    ld b, c
    jp nz, $c243

    ld b, d
    jp nz, $c242

    ld b, d
    jp nz, $c243

    ld b, e
    jp nz, $c242

    ld h, e
    jp nz, $c263

    ld d, e
    ld [c], a
    ld d, c
    db $e3
    ld d, c
    db $e3
    call $cdf3
    di
    push bc

jr_09d_4265:
    ei
    push bc
    ei
    jp $ffff


    rst $38
    ccf
    rst $38
    ld b, b
    rst $38
    inc bc
    db $fc
    inc bc
    db $fc
    rra
    ldh [rIE], a
    nop
    rst $38
    nop
    cp $01
    rst $38
    nop
    ret nz

    ccf

jr_09d_4280:
    nop
    rst $38

jr_09d_4282:
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    inc bc
    db $fc
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
    ld a, a
    nop
    rra
    nop
    rlca
    nop
    ld bc, $0000
    nop
    ret nz

    rst $38
    jr nc, @-$3f

    ld [hl], b
    rst $38
    jr nc, jr_09d_4265

    ld [hl], b
    cp h
    ld [hl], b
    ld hl, sp+$30
    or b
    ld [hl], b

jr_09d_42ae:
    and b
    ld h, b

jr_09d_42b0:
    ldh a, [rNR41]
    jr c, @+$62

    jr c, @+$62

    db $fc
    jr nz, jr_09d_4335

    jr nz, jr_09d_4339

    jr nz, jr_09d_433b

    jr nz, @+$01

    jr nz, jr_09d_4280

    jr nz, jr_09d_4282

    ld [hl], b
    ccf
    cp h
    rst $38
    ccf
    cp a
    ld a, a
    cp a
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a

jr_09d_42de:
    rst $38
    ld a, a

jr_09d_42e0:
    cp a
    ld a, a
    ld a, a
    cp a
    ccf
    rst $38
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a

jr_09d_42ec:
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a

jr_09d_42f2:
    cp a
    ld a, a

jr_09d_42f4:
    cp a
    ld a, a

jr_09d_42f6:
    cp a
    ld a, a

jr_09d_42f8:
    rst $38
    ccf

jr_09d_42fa:
    rst $38
    ccf

jr_09d_42fc:
    rst $38
    cpl
    rst $38
    daa
    rst $38
    ld hl, $28d7
    rst $18
    jr nz, jr_09d_42de

    jr z, @-$01

    ld [hl+], a
    rst $18
    jr nz, jr_09d_42ec

    jr nz, jr_09d_42ae

    jr nz, jr_09d_42b0

    jr nz, jr_09d_42f2

    jr nz, jr_09d_42f4

    jr nz, jr_09d_42f6

    jr nz, jr_09d_42f8

    jr nz, jr_09d_42fa

    jr nz, jr_09d_42fc

    jr nz, @+$01

    jr nz, jr_09d_42e0

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

jr_09d_4327:
    jr nz, jr_09d_4327

    ld hl, $23fc
    inc a
    inc hl
    inc a
    inc hl
    cp h
    inc hl

jr_09d_4332:
    db $fc
    inc hl

jr_09d_4334:
    cp h

jr_09d_4335:
    inc hl
    cp h
    inc hl
    cp h

jr_09d_4339:
    inc hl
    db $fc

jr_09d_433b:
    inc hl
    ld a, h
    and e
    dec a
    ld [c], a
    db $eb
    jr nz, jr_09d_4332

    jr nz, jr_09d_4334

    jr nz, @+$01

    jr nz, @+$01

jr_09d_4349:
    jr nz, @+$01

    jr nz, jr_09d_4349

    inc hl
    ld sp, hl
    ccf
    ei
    ccf
    di
    ccf
    rst $38
    ld a, $ff
    ld hl, sp-$01
    rst $38
    rst $38
    db $fc
    rst $38
    ld a, [c]
    rst $38
    nop
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    ld hl, sp+$07
    nop
    rst $38
    nop
    rst $38
    ld hl, sp+$07
    rlca
    ld hl, sp-$01
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    add hl, sp
    add $07
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
    ld a, a
    nop
    rra
    rst $38
    ld a, a
    rst $38
    ccf
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
    inc bc
    ld bc, $0301
    ld bc, $0103
    rlca
    ld bc, $000f
    adc a
    nop
    sbc a
    ld bc, $1fff
    rst $38
    rst $38
    rst $38
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
    sbc [hl]
    pop hl
    sub [hl]
    jp hl


    sub b
    rst $28
    pop de
    xor [hl]
    pop bc
    cp [hl]
    push bc
    cp d
    sbc e
    db $e4
    rst $38
    nop
    or [hl]
    ld c, c
    rst $38
    nop
    ld l, a
    sub b
    db $dd
    ld [hl+], a
    ld a, a
    add b
    rst $10

jr_09d_43e1:
    jr z, jr_09d_43e1

    ld bc, $a55a
    ret c

    daa
    ld d, b
    xor a
    nop
    rst $38
    ld [bc], a
    db $fd
    ld a, [bc]
    push af
    ld c, b
    or a
    ld l, b
    sub a
    add hl, de
    and $19
    and $11
    xor $10
    rst $28
    ld d, b
    xor a
    ld d, b
    xor a

Call_09d_4400:
    ld [$08f7], sp
    rst $30
    ld [$48f7], sp
    or a
    ret c

    daa
    ret c

    daa
    sub b
    ld l, a
    add h
    ld a, e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [$d50f]
    rst $38
    xor e
    rst $38
    ld a, a
    rst $38
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    inc b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    rra
    ldh [rP1], a
    rst $38
    nop
    rst $38
    inc bc

Call_09d_443b:
    db $fc
    inc bc
    db $fc
    rst $38
    nop
    rst $38
    nop
    rrca
    ldh a, [rIE]
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
    nop
    ret nz

    ccf
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
    rst $38
    rst $38
    cp $fe
    pop hl
    pop hl
    ccf

jr_09d_446f:
    ccf
    ldh a, [$f0]
    xor a
    xor a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_09d_4488:
    rst $38
    rst $38

jr_09d_448a:
    rst $38
    rst $38

jr_09d_448c:
    rst $38
    rst $38
    sbc a
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_09d_449d:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$20
    ret c

    daa
    ret c

    jr nz, jr_09d_4488

    jr nz, jr_09d_448a

    jr nz, jr_09d_448c

    and b
    ld e, b
    ldh a, [$08]
    or b
    ld c, b
    ld hl, sp+$00
    ret c

    jr nz, jr_09d_446f

    ld c, b
    add sp, $10
    ret c

    jr nz, jr_09d_449d

    jr nz, jr_09d_446f

    ld d, b
    xor b
    ld d, b
    ld c, b
    or b
    ld [$08f0], sp
    ldh a, [$88]
    ld [hl], b
    nop
    ld hl, sp+$10
    add sp, $10
    add sp, $00
    ld hl, sp-$80
    ld a, b
    add b
    ld a, b
    add b
    ld a, b
    add b
    ld a, b
    add b
    ld a, b
    add b
    ld a, b
    nop
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$06
    ld hl, sp+$07
    ld hl, sp-$08
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    rst $38
    rlca
    rst $10

jr_09d_44f9:
    ccf
    xor a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $00
    rst $38
    rlca
    ld hl, sp-$01
    nop
    ld bc, $00fe
    rst $38
    rst $38
    nop
    ld [bc], a
    db $fd
    rst $38
    nop
    rst $38
    nop
    jp hl


    ld d, $ff
    nop
    db $fc
    inc bc
    sub a
    ld l, b
    rst $38
    nop
    sbc a
    ld h, b
    rst $38
    nop
    jr c, jr_09d_44f9

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
    ei
    ei
    rst $30
    rst $30
    push af
    push af
    push af
    push af
    ldh [$e0], a
    dec d
    dec d
    db $f4
    db $f4
    add c
    add c
    ld [hl], l
    ld [hl], l
    push af
    push af
    push af
    push af
    push af
    push af
    db $fd
    db $fd
    ld a, [$fafa]
    ld a, [$fafa]
    rst $38
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
    rst $28
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    cp a
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
    rst $18
    ccf
    rra
    ld a, a
    ccf
    ld [hl], b
    jr c, jr_09d_45fb

    ld [hl], b
    ldh [$60], a
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld e, a
    ld b, b
    ld d, b
    ld c, a
    ld d, a
    ld c, b
    ld d, a
    ld c, c
    ld d, a
    ld c, c
    ld d, a
    ld c, b
    ld d, a
    ld c, b
    ld d, a
    ld c, b
    ld d, a
    ld c, b
    ld d, a
    ld c, b
    ld d, a
    ld c, b
    ld d, a
    ld c, b
    ld d, a
    ld c, b
    ld d, a
    ld c, b
    ld d, a
    ld c, b
    ld d, a
    ld c, b
    ld d, a
    ld c, b
    ld d, a
    ld c, b
    rst $30
    add sp, -$20
    rst $38
    rst $38
    rst $38
    rst $38

jr_09d_45cd:
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
    rlca
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [$e7], a
    jr @+$01

    nop
    rst $38
    nop
    ldh a, [rIF]
    rst $38
    nop
    jr nz, jr_09d_45cd

    rst $38
    nop
    rst $38
    nop
    ld e, a
    and b
    swap h
    adc e
    ld [hl], h
    rst $38
    nop
    rst $38

jr_09d_45fb:
    nop
    rst $38
    nop
    rst $38
    nop
    ld c, a
    or b
    rst $38
    nop
    ld h, b
    sbc a
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
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push af
    push af
    rrca
    rrca
    rst $38
    rst $38
    jp Jump_000_3fc3


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
    rst $38
    rst $38
    ld a, a
    ld a, a
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
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_09d_4680:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    jp $c300


    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    rst $20

jr_09d_4697:
    jr jr_09d_4680

    db $db
    rst $20
    db $db
    rst $20
    db $db
    rst $20
    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr jr_09d_4697

    add hl, de
    db $e4
    dec de
    ldh [$1f], a
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

jr_09d_46c0:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    ldh a, [rIF]
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    db $f4
    dec bc
    ld a, $c1
    cp $01
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    rst $38
    nop
    ld a, h
    add e
    rst $18
    jr nz, jr_09d_46c0

    jr z, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    rst $38
    inc bc
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
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    ld [$00ff], sp
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
    ld bc, $0100
    nop
    add c
    nop
    pop bc
    nop
    di
    add c
    ei
    pop bc
    rst $38
    pop hl
    rst $38
    pop af
    rst $38
    ld sp, hl
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
    db $fd
    jp $e3c1


    ret nz

    di
    ret nz

    ei
    ret nz

    rst $38
    ret nz

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
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    nop
    nop
    nop
    ld hl, sp-$10
    ld hl, sp+$10
    ld hl, sp-$70
    ld hl, sp-$70
    ld hl, sp+$10
    ld hl, sp+$10
    ld hl, sp+$10
    ld hl, sp+$10
    ld hl, sp+$18
    ld hl, sp+$18
    ld hl, sp+$38
    ld hl, sp+$38
    ld hl, sp+$38
    ld hl, sp+$78
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$06
    cp $07
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
    add b
    ld a, a
    nop
    rst $38
    ldh a, [rIF]
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ldh a, [rIF]
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    db $fc
    inc bc
    ccf
    ret nz

    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    inc b
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    ld [bc], a
    rst $38
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

    ld a, a
    ret nz

    rst $38
    ldh [$df], a
    ret nz

    rst $38
    call nz, $c0fb
    rst $38
    ldh [$df], a
    ld [c], a
    db $dd
    db $e4
    db $db
    ret nz

    rst $38
    call c, $d9e3
    and $db
    db $e4
    rst $38
    ret nz

    db $eb
    call nc, $d1ee
    db $ed
    jp nc, $c0ff

    rst $38
    ldh [$f7], a
    add sp, -$03
    ld [c], a
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [$fd], a
    ld [c], a
    rst $38
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
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    nop
    nop

jr_09d_4852:
    nop
    nop
    ld a, [hl+]
    nop
    ld a, e
    nop
    cp a
    add b
    rst $38
    ldh [$df], a
    ldh a, [$ef]
    ld hl, sp-$25
    cp $f6
    ld a, a
    db $fd
    rra
    ei
    rst $38
    cp $7f
    cp $0f
    rst $38
    rra
    rst $38
    ccf
    rlca
    rst $38
    rlca
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
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    jr nz, @+$01

    dec b
    rst $38
    nop
    rst $38
    ld c, b
    rst $38
    ld [bc], a
    rst $38
    db $10
    rst $38
    nop
    rst $38
    db $10
    rst $38
    add e
    rst $38
    rra
    rst $38
    ccf
    rst $38
    add b
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
    and b
    ld e, a
    and b
    ld e, a
    and b
    ld e, a
    sub c
    ld l, [hl]
    ld e, b
    and a
    ld e, c
    and [hl]
    ld d, l

Call_09d_48b7:
    xor d
    ld d, l
    xor d
    ld d, l
    xor d
    rst $28
    db $10
    rst $28
    db $10
    rst $08
    jr nc, jr_09d_4852

    ld [hl], b
    sbc a
    ld h, b
    sbc l
    ld h, d
    sbc l
    ld h, d
    sbc l
    ld h, d
    call c, $fe23
    ld bc, $00ff
    rst $38
    nop
    rst $30
    ld [$00ff], sp
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
    db $fd
    ld [bc], a
    ld sp, hl
    ld b, $f9
    ld b, $f1
    ld c, $d2
    dec l
    sub $29
    pop af
    ld c, $df
    jr nz, @-$70

    ld [hl], c
    inc c
    di
    sub b
    ld l, a
    ret


    nop
    rst $38
    nop
    rst $38
    add b
    ccf
    ldh [$6f], a
    ldh a, [$cf]
    ld hl, sp-$67
    cp $33
    rst $38
    and $ff
    call z, $f8ff
    rst $38
    pop af
    ld a, a
    ei
    rra
    rst $38
    rst $38
    cp $3f
    cp $3f
    rrca
    rst $38
    ld bc, $1fff
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ld bc, $0fff
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
    rlca
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    sbc [hl]
    rst $38
    rlca
    rst $38
    ldh [rIE], a
    add h
    rst $38
    ld bc, $9fff
    rst $38
    ccf
    pop de
    ccf
    pop de
    ccf
    pop de
    ccf
    pop de
    ccf
    pop de
    ccf
    pop de
    ccf
    pop de
    ccf
    ret


    ccf
    ret


    rra
    add sp, $1f
    add sp, $1f
    add sp, $1f
    add sp, $1f
    add sp, $1f
    add sp, $1f
    add sp, -$18
    rra
    add sp, $1f
    db $e4
    rra
    db $e4
    rra
    db $e4
    rra
    db $e4
    rra
    and h
    rra
    inc h
    rra
    db $e4
    rra
    db $f4
    rrca
    db $f4
    rrca
    ld [hl], h
    rrca
    ld [hl], h
    rrca
    ld d, h
    rrca
    or d
    rrca
    sub d
    rrca
    sub d
    rrca
    ld [de], a
    rrca
    ld [de], a
    rrca
    ld d, d
    rrca
    ld [hl], d
    rrca
    ld [hl-], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    ld [bc], a
    rrca
    add c
    rlca
    ld bc, $2107
    rlca
    ld bc, $0107
    rlca
    ld bc, $0107
    rlca
    ld bc, $0107
    rlca
    ld bc, $0107
    rlca
    ld bc, $0007
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
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
    ld c, b
    ld bc, $0108
    adc b
    ld bc, $01b2
    or [hl]
    ld bc, $01f6
    ld a, [$fe01]
    ld bc, $01f6
    sub $01
    cp [hl]
    ld bc, $01be
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
    ld a, a
    add b
    ld a, a
    ldh [$ef], a
    ldh a, [$c7]
    ld hl, sp-$79
    cp $0f
    rst $38
    ld e, $ff
    inc a
    rst $38
    ld a, b
    rst $38
    ldh a, [rIE]
    pop hl
    rst $38
    db $e3
    rst $38
    rst $30
    ld a, a
    rst $38
    rst $38
    rst $38
    ccf
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
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    dec b
    rst $38
    sub b
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ld e, $ff
    inc e
    rst $38
    inc a
    rst $38
    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

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
    ld e, $ff
    ld e, $ff
    ld c, $ff
    ld c, $ff
    adc [hl]
    rst $38
    adc [hl]
    rst $38
    adc [hl]
    rst $38
    adc [hl]
    rst $38
    adc [hl]
    rst $38
    adc [hl]
    rst $38
    adc a
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $00
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    di
    inc c
    ld sp, hl
    ld b, $f9
    add [hl]
    ld sp, hl
    add [hl]
    ld sp, hl
    add $f9
    and $f9
    or $f9
    cp $fd
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
    nop
    rst $38
    nop
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
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld e, $ff
    ld a, $ff
    inc a
    rst $38
    ld a, b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
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
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
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
    dec bc
    inc d
    dec d
    ld d, $17
    jr jr_09d_4bd4

    ld a, [de]
    dec bc
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_09d_4be5

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_09d_4bf5

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_09d_4c05

jr_09d_4bd4:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_09d_4c15

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_09d_4be5:
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld a, $4d
    ld a, $4e
    ld c, a

jr_09d_4bf5:
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld a, $56
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, l

jr_09d_4c05:
    ld e, l
    ld e, [hl]
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
    ld l, d

jr_09d_4c15:
    ld l, d
    ld l, d
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
    ld l, d
    ld l, d
    ld l, d
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    dec bc
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
    sub l
    sub [hl]
    sub a
    ld a, $98
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    sub e
    and b
    and c
    and d
    ld l, d
    ld l, d
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
    sub e
    xor l
    xor [hl]
    xor a
    or b
    or c
    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    ld l, d
    cp b
    cp c
    sub e
    sub e
    cp d
    cp e
    ld l, d
    ld l, d
    ld l, d
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    ld l, d
    jp nz, $c4c3

    sub e
    push bc
    add $c7
    ret z

    ret


    jp z, $cccb

    call Call_000_0bce
    rst $08
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
    dec bc
    dec bc
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_09d_4cf6

    ld a, [de]
    dec de
    dec bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0501
    dec b
    ld bc, $0101
    ld bc, $0100

jr_09d_4cf6:
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0705
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0705
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0501
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0745
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0501
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rlca
    rlca
    ld bc, $0105
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0701
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec b
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0501
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld b, $00
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld b, $00
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    dec b
    dec b
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0501
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
    add hl, bc
    nop
    nop
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
    add hl, bc
    add hl, bc
    add hl, bc
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld c, a
    rst $38
    ld c, $ff
    add [hl]
    rst $38
    ld [bc], a
    rst $38
    ld [de], a
    rst $38
    ld d, b
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
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
    ld [bc], a
    db $fd
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
    rst $38
    nop
    rst $38
    rlca
    rst $38
    inc b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    nop
    rst $38
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
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld bc, $02ff
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    di
    ld a, [bc]
    push af
    ld a, [bc]
    push af
    ld e, d
    and l
    ld a, a
    add b
    ld a, a
    add b
    ld a, l
    add d
    ld l, a
    sub b
    ld a, l
    add d
    ld a, a
    add b
    rrca
    ldh a, [rIF]
    ldh a, [$0b]
    db $f4
    dec de
    db $e4
    inc bc
    db $fc
    dec de
    db $e4
    ld a, [bc]
    push af
    ld [$08f7], sp
    rst $30
    ld [$43f7], sp
    cp h
    ld h, e
    sbc h
    nop
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    and b
    rst $38
    and b
    rst $38
    ldh [rIE], a
    ld [c], a
    rst $38
    ld [$feff], a
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
    cp $ff
    ld hl, sp-$01
    pop hl
    rst $38
    pop hl
    rst $38
    pop bc
    rst $38
    jp $c3ff


    rst $38
    jp $87ff


    cp $87
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sub a
    rst $38
    sub c
    rst $38
    sub b
    rst $38
    ld d, h
    rst $38
    ld b, b
    rst $38
    dec bc
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    inc b
    ei
    ld b, $f9
    ld a, [bc]
    push af
    ld bc, $00fe

jr_09d_4f3f:
    rst $38
    inc bc
    db $fc
    add $39
    sub $29
    ld d, $e9
    dec de
    db $e4
    ld c, $f1
    rra
    ldh [rNR22], a
    add sp, $17
    add sp, $1d
    ld [c], a
    sbc a
    ld h, b
    sbc e
    ld h, h
    dec a
    jp nz, $d32c

    jr nz, @-$1f

    jr nz, jr_09d_4f3f

    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld [$10ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_09d_4f77:
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld [$88ff], sp
    rst $38
    sub b
    rst $28
    nop
    rst $38
    jr jr_09d_4f77

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add d
    ld a, l
    add b
    ld a, a
    cp [hl]
    ld b, c
    db $e4
    dec de
    or $09
    call c, $de23
    ld hl, $28d7
    rst $10
    jr z, @+$59

    xor b
    ld l, h
    sub e
    ld [hl], b
    adc a
    add b
    ld a, a
    call nz, Call_09d_443b

jr_09d_4fab:
    cp e
    ld [$a0f7], sp
    ld e, a

Call_09d_4fb0:
    ld [hl+], a
    db $dd
    nop
    rst $38
    and d
    ld e, l
    jr nz, @-$1f

    inc h
    db $db
    ld [bc], a
    db $fd
    jr nz, @-$1f

    nop
    rst $38
    sbc b
    ld h, a
    jr jr_09d_4fab

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
    nop
    rst $38
    nop
    rst $38
    ld bc, $81ff
    rst $38
    ld bc, $d5ff
    rst $38
    push af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    pop af
    rst $38
    pop af
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    db $e3
    rst $38
    db $e3
    cp $c2
    db $fc
    rst $08
    ldh a, [$df]
    ldh [rIE], a
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
    db $db
    rst $38
    db $d3
    rst $38
    ld sp, $32ff
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld b, h
    rst $38
    add b
    rst $38
    nop
    rst $38
    sbc a
    ld h, b
    sub b
    ld l, a
    add b
    ld a, a
    ld hl, sp+$07
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    cp b
    ld b, a
    ret z

    scf
    sbc $21
    sub $29
    ld a, d
    add l
    ld a, [hl]
    add c
    rst $30
    ld [$8c73], sp
    db $e3
    inc e
    cp [hl]
    ld b, c
    and $19
    inc l
    db $d3
    inc e
    db $e3
    adc h
    ld [hl], e
    ld [$88f7], sp
    ld [hl], a
    add b
    ld a, a
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
    jr nz, @+$01

    ld [hl], b
    rst $38
    ld h, b
    rst $38
    ld bc, $28ff
    rst $38
    jr z, @+$01

    jr nz, @+$01

    dec b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_09d_5067:
    rst $38
    db $10
    rst $38
    jr @+$01

    ld [$04ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr jr_09d_5067

    ld [$06f7], sp
    ld sp, hl
    ld [bc], a
    db $fd
    db $10
    rst $28
    ld bc, $01fe
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b

jr_09d_508d:
    cp a
    ld b, b
    cp a
    ret nz

    ccf
    call nz, $843b
    ld a, e
    db $10
    rst $28
    ld b, h
    cp e
    ld d, b
    xor a
    ld d, h
    xor e
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    add d
    ld a, l
    add l
    ld a, d
    and h
    ld e, e
    nop
    rst $38
    jr nz, jr_09d_508d

    nop
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    ld b, b
    rst $38
    ld b, c
    rst $38
    ld h, e
    rst $38
    and e
    rst $38
    or e
    rst $38
    rst $00
    db $fc
    rst $38
    ldh a, [rIE]
    pop af
    rst $38
    pop af
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    db $e3
    cp $e3
    db $fc
    rst $08
    ldh a, [$dc]
    ldh [$9f], a
    ldh [$7b], a
    add h
    sbc h
    ld h, e
    ld de, $33ee
    call z, $d926
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_09d_5105:
    rst $38
    rst $38
    rst $38
    rst $38

jr_09d_5109:
    rst $38
    rst $38

jr_09d_510b:
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    dec bc

jr_09d_5111:
    rst $38
    adc e
    rst $38
    inc bc

jr_09d_5115:
    rst $38
    inc bc
    rst $38
    dec bc
    rst $38
    inc bc
    rst $38
    add e
    ld a, a
    ld b, a
    cp a
    ld hl, $00df
    rst $38
    jr nz, jr_09d_5105

    inc h
    rst $18
    jr nz, jr_09d_5109

    jr nz, jr_09d_510b

    nop
    rst $38
    db $10
    rst $28
    jr nz, jr_09d_5111

    add b
    ld a, a
    add b
    ld a, a
    ld b, b
    cp a
    ret nz

    ccf
    or b
    ld c, a
    jr z, jr_09d_5115

    ld [$08f7], sp
    rst $30
    nop
    rst $38
    nop
    rst $38
    dec b
    rst $38
    rlca
    rst $38
    ld [$1aff], sp
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    sub d
    rst $38
    sub d
    rst $38
    db $10
    rst $38
    nop
    rst $38
    sub b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $18ff
    rst $38
    rlca
    rst $38
    ld b, e
    rst $38
    ret nz

    rst $38
    sub [hl]
    rst $38
    ld d, $ff
    sub b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    ret nz

    ccf
    ld b, [hl]
    cp a
    ld b, d
    cp a
    nop
    rst $38
    inc bc
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$00ff], sp
    rst $38
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ld bc, $81ff
    ld a, a
    ld bc, $81ff
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    inc b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec c
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    ld de, $15ff
    rst $38
    dec c
    rst $38
    dec l
    rst $38
    dec l
    rst $38
    ld l, l
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    ld e, a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rst $38
    rst $18
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
    rst $20
    rst $38
    rst $00
    cp $c6
    db $fc
    adc $f0
    rst $38
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    add d
    nop
    add h
    nop
    ld h, d
    sbc l
    ld l, h
    sub e
    add b
    ld a, a
    ld b, b
    cp a
    ld c, $f1
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
    xor a
    rst $38
    xor a
    rst $38
    xor a
    rst $38
    rrca
    rst $38
    ld c, $ff
    ld l, $ff
    inc l
    rst $38
    xor h
    rst $38
    ld a, [hl+]
    rst $38
    ld a, [hl+]
    rst $38
    and [hl]
    rst $38
    ld h, $ff
    ld h, $ff
    ld h, $ff
    ld a, [hl+]
    rst $38
    ld a, [hl+]
    rst $38
    ld [hl-], a
    rst $38
    ld [hl-], a
    rst $38
    ld [de], a
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    adc h
    rst $38
    ld c, $ff
    ld b, d
    rst $38
    ld c, d
    rst $38
    ld a, [hl+]
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    nop
    rst $38
    ld b, d
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld [$48ff], sp
    rst $38
    ld b, b
    rst $38
    ld d, b
    rst $38
    jr nc, @+$01

    ld bc, $21ff
    rst $38
    ld bc, $29ff
    rst $38
    ld bc, $11ff
    rst $38
    ld de, $51ff
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    add a
    rst $38
    add a
    rst $38
    ld b, a
    rst $38
    ld b, [hl]
    rst $38
    ld h, [hl]
    rst $38
    ld h, h
    rst $38
    ld h, b
    rst $38
    ld l, b
    rst $38
    ld h, [hl]
    rst $38
    and $ff
    xor $ff
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
    call z, $8cff
    rst $38
    adc l
    cp $9f
    db $fc
    rra
    ldh a, [rNR34]
    ldh [$7e], a
    add b
    ld a, c
    nop
    inc c
    di
    inc a
    jp $8778


    add hl, bc
    or $f0
    rrca
    db $e3
    inc e
    rst $28
    db $10
    xor $10
    ld bc, $d7f8
    jr z, @+$05

    db $fc
    ld [$02f7], sp
    db $fd
    ld b, $f9
    inc b
    ei
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
    rst $38
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
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    rra
    rst $38
    rra
    rst $38
    dec de
    rst $38
    dec de
    rst $38
    ld d, e
    rst $38
    ld d, e
    rst $38
    ld c, e
    rst $38
    ld c, e
    rst $38
    ld d, e
    rst $38
    inc de
    rst $38
    sub e
    rst $38
    sub e
    rst $38
    sub e
    rst $38
    sub e
    rst $38
    sub a
    rst $38
    rla
    rst $38
    rla
    rst $38
    rla
    rst $38
    rla
    rst $38
    rla
    rst $38
    rla
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
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
    cp a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    cp a

jr_09d_536d:
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_09d_5383:
    rst $38
    ei
    rst $38
    ld a, [c]
    rst $38
    ld a, [c]
    rst $38
    ld [hl], a
    cp $67
    db $fc
    ld l, a
    ldh a, [$e0]
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
    jr nc, jr_09d_536d

    ret nc

    cpl
    nop
    rst $38
    jr nz, jr_09d_5383

    jp $db3c


    inc h
    db $d3
    inc l
    ld a, [de]
    db $e4
    cp c
    nop
    pop bc
    nop
    ld [hl], b
    nop
    or $00
    push bc
    nop
    ccf
    ret nz

    ld c, $f0
    inc de
    db $ec
    ld [$00f7], sp
    rst $38
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e3], a
    pop hl
    db $fc
    db $fc
    ldh [$f8], a
    ldh [$e4], a
    ldh [$e4], a
    ldh [$e0], a
    ldh [$f4], a
    ldh [$fc], a
    ldh [$fc], a
    ldh [$f5], a
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
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a

Jump_09d_53ff:
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$fb]
    db $f4
    rst $38
    ldh a, [$fe]
    pop af
    rst $30
    ld hl, sp-$0d
    db $fc
    rst $30
    ld hl, sp-$0a
    ld sp, hl
    or $f9
    ei
    ldh a, [$fb]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$f9]
    rst $38
    di
    rst $38
    or $ff
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$f7]
    ldh a, [$fe]

jr_09d_543d:
    ldh a, [$fb]
    ldh a, [$f9]
    or $f0
    rst $38
    db $f4
    ei
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    rst $38
    rst $38
    rst $30
    rst $38
    cp a
    ldh a, [$3f]
    ldh a, [$3f]
    rst $38
    ld a, a
    db $e3
    ld a, a
    cp a
    rst $38
    rlca
    rst $38
    ld a, a
    rst $38
    nop
    nop
    rst $38
    db $10
    rst $28
    rlca
    ld hl, sp+$10
    rst $28
    add b
    ld a, a
    inc b
    ei
    jr nc, jr_09d_543d

    ld [hl-], a
    call Call_09d_4fb0
    ld b, c
    cp [hl]
    and d
    ld e, l
    or $09
    sbc $01
    or $09
    ld e, [hl]
    ld bc, $07f8
    ld a, h
    inc bc
    xor l
    ld [de], a
    jp hl


    ld d, $c0
    ccf
    ret nc

    cpl
    nop
    rst $38
    inc bc
    db $fc
    rra
    ldh [rIF], a
    nop
    rrca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    ld b, $01
    nop
    ccf
    ccf
    ret nz

    adc l
    ld [bc], a
    add [hl]
    ld bc, $001f
    rra
    nop
    rla
    nop
    rla
    nop
    cpl
    nop
    ld l, a
    nop
    ld l, a
    nop
    ld l, a
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    jr nz, @-$47

    ld c, b
    rst $38
    nop
    rst $38
    nop
    cp l
    ld b, d
    nop
    nop
    sub d
    nop
    ld a, [c]
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
    ret nz

    inc sp
    rst $38
    ld h, [hl]
    rst $38
    call z, $ff3f
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    inc b
    cp a
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_09d_5508:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
    inc bc
    db $fc
    xor a
    ld d, b
    and c

jr_09d_5533:
    ld e, [hl]
    ld d, $e9
    rst $18
    jr nz, jr_09d_5568

    ret nc

    rst $08
    jr nc, jr_09d_5533

    add hl, bc
    ld [hl], e
    adc h
    ld e, a
    add b
    dec de
    ldh [$7e], a
    add b
    jr c, jr_09d_5508

    sub $00
    db $ec
    nop
    xor b
    nop
    ld a, b
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    pop bc
    ld a, $d1
    ld l, $50
    xor a

jr_09d_5568:
    ret nc

    cpl
    call nc, Call_09d_702b
    adc a
    ldh a, [rIF]
    db $f4
    dec bc
    or [hl]
    ld c, c
    cp [hl]
    ld b, c
    ld [$e815], a
    rla
    add sp, $17
    db $ec
    inc de
    cp $01
    cp $01
    cp $01
    or $09
    rst $30
    ld [$00ff], sp
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
    ei
    inc b
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
    cp a
    ld b, b
    db $fc
    inc bc
    db $fc
    inc bc
    db $f4
    dec bc
    or b
    ld c, a
    or b
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
    rst $38
    nop
    rst $38
    scf
    ld hl, sp+$66
    rst $38
    call z, $f9ff
    ld a, a
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    rlca
    rst $38
    stop
    rst $38
    nop
    rst $38
    ld [bc], a
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
    cp $ff
    rst $30
    rst $38
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld h, b
    sbc a
    ldh [$1f], a
    ld b, b
    cp a
    inc h
    db $db
    call nc, $c22b
    dec a
    dec e
    ld [c], a
    ld h, a
    sbc b
    sbc a
    nop
    inc c
    inc bc
    cp e
    nop
    rla
    nop
    ld a, l
    ld [bc], a
    ld b, [hl]
    ld bc, $0076
    dec de
    nop
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
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
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld e, a
    cp a
    ld e, a
    cp a
    ld e, a
    cp a
    ld e, a
    cp a
    ld e, a
    cp a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    cp a
    ld e, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    rra
    rst $38
    sbc a
    ld a, a
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
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
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
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
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    rra
    rst $38
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
    cp $1f
    ld a, [$6a1f]
    rst $38
    set 7, a
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ccf
    rst $38
    ld a, $ff
    ret z

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
    cp $ff
    ld sp, hl
    rst $38
    rst $30
    cp $ff
    cp $c0
    rst $38
    ld [bc], a
    db $fd
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
    nop
    rst $38
    ld sp, $20ce
    rst $18
    ld h, b
    sbc a
    ld a, [bc]
    push af
    ld [$10f7], sp
    rst $28
    db $10
    rst $28
    ld c, b
    or a
    ld b, b
    cp a
    nop
    rst $38
    ld b, b
    cp a
    ld h, b
    sbc a
    and b
    ld e, a
    ld h, b
    sbc a
    ld b, b
    cp a
    ld b, b
    cp a
    ldh a, [rIF]
    add b
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
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
    xor $00
    xor $00
    call z, $cc00
    nop
    call z, $8800
    nop
    adc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rrca
    rrca
    nop
    rrca
    rlca
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    rrca
    inc c
    rrca
    inc c
    rrca
    inc c
    rrca
    ld c, $0f
    ld c, $0f
    ld c, $0f
    rrca
    rrca
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
    ldh a, [rIE]
    ldh a, [rIE]
    rst $38
    rst $38
    ccf
    rst $38
    ld b, a
    rst $38
    ld e, a
    rst $38
    nop
    rst $38
    nop
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
    add hl, bc
    or $07
    ld hl, sp+$20
    rst $18
    db $10

jr_09d_57bd:
    rst $28
    ld b, $f9
    nop
    rst $38
    ld [$08f7], sp
    rst $30
    nop
    rst $38
    inc de
    db $ec
    inc d
    db $eb
    inc [hl]
    sla b
    rst $18
    ld bc, $04fe
    ei
    nop
    rst $38
    ld hl, $01de
    cp $00
    rst $38
    jr nz, jr_09d_57bd

    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    ld [$0bf7], sp
    db $f4
    inc bc
    db $fc
    inc b
    ei
    inc b
    ei
    nop
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
    cp $00
    cp $00
    cp $00
    db $fc
    nop
    db $ec
    nop
    db $ec
    nop
    db $ec
    nop
    call z, Call_09d_4400
    nop
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
    rst $38
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
    db $fc
    nop
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
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
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
    ld a, $ff
    ld e, $ff
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
    ldh a, [rIE]
    cp $00
    rst $38
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
    add b
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
    ld b, $ff
    nop
    rst $38
    ld d, e
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ld bc, $80ff
    ld a, a
    add c
    ld a, a
    sub b
    ld l, a
    inc d

jr_09d_5895:
    db $eb
    ld de, $10ee
    rst $28
    ld b, b
    cp a
    ld l, b
    sub a
    nop
    rst $38
    ld [bc], a
    db $fd
    add b
    ld a, a
    inc b
    ei
    nop
    rst $38
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
    jr nz, jr_09d_5895

    nop
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
    rst $30
    nop
    rst $30
    nop
    rst $20
    nop
    rst $20
    nop
    jp $c300


    nop
    jp $c200


    nop
    add d
    nop
    add d
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

jr_09d_58f0:
    rst $38
    nop

jr_09d_58f2:
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
    inc bc
    nop
    inc bc
    nop
    nop
    nop

jr_09d_5902:
    nop
    nop

jr_09d_5904:
    nop
    nop

jr_09d_5906:
    ccf
    ccf

jr_09d_5908:
    rst $38
    ldh [rIE], a
    rra

jr_09d_590c:
    rst $38
    ldh a, [rIE]
    jr nz, jr_09d_58f0

    jr nz, jr_09d_58f2

    inc hl
    rst $18
    inc hl
    rst $18
    inc hl
    rst $18
    inc hl
    rst $18
    inc hl
    rst $18
    inc hl
    rst $18
    inc hl
    rst $18
    jr nz, jr_09d_5902

    jr nz, jr_09d_5904

    jr z, jr_09d_5906

    jr z, jr_09d_5908

    jr z, @-$1f

    jr nz, jr_09d_590c

    jr nz, @-$1f

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

jr_09d_593f:
    jr nz, jr_09d_594a

    or $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_09d_594a:
    rst $38
    rst $38
    rst $38
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

jr_09d_595d:
    rst $28
    jr nz, jr_09d_593f

    add b
    ld a, a
    ld [bc], a
    db $fd
    inc e
    rst $28
    add c

jr_09d_5967:
    rst $38
    cp $ff
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, b
    rst $38
    cp a
    rst $38
    rra
    rst $38
    add b
    ld a, a
    inc bc

jr_09d_5979:
    rst $38
    ld b, c
    cp a
    jr nz, jr_09d_595d

    jr jr_09d_5967

    ld c, h
    or e
    ld [de], a
    db $ed
    dec b
    ld a, [$fb04]
    ld bc, $08fe
    rst $30
    nop
    rst $38
    ld a, b
    add a
    jr jr_09d_5979

    nop
    rst $38
    ld de, $04ee
    ei
    ld [$00f7], sp
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
    nop
    cp a
    nop
    ccf
    nop
    scf
    nop
    inc sp
    nop
    inc sp
    nop
    inc sp
    nop
    inc hl
    nop
    ld hl, $2100
    nop
    ld hl, $0100
    nop
    ld bc, $0000
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
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    nop
    ccf
    ret nz

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
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld h, b
    sbc a
    ld b, b
    cp a
    ld [$f0f7], sp
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    ld a, c
    rst $38
    rst $38
    rst $38
    ld a, [$79ff]
    rst $38
    rst $38
    rst $38
    cp $ff
    jr @+$01

    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ld b, b
    cp a
    ld b, b
    cp a
    nop
    rst $38
    inc [hl]
    sla h
    db $db
    inc l
    db $d3
    ldh a, [rIF]
    ret nz

    ccf
    ld b, b
    cp a
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
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
    nop
    rst $38
    nop
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
    rra
    nop
    rra
    nop
    rra
    nop
    dec de
    nop
    dec bc
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
    ret nz

    ret nz

    ret nz

    nop
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add c
    ret nz

    add c
    ret nz

    add c
    ret nz

    add c
    ret nz

    add c
    ret nz

    add c
    ret nz

    add c
    ret nz

    add c
    ret nz

    add c
    ret nz

    add c
    ret nz

    add c
    ret nz

    add c
    ld b, c
    add c
    ld b, c
    add c
    ld b, c
    add c
    ld b, c
    add c
    ld b, c
    add c
    ld b, c
    add c
    ld b, c
    add c
    ld b, c
    add c
    db $eb
    cp a
    push de
    cp a
    db $eb
    rst $38
    db $fd
    rst $38
    cp $ff
    db $fd
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $01
    rst $38
    ld bc, $00ff
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    rlca
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
    ccf
    rst $38
    db $e3
    rst $38
    ldh [rIE], a
    rra
    rst $38
    ld e, $ff
    nop
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
    add h
    ld a, e
    add l
    ld a, d
    add d
    ld a, l
    add d
    ld a, l
    add d
    ld a, l
    add d
    ld a, l
    sub b
    ld l, a
    sub b
    ld l, a
    sub b
    ld l, a
    sub b
    ld l, a
    sbc h
    ld h, e
    sub h
    ld l, e
    add h
    ld a, e
    add [hl]
    ld a, c
    add [hl]
    ld a, c
    add [hl]
    ld a, c
    add d
    ld a, l
    add c
    ld a, [hl]
    add b
    ld a, a
    ld b, b
    cp a
    ld b, d
    cp l
    ld [bc], a
    db $fd
    ld c, d
    or l
    ld c, b
    or a
    ld c, [hl]
    or c
    ld b, $f9
    ld d, $e9
    ld [de], a
    db $ed
    rla
    add sp, $1a
    push hl
    inc sp
    call z, $ee11
    dec d
    ld [$fb04], a
    inc d
    db $eb
    inc d
    db $eb
    ld d, h
    xor e
    ld b, h
    cp e
    ld a, l
    add d
    ld b, a

jr_09d_5b61:
    cp b
    ld b, l
    cp d
    ld b, l
    cp d
    dec c
    ld a, [c]
    add hl, bc
    or $0f
    ldh a, [rTAC]
    ld hl, sp+$05
    ld a, [$fe01]
    ld bc, $11fe
    xor $30
    rst $08
    inc [hl]
    rl h
    db $eb
    inc d
    db $eb
    db $10
    rst $28
    nop
    rst $38
    ld [$0cf7], sp
    di
    inc e
    db $e3
    sub b
    ld l, a
    inc d
    db $eb
    dec d
    ld [$eb14], a
    jr nc, jr_09d_5b61

    ld de, $10ee
    rst $28
    db $10
    rst $28
    inc c
    di
    dec b
    ld a, [$fa85]
    add l
    ld a, [$fa85]
    add l
    ld a, [$fac5]
    push bc
    ld a, [$fec1]
    pop bc
    cp $c1
    cp $d1
    cp $d0
    rst $38
    ret nc

    rst $38
    ldh a, [rIE]
    ld a, [c]
    db $fd
    ld [c], a
    db $fd
    ld [c], a
    db $fd
    db $e3
    db $fc
    di
    db $fc
    rst $38
    ldh a, [rIE]
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp-$01
    ldh a, [$bf]
    ld a, [c]
    ccf
    ld a, [c]
    ld a, a
    ld a, [$feff]
    sbc a
    cp $bf
    cp $ff
    cp $df
    cp $9f
    cp $bf
    cp $ff
    cp $ef
    cp $cf
    cp $df
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    rst $08
    ccf
    rst $18
    ccf
    rst $38
    rra
    rst $30
    rra
    rst $20
    rra
    rst $28
    rra
    rst $38
    rra
    ei
    rra
    di
    rra
    rst $20
    rra
    rst $38
    rrca
    db $fd
    rrca
    ld sp, hl
    rrca
    di
    rrca
    ld a, e
    add h
    ld c, e
    or h
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$57]
    xor b
    add a
    ld a, b
    add a
    ld a, b
    add [hl]
    ld a, c
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    adc a
    ld [hl], b
    add e
    ld a, h
    dec bc
    db $f4
    dec bc
    db $f4
    dec bc
    db $f4
    dec bc
    db $f4
    rlca
    ld hl, sp+$27
    ret c

    inc hl
    call c, $fc03
    inc hl
    call c, $9a65
    ld b, l
    cp d
    ld h, a
    sbc b
    and a
    ld e, b
    add a
    ld a, b
    add l
    ld a, d
    daa
    ret c

    daa
    ret c

    ld d, $e9
    ld e, $e1
    ld e, $e1
    dec de
    db $e4
    dec bc
    db $f4
    add hl, bc
    or $89
    db $76
    adc c
    db $76
    add c
    ld a, [hl]
    add c

jr_09d_5c61:
    ld a, [hl]
    ld bc, $01fe
    cp $01
    cp $01
    cp $01
    cp $03
    db $fc
    add e
    ld a, h
    add e
    ld a, h
    add c
    ld a, [hl]
    ld b, l
    cp d
    ld c, h
    or e
    ld c, l
    or d
    ld b, a
    cp b
    rlca
    ld hl, sp+$01
    cp $01
    cp $01
    cp $01
    cp $12
    db $ed
    ld [de], a
    db $ed
    inc bc
    db $fc
    inc hl
    call c, $dc23
    ld de, $21ee
    sbc $12
    db $ed
    dec de
    db $e4
    jr c, jr_09d_5c61

    inc l
    db $d3
    ld bc, $0dfe
    ld a, [c]
    db $10
    rst $28
    ld c, $f1
    ld c, h
    or e
    ld c, h
    or e
    ld l, $d1
    dec c

jr_09d_5cab:
    ld a, [c]
    dec b

jr_09d_5cad:
    ld a, [$fe01]
    sub l

jr_09d_5cb1:
    ld l, d
    dec b

jr_09d_5cb3:
    ld a, [$ee11]
    ld de, $11ee
    xor $11
    xor $10
    rst $28
    db $10
    rst $28
    ld [$08f7], sp
    rst $30
    jr jr_09d_5cad

    jr @-$17

    jr jr_09d_5cb1

    jr nz, jr_09d_5cab

    jr nz, jr_09d_5cad

    jr nz, @-$1f

    jr nz, jr_09d_5cb1

    jr nz, jr_09d_5cb3

    jr nz, @-$1f

    jr nz, @-$1f

    nop
    rst $38
    nop
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld c, e
    rst $38
    ld c, e
    rst $38
    set 7, a
    set 7, a
    set 7, a
    set 7, a
    adc $ff
    adc $ff
    adc $ff
    adc $ff
    adc $ff
    adc $ff
    rst $08
    rst $38
    rst $08
    rst $38
    set 7, a
    db $db
    rst $38
    jp c, $daff

    rst $38
    jp nc, $f2ff

    rst $38
    ld [c], a
    rst $38
    jp nz, $ffff

    nop
    rst $38
    nop
    cp a
    ld b, b

jr_09d_5d16:
    or [hl]
    ld c, c
    scf
    ret z

    ld a, e
    add h
    ld a, e
    add h
    ld a, a
    add b
    ld a, l
    add d
    ld a, a
    add b
    rst $38
    nop
    ld l, a
    sub b
    ld a, a
    add b
    rst $28
    db $10
    rst $38
    nop
    or a
    ld c, b
    xor a
    ld d, b
    xor l
    ld d, d
    jp nc, $e32d

    inc e
    or $09
    or $09
    cp $01
    cp $01
    rst $10
    jr z, jr_09d_5d16

    inc l
    ld a, a
    add b
    ld h, c
    sbc [hl]
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, @-$0f

    db $10
    db $ed
    ld [de], a
    db $fd
    ld [bc], a
    rst $28
    db $10
    xor l
    ld d, d
    cp l
    ld b, d
    cp a
    ld b, b
    rst $38
    nop
    rst $28
    db $10
    pop hl
    ld e, $ab
    ld d, h
    rst $30
    ld [$04fb], sp
    xor a
    ld d, b
    or e
    ld c, h
    or b
    ld c, a
    pop af
    ld c, $bf
    ld b, b
    or a
    ld c, b
    cp a
    ld b, b

jr_09d_5d7a:
    cp e
    ld b, h
    sbc $21
    sbc d
    ld h, l
    db $fc
    inc bc
    ld a, h
    add e
    sbc $21
    sbc a
    ld h, b
    db $db
    inc h
    cp a
    ld b, b
    or l
    ld c, d
    pop af
    ld c, $ff
    nop
    cp $01
    rst $38
    nop
    ld d, a
    xor b
    rst $10
    jr z, jr_09d_5d7a

    jr nz, @+$01

    nop
    cp $01
    rst $30
    ld [$00ff], sp
    cp $01
    db $fc
    inc bc
    sbc $21
    rst $38
    nop
    ei
    inc b
    ei
    inc b
    db $fd
    ld [bc], a
    ld a, [hl]
    add c
    ld a, e
    add h
    rst $18
    jr nz, @+$01

    nop
    cpl
    ret nc

    cpl
    ret nc

    cpl
    ret nc

    dec a
    jp nz, $c03f

    dec [hl]
    jp z, $ce31

    ld sp, $11ce
    xor $19
    and $19
    and $16
    jp hl


    db $10
    rst $28
    dec d
    ld [$ea15], a
    dec d
    ld [$fa05], a
    dec b
    ld a, [$fa05]
    dec b
    ld a, [$fb04]
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
    nop
    rst $38
    nop
    rst $38

jr_09d_5df6:
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

jr_09d_5e01:
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nc

    rst $38
    ret nc

    rst $38
    cp b
    rst $38
    xor h
    rst $38
    sbc e
    ld h, h
    rst $38
    nop
    db $db
    inc h
    cp e
    ld b, h
    ld d, c
    xor [hl]
    ld [hl], c
    adc [hl]
    sbc $21
    ei
    inc b
    swap h
    rst $28
    db $10
    rst $08
    jr nc, @+$01

    nop
    rst $08
    jr nc, jr_09d_5e01

    add hl, hl
    sub $29
    swap h
    swap h
    cp e
    ld b, h
    ld sp, hl
    ld b, $7f
    add b
    db $ed
    ld [de], a
    dec l
    jp nc, $926d

    ld a, l
    add d

jr_09d_5e40:
    ld a, l
    add d

jr_09d_5e42:
    db $fc
    inc bc

jr_09d_5e44:
    ei
    inc b
    di
    inc c
    ld [hl], c
    adc [hl]
    di
    inc c
    rst $38
    nop
    ld a, a
    add b
    ei
    inc b
    swap h
    rst $18
    jr nz, jr_09d_5df6

    ld h, b
    sbc e
    ld h, h
    sbc d
    ld h, l
    ld a, b
    add a
    ld e, [hl]
    and c
    rst $18
    jr nz, jr_09d_5e42

    jr nz, jr_09d_5e44

    jr nz, jr_09d_5e40

    ld h, $b9
    ld b, [hl]
    ld c, d
    or l
    call z, $e833
    rla
    ld a, b
    add a
    ld l, e

jr_09d_5e73:
    sub h
    db $fc
    inc bc
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    call c, $de23
    ld hl, $21de
    adc $31
    rst $18
    jr nz, jr_09d_5e73

    inc de
    rst $38
    nop
    rst $38
    nop
    ld a, e
    add h
    ld a, a
    add b
    db $e3
    inc e
    rst $20
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    nop

jr_09d_5e9a:
    db $db
    inc h

jr_09d_5e9c:
    rst $08
    jr nc, jr_09d_5e9c

    ld [bc], a
    rst $18
    jr nz, jr_09d_5e9a

    ld [$04fb], sp
    di
    inc c
    rst $30
    ld [$01fe], sp
    or a
    ld c, b
    rst $28
    db $10
    xor a
    ld d, b
    xor a
    ld d, b
    or $09
    or $09
    ld l, l
    sub d
    rst $28
    db $10

jr_09d_5ebc:
    db $fd
    ld [bc], a
    rst $28
    db $10
    rst $38
    nop
    db $db

jr_09d_5ec3:
    inc h
    rst $38
    nop
    rst $38
    nop
    ld a, e
    add h
    ld a, c
    add [hl]
    ld a, e
    add h
    ld e, e
    and h
    dec sp
    call nz, Call_09d_48b7

jr_09d_5ed4:
    or e
    ld c, h
    or c
    ld c, [hl]
    sub e
    ld l, h
    call z, Call_09d_7a33
    add l
    ld [hl+], a
    db $dd
    ld [hl+], a
    db $dd
    jr nz, jr_09d_5ec3

    ld [hl+], a
    db $dd
    ld [hl+], a
    db $dd
    ld [hl+], a
    db $dd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    ei
    inc b
    di
    inc c
    pop af
    ld c, $e1
    ld e, $fe
    ld bc, $01fe
    add e
    ld a, h
    add e
    ld a, h
    rst $08
    jr nc, jr_09d_5ebc

    ld c, h

jr_09d_5f0a:
    ei
    inc b
    ld e, [hl]
    and c
    ld a, e
    add h
    db $fc
    inc bc
    db $fd
    ld [bc], a
    db $ed
    ld [de], a
    ld l, [hl]
    sub c
    rst $38
    nop
    db $dd
    ld [hl+], a
    rst $18
    jr nz, jr_09d_5f0a

    inc d
    ei
    inc b
    ld a, e
    add h
    ld [hl], a
    adc b
    ld a, e
    add h
    ld a, a
    add b
    ei
    inc b
    ei
    inc b
    rst $28
    db $10
    ei
    inc b
    rst $18
    jr nz, jr_09d_5ed4

    ld h, b
    ld c, a
    or b
    ld h, a
    sbc b
    rst $38
    nop
    ei
    inc b
    ei
    inc b
    ei
    inc b
    db $eb
    inc d
    db $db
    inc h
    db $db
    inc h
    ei
    inc b
    db $db
    inc h
    ei
    inc b
    db $eb
    inc d
    ei
    inc b
    db $fd
    ld [bc], a
    ld sp, hl
    ld b, $e9
    ld d, $e9
    ld d, $e8
    rla
    jp z, $ca35

    dec [hl]
    ld [$aa15], a
    ld d, l
    cp d
    ld b, l
    di
    inc c
    xor e
    ld d, h
    db $db
    inc h
    rst $38
    nop
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
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ld a, a
    add b
    rst $30
    ld [$4cb3], sp
    xor a
    ld d, b
    cp a
    ld b, b
    ei
    inc b
    db $ed
    ld [de], a
    dec a
    jp nz, $04fb

    ld sp, $f9ce
    ld b, $f7
    ld [$16e9], sp
    db $dd
    ld [hl+], a

jr_09d_5f9a:
    rst $18
    jr nz, jr_09d_5f9a

    ld [bc], a
    push de
    ld a, [hl+]

jr_09d_5fa0:
    push de
    ld a, [hl+]

jr_09d_5fa2:
    rst $10
    jr z, jr_09d_5fa2

    ld [bc], a
    push af
    ld a, [bc]
    rst $30
    ld [$08f7], sp
    or a
    ld c, b
    rst $18
    jr nz, jr_09d_5fa0

    db $10
    rst $38
    nop
    rst $28
    db $10
    rst $38
    nop
    rst $20
    jr @-$0f

    db $10
    ld c, a
    or b
    ld b, a
    cp b
    rlca
    ld hl, sp+$07
    ld hl, sp+$43
    cp h
    ld b, e
    cp h
    ld b, e
    cp h
    inc bc
    db $fc
    ld bc, $01fe
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
    rst $38
    nop
    rst $38
    nop
    ld bc, $0302
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    inc bc
    inc bc
    inc bc
    inc bc
    jr jr_09d_6024

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_09d_6034

    ld [hl+], a
    inc hl
    inc h
    dec h
    inc bc
    ld h, $27
    jr z, jr_09d_6045

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_09d_6055

jr_09d_6024:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_09d_6065

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c

jr_09d_6034:
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
    ld d, c
    ld d, d

jr_09d_6045:
    ld d, e
    ld d, h
    ld d, l
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld l, $2e
    ld e, l
    ld e, [hl]
    ld e, a

jr_09d_6055:
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    inc bc
    ld h, a
    ld l, b
    ld l, c
    rlca
    rlca
    ld l, d
    ld l, e
    ld l, h

jr_09d_6065:
    ld l, l
    ld l, [hl]
    ld h, d
    ld l, a
    ld h, h
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    rlca
    rlca
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
    inc bc
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
    inc bc
    inc bc
    adc a
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
    inc bc
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

    ret nz

    ret nz

    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    jp z, $c0c0

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    or e
    set 1, h
    ret nz

    call $cfce
    ret nc

    pop de
    jp nc, $d3d2

    call nc, $d6d5
    rst $10
    push de
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
    rlca
    rlca
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    rlca
    rlca
    ld a, [$0707]
    ei
    db $fc
    db $fd
    cp $ff
    nop
    ld bc, $0302
    inc b
    dec b
    rlca
    rlca
    ld b, $01
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
    dec b
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0404
    rlca
    dec b
    dec b
    dec b
    ld bc, $0101
    ld hl, $0621
    ld b, $01
    ld bc, $0006
    nop
    ld [bc], a
    ld bc, $0001
    ld bc, $0101
    ld bc, $0601
    ld b, $01
    ld bc, $0006
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rlca
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0701
    dec b
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0701
    dec b
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0701
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, c
    ld bc, $0101
    ld bc, $0701
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rlca
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
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld bc, $0901
    ld a, [de]
    rst $38
    ld a, [de]
    rst $38
    db $10
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    dec d
    rst $38
    dec d
    rst $38
    inc d
    rst $38
    inc d
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    add b
    rst $38
    adc $ff
    adc $ff
    xor $ff
    cp $ff
    cp $ff
    ld a, [$f2ff]
    rst $38
    ld a, [c]
    rst $38
    push af
    rst $38
    sub a
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $10
    rst $38
    db $dd
    rst $38
    db $ed
    rst $38
    ld sp, hl
    rst $38
    di
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
    rst $38
    db $10
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld a, [bc]
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    rlca
    rst $38
    and c
    rst $38
    xor d
    rst $38
    jr nc, @+$01

    ld [hl-], a
    rst $38
    nop
    rst $38
    ld c, e
    rst $38
    inc bc
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld h, d
    rst $38
    ld [hl], d
    rst $38
    jr nc, @+$01

    ld [hl+], a
    rst $38
    jr nz, @+$01

    nop
    rst $38
    jr @+$01

    ld [$08ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld bc, $13ff
    rst $38
    inc de
    rst $38
    jr nc, @+$01

    inc sp
    rst $38
    ld [hl-], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    and b
    rst $38
    and b
    rst $38
    and b
    rst $38
    adc b
    rst $38
    dec b
    rst $38
    ld b, b
    rst $38
    dec b
    rst $38
    ld b, d
    rst $38
    ld b, $ff
    ld b, h
    rst $38
    ld e, h
    rst $38
    inc a
    rst $38
    add hl, sp
    rst $38
    ld e, c
    rst $38
    ld e, e
    rst $38
    sbc e
    rst $38
    cp a
    rst $38
    ld [hl], $ff
    dec sp
    rst $38
    ccf
    rst $38
    ld e, a
    rst $38
    ld [hl], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    rst $28
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
    inc bc
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    and c
    rst $38
    and b
    rst $38
    pop hl
    rst $38
    ld [hl], b
    rst $38
    ld [hl], d
    rst $38
    ld [de], a
    rst $38
    ld h, d
    rst $38
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld [$08ff], sp
    rst $38
    ld [$0aff], sp
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld de, $10ff
    rst $38
    nop
    rst $38
    ld bc, $11ff
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [de], a
    rst $38
    ld [$00ff], sp
    rst $38
    ld a, [de]
    rst $38
    ld a, [bc]
    rst $38
    nop
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    ld b, $ff
    ld a, [bc]
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld b, $ff
    ld b, $ff
    ld c, [hl]
    rst $38
    add h
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    ld c, $ff
    dec c
    rst $38
    adc h
    rst $38
    adc h
    rst $38
    inc e
    rst $38
    sub b
    rst $38
    ld d, b
    rst $38
    and b
    rst $38
    inc d
    rst $38
    and h
    rst $38
    inc l
    rst $38
    nop
    rst $38
    dec c
    rst $38
    inc e
    rst $38
    dec e
    rst $38
    di
    rst $38
    ld [hl], e
    rst $38
    ld d, e
    rst $38
    ld d, c
    rst $38
    pop de
    rst $38
    or b
    rst $38
    jr c, @+$01

    xor b
    rst $38
    xor h
    rst $38
    call z, $d6ff
    rst $38
    ld b, d
    rst $38
    add e
    rst $38
    add l
    rst $38
    jp nc, $dbff

    rst $38
    cp e
    rst $38
    db $dd
    rst $38
    rst $18
    rst $38
    xor $ff
    ld l, a
    rst $38
    ld h, a
    rst $38
    and a
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    dec c
    rst $38
    push bc
    rst $38
    push de
    rst $38
    push de
    rst $38
    reti


    rst $38
    pop de
    rst $38
    ret nc

    rst $38
    ld d, c
    rst $38
    ld b, c
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl+], a
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
    ld bc, $00ff
    rst $38
    ld b, $ff
    nop
    rst $38
    call nz, Call_000_02ff
    rst $38
    add d
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ld [$88ff], sp
    rst $38
    adc h
    rst $38
    adc b
    rst $38
    nop
    rst $38
    add d
    rst $38
    add b
    rst $38
    ld [bc], a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    ld [$00ff], sp
    rst $38
    nop
    rst $38
    ld c, b
    rst $38
    ld l, d
    rst $38
    jr z, @+$01

    jr c, @+$01

    ld [de], a
    rst $38
    jp c, $abff

    rst $38
    cp e
    rst $38
    cp c
    rst $38
    cp c
    rst $38
    cp b
    rst $38
    cp b
    rst $38
    ret c

    rst $38
    ret z

    rst $38
    call z, $ccff
    rst $38
    jp z, $cfff

    rst $38
    rst $08
    rst $38
    call $8dff
    rst $38
    and l
    rst $38
    and l
    rst $38
    and h
    rst $38
    ld h, $ff
    ld [bc], a
    rst $38
    inc de
    rst $38
    dec b
    rst $38
    ld b, l
    rst $38
    jp nz, $c2ff

    rst $38
    jp nz, Jump_09d_53ff

    rst $38
    ld d, e
    rst $38
    inc hl
    rst $38
    add hl, hl
    rst $38
    ld c, c
    rst $38
    add hl, bc
    rst $38
    dec l
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    adc $ff
    add $ff
    rst $00
    rst $38
    db $db
    rst $38
    db $dd
    rst $38
    ld a, a
    rst $38
    rst $38
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
    cp $bf
    cp $bf
    cp $bf
    cp $3f
    cp $2f
    cp $2f
    cp $2f
    cp $2f
    cp $ab
    cp $8b
    cp $8b
    cp $2b
    cp $07
    cp $0f
    cp $0f
    cp $0f
    cp $03
    cp $03
    cp $43
    cp $47
    cp $07
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    ld b, c
    rst $38
    dec bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $11ff
    rst $38
    dec bc
    rst $38
    inc hl
    rst $38
    inc hl
    rst $38
    ld de, $13ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    ld h, a
    rst $38
    ld h, e
    rst $38
    add a
    rst $38
    ld [hl], a
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    ld bc, $07ff
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    dec b
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    dec b
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    dec b
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
    inc bc
    rst $38
    add e
    rst $38
    add e
    rst $38
    add e
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    add e
    rst $38
    add e
    rst $38
    ld b, c
    rst $38
    ld bc, $01ff
    rst $38
    add c
    rst $38
    add l
    rst $38
    pop bc
    rst $38
    jp nz, $90ff

    rst $38
    db $10
    rst $38
    ld e, b
    rst $38
    ld [$28ff], sp
    rst $38
    xor b
    rst $38
    add b
    rst $38
    add h
    rst $38
    adc b
    rst $38
    ld c, b
    rst $38
    ld c, d
    rst $38
    adc d
    rst $38
    sbc c
    rst $38
    ret


    rst $38
    call z, $c4ff
    rst $38
    call nz, $d5ff
    rst $38
    ld l, c
    rst $38
    ld l, c
    rst $38
    ld l, h
    rst $38
    inc l
    rst $38
    ld c, [hl]
    rst $38
    adc a
    rst $38
    cpl
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
    cp $01
    cp $01
    db $fc
    inc bc
    ld [hl], h
    adc e
    ld [hl], b
    adc a
    ldh a, [rIF]
    db $e4
    dec de
    db $ec
    inc de
    ldh [$1f], a
    add sp, $17
    ld h, b
    sbc a
    ld h, h
    sbc e
    add sp, $17
    add sp, $17
    ld l, b
    sub a
    ld l, h
    sub e
    ldh a, [rIF]
    ret nc

    cpl
    ret nc

    cpl
    ret nc

    cpl
    ret nc

    cpl
    or b
    ld c, a
    ldh a, [rIF]
    ret nc

    cpl
    ldh a, [rIF]
    and b
    ld e, a
    ret nz

    ccf
    and b
    ld e, a
    ldh [$1f], a
    ret nz

    ccf
    ldh [$1f], a
    add b
    ld a, a
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
    nop
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
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$09ff], sp
    rst $38
    dec c
    rst $38
    dec c
    rst $38
    dec c
    rst $38
    dec c
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    add a
    rst $38
    add a
    rst $38
    add a
    rst $38
    add a
    rst $38
    add e
    rst $38
    rst $38
    add e
    rst $38
    add e
    rst $38
    add c
    rst $38
    add c
    rst $38
    and c
    rst $38
    or c
    rst $38
    cp c
    cp $9f
    cp $9f
    cp $9f
    rst $38
    adc a
    rst $38
    sbc a

jr_09d_6718:
    db $fd
    sbc a

jr_09d_671a:
    db $fd
    sbc [hl]
    db $fd
    sbc [hl]
    rst $38
    sbc [hl]
    rst $38
    cp [hl]
    ei
    cp [hl]
    ei
    cp h
    ei
    cp h
    rst $38
    cp h
    rst $38
    db $fc
    rst $30
    db $fc
    rst $30
    db $fc
    rst $30
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$11
    ld hl, sp-$11
    ld hl, sp-$19
    ld hl, sp-$01
    ldh a, [rIE]
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
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, h
    add b
    ld a, b
    add b
    jr nc, jr_09d_6718

    jr nz, jr_09d_671a

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
    ldh [rSB], a
    ldh [$03], a
    ldh [rTAC], a
    ldh [rIF], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$0e], a
    ldh a, [$0c]
    ldh a, [$08]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rSB]
    ldh a, [$03]
    pop af
    rlca
    di
    rlca
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
    rlca
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp-$7c
    ld hl, sp-$7c
    ld hl, sp-$7c
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp-$7c
    ld hl, sp-$7c
    ld hl, sp-$7c
    ld hl, sp+$04
    ld hl, sp+$04
    ei
    ld sp, hl
    inc bc
    ld sp, hl
    inc bc
    ld sp, hl
    inc bc
    ld sp, hl
    inc bc
    ld sp, hl
    inc bc
    ld sp, hl
    inc bc
    ld sp, hl
    inc bc

jr_09d_67be:
    ld sp, hl
    inc bc
    ei
    jr z, jr_09d_67be

    ld bc, $17fb
    rst $38
    sub a
    ei
    scf
    rst $38
    cp a
    rst $30
    sbc a
    rst $38
    ld e, a
    rst $30
    ld a, a
    rst $38
    ld a, a
    rst $30
    ld a, b
    rst $28
    ld [hl], b
    rst $38
    ldh a, [rIE]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [rIE]
    ldh [$df], a
    ldh [$df], a
    ldh [rIE], a
    ldh [$bf], a
    ldh [$bf], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    ccf
    ret nz

    cp a
    ret nz

    rst $38
    ret nz

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
    nop
    rst $38
    ld bc, $00fe
    rst $38
    dec b
    ld a, [$ff00]
    ld bc, $02fe
    db $fd
    ld [bc], a
    db $fd
    ld [$08f7], sp
    rst $30
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    db $10
    rst $28
    ld [$02f7], sp
    db $fd
    nop
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
    ret nz

    ld b, b
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
    add b
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
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [$fe], a
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
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    db $fc
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
    ld bc, $ffff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    db $fd
    db $fd
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $ffff
    cp $01
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
    db $ed
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, $1bde
    db $e4
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
    inc b
    ei
    nop
    rst $38
    rlca
    ld hl, sp-$74
    ld [hl], e
    ld e, a
    and b
    rra
    ldh [rTAC], a
    ld hl, sp-$63
    ld h, d
    ld a, a
    add b
    ld l, a
    sub b
    db $fc
    nop
    call c, Call_000_1920
    ldh [$87], a
    ld h, b
    rrca
    ldh [$63], a
    add b
    ld a, l
    add b
    rst $38
    nop
    rst $38
    nop
    cpl
    ret nc

    ld a, a
    add b
    ccf
    ret nz

    ccf
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
    ccf
    ccf
    ret nz

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
    rrca
    rrca
    pop af
    ldh a, [rIE]
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    inc bc
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
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    ld bc, $7f7f
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $ffff
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

jr_09d_696d:
    cp a
    jr @-$17

    call z, Call_000_0033
    rst $38
    db $ec
    inc de
    rst $38
    nop
    ld e, [hl]
    and c
    nop
    rst $38
    dec hl
    call nc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_09d_696d

    nop
    rst $38
    ld bc, $0ffe
    ldh a, [rNR34]
    pop hl
    inc de
    db $ec
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    ld e, e
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    ld l, a
    nop
    add b
    nop
    ldh [rP1], a
    ld hl, sp+$00
    ld a, a
    nop
    ei
    nop
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
    cp $ff
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [$cf], a
    ret nz

    add a
    add b
    add d
    add c
    nop
    inc bc
    nop
    rlca
    add b
    rrca
    ret nz

    rrca
    ldh [$9f], a
    ret nz

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
    ret nz

    ccf
    ld bc, $013e
    ld a, $01
    ld a, $03
    inc a
    inc bc
    inc a
    inc bc
    inc a
    inc bc
    inc a
    rlca
    jr c, jr_09d_6a0b

    add hl, sp
    ld d, $29
    dec d
    ld a, [hl+]
    inc e

jr_09d_6a0b:
    inc hl
    ld a, [de]
    dec h
    ld a, [de]
    and l
    add hl, de
    and [hl]
    dec d
    xor d
    dec d
    xor d
    dec e
    and d
    dec e
    and d
    dec de
    and h
    inc bc
    cp h
    rlca
    cp b
    rlca
    cp b
    rlca
    cp b
    rlca
    cp b
    dec b
    cp d
    dec b
    cp d
    dec b
    cp d
    inc b
    cp e
    ld [bc], a
    cp l
    cp a
    nop
    cp a
    add b
    sbc a
    ldh [rIE], a
    ldh a, [$e7]
    ld hl, sp-$01
    cp $f8
    rst $38
    rst $38
    rst $38
    cp $ff
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
    daa
    nop
    nop
    rst $38
    xor [hl]
    ld d, c
    nop
    rst $38
    ld a, [$c005]
    ccf
    cp b
    ld b, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$00f7], sp
    rst $38
    ld [hl], c
    adc [hl]
    jp hl


    ld d, $b0
    ld c, a
    cp [hl]
    ld b, c
    xor $11
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
    rst $18
    nop
    rst $38
    nop
    rst $30
    nop
    rra
    nop
    rrca
    nop
    inc bc
    nop
    dec h
    nop
    pop bc
    nop
    add $00
    ccf
    nop
    ei
    nop
    ld a, [hl]
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
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [$ef]
    ldh [$e7], a
    ldh [$c3], a
    ret nz

    jp $81c0


    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    add b
    rlca
    ret nz

    rrca
    ldh [rIF], a
    ldh [$1f], a
    ret nz

    ccf
    add c
    ld a, [hl]
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
    dec bc
    db $f4
    rrca
    ldh a, [$1f]
    ldh [rNR34], a
    pop hl
    rra
    ldh [rNR33], a
    ld [c], a
    ccf
    ret nz

    db $fd
    ld [bc], a
    ld a, a
    add b
    ccf
    ret nz

    ld l, $d1
    cp e
    ld b, h
    rst $38
    nop
    cp a
    ld b, b
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $08
    jr nc, @+$01

    nop
    db $db
    inc h
    ei
    inc b
    rst $38
    nop
    db $db
    inc h
    ld a, a
    add b
    ccf
    ret nz

    ld l, a
    sub b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$08f7], sp
    cp $01
    rst $28
    db $10
    ld l, l
    sub d
    dec a
    jp nz, $c03f

    inc e
    db $e3
    inc e
    db $e3
    rrca
    ldh a, [$0d]
    ld a, [c]
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    add d
    db $fd
    ccf
    ret nz

    rst $38

jr_09d_6b43:
    ldh [$8f], a
    ld a, b
    rst $38
    inc a
    pop af
    ld c, $ff
    rlca
    db $fc
    inc bc
    ld a, a
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
    ld bc, $06fe
    ld sp, hl
    jr nz, jr_09d_6b43

    nop
    rst $38
    rra
    ldh [$f8], a
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
    adc $00
    rst $38
    nop
    cp [hl]
    nop
    sbc a
    nop
    db $db
    nop
    rst $38
    nop
    ret nz

    nop
    ret nz

    nop
    nop
    nop
    db $e3
    nop
    rst $38
    nop
    cp $00
    cp a
    nop
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
    nop
    cp $01
    db $fc

jr_09d_6ba5:
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_09d_6ba5

    inc h
    db $db
    ld h, h
    sbc e
    db $e4
    dec de
    db $ec
    inc de
    db $ec
    inc de
    db $fc
    inc bc
    db $fc
    inc bc
    rst $38
    nop
    db $fc
    inc bc
    db $f4
    dec bc
    db $76
    adc c
    ld l, l
    sub d
    ld l, [hl]
    sub c
    adc $31
    rst $38
    nop
    sbc a
    ld h, b
    rst $38
    nop
    rst $28
    db $10
    rst $38
    nop
    rst $28
    db $10
    rst $38
    nop
    rst $20

jr_09d_6bf1:
    jr @+$01

    nop
    rst $38
    nop
    rst $28
    db $10
    cp $01
    cp $01
    rst $38
    nop
    rst $30
    ld [$10ef], sp
    cp a
    ld b, b
    cp a
    ld b, b
    rst $28
    db $10
    rst $20
    jr jr_09d_6bf1

    add hl, de
    and d
    ld e, l
    ld a, [c]
    dec c
    ld a, [c]
    dec c
    ld a, [c]
    dec c
    ld a, [c]
    dec c
    ld a, [c]
    dec c
    cp $01
    ei
    inc b
    sbc $21
    db $d3
    inc l

jr_09d_6c20:
    cp [hl]
    ld b, c
    rst $38
    nop
    rst $38
    nop
    rst $10
    jr z, jr_09d_6c20

    ld [$a05f], sp
    ld d, [hl]
    xor c
    ld d, [hl]
    xor c
    ld sp, hl
    nop
    ld sp, hl
    nop
    db $fd
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
    ldh [rIF], a
    ldh a, [rIE]
    ld a, b
    jp $ff3c


    ld e, $f0
    rrca
    rst $38
    rlca
    db $fc
    inc bc
    rst $38
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
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    ld a, a
    add b
    dec de
    db $e4
    ld a, [$ff05]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp a
    nop
    rst $30
    nop
    add b
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $08
    nop
    sbc $00
    rst $38
    nop
    rst $38
    nop
    db $fc
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
    ld bc, $01fe
    cp $81
    ld a, [hl]
    add c
    ld a, [hl]
    ld b, c
    cp [hl]
    ld b, c
    cp [hl]
    and e
    ld e, h
    and e
    ld e, h

jr_09d_6cb0:
    ld c, l
    or d
    rst $20
    jr jr_09d_6cb0

    inc b
    rst $38
    nop
    xor e
    ld d, h
    adc c
    db $76
    adc l
    ld [hl], d
    rst $38
    nop
    rst $20
    jr @+$01

    nop
    rst $38
    nop
    ld [c], a
    dec e
    xor e
    ld d, h
    sbc d
    ld h, l
    or d
    ld c, l
    ei
    inc b
    rst $38
    nop
    ei
    inc b
    cp $01
    rst $38
    nop
    or [hl]
    ld c, c
    or d
    ld c, l
    or e
    ld c, h
    or e
    ld c, h
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    cp e
    ld b, h
    xor a
    ld d, b
    adc e
    ld [hl], h
    adc e
    ld [hl], h
    inc bc
    db $fc
    inc hl
    call c, $d02f
    daa
    ret c

    add a
    ld a, b
    add a
    ld a, b
    ld h, a
    sbc b
    ld b, a
    cp b
    ld [hl], a
    adc b
    ld [hl], l
    adc d
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ccf
    ret nz

    ld a, $c1
    cp d
    ld b, l
    cp d
    ld b, l
    push hl
    nop
    and $00
    or $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rra
    ldh [rIE], a
    ldh a, [rTAC]
    ld hl, sp-$01
    ld a, h
    ret nz

    ccf
    rst $38
    rra
    ldh a, [rIF]
    rst $38
    inc bc
    cp $01
    rst $38
    nop
    nop
    rst $38
    inc a
    jp Jump_000_00ff


    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    db $fc
    nop
    ret nz

    nop
    nop
    nop
    sub c
    nop
    nop
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ldh [rP1], a
    rst $38
    nop
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
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$17
    add sp, $1f
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$5f], a
    and b
    ld e, a
    and b
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
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    rst $38
    nop
    ld a, [hl]
    add c
    cp $01
    rst $38
    nop
    ld a, a
    add b
    ld [hl], a
    adc b
    cp $01
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    dec a
    jp nz, $c03f

    rst $28
    db $10
    add hl, sp
    add $39
    add $49
    or [hl]
    ccf
    ret nz

    ld a, e
    add h
    cp a
    ld b, b
    dec de
    db $e4
    sbc a
    ld h, b
    db $dd
    ld [hl+], a
    db $db
    inc h
    db $db
    inc h
    ei
    inc b
    ei
    inc b
    db $fd
    ld [bc], a
    rst $38
    nop
    cp $01
    cp e
    ld b, h
    cp d
    ld b, l
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    db $fd
    ld [bc], a
    ld a, [$ba05]
    ld b, l
    cp [hl]
    ld b, c
    cp h
    ld b, e
    cp h
    ld b, e
    cp h
    ld b, e
    cp h
    ld b, e
    cp h
    ld b, e
    cp h
    ld b, e
    sbc h
    ld h, e
    inc e
    db $e3
    ld d, b
    xor a
    jp nc, $f52d

    nop
    db $fc
    nop
    cp $00
    rst $38
    add b
    ccf
    ret nz

    rst $38
    ldh [rIF], a
    ldh a, [$03]
    db $fc
    rst $38
    ld a, [hl]
    rst $38
    ccf
    nop
    rra
    nop
    rrca
    rlca
    rlca
    ld bc, $0001
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
    rra
    nop
    rra
    nop
    inc bc
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
    inc e
    nop
    rst $38
    nop
    rra
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ccf
    ret nz

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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    xor l
    ld d, d
    rst $38
    nop
    cp h
    ld b, e
    cp h
    ld b, e
    ld a, [hl]
    add c
    ld a, l
    add d
    cp $01
    ld a, l
    add d
    db $fc
    inc bc
    ld a, h
    add e
    inc a
    jp $d12e


    rst $28
    db $10
    cp [hl]
    ld b, c
    ld a, a
    add b
    ld a, h
    add e
    ld a, a
    add b
    ld hl, sp+$07
    db $f4
    dec bc
    rst $38
    nop
    db $fd
    ld [bc], a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    ld a, a
    add b
    rra
    ldh [$2f], a
    ret nc

    ld l, a
    sub b
    add a
    ld a, b
    adc a
    ld [hl], b
    or a
    ld c, b
    db $fc
    nop
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    rst $38
    ldh [rIE], a
    ld hl, sp+$03
    db $fc
    ld bc, $3f7e
    ccf
    rra
    rra
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    inc bc
    inc bc
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
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    sbc a
    ld h, b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc e
    ld [hl], h
    add c
    ld a, [hl]
    add c
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
    rst $38
    nop
    rst $38
    add b
    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp-$01
    db $fc
    rst $38
    cp $7f
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    rrca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    cp $03
    rst $38
    inc bc
    rst $38
    inc bc
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $07
    cp $07
    cp $07
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
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    cp $07
    rst $38
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fd
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    cp $07
    cp $07
    cp $07
    cp $07
    cp $0f
    xor $1f
    add sp, $1f
    add sp, $1f
    add sp, $1f
    ret


    ccf
    ret


    ccf
    ret


    ccf
    ret


    ccf
    ret


    ccf
    adc c
    ld a, a
    adc d
    ld a, a
    adc d
    ld a, a
    adc d
    ld a, a
    adc d
    ld a, a
    adc d
    ld a, a
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]

Call_09d_702b:
    rst $38
    ld c, $ff
    ld [$0aff], sp
    rst $38
    dec bc
    rst $38
    ld [$0fff], sp
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    adc a
    rst $38
    rrca
    rst $08
    rrca
    rst $28
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rrca
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    add a
    rst $38
    ld c, a
    rst $38
    ld l, l
    rst $38
    ld l, l
    rst $38
    ld h, l
    rst $38
    db $e4
    rst $38
    ld h, h
    rst $38
    ld h, h
    rst $38
    inc d
    rst $38
    ld [de], a
    rst $38
    sub d
    rst $38
    adc b
    rst $38
    adc c
    rst $38
    jp z, $8aff

    rst $38
    adc d
    rst $38
    ld a, [bc]
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$8cff], sp
    rst $38
    adc h
    rst $38
    adc h
    rst $38
    adc h
    rst $38
    adc h
    rst $38
    adc h
    rst $38
    xor h
    rst $38
    xor b
    rst $38
    and b
    rst $38
    and b
    rst $38
    and b
    rst $38
    adc b
    rst $38
    add c
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    ld d, c
    rst $38
    ld d, c
    rst $38
    ld d, c
    rst $38
    ld d, c
    rst $38
    ld d, c
    rst $38
    ld de, $91ff
    rst $38
    add c
    rst $38
    ld h, c
    rst $38
    ld h, c
    rst $38
    ld b, c
    rst $38
    ld b, b
    rst $38
    db $10
    rst $38
    inc d
    rst $38
    inc d
    rst $38
    inc d
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc b
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
    db $10
    rst $38
    ld d, $ff
    ld d, $ff
    ld d, $ff
    inc d
    rst $38
    jr @+$01

    jr c, @+$01

    jr nc, @+$01

    jr z, @+$01

    jr z, @+$01

    inc c
    rst $38
    inc l
    rst $38
    inc l
    rst $38
    inc l
    rst $38
    ld [$88ff], sp
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc d
    rst $38
    adc d
    rst $38
    adc d
    rst $38
    add d
    rst $38
    add d
    rst $38
    add d
    rst $38
    add d
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld d, d
    rst $38
    ld d, d
    rst $38
    ld d, d
    rst $38
    sub d
    rst $38
    sub c
    rst $38
    dec d
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    rla
    rst $38
    scf
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
    rst $38
    rst $38
    rst $38
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
    ld [hl], a
    rst $38
    db $76
    rst $38
    ld a, [hl+]
    rst $38
    ld a, [hl+]
    rst $38
    ld a, [hl+]
    rst $38
    jr nz, @+$01

    ld b, c
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, c
    rst $38
    ld bc, $01ff
    rst $38
    add c
    rst $38
    add l
    rst $38
    adc l
    rst $38
    adc h
    rst $38
    xor h
    rst $38
    xor b
    rst $38
    adc b
    rst $38
    adc d
    rst $38
    add [hl]
    rst $38
    ld b, $ff
    ld b, [hl]
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld l, h
    rst $38
    ld l, h
    rst $38
    ld l, h
    rst $38
    ld h, h
    rst $38
    ld h, h
    rst $38
    ld h, h
    rst $38
    ld h, h
    rst $38
    ld h, d
    rst $38
    or d
    rst $38
    cp d
    rst $38
    cp d
    rst $38
    cp e
    rst $38
    sbc e
    rst $38
    sbc e
    rst $38
    dec e
    rst $38
    dec e
    rst $38
    dec c
    rst $38
    dec c
    rst $38
    inc c
    rst $38
    ld a, [hl+]
    rst $38
    ld a, [hl+]
    rst $38
    ld a, [hl+]
    rst $38
    ld a, [bc]
    rst $38
    ld [$02ff], sp
    rst $38
    ld a, [bc]
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$04ff], sp
    rst $38
    inc b
    rst $38
    and d
    rst $38
    and d
    rst $38
    and d
    rst $38
    and d
    rst $38
    and b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    inc h
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld a, [hl+]
    rst $38
    dec sp
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    ld hl, $a1ff
    rst $38
    and c
    rst $38
    dec b
    rst $38
    ld d, h
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld d, [hl]
    rst $38
    ld d, h
    rst $38
    inc d
    rst $38
    sub d
    rst $38
    cp d
    rst $38
    ccf
    rst $38
    ccf
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
    db $fc
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    dec sp
    rst $38
    dec de
    rst $38
    dec de
    rst $38
    adc e
    rst $38
    dec bc
    rst $38
    ld a, e
    rst $38
    dec hl
    rst $38
    dec hl
    rst $38
    dec hl
    rst $38
    dec hl
    rst $38
    inc hl
    rst $38
    inc hl
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    ld de, $19ff
    rst $38
    add hl, de
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    ld de, $31ff
    rst $38
    add hl, sp
    rst $38
    add hl, sp
    rst $38
    cp c
    rst $38
    cp c
    rst $38
    cp c
    rst $38
    cp c
    rst $38
    cp c
    rst $38
    cp c
    rst $38
    cp c
    rst $38
    cp l
    rst $38
    or c
    rst $38
    or c
    rst $38
    and c
    rst $38
    and c
    rst $38
    and c
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    add hl, hl
    rst $38
    ld c, c
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld c, c
    rst $38
    set 7, a
    ld c, e
    rst $38
    ld c, c
    rst $38
    ld c, c
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    add hl, bc
    rst $38
    add hl, hl
    rst $38
    ld c, c
    rst $38
    ld b, c
    rst $38
    ld h, c
    rst $38
    ld h, e
    rst $38
    ld hl, $29ff
    rst $38
    ld hl, $21ff
    rst $38
    add hl, hl
    rst $38
    add hl, bc
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    xor a
    rst $38
    ld l, a
    rst $38
    ld l, a
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
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    ld bc, $0302
    nop
    nop
    nop
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    nop
    nop
    inc c
    dec c
    ld c, $00
    nop
    nop
    nop
    nop
    rrca
    db $10
    ld de, $1312
    inc d
    dec d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, $17
    jr jr_09d_7315

    ld a, [de]
    dec de
    inc e
    nop
    dec e
    ld e, $1f
    jr nz, jr_09d_7305

jr_09d_7305:
    ld hl, $2322
    inc h
    dec h
    ld h, $27
    jr z, jr_09d_7337

    ld a, [hl+]
    nop
    dec hl
    inc l
    dec l
    dec l
    dec l

jr_09d_7315:
    dec l
    ld l, $2f
    jr nc, jr_09d_734b

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_09d_735b

    ld a, [hl-]
    dec sp
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    dec l
    dec l
    ld b, l
    dec l
    dec l
    dec l
    dec l
    dec l
    ld b, [hl]

jr_09d_7337:
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    dec l
    dec l
    dec l
    dec l
    ld c, h
    dec l
    dec l
    dec l
    dec l
    dec l
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    inc e

jr_09d_734b:
    dec l
    dec l
    dec l
    dec l
    dec l
    ld d, c
    ld d, d
    ld d, e
    dec l
    dec l
    dec l
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b

jr_09d_735b:
    ld e, c
    dec l
    dec l
    dec l
    dec l
    ld e, d
    ld e, e
    ld e, h
    dec l
    dec l
    dec l
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    dec l
    dec l
    dec l
    ld h, h
    ld h, l
    ld h, [hl]
    dec l
    dec l
    dec l
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
    dec l
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
    ld d, e
    adc h
    adc l
    adc [hl]
    adc a
    nop
    nop
    sub b
    sub c
    sub d
    sub e
    sub h
    nop
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
    xor b
    xor b
    xor c
    xor c
    xor d
    xor e
    xor e
    xor h
    rra
    xor l
    ld h, [hl]
    xor [hl]
    dec [hl]
    xor a
    or b
    or c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or d
    or e
    nop
    nop
    or h
    or l
    or [hl]
    xor c
    or a
    xor b
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    nop
    nop
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    pop bc
    jp nz, $c4c3

    push bc
    add $c7
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

    ret


    jp z, $cccb

    call $cfce
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld bc, $0203
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    inc bc
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    ld bc, $0000
    nop
    nop
    inc bc
    inc bc
    inc bc
    nop
    ld bc, $0201
    ld [bc], a
    nop
    nop
    inc bc
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld b, $05
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld b, $05
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0001
    nop
    nop
    ld bc, $0106
    inc bc
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0001
    nop
    nop
    ld b, $06
    inc bc
    inc b
    ld bc, $0004
    nop
    nop
    nop
    inc bc
    ld bc, $0001
    nop
    nop
    ld bc, $0003
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0004
    inc b
    inc bc
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    ld b, d
    nop
    nop
    inc bc
    ld [bc], a
    nop
    nop
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0303
    inc bc
    ld [bc], a
    inc bc
    nop
    inc bc
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    ld [hl+], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld a, b
    add a
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
    inc bc
    inc bc
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
    ccf
    ccf
    ccf
    nop
    nop
    nop
    rra
    nop
    ldh [$1f], a
    nop
    rst $38
    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sbc $01
    adc h
    inc bc
    ld [$1007], sp
    rrca
    jr nz, jr_09d_75ef

    ld b, b
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
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rrca
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

jr_09d_75ef:
    rst $38
    nop
    rst $38
    nop
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
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
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
    ccf
    rst $38
    rrca
    adc a
    ld [hl], e
    inc bc
    db $fc
    inc bc
    cp $0f
    db $fd
    ld a, a
    db $fd
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $30
    ccf
    scf
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld a, a
    nop
    adc d
    ld [hl], l
    inc b
    ei
    ld [$f0f7], sp
    rrca
    ldh [$1f], a
    ret nz

    ccf
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
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38

jr_09d_76aa:
    nop
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
    db $fc
    ld a, [bc]
    db $fd
    inc [hl]
    ei
    inc bc
    call nz, Call_000_03c6
    ld b, e
    add c
    ld b, c
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    and b
    ld b, b
    ld d, b
    and b
    jr z, jr_09d_76aa

    rla
    db $eb
    rrca
    rst $30
    dec bc
    rst $38
    db $e3
    rra
    jp $c33f


    ccf
    add e
    ld a, a
    ld [bc], a
    rst $38
    ld [bc], a
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
    inc b
    rst $38
    ld [$10ff], sp
    rst $38
    db $10
    rst $38
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
    rst $38
    sbc a
    rst $38
    rst $08
    rst $38
    rst $20
    rst $38
    di
    ld a, a
    ei
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    cp $01
    cp $01
    cp $01
    cp $01
    cp $fe
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
    cp $ff
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
    ld b, $ff
    rrca
    ld sp, hl
    dec bc
    db $fd
    dec bc
    db $fd
    dec bc
    db $fd
    dec bc
    db $fd
    dec bc
    db $fd
    dec bc
    db $fd
    dec bc
    db $fd
    dec bc
    db $fd
    dec bc
    db $fd
    dec bc
    db $fd
    dec bc
    db $fd
    dec bc
    db $fd
    dec bc
    db $fd
    dec sp
    db $fc
    ld [hl+], a
    db $fd
    inc hl
    db $fd
    jr nz, @+$01

    ld d, b
    rst $08
    pop af
    rst $08
    or b
    rst $08
    add e
    ld a, a
    ld [hl], b
    cp a
    nop
    rst $38
    jr nc, @+$01

    ld b, b
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
    rst $38
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
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rst $38
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
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld b, $ff
    ld b, $ff
    inc b
    rst $38
    inc b
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
    db $fc
    ld a, a
    db $fc
    ld a, a
    cp $ff
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [$c0], a
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

jr_09d_781c:
    nop
    rst $38

jr_09d_781e:
    nop
    rst $38

jr_09d_7820:
    nop
    rst $38

jr_09d_7822:
    nop
    rst $38
    nop
    rst $38
    nop
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
    ret nz

    ccf
    ldh [$9f], a
    ld [hl], b
    rst $18
    jr nc, jr_09d_781c

    jr nc, jr_09d_781e

    jr nc, jr_09d_7820

    jr nc, jr_09d_7822

    jr nc, @+$01

    sbc [hl]
    or e
    rra
    or c
    rra
    ld [hl], b
    rra
    ld [hl], b
    ccf
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld c, a
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    ei
    inc c
    di
    dec d
    cp $cf
    ld hl, sp+$00
    rst $38
    cp $01
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
    ret nz

    nop
    ld hl, sp-$20
    db $e4
    ld hl, sp-$1e
    db $fc
    ld [c], a
    db $fc
    pop hl
    cp $e0
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    rst $28
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    ldh [rIE], a
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
    cp $ff
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
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
    ld b, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    rst $38

jr_09d_7931:
    jr nz, jr_09d_7931

    ld hl, $21fe
    cp $e1
    cp $e1
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
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
    sbc a
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    ld a, a
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
    db $fc
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    pop bc
    cp $c1
    cp $83
    db $fc
    add e
    db $fc
    add e
    db $fc
    add e
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$e0], a
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
    add b
    rst $38
    nop
    rst $38
    ccf
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
    rlca
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
    ccf
    ld e, a
    ccf
    ld e, a
    ccf
    ld e, a
    ccf
    ld e, a
    ccf
    ld e, a
    ccf
    ld b, b
    ld [bc], a
    ld a, l
    rra
    nop
    rst $38
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    rst $38
    jp nz, $ff3f

    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    rrca
    ld a, [c]
    rra
    ld [c], a
    rra
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh [rIE], a
    rra
    rst $38
    nop
    rst $38
    cp $ff
    rst $38
    ld bc, $00ff
    rst $38
    ldh a, [rIE]
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ld a, $df
    and b
    rst $18
    xor [hl]
    rst $18
    and b
    rst $18
    xor [hl]
    rst $18

Call_09d_7a33:
    and b
    rst $18
    jr nz, jr_09d_7a56

    ldh [$df], a
    jr nz, @+$01

    ccf
    rra
    rra
    rra
    rra
    rst $38
    rra
    rst $28
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    adc a
    ld a, a
    rst $08
    ccf
    rst $08
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rst $38
    rst $38

jr_09d_7a56:
    rst $38
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
    rst $38
    nop
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
    ld a, a
    rst $38
    ld a, a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, @+$01

    jr z, @+$01

    inc h
    inc h
    ccf
    ccf
    ccf
    scf
    cpl
    inc l
    daa
    daa
    db $e4
    db $e4
    db $e4
    db $e4
    db $f4
    db $f4
    db $f4
    rst $38
    db $fc
    rst $38
    db $ec
    rst $38
    db $ec
    rst $38
    db $ec
    rst $38
    db $ec
    rst $38
    db $ec
    rst $38
    rst $28
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
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
    rlca
    rst $38
    ld bc, $00ff
    rst $38

jr_09d_7ada:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ccf
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
    ld hl, sp-$01
    rlca
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    rst $38
    rlca
    rst $38
    nop
    rst $38
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
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    jp $03ff


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
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    nop
    ld [hl], a
    nop
    ld [hl], a
    adc b
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    inc bc
    nop
    ld b, $00
    inc c
    nop
    and $01
    db $ec
    inc bc
    ret


    ld b, $cb
    inc b
    add a
    jr jr_09d_7ada

    db $10
    add b
    add b
    add b
    add b
    cp $c0
    ld a, h
    ldh [$3c], a
    ldh [$08], a
    ldh a, [$08]
    ldh a, [rP1]
    ld hl, sp+$04
    ld hl, sp+$00
    db $fc
    add d
    db $fc
    add d
    db $fc
    add c
    ld a, [$f4c8]
    ret nz

    add sp, -$40
    ldh a, [$80]
    ldh [$80], a
    ret nc

    ret nc

    ret nz

    ld [hl], b
    ret nz

    ld l, b
    ret nz

    jr z, @-$1e

    inc a
    ldh [rNR14], a
    ldh [rTIMA], a
    ldh a, [$0b]
    ldh a, [$38]
    rst $38
    dec e
    cp $0f
    cp $07
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
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    ret nz

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
    ret nz

    rst $38
    and b
    rst $38
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    ret nc

    rst $38
    jr nc, @+$01

    db $fc
    rst $38
    cp [hl]
    cp a
    ld e, a
    nop
    rst $38
    rst $28
    rst $38
    and a
    rst $38
    add c
    rst $38
    nop
    rst $38
    ld bc, $7ffe
    add b
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
    adc a
    ld bc, $038f
    ld c, [hl]
    ld [bc], a
    ld c, [hl]
    ld b, $2e
    inc b
    dec a
    inc d
    dec d
    inc e
    inc b
    dec e
    ld bc, $013d
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
    ld b, b
    ccf
    nop
    ld a, a
    ret nz

    cp a
    jp Jump_09d_7fff


    rst $38
    ccf
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
    db $fc
    nop
    ld hl, sp+$01
    ld hl, sp+$00
    ld sp, hl
    ld [bc], a
    pop af
    ld [bc], a
    pop af
    dec b
    di
    dec b
    di
    rlca
    di
    ldh a, [$03]
    ldh a, [$03]
    ldh a, [rTAC]
    ldh a, [rIF]
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    cp $ff
    ld bc, $00ff
    rst $38
    ldh a, [rIE]
    rst $38
    rrca
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
    ccf
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

jr_09d_7c85:
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
    nop
    rst $38
    inc b
    ei
    inc b
    ei
    ld b, $f9
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
    inc c
    di
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld hl, sp-$01
    ld c, $ff
    rlca
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    rst $20
    rra
    pop af
    rrca
    inc a
    inc bc
    ld e, $01
    rrca
    nop
    ld b, $01
    inc c
    inc bc
    rra
    inc bc
    ld a, [hl]
    rlca
    rst $38
    inc c
    cp $19
    rst $30
    ld hl, $43ac
    ld e, b
    add a
    jr nc, jr_09d_7c85

    ld sp, $630f
    rra
    ld h, a
    rra
    rst $08
    ccf
    adc a
    ld a, a
    ld e, [hl]

jr_09d_7d01:
    cp a
    rst $18
    ld a, $de
    ld a, $d8
    ld a, $d0

jr_09d_7d09:
    ccf
    ret nc

    cpl
    ret c

    daa
    ret c

    daa
    rlca
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $3fff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    pop af
    rst $28
    jr nz, jr_09d_7d01

    ld b, b
    cp a
    ret nz

    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    nop
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
    add b
    rst $38
    add c
    rst $38
    add c
    rst $38
    jp $c3ff


    rst $38
    jr c, jr_09d_7d09

    db $10
    rst $28
    db $10
    rst $28
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    ld hl, sp-$01
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIE]
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
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    rst $28
    ccf
    ld l, a
    scf
    ld l, a
    scf
    ld l, a
    scf
    ld l, a
    scf
    ld l, [hl]
    inc [hl]
    ld l, [hl]
    inc [hl]
    ld l, [hl]
    inc [hl]
    ld l, [hl]
    inc [hl]
    ld l, [hl]
    ld [hl], $ee
    ld [hl], $ef
    scf
    rst $28
    scf
    rst $28
    scf
    rst $28
    scf
    rst $28
    scf
    rst $28
    scf
    rst $28
    scf
    rst $28
    scf
    rst $28
    scf
    rst $28
    scf
    rst $28
    scf
    rst $28
    scf
    rst $28
    scf
    rst $28
    scf
    rst $28
    or a
    rst $28
    rst $30
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    adc a
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_09d_7dfa

    ret nz

    jr nc, @-$7e

    ld [hl], b
    nop
    rst $38
    ld e, $ff
    ld a, e
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38

jr_09d_7dfa:
    add c
    rst $38
    ld c, b
    add a
    sub b
    rrca
    ccf
    rra
    ccf
    ccf
    ld a, a
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
    ld a, a
    rst $38
    ccf
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
    ldh [rIE], a
    nop
    rst $38
    nop
    jr nz, @+$01

    jr nz, @+$01

    ld h, b
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
    inc a
    rst $38
    inc b
    rst $08
    inc b
    add a
    nop
    add a
    nop
    rst $08
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
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    ld a, h
    ei
    ld a, h
    ei
    ld a, h
    ei
    ld a, h
    ei
    ld a, h
    ei
    ld a, l
    ei
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    or a
    rst $38
    or a
    rst $38
    or a
    rst $38
    or a
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_09d_7e9b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    inc bc
    rst $38
    ld a, c
    rst $38
    inc e
    ld a, a
    rlca
    ld a, a
    ld bc, $007f
    rst $38
    ld h, b
    sbc a
    jr jr_09d_7e9b

    inc c
    di
    ld b, $f9
    ld [bc], a
    db $fd
    di
    db $fc
    db $fd
    cp $7d
    cp $3f
    cp $1f
    cp $1e
    rst $38
    ld bc, $07ff
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
    inc b
    rst $38
    dec b
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $30
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$cf]
    rst $28
    pop de
    db $e3
    pop de
    db $e3
    pop de
    rst $28
    pop de
    rst $28
    pop de
    rst $28
    pop de
    rst $28
    pop de
    rst $28
    pop de
    rst $28
    pop de
    rst $28
    rst $18
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$8f]
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ld h, b
    sbc a
    jr nz, @-$1f

    add b
    rst $38
    ldh [rIE], a
    ld [hl], b
    rst $38
    jr c, @+$01

    jr c, @+$01

    inc e
    rst $38
    inc e
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    adc h
    ld a, a
    adc [hl]
    ld a, a
    adc [hl]
    ld a, a
    adc a
    ld a, a
    dec bc
    rst $38
    add hl, de
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    ld e, $ff
    ld a, $ff
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ret z

    rst $38
    add h
    rst $38
    add d
    rst $38
    pop bc
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    ld a, [$fdff]
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
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf

Jump_09d_7fff:
    rst $38
