SECTION "ROM Bank $0f9", ROMX[$4000], BANK[$f9]

    ld c, l
    ld a, c
    jr nz, jr_0f9_4068

    ld h, l
    ld h, c
    ld [hl], d
    jr nz, jr_0f9_404a

    ld l, h
    ld l, l
    ld h, c
    nop
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_0f9_4079

    ld h, c
    ld h, e
    ld [hl], h
    jr nz, jr_0f9_408c

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_0f9_4096

    ld l, a
    ld [hl], l
    nop
    ld l, b
    ld h, c
    db $76
    ld h, l
    jr nz, jr_0f9_4098

    ld h, l
    ld h, e
    ld h, l
    ld l, c
    db $76
    ld h, l
    ld h, h
    jr nz, jr_0f9_40a3

    ld l, b
    ld l, c
    ld [hl], e
    nop
    ld l, h
    ld h, l
    ld [hl], h
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_0f9_40a4

    ld [hl], e
    jr nz, jr_0f9_40a0

    ld l, a
    ld [hl], h
    ld l, b
    jr nz, jr_0f9_40a4

    jr nz, jr_0f9_40af

    ld l, a
    ld a, c
    nop
    ld h, c
    ld l, [hl]

jr_0f9_404a:
    ld h, h
    jr nz, jr_0f9_40ae

    jr nz, @+$75

    ld h, c
    ld h, h
    ld l, [hl]
    ld h, l
    ld [hl], e
    ld [hl], e
    jr nz, jr_0f9_40bd

    ld l, a
    ld [hl], d
    nop
    ld l, l
    ld h, l
    ld l, $00
    ld c, c
    jr nz, jr_0f9_40c4

    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_0f9_40d5

    ld l, a

jr_0f9_4068:
    ld [hl], h
    jr nz, jr_0f9_40d0

    db $76
    ld h, l
    ld l, [hl]
    nop
    ld [hl], h
    ld h, c
    ld l, h
    ld l, e
    jr nz, jr_0f9_40e9

    ld l, a
    jr nz, jr_0f9_40f1

    ld l, a

jr_0f9_4079:
    ld [hl], l
    jr nz, jr_0f9_40de

    ld h, l
    ld h, e
    ld h, c
    ld [hl], l
    ld [hl], e
    ld h, l
    nop
    ld l, a
    ld h, [hl]
    jr nz, jr_0f9_40fb

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_0f9_40f3

jr_0f9_408c:
    ld [hl], l
    ld a, c
    jr nz, jr_0f9_40f9

    ld l, [hl]
    jr nz, jr_0f9_4107

    ld l, b
    ld h, l
    nop

jr_0f9_4096:
    ld [hl], e
    ld [hl], l

jr_0f9_4098:
    ld l, [hl]
    ld h, a
    ld l, h
    ld h, c
    ld [hl], e
    ld [hl], e
    ld h, l
    ld [hl], e

jr_0f9_40a0:
    ld l, $00
    ld b, c

jr_0f9_40a3:
    ld l, h

jr_0f9_40a4:
    ld l, l
    ld h, c
    inc l
    jr nz, @+$64

    ld h, l
    jr nz, jr_0f9_410f

    ld h, c
    ld l, h

jr_0f9_40ae:
    ld l, l

jr_0f9_40af:
    jr nz, jr_0f9_4112

    ld l, [hl]
    ld h, h
    nop
    ld [hl], d
    ld h, l
    ld h, c
    ld h, h
    jr nz, jr_0f9_412e

    ld l, b
    ld l, c
    ld [hl], e

jr_0f9_40bd:
    ld l, $00
    ld [bc], a
    ld c, c
    jr nz, jr_0f9_4137

    ld l, b

jr_0f9_40c4:
    ld l, c
    ld l, [hl]
    ld l, e
    jr nz, jr_0f9_4112

    daa
    db $76
    ld h, l
    jr nz, jr_0f9_4142

    ld l, a
    ld l, h

jr_0f9_40d0:
    ld h, h
    nop
    ld a, c
    ld l, a
    ld [hl], l

jr_0f9_40d5:
    jr nz, jr_0f9_414b

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_0f9_4125

    jr nz, jr_0f9_414b

jr_0f9_40de:
    ld l, a
    db $76
    ld h, l
    ld h, h
    jr nz, jr_0f9_4158

    ld l, a
    nop
    ld h, c
    jr nz, @+$72

jr_0f9_40e9:
    ld l, b
    ld h, c
    ld [hl], d
    ld l, l
    ld h, c
    ld h, e
    ld h, l
    ld [hl], l

jr_0f9_40f1:
    ld [hl], h
    ld l, c

jr_0f9_40f3:
    ld h, e
    ld h, c
    ld l, h
    nop
    ld h, e
    ld l, a

jr_0f9_40f9:
    ld l, l
    ld [hl], b

jr_0f9_40fb:
    ld h, c
    ld l, [hl]
    ld a, c
    daa
    ld [hl], e
    jr nz, jr_0f9_416e

    ld h, c
    ld h, d
    ld l, $00
    ld d, h

jr_0f9_4107:
    ld l, b
    ld h, l
    ld a, c
    jr nz, jr_0f9_4174

    ld h, l
    ld h, c
    ld h, h

jr_0f9_410f:
    ld l, b
    ld [hl], l
    ld l, [hl]

jr_0f9_4112:
    ld [hl], h
    ld h, l
    ld h, h
    jr nz, jr_0f9_4184

    ld h, l
    ld l, $00
    ld c, h
    ld h, c
    ld [hl], e
    ld [hl], h
    jr nz, jr_0f9_418d

    ld l, a
    ld l, [hl]
    ld [hl], h
    ld l, b
    inc l

jr_0f9_4125:
    jr nz, jr_0f9_419b

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    nop
    ld [hl], a
    ld h, c

jr_0f9_412e:
    ld [hl], e
    jr nz, jr_0f9_4192

    ld l, [hl]
    jr nz, jr_0f9_4195

    ld h, e
    ld h, e
    ld l, c

jr_0f9_4137:
    ld h, h
    ld h, l
    ld l, [hl]
    ld [hl], h
    jr nz, jr_0f9_41a6

    ld l, [hl]
    nop
    ld [hl], h
    ld l, b
    ld h, l

jr_0f9_4142:
    jr nz, jr_0f9_41b0

    ld h, c
    ld h, d
    inc l
    jr nz, jr_0f9_41aa

    ld l, [hl]
    ld h, h

jr_0f9_414b:
    jr nz, jr_0f9_41c1

    ld l, b
    ld h, l
    nop
    db $76
    ld l, c
    ld [hl], d
    ld [hl], l
    ld [hl], e
    jr nz, jr_0f9_41ce

    ld h, l

jr_0f9_4158:
    jr nz, jr_0f9_41d1

    ld h, l
    ld [hl], d
    ld h, l
    nop
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ld h, h
    ld a, c
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$67

    ld [hl], e
    ld h, e
    ld h, c
    ld [hl], b
    ld h, l
    ld h, h

jr_0f9_416e:
    ld l, $00
    ld [bc], a
    ld b, c
    ld l, h
    ld l, h

jr_0f9_4174:
    jr nz, jr_0f9_41e3

    ld a, c
    jr nz, jr_0f9_41dc

    ld l, a
    ld l, h
    ld l, h
    ld h, l
    ld h, c
    ld h, a
    ld [hl], l
    ld h, l
    ld [hl], e
    nop
    ld [hl], a

jr_0f9_4184:
    ld l, b
    ld l, a
    jr nz, @+$79

    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_0f9_41f6

jr_0f9_418d:
    ld l, [hl]
    ld h, [hl]
    ld h, l
    ld h, e
    ld [hl], h

jr_0f9_4192:
    ld h, l
    ld h, h
    nop

jr_0f9_4195:
    ld h, d
    ld a, c
    jr nz, jr_0f9_420d

    ld l, b
    ld h, l

jr_0f9_419b:
    jr nz, jr_0f9_4213

    ld l, c
    ld [hl], d
    ld [hl], l
    ld [hl], e
    jr nz, jr_0f9_4204

    ld [hl], d
    ld h, l
    nop

jr_0f9_41a6:
    ld h, h
    ld h, l
    ld h, c
    ld h, h

jr_0f9_41aa:
    ld l, $00
    ld d, h
    ld l, a
    jr nz, @+$64

jr_0f9_41b0:
    ld h, l
    jr nz, jr_0f9_4214

    ld h, e
    ld h, e
    ld [hl], l
    ld [hl], d
    ld h, c
    ld [hl], h
    ld h, l
    inc l
    nop
    ld [hl], h
    ld l, b
    ld h, l
    ld a, c
    daa

jr_0f9_41c1:
    ld [hl], d
    ld h, l
    jr nz, jr_0f9_4233

    ld l, a
    ld [hl], h
    jr nz, jr_0f9_422d

    ld h, l
    ld h, c
    ld h, h
    ld l, $00

jr_0f9_41ce:
    ld d, h
    ld l, b
    ld h, l

jr_0f9_41d1:
    ld a, c
    jr nz, @+$75

    ld [hl], h
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_0f9_4251

    ld h, c
    ld l, [hl]

jr_0f9_41dc:
    ld h, h
    ld h, l
    ld [hl], d
    nop
    ld h, c
    ld [hl], d
    ld l, a

jr_0f9_41e3:
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld l, $00
    ld b, c
    ld h, e
    ld [hl], h
    ld [hl], l
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    inc l
    jr nz, jr_0f9_4266

    ld l, a
    ld l, l
    ld h, l

jr_0f9_41f6:
    jr nz, jr_0f9_4267

    ld h, [hl]
    nop
    ld [hl], h
    ld l, b
    ld h, l
    ld l, l
    jr nz, jr_0f9_4261

    ld [hl], d
    ld h, l
    jr nz, jr_0f9_426f

jr_0f9_4204:
    ld l, [hl]
    ld l, a
    ld h, e
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    nop
    ld l, a

jr_0f9_420d:
    ld l, [hl]
    jr nz, jr_0f9_427d

    ld a, c
    jr nz, jr_0f9_4285

jr_0f9_4213:
    ld l, a

jr_0f9_4214:
    ld l, a
    ld l, l
    jr nz, jr_0f9_427c

    ld l, a
    ld l, a
    ld [hl], d
    nop
    ld h, h
    ld h, l
    ld [hl], e
    ld [hl], b
    ld h, l
    ld [hl], d
    ld h, c
    ld [hl], h
    ld h, l
    ld l, h
    ld a, c
    jr nz, jr_0f9_429b

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h

jr_0f9_422d:
    nop
    ld l, [hl]
    ld l, a
    ld [hl], a
    ld l, $00

jr_0f9_4233:
    ld b, d
    ld [hl], l
    ld [hl], h
    jr nz, jr_0f9_42ac

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_0f9_42ae

    ld l, a
    nop
    ld [hl], e
    ld l, c
    ld h, a
    ld l, [hl]
    jr nz, jr_0f9_42b7

    ld h, [hl]
    nop
    ld l, c
    ld l, [hl]
    ld [hl], h
    ld h, l
    ld l, h
    ld l, h
    ld l, c

jr_0f9_4251:
    ld h, a
    ld h, l
    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, jr_0f9_42c1

    ld l, [hl]
    nop
    ld [hl], h
    ld l, b
    ld h, l
    ld l, c
    ld [hl], d
    jr nz, @+$67

jr_0f9_4261:
    ld a, c
    ld h, l
    ld [hl], e
    ld l, $00

jr_0f9_4266:
    ld [bc], a

jr_0f9_4267:
    ld d, h
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_0f9_42d0

    ld [hl], l
    ld [hl], d

jr_0f9_426f:
    ld [hl], e
    ld h, l
    ld h, h
    jr nz, jr_0f9_42ea

    ld l, c
    ld [hl], d
    ld [hl], l
    ld [hl], e
    nop
    ld [hl], h
    ld h, c
    ld l, e

jr_0f9_427c:
    ld h, l

jr_0f9_427d:
    ld [hl], e
    jr nz, jr_0f9_42e1

    ld [hl], a
    ld h, c
    ld a, c
    jr nz, jr_0f9_42e6

jr_0f9_4285:
    ld l, h
    ld l, h
    nop
    ld l, b
    ld [hl], l
    ld l, l
    ld h, c
    ld l, [hl]
    ld l, c
    ld [hl], h
    ld a, c
    jr nz, @+$68

    ld [hl], d
    ld l, a
    ld l, l
    jr nz, jr_0f9_430b

    ld l, b
    ld h, l
    nop
    ld l, b

jr_0f9_429b:
    ld [hl], l
    ld l, l
    ld h, c
    ld l, [hl]
    jr nz, jr_0f9_4303

    ld [hl], d
    ld h, c
    ld l, c
    ld l, [hl]
    ld l, $00
    ld c, h
    ld l, a
    db $76
    ld h, l
    inc l

jr_0f9_42ac:
    jr nz, jr_0f9_4318

jr_0f9_42ae:
    ld l, a
    ld a, c
    inc l
    jr nz, jr_0f9_4326

    ld l, a
    ld [hl], d
    ld [hl], d
    ld l, a

jr_0f9_42b7:
    ld [hl], a
    inc l
    nop
    ld h, [hl]
    ld h, l
    ld h, c
    ld [hl], d
    inc l
    jr nz, jr_0f9_4329

jr_0f9_42c1:
    ld [hl], l
    ld l, l
    ld l, a
    ld [hl], d
    ld l, $2e
    ld l, $00
    ld h, l
    ld [hl], h
    ld h, l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, h

jr_0f9_42d0:
    ld l, h
    ld a, c
    ld l, $00
    nop
    ld b, c
    ld l, [hl]
    ld h, h
    jr nz, @+$43

    ld l, h
    ld l, l
    ld h, c
    inc l
    jr nz, @+$67

    db $76

jr_0f9_42e1:
    ld h, l
    ld l, [hl]
    jr nz, jr_0f9_4359

    ld l, b

jr_0f9_42e6:
    ld h, l
    nop
    ld l, l
    ld h, l

jr_0f9_42ea:
    ld l, l
    ld l, a
    ld [hl], d
    ld l, c
    ld h, l
    ld [hl], e
    jr nz, jr_0f9_4361

    ld h, [hl]
    jr nz, jr_0f9_4369

    ld l, b
    ld h, l
    jr nz, jr_0f9_435d

    ld h, c
    ld a, c
    ld [hl], e
    nop
    ld c, c
    jr nz, jr_0f9_4373

    ld [hl], b
    ld h, l
    ld l, [hl]

jr_0f9_4303:
    ld [hl], h
    jr nz, jr_0f9_437d

    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_0f9_4384

jr_0f9_430b:
    ld l, a
    ld [hl], l
    ld l, $2e
    ld l, $00
    nop
    ld e, c
    ld h, l
    ld [hl], e
    inc l
    jr nz, jr_0f9_4361

jr_0f9_4318:
    daa
    ld l, l
    jr nz, jr_0f9_4385

    ld l, [hl]
    ld h, [hl]
    ld h, l
    ld h, e
    ld [hl], h
    ld h, l
    ld h, h
    ld l, $00
    ld c, c

jr_0f9_4326:
    jr nz, jr_0f9_438c

    ld l, c

jr_0f9_4329:
    ld h, h
    jr nz, @+$67

    db $76
    ld h, l
    ld [hl], d
    ld a, c
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f9_4380

    nop
    ld h, e
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    inc l
    jr nz, jr_0f9_43a2

    ld [hl], l
    ld [hl], h
    jr nz, jr_0f9_438d

    jr nz, jr_0f9_43a9

    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    nop
    ld l, a
    ld l, [hl]
    ld l, h
    ld a, c
    jr nz, jr_0f9_43b5

    ld h, l
    ld l, h
    ld h, c
    ld a, c
    jr nz, jr_0f9_43cb

    ld l, b
    ld h, l

jr_0f9_4359:
    nop
    ld [hl], b
    ld [hl], d
    ld l, a

jr_0f9_435d:
    ld h, a
    ld [hl], d
    ld h, l
    ld [hl], e

jr_0f9_4361:
    ld [hl], e
    jr nz, jr_0f9_43c6

    ld a, c
    jr nz, jr_0f9_43c8

    jr nz, @+$68

jr_0f9_4369:
    ld h, l
    ld [hl], a
    nop
    ld h, h
    ld h, c
    ld a, c
    ld [hl], e
    ld l, $00
    ld [bc], a

jr_0f9_4373:
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_0f9_43e5

    ld l, a
    ld [hl], e
    ld [hl], h
    nop
    ld h, [hl]

jr_0f9_437d:
    ld [hl], d
    ld l, c
    ld h, a

jr_0f9_4380:
    ld l, b
    ld [hl], h
    ld h, l
    ld l, [hl]

jr_0f9_4384:
    ld l, c

jr_0f9_4385:
    ld l, [hl]
    ld h, a
    jr nz, jr_0f9_43fd

    ld l, b
    ld l, c
    ld l, [hl]

jr_0f9_438c:
    ld h, a

jr_0f9_438d:
    nop
    ld l, c
    ld [hl], e
    jr nz, @+$76

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_0f9_43e0

    jr nz, @+$6a

    ld h, c
    db $76
    ld h, l
    nop
    ld h, d
    ld h, l
    ld h, a
    ld [hl], l
    ld l, [hl]

jr_0f9_43a2:
    jr nz, jr_0f9_4418

    ld l, a
    jr nz, jr_0f9_440d

    ld l, a
    ld [hl], d

jr_0f9_43a9:
    ld h, a
    ld h, l
    ld [hl], h
    nop
    ld h, c
    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h
    jr nz, jr_0f9_442d

    ld l, a

jr_0f9_43b5:
    ld [hl], l
    jr nz, jr_0f9_441c

    ld h, c
    ld a, c
    jr nz, jr_0f9_441e

    ld a, c
    nop
    ld h, h
    ld h, c
    ld a, c
    ld l, $00
    nop
    ld d, e
    ld l, a

jr_0f9_43c6:
    jr nz, jr_0f9_4411

jr_0f9_43c8:
    jr nz, jr_0f9_442d

    ld l, b

jr_0f9_43cb:
    ld l, a
    ld [hl], e
    ld h, l
    jr nz, jr_0f9_4431

    nop
    ld [hl], b
    ld h, l
    ld h, c
    ld h, e
    ld h, l
    ld h, [hl]
    ld [hl], l
    ld l, h
    jr nz, jr_0f9_443f

    ld h, l
    ld h, c
    ld [hl], h
    ld l, b
    inc l

jr_0f9_43e0:
    nop
    ld [hl], d
    ld h, c
    ld [hl], h
    ld l, b

jr_0f9_43e5:
    ld h, l
    ld [hl], d
    jr nz, jr_0f9_445d

    ld l, b
    ld h, c
    ld l, [hl]
    nop
    ld h, d
    ld h, l
    ld h, e
    ld l, a
    ld l, l
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f9_446b

    ld l, b
    ld h, l
    nop
    ld l, h
    ld l, c
    db $76

jr_0f9_43fd:
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$66

    ld h, l
    ld h, c
    ld h, h
    ld l, $00
    ld [bc], a
    ld d, a
    ld l, c
    ld [hl], h
    ld l, b
    ld l, c

jr_0f9_440d:
    ld l, [hl]
    jr nz, jr_0f9_4471

    ld l, [hl]

jr_0f9_4411:
    jr nz, jr_0f9_447b

    ld l, a
    ld [hl], l
    ld [hl], d
    inc l
    nop

jr_0f9_4418:
    ld c, c
    jr nz, jr_0f9_4492

    ld l, c

jr_0f9_441c:
    ld l, h
    ld l, h

jr_0f9_441e:
    jr nz, jr_0f9_4488

    ld h, c
    db $76
    ld h, l
    nop
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    ld h, l
    ld h, h
    jr nz, jr_0f9_449a

jr_0f9_442d:
    ld a, c
    nop
    ld h, l
    ld [hl], h

jr_0f9_4431:
    ld h, l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, h
    jr nz, jr_0f9_44ab

    ld l, h
    ld h, l
    ld h, l
    ld [hl], b
    ld l, $00
    ld c, c

jr_0f9_443f:
    jr nz, jr_0f9_44a5

    ld l, a
    jr nz, jr_0f9_44ac

    ld l, a
    ld [hl], b
    ld h, l
    jr nz, jr_0f9_44c2

    ld l, a
    ld [hl], l
    daa
    ld l, h
    ld l, h
    nop
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld h, l
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_0f9_44c8

    ld a, c
    nop

jr_0f9_445d:
    ld h, h
    ld h, l
    ld h, e
    ld l, c
    ld [hl], e
    ld l, c
    ld l, a
    ld l, [hl]
    ld l, $2e
    ld l, $00
    ld b, a
    ld l, a

jr_0f9_446b:
    ld l, a
    ld h, h
    jr nz, jr_0f9_44b1

    ld a, c
    ld h, l

jr_0f9_4471:
    jr nz, jr_0f9_44d4

    ld l, [hl]
    ld h, h
    nop
    ld b, [hl]
    ld l, a
    ld [hl], d
    ld h, l
    db $76

jr_0f9_447b:
    ld h, l
    ld [hl], d
    jr nz, jr_0f9_44d8

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    inc l
    nop
    nop
    ld c, l
    ld h, c

jr_0f9_4488:
    ld [hl], d
    ld [hl], h
    ld l, c
    ld l, [hl]
    jr nz, jr_0f9_44d1

    ld [hl], d
    ld h, c
    ld h, e
    ld l, e

jr_0f9_4492:
    ld l, b
    ld l, a
    ld [hl], d
    ld l, [hl]
    nop
    ld bc, $614d

jr_0f9_449a:
    ld a, c
    jr nz, jr_0f9_44d6

    inc l
    jr nz, jr_0f9_44d1

    add hl, sp
    add hl, sp
    jr c, jr_0f9_44a4

jr_0f9_44a4:
    nop

jr_0f9_44a5:
    ld b, c
    ld [hl], h
    jr nz, jr_0f9_4517

    ld l, c
    ld h, a

jr_0f9_44ab:
    ld l, b

jr_0f9_44ac:
    ld [hl], h
    inc l
    jr nz, jr_0f9_4527

    ld h, l

jr_0f9_44b1:
    jr nz, jr_0f9_4523

    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld h, h
    nop
    ld d, b
    ld l, a
    ld l, e
    ld h, l
    ld [hl], d
    jr nz, jr_0f9_4537

    ld l, c
    ld [hl], h

jr_0f9_44c2:
    ld l, b
    jr nz, jr_0f9_4518

    ld h, e
    ld l, a
    ld [hl], h

jr_0f9_44c8:
    ld [hl], h
    nop
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_0f9_4536

    ld [hl], l
    ld h, c

jr_0f9_44d1:
    ld [hl], d
    ld h, h
    inc l

jr_0f9_44d4:
    jr nz, jr_0f9_4517

jr_0f9_44d6:
    ld l, h
    ld l, c

jr_0f9_44d8:
    ld h, c
    ld [hl], e
    jr nz, jr_0f9_453d

    ld l, [hl]
    ld h, h
    nop
    ld d, e
    ld [hl], h
    ld h, l
    db $76
    ld h, l
    jr nz, jr_0f9_455a

    ld l, b
    ld h, l
    nop
    ld [hl], d
    ld h, l
    ld [hl], e
    ld h, l
    ld h, c
    ld [hl], d
    ld h, e
    ld l, b
    ld h, l
    ld [hl], d
    ld l, $00
    ld d, e
    ld [hl], h
    ld h, l
    db $76
    ld h, l
    jr nz, @+$79

    ld h, c
    ld [hl], e
    jr nz, jr_0f9_4572

    ld h, l
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    nop
    ld l, h
    ld [hl], l
    ld h, e
    ld l, e
    ld a, c
    inc l
    jr nz, @+$64

    ld [hl], l
    ld [hl], h
    jr nz, jr_0f9_455b

    jr nz, jr_0f9_4588

    ld l, b
    ld l, c
    ld l, [hl]

jr_0f9_4517:
    ld l, e

jr_0f9_4518:
    nop
    ld l, b
    ld h, l
    jr nz, jr_0f9_4594

    ld h, c
    ld [hl], e
    jr nz, jr_0f9_4584

    ld l, b
    ld h, l

jr_0f9_4523:
    ld h, c
    ld [hl], h
    ld l, c
    ld l, [hl]

jr_0f9_4527:
    ld h, a
    ld l, $00
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, @+$63

    jr nz, jr_0f9_45a5

    ld h, e
    ld [hl], l
    ld l, l
    ld h, d

jr_0f9_4536:
    ld h, c

jr_0f9_4537:
    ld h, a
    ld l, $00
    ld bc, $614d

jr_0f9_453d:
    ld a, c
    jr nz, jr_0f9_4571

    jr nc, jr_0f9_456e

    jr nz, jr_0f9_4575

    add hl, sp
    add hl, sp
    jr c, jr_0f9_4548

jr_0f9_4548:
    nop
    ld d, h
    ld l, a
    ld h, h
    ld h, c
    ld a, c
    inc l
    jr nz, @+$63

    jr nz, @+$6a

    ld l, c
    ld h, a
    ld l, b
    nop
    ld [hl], d
    ld h, c
    ld l, [hl]

jr_0f9_455a:
    ld l, e

jr_0f9_455b:
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$74

    ld h, l
    ld [hl], e
    ld h, l
    ld h, c
    ld [hl], d
    ld h, e
    ld l, b
    ld h, l
    ld [hl], d
    nop
    ld h, c
    ld [hl], e
    ld l, e
    ld h, l

jr_0f9_456e:
    ld h, h
    jr nz, jr_0f9_45de

jr_0f9_4571:
    ld h, l

jr_0f9_4572:
    jr nz, jr_0f9_45e8

    ld l, a

jr_0f9_4575:
    jr nz, jr_0f9_45eb

    ld h, c
    ld l, e
    ld h, l
    nop
    ld h, e
    ld h, c
    ld [hl], d
    ld h, l
    jr nz, jr_0f9_45f0

    ld h, [hl]
    jr nz, jr_0f9_45e5

jr_0f9_4584:
    jr nz, jr_0f9_45f4

    ld h, l
    ld [hl], a

jr_0f9_4588:
    nop
    ld l, l
    ld l, a
    ld l, [hl]
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    ld l, $20
    ld c, c
    ld [hl], h

jr_0f9_4594:
    jr nz, jr_0f9_4602

    ld l, a
    ld l, a
    ld l, e
    ld [hl], e
    nop
    ld l, h
    ld l, c
    ld l, e
    ld h, l
    jr nz, jr_0f9_4602

    jr nz, jr_0f9_460a

    ld l, a
    ld [hl], d

jr_0f9_45a5:
    ld l, c
    ld l, h
    ld l, h
    ld h, c
    nop
    ld [hl], a
    ld l, c
    ld [hl], h
    ld l, b
    ld l, a
    ld [hl], l
    ld [hl], h
    jr nz, jr_0f9_4614

    ld l, [hl]
    ld a, c
    jr nz, jr_0f9_462a

    ld l, e
    ld l, c
    ld l, [hl]
    ld l, $00
    ld [bc], a
    ld d, h
    ld l, b
    ld h, l
    ld a, c
    jr nz, jr_0f9_4637

    ld l, a
    ld l, h
    ld h, h
    jr nz, jr_0f9_4635

    ld h, l
    jr nz, jr_0f9_463f

    ld l, a
    nop
    ld h, [hl]
    ld h, l
    ld h, l
    ld h, h
    jr nz, jr_0f9_4647

    ld l, b
    ld h, l
    ld l, l
    jr nz, jr_0f9_4644

    ld l, c
    db $76
    ld h, l
    nop
    ld h, [hl]
    ld l, a

jr_0f9_45de:
    ld l, a
    ld h, h
    ld l, $00
    ld d, a
    ld l, b
    ld h, l

jr_0f9_45e5:
    ld l, [hl]
    jr nz, @+$4b

jr_0f9_45e8:
    jr nz, jr_0f9_465e

    ld l, b

jr_0f9_45eb:
    ld [hl], d
    ld h, l
    ld [hl], a
    jr nz, jr_0f9_4659

jr_0f9_45f0:
    ld l, [hl]
    jr nz, jr_0f9_4654

    nop

jr_0f9_45f4:
    ld [hl], b
    ld l, c
    ld h, a
    inc l
    jr nz, @+$76

    ld l, b
    ld h, l
    ld a, c
    jr nz, jr_0f9_4676

    ld h, l
    ld [hl], d
    ld h, l

jr_0f9_4602:
    nop
    ld [hl], b
    ld l, h
    ld h, c
    ld a, c
    ld l, c
    ld l, [hl]
    ld h, a

jr_0f9_460a:
    jr nz, jr_0f9_4683

    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_0f9_467a

    ld [hl], h
    ld l, $2e

jr_0f9_4614:
    ld l, $00
    ld [hl], h
    ld h, l
    ld h, c
    ld [hl], d
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f9_468e

    ld h, [hl]
    ld h, [hl]
    jr nz, jr_0f9_4697

    ld l, b
    ld h, l
    nop
    ld [hl], b
    ld l, c
    ld h, a
    daa

jr_0f9_462a:
    ld [hl], e
    jr nz, jr_0f9_4699

    ld h, l
    ld h, a
    ld [hl], e
    jr nz, jr_0f9_4693

    ld l, [hl]
    ld h, h
    nop

jr_0f9_4635:
    ld [hl], b
    ld [hl], l

jr_0f9_4637:
    ld l, h
    ld l, h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f9_46ad

    ld [hl], l

jr_0f9_463f:
    ld [hl], h
    jr nz, jr_0f9_46b6

    ld l, b
    ld h, l

jr_0f9_4644:
    nop
    ld h, a
    ld [hl], l

jr_0f9_4647:
    ld [hl], h
    ld [hl], e
    jr nz, jr_0f9_46ad

    ld h, l
    ld h, [hl]
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_0f9_46c6

    ld l, b
    ld h, l

jr_0f9_4654:
    ld a, c
    nop
    ld h, c
    ld h, e
    ld [hl], h

jr_0f9_4659:
    ld [hl], l
    ld h, c
    ld l, h
    ld l, h
    ld a, c

