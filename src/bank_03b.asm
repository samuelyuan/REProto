SECTION "ROM Bank $03b", ROMX[$4000], BANK[$3b]

    nop
    db $fc
    nop
    cp $00
    cp $00
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld d, b
    rst $38
    nop
    rst $38
    dec h
    jp c, $fa05

    ld b, a
    cp b
    ld d, e
    xor h
    ld d, e
    xor h
    ld [hl+], a
    db $dd
    ld [hl+], a
    db $dd
    ld [de], a
    db $ed
    ld [bc], a
    db $fd
    ld de, $40ee
    cp a
    ld hl, $00de
    rst $38
    ld a, [bc]
    push af
    nop
    rst $38
    ld bc, $00fe
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
    add b
    nop
    ret nz

    nop
    ret nz

    ret nz

    nop
    add b
    ld h, b
    nop
    ldh a, [$08]
    ldh a, [$80]
    ld a, b
    inc b
    ld hl, sp+$02
    db $fc
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$0cf7], sp
    di
    ld a, $c1
    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [$cf], a
    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld de, $0aff
    rst $38
    dec b
    rst $38
    inc de
    rst $38
    xor a
    rst $38
    ld c, a
    rst $38
    rst $08

jr_03b_4090:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld d, a
    rst $38
    or l
    rst $38
    ld b, l
    rst $38
    ld h, $ff
    ld d, d
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

Call_03b_40be:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_03b_40c4:
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

jr_03b_40ce:
    or a
    ld c, b
    db $db
    inc h
    ld a, e
    add h
    push hl
    ld a, [de]
    and $19
    ld [hl], e
    inc c
    ld [hl], e
    inc c
    inc a
    inc bc
    inc [hl]
    dec bc
    sbc a
    ld h, b
    rst $18
    jr nz, @-$5f

    ld h, b
    ld c, a
    or b
    sbc a
    ld h, b
    rst $18
    jr nz, jr_03b_40c4

    jr z, jr_03b_40ce

    jr nz, jr_03b_4090

    ld h, b
    ld e, a
    and b
    rst $28
    db $10
    ld e, a
    and b
    rst $28
    db $10
    rst $08
    jr nc, @-$0f

    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    ld l, a
    sub b
    xor a
    ld d, b
    rst $28
    db $10
    ld l, a
    sub b
    xor a
    ld d, b
    ld a, a
    add b
    ld l, a
    sub b
    ccf
    ret nz

    ld d, a
    xor b
    ccf
    ret nz

    cpl
    ret nc

    scf
    ret z

    rla
    add sp, $07
    ld hl, sp+$17
    add sp, $07
    ld hl, sp+$03
    db $fc
    rlca
    ld hl, sp+$03
    db $fc
    ld bc, $02fe
    db $fd
    nop
    rst $38
    ld bc, $807f
    ccf
    add b
    rra
    ret nz

jr_03b_4137:
    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ldh a, [$03]
    ld l, b
    inc bc
    jp nz, $e73c

    jr jr_03b_4137

    dec c
    pop af
    ld c, $f9
    ld b, $fc
    inc bc
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    ld [de], a
    rst $38
    add hl, hl
    rst $38
    sub d
    rst $38
    db $ed
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
    cp $ff
    ld a, a
    rst $38
    ccf
    rst $38
    sbc [hl]
    rst $38
    ld b, l
    rst $38
    ld b, d
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
    nop
    rst $38
    nop
    ld a, a
    add b

jr_03b_418a:
    ccf
    ret nz

    cp a
    ld b, b
    sbc a
    ld h, b
    ld l, b
    sub a
    xor h
    ld d, e
    xor [hl]
    ld d, c
    xor [hl]
    ld d, c
    rst $08
    jr nc, jr_03b_418a

    db $10
    db $eb
    inc d
    db $eb
    inc d
    rst $28
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
    db $10
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld e, a
    and b
    ld a, a
    add b
    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rNR22]
    add sp, $07
    ld hl, sp+$02
    rst $38
    nop
    rst $38
    ld [bc], a
    ld a, a
    add b
    ccf
    add b
    rra
    ld b, b
    rra
    nop
    rrca
    ret nz

    rlca
    inc e

jr_03b_41d1:
    ldh [$9e], a
    ld h, b
    jp c, $e724

    add hl, de
    rst $20
    jr jr_03b_41d1

    add hl, bc
    ld sp, hl
    ld b, $fd
    ld [bc], a
    cp $21
    rst $38
    ld b, b
    rst $38
    sub b
    rst $38
    ld d, h
    rst $38
    sub e
    rst $38
    adc c
    rst $38
    ld [$f6ff], a
    rst $38
    cp $ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fd
    rst $38
    ld hl, sp-$01
    ld a, [$f8ff]
    rst $38
    cp d
    rst $38
    sbc b
    rst $38
    ld b, [hl]
    rst $38
    nop
    rst $38
    add b
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
    rst $38
    nop
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [de], a
    rst $28
    add b
    ld a, a
    add b
    ld a, a

jr_03b_423e:
    and b
    ld e, a
    add $3d
    or $0d
    xor $15
    ld [c], a
    dec e

jr_03b_4248:
    ld [c], a
    dec e

jr_03b_424a:
    pop de
    ld l, $e6
    add hl, de
    cp $09
    rst $38
    ld [$08f7], sp
    rst $20
    jr jr_03b_423e

    jr jr_03b_4248

    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_03b_424a

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
    ld a, a
    add b
    ccf
    ret nz

    ld e, a

jr_03b_427b:
    and b
    ccf
    ret nz

    rrca
    ldh a, [$0b]
    nop
    ld de, $0200
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$d0], a
    jr nz, jr_03b_427b

    jr jr_03b_42c1

    call nc, Call_03b_40be
    db $db
    inc h
    db $dd
    ld [hl+], a
    db $f4
    adc e
    di
    ld c, h
    ei
    add h
    db $fc
    inc sp
    cp $a1
    rst $38
    ld d, b
    rst $38
    ld c, b
    rst $38
    xor d
    rst $38
    sub h
    rst $38
    ld [$d4ff], a
    rst $38
    db $e4
    rst $38

jr_03b_42b5:
    ret nc

    rst $38
    jp hl


    rst $38
    or h
    rst $38
    ret nc

    rst $38
    ret c

    rst $38
    ret nz

    rst $38

jr_03b_42c1:
    db $ec
    rst $38
    db $76
    rst $38
    ld a, [$d9ff]
    rst $38
    db $ec
    rst $38
    db $e4
    rst $38
    db $eb
    rst $38
    ret nz

    rst $38
    ret nc

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

jr_03b_42e5:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $10
    jr z, jr_03b_42b5

    add hl, sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add c
    ld a, [hl]
    jr nz, jr_03b_42e5

    ld de, $a4ee
    ld e, e
    ld [hl+], a
    db $dd
    push af
    ld a, [bc]
    cp l
    ld b, d
    db $eb
    inc d
    rst $38
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
    di
    inc c
    rst $30
    ld [$08f7], sp
    rst $38
    nop
    rst $28
    db $10
    rst $28
    db $10
    rst $38
    nop
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    cp $01
    cp $01
    ld a, l
    add d
    xor l
    ld d, d
    inc de
    db $ec
    inc hl
    call c, $df20
    ld [bc], a
    nop
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
    add b
    add b
    ret nz

    ld h, b
    add b
    or b
    ld b, b
    ld d, b
    and b
    ld l, b
    sub b
    inc h
    ret c

    sub [hl]
    ld l, b
    jp z, $e435

    dec de
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ld hl, sp+$07
    db $fc
    rrca
    cp $5f
    rst $38
    ld c, $ff
    ld [de], a
    rst $38
    adc h
    rst $38
    dec b
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld bc, $00ff
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
    nop
    rst $38
    nop
    rst $38
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
    cp h
    ld b, e
    add [hl]
    ld a, c
    add d

jr_03b_43b7:
    ld a, l
    add b
    ld a, a
    nop
    rst $38
    ld [de], a
    db $ed
    add e
    ld a, h
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
    inc b
    rst $38

jr_03b_43cc:
    nop
    rst $38
    ld [$0aff], sp
    db $fd
    ld b, c
    cp [hl]
    ld [hl-], a
    db $dd
    jr nc, jr_03b_43b7

    add b
    ld a, a
    rst $28
    jr nc, jr_03b_445c

    and b
    sbc a
    ld h, b
    rst $18
    ld h, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    ld a, a
    add b
    rst $38
    add b

jr_03b_43ea:
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
    cp $01
    rst $38
    ld bc, $03fc
    db $fd
    ld [bc], a
    ei
    inc b
    di
    inc c
    rst $30
    ld [$18e7], sp
    rst $28
    db $10
    rst $18

jr_03b_4409:
    jr nz, jr_03b_43ea

    jr nz, jr_03b_43cc

    ld b, b
    cp a
    ld b, b
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
    db $fd
    ld [bc], a
    cp $01
    cp $01
    add hl, sp
    add $b2
    ld c, l
    inc d
    db $eb
    jr nz, jr_03b_4409

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld bc, $0700
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    ld bc, $07fe
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$1f], a
    ret nz

    rrca
    ldh [rTAC], a
    ldh a, [$03]
    or b
    ld bc, $0000

jr_03b_444f:
    add b
    add b
    ret nz

    ret nz

    jr nz, @-$1e

    ld d, b
    ldh a, [$08]
    ld hl, sp-$7c
    ld hl, sp+$46

jr_03b_445c:
    db $fc

jr_03b_445d:
    inc bc
    cp $01
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    ld a, [$f805]
    rlca
    add sp, $17
    ld h, b
    sbc a
    jr nz, jr_03b_444f

    ld b, c
    cp [hl]
    add e
    ld a, h
    ld b, $f9
    inc e
    db $e3
    ld sp, $76ce
    adc b
    db $e4
    jr @-$26

    inc h
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    ld hl, $0bde
    db $f4
    inc h
    db $db
    jr nc, jr_03b_445d

    cp [hl]
    ld b, c
    cp a
    ld b, b
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

jr_03b_44a9:
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fd
    rst $38
    ld [bc], a
    ld sp, hl
    ld b, $ff
    inc b
    ld sp, hl
    ld c, $ee
    add hl, de
    ei
    inc d
    call z, $f233
    dec l
    ret z

    ld [hl], a
    ld a, [hl+]
    push de
    call nz, Call_000_28bb
    rst $10
    sub b
    ld l, a
    ld c, b
    or a
    and h
    ld e, e
    ld d, b
    xor a
    jr z, jr_03b_44a9

    ld d, b
    xor a
    and b
    ld e, a
    sub h
    ld l, e
    ld d, [hl]
    xor c
    xor b
    ld d, a
    ld d, l
    xor d
    ld hl, sp+$07
    call nc, $e92b
    ld d, $e4
    dec de
    push de
    dec hl
    xor d
    ld d, a
    push de
    ld l, $c0
    ccf
    jp nz, $453d

    rst $38
    ld [$13ff], sp
    db $fc
    ld b, a
    ld hl, sp+$07
    ld hl, sp-$79
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rP1]
    ccf
    ld bc, $07ff
    ei
    rra
    rst $28
    ccf
    rst $18
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    scf
    rst $38
    ccf
    rst $38
    rst $10
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    xor [hl]
    rst $38
    ld l, $7f
    inc e
    ld a, a
    dec b

jr_03b_4524:
    ccf
    ld bc, $011f
    rrca
    nop
    rlca
    nop
    inc bc
    add b
    ld bc, $00e0
    ld hl, sp-$80
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    ld hl, sp+$07
    inc b
    ei
    adc b
    ld [hl], a
    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    ld bc, $2cfe
    db $d3
    ld [hl-], a
    call z, $9468
    ret c

    inc h
    or b
    ld b, b
    jr nz, jr_03b_4524

    ld b, b
    add b
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
    ld d, d
    xor l
    ld bc, $8dfe
    ld [hl], d
    dec d
    ld [$4cb3], a
    cp [hl]
    ld b, c
    db $fd
    ld [bc], a
    cp $01
    cp $01
    cp $01
    db $fd
    ld [bc], a
    rst $38
    nop
    cp $01
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    dec b
    nop
    ld bc, $0001
    inc bc
    ld bc, $0302
    inc b
    ld a, [bc]
    inc b
    rrca
    ld [$100c], sp
    db $db
    inc [hl]
    db $e3
    inc a
    and a
    ld a, b
    call $3e72

jr_03b_45a9:
    pop bc
    cp l

jr_03b_45ab:
    jp nz, $837c

    db $fc
    inc bc
    db $fd
    ld [bc], a
    call c, $c023
    ccf
    and b
    ld e, a
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
    jr nz, jr_03b_45a9

    jr nz, jr_03b_45ab

    nop
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
    ld b, $ff
    inc c
    rst $38
    jr @+$01

    jr nc, @+$01

    ld d, b
    rst $28
    add b
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
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp-$80
    ld a, h
    ret nz

    cp [hl]
    ldh [$df], a
    ldh [rIE], a
    ldh a, [$ef]
    ld hl, sp-$09
    db $fc
    ei
    cp $fd
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld e, a
    rst $38
    rra
    rst $38
    rst $18
    rst $38
    ld e, l
    rst $38
    ld h, [hl]
    rst $38
    add c
    rst $38
    ld a, [de]
    rst $38
    ld d, d
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

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld hl, sp+$00
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
    rst $18
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    ld bc, $03f8
    rst $38
    ld [bc], a
    cp c
    ld b, $df
    inc b
    cp e
    inc c
    ld h, [hl]
    jr jr_03b_46f4

    db $10
    ld l, d
    db $10
    rst $38
    jr nz, jr_03b_4697

    ld h, b
    cp b
    ld b, b
    ld l, b
    add b
    sbc d
    push hl
    inc [hl]
    bit 7, b
    add a
    xor b
    ld d, a
    add sp, $17
    ret nc

    cpl
    or b
    ld c, a
    ret nz

    ccf
    add h
    ld a, e
    ret nz

    ccf
    and b
    ld e, a
    ld b, b

jr_03b_4697:
    cp a
    add b
    ld a, a
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
    rst $30
    ld [$817e], sp
    db $fd
    inc bc
    ei
    ld b, $f7
    inc c
    rst $28
    jr jr_03b_46e1

    rst $38
    ld l, h
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld [hl+], a
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld b, $ff
    jr @+$01

    nop
    rst $38
    ld [bc], a
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
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a

jr_03b_46e1:
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    add b
    cp $c0
    cp a
    ldh [$df], a
    ldh a, [$ef]
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    db $db

jr_03b_46f4:
    cp $dd
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    ld a, l
    rst $38
    add hl, sp
    rst $38
    inc h
    rst $38
    ld [de], a
    rst $38
    nop
    rst $38
    ld bc, $fe01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_03b_4711:
    rst $38
    nop

