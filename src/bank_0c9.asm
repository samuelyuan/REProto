SECTION "ROM Bank $0c9", ROMX[$4000], BANK[$c9]

    ld c, c
    jr nz, jr_0c9_407a

    ld l, a
    ld l, [hl]
    ld h, h
    ld h, l
    ld [hl], d
    jr nz, jr_0c9_4073

    ld h, [hl]
    jr nz, jr_0c9_4072

    db $76
    ld h, l
    ld [hl], d
    ld a, c
    ld l, a
    ld l, [hl]
    ld h, l
    nop
    ld l, c
    ld [hl], e
    jr nz, jr_0c9_4088

    ld l, e
    ld l, $01
    ld d, a
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_0c9_409b

    ld l, a
    ld [hl], l
    jr nz, jr_0c9_409a

    ld h, c
    ld l, e
    ld h, l
    nop
    ld d, d
    ld h, l
    ld h, d
    ld h, l
    ld h, e
    ld h, e
    ld h, c
    jr nz, jr_0c9_40aa

    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_0c9_40b1

    ld l, a
    ld [hl], l
    ccf
    nop
    jr nz, jr_0c9_4097

    ld h, l
    ld [hl], e
    jr nz, jr_0c9_4090

    ld l, a
    jr nz, jr_0c9_4046

    ld c, c

jr_0c9_4046:
    jr nz, jr_0c9_40b6

    ld h, l
    ld h, l
    ld h, h
    jr nz, jr_0c9_40c1

    ld l, a
    jr nz, jr_0c9_40c0

    ld [hl], d
    ld h, l
    ld [hl], b
    ld h, c
    ld [hl], d
    ld h, l
    ld l, $00
    ld d, b
    ld l, h
    ld h, l
    ld h, c
    ld [hl], e
    ld h, l
    jr nz, jr_0c9_40c7

    ld l, a
    jr nz, @+$63

    ld l, b
    ld h, l
    ld h, c
    ld h, h
    ld l, $01
    ld c, c
    daa
    ld l, h
    ld l, h
    jr nz, jr_0c9_40d2

    ld l, b
    ld h, l
    ld h, e

jr_0c9_4072:
    ld l, e

jr_0c9_4073:
    jr nz, jr_0c9_40e9

    ld l, b
    ld h, l
    nop
    ld l, l
    ld h, l

jr_0c9_407a:
    ld h, h
    ld l, c
    ld h, e
    ld l, c
    ld l, [hl]
    ld h, l
    ld l, $01
    ld b, h
    ld l, a
    jr nz, jr_0c9_40ff

    ld l, a
    ld [hl], l

jr_0c9_4088:
    jr nz, @+$79

    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_0c9_40fc

    ld h, l

jr_0c9_4090:
    jr nz, jr_0c9_4106

    ld l, a
    nop
    ld [hl], h
    ld h, c
    ld l, e

jr_0c9_4097:
    ld h, l
    jr nz, @+$65

jr_0c9_409a:
    ld h, c

jr_0c9_409b:
    ld [hl], d
    ld h, l
    jr nz, jr_0c9_410e

    ld h, [hl]
    jr nz, jr_0c9_411b

    ld l, a
    ld [hl], l
    ccf
    nop
    jr nz, @+$5b

    ld h, l
    ld [hl], e

jr_0c9_40aa:
    jr nz, jr_0c9_40fa

    ld l, a
    jr nz, jr_0c9_40b0

    ld d, d

jr_0c9_40b0:
    ld h, l

jr_0c9_40b1:
    ld h, d
    ld h, l
    ld h, e
    ld h, e
    ld h, c

jr_0c9_40b6:
    jr nz, jr_0c9_412c

    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], h
    ld [hl], e
    nop
    ld b, e
    ld l, b

jr_0c9_40c0:
    ld [hl], d

jr_0c9_40c1:
    ld l, c
    ld [hl], e
    ld l, $01
    ld b, e
    ld l, b

jr_0c9_40c7:
    ld [hl], d
    ld l, c
    ld [hl], e
    inc l
    jr nz, jr_0c9_413d

    ld l, h
    ld h, l
    ld h, c
    ld [hl], e
    ld h, l

jr_0c9_40d2:
    nop
    ld [hl], h
    ld h, c
    ld l, e
    ld h, l
    jr nz, jr_0c9_413c

    ld h, c
    ld [hl], d
    ld h, l
    ld l, $01
    ld c, c
    jr nz, jr_0c9_4145

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, @+$6a

    ld h, c
    db $76

jr_0c9_40e9:
    ld h, l
    jr nz, jr_0c9_414d

    ld l, [hl]
    ld a, c
    nop
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_0c9_4162

    ld h, l
    ld h, h
    ld l, c
    ld h, e
    ld l, c

jr_0c9_40fa:
    ld l, [hl]
    ld h, l

jr_0c9_40fc:
    ld l, $00
    ld d, e

jr_0c9_40ff:
    ld l, a
    jr nz, jr_0c9_4164

    ld h, l
    jr nz, jr_0c9_4168

    ld h, c

jr_0c9_4106:
    ld [hl], d
    ld h, l
    ld h, [hl]
    ld [hl], l
    ld l, h
    ld hl, $4901

jr_0c9_410e:
    daa
    ld l, h
    ld l, h
    jr nz, jr_0c9_4187

    ld [hl], d
    ld a, c
    jr nz, jr_0c9_417f

    ld h, c
    ld [hl], d
    ld h, h
    ld h, l

jr_0c9_411b:
    ld [hl], d
    ld hl, $4901
    daa
    ld l, l
    jr nz, @+$69

    ld l, h
    ld h, c
    ld h, h
    jr nz, jr_0c9_4171

    jr nz, jr_0c9_41a1

    ld h, c
    ld [hl], e

jr_0c9_412c:
    nop
    ld l, c
    ld l, [hl]
    jr nz, jr_0c9_41a5

    ld l, c
    ld l, l
    ld h, l
    ld l, $01
    ld d, [hl]
    ld l, c
    ld [hl], h
    ld h, c
    ld l, l
    ld l, c

jr_0c9_413c:
    ld l, [hl]

jr_0c9_413d:
    ld [hl], e
    jr nz, jr_0c9_41a1

    ld l, [hl]
    ld h, h
    nop
    ld [hl], e
    ld h, l

jr_0c9_4145:
    ld [hl], d
    ld [hl], l
    ld l, l
    ld [hl], e
    ld l, $01
    ld c, a
    ld l, [hl]

jr_0c9_414d:
    ld h, l
    jr nz, jr_0c9_41b4

    ld l, a
    ld [hl], e
    ld h, l
    jr nz, jr_0c9_41cc

    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, @+$66

    ld l, a
    ld l, $01
    ld c, c
    jr nz, jr_0c9_41c5

    ld l, a

jr_0c9_4162:
    ld l, [hl]
    daa

jr_0c9_4164:
    ld [hl], h
    jr nz, @+$70

    ld h, l

jr_0c9_4168:
    ld h, l
    ld h, h
    jr nz, @+$63

    ld l, [hl]
    ld a, c
    nop
    ld l, l
    ld l, a

jr_0c9_4171:
    ld [hl], d
    ld h, l
    jr nz, @+$75

    ld h, l
    ld [hl], d
    ld [hl], l
    ld l, l
    ld l, $01
    ld l, $2e
    ld l, $2e

jr_0c9_417f:
    ld l, $2e
    ld l, $2e
    ld l, $01
    ld c, c
    daa

jr_0c9_4187:
    ld l, h
    ld l, h
    jr nz, jr_0c9_41ff

    ld [hl], d
    ld a, c
    jr nz, jr_0c9_41f7

    ld h, c
    ld [hl], d
    ld h, h
    ld h, l
    ld [hl], d
    ld hl, $5201
    ld h, l
    ld h, d
    ld h, l
    ld h, e
    ld h, e
    ld h, c
    ld l, $2e
    ld l, $01

jr_0c9_41a1:
    ld c, b
    ld h, l
    daa
    ld [hl], e

jr_0c9_41a5:
    jr nz, @+$4d

    ld h, l
    ld l, [hl]
    ld l, [hl]
    ld h, l
    ld [hl], h
    ld l, b
    jr nz, jr_0c9_4215

    ld [hl], d
    ld l, a
    ld l, l
    nop
    ld [hl], h

jr_0c9_41b4:
    ld l, b
    ld h, l
    jr nz, jr_0c9_420b

    ld l, $54
    ld l, $41
    ld l, $52
    ld l, $53
    ld l, $00
    ld b, d
    ld [hl], d
    ld h, c

jr_0c9_41c5:
    db $76
    ld l, a
    jr nz, jr_0c9_423d

    ld h, l
    ld h, c
    ld l, l

jr_0c9_41cc:
    ld l, $2e
    ld l, $21
    ld bc, $6f4e
    ld [hl], a
    jr nz, jr_0c9_423e

    ld h, l
    daa
    ld [hl], e
    jr nz, jr_0c9_423d

    ld h, l
    ld h, e
    ld l, a
    ld l, l
    ld h, l
    jr nz, jr_0c9_4243

    nop
    ld l, l
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_0c9_425c

    ld l, b
    ld h, c
    ld h, h
    ld l, a
    ld [hl], a
    jr nz, jr_0c9_425f

    ld h, [hl]
    jr nz, jr_0c9_425b

    ld l, c
    ld [hl], e
    nop
    ld h, [hl]

jr_0c9_41f7:
    ld l, a
    ld [hl], d
    ld l, l
    ld h, l
    ld [hl], d
    jr nz, jr_0c9_4271

    ld h, l

jr_0c9_41ff:
    ld l, h
    ld h, [hl]
    ld l, $01
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0c9_426a

    jr nz, @+$55

jr_0c9_420b:
    ld l, $54
    ld l, $41
    ld l, $52
    ld l, $53
    ld l, $00

jr_0c9_4215:
    ld h, l
    ld l, l
    ld h, d
    ld l, h
    ld h, l
    ld l, l
    ld l, $2e
    ld l, $01
    ld c, c
    ld [hl], h
    jr nz, @+$6e

    ld l, a
    ld l, a
    ld l, e
    ld [hl], e
    jr nz, jr_0c9_4295

    ld l, c
    ld l, e
    ld h, l
    jr nz, @+$63

    nop
    ld [hl], b
    ld l, c
    ld h, e
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld h, l
    jr nz, jr_0c9_42a7

    ld h, [hl]
    jr nz, @+$76

    ld l, b
    ld l, c

jr_0c9_423d:
    ld [hl], e

jr_0c9_423e:
    nop
    ld l, l
    ld h, c
    ld l, [hl]
    ld [hl], e

jr_0c9_4243:
    ld l, c
    ld l, a
    ld l, [hl]
    ld l, $01
    ld c, [hl]
    ld l, a
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0c9_42c6

    ld l, [hl]
    ld [hl], l
    ld [hl], e
    ld [hl], l
    ld h, c
    ld l, h
    ld l, $01
    ld c, c
    ld [hl], h

jr_0c9_425b:
    daa

jr_0c9_425c:
    ld [hl], e
    jr nz, jr_0c9_42ce

jr_0c9_425f:
    ld l, l
    ld l, c
    ld l, [hl]
    ld l, a
    ld [hl], l
    ld [hl], e
    ld l, h
    ld a, c
    nop
    ld [hl], c
    ld [hl], l

jr_0c9_426a:
    ld l, c
    ld h, l
    ld [hl], h
    jr nz, jr_0c9_42de

    ld [hl], l
    ld [hl], h

jr_0c9_4271:
    ld [hl], e
    ld l, c
    ld h, h
    ld h, l
    ld l, $01
    ld b, c
    jr nz, jr_0c9_42ea

    ld l, c
    ld h, e
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld h, l
    jr nz, jr_0c9_42f1

    ld h, [hl]
    jr nz, jr_0c9_42e6

    nop
    ld [hl], a
    ld l, a
    ld l, l
    ld h, c
    ld l, [hl]
    ld l, $01
    ld b, c
    jr nz, jr_0c9_4300

    ld l, c
    ld h, e
    ld [hl], h
    ld [hl], l
    ld [hl], d

jr_0c9_4295:
    ld h, l
    jr nz, jr_0c9_4307

    ld h, [hl]
    nop
    ld h, d
    ld h, l
    ld h, c
    ld [hl], l
    ld [hl], h
    ld l, c
    ld h, [hl]
    ld [hl], l
    ld l, h
    jr nz, jr_0c9_4318

    ld h, e
    ld h, l

jr_0c9_42a7:
    ld l, [hl]
    ld h, l
    ld [hl], d
    ld a, c
    ld l, $01
    ld b, c
    jr nz, @+$69

    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, h
    ld h, [hl]
    ld h, c
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    jr nz, jr_0c9_431f

    ld l, h
    ld l, a
    ld h, e
    ld l, e
    nop
    ld l, c
    ld [hl], e
    jr nz, jr_0c9_4339

    ld l, c

jr_0c9_42c6:
    ld h, e
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $01
    ld c, c

jr_0c9_42ce:
    ld [hl], h
    jr nz, jr_0c9_433a

    ld [hl], e
    jr nz, jr_0c9_4342

    ld l, a
    ld [hl], h
    jr nz, jr_0c9_434a

    ld [hl], l
    ld l, [hl]
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a

jr_0c9_42de:
    nop
    ld h, c
    ld l, [hl]
    ld a, c
    jr nz, jr_0c9_4351

    ld l, a
    ld [hl], d

jr_0c9_42e6:
    ld h, l
    ld l, $01
    ld d, h

jr_0c9_42ea:
    ld h, c
    ld h, d
    ld l, h
    ld h, l
    ld [hl], a
    ld h, c
    ld [hl], d

jr_0c9_42f1:
    ld h, l
    ld l, $01
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0c9_435e

    ld h, c
    ld [hl], d
    ld l, e
    jr nz, jr_0c9_436e

    ld [hl], l

jr_0c9_4300:
    ld [hl], h
    ld [hl], e
    ld l, c
    ld h, h
    ld h, l
    nop
    ld h, c

jr_0c9_4307:
    ld l, [hl]
    ld h, h
    jr nz, jr_0c9_436c

    ld [hl], e
    jr nz, jr_0c9_4381

    ld l, c
    ld l, h
    ld h, l
    ld l, [hl]
    ld [hl], h
    nop
    ld h, c
    ld [hl], e
    jr nz, jr_0c9_437c

jr_0c9_4318:
    ld h, l
    ld h, c
    ld [hl], h
    ld l, b
    ld l, $01
    ld c, c

jr_0c9_431f:
    ld [hl], h
    jr nz, jr_0c9_438e

    ld l, a
    ld l, a
    ld l, e
    ld [hl], e
    jr nz, jr_0c9_4394

    ld l, c
    ld l, e
    ld h, l
    jr nz, jr_0c9_438e

    nop
    ld l, b
    ld l, a
    ld l, h
    ld l, h
    ld l, a
    ld [hl], a
    jr nz, jr_0c9_43aa

    ld l, a
    jr nz, jr_0c9_43a9

jr_0c9_4339:
    ld [hl], l

jr_0c9_433a:
    ld [hl], h
    nop
    ld [hl], e
    ld l, a
    ld l, l
    ld h, l
    ld [hl], h
    ld l, b

jr_0c9_4342:
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0c9_43b0

    ld l, [hl]
    ld l, $01

jr_0c9_434a:
    ld b, c
    ld l, [hl]
    jr nz, jr_0c9_43b3

    ld l, l
    ld h, d
    ld l, h

jr_0c9_4351:
    ld h, l
    ld l, l
    jr nz, jr_0c9_43be

    ld [hl], e
    jr nz, @+$6b

    ld l, [hl]
    nop
    ld [hl], b
    ld l, h
    ld h, c
    ld h, e

jr_0c9_435e:
    ld h, l
    ld l, $01
    ld c, c
    ld l, [hl]
    db $76
    ld h, l
    ld [hl], e
    ld [hl], h
    ld l, c
    ld h, a
    ld h, c
    ld [hl], h
    ld l, c

jr_0c9_436c:
    ld l, a
    ld l, [hl]

jr_0c9_436e:
    jr nz, jr_0c9_43d8

    ld h, l
    ld [hl], d
    ld h, l
    nop
    ld l, c
    ld [hl], e
    jr nz, jr_0c9_43e6

    ld l, a
    ld [hl], h
    jr nz, jr_0c9_43eb

jr_0c9_437c:
    db $76
    ld h, l
    ld [hl], d
    jr nz, jr_0c9_43fa

jr_0c9_4381:
    ld h, l
    ld [hl], h
    ld l, $01
    ld b, d
    ld h, c
    ld [hl], d
    ld [hl], d
    ld a, c
    jr nz, @+$6b

    ld [hl], e
    nop

jr_0c9_438e:
    ld l, c
    ld l, [hl]
    db $76
    ld h, l
    ld [hl], e
    ld [hl], h

jr_0c9_4394:
    ld l, c
    ld h, a
    ld h, c
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $2e
    ld l, $01
    ld c, c
    daa
    db $76
    ld h, l
    jr nz, jr_0c9_440c

    ld l, a
    ld [hl], h
    jr nz, jr_0c9_441d

jr_0c9_43a9:
    ld l, a

jr_0c9_43aa:
    jr nz, @+$74

    ld h, l
    ld [hl], b
    ld l, a
    ld [hl], d

jr_0c9_43b0:
    ld [hl], h
    nop
    ld [hl], h

jr_0c9_43b3:
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_0c9_442c

    ld l, a
    jr nz, @+$59

    ld h, l
    ld [hl], e
    ld l, e

jr_0c9_43be:
    ld h, l
    ld [hl], d
    ld l, $2e
    ld l, $01
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_0c9_443b

    ld l, a
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    nop
    ld l, c
    ld l, [hl]
    ld [hl], e
    ld l, c

jr_0c9_43d8:
    ld h, h
    ld h, l
    ld l, $01
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0c9_442c

    ld l, c
    ld l, h
    ld l, h
    daa

jr_0c9_43e6:
    ld [hl], e
    jr nz, jr_0c9_4450

    ld [hl], l
    ld l, [hl]

jr_0c9_43eb:
    ld l, $2e
    ld l, $21
    ld bc, $7449
    daa
    ld [hl], e
    jr nz, jr_0c9_446a

    ld l, a
    ld l, a
    jr nz, jr_0c9_445e

jr_0c9_43fa:
    ld h, c
    ld l, [hl]
    ld h, a
    ld h, l
    ld [hl], d
    ld l, a
    ld [hl], l
    ld [hl], e
    nop
    ld [hl], h
    ld l, a
    jr nz, jr_0c9_446e

    ld l, a
    jr nz, jr_0c9_4479

    ld [hl], l
    ld [hl], h

jr_0c9_440c:
    ld [hl], e
    ld l, c
    ld h, h
    ld h, l
    ld hl, $4901
    daa
    db $76
    ld h, l
    jr nz, jr_0c9_447f

    ld l, a
    ld [hl], h
    jr nz, jr_0c9_4490

    ld l, a

jr_0c9_441d:
    jr nz, jr_0c9_4492

    ld h, l
    ld h, c
    ld [hl], d
    ld h, e
    ld l, b
    nop
    ld [hl], h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_0c9_4493

    ld h, c

jr_0c9_442c:
    ld l, h
    ld l, h
    jr nz, jr_0c9_4496

    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld hl, $4101
    jr nz, jr_0c9_44a9

    ld l, c
    ld h, e

jr_0c9_443b:
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld h, l
    jr nz, jr_0c9_44b0

    ld h, [hl]
    jr nz, jr_0c9_44a5

    nop
    ld h, d
    ld h, l
    ld h, c
    ld [hl], l
    ld [hl], h
    ld l, c
    ld h, [hl]
    ld [hl], l
    ld l, h
    jr nz, jr_0c9_44c7

jr_0c9_4450:
    ld l, a
    ld l, l
    ld h, c
    ld l, [hl]
    ld l, $01
    ld b, c
    jr nz, jr_0c9_44c9

    ld l, c
    ld h, e
    ld [hl], h
    ld [hl], l
    ld [hl], d

jr_0c9_445e:
    ld h, l
    jr nz, @+$71

    ld h, [hl]
    nop
    ld [hl], e
    ld [hl], h
    ld h, l
    ld h, l
    ld [hl], b
    jr nz, jr_0c9_44dd

jr_0c9_446a:
    ld h, e
    ld h, l
    ld l, [hl]
    ld h, l

jr_0c9_446e:
    ld [hl], d
    ld a, c
    ld l, $01
    ld b, c
    jr nz, @+$72

    ld l, c
    ld h, e
    ld [hl], h
    ld [hl], l

jr_0c9_4479:
    ld [hl], d
    ld h, l
    jr nz, jr_0c9_44ec

    ld h, [hl]
    nop

jr_0c9_447f:
    ld h, c
    jr nz, jr_0c9_44e8

    ld h, c
    ld [hl], h
    jr nz, jr_0c9_44fd

    ld l, a
    ld l, l
    ld h, c
    ld l, [hl]
    ld l, $01
    ld c, [hl]
    ld l, a
    ld [hl], h
    ld l, b

jr_0c9_4490:
    ld l, c
    ld l, [hl]

jr_0c9_4492:
    ld h, a

jr_0c9_4493:
    jr nz, jr_0c9_4508

    ld [hl], b

jr_0c9_4496:
    ld h, l
    ld h, e
    ld l, c
    ld h, c
    ld l, h
    nop
    ld h, c
    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h
    jr nz, jr_0c9_4517

    ld l, b
    ld l, c

jr_0c9_44a5:
    ld [hl], e
    jr nz, jr_0c9_4518

    ld l, c

jr_0c9_44a9:
    ld h, e
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld h, l
    ld l, $01

jr_0c9_44b0:
    ld b, c
    jr nz, jr_0c9_4515

    ld h, l
    ld h, c
    ld [hl], l
    ld [hl], h
    ld l, c
    ld h, [hl]
    ld [hl], l
    ld l, h
    jr nz, jr_0c9_452d

    ld l, c
    ld h, e
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld h, l
    ld l, $00
    ld d, h
    ld l, b

jr_0c9_44c7:
    ld h, c
    ld [hl], h

jr_0c9_44c9:
    daa
    ld [hl], e
    jr nz, jr_0c9_452e

    ld l, h
    ld l, h
    ld l, $01
    ld c, c
    ld l, [hl]
    ld h, e
    ld l, a
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld [hl], h
    jr nz, jr_0c9_454d

jr_0c9_44dd:
    ld l, c
    ld h, e
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld h, l
    ld [hl], e
    ld l, $01
    daa
    ld b, c

jr_0c9_44e8:
    jr nz, jr_0c9_4561

    ld l, a
    ld l, l

jr_0c9_44ec:
    ld h, c
    ld l, [hl]
    jr nz, jr_0c9_4554

    ld [hl], d
    ld h, c
    ld [hl], a
    ld l, c
    ld l, [hl]
    ld h, a
    nop
    ld [hl], a
    ld h, c
    ld [hl], h
    ld h, l
    ld [hl], d
    daa

