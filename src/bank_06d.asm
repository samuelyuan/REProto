SECTION "ROM Bank $06d", ROMX[$4000], BANK[$6d]

    dec h
    ld h, $27
    jr z, jr_06d_402e

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, @+$07

    dec b
    dec b
    dec b
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_06d_4052

    ld a, [hl-]
    dec sp
    dec b
    dec b
    dec b
    dec b
    dec b
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    dec b
    ld b, h
    ld b, l
    dec b
    dec b
    dec b

jr_06d_402e:
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
    dec b
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
    dec b
    dec b
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]

jr_06d_4052:
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    dec b
    ld l, e
    ld l, h
    dec b
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    dec b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    dec b
    dec b
    ld a, d
    ld a, e
    ld a, h
    dec b
    dec b
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
    dec b
    dec b
    add a
    adc b
    dec b
    dec b
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
    dec b
    dec b
    ld b, h
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
    dec b
    dec b
    dec b
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
    and b
    xor a
    dec b
    dec b
    dec b
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
    dec b
    dec b
    dec b
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


    dec b
    dec b
    dec b
    jp z, $cccb

    call $cfce
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    dec b
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

Call_06d_40fb:
    db $f4
    push af
    or $f7
    ld hl, sp+$01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0101
    inc bc
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    ld bc, $0101
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
    ld [bc], a
    ld bc, $0501
    inc b
    inc b
    inc b
    inc b
    nop
    inc b
    inc b
    nop
    nop
    nop
    inc b
    inc b
    nop
    ld [bc], a
    ld bc, $0505
    dec b
    dec b
    ld bc, $0401
    inc b
    nop
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    ld bc, $0001
    inc b
    inc b
    inc b
    inc b
    nop
    inc b
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0001
    nop
    inc b
    inc b
    inc b
    nop
    nop
    inc b
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0001
    nop
    inc b
    inc b
    nop
    nop
    inc b
    ld b, $07
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0401
    inc b
    nop
    nop
    inc h
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0401
    inc b
    nop
    nop
    nop
    ld b, $07
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $2401
    inc b
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
    ld bc, $0101
    ld bc, $0101
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
    ld bc, $0101
    ld bc, $0101
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0700
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0701
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
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
    rst $38
    nop
    ld a, a
    add b
    rst $18
    jr nz, jr_06d_42d6

    add b
    rst $38
    nop
    ccf
    ret nz

    ld l, $d1
    rrca
    ldh a, [rTAC]
    ld hl, sp+$0d
    ld a, [c]
    rlca
    ld hl, sp+$04
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
    inc b
    rst $38
    inc c
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    ldh [rIE], a
    cp h
    rst $38
    inc a
    rst $38
    ld [hl+], a
    rst $38
    db $eb
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
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
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    pop af
    ld c, $f3
    inc c
    ld h, a
    sbc b
    adc a
    ld [hl], b
    sbc [hl]
    ld h, c
    inc e
    db $e3

jr_06d_42d6:
    ld b, b
    cp a
    ret nc

    cpl
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
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld e, b
    rst $38
    sbc $ff
    rst $38
    rst $38
    ldh a, [rTAC]
    ld a, b
    rlca
    db $dd
    ld [bc], a
    inc e
    inc bc
    inc d
    inc bc
    ld bc, $0602
    ld bc, $0011
    stop
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
    ld bc, $0100
    nop
    nop
    ld bc, $0001
    dec b
    nop
    dec b
    nop
    dec b
    nop
    ld de, $1504
    nop
    dec b

jr_06d_4331:
    nop
    inc c

jr_06d_4333:
    ld bc, $0015
    or c

jr_06d_4337:
    nop
    ld sp, $8000

jr_06d_433b:
    nop
    add b
    nop
    add h

jr_06d_433f:
    nop
    ld [hl], c
    adc [hl]
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld b, c
    cp [hl]
    ld b, b
    cp a
    ld b, b
    cp a
    ld [hl], b
    adc a
    ld [hl], b
    adc e
    ld d, b
    adc a
    db $10
    rst $08
    nop
    rst $18
    nop
    rst $18
    db $10
    rst $08
    jr nz, jr_06d_433b

    nop
    rst $18
    jr nz, jr_06d_433f

    jr nc, jr_06d_4331

    jr nc, jr_06d_4333

    ld [hl], $c9
    inc [hl]
    ret


    jr nz, jr_06d_4337

    inc l
    pop bc
    dec b
    ldh [rP1], a
    ldh [rP1], a
    ldh [rSB], a
    ldh [rSB], a
    ldh [rSB], a
    ldh [rNR11], a
    ldh [rNR13], a
    ldh [rNR13], a
    ldh [rNR12], a
    ldh [rSC], a
    ldh [rSC], a
    ldh [rTAC], a
    ldh a, [rTAC]
    ldh a, [$03]
    ldh a, [$03]
    ldh a, [$03]
    ldh a, [rNR22]
    ldh a, [$37]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$83]
    ldh a, [rIF]
    ld hl, sp+$37
    ld hl, sp+$37
    ld hl, sp+$7b
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp+$03
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
    ld [bc], a
    db $fd
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    dec sp
    rst $38
    dec bc
    rst $38
    inc bc
    rst $38
    add e
    rst $38
    db $e3
    rst $38
    rst $08
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
    inc e
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    add c
    ld a, a
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add b

Jump_06d_43ef:
    ld a, a
    nop
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
    ld h, b
    sbc a
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    ld [hl], h
    adc e
    db $ec
    inc de
    ld a, a
    add b
    sbc a
    ld h, b
    ld b, l
    sbc d
    ld bc, $c0fe
    rra
    ldh [rTAC], a
    ld hl, sp+$07
    rst $38
    nop
    cp $01
    ccf
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    db $fc
    nop
    ld [hl], h
    nop
    ld a, [$ff00]
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
    rst $38
    nop
    nop
    rst $38
    ld d, $e9
    ld d, a
    xor b
    ld a, a
    add b
    dec a
    ret nz

    ccf
    ret nz

    ld a, a
    add b
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
    add b
    ld a, a
    nop
    rst $38
    ld h, e
    sbc h
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $30
    ld [$00ff], sp
    rst $38
    ld bc, $03ff
    ei
    rlca
    rst $30
    rrca
    rst $28
    rra
    rst $18
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    ld a, h
    dec a
    cp $fd
    cp $fd
    cp $fd
    cp $6c
    rst $38
    dec a
    cp $1c
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    and b
    ld e, a
    ld l, b
    sub a
    ld l, h
    sub e
    ld e, $e1
    ld c, $f1
    add [hl]
    ld a, c
    ld a, [c]
    dec c
    ld [hl], d
    dec c
    ld a, [hl-]
    dec b
    jr @+$05

    inc c
    inc bc
    ld b, $01
    add e
    nop
    ld h, e
    nop
    ret nz

    nop
    ldh a, [rP1]
    cp $00
    cp $00
    ld sp, hl
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cpl
    nop
    cpl
    nop
    daa
    nop
    rlca
    nop
    rrca
    nop
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
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
    ld bc, $01fe
    cp $09
    or $01
    cp $03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ccf
    ret nz

    rra
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    cp l
    ld b, [hl]
    xor a
    ld a, [hl]
    ld a, [hl]
    rst $38
    rst $38

jr_06d_453d:
    rst $38
    rst $38
    rst $38
    rst $38
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
    di
    rst $38
    rst $38
    rst $38
    add a
    ld a, a
    jp $c13f


    ccf
    ldh [$1f], a
    call nc, $d42b
    dec hl
    cp $01
    db $ed
    ld [de], a
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, [hl]
    add c
    ld a, b
    add a
    ld [hl], b
    adc a
    jr nc, jr_06d_453d

    db $10
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
    inc bc
    db $fc
    jp $f8fc


    rst $30
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $08
    ld a, a
    pop hl
    ld a, [hl]
    ldh a, [$7f]
    rst $38
    ld a, a
    cp $7f
    cp [hl]
    ld a, a
    cp d
    ld a, a
    cp b
    ld a, a
    db $fd
    ld a, a
    db $dd
    ld a, a
    db $fc
    ld a, a
    ld [$eb7f], a
    ld a, a
    cp e
    ld a, a
    ei
    ld a, a
    rst $38
    ld a, a
    rst $30
    ld a, a
    rst $30
    ld a, a
    rst $38
    ld a, a
    xor a
    ccf
    rst $38
    ccf
    rst $28
    ccf
    rst $38
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
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
    rst $28
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
    rst $38
    rra
    rst $28
    rra
    rst $28
    rra
    rst $38
    rra
    rst $30
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
    ei
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    cp a
    ld a, a
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
    rst $38
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ld h, b
    ldh [$38], a
    ld hl, sp+$1c
    db $fc
    ld c, $fe
    rlca
    rst $38
    add e
    ld a, a
    jp $803d


    ld a, a
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
    ld e, e
    and h
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
    rst $38
    nop
    rst $38
    ret nz

    cp a
    ldh a, [$ef]
    db $fc
    rst $38
    ld a, a
    dec bc
    pop bc
    ld bc, $20b8
    ld a, $df
    ld l, l
    sub d
    rrca
    ldh a, [$3f]
    ldh [$3f], a
    ldh [$7a], a
    and l
    ld l, d
    sub l
    sbc d
    push hl
    rla
    db $eb
    jr nz, @+$01

    dec l
    rst $38
    ld hl, $b1ff
    rst $38
    rst $30
    rst $38
    sub l
    rst $38
    rst $10
    rst $38
    rst $18
    rst $38
    rst $28
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
    rst $18
    rst $38
    sbc a
    rst $38
    cp a
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
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fc
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
    sbc a
    rst $38
    nop
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
    nop

jr_06d_46cb:
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
    ld a, b
    ld hl, sp+$3d
    db $fd
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    add hl, de
    rst $20
    jr jr_06d_46cb

    adc b
    ld [hl], a
    ret z

    scf
    ret z

    scf
    ldh [$1f], a
    add sp, $17
    db $f4
    dec bc
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
    add c
    ld a, a
    pop bc
    rst $38
    pop bc
    rst $38
    jp $c17f


    ld a, a
    pop bc
    ld a, a
    pop bc
    ld a, a
    jp $c17f


    ld a, a
    pop bc
    ld a, a
    pop bc
    rst $38
    pop bc
    ld a, a
    pop hl
    ld a, a
    pop bc
    ld a, a
    jp $c17f


    ld a, a
    jp $c07f


    rst $38
    ret nz

    rst $38
    jp $c3ff


    rst $38
    push hl
    rst $38
    db $e3
    rst $38
    rst $20
    ld a, a
    rst $28
    rst $38
    db $eb
    rst $38
    db $eb
    rst $38
    add e
    rst $38
    add a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
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
    rst $38
    rst $38
    rst $38
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
    ld c, a
    cp a
    or a
    rst $08
    ei
    rst $00
    ei
    ld h, a
    inc hl
    ccf
    inc sp
    ccf
    ld sp, hl
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
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    pop bc
    rst $38
    add a
    ld hl, sp-$69
    add sp, $1d
    ld [c], a
    ld e, $e7
    rla
    xor $f1
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
    ld b, $ff
    ld a, a
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rra
    rra
    add hl, sp
    ccf
    ld l, c
    ld a, a
    ld [hl], a
    ld a, b
    ld a, e
    call nz, $f077
    ld [$edf0], a
    ldh a, [$fa]
    ldh a, [$fd]
    ldh a, [$fe]
    ldh a, [$fd]
    ldh a, [$f7]
    ld hl, sp-$1a
    pop af
    ld [$eee5], a
    pop af
    xor $f1
    rst $28
    pop af
    ld h, a
    ld sp, hl
    db $e3
    db $fd
    db $e3
    db $fd
    pop hl
    rst $38
    pop hl
    rst $38
    ld h, c
    rst $38
    ld h, c
    rst $38
    ld h, c
    rst $38
    ld h, c
    rst $38
    ld h, c
    rst $38
    ld h, c
    rst $38
    ld h, c
    rst $38
    pop hl
    rst $38
    jp hl


    rst $30
    ld h, c
    rst $38
    db $e3
    db $fd
    ld h, e
    db $fd
    pop hl
    rst $38
    pop hl
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    pop hl
    rst $38
    ld sp, hl
    rst $38
    push af
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    pop af
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    pop hl
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
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
    ld a, [$e6ff]
    ld sp, hl
    ld l, a
    or b
    or [hl]
    ld c, c
    ld de, $e5ef
    rst $38
    add d
    rst $38
    jp nz, $80ff

    rst $38
    add c
    rst $38
    add e
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    add [hl]
    ld sp, hl
    cpl
    rst $18
    ccf
    rst $18
    rra
    rst $38
    ld a, a
    cp a
    rst $38
    ccf
    res 6, a
    rst $38
    adc a
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $30
    rrca
    rst $28
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
    rst $18
    ldh [$c0], a
    add b
    add b
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    rst $38
    rst $38
    rst $18
    rst $38
    rst $30
    rst $18
    add $ff
    add $ff
    xor h
    inc bc
    rst $10
    inc l
    sbc d
    inc l
    ld b, a
    jr c, jr_06d_48bb

    jr z, @+$17

    ld l, b
    xor $70
    db $fd
    ld a, b
    ei
    ld a, b
    ei
    inc a
    db $fd
    ld a, [hl-]
    ld e, a
    jr c, jr_06d_48c4

    ldh a, [$5d]

jr_06d_48bb:
    and d
    cp [hl]
    ret z

    rst $38
    ld hl, sp-$76
    push af
    db $dd
    db $e3

jr_06d_48c4:
    db $fd
    jp $c39d


    xor l
    db $d3
    db $dd
    jp $e3f9


    ld sp, hl
    rst $00
    rst $28
    jp $c1c7


    add sp, -$39
    jp c, $fec7

    pop bc
    pop hl
    sbc $eb
    db $f4
    ret nc

    db $fd
    push hl
    rst $38
    adc $ff
    rst $38
    sbc $d8
    rst $38
    ret nc

    rst $38
    db $fc
    rst $38
    cp $fd
    rst $38
    rst $38
    rst $30
    rst $38
    rst $20
    rst $38
    cp a
    rst $38
    rst $30
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    rst $30
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp b
    ld [hl], a
    or c
    ld a, [hl]
    ld a, [hl]
    pop af
    rst $18
    ldh [rIF], a
    ldh a, [$08]
    rst $30
    ld [bc], a
    rst $38
    inc [hl]
    rst $38
    ccf
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
    rrca
    rst $38
    add hl, de
    rst $38
    ccf
    rst $18
    ld b, c
    cp a
    sbc c
    ld h, a
    or a
    ld c, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_06d_4950:
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
    add b
    ret nz

    ret nz

    rst $38
    ld a, a
    ld a, a
    cp a
    rla
    rst $38
    ld a, [de]
    or c
    call z, $8333
    ld a, b
    ld d, a
    jr z, jr_06d_4950

    jr z, jr_06d_4992

    ld c, b
    and $08
    sub l
    ld c, b
    inc bc
    jr c, jr_06d_49dc

    ld a, $de
    ccf
    rst $08
    ld a, $0e
    xor $56
    xor a
    ld b, [hl]
    cp a
    ld [hl], h
    adc e
    ld a, h
    add e

jr_06d_4992:
    ld b, d
    cp a
    sub b
    xor a
    ld [hl], a
    adc c
    ld l, [hl]
    add c
    push de
    add b
    ld [hl+], a
    add c
    ld d, [hl]
    add c
    cp h
    set 7, h
    adc e
    ld c, [hl]
    xor a
    ld c, $ff
    rra
    rst $38
    or a
    ld a, a
    sub b
    ld a, a
    db $f4
    ei
    sub b
    ld a, [hl]