jr_03b_4713:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_03b_471c:
    nop
    ccf
    nop
    inc bc
    rst $30
    ld c, b
    ccf
    ret nz

    rst $38
    add b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    jr nz, jr_03b_4711

    jr nz, jr_03b_4713

    ld b, b
    cp a
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
    ld bc, $00ff
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
    ld bc, $05ff
    rst $38
    add d
    rst $38
    ld c, $ff
    ld [$01ff], sp
    rst $38
    ld hl, sp+$07
    ldh a, [rIF]
    or d
    ld c, l
    cp b
    ld b, a
    pop hl
    rra
    add h
    ld a, e
    ret c

    ld h, $f9
    inc c
    rst $10
    jr c, jr_03b_471c

    db $76
    ld [hl], d
    call $d3ac
    ret c

    daa
    or a
    ld c, b
    ld c, b
    or a
    db $e3
    inc e
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    adc [hl]
    rst $38
    ld b, a
    rst $38
    ld c, $ff
    ld [bc], a
    rst $38
    ld bc, $bcff
    ld b, e
    rst $38
    nop
    db $fd
    ld [bc], a
    db $fc
    inc bc
    db $fd
    ld [bc], a
    ld a, [$fa05]
    rlca
    db $e3
    inc e
    jr nc, @+$01

    ret nz

    rst $38
    add d
    rst $38
    nop
    rst $38
    inc de
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, b
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld bc, $83ff
    rst $38
    dec b
    rst $38
    inc de
    rst $38
    inc bc
    rst $38
    pop bc
    ld a, $0b
    db $f4
    xor d
    ld d, l
    ld a, [$7e05]
    add c
    cp [hl]
    pop bc
    sbc $e1
    ret nz

    rst $38
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    add b
    ld a, [hl]
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [$2f]
    ld hl, sp+$17
    db $fc
    inc bc
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
    ccf
    ret nz

    inc bc
    db $fc
    ld [bc], a
    rst $38
    dec bc
    rst $38
    dec b
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld de, $03ff
    rst $38
    ld d, $ff
    ld h, h
    rst $38
    ld l, b
    rst $38
    ret nz

    rst $38
    add c
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    ld b, $ff
    inc c
    rst $38
    ld a, [bc]
    rst $38
    ld de, $24ff
    rst $38
    ld b, c
    rst $38
    add a
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    add [hl]
    rst $38
    rra
    rst $38
    ld e, $ff
    dec e
    rst $38
    ret nz

    ccf
    add h
    ld a, e
    db $10
    rst $28
    nop
    rst $38
    ld [de], a
    db $ed
    ld bc, $03ff
    cp $06
    db $fd
    adc h
    ld a, e
    jr z, @-$07

    ret nc

    ld l, a
    and b
    rst $18
    ld b, d
    cp l
    adc b
    ld [hl], a
    ld d, b
    xor a
    ret nz

    ccf
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    db $db
    rst $38
    db $fd
    rst $38
    rst $18
    rst $38
    ld a, a
    rst $38
    ccf
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
    ret nz

    ccf
    ld bc, $14ff
    rst $28
    sub d
    ld a, l
    ld [$b1f7], sp
    adc $d1
    ld l, $61
    sbc [hl]
    ld a, a
    rst $38
    cp $ff
    dec de
    rst $38
    sub e
    rst $38
    ld [de], a
    rst $38
    sub e
    rst $38
    xor a
    rst $38
    db $fc
    rst $38
    ld c, a
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, l
    rst $38
    ld sp, hl
    rst $38
    ld [hl], a
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    ccf
    rst $38
    db $fc
    inc bc
    ldh a, [rIF]
    ret z

    scf
    add b
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

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
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

    rst $00
    ld hl, sp+$54
    rst $38
    ld hl, sp-$01
    ld e, [hl]
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$02
    db $fd
    ld bc, $20fe
    rst $18
    ld bc, $00fe
    rst $38
    add a
    rst $38
    rla

jr_03b_48f3:
    rst $38
    dec c
    rst $38
    ld e, $ff
    ccf
    rst $38
    ld [hl], a
    rst $38
    ld l, a
    rst $38
    sbc a
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    db $10
    rst $28
    jr nz, jr_03b_48f3

    jr z, @-$27

    sub b
    ld l, a
    and b
    ld e, a
    pop bc
    ccf
    add d

jr_03b_491d:
    ld a, a
    inc b
    rst $38
    ld a, [hl+]
    db $dd
    inc d
    ei
    jr z, jr_03b_491d

    ld [hl], b
    rst $08
    and b
    rst $18
    ld b, b
    cp a
    add b
    ld a, a
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $28
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    rrca
    db $fc
    inc [hl]
    ei
    ld d, b
    rst $28
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
    add b
    ld a, a
    rst $38
    rst $38
    rst $38
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
    add b
    rst $38
    pop hl
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
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
    ld a, a
    add b
    add a
    ld hl, sp-$68
    rst $38
    ld d, a
    rst $38
    ld a, a
    add b
    rrca
    ldh a, [rSB]
    cp $e0
    rra
    ld a, l
    add d
    ld e, a
    and b
    rrca
    ldh a, [rNR42]
    sbc $00
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
    jr jr_03b_49f3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_03b_4a03

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_03b_4a13

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_03b_4a23

    ld [hl-], a

jr_03b_49f3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_03b_4a33

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_03b_4a03:
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

jr_03b_4a13:
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

jr_03b_4a23:
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld a, [bc]
    ld l, h
    ld a, [bc]
    ld a, [bc]
    ld l, l
    ld l, [hl]
    ld l, a

jr_03b_4a33:
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
    ld a, [bc]
    ld a, [bc]
    ld a, e
    ld a, h
    ld l, a
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    add h
    ld a, [bc]
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
    ld a, [bc]
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    ld a, [hl]
    ld a, [hl]
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
    sbc d
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
    sbc h
    cp l
    cp [hl]
    ld a, [bc]
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
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, $db0a

    adc $dc
    db $dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$0a0a], a
    db $eb
    db $ec
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
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld bc, $0001
    ld bc, $0101
    ld bc, $0601
    ld b, $06
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0601
    ld b, $06
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0601
    ld b, $06
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld b, $06
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    ld [bc], a
    inc b
    nop
    nop
    inc b
    ld bc, $0101
    ld bc, $0001
    ld bc, $0000
    nop
    nop
    ld [bc], a
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
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0000
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld bc, $0101
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    ld b, $01
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    ld b, $06
    ld b, $06
    ld b, $06
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0606
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld bc, $0606
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $06
    ld b, $01
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
    ld c, $0e
    ld c, $0e
    ld c, $0e
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
    ld c, $0e
    ld c, $0e
    ld c, $09
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
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    scf
    rst $38
    inc sp
    rst $38
    ld bc, $00ff
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    and b
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    add hl, de
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    jr nz, @+$01

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
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
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
    add b
    rst $38
    add b
    rst $38
    add b
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [$f8], a
    ret nz

    db $d3
    add b
    jp Jump_03b_5380


    add b
    ld d, b
    add b
    db $dd
    ret nz

    ld l, a
    ret nz

    rst $38
    ldh [$d3], a
    ldh a, [$d8]
    ldh a, [$dc]
    ld hl, sp+$7c
    ld hl, sp-$01
    ld hl, sp-$02
    ld hl, sp-$04
    ret c

    rst $38
    ret z

    rst $38
    ret nz

    ei
    add b
    rst $38
    ret nc

    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld h, b
    ei
    ld a, h
    ld a, $7f
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld e, a
    ccf
    ld e, a
    ccf
    ld e, e
    ccf
    ld a, [$fd1f]
    rra
    db $ed
    rra
    db $ed
    rra
    call $cd3f
    ccf
    rst $08
    ccf
    ret nz

    ccf
    ld b, a
    cp b
    ld b, a
    cp b
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$02
    db $fc
    nop
    db $fc
    inc b
    ld hl, sp+$28
    ldh a, [$0c]
    ldh a, [rNR34]
    ldh [rIE], a
    nop
    rst $28
    db $10
    rst $30
    ld [$0cf3], sp
    pop af
    ld c, $f1
    ld c, $71
    adc [hl]
    ld a, d
    add l
    cp l
    ld b, e
    sbc e
    ld h, a
    dec de
    rst $20
    ld a, a
    add e
    rst $38
    pop af
    rst $38
    ld d, b
    ld a, a
    ldh a, [$7f]
    add sp, -$01
    ldh [rIE], a
    db $e4
    rst $38
    db $f4
    rst $18
    ldh a, [rIE]
    ld a, b
    rst $08
    ld [hl], b
    rst $28
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld a, [hl-]
    rst $00
    ld a, h
    rst $30
    cp $fb
    cp a
    ei
    ccf
    ei

jr_03b_4d63:
    ld a, a
    rst $28
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    ld sp, hl
    rrca
    pop hl
    sbc a
    db $eb
    rst $18
    db $ec
    sbc a
    add sp, $17
    xor $97
    rst $30
    add hl, bc
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$05fb], sp
    ei
    push hl
    ei

jr_03b_4d85:
    inc b
    db $fd
    ld [bc], a
    db $fd
    add d
    db $fc
    add e
    db $fc

jr_03b_4d8d:
    inc bc
    db $fc
    inc bc
    ld bc, $01fe

jr_03b_4d93:
    cp $01
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr jr_03b_4d85

    jr c, jr_03b_4d63

    db $76
    add e
    ld c, a
    add h
    sub [hl]
    add hl, bc
    ld sp, hl
    ld b, $01
    cp $07
    ld hl, sp+$3f
    ret nz

    ret nz

    rst $38
    db $f4
    rst $38
    db $e3
    db $fc
    jp $86fc


jr_03b_4db7:
    ld hl, sp+$06
    ld hl, sp-$72
    ldh a, [rNR32]
    ldh [rSVBK], a
    adc a
    ld h, h
    add e
    ld h, e
    add b
    ld h, e
    add b
    ld h, e
    add b
    jr nz, jr_03b_4d8d

    jr nc, jr_03b_4d93

    jr @-$17

    jr jr_03b_4db7

    db $10
    rst $28
    db $10
    rst $28
    nop
    rst $38
    ld a, [hl]
    rst $38
    ld a, h
    rst $38
    ccf
    rst $38
    cp a
    ld a, a
    rst $18
    ld a, a
    ld [hl], h
    rst $38
    ld sp, hl
    ld a, [hl]
    pop af
    ld a, [hl]
    ldh [$7f], a
    and b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    ldh a, [$3f]
    db $fc
    ccf
    cp $3f
    cp [hl]
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, e
    rst $38
    add c
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
    ld hl, sp-$01
    ret nz

    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ret nc

    rrca
    reti


    rlca
    db $d3
    rrca
    or $0f
    db $76
    rrca
    inc a
    rrca
    inc [hl]
    rrca
    inc a
    rlca
    jr c, jr_03b_4e2f

    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc

jr_03b_4e2f:
    inc bc
    db $dd
    inc hl
    sbc l
    ld h, e
    ld c, l
    di
    add c
    rst $38
    add b
    rst $38
    add h
    ei
    inc b
    ei
    ld b, d
    db $fd
    rst $38
    ld a, e
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    dec b
    rst $38
    dec c
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
    ld [bc], a
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    rlca
    db $fc
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ld e, a
    rst $38
    rrca
    rst $38
    db $e3
    rst $38
    add a
    rst $38
    and e
    ei
    and b
    db $fc
    add sp, -$04
    ld hl, sp-$04
    ld hl, sp+$7c
    or b
    ld a, h
    ldh a, [$fe]
    db $fc
    cp $7c
    adc $80
    ld h, d
    db $fd
    rst $20
    ld hl, sp-$19
    ld hl, sp+$71
    ld hl, sp+$7f
    ld hl, sp+$3f
    ld hl, sp+$3f
    db $fc
    ld e, $ff
    rrca
    rst $38
    adc h
    ld a, a
    adc c
    ld a, [hl]
    sbc c
    ld a, [hl]
    di
    inc a
    ld h, a
    cp b
    add $38
    ld b, [hl]
    cp b
    ld [hl+], a
    call c, $9e61
    dec c
    cp $1c
    rst $28
    rra
    rst $28
    rlca
    rst $38
    bit 6, a
    dec bc
    rst $30
    add a
    ld a, e
    add a
    ld a, e
    ld b, l
    dec sp
    nop
    ccf
    ld [bc], a
    dec a
    ld [bc], a
    dec a
    ld bc, $053e
    ld a, [$fe01]
    ld b, b
    cp a
    ret nz

    ccf
    ret nz

    ccf
    ret nc

    ccf
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
    ld [$00ff], sp
    rst $38
    ld c, b
    rst $38
    jr z, @-$1f

    ld e, b
    cp a
    ldh a, [$3f]
    ld b, b
    cp a
    ld b, b
    cp a
    nop
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $02ff
    db $fd
    nop
    rst $38
    ld [bc], a
    db $fd
    ret nz

    rst $38
    ldh a, [rIE]
    sub b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, [$5eff]
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    sbc l
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    ld c, $ff
    dec de
    rst $38
    dec a
    ei
    ccf
    ld sp, hl
    scf
    ld sp, hl
    ld [hl], l
    ei
    ld [hl], e
    rst $38
    ld h, e
    rst $38
    add sp, -$09
    db $e3
    db $fc
    rst $20
    ld hl, sp-$31
    ldh a, [$df]
    ldh [$bf], a
    ret nz

    cp a
    ret nz

    rst $38
    add b
    ld a, a
    add b
    rst $38
    ld hl, sp-$01
    rst $38
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rla
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    ld c, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $30
    rra
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    cp a
    call nz, $e7bf
    cp $fe
    call c, $c0d0
    add b
    nop
    ld [$1c00], sp
    nop
    ld l, b
    nop
    ld [$6000], sp
    nop
    ld hl, sp+$60
    rst $30
    ldh a, [$f9]
    ld c, $6d
    ld a, [de]
    sub b
    ld a, a
    ld [hl], b
    adc a
    ld a, [c]
    dec c
    di
    inc c
    rst $20
    inc e
    dec h
    sbc $04
    rst $38
    ld hl, sp+$07
    ret z

    rlca
    add d
    inc bc
    add b
    inc bc
    ld a, [$3803]
    inc bc
    ld c, $01
    ld a, [hl]

jr_03b_4fa1:
    ld bc, $037f
    ld a, [hl]
    ld bc, $c13e
    ld a, $c1
    cp [hl]
    pop bc
    sbc [hl]

jr_03b_4fad:
    pop hl
    rst $18
    ldh [$c8], a
    ldh a, [$d0]
    ldh [$60], a
    add b
    rst $28
    nop
    inc sp
    ret nz

    dec c
    di
    add a
    rst $38
    inc bc
    rst $38
    dec c
    di
    add [hl]
    ld a, c
    add h
    ld a, e
    ld b, b
    cp a
    ld d, b
    cp a
    ld a, b
    sbc a
    jr z, jr_03b_4fad

    jr nc, @-$2f

    jr nc, jr_03b_4fa1

    db $10
    rst $28
    add hl, de
    and $0f
    ldh a, [rIF]
    ldh a, [$0e]
    ldh a, [rDIV]
    ld hl, sp+$0c
    ldh a, [rNR34]
    pop hl
    inc c
    di
    inc h
    rst $18
    ld c, $ff
    add a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, e
    rst $38
    db $fd
    ei
    push de
    ei
    ld [bc], a
    rst $38
    add b
    rst $38
    add b
    rst $38
    pop bc
    cp $c1
    cp $c1
    cp $c1
    cp $60
    rst $38
    ld b, b
    rst $38
    ld [hl+], a
    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    and d
    ld a, l
    or d
    ld a, l
    inc sp
    db $fc
    jr nc, @+$01

    ld [hl-], a
    db $fd
    jr nz, @+$01

    inc sp
    db $fc
    rrca
    ldh a, [$7f]
    ret nz

    ld a, a
    ret nz

    rra
    ldh [$5f], a
    ldh [$8f], a
    ldh a, [$e3]
    db $fc
    rst $38
    ldh [$ef], a
    ldh a, [rNR44]
    db $fc
    jr nc, @+$01

    inc e
    rst $38
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
    ld hl, sp+$07
    rst $38
    rst $38
    ldh a, [rIE]
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc b
    rst $38
    add h
    rst $38
    ld hl, sp-$01
    ret nz

    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    ld hl, sp-$01
    rst $38
    rst $38
    db $fc
    rst $38
    xor $ff
    rst $28
    rst $18
    add sp, -$21
    xor $df
    or $cf
    rst $30
    adc a
    rst $30
    adc a
    db $fc
    rlca
    ld a, h
    rlca
    ld a, b
    rlca
    dec sp
    rlca
    dec sp
    rlca
    dec sp
    rlca
    dec sp
    rlca
    dec a
    inc bc
    dec a
    inc bc
    dec e
    inc bc
    ld a, l
    add e
    db $e3
    inc e
    di
    inc c
    ld a, [c]
    inc c
    ld a, [c]
    inc c
    ld [hl], d
    adc h
    di
    inc c
    pop af
    ld c, $75
    adc [hl]
    dec [hl]
    adc $35
    adc $b5
    adc $a1
    sbc $b1
    sbc $0e
    pop af
    add [hl]
    ld a, c
    rlca
    rst $38
    rrca
    rst $38
    dec b
    rst $38
    ld b, $fd
    dec bc
    db $f4
    add c
    cp $a1
    cp $b0
    rst $38
    nop
    rst $38
    add c
    ld a, a
    db $10
    ld a, a
    ld de, $d97f
    scf
    ret nc

    ld a, a
    ldh a, [rIE]
    db $fc
    ei
    ld sp, hl
    cp $71
    cp $a0
    ld a, a
    or b
    ld a, a
    or b
    ld a, a
    ld sp, $71fe
    cp [hl]
    ld d, e
    xor h
    dec sp
    call z, $de29
    ld b, b
    cp a
    ld h, b
    sbc a