jr_0f9_465e:
    jr nz, jr_0f9_46c1

    ld [hl], h
    ld h, l
    jr nz, jr_0f9_46cd

    ld [hl], h
    ld l, $00
    ld bc, $614d
    ld a, c
    jr nz, jr_0f9_469e

    ld sp, $202c
    ld sp, $3939
    jr c, jr_0f9_4675

jr_0f9_4675:
    nop

jr_0f9_4676:
    ld b, c
    ld [hl], d
    ld l, a
    ld [hl], l

jr_0f9_467a:
    ld l, [hl]
    ld h, h
    jr nz, jr_0f9_46b3

    jr nz, jr_0f9_46ef

    daa
    ld h, e
    ld l, h

jr_0f9_4683:
    ld l, a
    ld h, e
    ld l, e
    nop
    ld [hl], h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, @+$6f

    ld l, a

jr_0f9_468e:
    ld [hl], d
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a

jr_0f9_4693:
    inc l
    nop
    ld d, e
    ld h, e

jr_0f9_4697:
    ld l, a
    ld [hl], h

jr_0f9_4699:
    ld [hl], h
    jr nz, @+$65

    ld h, c
    ld l, l

jr_0f9_469e:
    ld h, l
    jr nz, @+$6b

    ld l, [hl]
    jr nz, jr_0f9_4705

    ld l, [hl]
    ld h, h
    nop
    ld [hl], a
    ld l, a
    ld l, e
    ld h, l
    jr nz, @+$6f

jr_0f9_46ad:
    ld h, l
    jr nz, jr_0f9_4725

    ld [hl], b
    nop
    ld [hl], e

jr_0f9_46b3:
    ld [hl], l
    ld h, h
    ld h, h

jr_0f9_46b6:
    ld h, l
    ld l, [hl]
    ld l, h
    ld a, c
    ld l, $20
    ld c, b
    ld h, l
    jr nz, jr_0f9_4737

    ld h, c

jr_0f9_46c1:
    ld [hl], e
    nop
    ld [hl], a
    ld h, l
    ld h, c

jr_0f9_46c6:
    ld [hl], d
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$63

    nop

jr_0f9_46cd:
    ld [hl], b
    ld [hl], d
    ld l, a
    ld [hl], h
    ld h, l
    ld h, e
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, jr_0f9_474c

    ld [hl], l
    ld l, c
    ld [hl], h
    nop
    ld [hl], h
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_0f9_474f

    ld l, a
    ld l, a
    ld l, e
    ld [hl], e
    jr nz, jr_0f9_4755

    ld l, c
    ld l, e
    ld h, l
    jr nz, jr_0f9_474f

    nop

jr_0f9_46ef:
    ld [hl], e
    ld [hl], b
    ld h, c
    ld h, e
    ld h, l
    jr nz, jr_0f9_4769

    ld [hl], l
    ld l, c
    ld [hl], h
    ld l, $00
    ld [bc], a
    ld c, b
    ld h, l
    jr nz, jr_0f9_4774

    ld l, a
    ld l, h
    ld h, h
    nop
    ld l, l

jr_0f9_4705:
    ld h, l
    jr nz, jr_0f9_477c

    ld l, a
    jr nz, jr_0f9_477b

    ld [hl], l
    ld [hl], h
    jr nz, jr_0f9_477e

    ld l, [hl]
    ld h, l
    jr nz, jr_0f9_4774

    ld [hl], e
    nop
    ld [hl], a
    ld h, l
    ld l, h
    ld l, h
    ld l, $20
    ld c, c
    jr nz, jr_0f9_4786

    ld h, l
    ld h, c
    ld [hl], d
    ld h, h
    jr nz, jr_0f9_4798

    ld l, b

jr_0f9_4725:
    ld h, l
    ld [hl], d
    ld h, l
    nop
    ld [hl], a
    ld h, c
    ld [hl], e
    jr nz, jr_0f9_478f

    ld l, [hl]
    jr nz, jr_0f9_4792

    ld h, e
    ld h, e
    ld l, c
    ld h, h
    ld h, l
    ld l, [hl]

jr_0f9_4737:
    ld [hl], h
    jr nz, jr_0f9_47a3

    ld l, [hl]
    nop
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_0f9_47ad

    ld h, c
    ld h, d
    jr nz, jr_0f9_47ae

    ld l, [hl]
    jr nz, jr_0f9_47bc

    ld l, b
    ld h, l
    nop
    ld h, d

jr_0f9_474c:
    ld h, c
    ld [hl], e
    ld h, l

jr_0f9_474f:
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld l, $20

jr_0f9_4755:
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0f9_47c9

    ld l, a
    nop
    ld [hl], a
    ld l, a
    ld l, [hl]
    ld h, h
    ld h, l
    ld [hl], d
    inc l
    jr nz, jr_0f9_47da

    ld l, b
    ld l, a
    ld [hl], e

jr_0f9_4769:
    ld h, l
    nop
    ld [hl], d
    ld h, l
    ld [hl], e
    ld h, l
    ld h, c
    ld [hl], d
    ld h, e
    ld l, b
    ld h, l

jr_0f9_4774:
    ld [hl], d
    ld [hl], e
    jr nz, jr_0f9_47e6

    ld h, l
    db $76
    ld h, l

jr_0f9_477b:
    ld [hl], d

jr_0f9_477c:
    nop
    ld [hl], d

jr_0f9_477e:
    ld h, l
    ld [hl], e
    ld [hl], h
    inc l
    jr nz, jr_0f9_47e9

    db $76
    ld h, l

jr_0f9_4786:
    ld l, [hl]
    jr nz, jr_0f9_47ea

    ld [hl], h
    jr nz, jr_0f9_47fa

    ld l, c
    ld h, a
    ld l, b

jr_0f9_478f:
    ld [hl], h
    ld l, $00

jr_0f9_4792:
    ld bc, $614d
    ld a, c
    jr nz, jr_0f9_47c9

jr_0f9_4798:
    ld [hl-], a
    inc l
    jr nz, jr_0f9_47cd

    add hl, sp
    add hl, sp
    jr c, jr_0f9_47a0

jr_0f9_47a0:
    nop
    ld c, c
    daa

jr_0f9_47a3:
    db $76
    ld h, l
    jr nz, jr_0f9_4809

    ld h, l
    ld h, l
    ld l, [hl]
    jr nz, @+$79

    ld h, l

jr_0f9_47ad:
    ld h, c

jr_0f9_47ae:
    ld [hl], d
    ld l, c
    ld l, [hl]
    ld h, a
    nop
    ld [hl], h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_0f9_481a

    ld l, [hl]
    ld l, [hl]
    ld l, a

jr_0f9_47bc:
    ld a, c
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f9_4835

    ld [hl], b
    ld h, c
    ld h, e
    ld h, l
    nop
    ld [hl], e
    ld [hl], l

jr_0f9_47c9:
    ld l, c
    ld [hl], h
    jr nz, jr_0f9_4840

jr_0f9_47cd:
    ld l, c
    ld l, [hl]
    ld h, e
    ld h, l
    nop
    ld a, c
    ld h, l
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    ld h, h
    ld h, c

jr_0f9_47da:
    ld a, c
    inc l
    jr nz, jr_0f9_484b

    ld a, c
    jr nz, jr_0f9_4854

    ld l, e
    ld l, c
    ld l, [hl]
    nop
    ld h, a

jr_0f9_47e6:
    ld [hl], d
    ld l, a
    ld [hl], a

jr_0f9_47e9:
    ld [hl], e

jr_0f9_47ea:
    jr nz, jr_0f9_4859

    ld [hl], l
    ld [hl], e
    ld [hl], h
    ld a, c
    jr nz, jr_0f9_4853

    ld l, [hl]
    ld h, h
    nop
    ld h, [hl]
    ld h, l
    ld h, l
    ld l, h
    ld [hl], e

jr_0f9_47fa:
    jr nz, @+$78

    ld h, l
    ld [hl], d
    ld a, c
    jr nz, jr_0f9_486a

    ld [hl], h
    ld h, e
    ld l, b
    ld a, c
    ld l, $00
    ld b, d
    ld a, c

jr_0f9_4809:
    jr nz, @+$79

    ld h, c
    ld a, c
    jr nz, jr_0f9_487e

    ld h, [hl]
    jr nz, jr_0f9_4884

    ld h, l
    db $76
    ld h, l
    ld l, [hl]
    ld h, a
    ld h, l
    inc l
    nop

jr_0f9_481a:
    ld c, c
    jr nz, jr_0f9_4881

    ld l, c
    ld h, h
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_0f9_488a

    ld h, l
    ld h, l
    ld h, h
    jr nz, jr_0f9_489d

    ld l, b
    ld l, a
    ld [hl], e
    ld h, l
    nop
    ld h, h
    ld l, a
    ld h, a
    ld [hl], e
    jr nz, jr_0f9_48a8

    ld l, a

jr_0f9_4835:
    ld h, h
    ld h, c
    ld a, c
    ld l, $20
    ld c, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_0f9_4888

    nop

jr_0f9_4840:
    ld h, [hl]
    ld h, l
    ld h, l
    ld l, h
    jr nz, jr_0f9_48a8

    ld h, l
    ld [hl], h
    ld [hl], h
    ld h, l
    ld [hl], d

jr_0f9_484b:
    ld l, $00
    ld bc, $614d
    ld a, c
    jr nz, jr_0f9_4884

jr_0f9_4853:
    inc sp

jr_0f9_4854:
    inc l
    jr nz, jr_0f9_4888

    add hl, sp
    add hl, sp

jr_0f9_4859:
    jr c, jr_0f9_485b

jr_0f9_485b:
    nop
    ld c, c
    jr nz, jr_0f9_48d6

    ld h, l
    ld l, [hl]
    ld [hl], h
    jr nz, jr_0f9_48d8

    ld l, a
    jr nz, jr_0f9_48db

    ld l, b
    ld h, l
    nop

jr_0f9_486a:
    ld l, l
    ld h, l
    ld h, h
    ld l, c
    ld h, e
    ld h, c
    ld l, h
    jr nz, jr_0f9_48e5

    ld l, a
    ld l, a
    ld l, l
    nop
    ld h, d
    ld h, l
    ld h, e
    ld h, c
    ld [hl], l
    ld [hl], e
    ld h, l

jr_0f9_487e:
    jr nz, jr_0f9_48ed

    ld a, c

jr_0f9_4881:
    jr nz, jr_0f9_48e5

    ld h, c

jr_0f9_4884:
    ld h, e
    ld l, e
    jr nz, jr_0f9_48f1

jr_0f9_4888:
    ld [hl], e
    nop

jr_0f9_488a:
    ld h, c
    ld l, h
    ld l, h
    jr nz, @+$75

    ld [hl], a
    ld l, a
    ld l, h
    ld l, h
    ld h, l
    ld l, [hl]
    jr nz, @+$63

    ld l, [hl]
    ld h, h
    nop
    ld h, [hl]
    ld h, l
    ld h, l

jr_0f9_489d:
    ld l, h
    ld [hl], e
    jr nz, jr_0f9_490a

    ld [hl], h
    ld h, e
    ld l, b
    ld a, c
    ld l, $20
    ld d, h

jr_0f9_48a8:
    ld l, b
    ld h, l
    ld a, c
    nop
    ld [hl], b
    ld [hl], l
    ld [hl], h
    jr nz, jr_0f9_4912

    jr nz, jr_0f9_4915

    ld l, c
    ld h, a
    jr nz, @+$64

    ld h, c
    ld l, [hl]
    ld h, h
    ld h, c
    ld h, a
    ld h, l
    nop
    ld l, a
    ld l, [hl]
    jr nz, jr_0f9_492f

    ld a, c
    jr nz, jr_0f9_4927

    ld h, c
    ld h, e
    ld l, e
    inc l
    jr nz, jr_0f9_492c

    ld l, [hl]
    ld h, h
    jr nz, jr_0f9_4943

    ld l, b
    ld h, l
    nop
    ld h, h
    ld l, a
    ld h, e
    ld [hl], h

jr_0f9_48d6:
    ld l, a
    ld [hl], d

jr_0f9_48d8:
    jr nz, jr_0f9_494e

    ld l, a

jr_0f9_48db:
    ld l, h
    ld h, h
    jr nz, jr_0f9_494c

    ld h, l
    jr nz, jr_0f9_492b

    nop
    ld h, h
    ld l, c

jr_0f9_48e5:
    ld h, h
    jr nz, jr_0f9_4956

    ld l, a
    ld [hl], h
    jr nz, jr_0f9_495a

    ld h, l

jr_0f9_48ed:
    ld h, l
    ld h, h
    jr nz, jr_0f9_4965

jr_0f9_48f1:
    ld l, a
    nop
    ld [hl], a
    ld h, l
    ld h, c
    ld [hl], d
    jr nz, jr_0f9_496d

    ld l, b
    ld h, l
    jr nz, jr_0f9_4970

    ld [hl], b
    ld h, c
    ld h, e
    ld h, l
    jr nz, @+$75

    ld [hl], l
    ld l, c
    ld [hl], h
    nop
    ld h, c
    ld l, [hl]
    ld a, c

jr_0f9_490a:
    jr nz, jr_0f9_4979

    ld l, a
    ld [hl], d
    ld h, l
    ld l, $20
    ld c, c

jr_0f9_4912:
    jr nz, jr_0f9_497b

    ld [hl], l

jr_0f9_4915:
    ld h, l
    ld [hl], e
    ld [hl], e
    jr nz, jr_0f9_4963

    nop
    ld h, e
    ld h, c
    ld l, [hl]
    jr nz, @+$75

    ld l, h
    ld h, l
    ld h, l
    ld [hl], b
    jr nz, jr_0f9_499d

    ld h, l

jr_0f9_4927:
    ld l, h
    ld l, h
    nop
    ld [hl], h

jr_0f9_492b:
    ld l, a

jr_0f9_492c:
    ld l, [hl]
    ld l, c
    ld h, a

jr_0f9_492f:
    ld l, b
    ld [hl], h
    ld l, $00
    ld c, l
    ld h, c
    ld a, c
    jr nz, jr_0f9_4969

    inc [hl]
    inc l
    jr nz, jr_0f9_496d

    add hl, sp
    add hl, sp
    jr c, jr_0f9_4940

jr_0f9_4940:
    nop
    ld d, a
    ld l, b

jr_0f9_4943:
    ld h, l
    ld l, [hl]
    jr nz, jr_0f9_4990

    jr nz, jr_0f9_49c0

    ld l, a
    ld l, e
    ld h, l

jr_0f9_494c:
    jr nz, jr_0f9_49c3

jr_0f9_494e:
    ld [hl], b
    jr nz, jr_0f9_49c5

    ld l, b
    ld l, c
    ld [hl], e
    nop
    ld l, l

jr_0f9_4956:
    ld l, a
    ld [hl], d
    ld l, [hl]
    ld l, c

jr_0f9_495a:
    ld l, [hl]
    ld h, a
    inc l
    jr nz, jr_0f9_49a8

    jr nz, jr_0f9_49c7

    ld l, a
    ld [hl], l

jr_0f9_4963:
    ld l, [hl]
    ld h, h

jr_0f9_4965:
    nop
    ld h, c
    ld l, [hl]
    ld l, a

jr_0f9_4969:
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d

jr_0f9_496d:
    jr nz, jr_0f9_49d1

    ld l, h

jr_0f9_4970:
    ld l, c
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_0f9_49e6

    ld l, [hl]
    nop

jr_0f9_4979:
    ld l, l
    ld a, c

jr_0f9_497b:
    jr nz, jr_0f9_49e3

    ld l, a
    ld l, a
    ld [hl], h
    ld l, $20
    ld c, c
    ld [hl], h
    jr nz, jr_0f9_49fd

    ld h, c
    ld [hl], e
    nop
    ld h, c
    ld l, [hl]
    ld l, [hl]
    ld l, a
    ld a, c
    ld l, c
    ld l, [hl]

jr_0f9_4990:
    ld h, a
    inc l
    jr nz, jr_0f9_49f5

    ld l, [hl]
    ld h, h
    jr nz, jr_0f9_49e1

    nop
    ld h, l
    ld l, [hl]
    ld h, h
    ld h, l

jr_0f9_499d:
    ld h, h
    jr nz, jr_0f9_4a15

    ld [hl], b
    jr nz, jr_0f9_4a07

    ld [hl], d
    ld h, c
    ld h, a
    ld h, a
    ld l, c

jr_0f9_49a8:
    ld l, [hl]
    ld h, a
    nop
    ld l, l
    ld a, c
    jr nz, jr_0f9_4a15

    ld l, a
    ld l, a
    ld [hl], h
    jr nz, jr_0f9_4a15

    ld [hl], e
    jr nz, jr_0f9_4a00

    jr nz, jr_0f9_4a30

    ld h, l
    ld l, [hl]
    ld [hl], h
    jr nz, jr_0f9_4a32

    ld l, a
    nop

jr_0f9_49c0:
    ld [hl], h
    ld l, b
    ld h, l

jr_0f9_49c3:
    jr nz, @+$66

jr_0f9_49c5:
    ld l, a
    ld h, a

jr_0f9_49c7:
    ld [hl], e
    daa
    jr nz, jr_0f9_4a3b

    ld h, l
    ld l, [hl]
    ld l, $20
    ld d, h
    ld l, b

jr_0f9_49d1:
    ld h, l
    ld a, c
    nop
    ld l, b
    ld h, c
    db $76
    ld h, l
    jr nz, jr_0f9_4a3c

    ld h, l
    ld h, l
    ld l, [hl]
    jr nz, jr_0f9_4a50

    ld [hl], l
    ld l, c

jr_0f9_49e1:
    ld h, l
    ld [hl], h

jr_0f9_49e3:
    nop
    ld [hl], e
    ld l, c

jr_0f9_49e6:
    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, jr_0f9_4a58

    ld l, a
    ld [hl], d
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a
    inc l
    jr nz, @+$79

    ld l, b

jr_0f9_49f5:
    ld l, c
    ld h, e
    ld l, b
    nop
    ld l, c
    ld [hl], e
    jr nz, @+$78

jr_0f9_49fd:
    ld h, l
    ld [hl], d
    ld a, c

jr_0f9_4a00:
    jr nz, jr_0f9_4a77

    ld l, [hl]
    ld [hl], l
    ld [hl], e
    ld [hl], l
    ld h, c

jr_0f9_4a07:
    ld l, h
    ld l, $00
    ld [bc], a
    ld c, c
    jr nz, jr_0f9_4a74

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, jr_0f9_4a88

    ld l, b

jr_0f9_4a15:
    ld h, c
    ld [hl], h
    jr nz, jr_0f9_4a8c

    ld l, a
    ld l, l
    ld h, l
    jr nz, jr_0f9_4a8d

    ld h, [hl]
    nop
    ld [hl], h
    ld l, b
    ld h, l
    ld l, l
    jr nz, jr_0f9_4a8e

    ld h, c
    ld h, h
    jr nz, @+$67

    ld [hl], e
    ld h, e
    ld h, c
    ld [hl], b
    ld h, l
    ld h, h

jr_0f9_4a30:
    ld l, $00

jr_0f9_4a32:
    ld c, c
    daa
    ld l, h
    ld l, h
    jr nz, jr_0f9_4a9a

    ld h, l
    jr nz, jr_0f9_4aa4

jr_0f9_4a3b:
    ld l, [hl]

jr_0f9_4a3c:
    jr nz, jr_0f9_4ab0

    ld h, l
    ld h, c
    ld l, h
    nop
    ld [hl], h
    ld [hl], d
    ld l, a
    ld [hl], l
    ld h, d
    ld l, h
    ld h, l
    jr nz, jr_0f9_4ab4

    ld h, [hl]
    jr nz, jr_0f9_4ac2

    ld l, b
    ld h, l

jr_0f9_4a50:
    nop
    ld l, b
    ld l, c
    ld h, a
    ld l, b
    ld h, l
    ld [hl], d
    dec l

jr_0f9_4a58:
    ld [hl], l
    ld [hl], b
    ld [hl], e
    jr nz, jr_0f9_4ac3

    ld l, c
    ld l, [hl]
    ld h, h
    jr nz, jr_0f9_4ad1

    ld [hl], l
    ld [hl], h
    ld l, $00
    ld bc, $614d
    ld a, c
    jr nz, jr_0f9_4a9d

    dec [hl]
    inc l
    jr nz, jr_0f9_4aa1

    add hl, sp
    add hl, sp
    jr c, jr_0f9_4a74

jr_0f9_4a74:
    nop
    ld b, l
    db $76

jr_0f9_4a77:
    ld h, l
    ld l, [hl]
    jr nz, jr_0f9_4aef

    ld l, b
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    jr nz, jr_0f9_4acb

    jr nz, jr_0f9_4ae8

    ld l, c
    ld h, h
    ld l, [hl]
    daa

jr_0f9_4a88:
    ld [hl], h
    nop
    ld h, [hl]
    ld h, l

jr_0f9_4a8c:
    ld h, l

jr_0f9_4a8d:
    ld l, h

jr_0f9_4a8e:
    jr nz, @+$79

    ld h, l
    ld l, h
    ld l, h
    inc l
    jr nz, @+$4b

    jr nz, jr_0f9_4afc

    ld h, l
    ld h, e

jr_0f9_4a9a:
    ld l, c
    ld h, h
    ld h, l

jr_0f9_4a9d:
    ld h, h
    nop
    ld [hl], h
    ld l, a

jr_0f9_4aa1:
    jr nz, jr_0f9_4b0a

    ld l, a

jr_0f9_4aa4:
    jr nz, jr_0f9_4b1a

    ld l, a
    jr nz, jr_0f9_4b1c

    ld h, l
    ld h, l
    jr nz, @+$50

    ld h, c
    ld l, [hl]
    ld h, e

jr_0f9_4ab0:
    ld a, c
    ld l, $00
    ld c, c

jr_0f9_4ab4:
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0f9_4b26

    ld a, c
    jr nz, jr_0f9_4b22

    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    jr nz, jr_0f9_4b26

jr_0f9_4ac2:
    ld h, c

jr_0f9_4ac3:
    ld a, c
    nop
    ld l, a
    ld h, [hl]
    ld h, [hl]
    jr nz, jr_0f9_4b33

    ld l, [hl]

jr_0f9_4acb:
    jr nz, @+$63

    jr nz, jr_0f9_4b3b

    ld l, a
    ld l, [hl]

jr_0f9_4ad1:
    ld h, a
    jr nz, jr_0f9_4b48

    ld l, c
    ld l, l
    ld h, l
    ld l, $00
    ld b, d
    ld [hl], l
    ld [hl], h
    jr nz, jr_0f9_4b27

    jr nz, jr_0f9_4b57

    ld h, c
    ld [hl], e
    jr nz, jr_0f9_4b57

    ld [hl], h
    ld l, a
    ld [hl], b
    ld [hl], b

jr_0f9_4ae8:
    ld h, l
    ld h, h
    jr nz, jr_0f9_4b4e

    ld a, c
    nop
    ld [hl], h

jr_0f9_4aef:
    ld l, b
    ld h, l
    jr nz, @+$69

    ld [hl], l
    ld h, c
    ld [hl], d
    ld h, h
    jr nz, jr_0f9_4b68

    ld l, [hl]
    jr nz, jr_0f9_4b70

jr_0f9_4afc:
    ld l, b
    ld h, l
    jr nz, jr_0f9_4b77

    ld h, c
    ld a, c
    nop
    ld l, a
    ld [hl], l
    ld [hl], h
    ld l, $20
    ld d, h
    ld l, b

jr_0f9_4b0a:
    ld h, l
    ld a, c
    jr nz, jr_0f9_4b81

    ld h, c
    ld a, c
    jr nz, jr_0f9_4b86

    ld l, b
    ld h, l
    nop
    ld h, e
    ld l, a
    ld l, l
    ld [hl], b
    ld h, c

jr_0f9_4b1a:
    ld l, [hl]
    ld a, c

jr_0f9_4b1c:
    jr nz, jr_0f9_4b86

    ld h, c
    ld [hl], e
    jr nz, jr_0f9_4b91

jr_0f9_4b22:
    ld [hl], d
    ld h, h
    ld h, l
    ld [hl], d

jr_0f9_4b26:
    ld h, l

jr_0f9_4b27:
    ld h, h
    nop
    ld [hl], h
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_0f9_4b9d

    ld l, a
    jr nz, jr_0f9_4ba1

    ld l, [hl]

jr_0f9_4b33:
    ld h, l
    jr nz, jr_0f9_4ba2

    ld h, l
    ld h, c
    db $76
    ld h, l
    nop

jr_0f9_4b3b:
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_0f9_4ba7

    ld [hl], d
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld [hl], e
    ld l, $20

jr_0f9_4b48:
    ld c, c
    jr nz, jr_0f9_4bae

    ld h, c
    ld l, [hl]
    daa

jr_0f9_4b4e:
    ld [hl], h
    nop
    ld h, l
    db $76
    ld h, l
    ld l, [hl]
    jr nz, jr_0f9_4bc3

    ld h, c

jr_0f9_4b57:
    ld l, e
    ld h, l
    jr nz, jr_0f9_4bbc

    jr nz, jr_0f9_4bcd

    ld l, b
    ld l, a
    ld l, [hl]
    ld h, l
    nop
    ld h, e
    ld h, c
    ld l, h
    ld l, h
    ld l, $20

jr_0f9_4b68:
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_0f9_4bd9

    ld l, c
    ld l, [hl]

jr_0f9_4b70:
    ld h, h
    jr nz, jr_0f9_4be2

    ld h, [hl]
    nop
    ld l, d
    ld l, a

jr_0f9_4b77:
    ld l, e
    ld h, l
    jr nz, jr_0f9_4be4

    ld [hl], e
    jr nz, jr_0f9_4bf2

    ld l, b
    ld l, c
    ld [hl], e

jr_0f9_4b81:
    ccf
    ld hl, $4d00
    ld h, c

jr_0f9_4b86:
    ld a, c
    jr nz, jr_0f9_4bba

    ld [hl], $2c
    jr nz, jr_0f9_4bbe

    add hl, sp
    add hl, sp
    jr c, jr_0f9_4b91

jr_0f9_4b91:
    nop
    ld c, c
    jr nz, jr_0f9_4bfd

    ld h, l
    ld h, c
    ld [hl], d
    ld h, h
    jr nz, jr_0f9_4bfc

    jr nz, jr_0f9_4c0f

jr_0f9_4b9d:
    ld h, l
    ld [hl], e
    ld h, l
    ld h, c

jr_0f9_4ba1:
    ld [hl], d

jr_0f9_4ba2:
    ld h, e
    ld l, b
    ld h, l
    ld [hl], d
    nop

jr_0f9_4ba7:
    ld [hl], a
    ld l, b
    ld l, a
    jr nz, jr_0f9_4c20

    ld [hl], d
    ld l, c

jr_0f9_4bae:
    ld h, l
    ld h, h
    jr nz, jr_0f9_4c26

    ld l, a
    jr nz, @+$67

    ld [hl], e
    ld h, e
    ld h, c
    ld [hl], b
    ld h, l

jr_0f9_4bba:
    nop
    ld h, [hl]

jr_0f9_4bbc:
    ld [hl], d
    ld l, a

jr_0f9_4bbe:
    ld l, l
    jr nz, jr_0f9_4c35

    ld l, b
    ld l, c

jr_0f9_4bc3:
    ld [hl], e
    jr nz, jr_0f9_4c33

    ld h, c
    ld l, [hl]
    ld [hl], e
    ld l, c
    ld l, a
    ld l, [hl]
    nop

jr_0f9_4bcd:
    ld [hl], a
    ld h, c
    ld [hl], e
    jr nz, jr_0f9_4c45

    ld l, b
    ld l, a
    ld [hl], h
    jr nz, @+$6e

    ld h, c
    ld [hl], e

jr_0f9_4bd9:
    ld [hl], h
    jr nz, jr_0f9_4c4a

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    ld l, $00

jr_0f9_4be2:
    ld c, l
    ld a, c

jr_0f9_4be4:
    jr nz, @+$67

    ld l, [hl]
    ld [hl], h
    ld l, c
    ld [hl], d
    ld h, l
    jr nz, jr_0f9_4c4f

    ld l, a
    ld h, h
    ld a, c
    jr nz, @+$68

jr_0f9_4bf2:
    ld h, l
    ld h, l
    ld l, h
    ld [hl], e
    nop
    ld h, d
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld l, c

jr_0f9_4bfc:
    ld l, [hl]

jr_0f9_4bfd:
    ld h, a
    jr nz, jr_0f9_4c61

    ld l, [hl]
    ld h, h
    jr nz, jr_0f9_4c6d

    ld [hl], h
    ld h, e
    ld l, b
    ld a, c
    jr nz, jr_0f9_4c6b

    ld [hl], h
    nop
    ld l, [hl]
    ld l, c
    ld h, a

jr_0f9_4c0f:
    ld l, b
    ld [hl], h
    ld l, $20
    ld d, a
    ld l, b
    ld h, l
    ld l, [hl]
    jr nz, jr_0f9_4c62

    jr nz, jr_0f9_4c92

    ld h, c
    ld [hl], e
    nop
    ld [hl], e
    ld h, e

jr_0f9_4c20:
    ld [hl], d
    ld h, c
    ld [hl], h
    ld h, e
    ld l, b
    ld l, c

jr_0f9_4c26:
    ld l, [hl]
    ld h, a
    jr nz, jr_0f9_4c9e

    ld l, b
    ld h, l
    nop
    ld [hl], e
    ld [hl], a
    ld h, l
    ld l, h
    ld l, h
    ld l, c

jr_0f9_4c33:
    ld l, [hl]
    ld h, a

jr_0f9_4c35:
    jr nz, jr_0f9_4ca6

    ld l, [hl]
    jr nz, jr_0f9_4ca7

    ld a, c
    jr nz, jr_0f9_4c9e

    ld [hl], d
    ld l, l
    inc l
    nop
    ld h, c
    jr nz, jr_0f9_4cb0

    ld [hl], l

