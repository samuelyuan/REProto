SECTION "ROM Bank $06e", ROMX[$4000], BANK[$6e]

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    inc bc
    db $fc
    inc bc
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nc

    cpl
    ld h, b
    sbc a
    ld b, d
    cp l
    ld bc, $01fe
    cp $01
    cp $07
    ld hl, sp+$06
    ld sp, hl
    inc c
    di
    sbc h
    ld h, e
    ld sp, $32ce
    call $af50
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

    ret nc

    ret nc

    db $ec
    db $fc
    ld b, [hl]
    cp $02
    cp $18
    or $12
    cp $1f
    rst $38
    ld d, $ff
    cp [hl]
    rst $18
    adc b
    rst $38
    add b
    rst $38
    ld e, h
    ei
    ld bc, $85ff
    ei
    ld a, [hl+]
    push de
    or h
    dec bc
    ld e, l
    rrca
    cp h
    ld c, a
    ld a, [bc]
    rst $10
    xor [hl]
    rst $08
    adc [hl]
    rst $38
    ld [bc], a
    rst $38
    ld bc, $10f6
    cp $00
    db $fd
    ld [bc], a
    db $ec
    ld d, a
    and b
    rst $28
    nop
    ld [hl], a
    nop
    cp $01
    ld b, e
    inc e
    ld d, d

jr_06e_4081:
    cp l
    jr jr_06e_4081

    ld [de], a
    db $fd
    jr nc, @+$01

    ld bc, $c6fa
    ld sp, $22dd
    reti


    and h
    ld a, [bc]
    db $f4
    ld e, c
    add hl, de
    rst $38
    ccf
    ccf
    cp $bf
    cp $ff
    db $fc
    rst $38
    db $fc
    cp $f8
    nop
    nop
    rst $38
    rst $38
    ld [bc], a
    rst $38
    ldh [$1f], a
    ld a, a
    add b
    rlca
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld l, b
    sub a
    and b
    ld e, a
    inc a
    db $d3
    cp a
    ld h, b
    ccf
    ret nc

    rst $38
    nop
    ld e, a
    and b
    sub b
    rst $38
    ld b, b
    rst $38
    pop hl
    rra
    ld [$00f5], sp
    ld hl, sp-$40
    ldh [rP1], a
    ret nz

    nop
    nop
    db $fc
    inc bc
    ei
    rlca
    rst $30
    rrca
    rst $08
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ei
    db $fc
    rst $30
    ld sp, hl
    rst $28
    di
    sbc a
    rst $20
    ld a, a
    sbc a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_06e_40ff:
    rst $38
    rst $38
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
    ei
    ldh a, [rIE]
    db $e4
    ei
    ret nz

    rst $38
    add d
    db $fd
    ld a, [c]
    dec c
    db $fc
    inc bc
    or b
    ld c, a
    ld bc, $87fe
    ld a, b
    add e
    ld a, h
    inc b
    ei
    ld [$00f7], sp
    rst $38
    db $10
    rst $28
    inc h
    db $db
    ld b, d
    cp l
    add c
    ld a, [hl]
    nop
    nop
    nop
    nop
    ld b, $06
    ld b, $06
    rrca
    rrca
    rra
    rra
    ld d, a
    ld e, a
    ld a, [$8bf7]
    jr nc, jr_06e_41a7

    inc de
    rst $28
    ld b, b
    adc a
    ld d, b
    xor [hl]
    ld b, b
    inc [hl]
    jp $e31f


    ld [hl], h
    adc e
    db $e3
    sbc l
    call nz, $d33b
    dec sp
    ld d, a
    dec sp
    ldh [$1f], a
    ret z

    ccf
    and l
    ld e, [hl]
    db $e3
    inc e
    sub d
    ld a, h
    dec c
    ldh a, [$0a]
    ldh [$15], a
    ldh [rNR34], a
    ldh [$35], a
    jp nz, Jump_000_17aa

    ld d, $7f
    ld h, c
    cp a
    inc b
    ld a, a
    xor a
    ld e, $09

jr_06e_4177:
    db $76
    ld a, [de]
    and h
    inc de
    db $e4
    ld [de], a
    db $fc
    inc h
    db $fd
    rst $38
    rst $38
    ld a, [$fcc0]
    nop
    cp $28
    rst $38
    call nz, Call_000_00ff
    rst $38
    nop
    rrca
    nop
    nop
    nop
    rst $38
    rst $38
    rrca
    rst $38
    jr nz, jr_06e_4177

    ld a, [hl]
    add c
    db $fd
    ld [bc], a
    ld a, [$ffe5]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_06e_41a7:
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ld a, a
    db $fc
    ei
    ldh a, [$7b]
    db $e4
    rst $28
    sub b
    cp $01
    push af
    dec bc
    di
    rrca
    rst $08
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    rst $30
    ld sp, hl
    rst $08
    di
    cp a
    rst $08
    ld a, a
    sbc a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38

jr_06e_41df:
    rst $38
    rst $38
    rst $38
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
    rst $38
    cp $f9
    ld hl, sp-$09
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    ld bc, $c0fe
    ccf
    xor b
    ld d, a
    ld b, d
    cp l

jr_06e_4200:
    ld h, [hl]
    sbc c
    call nc, $f02b
    rrca
    add b
    ld a, a
    ld [$a8f7], sp
    ld d, a
    ldh a, [rIF]
    ldh [$1f], a
    nop
    rst $38
    ld [$04f7], sp
    ei
    dec c
    ld a, [c]
    rlca
    ld hl, sp+$4f
    or b
    sbc a
    ld h, b
    rst $00
    jr c, @+$03

    ld bc, $0504
    dec c
    dec c
    ld c, c
    ld c, l
    ld a, b
    rst $38
    inc [hl]
    rst $38
    inc hl
    rst $38
    nop
    rst $38
    ld a, [$fd00]
    nop
    db $dd
    ld [hl+], a
    call c, $ac03
    ld b, e
    sbc l
    ld h, e
    ld e, h
    db $e3
    xor $d1
    ld l, $90
    call c, Call_06e_4ca3
    and e
    ld d, [hl]
    xor c
    ld [bc], a
    cp c
    ld d, a
    xor b
    cp e
    inc e
    ld a, a
    jr jr_06e_4200

    jr @-$2f

    jr jr_06e_41df

    ld l, h
    add a
    ld a, b
    ld bc, $83fe
    db $fc
    xor $f1
    dec l
    ld a, [c]
    and d
    add hl, sp
    reti


    ld h, $1a
    rst $20
    ld a, [de]
    rst $00
    cp [hl]
    rla
    sbc [hl]
    ld a, a
    sbc c
    ld a, [hl]
    sbc d
    db $fd
    ret nc

    ld l, c
    add $39
    inc [hl]
    inc bc
    ld bc, $f403
    inc bc
    cp $01
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    pop bc
    cp $3f
    ret nz

    rst $38
    nop
    ld a, a
    adc b
    rra
    add sp, -$01
    rst $38
    nop
    cp $04
    db $fc
    nop
    ldh a, [rNR41]
    ldh [rLCDC], a
    ret nz

    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
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
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    pop hl
    rst $38
    rst $00
    ei
    adc a
    rst $38
    rra

Jump_06e_42bd:
    rst $38
    ld a, a

jr_06e_42bf:
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
    db $fc

jr_06e_42cf:
    rst $38
    rst $38
    ld hl, sp-$01
    ldh a, [$fe]
    pop hl
    ld a, [c]
    call $b7c8
    nop
    rst $38
    add h
    ld a, e
    jr nz, jr_06e_42bf

    ld c, h
    or e
    add hl, bc
    or $98
    ld h, a
    jr jr_06e_42cf

    ld b, b
    cp a
    add sp, $17
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
    ld [de], a
    db $ed
    ld a, [bc]
    push af
    ld [de], a
    db $ed
    nop
    rst $38
    ld bc, $b7fe
    ld c, b
    ld l, h
    sub e
    ld l, c
    sub [hl]
    ld a, c
    add [hl]
    ret c

    daa
    db $eb
    inc d
    rst $38
    nop
    nop
    nop
    nop
    nop

jr_06e_4314:
    nop
    nop
    ld h, b
    ld h, b
    ld [hl], d
    ld [hl], d
    db $f4
    rst $38
    add sp, -$01
    db $eb
    db $fd
    pop hl
    rst $38
    add d
    ld a, l
    ld b, b
    cp a
    ld [c], a
    db $fd
    inc b
    ei
    adc d
    ld [hl], a
    rla
    db $eb
    inc hl
    rst $18
    ld a, [c]
    rrca
    ld d, a
    daa
    adc d
    daa
    inc sp
    adc $a7
    ld e, $79
    or [hl]
    inc hl
    cp b
    dec b
    db $fc
    sub e
    ld l, h
    rst $10
    ld l, b
    ld [de], a
    jp hl


    dec e
    ld h, b
    add hl, bc
    ld [c], a
    ld d, a
    add b
    adc b
    ld [bc], a
    ret nc

    rlca
    ldh [$0b], a
    pop de
    inc l
    add a
    ld a, h
    adc c
    db $76
    db $eb
    ld [hl], h
    rst $00
    ld e, b
    rst $00
    ld a, b
    ld [hl], l
    ld [c], a
    ld h, b
    rst $38
    ld h, d
    db $dd
    ld b, h
    ei
    ld c, d
    push af
    ld d, h
    rst $38
    cp [hl]
    db $fd
    ld a, d
    rst $38
    ei
    ld a, a
    dec l
    adc e
    adc h
    db $db
    jr nc, jr_06e_4314

    db $10
    rst $38
    xor $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    inc bc
    rst $38
    ld hl, sp-$01
    ccf
    ld a, h
    cp a
    rst $38
    ld a, h
    db $fd
    cp $fe
    cp a
    db $fd
    cp $03
    inc b
    add hl, bc
    ld c, $1b
    inc e
    ld a, d
    ld a, h
    ld sp, hl
    db $fc
    ld sp, hl
    cp $fa
    db $fc
    ei
    db $fd
    ld sp, hl
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $30
    rst $20
    rst $20
    rst $00
    rst $00
    adc a
    adc a
    rra
    rst $38
    ld a, a
    cp a
    rst $38

jr_06e_43b5:
    rst $38
    rst $38
    rst $38
    rst $38

jr_06e_43b9:
    rst $38
    rst $38
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
    ldh [rIE], a
    ret nz

    rst $38
    nop
    rst $38
    ld d, d
    xor l
    or b

jr_06e_43cf:
    ld c, a
    or b
    ld c, a
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
    jr z, jr_06e_43b5

    jr @-$17

    ld [$30f7], sp
    rst $08
    jr nc, jr_06e_43b5

    jr jr_06e_43cf

    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    nop
    rst $38
    db $10
    rst $28
    ld a, [bc]
    push af
    ld a, [bc]
    push af
    add hl, bc
    or $64
    sbc e
    sub $29
    sub h
    ld l, e
    di
    inc c
    jp c, $3725

    ret z

    dec c
    ld a, [c]
    call nz, $f63b
    add hl, bc
    cp a
    ld b, b
    cp a
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
    ret nz

    ret nz

    ld hl, sp-$08
    ld c, h
    db $fc
    ld c, [hl]
    or $03
    rst $38
    ld hl, $03df
    rst $38
    add e
    ld a, l
    ld b, e
    cp a
    and e
    ld e, a
    jr c, jr_06e_43b9

    ld e, [hl]
    inc bc
    cp b
    rlca
    call c, $4203
    xor c
    db $10
    rst $08
    dec h
    sbc [hl]
    ld c, c
    sub [hl]
    ld c, $f0
    ld h, l
    ldh a, [$9b]
    ld h, h
    rst $08
    jr nc, @+$01

    nop
    ld a, a
    nop
    cp [hl]
    ld bc, $13e4
    xor h
    inc de
    add sp, $1f
    and b
    ld e, a
    sbc $0f
    or c
    ld c, [hl]
    ld d, d
    db $ed
    sbc c
    ld h, d
    ld a, l
    ld [c], a
    xor $60
    ld d, a
    ldh [$ec], a
    ld d, e
    rla
    ld a, [c]
    ld c, $fe
    ld c, a
    ccf
    push de
    dec sp
    dec l
    db $d3
    ld h, b
    adc a
    ld e, h
    and e
    xor l
    db $76
    ld c, $5d
    ld c, [hl]
    db $fd
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    nop
    nop
    rlca
    rst $30
    rst $28
    rra
    rrca
    rra
    adc a
    rra
    adc a
    rra
    ld c, a
    sbc a
    ld c, a
    cp a
    ld l, a
    rra
    adc a
    ld a, a
    adc $3e
    ld c, h
    cp h
    add c
    pop af
    inc bc
    di
    rlca
    rst $30
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
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    nop
    rst $38
    inc b
    ei
    add hl, bc
    or $01
    cp $11
    xor $01
    cp $00
    rst $38
    nop
    rst $38
    ld sp, $21ce
    sbc $90

jr_06e_44d9:
    ld l, a
    inc bc
    db $fc
    ld d, [hl]
    xor c
    inc h
    db $db
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
    ld bc, $00fe
    rst $38
    nop
    rst $38
    adc d
    ld [hl], l
    nop
    rst $38
    inc b
    ei
    add h
    ld a, e
    ret nz

    ccf
    ret z

    scf
    xor l
    ld d, d
    sbc d
    ld h, l
    ld l, b
    sub a
    ld c, h
    or e
    jp c, Jump_06e_5b25

    and h
    xor l
    ld d, d
    db $fd
    ld [bc], a
    call z, Call_06e_7933
    add [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    inc c
    ld c, $0e
    ld e, $1f
    ld e, $1b
    ld a, $3f
    add [hl]
    cp a
    jp nz, Jump_06e_7afd

    rst $28
    ccf
    push af
    ret nc

    xor a
    ld [c], a
    db $fd
    ld l, e
    add b
    call nc, $6b03

jr_06e_4535:
    add a
    ld [hl], e
    add a
    jp z, $d537

    dec hl
    xor c
    ld [hl], a
    ld h, a
    cp $c6
    ld l, a
    and a
    ld a, e
    jr z, @+$01

    dec de
    ld a, h
    sub d
    ld a, h
    ld h, h
    ld sp, hl
    ld h, d
    db $fd
    ld a, b
    ld b, a
    jr z, jr_06e_44d9

    ld e, a
    add b
    ld a, [hl-]
    ret nz

    ld [hl], c
    add h
    ld h, l
    adc [hl]
    ld c, l
    cp $4d
    cp $c8
    cp a
    jr @+$01

    inc c
    ld a, e
    jr nc, jr_06e_4535

    dec b
    ret c

    ld a, [bc]
    ldh a, [$c5]
    ldh a, [$c3]
    db $fc
    ld b, c
    cp h
    ei
    dec e
    and l
    ld e, a
    ld d, e
    rst $28
    rst $20
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl-], a
    ccf
    pop af
    cp $dd
    ld [c], a
    db $e3
    call c, $fed5
    push de
    cp $f5
    sbc $dd
    cp $ff
    cp $de
    pop hl
    ccf
    nop
    nop
    ccf
    ld a, a
    ld a, a
    ld a, a
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
    ld hl, sp-$01
    ld hl, sp-$09
    ldh [rIE], a
    ldh [rIE], a
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
    ld bc, $84fe
    ld a, e
    ld b, $f9
    pop bc
    ld a, $86

jr_06e_45cd:
    ld a, c
    inc b
    ei
    inc b
    ei
    ld b, h
    cp e
    nop
    rst $38
    ld h, b

jr_06e_45d7:
    sbc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld e, a
    jr nz, jr_06e_45cd

    nop
    rst $38
    ld b, b
    cp a
    inc b
    ei
    nop
    rst $38
    jr nz, jr_06e_45d7

    and b
    ld e, a
    add b
    ld a, a
    ld l, b
    sub a
    add hl, de
    and $30
    rst $08
    sbc c
    ld h, [hl]
    ld [$38f7], sp
    rst $00
    and l
    ld e, d
    xor l
    ld d, d
    rst $30
    ld [$8e71], sp
    nop
    nop
    nop
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
    ld a, b
    ld hl, sp-$24
    db $ec
    add h
    db $fc
    inc b
    db $fc
    dec b
    db $fd
    inc bc
    rst $38
    add b
    ld a, a
    ld d, l
    xor [hl]
    xor b
    rst $18
    ld a, h
    add e
    ld d, e
    add h
    cp d
    call nz, $a0d5
    ld e, a
    and b
    add hl, sp
    call nz, $cd32
    add h
    ld e, c
    adc b

jr_06e_4641:
    ld [hl], e
    ld c, $f3
    adc [hl]
    ld [hl], e
    inc a
    ld [hl], e
    xor [hl]
    ld [hl], e
    ld l, h
    ld sp, $31eb
    ld [hl], h
    or c
    ld a, [bc]
    pop af
    ld d, l
    add sp, $27
    ret c

    sbc a
    ld h, b
    ld a, e
    ret nz

    ld [hl], l
    jp z, $e11e

    push hl
    sub e
    jr z, jr_06e_4641

    db $dd
    adc a
    ld b, c
    xor a
    ld hl, sp+$27
    and $79
    sub d
    ld l, l
    add b
    ld a, a
    inc d
    ld l, a
    sub e
    ld l, h
    ld b, $79
    ld l, d
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
    ld [hl], e
    rst $38
    ld [hl], a
    ei
    sbc $21
    add b
    ld a, a
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld e, a
    rst $38
    rst $18
    ld a, a
    ld a, a
    rst $38
    nop
    rst $38
    cp $01
    ld [$f4f7], sp
    rst $38
    ret nz

    rst $38
    adc b
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
    rst $38
    rrca
    rst $30
    nop
    rst $38
    ld b, h
    cp e
    nop
    rst $38
    ld [$00f7], sp
    rst $38
    ld [$00f7], sp
    rst $38
    jr nz, @+$01

    nop
    rst $38
    and b
    ld e, a
    ld h, b
    sbc a
    sub b
    ld l, a
    nop
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
    nop

