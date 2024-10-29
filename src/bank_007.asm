SECTION "ROM Bank $007", ROMX[$4000], BANK[$7]

    add sp, $40
    ld l, b
    ld b, c
    add sp, $41
    ld d, [hl]
    ld b, d
    sub $42
    ld l, b
    ld b, e
    add sp, $43
    ld d, [hl]
    ld b, h
    add sp, $44
    ld d, [hl]
    ld b, l
    and b
    ld b, l
    jr nz, jr_007_405e

    ld a, h
    ld b, [hl]
    add $46
    db $10
    ld b, a
    ld e, d
    ld b, a
    or [hl]
    ld b, a
    ld [de], a
    ld c, b
    ld e, h
    ld c, b
    and [hl]
    ld c, b
    ld [bc], a
    ld c, c
    jr z, jr_007_4075

    ld h, b
    ld c, c
    sbc b
    ld c, c
    cp [hl]
    ld c, c
    or $49
    ld b, b
    ld c, d
    xor [hl]
    ld c, d
    inc e
    ld c, e
    adc d
    ld c, e
    and $4b
    ld d, h
    ld c, h
    adc h
    ld c, h
    inc c
    ld c, l
    ld b, h
    ld c, l
    ld a, h
    ld c, l
    add $4d
    ld b, [hl]
    ld c, [hl]
    and d
    ld c, [hl]
    jp c, Jump_000_364e

    ld c, a
    sub d
    ld c, a
    call c, Call_000_264f
    ld d, b
    ld [hl], b
    ld d, b
    ldh a, [$50]
    ld a, [hl-]
    ld d, c

jr_007_405e:
    ld h, b
    ld d, c
    cp h
    ld d, c
    ld b, $52
    ld [hl], h
    ld d, d
    ld b, $53
    inc l
    ld d, e
    ld h, h
    ld d, e
    or $53
    db $76
    ld d, h
    ld [$9a55], sp
    ld d, l
    inc l

jr_007_4075:
    ld d, [hl]
    sbc d
    ld d, [hl]
    db $e4
    ld d, [hl]
    db $76
    ld d, a
    ld [$9a58], sp
    ld e, b
    ld a, [de]
    ld e, c
    db $76
    ld e, c
    ld [$1c5a], sp
    ld e, d
    adc d
    ld e, d
    inc e
    ld e, e
    ld h, [hl]
    ld e, e
    jp nz, Jump_000_305b

    ld e, h
    jp nz, $e85c

    ld e, h
    jr nz, jr_007_40f5

    adc [hl]
    ld e, l
    jr nz, jr_007_40fa

    ld a, h
    ld e, [hl]
    ld c, $5f
    and b
    ld e, a
    ld [hl-], a
    ld h, b
    ld e, b
    ld h, b
    ld [$3460], a
    ld h, c
    or h
    ld h, c
    jp c, Jump_007_6c61

    ld h, d
    sub d
    ld h, d
    xor $62
    add b
    ld h, e
    call c, Call_000_2663
    ld h, h
    sub h
    ld h, h
    ldh a, [$64]
    add d
    ld h, l
    sbc $65
    ld [hl], b
    ld h, [hl]
    call z, Call_000_3a66
    ld h, a
    sub [hl]
    ld h, a
    ldh [$67], a
    ld [hl], d
    ld l, b
    add [hl]
    ld l, b
    xor h
    ld l, b
    ld a, $69
    ret nc

    ld l, c
    ld a, $6a
    ld d, d
    ld l, d
    xor [hl]
    ld l, d
    ld l, $6b
    ret nz

    ld l, e
    ld d, d
    ld l, h
    ld a, b
    ld l, h
    sbc [hl]
    ld l, h
    or d
    ld l, h
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$01b0], sp
    nop
    nop

jr_007_40f5:
    ld a, h
    ld bc, $0084
    nop

jr_007_40fa:
    jr z, jr_007_40fc

jr_007_40fc:
    nop
    nop
    nop

Jump_007_40ff:
    nop
    nop
    db $fc
    inc c
    ld a, d
    inc bc
    jr z, @+$01

    adc d
    nop
    adc l
    nop
    jr jr_007_4135

    nop
    nop
    nop
    nop
    nop
    nop
    call nz, $d20e
    inc bc
    set 7, [hl]
    add l
    nop
    ld h, h
    nop
    inc d
    jr z, jr_007_4120

jr_007_4120:
    nop
    nop
    nop
    nop
    nop
    adc h
    dec bc
    jp c, $6503

    ld bc, $0045
    ld a, $00
    jr jr_007_4159

    nop
    nop
    nop
    nop

jr_007_4135:
    nop
    nop
    ld d, b
    inc b
    ld c, b
    inc b
    sbc [hl]
    cp $65
    nop
    ld a, [hl-]
    nop
    ld [$0028], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0406
    inc hl
    ld bc, $0084
    ld d, c
    nop
    db $10
    jr z, jr_007_4156

jr_007_4156:
    nop
    nop
    nop

jr_007_4159:
    nop
    nop
    ld l, b
    inc bc
    sbc h
    inc bc
    ei
    nop
    sbc [hl]
    nop
    ld a, d
    nop
    ld [$ff28], sp
    rlca
    ld l, c
    nop
    nop
    nop
    rst $30
    rst $38
    ld h, [hl]
    inc c
    db $10
    ld [bc], a
    and $ff
    inc l
    nop
    ld l, [hl]
    nop
    jr jr_007_41a3

    rrca
    nop
    nop
    nop
    nop
    nop
    ld a, b
    inc c
    ld e, b
    inc b
    inc hl
    nop
    xor l
    nop
    ld l, [hl]
    nop
    jr jr_007_41b5

    xor b
    rst $38
    rst $30
    rst $38
    db $fd
    rst $38
    sbc h
    inc bc
    inc [hl]
    inc b
    ld sp, hl
    rst $38
    halt
    ld l, [hl]
    nop
    ld [$7728], sp
    rst $38
    ld [hl], $00

jr_007_41a3:
    db $e3
    rst $38
    ld a, h
    inc bc
    ld a, b
    ld [bc], a
    ld l, e
    nop
    xor e
    nop
    ld l, a
    nop
    ld [$ef28], sp
    rst $38
    add hl, hl
    nop

jr_007_41b5:
    cpl
    nop
    adc $08
    ld a, [hl+]
    ld [bc], a
    or [hl]
    rst $38
    or h
    nop
    ld l, [hl]
    nop
    nop
    jr z, @+$0c

    nop
    dec d
    nop
    and e
    rst $38
    ld a, [$ec0e]
    ld bc, $0000
    nop
    nop
    ld l, [hl]
    nop
    inc d
    jr z, jr_007_41d6

jr_007_41d6:
    nop
    nop
    nop

jr_007_41d9:
    nop
    nop
    nop
    nop
    nop
    nop
    ei
    nop
    sbc [hl]
    nop
    ld a, d
    nop
    nop
    jr z, @+$01

    ld b, $fa
    rst $38
    nop
    nop
    jp z, $8eff

    nop
    cp b
    inc bc
    ld [de], a
    nop
    ld h, d
    nop
    ld l, [hl]
    nop
    db $10
    jr z, @-$11

    rst $38
    nop
    nop
    ld b, h
    nop
    ld c, d
    rlca
    sbc h
    inc bc
    ld [hl-], a
    nop
    ld c, d
    nop
    ld l, [hl]
    nop
    inc b
    jr z, jr_007_425b

    nop
    nop
    nop
    sbc a
    rst $38
    ld a, [c]
    dec c
    ld [hl], $03
    stop
    nop
    nop
    ld a, d
    nop
    inc d
    jr z, jr_007_41d9

    rst $38
    nop
    nop
    or l
    rst $38
    adc d
    ld [bc], a
    adc $04
    inc c
    nop
    or b
    nop
    ld l, [hl]
    nop
    jr jr_007_4259

    cp a
    rst $38
    cpl
    nop
    inc e
    nop
    ldh a, [rDIV]
    sbc h
    ld bc, $003b
    dec bc
    nop
    ld l, [hl]
    nop
    ld [$2028], sp
    nop
    add hl, sp
    nop
    ld b, d
    nop
    add [hl]
    ld [$00e4], sp
    ld a, [c]
    rst $38
    db $d3
    rst $38
    ld l, [hl]
    nop
    nop
    jr z, @+$01

    rlca
    ld e, l
    nop

jr_007_4259:
    nop
    nop

jr_007_425b:
    sbc d
    rst $38
    ld b, [hl]
    nop
    db $fc
    ld [bc], a
    add sp, -$01
    or $ff
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_42cd

    nop
    nop
    nop
    inc [hl]
    nop
    jp nc, Jump_000_2207

    inc bc
    ld a, [$0aff]
    nop
    ld l, [hl]
    nop
    nop
    jr z, jr_007_428e

    nop
    add hl, de
    nop
    nop
    nop
    adc [hl]
    inc b
    sub h
    ld [bc], a
    rst $30
    rst $38
    dec hl
    nop
    ld l, [hl]
    nop
    ld [$8e28], sp

jr_007_428e:
    nop
    nop
    nop
    ld e, l
    nop
    xor d
    inc c
    ld d, h
    inc bc
    db $fc
    rst $38
    daa
    nop
    ld l, [hl]
    nop
    jr jr_007_42c7

    ld c, $00
    nop
    nop
    ld a, [de]
    nop
    ld h, h
    inc bc
    db $76
    inc bc
    ld e, $01
    inc a
    nop
    ld l, [hl]
    nop
    ld [$7228], sp
    rst $38
    nop
    nop
    ld c, [hl]
    nop
    sbc h
    inc bc
    ld d, h
    inc bc
    ld a, [c]
    rst $38
    db $fd
    rst $38
    cp d
    nop
    ld [$9128], sp
    rst $38
    nop
    nop

jr_007_42c7:
    db $fd
    rst $38
    ld c, [hl]
    nop
    ld b, [hl]
    ld [bc], a

jr_007_42cd:
    nop
    nop
    add $ff
    ld a, b
    nop
    db $10
    jr z, @+$01

    ld [$0003], sp
    nop
    nop
    dec a
    nop
    sbc b
    ld [$0246], sp
    rst $30
    rst $38
    ld hl, sp-$01
    ld l, [hl]
    nop
    nop
    jr z, jr_007_42ea

jr_007_42ea:
    nop
    nop
    nop
    db $d3
    rst $38
    ld h, d
    rrca
    ld b, h
    inc b
    ret z

    rst $38
    add l
    nop
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_42fc

jr_007_42fc:
    nop
    nop
    nop
    db $eb
    rst $38
    adc d
    rrca
    adc [hl]
    ld bc, $001b
    ld h, d
    nop
    ld c, c

jr_007_430a:
    nop
    db $10
    jr z, jr_007_430a

    rst $38
    nop
    nop
    and e
    rst $38
    inc b
    ld bc, $0472
    inc hl

jr_007_4318:
    nop
    ld b, e
    nop
    dec d
    nop
    db $10
    jr z, jr_007_4320

jr_007_4320:
    nop
    nop
    nop
    adc d
    rst $38
    ld a, [$d60e]
    ld bc, $00e0
    db $eb
    rst $38
    ld d, c
    nop
    db $10
    jr z, jr_007_4320

    rst $38
    nop
    nop
    inc e
    nop
    and b
    ld [$02ec], sp

jr_007_433b:
    xor a
    rst $38
    sbc d

jr_007_433e:
    rst $38
    xor e
    nop
    nop
    jr z, jr_007_433b

    rst $38
    nop
    nop
    cp a
    rst $38
    ld b, d
    rrca
    inc e
    ld [bc], a
    inc de
    nop
    inc [hl]
    nop
    ld a, $00
    nop
    jr z, jr_007_4318

    rst $38
    nop
    nop
    sub h
    rst $38
    ld a, [$ca06]
    inc b
    or b
    nop
    ld e, b
    nop
    daa
    nop
    nop
    jr z, @+$01

    ld b, $13
    nop
    dec bc
    nop
    nop
    nop
    cp $0b
    sbc b
    ld bc, $0006
    ld e, l
    rst $38
    ld l, [hl]
    nop
    jr @+$2a

    ld l, b
    rst $38
    ld [$0700], sp
    nop
    ld d, h
    inc b
    ld l, h
    inc bc
    rrca
    nop
    ld c, c
    nop
    ld a, b
    nop
    ld [$4428], sp
    nop
    inc b
    nop
    ld [bc], a
    nop
    ld a, [de]
    inc c
    jr nz, jr_007_439a

    ld d, $00
    dec d

jr_007_439a:
    nop
    ld a, b
    nop
    jr jr_007_43c7

    or b
    nop
    ld de, $0000
    nop
    inc e
    dec c
    adc h
    ld [bc], a
    add [hl]
    nop
    inc bc
    nop
    ld l, [hl]
    nop
    inc d
    jr z, jr_007_433e

    rst $38
    ld [$bd00], sp
    rst $38
    ld b, $00
    jp nz, Jump_000_0302

    nop
    ld e, $00
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_43c4

jr_007_43c4:
    nop
    nop
    nop

jr_007_43c7:
    nop
    nop
    nop
    ld bc, $0406
    inc hl
    ld bc, $0084
    ld d, c
    nop
    nop
    jr z, jr_007_43d6

jr_007_43d6:
    nop
    nop
    nop
    nop
    nop
    ld l, b
    inc bc
    sbc h
    inc bc
    ei
    nop
    sbc [hl]
    nop
    ld a, d
    nop
    nop
    jr z, @+$01

    ld b, $6f
    nop
    nop
    nop
    xor h
    rst $38
    ld l, h
    dec c
    ld e, $02
    add [hl]
    rst $38
    and d
    rst $38
    ld l, [hl]
    nop
    inc d
    jr z, jr_007_4434

    nop
    nop
    nop
    db $ec
    rst $38
    ret nc

    inc c
    adc b
    inc bc
    ld a, [c]
    rst $38
    ld d, d
    nop
    ld l, [hl]
    nop
    jr jr_007_4435

    jp c, Jump_000_08ff

    nop
    ld a, [$6eff]
    inc bc
    adc h
    inc bc
    push de
    rst $38
    ld [hl], e
    nop
    ld l, [hl]
    nop
    ld [$ca28], sp
    rst $38
    dec h
    nop
    ld a, [bc]
    nop
    add h
    inc bc
    ldh [rSC], a
    sub $ff
    ret nc

    nop
    ld l, [hl]
    nop
    ld [$5e28], sp
    nop
    ld d, e

jr_007_4434:
    nop

jr_007_4435:
    and $ff
    sbc [hl]
    dec c
    ld c, [hl]
    nop
    di
    rst $38
    ei
    rst $38
    ld l, [hl]
    nop
    ld [$bb28], sp
    rst $38
    add hl, sp
    nop
    push af
    rst $38
    ld a, [hl]
    inc bc
    call nc, $0900
    nop
    db $d3
    rst $38
    ld l, [hl]
    nop
    db $10
    ld l, b
    rst $38
    ld [$fff4], sp
    push de
    rst $38
    ld e, c
    nop
    xor h
    rlca
    ld [hl], h
    inc b
    sbc e
    rst $38
    call nz, Call_007_6eff
    nop
    nop
    jr z, jr_007_446d

    nop
    nop
    nop

jr_007_446d:
    di
    rst $38
    db $76
    ld c, $6a
    ld bc, $0004
    db $fc
    rst $38
    ld l, [hl]
    nop
    inc d
    ld l, b
    ld b, d
    nop
    ld a, [hl-]
    nop
    ld d, b
    nop
    ld [hl], $0c
    and h
    nop
    ld [bc], a
    nop
    dec e
    nop
    ld l, [hl]
    nop
    jr jr_007_44f5

    stop
    nop
    nop
    ld hl, sp-$01
    jp z, $6203

    inc b
    nop
    nop
    ld a, e
    nop
    ld l, [hl]
    nop
    ld [$af28], sp
    nop
    db $ec
    rst $38
    ldh a, [rIE]
    cp h
    inc c
    ld l, [hl]
    inc b
    ld hl, $2b00
    nop
    ld l, [hl]
    nop
    jr jr_007_44d9

    and e
    rst $38
    db $dd
    rst $38
    ld d, a
    nop
    ld e, $05
    ld l, b
    inc bc
    sub [hl]
    rst $38
    sbc l
    rst $38
    ld a, c
    nop
    db $10
    jr z, jr_007_44dd

    nop
    nop
    nop
    call $ccff
    ld c, $3e
    ld [bc], a
    call z, $a8ff
    rst $38
    ld l, [hl]
    nop
    ld [$7a28], sp
    nop
    ld b, $00

jr_007_44d9:
    call c, Call_007_7aff
    dec c

jr_007_44dd:
    ld b, $02
    nop
    nop
    pop bc
    rst $38
    ld l, [hl]
    nop
    ld [$ff28], sp
    ld b, $6a
    rst $38
    add sp, -$01
    ld c, b
    nop
    xor b
    inc bc
    ld h, $04
    dec b
    nop

jr_007_44f5:
    ld bc, $6e00
    nop
    ld [$0128], sp
    nop
    call nc, $44ff
    nop
    ld l, h
    inc c
    inc a
    inc b
    db $f4
    rst $38
    ret nz

    rst $38
    ld l, [hl]
    nop
    jr jr_007_4535

    inc d
    nop
    db $ed
    rst $38
    di
    rst $38
    ld c, h
    nop
    and d
    inc bc
    ld a, [$0aff]
    nop
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_452d

    nop
    nop
    nop
    adc l
    rst $38
    inc b
    ld bc, $0352
    ld [hl-], a
    nop
    ld a, $00

jr_007_452d:
    ld l, [hl]
    nop
    db $10
    jr z, @-$44

    rst $38
    db $ed
    rst $38

jr_007_4535:
    xor c
    rst $38
    ld l, b
    inc bc
    ld l, $03
    ld a, [$dcff]
    rst $38
    ld l, [hl]
    nop
    ld [$8928], sp
    rst $38
    db $ed
    rst $38
    ld a, h
    rst $38
    xor d
    ld [bc], a
    ld [hl], $04
    di
    rst $38
    daa
    nop
    ld l, [hl]
    nop
    inc c
    jr z, @+$01

    inc b
    push af
    rst $38
    inc bc
    nop
    xor a
    rst $38
    ld e, $01
    adc $04
    ld b, [hl]
    nop
    pop de
    nop
    ld a, b
    nop
    db $10
    jr z, jr_007_456a