Call_06d_49b2:
    ld l, a
    ld e, $a2
    ld e, a
    ld e, h
    ld h, a
    rst $20
    rst $38
    db $fd
    rst $30
    ld d, h
    cp a
    cp a
    rst $38
    or l
    rst $38
    db $fd
    rst $38
    db $fd
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
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    db $fd
    rst $38

jr_06d_49dc:
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
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
    inc b
    rst $38
    add sp, $17
    ld a, [$5e05]
    db $fd
    sbc $3d

jr_06d_49fc:
    ld [de], a
    db $fd
    ld a, [hl-]
    db $fd
    sub b
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
    db $e3
    rra
    ccf
    nop
    ld a, a
    nop
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rra
    ld e, $3f
    ccf
    rst $38
    db $fd
    rst $38
    cp $ff
    db $ec
    jp c, $c925

    inc a

jr_06d_4a34:
    ld [c], a
    jr c, jr_06d_49fc

    jr nc, jr_06d_4a34

    nop
    ld b, e
    inc d
    call c, Call_000_2537
    ld e, e
    rst $38
    ld bc, $4b1f
    add sp, $07
    ld d, [hl]
    add e
    ld l, d
    add a
    ld [bc], a
    rst $30
    ld [bc], a
    ld sp, hl
    scf
    ret c

    ld e, e
    cp h
    call Call_06d_6ebc
    cp h
    ei
    cp h
    ld hl, sp-$42
    pop de
    cp [hl]
    ei
    sbc h
    call c, $b6bf
    adc a
    ld d, c
    add a
    inc l
    rst $00
    ld a, b
    add a
    and l
    ld c, e
    or h
    ld l, e
    xor d
    ld a, a
    inc a
    rst $38
    ld hl, $61fe
    ld a, [hl]
    pop bc
    ld a, [hl]
    jr nc, @-$17

    or h
    cpl
    ld c, l
    cp [hl]
    ld [$c9ff], sp
    rst $38
    xor e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_06d_4a89:
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec b
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, jr_06d_4a89

    ld e, $e1
    ld h, e
    sbc h
    ld a, h
    add e
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add $3f
    ret nz

    ccf
    scf
    rst $38
    add a
    db $fd
    ld b, b
    cp a
    nop
    rst $38
    inc l
    rst $38
    ld c, $fd
    ret


    cp [hl]
    cp l
    adc $a4
    ld c, $6c
    sbc a
    cp $3e
    dec a
    ld a, a
    ld a, [$e03d]
    dec a
    cp h
    ld a, e
    cp b
    ld a, a
    inc d
    db $eb
    ld [de], a
    rst $20
    ld [hl-], a
    rst $38
    ld b, $fb
    daa
    jp c, $fb44

    ld a, e
    add e
    ld [hl], e
    add e
    ld d, b
    and d
    ld b, l
    sub d
    add hl, bc
    cp [hl]
    ld e, c
    xor $5f
    xor $5d
    call z, $fc02
    ld l, c
    db $fc
    ret z

    ld a, h
    ld a, l
    ld c, b
    di
    ld c, b
    scf
    ld c, b
    db $fd
    adc d
    ld c, b
    sbc a
    ld [hl], l
    adc d
    ld d, h
    add e
    xor e
    sub l
    ld [hl], a
    adc a
    cp e
    rst $00
    pop bc
    rst $38
    ld d, a
    ld sp, hl
    or $f9
    push af
    ld a, [$fff6]
    ld [$ffff], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    call c, $ffff
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $18
    cp a
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
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld b, b
    cp a
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
    rst $38
    rst $38
    rst $28
    adc a
    rst $38
    rlca
    sbc a
    ld hl, $275d
    xor e
    rlca
    rst $18
    ld [bc], a
    rst $00
    ld l, $35
    ld c, [hl]
    add h
    ld c, a
    ld a, b
    add l
    sbc a
    jr nz, jr_06d_4c3d

    add c
    ld [$5401], a
    add c
    ld a, [hl+]
    add c
    db $f4
    add e
    xor e
    rlca
    ld e, a
    and e
    dec [hl]
    adc e
    ld h, a
    add hl, de
    rst $28
    ld de, $1fc1
    ld h, d
    sbc l
    ld c, a
    or h
    or h
    ld a, a
    ld [hl], l
    dec a

jr_06d_4be4:
    adc d
    ld a, l
    dec sp
    ld a, h
    cp b
    ld a, h
    dec a
    ld a, b
    ld [hl], l
    cp b
    rst $38
    ld [hl], d
    or e
    ld a, $4e
    cp a
    ld b, l
    rst $38
    dec c
    rst $38
    xor a
    ld e, a
    ld a, h
    adc a
    dec h
    sbc [hl]
    ld e, l
    and [hl]
    ret z

    rst $20
    add d
    rst $10
    jr nz, jr_06d_4be4

    sbc $39
    dec e
    rst $38
    or [hl]
    db $fd
    ld e, l
    rst $38
    rst $08
    rst $38
    cp $df
    sbc $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    db $fc
    rst $38
    cp l
    cp $bc
    rst $38
    cp h
    rst $38
    ld l, a
    sub b
    cp $ff
    dec a
    cp $3d
    cp $3e
    rst $38
    ld a, $fd
    cp l
    rst $38
    rst $38
    ccf
    adc h
    di
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38

jr_06d_4c3d:
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

jr_06d_4c48:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
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
    cp $ff
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
    rlca
    rst $38
    rlca
    rst $38
    ld bc, $03ff
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
    inc bc
    inc bc

jr_06d_4c82:
    add e
    add e
    cp e
    cp e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    ld e, h
    rst $38
    sbc $7d
    xor b
    ld d, d
    rst $30
    nop
    cp $00
    db $dd
    jr nz, jr_06d_4ce7

    and b
    push de
    jr nz, jr_06d_4c48

    jr nc, jr_06d_4c82

    jr nc, jr_06d_4cc9

    di
    db $ed
    ldh a, [$e6]
    add sp, -$69
    ldh [$c6], a
    ld sp, hl
    jp nz, Jump_06d_63fd

    sbc h
    ld h, l
    sbc [hl]
    sbc a
    db $fc
    inc sp
    call c, Call_000_3ecc
    ld a, a
    inc e
    cp [hl]
    inc e
    ld e, a
    inc e
    cp [hl]
    inc c
    ccf
    db $ec
    adc d
    ld a, h
    ld [hl], e
    cp $b1
    cp $f7
    ld hl, sp-$03

jr_06d_4cc9:
    ld a, [c]
    ld l, h
    di
    and b
    ld a, e
    sub l
    ld l, d
    sbc $e7
    ld h, a
    rst $10
    ld c, d
    or a
    call nc, $f2bb
    rst $38
    ld d, $ff
    ld e, b
    rst $38
    db $fd
    rst $38
    rra
    ei
    ld a, e
    rst $38
    ld a, h
    rst $38
    ld a, a

jr_06d_4ce7:
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
    pop bc
    ccf
    rst $38
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
    pop hl
    rst $38
    ccf
    ret nz

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
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    cp e
    rst $38
    jr nc, @+$01

    cp h
    rst $38
    ld b, l
    rst $38
    ld e, $ff
    add $ff
    ldh [rIE], a
    ld a, a
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    cpl
    rst $38
    inc de
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, b
    sbc a
    add sp, $1f
    ld [hl], h
    sbc d
    pop bc
    ld e, $31
    adc $d3
    adc [hl]
    di
    sbc e
    scf
    db $d3
    rst $38
    rlca
    sbc d
    rst $20
    db $76
    adc [hl]
    ld l, l
    sbc h
    db $db
    inc a
    ld d, a
    jr jr_06d_4db7

    or c
    and $91
    sbc d
    push hl
    ld sp, $abe4
    ld a, h
    ld e, a
    cp h
    dec sp
    ld hl, sp-$41
    ld a, b
    cp d
    ld a, c
    ccf
    ld sp, hl
    ldh a, [$3b]
    db $fd
    ld [hl], d
    ld h, [hl]
    ld sp, hl
    dec a
    pop af
    db $d3
    ld sp, $7307
    sbc l
    ld [hl], a
    jr c, jr_06d_4ddf

    ld a, $59
    ld l, e
    inc e
    adc a
    ld a, h
    sub $4d
    dec [hl]
    adc $65
    sbc [hl]
    and c
    rra
    ld e, a
    or e
    ld [hl], e
    rst $38
    ld a, [de]
    rst $38
    or [hl]
    dec de
    ld d, $df
    add a
    ld a, a
    rst $38
    ccf
    ld e, a
    or a
    sbc a
    rst $30
    rst $18
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    db $fd
    rst $38
    rst $38
    db $fd
    db $fd
    rst $38
    ld sp, hl
    rst $38
    call nz, Call_000_06fb

jr_06d_4db7:
    ld sp, hl
    db $fd
    ei
    ld a, a
    ld hl, sp-$07
    rst $30
    push af
    ei
    ld sp, hl
    rst $30
    ldh [rIE], a
    rst $38
    nop
    ld [hl], c
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    ld a, e
    rst $38
    db $fc
    rst $38
    ld a, e
    rst $38
    jp Jump_000_10ff


    rst $28
    inc l
    db $d3
    add h
    ei
    or a
    ret z

    cp b
    rst $00
    cp a

jr_06d_4ddf:
    rst $00
    db $db
    rst $20
    set 6, a
    ld l, a
    rst $10
    sbc e
    rst $20
    rlca
    ei
    add e
    rst $38
    db $d3
    rst $28
    add e
    rst $38
    jp $c3ff


    rst $38
    add e
    rst $38
    sub a
    rst $28
    sub e
    rst $28
    inc sp
    rst $08
    dec bc
    rst $30
    db $10
    rst $28
    ld a, a
    add a
    db $76
    adc a
    ld [hl], c
    adc a
    cp a
    rst $08
    or c
    rst $08
    rst $38
    ret nz

    ret c

    rst $38
    rst $38
    rst $38
    ld c, h
    rst $38
    sbc [hl]
    ld a, a
    ld a, [hl]
    rst $38
    ld [hl], a
    rst $38
    ld h, l
    rst $38
    ret z

    rst $30
    add h
    di
    ld c, $f3
    ld a, $c0
    push af
    nop
    ld hl, sp+$20
    pop hl
    ld a, h
    ld c, c
    ei
    rst $00
    di
    ld e, d
    push af
    ld a, [hl-]
    db $fd
    sbc a
    db $fd
    ld a, a
    db $fd
    cp $fd
    ldh [$fd], a
    or $e9
    add $f9
    and $d8
    db $d3
    db $ed
    push bc
    ei
    ld a, l
    sub e
    dec e
    and e
    ld e, b
    and a
    sub c
    ld l, a
    ld l, h
    ei
    cp h
    ei
    rlca
    ei
    sub e
    rst $28
    db $76
    di
    ld sp, hl
    cp $6e
    rst $38
    rst $00
    ld a, a
    ld e, a
    cp $db
    db $fc
    and l
    ld a, b
    ld a, [hl+]
    pop af
    ld [hl], a
    ldh [$f6], a
    ld l, h
    ld a, d
    db $fc
    ld a, a
    db $fc
    add hl, hl
    ld a, h
    ld h, e
    cp h
    or l
    ld hl, sp-$1d
    jp hl


    db $e4
    ei
    ld a, [$f0f1]
    pop af
    db $fd
    di
    db $fc
    rst $38
    ld a, [$fffd]
    db $fc
    db $fd
    cp $ff
    cp $02
    rst $38
    ld [c], a
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
    jp nc, $c02d

    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    inc a
    rst $38
    ld a, a
    rst $38
    ld a, [$87ff]
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld bc, $e3ff
    inc e
    ld sp, hl
    ld b, $ff
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $ffff


    rst $38
    db $10
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    db $e4
    dec de
    ld h, b
    sbc a
    rst $38
    rst $38
    cp d
    add a
    ld [hl], d
    rst $00
    ld a, b
    add $f3
    and $c8
    and $75
    adc h
    or b
    ld c, h
    add [hl]
    ld a, h
    ld h, $fc
    ld e, h
    inc l
    cp d
    dec c
    db $eb
    dec e
    ld a, a
    sbc c
    add hl, de
    ld a, a
    cp a
    ld a, a
    rst $38
    ld a, a
    cp a
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    cp [hl]
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    pop bc
    rst $38
    jp $d7bf


    cp a
    rst $08
    or a
    sub a
    rst $28
    add e
    rst $38
    inc hl
    rst $38
    inc [hl]
    rst $28
    and d
    db $fd
    pop bc
    rst $38
    ld a, [bc]
    push af
    inc bc
    db $fc
    rst $38
    ld bc, $1975
    or h
    ld a, e
    ld a, [$2677]
    rst $38
    adc a
    rst $38
    ld b, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, b
    rst $38
    ld a, b
    or $e8
    rst $30
    rst $38
    di
    or d
    ld c, a
    inc sp
    adc $b6
    rst $08
    adc $bf
    db $db
    rst $38
    ld b, $fe
    adc $76
    cp h
    ld a, [hl]
    ld a, [hl-]
    rst $38
    ld [hl], d
    cp a
    add hl, sp
    rst $30
    rst $30
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    cp $ff
    adc $ff
    dec hl
    rst $18
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor h
    rst $38
    rst $38
    rst $38
    ld h, [hl]
    rst $38
    daa
    rst $38
    ld a, a
    rst $38
    rst $30
    rst $38
    db $fc
    rst $38
    rrca
    rst $38
    ld b, $ff
    rst $38
    rst $38
    rst $38
    rst $38
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
    ei
    rst $38
    rst $38
    rst $38
    ld sp, hl
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
    cp $ff
    ld a, $ff
    cp $ff
    adc $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    ld e, $ff
    cp $ff
    rst $38
    cp $fd
    cp $fd
    cp $d3
    cp $f7
    ld hl, sp-$12
    ldh a, [$c2]
    db $e4
    db $fd
    ldh [rIE], a
    db $fc
    sbc $fd
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
    cp d
    ld [hl], e
    ld sp, $1c6e
    ld l, h
    ld c, h
    ld e, b
    ld l, d
    ret c

    sbc l
    ld l, b
    dec [hl]
    ld a, b
    ld [hl], l
    jr c, @-$0b

    jr c, @+$41

    ldh a, [$db]
    ldh [$bf], a
    ret nz

    xor [hl]
    ret nz

    adc l
    jp $c9e3


    push hl
    db $d3
    adc a
    ld [hl], a
    ld e, a
    rst $20
    rst $30
    rst $08
    push af
    adc a
    inc de
    xor a
    db $d3
    ld l, $d3
    ld l, $ab
    db $76
    ld [hl], d
    xor $d1
    xor $df
    and $09
    cp $c7
    ld a, $7f
    cp $f8
    cp $fb
    cp $fb
    cp $a4
    ld a, [hl]
    cp [hl]
    ld a, h
    ld a, c
    db $fc
    db $eb
    push af
    ld [hl], b
    push bc
    xor [hl]
    rst $00
    ld d, a
    add a
    cp [hl]
    ld bc, $315e
    xor [hl]
    ld [hl], c
    db $e4
    ld sp, hl
    or $f9
    rst $30
    jr nc, @-$3f

    ld h, b
    db $76
    pop hl
    rst $28
    pop hl
    rst $10
    ld h, e
    ld l, l
    rst $00
    rst $30
    ret


    dec a
    jp $0345


    adc c
    rlca
    ld b, l
    sbc a
    ei
    rst $38
    ld [hl+], a
    ld a, a
    sbc d
    ld h, l
    dec a
    ld a, [c]
    db $d3
    db $fc
    cp l
    ld a, b
    add d
    db $fd
    ld b, d
    push af
    db $eb
    ld a, h
    db $fd
    rst $38
    ld d, a
    rst $38
    rlca
    rst $38