jr_06e_46df:
    rst $38
    nop
    rst $38
    inc b
    ei
    nop
    rst $38
    jr nz, @-$1f

    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    ld bc, $20fe
    rst $18
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    inc e
    db $e3
    jr nz, jr_06e_46df

    inc b
    ei
    adc b
    ld [hl], a
    and b
    ld e, a
    and h
    ld e, e
    ret nz

    ccf
    ld d, b
    xor a
    dec [hl]
    jp z, Jump_06e_5fa0

    nop
    nop
    nop
    nop
    nop
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
    ld [hl], h
    ld [hl], h
    ei
    rst $38
    rst $30
    ei
    jp nc, $c3fd

    rst $38
    pop hl
    rst $18
    ld sp, $c6ee
    rst $38
    inc [hl]
    set 6, b
    rlca
    ld [$4407], a
    sbc a
    dec h
    sbc [hl]
    ld d, a
    adc [hl]
    inc d
    xor [hl]
    ld d, h

jr_06e_473f:
    xor a
    add a
    ld a, h
    db $dd
    ld [hl+], a
    push hl
    ld a, [hl+]
    ld bc, $04fe
    rst $38
    ld h, b
    cp l
    add d
    ld a, l
    db $76
    jp hl


    inc c
    db $e3
    ld e, $c1
    xor a
    ld b, b
    cp h
    ld b, e
    xor $11
    dec l
    ld d, e
    sbc b
    ld [hl], a
    adc l
    ld a, [c]
    sub l
    ld a, [$b275]
    ld b, $f9
    jr nz, jr_06e_473f

    or [hl]
    ld c, e
    call nc, $060b
    ld sp, hl
    add hl, bc
    cp $b9
    cp $94
    rst $00
    xor l
    rst $20
    sbc $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl+]
    push af
    dec c
    di
    db $db
    inc h
    adc h
    ld [hl], e
    inc hl
    rst $38
    xor d
    ld [hl], a
    add sp, $37
    ld [$2b37], a
    rst $30
    adc l
    ld [hl], e
    ld h, $d9
    sub b
    ld l, a
    ld l, b
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

jr_06e_47a5:
    rst $38
    nop

jr_06e_47a7:
    rst $38
    ld b, b
    cp a
    ld [bc], a

Jump_06e_47ab:
    db $fd
    nop

jr_06e_47ad:
    rst $38
    ld de, $64ff
    rst $38
    ld bc, $00ff
    rst $38
    inc b
    rst $38
    ret nc

    rst $38
    ld [hl], b
    rst $38
    jr nz, @+$01

    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    jr nz, jr_06e_47a5

    jr nz, jr_06e_47a7

    nop
    rst $38
    nop
    rst $38
    jr nz, jr_06e_47ad

    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
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

jr_06e_47ed:
    ld l, a
    ld [$12f7], sp
    db $ed
    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    ld c, b
    or a
    ld d, b
    xor a
    db $10
    rst $28
    jr c, @-$37

    add b
    ld a, a
    db $10
    rst $28
    jr jr_06e_47ed

    adc b
    ld [hl], a
    ld [$62f7], sp
    sbc l
    jr nz, jr_06e_47ed

    sub h
    ld l, e
    rlca
    rlca
    rlca
    rlca
    dec bc
    rrca
    ld [hl+], a
    dec l
    ld a, b
    ld a, a
    ld a, a
    ld e, a
    call nz, Call_06e_40ff
    ld a, a
    ld a, l
    ld l, e
    ld [$e4fd], a
    ei
    ret


    rst $30
    pop hl
    rst $38
    db $e4
    rst $38
    adc $bf
    adc d
    rst $38
    res 7, c
    ret


    ccf
    ld d, e
    cp l
    ld d, b
    ccf
    xor $1f
    ret z

    ccf
    add d
    ld a, c
    add $1d
    ldh a, [rNR34]
    sbc l
    ld a, d
    ld e, [hl]
    ldh a, [rNR22]
    ldh [$0e], a
    ldh [rNR14], a
    db $e3
    adc d
    pop hl
    dec a
    jp nz, $807e

    sub l
    ld [hl], b
    sub [hl]
    ld a, b
    inc hl
    db $fc
    add [hl]
    ld l, b
    add a
    ld e, b
    and d
    add hl, de
    inc e
    ld h, e
    rst $18
    jr nz, jr_06e_48b6

    and h
    sbc h
    db $76
    ld de, $82d6
    rst $38
    pop de
    db $e4
    ld h, [hl]
    db $dd
    add d
    ld a, l
    cp l
    ld c, e
    daa
    ld d, e
    ld [$4df2], sp
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
    rst $30
    adc c
    or $3d
    jp nz, $c03f

    ld l, b
    rst $30
    db $ec
    ld [hl], a
    ld a, e
    rst $20
    ei
    rst $20
    db $eb
    rst $30
    ld e, e
    rst $20
    dec a
    jp nz, $b946

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
    ld hl, $06ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc

jr_06e_48ab:
    rst $38
    rlca
    rst $38
    jr nc, @+$01

    ret z

    rst $30
    and b
    rst $38
    ret nz

    rst $38

jr_06e_48b6:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    jr nz, jr_06e_48ab

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    inc bc
    db $fc
    dec b
    ld a, [$ff00]
    adc b
    ld [hl], a
    nop
    rst $38
    ld [$02f7], sp
    db $fd
    nop
    rst $38

jr_06e_48e4:
    nop
    rst $38
    nop
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
    ld [$00f7], sp
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    nop
    rst $38
    cp [hl]
    ld b, e
    cp c
    ld b, a
    xor h
    ld b, e
    ld [hl], h

jr_06e_4907:
    add e
    cp a
    nop
    ld d, a
    add b
    rst $28
    nop
    db $dd
    nop
    ld a, [bc]
    jr nz, jr_06e_496c

    inc h
    sbc [hl]
    ld h, b
    rst $30
    ldh [$9b], a
    ldh [$df], a
    ldh [$4e], a
    pop af
    ld e, h
    pop hl
    call nc, $e4eb
    reti


    call z, Call_000_04f3
    di
    xor [hl]
    ld de, $9875
    ld a, [c]
    add hl, de
    ld b, a
    jr nc, jr_06e_48e4

    jr jr_06e_49a8

    jr jr_06e_4907

    jr c, jr_06e_493c

    ld d, b
    ld b, $f8
    dec d
    ret z

jr_06e_493c:
    ld l, $d0
    add sp, -$69
    ld a, b
    add e
    ld a, c
    add a
    ld l, c
    sub a
    ld e, d
    xor a
    db $fc
    rrca
    ld hl, $8e7e
    ld h, b
    ld b, a
    or b
    ld c, [hl]
    pop af
    adc [hl]
    ld d, c
    ld b, l
    cp e
    ld d, e
    cp a
    inc bc
    cp a
    jp $803f


    ccf
    inc b
    ld [hl], e
    xor b
    sub $41
    cp [hl]
    ld [hl+], a
    sbc a
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_06e_496c:
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, a
    sbc a
    rrca
    rst $30
    rst $08
    jr nc, jr_06e_493c

    ld a, [hl-]
    ld c, a
    or a
    ld l, e
    sub l
    adc l
    rst $38
    adc e
    rst $38
    cp l
    rst $18
    ld [hl], c
    sbc a
    ld [hl], h
    adc e
    ldh [$1f], a
    nop
    rst $38
    inc de
    rst $38
    dec b
    rst $38
    ld b, a
    rst $38
    adc a
    rst $38
    ld e, l
    rst $38
    inc h
    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    sub b
    rst $38
    nop
    rst $38
    dec hl
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_06e_49a7:
    rst $38

jr_06e_49a8:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $21ff
    sbc $34
    swap d

Jump_06e_49bd:
    call $e718
    ld b, b
    cp a
    ld hl, $c0df
    ccf
    jr nz, jr_06e_49a7

    inc b
    ei
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
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    ld b, c

jr_06e_49dd:
    cp [hl]
    nop
    rst $38
    ld bc, $00fe
    rst $38

jr_06e_49e4:
    nop
    rst $38

jr_06e_49e6:
    nop
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

Call_06e_49f7:
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    jr nz, jr_06e_49dd

    nop
    rst $38
    nop
    nop

jr_06e_4a02:
    ret nz

    ret nz

    jr nz, jr_06e_49e6

    or b
    ld [hl], b
    jr jr_06e_4a02

    jr z, jr_06e_49e4

    nop
    ld hl, sp-$70
    ld a, b
    ld c, b
    cp b
    cp b
    ld e, b
    jr @-$06

    or b
    ld d, b
    ld e, b
    cp b
    ld e, b
    ld hl, sp+$18
    ld hl, sp+$28
    ret c

    nop
    ld hl, sp-$61
    rst $38
    adc c
    rst $38
    ret c

    rst $38
    call nz, Call_000_00fb
    rst $38
    call nz, Call_000_26ff
    db $fd
    xor [hl]
    db $10
    ld l, a
    db $10
    add e
    ld a, h
    rst $18
    ldh [$cd], a
    ld a, [c]
    call nc, Call_06e_5863
    ld [c], a
    dec d
    ld [$c833], a
    ld h, c
    sbc [hl]
    jr nc, jr_06e_49e4

    pop hl
    ld e, $ef
    inc e
    ld c, l
    ld a, $d1
    ld a, $10
    ld a, a
    sbc b
    ld h, d
    sub e
    ldh [$1f], a
    ldh [$81], a
    db $f4
    ld b, h
    cp a
    dec c
    ld a, a
    adc h
    ld a, [hl]
    ld c, l
    dec a
    ret nz

    ld l, $14
    db $eb
    add [hl]
    ei
    ld b, a
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
    db $fd
    or d
    ld c, l
    db $d3
    inc l
    sbc l
    rst $38
    ld e, l
    cp e
    jp z, $70bd

    sbc a
    ret c

    cp a
    ld hl, sp-$61
    ld [hl], b
    adc a
    ld [$19f7], sp
    rst $38
    db $fc
    rst $38
    pop af
    rst $38
    ldh [rIE], a
    inc de
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
    ld [bc], a
    db $fd
    dec c
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
    inc b

jr_06e_4ab5:
    rst $38
    db $db
    rst $38
    dec bc
    rst $38
    jp z, Jump_000_0035

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add c
    ld a, a
    jr jr_06e_4ab5

    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b

jr_06e_4ad5:
    ei
    ld hl, $01df
    rst $38
    dec d
    db $eb
    ld bc, $24ff
    db $db
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
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    jr nz, jr_06e_4ad5

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0101
    ld bc, $0302
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0100
    rrca
    ld c, $0f
    rrca
    rra
    ld e, $1a
    rra
    ld e, $3f
    dec e
    ccf
    dec a
    dec sp
    dec h
    daa
    add hl, bc
    rrca
    ld [$890f], sp
    adc [hl]
    dec de
    sbc a
    or e
    cp a
    ld hl, sp+$77
    ld a, c
    rst $38
    ld l, e
    rst $18
    sub $ff
    add $ff
    rst $00
    ei
    ld h, a
    rst $18
    sub a
    rst $28
    xor d
    push af
    ld h, h
    rst $38
    xor d
    ld e, a
    db $e4
    dec bc
    ret nz

    rra
    ld d, h
    xor d
    xor l
    ld a, d
    add a
    jr c, jr_06e_4ba8

    ld a, [hl-]
    reti


    ld a, $f8
    dec e
    xor l
    ld c, $59
    ld l, $60
    rst $38
    dec h
    ld a, [$f06e]
    ld c, $f1
    ld a, [hl-]
    add l
    dec sp
    rst $00
    xor d
    ld d, c
    dec d
    ld a, [c]
    dec sp
    rst $38
    rst $30
    ld a, a
    di
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
    nop
    rst $38
    db $10
    rst $28
    rst $38
    rst $38
    ld a, [$f8ff]
    rst $38
    call c, $fcff
    rst $38
    cp h
    rst $38
    cp e
    ld a, h
    nop
    rst $38
    call nz, $47ff
    rst $38
    nop
    rst $38
    rrca
    rst $38
    and [hl]
    rst $38
    inc e
    rst $38
    nop
    rst $38
    dec c
    rst $38
    ld bc, $7cff
    rst $38
    jr nc, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    inc bc
    rst $38
    ld b, c
    rst $38
    inc bc
    rst $38

jr_06e_4ba8:
    ld bc, $18ff
    rst $38
    inc b
    rst $38
    rlca
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp b
    rst $38
    inc b
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
    ld b, b
    cp a
    nop
    rst $38
    db $10
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld b, h
    ei
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
    ret nz

    rst $38
    ld h, b
    rst $38
    ldh a, [rIE]
    cp b
    ld a, a
    ld l, $df
    inc bc
    rst $38
    inc b
    ei
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
    nop
    rst $38
    ld [bc], a
    db $fd
    cpl
    ret nz

    ld [bc], a
    push af
    add [hl]
    ld l, c
    rst $38
    nop
    cp d
    ld b, c
    db $10
    pop bc
    xor d
    ld bc, $07d1
    cp a
    rrca
    ld e, a
    rrca
    db $ed
    rrca
    sub l
    ld h, [hl]
    ld l, $d6
    ld a, [hl]
    rst $08
    ld c, a
    db $fc
    ld c, a
    call c, $ff8a
    ld c, h
    di
    ld e, d
    ldh a, [$5c]
    pop af
    ld l, $f1
    daa
    ldh a, [$ca]
    ldh a, [$d5]
    ldh [$cf], a
    ld hl, $8741
    xor $01
    ld [hl], l
    adc b
    ld l, h
    sub a
    push af
    sbc d
    nop
    cp d
    pop af
    inc a
    dec sp
    cp h
    dec sp
    db $fc
    cp d
    ld a, h
    cp a
    ld a, b
    jp hl


    ld a, $c9
    ld a, $c1
    ld a, $71
    ld b, $a9
    ld [bc], a
    ld e, e
    inc b
    cp $01
    push bc
    ld a, [de]
    or c
    ld c, [hl]
    cp [hl]
    ld b, l
    cp [hl]
    ld b, l
    inc c
    rst $38
    cp [hl]
    rst $38
    cp [hl]
    ld a, a
    ld l, $bf
    xor [hl]
    rst $38
    xor $ef
    rst $08
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp nc, Jump_000_00ff

    rst $38
    nop
    rst $38
    rst $20
    rst $38
    ld [hl], a
    ei
    ld d, e
    rst $38
    ld [hl], a
    rst $38
    ld [hl], e
    rst $38
    ld [hl], e
    rst $38
    ld d, c
    rst $28
    db $10
    rst $28
    adc h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret


    rst $38
    rrca
    rst $38
    rst $30
    rst $38
    ld h, e
    rst $38
    ei
    rst $38
    sbc e
    rst $38
    ld [bc], a
    rst $38
    push hl
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    xor a

Call_06e_4ca3:
    rst $38
    add e
    rst $38
    inc bc
    rst $38
    add e
    rst $38
    ccf
    rst $38
    and c
    rst $38
    db $10
    rst $38
    inc b
    rst $38
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ret nc

    rst $38
    rrca
    rst $38
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
    add b
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    rla
    rst $28
    rla
    rst $28
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
    ld b, $ff
    rlca
    rst $38
    rrca
    rst $38
    ld c, $ff
    add [hl]
    rst $38
    rst $20
    rst $38
    and [hl]
    ld a, a
    ld c, $ff
    rlca
    rst $38
    dec b
    ei
    rrca
    ldh a, [rSB]
    cp $00
    rst $38
    nop
    rst $38
    db $10
    rst $28
    nop
    rst $38
    ld d, $ee
    adc e
    ld [hl], a
    ld d, d
    xor [hl]
    daa
    rst $18
    jp $a3bf


    rst $18
    add a
    ei
    adc d
    rst $30
    dec de
    and c
    ld d, l
    add hl, hl
    add b
    cpl
    ld d, [hl]
    and a
    cp b
    inc bc
    ld c, h
    ld sp, $b947
    ld h, [hl]
    or c
    ld l, $f1
    ld b, $f1
    ld sp, $7ffa
    ld [hl], b
    dec hl
    ldh a, [$2d]
    ld [hl], b
    cpl
    ldh a, [$34]
    ld sp, hl
    ld a, [hl-]
    or b
    ld [hl], b
    xor l
    inc bc
    db $ec
    rst $00
    jr c, @+$0c

    ldh [$29], a
    sub $32
    ret z

    ld d, a
    inc bc
    inc l
    jp nz, $e897

    di
    inc e
    db $fd
    inc e
    xor e
    ld b, h
    ld sp, $ba44
    ld b, c
    ld d, h
    ld c, e
    and e

jr_06e_4d51:
    ld c, e
    inc bc
    rst $18
    jr jr_06e_4d51

    sbc e
    db $fc
    ld [de], a
    ld sp, hl
    ld de, $61f7
    sbc [hl]
    ld b, a
    or d
    ld a, [bc]
    di
    adc e
    rst $38
    add a
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
    db $10
    rst $28
    sbc h
    ld h, e
    add b
    ld a, a
    cp h
    rst $38
    call nz, Call_000_04ff
    rst $38
    add e
    rst $38
    inc bc
    rst $38
    push bc
    rst $38
    ld [c], a
    rst $18
    adc e
    rst $30
    inc bc
    rst $38
    ld [hl], e
    adc a
    db $fc
    rst $38
    db $fc
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, a
    rst $38
    dec hl
    rst $38
    push af
    rst $38
    inc bc
    rst $38
    push bc
    rst $38
    rst $30
    rst $38
    cp e
    rst $38
    sbc h
    rst $38
    jr @+$01

    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    dec b
    ld a, [$fb25]
    rlca
    ld hl, sp+$07
    ei
    rrca
    di
    ld [$f9f3], sp
    ldh a, [rNR34]
    ld sp, hl
    rrca
    rst $38
    rlca
    rst $38
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    db $e4
    rst $38
    inc de
    rst $38
    ld de, $80ff
    rst $38
    nop
    rst $38
    inc c
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
    ld bc, $00ff
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
    add d
    rst $38
    ld h, b
    rst $38
    cp b
    ld a, a
    ld c, $ff
    ld b, l
    cp a
    nop
    rst $38
    ld [bc], a
    db $fd
    inc d
    dec de
    inc sp
    dec a
    ld a, e
    ld a, a
    ld a, e
    ld a, a
    di
    rst $38
    rst $30
    rst $18
    ld l, a
    rst $38
    ld l, [hl]
    db $fd
    db $76
    bit 4, e
    rra
    inc l
    rst $18
    ld b, h
    sbc a
    or b
    rrca
    ld [hl], l
    ld c, $eb
    inc e
    push bc
    jr c, @-$74

    ld [hl], c
    di
    inc b
    rst $08
    inc a
    rst $38
    inc a
    db $eb
    ld a, h
    inc b
    ld sp, hl
    ld c, $f1
    ld c, $f1
    ld b, $f8
    add [hl]
    ld sp, hl
    sbc b
    rst $20
    ld sp, hl