jr_007_456a:
    nop
    nop
    nop
    ld b, e
    nop
    inc l
    rlca

jr_007_4571:
    and d
    inc b
    ldh [rIE], a
    sub a
    nop
    ld h, [hl]
    nop
    nop
    jr z, jr_007_4571

    rst $38
    nop
    nop
    sub h
    rst $38
    add sp, $00
    db $e4
    ld bc, $001b
    ld e, h
    rst $38
    ld l, [hl]
    nop
    inc c
    jr z, jr_007_458e

jr_007_458e:
    nop
    nop
    nop
    nop
    nop
    adc h

jr_007_4594:
    dec bc
    jp c, $6503

    ld bc, $0045
    ld a, $00
    jr jr_007_45c7

    rst $38
    rlca
    sub [hl]
    nop
    inc bc
    nop
    add d
    rst $38
    nop
    inc c
    xor $03
    ld [hl], l
    nop
    ld e, e
    nop
    ld h, e
    nop
    jr jr_007_45db

    ld d, b
    nop
    ld hl, $6500
    rst $38
    ld c, h
    inc c
    and [hl]
    nop
    db $ec
    rst $38
    adc a
    rst $38
    ld l, [hl]
    nop
    jr jr_007_462d

    db $ec
    rst $38

jr_007_45c7:
    nop
    nop
    xor e

jr_007_45ca:
    rst $38
    ld b, h
    rlca
    inc e
    ld [bc], a
    rla
    nop
    or e
    rst $38
    ld h, h
    nop
    nop
    jr z, jr_007_4594

    rst $38
    nop
    nop

jr_007_45db:
    and l
    rst $38
    sub [hl]
    inc bc
    ld c, $03
    ld [de], a
    nop
    add sp, -$01
    ld l, [hl]
    nop
    ld [$ec28], sp
    rst $38
    nop
    nop
    ld bc, $5800
    ld [$0438], sp
    jp $8dff


    nop
    ld l, [hl]
    nop
    nop
    jr z, jr_007_45ca

    rst $38
    inc [hl]
    nop
    inc sp
    nop
    ld a, b
    ld [$002c], sp
    inc b
    nop

Call_007_4607:
    nop
    nop
    ld l, [hl]
    nop
    nop
    ld l, b
    pop de
    rst $38
    dec h
    nop
    dec hl
    nop
    ld a, [c]
    inc b
    sbc b
    nop
    ld l, c

jr_007_4618:
    nop
    or h
    rst $38
    ld l, [hl]
    nop
    ld [$ff68], sp
    dec b
    ld c, a
    nop
    nop
    nop
    cp $ff
    or b
    inc c
    ld l, [hl]
    inc bc
    ld [hl], $00

jr_007_462d:
    ld [hl+], a
    nop
    ld l, [hl]
    nop
    jr jr_007_465b

    or e
    rst $38
    nop
    nop
    db $fc
    rst $38
    ld h, d
    inc bc
    or d
    inc bc
    db $e3
    rst $38
    dec [hl]
    nop
    ld l, [hl]
    nop
    ld [$8c28], sp
    rst $38
    ld b, $00
    nop
    nop
    adc $03
    add d
    ld [bc], a
    cp $ff
    pop hl
    rst $38
    ld l, [hl]
    nop
    ld [$b028], sp
    rst $38
    nop
    nop

jr_007_465b:
    xor e
    rst $38
    ld h, [hl]
    nop
    jp nc, $fd03

    rst $38
    ld d, b
    nop
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_4618

    rst $38
    inc h
    nop
    adc e
    rst $38
    ld l, h
    nop
    and h
    ld bc, $ffe1
    jp z, Jump_007_78ff

    nop
    db $10
    jr z, @+$01

    inc b
    ld d, d
    nop
    ei
    rst $38
    ret z

    rst $38
    ld e, h
    dec bc
    ld h, $04
    db $dd
    rst $38
    ld e, d
    nop

jr_007_468b:
    ld l, [hl]
    nop
    jr jr_007_46b7

    or d
    rst $38
    nop
    nop
    ret z

    rst $38
    sub b
    inc b
    ld l, $04
    ld a, [hl+]
    nop
    ld a, h
    nop
    adc d
    nop
    ld [$e128], sp
    rst $38
    nop
    nop
    ret c

    rst $38
    ld c, h
    rrca
    ld [$4003], sp
    nop
    dec [hl]
    nop
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_468b

    rst $38
    dec d
    nop

jr_007_46b7:
    ld e, b
    nop
    or h
    ld [$030c], sp
    rst $20
    rst $38
    ld l, e
    nop
    ld l, [hl]
    nop
    nop
    jr z, @+$01

    inc b
    add c
    rst $38
    and $ff
    pop af
    rst $38
    sub h
    inc b
    sub d
    inc b
    db $ed
    rst $38
    dec sp
    nop
    ld l, [hl]
    nop
    ld [$f428], sp
    rst $38
    nop
    nop
    ld a, [c]
    rst $38
    ld l, [hl]
    dec bc
    add d
    inc b
    ld c, $00
    sub h
    nop
    ld l, [hl]
    nop
    jr jr_007_4713

    dec b
    nop
    dec bc
    nop
    nop
    nop
    ret z

    add hl, bc
    add d
    nop
    ei
    rst $38
    nop
    nop
    ld l, [hl]
    nop
    inc e
    ld l, b
    or $ff
    dec [hl]
    nop
    ld b, d
    nop
    ld e, d
    add hl, bc
    sub h
    nop
    jr nc, jr_007_4709

jr_007_4709:
    push de
    rst $38
    ld l, [hl]
    nop
    inc e
    ld l, b
    rst $38
    inc b
    ld b, e
    nop

jr_007_4713:
    nop
    nop
    nop
    nop
    cp b
    inc c
    ld e, d
    inc bc

jr_007_471b:
    ld b, h
    nop
    ld b, h
    nop
    ld l, [hl]
    nop
    jr jr_007_474b

    ret z

    rst $38
    nop
    nop
    ld [bc], a
    nop
    ld d, b
    inc bc
    adc d
    inc bc
    call nc, Call_007_56ff
    nop
    ld [hl], b
    nop
    ld [$b828], sp
    rst $38
    jr jr_007_4739

jr_007_4739:
    rst $20
    rst $38
    or h
    ld [bc], a
    and b
    ld bc, $001b
    inc hl
    nop
    ld l, [hl]
    nop
    inc c
    jr z, jr_007_471b

    rst $38
    cp $ff

jr_007_474b:
    cp [hl]
    rst $38
    or d
    nop
    ld d, h
    inc bc
    ld a, [hl+]
    nop
    cpl
    nop
    ld l, [hl]
    nop
    nop
    jr z, @+$01

    dec b
    ld a, $00
    inc l
    nop
    or b
    rst $38
    sub d
    rrca
    xor [hl]
    ld bc, $0007
    ei
    rst $38
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_47a6

    nop
    jp hl


    rst $38
    ld hl, $4a00
    ld [$0516], sp
    ld b, $00
    inc b
    nop
    ld l, [hl]
    nop
    nop
    jr z, jr_007_47cd

    nop
    inc d
    nop
    add sp, -$01
    ld hl, sp+$0d
    xor d
    ld bc, $0028
    xor h
    rst $38
    ld l, [hl]
    nop
    inc d
    jr z, @-$49

    rst $38
    nop
    nop
    rlca
    nop
    ld a, d
    inc bc
    ld l, [hl]
    inc bc
    db $fc
    rst $38
    jr c, jr_007_479f

jr_007_479f:
    ld l, [hl]
    nop
    ld [$c628], sp
    rst $38
    nop

jr_007_47a6:
    nop
    cp d
    rst $38
    ld e, b
    nop
    jr nz, @+$05

    cp $ff
    ld a, [$6eff]
    nop
    db $10
    jr z, @+$01

    dec b
    ld [$0aff], a
    nop
    adc h
    rst $38
    jr jr_007_47c0

    ld e, d

jr_007_47c0:
    inc bc
    ld hl, sp-$01

jr_007_47c3:
    ld c, b
    nop
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_47c3

    rst $38
    nop
    nop

jr_007_47cd:
    dec b
    nop
    inc b
    rlca
    ld a, b
    inc bc
    sub $ff
    dec e
    nop
    ld l, [hl]
    nop
    nop
    jr z, jr_007_480b

    nop
    nop
    nop
    rla
    nop
    add d
    rlca
    cp [hl]
    ld [bc], a
    db $ed
    rst $38
    push hl
    rst $38
    ld l, [hl]
    nop
    nop
    jr z, jr_007_47ee

jr_007_47ee:
    nop
    nop
    nop
    nop
    nop
    adc h
    dec bc
    jp c, $6503

    ld bc, $0045
    ld a, $00
    nop
    jr z, jr_007_4827

    nop
    dec bc
    nop
    add h
    rst $38
    ld a, b
    nop

jr_007_4807:
    call z, $f002
    rst $38

jr_007_480b:
    ld [de], a
    nop
    ld l, [hl]
    nop
    db $10
    jr z, @+$01

    inc b
    cp $ff
    db $fd

jr_007_4816:
    rst $38
    xor h
    rst $38
    ld [hl-], a
    ld bc, $02a6
    nop
    nop
    nop
    nop
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_4816

    rst $38

jr_007_4827:
    nop
    nop
    jr z, jr_007_482b

jr_007_482b:
    ld [hl], d
    ld b, $66
    ld [bc], a
    rst $38
    rst $38
    inc c
    nop
    ld l, [hl]
    nop
    inc b
    jr z, jr_007_4807

    rst $38
    ld [hl], $00
    jp nc, Jump_007_68ff

    ld bc, $0084
    nop
    nop
    nop
    nop
    ld l, [hl]
    nop
    inc c
    ld l, b
    nop
    nop
    nop
    nop
    nop
    nop
    adc h
    dec bc
    jp c, $6503

    ld bc, $0045
    ld a, $00
    nop
    jr z, @+$01

    inc b
    dec de
    nop
    db $eb
    rst $38
    ld e, $00
    ld [hl], b
    rlca
    ld c, b
    inc b
    ld [$18ff], a
    nop
    ld l, [hl]
    nop
    nop
    jr z, jr_007_48c2

    nop
    ldh [rIE], a
    db $d3
    rst $38
    jr nz, jr_007_4882

    ld d, [hl]
    inc bc
    xor $ff
    cp c
    rst $38
    ld l, [hl]
    nop
    jr jr_007_48a9

    push bc

jr_007_4882:
    rst $38
    nop
    nop
    pop de
    rst $38
    cp [hl]
    inc b
    add h
    inc bc
    db $f4
    rst $38
    ld d, l
    nop
    ld l, [hl]
    nop
    ld [$b628], sp
    rst $38
    dec h
    nop
    ldh a, [rIE]
    ld a, $06
    sbc h
    ld bc, $0016
    and $ff
    ld l, [hl]
    nop
    inc b
    jr z, @+$01

    dec b
    ld hl, sp-$01

jr_007_48a9:
    ld hl, $8f00
    rst $38
    ld c, d
    ld bc, $0186
    ld bc, $0000
    nop
    ld l, [hl]
    nop
    inc c
    jr z, jr_007_48ba

jr_007_48ba:
    nop
    rst $30
    rst $38
    ret z

    rst $38
    call c, $c200

jr_007_48c2:
    ld [bc], a
    ld c, $00
    pop af
    rst $38
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_48cc

jr_007_48cc:
    nop
    reti


    rst $38
    ccf
    nop
    ld e, h
    rlca
    ld a, h
    inc b
    inc hl
    nop
    dec b
    nop
    ld l, [hl]
    nop
    nop
    jr z, @-$3e

    rst $38
    ld c, $00
    ld a, b
    nop
    ld a, b
    inc b
    jp nc, $0202

    nop
    ld a, [hl+]
    nop
    ld l, [hl]
    nop
    ld [$b628], sp
    rst $38
    dec h
    nop
    ldh a, [rIE]
    ld a, $06
    sbc h
    ld bc, $0016
    and $ff
    ld l, [hl]
    nop
    nop
    jr z, @+$01

    ld [bc], a
    nop
    nop
    inc a
    nop
    nop
    nop
    ld d, d
    nop
    sbc d
    nop
    nop
    nop
    ld c, l
    nop
    ld l, [hl]
    nop
    db $10
    ld l, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, @+$01

    inc bc
    pop bc
    rst $38
    inc bc
    nop
    ret c

    rst $38

jr_007_492f:
    and [hl]
    ld [bc], a
    inc [hl]
    ld [bc], a
    dec b
    nop
    ld [bc], a
    nop
    ld l, [hl]
    nop
    ld [$4428], sp
    nop
    or $ff
    ld a, [c]
    rst $38
    db $e4
    inc c
    jr nc, jr_007_4948

    dec h
    nop
    ld [de], a

jr_007_4948:
    nop
    ld l, [hl]
    nop
    jr jr_007_4975

    add hl, sp
    nop
    dec l
    nop
    push af
    rst $38
    call z, $e40c
    nop
    nop
    nop
    nop
    nop
    ld l, [hl]
    nop
    jr jr_007_4987

    rst $38
    inc bc
    push de
    rst $38
    nop
    nop
    ret nc

    rst $38

jr_007_4967:
    db $76
    ld bc, $03d6
    ret z

    rst $38
    ld b, c
    nop
    ld l, [hl]
    nop
    inc c
    jr z, jr_007_4967

    rst $38

jr_007_4975:
    nop
    nop
    ld b, e
    nop
    jp nc, $be06

    inc bc
    sbc $ff
    dec sp
    nop
    ld l, [hl]
    nop
    nop
    jr z, jr_007_492f

    rst $38

jr_007_4987:
    dec e
    nop
    ld [de], a
    nop
    ld e, b
    inc b
    db $fc
    ld bc, $ffee
    inc d
    nop
    ld l, [hl]
    nop
    ld [$ff28], sp
    ld [bc], a
    or $ff
    ld [de], a
    nop
    ldh a, [rIE]
    jr jr_007_49a2

    and d

jr_007_49a2:
    ld bc, $ffd9
    dec [hl]
    nop
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_49b5

    nop
    nop
    nop
    dec a
    nop
    ld c, b
    rlca
    jr nc, @+$05

jr_007_49b5:
    db $e3
    rst $38
    ld d, $00
    ld e, a
    nop
    nop
    jr z, @+$01

    inc bc
    jp c, $11ff

    nop
    dec hl
    nop
    or [hl]
    ld b, $ac
    ld [bc], a
    ld e, d
    nop
    ccf
    nop
    ld l, [hl]
    nop
    nop
    jr z, @+$08

    nop
    nop
    nop
    cp h
    rst $38
    ld b, $01
    and [hl]
    ld [bc], a
    ld d, h
    nop
    ld [$6eff], a
    nop
    db $10
    jr z, @+$08

    nop
    nop
    nop
    cp h
    rst $38
    ld b, $01
    and [hl]
    ld [bc], a
    ld d, h
    nop
    ld [$6eff], a
    nop
    db $10
    jr z, @+$01

    inc b
    db $fc
    rst $38
    ld d, $00
    ld a, [bc]
    nop
    sub b
    ld b, $6e
    nop
    ld sp, hl
    rst $38
    db $fc
    rst $38
    ld l, [hl]
    nop
    inc b
    ld l, b
    cp $ff
    jp c, $c6ff

    rst $38
    ld a, d

jr_007_4a10:
    nop
    inc d
    dec b
    inc d
    nop
    inc sp
    nop
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_4a10

    rst $38
    call $3aff
    nop
    sub [hl]
    rlca

jr_007_4a23:
    or $04
    ld [bc], a
    nop
    ld sp, hl
    rst $38
    ld l, [hl]
    nop
    nop
    jr z, jr_007_4a2e

jr_007_4a2e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, [hl]
    nop
    nop
    jr z, @+$01

    ld b, $b0
    rst $38
    jp c, $e6ff

    rst $38
    adc b
    inc b
    ret nz

    inc b
    ld b, $00
    stop
    ld l, [hl]
    nop
    ld [$f428], sp
    rst $38
    rst $30
    rst $38
    rst $20
    rst $38
    add b
    inc b
    jr nc, jr_007_4a61

    rst $38
    rst $38
    daa
    nop

jr_007_4a61:
    ld h, b
    nop
    ld [$f828], sp
    rst $38
    ld a, [c]
    rst $38
    add hl, sp
    nop
    adc d
    rlca
    jr c, jr_007_4a73

    ld [de], a
    nop
    ld [hl+], a
    nop

jr_007_4a73:
    ld l, [hl]
    nop
    nop
    jr z, jr_007_4a23

    rst $38
    pop af
    rst $38
    ld [hl-], a
    nop
    ld a, d
    inc b
    ld c, d
    inc b
    add hl, de
    nop
    add hl, hl
    nop
    ld l, [hl]
    nop
    ld [$6428], sp
    nop
    ldh [rIE], a
    db $ec
    rst $38
    ld a, b
    dec bc
    ld a, $04
    ld a, [bc]
    nop

jr_007_4a95:
    db $dd
    rst $38
    ld l, [hl]
    nop
    jr jr_007_4ac3

    sub h
    nop
    ld a, [bc]
    nop
    ld [$98ff], a
    dec bc
    ld a, d
    ld [bc], a
    dec bc
    nop
    push af
    rst $38
    ld l, [hl]
    nop
    jr jr_007_4ad5

    rst $38
    ld b, $7a
    rst $38
    ei
    rst $38
    ld a, [hl-]
    nop
    sbc h
    inc b
    jr nz, jr_007_4abc

    ld b, $00
    nop

jr_007_4abc:
    nop
    ld l, [hl]
    nop
    ld [$c028], sp
    rst $38

jr_007_4ac3:
    pop af
    rst $38
    scf
    nop
    jr c, jr_007_4ad0

    ld b, d
    inc bc
    dec b
    nop
    jp hl


    rst $38
    ld l, [hl]

jr_007_4ad0:
    nop
    nop
    jr z, jr_007_4a95

    rst $38