jr_03b_50d6:
    ld a, [hl-]
    push bc
    dec sp
    call nz, Call_03b_649b
    sbc c
    ld h, [hl]
    nop
    rst $38
    dec d
    ld [$e21d], a
    rlca
    ldh a, [rNR34]
    pop hl
    ld a, $c1
    ld e, $e1
    ld l, [hl]
    add c
    ld a, a
    add b
    ccf
    ret nz

jr_03b_50f2:
    rra
    ldh [$3f], a
    ret nz

jr_03b_50f6:
    rra
    ldh [rTAC], a
    ld hl, sp-$3d
    inc a
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
    ccf
    ret nz

    ld e, [hl]
    add b
    ld a, a
    add b
    ld h, [hl]
    add b

jr_03b_5110:
    ld e, l
    add b

jr_03b_5112:
    ld e, $e0

jr_03b_5114:
    jr z, jr_03b_50d6

    ccf
    ret nz

    cp [hl]
    ld b, b
    sbc [hl]
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    rst $08
    jr nc, jr_03b_50f2

    jr nc, @-$2f

    jr nc, jr_03b_50f6

    jr nc, jr_03b_5110

    jr jr_03b_5112

    jr jr_03b_5114

    jr @+$01

    ld [$cc3b], sp
    inc sp
    call z, Call_000_0cf3
    or $09
    cp $01
    sbc $21
    db $10
    rst $28
    nop
    rst $38
    db $f4
    rst $38
    inc b
    rst $38
    cp $ff
    cp $ff
    cp $ff
    ld e, $ff
    ld c, $ff
    dec b
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    ld bc, $09ff
    rst $38
    ld [bc], a
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
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    pop hl
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    push af
    rst $38
    rlca
    rst $38
    cp $ff
    ei
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    dec hl
    ccf

jr_03b_5190:
    cp a
    ccf

jr_03b_5192:
    sbc a
    rlca
    rst $00
    rlca
    rst $08
    rrca
    rra
    rra
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    ld a, a
    ccf
    ld a, a
    rra
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    nop
    db $f4
    nop
    rst $18
    rst $38

jr_03b_51b2:
    ld c, l

jr_03b_51b3:
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    adc $ff
    rlca
    ld hl, sp-$21
    jr nz, jr_03b_5190

    jr nc, jr_03b_5192

    jr nc, jr_03b_51b3

    ld de, $11ee
    xor $11
    and $19
    or $09
    or $09
    or $09
    db $f4
    dec bc
    inc d
    db $eb
    ld bc, $fdfe
    ld [bc], a
    db $fd
    ld [bc], a
    nop
    rst $38
    inc b
    ei
    ldh [$03], a
    ld [c], a
    dec b
    ld h, d

jr_03b_51e5:
    dec b
    add b
    rlca
    ld b, b
    rlca
    add b
    rlca
    add sp, $07
    cp c
    ld b, $75
    adc d
    ld [hl], h
    adc e
    ld [hl], h
    adc e
    ld h, e
    adc h
    sub e
    ld c, h
    or e
    ld c, h
    sub e
    ld c, h
    jp $cb1c


    inc [hl]
    dec bc
    db $f4
    rlca
    ld hl, sp+$27
    ret c

    and a
    jr jr_03b_51b2

    jr @+$09

    jr c, @+$09

    jr c, jr_03b_5228

    jr z, jr_03b_5222

    jr nc, jr_03b_5264

    jr nc, jr_03b_5266

    jr nc, jr_03b_51e5

    inc sp
    add e
    ld a, h
    xor a
    ld d, b
    sbc a
    ld h, b
    sbc a
    ld h, b

jr_03b_5222:
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b

jr_03b_5228:
    sbc a
    ld h, b
    rra
    ldh [$3f], a
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

    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

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
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ret nc

    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    add b
    nop
    add c
    nop
    nop
    nop
    nop

jr_03b_5264:
    nop
    nop

jr_03b_5266:
    nop
    nop
    inc bc
    nop
    ld [bc], a
    ld bc, $0103
    inc bc
    ld bc, $fe01
    ld hl, $e1fe
    cp $d1
    cp $01
    cp $01
    cp $c1
    cp $81
    cp $80
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    ldh [rIE], a
    add sp, -$01
    ld a, [c]
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    rst $38
    rst $38
    db $fc
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
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ld h, e
    rst $38
    set 7, a
    db $db
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld c, a
    rst $38
    dec sp
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $08fe
    rst $30
    ld bc, $0dfe
    ld a, [c]
    rst $30
    ld [$40bf], sp
    ccf
    ret nz

    rra
    ldh [rIE], a
    nop
    ldh a, [rIF]
    ld [bc], a
    db $fd
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld bc, $fffe
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    inc b
    nop
    add l
    nop
    adc a
    nop
    ldh [rP1], a
    ldh [rP1], a
    ld hl, sp+$00
    ldh a, [rP1]
    db $fc
    nop
    cp $00
    ld hl, sp+$00
    ldh [rP1], a
    db $e4
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
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
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
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    ld a, a
    rst $18
    ld a, a
    cp a
    ld e, a
    cp a
    ld e, a
    cp a
    ld e, a
    sbc a
    ld l, a
    sbc a
    ld l, a
    sbc a
    ld l, a
    ld d, a
    cpl
    ld d, a
    cpl
    ld d, e
    cpl
    ld d, c
    cpl
    ld d, b
    cpl
    ld c, b
    scf
    ld c, b
    scf
    jr z, @+$19

    jr z, jr_03b_5389

    jr z, @+$19

    jr z, jr_03b_538d

    jr z, jr_03b_538f

    jr z, jr_03b_5391

    jr z, jr_03b_5393

    db $e4
    dec de
    db $f4
    dec bc

Jump_03b_5380:
    db $f4
    dec bc
    db $f4
    dec bc
    db $f4
    dec bc
    or $09
    rst $30

jr_03b_5389:
    ld [$08f7], sp
    ei

jr_03b_538d:
    inc b
    rst $38

jr_03b_538f:
    nop
    rst $38

jr_03b_5391:
    rst $38
    rst $38

jr_03b_5393:
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
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld a, [bc]
    push af
    ld d, $e9
    ld h, [hl]
    sbc c
    cp $01
    cp [hl]
    ld b, c
    cp $01
    cp $01
    cp $01
    cp $01
    db $fc
    inc bc
    ld [bc], a
    db $fd
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
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
    nop
    ret nz

    nop
    nop
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
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld [$ff15], a
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
    ld a, h
    add e
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
    nop
    rst $38
    ccf
    ret nz

    ld a, a
    add b
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    ld a, a
    add b
    ld a, a
    add b
    cp a
    ld b, b
    cp a
    ld b, b
    cp [hl]
    ld b, b
    cp [hl]
    ld b, b
    cp l
    ld b, b
    cp l
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    nop
    adc b
    nop
    nop
    nop
    ret nz

    nop
    ret nz

    nop
    inc b
    nop
    inc b
    nop
    ccf
    nop
    inc a
    nop
    db $fc
    nop
    rst $38
    nop
    inc c
    nop
    inc c
    nop
    rra
    nop
    nop
    nop
    nop
    nop
    dec bc
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    ld hl, sp+$07
    rlca
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    inc bc
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    add hl, sp
    rst $38
    ld b, $f9
    ld b, $f9
    ld b, $f9
    ld b, $f9
    ld b, $f9
    ld b, $f9
    ld b, $f9
    ld b, $f9
    ld b, $f9
    ld b, $f9
    ld b, $f9
    ld b, $f9
    ld b, $f9
    ld b, $f9
    ld d, [hl]
    xor c
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
    ld b, $f9
    ld h, b
    sbc a
    nop
    rst $38
    rrca
    ldh a, [rNR30]
    push hl
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
    ld a, [$e700]
    nop
    nop
    rst $38
    ccf
    ret nz

    rst $38
    nop
    ld a, a
    nop
    cp a
    nop
    cp a
    nop
    ccf
    nop
    ld c, a
    nop
    sub a
    nop
    ld d, [hl]
    nop
    ld c, e
    nop
    and [hl]
    nop
    rst $28
    nop
    rst $38
    nop
    pop de
    nop
    ld c, d
    nop
    inc h
    nop
    ld c, d
    nop
    add hl, hl
    nop
    jp nc, $f500

    nop
    rst $38
    nop
    cp $00
    nop
    rst $38
    nop
    inc bc
    nop
    inc bc
    nop
    ld b, c
    nop
    jr nz, jr_03b_55cb

jr_03b_55cb:
    ld [hl], b
    nop
    db $f4
    nop
    add h
    nop
    add [hl]
    nop
    rst $18
    nop
    nop
    nop
    nop
    nop
    sbc $00
    sbc $00
    sbc [hl]
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
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
    cp $ff
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld d, a
    xor b
    rst $38
    rst $38

jr_03b_5622:
    db $fc
    rst $38

jr_03b_5624:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc [hl]
    bit 7, [hl]
    add c

jr_03b_5636:
    ld a, a
    add b
    ccf
    ret nz

    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    rst $18
    jr nz, jr_03b_5622

    jr nz, jr_03b_5624

    jr nz, jr_03b_5636

    db $10
    rst $28
    db $10
    ret nz

    ccf
    ccf
    cp $e1
    ld a, a
    and h
    rst $38
    sub d
    rst $38
    jr z, @+$01

    add c
    ld a, a
    ret nz

    ccf
    ei
    inc b
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    cp $01
    cp $01
    cp $01
    ld a, [$b501]
    nop
    ld [hl], e
    nop
    ld c, a
    nop
    add b
    ld a, a
    ld a, $c0
    and $00
    rst $10
    nop
    cp a
    nop
    rst $18
    nop
    rst $30
    nop
    db $fd
    nop
    ccf
    nop
    ld a, e
    nop
    ld d, a
    nop
    rst $20
    nop
    xor $00
    ld c, [hl]
    nop
    ld l, $00
    ld e, l
    nop
    ld e, [hl]
    nop
    xor l
    nop
    ld d, l
    nop
    ld [hl], e
    nop
    ld e, a
    nop
    ld a, $00
    ld a, l
    nop
    db $fc
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
    ld a, a
    nop
    rst $38
    nop
    rrca
    nop
    ld a, a
    nop
    rst $38
    nop
    ccf
    nop
    ld a, a
    nop
    rst $38
    nop
    rrca
    nop
    rra
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
    cp $ff
    rst $38
    cp $fd
    cp $fd
    cp $fd
    cp $f9
    cp $f9
    cp $f1
    cp $e1
    cp $c1
    cp $c1
    cp $81
    cp $02
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    dec b
    ld a, [$fa05]
    dec b
    ld a, [$fa05]
    rlca
    ld hl, sp+$0f
    ldh a, [$5f]
    and b
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
    inc b
    ei
    nop
    rst $38
    db $10
    rst $28
    cp c
    ld b, [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    add b
    rst $38
    ret nz

    ld a, a
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
    cp a
    nop
    ld a, a
    add b
    ld a, a
    add b
    ld b, b
    cp a
    dec de
    ldh [$95], a
    ld b, b
    sub d
    ld b, b
    sub d
    ld b, b
    ld a, [hl+]
    ld b, b
    jp nc, $ca20

    jr nz, jr_03b_57c1

    jr nz, jr_03b_579f

    db $10
    xor a
    db $10
    cpl
    db $10
    ld c, e
    db $10
    or d
    ld [$08b4], sp
    ld d, h
    ld [$0856], sp
    rlc h
    xor c
    inc b
    ld a, d
    inc b
    ei
    inc b
    ld e, h
    ld [bc], a
    push de
    ld [bc], a
    dec h
    ld [bc], a
    xor c
    ld [bc], a
    dec h
    rst $38

jr_03b_5792:
    jr nz, @+$01

    ld h, b
    rst $38
    db $eb
    rst $38
    ld h, e
    rst $38
    ld [hl], e
    rst $38
    ld a, a
    rst $38
    ld a, [hl]

jr_03b_579f:
    rst $38
    cp $ff
    cp $ff
    ld b, b
    rst $38
    inc [hl]
    rst $38
    jr nz, @+$01

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
    ldh a, [rP1]
    db $10
    ldh [$f0], a
    ldh [$f0], a
    ldh [rSVBK], a
    ldh [$60], a

jr_03b_57c1:
    ret nz

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

    and b
    ret nz

    and b
    ret nz

    jr nz, jr_03b_5792

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
    ldh a, [$3f]
    rst $38
    ld a, a
    rst $00
    ld a, a
    add a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    xor a
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
    rst $38
    rst $38
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
    ld a, [$00ff]
    rst $38
    nop
    rst $38
    db $10
    rst $28
    inc b
    ei
    ret nz

    ccf
    rst $28
    db $10
    rst $28
    db $10
    rst $30
    ld [$08f7], sp
    ei
    inc b
    ei
    inc b
    ld hl, sp+$07
    ld bc, $fdfe
    ld [bc], a
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
    ldh [$1f], a
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
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ld e, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    xor a
    nop
    sub a
    nop
    and a
    nop
    ld c, e
    nop
    ld a, a
    nop
    ld a, a
    nop
    cp a
    nop
    ccf
    nop
    cp a
    nop
    ccf
    nop
    xor a
    nop
    rst $38
    nop
    rst $38
    rst $38
    ld bc, $21ff
    rst $38
    db $fd
    rst $38
    jr c, @+$01

    db $fc
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    cp h
    rst $38
    ld [$1dff], sp
    rst $38
    cp $ff
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld a, e
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ldh [rIE], a
    ld h, b
    rst $38
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
    ld [$38ff], sp
    rst $38
    ld sp, hl
    rst $38
    ld a, e
    rst $38
    ld a, [hl]
    rst $38
    ld b, $ff
    ld e, $ff
    adc [hl]
    rst $38
    ld b, $ff
    rst $20
    cp $ff
    cp $fc
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fb
    db $fc
    rst $38
    ld hl, sp+$0f
    nop
    ld [bc], a
    nop
    ld e, [hl]
    nop
    inc b
    nop
    ld b, $00
    inc b
    nop
    ei
    rst $38
    jp $bbfc


    call nz, $e5da
    ret nz

    rst $38
    add a
    ld hl, sp-$79
    ld hl, sp+$17
    add sp, $03
    db $fc
    ld bc, $08fe
    rst $30
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
    add b
    ld a, a
    nop
    rst $38

jr_03b_590a:
    ld [hl], b
    adc a
    ld hl, sp+$07
    ld a, b
    add a
    adc h
    ld [hl], e
    ld sp, hl
    ld b, $fa
    dec b
    nop
    rst $38
    rst $38
    nop
    cp $01

jr_03b_591c:
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
    jr nz, jr_03b_590a

    jr nz, jr_03b_591c

    db $10
    rst $28
    db $10
    rst $30
    ld [$08f7], sp
    ei
    inc b
    ei
    inc b
    db $fd
    ld [bc], a
    ldh a, [rIF]
    ld c, $f1
    cp $01
    rst $38
    ld a, d
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    ret c

    ccf
    cp $ff
    cp $ff
    cp $6f
    ld hl, sp-$11
    db $fc
    rst $28
    db $fc
    rst $28
    cp $ef
    ld hl, sp-$11
    rst $38
    rst $28
    cp $ef
    db $f4
    rst $18
    rst $38
    rst $18
    cp $df
    cp $df
    add sp, -$21
    db $fc
    rst $18
    db $fc
    sbc a
    db $fc
    sbc a
    db $fc
    ccf
    ld hl, sp-$41
    ld hl, sp-$41
    ld hl, sp-$41
    ret c

    cp a
    ret c

    cp [hl]
    pop de
    ccf
    ret nc

    ld a, $d1
    ccf
    ret nz

    ld a, $c1
    ld a, $c1
    ld a, $c1
    cp [hl]
    ld b, c
    cp $11
    cp $11
    cp $01
    cp $c3
    db $fc
    rst $20
    ld hl, sp-$19
    cp $e1
    db $fc
    ld h, b
    ld hl, sp-$3c
    cp $80
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld a, b
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    db $f4
    ei
    ldh a, [rIE]
    ldh a, [rIE]
    inc sp
    rst $08
    ld [hl], d
    adc a
    ld a, [c]
    rrca
    ldh a, [rIF]
    ld hl, sp+$07
    ldh a, [rTAC]
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    cp $01
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ccf
    ret nz

    dec e
    ld [c], a
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$45
    cp b
    ld a, [hl-]
    call nz, $fa05
    ld bc, $0efe
    pop af
    inc c
    di
    rlca
    ld hl, sp+$62
    sbc l
    ld bc, $01fe
    cp $c8
    scf
    adc b
    ld [hl], a
    ld [$fc15], a
    inc bc
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
    rst $30
    ld [$08f7], sp
    ei
    inc b
    ei
    inc b
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
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
    db $fc
    inc bc
    rst $38
    ld [bc], a
    rst $38
    rra
    rst $38
    rrca
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    add b
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    rlca
    rst $38
    scf
    rst $38
    db $10
    rst $38
    ld a, $ff
    ld a, $ff
    jr c, @+$01

    ld a, b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], c
    rst $38
    ld [hl], c
    rst $38
    ld [hl], b
    rst $38
    ld [hl], c
    di
    ld [hl], c
    ldh [$6c], a
    ret nc

    ld c, [hl]
    ld a, a
    pop bc
    ld hl, sp-$79
    ld a, [c]
    adc l
    db $76
    db $ed
    ld a, [$fc05]
    inc bc
    rst $38
    nop
    ld l, a
    nop
    ld h, a
    nop
    rst $38
    nop
    cp $01
    ld hl, sp+$07
    ld sp, hl
    ld b, $fd
    ld b, $cd
    ld [hl], $f5
    ld c, $83
    rrca
    jp $f10f


    rrca
    ld [hl], b
    adc a
    ld [hl], c
    adc [hl]
    ld l, d
    cp h
    ld e, h
    cp a
    ld b, [hl]
    cp e
    inc l
    db $d3
    ld [$1ef7], sp
    rst $38
    rra
    rst $38
    rra
    rst $38
    rst $18
    ccf
    rra
    rst $38
    ccf
    rst $38
    sbc a
    ld a, a
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
    ld a, [hl]
    rst $38
    ccf
    rst $38
    ld c, $ff
    ld [hl], $cf
    ld a, [hl]
    add a
    ld a, [$fc07]
    inc bc
    ldh a, [rIF]
    ld [bc], a