jr_06e_4e37:
    add h
    pop hl
    ld a, $0b
    ld a, [hl]
    sbc d
    ccf
    ld h, b
    cp a
    pop hl
    ccf
    add e
    ld a, a
    and h
    ld e, a
    rlca
    ld a, b
    ld a, [bc]
    pop af
    ld e, a
    or c
    jp nz, Jump_06e_49bd

    cp [hl]
    bit 7, h
    add sp, -$01
    ret nc

    ld a, [$cab5]
    db $76
    adc a
    ld d, [hl]
    and a
    sub l
    cpl
    or h
    ld [hl], e
    ld a, h
    db $e3
    ld e, d
    and a
    nop
    rst $38
    jr nc, jr_06e_4e37

    nop
    rst $38
    nop
    rst $38
    dec c
    ld a, [c]
    ld d, b
    xor a
    ret nc

    cpl
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
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
    rst $38
    rst $38
    rst $38
    rst $38
    add sp, $17
    rst $38
    rst $38
    ccf
    rst $38
    adc e
    db $f4
    rst $38
    rst $38
    rst $38
    rst $38
    or e
    ld c, a
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    adc a
    ld a, a
    ld a, $ff
    inc a
    rst $38
    inc a
    rst $38

jr_06e_4eac:
    inc a
    rst $38
    cp h
    ld a, a
    rra
    rst $38
    adc h
    rst $38
    ld c, h
    rst $38
    ld c, $ff
    rra
    rst $28
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    dec bc
    rst $38
    inc bc
    rst $38
    add e
    rst $38
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld a, b
    rst $38
    jr @+$01

    ld a, [bc]
    db $fd
    add l
    cp $e1
    rst $38
    ld h, b
    rst $38
    push bc
    ld l, $c1
    ld a, $94
    ld a, e
    rlca
    ei
    and a
    rst $38
    ld l, a
    cp a
    ld [bc], a
    db $fd
    rlca
    ret c

    dec l
    ld [c], a
    ld de, $79ee
    adc $69
    sbc h
    ld [hl+], a
    sbc h
    ld h, b
    sbc a
    xor h
    ld c, a
    ld l, [hl]
    rst $18
    add sp, -$21
    dec l
    db $db
    add hl, hl
    rst $18
    ld l, h
    sub e
    xor d
    sub e
    res 2, [hl]
    jr nz, jr_06e_4eac

    ld b, e
    cp [hl]
    ld l, h
    jp nc, $ce35

    inc e
    rst $28
    ld de, $61ef
    rst $38
    ld h, d
    rst $38
    db $db
    ld a, a
    jp c, $9edf

    rst $38
    sbc l
    rst $38
    call nc, Call_000_30fe
    rst $38
    ld l, d
    sbc a
    ld b, h
    rra
    inc h
    sbc a
    ld b, l
    sbc a
    ld b, e
    cp a
    sub c
    rst $38
    db $eb
    ld sp, hl
    ld [hl], l
    jp hl


    ld h, c
    ei
    db $ed
    ld sp, hl
    jp hl


    ei
    db $fd
    jp hl


    inc h
    ei
    pop hl
    ld a, a
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
    ld [hl], c
    rst $38
    ld h, c
    rst $38
    ld b, l
    ei
    ld a, [hl]
    add c
    inc bc
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    db $e3
    rst $38
    rst $18
    pop hl
    call nc, $e0fb
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
    ei
    rst $38
    db $fd
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
    rrca
    rst $38
    rst $38
    rst $38
    daa
    rst $18
    adc a
    rst $30
    sub l
    rst $28
    sbc [hl]
    rst $28
    sbc $ef
    ret z

    rst $30
    ldh a, [$ef]
    ld [hl], b
    rst $28
    ld a, b
    rst $30
    cp b
    ld [hl], a
    jr nc, @+$01

    cp h
    ei
    jr c, @+$01

    sbc [hl]
    ld a, l
    inc e
    rst $38
    rrca
    cp $0e
    rst $38
    ld a, $ff
    rlca
    rst $38
    rlca
    rst $38
    add a
    rst $38
    db $e3
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    db $10
    rst $28
    dec hl
    db $f4
    jr nc, @+$01

    ld a, b
    rst $38
    jr c, @+$01

    cp b
    ld a, a
    inc a
    rst $38
    inc e
    rst $38
    ld a, h
    rst $38
    inc a
    rst $38
    ret z

    ccf
    ld a, l
    ld a, e
    rst $38
    ei
    cp e
    rst $38
    dec hl
    rst $38
    ld [hl], e
    cp a
    jr nc, @+$01

    ldh a, [$7f]
    dec b
    rst $38
    ld l, e
    rra
    and [hl]
    ld c, a
    or a
    ld c, [hl]
    adc d
    ld a, h
    ld bc, $06fc
    db $ec
    dec h
    db $fc
    reti


    ld a, $d8
    ccf
    pop de
    ccf
    ld [hl], d
    sbc a
    db $76
    sbc a
    ld [hl], $ff
    ld b, a
    rst $38
    rla

jr_06e_4fff:
    cp $92
    ld a, $59
    cp a
    sbc $3f
    rra
    cp $1a
    cp $4e
    sbc c

jr_06e_500c:
    jr z, jr_06e_500c

    ld e, $e7
    push af
    rst $08
    ld [hl], c
    rst $08
    or $ef
    db $f4
    rst $28
    sub [hl]
    db $ed
    db $10
    call Call_06e_49f7
    ret nc

    rrca
    nop
    rst $38
    ld e, d
    rst $20
    xor d
    rst $10
    jr nz, jr_06e_4fff

    adc l
    rst $38
    xor c
    rst $18
    and a
    rst $18
    add a
    rst $38
    rst $00
    rst $38
    call z, $82ff
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    adc h

jr_06e_503f:
    rst $38
    add b
    rst $38
    add b
    rst $38
    jr @+$01

    add b
    ld a, a
    db $fc

jr_06e_5049:
    rst $38
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
    cp a
    ld a, a
    ccf
    rst $18
    adc h
    ld [hl], a
    jr nz, jr_06e_503f

    jr jr_06e_5049

    add h
    ei
    ret z

    rst $38
    ldh a, [rIE]
    db $fd
    ei
    db $fd
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
    di
    rst $38
    di
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
    ld a, a
    ccf
    rst $38
    rra
    rst $38
    ccf
    rst $18
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld e, $ef
    inc e
    rst $28
    add hl, sp
    rst $08
    dec e
    rst $38
    inc e
    rst $38
    ccf
    sbc $1f
    rst $28
    rst $08
    or b
    add b
    rst $38
    ldh [$df], a
    ldh [$df], a
    ret nc

    rst $28

jr_06e_50ac:
    ldh a, [$ef]
    ldh [rIE], a
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld a, h
    ei
    jr c, @+$01

    ld a, $fd
    inc e
    rst $38
    dec e
    cp $1f
    cp $ea
    rst $30
    ldh [rIE], a
    db $e3
    db $fc
    pop hl
    rst $38
    db $e3
    rst $38
    db $eb
    rst $30
    cp $e7
    call z, $cdff
    rst $38
    db $dd
    rst $30
    push af
    ld a, a
    db $db
    ld a, a
    rst $20
    ld e, a
    ld h, l
    rra
    db $ed
    rra
    ld a, [hl]
    adc a
    ld l, $df
    jp c, $ab17

    rst $10
    ld d, $f3
    jr c, jr_06e_50ac

    rra
    and $1f
    rst $20
    scf
    rst $28
    rst $38
    rst $28
    add a
    rst $38
    ld [hl], a
    sbc a
    rrca
    rst $38
    rst $08
    rst $38
    ld b, a
    rst $38
    sbc a
    rst $28
    cp a
    rst $08
    xor a
    rst $18
    rst $38
    adc a
    ld c, e
    adc a
    xor a
    ld e, a

jr_06e_5108:
    rrca
    rst $38
    ld e, l
    ld l, a
    cpl
    rst $38
    ld c, l
    dec a
    xor a
    dec a
    rst $38
    ccf
    dec hl
    or e
    rrca
    rst $38
    xor a
    rst $38
    sbc a
    rst $38
    push af
    rst $38
    rst $38
    rst $38
    pop bc
    rst $38
    db $e3
    ld a, a
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    inc bc
    rst $38
    ld b, c
    rst $38
    ld b, l
    rst $38
    rlca
    rst $38
    add c
    ld a, a
    ld b, l
    rst $38
    ld bc, $03ff
    rst $38
    jp $c3ff


    rst $38
    add e
    rst $38
    inc bc
    rst $38
    jp $93ff


    rst $28
    inc bc
    rst $38
    inc bc
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    add e
    ld a, a
    inc bc
    rst $38
    dec bc
    rst $30
    jp nz, Jump_06e_603d

    sbc a
    db $10
    rst $28
    rst $20
    jr c, jr_06e_5108

    sbc $dc
    rst $20
    push af
    ei
    ei
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    cp $ff
    cp $ff
    ld a, [c]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $08
    rst $38
    rst $28
    rst $38
    inc a
    rst $38
    rra
    rst $38
    rst $28
    rst $38
    add a
    rst $38
    pop af
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    cp b
    ld a, a
    ld a, h
    cp a
    rrca
    rst $38
    ccf
    rst $18
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $30
    ld bc, $03ff
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld sp, hl
    daa
    db $eb
    dec a
    add hl, de
    xor a
    ld b, a
    rst $18
    and $4f
    ld a, e
    call z, $ead0
    pop af
    adc $ea
    call z, $fc83
    ld a, [bc]
    db $f4
    dec c
    ldh a, [$af]
    jp nz, $f681

    rrca
    db $f4
    dec b
    db $fc
    ld l, h
    cp $bf
    db $eb
    xor e
    sbc c
    ld e, b
    cp a
    sbc d
    dec sp
    inc de
    ld [hl], a
    and d
    rst $18
    pop de
    adc [hl]
    sbc c
    daa
    jp c, $db47

    rst $20
    ei
    rst $00
    cp $c6
    pop de
    call z, $ccb2
    pop de
    adc a
    sub c
    adc a
    pop bc
    cp a
    ret c

    db $e3
    call c, $e9e3
    rst $30
    db $fd
    pop af
    pop hl
    rst $28
    reti


    db $ed
    db $d3
    db $ed
    db $d3
    xor $ea
    rst $30
    di
    rst $28
    rst $28
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ld a, [c]
    rst $38
    ld [c], a
    rst $38
    ld a, [c]
    rst $38
    pop hl
    cp $ca
    rst $30
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    call nz, Call_000_24ff
    rst $18
    add h
    rst $38
    add b
    rst $38
    add h
    rst $38
    add b
    rst $38
    add b
    rst $38
    add h
    rst $38
    add b
    rst $38
    and b
    rst $38
    call nz, $84ff
    ld a, a
    inc [hl]
    rst $08
    ret z

    scf
    jp $803c


    ld a, a
    nop
    rst $38
    ret c

    rst $20
    and h
    ld a, e
    ld a, c
    sbc [hl]
    db $f4
    rst $08
    rst $28
    di
    db $f4
    ei
    db $fd
    cp $fe
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
    rst $10
    rst $28
    sub a
    rst $28
    adc a
    rst $38
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
    rst $38
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
    ld a, h
    rst $38
    ld a, a
    rst $38
    ld a, a
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
    jr jr_06e_52f3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_06e_5303

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_06e_5313

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_06e_5323

    ld [hl-], a

jr_06e_52f3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_06e_5333

    ld a, [hl-]
    add hl, sp
    dec sp
    inc a
    dec a
    ld a, $3f

Call_06e_5301:
    ld b, b
    ld b, c

jr_06e_5303:
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

jr_06e_5313:
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

jr_06e_5323:
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

jr_06e_5333:
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
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_06e_5404

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_06e_53f3

    ld [$2a29], sp
    dec hl
    inc l
    dec l
    ld l, $2f

jr_06e_53f3:
    jr nc, @+$33

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_06e_5436

    ld a, [hl-]
    dec sp
    inc a
    rlca
    rlca
    rlca
    rlca

jr_06e_5404:
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0101
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0000
    ld bc, $0000
    ld bc, $0101
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld bc, $0101
    ld bc, $0707
    rlca
    ld bc, $0101

jr_06e_5436:
    ld bc, $0001
    nop
    nop
    ld bc, $0101
    ld bc, $0701
    rlca
    rlca
    rlca
    ld bc, $0103
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0701
    rlca
    rlca
    rlca
    ld bc, $0100
    ld bc, $0000
    ld bc, $0101
    ld bc, $0101
    rlca
    rlca
    rlca
    rlca
    ld bc, $0000
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0707
    rlca
    rlca
    ld bc, $0202
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0701
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0701
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0701
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0607
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0f07
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
    rrca
    rrca
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
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    nop
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
    xor a
    nop
    reti


    ld b, $69
    add [hl]
    ld a, e
    add a
    rst $38
    inc bc
    db $ec
    inc de
    rst $38
    ld bc, $847b
    ret


    ld [hl], $e0
    rra
    ldh [$1f], a
    ld l, l
    sbc [hl]
    xor h
    ld c, $ff
    inc c
    cp [hl]
    dec c
    ld sp, hl
    rlca
    db $f4
    dec bc
    ld a, l
    add e
    cp $41
    sbc h
    ld h, e
    cpl
    call nc, $fd12
    ld [c], a
    ld e, l
    ld e, c
    rst $20
    rst $28
    db $10
    ld e, l
    ld a, [$fb56]
    dec e
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    rst $38
    rst $08
    jr nc, @-$2f

    ld [hl], a
    rst $28
    ld a, a
    rst $20
    rst $20
    rst $38
    ld h, a
    rst $38
    nop
    rst $38
    ld d, $3f
    nop
    nop
    add b
    nop
    rst $38
    add b
    ld a, a
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
    add hl, de
    and $50
    xor a
    nop
    rst $38
    nop
    rst $38
    ld sp, hl
    rst $38
    ret nz

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
    rst $38
    rst $38
    rst $38
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
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_06e_560f:
    rst $38
    ld a, a
    nop
    rst $28
    nop
    db $dd
    nop
    ld [$1000], sp
    nop
    add d
    nop
    add d
    nop
    inc b
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    nop
    ld b, d
    nop
    nop
    nop
    ld b, b
    nop
    ld [bc], a
    nop
    inc b
    nop
    nop
    nop
    jr nc, jr_06e_563a

jr_06e_563a:
    ld h, a
    nop
    rst $18
    nop
    inc sp
    nop
    ld hl, sp+$07
    ld a, h
    add e
    cp $81
    ld e, [hl]
    add c
    ld l, d
    sub c
    db $76
    adc c
    cp d
    pop bc
    push af
    ld [bc], a
    ld l, d
    sub c
    ld [hl], l
    add b
    or e
    ld b, b
    call nc, $ee03
    ld bc, $00df
    ld a, e
    add h
    res 3, h
    ld sp, $3ece
    pop bc
    call $f5a3
    adc e
    ld [hl-], a
    call z, Call_06e_5cab
    sub $29
    sub c
    rst $28
    ld a, b
    db $d3
    sub b
    ld a, a
    jr nz, @+$01

    ld [hl+], a
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, [hl]
    rst $38
    ld d, b
    rst $28
    db $10
    rst $28
    ld bc, $e3fe
    rst $38
    pop hl
    cp $e2
    rst $38
    db $ed
    di
    nop
    rst $38
    ld h, b
    rst $38
    nop
    nop
    adc h
    nop
    rst $38
    nop
    rst $38
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    rlca
    ld hl, sp-$01
    nop
    rst $38
    nop
    ld a, a
    add b
    dec c
    ld a, [c]
    rst $38

Call_06e_56a9:
    nop
    nop
    rst $38
    ld [$00f7], sp
    rst $38
    adc b
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
    rst $38
    db $fc
    rst $38
    ei
    db $fc
    db $e3
    db $fc
    rrca
    ldh a, [$7f]
    add b
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld sp, hl
    rlca
    db $d3
    cpl
    ld bc, $0307
    rra
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
    db $fc
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    inc bc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    nop
    cp b
    nop
    dec h
    nop
    ld h, d
    nop
    ld l, h
    nop
    ld e, b
    nop
    jr nz, jr_06e_571e

jr_06e_571e:
    ld a, b
    nop
    add b
    nop
    rlca
    nop
    jr nz, jr_06e_5726

jr_06e_5726:
    ld bc, $0b00
    nop
    rra
    nop
    ld l, $00
    rra
    nop
    sbc a
    nop
    ld e, $00
    inc c
    nop
    dec c
    nop
    ld [$0000], sp
    nop
    add b
    nop
    rst $38
    nop
    ld c, c
    or [hl]
    add e
    cp $89
    or $2b
    db $f4
    xor $e1
    push af
    ld a, [c]
    ld h, d
    ldh a, [$73]
    ldh [$f0], a
    xor $f5
    xor $86
    ld a, [hl]
    dec c
    cp $40
    cp [hl]
    rst $28
    ld e, $6f
    adc [hl]
    ld d, [hl]
    adc a
    inc d
    cp a
    ld e, $e3
    call c, $b5e3
    rl e
    db $ec
    inc c
    rst $38
    ld b, [hl]
    cp a
    add h
    rst $38
    or b
    rst $08
    ld [hl], b
    rst $38
    daa
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    db $db
    rst $38
    inc a
    rst $28
    inc e
    rst $20
    ei
    rlca
    rlca
    rst $38
    rst $38
    rra
    add hl, de
    cp $ff
    rst $38
    sbc $ff
    sbc a
    rst $38
    ccf
    nop
    nop
    nop
    add b
    nop
    rst $38
    nop
    rst $38
    rst $38
    ld a, h
    add e
    cp $01
    ret nz

    ccf
    di
    inc c
    sbc a
    ld h, b
    ldh a, [rIF]
    rst $38
    nop
    sbc $21
    ld e, $e1
    ld bc, $10fe
    rst $38
    ld c, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh [rIE], a
    ret z

    rst $30
    ld bc, $d0fe
    cpl
    cp $01
    db $fc
    inc bc
    di
    rrca
    rst $20
    rra
    rst $08
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
    rst $38
    rst $38
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
    pop af
    rst $38
    jp $87ff


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
    cp $ff
    db $fc
    cp [hl]
    nop
    cp a
    nop
    and c
    nop
    ld bc, $0100
    nop
    rrca
    nop
    rra
    nop
    ld e, a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $18
    nop
    rst $38
    nop
    sbc a
    nop
    cp [hl]
    nop
    adc [hl]
    nop
    db $fd
    nop
    ld e, l
    nop
    or b
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    ld bc, $c040
    nop
    ld [$90f6], sp
    ld a, a
    db $d3
    ld a, $c4
    ccf
    ld e, h
    cp a
    rst $18
    ld a, $8c
    ld a, $ed
    ld e, $df
    inc a
    ld a, h
    rra
    ld a, [c]
    rrca
    ld hl, $a15f
    ld e, a
    push af
    inc bc
    ld c, l
    or e
    ld l, l
    sub e
    xor b
    ld b, a
    push bc