jr_06d_5058:
    db $d3
    rst $28
    jp Jump_06d_43ef


    rst $38
    rst $10
    rst $28
    inc de
    rst $28
    or b
    rst $00
    db $f4
    jp $c1ac


    ld c, h
    add e
    ld l, h
    add e
    ld a, l
    add e
    sbc h
    jp $c38f


    sbc $83
    db $eb
    add l
    ld e, c
    add a
    ld l, e
    add a
    ld a, d
    add l
    db $fc
    add e
    rra
    jp $936f


    ld a, b
    add a
    db $fc
    rlca
    adc e
    ld a, a
    cpl
    rst $18
    xor a
    ld d, a
    rst $30
    dec bc
    inc de
    rrca
    or a
    ld c, a
    xor e
    ld b, a
    db $fd
    rrca
    adc e
    ccf
    ld c, a
    cp a
    ld h, a
    sbc a
    rst $28
    rra
    ld d, e
    xor a
    daa
    rra
    rst $20
    rra
    ld a, e
    sbc a
    ld c, a
    cp a
    rlca
    rst $38
    rst $38
    ccf
    rst $00
    ccf
    inc hl
    rst $38
    rst $10
    rst $38
    rst $18
    rst $18
    pop af
    rst $38
    ld hl, sp-$01
    cp [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or $ff
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
    jp hl


    rst $38
    jr c, jr_06d_5058

    ld c, e
    inc e
    ld a, [bc]
    ld [hl], b
    ld d, c
    ld h, b
    ld a, [hl+]
    ret nz

    add hl, de
    ret nz

    ld l, e
    ret nz

    ld d, a
    ret nz

    ld a, [bc]
    ret nz

    dec e
    ret nz

    ld l, c
    ret nz

    pop hl
    nop
    and d
    nop
    pop af
    add b
    xor b
    jp nz, $80c5

    ld [bc], a
    add b
    dec d
    nop
    adc d
    nop
    ld e, l
    add d
    inc h
    adc e
    ld b, l
    inc bc
    cpl
    inc bc
    add hl, de
    rlca
    inc d
    dec bc
    ld h, h
    inc de
    jr z, jr_06d_5119

    ld a, h
    inc bc
    xor a
    jr jr_06d_5166

    inc b
    cp b
    ld b, $51
    ld h, $f7
    jr z, jr_06d_518a

    ld l, b
    ld b, l
    ld [$cfd0], a
    ld h, c

jr_06d_5119:
    rst $18
    dec b
    db $db
    xor l
    add e
    call c, Call_06d_7de3
    ld [c], a
    ldh a, [$e6]
    add b
    xor $76
    adc $26
    cp $2e
    push af
    rst $30
    dec c
    ld c, h
    dec e
    db $fd
    rra
    ld e, a
    cp a
    rst $38
    ccf
    cp a
    ld a, a
    cp a
    rst $38
    dec sp
    rst $38
    cp e
    rst $38
    or e
    rst $38
    rst $38
    rst $38
    ld [hl], l
    rst $38
    ld e, c
    rst $28
    ld e, l
    db $eb
    ccf
    rst $38
    ld a, a
    rst $38
    cp [hl]
    rst $38
    inc a
    ld a, a
    cp a
    ld a, c
    push af
    ei
    pop af
    rst $38
    ei
    rst $30
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38

jr_06d_5166:
    rst $38
    rst $38
    ld hl, sp-$01
    db $fc
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
    pop hl
    rst $38
    pop af
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38

jr_06d_518a:
    db $eb
    rst $38
    pop hl
    rst $38
    db $e3
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
    rst $38
    cp $fe
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fd
    cp $fd
    cp $fc
    rst $38
    db $fd
    cp $fd
    cp $fd
    cp $fd
    cp $e9
    cp $7c
    rst $38
    db $fc
    rst $38
    ld a, a
    db $fc
    ld a, [$42fd]
    db $fd
    jp z, $d3fd

    db $ec
    add $f9
    cpl
    ret nc

    rst $20
    sbc b
    rst $18
    ldh a, [$fa]
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
    jr jr_06d_5203

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_06d_5213

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_06d_5223

    ld a, [hl+]
    dec hl
    inc l
    dec l
    dec l
    ld l, $2f
    jr nc, jr_06d_5234

jr_06d_5203:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_06d_5244

    ld a, [hl-]
    dec sp
    dec l
    dec l
    inc a
    dec a
    ld a, $3f

jr_06d_5213:
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

jr_06d_5223:
    ld d, b
    ld d, c
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

jr_06d_5234:
    ld d, c
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
    ld l, l
    ld l, [hl]

jr_06d_5244:
    ld d, c
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
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    add h
    add l
    ld d, c
    add [hl]
    ld d, c
    ld d, c
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
    ld d, c
    and [hl]
    and a
    xor b
    xor c
    ld d, c
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
    ld de, $1251
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_06d_5310

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$53

    ld d, c
    ld hl, $2322
    inc h
    dec h
    ld h, $27
    jr z, jr_06d_5332

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $18
    ld d, c

jr_06d_5310:
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0707
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rlca
    rlca

jr_06d_5332:
    rlca

Call_06d_5333:
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld bc, $0707
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld bc, $0707
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0300
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0303
    inc bc
    rlca
    rlca
    rlca
    rlca
    nop
    ld bc, $0101
    ld bc, $0301
    ld bc, $0303
    inc bc
    nop
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    inc bc
    inc bc
    ld bc, $0102
    ld bc, $0101
    ld bc, $0101
    dec b
    dec b
    ld bc, $0101
    inc bc
    inc bc
    ld bc, $0100
    nop
    nop
    dec b
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0301
    inc bc
    ld bc, $0101
    ld bc, $0101
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0404
    inc b
    nop
    ld bc, $0101
    ld bc, $0101
    inc bc
    ld bc, $0101
    ld bc, $0503
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    ld bc, $0103
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0701
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0901
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0f
    rrca
    rrca
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    add hl, bc
    nop
    add hl, bc
    rrca
    rrca
    rrca
    rrca
    rrca
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
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    add hl, bc
    rrca
    rrca
    rrca
    rrca
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, hl
    nop
    and d
    ld [hl], b
    ld d, [hl]
    and c
    adc d
    pop hl
    ld [hl], l
    ld [c], a
    inc c
    di
    ld l, l
    sub d
    ld d, a
    xor d
    ld sp, $88ee
    ld l, a
    sbc [hl]
    ld h, a
    ld [hl], $ed
    xor a
    ld a, h
    ld a, [$707d]
    db $fd
    ld a, a
    db $fc
    ld sp, $a9ec
    di
    ld [hl], $f1
    sbc b
    ld a, a
    db $fc
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    db $fd
    rst $38
    cpl
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    sbc [hl]
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp $ff
    db $fc

Jump_06d_54ab:
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    and h
    rst $38
    ld h, h
    rst $38
    ld [bc], a
    rst $38
    db $e3
    rst $38
    rst $38
    rst $38
    ld [hl], h
    rst $38
    ldh [rIE], a
    db $fc

jr_06d_54cd:
    rst $38
    rrca
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
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    jr nz, jr_06d_54cd

    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ret nc

    cpl
    nop
    rst $38
    add c
    ld a, [hl]
    nop
    rst $38
    ld bc, $42fe
    cp l
    sbc [hl]
    ld h, c
    ld bc, $4be2
    add h
    ei
    inc b
    or $08
    ld [c], a
    inc e
    rst $30
    ld [$005b], sp
    nop
    nop
    inc bc
    nop
    rlca
    nop
    ld c, $01
    rrca
    nop
    dec e
    ld [bc], a
    ld e, $01
    add hl, sp
    ld b, $26
    add hl, de
    ld a, a
    nop
    ld a, [hl]
    nop
    call c, RST_00
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    ld b, $00
    inc c
    nop
    jr jr_06d_553a

jr_06d_553a:
    jr nz, jr_06d_553c

jr_06d_553c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $0300
    nop
    ld b, $00
    inc b
    nop
    ld [$9c00], sp
    ccf
    cpl
    rst $18
    jp Jump_000_32ff


    rst $38
    ld d, a
    xor a
    ld h, h
    sbc e
    add hl, de
    rst $20
    inc [hl]
    jp hl


    rst $28
    ld hl, $27d3
    cpl
    db $e4
    cp a
    ld l, h
    db $fd
    ld a, [hl]
    ld a, e
    db $fc
    ld [hl], e
    db $fc
    ld e, c
    and $f2
    rst $38
    dec sp
    rst $38
    sbc l
    ld a, e
    ld b, a
    ld sp, hl
    call nz, $e73f
    rra
    rst $28
    ccf
    dec sp
    db $fd
    db $fc
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $10
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
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
    ld a, a
    rst $38
    adc b
    rst $38
    add b
    rst $38
    dec b
    rst $38
    add hl, bc
    rst $38
    dec e
    rst $38
    ld a, a
    rst $38
    cp $ff
    db $fd
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    ld bc, $03ff
    cp $1e
    pop af
    ldh [rIE], a
    ld a, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_06d_55d9:
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    add hl, bc
    rst $38
    dec bc
    rst $30
    add c
    rst $38
    add d
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    add d
    rst $38
    add c
    ld a, [hl]
    and h

jr_06d_55f5:
    ld e, e
    dec b
    ld a, [$fe01]
    ld bc, $02fe
    db $fd
    rrca
    ldh a, [$08]
    rst $30
    inc d
    db $eb
    ld b, b
    cp a
    add c
    ld a, [hl]
    jr nc, jr_06d_55d9

    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    inc b
    ei
    nop
    rst $38
    jr nz, jr_06d_55f5

    ld l, $d1
    rla
    add sp, $7d
    add d
    ld a, c
    add [hl]
    xor e
    ld b, h
    sub $08
    ld l, [hl]
    sub b
    ld a, $00
    inc a
    nop
    jr nc, jr_06d_562a

jr_06d_562a:
    jr nc, jr_06d_562c

jr_06d_562c:
    ld h, b
    nop
    ld a, b
    nop
    call c, $9000
    nop
    ld a, [de]
    nop
    jr jr_06d_5638

jr_06d_5638:
    inc c
    nop
    inc c
    nop
    ld [$1000], sp
    nop
    ld [hl-], a
    nop
    ld [hl+], a
    nop
    jp nz, $8500

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $c1
    pop de
    adc $aa
    rst $00
    sbc c
    rst $00
    ldh a, [$cf]
    reti


    add $e6
    jp hl


    db $f4
    db $eb
    push af
    ei
    ld h, [hl]
    db $fd
    adc a
    ld a, l
    pop af
    rra
    sub e
    ld a, c
    ld h, c
    sbc a
    inc hl
    rst $18
    ld e, e
    rst $20
    set 6, a
    pop af
    rst $38
    ld a, [$9bfd]
    db $fc
    ret z

    rst $38
    set 7, a
    rst $18
    rst $28
    pop af
    rst $38
    ld sp, hl
    rst $38
    push af
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
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    ld h, a
    rst $38
    cp $ff
    rst $38
    rst $38
    db $e3
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
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
    ei
    rst $38
    ld a, [hl-]
    rst $38
    ld b, b
    rst $38
    add c
    rst $38
    ld b, b
    rst $38
    call c, $6fff
    rst $38
    inc hl
    rst $38
    db $10
    rst $38
    rlca
    rst $38
    ld bc, $00ff
    rst $38
    jr nz, @+$01

    ret nz

    rst $38
    ldh [$df], a
    sub b
    rst $28
    sub b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld [hl], b
    rst $28
    ld h, b
    rst $38
    ld c, b
    rst $30
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
    ret nc

    cpl
    ld [$40f7], sp
    cp a
    add b

Jump_06d_5703:
    ld a, a
    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    ld h, b
    sbc a
    dec bc
    db $f4
    and b
    ld e, a
    rlca
    ld hl, sp+$07
    ld hl, sp+$0b
    ldh a, [rNR10]
    ldh [$80], a
    ld h, b
    and b
    ld b, b
    ret nz

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
    nop
    nop
    call z, Call_06d_7ffe
    rst $38
    ccf
    rst $38
    xor e
    rst $38
    ld a, a
    ei
    dec de
    rst $38
    rst $18
    ccf
    xor l
    ld e, a
    cp $1f
    ld d, h
    ccf
    and $3f
    sub $6b
    ld l, [hl]
    db $e3
    push de
    db $eb
    pop hl
    set 2, d
    db $ed
    add $ec
    ld c, l
    cp $ff
    ld a, a
    ld [hl], e
    rst $38
    di
    ld a, a
    ld h, e
    rst $38
    ld [hl], a
    ei
    ei
    cp h
    cp $bf
    rst $30
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
    rst $18
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
    rst $20
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    dec hl
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    di
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
    rst $18
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ret nc

    rst $38
    add b
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    sub a
    rst $38
    call c, $e0ff
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    rrca
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

jr_06d_57d7:
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
    add b
    ld a, a
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
    ld [bc], a
    db $fd
    ld d, $e9
    ld [bc], a
    db $fd
    inc l
    db $d3
    jr nz, jr_06d_57d7

    ld h, h
    sbc e
    ld c, b
    or a
    ld h, e
    sbc h
    dec b
    ld a, [$ee11]
    or d
    ld c, l
    nop
    ld a, a
    inc hl
    ld e, h
    ld b, a
    jr c, jr_06d_5884

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
    ld bc, $aa00
    ld b, c
    ld c, l
    add b
    and e
    ret c

    jp c, $9295

    ld sp, hl
    db $fd
    ld hl, sp+$7a
    db $fd
    rst $18
    dec a
    rra
    rst $38
    rst $18
    ccf
    ld a, a
    sbc a
    rlca
    rst $18
    add $ff
    rst $10
    cp a
    ld a, a
    rst $10
    ld [hl], a
    cp $e6
    ld a, e
    ld l, l
    di
    ld l, c
    di
    ld hl, $b1ff
    ld a, a
    dec a
    rst $38
    ld a, a
    rst $38
    ld a, l
    ei
    ld a, l
    ei
    cp c
    ld a, a
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
    rst $38
    di
    rst $38
    pop af
    rst $38
    or [hl]
    ret


    ld l, a
    sub e
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

jr_06d_5884:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop hl
    cp $0f
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rst $28
    rst $38
    rst $38

jr_06d_5897:
    rst $38
    cp $ff
    ld hl, sp-$01
    di
    rst $38
    rst $38
    rst $38

jr_06d_58a0:
    nop
    rst $38
    ld bc, $02ff
    rst $38
    inc bc
    db $fc
    db $f4
    ei
    ld hl, sp-$01
    inc bc
    rst $38
    nop
    rst $38
    nop

jr_06d_58b1:
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_06d_5897

    nop
    rst $38
    nop
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
    ld [bc], a
    rst $38
    ld b, b
    cp a
    ret nz

    ccf
    add b
    ld a, a
    sub b
    ld l, a
    jr nz, jr_06d_58b1

    ld c, b
    or a
    inc e
    db $e3
    db $e4
    inc bc
    add h
    ld h, e
    dec b
    ld [c], a
    inc hl
    ret nz

    jr nz, jr_06d_58a0

    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ldh a, [rP1]
    cp $00
    ld e, $00
    inc c
    nop
    dec c
    nop
    nop
    nop
    ld [$0000], sp
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
    ld bc, $01fe
    cp $03
    db $fc
    rlca
    ld hl, sp-$10
    nop
    ldh a, [rSB]
    ld [c], a
    ld bc, $03e1
    jp $8b07


    rlca
    add a
    rrca
    rrca
    ld e, $ac

jr_06d_5921:
    di
    ld e, $f3
    ld c, $f3
    xor b
    rst $30
    jr z, jr_06d_5921

    sbc d
    ld [hl], l
    sbc [hl]
    ld [hl], l
    ld [bc], a
    rst $38
    xor a
    rst $28
    rst $30
    rst $28
    call z, $6eff
    rst $38
    inc a
    rst $28
    and e
    rst $38
    and a
    reti


    ld b, b
    push af
    or b
    ld a, a
    db $e3
    ccf
    xor c
    ld a, a
    ld b, e
    rst $38
    ld [hl], e
    rst $38
    db $e3
    rst $38
    ld [c], a
    db $fd
    ld a, [$f1f5]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh a, [rIE]
    ld l, b
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    ld [hl], b
    rst $38
    ldh [rIE], a
    nop
    rst $38
    ld b, l
    rst $38
    ld b, b
    rst $38
    call c, $afff
    ld a, a
    inc l
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $05fe
    cp $05
    cp $0d
    cp $0b
    db $fc
    dec de
    db $fc
    ccf
    ld hl, sp+$59
    xor $00
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    ld [bc], a
    db $fc
    ld a, [hl+]
    call nc, $8070
    ld [hl], c
    add b
    ld b, c
    add b
    ld b, d
    add b
    inc b
    ret nz

    ld l, b
    add b
    ld a, h
    add b
    add c
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    nop
    inc b
    nop
    inc c
    nop
    inc c
    nop
    nop
    nop
    nop
    nop
    stop
    ld bc, $bf00
    ld b, b
    ld e, $e0
    inc e
    ld [c], a
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    pop af
    ld bc, $01f3
    rst $00
    inc bc
    jp $8607


    rrca
    rra
    ld c, $0d
    ld e, $3b
    inc a
    ld a, a
    jr c, jr_06d_5a3e

    ld [hl], b
    ld a, a
    ldh a, [$f7]
    ld hl, sp-$09
    ld hl, sp-$01
    ld hl, sp-$02
    cp b
    cp $38
    call c, $f838
    jr jr_06d_5a1b

    pop hl
    adc l
    pop hl
    ld c, $f1
    adc $f1
    add d
    ld sp, hl
    ld d, a

jr_06d_5a1b:
    ld hl, sp-$68
    ld a, a
    db $dd
    cp a
    cp l
    rst $38
    cp [hl]
    rst $38
    call z, $9fbf
    rst $38
    dec c
    rst $38
    dec hl
    call c, $f68c
    call nz, $8db7
    rst $30
    sub h
    rst $38
    rst $30
    rst $38
    rst $30
    ei
    rst $20
    ei
    rst $30
    ei
    di
    ei

jr_06d_5a3e:
    db $fd
    rst $38
    ld sp, hl
    ei
    db $fd
    rst $38
    ei
    ld sp, hl
    ld sp, hl
    db $fd
    rst $38
    db $fd
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
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld a, l
    rst $38
    ld [hl], a
    rst $38
    add l
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    jp $fbff


    rst $38
    db $f4
    rst $38
    jr c, @+$01

    di
    call c, $de31
    ld l, a
    sub b
    rst $28
    db $10
    rst $30
    nop
    db $fc
    nop
    ld a, b
    nop
    db $fc
    nop
    rst $38
    nop
    cp a
    ld b, b
    pop bc
    cp $c2
    db $fc
    call nz, Call_000_08f8
    ldh a, [$80]
    ld [hl], b
    db $10
    rst $20
    inc b
    db $e3
    ld e, c
    cp [hl]
    rra
    rrca
    sbc a
    rrca
    rlca
    rrca
    ld b, e
    rlca
    sub e
    rlca
    jp $c607


    inc bc
    ld [bc], a
    ld [bc], a
    db $f4
    ld [$08f0], sp
    ld sp, hl
    nop
    pop de
    ld hl, $6383
    rst $00
    inc bc
    rst $00
    rlca
    adc a
    rrca
    rra
    rrca
    rra
    rra
    rra
    ccf
    ld a, a
    ccf
    di
    ld a, a
    ei
    rst $20
    rst $38
    jp $c3fd


    rst $38
    add c
    db $fc
    ld bc, $01f9
    ld hl, sp+$01
    ld a, [c]
    ld bc, $01e2
    db $e3
    ld bc, $03c1
    ld a, e
    add a
    ld a, e
    add a
    rst $38
    rlca
    rst $30
    rrca
    rst $38
    rrca
    rst $28
    rra
    rst $38
    rra
    rst $18
    ccf
    rra
    ldh [rIF], a
    ldh a, [$9f]
    ldh a, [rVBK]
    ldh a, [$7f]
    ldh a, [$2f]
    ldh a, [rNR22]
    ld hl, sp-$12
    pop de
    add [hl]
    ld sp, hl
    call nz, Call_06d_40fb
    rst $38
    db $10
    rst $28
    or b
    rst $08
    ret nc

    rst $28
    ld b, c
    cp $83
    db $fc
    sub a
    add sp, -$19
    ld hl, sp-$39
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$01
    ldh a, [$f3]
    db $fc
    ld a, [c]
    rst $38
    cp $ff
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
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    or $f9
    ldh [rIE], a
    rst $38
    cp $fe
    rst $38
    cp $ff
    cp $ff
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rst $28
    rst $38
    ld b, $ff
    ld [hl+], a
    rst $38
    ld b, $ff
    adc a
    cp $3f
    cp $cb
    rst $38
    rst $30
    xor $f1
    xor $0d
    ld a, [c]
    dec bc
    db $f4
    sub h
    ld l, b
    ccf
    ret nz

    ld a, a
    add b
    rst $38
    nop
    cp a
    nop
    cp $00
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    ret nz

    ccf
    ld d, c
    xor [hl]
    jp RST_00


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
    add b
    nop
    ret z

    ldh a, [$27]
    rra
    add b
    ldh [rIE], a
    db $fc
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    adc a
    rra
    rra
    ccf
    rra
    ccf
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
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
    rst $00
    rst $38
    db $ec
    rra
    rst $18
    pop hl
    ld sp, hl
    ld b, $bf
    inc bc
    db $fc
    add [hl]
    rst $30
    ld c, $ff
    rrca
    rst $28
    rra
    rst $38
    rra
    rst $38
    cp a
    ld a, a
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
    rst $08
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    inc b
    rst $38
    inc c
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $20
    inc e
    push bc
    ld a, $86
    ld a, a
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld e, $e7
    ld a, [hl]
    add a
    db $fd
    ld b, $fd
    ld b, $ff
    ld b, $f9
    ld b, $f9
    ld b, $f9
    ld b, $f9
    ld b, $f5
    ld [bc], a
    push af
    ld [bc], a
    push af
    ld [bc], a
    db $fd
    ld [bc], a
    ei
    ld b, $fb
    ld b, $9b
    and $fa
    rst $20
    ld a, [c]
    rst $38
    ld a, [c]
    rst $38
    ld a, [c]
    rst $38
    db $eb
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$18
    ldh [$df], a
    add b
    ld e, $01
    sbc h
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
    nop
    rst $38
    db $fc
    inc bc
    di
    inc c
    ld h, b
    sbc a
    ld d, b
    xor a
    rst $00
    jr c, @+$09

    ld hl, sp+$6d
    sub d
    ld e, e
    or h
    call $a1f2
    sbc $7f
    add b
    rst $30
    ld [$00ff], sp
    ld d, a
    xor b
    rra

jr_06d_5c6d:
    ldh [$ef], a
    db $10
    rst $28
    db $10
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    sub a
    jr nz, jr_06d_5c99

    rst $20
    nop
    rst $38
    jr jr_06d_5c6d

    nop
    rst $38
    nop
    rst $38
    jp Jump_000_0e3c


    ld bc, $0001
    inc bc
    ld bc, $0203
    nop
    ld b, $0c
    dec b
    add hl, bc

jr_06d_5c99:
    dec c
    add hl, de
    dec bc
    rra
    inc de
    rla
    rst $30
    adc a
    ld h, a
    rrca
    rrca
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
    ld a, a
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    cp a
    ld a, a
    rst $38
    rra
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
    inc bc
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    ld b, $fc
    rlca
    db $fc
    ld b, $fc
    rlca
    db $fc
    ld b, $fc
    ld b, $fc
    ld b, $fe
    rlca
    cp $07
    cp $07
    cp $07
    cp $07
    cp $07
    rst $38
    rlca
    db $fc
    rlca
    cp $07
    cp $07
    cp $07
    cp $07
    cp $07
    rst $38
    rlca

jr_06d_5cfd:
    rst $38
    rlca

jr_06d_5cff:
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rra
    rst $38
    sbc a
    ld a, a
    ld e, a
    cp a
    rrca
    rst $38
    ld sp, $17ff
    rst $28
    nop
    rst $38
    ld bc, $a7fe
    ret c

    ret nz

    rst $38
    ld c, b
    or a
    ld b, d
    cp l
    jr nz, jr_06d_5cff

    ld b, b
    cp a
    sbc [hl]
    ld h, c
    ld a, $c1
    db $fd
    ld [bc], a
    ld hl, sp+$07
    ld hl, sp+$07
    jr nc, jr_06d_5cfd

    ld b, $f9
    dec c
    ld a, [c]
    dec bc
    db $f4
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
    ei
    inc b
    ld [$01ff], sp
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ldh [$1f], a
    cp b
    ld b, a
    ld [hl], b
    rrca
    ld d, b
    ld l, a
    ret nz

    ld a, a
    ret nz

    rst $38
    adc b
    rst $38
    call nz, $c0bf
    cp a
    add b
    rst $38
    or b
    adc a
    nop
    nop
    ret nc

    and b
    db $e3
    db $fc
    ccf
    rst $38
    dec [hl]
    adc e
    ld b, h
    add c
    xor h
    pop bc
    push bc
    ld sp, hl
    call $d3f3
    db $ed
    di
    db $fd
    pop hl
    rst $38
    ldh [rIE], a
    ld a, [$8285]
    pop bc
    ret nz

    ret nz

    push hl
    ld hl, sp-$02
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
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
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    sbc c
    ld h, [hl]
    sbc a
    ld h, d
    jp hl


    ld d, $d1
    ld l, $94
    ld l, e
    add sp, $17
    pop bc
    ccf
    ld d, b
    xor a
    ldh [$1f], a
    pop bc
    ld a, $01
    cp $73
    cp h
    xor d
    db $dd
    inc b
    rst $38
    ld bc, $d9ff
    daa
    pop de
    cpl
    add b
    ld a, a
    add h
    ld a, a
    nop
    rst $38
    xor b
    rst $38
    add $ff
    jp z, $ebff

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
    cpl
    rst $38
    ld a, [bc]
    rst $30
    add c
    ld a, [hl]
    add a
    ld a, b
    ld a, [bc]
    push af
    nop
    rst $38
    ld c, c
    or [hl]
    ld b, b
    cp a
    inc bc
    db $fc
    add c
    ld a, [hl]
    inc bc
    db $fc
    dec b
    ld a, [$fe01]
    sbc a
    ld h, b
    ld e, a
    and b
    ret nc

    cpl
    call nc, Call_06d_792b
    add [hl]
    ld a, h
    add e
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $38
    nop
    db $fd
    ld [bc], a
    db $fc
    inc bc
    ei
    inc b
    or $09
    rst $30
    ld [$12ed], sp
    db $fd
    ld [bc], a
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    cp [hl]
    ld b, b
    db $e3
    inc e

jr_06d_5e58:
    pop af
    ld c, $ff
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    rst $30
    nop
    rst $30
    nop
    rst $38
    nop
    cp [hl]
    nop
    ld a, [c]
    nop
    jp $ff00


    nop
    rlca
    nop
    add b
    nop
    jr jr_06d_5e58

    ld sp, hl
    cp $8f
    rst $38
    db $f4
    add e
    pop de
    add b
    cp e
    ret nz

    adc $b0
    rst $38
    add b
    rst $28
    sub b
    sub a
    add sp, -$6a
    add sp, -$12
    sub b
    ld bc, $809e
    add b
    add b
    add b
    ret c

    ldh [rIE], a
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
    cp $ff
    cp $ff
    db $fd
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cpl
    ret nc

    sub l
    ld [$7c83], a
    xor a
    ld d, b
    xor a
    ld d, b
    sub e
    ld l, h
    sub a
    ld l, b
    add hl, hl
    sub $10
    rst $28
    adc e
    ld [hl], h
    sub b
    ld l, a
    add b
    ld a, a
    add d
    ld a, a
    ld [$b3ff], sp
    ld l, a
    and e
    ld a, a
    cp e
    ld a, a
    rlca
    rst $38
    ld c, a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rst $18
    rst $38
    rst $38

jr_06d_5ef1:
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    inc c
    rst $38
    and a
    ld e, a
    nop
    rst $38
    ld bc, $dbfe
    inc h
    cp h
    ld b, e
    dec c
    ld a, [c]
    ld h, b
    sbc a
    nop
    rst $38
    jr jr_06d_5ef1

    inc c
    di
    ld h, d
    sbc l
    ld [$01f7], sp
    cp $30
    rst $08
    ld a, l
    add d
    dec bc
    db $f4
    ld l, h
    sub e
    ldh a, [rIF]
    sbc [hl]
    ld h, c
    rrca
    ldh a, [$97]
    ld l, b
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    rst $38
    nop
    scf
    ret z

    adc e
    ld [hl], h
    add hl, bc
    db $76
    ld a, h
    inc bc
    ld e, [hl]
    ld hl, $0bf4
    db $fd
    ld [bc], a
    rst $38
    nop
    xor $01
    ld a, a
    nop
    ei
    inc b
    cp a
    nop
    ld a, e
    inc b
    ld [hl], c
    ld c, $b7
    ld [$15ea], sp
    cp $01
    jr nz, @+$01

    ld b, b
    rst $38
    jp nz, Jump_000_1f3f

    nop
    dec a
    ret nz

    pop af
    cp $ff
    rst $38
    rrca
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $20
    nop
    ld h, d
    nop
    ld l, [hl]
    nop
    ld h, $00
    ld h, [hl]
    nop
    add b
    nop
    or h
    ld b, b
    dec de
    inc b
    nop
    nop
    add b
    nop
    ld hl, sp-$20
    rst $38
    cp $ff
    rst $38
    rst $38
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
    ld [hl], a
    rst $38
    db $e3
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $10
    nop
    jp $a100


    ld b, b
    nop
    ccf
    nop
    ccf
    nop
    ccf
    ld b, b
    ccf
    add b
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    add b
    cp a
    add b
    cp a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    rst $38
    ret nz

    cp a
    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    rst $38
    ret nz

    cp a
    ret nz

    add b
    rst $38
    add b
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
    rrca
    rst $38
    ld b, b
    cp a
    add b
    rst $38
    and b
    ld e, a
    ldh [$1f], a
    sbc b
    ld h, a
    rlca
    ld hl, sp-$10
    rrca
    dec b
    ld a, [$f40b]
    nop
    rst $38
    ld de, $20ee
    rst $18
    ld a, $c1
    db $10
    rst $28
    ld b, c
    cp [hl]
    ld [bc], a
    db $fd
    ld l, h
    sub e

jr_06d_601a:
    ld d, d
    xor l
    and b
    ld e, a
    pop bc
    ld a, $d9
    ld h, $dc
    inc hl
    add b
    ld a, a
    and d
    ld e, l
    and b
    ld e, a
    ld h, l
    sbc d
    inc b
    ei
    dec b
    ld a, [$7f80]
    ld a, c
    add [hl]
    rst $38
    nop
    ei
    inc b
    ld a, a
    add b
    ld c, [hl]
    or c
    pop bc
    ld a, $f8
    rlca
    ld a, [$fb05]
    inc b
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $28
    db $10
    rst $18
    jr nz, @+$01

    nop
    ld a, a
    add b
    ld b, b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ldh a, [rIF]
    rst $08

jr_06d_605b:
    nop
    call z, $fcf0
    rst $38
    cp $ff
    rst $30
    ccf
    ld a, e
    jr nc, jr_06d_60a2

    ld [hl], b
    scf
    ld [hl], b
    cpl
    ld [hl], b
    ld a, a
    jr nz, jr_06d_60a6

    ld h, b
    rst $28
    jr nz, jr_06d_601a

    ld h, b
    rst $20
    jr nc, jr_06d_607f

    daa
    ld h, e
    jr nz, jr_06d_605b

    nop
    ld hl, sp-$20
    rst $38

jr_06d_607f:
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
    cp a
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
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
    rlca
    nop

jr_06d_60a2:
    inc bc
    nop
    inc bc
    nop

jr_06d_60a6:
    ld bc, $0100
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    ld bc, $0000
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
    rlca
    nop
    rrca
    nop
    rrca
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
    nop
    cp $01
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld d, b
    rst $38
    ld d, b

jr_06d_60fd:
    cp a
    ret nz

    ld a, a
    sbc b
    ld h, a
    jp $803c


    ld a, a
    ld b, c
    cp [hl]
    inc c
    di
    ldh [$1f], a
    ld b, b
    cp a
    nop
    rst $38
    pop de
    ld l, $c0
    ccf
    jr jr_06d_60fd

    inc c
    di
    inc l
    db $d3
    ld c, $f1
    add hl, de
    and $44
    cp e
    rlca
    ld hl, sp+$1b
    db $e4
    dec l
    jp nc, $fd02

    ld e, [hl]
    and c
    ld a, [bc]
    push af
    ccf
    ret nz

    ld e, d
    and l
    inc sp
    call z, $c43b
    db $e3
    inc e
    ld d, b
    xor a
    ld h, b
    sbc a
    ld a, [c]
    dec c
    ret c

    daa
    inc l
    db $d3
    ld c, [hl]
    or c

jr_06d_6142:
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $38
    nop
    cp $01
    cp $01
    rst $38
    nop
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, $01df
    rst $38
    ld a, b
    rlca
    rst $08
    nop
    jr jr_06d_6142

    ldh a, [rIE]
    sbc a
    ld a, a
    ld a, e
    rlca
    ldh a, [$03]
    ccf
    ret nz

    rst $28
    db $10
    ld [hl], e
    adc h
    nop
    rst $38
    ld bc, $01ff
    rst $38
    adc b
    rst $30
    jp nc, Jump_06d_64ff

    rra
    ld b, $01
    ld b, a
    add b
    ld hl, sp-$20
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
    rst $28
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $e1ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_06d_61df:
    rst $38
    rst $38
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
    rst $38
    add hl, bc
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    call z, Call_000_2037
    rst $18
    ld a, [bc]
    db $fd
    ld [bc], a
    db $fd
    inc b
    ei
    jr z, @-$27

    ld [$10f7], sp
    rst $28
    ld [$40f7], sp
    cp a
    ld h, d
    sbc l
    ld l, d

jr_06d_6209:
    sub l
    inc d
    db $eb
    ld [$ecf7], sp
    inc de
    add b
    ld a, a
    jr nz, @-$1f

    nop
    rst $38
    jr c, jr_06d_61df

    inc d
    db $eb
    ld [bc], a
    db $fd
    ld h, e
    sbc h
    ld [hl], $c9
    and [hl]

jr_06d_6221:
    ld e, c
    or $09
    xor l
    ld d, d
    ld [hl], b
    adc a
    jr nz, jr_06d_6209

    inc e
    db $e3
    push hl
    ld a, [de]
    push hl
    ld a, [de]
    dec c
    ld a, [c]
    inc a
    jp Jump_06d_54ab


    dec bc
    db $f4
    ld c, e
    or h
    dec bc
    db $f4
    inc hl
    call c, $9966
    jr nz, jr_06d_6221

    ret nz

    ccf
    inc b
    ei
    call z, Call_06d_5333
    xor h
    db $10
    rst $28
    ld d, $e9
    ld a, [hl]
    ld bc, $0003
    ldh [rP1], a
    rst $20
    ld hl, sp-$01
    rst $38
    rra
    rst $38
    ld c, e
    or a
    ld b, e
    cp a
    ld a, e
    add a
    ei
    rlca
    ei
    rlca
    rst $38
    inc bc
    cp d
    rlca
    ld a, [c]
    rlca
    inc sp
    add $8d
    db $76
    rrca
    inc b
    inc bc
    inc b
    adc a
    inc b
    db $f4
    ld [$fffe], a
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    ld a, $ff
    ld a, $ff
    ld e, $ff
    jr c, @+$01

    ld a, l
    ld a, [$fa3d]
    add hl, sp
    ld a, [c]
    inc [hl]
    ld a, [$f43b]
    ld a, [hl-]
    push af
    ld [hl], a
    db $fd
    ld a, e
    db $fd
    ld a, d
    rst $38
    cp $ff
    rst $38
    rst $38
    ld c, $ff
    ld c, $fd
    rlca
    db $fd
    dec b
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
    add b
    rst $38
    ld [bc], a
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc

jr_06d_62d3:
    rst $38
    rlca

jr_06d_62d5:
    rst $38
    ld [bc], a
    rst $38
    rst $18
    cp $ff
    cp $ff
    cp $fe
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
    rst $38
    db $fd
    di
    db $fd
    cp $fd
    ld [bc], a
    db $fd
    jr nz, jr_06d_62d3

    and c
    ld e, [hl]
    ld h, a
    sbc [hl]
    ld sp, $60ce
    rst $38
    ld bc, $0bfe
    db $f4
    ld bc, $a0fe
    ld e, a
    add c
    ld a, a
    add c
    ld a, a
    ld d, b
    xor a
    ld l, b
    sub a
    jr c, jr_06d_62d5

    ld [hl-], a
    call $ee11
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add d
    ld a, l
    nop
    rst $38
    ld bc, $81fe
    ld a, [hl]
    nop
    rst $38
    db $10
    rst $28
    inc b
    ei
    nop
    rst $38
    ld a, b
    add a
    ld e, h
    and e
    ld d, b
    xor a
    ld a, [de]
    push hl
    sbc c
    ld h, [hl]
    add h
    ld a, e
    ld [hl], c
    adc [hl]
    add b
    ld a, a
    add [hl]
    ld a, c
    sub a
    ld l, b
    cp l
    ld b, d
    sbc l
    ld h, d
    ld [hl], $c9
    ccf
    ret nz

    ld e, a
    and b
    ld a, a
    add b
    ld h, [hl]
    sbc c
    ld d, [hl]
    xor c
    rra
    ldh [$3b], a
    call nz, $e01f
    ld a, $01
    ld bc, $b800
    ret nz

    db $fc
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    ld l, l
    sub d
    db $76
    adc b
    rst $30
    ld [$01fe], sp
    ei

jr_06d_6367:
    inc b
    rst $28
    db $10
    di
    ld [$00ff], sp
    db $e3
    ld [$9a61], sp
    rst $38
    nop
    nop
    nop
    ld b, b
    add b
    db $e4
    ld hl, sp-$02
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
    rst $38
    rst $38
    rst $38
    push af
    adc c
    sub b
    call Call_06d_49b2
    cp $01
    xor b
    inc de
    ld c, c
    ld [hl-], a
    xor d
    db $10
    ld d, h
    inc hl
    adc d
    jr nz, jr_06d_6367

    ld h, b
    xor $44
    dec a
    ret nz

    xor b
    ld b, b
    add hl, sp
    ret nz

    ld [hl], c
    ret c

    bit 7, b
    ld [hl-], a
    ret c

    or h
    db $fd
    ei
    di
    rst $08
    di
    xor $ef
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    ld a, [$fefb]
    rst $38
    ei
    db $fc
    ld a, [$fafd]
    db $fd
    ld sp, hl
    rst $38
    db $fd
    rst $38
    rst $30
    rst $30
    ld a, a
    rst $38
    and [hl]
    rst $38
    xor [hl]
    rst $38
    db $ed
    rst $38
    push af
    rst $28
    rst $38
    rst $38
    ld a, h
    rst $38
    rst $38
    ld a, a
    db $fd
    ld a, a
    cp c
    ld a, a
    ld a, c
    cp a
    ld sp, hl
    ccf
    rst $38
    ccf
    ei
    cp a
    db $db
    cp a
    cp a
    rst $18
    rst $38
    sbc a
    sbc a
    rst $38
    rst $28
    rst $18
    rst $18
    rst $28
    rst $18
    rst $28
    ld l, a
    rst $18
    rst $10

Jump_06d_63fd:
    rst $28
    rst $38
    rst $20
    ld a, a
    rst $20
    rst $30
    ld l, a
    ld a, e
    rst $20
    rst $28
    ld [hl], e
    ld a, a
    or e
    cp e
    ld [hl], a
    or l
    ld a, e
    ccf
    pop af
    ld d, l
    cp e
    db $dd
    cp e
    ld e, [hl]
    cp c
    ld a, d
    sbc l
    ld e, $f9
    ld a, [hl-]
    db $dd
    ld a, a
    adc h
    ld a, a
    adc h
    dec l
    sbc $3f
    call z, $dc26
    cpl
    sbc $1f
    and $3f
    add $9f
    ld h, [hl]
    ld a, [hl]
    and a

Jump_06d_6430:
    ld a, a
    and a
    ld a, e
    and a
    rra
    rst $28
    xor a
    ld d, e
    rst $18
    inc hl
    rst $08
    ld sp, $738d
    adc a
    ld [hl], c
    db $fd
    inc de
    db $ed
    inc de
    xor $13

jr_06d_6446:
    db $e3
    db $10
    ld [$ea10], a
    db $10
    ld [$ea10], a
    db $10
    ld [$da10], a
    jr nz, jr_06d_6446

    ld [$0039], sp
    call $dd00
    ldh [$fd], a
    ld hl, sp+$7c
    ld hl, sp-$24
    jr c, @+$01

jr_06d_6463:
    ccf
    ccf
    rst $38
    cp e
    ld e, a
    dec de
    rst $38
    rst $18
    ccf
    adc a
    ld a, a
    adc a
    ld a, a
    rra
    rst $28
    rst $18
    cpl
    ld a, a
    rra
    ccf
    ld e, a
    ld a, a
    rra
    ld l, a
    rra
    ld c, a
    ccf
    ccf
    rrca
    ld e, a
    ccf
    rra
    ccf
    ccf
    ccf
    ccf
    rrca
    ld a, h
    ld h, e
    ld e, [hl]
    ccf
    rrca
    inc bc
    ret


    ldh a, [rHDMA4]
    xor e
    inc bc
    db $fd
    ld b, c
    cp a
    adc c
    ld [hl], a
    ld e, c
    and [hl]
    jr c, jr_06d_6463

    ld [hl], c
    adc a
    db $eb
    dec d
    inc bc
    nop
    ld d, d
    dec c
    sub e
    cpl
    or a
    rrca
    jp $b43f


    ld c, a
    cp b
    ld b, a
    ld c, $f1
    ld h, d
    sbc l
    ld l, e
    sub h
    ld [de], a
    xor l
    ld b, c
    ccf
    xor e
    ld a, a
    ld d, [hl]
    xor a
    ld [hl+], a
    adc $d5
    adc h
    adc d
    inc a
    db $dd
    db $fc
    sbc h
    ld a, e
    rst $30
    ld a, e
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
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
    cp a
    rst $38
    cp $ff
    cp e
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    ld a, h
    rst $38
    push af
    rst $38
    pop af
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    push hl
    rst $38
    db $eb
    rst $38
    ei
    rst $38
    jp $cfff


    rst $38
    jp $93ff


    rst $38
    sbc a

Jump_06d_64ff:
    rst $38
    db $e3
    rst $38
    rst $20
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $28
    rra
    rst $38
    rrca
    ld a, a
    adc a
    rst $38
    adc a
    rst $38
    add a
    sub a
    rst $08
    rst $18
    add a
    sbc a
    rst $00
    db $eb
    rst $00
    xor e
    ld b, a
    ld e, $01
    ld bc, $0100
    nop
    ld bc, $ff00
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
    cp a
    nop
    rst $30
    ld hl, sp-$62
    ld a, a
    db $76
    add c
    push af
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
    rst $38
    rst $38
    rst $38
    rst $18
    ccf
    rst $30
    rst $38
    rst $38
    ld a, a
    cp l
    jp $c6bb


    ld b, [hl]
    cp [hl]
    sbc [hl]
    ld a, [hl]
    cp [hl]
    ld a, h
    db $fd
    ld a, $1f
    cp $de
    ld e, $a4
    ld e, $b7
    ld c, h
    or [hl]
    call $fcc1
    cp $f8
    db $fd
    ei
    ld c, [hl]
    di
    rrca
    rst $38
    ld e, d
    cp a
    rla
    ld a, b
    cp $81
    ld [hl], c
    adc [hl]
    jp z, Jump_06d_6430

    ld de, $21c3
    ld [hl], a
    ld [hl+], a
    cp [hl]
    ld e, $de
    ld a, a
    add sp, -$0a
    rst $30
    db $e4
    cp $e7
    cpl
    add $2f
    rst $00
    rst $30
    rrca
    and e
    rrca
    and [hl]
    ld e, a
    or $0f
    ld e, a
    cpl
    ld l, $af
    rst $38
    cp $ff
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

jr_06d_65e2:
    rst $38
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
    rst $38
    rst $38
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
    cp $ff
    rst $30
    rst $38
    rst $30
    ei
    cp $ff
    di
    cp $f5
    cp $e6
    rst $38
    add $ff
    dec hl
    cp $c5
    cp [hl]
    ccf
    db $fc
    ei
    db $fc
    ei
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    push hl
    rst $38
    push af
    ei
    cp a
    rst $38
    sub e
    rst $38
    ei
    rst $38
    rst $10
    rst $38
    add e
    rst $38
    rst $10
    rst $38
    rst $18
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
    rst $00
    ccf
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
    ccf
    nop
    rra
    nop
    cp a
    ld b, b
    ld sp, hl
    cp $d7
    cpl
    xor a
    ret nc

    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr z, jr_06d_65e2

    inc e
    ld bc, $0186
    ld sp, $a806
    ld d, $2b
    inc d
    ld h, e
    rrca
    jp nc, $b30d

    ld [$102d], sp
    cp h
    inc sp
    inc a
    di
    db $ec
    di
    db $db
    rst $20
    ld [$cfcf], a
    jp nc, $d6f8

    db $fd
    ld [c], a
    rst $30
    ld a, b
    ld h, a
    ldh a, [$de]
    db $e3
    and a
    db $fd
    ld sp, hl
    cp a
    ld [hl], a
    dec bc
    and a
    ld e, a
    adc a
    ld e, a
    rst $18
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    cp $7f
    cp $7f
    rst $38
    cp a
    ld a, a
    ccf
    rst $18
    ret z

    scf
    rst $28
    nop
    push af
    ld b, d
    db $fc
    db $e3
    db $fc
    rst $28
    ei
    ei
    rst $30
    ei
    ld [c], a
    ld a, [$e2df]
    call c, $fde7
    db $fc
    db $fc
    cp $ff
    rst $38
    ret c

    rst $38
    sbc $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    pop af
    rst $38
    cpl
    rst $38
    ld l, a
    rst $38
    ld [hl], e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $f9
    push af
    ldh a, [$ea]
    ldh a, [$e7]
    ldh a, [$ee]
    ldh a, [$d5]
    ret nz

    cp $e0
    call nc, $8888
    add b
    ld d, e
    add b
    adc d
    nop
    dec e
    nop
    jr z, jr_06d_66ee

jr_06d_66ee:
    rla
    nop
    ld c, h
    inc sp
    call nc, $8d07
    ld b, $00
    ld e, a
    ei
    db $fc
    rst $38
    ld hl, sp-$16
    pop af
    push af
    ld [c], a
    db $ec
    rst $20
    db $fc
    ld sp, hl
    ld sp, hl
    cp $f1
    or $a2
    inc e
    ld a, a
    adc h
    rst $28
    inc de
    ld bc, $b7f6
    rst $38
    cp a
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
    ld a, a
    rst $38
    ccf
    ld a, a
    cp a
    ld a, a
    cp a
    ld e, a
    cp a
    xor a
    ld e, a
    rst $28
    rra
    rst $38
    rrca
    rst $10
    cpl
    rst $10
    cpl
    rst $18
    daa
    rst $28
    rla
    rst $38
    di
    ld [hl], a
    ei
    db $ed
    inc de
    or $e9
    cp $ff
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
    jr jr_06d_6773

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_06d_6783

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_06d_6793

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_06d_67a3

    ld [hl-], a

jr_06d_6773:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_06d_67b3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_06d_6783:
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

jr_06d_6793:
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

jr_06d_67a3:
    ld h, e
    ld h, h
    ld h, l
    ld d, [hl]
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

jr_06d_67b3:
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld d, [hl]
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, e
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
    ld a, e
    adc d
    ld a, e
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
    ld a, e
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

    ld a, e
    ret


    jp z, $cccb

    call $cfce
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $7b
    sbc c
    rst $10
    ret c

    reti


    jp c, $db56

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
    xor $ef
    ld a, e
    ldh a, [$f1]
    ld a, [c]
    di
    ld a, e
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    ld a, e
    cp $ff
    nop
    ld bc, $027b
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$5609], sp
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr @+$58

    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_06d_6893

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_06d_68a3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0707
    rlca