jr_0f9_4c45:
    ld l, l
    ld [hl], b
    jr nz, jr_0f9_4cb8

    ld h, [hl]

jr_0f9_4c4a:
    jr nz, jr_0f9_4cbe

    ld l, a
    ld [hl], h
    ld [hl], h

jr_0f9_4c4f:
    ld h, l
    ld l, [hl]
    nop
    ld h, [hl]
    ld l, h
    ld h, l
    ld [hl], e
    ld l, b
    jr nz, jr_0f9_4cbd

    ld [hl], d
    ld l, a
    ld [hl], b
    ld [hl], b
    ld h, l
    ld h, h
    jr nz, jr_0f9_4cd0

jr_0f9_4c61:
    ld h, [hl]

jr_0f9_4c62:
    ld h, [hl]
    ld l, $00
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_0f9_4cdf

jr_0f9_4c6b:
    ld l, b
    ld h, l

jr_0f9_4c6d:
    jr nz, jr_0f9_4cd7

    ld h, l
    ld l, h
    ld l, h
    jr nz, @+$6b

    ld [hl], e
    nop
    ld l, b
    ld h, c
    ld [hl], b
    ld [hl], b
    ld h, l
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f9_4cf5

    ld l, a
    jr nz, jr_0f9_4cf1

    ld h, l
    ccf
    nop
    ld bc, $614d
    ld a, c
    jr nz, jr_0f9_4cbe

    add hl, sp
    inc l
    jr nz, jr_0f9_4cc2

    add hl, sp

jr_0f9_4c92:
    add hl, sp
    jr c, jr_0f9_4c95

jr_0f9_4c95:
    nop
    ld b, [hl]
    ld h, l
    db $76
    ld h, l
    ld [hl], d
    jr nz, jr_0f9_4d04

    ld l, a

jr_0f9_4c9e:
    jr nz, jr_0f9_4d02

    ld [hl], l
    ld [hl], h
    jr nz, jr_0f9_4d0d

    ld [hl], h
    ld h, e

jr_0f9_4ca6:
    ld l, b

jr_0f9_4ca7:
    ld a, c
    ld l, $00
    ld c, b
    ld [hl], l
    ld l, [hl]
    ld h, a
    ld [hl], d
    ld a, c

jr_0f9_4cb0:
    jr nz, jr_0f9_4d13

    ld l, [hl]
    ld h, h
    jr nz, jr_0f9_4d1b

    ld h, c
    ld [hl], h

jr_0f9_4cb8:
    nop
    ld h, h
    ld l, a
    ld h, a
    ld h, a

jr_0f9_4cbd:
    ld l, c

jr_0f9_4cbe:
    ld h, l
    jr nz, @+$68

    ld l, a

jr_0f9_4cc2:
    ld l, a
    ld h, h
    ld l, $20
    ld c, c
    ld [hl], h
    ld h, e
    ld l, b
    ld a, c
    nop
    ld l, c
    ld [hl], h
    ld h, e
    ld l, b

jr_0f9_4cd0:
    ld a, c
    jr nz, jr_0f9_4d26

    ld h, e
    ld l, a
    ld [hl], h
    ld [hl], h

jr_0f9_4cd7:
    jr nz, jr_0f9_4d3c

    ld h, c
    ld l, l
    ld h, l
    ld l, $00
    ld d, l

jr_0f9_4cdf:
    ld h, a
    ld l, h
    ld a, c
    jr nz, jr_0f9_4d4a

    ld h, c
    ld h, e
    ld h, l
    jr nz, jr_0f9_4d5c

    ld l, a
    nop
    ld l, e
    ld l, c
    ld l, h
    ld l, h
    ld h, l
    ld h, h

jr_0f9_4cf1:
    jr nz, jr_0f9_4d5b

    ld l, c
    ld l, l

jr_0f9_4cf5:
    ld l, $00
    ld d, h
    ld h, c
    ld [hl], e
    ld [hl], h
    ld a, c
    ld l, $00
    ld bc, $7449
    ld h, e

jr_0f9_4d02:
    ld l, b
    ld a, c

jr_0f9_4d04:
    ld l, $00
    ld d, h
    ld h, c
    ld [hl], e
    ld [hl], h
    ld a, c
    ld l, $00

jr_0f9_4d0d:
    ld bc, $2034
    ld h, h
    ld h, c
    ld a, c

jr_0f9_4d13:
    ld [hl], e
    jr nz, jr_0f9_4d7e

    ld h, c
    db $76
    ld h, l
    jr nz, jr_0f9_4d8b

jr_0f9_4d1b:
    ld h, c
    ld [hl], e
    ld [hl], e
    ld h, l
    ld h, h
    nop
    ld [hl], e
    ld l, c
    ld l, [hl]
    ld h, e
    ld h, l

jr_0f9_4d26:
    jr nz, jr_0f9_4d9c

    ld l, b
    ld h, l
    jr nz, jr_0f9_4d8d

    ld h, e
    ld h, e
    ld l, c
    ld h, h
    ld h, l
    ld l, [hl]
    ld [hl], h
    inc l
    nop
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_0f9_4dae

    ld l, b
    ld h, l

jr_0f9_4d3c:
    jr nz, jr_0f9_4dae

    ld l, h
    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_0f9_4da5

    ld [hl], h
    nop
    ld d, b
    ld l, a
    ld l, c
    ld l, [hl]

jr_0f9_4d4a:
    ld [hl], h
    jr nz, jr_0f9_4d81

    ld [hl-], a
    jr nz, jr_0f9_4db9

    ld [hl], e
    jr nz, jr_0f9_4dba

    ld [hl], d
    ld l, a
    ld [hl], a
    ld l, c
    ld l, [hl]
    ld h, a
    nop
    ld h, c

jr_0f9_4d5b:
    ld l, l

jr_0f9_4d5c:
    ld h, c
    ld a, d
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, h
    ld a, c
    jr nz, jr_0f9_4dcb

    ld h, c
    ld [hl], e
    ld [hl], h
    ld l, $00
    nop
    ld c, c
    ld [hl], h
    jr nz, jr_0f9_4dd7

    ld h, c
    ld [hl], e
    jr nz, jr_0f9_4dd5

    ld h, l
    ld h, l
    ld l, [hl]
    jr nz, jr_0f9_4ddd

    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, e
    ld [hl], h
    ld h, l

jr_0f9_4d7e:
    ld h, h
    nop
    ld h, d

jr_0f9_4d81:
    ld a, c
    jr nz, jr_0f9_4df8

    ld l, b
    ld h, l
    jr nz, jr_0f9_4ddc

    dec l
    ld d, [hl]
    ld l, c

jr_0f9_4d8b:
    ld [hl], d
    ld [hl], l

jr_0f9_4d8d:
    ld [hl], e
    nop
    ld h, h
    ld l, c
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld l, h
    ld a, c
    jr nz, jr_0f9_4e10

jr_0f9_4d9c:
    ld l, b
    ld h, c
    ld l, [hl]
    nop
    ld l, a
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d

jr_0f9_4da5:
    jr nz, jr_0f9_4e17

    ld l, h
    ld h, c
    ld l, [hl]
    ld [hl], h
    ld [hl], e
    jr nz, jr_0f9_4e16

jr_0f9_4dae:
    ld h, c
    db $76
    ld h, l
    nop
    ld h, d
    ld h, l
    ld h, l
    ld l, [hl]
    inc l
    jr nz, jr_0f9_4e1a

jr_0f9_4db9:
    ld l, [hl]

jr_0f9_4dba:
    ld h, h
    jr nz, jr_0f9_4e30

    ld l, b
    ld l, a
    ld [hl], a
    ld [hl], e
    nop
    ld [hl], l
    ld l, [hl]
    ld l, c
    ld [hl], c
    ld [hl], l
    ld h, l
    jr nz, jr_0f9_4e3d

    ld l, b

jr_0f9_4dcb:
    ld h, c
    ld [hl], b
    ld h, l
    jr nz, jr_0f9_4e39

    ld l, [hl]
    nop
    ld h, c
    ld h, h
    ld h, h

jr_0f9_4dd5:
    ld l, c
    ld [hl], h

jr_0f9_4dd7:
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, jr_0f9_4e50

jr_0f9_4ddc:
    ld l, a

jr_0f9_4ddd:
    jr nz, jr_0f9_4e48

    ld [hl], h
    ld [hl], e
    nop
    ld [hl], e
    ld l, c
    ld a, d
    ld h, l
    ld l, $20
    ld c, h
    ld l, a
    ld l, a
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f9_4e52

    ld [hl], h
    jr nz, jr_0f9_4e68

    ld l, b
    ld h, l
    nop
    ld [hl], a

jr_0f9_4df8:
    ld h, c
    ld a, c
    jr nz, @+$6b

    ld [hl], h
    jr nz, jr_0f9_4e61

    ld h, l
    ld l, b
    ld h, c
    db $76
    ld h, l
    ld [hl], e
    inc l
    jr nz, @+$6b

    ld [hl], h
    nop
    ld l, c
    ld [hl], e
    jr nz, @+$70

    ld l, a
    ld [hl], a

jr_0f9_4e10:
    jr nz, jr_0f9_4e76

    ld l, c
    ld h, [hl]
    ld h, [hl]
    ld l, c

jr_0f9_4e16:
    ld h, e

jr_0f9_4e17:
    ld [hl], l
    ld l, h
    ld [hl], h

jr_0f9_4e1a:
    jr nz, jr_0f9_4e90

    ld l, a
    nop
    ld h, h
    ld h, l
    ld [hl], h
    ld h, l
    ld [hl], d
    ld l, l
    ld l, c
    ld l, [hl]
    ld h, l
    jr nz, @+$79

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_0f9_4e99

    ld l, c
    ld l, [hl]

jr_0f9_4e30:
    ld h, h
    nop
    ld l, a
    ld h, [hl]
    jr nz, jr_0f9_4ea6

    ld l, h
    ld h, c
    ld l, [hl]

jr_0f9_4e39:
    ld [hl], h
    jr nz, jr_0f9_4ea5

    ld [hl], h

jr_0f9_4e3d:
    jr nz, @+$79

    ld h, c
    ld [hl], e
    nop
    ld l, a
    ld [hl], d
    ld l, c
    ld h, a
    ld l, c
    ld l, [hl]

jr_0f9_4e48:
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    ld l, $00
    ld [bc], a
    ld d, h

jr_0f9_4e50:
    ld l, b
    ld h, l

jr_0f9_4e52:
    ld [hl], d
    ld h, l
    jr nz, jr_0f9_4eb7

    ld [hl], d
    ld h, l
    jr nz, jr_0f9_4ece

    ld [hl], a
    ld l, a
    jr nz, @+$79

    ld h, c
    ld a, c
    ld [hl], e

jr_0f9_4e61:
    nop
    ld l, c
    ld l, [hl]
    jr nz, jr_0f9_4edd

    ld l, b
    ld l, c

jr_0f9_4e68:
    ld h, e
    ld l, b
    jr nz, jr_0f9_4ebc

    ld l, h
    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_0f9_4ea6

    ld [hl-], a
    nop
    ld h, a
    ld h, c

jr_0f9_4e76:
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    ld [hl], e
    jr nz, jr_0f9_4eeb

    ld [hl], l
    ld [hl], h
    ld [hl], d
    ld l, c
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld l, $00
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_0f9_4ef2

    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h

jr_0f9_4e90:
    jr nz, jr_0f9_4f01

    ld l, [hl]
    ld h, l
    jr nz, jr_0f9_4eff

    ld [hl], e
    nop
    ld [hl], h

jr_0f9_4e99:
    ld l, b
    ld [hl], d
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    jr nz, jr_0f9_4f0a

    ld [hl], h
    ld [hl], e
    jr nz, @+$74

jr_0f9_4ea5:
    ld l, a

jr_0f9_4ea6:
    ld l, a
    ld [hl], h
    nop
    ld [hl], h
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_0f9_4f21

    ld h, l
    ld h, c
    ld h, e
    ld l, b
    ld h, l
    ld [hl], e
    jr nz, jr_0f9_4f20

jr_0f9_4eb7:
    ld l, [hl]
    ld [hl], h
    ld l, a
    nop
    ld [hl], h

jr_0f9_4ebc:
    ld l, b
    ld h, l
    jr nz, jr_0f9_4f22

    ld h, c
    ld [hl], e
    ld h, l
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld l, $00
    ld c, c
    ld l, l
    ld l, l
    ld h, l
    ld h, h

jr_0f9_4ece:
    ld l, c
    ld h, c
    ld [hl], h
    ld h, l
    ld l, h
    ld a, c
    jr nz, jr_0f9_4f37

    ld h, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    nop
    ld [hl], h
    ld l, b

jr_0f9_4edd:
    ld h, l
    jr nz, jr_0f9_4f41

    ld h, e
    ld h, e
    ld l, c
    ld h, h
    ld h, l
    ld l, [hl]
    ld [hl], h
    inc l
    jr nz, jr_0f9_4f4b

    nop

jr_0f9_4eeb:
    ld [hl], e
    ld h, e
    ld l, c
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld l, c

jr_0f9_4ef2:
    ld [hl], e
    ld [hl], h
    jr nz, jr_0f9_4f6d

    ld h, l
    ld l, [hl]
    ld [hl], h
    jr nz, jr_0f9_4f68

    ld h, c
    ld h, h
    nop
    ld h, c

jr_0f9_4eff:
    ld l, [hl]
    ld h, h

jr_0f9_4f01:
    jr nz, jr_0f9_4f65

    ld [hl], d
    ld l, a
    ld l, e
    ld h, l
    jr nz, jr_0f9_4f7d

    ld l, b

jr_0f9_4f0a:
    ld h, l
    jr nz, jr_0f9_4f84

    ld h, c
    ld [hl], h
    ld h, l
    ld [hl], d
    nop
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld l, e
    jr nz, jr_0f9_4f81

    ld l, [hl]
    jr nz, jr_0f9_4f8f

    ld l, b
    ld h, l
    nop
    ld h, d
    ld h, c

jr_0f9_4f20:
    ld [hl], e

jr_0f9_4f21:
    ld h, l

jr_0f9_4f22:
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld l, $20
    ld c, [hl]
    ld l, a
    ld [hl], a
    jr nz, @+$76

    ld l, b
    ld h, l
    nop
    ld h, d
    ld h, c
    ld [hl], e
    ld h, l
    ld l, l
    ld h, l
    ld l, [hl]

jr_0f9_4f37:
    ld [hl], h
    jr nz, jr_0f9_4fa3

    ld [hl], e
    jr nz, jr_0f9_4fa3

    ld l, c
    ld l, h
    ld l, h
    ld h, l

jr_0f9_4f41:
    ld h, h
    nop
    ld [hl], a
    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_0f9_4fc0

    ld h, c
    ld [hl], h

jr_0f9_4f4b:
    ld h, l
    ld [hl], d
    ld l, $20
    ld c, c
    ld [hl], h
    jr nz, jr_0f9_4fbc

    ld [hl], e
    nop
    ld h, l
    ld h, c
    ld [hl], e
    ld l, c
    ld l, h
    ld a, c
    jr nz, jr_0f9_4fc6

    ld l, l
    ld h, c
    ld h, a
    ld l, c
    ld l, [hl]
    ld h, c
    ld h, d
    ld l, h

jr_0f9_4f65:
    ld h, l
    nop
    ld [hl], h

jr_0f9_4f68:
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, @+$75

jr_0f9_4f6d:
    ld l, a
    ld l, l
    ld h, l
    jr nz, jr_0f9_4fd5

    ld l, b
    ld h, l
    ld l, l
    ld l, c
    ld h, e
    ld h, c
    ld l, h
    nop
    ld h, l
    ld l, h
    ld h, l

jr_0f9_4f7d:
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h

jr_0f9_4f81:
    ld [hl], e
    jr nz, jr_0f9_4ffb

jr_0f9_4f84:
    ld h, l
    ld [hl], d
    ld h, l
    nop
    ld h, d
    ld l, h
    ld h, l
    ld l, [hl]
    ld h, h
    ld h, l
    ld h, h

jr_0f9_4f8f:
    jr nz, jr_0f9_4ffa

    ld l, [hl]
    jr nz, jr_0f9_5008

    ld l, b
    ld h, l
    nop
    ld [hl], a
    ld h, c
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_0f9_4fff

    ld l, [hl]
    ld h, h
    jr nz, jr_0f9_5012

    ld [hl], d

jr_0f9_4fa3:
    ld l, a
    ld l, l
    ld l, a
    ld [hl], h
    ld h, l
    ld [hl], e
    nop
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_0f9_5018

    ld l, [hl]
    ld h, e
    ld [hl], d
    ld h, l
    ld h, h
    ld l, c
    ld h, d
    ld l, h
    ld a, c
    jr nz, jr_0f9_5020

    ld h, c
    ld [hl], e

jr_0f9_4fbc:
    ld [hl], h
    nop
    ld h, a
    ld [hl], d

jr_0f9_4fc0:
    ld l, a
    ld [hl], a
    ld [hl], h
    ld l, b
    jr nz, jr_0f9_5035

jr_0f9_4fc6:
    ld h, [hl]
    jr nz, @+$52

    ld l, h
    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_0f9_5003

    ld [hl-], a
    ld l, $00
    ld [bc], a
    ld b, c
    ld l, [hl]

jr_0f9_4fd5:
    ld l, a
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    jr nz, jr_0f9_504c

    ld h, c
    ld [hl], d
    ld [hl], h
    jr nz, jr_0f9_5050

    ld h, [hl]
    nop
    ld d, b
    ld l, h
    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_0f9_501e

    ld [hl-], a
    jr nz, jr_0f9_5053

    ld [hl], d
    ld l, a
    ld l, l
    jr nz, jr_0f9_5066

    ld l, b
    ld h, l
    nop
    ld h, d
    ld h, c
    ld [hl], e
    ld h, l
    ld l, l

jr_0f9_4ffa:
    ld h, l

jr_0f9_4ffb:
    ld l, [hl]
    ld [hl], h
    jr nz, jr_0f9_5066

jr_0f9_4fff:
    ld [hl], d
    ld l, a
    ld [hl], a
    ld [hl], e

jr_0f9_5003:
    nop
    ld [hl], h
    ld l, b
    ld [hl], d
    ld l, a

jr_0f9_5008:
    ld [hl], l
    ld h, a
    ld l, b
    jr nz, jr_0f9_5081

    ld l, b
    ld h, l
    jr nz, @+$66

    ld [hl], l

jr_0f9_5012:
    ld h, e
    ld [hl], h
    nop
    ld h, c
    ld l, [hl]
    ld h, h

jr_0f9_5018:
    jr nz, jr_0f9_5082

    ld h, c
    ld l, [hl]
    ld h, a
    ld [hl], e

jr_0f9_501e:
    jr nz, jr_0f9_5084

jr_0f9_5020:
    ld l, a
    ld [hl], a
    ld l, [hl]
    jr nz, jr_0f9_5091

    ld l, c
    ld l, e
    ld h, l
    nop
    ld [hl], e
    ld l, a
    jr nz, jr_0f9_509a

    ld h, c
    ld l, [hl]
    ld a, c
    jr nz, jr_0f9_5094

    ld [hl], l
    ld l, h
    ld h, d

jr_0f9_5035:
    ld [hl], e
    jr nz, jr_0f9_509e

    ld [hl], d
    ld l, a
    ld l, l
    nop
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_0f9_50a4

    ld h, l
    ld l, c
    ld l, h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f9_50b8

    ld h, [hl]
    nop
    ld h, [hl]

jr_0f9_504c:
    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h

jr_0f9_5050:
    jr nz, jr_0f9_50b8

    ld l, h

jr_0f9_5053:
    ld l, a
    ld l, a
    ld [hl], d
    ld l, $20
    ld c, l
    ld h, c
    ld l, [hl]
    ld a, c
    nop
    db $76
    ld l, c
    ld l, [hl]
    ld h, l
    ld [hl], e
    jr nz, jr_0f9_50c7

    ld l, a
    ld l, l

jr_0f9_5066:
    ld h, l
    jr nz, @+$71

    ld [hl], l
    ld [hl], h
    jr nz, @+$71

    ld h, [hl]
    nop
    ld [hl], h
    ld l, b
    ld l, a
    ld [hl], e
    ld h, l
    jr nz, @+$64

    ld [hl], l
    ld l, h
    ld h, d
    ld [hl], e
    inc l
    jr nz, jr_0f9_50de

    ld l, [hl]
    ld h, h
    nop
    ld [hl], h

jr_0f9_5081:
    ld l, b

jr_0f9_5082:
    ld h, l
    ld a, c

jr_0f9_5084:
    jr nz, jr_0f9_50e7

    ld [hl], d
    ld h, l
    jr nz, jr_0f9_50fe

    ld l, b
    ld h, l
    jr nz, jr_0f9_5101

    ld h, l
    ld h, e
    ld l, a

jr_0f9_5091:
    ld l, [hl]
    ld h, h
    nop

jr_0f9_5094:
    ld [hl], d
    ld h, l
    ld [hl], e
    ld l, a
    ld [hl], l
    ld [hl], d

jr_0f9_509a:
    ld h, e
    ld h, l
    jr nz, jr_0f9_5104

jr_0f9_509e:
    ld l, a
    ld [hl], d
    jr nz, jr_0f9_510b

    ld [hl], h
    ld [hl], e

jr_0f9_50a4:
    nop
    ld l, [hl]
    ld [hl], l
    ld [hl], h
    ld [hl], d
    ld l, c
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld l, $00
    ld [bc], a
    ld c, a
    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, jr_0f9_512a

    ld h, l

jr_0f9_50b8:
    ld l, [hl]
    ld [hl], e
    ld l, c
    ld l, [hl]
    ld h, a
    nop
    ld l, l
    ld l, a
    db $76
    ld h, l
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    inc l

jr_0f9_50c7:
    jr nz, jr_0f9_5119

    ld l, h
    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_0f9_5103

    ld [hl-], a
    nop
    ld [hl], e
    ld l, b
    ld l, a
    ld l, a
    ld [hl], h
    ld [hl], e
    jr nz, jr_0f9_5142

    ld [hl], h
    ld [hl], e
    jr nz, jr_0f9_5153

    ld l, c

jr_0f9_50de:
    ld l, [hl]
    ld h, l
    ld [hl], e
    nop
    ld h, c
    ld [hl], d
    ld l, a
    ld [hl], l
    ld l, [hl]

jr_0f9_50e7:
    ld h, h
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, @+$72

    ld [hl], d
    ld h, l
    ld a, c
    inc l
    nop
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_0f9_5160

    ld l, a
    ld l, h
    ld h, h
    ld [hl], e
    jr nz, jr_0f9_5167

jr_0f9_50fe:
    ld [hl], h
    ld l, $20

jr_0f9_5101:
    ld d, h
    ld l, b

jr_0f9_5103:
    ld h, l

jr_0f9_5104:
    ld l, [hl]
    nop
    ld l, c
    ld [hl], h
    jr nz, jr_0f9_517d

    ld [hl], h

jr_0f9_510b:
    ld h, c
    ld [hl], d
    ld [hl], h
    ld [hl], e
    jr nz, @+$75

    ld [hl], l
    ld h, e
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    nop
    ld [hl], l

jr_0f9_5119:
    ld [hl], b
    jr nz, jr_0f9_517e

    ld l, h
    ld l, a
    ld l, a
    ld h, h
    inc l
    jr nz, @+$77

    ld [hl], e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$76

    ld l, b

jr_0f9_512a:
    ld h, l
    nop
    ld [hl], e
    ld [hl], l
    ld h, e
    ld l, e
    ld h, l
    ld [hl], d
    ld [hl], e
    jr nz, jr_0f9_51a1

    ld l, a
    ld h, e
    ld h, c
    ld [hl], h
    ld h, l
    ld h, h
    jr nz, jr_0f9_519e

    ld [hl], h
    nop
    ld [hl], h
    ld l, b
    ld h, l

jr_0f9_5142:
    jr nz, jr_0f9_51a6

    ld h, c
    ld h, e
    ld l, e
    jr nz, jr_0f9_51b8

    ld h, [hl]
    jr nz, jr_0f9_51b5

    ld [hl], h
    ld [hl], e
    nop
    db $76
    ld l, c
    ld l, [hl]
    ld h, l

jr_0f9_5153:
    ld l, $00
    nop
    ld c, c
    ld [hl], h
    jr nz, jr_0f9_51bb

    ld l, h
    ld [hl], e
    ld l, a
    jr nz, jr_0f9_51c7

    ld h, c

jr_0f9_5160:
    ld [hl], e
    jr nz, jr_0f9_51d6

    ld l, a
    ld l, l
    ld h, l
    nop

jr_0f9_5167:
    ld l, c
    ld l, [hl]
    ld [hl], h
    ld h, l
    ld l, h
    ld l, h
    ld l, c
    ld h, a
    ld h, l
    ld l, [hl]
    ld h, e
    ld h, l
    inc l
    jr nz, jr_0f9_51d7

    ld l, [hl]
    ld h, h
    nop
    ld h, d
    ld l, h
    ld l, a
    ld h, e

jr_0f9_517d:
    ld l, e

jr_0f9_517e:
    ld [hl], e
    jr nz, jr_0f9_51f5

    ld l, b
    ld h, l
    jr nz, jr_0f9_51e9

    ld l, a
    ld l, a
    ld [hl], d
    jr nz, jr_0f9_51ec

    ld a, c
    nop
    ld [hl], h
    ld [hl], a
    ld l, c
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f9_51fe

    ld [hl], h
    ld [hl], e
    jr nz, @+$78

    ld l, c
    ld l, [hl]
    ld h, l
    jr nz, @+$76

jr_0f9_519e:
    ld l, a
    nop
    ld l, c

jr_0f9_51a1:
    ld [hl], h
    jr nz, jr_0f9_5209

    ld [hl], e
    ld [hl], b

jr_0f9_51a6:
    ld h, l
    ld h, e
    ld l, c
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    jr nz, jr_0f9_5226

    ld l, b
    ld h, l
    ld l, [hl]
    nop
    ld l, c
    ld [hl], h

jr_0f9_51b5:
    jr nz, jr_0f9_521a

    ld h, c

jr_0f9_51b8:
    ld [hl], b
    ld [hl], h
    ld [hl], l

jr_0f9_51bb:
    ld [hl], d
    ld h, l
    ld [hl], e
    jr nz, jr_0f9_5230

    ld [hl], d
    ld h, l
    ld a, c
    jr nz, @+$71

    ld [hl], d
    nop

jr_0f9_51c7:
    ld l, c
    ld [hl], e
    jr nz, jr_0f9_523e

    ld l, h
    ld h, l
    ld h, l
    ld [hl], b
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $00
    ld [bc], a
    ld d, e

jr_0f9_51d6:
    ld h, l

jr_0f9_51d7:
    db $76
    ld h, l
    ld [hl], d
    ld h, c
    ld l, h
    jr nz, @+$75

    ld [hl], h
    ld h, c
    ld h, [hl]
    ld h, [hl]
    nop
    ld l, l
    ld h, l
    ld l, l
    ld h, d
    ld h, l
    ld [hl], d

jr_0f9_51e9:
    ld [hl], e
    jr nz, jr_0f9_5254

jr_0f9_51ec:
    ld h, c
    db $76
    ld h, l
    jr nz, jr_0f9_5252

    ld l, h
    ld [hl], d
    ld h, l
    ld h, c

jr_0f9_51f5:
    ld h, h
    ld a, c
    nop
    ld h, [hl]
    ld h, c
    ld l, h
    ld l, h
    ld h, l
    ld l, [hl]

jr_0f9_51fe:
    jr nz, jr_0f9_5276

    ld l, c
    ld h, e
    ld [hl], h
    ld l, c
    ld l, l
    ld [hl], e
    jr nz, jr_0f9_527c

    ld l, a

jr_0f9_5209:
    nop
    ld [hl], h
    ld l, b
    ld l, c
    ld [hl], e
    ld l, $00
    ld bc, $4152
    ld b, e
    ld b, e
    ld c, a
    ld c, a
    ld c, [hl]
    jr nz, jr_0f9_526e

jr_0f9_521a:
    ld c, c
    ld c, l
    ld b, l
    ld d, e
    nop
    ld c, l
    ld b, c
    ld e, c
    jr nz, jr_0f9_5256

    scf
    inc l

jr_0f9_5226:
    jr nz, jr_0f9_5259

    add hl, sp
    add hl, sp
    jr c, jr_0f9_522c

jr_0f9_522c:
    nop
    ld b, c
    ld c, [hl]
    ld c, c

jr_0f9_5230:
    ld c, l
    ld b, c
    ld c, h
    jr nz, jr_0f9_5276

    ld d, h
    ld d, h
    ld b, c
    ld b, e
    ld c, e
    ccf
    nop
    ld d, a
    ld c, a

jr_0f9_523e:
    ld c, l
    ld b, c
    ld c, [hl]
    jr nz, @+$4f

    ld d, l
    ld d, h
    ld c, c
    ld c, h
    ld b, c
    ld d, h
    ld b, l
    ld b, h
    nop
    nop
    ld c, l
    ld h, c
    ld a, c
    jr nz, jr_0f9_5284

jr_0f9_5252:
    jr nc, jr_0f9_5282

jr_0f9_5254:
    nop
    ld b, c

jr_0f9_5256:
    ld [hl], d
    ld l, a
    ld [hl], l

jr_0f9_5259:
    ld l, [hl]
    ld h, h
    jr nz, jr_0f9_528e

    jr nc, jr_0f9_527f

    ld d, b
    ld c, l
    nop
    ld h, c
    jr nz, jr_0f9_5297

    jr nc, jr_0f9_5294

    ld a, c
    ld h, l
    ld h, c
    ld [hl], d
    jr nz, jr_0f9_52dc

    ld l, h

jr_0f9_526e:
    ld h, h
    jr nz, jr_0f9_52ea

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, a
    nop

jr_0f9_5276:
    ld [hl], a
    ld l, a
    ld l, l
    ld h, c
    ld l, [hl]
    daa

jr_0f9_527c:
    ld [hl], e
    jr nz, jr_0f9_52e1

jr_0f9_527f:
    ld l, a
    ld h, h
    ld a, c