jr_0c9_44fd:
    ld bc, $7243
    ld h, l
    ld h, l
    ld [hl], b
    ld a, c
    jr nz, jr_0c9_4579

    ld [hl], h
    ld [hl], l

jr_0c9_4508:
    ld h, [hl]
    ld h, [hl]
    ld l, $01
    ld b, c
    jr nz, jr_0c9_457f

    ld l, c
    ld h, e
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld h, l

jr_0c9_4515:
    jr nz, jr_0c9_457c

jr_0c9_4517:
    ld l, h

jr_0c9_4518:
    ld h, c
    ld h, d
    ld l, a
    ld [hl], d
    ld h, c
    ld [hl], h
    ld h, l
    nop
    ld l, c
    ld l, [hl]
    jr nz, jr_0c9_4589

    db $76
    ld h, l
    ld [hl], d
    ld a, c
    jr nz, jr_0c9_458e

    ld h, l
    ld [hl], h
    ld h, c

jr_0c9_452d:
    ld l, c

jr_0c9_452e:
    ld l, h
    ld l, $01
    ld c, c
    jr nz, jr_0c9_45ab

    ld l, c
    ld [hl], e
    ld l, b
    jr nz, jr_0c9_4582

    jr nz, jr_0c9_45a3

    ld h, c
    ld h, h
    jr nz, jr_0c9_45b3

    ld l, c
    ld l, l
    ld h, l
    jr nz, jr_0c9_45b8

    ld l, a
    nop
    ld h, l
    ld l, [hl]
    ld l, d
    ld l, a
    ld a, c
    jr nz, jr_0c9_45c1

jr_0c9_454d:
    ld l, b
    ld h, l
    ld [hl], e
    ld h, l
    nop
    ld [hl], b
    ld l, c

jr_0c9_4554:
    ld h, e
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld h, l
    ld [hl], e
    ld l, $2e
    ld l, $01
    ld c, c
    daa
    ld l, h

jr_0c9_4561:
    ld l, h
    jr nz, jr_0c9_45d4

    ld [hl], l
    ld [hl], h
    jr nz, jr_0c9_45db

    ld l, a
    ld l, l
    ld h, l
    nop
    ld h, d
    ld [hl], l
    ld l, h
    ld l, h
    ld h, l
    ld [hl], h
    ld [hl], e
    jr nz, jr_0c9_45de

    ld l, [hl]
    jr nz, @+$76

    ld l, b

jr_0c9_4579:
    ld h, l
    nop
    ld h, d

jr_0c9_457c:
    ld h, c
    ld h, e
    ld l, e

jr_0c9_457f:
    jr nz, jr_0c9_45f3

    ld l, a

jr_0c9_4582:
    ld l, a
    ld l, l
    ld l, $01
    ld d, b
    ld l, h
    ld h, l

jr_0c9_4589:
    ld h, c
    ld [hl], e
    ld h, l
    jr nz, @+$64

jr_0c9_458e:
    ld h, l
    jr nz, @+$65

    ld h, c
    ld [hl], d
    ld h, l
    ld h, [hl]
    ld [hl], l
    ld l, h
    nop
    ld d, d
    ld h, l
    ld h, d
    ld h, l
    ld h, e
    ld h, e
    ld h, c
    ld l, $01
    ld c, c
    daa

jr_0c9_45a3:
    ld l, h
    ld l, h
    jr nz, jr_0c9_4617

    ld [hl], l
    ld [hl], h
    jr nz, jr_0c9_461e

jr_0c9_45ab:
    ld l, a
    ld l, l
    ld h, l
    nop
    ld h, d
    ld [hl], l
    ld l, h
    ld l, h

jr_0c9_45b3:
    ld h, l
    ld [hl], h
    ld [hl], e
    jr nz, jr_0c9_4621

jr_0c9_45b8:
    ld l, [hl]
    jr nz, jr_0c9_462f

    ld l, b
    ld h, l
    nop
    ld h, d
    ld h, c
    ld h, e

jr_0c9_45c1:
    ld l, e
    jr nz, jr_0c9_4636

    ld l, a
    ld l, a
    ld l, l
    ld l, $01
    ld d, l
    ld [hl], e
    ld h, l
    jr nz, jr_0c9_4642

    ld l, b
    ld h, l
    ld l, l
    jr nz, jr_0c9_463c

    ld l, [hl]

jr_0c9_45d4:
    jr nz, @+$65

    ld h, c
    ld [hl], e
    ld h, l
    jr nz, jr_0c9_464a

jr_0c9_45db:
    ld h, [hl]
    nop
    ld [hl], h

jr_0c9_45de:
    ld [hl], d
    ld l, a
    ld [hl], l
    ld h, d
    ld l, h
    ld h, l
    inc l
    jr nz, jr_0c9_4629

    ld h, c
    ld [hl], d
    ld [hl], d
    ld a, c
    ld l, $01
    ld b, c
    ld l, [hl]
    jr nz, jr_0c9_4660

    ld l, h
    ld h, h

jr_0c9_45f3:
    jr nz, jr_0c9_4665

    ld [hl], l
    ld l, l
    ld [hl], b
    ld l, $20
    ld d, a
    ld h, c
    ld [hl], h
    ld h, l
    ld [hl], d
    nop
    ld [hl], e
    ld h, l
    ld h, l
    ld l, l
    ld [hl], e
    jr nz, jr_0c9_467b

    ld l, a
    jr nz, jr_0c9_466c

    ld h, l
    jr nz, jr_0c9_4680

    ld h, l
    ld l, [hl]
    ld [hl], h
    nop
    ld h, [hl]
    ld [hl], d
    ld l, a
    ld l, l
    jr nz, jr_0c9_467f

jr_0c9_4617:
    ld h, l
    ld [hl], d
    ld h, l
    ld l, $01
    ld d, h
    ld l, b

jr_0c9_461e:
    ld h, l
    jr nz, jr_0c9_468d

jr_0c9_4621:
    ld l, c
    ld h, h
    jr nz, jr_0c9_468e

    ld [hl], e
    jr nz, jr_0c9_4697

    ld [hl], b

jr_0c9_4629:
    ld h, l
    ld l, [hl]
    ld hl, $4901
    ld [hl], h

jr_0c9_462f:
    jr nz, jr_0c9_4695

    ld l, a
    ld h, l
    ld [hl], e
    jr nz, jr_0c9_46a4

jr_0c9_4636:
    ld l, a
    ld [hl], h
    jr nz, jr_0c9_46ad

    ld h, l
    ld h, l

jr_0c9_463c:
    ld l, l
    jr nz, jr_0c9_46b3

    ld l, a
    nop
    ld h, e

jr_0c9_4642:
    ld h, c
    ld [hl], l
    ld [hl], e
    ld h, l
    jr nz, jr_0c9_46a9

    ld l, [hl]
    ld a, c

jr_0c9_464a:
    jr nz, jr_0c9_46b0

    ld h, c
    ld l, l
    ld h, c
    ld h, a
    ld h, l
    ld l, $01
    ld c, c
    ld [hl], h
    jr nz, jr_0c9_46c9

    ld h, l
    ld h, c
    ld h, h
    ld [hl], e
    jr nz, @+$29

    ld b, c
    jr nz, jr_0c9_46d4

jr_0c9_4660:
    ld l, c
    ld h, a
    ld h, l
    ld [hl], d
    nop

jr_0c9_4665:
    ld l, b
    ld h, c
    ld [hl], e
    jr nz, jr_0c9_46dc

    ld h, l
    ld h, h

jr_0c9_466c:
    jr nz, jr_0c9_46da

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, jr_0c9_46d5

    ld l, [hl]
    ld h, h
    nop
    ld h, d
    ld l, h
    ld [hl], l
    ld h, l

jr_0c9_467b:
    jr nz, jr_0c9_46e9

    ld l, c
    ld h, a

jr_0c9_467f:
    ld l, b

jr_0c9_4680:
    ld [hl], h
    ld l, $27
    ld bc, $6f4e
    ld l, [hl]
    ld h, l
    jr nz, jr_0c9_46f9

    ld h, [hl]
    jr nz, jr_0c9_4701

jr_0c9_468d:
    ld l, b

jr_0c9_468e:
    ld h, l
    ld l, l
    jr nz, jr_0c9_46fe

    ld l, a
    ld l, a
    ld l, e

jr_0c9_4695:
    ld [hl], e
    nop

jr_0c9_4697:
    ld [hl], l
    ld [hl], e
    ld h, l
    ld h, [hl]
    ld [hl], l
    ld l, h
    ld l, $01
    ld b, c
    jr nz, jr_0c9_4708

    ld l, c
    ld l, [hl]

jr_0c9_46a4:
    ld h, l
    jr nz, @+$69

    ld [hl], d
    ld h, c

jr_0c9_46a9:
    ld l, [hl]
    ld h, h
    jr nz, jr_0c9_471d

jr_0c9_46ad:
    ld l, c
    ld h, c
    ld l, [hl]

jr_0c9_46b0:
    ld l, a
    ld l, $01

jr_0c9_46b3:
    ld b, e
    ld l, b
    ld [hl], d
    ld l, c
    ld [hl], e
    jr nz, jr_0c9_472f

    ld l, [hl]
    ld h, [hl]
    ld l, a
    ld [hl], d
    ld [hl], h
    ld [hl], l
    ld l, [hl]
    ld h, c
    ld [hl], h
    ld h, l
    ld l, h
    ld a, c
    nop
    ld h, e
    ld h, c

jr_0c9_46c9:
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_0c9_4740

    ld h, l
    ld h, c
    ld h, h
    jr nz, jr_0c9_4740

    ld [hl], l

jr_0c9_46d4:
    ld [hl], e

jr_0c9_46d5:
    ld l, c
    ld h, e
    ld l, $01
    ld c, c

jr_0c9_46da:
    ld [hl], h
    daa

jr_0c9_46dc:
    ld [hl], e
    jr nz, jr_0c9_4706

    ld c, l
    ld l, a
    ld l, a
    ld l, [hl]
    ld l, h
    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    nop

jr_0c9_46e9:
    ld d, e
    ld l, a
    ld l, [hl]
    ld h, c
    ld [hl], h
    ld h, c
    daa
    ld l, $20
    ld d, a
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_0c9_4771

    ld l, a

jr_0c9_46f9:
    ld [hl], l
    nop
    ld [hl], b
    ld l, h
    ld h, c

jr_0c9_46fe:
    ld a, c
    jr nz, jr_0c9_476a

jr_0c9_4701:
    ld [hl], h
    ccf
    jr nz, jr_0c9_475e

    ld h, l

jr_0c9_4706:
    ld [hl], e
    cpl

jr_0c9_4708:
    ld c, [hl]
    ld l, a
    ld bc, $6e41
    jr nz, jr_0c9_4774

    ld l, l
    ld h, d
    ld l, h
    ld h, l
    ld l, l
    jr nz, @+$6b

    ld [hl], e
    jr nz, @+$6b

    ld l, [hl]
    nop
    ld [hl], b
    ld l, h

jr_0c9_471d:
    ld h, c
    ld h, e
    ld h, l
    ld l, $01
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0c9_479c

    ld l, b
    ld h, l
    jr nz, @+$6a

    ld l, a
    ld l, h
    ld l, h

jr_0c9_472f:
    ld l, a
    ld [hl], a
    nop
    ld [hl], a
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, @+$63

    ld l, [hl]
    jr nz, jr_0c9_47a1

    ld l, l
    ld h, d
    ld l, h
    ld h, l

jr_0c9_4740:
    ld l, l
    nop
    ld [hl], a
    ld h, c
    ld [hl], e
    jr nz, @+$72

    ld [hl], l
    ld [hl], h
    jr nz, @+$6b

    ld l, [hl]
    ld l, $01
    ld d, a
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_0c9_47cd

    ld l, a
    ld [hl], l
    jr nz, jr_0c9_47c0

    ld h, c
    db $76
    ld h, l
    nop
    ld d, d
    ld h, l

jr_0c9_475e:
    ld h, d
    ld h, l
    ld h, e
    ld h, e
    ld h, c
    jr nz, jr_0c9_47d5

    ld [hl], d
    ld h, c
    ld h, e
    ld [hl], h
    ld l, c

jr_0c9_476a:
    ld h, e
    ld h, l
    ccf
    nop
    jr nz, jr_0c9_47c9

    ld h, l

jr_0c9_4771:
    ld [hl], e
    jr nz, jr_0c9_47c2

jr_0c9_4774:
    ld l, a
    jr nz, jr_0c9_4777

jr_0c9_4777:
    ld d, d
    ld h, l
    ld h, d
    ld h, l
    ld h, e
    ld h, e
    ld h, c
    jr nz, @+$6b

    ld [hl], e
    jr nz, jr_0c9_47f3

    ld l, h
    ld h, c
    ld a, c
    ld l, c
    ld l, [hl]
    ld h, a
    nop
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, @+$72

    ld l, c
    ld h, c
    ld l, [hl]
    ld l, a
    ld l, $01
    ld d, h
    ld h, c
    ld l, e
    ld h, l
    jr nz, jr_0c9_47fe

    ld h, c

jr_0c9_479c:
    ld [hl], d
    ld h, l
    ld l, $01
    ld b, c

jr_0c9_47a1:
    ld [hl], d
    ld h, l
    jr nz, jr_0c9_481e

    ld l, a
    ld [hl], l
    jr nz, jr_0c9_4818

    ld l, e
    ccf
    ld bc, $6854
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_0c9_4823

    ld l, a
    jr nz, jr_0c9_482c

    ld l, c
    ld l, l
    ld h, l
    jr nz, @+$76

    ld l, a
    nop
    ld [hl], b

jr_0c9_47c0:
    ld l, h
    ld h, c

jr_0c9_47c2:
    ld a, c
    jr nz, jr_0c9_4839

    ld l, b
    ld h, l
    jr nz, jr_0c9_4839

jr_0c9_47c9:
    ld l, c
    ld h, c
    ld l, [hl]
    ld l, a

jr_0c9_47cd:
    ld hl, $5401
    ld l, b
    ld h, l
    jr nz, jr_0c9_4839

    ld l, h

jr_0c9_47d5:
    ld h, l
    db $76
    ld h, c
    ld [hl], h
    ld l, a
    ld [hl], d
    jr nz, jr_0c9_4841

    ld l, a
    ld h, l
    ld [hl], e
    ld l, [hl]
    daa
    ld [hl], h
    nop
    ld [hl], e
    ld h, l
    ld h, l
    ld l, l
    jr nz, jr_0c9_485e

    ld l, a
    jr nz, jr_0c9_4860

    ld [hl], h
    ld l, a
    ld [hl], b
    jr nz, jr_0c9_4861

    ld l, [hl]

jr_0c9_47f3:
    jr nz, jr_0c9_4869

    ld l, b
    ld l, c
    ld [hl], e
    nop
    ld h, [hl]
    ld l, h
    ld l, a
    ld l, a
    ld [hl], d

jr_0c9_47fe:
    ld l, $01
    ld d, [hl]
    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    ld [hl], l
    ld [hl], e
    jr nz, jr_0c9_487d

    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    ld [hl], e
    jr nz, jr_0c9_4872

    ld [hl], l
    ld [hl], h
    nop
    ld l, [hl]
    ld l, a
    ld [hl], h
    ld l, b
    ld l, c

jr_0c9_4818:
    ld l, [hl]
    ld h, a
    jr nz, jr_0c9_488f

    ld h, l
    ld h, l

jr_0c9_481e:
    ld l, l
    ld [hl], e
    jr nz, jr_0c9_4896

    ld l, a

jr_0c9_4823:
    jr nz, jr_0c9_4887

    ld h, l
    nop
    ld [hl], l
    ld [hl], e
    ld h, l
    ld h, [hl]
    ld [hl], l

jr_0c9_482c:
    ld l, h
    ld l, $01
    ld c, c
    jr nz, jr_0c9_48a9

    ld l, a
    ld l, [hl]
    ld h, h
    ld h, l
    ld [hl], d
    jr nz, @+$79

jr_0c9_4839:
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_0c9_48b2

    ld l, b
    ld h, l
    nop

jr_0c9_4841:
    ld l, l
    ld l, a
    ld [hl], h
    ld l, c
    ld h, [hl]
    jr nz, jr_0c9_48b7

    ld h, [hl]
    jr nz, jr_0c9_48bf

    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_0c9_48b1

    ld [hl], d
    ld [hl], h
    nop
    ld l, c
    ld [hl], e
    ld l, $01
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e

jr_0c9_485e:
    jr nz, @+$70

jr_0c9_4860:
    ld l, a

jr_0c9_4861:
    jr nz, jr_0c9_48d7

    ld l, c
    ld l, l
    ld h, l
    jr nz, jr_0c9_48dc

    ld l, a

jr_0c9_4869:
    nop
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e
    jr nz, jr_0c9_48e6

    ld l, [hl]

jr_0c9_4872:
    ld h, h
    ld h, l
    ld [hl], d
    jr nz, jr_0c9_48eb

    ld l, b
    ld h, l
    ld [hl], e
    ld h, l
    nop
    ld h, e

jr_0c9_487d:
    ld l, c
    ld [hl], d
    ld h, e
    ld [hl], l
    ld l, l
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld h, e

jr_0c9_4887:
    ld h, l
    ld [hl], e
    ld l, $01
    ld b, c
    jr nz, jr_0c9_4900

    ld [hl], l

jr_0c9_488f:
    ld [hl], e
    ld [hl], h
    ld a, c
    jr nz, jr_0c9_48f6

    ld l, a
    ld l, c

jr_0c9_4896:
    ld l, h
    ld h, l
    ld [hl], d
    ld l, $01
    ld b, c
    jr nz, jr_0c9_4912

    ld h, c
    ld [hl], b
    ld h, l
    ld [hl], e
    ld [hl], h
    ld [hl], d
    ld a, c
    ld l, $01
    ld d, a
    ld l, c

jr_0c9_48a9:
    ld l, h
    ld l, h
    jr nz, jr_0c9_4926

    ld l, a
    ld [hl], l
    jr nz, jr_0c9_4921

jr_0c9_48b1:
    ld [hl], l

jr_0c9_48b2:
    ld [hl], h
    jr nz, jr_0c9_4929

    ld l, b
    ld h, l

jr_0c9_48b7:
    nop
    ld [hl], e
    ld l, b
    ld l, a
    ld [hl], h
    ld h, a
    ld [hl], l
    ld l, [hl]

jr_0c9_48bf:
    jr nz, jr_0c9_4923

    ld h, c
    ld h, e
    ld l, e
    ccf
    nop
    jr nz, jr_0c9_4921

    ld h, l
    ld [hl], e
    jr nz, jr_0c9_491a

    ld l, a
    jr nz, jr_0c9_48d0

    ld b, c

jr_0c9_48d0:
    ld l, [hl]
    jr nz, jr_0c9_4948

    ld [hl], d
    ld l, [hl]
    jr nz, jr_0c9_494e

jr_0c9_48d7:
    ld l, c
    ld [hl], h
    ld l, b
    jr nz, @+$63

jr_0c9_48dc:
    nop
    ld h, d
    ld h, l
    ld h, c
    ld [hl], l
    ld [hl], h
    ld l, c
    ld h, [hl]
    ld [hl], l
    ld l, h

jr_0c9_48e6:
    jr nz, @+$72

    ld l, c
    ld h, e
    ld [hl], h

jr_0c9_48eb:
    ld [hl], l
    ld [hl], d
    ld h, l
    nop
    ld l, a
    ld l, [hl]
    jr nz, jr_0c9_495c

    ld [hl], h
    ld l, $01

jr_0c9_48f6:
    ld c, c
    ld [hl], h
    jr nz, jr_0c9_4971

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_0c9_496d

jr_0c9_4900:
    ld l, a
    db $76
    ld h, l
    nop
    ld h, c
    ld [hl], h
    jr nz, jr_0c9_4969

    ld l, h
    ld l, h
    ld l, $01
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_0c9_4985

    ld l, c

jr_0c9_4912:
    ld [hl], h
    ld l, h
    ld h, l
    jr nz, @+$6b

    ld [hl], e
    jr nz, jr_0c9_4941

jr_0c9_491a:
    ld b, a
    ld l, c
    db $76
    ld h, l
    nop
    ld l, l
    ld h, l

jr_0c9_4921:
    jr nz, jr_0c9_4993

jr_0c9_4923:
    ld h, l
    ld h, c
    ld h, e

jr_0c9_4926:
    ld h, l
    ld h, [hl]
    ld [hl], l

jr_0c9_4929:
    ld l, h
    jr nz, jr_0c9_499f

    ld l, h
    ld h, l
    ld h, l
    ld [hl], b
    daa
    ld l, $01
    ld b, c
    jr nz, jr_0c9_49a6

    ld l, c
    ld h, e
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld h, l
    jr nz, jr_0c9_49ad

    ld h, [hl]
    jr nz, jr_0c9_49a2

jr_0c9_4941:
    jr nz, jr_0c9_49b7

    ld l, c
    ld [hl], d
    ld h, l
    ld h, h
    nop

jr_0c9_4948:
    ld l, l
    ld l, c
    ld h, h
    ld h, h
    ld l, h
    ld h, l

jr_0c9_494e:
    dec l
    ld h, c
    ld h, a
    ld h, l
    ld h, h
    jr nz, @+$6f

    ld h, c
    ld l, [hl]
    ld l, $01
    ld b, c
    jr nz, jr_0c9_49cc

jr_0c9_495c:
    ld l, c
    ld h, e
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld h, l
    jr nz, jr_0c9_49d3

    ld h, [hl]
    jr nz, jr_0c9_49c8

    nop
    ld l, [hl]

jr_0c9_4969:
    ld h, l
    ld [hl], a
    ld h, d
    ld l, a

jr_0c9_496d:
    ld [hl], d
    ld l, [hl]
    jr nz, jr_0c9_49d3

jr_0c9_4971:
    ld h, c
    ld h, d
    ld a, c
    ld l, $01
    ld b, c
    jr nz, jr_0c9_49e9

    ld l, c
    ld h, e
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld h, l
    jr nz, @+$71

    ld h, [hl]
    jr nz, jr_0c9_49e5

    nop

jr_0c9_4985:
    ld a, c
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, a
    jr nz, jr_0c9_49f9

    ld h, c
    ld l, [hl]
    ld l, $01
    ld b, c
    jr nz, jr_0c9_4a03

jr_0c9_4993:
    ld l, c
    ld h, e
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld h, l
    jr nz, jr_0c9_4a0a

    ld h, [hl]
    jr nz, jr_0c9_49ff

    ld l, [hl]

jr_0c9_499f:
    nop
    ld l, c
    ld l, [hl]

jr_0c9_49a2:
    ld h, [hl]
    ld h, c
    ld l, [hl]
    ld [hl], h

jr_0c9_49a6:
    ld l, $01
    ld b, c
    jr nz, jr_0c9_4a1b

    ld l, c
    ld h, e

jr_0c9_49ad:
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld h, l
    jr nz, jr_0c9_4a22

    ld h, [hl]
    jr nz, jr_0c9_4a17

    nop