jr_06d_6893:
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0701
    rlca
    rlca

jr_06d_68a3:
    rlca
    rlca
    ld bc, $0102
    ld bc, $0101
    ld bc, $0101
    ld bc, $0701
    rlca
    rlca
    ld bc, $0101
    nop
    ld bc, $0101
    inc bc
    ld bc, $0101
    ld bc, $0701
    rlca
    rlca
    ld bc, $0101
    nop
    ld [bc], a
    ld bc, $0301
    ld bc, $0101
    ld bc, $0701
    rlca
    rlca
    ld bc, $0001
    nop
    ld [bc], a
    ld bc, $0301
    ld bc, $0101
    ld bc, $0701
    rlca
    ld bc, $0101
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0701
    rlca
    rlca
    ld bc, $0001
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0001
    ld bc, $0700
    rlca
    rlca
    ld bc, $0201
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    ld bc, $0700
    rlca
    rlca
    ld bc, $0201
    nop
    nop
    ld bc, $0101
    ld bc, $0100
    ld bc, $0701
    rlca
    rlca
    ld bc, $0001
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0701
    rlca
    rlca
    ld bc, $0103
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rlca
    rlca
    rlca
    ld bc, $0000
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    rlca
    rlca
    rlca
    ld bc, $0200
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld hl, $0707
    rlca
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0707
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0909
    nop
    rrca
    rrca
    rrca
    add hl, bc
    add hl, bc