jr_03b_5aaf:
    rst $38
    ld a, a
    add b
    db $fd
    ld [bc], a
    or a
    nop
    ld a, a
    nop
    ld e, a
    nop
    xor e

jr_03b_5abb:
    nop
    db $fd
    nop
    ld a, a
    add b
    ccf
    ret nz

    sbc a
    ld h, b
    dec e
    ldh [$89], a
    ld [hl], b
    add l
    ld a, b
    ld b, a
    cp b
    ld b, e
    cp h
    jr nz, jr_03b_5aaf

    sub b
    ld l, a
    jr jr_03b_5abb

    adc b
    ld [hl], a
    and h
    ld e, e
    and b
    ld e, a

jr_03b_5ada:
    ldh a, [rIF]
    ld hl, sp+$07
    ld sp, hl
    ld b, $7c
    add e
    cp $01
    rst $38
    nop
    ldh [$1f], a
    rra
    ldh [rIE], a
    nop
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
    jr nz, jr_03b_5ada

    jr nz, @-$1e

    rra
    rrca
    ldh a, [rIE]
    ld bc, $dfff
    rst $38
    sub e
    rst $38
    inc bc
    rst $38
    add e
    rst $38
    ld bc, $03ff
    rst $38
    add a
    rst $38
    inc bc
    rst $38
    rst $20
    cp [hl]
    rst $08
    cp a
    rst $00
    cp a
    rst $08
    cp [hl]
    rst $08
    cp $87
    ld a, a
    add a
    rst $38
    add a
    rst $38
    adc a
    ld sp, hl
    adc a
    rst $10
    rrca

jr_03b_5b28:
    rst $30
    rrca
    pop af
    rrca
    pop af
    ccf
    di
    ld a, $f3
    inc a
    rst $08
    ld hl, sp-$21
    ld hl, sp+$0f
    ldh a, [$9f]
    ld h, b
    sbc a
    ld h, b
    cp [hl]
    ld b, b
    sbc $20
    ld bc, $00ff
    rst $38
    ld b, $f9
    rrca
    ldh a, [$0c]
    ldh a, [$34]
    ret c

    inc b
    ld hl, sp-$7b
    ld a, b
    call nz, $86f8
    ld hl, sp-$79
    ld hl, sp+$07
    ld hl, sp-$29
    jr c, @-$07

    jr c, jr_03b_5b84

    ld hl, sp+$1f
    ldh [$3f], a
    ret nz

    ld h, b
    add b
    ld h, b
    add b
    jr nz, jr_03b_5b28

    cp a
    ret nz

    sub [hl]
    ld hl, sp-$21
    cp [hl]
    db $dd
    cp [hl]
    db $ed
    sbc [hl]
    ld h, a
    sbc h
    ld l, e
    sbc h
    ld c, d
    cp l
    ld c, d
    cp l
    ld e, d
    cp l
    jr @+$01

    sbc b
    ld a, a
    cp b
    ld a, a
    sub h
    ld a, e

jr_03b_5b84:
    sub h
    ld a, e
    or b
    ld a, a
    inc [hl]
    ei
    ld [hl], $f9
    ld h, c
    rst $38

jr_03b_5b8e:
    ld b, c
    rst $38
    ld h, c
    rst $38
    ld de, $23ff
    rst $18
    ld [hl-], a

jr_03b_5b97:
    rst $08

jr_03b_5b98:
    ld a, [c]
    rrca
    ldh a, [rIF]
    rst $20
    dec e
    ret nz

    ccf
    ldh a, [rIF]
    pop hl
    ld e, $c7
    jr c, jr_03b_5b8e

    jr jr_03b_5b98

    db $10
    rst $38
    db $10
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    ldh [$7f], a
    add b
    ccf
    ret nz

    ccf
    ret nz

    ld e, e
    and b
    ld c, l
    or b
    rst $20
    jr @-$17

    jr jr_03b_5c06

    cp h
    ld h, c
    sbc [hl]
    jr nc, jr_03b_5b97

    sub b
    ld l, a
    ret c

    daa
    call z, $c433
    dec sp
    and d
    ld e, l
    jp nz, $c13d

    ld a, $fc
    inc bc
    db $fc
    inc bc
    call c, $fc23
    inc bc
    db $fc
    inc bc
    db $f4
    dec bc
    db $fc
    inc bc
    ei
    inc b
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
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    add b
    ld a, a
    ld a, a
    add b
    rst $38
    nop
    rst $38
    and b
    ld a, a
    db $fc
    rst $38
    db $ec

jr_03b_5c06:
    rst $38
    ret z

    rst $38
    ldh [rIE], a
    add sp, -$01
    ldh [$7f], a
    ldh [$7f], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ldh [$df], a
    ldh [rIE], a
    ldh [$bf], a
    ret nz

    cp a
    ret nz

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
    nop
    rst $38
    nop
    rst $38
    dec e
    rst $38
    ld [hl], $eb
    ld a, a
    jp $e19b


    ei
    ld bc, $03ff
    di
    inc bc
    rst $20
    rst $18
    ld e, a
    cp [hl]
    pop af
    ld c, $3b
    inc b
    rra
    nop
    rra
    nop
    ld [c], a
    ld bc, $0106
    ld c, $01
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    cp b
    ld b, a
    add hl, sp
    rst $00
    pop af
    rrca
    ld [hl], c
    rrca
    di
    rrca
    db $e3
    rra
    ld [hl], e
    rrca
    jr nc, jr_03b_5c7d

    ret nz

    ccf
    sub e
    ld a, a
    sbc [hl]
    ld a, a
    inc a
    rst $38
    ld a, a
    rst $38
    ld b, l
    rst $38
    ld [de], a
    rst $28
    dec [hl]

jr_03b_5c7d:
    rst $38
    ld a, h
    rst $38
    ld a, a
    rst $38
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    ld bc, $3eff
    rst $38
    ld a, $ff
    cp $ff
    rst $38
    cp $7d
    cp $90
    ld a, a
    ret nc

    ccf
    ldh [$1f], a
    db $f4
    rrca
    adc h
    ld a, a
    jr @+$01

    ld a, [de]
    db $fd
    db $fc
    inc bc
    db $fc
    inc bc
    pop af
    rrca
    ld sp, hl
    rlca
    ld h, l
    sbc e
    ret nz

    ccf
    db $fc

jr_03b_5cbd:
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
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [$0d]
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    ld b, c
    cp [hl]
    nop
    rst $38
    and b
    ld e, a
    sub b
    ld l, a
    adc b
    ld [hl], a
    ld c, b
    or a
    call nz, $803b
    ld a, a
    db $10
    rst $28
    jr nc, jr_03b_5cbd

    ld a, c
    add [hl]
    ld hl, sp+$07
    cp $01
    cp $01
    ldh [$1f], a
    nop
    rst $38
    db $fc
    inc bc
    ldh a, [rIF]
    ld sp, hl
    ld b, $ff
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
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    ld bc, $07ff
    rst $38
    rlca
    ei
    dec b
    ei
    ld b, $f3
    ld c, $f7
    ld a, [bc]
    push af
    rrca
    db $f4
    rrca
    db $e4
    rra
    add sp, $17
    add sp, $17
    call z, $dc3f
    cpl
    sbc $2f
    sbc [hl]
    ld l, a
    or h
    ld e, a
    or b
    ld e, a
    cp h
    ld e, a
    dec a
    rst $18
    ld a, l
    sbc a
    ld a, a
    sbc [hl]
    ld a, a
    sbc [hl]
    rst $38
    ld a, $cf
    dec a
    rst $38
    dec a
    rst $38
    ccf
    rst $20
    ccf
    ld sp, hl
    rra
    rst $38
    ld c, $5f
    inc c
    rrca
    rrca
    rra
    inc c
    ccf
    rra
    sbc h
    inc e
    or e
    nop
    ld d, c
    rst $28
    xor a
    ld [hl], b
    scf
    add sp, -$2b
    ld [$f8c7], a
    and l
    jp c, $b7ca

    xor $9f
    ld c, $ff
    ld c, $ff
    ld c, $ff
    ld a, b
    rst $38
    ret c

    rst $38
    db $e3
    db $fc
    rst $20
    ld hl, sp-$32
    ldh a, [$d9]
    ldh [$b8], a
    ldh [$9c], a
    ldh [$df], a
    ldh [$ab], a
    call c, $ef9e
    adc a
    rst $38
    daa
    rst $18
    daa
    rst $18
    inc hl
    rst $18
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld e, $ff
    ld e, $ff
    ld e, $ff
    ld e, [hl]
    rst $38
    ld a, $ff
    ld a, $ff
    dec a
    cp $3c
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    di
    db $fc
    jp $80fc


    rst $38
    ld de, $51ff
    cp a
    pop hl
    sbc a
    pop hl
    sbc a
    ld [hl], e
    adc a
    di
    rrca
    di
    rrca
    or $0f
    rst $20
    ld e, $c6

jr_03b_5dc7:
    ccf
    push af
    rrca
    db $e4
    rra
    call nz, $883f
    ld a, a
    rla
    ld hl, sp+$1f
    ldh [rIE], a

jr_03b_5dd5:
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
    add hl, bc
    or $19
    and $0f
    ldh a, [rBGP]
    ld hl, sp+$27
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    ld b, b
    cp a
    jr nz, jr_03b_5dd5

    jr nc, jr_03b_5dc7

    sub b
    ld l, a
    ret z

    scf
    call z, $a433
    ld e, e
    rst $38
    ld bc, $7e9f
    adc a
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    ei
    ld a, a
    di
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    pop bc
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fb
    rst $38
    ei
    dec a
    rst $38
    db $fd
    rst $38
    ld hl, sp-$01
    add sp, $7f
    add sp, -$01
    pop hl
    rst $38
    pop bc
    ld a, a
    pop bc
    ld a, a
    pop de
    cp $c3
    ld a, h
    add e
    db $fc
    or a
    ld hl, sp-$49
    ld hl, sp-$61
    ld hl, sp-$11
    pop af
    cpl
    ldh [$bf], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    cp a
    ldh a, [rIE]
    ld hl, sp+$7f
    pop af
    ld a, [hl]
    sub d
    db $fc
    dec b
    cp $0c
    ei
    ld e, $f9
    rra
    ld hl, sp-$61
    ld a, h
    rst $38
    db $fc
    cp $a1
    rst $38
    ld b, b
    pop bc
    add b
    ld b, b
    add b
    ld b, b
    add b
    ret nz

    nop
    rst $38
    nop
    ld hl, sp+$07
    rst $38
    nop
    sbc a
    ld h, b
    xor a
    ld d, b
    adc h
    ld [hl], e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add e
    ld a, a
    ld [hl], e
    rrca
    ld a, h
    inc bc
    sbc $01
    rst $38
    nop
    sub c
    ld l, [hl]
    ld sp, hl
    ld b, $ca
    push af
    ret nz

    rst $38
    ret nz

    rst $38
    and c
    rst $18
    ld h, c
    sbc a
    ld h, b
    sbc a
    ldh [$1f], a
    ldh [$1f], a
    pop de
    ccf
    jp nz, $863f

jr_03b_5ea1:
    ld a, a
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    dec e
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    scf
    rst $38
    inc sp
    rst $38
    add sp, -$01
    ld a, [c]
    rst $38
    ldh [rIE], a
    call nz, $c4ff
    rst $38
    ld hl, sp-$01
    ret nz

    rst $38
    nop
    rst $38
    jr nz, @+$01

    add b
    ld a, a
    call nz, $073f
    rst $38
    rlca
    rst $38
    ld b, a
    cp a
    swap a
    db $dd
    inc hl
    sbc [hl]
    ld h, c
    cp a
    ld b, b
    jr c, jr_03b_5ea1

    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rra
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    add a
    ld a, b
    db $e3
    inc e
    ldh a, [rIF]
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
    ldh a, [rP1]
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
    jr jr_03b_5f33

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_03b_5f43

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_03b_5f53

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_03b_5f63

    ld [hl-], a

jr_03b_5f33:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_03b_5f73

    ld a, [hl-]
    dec sp

Jump_03b_5f3c:
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_03b_5f43:
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

jr_03b_5f53:
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld d, c
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c

jr_03b_5f63:
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