jr_007_4ad5:
    ld a, [c]
    rst $38
    db $ec
    rst $38
    xor d
    inc b
    ld [hl], d
    inc bc
    ld hl, sp-$01
    ld [$6e00], sp
    nop
    ld [$5228], sp
    nop
    rst $28
    rst $38
    and $ff
    ld a, [hl]
    dec bc
    ld [hl], d
    inc bc
    add hl, bc
    nop
    db $fd
    rst $38
    ld l, [hl]
    nop
    jr jr_007_4b1f

    xor c
    nop
    rrca
    nop
    db $e3
    rst $38
    adc h
    dec bc
    ld d, [hl]
    ld [bc], a
    rst $30
    rst $38
    ld a, [$6eff]
    nop
    jr jr_007_4b31

    ld l, a
    rst $38
    stop
    rst $20
    rst $38
    adc b
    inc b
    inc h
    ld [bc], a
    inc b
    nop
    nop
    nop
    ld l, [hl]
    nop
    ld [$ff28], sp
    ld b, $6f
    nop

jr_007_4b1f:
    nop
    nop
    nop
    nop
    db $ec
    inc c
    ld [bc], a
    inc bc
    db $fd
    rst $38
    jr jr_007_4b2b

jr_007_4b2b:
    ld l, [hl]
    nop
    jr jr_007_4b57

    ld [c], a
    rst $38

jr_007_4b31:
    nop
    nop
    cp $ff
    ld a, [hl+]
    inc bc
    jr @+$05

    cp $ff
    cp $ff
    ld l, [hl]
    nop
    ld [$7328], sp
    rst $38
    nop
    nop
    ei
    rst $38
    db $76
    inc bc
    ld a, b
    inc b
    jp hl


    rst $38
    dec a
    nop
    ld l, [hl]
    nop
    ld [$dc28], sp
    rst $38
    dec hl
    nop

jr_007_4b57:
    ld d, $00
    ld b, [hl]
    inc bc
    sbc $01
    dec b
    nop
    inc b
    nop
    ld l, [hl]
    nop
    nop
    jr z, jr_007_4b66

jr_007_4b66:
    nop
    reti


    rst $38
    dec bc
    nop
    db $76
    dec b
    and [hl]
    inc b
    nop
    nop
    nop
    nop
    ld l, [hl]
    nop
    nop
    jr z, @+$71

    nop
    nop
    nop
    ld l, $00
    jp nz, Jump_007_740b

    ld [bc], a
    xor $ff
    xor b
    rst $38
    ld l, [hl]
    nop
    jr jr_007_4bb1

    rst $38
    dec b
    db $ed
    rst $38
    nop
    nop
    ld a, [c]
    rst $38
    or [hl]
    nop
    ld a, [$9301]
    rst $38
    inc [hl]
    nop
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_4b31

    rst $38
    nop
    nop
    db $ec
    rst $38
    sub $02
    jp z, $f901

    rst $38
    rlca
    nop
    ld l, [hl]
    nop
    inc c
    jr z, @-$76

    rst $38

jr_007_4bb1:
    nop
    nop
    ld e, a
    nop
    and [hl]
    rlca
    ret c

    ld [bc], a
    rst $20
    rst $38
    cp a
    rst $38
    ld l, [hl]
    nop
    nop
    jr z, jr_007_4c24

    nop
    nop
    nop
    ret nz

    rst $38
    jr nz, jr_007_4bd7

    inc [hl]
    ld [bc], a
    and d
    rst $38
    call nc, Call_007_6eff
    nop
    inc d
    jr z, jr_007_4c4f

    nop
    nop
    nop

jr_007_4bd7:
    ld b, e
    nop
    inc d
    dec bc
    or d
    ld bc, $0008
    dec bc
    nop
    ld l, [hl]
    nop
    jr jr_007_4c0d

    rst $38
    ld b, $3a
    nop
    nop
    nop
    rst $18
    rst $38
    sbc [hl]
    dec bc
    and b
    inc bc
    dec de
    nop

jr_007_4bf3:
    ld b, d
    nop

jr_007_4bf5:
    ld [hl], a
    nop
    jr jr_007_4c21

    jp z, Jump_000_00ff

    nop
    rst $00
    rst $38
    ld d, d
    inc b
    xor h
    inc bc
    ld l, $00
    ld b, c
    nop
    ld l, [hl]
    nop
    ld [$e628], sp

jr_007_4c0c:
    rst $38

jr_007_4c0d:
    nop
    nop
    ld a, [hl+]
    nop
    ld [hl], b
    rlca
    add sp, $01
    rst $38
    rst $38
    and b
    rst $38
    ld l, [hl]
    nop
    nop
    jr z, jr_007_4bf3

    rst $38
    nop
    nop

jr_007_4c21:
    jr nc, jr_007_4c23

jr_007_4c23:
    ld c, d

jr_007_4c24:
    ld [$0352], sp
    ld a, [c]
    rst $38
    rra
    nop
    ld l, [hl]
    nop
    nop
    jr z, jr_007_4c0c

    rst $38
    nop
    nop
    ld h, a
    nop
    ld d, d
    ld [$0376], sp
    ld sp, hl
    rst $38
    push af
    rst $38
    ld l, [hl]
    nop
    nop
    jr z, jr_007_4bf5

    rst $38
    ld c, c
    nop
    dec sp
    nop
    ld d, b
    ld b, $24
    ld bc, $0000
    ld sp, hl

jr_007_4c4e:
    rst $38

jr_007_4c4f:
    ld l, [hl]
    nop
    nop
    jr z, @+$01

    inc bc
    ld a, [c]
    rst $38
    sbc $ff
    jp $0cff


    ld bc, $04aa

jr_007_4c5f:
    ld de, $1400
    nop
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_4c5f

    rst $38
    jp nc, $38ff

    nop
    ld [bc], a
    rlca
    jp z, $fa04

    rst $38

jr_007_4c73:
    xor $ff
    ld l, [hl]
    nop
    nop
    jr z, jr_007_4c4e

    rst $38
    dec e
    nop
    ld d, a
    nop
    ld l, b
    ld b, $84
    ld bc, $0000
    xor b
    rst $38
    ld l, [hl]
    nop
    nop
    jr z, @+$01

    rlca
    db $e3
    rst $38
    inc bc
    nop
    sbc d
    nop
    cp h
    ld [$0332], sp
    db $db
    rst $38
    inc bc
    nop
    ld l, [hl]
    nop
    nop
    jr z, jr_007_4c73

    rst $38
    nop
    nop
    ld bc, $8800
    rrca
    ld h, b
    inc bc
    stop
    stop
    add b
    nop
    db $10
    jr z, jr_007_4cd2

    nop
    ld e, $00
    dec hl
    nop
    adc $0c
    sub $01
    rlca
    nop
    adc $ff
    ld l, [hl]
    nop
    jr jr_007_4ceb

    adc $ff
    nop
    nop
    ld a, [c]
    rst $38
    add d
    rrca
    ld d, $03
    nop
    nop
    ld c, h
    nop
    ld l, [hl]

jr_007_4cd2:
    nop
    db $10
    jr z, jr_007_4cf4

    nop
    db $eb
    rst $38
    db $ed
    rst $38
    cp d
    dec bc
    cp d
    inc bc
    db $fc
    rst $38
    dec b
    nop
    ld l, [hl]
    nop
    jr jr_007_4d0f

    ld [hl+], a
    nop
    add hl, de
    nop

jr_007_4ceb:
    inc a
    nop
    or $08
    jr c, jr_007_4cf3

    add hl, bc
    nop

jr_007_4cf3:
    pop af

jr_007_4cf4:
    rst $38
    ld l, [hl]
    nop
    nop
    jr z, jr_007_4d5b

    nop
    nop
    nop
    inc bc
    nop
    cp d
    dec bc
    ld d, d
    inc bc

Call_007_4d03:
    push de
    rst $38
    ld h, $00
    ld l, [hl]
    nop
    jr jr_007_4d33

    rst $38
    inc bc
    ld c, h
    nop

jr_007_4d0f:
    ld a, [de]
    nop
    ld a, [c]
    rst $38
    sbc h
    inc c
    ld h, [hl]
    ld bc, $0002
    db $dd
    rst $38
    ld l, [hl]
    nop
    jr jr_007_4d47

    call nz, $e0ff
    rst $38
    pop af
    rst $38
    ld h, [hl]
    inc bc
    ld [bc], a
    inc b
    ei
    rst $38
    pop hl
    rst $38
    ld l, [hl]
    nop
    ld [$c028], sp
    rst $38

jr_007_4d33:
    stop
    db $ed
    rst $38
    ret nz

    ld [bc], a
    ld c, $01
    ld sp, hl
    rst $38
    add hl, bc
    nop
    ld d, c
    nop
    ld [$ff28], sp
    inc bc
    scf
    nop

jr_007_4d47:
    nop
    nop
    push af
    rst $38
    xor h
    inc c
    call z, $f502
    rst $38
    ld b, h
    nop
    ld l, [hl]
    nop
    jr jr_007_4d7f

    rst $18
    rst $38
    nop
    nop

jr_007_4d5b:
    ld a, [c]
    rst $38
    inc h
    inc bc
    ld [$0a03], sp
    nop
    ld e, c
    nop
    ld l, [hl]
    nop
    ld [$1f28], sp
    nop
    jr nc, jr_007_4d6d

jr_007_4d6d:
    rst $10
    rst $38
    ld e, h
    ld a, [bc]
    ld d, [hl]
    nop
    nop
    nop
    nop
    nop
    ld l, [hl]
    nop
    inc e
    ld l, b
    rst $38
    inc b
    and l
    rst $38

jr_007_4d7f:
    nop
    nop
    nop
    nop
    and [hl]
    inc bc
    ld c, [hl]
    ld [bc], a
    di
    rst $38
    call z, Call_007_6cff
    nop
    ld [$2428], sp
    nop
    nop
    nop
    nop
    nop
    ld b, d
    inc c
    cp [hl]
    ld [bc], a
    nop
    nop
    dec b
    nop
    ld l, [hl]
    nop
    jr jr_007_4dc9

    ld l, h
    nop
    nop
    nop
    ld a, [$a4ff]
    inc c
    ret z

    ld bc, $001f
    ld a, h
    rst $38
    ld l, [hl]
    nop
    jr jr_007_4ddb

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, @+$01

    rlca
    ld l, h
    nop

jr_007_4dc9:
    dec d
    nop
    db $ed
    rst $38
    call z, $9606
    inc bc
    nop
    nop
    nop
    nop
    ld l, [hl]
    nop
    nop
    jr z, jr_007_4e31

    nop

jr_007_4ddb:
    nop
    nop
    ld [de], a
    nop
    adc $08
    ld e, h

jr_007_4de2:
    ld [bc], a
    ei
    rst $38
    sbc h
    rst $38
    ld l, [hl]
    nop
    nop
    jr z, @+$36

    nop
    jp hl


    rst $38
    scf
    nop
    ld [$5007], a
    inc bc
    nop
    nop
    call nc, Call_007_6eff
    nop
    nop
    jr z, jr_007_4de2

    rst $38
    rst $10
    rst $38
    ld [hl], b
    nop
    ld a, [c]
    inc bc
    cp d
    inc b
    nop
    nop
    ldh a, [rIE]
    ld l, [hl]
    nop
    ld [$2328], sp
    nop
    push hl
    rst $38
    push bc
    rst $38
    sub b
    inc b
    xor b
    inc bc
    nop
    nop
    rst $28
    rst $38
    ld l, [hl]
    nop
    ld [$d928], sp
    rst $38
    jp c, $94ff

    rst $38
    sub b
    inc bc
    inc a
    inc b
    ld [$d400], sp
    rst $38
    ld l, [hl]
    nop

jr_007_4e31:
    ld [$3528], sp
    nop
    nop
    nop
    adc e
    nop
    call nz, Call_007_4607
    inc bc
    db $fd
    rst $38
    ld [hl-], a
    nop
    ld l, [hl]
    nop
    nop
    jr z, @+$01

    dec b
    jp c, Jump_000_1eff

    nop
    sbc d
    rst $38
    ld c, [hl]
    ld [bc], a
    ld l, d
    nop
    inc c
    nop
    inc bc
    nop
    ld l, [hl]
    nop
    inc c
    ld l, b
    nop
    nop
    rst $28
    rst $38
    ld a, a
    rst $38
    ld l, h
    nop
    add $03
    rrca
    nop
    rst $30
    rst $38
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_4e70

    nop
    rst $30
    rst $38
    dec de

jr_007_4e70:
    nop
    or h
    rlca
    sbc b
    inc bc
    db $fc
    rst $38
    rst $30
    rst $38
    ld l, [hl]
    nop
    nop
    jr z, jr_007_4e8a

    nop
    dec bc
    nop
    ld l, e
    nop
    db $fc
    rlca
    sub [hl]
    ld [bc], a
    cp $ff
    db $db

jr_007_4e8a:
    rst $38
    ld l, [hl]
    nop
    nop
    jr z, jr_007_4ef0

    nop
    nop
    nop
    jr z, jr_007_4e95

jr_007_4e95:
    ld c, [hl]
    inc c
    ld h, b
    inc bc
    pop af
    rst $38
    inc sp
    nop
    ld l, [hl]
    nop
    jr jr_007_4ec9

    rst $38
    inc bc
    and $ff
    nop
    nop

jr_007_4ea7:
    ret z

    rst $38
    ld d, h
    ld bc, $02a0
    and $ff
    call Call_007_6eff
    nop
    db $10
    jr z, jr_007_4ea7

    rst $38
    nop
    nop
    ld b, b
    nop
    cp h
    ld b, $a8
    ld [bc], a
    xor $ff
    push de
    rst $38
    ld l, [hl]
    nop
    inc b
    jr z, @-$32

    rst $38

jr_007_4ec9:
    rra
    nop
    or c
    rst $38
    adc [hl]
    ld bc, $0184
    nop
    nop
    nop
    nop
    ld l, [hl]
    nop
    inc c
    jr z, @+$01

    dec b
    ld c, c
    nop
    pop hl
    rst $38
    xor l
    rst $38
    ld a, d
    inc c
    jr c, @+$06

    stop
    call c, Call_007_6eff
    nop
    jr jr_007_4f15

    add $ff
    db $e4

jr_007_4ef0:
    rst $38
    xor h

jr_007_4ef2:
    rst $38
    sub [hl]

jr_007_4ef4:
    inc bc
    inc a
    inc b
    rst $38
    rst $38
    db $eb
    rst $38
    ld l, [hl]
    nop
    ld [$b228], sp
    rst $38
    reti


    rst $38
    push af
    rst $38
    xor h
    rrca
    ld a, [de]
    inc bc
    rst $30
    rst $38
    or a
    rst $38
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_4ef4

    rst $38
    push af
    rst $38

jr_007_4f15:
    ld h, h
    nop
    sbc [hl]
    inc b
    ld [bc], a
    inc bc
    rst $20
    rst $38
    inc h
    nop
    ld l, [hl]
    nop
    ld [$5928], sp
    nop
    db $fc
    rst $38
    ld e, e
    nop
    ld a, b
    dec bc
    jp nc, Jump_000_0302

    nop
    dec bc
    nop
    ld l, [hl]
    nop
    jr jr_007_4f5d

    rst $38
    dec b
    dec h
    nop
    rst $20

jr_007_4f3a:
    rst $38
    jp nc, $44ff

    rrca
    ld [hl], h
    inc bc
    inc l
    nop
    db $ec
    rst $38
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_4ef2

    rst $38
    db $eb
    rst $38
    db $db
    rst $38
    call c, Call_007_7c03
    inc bc
    nop
    nop
    call c, Call_007_6eff
    nop
    ld [$2b28], sp
    nop

jr_007_4f5d:
    ld a, [$2eff]
    nop
    add d
    ld [$036a], sp
    and a
    rst $38
    dec e
    nop
    ld l, a
    nop
    nop
    jr z, jr_007_4f3a

    rst $38
    nop
    nop
    jr z, jr_007_4f73

jr_007_4f73:
    cp [hl]
    inc b
    jr nz, jr_007_4f7a

    ld [$2200], sp

jr_007_4f7a:
    nop
    ld l, [hl]
    nop
    ld [$0028], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, @+$01

    inc b
    dec c
    nop
    add sp, -$01
    jp z, Jump_000_24ff

    rrca
    call nz, Call_000_0d03
    nop
    ld [$6e00], sp
    nop
    db $10
    jr z, jr_007_4fb2

    nop
    and $ff
    dec [hl]
    nop
    ldh [$08], a
    db $10
    inc b
    ld a, [$00ff]

jr_007_4fb2:
    nop
    ld l, [hl]
    nop
    nop
    jr z, jr_007_4fb8

jr_007_4fb8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_007_4fca

jr_007_4fca:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, @+$01

    inc b
    db $ec
    rst $38
    call c, $9dff
    rst $38
    and d
    nop

jr_007_4fe5:
    inc e
    dec b
    ld a, [$3cff]
    nop
    ld [hl], b
    nop
    db $10
    jr z, jr_007_4fe5

    rst $38
    add sp, -$01
    scf
    nop

jr_007_4ff5:
    ld e, b
    rlca
    ld e, d
    inc b
    pop af
    rst $38
    inc d
    nop
    ld l, [hl]
    nop
    nop
    jr z, jr_007_4ff5

    rst $38
    ccf
    nop
    dec bc
    nop
    ld a, [$1600]
    ld bc, $ffc9
    ld [hl], d
    nop
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_5014

jr_007_5014:
    nop
    ret nz

    rst $38
    cp l
    rst $38
    nop
    nop
    jr jr_007_5022

    ld c, $00
    ldh a, [rIE]
    ld l, [hl]

jr_007_5022:
    nop
    nop
    jr z, @+$01

    inc b
    ld de, $e600
    rst $38
    jp nz, $daff

    ld c, $da
    inc bc
    rlca
    nop
    inc bc
    nop
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_5041

    nop
    call c, Call_000_23ff
    nop
    jr z, jr_007_504a

jr_007_5041:
    ld [bc], a
    inc b
    ld [hl+], a
    nop
    sbc $ff
    ld l, [hl]

jr_007_5048:
    nop
    nop

jr_007_504a:
    jr z, jr_007_5048

    rst $38
    jr jr_007_504f

jr_007_504f:
    ld c, d
    nop
    ld [hl], h
    ld [$013c], sp
    db $fd
    rst $38
    ld bc, $6e00
    nop
    nop
    jr z, @-$54

    rst $38
    rst $20
    rst $38
    ld c, a
    nop
    add $04
    ld e, [hl]
    inc b
    nop
    nop
    dec bc
    nop
    ld l, [hl]
    nop
    ld [$ff28], sp
    rlca
    jr c, jr_007_5073