jr_0c9_49b7:
    ld l, h
    ld l, c
    db $76
    ld h, l
    ld l, h
    ld a, c
    jr nz, jr_0c9_4a21

    ld l, a
    ld a, c
    ld l, $01
    ld b, c
    jr nz, jr_0c9_4a36

    ld l, c
    ld h, e

jr_0c9_49c8:
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld h, l

jr_0c9_49cc:
    jr nz, jr_0c9_4a3d

    ld h, [hl]
    jr nz, @+$63

    nop
    ld h, d

jr_0c9_49d3:
    ld l, a
    ld l, h
    ld h, h
    dec l
    ld l, h
    ld l, a
    ld l, a
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    nop
    ld l, a
    ld l, h
    ld h, h
    jr nz, jr_0c9_4a51

    ld h, c

jr_0c9_49e5:
    ld l, [hl]
    ld l, $01
    ld d, h

jr_0c9_49e9:
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_0c9_4a52

    jr nz, jr_0c9_4a60

    ld h, l
    ld [hl], e
    ld [hl], e
    ld h, c
    ld h, a
    ld h, l

jr_0c9_49f9:
    ld l, $01
    daa
    ld b, a
    ld l, c
    db $76

jr_0c9_49ff:
    ld h, l
    jr nz, jr_0c9_4a6f

    ld h, l

jr_0c9_4a03:
    jr nz, jr_0c9_4a79

    ld l, b
    ld h, l
    jr nz, jr_0c9_4a79

    ld h, l

jr_0c9_4a0a:
    ld h, c
    ld h, e
    ld h, l
    nop
    ld l, a
    ld h, [hl]
    jr nz, jr_0c9_4a76

    ld h, l
    ld h, c
    ld [hl], h
    ld l, b
    inc l

jr_0c9_4a17:
    jr nz, jr_0c9_4a7a

    ld l, [hl]
    ld h, h

jr_0c9_4a1b:
    jr nz, jr_0c9_4a66

    daa
    ld l, h
    ld l, h
    nop

jr_0c9_4a21:
    ld h, a

jr_0c9_4a22:
    ld l, c
    db $76
    ld h, l
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    jr nz, jr_0c9_4a9f

    ld l, b
    ld h, l
    jr nz, jr_0c9_4a99

    ld l, a
    ld a, c
    jr nz, jr_0c9_4aa2

    ld h, [hl]
    nop
    ld l, h

jr_0c9_4a36:
    ld l, c
    ld h, [hl]
    ld h, l
    ld l, $2e
    ld l, $27

jr_0c9_4a3d:
    ld bc, $6854
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_0c9_4aa8

    jr nz, @+$75

    ld [hl], a
    ld l, c
    ld [hl], h
    ld h, e
    ld l, b
    nop
    ld h, d
    ld h, l

jr_0c9_4a51:
    ld l, h

jr_0c9_4a52:
    ld l, a
    ld [hl], a
    ld l, $20
    ld d, a
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_0c9_4ad5

    ld l, a
    ld [hl], l
    nop
    ld [hl], b

jr_0c9_4a60:
    ld [hl], l
    ld [hl], e
    ld l, b
    jr nz, @+$6b

    ld [hl], h

jr_0c9_4a66:
    ccf
    jr nz, jr_0c9_4a89

    ld e, c
    ld h, l
    ld [hl], e
    cpl
    ld c, [hl]
    ld l, a

jr_0c9_4a6f:
    jr nz, jr_0c9_4a72

    ld b, a

jr_0c9_4a72:
    ld h, c
    ld [hl], d
    ld h, h
    ld h, l

jr_0c9_4a76:
    ld l, [hl]
    ld l, c
    ld l, [hl]

jr_0c9_4a79:
    ld h, a

jr_0c9_4a7a:
    jr nz, jr_0c9_4af0

    ld l, a
    ld l, a
    ld l, h
    ld [hl], e
    ld l, $00
    ld c, [hl]
    ld l, a
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a

jr_0c9_4a89:
    jr nz, jr_0c9_4b00

    ld [hl], e
    ld h, l
    ld h, [hl]
    ld [hl], l
    ld l, h
    ld l, $01
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0c9_4b0c

    ld l, a

jr_0c9_4a99:
    ld l, a
    jr nz, jr_0c9_4b00

    ld h, c
    ld [hl], d
    ld l, e

jr_0c9_4a9f:
    jr nz, jr_0c9_4b15

    ld l, a

jr_0c9_4aa2:
    nop
    ld [hl], e
    ld h, l
    ld h, l
    jr nz, @+$63

jr_0c9_4aa8:
    ld l, [hl]
    ld a, c
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $01
    ld c, c
    jr nz, jr_0c9_4b17

    ld h, c
    ld l, [hl]
    jr nz, jr_0c9_4b27

    ld l, [hl]
    ld l, h
    ld a, c
    jr nz, jr_0c9_4b30

    ld h, l
    ld h, l
    nop
    ld l, l
    ld l, a
    ld l, a
    ld l, [hl]
    ld l, h
    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, jr_0c9_4b2c

    ld l, [hl]
    ld h, h
    jr nz, jr_0c9_4b33

    ld h, l
    ld l, [hl]
    ld [hl], e
    ld h, l
    nop
    ld h, [hl]

jr_0c9_4ad5:
    ld l, a
    ld [hl], d
    ld h, l
    ld [hl], e
    ld [hl], h
    ld l, $01
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_0c9_4b54

    ld [hl], l
    ld l, [hl]
    jr nz, @+$75

    ld h, l
    ld [hl], h
    ld [hl], e
    jr nz, jr_0c9_4b53

    ld l, [hl]
    jr nz, jr_0c9_4b61

    ld l, b
    ld h, l
    nop

jr_0c9_4af0:
    jr nz, jr_0c9_4b69

    ld h, l
    ld [hl], e
    ld [hl], h
    inc l
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_0c9_4b69

    ld l, a
    ld l, a
    ld l, [hl]
    nop

jr_0c9_4b00:
    ld [hl], d
    ld l, c
    ld [hl], e
    ld h, l
    ld [hl], e
    jr nz, @+$6b

    ld l, [hl]
    jr nz, jr_0c9_4b7e

    ld l, b
    ld h, l

jr_0c9_4b0c:
    jr nz, jr_0c9_4b73

    ld h, c
    ld [hl], e
    ld [hl], h
    ld bc, $6e41
    ld h, h

jr_0c9_4b15:
    jr nz, jr_0c9_4b8e

jr_0c9_4b17:
    ld l, b
    ld h, l
    ld l, [hl]
    jr nz, jr_0c9_4b90

    ld l, b
    ld h, l
    jr nz, jr_0c9_4b93

    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], e
    nop
    ld h, d
    ld h, l

jr_0c9_4b27:
    ld h, a
    ld l, c
    ld l, [hl]
    jr nz, jr_0c9_4ba0

jr_0c9_4b2c:
    ld l, a
    jr nz, jr_0c9_4b90

    ld [hl], b

jr_0c9_4b30:
    ld [hl], b
    ld h, l
    ld h, c

jr_0c9_4b33:
    ld [hl], d
    nop
    ld l, c
    ld l, [hl]
    jr nz, jr_0c9_4bad

    ld l, b
    ld h, l
    jr nz, jr_0c9_4bb0

    ld l, e
    ld a, c
    ld l, $2e
    ld l, $01
    ld b, e
    ld [hl], d
    ld h, l
    ld [hl], e
    ld [hl], h
    ld [hl], e
    jr nz, jr_0c9_4bac

    ld [hl], d
    ld h, l
    jr nz, jr_0c9_4bbf

    ld l, h
    ld h, c
    ld h, e
    ld h, l

jr_0c9_4b53:
    ld h, h

jr_0c9_4b54:
    nop
    ld l, c
    ld l, [hl]
    jr nz, jr_0c9_4bba

    ld l, h
    ld l, h
    jr nz, jr_0c9_4bd1

    ld l, b
    ld h, l
    jr nz, jr_0c9_4bc9

jr_0c9_4b61:
    ld l, a
    ld l, h
    ld l, h
    ld l, a
    ld [hl], a
    ld [hl], e
    ld l, $01

jr_0c9_4b69:
    ld b, c
    ld l, [hl]
    jr nz, @+$71

    ld l, h
    ld h, h
    jr nz, @+$64

    ld h, c
    ld [hl], d

jr_0c9_4b73:
    ld [hl], d
    ld h, l
    ld l, h
    ld l, $01
    ld c, a
    ld l, h
    ld h, h
    jr nz, jr_0c9_4be1

    ld [hl], d

jr_0c9_4b7e:
    ld h, l
    ld [hl], e
    ld [hl], e
    ld h, l
    ld [hl], e
    ld l, $01
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_0c9_4bfd

jr_0c9_4b8e:
    ld l, [hl]
    ld h, l

jr_0c9_4b90:
    jr nz, jr_0c9_4bf6

    ld [hl], d

jr_0c9_4b93:
    ld h, l
    ld [hl], e
    ld [hl], e
    nop
    ld [hl], h
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_0c9_4c03

    ld l, c
    ld [hl], h
    ld [hl], e

jr_0c9_4ba0:
    jr nz, jr_0c9_4c1b

    ld l, a
    ld [hl], l
    nop
    ld [hl], b
    ld h, l
    ld [hl], d
    ld h, [hl]
    ld h, l
    ld h, e
    ld [hl], h

jr_0c9_4bac:
    ld l, h

jr_0c9_4bad:
    ld a, c
    ld l, $01

jr_0c9_4bb0:
    ld d, a
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_0c9_4c2f

    ld l, a
    ld [hl], l
    jr nz, jr_0c9_4c1d

jr_0c9_4bba:
    ld l, b
    ld h, c
    ld l, [hl]
    ld h, a
    ld h, l

jr_0c9_4bbf:
    nop
    ld a, c
    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, @+$65

    ld l, a
    ld [hl], e
    ld [hl], h

jr_0c9_4bc9:
    ld [hl], l
    ld l, l
    ld h, l
    ccf
    nop
    jr nz, @+$5b

    ld h, l

jr_0c9_4bd1:
    ld [hl], e
    jr nz, jr_0c9_4c22

    ld l, a
    jr nz, jr_0c9_4bd7

jr_0c9_4bd7:
    ld c, d
    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_0c9_4c3e

    jr nz, jr_0c9_4c4c

    ld l, a
    ld l, l

jr_0c9_4be1:
    ld h, l
    ld l, [hl]
    ld [hl], h
    nop
    ld [hl], b
    ld l, h
    ld h, l
    ld h, c
    ld [hl], e
    ld h, l
    ld l, $01
    ld b, c
    jr nz, jr_0c9_4c5e

    ld [hl], l
    ld l, l
    ld h, l
    ld [hl], d
    ld l, c
    ld h, e

jr_0c9_4bf6:
    jr nz, jr_0c9_4c63

    ld h, l
    ld a, c
    jr nz, jr_0c9_4c6c

    ld h, c

jr_0c9_4bfd:
    ld l, [hl]
    ld h, l
    ld l, h
    ld l, $01
    ld e, c

jr_0c9_4c03:
    ld l, a
    ld [hl], l
    jr nz, @+$66

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_0c9_4c78

    ld l, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_0c9_4c86

    ld l, b
    ld h, l
    nop
    ld [hl], b
    ld h, c
    ld [hl], e
    ld [hl], e
    jr nz, jr_0c9_4c89

jr_0c9_4c1b:
    ld [hl], l
    ld l, l

jr_0c9_4c1d:
    ld h, d
    ld h, l
    ld [hl], d
    ld l, $01

jr_0c9_4c22:
    ld e, c
    ld l, a
    ld [hl], l
    daa
    db $76
    ld h, l
    jr nz, jr_0c9_4c8f

    ld l, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    ld h, l

jr_0c9_4c2f:
    ld h, h
    jr nz, jr_0c9_4ca6

    ld l, b
    ld h, l
    nop
    ld [hl], b
    ld h, c
    ld [hl], e
    ld [hl], e
    jr nz, jr_0c9_4ca9

    ld [hl], l
    ld l, l
    ld h, d

jr_0c9_4c3e:
    ld h, l
    ld [hl], d
    ld l, $01
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_0c9_4caf

    ld l, a
    ld [hl], a
    ld l, h
    ld l, c
    ld l, [hl]

jr_0c9_4c4c:
    ld h, a
    jr nz, jr_0c9_4cbe

    ld h, [hl]
    jr nz, jr_0c9_4cb3

    ld l, [hl]
    nop
    ld h, c
    ld l, [hl]
    ld l, c
    ld l, l
    ld h, c
    ld l, h
    jr nz, @+$65

    ld h, c
    ld l, [hl]

jr_0c9_4c5e:
    jr nz, jr_0c9_4cc2

    ld h, l
    jr nz, jr_0c9_4ccb

jr_0c9_4c63:
    ld h, l
    ld h, c
    ld [hl], d
    ld h, h
    nop
    ld l, a
    ld l, [hl]
    jr nz, @+$63

jr_0c9_4c6c:
    ld l, [hl]
    ld h, h
    jr nz, jr_0c9_4cdf

    ld h, [hl]
    ld h, [hl]
    ld l, $01
    ld c, b
    ld h, l
    ld h, c
    db $76

jr_0c9_4c78:
    ld a, c
    dec l
    ld l, h
    ld l, a
    ld l, a
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0c9_4cf6

    ld [hl], l
    ld l, c
    ld [hl], h

jr_0c9_4c86:
    ld [hl], e
    nop
    ld l, a

jr_0c9_4c89:
    ld h, [hl]
    jr nz, jr_0c9_4ced

    ld [hl], d
    ld l, l
    ld l, a

jr_0c9_4c8f:
    ld [hl], d
    ld l, $01
    ld b, c
    jr nz, jr_0c9_4d0c

    ld h, l
    ld l, c
    ld [hl], d
    ld h, h
    jr nz, jr_0c9_4d03

    ld l, a
    ld l, h
    ld h, l
    jr nz, jr_0c9_4d0f

    ld [hl], b
    ld h, l
    ld l, [hl]
    ld [hl], e
    ld l, $01

jr_0c9_4ca6:
    ld d, e
    ld l, a
    ld l, l

jr_0c9_4ca9:
    ld h, l
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a

jr_0c9_4caf:
    jr nz, jr_0c9_4d14

    ld h, c
    ld l, [hl]

jr_0c9_4cb3:
    jr nz, jr_0c9_4d17

    ld h, l
    nop
    ld [hl], e
    ld h, l
    ld h, l
    ld l, [hl]
    jr nz, @+$6b

    ld l, [hl]

jr_0c9_4cbe:
    jr nz, jr_0c9_4d34

    ld l, b
    ld h, l

jr_0c9_4cc2:
    jr nz, @+$75

    ld l, b
    ld l, a
    ld [hl], a
    nop
    ld h, e
    ld h, c
    ld [hl], e

jr_0c9_4ccb:
    ld h, l
    ld l, $01
    ld d, b
    ld l, a
    ld l, c
    ld [hl], e
    ld l, a
    ld l, [hl]
    jr nz, @+$69

    ld h, c
    ld [hl], e
    jr nz, jr_0c9_4d43

    ld [hl], e
    nop
    ld h, l
    ld [hl], e
    ld h, e

jr_0c9_4cdf:
    ld h, c
    ld [hl], b
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $2e
    ld l, $21
    ld bc, $2e2e
    ld l, $2e

jr_0c9_4ced:
    ld l, $2e
    ld l, $2e
    ld l, $01
    ld d, d
    ld h, l
    ld h, d

jr_0c9_4cf6:
    ld h, l
    ld h, e
    ld h, e
    ld h, c
    ld l, $2e
    ld l, $01
    ld d, e
    ld l, a
    ld l, l
    ld h, l
    ld [hl], h

jr_0c9_4d03:
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$6b

    ld [hl], e
    jr nz, jr_0c9_4d83

jr_0c9_4d0c:
    ld [hl], d
    ld l, c
    ld [hl], h

jr_0c9_4d0f:
    ld [hl], h
    ld h, l
    ld l, [hl]
    nop
    ld l, a

jr_0c9_4d14:
    ld l, [hl]
    jr nz, jr_0c9_4d8b

jr_0c9_4d17:
    ld l, b
    ld h, l
    jr nz, jr_0c9_4d92

    ld h, c
    ld l, h
    ld l, h
    ld l, $2e
    ld l, $01
    ld c, c
    ld l, $2e
    ld l, $20
    ld h, e
    ld h, c
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_0c9_4d90

    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], h
    ld l, b
    ld h, l

jr_0c9_4d34:
    ld l, $2e
    ld l, $00
    ld d, e
    ld h, c
    db $76
    ld h, l
    jr nz, jr_0c9_4dab

    ld h, l
    jr nz, @+$68

    ld [hl], d
    ld l, a

jr_0c9_4d43:
    ld l, l
    jr nz, jr_0c9_4dba

    ld l, b
    ld l, c
    ld [hl], e
    nop
    ld [hl], b
    ld h, c
    ld l, c
    ld l, [hl]
    ld l, $2e
    ld l, $01
    ld c, c
    daa
    db $76
    ld h, l
    jr nz, jr_0c9_4dbf

    ld l, a
    ld [hl], h
    jr nz, jr_0c9_4dd0

    ld l, a
    jr nz, @+$69

    ld l, a
    jr nz, jr_0c9_4dd6

    ld l, a
    jr nz, jr_0c9_4dcc

    ld h, l
    ld [hl], h
    nop
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, @+$75

    ld h, l
    ld [hl], d
    ld [hl], l
    ld l, l
    ld l, $2e
    ld l, $01
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0c9_4df2

    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_0c9_4de1

    ld [hl], d
    ld [hl], d
    ld h, c

jr_0c9_4d83:
    ld l, [hl]
    ld h, a
    ld h, l
    ld h, h
    ld l, $01
    ld d, h
    ld l, b

jr_0c9_4d8b:
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e

jr_0c9_4d90:
    jr nz, jr_0c9_4e05

jr_0c9_4d92:
    ld l, a
    ld l, l
    ld h, l
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$63

    ld [hl], h
    nop
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_0c9_4e05

    ld h, c
    ld h, e
    ld l, e
    jr nz, jr_0c9_4e17

    ld h, [hl]
    jr nz, jr_0c9_4e1f

jr_0c9_4dab:
    ld l, b
    ld h, l
    nop
    ld [hl], e
    ld l, b
    ld h, l
    ld l, h
    ld h, [hl]
    ld l, $01
    ld c, c
    ld [hl], h
    jr nz, jr_0c9_4e2c

    ld h, l

jr_0c9_4dba:
    ld h, l
    ld l, l
    ld [hl], e
    jr nz, jr_0c9_4e32

jr_0c9_4dbf:
    ld l, a
    ld l, l
    ld h, l
    ld l, a
    ld l, [hl]
    ld h, l
    jr nz, jr_0c9_4e2f

    ld h, c
    ld [hl], e
    nop
    ld [hl], e
    ld h, l

jr_0c9_4dcc:
    ld h, c
    ld [hl], d
    ld h, e
    ld l, b

jr_0c9_4dd0:
    ld h, l
    ld h, h
    jr nz, jr_0c9_4e3c

    ld h, l
    ld [hl], d

jr_0c9_4dd6:
    ld h, l
    nop
    ld h, c
    ld l, h
    ld [hl], d
    ld h, l
    ld h, c
    ld h, h
    ld a, c
    ld l, $2e

jr_0c9_4de1:
    ld l, $01
    ld c, c
    ld [hl], h
    jr nz, jr_0c9_4e48

    ld [hl], b
    ld [hl], b
    ld h, l
    ld h, c
    ld [hl], d
    ld [hl], e
    jr nz, jr_0c9_4e63

    ld l, a
    jr nz, jr_0c9_4e54

jr_0c9_4df2:
    ld h, l
    jr nz, jr_0c9_4e56

    nop
    ld [hl], e
    ld [hl], a
    ld l, c
    ld [hl], h
    ld h, e
    ld l, b
    ld l, $20
    ld d, a
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_0c9_4e7d

    ld l, a

jr_0c9_4e05:
    ld [hl], l
    nop
    ld [hl], b
    ld [hl], l
    ld [hl], e
    ld l, b
    jr nz, jr_0c9_4e76

    ld [hl], h
    ccf
    jr nz, jr_0c9_4e31

    ld e, c
    ld h, l
    ld [hl], e
    jr nz, jr_0c9_4e64

    ld l, a

jr_0c9_4e17:
    jr nz, jr_0c9_4e1a

    ld c, c

jr_0c9_4e1a:
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0c9_4e93

jr_0c9_4e1f:
    ld l, a
    ld l, a
    jr nz, jr_0c9_4e8b

    ld h, l
    ld h, c
    db $76
    ld a, c
    jr nz, jr_0c9_4e9d

    ld l, a
    nop
    ld l, l

jr_0c9_4e2c:
    ld l, a
    db $76
    ld h, l

jr_0c9_4e2f:
    ld l, $01

jr_0c9_4e31:
    ld b, [hl]

jr_0c9_4e32:
    ld l, c
    ld [hl], d
    ld h, l
    ld [hl], a
    ld l, a
    ld l, a
    ld h, h
    ld l, $01
    ld d, h

jr_0c9_4e3c:
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_0c9_4ea5

    jr nz, jr_0c9_4eb3

    ld h, c
    ld [hl], b

jr_0c9_4e48:
    jr nz, @+$63

    ld h, d
    ld l, a
    db $76
    ld h, l
    nop
    ld l, c
    ld [hl], h
    ld l, $01
    ld c, c

jr_0c9_4e54:
    ld [hl], h
    daa

jr_0c9_4e56:
    ld [hl], e
    jr nz, jr_0c9_4ecd

    ld l, a
    ld l, a
    jr nz, jr_0c9_4ec1

    ld h, c
    ld [hl], d
    ld l, e
    jr nz, jr_0c9_4ed6

    ld l, a

jr_0c9_4e63:
    nop

jr_0c9_4e64:
    ld [hl], e
    ld h, l
    ld h, l
    jr nz, jr_0c9_4eca

    ld l, [hl]
    ld a, c
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $01
    ld c, c
    ld [hl], h
    daa
    ld [hl], e

jr_0c9_4e76:
    jr nz, jr_0c9_4eec

    ld l, a
    ld l, a
    jr nz, jr_0c9_4ee0

    ld h, c

jr_0c9_4e7d:
    ld [hl], d
    ld l, e
    jr nz, jr_0c9_4ef5

    ld l, a
    nop
    ld [hl], e
    ld h, l
    ld h, l
    ld l, $20
    ld d, a
    ld l, c
    ld l, h

jr_0c9_4e8b:
    ld l, h
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    jr nz, jr_0c9_4efc

    ld [hl], l

jr_0c9_4e93:
    ld l, l
    ld [hl], b
    nop
    ld h, h
    ld l, a
    ld [hl], a
    ld l, [hl]
    ccf
    jr nz, jr_0c9_4ef6