jr_03b_5f73:
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
    ld a, h
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
    ld l, [hl]
    sub [hl]
    sub a
    ld a, h
    sbc b
    ld a, h
    ld a, h
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    ld a, h
    ld a, h
    and d
    ld a, h
    and e
    ld a, h
    ld a, h
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    ld a, h
    ld a, h
    ld a, h
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
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, @+$33

    ld b, $06
    ld b, $06
    ld b, $01
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0606
    ld b, $06
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0606
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $06
    ld b, $00
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $06
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0601
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0606
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $06
    ld b, $06
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    ld bc, $0006
    nop
    nop
    nop
    ld b, $01
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld b, $00
    nop
    nop
    ld b, $01
    ld bc, $4101
    ld bc, $0001
    ld bc, $0000
    ld bc, $0006
    nop
    nop
    ld b, $01
    ld bc, $0001
    nop
    ld bc, $0100
    nop
    nop
    ld bc, $0006
    nop
    nop
    ld b, $01
    ld bc, $0001
    nop
    nop
    ld bc, $0101
    ld bc, $0601
    nop
    nop
    nop
    nop
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0606
    ld b, $07
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0601
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0601
    ld b, $01
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0606
    ld b, $00
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0909
    ld c, $0e
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
    ld c, $0e
    ld c, $0e
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
    ld c, $0e
    ld c, $09
    add hl, bc
    rrca
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0909], sp
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    rra
    ldh a, [$7e]
    rst $20
    ld a, e
    rst $08
    ld [hl], a
    call z, $d8f7
    rst $38
    sbc b
    rst $28
    ret c

    rst $28
    ret c

    rst $28
    ret c

    ld l, a
    ret c

    ld a, a
    ret c

    ld [hl], a
    ret c

    ld [hl], a
    ret z

    ccf
    db $ec
    ccf
    db $e4
    ccf
    and $bf
    rst $30
    adc a
    ei
    adc a
    db $fd
    add a
    ld a, [hl]
    add c
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    push bc
    ld a, a
    push bc
    ld a, a
    push hl
    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [$1f]
    ldh a, [rIE]
    ldh a, [$9f]
    pop af
    rra
    ld hl, sp+$0f
    ld a, b
    add a
    ld sp, hl
    rlca
    ld hl, sp+$07
    add e
    ld a, h
    jp $013c


    cp $e1
    ld e, $f1
    ld c, $f9
    ld b, $f1
    ld c, $70
    adc a
    pop hl
    ld e, $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    cp $00
    sbc $00
    ld [hl], a
    nop
    ld h, c
    nop
    ld [hl], b
    nop
    inc sp
    nop
    cp a
    nop
    sbc a
    nop
    sbc a
    nop
    sbc a
    nop
    rst $18
    nop
    rst $08
    nop
    rst $28
    nop
    rst $28
    nop
    rst $20
    nop
    rst $30
    nop
    ld sp, hl
    nop
    ld [c], a
    nop
    ld hl, $01de
    cp $6c
    di
    ld sp, hl
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    inc e
    rst $38
    inc bc
    db $fc
    inc bc
    db $fc
    ld bc, $d1fe
    cp $f1
    cp $f0
    rst $38
    db $f4
    ei
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    rst $38
    ld hl, sp-$07
    cp $f8
    rst $38
    db $fd
    cp $fd
    cp $fc
    rst $38
    db $fc
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
    ld sp, hl
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    ei
    db $fd
    cp $f1
    rst $28
    ldh a, [rIE]
    ret nz

    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop

jr_03b_625e:
    daa
    ret c

    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    sbc h
    ld h, e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    di
    nop
    cp $00
    db $fc
    nop
    ld de, $e700
    nop
    rst $08
    nop
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ld a, a
    cp $7f
    rst $38
    ccf
    rst $38
    rst $18
    rst $38
    ld a, h
    rst $38
    sbc $ff
    db $fc
    rra
    db $fc
    rrca
    ld a, [$fe07]
    inc bc
    cp $03
    cp $01
    rst $38
    ld bc, $20ff
    rst $18
    jr nc, jr_03b_625e

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    pop bc
    rst $38
    db $e3
    db $e3
    ccf
    rst $38
    add c
    inc bc
    rst $38
    ld bc, $c1ff
    cp $e9
    cp $ff
    or $ff
    ld hl, sp-$01
    rst $30
    rra
    ei
    rra
    ld hl, sp+$1f
    rst $38
    rst $00
    rst $38
    rst $20
    rst $38
    ld a, c
    rst $38
    ld sp, hl
    rst $38
    ld a, [hl]
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    inc a
    rst $38
    inc a
    rst $38
    inc e
    rst $38
    dec e
    rst $38
    rra
    cp $1f
    db $fd
    ld sp, hl
    ld b, $f0
    rrca
    ld a, [hl]
    add c
    add e
    ld a, h
    and b
    ld e, a
    and b
    ld e, a
    pop af
    ld c, $91
    ld l, [hl]
    db $10
    rst $28
    or b
    ld c, a
    or b
    ld c, a
    add b
    ld a, a
    sbc b
    ld a, a
    cp b
    ld a, a
    cp b
    ld a, a
    cp b
    ld a, a
    pop af
    ld c, $fe
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    cp a
    ld [bc], a
    ld a, h
    inc bc
    push af
    dec bc
    sbc $39
    cp $f9
    cp $f9
    or $f9
    rst $28
    ldh a, [$df]
    ldh [$ce], a
    pop af
    ld c, [hl]
    pop af
    ld h, h
    ei
    ld h, d
    db $fd
    ld [hl], e
    db $fc
    di
    ld a, h
    ldh a, [$7f]
    cp b
    ld a, a
    add hl, sp
    cp $79
    cp [hl]
    ld e, c
    cp [hl]
    add hl, de
    cp $3d
    sbc $ac
    ld e, a
    adc [hl]
    ld a, a
    ld c, $ff
    ld e, $ef
    ld b, $ff
    inc b
    rst $38
    ld b, $f9
    ld c, $f1
    rlca
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    ld bc, $09fe
    cp $e1
    cp $59
    and $6c
    di
    ld h, h
    ei
    ret nz

    ccf
    ldh [$1f], a
    ld hl, sp+$07
    cp $01
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ldh a, [rIF]
    cp $01
    rst $10
    ld [$1f20], sp
    ld h, b
    rra
    ld b, b
    ccf
    add b
    ld a, a
    ld [bc], a
    db $fd
    ld b, $f9
    ld b, h
    cp e
    adc b
    ld [hl], a
    ld de, $ffee
    ld h, b
    rst $38
    db $76
    rst $38
    ld bc, $c0ff
    rst $38
    add b
    rst $38
    and b
    ld a, a
    ld hl, sp+$7f
    ldh [$7f], a
    ld a, [$fa7f]
    ccf
    ret nz

    ccf
    db $dd
    ccf
    jp hl


    ccf
    cp $3f
    ldh [$bf], a
    db $f4
    sbc a
    cp $bf
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $30
    rst $28
    ld [hl], e
    rst $28
    ld a, e
    rst $20
    ei
    rst $10
    ei
    sub a
    ei
    rla
    ld sp, hl
    ld b, a
    ld sp, hl
    rlca
    nop
    rst $38
    nop
    rst $38
    inc c
    di
    rra
    ldh [$1f], a
    ldh [$8f], a
    ld [hl], b
    add [hl]
    ld a, c
    inc bc
    db $fc
    add l
    ld a, [hl]
    ld bc, $c5fe
    ld a, [hl-]
    sbc l
    ld h, d
    inc e
    db $e3
    cp $01
    db $fc
    ld bc, $01ec
    rst $28
    nop
    rla
    add sp, $07
    ld hl, sp+$03
    db $fc
    pop hl
    ld e, $99
    ld a, [hl]
    pop af
    ld a, [hl]
    ld [hl], e
    ldh [rHDMA1], a
    ldh [$7d], a
    add b
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    ret nz

    ccf
    add [hl]
    ld a, a
    ld c, $ff
    sbc a
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
    ccf
    rst $38
    cp a
    ld a, a
    ccf
    rst $38
    ccf
    cp $3f
    db $fc
    ccf
    ld hl, sp+$1f
    ld hl, sp+$1d
    cp $01
    cp $1f
    ldh [$1f], a
    ldh [rVBK], a
    or b
    rra
    ldh [$5d], a
    add b
    ld a, a
    add b
    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38
    nop
    sbc $01
    db $fc
    inc bc
    call c, $b803
    rlca
    db $10
    adc a
    ld [hl], b
    adc a
    ld h, b
    sbc a
    ld d, c
    xor [hl]
    adc e
    ld [hl], h
    ld l, $d1
    ld e, h
    and e
    ld [$18f7], sp
    rst $20
    or b
    ld c, a
    pop hl
    ld e, $01
    cp $03
    db $fc
    inc b
    ei
    ld bc, $01fe
    cp $12
    db $ed
    inc sp
    call z, $807f
    rra
    ldh [$d3], a
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
    dec bc
    rst $38
    ld [bc], a
    rst $38
    ccf
    rst $38
    daa
    rst $00
    ld a, [hl]
    rst $30
    ld a, [hl]
    cp a
    rst $30
    rst $38
    rst $38
    rst $38

Call_03b_649b:
    ccf
    db $fd
    ccf
    rst $38
    inc sp
    rst $38
    dec sp
    rst $38
    ldh a, [rIE]
    inc bc
    rst $38
    inc bc
    rst $38
    ccf
    rst $18
    ld a, a
    add b
    ld a, a
    ld bc, $87ff
    rst $38
    add e
    rst $38
    add h
    rst $38
    jp $c7ff


    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    rst $20
    rst $38
    inc a
    jp $e11e


    dec c
    ld a, [c]
    inc bc
    db $fc
    add e
    ld a, h
    rst $00
    jr c, jr_03b_64f0

    call c, Call_000_1ee1
    sub $29
    ld a, [c]
    dec c
    jp z, $c805

    rlca
    ret z

    rlca
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    ld a, c

jr_03b_64e1:
    add [hl]
    ld a, c
    add [hl]
    ld a, h
    add a
    ld a, h
    add a
    inc a

jr_03b_64e9:
    rst $00
    inc a
    jp $c13e


    cp a
    ld b, b

jr_03b_64f0:
    ccf
    ld b, b
    sbc h
    ld h, e
    ld [hl], h
    rst $38
    db $fc
    rst $38
    dec a
    cp $05
    cp $8a
    ld [hl], l
    ld c, $f1
    jr nz, jr_03b_64e1

    inc h
    db $db
    ld h, [hl]
    sbc c
    ld l, b
    sbc a
    jr z, jr_03b_64e9

    ld [$71ff], sp
    adc [hl]
    ld sp, $84ce
    rst $38
    or h
    rst $08
    sub h
    rst $28
    sub h
    rst $28
    add [hl]
    rst $38
    add [hl]
    rst $38
    add $ff
    add $fd
    ld [c], a
    db $fd
    ld [c], a
    db $fd
    db $e3
    db $fc
    pop bc
    cp $c5
    cp d
    add $39
    db $e3
    inc e
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38

jr_03b_6537:
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ldh [$1f], a
    ldh [$1f], a
    pop bc
    ld a, $80
    ld a, a
    add b
    ld a, a
    inc b
    ei
    nop
    rst $38
    db $10
    rst $28
    nop
    rst $38
    jr nz, jr_03b_6537

    ld b, b
    cp a
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
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    rrca
    ldh a, [$3f]
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
    sbc e
    nop
    db $fd
    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp [hl]
    rst $38
    sbc $ff
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rrca
    rst $38
    adc h
    rst $38
    or $9f
    rst $38
    rst $38
    ld a, h
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp e
    rst $38
    ei
    rst $30
    ei
    rst $30
    rst $38
    and a
    rst $38
    rst $20
    di
    rst $38
    ld h, l
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    db $fc
    rst $08
    db $fc
    jp $8bf4


    add e
    ld a, h
    adc e
    ld [hl], h
    add l
    ld a, d
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add hl, de
    and $35
    jp nz, $c23d

    db $fd
    ld [bc], a
    add hl, bc
    or $09
    or $01
    cp $80
    ld a, a
    ld h, b
    rst $38
    ld e, b
    rst $20
    ld a, [hl]
    pop bc
    dec c
    di
    ld bc, $08ff
    rst $30
    ld b, $f9
    ld h, d
    db $fd
    ret nz

    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ld a, b
    rst $38
    jr c, @+$01

    ld hl, sp-$01
    ld a, h
    rst $38
    ld a, b
    rst $38
    ld a, h
    rst $38
    ld e, l
    cp $7c
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld [hl], d
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld [hl], h
    rst $38
    inc a
    rst $38
    inc [hl]
    ei
    ld l, $f1
    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [$3f]
    ret nz

    ccf
    ret nz

    rst $18
    jr nz, @+$01

    nop
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    cp $01
    db $fc
    inc bc
    ld a, b
    add a
    jr c, @-$37

    or b
    ld c, a
    pop hl
    ld e, $c2
    dec a
    add d
    ld a, l
    call nz, $c83b
    scf
    ld [hl], b
    adc a
    ldh a, [rIF]
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
    rlca
    ld hl, sp+$07
    ld hl, sp+$0e
    pop af
    rrca
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$7f], a
    add b
    cp a
    ld b, b
    dec b
    ld a, [$7f80]
    rst $38
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
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ei
    inc b
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    push de
    rst $38
    rst $38
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
    rst $38
    nop
    rst $38
    nop
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
    ret nz

    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    and b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add c
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add [hl]
    ld a, c
    add d
    ld a, l
    inc bc
    db $fc
    ld c, b

jr_03b_66bf:
    cp a
    nop
    rst $38
    ld [bc], a
    db $fc
    rlca
    ld hl, sp+$03
    ld hl, sp-$79
    ld a, b
    add c
    ld a, [hl]
    and b
    ld a, a
    ret z

    ccf
    ret c

    cpl
    ld d, b
    ccf
    ld d, a
    jr c, @+$62

    rra
    ld h, b
    rra
    ldh a, [rIF]
    ldh a, [rIF]
    jr z, jr_03b_66bf

    ld l, d
    sbc a
    adc h
    rst $38
    db $ec
    rst $38
    adc $ff
    adc [hl]
    rst $38
    ld c, $ff
    rrca
    rst $38
    ld c, $ff
    ld c, $ff
    ld c, $ff
    rrca
    rst $38
    ld c, $ff
    rrca
    rst $38
    rlca
    rst $38
    dec c
    rst $38
    ld b, b
    rst $38
    ld b, h
    ei
    ld c, a
    ldh a, [rSTAT]
    cp $07
    ld hl, sp+$67
    cp b
    inc bc
    db $fc
    ld b, a
    cp b
    scf
    ret z

    scf
    ret z

    rla
    add sp, -$6a
    ld l, c
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ld sp, hl
    ld b, $e2
    dec e
    call z, $8033
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
    ld bc, $00fe
    rst $38
    ld bc, $01fe
    cp $10
    rst $28
    rra
    ldh [rNR33], a
    ld [c], a
    ld c, $f1
    ld [bc], a
    db $fd
    add b
    ld a, a
    ld [hl], b
    adc a
    db $ed
    ld [de], a
    ei
    inc b
    cp e
    ld b, h
    or $09
    rst $30
    ld [$10ef], sp
    rst $28
    db $10
    rst $18
    jr nz, jr_03b_6768

    db $f4
    sub b
    ld l, a
    cp a
    ld b, b
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop

jr_03b_6768:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld e, a
    nop
    rst $18
    nop
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    jp nz, $e3ff

    rst $38
    db $e3
    rst $38
    rst $20
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    ld [hl], e
    rst $38
    ld h, c
    rst $18
    ld h, b
    rst $38
    ld h, b
    rst $18
    ld [hl], c
    rst $38
    ld [hl], c
    cp $79
    rst $38
    dec sp
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    sbc b
    rst $38
    inc e
    rst $38
    ld c, $ef
    ld b, $f7
    nop
    db $fd
    ld b, $ff
    ld c, $2b
    pop af
    cp a
    ld [hl], c
    ld [hl], a
    add hl, sp
    xor c
    ld a, a
    xor c
    ld e, a
    or b
    ld a, a
    inc sp
    db $fc
    inc e
    rst $38
    ld bc, $d9ff
    ccf
    ld a, c
    rra
    ld [$fcff], sp
    rst $38
    db $fc
    rst $38
    ld e, h
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    ld e, h
    rst $38
    ld e, h
    rst $38
    ld e, l
    rst $38
    ld e, a
    rst $38
    ld c, h
    rst $38
    ld b, b
    rst $38
    ld c, c
    or $4c
    di
    ld c, [hl]
    pop af
    rrca
    ldh a, [rBGP]
    ld hl, sp+$3f
    ret nz

    ld a, a
    add b
    cp [hl]
    pop bc
    call c, $8823
    ld [hl], a
    pop af
    ld c, $f0
    rrca
    ldh [$1f], a
    call nz, $803b
    ld a, a
    nop
    rst $38
    nop
    rst $38