jr_007_5073:
    rra
    nop
    xor [hl]
    rst $38
    and d
    ld c, $46
    ld [bc], a
    ld d, $00
    ld b, h
    nop
    ld [hl], c
    nop
    inc d
    jr z, jr_007_5093

    nop
    push hl
    rst $38
    jp $34ff


    rrca
    xor [hl]
    inc bc
    jp hl


    rst $38
    call z, Call_007_6eff
    nop

jr_007_5093:
    db $10
    jr z, jr_007_50a9

    nop
    push af
    rst $38
    cpl
    nop
    call c, $9c08
    inc bc
    inc c
    nop
    add hl, bc
    nop
    ld l, [hl]
    nop
    nop
    jr z, jr_007_50e2

    nop

jr_007_50a9:
    add hl, de
    nop
    ld c, a
    nop
    inc b
    add hl, bc
    and d
    ld [bc], a
    ld a, [c]
    rst $38
    inc d
    nop
    ld l, [hl]
    nop
    nop
    jr z, jr_007_50c0

    nop
    ld sp, $7500
    nop
    ret z

jr_007_50c0:
    ld [$00c4], sp
    dec c
    nop
    rst $10
    rst $38
    ld l, [hl]
    nop
    nop
    ld l, b
    ld c, l
    nop
    dec sp
    nop
    adc h
    nop
    ld c, $0a
    sub d
    ld bc, $0008
    adc $ff
    ld l, [hl]
    nop
    nop
    jr z, jr_007_50f1

    nop
    add sp, -$01
    ld [hl], b

jr_007_50e2:
    nop
    ret nc

    ld [$03ec], sp
    ld sp, hl
    rst $38
    di
    rst $38
    ld l, [hl]
    nop
    nop
    jr z, @+$01

    inc b

jr_007_50f1:
    nop
    nop

jr_007_50f3:
    nop
    nop
    push bc
    rst $38
    ld h, h
    rrca
    adc h
    ld [bc], a
    rst $28
    rst $38
    cp e
    rst $38
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_50f3

    rst $38
    ld [c], a
    rst $38
    ld d, b
    nop
    ld d, h
    ld [$048a], sp
    inc hl
    nop
    rrca
    nop
    ld l, [hl]
    nop
    nop
    jr z, jr_007_516a

    nop
    rst $30
    rst $38
    cp $ff
    ld c, h
    inc c
    ld c, d
    inc bc
    rst $28
    rst $38
    xor $ff
    ld l, [hl]
    nop
    jr jr_007_514f

    ld [hl], a
    nop
    dec d
    nop
    cp $ff
    sub [hl]
    inc c
    ld [hl+], a
    ld [bc], a
    add hl, de
    nop
    db $fc
    rst $38
    ld l, [hl]
    nop
    jr jr_007_5161

    rst $38
    ld [bc], a
    or $ff
    inc hl

jr_007_513e:
    nop
    push hl
    rst $38
    add h
    ld bc, $0098
    nop
    nop
    ld hl, sp-$01
    ld l, [hl]
    nop
    inc c
    ld l, b
    ld b, $00

jr_007_514f:
    push de
    rst $38
    ld d, h
    nop
    sub [hl]
    rlca
    ld a, [de]
    inc b
    db $e4
    rst $38
    cp l
    rst $38
    ld l, [hl]
    nop
    nop
    jr z, @+$01

    dec b

jr_007_5161:
    ld a, [hl-]
    nop
    ld [c], a
    rst $38
    jp z, Jump_007_5aff

    ld c, $d0

jr_007_516a:
    inc bc
    inc b
    nop
    db $ed
    rst $38
    ld l, [hl]
    nop
    inc d
    jr z, jr_007_51b8

    nop
    jp hl


    rst $38
    ld [hl-], a
    nop
    call nz, $8e09
    inc bc
    db $d3
    rst $38
    db $e3
    rst $38
    ld l, [hl]

jr_007_5182:
    nop
    inc e
    jr z, jr_007_513e

    rst $38
    add sp, -$01
    jr jr_007_518b

jr_007_518b:
    ret z

    inc b
    ldh a, [rSC]
    add hl, hl
    nop
    rst $08
    rst $38
    ld l, [hl]
    nop
    ld [$7728], sp
    nop
    dec d
    nop
    cp $ff
    sub [hl]
    inc c
    ld [hl+], a
    ld [bc], a
    add hl, de
    nop
    db $fc
    rst $38
    ld l, [hl]
    nop
    nop
    jr z, jr_007_5182

    rst $38
    nop
    nop
    jr nz, jr_007_51af

jr_007_51af:
    inc h
    ld a, [bc]
    and h
    ld [bc], a
    jr z, jr_007_51b5

jr_007_51b5:
    ld c, d
    nop

jr_007_51b7:
    ld l, [hl]

jr_007_51b8:
    nop
    nop
    jr z, @+$01

    inc b
    xor e
    rst $38
    nop
    nop
    jp Jump_007_6cff


    ld [bc], a
    sbc h
    ld [bc], a
    inc bc
    nop

jr_007_51c9:
    rst $00
    rst $38
    ld l, [hl]
    nop
    inc c
    jr z, jr_007_51b7

    rst $38
    inc b
    nop

jr_007_51d3:
    call Call_000_2eff
    ld bc, $02d4
    rst $20
    rst $38
    jr c, jr_007_51dd

jr_007_51dd:
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_51d3

    rst $38
    nop
    nop
    ld b, d
    nop
    ld [de], a
    rlca
    ld a, [hl-]
    inc bc
    nop
    nop
    ld a, $00
    ld l, [hl]
    nop
    nop
    jr z, jr_007_51f4

jr_007_51f4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, @+$01

    ld b, $00
    nop
    db $ed
    rst $38
    inc [hl]
    nop
    or [hl]
    ld [$036a], sp
    dec a
    nop
    push de
    rst $38
    ld l, [hl]
    nop
    nop
    jr z, jr_007_521a

jr_007_521a:
    nop
    ld sp, hl
    rst $38
    jp nz, $92ff

    rrca
    db $76
    inc bc
    db $fd
    rst $38
    ei
    rst $38
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_51c9

    rst $38
    nop
    nop
    di
    rst $38
    jr nc, jr_007_5237

    adc b
    inc bc
    xor h
    rst $38

jr_007_5237:
    cpl
    nop
    ld l, [hl]
    nop
    ld [$8828], sp
    rst $38
    ld hl, $d000
    rst $38
    inc h
    inc b
    jp nz, $3501

    nop
    ld [$6e00], sp
    nop
    ld [$b328], sp
    rst $38
    inc l
    nop
    inc de
    nop
    ld l, $04
    ld h, $00
    rst $30
    rst $38
    ld a, [bc]
    nop
    ld l, [hl]
    nop

jr_007_525f:
    ld [$8768], sp
    rst $38
    ret z

    rst $38
    ld b, b
    nop
    ld h, [hl]
    inc bc
    ld e, h
    inc bc
    rst $08
    rst $38
    ccf
    rst $38
    ld l, [hl]
    nop
    ld [$ff28], sp
    ld [$ffd9], sp
    inc d
    nop
    add $ff
    sub d
    rrca
    ld d, $03
    ld [bc], a
    nop
    ld b, [hl]

jr_007_5282:
    nop
    ld l, [hl]

jr_007_5284:
    nop
    db $10
    jr z, jr_007_5284

    rst $38
    nop
    nop
    ret z

    rst $38
    ld b, h
    nop
    or $02
    inc b
    nop
    di

jr_007_5294:
    rst $38
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_5294

    rst $38
    nop
    nop
    ld d, d
    nop
    jp nz, Jump_000_1207

    inc bc
    ld [bc], a
    nop
    dec bc
    nop
    ld l, [hl]
    nop
    nop
    jr z, jr_007_5282

    rst $38
    rlca
    nop
    ld e, b
    nop
    and d
    ld [$02fe], sp
    inc hl
    nop
    inc b

jr_007_52b8:
    nop
    ld l, [hl]
    nop
    nop
    jr z, jr_007_52b8

    rst $38
    inc l
    nop
    ld e, h
    nop
    ld a, h
    rlca
    ld [hl], b
    ld bc, $fff7
    ld a, [bc]
    nop
    ld l, [hl]
    nop
    nop
    jr z, jr_007_525f

    rst $38
    ld a, [hl+]
    nop
    ld c, a
    nop
    ld b, d
    inc b
    ld [hl-], a
    ld bc, $fff8
    sub h
    rst $38
    ld l, [hl]
    nop
    ld [$fa28], sp
    rst $38
    nop
    nop
    ld d, d
    nop
    jp nz, Jump_000_1207

    inc bc
    ld [bc], a
    nop
    dec bc

jr_007_52ee:
    nop
    ld l, [hl]
    nop
    nop
    jr z, jr_007_52ee

    rst $38
    inc l
    nop
    ld e, h
    nop
    ld a, h
    rlca
    ld [hl], b
    ld bc, $fff7
    ld a, [bc]
    nop
    ld l, [hl]
    nop
    nop
    jr z, @+$01

    ld [bc], a
    ld a, [$0dff]

jr_007_530a:
    nop
    cp l
    rst $38
    ld l, d
    nop
    ld c, [hl]
    ld [bc], a
    rlca
    nop
    xor $ff
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_530a

    rst $38
    dec l
    nop
    inc sp
    nop
    ld [c], a
    ld b, $d2
    nop
    nop
    nop
    nop
    nop
    ld l, [hl]
    nop
    inc b
    ld l, b
    rst $38
    inc bc
    ldh a, [rIE]
    db $fd
    rst $38
    call z, $44ff
    ld bc, $02ca
    nop
    nop
    ld a, [$6eff]
    nop
    db $10
    jr z, jr_007_5340

jr_007_5340:
    nop
    jp nc, Jump_000_3eff

    nop
    add sp, $06
    ld c, b
    inc b
    call c, $b6ff
    rst $38
    ld l, [hl]
    nop
    nop
    jr z, jr_007_5352

jr_007_5352:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, @+$01

    ld [$fff1], sp
    scf
    nop
    ld e, c
    nop
    ld [hl], d
    dec b
    add $00
    add e
    rst $38
    push de
    rst $38
    ld [hl], e
    nop
    inc b
    ld l, b
    ld bc, $fd00
    rst $38
    inc sp
    nop
    ld e, [hl]
    dec bc
    ld e, b
    ld [bc], a
    add hl, bc
    nop
    jp c, Jump_007_6eff

    nop
    jr jr_007_53b1

    adc h
    rst $38
    ld a, [de]
    nop
    dec sp
    nop
    inc a
    dec b
    ld [hl], b
    ld [bc], a
    inc bc
    nop
    dec l
    nop
    ld l, [hl]
    nop
    ld [$1128], sp
    nop
    ld bc, $9a00
    nop
    ld d, [hl]
    ld [$02bc], sp
    ld a, [bc]
    nop
    db $e3
    rst $38
    ld l, [hl]
    nop
    nop
    jr z, jr_007_53fd

    nop
    inc l
    nop

jr_007_53b1:
    ld a, e
    nop
    ret nz

    dec bc
    ld a, [hl+]
    ld bc, $000e
    stop
    ld l, [hl]
    nop
    jr jr_007_53e7

    rst $38
    rst $38
    cp $ff
    cp h
    rst $38
    ld e, [hl]
    nop
    ld [hl-], a
    inc bc
    ld a, [c]

jr_007_53ca:
    rst $38
    ld b, $00
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_53ca

    rst $38
    dec h
    nop
    add c
    rst $38
    ld d, b
    nop
    xor b
    ld [bc], a
    jp nz, Jump_007_7aff

    nop
    ld l, [hl]
    nop
    db $10
    jr z, @+$7c

    nop
    ld b, $00

jr_007_53e7:
    inc e
    nop
    ld a, d
    dec c
    ld b, $02
    nop
    nop
    pop bc
    rst $38
    ld l, [hl]
    nop
    nop
    jr z, @+$01

    rlca
    or b
    rst $38
    ldh a, [rIE]
    sbc c
    rst $38

jr_007_53fd:
    ld a, $0f
    add d
    inc bc
    db $dd
    rst $38
    or [hl]
    rst $38
    ld l, [hl]
    nop
    db $10

jr_007_5408:
    jr z, jr_007_5408

    rst $38
    pop de
    rst $38
    ret c

    rst $38
    jp z, $ce0b

    inc bc
    ld b, e
    nop
    or b

jr_007_5416:
    rst $38
    ld l, [hl]
    nop
    jr @+$2a

    ld l, c
    nop
    ld l, $00
    push bc
    rst $38
    ld a, $04
    adc d
    ld bc, $0003
    ld b, b
    nop
    ld l, [hl]
    nop
    ld [$cc28], sp
    rst $38
    ld [$01ff], a
    nop
    or h
    rrca
    and [hl]

jr_007_5436:
    ld [bc], a
    ld h, e
    nop
    rst $08
    rst $38
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_53fd

    rst $38
    ld [$69ff], a
    nop
    ld [de], a
    ld [$034c], sp
    rst $08
    rst $38
    ld de, $6e00
    nop
    nop
    jr z, @-$08

    rst $38
    db $ed
    rst $38
    ld l, h

jr_007_5456:
    nop
    ld e, [hl]
    dec bc
    add sp, $02
    ldh [rIE], a
    ldh [rIE], a
    ld l, [hl]
    nop
    jr jr_007_548b

    or $ff
    db $ed
    rst $38
    ld l, h
    nop
    ld e, [hl]
    dec bc
    add sp, $02
    ldh [rIE], a
    ldh [rIE], a
    ld l, [hl]
    nop
    jr jr_007_549d

    rst $38
    ld [$ffa3], sp
    inc bc
    nop
    xor e
    rst $38

jr_007_547d:
    ld h, b
    rrca
    ld l, b
    inc bc
    inc b
    nop
    rst $20
    rst $38
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_5416

    rst $38

jr_007_548b:
    push af
    rst $38
    sub $ff
    ld a, [de]
    ld [$029a], sp
    rst $20
    rst $38
    daa
    nop
    ld l, [hl]
    nop
    nop
    jr z, jr_007_5436

    rst $38

jr_007_549d:
    rst $20
    rst $38
    di
    rst $38
    db $ec
    dec c
    call z, Call_000_0802
    nop
    nop
    nop
    ld l, [hl]
    nop
    inc d
    jr z, @+$80

    rst $38
    jp hl


    rst $38
    ld [hl], b
    nop
    and b
    dec b
    inc d
    inc b
    nop
    nop
    dec b
    nop
    cp [hl]
    nop
    nop
    jr z, jr_007_5456

    rst $38
    dec c
    nop
    inc [hl]
    nop
    ld [hl], $0a
    ld l, $03
    nop
    nop
    dec d
    nop
    ld l, [hl]
    nop
    inc e
    jr z, jr_007_547d

    rst $38
    nop
    nop
    add b

jr_007_54d6:
    nop
    ld c, d
    add hl, bc
    ret nc

    ld [bc], a
    db $fc
    rst $38
    inc b
    nop
    ld l, [hl]
    nop
    inc e
    jr z, jr_007_5503

    nop
    ldh a, [rIE]
    ld b, [hl]
    nop
    ld c, h
    inc c
    sbc d
    ld [bc], a
    ldh [rIE], a
    or c
    rst $38
    ld l, [hl]
    nop
    jr jr_007_551d

    ld h, e
    nop
    ldh a, [rIE]
    dec h
    nop
    ld [hl-], a
    ld [$0244], sp
    call c, $97ff
    rst $38

jr_007_5503:
    ld l, [hl]
    nop
    nop
    jr z, @+$01

    ld [$ff9a], sp
    rlca
    nop
    sub c
    nop
    ld d, $07
    add h
    inc bc
    jr z, jr_007_5515

jr_007_5515:
    dec b
    nop
    ld l, [hl]
    nop
    nop
    jr z, jr_007_54d6

    rst $38

jr_007_551d:
    ld [de], a
    nop
    ld [hl+], a
    nop
    and [hl]
    inc bc
    call z, Call_000_1601
    nop
    or $ff
    ld l, [hl]
    nop
    ld [$0c28], sp

jr_007_552e:
    nop
    nop
    nop
    ld b, e
    nop
    ld [hl+], a
    add hl, bc
    ld c, b
    inc bc
    db $e3
    rst $38
    ld hl, $6e00
    nop
    nop
    jr z, jr_007_5540

jr_007_5540:
    nop
    jr c, jr_007_5543

jr_007_5543:
    ld [hl], a
    nop
    ld e, d
    ld [$011c], sp
    ld a, [bc]
    nop
    ld de, $6e00
    nop
    nop
    jr z, jr_007_5552

jr_007_5552:
    nop
    ld c, $00
    xor $ff
    ld c, [hl]
    nop
    adc [hl]
    ld [bc], a
    ld b, $00
    call nz, Call_007_6eff
    nop
    db $10
    jr z, jr_007_55a2

    nop
    dec c
    nop
    daa
    nop
    sbc b
    dec bc
    add d
    ld [bc], a
    nop
    nop
    pop af
    rst $38
    ld l, [hl]
    nop
    jr jr_007_559d

    nop
    nop
    ld a, [bc]
    nop
    or a
    rst $38
    ld d, d
    nop
    sub h
    ld [bc], a
    nop
    nop
    di
    rst $38
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_552e

    rst $38
    jr jr_007_558b

jr_007_558b:
    and d
    rst $38
    ld e, b
    inc bc
    sub h
    ld [bc], a
    ld b, $00
    ld d, $00
    ld l, [hl]
    nop
    ld [$ff28], sp
    ld [$0069], sp

jr_007_559d:
    cp a
    rst $38
    sbc c
    rst $38
    sub d

jr_007_55a2:
    dec c
    inc d
    inc b
    dec a
    nop
    ld [hl], c
    rst $38
    ld l, [hl]
    nop
    inc d
    jr z, jr_007_55b2

    nop
    nop
    nop
    db $dd

jr_007_55b2:
    rst $38
    stop
    jr z, jr_007_55ba

    dec d
    nop
    rst $20

jr_007_55ba:
    rst $38
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_55d2

    nop
    ld [bc], a
    nop
    dec b