Call_06e_5863:
    jr c, @+$01

    cp b
    cpl
    ld hl, sp-$79
    add hl, sp
    inc de
    rst $20
    sbc c
    daa
    ld c, b
    ld [hl], a
    db $f4
    cp a
    ld l, h
    rst $38
    inc e
    rst $38
    ld e, h
    cp a
    sbc h
    ld a, a
    ld a, $ff
    db $76
    sbc a
    ld a, $df
    ld a, $df
    ld bc, $c9ff
    rst $38
    rst $08
    rst $38
    rst $28
    rst $18
    ld a, c
    rst $08
    rst $28
    rst $38
    ret c

    rst $28
    and $ff
    rst $38
    nop
    nop
    nop
    nop
    nop
    reti


    nop
    rst $38
    rst $38
    dec c
    ld a, [c]
    adc l
    ld [hl], d
    rst $38
    nop
    ld b, a
    cp b
    ei
    inc b
    add a
    ld a, b
    ld [hl], e
    nop
    sub a
    ld l, b
    ld bc, $d8fe
    daa
    add a
    ld a, b
    adc h
    ld [hl], e
    ccf
    ret nz

    rst $38
    rst $38
    cp $fe
    ld hl, sp-$08
    ldh a, [$f0]
    ret nz

    ret nz

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add hl, de
    rst $20
    rst $20
    rra
    rst $28
    rra
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    pop hl
    rst $38
    jp $8fff


    rst $38
    rra
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    db $fc
    ld a, [$fbfc]
    db $f4
    rst $28
    ret nc

    rst $30
    add b
    cp $00
    ld a, e
    add h
    cp $01
    ccf
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
    db $fc
    nop
    di
    nop
    rst $28
    nop
    ld c, a
    nop
    cp $00
    cp $00
    dec sp
    nop
    ld a, h
    nop
    ld l, b
    nop
    ld h, h
    nop
    ld hl, sp+$00
    ld de, $2300
    nop
    rlca
    nop
    rrca
    nop
    sbc a

jr_06e_592b:
    nop
    ld a, $00
    ld a, [hl]
    nop
    add hl, bc
    rst $30
    dec c
    di
    ld c, [hl]
    or c
    ld c, h
    or e
    cp c
    inc de
    ld d, a
    ld de, $114e
    ld e, [hl]
    ld bc, $a1df
    or $81
    cp a
    ret nz

    db $fc
    db $e3
    ld a, [hl]
    pop hl
    rst $28
    ldh a, [$a0]
    rst $38
    add b
    rst $38
    add d
    db $fd
    jr z, jr_06e_592b

    and a
    ld a, a
    rst $10
    ld l, a
    ldh [$1f], a
    ret nc

    cp l
    jp nc, Jump_06e_70fd

    rst $08
    rst $08
    rst $38
    and $ff
    db $fc
    rst $38
    cp $fd
    or $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $30
    rst $38
    cp [hl]
    rst $30
    or e
    rst $38
    ei
    rst $30
    rst $38
    di
    xor e
    rst $10
    cp c
    rst $00
    rst $10
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    ldh [$9e], a
    ld a, l
    db $fc
    rra
    ld hl, sp-$58
    ld e, b
    ret c

    jr nc, @-$26

    jr nc, jr_06e_59f6

    cp b
    or b
    ld h, b
    cp [hl]
    ld [hl], c
    rra
    rst $18
    nop
    add b
    rst $38
    rst $38
    add b
    ld a, a
    rst $38
    add b
    add c
    add b
    dec b
    nop
    inc h
    ld bc, $0380
    nop
    rrca
    inc bc
    rra
    rrca
    ccf
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
    cp $ff
    db $fc
    rst $38
    ldh a, [rIE]
    pop hl
    rst $38
    rst $00
    rst $38
    adc a
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
    cp $ff
    db $fd
    db $fc
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    ld d, a
    nop
    cp a
    nop
    rst $38
    nop

jr_06e_59f6:
    rst $38
    nop
    rlc b
    sbc a
    nop
    cp $01
    ld a, b
    add a
    adc h

jr_06e_5a01:
    ld [hl], e
    pop hl
    ld e, $fb
    inc b
    ld a, h
    nop
    ei
    nop
    rst $30
    nop
    adc a
    nop
    rst $38
    nop
    xor d
    nop
    ld h, $00
    call z, Call_000_2800
    nop
    ld [$b800], sp
    nop
    ld h, b
    db $10
    ret nz

    jr nz, jr_06e_5a01

    nop
    pop bc
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
    add b
    nop
    ld [hl], b
    xor a
    xor a
    rst $30
    add hl, sp
    xor $c4
    ei
    add $e9
    rst $30
    pop hl
    jp z, $d3e5

    push hl
    db $eb
    db $dd
    ret


    cp $2f
    ld hl, sp+$16
    ld sp, hl
    sbc h
    ld [hl], a
    ld [hl], d
    cp l
    sbc $38
    db $dd
    ld a, [hl-]
    adc [hl]
    ld a, c
    pop de
    adc h
    ld a, [$5f80]
    and b
    ld a, d
    sub b
    ld [hl], a
    or b
    ccf
    ldh a, [rNR23]
    rst $20
    cp b
    rst $20
    ld h, c
    rst $18
    and c
    ld e, a
    inc bc
    rst $18
    daa
    db $db
    sub c
    rst $28
    db $db
    rst $38
    rst $20
    rst $38
    xor $ff
    ld l, [hl]
    rst $38
    ld a, a
    cp $3e
    rst $38
    cp [hl]
    rst $38
    cp [hl]
    rst $38
    rst $30
    ld hl, sp-$02
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

jr_06e_5a96:
    cp a
    nop
    rrca
    nop
    rra
    pop hl
    rst $38
    rst $38
    ld h, a
    nop
    db $fd
    rst $38
    rlca
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
    cp $ff
    db $fc
    rst $38
    ldh a, [rIE]
    db $e3
    rst $38
    rst $00
    rst $38
    rrca
    rst $38
    rra

jr_06e_5ac4:
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
    cp $ff
    ld hl, sp-$01
    ld hl, sp-$09
    ldh [rIE], a
    reti


    and $9f
    ldh [$e4], a
    nop
    nop
    db $fc
    db $fd
    ld [bc], a
    rst $38
    nop
    cp a
    nop
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    ei
    inc b
    ld a, e
    inc b
    rst $20
    jr jr_06e_5ac4

    jr nc, jr_06e_5a96

    ld h, b
    rla
    ldh [$7f], a
    add b
    rst $28
    nop
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $00
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    ld bc, $c000
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    ld [$0000], sp
    nop
    nop
    nop
    nop

Jump_06e_5b25:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$2100], sp
    sbc [hl]
    rst $30
    ld [$00ef], sp
    ld a, [hl]
    add c
    ld l, d
    add c
    ld [hl], h
    add e
    ld a, [hl+]
    add a
    ld [hl], c
    add a
    push af
    adc e
    ld b, [hl]
    add hl, de
    xor h
    ld d, e
    inc de
    call z, Call_06e_56a9
    ldh a, [$1f]
    pop af
    ld e, $dd
    ld a, $9e
    inc a
    ld a, [de]
    ld a, h
    cp h
    ld a, e
    ld a, c
    ccf
    add a
    ld a, a
    add d
    ld a, a
    ei
    rlca
    ld d, a
    and a
    dec [hl]
    set 3, [hl]
    ld [hl], c
    ld c, d
    push af
    or c
    sub $bf
    rst $38
    adc e
    rst $38
    cp a
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, h
    rst $38
    ld a, l
    cp $dc
    ccf
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    nop
    dec de
    cp $3f
    cp $7d
    rst $38
    ld a, a
    cp $7f
    cp $ff
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
    rst $38
    rst $38
    rst $38
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
    pop af
    rst $38
    db $e3
    rst $38
    add a
    rst $38
    rrca
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
    cp $ff
    sbc b
    rst $20
    add hl, bc
    or $16
    jp hl


    ld c, [hl]
    or c
    ld c, a
    or b
    cp $01
    xor $11
    ld sp, hl
    ld b, $b1
    ld c, $e7
    jr @-$33

    inc [hl]
    add a
    ld a, b
    adc $31
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
    rst $38
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
    ei
    inc b
    add b
    ld a, a
    ld a, a
    add b
    rst $38
    nop
    ld e, $00
    rra
    nop
    add d
    nop
    ld c, d
    nop
    add d
    nop
    nop
    nop
    ld de, $0200
    nop
    nop
    nop
    jr nz, jr_06e_5c1e

jr_06e_5c1e:
    add b
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
    inc b
    nop
    nop
    nop
    add hl, bc
    nop
    ld e, $fd
    add l
    ld a, b
    sbc a
    ld h, b
    call nz, $f93b
    ld [bc], a
    ld e, a
    nop
    ld a, [hl+]
    pop bc
    dec h
    ldh a, [$ba]
    ldh a, [$35]
    ld a, [c]
    sub b
    xor a
    ld d, b
    cp a
    di
    ccf
    dec [hl]
    rst $28
    cpl
    rst $18
    ld a, [hl]
    rrca
    and [hl]
    ld c, a
    ld a, c
    rlca
    push hl
    ld [bc], a
    dec d
    ret nz

    xor [hl]
    ret nz

    ld sp, hl
    call z, $dea9
    ld c, [hl]
    cp a
    ld c, [hl]
    cp a
    ld b, $ff
    cp h
    rst $30
    db $fd
    ld [hl+], a
    ld a, h
    db $e3
    ld h, [hl]
    dec sp
    ei
    rst $38
    rst $18
    rst $38
    or a
    rst $38
    sbc e
    rst $38
    rst $18
    cp a
    rst $38
    sbc a
    sbc a
    rst $38
    rst $38
    rst $18
    ld a, [hl]
    add c
    rst $38
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    ld e, a
    rst $38
    cp $01
    cp $03
    cp $03
    cp $0f
    rst $38
    ccf
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    rst $38

Call_06e_5c9d:
    rst $38
    cp $ff
    rst $38
    ei
    rst $38
    di
    rst $38
    rst $20
    rst $38
    adc a
    rst $38
    rra
    rst $38

Call_06e_5cab:
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    ei
    rst $38
    ei
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
    cp $ff
    ld hl, sp-$01
    pop hl
    cp $ec
    di
    ret nc

    rst $28
    jr nc, @-$2f

    nop
    rst $38
    dec bc
    db $f4
    ccf
    ret nz

    ld a, a
    add b
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
    ld a, a
    nop
    rst $38
    nop
    ld a, [hl]
    ld bc, $10ef
    ei
    inc b
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    db $fc
    inc bc
    pop de
    ld c, $64
    dec de
    db $eb
    inc d
    nop
    rst $38
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld e, e
    nop
    ccf
    nop
    ld [hl], e
    nop
    and [hl]
    nop
    sbc l
    nop
    nop
    nop
    ld b, b
    nop
    ld bc, $0900
    nop
    nop
    nop
    call nz, $9000
    nop
    ld l, d
    db $10
    inc l
    nop
    sub b
    ld [$0020], sp
    ld d, b
    nop
    ret


    nop
    or d
    rst $18
    add [hl]
    reti


    inc hl
    call c, $da35
    cp d
    ld e, b
    pop af
    jr jr_06e_5d5f

    sbc b
    ld [hl], a
    sbc b
    cp a
    inc d
    db $e3
    sbc h
    add [hl]
    dec a
    ret nz

    dec a
    inc de
    xor l
    push de
    xor a
    dec e
    rst $20
    dec [hl]
    adc $14
    rst $28
    add b
    rst $30
    xor c
    rst $30
    ld [hl-], a
    rst $20
    dec c
    db $e3
    dec d
    jp Jump_06e_47ab


    adc c

jr_06e_5d5f:
    rst $30
    ld e, e
    rst $30
    ld bc, $07ff
    rst $38
    add a
    ld a, a
    inc de
    ei
    or e
    rst $38
    rst $38
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
    db $ed
    rst $38
    rst $28
    rst $38
    jp $fefc


    rst $38
    add sp, -$01
    xor $ff
    db $ec
    rst $38
    cp $fd
    db $dd
    ld a, [$ff00]
    nop

jr_06e_5d8d:
    rst $38
    ld b, c
    rst $38
    ld [c], a
    rst $38
    rst $38
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    ld bc, $60fe
    rst $38
    jp nz, $ebfd

    rst $38
    ld [hl], b
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    cp $ff
    cp $ff
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ld [c], a
    rst $38
    ld d, b
    rst $38
    nop
    rst $38
    nop
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
    jr c, jr_06e_5d8d

    nop
    rst $38
    nop
    rst $38
    ld [$29f7], sp
    sub $80
    ld a, a
    sbc b
    ld h, a
    rst $38
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
    db $ed
    ld [de], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, @+$7f

    add d
    sbc $21
    ld hl, sp+$07
    di
    inc c
    ret nz

    ccf
    nop
    rst $38
    scf
    ret z

    cpl
    ret nc

    ld a, $c1
    rst $38
    nop
    rst $38
    nop
    ld e, $e1
    db $ed
    ld [bc], a
    ret c

    rlca
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    db $dd
    nop
    ld e, h
    nop
    ld d, $00
    dec a
    nop
    sbc d
    nop
    or b
    nop
    jr z, jr_06e_5e22

jr_06e_5e22:
    jp z, $9800

    nop
    stop
    ld [de], a
    nop
    inc hl
    nop
    ld b, h
    nop
    adc b
    nop
    add hl, de
    cp $9b
    ld a, h
    add a
    ld a, b
    ld sp, hl
    inc a
    ld a, [hl-]
    ld a, l
    ld a, e
    inc a
    ld a, [hl-]
    inc a
    sbc e
    ld a, h
    cp [hl]
    call c, $fc9b
    ld [c], a
    ld hl, sp+$45
    cp $21
    cp $fb
    db $e4
    rst $38
    ldh [$7f], a
    ldh [$e5], a
    ld e, d
    ld [hl-], a
    call $c53e
    ld [bc], a
    push af
    adc $35
    cp [hl]
    ld a, c
    ld [hl], e
    ld sp, hl
    push hl
    ld a, b
    ld b, b
    ei
    ld h, l
    cp d
    ld l, e
    cp h
    or l
    jp z, $fbc4

    jp nz, $e0f7

    rst $28
    cp h
    rst $28
    sbc a
    rst $38
    sbc h
    rst $38
    db $dd
    rst $38
    call c, $d6ff
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    add a
    rst $38
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    rst $30
    rst $28
    rst $28
    rst $38
    ld bc, $72fe
    db $fd
    ld e, $f7
    inc e
    rst $38
    dec sp
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ldh a, [$3f]
    ld h, b
    rst $38
    add c
    rst $38
    inc c
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
    inc bc
    rst $38
    nop
    rst $38
    rlca
    rst $38
    sbc l
    rst $38
    nop
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
    nop
    rst $38
    nop

jr_06e_5ec1:
    rst $38
    ld bc, $00fe
    rst $38
    db $10
    rst $28
    add h
    ld a, e
    nop
    rst $38
    ret nz

    ccf
    add hl, bc
    rst $30
    cp e
    ld b, [hl]
    ret nc

    cpl
    ld a, e
    add h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld l, a
    sub b
    ld a, a
    add b

jr_06e_5ee0:
    rst $38
    nop
    rst $18
    jr nz, jr_06e_5ee0

    inc b
    rst $38
    nop
    rst $38
    nop
    db $e3
    inc e
    jp Jump_000_383c


    rst $00
    jr nc, jr_06e_5ec1

    rst $38
    nop
    rst $38
    nop
    ld h, a
    sbc b
    ld hl, $60de
    sbc a
    ld l, c
    sub [hl]
    push af
    ld a, [bc]
    or [hl]

jr_06e_5f01:
    ld c, c
    or l
    ld c, d
    ld bc, $2cfe
    db $d3
    xor h
    ld d, e
    add hl, de
    and $d7
    jr z, @+$01

    nop
    ld a, a
    nop
    push af
    nop
    cp e
    nop
    rst $38
    nop
    rst $10
    nop
    ld [hl], a
    nop
    ld d, a
    nop
    ld l, a
    db $10
    cp $00
    rlc b
    and d
    nop
    ld c, [hl]
    nop
    adc a
    nop
    ld a, $00
    ld a, a
    nop
    ld [hl], e
    nop
    ld [bc], a
    ld sp, hl
    ld [hl], a
    ret z

    cpl
    ret nz

    ld d, [hl]
    and c
    or [hl]
    ret


    dec [hl]
    jp $41fa


    or l
    ld b, b
    cp d
    ld b, b
    or l
    ld b, b
    or [hl]
    nop
    halt
    cp b
    ld b, [hl]
    ld c, $f1
    add $39
    ld e, b
    cp a
    ld l, b
    and a
    ld e, b
    or a
    and e
    adc a
    ei
    add a
    xor e
    sub e
    push de
    add e
    ei
    adc l
    adc $bf
    jr nc, jr_06e_5f01

    rra
    cp $14
    xor $43
    ld a, h
    xor d
    ld a, h
    ld d, l
    or d
    or e
    rst $38
    cpl
    rst $30
    rst $30
    rst $38
    ei
    rst $38
    ei
    rst $38
    db $db
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    sub b
    rst $38
    rst $00
    ld hl, sp-$61
    cp $fe
    sbc a
    cp [hl]
    rst $18
    cp [hl]
    rst $18
    xor a
    rst $18
    adc b
    ld [hl], a
    dec b
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    cp [hl]
    rst $38
    cp e
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, c
    rst $38
    db $fc
    rst $38
    ei
    rst $38