jr_0c9_4e9d:
    ld h, l
    ld [hl], e
    cpl
    ld c, [hl]
    ld l, a
    ld bc, $6854

jr_0c9_4ea5:
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_0c9_4f0d

    jr nz, jr_0c9_4f20

    ld l, a
    ld [hl], b
    ld h, l
    ld l, $00

jr_0c9_4eb3:
    ld d, a
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_0c9_4f32

    ld l, a
    ld [hl], l
    jr nz, jr_0c9_4f21

    ld h, l
    ld [hl], e
    ld h, e
    ld h, l

jr_0c9_4ec1:
    ld l, [hl]
    ld h, h
    nop
    ld l, c
    ld [hl], h
    ccf
    jr nz, jr_0c9_4f22

    ld h, l

jr_0c9_4eca:
    ld [hl], e
    cpl
    ld c, [hl]

jr_0c9_4ecd:
    ld l, a
    ld bc, $6854
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e

jr_0c9_4ed6:
    jr nz, jr_0c9_4f39

    jr nz, jr_0c9_4f4c

    ld l, a
    ld [hl], b
    ld h, l
    ld l, $00
    ld d, a

jr_0c9_4ee0:
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_0c9_4f5e

    ld l, a
    ld [hl], l
    jr nz, jr_0c9_4f4c

    ld l, h
    ld l, c
    ld l, l

jr_0c9_4eec:
    ld h, d
    jr nz, jr_0c9_4f58

    ld [hl], h
    ccf
    nop
    jr nz, jr_0c9_4f4d

    ld h, l

jr_0c9_4ef5:
    ld [hl], e

jr_0c9_4ef6:
    jr nz, jr_0c9_4f46

    ld l, a
    jr nz, jr_0c9_4efc

    ld d, e

jr_0c9_4efc:
    ld l, a
    ld l, l
    ld h, l
    ld l, a
    ld l, [hl]
    ld h, l
    jr nz, @+$6a

    ld h, c
    ld [hl], e
    jr nz, @+$6f

    ld l, a
    db $76
    ld h, l
    ld h, h
    nop

jr_0c9_4f0d:
    ld [hl], h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_0c9_4f87

    ld l, a
    ld l, l
    ld h, d
    ld [hl], e
    ld [hl], h
    ld l, a
    ld l, [hl]
    ld h, l
    ld l, $01
    ld d, h
    ld l, b
    ld h, l

jr_0c9_4f20:
    ld [hl], d

jr_0c9_4f21:
    ld h, l

jr_0c9_4f22:
    daa
    ld [hl], e
    jr nz, jr_0c9_4f87

    jr nz, jr_0c9_4f9b

    ld [hl], a
    ld l, c
    ld [hl], h
    ld h, e
    ld l, b
    nop
    ld h, d
    ld h, l
    ld l, h
    ld l, a

jr_0c9_4f32:
    ld [hl], a
    ld l, $20
    ld d, a
    ld l, c
    ld l, h
    ld l, h

jr_0c9_4f39:
    jr nz, jr_0c9_4fb4

    ld l, a
    ld [hl], l
    nop
    ld [hl], b
    ld [hl], l
    ld [hl], e
    ld l, b
    jr nz, jr_0c9_4fad

    ld [hl], h
    ccf

jr_0c9_4f46:
    jr nz, jr_0c9_4fa1

    ld h, l
    ld [hl], e
    cpl
    ld c, [hl]

jr_0c9_4f4c:
    ld l, a

jr_0c9_4f4d:
    ld bc, $2041
    ld l, b
    ld l, a
    ld l, h
    ld h, l
    jr nz, jr_0c9_4fc5

    ld [hl], b
    ld h, l

jr_0c9_4f58:
    ld l, [hl]
    ld [hl], e
    jr nz, jr_0c9_4fc5

    ld l, [hl]
    nop

jr_0c9_4f5e:
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, @+$68

    ld l, c
    ld [hl], d
    ld h, l
    ld [hl], b
    ld l, h
    ld h, c
    ld h, e
    ld h, l
    ld l, $01
    ld d, d
    ld l, c
    ld h, e
    ld l, b
    ld h, c
    ld [hl], d
    ld h, h
    jr nz, jr_0c9_4fdc

    ld [hl], d
    ld l, a
    ld l, l
    nop
    ld b, d
    ld [hl], d
    ld h, c
    db $76
    ld l, a
    jr nz, jr_0c9_4ff5

    ld h, l
    ld h, c
    ld l, l
    ld l, $01
    ld b, d

jr_0c9_4f87:
    ld h, l
    jr nz, jr_0c9_4fed

    ld h, c
    ld [hl], d
    ld h, l
    ld h, [hl]
    ld [hl], l
    ld l, h
    jr nz, jr_0c9_4fd5

    ld l, b
    ld [hl], d
    ld l, c
    ld [hl], e
    ld l, $01
    ld d, d
    ld l, c
    ld h, e

jr_0c9_4f9b:
    ld l, b
    ld h, c
    ld [hl], d
    ld h, h
    jr nz, @+$6b

jr_0c9_4fa1:
    ld [hl], e
    jr nz, jr_0c9_5008

    ld h, l
    ld h, c
    ld h, h
    ld l, $01
    ld d, b
    ld l, h
    ld h, l
    ld h, c

jr_0c9_4fad:
    ld [hl], e
    ld h, l
    jr nz, @+$6a

    ld [hl], l
    ld [hl], d
    ld [hl], d

jr_0c9_4fb4:
    ld a, c
    ld l, $01
    ld d, h
    ld h, c
    ld l, e
    ld h, l
    jr nz, jr_0c9_5020

    ld h, c
    ld [hl], d
    ld h, l
    ld l, $2e
    ld l, $01
    ld c, c

jr_0c9_4fc5:
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0c9_503e

    ld l, a
    ld l, a
    jr nz, jr_0c9_5032

    ld h, c
    ld [hl], d
    ld l, e
    jr nz, jr_0c9_5047

    ld l, a
    nop

jr_0c9_4fd5:
    ld [hl], e
    ld h, l
    ld h, l
    jr nz, jr_0c9_503b

    ld l, [hl]
    ld a, c

jr_0c9_4fdc:
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $01
    ld b, c
    jr nz, jr_0c9_5049

    ld h, c
    ld l, [hl]
    ld h, h
    ld l, h
    ld h, l
    ld l, $01

jr_0c9_4fed:
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_0c9_5055

    ld h, c
    ld l, [hl]
    ld h, h

jr_0c9_4ff5:
    ld l, h
    ld h, l
    jr nz, jr_0c9_5062

    ld [hl], e
    jr nz, jr_0c9_5068

    ld l, c
    ld [hl], h
    ld l, $01
    ld b, d
    ld l, a
    ld l, a
    ld l, e
    ld [hl], e
    jr nz, jr_0c9_5068

    ld l, [hl]

jr_0c9_5008:
    ld h, h
    jr nz, jr_0c9_5072

    ld h, c
    ld h, h
    ld h, a
    ld h, l
    ld [hl], h
    ld [hl], d
    ld a, c
    ld l, $01
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0c9_508e

    ld l, b
    ld h, l
    jr nz, jr_0c9_5086

    ld l, a
    ld l, h

jr_0c9_5020:
    ld h, l
    jr nz, jr_0c9_509a

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    nop
    ld [hl], h
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_0c9_5090

    ld l, c
    ld h, a
    jr nz, jr_0c9_50a5

jr_0c9_5032:
    ld l, [hl]
    ld h, c
    ld l, e
    ld h, l
    jr nz, jr_0c9_509b

    ld h, c
    ld l, l
    ld h, l

jr_0c9_503b:
    nop
    ld l, a
    ld [hl], l

jr_0c9_503e:
    ld [hl], h
    jr nz, jr_0c9_50b0

    ld h, [hl]
    ld l, $01
    ld d, e
    ld [hl], b
    ld l, a

jr_0c9_5047:
    ld [hl], h
    ld [hl], e

jr_0c9_5049:
    jr nz, jr_0c9_50ba

    ld h, [hl]
    jr nz, jr_0c9_50b0

    ld l, h
    ld l, a
    ld l, a
    ld h, h
    jr nz, @+$63

    ld [hl], d

jr_0c9_5055:
    ld h, l
    nop
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_0c9_50be

    ld l, [hl]
    ld h, h
    jr nz, jr_0c9_50d5

    ld l, b

jr_0c9_5062:
    ld h, l
    ld [hl], d
    ld h, l
    ld l, $01
    ld c, c

jr_0c9_5068:
    jr nz, jr_0c9_50d2

    ld l, a
    ld [hl], b
    ld h, l
    jr nz, jr_0c9_50e3

    ld l, b
    ld l, c
    ld [hl], e

jr_0c9_5072:
    jr nz, jr_0c9_50d6

    ld l, h
    ld l, a
    ld l, a
    ld h, h
    nop
    ld l, c
    ld [hl], e
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_0c9_50e6

    ld [hl], d
    ld l, a
    ld l, l
    jr nz, @+$6f

    ld a, c

jr_0c9_5086:
    nop
    ld [hl], h
    ld h, l
    ld h, c
    ld l, l
    ld l, l
    ld h, c
    ld [hl], h

jr_0c9_508e:
    ld h, l
    ld [hl], e

jr_0c9_5090:
    ld l, $2e
    ld l, $01
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_0c9_5107

jr_0c9_509a:
    ld [hl], l

jr_0c9_509b:
    ld [hl], e
    ld [hl], h
    jr nz, jr_0c9_5101

    ld h, l
    nop
    ld b, [hl]
    ld l, a
    ld [hl], d
    ld h, l

jr_0c9_50a5:
    ld [hl], e
    ld [hl], h
    daa
    ld [hl], e
    ld l, $2e
    ld l, $01
    ld c, c
    jr nz, @+$65

jr_0c9_50b0:
    ld h, c
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_0c9_5118

    ld h, l
    ld l, h
    ld l, c
    ld h, l

jr_0c9_50ba:
    db $76
    ld h, l
    nop
    ld [hl], h

jr_0c9_50be:
    ld l, b
    ld l, c
    ld [hl], e
    ld l, $2e
    ld l, $01
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0c9_5111

    ld l, a
    ld [hl], d
    ld h, l
    ld [hl], e
    ld [hl], h
    ld l, $2e

jr_0c9_50d2:
    ld l, $21
    nop

jr_0c9_50d5:
    ld c, b

jr_0c9_50d6:
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_0c9_513d

    ld h, l
    ld h, l
    ld l, [hl]
    jr nz, jr_0c9_5150

    ld h, l
    ld h, e
    ld l, e

jr_0c9_50e3:
    ld h, l
    ld h, h
    nop

jr_0c9_50e6:
    ld [hl], h
    ld l, a
    jr nz, jr_0c9_514e

    ld h, l
    ld h, c
    ld [hl], h
    ld l, b
    jr nz, jr_0c9_5152

    ld a, c
    jr nz, @+$65

    ld [hl], d
    ld l, a
    ld [hl], a
    ld [hl], e
    ld l, $01
    ld c, c
    ld [hl], h
    jr nz, jr_0c9_5169

    ld l, a
    ld l, a
    ld l, e
    ld [hl], e

jr_0c9_5101:
    jr nz, jr_0c9_5164

    ld [hl], e
    jr nz, jr_0c9_516f

    ld h, [hl]

jr_0c9_5107:
    jr nz, @+$6b

    ld [hl], h
    daa
    ld [hl], e
    nop
    ld h, c
    ld l, h
    ld l, c
    db $76

jr_0c9_5111:
    ld h, l
    ld l, $01
    ld c, c
    ld [hl], h
    jr nz, jr_0c9_5184

jr_0c9_5118:
    ld l, a
    ld l, a
    ld l, e
    ld [hl], e
    jr nz, jr_0c9_5187

    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0c9_5184

    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h
    nop
    ld [hl], h
    ld l, a
    jr nz, jr_0c9_5199

    ld l, a
    db $76
    ld h, l
    ld l, $01
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, @+$63

    jr nz, jr_0c9_51af

    ld [hl], a

jr_0c9_513d:
    ld l, c
    ld [hl], h
    ld h, e
    ld l, b
    ld l, $00
    ld d, a
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_0c9_51c2

    ld l, a
    ld [hl], l
    jr nz, jr_0c9_51bd

    ld [hl], l

jr_0c9_514e:
    ld [hl], e
    ld l, b

jr_0c9_5150:
    jr nz, @+$6b

jr_0c9_5152:
    ld [hl], h
    ccf
    nop
    jr nz, jr_0c9_51b0

    ld h, l
    ld [hl], e
    jr nz, jr_0c9_51a9

    ld l, a
    jr nz, @+$03

    ld l, $2e
    ld c, [hl]
    ld l, a
    ld [hl], h
    ld l, b

jr_0c9_5164:
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0c9_51d2

jr_0c9_5169:
    ld l, l
    ld [hl], b
    ld l, a
    ld [hl], d
    ld [hl], h
    ld h, c

jr_0c9_516f:
    ld l, [hl]
    ld [hl], h
    ld l, $00
    ld d, a
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_0c9_51f2

    ld l, a
    ld [hl], l
    jr nz, jr_0c9_51f1

    ld [hl], d
    ld a, c
    jr nz, jr_0c9_51e2

    ld l, [hl]
    ld h, h
    nop

jr_0c9_5184:
    ld [hl], h
    ld h, c
    ld l, e

jr_0c9_5187:
    ld h, l
    jr nz, jr_0c9_51f9

    ld [hl], l
    ld [hl], h
    jr nz, jr_0c9_5202

    ld l, b
    ld h, l
    nop
    ld h, l
    ld a, c
    ld h, l
    ld h, d
    ld h, c
    ld l, h
    ld l, h
    ld [hl], e

jr_0c9_5199:
    ccf
    jr nz, jr_0c9_51f5

    ld h, l
    ld [hl], e
    cpl
    ld c, [hl]
    ld l, a
    ld bc, $2041
    ld [hl], d
    ld l, a
    ld h, e
    ld l, e
    ld l, c

jr_0c9_51a9:
    ld l, [hl]
    ld h, a
    jr nz, jr_0c9_5210

    ld l, b
    ld h, c

jr_0c9_51af:
    ld l, c

jr_0c9_51b0:
    ld [hl], d
    ld l, $01
    ld c, l
    ld l, a
    ld [hl], e
    ld [hl], h
    jr nz, jr_0c9_5228

    ld h, [hl]
    jr nz, @+$76

    ld l, b

jr_0c9_51bd:
    ld h, l
    ld l, l
    jr nz, jr_0c9_5222

    ld [hl], d

jr_0c9_51c2:
    ld h, l
    jr nz, jr_0c9_5234

    ld l, [hl]
    nop
    ld h, d
    ld l, c
    ld l, a
    ld l, h
    ld l, a
    ld h, a
    ld a, c
    jr nz, jr_0c9_5231

    ld l, [hl]
    ld h, h

jr_0c9_51d2:
    nop
    ld h, e
    ld l, b
    ld h, l
    ld l, l
    ld l, c
    ld [hl], e
    ld [hl], h
    ld [hl], d
    ld a, c
    ld l, $01
    ld c, [hl]
    ld l, a
    ld l, [hl]
    ld h, l

jr_0c9_51e2:
    jr nz, jr_0c9_5253

    ld h, [hl]
    jr nz, @+$76

    ld l, b
    ld h, l
    ld l, l
    jr nz, jr_0c9_525f

    ld h, l
    ld h, l
    ld l, l
    ld [hl], e
    nop

jr_0c9_51f1:
    ld [hl], h

jr_0c9_51f2:
    ld l, a
    jr nz, jr_0c9_5257

jr_0c9_51f5:
    ld h, l
    jr nz, @+$6b

    ld l, [hl]

jr_0c9_51f9:
    ld [hl], h
    ld h, l
    ld [hl], d
    ld h, l
    ld [hl], e
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a

jr_0c9_5202:
    ld l, $01
    ld c, c
    ld [hl], h
    jr nz, jr_0c9_5270

    ld h, c
    ld [hl], e
    jr nz, jr_0c9_527a

    ld l, a
    ld [hl], h
    jr nz, jr_0c9_5272

jr_0c9_5210:
    ld h, l
    ld h, l
    ld l, [hl]
    nop
    ld [hl], l
    ld [hl], e
    ld h, l
    ld h, h
    jr nz, jr_0c9_5280

    ld l, a
    ld [hl], d
    jr nz, jr_0c9_527f

    jr nz, jr_0c9_528c

    ld l, a
    ld l, [hl]

jr_0c9_5222:
    ld h, a
    nop
    ld [hl], h
    ld l, c
    ld l, l
    ld h, l

jr_0c9_5228:
    jr nz, jr_0c9_528b

    ld l, [hl]
    ld h, h
    jr nz, jr_0c9_5297

    ld [hl], e
    jr nz, jr_0c9_5295

jr_0c9_5231:
    ld [hl], l
    ld [hl], e
    ld [hl], h

jr_0c9_5234:
    ld a, c
    ld l, $01
    ld c, l
    ld l, a
    ld [hl], e
    ld [hl], h
    jr nz, jr_0c9_52ac

    ld h, [hl]
    jr nz, jr_0c9_52b4

    ld l, b
    ld h, l
    ld l, l
    jr nz, jr_0c9_52a6

    ld [hl], d
    ld h, l
    nop
    ld l, a
    ld l, [hl]
    jr nz, @+$65

    ld l, b
    ld h, l
    ld l, l
    ld l, c
    ld [hl], e
    ld [hl], h
    ld [hl], d

jr_0c9_5253:
    ld a, c
    ld l, $01
    ld c, l

jr_0c9_5257:
    ld h, c
    ld l, [hl]
    ld a, c
    jr nz, jr_0c9_52be

    ld l, a
    ld l, a
    ld l, e

jr_0c9_525f:
    ld [hl], e
    ld l, $01
    ld c, c
    ld [hl], h
    jr nz, jr_0c9_52ce

    ld h, c
    ld [hl], e
    jr nz, jr_0c9_52d8

    ld l, a
    ld [hl], h
    jr nz, jr_0c9_52d0

    ld h, l
    ld h, l

jr_0c9_5270:
    ld l, [hl]
    nop

jr_0c9_5272:
    ld [hl], l
    ld [hl], e
    ld h, l
    ld h, h
    jr nz, jr_0c9_52de

    ld l, a
    ld [hl], d

jr_0c9_527a:
    jr nz, @+$63

    nop
    ld l, h
    ld l, a

jr_0c9_527f:
    ld l, [hl]

jr_0c9_5280:
    ld h, a
    jr nz, jr_0c9_52f7

    ld l, c
    ld l, l
    ld h, l
    ld l, $01
    ld d, e
    ld l, a
    ld l, l

jr_0c9_528b:
    ld h, l

jr_0c9_528c:
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$6a

    ld h, c
    ld [hl], e

jr_0c9_5295:
    nop
    ld h, d

jr_0c9_5297:
    ld h, l
    ld h, l
    ld l, [hl]
    jr nz, jr_0c9_530c

    ld l, h
    ld h, c
    ld h, e
    ld h, l
    ld h, h
    jr nz, @+$6a

    ld h, l
    ld [hl], d
    ld h, l

jr_0c9_52a6:
    ld l, $01
    ld c, c
    ld [hl], h
    daa
    ld [hl], e

jr_0c9_52ac:
    jr nz, jr_0c9_530f

    jr nz, @+$6a

    ld h, l
    ld l, h
    ld l, c
    ld h, e

jr_0c9_52b4:
    ld l, a
    ld [hl], b
    ld [hl], h
    ld h, l
    ld [hl], d
    nop
    ld [hl], b
    ld l, a
    ld [hl], d
    ld [hl], h

jr_0c9_52be:
    ld hl, $4901
    ld h, [hl]
    jr nz, jr_0c9_530d

    jr nz, @+$65

    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, @+$65

    ld l, a
    ld l, [hl]

jr_0c9_52ce:
    ld [hl], h
    ld h, c

jr_0c9_52d0:
    ld h, e
    ld [hl], h
    nop
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_0c9_5347

jr_0c9_52d8:
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    jr nz, @+$6f

jr_0c9_52de:
    ld h, l
    ld l, l
    ld h, d
    ld h, l
    ld [hl], d
    ld [hl], e
    nop
    ld h, [hl]
    ld [hl], d
    ld l, a
    ld l, l
    jr nz, jr_0c9_535f

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ld l, $01
    ld b, c
    jr nz, @+$64

    ld h, c
    ld [hl], h
    ld [hl], h

jr_0c9_52f7:
    ld h, l
    ld [hl], d
    ld a, c
    ld l, $01
    ld c, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_0c9_534a

    jr nz, @+$65

    ld h, c
    ld l, [hl]
    jr nz, jr_0c9_5374

    ld l, a
    db $76
    ld h, l
    jr nz, @+$76

jr_0c9_530c:
    ld l, b

jr_0c9_530d:
    ld h, l
    nop

jr_0c9_530f:
    ld h, l
    ld l, h
    ld h, l
    db $76
    ld h, c
    ld [hl], h
    ld l, a
    ld [hl], d
    jr nz, jr_0c9_5382

    ld l, [hl]
    jr nz, jr_0c9_5390

    ld l, b
    ld h, l
    nop
    ld h, e
    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], h
    ld a, c
    ld h, c
    ld [hl], d
    ld h, h
    ld l, $01
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0c9_5394

    ld [hl], l
    ld [hl], e
    ld [hl], h
    ld a, c
    ld l, $20
    ld c, c
    ld [hl], h
    jr nz, jr_0c9_53a2

    ld h, c
    ld [hl], e
    nop
    ld l, [hl]
    ld l, a
    ld [hl], h
    jr nz, jr_0c9_53a4

    ld h, l
    ld h, l
    ld l, [hl]
    jr nz, jr_0c9_53bc

jr_0c9_5347:
    ld [hl], e
    ld h, l
    ld h, h

jr_0c9_534a:
    jr nz, @+$68

    ld l, a
    ld [hl], d
    nop
    ld h, c
    jr nz, jr_0c9_53be

    ld l, a
    ld l, [hl]
    ld h, a
    jr nz, jr_0c9_53cb

    ld l, c
    ld l, l
    ld h, l
    ld l, $01
    ld b, c
    jr nz, jr_0c9_53c5

jr_0c9_535f:
    ld [hl], d
    ld h, l
    ld h, l
    ld a, d
    ld h, l
    ld [hl], d
    ld l, $20
    ld c, c
    ld [hl], h
    nop
    ld [hl], e
    ld l, l
    ld h, l
    ld l, h
    ld l, h
    ld [hl], e
    jr nz, jr_0c9_53d4

    ld h, c
    ld h, h

jr_0c9_5374:
    nop
    ld l, c
    ld l, [hl]
    ld [hl], e
    ld l, c
    ld h, h
    ld h, l
    ld l, $01
    ld b, c
    ld l, [hl]
    jr nz, jr_0c9_53f0

    db $76

jr_0c9_5382:
    ld h, l
    ld l, [hl]
    ld l, $01
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0c9_53ee

    ld h, c
    ld h, h
    ld l, h
    ld a, c