jr_03b_6804:
    nop
    rst $38
    nop
    rst $38
    ld bc, $82fe
    ld a, l
    ld bc, $03fe
    db $fc
    inc bc
    db $fc
    ld [bc], a
    db $fd
    ld bc, $00fe
    rst $38
    inc bc
    db $fc
    inc bc
    db $fc
    ld bc, $3bfe
    call nz, $807f
    rrca
    ldh a, [rSB]
    cp $32
    call $837c
    dec a
    jp nz, $8778

    ei
    inc b
    inc sp
    call z, $ff00
    add b
    ld a, a
    ld c, a
    or b
    rst $08
    jr nc, @-$2f

    jr nc, jr_03b_6804

    jr c, jr_03b_684e

    ldh a, [$3f]
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    rst $30
    ld [$10ef], sp
    cp a
    ld b, b

jr_03b_684e:
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
    rst $38
    nop
    rst $38
    nop
    rla
    add sp, -$02
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
    ld a, [de]
    rst $38
    rla
    rst $38
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    db $fc
    ccf
    rst $38
    cpl
    ld hl, sp-$01
    cp $ff
    cp $f7
    rst $38
    add a
    rst $38
    rst $30
    rst $30
    rst $38
    rst $30
    rst $38
    ld sp, hl
    ld a, a
    db $fc
    ccf
    cp $7f
    cp $7f
    rst $38
    db $db
    ld a, a
    set 7, a
    set 7, a
    rst $38
    ld a, [c]
    ld a, a
    ldh a, [$7f]
    ld e, b
    ld a, a
    db $fc
    ccf
    db $fc
    ccf
    ret z

    rst $38
    adc $ff
    adc [hl]
    rst $38
    ld l, a
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    cp a
    ld a, a
    sbc a
    ld l, a
    rst $20
    ld h, a
    rst $38
    daa
    ld a, a
    rlca
    ccf
    rrca
    ccf
    rlca
    cp a
    inc bc
    rst $38
    inc bc
    cp a
    nop
    cp h
    nop
    db $fc
    nop
    db $fc
    nop
    ld b, a
    rst $38
    ld b, e
    db $fc
    ld c, a
    ldh a, [rVBK]
    ldh a, [rIF]
    ldh a, [$87]
    ld a, b
    cp h
    ld b, e

jr_03b_68de:
    cp h
    ld b, e
    ld sp, hl
    ld b, $fa
    dec b
    ldh a, [rIF]
    nop
    rst $38
    sub b
    ld l, a
    sub b
    ld l, a
    db $10
    rst $28
    nop
    rst $38
    ld bc, $00fe
    rst $38
    inc bc
    db $fc
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$2f]
    ret nc

    rra
    ldh [$1f], a
    ldh [$15], a
    ld [$807f], a
    rst $18
    jr nz, @+$01

    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$00ff], sp
    inc bc
    db $fc
    ld c, a
    or b
    rst $18
    jr nz, @-$1f

    jr nz, jr_03b_68de

    ld b, b
    cp a
    ld b, b
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
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    sub a
    ld l, b
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld e, a
    rst $38
    db $fd
    rst $38
    ld bc, $00ff
    rst $38
    nop
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
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    jr c, @+$01

    inc a
    rst $38
    inc a
    rst $38
    jr c, @+$01

    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc d
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    jr c, @+$01

    ldh a, [rIE]
    ldh [rIE], a
    ld hl, sp-$01
    db $fc
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
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    inc h
    nop
    nop
    nop
    xor h
    nop
    add e
    rst $38
    jp $cb3f


    ccf
    sbc a
    ld a, a
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
    inc b
    ei
    ld [$0df7], sp
    ld a, [c]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$807f], sp
    rst $38
    nop
    rst $38
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
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
    rrca
    ldh a, [$fd]
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
    cp $01
    cp $01
    cp $01
    rst $38
    nop
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    ei
    inc b
    ei
    inc b
    rst $38
    nop
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$00ff], sp
    jp nc, $ef2d

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
    di
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
    ret nz

    rst $38
    nop
    rst $38
    nop
    pop af
    nop
    ld sp, hl
    nop
    db $fd
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    sbc $00
    add sp, $00
    ldh a, [rP1]
    ld hl, sp+$00
    ldh [rP1], a
    ld hl, sp+$00
    ldh a, [rP1]
    cp $00
    cp $00
    db $fd
    nop
    rst $30
    nop
    rst $38
    nop
    ld sp, hl
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    jr nc, @+$01

    or b
    rst $38
    ld c, l
    ret nz

    rst $38
    nop
    jr nc, @+$01

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
    db $fd
    rst $38
    rst $28
    rst $30
    db $e3
    rst $38
    pop af
    rst $38
    rst $30
    ld sp, hl
    db $ec
    di
    ld a, a
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$1f
    ldh [$7b], a
    add h
    cp $01
    cp $01
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ld sp, hl
    ld b, $fb
    inc b
    ei
    inc b
    ei
    inc b
    add b
    ld a, a
    nop
    rst $38
    ld [bc], a
    rst $38
    add d
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    nop
    ld [hl], $c9
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
    db $f4
    dec bc
    rst $38
    nop
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
    rst $18
    add c
    rst $38
    nop
    cp a
    rst $18
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $1100
    nop
    rst $30
    nop
    ldh [rP1], a
    add b
    nop
    adc a
    nop
    ret nz

    nop
    ld b, b
    nop
    nop
    nop
    jr c, jr_03b_6b45