jr_007_55c4:
    nop
    adc $0b
    ld d, d
    inc bc
    rrca
    nop
    ld a, [$6eff]
    nop
    jr jr_007_55f9

    ret nz

jr_007_55d2:
    rst $38
    nop
    nop
    inc [hl]
    nop
    ret nz

    ld [$035a], sp
    nop
    nop
    db $fd
    rst $38
    ld l, [hl]
    nop
    nop
    jr z, jr_007_55c4

    rst $38
    nop
    nop
    rlca
    nop
    nop
    inc b
    and $02
    ld [$0800], sp
    nop
    ld l, [hl]
    nop
    ld [$1228], sp
    nop
    ld [bc], a
    nop

jr_007_55f9:
    ld [de], a
    nop
    ld [hl], h
    inc c
    cp $00
    dec b
    nop
    sub $ff
    ld l, [hl]
    nop
    nop
    jr z, @+$78

    nop
    adc $ff
    ld l, b
    nop
    ld [hl+], a
    add hl, bc
    sbc b
    inc b
    sbc $ff
    rst $00
    rst $38
    ld l, [hl]
    nop
    nop
    jr z, @+$6a

    nop
    ld de, $6600
    rst $38
    inc h
    ld c, $0c
    inc bc
    jp hl


    rst $38
    ld b, [hl]
    nop
    ld l, [hl]
    nop
    inc d
    jr z, @+$01

    ld b, $8a
    rst $38
    dec l
    nop
    adc b
    rst $38
    nop
    ld [$003a], sp
    dec de
    nop
    db $f4
    rst $38
    ld l, [hl]
    nop
    nop
    ld l, b
    sbc a
    rst $38
    nop
    nop
    push de
    rst $38
    ld d, d
    ld [$0308], sp

jr_007_5649:
    inc b
    nop
    pop hl
    rst $38
    ld l, [hl]
    nop
    nop
    jr z, jr_007_5649

    rst $38
    nop
    nop
    db $ec
    rst $38
    xor b
    dec bc
    ld l, b
    ld [bc], a
    jp c, $b9ff

    rst $38
    ld l, [hl]
    nop
    jr @+$2a

    ld h, h
    nop
    add hl, hl
    nop
    inc de
    nop
    nop
    ld [$00be], sp
    nop
    nop
    db $eb
    rst $38
    ld l, [hl]
    nop
    nop
    ld l, b
    ld e, a
    nop
    ld b, $00
    ld b, d
    nop
    ld a, [bc]
    ld [$0338], sp
    cp $ff
    stop
    ld l, [hl]
    nop
    nop
    jr z, @+$5f

    nop
    ld a, [$beff]
    nop
    ld h, $08
    add h
    ld [bc], a
    inc h
    nop
    call nz, Call_007_6eff
    nop
    nop
    jr z, @+$01

    inc b
    ld c, $00
    di
    rst $38
    inc [hl]
    nop
    adc $08
    adc d
    inc bc
    nop
    nop
    nop
    nop
    ld l, [hl]
    nop
    nop
    jr z, jr_007_56e1

    nop
    nop
    nop
    ld a, $00
    db $ec
    add hl, bc
    ld [hl], d
    inc bc
    jr jr_007_56b9

jr_007_56b9:
    jr nz, jr_007_56bb

jr_007_56bb:
    ld l, [hl]
    nop
    inc e
    jr z, @-$3e

    rst $38
    nop
    nop
    ld c, [hl]
    nop
    ld h, d
    ld b, $06
    inc bc
    inc b
    nop
    db $e3
    rst $38
    ld l, [hl]
    nop
    inc b
    jr z, jr_007_56d3

    nop

jr_007_56d3:
    nop
    nop
    cp e
    rst $38
    call z, Call_000_0c0f
    inc bc
    nop

jr_007_56dc:
    nop
    ld hl, sp-$01
    ld l, [hl]
    nop

jr_007_56e1:
    db $10
    jr z, @+$01

    ld [$002b], sp
    push hl
    rst $38
    ld c, [hl]
    nop
    sub [hl]
    rlca
    ld [hl], h
    inc b
    sbc $ff
    add hl, bc
    nop
    ld l, [hl]
    nop
    nop
    jr z, jr_007_5727

    nop
    jp hl


    rst $38

jr_007_56fb:
    pop de
    rst $38
    sbc [hl]
    nop

Call_007_56ff:
    ld b, h
    inc b

jr_007_5701:
    dec l
    nop
    nop
    nop
    ld e, h
    nop
    db $10
    jr z, jr_007_56dc

    rst $38
    ld [$c400], sp
    rst $38
    add sp, $04
    ld d, d
    inc bc
    ld d, $00
    ld c, c
    nop
    ld l, [hl]
    nop
    ld [$da28], sp
    rst $38
    db $ec
    rst $38
    pop bc
    rst $38
    ld c, [hl]
    nop
    ld hl, sp+$02
    rra
    nop

jr_007_5727:
    ret


    rst $38
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_5701

    rst $38
    inc bc
    nop
    scf
    nop
    cp b
    rlca
    sub b
    ld [bc], a
    ldh a, [rIE]
    jp nz, Jump_007_6eff

    nop
    nop
    jr z, jr_007_56fb

    rst $38
    db $f4
    rst $38
    ld b, h
    nop
    ld a, [c]
    ld b, $90
    inc bc

jr_007_5749:
    ld bc, $e600
    rst $38
    ld l, [hl]
    nop
    nop
    jr z, jr_007_5786

    nop
    db $f4
    rst $38
    ld a, [hl-]
    rst $38
    inc d
    nop
    call nc, $fa03
    rst $38
    rrca
    nop
    xor e
    nop
    nop
    jr z, jr_007_5764

jr_007_5764:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, @+$01

    ld [$fffb], sp
    nop
    nop
    ld l, [hl]
    nop
    sub h
    ld [$02b4], sp
    inc b
    nop
    adc $ff
    ld l, [hl]

jr_007_5786:
    nop
    nop
    jr z, jr_007_5749

    rst $38
    nop
    nop
    inc hl
    nop
    sub h
    inc b
    ld a, [bc]

jr_007_5792:
    inc bc
    nop
    nop
    add hl, bc
    nop
    ld l, [hl]
    nop
    nop

jr_007_579a:
    jr z, jr_007_57b8

    nop
    db $f4
    rst $38
    dec de
    nop
    jp nz, $120b

    inc b
    di
    rst $38
    inc c
    nop
    ld l, [hl]
    nop
    jr jr_007_57d5

    ld a, l
    nop
    nop

jr_007_57b0:
    nop
    inc d
    nop
    add $0b
    ld d, $04
    di

jr_007_57b8:
    rst $38
    dec sp
    nop
    ld l, [hl]
    nop
    jr jr_007_57e7

    ld l, h
    nop
    ld d, $00
    ret z

    rst $38
    ld e, b
    nop
    ld h, h
    ld bc, $000b
    xor e
    rst $38
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_579a

    rst $38
    ld l, $00

jr_007_57d5:
    dec d
    nop
    ld b, h
    inc b
    inc b
    ld bc, $0003
    ld a, [bc]

jr_007_57de:
    nop
    ld l, [hl]
    nop
    nop
    jr z, jr_007_5792

    rst $38
    nop
    nop

jr_007_57e7:
    cp b
    rst $38
    inc [hl]
    nop
    sub [hl]
    inc bc
    cp $ff
    ld de, $6e00
    nop
    db $10
    jr z, jr_007_57b0

    rst $38
    db $fc
    rst $38
    ld h, $00
    or [hl]
    inc b
    or $02
    dec bc
    nop
    rst $28
    rst $38
    ld l, [hl]
    nop
    ld [$ff28], sp
    ld [$ffaa], sp
    ld l, $00
    rst $30
    rst $38
    jp c, Jump_000_1607

    nop
    ld [bc], a
    nop
    nop
    nop
    ld l, [hl]
    nop
    nop
    ld l, b
    cp e
    rst $38
    ld a, [bc]
    nop
    sub c
    rst $38
    ld [bc], a
    nop
    jp z, Jump_000_0002

    nop
    ld bc, $6e00
    nop

jr_007_582b:
    db $10
    jr z, jr_007_57de

    rst $38
    ld [de], a
    nop
    ld d, d
    nop
    ld [de], a
    ld [$0316], sp
    nop
    nop
    ld b, a
    nop
    ld l, [hl]
    nop
    nop
    jr z, jr_007_582b

    rst $38
    ld a, [$4aff]
    nop
    ld b, b
    inc c
    cp [hl]
    inc bc
    nop
    nop
    nop
    nop
    ld l, [hl]
    nop
    jr jr_007_5879

    ld [hl], h
    rst $38
    nop
    nop
    ld b, h
    nop
    ret nz

    inc bc
    ld a, b
    inc bc
    dec d
    nop
    ld d, $00
    ld l, [hl]
    nop
    ld [$3e28], sp
    nop
    rst $30
    rst $38
    ld b, h
    nop
    jr nc, jr_007_5877

    sub d
    inc bc
    nop
    nop
    nop
    nop
    ld l, l
    nop
    jr jr_007_589d

    inc c
    nop

jr_007_5877:
    ld c, $00

jr_007_5879:
    ei
    rst $38
    cp h
    rrca

jr_007_587d:
    or [hl]
    ld [bc], a
    db $f4
    rst $38
    add hl, de
    nop
    ld l, [hl]
    nop
    db $10
    jr z, @+$72

    nop
    inc sp
    nop
    add hl, hl
    nop
    nop
    nop
    db $ec
    nop
    dec b

jr_007_5892:
    nop
    di
    rst $38
    ld l, [hl]
    nop
    db $10
    jr z, @+$01

    rlca
    adc $ff

jr_007_589d:
    ld a, [$77ff]
    rst $38
    ld [hl-], a
    nop
    or d
    inc bc
    inc bc
    nop
    inc bc
    nop
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_587d

    rst $38
    rst $20
    rst $38
    ld bc, $6c00
    ld [$03b8], sp
    add hl, bc
    nop
    rst $20
    rst $38
    ld l, [hl]
    nop
    nop
    jr z, jr_007_5892

    rst $38
    nop
    nop
    ld d, b
    nop
    ld a, $08
    ret nc

    inc bc
    stop
    ld [hl-], a
    nop
    ld l, [hl]
    nop
    nop
    jr z, jr_007_5904

    nop
    nop
    nop
    ccf
    nop
    cp d
    inc c
    jp c, $1402

    nop
    xor a
    rst $38
    ld l, [hl]
    nop
    jr jr_007_590b

    cpl
    nop
    nop
    nop
    rst $28
    rst $38
    ld a, [hl+]
    nop
    sbc h
    ld [bc], a
    db $fc
    rst $38
    jp nz, Jump_007_6eff

    nop
    db $10
    jr z, jr_007_592c

    nop
    sbc $ff
    set 7, a
    nop
    nop
    ld e, $04
    nop
    nop
    nop
    nop
    ld l, [hl]

jr_007_5904:
    nop
    db $10
    jr z, jr_007_593c

    nop
    db $f4
    rst $38

jr_007_590b:
    ld a, [hl-]
    rst $38
    inc d
    nop
    call nc, $fa03
    rst $38
    rrca
    nop
    xor e
    nop
    db $10
    jr z, @+$01

    dec b
    nop
    nop
    ei
    rst $38
    cp h
    rst $38
    nop
    nop
    cp h
    ld [bc], a
    nop
    nop
    db $e3
    rst $38
    ld l, [hl]
    nop
    db $10

jr_007_592c:
    jr z, jr_007_5932

    nop
    db $fd
    rst $38
    ld b, d

jr_007_5932:
    nop
    db $10
    ld [$0358], sp
    nop
    nop

jr_007_5939:
    rlca
    nop
    ld l, [hl]

jr_007_593c:
    nop
    nop
    jr z, jr_007_59a7

    nop
    db $e3
    rst $38
    dec c
    nop
    ld e, b
    inc c
    ld h, d
    inc b
    ld b, $00
    xor $ff
    ld l, [hl]
    nop
    nop
    jr z, jr_007_5952

jr_007_5952:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_007_5964

jr_007_5964:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, @+$01

    ld [$0049], sp
    rst $30
    rst $38
    ld d, b
    nop
    ld b, b
    ld [$0380], sp
    di
    rst $38
    inc bc
    nop
    ld l, [hl]
    nop
    nop
    jr z, jr_007_59c5

    nop
    rla
    nop
    jr nc, jr_007_598f

jr_007_598f:
    sub $0c
    adc b
    ld [bc], a
    nop
    nop
    nop
    nop
    ld l, [hl]
    nop
    jr jr_007_59c3

    ldh a, [rIE]
    ld b, $00
    ld bc, $fa00
    nop
    jp c, Jump_000_0002

    nop

jr_007_59a7:
    nop
    nop
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_5939

    rst $38
    call nc, $a7ff
    rst $38
    sub d
    inc b
    jp nz, $ef03

    rst $38
    add c
    rst $38
    ld l, [hl]
    nop
    ld [$7228], sp
    rst $38
    nop
    nop

jr_007_59c3:
    ld [bc], a
    nop

jr_007_59c5:
    ld b, [hl]
    ld [$02ce], sp
    inc b
    nop
    ld [$6eff], a
    nop
    nop
    jr z, @-$47

    rst $38
    inc l

jr_007_59d4:
    nop
    call z, Call_007_6cff
    rrca
    xor d
    nop
    nop
    nop
    nop
    nop
    ld l, [hl]
    nop
    nop
    jr z, jr_007_59d4

    rst $38
    ld b, $00
    ld bc, $fa00
    nop
    jp c, Jump_000_0002

    nop
    nop
    nop
    ld l, [hl]
    nop
    nop
    jr z, jr_007_5a68

    rst $38
    nop
    nop
    ld [bc], a
    nop
    ld b, [hl]
    ld [$02ce], sp
    inc b
    nop

jr_007_5a01:
    ld [$6eff], a
    nop
    nop
    jr z, @+$01

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
    jr z, @+$01

    ld b, $43
    nop
    ld de, $fa00
    rst $38
    ld a, b
    dec bc
    db $ec

jr_007_5a26:
    ld bc, $ffe3
    rst $20
    rst $38
    ld l, [hl]
    nop
    jr jr_007_5a57

    push hl
    rst $38
    nop
    nop
    daa
    nop
    cp b
    rlca
    nop
    inc bc
    xor $ff
    dec sp
    nop
    ld l, [hl]
    nop
    nop
    jr z, jr_007_5a26

    rst $38
    nop
    nop
    add e
    nop
    adc b
    rlca
    ld [hl], d
    ld [bc], a
    nop
    nop
    nop
    nop
    ld l, [hl]
    nop
    nop
    jr z, jr_007_5a01

jr_007_5a54:
    rst $38
    ld h, $00

jr_007_5a57:
    ld [hl], h
    nop
    db $76
    inc b
    ld a, [hl-]
    ld [bc], a
    ei
    rst $38
    ld d, [hl]
    nop
    ld l, [hl]
    nop
    ld [$ef28], sp
    rst $38
    db $eb

jr_007_5a68:
    rst $38
    ret nc

    rst $38
    jp nz, $9e0f

    inc bc
    ld sp, hl
    rst $38
    ei
    rst $38
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_5a54

    rst $38
    db $db
    rst $38
    add [hl]
    rst $38
    call nz, Call_000_2200
    inc b
    ld bc, $ef00
    rst $38
    ld l, [hl]
    nop
    db $10
    jr z, @+$01

    ld [$007f], sp
    ld [$b100], sp
    rst $38
    ld l, h
    inc c
    xor [hl]
    inc bc
    dec b
    nop
    ld b, $00
    ld l, [hl]
    nop
    jr jr_007_5ac5

    jp hl


    rst $38
    pop af
    rst $38
    cp [hl]
    rst $38
    ld a, [c]
    inc bc
    jp nz, $0703

    nop
    push hl
    rst $38
    ld l, [hl]
    nop
    ld [$1b28], sp
    nop
    ei

jr_007_5ab2:
    rst $38
    ld a, [bc]
    nop
    ret c

    ld [$0392], sp
    stop
    ld [hl-], a
    nop
    ld l, [hl]
    nop
    nop
    jr z, jr_007_5ab2

    rst $38
    dec bc
    nop

jr_007_5ac5:
    ld sp, $0a00
    inc bc
    add d
    ld [bc], a
    inc bc
    nop
    pop af
    rst $38
    ld l, [hl]
    nop
    ld [$fe28], sp
    rst $38
    nop
    nop
    ld l, h
    nop
    db $76
    inc b
    ld d, h
    inc bc
    db $fc
    rst $38
    rla
    nop
    ld l, [hl]
    nop
    ld [$5228], sp
    nop
    nop
    nop
    jr c, jr_007_5aeb

jr_007_5aeb:
    sub [hl]
    dec bc
    and $02
    nop

jr_007_5af0:
    nop
    inc bc
    nop
    ld l, [hl]
    nop
    jr jr_007_5b1f

    reti


    rst $38
    cpl
    nop
    ld b, b
    nop
    ld c, $0c

Jump_007_5aff:
    ret nc

    nop
    cp $ff
    rrca
    nop
    ld l, [hl]
    nop
    jr jr_007_5b31

    ld l, d
    rst $38
    nop
    nop
    dec sp
    nop
    db $f4
    inc bc
    ret z

    inc bc
    dec b
    nop
    ld a, [hl+]
    nop
    ld l, [hl]
    nop
    ld [$ff28], sp
    inc b
    nop
    nop

jr_007_5b1f:
    xor $ff
    rla
    nop
    or [hl]
    ld [$0358], sp
    db $f4
    rst $38
    ld [$6eff], a
    nop
    nop
    jr z, jr_007_5b32

    nop

jr_007_5b31:
    inc b

jr_007_5b32:
    nop
    ld c, b
    nop
    ld b, $08
    jr nc, jr_007_5b3a

    ld sp, hl