jr_0c9_5390:
    jr nz, jr_0c9_5404

    ld [hl], l
    ld [hl], e

jr_0c9_5394:
    ld [hl], h
    ld h, l
    ld h, h
    nop
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_0c9_5401

    ld l, a
    ld h, l
    ld [hl], e
    jr nz, jr_0c9_5410

jr_0c9_53a2:
    ld l, a
    ld [hl], h

jr_0c9_53a4:
    jr nz, jr_0c9_5419

    ld h, l
    ld h, l
    ld l, l
    nop
    ld [hl], h
    ld l, a
    jr nz, @+$79

    ld l, a
    ld [hl], d
    ld l, e
    ld l, $01
    ld b, c
    jr nz, jr_0c9_541d

    ld h, c
    ld [hl], e
    jr nz, jr_0c9_541d

    ld l, a
    ld l, a

jr_0c9_53bc:
    ld l, e
    ld l, c

jr_0c9_53be:
    ld l, [hl]
    ld h, a
    jr nz, jr_0c9_5435

    ld [hl], h
    ld l, a
    db $76

jr_0c9_53c5:
    ld h, l
    ld l, $00
    ld d, h
    ld l, b
    ld h, l

jr_0c9_53cb:
    jr nz, jr_0c9_5434

    ld h, c
    ld [hl], e
    jr nz, jr_0c9_543a

    ld [hl], e
    jr nz, jr_0c9_5442

jr_0c9_53d4:
    ld l, a
    ld [hl], h
    nop
    ld [hl], e
    ld [hl], l
    ld [hl], b
    ld [hl], b
    ld l, h
    ld l, c
    ld h, l
    ld h, h
    ld l, $01
    ld d, a
    ld h, c
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_0c9_5451

    ld [hl], e
    jr nz, jr_0c9_5459

    ld l, a
    ld [hl], h
    nop

jr_0c9_53ee:
    ld [hl], e
    ld [hl], l

jr_0c9_53f0:
    ld [hl], b
    ld [hl], b
    ld l, h
    ld l, c
    ld h, l
    ld h, h
    ld l, $01
    ld b, h
    ld h, c
    ld [hl], d
    ld l, e
    jr nz, jr_0c9_5460

    ld l, h
    ld l, a
    ld l, a

jr_0c9_5401:
    ld h, h
    jr nz, @+$63

jr_0c9_5404:
    ld h, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ld [hl], e
    nop
    ld [hl], h
    ld l, a
    jr nz, jr_0c9_5478

    ld [hl], h

jr_0c9_5410:
    ld l, $20
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_0c9_547c

    ld l, c

jr_0c9_5419:
    ld h, h
    nop
    ld [hl], h
    ld l, b

jr_0c9_541d:
    ld h, l
    ld a, c
    jr nz, jr_0c9_5484

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_0c9_548e

    ld h, l
    ld [hl], d
    ld h, l
    ccf
    ld bc, $2041
    ld [hl], a
    ld l, c
    ld l, [hl]
    ld h, e
    ld l, b
    jr nz, jr_0c9_549a

jr_0c9_5434:
    ld l, a

jr_0c9_5435:
    ld [hl], d
    jr nz, jr_0c9_54ac

    ld l, b
    ld h, l

jr_0c9_543a:
    nop
    ld h, l
    ld l, h
    ld h, l
    db $76
    ld h, c
    ld [hl], h
    ld l, a

jr_0c9_5442:
    ld [hl], d
    ld l, $20
    ld d, h
    ld l, b
    ld h, l
    nop
    ld h, l
    ld l, h
    ld h, l
    db $76
    ld h, c
    ld [hl], h
    ld l, a
    ld [hl], d

jr_0c9_5451:
    jr nz, jr_0c9_54bc

    ld [hl], e
    jr nz, jr_0c9_54ba

    ld l, a
    ld [hl], a
    ld l, [hl]

jr_0c9_5459:
    ld l, $01
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l

jr_0c9_5460:
    daa
    ld [hl], e
    jr nz, jr_0c9_54c5

    jr nz, jr_0c9_54d9

    ld [hl], c
    ld [hl], l
    ld h, c
    ld [hl], d
    ld h, l
    nop
    ld l, b
    ld l, a
    ld l, h
    ld h, l
    ld l, $01
    ld b, c
    jr nz, jr_0c9_54ec

    ld h, c
    ld [hl], h
    ld h, l

jr_0c9_5478:
    ld [hl], d
    jr nz, @+$72

    ld h, c

jr_0c9_547c:
    ld [hl], e
    ld [hl], e
    ld h, c
    ld h, a
    ld h, l
    ld l, $00
    ld d, h

jr_0c9_5484:
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_0c9_54ed

    jr nz, jr_0c9_54fa

jr_0c9_548e:
    ld h, c
    ld h, h
    ld h, h
    ld h, l
    ld [hl], d
    nop
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ld l, $01

jr_0c9_549a:
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_0c9_5516

    ld h, c
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_0c9_550e

    ld [hl], e
    nop
    ld [hl], d
    ld [hl], l
    ld l, [hl]
    ld l, [hl]
    ld l, c

jr_0c9_54ac:
    ld l, [hl]
    ld h, a
    jr nz, jr_0c9_5514

    ld l, a
    ld [hl], a
    ld l, [hl]
    jr nz, jr_0c9_5529

    ld l, b
    ld h, l
    nop
    ld l, a
    ld [hl], b

jr_0c9_54ba:
    ld [hl], b
    ld l, a

jr_0c9_54bc:
    ld [hl], e
    ld l, c
    ld [hl], h
    ld h, l
    jr nz, jr_0c9_5535

    ld l, c
    ld h, h
    ld h, l

jr_0c9_54c5:
    ld l, $01
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_0c9_5543

    ld h, c
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_0c9_553b

    ld [hl], e
    nop
    ld [hl], d
    ld [hl], l
    ld l, [hl]
    ld l, [hl]
    ld l, c

jr_0c9_54d9:
    ld l, [hl]
    ld h, a
    jr nz, jr_0c9_5543

    ld [hl], d
    ld l, a
    ld l, l
    jr nz, jr_0c9_5556

    ld l, b
    ld h, l
    nop
    ld [hl], l
    ld [hl], b
    ld [hl], b
    ld h, l
    ld [hl], d
    jr nz, @+$79

jr_0c9_54ec:
    ld h, c

jr_0c9_54ed:
    ld [hl], h
    ld h, l
    ld [hl], d
    nop
    ld [hl], b
    ld h, c
    ld [hl], e
    ld [hl], e
    ld h, c
    ld h, a
    ld h, l
    ld l, $01

jr_0c9_54fa:
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_0c9_5576

    ld l, a
    ld l, l
    ld h, l
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    nop
    ld h, c
    ld [hl], h

jr_0c9_550e:
    jr nz, jr_0c9_5584

    ld l, b
    ld h, l
    jr nz, jr_0c9_5576

jr_0c9_5514:
    ld h, c
    ld h, e

jr_0c9_5516:
    ld l, e
    ld l, $01
    ld d, h
    ld l, b
    ld h, l
    jr nz, @+$64

    ld h, c
    ld [hl], h
    ld [hl], h
    ld h, l
    ld [hl], d
    ld a, c
    jr nz, jr_0c9_558f

    ld [hl], e
    nop
    ld [hl], b

jr_0c9_5529:
    ld [hl], l
    ld l, h
    ld l, h
    ld h, l
    ld h, h
    jr nz, @+$71

    ld [hl], l
    ld [hl], h
    ld l, $01
    ld c, c

jr_0c9_5535:
    daa
    db $76
    ld h, l
    jr nz, jr_0c9_55a1

    ld l, a

jr_0c9_553b:
    ld [hl], h
    jr nz, jr_0c9_55b2

    ld l, a
    jr nz, jr_0c9_55a8

    ld h, l
    ld [hl], h

jr_0c9_5543:
    nop
    ld [hl], b
    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    jr nz, jr_0c9_55bf

    ld l, a
    jr nz, jr_0c9_55c2

    ld l, b
    ld h, l
    nop
    ld h, l
    ld l, h
    ld h, l
    db $76
    ld h, c

jr_0c9_5556:
    ld [hl], h
    ld l, a
    ld [hl], d
    ld l, $01
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, @+$70

    ld l, a
    jr nz, @+$70

    ld h, l
    ld h, l
    ld h, h
    nop
    ld [hl], h
    ld l, a
    jr nz, jr_0c9_55d6

    ld l, a
    jr nz, jr_0c9_55d6

    ld l, a
    ld [hl], a
    ld l, [hl]
    ld [hl], e

jr_0c9_5576:
    ld [hl], h
    ld h, c
    ld l, c
    ld [hl], d
    ld [hl], e
    nop
    ld l, [hl]
    ld l, a
    ld [hl], a
    ld l, $01
    ld c, c
    ld [hl], h
    daa

jr_0c9_5584:
    ld [hl], e
    jr nz, jr_0c9_55fe

    ld h, l
    ld l, h
    ld h, h
    ld h, l
    ld h, h
    jr nz, jr_0c9_55ef

    ld l, [hl]

jr_0c9_558f:
    ld h, h
    nop
    ld h, h
    ld l, a
    ld h, l
    ld [hl], e
    jr nz, jr_0c9_5605

    ld l, a
    ld [hl], h
    jr nz, jr_0c9_560a

    ld [hl], b
    ld h, l
    ld l, [hl]
    ld l, $01
    ld b, c

jr_0c9_55a1:
    jr nz, jr_0c9_5613

    ld l, c
    ld h, e
    ld [hl], h
    ld [hl], l
    ld [hl], d

jr_0c9_55a8:
    ld h, l
    jr nz, jr_0c9_561a

    ld h, [hl]
    jr nz, @+$63

    ld l, [hl]
    nop
    ld h, l
    ld h, c

jr_0c9_55b2:
    ld h, a
    ld l, h
    ld h, l
    jr nz, jr_0c9_5620

    ld [hl], e
    jr nz, jr_0c9_561d

    ld h, c
    ld [hl], d
    db $76
    ld h, l
    ld h, h

jr_0c9_55bf:
    jr nz, jr_0c9_562a

    ld l, [hl]

jr_0c9_55c2:
    nop
    ld h, c
    jr nz, @+$74

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, jr_0c9_5634

    ld l, a
    ld l, h
    ld l, h
    ld l, a
    ld [hl], a
    ld l, $01
    ld b, c
    jr nz, @+$72

jr_0c9_55d6:
    ld l, c
    ld h, e
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld h, l
    jr nz, jr_0c9_564d

    ld h, [hl]
    jr nz, jr_0c9_5642

    jr nz, jr_0c9_565a

    ld l, a
    ld l, h
    ld h, [hl]
    nop
    ld l, c
    ld [hl], e
    jr nz, @+$65

    ld h, c
    ld [hl], d
    db $76
    ld h, l

jr_0c9_55ef:
    ld h, h
    jr nz, jr_0c9_565b

    ld l, [hl]
    jr nz, jr_0c9_5656

    nop
    ld [hl], d
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, @+$6a

    ld l, a

jr_0c9_55fe:
    ld l, h
    ld l, h
    ld l, a
    ld [hl], a
    ld l, $01
    ld b, c

jr_0c9_5605:
    jr nz, jr_0c9_5674

    ld h, l
    ld h, h
    ld h, c

jr_0c9_560a:
    ld l, h
    jr nz, jr_0c9_5676

    ld [hl], e
    jr nz, jr_0c9_5679

    ld l, [hl]
    nop
    ld [hl], b

jr_0c9_5613:
    ld l, h
    ld h, c
    ld h, e
    ld h, l
    ld l, $01
    ld d, h

jr_0c9_561a:
    ld l, b
    ld h, l
    ld [hl], d

jr_0c9_561d:
    ld h, l
    daa
    ld [hl], e

jr_0c9_5620:
    jr nz, jr_0c9_5683

    jr nz, jr_0c9_5697

    ld [hl], c
    ld [hl], l
    ld h, c
    ld [hl], d
    ld h, l
    nop

jr_0c9_562a:
    ld l, b
    ld l, a
    ld l, h
    ld h, l
    ld l, $01
    ld c, c
    jr nz, jr_0c9_5696

    ld h, c

jr_0c9_5634:
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_0c9_56ae

    ld [hl], e
    ld h, l
    jr nz, jr_0c9_56b1

    ld l, b
    ld h, l
    nop
    ld h, e
    ld [hl], d

jr_0c9_5642:
    ld h, c
    ld l, [hl]
    ld l, e
    jr nz, jr_0c9_56a9

    ld h, l
    ld h, e
    ld h, c
    ld [hl], l
    ld [hl], e
    ld h, l

jr_0c9_564d:
    jr nz, jr_0c9_56be

    ld h, [hl]
    nop
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_0c9_56c9

jr_0c9_5656:
    ld [hl], h
    ld h, c
    ld [hl], h
    ld [hl], l

jr_0c9_565a:
    ld h, l

jr_0c9_565b:
    ld l, $01
    ld b, d
    ld h, c
    ld [hl], d
    ld [hl], d
    ld a, c
    ld l, $2e
    ld l, $01
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_0c9_56d0

    jr nz, jr_0c9_56d9

    ld h, l
    ld a, b
    ld h, c

jr_0c9_5674:
    ld h, a
    ld l, a

jr_0c9_5676:
    ld l, [hl]
    ld h, c
    ld l, h

jr_0c9_5679:
    nop
    ld l, b
    ld l, a
    ld l, h
    ld h, l
    ld l, $01
    ld b, c
    jr nz, jr_0c9_56eb

jr_0c9_5683:
    ld l, a
    ld l, h
    ld h, l
    jr nz, jr_0c9_56f7

    ld [hl], b
    ld h, l
    ld l, [hl]
    ld [hl], e
    jr nz, jr_0c9_56ef

    ld l, [hl]
    ld h, h
    jr nz, jr_0c9_56fb

    nop
    ld h, e
    ld h, c
    ld l, [hl]

jr_0c9_5696:
    daa

jr_0c9_5697:
    ld [hl], h
    jr nz, @+$72

    ld h, c
    ld [hl], e
    ld [hl], e
    jr nz, jr_0c9_5708

    ld [hl], h
    ld l, $01
    ld d, a
    ld l, c
    ld l, h
    ld l, h
    jr nz, @+$7b

    ld l, a

jr_0c9_56a9:
    ld [hl], l
    jr nz, jr_0c9_571c

    ld [hl], l
    ld [hl], h

jr_0c9_56ae:
    jr nz, @+$76

    ld l, b

jr_0c9_56b1:
    ld h, l
    nop
    ld h, [hl]
    ld l, h
    ld h, c
    ld l, l
    ld h, l
    ld [hl], h
    ld l, b
    ld [hl], d
    ld l, a
    ld [hl], a
    ld h, l

jr_0c9_56be:
    ld [hl], d
    jr nz, jr_0c9_5725

    ld l, a
    ld [hl], a
    ld l, [hl]
    ccf
    nop
    jr nz, @+$5b

    ld h, l

jr_0c9_56c9:
    ld [hl], e
    jr nz, jr_0c9_571a

    ld l, a
    jr nz, jr_0c9_56d0

    ld c, c

jr_0c9_56d0:
    ld [hl], h
    jr nz, jr_0c9_573f

    ld l, a
    ld l, a
    ld l, e
    ld [hl], e
    jr nz, @+$6e

jr_0c9_56d9:
    ld l, c
    ld l, e
    ld h, l
    nop
    ld h, c
    jr nz, jr_0c9_5748

    ld l, a
    ld l, a
    ld l, e
    ld l, $01
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0c9_574c

jr_0c9_56eb:
    jr nz, jr_0c9_575d

    ld l, a
    ld [hl], a

jr_0c9_56ef:
    ld h, l
    ld [hl], d
    nop
    ld h, a
    ld h, l
    ld l, [hl]
    ld h, l
    ld [hl], d

jr_0c9_56f7:
    ld h, c
    ld [hl], h
    ld l, a
    ld [hl], d

jr_0c9_56fb:
    inc l
    jr nz, jr_0c9_5760

    ld [hl], l
    ld [hl], h
    jr nz, jr_0c9_5766

    ld l, a
    ld h, l
    ld [hl], e
    nop
    ld l, [hl]
    ld l, a

jr_0c9_5708:
    ld [hl], h
    jr nz, jr_0c9_577e

    ld h, l
    ld h, l
    ld l, l
    jr nz, jr_0c9_5784

    ld l, a
    jr nz, jr_0c9_578a

    ld l, a
    ld [hl], d
    ld l, e
    ld l, $01
    ld b, l
    ld l, [hl]

jr_0c9_571a:
    ld [hl], d
    ld l, c

jr_0c9_571c:
    ld h, e
    ld l, a
    ld l, $2e
    ld l, $01
    ld c, c
    jr nz, jr_0c9_5788

jr_0c9_5725:
    ld h, c
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_0c9_5797

    ld h, l
    ld h, c
    db $76
    ld h, l
    jr nz, @+$45

    ld l, b
    ld [hl], d
    ld l, c
    ld [hl], e
    nop
    ld h, c
    ld l, h
    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $5401
    ld l, b

jr_0c9_573f:
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_0c9_57a7

    jr nz, @+$6d

jr_0c9_5748:
    ld h, l
    ld a, c
    jr nz, @+$6b

jr_0c9_574c:
    ld l, [hl]
    nop
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_0c9_57b6

    ld [hl], l
    ld [hl], b
    ld l, $01
    ld d, e
    ld l, c
    ld l, l
    ld l, c
    ld l, h
    ld h, c

jr_0c9_575d:
    ld [hl], d
    jr nz, jr_0c9_57d6

jr_0c9_5760:
    ld l, c
    ld h, l
    ld [hl], a
    jr nz, @+$63

    ld [hl], e

jr_0c9_5766:
    jr nz, jr_0c9_57dc

    ld l, b
    ld h, l
    nop
    ld l, a
    ld l, [hl]
    ld h, l
    jr nz, jr_0c9_57d6

    ld [hl], d
    ld l, a
    ld l, l
    jr nz, jr_0c9_57e4

    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    nop
    ld [hl], a
    ld l, c
    ld l, [hl]
    ld h, h

jr_0c9_577e:
    ld l, a
    ld [hl], a
    ld [hl], e
    ld l, $01
    ld c, c

jr_0c9_5784:
    ld [hl], h
    jr nz, @+$6e

    ld l, a

jr_0c9_5788:
    ld l, a
    ld l, e

jr_0c9_578a:
    ld [hl], e
    jr nz, jr_0c9_57f9

    ld l, c
    ld l, e
    ld h, l
    jr nz, @+$63

    nop
    ld h, e
    ld l, h
    ld l, a
    ld h, e

jr_0c9_5797:
    ld l, e
    jr nz, jr_0c9_57fe

    ld l, c
    ld h, c
    ld l, h
    ld l, $01
    ld d, e
    ld l, a
    ld l, l
    ld h, l
    jr nz, jr_0c9_5810

    ld l, c
    ld l, [hl]

jr_0c9_57a7:
    ld h, h
    jr nz, jr_0c9_5819

    ld h, [hl]
    jr nz, jr_0c9_580e

    nop
    ld h, e
    ld l, a
    ld h, h
    ld h, l
    ld l, $2e
    ld l, $01

jr_0c9_57b6:
    ld b, c
    jr nz, jr_0c9_57e0

    inc sp
    daa
    jr nz, @+$64

    ld h, c
    ld l, h
    ld l, h
    ld l, $01
    ld b, c
    jr nz, jr_0c9_57ec

    ld [hl], $27
    jr nz, @+$64

    ld h, c
    ld l, h
    ld l, h
    ld l, $01
    ld b, c
    jr nz, jr_0c9_57f8

    add hl, sp
    daa
    jr nz, jr_0c9_5837

    ld h, c

jr_0c9_57d6:
    ld l, h
    ld l, h
    ld l, $01
    ld c, c
    ld [hl], h

jr_0c9_57dc:
    daa
    ld [hl], e
    jr nz, @+$64

jr_0c9_57e0:
    ld [hl], d
    ld l, a
    ld l, e
    ld h, l

jr_0c9_57e4:
    ld l, [hl]
    ld l, $01
    ld b, c
    jr nz, jr_0c9_584e

    ld h, c
    ld [hl], d

jr_0c9_57ec:
    ld [hl], h
    ld h, d
    ld l, a
    ld h, c
    ld [hl], d
    ld h, h
    ld l, $01
    ld d, [hl]
    ld l, a
    ld l, c
    ld h, e

jr_0c9_57f8:
    ld h, l

jr_0c9_57f9:
    ld [hl], e
    jr nz, jr_0c9_585f

    ld h, c
    ld l, [hl]

jr_0c9_57fe:
    jr nz, jr_0c9_5862

    ld h, l
    jr nz, jr_0c9_586b

    ld h, l
    ld h, c
    ld [hl], d
    ld h, h
    nop
    ld h, [hl]
    ld [hl], d
    ld l, a
    ld l, l
    jr nz, jr_0c9_5882

jr_0c9_580e:
    ld l, b
    ld h, l

jr_0c9_5810:
    jr nz, @+$71

    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    jr nz, jr_0c9_588b

    ld l, c

jr_0c9_5819:
    ld h, h
    ld h, l
    nop
    ld l, a
    ld h, [hl]
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_0c9_5888

    ld l, a
    ld l, a
    ld [hl], d
    ld l, $01
    ld b, c
    jr nz, jr_0c9_5890

    ld l, a
    ld [hl], d
    ld l, l
    ld l, c
    ld [hl], h
    ld l, a
    ld [hl], d
    ld a, c
    jr nz, jr_0c9_58a9

    ld l, e

jr_0c9_5837:
    ld h, l
    ld [hl], h
    ld h, e
    ld l, b
    ld l, $00
    ld d, a
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_0c9_58bc

    ld l, a
    ld [hl], l
    jr nz, jr_0c9_58bb

    ld h, c
    ld l, e
    ld h, l
    jr nz, @+$6b

    ld [hl], h
    ccf

jr_0c9_584e:
    nop
    jr nz, jr_0c9_58aa

    ld h, l
    ld [hl], e
    jr nz, jr_0c9_58a3

    ld l, a
    jr nz, jr_0c9_5859

    ld c, [hl]

jr_0c9_5859:
    ld l, a
    jr nz, jr_0c9_58d3

    ld h, c
    ld [hl], h
    ld h, l

jr_0c9_585f:
    ld [hl], d
    jr nz, jr_0c9_58cb

jr_0c9_5862:
    ld [hl], e
    jr nz, jr_0c9_58d1

    ld h, l
    ld h, [hl]
    ld [hl], h
    ld l, $01
    ld c, c

jr_0c9_586b:
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0c9_58d4

    ld [hl], l
    ld [hl], e
    ld [hl], h
    ld a, c
    jr nz, @+$63

    ld l, [hl]
    ld h, h
    jr nz, @+$65

    ld h, c
    ld l, [hl]
    nop
    ld l, [hl]
    ld l, a
    ld [hl], h
    jr nz, jr_0c9_58e4