jr_03b_6b45:
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
    add b
    nop
    ret z

    nop
    ld sp, hl
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    rst $20
    nop
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
    rst $38
    ei
    rst $38
    rst $38
    nop
    ret z

    nop
    nop
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_03b_6b78:
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    jr nz, @+$01

    di
    db $fc
    ld bc, $d3fe
    inc l
    and e
    ld e, h
    ld a, [de]
    db $fd
    ld sp, hl
    rst $38
    ld b, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, b
    or a
    rst $18
    jr nz, jr_03b_6b78

    jr nz, jr_03b_6bb2

    ld hl, sp+$07
    ld hl, sp-$01
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_03b_6bb2:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    jp c, $ff25

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    cp $ff
    rst $20
    rst $38
    xor a
    rst $38
    nop
    ld a, [hl]
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
    ld b, a
    nop
    ld b, e
    nop
    rst $08
    nop
    ccf
    nop
    rrca
    nop
    rrca
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    rrca
    nop
    rrca
    nop
    cpl
    nop
    rra
    nop
    dec bc
    nop
    rlca
    nop
    rst $28
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
    ld bc, $01ff
    rst $38
    add b
    rst $38
    add a
    rst $38
    rst $38
    nop
    inc bc
    nop
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
    ccf
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
    rrca
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    cp [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ld hl, sp+$07
    cp b
    ld b, a
    ld sp, hl
    ld b, $f9
    ld b, $ff
    nop
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    rst $38
    nop
    db $fd
    ld [bc], a
    ld a, l
    add d
    ldh [$1f], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fc
    inc bc
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    cp l
    ld b, d
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
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
    ld a, l
    add d
    ldh a, [rIF]
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    rst $38
    ld de, $68ff
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    rst $38
    inc bc
    rst $38
    ccf
    rst $38
    ld [hl], a
    rst $38
    ld a, l
    rst $38
    ld bc, $01ff
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    db $10
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $08
    ld b, $ff
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    rlca
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    rlca
    rst $38
    ld bc, $01ff
    rst $38
    and h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    cp a
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
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    pop hl
    cp $d1
    cp $f1
    cp $89
    cp $01
    cp $00
    rst $38
    ld bc, $01fe
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ldh a, [rIF]
    cp [hl]
    ld b, c
    cp $01
    ei
    inc b
    ld sp, hl
    ld b, $fc
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
    cp $01
    rst $38
    nop
    rst $38
    nop
    ret z

    scf
    rst $38
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
    db $fd
    ld [bc], a
    rst $28
    db $10
    or $09
    ld a, h
    add e
    cp h
    ld b, e

jr_03b_6d66:
    ld hl, sp+$07
    ldh a, [rIF]
    nop
    rst $38
    add sp, $17
    rst $38
    nop
    ld a, [$f805]
    rlca
    ret c

    daa
    db $ec
    inc de
    db $ec
    inc de
    pop af
    ld c, $f0
    rrca
    rst $20
    jr jr_03b_6d66

    ld a, [de]
    sbc $21
    xor $11
    pop af
    ld c, $f5
    ld a, [bc]
    rst $38
    nop
    cp [hl]
    ld b, c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rla
    add sp, -$10
    rrca
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
    cp $00
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    cp $bf
    cp $ef
    cp $ff
    db $fc
    rst $38
    rst $38
    rst $38
    ld a, [$f87f]
    ld a, a
    cp $3f
    cp $0f
    db $fc
    ld e, a
    ld sp, hl
    ld e, a
    db $fc
    ld a, a
    ldh a, [$7f]
    ldh a, [$7f]
    ldh a, [rIE]
    ldh a, [rP1]
    rrca
    ld [bc], a
    dec e

jr_03b_6dd4:
    ld b, $09
    ld b, $09
    ld b, $09
    dec b
    ld a, [bc]
    rlca
    jr @+$09

    jr jr_03b_6de8

    jr jr_03b_6dea

    jr @+$09

    jr jr_03b_6dea

    inc e

jr_03b_6de8:
    dec c
    ld [hl-], a

jr_03b_6dea:
    rra
    jr nz, jr_03b_6dfe

    ld a, $1b
    inc a
    rlca
    jr z, @+$05

    inc l
    dec c
    ld l, $07
    jr c, jr_03b_6df9

jr_03b_6df9:
    ccf
    ret nz

    rst $38
    ldh a, [rIE]

jr_03b_6dfe:
    pop af
    rst $38
    jr nz, @+$01

    jr nc, @+$01

    nop
    rst $38
    or b
    ld c, a
    or b
    ld c, a
    or b
    ld c, a
    or b

jr_03b_6e0d:
    ld c, a
    push hl
    dec de
    ld hl, $eddf
    inc de
    call $8c13
    inc de
    ld [$e597], sp
    ld a, [de]
    add b
    ld a, a

jr_03b_6e1e:
    cp a
    ld b, b
    cp e
    ld b, h
    dec sp
    call nz, $c43b
    db $db
    inc h
    ld a, [de]

jr_03b_6e29:
    push hl
    sbc e
    ld h, h
    jr nz, jr_03b_6e0d

    db $eb
    inc d
    xor [hl]
    ld d, c
    rst $28
    db $10
    rst $08

jr_03b_6e35:
    jr nc, jr_03b_6e1e

    jr @-$77

    ld a, b
    push hl
    jr jr_03b_6dd4

    ld l, b
    db $eb
    inc d
    ei
    inc b
    ret


    ld [hl], $e7
    jr @-$09

    ld a, [bc]
    ld [hl], a
    adc b
    ld a, a

jr_03b_6e4b:
    add b
    jr jr_03b_6e35

    add b
    ld a, a
    ld c, d
    or l
    jp nz, $603d

    sbc a
    reti


    ld h, $f9
    ld b, $01
    cp $00

jr_03b_6e5d:
    rst $38
    ldh a, [rIF]
    jr c, jr_03b_6e29

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

jr_03b_6e7a:
    jr nc, jr_03b_6e4b

    jr nz, jr_03b_6e5d

    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    add b
    ld a, a
    xor $11
    jp z, $c635

    add hl, sp
    jp $5a3c


    and l
    pop bc
    ld a, $e8
    rla
    cp $01
    rst $38
    nop
    cp $01
    nop
    rst $38
    add sp, $17
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ld [$bdff], sp
    rst $38
    nop

jr_03b_6ea9:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    ld a, [bc]
    rst $38
    inc b
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ld a, a
    rst $38
    ld de, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_03b_6ea9

    ld sp, $39ce
    add $7f
    add b
    ld c, a
    add b
    ld e, a
    add b
    ld e, a
    add b
    ccf
    add b
    cp a
    nop
    sbc h
    inc bc
    ld a, b
    add a
    ldh a, [rIF]
    jp nz, $c73f

    ld a, $d9
    ld h, $ed
    ld [bc], a
    db $dd
    ld [hl+], a
    push de
    ld [hl+], a
    rst $10
    jr z, jr_03b_6e7a

    ld a, h
    add e
    ld a, h
    adc d
    ld a, l
    add e
    ld a, h
    sbc e
    ld a, h
    ld [de], a
    db $ed
    ld d, b
    xor a
    nop
    rst $38
    add h
    ei
    ld c, h
    ei
    add [hl]
    ld sp, hl
    adc a
    ldh a, [$9f]
    ldh [$88], a
    rst $30
    sub b
    rst $38
    sub b
    rst $38
    ld de, $80fe
    rst $38
    add b
    rst $38
    ld [$00f7], sp
    rst $38
    ld bc, $c1fe
    ld a, [hl]
    ld b, b
    rst $38
    ld b, b
    rst $38
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
    ldh a, [rIF]
    nop
    rst $38
    ret nc

    cpl
    ret nc

    cpl
    ld de, $d1ef
    cpl
    ld hl, sp+$07
    ld hl, sp+$07
    db $f4
    rrca
    add b
    ld a, a
    sub a
    ld l, b
    cp a
    ld b, b
    xor h
    ld d, e
    cp a
    ld b, b
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
    cp $01
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld e, [hl]
    add c
    ld l, [hl]
    add c
    cp h
    ld b, e
    xor h
    ld b, e
    cp l
    ld b, d
    cp l
    ld b, d
    ld e, c
    and [hl]
    ld a, c
    add [hl]
    ld a, b
    add a
    ld a, c
    add [hl]
    ccf
    ret nz

    rrca
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$17
    add sp, $17
    add sp, $13
    db $ec
    inc de
    db $ec
    ld [bc], a
    db $fc
    ld a, [bc]
    db $f4
    add hl, bc
    or $09
    or $05
    ld a, [$fa05]
    add h
    ld a, e
    add h
    ld a, e
    or $09
    ld a, [$ea05]
    dec d
    ld a, [$7b05]
    add h
    ld a, a
    add b
    ld a, l
    add d
    ld bc, $e1fe
    ld e, $ff
    nop
    cp $00
    ld b, b
    nop
    ld e, $00
    sbc a
    nop
    sbc a
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld l, d
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    ld a, a
    add sp, $7f
    ret z

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
    ret nz

    daa
    ldh [rNR22], a
    or b
    ld c, a
    ldh [rNR22], a
    ret nz

    daa
    add b
    ld l, a
    add b
    ld a, [hl]
    add b
    ld a, [hl]
    ld b, b
    cp [hl]
    ld h, b
    sbc [hl]
    nop
    cp $24
    sbc $00
    db $fc
    db $10
    db $fc
    add c
    ld a, [hl]
    push bc
    ld a, $e1
    ld e, $21
    sbc [hl]
    ld a, [c]
    inc c
    ld [hl-], a
    call z, $8876
    ld b, l
    cp b
    dec b
    ld hl, sp+$2d
    ldh a, [rNR51]
    ld hl, sp+$2f
    ldh a, [$9b]
    ld [hl], b
    sbc d
    ld [hl], c
    adc d
    ld [hl], c
    ld a, [de]
    pop hl
    jp c, $9621

    ld h, c
    ld [hl], $c1
    inc [hl]
    jp $c334


    ld h, h
    add e
    db $ec
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    inc l
    jp $fd4a


    ld d, b
    rst $28
    ret z

    rst $38
    ld c, l
    cp $48
    rst $38
    ld b, h
    rst $38
    and [hl]
    reti


    and [hl]
    reti


    and [hl]
    reti


    add e
    db $fd
    ld [bc], a
    db $fd
    inc b
    ei
    ld d, [hl]
    xor c
    ld b, [hl]
    cp c
    call nz, $8c3b
    ld [hl], e
    adc h
    ld [hl], e
    adc h
    ld [hl], e
    add h
    ld a, e
    add h
    ld a, e
    nop
    rst $38
    ld b, c
    cp a
    ld h, c
    sbc a
    ld b, e
    cp a
    ld b, e
    cp a
    pop af
    rrca
    ldh [$1f], a
    ldh a, [rIF]
    db $e4
    dec de
    pop hl
    ld e, $07
    ld hl, sp-$04
    inc bc
    ld sp, hl
    ld b, $e3
    inc e
    ld [c], a
    dec e
    ld [c], a
    dec e
    rst $38
    nop
    rst $38
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
    rst $38

jr_03b_707d:
    nop
    rst $38

jr_03b_707f:
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld c, a
    nop
    rla
    nop
    dec hl
    nop
    sub a
    nop
    adc a
    nop
    adc a
    nop
    rrca
    add b
    ld d, e
    add b
    ld a, a
    add b
    rra
    ldh [rP1], a
    rst $38
    nop
    rst $38
    and b
    ld e, a
    ld [$0100], a
    nop
    add l
    nop
    add a
    nop
    rst $10
    nop
    rst $38
    inc b
    rst $38
    inc c
    rst $38
    rra
    rst $38
    dec e
    cp $1f
    cp $3f
    rst $38

jr_03b_70b7:
    rra
    rst $38
    rra
    rst $38
    rra
    cp $3f
    rst $38
    ccf
    rst $18
    ccf
    rst $38
    ccf
    rst $18
    ld a, e
    rst $38
    ld a, e
    xor $7f
    xor $77
    jp hl


    rst $38
    jp hl


    rst $38
    jp $d9ff


    rst $18
    pop de
    rst $18
    jr jr_03b_70b7

    ld e, $df
    ld a, [hl-]
    sbc a
    jr c, jr_03b_707d

    jr nc, jr_03b_707f

    inc sp
    sbc a
    daa
    sbc a
    ld h, a
    xor a
    ld a, [hl]
    ld a, $7e
    ld a, $7e
    ld a, $7d
    inc a
    ld a, l
    inc a
    db $fd
    ld a, h
    db $fd
    ld a, h
    db $fd
    ld a, h
    db $fd
    ld a, h
    db $fd
    ld a, h
    db $fd
    ld a, h
    db $fd
    db $fc
    db $fd
    db $fc
    db $dd
    adc h
    db $dd
    adc h
    cp $86
    rst $28
    adc a
    rst $38
    rst $08
    rst $38
    adc [hl]
    rst $38
    sbc h
    rst $38
    sbc b
    ld b, a
    cp b
    ld c, a
    cp d
    rra
    ld hl, sp+$4b
    cp h
    ld l, h
    sbc a
    rrca
    rst $38
    rra
    cp $0f
    cp $0f
    ld a, [c]
    rlca
    ld hl, sp+$7b
    add h
    ld h, e
    inc e
    push bc
    ld a, $85
    ld a, [hl]
    sbc a
    ld a, h
    inc de
    db $fc
    rst $00
    ld hl, sp-$11
    ldh a, [rIE]
    ldh [$7f], a
    ldh [$fe], a
    ret nz

    ld e, a
    ldh [$ef], a
    ldh a, [$ef]
    ldh a, [$f4]
    rst $28
    rst $30
    rst $28
    rst $30
    rst $28
    cp e
    rst $20
    rst $18
    db $e3
    call c, $cce3
    di
    call nz, $c4fb
    ei
    push bc
    ei
    reti


    rst $20
    adc c
    rst $30
    dec hl
    rst $10
    and d
    ld e, a
    or d
    ld c, a
    ret nc

    cpl
    pop de
    ld l, $91
    ld l, [hl]
    ld de, $11ee
    xor $82
    ld a, l
    add [hl]
    ld a, l
    and [hl]
    ld e, l
    adc d
    ld a, l
    ld b, h
    cp e
    ld c, h
    cp e
    call nz, $c03b
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$0f
    ret nz

    ccf
    add sp, $17
    add sp, $17
    ret nz

    ccf
    ret nz

    ccf
    jp Jump_03b_5f3c


    and b
    xor a
    ld b, b
    xor a
    ld b, b
    cp a
    ld b, b
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    cp $07
    db $fc
    ccf
    rst $38
    ld a, a
    pop af
    ld a, a
    rst $18
    rst $38
    db $fd
    rst $38
    ld a, c
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    set 7, a
    di
    rst $38
    jp $e7ff


    rst $38
    rst $00
    rst $38
    add e
    rst $38
    add $ff
    add $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    rst $18
    rst $00
    rst $18
    jp $81bf


    cp a
    add b
    cp a
    add b
    ld a, [hl]
    ld bc, $037c
    ld a, h
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    pop af
    rrca
    rst $30
    ld c, $fb
    ld c, $e5
    dec de
    rst $00
    jr c, @-$6f

    ld [hl], b
    ccf
    ret nz

    ccf
    ret nz

    ld a, [bc]
    push af
    cpl
    ret nc

    ld h, b
    sbc a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, h
    nop
    rst $38
    nop
    ccf
    nop
    ld sp, hl
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
    cp $01
    cp $01
    or $09
    or $09
    db $f4
    dec bc
    ld h, h
    dec de
    cp a
    inc bc
    add h
    inc bc
    ldh [rTAC], a
    ld [$f805], a
    dec b
    cp $01
    db $76
    adc c
    ld [hl], e
    adc h
    ld [hl], b
    adc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ldh [$1f], a
    sbc b
    rst $38
    sbc [hl]
    rst $38
    db $fc
    rst $38
    cp [hl]
    rst $38
    ld a, $ff
    ld [$8bff], sp
    ld a, h
    adc [hl]
    ld a, a
    rrca
    rst $38
    rrca
    rst $38
    ld c, a
    cp a
    rlca
    rst $38
    rra
    rst $38
    rra
    rst $38
    cp a
    ld a, a
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, l
    rst $38
    or c
    rst $38
    ldh a, [$bf]
    ld d, b
    cp a
    sbc b
    rst $38
    ld [$3cff], sp
    rst $08
    scf
    rst $08
    ld a, a
    add a
    ei
    rlca
    rst $38
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    rst $38
    ld bc, $817e
    nop
    rst $38
    ld bc, $ffff
    rra
    ldh a, [$1f]
    pop hl
    rra
    db $e3
    sbc $e7
    sbc [hl]
    rst $28
    cp h
    rst $08
    ld hl, sp-$31
    ld hl, sp-$21
    ldh a, [$df]
    ldh a, [$9f]
    ldh [$9e], a
    ldh [$bf], a
    ldh [$bf], a
    ld [c], a
    cp l
    jp nz, $c0bf

    db $fd
    ret nz

    ld l, e
    ret nz

    rst $38
    ret nz

    ld e, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ccf
    db $e3
    ccf
    call c, $e03f
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    add b
    ld a, a
    ld a, [hl]
    ldh [rNR34], a
    ldh a, [$0e]
    cp $00
    cp $00
    cp $05
    ld hl, sp+$0d
    ldh a, [$0c]
    pop af
    inc c

jr_03b_72f1:
    pop af
    ld b, $f9
    rlca
    ld sp, hl
    rlca
    ei
    rst $38
    di
    db $ec
    inc de
    ldh a, [rTAC]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$07
    push hl
    rrca
    rst $30
    rrca
    cp [hl]
    ld c, a
    cp l
    ld c, [hl]
    inc l
    db $db
    rst $20
    jr jr_03b_72f1

    rra
    ld [c], a
    rra
    jp nz, $d13f

    cpl
    call c, $fe23
    ld bc, $41be
    cp [hl]
    ld b, c
    adc $01
    ld c, a
    add b
    ld e, [hl]
    add c
    ld e, [hl]
    add c
    ld e, [hl]
    add c
    db $10
    rst $28
    ld bc, $19ff
    rst $30
    inc [hl]
    ei
    db $76
    ld sp, hl
    or $f9
    db $fc
    di
    ld a, $f1
    rrca
    ldh a, [rNR31]
    db $fc
    ld a, [hl-]
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    inc e
    rst $38
    ld a, a
    add b
    adc a
    nop
    sbc a
    nop
    ld a, a
    add b
    rrca
    ldh a, [$b8]
    ld a, a
    ld a, $ff
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
    cp $fe
    cp $fc
    cp $fc
    cp $f8
    cp $fc
    cp $ff
    db $fc
    ld sp, hl
    db $fc
    ld a, [$ebfc]
    db $fc
    ld e, a
    ld hl, sp+$07
    ld hl, sp-$79
    ld hl, sp-$39
    ld hl, sp+$57
    ld hl, sp+$77
    ld hl, sp-$09
    ld hl, sp-$05
    db $f4
    rst $38
    ldh a, [$e7]
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$71
    ldh a, [$bf]
    ret nz

    cp h
    jp $cff0


    ldh a, [$cf]
    rra
    rst $38
    rst $38
    add e
    rst $38
    ld hl, $b1fb
    rst $38
    add hl, de
    rst $38
    add hl, bc
    cp a
    inc c
    rst $38
    add hl, bc
    cp $0d
    rst $38
    add hl, bc
    rst $30
    add hl, bc
    rst $38
    add hl, bc
    or $0b
    cp $0b
    cp $1b
    rst $38
    inc de
    xor $17
    db $fd
    scf
    db $fd
    daa
    rst $38
    ld h, [hl]
    rst $38
    ld e, [hl]
    rst $28
    ld e, $ef
    ld a, $cf
    inc a
    ld b, b
    sbc a
    ret z

    rla
    ret z

    rla
    sub b
    cpl
    sbc b
    daa
    jr c, jr_03b_7423

    jr c, jr_03b_7425

    jr nc, jr_03b_742f

    ld sp, $37cf
    rst $08
    ld a, c
    rst $18
    ld h, b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $82ff
    cp $c3
    cp $b2
    rst $38
    cp a
    call z, $c0bf
    xor $91
    nop
    rst $38
    rlca
    ld hl, sp+$07

jr_03b_7409:
    ld hl, sp+$03
    db $fc
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ret nz

    ccf
    ldh [$1f], a
    ret nz

    ccf
    ld b, b
    cp a
    inc [hl]
    srl h
    jp $ff00


    jr jr_03b_7409

    nop

jr_03b_7423:
    rst $38
    nop

jr_03b_7425:
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

jr_03b_742f:
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    dec bc
    db $f4
    ld e, [hl]
    ldh [rNR50], a
    ret c

    sbc l
    ld a, [hl]
    jr nc, @+$01

    jr nz, @+$01

    and b
    rst $38
    ld hl, sp-$01
    cp $ff
    cp $ff
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    ld de, $c1fe
    ld a, $e1
    ld a, $ad
    ld a, [hl]
    cp l
    ld a, [hl]
    db $fd
    ld a, [hl]
    db $fd
    ld a, [hl]
    ld a, l
    cp $fd
    cp $e1
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
    di
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    ldh [rP1], a
    ld [hl], b
    nop
    cp h
    nop
    sbc a
    ld b, b
    ld c, a
    ldh [$63], a
    ldh a, [$bd]
    ld a, b
    cp h
    ld a, [hl]
    rst $18
    ccf
    rst $18
    ccf
    adc a
    ld a, a
    adc a
    ld a, a
    rrca
    rst $38
    sbc a
    ld a, a
    ccf
    rst $38
    ld a, $ff
    ld a, l
    cp $71
    cp $71
    cp $00
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
    db $10
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_03b_74d5

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    db $10
    jr nz, jr_03b_74e6

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_03b_74f6

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_03b_7506

jr_03b_74d5:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_03b_7516

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_03b_74e6:
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

jr_03b_74f6:
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld c, d
    ld e, b
    ld e, c
    ld c, d
    ld c, d
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a

jr_03b_7506:
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
    ld l, a

jr_03b_7516:
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld c, d
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    db $10
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    ld c, d
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
    ld a, [hl]
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
    ld a, [hl]
    sbc h
    sbc l
    sbc [hl]
    ld c, d
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
    ld c, d
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
    ld c, d
    ld c, d
    cp a
    ld c, d
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    jp z, $3ccb

    ld c, d
    call z, $cecd
    rst $08
    db $10
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
    jr nz, jr_03b_75f6

    ld [hl+], a
    inc hl
    db $10
    inc h
    dec h
    ld h, $27
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    ld b, $06
    rlca
    ld b, $06
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101

jr_03b_75f6:
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0601
    ld b, $07
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0606
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    ld bc, $0606
    nop
    ld b, $07
    rlca
    ld bc, $0101
    ld bc, $0001
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $01
    ld bc, $0101
    ld bc, $0000
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld b, $01
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld b, $01
    ld bc, $0101
    ld bc, $0100
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld b, $01
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld b, $01
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld b, $06
    ld bc, $0101
    ld bc, $4101
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    inc b
    rlca
    rlca
    rlca
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0706
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0601
    rlca
    rlca
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
    ld c, $0e
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
    add hl, bc
    add hl, bc
    ld c, $0e
    rrca
    rrca
    rrca
    ld c, $09
    ld bc, $0909
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rst $38
    nop
    rst $38
    ld d, b
    rst $38
    nop
    rst $38
    db $ec
    rst $38
    db $ed
    rst $38
    pop hl
    rst $38
    rst $00
    rst $38
    di
    rst $38
    ldh a, [rIE]
    pop hl
    rst $38
    add c
    rst $38
    pop bc
    rst $38
    ld [hl], c
    rst $38
    ld hl, sp-$01
    add sp, -$01
    ld hl, sp+$04
    ld a, e
    inc b
    rlc [hl]
    ld bc, $0502
    ld [bc], a
    ld bc, $0201
    ld bc, $0102
    ld [bc], a
    ld h, a
    cp $03
    cp $3d
    cp $21
    rst $38
    add c
    cp $07
    cp $0b
    rst $38
    ld c, e

jr_03b_775f:
    rst $38
    sbc h
    rst $38
    sbc e
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    add $ff
    adc l
    cp $1b
    db $fc
    rlca

jr_03b_7773:
    db $fc
    rst $18
    ld hl, sp-$07
    ld hl, sp-$17
    jr jr_03b_7773

    db $10
    ld hl, sp+$00
    cp $00
    nop
    rst $38
    nop
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

    jr nc, jr_03b_775f

    or b
    ld c, a
    sbc c
    ld h, a
    sbc c
    ld h, a
    ld h, c
    rst $38
    ld [$fbff], a
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    ld h, a
    rst $38
    db $e3
    rra
    pop af
    rrca
    ld a, [c]
    dec c
    ei
    inc b
    ld h, l
    ld a, [de]
    ld b, [hl]
    add hl, de
    db $76
    dec c
    db $db
    daa
    cp l
    ld h, e
    ld e, l
    db $e3
    rst $28
    pop af
    adc $f1
    add d
    db $fd
    add c
    cp $c0
    rst $38
    pop hl

jr_03b_77c1:
    cp $f1
    cp $f0
    rst $38
    ld hl, sp-$01
    cp $ff
    cp $ff
    cp $ff
    ld b, a
    rst $38
    add e
    ld a, a
    add c
    ld a, a
    ld bc, $40ff
    cp a
    rst $18
    ccf
    rst $18
    ccf
    ld h, b
    sbc a
    ld h, b
    sbc a
    jr nz, jr_03b_77c1

    daa
    ret c

    rla
    add sp, $07
    ld hl, sp+$0f
    ldh a, [$03]
    db $fc
    add b
    ld a, a
    add $79
    sub a
    ld a, b
    sub e
    ld a, h
    db $eb
    inc e
    push af
    ld c, $f8
    rlca
    db $fc
    inc bc
    cp $01
    ld a, a
    add b
    rlca
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    sbc b
    ld a, a
    rst $30
    rrca
    ei
    rlca
    ld sp, hl
    rlca
    ld a, [c]
    rrca
    ldh [$1f], a
    pop hl
    ld e, $c1
    ld a, $81
    ld a, [hl]
    ld [bc], a
    db $fd
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
    nop
    rst $38
    nop

jr_03b_782d:
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ld e, h
    and e
    ld a, a
    add c
    rst $20
    add d
    and e
    call z, $c07f
    ld d, e
    ldh [rNR21], a
    pop hl
    jr c, jr_03b_782d

    call $8f32
    ld [hl], b
    add [hl]
    ld a, b
    ld d, $f8
    ld h, [hl]
    sbc b
    ld h, e
    sbc h
    db $d3
    inc c
    ld b, e
    adc h
    ld c, c
    adc [hl]
    ld h, c
    sbc [hl]
    add hl, de
    cp $9c
    rst $38
    adc h
    rst $38
    ld c, $ef
    call nz, Call_000_161f
    rst $38
    rst $30
    rst $38
    db $eb
    rst $30
    ld b, h
    rst $38
    add sp, $3f
    jr @+$01

    ld c, a
    rst $38
    rst $00
    rst $38
    or $ff
    db $e3
    rst $38
    di
    rst $38
    di
    rst $38
    pop af
    rst $38
    ld hl, sp-$01
    ld sp, hl
    rst $38
    db $fd
    rst $38
    cp $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $30
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl+]
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld e, b
    cp a
    ld e, a
    cp a
    rra
    rst $38
    rra
    rst $38
    dec c
    rst $38
    inc bc
    db $fc
    rla
    add sp, -$71
    ldh a, [$c7]
    ld hl, sp-$3f
    cp $a3
    db $fc
    ld h, e
    cp h
    and b
    ld a, a
    jr nz, @+$01

    rst $08
    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld a, b
    add a
    ld [hl], b