jr_0f9_5282:
    jr nz, jr_0f9_52fb

jr_0f9_5284:
    ld h, c
    ld [hl], e
    nop
    ld h, [hl]
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, jr_0f9_52f0

jr_0f9_528e:
    ld a, c
    jr nz, jr_0f9_52f2

    jr nz, jr_0f9_5303

    ld h, c

jr_0f9_5294:
    ld [hl], e
    ld [hl], e
    ld h, l

jr_0f9_5297:
    ld [hl], d
    dec l
    ld h, d
    ld a, c
    nop
    ld l, a
    ld l, [hl]
    jr nz, jr_0f9_5314

    ld l, b
    ld h, l
    jr nz, jr_0f9_5310

    ld h, l
    ld h, [hl]
    ld [hl], h
    jr nz, jr_0f9_530b

    ld h, c
    ld l, [hl]
    ld l, e
    jr nz, jr_0f9_531d

    ld h, [hl]
    nop
    ld c, l
    ld h, c
    ld [hl], d
    ld h, d
    ld l, h
    ld h, l
    jr nz, @+$54

    ld l, c
    db $76
    ld h, l
    ld [hl], d
    jr nz, jr_0f9_5327

    ld l, [hl]
    nop
    ld b, e
    ld l, c
    ld h, h
    ld h, l
    ld [hl], d
    jr nz, jr_0f9_530b

    ld l, c
    ld [hl], e
    ld [hl], h
    ld [hl], d
    ld l, c
    ld h, e
    ld [hl], h
    jr nz, jr_0f9_533f

    ld h, [hl]
    nop
    ld d, d
    ld h, c
    ld h, e
    ld h, e
    ld l, a
    ld l, a
    ld l, [hl]
    jr nz, jr_0f9_531e

    ld l, c

jr_0f9_52dc:
    ld [hl], h
    ld a, c
    ld l, $00
    ld [bc], a

jr_0f9_52e1:
    ld d, d
    ld h, c
    ld h, e
    ld h, e
    ld l, a
    ld l, a
    ld l, [hl]
    jr nz, jr_0f9_535a

jr_0f9_52ea:
    ld l, a
    ld l, h
    ld l, c
    ld h, e
    ld h, l
    nop

jr_0f9_52f0:
    ld h, c
    ld [hl], e

jr_0f9_52f2:
    ld [hl], e
    ld [hl], l
    ld l, l
    ld h, l
    jr nz, jr_0f9_5361

    ld [hl], h
    jr nz, jr_0f9_536f

jr_0f9_52fb:
    ld l, a
    jr nz, jr_0f9_5360

    ld h, l
    jr nz, @+$63

    nop
    ld h, a

jr_0f9_5303:
    ld [hl], d
    ld l, c
    ld a, d
    ld a, d
    ld l, h
    ld a, c
    jr nz, jr_0f9_537a

jr_0f9_530b:
    ld [hl], d
    jr nz, jr_0f9_537d

    ld [hl], h
    ld l, b

jr_0f9_5310:
    ld h, l
    ld [hl], d
    nop
    ld h, c

jr_0f9_5314:
    ld l, [hl]
    ld l, c
    ld l, l
    ld h, c
    ld l, h
    daa
    ld [hl], e
    jr nz, jr_0f9_5381

jr_0f9_531d:
    ld l, a

jr_0f9_531e:
    ld l, c
    ld l, [hl]
    ld h, a
    nop
    ld h, d
    ld h, l
    ld h, e
    ld h, c
    ld [hl], l

jr_0f9_5327:
    ld [hl], e
    ld h, l
    jr nz, jr_0f9_539f

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_0f9_5392

    ld [hl], d
    ld h, l
    nop
    ld [hl], h
    ld h, l
    ld h, l
    ld [hl], h
    ld l, b
    jr nz, jr_0f9_53a8

    ld h, c
    ld [hl], d
    ld l, e
    ld [hl], e

jr_0f9_533f:
    jr nz, jr_0f9_53a2

    ld l, h
    ld l, a
    ld l, [hl]
    ld h, a
    nop
    ld l, b
    ld h, l
    ld [hl], d
    jr nz, jr_0f9_53b8

    ld [hl], l
    ld [hl], h
    ld l, c
    ld l, h
    ld h, c
    ld [hl], h
    ld h, l
    ld h, h
    jr nz, jr_0f9_53b6

    ld [hl], d
    ld l, l
    ld [hl], e
    nop
    ld h, c

jr_0f9_535a:
    ld l, [hl]
    ld h, h
    jr nz, jr_0f9_53ca

    ld h, l
    ld h, [hl]

jr_0f9_5360:
    ld [hl], h

jr_0f9_5361:
    jr nz, jr_0f9_53c9

    ld l, a
    ld l, a
    ld [hl], h
    jr nz, @+$76

    ld l, b
    ld h, c
    ld [hl], h
    nop
    ld [hl], e
    ld l, b
    ld l, a

jr_0f9_536f:
    ld [hl], a
    jr nz, jr_0f9_53d5

    ld l, a
    ld l, [hl]
    ld [hl], e
    ld l, c
    ld h, h
    ld h, l
    ld [hl], d
    ld h, c

jr_0f9_537a:
    ld h, d
    ld l, h
    ld h, l

jr_0f9_537d:
    nop
    ld [hl], b
    ld l, a
    ld [hl], a

jr_0f9_5381:
    ld h, l
    ld [hl], d
    ld l, $20
    ld d, e
    ld l, c
    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, jr_0f9_53ff

    ld l, b
    ld h, l
    jr nz, jr_0f9_5407

    ld h, c
    ld [hl], e

jr_0f9_5392:
    nop
    ld [hl], a
    ld h, l
    ld h, c
    ld [hl], d
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f9_53fd

    jr nz, jr_0f9_5406

    ld l, c

jr_0f9_539f:
    ld l, e
    ld l, c
    ld l, [hl]

jr_0f9_53a2:
    ld h, a
    nop
    ld h, d
    ld l, a
    ld l, a
    ld [hl], h

jr_0f9_53a8:
    jr nz, jr_0f9_5419

    ld l, [hl]
    jr nz, @+$6a

    ld h, l
    ld [hl], d
    nop
    ld [hl], d
    ld h, l
    ld l, l
    ld h, c
    ld l, c
    ld l, [hl]

jr_0f9_53b6:
    ld l, c
    ld l, [hl]

jr_0f9_53b8:
    ld h, a
    jr nz, @+$68

    ld l, a
    ld l, a
    ld [hl], h
    inc l
    jr nz, jr_0f9_542a

    ld [hl], h
    nop
    ld l, b
    ld h, c
    ld [hl], e
    jr nz, jr_0f9_542a

    ld h, l

jr_0f9_53c9:
    ld h, l

jr_0f9_53ca:
    ld l, [hl]
    jr nz, jr_0f9_5431

    ld h, l
    ld [hl], h
    ld h, l
    ld [hl], d
    ld l, l
    ld l, c
    ld l, [hl]
    ld h, l

jr_0f9_53d5:
    ld h, h
    nop
    ld [hl], h
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_0f9_5450

    ld l, b
    ld h, l
    jr nz, jr_0f9_5458

    ld h, c
    ld [hl], e
    nop
    ld h, c
    ld [hl], h
    ld [hl], h
    ld h, c
    ld h, e
    ld l, e
    ld h, l
    ld h, h
    jr nz, jr_0f9_5457

    ld l, [hl]
    jr nz, jr_0f9_5465

    ld l, b
    ld h, l
    nop
    ld b, c
    ld [hl], d
    ld l, e
    ld l, h
    ld h, c
    ld a, c
    jr nz, jr_0f9_5469

    ld l, a

jr_0f9_53fd:
    ld [hl], l
    ld l, [hl]

jr_0f9_53ff:
    ld [hl], h
    ld h, c
    ld l, c
    ld l, [hl]
    ld [hl], e
    jr nz, jr_0f9_5467

jr_0f9_5406:
    ld l, [hl]

jr_0f9_5407:
    ld h, h
    nop
    ld h, [hl]
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_0f9_5483

    ld l, a
    jr nz, jr_0f9_5486

    ld l, b
    ld h, l
    jr nz, jr_0f9_5488

    ld l, c
    db $76
    ld h, l

jr_0f9_5419:
    ld [hl], d
    ld l, $00
    ld d, h
    ld l, b
    ld h, l
    ld a, c
    jr nz, jr_0f9_5483

    ld [hl], d
    ld h, l
    jr nz, jr_0f9_549b

    ld [hl], d
    ld [hl], d
    ld a, c
    ld l, c

jr_0f9_542a:
    ld l, [hl]
    ld h, a
    jr nz, jr_0f9_54a2

    ld l, a
    nop
    ld l, c

jr_0f9_5431:
    ld h, h
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld l, c
    ld h, [hl]
    ld a, c
    jr nz, jr_0f9_54ae

    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_0f9_54b6

    ld l, a
    ld l, l
    ld h, c
    ld l, [hl]
    ld l, $00
    ld bc, $4152
    ld b, e
    ld b, e
    ld c, a
    ld c, a
    ld c, [hl]
    jr nz, jr_0f9_54a6

    ld b, l

jr_0f9_5450:
    ld b, l
    ld c, e
    ld c, h
    ld e, c
    nop
    jr nz, jr_0f9_54a1

jr_0f9_5457:
    ld d, l

jr_0f9_5458:
    ld c, [hl]
    ld b, l
    jr nz, jr_0f9_548d

    ld [hl], $2c
    jr nz, jr_0f9_5491

    add hl, sp
    add hl, sp
    jr c, jr_0f9_5464

jr_0f9_5464:
    nop

jr_0f9_5465:
    ld c, l
    ld c, a

jr_0f9_5467:
    ld c, [hl]
    ld d, e

jr_0f9_5469:
    ld d, h
    ld b, l
    ld d, d
    ld d, e
    jr nz, jr_0f9_54b8

    ld c, [hl]
    nop
    ld b, c
    ld d, d
    ld c, e
    ld c, h
    ld b, c
    ld e, c
    jr nz, jr_0f9_54c6

    ld c, a
    ld d, l
    ld c, [hl]
    ld d, h
    ld b, c
    ld c, c
    ld c, [hl]
    ld d, e
    ccf
    nop

jr_0f9_5483:
    nop
    ld d, e
    ld l, a

jr_0f9_5486:
    ld l, l
    ld h, l

jr_0f9_5488:
    jr nz, jr_0f9_54fa

    ld h, l
    ld l, a
    ld [hl], b

jr_0f9_548d:
    ld l, h
    ld h, l
    jr nz, jr_0f9_54f4

jr_0f9_5491:
    ld l, h
    ld h, c
    ld l, c
    ld l, l
    nop
    ld [hl], h
    ld l, b
    ld h, l
    ld a, c
    daa

jr_0f9_549b:
    db $76
    ld h, l
    jr nz, jr_0f9_5512

    ld h, l
    ld h, l

jr_0f9_54a1:
    ld l, [hl]

jr_0f9_54a2:
    nop
    ld l, l
    ld l, a
    ld l, [hl]

jr_0f9_54a6:
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    ld [hl], e
    jr nz, @+$6b

    ld l, [hl]

jr_0f9_54ae:
    jr nz, jr_0f9_5524

    ld l, b
    ld h, l
    nop
    ld b, c
    ld [hl], d
    ld l, e

jr_0f9_54b6:
    ld l, h
    ld h, c

jr_0f9_54b8:
    ld a, c
    jr nz, jr_0f9_5528

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld [hl], h
    ld h, c
    ld l, c
    ld l, [hl]
    ld [hl], e
    ld l, $00
    ld d, h

jr_0f9_54c6:
    ld l, b
    ld h, l
    jr nz, jr_0f9_5537

    ld l, a
    ld l, [hl]
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    ld [hl], e
    jr nz, jr_0f9_5534

    ld [hl], d
    ld h, l
    nop
    ld [hl], e
    ld [hl], l
    ld [hl], b
    ld [hl], b
    ld l, a
    ld [hl], e
    ld h, l
    ld h, h
    ld l, h
    ld a, c
    jr nz, jr_0f9_5543

    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h
    nop
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, @+$75

    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_0f9_5564

    ld l, c
    ld a, d
    ld h, l

jr_0f9_54f4:
    jr nz, jr_0f9_5557

    ld [hl], e
    nop
    ld l, h
    ld h, c

jr_0f9_54fa:
    ld [hl], d
    ld h, a
    ld h, l
    jr nz, @+$66

    ld l, a
    ld h, a
    ld [hl], e
    jr nz, jr_0f9_5565

    ld l, [hl]
    ld h, h
    nop
    ld [hl], l
    ld [hl], e
    ld [hl], l
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    jr nz, jr_0f9_5582

    ld [hl], l
    ld l, [hl]

jr_0f9_5512:
    jr nz, jr_0f9_557d

    ld l, [hl]
    jr nz, jr_0f9_5578

    nop
    ld [hl], b
    ld h, c
    ld h, e
    ld l, e
    jr nz, jr_0f9_557f

    ld [hl], e
    jr nz, jr_0f9_5598

    ld l, a
    ld l, h
    db $76

jr_0f9_5524:
    ld h, l
    ld [hl], e
    jr nz, jr_0f9_558c

jr_0f9_5528:
    ld l, a
    ld l, $00
    ld [bc], a
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_0f9_559f

    ld h, c
    ld a, c

jr_0f9_5534:
    jr nz, jr_0f9_55a9

    ld l, a

jr_0f9_5537:
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, jr_0f9_55a8

    ld l, c
    ld l, e
    ld h, l
    nop
    ld h, c
    jr nz, jr_0f9_55aa

jr_0f9_5543:
    ld [hl], d
    ld l, a
    ld [hl], l
    ld [hl], b
    jr nz, jr_0f9_55b8

    ld h, [hl]
    jr nz, jr_0f9_55bb

    ld [hl], d
    ld h, h
    ld l, c
    ld l, [hl]
    ld h, c
    ld [hl], d
    ld a, c
    nop
    ld [hl], a
    ld l, c
    ld l, h

jr_0f9_5557:
    ld h, h
    jr nz, jr_0f9_55be

    ld l, a
    ld h, a
    ld [hl], e
    inc l
    jr nz, jr_0f9_55c2

    ld [hl], l
    ld [hl], h
    jr nz, jr_0f9_55d8

jr_0f9_5564:
    ld l, b

jr_0f9_5565:
    ld h, l
    ld [hl], e
    ld h, l
    nop
    ld l, l
    ld l, a
    ld l, [hl]
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    ld [hl], e
    jr nz, jr_0f9_55d4

    ld [hl], d
    ld h, l
    nop
    ld [hl], e
    ld [hl], l

jr_0f9_5578:
    ld [hl], d
    ld [hl], b
    ld [hl], d
    ld l, c
    ld [hl], e

jr_0f9_557d:
    ld l, c
    ld l, [hl]

jr_0f9_557f:
    ld h, a
    ld l, h
    ld a, c

jr_0f9_5582:
    jr nz, jr_0f9_55ea

    ld l, c
    ld h, l
    ld [hl], d
    ld h, e
    ld h, l
    nop
    ld h, c
    ld l, [hl]

jr_0f9_558c:
    ld h, h
    jr nz, jr_0f9_55f7

    ld h, c
    ld [hl], d
    ld h, h
    jr nz, jr_0f9_5608

    ld l, a
    jr nz, @+$6a

    ld [hl], l

jr_0f9_5598:
    ld [hl], d
    ld [hl], h
    ld l, $00
    ld d, h
    ld l, b
    ld h, l

jr_0f9_559f:
    ld a, c
    jr nz, jr_0f9_5615

    ld h, c
    ld a, c
    jr nz, jr_0f9_561a

    ld l, b
    ld h, l

jr_0f9_55a8:
    ld [hl], e

jr_0f9_55a9:
    ld h, l

jr_0f9_55aa:
    jr nz, jr_0f9_5610

    ld l, a
    ld h, a
    ld [hl], e
    nop
    ld [hl], a
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_0f9_5619

    ld l, a

jr_0f9_55b8:
    ld [hl], h
    ld l, b
    ld h, l

jr_0f9_55bb:
    ld [hl], d
    jr nz, jr_0f9_5637

jr_0f9_55be:
    ld l, a
    ld [hl], l
    nop
    ld [hl], l

jr_0f9_55c2:
    ld l, [hl]
    ld l, h
    ld h, l
    ld [hl], e
    ld [hl], e
    jr nz, jr_0f9_5642

    ld l, a
    ld [hl], l
    jr nz, jr_0f9_5644

    ld h, c
    ld l, e
    ld h, l
    nop
    ld [hl], h
    ld l, b
    ld h, l

jr_0f9_55d4:
    ld l, l
    inc l
    jr nz, jr_0f9_564b

jr_0f9_55d8:
    ld l, a
    jr nz, jr_0f9_5654

    ld l, a
    ld [hl], l
    jr nz, jr_0f9_5652

    ld l, l
    ld h, c
    ld [hl], d
    ld [hl], h
    nop
    ld [hl], d
    ld h, l
    ld h, c
    ld h, h
    ld h, l
    ld [hl], d

jr_0f9_55ea:
    ld [hl], e
    jr nz, jr_0f9_5660

    ld l, b
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_0f9_5667

    ld [hl], h
    ld h, c
    ld a, c

jr_0f9_55f7:
    nop
    ld l, a
    ld [hl], l
    ld [hl], h
    jr nz, @+$71

    ld h, [hl]
    jr nz, jr_0f9_5674

    ld l, b
    ld h, l
    jr nz, jr_0f9_5645

    ld [hl], d
    ld l, e
    ld l, h
    ld h, c

jr_0f9_5608:
    ld a, c
    nop
    ld c, l
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld [hl], h
    ld h, c

jr_0f9_5610:
    ld l, c
    ld l, [hl]
    ld [hl], e
    jr nz, jr_0f9_567b

jr_0f9_5615:
    ld l, a
    ld [hl], d
    jr nz, jr_0f9_568d

jr_0f9_5619:
    ld l, b

jr_0f9_561a:
    ld h, l
    nop
    ld [hl], h
    ld l, c
    ld l, l
    ld h, l
    jr nz, jr_0f9_5684

    ld h, l
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $20
    ld b, d
    ld [hl], l
    ld [hl], h
    jr nz, jr_0f9_5696

    ld h, [hl]
    nop
    ld a, c
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, @+$6e

jr_0f9_5637:
    ld l, a
    ld l, a
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f9_56a5

    ld l, a
    ld [hl], d
    nop

jr_0f9_5642:
    ld h, c
    ld h, h

jr_0f9_5644:
    db $76

jr_0f9_5645:
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld h, l

jr_0f9_564b:
    inc l
    jr nz, jr_0f9_56b1

    ld l, b
    ld h, l
    ld h, e
    ld l, e

jr_0f9_5652:
    jr nz, jr_0f9_56bd

jr_0f9_5654:
    ld [hl], h
    nop
    ld l, a
    ld [hl], l
    ld [hl], h
    ld hl, $5920
    ld l, a
    ld [hl], l
    jr nz, @+$79

jr_0f9_5660:
    ld h, c
    ld l, [hl]
    ld l, [hl]
    ld h, c
    jr nz, @+$76

    ld [hl], d

jr_0f9_5667:
    ld a, c
    ccf
    nop
    ld bc, $4152
    ld b, e
    ld b, e
    ld c, a
    ld c, a
    ld c, [hl]
    jr nz, jr_0f9_56c8

jr_0f9_5674:
    ld c, c
    ld c, l
    ld b, l
    ld d, e
    nop
    ld c, d
    ld d, l

jr_0f9_567b:
    ld c, h
    ld e, c
    jr nz, jr_0f9_56b8

    inc l
    jr nz, jr_0f9_56b3

    add hl, sp
    add hl, sp

jr_0f9_5684:
    jr c, jr_0f9_5686

jr_0f9_5686:
    nop
    ld c, l
    ld e, c
    ld d, e
    ld d, h
    ld b, l
    ld d, d

jr_0f9_568d:
    ld e, c
    jr nz, jr_0f9_56df

    ld c, [hl]
    nop
    ld b, c
    ld d, d
    ld c, e
    ld c, h

jr_0f9_5696:
    ld b, c
    ld e, c
    jr nz, jr_0f9_56e7

    ld c, a
    ld d, l
    ld c, [hl]
    ld d, h
    ld b, c
    ld c, c
    ld c, [hl]
    ld d, e
    ld hl, $4d00

jr_0f9_56a5:
    ld c, a
    ld d, l
    ld c, [hl]
    ld d, h
    ld b, c
    ld c, c
    ld c, [hl]
    jr nz, jr_0f9_5700

    ld c, a
    ld b, c
    ld b, h

jr_0f9_56b1:
    nop
    ld b, d

jr_0f9_56b3:
    ld c, h
    ld c, a
    ld b, e
    ld c, e
    ld b, l

jr_0f9_56b8:
    ld b, h
    nop
    nop
    ld b, h
    ld [hl], l

jr_0f9_56bd:
    ld h, l
    jr nz, jr_0f9_5734

    ld l, a
    jr nz, jr_0f9_5736

    ld [hl], l
    ld h, e
    ld h, e
    ld h, l
    ld [hl], e

jr_0f9_56c8:
    ld [hl], e
    ld l, c
    db $76
    ld h, l
    nop
    ld h, h
    ld l, c
    ld [hl], e
    ld h, c
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    ld [hl], e
    jr nz, @+$6b

    ld l, [hl]
    jr nz, jr_0f9_574f

    ld l, b
    ld h, l
    nop
    ld b, c

jr_0f9_56df:
    ld [hl], d
    ld l, e
    ld l, h
    ld h, c
    ld a, c
    jr nz, jr_0f9_5733

    ld l, a

jr_0f9_56e7:
    ld [hl], l
    ld l, [hl]
    ld [hl], h
    ld h, c
    ld l, c
    ld l, [hl]
    ld [hl], e
    inc l
    nop
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_0f9_5758

    ld l, c
    ld [hl], h
    ld a, c
    jr nz, jr_0f9_575b

    ld [hl], l
    ld [hl], h
    ld l, b
    ld l, a
    ld [hl], d
    ld l, c

jr_0f9_5700:
    ld [hl], h
    ld l, c
    ld h, l
    ld [hl], e
    nop
    ld l, b
    ld h, c
    db $76
    ld h, l
    jr nz, @+$66

    ld h, l
    ld h, e
    ld l, c
    ld h, h
    ld h, l
    ld h, h
    jr nz, jr_0f9_5787

    ld l, a
    nop
    ld h, d
    ld l, h
    ld l, a
    ld h, e
    ld l, e
    jr nz, jr_0f9_5790

    ld l, b
    ld h, l
    jr nz, jr_0f9_5792

    ld l, a
    ld h, c
    ld h, h
    nop
    ld l, h
    ld h, l
    ld h, c
    ld h, h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$76

    ld l, a
    jr nz, jr_0f9_57a4

    ld l, b
    ld h, l
    nop

jr_0f9_5733:
    ld h, [hl]

jr_0f9_5734:
    ld l, a
    ld l, a

jr_0f9_5736:
    ld [hl], h
    ld l, b
    ld l, c
    ld l, h
    ld l, h
    ld [hl], e
    ld l, $02
    ld b, c
    ld [hl], h
    jr nz, jr_0f9_57b6

    ld l, b
    ld h, l
    nop
    ld [hl], e
    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_0f9_57bf

    ld l, c
    ld l, l
    ld h, l
    inc l

jr_0f9_574f:
    jr nz, jr_0f9_57a3

    ld h, c
    ld h, e
    ld h, e
    ld l, a
    ld l, a
    ld l, [hl]
    nop

jr_0f9_5758:
    ld [hl], b
    ld l, a
    ld l, h

jr_0f9_575b:
    ld l, c
    ld h, e
    ld h, l
    jr nz, jr_0f9_57c9

    ld l, [hl]
    ld [hl], h
    ld h, l
    ld l, [hl]
    ld h, h
    jr nz, @+$76

    ld l, a
    nop
    ld h, d
    ld h, l
    ld h, a
    ld l, c
    ld l, [hl]
    jr nz, jr_0f9_57e4

    ld l, b
    ld h, l
    jr nz, jr_0f9_57e7

    ld h, l
    ld h, c
    ld [hl], d
    ld h, e
    ld l, b
    jr nz, jr_0f9_57e1

    ld l, a
    ld [hl], d
    nop
    ld l, h
    ld l, a
    ld [hl], e
    ld [hl], h
    jr nz, jr_0f9_57f4

    ld h, l
    ld l, a
    ld [hl], b

jr_0f9_5787:
    ld l, h
    ld h, l
    jr nz, jr_0f9_5802

    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_0f9_5804

jr_0f9_5790:
    ld l, b
    ld h, l

jr_0f9_5792:
    nop
    ld l, b
    ld h, l
    ld l, h
    ld [hl], b
    jr nz, jr_0f9_5808

    ld h, [hl]
    jr nz, jr_0f9_57ef

    ld d, h
    ld b, c
    ld d, d
    ld d, e
    jr nz, jr_0f9_5816

    ld h, l

jr_0f9_57a3:
    ld h, c

jr_0f9_57a4:
    ld l, l
    nop
    ld l, l
    ld h, l
    ld l, l
    ld h, d
    ld h, l
    ld [hl], d
    ld [hl], e
    ld l, $20
    ld d, h
    ld l, b
    ld h, l
    ld a, c
    jr nz, jr_0f9_581a

    ld a, b

jr_0f9_57b6:
    ld [hl], b
    ld h, l
    ld h, e
    ld [hl], h
    nop
    ld h, a
    ld [hl], d
    ld h, l
    ld h, c

jr_0f9_57bf:
    ld [hl], h
    jr nz, jr_0f9_5826

    ld l, c
    ld h, [hl]
    ld h, [hl]
    ld l, c
    ld h, e
    ld [hl], l
    ld l, h

jr_0f9_57c9:
    ld [hl], h
    ld a, c
    nop
    ld h, d
    ld h, l
    ld h, e
    ld h, c
    ld [hl], l
    ld [hl], e
    ld h, l
    jr nz, jr_0f9_5844

    ld h, [hl]
    jr nz, jr_0f9_584c

    ld l, b
    ld h, l
    jr nz, jr_0f9_5852

    ld h, c
    ld [hl], e
    ld [hl], h
    nop
    ld [hl], e

jr_0f9_57e1:
    ld l, c
    ld a, d
    ld h, l

jr_0f9_57e4:
    jr nz, jr_0f9_5855

    ld h, [hl]

jr_0f9_57e7:
    jr nz, jr_0f9_582a

    ld [hl], d
    ld l, e
    ld l, h
    ld h, c
    ld a, c
    nop

jr_0f9_57ef:
    ld c, l
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld [hl], h

jr_0f9_57f4:
    ld h, c
    ld l, c
    ld l, [hl]
    ld [hl], e
    jr nz, jr_0f9_585b

    ld l, [hl]
    ld h, h
    jr nz, jr_0f9_5872

    ld l, b
    ld h, l
    nop
    ld [hl], b

jr_0f9_5802:
    ld [hl], d
    ld l, c

jr_0f9_5804:
    ld l, l
    ld h, l
    db $76
    ld h, c

jr_0f9_5808:
    ld l, h
    jr nz, jr_0f9_5871

    ld l, a
    ld [hl], d
    ld h, l
    ld [hl], e
    ld [hl], h
    jr nz, jr_0f9_5886

    ld l, b
    ld h, c
    ld [hl], h
    nop

jr_0f9_5816:
    ld h, e
    ld l, a
    db $76
    ld h, l

jr_0f9_581a:
    ld [hl], d
    ld [hl], e
    jr nz, jr_0f9_588b

    ld l, a
    ld [hl], e
    ld [hl], h
    jr nz, jr_0f9_5892

    ld h, [hl]
    jr nz, jr_0f9_589a

jr_0f9_5826:
    ld l, b
    ld h, l
    nop
    ld h, c

jr_0f9_582a:
    ld [hl], d
    ld h, l
    ld h, c
    ld l, $20
    ld b, c
    ld l, h
    ld [hl], e
    ld l, a
    jr nz, jr_0f9_58a5

    ld h, l
    ld l, a
    ld [hl], b
    ld l, h
    ld h, l
    nop
    ld h, c
    ld [hl], d
    ld h, l
    jr nz, jr_0f9_58b3

    ld [hl], h
    ld l, c
    ld l, h
    ld l, h

jr_0f9_5844:
    jr nz, jr_0f9_58b8

    ld h, l
    ld [hl], b
    ld l, a
    ld [hl], d
    ld [hl], h
    ld l, c

jr_0f9_584c:
    ld l, [hl]
    ld h, a
    nop
    ld [hl], e
    ld l, c
    ld h, a

jr_0f9_5852:
    ld l, b
    ld [hl], h
    ld l, c

jr_0f9_5855:
    ld l, [hl]
    ld h, a
    ld [hl], e
    jr nz, jr_0f9_58c9

    ld h, [hl]

jr_0f9_585b:
    nop
    ld l, b
    ld l, a
    ld [hl], d
    ld [hl], d
    ld l, c
    ld h, d
    ld l, h
    ld h, l
    jr nz, jr_0f9_58d3

    ld l, a
    ld l, [hl]
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    ld [hl], e
    jr nz, jr_0f9_58d8

    ld l, [hl]
    nop

jr_0f9_5871:
    ld [hl], h

jr_0f9_5872:
    ld l, b
    ld h, l
    jr nz, jr_0f9_58e3

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld [hl], h
    ld h, c
    ld l, c
    ld l, [hl]
    ld [hl], e
    ld l, $00
    ld bc, $4548
    ld c, h
    ld c, c
    ld b, e

jr_0f9_5886:
    ld c, a
    ld d, b
    ld d, h
    ld b, l
    ld d, d

jr_0f9_588b:
    jr nz, jr_0f9_58dd

    ld c, a
    ld d, d
    ld d, h
    nop
    nop

jr_0f9_5892:
    ld b, l
    ld a, b
    ld h, l
    ld h, e
    ld [hl], l
    ld [hl], h
    ld l, c
    db $76