jr_007_5b3a:
    rst $38
    nop
    nop
    ld l, [hl]
    nop
    nop
    jr z, @+$01

    rst $38
    cp $ff
    jp nz, $0cff

    ld bc, $0336
    stop
    rla
    nop
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_5af0

    rst $38
    ld hl, sp-$01
    inc bc
    nop
    ld b, [hl]
    inc b
    sub b
    inc bc
    nop
    nop
    rst $30
    rst $38
    ld l, [hl]
    nop
    ld [$ff28], sp
    dec b
    jp nz, $e3ff

    rst $38
    ldh a, [rIE]
    ld b, b
    inc bc
    add h
    inc b
    nop
    nop
    ei
    rst $38
    ld l, [hl]
    nop
    ld [$7528], sp
    rst $38
    db $eb
    rst $38
    nop
    nop
    jp z, $9a03

    inc bc
    ld b, $00
    ld a, [de]
    nop
    ld l, [hl]
    nop
    ld [$4828], sp
    nop
    db $eb
    rst $38
    nop
    nop
    ld e, b
    inc c
    ld l, [hl]
    inc b
    dec b
    nop
    ld c, $00
    ld l, [hl]
    nop
    jr jr_007_5bc5

    add c
    nop
    ei
    rst $38
    db $ed
    rst $38
    cp [hl]
    inc c
    ld d, [hl]
    inc bc
    inc b
    nop
    nop
    nop
    ld l, [hl]
    nop
    jr jr_007_5bd7

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, @+$01

    ld b, $78
    nop

jr_007_5bc5:
    ld [de], a
    nop
    stop
    adc d
    rrca
    ld e, $02
    dec b
    nop
    nop
    nop
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_5c4d

    nop

jr_007_5bd7:
    dec bc
    nop
    adc a
    nop
    add h
    ld [$0288], sp
    ld [de], a
    nop
    dec e
    nop
    ld l, [hl]
    nop
    nop
    jr z, jr_007_5bf4

    nop
    or $ff
    ld d, h
    nop
    ld a, h
    inc b
    inc d
    inc bc
    dec bc
    nop
    nop

jr_007_5bf4:
    nop
    ld l, [hl]
    nop
    ld [$db28], sp
    rst $38
    inc de
    nop
    ld a, $00
    sbc h
    inc bc
    ld h, d
    ld [bc], a
    ei
    rst $38
    ld [$6e00], sp
    nop
    ld [$de28], sp
    rst $38
    inc c
    nop
    ldh a, [rIE]
    ld b, $01
    ld [$1402], sp
    nop
    di
    rst $38
    ld l, [hl]
    nop

jr_007_5c1b:
    db $10
    jr z, @-$16

    rst $38
    inc hl
    nop
    ld b, h
    nop
    sbc h
    rlca
    inc c
    ld bc, $0007
    nop
    nop
    ld l, [hl]
    nop
    nop
    jr z, @+$01

    ld [$ffea], sp
    dec hl
    nop
    sub h
    rst $38
    or $0e
    ld b, h
    ld bc, $fff9
    nop
    nop
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_5c1b

    rst $38
    ld h, $00
    ld [c], a
    rst $38
    cp [hl]
    rrca
    adc d
    ld [bc], a

jr_007_5c4d:
    ei
    rst $38
    ld d, a
    nop
    ld l, [hl]
    nop
    db $10
    jr z, @+$1a

    nop
    ld a, [de]
    nop
    ld h, $00
    or b
    ld a, [bc]
    call nc, $ef01
    rst $38
    inc d
    nop
    ld l, [hl]
    nop
    inc e
    jr z, jr_007_5c87

    nop
    ld b, h
    nop
    ld l, $00
    ld l, $05
    jr jr_007_5c71

jr_007_5c71:
    nop
    nop
    nop
    nop
    ld l, [hl]
    nop
    nop
    jr z, jr_007_5c7a

jr_007_5c7a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_5c87:
    nop
    nop
    nop
    jr z, jr_007_5c8c

jr_007_5c8c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_007_5c9e

jr_007_5c9e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_007_5cb0

jr_007_5cb0:
    nop
    nop
    nop

jr_007_5cb3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, @+$01

    ld [bc], a
    ld hl, $1c00
    nop
    ret c

    rst $38
    jr @+$10

    call z, Call_000_1901
    nop
    ld [hl+], a
    nop
    ld l, [hl]
    nop

jr_007_5cd3:
    inc d
    jr z, jr_007_5cb3

    rst $38
    ld bc, $4900
    nop
    ld l, b
    ld b, $2a
    inc bc
    db $fd
    rst $38
    nop
    nop
    ld l, [hl]

jr_007_5ce4:
    nop
    inc b
    jr z, @+$01

    inc bc
    jr z, jr_007_5ceb

jr_007_5ceb:
    nop
    nop
    ld [hl], $00
    ld [hl], b
    add hl, bc
    ld [hl+], a
    ld [bc], a
    ld [$b100], sp
    rst $38
    ld l, [hl]
    nop
    inc e
    jr z, @-$0c

    rst $38
    ei
    rst $38
    ret c

    rst $38
    ld b, $01
    ld a, [$0002]
    nop
    nop
    nop
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_5cd3

    rst $38
    dec sp
    nop
    rst $30
    rst $38
    and b
    inc b
    xor h
    nop
    nop
    nop
    nop
    nop
    ld l, [hl]
    nop
    ld [$ff28], sp
    ld b, $a9
    rst $38
    pop af
    rst $38
    inc c
    nop
    ld [hl], d
    rrca
    ld c, [hl]
    inc bc
    ret c

    rst $38
    ld d, [hl]
    nop
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_5ce4

    rst $38
    jp nc, Jump_007_40ff

    nop
    ld a, [hl]
    ld [$037a], sp
    inc b
    nop
    jp hl


    rst $38
    ld l, [hl]
    nop
    nop
    jr z, @+$5d

    nop
    ld sp, hl
    rst $38
    ld e, e
    nop
    jp nz, $800c

    ld [bc], a
    ld [$db00], sp
    rst $38
    ld l, [hl]
    nop
    jr jr_007_5d7f

    db $f4
    rst $38
    add sp, -$01
    ld e, [hl]
    nop
    adc b
    inc bc
    inc l
    inc bc
    dec d
    nop
    db $e3
    rst $38
    ld l, [hl]
    nop
    ld [$6728], sp
    nop
    db $e4
    rst $38
    push af
    rst $38
    ld d, h
    ld [$0360], sp
    add hl, hl
    nop
    ld bc, $6e00
    nop
    nop
    jr z, @+$21

    nop
    ldh [rIE], a

jr_007_5d7f:
    sbc a
    rst $38
    ld [hl], b
    dec bc
    ld l, b
    inc bc
    ret nc

    rst $38
    dec b
    nop
    ld l, [hl]
    nop
    jr jr_007_5db5

    rst $38
    ld [$006d], sp
    ldh a, [rIE]
    sbc c
    nop
    xor h
    rlca
    sbc d
    inc bc
    call c, $01ff
    nop
    ld l, [hl]
    nop
    nop
    jr z, @+$5b

    nop
    ld h, $00
    dec l
    nop
    sbc h
    nop
    db $fc
    ld bc, $ffd5
    add hl, sp
    nop
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_5e11

    nop

jr_007_5db5:
    ld hl, sp-$01
    ld b, h
    nop
    ld a, [hl-]
    dec bc
    ld e, $03
    db $ec
    rst $38
    ld sp, hl
    rst $38
    ld l, [hl]
    nop
    jr @+$2a

    inc h
    nop
    add sp, -$01
    inc e
    nop
    ld a, [hl-]
    inc bc
    ret c

    inc bc
    ld a, [c]
    rst $38
    ld a, [$6eff]
    nop
    ld [$ae28], sp
    rst $38
    ld a, $00
    ld [hl], $00
    ld b, [hl]
    inc c
    xor [hl]
    nop
    dec de
    nop
    nop
    nop
    ld l, [hl]
    nop
    jr jr_007_5e51

    sbc e
    rst $38
    ld [$be00], sp
    rst $38
    ld e, d
    ld [$0208], sp
    rst $20
    rst $38
    inc b
    nop
    ld l, [hl]
    nop
    nop
    jr z, @-$60

    rst $38
    dec b
    nop
    add b
    rst $38
    sub d
    inc b
    jr c, jr_007_5e07

    pop af
    rst $38

jr_007_5e07:
    dec d
    nop
    ld l, [hl]
    nop
    ld [$0628], sp
    nop
    cp $ff

jr_007_5e11:
    ld [hl], l
    rst $38
    or h
    dec bc
    ld b, d
    ld [bc], a
    ld a, [c]
    rst $38
    or b
    rst $38
    ld l, [hl]
    nop
    jr jr_007_5e47

    rst $38
    dec b
    dec d
    nop
    dec d
    nop
    jp z, $d0ff

    rrca
    cp b
    ld [bc], a
    inc d
    nop
    ld b, a
    nop
    ld l, [hl]
    nop
    db $10

jr_007_5e32:
    jr z, jr_007_5e32

    rst $38
    nop
    nop
    ccf
    nop
    ld d, $08
    cp $02
    ld [bc], a
    nop
    db $e4
    rst $38
    ld l, [hl]
    nop
    nop
    jr z, @-$1d

    rst $38

jr_007_5e47:
    or c
    rst $38
    dec a
    nop
    add d
    dec b
    jr nc, jr_007_5e54

    db $e4
    rst $38

jr_007_5e51:
    adc $ff
    ld l, [hl]

jr_007_5e54:
    nop
    nop
    jr z, jr_007_5ea2

    nop
    ld d, $00
    dec a
    nop
    ld hl, sp+$09
    ld a, $02
    db $fd
    rst $38
    ld [$6e00], sp
    nop
    inc e
    jr z, jr_007_5eb4

    nop
    ld d, $00
    dec a
    nop
    ld hl, sp+$09
    ld a, $02
    db $fd
    rst $38
    ld [$6e00], sp
    nop
    nop
    jr z, @+$01

    ld [$001a], sp
    ld de, $c300
    rst $38
    ld l, b
    nop
    ld b, h
    inc bc
    rrca
    nop
    ld h, h

jr_007_5e8a:
    nop
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_5eee

    nop
    db $fd
    rst $38
    adc c
    rst $38
    nop
    inc c
    ld [hl-], a
    ld [bc], a
    cp l
    rst $38

jr_007_5e9b:
    adc $ff
    ld l, [hl]
    nop
    jr jr_007_5ec9

    inc bc

jr_007_5ea2:
    nop
    dec c
    nop
    jr nz, jr_007_5ea7

jr_007_5ea7:
    inc d
    add hl, bc
    ld d, b
    ld [bc], a
    ld a, [hl+]
    nop
    ld h, $00

jr_007_5eaf:
    ld l, [hl]
    nop
    inc e
    jr z, jr_007_5eaf

jr_007_5eb4:
    rst $38
    jp c, Jump_007_7cff

    nop
    add $04
    add b
    inc bc
    sbc h
    rst $38
    pop de
    rst $38
    ld l, [hl]
    nop
    ld [$4c28], sp
    nop
    inc de
    nop

jr_007_5ec9:
    ld l, b
    nop
    ld hl, sp+$06
    or d
    ld [bc], a
    ld b, $00
    ld [hl-], a
    nop
    ld l, [hl]
    nop
    nop
    jr z, jr_007_5f35

    nop
    inc d
    nop
    di
    rst $38
    ld a, $00
    cp $02
    ld [$2200], sp
    nop
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_5e8a

    rst $38
    ld hl, sp-$01
    and e

jr_007_5eee:
    nop
    ld h, h
    ld [$0292], sp
    dec b
    nop
    inc bc
    nop
    ld l, [hl]
    nop
    nop
    jr z, jr_007_5e9b

    rst $38
    pop hl
    rst $38
    xor [hl]
    rst $38
    db $10
    dec b
    ld h, [hl]
    inc b
    ei
    rst $38
    ld [$6e00], sp
    nop
    nop
    jr z, @+$01

    ld [$0076], sp
    dec b
    nop
    xor b
    rst $38
    jr z, jr_007_5f22

    ret c

    ld [bc], a
    ld b, $00
    dec bc

jr_007_5f1c:
    nop

jr_007_5f1d:
    ld l, [hl]
    nop
    jr jr_007_5f49

    ld b, l

jr_007_5f22:
    nop
    xor $ff
    and c
    rst $38
    ld e, b
    dec bc
    xor d
    inc bc
    ld a, [$f7ff]
    rst $38
    ld l, [hl]
    nop
    jr jr_007_5f5b

    or l
    rst $38

jr_007_5f35:
    push af
    rst $38
    and d
    rst $38
    call nz, $9a04
    inc bc
    dec b
    nop
    ld [$6e00], sp
    nop
    ld [$a328], sp
    rst $38
    ld sp, hl
    rst $38

jr_007_5f49:
    adc a
    rst $38
    ld a, d
    nop
    ld c, h
    inc bc
    dec b
    nop
    ld [bc], a
    nop
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_5f1d

    rst $38
    xor $ff

jr_007_5f5b:
    ld hl, $ae00
    ld [$0410], sp
    db $fc
    rst $38
    db $fd
    rst $38
    ld l, [hl]
    nop
    nop
    jr z, jr_007_5fd9

    rst $38
    reti


    rst $38
    ld [hl], d
    nop
    sbc [hl]
    dec b
    ld a, [hl]
    inc b
    ld [de], a
    nop
    add sp, -$01
    ld l, [hl]
    nop
    inc b
    jr z, jr_007_5f1c

    rst $38
    ld hl, sp-$01
    and e
    nop
    ld h, h
    ld [$0292], sp
    dec b
    nop
    inc bc
    nop
    ld l, [hl]
    nop

jr_007_5f8b:
    nop
    jr z, @-$5f

    rst $38
    pop hl
    rst $38
    xor [hl]
    rst $38
    db $10
    dec b
    ld h, [hl]
    inc b
    ei
    rst $38
    ld [$6e00], sp
    nop
    ld [$ff28], sp

jr_007_5fa0:
    ld [$0042], sp
    ld a, [hl-]
    nop
    ld [de], a
    nop
    ret z

    inc c
    add sp, $00
    ld a, [$edff]
    rst $38
    ld l, [hl]
    nop
    inc e
    jr z, jr_007_5f8b

    rst $38
    call nc, $86ff
    rst $38
    jp c, $e60f

    inc b
    nop
    nop
    rst $38
    rst $38
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_5fa0

    rst $38
    ld [c], a
    rst $38
    ret nz

    rst $38
    ret c

    rrca
    call c, $f903
    rst $38
    reti


    rst $38
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_6001

    nop

jr_007_5fd9:
    add hl, de
    nop
    ld sp, $a800
    ld a, [bc]
    ld h, [hl]
    ld [bc], a
    ld [bc], a
    nop
    ld [de], a
    nop
    ld l, [hl]
    nop
    inc e
    jr z, @-$49

    rst $38
    rlca
    nop
    and $ff
    cp d
    ld [bc], a
    add [hl]
    ld [bc], a
    ld c, c
    nop
    call nc, Call_007_6eff
    nop
    inc c
    jr z, jr_007_5ffc

jr_007_5ffc:
    nop
    nop
    nop
    nop
    nop

jr_007_6001:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_007_600e

jr_007_600e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_007_6020

jr_007_6020:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, @+$01

    ld [bc], a
    di
    rst $38
    db $ec
    rst $38
    ld d, l
    nop
    call nz, Call_000_1406
    inc b
    call z, $feff
    rst $38
    ld l, [hl]
    nop
    inc b
    jr z, jr_007_6046

jr_007_6046:
    nop
    ld hl, $f200
    rst $38
    ld b, h
    nop
    sub [hl]
    nop
    nop
    nop
    nop
    nop
    ld l, [hl]
    nop
    db $10
    ld l, b
    rst $38
    ld [$005e], sp
    add sp, -$01
    cp c
    rst $38
    ld a, [hl+]
    dec bc
    ld [$fd03], a
    rst $38
    nop
    nop
    ld l, [hl]
    nop
    jr jr_007_6093

    db $f4
    rst $38
    ld [c], a
    rst $38
    cp c
    rst $38
    ld b, b
    dec b
    ld [$0703], a
    nop

jr_007_6077:
    ld [$6e00], sp
    nop
    ld [$9b28], sp
    rst $38
    pop af
    rst $38
    sbc a
    rst $38
    ld e, h
    inc b
    ld d, h
    inc bc
    rst $30
    rst $38
    ld [$6eff], a
    nop
    ld [$ea28], sp
    rst $38
    ldh [rIE], a

jr_007_6093:
    ld h, h
    nop
    ld e, b
    rlca
    call nc, $fa03
    rst $38
    pop hl
    rst $38
    ld l, [hl]
    nop
    nop
    jr z, jr_007_6077

    rst $38
    cp b
    rst $38
    cp $ff
    db $fc

jr_007_60a8:
    nop
    ld d, $05
    jp $afff


    rst $38
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_60a8

    rst $38
    ld [c], a
    rst $38
    cp c
    rst $38
    ld b, b

jr_007_60ba:
    dec b
    ld [$0703], a
    nop
    ld [$6e00], sp
    nop
    nop
    jr z, jr_007_60ba

    rst $38
    ld [c], a
    rst $38
    cp c
    rst $38
    ld b, b
    dec b
    ld [$0703], a
    nop
    ld [$6e00], sp
    nop
    nop
    jr z, @-$11

    rst $38
    ld [de], a
    nop
    or h
    rst $38
    or h
    ld a, [bc]
    sub b
    ld [bc], a
    ld a, [c]
    rst $38
    push af
    rst $38
    ld l, [hl]
    nop
    jr jr_007_6111

    rst $38
    inc b
    ld b, a
    nop
    inc bc
    nop
    db $eb
    rst $38
    nop
    dec c
    ld [c], a
    ld [bc], a
    inc c
    nop
    ld hl, $6e00
    nop
    nop
    jr z, jr_007_6145

    nop

Jump_007_60ff:
    inc bc
    nop
    db $eb
    rst $38
    nop
    dec c
    ld [c], a
    ld [bc], a
    inc c
    nop
    ld hl, $6e00
    nop
    jr jr_007_6137

    cp h
    rst $38

jr_007_6111:
    nop
    nop
    rrca
    nop
    ld b, h
    inc b
    ld e, [hl]
    inc bc
    ei
    rst $38
    rra
    nop
    ld l, [hl]
    nop
    ld [$0228], sp
    nop
    add hl, sp
    nop
    ld c, c
    nop
    db $76
    rlca
    ld a, [bc]
    ld [bc], a
    db $f4
    rst $38
    ld [hl], $00

jr_007_612f:
    ld l, [hl]
    nop
    nop
    jr z, @+$01

    rlca
    ld [c], a
    rst $38