Jump_06e_5fa0:
    adc a
    rst $38
    nop
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
    adc a
    rst $38
    jr nz, @+$01

    ld [hl], h
    cp a
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
    ld [$00f7], sp
    rst $38
    add [hl]

jr_06e_5fc3:
    ld a, c
    nop
    rst $38
    dec a
    jp nz, $ff00

    nop
    rst $38
    ld [$70f7], sp
    adc a
    pop bc
    ld a, $80
    ld a, a
    sbc d
    ld h, l
    db $d3
    inc l
    ld [hl], c
    adc [hl]
    call $f532
    ld a, [bc]
    db $fd
    ld [bc], a
    sbc d
    ld h, l
    ret nc

    cpl
    db $fc
    inc bc
    db $dd
    ld [hl+], a
    ld a, d
    add l
    cp $01
    db $fd
    ld [bc], a
    jr nc, @-$2f

    inc bc
    db $fc
    ld a, [$fd05]
    ld [bc], a
    rst $28
    db $10
    dec c
    ld a, [c]
    jr nz, @-$1f

    add c
    ld a, [hl]
    ld [$90f7], sp
    ld l, a
    ret


    ld [hl], $39
    add $00
    rst $38
    ld a, [$f905]
    ld b, $9b
    inc h
    db $ec
    ld bc, $00fd
    ld a, c
    add b
    cpl
    add b
    sbc [hl]
    nop
    push bc

jr_06e_6019:
    nop
    ret nz

    ld bc, $00c3
    xor $00
    ld e, b
    ld [bc], a
    inc a
    ld [bc], a
    inc l
    ld b, b
    call Call_06e_6520
    nop
    pop hl
    inc b
    and e
    ld [$201b], sp
    jp nc, $d4ff

    di
    jr jr_06e_6019

    db $dd
    ldh [$d9], a
    ld [c], a
    inc d
    db $e3
    sbc e

Jump_06e_603d:
    jr nz, jr_06e_5fc3

    ld e, e
    db $e4
    ld a, [de]
    ld [hl], l
    ld a, [bc]
    ld [c], a
    jr jr_06e_60c4

    ld [de], a
    cp $13
    ldh [rNR33], a
    rst $30
    ld [$18c7], sp
    ld b, d
    cp l
    sub a
    add sp, -$4d
    ret z

    sub l
    ret z

    or e
    ret z

    or l
    ret nz

    db $eb
    ret nz

    ld d, b
    and a
    rra
    ldh [$dd], a
    ld [hl+], a
    ld sp, hl
    rrca
    ld e, a
    xor a
    ld l, a
    rst $38
    rst $38
    ld a, a
    ld a, a
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
    ei
    rst $38
    cp e
    rst $38
    ld a, a
    cp $fb
    rst $38
    rst $30
    ei
    ei
    rst $30
    rst $30
    rst $38
    db $eb
    rst $38
    ld b, b
    cp a
    ld b, $ff
    rlca
    rst $38
    jp z, $f8ff

    rst $38
    ld a, a
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld [de], a
    rst $38
    jr @+$01

    ld hl, sp-$01
    rst $38
    rst $38
    ld b, $ff
    ld b, $ff
    inc b
    rst $38
    dec d
    cp $30
    rst $38
    jr nc, @+$01

    or b
    rst $38
    ldh [rIE], a
    inc h
    rst $38
    inc c
    rst $30
    inc e
    rst $20
    ld [$18ff], sp
    rst $28
    ld [hl-], a

jr_06e_60bd:
    call $ce31
    ld b, b
    cp a
    ret nz

    ld a, a

jr_06e_60c4:
    ld b, b
    rst $38
    ld b, b
    rst $38
    ret nz

    ld a, a
    jr nz, @+$01

    ld hl, $7dde
    add d
    inc l
    db $d3
    dec d
    ld [$0ff4], a
    jp hl


    ld e, $e8
    rra
    or b
    ld e, a
    jr nz, jr_06e_60bd

    ret nz

    ccf
    ld [hl], b
    adc a
    ret c

    daa
    cp c
    ld b, [hl]
    ld [hl], e
    adc h
    ld h, $d9
    db $fd
    ld [bc], a
    rst $38
    nop
    sbc a
    ld h, b
    dec sp
    call nz, Call_000_02fd
    cp a
    ld b, b
    inc a
    jp $c23d


    ld a, a
    add b
    cp a
    ld b, b
    dec a
    jp nz, $e41b

    ld c, l
    or d
    ld a, e
    add h
    inc bc
    db $fc
    ld [$10f7], sp
    xor a
    db $eb
    inc d
    dec e
    ld h, d
    db $fc
    inc bc
    add hl, bc
    cp d
    add l
    ld a, [hl-]
    jp nc, Jump_000_052d

    ld a, d
    inc bc
    ld a, h
    sub h
    ld l, e
    adc d
    ld [hl], l
    cp e
    ld b, h
    ld sp, hl
    ld b, $9b
    ld h, h
    ld [hl-], a
    call $c03f
    ld a, a
    add b
    ld a, l
    add d
    ld d, a
    xor b
    ld h, e
    call c, $cd30
    ld a, $c1
    ld e, b
    rst $00
    ld [hl+], a
    call $c518
    ld a, [hl-]
    pop bc
    ld c, [hl]
    pop de
    add hl, hl
    jp $8355


    inc l
    jp $c739


    ld [hl], c
    adc a
    ld sp, $96cf
    ld a, a
    ld b, l
    cp a
    rst $18
    daa
    and b
    ld b, a
    pop bc
    ld l, [hl]
    pop de
    ld a, h
    db $db
    ld a, l
    add hl, hl
    rst $38
    dec l
    ld a, [$38f5]
    sub e
    ld [hl], b
    ld [hl], l
    sub b
    jp hl


    db $10
    sub c
    ld h, b
    ld h, e
    ldh [$c6], a
    pop hl
    rst $08
    ldh [$b6], a
    pop hl
    adc [hl]
    push hl
    adc [hl]
    ld sp, hl
    dec a
    cp $fd
    cp $f6
    ld sp, hl
    push af
    ei
    cp e
    rst $38
    rst $28
    rst $38
    rst $38
    rst $30
    rst $18
    rst $30
    rst $20
    rst $38
    di
    rst $38
    add a
    ei
    dec bc
    rst $30
    di
    rrca
    add a
    ld a, e
    add hl, bc
    rst $30
    dec hl
    push af
    ld l, l
    di
    ld l, a
    pop af
    adc a
    ld [hl], l
    add hl, sp
    sub $1a
    push af
    ld l, a

Jump_06e_619f:
    or b
    ccf
    ldh [rNR11], a
    ldh [rNR32], a
    ldh [rNR34], a
    rst $38
    rra

jr_06e_61a9:
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    sbc a
    ld a, a
    ld e, a
    cp a
    rst $18
    ccf
    ld e, a
    cp a
    rrca
    rst $38
    ld d, a
    xor a
    rst $18
    rra
    ld e, l
    sbc a
    ld h, a
    sbc b
    ld c, h
    sub e
    inc de
    ret nz

    ld c, $ff
    dec b
    cp $0c
    rst $38
    add hl, bc
    cp $4d
    cp [hl]
    ld e, h
    cp a
    ld b, b
    cp a
    ld [bc], a
    db $fd
    jr nc, jr_06e_61a9

    ld b, b
    cp a
    dec b
    ld a, [$dd22]
    cpl
    ret nc

    dec bc
    db $f4
    rst $38
    nop
    rst $18
    nop
    call c, Call_06e_7821
    add a

jr_06e_61ec:
    db $fc
    inc bc
    sbc $21
    rst $38
    nop
    db $fd
    ld [bc], a
    jp c, $ab25

    ld d, h
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    ld hl, sp+$07
    ld a, h
    add e
    cp $01
    or $09
    db $76
    add hl, bc
    ld a, h
    add e
    inc bc
    db $fc
    ld hl, $a9de
    ld d, [hl]
    sbc $21
    ld e, e
    and h
    sbc $21
    ld c, l
    or d
    ld [hl], c
    add [hl]
    adc l
    ld h, d
    cp e
    ld b, h
    sbc e
    ld b, h
    rst $18
    nop
    di
    inc c
    ret


    ld [hl], $b3
    ld b, h
    ld l, e
    add h
    dec l
    jp nz, Jump_06e_42bd

    adc a
    ld h, b
    sub l
    dec hl
    db $dd
    inc sp
    ld l, a
    or e
    cp l
    ld h, e
    add l
    ld l, e
    sub h
    ld l, e
    inc c
    ei
    or l
    db $db
    jr nc, @+$01

    inc [hl]
    ei
    ld l, e
    rst $30
    db $d3
    rst $28
    ld d, e
    rst $38
    ld [hl], b
    rst $38
    jp c, $94e5

    rst $08
    cp e
    rra
    ld a, [hl]
    rra
    cp $3c
    scf
    ld hl, sp-$65
    ldh a, [rPCM34]
    ldh [$a8], a
    inc bc
    ld a, [c]
    dec c
    xor $09
    or l
    ld a, b
    ei
    inc a
    ld c, a
    jr nc, jr_06e_61ec

    ld a, b
    add d
    ld sp, hl
    ld e, e
    or c
    push af
    sub e
    ld e, e
    or h
    inc h
    db $d3
    adc e
    ld h, c
    ld h, h
    db $e3
    adc $e7
    ld hl, sp-$01
    db $f4
    ei
    rst $30
    ret c

    db $db
    cp h
    sbc $bd
    sub [hl]
    db $fd
    di
    db $fc
    pop af
    rst $38
    db $e3
    rst $38
    ld a, [c]
    rst $28
    db $e4
    ei
    ld sp, hl
    and $fc
    ei
    ld hl, sp-$01
    push af
    ld a, [$fef1]
    rst $38
    db $fc
    rst $38

jr_06e_629d:
    cp $33
    rst $08
    rst $38
    ld bc, $03fd
    ei
    inc b
    cp h
    ei
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rst $38
    ccf
    ccf
    rst $38
    ld a, a
    cp a
    rst $38
    cp a
    sbc a
    rst $38
    rst $38
    sbc a
    rst $18
    cp a
    ccf
    rst $18
    rst $38
    rst $18
    rst $08
    rst $38
    rst $18
    rst $28
    rst $08
    ld a, a
    rst $38
    ld c, a
    rra
    rst $28
    rst $28
    ld [hl], a
    or a
    ld l, a
    rst $38
    daa
    xor a
    ld [hl], a
    xor e
    ld [hl], a
    xor e
    ld [hl], a
    adc a
    ld [hl], e
    daa
    ei
    ld c, a
    or e
    push hl
    dec de
    ld l, l
    sbc e
    ld a, a
    sbc c
    ei
    dec e
    ld l, a
    sbc c
    ld h, e
    sbc h
    ld l, a
    sub h
    ld [hl], a
    sbc h
    or e
    ld c, h
    add hl, sp
    add $3b
    call nz, $86f9
    dec sp
    add $9b
    and $c2
    and a
    db $e3
    add [hl]
    ld h, d
    add a
    ld d, c
    and a
    ld [hl], e
    add l
    add hl, sp
    rst $00
    ld a, a
    add a
    ld b, [hl]
    or c
    ld [bc], a
    pop af
    ld hl, $11d0
    ldh [$61], a
    sub b
    add hl, bc
    ldh a, [rBCPS]
    sub b
    ld a, b
    add b
    db $10
    xor b
    sbc b
    jr nz, jr_06e_6363

    jr nc, jr_06e_629d

    ld a, b
    cp b
    ld b, b
    call nc, $d428
    jr z, jr_06e_639d

    inc b
    jp hl


    inc d
    push af
    nop
    db $fc
    nop
    cp b
    inc b
    ld [hl], b
    inc b
    ldh a, [rIE]
    ld hl, sp-$01
    adc d

jr_06e_6335:
    push af
    ld c, l

jr_06e_6337:
    or e
    ld b, d
    cp a
    rst $08
    or a
    cp a
    rst $20
    sub a
    rst $28
    sub b
    rst $28
    and d
    ld a, a
    jr nc, jr_06e_6335

    jr nc, jr_06e_6337

    ld h, [hl]
    ld sp, hl
    ld b, b
    rst $38
    dec c
    ld a, [c]
    or a
    ld l, b
    ld b, a
    cp b
    ld e, l
    nop
    swap c
    ld [hl], a
    ld a, c
    ld h, c
    rst $38
    ld [hl], a
    rst $28
    ld l, a
    rst $38
    ld d, a
    rst $38
    rrca
    rst $38
    ld a, a

jr_06e_6363:
    rst $38
    ld a, [hl]
    rst $38
    ld [hl], e
    cp $6b
    db $f4
    pop af
    db $ec
    or $ef
    rst $38
    rst $20
    ld h, l
    sbc [hl]
    ld h, a
    sbc l
    ld l, l
    sbc a
    xor h
    ld e, a

jr_06e_6378:
    ld a, $fc
    jr nc, jr_06e_6378

    add hl, bc
    db $fc
    sbc l
    add sp, $7a
    ld hl, sp-$09
    db $fc
    ldh [$7e], a
    jp nc, $cf6f

    rst $38
    call c, $dcff
    rst $38
    call c, Call_06e_6eff
    db $fd
    ld a, c
    rst $38
    rst $38
    ld a, a
    db $fc
    ld a, a
    ld a, b
    rst $38
    di
    ld a, l
    ld b, c

jr_06e_639d:
    rst $38
    or $f9
    or $f9
    ldh a, [rIE]
    or $f9
    ldh a, [rIE]
    db $fc
    di
    ld hl, sp-$09
    or $f9
    db $f4
    db $eb
    jp hl


    or $e1
    cp $e0
    rst $38
    pop bc
    cp $d0
    rst $28
    jp nz, $f1fd

    cp $f8
    rst $38
    ld sp, hl
    cp $fa
    db $fd
    db $fc
    rst $38
    ld hl, sp-$01
    ld a, [$fefd]
    ld sp, hl
    ei
    db $fc
    pop hl
    rst $38
    ret nc

    rst $28
    db $d3
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
    ld a, a
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    rst $38
    ccf
    cp a
    ccf
    cp a
    ccf
    sbc a
    ccf
    cp a
    rra
    ld a, a
    sbc a
    rst $38
    sbc a
    ld c, a
    sbc a
    ld e, a
    adc a
    ccf
    rst $08
    rst $38
    adc a
    xor a
    rst $08
    rst $20
    rst $08
    rst $20
    rst $08
    rst $28
    rst $00
    rst $30
    rst $00
    rst $10
    rst $20
    di
    rst $20
    or e
    rst $20
    rst $30
    and e
    res 6, e
    ret


    di
    dec de
    pop af
    dec sp
    ld de, $111f
    rla
    add hl, de
    ei
    ldh a, [$e3]
    db $f4
    ret z

    ldh [rDIV], a
    ret nz

    adc [hl]
    add b
    adc h
    add b
    cp b
    add b
    sub c
    nop
    ld e, l
    xor d
    inc hl
    sbc $da
    or a
    or l
    rst $28
    push af
    ld [$f46b], a
    daa
    ld hl, sp+$0e
    pop af
    ld [hl], a
    add c
    ld b, e
    or a
    ld a, a
    db $e3
    or a
    db $e3
    ld a, e
    and a
    rla
    rst $28
    rst $18
    rst $28
    adc a
    rst $38
    cp $bf
    ld a, a

Call_06e_6463:
    cp [hl]
    cp a
    ld a, e
    rst $10
    ld a, [hl]
    call nz, $d67e
    db $ec
    call z, $9ffe
    sbc $1c
    cp $dd
    cp $e7
    db $fc
    cp c
    call nz, Call_000_01ab
    ld a, [$4c07]
    ccf
    jp z, Jump_000_251f

    sbc a
    call Call_06e_5c9d
    xor [hl]
    ld e, h
    sbc a
    ccf
    sbc $87
    cp $47
    cp a
    dec a
    rst $38
    cp [hl]
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    dec a
    rst $38
    sbc l
    ld a, a
    dec a
    rst $38
    cp l
    ld a, a
    dec a
    rst $38
    sbc h
    ld a, a
    ld a, $ff
    ld a, [hl]
    rst $38
    ld a, $ff
    ld a, [hl]
    rst $38
    dec a
    cp $7d
    cp $3d
    cp $3f
    db $fc
    rst $38
    db $fc
    ei
    db $fc
    ld [hl], $f9
    ld [hl], l
    ld a, [$ff72]
    push af
    rst $38
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
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    db $eb
    rst $38
    xor $ff
    xor $ff
    or $ff
    or $ff
    cp $ff
    db $fd
    rst $38
    db $ed
    cp $f9
    cp $e1
    cp $f3
    db $fc
    ld hl, sp-$01
    rst $38
    cp $7c
    rst $38
    jr c, @+$01

    cp $ff
    rst $38
    rst $38
    rst $28
    rst $38

jr_06e_6500:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc l
    rst $38
    cp a
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
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret c

    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38

Call_06e_6520:
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
    xor c
    ld [hl-], a
    push hl
    ld [de], a
    ld [$dd90], sp
    nop
    ld l, b
    ld [$1855], sp
    jr jr_06e_65b1

    ld a, c
    ld [hl], $7c
    inc [hl]
    ld a, h
    jr c, jr_06e_6500

    ld e, b
    call nc, $aa19
    ld d, c
    ld e, [hl]
    ld [hl], c
    adc $71
    rst $28
    ret nz

    adc $80
    rst $18
    add d
    cp e
    add e
    dec de
    add a
    rst $00
    adc a
    ld d, [hl]
    rrca
    jp nc, Jump_06e_560f

    adc a
    ld [hl-], a
    rrca

Call_06e_6562:
    inc de
    rrca
    jr nz, jr_06e_6585

    ld e, l
    ld c, $3c
    rra
    ld e, h
    ccf
    pop af
    rra
    ld a, b
    scf
    adc $3d
    dec sp
    ld a, h
    cp $f0
    cp l
    pop bc
    dec hl
    add e
    ld d, e
    rrca
    ld e, l
    and a
    jp nc, $d167

    rst $20
    dec de
    rst $20
    ei

jr_06e_6585:
    rlca
    db $db
    ld b, a
    rra
    rst $00
    ld l, a
    sbc a
    adc b
    or a
    db $d3
    inc c
    ld [de], a
    inc c
    ld d, c
    ld a, $cb
    rst $38
    and b
    rst $18
    ld sp, hl
    add $db
    rst $20
    rst $00
    rst $28
    db $fd
    db $e3
    di
    rst $28
    rst $38
    rst $38
    cp $ff
    db $76
    rst $38
    ld [hl], $ff
    scf
    rst $38
    add hl, sp
    rst $30
    dec h
    rst $38
    dec [hl]