jr_0c9_5882:
    ld h, l
    jr nz, jr_0c9_58fa

    ld [hl], e
    ld h, l
    ld h, h

jr_0c9_5888:
    ld l, $01
    ld d, h

jr_0c9_588b:
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa

jr_0c9_5890:
    ld [hl], e
    jr nz, @+$63

    jr nz, @+$72

    ld h, c
    ld l, [hl]
    ld h, l
    ld l, h
    jr nz, jr_0c9_5912

    ld l, c
    ld [hl], h
    ld l, b
    nop
    ld l, [hl]
    ld [hl], l
    ld l, l
    ld h, d

jr_0c9_58a3:
    ld h, l
    ld [hl], d
    jr nz, jr_0c9_5912

    ld h, l
    ld a, c

jr_0c9_58a9:
    ld [hl], e

jr_0c9_58aa:
    ld l, $01
    ld d, a
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_0c9_592b

    ld l, a
    ld [hl], l
    jr nz, jr_0c9_5926

    ld [hl], l
    ld [hl], e
    ld l, b
    jr nz, jr_0c9_592f

jr_0c9_58bb:
    ld l, b

jr_0c9_58bc:
    ld h, l
    nop
    ld l, e
    ld h, l
    ld a, c
    ld [hl], e
    ccf
    jr nz, jr_0c9_58e5

    ld e, c
    ld h, l
    ld [hl], e
    jr nz, @+$50

    ld l, a

jr_0c9_58cb:
    jr nz, jr_0c9_58ce

    ld c, c

jr_0c9_58ce:
    ld [hl], h
    daa
    ld [hl], e

jr_0c9_58d1:
    jr nz, @+$6a

jr_0c9_58d3:
    ld h, l

jr_0c9_58d4:
    ld l, h
    ld h, h
    jr nz, jr_0c9_594c

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, jr_0c9_5940

    ld a, c
    nop
    ld [hl], e
    ld l, a
    ld l, l
    ld h, l

jr_0c9_58e4:
    ld [hl], h

jr_0c9_58e5:
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $01
    ld d, a
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_0c9_596a

    ld l, a
    ld [hl], l
    jr nz, @+$72

    ld [hl], l
    ld [hl], h
    jr nz, jr_0c9_5950

    ld b, c

jr_0c9_58fa:
    ld d, h
    ld b, l
    ld d, d
    nop
    ld [hl], h
    ld l, a
    jr nz, jr_0c9_5976

    ld l, b
    ld h, l
    jr nz, @+$67

    ld l, l
    ld [hl], b
    ld [hl], h
    ld a, c
    jr nz, jr_0c9_596e

    ld l, a
    ld [hl], h
    ld [hl], h
    ld l, h
    ld h, l
    ccf

jr_0c9_5912:
    nop
    jr nz, jr_0c9_596e

    ld h, l
    ld [hl], e
    jr nz, jr_0c9_5967

    ld l, a
    jr nz, jr_0c9_591d

    ld d, a

jr_0c9_591d:
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_0c9_599b

    ld l, a
    ld [hl], l
    jr nz, jr_0c9_5996

jr_0c9_5926:
    ld [hl], l
    ld [hl], h
    jr nz, jr_0c9_597f

    ld c, l

jr_0c9_592b:
    ld b, d
    ld [hl-], a
    nop
    ld [hl], h

jr_0c9_592f:
    ld l, a
    jr nz, jr_0c9_59a6

    ld l, b
    ld h, l
    jr nz, jr_0c9_599b

    ld l, l
    ld [hl], b
    ld [hl], h
    ld a, c
    jr nz, jr_0c9_599e

    ld l, a
    ld [hl], h
    ld [hl], h
    ld l, h

jr_0c9_5940:
    ld h, l
    ccf
    nop
    jr nz, jr_0c9_599e

    ld h, l
    ld [hl], e
    jr nz, jr_0c9_5997

    ld l, a
    jr nz, jr_0c9_594d

jr_0c9_594c:
    ld d, a

jr_0c9_594d:
    ld l, c
    ld l, h
    ld l, h

jr_0c9_5950:
    jr nz, jr_0c9_59cb

    ld l, a
    ld [hl], l
    jr nz, jr_0c9_59c6

    ld [hl], l
    ld [hl], h
    jr nz, jr_0c9_59af

    ld c, l
    ld b, d
    inc [hl]
    nop
    ld [hl], h
    ld l, a
    jr nz, jr_0c9_59d6

    ld l, b
    ld h, l
    jr nz, jr_0c9_59cb

    ld l, l

jr_0c9_5967:
    ld [hl], b
    ld [hl], h
    ld a, c

jr_0c9_596a:
    jr nz, @+$64

    ld l, a
    ld [hl], h

jr_0c9_596e:
    ld [hl], h
    ld l, h
    ld h, l
    ccf
    nop
    jr nz, @+$5b

    ld h, l

jr_0c9_5976:
    ld [hl], e
    jr nz, jr_0c9_59c7

    ld l, a
    jr nz, jr_0c9_597d

    ld d, h

jr_0c9_597d:
    ld l, b
    ld h, l

jr_0c9_597f:
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_0c9_5986

    ld e, c

jr_0c9_5986:
    ld l, a
    ld [hl], l
    jr nz, jr_0c9_59f8

    ld h, l
    ld h, l
    ld h, h
    jr nz, jr_0c9_59f0

    jr nz, @+$65

    ld l, a
    ld l, [hl]
    ld [hl], h
    ld h, c
    ld l, c

jr_0c9_5996:
    ld l, [hl]

jr_0c9_5997:
    ld h, l
    ld [hl], d
    nop
    ld [hl], h

jr_0c9_599b:
    ld l, a
    jr nz, jr_0c9_5a0d

jr_0c9_599e:
    ld h, d
    ld [hl], h
    ld h, c
    ld l, c
    ld l, [hl]
    jr nz, jr_0c9_5a0e

    ld [hl], h

jr_0c9_59a6:
    ld l, $01
    ld b, c
    jr nz, jr_0c9_5a11

    ld h, c
    ld [hl], l
    ld h, e
    ld h, l

jr_0c9_59af:
    ld [hl], h
    ld l, $01
    ld d, e
    ld l, a
    ld l, l
    ld h, l
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0c9_5a26

    ld [hl], e
    jr nz, @+$79

    ld [hl], d
    ld l, c
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, [hl]

jr_0c9_59c6:
    nop

jr_0c9_59c7:
    ld l, a
    ld l, [hl]
    jr nz, jr_0c9_5a3f

jr_0c9_59cb:
    ld l, b
    ld h, l
    jr nz, jr_0c9_5a46

    ld h, c
    ld l, h
    ld l, h
    ld l, $01
    ld d, a
    ld h, c

jr_0c9_59d6:
    ld [hl], h
    ld h, l
    ld [hl], d
    dec a
    ld sp, $5220
    ld h, l
    ld h, h
    dec a
    ld [hl-], a
    nop
    ld d, b
    ld [hl], l
    ld [hl], d
    ld [hl], b
    ld l, h
    ld h, l
    dec a
    inc sp
    jr nz, jr_0c9_5a33

    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]

jr_0c9_59f0:
    dec a
    inc [hl]
    ld bc, $6f53
    ld l, l
    ld h, l
    ld [hl], h

jr_0c9_59f8:
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0c9_5a67

    ld [hl], e
    jr nz, jr_0c9_5a78

    ld [hl], d
    ld l, c
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, [hl]
    nop
    ld l, a
    ld l, [hl]
    jr nz, @+$76

    ld l, b

jr_0c9_5a0d:
    ld h, l

jr_0c9_5a0e:
    jr nz, jr_0c9_5a87

    ld h, c

jr_0c9_5a11:
    ld l, h
    ld l, h
    ld l, $01
    ld sp, $322b
    dec a
    inc sp
    inc l
    jr nz, jr_0c9_5a50

    dec hl
    inc [hl]
    dec a
    scf
    inc l
    jr nz, jr_0c9_5a56

    dec hl
    inc [hl]

jr_0c9_5a26:
    dec a
    ld [hl], $00
    ld [hl], $2b
    scf
    dec a
    ld sp, $2c33
    jr nz, @+$33

    inc sp

jr_0c9_5a33:
    dec hl
    inc sp
    dec a
    ld sp, $0136
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, @+$72

jr_0c9_5a3f:
    ld l, a
    ld l, c
    ld [hl], e
    ld l, a
    ld l, [hl]
    jr nz, jr_0c9_5aad

jr_0c9_5a46:
    ld h, c
    ld [hl], e
    ld hl, $5401
    ld l, b
    ld h, l
    jr nz, jr_0c9_5abc

    ld l, c

jr_0c9_5a50:
    ld a, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0c9_5ac9

jr_0c9_5a56:
    ld h, l
    ld h, l
    ld l, l
    ld [hl], e
    jr nz, jr_0c9_5ad0

    ld l, a
    nop
    ld l, b
    ld h, c
    db $76
    ld h, l
    jr nz, jr_0c9_5aca

    ld h, c
    ld l, c
    ld l, h

jr_0c9_5a67:
    ld h, l
    ld h, h
    ld l, $00
    ld c, c
    ld [hl], h
    jr nz, jr_0c9_5ad3

    ld l, c
    ld [hl], e
    ld h, c
    ld [hl], b
    ld [hl], b
    ld h, l
    ld h, c
    ld [hl], d
    ld h, l

jr_0c9_5a78:
    ld h, h
    ld l, $01
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0c9_5af6

    ld [hl], e
    ld h, l
    ld l, h
    ld h, l
    ld [hl], e
    ld [hl], e

jr_0c9_5a87:
    ld l, $00
    ld b, e
    ld l, b
    ld [hl], d
    ld l, c
    ld [hl], e
    jr nz, jr_0c9_5af3

    ld h, c
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_0c9_5afe

    ld h, c
    ld l, [hl]
    ld h, h
    ld l, h
    ld h, l
    nop
    ld h, e
    ld l, b
    ld h, l
    ld l, l
    ld l, c
    ld h, e
    ld h, c
    ld l, h
    ld [hl], e
    ld l, $01
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa

jr_0c9_5aad:
    ld [hl], e
    jr nz, jr_0c9_5ab1

    ld b, d

jr_0c9_5ab1:
    ld [hl], l
    ld [hl], h
    jr nz, jr_0c9_5af8

    ld l, b
    ld [hl], d
    ld l, c
    ld [hl], e
    jr nz, jr_0c9_5b1e

    ld h, c

jr_0c9_5abc:
    ld l, [hl]
    daa
    ld [hl], h
    nop
    ld l, b
    ld h, c
    ld l, [hl]
    ld h, h
    ld l, h
    ld h, l
    jr nz, jr_0c9_5b2b

    ld l, b

jr_0c9_5ac9:
    ld h, l

jr_0c9_5aca:
    ld l, l
    ld l, c
    ld h, e
    ld h, c
    ld l, h
    ld [hl], e

jr_0c9_5ad0:
    ld l, $01
    ld b, c

jr_0c9_5ad3:
    jr nz, jr_0c9_5b47

    ld l, a
    ld [hl], a
    jr nz, jr_0c9_5b48

    ld h, [hl]
    jr nz, jr_0c9_5b4e

    ld h, l
    ld h, h
    jr nz, jr_0c9_5b42

    ld l, a
    ld l, a
    ld l, e
    ld [hl], e
    ld l, $01
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_0c9_5b5e

    ld l, [hl]
    ld h, l
    jr nz, jr_0c9_5b6a

jr_0c9_5af3:
    ld l, b
    ld l, c
    ld [hl], h

jr_0c9_5af6:
    ld h, l
    nop

jr_0c9_5af8:
    ld h, d
    ld l, a
    ld l, a
    ld l, e
    ld l, $20

jr_0c9_5afe:
    ld d, a
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_0c9_5b7d

    ld l, a
    ld [hl], l
    nop
    ld [hl], h
    ld h, c
    ld l, e
    ld h, l
    jr nz, jr_0c9_5b76

    ld [hl], h
    ccf
    jr nz, jr_0c9_5b31

    ld e, c
    ld h, l
    ld [hl], e
    jr nz, jr_0c9_5b64

    ld l, a
    jr nz, jr_0c9_5b1a

    ld c, [hl]

jr_0c9_5b1a:
    ld l, a
    ld [hl], a
    jr nz, jr_0c9_5b7f

jr_0c9_5b1e:
    jr nz, jr_0c9_5b82

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_0c9_5b8e

    ld [hl], e
    nop
    ld l, l
    ld l, c
    ld [hl], e
    ld [hl], e

jr_0c9_5b2b:
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $01
    ld c, c

jr_0c9_5b31:
    jr nz, jr_0c9_5baa

    ld l, a
    ld l, [hl]
    ld h, h
    ld h, l
    ld [hl], d
    jr nz, jr_0c9_5bb1

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    nop
    ld [hl], h
    ld l, b
    ld h, l

jr_0c9_5b42:
    jr nz, jr_0c9_5bb1

    ld l, c
    ld [hl], e
    ld [hl], e

jr_0c9_5b47:
    ld l, c

jr_0c9_5b48:
    ld l, [hl]
    ld h, a
    nop
    ld h, d
    ld l, a
    ld l, a

jr_0c9_5b4e:
    ld l, e
    jr nz, jr_0c9_5bba

    ld [hl], e
    ld l, $2e
    ld l, $01
    ld b, h
    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_0c9_5bbf

    ld l, a
    ld l, h

jr_0c9_5b5e:
    ld l, h
    ld h, l
    ld h, e
    ld [hl], h
    ld [hl], e
    nop

jr_0c9_5b64:
    ld l, c
    ld l, [hl]
    ld [hl], e
    ld l, c
    ld h, h
    ld h, l

jr_0c9_5b6a:
    ld l, $20
    ld d, h
    ld l, b
    ld h, l
    jr nz, @+$64

    ld h, c
    ld [hl], h
    ld l, b
    nop
    ld [hl], h

jr_0c9_5b76:
    ld l, a
    ld [hl], a
    ld h, l
    ld l, h
    jr nz, @+$6b

    ld [hl], e

jr_0c9_5b7d:
    jr nz, jr_0c9_5be3

jr_0c9_5b7f:
    ld l, c
    ld [hl], d
    ld [hl], h

jr_0c9_5b82:
    ld a, c
    ld l, $01
    ld c, [hl]
    ld l, a
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0c9_5bf0

jr_0c9_5b8e:
    ld [hl], l
    ld [hl], h
    jr nz, jr_0c9_5bff

    ld a, c
    ld [hl], e
    ld h, l
    ld l, h
    ld h, [hl]
    nop
    ld l, c
    ld [hl], e
    jr nz, jr_0c9_5c0e

    ld h, l
    ld h, [hl]
    ld l, h
    ld h, l
    ld h, e
    ld [hl], h
    ld h, l
    ld h, h
    jr nz, jr_0c9_5c0f

    ld l, [hl]
    nop
    ld [hl], h
    ld l, b

jr_0c9_5baa:
    ld h, l
    jr nz, jr_0c9_5c1a

    ld l, c
    ld [hl], d
    ld [hl], d
    ld l, a

jr_0c9_5bb1:
    ld [hl], d
    ld l, $01
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa

jr_0c9_5bba:
    ld [hl], e
    jr nz, jr_0c9_5c30

    ld l, a
    ld l, l

jr_0c9_5bbf:
    ld h, l
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    nop
    ld [hl], e
    ld l, b
    ld l, c
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0c9_5c37

    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_0c9_5c36

    ld [hl], l
    ld [hl], h
    nop
    ld c, c
    jr nz, jr_0c9_5c3d

    ld h, c
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_0c9_5c52

    ld h, l
    ld h, c
    ld h, e

jr_0c9_5be3:
    ld l, b
    jr nz, jr_0c9_5c4f

    ld [hl], h
    ld l, $01
    ld d, e
    ld l, a
    ld l, l
    ld h, l
    ld [hl], h
    ld l, b
    ld l, c

jr_0c9_5bf0:
    ld l, [hl]
    ld h, a
    jr nz, jr_0c9_5c5d

    ld [hl], e
    nop
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ld h, e
    ld l, e
    jr nz, jr_0c9_5c65

    ld h, l
    ld [hl], d

jr_0c9_5bff:
    ld h, l
    ld l, $01
    ld d, a
    ld h, c
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_0c9_5c7c

    ld h, l
    ld [hl], h
    ld [hl], h
    ld l, h
    ld h, l

jr_0c9_5c0e:
    ld [hl], e

jr_0c9_5c0f:
    nop
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_0c9_5c77

    ld l, [hl]
    ld h, h
    jr nz, jr_0c9_5c63

jr_0c9_5c1a:
    jr nz, jr_0c9_5c7f

    ld h, c
    ld l, [hl]
    daa
    ld [hl], h
    nop
    ld [hl], b
    ld h, c
    ld [hl], e
    ld [hl], e
    jr nz, jr_0c9_5c90

    ld [hl], h
    ld l, $01
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa

jr_0c9_5c30:
    ld [hl], e
    jr nz, jr_0c9_5ca1

    ld l, a
    jr nz, jr_0c9_5ca1

jr_0c9_5c36:
    ld h, l

jr_0c9_5c37:
    ld a, c
    jr nz, jr_0c9_5ca2

    ld l, a
    ld l, h
    ld h, l

jr_0c9_5c3d:
    ld l, $01
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, @+$63

    jr nz, jr_0c9_5cb3

    ld h, c
    ld [hl], d
    ld h, a
    ld h, l
    nop
    ld [hl], a
    ld h, c
    ld [hl], h

jr_0c9_5c4f:
    ld h, l
    ld [hl], d
    ld [hl], h

jr_0c9_5c52:
    ld h, c
    ld l, [hl]
    ld l, e
    ld l, $01
    ld b, c
    jr nz, jr_0c9_5cc2

    ld l, a
    ld l, h
    ld h, l

jr_0c9_5c5d:
    jr nz, jr_0c9_5cce

    ld [hl], b
    ld h, l
    ld l, [hl]
    ld [hl], e

jr_0c9_5c63:
    ld l, $01

jr_0c9_5c65:
    ld c, c
    ld [hl], h
    jr nz, jr_0c9_5cd5

    ld l, a
    ld l, a
    ld l, e
    ld [hl], e
    jr nz, @+$6e

    ld l, c
    ld l, e
    ld h, l
    jr nz, jr_0c9_5cd5

    nop
    ld [hl], b
    ld l, h

jr_0c9_5c77:
    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_0c9_5cee

jr_0c9_5c7c:
    ld l, a
    ld l, a
    ld [hl], h

jr_0c9_5c7f:
    ld l, $01
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0c9_5cfe

    ld l, c
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ld h, h
    ld l, $01

jr_0c9_5c90:
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_0c9_5cfa

    jr nz, jr_0c9_5d03

    ld h, c
    ld l, [hl]
    ld h, a
    ld l, c
    ld l, [hl]
    ld h, a

jr_0c9_5ca1:
    nop

jr_0c9_5ca2:
    ld h, d
    ld h, c
    ld h, a
    ld l, $20
    ld c, [hl]
    ld l, a
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0c9_5d25

    ld [hl], e
    ld h, l
    ld h, [hl]

jr_0c9_5cb3:
    ld [hl], l
    ld l, h
    nop
    ld l, c
    ld l, [hl]
    ld [hl], e
    ld l, c
    ld h, h
    ld h, l
    ld l, $01
    ld d, h
    ld l, b
    ld h, l
    ld a, c

jr_0c9_5cc2:
    jr nz, jr_0c9_5d25

    ld [hl], d
    ld h, l
    jr nz, jr_0c9_5d29

    ld l, h
    ld l, h
    jr nz, jr_0c9_5d43

    ld h, l
    ld [hl], h

jr_0c9_5cce:
    nop
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_0c9_5d49

    ld [hl], e

jr_0c9_5cd5:
    ld h, l
    ld l, h
    ld h, l
    ld [hl], e
    ld [hl], e
    ld l, $01
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_0c9_5d46

    jr nz, jr_0c9_5d53

    ld h, l
    db $76
    ld h, l
    ld [hl], d
    ld l, $00
    ld d, a

jr_0c9_5cee:
    ld l, c
    ld l, h
    ld l, h
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    jr nz, jr_0c9_5d64

    ld l, a
    db $76
    ld h, l

jr_0c9_5cfa:
    jr nz, jr_0c9_5d65

    ld [hl], h
    ccf

jr_0c9_5cfe:
    nop
    jr nz, jr_0c9_5d5a

    ld h, l
    ld [hl], e

jr_0c9_5d03:
    jr nz, jr_0c9_5d53

    ld l, a
    jr nz, jr_0c9_5d09

    ld d, h

jr_0c9_5d09:
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_0c9_5d72

    jr nz, jr_0c9_5d75

    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld l, a
    ld l, [hl]
    ld l, $00
    ld d, a
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_0c9_5d99

    ld l, a
    ld [hl], l
    jr nz, jr_0c9_5d94

    ld [hl], l

jr_0c9_5d25:
    ld [hl], e
    ld l, b
    jr nz, jr_0c9_5d92

jr_0c9_5d29:
    ld [hl], h
    ccf
    nop
    jr nz, jr_0c9_5d87

    ld h, l
    ld [hl], e
    jr nz, @+$50

    ld l, a
    jr nz, jr_0c9_5d36

    ld d, h

jr_0c9_5d36:
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_0c9_5db3

    ld h, c
    ld [hl], e
    jr nz, jr_0c9_5da1

    jr nz, jr_0c9_5db5

    ld l, a

jr_0c9_5d43:
    ld [hl], l
    ld l, [hl]
    ld h, h

jr_0c9_5d46:
    nop
    ld h, [hl]
    ld [hl], d

jr_0c9_5d49:
    ld l, a
    ld l, l
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_0c9_5dc3

    ld l, a
    ld l, a

jr_0c9_5d53:
    ld l, l
    jr nz, jr_0c9_5dc4

    ld h, l
    ld [hl], h
    ld a, b
    ld [hl], h

jr_0c9_5d5a:
    nop
    ld h, h
    ld l, a
    ld l, a
    ld [hl], d
    ld l, $01
    daa
    ld b, l
    ld l, l

jr_0c9_5d64:
    ld h, l

jr_0c9_5d65:
    ld [hl], d
    ld h, a
    ld h, l
    ld l, [hl]
    ld h, e
    ld a, c
    jr nz, jr_0c9_5db2

    ld a, b
    ld l, c
    ld [hl], h
    daa
    nop

jr_0c9_5d72:
    ld d, l
    ld l, [hl]
    ld l, h

jr_0c9_5d75:
    ld l, a
    ld h, e
    ld l, e
    ld h, l
    ld h, h
    jr nz, @+$51

    ld l, [hl]
    ld l, h
    ld a, c
    jr nz, jr_0c9_5dca

    ld l, [hl]
    nop
    ld b, l
    ld l, l
    ld h, l
    ld [hl], d

jr_0c9_5d87:
    ld h, a
    ld h, l
    ld l, [hl]
    ld h, e
    ld a, c
    ld bc, $6854
    ld h, l
    jr nz, jr_0c9_5df7