jr_06d_6995:
    add hl, bc
    add hl, bc
    add hl, bc
    nop
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rrca
    rrca
    rrca
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    nop
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rrca
    rrca
    rrca
    rrca
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
    jr z, jr_06d_6995

    ld b, h
    add hl, sp
    ld hl, $7d18
    nop
    ld l, [hl]
    add b
    rla
    add sp, -$17
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    cp a
    ld a, a
    dec sp
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    jr nz, @+$01

    xor b
    db $76
    jp c, Jump_000_0075

    db $fd
    db $76
    add hl, bc
    add a
    ld l, b
    ld l, l
    ld a, [c]
    db $ed
    ld a, [de]
    rst $08
    ld c, $86
    ld l, a
    or e
    ld h, a
    daa
    jp $c107


    sbc e
    ld h, c
    inc hl
    ld a, b
    ld c, d
    ldh [$95], a
    ret nz

    or d
    ret z

    db $dd
    ld hl, sp+$7e
    db $fd
    ld a, a
    ccf
    rrca
    ccf
    rra
    ld a, a
    sub a
    ccf
    dec d
    dec bc
    xor b
    rra
    ld c, a
    sub b
    bit 0, c
    pop de
    ld b, b
    ld [bc], a
    jp hl


    rra
    jp hl


    xor d
    ret z

    rst $00
    ret nc

    jp z, $fbd9

    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $30
    rst $38
    ret c

    rst $38
    and $df
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
    ld b, b
    cp a
    nop
    rst $38
    ld [bc], a
    db $fd
    ld d, $f9
    ld a, b
    rst $38
    ld a, [de]
    db $ed
    ld bc, $20ff
    rst $18
    and b
    ld a, a
    ld b, b
    cp a
    ld a, b
    add a
    add b
    rst $38
    ld [$00f7], sp
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    inc bc
    db $fc
    ld e, l
    and d
    ld l, a
    sub b
    cp $81
    sub a
    ldh [$f4], a
    ld hl, sp-$01
    cp $c7
    rst $38
    db $fc
    db $e3
    ld [c], a
    db $fd
    or $f9
    or b
    rst $38
    ei
    db $fc
    ld sp, hl
    cp $f9
    db $fc
    cp $fc
    db $fd
    cp $ff
    rst $38
    rst $30
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
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
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fa
    db $fc
    ldh a, [$f8]
    ld sp, hl
    ldh [$c3], a
    ldh [$83], a
    push bc
    add a
    dec bc
    rla
    rrca
    ld l, a
    rra
    ld a, a
    cp a
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
    ei
    rst $38
    rst $38
    rst $38
    cp $ff
    add [hl]
    ld [bc], a
    or a
    nop
    pop hl
    ld bc, $0041
    inc h
    nop
    ld d, h
    add b
    sbc d
    ldh [$a5], a
    ret c

    sbc c
    ret nz

    ld a, b
    pop bc
    add d
    ld a, b
    ld [hl-], a
    call z, $c628
    ld sp, hl
    add [hl]
    inc h
    db $db
    dec l
    rst $18
    ld b, b
    cp e
    adc h
    pop af
    dec bc
    ldh a, [rNR44]
    call c, Call_06d_6cc6
    ld b, e
    ld a, h
    ld c, l
    cp $25
    rst $38
    ld c, a
    db $f4
    ld d, c
    and $2b
    db $f4
    adc $f1
    xor [hl]
    ld [hl], b
    daa
    ld a, h
    ld sp, hl
    ld a, [hl]
    ld a, c
    ccf
    ld e, $bd
    rst $38
    sbc [hl]
    rst $28
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
    ld h, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $ec
    rst $38
    ret nz

    rst $38
    call nz, $c3ff
    db $fc
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add $ff
    ld a, [c]
    rst $38
    rra
    rst $38
    dec b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    adc [hl]
    ld a, c
    ld a, [bc]
    push af
    dec b
    ld a, [$fb04]
    ld hl, $0cde
    di
    db $e3
    inc e
    ld h, b
    sbc a
    db $10
    rst $28
    ld b, b
    cp a
    ld [de], a
    db $ed
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    ld bc, $0efe
    pop af
    ld c, $f1
    ccf
    ret nz

    ld e, b
    and a
    add b
    ld a, a
    adc e
    ld [hl], h
    inc bc
    db $fc
    or h
    ld b, e
    dec sp
    nop
    adc a
    nop
    rst $10
    ldh [$f4], a
    ld hl, sp+$7f
    cp $63
    rst $38
    ld l, [hl]
    pop af
    xor a
    ld [hl], b
    cp $31
    rst $18
    jr nc, jr_06d_6bac

    jr @+$09

    jr @+$01

    ld [$f0e9], sp
    ld a, [$fefc]
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $f8
    db $fc
    ld hl, sp-$10
    pop af
    ldh [$a2], a
    pop bc
    push bc
    add e
    sbc a
    rlca
    ld a, $0f
    ld a, e
    rra
    ei
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38