jr_06e_65b1:
    ei
    and c
    ld a, a
    or l
    ld a, a
    jr nz, @+$01

    ld d, b
    rst $28
    call c, Call_06e_6463
    ei
    ld h, h
    ei
    ld l, [hl]
    pop de
    ld bc, $d3ff
    db $ed
    pop bc
    rst $38
    add c
    rst $38
    adc c
    rst $30
    or l
    res 0, e
    rst $38
    sbc e
    rst $20
    ld de, $85ef
    rst $38
    add l
    rst $38
    rla
    rst $28
    rla
    rst $28
    cpl
    rst $18
    rlca
    rst $38
    ld h, e
    sbc a
    ld l, a
    sbc a
    ccf
    rst $18
    sbc a
    ld a, a
    rst $18
    ccf
    ld e, a
    cp a
    rst $00
    ccf
    adc a
    ld a, a
    rst $08
    ccf
    rrca
    rst $38
    adc a
    ld a, a
    rst $08
    ccf
    ld l, a
    sbc a
    cpl
    rst $18
    rst $10
    rst $28
    push hl
    rst $38
    scf
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    ld [hl], e
    rst $38
    ld a, [$e7ff]
    rst $38
    push af
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    ld a, e
    rst $38
    ld a, e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $ed
    rst $38
    db $ed
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sub [hl]
    inc c
    dec c
    jr jr_06e_6637

    jr jr_06e_6684

jr_06e_6637:
    db $10
    adc l
    ld [hl], d
    or c
    ld b, [hl]
    ld a, l
    add [hl]
    ld c, a
    inc e
    sbc l
    ld a, $3d
    cp $43
    db $fc
    ld l, c
    call nc, $9c33
    ld c, l
    sub b
    dec sp
    ret z

    sub [hl]
    add hl, sp
    cp c
    ld [hl], e
    ld a, l
    ld a, [c]
    ei
    db $f4
    and $f1
    ei
    pop hl
    ld [hl], $e1
    and b
    ld b, e
    ld l, b
    ld b, a
    ld c, [hl]
    rst $28
    ld a, [hl]
    ei
    db $10
    rst $38
    ld a, [bc]
    push af
    ret z

    or e
    cp [hl]
    pop af
    ld [de], a
    ld sp, hl
    dec de
    reti


    dec d
    ei
    ld b, l
    ld a, [de]
    cp a
    ld b, b
    call c, $9fe3
    rst $28
    adc $bf
    cp a
    rst $38
    rra
    rst $38
    cp a
    rst $38
    db $fd
    rst $38

jr_06e_6684:
    rst $28
    db $fd
    add c
    db $fd
    ld c, e
    or l
    ld [hl], c
    sbc a
    ccf
    rst $18
    sub h
    ld a, e
    sbc e
    ld [hl], a
    rst $30
    ld a, a
    db $f4
    ei
    sub e
    ldh a, [$63]
    and b
    dec [hl]
    ldh [$ea], a
    pop hl
    sbc [hl]
    di
    add d
    ld a, e
    ld e, c
    cp $70
    rst $38
    ld a, [c]
    rst $38
    ld sp, hl
    cp $7a
    rst $30
    and $ff
    rst $38
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
    rst $30
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $28
    rst $18
    rst $08
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
    cp a
    rst $38
    ld e, a
    cp a
    cp a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    db $fd
    rst $38
    cp $ff
    rst $30
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
    db $fc
    rst $38
    cp $ff
    ei
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    ret


    rst $38
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    cp $ff
    ld [$8cff], a
    rst $38
    sbc l
    rst $38
    dec e
    rst $38
    sub a
    rst $38
    sub a
    rst $38
    rst $18
    rst $38
    rst $38
    dec e
    adc a
    ld a, [hl]
    dec l
    cp $97
    ld a, [hl]
    cp e
    ld [hl], h
    dec b
    ld a, b
    ld a, [de]
    ld [hl], b
    rla
    ld [hl], b
    cp d
    ld [hl], c
    adc a
    ld [hl], c
    and [hl]
    ld a, c
    and [hl]
    ld a, c
    jp hl


    ld h, e
    ld [hl], l
    db $e3
    ld l, l
    db $e3
    ei
    rst $20
    ld a, c
    rst $38
    ld [hl], c
    rst $38
    ld a, a
    rst $30
    ld a, l
    rst $30
    ld [hl], c
    cp a
    add hl, hl
    rst $38
    cp e
    ld a, a
    or $7f
    db $fd
    rst $38
    sbc l
    ei
    ld e, l
    ei
    ld e, e
    xor a
    di
    xor a
    db $ec
    db $fd
    cp $fd
    cp $ff
    pop hl
    ld a, [$f2cf]
    or $df
    cp [hl]
    rst $18
    sbc a
    rst $38
    sbc l
    rst $38
    ei
    cp a
    cp b
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    xor c
    db $fc
    adc $f8
    call $daf0
    ldh [rNR22], a
    ldh [$0a], a
    rst $20
    db $dd
    xor $bf
    ld a, h
    ld l, h
    ccf
    rst $20
    ld e, $5d
    cp h
    cp a
    inc a
    ld c, c
    ld a, h
    db $dd
    jr c, jr_06e_67c0

    ld [hl], b
    cp d
    ld [hl], c
    and h
    ld [hl], e
    call Call_06e_6562
    ret nz

    ld [c], a
    ret nz

    add $c1
    rst $38
    rst $38
    ld hl, sp-$01
    ld a, [$e6f5]
    ld sp, hl
    rst $38
    ld hl, sp-$01
    ld hl, sp-$02
    db $fc
    ei
    db $fc

jr_06e_67c0:
    db $fd
    cp $fe
    db $fd
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
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $76
    rst $38
    sub d
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    rst $38
    db $fc
    ld sp, hl
    cp $f3
    db $fc
    rst $28
    ldh a, [$b7]
    ret z

    dec a
    jp nz, $f8c7

    dec e
    ld [c], a
    scf
    ret z

    rst $00
    ld hl, sp-$21
    db $fc
    call z, $fcff
    rst $38
    rst $38
    rst $38
    ld h, a
    rst $38
    db $76
    rst $38
    ld h, [hl]
    rst $38
    db $10
    rst $38
    ldh a, [rIE]
    db $e4
    rst $38
    adc h
    rst $30
    add b
    rst $38
    ld b, h
    xor e
    adc a
    ei
    or $fb
    ei
    rst $30
    rrca
    rst $20
    ld d, a
    xor a
    rst $08
    cpl
    cpl
    ld e, a
    rst $38
    ld a, $3f
    ld a, [hl]
    cp [hl]
    ld a, a
    ld a, a
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
    rst $38
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
    add $ff
    ld c, e
    cp a
    ld b, e
    cp a
    ld h, e
    sbc a
    rst $08
    ccf
    add e
    ld a, a
    adc b
    ld [hl], a
    jp nc, Jump_06e_793d

    cp $78
    rst $38
    cp [hl]
    db $fd
    rst $28
    db $fd
    db $fd
    rst $08
    ld [hl], c
    rst $08
    call z, Call_06e_7cfb
    ei
    rst $30
    ld hl, sp-$29
    ldh [$0e], a
    ret nz

    ld a, h
    inc bc
    rst $38
    inc bc
    ld [hl], a
    rrca
    or a
    ld c, a
    sbc e
    ld a, a
    di
    rra
    add $3f
    or h
    ld e, $a5
    rra
    add a
    ccf
    rst $20
    rra
    rst $08
    ccf
    rst $28
    rra
    db $dd
    ccf
    sbc a
    ld a, a
    cp $ff
    adc a
    ld a, a
    db $e3
    rra
    ld c, $f1
    ld c, e
    ldh a, [$0e]
    pop af
    ld e, h
    ld [c], a
    add l
    ld a, [$ff96]
    dec d
    rst $38
    ld d, e
    cp a
    and $3b
    sbc d
    ld a, [hl]
    sbc a
    ld a, [hl]
    ld l, a
    rst $38
    rst $08
    ccf
    adc [hl]
    ccf
    cp a

jr_06e_68a7:
    db $fc
    ei
    db $fc
    ld hl, sp-$01
    db $fd
    ei
    di
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $28
    rst $38
    db $e4
    rst $38
    ld [$e7f5], a
    ld sp, hl
    rst $08
    pop af
    call $edf3
    db $d3
    db $e4
    db $db
    ret nc

    rst $28
    and d
    rst $18
    ld a, [bc]
    push af
    jr z, jr_06e_68a7

    ld a, h
    add a
    ld h, h
    sbc a
    ld b, b
    cp a
    ld d, b
    xor a
    ldh [$1f], a
    push de
    ld a, [hl-]
    ld h, $f9
    jp nz, $963d

    ld a, c
    add b
    ld a, a
    dec bc
    db $f4
    ld [hl+], a
    db $fd
    dec b
    ld a, [$df21]
    inc b
    ei
    ldh a, [$7f]
    ld bc, $09ff
    rst $30
    ld d, $e9
    jr @-$17

    ld b, $f9
    add hl, de
    rst $20
    ld e, $e1
    sbc $f7
    ld c, $f3
    ld a, [bc]
    rst $38
    daa
    rst $18
    inc bc
    rst $38
    rla
    rst $28
    adc c
    ld [hl], a
    inc b
    ei
    rst $10
    ccf
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
    jr jr_06e_6943

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_06e_6953

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_06e_6963

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_06e_6973

    ld [hl-], a

jr_06e_6943:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_06e_6983

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_06e_6953:
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
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c

jr_06e_6963:
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

jr_06e_6973:
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

jr_06e_6983:
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
    add $74
    rst $00
    ret z

    ret


    jp z, $cccb

    call $cfce
    ret nc

    pop de
    jp nc, Jump_06e_74d3

    ld [hl], h
    ld [hl], h
    call nc, $d583
    sub $d7
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    ldh [$74], a
    ld [hl], h
    pop hl
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$74eb], a
    db $ec
    db $ed
    ld [hl], h
    ld [hl], h
    ld [hl], h
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld a, [$fcfb]
    db $fd
    cp $ff
    push af
    nop
    ld bc, $0302
    push af
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld sp, hl
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
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
    ld e, $1f
    jr nz, @+$03

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
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    nop
    nop
    ld bc, $0103
    ld bc, $0303
    inc bc
    ld bc, $0101
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0003
    nop
    nop
    ld bc, $0101
    ld bc, $0301
    ld bc, $0505
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0301
    ld bc, $0103
    dec b
    inc b
    inc b
    dec b
    inc b
    dec b
    dec b
    dec b
    inc bc
    inc bc
    ld bc, $0303
    inc bc
    ld bc, $0100
    ld bc, $0101
    ld bc, $0505
    dec b
    ld bc, $0103
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0103
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0404
    dec b
    dec b
    dec b
    ld bc, $0102
    ld bc, $0101
    ld bc, $0101
    ld bc, $0404
    inc b
    dec b
    inc b
    inc b
    inc b
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0400
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc bc
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    inc b
    ld b, h
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0100
    ld bc, $0000
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0100
    ld bc, $0404
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
    ld bc, $0001
    add hl, bc
    add hl, bc
    inc c
    inc c
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    dec c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    inc c
    inc b
    nop
    nop
    nop
    nop
    add hl, bc
    dec c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    inc c
    inc c
    inc c
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec bc
    dec bc
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
    cp $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    xor $ff
    ld [hl], b
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    jr @+$01

    inc hl
    rst $38
    rst $20
    rst $38
    pop hl
    rst $38
    and a
    rst $18
    nop
    rst $38
    ld [$30ff], sp
    rst $08
    nop
    rst $38
    db $10
    rst $28
    add b
    rst $38
    ld b, b
    cp a
    db $10
    rst $28
    ld b, $f9
    rlca
    ld hl, sp-$4d
    ld c, h
    and e
    ld e, h
    cp a
    ld b, b
    rst $38
    nop
    cp a
    ld b, b
    cp a
    ld b, b
    rst $38
    nop
    ld l, d
    sub l
    ld a, b
    add a
    db $e3
    sbc h
    dec e
    ld [c], a
    ld sp, hl
    ld b, $05
    ld a, [$fe01]
    jr nz, @-$1f

    ld [hl], b
    adc a
    db $10
    rst $28
    sub b
    ld l, a
    ld sp, $f1ce
    ld c, $7f
    add b
    cp a
    ld b, b
    rst $30
    ld [$00ff], sp
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop

jr_06e_6c12:
    rst $18
    jr nz, jr_06e_6c12

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, b
    rlca
    nop
    ld a, a
    db $db
    inc h
    add b
    ld a, $c3
    inc a
    rst $00
    jr c, @+$21

    ldh [$3f], a
    ret nz

    ccf
    ret nz

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
    ei
    nop
    ld sp, hl
    nop
    ei
    nop
    ld c, [hl]
    add c
    cp [hl]
    ld bc, $05ea
    db $fd
    ld [bc], a
    reti


    ld b, $b5
    ld a, [bc]
    rst $30
    ld [$00bf], sp
    rst $18
    nop
    jp c, $b305

    inc c
    scf
    ld [$00ff], sp
    rst $30
    ld [$02bd], sp
    sbc a
    nop
    db $ec
    inc bc
    cp a
    nop
    ld a, a
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    db $eb
    inc d
    rlca
    ld hl, sp+$7a
    add h
    inc [hl]
    ld [$7884], sp
    ld c, e
    or b
    swap b
    ld d, $e0
    ccf
    ret nz

    ld a, a
    add b
    ld a, $80
    ld a, l
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor $ff
    db $e4
    rst $38
    db $fc
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld a, [$d1ff]
    rst $38
    ld [hl+], a
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
    rlca
    rst $38
    inc e
    rst $38
    ld [hl], b
    rst $38
    ldh [rIE], a
    add b
    rst $38
    add b
    ld a, a
    ld c, b
    rst $30
    inc e
    db $e3
    rrca
    ldh a, [$0d]
    ld a, [c]
    dec bc
    db $f4
    ld c, e
    or h
    cpl
    ret nc

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
    add l
    ld a, d
    dec bc
    db $f4
    push de
    ld a, [hl+]
    db $e3
    inc e
    ld l, e
    sub h
    di
    inc c
    cp a
    ld b, b
    sbc $21
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    sbc a
    ld h, b
    db $fd
    ld [bc], a
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
    ei
    nop
    rst $38
    nop
    rst $20
    nop
    db $eb
    nop
    rst $28
    nop
    cp $00
    db $dd
    nop
    reti


    nop
    ld hl, sp+$00
    db $ec
    inc bc
    cp b
    rlca
    and h
    ld e, e
    inc c
    di
    inc e
    db $e3
    ld a, [hl]
    add e
    cp [hl]
    inc bc
    ld a, a
    inc bc
    ld a, a
    inc bc
    cp $01
    rst $30
    nop
    db $fd
    nop
    di
    nop
    rst $38
    nop
    rst $30
    ld [$708f], sp
    add b
    ld a, a
    pop bc
    ld a, $c0
    ccf
    add c
    ld a, [hl]
    and e
    ld e, h
    add e
    ld a, h
    ld hl, sp+$07
    rst $38
    nop
    ld [hl], a
    adc b
    rst $30
    ld [$847b], sp
    swap h
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
    rst $18
    jr nz, @+$61

    and b
    rst $38
    nop
    rst $38
    nop
    cp $01
    ret c

    daa
    inc bc
    db $fc
    dec c
    ld a, [c]
    adc b
    ld [hl], a
    ld h, h
    sbc e
    nop
    rst $38
    ld bc, $01fe
    cp $87
    ld a, b
    cp c
    ld b, b
    xor a
    nop
    jr nc, jr_06e_6d82

jr_06e_6d82:
    ret c

    nop
    ldh a, [rP1]
    pop bc
    nop
    push bc
    nop
    xor b
    nop
    add b
    nop
    ld [hl+], a
    nop
    rst $38
    rst $38
    cp $ff
    add a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    cp d
    rst $38
    jr c, @+$01

    jr nc, @+$01

    inc hl
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    rst $20
    rst $38
    xor $f1
    ret nz

    rst $38
    ld b, e
    rst $38
    ret


    rst $38
    ld bc, $01ff
    rst $38
    ld [bc], a
    rst $38
    rra
    rst $38

jr_06e_6dba:
    ld a, a
    rst $38
    jr c, jr_06e_6dba

    db $10
    ldh a, [rIE]
    ldh [$fc], a
    ldh [$fd], a
    ldh [$d4], a
    ldh [$39], a
    ldh [$34], a
    ldh [$f8], a
    ldh [$d9], a
    ldh [$dd], a
    ldh [$fd], a
    ldh [$8d], a
    ldh a, [$0d]
    ldh a, [$0d]
    ldh a, [$0b]
    ldh a, [$0b]
    ldh a, [$0b]
    ldh a, [$29]
    ldh a, [$5d]
    db $f4
    ld a, c
    ldh a, [$5d]
    db $f4

jr_06e_6de8:
    ld e, h
    db $f4
    jr @-$0e

    sbc b
    ldh a, [$38]
    ret nc

    ld e, $f8
    inc b
    ld hl, sp+$04
    ld hl, sp+$14
    ld hl, sp+$14
    ld hl, sp+$24
    ld hl, sp+$64
    ld hl, sp+$64
    ld hl, sp+$67
    ld hl, sp+$6f
    ldh a, [$5f]
    ldh [$5e], a
    ldh [rNR34], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$31], a
    ret nz

    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, c
    add b
    ld b, c
    add b
    pop bc
    add b
    jp nz, Jump_000_0080

    ret nz

    nop
    ret nz

    nop
    ret nz

    jr nz, jr_06e_6de8

    rlca
    ldh [$fb], a
    db $e4
    ld a, e
    add h
    ld b, [hl]
    ld sp, hl
    ld a, [c]
    rrca
    ld l, e
    inc e
    and b
    ld a, b
    add sp, $70
    ld l, b
    ldh a, [$e0]
    ld [hl], b
    ld h, l
    di
    ld l, e
    db $f4
    ld h, b
    ldh a, [rSVBK]
    ldh a, [$60]
    ldh a, [rTMA]
    pop af
    daa
    db $db
    rst $18
    inc hl
    cp e
    ld b, a
    ei
    rlca
    cp a
    ld b, e
    ld e, a
    and e
    sub a
    ld l, e
    or l
    ld c, e
    push af
    dec bc
    push af
    dec bc
    pop de
    cpl
    and h
    ld e, e
    xor h
    ld d, e
    and h
    ld e, e
    sbc b
    ld h, a
    ret c

    daa
    jp nc, Jump_000_0e2d

    pop af
    inc de
    db $ec
    ld d, e
    xor h
    ld b, d
    cp l
    jp nc, $102d

    rst $28
    cp b
    ld b, a
    db $eb
    inc b
    call z, $c803
    rlca
    ld b, h
    inc bc
    ld hl, $0306
    inc b
    ld e, a
    nop
    ld c, a
    nop
    dec c
    nop
    ld c, l
    nop
    xor l
    nop
    jr z, jr_06e_6e90