jr_0f9_589a:
    ld h, l
    ld [hl], e
    jr nz, jr_0f9_58ff

    ld l, [hl]
    ld h, h
    nop
    ld b, a
    ld l, a
    db $76
    ld h, l

jr_0f9_58a5:
    ld [hl], d
    ld l, [hl]
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    jr nz, @+$51

    ld h, [hl]
    ld h, [hl]
    ld l, c
    ld h, e
    ld l, c
    ld h, c

jr_0f9_58b3:
    ld l, h
    ld [hl], e
    nop
    ld l, a
    ld l, [hl]

jr_0f9_58b8:
    ld l, h
    ld a, c
    jr nz, jr_0f9_592b

    ld l, [hl]
    jr nz, jr_0f9_5927

    ld h, l
    ld l, h
    ld l, c
    ld h, e
    ld l, a
    ld [hl], b
    ld [hl], h
    ld h, l
    ld [hl], d
    nop

jr_0f9_58c9:
    ld [hl], b
    ld l, a
    ld [hl], d
    ld [hl], h
    ld l, $00
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e

jr_0f9_58d3:
    jr nz, jr_0f9_5947

    ld h, l
    ld [hl], e
    ld [hl], h

jr_0f9_58d8:
    ld [hl], d
    ld l, c
    ld h, e
    ld [hl], h
    ld l, c

jr_0f9_58dd:
    ld l, a
    ld l, [hl]
    jr nz, jr_0f9_594e

    ld h, c
    ld a, c

jr_0f9_58e3:
    nop
    ld l, [hl]
    ld l, a
    ld [hl], h
    jr nz, jr_0f9_594a

    ld [hl], b
    ld [hl], b
    ld l, h
    ld a, c
    jr nz, jr_0f9_5958

    ld l, [hl]
    jr nz, jr_0f9_5955

    ld h, c
    ld [hl], e
    ld h, l
    jr nz, jr_0f9_5966

    ld h, [hl]
    nop
    ld h, c
    ld l, [hl]
    jr nz, jr_0f9_595e

    ld h, e
    ld h, e

jr_0f9_58ff:
    ld l, c
    ld h, h
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld l, $00
    ld bc, $4150
    ld d, e
    ld d, e
    ld b, c
    ld b, a
    ld b, l
    jr nz, @+$56

    ld c, a
    jr nz, jr_0f9_5967

    ld c, b
    ld b, l
    nop
    ld c, b
    ld b, l
    ld c, h
    ld c, c
    ld b, e
    ld c, a
    ld d, b
    ld d, h
    ld b, l
    ld d, d
    nop
    nop
    ld c, [hl]
    ld l, a
    jr nz, @+$71

    ld l, [hl]

jr_0f9_5927:
    ld h, l
    jr nz, jr_0f9_5993

    ld [hl], e

jr_0f9_592b:
    jr nz, jr_0f9_598e

    ld l, h
    ld l, h
    ld l, a
    ld [hl], a
    ld h, l
    ld h, h
    jr nz, @+$76

    ld l, a
    nop
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_0f9_59b3

    ld l, [hl]
    ld l, h
    ld h, l
    ld [hl], e
    ld [hl], e
    jr nz, jr_0f9_59b9

    ld l, b
    ld h, l

jr_0f9_5947:
    ld a, c
    nop
    ld h, c

jr_0f9_594a:
    ld [hl], d
    ld h, l
    jr nz, jr_0f9_59af

jr_0f9_594e:
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, [hl]
    ld h, h
    ld h, l
    ld h, h

jr_0f9_5955:
    jr nz, jr_0f9_59b9

    ld a, c

jr_0f9_5958:
    jr nz, jr_0f9_59bb

    nop
    ld d, d
    ld h, l
    ld [hl], e

jr_0f9_595e:
    ld h, l
    ld h, c
    ld [hl], d
    ld h, e
    ld l, b
    jr nz, @+$45

    ld l, a

jr_0f9_5966:
    ld l, [hl]

jr_0f9_5967:
    ld [hl], e
    ld [hl], l
    ld l, h
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld [hl], h
    nop
    ld l, a
    ld [hl], d
    jr nz, jr_0f9_59c6

    ld h, l
    ld h, e
    ld [hl], l
    ld [hl], d
    ld l, c
    ld [hl], h
    ld a, c
    nop
    ld b, h
    ld l, c
    ld [hl], d
    ld h, l
    ld h, e
    ld [hl], h
    ld l, a
    ld [hl], d
    ld l, $20
    ld b, c
    ld l, h
    ld l, h
    jr nz, jr_0f9_59f9

    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d

jr_0f9_598e:
    ld [hl], e
    nop
    ld [hl], a
    ld l, c
    ld l, h

jr_0f9_5993:
    ld l, h
    jr nz, jr_0f9_59f8

    ld h, l
    jr nz, jr_0f9_5a0c

    ld l, b
    ld l, a
    ld [hl], h
    jr nz, jr_0f9_5a0d

    ld l, [hl]
    nop
    ld [hl], e
    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    ld l, $00
    ld bc, $4c45
    ld b, l
    ld d, [hl]
    ld b, c
    ld d, h
    ld c, a

jr_0f9_59af:
    ld d, d
    nop
    nop
    ld d, h

jr_0f9_59b3:
    ld l, b
    ld h, l
    jr nz, @+$67

    ld l, h
    ld h, l

jr_0f9_59b9:
    db $76
    ld h, c

jr_0f9_59bb:
    ld [hl], h
    ld l, a
    ld [hl], d
    jr nz, jr_0f9_5a33

    ld [hl], h
    ld l, a
    ld [hl], b
    ld [hl], e
    nop
    ld h, h

jr_0f9_59c6:
    ld [hl], l
    ld [hl], d
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f9_5a32

    ld l, l
    ld h, l
    ld [hl], d
    ld h, a
    ld h, l
    ld l, [hl]
    ld h, e
    ld l, c
    ld h, l
    ld [hl], e
    ld l, $00
    ld bc, $4956
    ld b, h
    ld b, l
    ld c, a
    jr nz, jr_0f9_5a25

    ld b, c
    ld d, h
    ld b, c
    jr nz, jr_0f9_5a38

    ld c, a
    ld c, a
    ld c, l
    nop
    nop
    ld d, [hl]
    ld l, c
    ld h, h
    ld h, l
    ld l, a
    jr nz, jr_0f9_5a36

    ld h, c
    ld [hl], h
    ld h, c
    jr nz, jr_0f9_5a49

    ld l, a

jr_0f9_59f8:
    ld l, a

jr_0f9_59f9:
    ld l, l
    jr nz, jr_0f9_5a65

    ld [hl], e
    nop
    ld [hl], a
    ld l, c
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    jr nz, jr_0f9_5a7a

    ld l, b
    ld h, l
    jr nz, jr_0f9_5a6d

    ld l, a
    ld l, [hl]

jr_0f9_5a0c:
    ld [hl], h

jr_0f9_5a0d:
    ld [hl], d
    ld l, a
    ld l, h
    nop
    ld l, a
    ld h, [hl]
    jr nz, jr_0f9_5a68

    ld [hl], b
    ld h, l
    ld h, e
    ld l, c
    ld h, c
    ld l, h
    jr nz, jr_0f9_5a6f

    ld h, l
    ld [hl], e
    ld h, l
    ld h, c
    ld [hl], d
    ld h, e
    ld l, b
    nop

jr_0f9_5a25:
    ld b, h
    ld l, c
    db $76
    ld l, c
    ld [hl], e
    ld l, c
    ld l, a
    ld l, [hl]
    ld l, $20
    ld c, e
    ld h, l
    ld l, c

jr_0f9_5a32:
    ld [hl], h

jr_0f9_5a33:
    ld l, b
    nop
    ld b, c

jr_0f9_5a36:
    ld [hl], d
    db $76

jr_0f9_5a38:
    ld l, c
    ld l, [hl]
    ld h, a
    inc l
    jr nz, jr_0f9_5ab2

    ld l, b
    ld h, l
    jr nz, jr_0f9_5a94

    ld l, a
    ld l, a
    ld l, l
    nop
    ld c, l
    ld h, c
    ld l, [hl]

jr_0f9_5a49:
    ld h, c
    ld h, a
    ld h, l
    ld [hl], d
    inc l
    jr nz, jr_0f9_5ab9

    ld [hl], e
    nop
    ld h, h
    ld h, l
    ld [hl], e
    ld l, c
    ld h, a
    ld l, [hl]
    ld h, c
    ld [hl], h
    ld h, l
    ld h, h
    jr nz, jr_0f9_5ad2

    ld l, a
    jr nz, jr_0f9_5ac9

    ld h, c
    db $76
    ld h, l
    nop

jr_0f9_5a65:
    ld l, d
    ld [hl], l
    ld [hl], d

jr_0f9_5a68:
    ld l, c
    ld [hl], e
    ld h, h
    ld l, c
    ld h, e

jr_0f9_5a6d:
    ld [hl], h
    ld l, c

jr_0f9_5a6f:
    ld l, a
    ld l, [hl]
    jr nz, jr_0f9_5ae2

    db $76
    ld h, l
    ld [hl], d
    nop
    ld [hl], d
    ld l, a
    ld l, a

jr_0f9_5a7a:
    ld l, l
    jr nz, jr_0f9_5af2

    ld [hl], e
    ld h, c
    ld h, a
    ld h, l
    ld l, $00
    ld bc, $5250
    ld c, c
    ld d, e
    ld c, a
    ld c, [hl]
    nop
    nop
    ld d, e
    ld h, c
    ld l, [hl]
    ld l, c
    ld [hl], h
    ld h, c
    ld [hl], h
    ld l, c

jr_0f9_5a94:
    ld l, a
    ld l, [hl]
    jr nz, @+$46

    ld l, c
    db $76
    ld l, c
    ld [hl], e
    ld l, c
    ld l, a
    ld l, [hl]
    nop
    ld h, e
    ld l, a
    ld l, [hl]
    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, h
    ld [hl], e
    jr nz, jr_0f9_5b1e

    ld l, b
    ld h, l
    jr nz, jr_0f9_5b23

    ld [hl], e
    ld h, c
    ld h, a
    ld h, l

jr_0f9_5ab2:
    nop
    ld l, a
    ld h, [hl]
    jr nz, jr_0f9_5b2b

    ld l, b
    ld h, l

jr_0f9_5ab9:
    jr nz, jr_0f9_5b2b

    ld [hl], d
    ld l, c
    ld [hl], e
    ld l, a
    ld l, [hl]
    ld l, $00
    ld b, e
    ld l, a
    ld l, [hl]
    ld [hl], e
    ld [hl], l
    ld l, h
    ld [hl], h

jr_0f9_5ac9:
    ld h, c
    ld l, [hl]
    ld [hl], h
    nop
    ld d, d
    ld h, l
    ld [hl], e
    ld h, l
    ld h, c

jr_0f9_5ad2:
    ld [hl], d
    ld h, e
    ld l, b
    ld h, l
    ld [hl], d
    ld [hl], e
    nop
    jr z, jr_0f9_5b20

    ld l, $20
    ld d, e
    ld l, l
    ld l, c
    ld [hl], h
    ld l, b

jr_0f9_5ae2:
    inc l
    jr nz, jr_0f9_5b38

    ld l, $20
    ld d, d
    ld l, a
    ld [hl], e
    ld [hl], e
    inc l
    nop
    ld b, c
    ld l, $20
    ld d, a
    ld h, l

jr_0f9_5af2:
    ld [hl], e
    ld l, e
    ld h, l
    ld [hl], d
    add hl, hl
    jr nz, jr_0f9_5b66

    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_0f9_5b60

    ld h, l
    nop
    ld [hl], b
    ld [hl], d
    ld h, l
    ld [hl], e
    ld h, l
    ld l, [hl]
    ld [hl], h
    jr nz, jr_0f9_5b72

    ld h, [hl]
    jr nz, jr_0f9_5b82

    ld l, c
    ld [hl], d
    ld [hl], l
    ld [hl], e
    nop
    ld l, c
    ld [hl], e
    jr nz, jr_0f9_5b8a

    ld [hl], e
    ld h, l
    ld h, h
    ld l, $00
    ld bc, $5254
    ld c, c

jr_0f9_5b1e:
    ld d, b
    ld c, h

jr_0f9_5b20:
    ld b, l
    jr nz, jr_0f9_5b6f

jr_0f9_5b23:
    ld c, a
    ld b, e
    ld c, e
    jr nz, jr_0f9_5b6c

    ld c, a
    ld c, a
    ld d, d

jr_0f9_5b2b:
    nop
    nop
    ld c, [hl]
    ld l, a
    jr nz, jr_0f9_5ba0

    ld l, [hl]
    ld h, l
    jr nz, jr_0f9_5b9e

    ld [hl], e
    jr nz, jr_0f9_5b99

jr_0f9_5b38:
    ld l, h
    ld l, h
    ld l, a
    ld [hl], a
    ld h, l
    ld h, h
    nop
    ld [hl], h
    ld l, a
    jr nz, jr_0f9_5ba8

    ld l, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_0f9_5bbe

    ld l, [hl]
    ld l, h
    ld h, l
    ld [hl], e
    ld [hl], e
    jr nz, jr_0f9_5bb8

    ld h, l
    nop
    ld [hl], b
    ld [hl], d
    ld h, l
    ld [hl], e
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld [hl], e
    jr nz, jr_0f9_5bbd

    ld l, h
    ld l, h
    jr nz, jr_0f9_5bd0

jr_0f9_5b60:
    ld h, c
    ld [hl], e
    ld [hl], e
    nop
    ld h, e
    ld l, a

jr_0f9_5b66:
    ld h, h
    ld h, l
    jr nz, jr_0f9_5bce

    ld l, a
    ld h, e

jr_0f9_5b6c:
    ld [hl], l
    ld l, l
    ld h, l

jr_0f9_5b6f:
    ld l, [hl]
    ld [hl], h
    ld [hl], e

jr_0f9_5b72:
    ld l, $00
    ld d, b
    ld h, c
    ld [hl], e
    ld [hl], e
    jr nz, jr_0f9_5bdd

    ld l, a
    ld h, h
    ld h, l
    jr nz, @+$66

    ld l, a
    ld h, e
    ld [hl], l

jr_0f9_5b82:
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld [hl], e
    nop
    ld l, l
    ld [hl], l

jr_0f9_5b8a:
    ld [hl], e
    ld [hl], h
    jr nz, jr_0f9_5bf0

    ld h, l
    jr nz, jr_0f9_5bf4

    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], h
    ld h, l
    ld h, h
    jr nz, jr_0f9_5c08

jr_0f9_5b99:
    ld l, [hl]
    nop
    ld [hl], h
    ld l, b
    ld h, l

jr_0f9_5b9e:
    jr nz, jr_0f9_5c13

jr_0f9_5ba0:
    ld [hl], b
    ld h, l
    ld h, e
    ld l, c
    ld h, c
    ld l, h
    ld l, c
    ld a, d

jr_0f9_5ba8:
    ld h, l
    ld h, h
    nop
    ld l, a
    ld [hl], l
    ld [hl], h
    ld [hl], b
    ld [hl], l
    ld [hl], h
    jr nz, jr_0f9_5c20

    ld h, c
    ld h, e
    ld l, b
    ld l, c
    ld l, [hl]

jr_0f9_5bb8:
    ld h, l
    jr nz, jr_0f9_5c1d

    ld a, c
    nop

jr_0f9_5bbd:
    ld [hl], h

jr_0f9_5bbe:
    ld l, b
    ld h, l
    jr nz, jr_0f9_5c05

    ld l, b
    ld l, c
    ld h, l
    ld h, [hl]
    nop
    ld d, d
    ld h, l
    ld [hl], e
    ld h, l
    ld h, c
    ld [hl], d
    ld h, e

jr_0f9_5bce:
    ld l, b
    ld h, l

jr_0f9_5bd0:
    ld [hl], d
    jr nz, jr_0f9_5c42

    ld h, [hl]
    jr nz, jr_0f9_5c3b

    ld h, c
    ld h, e
    ld l, b
    nop
    ld h, d
    ld l, h
    ld l, a

jr_0f9_5bdd:
    ld h, e
    ld l, e
    ld l, $00
    ld bc, $4f50
    ld d, a
    ld b, l
    ld d, d
    jr nz, jr_0f9_5c3b

    ld c, a
    ld c, a
    ld c, l
    nop
    nop
    ld c, a
    ld l, [hl]

jr_0f9_5bf0:
    ld l, h
    ld a, c
    jr nz, jr_0f9_5c3c

jr_0f9_5bf4:
    ld h, l
    ld h, c
    ld h, h
    ld [hl], c
    ld [hl], l
    ld h, c
    ld [hl], d
    ld [hl], h
    ld h, l
    ld [hl], d
    ld [hl], e
    nop
    ld d, e
    ld [hl], l
    ld [hl], b
    ld h, l
    ld [hl], d

jr_0f9_5c05:
    db $76
    ld l, c
    ld [hl], e

jr_0f9_5c08:
    ld l, a
    ld [hl], d
    ld [hl], e
    jr nz, jr_0f9_5c7a

    ld h, c
    ld a, c
    nop
    ld h, l
    ld l, [hl]
    ld [hl], h

jr_0f9_5c13:
    ld h, l
    ld [hl], d
    ld l, $20
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    nop
    ld [hl], d

jr_0f9_5c1d:
    ld h, l
    ld [hl], e
    ld [hl], h

jr_0f9_5c20:
    ld [hl], d
    ld l, c
    ld h, e
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, jr_0f9_5c96

    ld h, c
    ld a, c
    jr nz, @+$70

    ld l, a
    ld [hl], h
    nop
    ld h, c
    ld [hl], b
    ld [hl], b
    ld l, h
    ld a, c
    jr nz, jr_0f9_5ca0

    ld h, [hl]
    jr nz, @+$76

    ld l, b

jr_0f9_5c3b:
    ld h, l

jr_0f9_5c3c:
    nop
    ld b, e
    ld l, a
    ld l, [hl]
    ld [hl], e
    ld [hl], l

jr_0f9_5c42:
    ld l, h
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld [hl], h
    nop
    ld d, d
    ld h, l
    ld [hl], e
    ld h, l
    ld h, c
    ld [hl], d
    ld h, e
    ld l, b
    ld h, l
    ld [hl], d
    jr nz, jr_0f9_5cbc

    ld h, c
    ld [hl], e
    nop
    ld [hl], d
    ld h, l
    ld h, e
    ld h, l
    ld l, c
    db $76
    ld h, l
    ld h, h
    jr nz, jr_0f9_5cd4

    ld [hl], b
    ld h, l
    ld h, e
    ld l, c
    ld h, c
    ld l, h
    nop
    ld l, c
    ld l, [hl]
    ld [hl], e
    ld [hl], h
    ld [hl], d
    ld [hl], l
    ld h, e
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld [hl], e
    ld l, $00
    ld bc, $4150
    ld d, e

jr_0f9_5c7a:
    ld d, e
    jr nz, jr_0f9_5cc0

    ld c, a
    ld b, h
    ld b, l
    jr nz, jr_0f9_5cd1

    ld d, l
    ld d, h
    ld d, b
    ld d, l
    ld d, h
    nop
    ld c, l
    ld b, c
    ld b, e
    ld c, b
    ld c, c
    ld c, [hl]
    ld b, l
    nop
    nop
    ld c, [hl]
    ld l, a
    jr nz, jr_0f9_5d04

    ld l, [hl]

jr_0f9_5c96:
    ld h, l
    jr nz, jr_0f9_5d02

    ld [hl], e
    jr nz, jr_0f9_5cfd

    ld l, h
    ld l, h
    ld l, a
    ld [hl], a

jr_0f9_5ca0:
    ld h, l
    ld h, h
    nop
    ld [hl], h
    ld l, a
    jr nz, @+$77

    ld [hl], e
    ld h, l
    jr nz, jr_0f9_5d1f

    ld l, b
    ld h, l
    jr nz, jr_0f9_5d1f

    ld h, c
    ld [hl], e
    ld [hl], e
    jr nz, jr_0f9_5d17

    ld l, a
    ld h, h
    ld h, l
    nop
    ld l, a
    ld [hl], l
    ld [hl], h
    ld [hl], b

jr_0f9_5cbc:
    ld [hl], l
    ld [hl], h
    jr nz, @+$6f

jr_0f9_5cc0:
    ld h, c
    ld h, e
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, l
    jr nz, jr_0f9_5d2a

    ld [hl], l
    ld [hl], h
    nop
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_0f9_5d13

    ld l, b

jr_0f9_5cd1:
    ld l, c
    ld h, l
    ld h, [hl]

jr_0f9_5cd4:
    nop
    ld d, d
    ld h, l
    ld [hl], e
    ld h, l
    ld h, c
    ld [hl], d
    ld h, e
    ld l, b
    ld h, l
    ld [hl], d
    ld [hl], e
    ld l, $00
    ld bc, $4f54
    ld d, b
    jr nz, @+$55

    ld b, l
    ld b, e
    ld d, d
    ld b, l
    ld d, h
    nop
    nop
    ld d, d
    ld h, l
    ld h, a
    ld h, c
    ld [hl], d
    ld h, h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f9_5d6e

    ld l, b
    ld h, l
    nop

jr_0f9_5cfd:
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, a
    ld [hl], d

jr_0f9_5d02:
    ld h, l
    ld [hl], e

jr_0f9_5d04:
    ld [hl], e
    jr nz, jr_0f9_5d76

    ld h, [hl]
    jr nz, jr_0f9_5d31

    ld d, h
    ld a, c
    ld [hl], d
    ld h, c
    ld l, [hl]
    ld [hl], h
    daa
    nop
    ld h, c

jr_0f9_5d13:
    ld h, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d

jr_0f9_5d17:
    jr nz, jr_0f9_5d8d

    ld l, b
    ld h, l
    jr nz, jr_0f9_5d92

    ld [hl], e
    ld h, l

jr_0f9_5d1f:
    jr nz, jr_0f9_5d90

    ld h, [hl]
    nop
    ld [hl], h
    dec l
    db $76
    ld l, c
    ld [hl], d
    ld [hl], l
    ld [hl], e

jr_0f9_5d2a:
    ld l, $2e
    ld l, $00
    ld bc, $754a

jr_0f9_5d31:
    ld l, [hl]
    ld h, l
    jr nz, @+$3a

    inc l
    jr nz, jr_0f9_5d69

    add hl, sp
    add hl, sp
    jr c, jr_0f9_5d3c

jr_0f9_5d3c:
    nop
    ld b, h
    ld h, l
    ld h, c
    ld [hl], d
    jr nz, jr_0f9_5d84

    ld h, h
    ld h, c
    inc l
    nop
    nop
    ld b, c
    ld h, h
    ld h, c
    inc l
    jr nz, @+$64

    ld a, c
    jr nz, jr_0f9_5dc5

    ld l, b
    ld h, l
    jr nz, jr_0f9_5dc9

    ld l, c
    ld l, l
    ld h, l
    jr nz, jr_0f9_5dd3

    ld l, a
    ld [hl], l
    nop
    ld [hl], d
    ld h, l
    ld h, c
    ld h, h
    jr nz, jr_0f9_5dd7

    ld l, b
    ld l, c
    ld [hl], e
    inc l
    jr nz, jr_0f9_5db2

jr_0f9_5d69:
    daa
    ld l, h
    ld l, h
    jr nz, @+$64

jr_0f9_5d6e:
    ld h, l
    nop
    ld [hl], e
    ld l, a
    ld l, l
    ld h, l
    ld [hl], h
    ld l, b

jr_0f9_5d76:
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $2e
    ld l, $00
    ld h, h
    ld l, c
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld [hl], d
    ld h, l

jr_0f9_5d84:
    ld l, [hl]
    ld [hl], h
    ld l, $20
    ld d, h
    ld l, a
    ld h, h
    ld h, c
    ld a, c

jr_0f9_5d8d:
    daa
    ld [hl], e
    nop

jr_0f9_5d90:
    ld [hl], h
    ld h, l

jr_0f9_5d92:
    ld [hl], e
    ld [hl], h
    jr nz, jr_0f9_5e0a

    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, l
    ld h, h
    jr nz, jr_0f9_5e0c

    ld [hl], l
    ld [hl], h
    jr nz, jr_0f9_5e15

    ld l, a
    nop
    ld h, d
    ld h, l
    jr nz, jr_0f9_5e17

    ld l, a
    ld [hl], e
    ld l, c
    ld [hl], h
    ld l, c
    db $76
    ld h, l
    inc l
    jr nz, jr_0f9_5e1b

    ld [hl], l

jr_0f9_5db2:
    ld [hl], e
    ld [hl], h
    jr nz, jr_0f9_5e17

    ld [hl], e
    nop
    ld c, c
    jr nz, @+$67

    ld a, b
    ld [hl], b
    ld h, l
    ld h, e
    ld [hl], h
    ld h, l
    ld h, h
    ld l, $20
    ld c, c

jr_0f9_5dc5:
    jr nz, jr_0f9_5e2d

    ld h, l
    ld h, l

jr_0f9_5dc9:
    ld l, h
    nop
    ld l, h
    ld l, c
    ld l, e
    ld h, l
    jr nz, jr_0f9_5e38

    ld l, a
    ld l, c

jr_0f9_5dd3:
    ld l, [hl]
    ld h, a
    jr nz, @+$65

jr_0f9_5dd7:
    ld [hl], d
    ld h, c
    ld a, d
    ld a, c
    nop
    ld [hl], a
    ld l, b
    ld h, l
    ld l, [hl]
    jr nz, jr_0f9_5e2b

    jr nz, jr_0f9_5e58

    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e
    jr nz, jr_0f9_5e4b

    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h
    nop
    ld h, d
    ld h, l
    ld h, e
    ld l, a
    ld l, l
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f9_5e68

    ld l, [hl]
    ld h, l
    jr nz, jr_0f9_5e6c

    ld h, [hl]
    nop
    ld [hl], h
    ld l, b
    ld h, l
    ld l, l
    ld l, $00
    ld [bc], a
    ld b, c
    ld h, h
    ld h, c
    inc l

jr_0f9_5e0a:
    jr nz, jr_0f9_5e85

jr_0f9_5e0c:
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, @+$70

    ld l, a
    ld [hl], h

jr_0f9_5e15:
    nop
    ld l, c

jr_0f9_5e17:
    ld l, [hl]
    ld h, [hl]
    ld h, l
    ld h, e

jr_0f9_5e1b:
    ld [hl], h
    ld h, l
    ld h, h
    inc l
    jr nz, jr_0f9_5e82

    ld l, [hl]
    ld h, h
    jr nz, jr_0f9_5e6e

    jr nz, jr_0f9_5e8f

    ld l, a
    ld [hl], b
    ld h, l
    nop

jr_0f9_5e2b:
    ld a, c
    ld l, a

jr_0f9_5e2d:
    ld [hl], l
    jr nz, jr_0f9_5e9e

    ld h, l
    db $76
    ld h, l
    ld [hl], d
    jr nz, jr_0f9_5ead

    ld l, c
    ld l, h

jr_0f9_5e38:
    ld l, h
    jr nz, jr_0f9_5e9d

    ld h, l
    ld l, $00
    ld c, c
    ld l, [hl]
    jr nz, jr_0f9_5ea5

    ld h, c
    ld [hl], e
    ld h, l
    jr nz, jr_0f9_5ec0

    ld l, a
    ld [hl], l
    daa
    ld [hl], d

jr_0f9_5e4b:
    ld h, l
    jr nz, jr_0f9_5ec2

    ld l, b
    ld h, l
    nop
    ld l, h
    ld h, c
    ld [hl], e
    ld [hl], h
    jr nz, jr_0f9_5ec6

    ld l, [hl]

jr_0f9_5e58:
    ld h, l
    jr nz, @+$6e

    ld h, l
    ld h, [hl]
    ld [hl], h
    inc l
    jr nz, jr_0f9_5ed5

    ld h, c
    ld l, e
    ld h, l
    nop
    ld [hl], h
    ld l, b
    ld h, l

jr_0f9_5e68:
    jr nz, @+$6f

    ld h, c
    ld [hl], h

jr_0f9_5e6c:
    ld h, l
    ld [hl], d

jr_0f9_5e6e:
    ld l, c
    ld h, c
    ld l, h
    jr nz, @+$6b

    ld l, [hl]
    jr nz, jr_0f9_5eea

    ld l, b
    ld h, l
    nop
    ld c, l
    ld h, l
    ld h, l
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f9_5ed4

jr_0f9_5e82:
    ld l, a
    ld l, a
    ld l, l

jr_0f9_5e85:
    jr nz, jr_0f9_5ee8

    ld l, [hl]
    ld h, h
    jr nz, jr_0f9_5ef2

    ld l, a
    nop
    ld [hl], h
    ld l, a

jr_0f9_5e8f:
    jr nz, jr_0f9_5f05

    ld l, b
    ld h, l
    jr nz, jr_0f9_5ee5

    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    jr nz, jr_0f9_5eed

    ld l, a
    ld l, a

jr_0f9_5e9d:
    ld l, l

jr_0f9_5e9e:
    jr nz, jr_0f9_5f14

    ld l, a
    nop
    ld l, a
    ld [hl], b
    ld h, l

jr_0f9_5ea5:
    ld [hl], d
    ld h, c
    ld [hl], h
    ld h, l
    jr nz, @+$76

    ld l, b
    ld h, l

jr_0f9_5ead:
    nop
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
    jr nz, jr_0f9_5f0d

    ld a, c
    ld [hl], e
    ld [hl], h
    ld h, l
    ld l, l
    nop

jr_0f9_5ec0:
    ld h, d
    ld h, l

jr_0f9_5ec2:
    ld h, [hl]
    ld l, a
    ld [hl], d
    ld h, l

jr_0f9_5ec6:
    jr nz, jr_0f9_5f41

    ld l, a
    ld [hl], l
    jr nz, jr_0f9_5f31

    ld [hl], e
    ld h, e
    ld h, c
    ld [hl], b
    ld h, l
    ld l, $00
    ld b, c

jr_0f9_5ed4:
    ld l, [hl]