jr_06d_6bac:
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $fe
    cp $fc
    db $f4
    ld hl, sp-$38
    ldh a, [$f1]
    ldh [$e1], a
    jp $83c7


    or h
    dec sp
    cp h
    ld a, e
    or $79
    or d
    ld a, l
    ld [hl-], a
    dec e
    dec de
    inc e
    xor l
    ld c, $3a
    rra
    or h
    dec de
    ld e, b
    rlca
    adc b
    rlca
    ld b, h
    inc bc
    jp Jump_06d_5703


    add e
    xor a
    ld b, a
    ld d, [hl]
    daa
    pop de
    ld b, $d6
    inc bc
    adc [hl]
    jp $c3d7


    ei
    pop af
    ld a, d
    ld [hl], c
    cp d
    ld a, l
    ld a, a
    ld a, $1e
    cp a
    ld e, a
    sbc a
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    ccf
    ccf
    rst $38
    rst $08
    rst $38
    cp a
    ld b, a
    ld [hl], a
    add c
    sub e
    xor a
    sub e
    rst $20
    db $eb
    di
    di
    rst $38
    rst $38
    rst $30
    rst $30
    rst $38
    add sp, -$08
    ldh [$e0], a
    add b
    add b
    ld a, b
    ld hl, sp+$7f
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
    ld a, a
    rst $38
    ld a, a
    add a
    ld a, a
    ld hl, sp+$7f
    rst $38
    rrca
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
    ld [hl], b
    adc a
    rst $18
    jr nz, jr_06d_6cb8

    adc b
    rra
    ldh [rNR22], a
    add sp, $00
    rst $38
    ld l, b
    sub a
    ld b, b
    cp a
    nop
    rst $38
    rla
    add sp, $61
    sbc [hl]
    rst $00
    jr c, jr_06d_6cac

    xor b
    ld d, a
    xor b
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld a, l
    add d
    ld b, a

jr_06d_6c61:
    cp b
    adc a
    ld [hl], b
    rst $38
    nop
    ccf
    nop
    add a
    nop
    ret nc

jr_06d_6c6b:
    ldh [$f4], a
    ld hl, sp-$24
    jr c, jr_06d_6c6b

    inc b
    and $07
    db $db
    jr nz, jr_06d_6c61

    inc e
    rst $38
    rrca
    ccf
    rlca
    add a
    inc bc
    add e
    ld bc, $c0f4
    db $f4
    ld hl, sp-$10
    ld hl, sp-$1f
    ldh a, [$e7]
    pop bc
    res 0, a
    rla
    rrca
    ccf
    rrca
    ld a, a
    rra
    rst $38
    ccf
    ld a, a
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
    cp $ff
    cp [hl]
    rst $38
    ld a, [hl]
    rst $38
    rst $20
    rst $38
    push bc
    db $e3

jr_06d_6cac:
    add a
    res 3, a
    add a
    rra
    rrca
    ld e, $3f
    ccf
    ccf
    ccf
    ld a, a

jr_06d_6cb8:
    rst $38
    ld a, a
    cp $ff
    db $dd
    cp $bf
    db $fc
    or $39
    sbc e
    ld a, h
    ld a, [de]
    db $fc

Call_06d_6cc6:
    rst $38
    ld a, b
    and c
    ld a, [hl]
    ret nz

    ccf
    cp d
    ld [hl], l
    db $fc
    inc sp
    ld [c], a
    dec a
    ld c, c
    or a
    ld e, l
    and e
    dec d
    db $eb
    sbc c
    ld l, a
    dec de
    rst $38
    ld bc, $00ff
    rst $38
    ld de, $5aff
    cp a
    jp nc, $e3ff

    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor $f7
    xor $ff
    xor $ff
    rst $28
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    adc $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    rla
    rst $38
    ld a, e
    add l
    ldh a, [rIF]
    ldh [rNR34], a
    ld b, b
    nop
    ld bc, $0700
    nop
    rra
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ldh [rIE], a
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
    rst $38
    nop
    rst $38
    ret nz

    ccf
    cp $01
    db $fd
    ld [bc], a
    ld sp, hl
    ld b, $eb
    inc d
    and b
    ld e, a
    db $10
    rst $28
    sbc $21
    ld [hl], l
    adc d
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    sbc [hl]
    ld h, c
    ld a, l
    add b
    rst $08
    jr nc, jr_06d_6dbf

    sbc a
    rlca
    db $fc
    daa
    ld hl, sp+$0f
    ldh a, [rNR34]
    ldh [$7c], a
    add b
    db $fc
    nop
    ldh a, [rP1]
    rst $38
    nop
    nop
    nop
    add b
    nop
    ret nz

    ldh [rHDMA4], a
    jr c, jr_06d_6dc2

    add [hl]
    ldh [$f0], a
    ld a, [$fffc]
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $87ff


    rst $38
    rrca
    rst $38
    ld e, $ff
    jr c, @+$01

    ld [hl], c
    rst $38
    jp hl


    rst $38
    rst $10
    rst $38
    rst $30
    rst $38
    push af
    rst $38
    cp d
    rst $38
    pop af
    rst $38
    rst $38
    rst $38
    rst $28
    cp a
    adc $3f
    ei
    rlca
    rst $38
    nop
    ld a, a

jr_06d_6dbf:
    nop
    sub $29

jr_06d_6dc2:
    ld a, [de]
    ld h, l
    inc e
    db $e3
    sbc l
    ld h, d
    sbc l
    ld h, d
    ret


    ld [hl], $4c
    or e
    ld l, h
    db $d3
    ret nz

    rst $38
    ld d, d
    db $ed
    ld a, d
    db $e4
    rst $28
    ldh a, [$29]
    jp nc, $9ac5

    nop
    rst $38
    jp nz, $313d

    rst $18
    ld d, c
    rst $38
    rlca
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
    xor $ff
    xor l
    rst $38
    or e
    rst $28
    jp $f0fe


    db $fc
    xor $f0
    rst $10
    ld hl, sp-$0f
    db $fc
    jp hl


    ld a, [c]
    rst $20
    call c, $fff8
    ld d, c
    cp h
    rst $20
    nop
    nop
    nop
    ld [hl], c
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    ld bc, $073f
    nop
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
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    add b
    rst $38
    cp $ff
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
    or b
    ld c, a
    ld c, e
    or h
    add a
    ld a, b
    rra
    ldh [$3f], a
    ret nz

    rst $38
    nop
    cp a
    ld b, b
    nop
    rst $38
    ld b, b
    cp a
    ld sp, $3fce
    ret nz

    ld c, $f1
    ret nz

    ccf
    pop hl
    ld e, $1f
    ldh [$c0], a
    ccf
    cp b
    rlca
    ld hl, $0000
    nop
    ld bc, $0200
    ld bc, $0200
    inc b
    dec b
    dec bc
    ld bc, $0217
    ld l, l
    rlca
    db $db
    rrca
    or [hl]
    rra
    ld l, a
    ccf
    rst $18
    ld a, a
    rst $30
    cp a
    ld l, a
    rst $38
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
    rst $38
    ld a, [$f5ff]
    rst $38
    ld [$fdf2], a
    pop hl
    cp $fa
    db $fc
    di
    db $fc
    rst $30
    ld sp, hl
    or $fb
    db $fc
    rst $30
    ld hl, sp-$01
    cpl
    rst $18
    rlca
    rst $38
    and b
    rst $38
    db $fd
    cp [hl]
    ld [hl], a
    db $fc
    di
    db $fc
    ld a, a
    ldh a, [$ee]
    ldh a, [$fc]
    ldh [$d8], a
    ldh [$b0], a
    ret nz

    ret nz

    add b