jr_007_6137:
    dec de
    nop
    and h
    rst $38
    ld a, $0f
    adc $01
    ld a, [$1cff]
    nop
    ld l, [hl]
    nop

jr_007_6145:
    db $10
    jr z, jr_007_612f

    rst $38
    ldh [rIE], a
    ld a, [hl+]
    nop
    add d
    ld [$0476], sp
    db $fc
    rst $38
    db $fc
    rst $38
    ld l, [hl]
    nop
    nop
    jr z, @+$01

    rst $38
    rst $18
    rst $38
    ld c, c
    nop
    ld h, h
    add hl, bc
    ld h, b
    inc b
    ld c, $00
    rlca
    nop
    ld l, [hl]
    nop
    nop
    jr z, jr_007_61b2

    nop
    rst $28
    rst $38
    dec h
    nop
    add d
    dec bc
    or b
    inc bc
    dec c
    nop
    ld hl, sp-$01
    ld l, [hl]
    nop
    jr jr_007_61a5

    or c
    rst $38
    ld a, [hl+]
    nop
    ld [hl], $00
    ld b, [hl]
    inc c
    jp z, $1100

    nop
    nop
    nop
    ld l, [hl]
    nop

jr_007_618d:
    nop
    jr z, jr_007_618d

    rst $38
    push de
    rst $38
    ld e, b
    nop
    ld [hl-], a
    add hl, bc
    ret z

    inc b
    ld hl, sp-$01
    ld de, $6e00
    nop
    inc e
    jr z, jr_007_61a2

jr_007_61a2:
    nop
    nop
    nop

jr_007_61a5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_61b2:
    jr z, @+$01

    ld [bc], a
    dec a
    nop
    inc c
    nop
    and $ff
    ld [hl], h
    inc c
    add sp, $02
    ld [de], a
    nop
    inc c
    nop
    ld l, [hl]
    nop
    jr jr_007_61ef

    ret z

    rst $38
    nop
    nop
    inc c
    nop
    sub b
    inc bc
    call c, $e202
    rst $38
    reti


    rst $38
    ld l, [hl]
    nop
    ld [$ff28], sp
    ld [$ffe2], sp
    ret z

    rst $38
    db $fd
    rst $38
    cp d
    rrca
    xor h
    inc bc
    ld c, d
    nop

jr_007_61e7:
    db $e4
    rst $38
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_61e7

    rst $38

jr_007_61ef:
    ret z

    rst $38
    ld b, c
    nop
    call nz, $8e03
    inc bc
    rrca
    nop
    and a
    rst $38
    ld l, [hl]

jr_007_61fc:
    nop
    ld [$1e28], sp
    nop
    call $d7ff
    rst $38
    ld [$4c06], a
    inc b
    rla
    nop
    ld a, [hl-]
    nop
    ld l, [hl]
    nop
    nop
    jr z, jr_007_61fc

    rst $38
    ldh [rIE], a
    ld h, h
    nop
    ld e, b
    rlca
    call nc, $fa03
    rst $38
    pop hl
    rst $38
    ld l, [hl]
    nop
    nop
    jr z, @-$2d

    rst $38
    jp nc, $0aff

    nop
    ld l, d
    ld [$038c], sp
    ei
    rst $38
    push af
    rst $38
    ld l, [hl]
    nop
    nop
    jr z, jr_007_6254

    nop
    call c, Call_000_24ff
    nop
    jr @+$0c

    sub h
    inc b
    ld hl, sp-$01
    adc l
    nop
    ld l, [hl]
    nop
    inc e
    jr z, @-$2c

    rst $38
    cp e
    rst $38
    cp c
    rst $38
    cp b
    ld c, $90
    inc b
    ld a, [bc]
    nop
    and b

jr_007_6254:
    rst $38
    ld l, [hl]
    nop
    db $10
    jr z, @-$11

    rst $38
    ld [de], a
    nop
    or h
    rst $38
    or h
    ld a, [bc]
    sub b
    ld [bc], a
    ld a, [c]
    rst $38
    push af
    rst $38
    ld l, [hl]
    nop
    nop
    jr z, @+$01

    ld [bc], a
    jp nz, Jump_000_00ff

    nop
    jp hl


    rst $38
    ld l, $03
    jp z, Jump_000_0a03

    nop
    ld h, e
    nop
    ld l, [hl]
    nop
    ld [$4428], sp
    nop
    nop
    nop
    nop
    nop
    ld h, b
    inc c
    or [hl]
    inc bc
    ld a, [bc]
    nop
    ld h, l
    nop
    ld l, [hl]
    nop
    jr jr_007_62b9

    rst $38
    dec b
    ld c, l
    nop
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$0c]
    ld l, $03
    rlca
    nop
    add sp, -$01
    ld l, [hl]
    nop
    jr jr_007_62cd

    ret


    rst $38
    ld hl, sp-$01
    db $f4
    rst $38
    call nz, Call_007_6402
    inc bc
    and $ff
    inc hl
    nop
    ld l, [hl]
    nop
    ld [$9f28], sp
    rst $38

jr_007_62b9:
    db $ed
    rst $38
    nop
    nop
    adc [hl]
    inc bc
    ld d, [hl]
    inc bc
    rst $38
    rst $38
    rlca
    nop
    ld l, [hl]
    nop
    ld [$3928], sp
    nop
    jr jr_007_62cd

jr_007_62cd:
    xor l
    rst $38
    ld [c], a
    ld c, $1e
    ld [bc], a
    db $ec
    rst $38
    nop
    nop
    ld l, [hl]
    nop
    inc d
    jr z, jr_007_62dc

jr_007_62dc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, @+$01

    ld [$ff7f], sp
    ld [$adff], a
    rst $38
    ret z

    inc b
    sbc h
    inc bc
    rst $20
    rst $38
    ld c, $00
    ld l, [hl]
    nop
    ld [$be28], sp
    rst $38
    jp nc, $bcff

jr_007_6306:
    rst $38
    or h
    ld a, [bc]
    ld [hl], b
    inc b
    ld a, [de]
    nop
    rst $20
    rst $38
    ld l, [hl]
    nop
    jr jr_007_633b

    stop
    push af
    rst $38
    call nc, $d6ff
    rrca
    ld [hl], b
    ld [bc], a
    db $f4
    rst $38
    xor d
    rst $38
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_6327

    nop

jr_007_6327:
    rst $20
    rst $38
    dec bc
    nop
    ld [hl-], a
    inc bc
    call c, Call_000_0003
    nop
    ld sp, hl
    rst $38
    ld l, [hl]
    nop
    ld [$4e28], sp
    nop
    ld [c], a
    rst $38

jr_007_633b:
    ld a, [hl+]
    nop
    xor [hl]
    nop
    call c, Call_007_4d03
    nop
    db $ed
    rst $38
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_636f

    nop
    inc l
    nop
    ld c, l
    nop
    ld e, b
    ld [bc], a
    cp $01
    ldh a, [rIE]
    ld de, $6e00
    nop
    inc c
    jr z, jr_007_6306

    nop
    ld [bc], a
    nop
    adc d
    nop
    and $0a
    ld [bc], a
    inc bc
    db $fc
    rst $38
    db $fd
    rst $38
    ld l, [hl]
    nop
    jr jr_007_6395

    nop
    nop

jr_007_636f:
    nop
    nop

jr_007_6371:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, @+$01

    dec b
    rst $08
    rst $38
    daa
    nop
    adc e
    rst $38
    cp d
    nop
    jr z, jr_007_638d

    ld a, [bc]
    nop

jr_007_638d:
    add hl, hl
    nop
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_6371

    rst $38

jr_007_6395:
    ldh [rIE], a
    nop
    nop
    ld [$0203], sp
    inc b
    xor $ff
    di
    rst $38
    ld l, [hl]
    nop
    ld [$2d28], sp
    nop
    and $ff
    nop
    nop
    add sp, $0c
    ld a, [c]
    inc bc
    inc de
    nop
    di
    rst $38
    ld l, [hl]
    nop
    jr jr_007_63df

    scf
    nop
    ld d, $00
    xor [hl]
    rst $38
    nop
    rrca
    ret nz

    ld bc, $0001
    inc c
    nop
    ld l, [hl]
    nop

jr_007_63c7:
    db $10
    jr z, jr_007_63ca

jr_007_63ca:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, @+$01

    inc b
    nop
    nop

jr_007_63df:
    push de
    rst $38
    rst $10
    rst $38
    add b
    nop
    or [hl]
    inc b

jr_007_63e7:
    db $fd
    rst $38
    ld [bc], a
    nop
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_63f0

jr_007_63f0:
    nop
    sub $ff
    cpl
    nop
    ld l, h
    rlca
    cp b
    inc b
    or $ff
    ld a, [bc]
    nop
    ld l, [hl]
    nop
    nop
    jr z, jr_007_63c7

Call_007_6402:
    rst $38
    add hl, de
    nop
    call nz, $d6ff
    ld [bc], a
    jp c, Jump_000_2a01

    nop
    push af
    rst $38
    ld l, [hl]
    nop
    inc c
    jr z, jr_007_63e7

    rst $38
    ld a, [hl+]
    nop
    xor l
    rst $38
    ld [hl+], a
    ld bc, $0236
    dec bc
    nop

jr_007_641f:
    jr jr_007_6421

jr_007_6421:
    ld l, [hl]
    nop
    nop
    jr z, @+$01

    ld b, $bd
    rst $38
    sbc $ff
    db $e3
    rst $38
    or h
    inc b
    cp d
    inc bc
    inc bc
    nop
    ld sp, hl
    rst $38
    ld l, [hl]
    nop
    ld [$ff28], sp
    rst $38
    pop hl
    rst $38
    ldh a, [rIE]
    jr c, jr_007_644c

    xor h
    inc bc
    dec hl
    nop
    and $ff
    ld l, [hl]
    nop
    jr jr_007_6473

    nop

jr_007_644c:
    nop
    push af
    rst $38
    dec [hl]
    nop
    sbc h
    ld [$033c], sp
    ld [hl+], a
    nop
    db $fc
    rst $38
    ld l, [hl]
    nop
    nop
    jr z, @+$72

    nop
    nop
    nop
    dec hl
    nop
    add $0c
    ld d, d
    inc bc
    dec de
    nop
    dec de
    nop
    ld l, [hl]
    nop
    jr jr_007_6497

jr_007_646f:
    nop
    nop
    nop
    nop

jr_007_6473:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_007_641f

    nop
    dec sp
    nop
    inc sp
    nop
    sub d
    inc c
    ld d, $01
    db $fd
    rst $38
    inc de
    nop
    ld l, [hl]
    nop
    jr jr_007_64bb

    rst $38
    dec b
    nop
    nop

jr_007_6497:
    rst $30
    rst $38
    ret c

    rst $38
    ldh [rP1], a
    inc e
    inc bc
    inc h
    nop
    rlca

jr_007_64a2:
    nop
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_64a2

    rst $38
    ld a, [c]
    rst $38
    ld a, [hl+]
    nop
    add d
    rlca
    ld b, b
    inc bc
    ld [bc], a
    nop
    nop
    nop
    ld l, [hl]
    nop
    nop
    jr z, jr_007_646f

    rst $38

jr_007_64bb:
    ld [bc], a
    nop
    ei
    rst $38
    ld b, [hl]
    inc bc
    and h
    ld [bc], a
    ld sp, hl
    rst $38
    dec l
    nop
    ld l, [hl]
    nop
    ld [$5128], sp
    nop
    jr z, jr_007_64cf

jr_007_64cf:
    ld a, $00
    ld e, $0a
    inc d
    ld [bc], a
    db $eb
    rst $38
    ld c, c
    nop
    ld l, [hl]
    nop
    inc e
    jr z, jr_007_64de

jr_007_64de:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, @+$01

    ld [$006d], sp
    db $eb
    rst $38
    ld a, $00
    ret nz

    ld [$0424], sp
    rst $38
    rst $38
    ld bc, $6e00
    nop
    nop
    jr z, jr_007_656b

    nop
    jp hl


    rst $38
    rst $10
    rst $38
    ld b, h
    rrca
    ld a, [de]
    inc b
    or $ff
    cp $ff
    ld l, [hl]
    nop
    db $10
    jr z, @+$3f

    nop
    ldh [rIE], a
    sbc d
    rst $38
    ld a, b
    dec bc
    add h
    inc b
    nop
    nop
    rla
    nop
    ld l, [hl]
    nop
    jr jr_007_654f

    nop
    nop
    pop de
    rst $38
    and e
    rst $38
    and b
    inc b
    add b
    inc b
    ld b, $00
    ldh [rIE], a
    ld l, [hl]
    nop
    ld [$ab28], sp
    rst $38
    ld b, $00
    xor h
    rst $38
    ld d, b
    dec b
    ld [bc], a
    ld [bc], a
    dec bc
    nop
    inc e
    nop
    ld l, [hl]
    nop
    ld [$a828], sp
    rst $38
    ld [c], a
    rst $38

jr_007_654f:
    xor $ff
    cp h
    ld [$048c], sp
    ei
    rst $38

jr_007_6557:
    rlca
    nop
    ld l, [hl]
    nop
    nop
    jr z, @-$5d

    rst $38
    call c, Call_007_70ff
    nop
    cp b
    ld [$03e4], sp
    dec bc
    nop
    push de
    rst $38

jr_007_656b:
    ld l, [hl]
    nop
    nop
    jr z, jr_007_6557

    rst $38
    jp z, Jump_007_60ff

    nop
    ld a, h
    dec bc
    and $03
    ld c, $00
    cp b
    rst $38
    ld l, [hl]
    nop
    jr jr_007_65a9

    rst $38
    dec b
    call $e6ff
    rst $38
    ei
    rst $38
    sbc h
    inc bc
    adc d
    inc bc
    rrca
    nop
    add sp, -$01
    ld l, [hl]
    nop
    ld [$2828], sp

jr_007_6596:
    nop
    xor $ff
    nop
    nop
    ld [hl], h
    inc c
    ld l, h
    inc bc
    db $ed
    rst $38
    ld sp, hl
    rst $38
    ld l, [hl]
    nop
    jr jr_007_65cf

    ld h, c
    nop

jr_007_65a9:
    rla
    nop
    add hl, bc
    nop
    ld a, d
    inc c
    ret nc

    ld bc, $000f
    jr jr_007_65b5

jr_007_65b5:
    ld l, [hl]
    nop
    jr jr_007_65e1

    sbc l
    rst $38
    inc h
    nop
    jr jr_007_65bf

jr_007_65bf:
    add b
    inc b
    sub [hl]
    ld bc, $0001
    dec hl
    nop
    ld l, [hl]
    nop
    ld [$0028], sp
    nop
    nop
    nop

jr_007_65cf:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, @+$01

    ld [$fffe], sp

jr_007_65e1:
    db $ec
    rst $38
    inc hl
    nop
    ld d, d
    inc b
    sub h
    inc bc
    nop
    nop
    ld c, $00
    ld l, [hl]
    nop
    ld [$8a28], sp
    nop
    db $f4
    rst $38
    ld a, [hl+]
    nop
    ld h, [hl]
    dec bc
    sub h
    inc bc
    db $fc
    rst $38
    dec d
    nop
    ld l, [hl]
    nop
    jr jr_007_662b

    rlca
    nop
    rst $28
    rst $38
    pop bc
    rst $38
    and b
    nop
    ld a, [hl-]
    inc bc
    cp $ff

jr_007_660f:
    rst $30
    rst $38
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_6596

    nop
    ld b, b
    nop
    rra
    nop
    and b
    dec bc
    cp [hl]
    ld bc, $001a
    or b
    nop
    ld l, [hl]
    nop
    jr jr_007_664f

    push bc
    rst $38
    ld [de], a
    nop

jr_007_662b:
    call nz, $e8ff
    nop
    xor h
    ld bc, $0019
    rst $18
    rst $38
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_660f

    rst $38
    ld [$2600], sp
    nop
    jp nz, $fe07

    nop
    nop
    nop
    nop
    nop
    ld l, [hl]
    nop
    nop
    jr z, jr_007_664c

jr_007_664c:
    nop
    nop
    nop

jr_007_664f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_007_665e

jr_007_665e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, @+$01

    dec b
    add b
    nop
    ld b, $00
    ld sp, hl
    rst $38
    ld e, [hl]
    inc c
    and [hl]
    ld [bc], a
    ld [$fb00], sp
    rst $38
    ld l, [hl]
    nop
    jr jr_007_66ab

    ld c, [hl]
    nop
    db $eb
    rst $38
    ld a, [$60ff]
    inc c
    ld d, $04
    inc b
    nop
    dec b
    nop
    ld l, [hl]
    nop
    jr jr_007_66bd

    jp $e7ff


    rst $38
    ld a, [$b2ff]
    inc bc
    inc h
    inc b
    ld [$fb00], sp
    rst $38
    ld l, [hl]
    nop
    ld [$7728], sp
    rst $38
    ld a, [bc]
    nop

jr_007_66ab:
    di
    rst $38
    ld l, [hl]
    inc bc
    sbc d
    ld [bc], a
    dec b
    nop
    stop
    ld l, [hl]
    nop
    ld [$0028], sp
    nop
    nop
    nop

jr_007_66bd:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, @+$01

    ld b, $2f
    nop
    db $ec

jr_007_66d0:
    rst $38
    call nz, $86ff
    rrca
    ld c, [hl]
    inc bc
    pop af
    rst $38
    add sp, -$01
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_673a

    nop
    db $db
    rst $38
    rra
    nop
    ret nc

    dec bc
    ld a, d
    ld [bc], a

jr_007_66e9:
    push af
    rst $38
    cpl
    rst $38
    ld l, [hl]
    nop
    jr jr_007_6719

    ld [c], a
    rst $38
    ld a, [bc]
    nop
    jp z, $b6ff

    nop
    sbc b
    ld [bc], a
    ld sp, $ff00
    rst $38

Call_007_66ff:
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_66d0

    rst $38
    dec d
    nop
    add hl, sp
    nop
    ld l, $07
    adc d
    ld [bc], a
    inc [hl]
    nop
    ld c, l
    nop
    ld l, [hl]
    nop
    nop
    jr z, jr_007_66e9

    rst $38
    ld b, a
    nop