jr_06e_6e90:
    ld a, [c]
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld a, l
    rst $38
    and b
    rst $38
    ccf
    rst $38
    jr @+$01

    db $10
    rst $38
    ld [hl], b
    rst $38
    ret z

    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    ld b, l
    ei

Call_06e_6eb8:
    ld e, h
    db $fc
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    rlca
    ld bc, $1f1f
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
    cp a
    ccf
    sbc a
    rra
    cp a
    rra
    cp $1f
    cp $1f
    rst $38
    rra
    ld a, a
    rrca
    ld e, a
    rrca
    rst $38
    rrca
    rst $38
    rrca
    dec a
    rrca
    rrca
    rrca
    rlca
    rlca
    dec d
    rlca
    ld b, l
    rlca
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld [de], a
    inc bc
    dec de
    inc bc
    xor e
    inc bc
    inc bc
    nop
    rst $38

Call_06e_6eff:
    nop
    ld [bc], a
    db $fd
    rrca
    ldh a, [$1f]
    ldh [rIE], a
    nop
    ei
    inc b
    rra
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
    ld a, a
    add b
    db $fc
    inc bc
    ret nz

    ccf
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
    ld a, [c]
    dec c
    nop
    rst $38
    ld e, $f8
    ldh a, [$e0]
    ret nz

    nop
    add b
    nop
    ld bc, $1300
    rrca
    ld a, d
    rst $38
    rst $28
    ldh a, [$67]
    add b
    nop
    nop
    rrca
    inc bc
    rst $18
    ccf
    rst $38
    ret nz

jr_06e_6f48:
    rst $38
    ret nz

    cp $c0
    ld hl, sp-$40
    ldh a, [$c0]
    ldh a, [$c0]
    ldh a, [$c0]
    ldh [$c0], a
    add sp, -$40
    ldh a, [$e8]
    ldh a, [$e8]
    ld hl, sp-$20
    jr nc, jr_06e_6f48

    ld l, [hl]
    ld hl, sp+$6e
    ld hl, sp+$6c
    ld hl, sp-$1c
    ld hl, sp+$68
    ld hl, sp-$18
    ld hl, sp-$60
    ld hl, sp+$20
    ld hl, sp+$20
    ld hl, sp+$28
    ld hl, sp+$20
    ld hl, sp+$20
    ld hl, sp+$20
    ld hl, sp+$20
    ld hl, sp+$10
    ld hl, sp+$10
    ld hl, sp+$10
    ld hl, sp+$10
    ld hl, sp+$10
    db $fc
    db $10
    db $fc
    db $10
    cp $10
    cp $10
    cp $10
    cp $bf
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
    ccf
    rst $38
    rst $28
    rst $38
    db $f4
    rst $38
    ret nz

    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
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
    db $fd
    ldh a, [$f8]
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    ld bc, $1f00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ldh a, [$0e]
    ldh a, [$3c]
    ret nz

    db $fc
    nop
    ld a, [c]
    nop
    push af
    nop
    db $ec
    nop
    ei
    nop
    rrca
    ldh a, [$82]
    db $fd
    ld [bc], a
    db $fd
    inc b
    ei
    inc b
    ei
    dec b
    ei
    inc b
    ei
    ld bc, $02ef
    rst $38
    ld a, [bc]
    rst $20
    inc bc
    rst $38
    nop
    rst $38
    ld b, $ff
    nop
    rst $38
    ldh a, [rIF]
    adc d
    rlca
    ld a, [de]
    rlca
    dec de
    rlca
    db $10
    rlca
    ld b, c
    scf
    ld c, $33
    dec l
    ld [de], a
    dec [hl]
    ld a, [de]
    ccf
    ld [de], a
    ld hl, $2f12
    ld [de], a
    ld l, $13
    ld a, [hl-]
    inc bc
    add hl, sp
    inc bc
    ld sp, $f10b
    dec bc
    ld [c], a
    add hl, de
    ld [c], a
    add hl, de
    add [hl]
    ld a, c
    rlca
    ld sp, hl
    ld [$92fd], sp
    db $fd
    rst $30
    db $fd
    call nc, Call_000_02e1
    dec b
    ld b, $01
    rlca
    nop
    cpl
    inc e
    ld a, e
    db $fc
    adc a
    ldh a, [rIE]
    nop
    cp $01
    rst $38
    rrca
    cp a
    ld a, l
    ei
    db $e4
    ld sp, hl
    inc b
    ld sp, hl
    inc b
    db $fc
    ld [bc], a
    dec e
    ld [bc], a
    dec b
    ld [bc], a
    inc b
    ld [bc], a
    call Call_06e_5301
    ld bc, $01ab
    sub e
    ld bc, $0185
    add b
    nop
    ld b, b
    nop
    nop
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
    rst $38

jr_06e_706f:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld [hl], c
    rst $38
    jp hl


    rst $38
    pop bc
    rst $38
    add c
    rst $38
    and c
    rst $38
    db $e3
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
    inc c
    di
    jr nc, jr_06e_706f

    nop
    db $fc
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    inc bc
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
    inc bc
    db $fc
    ld e, $e1
    cp $01
    db $fd
    ld [bc], a
    jr c, jr_06e_70cb

    nop
    rrca
    dec a
    ld [bc], a
    db $d3
    inc c
    cp h

jr_06e_70cb:
    inc bc
    ld [$7315], a
    inc c
    inc l
    rst $38
    dec l
    rst $38
    ld c, h
    rst $38
    or h
    cp $3b
    db $fc
    rst $00

jr_06e_70db:
    db $fc
    dec de
    db $fc
    add c
    cp $d7
    jr nz, jr_06e_70db

    ld bc, $01fa
    xor h
    ld b, e
    adc h
    ld b, e
    pop bc
    ld b, $89
    ld b, $88
    rlca
    dec b
    rst $38
    ld c, $ff
    add hl, bc
    rst $38
    add hl, bc
    cp $11
    cp $13
    db $fc
    inc de

Jump_06e_70fd:
    db $fc
    inc de
    db $fc
    rla
    db $fc
    rla
    db $fc
    rra
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp-$69
    ld hl, sp-$61
    ld hl, sp-$61
    ld hl, sp+$17
    ld hl, sp+$17
    ld hl, sp+$1e
    ld hl, sp+$16
    ld hl, sp+$17
    ld hl, sp-$79
    ld hl, sp-$7a
    ld hl, sp-$39
    ld hl, sp-$79
    ld hl, sp-$39
    db $fc
    push bc
    db $fc
    ld [c], a
    db $fc
    ld [c], a
    db $fc
    jp $83fc


    cp $83
    cp $81
    cp $01
    cp $01
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_06e_71c1

    nop
    ccf
    db $10
    rst $38
    ld [$003f], sp
    ccf
    add h
    cp a
    add b
    cp a
    add d
    cp a
    add c
    xor a
    add b
    add a
    ld h, b
    ld b, c
    ld h, b
    ld b, e
    ld b, b
    ld b, d
    ld b, c
    ld b, b
    add hl, hl
    jr nz, jr_06e_717f

    ld hl, $2030
    jr nc, jr_06e_7184

    jr nc, jr_06e_7186

    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc e
    db $10
    dec e
    db $10
    ld e, $18
    ld c, $18
    rrca
    jr jr_06e_7186

    jr jr_06e_7180

    inc e
    rlca
    inc e
    ld b, $1d
    rlca

jr_06e_717f:
    inc e

jr_06e_7180:
    add e
    rst $38
    add e
    rst $38

jr_06e_7184:
    add e
    rst $38

jr_06e_7186:
    add c
    rst $38
    add b
    rst $38
    nop
    rst $38
    add l
    rst $38
    xor $93
    add c
    rst $38
    add [hl]
    rst $38
    ld [bc], a
    rst $38

jr_06e_7196:
    inc bc
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    jr jr_06e_7196

    nop
    ret nz

    jp $9c00


    nop
    di
    inc bc
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    ld a, d
    add l
    db $fc
    inc bc
    ld e, b
    and a
    sub b
    ld l, a
    rst $08

jr_06e_71c1:
    rst $38
    rst $00
    cp $0e
    db $fc
    inc d
    ld hl, sp+$18
    pop af
    or c
    db $e3
    ld b, a
    db $e3
    rlca
    rst $00
    add c
    rrca
    inc de
    rrca
    inc de
    rrca
    rla
    cpl
    ld [hl], a
    rrca
    daa
    ld e, a
    adc a
    ld a, a
    rst $38
    rra
    cp a
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    cp a
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

jr_06e_7204:
    rrca
    rst $38

jr_06e_7206:
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
    cp $07
    db $fc
    rlca
    db $fc
    rlca
    cp $03
    cp $03
    rst $38
    inc bc
    rst $30
    inc bc
    ld a, [c]
    inc bc
    ld bc, $01ff
    rst $38
    dec c
    di
    inc de
    db $ed

jr_06e_7228:
    add l
    ld a, e
    rst $08
    ld sp, $b946
    ld b, [hl]
    cp c
    ld sp, $7900
    nop
    jr nc, jr_06e_7236

jr_06e_7236:
    nop
    nop
    or b
    nop
    sub b
    nop
    sub b
    add b
    ld d, b
    add b
    ld d, b
    add b
    jr nz, jr_06e_7204

    jr nz, jr_06e_7206

    jr jr_06e_7228

    ld [$08f0], sp
    ldh a, [rSB]
    ld hl, sp+$04
    ld hl, sp+$02
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
    ld b, h
    cp e
    xor [hl]
    ld de, $00ef
    ld a, a
    nop
    dec a
    nop
    rra
    nop
    dec b
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld h, b
    nop
    ld h, b
    nop
    sbc b
    nop
    ldh [rP1], a
    ld a, h
    add b
    rst $38
    rst $38
    pop bc
    rst $38
    rlca
    rst $38
    xor $ff
    add h
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    ld hl, sp-$1c
    add b
    sub b
    nop
    ld a, a
    nop
    rst $38
    rlca
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
    cp $ff
    rst $20
    rst $38
    rrca
    rst $38
    adc $ff
    rst $38
    db $fc
    db $fc
    pop af
    rst $30
    db $e3
    xor a
    rst $00
    ld bc, $030f
    rra
    ld b, a
    ccf
    adc a
    ld a, a
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
    rst $38
    rst $38
    rst $38
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
    db $fc
    ei
    db $fc
    db $fd
    cp $ff
    cp $f7
    rst $38
    rst $38
    di
    db $dd
    db $e3
    db $fc
    jp $c3dc


    ret c

    rst $20
    and $f9
    rst $38
    ld hl, sp-$24
    rst $38
    xor a
    rst $18
    sbc e
    rst $20
    db $f4
    dec bc
    db $fc
    inc bc
    ld a, b
    add a
    sub e
    ldh [$f2], a
    db $fc
    ld a, $ff
    ccf
    rst $08
    db $10
    rst $28
    pop hl
    ld e, $fb
    inc b
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    cp $ff
    rrca
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
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    ld a, a
    rst $00
    ld a, a
    cp $7f
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld h, b
    ccf
    ld h, b
    ccf
    ld h, b

jr_06e_7345:
    ccf
    ld h, b
    ccf
    daa
    ccf
    jr c, jr_06e_738b

    jr nz, jr_06e_738d

    jr nc, @+$21

    jr nc, jr_06e_7371

    db $10
    rra
    jr nc, @+$41

    db $10
    sbc a
    add hl, de
    rst $08
    ld e, $ef
    inc e
    rst $28
    ld [$c7ff], sp
    inc b
    db $e3
    ld [bc], a
    pop hl
    ld bc, $0070
    jr nc, jr_06e_736a

jr_06e_736a:
    jr jr_06e_736c

jr_06e_736c:
    inc c
    nop
    ld b, $00
    nop

jr_06e_7371:
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
    nop
    or b
    rst $38
    ld a, h
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_06e_738b:
    rst $38
    nop

jr_06e_738d:
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    cp $fe
    ldh a, [$f0]
    add b
    add b
    add b
    nop
    nop
    nop
    rst $20
    rlca
    rst $38
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
    rlca
    ld hl, sp+$3f
    ret nz

    db $fc
    jr nz, jr_06e_7345

    pop hl
    ret z

    rlca
    jr nz, jr_06e_73d7

    ld bc, $077f
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
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    ei
    rst $38
    pop af

jr_06e_73d7:
    rst $38
    ret nz

    rst $38
    ld hl, sp-$39
    call c, $c8e3
    db $e3
    ld [$3df1], a
    ldh a, [rNR33]
    ld hl, sp+$1f
    db $fc
    xor h
    ld e, a
    ld h, [hl]
    rra
    db $e3
    rra
    pop af
    rrca
    cp a
    pop bc
    cp $c1
    jp hl


    or $74
    ei
    ret c

    ccf
    inc l
    rst $18
    cp a
    ld b, a
    ld [hl], e
    rrca
    ld [hl], c
    adc a
    pop af
    adc $e0
    rst $38
    jr c, @+$01

    adc [hl]
    ld a, a
    ld h, a
    sbc a
    cp c
    ld b, a
    and $19
    call $f3f2
    db $fc
    inc a
    rst $38
    rst $10
    cpl
    db $d3
    dec l
    ld [hl], b
    rrca
    ld a, [de]
    push hl
    ldh [rIE], a
    ld a, a
    rst $38
    add hl, bc
    rst $30
    xor $11
    add $39
    daa
    ret c

    rst $38
    rst $38
    rst $38
    rst $38
    ld d, d
    xor l
    ld l, a
    sub b
    ld h, c
    nop
    ld de, $3f0f
    rst $38
    pop af
    cp $9e
    ld h, b
    ret z

    nop
    add b
    ld bc, $0701
    ld l, h
    rra
    or [hl]
    ld a, b
    ret z

    ldh a, [rSVBK]
    add b
    and c
    nop
    dec bc
    ld bc, $0797
    adc l
    ld e, $d8
    inc a
    add sp, $70
    ret nc

    ldh [$c1], a
    add b
    ld [c], a
    ld bc, $01e7
    rst $30
    inc bc
    rst $38
    ld b, $fd
    ld c, $fa
    inc e
    call nc, Call_06e_6eb8
    ld [hl], b
    inc d
    nop
    ld bc, $0200
    ld bc, $0195
    ld e, $c0
    rra
    ld h, b
    rrca
    jr nc, jr_06e_747c

    inc e
    nop
    rlca