Call_06d_6ebc:
    ret nz

    nop
    ldh [rP1], a
    cp d
    push bc
    cp b
    rst $00
    ret c

    rst $20
    call nc, Call_000_0ce3
    di
    dec c
    di
    and b
    rra
    ldh [$1f], a
    add b
    ld a, a
    pop de
    ld a, $fb
    inc e
    ld h, c
    sbc [hl]
    or b
    ld e, e
    db $10
    ld [hl], a
    adc a
    ld [hl], e
    ld b, e
    rst $38
    cpl
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
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $28
    rst $38
    xor a
    rst $38
    jp Jump_000_193f


    rlca
    or $09
    and [hl]
    inc e
    or $01
    ld [c], a
    dec e
    sbc a
    ldh [$f7], a
    ld [$01fe], sp
    adc a
    nop
    rst $30
    add hl, bc
    ld a, a
    rlca
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ld h, d
    sbc l
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
    ld a, a
    rst $38
    nop
    rst $38
    ld hl, sp-$01
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
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    cp a
    nop
    sbc a
    ld h, b
    call nz, $0f3b
    ldh a, [$3f]
    ret nz

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
    add b
    rra
    ld hl, $229f
    ld a, a
    ldh [$7f], a
    or d
    db $fd
    ld a, a
    ldh [$cf], a
    ldh [$e3], a
    ldh [$71], a
    ldh [$f0], a
    ldh [$ef], a
    ldh a, [$ef]
    ldh a, [rIE]
    ldh a, [$f7]
    add sp, -$75
    db $f4
    ld b, [hl]
    ld hl, sp-$30
    xor h
    db $ec
    ld d, c
    db $dd
    and d
    add sp, $56
    ret nz

    xor h
    ld de, $38c8
    sub b
    ldh [$30], a
    ld [hl], b
    ld h, b
    ld b, b
    ldh a, [$89]
    ldh a, [$a9]
    ldh a, [rSB]
    ldh a, [rNR11]
    ldh [rNR44], a
    ret nz

    ld b, a
    add b
    rlca
    add b
    db $ec
    nop
    ld a, b
    nop
    stop
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
    ld [$1400], sp
    nop
    nop
    nop
    ld hl, sp-$39
    ld a, [$20c5]
    db $db
    ld d, h
    adc e
    ld [hl], b
    adc a
    call nc, $343f
    rst $38
    ld a, [hl]
    rst $30
    ld a, [hl+]
    rst $30
    ld [hl+], a
    rst $38
    ld bc, $14fe
    db $e3
    ld b, b
    rst $38
    rst $08
    rst $38
    ld a, [$e7ef]
    cp $fa
    rst $38
    ei
    rst $38
    ei
    rst $38
    ld a, a
    rst $38
    ld a, c
    rst $38
    ld a, c
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ld hl, sp-$01
    cp h
    db $fc
    ld b, e
    and b
    adc [hl]
    add c
    ccf
    ld [$00df], sp
    xor [hl]
    dec b
    rst $38
    dec b
    rst $18
    ld b, $f9
    rra
    di
    ld a, a
    rst $38
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
    rlca
    rst $38
    call c, $ff23
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $f0ff
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    ld a, h
    add e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $ed
    ld [de], a
    rst $38
    nop
    cp $01
    inc b
    ei
    ret nz

    ccf
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    jp hl


    ld d, $db
    inc h
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    rst $28
    nop
    add sp, $00
    ld e, [hl]
    nop
    pop bc
    nop
    and b
    nop
    pop hl
    nop
    rst $38
    nop
    ld a, $00
    adc h
    nop
    ret c

    nop
    ret nz

    nop
    jp nz, Boot

    nop
    jr nz, jr_06d_7076

jr_06d_7076:
    jr nz, jr_06d_7078

jr_06d_7078:
    nop
    nop
    ld [$5c00], sp
    nop
    nop
    nop
    jr nz, jr_06d_7082

jr_06d_7082:
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
    db $fc
    nop
    rra
    nop
    inc bc
    nop
    ret nz

    nop
    ldh [rP1], a
    inc a
    nop
    rrca
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
    ld bc, $7800
    rst $20
    sub l
    db $eb
    ld h, b
    adc a
    ld d, c
    add [hl]
    ld l, c
    add [hl]
    ld b, l
    sbc [hl]
    jr nc, @+$01

    or c
    rst $38
    cp b
    rst $30
    inc [hl]
    ei
    nop
    rst $38
    ld e, b
    and a
    nop
    rst $38
    ld d, a
    rst $38
    ld b, [hl]
    rst $38
    ld [bc], a
    rst $38
    jp c, $ffff

    rst $38
    rst $38
    rst $38
    rst $38
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
    call Call_000_00ff
    nop
    xor $31
    xor a
    ld [hl], c
    rst $20
    ld a, c
    rst $30
    ld hl, sp-$10
    ld a, a
    ldh a, [$7f]
    sbc a
    rst $38
    ld a, a
    rst $38
    sbc l
    rst $38
    add sp, -$09
    inc bc

Call_06d_70fb:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    ret nz

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
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    rst $30
    ld [$31ce], sp
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

jr_06d_713f:
    rst $38
    pop hl
    ld e, $e0
    rra
    ld hl, sp+$07
    db $fc
    inc bc
    ld h, b
    rra
    ret nz

    ccf
    rst $18
    jr nz, jr_06d_713f

    nop
    ld hl, sp+$00
    rst $38
    nop
    sub a
    nop
    and c
    nop
    ld bc, $0200
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
    ld bc, $0100
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
    nop
    add b
    nop
    ldh [rP1], a
    jr c, jr_06d_7188

jr_06d_7188:
    rrca
    nop
    rra
    nop
    ld hl, sp+$00
    ret nz

    nop
    xor a
    di
    ld a, [de]
    rst $20
    ld hl, $a3de
    ld e, h
    or c
    ld e, [hl]
    xor c
    ld e, [hl]
    ld [bc], a
    db $fd
    sbc e
    rst $20
    ld h, c
    rst $28
    and b
    rst $38
    ld [$41f7], sp
    call c, $ff40
    ld b, b
    rst $38
    ld b, e
    rst $38
    add e
    rst $38
    or h
    ld a, [$fffa]
    rst $38
    rst $38
    rst $38
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
    or a
    rst $38
    rla
    ccf
    nop
    ret nz

    rst $38
    ld hl, sp-$09
    ld hl, sp-$01
    inc e
    ld a, c
    add a
    ld a, c
    rst $20
    pop hl
    sbc $7f
    cp a
    dec l
    rst $38
    scf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    add b
    rst $38
    ld b, b
    rst $38
    cp $ff
    ld a, b
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_06d_71ff:
    rst $38
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
    db $fc
    rst $38
    rst $38
    ld a, a
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
    add b
    ld a, a
    jr nz, jr_06d_71ff

    inc b
    ei
    inc b
    ei
    dec bc
    db $f4
    rra
    ldh [$3c], a
    jp Jump_000_00ff


    rst $38
    nop
    rra
    ldh [rOBP1], a
    or [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, $f9
    ld a, l
    add d
    ei
    inc b
    ld h, b
    rra
    inc a
    inc bc
    inc b
    inc bc
    rst $38
    nop
    db $fd
    nop
    di
    nop
    add c
    nop
    ld bc, $0100
    nop
    nop
    nop
    inc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    and b
    nop
    nop
    nop
    nop
    nop
    dec hl
    sub a
    sbc $27
    pop de
    ld l, $77
    inc c
    db $e3
    inc a
    ld h, c
    cp $c0
    ei
    set 6, a
    pop hl
    rst $18
    add c
    rst $38
    adc c
    or a
    ld b, b
    or l
    ld h, d
    sbc l
    nop
    rst $18
    jr nz, @+$01

    or b
    rst $38
    cp h
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    dec c
    rlca
    dec d
    rst $28
    rst $30
    rrca
    add a
    ld a, a
    rst $30
    ccf
    rst $30
    rrca
    rst $30
    rrca
    rst $38
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
    adc a
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rra
    rst $38
    ld [hl], a
    rst $38
    ccf
    rst $38
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    ldh [$df], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $3dff
    rst $00
    add hl, sp
    add $7d
    add d
    rst $38
    nop
    cp [hl]
    ld b, c
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    ld [hl], a
    adc b
    rra
    ldh [$3d], a
    jp nz, $c03f

    ld b, c
    cp [hl]
    ldh [$1f], a
    ret nz

    ccf
    ld c, $f0
    add hl, sp
    ret nz

    ld e, $e0
    cp $00
    ld hl, sp+$00
    ldh a, [rP1]
    call z, $0400
    nop
    jr nz, jr_06d_7330

jr_06d_7330:
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
    ld a, [bc]
    nop
    ld b, $00
    ld a, [bc]
    nop
    stop
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
    ld [$509d], a

jr_06d_7363:
    cpl
    ret nc

    cpl
    ld e, b
    daa
    xor b
    scf
    jr nc, jr_06d_7363

    ld d, b
    rst $38
    ret nc

    rst $38
    ld hl, sp-$21
    add b
    rst $38
    add b

jr_06d_7375:
    rst $38
    jr nz, jr_06d_7375

    ret c

    daa
    nop
    rst $18
    ld e, l
    rst $38
    db $fd
    rst $38
    sub b
    ld a, a
    ld sp, $f7fe
    rst $38
    rst $38
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
    rst $30
    cp $ff
    rst $38
    rst $38
    sbc [hl]
    rst $38
    ld [hl], h
    ld hl, sp+$6b
    db $fc
    ld e, e
    db $fc
    ld e, e
    db $fc
    reti


    cp $7b
    db $fc
    ld hl, sp-$01
    rst $38
    rst $38
    adc c
    rst $38
    ld a, [c]
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    cp $c1
    ld sp, hl
    rlca
    rst $30
    rrca
    rst $08
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

jr_06d_73cc:
    rst $38
    rst $38
    db $fc
    rst $38
    ei
    db $fc
    push af
    ei
    db $eb
    rst $30
    rst $10
    rst $28
    rst $28
    sbc a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, e
    rst $38
    sbc $ff
    ld l, e
    rst $38
    ccf
    cp $36
    db $fd
    call c, Call_06d_70fb
    rst $38
    and b
    rst $38
    ld b, b
    rst $38
    and h
    ld e, e
    and h
    ld e, e
    add sp, $17
    ld c, [hl]

jr_06d_73f9:
    or c
    ld a, a
    add b
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    rst $28
    db $10
    add l
    ld a, d
    inc b
    ei
    rst $00
    jr c, jr_06d_73cc

    nop
    inc a
    nop
    sub a
    nop
    rra
    nop
    sub c
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld bc, $0700
    nop
    adc e
    nop
    sbc a
    nop
    ld e, $00
    ld a, $00
    jr c, jr_06d_742e

jr_06d_742e:
    jr c, jr_06d_7430

jr_06d_7430:
    ld [hl], b
    nop
    ld d, b
    nop
    ld h, b
    nop
    ret nz

    nop
    ret z

    nop
    add b
    nop
    nop
    nop
    inc e
    nop
    ld [bc], a
    nop
    ld [$8900], sp
    nop
    nop
    nop
    ld b, b
    nop
    jr nz, jr_06d_744c

jr_06d_744c:
    ld [hl+], a
    nop
    ld b, l
    nop
    add b
    nop
    nop

jr_06d_7453:
    nop
    nop
    nop
    inc e
    nop
    jr jr_06d_745a

jr_06d_745a:
    jr nc, jr_06d_745c

jr_06d_745c:
    ld h, b
    nop
    ld b, b
    nop
    jp hl


    add $a4
    db $d3
    jr z, jr_06d_73f9

    db $f4
    inc bc
    db $ec
    inc de
    sbc b
    ld a, a
    ret


    ld a, [hl]
    ld e, l
    rst $28
    rst $08
    db $ed
    ld c, h
    rst $38
    ld b, h
    rst $38
    ld [$88fd], sp
    ld [hl], a
    jr c, jr_06d_7453

    rla
    rst $38
    di
    rst $38
    ld [hl+], a
    rst $38
    dec a
    ld a, [$fffa]
    rst $38
    rst $38
    rst $38
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
    db $dd
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    rst $08
    ld [hl], b
    rst $38
    nop
    nop
    rst $38
    nop
    ld hl, sp+$10
    ldh a, [$f8]
    ldh a, [rIE]
    ldh [$e0], a
    rst $38
    ldh [$e3], a
    ldh [rIE], a
    sbc a
    reti


    rlca
    rlca
    rra
    rra
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
    cp $fe

jr_06d_74c3:
    db $fd
    push af
    ei
    db $eb
    rst $30
    rst $10
    rst $28
    xor a
    rst $18
    ld e, a
    cp a
    cp a

jr_06d_74cf:
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    ld [$19f7], sp
    and $80
    ld a, a
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_06d_74cf

    jr @-$17

    jr nc, jr_06d_74c3

    ld [bc], a
    db $fd
    add b
    ld a, a
    di
    inc c
    pop hl
    ld e, $fa
    dec b
    db $ec
    inc de
    or $09
    push af
    ld a, [bc]
    push af
    ld a, [bc]
    ld [c], a
    dec e
    ret nz

    ccf
    ld b, b
    cp a
    pop bc
    ld a, $a4
    ld e, e
    ld d, b
    rrca
    ldh [$1f], a
    ldh [$1f], a
    ld [hl+], a
    dec e
    ld a, a
    nop
    rst $38
    nop
    ldh a, [rP1]
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
    add b
    nop
    ld [hl], b
    nop
    inc l
    nop
    ld bc, $0000
    nop
    inc b
    nop
    ret nz

    nop
    ld b, b
    nop
    inc b
    nop
    call nz, $8000
    nop
    ld [hl], b
    nop
    jr nz, jr_06d_7548

jr_06d_7548:
    inc b
    nop
    add h
    nop
    add hl, de
    nop
    ld d, b
    nop
    stop
    ldh [rP1], a
    ld b, b
    nop
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
    ld [bc], a
    db $fd
    ld d, l
    xor l
    jr nz, @-$2f

    jr nz, @-$1f

    ld [$82f7], sp
    rst $38
    ld [hl], b
    rst $28
    ld e, h
    db $e3
    ld b, l
    ei
    ld b, c
    rst $38
    ld d, b
    rst $38
    add h
    ld a, e
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld d, a
    rst $38
    inc b
    rst $38
    nop
    rst $38
    sbc b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor $ff
    ld l, [hl]
    rst $38
    cp e
    rst $38
    ld a, a
    rst $38
    rrca
    rrca
    ldh a, [rSVBK]
    rst $38
    rra
    cp $0e
    rlca
    ld hl, sp-$01
    inc bc
    rst $38
    rrca
    rst $28
    rra
    rra
    rst $38
    ccf
    rst $38
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fd
    push af
    ei
    di
    rst $28
    rst $28
    rst $18
    rst $18
    cp a
    cp a
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
    db $f4
    rst $38
    ret z

    rst $38
    ret nz

    cp a
    nop

jr_06d_75d3:
    rst $38
    nop
    rst $38
    nop
    rst $38
    add hl, bc
    rst $30
    ld b, $ff
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    ld [$00f7], sp
    rst $38
    jr nz, jr_06d_75d3

    nop
    rst $38
    db $10
    rst $28
    sub b
    ld l, a
    ld [hl+], a
    db $dd
    ld l, [hl]
    sub c
    dec a
    jp nz, $ff00

    add hl, bc
    or $40
    cp a
    ld b, c
    cp [hl]
    ld c, b
    or a
    sub b
    ld l, a
    nop
    rst $38
    jr nz, @-$1f

    dec b
    ld a, [$f609]
    ld [bc], a
    db $fd
    add b
    ld a, a
    pop de
    ld l, $ff
    nop
    dec d
    ld a, [bc]
    rlca
    nop
    rlca
    nop
    rlca
    nop
    ld c, $00
    ld b, $00
    ld b, $00
    ld c, $00
    ld b, $00
    inc b
    nop
    nop
    nop
    ld [$5800], sp
    nop
    ld a, b
    nop
    nop
    nop
    ld [$1000], sp
    nop
    stop
    nop
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
    nop
    nop
    ld l, $f0
    sub e
    db $e4
    ld l, e
    add l
    ld e, l

jr_06d_7657:
    add e
    ld l, l
    sub a
    ld [hl], h
    sub a
    ld [hl], a
    cp a
    ld sp, $73ff
    db $fd
    ld l, c
    rst $30
    ld [c], a
    rst $38
    jr nc, jr_06d_7657

    add [hl]
    ld l, h
    ld [hl], l
    rst $08
    ld c, l
    rst $38
    ld e, a
    rst $38
    xor $ff
    inc c
    rst $38
    add hl, de
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
    rst $28
    rst $38
    rst $28
    rst $38
    and $ff
    rst $38
    rst $38
    rrca
    rrca
    sbc a
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
    rst $28
    rst $28
    rst $18
    rst $18
    cp a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    db $ed
    rst $38
    pop bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ld a, [$00e7]

jr_06d_76bb:
    rst $38
    rlca
    rst $38
    rlca

jr_06d_76bf:
    rst $38
    ld l, a
    rst $38
    ld h, a
    rst $38
    ldh [$df], a
    sub b
    rst $28
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    rlca
    ld hl, sp+$0c
    rst $30
    adc b
    ld a, a
    ld [$10ff], sp
    rst $38
    jr nz, jr_06d_76bb

    and b
    ld e, a
    jr nz, jr_06d_76bf

    nop
    rst $38
    nop
    rst $38
    sub h
    ld l, e
    ld de, $05ee
    ld a, [$fb04]
    ld [$40f7], sp
    cp a
    ld [$00f7], sp
    rst $38
    add b
    ld a, a
    nop
    rst $38
    add b
    ld a, a
    add hl, bc
    or $68
    sub a
    ldh a, [rIF]
    ld a, [c]
    dec c
    db $f4
    dec bc
    add b
    ld a, a
    jr nz, @-$1f

    inc de
    db $ec
    db $fc
    inc bc
    ld l, [hl]
    sub c
    pop bc
    ld a, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rlca
    nop
    ld bc, $8000
    nop
    ldh [rP1], a
    rra
    nop
    rra
    nop
    ld b, e
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
    inc sp
    ld a, a
    or a
    ld a, [hl]
    or d
    cp h
    and e
    db $fc
    add d
    db $fd
    add e
    db $fd
    add c
    rst $28
    or d
    rst $08
    ld c, [hl]
    rst $38
    ld l, l
    ld a, $44
    cp a
    ld d, l
    xor a
    and c
    rst $18
    pop hl
    rst $38
    ld hl, $71ff
    cp a
    scf
    rst $38
    add e
    rst $38
    rlca
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor a
    rst $38
    rst $38
    ld a, a
    rst $30
    rst $38
    ld [c], a
    rst $38
    jp nz, $ffff

    rst $38
    cp a
    rst $38
    or l
    rst $38
    add hl, sp
    rst $38
    pop de
    rst $38
    sub c
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $08
    rst $38
    rst $30
    rst $38
    cp l
    rst $38
    add b
    rst $38
    ret nz

    cp a
    pop de
    cpl
    nop
    rst $38
    nop
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

jr_06d_77ad:
    ld a, a
    nop
    rst $38
    ld b, $ff
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
    inc l
    db $d3
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
    jr nz, jr_06d_77ad

    ld h, b
    sbc a
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
    ld b, b
    cp a
    nop
    rst $38
    call nz, $fd3b
    ld [bc], a
    ldh [$1f], a
    add b
    ld a, a
    ld hl, sp+$07
    rst $30
    nop
    rst $38
    nop
    rra
    nop
    rlca
    nop
    rra
    nop
    db $fd
    nop
    push af
    nop
    halt
    ld [de], a
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
    inc b
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0800], sp
    nop
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
    db $eb
    rla
    sub [hl]
    ld c, a
    ld hl, $51ce
    adc h
    jp Jump_000_20bc


    db $fd
    ld h, $f9
    ld h, c
    rst $38
    ld c, e
    rst $38
    xor e
    ld a, a
    ld [hl+], a
    rst $38
    ld b, $ff
    and b
    ld e, a
    swap h
    inc de
    db $fc
    pop af
    cp $fc
    rst $38
    ld a, [$fbff]
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
    cp a
    rst $38
    cp e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $db
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
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
    rst $38
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
    inc e
    rst $38
    inc l
    rst $38
    db $e4
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    or a
    rst $38
    rra
    rst $38
    cp $ff
    ld h, a
    rst $38
    ld e, $ff
    rlca
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
    add b
    ld a, a
    dec c
    rst $38
    inc c
    rst $38
    xor e
    db $fc
    add b
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    add b
    ld a, a
    pop hl
    ld e, $4f
    or b
    ld c, [hl]
    or b
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    rst $10
    nop
    inc a
    nop
    db $fd
    nop
    rst $18
    nop
    ld a, a
    nop
    inc de
    nop
    ld b, b
    nop
    ld b, $00
    jr nz, jr_06d_78f4