jr_007_6719:
    ret


    rst $38
    sub b
    nop
    sbc b
    nop
    inc c
    nop
    and $ff
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_678f

    nop
    dec a
    nop
    db $fc
    rst $38
    sbc d
    dec c
    sbc [hl]
    ld bc, $0000
    db $fd
    rst $38
    ld l, [hl]
    nop
    inc d
    jr z, @+$01

jr_007_673a:
    dec b
    call $daff
    rst $38
    pop de
    rst $38
    xor b
    ld [bc], a
    db $ec
    inc bc
    ld bc, $fc00
    rst $38
    ld l, [hl]
    nop
    inc c
    jr z, jr_007_678f

    nop
    db $dd
    rst $38
    sbc $ff
    ret nz

    inc c
    db $f4
    inc bc
    nop
    nop
    inc b
    nop
    ld l, [hl]
    nop
    jr jr_007_6787

    db $fd
    rst $38
    db $f4
    rst $38
    scf
    nop
    inc b
    ld [$0302], sp
    db $f4
    rst $38
    dec b
    nop
    ld l, [hl]
    nop
    nop
    jr z, @+$79

    rst $38
    ld a, [bc]
    nop
    di
    rst $38
    ld l, [hl]
    inc bc
    sbc d
    ld [bc], a
    dec b
    nop
    stop
    ld l, [hl]
    nop
    nop
    jr z, jr_007_6784

jr_007_6784:
    nop
    nop
    nop

jr_007_6787:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_678e:
    nop

jr_007_678f:
    nop
    nop
    nop
    nop
    nop
    jr z, @+$01

    inc b
    inc h
    nop
    jp hl


    rst $38
    add l
    rst $38
    adc [hl]
    nop
    db $10
    inc b
    nop
    nop
    nop
    nop
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_67da

    nop
    db $ec
    rst $38
    dec d
    nop
    db $76
    rlca
    ld a, [$d003]
    rst $38
    add hl, bc
    nop
    ld l, [hl]
    nop
    nop
    jr z, jr_007_678e

    rst $38
    ldh [rIE], a
    cpl
    nop
    xor b
    inc bc
    cp $03
    xor $ff
    call nc, Call_007_6eff
    nop
    ld [$0028], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_67da:
    nop
    nop

jr_007_67dc:
    nop
    nop
    jr z, @+$01

    ld [$fffd], sp
    rla
    nop
    sbc d
    nop
    call nc, $c807
    ld bc, $0003
    nop
    nop
    ld l, [hl]
    nop
    nop
    jr z, jr_007_67f5

    nop

jr_007_67f5:
    db $fc
    rst $38
    ld h, b
    nop
    ret nz

    rlca
    ld d, d
    inc bc
    or $ff
    add hl, de
    nop
    ld l, [hl]
    nop
    nop
    jr z, jr_007_67dc

    rst $38
    or $ff
    ld a, [bc]
    nop
    ld l, $04
    sub d
    inc bc
    nop
    nop
    inc c
    nop
    ld l, [hl]
    nop
    ld [$8d28], sp
    rst $38
    xor $ff
    or c
    rst $38
    ld h, b
    nop
    ldh [$03], a
    ld [de], a
    nop
    stop
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_6896

    nop
    ldh a, [rIE]
    dec d
    nop
    ld a, b
    dec bc
    sbc [hl]
    inc bc
    push af
    rst $38
    nop
    nop
    ld l, [hl]
    nop
    jr jr_007_6863

    cp c
    nop
    nop
    nop
    inc d
    nop
    add d
    dec bc
    ret nc

    ld [bc], a
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld l, [hl]
    nop
    jr jr_007_6875

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_007_6860

jr_007_6860:
    nop
    nop
    nop

jr_007_6863:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, @+$01

    ld bc, $0000

jr_007_6875:
    call z, $b5ff
    rst $38
    cp [hl]
    rrca
    inc l
    dec b
    xor $ff

jr_007_687f:
    ld b, $00
    ld l, [hl]
    nop
    ld [$ff28], sp
    ld [bc], a
    and $ff
    jp nz, $2dff

    nop
    ld a, [hl]
    rlca
    db $f4
    inc bc
    ldh a, [rIE]
    sbc b
    rst $38
    ld l, [hl]

jr_007_6896:
    nop
    nop
    jr z, jr_007_68aa

    nop
    rst $10
    rst $38
    ret c

    rst $38
    nop
    rrca
    ldh a, [$03]
    cp $ff
    db $dd
    rst $38
    ld l, [hl]
    nop
    db $10

jr_007_68aa:
    jr z, @+$01

    ld [$0020], sp
    db $ec
    rst $38
    ld c, h
    nop
    ld h, b
    inc c
    or b
    inc bc
    inc b
    nop
    ld hl, sp-$01
    ld l, [hl]
    nop
    jr jr_007_68e7

    ld c, b
    nop
    jp hl


jr_007_68c2:
    rst $38
    or $ff
    or [hl]
    rrca
    or h
    inc bc
    ld hl, sp-$01
    ld a, [c]
    rst $38
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_6944

    nop
    inc sp
    nop
    ld a, d
    rst $38
    call c, Call_007_740d
    ld bc, $0003
    ld b, $00
    ld l, [hl]
    nop
    inc d
    jr z, jr_007_687f

    rst $38

jr_007_68e5:
    db $f4
    rst $38

jr_007_68e7:
    ld c, h
    nop
    or b
    inc bc
    ld l, b
    inc bc
    nop
    nop
    ld a, [c]

jr_007_68f0:
    rst $38
    ld l, [hl]
    nop
    ld [$d628], sp
    rst $38
    rst $30
    rst $38
    inc sp
    nop
    sbc h
    rlca
    ld [hl], b
    inc bc

Jump_007_68ff:
    di
    rst $38
    cp $ff
    ld l, [hl]
    nop
    nop
    jr z, @-$2b

    rst $38
    push af
    rst $38
    sub a
    rst $38
    ld b, d
    nop
    ld [hl], h
    inc bc
    nop
    nop
    ld sp, hl
    rst $38
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_68c2

    rst $38
    nop
    nop
    ld hl, sp-$01
    xor d
    rrca
    add d
    inc bc
    ei
    rst $38
    inc l
    nop
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_68e5

    rst $38
    ld a, [de]

jr_007_692e:
    nop
    sbc c
    rst $38
    ld a, [bc]
    rrca
    sbc [hl]
    ld bc, $fff8
    ld sp, hl
    rst $38
    ld l, [hl]
    nop
    db $10
    jr z, @+$01

    ld [$ff9f], sp
    db $eb
    rst $38
    rrca

jr_007_6944:
    nop
    ld c, d
    ld [$0392], sp
    pop hl
    rst $38
    nop
    nop
    ld l, [hl]
    nop
    nop
    jr z, jr_007_68f0

    rst $38
    rst $30
    rst $38
    sbc d
    rst $38
    ld a, [hl]
    rrca
    inc e
    inc bc
    ld [bc], a
    nop
    nop
    nop
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_692e

    rst $38
    dec de
    nop
    and d
    rst $38
    ld [c], a
    inc c
    ld a, [hl-]
    ld bc, $0000
    db $fd
    rst $38
    ld l, [hl]
    nop
    jr jr_007_699d

    db $eb
    rst $38
    jp hl


    rst $38
    or $ff
    ld c, h
    inc c
    sbc [hl]
    inc bc
    nop
    nop
    nop
    nop
    ld l, [hl]
    nop
    jr jr_007_69af

    ld a, $00
    pop hl
    rst $38
    rra
    nop
    sub $08
    sbc b
    inc bc
    inc hl
    nop
    call Call_007_6eff
    nop
    nop
    jr z, jr_007_69e6

    nop
    rst $20
    rst $38

jr_007_699d:
    adc $ff
    adc b
    dec bc
    add d
    inc bc
    inc b
    nop
    ret


    rst $38
    ld l, [hl]
    nop
    jr jr_007_69d3

    cp [hl]
    rst $38
    db $ec
    rst $38

jr_007_69af:
    rst $08
    rst $38
    ld e, h
    inc b
    or [hl]
    inc bc
    db $fc
    rst $38
    nop
    nop
    ld l, [hl]
    nop
    ld [$0028], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, @+$01

    ld b, $03
    nop

jr_007_69d3:
    pop af
    rst $38
    dec de
    nop
    jp z, Jump_007_6e0c

    ld [bc], a
    ld [$fb00], sp
    rst $38
    ld l, [hl]
    nop
    jr jr_007_6a0b

    ld d, e
    nop
    ret c

jr_007_69e6:
    rst $38
    push de
    rst $38
    ld a, [hl]
    nop
    ld d, d
    inc b
    di
    rst $38
    rst $18
    rst $38
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_6a12

    nop
    dec hl
    nop
    call nc, Call_007_66ff
    inc b
    jr jr_007_6a00

    inc d

jr_007_6a00:
    nop
    jp hl


    rst $38
    ld l, [hl]
    nop
    ld [$f868], sp
    rst $38
    db $f4
    rst $38

jr_007_6a0b:
    reti


    rst $38
    ld [hl], $04
    sbc h
    inc bc
    dec c

jr_007_6a12:
    nop
    ld a, [$6eff]
    nop
    ld [$ba28], sp
    rst $38
    db $e3
    rst $38
    db $d3
    rst $38
    db $fc
    ld c, $b6
    inc bc
    rst $30
    rst $38
    jp nc, Jump_007_6eff

    nop
    db $10
    jr z, @-$4e

    rst $38
    ldh a, [rIE]
    ld b, d
    nop
    ret nz

    ld [$03c4], sp
    rst $28
    rst $38
    dec c
    nop
    ld l, [hl]
    nop
    nop
    jr z, @+$01

    ld bc, $0000
    jr c, jr_007_6a43

jr_007_6a43:
    di
    rst $38
    ld [hl], d
    ld c, $62
    nop
    rst $30
    rst $38
    rlca
    nop
    ld l, [hl]
    nop
    inc c
    ld l, b
    rst $38
    dec b
    cp c
    rst $38
    db $ed
    rst $38
    rla
    nop
    ld a, $03
    jp c, $fd03

    rst $38
    cp $ff
    ld l, [hl]
    nop
    ld [$4228], sp
    nop
    jp hl


    rst $38
    ld e, $00
    or h
    inc c
    ld hl, sp+$03
    dec de
    nop
    inc bc
    nop
    ld l, [hl]
    nop
    jr jr_007_6a9f

    ld b, [hl]
    nop
    rst $20
    rst $38
    ret


    rst $38
    add d
    nop
    xor $03
    dec b
    nop
    ld sp, hl
    rst $38
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_6aeb

    nop
    inc bc
    nop
    ret


    rst $38
    ld [bc], a
    rrca
    ld a, d
    ld [bc], a
    db $fd
    rst $38
    push af
    rst $38
    ld l, [hl]
    nop
    db $10

jr_007_6a9a:
    jr z, jr_007_6b08

    nop
    ldh a, [rIE]

jr_007_6a9f:
    dec d
    nop
    ld a, b
    dec bc
    sbc [hl]
    inc bc
    push af
    rst $38
    nop
    nop
    ld l, [hl]
    nop
    nop
    jr z, @+$01

    rlca
    nop
    nop
    rst $20
    rst $38
    jp nc, $deff

    nop
    cp b
    inc bc
    add hl, hl
    nop
    ld a, [c]
    rst $38
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_6ac2

jr_007_6ac2:
    nop
    call c, $35ff
    nop
    inc c
    rlca
    call z, $d003
    rst $38
    call Call_007_6eff
    nop
    nop
    jr z, jr_007_6a9a

    rst $38
    db $dd
    rst $38
    call c, $38ff
    inc bc
    ld b, b
    inc b
    ld hl, sp-$01
    ld a, [c]
    rst $38
    ld l, [hl]
    nop
    ld [$0028], sp
    nop
    nop
    nop
    nop
    nop

jr_007_6aeb:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_007_6af8

jr_007_6af8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_007_6b08:
    jr z, jr_007_6b0a

jr_007_6b0a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_007_6b1c

jr_007_6b1c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, @+$01

    ld [$002f], sp
    db $ed
    rst $38
    ld e, h
    nop
    ld d, h
    dec bc
    add $03
    db $fd
    rst $38
    ld e, $00
    ld l, [hl]
    nop
    jr jr_007_6b69

    ld d, h
    nop
    push hl
    rst $38
    rst $38
    rst $38
    xor b
    ld [$03b6], sp

jr_007_6b4b:
    ld a, [bc]
    nop
    nop
    nop
    ld l, [hl]
    nop
    nop
    jr z, jr_007_6b73

    nop
    db $e3
    rst $38
    sub a
    rst $38
    ld h, $0d
    inc [hl]
    inc b
    rrca
    nop
    inc hl
    nop
    ld l, [hl]
    nop
    jr jr_007_6b8d

    add $ff
    rst $10
    rst $38

jr_007_6b69:
    ret nz

    rst $38
    or h
    rrca
    jr z, jr_007_6b73

    ld [de], a
    nop
    db $fd
    rst $38

jr_007_6b73:
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_6b4b

    rst $38
    sub $ff
    ld a, l
    nop
    ld d, b
    ld [$0454], sp
    call c, Call_000_28ff
    nop
    cp c
    nop
    nop
    jr z, jr_007_6bac

    nop
    ld e, $00

jr_007_6b8d:
    or [hl]
    rst $38
    jp nz, $ac09

    ld bc, $0018
    ld e, [hl]
    nop
    ld l, [hl]
    nop
    nop
    jr z, @+$5c

    nop
    db $d3
    rst $38
    inc [hl]
    nop
    call c, $a408
    inc b
    db $e4
    rst $38
    inc d
    nop
    ld l, [hl]
    nop
    nop

jr_007_6bac:
    jr z, @+$38

    nop
    and $ff
    ld a, b
    rst $38
    ld a, [hl]
    ld c, $4c
    inc b
    nop
    nop
    nop
    nop
    ld l, [hl]
    nop
    nop
    jr z, @+$01

    ld [$0046], sp
    add $ff
    ld [bc], a
    nop
    and d
    inc c
    jr z, jr_007_6bd0

    jp hl


    rst $38
    nop
    nop
    ld l, [hl]

jr_007_6bd0:
    nop
    jr jr_007_6bfb

    xor $ff
    pop de
    rst $38
    ld a, [bc]
    nop
    ld [hl], $03
    ret c

    inc b
    ld [$00ff], a
    nop
    ld l, [hl]
    nop
    ld [$c028], sp
    rst $38
    rst $30
    rst $38
    ld bc, $1800
    inc bc
    ld h, b
    ld [bc], a
    ld a, [bc]
    nop
    rla
    nop
    ld l, [hl]
    nop
    ld [$c828], sp
    rst $38
    rst $18
    rst $38

jr_007_6bfb:
    rst $28
    rst $38
    ld e, d
    inc b
    ret z

    ld [bc], a
    ld b, $00
    ldh [rIE], a
    ld l, [hl]
    nop
    ld [$4528], sp
    nop
    db $e3
    rst $38
    db $fd
    rst $38
    ld d, h
    dec bc
    add $02
    rst $38
    rst $38
    db $e3
    rst $38
    ld l, [hl]
    nop
    jr jr_007_6c43

    ld a, d
    nop
    db $fd
    rst $38
    ld sp, hl
    rst $38
    add d
    dec bc
    ld [bc], a
    ld [bc], a
    db $fd
    rst $38
    nop
    nop
    ld l, [hl]
    nop
    jr jr_007_6c55

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_007_6c40

jr_007_6c40:
    nop
    nop
    nop

jr_007_6c43:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, @+$01

    ld [bc], a
    ld sp, hl
    rst $38

jr_007_6c55:
    rst $08
    rst $38
    set 7, a
    ld e, d
    rrca
    ld l, [hl]
    inc b
    db $d3
    rst $38
    rst $20
    rst $38

Jump_007_6c61:
    ld l, [hl]
    nop
    db $10
    jr z, jr_007_6c66

jr_007_6c66:
    nop
    rst $10
    rst $38
    dec [hl]
    nop
    xor d
    ld [$0464], sp
    inc b
    nop
    inc bc
    nop
    ld l, [hl]
    nop
    nop
    jr z, @+$01

    ld [bc], a
    nop
    nop
    ld c, $00
    jp nc, $4eff

    nop
    ret z

    ld bc, $0014
    db $ed
    rst $38
    ld l, [hl]
    nop
    db $10
    jr z, @-$0e

    rst $38
    rlca
    nop
    ld c, c
    nop
    add b
    rlca
    ld [hl], $02
    ld b, $00
    db $eb
    rst $38
    ld l, [hl]
    nop
    nop
    jr z, @+$01

    ld bc, $0002
    ld h, $00
    push af
    rst $38
    call nc, $4a0d
    nop
    nop
    nop
    rrca
    nop
    ld l, [hl]
    nop
    inc c
    ld l, b
    rst $38
    dec b
    ld l, c
    nop
    nop
    nop
    ld d, l
    nop
    ldh [$08], a
    or $02
    nop
    nop
    ld [bc], a
    nop
    ld l, [hl]
    nop
    nop
    jr z, jr_007_6d09

    nop
    ld a, [c]
    rst $38
    rlca
    nop
    ld c, $0b
    ld a, [hl]
    inc bc
    or $ff
    nop
    nop
    ld l, [hl]
    nop
    jr jr_007_6cff

    jp z, $f1ff

    rst $38
    nop
    nop
    call c, Call_007_7e04
    inc bc
    ld a, [de]
    nop
    dec c
    nop
    ld l, [hl]
    nop
    ld [$6728], sp
    rst $38
    add hl, bc
    nop
    ld bc, $b800
    inc b
    jr z, jr_007_6cf5

    cp $ff

jr_007_6cf5:
    nop
    nop
    ld l, [hl]
    nop
    ld [$9128], sp
    rst $38
    jr z, jr_007_6cff

Call_007_6cff:
Jump_007_6cff:
jr_007_6cff:
    dec sp
    nop
    ld h, h
    ld [$0198], sp
    nop
    nop
    nop
    nop

jr_007_6d09:
    ld l, [hl]
    nop
    nop
    jr z, @+$01

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_007_6e0c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_007_6eff:
Jump_007_6eff:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_007_70ff:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_007_740b:
    nop
    nop

Call_007_740d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_007_78ff:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_007_7aff:
Jump_007_7aff:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_007_7c03:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_007_7cff:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_007_7e04:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