jr_03b_78df:
    adc a
    ldh [$1f], a
    pop bc
    ld a, $03
    db $fc
    ld [bc], a
    db $fd
    inc b
    ei
    inc c
    di
    adc b
    rst $30
    ret nz

    rst $38
    ld bc, $02fe
    db $fd
    add hl, bc
    or $0a
    push af
    jr @-$17

    nop
    rst $38
    inc bc
    db $fc
    jr nz, jr_03b_78df

    db $fd
    ld a, a
    ld sp, hl
    ccf
    add sp, $3f
    jp hl


    ccf
    db $fc
    rra
    db $fc
    rra
    xor $1f
    rst $20
    rra
    cp $0f
    rst $30
    rrca
    rst $38
    rrca
    db $fc
    rrca
    ld hl, sp+$0f
    ld a, [$ff07]
    rlca
    db $fd
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
    add b
    ld a, a
    ret nz

    ccf
    add b
    ld a, a
    inc c
    di
    rst $38
    nop
    ei
    inc b
    adc h
    rlca
    ld [bc], a
    dec b
    ld b, $01
    inc c
    inc bc
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    ld hl, sp+$07
    rst $38
    nop
    ld a, e
    add h
    ld a, a
    add b
    ld a, h
    add b
    ld a, $c0
    add hl, sp
    ret nz

    ld [hl], e
    add b
    db $76
    add c
    rlca
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    cp a
    rst $38
    add hl, sp
    rst $38
    add l
    ei
    call $c1fb
    rst $38
    pop af
    rst $38
    db $fc
    rst $38
    ld a, h
    rst $38
    ld [hl], b
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    sbc $fd
    ld l, b
    rst $38
    call z, $ccff
    rst $38
    adc [hl]
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    cp [hl]
    db $fd
    dec b
    ei
    inc c
    di
    ld e, $e1
    ccf
    ret nz

    rst $38
    add b
    sbc [hl]
    ldh [$c3], a
    db $fc
    ldh [rIE], a
    jr nc, @+$01

    ld hl, sp+$07

jr_03b_79a2:
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    rst $38
    nop
    cp $00
    rra
    ldh [rIE], a
    nop
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    add d
    ld a, l
    inc b
    ei
    ld [$08f7], sp
    rst $30
    ld de, $24ee
    db $db
    ld l, d
    sub l
    ld b, a
    cp b
    add a
    ld a, b
    rra
    ldh [$3c], a
    jp $e01f


    rrca
    ldh a, [rIF]
    ldh a, [$7f]
    add b
    rra
    ldh [$df], a
    jr nz, jr_03b_79a2

    ld b, b
    rst $18
    jr nz, jr_03b_7a16

    ret nc

    dec sp
    call nz, Call_000_00ff
    rst $38
    nop
    ccf
    ret nz

    rst $38
    jr nz, @+$01

    or b
    rst $38
    and b
    rst $38
    cp b
    rst $38
    db $fc
    ld a, e
    db $f4
    ei
    rst $30
    jp hl


    rst $38
    ld sp, hl
    cp $fd
    jp c, $eabd

    ld a, l
    ld [c], a
    db $fc
    db $e3
    inc e
    db $e3
    ld e, $f1
    ld e, $f1
    ld bc, $0306
    inc c
    inc bc
    inc c

jr_03b_7a16:
    inc bc
    adc h
    rlca
    ld b, h
    inc bc
    ld h, [hl]
    ld bc, $00e3
    db $e3
    sbc c
    ld h, [hl]
    inc de
    db $ec
    rlca
    ld hl, sp+$02
    db $fc
    ld c, $f0
    rrca
    ldh a, [rTIMA]
    ld hl, sp+$06
    ld sp, hl
    db $10
    rst $38
    ld [de], a
    rst $38
    dec b
    di
    dec de
    rst $20
    ld c, $ff
    inc c
    cp $03
    db $fc
    ld bc, $00fe
    rst $38
    ld bc, $80ff
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    rst $18
    ccf
    rst $18
    ccf
    rst $28
    rra
    ld d, a
    cpl
    ld c, a
    scf
    rst $20
    rra
    cpl
    rst $18
    xor a
    rst $18
    cp a
    rst $08
    or a
    rst $08
    scf
    rst $08
    scf
    rst $08
    sub a
    rst $28
    sub a
    rst $28
    rst $18
    rst $20
    set 6, a
    rst $00
    ei
    db $e3
    rst $38
    push hl
    ei
    ld h, l
    ei
    inc [hl]
    ei
    jr nc, @+$01

    inc de
    db $fc
    add hl, hl
    cp $03
    db $fc
    nop
    rst $38
    dec bc
    db $fc
    inc de
    db $ec
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$2e], a
    ldh a, [$8d]
    ldh a, [$2a]
    ret nc

    and a
    ret c

    add [hl]
    ld a, b
    pop bc
    inc a
    di
    inc c
    ei
    inc b
    nop
    rst $38
    nop
    rst $38
    ld bc, $80fe
    ld a, a
    ldh [$1f], a
    ld h, c
    ld e, $40
    ccf
    add l
    ld a, d
    add d
    ld a, l
    ld [$0bf7], sp
    db $f4
    rla
    add sp, $27
    ret c

    nop
    rst $38
    ld [$9ff7], sp
    ld h, b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    sbc a
    ld h, b
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
    ld a, a
    add b
    rst $38
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
    rst $38
    nop
    rst $38
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
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    add a
    rst $38
    rst $20
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    ei
    ccf
    db $fd
    rra
    rst $38
    rra
    cp $1f
    rst $38
    rrca
    rst $38
    rrca
    add b
    ld [hl], b
    ldh [$30], a
    ldh [$d0], a
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    ld h, h
    sbc b
    ld hl, sp+$00
    xor $01
    jp $c300


    nop
    dec [hl]
    ld [bc], a
    ld hl, $2302
    nop
    cp $01
    rst $38
    ld bc, $01ff
    ld a, a
    add c
    ld a, a
    add b
    cpl
    ret nc

    cp e
    ret nz

    ret z

    nop
    ld c, c
    nop
    cp a
    nop
    ld d, e
    cp a
    rra
    rst $38

jr_03b_7b44:
    cpl
    rst $18
    sub c
    xor $98
    rst $20
    ret nz

    rst $38
    add sp, -$09
    ldh [rIE], a
    ldh [rIE], a
    ld [c], a
    rst $38
    db $ec
    di
    db $ec
    di
    push af
    ei
    rst $30
    ld sp, hl
    di
    db $fd
    db $f4
    ei
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fd
    cp $f0
    rst $38
    ldh [rIE], a
    jp hl


    or $de
    db $e3
    cp [hl]
    pop bc
    rst $38
    add b
    rrca
    ldh a, [$c0]
    rst $38
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp $00
    ld a, l
    add b
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    add sp, $07
    ldh a, [rIF]
    or c
    ld c, $28
    rla
    ld c, d
    dec [hl]
    db $fd
    ld [bc], a
    sbc a
    ld h, b
    db $db
    inc h
    db $d3
    inc l
    xor a
    ld d, b
    db $fd
    ld [bc], a
    rst $08
    jr nc, jr_03b_7b44

    ld h, b

jr_03b_7ba6:
    ccf
    ret nz

    ld a, a
    add b
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
    ccf
    ret nz

    jp $fc3c


    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_03b_7bc4:
    rst $38
    nop
    rst $38
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
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ei
    inc b
    ei
    inc b
    rst $30
    ld [$10ef], sp
    rst $28
    db $10
    rst $18
    jr nz, jr_03b_7bc4

    jr nz, jr_03b_7ba6

    ld b, b
    cp a
    ld b, b
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    cp $ff
    ldh [rIE], a
    ldh [rIE], a
    cp $ff
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp+$6f
    db $fd
    cp a
    ld sp, hl
    cp a
    rst $38
    rst $38
    add h
    rst $38
    call z, $e6ff
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ld l, b
    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    inc d
    rst $38
    db $10
    rst $38
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $38
    ld [hl], c
    rst $38
    ld a, c
    rst $38
    ld a, a
    rst $38
    cp $7f
    rst $38
    ld e, a
    rst $38
    ld a, a
    nop
    add b
    nop
    add b
    nop
    ldh [$f0], a
    nop
    ldh a, [rDIV]
    and b
    ld e, a
    or b
    ld b, a
    nop
    db $fd
    ld h, b

jr_03b_7c41:
    or b
    ld b, b
    cp h
    add b
    ld [hl], a
    add b
    ld a, a
    sbc h
    ld a, a
    cp a
    ld a, a
    ld e, [hl]
    cp a
    ld e, a
    cp a
    ld e, a
    cp a
    ccf
    rst $18
    ld e, a
    cp a
    ld e, h
    cp a
    dec hl
    call c, $f807
    rlca
    ld hl, sp+$23
    call c, $e01f
    rrca
    ldh a, [rIF]
    ldh [$9f], a
    ld h, b
    rst $38

jr_03b_7c69:
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    push de
    jr nz, jr_03b_7cf1

    add c
    or h
    ld b, e
    db $ec
    inc de
    jr c, jr_03b_7c41

jr_03b_7c7a:
    dec b
    ld a, [$f807]
    add $39
    ld h, h
    dec de
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_03b_7c69

    ld b, b
    cp a
    ld b, [hl]
    cp c
    cp h
    ld b, e
    inc bc
    db $fc
    nop
    rst $38
    cp $01
    rst $38
    nop

jr_03b_7c98:
    rst $38
    nop
    rst $38
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
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    dec sp
    call nz, Call_000_3cc3
    db $f4
    dec bc
    rst $28
    db $10
    rst $28
    db $10
    rst $18
    jr nz, jr_03b_7c98

    jr nz, jr_03b_7c7a

    ld b, b
    cp a
    ld b, b
    ld a, a
    add b
    ld a, a
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    dec bc
    rst $38
    rlca
    rst $38
    ld b, $ff
    cp a
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $c0ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0fff
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    ld c, $ff
    inc bc
    rst $38
    add c
    rst $38
    rst $38

jr_03b_7cf1:
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ei
    rst $38
    rst $28
    rst $38
    rst $00
    rst $38
    rst $30
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    dec a
    rst $38
    scf
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    jp nc, Jump_03b_7fff

    rst $38
    inc bc
    rra
    nop
    nop
    nop
    rlca
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ld hl, sp+$07
    rst $38
    nop
    cp $01
    db $ec
    inc de
    db $fc
    inc bc
    db $fc
    inc bc
    push af
    ld a, [bc]
    and $19
    ret nz

    ccf
    ret nz

    ccf

jr_03b_7d3c:
    adc b
    ld [hl], a
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
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld bc, $07fe
    ld hl, sp+$1f
    ldh [$27], a
    ret c

    cp a
    ld b, b
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rrca
    ldh a, [$f0]
    rrca
    cp $01
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ei
    inc b
    ei
    inc b
    rst $30
    ld [$08f7], sp
    rst $28
    db $10
    rst $28
    db $10
    rst $18
    jr nz, jr_03b_7d3c

    ld b, b
    cp a
    ld b, b
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
    ccf
    ret nz

    jp $fc3c


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
    cp $00
    db $fd
    nop
    ld sp, hl
    nop
    ld a, [$fe00]
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
    ldh [rIE], a
    ldh a, [rIE]
    jr nz, @+$01

    jr nz, @+$01

    ldh a, [rIE]
    ld [bc], a
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
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
    ld [$40ff], sp
    rst $38
    ld h, b
    rst $38
    ldh [rIE], a
    or b
    rst $38
    add b
    rst $38
    add b
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
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    db $fc
    rst $38
    or $ff
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    db $fd
    sbc [hl]
    rst $38
    ld c, $ff
    adc [hl]
    rst $38
    ld b, $7f
    nop
    nop
    nop

jr_03b_7e20:
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    di
    rst $38
    ld a, a
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38

jr_03b_7e3e:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$1ef7], sp
    pop hl
    inc c
    di
    db $dd
    ld [hl+], a
    ld sp, hl
    ld b, $fb
    inc b
    rst $30
    ld [$08f7], sp
    rst $28
    db $10
    rst $18
    jr nz, jr_03b_7e3e

    jr nz, jr_03b_7e20

    ld b, b
    cp a
    ld b, b
    ld a, a
    add b
    ld a, a
    add b
    add a
    ld a, b
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    db $fd
    nop
    db $fc
    nop
    ld a, [$fa00]
    nop
    db $fc
    nop
    ld a, [$fa00]
    nop
    db $f4
    nop
    ld a, c
    add b
    add [hl]
    ld a, b
    ldh a, [rIF]
    rst $38
    nop
    ld a, [c]
    nop
    di
    nop
    db $f4
    nop
    push af
    nop
    db $f4
    nop
    push af
    nop
    di
    nop
    ld l, e
    nop
    ld a, [hl+]
    ld bc, HeaderDestinationCode
    and [hl]
    ld bc, $024c
    and h
    ld [bc], a
    db $db
    inc b
    jp hl


    inc b
    ld hl, sp+$04
    ld a, [c]
    ld [$08f2], sp
    ld [bc], a
    rst $38
    ld b, d
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
    cp $00
    cp $c0
    rst $38
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
    inc b
    rst $38
    db $10
    rst $38
    inc e
    rst $38
    ld c, $ff
    nop
    rst $38
    add d
    rst $38
    ld [hl], b
    rst $38
    ldh a, [rIE]
    add b
    rst $38
    xor b
    rst $38
    db $fc
    rst $38
    db $10
    rst $38
    rst $18
    db $e3
    ld h, b
    ret nz

    ret nz

    add b
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_03b_7f01:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_03b_7f08:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$f7fd]
    ld hl, sp-$09
    ld hl, sp-$10
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    db $fd
    cp $79
    cp $7c
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    inc bc
    rst $38
    jr z, jr_03b_7f01

    ld [$e8f7], sp
    rla
    rst $38
    nop
    rst $38
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

    pop bc
    ld a, $fe
    ld bc, $03ff
    db $fc
    rlca
    cp $07
    db $fc
    rlca
    db $fc
    inc bc
    sbc $01
    ld d, a
    nop
    sub l
    nop
    db $e4
    ld bc, $01f2
    ld a, [hl]
    ld bc, $02bd
    xor h
    ld [bc], a
    ld d, h
    ld [bc], a
    sub b
    inc b
    sbc c
    inc b
    ld d, a
    ld [$0893], sp
    ld d, d
    ld [$1089], sp
    ld h, d
    sub b
    inc b
    ld hl, sp+$50
    cpl
    rst $00
    jr nz, @-$2e

    jr nz, jr_03b_7f08

    ld b, b
    adc c
    ld b, b
    ld d, d
    add b
    ld l, d
    add b
    ld l, d
    add b
    jp hl


    nop
    ld a, [hl+]
    nop
    or d
    nop
    sub [hl]
    nop
    ld d, [hl]
    nop
    ld l, $00
    ld c, d
    nop
    xor d
    nop
    ld a, [c]
    nop
    db $e4
    nop
    nop
    rra
    nop
    rra
    nop
    rst $38
    nop
    and a
    nop
    add a
    nop
    rst $38
    nop
    rrca
    nop
    adc a
    nop
    rst $18
    nop
    rst $38
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
    ccf
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
    inc bc
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ccf
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
    rra
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, h
    rst $38
    ld a, [hl]
    db $fd
    dec de
    db $fc
    ei
    inc e
    ld a, [$ff1d]

Jump_03b_7fff:
    ccf