jr_06d_78f4:
    nop
    nop
    ld a, [hl+]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], e
    adc a
    ret


    dec a
    add $39
    ld b, a
    add hl, sp
    add $39
    inc h
    di
    db $e4
    ei
    add b
    rst $38
    inc e
    cp $5d
    cp [hl]
    db $10
    rst $38
    ld e, d
    cp l
    ld b, b
    cp a
    ld [$94f7], sp
    ld a, a
    db $ec
    rst $38
    ld hl, sp-$01
    cp e
    rst $38
    and b
    rst $38
    ld l, b
    or a
    or b
    rst $38
    db $fc

Call_06d_792b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    xor c
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
    sbc a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp a
    rst $38
    rrca
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, e
    rst $38
    ld a, e
    rst $38
    cpl
    rst $38
    rst $08
    rst $38
    ld c, a
    rst $38
    dec bc
    rst $38
    dec c
    ld a, [$f916]
    ld b, $f9
    ld hl, sp-$01
    ccf
    rst $38
    cp a
    rst $38
    rra
    rst $38
    adc a
    rst $38
    rra
    rst $38
    rra

jr_06d_7985:
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld e, a
    cp a
    ccf
    rst $18
    ld e, a
    cp a
    ld e, a
    cp a
    ld a, a
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
    jr nz, jr_06d_7985

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$f1ff], sp
    ld c, $70
    rrca
    ld sp, hl
    ld b, $7e
    ld bc, $01fe
    ld c, a
    nop
    sub $00
    ld d, a
    nop
    dec d
    nop
    ld b, $00
    add e
    nop
    add b
    nop
    add h
    nop
    stop
    nop
    nop
    ld hl, $8200
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    nop
    nop
    cpl
    ret nc

    sbc l
    ldh [$2a], a
    ret nz

    add hl, sp
    ret nz

    ld a, [de]
    pop af
    ld [hl], $e1
    cp d
    ld h, l
    ld [hl], h
    db $e3
    ld [hl], h
    db $eb
    ld h, b
    rst $38
    ld [hl], h
    ei
    push af
    jp z, $8e31

    call nc, $ee0f
    ccf
    rst $38
    ld a, l
    ld l, a
    db $fd
    ret z

    rst $38
    sbc l
    rst $38
    sbc a
    rst $38
    ld b, a
    cp l
    dec h
    rst $38
    ccf
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ld a, l
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $30
    rst $38
    or $ff
    rst $38
    rst $38
    rst $30
    rst $38
    dec sp
    rst $38
    dec de
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
    cp $ff
    db $fc
    rst $38
    ld a, l
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, l
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rst $38
    cp a
    rst $38
    cp a
    and a
    ld e, a
    ldh a, [rIF]
    ld a, h
    add e
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $08

jr_06d_7a6f:
    rst $38
    add [hl]
    ld sp, hl
    ld bc, $01ff
    rst $38
    nop
    rst $38
    inc e
    rst $38
    jr @+$01

    jr @+$01

    db $10
    rst $38
    jr nz, @+$01

    ld h, b
    rst $38
    ld l, b
    rst $30
    ld h, $f9
    ld b, c
    cp $01
    cp $c0
    ccf
    jr nz, jr_06d_7a6f

    ld bc, $04fe
    rst $38
    ld h, $df
    jp nz, Jump_000_053f

    cp $55
    xor [hl]

jr_06d_7a9c:
    ld d, h
    xor a
    or b
    ld c, a
    call nc, $fd2b
    nop
    dec a
    nop
    dec a
    nop
    cp b
    nop
    xor e
    db $10
    ld sp, $d600
    nop
    ld [hl-], a
    nop
    ld e, a
    nop
    add hl, de
    nop
    rra
    nop
    adc a
    nop
    inc hl
    nop
    ld c, e
    nop
    ld hl, $3900
    nop
    add hl, bc
    nop
    jr c, jr_06d_7ac7

jr_06d_7ac6:
    daa

jr_06d_7ac7:
    nop
    dec bc
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    xor d
    ld b, [hl]
    dec de
    ld b, h
    xor c
    ld b, [hl]
    reti


    inc b
    and h
    sbc b
    db $ed
    jr jr_06d_7ac6

    db $10
    ld b, c
    jr nc, jr_06d_7a9c

    ld d, b
    ld d, [hl]
    or c
    sbc e
    ld [hl], b
    adc a
    ld [hl], d
    inc a
    and $8c
    ld a, l
    ld a, e
    ld hl, sp-$04
    rst $20
    ret z

    or $15
    cp $b0
    rst $18
    call z, $ebb3
    rst $30
    add a
    rst $38
    or a
    rst $38
    cp a
    rst $38
    db $f4
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp [hl]
    rst $38
    rst $38
    rst $38
    ld a, a
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
    rst $18
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    or a
    rst $38
    rst $30
    rst $38
    ccf
    rst $38
    ld l, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $28
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
    ld a, a
    rst $38
    rst $38
    ld a, a
    cp a
    ld a, a
    cp a
    rst $38
    cp b
    rst $38
    db $fc
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
    ld a, a

jr_06d_7b61:
    rst $38
    ld h, a

jr_06d_7b63:
    cp a
    ld b, [hl]
    ei
    ld d, b
    rst $38
    ld e, b
    rst $30
    jr c, jr_06d_7b63

    nop
    rst $38
    rrca
    rst $38
    add e
    ld a, a
    ld bc, $01ff
    rst $38
    ld b, b
    cp a
    ld b, d
    cp l
    ldh a, [rIF]
    ld d, $ed
    nop
    rst $38
    add d
    ld a, a
    inc bc
    rst $38
    ld b, $ff
    nop
    rst $38
    jr z, jr_06d_7b61

    ld a, h
    add e
    ld [hl], a
    add b
    dec sp
    ret nz

    rla
    add sp, $00
    rst $38
    di
    inc c
    ld sp, $1f00
    nop
    ld h, e
    nop
    cp $00
    ld l, [hl]
    nop
    rst $38
    nop
    ld a, a
    nop
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
    rst $30
    nop
    ret nz

    nop
    db $ec
    nop
    rst $20
    nop
    and b
    nop
    and d
    nop
    ld hl, sp+$00
    ret nz

    nop
    add h
    nop
    adc d
    ld bc, $011e
    ld a, [hl-]
    inc b
    rlca
    nop
    db $ed
    ld [de], a
    ld c, a
    ld a, $cc
    ccf
    ld d, a
    cp a
    jp nz, Jump_000_393f

    add $9e
    ld h, c
    ld e, b
    daa
    ld d, a
    xor b
    sub l
    ld a, [$f03b]
    jr nz, jr_06d_7c56

    adc c
    ld h, e
    ld b, c
    rst $20
    db $ed
    sub $de
    sbc h
    rst $38
    db $fc
    pop af
    db $fc
    rst $20
    ld sp, hl
    ld [hl], $e1
    db $ec
    ld [hl], e
    push af
    db $e3
    db $eb
    push hl
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    or e
    rst $38
    ccf
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    db $db
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    and a
    rst $38
    cp a
    rst $38
    rst $08
    rst $38
    ld l, a
    rst $38
    ei
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
    ld [hl], e
    rst $38
    rst $38
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
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_06d_7c56:
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
    add a
    rst $38
    cp l
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
    ld [$beff], sp
    rst $38
    cp a
    rst $38
    dec e
    rst $38
    add c
    rst $38
    add b
    rst $38
    add c
    rst $38
    ld b, b
    cp a
    nop

jr_06d_7c7f:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec e
    ld [c], a
    ccf
    ret nz

    rst $38
    nop
    ei
    inc b
    ld a, a
    nop
    rst $38
    nop
    ei
    nop
    or $08
    ld e, a
    nop
    rst $30
    nop
    rst $38
    nop
    db $ec
    ld bc, $00f3
    ei
    nop
    ei
    nop
    ld [c], a
    db $10
    rst $18
    jr nz, jr_06d_7c7f

    jr nz, @-$0a

    nop
    cp h
    nop
    ld a, [$3e00]
    nop
    rst $18
    nop
    ld c, l
    nop
    rla
    nop
    dec b
    nop
    ld l, c
    nop
    rst $00
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec bc
    dec c
    ld c, $0f
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
    ld e, $0f
    rra
    jr nz, jr_06d_7d05

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_06d_7d15

    ld a, [hl+]
    dec hl
    inc l
    dec l
    rrca
    ld l, $2f
    jr nc, jr_06d_7d26

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_06d_7d36

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c

jr_06d_7d05:
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

jr_06d_7d15:
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

jr_06d_7d26:
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

jr_06d_7d36:
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
    adc c
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
    dec bc
    dec bc
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    cp $ff
    nop
    ld bc, $0302
    dec bc
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
    jr jr_06d_7dfb

    ld a, [de]

Call_06d_7de3:
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_06d_7e0b

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_06d_7e1b

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_06d_7e2b

    ld [hl-], a

jr_06d_7dfb:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    ld b, $07
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    ld bc, $0301

jr_06d_7e0b:
    nop
    nop
    nop
    ld bc, $0601
    ld b, $06
    rlca
    rlca
    rlca
    ld bc, $0103
    inc bc
    nop

jr_06d_7e1b:
    nop
    nop
    ld bc, $0101
    ld b, $06
    rlca
    rlca
    rlca
    rlca
    ld bc, $0303
    nop
    nop

jr_06d_7e2b:
    nop
    ld bc, $0101
    ld bc, $0606
    rlca
    rlca
    rlca
    rlca
    ld bc, $0103
    nop
    nop
    ld bc, $0101
    ld bc, $0601
    ld b, $07
    rlca
    rlca
    ld b, $07
    inc bc
    ld bc, $0001
    ld bc, $0101
    ld bc, $0601
    ld b, $07
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $06
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $06
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $06
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $06
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0141
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $06
    ld b, $07
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $06
    ld b, $06
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $07
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $07
    rlca
    rlca
    rlca
    rlca
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0101
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    nop
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    nop
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
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
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
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
    nop
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
    ld sp, hl
    ld sp, hl
    ret


    db $76
    ld b, e
    inc [hl]
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    ld [hl], a
    nop
    xor $01
    rst $18
    nop
    or $09
    sub $09
    add sp, $0f
    push de
    cpl
    add $2d
    db $d3
    inc c
    db $f4
    ld c, $09
    or $8f
    ld h, b
    or b
    ld a, a
    add c
    ld a, [hl]
    db $d3
    inc l
    add $38
    and h
    ld a, e
    xor [hl]
    ld [hl], c
    add a
    ld [hl], b
    call z, Call_000_0db3
    ret nc

    xor h
    inc de
    ret z

    sub a
    ld hl, sp-$79
    ldh [rNR33], a
    ld b, b
    xor a
    sub c
    call z, $daa5
    cp h
    ld b, e
    add h
    ld a, e
    add l
    ld a, d
    cp [hl]
    ret nz

    ld b, h
    cp e
    ld [hl+], a
    db $dd
    ld d, b
    and a
    and $99
    and h
    ld e, c
    ld bc, $f3ff
    rst $38
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rrca
    rst $38
    ldh a, [rIF]
    ld l, a
    sub b
    dec sp
    call nz, $cc33
    rst $38
    rst $38
    rrca
    rst $38
    ret nz

    ccf
    cp $01
    ld a, [c]
    dec c
    cp $01
    ld a, [$f805]
    rlca
    rst $30
    inc c
    db $ec
    inc de
    rrca
    ldh a, [$0b]
    db $f4
    ld sp, hl
    ld b, $cf
    jr nc, jr_06d_7ff8

    ldh [rIE], a
    nop
    rst $38
    nop
    sbc a
    nop
    nop
    cp $50
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rra
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_06d_7ff8:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_06d_7ffe:
    rst $38
    rst $38