jr_0f9_5ed5:
    ld h, h
    jr nz, jr_0f9_5f45

    ld h, c
    ld l, e
    ld h, l
    jr nz, jr_0f9_5f3e

    ld l, h
    ld l, h
    jr nz, jr_0f9_5f55

    ld l, b
    ld l, c
    ld [hl], e
    nop

jr_0f9_5ee5:
    ld [hl], b
    ld [hl], l
    ld h, d

jr_0f9_5ee8:
    ld l, h
    ld l, c

jr_0f9_5eea:
    ld h, e
    jr nz, @+$76

jr_0f9_5eed:
    ld l, b
    ld [hl], d
    ld l, a
    ld [hl], l
    ld h, a

jr_0f9_5ef2:
    ld l, b
    jr nz, jr_0f9_5f69

    ld l, b
    ld h, l
    nop
    ld l, l
    ld h, l
    ld h, h
    ld l, c
    ld h, c
    ld l, $00
    ld [bc], a
    ld c, c
    ld h, [hl]
    jr nz, jr_0f9_5f69

    db $76

jr_0f9_5f05:
    ld h, l
    ld [hl], d
    ld a, c
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a

jr_0f9_5f0d:
    jr nz, jr_0f9_5f78

    ld [hl], e
    jr nz, jr_0f9_5f7b

    ld l, [hl]
    nop

jr_0f9_5f14:
    ld l, a
    ld [hl], d
    ld h, h
    ld h, l
    ld [hl], d
    inc l
    jr nz, jr_0f9_5f7d

    ld l, h
    ld l, h
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_0f9_5f90

    ld l, a
    ld h, e
    ld l, e
    ld [hl], e
    nop
    ld h, e
    ld h, c
    ld l, [hl]
    jr nz, jr_0f9_5f90

    ld h, l
    jr nz, jr_0f9_5fa0

jr_0f9_5f31:
    ld [hl], b
    ld h, l
    ld l, [hl]
    ld h, l
    ld h, h
    jr nz, jr_0f9_5f9a

    ld a, c
    jr nz, jr_0f9_5faf

    ld l, b
    ld h, l
    nop

jr_0f9_5f3e:
    ld [hl], e
    ld h, l
    ld h, e

jr_0f9_5f41:
    ld [hl], l
    ld [hl], d
    ld l, c
    ld [hl], h

jr_0f9_5f45:
    ld a, c
    jr nz, @+$75

    ld a, c
    ld [hl], e
    ld [hl], h
    ld h, l
    ld l, l
    ld l, $20
    ld e, c
    ld l, a
    ld [hl], l
    nop
    ld h, e
    ld h, c

jr_0f9_5f55:
    ld l, [hl]
    jr nz, jr_0f9_5fb9

    ld h, e
    ld h, e
    ld h, l
    ld [hl], e
    ld [hl], e
    jr nz, jr_0f9_5fd3

    ld l, a
    jr nz, jr_0f9_5fd6

    ld l, b
    ld h, l
    nop
    ld [hl], e
    ld h, l
    ld h, e
    ld [hl], l

jr_0f9_5f69:
    ld [hl], d
    ld l, c
    ld [hl], h
    ld a, c
    jr nz, jr_0f9_5fe2

    ld a, c
    ld [hl], e
    ld [hl], h
    ld h, l
    ld l, l
    jr nz, jr_0f9_5fdc

    ld [hl], d
    ld l, a

jr_0f9_5f78:
    ld l, l
    nop
    ld [hl], h

jr_0f9_5f7b:
    ld l, b
    ld h, l

jr_0f9_5f7d:
    jr nz, jr_0f9_5ff3

    ld h, l
    ld [hl], d
    ld l, l
    ld l, c
    ld l, [hl]
    ld h, c
    ld l, h
    jr nz, jr_0f9_5ff1

    ld l, [hl]
    jr nz, @+$76

    ld l, b
    ld h, l
    nop
    ld [hl], e
    ld l, l

jr_0f9_5f90:
    ld h, c
    ld l, h
    ld l, h
    jr nz, jr_0f9_6001

    ld h, c
    ld h, d
    ld l, a
    ld [hl], d
    ld h, c

jr_0f9_5f9a:
    ld [hl], h
    ld l, a
    ld [hl], d
    ld a, c
    nop
    ld [hl], l

jr_0f9_5fa0:
    ld [hl], e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f9_6013

    ld a, c
    jr nz, jr_0f9_6017

    ld h, c
    ld l, l
    ld h, l
    ld l, $20
    ld d, h

jr_0f9_5faf:
    ld l, b
    ld h, l
    nop
    ld [hl], b
    ld h, c
    ld [hl], e
    ld [hl], e
    ld [hl], a
    ld l, a
    ld [hl], d

jr_0f9_5fb9:
    ld h, h
    jr nz, jr_0f9_6025

    ld [hl], e
    jr nz, jr_0f9_6038

    ld l, a
    ld [hl], l
    ld [hl], d
    nop
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, $20
    ld e, c
    ld l, a
    ld [hl], l
    daa
    ld l, h
    ld l, h
    jr nz, jr_0f9_603f

    ld h, l
    ld h, l

jr_0f9_5fd3:
    ld h, h
    nop
    ld h, c

jr_0f9_5fd6:
    ld l, [hl]
    ld l, a
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d

jr_0f9_5fdc:
    jr nz, jr_0f9_604e

    ld h, c
    ld [hl], e
    ld [hl], e
    ld [hl], a

jr_0f9_5fe2:
    ld l, a
    ld [hl], d
    ld h, h
    jr nz, jr_0f9_605b

    ld l, a
    nop
    ld [hl], l
    ld l, [hl]
    ld l, h
    ld l, a
    ld h, e
    ld l, e
    jr nz, jr_0f9_6065

jr_0f9_5ff1:
    ld l, b
    ld h, l

jr_0f9_5ff3:
    jr nz, jr_0f9_6059

    ld l, a
    ld l, a
    ld [hl], d
    jr nz, jr_0f9_605b

    ld [hl], h
    nop
    ld b, d
    inc sp
    jr nz, jr_0f9_6077

    ld l, b

jr_0f9_6001:
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_0f9_607a

    ld l, b
    ld h, l
    jr nz, jr_0f9_6057

    ld h, l
    ld h, l
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    nop
    ld d, d
    ld l, a

jr_0f9_6013:
    ld l, a
    ld l, l
    jr nz, jr_0f9_6080

jr_0f9_6017:
    ld [hl], e
    jr nz, jr_0f9_6086

    ld l, a
    ld h, e
    ld h, c
    ld [hl], h
    ld h, l
    ld h, h
    ld l, $00
    ld [bc], a
    ld c, d
    ld [hl], l

jr_0f9_6025:
    ld [hl], e
    ld [hl], h
    jr nz, jr_0f9_6092

    ld l, [hl]
    jr nz, jr_0f9_608f

    ld h, c
    ld [hl], e
    ld h, l
    jr nz, jr_0f9_60aa

    ld l, a
    ld [hl], l
    nop
    ld h, h
    ld l, a
    ld l, [hl]
    daa

jr_0f9_6038:
    ld [hl], h
    jr nz, @+$6d

    ld l, [hl]
    ld l, a
    ld [hl], a
    inc l

jr_0f9_603f:
    jr nz, jr_0f9_608a

    daa
    db $76
    ld h, l
    nop
    ld [hl], a
    ld [hl], d
    ld l, c
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, [hl]
    jr nz, @+$76

jr_0f9_604e:
    ld l, b
    ld h, l
    jr nz, jr_0f9_60b5

    ld l, a
    ld h, h
    ld h, l
    nop
    ld h, d

jr_0f9_6057:
    ld h, l
    ld l, h

jr_0f9_6059:
    ld l, a
    ld [hl], a

jr_0f9_605b:
    ld l, $20
    ld c, c
    daa
    ld l, l
    jr nz, jr_0f9_60d5

    ld [hl], l
    ld [hl], d
    ld h, l

jr_0f9_6065:
    nop
    ld a, c
    ld l, a
    ld [hl], l
    daa
    ld l, h
    ld l, h
    jr nz, jr_0f9_60e3

    ld l, [hl]
    ld h, h
    ld h, l
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld h, h

jr_0f9_6077:
    nop
    ld l, c
    ld [hl], h

jr_0f9_607a:
    jr nz, jr_0f9_60e1

    ld h, c
    ld [hl], e
    ld l, c
    ld l, h

jr_0f9_6080:
    ld a, c
    ld l, $00
    nop
    ld b, c
    ld l, [hl]

jr_0f9_6086:
    ld h, h
    jr nz, jr_0f9_60fd

    ld l, b

jr_0f9_608a:
    ld l, c
    ld [hl], e
    jr nz, @+$6b

    ld [hl], e

jr_0f9_608f:
    jr nz, jr_0f9_60fe

    ld a, c

jr_0f9_6092:
    jr nz, jr_0f9_6100

    ld h, c
    ld [hl], e
    ld [hl], h
    nop
    ld l, b
    ld l, a
    ld [hl], b
    ld h, l
    jr nz, jr_0f9_60cb

    jr nz, jr_0f9_6109

    ld h, [hl]
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    jr nz, jr_0f9_610d

    ld l, c
    ld l, [hl]
    ld h, h

jr_0f9_60aa:
    nop
    ld l, l
    ld h, l
    jr nz, jr_0f9_6112

    ld l, a
    ld l, l
    ld [hl], b
    ld l, h
    ld h, l
    ld [hl], h

jr_0f9_60b5:
    ld h, l
    ld l, h
    ld a, c
    nop
    ld h, e
    ld l, b
    ld h, c
    ld l, [hl]
    ld h, a
    ld h, l
    ld h, h
    inc l
    jr nz, jr_0f9_6133

    ld l, h
    ld h, l
    ld h, c
    ld [hl], e
    ld h, l
    nop
    ld l, e
    ld l, c

jr_0f9_60cb:
    ld l, h
    ld l, h
    jr nz, jr_0f9_613c

    ld h, l
    jr nz, jr_0f9_614b

    ld l, a
    ld [hl], l
    ld [hl], d

jr_0f9_60d5:
    ld [hl], e
    ld h, l
    ld l, h
    ld h, [hl]
    ld l, $00
    jr nz, jr_0f9_60dd

jr_0f9_60dd:
    ld d, b
    ld b, c
    ld d, e
    ld d, e

jr_0f9_60e1:
    ld d, a
    ld c, a

jr_0f9_60e3:
    ld d, d
    ld b, h
    dec a
    nop
    jr nz, jr_0f9_60e9

jr_0f9_60e9:
    ld c, d
    ld l, a
    ld l, b
    ld l, [hl]
    jr nz, jr_0f9_6132

    ld l, h
    ld h, l
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], e
    nop
    ld bc, $2f31
    inc sp
    nop
    nop
    ld b, c

jr_0f9_60fd:
    ld [hl], e

jr_0f9_60fe:
    jr nz, jr_0f9_6149

jr_0f9_6100:
    jr nz, jr_0f9_6175

    ld [hl], h
    ld h, c
    ld [hl], h
    ld h, l
    ld h, h
    jr nz, jr_0f9_6172

jr_0f9_6109:
    ld l, [hl]
    jr nz, jr_0f9_6180

    ld l, b

jr_0f9_610d:
    ld h, l
    nop
    ld l, h
    ld h, c
    ld [hl], e

jr_0f9_6112:
    ld [hl], h
    jr nz, jr_0f9_6187

    ld h, l
    ld [hl], b
    ld l, a
    ld [hl], d
    ld [hl], h
    inc l
    jr nz, jr_0f9_6191

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    nop
    ld h, c
    ld [hl], d
    ld h, l
    jr nz, jr_0f9_619a

    ld l, a
    ld l, l
    ld h, l
    jr nz, jr_0f9_618f

    ld l, a
    ld l, l
    ld l, l
    ld l, a
    ld l, [hl]
    nop

jr_0f9_6132:
    ld h, [hl]

jr_0f9_6133:
    ld h, l
    ld h, c
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld h, l
    ld [hl], e
    jr nz, jr_0f9_61a2

jr_0f9_613c:
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, jr_0f9_61ab

    ld l, [hl]
    nop
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_0f9_61ac

jr_0f9_6149:
    ld h, l
    ld l, h

jr_0f9_614b:
    ld l, h
    ld [hl], e
    jr nz, jr_0f9_61be

    ld h, [hl]
    jr nz, jr_0f9_61c6

    ld l, b
    ld h, l
    nop
    ld [hl], b
    ld l, h
    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, @+$6b

    ld l, [hl]
    ld h, [hl]
    ld h, l
    ld h, e
    ld [hl], h
    ld h, l
    ld h, h
    jr nz, jr_0f9_61c7

    ld a, c
    nop
    ld d, h
    ld a, c
    ld [hl], d
    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_0f9_61e5

    ld l, c
    ld [hl], d
    ld [hl], l

jr_0f9_6172:
    ld [hl], e
    ld l, $20

jr_0f9_6175:
    ld d, a
    ld h, l
    nop
    ld h, c
    ld l, h
    ld [hl], e
    ld l, a
    jr nz, jr_0f9_61e6

    ld h, c
    db $76

jr_0f9_6180:
    ld h, l
    jr nz, jr_0f9_61e9

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h

jr_0f9_6187:
    nop
    ld h, c
    ld l, [hl]
    ld l, a
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d

jr_0f9_618f:
    jr nz, jr_0f9_61fa

jr_0f9_6191:
    ld l, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    ld h, l
    ld [hl], e
    ld [hl], h
    ld l, c
    ld l, [hl]

jr_0f9_619a:
    ld h, a
    nop
    ld h, [hl]
    ld h, c
    ld h, e
    ld [hl], h
    jr nz, jr_0f9_6216

jr_0f9_61a2:
    ld l, b
    ld [hl], d
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    jr nz, jr_0f9_621d

    ld l, a

jr_0f9_61ab:
    ld l, l

jr_0f9_61ac:
    ld h, l
    nop
    ld h, l
    ld a, b
    ld [hl], b
    ld h, l
    ld [hl], d
    ld l, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld [hl], e
    ld l, $00
    ld [bc], a
    ld d, a
    ld h, l

jr_0f9_61be:
    jr nz, jr_0f9_6226

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, jr_0f9_6227

jr_0f9_61c6:
    ld l, [hl]

jr_0f9_61c7:
    jr nz, jr_0f9_622e

    ld l, h
    ld h, l
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    nop
    ld [hl], h
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_0f9_623a

    ld h, l
    ld [hl], e
    ld [hl], h
    ld [hl], d
    ld l, a
    ld a, c
    ld [hl], e
    jr nz, jr_0f9_6253

    ld l, b
    ld h, l
    ld [hl], e
    ld h, l
    nop
    ld [hl], b

jr_0f9_61e5:
    ld l, h

jr_0f9_61e6:
    ld h, c
    ld l, [hl]
    ld [hl], h

jr_0f9_61e9:
    jr nz, jr_0f9_624e

    ld h, l
    ld l, h
    ld l, h
    ld [hl], e
    jr nz, @+$74

    ld h, c
    ld [hl], b
    ld l, c
    ld h, h
    ld l, h
    ld a, c
    nop
    ld l, c
    ld l, [hl]

jr_0f9_61fa:
    jr nz, jr_0f9_6223

    ld d, l
    ld c, [hl]
    ld b, d
    jr nz, jr_0f9_624f

    ld l, a
    ld l, $31
    ld [hl], $27
    inc l
    jr nz, jr_0f9_6278

    ld l, [hl]
    ld h, l
    nop
    ld l, a
    ld h, [hl]
    add hl, bc
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_0f9_6287

    ld h, l
    ld [hl], d

jr_0f9_6216:
    ld l, c
    ld h, l
    ld [hl], e
    jr nz, jr_0f9_628a

    ld h, [hl]
    nop

jr_0f9_621d:
    ld d, l
    ld c, [hl]
    ld b, d
    jr nz, jr_0f9_6285

    ld l, b

jr_0f9_6223:
    ld h, l
    ld l, l
    ld l, c

jr_0f9_6226:
    ld h, e

jr_0f9_6227:
    ld h, c
    ld l, h
    ld [hl], e
    jr nz, jr_0f9_62a0

    ld l, b
    ld h, c

jr_0f9_622e:
    ld [hl], h
    nop
    ld [hl], a
    ld h, l
    jr nz, @+$77

    ld [hl], e
    ld h, l
    ld h, h
    jr nz, @+$68

    ld l, a

jr_0f9_623a:
    ld [hl], d
    jr nz, jr_0f9_62b1

    ld l, b
    ld h, c
    ld [hl], h
    nop
    ld h, l
    ld a, b
    ld [hl], b
    ld h, l
    ld [hl], d
    ld l, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld l, $20
    ld d, a

jr_0f9_624e:
    ld h, l

jr_0f9_624f:
    jr nz, jr_0f9_62bf

    ld h, c
    ld l, l

jr_0f9_6253:
    ld h, l
    ld h, h
    nop
    ld [hl], h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_0f9_6283

    ld d, l
    ld c, [hl]
    ld b, d
    jr nz, jr_0f9_62af

    ld l, a
    ld l, $31
    ld [hl], $27
    jr nz, jr_0f9_62c9

    ld [hl], e
    nop
    daa
    ld d, [hl]
    dec l
    ld c, d
    ld c, a
    ld c, h
    ld d, h
    daa
    ld l, $20
    ld c, c
    ld l, [hl]
    jr nz, jr_0f9_62e7

jr_0f9_6278:
    ld [hl], l
    ld [hl], d
    nop
    ld h, e
    ld h, c
    ld l, h
    ld h, e
    ld [hl], l
    ld l, h
    ld h, c
    ld [hl], h

jr_0f9_6283:
    ld l, c
    ld l, a

jr_0f9_6285:
    ld l, [hl]
    inc l

jr_0f9_6287:
    jr nz, jr_0f9_62f2

    ld [hl], h

jr_0f9_628a:
    jr nz, jr_0f9_6303

    ld l, c
    ld l, h
    ld l, h
    nop
    ld [hl], h
    ld h, c
    ld l, e
    ld h, l
    jr nz, jr_0f9_6302

    ld h, l
    ld [hl], e
    ld [hl], e
    jr nz, jr_0f9_630f

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_0f9_62d5

jr_0f9_62a0:
    nop
    ld [hl], e
    ld h, l
    ld h, e
    ld l, a
    ld l, [hl]
    ld h, h
    ld [hl], e
    jr nz, jr_0f9_631e

    ld l, a
    jr nz, jr_0f9_6311

    ld h, l
    ld [hl], e

jr_0f9_62af:
    ld [hl], h
    ld [hl], d

jr_0f9_62b1:
    ld l, a
    ld a, c
    nop
    ld d, b
    ld l, h
    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_0f9_62ef

    ld [hl-], a
    jr nz, jr_0f9_6327

    ld h, [hl]

jr_0f9_62bf:
    jr nz, jr_0f9_6338

    ld h, l
    jr nz, jr_0f9_6334

    ld [hl], l
    ld [hl], h
    nop
    ld [hl], h
    ld l, b

jr_0f9_62c9:
    ld h, l
    jr nz, jr_0f9_62f3

    ld d, [hl]
    dec l
    ld c, d
    ld c, a
    ld c, h
    ld d, h
    daa
    nop
    ld h, h

jr_0f9_62d5:
    ld l, c
    ld [hl], d
    ld h, l
    ld h, e
    ld [hl], h
    ld l, h
    ld a, c
    jr nz, jr_0f9_634d

    ld l, [hl]
    jr nz, jr_0f9_6355

    ld l, b
    ld h, l
    nop
    ld [hl], d
    ld l, a
    ld l, a

jr_0f9_62e7:
    ld [hl], h
    ld l, $00
    ld bc, $2f32
    inc sp
    nop

jr_0f9_62ef:
    nop
    daa
    ld d, [hl]

jr_0f9_62f2:
    dec l

jr_0f9_62f3:
    ld c, d
    ld c, a
    ld c, h
    ld d, h
    daa
    jr nz, @+$6f

    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_0f9_6361

    ld h, l
    nop
    ld h, e

jr_0f9_6302:
    ld [hl], d

jr_0f9_6303:
    ld h, l
    ld h, c
    ld [hl], h
    ld h, l
    ld h, h
    jr nz, jr_0f9_6374

    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_0f9_6371

jr_0f9_630f:
    ld h, l
    ld h, [hl]

jr_0f9_6311:
    ld l, a
    ld [hl], d
    ld h, l
    nop
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, @+$77

    ld [hl], e
    ld h, c
    ld h, a
    ld h, l

jr_0f9_631e:
    inc l
    jr nz, jr_0f9_6382

    ld [hl], e
    jr nz, jr_0f9_638d

    ld [hl], h
    jr nz, jr_0f9_638a

jr_0f9_6327:
    ld h, c
    ld l, [hl]
    nop
    ld l, [hl]
    ld l, a
    ld [hl], h
    jr nz, jr_0f9_6391

    ld h, l
    jr nz, jr_0f9_639d

    ld h, l
    ld [hl], b

jr_0f9_6334:
    ld [hl], h
    jr nz, jr_0f9_639d

    ld l, a

jr_0f9_6338:
    ld [hl], d
    jr nz, jr_0f9_639c

    nop
    ld l, h
    ld l, a
    ld l, [hl]
    ld h, a
    jr nz, jr_0f9_63b6

    ld l, c
    ld l, l
    ld h, l
    ld l, $20
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_0f9_63ba

    ld h, l

jr_0f9_634d:
    ld h, l
    ld h, h
    nop
    ld [hl], h
    ld l, a
    jr nz, jr_0f9_63c1

    ld l, c

jr_0f9_6355:
    ld a, b
    jr nz, jr_0f9_63cb

    ld l, a
    ld l, l
    ld h, l
    jr nz, @+$71

    ld h, [hl]
    jr nz, jr_0f9_63d4

    ld l, b

jr_0f9_6361:
    ld h, l
    nop
    ld d, l
    ld c, [hl]
    ld b, d
    jr nz, jr_0f9_63db

    ld h, l
    ld [hl], d
    ld l, c
    ld h, l
    ld [hl], e
    jr nz, jr_0f9_63d2

    ld l, b
    ld h, l

jr_0f9_6371:
    ld l, l
    ld l, c
    ld h, e

jr_0f9_6374:
    ld h, c
    ld l, h
    ld [hl], e
    nop
    ld l, c
    ld l, [hl]
    jr nz, jr_0f9_63dd

    jr nz, jr_0f9_63f1

    ld [hl], b
    ld h, l
    ld h, e
    ld l, c

jr_0f9_6382:
    ld h, [hl]
    ld l, c
    ld h, e
    jr nz, jr_0f9_63f6

    ld [hl], d
    ld h, h
    ld h, l

jr_0f9_638a:
    ld [hl], d
    nop
    ld [hl], h

jr_0f9_638d:
    ld l, a
    jr nz, jr_0f9_63f3

    ld [hl], d

jr_0f9_6391:
    ld h, l
    ld h, c
    ld [hl], h
    ld h, l
    jr nz, jr_0f9_63be

    ld d, [hl]
    dec l
    ld c, d
    ld c, a
    ld c, h

jr_0f9_639c:
    ld d, h

jr_0f9_639d:
    daa
    ld l, $00
    ld b, d
    ld [hl], l
    ld [hl], h
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_0f9_63fe

    ld c, [hl]
    ld b, d
    jr nz, jr_0f9_6420

    ld h, l
    ld [hl], d
    ld l, c
    ld h, l
    ld [hl], e
    nop
    ld h, e
    ld l, b
    ld h, l

jr_0f9_63b6:
    ld l, l
    ld l, c
    ld h, e
    ld h, c

jr_0f9_63ba:
    ld l, h
    ld [hl], e
    jr nz, jr_0f9_642b

jr_0f9_63be:
    ld h, c
    ld a, c
    nop

jr_0f9_63c1:
    ld h, a
    ld h, l
    ld l, [hl]
    ld h, l
    ld [hl], d
    ld h, c
    ld [hl], h
    ld h, l
    jr nz, jr_0f9_642c

jr_0f9_63cb:
    jr nz, @+$72

    ld l, a
    ld l, c
    ld [hl], e
    ld l, a
    ld l, [hl]

jr_0f9_63d2:
    ld l, a
    ld [hl], l

jr_0f9_63d4:
    ld [hl], e
    nop
    ld h, a
    ld h, c
    ld [hl], e
    jr nz, jr_0f9_6452

jr_0f9_63db:
    ld l, b
    ld l, c

jr_0f9_63dd:
    ld h, e
    ld l, b
    jr nz, jr_0f9_644a

    ld [hl], e
    jr nz, jr_0f9_644c

    ld h, c
    ld [hl], d
    ld l, l
    ld h, [hl]
    ld [hl], l
    ld l, h
    nop
    ld [hl], h
    ld l, a
    jr nz, jr_0f9_6463

    ld l, b
    ld h, l

jr_0f9_63f1:
    jr nz, jr_0f9_645b

jr_0f9_63f3:
    ld [hl], l
    ld l, l
    ld h, c

jr_0f9_63f6:
    ld l, [hl]
    jr nz, jr_0f9_645b

    ld l, a
    ld h, h
    ld a, c
    ld l, $00

jr_0f9_63fe:
    ld [bc], a
    ld b, l
    ld a, b
    ld [hl], h
    ld [hl], d
    ld h, l
    ld l, l
    ld h, l
    jr nz, jr_0f9_646b

    ld h, c
    ld [hl], l
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    nop
    ld [hl], e
    ld l, b
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_0f9_6479

    ld h, l
    jr nz, jr_0f9_648e

    ld h, c
    ld l, e
    ld h, l
    ld l, [hl]
    jr nz, jr_0f9_6497

jr_0f9_6420:
    ld l, b
    ld h, l
    ld l, [hl]
    nop
    ld l, b
    ld h, c
    ld l, [hl]
    ld h, h
    ld l, h
    ld l, c
    ld l, [hl]

jr_0f9_642b:
    ld h, a

jr_0f9_642c:
    jr nz, jr_0f9_64a2

    ld l, b
    ld h, l
    ld [hl], e
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
    ld l, $00
    nop
    ld b, [hl]
    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    inc l
    jr nz, jr_0f9_64ad

    ld l, a
    ld l, h
    ld l, h

jr_0f9_644a:
    ld l, a
    ld [hl], a

jr_0f9_644c:
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f9_64b2

    ld [hl], d

jr_0f9_6452:
    ld h, l
    nop
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_0f9_64cd

    ld a, c
    ld [hl], b

jr_0f9_645b:
    ld h, l
    ld [hl], e
    jr nz, jr_0f9_64ce

    ld h, [hl]
    jr nz, jr_0f9_64b7

    ld c, [hl]

jr_0f9_6463:
    ld b, d
    nop
    ld [hl], e
    ld h, l
    ld [hl], d
    ld l, c
    ld h, l
    ld [hl], e

jr_0f9_646b:
    jr nz, jr_0f9_64d0

    ld l, b
    ld h, l
    ld l, l
    ld l, c
    ld h, e
    ld h, c
    ld l, h
    ld [hl], e
    jr nz, jr_0f9_64d8

    ld l, [hl]
    ld h, h

jr_0f9_6479:
    nop
    ld [hl], h
    ld l, b
    ld h, l
    ld l, c
    ld [hl], d
    jr nz, jr_0f9_64e3

    ld [hl], d
    ld l, c
    ld h, l
    ld h, [hl]
    nop
    ld h, e
    ld l, b
    ld h, c
    ld [hl], d
    ld h, c
    ld h, e
    ld [hl], h
    ld h, l

jr_0f9_648e:
    ld [hl], d
    ld l, c
    ld [hl], e
    ld [hl], h
    ld l, c
    ld h, e
    ld [hl], e
    ld l, $00

jr_0f9_6497:
    ld [bc], a
    ld d, l
    ld c, [hl]
    ld b, d
    jr nz, jr_0f9_64eb

    ld l, a
    ld l, $32
    jr nz, jr_0f9_64c2

jr_0f9_64a2:
    ld d, d
    ld h, l
    ld h, h
    nop
    ld c, [hl]
    ld d, b
    dec l
    jr nc, jr_0f9_64db

    inc sp
    add hl, bc

jr_0f9_64ad:
    ld d, b
    ld [hl], l
    ld [hl], d
    ld [hl], b
    ld l, h

jr_0f9_64b2:
    ld h, l
    nop
    ld d, l
    ld c, [hl]
    ld b, d

jr_0f9_64b7:
    jr nz, jr_0f9_6507

    ld l, a
    ld l, $34
    jr nz, jr_0f9_6505

    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]

jr_0f9_64c2:
    nop
    ld e, c
    ld h, l
    ld l, h
    ld l, h
    ld l, a
    ld [hl], a
    dec l
    ld [hl], $20
    ld e, c

jr_0f9_64cd:
    ld h, l

jr_0f9_64ce:
    ld l, h
    ld l, h

jr_0f9_64d0:
    ld l, a
    ld [hl], a
    nop
    ld d, l
    ld c, [hl]
    ld b, d
    jr nz, jr_0f9_6526

jr_0f9_64d8:
    ld l, a
    ld l, $37

jr_0f9_64db:
    jr nz, jr_0f9_64fd

    ld d, a
    ld l, b
    ld l, c
    ld [hl], h
    ld h, l
    nop

jr_0f9_64e3:
    ld d, l
    ld c, [hl]
    ld b, d
    jr nz, jr_0f9_6536

    ld l, a
    ld l, $31

jr_0f9_64eb:
    inc sp
    jr nz, jr_0f9_6530

    ld l, h
    ld [hl], l
    ld h, l
    nop
    jr z, jr_0f9_6567

    ld [hl], h
    ld l, c
    ld l, l
    ld [hl], l
    ld l, h
    ld h, c
    ld [hl], h
    ld l, c
    ld l, [hl]

jr_0f9_64fd:
    ld h, a
    jr nz, jr_0f9_6573

    ld l, l
    ld h, l
    ld l, h
    ld l, h
    add hl, hl

jr_0f9_6505:
    nop
    ld d, [hl]