jr_0c9_5d92:
    ld l, h
    ld h, l

jr_0c9_5d94:
    db $76
    ld h, c
    ld [hl], h
    ld l, a
    ld [hl], d

jr_0c9_5d99:
    jr nz, jr_0c9_5dff

    ld l, a
    ld h, l
    ld [hl], e
    nop
    ld l, [hl]
    ld l, a

jr_0c9_5da1:
    ld [hl], h
    jr nz, jr_0c9_5e1b

    ld l, a
    ld [hl], d
    ld l, e
    ld l, $01
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_0c9_5e20

jr_0c9_5db2:
    ld l, a

jr_0c9_5db3:
    jr nz, jr_0c9_5e29

jr_0c9_5db5:
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a
    nop
    ld h, d
    ld h, c
    ld h, e
    ld l, e
    ld hl, $4c01

jr_0c9_5dc3:
    ld h, l

jr_0c9_5dc4:
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0c9_5e30

    ld l, a

jr_0c9_5dca:
    ld hl, $4801
    ld [hl], l
    ld [hl], d
    ld [hl], d
    ld a, c
    ld hl, $5401
    ld l, b
    ld h, l
    jr nz, jr_0c9_5e3a

    ld h, c
    ld [hl], h
    ld [hl], h
    ld h, l
    ld [hl], d
    ld a, c
    jr nz, jr_0c9_5e49

    ld [hl], e
    nop
    ld [hl], b
    ld [hl], l
    ld l, h
    ld l, h
    ld h, l
    ld h, h
    jr nz, jr_0c9_5e59

    ld [hl], l
    ld [hl], h
    ld l, $01
    ld d, b
    ld l, h
    ld h, l
    ld h, c
    ld [hl], e
    ld h, l
    jr nz, jr_0c9_5e5e

    ld [hl], l

jr_0c9_5df7:
    ld [hl], d
    ld [hl], d
    ld a, c
    ld hl, $4201
    ld h, c
    ld [hl], d

jr_0c9_5dff:
    ld [hl], d
    ld a, c
    ld l, $2e
    ld l, $01
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $01
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_0c9_5e79

    jr nz, jr_0c9_5e8a

    ld l, h

jr_0c9_5e1b:
    ld h, c
    ld [hl], h
    ld h, l
    ld l, $01

jr_0c9_5e20:
    daa
    ld d, [hl]
    ld l, c
    ld h, h
    ld h, l
    ld l, a
    jr nz, jr_0c9_5e6c

    ld h, c

jr_0c9_5e29:
    ld [hl], h
    ld h, c
    jr nz, jr_0c9_5e7f

    ld l, a
    ld l, a
    ld l, l

jr_0c9_5e30:
    daa
    ld bc, $6f53
    ld l, l
    ld h, l
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]

jr_0c9_5e3a:
    ld h, a
    jr nz, @+$6a

    ld h, c
    ld [hl], e
    jr nz, jr_0c9_5ea3

    ld h, l
    ld h, l
    ld l, [hl]
    nop
    ld h, h
    ld [hl], d
    ld h, c
    ld h, a

jr_0c9_5e49:
    ld h, a
    ld h, l
    ld h, h
    jr nz, @+$63

    ld [hl], d
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, jr_0c9_5ec9

    ld l, b
    ld h, l
    nop
    ld [hl], a

jr_0c9_5e59:
    ld h, c
    ld l, h
    ld l, h
    ld l, $01

jr_0c9_5e5e:
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_0c9_5ec8

    jr nz, jr_0c9_5ed9

    ld h, c
    ld l, [hl]
    ld h, l

jr_0c9_5e6c:
    ld l, h
    ld l, $00
    ld d, a
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_0c9_5eee

    ld l, a
    ld [hl], l
    jr nz, jr_0c9_5ee8

jr_0c9_5e79:
    ld [hl], b
    ld h, l
    ld l, [hl]
    jr nz, jr_0c9_5ee7

    ld [hl], h

jr_0c9_5e7f:
    ccf
    nop
    jr nz, @+$5b

    ld h, l
    ld [hl], e
    jr nz, jr_0c9_5ed5

    ld l, a
    jr nz, jr_0c9_5e8b

jr_0c9_5e8a:
    ld d, h

jr_0c9_5e8b:
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_0c9_5ef4

    jr nz, jr_0c9_5f08

    ld [hl], a
    ld l, c
    ld [hl], h
    ld h, e
    ld l, b
    ld l, $00
    ld d, a
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_0c9_5f1b

    ld l, a

jr_0c9_5ea3:
    ld [hl], l
    jr nz, jr_0c9_5f16

    ld [hl], l
    ld [hl], e
    ld l, b
    jr nz, jr_0c9_5f14

    ld [hl], h
    ccf
    nop
    jr nz, @+$5b

    ld h, l
    ld [hl], e
    jr nz, jr_0c9_5f02

    ld l, a
    jr nz, jr_0c9_5eb8

    ld b, c

jr_0c9_5eb8:
    jr nz, jr_0c9_5f2a

    ld [hl], d
    ld l, a
    ld l, d
    ld h, l
    ld h, e
    ld [hl], h
    ld l, a
    ld [hl], d
    ld l, $01
    ld b, c
    jr nz, jr_0c9_5f3a

    ld h, e

jr_0c9_5ec8:
    ld [hl], d

jr_0c9_5ec9:
    ld h, l
    ld h, l
    ld l, [hl]
    ld l, $01
    daa
    ld d, l
    ld l, l
    ld h, d
    ld [hl], d
    ld h, l
    ld l, h

jr_0c9_5ed5:
    ld l, h
    ld h, c
    jr nz, jr_0c9_5f22

jr_0c9_5ed9:
    ld l, [hl]
    ld h, e
    ld l, $27
    nop
    daa
    ld b, d
    ld l, c
    ld l, a
    dec l
    ld [hl], a
    ld h, l
    ld h, c
    ld [hl], b

jr_0c9_5ee7:
    ld l, a

jr_0c9_5ee8:
    ld l, [hl]
    jr nz, jr_0c9_5f3b

    ld [hl], d
    nop
    ld c, l

jr_0c9_5eee:
    ld h, c
    ld [hl], h
    ld h, l
    ld [hl], d
    ld l, c
    ld h, c

jr_0c9_5ef4:
    ld l, h
    ld [hl], e
    daa
    ld bc, $4d27
    ld h, c
    cpl
    inc sp
    add hl, sp
    jr nz, jr_0c9_5f43

    ld h, l
    ld [hl], d

jr_0c9_5f02:
    ld h, d
    ld h, l
    ld [hl], d
    ld [hl], l
    ld [hl], e
    daa

jr_0c9_5f08:
    ld bc, $4627
    ld l, c
    cpl
    inc sp
    jr nz, jr_0c9_5f5e

    ld h, l
    ld [hl], b
    ld [hl], h
    ld [hl], l

jr_0c9_5f14:
    ld l, [hl]
    ld h, l

jr_0c9_5f16:
    daa
    ld bc, $4d27
    ld h, c

jr_0c9_5f1b:
    cpl
    ld sp, $3132
    jr nz, jr_0c9_5f69

    ld [hl], l

jr_0c9_5f22:
    ld l, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    daa
    ld bc, $5427

jr_0c9_5f2a:
    dec l
    jr nc, jr_0c9_5f5d

    ld [hl-], a
    jr nz, jr_0c9_5f84

    ld a, c
    ld [hl], d
    ld h, c
    ld l, [hl]
    ld [hl], h
    daa
    ld bc, $4227
    ld l, c

jr_0c9_5f3a:
    ld l, a

jr_0c9_5f3b:
    dec l
    ld [hl], a
    ld h, l
    ld h, c
    ld [hl], b
    ld l, a
    ld l, [hl]
    nop

jr_0c9_5f43:
    ld [hl], d
    ld h, l
    ld [hl], e
    ld h, l
    ld h, c
    ld [hl], d
    ld h, e
    ld l, b
    nop
    ld l, c
    ld l, [hl]
    ld [hl], e
    ld [hl], h
    ld l, c
    ld [hl], h
    ld [hl], l
    ld [hl], h
    ld h, l
    ld l, $00
    ld d, d
    ld h, $44
    jr nz, jr_0c9_5fcf

    ld [hl], h

jr_0c9_5f5d:
    ld h, c

jr_0c9_5f5e:
    ld h, [hl]
    ld h, [hl]
    daa
    ld bc, $6e41
    jr nz, jr_0c9_5fcf

    ld l, [hl]
    ld [hl], h
    ld h, l

jr_0c9_5f69:
    ld [hl], d
    ld h, e
    ld l, a
    ld l, l
    ld l, $20
    ld c, c
    ld [hl], h
    nop
    ld h, h
    ld l, a
    ld h, l
    ld [hl], e
    jr nz, jr_0c9_5fe6

    ld l, a
    ld [hl], h
    jr nz, jr_0c9_5fef

    ld h, l
    ld h, l
    ld l, l
    jr nz, jr_0c9_5ff5

    ld l, a
    nop
    ld h, d

jr_0c9_5f84:
    ld h, l
    jr nz, jr_0c9_5ff6

    ld [hl], b
    ld h, l
    ld [hl], d
    ld h, c
    ld [hl], h
    ld l, c
    db $76
    ld h, l
    ld l, $01
    daa
    ld d, b
    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    jr nz, jr_0c9_5feb

    ld l, a
    ld l, a
    ld l, l
    daa
    ld bc, $7449
    daa
    ld [hl], e
    jr nz, jr_0c9_6018

    ld l, a
    ld l, a
    jr nz, jr_0c9_600c

    ld h, c
    ld [hl], d
    ld l, e
    jr nz, jr_0c9_6021

    ld l, a
    nop
    ld [hl], e
    ld h, l
    ld h, l
    jr nz, jr_0c9_6015

    ld l, [hl]
    ld a, c
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $2e
    ld l, $01
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, @+$65

    ld l, a
    ld l, l
    ld [hl], b
    ld [hl], l
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_0c9_6037

    ld [hl], e

jr_0c9_5fcf:
    nop
    ld [hl], l
    ld [hl], e
    ld h, l
    ld h, h
    jr nz, jr_0c9_604a

    ld l, a
    jr nz, jr_0c9_604e

    ld l, [hl]
    ld l, h
    ld l, a
    ld h, e
    ld l, e
    jr nz, @+$76

    ld l, b
    ld h, l
    nop
    ld h, l
    ld l, h
    ld h, l

jr_0c9_5fe6:
    ld h, e
    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, [hl]

jr_0c9_5feb:
    ld l, c
    ld h, e
    jr nz, jr_0c9_605a

jr_0c9_5fef:
    ld h, l
    ld a, c
    ld l, $01
    ld d, a
    ld l, c

jr_0c9_5ff5:
    ld l, h

jr_0c9_5ff6:
    ld l, h
    jr nz, jr_0c9_6072

    ld l, a
    ld [hl], l
    jr nz, jr_0c9_6071

    ld [hl], l
    ld [hl], d
    ld l, [hl]
    jr nz, jr_0c9_606b

    ld [hl], h
    jr nz, jr_0c9_6074

    ld l, [hl]
    ccf
    nop
    jr nz, jr_0c9_6063

    ld h, l
    ld [hl], e

jr_0c9_600c:
    jr nz, jr_0c9_605c

    ld l, a
    jr nz, jr_0c9_6012

    ld d, [hl]

jr_0c9_6012:
    ld h, c
    ld [hl], d
    ld l, c

jr_0c9_6015:
    ld l, a
    ld [hl], l
    ld [hl], e

jr_0c9_6018:
    jr nz, jr_0c9_607d

    ld l, b
    ld h, l
    ld l, l
    ld l, c
    ld h, e
    ld h, c
    ld l, h

jr_0c9_6021:
    ld [hl], e
    nop
    ld [hl], l
    ld [hl], e
    ld h, l
    ld h, h
    jr nz, jr_0c9_608f

    ld l, a
    ld [hl], d
    jr nz, jr_0c9_609f

    ld h, l
    ld [hl], e
    ld h, l
    ld h, c
    ld [hl], d
    ld h, e
    ld l, b
    ld l, $01
    ld d, [hl]

jr_0c9_6037:
    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    ld [hl], l
    ld [hl], e
    jr nz, jr_0c9_60a3

    ld h, l
    db $76
    ld l, c
    ld h, e
    ld h, l
    ld [hl], e
    jr nz, jr_0c9_60a8

    ld l, [hl]
    ld h, h
    nop

jr_0c9_604a:
    ld h, e
    ld l, b
    ld h, l
    ld l, l

jr_0c9_604e:
    ld l, c
    ld h, e
    ld h, c
    ld l, h
    ld [hl], e
    ld l, $01
    ld b, c
    ld l, [hl]
    jr nz, jr_0c9_60c2

    ld l, [hl]

jr_0c9_605a:
    ld h, e
    ld [hl], l

jr_0c9_605c:
    ld h, d
    ld h, c
    ld [hl], h
    ld l, a
    ld [hl], d
    ld l, $01

jr_0c9_6063:
    ld b, c
    ld h, e
    ld h, e
    ld h, l
    ld [hl], e
    ld [hl], e
    ld l, c
    ld l, [hl]

jr_0c9_606b:
    ld h, a
    jr nz, jr_0c9_60d1

    ld l, a
    ld l, l
    ld [hl], b

jr_0c9_6071:
    ld [hl], l

jr_0c9_6072:
    ld [hl], h
    ld h, l

jr_0c9_6074:
    ld [hl], d
    ld l, $01
    ld b, c
    jr nz, jr_0c9_60dd

    ld l, a
    ld [hl], d
    ld [hl], b

jr_0c9_607d:
    ld [hl], e
    ld h, l
    jr nz, jr_0c9_60ea

    ld [hl], e
    jr nz, jr_0c9_60f0

    ld h, c
    ld l, c
    ld h, h
    nop
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ld l, $01
    ld d, h

jr_0c9_608f:
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_0c9_6104

    ld l, h
    ld h, c
    ld h, e
    ld h, l
    jr nz, jr_0c9_610d

    ld h, l
    ld h, l
    ld l, l
    ld [hl], e
    nop

jr_0c9_609f:
    ld [hl], h
    ld l, a
    jr nz, jr_0c9_6105

jr_0c9_60a3:
    ld h, l
    jr nz, jr_0c9_6107

    jr nz, jr_0c9_6115

jr_0c9_60a8:
    ld l, a
    ld [hl], d
    ld h, a
    ld [hl], l
    ld h, l
    ld l, $01
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_0c9_6119

    ld l, [hl]
    nop
    ld l, a
    ld [hl], b
    ld h, l
    ld [hl], d
    ld h, c
    ld [hl], h
    ld l, c
    ld l, [hl]

jr_0c9_60c2:
    ld h, a
    jr nz, jr_0c9_6139

    ld h, c
    ld h, d
    ld l, h
    ld h, l
    ld l, $01
    ld c, c
    ld l, [hl]
    ld [hl], e
    ld [hl], h
    ld [hl], d
    ld [hl], l

jr_0c9_60d1:
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld [hl], e
    jr nz, jr_0c9_613e

    ld l, a
    ld [hl], d
    nop
    ld l, a
    ld [hl], b

jr_0c9_60dd:
    ld h, l
    ld [hl], d
    ld h, c
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld l, $01
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d

jr_0c9_60ea:
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_0c9_6150

    ld l, [hl]

jr_0c9_60f0:
    jr nz, @+$63

    ld l, c
    ld [hl], d
    nop
    ld [hl], e
    ld l, b
    ld h, c
    ld h, [hl]
    ld [hl], h
    ld l, $20
    ld d, a
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_0c9_617b

    ld l, a
    ld [hl], l

jr_0c9_6104:
    nop

jr_0c9_6105:
    ld h, l
    ld l, [hl]

jr_0c9_6107:
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_0c9_6175

    ld [hl], h

jr_0c9_610d:
    ccf
    jr nz, @+$5b

    ld h, l
    ld [hl], e
    cpl
    ld c, [hl]
    ld l, a

jr_0c9_6115:
    ld bc, $6f50
    ld l, c

jr_0c9_6119:
    ld [hl], e
    ld l, a
    ld l, [hl]
    jr nz, @+$69

    ld h, c
    ld [hl], e
    jr nz, jr_0c9_618b

    ld [hl], e
    nop
    ld h, l
    ld [hl], e
    ld h, e
    ld h, c
    ld [hl], b
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $2e
    ld l, $21
    ld bc, $2041
    ld [hl], b
    ld h, c
    ld [hl], e
    ld [hl], e
    jr nz, jr_0c9_619c

jr_0c9_6139:
    ld l, a
    ld h, h
    ld h, l
    jr nz, jr_0c9_61ae

jr_0c9_613e:
    ld h, c
    ld l, [hl]
    ld h, l
    ld l, h
    ld l, $01
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_0c9_61ad

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_0c9_61b7

    ld h, c

jr_0c9_6150:
    db $76
    ld h, l
    jr nz, @+$76

    ld l, b
    ld h, l
    nop
    ld [hl], b
    ld h, c
    ld [hl], e
    ld [hl], e
    jr nz, jr_0c9_61c0

    ld l, a
    ld h, h
    ld h, l
    ld l, $01
    ld e, c
    ld l, a
    ld [hl], l
    daa
    db $76
    ld h, l
    jr nz, jr_0c9_61cf

    ld l, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    ld h, l
    ld h, h
    jr nz, jr_0c9_61e6

    ld l, b
    ld h, l
    nop

jr_0c9_6175:
    ld [hl], b
    ld h, c
    ld [hl], e
    ld [hl], e
    jr nz, @+$65

jr_0c9_617b:
    ld l, a
    ld h, h
    ld h, l
    ld l, $01
    ld c, l
    ld l, a
    ld [hl], e
    ld [hl], h
    jr nz, @+$71

    ld h, [hl]
    jr nz, jr_0c9_61fd

    ld l, b
    ld h, l

jr_0c9_618b:
    ld l, l
    jr nz, jr_0c9_61ef

    ld [hl], d
    ld h, l
    nop
    ld h, [hl]
    ld l, c
    ld h, e
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld h, c
    ld l, h
    jr nz, jr_0c9_61fe

jr_0c9_619c:
    ld l, a
    ld l, a
    ld l, e
    ld [hl], e
    ld l, $01
    ld b, e
    ld h, c
    ld [hl], d
    ld h, h
    ld b, d
    ld l, a
    ld h, c
    ld [hl], d
    ld h, h
    jr nz, jr_0c9_620e

jr_0c9_61ad:
    ld l, [hl]

jr_0c9_61ae:
    ld h, h
    nop
    ld [hl], b
    ld l, a
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    ld [hl], e

jr_0c9_61b7:
    ld l, $20
    ld c, [hl]
    ld l, a
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a

jr_0c9_61c0:
    nop
    ld [hl], l
    ld [hl], e
    ld h, l
    ld h, [hl]
    ld [hl], l
    ld l, h
    ld l, $01
    ld b, c
    jr nz, jr_0c9_623f

    ld [hl], a
    ld l, c
    ld [hl], h

jr_0c9_61cf:
    ld h, e
    ld l, b
    jr nz, jr_0c9_6239

    ld l, a
    ld [hl], d
    jr nz, jr_0c9_624b

    ld l, b
    ld h, l
    nop
    ld h, c
    ld l, c
    ld [hl], d
    jr nz, jr_0c9_6242

    ld l, a
    ld l, [hl]
    ld h, h
    ld l, c
    ld [hl], h
    ld l, c
    ld l, a

jr_0c9_61e6:
    ld l, [hl]
    ld h, l
    ld [hl], d
    ld l, $01
    ld d, e
    ld l, a
    ld l, l
    ld h, l

jr_0c9_61ef:
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$6b

    ld [hl], e
    nop
    ld [hl], a
    ld [hl], d
    ld l, c
    ld [hl], h
    ld [hl], h

jr_0c9_61fd:
    ld h, l

jr_0c9_61fe:
    ld l, [hl]
    jr nz, jr_0c9_6270

    ld l, [hl]
    jr nz, @+$76

    ld l, b
    ld h, l
    nop
    ld [hl], b
    ld l, c
    ld h, e
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld h, l

jr_0c9_620e:
    ld l, $2e
    ld l, $01
    ld c, c
    ld [hl], h
    jr nz, jr_0c9_6289

    ld h, l
    ld h, l
    ld l, l
    ld [hl], e
    jr nz, jr_0c9_628f

    ld l, a
    ld l, l
    ld h, l
    ld l, a
    ld l, [hl]
    ld h, l
    nop
    ld [hl], l
    ld [hl], e
    ld h, l
    ld h, h
    jr nz, @+$76

    ld l, b
    ld l, c
    ld [hl], e
    jr nz, @+$71

    ld l, [hl]
    ld l, h
    ld a, c
    nop
    ld [hl], d
    ld h, l
    ld h, e
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld l, h

jr_0c9_6239:
    ld a, c
    ld l, $01
    ld c, c
    ld [hl], h
    daa

jr_0c9_623f:
    ld [hl], e
    jr nz, jr_0c9_62a3

jr_0c9_6242:
    ld l, [hl]
    jr nz, jr_0c9_62a6

    ld l, c
    ld [hl], d
    nop
    ld h, e
    ld l, a
    ld l, [hl]

jr_0c9_624b:
    ld h, h
    ld l, c
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld h, l
    ld [hl], d
    nop
    ld [hl], e
    ld [hl], a
    ld l, c
    ld [hl], h
    ld h, e
    ld l, b
    jr nz, jr_0c9_62be

    ld [hl], l
    ld [hl], h
    jr nz, jr_0c9_62c9

    ld [hl], e
    nop
    ld h, d
    ld [hl], d
    ld l, a
    ld l, e
    ld h, l
    ld l, [hl]
    ld l, $01
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0c9_62e4

jr_0c9_6270:
    ld l, a
    ld l, a
    jr nz, jr_0c9_62d8

    ld h, c
    ld [hl], d
    ld l, e
    jr nz, jr_0c9_62ed

    ld l, a
    nop
    ld [hl], e
    ld h, l
    ld h, l
    jr nz, jr_0c9_62e1

    ld l, [hl]
    ld a, c
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $01

jr_0c9_6289:
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa

jr_0c9_628f:
    ld [hl], e
    jr nz, jr_0c9_6300

    ld l, a
    jr nz, jr_0c9_6307

    ld h, l
    ld h, c
    ld h, e
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld l, $00
    ld c, c
    ld [hl], h
    jr nz, jr_0c9_630a

    ld h, c

jr_0c9_62a3:
    ld [hl], e
    jr nz, jr_0c9_6314

jr_0c9_62a6:
    ld l, a
    jr nz, jr_0c9_6319

    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    ld l, $01
    daa
    ld d, b
    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    jr nz, jr_0c9_6309

    ld l, a
    ld l, a
    ld l, l
    daa
    ld bc, $7449