jr_06e_747c:
    nop
    inc bc
    nop
    nop
    db $10
    rst $38
    jr @+$01

    dec de
    db $fc
    jr @+$01

    ld [$08ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    ld e, $1f
    inc e
    rra
    db $10
    rra
    ld [hl], b
    ld a, a
    ldh a, [rIE]
    ldh a, [rIE]
    ld a, [c]
    db $fd
    ldh a, [rIE]
    ldh a, [rIE]
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    add b
    rst $38
    ccf
    ret nz

    cp [hl]
    add hl, de
    jp $0f3f


    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    cp $f7
    ld hl, sp-$0c
    ei
    pop af
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    rst $28
    db $fc
    adc l
    cp $c6
    inc a
    rst $00
    ld a, $e6
    rra
    ld [c], a

Jump_06e_74d3:
    rra
    db $e3
    rra
    di
    adc a
    or c
    rst $08
    pop de
    rst $28
    ld e, c
    rst $20
    ld l, b
    rst $30
    xor d
    ld [hl], l
    ld a, a
    or b
    ret nc

    ccf
    ld a, $d9
    ld a, [de]
    db $fd
    sbc $2d
    ld d, $ef
    add [hl]
    rst $38
    set 6, a
    pop bc
    rst $38
    db $eb
    ld [hl], l
    or a
    ld a, b
    ret c

    ccf
    ld [$0aff], sp
    db $fd
    sub b
    rst $28
    ret c

    rst $20
    ld h, b
    rst $38
    ldh a, [$3f]
    db $10
    rst $38
    and b
    ld e, a
    inc b
    ei
    ldh [rIE], a
    ldh [rIE], a
    ld hl, $81ff
    ld a, a
    ret z

    ccf
    ret


    rst $38
    db $e3
    rst $38
    daa
    rst $38
    adc a
    ld a, a
    rst $28
    rra
    rst $08
    rst $38
    rst $28
    rst $38
    rra
    rst $38
    rst $18
    rra
    ld a, a
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    adc a
    add a
    rrca

jr_06e_7532:
    add a
    ld a, a
    rst $30
    rst $38
    ld [hl], e
    add a
    add a
    inc bc
    dec bc
    rlca
    ld c, c
    ccf
    ld l, b
    pop af
    and c
    pop bc
    ld b, a
    add e
    ld b, $0f
    ld a, [hl+]
    dec e
    ld [hl], e
    add hl, sp
    ld d, e
    db $e3
    add a
    jp $078b


    rra
    rlca
    dec hl
    inc e
    ld d, h
    add hl, sp
    xor [hl]
    ld [hl], c
    ld d, l
    ldh [rNR41], a
    ret nz

    nop
    ldh [$f0], a
    nop
    jr z, jr_06e_7532

    dec de
    ret nz

    adc d
    ld d, b
    ld b, b
    inc e
    or $09
    db $f4
    rrca
    pop af
    ld c, $01
    cp $05
    cp $b5
    ld c, [hl]
    and l
    ld a, [de]
    call z, $f413
    inc bc
    db $fc

jr_06e_757b:
    nop

jr_06e_757c:
    ccf
    ret nz

jr_06e_757e:
    rlca
    ld hl, sp+$20
    rst $18

jr_06e_7582:
    ldh a, [rIE]
    adc b
    ld [hl], a
    db $10
    rst $38
    ld l, b
    rst $38
    jr z, @+$01

    jr c, @+$01

    add b
    rst $38
    nop
    rst $38
    ld b, c
    cp a
    inc h

jr_06e_7595:
    db $db
    ret


    ld [hl], $df
    jr nz, @-$27

    jr nz, jr_06e_757c

    jr nz, jr_06e_757e

    jr nz, jr_06e_757b

    jr nz, jr_06e_7582

    jr nz, jr_06e_7595

    nop
    ldh [rNR10], a
    rst $30
    nop
    rst $38
    nop
    ld l, a
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
    rst $38
    rst $38
    rst $20
    rst $38
    and b
    ld e, a
    add [hl]
    ld a, a
    nop
    rst $38
    ld b, b
    rst $38
    add b
    ld a, a
    ld [bc], a
    db $fd
    rst $30
    ld [$00fd], sp
    rst $38
    nop
    db $db
    nop
    ei
    nop
    ret


    nop
    sbc a
    ld b, b
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    add b
    cp a
    ret nz

    xor a
    ret nz

    ei
    ret nz

    rst $30
    ret nz

    ld [hl], l
    ret nz

    ei
    ld h, h
    ld [hl], b
    rst $28
    jr nz, @+$01

    jr nz, @+$01

    inc b
    ei
    add h
    ld a, e
    ld bc, $01fe
    cp $18
    rst $20
    ld b, d
    cp l
    ld h, b
    sbc a
    add b
    ld a, a
    ld d, c
    xor [hl]
    ld b, $f9
    nop
    rst $38
    ld de, $00ef
    rst $38
    jr nc, @+$01

    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $18
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
    cp $f8
    ldh a, [$f8]
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$07
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fc
    cp $fe
    cp $fe
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    db $fd
    db $fd
    rst $38
    cp a
    rst $38
    db $fc
    rst $38
    cp $f0
    ret nc

    pop af
    pop af
    ld [hl], e
    pop hl
    ld a, e
    db $eb
    add hl, sp
    pop af
    dec [hl]
    pop af
    dec [hl]
    push af
    ld e, $f6
    ld e, $fe
    ld e, $fa
    ld c, $f8
    rrca
    cp $0f
    db $fd
    dec l
    db $fd
    ccf
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rra
    cp $1b
    cp $2f
    dec de
    ld e, a
    dec de
    sbc e
    rrca
    inc bc
    dec e
    ccf
    ld bc, $052b
    ld h, $09
    inc c
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$1f
    ld hl, sp-$58
    rst $38
    ld [$08ff], sp
    rst $38
    xor b
    ld e, a
    add sp, $1f
    add sp, $3f
    ld a, b
    ccf
    cp b
    ld a, a
    add hl, sp
    cp $1f
    ld hl, sp-$21
    jr nc, jr_06e_76b8

    cp $10
    rst $38
    jr nc, @+$01

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

jr_06e_76b8:
    ei
    rst $38
    inc sp
    rst $18
    inc de
    rst $38
    dec hl
    rst $10
    ld bc, $49ff
    or a
    db $10
    rst $28
    inc e
    db $e3
    db $e4
    dec de
    rst $18
    nop
    ld l, $00
    adc h
    ld [bc], a
    rst $20
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    cp l
    nop
    rst $38
    nop
    ld d, [hl]
    nop
    rst $38
    nop
    ld [hl], c
    nop
    cp h
    inc bc
    jp nz, Jump_000_003f

    rst $38
    nop
    rst $38
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    ld l, d
    sub l
    ld a, h
    add e
    ldh [$1f], a
    nop
    rst $38
    adc b
    ld [hl], a
    ld c, b
    or a
    ldh a, [rIF]
    ld hl, sp+$07
    ldh [$1f], a
    add b
    ld a, a
    ld hl, $03ff
    rst $38
    ld b, e
    rst $38
    ld bc, $0bff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ret nc

    ldh [rSB], a
    nop
    rrca
    rlca
    ccf
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, l
    cp $fb
    ld [hl], a
    ld a, a
    ld a, a
    ccf
    ld a, a
    ld a, a
    ccf
    ld a, l
    ld a, $4f

jr_06e_773d:
    jr nc, jr_06e_773d

    ld bc, $060e
    cp [hl]
    cp [hl]
    ld [c], a
    cp $c3
    rst $20
    pop bc
    rst $28
    ld b, c
    ld a, e
    ld h, c
    ld [hl], e
    db $e3
    rst $38
    cp $ff
    db $fc
    db $e3
    xor $71
    ld a, [hl]
    pop af
    ld a, l
    ldh a, [rPCM34]
    ld hl, sp-$42
    ld hl, sp-$52
    ld hl, sp+$6c
    cp b
    adc $3c
    db $e4
    inc a
    add $bc
    and [hl]
    cp $a6
    cp $cf
    cp [hl]
    rst $30
    adc a
    or e
    rst $08
    ld a, e
    rst $00
    ld a, a
    rst $20
    rst $38
    rst $20
    rst $28
    rst $38
    cp a
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    ldh a, [rSC]
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
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
    ld bc, $1efe
    pop hl
    db $ec
    rra
    ret z

    scf
    inc de
    nop
    cp e
    ld b, h
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld hl, sp-$01
    db $fc
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
    rst $38
    rst $38
    ld sp, hl
    rst $38
    or $ff
    ldh a, [rIE]
    ldh a, [rIE]
    ld h, [hl]
    rst $38
    rst $28
    ld a, a
    rst $38
    ld a, a
    cp [hl]
    ld a, a
    cp [hl]
    ld a, a
    ld a, $7f
    ld e, [hl]
    ccf
    cp a
    rra
    cp a
    rra
    sbc a
    rra
    ld a, a
    sbc a
    cp a
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

jr_06e_7809:
    rst $38
    db $f4
    ld hl, sp-$80
    ret nz

    ld bc, $2f03
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
    db $fd
    rst $38
    cp a
    rst $08
    cp a

Call_06e_7821:
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    di
    db $fc
    db $db
    db $e4
    adc a
    inc bc
    db $fc
    rra
    call c, $fee3
    ld bc, $07f8
    ldh a, [rIF]
    ldh a, [rIF]
    jp nz, Jump_000_083d

    rst $30
    nop
    rst $38
    ret z

    scf
    jr c, jr_06e_7809

    ld a, [c]
    dec c
    ld b, b
    cp a
    ret nz

    ccf
    ret nz

    ccf
    and b
    ld e, a
    nop
    rst $38
    add b
    ld a, a
    ret z

    scf
    add b
    ld a, a
    nop
    ld a, a
    ld b, b
    ccf
    jr nz, jr_06e_7879

    rla
    ld [$0000], sp
    nop
    nop
    nop
    nop
    add b
    nop
    cp a
    add b
    rst $38
    ret nz

    adc $81
    ld h, a
    rra
    ld a, [hl]
    rst $38
    cp $fd
    rst $38
    ldh a, [rIE]
    nop
    adc a
    nop
    inc hl
    nop
    rst $08

jr_06e_7879:
    rrca
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
    ld bc, $fcfe
    inc bc
    nop
    rst $38
    ld [bc], a
    db $fd
    or b
    rst $38
    ld a, [$e105]
    nop
    inc bc
    db $fc
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    rra
    rst $38
    rst $30
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
    ld a, a
    rst $38
    ld b, a
    rst $38
    ld [hl], e
    rst $38
    ld l, a
    rst $38
    and h
    rst $38
    ld b, d
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld d, b
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
    cp $e8
    ldh a, [$c1]
    nop
    dec bc
    rlca
    ld a, a
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    cp a
    rst $18
    ccf
    rst $38
    rst $38
    cp a
    rst $30
    dec de
    rst $30
    cpl
    di
    inc bc
    ei
    rlca
    ld sp, hl
    add hl, bc
    db $fd
    ld a, [bc]
    db $fd
    rlca
    db $fc
    ld b, b
    cp [hl]
    ld bc, $01fe
    rst $38
    add hl, bc
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
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    inc c
    ldh a, [$60]
    add b
    nop
    nop

jr_06e_791c:
    inc bc
    ld bc, $0e11
    ld e, a
    jr nz, jr_06e_7961

    ld bc, $0f97
    rst $38
    ccf
    rst $30
    rst $38
    cp a
    rst $08
    rst $38
    ccf
    rst $38
    rst $38
    nop
    nop
    nop

Call_06e_7933:
    nop
    nop
    rrca
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    nop

Jump_06e_793d:
    rst $38
    nop
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
    inc bc
    db $fc
    ld a, h
    add e
    inc bc
    db $fc
    ld bc, $02fe
    db $fd
    and $1f
    sbc $01
    jr nc, jr_06e_791c

    ld [bc], a
    db $fc
    nop
    rst $38
    nop

jr_06e_7961:
    rst $38
    add b
    rst $38
    ldh a, [rIE]
    cp $ff
    rst $00
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
    cp a
    rst $38
    rst $38
    rst $38
    ld [$aeff], a
    rst $38
    ld b, l
    rst $38
    and c
    rst $38
    rlca
    rst $38
    nop
    rst $38
    add b
    rst $38
    push hl
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
    rst $18
    rst $20
    inc bc
    rlca
    rlca
    inc bc
    db $fd
    ld h, e
    rst $30
    ld sp, hl
    ld a, [hl]
    cp c
    ei
    ld a, h
    ld a, d
    db $fc
    cp $fc
    db $fd
    cp $ff
    cp $ff
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
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    ei
    ei
    rst $38
    rst $38
    db $fd
    db $fd
    rst $38
    cp $7f
    ld a, [hl]
    ld a, a
    ccf
    ld a, a
    ccf
    cp a
    rra
    cp a

jr_06e_79e6:
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    rst $18
    rrca
    rst $38
    xor a
    rst $38
    jr z, jr_06e_79e6

    ld h, b
    ret nz

    nop
    nop
    ld bc, $0700
    inc bc
    ld [hl], a
    rrca
    rst $30
    adc a
    cpl
    rra
    ld sp, hl
    ld a, c
    ld hl, sp-$07
    ldh a, [$f8]
    ld hl, sp-$10
    ld hl, sp-$10
    ld hl, sp-$08
    ld hl, sp-$08
    db $fd
    rst $38
    dec de
    jr jr_06e_7a2f

    db $fc
    ld e, $fe
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
    rst $38
    inc bc
    ccf
    pop bc
    rst $38
    nop
    rrca

jr_06e_7a2f:
    ldh a, [rIE]
    nop
    db $e3
    inc e
    rra
    ldh [rVBK], a
    or b
    inc bc
    db $fc
    pop bc
    ld a, $39
    ld b, $44
    add e
    cpl
    ret nc

    dec b
    ld a, [$ff00]
    nop
    rst $38
    cp b
    rst $38
    cp $ff
    jp $feff


    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    jp $9fff


    rst $38
    adc a
    rst $38
    and a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ccf
    ccf
    ccf
    ccf
    rra
    sbc a
    rra
    adc a
    sbc a
    rst $18
    adc a
    rst $00
    rst $08
    rst $28
    rst $00
    di
    rst $20
    rst $20
    di
    ld sp, hl
    di
    pop af
    ld sp, hl
    ld sp, hl
    ld hl, sp-$04
    ld hl, sp-$04
    db $fc
    cp $fc
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
    cp $fc
    ldh a, [$e0]
    add b
    nop
    ld [bc], a
    ld bc, $0f17
    ccf
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $30
    ei
    pop af
    pop af
    ldh a, [$f8]
    ld hl, sp-$08
    db $fc
    ld hl, sp-$08
    ldh a, [$30]
    ret nz

    add hl, bc
    jr nz, jr_06e_7aeb

    ld [$108c], sp
    add a
    sub h
    ld h, $7f
    inc sp
    ccf
    ld bc, $001f
    rlca
    add b
    add e
    ret nz

    pop bc
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_06e_7aeb:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    cp a
    rst $38
    rra
    ld a, e
    adc a
    cp $07
    rst $38
    inc bc
    rst $18

Jump_06e_7afd:
    inc hl
    rst $38
    ld bc, $00ff
    rst $18
    jr nz, jr_06e_7b7e

    add [hl]
    ld d, d
    xor l
    ld b, $f9
    nop
    rst $38
    pop bc
    cp $00
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
    rst $38
    rst $08
    rst $38
    rst $00
    rst $38
    pop hl
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ccf
    ld a, a
    ccf
    ccf
    rra
    ccf
    sbc a
    rra
    adc a
    sbc a
    rst $08
    adc a
    rst $00
    rst $08
    rst $00
    rst $00
    add e
    rst $00
    jp $8183


    add e
    inc bc
    ld bc, $070f
    ld a, a
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
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ld a, h
    ccf
    add hl, sp
    ld a, $fb
    ld a, h
    rst $38
    db $fc
    ei
    db $fc
    ld a, a
    ldh [rIE], a
    inc bc
    rrca
    rst $38
    ld b, $ff
    add e
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld h, d
    rst $38

jr_06e_7b7e:
    ld [hl+], a
    ld a, l
    db $10
    ccf
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    add b
    add c
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    rst $38
    rst $38
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
    rlca
    ccf
    jp Jump_06e_619f


    rra
    ldh [$8f], a
    ldh a, [$c1]
    cp $c1
    cp $f0
    rst $38
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    add h
    rst $38
    add $ff
    jp nz, $e2ff

    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
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
    db $fc
    rst $38
    ldh [rIE], a
    xor a
    nop
    rra
    ld bc, $032b
    ld d, $07
    inc a
    rrca
    ld [hl], b
    ccf
    ret nz

    rst $38
    nop
    rst $38
    jp Jump_000_06ff


    rst $38
    ld a, $ff
    call nz, Call_06e_40ff
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    db $10
    rst $28
    sbc b
    rst $30
    ld b, b
    rst $38
    ld c, b
    rst $38
    ld d, $fd
    ld [de], a
    rst $38
    nop
    rst $38
    ccf
    ccf
    dec e
    ld a, [de]
    ld [$040f], sp
    rlca
    ld [bc], a
    inc bc
    nop
    ld bc, $8080
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    db $fc
    db $fc
    ld a, $fe
    rra
    rst $38
    add a
    rst $38
    db $e3
    rst $38
    ei
    rst $38
    cp $ff
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    ld a, a
    sbc a
    ld a, a
    adc a
    rra
    db $e3
    dec bc
    pop af
    add c
    ei
    push bc
    ei
    pop hl
    cp $f8
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
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
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $10ff
    rst $38
    jr @+$01

    jr @+$01

    nop
    rst $38
    add b
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
    cp $ff
    db $fd
    rst $38
    ld sp, hl
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
    ld hl, sp+$7f
    ldh a, [$7f]
    rst $38
    ldh [rIE], a
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
    pop hl
    rst $38
    db $fd
    rst $38
    pop bc
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
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ret


    rst $38
    dec de
    rst $38
    rra
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    jr nz, jr_06e_7ceb

    nop
    rra
    nop
    rrca
    ld bc, $0306
    nop
    add c
    add b
    call z, $eec0
    db $e4
    rst $30
    di
    ei
    ld sp, hl
    db $fd
    ld sp, hl
    cp $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_06e_7ceb:
    rst $38
    rst $38
    rst $38
    rst $38
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

Call_06e_7cfb:
    ld a, a
    ld a, a
    cp a
    ccf
    rst $18
    rra
    rst $28
    add a
    rst $38
    adc e
    rst $30
    jp $e7fb


    ld sp, hl
    pop af
    db $fc
    ldh a, [$fe]
    ld sp, hl
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
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
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    add e
    rst $38
    jp $c1ff


    rst $38
    pop hl
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    ld sp, hl
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
    rst $30
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld sp, hl
    cp $f1
    cp $e3
    db $fc
    rst $00
    ld hl, sp-$79
    ld hl, sp-$10
    ldh a, [$e0]
    ldh a, [$c0]
    ldh [$80], a
    ret nz

    nop
    add b
    nop
    ld bc, $0300
    nop
    rlca
    rlca
    rrca
    dec c
    rra
    ld d, d
    ccf
    adc [hl]
    ld a, a
    ld a, c
    cp $b6
    db $fc
    inc e
    ldh a, [rNR11]
    ldh [rP1], a
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
    jr jr_06e_7dd3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_06e_7de3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_06e_7df3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_06e_7e03

    ld [hl-], a

jr_06e_7dd3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_06e_7e13

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_06e_7de3:
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

jr_06e_7df3:
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

jr_06e_7e03:
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

jr_06e_7e13:
    ld [hl], d
    ld h, h
    ld [hl], e
    ld d, [hl]
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, d
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ld h, h
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    ld a, d
    adc b
    ld a, d
    adc c
    adc d
    adc e
    adc h
    ld h, h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    ld a, d
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    ld h, h
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

    ld a, d
    push bc
    add $c7
    ret z

    ret


    jp z, $cccb

    call $cfce
    ret nc

    pop de
    jp nc, $d37a

    call nc, $d6d5
    rst $10
    ld d, [hl]
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
    ld a, d
    xor $ef
    ldh a, [$7a]
    pop af
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$fb7a]
    db $fc
    db $fd
    cp $7a
    rst $38
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $56
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, [hl]
    ld d, $17
    jr jr_06e_7ee6

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
    jr z, jr_06e_7f06

    ld a, [hl+]
    dec hl
    inc l
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca

jr_06e_7ee6:
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0707
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0701
    rlca
    rlca
    rlca
    rlca
    ld [bc], a

jr_06e_7f06:
    ld [bc], a
    ld bc, $0101
    ld bc, $0001
    ld [bc], a
    ld bc, $0701
    rlca
    rlca
    ld bc, $0002
    nop
    ld bc, $0101
    inc bc
    ld bc, $0101
    ld bc, $0701
    rlca
    rlca
    ld bc, $0002
    nop
    ld [bc], a
    ld bc, $0301
    ld bc, $0101
    ld bc, $0701
    rlca
    ld bc, $0201
    nop
    nop
    ld [bc], a
    ld bc, $0301
    ld bc, $0101
    ld bc, $0701
    rlca
    ld bc, $0002
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0701
    rlca
    ld bc, $0002
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0001
    ld bc, $0700
    rlca
    ld bc, $0002
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    ld bc, $0700
    rlca
    ld bc, $0002
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0100
    ld bc, $0701
    rlca
    rlca
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0701
    rlca
    rlca
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rlca
    rlca
    rlca
    ld [bc], a
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    rlca
    rlca
    rlca
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0707
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
    ld bc, $0101
    nop
    rlca
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