jr_0f9_6507:
    dec l
    ld c, d
    ld c, a
    ld c, h
    ld d, h
    jr nz, jr_0f9_6536

    ld d, l
    ld c, [hl]
    ld b, d
    jr nz, jr_0f9_6561

    ld l, a
    ld l, $31
    ld [hl], $29
    nop
    ld b, d
    ld [hl], d
    ld l, a
    ld [hl], a
    ld l, [hl]
    nop
    nop
    ld a, [hl+]
    ld c, l
    ld l, c
    ld a, b
    ld l, c
    ld l, [hl]

jr_0f9_6526:
    ld h, a
    jr nz, jr_0f9_6599

    ld [hl], d
    ld l, a
    ld h, e
    ld h, l
    ld [hl], e
    ld [hl], e
    nop

jr_0f9_6530:
    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    ld [hl], e

jr_0f9_6536:
    jr nz, jr_0f9_659e

    ld [hl], d
    ld l, a
    ld l, l
    jr nz, jr_0f9_65ab

    ld h, l
    ld a, b
    ld [hl], h
    nop
    ld [hl], b
    ld h, c
    ld h, a
    ld h, l
    ld l, $00
    ld bc, $472d
    ld h, l
    ld l, [hl]
    ld h, l
    ld [hl], e
    ld l, c
    ld [hl], e
    dec l
    nop
    daa
    ld c, c
    jr nz, jr_0f9_65c9

    ld [hl], a
    ld h, l
    ld h, c
    ld [hl], d
    jr nz, jr_0f9_65be

    ld a, c
    jr nz, @+$6f

    ld a, c
    ld [hl], e

jr_0f9_6561:
    ld h, l
    ld l, h
    ld h, [hl]
    daa
    inc l
    nop

jr_0f9_6567:
    ld h, h
    ld h, l
    ld h, e
    ld l, h
    ld h, c
    ld [hl], d
    ld h, l
    ld [hl], e
    jr nz, jr_0f9_65e5

    ld l, b
    ld h, l

jr_0f9_6573:
    jr nz, jr_0f9_65c1

    ld l, a
    ld [hl], d
    ld h, h
    inc l
    nop
    daa
    ld [hl], h
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_0f9_65e3

    ld h, l
    ld h, e
    ld h, c
    ld [hl], l
    ld [hl], e
    ld h, l
    jr nz, jr_0f9_6602

    ld l, a
    ld [hl], l
    nop
    ld l, b
    ld h, c
    db $76
    ld h, l
    jr nz, jr_0f9_65f6

    ld l, a
    ld l, [hl]
    ld h, l
    jr nz, @+$76

    ld l, b
    ld l, c

jr_0f9_6599:
    ld [hl], e
    jr nz, jr_0f9_65fd

    ld l, [hl]
    ld h, h

jr_0f9_659e:
    nop
    ld l, b
    ld h, c
    db $76
    ld h, l
    jr nz, jr_0f9_6613

    ld l, a
    ld [hl], h
    jr nz, jr_0f9_6620

    ld l, c
    ld [hl], h

jr_0f9_65ab:
    ld l, b
    ld l, b
    ld h, l
    ld l, h
    ld h, h
    nop
    ld a, c
    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_0f9_662a

    ld l, a
    ld l, [hl]
    inc l
    jr nz, jr_0f9_6635

    ld l, a
    ld [hl], l

jr_0f9_65be:
    ld [hl], d
    jr nz, jr_0f9_6630

jr_0f9_65c1:
    ld l, [hl]
    ld l, h
    ld a, c
    nop
    ld [hl], e
    ld l, a
    ld l, [hl]
    inc l

jr_0f9_65c9:
    jr nz, jr_0f9_6614

    jr nz, jr_0f9_6644

    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_0f9_6645

    ld [hl], l
    ld [hl], d
    ld h, l
    ld l, h
    ld a, c
    nop
    ld h, d
    ld l, h
    ld h, l
    ld [hl], e
    ld [hl], e
    jr nz, jr_0f9_6658

    ld l, a
    ld [hl], l
    jr nz, jr_0f9_6644

jr_0f9_65e3:
    ld l, [hl]
    ld h, h

jr_0f9_65e5:
    jr nz, jr_0f9_6654

    ld h, c
    ld l, e
    ld h, l
    nop
    ld a, c
    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_0f9_6655

    ld h, l
    ld [hl], e
    ld h, e
    ld h, l
    ld l, [hl]

jr_0f9_65f6:
    ld h, h
    ld h, c
    ld l, [hl]
    ld [hl], h
    ld [hl], e
    jr nz, jr_0f9_665e

jr_0f9_65fd:
    ld [hl], e
    nop
    ld l, [hl]
    ld [hl], l
    ld l, l

jr_0f9_6602:
    ld h, l
    ld [hl], d
    ld l, a
    ld [hl], l
    ld [hl], e
    jr nz, jr_0f9_666a

    ld [hl], e
    jr nz, jr_0f9_6680

    ld l, b
    ld h, l
    nop
    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], d

jr_0f9_6613:
    ld [hl], e

jr_0f9_6614:
    jr nz, jr_0f9_667f

    ld l, [hl]
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_0f9_6690

    ld l, e
    ld a, c
    inc l

jr_0f9_6620:
    nop
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_0f9_6687

    ld [hl], e
    jr nz, jr_0f9_669d

    ld l, b

jr_0f9_662a:
    ld h, l
    jr nz, jr_0f9_66a0

    ld h, c
    ld l, [hl]
    ld h, h

jr_0f9_6630:
    jr nz, jr_0f9_66a1

    ld l, [hl]
    nop
    ld [hl], h

jr_0f9_6635:
    ld l, b
    ld h, l
    jr nz, jr_0f9_66ac

    ld h, l
    ld h, c
    ld [hl], e
    ld l, b
    ld l, a
    ld [hl], d
    ld h, l
    ld l, $00
    ld [bc], a
    ld e, c

jr_0f9_6644:
    ld l, a

jr_0f9_6645:
    ld [hl], l
    ld [hl], d
    jr nz, jr_0f9_66ad

    ld h, l
    ld [hl], e
    ld h, e
    ld h, l
    ld l, [hl]
    ld h, h
    ld h, c
    ld l, [hl]
    ld [hl], h
    ld [hl], e
    nop

jr_0f9_6654:
    ld [hl], a

jr_0f9_6655:
    ld l, c
    ld l, h
    ld l, h

jr_0f9_6658:
    jr nz, jr_0f9_66ce

    ld h, c
    ld l, e
    ld h, l
    nop

jr_0f9_665e:
    ld [hl], b
    ld l, a
    ld [hl], e
    ld [hl], e
    ld h, l
    ld [hl], e
    ld [hl], e
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, jr_0f9_66d9

jr_0f9_666a:
    ld h, [hl]
    jr nz, jr_0f9_66e1

    ld l, b
    ld h, l
    nop
    ld h, e
    ld l, c
    ld [hl], h
    ld l, c
    ld h, l
    ld [hl], e
    jr nz, jr_0f9_66e7

    ld h, [hl]
    jr nz, jr_0f9_66ef

    ld l, b
    ld h, l
    ld l, c
    ld [hl], d

jr_0f9_667f:
    nop

jr_0f9_6680:
    ld h, l
    ld l, [hl]
    ld h, l
    ld l, l
    ld l, c
    ld h, l
    ld [hl], e

jr_0f9_6687:
    inc l
    jr nz, jr_0f9_66eb

    ld l, [hl]
    ld h, h
    jr nz, jr_0f9_6702

    ld l, b
    ld [hl], d

jr_0f9_6690:
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    nop
    ld a, c
    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_0f9_670a

    ld h, [hl]
    ld h, [hl]

jr_0f9_669d:
    ld [hl], e
    ld [hl], b
    ld [hl], d

jr_0f9_66a0:
    ld l, c

jr_0f9_66a1:
    ld l, [hl]
    ld h, a
    jr nz, @+$63

    ld l, h
    ld l, h
    nop
    ld l, [hl]
    ld h, c
    ld [hl], h
    ld l, c

jr_0f9_66ac:
    ld l, a

jr_0f9_66ad:
    ld l, [hl]
    ld [hl], e
    jr nz, jr_0f9_6720

    ld l, [hl]
    jr nz, jr_0f9_6719

    ld h, c
    ld [hl], d
    ld [hl], h
    ld l, b
    nop
    ld [hl], a
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_0f9_6721

    ld h, l
    jr nz, jr_0f9_6724

    ld l, h
    ld h, l
    ld [hl], e
    ld [hl], e
    ld h, l
    ld h, h
    inc l
    nop
    ld h, d
    ld h, l
    ld h, e
    ld h, c

jr_0f9_66ce:
    ld [hl], l
    ld [hl], e
    ld h, l
    jr nz, jr_0f9_674c

    ld l, a
    ld [hl], l
    jr nz, @+$6a

    ld h, c
    db $76

jr_0f9_66d9:
    ld h, l
    nop
    ld l, a
    ld h, d
    ld h, l
    ld a, c
    ld h, l
    ld h, h

jr_0f9_66e1:
    jr nz, jr_0f9_6750

    ld h, l
    ld l, $00
    nop

jr_0f9_66e7:
    jr z, jr_0f9_6730

    ld h, l
    ld l, [hl]

jr_0f9_66eb:
    ld h, l
    ld [hl], e
    ld l, c
    ld [hl], e

jr_0f9_66ef:
    jr nz, @+$34

    ld [hl-], a
    ld a, [hl-]
    nop
    ld sp, $2d36
    ld sp, $2d37
    ld sp, $2938
    nop
    ld bc, $412d
    ld h, d

jr_0f9_6702:
    ld l, a
    ld [hl], l
    ld [hl], h
    jr nz, jr_0f9_6754

    ld h, l
    ld h, h
    ld l, c

jr_0f9_670a:
    ld h, e
    ld l, c
    ld l, [hl]
    ld h, c
    ld l, h
    nop
    ld c, b
    ld h, l
    ld [hl], d
    ld h, d
    ld [hl], e
    dec l
    nop
    nop
    ld b, c

jr_0f9_6719:
    ld [hl], e
    jr nz, jr_0f9_6795

    ld l, a
    ld [hl], l
    jr nz, jr_0f9_678d

jr_0f9_6720:
    ld h, c

jr_0f9_6721:
    ld a, c
    jr nz, @+$6d

jr_0f9_6724:
    ld l, [hl]
    ld l, a
    ld [hl], a
    inc l
    nop
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_0f9_6791

jr_0f9_6730:
    ld [hl], d
    ld h, l
    jr nz, jr_0f9_67a1

    ld h, c
    ld l, [hl]
    ld a, c
    nop
    ld [hl], b
    ld l, h
    ld h, c
    ld l, [hl]
    ld [hl], h
    ld [hl], e
    jr nz, jr_0f9_67b4

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_0f9_67ad

    ld h, c
    db $76
    ld h, l
    nop
    ld l, l
    ld h, l
    ld h, h

jr_0f9_674c:
    ld l, c
    ld h, e
    ld h, c
    ld l, h

jr_0f9_6750:
    jr nz, jr_0f9_67b7

    ld h, [hl]
    ld h, [hl]

jr_0f9_6754:
    ld h, l
    ld h, e
    ld [hl], h
    ld [hl], e
    ld l, $00
    ld d, e
    ld l, c
    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, jr_0f9_67c2

    ld l, [hl]
    ld h, e
    ld l, c
    ld h, l
    ld l, [hl]
    ld [hl], h
    jr nz, @+$76

    ld l, c
    ld l, l
    ld h, l
    ld [hl], e
    inc l
    nop
    ld l, b
    ld [hl], l
    ld l, l
    ld h, c
    ld l, [hl]
    ld [hl], e
    jr nz, jr_0f9_67df

    ld h, c
    db $76
    ld h, l
    jr nz, jr_0f9_67de

    ld h, l
    ld h, l
    ld l, [hl]
    nop
    ld l, b
    ld h, l
    ld h, c
    ld l, h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$79

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h

jr_0f9_678d:
    ld [hl], e
    jr nz, jr_0f9_67f1

    ld l, [hl]

jr_0f9_6791:
    ld h, h
    nop
    ld h, h
    ld l, c

jr_0f9_6795:
    ld [hl], e
    ld h, l
    ld h, c
    ld [hl], e
    ld h, l
    ld [hl], e
    jr nz, jr_0f9_6812

    ld [hl], e
    ld l, c
    ld l, [hl]
    ld h, a

jr_0f9_67a1:
    nop
    db $76
    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    ld [hl], l
    ld [hl], e
    jr nz, jr_0f9_681b

    ld l, h
    ld h, c

jr_0f9_67ad:
    ld l, [hl]
    ld [hl], h
    ld [hl], e
    ld l, $00
    ld [bc], a
    ld c, c

jr_0f9_67b4:
    ld l, [hl]
    jr nz, jr_0f9_682b

jr_0f9_67b7:
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_0f9_681e

    ld l, a
    ld l, a
    ld l, e
    inc l
    jr nz, jr_0f9_6839

jr_0f9_67c2:
    ld h, l
    daa
    ld [hl], d
    ld h, l
    nop
    ld h, a
    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f9_6842

    ld l, a
    jr nz, jr_0f9_6844

    ld h, c
    ld l, l
    ld [hl], b
    ld l, h
    ld h, l
    nop
    ld [hl], h
    ld l, b
    ld [hl], d
    ld h, l
    ld h, l
    jr nz, jr_0f9_6846

jr_0f9_67de:
    ld h, l

jr_0f9_67df:
    ld [hl], d
    ld h, d
    ld [hl], e
    jr nz, jr_0f9_6858

    ld l, b
    ld h, c
    ld [hl], h
    nop
    ld h, a
    ld [hl], d
    ld l, a
    ld [hl], a
    jr nz, jr_0f9_684f

    ld [hl], d
    ld l, a
    ld [hl], l

jr_0f9_67f1:
    ld l, [hl]
    ld h, h
    jr nz, jr_0f9_6869

    ld l, b
    ld h, l
    nop
    ld d, d
    ld h, c
    ld h, e
    ld h, e
    ld l, a
    ld l, a
    ld l, [hl]
    jr nz, jr_0f9_686e

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld [hl], h
    ld h, c
    ld l, c
    ld l, [hl]
    ld [hl], e
    inc l
    nop
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_0f9_6877

    ld l, c
    db $76

jr_0f9_6812:
    ld h, l
    jr nz, jr_0f9_6889

    ld l, b
    ld h, l
    ld l, c
    ld [hl], d
    nop
    ld l, a

jr_0f9_681b:
    ld [hl], l
    ld [hl], h
    ld l, h

jr_0f9_681e:
    ld l, c
    ld l, [hl]
    ld h, l
    ld [hl], e
    jr nz, jr_0f9_6885

    ld [hl], e
    jr nz, jr_0f9_688c

    ld a, b
    ld h, c
    ld l, l
    ld [hl], b

jr_0f9_682b:
    ld l, h
    ld h, l
    ld [hl], e
    nop
    ld l, a
    ld h, [hl]
    jr nz, jr_0f9_68a7

    ld l, b
    ld l, a
    ld [hl], e
    ld h, l
    jr nz, jr_0f9_68a9

jr_0f9_6839:
    ld l, h
    ld h, c
    ld l, [hl]
    ld [hl], h
    ld [hl], e
    jr nz, jr_0f9_68b7

    ld l, c
    ld [hl], h

jr_0f9_6842:
    ld l, b
    nop

jr_0f9_6844:
    ld l, l
    ld h, l

jr_0f9_6846:
    ld h, h
    ld l, c
    ld h, e
    ld h, c
    ld l, h
    jr nz, jr_0f9_68bd

    ld [hl], d
    ld l, a

jr_0f9_684f:
    ld [hl], b
    ld h, l
    ld [hl], d
    ld [hl], h
    ld l, c
    ld h, l
    ld [hl], e
    ld l, $00

jr_0f9_6858:
    ld [bc], a
    ld b, l
    ld h, c
    ld h, e
    ld l, b
    jr nz, jr_0f9_68c7

    ld h, l
    ld [hl], d
    ld h, d
    jr nz, jr_0f9_68cc

    ld h, c
    ld [hl], e
    nop
    ld h, h
    ld l, c

jr_0f9_6869:
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld [hl], d
    ld h, l

jr_0f9_686e:
    ld l, [hl]
    ld [hl], h
    jr nz, jr_0f9_68d5

    ld l, a
    ld l, h
    ld l, a
    ld [hl], d
    ld [hl], e

jr_0f9_6877:
    jr nz, jr_0f9_68da

    ld l, [hl]
    ld h, h
    nop
    ld h, h
    ld l, c
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld [hl], h

jr_0f9_6885:
    jr nz, jr_0f9_68ec

    ld h, [hl]
    ld h, [hl]

jr_0f9_6889:
    ld h, l
    ld h, e
    ld [hl], h

jr_0f9_688c:
    ld [hl], e
    jr nz, jr_0f9_68f0

    ld [hl], e
    nop
    ld l, l
    ld h, l
    ld h, h
    ld l, c
    ld h, e
    ld h, c
    ld l, h
    jr nz, jr_0f9_690a

    ld l, h
    ld h, c
    ld l, [hl]
    ld [hl], h
    ld [hl], e
    ld a, [hl-]
    jr nz, jr_0f9_6916

    ld l, b
    ld h, l
    nop
    ld h, a
    ld [hl], d

jr_0f9_68a7:
    ld h, l
    ld h, l

jr_0f9_68a9:
    ld l, [hl]
    jr nz, jr_0f9_691b

    ld l, [hl]
    ld h, l
    jr nz, jr_0f9_6922

    ld h, l
    ld h, e
    ld l, a
    db $76
    ld h, l
    ld [hl], d
    ld [hl], e

jr_0f9_68b7:
    nop
    ld [hl], b
    ld l, b
    ld a, c
    ld [hl], e
    ld l, c

jr_0f9_68bd:
    ld h, e
    ld h, c
    ld l, h
    jr nz, jr_0f9_6935

    ld [hl], h
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld h, a

jr_0f9_68c7:
    ld [hl], h
    ld l, b
    inc l
    nop
    ld [hl], h

jr_0f9_68cc:
    ld l, b
    ld h, l
    jr nz, jr_0f9_6932

    ld l, h
    ld [hl], l
    ld h, l
    jr nz, jr_0f9_6944

jr_0f9_68d5:
    ld l, [hl]
    ld h, l
    nop
    ld l, [hl]
    ld h, l

jr_0f9_68da:
    ld [hl], l
    ld [hl], h
    ld [hl], d
    ld h, c
    ld l, h
    ld l, c
    ld a, d
    ld h, l
    ld [hl], e
    jr nz, @+$70

    ld h, c
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld h, c
    ld l, h
    nop

jr_0f9_68ec:
    ld [hl], h
    ld l, a
    ld a, b
    ld l, c

jr_0f9_68f0:
    ld l, [hl]
    ld [hl], e
    inc l
    jr nz, jr_0f9_696c

    ld l, b
    ld l, c
    ld l, h
    ld h, l
    jr nz, jr_0f9_696f

    ld l, b
    ld h, l
    nop
    ld [hl], d
    ld h, l
    ld h, h
    jr nz, jr_0f9_696b

    ld h, l
    ld [hl], d
    ld h, d
    jr nz, jr_0f9_696c

    ld l, a
    ld h, l

jr_0f9_690a:
    ld [hl], e
    jr nz, jr_0f9_697b

    ld l, a
    ld [hl], h
    nop
    ld l, b
    ld h, c
    db $76
    ld h, l
    jr nz, jr_0f9_6977

jr_0f9_6916:
    ld l, [hl]
    ld a, c
    jr nz, jr_0f9_697f

    ld h, [hl]

jr_0f9_691b:
    ld h, [hl]
    ld h, l
    ld h, e
    ld [hl], h
    jr nz, jr_0f9_6983

    ld a, c

jr_0f9_6922:
    nop
    ld l, c
    ld [hl], h
    ld [hl], e
    ld h, l
    ld l, h
    ld h, [hl]
    ld l, $00
    ld [bc], a
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_0f9_69a3

    ld h, l

jr_0f9_6932:
    ld h, h
    jr nz, jr_0f9_699d

jr_0f9_6935:
    ld h, l
    ld [hl], d
    ld h, d
    jr nz, jr_0f9_69a3

    ld [hl], e
    jr nz, @+$71

    ld l, [hl]
    ld l, h
    ld a, c
    nop
    ld h, l
    ld h, [hl]
    ld h, [hl]

jr_0f9_6944:
    ld h, l
    ld h, e
    ld [hl], h
    ld l, c
    db $76
    ld h, l
    jr nz, jr_0f9_69c3

    ld l, b
    ld h, l
    ld l, [hl]
    jr nz, jr_0f9_69ba

    ld [hl], h
    jr nz, jr_0f9_69bd

    ld [hl], e
    nop
    ld l, l
    ld l, c
    ld a, b
    ld h, l
    ld h, h
    jr nz, jr_0f9_69d4

    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_0f9_69d1

    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    nop
    ld l, b
    ld h, l
    ld [hl], d
    ld h, d

jr_0f9_696b:
    ld [hl], e

jr_0f9_696c:
    ld l, $20
    ld b, [hl]

jr_0f9_696f:
    ld l, a
    ld [hl], d
    jr nz, jr_0f9_69d8

    ld a, b
    ld h, c
    ld l, l
    ld [hl], b

jr_0f9_6977:
    ld l, h
    ld h, l
    inc l
    nop

jr_0f9_697b:
    ld l, c
    ld h, [hl]
    jr nz, jr_0f9_69f8

jr_0f9_697f:
    ld l, a
    ld [hl], l
    jr nz, jr_0f9_69f0

jr_0f9_6983:
    ld l, c
    ld a, b
    jr nz, jr_0f9_69fb

    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_0f9_69f4

    ld h, l
    ld [hl], d
    ld h, d
    nop
    ld [hl], a
    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_0f9_6a0a

    ld l, b
    ld h, l
    jr nz, jr_0f9_6a02

    ld h, l
    ld [hl], d
    ld h, d

jr_0f9_699d:
    jr nz, jr_0f9_6a13

    ld l, b
    ld h, c
    ld [hl], h
    nop

jr_0f9_69a3:
    ld [hl], d
    ld h, l
    ld h, e
    ld l, a
    db $76
    ld h, l
    ld [hl], d
    ld [hl], e
    jr nz, jr_0f9_6a1d

    ld l, b
    ld a, c
    ld [hl], e
    ld l, c
    ld h, e
    ld h, c
    ld l, h
    nop
    ld [hl], e
    ld [hl], h
    ld [hl], d
    ld h, l
    ld l, [hl]

jr_0f9_69ba:
    ld h, a
    ld [hl], h
    ld l, b

jr_0f9_69bd:
    inc l
    jr nz, jr_0f9_6a34

    ld l, b
    ld h, l
    nop

jr_0f9_69c3:
    ld [hl], d
    ld h, l
    ld h, e
    ld l, a
    db $76
    ld h, l
    ld [hl], d
    ld a, c
    jr nz, jr_0f9_6a32

    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, e

jr_0f9_69d1:
    ld [hl], h
    jr nz, jr_0f9_6a4b

jr_0f9_69d4:
    ld l, c
    ld l, h
    ld l, h
    nop

jr_0f9_69d8:
    ld h, d
    ld h, l
    jr nz, jr_0f9_6a40

    ld l, a
    ld [hl], l
    ld h, d
    ld l, h
    ld h, l
    ld h, h
    ld l, $00
    ld [bc], a
    ld b, d
    ld a, c
    jr nz, jr_0f9_6a4a

    ld h, h
    ld l, d
    ld [hl], l
    ld [hl], e
    ld [hl], h
    ld l, c
    ld l, [hl]

jr_0f9_69f0:
    ld h, a
    jr nz, jr_0f9_6a67

    ld l, b

jr_0f9_69f4:
    ld h, l
    nop
    ld h, c
    ld l, l

jr_0f9_69f8:
    ld l, a
    ld [hl], l
    ld l, [hl]

jr_0f9_69fb:
    ld [hl], h
    jr nz, jr_0f9_6a5f

    ld l, [hl]
    ld h, h
    nop
    ld h, l

jr_0f9_6a02:
    ld a, b
    ld [hl], b
    ld h, l
    ld [hl], d
    ld l, c
    ld l, l
    ld h, l
    ld l, [hl]

jr_0f9_6a0a:
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f9_6a87

    ld l, c
    ld [hl], h
    ld l, b

jr_0f9_6a13:
    nop
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], e
    ld h, l
    jr nz, jr_0f9_6a8f

    ld l, b
    ld [hl], d

jr_0f9_6a1d:
    ld h, l
    ld h, l
    jr nz, jr_0f9_6a89

    ld h, l
    ld [hl], d
    ld h, d
    ld [hl], e
    inc l
    nop
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_0f9_6a8f

    ld h, c
    ld l, [hl]
    jr nz, @+$65

    ld [hl], d
    ld h, l

jr_0f9_6a32:
    ld h, c
    ld [hl], h

jr_0f9_6a34:
    ld h, l
    nop
    db $76
    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    ld [hl], l
    ld [hl], e
    jr nz, jr_0f9_6aaa

    ld l, c

jr_0f9_6a40:
    ld l, [hl]
    ld h, h
    ld [hl], e
    jr nz, @+$71

    ld h, [hl]
    nop
    ld l, l
    ld h, l
    ld h, h

jr_0f9_6a4a:
    ld l, c

jr_0f9_6a4b:
    ld h, e
    ld l, c
    ld l, [hl]
    ld h, l
    ld [hl], e
    jr nz, @+$64

    ld [hl], l
    ld [hl], h
    jr nz, jr_0f9_6a9f

    daa
    ld l, h
    ld l, h
    nop
    ld l, h
    ld h, l
    ld h, c
    db $76
    ld h, l

jr_0f9_6a5f:
    jr nz, jr_0f9_6ad5

    ld l, b
    ld h, l
    jr nz, jr_0f9_6ac9

    ld h, l
    ld [hl], h

jr_0f9_6a67:
    ld h, c
    ld l, c
    ld l, h
    ld [hl], e
    jr nz, jr_0f9_6ad6

    ld l, [hl]
    nop
    ld a, c
    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, @+$6a

    ld h, c
    ld l, [hl]
    ld h, h
    ld [hl], e
    inc l
    jr nz, jr_0f9_6ade

    ld h, l
    ld h, e
    ld h, c
    ld [hl], l
    ld [hl], e
    ld h, l
    nop
    ld [hl], h
    ld l, b
    ld h, c
    ld [hl], h

jr_0f9_6a87:
    daa
    ld [hl], e

jr_0f9_6a89:
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_0f9_6af1

jr_0f9_6a8f:
    ld h, l
    ld [hl], e
    ld [hl], h
    jr nz, jr_0f9_6b0b

    ld h, c
    ld a, c
    nop
    ld [hl], h
    ld l, a
    jr nz, jr_0f9_6afc

    ld h, e
    ld [hl], c
    ld [hl], l
    ld l, c

jr_0f9_6a9f:
    ld [hl], d
    ld h, l
    jr nz, jr_0f9_6b17

    ld [hl], d
    ld [hl], l
    ld h, l
    nop
    ld l, e
    ld l, [hl]
    ld l, a

jr_0f9_6aaa:
    ld [hl], a
    ld l, h
    ld h, l
    ld h, h
    ld h, a
    ld h, l
    ld l, $00
    ld bc, $2e46
    ld b, d
    ld l, $49
    ld l, $20
    ld b, [hl]
    ld l, a
    ld [hl], d
    ld h, e
    ld l, c
    ld h, d
    ld l, h
    ld a, c
    nop
    ld c, c
    ld l, [hl]
    db $76
    ld h, l
    ld [hl], e
    ld [hl], h

jr_0f9_6ac9:
    ld l, c
    ld h, a
    ld h, c
    ld [hl], h
    ld h, l
    ld [hl], e
    nop
    ld d, l
    ld l, l
    ld h, d
    ld [hl], d
    ld h, l

jr_0f9_6ad5:
    ld l, h

jr_0f9_6ad6:
    ld l, h
    ld h, c
    jr nz, jr_0f9_6b23

    ld l, [hl]
    ld h, e
    ld l, $00

jr_0f9_6ade:
    ld bc, $6843
    ld h, c
    ld l, c
    ld [hl], d
    ld l, l
    ld h, c
    ld l, [hl]
    jr nz, jr_0f9_6b38

    ld h, [hl]
    jr nz, @+$57

    ld l, l
    ld h, d
    ld [hl], d
    ld h, l
    ld l, h

jr_0f9_6af1:
    ld l, h
    ld h, c
    nop
    ld c, c
    ld l, [hl]
    ld h, e
    ld l, $20
    ld d, h
    ld h, c
    ld l, e

jr_0f9_6afc:
    ld h, l
    ld l, [hl]
    jr nz, jr_0f9_6b49

    ld l, [hl]
    ld [hl], h
    ld l, a
    nop
    ld b, e
    ld [hl], l
    ld [hl], e
    ld [hl], h
    ld l, a
    ld h, h
    ld a, c

jr_0f9_6b0b:
    jr nz, jr_0f9_6b3a

    ld b, [hl]
    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    jr nz, jr_0f9_6b87

    ld [hl], h
    ld h, l
    ld [hl], b

jr_0f9_6b17:
    ld [hl], e
    nop
    ld [hl], h
    ld h, c
    ld l, e
    ld h, l
    ld l, [hl]
    jr nz, jr_0f9_6b94

    ld l, a
    jr nz, jr_0f9_6b87

jr_0f9_6b23:
    ld l, c
    ld [hl], e
    ld h, e
    ld l, h
    ld l, a
    ld [hl], e
    ld h, l
    nop
    ld [hl], h
    ld [hl], d
    ld [hl], l
    ld [hl], h
    ld l, b
    jr nz, jr_0f9_6b94

    ld h, l
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, h
    nop

jr_0f9_6b38:
    ld h, c
    ld h, d

jr_0f9_6b3a:
    ld l, [hl]
    ld l, a
    ld [hl], d
    ld l, l
    ld h, c
    ld l, h
    jr nz, jr_0f9_6baf

    ld [hl], l
    ld [hl], d
    ld h, h
    ld h, l
    ld [hl], d
    nop
    ld h, e