jr_0c9_62be:
    daa
    ld [hl], e
    jr nz, jr_0c9_6323

    jr nz, jr_0c9_6334

    ld h, c
    ld [hl], e
    ld [hl], e
    jr nz, jr_0c9_632c

jr_0c9_62c9:
    ld l, a
    ld h, h
    ld h, l
    nop
    ld l, a
    ld [hl], l
    ld [hl], h
    ld [hl], b
    ld [hl], l
    ld [hl], h
    jr nz, @+$6f

    ld h, c
    ld h, e
    ld l, b

jr_0c9_62d8:
    ld l, c
    ld l, [hl]
    ld h, l
    ld l, $01
    ld c, c
    ld h, [hl]
    jr nz, jr_0c9_632a

jr_0c9_62e1:
    jr nz, jr_0c9_634b

    ld h, c

jr_0c9_62e4:
    ld h, h
    jr nz, @+$63

    ld l, [hl]
    jr nz, jr_0c9_6337

    ld c, a
    jr nz, jr_0c9_6331

jr_0c9_62ed:
    ld c, c
    ld d, e
    ld c, e
    nop
    ld c, c
    jr nz, jr_0c9_6357

    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_0c9_6361

    ld h, l
    ld [hl], h
    jr nz, jr_0c9_6372

    ld l, b
    ld h, l

jr_0c9_6300:
    nop
    ld h, e
    ld l, a
    ld h, h
    ld h, l
    ld l, $2e

jr_0c9_6307:
    ld l, $01

jr_0c9_6309:
    ld d, b

jr_0c9_630a:
    ld b, c
    ld d, e
    ld d, e
    jr nz, jr_0c9_6352

    ld c, a
    ld b, h
    ld b, l
    jr nz, jr_0c9_6344

jr_0c9_6314:
    ld sp, $6820
    ld h, c
    ld [hl], e

jr_0c9_6319:
    nop
    ld h, d
    ld h, l
    ld h, l
    ld l, [hl]
    jr nz, jr_0c9_6386

    ld l, c
    ld l, h
    ld h, l

jr_0c9_6323:
    ld h, h
    ld l, $01
    ld d, b
    ld b, c
    ld d, e
    ld d, e

jr_0c9_632a:
    jr nz, jr_0c9_636f

jr_0c9_632c:
    ld c, a
    ld b, h
    ld b, l
    jr nz, jr_0c9_6361

jr_0c9_6331:
    ld [hl-], a
    jr nz, jr_0c9_639c

jr_0c9_6334:
    ld h, c
    ld [hl], e
    nop

jr_0c9_6337:
    ld h, d
    ld h, l
    ld h, l
    ld l, [hl]
    jr nz, jr_0c9_63a3

    ld l, c
    ld l, h
    ld h, l
    ld h, h
    ld l, $01
    ld d, b

jr_0c9_6344:
    ld b, c
    ld d, e
    ld d, e
    jr nz, jr_0c9_638c

    ld c, a
    ld b, h

jr_0c9_634b:
    ld b, l
    jr nz, jr_0c9_637e

    inc sp
    jr nz, @+$6a

    ld h, c

jr_0c9_6352:
    ld [hl], e
    nop
    ld h, d
    ld h, l
    ld h, l

jr_0c9_6357:
    ld l, [hl]
    jr nz, @+$68

    ld l, c
    ld l, h
    ld h, l
    ld h, h
    ld l, $01
    ld b, c

jr_0c9_6361:
    jr nz, jr_0c9_63d3

    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    jr nz, jr_0c9_63d9

    ld h, c
    ld l, [hl]
    ld h, l
    ld l, h
    ld l, $00

jr_0c9_636f:
    ld d, e
    ld l, a
    ld l, l

jr_0c9_6372:
    ld h, l
    jr nz, jr_0c9_63d6

    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], e
    jr nz, jr_0c9_63df

    ld l, a
    jr nz, jr_0c9_63ec

jr_0c9_637e:
    ld l, a
    ld [hl], h
    nop
    ld h, a
    ld h, l
    ld [hl], h
    jr nz, @+$72

jr_0c9_6386:
    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    ld l, $01

jr_0c9_638c:
    ld d, a
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_0c9_640b

    ld l, a
    ld [hl], l
    jr nz, jr_0c9_63f7

    ld h, e
    ld [hl], h
    ld l, c
    db $76
    ld h, c
    ld [hl], h

jr_0c9_639c:
    ld h, l
    nop
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_0c9_6405

jr_0c9_63a3:
    ld l, h
    ld h, c
    ld h, e
    ld l, e
    ld h, l
    ld h, h
    dec l
    ld l, a
    ld [hl], l
    ld [hl], h
    nop
    ld h, c
    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], e
    ccf
    jr nz, jr_0c9_640f

    ld h, l
    ld [hl], e
    jr nz, @+$50

    ld l, a
    jr nz, jr_0c9_63be

    ld c, c

jr_0c9_63be:
    ld [hl], h
    jr nz, jr_0c9_6434

    ld l, b
    ld l, a
    ld [hl], a
    ld [hl], e
    jr nz, jr_0c9_643b

    ld l, b
    ld h, l
    jr nz, jr_0c9_643b

    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    nop
    ld [hl], e
    ld [hl], l
    ld [hl], b

jr_0c9_63d3:
    ld [hl], b
    ld l, h
    ld a, c

jr_0c9_63d6:
    jr nz, @+$75

    ld [hl], h

jr_0c9_63d9:
    ld h, c
    ld [hl], h
    ld [hl], l
    ld [hl], e
    ld l, $01

jr_0c9_63df:
    ld c, b
    ld h, l
    jr nz, @+$6a

    ld h, c
    ld [hl], e
    jr nz, jr_0c9_644d

    ld h, c
    ld l, c
    ld l, [hl]
    ld [hl], h
    ld h, l

jr_0c9_63ec:
    ld h, h
    ld l, $01
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0c9_6456

    jr nz, jr_0c9_646b

jr_0c9_63f7:
    ld [hl], d
    ld l, c
    ld h, a
    ld h, a
    ld h, l
    ld [hl], d
    ld l, c
    ld l, [hl]
    ld h, a
    nop
    ld [hl], e
    ld a, c
    ld [hl], e
    ld [hl], h

jr_0c9_6405:
    ld h, l
    ld l, l
    jr nz, @+$63

    ld h, e
    ld [hl], h

jr_0c9_640b:
    ld l, c
    db $76
    ld h, c
    ld [hl], h

jr_0c9_640f:
    ld l, a
    ld [hl], d
    ld l, $01
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0c9_648a

    ld [hl], l
    ld l, c
    ld [hl], h
    ld h, l
    jr nz, jr_0c9_6481

    ld l, c
    ld h, a
    ld l, $01
    daa
    ld d, h
    ld [hl], d
    ld l, c
    ld h, a
    ld h, a
    ld h, l
    ld [hl], d
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0c9_6483

    ld a, c
    ld [hl], e
    ld [hl], h
    ld h, l

jr_0c9_6434:
    ld l, l
    nop
    ld b, c
    ld h, e
    ld [hl], h
    ld l, c
    db $76

jr_0c9_643b:
    ld h, c
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, jr_0c9_6483

    ld h, h
    ld l, l
    ld l, c
    ld [hl], h
    ld [hl], h
    ld h, l
    ld h, h
    daa
    ld bc, $3127

jr_0c9_644d:
    ld [hl], e
    ld [hl], h
    jr nz, jr_0c9_6495

    ld h, l
    ld h, a
    ld [hl], d
    ld h, l
    ld h, l

jr_0c9_6456:
    nop
    ld b, l
    ld l, l
    ld h, l
    ld [hl], d
    ld h, a
    ld h, l
    ld l, [hl]
    ld h, e
    ld a, c
    jr nz, jr_0c9_64ab

    ld [hl], e
    ld [hl], e
    ld [hl], l
    ld h, l
    ld h, h
    daa
    ld bc, $5527

jr_0c9_646b:
    ld l, [hl]
    ld l, h
    ld l, a
    ld h, e
    ld l, e
    jr nz, jr_0c9_64b3

    ld l, h
    ld l, h
    jr nz, jr_0c9_64b8

    ld l, h
    ld l, a
    ld h, e
    ld l, e
    ld [hl], e
    daa
    ld bc, $5427
    ld [hl], d
    ld l, c

jr_0c9_6481:
    ld h, a
    ld h, a

jr_0c9_6483:
    ld h, l
    ld [hl], d
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0c9_64dd

jr_0c9_648a:
    ld a, c
    ld [hl], e
    ld [hl], h
    ld h, l
    ld l, l
    nop
    ld b, h
    ld h, l
    ld h, c
    ld h, e
    ld [hl], h

jr_0c9_6495:
    ld l, c
    db $76
    ld h, c
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    nop
    ld c, c
    ld l, l
    ld [hl], b
    ld l, a
    ld [hl], e
    ld [hl], e
    ld l, c
    ld h, d
    ld l, h
    ld h, l
    daa
    ld bc, $2041

jr_0c9_64ab:
    ld [hl], b
    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    jr nz, jr_0c9_6515

    ld l, a

jr_0c9_64b3:
    ld l, [hl]
    ld l, [hl]
    ld h, l
    ld h, e
    ld [hl], h

jr_0c9_64b8:
    ld l, c
    ld l, a
    ld l, [hl]
    nop
    ld [hl], e
    ld [hl], a
    ld l, c
    ld [hl], h
    ld h, e
    ld l, b
    ld l, $20
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_0c9_652e

    ld l, h
    ld h, l
    db $76
    ld h, c
    ld [hl], h
    ld l, a
    ld [hl], d
    nop
    ld [hl], b
    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    jr nz, jr_0c9_6541

    ld [hl], e
    jr nz, jr_0c9_654a

    ld h, [hl]
    ld h, [hl]

jr_0c9_64dd:
    ld l, $01
    ld d, a
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_0c9_655e

    ld l, a
    ld [hl], l
    jr nz, jr_0c9_654c

    ld l, a
    ld l, [hl]
    ld l, [hl]
    ld h, l
    ld h, e
    ld [hl], h
    jr nz, jr_0c9_655a

    ld [hl], h
    ccf
    nop
    jr nz, jr_0c9_654f

    ld h, l
    ld [hl], e
    jr nz, jr_0c9_6548

    ld l, a
    jr nz, jr_0c9_64fe

    ld d, h

jr_0c9_64fe:
    ld l, b
    ld h, l
    jr nz, jr_0c9_6572

    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    jr nz, jr_0c9_6571

    ld [hl], e
    ld l, [hl]
    daa
    ld [hl], h
    nop
    ld [hl], e
    ld [hl], l
    ld [hl], b
    ld [hl], b
    ld l, h
    ld l, c
    ld h, l
    ld h, h

jr_0c9_6515:
    jr nz, jr_0c9_658b

    ld l, a
    jr nz, jr_0c9_658e

    ld l, b
    ld h, l
    nop
    ld h, l
    ld l, h
    ld h, l
    db $76
    ld h, c
    ld [hl], h
    ld l, a
    ld [hl], d
    ld l, $01
    ld c, c
    daa
    db $76
    ld h, l
    jr nz, @+$69

    ld l, a

jr_0c9_652e:
    ld [hl], h
    jr nz, @+$76

    ld l, a
    jr nz, @+$69

    ld h, l
    ld [hl], h
    nop
    ld [hl], b
    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    jr nz, jr_0c9_65b2

    ld l, a
    jr nz, jr_0c9_65b5

jr_0c9_6541:
    ld l, b
    ld h, l
    nop
    ld h, l
    ld l, h
    ld h, l
    db $76

jr_0c9_6548:
    ld h, c
    ld [hl], h

jr_0c9_654a:
    ld l, a
    ld [hl], d

jr_0c9_654c:
    ld l, $01
    ld d, h

jr_0c9_654f:
    ld l, b
    ld h, l
    jr nz, jr_0c9_65c3

    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    jr nz, jr_0c9_65cd

    ld l, a

jr_0c9_655a:
    jr nz, jr_0c9_65d0

    ld l, b
    ld h, l

jr_0c9_655e:
    nop
    ld h, l
    ld l, h
    ld h, l
    db $76
    ld h, c
    ld [hl], h
    ld l, a
    ld [hl], d
    jr nz, jr_0c9_65d2

    ld [hl], e
    jr nz, jr_0c9_65db

    ld l, [hl]
    ld l, $01
    ld c, [hl]
    ld l, a

jr_0c9_6571:
    ld [hl], h

jr_0c9_6572:
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$6b

    ld l, l
    ld [hl], b
    ld l, a
    ld [hl], d
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld [hl], h
    nop
    ld h, c
    ld [hl], d
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, @+$6a

    ld h, l
    ld [hl], d

jr_0c9_658b:
    ld h, l
    ld l, $01

jr_0c9_658e:
    ld c, h
    ld h, l
    ld [hl], h
    daa
    ld [hl], e
    jr nz, @+$69

    ld l, a
    jr nz, jr_0c9_6606

    ld l, a
    ld [hl], a
    ld l, $01
    ld c, h
    ld h, l
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0c9_660a

    ld l, a
    ld l, $20
    ld c, [hl]
    ld l, a
    nop
    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], e
    ld l, a
    ld l, [hl]
    jr nz, jr_0c9_6625

    ld l, a

jr_0c9_65b2:
    jr nz, jr_0c9_6627

    ld [hl], h

jr_0c9_65b5:
    ld h, c
    ld a, c
    nop
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ld l, $01
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l

jr_0c9_65c3:
    daa
    ld [hl], e
    jr nz, jr_0c9_6628

    jr nz, jr_0c9_6634

    ld h, l
    ld a, c
    jr nz, jr_0c9_663c

jr_0c9_65cd:
    ld l, [hl]
    nop
    ld [hl], h

jr_0c9_65d0:
    ld l, b
    ld h, l

jr_0c9_65d2:
    jr nz, @+$68

    ld l, h
    ld l, a
    ld l, a
    ld [hl], d
    ld l, $01
    ld d, a

jr_0c9_65db:
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_0c9_6641

    jr nz, jr_0c9_664f

    ld l, c
    ld [hl], e
    ld h, l
    ld [hl], d
    ld h, c
    ld h, d
    ld l, h
    ld h, l
    nop
    ld h, h
    ld h, l
    ld h, c
    ld [hl], h
    ld l, b
    ld l, $2e
    ld l, $01
    ld c, c
    jr nz, jr_0c9_665a

    ld h, c
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_0c9_6669

    ld h, l
    ld h, c
    db $76
    ld h, l
    nop
    ld b, d
    ld h, c
    ld [hl], d
    ld [hl], d

jr_0c9_6606:
    ld a, c
    jr nz, jr_0c9_666a

    ld l, h

jr_0c9_660a:
    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $4901
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0c9_667a

    ld l, h
    ld h, l
    ld h, e
    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, [hl]
    ld l, c
    ld h, e
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    nop
    ld l, h
    ld l, a

jr_0c9_6625:
    ld h, e
    ld l, e

jr_0c9_6627:
    ld h, l

jr_0c9_6628:
    ld h, h
    ld hl, HeaderManufacturerCode
    ld c, c
    ld [hl], h
    jr nz, @+$6e

    ld l, a
    ld l, a
    ld l, e
    ld [hl], e

jr_0c9_6634:
    jr nz, jr_0c9_66a2

    ld l, c
    ld l, e
    ld h, l
    jr nz, @+$76

    ld l, b

jr_0c9_663c:
    ld h, l
    nop
    ld h, e
    ld l, a
    ld l, [hl]

jr_0c9_6641:
    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, h
    jr nz, jr_0c9_66ab

    ld h, l
    db $76
    ld l, c
    ld h, e
    ld h, l
    jr nz, jr_0c9_66b4

    ld l, a

jr_0c9_664f:
    ld [hl], d
    nop
    ld [hl], h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_0c9_66c9

    ld l, a
    ld l, a
    ld l, l

jr_0c9_665a:
    ld l, $01
    ld b, d
    ld [hl], l
    ld [hl], h
    jr nz, jr_0c9_66d5

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_0c9_66d7

jr_0c9_6669:
    ld l, a

jr_0c9_666a:
    jr nz, @+$76

    ld l, c
    ld l, l
    ld h, l
    nop
    ld [hl], h
    ld l, a
    jr nz, jr_0c9_66e3

    ld [hl], b
    ld h, l
    ld [hl], d
    ld h, c
    ld [hl], h
    ld h, l

jr_0c9_667a:
    jr nz, jr_0c9_66e5

    ld [hl], h
    ld hl, $4101
    jr nz, jr_0c9_66e6

    ld l, a
    ld l, a
    ld [hl], d
    jr nz, @+$6e

    ld l, a
    ld h, e
    ld l, e
    jr nz, jr_0c9_66f0

    ld h, l
    db $76
    ld l, c
    ld h, e
    ld h, l
    ld l, $00
    ld d, a
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_0c9_6712

    ld l, a
    ld [hl], l
    jr nz, jr_0c9_6712

    ld l, [hl]
    ld l, h
    ld l, a
    ld h, e
    ld l, e

jr_0c9_66a2:
    jr nz, @+$6b

    ld [hl], h
    ccf
    nop
    jr nz, @+$5b

    ld h, l
    ld [hl], e

jr_0c9_66ab:
    jr nz, jr_0c9_66fb

    ld l, a
    jr nz, jr_0c9_66b1

    ld d, h

jr_0c9_66b1:
    ld l, b
    ld h, l
    ld [hl], d

jr_0c9_66b4:
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_0c9_671a

    jr nz, @+$66

    ld l, a
    ld l, a
    ld [hl], d
    jr nz, jr_0c9_672c

    ld l, a
    ld h, e
    ld l, e
    nop
    ld [hl], e
    ld [hl], a
    ld l, c
    ld [hl], h
    ld h, e

jr_0c9_66c9:
    ld l, b
    ld l, $20
    ld d, a
    ld l, c
    ld l, h
    ld l, h
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    nop

jr_0c9_66d5:
    ld [hl], l
    ld l, [hl]

jr_0c9_66d7:
    ld l, h
    ld l, a
    ld h, e
    ld l, e
    jr nz, @+$6b

    ld [hl], h
    ccf
    jr nz, @+$5b

    ld h, l
    ld [hl], e

jr_0c9_66e3:
    cpl
    ld c, [hl]

jr_0c9_66e5:
    ld l, a

jr_0c9_66e6:
    ld bc, $2403
    jr nz, jr_0c9_6740

    ld l, l
    ld h, d
    ld [hl], d
    ld h, l
    ld l, h

jr_0c9_66f0:
    ld l, h
    ld h, c
    jr nz, jr_0c9_6737

    ld l, a
    ld [hl], d
    ld [hl], b
    ld l, $01
    inc bc
    ld c, h

jr_0c9_66fb:
    ld l, a
    ld h, a
    ld l, c
    ld l, [hl]
    ld a, [hl-]
    ld bc, $5003
    ld h, c
    ld [hl], e
    ld [hl], e
    ld [hl], a
    ld l, a
    ld [hl], d
    ld h, h
    ld a, [hl-]
    ld bc, $2003
    jr nz, jr_0c9_6730

    ld c, h
    ld c, a

jr_0c9_6712:
    ld b, a
    ld c, c
    ld c, [hl]
    jr nz, @+$46

    ld b, l
    ld c, [hl]
    ld c, c

jr_0c9_671a:
    ld b, l
    ld b, h
    jr nz, jr_0c9_673e

    jr nz, jr_0c9_6721

    inc bc

jr_0c9_6721:
    jr nz, jr_0c9_6743

    jr nz, jr_0c9_6771

    ld c, a
    ld b, a
    ld c, c
    ld c, [hl]
    jr nz, @+$51

    ld c, e

jr_0c9_672c:
    ld b, c
    ld e, c
    ld b, l
    ld b, h

jr_0c9_6730:
    jr nz, jr_0c9_6752

    jr nz, jr_0c9_6735

    inc bc

jr_0c9_6735:
    jr nz, @+$22

jr_0c9_6737:
    jr nz, @+$22

    jr nz, @+$22

    ld b, h
    ld b, l
    ld c, [hl]

jr_0c9_673e:
    ld c, c
    ld b, l

jr_0c9_6740:
    ld b, h
    jr nz, jr_0c9_6763

jr_0c9_6743:
    jr nz, jr_0c9_6765

    jr nz, jr_0c9_6767

    ld bc, $2003
    jr nz, jr_0c9_676c

    jr nz, @+$22

    jr nz, jr_0c9_6795

    ld d, d
    ld d, d

jr_0c9_6752:
    ld c, a
    ld d, d
    jr nz, @+$22

    jr nz, jr_0c9_6778

    jr nz, @+$22

    jr nz, jr_0c9_675d

    inc bc

jr_0c9_675d:
    ld d, e
    ld h, l
    ld l, h
    ld h, l
    ld h, e
    ld [hl], h

jr_0c9_6763:
    jr nz, jr_0c9_67ab

jr_0c9_6765:
    ld l, h
    ld l, a

jr_0c9_6767:
    ld l, a
    ld [hl], d
    ld bc, $4220

jr_0c9_676c:
    ld [hl-], a
    jr nz, @+$22

    jr nz, @+$22

jr_0c9_6771:
    jr nz, @+$22

    jr nz, jr_0c9_6795

    ld bc, $4220

jr_0c9_6778:
    inc sp
    jr nz, jr_0c9_679b

    jr nz, @+$22

    jr nz, @+$22

    jr nz, @+$22

    ld bc, $4320
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    ld l, h
    jr nz, jr_0c9_67ab

    jr nz, jr_0c9_67ad

    ld bc, $2003
    jr nz, jr_0c9_67b2

    jr nz, jr_0c9_67b4

    ld d, [hl]

jr_0c9_6795:
    ld h, l
    ld [hl], d
    ld l, c
    ld h, [hl]
    ld l, c
    ld h, l

jr_0c9_679b:
    ld h, h
    jr nz, jr_0c9_67be

    jr nz, @+$22

    jr nz, jr_0c9_67a3

    inc bc

jr_0c9_67a3:
    jr nz, jr_0c9_67c5

    jr nz, jr_0c9_67c7

    jr nz, jr_0c9_67fe

    ld l, [hl]
    ld l, h

jr_0c9_67ab:
    ld l, a
    ld h, e

jr_0c9_67ad:
    ld l, e
    ld h, l
    ld h, h
    jr nz, jr_0c9_67d2

jr_0c9_67b2:
    jr nz, jr_0c9_67d4

jr_0c9_67b4:
    jr nz, jr_0c9_67b7

    ld d, e

jr_0c9_67b7:
    ld l, a
    ld l, l
    ld h, l
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]

jr_0c9_67be:
    ld h, a
    jr nz, jr_0c9_6829

    ld h, c
    ld [hl], e
    nop
    ld l, b

jr_0c9_67c5:
    ld h, c
    ld [hl], b

jr_0c9_67c7:
    ld [hl], b
    ld h, l
    ld l, [hl]
    ld h, l
    ld h, h
    ld hl, $0001
    nop
    nop
    nop

jr_0c9_67d2:
    nop
    nop

jr_0c9_67d4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0c9_67fe:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0c9_6829:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