jr_0f9_6b49:
    ld h, c
    ld [hl], e
    ld h, l
    ld [hl], e
    jr nz, jr_0f9_6bb8

    ld l, [hl]
    jr nz, jr_0f9_6ba4

    ld h, c
    ld h, e
    ld h, e
    ld l, a
    ld l, a
    ld l, [hl]
    nop
    ld b, e
    ld l, c
    ld [hl], h
    ld a, c
    dec l
    nop
    ld bc, $6d55
    ld h, d
    ld [hl], d
    ld h, l
    ld l, h
    ld l, h
    ld h, c
    daa
    ld [hl], e
    jr nz, jr_0f9_6bbc

    ld l, h
    ld l, a
    ld [hl], h
    nop
    ld b, l
    ld a, b
    ld [hl], b
    ld l, a
    ld [hl], e
    ld h, l
    ld h, h
    jr nz, jr_0f9_6ba6

    ld b, a
    ld l, a
    db $76
    ld h, l
    ld [hl], d
    ld l, [hl]
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    nop
    ld h, h
    ld h, l
    ld l, [hl]

jr_0f9_6b87:
    ld l, c
    ld h, l
    ld [hl], e
    jr nz, jr_0f9_6bf7

    ld l, [hl]
    ld l, a
    ld [hl], a
    ld l, h
    ld h, l
    ld h, h
    ld h, a
    ld h, l

jr_0f9_6b94:
    dec l
    nop
    ld bc, $7954
    ld [hl], d
    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_0f9_6bf5

    ld l, c
    ld [hl], d
    ld [hl], l
    ld [hl], e
    nop

jr_0f9_6ba4:
    ld c, h
    ld h, l

jr_0f9_6ba6:
    ld h, c
    ld l, e
    ld h, c
    ld h, a
    ld h, l
    jr nz, jr_0f9_6bf0

    ld h, c
    ld [hl], e

jr_0f9_6baf:
    ld h, l
    jr nz, jr_0f9_6bf4

    ld h, l
    ld l, c
    ld l, [hl]
    ld h, a
    nop
    ld b, d

jr_0f9_6bb8:
    ld [hl], d
    ld l, a
    ld [hl], l
    ld h, a

jr_0f9_6bbc:
    ld l, b
    ld [hl], h
    jr nz, jr_0f9_6c14

    ld l, a
    jr nz, jr_0f9_6c0f

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    nop
    ld bc, $6241
    ld l, [hl]
    ld l, a
    ld [hl], d
    ld l, l
    ld h, c
    ld l, h
    jr nz, jr_0f9_6c20

    ld [hl], l
    ld [hl], d
    ld h, h
    ld h, l
    ld [hl], d
    ld [hl], e
    nop
    ld d, e
    ld l, a
    ld l, h
    db $76
    ld h, l
    ld h, h
    jr nz, jr_0f9_6c0f

    ld d, l
    ld l, l
    ld h, d
    ld [hl], d
    ld h, l
    ld l, h
    ld l, h
    ld h, c
    nop
    ld h, l
    ld a, b
    ld h, l
    ld h, e
    ld [hl], l

jr_0f9_6bf0:
    ld [hl], h
    ld l, c
    db $76
    ld h, l

jr_0f9_6bf4:
    ld [hl], e

jr_0f9_6bf5:
    jr nz, jr_0f9_6c58

jr_0f9_6bf7:
    ld h, h
    ld l, l
    ld l, c
    ld [hl], h
    nop
    ld [hl], h
    ld l, b
    ld h, l
    ld l, c
    ld [hl], d
    jr nz, jr_0f9_6c6c

    ld l, [hl]
    db $76
    ld l, a
    ld l, h
    db $76
    ld h, l
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    dec l
    nop

jr_0f9_6c0f:
    ld bc, $6d55
    ld h, d
    ld [hl], d

jr_0f9_6c14:
    ld h, l
    ld l, h
    ld l, h
    ld h, c
    daa
    ld [hl], e
    jr nz, jr_0f9_6c6c

    ld l, h
    ld l, a
    ld [hl], h
    nop

jr_0f9_6c20:
    ld b, [hl]
    ld l, a
    ld l, c
    ld l, h
    ld h, l
    ld h, h
    nop
    ld bc, $6d55
    ld h, d
    ld [hl], d
    ld h, l
    ld l, h
    ld l, h
    ld h, c
    daa
    ld [hl], e
    jr nz, @+$55

    ld h, l
    ld h, e
    ld [hl], d
    ld h, l
    ld [hl], h
    nop
    ld b, c
    ld h, a
    ld h, l
    ld l, [hl]
    ld h, h
    ld h, c
    jr nz, jr_0f9_6c97

    ld l, [hl]
    db $76
    ld h, l
    ld l, c
    ld l, h
    ld h, l
    ld h, h
    nop
    ld bc, $2e53
    ld d, h
    ld l, $41
    ld l, $52
    ld l, $53
    ld l, $20
    ld d, l
    ld l, [hl]

jr_0f9_6c58:
    ld l, c
    ld [hl], h
    ld [hl], e
    nop
    ld c, b
    ld h, c
    db $76
    ld h, l
    jr nz, jr_0f9_6ca4

    ld h, l
    ld h, l
    ld l, [hl]
    nop
    ld b, l
    ld [hl], e
    ld [hl], h
    ld h, c
    ld h, d
    ld l, h

jr_0f9_6c6c:
    ld l, c
    ld [hl], e
    ld l, b
    ld h, l
    ld h, h
    jr nz, jr_0f9_6cb4

    ld l, h
    ld l, h
    nop
    ld c, a
    db $76
    ld h, l
    ld [hl], d
    jr nz, jr_0f9_6cd0

    ld l, b
    ld h, l
    jr nz, jr_0f9_6cd3

    ld [hl], h
    ld h, c
    ld [hl], h
    ld h, l
    ld [hl], e
    nop
    ld bc, $6d55
    ld h, d
    ld [hl], d
    ld h, l
    ld l, h
    ld l, h
    ld h, c
    daa
    ld [hl], e
    jr nz, jr_0f9_6ce6

    ld [hl], b
    ld h, l
    ld h, e
    ld l, c

jr_0f9_6c97:
    ld h, c
    ld l, h
    nop
    ld d, [hl]
    ld l, c
    ld [hl], d
    ld [hl], l
    ld [hl], e
    jr nz, jr_0f9_6ced

    ld h, l
    ld h, c
    ld l, e

jr_0f9_6ca4:
    ld h, c
    ld h, a
    ld h, l
    jr nz, @+$45

    ld h, c
    ld [hl], e
    ld h, l
    nop
    dec l
    ld d, a
    ld h, c
    ld [hl], e
    jr nz, jr_0f9_6d1c

    ld [hl], h

jr_0f9_6cb4:
    jr nz, jr_0f9_6d17

    ld l, [hl]
    jr nz, jr_0f9_6d1a

    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, l
    ld [hl], b
    ld [hl], h
    nop
    ld [hl], h
    ld l, a
    jr nz, jr_0f9_6d29

    ld l, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, @+$76

    ld l, b
    ld h, l
    nop
    ld [hl], a
    ld h, l
    ld h, c

jr_0f9_6cd0:
    ld [hl], b
    ld l, a
    ld l, [hl]

jr_0f9_6cd3:
    ld [hl], e
    jr nz, jr_0f9_6d38

    ld [hl], l
    ld [hl], e
    ld l, c
    ld l, [hl]
    ld h, l
    ld [hl], e
    ld [hl], e
    ccf
    dec l
    nop
    ld bc, $6d55
    ld h, d
    ld [hl], d
    ld h, l

jr_0f9_6ce6:
    ld l, h
    ld l, h
    ld h, c
    daa
    ld [hl], e
    jr nz, jr_0f9_6d43

jr_0f9_6ced:
    ld l, c
    ld [hl], d
    ld [hl], l
    ld [hl], e
    nop
    ld c, h
    ld h, l
    ld h, c
    ld l, e
    ld h, c
    ld h, a
    ld h, l
    jr nz, jr_0f9_6d4d

    ld h, l
    db $76
    ld h, l
    ld h, c
    ld l, h
    ld h, l
    ld h, h
    nop
    ld bc, $7449
    daa
    ld [hl], e
    jr nz, jr_0f9_6d76

    ld l, a
    ld h, e
    ld l, e
    ld h, l
    ld h, h
    ld l, $01
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, @+$6e

jr_0f9_6d17:
    ld l, a
    ld h, e
    ld l, e

jr_0f9_6d1a:
    ld h, l
    ld h, h

jr_0f9_6d1c:
    ld l, $01
    ld b, c
    jr nz, jr_0f9_6d84

    ld h, c
    ld [hl], d
    db $76
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f9_6d98

jr_0f9_6d29:
    ld h, [hl]
    jr nz, jr_0f9_6d8d

    nop
    ld [hl], e
    ld [hl], a
    ld l, a
    ld [hl], d
    ld h, h
    ld l, $01
    ld b, c
    jr nz, jr_0f9_6d9a

    ld h, c

jr_0f9_6d38:
    ld [hl], d
    db $76
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f9_6dae

    ld h, [hl]
    nop
    ld h, c
    ld [hl], d

jr_0f9_6d43:
    ld l, l
    ld l, a
    ld [hl], d
    ld l, $01
    ld b, c
    jr nz, jr_0f9_6dae

    ld h, c
    ld [hl], d

jr_0f9_6d4d:
    db $76
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f9_6dc2

    ld h, [hl]
    jr nz, jr_0f9_6db7

    nop
    ld [hl], e
    ld l, b
    ld l, c
    ld h, l
    ld l, h
    ld h, h
    ld l, $01
    ld b, c
    jr nz, jr_0f9_6dc5

    ld h, c
    ld [hl], d
    db $76
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f9_6dd9

    ld h, [hl]
    jr nz, jr_0f9_6dce

    ld l, b
    ld h, l
    ld l, h
    ld l, l
    ld h, l
    ld [hl], h
    ld l, $01
    ld d, h

jr_0f9_6d76:
    ld l, b
    ld h, l
    jr nz, @+$66

    ld l, a
    ld l, a
    ld [hl], d
    jr nz, jr_0f9_6dea

    ld l, [hl]
    ld l, a
    ld h, d
    jr nz, @+$6b

jr_0f9_6d84:
    ld [hl], e
    ld h, d
    ld [hl], d
    ld l, a
    ld l, e
    ld h, l
    ld l, [hl]
    ld l, $01

jr_0f9_6d8d:
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0f9_6dff

    ld l, a
    ld h, e
    ld l, e
    ld h, l
    ld h, h

jr_0f9_6d98:
    jr nz, jr_0f9_6e00

jr_0f9_6d9a:
    ld [hl], d
    ld l, a
    ld l, l
    ld l, c
    ld l, [hl]
    ld [hl], e
    ld l, c
    ld h, h
    ld h, l
    ld l, $01
    ld b, c
    jr nz, jr_0f9_6e16

    ld [hl], l
    ld l, l
    ld h, l
    ld [hl], d
    ld l, c
    ld h, e

jr_0f9_6dae:
    jr nz, jr_0f9_6e1b

    ld h, l
    ld a, c
    ld [hl], b
    ld h, c
    ld l, [hl]
    ld h, l
    ld l, h

jr_0f9_6db7:
    ld l, $01
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_0f9_6e2e

    ld l, h
    ld h, c
    ld [hl], h
    ld h, l

jr_0f9_6dc2:
    jr nz, jr_0f9_6e37

    ld h, c

jr_0f9_6dc5:
    ld a, c
    ld [hl], e
    jr nz, jr_0f9_6df9

    jr nc, jr_0f9_6dfd

    ld l, $01
    ld d, h

jr_0f9_6dce:
    ld l, b
    ld h, l
    jr nz, jr_0f9_6e42

    ld l, h
    ld h, c
    ld [hl], h
    ld h, l
    jr nz, jr_0f9_6e4b

    ld h, c

jr_0f9_6dd9:
    ld a, c
    ld [hl], e
    jr nz, jr_0f9_6e0d

    jr nc, jr_0f9_6e12

    ld l, $01
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0f9_6e53

    ld l, a
    ld h, e
    ld l, e

jr_0f9_6dea:
    ld h, l
    ld h, h
    ld l, $01
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_0f9_6e57

    ld l, a
    ld l, a
    ld [hl], d
    jr nz, jr_0f9_6e6b

    ld h, c

jr_0f9_6df9:
    ld a, c
    ld [hl], e
    nop
    daa

jr_0f9_6dfd:
    ld b, e
    ld l, a

jr_0f9_6dff:
    ld l, [hl]

jr_0f9_6e00:
    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, h
    jr nz, jr_0f9_6e58

    ld l, a
    ld l, a
    ld l, l
    daa
    ld l, $01
    ld d, h

jr_0f9_6e0d:
    ld l, b
    ld h, l
    jr nz, jr_0f9_6e75

    ld l, a

jr_0f9_6e12:
    ld l, a
    ld [hl], d
    jr nz, @+$6b

jr_0f9_6e16:
    ld [hl], e
    jr nz, @+$76

    ld l, c
    ld h, a

jr_0f9_6e1b:
    ld l, b
    ld [hl], h
    ld l, h
    ld a, c
    nop
    ld l, h
    ld l, a
    ld h, e
    ld l, e
    ld h, l
    ld h, h
    ld l, $01
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0f9_6e93

jr_0f9_6e2e:
    ld l, h
    ld h, l
    ld h, e
    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, [hl]
    ld l, c
    ld h, e

jr_0f9_6e37:
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    nop
    ld l, h
    ld l, a
    ld h, e
    ld l, e
    ld h, l
    ld h, h

jr_0f9_6e42:
    ld l, $01
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_0f9_6ebe

    ld l, [hl]
    ld l, h

jr_0f9_6e4b:
    ld l, a
    ld h, e
    ld l, e
    ld h, l
    ld h, h
    jr nz, @+$6b

    ld [hl], h

jr_0f9_6e53:
    ld l, $01
    ld d, h
    ld l, b

jr_0f9_6e57:
    ld h, l

jr_0f9_6e58:
    jr nz, jr_0f9_6ebe

    ld l, a
    ld l, a
    ld [hl], d
    jr nz, jr_0f9_6ed2

    ld h, c
    ld a, c
    ld [hl], e
    jr nz, jr_0f9_6e8b

    ld b, e
    ld l, h
    ld l, a
    ld [hl], e
    ld h, l
    ld [hl], h
    daa

jr_0f9_6e6b:
    ld l, $01
    ld [hl], a
    ld h, c
    ld [hl], e
    jr nz, jr_0f9_6ed4

    ld [hl], d
    ld l, a
    ld l, e

jr_0f9_6e75:
    ld h, l
    ld l, [hl]
    ld l, $20
    ld c, c
    ld [hl], h
    jr nz, jr_0f9_6ee6

    ld [hl], e
    jr nz, jr_0f9_6eef

    ld h, [hl]
    jr nz, @+$70

    ld l, a
    jr nz, jr_0f9_6efb

    ld [hl], e
    ld h, l
    jr nz, jr_0f9_6ef8

    ld l, a

jr_0f9_6e8b:
    ld [hl], a
    ld l, $01
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_0f9_6ef7

jr_0f9_6e93:
    ld h, l
    ld [hl], e
    ld l, e
    jr nz, jr_0f9_6f01

    ld [hl], e
    jr nz, jr_0f9_6f07

    ld l, a
    ld h, e
    ld l, e
    ld h, l
    ld h, h
    ld l, $01
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_0f9_6f0b

    ld h, l
    ld [hl], e
    ld l, e
    jr nz, jr_0f9_6f15

    ld [hl], e
    jr nz, @+$6e

    ld l, a
    ld h, e
    ld l, e
    ld h, l
    ld h, h
    ld l, $01
    ld d, a
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_0f9_6f35

    ld l, a
    ld [hl], l

jr_0f9_6ebe:
    jr nz, jr_0f9_6f35

    ld [hl], e
    ld h, l
    jr nz, jr_0f9_6f38

    ld l, b
    ld h, l
    nop
    ld d, e
    ld c, l
    ld b, c
    ld c, h
    ld c, h
    jr nz, jr_0f9_6f19

    ld b, l
    ld e, c
    jr nz, jr_0f9_6f2b

jr_0f9_6ed2:
    ld h, l
    ld [hl], e

jr_0f9_6ed4:
    jr nz, @+$50

    ld l, a
    jr nz, jr_0f9_6eda

    ld c, [hl]

jr_0f9_6eda:
    ld l, a
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f9_6f57

    ld [hl], e
    ld h, l
    ld h, [hl]
    ld [hl], l

jr_0f9_6ee6:
    ld l, h
    ld l, $01
    ld c, [hl]
    ld l, a
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]

jr_0f9_6eef:
    ld h, a
    jr nz, jr_0f9_6f67

    ld l, [hl]
    ld [hl], l
    ld [hl], e
    ld [hl], l
    ld h, c

jr_0f9_6ef7:
    ld l, h

jr_0f9_6ef8:
    ld l, $01
    ld c, [hl]

jr_0f9_6efb:
    ld l, a
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a

jr_0f9_6f01:
    jr nz, jr_0f9_6f76

    ld [hl], h
    ld [hl], d
    ld h, c
    ld l, [hl]

jr_0f9_6f07:
    ld h, a
    ld h, l
    ld l, $01

jr_0f9_6f0b:
    ld c, [hl]
    ld l, a
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f9_6f87

    ld [hl], b

jr_0f9_6f15:
    ld h, l
    ld h, e
    ld l, c
    ld h, c

jr_0f9_6f19:
    ld l, h
    ld l, $01
    ld c, [hl]
    ld l, a
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f9_6f9a

    ld l, [hl]
    ld h, e
    ld l, a
    ld l, l
    ld l, l
    ld l, a

jr_0f9_6f2b:
    ld l, [hl]
    ld l, $01
    ld c, [hl]
    ld l, a
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a

jr_0f9_6f35:
    jr nz, jr_0f9_6fab

    ld l, a

jr_0f9_6f38:
    jr nz, @+$64

    ld l, a
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    ld l, $01
    ld c, [hl]
    ld l, a
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f9_6fbf

    ld [hl], e
    ld h, l
    ld h, [hl]
    ld [hl], l
    ld l, h
    jr nz, @+$6b

    ld [hl], e
    nop
    ld [hl], a
    ld [hl], d
    ld l, c
    ld [hl], h

jr_0f9_6f57:
    ld [hl], h
    ld h, l
    ld l, [hl]
    ld l, $01
    ld c, [hl]
    ld l, a
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f9_6fd2

    ld h, c
    ld l, d

jr_0f9_6f67:
    ld l, a
    ld [hl], d
    ld l, $01
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_0f9_6fd2

    ld h, c
    ld [hl], h
    ld l, b
    ld [hl], h
    ld [hl], l
    ld h, d

jr_0f9_6f76:
    jr nz, jr_0f9_6fe1

    ld [hl], e
    nop
    ld h, [hl]
    ld l, c
    ld l, h
    ld l, h
    ld h, l
    ld h, h
    jr nz, jr_0f9_6ff9

    ld l, c
    ld [hl], h
    ld l, b
    nop
    ld l, l

jr_0f9_6f87:
    ld [hl], l
    ld h, h
    ld h, h
    ld a, c
    jr nz, @+$79

    ld h, c
    ld [hl], h
    ld h, l
    ld [hl], d
    ld l, $01
    ld d, a
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_0f9_7012

    ld l, a

jr_0f9_6f9a:
    ld [hl], l
    jr nz, jr_0f9_7012

    ld l, [hl]
    ld [hl], b
    ld l, h
    ld [hl], l
    ld h, a
    jr nz, jr_0f9_700d

    ld [hl], h
    ccf
    nop
    jr nz, jr_0f9_7002

    ld h, l
    ld [hl], e

jr_0f9_6fab:
    jr nz, jr_0f9_6ffb

    ld l, a
    jr nz, jr_0f9_6fb1

    ld d, h

jr_0f9_6fb1:
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_0f9_701a

    jr nz, jr_0f9_702e

    ld [hl], a
    ld l, c
    ld [hl], h
    ld h, e

jr_0f9_6fbf:
    ld l, b
    ld l, $00
    ld d, a
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_0f9_7041

    ld l, a
    ld [hl], l
    jr nz, jr_0f9_703c

    ld [hl], l
    ld [hl], e
    ld l, b
    jr nz, jr_0f9_703a

    ld [hl], h

jr_0f9_6fd2:
    ccf
    nop
    jr nz, jr_0f9_702f

    ld h, l
    ld [hl], e
    jr nz, jr_0f9_7028

    ld l, a
    jr nz, jr_0f9_6fde

    ld d, h

jr_0f9_6fde:
    ld l, b
    ld h, l
    ld [hl], d

jr_0f9_6fe1:
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_0f9_7047

    jr nz, jr_0f9_7054

    ld h, c
    ld h, h
    ld h, h
    ld h, l
    ld [hl], d
    ld l, $00
    ld d, a
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_0f9_706e

    ld l, a
    ld [hl], l
    jr nz, jr_0f9_705d

jr_0f9_6ff9:
    ld h, l
    ld [hl], e

jr_0f9_6ffb:
    ld h, e
    ld h, l
    ld l, [hl]
    ld h, h
    nop
    ld l, c
    ld [hl], h

jr_0f9_7002:
    ccf
    jr nz, jr_0f9_705e

    ld h, l
    ld [hl], e
    jr nz, jr_0f9_7057

    ld l, a
    jr nz, jr_0f9_700d

    ld d, h

jr_0f9_700d:
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa

jr_0f9_7012:
    ld [hl], e
    jr nz, @+$63

    jr nz, jr_0f9_7083

    ld h, c
    ld h, h
    ld h, h

jr_0f9_701a:
    ld h, l
    ld [hl], d
    ld l, $00
    ld d, a
    ld l, c
    ld l, h
    ld l, h
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    jr nz, jr_0f9_708b

jr_0f9_7028:
    ld l, h
    ld l, c
    ld l, l
    ld h, d
    nop
    ld l, c

jr_0f9_702e:
    ld [hl], h

jr_0f9_702f:
    ccf
    jr nz, jr_0f9_708b

    ld h, l
    ld [hl], e
    jr nz, jr_0f9_7084

    ld l, a
    jr nz, jr_0f9_703a

    ld c, c

jr_0f9_703a:
    daa
    db $76

jr_0f9_703c:
    ld h, l
    jr nz, jr_0f9_70a6

    ld l, a
    ld [hl], h

jr_0f9_7041:
    jr nz, jr_0f9_70b7

    ld l, a
    jr nz, jr_0f9_70ad

    ld l, a

jr_0f9_7047:
    jr nz, jr_0f9_70bd

    ld l, a
    nop
    ld h, a
    ld h, l
    ld [hl], h
    jr nz, jr_0f9_70c4

    ld l, b
    ld h, l
    jr nz, @+$75

jr_0f9_7054:
    ld h, l
    ld [hl], d
    ld [hl], l

jr_0f9_7057:
    ld l, l
    ld l, $2e
    ld l, $01
    ld d, h

jr_0f9_705d:
    ld l, b

jr_0f9_705e:
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_0f9_70cc

    ld [hl], e
    jr nz, jr_0f9_70d4

    ld l, a
    jr nz, jr_0f9_70dd

    ld l, c
    ld l, l
    ld h, l
    nop
    ld [hl], h

jr_0f9_706e:
    ld l, a
    jr nz, jr_0f9_70d4

    ld l, b
    ld h, l
    ld h, e
    ld l, e
    jr nz, @+$6b

    ld [hl], h
    ld l, $01
    ld c, c
    jr nz, @+$65

    ld h, c
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_0f9_70ef

jr_0f9_7083:
    ld h, l

jr_0f9_7084:
    ld h, c
    db $76
    ld h, l
    nop
    ld b, e
    ld l, b
    ld [hl], d

jr_0f9_708b:
    ld l, c
    ld [hl], e
    jr nz, jr_0f9_70f0

    ld l, h
    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $4901
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0f9_70fc

    ld l, [hl]
    jr nz, jr_0f9_710d

    ld l, h
    ld h, h
    nop
    ld [hl], h
    ld a, c
    ld [hl], b
    ld h, l
    ld [hl], a

jr_0f9_70a6:
    ld [hl], d
    ld l, c
    ld [hl], h
    ld h, l
    ld [hl], d
    ld l, $01

jr_0f9_70ad:
    ld c, c
    ld h, [hl]
    jr nz, jr_0f9_70fa

    jr nz, jr_0f9_711b

    ld h, c
    ld h, h
    jr nz, jr_0f9_7118

jr_0f9_70b7:
    ld l, [hl]
    jr nz, jr_0f9_7123

    ld l, [hl]
    ld l, e
    nop

jr_0f9_70bd:
    ld [hl], d
    ld l, c
    ld h, d
    ld h, d
    ld l, a
    ld l, [hl]
    inc l

jr_0f9_70c4:
    jr nz, jr_0f9_710f

    jr nz, @+$65

    ld l, a
    ld [hl], l
    ld l, h
    ld h, h

jr_0f9_70cc:
    nop
    ld [hl], e
    ld h, c
    db $76
    ld h, l
    jr nz, jr_0f9_7140

    ld a, c

jr_0f9_70d4:
    jr nz, jr_0f9_7146

    ld [hl], d
    ld l, a
    ld h, a
    ld [hl], d
    ld h, l
    ld [hl], e
    ld [hl], e

jr_0f9_70dd:
    ld l, $2e
    ld l, $01
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_0f9_7149

    ld h, c
    ld l, [hl]
    jr nz, jr_0f9_715d

    ld h, c
    db $76
    ld h, l
    nop
    ld a, c

jr_0f9_70ef:
    ld l, a

jr_0f9_70f0:
    ld [hl], l
    ld [hl], d
    jr nz, jr_0f9_7164

    ld [hl], d
    ld l, a
    ld h, a
    ld [hl], d
    ld h, l
    ld [hl], e

jr_0f9_70fa:
    ld [hl], e
    nop

jr_0f9_70fc:
    ld [hl], a
    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_0f9_7176

    ld l, b
    ld l, c
    ld [hl], e
    ld l, $01
    ld d, a
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_0f9_7186

jr_0f9_710d:
    ld l, a
    ld [hl], l

jr_0f9_710f:
    jr nz, jr_0f9_7186

    ld [hl], e
    ld h, l
    jr nz, jr_0f9_7189

    ld l, b
    ld h, l
    nop

jr_0f9_7118:
    ld l, c
    ld l, [hl]
    ld l, e

jr_0f9_711b:
    jr nz, jr_0f9_718f

    ld l, c
    ld h, d
    ld h, d
    ld l, a
    ld l, [hl]
    ccf

jr_0f9_7123:
    jr nz, jr_0f9_717e

    ld h, l
    ld [hl], e
    jr nz, jr_0f9_7177

    ld l, a
    jr nz, jr_0f9_712d

    ld c, c

jr_0f9_712d:
    ld [hl], h
    daa
    ld [hl], e
    jr nz, @+$63

    jr nz, jr_0f9_71a4

    ld h, c
    ld [hl], e
    ld [hl], e
    jr nz, jr_0f9_719c

    ld l, a
    ld h, h
    ld h, l
    nop
    ld l, a
    ld [hl], l
    ld [hl], h

jr_0f9_7140:
    ld [hl], b
    ld [hl], l
    ld [hl], h
    jr nz, @+$6f

    ld h, c

jr_0f9_7146:
    ld h, e
    ld l, b
    ld l, c

jr_0f9_7149:
    ld l, [hl]
    ld h, l
    ld l, $01
    ld c, c
    ld h, [hl]
    jr nz, jr_0f9_719a

    jr nz, jr_0f9_71bb

    ld h, c
    ld h, h
    jr nz, jr_0f9_71b8

    ld l, [hl]
    jr nz, jr_0f9_71c3

    ld l, [hl]
    ld l, e
    nop

jr_0f9_715d:
    ld [hl], d
    ld l, c
    ld h, d
    ld h, d
    ld l, a
    ld l, [hl]
    inc l

jr_0f9_7164:
    jr nz, jr_0f9_71af

    jr nz, jr_0f9_71cb

    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    nop
    ld l, a
    ld h, d
    ld [hl], h
    ld h, c
    ld l, c
    ld l, [hl]
    jr nz, jr_0f9_71e9

    ld l, b

jr_0f9_7176:
    ld h, l

jr_0f9_7177:
    jr nz, jr_0f9_71dc

    ld l, a
    ld h, h
    ld h, l
    ld l, $2e

jr_0f9_717e:
    ld l, $01
    ld c, c
    jr nz, jr_0f9_71e4

    ld l, h
    ld [hl], d
    ld h, l

jr_0f9_7186:
    ld h, c
    ld h, h
    ld a, c

jr_0f9_7189:
    jr nz, jr_0f9_71f3

    ld h, c
    db $76
    ld h, l
    nop

jr_0f9_718f:
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_0f9_7204

    ld h, c
    ld [hl], e
    ld [hl], e
    jr nz, jr_0f9_71fc

    ld l, a

jr_0f9_719a:
    ld h, h
    ld h, l

jr_0f9_719c:
    ld l, $01
    ld e, c
    ld l, a
    ld [hl], l
    daa
    db $76
    ld h, l

jr_0f9_71a4:
    jr nz, jr_0f9_7215

    ld h, d
    ld [hl], h
    ld h, c
    ld l, c
    ld l, [hl]
    ld h, l
    ld h, h
    nop
    ld [hl], h

jr_0f9_71af:
    ld l, b
    ld h, l
    jr nz, jr_0f9_7223

    ld h, c
    ld [hl], e
    ld [hl], e
    jr nz, jr_0f9_721b

jr_0f9_71b8:
    ld l, a
    ld h, h
    ld h, l

jr_0f9_71bb:
    ld l, $01
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f9_71c3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f9_71cb:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f9_71dc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f9_71e4:
    nop
    nop
    nop
    nop
    nop

jr_0f9_71e9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f9_71f3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f9_71fc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f9_7204:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f9_7215:
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f9_721b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f9_7223:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
